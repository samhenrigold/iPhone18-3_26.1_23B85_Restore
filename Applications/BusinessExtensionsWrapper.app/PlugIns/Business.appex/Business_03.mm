uint64_t sub_100047180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  if (a3 < 0)
  {
  }

  return result;
}

uint64_t sub_1000471E8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6562616CLL && a2 == 0xE500000000000000;
  if (v4 || (sub_1000AC7AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D614E6567616D69 && a2 == 0xE900000000000065 || (sub_1000AC7AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1000AC7AC();

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

uint64_t sub_100047300@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10000413C(&qword_1000F0BE0, &qword_1000B32D0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - v7;
  sub_1000058D0(a1, a1[3]);
  sub_10004712C();
  sub_1000AC90C();
  if (v2)
  {
    return sub_10000E738(a1);
  }

  LOBYTE(v37[0]) = 0;
  v9 = sub_1000AC6FC();
  v11 = v10;
  v30 = a2;
  v12 = v9;
  LOBYTE(v37[0]) = 1;
  v13 = sub_1000AC6FC();
  *(&v29 + 1) = v14;
  *&v29 = v13;
  v42 = 2;
  sub_100048F98();
  sub_1000AC70C();
  (*(v6 + 8))(v8, v5);
  v28 = v38;
  v15 = v39;
  v27 = *(&v38 + 1);
  v16 = *(&v39 + 1);
  v26 = *(&v40 + 1);
  v17 = v40;
  v25 = v41;
  *&v31 = v12;
  *(&v31 + 1) = v11;
  v18 = v29;
  v32 = v29;
  v19 = *(&v29 + 1);
  v33 = v38;
  v34 = v39;
  v35 = v40;
  v36 = v41;
  sub_100049054(&v31, v37);
  sub_10000E738(a1);
  v37[0] = v12;
  v37[1] = v11;
  v37[2] = v18;
  v37[3] = v19;
  v37[4] = v28;
  v37[5] = v27;
  v37[6] = v15;
  v37[7] = v16;
  v37[8] = v17;
  v37[9] = v26;
  v37[10] = v25;
  result = sub_10004908C(v37);
  v21 = v34;
  v22 = v30;
  *(v30 + 32) = v33;
  *(v22 + 48) = v21;
  *(v22 + 64) = v35;
  *(v22 + 80) = v36;
  v23 = v32;
  *v22 = v31;
  *(v22 + 16) = v23;
  return result;
}

unint64_t _s8Business19BIABinaryChoiceRoleO8rawValueACSgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000DA680;
  v6._object = a2;
  v4 = sub_1000AC6AC(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_1000476C4()
{
  result = qword_1000F0A68;
  if (!qword_1000F0A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0A68);
  }

  return result;
}

unint64_t sub_100047718()
{
  result = qword_1000F0A70;
  if (!qword_1000F0A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0A70);
  }

  return result;
}

uint64_t sub_10004776C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6562616CLL && a2 == 0xE500000000000000;
  if (v4 || (sub_1000AC7AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701605234 && a2 == 0xE400000000000000 || (sub_1000AC7AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1000AC7AC();

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

uint64_t sub_10004787C@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_10000413C(&qword_1000F0BC8, &qword_1000B32C8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - v7;
  sub_1000058D0(a1, a1[3]);
  sub_1000476C4();
  sub_1000AC90C();
  if (v2)
  {
    return sub_10000E738(a1);
  }

  LOBYTE(v29[0]) = 0;
  v9 = sub_1000AC6FC();
  v11 = v10;
  v12 = v9;
  LOBYTE(v24) = 1;
  sub_100048F44();
  sub_1000AC70C();
  v42 = LOBYTE(v29[0]);
  v43 = 2;
  sub_100048F98();
  sub_1000AC70C();
  (*(v6 + 8))(v8, v5);
  v13 = v39;
  v23 = v38;
  v14 = *(&v39 + 1);
  v22 = *(&v40 + 1);
  v15 = v40;
  v20 = *(&v41 + 1);
  v21 = v41;
  *&v24 = v12;
  *(&v24 + 1) = v11;
  v16 = v42;
  LOBYTE(v25) = v42;
  *(&v25 + 1) = v38;
  v26 = v39;
  v27 = v40;
  v28 = v41;
  sub_100048FEC(&v24, v29);
  sub_10000E738(a1);
  v29[0] = v12;
  v29[1] = v11;
  v30 = v16;
  v31 = v23;
  v32 = v13;
  v33 = v14;
  v34 = v15;
  v35 = v22;
  v36 = v21;
  v37 = v20;
  result = sub_100049024(v29);
  v18 = v27;
  a2[2] = v26;
  a2[3] = v18;
  a2[4] = v28;
  v19 = v25;
  *a2 = v24;
  a2[1] = v19;
  return result;
}

unint64_t sub_100047B9C()
{
  result = qword_1000F0A78;
  if (!qword_1000F0A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0A78);
  }

  return result;
}

unint64_t sub_100047BF4()
{
  result = qword_1000F0A80;
  if (!qword_1000F0A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0A80);
  }

  return result;
}

uint64_t sub_100047C54(uint64_t a1)
{
  if (((*(a1 + 120) >> 61) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return (*(a1 + 120) >> 61) & 3;
  }
}

__n128 sub_100047C70(uint64_t a1, uint64_t a2)
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
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = result;
  *(a1 + 112) = v7;
  return result;
}

uint64_t sub_100047C9C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 160))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 96) >> 2;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_100047CEC(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 152) = 0;
    result = 0.0;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 160) = 1;
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
      result = 0.0;
      *(a1 + 64) = 0u;
      *(a1 + 80) = 0u;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 96) = 4 * -a2;
      *(a1 + 104) = 0u;
      *(a1 + 120) = 0u;
      *(a1 + 136) = 0u;
      *(a1 + 152) = 0;
      return result;
    }

    *(a1 + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100047D78(uint64_t result, uint64_t a2)
{
  if (a2 < 3)
  {
    v2 = *(result + 120) & 0x8000000000000001 | (a2 << 61);
    *(result + 96) &= 3uLL;
    *(result + 120) = v2;
  }

  else
  {
    *result = (a2 - 3);
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 104) = 0u;
    *(result + 120) = 0x6000000000000000;
    *(result + 128) = 0u;
    *(result + 144) = 0u;
  }

  return result;
}

uint64_t sub_100047DE4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_100047E34(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 56) = 1;
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
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 2 * -a2;
      result = 0.0;
      *(a1 + 24) = 0u;
      *(a1 + 40) = 0u;
      return result;
    }

    *(a1 + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_100047EE8(uint64_t a1, uint64_t a2)
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

uint64_t sub_100047F0C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_100047F54(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

__n128 sub_100047FD0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_100047FEC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_100048034(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10004818C()
{
  result = qword_1000F0A88;
  if (!qword_1000F0A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0A88);
  }

  return result;
}

unint64_t sub_1000481E4()
{
  result = qword_1000F0A90;
  if (!qword_1000F0A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0A90);
  }

  return result;
}

unint64_t sub_10004823C()
{
  result = qword_1000F0A98;
  if (!qword_1000F0A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0A98);
  }

  return result;
}

unint64_t sub_100048294()
{
  result = qword_1000F0AA0;
  if (!qword_1000F0AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0AA0);
  }

  return result;
}

unint64_t sub_1000482EC()
{
  result = qword_1000F0AA8;
  if (!qword_1000F0AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0AA8);
  }

  return result;
}

unint64_t sub_100048344()
{
  result = qword_1000F0AB0;
  if (!qword_1000F0AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0AB0);
  }

  return result;
}

unint64_t sub_10004839C()
{
  result = qword_1000F0AB8;
  if (!qword_1000F0AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0AB8);
  }

  return result;
}

unint64_t sub_1000483F4()
{
  result = qword_1000F0AC0;
  if (!qword_1000F0AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0AC0);
  }

  return result;
}

unint64_t sub_10004844C()
{
  result = qword_1000F0AC8;
  if (!qword_1000F0AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0AC8);
  }

  return result;
}

unint64_t sub_1000484A4()
{
  result = qword_1000F0AD0;
  if (!qword_1000F0AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0AD0);
  }

  return result;
}

unint64_t sub_1000484FC()
{
  result = qword_1000F0AD8;
  if (!qword_1000F0AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0AD8);
  }

  return result;
}

unint64_t sub_100048554()
{
  result = qword_1000F0AE0;
  if (!qword_1000F0AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0AE0);
  }

  return result;
}

unint64_t sub_1000485AC()
{
  result = qword_1000F0AE8;
  if (!qword_1000F0AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0AE8);
  }

  return result;
}

unint64_t sub_100048604()
{
  result = qword_1000F0AF0;
  if (!qword_1000F0AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0AF0);
  }

  return result;
}

unint64_t sub_10004865C()
{
  result = qword_1000F0AF8;
  if (!qword_1000F0AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0AF8);
  }

  return result;
}

unint64_t sub_1000486B4()
{
  result = qword_1000F0B00;
  if (!qword_1000F0B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0B00);
  }

  return result;
}

unint64_t sub_10004870C()
{
  result = qword_1000F0B08;
  if (!qword_1000F0B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0B08);
  }

  return result;
}

unint64_t sub_100048764()
{
  result = qword_1000F0B10;
  if (!qword_1000F0B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0B10);
  }

  return result;
}

unint64_t sub_1000487BC()
{
  result = qword_1000F0B18;
  if (!qword_1000F0B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0B18);
  }

  return result;
}

unint64_t sub_100048814()
{
  result = qword_1000F0B20;
  if (!qword_1000F0B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0B20);
  }

  return result;
}

unint64_t sub_10004886C()
{
  result = qword_1000F0B28;
  if (!qword_1000F0B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0B28);
  }

  return result;
}

unint64_t sub_1000488C4()
{
  result = qword_1000F0B30;
  if (!qword_1000F0B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0B30);
  }

  return result;
}

unint64_t sub_10004891C()
{
  result = qword_1000F0B38;
  if (!qword_1000F0B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0B38);
  }

  return result;
}

unint64_t sub_100048974()
{
  result = qword_1000F0B40;
  if (!qword_1000F0B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0B40);
  }

  return result;
}

unint64_t sub_1000489CC()
{
  result = qword_1000F0B48;
  if (!qword_1000F0B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0B48);
  }

  return result;
}

unint64_t sub_100048A24()
{
  result = qword_1000F0B50;
  if (!qword_1000F0B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0B50);
  }

  return result;
}

unint64_t sub_100048A7C()
{
  result = qword_1000F0B58;
  if (!qword_1000F0B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0B58);
  }

  return result;
}

unint64_t sub_100048AD4()
{
  result = qword_1000F0B60;
  if (!qword_1000F0B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0B60);
  }

  return result;
}

unint64_t sub_100048B2C()
{
  result = qword_1000F0B68;
  if (!qword_1000F0B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0B68);
  }

  return result;
}

unint64_t sub_100048B84()
{
  result = qword_1000F0B70;
  if (!qword_1000F0B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0B70);
  }

  return result;
}

unint64_t sub_100048BDC()
{
  result = qword_1000F0B78;
  if (!qword_1000F0B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0B78);
  }

  return result;
}

unint64_t sub_100048C34()
{
  result = qword_1000F0B80;
  if (!qword_1000F0B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0B80);
  }

  return result;
}

unint64_t sub_100048C8C()
{
  result = qword_1000F0B88;
  if (!qword_1000F0B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0B88);
  }

  return result;
}

unint64_t sub_100048CE4()
{
  result = qword_1000F0B90;
  if (!qword_1000F0B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0B90);
  }

  return result;
}

unint64_t sub_100048D3C()
{
  result = qword_1000F0B98;
  if (!qword_1000F0B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0B98);
  }

  return result;
}

unint64_t sub_100048D94()
{
  result = qword_1000F0BA0;
  if (!qword_1000F0BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0BA0);
  }

  return result;
}

unint64_t sub_100048DEC()
{
  result = qword_1000F0BA8;
  if (!qword_1000F0BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0BA8);
  }

  return result;
}

unint64_t sub_100048E44()
{
  result = qword_1000F0BB0;
  if (!qword_1000F0BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0BB0);
  }

  return result;
}

unint64_t sub_100048E9C()
{
  result = qword_1000F0BB8;
  if (!qword_1000F0BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0BB8);
  }

  return result;
}

unint64_t sub_100048EF0()
{
  result = qword_1000F0BC0;
  if (!qword_1000F0BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0BC0);
  }

  return result;
}

unint64_t sub_100048F44()
{
  result = qword_1000F0BD0;
  if (!qword_1000F0BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0BD0);
  }

  return result;
}

unint64_t sub_100048F98()
{
  result = qword_1000F0BD8;
  if (!qword_1000F0BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0BD8);
  }

  return result;
}

unint64_t sub_1000490BC()
{
  result = qword_1000F0BF0;
  if (!qword_1000F0BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0BF0);
  }

  return result;
}

unint64_t sub_100049110()
{
  result = qword_1000F0C18;
  if (!qword_1000F0C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0C18);
  }

  return result;
}

unint64_t sub_100049164()
{
  result = qword_1000F0C48;
  if (!qword_1000F0C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0C48);
  }

  return result;
}

uint64_t sub_1000491B8(uint64_t result)
{
  v1 = *(result + 120) & 0x8000000000000001 | 0x4000000000000000;
  *(result + 96) &= 3uLL;
  *(result + 120) = v1;
  return result;
}

uint64_t sub_1000491D8(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000041E8(&qword_1000F09A0, &qword_1000B1CB8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100049250()
{
  result = qword_1000F0C58;
  if (!qword_1000F0C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0C58);
  }

  return result;
}

uint64_t sub_1000492A4(uint64_t result)
{
  v1 = *(result + 120) & 0x8000000000000001 | 0x2000000000000000;
  *(result + 96) &= 3uLL;
  *(result + 120) = v1;
  return result;
}

uint64_t sub_1000492C4(uint64_t result)
{
  v1 = *(result + 120) & 0x8000000000000001;
  *(result + 96) &= 3uLL;
  *(result + 120) = v1;
  return result;
}

double sub_1000492E0(uint64_t a1)
{
  result = 0.0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0x6000000000000000;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  return result;
}

uint64_t sub_100049334(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_1000AC06C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a3;
  v4(v5, v7, a3);
}

void sub_1000493F4()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for IMBAuthenticationViewController();
  objc_msgSendSuper2(&v5, "viewDidLoad");
  if ([*&v0[OBJC_IVAR____TtC8Business32IMBDetailedMessageViewController_message] rootObject] && (objc_opt_self(), v1 = swift_dynamicCastObjCClass(), swift_unknownObjectRelease(), v1))
  {
    v2 = [v0 view];
    if (v2)
    {
      v3 = v2;
      v4 = [objc_opt_self() clearColor];
      [v3 setBackgroundColor:v4];

      [v0 setModalPresentationStyle:5];
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_100049D58();
    sub_100049E2C();
  }
}

void sub_100049558()
{
  if ([*&v0[OBJC_IVAR____TtC8Business32IMBDetailedMessageViewController_message] rootObject])
  {
    objc_opt_self();
    v1 = swift_dynamicCastObjCClass();
    swift_unknownObjectRelease();
    if (v1)
    {
      v2 = [v0 view];
      if (v2)
      {
        v3 = v2;
        v4 = [v2 window];

        if (v4)
        {
          sub_10004967C(v4);

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
  }

  sub_10004A1FC();
}

void sub_10004967C(void *a1)
{
  v2 = v1;
  v4 = sub_1000AB6EC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v2 + OBJC_IVAR____TtC8Business31IMBAuthenticationViewController_aswasWindow);
  *(v2 + OBJC_IVAR____TtC8Business31IMBAuthenticationViewController_aswasWindow) = a1;
  v9 = a1;

  v10 = [v9 _rootSheetPresentationController];
  if (v10)
  {
    v11 = v10;
    [v10 _setShouldScaleDownBehindDescendantSheets:0];

    v12 = *(v2 + OBJC_IVAR____TtC8Business31IMBAuthenticationViewController_authenticationManager);
    if (v12)
    {
      v13 = v12;
      v14 = [objc_msgSend(v13 "authenticationRequest")];
      swift_unknownObjectRelease();
      v15 = [v14 authenticationSessionURL];
      swift_unknownObjectRelease();
      sub_1000AB6AC();

      sub_1000AC06C();
      v16 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v17 = objc_allocWithZone(ASWebAuthenticationSession);

      sub_1000AB67C(v18);
      v20 = v19;
      v21 = sub_1000AC02C();

      aBlock[4] = sub_10004CEF4;
      aBlock[5] = v16;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10004BA28;
      aBlock[3] = &unk_1000DCAA8;
      v22 = _Block_copy(aBlock);
      v23 = [v17 initWithURL:v20 callbackURLScheme:v21 completionHandler:v22];
      _Block_release(v22);

      [v23 setPresentationContextProvider:v2];
      [v23 setPrefersEphemeralWebBrowserSession:1];
      v24 = *(v2 + OBJC_IVAR____TtC8Business31IMBAuthenticationViewController_session);
      *(v2 + OBJC_IVAR____TtC8Business31IMBAuthenticationViewController_session) = v23;
      v25 = v23;

      [v25 start];
      (*(v5 + 8))(v7, v4);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1000499A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1000AB57C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000413C(&unk_1000F06A0, &unk_1000B0450);
  __chkstk_darwin(v8 - 8);
  v10 = &v27 - v9;
  v11 = sub_1000AB6EC();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v27 - v16;
  sub_10003C3C8(a1, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_10004B9C0(v10);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v19 = Strong;
      v20 = Strong + OBJC_IVAR____TtC8Business32IMBDetailedMessageViewController__dismissalDelegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v21 = *(v20 + 8);
          ObjectType = swift_getObjectType();
          v23 = *(v21 + 16);
          v24 = type metadata accessor for IMBAuthenticationViewController();
          v23(v19, v24, ObjectType, v21);
          swift_unknownObjectRelease();
        }
      }

      else
      {
        __break(1u);
      }
    }
  }

  else
  {
    (*(v12 + 32))(v17, v10, v11);
    swift_beginAccess();
    v25 = swift_unknownObjectWeakLoadStrong();
    if (v25)
    {
      v26 = v25;
      (*(v12 + 16))(v15, v17, v11);
      sub_1000AB55C();
      sub_10004AE98();

      (*(v5 + 8))(v7, v4);
    }

    (*(v12 + 8))(v17, v11);
  }
}

id sub_100049D58()
{
  v1 = OBJC_IVAR____TtC8Business31IMBAuthenticationViewController_webViewController;
  [*&v0[OBJC_IVAR____TtC8Business31IMBAuthenticationViewController_webViewController] setDelegate:v0];
  [v0 addChildViewController:*&v0[v1]];
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = result;
  result = [*&v0[v1] view];
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v4 = result;
  [v3 addSubview:result];

  v5 = *&v0[v1];

  return [v5 didMoveToParentViewController:v0];
}

void sub_100049E2C()
{
  v1 = OBJC_IVAR____TtC8Business31IMBAuthenticationViewController_webViewController;
  v2 = [*&v0[OBJC_IVAR____TtC8Business31IMBAuthenticationViewController_webViewController] view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = v2;
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];

  sub_10000413C(&unk_1000F06B0, qword_1000B0520);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000B04D0;
  v5 = [*&v0[v1] view];
  if (!v5)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v6 = v5;
  v7 = [v5 topAnchor];

  v8 = [v0 view];
  if (!v8)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v9 = v8;
  v10 = [v8 topAnchor];

  v11 = sub_10002CE60();
  v12 = 20.0;
  if ((v11 & 0xFE) == 0)
  {
    v12 = 0.0;
  }

  v13 = [v7 constraintEqualToAnchor:v10 constant:v12];

  *(v4 + 32) = v13;
  v14 = [*&v0[v1] view];
  if (!v14)
  {
    goto LABEL_22;
  }

  v15 = v14;
  v16 = [v14 leftAnchor];

  v17 = [v0 view];
  if (!v17)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v18 = v17;
  v19 = [v17 leftAnchor];

  v20 = sub_10002CE60();
  v21 = 20.0;
  if ((v20 & 0xFE) == 0)
  {
    v21 = 0.0;
  }

  v22 = [v16 constraintEqualToAnchor:v19 constant:v21];

  *(v4 + 40) = v22;
  v23 = [*&v0[v1] view];
  if (!v23)
  {
    goto LABEL_24;
  }

  v24 = v23;
  v25 = [v23 rightAnchor];

  v26 = [v0 view];
  if (!v26)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v27 = v26;
  v28 = [v26 rightAnchor];

  v29 = sub_10002CE60();
  v30 = -0.0;
  if ((v29 & 0xFE) != 0)
  {
    v30 = -20.0;
  }

  v31 = [v25 constraintEqualToAnchor:v28 constant:v30];

  *(v4 + 48) = v31;
  v32 = [*&v0[v1] view];
  if (!v32)
  {
    goto LABEL_26;
  }

  v33 = v32;
  v34 = [v32 bottomAnchor];

  v35 = [v0 view];
  if (!v35)
  {
LABEL_27:
    __break(1u);
    return;
  }

  v36 = v35;
  v37 = objc_opt_self();
  v38 = [v36 bottomAnchor];

  v39 = [v34 constraintEqualToAnchor:v38];
  *(v4 + 56) = v39;
  sub_100005A24(0, &qword_1000EF6A8, NSLayoutConstraint_ptr);
  isa = sub_1000AC18C().super.isa;

  [v37 activateConstraints:isa];
}

void *sub_10004A1FC()
{
  v1 = v0;
  v2 = sub_1000AB6EC();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v22 - v7;
  result = *(v1 + OBJC_IVAR____TtC8Business31IMBAuthenticationViewController_authenticationManager);
  if (result)
  {
    v10 = [objc_msgSend(result "authenticationRequest")];
    swift_unknownObjectRelease();
    v11 = [v10 authenticationSessionURL];
    swift_unknownObjectRelease();
    sub_1000AB6AC();

    (*(v3 + 32))(v8, v6, v2);
    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    v12 = qword_1000FC008;
    v13 = sub_1000AC2BC();
    sub_10000413C(&qword_1000F0060, &unk_1000B0470);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1000AF0E0;
    v15 = sub_1000AB64C();
    v17 = v16;
    *(v14 + 56) = &type metadata for String;
    *(v14 + 64) = sub_10000587C();
    *(v14 + 32) = v15;
    *(v14 + 40) = v17;
    sub_1000ABA5C("IMBAuthenticationViewController: startAuthenticationSession %@", 62, 2, &_mh_execute_header, v12, v13, v14);

    v18 = *(v1 + OBJC_IVAR____TtC8Business31IMBAuthenticationViewController_webViewController);
    sub_1000AB67C(v19);
    v21 = v20;
    [v18 loadURL:v20];

    return (*(v3 + 8))(v8, v2);
  }

  return result;
}

uint64_t sub_10004A488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    swift_errorRetain();
    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    v7 = qword_1000FC008;
    v8 = sub_1000AC2BC();
    sub_10000413C(&qword_1000F0060, &unk_1000B0470);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1000AF0E0;
    swift_getErrorValue();
    v10 = sub_1000AC7FC();
    v12 = v11;
    *(v9 + 56) = &type metadata for String;
    *(v9 + 64) = sub_10000587C();
    *(v9 + 32) = v10;
    *(v9 + 40) = v12;
    sub_1000ABA5C("IMBAuthenticationViewController: encryption error: %@", 53, 2, &_mh_execute_header, v7, v8, v9);

    swift_beginAccess();
    *(a4 + 16) = a3;
  }

  else
  {
    swift_beginAccess();
    *(a5 + 16) = a1;
    *(a5 + 24) = a2;
  }
}

void sub_10004A610()
{
  v1 = v0;
  v2 = type metadata accessor for URLHelper(0);
  __chkstk_darwin(v2 - 8);
  v54 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000413C(&unk_1000F06A0, &unk_1000B0450);
  __chkstk_darwin(v4 - 8);
  v56 = &v52 - v5;
  v58 = sub_1000AB6EC();
  v6 = *(v58 - 8);
  v7 = __chkstk_darwin(v58);
  v55 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v53 = &v52 - v9;
  v10 = objc_allocWithZone(BCServerSideOAuth2Response);
  sub_1000AB67C(v11);
  v13 = v12;
  v14 = [v10 initWithRedirectURI:v12];

  if ([v14 status] == 3)
  {
    v15 = [v14 error];
    if (!v15)
    {
      goto LABEL_5;
    }
  }

  v16 = v14;
  v17 = sub_10004BB6C(v16, v1);
  v57 = v6;
  v18 = v14;
  v19 = v17;
  v21 = v20;

  v22 = *(v1 + OBJC_IVAR____TtC8Business32IMBDetailedMessageViewController_message);
  v23 = v1;
  v24 = *(v1 + OBJC_IVAR____TtC8Business32IMBDetailedMessageViewController_conversation);
  v25 = BCMessageRootAuthenticateKey;
  v60 = v22;
  v61 = v19;
  v62 = v24;
  v63 = v21;
  v64 = BCMessageRootAuthenticateKey;
  v65 = v16;
  v26 = v16;
  v27 = v22;
  v28 = v19;
  v29 = v24;
  v30 = v21;
  v31 = v25;
  sub_100036FA8(1);

  v1 = v23;
  v14 = v18;
  v6 = v57;

LABEL_5:
  v32 = v1 + OBJC_IVAR____TtC8Business32IMBDetailedMessageViewController__dismissalDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v33 = *(v32 + 8);
      ObjectType = swift_getObjectType();
      v35 = *(v33 + 16);
      v36 = type metadata accessor for IMBAuthenticationViewController();
      v35(v1, v36, ObjectType, v33);
      swift_unknownObjectRelease();
    }

    v37 = [objc_opt_self() isRunningInMacCatalyst];
    v38 = v58;
    if (v37)
    {
      v39 = v56;
      sub_1000AB6DC();
      if ((*(v6 + 48))(v39, 1, v38) == 1)
      {
        sub_10004B9C0(v39);
      }

      else
      {
        v40 = v53;
        (*(v6 + 32))(v53, v39, v38);
        v41 = v54;
        sub_10004EA70(v54);
        sub_10004E400(v40, 1, sub_10004ABC4, 0);
        sub_10001E7C8(v41);
        (*(v6 + 8))(v40, v38);
      }
    }

    v42 = *(v1 + OBJC_IVAR____TtC8Business32IMBDetailedMessageViewController_message);
    if (![v42 rootObject])
    {
      goto LABEL_17;
    }

    v59 = &OBJC_PROTOCOL___BCOAuth2RequestProtocol;
    v43 = swift_dynamicCastObjCProtocolConditional();
    if (v43)
    {
      v44 = v43;
      v45 = kBCAnalyticsMessagesForBusinessOAuth;
      v46 = v6;
      v47 = [v42 version];
      v48 = [objc_msgSend(v44 "oauth2")];
      swift_unknownObjectRelease();
      v49 = v55;
      sub_1000AB6AC();

      URL.displayDomainString.getter();
      (*(v46 + 8))(v49, v38);
      v50 = sub_1000AC02C();

      [v14 status];
      v51 = NSStringFromServerSideAuthStatus();
      if (!v51)
      {
        sub_1000AC06C();
        v51 = sub_1000AC02C();
      }

      [objc_opt_self() logEventWithName:v45 version:v47 authDomain:v50 status:v51];
      swift_unknownObjectRelease();

LABEL_17:
      return;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10004ABC4(uint64_t result, uint64_t a2)
{
  if ((result & 1) == 0)
  {
    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    v3 = qword_1000FC008;
    v4 = sub_1000AC2AC();
    sub_10000413C(&qword_1000F0060, &unk_1000B0470);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1000AF0E0;
    if (a2)
    {
      swift_getErrorValue();
      a2 = sub_1000AC7FC();
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    *(v5 + 56) = &type metadata for String;
    *(v5 + 64) = sub_10000587C();
    if (v7)
    {
      v8 = a2;
    }

    else
    {
      v8 = 0;
    }

    v9 = 0xE000000000000000;
    if (v7)
    {
      v9 = v7;
    }

    *(v5 + 32) = v8;
    *(v5 + 40) = v9;
    sub_1000ABA5C("IMBAuthenticationViewController: Failed to launch Messages App after authentication. Error: %@", 94, 2, &_mh_execute_header, v3, v4, v5);
  }

  return result;
}

id sub_10004ACFC()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Business31IMBAuthenticationViewController_authenticationManager);
  if (!v1)
  {
    return 0;
  }

  v2 = [objc_msgSend(v1 "authenticationRequest")];
  swift_unknownObjectRelease();
  sub_1000AB67C(v3);
  v5 = v4;
  v6 = [v2 shouldHandleRedirectURI:v4];
  swift_unknownObjectRelease();

  return v6;
}

void sub_10004AE98()
{
  v1 = v0;
  v2 = sub_10000413C(&unk_1000F06A0, &unk_1000B0450);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = aBlock - v6;
  v8 = sub_1000AB6EC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000EEE80 != -1)
  {
    swift_once();
  }

  v12 = qword_1000FC008;
  v13 = sub_1000AC2BC();
  sub_1000ABA5C("IMBAuthenticationViewController: didReceiveCallbackRequest", 58, 2, &_mh_execute_header, v12, v13, _swiftEmptyArrayStorage);
  v14 = OBJC_IVAR____TtC8Business31IMBAuthenticationViewController_authenticationManager;
  v15 = *&v0[OBJC_IVAR____TtC8Business31IMBAuthenticationViewController_authenticationManager];
  if (v15)
  {
    if ([v15 authenticationRequest] && (objc_opt_self(), v16 = swift_dynamicCastObjCClass(), swift_unknownObjectRelease(), v16))
    {
      sub_1000AB56C();
      v17 = *(v9 + 48);
      if (v17(v7, 1, v8) != 1)
      {
        (*(v9 + 32))(v11, v7, v8);
        sub_10004A610();
        (*(v9 + 8))(v11, v8);
        return;
      }

      sub_10004B9C0(v7);
      sub_10000413C(&qword_1000F0060, &unk_1000B0470);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1000AF0E0;
      sub_1000AB56C();
      if (v17(v5, 1, v8) == 1)
      {
        sub_10004B9C0(v5);
        v19 = 0;
        v20 = 0;
      }

      else
      {
        v19 = sub_1000AB64C();
        v20 = v27;
        (*(v9 + 8))(v5, v8);
      }

      *(v18 + 56) = &type metadata for String;
      *(v18 + 64) = sub_10000587C();
      if (v20)
      {
        v28 = v19;
      }

      else
      {
        v28 = 0;
      }

      v29 = 0xE000000000000000;
      if (v20)
      {
        v29 = v20;
      }

      *(v18 + 32) = v28;
      *(v18 + 40) = v29;
      sub_100005A24(0, &qword_1000F0070, OS_os_log_ptr);
      v23 = sub_1000AC3FC();
      v30 = sub_1000AC2BC();
      sub_1000ABA5C("IMBAuthenticationViewController didReceiveCallbackRequest - Received callback with invalid or without redirect URI %@", 117, 2, &_mh_execute_header, v23, v30, v18);
    }

    else
    {
      v21 = *&v0[v14];
      if (!v21)
      {
        return;
      }

      v22 = v21;
      v23 = sub_1000AB53C();
      v24 = swift_allocObject();
      *(v24 + 16) = v1;
      aBlock[4] = sub_10004B9A0;
      aBlock[5] = v24;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100049334;
      aBlock[3] = &unk_1000DC9B8;
      v25 = _Block_copy(aBlock);
      v26 = v1;

      [v22 fetchTokenWithRequest:v23 completion:v25];
      _Block_release(v25);
    }
  }
}

void sub_10004B2EC(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    sub_10000413C(&qword_1000F0060, &unk_1000B0470);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1000AF0E0;
    swift_getErrorValue();
    swift_errorRetain();
    v7 = sub_1000AC7FC();
    v9 = v8;
    *(v6 + 56) = &type metadata for String;
    *(v6 + 64) = sub_10000587C();
    *(v6 + 32) = v7;
    *(v6 + 40) = v9;
    sub_100005A24(0, &qword_1000F0070, OS_os_log_ptr);
    v10 = sub_1000AC3FC();
    v11 = sub_1000AC2BC();
    sub_1000ABA5C("IMBAuthenticationViewController: Error fetching token: %@", 57, 2, &_mh_execute_header, v10, v11, v6);
  }

  if (qword_1000EEE80 != -1)
  {
    swift_once();
  }

  v12 = qword_1000FC008;
  v13 = sub_1000AC2BC();
  sub_10000413C(&qword_1000F0060, &unk_1000B0470);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1000AF0E0;
  v15 = sub_10000587C();
  v16 = 7104878;
  if (a2)
  {
    v16 = 0x657463616465723CLL;
  }

  v17 = 0xEA00000000003E64;
  *(v14 + 56) = &type metadata for String;
  *(v14 + 64) = v15;
  if (!a2)
  {
    v17 = 0xE300000000000000;
  }

  *(v14 + 32) = v16;
  *(v14 + 40) = v17;
  sub_1000ABA5C("IMBAuthenticationViewController: fetchToken completed. Token: %@", 64, 2, &_mh_execute_header, v12, v13, v14);

  sub_10004C41C(a1, a2, a3);
}

void sub_10004B844()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Business31IMBAuthenticationViewController_aswasWindow);
}

id sub_10004B8A4(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for IMBAuthenticationViewController();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_10004B968()
{

  return _swift_deallocObject(v0, 24, 7);
}

double sub_10004B9A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_10004B9C0(uint64_t a1)
{
  v2 = sub_10000413C(&unk_1000F06A0, &unk_1000B0450);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10004BA28(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_10000413C(&unk_1000F06A0, &unk_1000B0450);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  v9 = *(a1 + 32);
  if (a2)
  {
    sub_1000AB6AC();
    v10 = sub_1000AB6EC();
    (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  }

  else
  {
    v11 = sub_1000AB6EC();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  }

  v12 = a3;
  v9(v8, a3);

  return sub_10004B9C0(v8);
}

id sub_10004BB6C(void *a1, uint64_t a2)
{
  v54 = *(a2 + OBJC_IVAR____TtC8Business32IMBDetailedMessageViewController_conversation);
  v3 = [v54 selectedMessage];
  v4 = [v3 session];

  if (!v4)
  {
    v4 = [objc_allocWithZone(MSSession) init];
  }

  v56 = v4;
  v58 = [objc_allocWithZone(MSMessage) initWithSession:v4];
  v5 = *(a2 + OBJC_IVAR____TtC8Business32IMBDetailedMessageViewController_message);
  v6 = [v5 replyMessage];
  v7 = [v5 receivedMessage];
  v8 = [objc_allocWithZone(MSMessageTemplateLayout) init];
  v57 = v7;
  if (v6)
  {
    v55 = [v6 style];
    v9 = [v6 imageIdentifier];
    if (v9)
    {
      v10 = v9;
      sub_1000AC06C();
      v12 = v11;

      goto LABEL_16;
    }

    if (!v7)
    {
      v12 = 0;
      goto LABEL_16;
    }
  }

  else
  {
    if (!v7)
    {
      v55 = BCBubbleViewStyleIcon;
      v12 = 0;
      goto LABEL_25;
    }

    v55 = [v7 style];
  }

  v13 = [v7 imageIdentifier];
  if (v13)
  {
    v14 = v13;
    sub_1000AC06C();
    v12 = v15;

    if (!v6)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v12 = 0;
    if (!v6)
    {
LABEL_19:
      v19 = [v7 imageDescription];
      if (v19)
      {
        v20 = v19;
        sub_1000AC06C();
        v7 = v21;

        if (!v6)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v7 = 0;
        if (!v6)
        {
          goto LABEL_25;
        }
      }

      goto LABEL_23;
    }
  }

LABEL_16:
  v16 = [v6 imageDescription];
  if (v16)
  {
    v17 = v16;
    sub_1000AC06C();
    v7 = v18;

    goto LABEL_23;
  }

  if (v7)
  {
    goto LABEL_19;
  }

LABEL_23:
  v22 = [v6 title];
  if (v22)
  {
    v52 = v7;
    v23 = v22;
    sub_1000AC06C();

    goto LABEL_26;
  }

LABEL_25:
  v52 = v7;
  v24 = [objc_opt_self() mainBundle];
  v50._countAndFlagsBits = 0xE000000000000000;
  v59._countAndFlagsBits = 0xD000000000000026;
  v59._object = 0x80000001000B9470;
  v62.value._countAndFlagsBits = 0;
  v62.value._object = 0;
  v25.super.isa = v24;
  v64._countAndFlagsBits = 0;
  v64._object = 0xE000000000000000;
  sub_1000AB61C(v59, v62, v25, v64, 0, v50);

  if (!v6)
  {
    v53 = v12;
    v29 = 0;
    v31 = 0;
    v26 = a1;
    goto LABEL_30;
  }

LABEL_26:
  v26 = a1;
  v53 = v12;
  v27 = [v6 subtitle];
  if (v27)
  {
    v28 = v27;
    v29 = sub_1000AC06C();
    v31 = v30;
  }

  else
  {
    v29 = 0;
    v31 = 0;
  }

LABEL_30:
  v32 = [v26 error];
  if (v32)
  {

LABEL_33:

    v33 = [objc_opt_self() mainBundle];
    v50._countAndFlagsBits = 0xE000000000000000;
    v34._object = 0x80000001000B94E0;
    v34._countAndFlagsBits = 0xD00000000000001BLL;
LABEL_34:
    v63.value._countAndFlagsBits = 0;
    v63.value._object = 0;
    v35.super.isa = v33;
    v65._countAndFlagsBits = 0;
    v65._object = 0xE000000000000000;
    sub_1000AB61C(v34, v63, v35, v65, 0, v50);
    goto LABEL_35;
  }

  if ([v26 status] == 2)
  {
    goto LABEL_33;
  }

  if (![v26 status])
  {

    v33 = [objc_opt_self() mainBundle];
    v50._countAndFlagsBits = 0xE000000000000000;
    v34._countAndFlagsBits = 0xD000000000000032;
    v34._object = 0x80000001000B94A0;
    goto LABEL_34;
  }

  if (!v6 || (v33 = [v6 image]) == 0)
  {
    if (v57)
    {
      v33 = [v57 image];
    }

    else
    {
      v33 = 0;
    }
  }

  [v8 setImage:v33];
LABEL_35:

  v36 = sub_1000AC02C();
  [v8 setCaption:v36];

  if (v31)
  {

    v37 = sub_1000AC02C();
  }

  else
  {
    v37 = 0;
  }

  [v8 setSubcaption:v37];

  if (v31)
  {

    v60._countAndFlagsBits = v29;
    v60._object = v31;
    sub_1000AC12C(v60);

    v61._countAndFlagsBits = 32;
    v61._object = 0xE100000000000000;
    sub_1000AC12C(v61);
  }

  v38 = sub_1000AC02C();

  [v58 setAccessibilityLabel:v38];

  v39 = [v54 selectedMessage];
  if (v39 && (v40 = v39, v41 = [v39 layout], v40, v41) && (objc_opt_self(), v42 = swift_dynamicCastObjCClass(), v41, v42))
  {
    v43 = [objc_allocWithZone(MSMessageLiveLayout) initWithAlternateLayout:v8];
    [v58 setLayout:v43];
  }

  else
  {
    [v58 setLayout:v8];
  }

  v44 = sub_1000AC02C();
  if (v31)
  {
    v45 = sub_1000AC02C();
  }

  else
  {
    v45 = 0;
  }

  v46 = sub_1000AC02C();

  if (!v53)
  {
    v47 = 0;
    if (v52)
    {
      goto LABEL_50;
    }

LABEL_52:
    v48 = 0;
    goto LABEL_53;
  }

  v47 = sub_1000AC02C();

  if (!v52)
  {
    goto LABEL_52;
  }

LABEL_50:
  v48 = sub_1000AC02C();

LABEL_53:
  [objc_allocWithZone(BCMessageInfo) initWithTitle:v44 subtitle:v45 style:v55 alternateTitle:v46 imageIdentifier:v47 imageDescription:v48];

  return v58;
}

void sub_10004C354()
{
  *(v0 + OBJC_IVAR____TtC8Business31IMBAuthenticationViewController_authenticationManager) = 0;
  v1 = OBJC_IVAR____TtC8Business31IMBAuthenticationViewController_webViewController;
  *(v0 + v1) = [objc_allocWithZone(type metadata accessor for IMBWebViewController()) initWithCallbackURI:BCOAuthRedirectURI];
  *(v0 + OBJC_IVAR____TtC8Business31IMBAuthenticationViewController_session) = 0;
  *(v0 + OBJC_IVAR____TtC8Business31IMBAuthenticationViewController_didShowAuth) = 0;
  *(v0 + OBJC_IVAR____TtC8Business31IMBAuthenticationViewController_aswasWindow) = 0;
  sub_1000AC63C();
  __break(1u);
}

void sub_10004C41C(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1000AB6EC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000AC0BC();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v3 + OBJC_IVAR____TtC8Business31IMBAuthenticationViewController_authenticationManager);
  if (v15)
  {
    v97 = v8;
    v98 = v7;
    v16 = [objc_msgSend(v15 "authenticationRequest")];
    swift_unknownObjectRelease();
    objc_opt_self();
    v17 = swift_dynamicCastObjCClass();
    if (v17)
    {
      v100 = a1;
      v101 = v3;
      v102 = v10;
      v94 = v17;
      v95 = v16;
      v18 = [v17 responseEncryptionKey];
      if (!v18)
      {
        sub_1000AC06C();
        v18 = sub_1000AC02C();
      }

      v19 = swift_allocObject();
      *(v19 + 16) = 0;
      *(v19 + 24) = 0;
      v20 = swift_allocObject();
      v96 = v20;
      *(v20 + 16) = a3;
      v21 = (v20 + 16);
      v99 = v19;
      if (a2)
      {
        swift_errorRetain();
        sub_1000AC0AC();
        v22 = sub_1000AC07C();
        v24 = v23;
        (*(v12 + 8))(v14, v11);
        if (v24 >> 60 != 15)
        {
          v25 = objc_opt_self();
          isa = sub_1000AB72C().super.isa;
          v27 = swift_allocObject();
          *(v27 + 16) = v96;
          *(v27 + 24) = v19;
          v107 = sub_10004CEB4;
          v108 = v27;
          aBlock = _NSConcreteStackBlock;
          v104 = 1107296256;
          v105 = sub_100049334;
          v106 = &unk_1000DCA58;
          v28 = _Block_copy(&aBlock);

          [v25 encryptData:isa key:v18 completion:v28];
          v29 = v28;
          v19 = v99;
          _Block_release(v29);

          sub_10000E950(v22, v24);
          goto LABEL_14;
        }
      }

      else
      {
        swift_errorRetain();
      }

LABEL_14:
      swift_beginAccess();
      v32 = *(v19 + 24);
      swift_beginAccess();
      v33 = v101;
      if (*v21)
      {

        swift_errorRetain();
        v34 = sub_1000AB62C();

        v35 = v102;
        if (v32)
        {
          goto LABEL_16;
        }
      }

      else
      {

        v34 = 0;
        v35 = v102;
        if (v32)
        {
LABEL_16:
          v36 = sub_1000AC02C();

          if (v34)
          {
LABEL_17:
            v37 = sub_1000AB62C();

            goto LABEL_21;
          }

LABEL_20:
          v37 = 0;
LABEL_21:
          v38 = [objc_allocWithZone(BCNativeOAuth2Response) initWithToken:v36 error:v37];

          v39 = v38;
          v100 = sub_10004BB6C(v39, v33);
          v41 = v40;

          v42 = [v39 error];
          if (!v42)
          {
LABEL_35:
            v61 = *(v33 + OBJC_IVAR____TtC8Business32IMBDetailedMessageViewController_conversation);
            v62 = BCMessageRootAuthenticateKey;
            v63 = v100;
            aBlock = *(v33 + OBJC_IVAR____TtC8Business32IMBDetailedMessageViewController_message);
            v60 = aBlock;
            v104 = v100;
            v105 = v61;
            v106 = v41;
            v107 = BCMessageRootAuthenticateKey;
            v108 = v39;
            v64 = v41;
            v65 = v39;
            v66 = v60;
            v67 = v63;
            v68 = v61;
            v93 = v64;
            v69 = v64;
            v70 = v62;
            sub_100036FA8(1);
            v71 = v33 + OBJC_IVAR____TtC8Business32IMBDetailedMessageViewController__dismissalDelegate;
            if (swift_unknownObjectWeakLoadStrong())
            {
              swift_unknownObjectRelease();
              if (swift_unknownObjectWeakLoadStrong())
              {
                v72 = *(v71 + 8);
                ObjectType = swift_getObjectType();
                v91 = v66;
                v74 = ObjectType;
                v92 = v39;
                v90 = v67;
                v75 = v69;
                v76 = *(v72 + 16);
                v77 = type metadata accessor for IMBAuthenticationViewController();
                v33 = v101;
                v76(v101, v77, v74, v72);

                v39 = v92;
                swift_unknownObjectRelease();
              }

              else
              {

                v33 = v101;
              }

              v35 = v102;
              v41 = v93;
LABEL_45:
              v83 = *(v33 + OBJC_IVAR____TtC8Business32IMBDetailedMessageViewController_message);
              v84 = kBCAnalyticsMessagesForBusinessOAuth;
              v85 = [v83 version];
              v86 = [v94 authenticationSessionURL];
              sub_1000AB6AC();

              URL.displayDomainString.getter();
              (*(v97 + 8))(v35, v98);
              v87 = sub_1000AC02C();

              [v39 status];
              v88 = NSStringFromServerSideAuthStatus();
              if (!v88)
              {
                sub_1000AC06C();
                v88 = sub_1000AC02C();
              }

              [objc_opt_self() logEventWithName:v84 version:v85 authDomain:v87 status:v88];
              swift_unknownObjectRelease();

              return;
            }

            __break(1u);
            goto LABEL_51;
          }

          v43 = [v39 error];
          if (v43)
          {
            v44 = v43;
            v45 = [v43 domain];

            v46 = sub_1000AC06C();
            v48 = v47;

            v49 = sub_1000AC06C();
            if (v48)
            {
              if (v46 == v49 && v48 == v50)
              {
                goto LABEL_34;
              }

              v51 = sub_1000AC7AC();

              if (v51)
              {
                goto LABEL_35;
              }

LABEL_30:
              v52 = [v39 error];
              if (v52)
              {
                v53 = v52;
                v54 = [v52 domain];

                v55 = sub_1000AC06C();
                v57 = v56;

                v58 = sub_1000AC06C();
                if (v57)
                {
                  if (v55 == v58 && v57 == v59)
                  {
LABEL_34:

                    goto LABEL_35;
                  }

                  v89 = sub_1000AC7AC();

                  if (v89)
                  {
                    goto LABEL_35;
                  }

LABEL_42:
                  v78 = v33 + OBJC_IVAR____TtC8Business32IMBDetailedMessageViewController__dismissalDelegate;
                  if (swift_unknownObjectWeakLoadStrong())
                  {
                    swift_unknownObjectRelease();
                    if (swift_unknownObjectWeakLoadStrong())
                    {
                      v79 = *(v78 + 8);
                      v80 = swift_getObjectType();
                      v81 = *(v79 + 16);
                      v82 = type metadata accessor for IMBAuthenticationViewController();
                      v81(v33, v82, v80, v79);
                      swift_unknownObjectRelease();
                    }

                    goto LABEL_45;
                  }

LABEL_51:
                  __break(1u);
                  return;
                }
              }

              else
              {
                sub_1000AC06C();
              }

              goto LABEL_42;
            }
          }

          else
          {
            sub_1000AC06C();
          }

          goto LABEL_30;
        }
      }

      v36 = 0;
      if (v34)
      {
        goto LABEL_17;
      }

      goto LABEL_20;
    }

    swift_unknownObjectRelease();
  }

  sub_100005A24(0, &qword_1000F0070, OS_os_log_ptr);
  v102 = sub_1000AC3FC();
  v30 = sub_1000AC2BC();
  sub_1000ABA5C("IMBAuthenticationViewController nativeAuthenticationSessionDidFinish called with incorrect URLProvider", 102, 2, &_mh_execute_header, v102, v30, _swiftEmptyArrayStorage);
  v31 = v102;
}

uint64_t sub_10004CE04()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004CE3C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004CE74()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004CEBC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

char *sub_10004CF0C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10000413C(&qword_1000F0270, &unk_1000B0480);
  __chkstk_darwin(v4 - 8);
  v6 = &v33 - v5;
  v7 = sub_1000AB7EC();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + 16) || (v12 = v9, v13 = sub_10004F0CC(0x696669746E656469, 0xEA00000000007265), (v14 & 1) == 0) || (sub_1000068B4(*(a1 + 56) + 32 * v13, v37), (swift_dynamicCast() & 1) == 0))
  {

    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    v25 = qword_1000FC008;
    v26 = sub_1000AC2AC();
    sub_1000ABA5C("Unable to create timeslot: IdentifierDictionaryKey is missing", 61, 2, &_mh_execute_header, v25, v26, _swiftEmptyArrayStorage);
    goto LABEL_17;
  }

  v15 = v36;
  if (!*(a1 + 16) || (v16 = v35, v17 = sub_10004F0CC(0x6D69547472617473, 0xE900000000000065), (v18 & 1) == 0) || (sub_1000068B4(*(a1 + 56) + 32 * v17, v37), (swift_dynamicCast() & 1) == 0))
  {

    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    v28 = qword_1000FC008;
    v29 = sub_1000AC2AC();
    sub_1000ABA5C("Unable to create timeslot: StartTimeDictionaryKey is missing", 60, 2, &_mh_execute_header, v28, v29, _swiftEmptyArrayStorage);
    goto LABEL_17;
  }

  v19 = v36;
  if (!*(a1 + 16) || (v34 = v35, v20 = sub_10004F0CC(0x6E6F697461727564, 0xE800000000000000), (v21 & 1) == 0))
  {

    goto LABEL_23;
  }

  sub_1000068B4(*(a1 + 56) + 32 * v20, v37);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_23:

    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    v30 = qword_1000FC008;
    v31 = sub_1000AC2AC();
    sub_1000ABA5C("Unable to create timeslot: DurationDictionaryKey is missing", 59, 2, &_mh_execute_header, v30, v31, _swiftEmptyArrayStorage);
    goto LABEL_17;
  }

  v22 = v35;
  Date.init(fromUTCString:)(v34, v19, v6);
  if ((*(v8 + 48))(v6, 1, v12) != 1)
  {
    v32 = *(v8 + 32);
    v32(v11, v6, v12);
    *(v2 + 16) = v16;
    *(v2 + 24) = v15;
    v32((v2 + OBJC_IVAR____TtC8Business19IMBProposedTimeslot_startTime), v11, v12);
    *(v2 + OBJC_IVAR____TtC8Business19IMBProposedTimeslot_duration) = v22;
    return v2;
  }

  sub_10004D744(v6);
  if (qword_1000EEE80 != -1)
  {
    swift_once();
  }

  v23 = qword_1000FC008;
  v24 = sub_1000AC2AC();
  sub_1000ABA5C("Unable to create proposed timeslot because the date specified is not UTC", 72, 2, &_mh_execute_header, v23, v24, _swiftEmptyArrayStorage);
LABEL_17:
  type metadata accessor for IMBProposedTimeslot(0);
  swift_deallocPartialClassInstance();
  return 0;
}

void *sub_10004D454()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v12 = &type metadata for String;
  v11._countAndFlagsBits = v2;
  v11._object = v3;
  sub_100006910(&v11, v10);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_10003A3E8(v10, 0x696669746E656469, 0xEA00000000007265, isUniquelyReferenced_nonNull_native);
  v5 = Date.toUTCString()();
  v12 = &type metadata for String;
  v11 = v5;
  sub_100006910(&v11, v10);
  v6 = swift_isUniquelyReferenced_nonNull_native();
  sub_10003A3E8(v10, 0x6D69547472617473, 0xE900000000000065, v6);
  v7 = *(v1 + OBJC_IVAR____TtC8Business19IMBProposedTimeslot_duration);
  v12 = &type metadata for Int;
  v11._countAndFlagsBits = v7;
  sub_100006910(&v11, v10);
  v8 = swift_isUniquelyReferenced_nonNull_native();
  sub_10003A3E8(v10, 0x6E6F697461727564, 0xE800000000000000, v8);
  return _swiftEmptyDictionarySingleton;
}

uint64_t sub_10004D5A4()
{

  v1 = OBJC_IVAR____TtC8Business19IMBProposedTimeslot_startTime;
  v2 = sub_1000AB7EC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for IMBProposedTimeslot(uint64_t a1)
{
  result = qword_1000F0E58;
  if (!qword_1000F0E58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10004D69C(uint64_t a1)
{
  result = sub_1000AB7EC();
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

uint64_t sub_10004D744(uint64_t a1)
{
  v2 = sub_10000413C(&qword_1000F0270, &unk_1000B0480);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10004D7AC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10000413C(&qword_1000F0F60, &qword_1000B3408);
    v2 = sub_1000AC68C();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 8;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_1000068B4(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_100006910(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_100006910(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_100006910(v31, v32);
    result = sub_1000AC52C(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~v7[v18 >> 6]) == 0)
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
        v23 = v7[v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~v7[v18 >> 6])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_100006910(v32, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_10004DA74(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10000413C(&qword_1000F0F78, &unk_1000B3420);
    v2 = sub_1000AC68C();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
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
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v12 = v11 | (v10 << 6);
        v13 = (*(a1 + 48) + 16 * v12);
        v14 = *v13;
        v15 = v13[1];
        sub_1000068B4(*(a1 + 56) + 32 * v12, v32);
        *&v31 = v14;
        *(&v31 + 1) = v15;
        v29 = v31;
        v30[0] = v32[0];
        v30[1] = v32[1];
        v16 = v31;
        sub_100006910(v30, &v23);

        sub_10000413C(&unk_1000F1DF0, &qword_1000B18F0);
        swift_dynamicCast();
        v27 = v25;
        v28 = v26;
        v24 = v25;
        v25 = v26;
        result = sub_10004F0CC(v16, *(&v16 + 1));
        if (v17)
        {
          *(v2[6] + 16 * result) = v16;
          v9 = result;

          result = sub_1000503F4(&v24, v2[7] + 32 * v9);
          v8 = v10;
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
          *(v2[6] + 16 * result) = v16;
          v18 = (v2[7] + 32 * result);
          v19 = v25;
          *v18 = v24;
          v18[1] = v19;
          v20 = v2[2];
          v21 = __OFADD__(v20, 1);
          v22 = v20 + 1;
          if (v21)
          {
            goto LABEL_21;
          }

          v2[2] = v22;
          v8 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v10 = v8;
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

unint64_t sub_10004DCE8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10000413C(&qword_1000F07D8, &qword_1000B1AF8);
    v2 = sub_1000AC68C();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
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
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = (*(a1 + 48) + ((v12 << 10) | (16 * v13)));
        v16 = *v14;
        v15 = v14[1];

        swift_dynamicCast();
        sub_100006910(&v22, v24);
        sub_100006910(v24, v25);
        sub_100006910(v25, &v23);
        result = sub_10004F0CC(v16, v15);
        if (v17)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v16;
          v9[1] = v15;
          v10 = result;

          v11 = (v2[7] + 32 * v10);
          sub_10000E738(v11);
          result = sub_100006910(&v23, v11);
          v8 = v12;
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
          v18 = (v2[6] + 16 * result);
          *v18 = v16;
          v18[1] = v15;
          result = sub_100006910(&v23, (v2[7] + 32 * result));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
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

unint64_t sub_10004DF40(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10000413C(&qword_1000F07D8, &qword_1000B1AF8);
    v2 = sub_1000AC68C();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
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
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = (*(a1 + 48) + 16 * (v13 | (v12 << 6)));
        v16 = *v14;
        v15 = v14[1];

        swift_dynamicCast();
        sub_100006910(&v22, v24);
        sub_100006910(v24, v25);
        sub_100006910(v25, &v23);
        result = sub_10004F0CC(v16, v15);
        if (v17)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v16;
          v9[1] = v15;
          v10 = result;

          v11 = (v2[7] + 32 * v10);
          sub_10000E738(v11);
          result = sub_100006910(&v23, v11);
          v8 = v12;
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
          v18 = (v2[6] + 16 * result);
          *v18 = v16;
          v18[1] = v15;
          result = sub_100006910(&v23, (v2[7] + 32 * result));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
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

unint64_t sub_10004E19C(uint64_t a1, unint64_t *a2, void *a3)
{
  if (*(a1 + 16))
  {
    sub_10000413C(&qword_1000F07D8, &qword_1000B1AF8);
    v4 = sub_1000AC68C();
  }

  else
  {
    v4 = _swiftEmptyDictionarySingleton;
  }

  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  if (v7)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v14 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v14 >= v8)
    {

      return v4;
    }

    v7 = *(a1 + 64 + 8 * v14);
    ++v10;
    if (v7)
    {
      while (1)
      {
        v15 = __clz(__rbit64(v7));
        v7 &= v7 - 1;
        v16 = v15 | (v14 << 6);
        v17 = (*(a1 + 48) + 16 * v16);
        v19 = *v17;
        v18 = v17[1];
        v20 = *(*(a1 + 56) + 8 * v16);
        sub_100005A24(0, a2, a3);

        v21 = v20;
        swift_dynamicCast();
        sub_100006910(&v29, v31);
        sub_100006910(v31, v32);
        sub_100006910(v32, &v30);
        result = sub_10004F0CC(v19, v18);
        if (v22)
        {
          v11 = (v4[6] + 16 * result);
          *v11 = v19;
          v11[1] = v18;
          v12 = result;

          v13 = (v4[7] + 32 * v12);
          sub_10000E738(v13);
          result = sub_100006910(&v30, v13);
          v10 = v14;
          if (!v7)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v4[2] >= v4[3])
          {
            goto LABEL_20;
          }

          *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v23 = (v4[6] + 16 * result);
          *v23 = v19;
          v23[1] = v18;
          result = sub_100006910(&v30, (v4[7] + 32 * result));
          v24 = v4[2];
          v25 = __OFADD__(v24, 1);
          v26 = v24 + 1;
          if (v25)
          {
            goto LABEL_21;
          }

          v4[2] = v26;
          v10 = v14;
          if (!v7)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v14 = v10;
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

uint64_t sub_10004E400(uint64_t a1, char a2, uint64_t (*a3)(uint64_t, void), uint64_t a4)
{
  v8 = sub_1000AB6EC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = objc_opt_self();
  if ([v12 isRunningInMacCatalyst])
  {
    v13 = [objc_opt_self() defaultWorkspace];
    v49 = a1;
    if (v13)
    {
      v15 = v13;
      sub_1000AB67C(v14);
      v48 = v16;
      v17 = [objc_allocWithZone(_LSOpenConfiguration) init];
      (*(v9 + 16))(&v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
      v18 = a4;
      v19 = (*(v9 + 80) + 16) & ~*(v9 + 80);
      v20 = a3;
      v21 = (v10 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
      v22 = swift_allocObject();
      (*(v9 + 32))(v22 + v19, v11, v8);
      v23 = (v22 + v21);
      *v23 = v20;
      v23[1] = v18;
      aBlock[4] = sub_10004F990;
      aBlock[5] = v22;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10004F020;
      aBlock[3] = &unk_1000DCAF8;
      v24 = _Block_copy(aBlock);
      sub_10002A1E0(v20, v18);

      v25 = v48;
      [v15 openURL:v48 configuration:v17 completionHandler:v24];
      _Block_release(v24);
    }

    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    v26 = qword_1000FC008;
    sub_10000413C(&qword_1000F0060, &unk_1000B0470);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_1000AF0E0;
    sub_1000503AC(&qword_1000F0F08, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v28 = sub_1000AC78C();
    v30 = v29;
    *(v27 + 56) = &type metadata for String;
    *(v27 + 64) = sub_10000587C();
    *(v27 + 32) = v28;
    *(v27 + 40) = v30;
    v31 = sub_1000AC2BC();
    sub_1000ABA5C("attempted to open URL: %@", 25, 2, &_mh_execute_header, v26, v31, v27);
  }

  else if ([v12 isRunningInMac])
  {
    result = sub_1000AC63C();
    __break(1u);
  }

  else
  {
    if (a2)
    {
      sub_10000413C(&qword_1000F0F10, &qword_1000B33B0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1000AF0E0;
      *(inited + 32) = 0xD000000000000018;
      *(inited + 40) = 0x80000001000B97A0;
      *(inited + 48) = [objc_allocWithZone(NSNumber) initWithBool:1];
      v34 = sub_1000501AC(inited, &qword_1000F0F28, &unk_1000B33C0);
      swift_setDeallocating();
      sub_10000E784(inited + 32, &qword_1000F0F18, &qword_1000B33B8);
    }

    else
    {
      v34 = sub_1000501AC(_swiftEmptyArrayStorage, &qword_1000F0F28, &unk_1000B33C0);
    }

    v35 = [objc_opt_self() defaultWorkspace];
    if (v35)
    {
      v37 = v35;
      sub_1000AB67C(v36);
      v39 = v38;
      sub_10004E19C(v34, &qword_1000F0F20, NSNumber_ptr);

      isa = sub_1000ABFAC().super.isa;

      [v37 openURL:v39 withOptions:isa];
    }

    else
    {
    }

    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    v41 = qword_1000FC008;
    sub_10000413C(&qword_1000F0060, &unk_1000B0470);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_1000AF0E0;
    sub_1000503AC(&qword_1000F0F08, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v43 = sub_1000AC78C();
    v45 = v44;
    *(v42 + 56) = &type metadata for String;
    *(v42 + 64) = sub_10000587C();
    *(v42 + 32) = v43;
    *(v42 + 40) = v45;
    v46 = sub_1000AC2BC();
    sub_1000ABA5C("attempted to open URL: %{private}@", 34, 2, &_mh_execute_header, v41, v46, v42);

    if (a3)
    {
      return a3(1, 0);
    }
  }

  return result;
}

uint64_t sub_10004EA70@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10000413C(&unk_1000F06A0, &unk_1000B0450);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  v5 = objc_opt_self();
  if (([v5 isRunningInMacCatalyst] & 1) != 0 || objc_msgSend(v5, "isRunningInMac"))
  {

    return sub_1000AB65C();
  }

  else
  {
    sub_1000AB6DC();
    v7 = sub_1000AB6EC();
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(v4, 1, v7) == 1)
    {
      sub_10000E784(v4, &unk_1000F06A0, &unk_1000B0450);
      result = sub_1000AC63C();
      __break(1u);
    }

    else
    {
      return (*(v8 + 32))(a1, v4, v7);
    }
  }

  return result;
}

void sub_10004EC6C()
{
  sub_1000AB74C();
  if ((*&v0 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v0 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v0 < 9.22337204e18)
  {
    v1._countAndFlagsBits = sub_1000AC78C();
    sub_1000AC12C(v1);

    sub_1000AB6DC();

    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_10004ED4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(BOOL, uint64_t))
{
  if (a2)
  {
    swift_errorRetain();
    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    v6 = qword_1000FC008;
    sub_10000413C(&qword_1000F0060, &unk_1000B0470);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1000AF0F0;
    sub_1000AB6EC();
    sub_1000503AC(&qword_1000F0F08, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v8 = sub_1000AC78C();
    v10 = v9;
    *(v7 + 56) = &type metadata for String;
    v11 = sub_10000587C();
    *(v7 + 64) = v11;
    *(v7 + 32) = v8;
    *(v7 + 40) = v10;
    swift_errorRetain();
    sub_10000413C(&qword_1000F3A60, &qword_1000B1520);
    v12 = sub_1000AC0CC();
    *(v7 + 96) = &type metadata for String;
    *(v7 + 104) = v11;
    *(v7 + 72) = v12;
    *(v7 + 80) = v13;
    v14 = sub_1000AC2BC();
    sub_1000ABA5C("Failed to open URL: %{private}@ error: %@", 41, 2, &_mh_execute_header, v6, v14, v7);

    if (a4)
    {
      return a4(a2 == 0, a2);
    }
  }

  else
  {
    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    v16 = qword_1000FC008;
    sub_10000413C(&qword_1000F0060, &unk_1000B0470);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1000AF0E0;
    sub_1000AB6EC();
    sub_1000503AC(&qword_1000F0F08, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v18 = sub_1000AC78C();
    v20 = v19;
    *(v17 + 56) = &type metadata for String;
    *(v17 + 64) = sub_10000587C();
    *(v17 + 32) = v18;
    *(v17 + 40) = v20;
    v21 = sub_1000AC2BC();
    sub_1000ABA5C("Successfully opened URL: %{private}@", 36, 2, &_mh_execute_header, v16, v21, v17);

    if (a4)
    {
      return a4(a2 == 0, a2);
    }
  }

  return result;
}

uint64_t sub_10004F020(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_1000ABFBC();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

unint64_t sub_10004F0CC(uint64_t a1, uint64_t a2)
{
  sub_1000AC87C();
  sub_1000AC11C();
  v4 = sub_1000AC8CC();

  return sub_10004F384(a1, a2, v4);
}

unint64_t sub_10004F144(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000AC52C(*(v2 + 40));

  return sub_10004F43C(a1, v4);
}

unint64_t sub_10004F188(uint64_t a1)
{
  sub_1000AC06C();
  sub_1000AC87C();
  sub_1000AC11C();
  v2 = sub_1000AC8CC();

  return sub_10004F7E4(a1, v2);
}

unint64_t sub_10004F218(uint64_t a1)
{
  sub_1000AB97C();
  sub_1000503AC(&qword_1000F0828, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
  v2 = sub_1000ABFFC();

  return sub_10004F504(a1, v2);
}

unint64_t sub_10004F2B0(uint64_t a1)
{
  sub_1000AC87C();
  if (a1)
  {
    sub_1000AC89C(1u);
    type metadata accessor for CFString(0);
    sub_1000503AC(&qword_1000F0F70, type metadata accessor for CFString, &unk_1000B029C);
    sub_1000ABA1C();
  }

  else
  {
    sub_1000AC89C(0);
  }

  v2 = sub_1000AC8CC();

  return sub_10004F6C4(a1, v2);
}

unint64_t sub_10004F384(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1000AC7AC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_10004F43C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100005914(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_1000AC53C();
      sub_100005970(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_10004F504(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_1000AB97C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
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
      sub_1000503AC(&qword_1000EFE98, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
      v15 = sub_1000AC01C();
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

unint64_t sub_10004F6C4(uint64_t a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = v2;
    v8 = ~v4;
    do
    {
      v9 = *(*(v6 + 48) + 8 * v5);
      if (v9)
      {
        if (a1)
        {
          type metadata accessor for CFString(0);
          sub_1000503AC(&qword_1000F0F70, type metadata accessor for CFString, &unk_1000B029C);
          v10 = v9;
          v11 = sub_1000ABA0C();

          if (v11)
          {
            return v5;
          }
        }
      }

      else if (!a1)
      {
        return v5;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_10004F7E4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_1000AC06C();
      v8 = v7;
      if (v6 == sub_1000AC06C() && v8 == v9)
      {
        break;
      }

      v11 = sub_1000AC7AC();

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

uint64_t sub_10004F8E8()
{
  v1 = sub_1000AB6EC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5))
  {
  }

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_10004F990(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_1000AB6EC() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_10004ED4C(a1, a2, v2 + v6, v7);
}

double sub_10004FA40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_10004FA58(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000413C(&qword_1000F0F50, &qword_1000B33F0);
    v3 = sub_1000AC68C();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_10004F188(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10004FB48(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000413C(&qword_1000F0F48, &unk_1000B33E0);
    v3 = sub_1000AC68C();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000E66C(v4, &v11, &qword_1000EF8D0, qword_1000B4010);
      v5 = v11;
      result = sub_10004F188(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_100006910(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10004FC70(uint64_t a1)
{
  v2 = sub_10000413C(&qword_1000F0F58, &qword_1000B33F8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10000413C(&qword_1000F0830, &qword_1000B3400);
    v7 = sub_1000AC68C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10000E66C(v9, v5, &qword_1000F0F58, &qword_1000B33F8);
      result = sub_10004F218(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1000AB97C();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10004FE58(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000413C(&qword_1000F07D8, &qword_1000B1AF8);
    v3 = sub_1000AC68C();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000E66C(v4, &v13, &qword_1000F0250, &qword_1000B1540);
      v5 = v13;
      v6 = v14;
      result = sub_10004F0CC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100006910(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10004FF88(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000413C(&qword_1000F0F80, &qword_1000B3430);
    v3 = sub_1000AC68C();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_10004F0CC(v5, v6);
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10005009C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000413C(&qword_1000F0F68, &unk_1000B3410);
    v3 = sub_1000AC68C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      v8 = v5;

      result = sub_10004F2B0(v5);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      v11 = (v3[7] + 16 * result);
      *v11 = v6;
      v11[1] = v7;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000501AC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_10000413C(a2, a3);
    v5 = sub_1000AC68C();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_10004F0CC(v7, v8);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      *(v5[7] + 8 * result) = v10;
      v14 = v5[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v5[2] = v16;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000502A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000413C(&qword_1000F0F38, &qword_1000B33D0);
    v3 = sub_1000AC68C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_10004F0CC(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_1000503AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000503F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000413C(&unk_1000F1DF0, &qword_1000B18F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100050478(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000AB6EC();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000504F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000AB6EC();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for URLHelper(uint64_t a1)
{
  result = qword_1000F0FE0;
  if (!qword_1000F0FE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000505B4(uint64_t a1)
{
  result = sub_1000AB6EC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100050620(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6C6D746878;
  }

  else
  {
    v3 = 1819112552;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x6C6D746878;
  }

  else
  {
    v5 = 1819112552;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
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
    v8 = sub_1000AC7AC();
  }

  return v8 & 1;
}

Swift::Int sub_1000506BC()
{
  sub_1000AC87C();
  sub_1000AC11C();

  return sub_1000AC8CC();
}

uint64_t sub_100050734(uint64_t a1)
{
  sub_1000AC11C();
}

Swift::Int sub_100050798()
{
  sub_1000AC87C();
  sub_1000AC11C();

  return sub_1000AC8CC();
}

uint64_t sub_10005080C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_1000DA5C0;
  v8._object = v3;
  v5 = sub_1000AC6AC(v4, v8);

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

  *a2 = v7;
  return result;
}

void sub_10005086C(uint64_t *a1@<X8>)
{
  v2 = 1819112552;
  if (*v1)
  {
    v2 = 0x6C6D746878;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1000508A0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000AC0BC();
  v69 = *(v4 - 8);
  v70 = v4;
  __chkstk_darwin(v4);
  v71 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000413C(&unk_1000F06A0, &unk_1000B0450);
  __chkstk_darwin(v6 - 8);
  v68 = &v66 - v7;
  v8 = sub_1000AB6EC();
  v72 = *(v8 - 8);
  v73 = v8;
  __chkstk_darwin(v8);
  v67 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000413C(&qword_1000F0270, &unk_1000B0480);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v66 - v14;
  v16 = sub_1000AB7EC();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = (v2 + OBJC_IVAR____TtC8Business10IMBContent_title);
  *v20 = 0;
  v20[1] = 0;
  v21 = OBJC_IVAR____TtC8Business10IMBContent_date;
  v22 = *(v17 + 56);
  v22(v2 + OBJC_IVAR____TtC8Business10IMBContent_date, 1, 1, v16);
  v23 = (v2 + OBJC_IVAR____TtC8Business10IMBContent_doc);
  *v23 = 0;
  v23[1] = 0;
  if (*(a1 + 16))
  {
    v24 = sub_10004F0CC(1702125924, 0xE400000000000000);
    if (v25)
    {
      sub_1000068B4(*(a1 + 56) + 32 * v24, v76);
      if (swift_dynamicCast())
      {
        Date.init(fromUTCString:)(v74, v75, v15);
        if ((*(v17 + 48))(v15, 1, v16) != 1)
        {
          v48 = *(v17 + 32);
          v48(v19, v15, v16);
          v48(v13, v19, v16);
          v26 = v13;
          v27 = 0;
          goto LABEL_7;
        }

        sub_10000E784(v15, &qword_1000F0270, &unk_1000B0480);
      }
    }
  }

  v26 = v13;
  v27 = 1;
LABEL_7:
  v22(v26, v27, 1, v16);
  swift_beginAccess();
  sub_100051870(v13, v2 + v21);
  swift_endAccess();
  v29 = v72;
  v28 = v73;
  if (*(a1 + 16) && (v30 = sub_10004F0CC(1701869940, 0xE400000000000000), (v31 & 1) != 0) && (sub_1000068B4(*(a1 + 56) + 32 * v30, v76), (swift_dynamicCast() & 1) != 0) && (v32 = sub_1000AC0DC(), v34 = v33, , v35._rawValue = &off_1000DA5C0, v77._countAndFlagsBits = v32, v77._object = v34, v36 = sub_1000AC6AC(v35, v77), , v36 == 1))
  {
    *(v2 + 16) = 1;
    if (!*(a1 + 16))
    {
      goto LABEL_18;
    }
  }

  else
  {
    *(v2 + 16) = 0;
    if (!*(a1 + 16))
    {
      goto LABEL_18;
    }
  }

  v37 = sub_10004F0CC(7107189, 0xE300000000000000);
  if ((v38 & 1) == 0 || (sub_1000068B4(*(a1 + 56) + 32 * v37, v76), (swift_dynamicCast() & 1) == 0))
  {
LABEL_18:
    (*(v29 + 56))(v2 + OBJC_IVAR____TtC8Business10IMBContent_url, 1, 1, v28);
    if (!*(a1 + 16))
    {
      goto LABEL_26;
    }

    goto LABEL_19;
  }

  v39 = v68;
  sub_1000AB6DC();

  if ((*(v29 + 48))(v39, 1, v28) == 1)
  {
    sub_10000E784(v39, &unk_1000F06A0, &unk_1000B0450);
    goto LABEL_18;
  }

  v49 = *(v29 + 32);
  v50 = v67;
  v49(v67, v39, v28);
  v51 = OBJC_IVAR____TtC8Business10IMBContent_url;
  v49((v2 + OBJC_IVAR____TtC8Business10IMBContent_url), v50, v28);
  (*(v29 + 56))(v2 + v51, 0, 1, v28);
  if (!*(a1 + 16))
  {
    goto LABEL_26;
  }

LABEL_19:
  v40 = sub_10004F0CC(6516580, 0xE300000000000000);
  if (v41)
  {
    sub_1000068B4(*(a1 + 56) + 32 * v40, v76);
    if (swift_dynamicCast())
    {
      v42 = v71;
      sub_1000AC0AC();
      v43 = sub_1000AC07C();
      v45 = v44;

      (*(v69 + 8))(v42, v70);
      if (v45 >> 60 != 15)
      {
        v46 = sub_1000AB70C();
        if (v47 >> 60 != 15)
        {
          v60 = v46;
          v61 = v47;
          sub_1000AC0AC();
          v62 = sub_1000AC08C();
          v64 = v63;
          sub_10000E950(v43, v45);
          sub_10000E950(v60, v61);
          v65 = (v2 + OBJC_IVAR____TtC8Business10IMBContent_doc);
          *v65 = v62;
          v65[1] = v64;
          goto LABEL_27;
        }

        sub_10000E950(v43, v45);
      }
    }
  }

LABEL_26:
  v52 = (v2 + OBJC_IVAR____TtC8Business10IMBContent_doc);
  *v52 = 0;
  v52[1] = 0;
LABEL_27:

  if (*(a1 + 16) && (v53 = sub_10004F0CC(0x656C746974, 0xE500000000000000), (v54 & 1) != 0))
  {
    sub_1000068B4(*(a1 + 56) + 32 * v53, v76);

    v55 = swift_dynamicCast();
    v56 = v74;
    v57 = v75;
    if (!v55)
    {
      v56 = 0;
      v57 = 0;
    }
  }

  else
  {

    v56 = 0;
    v57 = 0;
  }

  v58 = (v2 + OBJC_IVAR____TtC8Business10IMBContent_title);
  *v58 = v56;
  v58[1] = v57;

  return v2;
}

void *sub_1000510E8()
{
  v1 = v0;
  v2 = sub_1000AB7EC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000413C(&qword_1000F0270, &unk_1000B0480);
  __chkstk_darwin(v6 - 8);
  v8 = &v31 - v7;
  v9 = sub_10000413C(&unk_1000F06A0, &unk_1000B0450);
  __chkstk_darwin(v9 - 8);
  v11 = &v31 - v10;
  v12 = *(v0 + 16) == 0;
  v13 = 1819112552;
  if (*(v0 + 16))
  {
    v13 = 0x6C6D746878;
  }

  v14 = 0xE400000000000000;
  v36 = &type metadata for String;
  if (!v12)
  {
    v14 = 0xE500000000000000;
  }

  v35._countAndFlagsBits = v13;
  v35._object = v14;
  sub_100006910(&v35, v34);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v33 = _swiftEmptyDictionarySingleton;
  sub_10003A3E8(v34, 1701869940, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
  v37 = v33;
  sub_10000E66C(v0 + OBJC_IVAR____TtC8Business10IMBContent_url, v11, &unk_1000F06A0, &unk_1000B0450);
  v16 = sub_1000AB6EC();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v11, 1, v16) == 1)
  {
    sub_10000E784(v11, &unk_1000F06A0, &unk_1000B0450);
    sub_100039E5C(7107189, 0xE300000000000000, &v35);
    sub_10000E784(&v35, &unk_1000F1DF0, &qword_1000B18F0);
  }

  else
  {
    v18 = sub_1000AB64C();
    v36 = &type metadata for String;
    v35._countAndFlagsBits = v18;
    v35._object = v19;
    (*(v17 + 8))(v11, v16);
    sub_100006910(&v35, v34);
    v20 = v37;
    v21 = swift_isUniquelyReferenced_nonNull_native();
    v33 = v20;
    sub_10003A3E8(v34, 7107189, 0xE300000000000000, v21);
    v37 = v33;
  }

  v22 = *(v1 + OBJC_IVAR____TtC8Business10IMBContent_title + 8);
  if (v22)
  {
    v23 = *(v1 + OBJC_IVAR____TtC8Business10IMBContent_title);
    v36 = &type metadata for String;
    v35._countAndFlagsBits = v23;
    v35._object = v22;
    sub_100006910(&v35, v34);

    v24 = v37;
    v25 = swift_isUniquelyReferenced_nonNull_native();
    v33 = v24;
    sub_10003A3E8(v34, 0x656C746974, 0xE500000000000000, v25);
    v37 = v33;
  }

  else
  {
    sub_100039E5C(0x656C746974, 0xE500000000000000, &v35);
    sub_10000E784(&v35, &unk_1000F1DF0, &qword_1000B18F0);
  }

  v26 = OBJC_IVAR____TtC8Business10IMBContent_date;
  swift_beginAccess();
  sub_10000E66C(v1 + v26, v8, &qword_1000F0270, &unk_1000B0480);
  if ((*(v3 + 48))(v8, 1, v2))
  {
    sub_10000E784(v8, &qword_1000F0270, &unk_1000B0480);
    sub_100039E5C(1702125924, 0xE400000000000000, &v35);
    sub_10000E784(&v35, &unk_1000F1DF0, &qword_1000B18F0);
    return v37;
  }

  else
  {
    (*(v3 + 16))(v5, v8, v2);
    sub_10000E784(v8, &qword_1000F0270, &unk_1000B0480);
    v28 = Date.toUTCString()();
    (*(v3 + 8))(v5, v2);
    v36 = &type metadata for String;
    v35 = v28;
    sub_100006910(&v35, v34);
    v29 = v37;
    v30 = swift_isUniquelyReferenced_nonNull_native();
    v32 = v29;
    sub_10003A3E8(v34, 1702125924, 0xE400000000000000, v30);
    return v32;
  }
}

uint64_t sub_1000515E4()
{
  sub_10000E784(v0 + OBJC_IVAR____TtC8Business10IMBContent_url, &unk_1000F06A0, &unk_1000B0450);

  sub_10000E784(v0 + OBJC_IVAR____TtC8Business10IMBContent_date, &qword_1000F0270, &unk_1000B0480);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for IMBContent(uint64_t a1)
{
  result = qword_1000F1040;
  if (!qword_1000F1040)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000516F4(uint64_t a1)
{
  sub_10000C188(319, &qword_1000F28C0, &type metadata accessor for URL);
  if (v1 <= 0x3F)
  {
    sub_10000C188(319, &unk_1000EF338, &type metadata accessor for Date);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

unint64_t sub_10005181C()
{
  result = qword_1000F1138;
  if (!qword_1000F1138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F1138);
  }

  return result;
}

uint64_t sub_100051870(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000413C(&qword_1000F0270, &unk_1000B0480);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1000518E0(void *a1@<X8>)
{
  v3 = v2;
  v5 = sub_10000413C(&unk_1000F06A0, &unk_1000B0450);
  __chkstk_darwin(v5 - 8);
  *&v123 = &v103 - v6;
  v110 = sub_1000AB6EC();
  v106 = *(v110 - 8);
  __chkstk_darwin(v110);
  v109 = &v103 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v122 = sub_10000413C(&qword_1000F1140, &unk_1000B5290);
  v120 = *(v122 - 8);
  __chkstk_darwin(v122);
  *&v121 = &v103 - v8;
  v9 = v1[7];
  v130[6] = v1[6];
  v130[7] = v9;
  v10 = v1[9];
  v130[8] = v1[8];
  v130[9] = v10;
  v11 = v1[3];
  v130[2] = v1[2];
  v130[3] = v11;
  v12 = v1[5];
  v130[4] = v1[4];
  v130[5] = v12;
  v13 = v1[1];
  v130[0] = *v1;
  v130[1] = v13;
  v14 = sub_100043738(v130);
  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v18 = sub_1000437FC(v130);
      v19 = a1;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      v22 = *(v18 + 40);
      v23 = *(v18 + 24);
      v25 = *(v18 + 56);
      v24 = *(v18 + 64);
      v27 = *(v18 + 72);
      v26 = *(v18 + 80);
      v28 = *(v18 + 88);
      v29 = *(v18 + 96);
      v30 = *(v18 + 104);
      v31 = *(v18 + 120);
      v32 = *(v18 + 136);
      v33 = *(v18 + 152);
      *v19 = *v18;
      v19[1] = v20;
      v107 = v19;
      v124 = v28;
      v122 = v31;
      v123 = v30;
      v121 = v32;
      v120 = v33;
      LODWORD(v119) = v29;
      v118 = v26;
      v127 = v22;
      v128 = v23;
      v141 = v24;
      v126 = v27;
      if (v21)
      {
        if (v21 == 1)
        {
          v34 = qword_1000EEE10;

          if (v34 != -1)
          {
            swift_once();
          }

          v35 = qword_1000FBF40;
          v107[2] = qword_1000FBF40;
          v36 = qword_1000EEE28;
          v125 = v35;
          if (v36 != -1)
          {
            swift_once();
          }

          v37 = &qword_1000FBF58;
        }

        else
        {
          v76 = qword_1000EEE20;

          if (v76 != -1)
          {
            swift_once();
          }

          v77 = qword_1000FBF50;
          v107[2] = qword_1000FBF50;
          v78 = qword_1000EEE38;
          v125 = v77;
          if (v78 != -1)
          {
            swift_once();
          }

          v37 = &qword_1000FBF68;
        }
      }

      else
      {
        v73 = qword_1000EEE18;

        if (v73 != -1)
        {
          swift_once();
        }

        v74 = qword_1000FBF48;
        v107[2] = qword_1000FBF48;
        v75 = qword_1000EEE30;
        v125 = v74;
        if (v75 != -1)
        {
          swift_once();
        }

        v37 = &qword_1000FBF60;
      }

      v79 = *v37;
      v80 = sub_10000413C(&qword_1000F1148, &unk_1000B3580);
      v81 = *(v80 + 80);
      v82 = v107;
      v107[3] = v79;
      v137 = v127;
      v136 = v128;
      v138 = v25;
      v139 = v141;
      v140 = v126;
      v83 = v79;
      sub_100052474(v82 + v81);
      if (v3)
      {

        return;
      }

      v84 = v80;
      v85 = (v82 + *(sub_10000413C(&qword_1000F1150, &unk_1000B5280) + 48));
      v86 = v124;
      *v85 = v118;
      v85[1] = v86;
      if (v119)
      {
        if (v119 == 1)
        {
          v87 = qword_1000EEE10;

          if (v87 != -1)
          {
            swift_once();
          }

          v88 = qword_1000FBF40;
          v85[2] = qword_1000FBF40;
          v89 = qword_1000EEE28;
          v88;
          if (v89 != -1)
          {
            swift_once();
          }

          v90 = &qword_1000FBF58;
        }

        else
        {
          v95 = qword_1000EEE20;

          if (v95 != -1)
          {
            swift_once();
          }

          v96 = qword_1000FBF50;
          v85[2] = qword_1000FBF50;
          v97 = qword_1000EEE38;
          v96;
          if (v97 != -1)
          {
            swift_once();
          }

          v90 = &qword_1000FBF68;
        }
      }

      else
      {
        v92 = qword_1000EEE18;

        if (v92 != -1)
        {
          swift_once();
        }

        v93 = qword_1000FBF48;
        v85[2] = qword_1000FBF48;
        v94 = qword_1000EEE30;
        v93;
        if (v94 != -1)
        {
          swift_once();
        }

        v90 = &qword_1000FBF60;
      }

      v99 = v122;
      v98 = v123;
      v100 = v121;
      v101 = *v90;
      v102 = *(v84 + 80);
      v85[3] = v101;
      v132 = v98;
      v133 = v99;
      v134 = v100;
      v135 = v120;
      v101;
      sub_100052474(v85 + v102);
    }

LABEL_28:
    type metadata accessor for BIABubbleViewModelUserInteractionParadigm(0);
    swift_storeEnumTagMultiPayload();
    return;
  }

  if (!v14)
  {
    v15 = sub_1000437FC(v130);
    v16 = *(v15 + 48);
    v17 = *(v15 + 16);
    v130[10] = *v15;
    v130[11] = v17;
    v130[12] = *(v15 + 32);
    v131 = v16;
    sub_100052474(a1);
    if (v2)
    {
      return;
    }

    goto LABEL_28;
  }

  v107 = a1;
  v105 = v2;
  v38 = sub_1000437FC(v130);
  v40 = *v38;
  v39 = v38[1];
  v41 = v38[2];
  v42 = *(v41 + 16);
  if (!v42)
  {

    v43 = _swiftEmptyArrayStorage;
LABEL_49:
    v91 = v107;
    *v107 = v40;
    v91[1] = v39;
    v91[2] = v43;
    type metadata accessor for BIABubbleViewModelUserInteractionParadigm(0);
    swift_storeEnumTagMultiPayload();
    return;
  }

  v103 = *v38;
  v129 = _swiftEmptyArrayStorage;
  v104 = v39;

  v141 = v42;
  sub_10009C218(0, v42, 0);
  v43 = v129;
  v108 = (v106 + 48);
  v119 = (v106 + 32);
  v44 = (v41 + 56);
  v45 = v121;
  while (1)
  {
    v46 = *(v44 - 2);
    v126 = *(v44 - 3);
    *&v127 = v43;
    v47 = *v44;
    v125 = *(v44 - 1);
    *&v128 = v47;
    v49 = v44[1];
    v48 = v44[2];
    v50 = v44[3];
    v51 = v44[4];
    v52 = v44[5];
    v53 = v44[6];
    v54 = *(v122 + 64);
    v55 = v45 + v54;
    v56 = v44[7];
    if (v50 < 0)
    {
      *v55 = v49;
      *(v55 + 1) = v48;
      v55[16] = v50 & 1;
      *(v55 + 3) = v51;
      *(v55 + 4) = v52;
      *(v55 + 5) = v53;
      *(v55 + 6) = v56;
      type metadata accessor for BIABubbleViewModelUserAction(0);
      swift_storeEnumTagMultiPayload();

      v69 = v128;

      goto LABEL_24;
    }

    v111 = v45 + v54;
    v112 = v49;
    v57 = v52;
    v124 = v48;

    v113 = v50;
    v114 = v51;
    v115 = v53;
    v116 = v57;
    v117 = v56;
    sub_1000527C0(v49, v124, v50, v51, v57, v53, v56);
    v118 = v46;

    v58 = v123;
    v59 = v112;
    sub_1000AB6DC();
    v60 = v58;
    v61 = v110;
    if ((*v108)(v60, 1, v110) == 1)
    {
      break;
    }

    v62 = *v119;
    v63 = v109;
    v64 = v61;
    (*v119)(v109, v123, v61);
    v65 = v63;
    v66 = sub_1000AB6CC();
    v45 = v121;
    v68 = v111;
    if (!v67)
    {
      goto LABEL_50;
    }

    if (v66 == 0x7370747468 && v67 == 0xE500000000000000)
    {
    }

    else
    {
      v70 = sub_1000AC7AC();
      v45 = v121;

      if ((v70 & 1) == 0)
      {
LABEL_50:
        sub_10005281C();
        swift_allocError();
        swift_willThrow();
        (*(v106 + 8))(v65, v64);
        goto LABEL_52;
      }
    }

    v62(v68, v65, v64);
    type metadata accessor for BIABubbleViewModelUserAction(0);
    swift_storeEnumTagMultiPayload();
    v69 = v128;

    v46 = v118;

    sub_100047180(v59, v124, v113, v114, v116, v115, v117);
LABEL_24:
    v43 = v127;
    *v45 = v126;
    v45[1] = v46;
    v45[2] = v125;
    v45[3] = v69;
    v129 = v43;
    v72 = v43[2];
    v71 = v43[3];
    if (v72 >= v71 >> 1)
    {
      sub_10009C218((v71 > 1), v72 + 1, 1);
      v45 = v121;
      v43 = v129;
    }

    v44 += 11;
    v43[2] = v72 + 1;
    sub_100052750(v45, v43 + ((*(v120 + 80) + 32) & ~*(v120 + 80)) + *(v120 + 72) * v72);
    if (!--v141)
    {
      v40 = v103;
      v39 = v104;
      goto LABEL_49;
    }
  }

  sub_10000E784(v123, &unk_1000F06A0, &unk_1000B0450);
  sub_10005281C();
  swift_allocError();
  swift_willThrow();
LABEL_52:

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  sub_100047180(v59, v124, v113, v114, v116, v115, v117);
}

uint64_t sub_100052474@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10000413C(&unk_1000F06A0, &unk_1000B0450);
  __chkstk_darwin(v3 - 8);
  v5 = v22 - v4;
  v6 = sub_1000AB6EC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v1 + 8);
  if (((*(v1 + 17) | ((*(v1 + 21) | (*(v1 + 23) << 16)) << 32)) & 0x8000000000000000) != 0)
  {
    v12 = *(v1 + 16);
    v13 = *(v1 + 40);
    v14 = *(v1 + 48);
    v15 = *(v1 + 24);
    v16 = *(v1 + 32);
    *a1 = *v1;
    *(a1 + 8) = v10;
    *(a1 + 16) = v12 & 1;
    *(a1 + 24) = v15;
    *(a1 + 32) = v16;
    *(a1 + 40) = v13;
    *(a1 + 48) = v14;
    type metadata accessor for BIABubbleViewModelUserAction(0);
    swift_storeEnumTagMultiPayload();
  }

  sub_1000AB6DC();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_10000E784(v5, &unk_1000F06A0, &unk_1000B0450);
    sub_10005281C();
    swift_allocError();
    return swift_willThrow();
  }

  v17 = *(v7 + 32);
  v17(v9, v5, v6);
  v18 = sub_1000AB6CC();
  if (!v19)
  {
    goto LABEL_11;
  }

  if (v18 == 0x7370747468 && v19 == 0xE500000000000000)
  {
  }

  else
  {
    v21 = sub_1000AC7AC();

    if ((v21 & 1) == 0)
    {
LABEL_11:
      sub_10005281C();
      swift_allocError();
      swift_willThrow();
      return (*(v7 + 8))(v9, v6);
    }
  }

  v17(a1, v9, v6);
  type metadata accessor for BIABubbleViewModelUserAction(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_100052750(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000413C(&qword_1000F1140, &unk_1000B5290);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000527C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a3 < 0)
  {
  }
}

unint64_t sub_10005281C()
{
  result = qword_1000F1158;
  if (!qword_1000F1158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F1158);
  }

  return result;
}

unint64_t sub_100052884()
{
  result = qword_1000F1160;
  if (!qword_1000F1160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F1160);
  }

  return result;
}

uint64_t NetworkStatus.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x656E6E6F43206F4ELL;
  }

  if (a1 == 1)
  {
    return 1768319319;
  }

  return 0x72616C756C6C6543;
}

uint64_t sub_100052938(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1768319319;
  if (v2 != 1)
  {
    v4 = 0x72616C756C6C6543;
    v3 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x656E6E6F43206F4ELL;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xED00006E6F697463;
  }

  v7 = 0xE400000000000000;
  v8 = 1768319319;
  if (*a2 != 1)
  {
    v8 = 0x72616C756C6C6543;
    v7 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x656E6E6F43206F4ELL;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xED00006E6F697463;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1000AC7AC();
  }

  return v11 & 1;
}

Swift::Int sub_100052A34()
{
  sub_1000AC87C();
  sub_1000AC11C();

  return sub_1000AC8CC();
}

uint64_t sub_100052ADC(uint64_t a1)
{
  sub_1000AC11C();
}

Swift::Int sub_100052B70()
{
  sub_1000AC87C();
  sub_1000AC11C();

  return sub_1000AC8CC();
}

unint64_t sub_100052C14@<X0>(Swift::String *a1@<X0>, Business::NetworkStatus_optional *a2@<X8>)
{
  result = _s8Business13NetworkStatusO8rawValueACSgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

void sub_100052C44(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED00006E6F697463;
  v4 = 0xE400000000000000;
  v5 = 1768319319;
  if (v2 != 1)
  {
    v5 = 0x72616C756C6C6543;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x656E6E6F43206F4ELL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

NSString sub_100052CD0()
{
  result = sub_1000AC02C();
  static Reachability.reachibilityChangedNotification = result;
  return result;
}

uint64_t *Reachability.reachibilityChangedNotification.unsafeMutableAddressor()
{
  if (qword_1000EEE48 != -1)
  {
    swift_once();
  }

  return &static Reachability.reachibilityChangedNotification;
}

id static Reachability.reachibilityChangedNotification.getter()
{
  if (qword_1000EEE48 != -1)
  {
    swift_once();
  }

  v1 = static Reachability.reachibilityChangedNotification;

  return v1;
}

uint64_t Reachability.__allocating_init(networkReachability:)(uint64_t a1)
{
  v2 = swift_allocObject();
  Reachability.init(networkReachability:)(a1);
  return v2;
}

uint64_t Reachability.init(networkReachability:)(uint64_t a1)
{
  v11 = a1;
  v10 = sub_1000AC31C();
  v2 = *(v10 - 8);
  __chkstk_darwin(v10);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000AC2FC();
  __chkstk_darwin(v5);
  v6 = sub_1000ABF6C();
  __chkstk_darwin(v6 - 8);
  *(v1 + 44) = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 60) = 1;
  sub_100053134();
  sub_1000ABF5C();
  v12 = _swiftEmptyArrayStorage;
  sub_100053180();
  sub_10000413C(&qword_1000EEEC0, &qword_1000AF110);
  sub_100004184();
  sub_1000AC49C();
  (*(v2 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v10);
  *(v1 + 64) = sub_1000AC34C();
  *(v1 + 72) = 0;
  *(v1 + 80) = [objc_opt_self() defaultCenter];
  v7 = *(v1 + 48);
  *(v1 + 48) = v11;

  return v1;
}

uint64_t Reachability.deinit()
{
  sub_100026FE0(*(v0 + 16), *(v0 + 24));
  sub_100026FE0(*(v0 + 32), *(v0 + 40));

  return v0;
}

uint64_t Reachability.__deallocating_deinit()
{
  sub_100026FE0(*(v0 + 16), *(v0 + 24));
  sub_100026FE0(*(v0 + 32), *(v0 + 40));

  return swift_deallocClassInstance();
}

unint64_t _s8Business13NetworkStatusO8rawValueACSgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000DA6E8;
  v6._object = a2;
  v4 = sub_1000AC6AC(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_100053134()
{
  result = qword_1000EEEB0;
  if (!qword_1000EEEB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000EEEB0);
  }

  return result;
}

unint64_t sub_100053180()
{
  result = qword_1000EEEB8;
  if (!qword_1000EEEB8)
  {
    sub_1000AC2FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EEEB8);
  }

  return result;
}

unint64_t sub_1000531DC()
{
  result = qword_1000F1168;
  if (!qword_1000F1168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F1168);
  }

  return result;
}

id sub_100053264()
{
  v1 = OBJC_IVAR____TtC8Business20IMBContentHeaderView_separatorColor;
  *&v0[v1] = [objc_opt_self() blackColor];
  v2 = OBJC_IVAR____TtC8Business20IMBContentHeaderView_titleLabel;
  *&v0[v2] = [objc_allocWithZone(UILabel) init];
  v3 = OBJC_IVAR____TtC8Business20IMBContentHeaderView_subtitleLabel;
  *&v0[v3] = [objc_allocWithZone(UILabel) init];
  v4 = OBJC_IVAR____TtC8Business20IMBContentHeaderView_separator;
  *&v0[v4] = [objc_allocWithZone(UIView) init];
  v7.receiver = v0;
  v7.super_class = type metadata accessor for IMBContentHeaderView();
  v5 = objc_msgSendSuper2(&v7, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_100053698();
  sub_100053874();

  return v5;
}

char *sub_100053384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = OBJC_IVAR____TtC8Business20IMBContentHeaderView_separatorColor;
  *&v5[v9] = [objc_opt_self() blackColor];
  v10 = OBJC_IVAR____TtC8Business20IMBContentHeaderView_titleLabel;
  *&v5[v10] = [objc_allocWithZone(UILabel) init];
  v11 = OBJC_IVAR____TtC8Business20IMBContentHeaderView_subtitleLabel;
  *&v5[v11] = [objc_allocWithZone(UILabel) init];
  v12 = OBJC_IVAR____TtC8Business20IMBContentHeaderView_separator;
  *&v5[v12] = [objc_allocWithZone(UIView) init];
  v24.receiver = v5;
  v24.super_class = type metadata accessor for IMBContentHeaderView();
  v13 = objc_msgSendSuper2(&v24, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v14 = *&v13[OBJC_IVAR____TtC8Business20IMBContentHeaderView_titleLabel];
  v15 = v13;
  v16 = v14;
  if (a2)
  {
    v17 = sub_1000AC02C();
  }

  else
  {
    v17 = 0;
  }

  [v14 setText:v17];

  v18 = *&v13[OBJC_IVAR____TtC8Business20IMBContentHeaderView_subtitleLabel];
  v19 = v18;
  if (a4)
  {
    v20 = sub_1000AC02C();
  }

  else
  {
    v20 = 0;
  }

  [v18 setText:v20];

  v21 = *&v13[OBJC_IVAR____TtC8Business20IMBContentHeaderView_separatorColor];
  *&v13[OBJC_IVAR____TtC8Business20IMBContentHeaderView_separatorColor] = a5;
  v22 = a5;

  sub_100053698();
  sub_100053874();

  return v13;
}

id sub_10005356C(void *a1)
{
  v3 = OBJC_IVAR____TtC8Business20IMBContentHeaderView_separatorColor;
  *&v1[v3] = [objc_opt_self() blackColor];
  v4 = OBJC_IVAR____TtC8Business20IMBContentHeaderView_titleLabel;
  *&v1[v4] = [objc_allocWithZone(UILabel) init];
  v5 = OBJC_IVAR____TtC8Business20IMBContentHeaderView_subtitleLabel;
  *&v1[v5] = [objc_allocWithZone(UILabel) init];
  v6 = OBJC_IVAR____TtC8Business20IMBContentHeaderView_separator;
  *&v1[v6] = [objc_allocWithZone(UIView) init];
  v11.receiver = v1;
  v11.super_class = type metadata accessor for IMBContentHeaderView();
  v7 = objc_msgSendSuper2(&v11, "initWithCoder:", a1);
  v8 = v7;
  if (v7)
  {
    v9 = v7;
    sub_100053698();
    sub_100053874();
  }

  return v8;
}

id sub_100053698()
{
  v1 = objc_opt_self();
  v2 = [v1 clearColor];
  [v0 setBackgroundColor:v2];

  v3 = *&v0[OBJC_IVAR____TtC8Business20IMBContentHeaderView_separator];
  [v3 setBackgroundColor:*&v0[OBJC_IVAR____TtC8Business20IMBContentHeaderView_separatorColor]];
  v4 = *&v0[OBJC_IVAR____TtC8Business20IMBContentHeaderView_titleLabel];
  v5 = objc_opt_self();
  v6 = [v5 systemFontOfSize:18.0 weight:UIFontWeightBold];
  [v4 setFont:v6];

  [v4 setNumberOfLines:0];
  v7 = *&v0[OBJC_IVAR____TtC8Business20IMBContentHeaderView_subtitleLabel];
  v8 = [v5 systemFontOfSize:14.0 weight:UIFontWeightRegular];
  [v7 setFont:v8];

  [v7 setNumberOfLines:0];
  v9 = [v1 grayColor];
  [v7 setTextColor:v9];

  [v0 addSubview:v4];
  [v0 addSubview:v7];

  return [v0 addSubview:v3];
}

void sub_100053874()
{
  v1 = *&v0[OBJC_IVAR____TtC8Business20IMBContentHeaderView_titleLabel];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = [v1 topAnchor];
  v3 = [v0 topAnchor];
  v4 = [v2 constraintEqualToAnchor:v3 constant:18.0];

  [v4 setActive:1];
  v5 = [v1 leadingAnchor];
  v6 = [v0 leadingAnchor];
  v7 = [v5 constraintEqualToAnchor:v6 constant:20.0];

  [v7 setActive:1];
  v8 = [v1 trailingAnchor];
  v9 = [v0 trailingAnchor];
  v10 = [v8 constraintEqualToAnchor:v9 constant:-20.0];

  [v10 setActive:1];
  v11 = *&v0[OBJC_IVAR____TtC8Business20IMBContentHeaderView_subtitleLabel];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  v12 = [v11 topAnchor];
  v13 = [v1 bottomAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];

  [v14 setActive:1];
  v15 = [v11 leadingAnchor];
  v16 = [v0 leadingAnchor];
  v17 = [v15 constraintEqualToAnchor:v16 constant:20.0];

  [v17 setActive:1];
  v18 = [v11 trailingAnchor];
  v19 = [v0 trailingAnchor];
  v20 = [v18 constraintEqualToAnchor:v19 constant:-20.0];

  [v20 setActive:1];
  v21 = *&v0[OBJC_IVAR____TtC8Business20IMBContentHeaderView_separator];
  [v21 setTranslatesAutoresizingMaskIntoConstraints:0];
  v22 = [v21 heightAnchor];
  v23 = [objc_opt_self() mainScreen];
  [v23 scale];
  v25 = v24;

  v26 = [v22 constraintEqualToConstant:1.0 / v25];
  [v26 setActive:1];

  v27 = [v21 topAnchor];
  v28 = [v11 bottomAnchor];
  v29 = [v27 constraintEqualToAnchor:v28 constant:18.0];

  [v29 setActive:1];
  v30 = [v21 rightAnchor];
  v31 = [v0 rightAnchor];
  v32 = [v30 constraintEqualToAnchor:v31];

  [v32 setActive:1];
  v33 = [v21 bottomAnchor];
  v34 = [v0 bottomAnchor];
  v35 = [v33 constraintEqualToAnchor:v34];

  [v35 setActive:1];
  v36 = [v21 leftAnchor];
  v37 = [v0 leftAnchor];
  v38 = [v36 constraintEqualToAnchor:v37 constant:20.0];

  [v38 setActive:1];
}

id sub_100053E48(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for IMBContentHeaderView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_100053F0C(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC8Business25BIABubbleBinaryChoiceView_delegate];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = [objc_allocWithZone(UIButton) init];
  *&v4[OBJC_IVAR____TtC8Business25BIABubbleBinaryChoiceView_leftButton] = v10;
  v11 = [objc_allocWithZone(UIButton) init];
  *&v4[OBJC_IVAR____TtC8Business25BIABubbleBinaryChoiceView_rightButton] = v11;
  v45.receiver = v4;
  v45.super_class = type metadata accessor for BIABubbleBinaryChoiceView();
  v12 = objc_msgSendSuper2(&v45, "initWithFrame:", a1, a2, a3, a4);
  sub_10000413C(&unk_1000F06B0, qword_1000B0520);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000B3780;
  v42 = v12;
  v43 = OBJC_IVAR____TtC8Business25BIABubbleBinaryChoiceView_leftButton;
  v14 = *&v12[OBJC_IVAR____TtC8Business25BIABubbleBinaryChoiceView_leftButton];
  *(inited + 32) = v14;
  v41 = OBJC_IVAR____TtC8Business25BIABubbleBinaryChoiceView_rightButton;
  v15 = *&v12[OBJC_IVAR____TtC8Business25BIABubbleBinaryChoiceView_rightButton];
  *(inited + 40) = v15;
  v44 = v12;
  v16 = v14;
  v17 = v15;
  for (i = 0; i != 2; ++i)
  {
    if ((inited & 0xC000000000000001) != 0)
    {
      v19 = sub_1000AC5AC();
    }

    else
    {
      if (i >= *((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        return;
      }

      v19 = *(inited + 8 * i + 32);
    }

    v20 = v19;
    [v19 setTranslatesAutoresizingMaskIntoConstraints:0];
    v21 = [v20 layer];
    [v21 setCornerRadius:8.0];

    v22 = [v20 titleLabel];
    if (!v22)
    {
      goto LABEL_20;
    }

    v23 = v22;
    if (qword_1000EEE40 != -1)
    {
      swift_once();
    }

    [v23 setFont:qword_1000FBF70];

    [v44 addSubview:v20];
    if (qword_1000EEE10 != -1)
    {
      swift_once();
    }

    [v20 setBackgroundColor:qword_1000FBF40];
    if (qword_1000EEE28 != -1)
    {
      swift_once();
    }

    [v20 setTitleColor:qword_1000FBF58 forState:0];
  }

  swift_setDeallocating();
  swift_arrayDestroy();
  sub_10000413C(&unk_1000F2370, &unk_1000B43C0);
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_1000AF0F0;
  *(v24 + 32) = 0x747475427466656CLL;
  *(v24 + 40) = 0xEA00000000006E6FLL;
  v25 = *&v42[v43];
  v26 = sub_100005A24(0, &qword_1000F1378, UIButton_ptr);
  *(v24 + 48) = v25;
  *(v24 + 72) = v26;
  *(v24 + 80) = 0x7475427468676972;
  *(v24 + 88) = 0xEB000000006E6F74;
  v27 = *&v42[v41];
  *(v24 + 120) = v26;
  *(v24 + 96) = v27;
  v28 = v25;
  v29 = v27;
  v30 = sub_10004FE58(v24);
  swift_setDeallocating();
  sub_10000413C(&qword_1000F0250, &qword_1000B1540);
  swift_arrayDestroy();
  v31 = swift_initStackObject();
  *(v31 + 16) = xmmword_1000AF0E0;
  *(v31 + 32) = 0x70536E6F74747562;
  v32 = v31 + 32;
  *(v31 + 72) = &type metadata for Double;
  *(v31 + 40) = 0xED0000676E696361;
  *(v31 + 48) = 0x4024000000000000;
  v33 = sub_10004FE58(v31);
  swift_setDeallocating();
  sub_1000362E4(v32);
  type metadata accessor for ConstraintBuilder();
  v34 = swift_initStackObject();
  *(v34 + 16) = 0;
  *(v34 + 40) = _swiftEmptyArrayStorage;
  *(v34 + 24) = v30;
  *(v34 + 32) = v33;

  sub_100054688(v35, v44);

  if (*(v34 + 16) == 1)
  {
  }

  else
  {
    *(v34 + 16) = 1;
    v36 = objc_opt_self();
    swift_beginAccess();
    sub_100005A24(0, &qword_1000EF6A8, NSLayoutConstraint_ptr);
    isa = sub_1000AC18C().super.isa;
    [v36 activateConstraints:isa];
  }

  v38 = *&v42[v43];
  v39 = v44;
  [v38 addTarget:v39 action:"handleLeftButtonTap" forControlEvents:64];
  v40 = *&v42[v41];
  [v40 addTarget:v39 action:"handleRightButtonTap" forControlEvents:64];
}

void sub_100054558(char *a1, uint64_t a2, uint64_t a3)
{
  if (*&a1[OBJC_IVAR____TtC8Business25BIABubbleBinaryChoiceView_delegate])
  {
    v3 = a3;
    v4 = a1;
    swift_unknownObjectRetain();
    sub_10005C39C(v3);
    swift_unknownObjectRelease();
  }
}

id sub_1000545D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BIABubbleBinaryChoiceView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100054688(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == 1 || ((v4 = sub_1000AC02C(), isa = *(a1 + 32), v31 = a2, !isa) ? (v6.super.isa = 0) : (v6.super.isa = sub_1000ABFAC().super.isa), (v7 = objc_opt_self(), v8 = sub_1000ABFAC().super.isa, v9 = [v7 constraintsWithVisualFormat:v4 options:0 metrics:v6.super.isa views:v8], v6.super.isa, v8, v4, sub_100005A24(0, &qword_1000EF6A8, NSLayoutConstraint_ptr), v10 = sub_1000AC19C(), v9, swift_beginAccess(), sub_1000A50CC(v10), swift_endAccess(), *(a1 + 16) == 1) || ((v11 = sub_1000AC02C(), !isa) ? (v12.super.isa = 0) : (v12.super.isa = sub_1000ABFAC().super.isa), v13 = sub_1000ABFAC().super.isa, v14 = objc_msgSend(v7, "constraintsWithVisualFormat:options:metrics:views:", v11, 0, v12.super.isa, v13), v12.super.isa, v13, v11, v15 = sub_1000AC19C(), v14, swift_beginAccess(), sub_1000A50CC(v15), swift_endAccess(), *(a1 + 16) == 1)))
  {
    sub_1000AC63C();
    __break(1u);
  }

  else
  {
    v16 = sub_1000AC02C();
    if (isa)
    {
      isa = sub_1000ABFAC().super.isa;
    }

    v17 = sub_1000ABFAC().super.isa;
    v18 = [v7 constraintsWithVisualFormat:v16 options:0 metrics:isa views:v17];

    v19 = sub_1000AC19C();
    swift_beginAccess();
    sub_1000A50CC(v19);
    swift_endAccess();
    v20 = *(v31 + OBJC_IVAR____TtC8Business25BIABubbleBinaryChoiceView_leftButton);
    v21 = [v7 constraintWithItem:v20 attribute:8 relatedBy:1 toItem:0 attribute:0 multiplier:1.0 constant:34.0];
    sub_10000413C(&unk_1000F06B0, qword_1000B0520);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000B04C0;
    *(inited + 32) = v21;
    swift_beginAccess();
    v23 = v21;
    sub_1000A50CC(inited);
    swift_endAccess();

    v24 = *(v31 + OBJC_IVAR____TtC8Business25BIABubbleBinaryChoiceView_rightButton);
    v25 = [v7 constraintWithItem:v24 attribute:8 relatedBy:0 toItem:v20 attribute:8 multiplier:1.0 constant:0.0];
    v26 = swift_initStackObject();
    *(v26 + 16) = xmmword_1000B04C0;
    *(v26 + 32) = v25;
    swift_beginAccess();
    v27 = v25;
    sub_1000A50CC(v26);
    swift_endAccess();

    v28 = [v7 constraintWithItem:v20 attribute:7 relatedBy:0 toItem:v24 attribute:7 multiplier:1.0 constant:0.0];
    v29 = swift_initStackObject();
    *(v29 + 16) = xmmword_1000B04C0;
    *(v29 + 32) = v28;
    swift_beginAccess();
    v30 = v28;
    sub_1000A50CC(v29);
    swift_endAccess();
  }
}

id sub_100054BF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC8Business22IMBActionTableViewCell_iconView;
  *&v3[v6] = [objc_allocWithZone(UIImageView) init];
  v7 = OBJC_IVAR____TtC8Business22IMBActionTableViewCell_titleLabel;
  *&v3[v7] = [objc_allocWithZone(UILabel) init];
  v3[OBJC_IVAR____TtC8Business22IMBActionTableViewCell_actionEnabled] = 1;
  if (a3)
  {
    v8 = sub_1000AC02C();
  }

  else
  {
    v8 = 0;
  }

  v12.receiver = v3;
  v12.super_class = type metadata accessor for IMBActionTableViewCell();
  v9 = objc_msgSendSuper2(&v12, "initWithStyle:reuseIdentifier:", a1, v8);

  v10 = v9;
  sub_100054E24();
  sub_10005511C();

  return v10;
}

id sub_100054D38(void *a1)
{
  v3 = OBJC_IVAR____TtC8Business22IMBActionTableViewCell_iconView;
  *&v1[v3] = [objc_allocWithZone(UIImageView) init];
  v4 = OBJC_IVAR____TtC8Business22IMBActionTableViewCell_titleLabel;
  *&v1[v4] = [objc_allocWithZone(UILabel) init];
  v1[OBJC_IVAR____TtC8Business22IMBActionTableViewCell_actionEnabled] = 1;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for IMBActionTableViewCell();
  v5 = objc_msgSendSuper2(&v9, "initWithCoder:", a1);
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    sub_100054E24();
    sub_10005511C();
  }

  return v6;
}

id sub_100054E24()
{
  if (sub_10002CE60() == 2)
  {
    if (qword_1000EEDC0 != -1)
    {
      swift_once();
    }

    [v0 setBackgroundColor:qword_1000FBEF0];
    v1 = [v0 contentView];
    [v1 setDirectionalLayoutMargins:{0.0, 16.0, 0.0, 16.0}];
  }

  [v0 setBounds:{0.0, 0.0, 350.0, 10000.0}];
  v2 = *&v0[OBJC_IVAR____TtC8Business22IMBActionTableViewCell_titleLabel];
  if (qword_1000EEE50 != -1)
  {
    swift_once();
  }

  [v2 setFont:qword_1000F1380];
  [v2 setNumberOfLines:0];
  v3 = *&v0[OBJC_IVAR____TtC8Business22IMBActionTableViewCell_iconView];
  v4 = [v3 layer];
  if (qword_1000EEE60 != -1)
  {
    swift_once();
  }

  [v4 setCornerRadius:*&qword_1000F1390 * 0.5];

  v5 = [v3 layer];
  [v5 setMasksToBounds:1];

  v6 = [objc_opt_self() tertiaryLabelColor];
  [v3 setBackgroundColor:v6];

  [v3 setContentMode:1];
  v7 = [v0 contentView];
  [v7 addSubview:v3];

  v8 = [v0 contentView];
  [v8 addSubview:v2];

  v9 = UIAccessibilityTraitButton;
  if ((v0[OBJC_IVAR____TtC8Business22IMBActionTableViewCell_actionEnabled] & 1) == 0)
  {
    v10 = UIAccessibilityTraitNotEnabled;
    if ((UIAccessibilityTraitNotEnabled & ~UIAccessibilityTraitButton) == 0)
    {
      v10 = 0;
    }

    v9 = v10 | UIAccessibilityTraitButton;
  }

  return [v0 setAccessibilityTraits:v9];
}

void sub_10005511C()
{
  v1 = *&v0[OBJC_IVAR____TtC8Business22IMBActionTableViewCell_iconView];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = [v1 topAnchor];
  v3 = [v0 contentView];
  v4 = [v3 topAnchor];

  v5 = [v2 constraintEqualToAnchor:v4 constant:10.0];
  [v5 setActive:1];

  v6 = [v1 trailingAnchor];
  v7 = [v0 contentView];
  v8 = [v7 layoutMarginsGuide];

  v9 = [v8 trailingAnchor];
  v10 = [v6 constraintEqualToAnchor:v9];

  [v10 setActive:1];
  v11 = [v1 bottomAnchor];
  v12 = [v0 contentView];
  v13 = [v12 bottomAnchor];

  v14 = [v11 constraintLessThanOrEqualToAnchor:v13 constant:-10.0];
  [v14 setActive:1];

  v15 = [v1 heightAnchor];
  if (qword_1000EEE60 != -1)
  {
    swift_once();
  }

  v16 = *&qword_1000F1390;
  v17 = [v15 constraintEqualToConstant:*&qword_1000F1390];

  [v17 setActive:1];
  v18 = [v1 widthAnchor];
  v19 = [v18 constraintEqualToConstant:v16];

  [v19 setActive:1];
  v20 = *&v0[OBJC_IVAR____TtC8Business22IMBActionTableViewCell_titleLabel];
  [v20 setTranslatesAutoresizingMaskIntoConstraints:0];
  v21 = [v20 topAnchor];
  v22 = [v0 contentView];
  v23 = [v22 topAnchor];

  v24 = [v21 constraintEqualToAnchor:v23 constant:10.0];
  [v24 setActive:1];

  v25 = [v20 leadingAnchor];
  v26 = [v0 contentView];
  v27 = [v26 layoutMarginsGuide];

  v28 = [v27 leadingAnchor];
  v29 = [v25 constraintEqualToAnchor:v28];

  [v29 setActive:1];
  v30 = [v20 trailingAnchor];
  v31 = [v1 leadingAnchor];
  v32 = [v30 constraintEqualToAnchor:v31 constant:5.0];

  [v32 setActive:1];
  v33 = [v20 bottomAnchor];
  v34 = [v0 contentView];
  v35 = [v34 bottomAnchor];

  v36 = [v33 constraintEqualToAnchor:v35 constant:-10.0];
  [v36 setActive:1];
}

void sub_100055680()
{
  if (v0[OBJC_IVAR____TtC8Business22IMBActionTableViewCell_actionEnabled] == 1)
  {
    [v0 setSelectionStyle:1];
    v1 = [objc_allocWithZone(UIView) init];
    [v0 setSelectedBackgroundView:v1];

    v2 = [v0 selectedBackgroundView];
    if (v2)
    {
      v3 = v2;
      if (qword_1000EEE58 != -1)
      {
        swift_once();
      }

      v4 = [qword_1000F1388 CGColor];
      CopyWithAlpha = CGColorCreateCopyWithAlpha(v4, 0.1);

      if (!CopyWithAlpha)
      {
        __break(1u);
        return;
      }

      v6 = [objc_allocWithZone(UIColor) initWithCGColor:CopyWithAlpha];

      [v3 setBackgroundColor:v6];
    }

    v7 = *&v0[OBJC_IVAR____TtC8Business22IMBActionTableViewCell_titleLabel];
    if (qword_1000EEE50 != -1)
    {
      swift_once();
    }

    [v7 setFont:qword_1000F1380];
    if (qword_1000EEE58 != -1)
    {
      swift_once();
    }

    [v7 setTextColor:qword_1000F1388];
  }

  else
  {
    [v0 setSelectionStyle:0];
    [v0 setSelectedBackgroundView:0];
    v7 = *&v0[OBJC_IVAR____TtC8Business22IMBActionTableViewCell_titleLabel];
    v8 = [objc_opt_self() lightGrayColor];
    [v7 setTextColor:v8];
  }

  v9 = *&v0[OBJC_IVAR____TtC8Business22IMBActionTableViewCell_iconView];
  v10 = [v7 textColor];
  [v9 setTintColor:v10];
}

id sub_100055928(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for IMBActionTableViewCell();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_1000559CC()
{
  if (sub_10002CE60() == 2)
  {
    v0 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleBody];
    v1 = [objc_opt_self() systemFontOfSize:13.0];
    v2 = [v0 scaledFontForFont:v1];
  }

  else
  {
    v2 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
  }

  qword_1000F1380 = v2;
}

id sub_100055AB8()
{
  result = [objc_opt_self() tableCellBlueTextColor];
  if (result)
  {
    qword_1000F1388 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100055AFC()
{
  result = sub_10002CE60();
  v1 = 40.0;
  if (result == 2)
  {
    v1 = 20.0;
  }

  qword_1000F1390 = *&v1;
  return result;
}

id sub_100055B34(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC8Business23ListPickerSectionHeader_headerLabel;
  *&v2[v4] = [objc_allocWithZone(UILabel) init];
  v5 = OBJC_IVAR____TtC8Business23ListPickerSectionHeader_topSeparator;
  *&v2[v5] = [objc_allocWithZone(UIView) init];
  v6 = OBJC_IVAR____TtC8Business23ListPickerSectionHeader_bottomSeparator;
  *&v2[v6] = [objc_allocWithZone(UIView) init];
  v7 = OBJC_IVAR____TtC8Business23ListPickerSectionHeader_separatorColor;
  v8 = [objc_allocWithZone(UITableView) init];
  v9 = [v8 separatorColor];

  *&v2[v7] = v9;
  if (a2)
  {
    v10 = sub_1000AC02C();
  }

  else
  {
    v10 = 0;
  }

  v14.receiver = v2;
  v14.super_class = type metadata accessor for ListPickerSectionHeader();
  v11 = objc_msgSendSuper2(&v14, "initWithReuseIdentifier:", v10);

  v12 = v11;
  sub_100055CD4();
  sub_100055E84();

  return v12;
}

id sub_100055CD4()
{
  v1 = *&v0[OBJC_IVAR____TtC8Business23ListPickerSectionHeader_topSeparator];
  v2 = OBJC_IVAR____TtC8Business23ListPickerSectionHeader_separatorColor;
  [v1 setBackgroundColor:*&v0[OBJC_IVAR____TtC8Business23ListPickerSectionHeader_separatorColor]];
  v3 = *&v0[OBJC_IVAR____TtC8Business23ListPickerSectionHeader_bottomSeparator];
  [v3 setBackgroundColor:*&v0[v2]];
  v4 = *&v0[OBJC_IVAR____TtC8Business23ListPickerSectionHeader_headerLabel];
  v5 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleSubheadline];
  [v4 setFont:v5];

  v6 = objc_opt_self();
  v7 = [v6 labelColor];
  [v4 setTextColor:v7];

  [v4 setNumberOfLines:0];
  v8 = [v0 contentView];
  v9 = [v6 systemBackgroundColor];
  [v8 setBackgroundColor:v9];

  [v0 addSubview:v4];
  [v0 addSubview:v1];

  return [v0 addSubview:v3];
}

void sub_100055E84()
{
  v1 = *&v0[OBJC_IVAR____TtC8Business23ListPickerSectionHeader_topSeparator];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = [v1 heightAnchor];
  v45 = objc_opt_self();
  v3 = [v45 mainScreen];
  [v3 scale];
  v5 = v4;

  v6 = [v2 constraintEqualToConstant:1.0 / v5];
  [v6 setActive:1];

  v7 = [v1 topAnchor];
  v8 = [v0 topAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];

  [v9 setActive:1];
  v10 = [v1 rightAnchor];
  v11 = [v0 rightAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];

  [v12 setActive:1];
  v13 = [v1 leftAnchor];
  v14 = [v0 leftAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];

  [v15 setActive:1];
  v16 = *&v0[OBJC_IVAR____TtC8Business23ListPickerSectionHeader_headerLabel];
  [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
  v17 = [v16 topAnchor];
  v18 = [v1 bottomAnchor];
  v19 = [v17 constraintEqualToAnchor:v18 constant:8.0];

  [v19 setActive:1];
  v20 = [v16 leftAnchor];
  v21 = [v0 layoutMarginsGuide];
  v22 = [v21 leftAnchor];

  v23 = [v20 constraintEqualToAnchor:v22];
  [v23 setActive:1];

  v24 = [v16 rightAnchor];
  v25 = [v0 layoutMarginsGuide];
  v26 = [v25 rightAnchor];

  v27 = [v24 constraintEqualToAnchor:v26];
  [v27 setActive:1];

  v28 = *&v0[OBJC_IVAR____TtC8Business23ListPickerSectionHeader_bottomSeparator];
  [v28 setTranslatesAutoresizingMaskIntoConstraints:0];
  v29 = [v28 heightAnchor];
  v30 = [v45 mainScreen];
  [v30 scale];
  v32 = v31;

  v33 = [v29 constraintEqualToConstant:1.0 / v32];
  [v33 setActive:1];

  v34 = [v28 topAnchor];
  v35 = [v16 bottomAnchor];
  v36 = [v34 constraintEqualToAnchor:v35 constant:8.0];

  [v36 setActive:1];
  v37 = [v28 leftAnchor];
  v38 = [v0 leftAnchor];
  v39 = [v37 constraintEqualToAnchor:v38];

  [v39 setActive:1];
  v40 = [v28 rightAnchor];
  v41 = [v0 rightAnchor];
  v42 = [v40 constraintEqualToAnchor:v41];

  [v42 setActive:1];
  v43 = [v28 bottomAnchor];
  v44 = [v0 bottomAnchor];
  v46 = [v43 constraintEqualToAnchor:v44];

  [v46 setActive:1];
}

id sub_1000564CC(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ListPickerSectionHeader();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_100056590()
{
  v1 = OBJC_IVAR____TtC8Business23ListPickerSectionHeader_headerLabel;
  *(v0 + v1) = [objc_allocWithZone(UILabel) init];
  v2 = OBJC_IVAR____TtC8Business23ListPickerSectionHeader_topSeparator;
  *(v0 + v2) = [objc_allocWithZone(UIView) init];
  v3 = OBJC_IVAR____TtC8Business23ListPickerSectionHeader_bottomSeparator;
  *(v0 + v3) = [objc_allocWithZone(UIView) init];
  v4 = OBJC_IVAR____TtC8Business23ListPickerSectionHeader_separatorColor;
  v5 = [objc_allocWithZone(UITableView) init];
  v6 = [v5 separatorColor];

  *(v0 + v4) = v6;
  sub_1000AC63C();
  __break(1u);
}

uint64_t sub_100056694(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = a1;
  v6 = _swiftEmptyArrayStorage;
  v32 = _swiftEmptyArrayStorage;
  if (*(a1 + 16))
  {
    v7 = sub_10004F0CC(0x736D657469, 0xE500000000000000);
    if (v8)
    {
      sub_1000068B4(*(v5 + 56) + 32 * v7, v31);
      sub_10000413C(&unk_1000F0240, &qword_1000B05A0);
      if (swift_dynamicCast())
      {
        v6 = v29;
      }
    }
  }

  v9 = v6[2];
  if (v9)
  {
    v28 = v5;
    type metadata accessor for IMBListItem();
    v10 = 4;
    do
    {
      v11 = v6[v10];
      swift_allocObject();
      swift_bridgeObjectRetain_n();

      if (sub_1000588A0(v11, a2))
      {

        sub_1000AC17C();
        if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1000AC1BC();
        }

        sub_1000AC1DC();
      }

      else
      {
        if (qword_1000EEE80 != -1)
        {
          swift_once();
        }

        v12 = qword_1000FC008;
        v13 = sub_1000AC2AC();
        sub_10000413C(&qword_1000F0060, &unk_1000B0470);
        v14 = swift_allocObject();
        *(v14 + 16) = xmmword_1000AF0E0;
        *(v14 + 56) = sub_10000413C(&qword_1000F1DD0, &unk_1000B07A0);
        *(v14 + 64) = sub_100011970();
        *(v14 + 32) = v11;
        sub_1000ABA5C("Unable to create IMBListItem for dictionary: %@", 47, 2, &_mh_execute_header, v12, v13, v14);
      }

      ++v10;
      --v9;
    }

    while (v9);

    v5 = v28;
  }

  else
  {
  }

  v31[0] = sub_100087DFC(v15);
  sub_100057044(v31);

  v16 = v31[0];
  if (*(v5 + 16) && (v17 = sub_10004F0CC(0x656C746974, 0xE500000000000000), (v18 & 1) != 0) && (sub_1000068B4(*(v5 + 56) + 32 * v17, v31), (swift_dynamicCast() & 1) != 0))
  {
    v19 = v29;
    v20 = v30;
  }

  else
  {
    v19 = 0;
    v20 = 0xE000000000000000;
  }

  *(v3 + 16) = v19;
  *(v3 + 24) = v20;
  if (*(v5 + 16) && (v21 = sub_10004F0CC(0x726564726FLL, 0xE500000000000000), (v22 & 1) != 0) && (sub_1000068B4(*(v5 + 56) + 32 * v21, v31), swift_dynamicCast()))
  {
    v23 = v29;
  }

  else
  {
    v23 = 0x7FFFFFFFFFFFFFFFLL;
  }

  *(v3 + 32) = v23;
  *(v3 + 40) = v16;
  if (!*(v5 + 16) || (v24 = sub_10004F0CC(0xD000000000000011, 0x80000001000B9DC0), (v25 & 1) == 0))
  {

    goto LABEL_32;
  }

  sub_1000068B4(*(v5 + 56) + 32 * v24, v31);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_32:
    v26 = 0;
    goto LABEL_33;
  }

  v26 = v29;
LABEL_33:
  *(v3 + 48) = v26;
  return v3;
}

void sub_100056B64()
{
  v1 = v0;
  v2 = v0[5];
  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_15:
    v5 = _swiftEmptyArrayStorage;
LABEL_16:
    v9 = v0[2];
    v10 = v0[3];
    v19 = &type metadata for String;
    *&v18 = v9;
    *(&v18 + 1) = v10;
    sub_100006910(&v18, v17);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_10003A3E8(v17, 0x656C746974, 0xE500000000000000, isUniquelyReferenced_nonNull_native);
    v12 = v1[4];
    v19 = &type metadata for Int;
    *&v18 = v12;
    sub_100006910(&v18, v17);
    v13 = swift_isUniquelyReferenced_nonNull_native();
    sub_10003A3E8(v17, 0x726564726FLL, 0xE500000000000000, v13);
    v19 = sub_10000413C(&unk_1000F0240, &qword_1000B05A0);
    *&v18 = v5;
    sub_100006910(&v18, v17);
    v14 = swift_isUniquelyReferenced_nonNull_native();
    sub_10003A3E8(v17, 0x736D657469, 0xE500000000000000, v14);
    v15 = *(v1 + 48);
    v19 = &type metadata for Bool;
    LOBYTE(v18) = v15;
    sub_100006910(&v18, v17);
    v16 = swift_isUniquelyReferenced_nonNull_native();
    sub_10003A3E8(v17, 0xD000000000000011, 0x80000001000B9DC0, v16);
    return;
  }

  v3 = sub_1000AC65C();
  if (!v3)
  {
    goto LABEL_15;
  }

LABEL_3:
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = _swiftEmptyArrayStorage;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        sub_1000AC5AC();
      }

      else
      {
      }

      v6 = sub_100058D90();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_1000387AC(0, v5[2] + 1, 1, v5);
      }

      v8 = v5[2];
      v7 = v5[3];
      if (v8 >= v7 >> 1)
      {
        v5 = sub_1000387AC((v7 > 1), v8 + 1, 1, v5);
      }

      ++v4;

      v5[2] = v8 + 1;
      v5[v8 + 4] = v6;
    }

    while (v3 != v4);
    goto LABEL_16;
  }

  __break(1u);
}

uint64_t sub_100056E10()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100056E74()
{
  sub_1000AC12C(*(v0 + 16));
  v4._countAndFlagsBits = sub_1000AC78C();
  sub_1000AC12C(v4);

  v5._countAndFlagsBits = 0x203A726564726F20;
  v5._object = 0xE800000000000000;
  sub_1000AC12C(v5);

  sub_1000AC58C(22);

  if (*(v0 + 48))
  {
    v1._countAndFlagsBits = 1702195828;
  }

  else
  {
    v1._countAndFlagsBits = 0x65736C6166;
  }

  if (*(v0 + 48))
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  v1._object = v2;
  sub_1000AC12C(v1);

  v6._countAndFlagsBits = 0xD000000000000014;
  v6._object = 0x80000001000B9DE0;
  sub_1000AC12C(v6);

  type metadata accessor for IMBListItem();
  v7._countAndFlagsBits = sub_1000AC1AC();
  sub_1000AC12C(v7);

  v8._countAndFlagsBits = 0x203A736D65746920;
  v8._object = 0xE800000000000000;
  sub_1000AC12C(v8);

  return 0x203A656C746974;
}

void sub_100057044(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1000A4D24(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v19[0] = v2 + 32;
  v19[1] = v4;
  v5 = sub_1000AC77C(v4);
  if (v5 >= v4)
  {
    if (v4 >= 2)
    {
      v9 = -1;
      v10 = 1;
      v11 = (v2 + 32);
      do
      {
        v12 = *(v2 + 32 + 8 * v10);
        v13 = v9;
        v14 = v11;
        do
        {
          v15 = *v14;
          if (*(v12 + 96) >= *(*v14 + 96))
          {
            break;
          }

          *v14 = v12;
          v14[1] = v15;
          --v14;
        }

        while (!__CFADD__(v13++, 1));
        ++v10;
        ++v11;
        --v9;
      }

      while (v10 != v4);
    }
  }

  else
  {
    v6 = v5;
    v7 = v4 >> 1;
    if (v4 >= 2)
    {
      type metadata accessor for IMBListItem();
      v8 = sub_1000AC1CC();
      *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = v7;
    }

    else
    {
      v8 = _swiftEmptyArrayStorage;
    }

    v17[0] = (v8 & 0xFFFFFFFFFFFFFF8) + 32;
    v17[1] = v7;
    sub_100057194(v17, v18, v19, v6);
    *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
  }

  sub_1000AC5FC();
}

uint64_t sub_100057194(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v102 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = _swiftEmptyArrayStorage;
LABEL_124:
    v4 = *v102;
    if (*v102)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_157;
      }

      goto LABEL_126;
    }

    goto LABEL_162;
  }

  v6 = 0;
  v7 = _swiftEmptyArrayStorage;
  while (1)
  {
    v8 = v6 + 1;
    if (v6 + 1 >= v5)
    {
      goto LABEL_19;
    }

    v9 = *(*(*a3 + 8 * v8) + 96);
    v10 = *(*(*a3 + 8 * v6) + 96);
    v11 = v6 + 2;
    v12 = v9;
    do
    {
      if (v5 == v11)
      {
        v8 = v5;
        if (v9 >= v10)
        {
          goto LABEL_19;
        }

        goto LABEL_11;
      }

      v13 = *(*(*a3 + 8 * v11) + 96);
      v14 = (v9 < v10) ^ (v13 >= v12);
      ++v11;
      v12 = v13;
    }

    while ((v14 & 1) != 0);
    v8 = v11 - 1;
    if (v9 >= v10)
    {
      goto LABEL_19;
    }

LABEL_11:
    if (v8 < v6)
    {
      goto LABEL_153;
    }

    if (v6 < v8)
    {
      v15 = 8 * v8 - 8;
      v16 = 8 * v6;
      v17 = v8;
      v18 = v6;
      do
      {
        if (v18 != --v17)
        {
          v19 = *a3;
          if (!*a3)
          {
            goto LABEL_159;
          }

          v20 = *(v19 + v16);
          *(v19 + v16) = *(v19 + v15);
          *(v19 + v15) = v20;
        }

        ++v18;
        v15 -= 8;
        v16 += 8;
      }

      while (v18 < v17);
      v5 = a3[1];
    }

LABEL_19:
    if (v8 < v5)
    {
      if (__OFSUB__(v8, v6))
      {
        goto LABEL_152;
      }

      if (v8 - v6 < a4)
      {
        if (__OFADD__(v6, a4))
        {
          goto LABEL_154;
        }

        if (v6 + a4 < v5)
        {
          v5 = v6 + a4;
        }

        if (v5 < v6)
        {
          goto LABEL_155;
        }

        if (v8 != v5)
        {
          v21 = *a3;
          v22 = *a3 + 8 * v8 - 8;
          v23 = v6 - v8;
          do
          {
            v24 = *(v21 + 8 * v8);
            v25 = v23;
            v26 = v22;
            do
            {
              v27 = *v26;
              if (*(v24 + 96) >= *(*v26 + 96))
              {
                break;
              }

              if (!v21)
              {
                goto LABEL_156;
              }

              *v26 = v24;
              v26[1] = v27;
              --v26;
            }

            while (!__CFADD__(v25++, 1));
            ++v8;
            v22 += 8;
            --v23;
          }

          while (v8 != v5);
          v8 = v5;
        }
      }
    }

    if (v8 < v6)
    {
      goto LABEL_149;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1000386A8(0, *(v7 + 2) + 1, 1, v7);
      v7 = result;
    }

    v30 = *(v7 + 2);
    v29 = *(v7 + 3);
    v31 = v30 + 1;
    if (v30 >= v29 >> 1)
    {
      result = sub_1000386A8((v29 > 1), v30 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 2) = v31;
    v32 = &v7[16 * v30];
    *(v32 + 4) = v6;
    *(v32 + 5) = v8;
    v104 = v8;
    v33 = *v102;
    if (!*v102)
    {
LABEL_160:
      __break(1u);
      goto LABEL_161;
    }

    if (v30)
    {
      break;
    }

LABEL_3:
    v6 = v104;
    v5 = a3[1];
    if (v104 >= v5)
    {
      goto LABEL_124;
    }
  }

  while (1)
  {
    v34 = v31 - 1;
    if (v31 >= 4)
    {
      v39 = &v7[16 * v31 + 32];
      v40 = *(v39 - 64);
      v41 = *(v39 - 56);
      v45 = __OFSUB__(v41, v40);
      v42 = v41 - v40;
      if (v45)
      {
        goto LABEL_138;
      }

      v44 = *(v39 - 48);
      v43 = *(v39 - 40);
      v45 = __OFSUB__(v43, v44);
      v37 = v43 - v44;
      v38 = v45;
      if (v45)
      {
        goto LABEL_139;
      }

      v46 = &v7[16 * v31];
      v48 = *v46;
      v47 = *(v46 + 1);
      v45 = __OFSUB__(v47, v48);
      v49 = v47 - v48;
      if (v45)
      {
        goto LABEL_141;
      }

      v45 = __OFADD__(v37, v49);
      v50 = v37 + v49;
      if (v45)
      {
        goto LABEL_144;
      }

      if (v50 >= v42)
      {
        v68 = &v7[16 * v34 + 32];
        v70 = *v68;
        v69 = *(v68 + 1);
        v45 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if (v45)
        {
          goto LABEL_148;
        }

        if (v37 < v71)
        {
          v34 = v31 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

    if (v31 == 3)
    {
      v35 = *(v7 + 4);
      v36 = *(v7 + 5);
      v45 = __OFSUB__(v36, v35);
      v37 = v36 - v35;
      v38 = v45;
LABEL_56:
      if (v38)
      {
        goto LABEL_140;
      }

      v51 = &v7[16 * v31];
      v53 = *v51;
      v52 = *(v51 + 1);
      v54 = __OFSUB__(v52, v53);
      v55 = v52 - v53;
      v56 = v54;
      if (v54)
      {
        goto LABEL_143;
      }

      v57 = &v7[16 * v34 + 32];
      v59 = *v57;
      v58 = *(v57 + 1);
      v45 = __OFSUB__(v58, v59);
      v60 = v58 - v59;
      if (v45)
      {
        goto LABEL_146;
      }

      if (__OFADD__(v55, v60))
      {
        goto LABEL_147;
      }

      if (v55 + v60 >= v37)
      {
        if (v37 < v60)
        {
          v34 = v31 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_70;
    }

    v61 = &v7[16 * v31];
    v63 = *v61;
    v62 = *(v61 + 1);
    v45 = __OFSUB__(v62, v63);
    v55 = v62 - v63;
    v56 = v45;
LABEL_70:
    if (v56)
    {
      goto LABEL_142;
    }

    v64 = &v7[16 * v34];
    v66 = *(v64 + 4);
    v65 = *(v64 + 5);
    v45 = __OFSUB__(v65, v66);
    v67 = v65 - v66;
    if (v45)
    {
      goto LABEL_145;
    }

    if (v67 < v55)
    {
      goto LABEL_3;
    }

LABEL_77:
    if (v34 - 1 >= v31)
    {
      break;
    }

    v72 = *a3;
    if (!*a3)
    {
      __break(1u);
LABEL_159:
      __break(1u);
      goto LABEL_160;
    }

    v109 = v34;
    v110 = v7;
    v106 = v34 - 1;
    v73 = *&v7[16 * v34 + 32];
    v74 = *&v7[16 * v34 + 40];
    v107 = *&v7[16 * v34 + 16];
    v108 = v74;
    v7 = (8 * v107);
    v75 = (v72 + 8 * v107);
    v76 = 8 * v73;
    v77 = (v72 + 8 * v73);
    v78 = 8 * v74;
    v79 = (v72 + 8 * v74);
    v80 = 8 * v73 - 8 * v107;
    v81 = 8 * v74 - 8 * v73;
    if (v80 < v81)
    {
      if (v75 != v33 || v77 <= v33)
      {
        memmove(v33, (v72 + 8 * v107), 8 * v73 - 8 * v107);
      }

      v82 = &v33[v80];
      v83 = v80 < 1;
      v4 = v110;
      v84 = v108;
      if (v83 || v78 <= v76)
      {
        v85 = v33;
        v90 = v75;
        v86 = v109;
        v87 = v107;
        goto LABEL_114;
      }

      v85 = v33;
      v86 = v109;
      v87 = v107;
      while (1)
      {
        v88 = *v77;
        if (*(*v77 + 96) >= *(*v85 + 96))
        {
          break;
        }

        v89 = v75 == v77;
        v77 += 8;
        if (!v89)
        {
          goto LABEL_91;
        }

LABEL_92:
        v75 += 8;
        if (v85 >= v82 || v77 >= v79)
        {
          v90 = v75;
          goto LABEL_114;
        }
      }

      v88 = *v85;
      v89 = v75 == v85;
      v85 += 8;
      if (v89)
      {
        goto LABEL_92;
      }

LABEL_91:
      *v75 = v88;
      goto LABEL_92;
    }

    if (v77 != v33 || v79 <= v33)
    {
      memmove(v33, (v72 + 8 * v73), 8 * v74 - 8 * v73);
    }

    v82 = &v33[v81];
    v86 = v109;
    if (v81 < 1 || v76 <= v7)
    {
      v85 = v33;
      v90 = v77;
      v4 = v110;
      v87 = v107;
      v84 = v108;
    }

    else
    {
      v4 = v110;
      v87 = v107;
      v84 = v108;
      do
      {
        v90 = v77 - 8;
        v79 -= 8;
        v91 = v82;
        while (1)
        {
          v92 = v79 + 8;
          v94 = *(v91 - 8);
          v91 -= 8;
          v93 = v94;
          if (*(v94 + 96) < *(*v90 + 96))
          {
            break;
          }

          if (v92 != v82)
          {
            *v79 = v93;
          }

          v79 -= 8;
          v82 = v91;
          if (v91 <= v33)
          {
            v82 = v91;
            v85 = v33;
            v90 = v77;
            goto LABEL_114;
          }
        }

        if (v92 != v77)
        {
          *v79 = *v90;
        }

        v85 = v33;
        if (v82 <= v33)
        {
          break;
        }

        v77 -= 8;
      }

      while (v75 < v90);
    }

LABEL_114:
    v95 = v82 - v85 + (v82 - v85 < 0 ? 7uLL : 0);
    if (v90 != v85 || v90 >= &v85[v95 & 0xFFFFFFFFFFFFFFF8])
    {
      memmove(v90, v85, 8 * (v95 >> 3));
    }

    if (v84 < v87)
    {
      goto LABEL_136;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_1000A2CCC(v4);
    }

    if (v86 > *(v4 + 2))
    {
      goto LABEL_137;
    }

    v96 = &v4[16 * v106];
    *(v96 + 4) = v87;
    *(v96 + 5) = v84;
    result = sub_1000A2C40(v86);
    v7 = v4;
    v31 = *(v4 + 2);
    if (v31 <= 1)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  result = sub_1000A2CCC(v7);
  v7 = result;
LABEL_126:
  v97 = *(v7 + 2);
  if (v97 < 2)
  {
  }

  while (*a3)
  {
    v98 = *&v7[16 * v97];
    v99 = *&v7[16 * v97 + 24];
    sub_1000578F8((*a3 + 8 * v98), (*a3 + 8 * *&v7[16 * v97 + 16]), (*a3 + 8 * v99), v4);
    if (v103)
    {
    }

    if (v99 < v98)
    {
      goto LABEL_150;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_1000A2CCC(v7);
    }

    if (v97 - 2 >= *(v7 + 2))
    {
      goto LABEL_151;
    }

    v100 = &v7[16 * v97];
    *v100 = v98;
    *(v100 + 1) = v99;
    result = sub_1000A2C40(v97 - 1);
    v97 = *(v7 + 2);
    if (v97 <= 1)
    {
    }
  }

LABEL_161:
  __break(1u);
LABEL_162:
  __break(1u);
  return result;
}

uint64_t sub_1000578F8(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*(*v6 + 96) < *(*v4 + 96))
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (*(v21 + 96) < *(*v17 + 96))
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

uint64_t sub_100057B10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for BIABubbleViewModelUserInteractionParadigm(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100057BF0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for BIABubbleViewModelUserInteractionParadigm(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100057CB4(uint64_t a1)
{
  sub_100057D60(319);
  if (v1 <= 0x3F)
  {
    sub_10001777C();
    if (v2 <= 0x3F)
    {
      type metadata accessor for BIABubbleViewModelUserInteractionParadigm(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100057D60(uint64_t a1)
{
  if (!qword_1000F1550)
  {
    sub_100057DB8();
    v1 = sub_1000AC42C();
    if (!v2)
    {
      atomic_store(v1, &qword_1000F1550);
    }
  }
}

unint64_t sub_100057DB8()
{
  result = qword_1000F3A70;
  if (!qword_1000F3A70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000F3A70);
  }

  return result;
}

void sub_100057E04(uint64_t a1)
{
  sub_1000580D4(319, &qword_1000F1610, type metadata accessor for BIABubbleViewModelUserAction);
  if (v1 <= 0x3F)
  {
    sub_100057F00(319);
    if (v2 <= 0x3F)
    {
      sub_100057F78(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

uint64_t sub_100057EC8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100057F00(uint64_t a1)
{
  if (!qword_1000F1618)
  {
    sub_1000041E8(&qword_1000F1620, &unk_1000B38D0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1000F1618);
    }
  }
}

void sub_100057F78(uint64_t a1)
{
  if (!qword_1000F1628)
  {
    sub_1000041E8(&qword_1000F1148, &unk_1000B3580);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1000F1628);
    }
  }
}

void sub_100058044(uint64_t a1)
{
  sub_1000580D4(319, &qword_1000F16D8, &type metadata accessor for URL);
  if (v1 <= 0x3F)
  {
    sub_100058120(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1000580D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100058120(uint64_t a1)
{
  if (!qword_1000F16E0)
  {
    __chkstk_darwin(a1);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1000F16E0);
    }
  }
}

uint64_t sub_100058224(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 28526;
  }

  else
  {
    v3 = 7562617;
  }

  if (v2)
  {
    v4 = 0xE300000000000000;
  }

  else
  {
    v4 = 0xE200000000000000;
  }

  if (*a2)
  {
    v5 = 28526;
  }

  else
  {
    v5 = 7562617;
  }

  if (*a2)
  {
    v6 = 0xE200000000000000;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000AC7AC();
  }

  return v8 & 1;
}

Swift::Int sub_1000582B8()
{
  sub_1000AC87C();
  sub_1000AC11C();

  return sub_1000AC8CC();
}

uint64_t sub_100058328(uint64_t a1)
{
  sub_1000AC11C();
}

Swift::Int sub_100058384()
{
  sub_1000AC87C();
  sub_1000AC11C();

  return sub_1000AC8CC();
}

uint64_t sub_1000583F0@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_1000DA750;
  v8._object = v3;
  v5 = sub_1000AC6AC(v4, v8);

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

  *a2 = v7;
  return result;
}

void sub_100058450(uint64_t *a1@<X8>)
{
  v2 = 7562617;
  if (*v1)
  {
    v2 = 28526;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xE200000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_100058480()
{
  result = qword_1000F1710;
  if (!qword_1000F1710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F1710);
  }

  return result;
}

uint64_t sub_1000584D4(uint64_t result, uint64_t a2)
{
  if ((result & 1) == 0)
  {
    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    v3 = qword_1000FC008;
    v4 = sub_1000AC2AC();
    sub_10000413C(&qword_1000F0060, &unk_1000B0470);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1000AF0E0;
    if (a2)
    {
      swift_getErrorValue();
      a2 = sub_1000AC7FC();
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    *(v5 + 56) = &type metadata for String;
    *(v5 + 64) = sub_10000587C();
    if (v7)
    {
      v8 = a2;
    }

    else
    {
      v8 = 0;
    }

    v9 = 0xE000000000000000;
    if (v7)
    {
      v9 = v7;
    }

    *(v5 + 32) = v8;
    *(v5 + 40) = v9;
    sub_1000ABA5C("BIABubbleViewModelUserAction: Failed to open URL, error: %@", 59, 2, &_mh_execute_header, v3, v4, v5);
  }

  return result;
}

unint64_t sub_100058620()
{
  result = qword_1000F1718;
  if (!qword_1000F1718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F1718);
  }

  return result;
}

BOOL sub_10005867C()
{
  v1 = v0[3];
  v2 = v0[2] & 0xFFFFFFFFFFFFLL;
  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  if (v2)
  {
    return 1;
  }

  v3 = v0[6];
  v4 = v0[5] & 0xFFFFFFFFFFFFLL;
  if ((v3 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(v3) & 0xF;
  }

  if (v4)
  {
    return 1;
  }

  v6 = v0[9];
  v7 = v0[8] & 0xFFFFFFFFFFFFLL;
  if ((v6 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(v6) & 0xF;
  }

  return v7 && sub_10002CE60() > 1u;
}

uint64_t sub_100058700()
{

  sub_100026FE0(*(v0 + 80), *(v0 + 88));

  return swift_deallocClassInstance();
}

Swift::Int sub_100058774()
{
  sub_1000AC87C();
  sub_1000AC11C();
  return sub_1000AC8CC();
}

Swift::Int sub_1000587E0()
{
  sub_1000AC87C();
  sub_1000AC11C();
  return sub_1000AC8CC();
}

uint64_t sub_100058830@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_1000DA7A0;
  v7._object = v3;
  v5 = sub_1000AC6AC(v4, v7);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_1000588A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *(v3 + 16) = 0;
  if (*(a1 + 16) && (v6 = sub_10004F0CC(0x696669746E656469, 0xEA00000000007265), (v7 & 1) != 0) && (sub_1000068B4(*(a1 + 56) + 32 * v6, v41), (swift_dynamicCast() & 1) != 0))
  {
    if (*(a1 + 16))
    {
      v8 = sub_10004F0CC(0x656C746974, 0xE500000000000000);
      if (v9)
      {
        sub_1000068B4(*(a1 + 56) + 32 * v8, v41);
        if (swift_dynamicCast())
        {
          if (*(a1 + 16) && (v10 = sub_10004F0CC(0x656C797473, 0xE500000000000000), (v11 & 1) != 0) && (sub_1000068B4(*(a1 + 56) + 32 * v10, v41), (swift_dynamicCast() & 1) != 0))
          {
            v12._countAndFlagsBits = v39;
            v13 = v40;
          }

          else
          {
            v12._countAndFlagsBits = 0;
            v13 = 0xE000000000000000;
          }

          v19._rawValue = &off_1000DA588;
          v12._object = v13;
          sub_1000AC6AC(v19, v12);

          *(v3 + 24) = v39;
          *(v3 + 32) = v40;
          *(v3 + 40) = v39;
          *(v3 + 48) = v40;
          v20 = *(a1 + 16);
          if (v20)
          {
            v21 = sub_10004F0CC(0x656C746974627573, 0xE800000000000000);
            if (v22)
            {
              sub_1000068B4(*(a1 + 56) + 32 * v21, v41);
              v23 = swift_dynamicCast();
              v20 = v39;
              v24 = v40;
              if (!v23)
              {
                v20 = 0;
                v24 = 0;
              }

LABEL_26:
              *(v3 + 56) = v20;
              *(v3 + 64) = v24;
              v25 = *(a1 + 16);
              if (v25)
              {
                v26 = sub_10004F0CC(0x6564496567616D69, 0xEF7265696669746ELL);
                if (v27)
                {
                  sub_1000068B4(*(a1 + 56) + 32 * v26, v41);
                  v28 = swift_dynamicCast();
                  v25 = v39;
                  v29 = v40;
                  if (!v28)
                  {
                    v25 = 0;
                    v29 = 0;
                  }

LABEL_32:
                  *(v3 + 72) = v25;
                  *(v3 + 80) = v29;
                  if (*(a1 + 16) && (v30 = sub_10004F0CC(0x726564726FLL, 0xE500000000000000), (v31 & 1) != 0))
                  {
                    sub_1000068B4(*(a1 + 56) + 32 * v30, v41);

                    if (swift_dynamicCast())
                    {
                      v32 = v39;
                      goto LABEL_38;
                    }
                  }

                  else
                  {
                  }

                  v32 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_38:
                  *(v3 + 96) = v32;
                  v33 = *(v3 + 80);
                  if (v33)
                  {
                    if (!a2)
                    {
LABEL_44:
                      v38 = 0;
                      goto LABEL_45;
                    }

                    if (*(a2 + 16))
                    {
                      v34 = *(v3 + 72);

                      v35 = sub_10004F0CC(v34, v33);
                      v37 = v36;

                      if (v37)
                      {
                        v38 = *(*(a2 + 56) + 8 * v35);

LABEL_45:
                        *(v3 + 88) = v38;
                        return v3;
                      }
                    }
                  }

                  goto LABEL_44;
                }

                v25 = 0;
              }

              v29 = 0;
              goto LABEL_32;
            }

            v20 = 0;
          }

          v24 = 0;
          goto LABEL_26;
        }
      }
    }

    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    v17 = qword_1000FC008;
    v18 = sub_1000AC2AC();
    sub_1000ABA5C("Unable to create list item: TitleDictionaryKey is missing", 57, 2, &_mh_execute_header, v17, v18, _swiftEmptyArrayStorage);
  }

  else
  {

    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    v14 = qword_1000FC008;
    v15 = sub_1000AC2AC();
    sub_1000ABA5C("Unable to create list item: IdentifierDictionaryKey is missing", 62, 2, &_mh_execute_header, v14, v15, _swiftEmptyArrayStorage);
  }

  type metadata accessor for IMBListItem();
  swift_deallocPartialClassInstance();
  return 0;
}

void *sub_100058D90()
{
  v1 = v0;
  v2 = v0[3];
  v3 = v0[4];
  v21 = &type metadata for String;
  *&v20 = v2;
  *(&v20 + 1) = v3;
  sub_100006910(&v20, v19);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = _swiftEmptyDictionarySingleton;
  sub_10003A3E8(v19, 0x696669746E656469, 0xEA00000000007265, isUniquelyReferenced_nonNull_native);
  v5 = v22;
  v6 = v1[5];
  v7 = v1[6];
  v21 = &type metadata for String;
  *&v20 = v6;
  *(&v20 + 1) = v7;
  sub_100006910(&v20, v19);

  v8 = swift_isUniquelyReferenced_nonNull_native();
  sub_10003A3E8(v19, 0x656C746974, 0xE500000000000000, v8);
  v22 = v5;
  v9 = v1[8];
  if (v9)
  {
    v10 = v1[7];
    v21 = &type metadata for String;
    *&v20 = v10;
    *(&v20 + 1) = v9;
    sub_100006910(&v20, v19);

    v11 = swift_isUniquelyReferenced_nonNull_native();
    sub_10003A3E8(v19, 0x656C746974627573, 0xE800000000000000, v11);
  }

  else
  {
    sub_100039E5C(0x656C746974627573, 0xE800000000000000, &v20);
    sub_1000172E0(&v20);
    v5 = v22;
  }

  v21 = &type metadata for String;
  *&v20 = 0x746C7561666564;
  *(&v20 + 1) = 0xE700000000000000;
  sub_100006910(&v20, v19);
  v12 = swift_isUniquelyReferenced_nonNull_native();
  sub_10003A3E8(v19, 0x656C797473, 0xE500000000000000, v12);
  v13 = v1[12];
  v21 = &type metadata for Int;
  *&v20 = v13;
  sub_100006910(&v20, v19);
  v14 = swift_isUniquelyReferenced_nonNull_native();
  sub_10003A3E8(v19, 0x726564726FLL, 0xE500000000000000, v14);
  v22 = v5;
  v15 = v1[10];
  if (v15)
  {
    v16 = v1[9];
    v21 = &type metadata for String;
    *&v20 = v16;
    *(&v20 + 1) = v15;
    sub_100006910(&v20, v19);

    v17 = swift_isUniquelyReferenced_nonNull_native();
    sub_10003A3E8(v19, 0x6564496567616D69, 0xEF7265696669746ELL, v17);
    return v5;
  }

  else
  {
    sub_100039E5C(0x6564496567616D69, 0xEF7265696669746ELL, &v20);
    sub_1000172E0(&v20);
    return v22;
  }
}

uint64_t sub_100059048()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1000590E0()
{
  result = qword_1000F1958;
  if (!qword_1000F1958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F1958);
  }

  return result;
}

uint64_t sub_100059140()
{
  sub_1000AC12C(*(v0 + 24));
  sub_1000AC12C(*(v0 + 40));
  v2._countAndFlagsBits = 0x203A656C74697420;
  v2._object = 0xE800000000000000;
  sub_1000AC12C(v2);

  return 540697705;
}

BOOL sub_1000591F0(void *a1, void *a2)
{
  v4 = a1[3] == a2[3] && a1[4] == a2[4];
  if (!v4 && (sub_1000AC7AC() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[5] == a2[5] && a1[6] == a2[6];
  if (!v5 && (sub_1000AC7AC() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[8];
  v7 = a2[8];
  if (v6)
  {
    if (!v7 || (a1[7] != a2[7] || v6 != v7) && (sub_1000AC7AC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v8 = a1[10];
  v9 = a2[10];
  if (v8)
  {
    if (v9 && (a1[9] == a2[9] && v8 == v9 || (sub_1000AC7AC() & 1) != 0))
    {
      return a1[12] == a2[12];
    }
  }

  else if (!v9)
  {
    return a1[12] == a2[12];
  }

  return 0;
}

id sub_1000592E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10000413C(&unk_1000F06A0, &unk_1000B0450);
  __chkstk_darwin(v6 - 8);
  v8 = &v21 - v7;
  v9 = sub_1000AB6EC();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + 16) || (v13 = sub_10004F0CC(7107189, 0xE300000000000000), (v14 & 1) == 0) || (sub_1000068B4(*(a1 + 56) + 32 * v13, v23), (swift_dynamicCast() & 1) == 0))
  {

LABEL_7:

    goto LABEL_8;
  }

  sub_1000AB6DC();

  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    v16 = *(v10 + 32);
    v16(v12, v8, v9);
    if (!*(a1 + 16) || (v17 = sub_10004F0CC(0x79616C6564, 0xE500000000000000), (v18 & 1) == 0))
    {

      (*(v10 + 8))(v12, v9);
      goto LABEL_8;
    }

    sub_1000068B4(*(a1 + 56) + 32 * v17, v23);

    if (swift_dynamicCast())
    {
      v19.n128_f64[0] = v22;
      if (v22 < 29.0)
      {
        *&v3[OBJC_IVAR____TtC8Business22IMBDelayedAuthResponse_delay] = v22;
        v16(&v3[OBJC_IVAR____TtC8Business22IMBDelayedAuthResponse_url], v12, v9);
        *&v3[OBJC_IVAR____TtC8Business22IMBDelayedAuthResponse_messageBody] = a2;
        v20 = type metadata accessor for IMBDelayedAuthResponse(0);
        v21.receiver = v3;
        v21.super_class = v20;
        return objc_msgSendSuper2(&v21, "init");
      }
    }

    (*(v10 + 8))(v12, v9, v19);
    goto LABEL_7;
  }

  sub_10004B9C0(v8);
LABEL_8:
  type metadata accessor for IMBDelayedAuthResponse(0);
  swift_deallocPartialClassInstance();
  return 0;
}

id sub_100059664()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IMBDelayedAuthResponse(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for IMBDelayedAuthResponse(uint64_t a1)
{
  result = qword_1000F1988;
  if (!qword_1000F1988)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10005976C(uint64_t a1)
{
  result = sub_1000AB6EC();
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

uint64_t sub_100059818(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8Business13BIABubbleView_delegate);
  *v5 = a1;
  v5[1] = a2;
  swift_unknownObjectRetain();
  result = swift_unknownObjectRelease();
  if (a1)
  {
    if ((*(v2 + OBJC_IVAR____TtC8Business13BIABubbleView_wasSizeRequested) & 1) == 0)
    {
      ObjectType = swift_getObjectType();
      (*(a2 + 32))(v2, &off_1000DCEF0, ObjectType, a2);
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1000598D0()
{
  v1 = v0;
  v2 = sub_10000413C(&qword_1000F08E0, &unk_1000B4690);
  __chkstk_darwin(v2 - 8);
  v4 = &v13[-v3];
  v5 = *(v0 + OBJC_IVAR____TtC8Business13BIABubbleView_optionsViewController);
  v6 = OBJC_IVAR____TtC8Business13BIABubbleView_viewModel;
  swift_beginAccess();
  sub_10005C1E4(v1 + v6, v4);
  v7 = OBJC_IVAR____TtC8Business30BIABubbleOptionsViewController_viewModel;
  swift_beginAccess();
  sub_1000421CC(v4, v5 + v7);
  v8 = swift_endAccess();
  (*((swift_isaMask & *v5) + 0xE0))(v8);
  sub_10000E784(v4, &qword_1000F08E0, &unk_1000B4690);
  result = sub_10005A240();
  if (*(v1 + OBJC_IVAR____TtC8Business13BIABubbleView_wasSizeRequested) == 1)
  {
    *(v1 + OBJC_IVAR____TtC8Business13BIABubbleView_wasSizeRequested) = 0;
    if (*(v1 + OBJC_IVAR____TtC8Business13BIABubbleView_delegate))
    {
      v10 = *(v1 + OBJC_IVAR____TtC8Business13BIABubbleView_delegate + 8);
      ObjectType = swift_getObjectType();
      v12 = *(v10 + 32);
      swift_unknownObjectRetain();
      v12(v1, &off_1000DCEF0, ObjectType, v10);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_100059A84(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC8Business13BIABubbleView_bubbleConstraints;
  v4 = *(v1 + OBJC_IVAR____TtC8Business13BIABubbleView_bubbleConstraints);
  *(v1 + OBJC_IVAR____TtC8Business13BIABubbleView_bubbleConstraints) = a1;
  if (v4)
  {
    v5 = objc_opt_self();
    sub_100005A24(0, &qword_1000EF6A8, NSLayoutConstraint_ptr);
    isa = sub_1000AC18C().super.isa;
    [v5 deactivateConstraints:isa];

    v2 = *(v1 + v3);
  }

  if (v2)
  {
    v7 = objc_opt_self();
    sub_100005A24(0, &qword_1000EF6A8, NSLayoutConstraint_ptr);

    v8 = sub_1000AC18C().super.isa;

    [v7 activateConstraints:v8];
  }
}

uint64_t sub_100059B8C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1000ABF3C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000ABF6C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005A24(0, &qword_1000EEEB0, OS_dispatch_queue_ptr);
  v10 = sub_1000AC32C();
  v11 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  aBlock[4] = sub_10005C1C4;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100023BE0;
  aBlock[3] = &unk_1000DCF48;
  v13 = _Block_copy(aBlock);

  sub_1000ABF5C();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100042004();
  sub_10000413C(&unk_1000F1E00, &unk_1000B1BF0);
  sub_10004205C();
  sub_1000AC49C();
  sub_1000AC33C();
  _Block_release(v13);

  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

void sub_100059E48(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_10005A240();
  }

  swift_beginAccess();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = v3;
    if (*(v3 + OBJC_IVAR____TtC8Business13BIABubbleView_wasSizeRequested) == 1)
    {
      *(v3 + OBJC_IVAR____TtC8Business13BIABubbleView_wasSizeRequested) = 0;
      if (*(v3 + OBJC_IVAR____TtC8Business13BIABubbleView_delegate))
      {
        v5 = *(v3 + OBJC_IVAR____TtC8Business13BIABubbleView_delegate + 8);
        ObjectType = swift_getObjectType();
        v7 = *(v5 + 32);
        swift_unknownObjectRetain();
        v7(v4, &off_1000DCEF0, ObjectType, v5);
        swift_unknownObjectRelease();
      }
    }
  }
}

id sub_100059F48()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8Business13BIABubbleView_subscriptions;
  swift_beginAccess();
  v3 = *&v1[v2];
  if (v3 >> 62)
  {
LABEL_15:
    v4 = sub_1000AC65C();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4)
  {
    v5 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        sub_1000AC5AC();
        v6 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
LABEL_12:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_15;
        }

        v6 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_12;
        }
      }

      sub_1000ABBEC();

      ++v5;
    }

    while (v6 != v4);
  }

  v8.receiver = v1;
  v8.super_class = type metadata accessor for BIABubbleView(0);
  return objc_msgSendSuper2(&v8, "dealloc");
}

uint64_t type metadata accessor for BIABubbleView(uint64_t a1)
{
  result = qword_1000F1A38;
  if (!qword_1000F1A38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10005A240()
{
  v1 = sub_10000413C(&qword_1000F1148, &unk_1000B3580);
  v2 = __chkstk_darwin(v1 - 8);
  v159 = v151 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v5 = v151 - v4;
  v6 = type metadata accessor for BIABubbleViewModelUserInteractionParadigm(0);
  __chkstk_darwin(v6);
  v8 = v151 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000413C(&qword_1000F08E0, &unk_1000B4690);
  __chkstk_darwin(v9 - 8);
  v11 = v151 - v10;
  v12 = type metadata accessor for BIABubbleViewModel(0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v151 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC8Business13BIABubbleView_viewModel;
  swift_beginAccess();
  sub_10005C1E4(&v0[v16], v11);
  v17 = *(v13 + 48);
  v160 = v12;
  if (v17(v11, 1, v12) == 1)
  {
    return sub_10000E784(v11, &qword_1000F08E0, &unk_1000B4690);
  }

  v151[0] = v5;
  v151[1] = v6;
  v153 = v8;
  sub_10005C25C(v11, v15);
  v152 = *&v0[OBJC_IVAR____TtC8Business13BIABubbleView_optionsViewController];
  v19 = [v152 view];
  v166 = v15;
  if (!v19)
  {
    goto LABEL_31;
  }

  v20 = v19;
  v21 = v0;
  sub_10000413C(&unk_1000F2370, &unk_1000B43C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000B3CA0;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 40) = 0x80000001000BA260;
  v23 = *&v0[OBJC_IVAR____TtC8Business13BIABubbleView_titleAndSubtitleView];
  v24 = sub_100005A24(0, &qword_1000F0F30, UIView_ptr);
  *(inited + 48) = v23;
  *(inited + 72) = v24;
  *(inited + 80) = 0x656C746974;
  *(inited + 88) = 0xE500000000000000;
  v25 = *&v0[OBJC_IVAR____TtC8Business13BIABubbleView_titleLabel];
  v26 = sub_100005A24(0, &qword_1000EF988, UILabel_ptr);
  *(inited + 96) = v25;
  *(inited + 120) = v26;
  *(inited + 128) = 0x656C746974627573;
  *(inited + 136) = 0xE800000000000000;
  v27 = *&v0[OBJC_IVAR____TtC8Business13BIABubbleView_subtitleLabel];
  *(inited + 144) = v27;
  *(inited + 168) = v26;
  *(inited + 176) = 0x42736E6F6974706FLL;
  *(inited + 184) = 0xEA0000000000786FLL;
  *(inited + 192) = v20;
  *(inited + 216) = v24;
  strcpy((inited + 224), "binaryChoice");
  *(inited + 237) = 0;
  *(inited + 238) = -5120;
  v28 = *&v0[OBJC_IVAR____TtC8Business13BIABubbleView_binaryChoiceView];
  *(inited + 264) = type metadata accessor for BIABubbleBinaryChoiceView();
  *(inited + 240) = v28;
  v164 = v23;
  v162 = v25;
  v163 = v27;
  v158 = v28;
  v161 = v20;
  v165 = sub_10004FE58(inited);
  swift_setDeallocating();
  sub_10000413C(&qword_1000F0250, &qword_1000B1540);
  swift_arrayDestroy();
  v29 = swift_initStackObject();
  *(v29 + 16) = xmmword_1000B0620;
  *(v29 + 32) = 0x6464615074786574;
  *(v29 + 40) = 0xEB00000000676E69;
  *(v29 + 48) = 0x4028000000000000;
  *(v29 + 72) = &type metadata for Double;
  *(v29 + 80) = 0x536F54656C746974;
  *(v29 + 88) = 0xEF656C7469746275;
  *(v29 + 96) = 0x4000000000000000;
  *(v29 + 120) = &type metadata for Double;
  *(v29 + 128) = 0xD000000000000011;
  *(v29 + 168) = &type metadata for Double;
  *(v29 + 136) = 0x80000001000BA280;
  *(v29 + 144) = 0x4020000000000000;
  v168 = sub_10004FE58(v29);
  swift_setDeallocating();
  swift_arrayDestroy();
  v169[25] = _swiftEmptyArrayStorage;
  v30 = *&v0[OBJC_IVAR____TtC8Business13BIABubbleView_imageView];
  [*&v21[OBJC_IVAR____TtC8Business13BIABubbleView_imageView] setImage:*v166];
  v31 = [v30 image];
  if (v31)
  {

    [v30 setHidden:0];
    sub_10000413C(&unk_1000F06B0, qword_1000B0520);
    v32 = swift_initStackObject();
    *(v32 + 16) = xmmword_1000B08E0;
    v33 = *&v21[OBJC_IVAR____TtC8Business13BIABubbleView_contentView];
    v34 = objc_opt_self();
    *(v32 + 32) = [v34 constraintWithItem:v30 attribute:3 relatedBy:0 toItem:v33 attribute:3 multiplier:1.0 constant:0.0];
    *(v32 + 40) = [v34 constraintWithItem:v30 attribute:1 relatedBy:0 toItem:v33 attribute:1 multiplier:1.0 constant:0.0];
    *(v32 + 48) = [v34 constraintWithItem:v30 attribute:2 relatedBy:0 toItem:v33 attribute:2 multiplier:1.0 constant:0.0];
    *(v32 + 56) = [v34 constraintWithItem:v30 attribute:8 relatedBy:0 toItem:v30 attribute:7 multiplier:0.6015625 constant:0.0];
    v35 = *&v21[OBJC_IVAR____TtC8Business13BIABubbleView_textAndOptionsView];
    *(v32 + 64) = [v34 constraintWithItem:v35 attribute:3 relatedBy:0 toItem:v30 attribute:4 multiplier:1.0 constant:0.0];
    swift_beginAccess();
    sub_1000A50CC(v32);
    swift_endAccess();
  }

  else
  {
    [v30 setHidden:1];
    v35 = *&v21[OBJC_IVAR____TtC8Business13BIABubbleView_textAndOptionsView];
    v33 = *&v21[OBJC_IVAR____TtC8Business13BIABubbleView_contentView];
    v36 = [objc_opt_self() constraintWithItem:v35 attribute:3 relatedBy:0 toItem:v33 attribute:3 multiplier:1.0 constant:0.0];
    sub_10000413C(&unk_1000F06B0, qword_1000B0520);
    v37 = swift_initStackObject();
    *(v37 + 16) = xmmword_1000B04C0;
    *(v37 + 32) = v36;
    swift_beginAccess();
    v38 = v36;
    sub_1000A50CC(v37);
    swift_endAccess();
  }

  v39 = objc_opt_self();
  v155 = v35;
  v156 = v33;
  v40 = [v39 constraintWithItem:v35 attribute:4 relatedBy:0 toItem:v33 attribute:4 multiplier:1.0 constant:0.0];
  v41 = sub_10000413C(&unk_1000F06B0, qword_1000B0520);
  v42 = swift_initStackObject();
  *(v42 + 16) = xmmword_1000B04C0;
  *(v42 + 32) = v40;
  swift_beginAccess();
  v43 = v40;
  sub_1000A50CC(v42);
  swift_endAccess();

  v44 = v166;
  v45 = v166[1];
  v157 = v21;
  v46 = *&v21[OBJC_IVAR____TtC8Business13BIABubbleView_iconView];
  v167 = v39;
  v154 = v41;
  if (v45)
  {
    v47 = v45;
    [v46 setHidden:0];
    [v46 setImage:v47];
    v48 = swift_initStackObject();
    *(v48 + 16) = xmmword_1000B3CB0;
    v49 = v164;
    *(v48 + 32) = [v39 constraintWithItem:v46 attribute:3 relatedBy:0 toItem:v164 attribute:3 multiplier:1.0 constant:0.0];
    *(v48 + 40) = [v39 constraintWithItem:v46 attribute:1 relatedBy:0 toItem:v49 attribute:1 multiplier:1.0 constant:0.0];
    *(v48 + 48) = [v39 constraintWithItem:v46 attribute:7 relatedBy:0 toItem:v46 attribute:8 multiplier:1.0 constant:0.0];
    *(v48 + 56) = [v39 constraintWithItem:v46 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:0.0 constant:60.0];
    *(v48 + 64) = [v39 constraintWithItem:v49 attribute:4 relatedBy:1 toItem:v46 attribute:4 multiplier:1.0 constant:0.0];
    v50 = v49;
    v51 = v163;
    *(v48 + 72) = [v39 constraintWithItem:v50 attribute:4 relatedBy:1 toItem:v163 attribute:4 multiplier:1.0 constant:0.0];
    v52 = v39;
    v53 = v39;
    v54 = v162;
    *(v48 + 80) = [v52 constraintWithItem:v162 attribute:1 relatedBy:0 toItem:v46 attribute:2 multiplier:1.0 constant:12.0];
    *(v48 + 88) = [v53 constraintWithItem:v51 attribute:1 relatedBy:0 toItem:v46 attribute:2 multiplier:1.0 constant:12.0];
    swift_beginAccess();
    sub_1000A50CC(v48);
    swift_endAccess();
  }

  else
  {
    [v46 setHidden:1];
    v55 = swift_initStackObject();
    *(v55 + 16) = xmmword_1000B3780;
    v56 = v39;
    v57 = v39;
    v54 = v162;
    v58 = v164;
    *(v55 + 32) = [v56 constraintWithItem:v162 attribute:1 relatedBy:0 toItem:v164 attribute:1 multiplier:1.0 constant:0.0];
    v51 = v163;
    *(v55 + 40) = [v57 constraintWithItem:v163 attribute:1 relatedBy:0 toItem:v58 attribute:1 multiplier:1.0 constant:0.0];
    swift_beginAccess();
    sub_1000A50CC(v55);
    swift_endAccess();
  }

  v59 = sub_1000AC02C();
  [v54 setText:v59];

  v60 = v44[5];
  if (v60)
  {
    swift_bridgeObjectRetain_n();
    v61 = sub_1000AC02C();

    [v51 setText:v61];
  }

  else
  {
    [v51 setText:0];
  }

  [v51 setHidden:v60 == 0];
  if ([v51 isHidden])
  {
    v62 = sub_1000AC02C();
    isa = sub_1000ABFAC().super.isa;
    v64 = sub_1000ABFAC().super.isa;
    v65 = [v167 constraintsWithVisualFormat:v62 options:0 metrics:isa views:v64];

    sub_100005A24(0, &qword_1000EF6A8, NSLayoutConstraint_ptr);
    v66 = sub_1000AC19C();
  }

  else
  {
    v67 = sub_1000AC02C();
    v68 = sub_1000ABFAC().super.isa;
    v69 = sub_1000ABFAC().super.isa;
    v70 = [v167 constraintsWithVisualFormat:v67 options:0 metrics:v68 views:v69];

    sub_100005A24(0, &qword_1000EF6A8, NSLayoutConstraint_ptr);
    v66 = sub_1000AC19C();
  }

  swift_beginAccess();
  sub_1000A50CC(v66);
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000ABC2C();

  v71 = v153;
  if (v169[0])
  {
    [v161 setHidden:0];
    [v158 setHidden:1];
    v72 = sub_1000AC02C();
    v73 = sub_1000ABFAC().super.isa;
    v74 = sub_1000ABFAC().super.isa;
    v75 = v167;
    v76 = [v167 constraintsWithVisualFormat:v72 options:0 metrics:v73 views:v74];

    v77 = sub_100005A24(0, &qword_1000EF6A8, NSLayoutConstraint_ptr);
    v78 = sub_1000AC19C();

    swift_beginAccess();
    sub_1000A50CC(v78);
    swift_endAccess();
    v79 = sub_1000AC02C();
    v80 = sub_1000ABFAC().super.isa;
    v81 = sub_1000ABFAC().super.isa;
    v82 = [v75 constraintsWithVisualFormat:v79 options:0 metrics:v80 views:v81];

    v160 = v77;
    v83 = sub_1000AC19C();

    swift_beginAccess();
    v84 = v83;
LABEL_24:
    sub_1000A50CC(v84);
    swift_endAccess();
    goto LABEL_25;
  }

  [v161 setHidden:1];
  sub_10005C2C8(v44 + *(v160 + 32), v71);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_10005C878(v71, type metadata accessor for BIABubbleViewModelUserAction);
      goto LABEL_23;
    }

    while (1)
    {
LABEL_31:
      sub_1000AC63C();
      __break(1u);
    }
  }

  if (EnumCaseMultiPayload != 2)
  {
LABEL_23:
    [v158 setHidden:1];
    v108 = sub_1000AC02C();
    v109 = sub_1000ABFAC().super.isa;
    v110 = sub_1000ABFAC().super.isa;
    v111 = [v167 constraintsWithVisualFormat:v108 options:0 metrics:v109 views:v110];

    v160 = sub_100005A24(0, &qword_1000EF6A8, NSLayoutConstraint_ptr);
    v112 = sub_1000AC19C();

    swift_beginAccess();
    v84 = v112;
    goto LABEL_24;
  }

  v86 = *(sub_10000413C(&qword_1000F1150, &unk_1000B5280) + 48);
  sub_10005C32C(v71, v151[0]);
  sub_10005C32C(v71 + v86, v159);
  [v158 setHidden:0];
  v87 = sub_1000AC02C();
  v88 = sub_1000ABFAC().super.isa;
  v89 = sub_1000ABFAC().super.isa;
  v90 = [v167 constraintsWithVisualFormat:v87 options:0 metrics:v88 views:v89];

  v91 = sub_100005A24(0, &qword_1000EF6A8, NSLayoutConstraint_ptr);
  v92 = sub_1000AC19C();

  swift_beginAccess();
  sub_1000A50CC(v92);
  swift_endAccess();
  v93 = sub_1000AC02C();
  v94 = sub_1000ABFAC().super.isa;
  v95 = sub_1000ABFAC().super.isa;
  v96 = [v167 constraintsWithVisualFormat:v93 options:0 metrics:v94 views:v95];

  v160 = v91;
  v97 = sub_1000AC19C();

  swift_beginAccess();
  sub_1000A50CC(v97);
  swift_endAccess();
  v98 = *(v151[0] + 24);
  v99 = OBJC_IVAR____TtC8Business25BIABubbleBinaryChoiceView_leftButton;
  v100 = v158;
  [*&v158[OBJC_IVAR____TtC8Business25BIABubbleBinaryChoiceView_leftButton] setBackgroundColor:*(v151[0] + 16)];
  [*&v100[v99] setTitleColor:v98 forStates:0];
  v101 = *&v100[v99];
  v102 = sub_1000AC02C();
  [v101 setTitle:v102 forState:0];

  v103 = v159;
  v104 = *(v159 + 24);
  v105 = OBJC_IVAR____TtC8Business25BIABubbleBinaryChoiceView_rightButton;
  [*&v100[OBJC_IVAR____TtC8Business25BIABubbleBinaryChoiceView_rightButton] setBackgroundColor:*(v159 + 16)];
  [*&v100[v105] setTitleColor:v104 forState:0];
  v106 = *&v100[v105];
  v107 = sub_1000AC02C();
  [v106 setTitle:v107 forState:0];

  sub_10000E784(v103, &qword_1000F1148, &unk_1000B3580);
  sub_10000E784(v151[0], &qword_1000F1148, &unk_1000B3580);
LABEL_25:
  v113 = sub_1000AC02C();
  v114 = sub_1000ABFAC().super.isa;
  v115 = sub_1000ABFAC().super.isa;
  v116 = v167;
  v117 = [v167 constraintsWithVisualFormat:v113 options:0 metrics:v114 views:v115];

  sub_100005A24(0, &qword_1000EF6A8, NSLayoutConstraint_ptr);
  v118 = sub_1000AC19C();

  swift_beginAccess();
  sub_1000A50CC(v118);
  swift_endAccess();
  v119 = sub_1000AC02C();
  v120 = sub_1000ABFAC().super.isa;
  v121 = sub_1000ABFAC().super.isa;
  v122 = [v116 constraintsWithVisualFormat:v119 options:0 metrics:v120 views:v121];

  v123 = sub_1000AC19C();
  swift_beginAccess();
  sub_1000A50CC(v123);
  swift_endAccess();
  v124 = type metadata accessor for BIABubbleView(0);
  v169[3] = v124;
  v169[0] = v157;
  v125 = qword_1000EEDB8;
  v126 = v157;
  if (v125 != -1)
  {
    swift_once();
  }

  v127 = *&qword_1000FBEE8;
  v128 = v162;
  v129 = v156;
  if (v124)
  {
    v130 = sub_1000058D0(v169, v124);
    v131 = *(v124 - 8);
    __chkstk_darwin(v130);
    v133 = v151 - ((v132 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v131 + 16))(v133);
    v134 = v129;
    v135 = sub_1000AC79C();
    (*(v131 + 8))(v133, v124);
    sub_10000E738(v169);
  }

  else
  {
    v136 = v156;
    v135 = 0;
  }

  v137 = v167;
  v138 = [v167 constraintWithItem:v129 attribute:4 relatedBy:0 toItem:v135 attribute:4 multiplier:1.0 constant:-v127];

  swift_unknownObjectRelease();
  v139 = OBJC_IVAR____TtC8Business13BIABubbleView_contentViewBottomConstraint;
  v140 = *&v126[OBJC_IVAR____TtC8Business13BIABubbleView_contentViewBottomConstraint];
  *&v126[OBJC_IVAR____TtC8Business13BIABubbleView_contentViewBottomConstraint] = v138;

  v141 = swift_initStackObject();
  *(v141 + 16) = xmmword_1000B3CC0;
  v142 = v164;
  *(v141 + 32) = [v137 constraintWithItem:v128 attribute:3 relatedBy:0 toItem:v164 attribute:3 multiplier:1.0 constant:0.0];
  *(v141 + 40) = [v137 constraintWithItem:v128 attribute:2 relatedBy:0 toItem:v142 attribute:2 multiplier:1.0 constant:0.0];
  v143 = v163;
  *(v141 + 48) = [v137 constraintWithItem:v163 attribute:4 relatedBy:0 toItem:v142 attribute:4 multiplier:1.0 constant:0.0];
  *(v141 + 56) = [v137 constraintWithItem:v143 attribute:2 relatedBy:0 toItem:v142 attribute:2 multiplier:1.0 constant:0.0];
  v144 = v126;
  *(v141 + 64) = [v137 constraintWithItem:v129 attribute:3 relatedBy:0 toItem:v144 attribute:3 multiplier:1.0 constant:0.0];
  v145 = *&v126[v139];
  *(v141 + 72) = v145;
  v146 = v145;
  *(v141 + 80) = [v137 constraintWithItem:v129 attribute:1 relatedBy:0 toItem:v144 attribute:1 multiplier:1.0 constant:0.0];
  v147 = v129;
  v148 = [v137 constraintWithItem:v147 attribute:2 relatedBy:0 toItem:v144 attribute:2 multiplier:1.0 constant:0.0];

  *(v141 + 88) = v148;
  v149 = v155;
  *(v141 + 96) = [v137 constraintWithItem:v155 attribute:1 relatedBy:0 toItem:v147 attribute:1 multiplier:1.0 constant:0.0];
  *(v141 + 104) = [v137 constraintWithItem:v149 attribute:2 relatedBy:0 toItem:v147 attribute:2 multiplier:1.0 constant:0.0];
  swift_beginAccess();
  sub_1000A50CC(v141);
  swift_endAccess();

  sub_100059A84(v150);

  return sub_10005C878(v166, type metadata accessor for BIABubbleViewModel);
}

id sub_10005BDF0(double a1, double a2)
{
  v5 = sub_10000413C(&qword_1000F08E0, &unk_1000B4690);
  __chkstk_darwin(v5 - 8);
  v7 = &v20 - v6;
  v8 = type metadata accessor for BIABubbleViewModel(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v2[OBJC_IVAR____TtC8Business13BIABubbleView_wasSizeRequested] = 1;
  v12 = OBJC_IVAR____TtC8Business13BIABubbleView_viewModel;
  swift_beginAccess();
  sub_10005C1E4(&v2[v12], v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_10000E784(v7, &qword_1000F08E0, &unk_1000B4690);
  }

  else
  {
    sub_10005C25C(v7, v11);
    if (*v11)
    {
      sub_10005C878(v11, type metadata accessor for BIABubbleViewModel);
      v13 = 256.0;
      goto LABEL_8;
    }

    v14 = v11[1];
    v15 = v14;
    sub_10005C878(v11, type metadata accessor for BIABubbleViewModel);
    if (v14)
    {

      v13 = 232.0;
      goto LABEL_8;
    }
  }

  v13 = 236.0;
LABEL_8:
  v16 = sub_10005C254(a1, v13);
  LODWORD(v17) = 1148846080;
  LODWORD(v18) = 1132068864;
  return [v2 systemLayoutSizeFittingSize:v16 withHorizontalFittingPriority:a2 verticalFittingPriority:{v17, v18}];
}

void sub_10005C044(uint64_t a1)
{
  sub_10005C128(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10005C128(uint64_t a1)
{
  if (!qword_1000F1A48)
  {
    type metadata accessor for BIABubbleViewModel(255);
    v1 = sub_1000AC42C();
    if (!v2)
    {
      atomic_store(v1, &qword_1000F1A48);
    }
  }
}

uint64_t sub_10005C18C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

double sub_10005C1CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_10005C1E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000413C(&qword_1000F08E0, &unk_1000B4690);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005C25C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BIABubbleViewModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005C2C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BIABubbleViewModelUserInteractionParadigm(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005C32C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000413C(&qword_1000F1148, &unk_1000B3580);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005C39C(int a1)
{
  v27 = a1;
  v26 = sub_10000413C(&qword_1000F1148, &unk_1000B3580);
  v2 = __chkstk_darwin(v26);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v25 - v5;
  v7 = type metadata accessor for BIABubbleViewModelUserInteractionParadigm(0);
  __chkstk_darwin(v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000413C(&qword_1000F08E0, &unk_1000B4690);
  __chkstk_darwin(v10 - 8);
  v12 = &v25 - v11;
  v13 = type metadata accessor for BIABubbleViewModel(0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC8Business13BIABubbleView_viewModel;
  swift_beginAccess();
  sub_10005C1E4(v1 + v17, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_10000E784(v12, &qword_1000F08E0, &unk_1000B4690);
    goto LABEL_12;
  }

  sub_10005C25C(v12, v16);
  sub_10005C2C8(&v16[*(v13 + 32)], v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v19 = type metadata accessor for BIABubbleViewModelUserAction;
  if (EnumCaseMultiPayload != 2)
  {
    if (!EnumCaseMultiPayload)
    {
LABEL_11:
      sub_10005C878(v9, v19);
      goto LABEL_12;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v19 = type metadata accessor for BIABubbleViewModelUserInteractionParadigm;
      goto LABEL_11;
    }

LABEL_12:
    result = sub_1000AC63C();
    __break(1u);
    return result;
  }

  v20 = *(sub_10000413C(&qword_1000F1150, &unk_1000B5280) + 48);
  sub_10005C32C(v9, v6);
  sub_10005C32C(&v9[v20], v4);
  v21 = *(v26 + 80);
  v22 = *sub_1000058D0((v1 + OBJC_IVAR____TtC8Business13BIABubbleView_context), *(v1 + OBJC_IVAR____TtC8Business13BIABubbleView_context + 24));
  if (v27)
  {
    v23 = v4;
  }

  else
  {
    v23 = v6;
  }

  sub_10009C328(v22, &v23[v21]);
  sub_10000E784(v4, &qword_1000F1148, &unk_1000B3580);
  sub_10000E784(v6, &qword_1000F1148, &unk_1000B3580);
  return sub_10005C878(v16, type metadata accessor for BIABubbleViewModel);
}

void sub_10005C784()
{
  v1 = (v0 + OBJC_IVAR____TtC8Business13BIABubbleView_delegate);
  *v1 = 0;
  v1[1] = 0;
  v2 = OBJC_IVAR____TtC8Business13BIABubbleView_viewModel;
  v3 = type metadata accessor for BIABubbleViewModel(0);
  (*(*(v3 - 8) + 56))(v0 + v2, 1, 1, v3);
  v4 = OBJC_IVAR____TtC8Business13BIABubbleView_contentViewBottomConstraint;
  *(v0 + v4) = [objc_allocWithZone(NSLayoutConstraint) init];
  *(v0 + OBJC_IVAR____TtC8Business13BIABubbleView_bubbleConstraints) = 0;
  *(v0 + OBJC_IVAR____TtC8Business13BIABubbleView_wasSizeRequested) = 0;
  sub_1000AC63C();
  __break(1u);
}

uint64_t sub_10005C878(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_10005C8D8()
{
  v1 = OBJC_IVAR____TtC8Business18ApplePayBubbleView____lazy_storage___applePayButton;
  v2 = *(v0 + OBJC_IVAR____TtC8Business18ApplePayBubbleView____lazy_storage___applePayButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8Business18ApplePayBubbleView____lazy_storage___applePayButton);
  }

  else
  {
    v4 = [objc_allocWithZone(PKPaymentButton) initWithPaymentButtonType:0 paymentButtonStyle:2];
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v4 setUserInteractionEnabled:0];
    v5 = [v4 layer];

    [v5 setMasksToBounds:1];
    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

void *sub_10005C9F0(char a1, void *a2, void *a3, void *a4)
{
  v9 = type metadata accessor for URLHelper(0);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v44 - v13;
  *&v4[OBJC_IVAR____TtC8Business18ApplePayBubbleView_applePayButtonWidthConstraint] = 0;
  *&v4[OBJC_IVAR____TtC8Business18ApplePayBubbleView____lazy_storage___applePayButton] = 0;
  *&v4[OBJC_IVAR____TtC8Business18ApplePayBubbleView_message] = a3;
  *&v4[OBJC_IVAR____TtC8Business18ApplePayBubbleView_applePayManager] = a4;
  v15 = a3;
  v16 = a4;
  sub_10004EA70(v14);
  sub_10001E764(v14, v12);
  v17 = sub_10003F008(a1 & 1, a2, v12, v4);
  sub_10001E7C8(v14);
  v18 = OBJC_IVAR____TtC8Business18IMBApplePayManager_applePayViewModel;
  v19 = *&v16[OBJC_IVAR____TtC8Business18IMBApplePayManager_applePayViewModel];
  v20 = *(v19 + 40);
  v21 = *(v19 + 48);
  v22 = (v17 + OBJC_IVAR____TtC8Business13IMBBubbleView_title);
  *v22 = v20;
  v22[1] = v21;
  v23 = v17;

  sub_1000A9FF0();
  v24 = OBJC_IVAR____TtC8Business13IMBBubbleView_subtitleLabel;
  [*(v23 + OBJC_IVAR____TtC8Business13IMBBubbleView_subtitleLabel) setAttributedText:*(*&v16[v18] + 56)];
  v25 = *(v23 + v24);

  if (*(*(*(v23 + OBJC_IVAR____TtC8Business18ApplePayBubbleView_applePayManager) + OBJC_IVAR____TtC8Business18IMBApplePayManager_applePayViewModel) + 72))
  {

    v26 = sub_1000AC02C();
  }

  else
  {
    v26 = 0;
  }

  [v25 setAccessibilityLabel:v26];

  v27 = sub_1000AC06C();
  v29 = v28;
  if (v27 == sub_1000AC06C() && v29 == v30)
  {
  }

  else
  {
    v31 = sub_1000AC7AC();

    if ((v31 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  v32 = [v15 receivedMessage];
  if (v32)
  {
    v33 = v32;
    v34 = [v32 image];
  }

  else
  {
    v34 = 0;
  }

  v35 = OBJC_IVAR____TtC8Business13IMBBubbleView_image;
  v36 = *(v23 + OBJC_IVAR____TtC8Business13IMBBubbleView_image);
  *(v23 + OBJC_IVAR____TtC8Business13IMBBubbleView_image) = v34;
  v37 = v34;

  sub_1000AA2B0();
  v38 = *(v23 + v35);
  if (v38)
  {
    v39 = v38;
    if ([v15 isFromMe])
    {
      v40 = [v15 replyMessage];
      if (v40)
      {
LABEL_16:
        v41 = v40;
        v42 = [v40 imageDescription];

        if (v42)
        {
          sub_1000AC06C();

          v42 = sub_1000AC02C();
        }

        goto LABEL_19;
      }
    }

    else
    {
      v40 = [v15 receivedMessage];
      if (v40)
      {
        goto LABEL_16;
      }
    }

    v42 = 0;
LABEL_19:
    [v39 setAccessibilityLabel:v42];
  }

LABEL_20:

  return v23;
}