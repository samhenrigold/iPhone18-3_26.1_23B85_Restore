uint64_t sub_1C450EA28@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C450EA08();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C450F178@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_1C45701FC(a2);
  *a1 = result;
  return result;
}

void sub_1C450F1A0(uint64_t a1)
{
  sub_1C4418974(a1);
  sub_1C450F1D0();
  *v1 = v2;
  *(v1 + 8) = v3 & 1;
}

uint64_t sub_1C450F1F4@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C450F228(*a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_1C450F3CC()
{
  sub_1C440DD3C();
  if (v2 == v3)
  {
    return sub_1C43FCE3C(*(v0 + 56));
  }

  v5 = v1;
  type metadata accessor for SourceIdPrefix(0);
  v6 = sub_1C4412B9C(*(v5 + 32));

  return sub_1C44157D4(v6, v7, v8);
}

void sub_1C450F440(uint64_t a1, uint64_t a2)
{
  sub_1C440DD3C();
  if (v5 == v6)
  {
    *(v2 + 56) = (a2 - 1);
  }

  else
  {
    v7 = v4;
    type metadata accessor for SourceIdPrefix(0);
    v8 = sub_1C4412B9C(*(v7 + 32));

    sub_1C440BAA8(v8, v9, a2, v10);
  }
}

uint64_t sub_1C450F4F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4EF9CD8();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_1C44157D4(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 24));
    if (v8 >= 3)
    {
      return v8 - 2;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1C450F5A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C4EF9CD8();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_1C440BAA8(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 2;
  }

  return result;
}

uint64_t sub_1C450F674()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C450F6AC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C450F6E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4EF9CD8();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_1C44157D4(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 24));
    if (v8 >= 7)
    {
      return v8 - 6;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1C450F78C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C4EF9CD8();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_1C440BAA8(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 6;
  }

  return result;
}

uint64_t sub_1C450F868()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C450F8B8()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C450FAA4()
{
  sub_1C43FBDBC();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C450FAD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C4EF9CD8();
  sub_1C43FCF8C();
  if (*(v7 + 84) == a2)
  {

    return sub_1C44157D4(a1, a2, v6);
  }

  else
  {
    v9 = *(a1 + *(a3 + 24) + 24);
    if (v9 >= 8)
    {
      return v9 - 7;
    }

    else
    {
      return 0;
    }
  }
}

void sub_1C450FB80(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1C4EF9CD8();
  sub_1C43FCF8C();
  if (*(v9 + 84) == a3)
  {

    sub_1C440BAA8(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 24) + 24) = a2 + 7;
  }
}

uint64_t sub_1C450FC28(uint64_t a1, uint64_t a2, uint64_t a3)
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
    sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
    sub_1C43FCF8C();
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(a3 + 28);
    }

    else
    {
      v10 = sub_1C456902C(&qword_1EC0B8640, &qword_1C4F0D5D8);
      v11 = *(a3 + 32);
    }

    return sub_1C44157D4(a1 + v11, a2, v10);
  }
}

uint64_t sub_1C450FD08(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
    sub_1C43FCF8C();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(a4 + 28);
    }

    else
    {
      v10 = sub_1C456902C(&qword_1EC0B8640, &qword_1C4F0D5D8);
      v11 = *(a4 + 32);
    }

    return sub_1C440BAA8(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_1C450FE48()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C450FF08()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C450FF40()
{

  v0 = sub_1C4406518();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C450FF70()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C451009C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4EF9CD8();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_1C44157D4(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 24) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_1C4510158(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C4EF9CD8();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_1C440BAA8(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  return result;
}

uint64_t sub_1C4510218()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

char *sub_1C451025C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[48 * a2] <= a3)
  {
    return sub_1C441904C(a3, result);
  }

  return result;
}

char *sub_1C4510284(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[48 * a2] <= a3)
  {
    return sub_1C441904C(a3, result);
  }

  return result;
}

uint64_t sub_1C45103A8()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1C4510428()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C4510544()
{

  sub_1C440962C((v0 + 24));
  sub_1C440962C((v0 + 64));

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t sub_1C451058C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C45105FC()
{

  sub_1C43FBDBC();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C4510630()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C451067C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C4F00F28();
  *a1 = result;
  return result;
}

uint64_t sub_1C45106C4()
{

  sub_1C43FBDBC();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C45106F8()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C451075C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C45107A4()
{
  sub_1C43FBDBC();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C45107D8()
{
  swift_unknownObjectRelease();
  sub_1C43FBDBC();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C45108BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
    v10 = a1 + *(a3 + 52);

    return sub_1C44157D4(v10, a2, v9);
  }
}

uint64_t sub_1C451095C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
    v8 = v5 + *(a4 + 52);

    return sub_1C440BAA8(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C45109E8()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C4510A20()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C4510CB4()
{
  sub_1C4EF9CD8();
  sub_1C43FBCE0();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v4 + 8, v2 | 7);
}

uint64_t sub_1C4510D40(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 240)
  {
    v4 = *a1;
    if (v4 >= 0x10)
    {
      return v4 - 15;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_1C4EFDAB8();
    v9 = &a1[*(a3 + 20)];

    return sub_1C44157D4(v9, a2, v8);
  }
}

_BYTE *sub_1C4510DC0(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 240)
  {
    *result = a2 + 15;
  }

  else
  {
    v7 = sub_1C4EFDAB8();
    v8 = &v5[*(a4 + 20)];

    return sub_1C440BAA8(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C4510E3C()
{

  sub_1C440962C((v0 + 40));
  sub_1C440962C((v0 + 80));

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

uint64_t sub_1C4510EB8()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C4510EF0()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C4510F48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4EFDAB8();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_1C44157D4(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1C4510FF8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C4EFDAB8();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_1C440BAA8(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1C45110CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0B9CA8, &qword_1C4F22290);
  v5 = sub_1C44157D4(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C4511120(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1C456902C(&qword_1EC0B9CA8, &qword_1C4F22290);

  return sub_1C440BAA8(a1, v5, a3, v6);
}

uint64_t sub_1C451118C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_1C44157D4(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1C4511244(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_1C440BAA8(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1C4511C4C()
{
  sub_1C4EFDAB8();
  sub_1C43FBCE0();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1C4511CCC()
{
  sub_1C44158A0();
  v15 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v2 = v1;
  v3 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v5 = (((((*(v4 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_1C4EFDAB8();
  sub_1C43FCDF8();
  v8 = v7;
  v9 = (*(v7 + 80) + v5 + 8) & ~*(v7 + 80);

  (*(v2 + 8))(v0 + v3, v15);

  (*(v8 + 8))(v0 + v9, v6);
  sub_1C4410198();

  return MEMORY[0x1EEE6BDD0](v10, v11, v12);
}

uint64_t sub_1C4511E4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4403FC0();
  v7 = type metadata accessor for DecayingHistogramState(v6);
  if (*(*(v7 - 8) + 84) == a2)
  {

    return sub_1C44157D4(v3, a2, v7);
  }

  else
  {
    v9 = *(v3 + *(a3 + 20));
    if (v9 >= 0xFFFFFFFF)
    {
      LODWORD(v9) = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_1C4511EF4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1C43FBE94();
  result = type metadata accessor for DecayingHistogramState(v8);
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_1C440BAA8(v4, a2, a2, result);
  }

  else
  {
    *(v4 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1C45120C0()
{

  v0 = sub_1C44067F0();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C451210C()
{
  v1 = sub_1C44067F0();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C451216C()
{

  v0 = sub_1C44067F0();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C451219C()
{
  v1 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C43FCF7C(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = *(v5 + 64);
  v7 = sub_1C4EF9CD8();
  if (!sub_1C44157D4(v0 + v4, 1, v7))
  {
    sub_1C440A6B8();
    (*(v8 + 8))(v0 + v4, v7);
  }

  return MEMORY[0x1EEE6BDD0](v0, v4 + v6, v3 | 7);
}

uint64_t sub_1C4512288()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C4512314(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0BA108, &qword_1C4F13818);
  v5 = sub_1C44157D4(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C4512368(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1C456902C(&qword_1EC0BA108, &qword_1C4F13818);

  return sub_1C440BAA8(a1, v5, a3, v6);
}

uint64_t sub_1C45124A4()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C45124EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 41);
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_1C4EF9CD8();
    v11 = a1 + *(a3 + 24);

    return sub_1C44157D4(v11, a2, v10);
  }
}

uint64_t sub_1C4512574(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 41) = a2 + 1;
  }

  else
  {
    v7 = sub_1C4EF9CD8();
    v8 = v5 + *(a4 + 24);

    return sub_1C440BAA8(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C45126B8()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C45126F8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = sub_1C4EF9CD8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 32) & ~v5;
  v7 = *(v4 + 64);
  v9 = type metadata accessor for BiomeInteractionEventSourceAdapter(0, v1, v2, v8);
  sub_1C43FCF7C(v9);
  v11 = v10;
  v13 = v12;
  v14 = *(v11 + 80);
  v15 = (v6 + v7 + v14) & ~v14;
  v16 = v5 | v14;
  v17 = (*(v13 + 64) + v5 + v15) & ~v5;
  v18 = *(v4 + 8);
  v18(v0 + v6, v3);
  (*(*(v1 - 8) + 8))(v0 + v15, v1);
  v18(v0 + v17, v3);

  return MEMORY[0x1EEE6BDD0](v0, v17 + v7, v16 | 7);
}

uint64_t sub_1C4512874()
{
  v1 = sub_1C456902C(&qword_1EC0BA418, &qword_1C4F22330);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1C4512908()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C4512940()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C4512978()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C45129B0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C4512E88(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1C43FECE0();
  type metadata accessor for Configuration(v6);
  sub_1C43FCF8C();
  if (*(v8 + 84) == v3)
  {
    v9 = v7;
    v10 = v4;
LABEL_10:

    return sub_1C44157D4(v10, v3, v9);
  }

  sub_1C4EFD548();
  sub_1C43FCF8C();
  if (*(v12 + 84) == v3)
  {
    v9 = v11;
    v13 = a3[5];
LABEL_9:
    v10 = v4 + v13;
    goto LABEL_10;
  }

  type metadata accessor for Source(0);
  sub_1C43FCF8C();
  if (*(v15 + 84) == v3)
  {
    v9 = v14;
    v13 = a3[6];
    goto LABEL_9;
  }

  type metadata accessor for PhaseStores(0);
  sub_1C43FCF8C();
  if (*(v17 + 84) == v3)
  {
    v9 = v16;
    v13 = a3[8];
    goto LABEL_9;
  }

  v19 = *(v4 + a3[9]);
  if (v19 >= 0xFFFFFFFF)
  {
    LODWORD(v19) = -1;
  }

  return (v19 + 1);
}

void sub_1C4512FEC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1C43FECE0();
  type metadata accessor for Configuration(v8);
  sub_1C43FCF8C();
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v5;
  }

  else
  {
    sub_1C4EFD548();
    sub_1C43FCF8C();
    if (*(v14 + 84) == a3)
    {
      v11 = v13;
      v15 = a4[5];
    }

    else
    {
      type metadata accessor for Source(0);
      sub_1C43FCF8C();
      if (*(v17 + 84) == a3)
      {
        v11 = v16;
        v15 = a4[6];
      }

      else
      {
        type metadata accessor for PhaseStores(0);
        sub_1C43FCF8C();
        if (*(v19 + 84) != a3)
        {
          *(v5 + a4[9]) = (v4 - 1);
          return;
        }

        v11 = v18;
        v15 = a4[8];
      }
    }

    v12 = v5 + v15;
  }

  sub_1C440BAA8(v12, v4, v4, v11);
}

uint64_t sub_1C4513268(uint64_t a1)
{
  result = sub_1C4659BA8(&qword_1EDDDEB08, type metadata accessor for BMAppleMusicEventSourceIngestor, &unk_1C4F144D4);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C45132C0(uint64_t a1)
{
  result = sub_1C4659BA8(&qword_1EDDF1190, type metadata accessor for BMAppleMusicEventDeltaSourceIngestor, &unk_1C4F14550);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4513344()
{
  sub_1C43FBDBC();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C4513384()
{
  sub_1C43FBDBC();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C45133B8()
{
  type metadata accessor for BMAppleMusicEventSourceIngestor(0);
  sub_1C441EAC8();
  v3 = *(v2 + 80);
  sub_1C441F584();
  v5 = v1 + v4;
  sub_1C4EF98F8();
  sub_1C43FBCE0();
  (*(v6 + 8))(v5);
  type metadata accessor for PhaseStores(0);

  v7 = v5 + *(v0 + 28);

  v8 = *(type metadata accessor for Source(0) + 24);
  v9 = sub_1C4EFD548();
  sub_1C43FBCE0();
  v11 = *(v10 + 8);
  v11(v7 + v8, v9);
  v11(v5 + *(v0 + 36), v9);

  return MEMORY[0x1EEE6BDD0](v1, v13 + 8, v3 | 7);
}

uint64_t sub_1C45135C4()
{
  type metadata accessor for BMAppleMusicEventDeltaSourceIngestor(0);
  sub_1C441EAC8();
  v3 = *(v2 + 80);
  sub_1C441F584();
  v5 = v1 + v4;

  v6 = *(type metadata accessor for Source(0) + 24);
  v7 = sub_1C4EFD548();
  sub_1C43FBCE0();
  v9 = *(v8 + 8);
  v9(v5 + v6, v7);
  v10 = v5 + *(v0 + 28);
  sub_1C4EF98F8();
  sub_1C43FBCE0();
  (*(v11 + 8))(v10);
  type metadata accessor for PhaseStores(0);

  v9(v5 + *(v0 + 36), v7);

  return MEMORY[0x1EEE6BDD0](v1, v13 + 8, v3 | 7);
}

uint64_t sub_1C451380C(uint64_t result, uint64_t a2)
{
  *(result + 16) = a2;
  *(result + 24) = 2 * a2;
  return result;
}

uint64_t sub_1C451381C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C4513854()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C451388C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C45138CC()
{
  v1 = type metadata accessor for Configuration(0);
  sub_1C43FCF7C(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v6 = (*(v5 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  sub_1C4EF98F8();
  sub_1C43FBCE0();
  (*(v7 + 8))(v0 + v4);

  return MEMORY[0x1EEE6BDD0](v0, v6 + 8, v3 | 7);
}

uint64_t sub_1C451399C()
{
  v1 = type metadata accessor for Configuration(0);
  sub_1C43FCF7C(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = (*(v5 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1C4EF98F8();
  sub_1C43FBCE0();
  (*(v7 + 8))(v0 + v4);

  return MEMORY[0x1EEE6BDD0](v0, ((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_1C4513ACC()
{
  sub_1C440D1E0();
  result = sub_1C488C864();
  *v0 = result;
  return result;
}

uint64_t sub_1C4513AF8()
{
  sub_1C440D1E0();
  result = sub_1C488C904();
  *v0 = result;
  return result;
}

uint64_t sub_1C4513B24()
{
  sub_1C440D1E0();
  result = sub_1C488C9A4();
  *v0 = result;
  return result;
}

uint64_t sub_1C4513B50()
{
  sub_1C440D1E0();
  result = sub_1C488CA44();
  *v0 = result;
  return result;
}

uint64_t sub_1C4513B7C()
{
  sub_1C440D1E0();
  result = sub_1C488CAE4();
  *v0 = result;
  return result;
}

uint64_t sub_1C4513BA8()
{
  sub_1C440D1E0();
  result = sub_1C488CB84();
  *v0 = result;
  return result;
}

uint64_t sub_1C4513BD4()
{
  sub_1C440D1E0();
  result = sub_1C488CC24();
  *v0 = result;
  return result;
}

uint64_t sub_1C4513C00()
{
  sub_1C440D1E0();
  result = sub_1C488CCC4();
  *v0 = result;
  return result;
}

uint64_t sub_1C4513C2C()
{
  sub_1C440D1E0();
  result = sub_1C488CD64();
  *v0 = result;
  return result;
}

uint64_t sub_1C4513C58()
{
  sub_1C440D1E0();
  result = sub_1C488CE04();
  *v0 = result;
  return result;
}

uint64_t sub_1C4513C84()
{
  sub_1C440D1E0();
  result = sub_1C488CEA4();
  *v0 = result;
  return result;
}

uint64_t sub_1C4513CB0()
{
  sub_1C440D1E0();
  result = sub_1C488CF44();
  *v0 = result;
  return result;
}

uint64_t sub_1C4513CDC()
{
  sub_1C440D1E0();
  result = sub_1C488CFE4();
  *v0 = result;
  return result;
}

uint64_t sub_1C4513D08()
{
  sub_1C440D1E0();
  result = sub_1C488D084();
  *v0 = result;
  return result;
}

uint64_t sub_1C4513D34()
{
  sub_1C440D1E0();
  result = sub_1C488D124();
  *v0 = result;
  return result;
}

uint64_t sub_1C4513D60()
{
  sub_1C440D1E0();
  result = sub_1C488D1C4();
  *v0 = result;
  return result;
}

uint64_t sub_1C4513D8C()
{
  sub_1C440D1E0();
  result = sub_1C488D264();
  *v0 = result;
  return result;
}

uint64_t sub_1C4513DB8()
{
  sub_1C440D1E0();
  result = sub_1C488D304();
  *v0 = result;
  return result;
}

uint64_t sub_1C4513DE4()
{
  sub_1C440D1E0();
  result = sub_1C488D3A4();
  *v0 = result;
  return result;
}

uint64_t sub_1C4513E10()
{
  sub_1C440D1E0();
  result = sub_1C488D444();
  *v0 = result;
  return result;
}

uint64_t sub_1C4513E3C()
{
  sub_1C440D1E0();
  result = sub_1C488D4E4();
  *v0 = result;
  return result;
}

uint64_t sub_1C4513E68()
{
  sub_1C440D1E0();
  result = sub_1C488D584();
  *v0 = result;
  return result;
}

uint64_t sub_1C4513E94()
{
  sub_1C440D1E0();
  result = sub_1C488D624();
  *v0 = result;
  return result;
}

uint64_t sub_1C4513EC0()
{
  sub_1C440D1E0();
  result = sub_1C488D6C4();
  *v0 = result;
  return result;
}

uint64_t sub_1C4513EEC()
{
  sub_1C440D1E0();
  result = sub_1C488D764();
  *v0 = result;
  return result;
}

uint64_t sub_1C4513F18()
{
  sub_1C440D1E0();
  result = sub_1C488D804();
  *v0 = result;
  return result;
}

uint64_t sub_1C4513F44()
{
  sub_1C440D1E0();
  result = sub_1C488D8A4();
  *v0 = result;
  return result;
}

uint64_t sub_1C4513F70()
{
  sub_1C440D1E0();
  result = sub_1C488D944();
  *v0 = result;
  return result;
}

uint64_t sub_1C4513F9C()
{
  sub_1C440D1E0();
  result = sub_1C488D9E4();
  *v0 = result;
  return result;
}

uint64_t sub_1C4513FC8()
{
  sub_1C440D1E0();
  result = sub_1C488DA84();
  *v0 = result;
  return result;
}

uint64_t sub_1C4513FF4()
{
  sub_1C440D1E0();
  result = sub_1C488DB24();
  *v0 = result;
  return result;
}

uint64_t sub_1C4514020()
{
  sub_1C440D1E0();
  result = sub_1C488DBC4();
  *v0 = result;
  return result;
}

uint64_t sub_1C451404C()
{
  sub_1C440D1E0();
  result = sub_1C488DC64();
  *v0 = result;
  return result;
}

uint64_t sub_1C4514078()
{
  sub_1C440D1E0();
  result = sub_1C488DD04();
  *v0 = result;
  return result;
}

uint64_t sub_1C45140A4()
{
  sub_1C440D1E0();
  result = sub_1C488DDA4();
  *v0 = result;
  return result;
}

uint64_t sub_1C45140D0()
{
  sub_1C440D1E0();
  result = sub_1C488DE44();
  *v0 = result;
  return result;
}

uint64_t sub_1C45140FC()
{
  sub_1C440D1E0();
  result = sub_1C488DEE4();
  *v0 = result;
  return result;
}

uint64_t sub_1C4514128()
{
  sub_1C440D1E0();
  result = sub_1C488DF84();
  *v0 = result;
  return result;
}

uint64_t sub_1C4514154()
{
  sub_1C440D1E0();
  result = sub_1C488E024();
  *v0 = result;
  return result;
}

uint64_t sub_1C4514180()
{
  sub_1C440D1E0();
  result = sub_1C488E0C4();
  *v0 = result;
  return result;
}

uint64_t sub_1C45141AC()
{
  sub_1C440D1E0();
  result = sub_1C488E164();
  *v0 = result;
  return result;
}

uint64_t sub_1C45141D8()
{
  sub_1C440D1E0();
  result = sub_1C488E204();
  *v0 = result;
  return result;
}

uint64_t sub_1C4514204()
{
  sub_1C440D1E0();
  result = sub_1C488E2A4();
  *v0 = result;
  return result;
}

uint64_t sub_1C4514230()
{
  sub_1C440D1E0();
  result = sub_1C488E344();
  *v0 = result;
  return result;
}

uint64_t sub_1C451425C()
{
  sub_1C440D1E0();
  result = sub_1C488E3E4();
  *v0 = result;
  return result;
}

uint64_t sub_1C4514288()
{
  sub_1C440D1E0();
  result = sub_1C488E484();
  *v0 = result;
  return result;
}

uint64_t sub_1C45142B4()
{
  sub_1C440D1E0();
  result = sub_1C488E524();
  *v0 = result;
  return result;
}

uint64_t sub_1C45142E0()
{
  sub_1C440D1E0();
  result = sub_1C488E5C4();
  *v0 = result;
  return result;
}

uint64_t sub_1C451430C()
{
  sub_1C440D1E0();
  result = sub_1C488E664();
  *v0 = result;
  return result;
}

uint64_t sub_1C4514338()
{
  sub_1C440D1E0();
  result = sub_1C488E704();
  *v0 = result;
  return result;
}

uint64_t sub_1C4514364()
{
  sub_1C440D1E0();
  result = sub_1C488E7A4();
  *v0 = result;
  return result;
}

uint64_t sub_1C4514390()
{
  sub_1C440D1E0();
  result = sub_1C488E844();
  *v0 = result;
  return result;
}

uint64_t sub_1C45143BC()
{
  sub_1C440D1E0();
  result = sub_1C488E8E4();
  *v0 = result;
  return result;
}

uint64_t sub_1C45143E8()
{
  sub_1C440D1E0();
  result = sub_1C488E984();
  *v0 = result;
  return result;
}

uint64_t sub_1C4514414()
{
  sub_1C440D1E0();
  result = sub_1C488EA24();
  *v0 = result;
  return result;
}

uint64_t sub_1C4514440()
{
  sub_1C440D1E0();
  result = sub_1C488EAC4();
  *v0 = result;
  return result;
}

uint64_t sub_1C451446C()
{
  sub_1C440D1E0();
  result = sub_1C488EB64();
  *v0 = result;
  return result;
}

uint64_t sub_1C4514498()
{
  sub_1C440D1E0();
  result = sub_1C488EC04();
  *v0 = result;
  return result;
}

uint64_t sub_1C45144C4()
{
  sub_1C440D1E0();
  result = sub_1C488ECA4();
  *v0 = result;
  return result;
}

uint64_t sub_1C45144F0()
{
  sub_1C440D1E0();
  result = sub_1C488ED44();
  *v0 = result;
  return result;
}

uint64_t sub_1C451451C()
{
  sub_1C440D1E0();
  result = sub_1C488EDE4();
  *v0 = result;
  return result;
}

uint64_t sub_1C4514548()
{
  sub_1C440D1E0();
  result = sub_1C488EE84();
  *v0 = result;
  return result;
}

uint64_t sub_1C4514574()
{
  sub_1C440D1E0();
  result = sub_1C488EF24();
  *v0 = result;
  return result;
}

uint64_t sub_1C45145A0()
{
  sub_1C440D1E0();
  result = sub_1C488EFC4();
  *v0 = result;
  return result;
}

uint64_t sub_1C45145CC()
{
  sub_1C440D1E0();
  result = sub_1C488F064();
  *v0 = result;
  return result;
}

uint64_t sub_1C45145F8()
{
  sub_1C440D1E0();
  result = sub_1C488F104();
  *v0 = result;
  return result;
}

uint64_t sub_1C4514624()
{
  sub_1C440D1E0();
  result = sub_1C488F1A4();
  *v0 = result;
  return result;
}

uint64_t sub_1C4514650()
{
  sub_1C440D1E0();
  result = sub_1C488F244();
  *v0 = result;
  return result;
}

uint64_t sub_1C451467C()
{
  sub_1C440D1E0();
  result = sub_1C488F2E4();
  *v0 = result;
  return result;
}

uint64_t sub_1C45146A8()
{
  sub_1C440D1E0();
  result = sub_1C488F384();
  *v0 = result;
  return result;
}

uint64_t sub_1C45146D4()
{
  sub_1C440D1E0();
  result = sub_1C488F424();
  *v0 = result;
  return result;
}

uint64_t sub_1C4514700()
{
  sub_1C440D1E0();
  result = sub_1C488F4C4();
  *v0 = result;
  return result;
}

uint64_t sub_1C451472C()
{
  sub_1C440D1E0();
  result = sub_1C488F564();
  *v0 = result;
  return result;
}

uint64_t sub_1C4514758()
{
  sub_1C440D1E0();
  result = sub_1C488F604();
  *v0 = result;
  return result;
}

uint64_t sub_1C4514784()
{
  sub_1C440D1E0();
  result = sub_1C488F6A4();
  *v0 = result;
  return result;
}

uint64_t sub_1C45147B0()
{
  sub_1C440D1E0();
  result = sub_1C488F744();
  *v0 = result;
  return result;
}

uint64_t sub_1C45147DC()
{
  sub_1C440D1E0();
  result = sub_1C488F7E4();
  *v0 = result;
  return result;
}

uint64_t sub_1C4514808()
{
  sub_1C440D1E0();
  result = sub_1C488F884();
  *v0 = result;
  return result;
}

uint64_t sub_1C4514834()
{
  sub_1C440D1E0();
  result = sub_1C488F924();
  *v0 = result;
  return result;
}

uint64_t sub_1C4514860()
{
  sub_1C440D1E0();
  result = sub_1C488F9C4();
  *v0 = result;
  return result;
}

uint64_t sub_1C451488C()
{
  sub_1C440D1E0();
  result = sub_1C488FA64();
  *v0 = result;
  return result;
}

uint64_t sub_1C45148B8()
{
  sub_1C440D1E0();
  result = sub_1C488FB04();
  *v0 = result;
  return result;
}

uint64_t sub_1C45148E4()
{
  sub_1C440D1E0();
  result = sub_1C488FBA4();
  *v0 = result;
  return result;
}

uint64_t sub_1C4514910()
{
  sub_1C440D1E0();
  result = sub_1C488FC44();
  *v0 = result;
  return result;
}

uint64_t sub_1C451493C()
{
  sub_1C440D1E0();
  result = sub_1C488FCE4();
  *v0 = result;
  return result;
}

uint64_t sub_1C4514968()
{
  sub_1C440D1E0();
  result = sub_1C488FD84();
  *v0 = result;
  return result;
}

uint64_t sub_1C4514994()
{
  sub_1C440D1E0();
  result = sub_1C488FE24();
  *v0 = result;
  return result;
}

uint64_t sub_1C45149C0()
{
  sub_1C440D1E0();
  result = sub_1C488FEC4();
  *v0 = result;
  return result;
}

uint64_t sub_1C45149EC()
{
  sub_1C440D1E0();
  result = sub_1C488FF64();
  *v0 = result;
  return result;
}

uint64_t sub_1C4514A18()
{
  sub_1C440D1E0();
  result = sub_1C4890004();
  *v0 = result;
  return result;
}

uint64_t sub_1C4514A44()
{
  sub_1C440D1E0();
  result = sub_1C48900A4();
  *v0 = result;
  return result;
}

uint64_t sub_1C4514A70()
{
  sub_1C440D1E0();
  result = sub_1C4890144();
  *v0 = result;
  return result;
}

uint64_t sub_1C4514A9C()
{
  sub_1C440D1E0();
  result = sub_1C48901E4();
  *v0 = result;
  return result;
}

uint64_t sub_1C4514AC8()
{
  sub_1C440D1E0();
  result = sub_1C4890284();
  *v0 = result;
  return result;
}

uint64_t sub_1C4514AF4()
{
  sub_1C440D1E0();
  result = sub_1C4890324();
  *v0 = result;
  return result;
}

uint64_t sub_1C4514B20()
{
  sub_1C440D1E0();
  result = sub_1C48903C4();
  *v0 = result;
  return result;
}

uint64_t sub_1C4514B4C()
{
  sub_1C440D1E0();
  result = sub_1C4890464();
  *v0 = result;
  return result;
}

uint64_t sub_1C4514B78()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C4514BD4()
{
  sub_1C43FBDBC();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C4514C08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4EF9CD8();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_1C44157D4(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 2)
    {
      return ((v8 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1C4514CC4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C4EF9CD8();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_1C440BAA8(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1C4514DD0()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C4514E08()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C4514EEC(uint64_t a1, uint64_t a2, int *a3)
{
  sub_1C43FECE0();
  sub_1C4EFD548();
  sub_1C43FCF8C();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = v4;
  }

  else
  {
    type metadata accessor for PhaseStores(0);
    sub_1C43FCF8C();
    if (*(v11 + 84) == v3)
    {
      v8 = v10;
      v12 = a3[5];
    }

    else
    {
      type metadata accessor for Source(0);
      sub_1C43FCF8C();
      if (*(v14 + 84) == v3)
      {
        v8 = v13;
        v12 = a3[6];
      }

      else
      {
        if (v3 == 0x7FFFFFFF)
        {
          return sub_1C44418F0(a3[8]);
        }

        v8 = sub_1C456902C(&qword_1EC0C2A90, &unk_1C4F16D30);
        v12 = a3[11];
      }
    }

    v9 = v4 + v12;
  }

  return sub_1C44157D4(v9, v3, v8);
}

void sub_1C451502C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_1C43FECE0();
  sub_1C4EFD548();
  sub_1C43FCF8C();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v5;
  }

  else
  {
    type metadata accessor for PhaseStores(0);
    sub_1C43FCF8C();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      type metadata accessor for Source(0);
      sub_1C43FCF8C();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[6];
      }

      else
      {
        if (a3 == 0x7FFFFFFF)
        {
          *(v5 + a4[8]) = (v4 - 1);
          return;
        }

        v10 = sub_1C456902C(&qword_1EC0C2A90, &unk_1C4F16D30);
        v14 = a4[11];
      }
    }

    v11 = v5 + v14;
  }

  sub_1C440BAA8(v11, v4, v4, v10);
}

uint64_t sub_1C4515178(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1C43FECE0();
  type metadata accessor for PhaseStores(v6);
  sub_1C43FCF8C();
  if (*(v8 + 84) == v3)
  {
    v9 = v7;
    v10 = v4;
  }

  else
  {
    type metadata accessor for Source(0);
    sub_1C43FCF8C();
    if (*(v12 + 84) == v3)
    {
      v9 = v11;
      v13 = a3[5];
    }

    else
    {
      if (v3 == 0x7FFFFFFF)
      {
        return sub_1C44418F0(a3[7]);
      }

      sub_1C4EFD548();
      sub_1C43FCF8C();
      if (*(v16 + 84) == v3)
      {
        v9 = v15;
        v13 = a3[9];
      }

      else
      {
        v9 = sub_1C456902C(&qword_1EC0C2A90, &unk_1C4F16D30);
        v13 = a3[12];
      }
    }

    v10 = v4 + v13;
  }

  return sub_1C44157D4(v10, v3, v9);
}

void sub_1C45152B8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1C43FECE0();
  type metadata accessor for PhaseStores(v8);
  sub_1C43FCF8C();
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v5;
  }

  else
  {
    type metadata accessor for Source(0);
    sub_1C43FCF8C();
    if (*(v14 + 84) == a3)
    {
      v11 = v13;
      v15 = a4[5];
    }

    else
    {
      if (a3 == 0x7FFFFFFF)
      {
        *(v5 + a4[7]) = (v4 - 1);
        return;
      }

      sub_1C4EFD548();
      sub_1C43FCF8C();
      if (*(v17 + 84) == a3)
      {
        v11 = v16;
        v15 = a4[9];
      }

      else
      {
        v11 = sub_1C456902C(&qword_1EC0C2A90, &unk_1C4F16D30);
        v15 = a4[12];
      }
    }

    v12 = v5 + v15;
  }

  sub_1C440BAA8(v12, v4, v4, v11);
}

uint64_t sub_1C451540C()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1C451545C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C4515494()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C4515558(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4EFF0C8();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1 + *(a3 + 20);

    return sub_1C44157D4(v8, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1C451560C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C4EFF0C8();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 20);

    return sub_1C440BAA8(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1C4516070(uint64_t a1, char a2)
{
  sub_1C4F01298();
}

uint64_t sub_1C4516218()
{
  v1 = type metadata accessor for Configuration(0);
  sub_1C43FCF7C(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = (*(v5 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1C4EF98F8();
  sub_1C43FD3F8();
  (*(v7 + 8))(v0 + v4);

  return MEMORY[0x1EEE6BDD0](v0, v6 + 8, v3 | 7);
}

uint64_t sub_1C45162DC()
{
  v1 = type metadata accessor for Configuration(0);
  sub_1C43FCF7C(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v6 = (*(v5 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  sub_1C4EF98F8();
  sub_1C43FD3F8();
  (*(v7 + 8))(v0 + v4);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, ((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_1C45164EC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C451C874()
{

  sub_1C440962C((v0 + 56));

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1C451C938()
{

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1C451C9A0@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>)
{
  v5 = type metadata accessor for HistoricalSampleTask.SignalSpec(0, a2, a3, a4);
  result = sub_1C46ACCA0(v5);
  *a1 = result;
  return result;
}

uint64_t sub_1C451C9E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for Configuration(0);
  sub_1C43FCF8C();
  if (*(v7 + 84) == a2)
  {

    return sub_1C44157D4(a1, a2, v6);
  }

  else
  {
    v9 = *(a1 + *(a3 + 20));
    if (v9 >= 0xFFFFFFFF)
    {
      LODWORD(v9) = -1;
    }

    return (v9 + 1);
  }
}

void sub_1C451CA8C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  type metadata accessor for Configuration(0);
  sub_1C43FCF8C();
  if (*(v9 + 84) == a3)
  {

    sub_1C440BAA8(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }
}

uint64_t sub_1C451CB58(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C4EF9CD8();

  return sub_1C44157D4(a1, a2, v4);
}

uint64_t sub_1C451CBA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C4EF9CD8();

  return sub_1C440BAA8(a1, a2, a2, v4);
}

uint64_t sub_1C451CBEC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
    v9 = a1 + *(a3 + 20);

    return sub_1C44157D4(v9, a2, v8);
  }
}

void *sub_1C451CC80(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
    v8 = v5 + *(a4 + 20);

    return sub_1C440BAA8(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C451CD5C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1C43FBE94();
  type metadata accessor for Configuration(v6);
  sub_1C43FCF8C();
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
  }

  else
  {
    type metadata accessor for Source(0);
    sub_1C43FCF8C();
    if (*(v12 + 84) == a2)
    {
      v9 = v11;
      v13 = a3[5];
    }

    else
    {
      type metadata accessor for PhaseStores(0);
      sub_1C43FCF8C();
      if (*(v15 + 84) != a2)
      {
        v17 = *(v3 + a3[8]);
        if (v17 >= 4)
        {
          return v17 - 3;
        }

        else
        {
          return 0;
        }
      }

      v9 = v14;
      v13 = a3[7];
    }

    v10 = v3 + v13;
  }

  return sub_1C44157D4(v10, a2, v9);
}

void sub_1C451CE80(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1C43FBE94();
  type metadata accessor for Configuration(v8);
  sub_1C43FCF8C();
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v4;
  }

  else
  {
    type metadata accessor for Source(0);
    sub_1C43FCF8C();
    if (*(v14 + 84) == a3)
    {
      v11 = v13;
      v15 = a4[5];
    }

    else
    {
      type metadata accessor for PhaseStores(0);
      sub_1C43FCF8C();
      if (*(v17 + 84) != a3)
      {
        *(v4 + a4[8]) = a2 + 3;
        return;
      }

      v11 = v16;
      v15 = a4[7];
    }

    v12 = v4 + v15;
  }

  sub_1C440BAA8(v12, a2, a2, v11);
}

uint64_t sub_1C451CFC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4EF9CD8();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_1C44157D4(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 2)
    {
      return ((v8 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1C451D07C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C4EF9CD8();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_1C440BAA8(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1C451D1F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4EF9CD8();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_1C44157D4(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 24));
    if (v8 >= 2)
    {
      return ((v8 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1C451D2B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C4EF9CD8();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_1C440BAA8(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1C451D3B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4EF9CD8();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_1C44157D4(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 24) + 16);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_1C451D46C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C4EF9CD8();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_1C440BAA8(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 16) = a2;
  }

  return result;
}

uint64_t sub_1C451D5A4()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C451D600(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4EF9CD8();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_1C44157D4(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 2)
    {
      return ((v8 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1C451D6BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C4EF9CD8();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_1C440BAA8(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1C451D82C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C451D880(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4EF9CD8();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_1C44157D4(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 2)
    {
      return ((v8 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1C451D93C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C4EF9CD8();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_1C440BAA8(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1C451DAC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4EF9CD8();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_1C44157D4(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 24) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_1C451DB7C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C4EF9CD8();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_1C440BAA8(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  return result;
}

uint64_t sub_1C451DCC0()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C451DCF8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C451DD38()
{
  type metadata accessor for LOIBasedSegment(0);
  sub_1C440A924();
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = *(v5 + 64);
  v7 = sub_1C4EF9CD8();
  sub_1C43FBCE0();
  v9 = *(v8 + 8);
  v9(v1 + v4, v7);
  v9(v1 + v4 + v0[5], v7);
  v10 = (v1 + v4 + v0[6]);
  if (v10[3])
  {
    sub_1C440962C(v10);
  }

  sub_1C440962C((v1 + v4 + v0[7]));

  return MEMORY[0x1EEE6BDD0](v1, v4 + v6, v3 | 7);
}

uint64_t sub_1C451DE4C()
{
  v1 = sub_1C4EFE1C8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1C451DF18()
{
  type metadata accessor for LOIBasedSegment(0);
  sub_1C440A924();
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v6 = *(v5 + 64);

  v7 = sub_1C4EF9CD8();
  sub_1C43FBCE0();
  v9 = *(v8 + 8);
  v9(v1 + v4, v7);
  v9(v1 + v4 + v0[5], v7);
  v10 = (v1 + v4 + v0[6]);
  if (v10[3])
  {
    sub_1C440962C(v10);
  }

  sub_1C440962C((v1 + v4 + v0[7]));

  return MEMORY[0x1EEE6BDD0](v1, v4 + v6, v3 | 7);
}

uint64_t sub_1C451E044(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1C43FBE94();
  type metadata accessor for Configuration(v6);
  sub_1C43FCF8C();
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
  }

  else
  {
    type metadata accessor for Source(0);
    sub_1C43FCF8C();
    if (*(v12 + 84) == a2)
    {
      v9 = v11;
      v13 = a3[5];
    }

    else
    {
      type metadata accessor for PhaseStores(0);
      sub_1C43FCF8C();
      if (*(v15 + 84) != a2)
      {
        v17 = *(v3 + a3[7]);
        if (v17 >= 4)
        {
          return v17 - 3;
        }

        else
        {
          return 0;
        }
      }

      v9 = v14;
      v13 = a3[6];
    }

    v10 = v3 + v13;
  }

  return sub_1C44157D4(v10, a2, v9);
}

void sub_1C451E168(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1C43FBE94();
  type metadata accessor for Configuration(v8);
  sub_1C43FCF8C();
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v4;
  }

  else
  {
    type metadata accessor for Source(0);
    sub_1C43FCF8C();
    if (*(v14 + 84) == a3)
    {
      v11 = v13;
      v15 = a4[5];
    }

    else
    {
      type metadata accessor for PhaseStores(0);
      sub_1C43FCF8C();
      if (*(v17 + 84) != a3)
      {
        *(v4 + a4[7]) = a2 + 3;
        return;
      }

      v11 = v16;
      v15 = a4[6];
    }

    v12 = v4 + v15;
  }

  sub_1C440BAA8(v12, a2, a2, v11);
}

uint64_t sub_1C451E2A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for PhaseStores(0);
  sub_1C43FCF8C();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_5:

    return sub_1C44157D4(v9, a2, v8);
  }

  type metadata accessor for Source(0);
  sub_1C43FCF8C();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v13 = *(a1 + *(a3 + 28));
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  v14 = v13 - 1;
  if (v14 < 0)
  {
    v14 = -1;
  }

  return (v14 + 1);
}

void sub_1C451E398(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  type metadata accessor for PhaseStores(0);
  sub_1C43FCF8C();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    type metadata accessor for Source(0);
    sub_1C43FCF8C();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = a2;
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 20);
  }

  sub_1C440BAA8(v11, a2, a2, v10);
}

id sub_1C451E548@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 intValue];
  *a2 = result;
  return result;
}

uint64_t sub_1C451E57C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C47E2C04();
  *a1 = result;
  return result;
}

id sub_1C451E5D0@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 floatValue];
  *a2 = v4;
  return result;
}

id sub_1C451E658@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 doubleValue];
  *a2 = v4;
  return result;
}

uint64_t sub_1C451E6E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4EF9CD8();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_1C44157D4(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 24));
    if (v8 >= 3)
    {
      return v8 - 2;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1C451E788(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C4EF9CD8();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_1C440BAA8(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 2;
  }

  return result;
}

uint64_t sub_1C451E914(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 249)
  {
    v4 = *a1;
    if (v4 >= 7)
    {
      return v4 - 6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_1C4EFBE38();
    v9 = &a1[*(a3 + 20)];

    return sub_1C44157D4(v9, a2, v8);
  }
}

_BYTE *sub_1C451E994(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 249)
  {
    *result = a2 + 6;
  }

  else
  {
    v7 = sub_1C4EFBE38();
    v8 = &v5[*(a4 + 20)];

    return sub_1C440BAA8(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C451EA10()
{
  v1 = sub_1C4EF9CD8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  sub_1C440962C((v0 + 16));
  v7 = *(v2 + 8);
  v7(v0 + v4, v1);
  v7(v0 + v6, v1);

  return MEMORY[0x1EEE6BDD0](v0, v6 + v5, v3 | 7);
}

uint64_t sub_1C451EAFC()
{
  sub_1C456902C(&qword_1EC0BB4D0, &unk_1C4F20380);
  sub_1C43FD3F8();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1C451EC78(uint64_t a1, uint64_t a2, int *a3)
{
  sub_1C43FBE94();
  sub_1C4F00328();
  sub_1C43FCF8C();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = v3;
  }

  else
  {
    if (a2 == 2147483646)
    {
      return sub_1C4412FF8(v3 + a3[5]);
    }

    sub_1C456902C(&qword_1EC0BB690, &qword_1C4F20BF0);
    sub_1C43FCF8C();
    if (*(v12 + 84) == a2)
    {
      v8 = v11;
      v13 = a3[7];
    }

    else
    {
      v8 = sub_1C456902C(&qword_1EC0BB688, &unk_1C4F20AB0);
      v13 = a3[8];
    }

    v9 = v3 + v13;
  }

  return sub_1C44157D4(v9, a2, v8);
}

void sub_1C451ED8C()
{
  sub_1C43FEE84();
  sub_1C43FCF8C();
  if (*(v4 + 84) == v3)
  {
    v5 = sub_1C43FD5B4();
  }

  else
  {
    if (v3 == 2147483646)
    {
      *(v1 + v2[5] + 8) = v0;
      return;
    }

    sub_1C456902C(&qword_1EC0BB690, &qword_1C4F20BF0);
    sub_1C43FCF8C();
    if (*(v8 + 84) == v3)
    {
      v6 = v7;
      v9 = v2[7];
    }

    else
    {
      v6 = sub_1C456902C(&qword_1EC0BB688, &unk_1C4F20AB0);
      v9 = v2[8];
    }

    v5 = v1 + v9;
  }

  sub_1C440BAA8(v5, v0, v0, v6);
}

uint64_t sub_1C451EE98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C4403FC0();
  sub_1C4F00328();
  sub_1C43FCF8C();
  if (*(v7 + 84) != a2)
  {
    return sub_1C4412FF8(v3 + *(a3 + 24));
  }

  return sub_1C44157D4(v3, a2, v6);
}

void sub_1C451EF30()
{
  sub_1C43FEE84();
  sub_1C43FCF8C();
  if (*(v4 + 84) == v3)
  {
    v5 = sub_1C43FD5B4();

    sub_1C440BAA8(v5, v0, v0, v6);
  }

  else
  {
    *(v1 + *(v2 + 24) + 8) = v0;
  }
}

uint64_t sub_1C451EFC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C4403FC0();
  sub_1C4F00328();
  sub_1C43FCF8C();
  if (*(v7 + 84) == a2)
  {

    return sub_1C44157D4(v3, a2, v6);
  }

  else
  {
    v9 = *(v3 + *(a3 + 20));
    if (v9 >= 0xFFFFFFFF)
    {
      LODWORD(v9) = -1;
    }

    return (v9 + 1);
  }
}

void sub_1C451F064()
{
  sub_1C43FEE84();
  sub_1C43FCF8C();
  if (*(v4 + 84) == v3)
  {
    v5 = sub_1C43FD5B4();

    sub_1C440BAA8(v5, v0, v0, v6);
  }

  else
  {
    *(v1 + *(v2 + 20)) = (v0 - 1);
  }
}

uint64_t sub_1C451FF20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4EFDAB8();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_1C44157D4(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1C451FFD0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C4EFDAB8();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_1C440BAA8(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1C452007C()
{
  v1 = (sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  v5 = sub_1C4EF9CD8();
  sub_1C43FBCE0();
  v7 = *(v6 + 8);
  v7(v0 + v3, v5);
  v7(v0 + v3 + v1[11], v5);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1C4520198()
{

  sub_1C43FBDBC();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C45201CC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C4520204()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C45202B0()
{

  sub_1C43FBDBC();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C45202F0()
{

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1C4520350(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0BBC10, &qword_1C4F22538);
  v5 = sub_1C44157D4(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C45203A4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1C456902C(&qword_1EC0BBC10, &qword_1C4F22538);

  return sub_1C440BAA8(a1, v5, a3, v6);
}

uint64_t sub_1C4520478()
{

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1C45205B0()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C452060C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C4520654()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C45206A8()
{
  _Block_release(*(v0 + 24));

  v1 = sub_1C443FBD0();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C45206E0()
{
  sub_1C456902C(&qword_1EC0BBFD0, &qword_1C4F22E20);
  sub_1C43FCDF8();
  sub_1C440962C((v0 + 16));

  v1 = sub_1C4425088();
  v2(v1);
  v3 = sub_1C441E334();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

uint64_t sub_1C452079C()
{
  sub_1C456902C(&qword_1EC0BBFD8, &qword_1C4F22E38);
  sub_1C43FBCE0();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1C4520828()
{
  sub_1C456902C(&qword_1EC0BBFF0, &qword_1C4F22E50);
  sub_1C43FCDF8();
  sub_1C440962C((v0 + 16));

  v1 = sub_1C4425088();
  v2(v1);
  v3 = sub_1C441E334();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

uint64_t sub_1C45208E4()
{
  sub_1C456902C(&qword_1EC0BBFF8, &qword_1C4F22E68);
  sub_1C43FCDF8();
  sub_1C440962C((v0 + 16));
  v1 = sub_1C4425088();
  v2(v1);
  v3 = sub_1C441E334();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

uint64_t sub_1C45209E8()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C4520ADC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Configuration(0);

  return sub_1C44157D4(a1, a2, v4);
}

uint64_t sub_1C4520B24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Configuration(0);

  return sub_1C440BAA8(a1, a2, a2, v4);
}

uint64_t sub_1C4520DFC(uint64_t a1, uint64_t a2, int *a3)
{
  sub_1C43FBE94();
  sub_1C4F00328();
  sub_1C43FCF8C();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = v3;
LABEL_15:

    return sub_1C44157D4(v9, a2, v8);
  }

  if (a2 != 2147483646)
  {
    sub_1C456902C(&qword_1EC0BC400, &qword_1C4F239E0);
    sub_1C43FCF8C();
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v15 = a3[8];
    }

    else
    {
      sub_1C456902C(&qword_1EC0BC408, &qword_1C4F239E8);
      sub_1C43FCF8C();
      if (*(v17 + 84) == a2)
      {
        v8 = v16;
        v15 = a3[9];
      }

      else
      {
        v8 = sub_1C456902C(&qword_1EC0BC410, &unk_1C4F239F0);
        v15 = a3[10];
      }
    }

    v9 = v3 + v15;
    goto LABEL_15;
  }

  v10 = *(v3 + a3[5] + 8);
  if (v10 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  v11 = v10 - 1;
  if (v11 < 0)
  {
    v11 = -1;
  }

  return (v11 + 1);
}

void sub_1C4520F78(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_1C43FBE94();
  sub_1C4F00328();
  sub_1C43FCF8C();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v4;
  }

  else
  {
    if (a3 == 2147483646)
    {
      *(v4 + a4[5] + 8) = a2;
      return;
    }

    sub_1C456902C(&qword_1EC0BC400, &qword_1C4F239E0);
    sub_1C43FCF8C();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[8];
    }

    else
    {
      sub_1C456902C(&qword_1EC0BC408, &qword_1C4F239E8);
      sub_1C43FCF8C();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[9];
      }

      else
      {
        v10 = sub_1C456902C(&qword_1EC0BC410, &unk_1C4F239F0);
        v14 = a4[10];
      }
    }

    v11 = v4 + v14;
  }

  sub_1C440BAA8(v11, a2, a2, v10);
}

uint64_t sub_1C45212B4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1C4F00328();
    v9 = a1 + *(a3 + 24);

    return sub_1C44157D4(v9, a2, v8);
  }
}

void *sub_1C452133C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1C4F00328();
    v8 = v5 + *(a4 + 24);

    return sub_1C440BAA8(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C45213BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C4F00328();
  sub_1C43FCF8C();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_5:

    return sub_1C44157D4(v9, a2, v8);
  }

  sub_1C456902C(&qword_1EC0BC4E8, &unk_1C4F24360);
  sub_1C43FCF8C();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v13 = *(a1 + *(a3 + 24) + 8);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  v14 = v13 - 1;
  if (v14 < 0)
  {
    v14 = -1;
  }

  return (v14 + 1);
}

void sub_1C45214C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1C4F00328();
  sub_1C43FCF8C();
  if (*(v8 + 84) == a3)
  {
    v9 = sub_1C43FD5B4();
  }

  else
  {
    sub_1C456902C(&qword_1EC0BC4E8, &unk_1C4F24360);
    sub_1C43FCF8C();
    if (*(v12 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = a2;
      return;
    }

    v10 = v11;
    v9 = a1 + *(a4 + 20);
  }

  sub_1C440BAA8(v9, a2, a2, v10);
}

uint64_t sub_1C4527F90()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C4527FD4()
{

  sub_1C44042C4();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C4528008()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C45280BC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1C478B090(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1C4528120(uint64_t a1, int a2)
{
  sub_1C4403FC0();
  sub_1C4EF9CD8();
  sub_1C43FCF8C();
  if (*(v3 + 84) == a2)
  {
    v4 = sub_1C4456280();

    return sub_1C44157D4(v4, v5, v6);
  }

  else
  {
    sub_1C4458490();
    return (v8 + 1);
  }
}

void sub_1C45281AC(uint64_t a1, int a2, int a3, uint64_t a4)
{
  sub_1C44158BC();
  sub_1C4EF9CD8();
  sub_1C43FCF8C();
  if (*(v8 + 84) == a3)
  {
    v9 = sub_1C442902C();

    sub_1C440BAA8(v9, v10, v11, v12);
  }

  else
  {
    *(v4 + *(a4 + 28) + 8) = (a2 - 1);
  }
}

uint64_t sub_1C4528288()
{
  v1 = sub_1C4EFE058();
  sub_1C43FCDF8();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = *(v6 + 64);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v7, v4 | 7);
}

uint64_t sub_1C4528348()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C45283D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C43FBE94();
  v7 = type metadata accessor for Source(v6);
  if (*(*(v7 - 8) + 84) == a2)
  {
    v8 = v7;
    v9 = v3;
  }

  else
  {
    if (a2 == 252)
    {
      v10 = *(v3 + *(a3 + 20));
      if (v10 >= 4)
      {
        return v10 - 3;
      }

      else
      {
        return 0;
      }
    }

    v8 = type metadata accessor for PhaseStores(0);
    v9 = v3 + *(a3 + 24);
  }

  return sub_1C44157D4(v9, a2, v8);
}

uint64_t sub_1C4528498(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1C43FBE94();
  result = type metadata accessor for Source(v8);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v11 = v4;
  }

  else
  {
    if (a3 == 252)
    {
      *(v4 + *(a4 + 20)) = a2 + 3;
      return result;
    }

    v10 = type metadata accessor for PhaseStores(0);
    v11 = v4 + *(a4 + 24);
  }

  return sub_1C440BAA8(v11, a2, a2, v10);
}

uint64_t sub_1C45285B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
    sub_1C43FCF8C();
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(a3 + 24);
    }

    else
    {
      v11 = type metadata accessor for CalendarItem(0);
      v12 = *(a3 + 72);
    }

    return sub_1C44157D4(a1 + v12, a2, v11);
  }
}

uint64_t sub_1C4528694(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
    sub_1C43FCF8C();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(a4 + 24);
    }

    else
    {
      v10 = type metadata accessor for CalendarItem(0);
      v11 = *(a4 + 72);
    }

    return sub_1C440BAA8(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_1C4528774(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C43FCF8C();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1 + *(a3 + 24);

    return sub_1C44157D4(v9, a2, v8);
  }

  else
  {
    v11 = *(a1 + *(a3 + 32) + 8);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }
}

void sub_1C4528830(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C43FCF8C();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1 + *(a4 + 24);

    sub_1C440BAA8(v11, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 32) + 8) = (a2 - 1);
  }
}

uint64_t sub_1C4528974()
{
  sub_1C456902C(&qword_1EC0BCD28, &qword_1C4F2A768);
  sub_1C43FBCE0();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1C4528B90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C43FBE94();
  sub_1C4F00328();
  sub_1C43FCF8C();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = v3;
LABEL_10:

    return sub_1C44157D4(v9, a2, v8);
  }

  if (a2 != 2147483646)
  {
    v8 = sub_1C456902C(&qword_1EC0BCF68, &qword_1C4F2C1A0);
    v9 = v3 + *(a3 + 32);
    goto LABEL_10;
  }

  v10 = *(v3 + *(a3 + 20) + 8);
  if (v10 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  v11 = v10 - 1;
  if (v11 < 0)
  {
    v11 = -1;
  }

  return (v11 + 1);
}

void sub_1C4528C74(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1C43FBE94();
  sub_1C4F00328();
  sub_1C43FCF8C();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v4;
  }

  else
  {
    if (a3 == 2147483646)
    {
      *(v4 + *(a4 + 20) + 8) = a2;
      return;
    }

    v10 = sub_1C456902C(&qword_1EC0BCF68, &qword_1C4F2C1A0);
    v11 = v4 + *(a4 + 32);
  }

  sub_1C440BAA8(v11, a2, a2, v10);
}

uint64_t sub_1C4529FC4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C4EFD548();
    v9 = a1 + *(a3 + 20);

    return sub_1C44157D4(v9, a2, v8);
  }
}

uint64_t sub_1C452A04C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C4EFD548();
    v8 = v5 + *(a4 + 20);

    return sub_1C440BAA8(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C452A14C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for PhaseStores(0);
  sub_1C43FCF8C();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    type metadata accessor for Source(0);
    sub_1C43FCF8C();
    if (*(v11 + 84) != a2)
    {
      v13 = *(a1 + *(a3 + 24));
      if (v13 >= 4)
      {
        return v13 - 3;
      }

      else
      {
        return 0;
      }
    }

    v8 = v10;
    v9 = a1 + *(a3 + 20);
  }

  return sub_1C44157D4(v9, a2, v8);
}

void sub_1C452A234(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  type metadata accessor for PhaseStores(0);
  sub_1C43FCF8C();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    type metadata accessor for Source(0);
    sub_1C43FCF8C();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 3;
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 20);
  }

  sub_1C440BAA8(v11, a2, a2, v10);
}

uint64_t sub_1C452A344(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for PhaseStores(0);
  sub_1C43FCF8C();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    type metadata accessor for Source(0);
    sub_1C43FCF8C();
    if (*(v11 + 84) != a2)
    {
      v13 = *(a1 + *(a3 + 24));
      if (v13 >= 4)
      {
        return v13 - 3;
      }

      else
      {
        return 0;
      }
    }

    v8 = v10;
    v9 = a1 + *(a3 + 20);
  }

  return sub_1C44157D4(v9, a2, v8);
}

void sub_1C452A42C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  type metadata accessor for PhaseStores(0);
  sub_1C43FCF8C();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    type metadata accessor for Source(0);
    sub_1C43FCF8C();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 3;
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 20);
  }

  sub_1C440BAA8(v11, a2, a2, v10);
}

uint64_t sub_1C452A514()
{

  return MEMORY[0x1EEE6BDD0](v0, 49, 7);
}

uint64_t sub_1C452A590()
{
  sub_1C441B92C();
  sub_1C43FCF8C();
  if (*(v4 + 84) == v0)
  {
    v5 = v3;
    v6 = v1;
  }

  else
  {
    if (v0 == 2147483646)
    {
      return sub_1C4412FF8(v1 + *(v2 + 20));
    }

    v5 = sub_1C456902C(&qword_1EC0BD4A0, &qword_1C4F2E1A0);
    v6 = v1 + *(v2 + 36);
  }

  return sub_1C44157D4(v6, v0, v5);
}

void sub_1C452A64C()
{
  sub_1C43FEE84();
  sub_1C43FCF8C();
  if (*(v1 + 84) == v0)
  {
    sub_1C43FD5B4();
  }

  else
  {
    if (v0 == 2147483646)
    {
      sub_1C441EC04();
      return;
    }

    sub_1C456902C(&qword_1EC0BD4A0, &qword_1C4F2E1A0);
  }

  sub_1C43FE688();

  sub_1C440BAA8(v2, v3, v4, v5);
}

uint64_t sub_1C452A6FC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1C4F00328();
    v9 = a1 + *(a3 + 20);

    return sub_1C44157D4(v9, a2, v8);
  }
}

void *sub_1C452A784(void *result, int a2, int a3)
{
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_1C4F00328();
    sub_1C43FE688();

    return sub_1C440BAA8(v3, v4, v5, v6);
  }

  return result;
}

uint64_t sub_1C452A800()
{
  sub_1C441B92C();
  sub_1C43FCF8C();
  if (*(v4 + 84) == v0)
  {
    v5 = v3;
    v6 = v1;
  }

  else
  {
    sub_1C456902C(&qword_1EC0BD4B0, &unk_1C4F2E1C0);
    sub_1C43FCF8C();
    if (*(v8 + 84) == v0)
    {
      v5 = v7;
      v9 = *(v2 + 20);
    }

    else
    {
      v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
      v9 = *(v2 + 24);
    }

    v6 = v1 + v9;
  }

  return sub_1C44157D4(v6, v0, v5);
}

uint64_t sub_1C452A8E0()
{
  sub_1C43FEE84();
  sub_1C43FCF8C();
  if (*(v1 + 84) == v0)
  {
    sub_1C43FD5B4();
  }

  else
  {
    sub_1C456902C(&qword_1EC0BD4B0, &unk_1C4F2E1C0);
    sub_1C43FCF8C();
    if (*(v2 + 84) != v0)
    {
      sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
    }
  }

  sub_1C43FE688();

  return sub_1C440BAA8(v3, v4, v5, v6);
}

uint64_t sub_1C452A9BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C4F00328();
  sub_1C43FCF8C();
  if (*(v7 + 84) != a2)
  {
    return sub_1C4412FF8(a1 + *(a3 + 20));
  }

  return sub_1C44157D4(a1, a2, v6);
}

void sub_1C452AA58()
{
  sub_1C43FEE84();
  sub_1C43FCF8C();
  if (*(v1 + 84) == v0)
  {
    sub_1C43FD5B4();
    sub_1C43FE688();

    sub_1C440BAA8(v2, v3, v4, v5);
  }

  else
  {
    sub_1C441EC04();
  }
}

uint64_t sub_1C452AB3C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_1C4F00328();
    sub_1C43FCF8C();
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(a3 + 28);
    }

    else
    {
      v10 = sub_1C456902C(&qword_1EC0BB438, qword_1C4F1F960);
      v11 = *(a3 + 32);
    }

    return sub_1C44157D4(a1 + v11, a2, v10);
  }
}

void *sub_1C452AC10(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_1C4F00328();
    sub_1C43FCF8C();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(a4 + 28);
    }

    else
    {
      v10 = sub_1C456902C(&qword_1EC0BB438, qword_1C4F1F960);
      v11 = *(a4 + 32);
    }

    return sub_1C440BAA8(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_1C452ACE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C43FBE94();
  sub_1C4F00328();
  sub_1C43FCF8C();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = v3;
  }

  else
  {
    if (a2 == 2147483646)
    {
      return sub_1C4412FF8(v3 + *(a3 + 20));
    }

    v8 = sub_1C456902C(&qword_1EC0BB438, qword_1C4F1F960);
    v9 = v3 + *(a3 + 24);
  }

  return sub_1C44157D4(v9, a2, v8);
}

void sub_1C452ADA8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1C43FBE94();
  sub_1C4F00328();
  sub_1C43FCF8C();
  if (*(v8 + 84) == a3)
  {
    v9 = sub_1C43FD5B4();
  }

  else
  {
    if (a3 == 2147483646)
    {
      *(v4 + *(a4 + 20) + 8) = a2;
      return;
    }

    v10 = sub_1C456902C(&qword_1EC0BB438, qword_1C4F1F960);
    v9 = v4 + *(a4 + 24);
  }

  sub_1C440BAA8(v9, a2, a2, v10);
}

uint64_t sub_1C452AE78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C4F00328();
  sub_1C43FCF8C();
  if (*(v7 + 84) != a2)
  {
    return sub_1C4412FF8(a1 + *(a3 + 32));
  }

  return sub_1C44157D4(a1, a2, v6);
}

void sub_1C452AF14(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1C43FBE94();
  sub_1C4F00328();
  sub_1C43FCF8C();
  if (*(v8 + 84) == a3)
  {
    v9 = sub_1C43FD5B4();

    sub_1C440BAA8(v9, a2, a2, v10);
  }

  else
  {
    *(v4 + *(a4 + 32) + 8) = a2;
  }
}

uint64_t sub_1C452B36C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0BD678, &qword_1C4F2F378);
  v5 = sub_1C44157D4(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C452B3C0(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1C456902C(&qword_1EC0BD678, &qword_1C4F2F378);

  return sub_1C440BAA8(a1, v5, a3, v6);
}

uint64_t sub_1C452B4D4()
{
  sub_1C440F6B8();
  sub_1C4EF9CD8();
  sub_1C43FCF8C();
  if (*(v4 + 84) != v1)
  {
    return sub_1C4410CA0(*(v2 + 24));
  }

  return sub_1C44157D4(v0, v1, v3);
}

void sub_1C452B560()
{
  sub_1C43FC36C();
  sub_1C4EF9CD8();
  sub_1C43FCF8C();
  if (*(v4 + 84) == v3)
  {
    v5 = sub_1C440AB04();

    sub_1C440BAA8(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 24) + 8) = (v0 - 1);
  }
}

uint64_t sub_1C452B614()
{
  v3 = sub_1C440F6B8();
  type metadata accessor for FeedbackLogDatabase.FeedbackLogDatabaseEntry(v3);
  sub_1C43FCF8C();
  if (*(v5 + 84) != v1)
  {
    return sub_1C4410CA0(*(v2 + 20));
  }

  return sub_1C44157D4(v0, v1, v4);
}

void sub_1C452B6A0()
{
  v4 = sub_1C43FC36C();
  type metadata accessor for FeedbackLogDatabase.FeedbackLogDatabaseEntry(v4);
  sub_1C43FCF8C();
  if (*(v5 + 84) == v3)
  {
    v6 = sub_1C440AB04();

    sub_1C440BAA8(v6, v7, v8, v9);
  }

  else
  {
    *(v1 + *(v2 + 20) + 8) = (v0 - 1);
  }
}

uint64_t sub_1C452B72C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C4EF9CD8();
  sub_1C43FCF8C();
  if (*(v7 + 84) != a2)
  {
    return sub_1C4410CA0(*(a3 + 28));
  }

  v8 = v6;
  v9 = a1 + *(a3 + 20);

  return sub_1C44157D4(v9, a2, v8);
}

void sub_1C452B7C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1C4EF9CD8();
  sub_1C43FCF8C();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1 + *(a4 + 20);

    sub_1C440BAA8(v11, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = (a2 - 1);
  }
}

uint64_t sub_1C452B8F0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1C4EF9CD8();
    v9 = a1 + *(a3 + 20);

    return sub_1C44157D4(v9, a2, v8);
  }
}

void *sub_1C452B978(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1C4EF9CD8();
    v8 = v5 + *(a4 + 20);

    return sub_1C440BAA8(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C452BA20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Configuration(0);

  return sub_1C44157D4(a1, a2, v4);
}

uint64_t sub_1C452BA68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Configuration(0);

  return sub_1C440BAA8(a1, a2, a2, v4);
}

uint64_t sub_1C452BAB4()
{
  sub_1C440962C((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C452BAEC()
{
  v1 = type metadata accessor for LOIBasedSegment(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = (v2 + 24) & ~v2;
  v5 = (v3 + v2 + v4) & ~v2;

  v6 = v0 + v4;
  v7 = sub_1C4EF9CD8();
  sub_1C43FBCE0();
  v9 = *(v8 + 8);
  v9(v6, v7);
  v9(v6 + v1[5], v7);
  v10 = (v6 + v1[6]);
  if (v10[3])
  {
    sub_1C440962C(v10);
  }

  sub_1C440962C((v6 + v1[7]));
  v9(v0 + v5, v7);
  v9(v0 + v5 + v1[5], v7);
  v11 = (v0 + v5 + v1[6]);
  if (v11[3])
  {
    sub_1C440962C(v11);
  }

  sub_1C440962C((v0 + v5 + v1[7]));

  return MEMORY[0x1EEE6BDD0](v0, v5 + v3, v2 | 7);
}

uint64_t sub_1C452BC74()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C452BCAC()
{
  v1 = sub_1C4EFE1C8();
  sub_1C43FCE64();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v7, v4 | 7);
}

uint64_t sub_1C452BE30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C43FBE94();
  type metadata accessor for PhaseStores(v6);
  sub_1C43FCF8C();
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
LABEL_5:

    return sub_1C44157D4(v10, a2, v9);
  }

  type metadata accessor for Source(0);
  sub_1C43FCF8C();
  if (*(v12 + 84) == a2)
  {
    v9 = v11;
    v10 = v3 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(v3 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

void sub_1C452BF18(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1C43FBE94();
  type metadata accessor for PhaseStores(v8);
  sub_1C43FCF8C();
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v4;
  }

  else
  {
    type metadata accessor for Source(0);
    sub_1C43FCF8C();
    if (*(v14 + 84) != a3)
    {
      *(v4 + *(a4 + 24)) = (a2 - 1);
      return;
    }

    v11 = v13;
    v12 = v4 + *(a4 + 20);
  }

  sub_1C440BAA8(v12, a2, a2, v11);
}

uint64_t sub_1C452BFFC()
{

  sub_1C442A404();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C452C144(uint64_t a1, uint64_t a2, int *a3)
{
  type metadata accessor for Source(0);
  sub_1C43FCF8C();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_11:

    return sub_1C44157D4(v9, a2, v8);
  }

  type metadata accessor for PhaseStores(0);
  sub_1C43FCF8C();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v12 = a3[6];
LABEL_10:
    v9 = a1 + v12;
    goto LABEL_11;
  }

  if (a2 != 0x7FFFFFFF)
  {
    v8 = sub_1C4EFD548();
    v12 = a3[8];
    goto LABEL_10;
  }

  v13 = *(a1 + a3[7]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_1C452C250(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  type metadata accessor for Source(0);
  sub_1C43FCF8C();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    type metadata accessor for PhaseStores(0);
    sub_1C43FCF8C();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[6];
    }

    else
    {
      if (a3 == 0x7FFFFFFF)
      {
        *(a1 + a4[7]) = (a2 - 1);
        return;
      }

      v10 = sub_1C4EFD548();
      v14 = a4[8];
    }

    v11 = a1 + v14;
  }

  sub_1C440BAA8(v11, a2, a2, v10);
}

uint64_t sub_1C452C358(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4EF9CD8();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_1C44157D4(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 24) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1C452C408(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C4EF9CD8();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_1C440BAA8(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1C452C504(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C4EF97E8();

  return sub_1C44157D4(a1, a2, v4);
}

uint64_t sub_1C452C54C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C4EF97E8();

  return sub_1C440BAA8(a1, a2, a2, v4);
}

uint64_t sub_1C452C5C8()
{
  v1 = (type metadata accessor for StaticKnowledgeAssetMetadataInManifest(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();

  v5 = v1[8];
  v6 = sub_1C4F001E8();
  if (!sub_1C44157D4(v0 + v3 + v5, 1, v6))
  {
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_1C452C6F0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C452C76C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C452C7A8()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C452C7F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C43FBE94();
  v5 = type metadata accessor for StaticKnowledgeAssetMetadata(v4);

  return sub_1C44157D4(v2, a2, v5);
}

uint64_t sub_1C452C834(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C43FBE94();
  v5 = type metadata accessor for StaticKnowledgeAssetMetadata(v4);

  return sub_1C440BAA8(v2, a2, a2, v5);
}

uint64_t sub_1C452D0D8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C485E33C();
  *a1 = result;
  return result;
}

uint64_t sub_1C452D100@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C485FB8C();
  *a1 = result;
  return result;
}

uint64_t sub_1C452D144@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C4860DB0();
  *a1 = result;
  return result;
}

uint64_t sub_1C452D16C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C4861924();
  *a1 = result;
  return result;
}

uint64_t sub_1C452D194(uint64_t a1)
{
  *(a1 + 8) = sub_1C4490F60(&qword_1EDDFE208, type metadata accessor for GraphTriple, &protocol conformance descriptor for GraphTriple);
  result = sub_1C4490F60(&qword_1EDDEBBC8, type metadata accessor for GraphTriple, &protocol conformance descriptor for GraphTriple);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C452D260(uint64_t a1)
{
  *(a1 + 8) = sub_1C4490F60(&qword_1EDDFC2C8, type metadata accessor for EventTriple, &protocol conformance descriptor for EventTriple);
  result = sub_1C4490F60(&qword_1EDDEBC20, type metadata accessor for EventTriple, &protocol conformance descriptor for EventTriple);
  *(a1 + 16) = result;
  return result;
}

double sub_1C452D6C8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    sub_1C442E860(a1 + 32, a2);
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1C452D744()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C452D794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_1C456902C(&qword_1EC0BE560, &qword_1C4F37468);
    v10 = a1 + *(a3 + 32);

    return sub_1C44157D4(v10, a2, v9);
  }
}

uint64_t sub_1C452D834(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 16) = a2;
  }

  else
  {
    v7 = sub_1C456902C(&qword_1EC0BE560, &qword_1C4F37468);
    v8 = v5 + *(a4 + 32);

    return sub_1C440BAA8(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C452D8F8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1C43FBE94();
  type metadata accessor for PhaseStores(v6);
  sub_1C43FCF8C();
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
LABEL_11:

    return sub_1C44157D4(v10, a2, v9);
  }

  type metadata accessor for Source(0);
  sub_1C43FCF8C();
  if (*(v12 + 84) == a2)
  {
    v9 = v11;
    v13 = a3[5];
LABEL_10:
    v10 = v3 + v13;
    goto LABEL_11;
  }

  if (a2 != 0x7FFFFFFF)
  {
    v9 = sub_1C4EFD548();
    v13 = a3[8];
    goto LABEL_10;
  }

  v14 = *(v3 + a3[7]);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

void sub_1C452DA00(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1C43FBE94();
  type metadata accessor for PhaseStores(v8);
  sub_1C43FCF8C();
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v4;
  }

  else
  {
    type metadata accessor for Source(0);
    sub_1C43FCF8C();
    if (*(v14 + 84) == a3)
    {
      v11 = v13;
      v15 = a4[5];
    }

    else
    {
      if (a3 == 0x7FFFFFFF)
      {
        *(v4 + a4[7]) = (a2 - 1);
        return;
      }

      v11 = sub_1C4EFD548();
      v15 = a4[8];
    }

    v12 = v4 + v15;
  }

  sub_1C440BAA8(v12, a2, a2, v11);
}

uint64_t sub_1C452DB2C(uint64_t a1, uint64_t a2, int *a3)
{
  type metadata accessor for PhaseStores(0);
  sub_1C43FCF8C();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    type metadata accessor for Source(0);
    sub_1C43FCF8C();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = a3[5];
    }

    else
    {
      if (a2 == 252)
      {
        v13 = *(a1 + a3[6]);
        if (v13 >= 4)
        {
          return v13 - 3;
        }

        else
        {
          return 0;
        }
      }

      v8 = sub_1C456902C(&qword_1EC0C2A90, &unk_1C4F16D30);
      v12 = a3[7];
    }

    v9 = a1 + v12;
  }

  return sub_1C44157D4(v9, a2, v8);
}

void sub_1C452DC3C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  type metadata accessor for PhaseStores(0);
  sub_1C43FCF8C();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    type metadata accessor for Source(0);
    sub_1C43FCF8C();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      if (a3 == 252)
      {
        *(a1 + a4[6]) = a2 + 3;
        return;
      }

      v10 = sub_1C456902C(&qword_1EC0C2A90, &unk_1C4F16D30);
      v14 = a4[7];
    }

    v11 = a1 + v14;
  }

  sub_1C440BAA8(v11, a2, a2, v10);
}

uint64_t sub_1C452DD4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4EF9CD8();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_1C44157D4(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 24) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_1C452DE08(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C4EF9CD8();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_1C440BAA8(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  return result;
}

uint64_t sub_1C452DEC8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1C43FBE94();
  type metadata accessor for PhaseStores(v6);
  sub_1C43FCF8C();
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
LABEL_11:

    return sub_1C44157D4(v10, a2, v9);
  }

  type metadata accessor for Source(0);
  sub_1C43FCF8C();
  if (*(v12 + 84) == a2)
  {
    v9 = v11;
    v13 = a3[5];
LABEL_10:
    v10 = v3 + v13;
    goto LABEL_11;
  }

  if (a2 != 0x7FFFFFFF)
  {
    v9 = sub_1C4EFD548();
    v13 = a3[8];
    goto LABEL_10;
  }

  v14 = *(v3 + a3[7]);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

void sub_1C452DFD0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1C43FBE94();
  type metadata accessor for PhaseStores(v8);
  sub_1C43FCF8C();
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v4;
  }

  else
  {
    type metadata accessor for Source(0);
    sub_1C43FCF8C();
    if (*(v14 + 84) == a3)
    {
      v11 = v13;
      v15 = a4[5];
    }

    else
    {
      if (a3 == 0x7FFFFFFF)
      {
        *(v4 + a4[7]) = (a2 - 1);
        return;
      }

      v11 = sub_1C4EFD548();
      v15 = a4[8];
    }

    v12 = v4 + v15;
  }

  sub_1C440BAA8(v12, a2, a2, v11);
}

uint64_t sub_1C452E640(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C43FBE94();
  sub_1C4F00328();
  sub_1C43FCF8C();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = v3;
LABEL_10:

    return sub_1C44157D4(v9, a2, v8);
  }

  if (a2 != 2147483646)
  {
    v8 = sub_1C456902C(&qword_1EC0BF0B0, &qword_1C4F38128);
    v9 = v3 + *(a3 + 36);
    goto LABEL_10;
  }

  v10 = *(v3 + *(a3 + 20) + 8);
  if (v10 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  v11 = v10 - 1;
  if (v11 < 0)
  {
    v11 = -1;
  }

  return (v11 + 1);
}

void sub_1C452E724()
{
  sub_1C43FEE84();
  sub_1C43FCF8C();
  if (*(v4 + 84) == v3)
  {
    sub_1C43FD5B4();
  }

  else
  {
    if (v3 == 2147483646)
    {
      *(v1 + *(v2 + 20) + 8) = v0;
      return;
    }

    sub_1C456902C(&qword_1EC0BF0B0, &qword_1C4F38128);
  }

  sub_1C43FE688();

  sub_1C440BAA8(v5, v6, v7, v8);
}

uint64_t sub_1C452E7E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C43FBE94();
  sub_1C4F00328();
  sub_1C43FCF8C();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = v3;
  }

  else
  {
    sub_1C456902C(&qword_1EC0BF0D0, &qword_1C4F38150);
    sub_1C43FCF8C();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = *(a3 + 20);
    }

    else
    {
      v8 = sub_1C456902C(&qword_1EC0BF0D8, &qword_1C4F38158);
      v12 = *(a3 + 24);
    }

    v9 = v3 + v12;
  }

  return sub_1C44157D4(v9, a2, v8);
}

uint64_t sub_1C452E8CC()
{
  sub_1C43FEE84();
  sub_1C43FCF8C();
  if (*(v1 + 84) == v0)
  {
    sub_1C43FD5B4();
  }

  else
  {
    sub_1C456902C(&qword_1EC0BF0D0, &qword_1C4F38150);
    sub_1C43FCF8C();
    if (*(v2 + 84) != v0)
    {
      sub_1C456902C(&qword_1EC0BF0D8, &qword_1C4F38158);
    }
  }

  sub_1C43FE688();

  return sub_1C440BAA8(v3, v4, v5, v6);
}

uint64_t sub_1C452EB80(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1C43FBE94();
  type metadata accessor for PhaseStores(v6);
  sub_1C43FCF8C();
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
  }

  else
  {
    type metadata accessor for Source(0);
    sub_1C43FCF8C();
    if (*(v12 + 84) == a2)
    {
      v9 = v11;
      v13 = a3[5];
    }

    else
    {
      if (a2 == 252)
      {
        v14 = *(v3 + a3[6]);
        if (v14 >= 4)
        {
          return v14 - 3;
        }

        else
        {
          return 0;
        }
      }

      v9 = sub_1C4EFD548();
      v13 = a3[8];
    }

    v10 = v3 + v13;
  }

  return sub_1C44157D4(v10, a2, v9);
}

void sub_1C452EC80(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1C43FBE94();
  type metadata accessor for PhaseStores(v8);
  sub_1C43FCF8C();
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v4;
  }

  else
  {
    type metadata accessor for Source(0);
    sub_1C43FCF8C();
    if (*(v14 + 84) == a3)
    {
      v11 = v13;
      v15 = a4[5];
    }

    else
    {
      if (a3 == 252)
      {
        *(v4 + a4[6]) = a2 + 3;
        return;
      }

      v11 = sub_1C4EFD548();
      v15 = a4[8];
    }

    v12 = v4 + v15;
  }

  sub_1C440BAA8(v12, a2, a2, v11);
}

uint64_t sub_1C452EE4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4EF9CD8();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_1C44157D4(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 32) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1C452EEFC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C4EF9CD8();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_1C440BAA8(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 32) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1C452EFE4()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C452F068()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C452F0C8(uint64_t a1, uint64_t a2, int *a3)
{
  sub_1C4EFF0C8();
  sub_1C43FCF8C();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_8:

    return sub_1C44157D4(v9, a2, v8);
  }

  sub_1C4EFEEF8();
  sub_1C43FCF8C();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v12 = a3[5];
LABEL_7:
    v9 = a1 + v12;
    goto LABEL_8;
  }

  sub_1C4EFF8A8();
  sub_1C43FCF8C();
  if (*(v14 + 84) == a2)
  {
    v8 = v13;
    v12 = a3[6];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[8] + 8);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

void sub_1C452F1F8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_1C4EFF0C8();
  sub_1C43FCF8C();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    sub_1C4EFEEF8();
    sub_1C43FCF8C();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      sub_1C4EFF8A8();
      sub_1C43FCF8C();
      if (*(v16 + 84) != a3)
      {
        *(a1 + a4[8] + 8) = (a2 - 1);
        return;
      }

      v10 = v15;
      v14 = a4[6];
    }

    v11 = a1 + v14;
  }

  sub_1C440BAA8(v11, a2, a2, v10);
}

uint64_t sub_1C452F324(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for PhaseStores(0);
  sub_1C43FCF8C();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    type metadata accessor for Source(0);
    sub_1C43FCF8C();
    if (*(v11 + 84) != a2)
    {
      v13 = *(a1 + *(a3 + 24));
      if (v13 >= 4)
      {
        return v13 - 3;
      }

      else
      {
        return 0;
      }
    }

    v8 = v10;
    v9 = a1 + *(a3 + 20);
  }

  return sub_1C44157D4(v9, a2, v8);
}

void sub_1C452F40C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  type metadata accessor for PhaseStores(0);
  sub_1C43FCF8C();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    type metadata accessor for Source(0);
    sub_1C43FCF8C();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 3;
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 20);
  }

  sub_1C440BAA8(v11, a2, a2, v10);
}

uint64_t sub_1C452F500()
{
  v1 = sub_1C44067F0();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C452F530()
{

  v0 = sub_1C44067F0();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C452F56C()
{
  v1 = (type metadata accessor for INGroupSourceIngestor(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v10 = (((((((((((*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v3;
  sub_1C4EF98F8();
  sub_1C43FBCE0();
  (*(v5 + 8))(v4);
  type metadata accessor for PhaseStores(0);

  v6 = v4 + v1[7];

  v7 = *(type metadata accessor for Source(0) + 24);
  sub_1C4EFD548();
  sub_1C43FBCE0();
  (*(v8 + 8))(v6 + v7);

  return MEMORY[0x1EEE6BDD0](v0, v10 + 8, v2 | 7);
}

uint64_t sub_1C452F780(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for PhaseStores(0);
  sub_1C43FCF8C();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    type metadata accessor for Source(0);
    sub_1C43FCF8C();
    if (*(v11 + 84) != a2)
    {
      v13 = *(a1 + *(a3 + 24));
      if (v13 >= 4)
      {
        return v13 - 3;
      }

      else
      {
        return 0;
      }
    }

    v8 = v10;
    v9 = a1 + *(a3 + 20);
  }

  return sub_1C44157D4(v9, a2, v8);
}

void sub_1C452F868(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  type metadata accessor for PhaseStores(0);
  sub_1C43FCF8C();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    type metadata accessor for Source(0);
    sub_1C43FCF8C();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 3;
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 20);
  }

  sub_1C440BAA8(v11, a2, a2, v10);
}

uint64_t sub_1C452F95C()
{
  v1 = sub_1C44067F0();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C452F98C()
{

  v0 = sub_1C44067F0();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C452F9C8()
{
  v1 = (type metadata accessor for INPersonSourceIngestor(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v10 = (((((((((((*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v3;
  sub_1C4EF98F8();
  sub_1C43FBCE0();
  (*(v5 + 8))(v4);
  type metadata accessor for PhaseStores(0);

  v6 = v4 + v1[7];

  v7 = *(type metadata accessor for Source(0) + 24);
  sub_1C4EFD548();
  sub_1C43FBCE0();
  (*(v8 + 8))(v6 + v7);

  return MEMORY[0x1EEE6BDD0](v0, v10 + 8, v2 | 7);
}

uint64_t sub_1C452FC04()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C452FC3C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C452FE98()
{
  sub_1C440962C((v0 + 16));
  sub_1C44006A8();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C452FECC()
{

  sub_1C440962C((v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1C452FF98()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C452FFE4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C453001C()
{
  _Block_release(*(v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C4530064()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C45300AC()
{
  _Block_release(*(v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C45301CC()
{

  sub_1C4434164();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C4530230()
{
  _Block_release(*(v0 + 24));

  sub_1C4418B14();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C4530274()
{
  _Block_release(*(v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C45302CC()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C4530304()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C45303DC()
{
  _Block_release(*(v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C45304CC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C4EFCEB8();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 32);
    }

    else
    {
      v9 = sub_1C4EFFC98();
      v10 = *(a3 + 36);
    }

    return sub_1C44157D4(a1 + v10, a2, v9);
  }
}

uint64_t sub_1C4530598(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1C4EFCEB8();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 32);
    }

    else
    {
      v9 = sub_1C4EFFC98();
      v10 = *(a4 + 36);
    }

    return sub_1C440BAA8(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_1C4530688()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C45306D0()
{
  _Block_release(*(v0 + 48));

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1C453079C()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C4530834()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C4530878()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C4530B4C()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C4530BD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for PhaseStores(0);
  sub_1C43FCF8C();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    type metadata accessor for Source(0);
    sub_1C43FCF8C();
    if (*(v11 + 84) != a2)
    {
      v13 = *(a1 + *(a3 + 24));
      if (v13 >= 4)
      {
        return v13 - 3;
      }

      else
      {
        return 0;
      }
    }

    v8 = v10;
    v9 = a1 + *(a3 + 20);
  }

  return sub_1C44157D4(v9, a2, v8);
}

void sub_1C4530CBC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  type metadata accessor for PhaseStores(0);
  sub_1C43FCF8C();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    type metadata accessor for Source(0);
    sub_1C43FCF8C();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 3;
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 20);
  }

  sub_1C440BAA8(v11, a2, a2, v10);
}

uint64_t sub_1C4530DB0()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C4530E58()
{
  v1 = (type metadata accessor for IPEntityTaggingPersonInferenceSourceIngestor(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (((((((((*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  sub_1C4EF98F8();
  sub_1C43FBCE0();
  (*(v6 + 8))(v5);
  type metadata accessor for PhaseStores(0);

  v7 = v5 + v1[7];

  v8 = *(type metadata accessor for Source(0) + 24);
  sub_1C4EFD548();
  sub_1C43FBCE0();
  (*(v9 + 8))(v7 + v8);

  return MEMORY[0x1EEE6BDD0](v0, v4 + 8, v2 | 7);
}

uint64_t sub_1C453105C()
{
  sub_1C45A23B4(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));

  return MEMORY[0x1EEE6BDD0](v0, 57, 7);
}

uint64_t sub_1C45310A0()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C45310F0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C453112C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_1C4EF9CD8();

  return sub_1C44157D4(a1 + v5, a2, v6);
}

uint64_t sub_1C4531180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_1C4EF9CD8();

  return sub_1C440BAA8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1C4531228()
{
  sub_1C440962C((v0 + 16));
  sub_1C44006A8();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C4531404()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C453143C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C4531514(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0C0C58, &unk_1C4F40340);
  v5 = sub_1C44157D4(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C4531568(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1C456902C(&qword_1EC0C0C58, &unk_1C4F40340);

  return sub_1C440BAA8(a1, v5, a3, v6);
}

uint64_t sub_1C45317C4()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C4531850()
{
  v1 = *(type metadata accessor for Configuration(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_1C4EF98F8();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1C4531948(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C43FECE0();
  type metadata accessor for Source(v6);
  sub_1C43FCF8C();
  if (*(v8 + 84) == v3)
  {
    v9 = v7;
    v10 = v4;
LABEL_5:

    return sub_1C44157D4(v10, v3, v9);
  }

  type metadata accessor for PhaseStores(0);
  sub_1C43FCF8C();
  if (*(v12 + 84) == v3)
  {
    v9 = v11;
    v10 = v4 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = *(v4 + *(a3 + 28));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

void sub_1C4531A2C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1C43FECE0();
  type metadata accessor for Source(v8);
  sub_1C43FCF8C();
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v5;
  }

  else
  {
    type metadata accessor for PhaseStores(0);
    sub_1C43FCF8C();
    if (*(v14 + 84) != a3)
    {
      *(v5 + *(a4 + 28)) = (v4 - 1);
      return;
    }

    v11 = v13;
    v12 = v5 + *(a4 + 24);
  }

  sub_1C440BAA8(v12, v4, v4, v11);
}

uint64_t sub_1C4531B0C(uint64_t a1, uint64_t a2, int *a3)
{
  sub_1C43FECE0();
  sub_1C4EF9CD8();
  sub_1C43FCF8C();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = v4;
  }

  else
  {
    type metadata accessor for PhaseStores(0);
    sub_1C43FCF8C();
    if (*(v11 + 84) == v3)
    {
      v8 = v10;
      v12 = a3[5];
    }

    else
    {
      type metadata accessor for Source(0);
      sub_1C43FCF8C();
      if (*(v14 + 84) != v3)
      {
        v16 = *(v4 + a3[7]);
        if (v16 >= 4)
        {
          return v16 - 3;
        }

        else
        {
          return 0;
        }
      }

      v8 = v13;
      v12 = a3[6];
    }

    v9 = v4 + v12;
  }

  return sub_1C44157D4(v9, v3, v8);
}

void sub_1C4531C2C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_1C43FECE0();
  sub_1C4EF9CD8();
  sub_1C43FCF8C();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v5;
  }

  else
  {
    type metadata accessor for PhaseStores(0);
    sub_1C43FCF8C();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      type metadata accessor for Source(0);
      sub_1C43FCF8C();
      if (*(v16 + 84) != a3)
      {
        *(v5 + a4[7]) = v4 + 3;
        return;
      }

      v10 = v15;
      v14 = a4[6];
    }

    v11 = v5 + v14;
  }

  sub_1C440BAA8(v11, v4, v4, v10);
}

uint64_t sub_1C4531D70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C43FBE94();
  type metadata accessor for PhaseStores(v6);
  sub_1C43FCF8C();
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
LABEL_5:

    return sub_1C44157D4(v10, a2, v9);
  }

  type metadata accessor for Source(0);
  sub_1C43FCF8C();
  if (*(v12 + 84) == a2)
  {
    v9 = v11;
    v10 = v3 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(v3 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

void sub_1C4531E58(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1C43FBE94();
  type metadata accessor for PhaseStores(v8);
  sub_1C43FCF8C();
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v4;
  }

  else
  {
    type metadata accessor for Source(0);
    sub_1C43FCF8C();
    if (*(v14 + 84) != a3)
    {
      *(v4 + *(a4 + 24)) = (a2 - 1);
      return;
    }

    v11 = v13;
    v12 = v4 + *(a4 + 20);
  }

  sub_1C440BAA8(v12, a2, a2, v11);
}

uint64_t sub_1C4531F78()
{
  sub_1C43FBDBC();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C4531FAC()
{
  sub_1C43FBDBC();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C4531FE0()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C4532020()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C45320A0(uint64_t a1, uint64_t a2, int *a3)
{
  sub_1C4EFF0C8();
  sub_1C43FCF8C();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_8:

    return sub_1C44157D4(v9, a2, v8);
  }

  sub_1C4EFEEF8();
  sub_1C43FCF8C();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v12 = a3[5];
LABEL_7:
    v9 = a1 + v12;
    goto LABEL_8;
  }

  sub_1C4EFF8A8();
  sub_1C43FCF8C();
  if (*(v14 + 84) == a2)
  {
    v8 = v13;
    v12 = a3[6];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[8] + 8);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

void sub_1C45321D0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_1C4EFF0C8();
  sub_1C43FCF8C();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    sub_1C4EFEEF8();
    sub_1C43FCF8C();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      sub_1C4EFF8A8();
      sub_1C43FCF8C();
      if (*(v16 + 84) != a3)
      {
        *(a1 + a4[8] + 8) = (a2 - 1);
        return;
      }

      v10 = v15;
      v14 = a4[6];
    }

    v11 = a1 + v14;
  }

  sub_1C440BAA8(v11, a2, a2, v10);
}

uint64_t sub_1C4532478(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C43FBE94();
  type metadata accessor for PhaseStores(v6);
  sub_1C43FCF8C();
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
LABEL_5:

    return sub_1C44157D4(v10, a2, v9);
  }

  type metadata accessor for Source(0);
  sub_1C43FCF8C();
  if (*(v12 + 84) == a2)
  {
    v9 = v11;
    v10 = v3 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(v3 + *(a3 + 28));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

void sub_1C4532560(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1C43FBE94();
  type metadata accessor for PhaseStores(v8);
  sub_1C43FCF8C();
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v4;
  }

  else
  {
    type metadata accessor for Source(0);
    sub_1C43FCF8C();
    if (*(v14 + 84) != a3)
    {
      *(v4 + *(a4 + 28)) = (a2 - 1);
      return;
    }

    v11 = v13;
    v12 = v4 + *(a4 + 20);
  }

  sub_1C440BAA8(v12, a2, a2, v11);
}

uint64_t sub_1C453266C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4EF9CD8();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_1C44157D4(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 24));
    if (v8 >= 0xA)
    {
      return v8 - 9;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1C4532714(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C4EF9CD8();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_1C440BAA8(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 9;
  }

  return result;
}

uint64_t sub_1C4532800()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C4532838()
{
  v1 = type metadata accessor for Configuration(0);
  sub_1C43FCF7C(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = (*(v5 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1C4EF98F8();
  sub_1C43FD3F8();
  (*(v7 + 8))(v0 + v4);

  return MEMORY[0x1EEE6BDD0](v0, v6 + 8, v3 | 7);
}

uint64_t sub_1C45328FC()
{
  v1 = type metadata accessor for Configuration(0);
  sub_1C43FCF7C(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v6 = (*(v5 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  sub_1C4EF98F8();
  sub_1C43FD3F8();
  (*(v7 + 8))(v0 + v4);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, ((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_1C4532A30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_1C43FCE3C(*(a1 + 24));
  }

  sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C43FCF8C();
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = *(a3 + 20);
  }

  else
  {
    v9 = sub_1C456902C(&qword_1EC0B9790, &unk_1C4F0F7C0);
    v10 = *(a3 + 24);
  }

  return sub_1C44157D4(a1 + v10, a2, v9);
}

uint64_t sub_1C4532B04(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
    sub_1C43FCF8C();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(a4 + 20);
    }

    else
    {
      v10 = sub_1C456902C(&qword_1EC0B9790, &unk_1C4F0F7C0);
      v11 = *(a4 + 24);
    }

    return sub_1C440BAA8(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_1C4532BE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C4EF9CD8();
  sub_1C43FCF8C();
  if (*(v7 + 84) != a2)
  {
    return sub_1C43FCE3C(*(a1 + *(a3 + 28) + 24));
  }

  return sub_1C44157D4(a1, a2, v6);
}

void sub_1C4532C80(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1C4EF9CD8();
  sub_1C43FCF8C();
  if (*(v9 + 84) == a3)
  {

    sub_1C440BAA8(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 28) + 24) = (a2 - 1);
  }
}

uint64_t sub_1C4532D28()
{
  v1 = sub_1C4EF9CD8();
  sub_1C43FBCE0();
  v3 = *(v2 + 8);
  v4 = *(v2 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v2 + 64);
  v7 = (v6 + v4 + v5) & ~v4;
  v8 = v6 + v7;
  v3(v0 + v5, v1);
  v3(v0 + v7, v1);

  return MEMORY[0x1EEE6BDD0](v0, v8 + 2, v4 | 7);
}

uint64_t sub_1C4532DE0()
{

  return MEMORY[0x1EEE6BDD0](v0, 49, 7);
}

uint64_t sub_1C4532E48(uint64_t a1, uint64_t a2, int *a3)
{
  sub_1C456902C(&qword_1EC0B9790, &unk_1C4F0F7C0);
  sub_1C43FCF8C();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    sub_1C4EF9CD8();
    sub_1C43FCF8C();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = a3[5];
    }

    else
    {
      if (a2 == 254)
      {
        v13 = *(a1 + a3[6]);
        if (v13 >= 2)
        {
          return ((v13 + 2147483646) & 0x7FFFFFFF) + 1;
        }

        else
        {
          return 0;
        }
      }

      v8 = type metadata accessor for LOIBasedSegmentProvider(0);
      v12 = a3[7];
    }

    v9 = a1 + v12;
  }

  return sub_1C44157D4(v9, a2, v8);
}

void sub_1C4532F6C()
{
  sub_1C43FF404();
  sub_1C456902C(&qword_1EC0B9790, &unk_1C4F0F7C0);
  sub_1C43FCF8C();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    sub_1C4EF9CD8();
    sub_1C43FCF8C();
    if (*(v9 + 84) == v3)
    {
      v6 = v8;
      v10 = v2[5];
    }

    else
    {
      if (v3 == 254)
      {
        *(v1 + v2[6]) = v0 + 1;
        return;
      }

      v6 = type metadata accessor for LOIBasedSegmentProvider(0);
      v10 = v2[7];
    }

    v7 = v1 + v10;
  }

  sub_1C440BAA8(v7, v0, v0, v6);
}

uint64_t sub_1C4533070(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C4EF9CD8();
  sub_1C43FCF8C();
  if (*(v7 + 84) == a2)
  {

    return sub_1C44157D4(a1, a2, v6);
  }

  else
  {
    v9 = *(a1 + *(a3 + 32) + 24);
    if (v9 >= 0xFFFFFFFF)
    {
      LODWORD(v9) = -1;
    }

    return (v9 + 1);
  }
}

void sub_1C453311C()
{
  sub_1C43FF404();
  sub_1C4EF9CD8();
  sub_1C43FCF8C();
  if (*(v5 + 84) == v3)
  {

    sub_1C440BAA8(v1, v0, v0, v4);
  }

  else
  {
    *(v1 + *(v2 + 32) + 24) = (v0 - 1);
  }
}

uint64_t sub_1C45331B8()
{
  v2 = sub_1C43FECE0();
  v3 = type metadata accessor for LOIBasedSegmentProvider(v2);

  return sub_1C44157D4(v1, v0, v3);
}

uint64_t sub_1C45331F8()
{
  v0 = sub_1C43FECE0();
  type metadata accessor for LOIBasedSegmentProvider(v0);
  v1 = sub_1C440AB04();

  return sub_1C440BAA8(v1, v2, v3, v4);
}

uint64_t sub_1C453325C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4EF9CD8();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_1C44157D4(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 40) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_1C4533318(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1C43FECE0();
  result = sub_1C4EF9CD8();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = sub_1C440AB04();

    return sub_1C440BAA8(v9, v10, v11, v12);
  }

  else
  {
    *(v5 + *(a4 + 40) + 8) = v4;
  }

  return result;
}

uint64_t sub_1C45334AC(unint64_t *a1, uint64_t a2)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_1C43FCE3C(*a1);
  }

  sub_1C4F00328();
  v4 = sub_1C442F908();

  return sub_1C44157D4(v4, a2, v5);
}

void *sub_1C4533524(void *result, int a2, int a3)
{
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_1C4F00328();
    sub_1C442F908();
    sub_1C43FE688();

    return sub_1C440BAA8(v3, v4, v5, v6);
  }

  return result;
}

uint64_t sub_1C453359C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C43FBE94();
  sub_1C4F00328();
  sub_1C43FCF8C();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = v3;
  }

  else
  {
    v8 = sub_1C456902C(&qword_1EC0BD660, &unk_1C4F45450);
    v9 = v3 + *(a3 + 28);
  }

  return sub_1C44157D4(v9, a2, v8);
}

uint64_t sub_1C453363C(uint64_t a1, uint64_t a2, int a3)
{
  sub_1C43FBE94();
  sub_1C4F00328();
  sub_1C43FCF8C();
  if (*(v4 + 84) == a3)
  {
    sub_1C43FD5B4();
  }

  else
  {
    sub_1C456902C(&qword_1EC0BD660, &unk_1C4F45450);
  }

  sub_1C43FE688();

  return sub_1C440BAA8(v5, v6, v7, v8);
}

uint64_t sub_1C4534D7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Configuration(0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_1C44157D4(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 24) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1C4534E2C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1C43FBE94();
  result = type metadata accessor for Configuration(v8);
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_1C440BAA8(v4, a2, a2, result);
  }

  else
  {
    *(v4 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1C4534ED4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C43FBE94();
  type metadata accessor for PhaseStores(v6);
  sub_1C43FCF8C();
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
  }

  else
  {
    type metadata accessor for Source(0);
    sub_1C43FCF8C();
    if (*(v12 + 84) != a2)
    {
      v14 = *(v3 + *(a3 + 24));
      if (v14 >= 4)
      {
        return v14 - 3;
      }

      else
      {
        return 0;
      }
    }

    v9 = v11;
    v10 = v3 + *(a3 + 20);
  }

  return sub_1C44157D4(v10, a2, v9);
}

void sub_1C4534FB8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1C43FBE94();
  type metadata accessor for PhaseStores(v8);
  sub_1C43FCF8C();
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v4;
  }

  else
  {
    type metadata accessor for Source(0);
    sub_1C43FCF8C();
    if (*(v14 + 84) != a3)
    {
      *(v4 + *(a4 + 24)) = a2 + 3;
      return;
    }

    v11 = v13;
    v12 = v4 + *(a4 + 20);
  }

  sub_1C440BAA8(v12, a2, a2, v11);
}

uint64_t sub_1C4535138(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4EF98F8();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_1C44157D4(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 24));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1C45351E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C4EF98F8();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_1C440BAA8(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1C45352DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4EF9CD8();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_1C44157D4(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 24) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_1C4535398(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C4EF9CD8();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_1C440BAA8(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  return result;
}

uint64_t sub_1C45354D0()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C4535518()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C45355B4()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C4535600()
{
  v1 = sub_1C456902C(&qword_1EC0C1B80, &unk_1C4F460F0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1C4535710(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1C456902C(&qword_1EC0C1B98, &unk_1C4F461E0);
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 24);
    }

    else
    {
      v9 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
      v10 = *(a3 + 36);
    }

    return sub_1C44157D4(a1 + v10, a2, v9);
  }
}

uint64_t sub_1C45357F4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v8 = sub_1C456902C(&qword_1EC0C1B98, &unk_1C4F461E0);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 24);
    }

    else
    {
      v9 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
      v10 = *(a4 + 36);
    }

    return sub_1C440BAA8(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_1C45358D8()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C4535910(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4F00328();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_1C44157D4(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_1C45359CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C4F00328();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_1C440BAA8(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_1C4535A78(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1C4F00328();
    v9 = a1 + *(a3 + 20);

    return sub_1C44157D4(v9, a2, v8);
  }
}

void *sub_1C4535B00(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1C4F00328();
    v8 = v5 + *(a4 + 20);

    return sub_1C440BAA8(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C4535BB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4EF9CD8();
  if (*(*(v6 - 8) + 84) != a2)
  {
    return sub_1C43FCE3C(*(a1 + *(a3 + 24)));
  }

  return sub_1C44157D4(a1, a2, v6);
}

uint64_t sub_1C4535C58(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C4EF9CD8();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_1C440BAA8(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1C4535D00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_1C43FCE3C(*(a1 + 32));
  }

  v7 = sub_1C4EF9CD8();
  v8 = a1 + *(a3 + 28);

  return sub_1C44157D4(v8, a2, v7);
}

uint64_t sub_1C4535D7C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C4EF9CD8();
    v8 = v5 + *(a4 + 28);

    return sub_1C440BAA8(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C4535E6C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C4535EE4()
{

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1C4535F6C()
{
  sub_1C4A4EDA8();
  sub_1C4418B14();

  return swift_deallocClassInstance();
}

uint64_t sub_1C45360C0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C4A5D030();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C4536118@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C4A5D154();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C4536228(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C4EFEEF8();
    v9 = a1 + *(a3 + 20);

    return sub_1C44157D4(v9, a2, v8);
  }
}

uint64_t sub_1C45362B0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C4EFEEF8();
    v8 = v5 + *(a4 + 20);

    return sub_1C440BAA8(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C45363A0()
{
  v2 = sub_1C440F6B8();
  type metadata accessor for Source(v2);
  sub_1C43FCF8C();
  if (*(v4 + 84) == v1)
  {

    return sub_1C44157D4(v0, v1, v3);
  }

  else
  {
    sub_1C440355C();
    v7 = v6 - 1;
    if (v7 < 0)
    {
      v7 = -1;
    }

    return (v7 + 1);
  }
}

void sub_1C4536438()
{
  v4 = sub_1C43FC36C();
  type metadata accessor for Source(v4);
  sub_1C43FCF8C();
  if (*(v5 + 84) == v3)
  {
    v6 = sub_1C440AB04();

    sub_1C440BAA8(v6, v7, v8, v9);
  }

  else
  {
    *(v1 + *(v2 + 20)) = v0;
  }
}

uint64_t sub_1C45364C0()
{
  v2 = sub_1C440F6B8();
  type metadata accessor for Configuration(v2);
  sub_1C43FCF8C();
  if (*(v4 + 84) == v1)
  {

    return sub_1C44157D4(v0, v1, v3);
  }

  else
  {
    sub_1C440355C();
    return (v6 + 1);
  }
}

void sub_1C453654C()
{
  v4 = sub_1C43FC36C();
  type metadata accessor for Configuration(v4);
  sub_1C43FCF8C();
  if (*(v5 + 84) == v3)
  {
    v6 = sub_1C440AB04();

    sub_1C440BAA8(v6, v7, v8, v9);
  }

  else
  {
    *(v1 + *(v2 + 20)) = (v0 - 1);
  }
}

BOOL sub_1C45365DC(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

void sub_1C4536608(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  if ((*v2 & a2) != 0)
  {
    *v2 &= ~a2;
  }

  sub_1C441FFE8(a1);
}

uint64_t sub_1C4536628(uint64_t a1)
{
  result = *v1 & a1;
  if (result)
  {
    *v1 &= ~a1;
  }

  return result;
}

uint64_t sub_1C4536664(uint64_t a1)
{
  v2 = *v1;
  *v1 |= a1;
  return v2 & a1;
}

uint64_t sub_1C4536680(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == 0x7FFFFFFF)
  {
    v5 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v5) = -1;
    }

    return (v5 + 1);
  }

  else
  {
    type metadata accessor for OrderedMergeAsyncSequence.Iterator.Slot(255, *(a3 + 16), *(a3 + 24), a4);
    v9 = sub_1C4F000F8();
    v10 = a1 + *(a3 + 40);

    return sub_1C44157D4(v10, a2, v9);
  }
}

void *sub_1C4536718(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    type metadata accessor for OrderedMergeAsyncSequence.Iterator.Slot(255, *(a4 + 16), *(a4 + 24), a4);
    v7 = sub_1C4F000F8();
    v8 = v5 + *(a4 + 40);

    return sub_1C440BAA8(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C45367E4()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C453681C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C4F00A98();
    v9 = a1 + *(a3 + 72);

    return sub_1C44157D4(v9, a2, v8);
  }
}

uint64_t sub_1C45368A4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C4F00A98();
    v8 = v5 + *(a4 + 72);

    return sub_1C440BAA8(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C4536924(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C43FBE94();
  type metadata accessor for PhaseStores(v6);
  sub_1C43FCF8C();
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
  }

  else
  {
    type metadata accessor for Source(0);
    sub_1C43FCF8C();
    if (*(v12 + 84) != a2)
    {
      v14 = *(v3 + *(a3 + 24));
      if (v14 >= 4)
      {
        return v14 - 3;
      }

      else
      {
        return 0;
      }
    }

    v9 = v11;
    v10 = v3 + *(a3 + 20);
  }

  return sub_1C44157D4(v10, a2, v9);
}

void sub_1C4536A08(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1C43FBE94();
  type metadata accessor for PhaseStores(v8);
  sub_1C43FCF8C();
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v4;
  }

  else
  {
    type metadata accessor for Source(0);
    sub_1C43FCF8C();
    if (*(v14 + 84) != a3)
    {
      *(v4 + *(a4 + 24)) = a2 + 3;
      return;
    }

    v11 = v13;
    v12 = v4 + *(a4 + 20);
  }

  sub_1C440BAA8(v12, a2, a2, v11);
}

uint64_t sub_1C4536AEC()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C4536B3C()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C4536B7C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1C43FBE94();
  type metadata accessor for PhaseStores(v6);
  sub_1C43FCF8C();
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
LABEL_8:

    return sub_1C44157D4(v10, a2, v9);
  }

  type metadata accessor for Source(0);
  sub_1C43FCF8C();
  if (*(v12 + 84) == a2)
  {
    v9 = v11;
    v13 = a3[5];
LABEL_7:
    v10 = v3 + v13;
    goto LABEL_8;
  }

  sub_1C4EFD548();
  sub_1C43FCF8C();
  if (*(v15 + 84) == a2)
  {
    v9 = v14;
    v13 = a3[6];
    goto LABEL_7;
  }

  v17 = *(v3 + a3[9]);
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v17) = -1;
  }

  return (v17 + 1);
}

void sub_1C4536CA4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1C43FBE94();
  type metadata accessor for PhaseStores(v8);
  sub_1C43FCF8C();
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v4;
  }

  else
  {
    type metadata accessor for Source(0);
    sub_1C43FCF8C();
    if (*(v14 + 84) == a3)
    {
      v11 = v13;
      v15 = a4[5];
    }

    else
    {
      sub_1C4EFD548();
      sub_1C43FCF8C();
      if (*(v17 + 84) != a3)
      {
        *(v4 + a4[9]) = (a2 - 1);
        return;
      }

      v11 = v16;
      v15 = a4[6];
    }

    v12 = v4 + v15;
  }

  sub_1C440BAA8(v12, a2, a2, v11);
}

uint64_t sub_1C4536F50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_1C44157D4(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 24) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1C453700C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_1C440BAA8(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1C4537118(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1C43FBE94();
  type metadata accessor for Source(v6);
  sub_1C43FCF8C();
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
  }

  else
  {
    if (a2 == 252)
    {
      v11 = *(v3 + a3[5]);
      if (v11 >= 4)
      {
        return v11 - 3;
      }

      else
      {
        return 0;
      }
    }

    type metadata accessor for PhaseStores(0);
    sub_1C43FCF8C();
    if (*(v14 + 84) == a2)
    {
      v9 = v13;
      v15 = a3[6];
    }

    else
    {
      v9 = sub_1C4EFD548();
      v15 = a3[7];
    }

    v10 = v3 + v15;
  }

  return sub_1C44157D4(v10, a2, v9);
}

void sub_1C4537218(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1C43FBE94();
  type metadata accessor for Source(v8);
  sub_1C43FCF8C();
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v4;
  }

  else
  {
    if (a3 == 252)
    {
      *(v4 + a4[5]) = a2 + 3;
      return;
    }

    type metadata accessor for PhaseStores(0);
    sub_1C43FCF8C();
    if (*(v14 + 84) == a3)
    {
      v11 = v13;
      v15 = a4[6];
    }

    else
    {
      v11 = sub_1C4EFD548();
      v15 = a4[7];
    }

    v12 = v4 + v15;
  }

  sub_1C440BAA8(v12, a2, a2, v11);
}

uint64_t sub_1C4537318(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  sub_1C43FCF8C();
  if (*(v7 + 84) == a2)
  {

    return sub_1C44157D4(a1, a2, v6);
  }

  else
  {
    v9 = *(a1 + *(a3 + 20));
    if (v9 >= 0xFFFFFFFF)
    {
      LODWORD(v9) = -1;
    }

    return (v9 + 1);
  }
}

void sub_1C45373CC()
{
  sub_1C43FF404();
  sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  sub_1C43FCF8C();
  if (*(v4 + 84) == v3)
  {
    v5 = sub_1C440AB04();

    sub_1C440BAA8(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 20)) = (v0 - 1);
  }
}

uint64_t sub_1C4537480(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C4EF9CD8();
  sub_1C43FCF8C();
  if (*(v7 + 84) == a2)
  {

    return sub_1C44157D4(a1, a2, v6);
  }

  else
  {
    v9 = *(a1 + *(a3 + 20) + 8);
    if (v9 >= 0xFFFFFFFF)
    {
      LODWORD(v9) = -1;
    }

    v10 = v9 - 1;
    if (v10 < 0)
    {
      v10 = -1;
    }

    return (v10 + 1);
  }
}

void sub_1C4537538()
{
  sub_1C43FF404();
  sub_1C4EF9CD8();
  sub_1C43FCF8C();
  if (*(v4 + 84) == v3)
  {
    v5 = sub_1C440AB04();

    sub_1C440BAA8(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 20) + 8) = v0;
  }
}

uint64_t sub_1C45376A0(uint64_t a1, uint64_t a2, int *a3)
{
  type metadata accessor for PhaseStores(0);
  sub_1C43FCF8C();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_8:

    return sub_1C44157D4(v9, a2, v8);
  }

  type metadata accessor for Source(0);
  sub_1C43FCF8C();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v12 = a3[5];
LABEL_7:
    v9 = a1 + v12;
    goto LABEL_8;
  }

  sub_1C4EFD548();
  sub_1C43FCF8C();
  if (*(v14 + 84) == a2)
  {
    v8 = v13;
    v12 = a3[6];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[9]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

void sub_1C45377CC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  type metadata accessor for PhaseStores(0);
  sub_1C43FCF8C();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    type metadata accessor for Source(0);
    sub_1C43FCF8C();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      sub_1C4EFD548();
      sub_1C43FCF8C();
      if (*(v16 + 84) != a3)
      {
        *(a1 + a4[9]) = (a2 - 1);
        return;
      }

      v10 = v15;
      v14 = a4[6];
    }

    v11 = a1 + v14;
  }

  sub_1C440BAA8(v11, a2, a2, v10);
}

uint64_t sub_1C45378F4()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C453793C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C4537B10()
{
  sub_1C440D1E0();
  result = PersonalKnowledgeResult.answerValue.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C4537B3C()
{
  sub_1C440D1E0();
  result = PersonalKnowledgeResult.answerValueInteger.getter();
  *v0 = result;
  *(v0 + 8) = v2 & 1;
  return result;
}

uint64_t sub_1C4537B98()
{
  sub_1C440D1E0();
  result = PersonalKnowledgeResult.answerValueDouble.getter();
  *v0 = result;
  *(v0 + 8) = v2 & 1;
  return result;
}

uint64_t sub_1C4537D1C()
{
  sub_1C440D1E0();
  result = PersonalKnowledgeResult.answerSource.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C4537D48()
{
  sub_1C440D1E0();
  result = PersonalKnowledgeResult.name.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C4537D9C()
{
  sub_1C440D1E0();
  result = PersonalKnowledgeResult.firstName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C4537DF0()
{
  sub_1C440D1E0();
  result = PersonalKnowledgeResult.lastName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C4537E44()
{
  sub_1C440D1E0();
  result = PersonalKnowledgeResult.phoneNumber.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C4537E98()
{
  sub_1C440D1E0();
  result = PersonalKnowledgeResult.emailAddress.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C4537EEC()
{
  sub_1C440D1E0();
  result = PersonalKnowledgeResult.to.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C4537F40()
{
  sub_1C440D1E0();
  result = PersonalKnowledgeResult.from.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C4537F94()
{
  sub_1C440D1E0();
  result = PersonalKnowledgeResult.relationshipName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C4537FE8()
{
  sub_1C440D1E0();
  result = PersonalKnowledgeResult.address.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C45380FC()
{
  sub_1C440D1E0();
  result = PersonalKnowledgeResult.app.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C4538150()
{
  sub_1C440D1E0();
  result = PersonalKnowledgeResult.interest.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C45383E4(uint64_t a1, uint64_t a2, int *a3)
{
  type metadata accessor for Source(0);
  sub_1C43FCF8C();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    type metadata accessor for PhaseStores(0);
    sub_1C43FCF8C();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = a3[5];
    }

    else
    {
      if (a2 == 252)
      {
        v13 = *(a1 + a3[6]);
        if (v13 >= 4)
        {
          return v13 - 3;
        }

        else
        {
          return 0;
        }
      }

      v8 = sub_1C456902C(&qword_1EC0C2A90, &unk_1C4F16D30);
      v12 = a3[7];
    }

    v9 = a1 + v12;
  }

  return sub_1C44157D4(v9, a2, v8);
}

void sub_1C45384F4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  type metadata accessor for Source(0);
  sub_1C43FCF8C();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    type metadata accessor for PhaseStores(0);
    sub_1C43FCF8C();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      if (a3 == 252)
      {
        *(a1 + a4[6]) = a2 + 3;
        return;
      }

      v10 = sub_1C456902C(&qword_1EC0C2A90, &unk_1C4F16D30);
      v14 = a4[7];
    }

    v11 = a1 + v14;
  }

  sub_1C440BAA8(v11, a2, a2, v10);
}

uint64_t sub_1C4538680(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Configuration(0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_1C44157D4(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1C453872C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Configuration(0);
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_1C440BAA8(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1C4538848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = (type metadata accessor for PhotoInteractionEventSourceAdapter(0, v5, *(v4 + 24), a4) - 8);
  v7 = *(*v6 + 80);
  v8 = (v7 + 32) & ~v7;
  v9 = *(*v6 + 64);
  (*(*(v5 - 8) + 8))(v4 + v8, v5);
  sub_1C440962C((v4 + v8 + v6[11]));

  return MEMORY[0x1EEE6BDD0](v4, v8 + v9, v7 | 7);
}

uint64_t sub_1C4538938()
{
  v1 = *(type metadata accessor for Configuration(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();
  sub_1C4EF98F8();
  sub_1C43FD3F8();
  (*(v5 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1C4538A40(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C4EF9CD8();
    v9 = a1 + *(a3 + 20);

    return sub_1C44157D4(v9, a2, v8);
  }
}

uint64_t sub_1C4538AC8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C4EF9CD8();
    v8 = v5 + *(a4 + 20);

    return sub_1C440BAA8(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C4538B98()
{
  sub_1C43FBDBC();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C4538BCC()
{

  sub_1C43FBDBC();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C4538C00()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C4538C70(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C4EFFAA8();

  return sub_1C44157D4(a1, a2, v4);
}

uint64_t sub_1C4538CB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C4EFFAA8();

  return sub_1C440BAA8(a1, a2, a2, v4);
}

uint64_t sub_1C4538D5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4EF9CD8();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_1C44157D4(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1C4538E0C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C4EF9CD8();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_1C440BAA8(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1C4538F08(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
    v9 = a1 + *(a3 + 20);

    return sub_1C44157D4(v9, a2, v8);
  }
}

uint64_t sub_1C4538F9C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
    v8 = v5 + *(a4 + 20);

    return sub_1C440BAA8(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C4539060(uint64_t a1, uint64_t a2, int *a3)
{
  type metadata accessor for PhaseStores(0);
  sub_1C43FCF8C();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    type metadata accessor for Source(0);
    sub_1C43FCF8C();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = a3[5];
    }

    else
    {
      if (a2 == 252)
      {
        v13 = *(a1 + a3[6]);
        if (v13 >= 4)
        {
          return v13 - 3;
        }

        else
        {
          return 0;
        }
      }

      v8 = sub_1C456902C(&qword_1EC0C2A90, &unk_1C4F16D30);
      v12 = a3[7];
    }

    v9 = a1 + v12;
  }

  return sub_1C44157D4(v9, a2, v8);
}

void sub_1C4539170(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  type metadata accessor for PhaseStores(0);
  sub_1C43FCF8C();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    type metadata accessor for Source(0);
    sub_1C43FCF8C();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      if (a3 == 252)
      {
        *(a1 + a4[6]) = a2 + 3;
        return;
      }

      v10 = sub_1C456902C(&qword_1EC0C2A90, &unk_1C4F16D30);
      v14 = a4[7];
    }

    v11 = a1 + v14;
  }

  sub_1C440BAA8(v11, a2, a2, v10);
}

uint64_t sub_1C4539294()
{
  v1 = (type metadata accessor for PHPersonSourceIngestor(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  sub_1C4EF98F8();
  sub_1C43FBCE0();
  (*(v5 + 8))(v0 + v3);
  type metadata accessor for PhaseStores(0);

  v6 = v0 + v3 + v1[7];

  v7 = *(type metadata accessor for Source(0) + 24);
  sub_1C4EFD548();
  sub_1C43FBCE0();
  (*(v8 + 8))(v6 + v7);
  v9 = v1[9];
  v10 = sub_1C4EFF1C8();
  if (!sub_1C44157D4(v0 + v3 + v9, 1, v10))
  {
    (*(*(v10 - 8) + 8))(v0 + v3 + v9, v10);
  }

  return MEMORY[0x1EEE6BDD0](v0, ((((((((((((((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1C45394F4()
{

  sub_1C43FBDBC();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C4539528()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C4539580()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C4539648(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Configuration(0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_1C44157D4(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 4)
    {
      return v8 - 3;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1C45396F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Configuration(0);
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_1C440BAA8(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 3;
  }

  return result;
}

uint64_t sub_1C4539858()
{
  type metadata accessor for Source(0);
  sub_1C441EAC8();
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v6 = v4 + *(v5 + 64);
  v7 = sub_1C456902C(&unk_1EC0C6060, &qword_1C4F4E140);
  sub_1C43FCDF8();
  v9 = v8;
  v11 = v10;
  v12 = *(v9 + 80);
  v13 = (v6 + v12) & ~v12;
  v14 = *(v11 + 64);
  v15 = v3 | v12;

  v16 = *(v0 + 32);
  sub_1C4EFD548();
  sub_1C43FD3F8();
  (*(v17 + 8))(v1 + v4 + v16);
  (*(v9 + 8))(v1 + v13, v7);

  return MEMORY[0x1EEE6BDD0](v1, v13 + v14, v15 | 7);
}

uint64_t sub_1C45399B4()
{
  type metadata accessor for Source(0);
  sub_1C441EAC8();
  v3 = v2;
  v5 = v4;
  v6 = *(v3 + 80);
  v7 = (v6 + 16) & ~v6;
  v8 = (*(v5 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = v1 + v7;

  v10 = *(v0 + 32);
  sub_1C4EFD548();
  sub_1C43FD3F8();
  (*(v11 + 8))(v9 + v10);

  return MEMORY[0x1EEE6BDD0](v1, v8 + 8, v6 | 7);
}

uint64_t sub_1C4539A98()
{
  v1 = type metadata accessor for Configuration(0);
  sub_1C43FCF7C(v1);
  v3 = *(v2 + 80);
  sub_1C4EF98F8();
  sub_1C43FD3F8();
  (*(v4 + 8))(v0 + ((v3 + 16) & ~v3));
  v5 = sub_1C445BFD0();

  return MEMORY[0x1EEE6BDD0](v5, v6, v7);
}

uint64_t sub_1C4539BB0()
{

  if (*(v0 + 40))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C4539CF0()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C4539ED8()
{

  sub_1C44042C4();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C4539F1C()
{

  sub_1C44042C4();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C4539F80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4EF9CD8();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_1C44157D4(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 24) + 8);
    if (v8 >= 0x3E)
    {
      return v8 - 61;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1C453A02C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C4EF9CD8();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_1C440BAA8(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2 + 61;
  }

  return result;
}

uint64_t sub_1C453A134()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C453A17C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C453A1E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C43FBE94();
  type metadata accessor for Source(v6);
  sub_1C43FCF8C();
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
  }

  else
  {
    type metadata accessor for PhaseStores(0);
    sub_1C43FCF8C();
    if (*(v12 + 84) != a2)
    {
      v14 = *(v3 + *(a3 + 24));
      if (v14 >= 4)
      {
        return v14 - 3;
      }

      else
      {
        return 0;
      }
    }

    v9 = v11;
    v10 = v3 + *(a3 + 20);
  }

  return sub_1C44157D4(v10, a2, v9);
}

void sub_1C453A2C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1C43FBE94();
  type metadata accessor for Source(v8);
  sub_1C43FCF8C();
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v4;
  }

  else
  {
    type metadata accessor for PhaseStores(0);
    sub_1C43FCF8C();
    if (*(v14 + 84) != a3)
    {
      *(v4 + *(a4 + 24)) = a2 + 3;
      return;
    }

    v11 = v13;
    v12 = v4 + *(a4 + 20);
  }

  sub_1C440BAA8(v12, a2, a2, v11);
}

uint64_t sub_1C453A4D0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1C43FBE94();
  type metadata accessor for PhaseStores(v6);
  sub_1C43FCF8C();
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
  }

  else
  {
    type metadata accessor for Source(0);
    sub_1C43FCF8C();
    if (*(v12 + 84) == a2)
    {
      v9 = v11;
      v13 = a3[5];
    }

    else
    {
      if (a2 == 252)
      {
        v14 = *(v3 + a3[7]);
        if (v14 >= 4)
        {
          return v14 - 3;
        }

        else
        {
          return 0;
        }
      }

      v9 = sub_1C456902C(&qword_1EC0C2A90, &unk_1C4F16D30);
      v13 = a3[8];
    }

    v10 = v3 + v13;
  }

  return sub_1C44157D4(v10, a2, v9);
}

void sub_1C453A5DC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1C43FBE94();
  type metadata accessor for PhaseStores(v8);
  sub_1C43FCF8C();
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v4;
  }

  else
  {
    type metadata accessor for Source(0);
    sub_1C43FCF8C();
    if (*(v14 + 84) == a3)
    {
      v11 = v13;
      v15 = a4[5];
    }

    else
    {
      if (a3 == 252)
      {
        *(v4 + a4[7]) = a2 + 3;
        return;
      }

      v11 = sub_1C456902C(&qword_1EC0C2A90, &unk_1C4F16D30);
      v15 = a4[8];
    }

    v12 = v4 + v15;
  }

  sub_1C440BAA8(v12, a2, a2, v11);
}

uint64_t sub_1C453A6E8()
{
  swift_weakDestroy();
  sub_1C43FBDBC();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C453A71C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C453A7E8()
{

  sub_1C44042C4();

  return swift_deallocClassInstance();
}

uint64_t sub_1C453A81C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C453A85C()
{
  swift_unknownObjectRelease();
  sub_1C440962C((v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t sub_1C453A8B4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Configuration(0);
    v9 = a1 + *(a3 + 20);

    return sub_1C44157D4(v9, a2, v8);
  }
}

uint64_t sub_1C453A93C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Configuration(0);
    v8 = v5 + *(a4 + 20);

    return sub_1C440BAA8(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C453A9BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for PhaseStores(0);
  sub_1C43FCF8C();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    type metadata accessor for Source(0);
    sub_1C43FCF8C();
    if (*(v11 + 84) != a2)
    {
      v13 = *(a1 + *(a3 + 24));
      if (v13 >= 4)
      {
        return v13 - 3;
      }

      else
      {
        return 0;
      }
    }

    v8 = v10;
    v9 = a1 + *(a3 + 20);
  }

  return sub_1C44157D4(v9, a2, v8);
}

void sub_1C453AAA4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  type metadata accessor for PhaseStores(0);
  sub_1C43FCF8C();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    type metadata accessor for Source(0);
    sub_1C43FCF8C();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 3;
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 20);
  }

  sub_1C440BAA8(v11, a2, a2, v10);
}

uint64_t sub_1C453AB8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4EF9CD8();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_1C44157D4(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 24) + 16);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_1C453AC48(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C4EF9CD8();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_1C440BAA8(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 16) = a2;
  }

  return result;
}

uint64_t sub_1C453ACFC()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C453AD34()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C453AE4C()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1C453AED4(uint64_t *a1)
{
  type metadata accessor for SessionDataAsyncSequenceWrapper(255, *a1, a1[1], a1[2]);

  return swift_getWitnessTable();
}

uint64_t sub_1C453AF60()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C453AFAC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C453AFE8()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C453B130(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for Source(0);
  sub_1C43FCF8C();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    type metadata accessor for PhaseStores(0);
    sub_1C43FCF8C();
    if (*(v11 + 84) != a2)
    {
      v13 = *(a1 + *(a3 + 24));
      if (v13 >= 4)
      {
        return v13 - 3;
      }

      else
      {
        return 0;
      }
    }

    v8 = v10;
    v9 = a1 + *(a3 + 20);
  }

  return sub_1C44157D4(v9, a2, v8);
}

void sub_1C453B218(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  type metadata accessor for Source(0);
  sub_1C43FCF8C();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    type metadata accessor for PhaseStores(0);
    sub_1C43FCF8C();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 3;
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 20);
  }

  sub_1C440BAA8(v11, a2, a2, v10);
}

uint64_t sub_1C453B31C()
{

  sub_1C44042C4();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C453B360()
{

  sub_1C44042C4();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C453B3B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for PhaseStores(0);
  sub_1C43FCF8C();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_5:

    return sub_1C44157D4(v9, a2, v8);
  }

  type metadata accessor for Source(0);
  sub_1C43FCF8C();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v13 = *(a1 + *(a3 + 28));
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  v14 = v13 - 1;
  if (v14 < 0)
  {
    v14 = -1;
  }

  return (v14 + 1);
}

void sub_1C453B4A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  type metadata accessor for PhaseStores(0);
  sub_1C43FCF8C();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    type metadata accessor for Source(0);
    sub_1C43FCF8C();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = a2;
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 20);
  }

  sub_1C440BAA8(v11, a2, a2, v10);
}

uint64_t sub_1C453B5A0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1C43FBE94();
  type metadata accessor for PhaseStores(v6);
  sub_1C43FCF8C();
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
  }

  else
  {
    type metadata accessor for Source(0);
    sub_1C43FCF8C();
    if (*(v12 + 84) == a2)
    {
      v9 = v11;
      v13 = a3[5];
    }

    else
    {
      if (a2 == 252)
      {
        v14 = *(v3 + a3[6]);
        if (v14 >= 4)
        {
          return v14 - 3;
        }

        else
        {
          return 0;
        }
      }

      v9 = sub_1C4EFD548();
      v13 = a3[8];
    }

    v10 = v3 + v13;
  }

  return sub_1C44157D4(v10, a2, v9);
}

void sub_1C453B6A0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1C43FBE94();
  type metadata accessor for PhaseStores(v8);
  sub_1C43FCF8C();
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v4;
  }

  else
  {
    type metadata accessor for Source(0);
    sub_1C43FCF8C();
    if (*(v14 + 84) == a3)
    {
      v11 = v13;
      v15 = a4[5];
    }

    else
    {
      if (a3 == 252)
      {
        *(v4 + a4[6]) = a2 + 3;
        return;
      }

      v11 = sub_1C4EFD548();
      v15 = a4[8];
    }

    v12 = v4 + v15;
  }

  sub_1C440BAA8(v12, a2, a2, v11);
}

uint64_t sub_1C453B7A0()
{
  v1 = type metadata accessor for LOIBasedSegment(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = sub_1C4EF9CD8();
  sub_1C43FBCE0();
  v7 = *(v6 + 8);
  v7(v0 + v3, v5);
  v7(v0 + v3 + v1[5], v5);
  v8 = (v0 + v3 + v1[6]);
  if (v8[3])
  {
    sub_1C440962C(v8);
  }

  sub_1C440962C((v0 + v3 + v1[7]));

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1C453B8C4()
{
  v1 = sub_1C4EFE1C8();
  sub_1C43FCE64();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v7, v4 | 7);
}

uint64_t sub_1C453B9CC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1C43FBE94();
  type metadata accessor for PhaseStores(v6);
  sub_1C43FCF8C();
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
  }

  else
  {
    type metadata accessor for Source(0);
    sub_1C43FCF8C();
    if (*(v12 + 84) == a2)
    {
      v9 = v11;
      v13 = a3[5];
    }

    else
    {
      if (a2 == 252)
      {
        v14 = *(v3 + a3[6]);
        if (v14 >= 4)
        {
          return v14 - 3;
        }

        else
        {
          return 0;
        }
      }

      v9 = sub_1C4EFD548();
      v13 = a3[8];
    }

    v10 = v3 + v13;
  }

  return sub_1C44157D4(v10, a2, v9);
}