uint64_t sub_1009F2204(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_1009D137C(a1, v6, &qword_1011A86C0, &qword_100EEDC80, "%{public}s: waiting for perform to return…");
}

uint64_t sub_1009F2260(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100008F30;

  return sub_1009F0608(a1, v4, v5, (v1 + 32));
}

uint64_t sub_1009F2324(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_1009D137C(a1, v6, &qword_1011A86C0, &qword_100EEDC80, "%{public}s: waiting for finish to return…");
}

uint64_t sub_1009F23A4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100008F30;

  return sub_1009F0F1C(a1, v4, v5, v1 + 32, (v1 + 288));
}

uint64_t sub_1009F246C()
{

  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 144);
  if (v1 != 255)
  {
    sub_10012B804(*(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), v1);
  }

  if (*(v0 + 160))
  {
  }

  if (*(v0 + 176))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1009F254C(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for URL() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10002F3F4;

  return sub_10097813C(a1, a2, v2 + v7);
}

uint64_t sub_1009F262C(uint64_t a1)
{
  v2 = v1[4];
  v6[2] = v1[3];
  v6[3] = v2;
  v3 = v1[6];
  v6[4] = v1[5];
  v6[5] = v3;
  v4 = v1[2];
  v6[0] = v1[1];
  v6[1] = v4;
  return sub_1009E0A80(a1, v6, "%{public}s: waiting for perform to return…");
}

uint64_t sub_1009F2670(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100008F30;

  return sub_1009F0B00(a1, v4, v5, (v1 + 32));
}

uint64_t sub_1009F2734(uint64_t a1)
{
  v2 = v1[4];
  v6[2] = v1[3];
  v6[3] = v2;
  v3 = v1[6];
  v6[4] = v1[5];
  v6[5] = v3;
  v4 = v1[2];
  v6[0] = v1[1];
  v6[1] = v4;
  return sub_1009E0A80(a1, v6, "%{public}s: waiting for finish to return…");
}

uint64_t sub_1009F2778(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_1009D137C(a1, v6, &qword_1011A8710, &qword_100EEDD70, "%{public}s: waiting for perform to return…");
}

uint64_t sub_1009F27D4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100008F30;

  return sub_1009F0BCC(a1, v4, v5, (v1 + 32));
}

uint64_t sub_1009F2898(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_1009D137C(a1, v6, &qword_1011A8710, &qword_100EEDD70, "%{public}s: waiting for finish to return…");
}

uint64_t sub_1009F28F4(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_1009D137C(a1, v6, &qword_1011A8708, &qword_100EF4B20, "%{public}s: waiting for perform to return…");
}

uint64_t sub_1009F2950(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100008F30;

  return sub_1009F0CA0(a1, v4, v5, (v1 + 32));
}

uint64_t sub_1009F2A14(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_1009D137C(a1, v6, &qword_1011A8708, &qword_100EF4B20, "%{public}s: waiting for finish to return…");
}

uint64_t sub_1009F2A70(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_1009D137C(a1, v6, &qword_1011A8700, &unk_100EEDD50, "%{public}s: waiting for perform to return…");
}

uint64_t sub_1009F2ACC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100008F30;

  return sub_1009F0D74(a1, v4, v5, (v1 + 32));
}

uint64_t sub_1009F2B90(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_1009D137C(a1, v6, &qword_1011A8700, &unk_100EEDD50, "%{public}s: waiting for finish to return…");
}

uint64_t sub_1009F2BEC(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_1009D137C(a1, v6, &qword_1011A86F8, &qword_100EF4B70, "%{public}s: waiting for perform to return…");
}

uint64_t sub_1009F2C48(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100008F30;

  return sub_1009F0E48(a1, v4, v5, (v1 + 32));
}

uint64_t sub_1009F2D0C(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_1009D137C(a1, v6, &qword_1011A86F8, &qword_100EF4B70, "%{public}s: waiting for finish to return…");
}

uint64_t sub_1009F2D68(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_1009D137C(a1, v6, &qword_1011A86E8, &qword_100EEDD08, "%{public}s: waiting for perform to return…");
}

uint64_t sub_1009F2DC4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100008F30;

  return sub_1009F0884(a1, v4, v5, (v1 + 32));
}

uint64_t sub_1009F2E88(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_1009D137C(a1, v6, &qword_1011A86E8, &qword_100EEDD08, "%{public}s: waiting for finish to return…");
}

uint64_t sub_1009F2EE4(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_1009D137C(a1, v6, &qword_1011A86E0, &qword_100EEDD00, "%{public}s: waiting for perform to return…");
}

uint64_t sub_1009F2F40(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100008F30;

  return sub_1009F0958(a1, v4, v5, (v1 + 32));
}

uint64_t sub_1009F3004(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_1009D137C(a1, v6, &qword_1011A86E0, &qword_100EEDD00, "%{public}s: waiting for finish to return…");
}

uint64_t sub_1009F3060(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_1009D137C(a1, v6, &qword_1011A86D8, &qword_100EEDCC0, "%{public}s: waiting for perform to return…");
}

uint64_t sub_1009F30BC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100008F30;

  return sub_1009F0A2C(a1, v4, v5, (v1 + 32));
}

uint64_t sub_1009F3180(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_1009D137C(a1, v6, &qword_1011A86D8, &qword_100EEDCC0, "%{public}s: waiting for finish to return…");
}

uint64_t sub_1009F31DC(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_1009D137C(a1, v6, &qword_1011A86B8, &qword_100EF4C10, "%{public}s: waiting for perform to return…");
}

uint64_t sub_1009F3238(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100008F30;

  return sub_1009F06DC(a1, v4, v5, (v1 + 32));
}

uint64_t sub_1009F32FC(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_1009D137C(a1, v6, &qword_1011A86B8, &qword_100EF4C10, "%{public}s: waiting for finish to return…");
}

uint64_t sub_1009F3358(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_1009D137C(a1, v6, &qword_1011A86B0, &qword_100EEDC50, "%{public}s: waiting for perform to return…");
}

uint64_t sub_1009F33B4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100008F30;

  return sub_1009F0460(a1, v4, v5, (v1 + 32));
}

uint64_t sub_1009F3478(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_1009D137C(a1, v6, &qword_1011A86B0, &qword_100EEDC50, "%{public}s: waiting for finish to return…");
}

uint64_t sub_1009F34D4(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_1009D137C(a1, v6, &qword_1011A86A8, &qword_100EF4C60, "%{public}s: waiting for perform to return…");
}

uint64_t sub_1009F3530(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100008F30;

  return sub_1009F038C(a1, v4, v5, (v1 + 32));
}

uint64_t sub_1009F35F4(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_1009D137C(a1, v6, &qword_1011A86A8, &qword_100EF4C60, "%{public}s: waiting for finish to return…");
}

uint64_t sub_1009F3650(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_1009D137C(a1, v6, &qword_1011A8688, &qword_100EEDC08, "%{public}s: waiting for perform to return…");
}

uint64_t sub_1009F36AC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100008F30;

  return sub_1009F07B0(a1, v4, v5, (v1 + 32));
}

uint64_t sub_1009F3770(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_1009D137C(a1, v6, &qword_1011A8688, &qword_100EEDC08, "%{public}s: waiting for finish to return…");
}

uint64_t sub_1009F37E8(uint64_t a1)
{
  v4 = *(sub_10010FC20(&qword_1011A8670, &qword_100EF4CB0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100008F30;

  return sub_1009F021C(a1, v6, v7, v1 + v5);
}

uint64_t sub_1009F3928(uint64_t a1)
{
  v4 = *(sub_10010FC20(&qword_1011A8678, &qword_100EEDBC0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100008F30;

  return sub_1009F02D4(a1, v6, v7, v1 + v5);
}

uint64_t sub_1009F3A30(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v5 = *(sub_10010FC20(a1, a2) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = type metadata accessor for MusicPin.Item();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v3 + v6, 1, v7))
  {
    (*(v8 + 8))(v3 + v6, v7);
  }

  a3(0);

  return swift_deallocObject();
}

uint64_t sub_1009F3C74(uint64_t a1)
{
  v2 = *(v1 + 128);
  v7[6] = *(v1 + 112);
  v7[7] = v2;
  v8 = *(v1 + 144);
  v3 = *(v1 + 64);
  v7[2] = *(v1 + 48);
  v7[3] = v3;
  v4 = *(v1 + 96);
  v7[4] = *(v1 + 80);
  v7[5] = v4;
  v5 = *(v1 + 32);
  v7[0] = *(v1 + 16);
  v7[1] = v5;
  return sub_1009E0824(a1, v7, "%{public}s: waiting for perform to return…");
}

uint64_t sub_1009F3CC8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100008F30;

  return sub_1009F0140(a1, v4, v5, v1 + 32);
}

uint64_t sub_1009F3D8C(uint64_t a1)
{
  v2 = *(v1 + 128);
  v7[6] = *(v1 + 112);
  v7[7] = v2;
  v8 = *(v1 + 144);
  v3 = *(v1 + 64);
  v7[2] = *(v1 + 48);
  v7[3] = v3;
  v4 = *(v1 + 96);
  v7[4] = *(v1 + 80);
  v7[5] = v4;
  v5 = *(v1 + 32);
  v7[0] = *(v1 + 16);
  v7[1] = v5;
  return sub_1009E0824(a1, v7, "%{public}s: waiting for finish to return…");
}

uint64_t Library.ContentFilterOption.id.getter(char a1)
{
  if (!a1)
  {
    return 7105633;
  }

  if (a1 == 1)
  {
    return 0x657469726F766166;
  }

  return 0x64616F6C6E776F64;
}

uint64_t sub_1009F3E50(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x657469726F766166;
  if (v2 != 1)
  {
    v3 = 0x64616F6C6E776F64;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 7105633;
  }

  if (v2)
  {
    v5 = 0xE900000000000073;
  }

  else
  {
    v5 = 0xE300000000000000;
  }

  v6 = 0x657469726F766166;
  if (*a2 != 1)
  {
    v6 = 0x64616F6C6E776F64;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 7105633;
  }

  if (*a2)
  {
    v8 = 0xE900000000000073;
  }

  else
  {
    v8 = 0xE300000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

unint64_t sub_1009F3F3C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s9MusicCore7LibraryO19ContentFilterOptionO8rawValueAESgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void sub_1009F3F6C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 0x657469726F766166;
  if (v2 != 1)
  {
    v4 = 0x64616F6C6E776F64;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 7105633;
  }

  if (!v5)
  {
    v3 = 0xE900000000000073;
  }

  *a1 = v6;
  a1[1] = v3;
}

Swift::Int sub_1009F3FCC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_1009F4070(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int sub_1009F4100(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void *Optional<A>.convertToSet.getter(unsigned __int8 a1)
{
  if (a1 > 1u)
  {
    if (a1 != 2)
    {
      return 0;
    }
  }

  else if (!a1)
  {

    return &_swiftEmptySetSingleton;
  }

  v2 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v2)
  {
    return &_swiftEmptySetSingleton;
  }

  sub_10010FC20(&qword_1011AB770, &qword_100EF4D20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBC6B0;
  *(inited + 32) = a1;
  sub_10089DFDC(inited);
  v6 = v5;
  swift_setDeallocating();
  return v6;
}

uint64_t Library.Context.useDownloadedContentOnly.setter(char a1)
{
  result = type metadata accessor for Library.Context(0);
  *(v1 + *(result + 48)) = a1;
  return result;
}

uint64_t Library.Context.sortOption.setter(char a1)
{
  result = type metadata accessor for Library.Context(0);
  *(v1 + *(result + 52)) = a1;
  return result;
}

uint64_t Library.Context.filterOption.setter(char a1)
{
  result = type metadata accessor for Library.Context(0);
  *(v1 + *(result + 56)) = a1;
  return result;
}

uint64_t Library.Context.text.getter()
{
  v1 = *(v0 + *(type metadata accessor for Library.Context(0) + 60));

  return v1;
}

void Library.Context.text.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Library.Context(0) + 60));

  *v5 = a1;
  v5[1] = a2;
}

double Library.Context.playlistVariants.getter()
{
  type metadata accessor for Library.Context(0);

  return result;
}

void Library.Context.playlistVariants.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Library.Context(0) + 64);

  *(v1 + v3) = a1;
}

uint64_t Library.Context.isCompilation.setter(char a1)
{
  result = type metadata accessor for Library.Context(0);
  *(v1 + *(result + 68)) = a1;
  return result;
}

uint64_t Library.Context.init()@<X0>(char *a1@<X8>)
{
  type metadata accessor for MusicLibrary();
  *a1 = static MusicLibrary.shared.getter();
  v2 = type metadata accessor for Library.Context(0);
  v3 = v2[5];
  v4 = type metadata accessor for Album();
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = v2[6];
  v6 = type metadata accessor for Artist();
  (*(*(v6 - 8) + 56))(&a1[v5], 1, 1, v6);
  v7 = v2[7];
  v8 = type metadata accessor for Composer();
  (*(*(v8 - 8) + 56))(&a1[v7], 1, 1, v8);
  v9 = v2[8];
  v10 = type metadata accessor for Genre();
  (*(*(v10 - 8) + 56))(&a1[v9], 1, 1, v10);
  v11 = v2[9];
  v12 = type metadata accessor for Playlist();
  (*(*(v12 - 8) + 56))(&a1[v11], 1, 1, v12);
  v13 = v2[10];
  v14 = type metadata accessor for TVShow();
  (*(*(v14 - 8) + 56))(&a1[v13], 1, 1, v14);
  v15 = v2[11];
  v16 = type metadata accessor for TVSeason();
  result = (*(*(v16 - 8) + 56))(&a1[v15], 1, 1, v16);
  a1[v2[12]] = 0;
  a1[v2[13]] = 2;
  a1[v2[14]] = 3;
  v18 = &a1[v2[15]];
  *v18 = 0;
  *(v18 + 1) = 0;
  *&a1[v2[16]] = _swiftEmptyArrayStorage;
  a1[v2[17]] = 2;
  return result;
}

uint64_t Library.Context.with<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v51 = a1;
  v36 = type metadata accessor for TVSeason();
  v33 = *(v36 - 8);
  __chkstk_darwin();
  v35 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for TVShow();
  v34 = *(v39 - 8);
  __chkstk_darwin();
  v38 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for Playlist();
  v37 = *(v42 - 8);
  __chkstk_darwin();
  v41 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for Genre();
  v40 = *(v45 - 8);
  __chkstk_darwin();
  v44 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for Composer();
  v43 = *(v48 - 8);
  __chkstk_darwin();
  v47 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for Artist();
  v46 = *(v49 - 8);
  __chkstk_darwin();
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Album();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Optional();
  v17 = *(v16 - 8);
  __chkstk_darwin();
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v21 = &v32 - v20;
  v50 = a3;
  sub_1009F8B7C(v52, a3);
  v52 = v17;
  v22 = *(v17 + 16);
  v22(v21, v51, v16);
  v51 = *(a2 - 8);
  if ((*(v51 + 48))(v21, 1, a2) != 1)
  {
    v32 = v16;
    v22(v19, v21, v16);
    v23 = a2;
    v24 = v19;
    if (swift_dynamicCast())
    {
      v25 = *(type metadata accessor for Library.Context(0) + 20);
      v26 = v50;
      sub_1000095E8(v50 + v25, &qword_1011A8858, &qword_100EEE0A0);
      (*(v13 + 32))(v26 + v25, v15, v12);
      (*(v13 + 56))(v26 + v25, 0, 1, v12);
LABEL_17:
      (*(v51 + 8))(v24, v23);
      v16 = v32;
      return (*(v52 + 8))(v21, v16);
    }

    v27 = v49;
    if (swift_dynamicCast())
    {
      v28 = *(type metadata accessor for Library.Context(0) + 24);
      v29 = v50;
      sub_1000095E8(v50 + v28, &qword_1011A9130, &qword_100EEF870);
      v30 = v46;
    }

    else
    {
      v11 = v47;
      v27 = v48;
      if (swift_dynamicCast())
      {
        v28 = *(type metadata accessor for Library.Context(0) + 28);
        v29 = v50;
        sub_1000095E8(v50 + v28, &qword_1011AB778, &qword_100EF4D28);
        v30 = v43;
      }

      else
      {
        v11 = v44;
        v27 = v45;
        if (swift_dynamicCast())
        {
          v28 = *(type metadata accessor for Library.Context(0) + 32);
          v29 = v50;
          sub_1000095E8(v50 + v28, &qword_1011AB780, &unk_100EF4D30);
          v30 = v40;
        }

        else
        {
          v11 = v41;
          v27 = v42;
          if (swift_dynamicCast())
          {
            v28 = *(type metadata accessor for Library.Context(0) + 36);
            v29 = v50;
            sub_1000095E8(v50 + v28, &qword_1011AA6C0, &qword_100EEF960);
            v30 = v37;
          }

          else
          {
            v11 = v38;
            v27 = v39;
            if (swift_dynamicCast())
            {
              v28 = *(type metadata accessor for Library.Context(0) + 40);
              v29 = v50;
              sub_1000095E8(v50 + v28, &qword_1011A9288, &unk_100EF4D40);
              v30 = v34;
            }

            else
            {
              v11 = v35;
              v27 = v36;
              if (!swift_dynamicCast())
              {
                goto LABEL_17;
              }

              v28 = *(type metadata accessor for Library.Context(0) + 44);
              v29 = v50;
              sub_1000095E8(v50 + v28, &qword_1011A9258, &qword_100EEFAE8);
              v30 = v33;
            }
          }
        }
      }
    }

    (*(v30 + 32))(v29 + v28, v11, v27);
    (*(v30 + 56))(v29 + v28, 0, 1, v27);
    goto LABEL_17;
  }

  return (*(v52 + 8))(v21, v16);
}

uint64_t Library.Context.with(compilation:)@<X0>(uint64_t a1@<X8>)
{
  sub_1009F8B7C(v2, a1);
  result = type metadata accessor for Library.Context(0);
  *(a1 + *(result + 68)) = 1;
  return result;
}

uint64_t Library.Context.with(sortOption:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  sub_1009F8B7C(v3, a2);
  result = type metadata accessor for Library.Context(0);
  *(a2 + *(result + 52)) = a1;
  return result;
}

uint64_t Library.Context.with(filterOption:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  sub_1009F8B7C(v3, a2);
  result = type metadata accessor for Library.Context(0);
  *(a2 + *(result + 56)) = a1;
  return result;
}

void Library.Context.with(filterText:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1009F8B7C(v4, a3);
  v8 = (a3 + *(type metadata accessor for Library.Context(0) + 60));

  *v8 = a1;
  v8[1] = a2;
}

Swift::Int Library.Context.SortOption.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  Hasher._combine(_:)(a1 & 1);
  return Hasher._finalize()();
}

Swift::Int sub_1009F5938()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

void sub_1009F598C()
{
  v1 = *v0;
  Hasher._combine(_:)(0);
  Hasher._combine(_:)(v1);
}

Swift::Int sub_1009F59CC(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void Library.Context.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for Playlist.Variant();
  v4 = *(v3 - 8);
  v93 = v3;
  v94 = v4;
  __chkstk_darwin();
  v76 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for TVSeason();
  v91 = *(v96 - 8);
  __chkstk_darwin();
  v75 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011A9258, &qword_100EEFAE8);
  __chkstk_darwin();
  v92 = &v69 - v7;
  v89 = type metadata accessor for TVShow();
  v95 = *(v89 - 8);
  __chkstk_darwin();
  v74 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011A9288, &unk_100EF4D40);
  __chkstk_darwin();
  v90 = &v69 - v9;
  v85 = type metadata accessor for Playlist();
  v88 = *(v85 - 8);
  __chkstk_darwin();
  v73 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011AA6C0, &qword_100EEF960);
  __chkstk_darwin();
  v87 = &v69 - v11;
  v82 = type metadata accessor for Genre();
  v86 = *(v82 - 8);
  __chkstk_darwin();
  v72 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011AB780, &unk_100EF4D30);
  __chkstk_darwin();
  v81 = &v69 - v13;
  v14 = type metadata accessor for Composer();
  v83 = *(v14 - 8);
  v84 = v14;
  __chkstk_darwin();
  v71 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011AB778, &qword_100EF4D28);
  __chkstk_darwin();
  v80 = &v69 - v16;
  v17 = type metadata accessor for Artist();
  v78 = *(v17 - 8);
  v79 = v17;
  __chkstk_darwin();
  v70 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011A9130, &qword_100EEF870);
  __chkstk_darwin();
  v77 = &v69 - v19;
  v20 = type metadata accessor for Album();
  v21 = *(v20 - 8);
  __chkstk_darwin();
  v23 = &v69 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011A8858, &qword_100EEE0A0);
  __chkstk_darwin();
  v25 = &v69 - v24;
  v97 = *v1;
  type metadata accessor for MusicLibrary();
  sub_1009F9260(&qword_1011AB788, &type metadata accessor for MusicLibrary, &protocol conformance descriptor for MusicLibrary);
  dispatch thunk of Hashable.hash(into:)();
  v26 = type metadata accessor for Library.Context(0);
  sub_1000089F8(v1 + v26[5], v25, &qword_1011A8858, &qword_100EEE0A0);
  if ((*(v21 + 48))(v25, 1, v20) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v21 + 32))(v23, v25, v20);
    Hasher._combine(_:)(1u);
    sub_1009F9260(&qword_1011AB790, &type metadata accessor for Album, &protocol conformance descriptor for Album);
    dispatch thunk of Hashable.hash(into:)();
    (*(v21 + 8))(v23, v20);
  }

  v27 = v77;
  sub_1000089F8(v1 + v26[6], v77, &qword_1011A9130, &qword_100EEF870);
  v29 = v78;
  v28 = v79;
  v30 = (*(v78 + 48))(v27, 1, v79);
  v32 = v80;
  v31 = v81;
  if (v30 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v33 = v27;
    v34 = v70;
    (*(v29 + 32))(v70, v33, v28);
    Hasher._combine(_:)(1u);
    sub_1009F9260(&qword_1011AB798, &type metadata accessor for Artist, &protocol conformance descriptor for Artist);
    dispatch thunk of Hashable.hash(into:)();
    (*(v29 + 8))(v34, v28);
  }

  v35 = v87;
  v36 = v84;
  sub_1000089F8(v1 + v26[7], v32, &qword_1011AB778, &qword_100EF4D28);
  v37 = v83;
  if ((*(v83 + 48))(v32, 1, v36) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v38 = v71;
    (*(v37 + 32))(v71, v32, v36);
    Hasher._combine(_:)(1u);
    sub_1009F9260(&qword_1011AB7A0, &type metadata accessor for Composer, &protocol conformance descriptor for Composer);
    dispatch thunk of Hashable.hash(into:)();
    (*(v37 + 8))(v38, v36);
  }

  v39 = v82;
  sub_1000089F8(v2 + v26[8], v31, &qword_1011AB780, &unk_100EF4D30);
  v40 = v86;
  if ((*(v86 + 48))(v31, 1, v39) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v41 = v72;
    (*(v40 + 32))(v72, v31, v39);
    Hasher._combine(_:)(1u);
    sub_1009F9260(&qword_1011AB7A8, &type metadata accessor for Genre, &protocol conformance descriptor for Genre);
    dispatch thunk of Hashable.hash(into:)();
    (*(v40 + 8))(v41, v39);
  }

  v42 = v89;
  v43 = v91;
  sub_1000089F8(v2 + v26[9], v35, &qword_1011AA6C0, &qword_100EEF960);
  v44 = v88;
  v45 = v85;
  if ((*(v88 + 48))(v35, 1, v85) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v46 = v73;
    (*(v44 + 32))(v73, v35, v45);
    Hasher._combine(_:)(1u);
    sub_1009F9260(&qword_1011AB7B0, &type metadata accessor for Playlist, &protocol conformance descriptor for Playlist);
    dispatch thunk of Hashable.hash(into:)();
    (*(v44 + 8))(v46, v45);
  }

  v47 = v90;
  sub_1000089F8(v2 + v26[10], v90, &qword_1011A9288, &unk_100EF4D40);
  if ((*(v95 + 6))(v47, 1, v42) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v48 = v95;
    v49 = v74;
    (*(v95 + 4))(v74, v47, v42);
    Hasher._combine(_:)(1u);
    sub_1009F9260(&qword_1011AB7B8, &type metadata accessor for TVShow, &protocol conformance descriptor for TVShow);
    dispatch thunk of Hashable.hash(into:)();
    (*(v48 + 1))(v49, v42);
  }

  v50 = v92;
  sub_1000089F8(v2 + v26[11], v92, &qword_1011A9258, &qword_100EEFAE8);
  if ((*(v43 + 48))(v50, 1, v96) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v51 = v75;
    v52 = v96;
    (*(v43 + 32))(v75, v50, v96);
    Hasher._combine(_:)(1u);
    sub_1009F9260(&qword_1011AB7C0, &type metadata accessor for TVSeason, &protocol conformance descriptor for TVSeason);
    dispatch thunk of Hashable.hash(into:)();
    (*(v43 + 8))(v51, v52);
  }

  v53 = v93;
  Hasher._combine(_:)(*(v2 + v26[12]));
  v54 = *(v2 + v26[13]);
  if (v54 == 2)
  {
    v55 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(0);
    v55 = v54 & 1;
  }

  Hasher._combine(_:)(v55);
  v56 = *(v2 + v26[14]);
  if (v56 == 3)
  {
    Hasher._combine(_:)(0);
    v57 = v76;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v57 = v76;
    String.hash(into:)();
  }

  if (*(v2 + v26[15] + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v95 = v26;
  v96 = v2;
  v58 = *(v2 + v26[16]);
  Hasher._combine(_:)(*(v58 + 16));
  v59 = *(v58 + 16);
  if (v59)
  {
    v60 = v57;
    v61 = v94 + 16;
    v62 = *(v94 + 16);
    v63 = v58 + ((*(v94 + 80) + 32) & ~*(v94 + 80));
    v64 = *(v94 + 72);
    v65 = (v94 + 8);
    do
    {
      v66 = v61;
      v62(v60, v63, v53);
      sub_1009F9260(&qword_1011AB7C8, &type metadata accessor for Playlist.Variant, &protocol conformance descriptor for Playlist.Variant);
      dispatch thunk of Hashable.hash(into:)();
      (*v65)(v60, v53);
      v61 = v66;
      v63 += v64;
      --v59;
    }

    while (v59);
  }

  v67 = *(v96 + v95[17]);
  if (v67 == 2)
  {
    v68 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v68 = v67 & 1;
  }

  Hasher._combine(_:)(v68);
}

Swift::Int Library.Context.hashValue.getter()
{
  Hasher.init(_seed:)();
  Library.Context.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1009F6A14(uint64_t a1)
{
  Hasher.init(_seed:)();
  Library.Context.hash(into:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_1009F6A50()
{
  v0 = type metadata accessor for Library.Context(0);
  sub_100006080(v0, qword_1011AB758);
  v1 = sub_1000060E4(v0, qword_1011AB758);
  type metadata accessor for MusicLibrary();
  *v1 = static MusicLibrary.shared.getter();
  v2 = v0[5];
  v3 = type metadata accessor for Album();
  (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  v4 = v0[6];
  v5 = type metadata accessor for Artist();
  (*(*(v5 - 8) + 56))(&v1[v4], 1, 1, v5);
  v6 = v0[7];
  v7 = type metadata accessor for Composer();
  (*(*(v7 - 8) + 56))(&v1[v6], 1, 1, v7);
  v8 = v0[8];
  v9 = type metadata accessor for Genre();
  (*(*(v9 - 8) + 56))(&v1[v8], 1, 1, v9);
  v10 = v0[9];
  v11 = type metadata accessor for Playlist();
  (*(*(v11 - 8) + 56))(&v1[v10], 1, 1, v11);
  v12 = v0[10];
  v13 = type metadata accessor for TVShow();
  (*(*(v13 - 8) + 56))(&v1[v12], 1, 1, v13);
  v14 = v0[11];
  v15 = type metadata accessor for TVSeason();
  result = (*(*(v15 - 8) + 56))(&v1[v14], 1, 1, v15);
  v1[v0[12]] = 0;
  v1[v0[13]] = 2;
  v1[v0[14]] = 3;
  v17 = &v1[v0[15]];
  *v17 = 0;
  *(v17 + 1) = 0;
  *&v1[v0[16]] = _swiftEmptyArrayStorage;
  v1[v0[17]] = 2;
  return result;
}

uint64_t sub_1009F6CD4@<X0>(uint64_t a1@<X8>)
{
  if (qword_1011A69D8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Library.Context(0);
  v3 = sub_1000060E4(v2, qword_1011AB758);

  return sub_1009F8B7C(v3, a1);
}

uint64_t sub_1009F6D4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1009F9260(&qword_1011AB7E8, type metadata accessor for Library.Context, &protocol conformance descriptor for Library.Context);

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

void *EnvironmentValues.libraryContext.getter()
{
  sub_1009F8BE0();

  return EnvironmentValues.subscript.getter();
}

uint64_t EnvironmentValues.libraryContext.setter(uint64_t a1)
{
  type metadata accessor for Library.Context(0);
  __chkstk_darwin();
  sub_1009F8B7C(a1, &v4 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1009F8BE0();
  EnvironmentValues.subscript.setter();
  return sub_1009F8C34(a1);
}

void (*EnvironmentValues.libraryContext.modify(void *a1))(uint64_t **a1, char a2, __n128 a3)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(type metadata accessor for Library.Context(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[1] = swift_coroFrameAlloc();
    v4[2] = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v4[1] = malloc(v5);
    v4[2] = malloc(v5);
    v6 = malloc(v5);
  }

  v4[3] = v6;
  v4[4] = sub_1009F8BE0();
  EnvironmentValues.subscript.getter();
  return sub_1009F6FD4;
}

void sub_1009F6FD4(uint64_t **a1, char a2, __n128 a3)
{
  v4 = *a1;
  sub_1009F8B7C((*a1)[3], (*a1)[2]);
  v5 = v4[3];
  v6 = v4[1];
  v7 = v4[2];
  if (a2)
  {
    sub_1009F8B7C(v4[2], v4[1]);
    EnvironmentValues.subscript.setter();
    sub_1009F8C34(v7);
  }

  else
  {
    EnvironmentValues.subscript.setter();
  }

  sub_1009F8C34(v5);
  free(v5);
  free(v7);
  free(v6);

  free(v4);
}

double View.libraryContext(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  View.environment<A>(_:_:)();

  return result;
}

uint64_t sub_1009F7118(uint64_t a1)
{
  type metadata accessor for Library.Context(0);
  __chkstk_darwin();
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v7 - v4;
  sub_1009F8B7C(a1, &v7 - v4);
  sub_1009F8B7C(v5, v3);
  sub_1009F8BE0();
  EnvironmentValues.subscript.setter();
  return sub_1009F8C34(v5);
}

uint64_t MusicLibraryRequest.apply(_:)(void *a1, uint64_t a2)
{

  MusicLibraryRequest.library.setter();
  type metadata accessor for Library.Context(0);

  return MusicLibraryRequest.includeOnlyDownloadedContent.setter();
}

uint64_t _s9MusicCore7LibraryO7ContextV23__derived_struct_equalsySbAE_AEtFZ_0(void *a1, void *a2)
{
  v146 = type metadata accessor for TVSeason();
  v147 = *(v146 - 8);
  __chkstk_darwin();
  v141 = &v138 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011A9258, &qword_100EEFAE8);
  __chkstk_darwin();
  v142 = &v138 - v5;
  v144 = sub_10010FC20(&qword_1011AB918, &qword_100EF4FD0);
  __chkstk_darwin();
  v145 = &v138 - v6;
  v152 = type metadata accessor for TVShow();
  v153 = *(v152 - 8);
  __chkstk_darwin();
  v143 = &v138 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011A9288, &unk_100EF4D40);
  __chkstk_darwin();
  v150 = &v138 - v8;
  v149 = sub_10010FC20(&qword_1011AB920, &qword_100EF4FD8);
  __chkstk_darwin();
  v151 = &v138 - v9;
  v10 = type metadata accessor for Playlist();
  v11 = *(v10 - 8);
  v158 = v10;
  v159 = v11;
  __chkstk_darwin();
  v148 = &v138 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011AA6C0, &qword_100EEF960);
  __chkstk_darwin();
  v156 = &v138 - v13;
  v155 = sub_10010FC20(&qword_1011AB928, &qword_100EF4FE0);
  __chkstk_darwin();
  v157 = &v138 - v14;
  v163 = type metadata accessor for Genre();
  v165 = *(v163 - 8);
  __chkstk_darwin();
  v154 = &v138 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011AB780, &unk_100EF4D30);
  __chkstk_darwin();
  v171 = &v138 - v16;
  v161 = sub_10010FC20(&qword_1011AB930, &qword_100EF4FE8);
  __chkstk_darwin();
  v162 = &v138 - v17;
  v18 = type metadata accessor for Composer();
  v168 = *(v18 - 8);
  v169 = v18;
  __chkstk_darwin();
  v160 = &v138 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011AB778, &qword_100EF4D28);
  __chkstk_darwin();
  v164 = &v138 - v20;
  v167 = sub_10010FC20(&qword_1011AB938, &qword_100EF4FF0);
  __chkstk_darwin();
  v174 = &v138 - v21;
  v173 = type metadata accessor for Artist();
  v175 = *(v173 - 8);
  __chkstk_darwin();
  v166 = &v138 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011A9130, &qword_100EEF870);
  __chkstk_darwin();
  v170 = &v138 - v23;
  v24 = sub_10010FC20(&qword_1011AB940, &qword_100EF4FF8);
  __chkstk_darwin();
  v172 = &v138 - v25;
  v26 = type metadata accessor for Album();
  v27 = *(v26 - 8);
  __chkstk_darwin();
  v29 = &v138 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011A8858, &qword_100EEE0A0);
  __chkstk_darwin();
  v31 = &v138 - v30;
  v32 = sub_10010FC20(&qword_1011AB948, &qword_100EF5000);
  __chkstk_darwin();
  v34 = &v138 - v33;
  type metadata accessor for MusicLibrary();
  if ((static MusicLibrary.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v35 = type metadata accessor for Library.Context(0);
  v176 = a2;
  v36 = a1;
  v139 = v35;
  v37 = *(v35 + 20);
  v38 = *(v32 + 48);
  v140 = v36;
  sub_1000089F8(v36 + v37, v34, &qword_1011A8858, &qword_100EEE0A0);
  sub_1000089F8(v176 + v37, &v34[v38], &qword_1011A8858, &qword_100EEE0A0);
  v39 = *(v27 + 48);
  if (v39(v34, 1, v26) == 1)
  {
    if (v39(&v34[v38], 1, v26) == 1)
    {
      sub_1000095E8(v34, &qword_1011A8858, &qword_100EEE0A0);
      goto LABEL_9;
    }

LABEL_7:
    v40 = &qword_1011AB948;
    v41 = &qword_100EF5000;
    v42 = v34;
LABEL_44:
    sub_1000095E8(v42, v40, v41);
    return 0;
  }

  sub_1000089F8(v34, v31, &qword_1011A8858, &qword_100EEE0A0);
  if (v39(&v34[v38], 1, v26) == 1)
  {
    (*(v27 + 8))(v31, v26);
    goto LABEL_7;
  }

  (*(v27 + 32))(v29, &v34[v38], v26);
  sub_1009F9260(&qword_1011AB978, &type metadata accessor for Album, &protocol conformance descriptor for Album);
  v43 = dispatch thunk of static Equatable.== infix(_:_:)();
  v44 = *(v27 + 8);
  v44(v29, v26);
  v44(v31, v26);
  sub_1000095E8(v34, &qword_1011A8858, &qword_100EEE0A0);
  if ((v43 & 1) == 0)
  {
    return 0;
  }

LABEL_9:
  v45 = v139;
  v46 = v139[6];
  v47 = *(v24 + 48);
  v48 = v172;
  sub_1000089F8(v140 + v46, v172, &qword_1011A9130, &qword_100EEF870);
  v49 = v176 + v46;
  v50 = v176;
  sub_1000089F8(v49, v48 + v47, &qword_1011A9130, &qword_100EEF870);
  v51 = *(v175 + 48);
  v52 = v173;
  if (v51(v48, 1, v173) == 1)
  {
    v53 = v51(v48 + v47, 1, v52);
    v54 = v171;
    v55 = v174;
    if (v53 == 1)
    {
      sub_1000095E8(v48, &qword_1011A9130, &qword_100EEF870);
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  v56 = v170;
  sub_1000089F8(v48, v170, &qword_1011A9130, &qword_100EEF870);
  v57 = v51(v48 + v47, 1, v52);
  v55 = v174;
  if (v57 == 1)
  {
    (*(v175 + 8))(v56, v52);
LABEL_14:
    v40 = &qword_1011AB940;
    v41 = &qword_100EF4FF8;
    v42 = v48;
    goto LABEL_44;
  }

  v58 = v175;
  v59 = v48 + v47;
  v60 = v45;
  v61 = v48;
  v62 = v166;
  (*(v175 + 32))(v166, v59, v52);
  sub_1009F9260(&qword_1011AB970, &type metadata accessor for Artist, &protocol conformance descriptor for Artist);
  v63 = dispatch thunk of static Equatable.== infix(_:_:)();
  v64 = *(v58 + 8);
  v64(v62, v52);
  v64(v56, v52);
  v65 = v61;
  v45 = v60;
  v54 = v171;
  sub_1000095E8(v65, &qword_1011A9130, &qword_100EEF870);
  if ((v63 & 1) == 0)
  {
    return 0;
  }

LABEL_16:
  v66 = v45[7];
  v67 = v50;
  v68 = *(v167 + 48);
  sub_1000089F8(v140 + v66, v55, &qword_1011AB778, &qword_100EF4D28);
  sub_1000089F8(v67 + v66, v55 + v68, &qword_1011AB778, &qword_100EF4D28);
  v70 = v168;
  v69 = v169;
  v71 = *(v168 + 48);
  if (v71(v55, 1, v169) == 1)
  {
    if (v71(v55 + v68, 1, v69) == 1)
    {
      sub_1000095E8(v55, &qword_1011AB778, &qword_100EF4D28);
      goto LABEL_23;
    }

LABEL_21:
    v40 = &qword_1011AB938;
    v41 = &qword_100EF4FF0;
LABEL_43:
    v42 = v55;
    goto LABEL_44;
  }

  v72 = v164;
  sub_1000089F8(v55, v164, &qword_1011AB778, &qword_100EF4D28);
  if (v71(v55 + v68, 1, v69) == 1)
  {
    (*(v70 + 8))(v72, v69);
    goto LABEL_21;
  }

  v73 = v55 + v68;
  v74 = v160;
  (*(v70 + 32))(v160, v73, v69);
  sub_1009F9260(&qword_1011AB968, &type metadata accessor for Composer, &protocol conformance descriptor for Composer);
  v75 = dispatch thunk of static Equatable.== infix(_:_:)();
  v76 = *(v70 + 8);
  v76(v74, v69);
  v76(v72, v69);
  sub_1000095E8(v55, &qword_1011AB778, &qword_100EF4D28);
  if ((v75 & 1) == 0)
  {
    return 0;
  }

LABEL_23:
  v77 = v45[8];
  v55 = v162;
  v78 = *(v161 + 48);
  sub_1000089F8(v140 + v77, v162, &qword_1011AB780, &unk_100EF4D30);
  sub_1000089F8(v176 + v77, v55 + v78, &qword_1011AB780, &unk_100EF4D30);
  v79 = *(v165 + 48);
  v80 = v163;
  if (v79(v55, 1, v163) == 1)
  {
    if (v79(v55 + v78, 1, v80) == 1)
    {
      sub_1000095E8(v55, &qword_1011AB780, &unk_100EF4D30);
      goto LABEL_30;
    }

    goto LABEL_28;
  }

  sub_1000089F8(v55, v54, &qword_1011AB780, &unk_100EF4D30);
  if (v79(v55 + v78, 1, v80) == 1)
  {
    (*(v165 + 8))(v54, v80);
LABEL_28:
    v40 = &qword_1011AB930;
    v41 = &qword_100EF4FE8;
    goto LABEL_43;
  }

  v81 = v54;
  v82 = v165;
  v83 = v55 + v78;
  v84 = v154;
  (*(v165 + 32))(v154, v83, v80);
  sub_1009F9260(&qword_1011AB960, &type metadata accessor for Genre, &protocol conformance descriptor for Genre);
  v85 = dispatch thunk of static Equatable.== infix(_:_:)();
  v86 = *(v82 + 8);
  v86(v84, v80);
  v86(v81, v80);
  sub_1000095E8(v55, &qword_1011AB780, &unk_100EF4D30);
  if ((v85 & 1) == 0)
  {
    return 0;
  }

LABEL_30:
  v87 = v45[9];
  v88 = *(v155 + 48);
  v55 = v157;
  sub_1000089F8(v140 + v87, v157, &qword_1011AA6C0, &qword_100EEF960);
  sub_1000089F8(v176 + v87, v55 + v88, &qword_1011AA6C0, &qword_100EEF960);
  v89 = v158;
  v90 = *(v159 + 48);
  if (v90(v55, 1, v158) == 1)
  {
    if (v90(v55 + v88, 1, v89) == 1)
    {
      sub_1000095E8(v55, &qword_1011AA6C0, &qword_100EEF960);
      goto LABEL_37;
    }

    goto LABEL_35;
  }

  sub_1000089F8(v55, v156, &qword_1011AA6C0, &qword_100EEF960);
  if (v90(v55 + v88, 1, v89) == 1)
  {
    (*(v159 + 8))(v156, v89);
LABEL_35:
    v40 = &qword_1011AB928;
    v41 = &qword_100EF4FE0;
    goto LABEL_43;
  }

  v91 = v159;
  v92 = v55 + v88;
  v93 = v148;
  (*(v159 + 32))(v148, v92, v89);
  sub_1009F9260(&qword_1011AAD70, &type metadata accessor for Playlist, &protocol conformance descriptor for Playlist);
  v94 = v156;
  v95 = dispatch thunk of static Equatable.== infix(_:_:)();
  v96 = *(v91 + 8);
  v96(v93, v89);
  v96(v94, v89);
  sub_1000095E8(v55, &qword_1011AA6C0, &qword_100EEF960);
  if ((v95 & 1) == 0)
  {
    return 0;
  }

LABEL_37:
  v97 = v45[10];
  v98 = *(v149 + 48);
  v55 = v151;
  sub_1000089F8(v140 + v97, v151, &qword_1011A9288, &unk_100EF4D40);
  sub_1000089F8(v176 + v97, v55 + v98, &qword_1011A9288, &unk_100EF4D40);
  v99 = *(v153 + 48);
  v100 = v152;
  if (v99(v55, 1, v152) == 1)
  {
    if (v99(v55 + v98, 1, v100) == 1)
    {
      sub_1000095E8(v55, &qword_1011A9288, &unk_100EF4D40);
      goto LABEL_48;
    }

    goto LABEL_42;
  }

  sub_1000089F8(v55, v150, &qword_1011A9288, &unk_100EF4D40);
  if (v99(v55 + v98, 1, v100) == 1)
  {
    (*(v153 + 8))(v150, v100);
LABEL_42:
    v40 = &qword_1011AB920;
    v41 = &qword_100EF4FD8;
    goto LABEL_43;
  }

  v102 = v153;
  v103 = v55 + v98;
  v104 = v143;
  (*(v153 + 32))(v143, v103, v100);
  sub_1009F9260(&qword_1011AB958, &type metadata accessor for TVShow, &protocol conformance descriptor for TVShow);
  v105 = v150;
  v106 = dispatch thunk of static Equatable.== infix(_:_:)();
  v107 = *(v102 + 8);
  v107(v104, v100);
  v107(v105, v100);
  sub_1000095E8(v55, &qword_1011A9288, &unk_100EF4D40);
  if ((v106 & 1) == 0)
  {
    return 0;
  }

LABEL_48:
  v108 = v45[11];
  v109 = *(v144 + 48);
  v110 = v145;
  sub_1000089F8(v140 + v108, v145, &qword_1011A9258, &qword_100EEFAE8);
  sub_1000089F8(v176 + v108, v110 + v109, &qword_1011A9258, &qword_100EEFAE8);
  v111 = *(v147 + 48);
  v112 = v146;
  if (v111(v110, 1, v146) == 1)
  {
    if (v111(v110 + v109, 1, v112) == 1)
    {
      sub_1000095E8(v110, &qword_1011A9258, &qword_100EEFAE8);
      goto LABEL_55;
    }

    goto LABEL_53;
  }

  v113 = v142;
  sub_1000089F8(v110, v142, &qword_1011A9258, &qword_100EEFAE8);
  if (v111(v110 + v109, 1, v112) == 1)
  {
    (*(v147 + 8))(v113, v112);
LABEL_53:
    v40 = &qword_1011AB918;
    v41 = &qword_100EF4FD0;
    v42 = v110;
    goto LABEL_44;
  }

  v114 = v147;
  v115 = v110 + v109;
  v116 = v141;
  (*(v147 + 32))(v141, v115, v112);
  sub_1009F9260(&qword_1011AB950, &type metadata accessor for TVSeason, &protocol conformance descriptor for TVSeason);
  v117 = dispatch thunk of static Equatable.== infix(_:_:)();
  v118 = *(v114 + 8);
  v118(v116, v112);
  v118(v113, v112);
  sub_1000095E8(v110, &qword_1011A9258, &qword_100EEFAE8);
  if ((v117 & 1) == 0)
  {
    return 0;
  }

LABEL_55:
  if (*(v140 + v45[12]) != *(v176 + v45[12]))
  {
    return 0;
  }

  v119 = v45[13];
  v120 = *(v140 + v119);
  v121 = *(v176 + v119);
  if (v120 == 2)
  {
    if (v121 != 2)
    {
      return 0;
    }

    goto LABEL_61;
  }

  result = 0;
  if (v121 != 2 && ((v121 ^ v120) & 1) == 0)
  {
LABEL_61:
    v122 = v45[14];
    v123 = *(v140 + v122);
    v124 = *(v176 + v122);
    if (v123 == 3)
    {
      if (v124 != 3)
      {
        return 0;
      }
    }

    else
    {
      if (v124 == 3)
      {
        return 0;
      }

      v125 = 0xE900000000000073;
      v126 = 7105633;
      if (v123)
      {
        if (v123 == 1)
        {
          v127 = 0x657469726F766166;
        }

        else
        {
          v127 = 0x64616F6C6E776F64;
        }

        v128 = 0xE900000000000073;
      }

      else
      {
        v128 = 0xE300000000000000;
        v127 = 7105633;
      }

      if (v124)
      {
        if (v124 == 1)
        {
          v126 = 0x657469726F766166;
        }

        else
        {
          v126 = 0x64616F6C6E776F64;
        }
      }

      else
      {
        v125 = 0xE300000000000000;
      }

      if (v127 == v126 && v128 == v125)
      {

        v45 = v139;
      }

      else
      {
        v129 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v45 = v139;
        if ((v129 & 1) == 0)
        {
          return 0;
        }
      }
    }

    v130 = v45[15];
    v131 = (v140 + v130);
    v132 = *(v140 + v130 + 8);
    v133 = (v176 + v130);
    v134 = v133[1];
    if (v132)
    {
      if (v134 && (*v131 == *v133 && v132 == v134 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
      {
LABEL_87:
        if (sub_10095CB80(*(v140 + v139[16]), *(v176 + v139[16])))
        {
          v135 = v139[17];
          v136 = *(v140 + v135);
          v137 = *(v176 + v135);
          if (v136 == 2)
          {
            if (v137 == 2)
            {
              return 1;
            }
          }

          else if (v137 != 2 && ((v137 ^ v136) & 1) == 0)
          {
            return 1;
          }
        }
      }
    }

    else if (!v134)
    {
      goto LABEL_87;
    }

    return 0;
  }

  return result;
}

unint64_t _s9MusicCore7LibraryO19ContentFilterOptionO8rawValueAESgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1010C7BD0, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t type metadata accessor for Library.Context(uint64_t a1)
{
  result = qword_1011AB848;
  if (!qword_1011AB848)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1009F8B7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Library.Context(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1009F8BE0()
{
  result = qword_1011AB7D0;
  if (!qword_1011AB7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AB7D0);
  }

  return result;
}

uint64_t sub_1009F8C34(uint64_t a1)
{
  v2 = type metadata accessor for Library.Context(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1009F8C94()
{
  result = qword_1011AB7D8;
  if (!qword_1011AB7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AB7D8);
  }

  return result;
}

unint64_t sub_1009F8CEC()
{
  result = qword_1011AB7E0;
  if (!qword_1011AB7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AB7E0);
  }

  return result;
}

void sub_1009F8DD0(uint64_t a1)
{
  type metadata accessor for MusicLibrary();
  if (v1 <= 0x3F)
  {
    sub_1009F9124(319, &qword_1011AB858, &type metadata accessor for Album, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_1009F9124(319, &qword_1011AB860, &type metadata accessor for Artist, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_1009F9124(319, &qword_1011AB868, &type metadata accessor for Composer, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          sub_1009F9124(319, &qword_1011AB870, &type metadata accessor for Genre, &type metadata accessor for Optional);
          if (v5 <= 0x3F)
          {
            sub_1009F9124(319, &qword_1011AB878, &type metadata accessor for Playlist, &type metadata accessor for Optional);
            if (v6 <= 0x3F)
            {
              sub_1009F9124(319, &qword_1011AB880, &type metadata accessor for TVShow, &type metadata accessor for Optional);
              if (v7 <= 0x3F)
              {
                sub_1009F9124(319, &qword_1011AB888, &type metadata accessor for TVSeason, &type metadata accessor for Optional);
                if (v8 <= 0x3F)
                {
                  sub_1000308A0(319, &qword_1011AB890, &type metadata for Library.Context.SortOption);
                  if (v9 <= 0x3F)
                  {
                    sub_1000308A0(319, &qword_1011AB898, &type metadata for Library.ContentFilterOption);
                    if (v10 <= 0x3F)
                    {
                      sub_1000308A0(319, &qword_1011AEEF0, &type metadata for String);
                      if (v11 <= 0x3F)
                      {
                        sub_1009F9124(319, &unk_1011AB8A0, &type metadata accessor for Playlist.Variant, &type metadata accessor for Array);
                        if (v12 <= 0x3F)
                        {
                          sub_1000308A0(319, &unk_1011A99A0, &type metadata for Bool);
                          if (v13 <= 0x3F)
                          {
                            swift_cvw_initStructMetadataWithLayoutString();
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1009F9124(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1009F9198()
{
  result = qword_1011AB908;
  if (!qword_1011AB908)
  {
    sub_1001109D0(&qword_1011AB900, &qword_100EF4F78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AB908);
  }

  return result;
}

unint64_t sub_1009F920C()
{
  result = qword_1011AB910;
  if (!qword_1011AB910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AB910);
  }

  return result;
}

uint64_t sub_1009F9260(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1009F92AC(uint64_t a1, char **a2)
{
  v5 = a1 + 56;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 56);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  if (v8)
  {
    while (1)
    {
      v11 = v10;
LABEL_8:
      v12 = *(*(a1 + 48) + (__clz(__rbit64(v8)) | (v11 << 6)));
      sub_1009FE68C(&v12, a2);
      if (v2)
      {
        break;
      }

      v8 &= v8 - 1;
      v10 = v11;
      if (!v8)
      {
        goto LABEL_5;
      }
    }

LABEL_11:
  }

  else
  {
LABEL_5:
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v9)
      {
        goto LABEL_11;
      }

      v8 = *(v5 + 8 * v11);
      ++v10;
      if (v8)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

BOOL sub_1009F9398(char a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = (a2 + 32);
  do
  {
    v5 = v3;
    if (v3-- == 0)
    {
      break;
    }

    v7 = ActionType.rawValue.getter(*v4);
    v9 = v8;
    if (v7 == ActionType.rawValue.getter(a1) && v9 == v10)
    {

      return v5 != 0;
    }

    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    ++v4;
  }

  while ((v12 & 1) == 0);
  return v5 != 0;
}

BOOL sub_1009F945C(char a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = (a2 + 32);
  do
  {
    v6 = v3;
    if (v3-- == 0)
    {
      break;
    }

    v8 = 0xD000000000000029;
    v9 = "nt";
    switch(*v4)
    {
      case 1:
        v8 = 0xD000000000000025;
        v9 = "LibraryView.RecentlyAdded";
        break;
      case 2:
        v8 = 0xD000000000000023;
        v9 = "LibraryView.Playlists";
        break;
      case 3:
        v8 = 0xD000000000000022;
        v9 = "LibraryView.Artists";
        break;
      case 4:
        v8 = 0xD000000000000021;
        v9 = "LibraryView.Albums";
        break;
      case 5:
        v8 = 0xD000000000000026;
        v9 = "LibraryView.Songs";
        break;
      case 6:
        v8 = 0xD000000000000027;
        v9 = "LibraryView.MadeForYou";
        break;
      case 7:
        v8 = 0xD000000000000022;
        v9 = "LibraryView.MusicVideos";
        break;
      case 8:
        v8 = 0xD000000000000028;
        v9 = "LibraryView.Genres";
        break;
      case 9:
        v8 = 0xD000000000000025;
        v9 = "LibraryView.Compilations";
        break;
      case 0xA:
        v8 = 0xD000000000000021;
        v9 = "LibraryView.Composers";
        break;
      case 0xB:
        v8 = 0xD000000000000026;
        v9 = "LibraryView.Shows";
        break;
      case 0xC:
        v8 = 0xD000000000000027;
        v9 = "LibraryView.Downloaded";
        break;
      default:
        break;
    }

    v10 = v9 | 0x8000000000000000;
    v11 = 0xD000000000000029;
    v12 = "nt";
    switch(a1)
    {
      case 1:
        v11 = 0xD000000000000025;
        v12 = "LibraryView.RecentlyAdded";
        break;
      case 2:
        v11 = 0xD000000000000023;
        v12 = "LibraryView.Playlists";
        break;
      case 3:
        v11 = 0xD000000000000022;
        v12 = "LibraryView.Artists";
        break;
      case 4:
        v11 = 0xD000000000000021;
        v12 = "LibraryView.Albums";
        break;
      case 5:
        v11 = 0xD000000000000026;
        v12 = "LibraryView.Songs";
        break;
      case 6:
        v11 = 0xD000000000000027;
        v12 = "LibraryView.MadeForYou";
        break;
      case 7:
        v11 = 0xD000000000000022;
        v12 = "LibraryView.MusicVideos";
        break;
      case 8:
        v11 = 0xD000000000000028;
        v12 = "LibraryView.Genres";
        break;
      case 9:
        v11 = 0xD000000000000025;
        v12 = "LibraryView.Compilations";
        break;
      case 10:
        v11 = 0xD000000000000021;
        v12 = "LibraryView.Composers";
        break;
      case 11:
        v11 = 0xD000000000000026;
        v12 = "LibraryView.Shows";
        break;
      case 12:
        v11 = 0xD000000000000027;
        v12 = "LibraryView.Downloaded";
        break;
      default:
        break;
    }

    if (v8 == v11 && v10 == (v12 | 0x8000000000000000))
    {

      return v6 != 0;
    }

    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    ++v4;
  }

  while ((v5 & 1) == 0);
  return v6 != 0;
}

void sub_1009F9754(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = a1;
    if (*(a1 + 16) == *(a2 + 16))
    {
      v4 = 0;
      v23 = a1 + 56;
      v5 = 1 << *(a1 + 32);
      if (v5 < 64)
      {
        v6 = ~(-1 << v5);
      }

      else
      {
        v6 = -1;
      }

      v7 = v6 & *(a1 + 56);
      v8 = (v5 + 63) >> 6;
      v27 = a2 + 56;
      v24 = v8;
      if (v7)
      {
        while (1)
        {
          v9 = __clz(__rbit64(v7));
          v26 = (v7 - 1) & v7;
LABEL_13:
          v12 = *(*(v3 + 48) + (v9 | (v4 << 6)));
          Hasher.init(_seed:)();
          Library.Menu.Identifier.rawValue.getter(v12);
          String.hash(into:)();

          v13 = Hasher._finalize()();
          v14 = -1 << *(a2 + 32);
          v15 = v13 & ~v14;
          if (((*(v27 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
          {
            break;
          }

          v16 = ~v14;
          while (1)
          {
            v17 = 0xD000000000000029;
            v18 = "nt";
            switch(*(*(a2 + 48) + v15))
            {
              case 1:
                v17 = 0xD000000000000025;
                v18 = "LibraryView.RecentlyAdded";
                break;
              case 2:
                v17 = 0xD000000000000023;
                v18 = "LibraryView.Playlists";
                break;
              case 3:
                v17 = 0xD000000000000022;
                v18 = "LibraryView.Artists";
                break;
              case 4:
                v17 = 0xD000000000000021;
                v18 = "LibraryView.Albums";
                break;
              case 5:
                v17 = 0xD000000000000026;
                v18 = "LibraryView.Songs";
                break;
              case 6:
                v17 = 0xD000000000000027;
                v18 = "LibraryView.MadeForYou";
                break;
              case 7:
                v17 = 0xD000000000000022;
                v18 = "LibraryView.MusicVideos";
                break;
              case 8:
                v17 = 0xD000000000000028;
                v18 = "LibraryView.Genres";
                break;
              case 9:
                v17 = 0xD000000000000025;
                v18 = "LibraryView.Compilations";
                break;
              case 0xA:
                v17 = 0xD000000000000021;
                v18 = "LibraryView.Composers";
                break;
              case 0xB:
                v17 = 0xD000000000000026;
                v18 = "LibraryView.Shows";
                break;
              case 0xC:
                v17 = 0xD000000000000027;
                v18 = "LibraryView.Downloaded";
                break;
              default:
                break;
            }

            v19 = v18 | 0x8000000000000000;
            v20 = 0xD000000000000029;
            v21 = "nt";
            switch(v12)
            {
              case 1:
                v20 = 0xD000000000000025;
                v21 = "LibraryView.RecentlyAdded";
                break;
              case 2:
                v20 = 0xD000000000000023;
                v21 = "LibraryView.Playlists";
                break;
              case 3:
                v20 = 0xD000000000000022;
                v21 = "LibraryView.Artists";
                break;
              case 4:
                v20 = 0xD000000000000021;
                v21 = "LibraryView.Albums";
                break;
              case 5:
                v20 = 0xD000000000000026;
                v21 = "LibraryView.Songs";
                break;
              case 6:
                v20 = 0xD000000000000027;
                v21 = "LibraryView.MadeForYou";
                break;
              case 7:
                v20 = 0xD000000000000022;
                v21 = "LibraryView.MusicVideos";
                break;
              case 8:
                v20 = 0xD000000000000028;
                v21 = "LibraryView.Genres";
                break;
              case 9:
                v20 = 0xD000000000000025;
                v21 = "LibraryView.Compilations";
                break;
              case 10:
                v20 = 0xD000000000000021;
                v21 = "LibraryView.Composers";
                break;
              case 11:
                v20 = 0xD000000000000026;
                v21 = "LibraryView.Shows";
                break;
              case 12:
                v20 = 0xD000000000000027;
                v21 = "LibraryView.Downloaded";
                break;
              default:
                break;
            }

            if (v17 == v20 && v19 == (v21 | 0x8000000000000000))
            {
              break;
            }

            v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v22)
            {
              goto LABEL_47;
            }

            v15 = (v15 + 1) & v16;
            if (((*(v27 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
            {
              return;
            }
          }

LABEL_47:
          v8 = v24;
          v3 = a1;
          v7 = v26;
          if (!v26)
          {
            goto LABEL_8;
          }
        }
      }

      else
      {
LABEL_8:
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
            return;
          }

          v11 = *(v23 + 8 * v4);
          ++v10;
          if (v11)
          {
            v9 = __clz(__rbit64(v11));
            v26 = (v11 - 1) & v11;
            goto LABEL_13;
          }
        }

        __break(1u);
      }
    }
  }
}

uint64_t Library.Menu.setSelectionState(_:for:)(char a1, uint64_t a2)
{
  if (a1)
  {
    sub_100993D24(a2);
  }

  else
  {
    sub_100A006DC(&v4, a2);
  }

  return a1 & 1;
}

uint64_t Library.Menu.move(_:to:)(char a1, unint64_t a2)
{
  v4 = a1;
  v5 = *v2;
  v6 = sub_100999FF4(a1, *v2);
  if (v7)
  {
    v9 = v2[2];
    v8 = v2[3];
    v10 = v2[4];
LABEL_5:
    v14 = v2[5];
    sub_100A00CC0();
    swift_allocError();
    *v15 = v9;
    *(v15 + 8) = v8;
    *(v15 + 16) = v10;
    *(v15 + 24) = v14;
    *(v15 + 32) = v4;

    return swift_willThrow();
  }

  v11 = v6;
  v10 = v2[4];
  result = sub_100999FF4(v4, v10);
  if (v13)
  {
    v9 = v2[2];
    v8 = v2[3];
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (*(v5 + 16) <= a2)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v16 = result;
  v17 = *(v5 + a2 + 32);
  v18 = sub_100999FF4(v17, v10);
  if (v19)
  {
    v9 = v2[2];
    v8 = v2[3];
    v4 = v17 | 0x80;
    goto LABEL_5;
  }

  v20 = v18;
  result = sub_1008B4BC0(v11);
  if (*(*v2 + 16) < a2)
  {
    goto LABEL_16;
  }

  sub_1008BBFD0(a2, a2, result);
  result = sub_1008B4BC0(v16);
  if (*(v2[4] + 16) < v20)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if ((v20 & 0x8000000000000000) == 0)
  {
    return sub_1008BBFD0(v20, v20, result);
  }

LABEL_18:
  __break(1u);
  return result;
}

Swift::Void __swiftcall Library.Menu.persist()()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];

  NSUserDefaults.libraryMenuRevision.setter(v1, v2, v3, v4, v5);
}

uint64_t NSUserDefaults.libraryMenuRevision.setter(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, __n128 a5)
{
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  v12[2] = a3;
  sub_100A00D14();
  v6 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v8 = v7;

  v12[3] = &type metadata for Data;
  v12[0] = v6;
  v12[1] = v8;
  v11[0] = 0x4D7972617262694CLL;
  v11[1] = 0xEB00000000756E65;
  sub_10002BC44(v6, v8);
  v9 = sub_10000988C();
  NSUserDefaults.subscript.setter(v12, v11, &type metadata for String, v9);
  return sub_10002C064(v6, v8);
}

uint64_t Library.Menu.revision.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t static Library.Menu.Request.label.getter()
{
  swift_beginAccess();
  v0 = *static Library.Menu.Request.label;

  return v0;
}

double static Library.Menu.Request.label.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *static Library.Menu.Request.label = a1;
  *&static Library.Menu.Request.label[8] = a2;

  return result;
}

id static Library.Menu.Request.with(_:)@<X0>(uint64_t (*a1)(__int128 *)@<X0>, _OWORD *a2@<X8>)
{
  result = [objc_opt_self() deviceMediaLibrary];
  if (result)
  {
    *&v7 = result;
    BYTE8(v7) = 0;
    v8 = 0uLL;
    *&v9 = &_swiftEmptySetSingleton;
    WORD4(v9) = 257;
    BYTE10(v9) = 0;
    v10 = 0u;
    v11 = 0u;
    result = a1(&v7);
    v5 = v10;
    a2[2] = v9;
    a2[3] = v5;
    a2[4] = v11;
    v6 = v8;
    *a2 = v7;
    a2[1] = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void Library.Menu.Request.MediaLibrarySource.init(_:)()
{
  ;
}

{
  ;
}

uint64_t static Library.Menu.Request.MediaLibrarySource.__derived_enum_equals(_:_:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if ((a2 & 1) == 0)
  {
    if ((a4 & 1) == 0)
    {
      sub_100009F78(0, &qword_1011AAEA0, NSObject_ptr);
      v4 = static NSObject.== infix(_:_:)();
      return v4 & 1;
    }

    return 0;
  }

  if ((a4 & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for MusicLibrary();
  v4 = static MusicLibrary.== infix(_:_:)();
  return v4 & 1;
}

uint64_t sub_1009FA3A4(uint64_t *a1, uint64_t *a2)
{
  if ((a1[1] & 1) == 0)
  {
    if ((a2[1] & 1) == 0)
    {
      sub_100009F78(0, &qword_1011AAEA0, NSObject_ptr);
      v2 = static NSObject.== infix(_:_:)();
      return v2 & 1;
    }

    return 0;
  }

  if ((a2[1] & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for MusicLibrary();
  v2 = static MusicLibrary.== infix(_:_:)();
  return v2 & 1;
}

void *Library.Menu.Request.librarySource.getter()
{
  v1 = *v0;
  sub_100A00D68(*v0, *(v0 + 8));
  return v1;
}

void Library.Menu.Request.librarySource.setter(uint64_t a1, char a2)
{
  sub_1003E156C(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2 & 1;
}

uint64_t Library.Menu.Request.editingRevision.getter()
{
  v1 = v0[6];
  sub_100A00D74(v1, v0[7], v0[8], v0[9]);
  return v1;
}

void Library.Menu.Request.editingRevision.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1005BF344(v4[6], v4[7], v4[8], v4[9]);
  v4[6] = a1;
  v4[7] = a2;
  v4[8] = a3;
  v4[9] = a4;
}

double Library.Menu.Request.perform(_:_:)@<D0>(void *a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v62 = a1;
  v7 = type metadata accessor for DispatchQoS.QoSClass();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchWorkItemFlags();
  __chkstk_darwin();
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v3;
  if (v4[1])
  {
    v15 = MusicLibrary.mediaLibrary.getter();
  }

  else
  {
    v15 = v14;
  }

  v52 = v4[2];
  v53 = v15;
  v16 = swift_allocObject();
  v17 = v4[3];
  v60 = v7;
  v61 = a3;
  v58 = v10;
  v59 = v8;
  v57 = v13;
  v54 = v11;
  v55 = a2;
  if (v17)
  {
    v18 = 1;
    v19 = 1;
  }

  else
  {
    v18 = 0;
    v19 = *(v4 + 42);
  }

  v56 = v16;
  *(v16 + 16) = v18;
  v63 = swift_allocObject();
  *(v63 + 16) = v19;
  v20 = v4[4];
  v21 = *(v4 + 40);
  v22 = objc_opt_self();

  v23 = [v22 standardUserDefaults];
  v24 = swift_allocObject();
  v26 = v4[6];
  v25 = v4[7];
  v28 = v4[8];
  v27 = v4[9];
  v51 = v25;
  if (v26)
  {
    v29 = v26;
    v30 = v25;
    v31 = v28;
    v32 = v27;
    v33 = v27;
  }

  else
  {
    v32 = v27;
    v29 = NSUserDefaults.libraryMenuRevision.getter();
  }

  v24[2] = v29;
  v24[3] = v30;
  v24[4] = v31;
  v24[5] = v33;
  if (*(v4 + 41))
  {
    v34 = v31;
  }

  else
  {
    v34 = v29;
  }

  v35 = swift_allocObject();
  *(v35 + 16) = v24;
  *(v35 + 24) = v23;
  *(v35 + 32) = v17;
  *(v35 + 40) = v34;
  v36 = v17;
  v37 = v52;
  v38 = v53;
  *(v35 + 48) = v53;
  *(v35 + 56) = v37;
  *(v35 + 64) = v20;
  *(v35 + 72) = v21;
  v40 = v55;
  v39 = v56;
  *(v35 + 80) = v63;
  *(v35 + 88) = v39;
  *(v35 + 96) = v62;
  *(v35 + 104) = v40;
  aBlock[4] = sub_100A00DD4;
  aBlock[5] = v35;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002BC98;
  aBlock[3] = &unk_1010D6C38;
  v52 = _Block_copy(aBlock);
  v64 = _swiftEmptyArrayStorage;
  sub_100A00D74(v26, v51, v28, v32);
  sub_1000297A0(&qword_1011AD950, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);

  v62 = v23;
  v41 = v36;
  v42 = v38;

  sub_10010FC20(&unk_1011AB610, &qword_100EF1E40);
  sub_100020674(&qword_1011AD960, &unk_1011AB610, &qword_100EF1E40, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v43 = type metadata accessor for DispatchWorkItem();
  swift_allocObject();
  v44 = DispatchWorkItem.init(flags:block:)();

  sub_100009F78(0, &qword_1011A9F80, OS_dispatch_queue_ptr);
  v46 = v58;
  v45 = v59;
  v47 = v60;
  (*(v59 + 104))(v58, enum case for DispatchQoS.QoSClass.userInteractive(_:), v60);
  v48 = static OS_dispatch_queue.global(qos:)();
  (*(v45 + 8))(v46, v47);
  OS_dispatch_queue.async(execute:)();

  v49 = v61;
  v61[3] = v43;
  v49[4] = &protocol witness table for DispatchWorkItem;

  *v49 = v44;

  return result;
}

uint64_t NSUserDefaults.libraryMenuRevision.getter()
{
  sub_1009FF0AC();
  sub_10000988C();
  NSUserDefaults.subscript.getter(&v6);
  if (v7)
  {
    if (swift_dynamicCast())
    {
      type metadata accessor for JSONDecoder();
      swift_allocObject();
      JSONDecoder.init()();
      sub_100A00E18();
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();
      sub_10002C064(0x4D7972617262694CLL, 0xEB00000000756E65);

      return v6;
    }
  }

  else
  {
    sub_1000095E8(&v6, &qword_1011ABB20, &unk_100EF1530);
  }

  if (qword_1011A69E8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000060E4(v0, static Logger.libraryMenu);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "No edits found — Returning stock menu revision", v3, 2u);
  }

  if (qword_1011A69E0 != -1)
  {
    swift_once();
  }

  v4 = static Library.Menu.Revision.Version.current;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  return v4;
}

double sub_1009FAF00(uint64_t *a1, void *a2, void *a3, void *a4, char *a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10, void (*a11)(__int128 *, uint64_t, uint64_t))
{
  if (qword_1011A69E0 != -1)
  {
    goto LABEL_150;
  }

  while (1)
  {
    v15 = static Library.Menu.Revision.Version.current;
    v14 = *algn_101219C18;
    swift_beginAccess();
    v16 = a1[3];
    sub_10095CBC8(a1[2], v15);
    v111 = a7;
    if (v17)
    {
      sub_1009F9754(v16, v14);
      if (v18)
      {
        break;
      }
    }

    sub_1009FD764(v15, v14);
    swift_endAccess();
    swift_beginAccess();
    v19 = a1[2];
    v20 = a1[3];
    v21 = a1[4];
    v22 = a1[5];

    NSUserDefaults.libraryMenuRevision.setter(v19, v20, v21, v22, v23);
    v108 = a1;
    if (a3)
    {
      goto LABEL_9;
    }

LABEL_6:
    a3 = a4;
    v24 = a4[2];
    if (!v24)
    {
      v112 = 0;
      goto LABEL_68;
    }

    v25 = 0;
    v112 = 0;
    v26 = a4 + 4;
LABEL_39:
    v35 = v25;
    while (v35 < v24)
    {
      v25 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        goto LABEL_149;
      }

      v36 = *(v26 + v35);
      if (v36 <= 4)
      {
        if (*(v26 + v35) <= 1u)
        {
          if (*(v26 + v35))
          {
            v37 = v112 | 0xC0;
          }

          else
          {
            v37 = v112 | 0x41;
          }

LABEL_38:
          v112 = v37;
          if (v25 == v24)
          {
            goto LABEL_68;
          }

          goto LABEL_39;
        }

        switch(v36)
        {
          case 2u:
            v37 = v112 | 2;
            goto LABEL_38;
          case 3u:
            v37 = v112 | 1;
            goto LABEL_38;
          case 4u:
            v37 = v112 | 0x80;
            goto LABEL_38;
        }
      }

      else if (*(v26 + v35) > 7u)
      {
        switch(v36)
        {
          case 8u:
            v37 = v112 | 4;
            goto LABEL_38;
          case 9u:
            v37 = v112 | 8;
            goto LABEL_38;
          case 0xAu:
            v37 = v112 | 0x300;
            goto LABEL_38;
        }
      }

      else
      {
        switch(v36)
        {
          case 5u:
            v37 = v112 | 0x400;
            goto LABEL_38;
          case 6u:
            v37 = v112 | 0x20;
            goto LABEL_38;
          case 7u:
            v37 = v112 | 0x10;
            goto LABEL_38;
        }
      }

      ++v35;
      if (v25 == v24)
      {
        goto LABEL_68;
      }
    }

LABEL_148:
    __break(1u);
LABEL_149:
    __break(1u);
LABEL_150:
    swift_once();
  }

  swift_endAccess();
  v108 = a1;
  if (!a3)
  {
    goto LABEL_6;
  }

LABEL_9:
  v101 = a3;
  MPMediaPickerConfiguration.musicTypeIdentifiers.getter();
  a7 = 0;
  v28 = *(v27 + 16);
  a1 = 0x8000000100E5EE40;
  v112 = 0;
  v106 = v27 + 40;
LABEL_12:
  v30 = (v106 + 16 * a7);
  a3 = a7;
  while (v28 != a3)
  {
    if (a3 >= v28)
    {
LABEL_146:
      __break(1u);
LABEL_147:
      __break(1u);
      goto LABEL_148;
    }

    a7 = a3 + 1;
    if (__OFADD__(a3, 1))
    {
      goto LABEL_147;
    }

    v32 = *(v30 - 1);
    v31 = *v30;
    v33 = v32 == 0xD000000000000014 && 0x8000000100E5EE60 == v31;
    if (v33 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v29 = 1247;
LABEL_11:
      v112 |= v29;
      goto LABEL_12;
    }

    if (v32 == 0xD00000000000001BLL && 0x8000000100E5EE40 == v31 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v29 = 32;
      goto LABEL_11;
    }

    if (v32 == 0xD00000000000001ALL && 0x8000000100E600B0 == v31 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v29 = 256;
      goto LABEL_11;
    }

    if (v32 != 0xD000000000000015 || 0x8000000100E600D0 != v31)
    {
      a3 = (a3 + 1);
      v30 += 2;
      if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        continue;
      }
    }

    v29 = 512;
    goto LABEL_11;
  }

  a7 = v111;
  if ([v101 selectionMode] == 2)
  {

    a1 = v108;
    a3 = a4;
  }

  else
  {
    v34 = [v101 selectionMode];

    v33 = v34 == 3;
    a1 = v108;
    a3 = a4;
    if (!v33)
    {
      goto LABEL_68;
    }
  }

  v112 &= 0xFFFFFFFFFFFFFC5FLL;
LABEL_68:
  v107 = [a5 filterAvailableContentGroups:v112 withOptions:{a6, v99}];
  if (qword_1011A6820 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v117);

  v125[4] = v121;
  v125[5] = v122;
  v125[6] = v123;
  v125[7] = v124;
  v125[0] = v117;
  v125[1] = v118;
  v125[2] = v119;
  v125[3] = v120;
  LODWORD(a4) = BYTE2(v117);
  if (v123 == 2)
  {
    v102 = 1;
  }

  else
  {
    v102 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v38 = a3[2];

  v113 = a5;
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  if (!v38)
  {
    a5 = _swiftEmptyArrayStorage;
    goto LABEL_133;
  }

  v39 = 0;
  a3 += 4;
  LODWORD(v99) = (v107 & 0x300) != 0;
  HIDWORD(v99) = (v107 & 0xC0) != 0;
  a5 = _swiftEmptyArrayStorage;
  while (2)
  {
    a1 = v39;
    while (2)
    {
      if (a1 >= v38)
      {
        __break(1u);
LABEL_145:
        __break(1u);
        goto LABEL_146;
      }

      v39 = (a1 + 1);
      if (__OFADD__(a1, 1))
      {
        goto LABEL_145;
      }

      v40 = *(a1 + a3);
      if (sub_10096A3C8(v40, a7))
      {
        goto LABEL_77;
      }

      if (a8)
      {
        v41 = v108[5];

        v42 = sub_10096A3C8(v40, v41);

        if (v40 != 5)
        {
          goto LABEL_83;
        }

LABEL_88:
        v42 &= v102 & a4;
LABEL_100:
        v54 = (*(a9 + 16) ^ 1) & v42;
        if ((*(a9 + 16) ^ 1) & 1) == 0 && (v42)
        {
          if (v40 > 6)
          {
            if (v40 > 9)
            {
              if ((v40 - 11) >= 2)
              {
                v54 = v99;
              }

              else
              {
                v54 = 1;
              }
            }

            else
            {
              if (v40 == 7)
              {
                v57 = -17;
              }

              else if (v40 == 8)
              {
                v57 = -5;
              }

              else
              {
                v57 = -9;
              }

LABEL_122:
              v54 = (v57 | v107) == -1;
            }
          }

          else if (v40 <= 2)
          {
            v54 = (v107 & 0x41) != 0;
            if (v40)
            {
              v54 = (v107 & 0xC0) != 0;
              if (v40 != 1)
              {
                v57 = -3;
                goto LABEL_122;
              }
            }
          }

          else
          {
            if (v40 <= 4)
            {
              if (v40 == 3)
              {
                v57 = -2;
              }

              else
              {
                v57 = -129;
              }

              goto LABEL_122;
            }

            v54 = (v107 & 0x400) != 0;
            if (v40 != 5)
            {
              v57 = -33;
              goto LABEL_122;
            }
          }
        }
      }

      else
      {
        v42 = 1;
        if (v40 == 5)
        {
          goto LABEL_88;
        }

LABEL_83:
        if (v40 == 12)
        {
          v48 = [objc_opt_self() deviceMediaLibrary];
          if (v48)
          {
            v49 = v48;
            sub_100009F78(0, &qword_1011ABAF0, MPMediaLibrary_ptr);
            v50 = v113;
            v51 = static NSObject.== infix(_:_:)();
          }

          else
          {
            v51 = 0;
          }

          v52 = [objc_opt_self() sharedManager];
          v53 = [v52 hasActiveDownloads];

          if (v42)
          {
            v42 = v51 & v53;
            goto LABEL_100;
          }

          v54 = 0;
        }

        else
        {
          if (v40 != 11)
          {
            goto LABEL_100;
          }

          v43 = [objc_opt_self() deviceMediaLibrary];
          if (v43)
          {
            v44 = v43;
            sub_100009F78(0, &qword_1011ABAF0, MPMediaLibrary_ptr);
            v45 = v113;
            v46 = static NSObject.== infix(_:_:)();

            v47 = v46 ^ 1;
          }

          else
          {
            v47 = 1;
          }

          v55 = [objc_opt_self() sharedManager];
          v56 = [v55 hasActiveDownloads];

          v54 = 0;
          if ((v42 & 1) != 0 && (a6 & 2) == 0 && (v47 & 1) == 0)
          {
            v42 = (v107 != 0) | v56;
            goto LABEL_100;
          }
        }
      }

      if (*(a10 + 16) == 1)
      {
        v54 &= v40 != 12;
      }

      a7 = v111;
      if ((v54 & 1) == 0)
      {
LABEL_77:
        a1 = (a1 + 1);
        if (v39 == v38)
        {
          a1 = v108;
          goto LABEL_133;
        }

        continue;
      }

      break;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a5 = sub_10089CF3C(0, *(a5 + 2) + 1, 1, a5);
    }

    a1 = v108;
    v59 = *(a5 + 2);
    v58 = *(a5 + 3);
    if (v59 >= v58 >> 1)
    {
      a5 = sub_10089CF3C((v58 > 1), v59 + 1, 1, a5);
    }

    *(a5 + 2) = v59 + 1;
    a5[v59 + 32] = v40;
    if (v39 != v38)
    {
      continue;
    }

    break;
  }

LABEL_133:

  swift_beginAccess();
  v61 = a1[2];
  v60 = a1[3];
  v62 = a1[4];
  v63 = a1[5];
  *&v117 = a5;
  *(&v117 + 1) = a2;
  *&v118 = v61;
  *(&v118 + 1) = v60;
  *&v119 = v62;
  *(&v119 + 1) = v63;
  LOBYTE(v120) = 0;
  sub_10010FC20(&unk_1011A9FB0, &unk_100EF1D50);
  v64 = swift_allocObject();
  *(v64 + 16) = xmmword_100EBEF50;
  UIScreen.Dimensions.size.getter();
  v66 = v65;
  v68 = v67;
  v70 = v69;
  v72 = v71;
  *(v64 + 56) = &type metadata for UserDefaultsKeyValueTrigger;
  *(v64 + 64) = &protocol witness table for UserDefaultsKeyValueTrigger;
  v73 = swift_allocObject();
  *(v64 + 32) = v73;
  v73[2] = v66;
  v73[3] = v68;
  v73[4] = v70;
  v73[5] = v72;
  v74 = qword_1011A68A0;

  v110 = a2;
  if (v74 != -1)
  {
    swift_once();
  }

  v75 = static ApplicationCapabilities.NotificationNames.isCloudLibraryEnabledDidChange;
  UIScreen.Dimensions.size.getter();
  *(v64 + 96) = &type metadata for NotificationTrigger;
  *(v64 + 104) = &protocol witness table for NotificationTrigger;
  *(v64 + 72) = v76;
  *(v64 + 80) = v77;
  v78 = qword_1011A6880;
  swift_retain_n();
  v79 = v75;
  if (v78 != -1)
  {
    swift_once();
  }

  v80 = static ApplicationCapabilities.NotificationNames.userSubscriptionStateDidChange;
  UIScreen.Dimensions.size.getter();
  *(v64 + 136) = &type metadata for NotificationTrigger;
  *(v64 + 144) = &protocol witness table for NotificationTrigger;
  *(v64 + 112) = v81;
  *(v64 + 120) = v82;
  UIScreen.Dimensions.size.getter();
  *(v64 + 176) = &type metadata for NotificationTrigger;
  *(v64 + 184) = &protocol witness table for NotificationTrigger;
  *(v64 + 152) = v83;
  *(v64 + 160) = v84;
  v85 = v113;
  v86 = v80;
  v87 = MPMediaLibraryDidChangeNotification;
  if ((sub_10096A3C8(12, v111) & 1) == 0)
  {
    if (qword_1011A6918 != -1)
    {
      swift_once();
    }

    v88 = static MusicLibrary.downloadingStateDidChange;
    UIScreen.Dimensions.size.getter();
    v90 = v89;
    v92 = v91;
    v93 = *(v64 + 16);
    v94 = *(v64 + 24);
    v95 = v88;
    if (v93 >= v94 >> 1)
    {
      v64 = sub_10089CF50((v94 > 1), v93 + 1, 1, v64);
    }

    v115 = &type metadata for NotificationTrigger;
    v116 = &protocol witness table for NotificationTrigger;
    *&v114 = v90;
    *(&v114 + 1) = v92;
    *(v64 + 16) = v93 + 1;
    sub_100059A8C(&v114, v64 + 40 * v93 + 32);
  }

  type metadata accessor for BindingRequestResponseInvalidation();
  swift_allocObject();
  v96 = BindingRequestResponseInvalidation.init(triggers:)(v64);
  v97 = sub_1000297A0(&qword_1011ABAF8, type metadata accessor for BindingRequestResponseInvalidation, &protocol conformance descriptor for BindingRequestResponseInvalidation);
  a11(&v117, v96, v97);

  sub_100014984(v125);

  return result;
}

uint64_t *Library.Menu.Revision.Version.current.unsafeMutableAddressor()
{
  if (qword_1011A69E0 != -1)
  {
    swift_once();
  }

  return &static Library.Menu.Revision.Version.current;
}

uint64_t Logger.libraryMenu.unsafeMutableAddressor()
{
  if (qword_1011A69E8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return sub_1000060E4(v0, static Logger.libraryMenu);
}

uint64_t Library.Menu.Identifier.contentGroups.getter(unsigned __int8 a1)
{
  if (a1 > 0xAu)
  {
    return 0;
  }

  else
  {
    return qword_100EF5A88[a1];
  }
}

double sub_1009FBF78@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  Library.Menu.Request.perform(_:_:)(sub_100A08D0C, v6, a3);

  return result;
}

BOOL sub_1009FC008(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v8[2] = a1[2];
  v8[3] = v2;
  v3 = a1[4];
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = a2[3];
  v9[2] = a2[2];
  v9[3] = v5;
  v9[4] = a2[4];
  v6 = *a2;
  v9[1] = a2[1];
  v8[4] = v3;
  v9[0] = v6;
  return _s9MusicCore7LibraryO4MenuV7RequestV23__derived_struct_equalsySbAG_AGtFZ_0(v8, v9);
}

unint64_t Library.Menu.Identifier.symbolName(for:)(char a1, char a2)
{
  result = 0x732E657261757173;
  switch(a2)
  {
    case 1:
      if (a1 == 2)
      {
        result = 0x6F6E2E636973756DLL;
      }

      else
      {
        result = 0x672E657261757173;
      }

      break;
    case 2:
      result = 0x696D2E636973756DLL;
      break;
    case 3:
      return result;
    case 4:
    case 6:
      result = 0x6F6E2E636973756DLL;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 7:
      result = 0x73726174697567;
      break;
    case 8:
      result = 0xD00000000000001ALL;
      break;
    case 9:
      result = 0xD000000000000013;
      break;
    case 10:
      result = 30324;
      break;
    case 11:
    case 12:
      result = 0xD000000000000011;
      break;
    default:
      result = 0x6B636F6C63;
      break;
  }

  return result;
}

uint64_t Library.Menu.Identifier.name(for:)(char a1, char a2)
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v7 = &v11[-v6];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v3 + 16))(v5, v7, v2);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v8 = qword_101219808;
  static Locale.current.getter();
  v9 = String.init(localized:table:bundle:locale:comment:)();
  (*(v3 + 8))(v7, v2);
  return v9;
}

BOOL static Library.Menu.Identifier.Location.__derived_enum_equals(_:_:)(int a1, int a2)
{
  if (a1 == 2)
  {
    return a2 == 2;
  }

  if (a2 == 2)
  {
    return 0;
  }

  return (a2 ^ a1 ^ 1) & 1;
}

BOOL sub_1009FC648(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v3 == 2)
  {
    return 0;
  }

  return (v3 ^ v2 ^ 1) & 1;
}

unint64_t Library.Menu.Identifier.description.getter(uint64_t a1)
{
  v1 = Library.Menu.Identifier.rawValue.getter(a1);
  sub_10000988C();
  v2 = StringProtocol.components<A>(separatedBy:)();

  v3 = *(v2 + 16);
  if (v3)
  {
    v1 = *(v2 + 16 + 16 * v3);
  }

  return v1;
}

unint64_t Library.Menu.Identifier.rawValue.getter(char a1)
{
  result = 0xD000000000000029;
  switch(a1)
  {
    case 1:
    case 9:
      result = 0xD000000000000025;
      break;
    case 2:
      result = 0xD000000000000023;
      break;
    case 3:
    case 7:
      result = 0xD000000000000022;
      break;
    case 4:
    case 10:
      result = 0xD000000000000021;
      break;
    case 5:
    case 11:
      result = 0xD000000000000026;
      break;
    case 6:
    case 12:
      result = 0xD000000000000027;
      break;
    case 8:
      result = 0xD000000000000028;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1009FC868(char *a1, char *a2)
{
  v2 = *a2;
  v3 = Library.Menu.Identifier.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == Library.Menu.Identifier.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1009FC8F0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Library.Menu.Identifier.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_1009FC954(uint64_t a1)
{
  Library.Menu.Identifier.rawValue.getter(*v1);
  String.hash(into:)();

  return result;
}

Swift::Int sub_1009FC9A8(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Library.Menu.Identifier.rawValue.getter(v2);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1009FCA08@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s9MusicCore7LibraryO4MenuV10IdentifierO8rawValueAGSgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1009FCA38@<X0>(unint64_t *a1@<X8>)
{
  result = Library.Menu.Identifier.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t Library.Menu.Revision.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = a3;
  v17 = a5;
  v9 = sub_10010FC20(&qword_1011AB9A8, &qword_100EF5008);
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v16 - v11;
  sub_10000954C(a1, a1[3]);
  sub_100A08298();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v18 = a4;
  v20 = 1;
  sub_10010FC20(&qword_1011AB9B8, &qword_100EF5010);
  sub_100A08D58(&qword_1011AB9C0, sub_100A082EC, &protocol conformance descriptor for <A> [A]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v5)
  {
    v13 = a2;
    v14 = v16;
    v18 = v17;
    v20 = 0;
    sub_10010FC20(&qword_1011AB9D0, &qword_100EF5018);
    sub_100A08340(&qword_1011AB9D8, sub_100A082EC, &protocol conformance descriptor for <> Set<A>);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v18 = v13;
    v19 = v14;
    v20 = 2;
    sub_100A083B8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1009FCDC0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE300000000000000;
  v4 = 7105633;
  if (v2 != 1)
  {
    v4 = 0x6E6F6973726576;
    v3 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x64657463656C6573;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0xE300000000000000;
  v8 = 7105633;
  if (*a2 != 1)
  {
    v8 = 0x6E6F6973726576;
    v7 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x64657463656C6573;
  }

  if (*a2)
  {
    v10 = v7;
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
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_1009FCEB4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_1009FCF50(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int sub_1009FCFD8(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1009FD070@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100A08460(*a1);
  *a2 = result;
  return result;
}

void sub_1009FD0A0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xE300000000000000;
  v5 = 7105633;
  if (v2 != 1)
  {
    v5 = 0x6E6F6973726576;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x64657463656C6573;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1009FD0F8()
{
  v1 = 7105633;
  if (*v0 != 1)
  {
    v1 = 0x6E6F6973726576;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x64657463656C6573;
  }
}

unint64_t sub_1009FD14C@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100A08460(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1009FD174(uint64_t a1)
{
  v2 = sub_100A08298();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1009FD1B0(uint64_t a1)
{
  v2 = sub_100A08298();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1009FD220()
{
  if (*v0)
  {
    return 0x64657463656C6573;
  }

  else
  {
    return 0x696669746E656469;
  }
}

void sub_1009FD264(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEB00000000737265;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x64657463656C6573 && a2 == 0xE800000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_1009FD344(uint64_t a1)
{
  v2 = sub_100A0840C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1009FD380(uint64_t a1)
{
  v2 = sub_100A0840C();

  return CodingKey.debugDescription.getter(a1, v2);
}

void static Library.Menu.Revision.Version.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10095CBC8(a1, a3);
  if (v6)
  {

    sub_1009F9754(a2, a4);
  }
}

uint64_t Library.Menu.Revision.Version.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_10010FC20(&qword_1011AB9E8, &qword_100EF5020);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v12 - v9;
  sub_10000954C(a1, a1[3]);
  sub_100A0840C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = a2;
  v13 = 0;
  sub_10010FC20(&qword_1011AB9B8, &qword_100EF5010);
  sub_100A08D58(&qword_1011AB9C0, sub_100A082EC, &protocol conformance descriptor for <A> [A]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v3)
  {
    v14 = a3;
    v13 = 1;
    sub_10010FC20(&qword_1011AB9D0, &qword_100EF5018);
    sub_100A08340(&qword_1011AB9D8, sub_100A082EC, &protocol conformance descriptor for <> Set<A>);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1009FD64C@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_100A084AC(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

void sub_1009FD694(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  sub_10095CBC8(*a1, *a2);
  if (v4)
  {

    sub_1009F9754(v2, v3);
  }
}

uint64_t Library.Menu.Revision.version.getter(uint64_t a1, uint64_t a2)
{

  return a1;
}

void sub_1009FD764(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v5 = *(v2 + 8);
  if (qword_1011A69E8 != -1)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v7 = type metadata accessor for Logger();
    sub_1000060E4(v7, static Logger.libraryMenu);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "╭ ⏩ Begin Migration", v10, 2u);
    }

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    v44 = v6;
    v45 = v5;
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v49 = v14;
      *v13 = 136315138;
      v47 = v6;
      v48 = v5;

      v15 = String.init<A>(describing:)();
      v17 = sub_100010678(v15, v16, &v49);

      *(v13 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v11, v12, "╞< %s", v13, 0xCu);
      sub_10000959C(v14);
    }

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v49 = v21;
      *v20 = 136315138;
      v47 = a1;
      v48 = a2;

      v22 = String.init<A>(describing:)();
      v24 = sub_100010678(v22, v23, &v49);

      *(v20 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v18, v19, "╞> %s", v20, 0xCu);
      sub_10000959C(v21);
    }

    v5 = v46[2];

    v26 = sub_10099546C(v25);

    v28 = sub_10099546C(v27);

    if (v28[2] <= v26[2] >> 3)
    {
      v47 = v26;

      sub_100A05BBC(v28);
      v6 = v47;
    }

    else
    {

      v6 = sub_100A05CB0(v28, v26);
    }

    if (v26[2] <= v28[2] >> 3)
    {
      v47 = v28;
      sub_100A05BBC(v26);
      v29 = v47;
    }

    else
    {
      v29 = sub_100A05CB0(v26, v28);
    }

    v49 = v5;
    v30 = *(v5 + 16);
    v31 = v26[2];

    if (v30 == v31)
    {
      break;
    }

    v32 = *(v5 + 16);
    if (!v32)
    {
      break;
    }

    v33 = 0;
    while (v33 < *(v5 + 16))
    {
      v34 = v33 + 1;
      LOBYTE(v47) = *(v5 + 32 + v33);
      sub_1009FE0C8(&v47, &v49);
      v33 = v34;
      if (v32 == v34)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_27:
    swift_once();
  }

LABEL_19:
  sub_1009F92AC(v6, &v49);

  sub_100A071F4(v29, a1, &v49);

  v35 = *(a1 + 16);
  swift_beginAccess();
  v36 = v49;
  if (v35 == *(v49 + 2))
  {

    v46[2] = v36;
    v37 = v46[3];
    if (v6[2] <= v37[2] >> 3)
    {

      sub_100A05BBC(v6);

      v38 = v37;
    }

    else
    {

      v38 = sub_100A05CB0(v6, v37);
    }

    v42 = sub_100A07468(v29, a1, a2);

    v43 = sub_1009FEDA0(v42, v38);

    v41 = v46;
    v46[3] = v43;
  }

  else
  {

    v39 = v46[3];
    sub_100A08F2C();
    swift_allocError();
    *v40 = v44;
    v40[1] = v45;
    v40[2] = v5;
    v40[3] = v39;
    v40[4] = a1;
    v40[5] = a2;
    swift_willThrow();

    v41 = v46;
  }

  sub_1009FDD80(v41, a1, a2);
}

void sub_1009FDD80(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  a1[1] = a3;

  v3 = qword_1011A69E8;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000060E4(v4, static Logger.libraryMenu);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "╞ ✅ Migration ended with", v7, 2u);
  }

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v24 = v11;
    *v10 = 136446210;
    v12 = Array.description.getter();
    v14 = v13;

    v15 = sub_100010678(v12, v14, &v24);

    *(v10 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v8, v9, "╞  - Ordered: %{public}s)", v10, 0xCu);
    sub_10000959C(v11);
  }

  else
  {
  }

  oslog = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v24 = v18;
    *v17 = 136446210;
    sub_1009954E0();
    v19 = Set.description.getter();
    v21 = v20;

    v22 = sub_100010678(v19, v21, &v24);

    *(v17 + 4) = v22;
    _os_log_impl(&_mh_execute_header, oslog, v16, "╞  - Selected: %{public}s)", v17, 0xCu);
    sub_10000959C(v18);
  }

  else
  {
  }
}

void sub_1009FE0C8(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a1;
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  v4 = *a2;

  v5 = sub_100999FF4(v3, v4);
  v7 = v6;

  if ((v7 & 1) == 0)
  {
    do
    {
      v19 = *a2;

      v20 = sub_1009FE394(v3, v19);
      v22 = v21;

      if ((v22 & 1) != 0 || v5 == v20)
      {
        break;
      }

      if (qword_1011A69E8 != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      sub_1000060E4(v23, static Logger.libraryMenu);
      v15 = Logger.logObject.getter();
      v24 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v15, v24))
      {
        v29 = v24;
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v28[0] = v26;
        *v25 = 136315650;
        if ((v20 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_15:
          __break(1u);
          return;
        }

        if (v20 >= *(*a2 + 16))
        {
          goto LABEL_15;
        }

        v8 = v26;
        v9 = Library.Menu.Identifier.description.getter(*(*a2 + v20 + 32));
        log = v15;
        v11 = v5;
        v12 = a2;
        v13 = v3;
        v14 = sub_100010678(v9, v10, v28);

        *(v25 + 4) = v14;
        v3 = v13;
        a2 = v12;
        *(v25 + 12) = 2048;
        *(v25 + 14) = v11;
        *(v25 + 22) = 2048;
        *(v25 + 24) = v20;
        v15 = log;
        _os_log_impl(&_mh_execute_header, log, v29, "╞ Removing duplicate:%s at index: [%ld, %ld]", v25, 0x20u);
        sub_10000959C(v8);
      }

      swift_beginAccess();
      sub_1008B4BC0(v20);
      swift_endAccess();
      v16 = *a2;

      v5 = sub_100999FF4(v3, v16);
      v18 = v17;
    }

    while ((v18 & 1) == 0);
  }
}

uint64_t sub_1009FE394(char a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = a2 + 31;
  do
  {
    v6 = v3;
    if (!v3)
    {
      break;
    }

    --v3;
    v7 = 0xD000000000000029;
    v8 = "nt";
    switch(*(v4 + v6))
    {
      case 1:
        v7 = 0xD000000000000025;
        v8 = "LibraryView.RecentlyAdded";
        break;
      case 2:
        v7 = 0xD000000000000023;
        v8 = "LibraryView.Playlists";
        break;
      case 3:
        v7 = 0xD000000000000022;
        v8 = "LibraryView.Artists";
        break;
      case 4:
        v7 = 0xD000000000000021;
        v8 = "LibraryView.Albums";
        break;
      case 5:
        v7 = 0xD000000000000026;
        v8 = "LibraryView.Songs";
        break;
      case 6:
        v7 = 0xD000000000000027;
        v8 = "LibraryView.MadeForYou";
        break;
      case 7:
        v7 = 0xD000000000000022;
        v8 = "LibraryView.MusicVideos";
        break;
      case 8:
        v7 = 0xD000000000000028;
        v8 = "LibraryView.Genres";
        break;
      case 9:
        v7 = 0xD000000000000025;
        v8 = "LibraryView.Compilations";
        break;
      case 0xA:
        v7 = 0xD000000000000021;
        v8 = "LibraryView.Composers";
        break;
      case 0xB:
        v7 = 0xD000000000000026;
        v8 = "LibraryView.Shows";
        break;
      case 0xC:
        v7 = 0xD000000000000027;
        v8 = "LibraryView.Downloaded";
        break;
      default:
        break;
    }

    v9 = v8 | 0x8000000000000000;
    v10 = 0xD000000000000029;
    v11 = "nt";
    switch(a1)
    {
      case 1:
        v10 = 0xD000000000000025;
        v11 = "LibraryView.RecentlyAdded";
        break;
      case 2:
        v10 = 0xD000000000000023;
        v11 = "LibraryView.Playlists";
        break;
      case 3:
        v10 = 0xD000000000000022;
        v11 = "LibraryView.Artists";
        break;
      case 4:
        v10 = 0xD000000000000021;
        v11 = "LibraryView.Albums";
        break;
      case 5:
        v10 = 0xD000000000000026;
        v11 = "LibraryView.Songs";
        break;
      case 6:
        v10 = 0xD000000000000027;
        v11 = "LibraryView.MadeForYou";
        break;
      case 7:
        v10 = 0xD000000000000022;
        v11 = "LibraryView.MusicVideos";
        break;
      case 8:
        v10 = 0xD000000000000028;
        v11 = "LibraryView.Genres";
        break;
      case 9:
        v10 = 0xD000000000000025;
        v11 = "LibraryView.Compilations";
        break;
      case 10:
        v10 = 0xD000000000000021;
        v11 = "LibraryView.Composers";
        break;
      case 11:
        v10 = 0xD000000000000026;
        v11 = "LibraryView.Shows";
        break;
      case 12:
        v10 = 0xD000000000000027;
        v11 = "LibraryView.Downloaded";
        break;
      default:
        break;
    }

    if (v7 == v10 && v9 == (v11 | 0x8000000000000000))
    {

      return v3;
    }

    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  while ((v5 & 1) == 0);
  return v3;
}

uint64_t sub_1009FE68C(unsigned __int8 *a1, char **a2)
{
  v29 = *a1;
  swift_beginAccess();
  v4 = *a2;
  v5 = *(*a2 + 2);
  if (v5)
  {
    v28 = a2;
    v6 = 0;
    v7 = "nt";
    do
    {
      if (v6 >= *(v4 + 2))
      {
        __break(1u);
        goto LABEL_81;
      }

      v8 = 0xD000000000000029;
      v9 = "nt";
      switch(v4[v6 + 32])
      {
        case 1:
          v8 = 0xD000000000000025;
          v9 = "LibraryView.RecentlyAdded";
          break;
        case 2:
          v8 = 0xD000000000000023;
          v9 = "LibraryView.Playlists";
          break;
        case 3:
          v8 = 0xD000000000000022;
          v9 = "LibraryView.Artists";
          break;
        case 4:
          v8 = 0xD000000000000021;
          v9 = "LibraryView.Albums";
          break;
        case 5:
          v8 = 0xD000000000000026;
          v9 = "LibraryView.Songs";
          break;
        case 6:
          v8 = 0xD000000000000027;
          v9 = "LibraryView.MadeForYou";
          break;
        case 7:
          v8 = 0xD000000000000022;
          v9 = "LibraryView.MusicVideos";
          break;
        case 8:
          v8 = 0xD000000000000028;
          v9 = "LibraryView.Genres";
          break;
        case 9:
          v8 = 0xD000000000000025;
          v9 = "LibraryView.Compilations";
          break;
        case 10:
          v8 = 0xD000000000000021;
          v9 = "LibraryView.Composers";
          break;
        case 11:
          v8 = 0xD000000000000026;
          v9 = "LibraryView.Shows";
          break;
        case 12:
          v8 = 0xD000000000000027;
          v9 = "LibraryView.Downloaded";
          break;
        default:
          break;
      }

      v10 = v9 | 0x8000000000000000;
      v11 = 0xD000000000000029;
      v12 = "nt";
      switch(v29)
      {
        case 1:
          v11 = 0xD000000000000025;
          v12 = "LibraryView.RecentlyAdded";
          break;
        case 2:
          v11 = 0xD000000000000023;
          v12 = "LibraryView.Playlists";
          break;
        case 3:
          v11 = 0xD000000000000022;
          v12 = "LibraryView.Artists";
          break;
        case 4:
          v11 = 0xD000000000000021;
          v12 = "LibraryView.Albums";
          break;
        case 5:
          v11 = 0xD000000000000026;
          v12 = "LibraryView.Songs";
          break;
        case 6:
          v11 = 0xD000000000000027;
          v12 = "LibraryView.MadeForYou";
          break;
        case 7:
          v11 = 0xD000000000000022;
          v12 = "LibraryView.MusicVideos";
          break;
        case 8:
          v11 = 0xD000000000000028;
          v12 = "LibraryView.Genres";
          break;
        case 9:
          v11 = 0xD000000000000025;
          v12 = "LibraryView.Compilations";
          break;
        case 10:
          v11 = 0xD000000000000021;
          v12 = "LibraryView.Composers";
          break;
        case 11:
          v11 = 0xD000000000000026;
          v12 = "LibraryView.Shows";
          break;
        case 12:
          v11 = 0xD000000000000027;
          v12 = "LibraryView.Downloaded";
          break;
        default:
          break;
      }

      if (v8 == v11 && v10 == (v12 | 0x8000000000000000))
      {

LABEL_37:
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v5 = a2;
        *a2 = v4;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          goto LABEL_86;
        }

        while (1)
        {
          *v5 = v4;
          v16 = *(v4 + 2);
          if ((v16 - 1) == v6)
          {
LABEL_39:
            v7 = v2;
            *v28 = v4;
            v14 = *(v4 + 2);
            if (v14 >= v6)
            {
              goto LABEL_40;
            }
          }

          else
          {
            v5 = (v6 + 1);
            v27 = v4 + 32;
            v18 = &v4[v6 + 33];
            while (v5 < v16)
            {
              v19 = 0xD000000000000029;
              v20 = v7;
              switch(*v18)
              {
                case 1:
                  v19 = 0xD000000000000025;
                  v20 = "LibraryView.RecentlyAdded";
                  break;
                case 2:
                  v19 = 0xD000000000000023;
                  v20 = "LibraryView.Playlists";
                  break;
                case 3:
                  v19 = 0xD000000000000022;
                  v20 = "LibraryView.Artists";
                  break;
                case 4:
                  v19 = 0xD000000000000021;
                  v20 = "LibraryView.Albums";
                  break;
                case 5:
                  v19 = 0xD000000000000026;
                  v20 = "LibraryView.Songs";
                  break;
                case 6:
                  v19 = 0xD000000000000027;
                  v20 = "LibraryView.MadeForYou";
                  break;
                case 7:
                  v19 = 0xD000000000000022;
                  v20 = "LibraryView.MusicVideos";
                  break;
                case 8:
                  v19 = 0xD000000000000028;
                  v20 = "LibraryView.Genres";
                  break;
                case 9:
                  v19 = 0xD000000000000025;
                  v20 = "LibraryView.Compilations";
                  break;
                case 10:
                  v19 = 0xD000000000000021;
                  v20 = "LibraryView.Composers";
                  break;
                case 11:
                  v19 = 0xD000000000000026;
                  v20 = "LibraryView.Shows";
                  break;
                case 12:
                  v19 = 0xD000000000000027;
                  v20 = "LibraryView.Downloaded";
                  break;
                default:
                  break;
              }

              v21 = v20 | 0x8000000000000000;
              v22 = 0xD000000000000029;
              v23 = v7;
              switch(v29)
              {
                case 1:
                  v22 = 0xD000000000000025;
                  v23 = "LibraryView.RecentlyAdded";
                  break;
                case 2:
                  v22 = 0xD000000000000023;
                  v23 = "LibraryView.Playlists";
                  break;
                case 3:
                  v22 = 0xD000000000000022;
                  v23 = "LibraryView.Artists";
                  break;
                case 4:
                  v22 = 0xD000000000000021;
                  v23 = "LibraryView.Albums";
                  break;
                case 5:
                  v22 = 0xD000000000000026;
                  v23 = "LibraryView.Songs";
                  break;
                case 6:
                  v22 = 0xD000000000000027;
                  v23 = "LibraryView.MadeForYou";
                  break;
                case 7:
                  v22 = 0xD000000000000022;
                  v23 = "LibraryView.MusicVideos";
                  break;
                case 8:
                  v22 = 0xD000000000000028;
                  v23 = "LibraryView.Genres";
                  break;
                case 9:
                  v22 = 0xD000000000000025;
                  v23 = "LibraryView.Compilations";
                  break;
                case 10:
                  v22 = 0xD000000000000021;
                  v23 = "LibraryView.Composers";
                  break;
                case 11:
                  v22 = 0xD000000000000026;
                  v23 = "LibraryView.Shows";
                  break;
                case 12:
                  v22 = 0xD000000000000027;
                  v23 = "LibraryView.Downloaded";
                  break;
                default:
                  break;
              }

              if (v19 == v22 && v21 == (v23 | 0x8000000000000000))
              {
              }

              else
              {
                v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if ((v24 & 1) == 0)
                {
                  if (v5 != v6)
                  {
                    if (v6 < 0)
                    {
                      goto LABEL_83;
                    }

                    v25 = *(v4 + 2);
                    if (v6 >= v25)
                    {
                      goto LABEL_84;
                    }

                    if (v5 >= v25)
                    {
                      goto LABEL_85;
                    }

                    v26 = v27[v6];
                    v27[v6] = *v18;
                    *v18 = v26;
                  }

                  ++v6;
                }
              }

              v5 = (v5 + 1);
              v16 = *(v4 + 2);
              ++v18;
              if (v5 == v16)
              {
                goto LABEL_39;
              }
            }

LABEL_81:
            __break(1u);
          }

          __break(1u);
LABEL_83:
          __break(1u);
LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
LABEL_86:
          v4 = sub_1008BC108(v4);
        }
      }

      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v13)
      {
        goto LABEL_37;
      }

      ++v6;
    }

    while (v5 != v6);
    v6 = *(v4 + 2);
    v14 = v6;
  }

  else
  {
    v6 = 0;
    v14 = 0;
  }

LABEL_40:
  sub_1008BC6F0(v6, v14);
  return swift_endAccess();
}

void sub_1009FEC88(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5)
{
  v6 = v5;
  v10 = a4 >> 1;
  swift_beginAccess();
  while (a3 != v10)
  {
    if (__OFSUB__(v10--, 1))
    {
      __break(1u);
LABEL_10:
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    if (v10 < a3)
    {
      goto LABEL_10;
    }

    v12 = *a5;
    v13 = *(a2 + v10);

    v14 = sub_1009F945C(v13, v12);

    if (v14)
    {
      __chkstk_darwin();
      v15 = v10;
      sub_100A08F80(&v15, &v16);
      if (!v6)
      {
        return;
      }

      goto LABEL_11;
    }
  }
}

uint64_t sub_1009FEDA0(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v12 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = sub_100A006DC(&v11, *(*(v2 + 48) + (v10 | (v9 << 6)))))
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v12;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void static Library.Menu.Revision.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_10095CBC8(a1, a5);
  if (v14)
  {
    sub_1009F9754(a2, a6);
    if (v15)
    {
      sub_10095CBC8(a3, a7);
      if (v16)
      {

        sub_1009F9754(a4, a8);
      }
    }
  }
}

void sub_1009FEF1C(uint64_t *a1@<X8>, void *a2@<X0>)
{
  sub_100A07BC8(a2);
  if (!v2)
  {
    *a1 = v4;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }
}

void sub_1009FEF6C(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = a2[1];
  v7 = a2[2];
  v6 = a2[3];
  sub_10095CBC8(*a1, *a2);
  if (v8)
  {
    sub_1009F9754(v2, v5);
    if (v9)
    {
      sub_10095CBC8(v4, v7);
      if (v10)
      {

        sub_1009F9754(v3, v6);
      }
    }
  }
}

void sub_1009FF008()
{
  sub_10089E24C(&off_1010C7C68);
  static Library.Menu.Revision.Version.current = &off_1010C7C38;
  *algn_101219C18 = v0;
}

uint64_t static Library.Menu.Revision.Version.current.getter()
{
  if (qword_1011A69E0 != -1)
  {
    swift_once();
  }

  v0 = static Library.Menu.Revision.Version.current;

  return v0;
}

void sub_1009FF0AC()
{
  LOBYTE(v20[0]) = 0;
  v1 = sub_100A08ED8();
  v2 = sub_10000988C();
  NSUserDefaults.subscript.getter(&v21);
  if (!*(&v22 + 1))
  {
    goto LABEL_8;
  }

  sub_10010FC20(&unk_1011A9FA0, &unk_100EEC490);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  v3 = v20[0];
  LOBYTE(v20[0]) = 1;
  NSUserDefaults.subscript.getter(&v21);
  if (!*(&v22 + 1))
  {
LABEL_7:

LABEL_8:
    sub_1000095E8(&v21, &qword_1011ABB20, &unk_100EF1530);
    return;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

  v4 = v20[0];
  v20[0] = 0x4D7972617262694CLL;
  v20[1] = 0xEB00000000756E65;
  NSUserDefaults.subscript.getter(&v21);
  if (*(&v22 + 1))
  {

    goto LABEL_7;
  }

  sub_1000095E8(&v21, &qword_1011ABB20, &unk_100EF1530);
  if (qword_1011A69E0 != -1)
  {
    swift_once();
  }

  sub_100A076F4(v3, v4, static Library.Menu.Revision.Version.current, *algn_101219C18);
  if (v0)
  {

    if (qword_1011A69E8 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1000060E4(v9, static Logger.libraryMenu);
    swift_errorRetain();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      *&v21 = v0;
      swift_errorRetain();
      sub_10010FC20(&qword_1011AB640, L"D\v\a");
      String.init<A>(describing:)();
      v14 = String._bridgeToObjectiveC()();

      *(v12 + 4) = v14;
      *v13 = v14;
      _os_log_impl(&_mh_execute_header, v10, v11, "Unable to migrate legacy library menu: %@", v12, 0xCu);
      sub_1000095E8(v13, &qword_1011A9120, &qword_100EEF840);
    }

    else
    {
    }
  }

  else
  {
    v15 = v5;
    v16 = v6;
    v17 = v7;
    v18 = v8;

    NSUserDefaults.libraryMenuRevision.setter(v15, v16, v17, v18, v19);
    v21 = 0u;
    v22 = 0u;
    LOBYTE(v20[0]) = 0;
    NSUserDefaults.subscript.setter(&v21, v20, &_s9LegacyKeyON, v1, v2);
    v21 = 0u;
    v22 = 0u;
    LOBYTE(v20[0]) = 1;
    NSUserDefaults.subscript.setter(&v21, v20, &_s9LegacyKeyON, v1, v2);
  }
}

void (*NSUserDefaults.libraryMenuRevision.modify(void *a1))(uint64_t **a1, char a2, __n128 a3)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[4] = v1;
  *v3 = NSUserDefaults.libraryMenuRevision.getter();
  v4[1] = v5;
  v4[2] = v6;
  v4[3] = v7;
  return sub_1009FF524;
}

void sub_1009FF524(uint64_t **a1, char a2, __n128 a3)
{
  v3 = *a1;
  v5 = **a1;
  v4 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  if (a2)
  {

    NSUserDefaults.libraryMenuRevision.setter(v5, v4, v6, v7, v8);
  }

  else
  {
    NSUserDefaults.libraryMenuRevision.setter(**a1, v4, v6, v7, a3);
  }

  free(v3);
}

uint64_t sub_1009FF5E8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD00000000000001CLL;
  }

  else
  {
    v3 = 0xD00000000000001DLL;
  }

  if (v2)
  {
    v4 = "";
  }

  else
  {
    v4 = "orderedLibraryViewIdentifiers";
  }

  if (*a2)
  {
    v5 = 0xD00000000000001CLL;
  }

  else
  {
    v5 = 0xD00000000000001DLL;
  }

  if (*a2)
  {
    v6 = "orderedLibraryViewIdentifiers";
  }

  else
  {
    v6 = "";
  }

  if (v3 == v5 && (v4 | 0x8000000000000000) == (v6 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1009FF690()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_1009FF70C(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int sub_1009FF774(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_1009FF7EC(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_1010C7E50, *a1);

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_1009FF84C(unint64_t *a1@<X8>)
{
  v2 = "orderedLibraryViewIdentifiers";
  v3 = 0xD00000000000001CLL;
  if (!*v1)
  {
    v3 = 0xD00000000000001DLL;
    v2 = "";
  }

  *a1 = v3;
  a1[1] = v2 | 0x8000000000000000;
}

uint64_t sub_1009FF888()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, static Logger.libraryMenu);
  sub_1000060E4(v0, static Logger.libraryMenu);
  return Logger.init(subsystem:category:)();
}

uint64_t static Logger.libraryMenu.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1011A69E8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = sub_1000060E4(v2, static Logger.libraryMenu);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Library.Menu.Identifier.musicAccessibilityIdentifier.getter(char a1)
{
  switch(a1)
  {
    case 1:
      if (qword_1011A6E78 != -1)
      {
        swift_once();
      }

      v1 = &static AccessibilityIdentifier.libraryPlaylistsView;
      break;
    case 2:
      if (qword_1011A6E28 != -1)
      {
        swift_once();
      }

      v1 = &static AccessibilityIdentifier.libraryArtistsListView;
      break;
    case 3:
      if (qword_1011A6E38 != -1)
      {
        swift_once();
      }

      v1 = &static AccessibilityIdentifier.libraryAlbumsView;
      break;
    case 4:
      if (qword_1011A6E80 != -1)
      {
        swift_once();
      }

      v1 = &static AccessibilityIdentifier.librarySongsView;
      break;
    case 5:
      if (qword_1011A6E68 != -1)
      {
        swift_once();
      }

      v1 = &static AccessibilityIdentifier.libraryMadeForYouView;
      break;
    case 6:
      if (qword_1011A6E70 != -1)
      {
        swift_once();
      }

      v1 = &static AccessibilityIdentifier.libraryMusicVideosView;
      break;
    case 7:
      if (qword_1011A6E60 != -1)
      {
        swift_once();
      }

      v1 = &static AccessibilityIdentifier.libraryGenresView;
      break;
    case 8:
      if (qword_1011A6E48 != -1)
      {
        swift_once();
      }

      v1 = &static AccessibilityIdentifier.libraryCompilationsView;
      break;
    case 9:
      if (qword_1011A6E40 != -1)
      {
        swift_once();
      }

      v1 = &static AccessibilityIdentifier.libraryComposersView;
      break;
    case 10:
      if (qword_1011A6E88 != -1)
      {
        swift_once();
      }

      v1 = &static AccessibilityIdentifier.libraryTVAndMoviesView;
      break;
    case 11:
      if (qword_1011A6E50 != -1)
      {
        swift_once();
      }

      v1 = &static AccessibilityIdentifier.libraryDownloadedView;
      break;
    case 12:
      if (qword_1011A6E58 != -1)
      {
        swift_once();
      }

      v1 = &static AccessibilityIdentifier.libraryDownloadingView;
      break;
    default:
      if (qword_1011A6E20 != -1)
      {
        swift_once();
      }

      v1 = &static AccessibilityIdentifier.libraryRecentlyAddedView;
      break;
  }

  v2 = *v1;

  return v2;
}

uint64_t sub_1009FFD28(char *a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v6 = *v2;
  Hasher.init(_seed:)();
  ActionType.rawValue.getter(v4);
  String.hash(into:)();

  v7 = Hasher._finalize()();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = ActionType.rawValue.getter(*(*(v6 + 48) + v9));
      v13 = v12;
      if (v11 == ActionType.rawValue.getter(v4) && v13 == v14)
      {
        break;
      }

      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v16)
      {
        goto LABEL_11;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_11:
    result = 0;
    v4 = *(*(v6 + 48) + v9);
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_100A043FC(v4, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v19;
    result = 1;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_1009FFEB0(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for AudioVariant();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1000297A0(&qword_1011AA8B8, &type metadata accessor for AudioVariant, &protocol conformance descriptor for AudioVariant);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_1000297A0(&qword_1011AA8C0, &type metadata accessor for AudioVariant, &protocol conformance descriptor for AudioVariant);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_100A045E4(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_100A00190(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v7 = Hasher._finalize()();

  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;
      if (v11 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v13 == v14)
      {

        goto LABEL_12;
      }

      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v16)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_12:
    v20 = *(*(v6 + 48) + 8 * v9);
    *a1 = v20;
    v21 = v20;
    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    v18 = a2;
    sub_100A04888(v18, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v22;
    *a1 = v18;
    return 1;
  }
}

uint64_t sub_100A0033C(_BYTE *a1, char a2)
{
  v3 = v2;
  v6 = *v3;
  Hasher.init(_seed:)();
  v7 = a2 & 1;
  Hasher._combine(_:)(a2 & 1);
  v8 = Hasher._finalize()();
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = *(v6 + 48);
      if (*(v12 + v10) == v7)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    LOBYTE(v7) = *(v12 + v10);
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_100A04A70(v7, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v15;
    result = 1;
  }

  *a1 = v7;
  return result;
}

uint64_t sub_100A0043C(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = __CocoaSet.member(for:)();

    if (v8)
    {

      type metadata accessor for AnyCancellable();
      swift_dynamicCast();
      result = 0;
      *a1 = v19;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v16 = sub_100A040E0(v7, result + 1);
    v17 = *(v16 + 16);
    if (*(v16 + 24) <= v17)
    {
      sub_100A035F0(v17 + 1);
    }

    sub_100A04314(v18, v16);

    *v3 = v16;
    goto LABEL_16;
  }

  type metadata accessor for AnyCancellable();
  sub_1000297A0(&qword_1011A7CF8, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
  v10 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v11 = -1 << *(v6 + 32);
  v12 = v10 & ~v11;
  if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;

    sub_100A04BC4(v15, v12, isUniquelyReferenced_nonNull_native);
    *v2 = v20;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v13 = ~v11;
  sub_1000297A0(&qword_1011A7D00, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    v12 = (v12 + 1) & v13;
    if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v12);

  return 0;
}

uint64_t sub_100A006DC(char *a1, uint64_t a2)
{
  v3 = a2;
  v4 = *v2;
  Hasher.init(_seed:)();
  Library.Menu.Identifier.rawValue.getter(v3);
  String.hash(into:)();

  v5 = Hasher._finalize()();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    while (1)
    {
      v9 = 0xD000000000000029;
      v10 = "nt";
      switch(*(*(v4 + 48) + v7))
      {
        case 1:
          v9 = 0xD000000000000025;
          v10 = "LibraryView.RecentlyAdded";
          break;
        case 2:
          v9 = 0xD000000000000023;
          v10 = "LibraryView.Playlists";
          break;
        case 3:
          v9 = 0xD000000000000022;
          v10 = "LibraryView.Artists";
          break;
        case 4:
          v9 = 0xD000000000000021;
          v10 = "LibraryView.Albums";
          break;
        case 5:
          v9 = 0xD000000000000026;
          v10 = "LibraryView.Songs";
          break;
        case 6:
          v9 = 0xD000000000000027;
          v10 = "LibraryView.MadeForYou";
          break;
        case 7:
          v9 = 0xD000000000000022;
          v10 = "LibraryView.MusicVideos";
          break;
        case 8:
          v9 = 0xD000000000000028;
          v10 = "LibraryView.Genres";
          break;
        case 9:
          v9 = 0xD000000000000025;
          v10 = "LibraryView.Compilations";
          break;
        case 0xA:
          v9 = 0xD000000000000021;
          v10 = "LibraryView.Composers";
          break;
        case 0xB:
          v9 = 0xD000000000000026;
          v10 = "LibraryView.Shows";
          break;
        case 0xC:
          v9 = 0xD000000000000027;
          v10 = "LibraryView.Downloaded";
          break;
        default:
          break;
      }

      v11 = v10 | 0x8000000000000000;
      v12 = 0xD000000000000029;
      v13 = "nt";
      switch(v3)
      {
        case 1:
          v12 = 0xD000000000000025;
          v13 = "LibraryView.RecentlyAdded";
          break;
        case 2:
          v12 = 0xD000000000000023;
          v13 = "LibraryView.Playlists";
          break;
        case 3:
          v12 = 0xD000000000000022;
          v13 = "LibraryView.Artists";
          break;
        case 4:
          v12 = 0xD000000000000021;
          v13 = "LibraryView.Albums";
          break;
        case 5:
          v12 = 0xD000000000000026;
          v13 = "LibraryView.Songs";
          break;
        case 6:
          v12 = 0xD000000000000027;
          v13 = "LibraryView.MadeForYou";
          break;
        case 7:
          v12 = 0xD000000000000022;
          v13 = "LibraryView.MusicVideos";
          break;
        case 8:
          v12 = 0xD000000000000028;
          v13 = "LibraryView.Genres";
          break;
        case 9:
          v12 = 0xD000000000000025;
          v13 = "LibraryView.Compilations";
          break;
        case 10:
          v12 = 0xD000000000000021;
          v13 = "LibraryView.Composers";
          break;
        case 11:
          v12 = 0xD000000000000026;
          v13 = "LibraryView.Shows";
          break;
        case 12:
          v12 = 0xD000000000000027;
          v13 = "LibraryView.Downloaded";
          break;
        default:
          break;
      }

      if (v9 == v12 && v11 == (v13 | 0x8000000000000000))
      {
        break;
      }

      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v14)
      {
        goto LABEL_35;
      }

      v7 = (v7 + 1) & v8;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_33;
      }
    }

LABEL_35:
    result = 0;
    v3 = *(*(v4 + 48) + v7);
  }

  else
  {
LABEL_33:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v17;
    sub_100A04DAC(v3, v7, isUniquelyReferenced_nonNull_native);
    *v17 = v19;
    result = 1;
  }

  *a1 = v3;
  return result;
}

uint64_t sub_100A00A90(void *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = static Hasher._hash(seed:_:)();
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
    sub_100A051B0(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_100A00B70(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_100A052D0(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

unint64_t sub_100A00CC0()
{
  result = qword_1011AB990;
  if (!qword_1011AB990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AB990);
  }

  return result;
}

unint64_t sub_100A00D14()
{
  result = qword_1011AB998;
  if (!qword_1011AB998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AB998);
  }

  return result;
}

void sub_100A00D68(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
    v2 = a1;
  }
}

double sub_100A00D74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
  }

  return result;
}

unint64_t sub_100A00E18()
{
  result = qword_1011AB9A0;
  if (!qword_1011AB9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AB9A0);
  }

  return result;
}

void sub_100A00E80()
{
  v1 = v0;
  v2 = type metadata accessor for AudioVariant();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011ABB08, &qword_100EF5918);
  v6 = *v0;
  v7 = static _SetStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    v9 = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || v9 >= v10 + 8 * v11)
    {
      memmove(v9, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    v24 = v3 + 16;
    while (v15)
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
      (*(v3 + 32))(*(v8 + 48) + v20, v5, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
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
    *v1 = v8;
  }
}

void sub_100A010B8()
{
  v1 = v0;
  sub_10010FC20(&qword_1011ABA80, &qword_100EF5890);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        v19 = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
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
}

void sub_100A01208()
{
  v1 = v0;
  sub_10010FC20(&qword_1011ABB00, &qword_100EF5910);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
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
}

void sub_100A01348()
{
  v1 = v0;
  sub_10010FC20(&qword_1011A7CF0, &qword_100EEC450);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
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
}

void sub_100A014AC()
{
  v1 = v0;
  sub_10010FC20(&qword_1011ABA98, &unk_100EF58A0);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
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
}

void sub_100A015EC()
{
  v1 = v0;
  sub_10010FC20(&qword_1011ABA78, &unk_100EF5880);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
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
}

void sub_100A01748(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10010FC20(&qword_1011A7D78, &qword_100EF5920);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
      Hasher.init(_seed:)();
      ActionType.rawValue.getter(v16);
      String.hash(into:)();

      v17 = Hasher._finalize()();
      v18 = -1 << *(v5 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
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
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

void sub_100A01984(uint64_t a1)
{
  v2 = v1;
  v34 = type metadata accessor for AudioVariant();
  v3 = *(v34 - 8);
  __chkstk_darwin();
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_10010FC20(&qword_1011ABB08, &qword_100EF5918);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  v8 = v6;
  if (*(v6 + 16))
  {
    v29 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v32 = v3 + 16;
    v33 = v3;
    v15 = v7 + 56;
    v30 = (v3 + 32);
    v31 = v8;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v33 + 72);
      (*(v33 + 16))(v5, *(v8 + 48) + v20 * (v17 | (v9 << 6)), v34);
      sub_1000297A0(&qword_1011AA8B8, &type metadata accessor for AudioVariant, &protocol conformance descriptor for AudioVariant);
      v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v30)(*(v7 + 48) + v16 * v20, v5, v34);
      ++*(v7 + 16);
      v8 = v31;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v29;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }
}

void sub_100A01CA0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10010FC20(&qword_1011ABA80, &qword_100EF5890);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v27 = v1;
    v28 = v3;
    v6 = 0;
    v7 = v3 + 56;
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
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v18 = v17;
      String.hash(into:)();
      v19 = Hasher._finalize()();

      v20 = -1 << *(v5 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v12 + 8 * v22);
          if (v26 != -1)
          {
            v13 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v18;
      ++*(v5 + 16);
      v3 = v28;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v27;
        goto LABEL_26;
      }

      v16 = *(v7 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

void sub_100A01EF4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10010FC20(&qword_1011ABB00, &qword_100EF5910);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v16);
      v17 = Hasher._finalize()();
      v18 = -1 << *(v5 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
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
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

void sub_100A02114(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10010FC20(&qword_1011A7CF0, &qword_100EEC450);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v26 = v3;
    v6 = 0;
    v7 = v3 + 56;
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
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v27 = (v10 - 1) & v10;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      type metadata accessor for AnyCancellable();
      sub_1000297A0(&qword_1011A7CF8, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);

      v18 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
      v3 = v26;
      v10 = v27;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v7 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v27 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

void sub_100A0238C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10010FC20(&qword_1011A7CD8, &unk_100EEC430);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_17:
      v20 = *(*(v3 + 48) + (v17 | (v6 << 6)));
      Hasher.init(_seed:)();
      String.hash(into:)();

      v12 = Hasher._finalize()();
      v13 = -1 << *(v5 + 32);
      v14 = v12 & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v11 + 8 * (v14 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v13) >> 6;
        while (++v15 != v22 || (v21 & 1) == 0)
        {
          v23 = v15 == v22;
          if (v15 == v22)
          {
            v15 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v15);
          if (v24 != -1)
          {
            v16 = __clz(__rbit64(~v24)) + (v15 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_29;
      }

      v16 = __clz(__rbit64((-1 << v14) & ~*(v11 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v11 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v5 + 48) + v16) = v20;
      ++*(v5 + 16);
    }

    v18 = v6;
    while (1)
    {
      v6 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_27;
      }

      v19 = *(v3 + 56 + 8 * v6);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v9 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v5;
  }
}

void sub_100A02734(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10010FC20(&qword_1011ABA98, &unk_100EF58A0);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      v17 = static Hasher._hash(seed:_:)();
      v18 = -1 << *(v5 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
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
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_24;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v2 = v5;
  }
}

void sub_100A02924(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10010FC20(&qword_1011ABA78, &unk_100EF5880);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v20 = Hasher._finalize()();
      v21 = -1 << *(v5 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

void sub_100A02B5C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10010FC20(&qword_1011A7D78, &qword_100EF5920);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
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
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      Hasher.init(_seed:)();
      ActionType.rawValue.getter(v17);
      String.hash(into:)();

      v18 = Hasher._finalize()();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + v13) = v17;
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

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_100A02DC8(uint64_t a1)
{
  v2 = v1;
  v37 = type metadata accessor for AudioVariant();
  v3 = *(v37 - 8);
  __chkstk_darwin();
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_10010FC20(&qword_1011ABB08, &qword_100EF5918);
  v6 = static _SetStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    v32 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v35 = v3 + 32;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v20;
      v20(v36, v19, v37);
      sub_1000297A0(&qword_1011AA8B8, &type metadata accessor for AudioVariant, &protocol conformance descriptor for AudioVariant);
      v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v34(*(v7 + 48) + v15 * v33, v36, v37);
      ++*(v7 + 16);
      v5 = v32;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

void sub_100A03124(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10010FC20(&qword_1011ABA80, &qword_100EF5890);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v27 = v1;
    v28 = v3;
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
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      String.hash(into:)();
      v18 = Hasher._finalize()();

      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
      v3 = v28;
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

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero(v7, ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v27;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_100A033A0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10010FC20(&qword_1011ABB00, &qword_100EF5910);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
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
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v17);
      v18 = Hasher._finalize()();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + v13) = v17;
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

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_100A035F0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10010FC20(&qword_1011A7CF0, &qword_100EEC450);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v27 = v3;
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
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      type metadata accessor for AnyCancellable();
      sub_1000297A0(&qword_1011A7CF8, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
      v18 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
      v3 = v27;
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

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero(v7, ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_100A03884(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10010FC20(&qword_1011A7CD8, &unk_100EEC430);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
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
    v12 = v4 + 56;
    while (v10)
    {
      v18 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_16:
      v21 = *(*(v3 + 48) + (v18 | (v6 << 6)));
      Hasher.init(_seed:)();
      String.hash(into:)();

      v13 = Hasher._finalize()();
      v14 = -1 << *(v5 + 32);
      v15 = v13 & ~v14;
      v16 = v15 >> 6;
      if (((-1 << v15) & ~*(v12 + 8 * (v15 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v14) >> 6;
        while (++v16 != v23 || (v22 & 1) == 0)
        {
          v24 = v16 == v23;
          if (v16 == v23)
          {
            v16 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v16);
          if (v25 != -1)
          {
            v17 = __clz(__rbit64(~v25)) + (v16 << 6);
            goto LABEL_8;
          }
        }

LABEL_31:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v15) & ~*(v12 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v12 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v5 + 48) + v17) = v21;
      ++*(v5 + 16);
    }

    v19 = v6;
    while (1)
    {
      v6 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v6 >= v11)
      {
        break;
      }

      v20 = v7[v6];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v10 = (v20 - 1) & v20;
        goto LABEL_16;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_100A03C5C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10010FC20(&qword_1011ABA98, &unk_100EF58A0);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v26 = v2;
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
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      v18 = static Hasher._hash(seed:_:)();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
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

    v2 = v26;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_100A03E80(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10010FC20(&qword_1011ABA78, &unk_100EF5880);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
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
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      Hasher.init(_seed:)();
      String.hash(into:)();
      v21 = Hasher._finalize()();
      v22 = -1 << *(v5 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero((v3 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

uint64_t sub_100A040E0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_10010FC20(&qword_1011A7CF0, &qword_100EEC450);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for AnyCancellable();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_100A035F0(v9 + 1);
        }

        v2 = v15;
        sub_1000297A0(&qword_1011A7CF8, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
        result = dispatch thunk of Hashable._rawHashValue(seed:)();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

unint64_t sub_100A04314(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AnyCancellable();
  sub_1000297A0(&qword_1011A7CF8, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
  dispatch thunk of Hashable._rawHashValue(seed:)();
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_100A043FC(char a1, unint64_t a2, char a3)
{
  v4 = v3;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_100A02B5C(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      sub_1001943D4(&qword_1011A7D78, &qword_100EF5920);
      goto LABEL_16;
    }

    sub_100A01748(v7 + 1);
  }

  v9 = *v3;
  Hasher.init(_seed:)();
  ActionType.rawValue.getter(a1);
  String.hash(into:)();

  v10 = Hasher._finalize()();
  v11 = -1 << *(v9 + 32);
  a2 = v10 & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    do
    {
      v13 = ActionType.rawValue.getter(*(*(v9 + 48) + a2));
      v15 = v14;
      if (v13 == ActionType.rawValue.getter(a1) && v15 == v16)
      {
        goto LABEL_19;
      }

      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v18)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v19 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v19 + 48) + a2) = a1;
  v20 = *(v19 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v19 + 16) = v22;
    return;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_100A045E4(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = type metadata accessor for AudioVariant();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin();
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100A02DC8(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_100A00E80();
      goto LABEL_12;
    }

    sub_100A01984(v11 + 1);
  }

  v13 = *v3;
  sub_1000297A0(&qword_1011AA8B8, &type metadata accessor for AudioVariant, &protocol conformance descriptor for AudioVariant);
  v14 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_1000297A0(&qword_1011AA8C0, &type metadata accessor for AudioVariant, &protocol conformance descriptor for AudioVariant);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_100A04888(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_100A03124(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      sub_100A010B8();
      goto LABEL_16;
    }

    sub_100A01CA0(v7 + 1);
  }

  v9 = *v3;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v10 = Hasher._finalize()();

  v11 = -1 << *(v9 + 32);
  a2 = v10 & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    _s3__C4NameVMa_0(0);
    do
    {
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;
      if (v13 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v15 == v16)
      {
        goto LABEL_19;
      }

      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v18)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v19 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v19 + 48) + 8 * a2) = a1;
  v20 = *(v19 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v19 + 16) = v22;
    return;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_100A04A70(char a1, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100A033A0(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_100A01208();
      a2 = v7;
      goto LABEL_12;
    }

    sub_100A01EF4(v5 + 1);
  }

  v8 = *v3;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  v9 = Hasher._finalize()();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + a2) != (a1 & 1))
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + a2) = a1 & 1;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_100A04BC4(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100A035F0(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_100A01348();
      goto LABEL_12;
    }

    sub_100A02114(v6 + 1);
  }

  v8 = *v3;
  type metadata accessor for AnyCancellable();
  sub_1000297A0(&qword_1011A7CF8, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
  v9 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_1000297A0(&qword_1011A7D00, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
    while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = a1;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_100A04DAC(char a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_40;
  }

  if (a3)
  {
    sub_100A03884(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_1001943D4(&qword_1011A7CD8, &unk_100EEC430);
      goto LABEL_40;
    }

    sub_100A0238C(v6 + 1);
  }

  v8 = *v3;
  Hasher.init(_seed:)();
  Library.Menu.Identifier.rawValue.getter(a1);
  String.hash(into:)();

  v9 = Hasher._finalize()();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {
      v12 = 0xD000000000000029;
      v13 = "nt";
      switch(*(*(v8 + 48) + a2))
      {
        case 1:
          v12 = 0xD000000000000025;
          v13 = "LibraryView.RecentlyAdded";
          break;
        case 2:
          v12 = 0xD000000000000023;
          v13 = "LibraryView.Playlists";
          break;
        case 3:
          v12 = 0xD000000000000022;
          v13 = "LibraryView.Artists";
          break;
        case 4:
          v12 = 0xD000000000000021;
          v13 = "LibraryView.Albums";
          break;
        case 5:
          v12 = 0xD000000000000026;
          v13 = "LibraryView.Songs";
          break;
        case 6:
          v12 = 0xD000000000000027;
          v13 = "LibraryView.MadeForYou";
          break;
        case 7:
          v12 = 0xD000000000000022;
          v13 = "LibraryView.MusicVideos";
          break;
        case 8:
          v12 = 0xD000000000000028;
          v13 = "LibraryView.Genres";
          break;
        case 9:
          v12 = 0xD000000000000025;
          v13 = "LibraryView.Compilations";
          break;
        case 0xA:
          v12 = 0xD000000000000021;
          v13 = "LibraryView.Composers";
          break;
        case 0xB:
          v12 = 0xD000000000000026;
          v13 = "LibraryView.Shows";
          break;
        case 0xC:
          v12 = 0xD000000000000027;
          v13 = "LibraryView.Downloaded";
          break;
        default:
          break;
      }

      v14 = v13 | 0x8000000000000000;
      v15 = 0xD000000000000029;
      v16 = "nt";
      switch(a1)
      {
        case 1:
          v15 = 0xD000000000000025;
          v16 = "LibraryView.RecentlyAdded";
          break;
        case 2:
          v15 = 0xD000000000000023;
          v16 = "LibraryView.Playlists";
          break;
        case 3:
          v15 = 0xD000000000000022;
          v16 = "LibraryView.Artists";
          break;
        case 4:
          v15 = 0xD000000000000021;
          v16 = "LibraryView.Albums";
          break;
        case 5:
          v15 = 0xD000000000000026;
          v16 = "LibraryView.Songs";
          break;
        case 6:
          v15 = 0xD000000000000027;
          v16 = "LibraryView.MadeForYou";
          break;
        case 7:
          v15 = 0xD000000000000022;
          v16 = "LibraryView.MusicVideos";
          break;
        case 8:
          v15 = 0xD000000000000028;
          v16 = "LibraryView.Genres";
          break;
        case 9:
          v15 = 0xD000000000000025;
          v16 = "LibraryView.Compilations";
          break;
        case 10:
          v15 = 0xD000000000000021;
          v16 = "LibraryView.Composers";
          break;
        case 11:
          v15 = 0xD000000000000026;
          v16 = "LibraryView.Shows";
          break;
        case 12:
          v15 = 0xD000000000000027;
          v16 = "LibraryView.Downloaded";
          break;
        default:
          break;
      }

      if (v12 == v15 && v14 == (v16 | 0x8000000000000000))
      {
        goto LABEL_43;
      }

      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v17)
      {
        goto LABEL_44;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_40:
  v18 = *v22;
  *(*v22 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + a2) = a1;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v18 + 16) = v21;
    return;
  }

  __break(1u);
LABEL_43:

LABEL_44:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_100A051B0(uint64_t a1, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100A03C5C(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_100A014AC();
      a2 = v7;
      goto LABEL_12;
    }

    sub_100A02734(v5 + 1);
  }

  v8 = *v3;
  v9 = static Hasher._hash(seed:_:)();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 8 * a2) != a1)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = a1;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_100A052D0(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_100A03E80(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_100A015EC();
      goto LABEL_16;
    }

    sub_100A02924(v8 + 1);
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v11 = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == a1 && v14[1] == a2;
      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = a1;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void *sub_100A05450(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v9 = sub_100A07334(v8, a2, a3, a5);
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();

    return v9;
  }

  return result;
}

uint64_t sub_100A05504(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = type metadata accessor for AudioVariant();
  v8 = *(v35 - 8);
  __chkstk_darwin();
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return &_swiftEmptySetSingleton;
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_10010FC20(&qword_1011ABB08, &qword_100EF5918);
  result = static _SetStorage.allocate(capacity:)();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_1000297A0(&qword_1011AA8B8, &type metadata accessor for AudioVariant, &protocol conformance descriptor for AudioVariant);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

Swift::Int sub_100A0582C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_10010FC20(&qword_1011A7CD8, &unk_100EEC430);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + (v13 | (v11 << 6)));
    Hasher.init(_seed:)();
    String.hash(into:)();

    result = Hasher._finalize()();
    v17 = -1 << v9[32];
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 6) + v20) = v16;
    ++*(v9 + 2);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}