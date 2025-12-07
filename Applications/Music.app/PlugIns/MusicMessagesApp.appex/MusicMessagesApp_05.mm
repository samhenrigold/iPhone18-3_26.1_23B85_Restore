uint64_t sub_10006751C(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v6 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v6;
  *(v4 + 112) = a4[6];
  v7 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v7;
  v8 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v8;
  v9 = swift_task_alloc();
  *(v4 + 128) = v9;
  *v9 = v4;
  v9[1] = sub_10006CEC0;

  return sub_100177590(a1, 1);
}

uint64_t sub_1000675F4(_OWORD *a1)
{
  sub_100004CB8(&qword_100635240, &qword_1005171A0);
  *(v1 + 240) = swift_task_alloc();
  v3 = a1[5];
  *(v1 + 80) = a1[4];
  *(v1 + 96) = v3;
  *(v1 + 112) = a1[6];
  v4 = a1[1];
  *(v1 + 16) = *a1;
  *(v1 + 32) = v4;
  v5 = a1[3];
  *(v1 + 48) = a1[2];
  *(v1 + 64) = v5;

  return _swift_task_switch(sub_1000676B0, 0, 0);
}

uint64_t sub_1000676B0()
{
  v1 = *(v0 + 240);
  v2 = sub_1004DDA8C();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v4 = *(v0 + 96);
  *(v3 + 96) = *(v0 + 80);
  *(v3 + 112) = v4;
  *(v3 + 128) = *(v0 + 112);
  v5 = *(v0 + 32);
  *(v3 + 32) = *(v0 + 16);
  *(v3 + 48) = v5;
  v6 = *(v0 + 64);
  *(v3 + 64) = *(v0 + 48);
  *(v3 + 80) = v6;
  sub_1000108DC(v0 + 16, v0 + 128, &qword_100635A08, &qword_10051DC30);
  sub_10021C658(0, 0, v1, &unk_100517240, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1000677DC(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v6 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v6;
  *(v4 + 112) = a4[6];
  v7 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v7;
  v8 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v8;
  v9 = swift_task_alloc();
  *(v4 + 128) = v9;
  *v9 = v4;
  v9[1] = sub_10006CEC0;

  return sub_100178A70(a1, 1);
}

uint64_t sub_1000678B4(_OWORD *a1)
{
  sub_100004CB8(&qword_100635240, &qword_1005171A0);
  *(v1 + 240) = swift_task_alloc();
  v3 = a1[5];
  *(v1 + 80) = a1[4];
  *(v1 + 96) = v3;
  *(v1 + 112) = a1[6];
  v4 = a1[1];
  *(v1 + 16) = *a1;
  *(v1 + 32) = v4;
  v5 = a1[3];
  *(v1 + 48) = a1[2];
  *(v1 + 64) = v5;

  return _swift_task_switch(sub_100067970, 0, 0);
}

uint64_t sub_100067970()
{
  v1 = *(v0 + 240);
  v2 = sub_1004DDA8C();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v4 = *(v0 + 96);
  *(v3 + 96) = *(v0 + 80);
  *(v3 + 112) = v4;
  *(v3 + 128) = *(v0 + 112);
  v5 = *(v0 + 32);
  *(v3 + 32) = *(v0 + 16);
  *(v3 + 48) = v5;
  v6 = *(v0 + 64);
  *(v3 + 64) = *(v0 + 48);
  *(v3 + 80) = v6;
  sub_1000108DC(v0 + 16, v0 + 128, &qword_100635A00, &qword_100517000);
  sub_10021C658(0, 0, v1, &unk_100517250, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100067A9C(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v6 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v6;
  *(v4 + 112) = a4[6];
  v7 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v7;
  v8 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v8;
  v9 = swift_task_alloc();
  *(v4 + 128) = v9;
  *v9 = v4;
  v9[1] = sub_10006CEC0;

  return sub_100179F50(a1, 1);
}

uint64_t sub_100067B74(_OWORD *a1)
{
  sub_100004CB8(&qword_100635240, &qword_1005171A0);
  *(v1 + 240) = swift_task_alloc();
  v3 = a1[5];
  *(v1 + 80) = a1[4];
  *(v1 + 96) = v3;
  *(v1 + 112) = a1[6];
  v4 = a1[1];
  *(v1 + 16) = *a1;
  *(v1 + 32) = v4;
  v5 = a1[3];
  *(v1 + 48) = a1[2];
  *(v1 + 64) = v5;

  return _swift_task_switch(sub_100067C30, 0, 0);
}

uint64_t sub_100067C30()
{
  v1 = *(v0 + 240);
  v2 = sub_1004DDA8C();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v4 = *(v0 + 96);
  *(v3 + 96) = *(v0 + 80);
  *(v3 + 112) = v4;
  *(v3 + 128) = *(v0 + 112);
  v5 = *(v0 + 32);
  *(v3 + 32) = *(v0 + 16);
  *(v3 + 48) = v5;
  v6 = *(v0 + 64);
  *(v3 + 64) = *(v0 + 48);
  *(v3 + 80) = v6;
  sub_1000108DC(v0 + 16, v0 + 128, &qword_1006359F8, &qword_10051E070);
  sub_10021C658(0, 0, v1, &unk_100517260, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100067D5C(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v6 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v6;
  *(v4 + 112) = a4[6];
  v7 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v7;
  v8 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v8;
  v9 = swift_task_alloc();
  *(v4 + 128) = v9;
  *v9 = v4;
  v9[1] = sub_10006CEC0;

  return sub_10017B430(a1, 1);
}

uint64_t sub_100067E34(_OWORD *a1)
{
  sub_100004CB8(&qword_100635240, &qword_1005171A0);
  *(v1 + 240) = swift_task_alloc();
  v3 = a1[5];
  *(v1 + 80) = a1[4];
  *(v1 + 96) = v3;
  *(v1 + 112) = a1[6];
  v4 = a1[1];
  *(v1 + 16) = *a1;
  *(v1 + 32) = v4;
  v5 = a1[3];
  *(v1 + 48) = a1[2];
  *(v1 + 64) = v5;

  return _swift_task_switch(sub_100067EF0, 0, 0);
}

uint64_t sub_100067EF0()
{
  v1 = *(v0 + 240);
  v2 = sub_1004DDA8C();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v4 = *(v0 + 96);
  *(v3 + 96) = *(v0 + 80);
  *(v3 + 112) = v4;
  *(v3 + 128) = *(v0 + 112);
  v5 = *(v0 + 32);
  *(v3 + 32) = *(v0 + 16);
  *(v3 + 48) = v5;
  v6 = *(v0 + 64);
  *(v3 + 64) = *(v0 + 48);
  *(v3 + 80) = v6;
  sub_1000108DC(v0 + 16, v0 + 128, &qword_1006359C8, &qword_100516F88);
  sub_10021C658(0, 0, v1, &unk_100517290, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_10006801C(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v6 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v6;
  *(v4 + 112) = a4[6];
  v7 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v7;
  v8 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v8;
  v9 = swift_task_alloc();
  *(v4 + 128) = v9;
  *v9 = v4;
  v9[1] = sub_10006CEC0;

  return sub_10017C910(a1, 1);
}

uint64_t sub_1000680F4(_OWORD *a1)
{
  sub_100004CB8(&qword_100635240, &qword_1005171A0);
  *(v1 + 240) = swift_task_alloc();
  v3 = a1[5];
  *(v1 + 80) = a1[4];
  *(v1 + 96) = v3;
  *(v1 + 112) = a1[6];
  v4 = a1[1];
  *(v1 + 16) = *a1;
  *(v1 + 32) = v4;
  v5 = a1[3];
  *(v1 + 48) = a1[2];
  *(v1 + 64) = v5;

  return _swift_task_switch(sub_1000681B0, 0, 0);
}

uint64_t sub_1000681B0()
{
  v1 = *(v0 + 240);
  v2 = sub_1004DDA8C();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v4 = *(v0 + 96);
  *(v3 + 96) = *(v0 + 80);
  *(v3 + 112) = v4;
  *(v3 + 128) = *(v0 + 112);
  v5 = *(v0 + 32);
  *(v3 + 32) = *(v0 + 16);
  *(v3 + 48) = v5;
  v6 = *(v0 + 64);
  *(v3 + 64) = *(v0 + 48);
  *(v3 + 80) = v6;
  sub_1000108DC(v0 + 16, v0 + 128, &qword_100635A28, &qword_100517088);
  sub_10021C658(0, 0, v1, &unk_100517210, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1000682DC(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v6 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v6;
  *(v4 + 112) = a4[6];
  v7 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v7;
  v8 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v8;
  v9 = swift_task_alloc();
  *(v4 + 128) = v9;
  *v9 = v4;
  v9[1] = sub_10006CEC0;

  return sub_10017DDF0(a1, 1);
}

uint64_t sub_1000683B4(_OWORD *a1)
{
  sub_100004CB8(&qword_100635240, &qword_1005171A0);
  *(v1 + 240) = swift_task_alloc();
  v3 = a1[5];
  *(v1 + 80) = a1[4];
  *(v1 + 96) = v3;
  *(v1 + 112) = a1[6];
  v4 = a1[1];
  *(v1 + 16) = *a1;
  *(v1 + 32) = v4;
  v5 = a1[3];
  *(v1 + 48) = a1[2];
  *(v1 + 64) = v5;

  return _swift_task_switch(sub_100068470, 0, 0);
}

uint64_t sub_100068470()
{
  v1 = *(v0 + 240);
  v2 = sub_1004DDA8C();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v4 = *(v0 + 96);
  *(v3 + 96) = *(v0 + 80);
  *(v3 + 112) = v4;
  *(v3 + 128) = *(v0 + 112);
  v5 = *(v0 + 32);
  *(v3 + 32) = *(v0 + 16);
  *(v3 + 48) = v5;
  v6 = *(v0 + 64);
  *(v3 + 64) = *(v0 + 48);
  *(v3 + 80) = v6;
  sub_1000108DC(v0 + 16, v0 + 128, &qword_100635A20, &qword_100517080);
  sub_10021C658(0, 0, v1, &unk_100517220, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_10006859C(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v6 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v6;
  *(v4 + 112) = a4[6];
  v7 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v7;
  v8 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v8;
  v9 = swift_task_alloc();
  *(v4 + 128) = v9;
  *v9 = v4;
  v9[1] = sub_10006CEC0;

  return sub_10017F2D0(a1, 1);
}

uint64_t sub_100068674(_OWORD *a1)
{
  sub_100004CB8(&qword_100635240, &qword_1005171A0);
  *(v1 + 240) = swift_task_alloc();
  v3 = a1[5];
  *(v1 + 80) = a1[4];
  *(v1 + 96) = v3;
  *(v1 + 112) = a1[6];
  v4 = a1[1];
  *(v1 + 16) = *a1;
  *(v1 + 32) = v4;
  v5 = a1[3];
  *(v1 + 48) = a1[2];
  *(v1 + 64) = v5;

  return _swift_task_switch(sub_100068730, 0, 0);
}

uint64_t sub_100068730()
{
  v1 = *(v0 + 240);
  v2 = sub_1004DDA8C();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v4 = *(v0 + 96);
  *(v3 + 96) = *(v0 + 80);
  *(v3 + 112) = v4;
  *(v3 + 128) = *(v0 + 112);
  v5 = *(v0 + 32);
  *(v3 + 32) = *(v0 + 16);
  *(v3 + 48) = v5;
  v6 = *(v0 + 64);
  *(v3 + 64) = *(v0 + 48);
  *(v3 + 80) = v6;
  sub_1000108DC(v0 + 16, v0 + 128, &qword_100635A18, &qword_100517040);
  sub_10021C658(0, 0, v1, &unk_100517230, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_10006885C(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v6 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v6;
  *(v4 + 112) = a4[6];
  v7 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v7;
  v8 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v8;
  v9 = swift_task_alloc();
  *(v4 + 128) = v9;
  *v9 = v4;
  v9[1] = sub_10006CEC0;

  return sub_1001807B0(a1, 1);
}

double sub_100068934@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[3];
  a2[3] = &type metadata for Actions.RateSong.Context;
  a2[4] = &protocol witness table for Actions.RateSong.Context;
  v6 = swift_allocObject();
  *a2 = v6;
  *(v6 + 16) = v4;
  *(v6 + 24) = *(a1 + 1);
  *(v6 + 40) = v5;

  return result;
}

uint64_t sub_1000689C0(_OWORD *a1)
{
  sub_100004CB8(&qword_100635240, &qword_1005171A0);
  *(v1 + 208) = swift_task_alloc();
  v3 = a1[3];
  *(v1 + 48) = a1[2];
  *(v1 + 64) = v3;
  v4 = a1[5];
  *(v1 + 80) = a1[4];
  *(v1 + 96) = v4;
  v5 = a1[1];
  *(v1 + 16) = *a1;
  *(v1 + 32) = v5;

  return _swift_task_switch(sub_100068A74, 0, 0);
}

uint64_t sub_100068A74()
{
  v1 = *(v0 + 208);
  v2 = sub_1004DDA8C();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v4 = *(v0 + 64);
  *(v3 + 64) = *(v0 + 48);
  *(v3 + 80) = v4;
  v5 = *(v0 + 96);
  *(v3 + 96) = *(v0 + 80);
  *(v3 + 112) = v5;
  v6 = *(v0 + 32);
  *(v3 + 32) = *(v0 + 16);
  *(v3 + 48) = v6;
  sub_1000108DC(v0 + 16, v0 + 112, &qword_100635A70, &qword_100517120);
  sub_10021C658(0, 0, v1, &unk_1005171C0, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100068B98(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v6 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v6;
  v7 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v7;
  v8 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v8;
  v9 = swift_task_alloc();
  *(v4 + 112) = v9;
  *v9 = v4;
  v9[1] = sub_100068C68;

  return sub_100181C90(a1, 1);
}

uint64_t sub_100068C68()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100068D5C(_OWORD *a1)
{
  sub_100004CB8(&qword_100635240, &qword_1005171A0);
  *(v1 + 240) = swift_task_alloc();
  v3 = a1[5];
  *(v1 + 80) = a1[4];
  *(v1 + 96) = v3;
  *(v1 + 112) = a1[6];
  v4 = a1[1];
  *(v1 + 16) = *a1;
  *(v1 + 32) = v4;
  v5 = a1[3];
  *(v1 + 48) = a1[2];
  *(v1 + 64) = v5;

  return _swift_task_switch(sub_100068E18, 0, 0);
}

uint64_t sub_100068E18()
{
  v1 = *(v0 + 240);
  v2 = sub_1004DDA8C();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v4 = *(v0 + 96);
  *(v3 + 96) = *(v0 + 80);
  *(v3 + 112) = v4;
  *(v3 + 128) = *(v0 + 112);
  v5 = *(v0 + 32);
  *(v3 + 32) = *(v0 + 16);
  *(v3 + 48) = v5;
  v6 = *(v0 + 64);
  *(v3 + 64) = *(v0 + 48);
  *(v3 + 80) = v6;
  sub_1000108DC(v0 + 16, v0 + 128, &qword_100635A50, &qword_1005170F0);
  sub_10021C658(0, 0, v1, &unk_1005171D0, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100068F44(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v6 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v6;
  *(v4 + 112) = a4[6];
  v7 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v7;
  v8 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v8;
  v9 = swift_task_alloc();
  *(v4 + 128) = v9;
  *v9 = v4;
  v9[1] = sub_10006CEC0;

  return sub_10018310C(a1, 1);
}

uint64_t sub_10006901C(_OWORD *a1)
{
  sub_100004CB8(&qword_100635240, &qword_1005171A0);
  *(v1 + 240) = swift_task_alloc();
  v3 = a1[5];
  *(v1 + 80) = a1[4];
  *(v1 + 96) = v3;
  *(v1 + 112) = a1[6];
  v4 = a1[1];
  *(v1 + 16) = *a1;
  *(v1 + 32) = v4;
  v5 = a1[3];
  *(v1 + 48) = a1[2];
  *(v1 + 64) = v5;

  return _swift_task_switch(sub_1000690D8, 0, 0);
}

uint64_t sub_1000690D8()
{
  v1 = *(v0 + 240);
  v2 = sub_1004DDA8C();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v4 = *(v0 + 96);
  *(v3 + 96) = *(v0 + 80);
  *(v3 + 112) = v4;
  *(v3 + 128) = *(v0 + 112);
  v5 = *(v0 + 32);
  *(v3 + 32) = *(v0 + 16);
  *(v3 + 48) = v5;
  v6 = *(v0 + 64);
  *(v3 + 64) = *(v0 + 48);
  *(v3 + 80) = v6;
  sub_1000108DC(v0 + 16, v0 + 128, &qword_100635A48, &qword_10051DF80);
  sub_10021C658(0, 0, v1, &unk_1005171E0, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100069204(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v6 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v6;
  *(v4 + 112) = a4[6];
  v7 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v7;
  v8 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v8;
  v9 = swift_task_alloc();
  *(v4 + 128) = v9;
  *v9 = v4;
  v9[1] = sub_1000692DC;

  return sub_1001845EC(a1, 1);
}

uint64_t sub_1000692DC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000693D0(_OWORD *a1)
{
  sub_100004CB8(&qword_100635240, &qword_1005171A0);
  *(v1 + 240) = swift_task_alloc();
  v3 = a1[5];
  *(v1 + 80) = a1[4];
  *(v1 + 96) = v3;
  *(v1 + 112) = a1[6];
  v4 = a1[1];
  *(v1 + 16) = *a1;
  *(v1 + 32) = v4;
  v5 = a1[3];
  *(v1 + 48) = a1[2];
  *(v1 + 64) = v5;

  return _swift_task_switch(sub_10006948C, 0, 0);
}

uint64_t sub_10006948C()
{
  v1 = *(v0 + 240);
  v2 = sub_1004DDA8C();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v4 = *(v0 + 96);
  *(v3 + 96) = *(v0 + 80);
  *(v3 + 112) = v4;
  *(v3 + 128) = *(v0 + 112);
  v5 = *(v0 + 32);
  *(v3 + 32) = *(v0 + 16);
  *(v3 + 48) = v5;
  v6 = *(v0 + 64);
  *(v3 + 64) = *(v0 + 48);
  *(v3 + 80) = v6;
  sub_1000108DC(v0 + 16, v0 + 128, &qword_100635A40, &unk_1005170D0);
  sub_10021C658(0, 0, v1, &unk_1005171F0, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1000695B8(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v6 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v6;
  *(v4 + 112) = a4[6];
  v7 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v7;
  v8 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v8;
  v9 = swift_task_alloc();
  *(v4 + 128) = v9;
  *v9 = v4;
  v9[1] = sub_10006CEC0;

  return sub_100185ACC(a1, 1);
}

double sub_100069690@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a5@<X8>)
{
  v7 = *a1;
  v8 = a1[5];
  a5[3] = a2;
  a5[4] = a3;
  v9 = swift_allocObject();
  *a5 = v9;
  *(v9 + 16) = v7;
  *(v9 + 24) = *(a1 + 1);
  *(v9 + 40) = *(a1 + 3);
  *(v9 + 56) = v8;

  return result;
}

uint64_t sub_100069728(_OWORD *a1)
{
  sub_100004CB8(&qword_100635240, &qword_1005171A0);
  *(v1 + 240) = swift_task_alloc();
  v3 = a1[5];
  *(v1 + 80) = a1[4];
  *(v1 + 96) = v3;
  *(v1 + 112) = a1[6];
  v4 = a1[1];
  *(v1 + 16) = *a1;
  *(v1 + 32) = v4;
  v5 = a1[3];
  *(v1 + 48) = a1[2];
  *(v1 + 64) = v5;

  return _swift_task_switch(sub_1000697E4, 0, 0);
}

uint64_t sub_1000697E4()
{
  v1 = *(v0 + 240);
  v2 = sub_1004DDA8C();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v4 = *(v0 + 96);
  *(v3 + 96) = *(v0 + 80);
  *(v3 + 112) = v4;
  *(v3 + 128) = *(v0 + 112);
  v5 = *(v0 + 32);
  *(v3 + 32) = *(v0 + 16);
  *(v3 + 48) = v5;
  v6 = *(v0 + 64);
  *(v3 + 64) = *(v0 + 48);
  *(v3 + 80) = v6;
  sub_1000108DC(v0 + 16, v0 + 128, &qword_100635A38, &qword_10051DFD0);
  sub_10021C658(0, 0, v1, &unk_100517200, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100069910(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v6 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v6;
  *(v4 + 112) = a4[6];
  v7 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v7;
  v8 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v8;
  v9 = swift_task_alloc();
  *(v4 + 128) = v9;
  *v9 = v4;
  v9[1] = sub_10006CEC0;

  return sub_100186FAC(a1, 1);
}

uint64_t sub_100069AA8()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100035C88;

  return sub_100066CA8(v0 + 16);
}

uint64_t sub_100069B48()
{
  v1 = *(v0 + 64);
  v7[2] = *(v0 + 48);
  v7[3] = v1;
  v7[4] = *(v0 + 80);
  v2 = *(v0 + 32);
  v7[0] = *(v0 + 16);
  v7[1] = v2;
  v4 = *(v0 + 96);
  v3 = *(v0 + 104);
  v5 = *(v0 + 128);
  v10 = *(v0 + 112);
  v11 = v5;
  v12 = *(v0 + 144);
  v8 = v4;
  v9 = v3;
  return v4(v7);
}

uint64_t sub_100069BAC()
{
  v1 = *(v0 + 16);
  if (v1 >= 4)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100069D00()
{
  v2 = *(sub_100004CB8(&qword_1006359B8, &qword_100516F40) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100035C88;

  return sub_1000607CC(v0 + v3);
}

uint64_t sub_100069EB4(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_100004CB8(a1, a2);
  v4 = *(v3 - 8);
  return (*(v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80)) + *(v3 + 40)))(v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80)));
}

uint64_t sub_100069F20(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v5 = *(sub_100004CB8(a1, a2) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = sub_1004D8F4C();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v3 + v6, 1, v7))
  {
    (*(v8 + 8))(v3 + v6, v7);
  }

  a3(0);

  return swift_deallocObject();
}

uint64_t sub_10006A0B8()
{
  v2 = *(sub_100004CB8(&qword_1006359B0, &qword_10051E110) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100035C88;

  return sub_100060568(v0 + v3);
}

uint64_t sub_10006A190(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10006A228()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100035C88;

  return sub_100067E34((v0 + 16));
}

uint64_t sub_10006A2FC()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100035C88;

  return sub_100067074((v0 + 16));
}

uint64_t sub_10006A3D0()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100035C88;

  return sub_100067334((v0 + 16));
}

uint64_t sub_10006A4A8()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100035C88;

  return sub_100067B74((v0 + 16));
}

uint64_t sub_10006A57C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100035C88;

  return sub_1000678B4((v0 + 16));
}

uint64_t sub_10006A650()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100035C88;

  return sub_1000675F4((v0 + 16));
}

uint64_t sub_10006A6F8()
{
  v1 = *(sub_100004CB8(&qword_100635A10, &qword_100517020) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v4 = sub_1004DCEDC();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  v6 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;

  if (*(v0 + v3))
  {
  }

  v7 = v0 + v6;
  swift_unknownObjectWeakDestroy();
  v8 = *(v0 + v6 + 48);
  if (v8 != 255)
  {
    sub_10006A898(*(v7 + 8), *(v7 + 16), *(v7 + 24), *(v7 + 32), *(v7 + 40), v8);
  }

  if (*(v7 + 64))
  {
  }

  if (*(v7 + 80))
  {
  }

  return swift_deallocObject();
}

void sub_10006A898(id a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 == 2)
  {
    swift_unknownObjectRelease();
  }

  else if (a6 <= 1u)
  {
  }
}

uint64_t sub_10006A918()
{
  v2 = *(sub_100004CB8(&qword_100635A10, &qword_100517020) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + v4);
  v7 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + v5);
  v9 = *(v0 + v5 + 8);
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_100035C88;

  return sub_1000918C0(v0 + v3, v6, v8, v9, v0 + v7);
}

uint64_t sub_10006AA88()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100035C88;

  return sub_100068674((v0 + 16));
}

uint64_t sub_10006AB28()
{
  v1 = sub_1004DCEDC();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  v5 = v0 + v4;
  swift_unknownObjectWeakDestroy();
  v6 = *(v0 + v4 + 48);
  if (v6 != 255)
  {
    sub_10006A898(*(v5 + 8), *(v5 + 16), *(v5 + 24), *(v5 + 32), *(v5 + 40), v6);
  }

  if (*(v5 + 64))
  {
  }

  if (*(v5 + 80))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10006AC04()
{
  v2 = *(sub_1004DCEDC() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100035C88;

  return sub_100093334(v0 + v3, v0 + v4);
}

uint64_t sub_10006AD38()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100035C88;

  return sub_1000683B4((v0 + 16));
}

uint64_t sub_10006ADE0()
{
  v1 = sub_1004DCEDC();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);
  v5 = v0 + v4;
  swift_unknownObjectWeakDestroy();
  v6 = *(v0 + v4 + 48);
  if (v6 != 255)
  {
    sub_10006A898(*(v5 + 8), *(v5 + 16), *(v5 + 24), *(v5 + 32), *(v5 + 40), v6);
  }

  if (*(v5 + 64))
  {
  }

  if (*(v5 + 80))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10006AEF8()
{
  v2 = *(sub_1004DCEDC() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100035C88;

  return sub_1000957E0(v5, v0 + v3, v0 + v4);
}

uint64_t sub_10006B030()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100035C88;

  return sub_1000680F4((v0 + 16));
}

uint64_t sub_10006B104()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100035C88;

  return sub_100069728((v0 + 16));
}

uint64_t sub_10006B1D8()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100035C88;

  return sub_1000693D0((v0 + 16));
}

uint64_t sub_10006B2B0()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100035B28;

  return sub_10006901C((v0 + 16));
}

uint64_t sub_10006B384()
{
  v1 = *(v0 + 32);
  v7[0] = *(v0 + 16);
  v7[1] = v1;
  v7[2] = *(v0 + 48);
  v13 = *(v0 + 120);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v11 = *(v0 + 88);
  v4 = *(v0 + 104);
  v5 = *(v0 + 80);
  v12 = v4;
  v8 = v2;
  v9 = v3;
  v10 = v5;
  return v3(v7);
}

uint64_t sub_10006B3EC()
{

  return swift_deallocObject();
}

uint64_t sub_10006B44C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100035C88;

  return sub_100068D5C((v0 + 16));
}

_OWORD *sub_10006B4EC(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t sub_10006B504()
{

  return swift_deallocObject();
}

uint64_t sub_10006B558()
{
  v1 = *(v0 + 32);
  v7[0] = *(v0 + 16);
  v7[1] = v1;
  v13 = *(v0 + 104);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v11 = *(v0 + 72);
  v4 = *(v0 + 88);
  v5 = *(v0 + 64);
  v12 = v4;
  v8 = v2;
  v9 = v3;
  v10 = v5;
  return v3(v7);
}

uint64_t sub_10006B5B8()
{

  return swift_deallocObject();
}

uint64_t sub_10006B610()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100035C88;

  return sub_1000689C0((v0 + 16));
}

uint64_t sub_10006B6D4(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100004CB8(&qword_100635990, &unk_100516ED0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_10006B7A4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100004CB8(&qword_100635990, &unk_100516ED0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10006B854(uint64_t a1)
{
  type metadata accessor for PlaybackController();
  if (v1 <= 0x3F)
  {
    sub_10006B908(319);
    if (v2 <= 0x3F)
    {
      sub_10006B960();
      if (v3 <= 0x3F)
      {
        sub_10006B9B0(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10006B908(uint64_t a1)
{
  if (!qword_100635AE0)
  {
    type metadata accessor for PlaybackIntentDescriptor.IntentType(255);
    v1 = sub_1004DE7CC();
    if (!v2)
    {
      atomic_store(v1, &qword_100635AE0);
    }
  }
}

void sub_10006B960()
{
  if (!qword_100635AE8)
  {
    v0 = sub_1004DE7CC();
    if (!v1)
    {
      atomic_store(v0, &qword_100635AE8);
    }
  }
}

void sub_10006B9B0(uint64_t a1)
{
  if (!qword_100635AF0)
  {
    sub_100008DE4(&unk_100635AF8, &qword_100520AD0);
    v1 = sub_1004DE7CC();
    if (!v2)
    {
      atomic_store(v1, &qword_100635AF0);
    }
  }
}

uint64_t sub_10006BA24()
{
  v1 = *(sub_100004CB8(&qword_100635B30, &unk_10051DEB0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  swift_unknownObjectRelease();
  v3 = *(type metadata accessor for Actions.SortPlaylist.Context(0) + 24);
  v4 = sub_1004DCEEC();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v0 + v2 + v3, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_10006BBB0(uint64_t a1)
{
  sub_100004CB8(&qword_100635B30, &unk_10051DEB0);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100035C88;

  return sub_100060E04(a1);
}

uint64_t sub_10006BCAC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10006BD0C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100035C88;

  return sub_100068B98(a1, v4, v5, (v1 + 32));
}

uint64_t sub_10006BDD0()
{

  return swift_deallocObject();
}

uint64_t sub_10006BE14(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100035C88;

  return sub_100068F44(a1, v4, v5, (v1 + 32));
}

uint64_t sub_10006BEDC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100035C88;

  return sub_100069204(a1, v4, v5, (v1 + 32));
}

uint64_t sub_10006BFA0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100035C88;

  return sub_1000695B8(a1, v4, v5, (v1 + 32));
}

uint64_t sub_10006C064(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100035C88;

  return sub_100069910(a1, v4, v5, (v1 + 32));
}

uint64_t sub_10006C128(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100035C88;

  return sub_1000682DC(a1, v4, v5, (v1 + 32));
}

uint64_t sub_10006C1EC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100035C88;

  return sub_10006859C(a1, v4, v5, (v1 + 32));
}

uint64_t sub_10006C2B0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100035C88;

  return sub_10006885C(a1, v4, v5, (v1 + 32));
}

uint64_t sub_10006C374(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100035C88;

  return sub_1000677DC(a1, v4, v5, (v1 + 32));
}

uint64_t sub_10006C438(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100035C88;

  return sub_100067A9C(a1, v4, v5, (v1 + 32));
}

uint64_t sub_10006C4FC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100035C88;

  return sub_100067D5C(a1, v4, v5, (v1 + 32));
}

uint64_t sub_10006C5C0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100035C88;

  return sub_10006751C(a1, v4, v5, (v1 + 32));
}

uint64_t sub_10006C684(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100035C88;

  return sub_10006725C(a1, v4, v5, (v1 + 32));
}

uint64_t sub_10006C748()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10006C7B0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100035C88;

  return sub_10006801C(a1, v4, v5, (v1 + 32));
}

uint64_t sub_10006C874()
{

  return swift_deallocObject();
}

uint64_t sub_10006C8E4(uint64_t a1)
{
  sub_100004CB8(&qword_1006359B0, &qword_10051E110);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100035C88;

  return sub_100060C94(a1);
}

uint64_t sub_10006CA08(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v5 = *(sub_100004CB8(a1, a2) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  swift_unknownObjectRelease();
  v7 = sub_1004D8F4C();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v3 + v6, 1, v7))
  {
    (*(v8 + 8))(v3 + v6, v7);
  }

  a3(0);

  return swift_deallocObject();
}

uint64_t sub_10006CBA8(uint64_t a1)
{
  sub_100004CB8(&qword_1006359B8, &qword_100516F40);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100035C88;

  return sub_100060D4C(a1);
}

uint64_t sub_10006CCA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10006CD0C()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 32);
  if (v1 >= 4)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10006CD8C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100035C88;

  return sub_100066EA0(a1, v4, v5, v1 + 32);
}

uint64_t sub_10006CE50()
{
  v1 = *(v0 + 16);
  if (v1 >= 4)
  {
  }

  return swift_deallocObject();
}

id sub_10006CEB0(id result)
{
  if (result >= 4)
  {
    return result;
  }

  return result;
}

void Actions.AddToLibrary.Context.init<A>(item:library:presentationSource:observer:metricsReportingContext:)(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, unint64_t (**a9)()@<X8>, uint64_t a10)
{
  v36 = a8;
  v37 = a4;
  v39 = a3;
  v40 = a6;
  v38 = a5;
  v43 = a2;
  v35[0] = a1;
  v41 = a9;
  v12 = *(a7 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin();
  v42 = v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin();
  v16 = v35 - v15;
  (*(v12 + 16))(v35 - v15, v14);
  v17 = *(v12 + 80);
  v18 = (v17 + 40) & ~v17;
  v35[1] = v17 | 7;
  v19 = v13 + 7;
  v20 = (v13 + 7 + v18) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 2) = a7;
  *(v21 + 3) = a8;
  *(v21 + 4) = a10;
  v22 = *(v12 + 32);
  v22(v21 + v18, v16, a7);
  v23 = v42;
  *(v21 + v20) = v43;
  v22(v23, v35[0], a7);
  v24 = (v17 + 56) & ~v17;
  v25 = (v19 + v24) & 0xFFFFFFFFFFFFFFF8;
  v35[0] = (v25 + 15) & 0xFFFFFFFFFFFFFFF8;
  v26 = *(sub_100004CB8(&qword_1006359A0, &unk_100516EE0) - 8);
  v27 = (((v25 + 15) & 0xFFFFFFFFFFFFFFF8) + *(v26 + 80) + 96) & ~*(v26 + 80);
  v28 = swift_allocObject();
  v29 = v36;
  v30 = v37;
  *(v28 + 2) = a7;
  *(v28 + 3) = v29;
  *(v28 + 4) = a10;
  *(v28 + 5) = v30;
  v31 = v38;
  *(v28 + 6) = v38;
  v22(v28 + v24, v42, a7);
  *(v28 + v25) = v43;
  sub_10006A8BC(v39, v28 + v35[0]);
  sub_100047F38(v40, v28 + v27, &qword_1006359A0, &unk_100516EE0);
  v32 = swift_allocObject();
  *(v32 + 16) = v30;
  *(v32 + 24) = v31;
  v33 = swift_allocObject();
  *(v33 + 16) = &unk_1005172F0;
  *(v33 + 24) = v32;
  swift_unknownObjectRetain();

  v34 = v41;
  *v41 = sub_10006DB0C;
  v34[1] = v21;
  v34[2] = &unk_1005172E0;
  v34[3] = v28;
  v34[4] = &unk_100517300;
  v34[5] = v33;
}

double static Actions.AddToLibrary.action(context:)@<D0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1[1];
  *a2 = *a1;
  *(a2 + 16) = v2;
  *(a2 + 32) = a1[2];
  *(a2 + 48) = 0;
  *(a2 + 56) = sub_10006D3E4;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0x4014000000000000;
  *(a2 + 80) = &unk_100517308;
  *(a2 + 88) = 0;
  *(a2 + 96) = &unk_100517310;
  *(a2 + 104) = 0;

  return result;
}

uint64_t sub_10006D40C(uint64_t a1, uint64_t a2)
{
  v5 = (*(a2 + 16) + **(a2 + 16));
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_100035B28;

  return v5();
}

uint64_t sub_10006D4F4(uint64_t a1)
{
  v4 = (*(a1 + 32) + **(a1 + 32));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100035C88;

  return v4();
}

double sub_10006D5DC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 40);
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 40) = v2;
  *(a2 + 48) = 0;
  *(a2 + 56) = sub_10006D3E4;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0x4014000000000000;
  *(a2 + 80) = &unk_100517308;
  *(a2 + 88) = 0;
  *(a2 + 96) = &unk_100517310;
  *(a2 + 104) = 0;

  return result;
}

unint64_t sub_10006D694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v35 = a5;
  v36 = a2;
  v32 = sub_1004DC6BC();
  v34 = *(v32 - 8);
  __chkstk_darwin();
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100004CB8(&qword_100635B38, &qword_100517318);
  v30 = *(v9 - 8);
  v31 = v9;
  __chkstk_darwin();
  v11 = &v29 - v10;
  sub_100004CB8(&qword_100635B98, &qword_100517440);
  __chkstk_darwin();
  v13 = &v29 - v12;
  v14 = *(a3 - 8);
  __chkstk_darwin();
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1004DCA0C();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin();
  v21 = &v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v14 + 16);
  v33 = a1;
  v22(v16, a1, a3, v19);
  v23 = swift_dynamicCast();
  v24 = *(v18 + 56);
  if ((v23 & 1) == 0)
  {
    v24(v13, 1, 1, v17);
    sub_10001074C(v13, &qword_100635B98, &qword_100517440);
    goto LABEL_5;
  }

  v24(v13, 0, 1, v17);
  (*(v18 + 32))(v21, v13, v17);
  v25 = Album.childrenAddStatus(_:)(v36);
  (*(v18 + 8))(v21, v17);
  if (v25 != 1)
  {
LABEL_5:
    sub_1004D8C6C();
    v27 = v32;
    sub_1004DC56C();
    (*(v34 + 8))(v8, v27);
    v26 = sub_10006E17C();
    (*(v30 + 8))(v11, v31);
    return v26;
  }

  return 0;
}

uint64_t sub_10006DA78()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 40) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t Album.childrenAddStatus(_:)(uint64_t a1)
{
  v39 = a1;
  v38 = sub_1004DC6BC();
  v1 = *(v38 - 8);
  __chkstk_darwin();
  v37 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_100004CB8(&qword_100635B38, &qword_100517318);
  v3 = *(v36 - 8);
  __chkstk_darwin();
  v35 = &v27 - v4;
  v34 = sub_1004DCAAC();
  v5 = *(v34 - 8);
  __chkstk_darwin();
  v33 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100004CB8(&qword_100635B40, &qword_100517320);
  __chkstk_darwin();
  v9 = &v27 - v8;
  sub_100004CB8(&qword_100635B48, &qword_100517328);
  __chkstk_darwin();
  v11 = &v27 - v10;
  v12 = sub_100004CB8(&qword_100635B50, &qword_100517330);
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v27 - v14;
  sub_1004DC9EC();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_10001074C(v11, &qword_100635B48, &qword_100517328);
    return 0;
  }

  (*(v13 + 32))(v15, v11, v12);
  sub_1000744F0(&qword_100635B58, &protocol conformance descriptor for MusicItemCollection<A>);
  sub_1004DDCFC();
  sub_1004DDD3C();
  if (v40[0] == v40[4])
  {
    (*(v13 + 8))(v15, v12);
    return 0;
  }

  v28 = v13;
  (*(v13 + 16))(v9, v15, v12);
  v17 = *(v7 + 36);
  v27 = v15;
  sub_1004DDCFC();
  sub_1004DDD3C();
  if (*&v9[v17] == v40[0])
  {
LABEL_11:
    sub_10001074C(v9, &qword_100635B40, &qword_100517320);
    (*(v28 + 8))(v27, v12);
    return 2;
  }

  else
  {
    v31 = (v5 + 8);
    v32 = (v5 + 16);
    v29 = (v3 + 8);
    v30 = (v1 + 8);
    v18 = v33;
    while (1)
    {
      v19 = sub_1004DDE1C();
      v20 = v34;
      (*v32)(v18);
      v19(v40, 0);
      sub_1004DDD4C();
      v21 = v37;
      sub_1004D8C6C();
      v22 = v35;
      v23 = v38;
      sub_1004DC56C();
      (*v31)(v18, v20);
      (*v30)(v21, v23);
      v24 = sub_10006E17C();
      v26 = v25;
      (*v29)(v22, v36);
      if (v26 == 1)
      {
        break;
      }

      sub_1000354D0(v24, v26);
      sub_1004DDD3C();
      if (*&v9[v17] == v40[0])
      {
        goto LABEL_11;
      }
    }

    sub_10001074C(v9, &qword_100635B40, &qword_100517320);
    (*(v28 + 8))(v27, v12);
    return 1;
  }
}

unint64_t sub_10006E17C()
{
  v1 = v0;
  v2 = sub_1004DC6CC();
  v27 = *(v2 - 8);
  __chkstk_darwin();
  v26 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v26 - v4;
  v6 = sub_1004DC6AC();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v26 - v10;
  v12 = sub_100004CB8(&qword_100635B38, &qword_100517318);
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin();
  v16 = &v26 - v15;
  (*(v13 + 16))(&v26 - v15, v1, v12, v14);
  v17 = (*(v13 + 88))(v16, v12);
  if (v17 == enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    (*(v13 + 96))(v16, v12);
    (*(v7 + 32))(v11, v16, v6);
    (*(v7 + 16))(v9, v11, v6);
    v18 = (*(v7 + 88))(v9, v6);
    if (v18 == enum case for MusicLibrary.AddAction.UnsupportedReason.unaddable(_:))
    {
      (*(v7 + 96))(v9, v6);
      v19 = v27;
      (*(v27 + 32))(v5, v9, v2);
      v20 = v26;
      (*(v19 + 16))(v26, v5, v2);
      v21 = (*(v19 + 88))(v20, v2);
      if (v21 != enum case for MusicLibrary.AddStatus.UnaddableReason.allExplicitContentRestricted(_:) && v21 != enum case for MusicLibrary.AddStatus.UnaddableReason.cloudLibraryRequired(_:) && v21 != enum case for MusicLibrary.AddStatus.UnaddableReason.subscriptionRequired(_:))
      {
        v28 = 0;
        v29 = 0xE000000000000000;
        sub_1004DEAAC(24);

        v28 = 0xD000000000000016;
        v29 = 0x80000001004EA440;
        sub_1000744A0(&qword_100635B88, &protocol conformance descriptor for MusicLibrary.AddStatus.UnaddableReason);
        v30._countAndFlagsBits = sub_1004DEFFC();
        sub_1004DD5FC(v30);

        v22 = v28;
        v23 = *(v19 + 8);
        v23(v5, v2);
        (*(v7 + 8))(v11, v6);
        v23(v20, v2);
        return v22;
      }

      (*(v19 + 8))(v5, v2);
      (*(v7 + 8))(v11, v6);
      return 0;
    }

    if (v18 == enum case for MusicLibrary.AddAction.UnsupportedReason.unsupportedType(_:))
    {
      goto LABEL_10;
    }

    if (v18 == enum case for MusicLibrary.AddAction.UnsupportedReason.alreadyAdded(_:))
    {
      (*(v7 + 8))(v11, v6);
      return 0xD000000000000012;
    }

    else
    {
      if (v18 == enum case for MusicLibrary.AddAction.UnsupportedReason.networkRequired(_:))
      {
LABEL_10:
        (*(v7 + 8))(v11, v6);
        return 0xD000000000000010;
      }

      v25 = *(v7 + 8);
      v25(v11, v6);
      v25(v9, v6);
      return 0x206E776F6E6B6E55;
    }
  }

  else
  {
    if (v17 == enum case for MusicLibrary.SupportedStatus.supported<A>(_:))
    {
      return 0;
    }

    result = sub_1004DECCC();
    __break(1u);
  }

  return result;
}

uint64_t sub_10006E79C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[86] = v18;
  v8[85] = a8;
  v8[84] = a7;
  v8[83] = a6;
  v8[82] = a5;
  v8[81] = a4;
  v8[80] = a3;
  v8[79] = a2;
  v8[78] = a1;
  sub_100004CB8(&qword_100635248, &unk_100516140);
  v8[87] = swift_task_alloc();
  v8[88] = swift_task_alloc();
  v8[89] = swift_task_alloc();
  v8[90] = swift_task_alloc();
  v8[91] = swift_task_alloc();
  v8[92] = swift_task_alloc();
  v8[93] = swift_task_alloc();
  v8[94] = swift_task_alloc();
  v8[95] = type metadata accessor for MetricsEvent.Click(0);
  v8[96] = swift_task_alloc();
  v8[97] = swift_task_alloc();
  sub_100004CB8(&qword_100634B30, &unk_100513D70);
  v8[98] = swift_task_alloc();
  v8[99] = swift_task_alloc();
  v8[100] = swift_task_alloc();
  sub_100004CB8(&qword_1006359A0, &unk_100516EE0);
  v8[101] = swift_task_alloc();
  v10 = type metadata accessor for Actions.MetricsReportingContext(0);
  v8[102] = v10;
  v8[103] = *(v10 - 8);
  v8[104] = swift_task_alloc();
  v8[105] = type metadata accessor for Notice.Variant(0);
  v8[106] = swift_task_alloc();
  v11 = sub_1004DC6CC();
  v8[107] = v11;
  v8[108] = *(v11 - 8);
  v8[109] = swift_task_alloc();
  v8[110] = sub_100004CB8(&qword_100635B90, &qword_100517438);
  v8[111] = swift_task_alloc();
  v8[112] = swift_task_alloc();
  v12 = sub_1004DC6BC();
  v8[113] = v12;
  v8[114] = *(v12 - 8);
  v8[115] = swift_task_alloc();
  v13 = sub_100004CB8(&qword_100635B38, &qword_100517318);
  v8[116] = v13;
  v8[117] = *(v13 - 8);
  v8[118] = swift_task_alloc();
  sub_100004CB8(&qword_100635B48, &qword_100517328);
  v8[119] = swift_task_alloc();
  v14 = sub_100004CB8(&qword_100635B50, &qword_100517330);
  v8[120] = v14;
  v8[121] = *(v14 - 8);
  v8[122] = swift_task_alloc();
  sub_100004CB8(&qword_100635B98, &qword_100517440);
  v8[123] = swift_task_alloc();
  v8[124] = *(a7 - 8);
  v8[125] = swift_task_alloc();
  v15 = sub_1004DCA0C();
  v8[126] = v15;
  v8[127] = *(v15 - 8);
  v8[128] = swift_task_alloc();
  sub_100004CB8(&qword_100635BA0, &qword_100517448);
  v8[129] = swift_task_alloc();
  v8[130] = swift_task_alloc();
  v8[131] = swift_task_alloc();
  v8[132] = swift_task_alloc();
  v8[133] = swift_task_alloc();
  v8[134] = swift_task_alloc();
  v8[135] = swift_task_alloc();

  return _swift_task_switch(sub_10006ED74, 0, 0);
}

uint64_t sub_10006ED74()
{
  v102 = v0;
  if (*(v0 + 624))
  {
    v1 = *(v0 + 632);
    *(v0 + 1088) = swift_getObjectType();
    *(v0 + 1096) = *(v1 + 8);
    *(v0 + 1104) = (v1 + 8) & 0xFFFFFFFFFFFFLL | 0xE86A000000000000;
    sub_1004DDA4C();
    *(v0 + 1112) = sub_1004DDA3C();
    v2 = sub_1004DD9BC();
    v4 = v3;
    v5 = sub_10006FB4C;
LABEL_3:
    v6 = v5;
    v7 = v2;
    v8 = v4;
LABEL_4:

    return _swift_task_switch(v6, v7, v8);
  }

  if (qword_100633B60 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  v9 = *(v0 + 224);
  *(v0 + 80) = *(v0 + 208);
  *(v0 + 96) = v9;
  v10 = *(v0 + 256);
  *(v0 + 112) = *(v0 + 240);
  *(v0 + 128) = v10;
  v11 = *(v0 + 160);
  *(v0 + 16) = *(v0 + 144);
  *(v0 + 32) = v11;
  v12 = *(v0 + 192);
  *(v0 + 48) = *(v0 + 176);
  *(v0 + 64) = v12;
  sub_100073E60(v0 + 16);
  if ((*(v0 + 25) & 2) != 0)
  {
    v14 = *(v0 + 1016);
    v15 = *(v0 + 1000);
    v16 = *(v0 + 992);
    v17 = *(v0 + 672);
    v18 = *(v0 + 640);
    v100 = *(*(v0 + 864) + 56);
    v100(*(v0 + 1080), 1, 1, *(v0 + 856));
    v19 = *(v16 + 16);
    *(v0 + 1120) = v19;
    *(v0 + 1128) = (v16 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v19(v15, v18, v17);
    v20 = swift_dynamicCast();
    v21 = *(v14 + 56);
    if (v20)
    {
      v22 = *(v0 + 1024);
      v23 = *(v0 + 1016);
      v24 = *(v0 + 1008);
      v25 = *(v0 + 984);
      v26 = *(v0 + 648);
      v21(v25, 0, 1, v24);
      (*(v23 + 32))(v22, v25, v24);
      if (Album.childrenAddStatus(_:)(v26) != 1)
      {
        (*(*(v0 + 1016) + 8))(*(v0 + 1024), *(v0 + 1008));
        goto LABEL_20;
      }

      v27 = *(v0 + 968);
      v28 = *(v0 + 960);
      v29 = *(v0 + 952);
      sub_1004DC9EC();
      if ((*(v27 + 48))(v29, 1, v28) != 1)
      {
        v79 = *(v0 + 976);
        v80 = *(v0 + 648);
        (*(*(v0 + 968) + 32))(v79, *(v0 + 952), *(v0 + 960));
        v101[0] = _swiftEmptyArrayStorage;

        LOBYTE(v79) = sub_100073EB4(v79, v80, v101);

        if (v79)
        {
          v81 = *(v0 + 1024);
          v82 = *(v0 + 1016);
          v83 = *(v0 + 1008);
          (*(*(v0 + 968) + 8))(*(v0 + 976), *(v0 + 960));
          (*(v82 + 8))(v81, v83);
        }

        else
        {
          if (*(v101[0] + 16))
          {
            (*(*(v0 + 864) + 16))(*(v0 + 1072), v101[0] + ((*(*(v0 + 864) + 80) + 32) & ~*(*(v0 + 864) + 80)), *(v0 + 856));
            v84 = 0;
          }

          else
          {
            v84 = 1;
          }

          v85 = *(v0 + 1080);
          v86 = *(v0 + 1072);
          v87 = *(v0 + 1024);
          v88 = *(v0 + 1016);
          v89 = *(v0 + 1008);
          v90 = *(v0 + 856);
          (*(*(v0 + 968) + 8))(*(v0 + 976), *(v0 + 960));
          (*(v88 + 8))(v87, v89);
          sub_10001074C(v85, &qword_100635BA0, &qword_100517448);
          v100(v86, v84, 1, v90);
          sub_100047F38(v86, v85, &qword_100635BA0, &qword_100517448);
        }

LABEL_21:
        v38 = *(v0 + 1080);
        v39 = *(v0 + 1056);
        v40 = *(v0 + 896);
        v41 = *(v0 + 880);
        v42 = *(v0 + 864);
        v43 = *(v0 + 856);
        v97 = *(v42 + 104);
        v97(v39, enum case for MusicLibrary.AddStatus.UnaddableReason.cloudLibraryRequired(_:), v43);
        v100(v39, 0, 1, v43);
        v99 = v41;
        v44 = *(v41 + 48);
        sub_1000108DC(v38, v40, &qword_100635BA0, &qword_100517448);
        sub_1000108DC(v39, v40 + v44, &qword_100635BA0, &qword_100517448);
        v45 = *(v42 + 48);
        if (v45(v40, 1, v43) == 1)
        {
          v46 = *(v0 + 856);
          sub_10001074C(*(v0 + 1056), &qword_100635BA0, &qword_100517448);
          if (v45(v40 + v44, 1, v46) == 1)
          {
            sub_10001074C(*(v0 + 896), &qword_100635BA0, &qword_100517448);
LABEL_35:
            *(v0 + 1136) = sub_1004DDA4C();
            *(v0 + 1144) = sub_1004DDA3C();
            v70 = sub_1004DD9BC();
            v8 = v71;
            *(v0 + 1152) = v70;
            *(v0 + 1160) = v71;
            v6 = sub_100070958;
            v7 = v70;
            goto LABEL_4;
          }
        }

        else
        {
          v47 = *(v0 + 856);
          sub_1000108DC(*(v0 + 896), *(v0 + 1048), &qword_100635BA0, &qword_100517448);
          v48 = v45(v40 + v44, 1, v47);
          v49 = *(v0 + 1056);
          v50 = *(v0 + 1048);
          if (v48 != 1)
          {
            v95 = v45;
            v93 = *(v0 + 896);
            v66 = *(v0 + 872);
            v67 = *(v0 + 864);
            v68 = *(v0 + 856);
            (*(v67 + 32))(v66, v40 + v44, v68);
            sub_1000744A0(&qword_100635BB0, &protocol conformance descriptor for MusicLibrary.AddStatus.UnaddableReason);
            v92 = sub_1004DD35C();
            v69 = *(v67 + 8);
            v69(v66, v68);
            sub_10001074C(v49, &qword_100635BA0, &qword_100517448);
            v69(v50, v68);
            sub_10001074C(v93, &qword_100635BA0, &qword_100517448);
            if (v92)
            {
              goto LABEL_35;
            }

LABEL_27:
            v53 = *(v0 + 1080);
            v54 = *(v0 + 1040);
            v55 = *(v0 + 888);
            v56 = *(v0 + 856);
            v97(v54, enum case for MusicLibrary.AddStatus.UnaddableReason.allExplicitContentRestricted(_:), v56);
            v100(v54, 0, 1, v56);
            v57 = *(v99 + 48);
            sub_1000108DC(v53, v55, &qword_100635BA0, &qword_100517448);
            sub_1000108DC(v54, v55 + v57, &qword_100635BA0, &qword_100517448);
            if (v95(v55, 1, v56) == 1)
            {
              v58 = *(v0 + 856);
              sub_10001074C(*(v0 + 1040), &qword_100635BA0, &qword_100517448);
              if (v95(v55 + v57, 1, v58) == 1)
              {
                sub_10001074C(*(v0 + 888), &qword_100635BA0, &qword_100517448);
LABEL_37:
                *(v0 + 1192) = sub_1004DDA4C();
                *(v0 + 1200) = sub_1004DDA3C();
                v2 = sub_1004DD9BC();
                v4 = v78;
                v5 = sub_100070C30;
                goto LABEL_3;
              }
            }

            else
            {
              v59 = *(v0 + 856);
              sub_1000108DC(*(v0 + 888), *(v0 + 1032), &qword_100635BA0, &qword_100517448);
              v60 = v95(v55 + v57, 1, v59);
              v61 = *(v0 + 1040);
              v62 = *(v0 + 1032);
              if (v60 != 1)
              {
                v72 = *(v0 + 888);
                v73 = *(v0 + 872);
                v74 = *(v0 + 864);
                v75 = *(v0 + 856);
                (*(v74 + 32))(v73, v55 + v57, v75);
                sub_1000744A0(&qword_100635BB0, &protocol conformance descriptor for MusicLibrary.AddStatus.UnaddableReason);
                v76 = sub_1004DD35C();
                v77 = *(v74 + 8);
                v77(v73, v75);
                sub_10001074C(v61, &qword_100635BA0, &qword_100517448);
                v77(v62, v75);
                sub_10001074C(v72, &qword_100635BA0, &qword_100517448);
                if (v76)
                {
                  goto LABEL_37;
                }

LABEL_33:
                swift_storeEnumTagMultiPayload();
                *(v0 + 1216) = sub_1004DDA4C();
                *(v0 + 1224) = sub_1004DDA3C();
                v2 = sub_1004DD9BC();
                v4 = v65;
                v5 = sub_10007126C;
                goto LABEL_3;
              }

              v63 = *(v0 + 864);
              v64 = *(v0 + 856);
              sub_10001074C(*(v0 + 1040), &qword_100635BA0, &qword_100517448);
              (*(v63 + 8))(v62, v64);
            }

            sub_10001074C(*(v0 + 888), &qword_100635B90, &qword_100517438);
            goto LABEL_33;
          }

          v51 = *(v0 + 864);
          v52 = *(v0 + 856);
          sub_10001074C(*(v0 + 1056), &qword_100635BA0, &qword_100517448);
          (*(v51 + 8))(v50, v52);
        }

        v95 = v45;
        sub_10001074C(*(v0 + 896), &qword_100635B90, &qword_100517438);
        goto LABEL_27;
      }

      v30 = *(v0 + 952);
      (*(*(v0 + 1016) + 8))(*(v0 + 1024), *(v0 + 1008));
      v31 = &qword_100635B48;
      v32 = &qword_100517328;
    }

    else
    {
      v30 = *(v0 + 984);
      v21(v30, 1, 1, *(v0 + 1008));
      v31 = &qword_100635B98;
      v32 = &qword_100517440;
    }

    sub_10001074C(v30, v31, v32);
LABEL_20:
    v94 = *(v0 + 1064);
    v33 = *(v0 + 944);
    v34 = *(v0 + 936);
    v96 = *(v0 + 928);
    v98 = *(v0 + 1080);
    v35 = *(v0 + 920);
    v36 = *(v0 + 912);
    v37 = *(v0 + 904);
    sub_1004D8C6C();
    sub_1004DC56C();
    (*(v36 + 8))(v35, v37);
    MusicLibrary.SupportedStatus<>.unaddableReason.getter(v94);
    (*(v34 + 8))(v33, v96);
    sub_10001074C(v98, &qword_100635BA0, &qword_100517448);
    sub_100047F38(v94, v98, &qword_100635BA0, &qword_100517448);
    goto LABEL_21;
  }

  *(v0 + 600) = 0;
  *(v0 + 568) = 0u;
  *(v0 + 584) = 0u;
  *(v0 + 608) = -1;
  _s9MusicCore27SubscriptionUpsellPresenterV7present3foryAC9PlacementO_tFZ_0(v0 + 568);
  sub_1000741FC(v0 + 568);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_10006FB4C()
{
  v1 = v0[137];
  v2 = v0[136];
  v3 = v0[79];

  v1(0, v2, v3);

  return _swift_task_switch(sub_10006FBE8, 0, 0);
}

uint64_t sub_10006FBE8()
{
  v100 = v0;
  if (qword_100633B60 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  v1 = *(v0 + 224);
  *(v0 + 80) = *(v0 + 208);
  *(v0 + 96) = v1;
  v2 = *(v0 + 256);
  *(v0 + 112) = *(v0 + 240);
  *(v0 + 128) = v2;
  v3 = *(v0 + 160);
  *(v0 + 16) = *(v0 + 144);
  *(v0 + 32) = v3;
  v4 = *(v0 + 192);
  *(v0 + 48) = *(v0 + 176);
  *(v0 + 64) = v4;
  sub_100073E60(v0 + 16);
  if ((*(v0 + 25) & 2) == 0)
  {
    *(v0 + 600) = 0;
    *(v0 + 568) = 0u;
    *(v0 + 584) = 0u;
    *(v0 + 608) = -1;
    _s9MusicCore27SubscriptionUpsellPresenterV7present3foryAC9PlacementO_tFZ_0(v0 + 568);
    sub_1000741FC(v0 + 568);

    v5 = *(v0 + 8);

    return v5();
  }

  v7 = *(v0 + 1016);
  v8 = *(v0 + 1000);
  v9 = *(v0 + 992);
  v10 = *(v0 + 672);
  v11 = *(v0 + 640);
  v98 = *(*(v0 + 864) + 56);
  v98(*(v0 + 1080), 1, 1, *(v0 + 856));
  v12 = *(v9 + 16);
  *(v0 + 1120) = v12;
  *(v0 + 1128) = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v12(v8, v11, v10);
  v13 = swift_dynamicCast();
  v14 = *(v7 + 56);
  if ((v13 & 1) == 0)
  {
    v23 = *(v0 + 984);
    v14(v23, 1, 1, *(v0 + 1008));
    v24 = &qword_100635B98;
    v25 = &qword_100517440;
    goto LABEL_12;
  }

  v15 = *(v0 + 1024);
  v16 = *(v0 + 1016);
  v17 = *(v0 + 1008);
  v18 = *(v0 + 984);
  v19 = *(v0 + 648);
  v14(v18, 0, 1, v17);
  (*(v16 + 32))(v15, v18, v17);
  if (Album.childrenAddStatus(_:)(v19) != 1)
  {
    (*(*(v0 + 1016) + 8))(*(v0 + 1024), *(v0 + 1008));
    goto LABEL_14;
  }

  v20 = *(v0 + 968);
  v21 = *(v0 + 960);
  v22 = *(v0 + 952);
  sub_1004DC9EC();
  if ((*(v20 + 48))(v22, 1, v21) == 1)
  {
    v23 = *(v0 + 952);
    (*(*(v0 + 1016) + 8))(*(v0 + 1024), *(v0 + 1008));
    v24 = &qword_100635B48;
    v25 = &qword_100517328;
LABEL_12:
    sub_10001074C(v23, v24, v25);
LABEL_14:
    v92 = *(v0 + 1064);
    v26 = *(v0 + 944);
    v27 = *(v0 + 936);
    v94 = *(v0 + 928);
    v96 = *(v0 + 1080);
    v28 = *(v0 + 920);
    v29 = *(v0 + 912);
    v30 = *(v0 + 904);
    sub_1004D8C6C();
    sub_1004DC56C();
    (*(v29 + 8))(v28, v30);
    MusicLibrary.SupportedStatus<>.unaddableReason.getter(v92);
    (*(v27 + 8))(v26, v94);
    sub_10001074C(v96, &qword_100635BA0, &qword_100517448);
    sub_100047F38(v92, v96, &qword_100635BA0, &qword_100517448);
    goto LABEL_15;
  }

  v78 = *(v0 + 976);
  v79 = *(v0 + 648);
  (*(*(v0 + 968) + 32))(v78, *(v0 + 952), *(v0 + 960));
  v99[0] = _swiftEmptyArrayStorage;

  LOBYTE(v78) = sub_100073EB4(v78, v79, v99);

  if (v78)
  {
    v80 = *(v0 + 1024);
    v81 = *(v0 + 1016);
    v82 = *(v0 + 1008);
    (*(*(v0 + 968) + 8))(*(v0 + 976), *(v0 + 960));
    (*(v81 + 8))(v80, v82);
  }

  else
  {
    if (*(v99[0] + 16))
    {
      (*(*(v0 + 864) + 16))(*(v0 + 1072), v99[0] + ((*(*(v0 + 864) + 80) + 32) & ~*(*(v0 + 864) + 80)), *(v0 + 856));
      v83 = 0;
    }

    else
    {
      v83 = 1;
    }

    v84 = *(v0 + 1080);
    v85 = *(v0 + 1072);
    v86 = *(v0 + 1024);
    v87 = *(v0 + 1016);
    v88 = *(v0 + 1008);
    v89 = *(v0 + 856);
    (*(*(v0 + 968) + 8))(*(v0 + 976), *(v0 + 960));
    (*(v87 + 8))(v86, v88);
    sub_10001074C(v84, &qword_100635BA0, &qword_100517448);
    v98(v85, v83, 1, v89);
    sub_100047F38(v85, v84, &qword_100635BA0, &qword_100517448);
  }

LABEL_15:
  v31 = *(v0 + 1080);
  v32 = *(v0 + 1056);
  v33 = *(v0 + 896);
  v34 = *(v0 + 880);
  v35 = *(v0 + 864);
  v36 = *(v0 + 856);
  v95 = *(v35 + 104);
  v95(v32, enum case for MusicLibrary.AddStatus.UnaddableReason.cloudLibraryRequired(_:), v36);
  v98(v32, 0, 1, v36);
  v97 = v34;
  v37 = *(v34 + 48);
  sub_1000108DC(v31, v33, &qword_100635BA0, &qword_100517448);
  sub_1000108DC(v32, v33 + v37, &qword_100635BA0, &qword_100517448);
  v38 = *(v35 + 48);
  if (v38(v33, 1, v36) != 1)
  {
    v40 = *(v0 + 856);
    sub_1000108DC(*(v0 + 896), *(v0 + 1048), &qword_100635BA0, &qword_100517448);
    v41 = v38(v33 + v37, 1, v40);
    v42 = *(v0 + 1056);
    v43 = *(v0 + 1048);
    if (v41 != 1)
    {
      v93 = v38;
      v91 = *(v0 + 896);
      v62 = *(v0 + 872);
      v63 = *(v0 + 864);
      v64 = *(v0 + 856);
      (*(v63 + 32))(v62, v33 + v37, v64);
      sub_1000744A0(&qword_100635BB0, &protocol conformance descriptor for MusicLibrary.AddStatus.UnaddableReason);
      v90 = sub_1004DD35C();
      v65 = *(v63 + 8);
      v65(v62, v64);
      sub_10001074C(v42, &qword_100635BA0, &qword_100517448);
      v65(v43, v64);
      sub_10001074C(v91, &qword_100635BA0, &qword_100517448);
      if (v90)
      {
        goto LABEL_29;
      }

LABEL_21:
      v46 = *(v0 + 1080);
      v47 = *(v0 + 1040);
      v48 = *(v0 + 888);
      v49 = *(v0 + 856);
      v95(v47, enum case for MusicLibrary.AddStatus.UnaddableReason.allExplicitContentRestricted(_:), v49);
      v98(v47, 0, 1, v49);
      v50 = *(v97 + 48);
      sub_1000108DC(v46, v48, &qword_100635BA0, &qword_100517448);
      sub_1000108DC(v47, v48 + v50, &qword_100635BA0, &qword_100517448);
      if (v93(v48, 1, v49) == 1)
      {
        v51 = *(v0 + 856);
        sub_10001074C(*(v0 + 1040), &qword_100635BA0, &qword_100517448);
        if (v93(v48 + v50, 1, v51) == 1)
        {
          sub_10001074C(*(v0 + 888), &qword_100635BA0, &qword_100517448);
LABEL_31:
          *(v0 + 1192) = sub_1004DDA4C();
          *(v0 + 1200) = sub_1004DDA3C();
          v58 = sub_1004DD9BC();
          v60 = v77;
          v61 = sub_100070C30;
          goto LABEL_32;
        }
      }

      else
      {
        v52 = *(v0 + 856);
        sub_1000108DC(*(v0 + 888), *(v0 + 1032), &qword_100635BA0, &qword_100517448);
        v53 = v93(v48 + v50, 1, v52);
        v54 = *(v0 + 1040);
        v55 = *(v0 + 1032);
        if (v53 != 1)
        {
          v71 = *(v0 + 888);
          v72 = *(v0 + 872);
          v73 = *(v0 + 864);
          v74 = *(v0 + 856);
          (*(v73 + 32))(v72, v48 + v50, v74);
          sub_1000744A0(&qword_100635BB0, &protocol conformance descriptor for MusicLibrary.AddStatus.UnaddableReason);
          v75 = sub_1004DD35C();
          v76 = *(v73 + 8);
          v76(v72, v74);
          sub_10001074C(v54, &qword_100635BA0, &qword_100517448);
          v76(v55, v74);
          sub_10001074C(v71, &qword_100635BA0, &qword_100517448);
          if (v75)
          {
            goto LABEL_31;
          }

LABEL_27:
          swift_storeEnumTagMultiPayload();
          *(v0 + 1216) = sub_1004DDA4C();
          *(v0 + 1224) = sub_1004DDA3C();
          v58 = sub_1004DD9BC();
          v60 = v59;
          v61 = sub_10007126C;
LABEL_32:
          v69 = v61;
          v70 = v58;
          v68 = v60;
          goto LABEL_33;
        }

        v56 = *(v0 + 864);
        v57 = *(v0 + 856);
        sub_10001074C(*(v0 + 1040), &qword_100635BA0, &qword_100517448);
        (*(v56 + 8))(v55, v57);
      }

      sub_10001074C(*(v0 + 888), &qword_100635B90, &qword_100517438);
      goto LABEL_27;
    }

    v44 = *(v0 + 864);
    v45 = *(v0 + 856);
    sub_10001074C(*(v0 + 1056), &qword_100635BA0, &qword_100517448);
    (*(v44 + 8))(v43, v45);
LABEL_20:
    v93 = v38;
    sub_10001074C(*(v0 + 896), &qword_100635B90, &qword_100517438);
    goto LABEL_21;
  }

  v39 = *(v0 + 856);
  sub_10001074C(*(v0 + 1056), &qword_100635BA0, &qword_100517448);
  if (v38(v33 + v37, 1, v39) != 1)
  {
    goto LABEL_20;
  }

  sub_10001074C(*(v0 + 896), &qword_100635BA0, &qword_100517448);
LABEL_29:
  *(v0 + 1136) = sub_1004DDA4C();
  *(v0 + 1144) = sub_1004DDA3C();
  v66 = sub_1004DD9BC();
  v68 = v67;
  *(v0 + 1152) = v66;
  *(v0 + 1160) = v67;
  v69 = sub_100070958;
  v70 = v66;
LABEL_33:

  return _swift_task_switch(v69, v70, v68);
}

uint64_t sub_100070958(uint64_t a1)
{
  v2 = v1[82];
  v3 = sub_1004DDA3C();
  v1[146] = v3;
  v4 = swift_task_alloc();
  v1[147] = v4;
  *(v4 + 16) = 0;
  *(v4 + 24) = v2;
  *(v4 + 32) = 0;
  v5 = swift_task_alloc();
  v1[148] = v5;
  *v5 = v1;
  v5[1] = sub_100070A68;

  return withCheckedContinuation<A>(isolation:function:_:)(v1 + 609, v3, &protocol witness table for MainActor, 0xD00000000000003DLL, 0x80000001004EA4A0, sub_1000744E4, v4, &type metadata for Bool);
}

uint64_t sub_100070A68()
{
  v1 = *v0;

  v2 = *(v1 + 1160);
  v3 = *(v1 + 1152);

  return _swift_task_switch(sub_100070BC8, v3, v2);
}

uint64_t sub_100070BC8()
{

  return _swift_task_switch(sub_100074564, 0, 0);
}

uint64_t sub_100070C30()
{

  sub_1001362BC(0, v0 + 448);

  return _swift_task_switch(sub_100070CA4, 0, 0);
}

uint64_t sub_100070CA4(uint64_t a1)
{
  *(v1 + 1208) = sub_1004DDA3C();
  v3 = sub_1004DD9BC();

  return _swift_task_switch(sub_100070D30, v3, v2);
}

uint64_t sub_100070D30()
{
  v1 = *(v0 + 656);

  v2 = sub_1000EA900((v0 + 448), 0, 1);
  v3 = v2;
  v4 = *(v0 + 480);
  v5 = *(v1 + 80);
  if (v5)
  {
    v6 = *(v1 + 88);
    v7 = qword_100633E08;

    if (v7 != -1)
    {
      swift_once();
    }

    v8 = sub_1004D966C();
    sub_100035430(v8, qword_10063B820);
    v9 = sub_1004D964C();
    v10 = sub_1004DDF9C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Deferring presentation…", v11, 2u);
    }

    v12 = *(v0 + 656);

    v13 = objc_allocWithZone(MSVBlockGuard);
    *(v0 + 552) = sub_100257E18;
    *(v0 + 560) = 0;
    *(v0 + 520) = _NSConcreteStackBlock;
    *(v0 + 528) = 1107296256;
    *(v0 + 536) = sub_100258DB8;
    *(v0 + 544) = &unk_1005D6F58;
    v14 = _Block_copy((v0 + 520));
    v15 = [v13 initWithTimeout:v14 interruptionHandler:10.0];
    _Block_release(v14);

    sub_1000699E8(v12, v0 + 272);
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    sub_10006A8BC(v0 + 272, v16 + 24);
    *(v16 + 120) = v3;
    *(v16 + 128) = v4;
    *(v16 + 129) = 1;
    *(v16 + 136) = 0;
    *(v16 + 144) = 0;
    v17 = v15;
    v18 = v3;
    v5(v12, v18, sub_100074484, v16);
    sub_10000DE74(v5, v6);

    sub_100074384(v0 + 448);
    v19 = sub_100071020;
  }

  else
  {
    sub_1002562F8(v2, *(v0 + 480), 1, 0, 0);

    sub_100074384(v0 + 448);
    v19 = sub_100074564;
  }

  return _swift_task_switch(v19, 0, 0);
}

uint64_t sub_100071020()
{
  sub_10001074C(*(v0 + 1080), &qword_100635BA0, &qword_100517448);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10007126C()
{
  v1 = *(v0 + 848);

  sub_10019AC38(v1, 0);
  sub_100074324(v1, type metadata accessor for Notice.Variant);

  return _swift_task_switch(sub_100071304, 0, 0);
}

uint64_t sub_100071304()
{
  v1 = *(v0 + 824);
  v2 = *(v0 + 816);
  v3 = *(v0 + 808);
  sub_1000108DC(*(v0 + 664), v3, &qword_1006359A0, &unk_100516EE0);
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    sub_10001074C(*(v0 + 808), &qword_1006359A0, &unk_100516EE0);
    v4 = *(v0 + 1120);
    v5 = *(v0 + 672);
    v6 = *(v0 + 640);
    sub_1001A9E7C(v5, v5);
    swift_allocObject();
    v7 = sub_1004DD89C();
    v4(v8, v6, v5);
    v9 = sub_1001720EC(v7, v5);
    *(v0 + 1304) = v9;
    *(v0 + 616) = v9;
    v10 = swift_task_alloc();
    *(v0 + 1312) = v10;
    v11 = sub_1004DD98C();
    WitnessTable = swift_getWitnessTable();
    *v10 = v0;
    v10[1] = sub_100071FC0;
    v13 = *(v0 + 680);
    v14 = *(v0 + 672);

    return MusicLibrary.add<A, B>(_:)(v0 + 616, v11, v14, WitnessTable, v13);
  }

  else
  {
    v15 = *(v0 + 800);
    v16 = *(v0 + 680);
    v17 = *(v0 + 672);
    sub_100074250(*(v0 + 808), *(v0 + 832), type metadata accessor for Actions.MetricsReportingContext);
    v18 = *(v16 + 8);
    *(v0 + 1232) = MusicItem.metricsTargetIdentifier.getter(v17, v18);
    *(v0 + 1240) = v19;
    v20 = sub_1004D809C();
    *(v0 + 1248) = v20;
    v21 = *(v20 - 8);
    v22 = *(v21 + 56);
    *(v0 + 1256) = v22;
    *(v0 + 1264) = (v21 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v22(v15, 1, 1, v20);
    sub_100004CB8(&qword_100635BA8, &qword_100517A00);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1005126C0;
    *(inited + 32) = MusicItem.metricsContentType.getter(v17, v18);
    *(inited + 40) = v24;
    *(inited + 48) = 0;
    *(inited + 56) = 0;
    *(inited + 64) = 0;
    *(inited + 72) = 1;
    *(v0 + 1272) = sub_10004B4B4(inited);
    *(v0 + 1280) = v25;
    *(v0 + 1288) = v26;
    *(v0 + 610) = v27;
    swift_setDeallocating();
    swift_arrayDestroy();
    *(v0 + 1296) = sub_1004DDA3C();
    v29 = sub_1004DD9BC();

    return _swift_task_switch(sub_100071654, v29, v28);
  }
}

uint64_t sub_100071654()
{
  v80 = *(v0 + 610);
  v73 = *(v0 + 1272);
  v76 = *(v0 + 1240);
  v78 = *(v0 + 1288);
  v74 = *(v0 + 1232);
  v1 = *(v0 + 832);
  v2 = *(v0 + 816);
  v3 = *(v0 + 800);
  v4 = *(v0 + 792);
  v5 = *(v0 + 768);
  v6 = *(v0 + 760);
  v7 = *(v0 + 752);
  v72 = *(v0 + 744);

  sub_1000108DC(v3, v4, &qword_100634B30, &unk_100513D70);
  v8 = *(v1 + v2[7]);
  v9 = *v1;
  v10 = v1[1];
  sub_1000108DC(v1 + v2[5], v7, &qword_100635248, &unk_100516140);
  v81 = *(v1 + v2[8]);
  *(v5 + v6[19]) = 0;
  v11 = (v5 + v6[20]);
  *v11 = 0;
  v11[1] = 0;
  *v5 = v74;
  *(v5 + 8) = v76;
  *(v5 + 16) = 773;
  sub_100047F38(v4, v5 + v6[7], &qword_100634B30, &unk_100513D70);
  *(v5 + v6[8]) = v8;
  v12 = (v5 + v6[9]);
  v75 = v9;
  v77 = v10;
  *v12 = v9;
  v12[1] = v10;
  v13 = v5 + v6[10];
  *v13 = v73;
  *(v13 + 16) = v78;
  *(v13 + 24) = v80;
  sub_1000108DC(v7, v72, &qword_100635248, &unk_100516140);
  v14 = type metadata accessor for MetricsEvent.Page(0);
  v79 = *(*(v14 - 1) + 48);
  v15 = v79(v72, 1, v14);
  v16 = *(v0 + 610);
  v17 = *(v0 + 1288);
  v18 = *(v0 + 1280);
  v19 = *(v0 + 1272);
  v20 = *(v0 + 744);
  if (v15 == 1)
  {

    sub_100046F14(v75, v77);

    sub_100047EC8(v19, v18, v17, v16, SBYTE1(v16));
    sub_10001074C(v20, &qword_100635248, &unk_100516140);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v21 = *v20;
    v22 = v20[1];

    sub_100046F14(v75, v77);

    sub_100047EC8(v19, v18, v17, v16, SBYTE1(v16));

    sub_100074324(v20, type metadata accessor for MetricsEvent.Page);
  }

  v23 = *(v0 + 752);
  v24 = *(v0 + 736);
  v25 = (*(v0 + 768) + *(*(v0 + 760) + 48));
  *v25 = v21;
  v25[1] = v22;
  sub_1000108DC(v23, v24, &qword_100635248, &unk_100516140);
  v26 = v79(v24, 1, v14);
  v27 = *(v0 + 736);
  if (v26 == 1)
  {
    sub_10001074C(*(v0 + 736), &qword_100635248, &unk_100516140);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    sub_100074324(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 752);
  v31 = *(v0 + 728);
  v32 = (*(v0 + 768) + *(*(v0 + 760) + 52));
  *v32 = v28;
  v32[1] = v29;
  sub_1000108DC(v30, v31, &qword_100635248, &unk_100516140);
  if (v79(v31, 1, v14) == 1)
  {
    v33 = *(v0 + 1256);
    v34 = *(v0 + 1248);
    v35 = *(v0 + 784);
    sub_10001074C(*(v0 + 728), &qword_100635248, &unk_100516140);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 728);
    sub_1000108DC(v36 + v14[6], *(v0 + 784), &qword_100634B30, &unk_100513D70);
    sub_100074324(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 752);
  v38 = *(v0 + 720);
  sub_100047F38(*(v0 + 784), *(v0 + 768) + *(*(v0 + 760) + 56), &qword_100634B30, &unk_100513D70);
  sub_1000108DC(v37, v38, &qword_100635248, &unk_100516140);
  v39 = v79(v38, 1, v14);
  v40 = *(v0 + 720);
  if (v39 == 1)
  {
    sub_10001074C(*(v0 + 720), &qword_100635248, &unk_100516140);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v14[7]);

    sub_100074324(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 752);
  v43 = *(v0 + 712);
  *(*(v0 + 768) + *(*(v0 + 760) + 60)) = v41;
  sub_1000108DC(v42, v43, &qword_100635248, &unk_100516140);
  v44 = v79(v43, 1, v14);
  v45 = *(v0 + 712);
  if (v44 == 1)
  {
    sub_10001074C(v45, &qword_100635248, &unk_100516140);
    v46 = 1;
  }

  else
  {
    v46 = *(v45 + v14[9]);
    sub_100074324(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 752);
  v48 = *(v0 + 704);
  *(*(v0 + 768) + *(*(v0 + 760) + 64)) = v46;
  sub_1000108DC(v47, v48, &qword_100635248, &unk_100516140);
  v49 = v79(v48, 1, v14);
  v50 = *(v0 + 704);
  if (v49 == 1)
  {
    sub_10001074C(*(v0 + 704), &qword_100635248, &unk_100516140);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v53 = (v50 + v14[8]);
    v51 = *v53;
    v52 = v53[1];

    sub_100074324(v50, type metadata accessor for MetricsEvent.Page);
  }

  v54 = *(v0 + 752);
  v55 = *(v0 + 696);
  v56 = (*(v0 + 768) + *(*(v0 + 760) + 72));
  *v56 = v51;
  v56[1] = v52;
  sub_100047F38(v54, v55, &qword_100635248, &unk_100516140);
  v57 = v79(v55, 1, v14);
  v58 = *(v0 + 696);
  if (v57 == 1)
  {
    sub_10001074C(v58, &qword_100635248, &unk_100516140);
    v59 = 2;
  }

  else
  {
    v59 = *(v58 + v14[11]);
    sub_100074324(v58, type metadata accessor for MetricsEvent.Page);
  }

  v60 = *(v0 + 776);
  v61 = *(v0 + 768);
  v62 = *(v0 + 760);
  *(v61 + *(v62 + 68)) = v59;
  *(v61 + *(v62 + 44)) = v81;
  sub_100074250(v61, v60, type metadata accessor for MetricsEvent.Click);
  if (qword_100633B50 != -1)
  {
    swift_once();
  }

  v63 = *(v0 + 1288);
  v64 = *(v0 + 1280);
  v65 = *(v0 + 1272);
  v66 = *(v0 + 832);
  v67 = *(v0 + 816);
  v68 = *(v0 + 800);
  v69 = *(v0 + 776);
  v70 = *(v0 + 610);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v69, *(v66 + *(v67 + 24)), *(v66 + *(v67 + 24) + 8), *(v66 + *(v67 + 36)), *(v66 + *(v67 + 36) + 8), *(v66 + *(v67 + 36) + 16));
  sub_1000742B8(v65, v64, v63, v70, SBYTE1(v70));
  sub_100074324(v69, type metadata accessor for MetricsEvent.Click);
  sub_10001074C(v68, &qword_100634B30, &unk_100513D70);

  return _swift_task_switch(sub_100071E48, 0, 0);
}

uint64_t sub_100071E48()
{
  sub_100074324(v0[104], type metadata accessor for Actions.MetricsReportingContext);
  v1 = v0[140];
  v2 = v0[84];
  v3 = v0[80];
  sub_1001A9E7C(v2, v2);
  swift_allocObject();
  v4 = sub_1004DD89C();
  v1(v5, v3, v2);
  v6 = sub_1001720EC(v4, v2);
  v0[163] = v6;
  v0[77] = v6;
  v7 = swift_task_alloc();
  v0[164] = v7;
  v8 = sub_1004DD98C();
  WitnessTable = swift_getWitnessTable();
  *v7 = v0;
  v7[1] = sub_100071FC0;
  v10 = v0[85];
  v11 = v0[84];

  return MusicLibrary.add<A, B>(_:)(v0 + 77, v8, v11, WitnessTable, v10);
}

uint64_t sub_100071FC0(uint64_t a1)
{
  *(*v2 + 1320) = v1;

  if (v1)
  {
    v3 = sub_1000720FC;
  }

  else
  {

    v3 = sub_100074564;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000720FC()
{
  sub_10001074C(*(v0 + 1080), &qword_100635BA0, &qword_100517448);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100072350()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(*(sub_100004CB8(&qword_1006359A0, &unk_100516EE0) - 8) + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  v6 = v0 + v4;
  swift_unknownObjectWeakDestroy();
  v7 = *(v0 + v4 + 48);
  if (v7 != 255)
  {
    sub_10006A898(*(v6 + 8), *(v6 + 16), *(v6 + 24), *(v6 + 32), *(v6 + 40), v7);
  }

  if (*(v6 + 64))
  {
  }

  v8 = (v4 + v5 + 96) & ~v5;
  if (*(v6 + 80))
  {
  }

  v9 = v0 + v8;
  v10 = type metadata accessor for Actions.MetricsReportingContext(0);
  if (!(*(*(v10 - 8) + 48))(v0 + v8, 1, v10))
  {
    if (*(v9 + 8) >= 0xDuLL)
    {
    }

    v11 = v9 + *(v10 + 20);
    v12 = type metadata accessor for MetricsEvent.Page(0);
    if (!(*(*(v12 - 8) + 48))(v11, 1, v12))
    {

      v13 = *(v12 + 24);
      v14 = sub_1004D809C();
      v15 = *(v14 - 8);
      v19 = v13;
      v16 = v11 + v13;
      v17 = v14;
      if (!(*(v15 + 48))(v16, 1, v14))
      {
        (*(v15 + 8))(v11 + v19, v17);
      }
    }
  }

  return swift_deallocObject();
}

uint64_t sub_100072680()
{
  v2 = v0[2];
  v14 = v0[3];
  v3 = (*(*(v2 - 8) + 80) + 56) & ~*(*(v2 - 8) + 80);
  v4 = (*(*(v2 - 8) + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(sub_100004CB8(&qword_1006359A0, &unk_100516EE0) - 8);
  v7 = (v5 + *(v6 + 80) + 96) & ~*(v6 + 80);
  v8 = v0[5];
  v9 = v0[6];
  v10 = *(v0 + v4);
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  v11[1] = sub_100035B28;

  return sub_10006E79C(v8, v9, v0 + v3, v10, v0 + v5, v0 + v7, v2, v14);
}

uint64_t sub_100072810(uint64_t a1, void (*a2)(char *, char *, uint64_t), uint64_t *a3)
{
  v33 = a3;
  v34 = a2;
  sub_100004CB8(&qword_100635BA0, &qword_100517448);
  __chkstk_darwin();
  v4 = &v33 - v3;
  v38 = sub_1004DC6CC();
  v5 = *(v38 - 8);
  __chkstk_darwin();
  v37 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v35 = &v33 - v7;
  v8 = sub_1004DC6BC();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100004CB8(&qword_100635B38, &qword_100517318);
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v36 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v33 - v15;
  sub_1004D8C6C();
  sub_1004DCAAC();
  sub_1004DC56C();
  (*(v9 + 8))(v11, v8);
  MusicLibrary.SupportedStatus<>.unaddableReason.getter(v4);
  v17 = v38;
  if ((*(v5 + 48))(v4, 1, v38) == 1)
  {
    sub_10001074C(v4, &qword_100635BA0, &qword_100517448);
  }

  else
  {
    v18 = v35;
    v34 = *(v5 + 32);
    v34(v35, v4, v17);
    (*(v5 + 16))(v37, v18, v17);
    v19 = v33;
    v20 = *v33;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v19 = v20;
    if (isUniquelyReferenced_nonNull_native)
    {
      v22 = v19;
    }

    else
    {
      v20 = sub_10003A6CC(0, v20[2] + 1, 1, v20);
      v22 = v19;
      *v19 = v20;
    }

    v24 = v20[2];
    v23 = v20[3];
    if (v24 >= v23 >> 1)
    {
      *v22 = sub_10003A6CC((v23 > 1), v24 + 1, 1, v20);
    }

    v25 = v38;
    (*(v5 + 8))(v35, v38);
    v26 = *v22;
    *(v26 + 16) = v24 + 1;
    v34((v26 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v24), v37, v25);
  }

  v27 = v36;
  (*(v13 + 16))(v36, v16, v12);
  v28 = (*(v13 + 88))(v27, v12);
  v29 = v28;
  v30 = enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:);
  if (v28 == enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    v31 = *(v13 + 8);
    v31(v16, v12);
    v31(v27, v12);
    return v29 != v30;
  }

  if (v28 == enum case for MusicLibrary.SupportedStatus.supported<A>(_:))
  {
    (*(v13 + 8))(v16, v12);
    return v29 != v30;
  }

  result = sub_1004DF07C();
  __break(1u);
  return result;
}

uint64_t MusicLibrary.SupportedStatus<>.unaddableReason.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100004CB8(&qword_100635B38, &qword_100517318);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v20 - v6;
  v8 = sub_1004DC6AC();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin();
  v14 = &v20 - v13;
  (*(v5 + 16))(v7, v2, v4, v12);
  if ((*(v5 + 88))(v7, v4) == enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    (*(v5 + 96))(v7, v4);
    v15 = *(v9 + 32);
    v15(v14, v7, v8);
    v15(v11, v14, v8);
    if ((*(v9 + 88))(v11, v8) == enum case for MusicLibrary.AddAction.UnsupportedReason.unaddable(_:))
    {
      (*(v9 + 96))(v11, v8);
      v16 = sub_1004DC6CC();
      v17 = *(v16 - 8);
      (*(v17 + 32))(a1, v11, v16);
      return (*(v17 + 56))(a1, 0, 1, v16);
    }

    (*(v9 + 8))(v11, v8);
  }

  else
  {
    (*(v5 + 8))(v7, v4);
  }

  v19 = sub_1004DC6CC();
  return (*(*(v19 - 8) + 56))(a1, 1, 1, v19);
}

uint64_t sub_100073028(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_1004DDA4C();
  v2[4] = sub_1004DDA3C();
  v4 = sub_1004DD9BC();

  return _swift_task_switch(sub_1000730C0, v4, v3);
}

uint64_t sub_1000730C0()
{
  v1 = v0[2];

  if (v1)
  {
    v2 = v0[3];
    ObjectType = swift_getObjectType();
    (*(v2 + 16))(0, ObjectType, v2);
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_100073154()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10007318C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100035B28;

  return sub_100073028(v2, v3);
}

uint64_t sub_100073224(int *a1)
{
  v4 = (a1 + *a1);
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10007330C;

  return v4();
}

uint64_t sub_10007330C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100073404()
{

  return swift_deallocObject();
}

uint64_t sub_10007343C()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100035C88;

  return sub_100073224(v2);
}

uint64_t Actions.AddToLibrary.Context.menuItemTitle.getter()
{
  sub_1004D83FC();
  __chkstk_darwin();
  v0 = sub_1004DD3EC();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v5 = &v9[-v4];
  sub_1004DD37C();
  (*(v1 + 16))(v3, v5, v0);
  if (qword_100633A80 != -1)
  {
    swift_once();
  }

  v6 = qword_100671958;
  sub_1004D838C();
  v7 = sub_1004DD4AC();
  (*(v1 + 8))(v5, v0);
  return v7;
}

uint64_t (*Actions.AddToLibrary.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x7269632E73756C70;
  *(v0 + 24) = 0xEB00000000656C63;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x7269632E73756C70;
  *(v1 + 24) = 0xEB00000000656C63;
  return sub_100073BEC;
}

uint64_t (*Actions.AddToLibrary.Context.menuItemCompactStyleImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000010;
  *(v0 + 24) = 0x80000001004EA3D0;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD000000000000010;
  *(v1 + 24) = 0x80000001004EA3D0;
  return sub_10007455C;
}

uint64_t (*sub_100073818())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x7269632E73756C70;
  *(v0 + 24) = 0xEB00000000656C63;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x7269632E73756C70;
  *(v1 + 24) = 0xEB00000000656C63;
  return sub_10007455C;
}

uint64_t (*sub_1000738BC())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000010;
  *(v0 + 24) = 0x80000001004EA3D0;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD000000000000010;
  *(v1 + 24) = 0x80000001004EA3D0;
  return sub_10007455C;
}

Swift::Int MPCPlaybackEngine.Option.hashValue.getter(unsigned __int8 a1)
{
  sub_1004DF26C();
  sub_1004DF27C(a1);
  return sub_1004DF2BC();
}

uint64_t _s9MusicCore7ActionsO12AddToLibraryO7ContextV25menuItemCompactStyleTitleSSSgvg_0()
{
  sub_1004D83FC();
  __chkstk_darwin();
  v0 = sub_1004DD3EC();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v5 = &v9[-v4];
  sub_1004DD37C();
  (*(v1 + 16))(v3, v5, v0);
  if (qword_100633A80 != -1)
  {
    swift_once();
  }

  v6 = qword_100671958;
  sub_1004D838C();
  v7 = sub_1004DD4AC();
  (*(v1 + 8))(v5, v0);
  return v7;
}

uint64_t sub_100073BB4()
{

  return swift_deallocObject();
}

unint64_t sub_100073C00()
{
  result = qword_100635B80;
  if (!qword_100635B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100635B80);
  }

  return result;
}

uint64_t sub_100073C64(uint64_t *a1, int a2)
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

uint64_t sub_100073CAC(uint64_t result, int a2, int a3)
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

uint64_t _s17ChildrenAddStatusOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s17ChildrenAddStatusOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

BOOL sub_100073EB4(uint64_t a1, void (*a2)(char *, char *, uint64_t), uint64_t *a3)
{
  v29 = a2;
  v30 = a3;
  v28 = sub_1004DCAAC();
  v4 = *(v28 - 8);
  __chkstk_darwin();
  v27 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100004CB8(&qword_100635B50, &qword_100517330);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v24 - v8;
  v10 = sub_100004CB8(&qword_100635B40, &qword_100517320) - 8;
  v11 = __chkstk_darwin();
  v13 = &v24 - v12;
  (*(v7 + 16))(v9, a1, v6, v11);
  sub_1000744F0(&qword_100635BB8, &protocol conformance descriptor for MusicItemCollection<A>);
  sub_1004DD6FC();
  v14 = *(v10 + 44);
  sub_1000744F0(&qword_100635B58, &protocol conformance descriptor for MusicItemCollection<A>);
  v25 = (v4 + 16);
  v26 = (v4 + 8);
  do
  {
    sub_1004DDD3C();
    v15 = v32[0];
    v31 = *&v13[v14];
    if (v31 == v32[0])
    {
      break;
    }

    v16 = sub_1004DDE1C();
    v17 = v6;
    v18 = v27;
    v19 = v28;
    (*v25)(v27);
    v16(v32, 0);
    sub_1004DDD4C();
    v20 = v33;
    v21 = sub_100072810(v18, v29, v30);
    v33 = v20;
    if (v20)
    {
      (*v26)(v18, v19);
      break;
    }

    v22 = v21;
    (*v26)(v18, v19);
    v6 = v17;
  }

  while ((v22 & 1) == 0);
  sub_10001074C(v13, &qword_100635B40, &qword_100517320);
  return v31 != v15;
}

uint64_t sub_100074250(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void *sub_1000742B8(void *result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 == 3 || a5 == 2)
  {
  }

  if (a5 == 1)
  {
    return sub_1000742E4(result, a2, a3);
  }

  return result;
}

void *sub_1000742E4(void *result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100074324(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_1000743D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1000743F0()
{
  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 72);
  if (v1 != 255)
  {
    sub_10006A898(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), v1);
  }

  if (*(v0 + 88))
  {
  }

  if (*(v0 + 104))
  {
  }

  if (*(v0 + 136))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000744A0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1004DC6CC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000744F0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_100008DE4(&qword_100635B50, &qword_100517330);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double Actions.AddToPlaylist.Context.init<A, B>(item:library:presentationSource:playlistPickerPresenter:metricsReportingContext:)@<D0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v16 = sub_10007D118(a1, a3, a4, a5, a6, a7, a8, a10, v19, a11);
  (*(*(a7 - 8) + 8))(a4, a7, v16);

  (*(*(a6 - 8) + 8))(a1, a6);
  v17 = v19[1];
  *a9 = v19[0];
  a9[1] = v17;
  result = *&v20;
  a9[2] = v20;
  return result;
}

double static Actions.AddToPlaylist.action(context:)@<D0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1[1];
  *a2 = *a1;
  *(a2 + 16) = v2;
  *(a2 + 32) = a1[2];
  *(a2 + 48) = 11;
  *(a2 + 56) = sub_10006D3E4;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0x4014000000000000;
  *(a2 + 80) = &unk_100517498;
  *(a2 + 88) = 0;
  *(a2 + 96) = &unk_1005174A0;
  *(a2 + 104) = 0;

  return result;
}

double sub_100074700@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 40);
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 40) = v2;
  *(a2 + 48) = 11;
  *(a2 + 56) = sub_10006D3E4;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0x4014000000000000;
  *(a2 + 80) = &unk_100517498;
  *(a2 + 88) = 0;
  *(a2 + 96) = &unk_1005174A0;
  *(a2 + 104) = 0;

  return result;
}

uint64_t (*Actions.AddToPlaylist.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x6461622E74786574;
  *(v0 + 24) = 0xEF73756C702E6567;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x6461622E74786574;
  *(v1 + 24) = 0xEF73756C702E6567;
  return sub_100073BEC;
}

uint64_t (*sub_100074868())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x6461622E74786574;
  *(v0 + 24) = 0xEF73756C702E6567;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x6461622E74786574;
  *(v1 + 24) = 0xEF73756C702E6567;
  return sub_10007455C;
}

uint64_t Actions.AddToPlaylist.Context.init<A>(items:library:presentationSource:playlistPickerPresenter:metricsReportingContext:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t (**a8)()@<X8>)
{
  v75 = a7;
  v78 = a6;
  v79 = a5;
  v77 = a4;
  v76 = a3;
  v80 = a8;
  v95 = sub_1004DC6BC();
  v9 = *(v95 - 8);
  __chkstk_darwin();
  v94 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100004CB8(&qword_100635B38, &qword_100517318);
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v82 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v73 = &v71 - v14;
  __chkstk_darwin();
  v72 = &v71 - v15;
  __chkstk_darwin();
  v17 = &v71 - v16;
  v74 = v18;
  __chkstk_darwin();
  v99 = &v71 - v19;
  sub_100004CB8(&qword_100635BC0, &qword_1005174A8);
  __chkstk_darwin();
  v71 = &v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v22 = &v71 - v21;
  __chkstk_darwin();
  v24 = &v71 - v23;
  v25 = __chkstk_darwin();
  v27 = &v71 - v26;
  v81 = v12;
  v91 = *(v12 + 56);
  v92 = v12 + 56;
  v91(&v71 - v26, 1, 1, v11, v25);
  v96 = a1;
  v90 = *(a1 + 16);
  if (v90)
  {
    v28 = 0;
    result = v96 + 32;
    v88 = (v9 + 8);
    v86 = (v81 + 88);
    v87 = (v81 + 16);
    v93 = enum case for MusicLibrary.SupportedStatus.supported<A>(_:);
    v30 = (v81 + 8);
    v84 = (v81 + 48);
    v83 = (v81 + 32);
    v85 = v24;
    v89 = v27;
    while (v28 < *(v96 + 16))
    {
      v97 = result;
      v98 = v28;
      sub_10006A190(result, v100);
      sub_100008C70(v100, v100[3]);
      v33 = v94;
      sub_1004D8C6C();
      v34 = v30;
      v35 = v11;
      v36 = v99;
      v37 = v95;
      sub_1004DC56C();
      sub_100008D24(v100);
      (*v88)(v33, v37);
      v38 = v36;
      v11 = v35;
      v30 = v34;
      (*v87)(v17, v38, v11);
      v39 = (*v86)(v17, v11);
      v40 = *v34;
      if (v39 == v93)
      {
        v40(v99, v11);

        v40(v17, v11);
        sub_10001074C(v89, &qword_100635BC0, &qword_1005174A8);
        v44 = v81;
        v46 = v11;
        v49 = v72;
        (*(v81 + 104))(v72, v93, v11);
        goto LABEL_15;
      }

      v40(v17, v11);
      v27 = v89;
      sub_100047F38(v89, v22, &qword_100635BC0, &qword_1005174A8);
      v41 = *v84;
      if ((*v84)(v22, 1, v11) == 1)
      {
        v31 = v85;
        (*v83)(v85, v99, v11);
        v42 = v41(v22, 1, v11);
        v32 = v98;
        if (v42 != 1)
        {
          sub_10001074C(v22, &qword_100635BC0, &qword_1005174A8);
        }
      }

      else
      {
        v40(v99, v11);
        v31 = v85;
        (*v83)(v85, v22, v11);
        v32 = v98;
      }

      v28 = v32 + 1;
      (v91)(v31, 0, 1, v11);
      sub_100047F38(v31, v27, &qword_100635BC0, &qword_1005174A8);
      result = v97 + 48;
      if (v90 == v28)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:

    v43 = v71;
    sub_100047F38(v27, v71, &qword_100635BC0, &qword_1005174A8);
    v44 = v81;
    v45 = *(v81 + 48);
    v46 = v11;
    if (v45(v43, 1, v11) == 1)
    {
      v47 = enum case for MusicLibrary.AddAction.UnsupportedReason.unsupportedType(_:);
      v48 = sub_1004DC6AC();
      v49 = v72;
      (*(*(v48 - 8) + 104))(v72, v47, v48);
      (*(v44 + 104))(v49, enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:), v11);
      v50 = v45(v43, 1, v11) == 1;
      v51 = v43;
      v52 = v74;
      if (!v50)
      {
        sub_10001074C(v51, &qword_100635BC0, &qword_1005174A8);
      }
    }

    else
    {
      v49 = v72;
      (*(v44 + 32))(v72, v43, v11);
LABEL_15:
      v52 = v74;
    }

    v53 = v73;
    (*(v44 + 16))(v73, v49, v46);
    v54 = *(v44 + 80);
    v99 = swift_allocObject();
    v55 = *(v44 + 32);
    v55(&v99[(v54 + 16) & ~v54], v53, v46);
    v55(v82, v49, v46);
    v56 = (v54 + 32) & ~v54;
    v57 = (v52 + v56 + 7) & 0xFFFFFFFFFFFFFFF8;
    v58 = (v57 + 103) & 0xFFFFFFFFFFFFFFF8;
    v59 = v78;
    v60 = *(v78 - 8);
    v61 = (v58 + *(v60 + 80) + 8) & ~*(v60 + 80);
    v62 = swift_allocObject();
    v63 = v75;
    *(v62 + 16) = v59;
    *(v62 + 24) = v63;
    v55((v62 + v56), v82, v46);
    sub_10006A8BC(v76, v62 + v57);
    v64 = v96;
    *(v62 + v58) = v96;
    (*(v60 + 32))(v62 + v61, v77, v59);
    v65 = *(sub_100004CB8(&qword_1006359A0, &unk_100516EE0) - 8);
    v66 = (*(v65 + 80) + 16) & ~*(v65 + 80);
    v67 = (*(v65 + 64) + v66 + 7) & 0xFFFFFFFFFFFFFFF8;
    v68 = swift_allocObject();
    sub_100047F38(v79, v68 + v66, &qword_1006359A0, &unk_100516EE0);
    *(v68 + v67) = v64;

    v69 = v80;
    v70 = v99;
    *v80 = sub_10007D434;
    v69[1] = v70;
    v69[2] = &unk_1005174B8;
    v69[3] = v62;
    v69[4] = &unk_1005174C8;
    v69[5] = v68;
  }

  return result;
}

unint64_t sub_100075318(uint64_t a1)
{
  v2 = sub_1004DC6CC();
  v3 = *(v2 - 8);
  v51 = v2;
  v52 = v3;
  __chkstk_darwin();
  v53 = (&v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v50 = &v47 - v5;
  v6 = sub_1004DC6AC();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v47 - v10;
  v12 = sub_100004CB8(&qword_100635B38, &qword_100517318);
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v47 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v48 = &v47 - v15;
  v16 = __chkstk_darwin();
  v18 = &v47 - v17;
  v19 = *(v13 + 16);
  v49 = a1;
  v19(&v47 - v17, a1, v12, v16);
  v20 = (*(v13 + 88))(v18, v12);
  if (v20 != enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    if (v20 != enum case for MusicLibrary.SupportedStatus.supported<A>(_:))
    {
      if (qword_100633A88 != -1)
      {
        swift_once();
      }

      v29 = sub_1004D966C();
      sub_100035430(v29, static Logger.actions);
      v30 = v48;
      (v19)(v48, v49, v12);
      v31 = sub_1004D964C();
      v32 = sub_1004DDF8C();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v54 = v53;
        *v33 = 136315138;
        LODWORD(v52) = v32;
        (v19)(v47, v30, v12);
        v34 = sub_1004DD4DC();
        v36 = v35;
        v37 = *(v13 + 8);
        v37(v30, v12);
        v38 = sub_1000343A8(v34, v36, &v54);

        *(v33 + 4) = v38;
        _os_log_impl(&_mh_execute_header, v31, v52, "Unknown status=%s", v33, 0xCu);
        sub_100008D24(v53);
      }

      else
      {

        v37 = *(v13 + 8);
        v37(v30, v12);
      }

      v28 = 0x206E776F6E6B6E55;
      v37(v18, v12);
      return v28;
    }

    return 0;
  }

  (*(v13 + 96))(v18, v12);
  (*(v7 + 32))(v11, v18, v6);
  (*(v7 + 16))(v9, v11, v6);
  v21 = (*(v7 + 88))(v9, v6);
  if (v21 != enum case for MusicLibrary.AddAction.UnsupportedReason.unaddable(_:))
  {
    if (v21 == enum case for MusicLibrary.AddAction.UnsupportedReason.unsupportedType(_:))
    {
      v28 = 0xD000000000000010;
      (*(v7 + 8))(v11, v6);
      return v28;
    }

    if (v21 == enum case for MusicLibrary.AddAction.UnsupportedReason.alreadyAdded(_:))
    {
      goto LABEL_27;
    }

    v39 = enum case for MusicLibrary.AddAction.UnsupportedReason.networkRequired(_:);
    v40 = *(v7 + 8);
    v41 = v21;
    v40(v11, v6);
    if (v41 != v39)
    {
      v28 = 0x206E776F6E6B6E55;
      v40(v9, v6);
      return v28;
    }

    return 0;
  }

  (*(v7 + 96))(v9, v6);
  v22 = v52;
  v23 = v50;
  v24 = v9;
  v25 = v51;
  (*(v52 + 32))(v50, v24, v51);
  v26 = v53;
  (*(v22 + 16))(v53, v23, v25);
  v27 = (*(v22 + 88))(v26, v25);
  if (v27 == enum case for MusicLibrary.AddStatus.UnaddableReason.allExplicitContentRestricted(_:) || v27 == enum case for MusicLibrary.AddStatus.UnaddableReason.cloudLibraryRequired(_:))
  {
    goto LABEL_26;
  }

  if (v27 == enum case for MusicLibrary.AddStatus.UnaddableReason.cloudLibraryInitialImport(_:))
  {
    (*(v22 + 8))(v23, v25);
    (*(v7 + 8))(v11, v6);
    return 0xD00000000000001CLL;
  }

  if (v27 == enum case for MusicLibrary.AddStatus.UnaddableReason.libraryAddIneligibleContent(_:))
  {
    (*(v22 + 8))(v23, v25);
    (*(v7 + 8))(v11, v6);
    return 0xD00000000000001ELL;
  }

  if (v27 == enum case for MusicLibrary.AddStatus.UnaddableReason.invalidContentType(_:))
  {
    (*(v22 + 8))(v23, v25);
    (*(v7 + 8))(v11, v6);
    return 0xD000000000000014;
  }

  if (v27 == enum case for MusicLibrary.AddStatus.UnaddableReason.subscriptionAccountLinkingRequired(_:))
  {
    (*(v22 + 8))(v23, v25);
    (*(v7 + 8))(v11, v6);
    return 0xD000000000000025;
  }

  if (v27 == enum case for MusicLibrary.AddStatus.UnaddableReason.subscriptionRequired(_:))
  {
LABEL_26:
    (*(v22 + 8))(v23, v25);
LABEL_27:
    (*(v7 + 8))(v11, v6);
    return 0;
  }

  if (v27 == enum case for MusicLibrary.AddStatus.UnaddableReason.sharedLibrary(_:))
  {
    (*(v22 + 8))(v23, v25);
    (*(v7 + 8))(v11, v6);
    return 0xD000000000000016;
  }

  else
  {
    v28 = 0x206E776F6E6B6E55;
    v43 = enum case for MusicLibrary.AddStatus.UnaddableReason.unknown(_:);
    v44 = v23;
    v45 = *(v22 + 8);
    v46 = v27;
    v45(v44, v25);
    (*(v7 + 8))(v11, v6);
    if (v46 != v43)
    {
      v45(v53, v25);
    }
  }

  return v28;
}

uint64_t sub_100075C84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[72] = a6;
  v6[71] = a5;
  v6[70] = a4;
  v6[69] = a3;
  v6[68] = a2;
  v6[67] = a1;
  v7 = sub_1004DC81C();
  v6[73] = v7;
  v6[74] = *(v7 - 8);
  v6[75] = swift_task_alloc();
  v6[76] = sub_100004CB8(&qword_100635C38, &qword_100517568);
  v6[77] = swift_task_alloc();
  sub_100004CB8(&qword_100635C40, &qword_100517570);
  v6[78] = swift_task_alloc();
  v6[79] = swift_task_alloc();
  v6[80] = swift_task_alloc();
  v8 = sub_1004DCAAC();
  v6[81] = v8;
  v6[82] = *(v8 - 8);
  v6[83] = swift_task_alloc();
  v6[84] = sub_100004CB8(&qword_100635B40, &qword_100517320);
  v6[85] = swift_task_alloc();
  sub_100004CB8(&qword_100635B48, &qword_100517328);
  v6[86] = swift_task_alloc();
  v9 = sub_100004CB8(&qword_100635B50, &qword_100517330);
  v6[87] = v9;
  v6[88] = *(v9 - 8);
  v6[89] = swift_task_alloc();
  v6[90] = swift_task_alloc();
  v6[91] = swift_task_alloc();
  sub_100004CB8(&qword_100635BA0, &qword_100517448);
  v6[92] = swift_task_alloc();
  v10 = sub_1004DC6CC();
  v6[93] = v10;
  v6[94] = *(v10 - 8);
  v6[95] = swift_task_alloc();
  v6[96] = swift_task_alloc();
  v6[97] = swift_task_alloc();

  return _swift_task_switch(sub_100075FE0, 0, 0);
}

uint64_t sub_100075FE0()
{
  v104 = v0;
  v1 = *(v0 + 752);
  v2 = *(v0 + 744);
  v3 = *(v0 + 736);
  MusicLibrary.SupportedStatus<>.unaddableReason.getter(v3);
  if ((*(v1 + 48))(v3, 1, v2) != 1)
  {
    v11 = *(v0 + 776);
    v12 = *(v0 + 768);
    v13 = *(v0 + 752);
    v14 = *(v0 + 744);
    (*(v13 + 32))(v11, *(v0 + 736), v14);
    v15 = *(v13 + 16);
    v15(v12, v11, v14);
    v16 = (*(v13 + 88))(v12, v14);
    if (v16 != enum case for MusicLibrary.AddStatus.UnaddableReason.allExplicitContentRestricted(_:))
    {
      if (v16 != enum case for MusicLibrary.AddStatus.UnaddableReason.cloudLibraryRequired(_:))
      {
        if (v16 == enum case for MusicLibrary.AddStatus.UnaddableReason.subscriptionRequired(_:))
        {
          v35 = *(v0 + 776);
          v36 = *(v0 + 752);
          v37 = *(v0 + 744);
          *(v0 + 448) = 0u;
          *(v0 + 464) = 0u;
          *(v0 + 480) = 0;
          *(v0 + 488) = -2;
          _s9MusicCore27SubscriptionUpsellPresenterV7present3foryAC9PlacementO_tFZ_0(v0 + 448);
          sub_1000741FC(v0 + 448);
          (*(v36 + 8))(v35, v37);
        }

        else
        {
          if (qword_100633A88 != -1)
          {
            swift_once();
          }

          v42 = *(v0 + 776);
          v43 = *(v0 + 760);
          v44 = *(v0 + 744);
          v45 = sub_1004D966C();
          sub_100035430(v45, static Logger.actions);
          v15(v43, v42, v44);
          v46 = sub_1004D964C();
          v47 = sub_1004DDF8C();
          v48 = os_log_type_enabled(v46, v47);
          v49 = *(v0 + 776);
          v50 = *(v0 + 760);
          v51 = *(v0 + 752);
          v52 = *(v0 + 744);
          if (v48)
          {
            v102 = *(v0 + 776);
            v53 = swift_slowAlloc();
            v97 = swift_slowAlloc();
            v103 = v97;
            *v53 = 136315138;
            sub_10007DB98(&qword_100635B88, &type metadata accessor for MusicLibrary.AddStatus.UnaddableReason, &protocol conformance descriptor for MusicLibrary.AddStatus.UnaddableReason);
            v54 = sub_1004DEFFC();
            v56 = v55;
            v57 = *(v51 + 8);
            v57(v50, v52);
            v58 = sub_1000343A8(v54, v56, &v103);

            *(v53 + 4) = v58;
            _os_log_impl(&_mh_execute_header, v46, v47, "Unhandled unaddableReason=%s", v53, 0xCu);
            sub_100008D24(v97);

            v59 = v102;
          }

          else
          {

            v57 = *(v51 + 8);
            v57(v50, v52);
            v59 = v49;
          }

          v57(v59, v52);
          v57(*(v0 + 768), *(v0 + 744));
        }

LABEL_43:

        v83 = *(v0 + 8);

        return v83();
      }

      *(v0 + 816) = sub_1004DDA4C();
      *(v0 + 824) = sub_1004DDA3C();
      v21 = sub_1004DD9BC();
      v23 = v22;
      *(v0 + 832) = v21;
      *(v0 + 840) = v22;
      v24 = sub_100077264;
      v25 = v21;
LABEL_22:

      return _swift_task_switch(v24, v25, v23);
    }

    *(v0 + 792) = sub_1004DDA4C();
    *(v0 + 800) = sub_1004DDA3C();
    v17 = sub_1004DD9BC();
    v19 = v18;
    v20 = sub_100076D28;
LABEL_21:
    v24 = v20;
    v25 = v17;
    v23 = v19;
    goto LABEL_22;
  }

  v4 = *(v0 + 552);
  sub_10001074C(*(v0 + 736), &qword_100635BA0, &qword_100517448);
  sub_1004DC06C();
  v5 = *(v4 + 16);
  *(v0 + 784) = v5;
  if (v5)
  {
    v6 = *(v0 + 552);
    *(v0 + 872) = 0;
    v7 = *(v6 + 56);
    sub_100008C70((v6 + 32), v7);
    v8 = swift_task_alloc();
    *(v0 + 880) = v8;
    *v8 = v0;
    v8[1] = sub_100077540;
    v9 = *(v0 + 688);

    return MusicPlaylistAddable.tracks.getter(v9, v7);
  }

  if (qword_100634468 != -1)
  {
    swift_once();
  }

  if (ExplicitRestrictionsController.explicitContentIsAllowed.getter())
  {
    if (!*(v0 + 784))
    {
      goto LABEL_42;
    }

    goto LABEL_14;
  }

  v38 = *(v0 + 680);
  v39 = *(v0 + 672);
  (*(*(v0 + 704) + 16))(*(v0 + 712), *(v0 + 728), *(v0 + 696));
  sub_1000744F0(&qword_100635BB8, &protocol conformance descriptor for MusicItemCollection<A>);
  sub_1004DD6FC();
  v40 = *(v39 + 36);
  sub_1000744F0(&qword_100635B58, &protocol conformance descriptor for MusicItemCollection<A>);
  sub_1004DDD3C();
  v101 = v40;
  if (*(v38 + v40) == *(v0 + 528))
  {
LABEL_20:
    sub_10001074C(*(v0 + 680), &qword_100635B40, &qword_100517320);
    *(v0 + 888) = sub_1004DDA4C();
    *(v0 + 896) = sub_1004DDA3C();
    v17 = sub_1004DD9BC();
    v19 = v41;
    v20 = sub_100078074;
    goto LABEL_21;
  }

  v60 = *(v0 + 656);
  v94 = *(v0 + 608);
  v93 = (v60 + 16);
  v61 = *(v0 + 592);
  v91 = (v61 + 56);
  v92 = (v61 + 104);
  v84 = (v61 + 32);
  v86 = (v61 + 8);
  v87 = v38;
  v89 = (v60 + 8);
  v90 = (v61 + 48);
  v88 = enum case for ContentRating.clean(_:);
  while (1)
  {
    v66 = *(v0 + 664);
    v98 = *(v0 + 640);
    v67 = *(v0 + 632);
    v95 = *(v0 + 616);
    v68 = *(v0 + 584);
    v69 = sub_1004DDE1C();
    (*v93)(v66);
    v69(v0 + 496, 0);
    sub_1004DDD4C();
    sub_1004DCA7C();
    (*v92)(v67, v88, v68);
    (*v91)(v67, 0, 1, v68);
    v70 = *(v94 + 48);
    sub_1000108DC(v98, v95, &qword_100635C40, &qword_100517570);
    sub_1000108DC(v67, v95 + v70, &qword_100635C40, &qword_100517570);
    v71 = *v90;
    if ((*v90)(v95, 1, v68) == 1)
    {
      break;
    }

    v72 = *(v0 + 584);
    sub_1000108DC(*(v0 + 616), *(v0 + 624), &qword_100635C40, &qword_100517570);
    v73 = v71(v95 + v70, 1, v72);
    v74 = *(v0 + 664);
    v75 = *(v0 + 648);
    v76 = *(v0 + 640);
    v77 = *(v0 + 632);
    v78 = *(v0 + 624);
    if (v73 == 1)
    {
      v79 = *(v0 + 584);
      sub_10001074C(*(v0 + 632), &qword_100635C40, &qword_100517570);
      sub_10001074C(v76, &qword_100635C40, &qword_100517570);
      (*v89)(v74, v75);
      (*v86)(v78, v79);
      goto LABEL_31;
    }

    v99 = *(v0 + 616);
    v80 = *(v0 + 600);
    v81 = *(v0 + 584);
    (*v84)(v80, v95 + v70, v81);
    sub_10007DB98(&qword_100635C48, &type metadata accessor for ContentRating, &protocol conformance descriptor for ContentRating);
    v85 = sub_1004DD35C();
    v82 = *v86;
    (*v86)(v80, v81);
    sub_10001074C(v77, &qword_100635C40, &qword_100517570);
    sub_10001074C(v76, &qword_100635C40, &qword_100517570);
    (*v89)(v74, v75);
    v82(v78, v81);
    sub_10001074C(v99, &qword_100635C40, &qword_100517570);
    if (v85)
    {
      goto LABEL_41;
    }

LABEL_32:
    sub_1004DDD3C();
    if (*(v87 + v101) == *(v0 + 528))
    {
      goto LABEL_20;
    }
  }

  v62 = *(v0 + 664);
  v63 = *(v0 + 648);
  v64 = *(v0 + 640);
  v65 = *(v0 + 584);
  sub_10001074C(*(v0 + 632), &qword_100635C40, &qword_100517570);
  sub_10001074C(v64, &qword_100635C40, &qword_100517570);
  (*v89)(v62, v63);
  if (v71(v95 + v70, 1, v65) != 1)
  {
LABEL_31:
    sub_10001074C(*(v0 + 616), &qword_100635C38, &qword_100517568);
    goto LABEL_32;
  }

  sub_10001074C(*(v0 + 616), &qword_100635C40, &qword_100517570);
LABEL_41:
  sub_10001074C(*(v0 + 680), &qword_100635B40, &qword_100517320);
  if (!*(v0 + 784))
  {
LABEL_42:
    (*(*(v0 + 704) + 8))(*(v0 + 728), *(v0 + 696));
    goto LABEL_43;
  }

LABEL_14:
  v100 = *(v0 + 576);
  v26 = *(v0 + 552);
  v28 = v26[7];
  v27 = v26[8];
  v29 = v26[9];
  v30 = sub_100008C70(v26 + 4, v28);
  v96 = (*(v100 + 8) + **(v100 + 8));
  v31 = swift_task_alloc();
  *(v0 + 912) = v31;
  *v31 = v0;
  v31[1] = sub_1000785B0;
  v32 = *(v0 + 576);
  v33 = *(v0 + 568);
  v34 = *(v0 + 728);

  return v96(v34, v30, v28, v27, v29, v33, v32);
}

uint64_t sub_100076D28()
{

  sub_1001362BC(0, v0 + 280);

  return _swift_task_switch(sub_100076D9C, 0, 0);
}

uint64_t sub_100076D9C(uint64_t a1)
{
  *(v1 + 808) = sub_1004DDA3C();
  v3 = sub_1004DD9BC();

  return _swift_task_switch(sub_100076E28, v3, v2);
}

uint64_t sub_100076E28()
{
  v1 = *(v0 + 544);

  v2 = sub_1000EA900((v0 + 280), 0, 1);
  v3 = v2;
  v4 = *(v0 + 312);
  v5 = *(v1 + 80);
  if (v5)
  {
    v6 = *(v1 + 88);
    v7 = qword_100633E08;

    if (v7 != -1)
    {
      swift_once();
    }

    v8 = sub_1004D966C();
    sub_100035430(v8, qword_10063B820);
    v9 = sub_1004D964C();
    v10 = sub_1004DDF9C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Deferring presentation…", v11, 2u);
    }

    v12 = *(v0 + 544);

    v13 = objc_allocWithZone(MSVBlockGuard);
    *(v0 + 432) = sub_100257E18;
    *(v0 + 440) = 0;
    *(v0 + 400) = _NSConcreteStackBlock;
    *(v0 + 408) = 1107296256;
    *(v0 + 416) = sub_100258DB8;
    *(v0 + 424) = &unk_1005D71F8;
    v14 = _Block_copy((v0 + 400));
    v15 = [v13 initWithTimeout:v14 interruptionHandler:10.0];
    _Block_release(v14);

    sub_1000699E8(v12, v0 + 112);
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    sub_10006A8BC(v0 + 112, v16 + 24);
    *(v16 + 120) = v3;
    *(v16 + 128) = v4;
    *(v16 + 129) = 1;
    *(v16 + 136) = 0;
    *(v16 + 144) = 0;
    v17 = v15;
    v18 = v3;
    v5(v12, v18, sub_10007DCE4, v16);
    sub_10000DE74(v5, v6);

    sub_100074384(v0 + 280);
    v19 = sub_100077110;
  }

  else
  {
    sub_1002562F8(v2, *(v0 + 312), 1, 0, 0);

    sub_100074384(v0 + 280);
    v19 = sub_10007DCDC;
  }

  return _swift_task_switch(v19, 0, 0);
}

uint64_t sub_100077110()
{
  (*(v0[94] + 8))(v0[97], v0[93]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100077264(uint64_t a1)
{
  v2 = v1[68];
  v3 = sub_1004DDA3C();
  v1[106] = v3;
  v4 = swift_task_alloc();
  v1[107] = v4;
  *(v4 + 16) = 2;
  *(v4 + 24) = v2;
  *(v4 + 32) = 0;
  v5 = swift_task_alloc();
  v1[108] = v5;
  *v5 = v1;
  v5[1] = sub_100077378;

  return withCheckedContinuation<A>(isolation:function:_:)(v1 + 489, v3, &protocol witness table for MainActor, 0xD00000000000003DLL, 0x80000001004EA4A0, sub_1000744E4, v4, &type metadata for Bool);
}

uint64_t sub_100077378()
{
  v1 = *v0;

  v2 = *(v1 + 840);
  v3 = *(v1 + 832);

  return _swift_task_switch(sub_1000774D8, v3, v2);
}

uint64_t sub_1000774D8()
{

  return _swift_task_switch(sub_10007DCDC, 0, 0);
}

uint64_t sub_100077540()
{

  return _swift_task_switch(sub_10007763C, 0, 0);
}

uint64_t sub_10007763C()
{
  v1 = v0[88];
  v2 = v0[87];
  v3 = v0[86];
  v4 = *(v1 + 48);
  if (v4(v3, 1, v2) == 1)
  {
    sub_1004DC06C();
    if (v4(v3, 1, v2) != 1)
    {
      sub_10001074C(v0[86], &qword_100635B48, &qword_100517328);
    }
  }

  else
  {
    (*(v1 + 32))(v0[90], v3, v2);
  }

  v5 = v0[98];
  v6 = v0[90];
  v7 = v0[88];
  v8 = v0[87];
  v9 = v0[109] + 1;
  sub_1004DC08C();
  (*(v7 + 8))(v6, v8);
  if (v9 == v5)
  {
    if (qword_100634468 != -1)
    {
      swift_once();
    }

    if (ExplicitRestrictionsController.explicitContentIsAllowed.getter())
    {
      if (!v0[98])
      {
        goto LABEL_31;
      }

      goto LABEL_10;
    }

    v25 = v0[85];
    v26 = v0[84];
    (*(v0[88] + 16))(v0[89], v0[91], v0[87]);
    sub_1000744F0(&qword_100635BB8, &protocol conformance descriptor for MusicItemCollection<A>);
    sub_1004DD6FC();
    v27 = *(v26 + 36);
    sub_1000744F0(&qword_100635B58, &protocol conformance descriptor for MusicItemCollection<A>);
    sub_1004DDD3C();
    v70 = v27;
    if (*(v25 + v27) == v0[66])
    {
LABEL_17:
      sub_10001074C(v0[85], &qword_100635B40, &qword_100517320);
      v0[111] = sub_1004DDA4C();
      v0[112] = sub_1004DDA3C();
      v29 = sub_1004DD9BC();

      return _swift_task_switch(sub_100078074, v29, v28);
    }

    v30 = v0[82];
    v64 = v0[76];
    v63 = (v30 + 16);
    v31 = v0[74];
    v61 = (v31 + 56);
    v62 = (v31 + 104);
    v54 = (v31 + 32);
    v56 = (v31 + 8);
    v57 = v25;
    v59 = (v30 + 8);
    v60 = (v31 + 48);
    v58 = enum case for ContentRating.clean(_:);
    while (1)
    {
      v36 = v0[83];
      v37 = v0[79];
      v65 = v0[77];
      v67 = v0[80];
      v38 = v0[73];
      v39 = sub_1004DDE1C();
      (*v63)(v36);
      v39(v0 + 62, 0);
      sub_1004DDD4C();
      sub_1004DCA7C();
      (*v62)(v37, v58, v38);
      (*v61)(v37, 0, 1, v38);
      v40 = *(v64 + 48);
      sub_1000108DC(v67, v65, &qword_100635C40, &qword_100517570);
      sub_1000108DC(v37, v65 + v40, &qword_100635C40, &qword_100517570);
      v41 = *v60;
      if ((*v60)(v65, 1, v38) == 1)
      {
        break;
      }

      v42 = v0[73];
      sub_1000108DC(v0[77], v0[78], &qword_100635C40, &qword_100517570);
      v43 = v41(v65 + v40, 1, v42);
      v44 = v0[83];
      v45 = v0[81];
      v46 = v0[80];
      v47 = v0[79];
      v48 = v0[78];
      if (v43 == 1)
      {
        v49 = v0[73];
        sub_10001074C(v0[79], &qword_100635C40, &qword_100517570);
        sub_10001074C(v46, &qword_100635C40, &qword_100517570);
        (*v59)(v44, v45);
        (*v56)(v48, v49);
LABEL_22:
        sub_10001074C(v0[77], &qword_100635C38, &qword_100517568);
        goto LABEL_23;
      }

      v68 = v0[77];
      v50 = v0[75];
      v51 = v0[73];
      (*v54)(v50, v65 + v40, v51);
      sub_10007DB98(&qword_100635C48, &type metadata accessor for ContentRating, &protocol conformance descriptor for ContentRating);
      v55 = sub_1004DD35C();
      v52 = *v56;
      (*v56)(v50, v51);
      sub_10001074C(v47, &qword_100635C40, &qword_100517570);
      sub_10001074C(v46, &qword_100635C40, &qword_100517570);
      (*v59)(v44, v45);
      v52(v48, v51);
      sub_10001074C(v68, &qword_100635C40, &qword_100517570);
      if (v55)
      {
        goto LABEL_30;
      }

LABEL_23:
      sub_1004DDD3C();
      if (*(v57 + v70) == v0[66])
      {
        goto LABEL_17;
      }
    }

    v32 = v0[83];
    v33 = v0[81];
    v34 = v0[80];
    v35 = v0[73];
    sub_10001074C(v0[79], &qword_100635C40, &qword_100517570);
    sub_10001074C(v34, &qword_100635C40, &qword_100517570);
    (*v59)(v32, v33);
    if (v41(v65 + v40, 1, v35) == 1)
    {
      sub_10001074C(v0[77], &qword_100635C40, &qword_100517570);
LABEL_30:
      sub_10001074C(v0[85], &qword_100635B40, &qword_100517320);
      if (!v0[98])
      {
LABEL_31:
        (*(v0[88] + 8))(v0[91], v0[87]);

        v53 = v0[1];

        return v53();
      }

LABEL_10:
      v69 = v0[72];
      v10 = v0[69];
      v12 = v10[7];
      v11 = v10[8];
      v13 = v10[9];
      v14 = sub_100008C70(v10 + 4, v12);
      v66 = (*(v69 + 8) + **(v69 + 8));
      v15 = swift_task_alloc();
      v0[114] = v15;
      *v15 = v0;
      v15[1] = sub_1000785B0;
      v16 = v0[72];
      v17 = v0[71];
      v18 = v0[91];

      return v66(v18, v14, v12, v11, v13, v17, v16);
    }

    goto LABEL_22;
  }

  v20 = v0[109];
  v0[109] = v20 + 1;
  v21 = v0[69] + 48 * v20;
  v22 = *(v21 + 104);
  sub_100008C70((v21 + 80), v22);
  v23 = swift_task_alloc();
  v0[110] = v23;
  *v23 = v0;
  v23[1] = sub_100077540;
  v24 = v0[86];

  return MusicPlaylistAddable.tracks.getter(v24, v22);
}

uint64_t sub_100078074()
{

  sub_1001362BC(0, v0 + 208);

  return _swift_task_switch(sub_1000780E8, 0, 0);
}

uint64_t sub_1000780E8(uint64_t a1)
{
  *(v1 + 904) = sub_1004DDA3C();
  v3 = sub_1004DD9BC();

  return _swift_task_switch(sub_100078174, v3, v2);
}

uint64_t sub_100078174()
{
  v1 = *(v0 + 544);

  v2 = sub_1000EA900((v0 + 208), 0, 1);
  v3 = v2;
  v4 = *(v0 + 240);
  v5 = *(v1 + 80);
  if (v5)
  {
    v6 = *(v1 + 88);
    v7 = qword_100633E08;

    if (v7 != -1)
    {
      swift_once();
    }

    v8 = sub_1004D966C();
    sub_100035430(v8, qword_10063B820);
    v9 = sub_1004D964C();
    v10 = sub_1004DDF9C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Deferring presentation…", v11, 2u);
    }

    v12 = *(v0 + 544);

    v13 = objc_allocWithZone(MSVBlockGuard);
    *(v0 + 384) = sub_100257E18;
    *(v0 + 392) = 0;
    *(v0 + 352) = _NSConcreteStackBlock;
    *(v0 + 360) = 1107296256;
    *(v0 + 368) = sub_100258DB8;
    *(v0 + 376) = &unk_1005D71A8;
    v14 = _Block_copy((v0 + 352));
    v15 = [v13 initWithTimeout:v14 interruptionHandler:10.0];
    _Block_release(v14);

    sub_1000699E8(v12, v0 + 16);
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    sub_10006A8BC(v0 + 16, v16 + 24);
    *(v16 + 120) = v3;
    *(v16 + 128) = v4;
    *(v16 + 129) = 1;
    *(v16 + 136) = 0;
    *(v16 + 144) = 0;
    v17 = v15;
    v18 = v3;
    v5(v12, v18, sub_10007DB94, v16);
    sub_10000DE74(v5, v6);

    sub_100074384(v0 + 208);
    v19 = sub_10007845C;
  }

  else
  {
    sub_1002562F8(v2, *(v0 + 240), 1, 0, 0);

    sub_100074384(v0 + 208);
    v19 = sub_10007DCCC;
  }

  return _swift_task_switch(v19, 0, 0);
}

uint64_t sub_10007845C()
{
  (*(v0[88] + 8))(v0[91], v0[87]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1000785B0()
{

  return _swift_task_switch(sub_10007DCCC, 0, 0);
}

uint64_t MusicPlaylistAddable.tracks.getter(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v5 = sub_1004DCF8C();
  v3[6] = v5;
  v3[7] = *(v5 - 8);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  sub_100004CB8(&qword_100635BC8, &unk_10051B9C0);
  v3[10] = swift_task_alloc();
  v6 = sub_1004DD01C();
  v3[11] = v6;
  v3[12] = *(v6 - 8);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  sub_100004CB8(&qword_100635BD0, &qword_1005174D8);
  v3[15] = swift_task_alloc();
  v7 = sub_1004DCAAC();
  v3[16] = v7;
  v3[17] = *(v7 - 8);
  v3[18] = swift_task_alloc();
  sub_100004CB8(&qword_100635BD8, &qword_100518CB0);
  v3[19] = swift_task_alloc();
  v8 = sub_1004DC2DC();
  v3[20] = v8;
  v3[21] = *(v8 - 8);
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  sub_100004CB8(&qword_100635BE0, &qword_100518D80);
  v3[24] = swift_task_alloc();
  v9 = sub_1004DC95C();
  v3[25] = v9;
  v3[26] = *(v9 - 8);
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v10 = sub_100004CB8(&qword_100635B50, &qword_100517330);
  v3[29] = v10;
  v3[30] = *(v10 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  sub_100004CB8(&qword_100635B48, &qword_100517328);
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  sub_100004CB8(&qword_100637A00, &qword_100518D00);
  v3[36] = swift_task_alloc();
  v11 = sub_1004DD05C();
  v3[37] = v11;
  v3[38] = *(v11 - 8);
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  sub_100004CB8(&qword_100635B98, &qword_100517440);
  v3[42] = swift_task_alloc();
  v3[43] = *(a2 - 8);
  v3[44] = swift_task_alloc();
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();
  v3[47] = swift_task_alloc();
  v3[48] = swift_task_alloc();
  v3[49] = swift_task_alloc();
  v3[50] = swift_task_alloc();
  v3[51] = swift_task_alloc();
  v12 = sub_1004DCA0C();
  v3[52] = v12;
  v3[53] = *(v12 - 8);
  v3[54] = swift_task_alloc();
  v3[55] = swift_task_alloc();

  return _swift_task_switch(sub_100078CA8, 0, 0);
}

uint64_t sub_100078CA8()
{
  v150 = v0;
  v1 = v0[53];
  v2 = v0[51];
  v3 = v0[43];
  v5 = v0[4];
  v4 = v0[5];
  v6 = *(v3 + 16);
  v0[56] = v6;
  v0[57] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v145 = v6;
  v6(v2, v4, v5);
  v7 = swift_dynamicCast();
  v8 = *(v1 + 56);
  if (v7)
  {
    v9 = v0[55];
    v10 = v0[52];
    v11 = v0[53];
    v12 = v0[42];
    v8(v12, 0, 1, v10);
    (*(v11 + 32))(v9, v12, v10);
    sub_100004CB8(&qword_1006379A0, &unk_100518BF0);
    v13 = swift_allocObject();
    v0[58] = v13;
    *(v13 + 16) = xmmword_100511AB0;
    sub_100004CB8(&qword_100635C08, &qword_1005174F0);
    *(v13 + 32) = sub_1004DBFFC();
    v14 = swift_task_alloc();
    v0[59] = v14;
    v15 = sub_10007DB98(&qword_100635C10, &type metadata accessor for Album, &protocol conformance descriptor for Album);
    *v14 = v0;
    v14[1] = sub_100079CB8;
    v16 = v0[54];
    v17 = v0[52];

    return MusicItem<>.with(_:)(v16, v13, v17, &protocol witness table for Album, &protocol witness table for Album, v15);
  }

  v18 = v0[50];
  v19 = v0[42];
  v20 = v0[38];
  v22 = v0[4];
  v21 = v0[5];
  v8(v19, 1, 1, v0[52]);
  sub_10001074C(v19, &qword_100635B98, &qword_100517440);
  v145(v18, v21, v22);
  v23 = swift_dynamicCast();
  v24 = *(v20 + 56);
  if (v23)
  {
    v25 = v0[41];
    v26 = v0[37];
    v27 = v0[38];
    v28 = v0[36];
    v24(v28, 0, 1, v26);
    (*(v27 + 32))(v25, v28, v26);
    v0[61] = sub_100004CB8(&qword_1006379A0, &unk_100518BF0);
    v29 = swift_allocObject();
    v0[62] = v29;
    *(v29 + 16) = xmmword_100511AB0;
    v0[63] = sub_100004CB8(&qword_100635BF8, &qword_1005174E8);
    *(v29 + 32) = sub_1004DC00C();
    v30 = swift_task_alloc();
    v0[64] = v30;
    *v30 = v0;
    v30[1] = sub_10007A018;
    v31 = v0[40];
    v32 = v0[37];

    return dispatch thunk of MusicPropertyContainer.with(_:)(v31, v29, v32, &protocol witness table for Playlist);
  }

  v33 = v0[49];
  v34 = v0[36];
  v35 = v0[26];
  v37 = v0[4];
  v36 = v0[5];
  v24(v34, 1, 1, v0[37]);
  sub_10001074C(v34, &qword_100637A00, &qword_100518D00);
  v145(v33, v36, v37);
  v38 = swift_dynamicCast();
  v39 = *(v35 + 56);
  if (v38)
  {
    v40 = v0[30];
    v146 = v0[29];
    v41 = v0[28];
    v42 = v0[25];
    v43 = v0[26];
    v44 = v0[24];
    v46 = v0[16];
    v45 = v0[17];
    v47 = v0[3];
    v39(v44, 0, 1, v42);
    (*(v43 + 32))(v41, v44, v42);
    sub_100004CB8(&qword_100635BF0, &qword_1005174E0);
    v48 = (*(v45 + 80) + 32) & ~*(v45 + 80);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_100511DA0;
    (*(v43 + 16))(v49 + v48, v41, v42);
    (*(v45 + 104))(v49 + v48, enum case for Track.song(_:), v46);
    sub_1004DC06C();
    (*(v43 + 8))(v41, v42);
LABEL_13:
    (*(v40 + 56))(v47, 0, 1, v146);
    goto LABEL_14;
  }

  v50 = v0[48];
  v51 = v0[24];
  v52 = v0[21];
  v54 = v0[4];
  v53 = v0[5];
  v39(v51, 1, 1, v0[25]);
  sub_10001074C(v51, &qword_100635BE0, &qword_100518D80);
  v145(v50, v53, v54);
  v55 = swift_dynamicCast();
  v56 = *(v52 + 56);
  if (v55)
  {
    v40 = v0[30];
    v146 = v0[29];
    v57 = v0[23];
    v58 = v0[20];
    v59 = v0[21];
    v60 = v0[19];
    v62 = v0[16];
    v61 = v0[17];
    v47 = v0[3];
    v56(v60, 0, 1, v58);
    (*(v59 + 32))(v57, v60, v58);
    sub_100004CB8(&qword_100635BF0, &qword_1005174E0);
    v63 = (*(v61 + 80) + 32) & ~*(v61 + 80);
    v64 = swift_allocObject();
    *(v64 + 16) = xmmword_100511DA0;
    (*(v59 + 16))(v64 + v63, v57, v58);
    (*(v61 + 104))(v64 + v63, enum case for Track.musicVideo(_:), v62);
    sub_1004DC06C();
    (*(v59 + 8))(v57, v58);
    goto LABEL_13;
  }

  v66 = v0[47];
  v67 = v0[19];
  v68 = v0[17];
  v70 = v0[4];
  v69 = v0[5];
  v56(v67, 1, 1, v0[20]);
  sub_10001074C(v67, &qword_100635BD8, &qword_100518CB0);
  v145(v66, v69, v70);
  v71 = swift_dynamicCast();
  v72 = *(v68 + 56);
  if (v71)
  {
    v73 = v0[29];
    v74 = v0[30];
    v76 = v0[17];
    v75 = v0[18];
    v78 = v0[15];
    v77 = v0[16];
    v79 = v0[3];
    v72(v78, 0, 1, v77);
    (*(v76 + 32))(v75, v78, v77);
    sub_100004CB8(&qword_100635BF0, &qword_1005174E0);
    v80 = (*(v76 + 80) + 32) & ~*(v76 + 80);
    v81 = swift_allocObject();
    *(v81 + 16) = xmmword_100511DA0;
    (*(v76 + 16))(v81 + v80, v75, v77);
    sub_1004DC06C();
    (*(v76 + 8))(v75, v77);
    (*(v74 + 56))(v79, 0, 1, v73);
  }

  else
  {
    v82 = v0[46];
    v83 = v0[15];
    v84 = v0[12];
    v86 = v0[4];
    v85 = v0[5];
    v72(v83, 1, 1, v0[16]);
    sub_10001074C(v83, &qword_100635BD0, &qword_1005174D8);
    v145(v82, v85, v86);
    v87 = swift_dynamicCast();
    v88 = *(v84 + 56);
    if (v87)
    {
      v89 = v0[14];
      v90 = v0[11];
      v91 = v0[12];
      v93 = v0[9];
      v92 = v0[10];
      v94 = v0[6];
      v95 = v0[7];
      v88(v92, 0, 1, v90);
      (*(v91 + 32))(v89, v92, v90);
      sub_1004DCF9C();
      v96 = (*(v95 + 88))(v93, v94);
      if (v96 == enum case for Playlist.Entry.InternalItem.musicVideo(_:))
      {
        v97 = v0[30];
        v98 = v0[21];
        v99 = v0[22];
        v100 = v0[20];
        v102 = v0[16];
        v101 = v0[17];
        v143 = v0[14];
        v147 = v0[29];
        v103 = v0[12];
        v104 = v0[9];
        v139 = v0[3];
        v141 = v0[11];
        (*(v0[7] + 96))(v104, v0[6]);
        (*(v98 + 32))(v99, v104, v100);
        sub_100004CB8(&qword_100635BF0, &qword_1005174E0);
        v105 = (*(v101 + 80) + 32) & ~*(v101 + 80);
        v106 = swift_allocObject();
        *(v106 + 16) = xmmword_100511DA0;
        (*(v98 + 16))(v106 + v105, v99, v100);
        v107 = &enum case for Track.musicVideo(_:);
      }

      else
      {
        if (v96 != enum case for Playlist.Entry.InternalItem.song(_:))
        {
          if (qword_100633A88 != -1)
          {
            swift_once();
          }

          v113 = v0[13];
          v114 = v0[14];
          v115 = v0[11];
          v116 = v0[12];
          v117 = sub_1004D966C();
          sub_100035430(v117, static Logger.actions);
          (*(v116 + 16))(v113, v114, v115);
          v118 = sub_1004D964C();
          v119 = sub_1004DDF8C();
          v120 = os_log_type_enabled(v118, v119);
          v122 = v0[13];
          v121 = v0[14];
          v123 = v0[11];
          v124 = v0[12];
          if (v120)
          {
            v148 = v0[14];
            v125 = v0[7];
            v126 = v0[8];
            v127 = v0[6];
            v140 = swift_slowAlloc();
            v144 = swift_slowAlloc();
            v149 = v144;
            *v140 = 136315138;
            v142 = v119;
            sub_1004DCF9C();
            sub_10007DB98(&qword_100635BE8, &type metadata accessor for Playlist.Entry.InternalItem, &protocol conformance descriptor for Playlist.Entry.InternalItem);
            v128 = v127;
            v129 = sub_1004DEFFC();
            v131 = v130;
            (*(v125 + 8))(v126, v128);
            v132 = *(v124 + 8);
            v132(v122, v123);
            v133 = sub_1000343A8(v129, v131, &v149);

            *(v140 + 4) = v133;
            _os_log_impl(&_mh_execute_header, v118, v142, "Unsupported Playlist.Entry.InternalItem=%s", v140, 0xCu);
            sub_100008D24(v144);

            v132(v148, v123);
          }

          else
          {

            v134 = *(v124 + 8);
            v134(v122, v123);
            v134(v121, v123);
          }

          v135 = v0[9];
          v136 = v0[6];
          v137 = v0[7];
          (*(v0[30] + 56))(v0[3], 1, 1, v0[29]);
          (*(v137 + 8))(v135, v136);
          goto LABEL_14;
        }

        v97 = v0[30];
        v98 = v0[26];
        v99 = v0[27];
        v100 = v0[25];
        v102 = v0[16];
        v101 = v0[17];
        v143 = v0[14];
        v147 = v0[29];
        v103 = v0[12];
        v112 = v0[9];
        v139 = v0[3];
        v141 = v0[11];
        (*(v0[7] + 96))(v112, v0[6]);
        (*(v98 + 32))(v99, v112, v100);
        sub_100004CB8(&qword_100635BF0, &qword_1005174E0);
        v105 = (*(v101 + 80) + 32) & ~*(v101 + 80);
        v106 = swift_allocObject();
        *(v106 + 16) = xmmword_100511DA0;
        (*(v98 + 16))(v106 + v105, v99, v100);
        v107 = &enum case for Track.song(_:);
      }

      (*(v101 + 104))(v106 + v105, *v107, v102);
      sub_1004DC06C();
      (*(v98 + 8))(v99, v100);
      (*(v103 + 8))(v143, v141);
      (*(v97 + 56))(v139, 0, 1, v147);
    }

    else
    {
      v108 = v0[29];
      v109 = v0[30];
      v110 = v0[10];
      v111 = v0[3];
      v88(v110, 1, 1, v0[11]);
      sub_10001074C(v110, &qword_100635BC8, &unk_10051B9C0);
      (*(v109 + 56))(v111, 1, 1, v108);
    }
  }

LABEL_14:

  v65 = v0[1];

  return v65();
}

uint64_t sub_100079CB8()
{
  *(*v1 + 480) = v0;

  if (v0)
  {
    v2 = sub_10007B7F4;
  }

  else
  {
    v2 = sub_100079DE8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100079DE8(uint64_t a1)
{
  v3 = v1[54];
  v2 = v1[55];
  v4 = v1[52];
  v5 = v1[53];
  sub_1004DC9EC();
  v6 = *(v5 + 8);
  v6(v3, v4);
  v6(v2, v4);

  v7 = v1[1];

  return v7();
}

uint64_t sub_10007A018()
{
  *(*v1 + 520) = v0;

  if (v0)
  {
    v2 = sub_10007A4F8;
  }

  else
  {
    v2 = sub_10007A148;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10007A148()
{
  v1 = v0[35];
  v2 = v0[29];
  v3 = v0[30];
  sub_1004DD02C();
  v4 = *(v3 + 48);
  v0[66] = v4;
  v0[67] = (v3 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v5 = v4(v1, 1, v2);
  v6 = v0[35];
  if (v5 == 1)
  {
    sub_10001074C(v0[35], &qword_100635B48, &qword_100517328);
LABEL_7:
    v17 = v0[40];
    v16 = v0[41];
    v18 = v0[37];
    v19 = v0[38];
    sub_1004DD02C();
    v20 = *(v19 + 8);
    v20(v17, v18);
    v20(v16, v18);

    v21 = v0[1];

    return v21();
  }

  v7 = v0[29];
  v8 = v0[30];
  v9 = sub_1004DC07C();
  v10 = *(v8 + 8);
  v0[68] = v10;
  v0[69] = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v6, v7);
  if ((v9 & 1) == 0)
  {
    goto LABEL_7;
  }

  v11 = swift_allocObject();
  v0[70] = v11;
  *(v11 + 16) = xmmword_100511AB0;
  sub_1004DC00C();
  v12 = sub_1004DC18C();

  *(v11 + 32) = v12;
  v13 = swift_task_alloc();
  v0[71] = v13;
  *v13 = v0;
  v13[1] = sub_10007A954;
  v14 = v0[39];
  v15 = v0[37];

  return dispatch thunk of MusicPropertyContainer.with(_:)(v14, v11, v15, &protocol witness table for Playlist);
}

uint64_t sub_10007A4F8()
{
  v29 = v0;
  (*(v0[38] + 8))(v0[41], v0[37]);
  v1 = v0[65];
  if (qword_100633A88 != -1)
  {
    swift_once();
  }

  v2 = v0[56];
  v3 = v0[45];
  v5 = v0[4];
  v4 = v0[5];
  v6 = sub_1004D966C();
  sub_100035430(v6, static Logger.actions);
  v2(v3, v4, v5);
  swift_errorRetain();
  v7 = sub_1004D964C();
  v8 = sub_1004DDF7C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[56];
    v11 = v0[44];
    v10 = v0[45];
    v27 = v8;
    v12 = v0[43];
    v13 = v0[4];
    v14 = swift_slowAlloc();
    v28[0] = swift_slowAlloc();
    *v14 = 136446466;
    v9(v11, v10, v13);
    v15 = sub_1004DD4DC();
    v17 = v16;
    (*(v12 + 8))(v10, v13);
    v18 = sub_1000343A8(v15, v17, v28);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    v0[2] = v1;
    swift_errorRetain();
    sub_100004CB8(&qword_100638980, &qword_100515B30);
    v19 = sub_1004DD4DC();
    v21 = sub_1000343A8(v19, v20, v28);

    *(v14 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v7, v27, "Failed to load tracks for playlist addable item=%{public}s with error=%{public}s", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v22 = v0[45];
    v23 = v0[43];
    v24 = v0[4];

    (*(v23 + 8))(v22, v24);
  }

  (*(v0[30] + 56))(v0[3], 1, 1, v0[29]);

  v25 = v0[1];

  return v25();
}

uint64_t sub_10007A954()
{
  *(*v1 + 576) = v0;

  if (v0)
  {
    v2 = sub_10007AE9C;
  }

  else
  {
    v2 = sub_10007AA84;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10007AA84(uint64_t a1)
{
  v2 = v1[66];
  v4 = v1[38];
  v3 = v1[39];
  v5 = v1[37];
  v6 = v1[34];
  v7 = v1[29];
  sub_1004DD02C();
  v8 = *(v4 + 8);
  v1[73] = v8;
  v1[74] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v3, v5);
  v9 = v2(v6, 1, v7);
  v10 = v1[29];
  if (v9 == 1)
  {
    v11 = v1[66];
    v12 = v1[34];
    sub_1004DC06C();
    if (v11(v12, 1, v10) != 1)
    {
      sub_10001074C(v1[34], &qword_100635B48, &qword_100517328);
    }
  }

  else
  {
    (*(v1[30] + 32))(v1[32], v1[34], v1[29]);
  }

  if (sub_1004DC07C())
  {
    v13 = swift_task_alloc();
    v1[75] = v13;
    v14 = sub_10007DB98(&qword_100635C00, &type metadata accessor for Track, &protocol conformance descriptor for Track);
    *v13 = v1;
    v13[1] = sub_10007B310;
    v15 = v1[33];
    v16 = v1[29];

    return MusicItemCollection.nextBatch<>(limit:)(v15, 10000, 0, v16, v14);
  }

  else
  {
    v17 = v1[73];
    v18 = v1[41];
    v19 = v1[37];
    v20 = v1[32];
    v21 = v1[29];
    v22 = v1[30];
    v23 = v1[3];
    v17(v1[40], v19);
    v17(v18, v19);
    (*(v22 + 32))(v23, v20, v21);
    (*(v22 + 56))(v23, 0, 1, v21);

    v24 = v1[1];

    return v24();
  }
}

uint64_t sub_10007AE9C()
{
  v32 = v0;
  v1 = v0[41];
  v2 = v0[37];
  v3 = *(v0[38] + 8);
  v3(v0[40], v2);
  v3(v1, v2);
  v4 = v0[72];
  if (qword_100633A88 != -1)
  {
    swift_once();
  }

  v5 = v0[56];
  v6 = v0[45];
  v8 = v0[4];
  v7 = v0[5];
  v9 = sub_1004D966C();
  sub_100035430(v9, static Logger.actions);
  v5(v6, v7, v8);
  swift_errorRetain();
  v10 = sub_1004D964C();
  v11 = sub_1004DDF7C();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = v0[56];
    v14 = v0[44];
    v13 = v0[45];
    v30 = v11;
    v15 = v0[43];
    v16 = v0[4];
    v17 = swift_slowAlloc();
    v31[0] = swift_slowAlloc();
    *v17 = 136446466;
    v12(v14, v13, v16);
    v18 = sub_1004DD4DC();
    v20 = v19;
    (*(v15 + 8))(v13, v16);
    v21 = sub_1000343A8(v18, v20, v31);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2082;
    v0[2] = v4;
    swift_errorRetain();
    sub_100004CB8(&qword_100638980, &qword_100515B30);
    v22 = sub_1004DD4DC();
    v24 = sub_1000343A8(v22, v23, v31);

    *(v17 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v10, v30, "Failed to load tracks for playlist addable item=%{public}s with error=%{public}s", v17, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v25 = v0[45];
    v26 = v0[43];
    v27 = v0[4];

    (*(v26 + 8))(v25, v27);
  }

  (*(v0[30] + 56))(v0[3], 1, 1, v0[29]);

  v28 = v0[1];

  return v28();
}

uint64_t sub_10007B310()
{
  *(*v1 + 608) = v0;

  if (v0)
  {
    v2 = sub_10007BC50;
  }

  else
  {
    v2 = sub_10007B424;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10007B424()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 232);
  if ((*(v0 + 528))(v1, 1, v2) == 1)
  {
    sub_10001074C(v1, &qword_100635B48, &qword_100517328);
  }

  else
  {
    v3 = *(v0 + 544);
    v4 = *(v0 + 248);
    (*(*(v0 + 240) + 32))(v4, v1, v2);
    sub_1004DC08C();
    v3(v4, v2);
  }

  if (sub_1004DC07C())
  {
    v5 = swift_task_alloc();
    *(v0 + 600) = v5;
    v6 = sub_10007DB98(&qword_100635C00, &type metadata accessor for Track, &protocol conformance descriptor for Track);
    *v5 = v0;
    v5[1] = sub_10007B310;
    v7 = *(v0 + 264);
    v8 = *(v0 + 232);

    return MusicItemCollection.nextBatch<>(limit:)(v7, 10000, 0, v8, v6);
  }

  else
  {
    v9 = *(v0 + 584);
    v10 = *(v0 + 328);
    v11 = *(v0 + 296);
    v12 = *(v0 + 256);
    v13 = *(v0 + 232);
    v14 = *(v0 + 240);
    v15 = *(v0 + 24);
    v9(*(v0 + 320), v11);
    v9(v10, v11);
    (*(v14 + 32))(v15, v12, v13);
    (*(v14 + 56))(v15, 0, 1, v13);

    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_10007B7F4()
{
  v29 = v0;
  (*(v0[53] + 8))(v0[55], v0[52]);
  v1 = v0[60];
  if (qword_100633A88 != -1)
  {
    swift_once();
  }

  v2 = v0[56];
  v3 = v0[45];
  v5 = v0[4];
  v4 = v0[5];
  v6 = sub_1004D966C();
  sub_100035430(v6, static Logger.actions);
  v2(v3, v4, v5);
  swift_errorRetain();
  v7 = sub_1004D964C();
  v8 = sub_1004DDF7C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[56];
    v11 = v0[44];
    v10 = v0[45];
    v27 = v8;
    v12 = v0[43];
    v13 = v0[4];
    v14 = swift_slowAlloc();
    v28[0] = swift_slowAlloc();
    *v14 = 136446466;
    v9(v11, v10, v13);
    v15 = sub_1004DD4DC();
    v17 = v16;
    (*(v12 + 8))(v10, v13);
    v18 = sub_1000343A8(v15, v17, v28);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    v0[2] = v1;
    swift_errorRetain();
    sub_100004CB8(&qword_100638980, &qword_100515B30);
    v19 = sub_1004DD4DC();
    v21 = sub_1000343A8(v19, v20, v28);

    *(v14 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v7, v27, "Failed to load tracks for playlist addable item=%{public}s with error=%{public}s", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v22 = v0[45];
    v23 = v0[43];
    v24 = v0[4];

    (*(v23 + 8))(v22, v24);
  }

  (*(v0[30] + 56))(v0[3], 1, 1, v0[29]);

  v25 = v0[1];

  return v25();
}

uint64_t sub_10007BC50()
{
  v33 = v0;
  v1 = *(v0 + 584);
  v2 = *(v0 + 320);
  v3 = *(v0 + 328);
  v4 = *(v0 + 296);
  (*(v0 + 544))(*(v0 + 256), *(v0 + 232));
  v1(v2, v4);
  v1(v3, v4);
  v5 = *(v0 + 608);
  if (qword_100633A88 != -1)
  {
    swift_once();
  }

  v6 = *(v0 + 448);
  v7 = *(v0 + 360);
  v9 = *(v0 + 32);
  v8 = *(v0 + 40);
  v10 = sub_1004D966C();
  sub_100035430(v10, static Logger.actions);
  v6(v7, v8, v9);
  swift_errorRetain();
  v11 = sub_1004D964C();
  v12 = sub_1004DDF7C();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = *(v0 + 448);
    v15 = *(v0 + 352);
    v14 = *(v0 + 360);
    v31 = v12;
    v16 = *(v0 + 344);
    v17 = *(v0 + 32);
    v18 = swift_slowAlloc();
    v32[0] = swift_slowAlloc();
    *v18 = 136446466;
    v13(v15, v14, v17);
    v19 = sub_1004DD4DC();
    v21 = v20;
    (*(v16 + 8))(v14, v17);
    v22 = sub_1000343A8(v19, v21, v32);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2082;
    *(v0 + 16) = v5;
    swift_errorRetain();
    sub_100004CB8(&qword_100638980, &qword_100515B30);
    v23 = sub_1004DD4DC();
    v25 = sub_1000343A8(v23, v24, v32);

    *(v18 + 14) = v25;
    _os_log_impl(&_mh_execute_header, v11, v31, "Failed to load tracks for playlist addable item=%{public}s with error=%{public}s", v18, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v26 = *(v0 + 360);
    v27 = *(v0 + 344);
    v28 = *(v0 + 32);

    (*(v27 + 8))(v26, v28);
  }

  (*(*(v0 + 240) + 56))(*(v0 + 24), 1, 1, *(v0 + 232));

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_10007C0D0(uint64_t a1, uint64_t a2)
{
  v2[12] = a1;
  v2[13] = a2;
  sub_100004CB8(&qword_100635248, &unk_100516140);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = type metadata accessor for MetricsEvent.Click(0);
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  sub_100004CB8(&qword_100634B30, &unk_100513D70);
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  sub_100004CB8(&qword_1006359A0, &unk_100516EE0);
  v2[28] = swift_task_alloc();
  v3 = type metadata accessor for Actions.MetricsReportingContext(0);
  v2[29] = v3;
  v2[30] = *(v3 - 8);
  v2[31] = swift_task_alloc();

  return _swift_task_switch(sub_10007C2E0, 0, 0);
}

uint64_t sub_10007C2E0()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);
  v3 = *(v0 + 224);
  sub_1000108DC(*(v0 + 96), v3, &qword_1006359A0, &unk_100516EE0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10001074C(*(v0 + 224), &qword_1006359A0, &unk_100516EE0);
LABEL_8:

    v22 = *(v0 + 8);

    return v22();
  }

  v4 = *(v0 + 104);
  sub_100074250(*(v0 + 224), *(v0 + 248), type metadata accessor for Actions.MetricsReportingContext);
  if (!*(v4 + 16))
  {
    sub_10007DB18(*(v0 + 248), type metadata accessor for Actions.MetricsReportingContext);
    goto LABEL_8;
  }

  v5 = *(v0 + 216);
  v6 = *(v0 + 104);
  v7 = v6[7];
  v8 = v6[8];
  sub_100008C70(v6 + 4, v7);
  *(v0 + 256) = MusicItem.metricsTargetIdentifier.getter(v7, *(v8 + 8));
  *(v0 + 264) = v9;
  v10 = sub_1004D809C();
  *(v0 + 272) = v10;
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  *(v0 + 280) = v12;
  *(v0 + 288) = (v11 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v12(v5, 1, 1, v10);
  sub_100004CB8(&qword_100635BA8, &qword_100517A00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1005126C0;
  v14 = v6[7];
  v15 = v6[8];
  sub_100008C70(v6 + 4, v14);
  *(inited + 32) = MusicItem.metricsContentType.getter(v14, *(v15 + 8));
  *(inited + 40) = v16;
  *(inited + 48) = 0;
  *(inited + 56) = xmmword_1005127A0;
  *(inited + 72) = 1;
  *(v0 + 296) = sub_10004B4B4(inited);
  *(v0 + 304) = v17;
  *(v0 + 312) = v18;
  *(v0 + 328) = v19;
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_1004DDA4C();
  *(v0 + 320) = sub_1004DDA3C();
  v21 = sub_1004DD9BC();

  return _swift_task_switch(sub_10007C648, v21, v20);
}

uint64_t sub_10007C648()
{
  v80 = *(v0 + 328);
  v73 = *(v0 + 296);
  v76 = *(v0 + 264);
  v78 = *(v0 + 312);
  v74 = *(v0 + 256);
  v1 = *(v0 + 248);
  v2 = *(v0 + 232);
  v4 = *(v0 + 208);
  v3 = *(v0 + 216);
  v5 = *(v0 + 176);
  v6 = *(v0 + 184);
  v7 = *(v0 + 168);
  v72 = *(v0 + 160);

  sub_1000108DC(v3, v4, &qword_100634B30, &unk_100513D70);
  v8 = *(v1 + v2[7]);
  v9 = *v1;
  v10 = v1[1];
  sub_1000108DC(v1 + v2[5], v7, &qword_100635248, &unk_100516140);
  v81 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v11 = (v6 + v5[20]);
  *v11 = 0;
  v11[1] = 0;
  *v6 = v74;
  *(v6 + 8) = v76;
  *(v6 + 16) = 773;
  sub_100047F38(v4, v6 + v5[7], &qword_100634B30, &unk_100513D70);
  *(v6 + v5[8]) = v8;
  v12 = (v6 + v5[9]);
  v75 = v9;
  v77 = v10;
  *v12 = v9;
  v12[1] = v10;
  v13 = v6 + v5[10];
  *v13 = v73;
  *(v13 + 16) = v78;
  *(v13 + 24) = v80;
  sub_1000108DC(v7, v72, &qword_100635248, &unk_100516140);
  v14 = type metadata accessor for MetricsEvent.Page(0);
  v79 = *(*(v14 - 1) + 48);
  v15 = v79(v72, 1, v14);
  v16 = *(v0 + 328);
  v17 = *(v0 + 304);
  v18 = *(v0 + 312);
  v19 = *(v0 + 296);
  v20 = *(v0 + 160);
  if (v15 == 1)
  {

    sub_100046F14(v75, v77);

    sub_100047EC8(v19, v17, v18, v16, SBYTE1(v16));
    sub_10001074C(v20, &qword_100635248, &unk_100516140);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v21 = *v20;
    v22 = v20[1];

    sub_100046F14(v75, v77);

    sub_100047EC8(v19, v17, v18, v16, SBYTE1(v16));

    sub_10007DB18(v20, type metadata accessor for MetricsEvent.Page);
  }

  v23 = *(v0 + 168);
  v24 = *(v0 + 152);
  v25 = (*(v0 + 184) + *(*(v0 + 176) + 48));
  *v25 = v21;
  v25[1] = v22;
  sub_1000108DC(v23, v24, &qword_100635248, &unk_100516140);
  v26 = v79(v24, 1, v14);
  v27 = *(v0 + 152);
  if (v26 == 1)
  {
    sub_10001074C(*(v0 + 152), &qword_100635248, &unk_100516140);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    sub_10007DB18(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 168);
  v31 = *(v0 + 144);
  v32 = (*(v0 + 184) + *(*(v0 + 176) + 52));
  *v32 = v28;
  v32[1] = v29;
  sub_1000108DC(v30, v31, &qword_100635248, &unk_100516140);
  if (v79(v31, 1, v14) == 1)
  {
    v33 = *(v0 + 280);
    v34 = *(v0 + 272);
    v35 = *(v0 + 200);
    sub_10001074C(*(v0 + 144), &qword_100635248, &unk_100516140);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 144);
    sub_1000108DC(v36 + v14[6], *(v0 + 200), &qword_100634B30, &unk_100513D70);
    sub_10007DB18(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 168);
  v38 = *(v0 + 136);
  sub_100047F38(*(v0 + 200), *(v0 + 184) + *(*(v0 + 176) + 56), &qword_100634B30, &unk_100513D70);
  sub_1000108DC(v37, v38, &qword_100635248, &unk_100516140);
  v39 = v79(v38, 1, v14);
  v40 = *(v0 + 136);
  if (v39 == 1)
  {
    sub_10001074C(*(v0 + 136), &qword_100635248, &unk_100516140);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v14[7]);

    sub_10007DB18(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 168);
  v43 = *(v0 + 128);
  *(*(v0 + 184) + *(*(v0 + 176) + 60)) = v41;
  sub_1000108DC(v42, v43, &qword_100635248, &unk_100516140);
  v44 = v79(v43, 1, v14);
  v45 = *(v0 + 128);
  if (v44 == 1)
  {
    sub_10001074C(v45, &qword_100635248, &unk_100516140);
    v46 = 1;
  }

  else
  {
    v46 = *(v45 + v14[9]);
    sub_10007DB18(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 168);
  v48 = *(v0 + 120);
  *(*(v0 + 184) + *(*(v0 + 176) + 64)) = v46;
  sub_1000108DC(v47, v48, &qword_100635248, &unk_100516140);
  v49 = v79(v48, 1, v14);
  v50 = *(v0 + 120);
  if (v49 == 1)
  {
    sub_10001074C(*(v0 + 120), &qword_100635248, &unk_100516140);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v53 = (v50 + v14[8]);
    v51 = *v53;
    v52 = v53[1];

    sub_10007DB18(v50, type metadata accessor for MetricsEvent.Page);
  }

  v54 = *(v0 + 168);
  v55 = *(v0 + 112);
  v56 = (*(v0 + 184) + *(*(v0 + 176) + 72));
  *v56 = v51;
  v56[1] = v52;
  sub_100047F38(v54, v55, &qword_100635248, &unk_100516140);
  v57 = v79(v55, 1, v14);
  v58 = *(v0 + 112);
  if (v57 == 1)
  {
    sub_10001074C(v58, &qword_100635248, &unk_100516140);
    v59 = 2;
  }

  else
  {
    v59 = *(v58 + v14[11]);
    sub_10007DB18(v58, type metadata accessor for MetricsEvent.Page);
  }

  v60 = *(v0 + 184);
  v61 = *(v0 + 192);
  v62 = *(v0 + 176);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v81;
  sub_100074250(v60, v61, type metadata accessor for MetricsEvent.Click);
  if (qword_100633B50 != -1)
  {
    swift_once();
  }

  v64 = *(v0 + 304);
  v63 = *(v0 + 312);
  v65 = *(v0 + 296);
  v66 = *(v0 + 248);
  v67 = *(v0 + 232);
  v68 = *(v0 + 216);
  v69 = *(v0 + 192);
  v70 = *(v0 + 328);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v69, *(v66 + *(v67 + 24)), *(v66 + *(v67 + 24) + 8), *(v66 + *(v67 + 36)), *(v66 + *(v67 + 36) + 8), *(v66 + *(v67 + 36) + 16));
  sub_1000742B8(v65, v64, v63, v70, SBYTE1(v70));
  sub_10007DB18(v69, type metadata accessor for MetricsEvent.Click);
  sub_10001074C(v68, &qword_100634B30, &unk_100513D70);

  return _swift_task_switch(sub_10007CE00, 0, 0);
}

uint64_t sub_10007CE00()
{
  sub_10007DB18(*(v0 + 248), type metadata accessor for Actions.MetricsReportingContext);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t _s9MusicCore7ActionsO13AddToPlaylistO7ContextV13menuItemTitleSSvg_0()
{
  sub_1004D83FC();
  __chkstk_darwin();
  v0 = sub_1004DD3EC();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v5 = &v9[-v4];
  sub_1004DD37C();
  (*(v1 + 16))(v3, v5, v0);
  if (qword_100633A80 != -1)
  {
    swift_once();
  }

  v6 = qword_100671958;
  sub_1004D838C();
  v7 = sub_1004DD4AC();
  (*(v1 + 8))(v5, v0);
  return v7;
}

double sub_10007D118@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>, uint64_t a10)
{
  v29 = a3;
  v30 = a4;
  v28 = a2;
  v31 = a10;
  sub_100004CB8(&qword_1006359A0, &unk_100516EE0);
  __chkstk_darwin();
  v17 = &v27 - v16;
  v18 = *(a6 - 8);
  __chkstk_darwin();
  v20 = &v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004CB8(&qword_100635C50, &qword_100517578);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_100511DA0;
  *(v21 + 56) = a5;
  *(v21 + 64) = a7;
  *(v21 + 72) = a8;
  v22 = sub_1000357EC((v21 + 32));
  (*(*(a5 - 8) + 16))(v22, a1, a5);
  v23 = v28;
  sub_1000699E8(v28, v32);
  (*(v18 + 16))(v20, v29, a6);
  v24 = v30;
  sub_1000108DC(v30, v17, &qword_1006359A0, &unk_100516EE0);
  sub_1004DC7AC();
  sub_1004DC79C();
  Actions.AddToPlaylist.Context.init<A>(items:library:presentationSource:playlistPickerPresenter:metricsReportingContext:)(v21, v32, v20, v17, a6, v31, v33);
  sub_10001074C(v24, &qword_1006359A0, &unk_100516EE0);
  sub_10007DC74(v23);
  v25 = v33[1];
  *a9 = v33[0];
  a9[1] = v25;
  result = v34[0];
  a9[2] = *v34;
  return result;
}

uint64_t sub_10007D368()
{

  return swift_deallocObject();
}

uint64_t sub_10007D3A0()
{
  v1 = sub_100004CB8(&qword_100635B38, &qword_100517318);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

unint64_t sub_10007D434()
{
  v1 = *(sub_100004CB8(&qword_100635B38, &qword_100517318) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_100075318(v2);
}

uint64_t sub_10007D4A0()
{
  v1 = *(v0 + 16);
  v2 = sub_100004CB8(&qword_100635B38, &qword_100517318);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 - 8);
  v7 = *(v6 + 80);
  (*(v3 + 8))(v0 + v4, v2);
  v8 = v0 + v5;
  swift_unknownObjectWeakDestroy();
  v9 = *(v0 + v5 + 48);
  if (v9 != 255)
  {
    sub_10006A898(*(v8 + 8), *(v8 + 16), *(v8 + 24), *(v8 + 32), *(v8 + 40), v9);
  }

  if (*(v8 + 64))
  {
  }

  if (*(v8 + 80))
  {
  }

  (*(v6 + 8))(v0 + ((v7 + ((v5 + 103) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v7), v1);

  return swift_deallocObject();
}

uint64_t sub_10007D61C()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(sub_100004CB8(&qword_100635B38, &qword_100517318) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 103) & 0xFFFFFFFFFFFFFFF8;
  v8 = (*(*(v3 - 8) + 80) + v7 + 8) & ~*(*(v3 - 8) + 80);
  v9 = *(v0 + v7);
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_100035B28;

  return sub_100075C84(v0 + v5, v0 + v6, v9, v0 + v8, v3, v2);
}

uint64_t sub_10007D78C()
{
  v1 = *(sub_100004CB8(&qword_1006359A0, &unk_100516EE0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  v3 = type metadata accessor for Actions.MetricsReportingContext(0);
  if (!(*(*(v3 - 8) + 48))(v2, 1, v3))
  {
    if (*(v2 + 8) >= 0xDuLL)
    {
    }

    v4 = v2 + *(v3 + 20);
    v5 = type metadata accessor for MetricsEvent.Page(0);
    if (!(*(*(v5 - 8) + 48))(v4, 1, v5))
    {

      v6 = *(v5 + 24);
      v7 = sub_1004D809C();
      v8 = *(v7 - 8);
      v12 = v6;
      v9 = v4 + v6;
      v10 = v7;
      if (!(*(v8 + 48))(v9, 1, v7))
      {
        (*(v8 + 8))(v4 + v12, v10);
      }
    }
  }

  return swift_deallocObject();
}

uint64_t sub_10007D9E8()
{
  v2 = *(sub_100004CB8(&qword_1006359A0, &unk_100516EE0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100035C88;

  return sub_10007C0D0(v0 + v3, v4);
}

uint64_t sub_10007DB18(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_10007DB78(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_10007DB98(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10007DBE0()
{
  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 72);
  if (v1 != 255)
  {
    sub_10006A898(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), v1);
  }

  if (*(v0 + 88))
  {
  }

  if (*(v0 + 104))
  {
  }

  if (*(v0 + 136))
  {
  }

  return swift_deallocObject();
}

uint64_t Actions.Collaborate.Context.init(playlist:canCollaborateOnPlaylist:collaborate:metricsReportingContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v29 = a5;
  v30 = a6;
  v12 = sub_1004DD05C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin();
  v16 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(a7, a1, v12, v15);
  v17 = type metadata accessor for Actions.Collaborate.Context(0);
  v18 = (a7 + v17[5]);
  *v18 = a2;
  v18[1] = a3;
  v19 = swift_allocObject();
  v20 = v29;
  *(v19 + 16) = a4;
  *(v19 + 24) = v20;
  v21 = (a7 + v17[6]);
  *v21 = &unk_100517588;
  v21[1] = v19;
  v22 = *(v13 + 32);
  v22(v16, a1, v12);
  v23 = *(sub_100004CB8(&qword_1006359A0, &unk_100516EE0) - 8);
  v24 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v25 = (v24 + *(v23 + 64) + *(v13 + 80)) & ~*(v13 + 80);
  v26 = swift_allocObject();
  sub_100047F38(v30, v26 + v24, &qword_1006359A0, &unk_100516EE0);
  result = (v22)(v26 + v25, v16, v12);
  v28 = (a7 + v17[7]);
  *v28 = &unk_100517598;
  v28[1] = v26;
  return result;
}

uint64_t type metadata accessor for Actions.Collaborate.Context(uint64_t a1)
{
  result = qword_100635CD8;
  if (!qword_100635CD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10007DF74(void (*a1)(void))
{
  a1();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_10007DFDC()
{

  return swift_deallocObject();
}

uint64_t sub_10007E014()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100035C88;

  return sub_10007DF74(v2);
}

uint64_t sub_10007E0C0(uint64_t a1, uint64_t a2)
{
  v2[14] = a1;
  v2[15] = a2;
  sub_100004CB8(&qword_100635248, &unk_100516140);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = type metadata accessor for MetricsEvent.Click(0);
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  sub_100004CB8(&qword_100634B30, &unk_100513D70);
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  sub_100004CB8(&qword_1006359A0, &unk_100516EE0);
  v2[30] = swift_task_alloc();
  v3 = type metadata accessor for Actions.MetricsReportingContext(0);
  v2[31] = v3;
  v2[32] = *(v3 - 8);
  v2[33] = swift_task_alloc();

  return _swift_task_switch(sub_10007E2D0, 0, 0);
}

uint64_t sub_10007E2D0()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 256);
  v3 = *(v0 + 240);
  sub_1000108DC(*(v0 + 112), v3, &qword_1006359A0, &unk_100516EE0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10001074C(*(v0 + 240), &qword_1006359A0, &unk_100516EE0);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 232);
    sub_100074250(*(v0 + 240), *(v0 + 264), type metadata accessor for Actions.MetricsReportingContext);
    v7 = sub_1004DCF1C();
    *(v0 + 272) = v8;
    *(v0 + 280) = v7;
    v9 = sub_1004D809C();
    *(v0 + 288) = v9;
    v10 = *(v9 - 8);
    v11 = *(v10 + 56);
    *(v0 + 296) = v11;
    *(v0 + 304) = (v10 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v11(v6, 1, 1, v9);
    sub_100004CB8(&qword_100635BA8, &qword_100517A00);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100511DA0;
    *(v0 + 104) = sub_1004DD05C();
    sub_100004CB8(&qword_100635368, &qword_1005164A0);
    v13 = sub_1004DD4DC();
    v15 = v14;
    sub_10004B8A8(1, v13, v14);
    v16 = sub_1004DE7DC();
    v18 = v17;

    v19 = sub_10004B944(1uLL, v13, v15);
    v21 = v20;
    v23 = v22;
    v25 = v24;

    *(v0 + 72) = v19;
    *(v0 + 80) = v21;
    *(v0 + 88) = v23;
    *(v0 + 96) = v25;
    sub_10004B9F4();
    sub_1004DD5DC();

    *(inited + 32) = v16;
    *(inited + 40) = v18;
    *(inited + 48) = 0;
    *(v0 + 312) = sub_10004B4B4(inited);
    *(v0 + 320) = v26;
    *(v0 + 328) = v27;
    *(v0 + 344) = v28;
    swift_setDeallocating();
    sub_10007FCDC(inited + 32);
    sub_1004DDA4C();
    *(v0 + 336) = sub_1004DDA3C();
    v30 = sub_1004DD9BC();

    return _swift_task_switch(sub_10007E668, v30, v29);
  }
}

uint64_t sub_10007E668()
{
  v85 = *(v0 + 344);
  v83 = *(v0 + 328);
  v78 = *(v0 + 312);
  v2 = *(v0 + 272);
  v1 = *(v0 + 280);
  v3 = *(v0 + 264);
  v4 = *(v0 + 248);
  v5 = *(v0 + 224);
  v6 = *(v0 + 232);
  v79 = v5;
  v7 = *(v0 + 192);
  v8 = *(v0 + 200);
  v9 = *(v0 + 184);
  v77 = *(v0 + 176);

  v10 = 0xEB000000006D6574;
  if (v2)
  {
    v10 = v2;
  }

  v80 = v10;
  if (!v2)
  {
    v1 = 0x497972617262694CLL;
  }

  sub_1000108DC(v6, v5, &qword_100634B30, &unk_100513D70);
  v11 = *(v3 + v4[7]);
  v13 = *v3;
  v12 = v3[1];
  sub_1000108DC(v3 + v4[5], v9, &qword_100635248, &unk_100516140);
  v82 = *(v3 + v4[8]);
  *(v8 + v7[19]) = 0;
  v14 = (v8 + v7[20]);
  *v14 = 0;
  v14[1] = 0;
  *v8 = v1;
  *(v8 + 8) = v80;
  *(v8 + 16) = 2565;
  sub_100047F38(v79, v8 + v7[7], &qword_100634B30, &unk_100513D70);
  v81 = v12;
  *(v8 + v7[8]) = v11;
  v15 = (v8 + v7[9]);
  *v15 = v13;
  v15[1] = v12;
  v16 = v8 + v7[10];
  *v16 = v78;
  *(v16 + 16) = v83;
  *(v16 + 24) = v85;
  sub_1000108DC(v9, v77, &qword_100635248, &unk_100516140);
  v17 = type metadata accessor for MetricsEvent.Page(0);
  v84 = *(*(v17 - 1) + 48);
  v18 = v84(v77, 1, v17);
  v19 = *(v0 + 344);
  v20 = *(v0 + 320);
  v21 = *(v0 + 328);
  v22 = *(v0 + 312);
  v23 = *(v0 + 176);
  if (v18 == 1)
  {

    sub_100046F14(v13, v81);
    v24 = v82;

    sub_100047EC8(v22, v20, v21, v19, SBYTE1(v19));
    sub_10001074C(v23, &qword_100635248, &unk_100516140);
    v25 = 0;
    v26 = 0;
  }

  else
  {
    v25 = *v23;
    v26 = v23[1];

    sub_100046F14(v13, v81);
    v24 = v82;

    sub_100047EC8(v22, v20, v21, v19, SBYTE1(v19));

    sub_10007DB18(v23, type metadata accessor for MetricsEvent.Page);
  }

  v27 = *(v0 + 184);
  v28 = *(v0 + 168);
  v29 = (*(v0 + 200) + *(*(v0 + 192) + 48));
  *v29 = v25;
  v29[1] = v26;
  sub_1000108DC(v27, v28, &qword_100635248, &unk_100516140);
  v30 = v84(v28, 1, v17);
  v31 = *(v0 + 168);
  if (v30 == 1)
  {
    sub_10001074C(*(v0 + 168), &qword_100635248, &unk_100516140);
    v32 = 0;
    v33 = 0;
  }

  else
  {
    v32 = *(v31 + 16);
    v33 = *(v31 + 24);

    sub_10007DB18(v31, type metadata accessor for MetricsEvent.Page);
  }

  v34 = *(v0 + 184);
  v35 = *(v0 + 160);
  v36 = (*(v0 + 200) + *(*(v0 + 192) + 52));
  *v36 = v32;
  v36[1] = v33;
  sub_1000108DC(v34, v35, &qword_100635248, &unk_100516140);
  if (v84(v35, 1, v17) == 1)
  {
    v37 = v24;
    v38 = *(v0 + 296);
    v39 = *(v0 + 288);
    v40 = *(v0 + 216);
    sub_10001074C(*(v0 + 160), &qword_100635248, &unk_100516140);
    v38(v40, 1, 1, v39);
    v24 = v37;
  }

  else
  {
    v41 = *(v0 + 160);
    sub_1000108DC(v41 + v17[6], *(v0 + 216), &qword_100634B30, &unk_100513D70);
    sub_10007DB18(v41, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 184);
  v43 = *(v0 + 152);
  sub_100047F38(*(v0 + 216), *(v0 + 200) + *(*(v0 + 192) + 56), &qword_100634B30, &unk_100513D70);
  sub_1000108DC(v42, v43, &qword_100635248, &unk_100516140);
  v44 = v84(v43, 1, v17);
  v45 = *(v0 + 152);
  if (v44 == 1)
  {
    sub_10001074C(*(v0 + 152), &qword_100635248, &unk_100516140);
    v46 = 0;
  }

  else
  {
    v46 = *(v45 + v17[7]);

    sub_10007DB18(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 184);
  v48 = *(v0 + 144);
  *(*(v0 + 200) + *(*(v0 + 192) + 60)) = v46;
  sub_1000108DC(v47, v48, &qword_100635248, &unk_100516140);
  v49 = v84(v48, 1, v17);
  v50 = *(v0 + 144);
  if (v49 == 1)
  {
    sub_10001074C(v50, &qword_100635248, &unk_100516140);
    v51 = 1;
  }

  else
  {
    v51 = *(v50 + v17[9]);
    sub_10007DB18(v50, type metadata accessor for MetricsEvent.Page);
  }

  v52 = *(v0 + 184);
  v53 = *(v0 + 136);
  *(*(v0 + 200) + *(*(v0 + 192) + 64)) = v51;
  sub_1000108DC(v52, v53, &qword_100635248, &unk_100516140);
  v54 = v84(v53, 1, v17);
  v55 = *(v0 + 136);
  if (v54 == 1)
  {
    sub_10001074C(*(v0 + 136), &qword_100635248, &unk_100516140);
    v56 = 0;
    v57 = 0;
  }

  else
  {
    v58 = (v55 + v17[8]);
    v56 = *v58;
    v57 = v58[1];

    sub_10007DB18(v55, type metadata accessor for MetricsEvent.Page);
  }

  v59 = *(v0 + 184);
  v60 = *(v0 + 128);
  v61 = (*(v0 + 200) + *(*(v0 + 192) + 72));
  *v61 = v56;
  v61[1] = v57;
  sub_100047F38(v59, v60, &qword_100635248, &unk_100516140);
  v62 = v84(v60, 1, v17);
  v63 = *(v0 + 128);
  if (v62 == 1)
  {
    sub_10001074C(v63, &qword_100635248, &unk_100516140);
    v64 = 2;
  }

  else
  {
    v64 = *(v63 + v17[11]);
    sub_10007DB18(v63, type metadata accessor for MetricsEvent.Page);
  }

  v65 = *(v0 + 200);
  v66 = *(v0 + 208);
  v67 = *(v0 + 192);
  *(v65 + *(v67 + 68)) = v64;
  *(v65 + *(v67 + 44)) = v24;
  sub_100074250(v65, v66, type metadata accessor for MetricsEvent.Click);
  if (qword_100633B50 != -1)
  {
    swift_once();
  }

  v69 = *(v0 + 320);
  v68 = *(v0 + 328);
  v70 = *(v0 + 312);
  v71 = *(v0 + 264);
  v72 = *(v0 + 248);
  v73 = *(v0 + 232);
  v74 = *(v0 + 208);
  v75 = *(v0 + 344);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v74, *(v71 + *(v72 + 24)), *(v71 + *(v72 + 24) + 8), *(v71 + *(v72 + 36)), *(v71 + *(v72 + 36) + 8), *(v71 + *(v72 + 36) + 16));
  sub_1000742B8(v70, v69, v68, v75, SBYTE1(v75));
  sub_10007DB18(v74, type metadata accessor for MetricsEvent.Click);
  sub_10001074C(v73, &qword_100634B30, &unk_100513D70);

  return _swift_task_switch(sub_10007EE58, 0, 0);
}

uint64_t sub_10007EE58()
{
  sub_10007DB18(*(v0 + 264), type metadata accessor for Actions.MetricsReportingContext);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10007EF90()
{
  v1 = *(sub_100004CB8(&qword_1006359A0, &unk_100516EE0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = sub_1004DD05C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = v0 + v2;
  v8 = type metadata accessor for Actions.MetricsReportingContext(0);
  if (!(*(*(v8 - 8) + 48))(v0 + v2, 1, v8))
  {
    v16 = v3;
    if (*(v7 + 8) >= 0xDuLL)
    {
    }

    v9 = v7 + *(v8 + 20);
    v10 = type metadata accessor for MetricsEvent.Page(0);
    if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
    {

      v15 = *(v10 + 24);
      v11 = sub_1004D809C();
      v13 = *(v11 - 8);
      v14 = v11;
      if (!(*(v13 + 48))(v9 + v15, 1))
      {
        (*(v13 + 8))(v9 + v15, v14);
      }
    }

    v3 = v16;
  }

  (*(v5 + 8))(v0 + ((v2 + v3 + v6) & ~v6), v4);

  return swift_deallocObject();
}

uint64_t sub_10007F258()
{
  v2 = *(sub_100004CB8(&qword_1006359A0, &unk_100516EE0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(sub_1004DD05C() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100035B28;

  return sub_10007E0C0(v0 + v3, v0 + v6);
}

int *static Actions.Collaborate.action(context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10007F7A4(a1, a2);
  result = sub_100004CB8(&qword_100635C58, &qword_1005175B0);
  *(a2 + result[9]) = 13;
  *(a2 + result[11]) = 0x4014000000000000;
  v4 = (a2 + result[10]);
  *v4 = sub_10007F43C;
  v4[1] = 0;
  v5 = (a2 + result[12]);
  *v5 = &unk_1005175A0;
  v5[1] = 0;
  v6 = (a2 + result[13]);
  *v6 = &unk_1005175A8;
  v6[1] = 0;
  return result;
}

uint64_t sub_10007F498()
{
  v1 = *(v0 + 16);
  v2 = (v1 + *(type metadata accessor for Actions.Collaborate.Context(0) + 24));
  v5 = (*v2 + **v2);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_10007F594;

  return v5();
}

uint64_t sub_10007F594()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10007F6A8()
{
  v1 = *(v0 + 16);
  v2 = (v1 + *(type metadata accessor for Actions.Collaborate.Context(0) + 28));
  v5 = (*v2 + **v2);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_10007FD30;

  return v5();
}

uint64_t sub_10007F7A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Actions.Collaborate.Context(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t Actions.Collaborate.Context.menuItemTitle.getter()
{
  v0 = Playlist.hasActiveCollaboration.getter() & 1;

  return _s9MusicCore13CollaborationO5SetupO5title6activeSSSb_tFZ_0(v0);
}

uint64_t (*Actions.Collaborate.Context.menuItemImage.getter())()
{
  sub_100004CB8(&qword_100637940, &qword_10051B8D0);
  __chkstk_darwin();
  v1 = &v11 - v0;
  active = Playlist.hasActiveCollaboration.getter();
  sub_1004DCE2C();
  v3 = sub_1004DCE1C();
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v1, 1, v3) == 1)
  {
    sub_10001074C(v1, &qword_100637940, &qword_10051B8D0);
    if ((active & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  v5 = Playlist.Collaboration.hasPendingCollaborators.getter();
  (*(v4 + 8))(v1, v3);
  if (active)
  {
    if (v5)
    {
      v6 = 0xEE0065676461622ELL;
LABEL_9:
      v7 = 0x322E6E6F73726570;
      goto LABEL_10;
    }

LABEL_8:
    v6 = 0xE800000000000000;
    goto LABEL_9;
  }

LABEL_7:
  v6 = 0x80000001004EA5C0;
  v7 = 0xD000000000000011;
LABEL_10:
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v9 + 24) = v6;

  return sub_10007FA5C;
}

uint64_t sub_10007FA64()
{

  return swift_deallocObject();
}

uint64_t sub_10007FAC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1004DD05C();
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

uint64_t sub_10007FB98(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1004DD05C();
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

unint64_t sub_10007FC50(uint64_t a1)
{
  result = sub_1004DD05C();
  if (v2 <= 0x3F)
  {
    result = sub_1000430A4();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void NSUserDefaults.ValueTransformer.transform.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

void Actions.CreatePlaylist.Context.presentCreatePlaylistView.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t Actions.CreatePlaylist.Context.init(canCreatePlaylist:presentCreatePlaylistView:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a3;
  *(v7 + 24) = a4;
  return a1;
}

uint64_t sub_10007FE34(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_1004DDA4C();
  v2[4] = sub_1004DDA3C();
  v4 = sub_1004DD9BC();

  return _swift_task_switch(sub_10007FECC, v4, v3);
}

uint64_t sub_10007FECC()
{
  v1 = *(v0 + 16);

  v1(v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10007FF38()
{

  return swift_deallocObject();
}

uint64_t sub_10007FF70()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100035B28;

  return sub_10007FE34(v2, v3);
}

double static Actions.CreatePlaylist.action(context:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  *(a5 + 32) = 9;
  *(a5 + 40) = sub_10006D3E4;
  *(a5 + 48) = 0;
  *(a5 + 56) = 0x4014000000000000;
  *(a5 + 64) = &unk_100517600;
  *(a5 + 72) = 0;
  *(a5 + 80) = &unk_100517608;
  *(a5 + 88) = 0;

  return result;
}

uint64_t sub_1000800AC(uint64_t a1, uint64_t a2)
{
  v5 = (*(a2 + 16) + **(a2 + 16));
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_10007330C;

  return v5();
}

double sub_1000801AC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 24);
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 24) = v2;
  *(a2 + 32) = 9;
  *(a2 + 40) = sub_10006D3E4;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0x4014000000000000;
  *(a2 + 64) = &unk_100517600;
  *(a2 + 72) = 0;
  *(a2 + 80) = &unk_100517608;
  *(a2 + 88) = 0;

  return result;
}

uint64_t (*Actions.CreatePlaylist.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 1937075312;
  *(v0 + 24) = 0xE400000000000000;
  v1 = swift_allocObject();
  *(v1 + 16) = 1937075312;
  *(v1 + 24) = 0xE400000000000000;
  return sub_100073BEC;
}

uint64_t (*sub_1000802E0())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 1937075312;
  *(v0 + 24) = 0xE400000000000000;
  v1 = swift_allocObject();
  *(v1 + 16) = 1937075312;
  *(v1 + 24) = 0xE400000000000000;
  return sub_10007455C;
}

uint64_t _s9MusicCore7ActionsO14CreatePlaylistO7ContextV13menuItemTitleSSvg_0()
{
  sub_1004D83FC();
  __chkstk_darwin();
  v0 = sub_1004DD3EC();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v5 = &v9[-v4];
  sub_1004DD37C();
  (*(v1 + 16))(v3, v5, v0);
  if (qword_100633A80 != -1)
  {
    swift_once();
  }

  v6 = qword_100671958;
  sub_1004D838C();
  v7 = sub_1004DD4AC();
  (*(v1 + 8))(v5, v0);
  return v7;
}

uint64_t sub_100080574()
{

  return swift_deallocObject();
}

void Actions.DeleteFromLibrary.Context.init<A>(item:library:presentationSource:metricsReportingContext:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t (**a8)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)@<X8>)
{
  v50 = a7;
  v51 = a6;
  v47 = a4;
  v48 = a8;
  v45 = a3;
  v53 = a2;
  v49 = a1;
  v10 = *(a5 - 8);
  __chkstk_darwin();
  v43 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v42 = &v40 - v12;
  v14 = v13;
  v44 = v13;
  v15 = __chkstk_darwin();
  v17 = &v40 - v16;
  v41 = *(v10 + 16);
  v41(&v40 - v16, v15);
  v18 = *(v10 + 80);
  v19 = (v18 + 40) & ~v18;
  v52 = v18 | 7;
  v14 += 7;
  v20 = (v14 + v19) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  v21[2] = a5;
  v21[3] = a6;
  v22 = v50;
  v21[4] = v50;
  v40 = *(v10 + 32);
  v23 = v21 + v19;
  v24 = v21;
  v46 = v21;
  v40(v23, v17, a5);
  *(v24 + v20) = v53;
  v25 = v42;
  (v41)(v42, v49, a5);
  v26 = (v18 + 136) & ~v18;
  v27 = swift_allocObject();
  v28 = v51;
  *(v27 + 2) = a5;
  *(v27 + 3) = v28;
  *(v27 + 4) = v22;
  sub_10006A8BC(v45, v27 + 40);
  v29 = v25;
  v30 = v40;
  v40(v27 + v26, v29, a5);
  *(v27 + ((v14 + v26) & 0xFFFFFFFFFFFFFFF8)) = v53;
  v31 = v43;
  v30(v43, v49, a5);
  v32 = *(sub_100004CB8(&qword_1006359A0, &unk_100516EE0) - 8);
  v33 = (*(v32 + 80) + 40) & ~*(v32 + 80);
  v34 = (*(v32 + 64) + v18 + v33) & ~v18;
  v35 = swift_allocObject();
  v36 = v50;
  v37 = v51;
  *(v35 + 2) = a5;
  *(v35 + 3) = v37;
  *(v35 + 4) = v36;
  sub_100047F38(v47, v35 + v33, &qword_1006359A0, &unk_100516EE0);
  v30(v35 + v34, v31, a5);

  v38 = v48;
  v39 = v46;
  *v48 = sub_1000810B0;
  v38[1] = v39;
  v38[2] = &unk_100517688;
  v38[3] = v27;
  v38[4] = &unk_1005176A0;
  v38[5] = v35;
}

double static Actions.DeleteFromLibrary.action(context:)@<D0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1[1];
  *a2 = *a1;
  *(a2 + 16) = v2;
  *(a2 + 32) = a1[2];
  *(a2 + 48) = 49;
  *(a2 + 56) = sub_10006D3E4;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0x4014000000000000;
  *(a2 + 80) = &unk_1005176A8;
  *(a2 + 88) = 0;
  *(a2 + 96) = &unk_1005176B0;
  *(a2 + 104) = 0;

  return result;
}

uint64_t sub_1000809C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_1004DC42C();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100004CB8(&qword_100635D58, &unk_100517730);
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v15 - v11;
  sub_1004D8CAC();
  sub_1004DC56C();
  (*(v6 + 8))(v8, v5);
  v13 = sub_100080B80();
  (*(v10 + 8))(v12, v9);
  return v13;
}

uint64_t sub_100080B80()
{
  v1 = v0;
  v2 = sub_1004DC41C();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v16 - v6;
  v8 = sub_100004CB8(&qword_100635D58, &unk_100517730);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin();
  v12 = &v16 - v11;
  (*(v9 + 16))(&v16 - v11, v1, v8, v10);
  v13 = (*(v9 + 88))(v12, v8);
  if (v13 == enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    (*(v9 + 96))(v12, v8);
    (*(v3 + 32))(v7, v12, v2);
    (*(v3 + 16))(v5, v7, v2);
    v14 = sub_1004DD4DC();
    (*(v3 + 8))(v7, v2);
    return v14;
  }

  else if (v13 == enum case for MusicLibrary.SupportedStatus.supported<A>(_:))
  {
    return 0;
  }

  else
  {
    result = sub_1004DECCC();
    __break(1u);
  }

  return result;
}

double sub_100080E2C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 40);
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 40) = v2;
  *(a2 + 48) = 49;
  *(a2 + 56) = sub_10006D3E4;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0x4014000000000000;
  *(a2 + 80) = &unk_1005176A8;
  *(a2 + 88) = 0;
  *(a2 + 96) = &unk_1005176B0;
  *(a2 + 104) = 0;

  return result;
}

uint64_t (*Actions.DeleteFromLibrary.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x6873617274;
  *(v0 + 24) = 0xE500000000000000;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x6873617274;
  *(v1 + 24) = 0xE500000000000000;
  return sub_100073BEC;
}

uint64_t (*sub_100080F84())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x6873617274;
  *(v0 + 24) = 0xE500000000000000;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x6873617274;
  *(v1 + 24) = 0xE500000000000000;
  return sub_10007455C;
}

uint64_t sub_10008101C()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 40) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_10008111C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[26] = a4;
  v5[27] = a5;
  v5[24] = a2;
  v5[25] = a3;
  v5[23] = a1;
  return _swift_task_switch(sub_100081144, 0, 0);
}

uint64_t sub_100081144()
{
  *(v0 + 224) = sub_1004DDA4C();
  *(v0 + 232) = sub_1004DDA3C();
  v2 = sub_1004DD9BC();

  return _swift_task_switch(sub_1000811DC, v2, v1);
}

uint64_t sub_1000811DC()
{
  v1 = v0[26];
  v2 = v0[27];
  v4 = v0[24];
  v3 = v0[25];

  sub_10012F264(v4, v3, v1, v2, (v0 + 14));

  return _swift_task_switch(sub_10008126C, 0, 0);
}

uint64_t sub_10008126C(uint64_t a1)
{
  *(v1 + 240) = sub_1004DDA3C();
  v3 = sub_1004DD9BC();

  return _swift_task_switch(sub_1000812F8, v3, v2);
}

uint64_t sub_1000812F8()
{
  v1 = *(v0 + 184);

  v2 = sub_1000EA900((v0 + 112), 0, 1);
  v3 = v2;
  v4 = *(v0 + 144);
  v5 = *(v1 + 80);
  if (v5)
  {
    v6 = *(v1 + 88);
    v7 = qword_100633E08;

    if (v7 != -1)
    {
      swift_once();
    }

    v8 = sub_1004D966C();
    sub_100035430(v8, qword_10063B820);
    v9 = sub_1004D964C();
    v10 = sub_1004DDF9C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Deferring presentation…", v11, 2u);
    }

    v12 = *(v0 + 184);

    v13 = objc_allocWithZone(MSVBlockGuard);
    *(v0 + 48) = sub_100257E18;
    *(v0 + 56) = 0;
    *(v0 + 16) = _NSConcreteStackBlock;
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_100258DB8;
    *(v0 + 40) = &unk_1005D76F0;
    v14 = _Block_copy((v0 + 16));
    v15 = [v13 initWithTimeout:v14 interruptionHandler:10.0];
    _Block_release(v14);

    sub_1000699E8(v12, v0 + 16);
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    sub_10006A8BC(v0 + 16, v16 + 24);
    *(v16 + 120) = v3;
    *(v16 + 128) = v4;
    *(v16 + 129) = 1;
    *(v16 + 136) = 0;
    *(v16 + 144) = 0;
    v17 = v15;
    v3 = v3;
    v5(v12, v3, sub_100074484, v16);
    sub_10000DE74(v5, v6);
  }

  else
  {
    sub_1002562F8(v2, *(v0 + 144), 1, 0, 0);
  }

  sub_100074384(v0 + 112);
  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1000815C4()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  swift_unknownObjectWeakDestroy();
  v4 = *(v0 + 88);
  if (v4 != 255)
  {
    sub_10006A898(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), v4);
  }

  if (*(v0 + 104))
  {
  }

  if (*(v0 + 120))
  {
  }

  (*(v2 + 8))(v0 + ((v3 + 136) & ~v3), v1);

  return swift_deallocObject();
}

uint64_t sub_1000816D0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = (*(*(v2 - 8) + 80) + 136) & ~*(*(v2 - 8) + 80);
  v5 = *(v0 + ((*(*(v2 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100035B28;

  return sub_10008111C(v0 + 40, v0 + v4, v5, v2, v3);
}

uint64_t sub_1000817EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a3;
  v4[15] = a4;
  v4[12] = a1;
  v4[13] = a2;
  sub_100004CB8(&qword_100635248, &unk_100516140);
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v4[24] = type metadata accessor for MetricsEvent.Click(0);
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  sub_100004CB8(&qword_100634B30, &unk_100513D70);
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  sub_100004CB8(&qword_1006359A0, &unk_100516EE0);
  v4[30] = swift_task_alloc();
  v5 = type metadata accessor for Actions.MetricsReportingContext(0);
  v4[31] = v5;
  v4[32] = *(v5 - 8);
  v4[33] = swift_task_alloc();

  return _swift_task_switch(sub_100081A00, 0, 0);
}

uint64_t sub_100081A00()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 256);
  v3 = *(v0 + 240);
  sub_1000108DC(*(v0 + 96), v3, &qword_1006359A0, &unk_100516EE0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10001074C(*(v0 + 240), &qword_1006359A0, &unk_100516EE0);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 232);
    v7 = *(v0 + 112);
    v8 = *(v0 + 120);
    sub_100074250(*(v0 + 240), *(v0 + 264), type metadata accessor for Actions.MetricsReportingContext);
    v9 = *(v8 + 8);
    *(v0 + 272) = MusicItem.metricsTargetIdentifier.getter(v7, v9);
    *(v0 + 280) = v10;
    v11 = sub_1004D809C();
    *(v0 + 288) = v11;
    v12 = *(v11 - 8);
    v13 = *(v12 + 56);
    *(v0 + 296) = v13;
    *(v0 + 304) = (v12 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v13(v6, 1, 1, v11);
    sub_100004CB8(&qword_100635BA8, &qword_100517A00);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1005126C0;
    *(inited + 32) = MusicItem.metricsContentType.getter(v7, v9);
    *(inited + 40) = v15;
    *(inited + 48) = 0;
    *(inited + 56) = 0;
    *(inited + 64) = 0;
    *(inited + 72) = 2;
    *(v0 + 312) = sub_10004B4B4(inited);
    *(v0 + 320) = v16;
    *(v0 + 328) = v17;
    *(v0 + 344) = v18;
    swift_setDeallocating();
    swift_arrayDestroy();
    sub_1004DDA4C();
    *(v0 + 336) = sub_1004DDA3C();
    v20 = sub_1004DD9BC();

    return _swift_task_switch(sub_100081D08, v20, v19);
  }
}

uint64_t sub_100081D08()
{
  v80 = *(v0 + 344);
  v73 = *(v0 + 312);
  v76 = *(v0 + 280);
  v78 = *(v0 + 328);
  v74 = *(v0 + 272);
  v1 = *(v0 + 264);
  v2 = *(v0 + 248);
  v4 = *(v0 + 224);
  v3 = *(v0 + 232);
  v5 = *(v0 + 192);
  v6 = *(v0 + 200);
  v7 = *(v0 + 184);
  v72 = *(v0 + 176);

  sub_1000108DC(v3, v4, &qword_100634B30, &unk_100513D70);
  v8 = *(v1 + v2[7]);
  v9 = *v1;
  v10 = v1[1];
  sub_1000108DC(v1 + v2[5], v7, &qword_100635248, &unk_100516140);
  v81 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v11 = (v6 + v5[20]);
  *v11 = 0;
  v11[1] = 0;
  *v6 = v74;
  *(v6 + 8) = v76;
  *(v6 + 16) = 4101;
  sub_100047F38(v4, v6 + v5[7], &qword_100634B30, &unk_100513D70);
  *(v6 + v5[8]) = v8;
  v12 = (v6 + v5[9]);
  v75 = v9;
  v77 = v10;
  *v12 = v9;
  v12[1] = v10;
  v13 = v6 + v5[10];
  *v13 = v73;
  *(v13 + 16) = v78;
  *(v13 + 24) = v80;
  sub_1000108DC(v7, v72, &qword_100635248, &unk_100516140);
  v14 = type metadata accessor for MetricsEvent.Page(0);
  v79 = *(*(v14 - 1) + 48);
  v15 = v79(v72, 1, v14);
  v16 = *(v0 + 344);
  v17 = *(v0 + 320);
  v18 = *(v0 + 328);
  v19 = *(v0 + 312);
  v20 = *(v0 + 176);
  if (v15 == 1)
  {

    sub_100046F14(v75, v77);

    sub_100047EC8(v19, v17, v18, v16, SBYTE1(v16));
    sub_10001074C(v20, &qword_100635248, &unk_100516140);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v21 = *v20;
    v22 = v20[1];

    sub_100046F14(v75, v77);

    sub_100047EC8(v19, v17, v18, v16, SBYTE1(v16));

    sub_10007DB18(v20, type metadata accessor for MetricsEvent.Page);
  }

  v23 = *(v0 + 184);
  v24 = *(v0 + 168);
  v25 = (*(v0 + 200) + *(*(v0 + 192) + 48));
  *v25 = v21;
  v25[1] = v22;
  sub_1000108DC(v23, v24, &qword_100635248, &unk_100516140);
  v26 = v79(v24, 1, v14);
  v27 = *(v0 + 168);
  if (v26 == 1)
  {
    sub_10001074C(*(v0 + 168), &qword_100635248, &unk_100516140);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    sub_10007DB18(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 184);
  v31 = *(v0 + 160);
  v32 = (*(v0 + 200) + *(*(v0 + 192) + 52));
  *v32 = v28;
  v32[1] = v29;
  sub_1000108DC(v30, v31, &qword_100635248, &unk_100516140);
  if (v79(v31, 1, v14) == 1)
  {
    v33 = *(v0 + 296);
    v34 = *(v0 + 288);
    v35 = *(v0 + 216);
    sub_10001074C(*(v0 + 160), &qword_100635248, &unk_100516140);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 160);
    sub_1000108DC(v36 + v14[6], *(v0 + 216), &qword_100634B30, &unk_100513D70);
    sub_10007DB18(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 184);
  v38 = *(v0 + 152);
  sub_100047F38(*(v0 + 216), *(v0 + 200) + *(*(v0 + 192) + 56), &qword_100634B30, &unk_100513D70);
  sub_1000108DC(v37, v38, &qword_100635248, &unk_100516140);
  v39 = v79(v38, 1, v14);
  v40 = *(v0 + 152);
  if (v39 == 1)
  {
    sub_10001074C(*(v0 + 152), &qword_100635248, &unk_100516140);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v14[7]);

    sub_10007DB18(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 184);
  v43 = *(v0 + 144);
  *(*(v0 + 200) + *(*(v0 + 192) + 60)) = v41;
  sub_1000108DC(v42, v43, &qword_100635248, &unk_100516140);
  v44 = v79(v43, 1, v14);
  v45 = *(v0 + 144);
  if (v44 == 1)
  {
    sub_10001074C(v45, &qword_100635248, &unk_100516140);
    v46 = 1;
  }

  else
  {
    v46 = *(v45 + v14[9]);
    sub_10007DB18(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 184);
  v48 = *(v0 + 136);
  *(*(v0 + 200) + *(*(v0 + 192) + 64)) = v46;
  sub_1000108DC(v47, v48, &qword_100635248, &unk_100516140);
  v49 = v79(v48, 1, v14);
  v50 = *(v0 + 136);
  if (v49 == 1)
  {
    sub_10001074C(*(v0 + 136), &qword_100635248, &unk_100516140);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v53 = (v50 + v14[8]);
    v51 = *v53;
    v52 = v53[1];

    sub_10007DB18(v50, type metadata accessor for MetricsEvent.Page);
  }

  v54 = *(v0 + 184);
  v55 = *(v0 + 128);
  v56 = (*(v0 + 200) + *(*(v0 + 192) + 72));
  *v56 = v51;
  v56[1] = v52;
  sub_100047F38(v54, v55, &qword_100635248, &unk_100516140);
  v57 = v79(v55, 1, v14);
  v58 = *(v0 + 128);
  if (v57 == 1)
  {
    sub_10001074C(v58, &qword_100635248, &unk_100516140);
    v59 = 2;
  }

  else
  {
    v59 = *(v58 + v14[11]);
    sub_10007DB18(v58, type metadata accessor for MetricsEvent.Page);
  }

  v60 = *(v0 + 200);
  v61 = *(v0 + 208);
  v62 = *(v0 + 192);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v81;
  sub_100074250(v60, v61, type metadata accessor for MetricsEvent.Click);
  if (qword_100633B50 != -1)
  {
    swift_once();
  }

  v64 = *(v0 + 320);
  v63 = *(v0 + 328);
  v65 = *(v0 + 312);
  v66 = *(v0 + 264);
  v67 = *(v0 + 248);
  v68 = *(v0 + 232);
  v69 = *(v0 + 208);
  v70 = *(v0 + 344);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v69, *(v66 + *(v67 + 24)), *(v66 + *(v67 + 24) + 8), *(v66 + *(v67 + 36)), *(v66 + *(v67 + 36) + 8), *(v66 + *(v67 + 36) + 16));
  sub_1000742B8(v65, v64, v63, v70, SBYTE1(v70));
  sub_10007DB18(v69, type metadata accessor for MetricsEvent.Click);
  sub_10001074C(v68, &qword_100634B30, &unk_100513D70);

  return _swift_task_switch(sub_10007EE58, 0, 0);
}

uint64_t sub_1000824C0()
{
  v1 = *(v0 + 16);
  v2 = *(sub_100004CB8(&qword_1006359A0, &unk_100516EE0) - 8);
  v3 = *(v2 + 64);
  v4 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v5 = *(v1 - 8);
  v6 = *(v5 + 80);
  v7 = v0 + v4;
  v8 = type metadata accessor for Actions.MetricsReportingContext(0);
  if (!(*(*(v8 - 8) + 48))(v0 + v4, 1, v8))
  {
    v16 = v3;
    if (*(v7 + 8) >= 0xDuLL)
    {
    }

    v9 = v7 + *(v8 + 20);
    v10 = type metadata accessor for MetricsEvent.Page(0);
    if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
    {

      v15 = *(v10 + 24);
      v11 = sub_1004D809C();
      v13 = *(v11 - 8);
      v14 = v11;
      if (!(*(v13 + 48))(v9 + v15, 1))
      {
        (*(v13 + 8))(v9 + v15, v14);
      }
    }

    v3 = v16;
  }

  (*(v5 + 8))(v0 + ((v4 + v3 + v6) & ~v6), v1);

  return swift_deallocObject();
}

uint64_t sub_100082780()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(sub_100004CB8(&qword_1006359A0, &unk_100516EE0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = (v5 + *(v4 + 64) + *(*(v2 - 8) + 80)) & ~*(*(v2 - 8) + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100035C88;

  return sub_1000817EC(v0 + v5, v0 + v6, v2, v3);
}

uint64_t _s9MusicCore7ActionsO17DeleteFromLibraryO7ContextV13menuItemTitleSSvg_0()
{
  sub_1004D83FC();
  __chkstk_darwin();
  v0 = sub_1004DD3EC();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v5 = &v9[-v4];
  sub_1004DD37C();
  (*(v1 + 16))(v3, v5, v0);
  if (qword_100633A80 != -1)
  {
    swift_once();
  }

  v6 = qword_100671958;
  sub_1004D838C();
  v7 = sub_1004DD4AC();
  (*(v1 + 8))(v5, v0);
  return v7;
}

uint64_t sub_100082AB0()
{

  return swift_deallocObject();
}

double sub_100082B08(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_100082B20()
{
  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 72);
  if (v1 != 255)
  {
    sub_10006A898(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), v1);
  }

  if (*(v0 + 88))
  {
  }

  if (*(v0 + 104))
  {
  }

  if (*(v0 + 136))
  {
  }

  return swift_deallocObject();
}

void sub_100082BC0(void (*a1)(void *__return_ptr, char *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v28 = _swiftEmptyArrayStorage;
    sub_10003750C(0, v4, 0);
    v6 = _swiftEmptyArrayStorage;
    v7 = (a3 + 32);
    while (1)
    {
      v8 = *v7++;
      v22 = v8;
      a1(v23, &v22);
      if (v3)
      {
        break;
      }

      v10 = v23[0];
      v9 = v23[1];
      v11 = v24;
      v12 = v25;
      v13 = v26;
      v14 = v27;
      v28 = v6;
      v16 = v6[2];
      v15 = v6[3];
      if (v16 >= v15 >> 1)
      {
        v19 = v24;
        v20 = v27;
        v18 = v26;
        sub_10003750C((v15 > 1), v16 + 1, 1);
        v13 = v18;
        v11 = v19;
        v14 = v20;
        v6 = v28;
      }

      v6[2] = v16 + 1;
      v17 = &v6[7 * v16];
      v17[4] = v10;
      v17[5] = v9;
      v17[6] = v11;
      v17[7] = v12;
      *(v17 + 64) = v13;
      *(v17 + 9) = v14;
      if (!--v4)
      {
        return;
      }
    }

    __break(1u);
  }
}

double sub_100082CF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a2;
  v19 = a3;
  v6 = sub_100004CB8(&qword_100635DA0, &unk_100517A18);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v17 - v8;
  sub_100004CB8(&qword_100635240, &qword_1005171A0);
  __chkstk_darwin();
  v11 = &v17 - v10;
  v12 = sub_1004DDA8C();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  sub_1000108DC(a4, v20, &qword_100635DA8, &qword_100517A28);
  (*(v7 + 16))(v9, a1, v6);
  v13 = (*(v7 + 80) + 304) & ~*(v7 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = 0;
  *(v14 + 3) = 0;
  v15 = v19;
  *(v14 + 4) = v18;
  *(v14 + 5) = v15;
  sub_100047F38(v20, (v14 + 48), &qword_100635DA8, &qword_100517A28);
  (*(v7 + 32))(&v14[v13], v9, v6);

  sub_10021C658(0, 0, v11, &unk_100517A38, v14);

  return result;
}

uint64_t sub_100082F34(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = (a4 + *a4);
  v10 = swift_task_alloc();
  *(v7 + 16) = v10;
  *v10 = v7;
  v10[1] = sub_100035B28;

  return v12(a6, a7);
}

uint64_t sub_100083038(char a1)
{
  sub_1004D83FC();
  __chkstk_darwin();
  v1 = sub_1004DD3EC();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v10[-v5];
  sub_1004DD37C();
  (*(v2 + 16))(v4, v6, v1);
  if (qword_100633A80 != -1)
  {
    swift_once();
  }

  v7 = qword_100671958;
  sub_1004D838C();
  v8 = sub_1004DD4AC();
  (*(v2 + 8))(v6, v1);
  return v8;
}

uint64_t Actions.DeleteOrRemoveDownload.Choice.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x6F4465766F6D6572;
  }

  if (a1 == 1)
  {
    return 0xD000000000000011;
  }

  return 0x6C65636E6163;
}

uint64_t sub_1000832DC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD000000000000011;
  v4 = 0x80000001004E9050;
  v5 = 0xE600000000000000;
  if (v2 == 1)
  {
    v5 = 0x80000001004E9050;
  }

  else
  {
    v3 = 0x6C65636E6163;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x6F4465766F6D6572;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xEE0064616F6C6E77;
  }

  v8 = 0xD000000000000011;
  if (*a2 != 1)
  {
    v8 = 0x6C65636E6163;
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6F4465766F6D6572;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xEE0064616F6C6E77;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1004DF08C();
  }

  return v11 & 1;
}

Swift::Int sub_1000833D8()
{
  sub_1004DF26C();
  sub_1004DD55C();

  return sub_1004DF2BC();
}

uint64_t sub_100083488(uint64_t a1)
{
  sub_1004DD55C();
}

Swift::Int sub_100083524()
{
  sub_1004DF26C();
  sub_1004DD55C();

  return sub_1004DF2BC();
}

unint64_t sub_1000835D0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s9MusicCore7ActionsO22DeleteOrRemoveDownloadO6ChoiceO8rawValueAGSgSS_tcfC_0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_100083600(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE0064616F6C6E77;
  v4 = 0x80000001004E9050;
  v5 = 0xD000000000000011;
  if (v2 != 1)
  {
    v5 = 0x6C65636E6163;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6F4465766F6D6572;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t static Actions.DeleteOrRemoveDownload.action(context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100087EF8(a1, a2);
  result = swift_allocObject();
  *(result + 16) = &unk_100517740;
  *(result + 24) = 0;
  *(a2 + 192) = 51;
  *(a2 + 208) = 0;
  *(a2 + 216) = 0x403E000000000000;
  *(a2 + 200) = sub_100083718;
  *(a2 + 224) = &unk_100517758;
  *(a2 + 232) = result;
  *(a2 + 240) = &unk_100517748;
  *(a2 + 248) = 0;
  return result;
}

uint64_t sub_100083718(uint64_t (**a1)(void))
{
  sub_100004CB8(&qword_100635DB0, &qword_100517A68);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1005126C0;
  *(inited + 32) = (*a1)();
  *(inited + 40) = v3;
  *(inited + 48) = a1[4]();
  *(inited + 56) = v4;
  v5 = static ActionSupportedStatus.allSupported(_:)(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  return v5;
}

uint64_t sub_1000837D0(uint64_t a1, uint64_t a2)
{
  v2[47] = a1;
  v2[48] = a2;
  sub_1004DDA4C();
  v2[49] = sub_1004DDA3C();
  v4 = sub_1004DD9BC();

  return _swift_task_switch(sub_100083868, v4, v3);
}

uint64_t sub_100083868()
{
  v1 = *(v0 + 384);
  v2 = *(v0 + 376);

  sub_100087EF8(v2, v0 + 16);
  v4 = *(v0 + 192);
  v3 = *(v0 + 200);
  v5 = swift_task_alloc();
  *(v5 + 16) = v0 + 16;
  *(v5 + 24) = v1;

  sub_100082BC0(sub_100088C94, v5, &off_1005D1368);
  v7 = v6;

  *(v0 + 304) = 0;
  *(v0 + 312) = 0;
  *(v0 + 320) = v4;
  *(v0 + 328) = v3;
  *(v0 + 336) = 1;
  *(v0 + 344) = 0;
  *(v0 + 352) = 1;
  *(v0 + 360) = v7;
  *(v0 + 368) = 0;
  v8 = sub_1000EA900((v0 + 304), 0, 1);
  v9 = v8;
  v10 = *(v0 + 336);
  v11 = *(v0 + 176);
  if (v11)
  {
    v12 = *(v0 + 184);
    v13 = qword_100633E08;

    if (v13 != -1)
    {
      swift_once();
    }

    v14 = sub_1004D966C();
    sub_100035430(v14, qword_10063B820);
    v15 = sub_1004D964C();
    v16 = sub_1004DDF9C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Deferring presentation…", v17, 2u);
    }

    v18 = objc_allocWithZone(MSVBlockGuard);
    *(v0 + 240) = sub_100257E18;
    *(v0 + 248) = 0;
    *(v0 + 208) = _NSConcreteStackBlock;
    *(v0 + 216) = 1107296256;
    *(v0 + 224) = sub_100258DB8;
    *(v0 + 232) = &unk_1005D7AA8;
    v19 = _Block_copy((v0 + 208));
    v20 = [v18 initWithTimeout:v19 interruptionHandler:10.0];
    _Block_release(v19);

    sub_1000699E8(v0 + 96, v0 + 208);
    v21 = swift_allocObject();
    *(v21 + 16) = v20;
    sub_10006A8BC(v0 + 208, v21 + 24);
    *(v21 + 120) = v9;
    *(v21 + 128) = v10;
    *(v21 + 129) = 1;
    *(v21 + 136) = 0;
    *(v21 + 144) = 0;
    v22 = v20;
    v9 = v9;
    v11(v0 + 96, v9, sub_100074484, v21);
    sub_10000DE74(v11, v12);
  }

  else
  {
    sub_1002562F8(v8, *(v0 + 336), 1, 0, 0);
  }

  sub_100074384(v0 + 304);
  sub_100088CB4(v0 + 16);
  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_100083BBC@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_100004CB8(&qword_100635DA0, &unk_100517A18);
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v22 - v10;
  v12 = *a1;
  v26 = a2;
  if (!v12)
  {
    v25 = 2;
    v23 = 0x6F4465766F6D6572;
    v13 = 0xEE0064616F6C6E77;
LABEL_6:
    v14 = &v29;
    goto LABEL_7;
  }

  if (v12 != 1)
  {
    v25 = 0;
    v23 = 0x6C65636E6163;
    v13 = 0xE600000000000000;
    goto LABEL_6;
  }

  v24 = 0x80000001004E9050;
  v25 = 1;
  v13 = 0xD000000000000011;
  v14 = &v28;
LABEL_7:
  *(v14 - 32) = v13;
  v15 = sub_100083038(v12);
  v22 = v16;
  sub_100087EF8(v26, v27);
  (*(v9 + 16))(v11, a3, v8);
  v17 = (*(v9 + 80) + 216) & ~*(v9 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v12;
  sub_100088ECC(v27, v18 + 24);
  result = (*(v9 + 32))(v18 + v17, v11, v8);
  v20 = v24;
  *a4 = v23;
  *(a4 + 8) = v20;
  v21 = v22;
  *(a4 + 16) = v15;
  *(a4 + 24) = v21;
  *(a4 + 32) = v25;
  *(a4 + 40) = &unk_100517A50;
  *(a4 + 48) = v18;
  return result;
}

uint64_t sub_100083E20(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 208) = a4;
  *(v5 + 216) = a5;
  *(v5 + 264) = a3;
  v6 = sub_100004CB8(&qword_100635DA0, &unk_100517A18);
  *(v5 + 224) = v6;
  v7 = *(v6 - 8);
  *(v5 + 232) = v7;
  *(v5 + 240) = *(v7 + 64);
  *(v5 + 248) = swift_task_alloc();
  sub_100004CB8(&qword_100635240, &qword_1005171A0);
  *(v5 + 256) = swift_task_alloc();

  return _swift_task_switch(sub_100083F30, 0, 0);
}

uint64_t sub_100083F30()
{
  v2 = *(v0 + 248);
  v1 = *(v0 + 256);
  v3 = *(v0 + 232);
  v5 = *(v0 + 216);
  v4 = *(v0 + 224);
  v6 = *(v0 + 208);
  v7 = *(v0 + 264);
  v8 = sub_1004DDA8C();
  (*(*(v8 - 8) + 56))(v1, 1, 1, v8);
  sub_100087EF8(v6, v0 + 16);
  (*(v3 + 16))(v2, v5, v4);
  v9 = (*(v3 + 80) + 232) & ~*(v3 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  *(v10 + 32) = v7;
  sub_100088ECC(v0 + 16, v10 + 40);
  (*(v3 + 32))(v10 + v9, v2, v4);
  sub_10021C658(0, 0, v1, &unk_100517A60, v10);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1000840B0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a5;
  *(v6 + 24) = a6;
  *(v6 + 49) = a4;
  return _swift_task_switch(sub_1000840D4, 0, 0);
}

uint64_t sub_1000840D4()
{
  if (!*(v0 + 49))
  {
    v5 = (*(*(v0 + 16) + 48) + **(*(v0 + 16) + 48));
    v1 = swift_task_alloc();
    *(v0 + 32) = v1;
    *v1 = v0;
    v2 = sub_1000842D4;
    goto LABEL_5;
  }

  if (*(v0 + 49) == 1)
  {
    v5 = (*(*(v0 + 16) + 16) + **(*(v0 + 16) + 16));
    v1 = swift_task_alloc();
    *(v0 + 40) = v1;
    *v1 = v0;
    v2 = sub_100084490;
LABEL_5:
    v1[1] = v2;

    return v5();
  }

  *(v0 + 48) = 2;
  sub_100004CB8(&qword_100635DA0, &unk_100517A18);
  sub_1004DD9DC();
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1000842D4()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return _swift_task_switch(sub_100084404, 0, 0);
  }
}

uint64_t sub_100084404()
{
  *(v0 + 48) = *(v0 + 49);
  sub_100004CB8(&qword_100635DA0, &unk_100517A18);
  sub_1004DD9DC();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100084490()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return _swift_task_switch(sub_10008926C, 0, 0);
  }
}

uint64_t sub_1000845C0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10007330C;

  return sub_1000837D0(a1, a2);
}

uint64_t sub_10008467C()
{
  v3 = (*(*(v0 + 16) + 64) + **(*(v0 + 16) + 64));
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_10007F594;

  return v3();
}

uint64_t sub_100084768@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100087EF8(a1, a2);
  result = swift_allocObject();
  *(result + 16) = &unk_100517740;
  *(result + 24) = 0;
  *(a2 + 192) = 51;
  *(a2 + 208) = 0;
  *(a2 + 216) = 0x403E000000000000;
  *(a2 + 200) = sub_100083718;
  *(a2 + 224) = &unk_1005179F8;
  *(a2 + 232) = result;
  *(a2 + 240) = &unk_100517748;
  *(a2 + 248) = 0;
  return result;
}

uint64_t Actions.DeleteOrRemoveDownload.Context.init<A>(item:library:presentationSource:metricsReportingContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t (**a8)()@<X8>)
{
  v81 = a4;
  v82 = a1;
  v72 = a8;
  v73 = a3;
  v71 = *(sub_100004CB8(&qword_1006359A0, &unk_100516EE0) - 8);
  v70 = *(v71 + 64);
  __chkstk_darwin();
  v67 = &v59 - v13;
  v14 = *(a5 - 1);
  __chkstk_darwin();
  v66 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v62 = &v59 - v16;
  __chkstk_darwin();
  v61 = &v59 - v17;
  __chkstk_darwin();
  v63 = &v59 - v18;
  v83 = v19;
  v20 = __chkstk_darwin();
  v22 = &v59 - v21;
  v23 = *(v14 + 16);
  v75 = v14 + 16;
  v23(&v59 - v21, a1, a5, v20);
  v24 = v23;
  v64 = *(v14 + 80);
  v68 = v14;
  v25 = (v64 + 48) & ~v64;
  v74 = v64 | 7;
  v26 = swift_allocObject();
  v69 = v26;
  *(v26 + 2) = a5;
  *(v26 + 3) = a6;
  v27 = a7;
  v76 = a7;
  *(v26 + 4) = a7;
  *(v26 + 5) = a2;
  v80 = a2;
  v28 = v14 + 32;
  v29 = *(v14 + 32);
  v77 = v28;
  v78 = a6;
  v29(v26 + v25, v22, a5);
  v30 = v63;
  v79 = v24;
  v24(v63, v82, a5);
  v31 = swift_allocObject();
  v65 = v31;
  *(v31 + 2) = a5;
  *(v31 + 3) = a6;
  *(v31 + 4) = v27;
  *(v31 + 5) = a2;
  v29(v31 + v25, v30, a5);
  v32 = v61;
  v33 = v82;
  v24(v61, v82, a5);
  v34 = swift_allocObject();
  v63 = v34;
  v35 = v78;
  *(v34 + 2) = a5;
  *(v34 + 3) = v35;
  v36 = v76;
  v37 = v80;
  *(v34 + 4) = v76;
  *(v34 + 5) = v37;
  v29(&v34[v25], v32, a5);
  v38 = v29;
  v60 = v29;
  v39 = v62;
  v79(v62, v33, a5);
  v40 = swift_allocObject();
  v61 = v40;
  v41 = v78;
  *(v40 + 2) = a5;
  *(v40 + 3) = v41;
  *(v40 + 4) = v36;
  *(v40 + 5) = v37;
  v38(&v40[v25], v39, a5);
  v42 = v67;
  sub_1000108DC(v81, v67, &qword_1006359A0, &unk_100516EE0);
  v43 = v66;
  v44 = v82;
  v79(v66, v82, a5);
  v45 = (*(v71 + 80) + 40) & ~*(v71 + 80);
  v46 = (v70 + v64 + v45) & ~v64;
  v47 = swift_allocObject();
  *(v47 + 2) = a5;
  *(v47 + 3) = v41;
  *(v47 + 4) = v76;
  sub_100047F38(v42, v47 + v45, &qword_1006359A0, &unk_100516EE0);
  v60(v47 + v46, v43, a5);
  v48 = v72;
  v49 = v73;
  sub_1000699E8(v73, (v72 + 10));
  swift_retain_n();
  v50 = v44;
  v51 = sub_10008622C(v44, a5);
  v53 = v52;
  sub_10001074C(v81, &qword_1006359A0, &unk_100516EE0);
  sub_10007DC74(v49);
  result = (*(v68 + 8))(v50, a5);
  v55 = v69;
  *v48 = sub_100088030;
  v48[1] = v55;
  v56 = v65;
  v48[2] = &unk_100517770;
  v48[3] = v56;
  v57 = v63;
  v48[4] = sub_100088134;
  v48[5] = v57;
  v58 = v61;
  v48[6] = &unk_100517780;
  v48[7] = v58;
  v48[8] = &unk_100517790;
  v48[9] = v47;
  v48[22] = v51;
  v48[23] = v53;
  return result;
}

uint64_t sub_100084D94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_1004DC42C();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100004CB8(&qword_100635D58, &unk_100517730);
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v15 - v11;
  sub_1004D8CAC();
  sub_1004DC56C();
  (*(v6 + 8))(v8, v5);
  v13 = sub_100080B80();
  (*(v10 + 8))(v12, v9);
  return v13;
}

uint64_t sub_100084F50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_100035C88;

  return MusicLibrary.remove<A>(_:)(a2, a3, a4);
}

uint64_t sub_100085008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22[2] = a1;
  v22[3] = a5;
  v22[1] = a3;
  v22[0] = sub_1004DC5CC();
  v5 = *(v22[0] - 8);
  __chkstk_darwin();
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1004DC5DC();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100004CB8(&qword_100635D98, &unk_100517A08);
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = v22 - v16;
  sub_1004D8C5C();
  sub_1004DC56C();
  (*(v9 + 8))(v11, v8);
  (*(v13 + 16))(v15, v17, v12);
  v18 = (*(v13 + 88))(v15, v12);
  if (v18 == enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    (*(v13 + 96))(v15, v12);
    v19 = v22[0];
    (*(v5 + 32))(v7, v15, v22[0]);
    v20 = sub_10009CA18(v7);
    (*(v5 + 8))(v7, v19);
LABEL_5:
    (*(v13 + 8))(v17, v12);
    return v20;
  }

  if (v18 == enum case for MusicLibrary.SupportedStatus.supported<A>(_:))
  {
    v20 = 0;
    goto LABEL_5;
  }

  result = sub_1004DECCC();
  __break(1u);
  return result;
}

uint64_t sub_100085384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_100035C88;

  return MusicLibrary.removeDownload<A>(_:)(a2, a3, a4);
}

uint64_t sub_10008543C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a3;
  v4[12] = a4;
  v4[9] = a1;
  v4[10] = a2;
  sub_100004CB8(&qword_100635248, &unk_100516140);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = type metadata accessor for MetricsEvent.Click(0);
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  sub_100004CB8(&qword_100634B30, &unk_100513D70);
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  sub_100004CB8(&qword_1006359A0, &unk_100516EE0);
  v4[27] = swift_task_alloc();
  v5 = type metadata accessor for Actions.MetricsReportingContext(0);
  v4[28] = v5;
  v4[29] = *(v5 - 8);
  v4[30] = swift_task_alloc();

  return _swift_task_switch(sub_100085650, 0, 0);
}

uint64_t sub_100085650()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);
  v3 = *(v0 + 216);
  sub_1000108DC(*(v0 + 72), v3, &qword_1006359A0, &unk_100516EE0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10001074C(*(v0 + 216), &qword_1006359A0, &unk_100516EE0);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 208);
    v7 = *(v0 + 88);
    v8 = *(v0 + 96);
    sub_100074250(*(v0 + 216), *(v0 + 240), type metadata accessor for Actions.MetricsReportingContext);
    v9 = *(v8 + 8);
    *(v0 + 248) = MusicItem.metricsTargetIdentifier.getter(v7, v9);
    *(v0 + 256) = v10;
    v11 = sub_1004D809C();
    *(v0 + 264) = v11;
    v12 = *(v11 - 8);
    v13 = *(v12 + 56);
    *(v0 + 272) = v13;
    *(v0 + 280) = (v12 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v13(v6, 1, 1, v11);
    sub_100004CB8(&qword_100635BA8, &qword_100517A00);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100511DA0;
    *(inited + 32) = MusicItem.metricsContentType.getter(v7, v9);
    *(inited + 40) = v15;
    *(inited + 48) = 0;
    *(v0 + 288) = sub_10004B4B4(inited);
    *(v0 + 296) = v16;
    *(v0 + 304) = v17;
    *(v0 + 320) = v18;
    swift_setDeallocating();
    sub_10007FCDC(inited + 32);
    sub_1004DDA4C();
    *(v0 + 312) = sub_1004DDA3C();
    v20 = sub_1004DD9BC();

    return _swift_task_switch(sub_100085940, v20, v19);
  }
}

uint64_t sub_100085940()
{
  v80 = *(v0 + 320);
  v73 = *(v0 + 288);
  v76 = *(v0 + 256);
  v78 = *(v0 + 304);
  v74 = *(v0 + 248);
  v1 = *(v0 + 240);
  v2 = *(v0 + 224);
  v4 = *(v0 + 200);
  v3 = *(v0 + 208);
  v5 = *(v0 + 168);
  v6 = *(v0 + 176);
  v7 = *(v0 + 160);
  v72 = *(v0 + 152);

  sub_1000108DC(v3, v4, &qword_100634B30, &unk_100513D70);
  v8 = *(v1 + v2[7]);
  v9 = *v1;
  v10 = v1[1];
  sub_1000108DC(v1 + v2[5], v7, &qword_100635248, &unk_100516140);
  v81 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v11 = (v6 + v5[20]);
  *v11 = 0;
  v11[1] = 0;
  *v6 = v74;
  *(v6 + 8) = v76;
  *(v6 + 16) = 9733;
  sub_100047F38(v4, v6 + v5[7], &qword_100634B30, &unk_100513D70);
  *(v6 + v5[8]) = v8;
  v12 = (v6 + v5[9]);
  v75 = v9;
  v77 = v10;
  *v12 = v9;
  v12[1] = v10;
  v13 = v6 + v5[10];
  *v13 = v73;
  *(v13 + 16) = v78;
  *(v13 + 24) = v80;
  sub_1000108DC(v7, v72, &qword_100635248, &unk_100516140);
  v14 = type metadata accessor for MetricsEvent.Page(0);
  v79 = *(*(v14 - 1) + 48);
  v15 = v79(v72, 1, v14);
  v16 = *(v0 + 320);
  v17 = *(v0 + 296);
  v18 = *(v0 + 304);
  v19 = *(v0 + 288);
  v20 = *(v0 + 152);
  if (v15 == 1)
  {

    sub_100046F14(v75, v77);

    sub_100047EC8(v19, v17, v18, v16, SBYTE1(v16));
    sub_10001074C(v20, &qword_100635248, &unk_100516140);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v21 = *v20;
    v22 = v20[1];

    sub_100046F14(v75, v77);

    sub_100047EC8(v19, v17, v18, v16, SBYTE1(v16));

    sub_10007DB18(v20, type metadata accessor for MetricsEvent.Page);
  }

  v23 = *(v0 + 160);
  v24 = *(v0 + 144);
  v25 = (*(v0 + 176) + *(*(v0 + 168) + 48));
  *v25 = v21;
  v25[1] = v22;
  sub_1000108DC(v23, v24, &qword_100635248, &unk_100516140);
  v26 = v79(v24, 1, v14);
  v27 = *(v0 + 144);
  if (v26 == 1)
  {
    sub_10001074C(*(v0 + 144), &qword_100635248, &unk_100516140);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    sub_10007DB18(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 160);
  v31 = *(v0 + 136);
  v32 = (*(v0 + 176) + *(*(v0 + 168) + 52));
  *v32 = v28;
  v32[1] = v29;
  sub_1000108DC(v30, v31, &qword_100635248, &unk_100516140);
  if (v79(v31, 1, v14) == 1)
  {
    v33 = *(v0 + 272);
    v34 = *(v0 + 264);
    v35 = *(v0 + 192);
    sub_10001074C(*(v0 + 136), &qword_100635248, &unk_100516140);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 136);
    sub_1000108DC(v36 + v14[6], *(v0 + 192), &qword_100634B30, &unk_100513D70);
    sub_10007DB18(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 160);
  v38 = *(v0 + 128);
  sub_100047F38(*(v0 + 192), *(v0 + 176) + *(*(v0 + 168) + 56), &qword_100634B30, &unk_100513D70);
  sub_1000108DC(v37, v38, &qword_100635248, &unk_100516140);
  v39 = v79(v38, 1, v14);
  v40 = *(v0 + 128);
  if (v39 == 1)
  {
    sub_10001074C(*(v0 + 128), &qword_100635248, &unk_100516140);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v14[7]);

    sub_10007DB18(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 160);
  v43 = *(v0 + 120);
  *(*(v0 + 176) + *(*(v0 + 168) + 60)) = v41;
  sub_1000108DC(v42, v43, &qword_100635248, &unk_100516140);
  v44 = v79(v43, 1, v14);
  v45 = *(v0 + 120);
  if (v44 == 1)
  {
    sub_10001074C(v45, &qword_100635248, &unk_100516140);
    v46 = 1;
  }

  else
  {
    v46 = *(v45 + v14[9]);
    sub_10007DB18(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 160);
  v48 = *(v0 + 112);
  *(*(v0 + 176) + *(*(v0 + 168) + 64)) = v46;
  sub_1000108DC(v47, v48, &qword_100635248, &unk_100516140);
  v49 = v79(v48, 1, v14);
  v50 = *(v0 + 112);
  if (v49 == 1)
  {
    sub_10001074C(*(v0 + 112), &qword_100635248, &unk_100516140);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v53 = (v50 + v14[8]);
    v51 = *v53;
    v52 = v53[1];

    sub_10007DB18(v50, type metadata accessor for MetricsEvent.Page);
  }

  v54 = *(v0 + 160);
  v55 = *(v0 + 104);
  v56 = (*(v0 + 176) + *(*(v0 + 168) + 72));
  *v56 = v51;
  v56[1] = v52;
  sub_100047F38(v54, v55, &qword_100635248, &unk_100516140);
  v57 = v79(v55, 1, v14);
  v58 = *(v0 + 104);
  if (v57 == 1)
  {
    sub_10001074C(v58, &qword_100635248, &unk_100516140);
    v59 = 2;
  }

  else
  {
    v59 = *(v58 + v14[11]);
    sub_10007DB18(v58, type metadata accessor for MetricsEvent.Page);
  }

  v60 = *(v0 + 176);
  v61 = *(v0 + 184);
  v62 = *(v0 + 168);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v81;
  sub_100074250(v60, v61, type metadata accessor for MetricsEvent.Click);
  if (qword_100633B50 != -1)
  {
    swift_once();
  }

  v64 = *(v0 + 296);
  v63 = *(v0 + 304);
  v65 = *(v0 + 288);
  v66 = *(v0 + 240);
  v67 = *(v0 + 224);
  v68 = *(v0 + 208);
  v69 = *(v0 + 184);
  v70 = *(v0 + 320);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v69, *(v66 + *(v67 + 24)), *(v66 + *(v67 + 24) + 8), *(v66 + *(v67 + 36)), *(v66 + *(v67 + 36) + 8), *(v66 + *(v67 + 36) + 16));
  sub_1000742B8(v65, v64, v63, v70, SBYTE1(v70));
  sub_10007DB18(v69, type metadata accessor for MetricsEvent.Click);
  sub_10001074C(v68, &qword_100634B30, &unk_100513D70);

  return _swift_task_switch(sub_1000860F4, 0, 0);
}

uint64_t sub_1000860F4()
{
  sub_10007DB18(*(v0 + 240), type metadata accessor for Actions.MetricsReportingContext);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10008622C(char *a1, char *a2)
{
  v133 = a1;
  v104 = sub_1004DCA3C();
  v102 = *(v104 - 8);
  __chkstk_darwin();
  v105 = &v98 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_1004D91FC();
  v103 = *(v108 - 8);
  __chkstk_darwin();
  v107 = &v98 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_1004DCB3C();
  v106 = *(v111 - 8);
  __chkstk_darwin();
  v110 = &v98 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_1004D92AC();
  v109 = *(v114 - 8);
  __chkstk_darwin();
  v113 = &v98 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_1004D924C();
  v112 = *(v117 - 8);
  __chkstk_darwin();
  v116 = &v98 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_1004D91EC();
  v115 = *(v119 - 8);
  __chkstk_darwin();
  v118 = &v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_1004D8FEC();
  v120 = *(v123 - 8);
  __chkstk_darwin();
  v122 = &v98 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_1004DC95C();
  v121 = *(v126 - 8);
  __chkstk_darwin();
  v125 = &v98 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_1004DD05C();
  v124 = *(v129 - 8);
  __chkstk_darwin();
  v128 = &v98 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = sub_1004DC2DC();
  v127 = *(v131 - 8);
  __chkstk_darwin();
  v13 = &v98 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004D83FC();
  __chkstk_darwin();
  v132 = &v98 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1004DD3EC();
  v16 = *(v15 - 8);
  __chkstk_darwin();
  v18 = &v98 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v20 = &v98 - v19;
  v21 = sub_1004DCA0C();
  v130 = *(v21 - 8);
  __chkstk_darwin();
  v23 = &v98 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(a2 - 1);
  __chkstk_darwin();
  v99 = &v98 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v101 = &v98 - v26;
  v27 = __chkstk_darwin();
  v29 = &v98 - v28;
  v134 = v24;
  v100 = *(v24 + 16);
  (v100)(&v98 - v28, v133, a2, v27);
  if (swift_dynamicCast())
  {
    v133 = a2;
    sub_1004DD37C();
    v16[2](v18, v20, v15);
    v30 = v16;
    if (qword_100633A80 != -1)
    {
      swift_once();
    }

    v31 = qword_100671958;
    sub_1004D838C();
    v32 = sub_1004DD4AC();
    (v30[1])(v20, v15);
    (*(v130 + 8))(v23, v21);
    (*(v134 + 8))(v29, v133);
    return v32;
  }

  v98 = v18;
  v130 = v15;
  v33 = v16;
  v34 = v131;
  if (swift_dynamicCast())
  {
    v129 = v29;
    v35 = v13;
    sub_1004DD37C();
    v36 = v33;
    v37 = v33[2];
    v38 = v130;
    (v37)(v98, v20, v130);
    v39 = v134;
    if (qword_100633A80 != -1)
    {
      swift_once();
    }

    v40 = qword_100671958;
    sub_1004D838C();
    v41 = sub_1004DD4AC();
    v36[1](v20, v38);
    (*(v127 + 8))(v35, v34);
    v32 = v41;
    (*(v39 + 8))(v129, a2);
    return v32;
  }

  v42 = a2;
  if (swift_dynamicCast())
  {
    sub_1004DD37C();
    v43 = v33;
    v44 = v33[2];
    v45 = v130;
    (v44)(v98, v20, v130);
    if (qword_100633A80 != -1)
    {
      swift_once();
    }

    v46 = qword_100671958;
    sub_1004D838C();
    v47 = sub_1004DD4AC();
    v43[1](v20, v45);
    (*(v124 + 8))(v128, v129);
LABEL_17:
    v52 = *(v134 + 8);
    v53 = v29;
    v54 = a2;
    v32 = v47;
LABEL_18:
    v52(v53, v54);
    return v32;
  }

  if (swift_dynamicCast())
  {
    sub_1004DD37C();
    v48 = v33;
    v49 = v33[2];
    v50 = v130;
    (v49)(v98, v20, v130);
    if (qword_100633A80 != -1)
    {
      swift_once();
    }

    v51 = qword_100671958;
    sub_1004D838C();
    v47 = sub_1004DD4AC();
    v48[1](v20, v50);
    (*(v121 + 8))(v125, v126);
    goto LABEL_17;
  }

  v56 = swift_dynamicCast();
  v57 = v29;
  v58 = v33;
  v59 = v130;
  if (v56)
  {
    sub_1004DD37C();
    (v33[2])(v98, v20, v59);
    if (qword_100633A80 != -1)
    {
      swift_once();
    }

    v60 = qword_100671958;
    sub_1004D838C();
    v61 = sub_1004DD4AC();
    v33[1](v20, v59);
    (*(v120 + 8))(v122, v123);
    v62 = v42;
    v32 = v61;
    (*(v134 + 8))(v29, v62);
    return v32;
  }

  v131 = v20;
  v63 = v118;
  v64 = v119;
  if (swift_dynamicCast())
  {
    (*(v115 + 8))(v63, v64);
LABEL_28:
    v67 = v131;
    (*(v134 + 8))(v57, v42);
    sub_1004DD37C();
    (*(v58 + 2))(v98, v67, v59);
    if (qword_100633A80 != -1)
    {
      swift_once();
    }

    v68 = qword_100671958;
    sub_1004D838C();
    v32 = sub_1004DD4AC();
    (*(v58 + 1))(v67, v59);
    return v32;
  }

  v128 = v33;
  v65 = v116;
  v66 = v117;
  if (swift_dynamicCast())
  {
    (*(v112 + 8))(v65, v66);
    v59 = v130;
    v58 = v128;
    goto LABEL_28;
  }

  v69 = swift_dynamicCast();
  v70 = v131;
  if (v69)
  {
    sub_1004DD37C();
    v71 = v128;
    v72 = v130;
    (*(v128 + 2))(v98, v70, v130);
    if (qword_100633A80 != -1)
    {
      swift_once();
    }

    v73 = qword_100671958;
    sub_1004D838C();
    v74 = sub_1004DD4AC();
    (*(v71 + 1))(v70, v72);
    (*(v109 + 8))(v113, v114);
LABEL_43:
    v52 = *(v134 + 8);
    v53 = v57;
LABEL_44:
    v54 = v42;
    v32 = v74;
    goto LABEL_18;
  }

  v75 = swift_dynamicCast();
  v76 = v130;
  v77 = v128;
  if (v75)
  {
    sub_1004DD37C();
    (*(v77 + 2))(v98, v70, v76);
    if (qword_100633A80 != -1)
    {
      swift_once();
    }

    v78 = qword_100671958;
    sub_1004D838C();
    v74 = sub_1004DD4AC();
    (*(v77 + 1))(v70, v76);
    (*(v106 + 8))(v110, v111);
    goto LABEL_43;
  }

  if (swift_dynamicCast())
  {
    sub_1004DD37C();
    (*(v77 + 2))(v98, v70, v76);
    if (qword_100633A80 != -1)
    {
      swift_once();
    }

    v79 = qword_100671958;
    sub_1004D838C();
    v74 = sub_1004DD4AC();
    (*(v77 + 1))(v70, v76);
    (*(v103 + 8))(v107, v108);
    goto LABEL_43;
  }

  v129 = v57;
  v80 = v104;
  if (swift_dynamicCast())
  {
    sub_1004DD37C();
    (*(v77 + 2))(v98, v70, v76);
    if (qword_100633A80 != -1)
    {
      swift_once();
    }

    v81 = qword_100671958;
    sub_1004D838C();
    v74 = sub_1004DD4AC();
    (*(v77 + 1))(v70, v76);
    (*(v102 + 8))(v105, v80);
    v52 = *(v134 + 8);
    v53 = v129;
    goto LABEL_44;
  }

  if (qword_100633A88 != -1)
  {
    swift_once();
  }

  v82 = sub_1004D966C();
  sub_100035430(v82, static Logger.actions);
  v83 = v101;
  v84 = v100;
  v100(v101, v133, v42);
  v85 = sub_1004D964C();
  v86 = sub_1004DDF8C();
  if (os_log_type_enabled(v85, v86))
  {
    v87 = swift_slowAlloc();
    v133 = swift_slowAlloc();
    v135 = v133;
    *v87 = 136315138;
    v84(v99, v83, v42);
    v88 = sub_1004DD4DC();
    v89 = v42;
    v91 = v90;
    v92 = *(v134 + 8);
    v92(v83, v89);
    v93 = sub_1000343A8(v88, v91, &v135);
    v42 = v89;
    v70 = v20;

    *(v87 + 4) = v93;
    _os_log_impl(&_mh_execute_header, v85, v86, "DeleteOrRemoveDownload: unhandled item type=%s", v87, 0xCu);
    sub_100008D24(v133);

    v77 = v33;
  }

  else
  {

    v92 = *(v134 + 8);
    v92(v83, v42);
  }

  sub_1004DD37C();
  v94 = v130;
  (*(v77 + 2))(v98, v70, v130);
  if (qword_100633A80 != -1)
  {
    swift_once();
  }

  v95 = qword_100671958;
  sub_1004D838C();
  v96 = sub_1004DD4AC();
  (*(v77 + 1))(v70, v94);
  v97 = v42;
  v32 = v96;
  v92(v129, v97);
  return v32;
}

uint64_t Actions.DeleteOrRemoveDownload.Context.menuItemTitle.getter()
{
  sub_1004D83FC();
  __chkstk_darwin();
  v0 = sub_1004DD3EC();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v5 = &v9[-v4];
  sub_1004DD37C();
  (*(v1 + 16))(v3, v5, v0);
  if (qword_100633A80 != -1)
  {
    swift_once();
  }

  v6 = qword_100671958;
  sub_1004D838C();
  v7 = sub_1004DD4AC();
  (*(v1 + 8))(v5, v0);
  return v7;
}