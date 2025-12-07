uint64_t sub_100267AA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000039E8(&qword_1004ACD10, &qword_1003FA110);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100267B84(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000039E8(&qword_1004ACD10, &qword_1003FA110);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_100267C48(uint64_t a1)
{
  sub_100267718(319);
  if (v1 <= 0x3F)
  {
    sub_100267CCC(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100267CCC(uint64_t a1)
{
  if (!qword_1004AE130)
  {
    v2 = sub_100003A94(&qword_1004AE138, &qword_100400F50);
    v3 = sub_100267D50();
    v4 = sub_100267DD4();
    v5 = type metadata accessor for PathCoded(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1004AE130);
    }
  }
}

unint64_t sub_100267D50()
{
  result = qword_1004AE140;
  if (!qword_1004AE140)
  {
    sub_100003A94(&qword_1004AE138, &qword_100400F50);
    sub_10025AA8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE140);
  }

  return result;
}

unint64_t sub_100267DD4()
{
  result = qword_1004AE148;
  if (!qword_1004AE148)
  {
    sub_100003A94(&qword_1004AE138, &qword_100400F50);
    sub_10025AA38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE148);
  }

  return result;
}

__n128 sub_100267E68(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 105) = *(a2 + 105);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_100267E94(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 121))
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

uint64_t sub_100267EDC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 121) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 121) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_100267F6C(uint64_t a1, uint64_t a2)
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

uint64_t sub_100267F90(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
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

uint64_t sub_100267FD8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100268054(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_1002680A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_100268118(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

__n128 sub_100268184(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1002681A0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_1002681E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100268284(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 sub_100268298(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1002682AC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_1002682F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10026836C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000039E8(&qword_1004ACD08, &unk_1004046A0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1002683F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000039E8(&qword_1004ACD08, &unk_1004046A0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_100268474(uint64_t a1)
{
  sub_10026754C(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

__n128 sub_100268530(uint64_t a1, uint64_t a2)
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

uint64_t sub_100268554(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_10026859C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_100268610(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_100268658(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1002686C4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_10026870C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

__n128 sub_100268770(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[14];
  *(a1 + 208) = a2[13];
  *(a1 + 224) = v12;
  *(a1 + 176) = result;
  *(a1 + 192) = v11;
  return result;
}

uint64_t sub_1002687B4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 240))
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

uint64_t sub_1002687FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0;
    *(result + 216) = 0u;
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
      *(result + 240) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 240) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_100268898(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1002688C4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_10026890C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1002689A4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1002689EC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_100268A58(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100268AD8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000039E8(a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

unint64_t sub_100268B40()
{
  result = qword_1004AE208;
  if (!qword_1004AE208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE208);
  }

  return result;
}

unint64_t sub_100268B94()
{
  result = qword_1004AE210;
  if (!qword_1004AE210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE210);
  }

  return result;
}

unint64_t sub_100268BE8()
{
  result = qword_1004AE218;
  if (!qword_1004AE218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE218);
  }

  return result;
}

unint64_t sub_100268C3C()
{
  result = qword_1004AE220;
  if (!qword_1004AE220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE220);
  }

  return result;
}

unint64_t sub_100268C90()
{
  result = qword_1004AE228;
  if (!qword_1004AE228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE228);
  }

  return result;
}

unint64_t sub_100268CE4()
{
  result = qword_1004AE230;
  if (!qword_1004AE230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE230);
  }

  return result;
}

unint64_t sub_100268D38()
{
  result = qword_1004AE238;
  if (!qword_1004AE238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE238);
  }

  return result;
}

unint64_t sub_100268D8C()
{
  result = qword_1004AE240;
  if (!qword_1004AE240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE240);
  }

  return result;
}

unint64_t sub_100268DE0()
{
  result = qword_1004AE248;
  if (!qword_1004AE248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE248);
  }

  return result;
}

unint64_t sub_100268E34()
{
  result = qword_1004AE250;
  if (!qword_1004AE250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE250);
  }

  return result;
}

unint64_t sub_100268E88()
{
  result = qword_1004AE258;
  if (!qword_1004AE258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE258);
  }

  return result;
}

uint64_t sub_100268EDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_100268F44()
{
  result = qword_1004AE290;
  if (!qword_1004AE290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE290);
  }

  return result;
}

unint64_t sub_100268F98()
{
  result = qword_1004AE298;
  if (!qword_1004AE298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE298);
  }

  return result;
}

unint64_t sub_100268FEC()
{
  result = qword_1004AE2B0;
  if (!qword_1004AE2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE2B0);
  }

  return result;
}

unint64_t sub_100269040()
{
  result = qword_1004AE2B8;
  if (!qword_1004AE2B8)
  {
    sub_100003A94(&qword_1004AD520, &qword_1003FC498);
    sub_1002690F0(&qword_1004AE2C0, &protocol witness table for String, &protocol witness table for UInt, &protocol conformance descriptor for <> Either<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE2B8);
  }

  return result;
}

uint64_t sub_1002690F0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100003A94(&qword_1004AD538, &qword_1003FC4A0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100269160()
{
  result = qword_1004AE2E8;
  if (!qword_1004AE2E8)
  {
    sub_100003A94(&qword_1004AE2E0, &qword_100401688);
    sub_1002691E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE2E8);
  }

  return result;
}

unint64_t sub_1002691E4()
{
  result = qword_1004AE2F0;
  if (!qword_1004AE2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE2F0);
  }

  return result;
}

unint64_t sub_100269238()
{
  result = qword_1004AE300;
  if (!qword_1004AE300)
  {
    sub_100003A94(&qword_1004AE2E0, &qword_100401688);
    sub_1002692BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE300);
  }

  return result;
}

unint64_t sub_1002692BC()
{
  result = qword_1004AE308;
  if (!qword_1004AE308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE308);
  }

  return result;
}

unint64_t sub_100269310()
{
  result = qword_1004AE318;
  if (!qword_1004AE318)
  {
    sub_100003A94(&qword_1004AD4E8, &qword_1003FC480);
    sub_100269394();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE318);
  }

  return result;
}

unint64_t sub_100269394()
{
  result = qword_1004AE320;
  if (!qword_1004AE320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE320);
  }

  return result;
}

unint64_t sub_1002693E8()
{
  result = qword_1004AE358;
  if (!qword_1004AE358)
  {
    sub_100003A94(&qword_1004AE350, &qword_1004016C8);
    sub_100099868();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE358);
  }

  return result;
}

unint64_t sub_100269474()
{
  result = qword_1004AE368;
  if (!qword_1004AE368)
  {
    sub_100003A94(&qword_1004AE350, &qword_1004016C8);
    sub_1000BD1B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE368);
  }

  return result;
}

unint64_t sub_100269568()
{
  result = qword_1004AE380;
  if (!qword_1004AE380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE380);
  }

  return result;
}

unint64_t sub_1002695BC()
{
  result = qword_1004AE3A0;
  if (!qword_1004AE3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE3A0);
  }

  return result;
}

unint64_t sub_100269610()
{
  result = qword_1004AE3B0;
  if (!qword_1004AE3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE3B0);
  }

  return result;
}

unint64_t sub_10026969C()
{
  result = qword_1004AE3D0;
  if (!qword_1004AE3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE3D0);
  }

  return result;
}

unint64_t sub_100269758()
{
  result = qword_1004AE3E8;
  if (!qword_1004AE3E8)
  {
    sub_100003A94(&qword_1004AD3A8, &qword_1003FC3E8);
    sub_1002599A0(&qword_1004AE3F0, type metadata accessor for Config.Cryptex.Cryptex, &protocol conformance descriptor for Config.Cryptex.Cryptex);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE3E8);
  }

  return result;
}

unint64_t sub_100269814()
{
  result = qword_1004AE400;
  if (!qword_1004AE400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE400);
  }

  return result;
}

unint64_t sub_100269868()
{
  result = qword_1004AE420;
  if (!qword_1004AE420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE420);
  }

  return result;
}

unint64_t sub_1002698BC()
{
  result = qword_1004AE428;
  if (!qword_1004AE428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE428);
  }

  return result;
}

double ConfigLoader.init(computer:)@<D0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  *a2 = JSONDecoder.init()();
  sub_100003C88(a1, a2 + 8);
  *&result = 6;
  *(a2 + 48) = xmmword_1003F69C0;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 64) = 1;
  *(a2 + 88) = 0;
  return result;
}

uint64_t ConfigLoader.load(from:)(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  sub_1000039E8(&qword_1004AB540, &qword_1003F69E8);
  v2[7] = swift_task_alloc();
  v3 = type metadata accessor for DInitConfigSource(0);
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_100269C64, 0, 0);
}

uint64_t sub_100269C64()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];
  sub_10026C6C4(v0[5], v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100013F2C(v0[7], &qword_1004AB540, &qword_1003F69E8);
    v4 = swift_task_alloc();
    v0[13] = v4;
    *v4 = v0;
    v4[1] = sub_100269F98;

    return sub_10026E2A0();
  }

  else
  {
    sub_1002787C8(v0[7], v0[10], type metadata accessor for DInitConfigSource);
    v6 = swift_task_alloc();
    v0[11] = v6;
    *v6 = v0;
    v6[1] = sub_100269DE8;
    v7 = v0[10];

    return sub_10026C824(v7, _swiftEmptyArrayStorage);
  }
}

uint64_t sub_100269DE8(uint64_t a1)
{
  v3 = *v2;
  v3[2] = v2;
  v3[3] = a1;
  v3[4] = v1;
  v3[12] = v1;

  if (v1)
  {
    v4 = sub_10026A0F8;
  }

  else
  {
    v4 = sub_100269F04;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100269F04()
{
  sub_10026F33C(v0[10], type metadata accessor for DInitConfigSource);
  v1 = v0[3];

  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_100269F98(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 112) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_10026A208, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_10026A0F8()
{
  sub_10026F33C(v0[10], type metadata accessor for DInitConfigSource);
  v1 = v0[12];
  v2 = v0[5];
  v3 = sub_1000039E8(&qword_1004AE488, &qword_1004017F8);
  v4 = swift_allocBox();
  v6 = v5;
  v7 = *(v3 + 48);
  sub_10026C6C4(v2, v5);
  *(v6 + v7) = v1;
  sub_10026F2C8();
  swift_allocError();
  *v8 = v4;
  swift_willThrow();

  v9 = v0[1];

  return v9();
}

uint64_t sub_10026A208()
{
  v1 = v0[14];
  v2 = v0[5];
  v3 = sub_1000039E8(&qword_1004AE488, &qword_1004017F8);
  v4 = swift_allocBox();
  v6 = v5;
  v7 = *(v3 + 48);
  sub_10026C6C4(v2, v5);
  *(v6 + v7) = v1;
  sub_10026F2C8();
  swift_allocError();
  *v8 = v4;
  swift_willThrow();

  v9 = v0[1];

  return v9();
}

uint64_t Array<A>.version.getter(uint64_t a1)
{
  v2 = type metadata accessor for ConfigLoader.LoadingKey(0);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  if (!v6)
  {
    return 0;
  }

  v7 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v8 = *(v3 + 72);
  v9 = a1 + v7 + v8 * (v6 - 1);
  v10 = -v8;
  while (1)
  {
    sub_10027AE9C(v9, v5, type metadata accessor for ConfigLoader.LoadingKey);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      break;
    }

    --v6;
    sub_10026F33C(v5, type metadata accessor for ConfigLoader.LoadingKey);
    v9 += v10;
    if (!v6)
    {
      return 0;
    }
  }

  return *v5;
}

uint64_t ConfigOrigin.source.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 8) = v2;
  return result;
}

uint64_t sub_10026A4B4()
{
  if (*v0)
  {
    return 0x656372756F73;
  }

  else
  {
    return 0x50676E6964616F6CLL;
  }
}

uint64_t sub_10026A4F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x50676E6964616F6CLL && a2 == 0xEB00000000687461;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656372756F73 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_10026A5D0(uint64_t a1)
{
  v2 = sub_100278690();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10026A60C(uint64_t a1)
{
  v2 = sub_100278690();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ConfigOrigin.encode(to:)(void *a1)
{
  v4 = sub_1000039E8(&qword_1004AE498, &qword_100401808);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - v6;
  v8 = *v1;
  v10 = v1[1];
  sub_10000E2A8(a1, a1[3]);
  sub_100278690();

  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = v8;
  v11 = 0;
  sub_1000039E8(&qword_1004AE4A8, &qword_100401810);
  sub_1002786E4(&qword_1004AE4B0, &qword_1004AE4B8, &protocol conformance descriptor for ConfigLoader.LoadingKey, &protocol conformance descriptor for <A> [A]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  if (!v2)
  {
    v12 = v10;
    v11 = 1;
    sub_1001B54D4();

    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

Swift::Int ConfigOrigin.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_1001D1E94(v3, v1);
  JSON.hash(into:)(v3);
  return Hasher._finalize()();
}

uint64_t ConfigOrigin.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1000039E8(&qword_1004AE4C0, &qword_100401818);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - v7;
  sub_10000E2A8(a1, a1[3]);
  sub_100278690();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100003C3C(a1);
  }

  sub_1000039E8(&qword_1004AE4A8, &qword_100401810);
  v13 = 0;
  sub_1002786E4(&qword_1004AE4C8, &qword_1004AE4D0, &protocol conformance descriptor for ConfigLoader.LoadingKey, &protocol conformance descriptor for <A> [A]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v9 = v14;
  v13 = 1;
  sub_1001B5418();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v10 = v14;
  *a2 = v9;
  a2[1] = v10;

  sub_100003C3C(a1);
}

uint64_t ConfigOrigin.init(loadingPath:source:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v3 = *a2;
  *a3 = result;
  a3[1] = v3;
  return result;
}

Swift::Int sub_10026AB54()
{
  Hasher.init(_seed:)();
  sub_1001D1E94(v2, *v0);
  JSON.hash(into:)(v2);
  return Hasher._finalize()();
}

uint64_t ConfigOrigin.isSimple.getter()
{
  v1 = type metadata accessor for ConfigLoader.LoadingKey(0);
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v16 - v6;
  v8 = sub_1000039E8(&qword_1004AE4D8, &qword_100401820);
  result = __chkstk_darwin(v8 - 8);
  v11 = &v16 - v10;
  v12 = *v0;
  v13 = *(*v0 + 16);
  if (v13)
  {
    v14 = 0;
    while (v14 < *(v12 + 16))
    {
      sub_10027AE9C(v12 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v14, v7, type metadata accessor for ConfigLoader.LoadingKey);
      sub_10027AE9C(v7, v5, type metadata accessor for ConfigLoader.LoadingKey);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        sub_1002787C8(v7, v11, type metadata accessor for ConfigLoader.LoadingKey);
        v15 = 0;
        goto LABEL_8;
      }

      ++v14;
      sub_10026F33C(v5, type metadata accessor for ConfigLoader.LoadingKey);
      result = sub_10026F33C(v7, type metadata accessor for ConfigLoader.LoadingKey);
      if (v13 == v14)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:
    v15 = 1;
LABEL_8:
    (*(v2 + 56))(v11, v15, 1, v1);
    sub_100013F2C(v11, &qword_1004AE4D8, &qword_100401820);
    return v15;
  }

  return result;
}

BOOL ConfigLoader.LoadingKey.isIndex.getter()
{
  v1 = type metadata accessor for ConfigLoader.LoadingKey(0);
  __chkstk_darwin(v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10027AE9C(v0, v3, type metadata accessor for ConfigLoader.LoadingKey);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 2)
  {
    sub_10026F33C(v3, type metadata accessor for ConfigLoader.LoadingKey);
  }

  return EnumCaseMultiPayload == 2;
}

uint64_t LoaderInjected.wrappedValue.getter@<X0>(uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Optional();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, v2, v4);
}

uint64_t LoaderInjected.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Optional();
  v5 = *(*(v4 - 8) + 40);

  return v5(v2, a1, v4);
}

uint64_t LoaderInjected.hash(into:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Optional();

  return Optional<A>.hash(into:)();
}

Swift::Int LoaderInjected.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for Optional();
  Optional<A>.hash(into:)();
  return Hasher._finalize()();
}

uint64_t LoaderInjected.init(wrappedValue:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = type metadata accessor for Optional();
  v6 = *(*(v5 - 8) + 32);

  return v6(a3, a1, v5);
}

Swift::Int sub_10026B104(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  LoaderInjected.hash(into:)(v4, a2);
  return Hasher._finalize()();
}

uint64_t sub_10026B14C()
{
  v1 = 0x6D6172766ELL;
  v2 = 0x7865646E69;
  if (*v0 != 2)
  {
    v2 = 0x6E6F6973726576;
  }

  if (*v0)
  {
    v1 = 0x656372756F73;
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

uint64_t sub_10026B1BC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10027C76C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10026B1E4(uint64_t a1)
{
  v2 = sub_100278830();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10026B220(uint64_t a1)
{
  v2 = sub_100278830();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10026B26C(uint64_t a1)
{
  v2 = sub_10027892C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10026B2A8(uint64_t a1)
{
  v2 = sub_10027892C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10026B2E4(uint64_t a1)
{
  v2 = sub_1002789D4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10026B320(uint64_t a1)
{
  v2 = sub_1002789D4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10026B35C(uint64_t a1)
{
  v2 = sub_100278980();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10026B398(uint64_t a1)
{
  v2 = sub_100278980();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10026B3D4(uint64_t a1)
{
  v2 = sub_100278884();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10026B410(uint64_t a1)
{
  v2 = sub_100278884();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ConfigLoader.LoadingKey.encode(to:)(void *a1)
{
  v2 = sub_1000039E8(&qword_1004AE4E0, &qword_100401828);
  v38 = *(v2 - 8);
  v39 = v2;
  __chkstk_darwin(v2);
  v37 = &v28 - v3;
  v36 = sub_1000039E8(&qword_1004AE4E8, &qword_100401830);
  v34 = *(v36 - 8);
  __chkstk_darwin(v36);
  v32 = &v28 - v4;
  v35 = sub_1000039E8(&qword_1004AE4F0, &qword_100401838);
  v33 = *(v35 - 8);
  __chkstk_darwin(v35);
  v31 = &v28 - v5;
  v30 = type metadata accessor for DInitConfigSource(0);
  __chkstk_darwin(v30);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000039E8(&qword_1004AE4F8, &qword_100401840);
  v29 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v28 - v9;
  v11 = type metadata accessor for ConfigLoader.LoadingKey(0);
  __chkstk_darwin(v11);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000039E8(&qword_1004AE500, &qword_100401848);
  v41 = *(v14 - 8);
  v42 = v14;
  __chkstk_darwin(v14);
  v16 = &v28 - v15;
  sub_10000E2A8(a1, a1[3]);
  sub_100278830();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_10027AE9C(v40, v13, type metadata accessor for ConfigLoader.LoadingKey);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v46 = 2;
      sub_10027892C();
      v20 = v32;
      v19 = v42;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v21 = v36;
      KeyedEncodingContainer.encode(_:forKey:)();
      v22 = v34;
    }

    else
    {
      v27 = *v13;
      v48 = 3;
      sub_100278884();
      v20 = v37;
      v19 = v42;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v47 = v27;
      sub_1002788D8();
      v21 = v39;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v22 = v38;
    }

    (*(v22 + 8))(v20, v21);
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      sub_1002787C8(v13, v7, type metadata accessor for DInitConfigSource);
      v45 = 1;
      sub_100278980();
      v23 = v31;
      v24 = v42;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      sub_100278780(&qword_1004AE530, type metadata accessor for DInitConfigSource, &protocol conformance descriptor for DInitConfigSource);
      v25 = v35;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v33 + 8))(v23, v25);
      sub_10026F33C(v7, type metadata accessor for DInitConfigSource);
      return (*(v41 + 8))(v16, v24);
    }

    v18 = *v13;
    v44 = 0;
    sub_1002789D4();
    v19 = v42;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v43 = v18;
    sub_100278A28();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v29 + 8))(v10, v8);
  }

  return (*(v41 + 8))(v16, v19);
}

void ConfigLoader.LoadingKey.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DInitConfigSource(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ConfigLoader.LoadingKey(0);
  __chkstk_darwin(v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10027AE9C(v2, v9, type metadata accessor for ConfigLoader.LoadingKey);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v11 = *v9;
      v12 = 2;
    }

    else
    {
      v11 = *v9;
      v12 = 3;
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      sub_1002787C8(v9, v6, type metadata accessor for DInitConfigSource);
      Hasher._combine(_:)(1uLL);
      DInitConfigSource.hash(into:)(a1);
      sub_10026F33C(v6, type metadata accessor for DInitConfigSource);
      return;
    }

    v11 = *v9;
    v12 = 0;
  }

  Hasher._combine(_:)(v12);
  Hasher._combine(_:)(v11);
}

Swift::Int ConfigLoader.LoadingKey.hashValue.getter()
{
  Hasher.init(_seed:)();
  ConfigLoader.LoadingKey.hash(into:)(v1);
  return Hasher._finalize()();
}

uint64_t ConfigLoader.LoadingKey.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a2;
  v3 = sub_1000039E8(&qword_1004AE548, &qword_100401850);
  v4 = *(v3 - 8);
  v62 = v3;
  v63 = v4;
  __chkstk_darwin(v3);
  v70 = &v52 - v5;
  v69 = sub_1000039E8(&qword_1004AE550, &qword_100401858);
  v60 = *(v69 - 8);
  __chkstk_darwin(v69);
  v65 = &v52 - v6;
  v61 = sub_1000039E8(&qword_1004AE558, &qword_100401860);
  v59 = *(v61 - 8);
  __chkstk_darwin(v61);
  v68 = &v52 - v7;
  v58 = sub_1000039E8(&qword_1004AE560, &qword_100401868);
  v57 = *(v58 - 8);
  __chkstk_darwin(v58);
  v64 = &v52 - v8;
  v67 = sub_1000039E8(&qword_1004AE568, &unk_100401870);
  v72 = *(v67 - 8);
  __chkstk_darwin(v67);
  v10 = &v52 - v9;
  v66 = type metadata accessor for ConfigLoader.LoadingKey(0);
  v11 = __chkstk_darwin(v66);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = (&v52 - v15);
  v17 = __chkstk_darwin(v14);
  v19 = &v52 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = &v52 - v21;
  __chkstk_darwin(v20);
  v24 = &v52 - v23;
  v25 = a1[3];
  v74 = a1;
  sub_10000E2A8(a1, v25);
  sub_100278830();
  v26 = v73;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v26)
  {
    v53 = v22;
    v54 = v16;
    v56 = v19;
    v55 = v13;
    v28 = v68;
    v27 = v69;
    v73 = v24;
    v30 = v70;
    v29 = v71;
    v31 = v67;
    v32 = KeyedDecodingContainer.allKeys.getter();
    v33 = (2 * *(v32 + 16)) | 1;
    v75 = v32;
    v76 = v32 + 32;
    v77 = 0;
    v78 = v33;
    v34 = sub_100191000();
    if (v34 != 4 && v77 == v78 >> 1)
    {
      if (v34 > 1u)
      {
        if (v34 == 2)
        {
          v79 = 2;
          sub_10027892C();
          v42 = v65;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v48 = KeyedDecodingContainer.decode(_:forKey:)();
          (*(v60 + 8))(v42, v27);
          (*(v72 + 8))(v10, v31);
          swift_unknownObjectRelease();
          v37 = v54;
          *v54 = v48;
          goto LABEL_13;
        }

        v79 = 3;
        sub_100278884();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        sub_100278A7C();
        v46 = v62;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v47 = v72;
        (*(v63 + 8))(v30, v46);
        (*(v47 + 8))(v10, v31);
        swift_unknownObjectRelease();
        v50 = v55;
        *v55 = v79;
        swift_storeEnumTagMultiPayload();
        v49 = v50;
      }

      else
      {
        if (!v34)
        {
          v79 = 0;
          sub_1002789D4();
          v35 = v64;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          sub_100278AD0();
          v36 = v58;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          (*(v57 + 8))(v35, v36);
          (*(v72 + 8))(v10, v31);
          swift_unknownObjectRelease();
          v37 = v53;
          *v53 = v79;
LABEL_13:
          swift_storeEnumTagMultiPayload();
          v49 = v37;
          goto LABEL_14;
        }

        v79 = 1;
        sub_100278980();
        v43 = v28;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        type metadata accessor for DInitConfigSource(0);
        sub_100278780(&qword_1004AE578, type metadata accessor for DInitConfigSource, &protocol conformance descriptor for DInitConfigSource);
        v44 = v56;
        v45 = v61;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        (*(v59 + 8))(v43, v45);
        (*(v72 + 8))(v10, v31);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v49 = v44;
      }

LABEL_14:
      v51 = v73;
      sub_1002787C8(v49, v73, type metadata accessor for ConfigLoader.LoadingKey);
      sub_1002787C8(v51, v29, type metadata accessor for ConfigLoader.LoadingKey);
      return sub_100003C3C(v74);
    }

    v38 = type metadata accessor for DecodingError();
    swift_allocError();
    v40 = v39;
    sub_1000039E8(&qword_1004A7168, &unk_100376CB0);
    *v40 = v66;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v38 - 8) + 104))(v40, enum case for DecodingError.typeMismatch(_:), v38);
    swift_willThrow();
    (*(v72 + 8))(v10, v31);
    swift_unknownObjectRelease();
  }

  return sub_100003C3C(v74);
}

Swift::Int sub_10026C630()
{
  Hasher.init(_seed:)();
  ConfigLoader.LoadingKey.hash(into:)(v1);
  return Hasher._finalize()();
}

__n128 ConfigLoader.NetworkConfig.init(retries:backoff:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a2 + 32);
  *a3 = a1;
  result = *a2;
  v5 = *(a2 + 16);
  *(a3 + 8) = *a2;
  *(a3 + 24) = v5;
  *(a3 + 40) = v3;
  return result;
}

uint64_t sub_10026C6C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000039E8(&qword_1004AB540, &qword_1003F69E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ConfigLoader.networkConfig.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + 48);
  v3 = *(v1 + 56);
  v5 = *(v1 + 64);
  v6 = *(v1 + 72);
  v7 = *(v1 + 80);
  v8 = *(v1 + 88);
  result = sub_100278B24(v3, v5, v6, v7, v8);
  *a1 = v4;
  *(a1 + 8) = v3;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  return result;
}

__n128 ConfigLoader.init(computer:networkConfig:)@<Q0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  *a3 = JSONDecoder.init()();
  sub_100003C88(a1, a3 + 8);
  v6 = *(a2 + 16);
  *(a3 + 48) = *a2;
  *(a3 + 64) = v6;
  result = *(a2 + 25);
  *(a3 + 73) = result;
  return result;
}

uint64_t sub_10026C824(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = type metadata accessor for URL.DirectoryHint();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  sub_1000039E8(&qword_1004A6D30, &unk_100376820);
  v3[9] = swift_task_alloc();
  v5 = type metadata accessor for FilePath();
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v6 = type metadata accessor for URL();
  v3[15] = v6;
  v3[16] = *(v6 - 8);
  v3[17] = swift_task_alloc();
  v7 = type metadata accessor for String.Encoding();
  v3[18] = v7;
  v3[19] = *(v7 - 8);
  v3[20] = swift_task_alloc();
  v3[21] = type metadata accessor for DInitConfigSource(0);
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();

  return _swift_task_switch(sub_10026CA94, 0, 0);
}

uint64_t sub_10026CA94()
{
  v80 = v0;
  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v1 = v0[24];
  v2 = v0[3];
  v3 = type metadata accessor for Logger();
  v0[25] = sub_1000270B4(v3, qword_1004B00F8);
  sub_10027AE9C(v2, v1, type metadata accessor for DInitConfigSource);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[24];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v79[0] = v9;
    *v8 = 136315138;
    v10 = DInitConfigSource.description.getter();
    v12 = v11;
    sub_10026F33C(v7, type metadata accessor for DInitConfigSource);
    v13 = sub_1000026C0(v10, v12, v79);

    *(v8 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Loading configuration from %s", v8, 0xCu);
    sub_100003C3C(v9);
  }

  else
  {

    sub_10026F33C(v7, type metadata accessor for DInitConfigSource);
  }

  sub_10027AE9C(v0[3], v0[23], type metadata accessor for DInitConfigSource);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload != 3)
    {
      if (EnumCaseMultiPayload == 4)
      {
        v21 = sub_10026FD30(*v0[23], *(v0[23] + 8), *(v0[23] + 16), *(v0[23] + 24));
        v22 = v23;
      }

      else
      {
        v47 = [objc_opt_self() fileHandleWithStandardInput];
        v21 = NSFileHandle.readToEnd()();
        v49 = v48;

        if (v49 >> 60 == 15)
        {
          v21 = 0;
          v22 = 0xC000000000000000;
        }

        else
        {
          v22 = v49;
        }
      }

LABEL_32:
      v0[35] = v21;
      v0[36] = v22;
      sub_1001B5418();
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();
      v60 = v0[4];
      v79[0] = v0[2];
      v61 = sub_100274324(v79, v60);
      v0[37] = v61;
      v62 = v61;
      v63 = v0[22];
      v64 = v0[3];

      sub_10027AE9C(v64, v63, type metadata accessor for DInitConfigSource);
      v65 = Logger.logObject.getter();
      v66 = static os_log_type_t.default.getter();
      v67 = os_log_type_enabled(v65, v66);
      v68 = v0[22];
      if (v67)
      {
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        v79[0] = v70;
        *v69 = 136315138;
        v71 = DInitConfigSource.description.getter();
        v73 = v72;
        sub_10026F33C(v68, type metadata accessor for DInitConfigSource);
        v74 = sub_1000026C0(v71, v73, v79);

        *(v69 + 4) = v74;
        _os_log_impl(&_mh_execute_header, v65, v66, "Successfully loaded configuration from %s", v69, 0xCu);
        sub_100003C3C(v70);
      }

      else
      {

        sub_10026F33C(v68, type metadata accessor for DInitConfigSource);
      }

      v75 = swift_task_alloc();
      v0[38] = v75;
      *v75 = v0;
      v75[1] = sub_10026DE64;

      return sub_100270898(v62);
    }

    v40 = v0[23];
    v42 = *v40;
    v41 = v40[1];
    v0[30] = v41;
    v43 = swift_task_alloc();
    v0[31] = v43;
    *v43 = v0;
    v43[1] = sub_10026D90C;

    return sub_10035823C(v42, v41);
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v25 = v0[13];
      v24 = v0[14];
      v26 = v0[10];
      v27 = v0[11];
      (*(v27 + 32))(v24, v0[23], v26);
      v28 = *(v27 + 16);
      v28(v25, v24, v26);
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.debug.getter();
      v31 = os_log_type_enabled(v29, v30);
      v32 = v0[13];
      v34 = v0[10];
      v33 = v0[11];
      if (v31)
      {
        v35 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        v79[0] = v76;
        *v35 = 136315138;
        sub_100278780(&qword_1004AA058, &type metadata accessor for FilePath, &protocol conformance descriptor for FilePath);
        v36 = dispatch thunk of CustomStringConvertible.description.getter();
        v78 = v28;
        v38 = v37;
        v77 = *(v33 + 8);
        v77(v32, v34);
        v39 = sub_1000026C0(v36, v38, v79);
        v28 = v78;

        *(v35 + 4) = v39;
        _os_log_impl(&_mh_execute_header, v29, v30, "Loading raw data of file at %s", v35, 0xCu);
        sub_100003C3C(v76);
      }

      else
      {

        v77 = *(v33 + 8);
        v77(v32, v34);
      }

      v50 = v0[15];
      v51 = v0[16];
      v52 = v0[12];
      v53 = v0[9];
      v55 = v0[7];
      v54 = v0[8];
      v56 = v0[6];
      v28(v52, v0[14], v0[10]);
      (*(v55 + 104))(v54, enum case for URL.DirectoryHint.inferFromPath(_:), v56);
      sub_1001746A8(v52, v54, v53);
      result = (*(v51 + 48))(v53, 1, v50);
      if (result == 1)
      {
        __break(1u);
        return result;
      }

      v21 = Data.init(contentsOf:options:)();
      v22 = v57;
      v58 = v0[14];
      v59 = v0[10];
      (*(v0[16] + 8))(v0[9], v0[15]);
      v77(v58, v59);
      goto LABEL_32;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v16 = v0[19];
      v15 = v0[20];
      v17 = v0[18];
      static String.Encoding.utf8.getter();
      v18 = String.data(using:allowLossyConversion:)();
      v20 = v19;

      (*(v16 + 8))(v15, v17);
      if (v20 >> 60 == 15)
      {
        v21 = 0;
      }

      else
      {
        v21 = v18;
      }

      if (v20 >> 60 == 15)
      {
        v22 = 0xC000000000000000;
      }

      else
      {
        v22 = v20;
      }

      goto LABEL_32;
    }

    (*(v0[16] + 32))(v0[17], v0[23], v0[15]);
    v45 = swift_task_alloc();
    v0[26] = v45;
    *v45 = v0;
    v45[1] = sub_10026D498;
    v46 = v0[17];

    return sub_10026F39C(v46);
  }
}

uint64_t sub_10026D498(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 216) = v2;

  if (v2)
  {
    v7 = sub_10026E098;
  }

  else
  {
    *(v6 + 224) = a2;
    *(v6 + 232) = a1;
    v7 = sub_10026D5CC;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10026D5CC()
{
  v23 = v0;
  (*(v0[16] + 8))(v0[17], v0[15]);
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[27];
  v0[35] = v1;
  v0[36] = v2;
  sub_1001B5418();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v3)
  {
    sub_100031928(v1, v2);

    v6 = v0[1];

    return v6();
  }

  else
  {
    v4 = v0[4];
    v22[0] = v0[2];
    v5 = sub_100274324(v22, v4);
    v0[37] = v5;
    v8 = v5;
    v9 = v0[22];
    v10 = v0[3];

    sub_10027AE9C(v10, v9, type metadata accessor for DInitConfigSource);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    v13 = os_log_type_enabled(v11, v12);
    v14 = v0[22];
    if (v13)
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v22[0] = v16;
      *v15 = 136315138;
      v17 = DInitConfigSource.description.getter();
      v19 = v18;
      sub_10026F33C(v14, type metadata accessor for DInitConfigSource);
      v20 = sub_1000026C0(v17, v19, v22);

      *(v15 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v11, v12, "Successfully loaded configuration from %s", v15, 0xCu);
      sub_100003C3C(v16);
    }

    else
    {

      sub_10026F33C(v14, type metadata accessor for DInitConfigSource);
    }

    v21 = swift_task_alloc();
    v0[38] = v21;
    *v21 = v0;
    v21[1] = sub_10026DE64;

    return sub_100270898(v8);
  }
}

uint64_t sub_10026D90C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 256) = v2;

  if (v2)
  {
    v7 = sub_10026DD70;
  }

  else
  {

    *(v6 + 264) = a2;
    *(v6 + 272) = a1;
    v7 = sub_10026DA48;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10026DA48()
{
  v23 = v0;
  v2 = v0[33];
  v1 = v0[34];
  v3 = v0[32];
  v0[35] = v1;
  v0[36] = v2;
  sub_1001B5418();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v3)
  {
    sub_100031928(v1, v2);

    v6 = v0[1];

    return v6();
  }

  else
  {
    v4 = v0[4];
    v22[0] = v0[2];
    v5 = sub_100274324(v22, v4);
    v0[37] = v5;
    v8 = v5;
    v9 = v0[22];
    v10 = v0[3];

    sub_10027AE9C(v10, v9, type metadata accessor for DInitConfigSource);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    v13 = os_log_type_enabled(v11, v12);
    v14 = v0[22];
    if (v13)
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v22[0] = v16;
      *v15 = 136315138;
      v17 = DInitConfigSource.description.getter();
      v19 = v18;
      sub_10026F33C(v14, type metadata accessor for DInitConfigSource);
      v20 = sub_1000026C0(v17, v19, v22);

      *(v15 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v11, v12, "Successfully loaded configuration from %s", v15, 0xCu);
      sub_100003C3C(v16);
    }

    else
    {

      sub_10026F33C(v14, type metadata accessor for DInitConfigSource);
    }

    v21 = swift_task_alloc();
    v0[38] = v21;
    *v21 = v0;
    v21[1] = sub_10026DE64;

    return sub_100270898(v8);
  }
}

uint64_t sub_10026DD70()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10026DE64(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 312) = v1;

  if (v1)
  {
    v5 = sub_10026E19C;
  }

  else
  {
    *(v4 + 320) = a1;
    v5 = sub_10026DF8C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10026DF8C()
{
  v1 = v0[36];
  v2 = v0[35];

  sub_100031928(v2, v1);

  v3 = v0[1];
  v4 = v0[40];

  return v3(v4);
}

uint64_t sub_10026E098()
{
  (*(v0[16] + 8))(v0[17], v0[15]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10026E19C()
{
  v1 = v0[36];
  v2 = v0[35];

  sub_100031928(v2, v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_10026E2A0()
{
  v1[2] = v0;
  v1[3] = *(type metadata accessor for Config(0) - 8);
  v1[4] = swift_task_alloc();

  return _swift_task_switch(sub_10026E35C, 0, 0);
}

uint64_t sub_10026E35C()
{
  v1 = v0[2];
  v2 = v1[4];
  v3 = v1[5];
  sub_10000E2A8(v1 + 1, v2);
  if ((*(v3 + 200))(v2, v3))
  {
    if (qword_1004A9F20 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000270B4(v4, qword_1004B00F8);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Attempting to load configuration from NVRAM", v7, 2u);
    }

    v8 = swift_task_alloc();
    v0[5] = v8;
    *v8 = v0;
    v8[1] = sub_10026E6A4;

    return sub_100271790();
  }

  else
  {
    v10 = v0[2];
    v11 = v10[4];
    v12 = v10[5];
    sub_10000E2A8(v10 + 1, v11);
    if ((*(v12 + 144))(v11, v12))
    {

      v13 = swift_task_alloc();
      v0[7] = v13;
      *v13 = v0;
      v13[1] = sub_10026EA64;

      return sub_100272348();
    }

    else
    {
      v14 = v0[2];
      v15 = v14[4];
      v16 = v14[5];
      sub_10000E2A8(v14 + 1, v15);
      if ((*(v16 + 136))(v15, v16))
      {

        v17 = swift_task_alloc();
        v0[9] = v17;
        *v17 = v0;
        v17[1] = sub_10026ED78;

        return sub_100273530();
      }

      else
      {
        sub_10026F2C8();
        swift_allocError();
        *v18 = 0x8000000000000000;
        swift_willThrow();

        v19 = v0[1];

        return v19();
      }
    }
  }
}

uint64_t sub_10026E6A4(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 48) = a1;

    return _swift_task_switch(sub_10026E7F8, 0, 0);
  }
}

uint64_t sub_10026E7F8()
{
  v1 = v0[6];
  if (v1)
  {
    v0[11] = v1;
    v2 = swift_task_alloc();
    v0[12] = v2;
    *v2 = v0;
    v2[1] = sub_10026EFE0;

    return sub_100270898(v1);
  }

  else
  {
    v4 = v0[2];
    v5 = v4[4];
    v6 = v4[5];
    sub_10000E2A8(v4 + 1, v5);
    if ((*(v6 + 144))(v5, v6))
    {

      v7 = swift_task_alloc();
      v0[7] = v7;
      *v7 = v0;
      v7[1] = sub_10026EA64;

      return sub_100272348();
    }

    else
    {
      v8 = v0[2];
      v9 = v8[4];
      v10 = v8[5];
      sub_10000E2A8(v8 + 1, v9);
      if ((*(v10 + 136))(v9, v10))
      {

        v11 = swift_task_alloc();
        v0[9] = v11;
        *v11 = v0;
        v11[1] = sub_10026ED78;

        return sub_100273530();
      }

      else
      {
        sub_10026F2C8();
        swift_allocError();
        *v12 = 0x8000000000000000;
        swift_willThrow();

        v13 = v0[1];

        return v13();
      }
    }
  }
}

uint64_t sub_10026EA64(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 64) = a1;

    return _swift_task_switch(sub_10026EBB8, 0, 0);
  }
}

uint64_t sub_10026EBB8()
{
  v1 = v0[8];
  if (v1)
  {
    v0[11] = v1;
    v2 = swift_task_alloc();
    v0[12] = v2;
    *v2 = v0;
    v2[1] = sub_10026EFE0;

    return sub_100270898(v1);
  }

  else
  {
    v4 = v0[2];
    v5 = v4[4];
    v6 = v4[5];
    sub_10000E2A8(v4 + 1, v5);
    if ((*(v6 + 136))(v5, v6))
    {

      v7 = swift_task_alloc();
      v0[9] = v7;
      *v7 = v0;
      v7[1] = sub_10026ED78;

      return sub_100273530();
    }

    else
    {
      sub_10026F2C8();
      swift_allocError();
      *v8 = 0x8000000000000000;
      swift_willThrow();

      v9 = v0[1];

      return v9();
    }
  }
}

uint64_t sub_10026ED78(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 80) = a1;

    return _swift_task_switch(sub_10026EECC, 0, 0);
  }
}

uint64_t sub_10026EECC(uint64_t a1)
{
  v2 = v1[10];
  if (v2)
  {
    v1[11] = v2;
    v3 = swift_task_alloc();
    v1[12] = v3;
    *v3 = v1;
    v3[1] = sub_10026EFE0;

    return sub_100270898(v2);
  }

  else
  {
    sub_10026F2C8();
    swift_allocError();
    *v5 = 0x8000000000000000;
    swift_willThrow();

    v6 = v1[1];

    return v6();
  }
}

uint64_t sub_10026EFE0(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 104) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_10026F150, 0, 0);
  }
}

uint64_t sub_10026F150()
{
  v1 = v0[13];
  if (*(v1 + 16))
  {
    v2 = v0[4];
    v3 = *(v0[3] + 80);
    v4 = (v3 + 32) & ~v3;
    sub_10027AE9C(v1 + v4, v2, type metadata accessor for Config);
    sub_100271314(v2);
    result = swift_isUniquelyReferenced_nonNull_native();
    v6 = v0[13];
    if (result)
    {
      if (*(v6 + 16))
      {
LABEL_4:
        sub_10027CCFC(v0[4], v6 + v4);

        v7 = v0[1];

        return v7(v6);
      }
    }

    else
    {
      result = sub_1001EF670(v0[13]);
      v6 = result;
      if (*(result + 16))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
    return result;
  }

  sub_10026F2C8();
  swift_allocError();
  *v8 = 0x8000000000000000;
  swift_willThrow();

  v9 = v0[1];

  return v9();
}

unint64_t sub_10026F2C8()
{
  result = qword_1004AE490;
  if (!qword_1004AE490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE490);
  }

  return result;
}

uint64_t sub_10026F33C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10026F39C(uint64_t a1)
{
  v2[22] = a1;
  v2[23] = v1;
  v3 = type metadata accessor for URLRequest();
  v2[24] = v3;
  v2[25] = *(v3 - 8);
  v2[26] = swift_task_alloc();
  v4 = type metadata accessor for URL();
  v2[27] = v4;
  v2[28] = *(v4 - 8);
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();

  return _swift_task_switch(sub_10026F4C4, 0, 0);
}

uint64_t sub_10026F4C4()
{
  v51 = v0;
  if (qword_1004A9DF0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = *(*static RealComputer.shared + 208);

  v3 = v1(v2);
  v5 = v4;

  v6 = *(*static RealComputer.shared + 216);

  v8 = v6(v7);
  v10 = v9;

  v11 = *(*static RealComputer.shared + 312);

  v13 = v11(v12);
  v15 = v14;

  *(v0 + 16) = v3;
  *(v0 + 24) = v5 & 1;
  *(v0 + 32) = v8;
  *(v0 + 40) = v10;
  *(v0 + 48) = v13;
  *(v0 + 56) = v15;
  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v16 = *(v0 + 240);
  v18 = *(v0 + 216);
  v17 = *(v0 + 224);
  v19 = *(v0 + 176);
  v20 = type metadata accessor for Logger();
  sub_1000270B4(v20, qword_1004B00F8);
  v21 = *(v17 + 16);
  v21(v16, v19, v18);

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.info.getter();

  v24 = os_log_type_enabled(v22, v23);
  v25 = *(v0 + 240);
  v27 = *(v0 + 216);
  v26 = *(v0 + 224);
  if (v24)
  {
    v55 = v23;
    v28 = swift_slowAlloc();
    v50[0] = swift_slowAlloc();
    *v28 = 136315394;

    log = v22;
    v29 = DInitDeviceIdentity.description.getter();
    v49 = v21;
    v31 = v30;

    v32 = sub_1000026C0(v29, v31, v50);

    *(v28 + 4) = v32;
    *(v28 + 12) = 2080;
    sub_100278780(&qword_1004AAE30, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v33 = dispatch thunk of CustomStringConvertible.description.getter();
    v35 = v34;
    (*(v26 + 8))(v25, v27);
    v36 = sub_1000026C0(v33, v35, v50);
    v21 = v49;

    *(v28 + 14) = v36;
    _os_log_impl(&_mh_execute_header, log, v55, "Requesting darwin-init configuration for %s from %s.", v28, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v26 + 8))(v25, v27);
  }

  v37 = *(v0 + 232);
  v38 = *(v0 + 216);
  v39 = *(v0 + 176);
  v40 = *(v0 + 184);
  v41 = *(v40 + 48);
  v42 = *(v40 + 88);
  v43 = *(v40 + 72);
  *(v0 + 112) = *(v40 + 56);
  *(v0 + 128) = v43;
  *(v0 + 144) = v42;
  v44 = *(v0 + 48);
  *(v0 + 80) = *(v0 + 32);
  *(v0 + 96) = v44;
  *(v0 + 64) = *(v0 + 16);
  v21(v37, v39, v38);
  URLRequest.init(url:cachePolicy:timeoutInterval:)();
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  sub_10027CADC();
  dispatch thunk of JSONEncoder.encode<A>(_:)();

  URLRequest.httpBody.setter();
  URLRequest.httpMethod.setter();
  v45 = swift_task_alloc();
  *(v0 + 248) = v45;
  *v45 = v0;
  v45[1] = sub_10026FABC;
  v46 = *(v0 + 208);
  v54 = 1;
  v53 = 0;

  return sub_1001AA578(v46, v41, 0x8AC7230489E80000, 0, 0, v0 + 112, 1, 0);
}

uint64_t sub_10026FABC(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = *v4;
  *(*v4 + 256) = v3;

  if (v3)
  {
    v9 = sub_10026FC98;
  }

  else
  {

    *(v8 + 264) = a2;
    *(v8 + 272) = a1;
    v9 = sub_10026FBF8;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_10026FBF8()
{
  (*(v0[25] + 8))(v0[26], v0[24]);

  v1 = v0[1];
  v3 = v0[33];
  v2 = v0[34];

  return v1(v2, v3);
}

uint64_t sub_10026FC98()
{
  (*(v0[25] + 8))(v0[26], v0[24]);

  v1 = v0[1];

  return v1();
}

id sub_10026FD30(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v82 = a4;
  v81 = a3;
  v90 = a1;
  v91 = a2;
  v89 = type metadata accessor for DispatchTimeInterval();
  v88 = *(v89 - 1);
  __chkstk_darwin(v89);
  v85 = (&v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v87 = type metadata accessor for DispatchTime();
  v86 = *(v87 - 8);
  v5 = __chkstk_darwin(v87);
  v83 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v84 = &v76 - v7;
  v96 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v8 = *(v96 - 1);
  __chkstk_darwin(v96);
  v10 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v11);
  v12 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v12 - 8);
  v13 = sub_10000E014();
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100278780(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000039E8(&unk_1004A7850, &qword_100376280);
  sub_10003DEE8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v8 + 104))(v10, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v96);
  v14 = v13;
  v16 = v90;
  v15 = v91;
  v92 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v96 = dispatch_semaphore_create(0);
  v95 = xmmword_1003780A0;
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  v18 = (v17 + 16);
  String.utf8CString.getter();
  v19 = remote_device_type_parse();

  if (!v19)
  {
    sub_10027CC54();
    swift_allocError();
    *v35 = v16;
    v35[1] = v15;
    swift_willThrow();

LABEL_22:
    sub_100031928(v95, *(&v95 + 1));

    return v14;
  }

  v20 = swift_allocObject();
  v20[16]._Value = 0;
  v21 = swift_allocObject();
  v22 = v92;
  v21[2] = v92;
  v21[3] = v20;
  v23 = v96;
  v21[4] = v17;
  v21[5] = v23;
  aBlock[4] = sub_10027CC30;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1002740A0;
  aBlock[3] = &unk_1004918E0;
  v24 = _Block_copy(aBlock);
  v25 = v22;
  v78 = v20;

  v26 = v23;

  v77 = v25;
  started = remote_device_start_browsing();
  _Block_release(v24);
  v27 = v83;
  static DispatchTime.now()();
  v28 = v85;
  *v85 = 120;
  v29 = v88;
  v30 = v89;
  (*(v88 + 104))(v28, enum case for DispatchTimeInterval.seconds(_:), v89);
  v31 = v84;
  + infix(_:_:)();
  (*(v29 + 8))(v28, v30);
  v32 = *(v86 + 8);
  v33 = v87;
  v32(v27, v87);
  v89 = v26;
  LOBYTE(v26) = OS_dispatch_semaphore.wait(timeout:)();
  v32(v31, v33);
  if (v26)
  {
    swift_beginAccess();
    v34 = atomic_flag_test_and_set_explicit(v20 + 16, memory_order_relaxed);
    swift_endAccess();
    if (!v34)
    {
      if (qword_1004A9F20 != -1)
      {
        swift_once();
      }

      v46 = type metadata accessor for Logger();
      sub_1000270B4(v46, qword_1004B00F8);
      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.error.getter();
      v49 = os_log_type_enabled(v47, v48);
      v50 = v91;
      if (v49)
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        _os_log_impl(&_mh_execute_header, v47, v48, "timeout waiting for remote device to show up", v51, 2u);
      }

      type metadata accessor for DInitConfigSource(0);
      v52 = swift_allocBox();
      *v53 = v90;
      v53[1] = v50;
      v54 = v82;
      v53[2] = v81;
      v53[3] = v54;
      swift_storeEnumTagMultiPayload();
      sub_10026F2C8();
      swift_allocError();
      *v55 = v52 | 0x6000000000000000;
      swift_willThrow();

LABEL_21:
      v14 = started;
      remote_device_browser_cancel();

      goto LABEL_22;
    }

    OS_dispatch_semaphore.wait()();
  }

  else
  {
    swift_beginAccess();
    result = *v18;
    if (!*v18)
    {
      goto LABEL_30;
    }

    remote_device_get_name();
    v37 = String.init(cString:)();
    v39 = v38;
    if (qword_1004A9F20 != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    sub_1000270B4(v40, qword_1004B00F8);

    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      aBlock[0] = v44;
      *v43 = 136315138;
      v45 = sub_1000026C0(v37, v39, aBlock);

      *(v43 + 4) = v45;
      _os_log_impl(&_mh_execute_header, v41, v42, "remote device found: %s", v43, 0xCu);
      sub_100003C3C(v44);
    }

    else
    {
    }
  }

  result = swift_beginAccess();
  if (*v18)
  {
    v56 = *v18;
    v57 = v80;
    v58 = sub_10029CC6C(v56, v81, v82);
    if (!v57)
    {
      v60 = v58;
      v61 = v59;

      sub_100031928(v95, *(&v95 + 1));
      *&v95 = v60;
      *(&v95 + 1) = v61;
      if (qword_1004A9F20 != -1)
      {
        swift_once();
      }

      v62 = type metadata accessor for Logger();
      sub_1000270B4(v62, qword_1004B00F8);
      v63 = Logger.logObject.getter();
      v64 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        v96 = swift_slowAlloc();
        v93[0] = v96;
        *v65 = 136315138;
        swift_beginAccess();
        v66 = v95;
        sub_1000318C0(v95, *(&v95 + 1), v67, v68);
        v69 = Data.description.getter();
        v71 = v70;
        sub_100031928(v66, *(&v66 + 1));
        v72 = sub_1000026C0(v69, v71, v93);

        *(v65 + 4) = v72;
        _os_log_impl(&_mh_execute_header, v63, v64, "Raw data got from remote service: %s", v65, 0xCu);
        sub_100003C3C(v96);
      }

      swift_beginAccess();
      v14 = v95;
      sub_1000318C0(v95, *(&v95 + 1), v73, v74);
      v75 = started;
      remote_device_browser_cancel();

      sub_100031928(v95, *(&v95 + 1));
      return v14;
    }

    goto LABEL_21;
  }

  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_100270898(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = *(type metadata accessor for Config(0) - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  type metadata accessor for DInitConfigSource(0);
  v2[8] = swift_task_alloc();
  v3 = type metadata accessor for ConfigLoader.DecodedData(0);
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();

  return _swift_task_switch(sub_1002709E8, 0, 0);
}

uint64_t sub_1002709E8()
{
  v28 = v0;
  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000270B4(v1, qword_1004B00F8);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v27 = v5;
    *v4 = 136315138;
    v6 = Array.description.getter();
    v8 = sub_1000026C0(v6, v7, &v27);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Resolving configuration Data from %s", v4, 0xCu);
    sub_100003C3C(v5);
  }

  v9 = *(v0 + 24);
  v10 = _swiftEmptyArrayStorage;
  *(v0 + 16) = _swiftEmptyArrayStorage;
  v11 = *(v9 + 16);
  *(v0 + 96) = v11;
  if (v11)
  {
    v12 = 0;
    v13 = *(v0 + 80);
    *(v0 + 152) = *(v13 + 80);
    *(v0 + 104) = *(v13 + 72);
    while (1)
    {
      *(v0 + 112) = v12;
      sub_10027AE9C(*(v0 + 24) + ((*(v0 + 152) + 32) & ~*(v0 + 152)) + *(v0 + 104) * v12, *(v0 + 88), type metadata accessor for ConfigLoader.DecodedData);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        break;
      }

      v14 = *(v0 + 48);
      v15 = *(v0 + 56);
      sub_1002787C8(*(v0 + 88), v15, type metadata accessor for Config);
      sub_10027AE9C(v15, v14, type metadata accessor for Config);
      v10 = *(v0 + 16);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_10018CF3C(0, v10[2] + 1, 1, v10);
      }

      v17 = v10[2];
      v16 = v10[3];
      if (v17 >= v16 >> 1)
      {
        v10 = sub_10018CF3C((v16 > 1), v17 + 1, 1, v10);
      }

      v18 = *(v0 + 48);
      v19 = *(v0 + 40);
      sub_10026F33C(*(v0 + 56), type metadata accessor for Config);
      v10[2] = v17 + 1;
      sub_1002787C8(v18, v10 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v17, type metadata accessor for Config);
      *(v0 + 16) = v10;
      v12 = *(v0 + 112) + 1;
      if (v12 == *(v0 + 96))
      {
        goto LABEL_13;
      }
    }

    v22 = *(v0 + 64);
    v23 = *(v0 + 88);
    v24 = *(v23 + *(sub_1000039E8(&qword_1004AE978, &unk_100402E00) + 48));
    *(v0 + 120) = v24;
    sub_1002787C8(v23, v22, type metadata accessor for DInitConfigSource);
    v25 = swift_task_alloc();
    *(v0 + 128) = v25;
    *v25 = v0;
    v25[1] = sub_100270E1C;
    v26 = *(v0 + 64);

    return sub_10026C824(v26, v24);
  }

  else
  {
LABEL_13:

    v20 = *(v0 + 8);

    return v20(v10);
  }
}

uint64_t sub_100270E1C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {

    v5 = sub_100271268;
  }

  else
  {
    *(v4 + 144) = a1;
    v5 = sub_100270F5C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100270F5C()
{
  v1 = *(v0 + 64);
  sub_10034A548(*(v0 + 144));
  sub_10026F33C(v1, type metadata accessor for DInitConfigSource);
  v2 = *(v0 + 112) + 1;
  if (v2 == *(v0 + 96))
  {
    v3 = *(v0 + 16);
LABEL_3:

    v4 = *(v0 + 8);

    return v4(v3);
  }

  else
  {
    while (1)
    {
      *(v0 + 112) = v2;
      sub_10027AE9C(*(v0 + 24) + ((*(v0 + 152) + 32) & ~*(v0 + 152)) + *(v0 + 104) * v2, *(v0 + 88), type metadata accessor for ConfigLoader.DecodedData);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        break;
      }

      v6 = *(v0 + 48);
      v7 = *(v0 + 56);
      sub_1002787C8(*(v0 + 88), v7, type metadata accessor for Config);
      sub_10027AE9C(v7, v6, type metadata accessor for Config);
      v3 = *(v0 + 16);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_10018CF3C(0, v3[2] + 1, 1, v3);
      }

      v9 = v3[2];
      v8 = v3[3];
      if (v9 >= v8 >> 1)
      {
        v3 = sub_10018CF3C((v8 > 1), v9 + 1, 1, v3);
      }

      v10 = *(v0 + 48);
      v11 = *(v0 + 40);
      sub_10026F33C(*(v0 + 56), type metadata accessor for Config);
      v3[2] = v9 + 1;
      sub_1002787C8(v10, v3 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v9, type metadata accessor for Config);
      *(v0 + 16) = v3;
      v2 = *(v0 + 112) + 1;
      if (v2 == *(v0 + 96))
      {
        goto LABEL_3;
      }
    }

    v12 = *(v0 + 64);
    v13 = *(v0 + 88);
    v14 = *(v13 + *(sub_1000039E8(&qword_1004AE978, &unk_100402E00) + 48));
    *(v0 + 120) = v14;
    sub_1002787C8(v13, v12, type metadata accessor for DInitConfigSource);
    v15 = swift_task_alloc();
    *(v0 + 128) = v15;
    *v15 = v0;
    v15[1] = sub_100270E1C;
    v16 = *(v0 + 64);

    return sub_10026C824(v16, v14);
  }
}

uint64_t sub_100271268()
{
  sub_10026F33C(*(v0 + 64), type metadata accessor for DInitConfigSource);

  v1 = *(v0 + 8);

  return v1();
}

void sub_100271314(uint64_t a1)
{
  v2 = v1;
  v4 = v1[4];
  v5 = v1[5];
  sub_10000E2A8(v1 + 1, v4);
  if (((*(v5 + 136))(v4, v5) & 1) == 0)
  {
    return;
  }

  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000270B4(v6, qword_1004B00F8);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Setting default compute name and local hostname for compute node", v9, 2u);
  }

  v10 = v2[4];
  v11 = v2[5];
  sub_10000E2A8(v2 + 1, v10);
  (*(v11 + 120))(v10, v11);
  if (v12 & 1) != 0 || (v13 = v2[4], v14 = v2[5], sub_10000E2A8(v2 + 1, v13), (*(v14 + 128))(v13, v14), (v15))
  {
    oslog = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v16, "Failed to copy carrier / soc information", v17, 2u);
    }

    return;
  }

  v18 = a1 + *(type metadata accessor for Config(0) + 48);
  v19 = (v18 + 8);
  if (*(v18 + 8))
  {
    if (*(v18 + 24))
    {
      goto LABEL_19;
    }
  }

  else
  {
    v20 = *(v18 + 56);
    v36[2] = *(v18 + 40);
    v36[3] = v20;
    v21 = *(v18 + 88);
    v36[4] = *(v18 + 72);
    v36[5] = v21;
    v22 = *(v18 + 24);
    v36[0] = *v19;
    v36[1] = v22;
    sub_100013F2C(v36, &qword_1004AD1F0, &unk_100402E50);
    *(v18 + 8) = _swiftEmptyArrayStorage;
    *(v18 + 16) = 0;
    *(v18 + 24) = 0;
    *(v18 + 32) = _swiftEmptyArrayStorage;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = _swiftEmptyArrayStorage;
    *(v18 + 64) = 0;
    *(v18 + 72) = 0;
    *(v18 + 80) = _swiftEmptyArrayStorage;
    *(v18 + 88) = 0;
    *(v18 + 96) = 0;
  }

  v24 = Config.identification.modify();
  if (*v23)
  {
    v25 = v23;
    v26._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v26);

    v27._countAndFlagsBits = 45;
    v27._object = 0xE100000000000000;
    String.append(_:)(v27);
    v28._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v28);

    v25[1] = 761491315;
    v25[2] = 0xE400000000000000;

    (v24)(v36, 0);
LABEL_19:
    if (*v19)
    {
      goto LABEL_20;
    }

    goto LABEL_23;
  }

  (v24)(v36, 0);
  if (*v19)
  {
LABEL_20:
    if (*(v18 + 72))
    {
      return;
    }
  }

LABEL_23:
  v30 = Config.identification.modify();
  if (*v29)
  {
    v31 = v29;
    v32._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v32);

    v33._countAndFlagsBits = 45;
    v33._object = 0xE100000000000000;
    String.append(_:)(v33);
    v34._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v34);

    v31[7] = 761491315;
    v31[8] = 0xE400000000000000;
  }

  (v30)(v36, 0);
}

uint64_t sub_1002717B0()
{
  v69 = v0;
  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000270B4(v1, qword_1004B00F8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Loading configuration from NVRAM", v4, 2u);
  }

  v5 = v0[12];

  v6 = 0;
  v7 = 0;
  v57 = enum case for DecodingError.dataCorrupted(_:);
  v62 = v5;
  do
  {
    v8 = v6;
    v9 = *(&off_100485418 + v7 + 32);
    v10 = v5[4];
    v11 = v5[5];
    sub_10000E2A8(v5 + 1, v10);
    (*(v11 + 304))(v10, v11);
    v65 = v8;
    v12 = v0[5];
    v13 = v0[6];
    sub_10000E2A8(v0 + 2, v12);
    if (v9)
    {
      v14 = 0x692D6E6977726164;
    }

    else
    {
      v14 = 0xD000000000000012;
    }

    if (v9)
    {
      v15 = 0xEB0000000074696ELL;
    }

    else
    {
      v15 = 0x800000010043E9D0;
    }

    v66 = v14;
    v67 = v15;
    v16 = (*(v13 + 8))(&v66, v12, v13);
    v18 = v17;

    sub_100003C3C(v0 + 2);
    v60 = v14;
    v19 = Data.init(base64Encoded:options:)();
    v63 = v20;
    v61 = v15;
    if (v20 >> 60 != 15)
    {
      v58 = v19;
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v66 = v24;
        *v23 = 136315138;
        v25 = sub_1000026C0(v60, v61, &v66);

        *(v23 + 4) = v25;
        _os_log_impl(&_mh_execute_header, v21, v22, "Data from %s NVRAM variable was recognized as base64", v23, 0xCu);
        sub_100003C3C(v24);
      }

      sub_100031928(v16, v18);

      v18 = v63;
      v16 = v58;
    }

    v5 = v62;
    sub_1000039E8(&qword_1004AA9F0, &unk_100402E10);
    v26 = *(type metadata accessor for ConfigLoader.LoadingKey(0) - 8);
    v27 = (*(v26 + 80) + 32) & ~*(v26 + 80);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_100376A40;
    *(v28 + v27) = v9;
    swift_storeEnumTagMultiPayload();
    sub_1001B5418();
    v64 = v18;
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v36 = v0[2];
    v59 = v16;
    if (v36 >> 61 == 4)
    {

      v41 = sub_100274610(v42, v28);
    }

    else
    {
      if (v36 >> 61 != 5)
      {
        v43 = type metadata accessor for DecodingError();
        swift_allocError();
        v45 = v44;
        v66 = 0;
        v67 = 0xE000000000000000;
        _StringGuts.grow(_:)(46);

        v66 = 0xD00000000000002CLL;
        v67 = 0x8000000100440200;
        v68 = v36;
        v47._countAndFlagsBits = sub_1002F660C(1, v46);
        String.append(_:)(v47);

        DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
        (*(*(v43 - 8) + 104))(v45, v57, v43);
        swift_willThrow();

        swift_errorRetain();
        v29 = Logger.logObject.getter();
        v30 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          v66 = swift_slowAlloc();
          *v31 = 136315394;
          v32 = sub_1000026C0(v60, v61, &v66);

          *(v31 + 4) = v32;
          *(v31 + 12) = 2080;
          swift_getErrorValue();
          v33 = Error.localizedDescription.getter();
          v35 = sub_1000026C0(v33, v34, &v66);

          *(v31 + 14) = v35;
          _os_log_impl(&_mh_execute_header, v29, v30, "Data from %s NVRAM variable is not valid: %s", v31, 0x16u);
          swift_arrayDestroy();

          sub_100031928(v59, v18);
        }

        else
        {
          sub_100031928(v16, v18);
        }

        goto LABEL_13;
      }

      v37 = *((v36 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v38 = *(v37 + 16);

      if (v38 && (v39 = sub_100013364(0x656372756F73, 0xE600000000000000), (v40 & 1) != 0))
      {
        v66 = *(*(v37 + 56) + 8 * v39);

        v41 = sub_100274C74(&v66, v28);
      }

      else
      {
        sub_1000039E8(&qword_1004AA9F8, &qword_1003F40C0);
        v48 = *(type metadata accessor for ConfigLoader.DecodedData(0) - 8);
        v49 = (*(v48 + 80) + 32) & ~*(v48 + 80);
        v41 = swift_allocObject();
        *(v41 + 16) = xmmword_100376A40;
        sub_100274F5C(v37, v28, v41 + v49);
      }
    }

    sub_10034A51C(v41);
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v66 = v53;
      *v52 = 136315138;
      v54 = sub_1000026C0(v60, v61, &v66);

      *(v52 + 4) = v54;
      _os_log_impl(&_mh_execute_header, v50, v51, "Successfully loaded configuration from %s NVRAM variable", v52, 0xCu);
      sub_100003C3C(v53);
    }

    sub_100031928(v59, v64);

LABEL_13:
    v6 = 1;
    v7 = &_mh_execute_header.magic + 1;
  }

  while ((v65 & 1) == 0);
  if (!_swiftEmptyArrayStorage[2])
  {
  }

  v55 = v0[1];

  return v55();
}

uint64_t sub_100272368()
{
  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[16] = sub_1000270B4(v1, qword_1004B00F8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Loading configuration from Data Center Bootstrap service", v4, 2u);
  }

  if (qword_1004A9EE8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for URL();
  v0[17] = v5;
  v6 = sub_1000270B4(v5, kDInitDataCenterBootstrapServer);
  v0[18] = v6;
  v7 = swift_task_alloc();
  v0[19] = v7;
  *v7 = v0;
  v7[1] = sub_10027250C;

  return sub_10026F39C(v6);
}

uint64_t sub_10027250C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[2] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v4[5] = v2;
  v4[20] = v2;

  if (v2)
  {
    v5 = sub_10027283C;
  }

  else
  {
    v5 = sub_100272628;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100272628()
{
  v14 = v0;
  v1 = v0[20];
  v2 = v0[3];
  v3 = v0[4];
  sub_1001B5418();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v1)
  {
    swift_errorRetain();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      swift_errorRetain();
      v8 = _swift_stdlib_bridgeErrorToNSError();
      *(v6 + 4) = v8;
      *v7 = v8;
      _os_log_impl(&_mh_execute_header, v4, v5, "Data from Bootstrap service is not valid: %@", v6, 0xCu);
      sub_100013F2C(v7, &qword_1004AA050, &unk_1003F2F10);
    }

    swift_willThrow();
    sub_100031928(v2, v3);
    v9 = v0[1];

    return v9();
  }

  else
  {
    v13 = v0[14];
    v11 = sub_100274324(&v13, _swiftEmptyArrayStorage);
    sub_100031928(v2, v3);

    v12 = v0[1];

    return v12(v11);
  }
}

uint64_t sub_10027283C()
{
  v17 = v0;
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v16 = v5;
    *v3 = 136315394;
    sub_100278780(&qword_1004AAE30, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v6 = dispatch thunk of CustomStringConvertible.description.getter();
    v8 = sub_1000026C0(v6, v7, &v16);

    *(v3 + 4) = v8;
    *(v3 + 12) = 2112;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 14) = v9;
    *v4 = v9;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to load configuration from %s: %@", v3, 0x16u);
    sub_100013F2C(v4, &qword_1004AA050, &unk_1003F2F10);

    sub_100003C3C(v5);
  }

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Falling back to use the legacy Bootstrap endpoint", v12, 2u);
  }

  if (qword_1004A9EF0 != -1)
  {
    swift_once();
  }

  v13 = sub_1000270B4(v0[17], kDInitDataCenterBootstrapServerFallback);
  v0[21] = v13;
  v14 = swift_task_alloc();
  v0[22] = v14;
  *v14 = v0;
  v14[1] = sub_100272B1C;

  return sub_10026F39C(v13);
}

uint64_t sub_100272B1C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[6] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v4[9] = v2;
  v4[23] = v2;

  if (v2)
  {
    v5 = sub_100272E54;
  }

  else
  {
    v5 = sub_100272C38;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100272C38()
{
  v14 = v0;

  v1 = v0[23];
  v2 = v0[7];
  v3 = v0[8];
  sub_1001B5418();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v1)
  {
    swift_errorRetain();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      swift_errorRetain();
      v8 = _swift_stdlib_bridgeErrorToNSError();
      *(v6 + 4) = v8;
      *v7 = v8;
      _os_log_impl(&_mh_execute_header, v4, v5, "Data from Bootstrap service is not valid: %@", v6, 0xCu);
      sub_100013F2C(v7, &qword_1004AA050, &unk_1003F2F10);
    }

    swift_willThrow();
    sub_100031928(v2, v3);
    v9 = v0[1];

    return v9();
  }

  else
  {
    v13 = v0[14];
    v11 = sub_100274324(&v13, _swiftEmptyArrayStorage);
    sub_100031928(v2, v3);

    v12 = v0[1];

    return v12(v11);
  }
}

uint64_t sub_100272E54()
{
  v20 = v0;
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v19 = v5;
    *v3 = 136315394;
    sub_100278780(&qword_1004AAE30, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v6 = dispatch thunk of CustomStringConvertible.description.getter();
    v8 = sub_1000026C0(v6, v7, &v19);

    *(v3 + 4) = v8;
    *(v3 + 12) = 2112;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 14) = v9;
    *v4 = v9;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to load configuration from %s: %@", v3, 0x16u);
    sub_100013F2C(v4, &qword_1004AA050, &unk_1003F2F10);

    sub_100003C3C(v5);
  }

  v10 = v0[15];
  v11 = v10[4];
  v12 = v10[5];
  sub_10000E2A8(v10 + 1, v11);
  if ((*(v12 + 176))(v11, v12))
  {
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Falling back to use factory endpoint", v15, 2u);
    }

    v16 = swift_task_alloc();
    v0[24] = v16;
    *v16 = v0;
    v16[1] = sub_10027317C;

    return sub_100274118();
  }

  else
  {
    swift_willThrow();

    v18 = v0[1];

    return v18();
  }
}

uint64_t sub_10027317C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[10] = v3;
  v4[11] = a1;
  v4[12] = a2;
  v4[13] = v2;
  v4[25] = v2;

  if (v2)
  {
    v5 = sub_1002734C0;
  }

  else
  {
    v5 = sub_100273298;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100273298()
{
  v14 = v0;

  v1 = v0[25];
  v2 = v0[11];
  v3 = v0[12];
  sub_1001B5418();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v1)
  {
    swift_errorRetain();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      swift_errorRetain();
      v8 = _swift_stdlib_bridgeErrorToNSError();
      *(v6 + 4) = v8;
      *v7 = v8;
      _os_log_impl(&_mh_execute_header, v4, v5, "Data from Bootstrap service is not valid: %@", v6, 0xCu);
      sub_100013F2C(v7, &qword_1004AA050, &unk_1003F2F10);
    }

    swift_willThrow();
    sub_100031928(v2, v3);
    v9 = v0[1];

    return v9();
  }

  else
  {
    v13 = v0[14];
    v11 = sub_100274324(&v13, _swiftEmptyArrayStorage);
    sub_100031928(v2, v3);

    v12 = v0[1];

    return v12(v11);
  }
}

uint64_t sub_1002734C0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100273550()
{
  v14 = v0;
  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[4] = sub_1000270B4(v1, qword_1004B00F8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Loading configuration from remote service", v4, 2u);
  }

  remote_device_type_get_description();
  v5 = String.init(cString:)();
  v7 = sub_10026FD30(v5, v6, 0xD000000000000022, 0x8000000100440300);
  v9 = v8;
  v0[5] = 0;

  sub_1001B5418();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  v13 = v0[2];
  v10 = sub_100274324(&v13, _swiftEmptyArrayStorage);
  sub_100031928(v7, v9);

  v11 = v0[1];

  return v11(v10);
}

uint64_t sub_100273AD8(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 56) = v2;

  if (v2)
  {
    v7 = sub_100273E28;
  }

  else
  {
    *(v6 + 64) = a2;
    *(v6 + 72) = a1;
    v7 = sub_100273C0C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100273C0C()
{
  v14 = v0;

  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  sub_1001B5418();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v3)
  {
    swift_errorRetain();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      swift_errorRetain();
      v8 = _swift_stdlib_bridgeErrorToNSError();
      *(v6 + 4) = v8;
      *v7 = v8;
      _os_log_impl(&_mh_execute_header, v4, v5, "Data from remote service is not valid: %@", v6, 0xCu);
      sub_100013F2C(v7, &qword_1004AA050, &unk_1003F2F10);
    }

    swift_willThrow();
    sub_100031928(v1, v2);
    v9 = v0[1];

    return v9();
  }

  else
  {
    v13 = v0[2];
    v11 = sub_100274324(&v13, _swiftEmptyArrayStorage);
    sub_100031928(v1, v2);

    v12 = v0[1];

    return v12(v11);
  }
}

uint64_t sub_100273E28()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_100273E8C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  if ((a2 & 1) == 0)
  {
    if (a1)
    {
      v9 = swift_allocObject();
      v9[2] = a4;
      v9[3] = a5;
      v9[4] = a6;
      v12[4] = sub_10027CCF0;
      v12[5] = v9;
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 1107296256;
      v12[2] = sub_100274038;
      v12[3] = &unk_100491930;
      v10 = _Block_copy(v12);

      v11 = a6;

      remote_device_set_connected_callback();
      _Block_release(v10);
    }

    else
    {
      __break(1u);
    }
  }
}

Swift::Int sub_100273FA4(void *a1, atomic_flag *a2, uint64_t a3)
{
  swift_beginAccess();
  LOBYTE(a2) = atomic_flag_test_and_set_explicit(a2 + 16, memory_order_relaxed);
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    swift_beginAccess();
    v7 = *(a3 + 16);
    *(a3 + 16) = a1;

    v8 = a1;
    return OS_dispatch_semaphore.signal()();
  }

  return result;
}

void sub_100274038(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 32);

  v6 = a2;
  v5();
}

void sub_1002740A0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 32);

  v7 = a2;
  v6(a2, a3);
}

uint64_t sub_100274138()
{
  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000270B4(v1, qword_1004B00F8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Loading configuration from factory remote service", v4, 2u);
  }

  v5 = *(v0 + 16);

  v6 = v5[4];
  v7 = v5[5];
  sub_10000E2A8(v5 + 1, v6);
  (*(v7 + 136))(v6, v7);
  remote_device_type_get_description();
  v8 = String.init(cString:)();
  v10 = sub_10026FD30(v8, v9, 0xD000000000000031, 0x80000001004402C0);
  v12 = v11;

  v13 = *(v0 + 8);

  return v13(v10, v12);
}

unint64_t *sub_100274324(unint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = *a1 >> 61;
  if (v4 == 4)
  {

    v6 = sub_100274610(v7, a2);
  }

  else
  {
    if (v4 != 5)
    {
      v9 = type metadata accessor for DecodingError();
      swift_allocError();
      v11 = v10;
      _StringGuts.grow(_:)(46);

      v15[0] = 0xD00000000000002CLL;
      v15[1] = 0x8000000100440200;
      v15[3] = v3;
      v13._countAndFlagsBits = sub_1002F660C(1, v12);
      v8 = v15;
      String.append(_:)(v13);

      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v9 - 8) + 104))(v11, enum case for DecodingError.dataCorrupted(_:), v9);
      swift_willThrow();
      return v8;
    }

    v6 = sub_1002744A8(v5, a2);
  }

  v8 = v6;

  return v8;
}

uint64_t sub_1002744A8(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) && (v5 = sub_100013364(0x656372756F73, 0xE600000000000000), (v6 & 1) != 0))
  {
    v11 = *(*(a1 + 56) + 8 * v5);

    v7 = sub_100274C74(&v11, a2);
  }

  else
  {
    sub_1000039E8(&qword_1004AA9F8, &qword_1003F40C0);
    v8 = *(type metadata accessor for ConfigLoader.DecodedData(0) - 8);
    v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_100376A40;
    sub_100274F5C(a1, a2, v7 + v9);
    if (v2)
    {
      *(v7 + 16) = 0;
    }
  }

  return v7;
}

uint64_t *sub_100274610(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v46 = a2;
  v42 = type metadata accessor for DInitConfigSource(0);
  __chkstk_darwin(v42);
  v41 = (&v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = _swiftEmptyArrayStorage;
  v54 = _swiftEmptyArrayStorage;
  v7 = *(a1 + 16);
  v47 = a1;

  v45 = v7;
  if (v7)
  {
    v48 = v3;
    v8 = 0;
    v50 = xmmword_100376A40;
    while (1)
    {
      v17 = *(v47 + 8 * v8 + 32);
      v18 = v17 & 0x1FFFFFFFFFFFFFFFLL;
      if (v17 >> 61 != 5)
      {

        v34 = type metadata accessor for DecodingError();
        swift_allocError();
        v36 = v35;
        v52 = 0;
        v53 = 0xE000000000000000;
        _StringGuts.grow(_:)(43);

        v52 = 0xD000000000000029;
        v53 = 0x8000000100440230;
        v51 = v17;
        v38._countAndFlagsBits = sub_1002F660C(1, v37);
        v6 = &v52;
        String.append(_:)(v38);

        DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
        (*(*(v34 - 8) + 104))(v36, enum case for DecodingError.dataCorrupted(_:), v34);
        swift_willThrow();

        return v6;
      }

      v19 = *((v17 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      sub_1000039E8(&qword_1004AA9F0, &unk_100402E10);
      v20 = *(type metadata accessor for ConfigLoader.LoadingKey(0) - 8);
      v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
      v22 = swift_allocObject();
      *(v22 + 16) = v50;
      *(v22 + v21) = v8;
      swift_storeEnumTagMultiPayload();
      v52 = v46;
      v49 = v18;

      sub_10034A4F0(v22);
      v23 = v52;
      if (!*(v19 + 16))
      {
        break;
      }

      v24 = sub_100013364(0x656372756F73, 0xE600000000000000);
      if ((v25 & 1) == 0)
      {
        break;
      }

      v43 = v23;
      v26 = *(*(v19 + 56) + 8 * v24);

      if (v26 >> 61 != 3)
      {
        v27 = swift_allocObject();
        *(v27 + 16) = v50;
        v28 = (v27 + v21);
        *v28 = 32123;
        v28[1] = 0xE200000000000000;
        swift_storeEnumTagMultiPayload();
        swift_storeEnumTagMultiPayload();
        v52 = v43;
        sub_10034A4F0(v27);
        v52 = v26;
        v29 = v48;
        v30 = sub_100274324(&v52);
        v48 = v29;
        if (v29)
        {

          v6 = v54;

          return v6;
        }

        v14 = v30;

        goto LABEL_13;
      }

      v10 = *((v26 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v9 = *((v26 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);

      v11 = v41;
      DInitConfigSource.init(argument:)(v10, v9, v41);
      sub_1000039E8(&qword_1004AA9F8, &qword_1003F40C0);
      v12 = *(type metadata accessor for ConfigLoader.DecodedData(0) - 8);
      v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
      v14 = swift_allocObject();
      *(v14 + 16) = v50;
      v15 = v14 + v13;
      v16 = *(sub_1000039E8(&qword_1004AE978, &unk_100402E00) + 48);
      sub_10027AE9C(v11, v15, type metadata accessor for DInitConfigSource);
      *(v15 + v16) = v43;
      swift_storeEnumTagMultiPayload();
      sub_10026F33C(v11, type metadata accessor for DInitConfigSource);

LABEL_4:
      ++v8;
      sub_10034A51C(v14);

      if (v45 == v8)
      {
        v6 = v54;
        goto LABEL_16;
      }
    }

    sub_1000039E8(&qword_1004AA9F8, &qword_1003F40C0);
    v31 = *(type metadata accessor for ConfigLoader.DecodedData(0) - 8);
    v32 = (*(v31 + 80) + 32) & ~*(v31 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = v50;
    v6 = v44;
    v33 = v48;
    sub_100274F5C(v19, v23, v14 + v32);
    v48 = v33;
    if (v33)
    {

      *(v14 + 16) = 0;

      return v6;
    }

LABEL_13:

    goto LABEL_4;
  }

LABEL_16:

  return v6;
}

unint64_t *sub_100274C74(unint64_t *a1, unint64_t a2)
{
  v4 = type metadata accessor for DInitConfigSource(0);
  __chkstk_darwin(v4);
  v6 = (&v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *a1;
  if (*a1 >> 61 == 3)
  {
    v8 = *((v7 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v9 = *((v7 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);

    DInitConfigSource.init(argument:)(v8, v9, v6);
    sub_1000039E8(&qword_1004AA9F8, &qword_1003F40C0);
    v10 = *(type metadata accessor for ConfigLoader.DecodedData(0) - 8);
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_100376A40;
    v13 = v12 + v11;
    v14 = *(sub_1000039E8(&qword_1004AE978, &unk_100402E00) + 48);
    sub_10027AE9C(v6, v13, type metadata accessor for DInitConfigSource);
    *(v13 + v14) = a2;
    swift_storeEnumTagMultiPayload();

    sub_10026F33C(v6, type metadata accessor for DInitConfigSource);
  }

  else
  {
    sub_1000039E8(&qword_1004AA9F0, &unk_100402E10);
    v15 = *(type metadata accessor for ConfigLoader.LoadingKey(0) - 8);
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_100376A40;
    v18 = (v17 + v16);
    *v18 = 32123;
    v18[1] = 0xE200000000000000;
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v21 = a2;

    sub_10034A4F0(v17);
    v21 = v7;
    v12 = sub_100274324(&v21);
  }

  return v12;
}

uint64_t sub_100274F5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v63 = a2;
  v65 = a3;
  v64 = type metadata accessor for Config(0);
  v4 = __chkstk_darwin(v64);
  v62 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v67 = &v61 - v7;
  __chkstk_darwin(v6);
  v9 = &v61 - v8;
  v10 = _s10DarwinInit12ConfigLoaderV13detectVersion4rootAC08DetectedF0OSDySSAA4JSONOG_tFZ_0(a1);
  v12 = v11;
  v14 = v13;
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  v16 = qword_1004A9F20;

  if (v16 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_1000270B4(v17, qword_1004B00F8);
  sub_10027CB68(v10, v12, v14);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.info.getter();
  sub_10027CB80(v10, v12, v14);
  v20 = os_log_type_enabled(v18, v19);
  v70 = v10;
  v71 = v9;
  v68 = v12;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v72[0] = v22;
    *v21 = 136315138;
    sub_10027CB68(v10, v12, v14);
    v23 = ConfigLoader.DetectedVersion.description.getter(v10, v12, v14);
    v24 = v12;
    v25 = v23;
    v26 = v10;
    v28 = v27;
    sub_10027CB80(v26, v24, v14);
    v29 = sub_1000026C0(v25, v28, v72);

    *(v21 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v18, v19, "Detected config version: %s", v21, 0xCu);
    sub_100003C3C(v22);
  }

  v30 = v15 | 0xA000000000000000;

  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v66 = v15 | 0xA000000000000000;
    v34 = v33;
    v35 = swift_slowAlloc();
    v72[0] = v35;
    *v34 = 136380675;
    v75 = v66;

    sub_1002F67B4(v37, v36, 1);
    v39 = v38;
    v41 = v40;

    v42 = sub_1000026C0(v39, v41, v72);

    *(v34 + 4) = v42;
    _os_log_impl(&_mh_execute_header, v31, v32, "Decoding config: %{private}s", v34, 0xCu);
    sub_100003C3C(v35);

    v30 = v66;
  }

  v44 = v70;
  v43 = v71;
  if (v14)
  {
    if (v14 == 1)
    {
      v45 = sub_100187218(_swiftEmptyArrayStorage);
      v46 = type metadata accessor for JSEnumDecoder();
      v47 = swift_allocObject();
      v47[3] = v45;
      v47[4] = v30;
      v47[2] = _swiftEmptyArrayStorage;
      v73 = v46;
      v74 = sub_100278780(&qword_1004ACC28, type metadata accessor for JSEnumDecoder, &protocol conformance descriptor for JSEnumDecoder);
      v72[0] = v47;

      v48 = v62;
      v49 = v69;
      Config.init(from:)(v72, v62);

      if (v49)
      {

        return sub_10027CB80(v44, v68, 1u);
      }

      sub_1002787C8(v48, v43, type metadata accessor for Config);
      sub_1000039E8(&qword_1004AA9F0, &unk_100402E10);
      v56 = *(type metadata accessor for ConfigLoader.LoadingKey(0) - 8);
      v57 = (*(v56 + 80) + 32) & ~*(v56 + 80);
      v58 = swift_allocObject();
      *(v58 + 16) = xmmword_100376A40;
      *(v58 + v57) = 2;
      swift_storeEnumTagMultiPayload();
      v72[0] = v63;

      sub_10034A4F0(v58);
      sub_10027CB80(v44, v68, 1u);
      goto LABEL_16;
    }
  }

  else
  {
    sub_10027CB80(v70, v68, 0);
  }

  v73 = &type metadata for JSONConverter;
  v74 = &protocol witness table for JSONConverter;
  v72[0] = v30;
  v72[1] = _swiftEmptyArrayStorage;

  v51 = v67;
  v52 = v69;
  Config.init(from:)(v72);
  if (v52)
  {
  }

  sub_1002787C8(v51, v43, type metadata accessor for Config);
  sub_1000039E8(&qword_1004AA9F0, &unk_100402E10);
  v53 = *(type metadata accessor for ConfigLoader.LoadingKey(0) - 8);
  v54 = (*(v53 + 80) + 32) & ~*(v53 + 80);
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_100376A40;
  *(v55 + v54) = 1;
  swift_storeEnumTagMultiPayload();
  v72[0] = v63;

  sub_10034A4F0(v55);
LABEL_16:
  v59 = v72[0];
  v60 = (v43 + *(v64 + 104));
  sub_1001D6FE0(*v60, v60[1]);
  *v60 = v59;
  v60[1] = v30;
  sub_1002787C8(v43, v65, type metadata accessor for Config);
  type metadata accessor for ConfigLoader.DecodedData(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_100275674()
{
  v1 = 12662;
  if (*v0 != 1)
  {
    v1 = 12918;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t sub_1002756B8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10027C8C4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1002756E0(uint64_t a1)
{
  v2 = sub_10027ABFC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10027571C(uint64_t a1)
{
  v2 = sub_10027ABFC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100275758(uint64_t a1)
{
  v2 = sub_10027ACF8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100275794(uint64_t a1)
{
  v2 = sub_10027ACF8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1002757D0(uint64_t a1)
{
  v2 = sub_10027ACA4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10027580C(uint64_t a1)
{
  v2 = sub_10027ACA4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100275848(uint64_t a1)
{
  v2 = sub_10027AC50();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100275884(uint64_t a1)
{
  v2 = sub_10027AC50();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ConfigLoader.VersionInfo.encode(to:)(void *a1, int a2)
{
  v25 = a2;
  v3 = sub_1000039E8(&qword_1004AE588, &qword_100401880);
  v23 = *(v3 - 8);
  v24 = v3;
  __chkstk_darwin(v3);
  v22 = &v18 - v4;
  v5 = sub_1000039E8(&qword_1004AE590, &qword_100401888);
  v20 = *(v5 - 8);
  v21 = v5;
  __chkstk_darwin(v5);
  v7 = &v18 - v6;
  v8 = sub_1000039E8(&qword_1004AE598, &qword_100401890);
  v19 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v18 - v9;
  v11 = sub_1000039E8(&qword_1004AE5A0, &qword_100401898);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v18 - v13;
  sub_10000E2A8(a1, a1[3]);
  sub_10027ABFC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = (v12 + 8);
  if (v25)
  {
    if (v25 == 1)
    {
      v27 = 1;
      sub_10027ACA4();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v20 + 8))(v7, v21);
    }

    else
    {
      v28 = 2;
      sub_10027AC50();
      v16 = v22;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v23 + 8))(v16, v24);
    }
  }

  else
  {
    v26 = 0;
    sub_10027ACF8();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v19 + 8))(v10, v8);
  }

  return (*v15)(v14, v11);
}

uint64_t sub_100275C58@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_100278B3C(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t ConfigLoader.DetectedVersion.description.getter(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
    v3 = 0x203A79656B5B2031;
    goto LABEL_5;
  }

  if (a3 == 1)
  {
    v3 = 0x203A79656B5B2032;
LABEL_5:
    v6 = v3;
    String.append(_:)(*&a1);
    v4._countAndFlagsBits = 23847;
    v4._object = 0xE200000000000000;
    String.append(_:)(v4);
    return v6;
  }

  return 0x6769626D615B2031;
}

uint64_t sub_100275D48(uint64_t a1)
{
  v2 = sub_10027AE48();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100275D84(uint64_t a1)
{
  v2 = sub_10027AE48();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100275DC0()
{
  v1 = 12662;
  if (*v0 != 1)
  {
    v1 = 12918;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x756F756769626D61;
  }
}

uint64_t sub_100275E08@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10027C9CC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100275E30(uint64_t a1)
{
  v2 = sub_10027AD4C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100275E6C(uint64_t a1)
{
  v2 = sub_10027AD4C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100275EA8(uint64_t a1)
{
  v2 = sub_10027ADF4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100275EE4(uint64_t a1)
{
  v2 = sub_10027ADF4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100275F20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_100275FA0(uint64_t a1)
{
  v2 = sub_10027ADA0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100275FDC(uint64_t a1)
{
  v2 = sub_10027ADA0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ConfigLoader.DetectedVersion.encode(to:)(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v28 = a3;
  v29 = a4;
  v27 = a2;
  v5 = sub_1000039E8(&qword_1004AE5C8, &qword_1004018A0);
  v25 = *(v5 - 8);
  v26 = v5;
  __chkstk_darwin(v5);
  v24 = &v20 - v6;
  v7 = sub_1000039E8(&qword_1004AE5D0, &qword_1004018A8);
  v22 = *(v7 - 8);
  v23 = v7;
  __chkstk_darwin(v7);
  v9 = &v20 - v8;
  v10 = sub_1000039E8(&qword_1004AE5D8, &qword_1004018B0);
  v21 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v20 - v11;
  v13 = sub_1000039E8(&qword_1004AE5E0, &qword_1004018B8);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v20 - v15;
  sub_10000E2A8(a1, a1[3]);
  sub_10027AD4C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (!v29)
  {
    v31 = 1;
    sub_10027ADF4();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v17 = v23;
    KeyedEncodingContainer.encode(_:forKey:)();
    v18 = v22;
    goto LABEL_5;
  }

  if (v29 == 1)
  {
    v32 = 2;
    sub_10027ADA0();
    v9 = v24;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v17 = v26;
    KeyedEncodingContainer.encode(_:forKey:)();
    v18 = v25;
LABEL_5:
    (*(v18 + 8))(v9, v17);
    return (*(v14 + 8))(v16, v13);
  }

  v30 = 0;
  sub_10027AE48();
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  (*(v21 + 8))(v12, v10);
  return (*(v14 + 8))(v16, v13);
}

void *ConfigLoader.DetectedVersion.init(from:)(void *a1)
{
  result = sub_1002790AC(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

void *sub_10027641C@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1002790AC(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
  }

  return result;
}

unint64_t ConfigLoader.Error.errorDescription.getter(unint64_t a1)
{
  v2 = type metadata accessor for DInitConfigSource(0);
  v78 = *(v2 - 8);
  __chkstk_darwin(v2);
  v76 = &v72 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DecodingError.Context();
  v77 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DecodingError();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v72 - v12;
  v14 = sub_1000039E8(&qword_1004AB540, &qword_1003F69E8);
  v15 = __chkstk_darwin(v14 - 8);
  v17 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v19 = __chkstk_darwin(v18);
  v21 = &v72 - v20;
  __chkstk_darwin(v19);
  v24 = a1 >> 61;
  if ((a1 >> 61) > 1)
  {
    if (v24 != 2)
    {
      if (v24 != 3)
      {
        return 0xD00000000000001ELL;
      }

      v25 = swift_projectBox();
      v26 = v76;
      sub_10027AE9C(v25, v76, type metadata accessor for DInitConfigSource);
      v80 = 0;
      v81 = 0xE000000000000000;
      _StringGuts.grow(_:)(42);

      v80 = 0xD000000000000028;
      v81 = 0x8000000100440110;
      v27._countAndFlagsBits = DInitConfigSource.description.getter();
      String.append(_:)(v27);

      v28 = v80;
      sub_10026F33C(v26, type metadata accessor for DInitConfigSource);
      return v28;
    }

    v34 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v35 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    v36 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
    v80 = 0;
    v81 = 0xE000000000000000;
    _StringGuts.grow(_:)(56);
    v37._countAndFlagsBits = 0xD000000000000031;
    v37._object = 0x8000000100440140;
    String.append(_:)(v37);
    v38._countAndFlagsBits = v34;
    v38._object = v35;
    String.append(_:)(v38);
    v39._countAndFlagsBits = 8250;
    v39._object = 0xE200000000000000;
    String.append(_:)(v39);
    v79 = v36;
    v40._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v40);

    v41._countAndFlagsBits = 46;
    v41._object = 0xE100000000000000;
    String.append(_:)(v41);
    return v80;
  }

  v75 = v6;
  v76 = v2;
  if (v24)
  {
    v42 = v23;
    v43 = sub_1000039E8(&qword_1004AE608, &unk_1004018C0);
    v44 = swift_projectBox();
    v45 = *(v43 + 48);
    sub_10026C6C4(v44, v42);
    v74 = *(v8 + 16);
    v74(v13, v44 + v45, v7);
    v80 = 0;
    v81 = 0xE000000000000000;
    _StringGuts.grow(_:)(45);

    v80 = 0xD000000000000029;
    v81 = 0x8000000100440180;
    v73 = v42;
    sub_10026C6C4(v42, v17);
    if ((*(v78 + 48))(v17, 1, v76) == 1)
    {
      v46 = 0x6D6574737973;
      sub_100013F2C(v17, &qword_1004AB540, &qword_1003F69E8);
      v47 = 0xE600000000000000;
    }

    else
    {
      v46 = DInitConfigSource.description.getter();
      v47 = v52;
      sub_10026F33C(v17, type metadata accessor for DInitConfigSource);
    }

    v53 = v4;
    v54._countAndFlagsBits = v46;
    v54._object = v47;
    String.append(_:)(v54);

    v55._countAndFlagsBits = 8250;
    v55._object = 0xE200000000000000;
    String.append(_:)(v55);
    v56 = v11;
    v57 = v7;
    v74(v11, v13, v7);
    v58 = (*(v8 + 88))(v11, v7);
    if (v58 == enum case for DecodingError.typeMismatch(_:))
    {
      (*(v8 + 96))(v11, v7);
      v59 = sub_1000039E8(&qword_1004A7168, &unk_100376CB0);
      v60 = v77;
      v61 = v75;
      (*(v77 + 32))(v75, &v56[*(v59 + 48)], v53);
    }

    else
    {
      v60 = v77;
      v61 = v75;
      if (v58 == enum case for DecodingError.valueNotFound(_:))
      {
        (*(v8 + 96))(v56, v7);
        v62 = sub_1000039E8(&qword_1004A7168, &unk_100376CB0);
        (*(v60 + 32))(v61, &v56[*(v62 + 48)], v53);
      }

      else if (v58 == enum case for DecodingError.keyNotFound(_:))
      {
        (*(v8 + 96))(v56, v7);
        v69 = sub_1000039E8(&qword_1004A7170, &qword_100376CC0);
        (*(v60 + 32))(v61, &v56[*(v69 + 48)], v53);
        sub_100003C3C(v56);
      }

      else
      {
        if (v58 != enum case for DecodingError.dataCorrupted(_:))
        {
          v70._countAndFlagsBits = Error.localizedDescription.getter();
          String.append(_:)(v70);

          v71 = *(v8 + 8);
          v71(v13, v7);
          sub_100013F2C(v73, &qword_1004AB540, &qword_1003F69E8);
          v71(v56, v7);
          return v80;
        }

        (*(v8 + 96))(v56, v7);
        (*(v60 + 32))(v61, v56, v53);
      }
    }

    v63 = v53;
    v64 = DecodingError.Context.debugDescription.getter();
    v66 = v65;
    (*(v60 + 8))(v61, v63);
    v67._countAndFlagsBits = v64;
    v67._object = v66;
    String.append(_:)(v67);

    (*(v8 + 8))(v13, v57);
    sub_100013F2C(v73, &qword_1004AB540, &qword_1003F69E8);
    return v80;
  }

  v29 = &v72 - v22;
  sub_1000039E8(&qword_1004AE488, &qword_1004017F8);
  v30 = swift_projectBox();
  sub_10026C6C4(v30, v29);
  v80 = 0;
  v81 = 0xE000000000000000;
  swift_errorRetain();
  _StringGuts.grow(_:)(45);

  v80 = 0xD000000000000027;
  v81 = 0x80000001004401B0;
  v31 = v29;
  sub_10026C6C4(v29, v21);
  if ((*(v78 + 48))(v21, 1, v76) == 1)
  {
    v32 = 0x6D6574737973;
    sub_100013F2C(v21, &qword_1004AB540, &qword_1003F69E8);
    v33 = 0xE600000000000000;
  }

  else
  {
    v32 = DInitConfigSource.description.getter();
    v33 = v48;
    sub_10026F33C(v21, type metadata accessor for DInitConfigSource);
  }

  v49._countAndFlagsBits = v32;
  v49._object = v33;
  String.append(_:)(v49);

  v50._countAndFlagsBits = 8250;
  v50._object = 0xE200000000000000;
  String.append(_:)(v50);
  swift_getErrorValue();
  v51._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v51);

  v28 = v80;
  sub_100013F2C(v31, &qword_1004AB540, &qword_1003F69E8);
  return v28;
}

uint64_t Array<A>.containsIndex.getter(uint64_t a1)
{
  v2 = type metadata accessor for ConfigLoader.LoadingKey(0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v18 - v7;
  v9 = sub_1000039E8(&qword_1004AE4D8, &qword_100401820);
  __chkstk_darwin(v9 - 8);
  v11 = &v18 - v10;
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v14 = *(v3 + 72);
    while (1)
    {
      sub_10027AE9C(v13, v8, type metadata accessor for ConfigLoader.LoadingKey);
      sub_10027AE9C(v8, v6, type metadata accessor for ConfigLoader.LoadingKey);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        break;
      }

      sub_10026F33C(v6, type metadata accessor for ConfigLoader.LoadingKey);
      sub_10026F33C(v8, type metadata accessor for ConfigLoader.LoadingKey);
      v13 += v14;
      if (!--v12)
      {
        goto LABEL_5;
      }
    }

    sub_1002787C8(v8, v11, type metadata accessor for ConfigLoader.LoadingKey);
    v16 = 0;
    v15 = 1;
  }

  else
  {
LABEL_5:
    v15 = 0;
    v16 = 1;
  }

  (*(v3 + 56))(v11, v16, 1, v2);
  sub_100013F2C(v11, &qword_1004AE4D8, &qword_100401820);
  return v15;
}

unint64_t *sub_100277058(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = sub_100277E80(result, a2, a3, a4);

    return v8;
  }

  return result;
}

void sub_1002770E8(uint64_t a1)
{
  if (*(*v1 + 16))
  {
    v3 = a1 + 56;
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(a1 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_100277784(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }
}

_BYTE *sub_100277214(uint64_t a1, void *a2)
{
  v5 = a2;
  if (!a2[2])
  {

    return &_swiftEmptySetSingleton;
  }

  v53 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v57 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v61 = a2 + 7;

  v15 = 0;
  v59 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_56;
      }

      if (v17 >= v12)
      {
        goto LABEL_53;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v60 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    v23 = Hasher._finalize()();
    v24 = -1 << *(v5 + 32);
    v2 = v23 & ~v24;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v59;
    v15 = v60;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v24;
  while (1)
  {
    v25 = (v5[6] + 16 * v2);
    v26 = *v25 == v22 && v25[1] == v21;
    if (v26 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v59;
  v27 = v60;
  v63 = v57;
  v64 = v60;
  v65 = v11;
  v62[0] = v59;
  v62[1] = v7;

  v29 = *(v5 + 32);
  v54 = ((1 << v29) + 63) >> 6;
  v14 = 8 * v54;
  if ((v29 & 0x3Fu) > 0xD)
  {
    goto LABEL_57;
  }

  while (1)
  {
    v55 = &v53;
    __chkstk_darwin(v28);
    v2 = &v53 - ((v30 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v61, v30);
    v31 = *(v2 + 8 * v8) & ~v4;
    v32 = v5[2];
    v58 = v2;
    *(v2 + 8 * v8) = v31;
    v33 = v32 - 1;
LABEL_23:
    v56 = v33;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v35 = v27;
    while (1)
    {
      v36 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v36 >= v12)
      {
        v5 = sub_100013140(v58, v54, v56, v5);
        goto LABEL_51;
      }

      v11 = *(v7 + 8 * v36);
      ++v35;
      if (v11)
      {
        v27 = v36;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v37 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v38 = *(v3 + 48);
            v60 = v27;
            v39 = (v38 + ((v27 << 10) | (16 * v37)));
            v40 = *v39;
            v4 = v39[1];
            Hasher.init(_seed:)();

            String.hash(into:)();
            v41 = Hasher._finalize()();
            v42 = -1 << *(v5 + 32);
            v8 = v41 & ~v42;
            v2 = v8 >> 6;
            v43 = 1 << v8;
            if (((1 << v8) & v61[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v27 = v60;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v44 = (v5[6] + 16 * v8);
          if (*v44 != v40 || v44[1] != v4)
          {
            v46 = ~v42;
            while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              v8 = (v8 + 1) & v46;
              v2 = v8 >> 6;
              v43 = 1 << v8;
              if (((1 << v8) & v61[v8 >> 6]) == 0)
              {
                v3 = v59;
                goto LABEL_45;
              }

              v47 = (v5[6] + 16 * v8);
              if (*v47 == v40 && v47[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v59;
          v34 = v58[v2];
          v58[v2] = v34 & ~v43;
          v26 = (v34 & v43) == 0;
          v27 = v60;
          if (!v26)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v33 = v56 - 1;
        if (__OFSUB__(v56, 1))
        {
          __break(1u);
        }

        if (v56 == 1)
        {

          v5 = &_swiftEmptySetSingleton;
          goto LABEL_51;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    v49 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v27 = v60;
  }

  v50 = swift_slowAlloc();
  memcpy(v50, v61, v49);
  v51 = v53;
  v52 = sub_1002778C0(v50, v54, v5, v2, v62);

  if (!v51)
  {

    v3 = v62[0];
    v57 = v63;
    v5 = v52;
LABEL_51:
    v13 = v3;
LABEL_53:
    sub_100014344(v13);
    return v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_100277784(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v2;
  v19 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100012670();
    v17 = v19;
  }

  v12 = *(*(v17 + 48) + 16 * v8);
  sub_100277AF8(v8, v14, v15, v16);
  *v2 = v19;
  return v12;
}

unint64_t *sub_1002778C0(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v31 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v30 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v28 = v11 + 1;
          }

          else
          {
            v28 = (a5[2] + 64) >> 6;
          }

          a5[3] = v28 - 1;
          a5[4] = 0;

          return sub_100013140(v31, a2, v30, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        Hasher.init(_seed:)();

        String.hash(into:)();
        v19 = Hasher._finalize()();
        v20 = -1 << *(a3 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v24 = (*(a3 + 48) + 16 * v21);
      if (*v24 != v18 || v24[1] != v17)
      {
        v26 = ~v20;
        while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v21 = (v21 + 1) & v26;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v27 = (*(a3 + 48) + 16 * v21);
          if (*v27 == v18 && v27[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v31[v22];
      v31[v22] = v10 & ~v23;
    }

    while ((v10 & v23) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v30 != 1)
      {
        continue;
      }

      return &_swiftEmptySetSingleton;
    }

    return result;
  }
}

unint64_t sub_100277AF8(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = *v4;
  v7 = *v4 + 56;
  v8 = -1 << *(*v4 + 32);
  v9 = (result + 1) & ~v8;
  if (((1 << v9) & *(v7 + 8 * (v9 >> 6))) != 0)
  {
    v10 = ~v8;

    v11 = _HashTable.previousHole(before:)();
    if ((*(v7 + 8 * (v9 >> 6)) & (1 << v9)) != 0)
    {
      v12 = (v11 + 1) & v10;
      do
      {
        Hasher.init(_seed:)();

        String.hash(into:)();
        v13 = Hasher._finalize()();

        v14 = v13 & v10;
        if (v5 >= v12)
        {
          if (v14 < v12)
          {
            goto LABEL_5;
          }
        }

        else if (v14 >= v12)
        {
          goto LABEL_11;
        }

        if (v5 >= v14)
        {
LABEL_11:
          v15 = *(v6 + 48);
          v16 = (v15 + 16 * v5);
          v17 = (v15 + 16 * v9);
          if (v5 != v9 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v5 = v9;
          }
        }

LABEL_5:
        v9 = (v9 + 1) & v10;
      }

      while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
    }

    *(v7 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v5) - 1;
  }

  else
  {
    *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v6 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v20;
    ++*(v6 + 36);
  }

  return result;
}

unint64_t *sub_100277CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;

  if (v7 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    __chkstk_darwin(isStackAllocationSafe);
    bzero(&v14 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0), v9);
    v11 = sub_100277E80((&v14 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0)), v8, a2, a1);
  }

  else
  {
    v13 = swift_slowAlloc();

    v11 = sub_100277058(v13, v8, a2, a1);
  }

  return v11;
}

unint64_t *sub_100277E80(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v50 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v53 = 0;
    v13 = 0;
    v14 = a3 + 56;
    v15 = 1 << *(a3 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(a3 + 56);
    v18 = (v15 + 63) >> 6;
    v19 = a4 + 56;
    while (v17)
    {
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_18:
      v51 = v20 | (v13 << 6);
      v23 = (*(a3 + 48) + 16 * v51);
      v25 = *v23;
      v24 = v23[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v26 = Hasher._finalize()();
      v27 = -1 << *(v4 + 32);
      v28 = v26 & ~v27;
      if ((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28))
      {
        v29 = ~v27;
        while (1)
        {
          v30 = (*(a4 + 48) + 16 * v28);
          v31 = *v30 == v25 && v30[1] == v24;
          if (v31 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          v28 = (v28 + 1) & v29;
          if (((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        *(v50 + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v51;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        if (v32)
        {
          __break(1u);
LABEL_30:
          v5 = a3;
LABEL_31:

          return sub_100013140(v50, a2, v53, v5);
        }
      }

      else
      {
LABEL_10:

        v4 = a4;
      }
    }

    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_30;
      }

      v22 = *(v14 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_18;
      }
    }

LABEL_54:
    __break(1u);
  }

  else
  {
    v53 = 0;
    v6 = 0;
    v7 = a4 + 56;
    v8 = 1 << *(a4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(a4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = a3 + 56;
    v49 = v11;
    while (v10)
    {
      v33 = __clz(__rbit64(v10));
      v52 = (v10 - 1) & v10;
LABEL_41:
      v36 = (*(v4 + 48) + 16 * (v33 | (v6 << 6)));
      v38 = *v36;
      v37 = v36[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v39 = Hasher._finalize()();
      v40 = -1 << *(v5 + 32);
      v41 = v39 & ~v40;
      v42 = v41 >> 6;
      v43 = 1 << v41;
      if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) != 0)
      {
        v44 = (*(v5 + 48) + 16 * v41);
        if (*v44 != v38 || v44[1] != v37)
        {
          v46 = ~v40;
          while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            v41 = (v41 + 1) & v46;
            v42 = v41 >> 6;
            v43 = 1 << v41;
            if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) == 0)
            {
              v5 = a3;
              goto LABEL_33;
            }

            v47 = (*(a3 + 48) + 16 * v41);
            if (*v47 == v38 && v47[1] == v37)
            {
              break;
            }
          }
        }

        v11 = v49;
        v50[v42] |= v43;
        v5 = a3;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        v10 = v52;
        if (v32)
        {
          __break(1u);
          goto LABEL_54;
        }
      }

      else
      {
LABEL_33:

        v4 = a4;
        v11 = v49;
        v10 = v52;
      }
    }

    v34 = v6;
    while (1)
    {
      v6 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        goto LABEL_31;
      }

      v35 = *(v7 + 8 * v6);
      ++v34;
      if (v35)
      {
        v33 = __clz(__rbit64(v35));
        v52 = (v35 - 1) & v35;
        goto LABEL_41;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t _s10DarwinInit12ConfigLoaderV10LoadingKeyO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DInitConfigSource(0);
  __chkstk_darwin(v4 - 8);
  v31 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ConfigLoader.LoadingKey(0);
  v7 = __chkstk_darwin(v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = (&v30 - v11);
  v13 = __chkstk_darwin(v10);
  v15 = &v30 - v14;
  __chkstk_darwin(v13);
  v17 = &v30 - v16;
  v18 = sub_1000039E8(&qword_1004AE268, &unk_100402DE0);
  v19 = __chkstk_darwin(v18 - 8);
  v21 = &v30 - v20;
  v22 = *(v19 + 56);
  sub_10027AE9C(a1, &v30 - v20, type metadata accessor for ConfigLoader.LoadingKey);
  sub_10027AE9C(a2, &v21[v22], type metadata accessor for ConfigLoader.LoadingKey);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_10027AE9C(v21, v12, type metadata accessor for ConfigLoader.LoadingKey);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_17;
      }

      v26 = *v12 == *&v21[v22];
    }

    else
    {
      sub_10027AE9C(v21, v9, type metadata accessor for ConfigLoader.LoadingKey);
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_17;
      }

      v26 = *v9 == v21[v22];
    }

    v25 = v26;
LABEL_15:
    sub_10026F33C(v21, type metadata accessor for ConfigLoader.LoadingKey);
    return v25 & 1;
  }

  if (EnumCaseMultiPayload)
  {
    sub_10027AE9C(v21, v15, type metadata accessor for ConfigLoader.LoadingKey);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_10026F33C(v15, type metadata accessor for DInitConfigSource);
      goto LABEL_17;
    }

    v27 = &v21[v22];
    v28 = v31;
    sub_1002787C8(v27, v31, type metadata accessor for DInitConfigSource);
    v25 = _s10DarwinInit17DInitConfigSourceO2eeoiySbAC_ACtFZ_0(v15, v28);
    sub_10026F33C(v28, type metadata accessor for DInitConfigSource);
    sub_10026F33C(v15, type metadata accessor for DInitConfigSource);
    goto LABEL_15;
  }

  sub_10027AE9C(v21, v17, type metadata accessor for ConfigLoader.LoadingKey);
  if (swift_getEnumCaseMultiPayload())
  {
LABEL_17:
    sub_100013F2C(v21, &qword_1004AE268, &unk_100402DE0);
    v25 = 0;
    return v25 & 1;
  }

  v24 = *v17 ^ v21[v22];
  sub_10026F33C(v21, type metadata accessor for ConfigLoader.LoadingKey);
  v25 = v24 ^ 1;
  return v25 & 1;
}

uint64_t _s10DarwinInit12ConfigOriginV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (sub_10024E120(*a1, *a2))
  {
    v7 = v3;
    v8 = v2;

    v5 = _s10DarwinInit4JSONO2eeoiySbAC_ACtFZ_0(&v8, &v7, v4);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

unint64_t sub_100278690()
{
  result = qword_1004AE4A0;
  if (!qword_1004AE4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE4A0);
  }

  return result;
}

uint64_t sub_1002786E4(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100003A94(&qword_1004AE4A8, &qword_100401810);
    sub_100278780(a2, type metadata accessor for ConfigLoader.LoadingKey, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100278780(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1002787C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_100278830()
{
  result = qword_1004AE508;
  if (!qword_1004AE508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE508);
  }

  return result;
}

unint64_t sub_100278884()
{
  result = qword_1004AE510;
  if (!qword_1004AE510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE510);
  }

  return result;
}

unint64_t sub_1002788D8()
{
  result = qword_1004AE518;
  if (!qword_1004AE518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE518);
  }

  return result;
}

unint64_t sub_10027892C()
{
  result = qword_1004AE520;
  if (!qword_1004AE520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE520);
  }

  return result;
}

unint64_t sub_100278980()
{
  result = qword_1004AE528;
  if (!qword_1004AE528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE528);
  }

  return result;
}

unint64_t sub_1002789D4()
{
  result = qword_1004AE538;
  if (!qword_1004AE538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE538);
  }

  return result;
}

unint64_t sub_100278A28()
{
  result = qword_1004AE540;
  if (!qword_1004AE540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE540);
  }

  return result;
}

unint64_t sub_100278A7C()
{
  result = qword_1004AE570;
  if (!qword_1004AE570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE570);
  }

  return result;
}

unint64_t sub_100278AD0()
{
  result = qword_1004AE580;
  if (!qword_1004AE580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE580);
  }

  return result;
}

uint64_t sub_100278B24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 == 2)
  {
  }

  return result;
}

uint64_t sub_100278B3C(void *a1)
{
  v31 = sub_1000039E8(&qword_1004AE950, &qword_100402DB8);
  v28 = *(v31 - 8);
  __chkstk_darwin(v31);
  v33 = &v26 - v2;
  v32 = sub_1000039E8(&qword_1004AE958, &qword_100402DC0);
  v30 = *(v32 - 8);
  __chkstk_darwin(v32);
  v4 = &v26 - v3;
  v5 = sub_1000039E8(&qword_1004AE960, &qword_100402DC8);
  v29 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v26 - v6;
  v8 = sub_1000039E8(&qword_1004AE968, &unk_100402DD0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - v10;
  v12 = a1[3];
  v35 = a1;
  sub_10000E2A8(a1, v12);
  sub_10027ABFC();
  v13 = v34;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v13)
  {
    v27 = v5;
    v14 = v33;
    v34 = v9;
    v15 = v11;
    v16 = KeyedDecodingContainer.allKeys.getter();
    v17 = (2 * *(v16 + 16)) | 1;
    v36 = v16;
    v37 = v16 + 32;
    v38 = 0;
    v39 = v17;
    v18 = sub_100192F58();
    if (v18 != 3 && v38 == v39 >> 1)
    {
      v9 = v18;
      if (v18)
      {
        if (v18 == 1)
        {
          v40 = 1;
          sub_10027ACA4();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v19 = v34;
          (*(v30 + 8))(v4, v32);
          (*(v19 + 8))(v11, v8);
LABEL_13:
          swift_unknownObjectRelease();
          sub_100003C3C(v35);
          return v9;
        }

        v40 = 2;
        sub_10027AC50();
        v24 = v11;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v25 = v34;
        (*(v28 + 8))(v14, v31);
      }

      else
      {
        v40 = 0;
        sub_10027ACF8();
        v24 = v11;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v29 + 8))(v7, v27);
        v25 = v34;
      }

      (*(v25 + 8))(v24, v8);
      goto LABEL_13;
    }

    v20 = type metadata accessor for DecodingError();
    swift_allocError();
    v22 = v21;
    v9 = *(sub_1000039E8(&qword_1004A7168, &unk_100376CB0) + 48);
    *v22 = &type metadata for ConfigLoader.VersionInfo;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v20 - 8) + 104))(v22, enum case for DecodingError.typeMismatch(_:), v20);
    swift_willThrow();
    (*(v34 + 8))(v15, v8);
    swift_unknownObjectRelease();
  }

  sub_100003C3C(v35);
  return v9;
}

void *sub_1002790AC(void *a1)
{
  v31 = sub_1000039E8(&qword_1004AE930, &qword_100402D98);
  v34 = *(v31 - 8);
  __chkstk_darwin(v31);
  v36 = &v29 - v2;
  v35 = sub_1000039E8(&qword_1004AE938, &qword_100402DA0);
  v33 = *(v35 - 8);
  __chkstk_darwin(v35);
  v4 = &v29 - v3;
  v5 = sub_1000039E8(&qword_1004AE940, &qword_100402DA8);
  v32 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v29 - v6;
  v8 = sub_1000039E8(&qword_1004AE948, &qword_100402DB0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v29 - v10;
  v12 = a1[3];
  v38 = a1;
  v13 = sub_10000E2A8(a1, v12);
  sub_10027AD4C();
  v14 = v37;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v14)
  {
    v30 = v5;
    v37 = 0;
    v16 = v35;
    v15 = v36;
    v17 = v9;
    v18 = KeyedDecodingContainer.allKeys.getter();
    v19 = (2 * *(v18 + 16)) | 1;
    v39 = v18;
    v40 = v18 + 32;
    v41 = 0;
    v42 = v19;
    v20 = sub_100192F58();
    if (v20 == 3 || v41 != v42 >> 1)
    {
      v22 = type metadata accessor for DecodingError();
      swift_allocError();
      v24 = v23;
      sub_1000039E8(&qword_1004A7168, &unk_100376CB0);
      *v24 = &type metadata for ConfigLoader.DetectedVersion;
      v13 = v11;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v22 - 8) + 104))(v24, enum case for DecodingError.typeMismatch(_:), v22);
      swift_willThrow();
    }

    else if (v20)
    {
      if (v20 == 1)
      {
        v43 = 1;
        sub_10027ADF4();
        v13 = v11;
        v21 = v37;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v21)
        {
          v13 = KeyedDecodingContainer.decode(_:forKey:)();
          (*(v33 + 8))(v4, v16);
          (*(v9 + 8))(v11, v8);
          swift_unknownObjectRelease();
          goto LABEL_10;
        }
      }

      else
      {
        v43 = 2;
        sub_10027ADA0();
        v13 = v11;
        v27 = v37;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v27)
        {
          v28 = v31;
          v13 = KeyedDecodingContainer.decode(_:forKey:)();
          (*(v34 + 8))(v15, v28);
          (*(v9 + 8))(v11, v8);
          swift_unknownObjectRelease();
          goto LABEL_10;
        }
      }
    }

    else
    {
      v43 = 0;
      sub_10027AE48();
      v13 = v11;
      v26 = v37;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (!v26)
      {
        (*(v32 + 8))(v7, v30);
        (*(v9 + 8))(v11, v8);
        swift_unknownObjectRelease();
        v13 = 0;
        goto LABEL_10;
      }
    }

    (*(v17 + 8))(v11, v8);
    swift_unknownObjectRelease();
  }

LABEL_10:
  sub_100003C3C(v38);
  return v13;
}

uint64_t _s10DarwinInit12ConfigLoaderV13detectVersion4rootAC08DetectedF0OSDySSAA4JSONOG_tFZ_0(uint64_t a1)
{
  sub_10000DFF4(0, 43, 0);
  v2 = 0;
  do
  {
    v3 = DInitConfig.CodingKeys.rawValue.getter(*(&off_100485168 + v2 + 32));
    v6 = _swiftEmptyArrayStorage[2];
    v5 = _swiftEmptyArrayStorage[3];
    if (v6 >= v5 >> 1)
    {
      v8 = v3;
      v9 = v4;
      sub_10000DFF4((v5 > 1), v6 + 1, 1);
      v4 = v9;
      v3 = v8;
    }

    ++v2;
    _swiftEmptyArrayStorage[2] = v6 + 1;
    v7 = &_swiftEmptyArrayStorage[2 * v6];
    v7[4] = v3;
    v7[5] = v4;
  }

  while (v2 != 43);
  v101 = a1;
  v10 = 0x69746E6568747561;
  v11 = sub_100013D10(_swiftEmptyArrayStorage);

  sub_10000DFF4(0, 22, 0);
  v12 = 0;
  do
  {
    v13 = 0xEE006E6F69746163;
    v14 = 0x69746E6568747561;
    switch(*(&off_1004851B8 + v12 + 32))
    {
      case 1:
        v13 = 0xE800000000000000;
        v14 = 0x73746F6F725F6163;
        break;
      case 2:
        v14 = 0xD000000000000016;
        v13 = 0x800000010043D6F0;
        break;
      case 3:
        v13 = 0xE700000000000000;
        v14 = 0x78657470797263;
        break;
      case 4:
        v13 = 0xE500000000000000;
        v14 = 0x73746F6F72;
        break;
      case 5:
        v13 = 0xE600000000000000;
        v14 = 0x6F6C76616964;
        break;
      case 6:
        v14 = 0x5F65727574616566;
        v13 = 0xED00007367616C66;
        break;
      case 7:
        v13 = 0xE600000000000000;
        v14 = 0x6873696E6966;
        break;
      case 8:
        v14 = 0x696669746E656469;
        v13 = 0xEE006E6F69746163;
        break;
      case 9:
        v13 = 0xE300000000000000;
        v14 = 6778732;
        break;
      case 0xA:
        v13 = 0xE400000000000000;
        v14 = 1635018093;
        break;
      case 0xB:
        v14 = 0x766974617272616ELL;
        v13 = 0xE900000000000065;
        break;
      case 0xC:
        v13 = 0xE700000000000000;
        v14 = 0x6B726F7774656ELL;
        break;
      case 0xD:
        v13 = 0xE900000000000073;
        v14 = 0x636974796C616E61;
        break;
      case 0xE:
        v13 = 0xE800000000000000;
        v14 = 0x736567616B636170;
        break;
      case 0xF:
        v14 = 0x6E65726566657270;
        v13 = 0xEB00000000736563;
        break;
      case 0x10:
        v14 = 0x635F657275636573;
        v13 = 0xED00006769666E6FLL;
        break;
      case 0x11:
        v13 = 0xE300000000000000;
        v14 = 6845299;
        break;
      case 0x12:
        v13 = 0xE500000000000000;
        v14 = 0x7472617473;
        break;
      case 0x13:
        v13 = 0xE800000000000000;
        v14 = 0x6E6970736C696174;
        break;
      case 0x14:
        v13 = 0xE500000000000000;
        v14 = 0x7372657375;
        break;
      case 0x15:
        v13 = 0xE700000000000000;
        v14 = 0x73656D756C6F76;
        break;
      default:
        break;
    }

    v16 = _swiftEmptyArrayStorage[2];
    v15 = _swiftEmptyArrayStorage[3];
    if (v16 >= v15 >> 1)
    {
      sub_10000DFF4((v15 > 1), v16 + 1, 1);
    }

    ++v12;
    _swiftEmptyArrayStorage[2] = v16 + 1;
    v17 = &_swiftEmptyArrayStorage[2 * v16];
    v17[4] = v14;
    v17[5] = v13;
  }

  while (v12 != 22);
  v18 = sub_100013D10(_swiftEmptyArrayStorage);

  v99 = v18;
  v21 = sub_100277CBC(v18, v11, v19, v20);
  v100 = v21;
  if (v21[2] <= *(v11 + 16) >> 3)
  {
    sub_1002770E8(v21);
  }

  else
  {
    v11 = sub_100277214(v21, v11);
  }

  v22 = 0;
  v23 = 1 << *(v11 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & *(v11 + 56);
  v26 = (v23 + 63) >> 6;
  while (1)
  {
    do
    {
      if (v25)
      {
        v27 = v25;
      }

      else
      {
        do
        {
          v28 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:

            goto LABEL_113;
          }

          if (v28 >= v26)
          {

            if (*(v100 + 16) <= v99[2] >> 3)
            {
              sub_1002770E8(v100);

              v33 = v99;
            }

            else
            {
              v33 = sub_100277214(v100, v99);
            }

            v34 = 0;
            v35 = 1 << v33[32];
            v36 = -1;
            if (v35 < 64)
            {
              v36 = ~(-1 << v35);
            }

            v37 = v36 & *(v33 + 7);
            v38 = (v35 + 63) >> 6;
            while (1)
            {
              if (v37)
              {
                v39 = v37;
                goto LABEL_58;
              }

              do
              {
                v40 = v34 + 1;
                if (__OFADD__(v34, 1))
                {
                  goto LABEL_111;
                }

                if (v40 >= v38)
                {

                  sub_10000DFF4(0, 3, 0);
                  v47 = _swiftEmptyArrayStorage[2];
                  v46 = _swiftEmptyArrayStorage[3];
                  v48 = v47 + 1;
                  if (v47 >= v46 >> 1)
                  {
                    sub_10000DFF4((v46 > 1), v47 + 1, 1);
                  }

                  _swiftEmptyArrayStorage[2] = v48;
                  v49 = &_swiftEmptyArrayStorage[2 * v47];
                  v49[4] = 0x6E65726566657270;
                  v49[5] = 0xEB00000000736563;
                  v45 = 0xE700000000000000;
                  v50 = _swiftEmptyArrayStorage[3];
                  v51 = v47 + 2;
                  if (v48 >= v50 >> 1)
                  {
                    sub_10000DFF4((v50 > 1), v51, 1);
                  }

                  _swiftEmptyArrayStorage[2] = v51;
                  v52 = &_swiftEmptyArrayStorage[2 * v48];
                  v52[4] = 0x6B726F7774656ELL;
                  v52[5] = 0xE700000000000000;
                  v54 = _swiftEmptyArrayStorage[2];
                  v53 = _swiftEmptyArrayStorage[3];
                  v55 = v54 + 1;
                  if (v54 >= v53 >> 1)
                  {
                    sub_10000DFF4((v53 > 1), v54 + 1, 1);
                  }

                  v56 = 0;
                  _swiftEmptyArrayStorage[2] = v55;
                  v57 = &_swiftEmptyArrayStorage[2 * v54];
                  v57[4] = 6845299;
                  v57[5] = 0xE300000000000000;
                  v58 = &_swiftEmptyArrayStorage[5];
                  v10 = v101;
                  do
                  {
                    if (v56 >= _swiftEmptyArrayStorage[2])
                    {
                      __break(1u);
LABEL_120:

                      v102 = 778530668;
                      v97._countAndFlagsBits = v37;
                      v97._object = v45;
                      String.append(_:)(v97);

                      goto LABEL_121;
                    }

                    if (*(v101 + 16))
                    {
                      v45 = *(v58 - 1);
                      v59 = *v58;

                      sub_100013364(v45, v59);
                      if (v60)
                      {

                        return v45;
                      }
                    }

                    ++v56;
                    v58 += 2;
                  }

                  while (v55 != v56);

                  if (*(v101 + 16))
                  {
                    v45 = 0x78657470797263;
                    v61 = sub_100013364(0x78657470797263, 0xE700000000000000);
                    if ((v62 & 1) == 0)
                    {
                      goto LABEL_86;
                    }

                    v63 = *(*(v101 + 56) + 8 * v61);
                    if (v63 >> 61 == 5)
                    {
                      v64 = *((v63 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

                      v65 = *(v64 + 16);

                      if (!v65 || (sub_100013364(7107189, 0xE300000000000000), (v66 & 1) == 0))
                      {

                        return v45;
                      }

                      v102 = 0x78657470797263;
                      v67._countAndFlagsBits = 46;
                      v67._object = 0xE100000000000000;
                      String.append(_:)(v67);
                      v68._countAndFlagsBits = 7107189;
                      v68._object = 0xE300000000000000;
                      String.append(_:)(v68);

LABEL_121:

                      return v102;
                    }

                    if (v63 >> 61 == 4)
                    {

                      return v45;
                    }

LABEL_86:
                    if (*(v101 + 16))
                    {
                      v69 = sub_100013364(6778732, 0xE300000000000000);
                      if (v70)
                      {
                        v71 = *(*(v101 + 56) + 8 * v69);
                        if (v71 >> 61 == 5)
                        {
                          v72 = *((v71 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

                          sub_10000DFF4(0, 2, 0);
                          v74 = _swiftEmptyArrayStorage[2];
                          v73 = _swiftEmptyArrayStorage[3];
                          v75 = v73 >> 1;
                          v45 = v74 + 1;
                          if (v73 >> 1 <= v74)
                          {
LABEL_127:
                            sub_10000DFF4((v73 > 1), v45, 1);
                            v73 = _swiftEmptyArrayStorage[3];
                            v75 = v73 >> 1;
                          }

                          _swiftEmptyArrayStorage[2] = v45;
                          v76 = &_swiftEmptyArrayStorage[2 * v74];
                          strcpy(v76 + 32, "privacy_level");
                          *(v76 + 23) = -4864;
                          v77 = v74 + 2;
                          if (v75 < (v74 + 2))
                          {
                            sub_10000DFF4((v73 > 1), v74 + 2, 1);
                          }

                          v74 = 0;
                          _swiftEmptyArrayStorage[2] = v77;
                          v78 = &_swiftEmptyArrayStorage[2 * v45];
                          v78[4] = 0x74736973726570;
                          v78[5] = 0xE700000000000000;
                          v79 = &_swiftEmptyArrayStorage[5];
                          while (1)
                          {
                            v73 = _swiftEmptyArrayStorage[2];
                            if (v74 >= v73)
                            {
                              break;
                            }

                            if (*(v72 + 16))
                            {
                              v80 = *(v79 - 1);
                              v45 = *v79;

                              sub_100013364(v80, v45);
                              if (v81)
                              {

                                v82._countAndFlagsBits = v80;
                                v82._object = v45;
                                String.append(_:)(v82);

                                return 778530668;
                              }
                            }

                            ++v74;
                            v79 += 2;
                            if (v77 == v74)
                            {

                              sub_10000DFF4(0, 2, 0);
                              v84 = _swiftEmptyArrayStorage[2];
                              v83 = _swiftEmptyArrayStorage[3];
                              v85 = v83 >> 1;
                              v45 = v84 + 1;
                              if (v83 >> 1 <= v84)
                              {
                                sub_10000DFF4((v83 > 1), v84 + 1, 1);
                                v83 = _swiftEmptyArrayStorage[3];
                                v85 = v83 >> 1;
                              }

                              _swiftEmptyArrayStorage[2] = v45;
                              v86 = &_swiftEmptyArrayStorage[2 * v84];
                              v86[4] = 0xD000000000000018;
                              v86[5] = 0x800000010043D500;
                              v87 = v84 + 2;
                              if (v85 < (v84 + 2))
                              {
                                sub_10000DFF4((v83 > 1), v84 + 2, 1);
                              }

                              v74 = 0;
                              _swiftEmptyArrayStorage[2] = v87;
                              v88 = &_swiftEmptyArrayStorage[2 * v45];
                              v88[4] = 0xD000000000000016;
                              v88[5] = 0x800000010043D520;
                              v89 = &_swiftEmptyArrayStorage[5];
                              while (1)
                              {
                                v73 = _swiftEmptyArrayStorage[2];
                                if (v74 >= v73)
                                {
                                  goto LABEL_126;
                                }

                                if (*(v72 + 16))
                                {
                                  v37 = *(v89 - 1);
                                  v45 = *v89;

                                  sub_100013364(v37, v45);
                                  if (v90)
                                  {
                                    goto LABEL_120;
                                  }
                                }

                                ++v74;
                                v89 += 2;
                                if (v87 == v74)
                                {
                                  goto LABEL_112;
                                }
                              }
                            }
                          }

                          __break(1u);
LABEL_126:
                          __break(1u);
                          goto LABEL_127;
                        }
                      }

LABEL_113:
                      if (*(v10 + 16))
                      {
                        v91 = sub_100013364(0x6E6970736C696174, 0xE800000000000000);
                        if (v92)
                        {
                          v93 = *(*(v10 + 56) + 8 * v91);
                          if (v93 >> 61 == 5)
                          {
                            if (*(*((v93 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) + 16))
                            {

                              sub_100013364(0xD000000000000010, 0x800000010043D340);
                              if (v94)
                              {

                                v102 = 0x6E6970736C696174;
                                v95._countAndFlagsBits = 46;
                                v95._object = 0xE100000000000000;
                                String.append(_:)(v95);
                                v96._object = 0x800000010043D340;
                                v96._countAndFlagsBits = 0xD000000000000010;
                                String.append(_:)(v96);

                                goto LABEL_121;
                              }
                            }
                          }
                        }
                      }
                    }
                  }

                  return 0;
                }

                v39 = *&v33[8 * v40 + 56];
                ++v34;
              }

              while (!v39);
              v34 = v40;
LABEL_58:
              v37 = (v39 - 1) & v39;
              if (!*(v101 + 16))
              {
                continue;
              }

              v41 = (*(v33 + 6) + ((v34 << 10) | (16 * __clz(__rbit64(v39)))));
              v43 = *v41;
              v42 = v41[1];

              sub_100013364(v43, v42);
              if (v44)
              {

                return v43;
              }
            }
          }

          v27 = *(v11 + 56 + 8 * v28);
          ++v22;
        }

        while (!v27);
        v22 = v28;
      }

      v25 = (v27 - 1) & v27;
    }

    while (!*(v101 + 16));
    v29 = (*(v11 + 48) + ((v22 << 10) | (16 * __clz(__rbit64(v27)))));
    v31 = *v29;
    v30 = v29[1];

    sub_100013364(v31, v30);
    if (v32)
    {
      break;
    }
  }

  return v31;
}

unint64_t sub_10027ABFC()
{
  result = qword_1004AE5A8;
  if (!qword_1004AE5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE5A8);
  }

  return result;
}

unint64_t sub_10027AC50()
{
  result = qword_1004AE5B0;
  if (!qword_1004AE5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE5B0);
  }

  return result;
}

unint64_t sub_10027ACA4()
{
  result = qword_1004AE5B8;
  if (!qword_1004AE5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE5B8);
  }

  return result;
}

unint64_t sub_10027ACF8()
{
  result = qword_1004AE5C0;
  if (!qword_1004AE5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE5C0);
  }

  return result;
}

unint64_t sub_10027AD4C()
{
  result = qword_1004AE5E8;
  if (!qword_1004AE5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE5E8);
  }

  return result;
}

unint64_t sub_10027ADA0()
{
  result = qword_1004AE5F0;
  if (!qword_1004AE5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE5F0);
  }

  return result;
}

unint64_t sub_10027ADF4()
{
  result = qword_1004AE5F8;
  if (!qword_1004AE5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE5F8);
  }

  return result;
}

unint64_t sub_10027AE48()
{
  result = qword_1004AE600;
  if (!qword_1004AE600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE600);
  }

  return result;
}

uint64_t sub_10027AE9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_10027AF08()
{
  result = qword_1004AE610;
  if (!qword_1004AE610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE610);
  }

  return result;
}

unint64_t sub_10027AFC4()
{
  result = qword_1004AE620[0];
  if (!qword_1004AE620[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1004AE620);
  }

  return result;
}

uint64_t sub_10027B034(uint64_t a1)
{
  result = type metadata accessor for Optional();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10027B0A4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_28;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_28;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 <= 3)
          {
            v13 = v7;
          }

          else
          {
            v13 = 4;
          }

          if (v13 > 2)
          {
            if (v13 == 3)
            {
              v14 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v14 = *a1;
            }
          }

          else if (v13 == 1)
          {
            v14 = *a1;
          }

          else
          {
            v14 = *a1;
          }
        }

        else
        {
          v14 = 0;
        }

        return v6 + (v14 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_28:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

char *sub_10027B224(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (v7)
  {
    v9 = *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v8 = 0;
    v9 = *(*(*(a4 + 16) - 8) + 64) + 1;
  }

  v10 = a3 >= v8;
  v11 = a3 - v8;
  if (v11 == 0 || !v10)
  {
    goto LABEL_16;
  }

  if (v9 > 3)
  {
    v5 = 1;
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v12 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
  if (!HIWORD(v12))
  {
    if (v12 < 0x100)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    if (v12 >= 2)
    {
      v5 = v13;
    }

    else
    {
      v5 = 0;
    }

LABEL_16:
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v5 = 4;
  if (v8 < a2)
  {
LABEL_17:
    v14 = ~v8 + a2;
    if (v9 < 4)
    {
      v16 = (v14 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v14 & ~(-1 << (8 * v9));
        v18 = result;
        bzero(result, v9);
        result = v18;
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *v18 = v17;
            if (v5 > 1)
            {
LABEL_44:
              if (v5 == 2)
              {
                *&result[v9] = v16;
              }

              else
              {
                *&result[v9] = v16;
              }

              return result;
            }
          }

          else
          {
            *v18 = v14;
            if (v5 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *v18 = v17;
        v18[2] = BYTE2(v17);
      }

      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v15 = result;
      bzero(result, v9);
      result = v15;
      *v15 = v14;
      v16 = 1;
      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v5)
    {
      result[v9] = v16;
    }

    return result;
  }

LABEL_26:
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *&result[v9] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_33;
    }

    *&result[v9] = 0;
  }

  else if (v5)
  {
    result[v9] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return result;
  }

LABEL_33:
  if (v7 >= 2)
  {
    v19 = *(v6 + 56);

    return v19();
  }

  return result;
}

__n128 sub_10027B474(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_10027B498(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 89))
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

uint64_t sub_10027B4E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10027B550(uint64_t a1)
{
  result = type metadata accessor for DInitConfigSource(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void sub_10027B5F0(uint64_t a1)
{
  sub_10027B664(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Config(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_10027B664(uint64_t a1)
{
  if (!qword_1004AE7D0)
  {
    type metadata accessor for DInitConfigSource(255);
    sub_100003A94(&qword_1004AE4A8, &qword_100401810);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1004AE7D0);
    }
  }
}

uint64_t sub_10027B6E0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 41))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10027B728(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_10027B798(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_10027B7B4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10027B7FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_10027B840(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_10027B868(unint64_t *a1)
{
  if ((*a1 & 0x8000000000000000) == 0)
  {
    return *a1 >> 61;
  }

  else
  {
    return (*a1 >> 3) + 4;
  }
}

uint64_t sub_10027B884(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7C && *(a1 + 8))
  {
    return (*a1 + 124);
  }

  v3 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7B)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_10027B8E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7B)
  {
    *result = a2 - 124;
    if (a3 >= 0x7C)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7C)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_10027B940(void *result, uint64_t a2)
{
  if (a2 < 4)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 61);
  }

  else
  {
    *result = (8 * (a2 - 4)) | 0x8000000000000000;
  }

  return result;
}

unint64_t sub_10027BA60()
{
  result = qword_1004AE800;
  if (!qword_1004AE800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE800);
  }

  return result;
}

unint64_t sub_10027BAB8()
{
  result = qword_1004AE808;
  if (!qword_1004AE808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE808);
  }

  return result;
}

unint64_t sub_10027BB10()
{
  result = qword_1004AE810;
  if (!qword_1004AE810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE810);
  }

  return result;
}

unint64_t sub_10027BB68()
{
  result = qword_1004AE818;
  if (!qword_1004AE818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE818);
  }

  return result;
}

unint64_t sub_10027BBC0()
{
  result = qword_1004AE820;
  if (!qword_1004AE820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE820);
  }

  return result;
}

unint64_t sub_10027BC18()
{
  result = qword_1004AE828;
  if (!qword_1004AE828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE828);
  }

  return result;
}

unint64_t sub_10027BC70()
{
  result = qword_1004AE830;
  if (!qword_1004AE830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE830);
  }

  return result;
}

unint64_t sub_10027BCC8()
{
  result = qword_1004AE838;
  if (!qword_1004AE838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE838);
  }

  return result;
}

unint64_t sub_10027BD20()
{
  result = qword_1004AE840;
  if (!qword_1004AE840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE840);
  }

  return result;
}

unint64_t sub_10027BD78()
{
  result = qword_1004AE848;
  if (!qword_1004AE848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE848);
  }

  return result;
}

unint64_t sub_10027BDD0()
{
  result = qword_1004AE850;
  if (!qword_1004AE850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE850);
  }

  return result;
}

unint64_t sub_10027BE28()
{
  result = qword_1004AE858;
  if (!qword_1004AE858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE858);
  }

  return result;
}

unint64_t sub_10027BE80()
{
  result = qword_1004AE860;
  if (!qword_1004AE860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE860);
  }

  return result;
}

unint64_t sub_10027BED8()
{
  result = qword_1004AE868;
  if (!qword_1004AE868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE868);
  }

  return result;
}

unint64_t sub_10027BF30()
{
  result = qword_1004AE870;
  if (!qword_1004AE870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE870);
  }

  return result;
}

unint64_t sub_10027BF88()
{
  result = qword_1004AE878;
  if (!qword_1004AE878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE878);
  }

  return result;
}

unint64_t sub_10027BFE0()
{
  result = qword_1004AE880;
  if (!qword_1004AE880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE880);
  }

  return result;
}

unint64_t sub_10027C038()
{
  result = qword_1004AE888;
  if (!qword_1004AE888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE888);
  }

  return result;
}

unint64_t sub_10027C090()
{
  result = qword_1004AE890;
  if (!qword_1004AE890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE890);
  }

  return result;
}

unint64_t sub_10027C0E8()
{
  result = qword_1004AE898;
  if (!qword_1004AE898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE898);
  }

  return result;
}

unint64_t sub_10027C140()
{
  result = qword_1004AE8A0;
  if (!qword_1004AE8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE8A0);
  }

  return result;
}

unint64_t sub_10027C198()
{
  result = qword_1004AE8A8;
  if (!qword_1004AE8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE8A8);
  }

  return result;
}

unint64_t sub_10027C1F0()
{
  result = qword_1004AE8B0;
  if (!qword_1004AE8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE8B0);
  }

  return result;
}

unint64_t sub_10027C248()
{
  result = qword_1004AE8B8;
  if (!qword_1004AE8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE8B8);
  }

  return result;
}

unint64_t sub_10027C2A0()
{
  result = qword_1004AE8C0;
  if (!qword_1004AE8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE8C0);
  }

  return result;
}

unint64_t sub_10027C2F8()
{
  result = qword_1004AE8C8;
  if (!qword_1004AE8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE8C8);
  }

  return result;
}

unint64_t sub_10027C350()
{
  result = qword_1004AE8D0;
  if (!qword_1004AE8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE8D0);
  }

  return result;
}

unint64_t sub_10027C3A8()
{
  result = qword_1004AE8D8;
  if (!qword_1004AE8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE8D8);
  }

  return result;
}

unint64_t sub_10027C400()
{
  result = qword_1004AE8E0;
  if (!qword_1004AE8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE8E0);
  }

  return result;
}

unint64_t sub_10027C458()
{
  result = qword_1004AE8E8;
  if (!qword_1004AE8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE8E8);
  }

  return result;
}

unint64_t sub_10027C4B0()
{
  result = qword_1004AE8F0;
  if (!qword_1004AE8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE8F0);
  }

  return result;
}

unint64_t sub_10027C508()
{
  result = qword_1004AE8F8;
  if (!qword_1004AE8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE8F8);
  }

  return result;
}

unint64_t sub_10027C560()
{
  result = qword_1004AE900;
  if (!qword_1004AE900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE900);
  }

  return result;
}

unint64_t sub_10027C5B8()
{
  result = qword_1004AE908;
  if (!qword_1004AE908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE908);
  }

  return result;
}

unint64_t sub_10027C610()
{
  result = qword_1004AE910;
  if (!qword_1004AE910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE910);
  }

  return result;
}

unint64_t sub_10027C668()
{
  result = qword_1004AE918;
  if (!qword_1004AE918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE918);
  }

  return result;
}

unint64_t sub_10027C6C0()
{
  result = qword_1004AE920;
  if (!qword_1004AE920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE920);
  }

  return result;
}

unint64_t sub_10027C718()
{
  result = qword_1004AE928;
  if (!qword_1004AE928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE928);
  }

  return result;
}

uint64_t sub_10027C76C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D6172766ELL && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656372756F73 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7865646E69 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_10027C8C4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 12662 && a2 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 12918 && a2 == 0xE200000000000000)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_10027C9CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x756F756769626D61 && a2 == 0xE900000000000073;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 12662 && a2 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 12918 && a2 == 0xE200000000000000)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

unint64_t sub_10027CADC()
{
  result = qword_1004AE970;
  if (!qword_1004AE970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE970);
  }

  return result;
}

uint64_t sub_10027CB30()
{

  return _swift_deallocObject(v0, 24, 7);
}

double sub_10027CB68(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_10027CB80(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_10027CB98()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10027CBE0()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10027CC3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v4;
}

unint64_t sub_10027CC54()
{
  result = qword_1004AE980;
  if (!qword_1004AE980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE980);
  }

  return result;
}

uint64_t sub_10027CCA8()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10027CCFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Config(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10027CD60(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 1u)
  {
  }

  return result;
}

uint64_t sub_10027CD8C()
{
  v1 = *v0;
  v2 = (*(**v0 + 192))();
  v3 = *(*v1 + 264);
  if (v2 < v3())
  {
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(97);
    v4._countAndFlagsBits = 0xD00000000000005FLL;
    v4._object = 0x800000010043ED70;
    String.append(_:)(v4);
    *__src = v3();
    v5._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v5);
LABEL_59:

    v71 = __dst[0];
    v72 = __dst[1];
    sub_1001E941C();
    v73 = swift_allocError();
    *v74 = v71;
    v74[1] = v72;
    v85 = v73;
    return swift_willThrow();
  }

  v6 = 0;
  do
  {
    v9 = *(&off_100485168 + v6++ + 32);
    switch(v9)
    {
      case 1:
        (*(*v1 + 216))(__src);
        memcpy(__dst, __src, sizeof(__dst));
        v28 = __dst[1];

        sub_1001D711C(__dst);
        (*(*v1 + 592))(v28);
        goto LABEL_5;
      case 2:
        (*(*v1 + 216))(__src);
        memcpy(__dst, __src, sizeof(__dst));
        v19 = __dst[2];
        v20 = __dst[3];
        v21 = __dst[4];
        v22 = __dst[5];
        v78[0] = __dst[2];
        v78[1] = __dst[3];
        v78[2] = __dst[4];
        v78[3] = __dst[5];
        v79 = __dst[6];
        sub_1001D7A24(__dst[2], __dst[3], __dst[4], __dst[5]);
        sub_1001D711C(__dst);
        (*(*v1 + 392))(v78);
        sub_1001D71F4(v19, v20, v21, v22);
        break;
      case 3:
        (*(*v1 + 216))(__src);
        memcpy(__dst, __src, sizeof(__dst));
        v25 = __dst[7];
        v26 = __dst[8];
        sub_1001D6F74(__dst[7], __dst[8]);
        sub_1001D711C(__dst);
        (*(*v1 + 600))(v25, v26);
        v8 = sub_1001D6F88(v25, v26);
        break;
      case 4:
        (*(*v1 + 216))(__src);
        memcpy(__dst, __src, sizeof(__dst));
        v80[2] = *&__src[104];
        v80[3] = *&__src[120];
        v80[4] = *&__src[136];
        v80[5] = *&__src[152];
        v80[0] = *&__src[72];
        v80[1] = *&__src[88];
        v16 = &qword_1004AB940;
        v17 = &qword_1003F8E20;
        sub_100013E54(&__dst[9], v75, &qword_1004AB940, &qword_1003F8E20);
        sub_1001D711C(__dst);
        (*(*v1 + 400))(v80);
        v18 = &__dst[9];
        goto LABEL_35;
      case 5:
        (*(*v1 + 216))(__src);
        memcpy(__dst, __src, sizeof(__dst));
        v38 = __dst[21];

        sub_1001D711C(__dst);
        (*(*v1 + 408))(v38);
        goto LABEL_5;
      case 6:
        (*(*v1 + 216))(__src);
        memcpy(__dst, __src, sizeof(__dst));
        v41 = __dst[22];

        sub_1001D711C(__dst);
        (*(*v1 + 416))(v41);
        goto LABEL_5;
      case 7:
        (*(*v1 + 216))(__src);
        memcpy(__dst, __src, sizeof(__dst));
        v27 = __dst[23];

        sub_1001D711C(__dst);
        (*(*v1 + 424))(v27);
        goto LABEL_5;
      case 8:
        (*(*v1 + 216))(__src);
        memcpy(__dst, __src, sizeof(__dst));
        sub_1001D711C(__dst);
        v8 = (*(*v1 + 432))(LOBYTE(__dst[24]));
        break;
      case 9:
        (*(*v1 + 216))(__src);
        memcpy(__dst, __src, sizeof(__dst));
        v81[4] = *&__src[264];
        v81[5] = *&__src[280];
        v81[6] = *&__src[296];
        v82 = *&__src[312];
        v81[0] = *&__src[200];
        v81[1] = *&__src[216];
        v81[2] = *&__src[232];
        v81[3] = *&__src[248];
        v16 = &qword_1004AB948;
        v17 = &qword_1003F7BD8;
        sub_100013E54(&__dst[25], v75, &qword_1004AB948, &qword_1003F7BD8);
        sub_1001D711C(__dst);
        (*(*v1 + 440))(v81);
        v18 = &__dst[25];
        goto LABEL_35;
      case 10:
        (*(*v1 + 216))(__src);
        memcpy(__dst, __src, sizeof(__dst));
        sub_1001D711C(__dst);
        v8 = (*(*v1 + 448))(LOWORD(__dst[40]));
        break;
      case 11:
        (*(*v1 + 216))(__src);
        memcpy(__dst, __src, sizeof(__dst));
        v15 = __dst[41];

        sub_1001D711C(__dst);
        (*(*v1 + 456))(v15);
        goto LABEL_5;
      case 12:
        (*(*v1 + 216))(__src);
        memcpy(__dst, __src, sizeof(__dst));
        sub_1001D711C(__dst);
        v8 = (*(*v1 + 608))(__dst[42], LOBYTE(__dst[43]));
        break;
      case 13:
        (*(*v1 + 216))(__src);
        memcpy(__dst, __src, sizeof(__dst));
        v83[2] = *&__src[384];
        v83[3] = *&__src[400];
        v84 = __src[416];
        v83[0] = *&__src[352];
        v83[1] = *&__src[368];
        v16 = &qword_1004AB950;
        v17 = &unk_1003F8E10;
        sub_100013E54(&__dst[44], v75, &qword_1004AB950, &unk_1003F8E10);
        sub_1001D711C(__dst);
        (*(*v1 + 464))(v83);
        v18 = &__dst[44];
LABEL_35:
        v8 = sub_100013F2C(v18, v16, v17);
        break;
      case 14:
        (*(*v1 + 216))(__src);
        memcpy(__dst, __src, sizeof(__dst));
        v14 = __dst[53];

        sub_1001D711C(__dst);
        (*(*v1 + 568))(v14);
        goto LABEL_5;
      case 15:
        (*(*v1 + 216))(__src);
        memcpy(__dst, __src, sizeof(__dst));
        v23 = __dst[54];
        v24 = __dst[55];

        sub_1001D711C(__dst);
        (*(*v1 + 616))(v23, v24);
        goto LABEL_5;
      case 16:
        (*(*v1 + 216))(__src);
        memcpy(__dst, __src, sizeof(__dst));
        v12 = __dst[56];
        v13 = __dst[57];

        sub_1001D711C(__dst);
        (*(*v1 + 624))(v12, v13);
        goto LABEL_5;
      case 17:
        (*(*v1 + 216))(__src);
        memcpy(__dst, __src, sizeof(__dst));
        v33 = __dst[58];
        v34 = __dst[59];

        sub_1001D711C(__dst);
        (*(*v1 + 632))(v33, v34);
        goto LABEL_5;
      case 18:
        (*(*v1 + 216))(__src);
        memcpy(__dst, __src, sizeof(__dst));
        v42 = __dst[60];
        v43 = __dst[61];

        sub_1001D711C(__dst);
        (*(*v1 + 640))(v42, v43);
        goto LABEL_5;
      case 19:
        (*(*v1 + 216))(__src);
        memcpy(__dst, __src, sizeof(__dst));
        v48 = __dst[62];
        v49 = __dst[63];

        sub_1001D711C(__dst);
        (*(*v1 + 648))(v48, v49);
        goto LABEL_5;
      case 20:
        (*(*v1 + 216))(__src);
        memcpy(__dst, __src, sizeof(__dst));
        v36 = __dst[64];
        v37 = __dst[65];

        sub_1001D711C(__dst);
        (*(*v1 + 656))(v36, v37);
        goto LABEL_5;
      case 21:
        (*(*v1 + 216))(__src);
        memcpy(__dst, __src, sizeof(__dst));
        v39 = __dst[66];
        v40 = __dst[67];

        sub_1001D711C(__dst);
        (*(*v1 + 664))(v39, v40);
        goto LABEL_5;
      case 22:
        (*(*v1 + 216))(__src);
        memcpy(__dst, __src, sizeof(__dst));
        sub_1001D711C(__dst);
        v8 = (*(*v1 + 672))(LOBYTE(__dst[68]));
        break;
      case 23:
        (*(*v1 + 216))(__src);
        memcpy(__dst, __src, sizeof(__dst));
        sub_1001D711C(__dst);
        v8 = (*(*v1 + 472))(BYTE1(__dst[68]));
        break;
      case 24:
        (*(*v1 + 216))(__src);
        memcpy(__dst, __src, sizeof(__dst));
        sub_1001D711C(__dst);
        v8 = (*(*v1 + 480))(BYTE2(__dst[68]));
        break;
      case 25:
        (*(*v1 + 216))(__src);
        memcpy(__dst, __src, sizeof(__dst));
        sub_1001D711C(__dst);
        v8 = (*(*v1 + 504))(BYTE3(__dst[68]));
        break;
      case 26:
        (*(*v1 + 216))(__src);
        memcpy(__dst, __src, sizeof(__dst));
        sub_1001D711C(__dst);
        v8 = (*(*v1 + 488))(BYTE4(__dst[68]));
        break;
      case 27:
        (*(*v1 + 216))(__src);
        memcpy(__dst, __src, sizeof(__dst));
        sub_1001D711C(__dst);
        v8 = (*(*v1 + 496))(BYTE5(__dst[68]));
        break;
      case 28:
        (*(*v1 + 216))(__src);
        memcpy(__dst, __src, sizeof(__dst));
        v52 = __dst[69];

        sub_1001D711C(__dst);
        (*(*v1 + 512))(v52);
        goto LABEL_5;
      case 29:
        (*(*v1 + 216))(__src);
        memcpy(__dst, __src, sizeof(__dst));
        sub_1001D711C(__dst);
        v8 = (*(*v1 + 520))(LOBYTE(__dst[70]));
        break;
      case 30:
        (*(*v1 + 216))(__src);
        memcpy(__dst, __src, sizeof(__dst));
        sub_1001D711C(__dst);
        v8 = (*(*v1 + 680))(BYTE1(__dst[70]));
        break;
      case 31:
        (*(*v1 + 216))(__src);
        memcpy(__dst, __src, sizeof(__dst));
        v29 = __dst[71];
        sub_1001C8518(__dst[71], v30, v31, v32);
        sub_1001D711C(__dst);
        v75[0] = v29;
        (*(*v1 + 528))(v75);
        v8 = sub_1001C855C(v75[0]);
        break;
      case 32:
        (*(*v1 + 216))(__src);
        memcpy(__dst, __src, sizeof(__dst));
        v44 = __dst[72];
        v45 = __dst[73];

        sub_1001D711C(__dst);
        (*(*v1 + 688))(v44, v45);
        goto LABEL_5;
      case 33:
        (*(*v1 + 216))(__src);
        memcpy(__dst, __src, sizeof(__dst));
        sub_1001D711C(__dst);
        v8 = (*(*v1 + 536))(LOBYTE(__dst[74]));
        break;
      case 34:
        (*(*v1 + 216))(__src);
        memcpy(__dst, __src, sizeof(__dst));
        sub_1001D711C(__dst);
        v8 = (*(*v1 + 544))(__dst[75], LOBYTE(__dst[76]));
        break;
      case 35:
        (*(*v1 + 216))(__src);
        memcpy(__dst, __src, sizeof(__dst));
        v7 = __dst[77];

        sub_1001D711C(__dst);
        (*(*v1 + 552))(v7);
        goto LABEL_5;
      case 36:
        (*(*v1 + 216))(__src);
        memcpy(__dst, __src, sizeof(__dst));
        v10 = __dst[78];
        v11 = __dst[79];

        sub_1001D711C(__dst);
        (*(*v1 + 720))(v10, v11);
        goto LABEL_5;
      case 37:
        (*(*v1 + 216))(__src);
        memcpy(__dst, __src, sizeof(__dst));
        sub_1001D711C(__dst);
        v8 = (*(*v1 + 728))(__dst[80], LOBYTE(__dst[81]));
        break;
      case 38:
        (*(*v1 + 216))(__src);
        memcpy(__dst, __src, sizeof(__dst));
        sub_1001D711C(__dst);
        v8 = (*(*v1 + 560))(BYTE1(__dst[81]));
        break;
      case 39:
        (*(*v1 + 216))(__src);
        memcpy(__dst, __src, sizeof(__dst));
        v46 = __dst[83];
        v47 = __dst[84];

        sub_1001D711C(__dst);
        (*(*v1 + 696))(v46, v47);
        goto LABEL_5;
      case 40:
        (*(*v1 + 216))(__src);
        memcpy(__dst, __src, sizeof(__dst));
        sub_1001D711C(__dst);
        v8 = (*(*v1 + 704))(__dst[85], LOBYTE(__dst[86]));
        break;
      case 41:
        (*(*v1 + 216))(__src);
        memcpy(__dst, __src, sizeof(__dst));
        v35 = __dst[82];

        sub_1001D711C(__dst);
        (*(*v1 + 384))(v35);
        goto LABEL_5;
      case 42:
        (*(*v1 + 216))(__src);
        memcpy(__dst, __src, sizeof(__dst));
        v50 = __dst[89];
        v51 = __dst[90];

        sub_1001D711C(__dst);
        (*(*v1 + 712))(v50, v51);
LABEL_5:

        break;
      default:
        (*(*v1 + 216))(__src);
        memcpy(__dst, __src, sizeof(__dst));
        sub_1001D711C(__dst);
        v8 = (*(*v1 + 584))(LOBYTE(__dst[0]));
        break;
    }
  }

  while (v6 != 43);
  result = (*(*v1 + 240))(v8);
  if ((result & 1) == 0)
  {
    v85 = *(*v1 + 288);
    v54 = *(v85() + 16);

    if (v54)
    {
      v55 = 0;
      v56 = 0;
      v57 = 0;
      v58 = 0xE000000000000000;
      do
      {
        v59 = v57 + 1;
        __dst[0] = v56;
        __dst[1] = v58;
        v60._countAndFlagsBits = 10;
        v60._object = 0xE100000000000000;
        String.append(_:)(v60);
        *__src = v57 + 1;
        v61._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v61);

        v62._countAndFlagsBits = 8238;
        v62._object = 0xE200000000000000;
        String.append(_:)(v62);
        v63 = v85();
        if (v57 >= *(v63 + 16))
        {
          __break(1u);
          JUMPOUT(0x10027EAD0);
        }

        v64 = *(v63 + v55 + 32);
        v65 = *(v63 + v55 + 40);

        v66._countAndFlagsBits = v64;
        v66._object = v65;
        String.append(_:)(v66);

        v56 = __dst[0];
        v58 = __dst[1];
        v55 += 16;
        ++v57;
      }

      while (v54 != v59);
    }

    else
    {
      v56 = 0;
      v58 = 0xE000000000000000;
    }

    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(87);
    v67._countAndFlagsBits = 0xD00000000000002ELL;
    v67._object = 0x800000010043ED10;
    String.append(_:)(v67);
    v68._countAndFlagsBits = (*(*v1 + 168))();
    String.append(_:)(v68);

    v69._object = 0x800000010043ED40;
    v69._countAndFlagsBits = 0xD000000000000025;
    String.append(_:)(v69);
    v70._countAndFlagsBits = v56;
    v70._object = v58;
    String.append(_:)(v70);
    goto LABEL_59;
  }

  return result;
}

uint64_t sub_10027EB7C()
{
  v0 = sub_1000039E8(&qword_1004AAD78, &unk_1003F52C0);
  __chkstk_darwin(v0 - 8);
  v2 = &v6 - v1;
  v3 = type metadata accessor for CommandConfiguration();
  sub_1000279B4(v3, static Apply.configuration);
  sub_1000270B4(v3, static Apply.configuration);
  v4 = type metadata accessor for NameSpecification();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  return CommandConfiguration.init(commandName:abstract:usage:discussion:version:shouldDisplay:subcommands:defaultSubcommand:helpNames:)();
}

uint64_t Apply.configuration.unsafeMutableAddressor()
{
  if (qword_1004A9E50 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for CommandConfiguration();

  return sub_1000270B4(v0, static Apply.configuration);
}

uint64_t static Apply.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1004A9E50 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for CommandConfiguration();
  v3 = sub_1000270B4(v2, static Apply.configuration);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Apply.source.getter()
{
  v1 = sub_1000039E8(&qword_1004AE988, &qword_100402E70);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = OBJC_IVAR____TtC10DarwinInit5Apply__source;
  swift_beginAccess();
  (*(v2 + 16))(v4, v0 + v5, v1);
  Argument.wrappedValue.getter();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_10027EF00(uint64_t *a1)
{
  v2 = sub_1000039E8(&qword_1004AE988, &qword_100402E70);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - v4;
  v6 = *a1;
  v7 = OBJC_IVAR____TtC10DarwinInit5Apply__source;
  swift_beginAccess();
  (*(v3 + 16))(v5, v6 + v7, v2);
  Argument.wrappedValue.getter();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_10027F024(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1000039E8(&qword_1004AB540, &qword_1003F69E8);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v10 - v7;
  sub_100013E54(a1, &v10 - v7, &qword_1004AB540, &qword_1003F69E8);
  sub_100013E54(v8, v6, &qword_1004AB540, &qword_1003F69E8);
  swift_beginAccess();
  sub_1000039E8(&qword_1004AE988, &qword_100402E70);
  Argument.wrappedValue.setter();
  swift_endAccess();
  return sub_100013F2C(v8, &qword_1004AB540, &qword_1003F69E8);
}

uint64_t Apply.source.setter(uint64_t a1)
{
  v2 = sub_1000039E8(&qword_1004AB540, &qword_1003F69E8);
  __chkstk_darwin(v2 - 8);
  sub_100013E54(a1, &v5 - v3, &qword_1004AB540, &qword_1003F69E8);
  swift_beginAccess();
  sub_1000039E8(&qword_1004AE988, &qword_100402E70);
  Argument.wrappedValue.setter();
  swift_endAccess();
  return sub_100013F2C(a1, &qword_1004AB540, &qword_1003F69E8);
}

void (*Apply.source.modify(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  v3 = v2;
  *a1 = v2;
  swift_beginAccess();
  sub_1000039E8(&qword_1004AE988, &qword_100402E70);
  *(v3 + 56) = Argument.wrappedValue.modify();
  return sub_10028ECC8;
}