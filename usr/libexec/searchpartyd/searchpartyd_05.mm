uint64_t sub_100091AFC()
{
  v1 = *(sub_1000BC4D4(&qword_101697268, &qword_101394FE0) - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);

  sub_100016590(*(v0 + 3), *(v0 + 4));
  sub_100016590(*(v0 + 5), *(v0 + 6));
  sub_100016590(*(v0 + 7), *(v0 + 8));
  v4 = *(v0 + 10);
  if (v4 >> 60 != 15)
  {
    sub_100016590(*(v0 + 9), v4);
  }

  v5 = (v2 + 112) & ~v2;
  v6 = *(v0 + 12);
  if (v6 >> 60 != 15)
  {
    sub_100016590(*(v0 + 11), v6);
  }

  v7 = &v0[v5];
  v8 = type metadata accessor for AccessoryProductInfo(0);
  if (!(*(*(v8 - 1) + 48))(&v0[v5], 1, v8))
  {
    v26 = (v2 + 112) & ~v2;
    v27 = v3;
    v9 = v8[5];
    v10 = type metadata accessor for ServerStatusCode();
    (*(*(v10 - 8) + 8))(&v7[v9], v10);

    v11 = v8[17];
    v12 = type metadata accessor for URL();
    v13 = *(v12 - 8);
    v14 = *(v13 + 48);
    if (!v14(&v7[v11], 1, v12))
    {
      (*(v13 + 8))(&v7[v11], v12);
    }

    v15 = v8[18];
    if (!v14(&v7[v15], 1, v12))
    {
      (*(v13 + 8))(&v7[v15], v12);
    }

    v16 = &v7[v8[21]];
    v17 = type metadata accessor for AccessoryInfoResponseContent.Configuration(0);
    if (!(*(*(v17 - 8) + 48))(v16, 1, v17))
    {

      v18 = *(v17 + 44);
      if (!v14(&v16[v18], 1, v12))
      {
        (*(v13 + 8))(&v16[v18], v12);
      }

      v19 = *(v17 + 48);
      if (!v14(&v16[v19], 1, v12))
      {
        (*(v13 + 8))(&v16[v19], v12);
      }
    }

    v20 = &v7[v8[24]];
    v21 = v20[1];
    if (v21 >> 60 != 15)
    {
      sub_100016590(*v20, v21);
    }

    v22 = &v7[v8[25]];
    v23 = v22[1];
    if (v23 >> 60 != 15)
    {
      sub_100016590(*v22, v23);
    }

    v24 = *(v13 + 8);
    v24(&v7[v8[26]], v12);
    v24(&v7[v8[27]], v12);
    v24(&v7[v8[28]], v12);
    v24(&v7[v8[29]], v12);
    v24(&v7[v8[30]], v12);
    v24(&v7[v8[31]], v12);

    v24(&v7[v8[38]], v12);
    v24(&v7[v8[39]], v12);
    v24(&v7[v8[40]], v12);
    v24(&v7[v8[41]], v12);
    v24(&v7[v8[42]], v12);
    v24(&v7[v8[43]], v12);

    v5 = v26;
    v3 = v27;
  }

  return _swift_deallocObject(v0, v5 + v3);
}

uint64_t sub_100092090()
{
  sub_100016590(*(v0 + 16), *(v0 + 24));
  sub_100016590(*(v0 + 32), *(v0 + 40));
  sub_100016590(*(v0 + 48), *(v0 + 56));
  sub_100016590(*(v0 + 64), *(v0 + 72));

  return _swift_deallocObject(v0, 80);
}

uint64_t sub_1000920E0()
{
  sub_100016590(v0[2], v0[3]);
  sub_100016590(v0[4], v0[5]);
  sub_100016590(v0[6], v0[7]);
  sub_100016590(v0[8], v0[9]);
  sub_100016590(v0[10], v0[11]);
  sub_100016590(v0[12], v0[13]);
  sub_100016590(v0[14], v0[15]);
  sub_100016590(v0[16], v0[17]);
  sub_100016590(v0[18], v0[19]);
  sub_100016590(v0[20], v0[21]);
  sub_100016590(v0[22], v0[23]);
  v1 = v0[25];
  if (v1 >> 60 != 15)
  {
    sub_100016590(v0[24], v1);
  }

  return _swift_deallocObject(v0, 208);
}

uint64_t sub_100092180()
{
  sub_100016590(*(v0 + 16), *(v0 + 24));
  sub_100016590(*(v0 + 32), *(v0 + 40));
  sub_100016590(*(v0 + 48), *(v0 + 56));
  sub_100016590(*(v0 + 64), *(v0 + 72));
  sub_100016590(*(v0 + 80), *(v0 + 88));
  sub_100016590(*(v0 + 96), *(v0 + 104));
  sub_100016590(*(v0 + 112), *(v0 + 120));
  sub_100016590(*(v0 + 128), *(v0 + 136));
  sub_100016590(*(v0 + 144), *(v0 + 152));
  sub_100016590(*(v0 + 160), *(v0 + 168));
  sub_100016590(*(v0 + 176), *(v0 + 184));
  sub_100016590(*(v0 + 192), *(v0 + 200));
  sub_100016590(*(v0 + 216), *(v0 + 224));

  return _swift_deallocObject(v0, 232);
}

uint64_t sub_100092218()
{
  sub_100016590(*(v0 + 16), *(v0 + 24));
  sub_100016590(*(v0 + 32), *(v0 + 40));
  sub_100016590(*(v0 + 48), *(v0 + 56));
  sub_100016590(*(v0 + 64), *(v0 + 72));
  sub_100016590(*(v0 + 80), *(v0 + 88));

  return _swift_deallocObject(v0, 96);
}

uint64_t sub_100092270()
{
  sub_100016590(*(v0 + 16), *(v0 + 24));
  sub_100016590(*(v0 + 32), *(v0 + 40));

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1000922B0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_1000922F8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100092330()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_1000923F4()
{
  v1 = sub_1000BC4D4(&qword_1016998C8, &qword_1013AAC70);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return _swift_deallocObject(v0, v7 + v8);
}

uint64_t sub_100092558()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_100092624()
{

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_100092664()
{
  sub_100016590(*(v0 + 16), *(v0 + 24));
  sub_100016590(*(v0 + 32), *(v0 + 40));

  sub_100016590(*(v0 + 96), *(v0 + 104));
  sub_100016590(*(v0 + 112), *(v0 + 120));
  sub_100016590(*(v0 + 128), *(v0 + 136));
  sub_100016590(*(v0 + 144), *(v0 + 152));

  return _swift_deallocObject(v0, 168);
}

uint64_t sub_1000926DC()
{
  sub_100016590(v0[2], v0[3]);
  sub_100016590(v0[4], v0[5]);
  sub_100016590(v0[6], v0[7]);
  v1 = v0[9];
  if (v1 >> 60 != 15)
  {
    sub_100016590(v0[8], v1);
  }

  v2 = v0[11];
  if (v2 >> 60 != 15)
  {
    sub_100016590(v0[10], v2);
  }

  return _swift_deallocObject(v0, 96);
}

uint64_t sub_100092754()
{
  v1 = type metadata accessor for OwnedBeaconRecord(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 40) & ~v2;
  v20 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();

  v4 = v0 + v3;
  sub_100016590(*(v0 + v3), *(v0 + v3 + 8));
  v5 = v1[5];
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v0 + v3 + v5, v6);
  v9 = v0 + v3 + v1[6];
  type metadata accessor for StableIdentifier(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_13;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      v8(v9, v6);
      v19 = (v2 + 40) & ~v2;
      sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

LABEL_12:
      v3 = v19;
LABEL_13:

      break;
    case 3:
      v8(v9, v6);
      v19 = (v2 + 40) & ~v2;
      sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

      goto LABEL_12;
    case 4:
      goto LABEL_13;
  }

LABEL_14:
  v11 = v1[7];
  if (!(*(v7 + 48))(v4 + v11, 1, v6))
  {
    v8(v4 + v11, v6);
  }

  v12 = v1[8];
  v13 = type metadata accessor for Date();
  (*(*(v13 - 8) + 8))(v4 + v12, v13);
  sub_100016590(*(v4 + v1[9]), *(v4 + v1[9] + 8));
  v14 = (v4 + v1[10]);
  v15 = v14[1];
  if (v15 >> 60 != 15)
  {
    sub_100016590(*v14, v15);
  }

  v16 = (v4 + v1[11]);
  v17 = v16[1];
  if (v17 >> 60 != 15)
  {
    sub_100016590(*v16, v17);
  }

  sub_100016590(*(v4 + v1[12]), *(v4 + v1[12] + 8));
  sub_100016590(*(v4 + v1[13]), *(v4 + v1[13] + 8));

  return _swift_deallocObject(v0, ((v20 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_100092AD4()
{
  sub_100016590(*(v0 + 16), *(v0 + 24));
  sub_100016590(*(v0 + 32), *(v0 + 40));

  sub_100016590(*(v0 + 96), *(v0 + 104));
  sub_100016590(*(v0 + 112), *(v0 + 120));
  sub_100016590(*(v0 + 128), *(v0 + 136));
  sub_100016590(*(v0 + 144), *(v0 + 152));
  sub_100016590(*(v0 + 160), *(v0 + 168));
  sub_100016590(*(v0 + 176), *(v0 + 184));
  sub_100016590(*(v0 + 192), *(v0 + 200));

  return _swift_deallocObject(v0, 208);
}

uint64_t sub_100092B64()
{
  swift_unknownObjectRelease();
  sub_100016590(*(v0 + 32), *(v0 + 40));

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_100092BA4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100092BF8()
{
  v1 = *(v0 + 32);
  sub_100017D5C(v1, *(v0 + 40));
  return v1;
}

uint64_t sub_100092C2C()
{
  v1 = *(v0 + 48);
  sub_100017D5C(v1, *(v0 + 56));
  return v1;
}

uint64_t sub_100092C60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 40));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_100092D2C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 40)) = a2 + 1;
  }

  return result;
}

uint64_t sub_100092E5C()
{
  v1 = v0[4];
  if (v1 >> 60 != 15)
  {
    sub_100016590(v0[3], v1);
  }

  v2 = v0[6];
  if (v2 >> 60 != 15)
  {
    sub_100016590(v0[5], v2);
  }

  return _swift_deallocObject(v0, 80);
}

uint64_t sub_100092ED4()
{

  sub_100016590(v0[8], v0[9]);
  sub_100016590(v0[10], v0[11]);
  sub_100016590(v0[12], v0[13]);
  sub_100016590(v0[14], v0[15]);
  sub_100016590(v0[16], v0[17]);
  sub_100016590(v0[18], v0[19]);
  sub_100016590(v0[20], v0[21]);
  sub_100016590(v0[22], v0[23]);
  sub_100016590(v0[24], v0[25]);
  v1 = v0[27];
  if (v1 >> 60 != 15)
  {
    sub_100016590(v0[26], v1);
  }

  sub_100016590(v0[28], v0[29]);
  sub_100016590(v0[30], v0[31]);

  v2 = v0[35];
  if (v2 >> 60 != 15)
  {
    sub_100016590(v0[34], v2);
  }

  return _swift_deallocObject(v0, 288);
}

uint64_t sub_100092FAC()
{
  sub_100016590(v0[2], v0[3]);
  sub_100016590(v0[4], v0[5]);
  sub_100016590(v0[6], v0[7]);
  v1 = v0[9];
  if (v1 >> 60 != 15)
  {
    sub_100016590(v0[8], v1);
  }

  v2 = v0[11];
  if (v2 >> 60 != 15)
  {
    sub_100016590(v0[10], v2);
  }

  return _swift_deallocObject(v0, 96);
}

uint64_t sub_100093024()
{
  sub_100016590(v0[2], v0[3]);
  sub_100016590(v0[4], v0[5]);
  v1 = v0[7];
  if (v1 >> 60 != 15)
  {
    sub_100016590(v0[6], v1);
  }

  sub_100016590(v0[15], v0[16]);
  sub_100016590(v0[17], v0[18]);
  sub_100016590(v0[19], v0[20]);

  sub_100016590(v0[26], v0[27]);
  sub_100016590(v0[28], v0[29]);
  sub_100016590(v0[30], v0[31]);
  sub_100016590(v0[32], v0[33]);
  sub_100016590(v0[34], v0[35]);
  v2 = v0[37];
  if (v2 >> 60 != 15)
  {
    sub_100016590(v0[36], v2);
  }

  v3 = v0[41];
  if (v3 >> 60 != 15)
  {
    sub_100016590(v0[40], v3);
  }

  sub_100016590(v0[42], v0[43]);
  sub_100016590(v0[44], v0[45]);

  return _swift_deallocObject(v0, 368);
}

uint64_t sub_10009313C()
{
  sub_100016590(*(v0 + 16), *(v0 + 24));
  sub_100016590(*(v0 + 32), *(v0 + 40));
  sub_100016590(*(v0 + 48), *(v0 + 56));
  sub_100016590(*(v0 + 64), *(v0 + 72));

  return _swift_deallocObject(v0, 80);
}

uint64_t sub_10009318C()
{
  sub_100016590(v0[2], v0[3]);
  sub_100016590(v0[4], v0[5]);
  sub_100016590(v0[6], v0[7]);
  sub_100016590(v0[8], v0[9]);
  sub_100016590(v0[10], v0[11]);
  sub_100016590(v0[12], v0[13]);
  sub_100016590(v0[14], v0[15]);
  sub_100016590(v0[16], v0[17]);
  sub_100016590(v0[18], v0[19]);
  sub_100016590(v0[20], v0[21]);
  sub_100016590(v0[22], v0[23]);
  v1 = v0[25];
  if (v1 >> 60 != 15)
  {
    sub_100016590(v0[24], v1);
  }

  return _swift_deallocObject(v0, 208);
}

uint64_t sub_10009322C()
{
  sub_100016590(*(v0 + 16), *(v0 + 24));
  sub_100016590(*(v0 + 32), *(v0 + 40));
  sub_100016590(*(v0 + 48), *(v0 + 56));
  sub_100016590(*(v0 + 64), *(v0 + 72));
  sub_100016590(*(v0 + 80), *(v0 + 88));
  sub_100016590(*(v0 + 96), *(v0 + 104));
  sub_100016590(*(v0 + 112), *(v0 + 120));
  sub_100016590(*(v0 + 128), *(v0 + 136));
  sub_100016590(*(v0 + 144), *(v0 + 152));
  sub_100016590(*(v0 + 160), *(v0 + 168));
  sub_100016590(*(v0 + 176), *(v0 + 184));

  return _swift_deallocObject(v0, 192);
}

uint64_t sub_1000932B4()
{
  sub_100016590(*(v0 + 16), *(v0 + 24));
  sub_100016590(*(v0 + 32), *(v0 + 40));
  sub_100016590(*(v0 + 48), *(v0 + 56));
  sub_100016590(*(v0 + 64), *(v0 + 72));
  sub_100016590(*(v0 + 80), *(v0 + 88));

  return _swift_deallocObject(v0, 96);
}

uint64_t sub_10009330C()
{
  sub_100016590(*(v0 + 16), *(v0 + 24));
  sub_100016590(*(v0 + 32), *(v0 + 40));

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_10009334C()
{
  sub_100016590(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100093384()
{
  v1 = sub_1000BC4D4(&qword_1016973C8, &qword_1013B6210);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (((((*(v2 + 64) + v3 + 1) & 0xFFFFFFFFFFFFFFFELL) + 9) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_100093488()
{
  v1 = sub_1000BC4D4(&qword_1016973C8, &qword_1013B6210);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_100093558()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_1000935A4()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000935DC()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_1000936A0()
{
  v1 = sub_1000BC4D4(&qword_1016998A0, &unk_1013D68B0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return _swift_deallocObject(v0, v7 + v8);
}

uint64_t sub_10009383C()
{

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_10009387C()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000938B4()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100094084()
{

  sub_100007BAC((v0 + 24));

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_1000940C4()
{
  v1 = *(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);

  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  return _swift_deallocObject(v0, v3 + v2 + 1);
}

uint64_t sub_1000941E8()
{
  v1 = type metadata accessor for OwnedBeaconRecord(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v20 = *(*(v1 - 1) + 64);

  v4 = v0 + v3;
  sub_100016590(*(v0 + v3), *(v0 + v3 + 8));
  v5 = v1[5];
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v0 + v3 + v5, v6);
  v9 = v0 + v3 + v1[6];
  type metadata accessor for StableIdentifier(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_13;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      v8(v9, v6);
      v19 = (v2 + 24) & ~v2;
      sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

LABEL_12:
      v3 = v19;
LABEL_13:

      break;
    case 3:
      v8(v9, v6);
      v19 = (v2 + 24) & ~v2;
      sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

      goto LABEL_12;
    case 4:
      goto LABEL_13;
  }

LABEL_14:
  v11 = v1[7];
  if (!(*(v7 + 48))(v4 + v11, 1, v6))
  {
    v8(v4 + v11, v6);
  }

  v12 = v1[8];
  v13 = type metadata accessor for Date();
  (*(*(v13 - 8) + 8))(v4 + v12, v13);
  sub_100016590(*(v4 + v1[9]), *(v4 + v1[9] + 8));
  v14 = (v4 + v1[10]);
  v15 = v14[1];
  if (v15 >> 60 != 15)
  {
    sub_100016590(*v14, v15);
  }

  v16 = (v4 + v1[11]);
  v17 = v16[1];
  if (v17 >> 60 != 15)
  {
    sub_100016590(*v16, v17);
  }

  sub_100016590(*(v4 + v1[12]), *(v4 + v1[12] + 8));
  sub_100016590(*(v4 + v1[13]), *(v4 + v1[13] + 8));

  return _swift_deallocObject(v0, v3 + v20);
}

uint64_t sub_100094554()
{

  return _swift_deallocObject(v0, 25);
}

uint64_t sub_100094590()
{
  v1 = (type metadata accessor for SharingCircleKeyManager.Instruction(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  swift_unknownObjectRelease();
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v2, v4);
  v5(v0 + v2 + v1[7], v4);
  v5(v0 + v2 + v1[8], v4);
  v5(v0 + v2 + v1[9], v4);

  v6 = v1[14];
  v7 = type metadata accessor for Date();
  (*(*(v7 - 8) + 8))(v0 + v2 + v6, v7);

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_100094724(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1000947E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1000948A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 32));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for Date();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 48);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1000949C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 32)) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for Date();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 48);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_100094AE8(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1000BC4D4(&qword_101698360, &qword_1013E35F0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_100094BA4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1000BC4D4(&qword_101698360, &qword_1013E35F0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100094C54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for UUID();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_100094D0C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = type metadata accessor for UUID();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100094E10(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for Date();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_3:
    v10 = *(v8 + 48);

    return v10(a1 + v9, a2, v7);
  }

  if (a2 == 236)
  {
    v12 = *(a1 + a3[9]);
    if (v12 >= 0x14)
    {
      return v12 - 19;
    }

    else
    {
      return 0;
    }
  }

  v13 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v7 = v13;
    v8 = *(v13 - 8);
    v9 = a3[10];
    goto LABEL_3;
  }

  v14 = sub_1000BC4D4(&unk_1016C1120, &qword_1013C49D0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v7 = v14;
    v8 = *(v14 - 8);
    v9 = a3[11];
    goto LABEL_3;
  }

  v15 = type metadata accessor for UUID();
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[12];

  return v16(v17, a2, v15);
}

uint64_t sub_100094FD8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for Date();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = *(result - 8);
    v11 = a4[5];
LABEL_3:
    v12 = *(v10 + 56);

    return v12(a1 + v11, a2, a2, v9);
  }

  if (a3 == 236)
  {
    *(a1 + a4[9]) = a2 + 19;
    return result;
  }

  v13 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[10];
    goto LABEL_3;
  }

  v14 = sub_1000BC4D4(&unk_1016C1120, &qword_1013C49D0);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[11];
    goto LABEL_3;
  }

  v15 = type metadata accessor for UUID();
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[12];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1000951EC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UUID();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_7:
    v12 = *(v8 + 48);

    return v12(a1 + v9, a2, v7);
  }

  v10 = type metadata accessor for Date();
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[10];
    goto LABEL_7;
  }

  v11 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v7 = v11;
    v8 = *(v11 - 8);
    v9 = a3[12];
    goto LABEL_7;
  }

  v14 = *(a1 + a3[13]);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_100095354(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for UUID();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    v12 = type metadata accessor for Date();
    if (*(*(v12 - 8) + 84) == a3)
    {
      v9 = v12;
      v10 = *(v12 - 8);
      v11 = a4[10];
    }

    else
    {
      result = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[13]) = a2;
        return result;
      }

      v9 = result;
      v10 = *(result - 8);
      v11 = a4[12];
    }
  }

  v14 = *(v10 + 56);

  return v14(a1 + v11, a2, a2, v9);
}

uint64_t sub_1000954F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for Date();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 32);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_10009561C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for Date();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_100095744()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10009577C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1000957BC()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v11 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v3 = (*(v2 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8);
  v5 = (v3 + *(v4 + 80) + 8) & ~*(v4 + 80);
  v12 = *(v4 + 64);
  v14 = sub_1000BC4D4(&qword_1016C30B0, &qword_1013E4770);
  v6 = *(v14 - 8);
  v7 = *(v6 + 80);
  v13 = *(v6 + 64);

  sub_100016590(*(v0 + 40), *(v0 + 48));
  v8 = *(v2 + 8);
  v8(v0 + v11, v1);

  if (!(*(v2 + 48))(v0 + v5, 1, v1))
  {
    v8(v0 + v5, v1);
  }

  v9 = (v7 + ((((((((v12 + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v7;

  (*(v6 + 8))(v0 + v9, v14);

  return _swift_deallocObject(v0, v9 + v13);
}

uint64_t sub_100095A3C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = sub_1000BC4D4(&qword_1016C30B0, &qword_1013E4770);
  v6 = *(v5 - 8);
  v7 = (v4 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return _swift_deallocObject(v0, v8 + 8);
}

uint64_t sub_100095BB4()
{

  sub_100016590(*(v0 + 40), *(v0 + 48));

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_100095BFC()
{
  v1 = type metadata accessor for MessagingMessageContext(0);
  v2 = (*(*(v1 - 8) + 80) + 104) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);

  sub_100016590(*(v0 + 80), *(v0 + 88));

  v4 = v0 + v2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 48))(v0 + v2, 1, v5);
  v8 = *(v6 + 8);
  if (!v7)
  {
    v8(v0 + v2, v5);
  }

  v8(v4 + *(v1 + 20), v5);

  v9 = *(v1 + 44);
  v10 = type metadata accessor for Date();
  (*(*(v10 - 8) + 8))(v4 + v9, v10);

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_100095DE0()
{
  v1 = type metadata accessor for MessagingMessageContext(0);
  v2 = (*(*(v1 - 8) + 80) + 152) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();
  sub_100007BAC(v0 + 4);

  sub_100016590(*(v0 + 16), *(v0 + 17));

  v4 = &v0[v2];
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 48))(&v0[v2], 1, v5);
  v8 = *(v6 + 8);
  if (!v7)
  {
    v8(&v0[v2], v5);
  }

  v8(&v4[*(v1 + 20)], v5);

  v9 = *(v1 + 44);
  v10 = type metadata accessor for Date();
  (*(*(v10 - 8) + 8))(&v4[v9], v10);

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_100095FCC()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 24);
}

uint64_t sub_1000960B0()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 88) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  sub_100007BAC((v0 + 32));

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 24);
}

uint64_t sub_10009619C()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000961EC()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, ((v4 + 31) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_100096294()
{

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1000962D8()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, ((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_100096398()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1000963D0()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_1000964A8()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_100096590()
{
  v1 = *(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 17) & ~v2;
  v4 = *(v1 + 64);
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v9 = (v3 + v4 + v7) & ~v7;
  v13 = (((((((v8 + v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v8 + v2 + ((v7 + v13 + 16) & ~v7)) & ~v2;
  v14 = *(v6 + 48);
  v10 = v14(v0 + v3, 1, v5);
  v11 = *(v6 + 8);
  if (!v10)
  {
    v11(v0 + v3, v5);
  }

  v11(v0 + v9, v5);

  sub_100016590(*(v0 + v13), *(v0 + v13 + 8));
  v11(v0 + ((v7 + v13 + 16) & ~v7), v5);
  if (!v14(v0 + v15, 1, v5))
  {
    v11(v0 + v15, v5);
  }

  return _swift_deallocObject(v0, ((((((((((((((v4 + v15 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_10009684C()
{

  return _swift_deallocObject(v0, 33);
}

uint64_t sub_100096884()
{
  v1 = (sub_1000BC4D4(&qword_10169EF90, &unk_10139FCF0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = sub_1000BC4D4(&qword_10169EF88, &unk_1013E4B70);
  v13 = *(*(v4 - 8) + 80);
  v5 = (v2 + v3 + v13) & ~v13;
  v12 = *(*(v4 - 8) + 64);

  v6 = v0 + v2;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 8);
  v9(v6, v7);

  sub_100016590(*(v6 + v1[30]), *(v6 + v1[30] + 8));
  v9(v0 + v5, v7);
  v10 = *(v4 + 48);
  if (!(*(v8 + 48))(v0 + v5 + v10, 1, v7))
  {
    v9(v0 + v5 + v10, v7);
  }

  return _swift_deallocObject(v0, ((((v12 + v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16);
}

uint64_t sub_100096B2C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_100096C28()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100096C60()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_100096CA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for Date();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_100096D58(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100096E04(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for FMNAccountType();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_100096EB0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for FMNAccountType();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100096F54(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for FMNAccountType();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_100097000(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for FMNAccountType();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000970A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FMNAccountType();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for URLComponents();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_100097194(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for FMNAccountType();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for URLComponents();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_100097290()
{
  v1 = sub_1000BC4D4(&qword_1016B3D00, &unk_1013E5DD0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_100097368()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1000973A0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1000973E0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_1000974B8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Date();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100097564(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100097608(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for PairingError(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1000976F8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for PairingError(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1000977F4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 72);
}

uint64_t sub_100097834()
{
  sub_100016590(*(v0 + 16), *(v0 + 24));
  sub_100016590(*(v0 + 32), *(v0 + 40));
  sub_100016590(*(v0 + 48), *(v0 + 56));
  sub_100016590(*(v0 + 64), *(v0 + 72));

  return _swift_deallocObject(v0, 80);
}

uint64_t sub_100097888()
{
  sub_100016590(*(v0 + 16), *(v0 + 24));
  sub_100016590(*(v0 + 32), *(v0 + 40));
  sub_100016590(*(v0 + 48), *(v0 + 56));
  sub_100016590(*(v0 + 64), *(v0 + 72));
  sub_100016590(*(v0 + 80), *(v0 + 88));
  sub_100016590(*(v0 + 96), *(v0 + 104));
  sub_100016590(*(v0 + 112), *(v0 + 120));
  sub_100016590(*(v0 + 128), *(v0 + 136));
  sub_100016590(*(v0 + 144), *(v0 + 152));
  sub_100016590(*(v0 + 160), *(v0 + 168));
  sub_100016590(*(v0 + 176), *(v0 + 184));
  sub_100016590(*(v0 + 192), *(v0 + 200));
  sub_100016590(*(v0 + 216), *(v0 + 224));

  return _swift_deallocObject(v0, 232);
}

uint64_t sub_100097920()
{
  sub_100016590(*(v0 + 16), *(v0 + 24));
  sub_100016590(*(v0 + 32), *(v0 + 40));
  sub_100016590(*(v0 + 48), *(v0 + 56));
  sub_100016590(*(v0 + 64), *(v0 + 72));
  sub_100016590(*(v0 + 80), *(v0 + 88));

  return _swift_deallocObject(v0, 96);
}

uint64_t sub_100097978()
{
  sub_100016590(*(v0 + 16), *(v0 + 24));
  sub_100016590(*(v0 + 32), *(v0 + 40));

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1000979BC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UUID();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_9:
    v13 = *(v8 + 48);

    return v13(a1 + v9, a2, v7);
  }

  v10 = type metadata accessor for StableIdentifier(0);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_9;
  }

  v11 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v7 = v11;
    v8 = *(v11 - 8);
    v9 = a3[7];
    goto LABEL_9;
  }

  v12 = type metadata accessor for Date();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v7 = v12;
    v8 = *(v12 - 8);
    v9 = a3[8];
    goto LABEL_9;
  }

  v15 = *(a1 + a3[14] + 8);
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  return (v15 + 1);
}

uint64_t sub_100097B64(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for UUID();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    v12 = type metadata accessor for StableIdentifier(0);
    if (*(*(v12 - 8) + 84) == a3)
    {
      v9 = v12;
      v10 = *(v12 - 8);
      v11 = a4[6];
    }

    else
    {
      v13 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
      if (*(*(v13 - 8) + 84) == a3)
      {
        v9 = v13;
        v10 = *(v13 - 8);
        v11 = a4[7];
      }

      else
      {
        result = type metadata accessor for Date();
        if (*(*(result - 8) + 84) != a3)
        {
          *(a1 + a4[14] + 8) = (a2 - 1);
          return result;
        }

        v9 = result;
        v10 = *(result - 8);
        v11 = a4[8];
      }
    }
  }

  v15 = *(v10 + 56);

  return v15(a1 + v11, a2, a2, v9);
}

uint64_t sub_100097D90()
{
  v1 = type metadata accessor for OwnedBeaconRecord(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v20 = *(*(v1 - 1) + 64);

  v4 = v0 + v3;
  sub_100016590(*(v0 + v3), *(v0 + v3 + 8));
  v5 = v1[5];
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v0 + v3 + v5, v6);
  v9 = v0 + v3 + v1[6];
  type metadata accessor for StableIdentifier(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_13;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      v8(v9, v6);
      v19 = (v2 + 24) & ~v2;
      sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

LABEL_12:
      v3 = v19;
LABEL_13:

      break;
    case 3:
      v8(v9, v6);
      v19 = (v2 + 24) & ~v2;
      sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

      goto LABEL_12;
    case 4:
      goto LABEL_13;
  }

LABEL_14:
  v11 = v1[7];
  if (!(*(v7 + 48))(v4 + v11, 1, v6))
  {
    v8(v4 + v11, v6);
  }

  v12 = v1[8];
  v13 = type metadata accessor for Date();
  (*(*(v13 - 8) + 8))(v4 + v12, v13);
  sub_100016590(*(v4 + v1[9]), *(v4 + v1[9] + 8));
  v14 = (v4 + v1[10]);
  v15 = v14[1];
  if (v15 >> 60 != 15)
  {
    sub_100016590(*v14, v15);
  }

  v16 = (v4 + v1[11]);
  v17 = v16[1];
  if (v17 >> 60 != 15)
  {
    sub_100016590(*v16, v17);
  }

  sub_100016590(*(v4 + v1[12]), *(v4 + v1[12] + 8));
  sub_100016590(*(v4 + v1[13]), *(v4 + v1[13] + 8));

  return _swift_deallocObject(v0, v3 + v20);
}

uint64_t sub_100098104()
{
  v1 = v0;
  v2 = type metadata accessor for OwnedBeaconRecord(0);
  v20 = *(*(v2 - 1) + 64);
  v3 = (*(*(v2 - 1) + 80) + 16) & ~*(*(v2 - 1) + 80);
  v4 = v0 + v3;
  sub_100016590(*(v0 + v3), *(v0 + v3 + 8));
  v5 = v2[5];
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v0 + v3 + v5, v6);
  v9 = v0 + v3 + v2[6];
  type metadata accessor for StableIdentifier(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_13;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      v8(v9, v6);
      v19 = v0;
      sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

LABEL_12:
      v1 = v19;
LABEL_13:

      break;
    case 3:
      v8(v9, v6);
      v19 = v0;
      sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

      goto LABEL_12;
    case 4:
      goto LABEL_13;
  }

LABEL_14:
  v11 = v2[7];
  if (!(*(v7 + 48))(v4 + v11, 1, v6))
  {
    v8(v4 + v11, v6);
  }

  v12 = v2[8];
  v13 = type metadata accessor for Date();
  (*(*(v13 - 8) + 8))(v4 + v12, v13);
  sub_100016590(*(v4 + v2[9]), *(v4 + v2[9] + 8));
  v14 = (v4 + v2[10]);
  v15 = v14[1];
  if (v15 >> 60 != 15)
  {
    sub_100016590(*v14, v15);
  }

  v16 = (v4 + v2[11]);
  v17 = v16[1];
  if (v17 >> 60 != 15)
  {
    sub_100016590(*v16, v17);
  }

  sub_100016590(*(v4 + v2[12]), *(v4 + v2[12] + 8));
  sub_100016590(*(v4 + v2[13]), *(v4 + v2[13] + 8));

  return _swift_deallocObject(v1, v3 + v20);
}

uint64_t sub_100098474(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_100098538(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10009865C()
{
  v1 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (v3 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_100098738()
{
  v1 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_100098844()
{
  sub_100DD95EC(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152));

  return _swift_deallocObject(v0, 160);
}

uint64_t sub_1000988A8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_1000988F0()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100098928()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_100098A00()
{
  v1 = type metadata accessor for BeaconProductInfoRecord(0);
  v2 = *(*(v1 - 1) + 80);
  v16 = *(*(v1 - 1) + 64);

  v17 = (v2 + 24) & ~v2;
  v3 = v0 + v17;
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 8))(v0 + v17, v4);

  v5 = v1[15];
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  if (!v8(v0 + v17 + v5, 1, v6))
  {
    (*(v7 + 8))(v3 + v5, v6);
  }

  v9 = v1[16];
  if (!v8(v3 + v9, 1, v6))
  {
    (*(v7 + 8))(v3 + v9, v6);
  }

  v10 = v3 + v1[19];
  v11 = type metadata accessor for AccessoryInfoResponseContent.Configuration(0);
  if (!(*(*(v11 - 8) + 48))(v10, 1, v11))
  {

    v12 = *(v11 + 44);
    if (!v8(v10 + v12, 1, v6))
    {
      (*(v7 + 8))(v10 + v12, v6);
    }

    v13 = *(v11 + 48);
    if (!v8(v10 + v13, 1, v6))
    {
      (*(v7 + 8))(v10 + v13, v6);
    }
  }

  v14 = *(v7 + 8);
  v14(v3 + v1[22], v6);
  v14(v3 + v1[23], v6);
  v14(v3 + v1[24], v6);
  v14(v3 + v1[25], v6);
  v14(v3 + v1[26], v6);
  v14(v3 + v1[27], v6);

  return _swift_deallocObject(v0, ((v16 + v17 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
}

uint64_t sub_100098DEC()
{
  v1 = type metadata accessor for BeaconProductInfoRecord(0);
  v18 = *(*(v1 - 1) + 80);
  v2 = (v18 + 16) & ~v18;
  v17 = *(*(v1 - 1) + 64);
  v3 = v0 + v2;
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 8))(v0 + v2, v4);

  v5 = v1[15];
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  if (!v8(v0 + v2 + v5, 1, v6))
  {
    (*(v7 + 8))(v3 + v5, v6);
  }

  v9 = v1[16];
  if (!v8(v3 + v9, 1, v6))
  {
    (*(v7 + 8))(v3 + v9, v6);
  }

  v10 = v3 + v1[19];
  v11 = type metadata accessor for AccessoryInfoResponseContent.Configuration(0);
  if (!(*(*(v11 - 8) + 48))(v10, 1, v11))
  {

    v12 = *(v11 + 44);
    if (!v8(v10 + v12, 1, v6))
    {
      (*(v7 + 8))(v10 + v12, v6);
    }

    v13 = *(v11 + 48);
    if (!v8(v10 + v13, 1, v6))
    {
      (*(v7 + 8))(v10 + v13, v6);
    }

    v2 = (v18 + 16) & ~v18;
  }

  v14 = (((v17 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  v15 = *(v7 + 8);
  v15(v3 + v1[22], v6);
  v15(v3 + v1[23], v6);
  v15(v3 + v1[24], v6);
  v15(v3 + v1[25], v6);
  v15(v3 + v1[26], v6);
  v15(v3 + v1[27], v6);

  return _swift_deallocObject(v0, v14 + 16);
}

uint64_t sub_1000991E4()
{
  v1 = v0;
  v2 = type metadata accessor for WildModeAssociationRecord(0);
  v48 = *(*(v2 - 1) + 80);
  v46 = *(*(v2 - 1) + 64);
  v47 = (v48 + 16) & ~v48;
  v3 = v0 + v47;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 8);
  v6(v0 + v47, v4);
  v7 = v2[5];
  if (!(*(v5 + 48))(v0 + v47 + v7, 1, v4))
  {
    v6(v3 + v7, v4);
  }

  v8 = v2[7];
  v9 = type metadata accessor for MACAddress();
  (*(*(v9 - 8) + 8))(v3 + v8, v9);

  v10 = v2[10];
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v49 = *(v12 + 8);
  v49(v3 + v10, v11);
  v13 = v2[11];
  v44 = *(v12 + 48);
  if (!v44(v3 + v13, 1, v11))
  {
    v49(v3 + v13, v11);
  }

  v45 = v11;

  v14 = v3 + v2[14];
  v15 = type metadata accessor for AccessoryMetadata(0);
  if (!(*(*(v15 - 8) + 48))(v14, 1, v15))
  {
    v6(v14, v4);
    sub_100016590(*(v14 + *(v15 + 20)), *(v14 + *(v15 + 20) + 8));

    v16 = *(v15 + 36);
    v17 = type metadata accessor for AirTagVersionNumber();
    v18 = *(v17 - 8);
    if (!(*(v18 + 48))(v14 + v16, 1, v17))
    {
      (*(v18 + 8))(v14 + v16, v17);
    }
  }

  v19 = v3 + v2[15];
  v20 = type metadata accessor for AccessoryProductInfo(0);
  if (!(*(*(v20 - 1) + 48))(v19, 1, v20))
  {
    v43 = v1;
    v21 = v20[5];
    v22 = type metadata accessor for ServerStatusCode();
    (*(*(v22 - 8) + 8))(v19 + v21, v22);

    v23 = v20[17];
    v24 = type metadata accessor for URL();
    v25 = *(v24 - 8);
    v26 = *(v25 + 48);
    if (!v26(v19 + v23, 1, v24))
    {
      (*(v25 + 8))(v19 + v23, v24);
    }

    v27 = v20[18];
    v42 = v26;
    if (!v26(v19 + v27, 1, v24))
    {
      (*(v25 + 8))(v19 + v27, v24);
    }

    v28 = v19 + v20[21];
    v29 = type metadata accessor for AccessoryInfoResponseContent.Configuration(0);
    if (!(*(*(v29 - 8) + 48))(v28, 1, v29))
    {

      v40 = *(v29 + 44);
      if (!v42(v28 + v40, 1, v24))
      {
        (*(v25 + 8))(v28 + v40, v24);
      }

      v41 = *(v29 + 48);
      if (!v42(v28 + v41, 1, v24))
      {
        (*(v25 + 8))(v28 + v41, v24);
      }
    }

    v30 = (v19 + v20[24]);
    v31 = v30[1];
    v1 = v43;
    if (v31 >> 60 != 15)
    {
      sub_100016590(*v30, v31);
    }

    v32 = (v19 + v20[25]);
    v33 = v32[1];
    if (v33 >> 60 != 15)
    {
      sub_100016590(*v32, v33);
    }

    v34 = *(v25 + 8);
    v34(v19 + v20[26], v24);
    v34(v19 + v20[27], v24);
    v34(v19 + v20[28], v24);
    v34(v19 + v20[29], v24);
    v34(v19 + v20[30], v24);
    v34(v19 + v20[31], v24);

    v34(v19 + v20[38], v24);
    v34(v19 + v20[39], v24);
    v34(v19 + v20[40], v24);
    v34(v19 + v20[41], v24);
    v34(v19 + v20[42], v24);
    v34(v19 + v20[43], v24);
  }

  v35 = v2[18];
  if (!v44(v3 + v35, 1, v45))
  {
    v49(v3 + v35, v45);
  }

  v36 = v2[19];
  if (!v44(v3 + v36, 1, v45))
  {
    v49(v3 + v36, v45);
  }

  v37 = (v3 + v2[20]);
  v38 = v37[1];
  if (((v38 >> 60) | 4) != 0xF)
  {
    sub_100016590(*v37, v38);
  }

  return _swift_deallocObject(v1, ((((v46 + v47 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16);
}

uint64_t sub_100099AB0()
{
  v1 = (type metadata accessor for LocalFindablePreferences(0) - 8);
  v2 = (*(*v1 + 80) + 40) & ~*(*v1 + 80);
  v13 = *(*v1 + 64);
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = *(v4 + 64);
  swift_unknownObjectRelease();

  v7 = *(v4 + 8);
  v7(v0 + v2, v3);
  v8 = (v0 + v2 + v1[8]);
  v9 = v8[1];
  if (v9 >> 60 != 15)
  {
    sub_100016590(*v8, v9);
  }

  v10 = (v2 + v13 + v5) & ~v5;
  v11 = (v6 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7(v0 + v10, v3);

  return _swift_deallocObject(v0, v11 + 8);
}

uint64_t sub_100099C40()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (v3 + *(v2 + 64) + 23) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_100099D2C()
{
  v1 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_100099DCC()
{
  v1 = type metadata accessor for DeviceEvent(0);
  v2 = *(*(v1 - 1) + 80);
  v20 = *(*(v1 - 1) + 64);

  v21 = v0;
  v3 = v0 + ((v2 + 24) & ~v2);
  v4 = v1[6];
  v5 = type metadata accessor for Date();
  v6 = *(*(v5 - 8) + 8);
  v6(v3 + v4, v5);
  v7 = v3 + v1[7];
  v8 = type metadata accessor for DeviceEvent.Location(0);
  if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
  {
    v6(v7 + *(v8 + 28), v5);
  }

  v9 = v3 + v1[8];
  v10 = type metadata accessor for DeviceEvent.AttachmentInfo(0);
  if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
  {
    v11 = type metadata accessor for UUID();
    v12 = *(v11 - 8);
    v19 = *(v12 + 8);
    v19(v9, v11);
    v13 = *(v10 + 20);
    if (!(*(v12 + 48))(v9 + v13, 1, v11))
    {
      v19(v9 + v13, v11);
    }
  }

  v14 = v3 + v1[9];
  v15 = type metadata accessor for UUID();
  v16 = *(*(v15 - 8) + 8);
  v16(v14, v15);
  v17 = type metadata accessor for BeaconIdentifier(0);
  v16(v14 + *(v17 + 20), v15);
  v6(v3 + v1[10], v5);

  return _swift_deallocObject(v21, ((v2 + 24) & ~v2) + v20);
}

uint64_t sub_10009A0B4()
{
  v1 = (sub_1000BC4D4(&qword_1016998D0, &unk_1013931A0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = (v2 + v3 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v5 + 64);

  v8 = v1[11];
  v9 = *(v5 + 8);
  v9(v0 + v2 + v8, v4);
  v9(v0 + v6, v4);

  return _swift_deallocObject(v0, v6 + v7);
}

uint64_t sub_10009A210()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10009A248()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_10009A30C()
{
  v1 = type metadata accessor for AccessoryMetadataRecord(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = v0 + v2;
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v0 + v2, v5);
  v6 = (v0 + v2 + v1[5]);
  v7 = v6[1];
  if (v7 >> 60 != 15)
  {
    sub_100016590(*v6, v7);
  }

  v8 = (v4 + v1[6]);
  v9 = v8[1];
  if (v9 >> 60 != 15)
  {
    sub_100016590(*v8, v9);
  }

  v10 = (v4 + v1[7]);
  v11 = v10[1];
  if (v11 >> 60 != 15)
  {
    sub_100016590(*v10, v11);
  }

  v12 = (v4 + v1[8]);
  v13 = v12[1];
  if (v13 >> 60 != 15)
  {
    sub_100016590(*v12, v13);
  }

  v14 = (v4 + v1[9]);
  v15 = v14[1];
  if (v15 >> 60 != 15)
  {
    sub_100016590(*v14, v15);
  }

  v16 = (v4 + v1[10]);
  v17 = v16[1];
  if (v17 >> 60 != 15)
  {
    sub_100016590(*v16, v17);
  }

  v18 = (v4 + v1[11]);
  v19 = v18[1];
  if (v19 >> 60 != 15)
  {
    sub_100016590(*v18, v19);
  }

  v20 = (v4 + v1[12]);
  v21 = v20[1];
  if (v21 >> 60 != 15)
  {
    sub_100016590(*v20, v21);
  }

  v22 = (v4 + v1[13]);
  v23 = v22[1];
  if (v23 >> 60 != 15)
  {
    sub_100016590(*v22, v23);
  }

  v24 = (v4 + v1[14]);
  v25 = v24[1];
  if (v25 >> 60 != 15)
  {
    sub_100016590(*v24, v25);
  }

  v26 = (v4 + v1[15]);
  v27 = v26[1];
  if (v27 >> 60 != 15)
  {
    sub_100016590(*v26, v27);
  }

  return _swift_deallocObject(v0, ((((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16);
}

uint64_t sub_10009A5AC()
{
  v1 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = sub_1000BC4D4(&qword_101699888, &unk_1013D68A0);
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return _swift_deallocObject(v0, v8 + 8);
}

uint64_t sub_10009A728()
{
  v1 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = sub_1000BC4D4(&qword_101699888, &unk_1013D68A0);
  v6 = *(v5 - 8);
  v7 = (v4 + *(v6 + 80) + 8) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  (*(v6 + 8))(v0 + v7, v5);

  return _swift_deallocObject(v0, v8 + 8);
}

uint64_t sub_10009A8BC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_10009A8FC()
{
  v1 = (type metadata accessor for PairingErrorRecord(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (((*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v4, v5);
  v6 = v4 + v1[7];

  v7 = *(type metadata accessor for PairingError(0) + 24);
  v8 = type metadata accessor for Date();
  (*(*(v8 - 8) + 8))(v6 + v7, v8);

  return _swift_deallocObject(v0, v3 + 16);
}

uint64_t sub_10009AA80()
{
  v1 = type metadata accessor for OwnedBeaconRecord(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v20 = *(*(v1 - 1) + 64);

  v4 = v0 + v3;
  sub_100016590(*(v0 + v3), *(v0 + v3 + 8));
  v5 = v1[5];
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v0 + v3 + v5, v6);
  v9 = v0 + v3 + v1[6];
  type metadata accessor for StableIdentifier(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_13;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      v8(v9, v6);
      v19 = (v2 + 24) & ~v2;
      sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

LABEL_12:
      v3 = v19;
LABEL_13:

      break;
    case 3:
      v8(v9, v6);
      v19 = (v2 + 24) & ~v2;
      sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

      goto LABEL_12;
    case 4:
      goto LABEL_13;
  }

LABEL_14:
  v11 = v1[7];
  if (!(*(v7 + 48))(v4 + v11, 1, v6))
  {
    v8(v4 + v11, v6);
  }

  v12 = v1[8];
  v13 = type metadata accessor for Date();
  (*(*(v13 - 8) + 8))(v4 + v12, v13);
  sub_100016590(*(v4 + v1[9]), *(v4 + v1[9] + 8));
  v14 = (v4 + v1[10]);
  v15 = v14[1];
  if (v15 >> 60 != 15)
  {
    sub_100016590(*v14, v15);
  }

  v16 = (v4 + v1[11]);
  v17 = v16[1];
  if (v17 >> 60 != 15)
  {
    sub_100016590(*v16, v17);
  }

  sub_100016590(*(v4 + v1[12]), *(v4 + v1[12] + 8));
  sub_100016590(*(v4 + v1[13]), *(v4 + v1[13] + 8));

  return _swift_deallocObject(v0, ((v20 + v3 + 9) & 0xFFFFFFFFFFFFFFF8) + 16);
}

uint64_t sub_10009AE04()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10009AE3C(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  sub_1000035D0(a1, v1);
  return (*(v2 + 448))(v1, v2);
}

uint64_t sub_10009AE94()
{
  v1 = type metadata accessor for SharedBeaconRecord(0);
  v16 = *(*(v1 - 1) + 64);
  v15 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v2 = v0 + v15;
  sub_100016590(*(v0 + v15), *(v0 + v15 + 8));
  v3 = v1[5];
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 8);
  v6(v0 + v15 + v3, v4);
  v6(v0 + v15 + v1[6], v4);

  v7 = v1[18];
  v8 = type metadata accessor for Date();
  (*(*(v8 - 8) + 8))(v0 + v15 + v7, v8);
  v9 = v1[19];
  v10 = *(v5 + 48);
  if (!v10(v0 + v15 + v9, 1, v4))
  {
    v6(v2 + v9, v4);
  }

  v11 = v2 + v1[20];
  v12 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
  if (!(*(*(v12 - 8) + 48))(v11, 1, v12))
  {
    v13 = *(v12 + 20);
    if (!v10(v11 + v13, 1, v4))
    {
      v6(v11 + v13, v4);
    }
  }

  return _swift_deallocObject(v0, ((((v16 + v15 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_10009B130()
{
  v1 = type metadata accessor for SharedBeaconRecord(0);
  v2 = *(*(v1 - 1) + 80);
  v16 = *(*(v1 - 1) + 64);

  v3 = v0 + ((v2 + 24) & ~v2);
  sub_100016590(*v3, *(v3 + 8));
  v4 = v1[5];
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v3 + v4, v5);
  v7(v3 + v1[6], v5);

  v8 = v1[18];
  v9 = type metadata accessor for Date();
  (*(*(v9 - 8) + 8))(v3 + v8, v9);
  v10 = v1[19];
  v11 = *(v6 + 48);
  if (!v11(v3 + v10, 1, v5))
  {
    v7(v3 + v10, v5);
  }

  v12 = v3 + v1[20];
  v13 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
  if (!(*(*(v13 - 8) + 48))(v12, 1, v13))
  {
    v14 = *(v13 + 20);
    if (!v11(v12 + v14, 1, v5))
    {
      v7(v12 + v14, v5);
    }
  }

  return _swift_deallocObject(v0, ((v16 + ((v2 + 24) & ~v2) + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
}

uint64_t sub_10009B3C4()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10009B3FC()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10009B43C()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10009B474()
{
  v1 = type metadata accessor for OwnedBeaconRecord(0);
  v2 = *(*(v1 - 1) + 64);
  v19 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = v0 + v19;
  sub_100016590(*(v0 + v19), *(v0 + v19 + 8));
  v4 = v1[5];
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v0 + v19 + v4, v5);
  v8 = v0 + v19 + v1[6];
  type metadata accessor for StableIdentifier(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_13;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      v7(v8, v5);
      v18 = v2;
      sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

LABEL_12:
      v2 = v18;
LABEL_13:

      break;
    case 3:
      v7(v8, v5);
      v18 = v2;
      sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

      goto LABEL_12;
    case 4:
      goto LABEL_13;
  }

LABEL_14:
  v10 = v1[7];
  if (!(*(v6 + 48))(v3 + v10, 1, v5))
  {
    v7(v3 + v10, v5);
  }

  v11 = v1[8];
  v12 = type metadata accessor for Date();
  (*(*(v12 - 8) + 8))(v3 + v11, v12);
  sub_100016590(*(v3 + v1[9]), *(v3 + v1[9] + 8));
  v13 = (v3 + v1[10]);
  v14 = v13[1];
  if (v14 >> 60 != 15)
  {
    sub_100016590(*v13, v14);
  }

  v15 = (v3 + v1[11]);
  v16 = v15[1];
  if (v16 >> 60 != 15)
  {
    sub_100016590(*v15, v16);
  }

  sub_100016590(*(v3 + v1[12]), *(v3 + v1[12] + 8));
  sub_100016590(*(v3 + v1[13]), *(v3 + v1[13] + 8));

  return _swift_deallocObject(v0, ((((v2 + v19 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 10);
}

uint64_t sub_10009B808(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 32) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_10009B8CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 32) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10009B98C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 32) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_10009BA5C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 28);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 32) + 8) = a2;
  }

  return result;
}

uint64_t sub_10009BB1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DateInterval();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 8);
    return ((v12 >> 29) >> 31) & (((v12 >> 60 << 30) >> 31) - 2 * ((v12 & 0x1000000000000000) != 0) + 4);
  }
}

uint64_t sub_10009BBEC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for DateInterval();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    v13 = (a1 + *(a4 + 24));
    *v13 = 0;
    v13[1] = ((((-a2 & 2) != 0) - 2 * a2) & 3) << 60;
  }

  return result;
}

uint64_t sub_10009C0C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 32));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_10009C180(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 32)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10009C240()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10009C278()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10009C2B0()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_10009C394()
{

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_10009C3DC()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_10009C4B0()
{

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_10009C4F8()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10009C574(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for FMNAccountType();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_10009C620(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for FMNAccountType();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10009C6C8()
{
  sub_100007BAC((v0 + 16));
  if (*(v0 + 56))
  {
  }

  return _swift_deallocObject(v0, 72);
}

uint64_t sub_10009C710()
{
  sub_100007BAC(v0 + 2);
  sub_100007BAC(v0 + 7);
  if (v0[12])
  {
  }

  return _swift_deallocObject(v0, 112);
}

uint64_t sub_10009C760(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for Date();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[9];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = sub_1000BC4D4(&qword_10169BA28, &unk_1013EAA60);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[11];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[12]);
  if (v13 >= 2)
  {
    v14 = ((v13 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v14 = -2;
  }

  if (v14 < 0)
  {
    v14 = -1;
  }

  return (v14 + 1);
}

uint64_t sub_10009C890(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for Date();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[9];
  }

  else
  {
    result = sub_1000BC4D4(&qword_10169BA28, &unk_1013EAA60);
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[12]) = a2 + 2;
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[11];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

uint64_t sub_10009C9A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 28);
  v6 = type metadata accessor for Date();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_10009CA18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 28);
  v7 = type metadata accessor for Date();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_10009CA94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10001F280(a1, a2);
  *(a2 + 41) = 0;
  return result;
}

uint64_t sub_10009CAEC()
{
  v1 = type metadata accessor for MACAddress();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  v5 = (v3 + 24) & ~v3;
  v6 = (v4 + v3 + v5) & ~v3;
  v7 = (v4 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;

  v8 = *(v2 + 8);
  v8(v0 + v5, v1);
  v8(v0 + v6, v1);
  v9 = *(v0 + v7 + 8);
  if (v9 >> 60 != 15)
  {
    sub_100016590(*(v0 + v7), v9);
  }

  return _swift_deallocObject(v0, v7 + 16);
}

uint64_t sub_10009CC00()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10009CC38()
{
  v1 = type metadata accessor for MACAddress();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  v5 = (v3 + 32) & ~v3;
  v6 = (v4 + v3 + v5) & ~v3;
  v7 = (v4 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;

  v8 = *(v2 + 8);
  v8(v0 + v5, v1);
  v8(v0 + v6, v1);
  v9 = *(v0 + v7 + 8);
  if (v9 >> 60 != 15)
  {
    sub_100016590(*(v0 + v7), v9);
  }

  return _swift_deallocObject(v0, v7 + 18);
}

uint64_t sub_10009CD54()
{
  v1 = type metadata accessor for MACAddress();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 25) & ~v3;
  v17 = *(v2 + 64) + 7;
  v5 = (v17 + v4) & 0xFFFFFFFFFFFFFFF8;
  v6 = type metadata accessor for AirPodsLEAccessory(0);
  v7 = (v5 + *(*(v6 - 8) + 80) + 17) & ~*(*(v6 - 8) + 80);
  v16 = *(*(v6 - 8) + 64);

  v8 = *(v2 + 8);
  v8(v0 + v4, v1);
  v9 = *(v0 + v5 + 8);
  if (v9 >> 60 != 15)
  {
    sub_100016590(*(v0 + v5), v9);
  }

  v10 = type metadata accessor for UUID();
  (*(*(v10 - 8) + 8))(v0 + v7, v10);
  sub_100007BAC((v0 + v7 + *(v6 + 20)));
  v11 = (v0 + v7 + *(v6 + 28));
  v12 = v11[1];
  if (v12 >> 60 != 15)
  {
    sub_100016590(*v11, v12);
  }

  v13 = (v16 + v3 + v7) & ~v3;
  v14 = (v17 + v13) & 0xFFFFFFFFFFFFFFF8;
  v8(v0 + v13, v1);

  return _swift_deallocObject(v0, v14 + 8);
}

uint64_t sub_10009CF64()
{
  v1 = type metadata accessor for MACAddress();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  swift_unknownObjectRelease();

  v7 = *(v2 + 8);
  v7(v0 + v4, v1);
  v7(v0 + v6, v1);

  return _swift_deallocObject(v0, v6 + v5);
}

uint64_t sub_10009D060()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10009D0B4()
{
  if (*(v0 + 57) == 1)
  {
    v1 = *(v0 + 56);
    if (v1 <= 4)
    {
      if (*(v0 + 56) <= 1u)
      {
        if (*(v0 + 56))
        {
          sub_100007BAC((v0 + 16));
          goto LABEL_25;
        }

        goto LABEL_24;
      }

      if (v1 == 2)
      {

        goto LABEL_24;
      }

      if (v1 == 3)
      {

        goto LABEL_25;
      }

      if (v1 != 4)
      {
        goto LABEL_25;
      }

LABEL_12:

      goto LABEL_25;
    }

    if (*(v0 + 56) <= 7u)
    {
      if (v1 != 5 && v1 != 6)
      {
        if (v1 != 7)
        {
          goto LABEL_25;
        }

LABEL_24:

        goto LABEL_25;
      }

      goto LABEL_12;
    }

    switch(v1)
    {
      case 8u:

        goto LABEL_24;
      case 9u:

        break;
      case 0xAu:
        goto LABEL_24;
    }
  }

LABEL_25:

  return _swift_deallocObject(v0, 58);
}

uint64_t sub_10009D1C0()
{

  sub_100007BAC((v0 + 24));

  return _swift_deallocObject(v0, 72);
}

uint64_t sub_10009D208()
{

  sub_100016590(*(v0 + 24), *(v0 + 32));

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_10009D248()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10009D280()
{
  v1 = (type metadata accessor for OwnedBeaconGroup(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);

  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v4 = v1[8];
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);
  v6 = v1[9];
  v7 = type metadata accessor for MACAddress();
  (*(*(v7 - 8) + 8))(v0 + v2 + v6, v7);

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_10009D3D0()
{
  v1 = (type metadata accessor for OwnedBeaconGroup(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (((*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;
  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v5 = v1[8];
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v4 + v5, v6);
  v7 = v1[9];
  v8 = type metadata accessor for MACAddress();
  (*(*(v8 - 8) + 8))(v4 + v7, v8);

  return _swift_deallocObject(v0, v3 + 16);
}

uint64_t sub_10009D540()
{

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_10009D588()
{
  sub_100007BAC((v0 + 16));

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_10009D5C0()
{
  sub_100007BAC((v0 + 16));

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_10009D604()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10009D650()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10009D688()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10009D6C0()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10009D710()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10009D754()
{
  sub_100016590(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10009D78C()
{
  v1 = *(v0 + 24);
  if (v1 >> 60 != 15)
  {
    sub_100016590(*(v0 + 16), v1);
  }

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10009D7D4()
{
  v1 = *(v0 + 56);
  if (v1 <= 4)
  {
    if (*(v0 + 56) <= 1u)
    {
      if (*(v0 + 56))
      {
        sub_100007BAC((v0 + 16));
        goto LABEL_24;
      }

      goto LABEL_23;
    }

    if (v1 == 2)
    {

      goto LABEL_23;
    }

    if (v1 == 3)
    {

      goto LABEL_24;
    }

    if (v1 != 4)
    {
      goto LABEL_24;
    }

LABEL_11:

    goto LABEL_24;
  }

  if (*(v0 + 56) <= 7u)
  {
    if (v1 != 5 && v1 != 6)
    {
      if (v1 != 7)
      {
        goto LABEL_24;
      }

LABEL_23:

      goto LABEL_24;
    }

    goto LABEL_11;
  }

  switch(v1)
  {
    case 8u:

      goto LABEL_23;
    case 9u:

      break;
    case 0xAu:
      goto LABEL_23;
  }

LABEL_24:

  return _swift_deallocObject(v0, 57);
}

uint64_t sub_10009D8D0()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_10009D93C()
{

  return _swift_deallocObject(v0, 25);
}

uint64_t sub_10009D998()
{
  v1 = type metadata accessor for OwnedBeaconRecord(0);
  v2 = *(*(v1 - 1) + 80);
  v24 = *(*(v1 - 1) + 64);
  v3 = type metadata accessor for OwnedBeaconGroup(0);
  v23 = *(*(v3 - 8) + 80);
  v22 = *(*(v3 - 8) + 64);

  v4 = v0 + ((v2 + 24) & ~v2);
  sub_100016590(*v4, *(v4 + 8));
  v5 = v1[5];
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v4 + v5, v6);
  v9 = v4 + v1[6];
  type metadata accessor for StableIdentifier(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v25 = v8;
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_12;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      v8(v9, v6);
      sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

LABEL_12:

      break;
    case 3:
      v8(v9, v6);
      sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

      goto LABEL_12;
    case 4:
      goto LABEL_12;
  }

LABEL_13:
  v11 = v1[7];
  if (!(*(v7 + 48))(v4 + v11, 1, v6))
  {
    v8(v4 + v11, v6);
  }

  v12 = v1[8];
  v13 = type metadata accessor for Date();
  (*(*(v13 - 8) + 8))(v4 + v12, v13);
  sub_100016590(*(v4 + v1[9]), *(v4 + v1[9] + 8));
  v14 = (v4 + v1[10]);
  v15 = v14[1];
  if (v15 >> 60 != 15)
  {
    sub_100016590(*v14, v15);
  }

  v16 = (v4 + v1[11]);
  v17 = v16[1];
  if (v17 >> 60 != 15)
  {
    sub_100016590(*v16, v17);
  }

  v18 = (((v24 + ((v2 + 24) & ~v2) + 7) & 0xFFFFFFFFFFFFFFF8) + v23 + 8) & ~v23;
  sub_100016590(*(v4 + v1[12]), *(v4 + v1[12] + 8));
  sub_100016590(*(v4 + v1[13]), *(v4 + v1[13] + 8));

  sub_100016590(*(v0 + v18), *(v0 + v18 + 8));
  v25(v0 + v18 + *(v3 + 24), v6);
  v19 = *(v3 + 28);
  v20 = type metadata accessor for MACAddress();
  (*(*(v20 - 8) + 8))(v0 + v18 + v19, v20);

  return _swift_deallocObject(v0, ((v22 + v18 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_10009DE20()
{
  v1 = type metadata accessor for MACAddress();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_10009DF04()
{
  v14 = type metadata accessor for MACAddress();
  v1 = *(v14 - 8);
  v10 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v2 = (*(v1 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v3 = (type metadata accessor for OwnedBeaconGroup(0) - 8);
  v4 = (v2 + *(*v3 + 80) + 8) & ~*(*v3 + 80);
  v12 = (*(*v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v11 = (v12 + *(v6 + 80) + 8) & ~*(v6 + 80);
  v13 = (*(v6 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 8);
  v7(v0 + v10, v14);

  sub_100016590(*(v0 + v4), *(v0 + v4 + 8));
  v8 = *(v6 + 8);
  v8(v0 + v4 + v3[8], v5);
  v7(v0 + v4 + v3[9], v14);

  v8(v0 + v11, v5);

  return _swift_deallocObject(v0, v13 + 16);
}

uint64_t sub_10009E17C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v2 + 64);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_10009E248()
{
  v1 = (type metadata accessor for OwnedBeaconGroup(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);

  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v4 = v1[8];
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);
  v6 = v1[9];
  v7 = type metadata accessor for MACAddress();
  (*(*(v7 - 8) + 8))(v0 + v2 + v6, v7);

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_10009E3B8()
{
  v1 = type metadata accessor for MACAddress();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_10009EACC()
{

  sub_100007BAC((v0 + 24));

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_10009EB0C()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10009EB44()
{
  v1 = type metadata accessor for OwnedBeaconRecord(0);
  v2 = *(*(v1 - 1) + 64);
  v19 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = v0 + v19;
  sub_100016590(*(v0 + v19), *(v0 + v19 + 8));
  v4 = v1[5];
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v0 + v19 + v4, v5);
  v8 = v0 + v19 + v1[6];
  type metadata accessor for StableIdentifier(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_13;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      v7(v8, v5);
      v18 = v2;
      sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

LABEL_12:
      v2 = v18;
LABEL_13:

      break;
    case 3:
      v7(v8, v5);
      v18 = v2;
      sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

      goto LABEL_12;
    case 4:
      goto LABEL_13;
  }

LABEL_14:
  v10 = v1[7];
  if (!(*(v6 + 48))(v3 + v10, 1, v5))
  {
    v7(v3 + v10, v5);
  }

  v11 = v1[8];
  v12 = type metadata accessor for Date();
  (*(*(v12 - 8) + 8))(v3 + v11, v12);
  sub_100016590(*(v3 + v1[9]), *(v3 + v1[9] + 8));
  v13 = (v3 + v1[10]);
  v14 = v13[1];
  if (v14 >> 60 != 15)
  {
    sub_100016590(*v13, v14);
  }

  v15 = (v3 + v1[11]);
  v16 = v15[1];
  if (v16 >> 60 != 15)
  {
    sub_100016590(*v15, v16);
  }

  sub_100016590(*(v3 + v1[12]), *(v3 + v1[12] + 8));
  sub_100016590(*(v3 + v1[13]), *(v3 + v1[13] + 8));

  return _swift_deallocObject(v0, ((((v2 + v19 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 10);
}

uint64_t sub_10009EED0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_10009EF10()
{
  v1 = sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_10009EFF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_10009F0C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = a2;
  }

  return result;
}

uint64_t sub_10009F180()
{
  swift_unknownObjectRelease();

  sub_100016590(*(v0 + 56), *(v0 + 64));

  return _swift_deallocObject(v0, 72);
}

uint64_t sub_10009F1D0()
{

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_10009F210()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_10009F260()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10009F29C()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10009F2E4(uint64_t a1, uint64_t a2)
{
  result = sub_100E9056C(&qword_1016BD728, a2, type metadata accessor for PeerTrustService, &unk_1013EBD60);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10009F33C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_10009F40C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_10009F4D0()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10009F508()
{
  v1 = type metadata accessor for OwnedBeaconRecord(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v20 = *(*(v1 - 1) + 64);

  v4 = v0 + v3;
  sub_100016590(*(v0 + v3), *(v0 + v3 + 8));
  v5 = v1[5];
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v0 + v3 + v5, v6);
  v9 = v0 + v3 + v1[6];
  type metadata accessor for StableIdentifier(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_13;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      v8(v9, v6);
      v19 = (v2 + 24) & ~v2;
      sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

LABEL_12:
      v3 = v19;
LABEL_13:

      break;
    case 3:
      v8(v9, v6);
      v19 = (v2 + 24) & ~v2;
      sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

      goto LABEL_12;
    case 4:
      goto LABEL_13;
  }

LABEL_14:
  v11 = v1[7];
  if (!(*(v7 + 48))(v4 + v11, 1, v6))
  {
    v8(v4 + v11, v6);
  }

  v12 = v1[8];
  v13 = type metadata accessor for Date();
  (*(*(v13 - 8) + 8))(v4 + v12, v13);
  sub_100016590(*(v4 + v1[9]), *(v4 + v1[9] + 8));
  v14 = (v4 + v1[10]);
  v15 = v14[1];
  if (v15 >> 60 != 15)
  {
    sub_100016590(*v14, v15);
  }

  v16 = (v4 + v1[11]);
  v17 = v16[1];
  if (v17 >> 60 != 15)
  {
    sub_100016590(*v16, v17);
  }

  sub_100016590(*(v4 + v1[12]), *(v4 + v1[12] + 8));
  sub_100016590(*(v4 + v1[13]), *(v4 + v1[13] + 8));

  return _swift_deallocObject(v0, ((v20 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_10009F888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 36) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_10009F958(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 32);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 36) + 8) = a2;
  }

  return result;
}

uint64_t sub_10009FA18(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UUID();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = type metadata accessor for PeerCommunicationIdentifier(0);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[7];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[8] + 8);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_10009FB24(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for UUID();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    result = type metadata accessor for PeerCommunicationIdentifier(0);
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[8] + 8) = (a2 - 1);
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[7];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

uint64_t sub_10009FC2C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1000BC4D4(&qword_1016BDBB8, &unk_1013EC550);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10009FCE8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1000BC4D4(&qword_1016BDBB8, &unk_1013EC550);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10009FDD4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10009FE0C()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10009FE44()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10009FE7C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_10009FED4(uint64_t a1, uint64_t a2)
{
  RequestBeacon = type metadata accessor for FetchRequestBeacon(0);
  v5 = *(*(RequestBeacon - 8) + 48);

  return v5(a1, a2, RequestBeacon);
}

uint64_t sub_10009FF40(uint64_t a1, uint64_t a2)
{
  RequestBeacon = type metadata accessor for FetchRequestBeacon(0);
  v5 = *(*(RequestBeacon - 8) + 56);

  return v5(a1, a2, a2, RequestBeacon);
}

uint64_t sub_10009FFB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1000BC4D4(&qword_1016BDEA8, &qword_1013ED0F0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1000A00D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_1000BC4D4(&qword_1016BDEA8, &qword_1013ED0F0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1000A01E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 3)
    {
      return v10 - 2;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1000A02A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 2;
  }

  return result;
}

uint64_t sub_1000A0358()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1000A0390()
{

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1000A03C8()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000A0420()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000A0460()
{
  sub_100EC032C(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return _swift_deallocObject(v0, 33);
}

uint64_t sub_1000A04A0()
{
  v1 = *(type metadata accessor for LocationOfInterestProvider.RemappingOperation(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = v0 + v2;
  if (swift_getEnumCaseMultiPayload() <= 2)
  {
    sub_100016590(*v4, *(v4 + 8));
    v5 = *(type metadata accessor for SafeLocation(0) + 20);
    v6 = type metadata accessor for UUID();
    (*(*(v6 - 8) + 8))(v4 + v5, v6);
  }

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_1000A05CC()
{
  v1 = (type metadata accessor for SafeLocation(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = *(*v1 + 64) + v2;

  v4 = v0 + v2;
  sub_100016590(*v4, *(v4 + 8));
  v5 = v1[7];
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v4 + v5, v6);

  return _swift_deallocObject(v0, v3 + 1);
}

uint64_t sub_1000A06DC()
{
  sub_100007BAC((v0 + 16));

  return _swift_deallocObject(v0, 80);
}

uint64_t sub_1000A071C()
{

  if (*(v0 + 32))
  {
  }

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_1000A076C()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1000A07C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
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

uint64_t sub_1000A0880(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
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

uint64_t sub_1000A0938(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for UUID();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for URL();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1000A0A5C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for UUID();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for URL();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1000A0B8C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_1000A0C50()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000A0C90()
{
  if (*(v0 + 57) == 1)
  {
    v1 = *(v0 + 56);
    if (v1 <= 4)
    {
      if (*(v0 + 56) <= 1u)
      {
        if (*(v0 + 56))
        {
          sub_100007BAC((v0 + 16));
          goto LABEL_25;
        }

        goto LABEL_24;
      }

      if (v1 == 2)
      {

        goto LABEL_24;
      }

      if (v1 == 3)
      {

        goto LABEL_25;
      }

      if (v1 != 4)
      {
        goto LABEL_25;
      }

LABEL_12:

      goto LABEL_25;
    }

    if (*(v0 + 56) <= 7u)
    {
      if (v1 != 5 && v1 != 6)
      {
        if (v1 != 7)
        {
          goto LABEL_25;
        }

LABEL_24:

        goto LABEL_25;
      }

      goto LABEL_12;
    }

    switch(v1)
    {
      case 8u:

        goto LABEL_24;
      case 9u:

        break;
      case 0xAu:
        goto LABEL_24;
    }
  }

LABEL_25:

  return _swift_deallocObject(v0, 58);
}

uint64_t sub_1000A0D98()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000A0DD8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1000A0E10()
{

  sub_10071E1B8(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));

  return _swift_deallocObject(v0, 72);
}

uint64_t sub_1000A0E60()
{

  sub_100016590(*(v0 + 24), *(v0 + 32));

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1000A0EA0()
{
  sub_10071E1B8(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return _swift_deallocObject(v0, 49);
}

uint64_t sub_1000A0EE0()
{
  v1 = (type metadata accessor for PrivacyAlertSupport.AlertInfo(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);

  v4 = v1[7];
  v5 = type metadata accessor for MACAddress();
  (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);
  v6 = v1[8];
  v7 = type metadata accessor for Device();
  (*(*(v7 - 8) + 8))(v0 + v2 + v6, v7);

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_1000A101C()
{
  v1 = *(v0 + 56);
  if (v1 <= 4)
  {
    if (*(v0 + 56) <= 1u)
    {
      if (*(v0 + 56))
      {
        sub_100007BAC((v0 + 16));
        goto LABEL_24;
      }

      goto LABEL_23;
    }

    if (v1 == 2)
    {

      goto LABEL_23;
    }

    if (v1 == 3)
    {

      goto LABEL_24;
    }

    if (v1 != 4)
    {
      goto LABEL_24;
    }

LABEL_11:

    goto LABEL_24;
  }

  if (*(v0 + 56) <= 7u)
  {
    if (v1 != 5 && v1 != 6)
    {
      if (v1 != 7)
      {
        goto LABEL_24;
      }

LABEL_23:

      goto LABEL_24;
    }

    goto LABEL_11;
  }

  switch(v1)
  {
    case 8u:

      goto LABEL_23;
    case 9u:

      break;
    case 0xAu:
      goto LABEL_23;
  }

LABEL_24:

  return _swift_deallocObject(v0, 57);
}

uint64_t sub_1000A1118()
{
  v1 = type metadata accessor for Device();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 9);
}

uint64_t sub_1000A11F0()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000A1234(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for MACAddress();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for Device();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1000A1358(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for MACAddress();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for Device();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1000A1480(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
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

uint64_t sub_1000A153C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
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

uint64_t sub_1000A160C()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000A1648()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1000A1680(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 3)
    {
      return v10 - 2;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1000A1738(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 2;
  }

  return result;
}

uint64_t sub_1000A17F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1000A18B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1000A1988()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1000A19C0()
{

  sub_100007BAC((v0 + 24));

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_1000A1A00()
{
  v1 = sub_1000BC4D4(&qword_101697DE8, &unk_1013CA800);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  sub_100007BAC((v0 + v4));

  return _swift_deallocObject(v0, v4 + 40);
}

uint64_t sub_1000A1AA8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
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
    v9 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 24);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 28);

      return v15(v16, a2, v14);
    }
  }
}

void *sub_1000A1BF0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v8 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1000A1D34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URLComponents();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000A1DA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URLComponents();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1000A1E10(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 248)
  {
    v4 = *(a1 + 9);
    if (v4 >= 8)
    {
      return v4 - 7;
    }

    else
    {
      return 0;
    }
  }

  v8 = type metadata accessor for Date();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = sub_1000BC4D4(&qword_101699E50, &qword_1013D97C0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_11;
  }

  v13 = sub_1000BC4D4(&unk_1016AA510, &unk_101393150);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[8];
    goto LABEL_11;
  }

  v15 = type metadata accessor for BeaconIdentifier(0);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[9];

  return v16(v17, a2, v15);
}

uint64_t sub_1000A1FD4(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 248)
  {
    *(result + 9) = a2 + 7;
    return result;
  }

  v8 = type metadata accessor for Date();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = sub_1000BC4D4(&qword_101699E50, &qword_1013D97C0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_9;
  }

  v13 = sub_1000BC4D4(&unk_1016AA510, &unk_101393150);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[8];
    goto LABEL_9;
  }

  v15 = type metadata accessor for BeaconIdentifier(0);
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[9];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1000A219C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1000A2298(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1000A23A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 28);
  v6 = type metadata accessor for Date();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1000A2418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 28);
  v7 = type metadata accessor for Date();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1000A24D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 11)
  {
    v4 = *(a1 + 8) >> 60;
    v5 = ((4 * v4) & 0xC) == 0;
    v6 = ((4 * v4) & 0xC | (v4 >> 2)) ^ 0xF;
    if (v5)
    {
      return 0;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v10 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

void *sub_1000A2594(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 11)
  {
    *result = 0;
    result[1] = ((~a2 >> 2) & 3 | (4 * ~a2)) << 60;
  }

  else
  {
    v7 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000A2670()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

id sub_1000A26B4@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 userHasAcknowledgedFindMy];
  *a2 = result;
  return result;
}

uint64_t sub_1000A26FC()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000A274C()
{

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_1000A27A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1000A2860(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1000A291C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FMNAccountType();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for URLComponents();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1000A2A0C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for FMNAccountType();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for URLComponents();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1000A2B08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 16);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1000A2BC8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 16) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1000A2C88()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000A2CD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1000A2D98(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1000A2E5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for KeyDropJoinToken(0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 32);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1000A2F80(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for KeyDropJoinToken(0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1000A30A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1000A3160(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1000A3230(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
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
}

uint64_t sub_1000A32FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_1000A33B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 56);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UUID();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000A3464(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 56) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UUID();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

id sub_1000A3508@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 connectionState];
  *a2 = result;
  return result;
}

uint64_t sub_1000A353C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1000A3574()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1000A35AC()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000A35E8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000A3620()
{
  v1 = (type metadata accessor for BeaconIdentifier(0) - 8);
  v2 = (*(*v1 + 80) + 40) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);

  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v2, v4);
  v5(v0 + v2 + v1[7], v4);

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_1000A3744()
{
  v1 = type metadata accessor for SharedBeaconRecord(0);
  v2 = *(*(v1 - 1) + 80);
  v16 = *(*(v1 - 1) + 64);

  v3 = v0 + ((v2 + 40) & ~v2);
  sub_100016590(*v3, *(v3 + 8));
  v4 = v1[5];
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v3 + v4, v5);
  v7(v3 + v1[6], v5);

  v8 = v1[18];
  v9 = type metadata accessor for Date();
  (*(*(v9 - 8) + 8))(v3 + v8, v9);
  v10 = v1[19];
  v11 = *(v6 + 48);
  if (!v11(v3 + v10, 1, v5))
  {
    v7(v3 + v10, v5);
  }

  v12 = v3 + v1[20];
  v13 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
  if (!(*(*(v13 - 8) + 48))(v12, 1, v13))
  {
    v14 = *(v13 + 20);
    if (!v11(v12 + v14, 1, v5))
    {
      v7(v12 + v14, v5);
    }
  }

  return _swift_deallocObject(v0, ((v2 + 40) & ~v2) + v16);
}

uint64_t sub_1000A39D0()
{
  v1 = type metadata accessor for OwnedBeaconRecord(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 40) & ~v2;
  v20 = *(*(v1 - 1) + 64);

  v4 = v0 + v3;
  sub_100016590(*(v0 + v3), *(v0 + v3 + 8));
  v5 = v1[5];
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v0 + v3 + v5, v6);
  v9 = v0 + v3 + v1[6];
  type metadata accessor for StableIdentifier(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_13;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      v8(v9, v6);
      v19 = (v2 + 40) & ~v2;
      sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

LABEL_12:
      v3 = v19;
LABEL_13:

      break;
    case 3:
      v8(v9, v6);
      v19 = (v2 + 40) & ~v2;
      sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

      goto LABEL_12;
    case 4:
      goto LABEL_13;
  }

LABEL_14:
  v11 = v1[7];
  if (!(*(v7 + 48))(v4 + v11, 1, v6))
  {
    v8(v4 + v11, v6);
  }

  v12 = v1[8];
  v13 = type metadata accessor for Date();
  (*(*(v13 - 8) + 8))(v4 + v12, v13);
  sub_100016590(*(v4 + v1[9]), *(v4 + v1[9] + 8));
  v14 = (v4 + v1[10]);
  v15 = v14[1];
  if (v15 >> 60 != 15)
  {
    sub_100016590(*v14, v15);
  }

  v16 = (v4 + v1[11]);
  v17 = v16[1];
  if (v17 >> 60 != 15)
  {
    sub_100016590(*v16, v17);
  }

  sub_100016590(*(v4 + v1[12]), *(v4 + v1[12] + 8));
  sub_100016590(*(v4 + v1[13]), *(v4 + v1[13] + 8));

  return _swift_deallocObject(v0, v3 + v20);
}

uint64_t sub_1000A3D4C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v2 + 64);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_1000A3E28()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000A3E60()
{
  v1 = sub_1000BC4D4(&unk_1016C1140, &qword_10138BF70);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (v3 + *(v2 + 64) + 23) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, ((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_1000A3F64()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1000A3F9C()
{
  v1 = sub_1000BC4D4(&qword_101697248, &qword_1013DC4D0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_1000A4088()
{
  v1 = sub_1000BC4D4(&qword_101697248, &qword_1013DC4D0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_1000A416C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1000A41AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_101697240, &unk_10138BDA0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000A4224(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1000BC4D4(&qword_101697240, &unk_10138BDA0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1000A43A4()
{
  sub_100016590(*(v0 + 16), *(v0 + 24));
  sub_100016590(*(v0 + 32), *(v0 + 40));

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1000A43E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 40) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_1000A44B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 36);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 40) + 8) = a2;
  }

  return result;
}

uint64_t sub_1000A4574(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + a3[6] + 16);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = type metadata accessor for Date();
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[11];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_1000A46F8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = type metadata accessor for UUID();
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6] + 16) = (a2 - 1);
  }

  else
  {
    v15 = type metadata accessor for Date();
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[11];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_1000A4880()
{
  v1 = (type metadata accessor for MemberSharingCircle(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);

  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v4 = v1[7];
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v2 + v4, v5);
  v6(v0 + v2 + v1[8], v5);
  v6(v0 + v2 + v1[9], v5);
  v6(v0 + v2 + v1[10], v5);

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_1000A49D8()
{

  return _swift_deallocObject(v0, 25);
}

uint64_t sub_1000A4A14(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for OwnedBeaconRecord(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 36);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for BeaconNamingRecord(0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1000A4B38(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for OwnedBeaconRecord(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 36);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for BeaconNamingRecord(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1000A4C94()
{
  v1 = type metadata accessor for OwnedBeaconRecord(0);
  v25 = *(*(v1 - 1) + 80);
  v23 = *(*(v1 - 1) + 64);
  v2 = type metadata accessor for DateInterval();
  v3 = *(v2 - 8);
  v22 = *(v3 + 80);
  v21 = *(v3 + 64);

  v24 = (v25 + 24) & ~v25;
  v4 = v0 + v24;
  sub_100016590(*(v0 + v24), *(v0 + v24 + 8));
  v5 = v1[5];
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v0 + v24 + v5, v6);
  v9 = v0 + v24 + v1[6];
  type metadata accessor for StableIdentifier(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_13;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      v8(v9, v6);
      v20 = v2;
      sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

LABEL_12:
      v2 = v20;
LABEL_13:

      break;
    case 3:
      v8(v9, v6);
      v20 = v2;
      sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

      goto LABEL_12;
    case 4:
      goto LABEL_13;
  }

LABEL_14:
  v11 = v1[7];
  if (!(*(v7 + 48))(v4 + v11, 1, v6))
  {
    v8(v4 + v11, v6);
  }

  v12 = v1[8];
  v13 = type metadata accessor for Date();
  (*(*(v13 - 8) + 8))(v4 + v12, v13);
  sub_100016590(*(v4 + v1[9]), *(v4 + v1[9] + 8));
  v14 = (v4 + v1[10]);
  v15 = v14[1];
  if (v15 >> 60 != 15)
  {
    sub_100016590(*v14, v15);
  }

  v16 = (v4 + v1[11]);
  v17 = v16[1];
  if (v17 >> 60 != 15)
  {
    sub_100016590(*v16, v17);
  }

  v18 = (v24 + v23 + v22) & ~v22;
  sub_100016590(*(v4 + v1[12]), *(v4 + v1[12] + 8));
  sub_100016590(*(v4 + v1[13]), *(v4 + v1[13] + 8));

  (*(v3 + 8))(v0 + v18, v2);

  return _swift_deallocObject(v0, v21 + v18 + 1);
}

uint64_t sub_1000A50A0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1000A5110()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_1000A51FC()
{

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_1000A5244()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  v7 = (((v5 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (((v7 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  v9 = *(v2 + 8);
  v9(v0 + v4, v1);
  v9(v0 + v6, v1);
  sub_100016590(*(v0 + v7), *(v0 + v7 + 8));
  sub_100016590(*(v0 + v8), *(v0 + v8 + 8));

  return _swift_deallocObject(v0, ((v8 + 23) & 0xFFFFFFFFFFFFFFF8) + 16);
}

uint64_t sub_1000A5388()
{

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1000A53D0()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000A5408()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = (v4 + *(v6 + 80) + 8) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return _swift_deallocObject(v0, v8 + 8);
}

uint64_t sub_1000A5580()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_1000A564C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_1000A5694()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_1000A56DC()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 33) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = *(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8);
  v6 = (v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  swift_unknownObjectRelease();
  v8 = *(v2 + 8);
  v8(v0 + v3, v1);
  if (!(*(v2 + 48))(v0 + v6, 1, v1))
  {
    v8(v0 + v6, v1);
  }

  return _swift_deallocObject(v0, ((v7 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
}

uint64_t sub_1000A5924(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DateInterval();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 24) >> 60;
    if (((4 * v12) & 0xC) != 0)
    {
      return 16 - ((4 * v12) & 0xC | (v12 >> 2));
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1000A59F8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for DateInterval();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    v13 = a1 + *(a4 + 24);
    *(v13 + 16) = 0;
    *(v13 + 24) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  return result;
}

uint64_t sub_1000A5ADC()
{
  sub_100016590(*(v0 + 16), *(v0 + 24));
  sub_100016590(*(v0 + 32), *(v0 + 40));
  sub_100016590(*(v0 + 48), *(v0 + 56));

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_1000A5B24()
{
  sub_100016590(*(v0 + 16), *(v0 + 24));
  sub_100016590(*(v0 + 32), *(v0 + 40));
  sub_100016590(*(v0 + 48), *(v0 + 56));
  sub_100016590(*(v0 + 64), *(v0 + 72));
  sub_100016590(*(v0 + 80), *(v0 + 88));

  return _swift_deallocObject(v0, 96);
}

uint64_t sub_1000A5BC4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1000A5C04()
{

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_1000A5C70()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_1000A5D4C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_1000A5DE0()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_1000A5EB8()
{
  v1 = type metadata accessor for LocalFindableAccessoryRecord(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v21 = *(v6 + 64);
  swift_unknownObjectRelease();

  v8 = v0 + v3;
  v9 = *(v6 + 8);
  v9(v0 + v3, v5);

  sub_100016590(*(v8 + v1[7]), *(v8 + v1[7] + 8));
  v10 = (v0 + v3 + v1[8]);
  v11 = v10[1];
  if (v11 >> 60 != 15)
  {
    sub_100016590(*v10, v11);
  }

  v12 = (v3 + v4 + v7) & ~v7;
  v9(v8 + v1[9], v5);
  v13 = v8 + v1[13];
  v14 = type metadata accessor for MACAddress();
  (*(*(v14 - 8) + 8))(v13, v14);
  v15 = type metadata accessor for PeripheralConnectionMaterial(0);
  sub_100016590(*(v13 + *(v15 + 20)), *(v13 + *(v15 + 20) + 8));
  v16 = v1[14];
  v17 = type metadata accessor for P256PrivateKey();
  (*(*(v17 - 8) + 8))(v8 + v16, v17);
  v18 = v1[15];
  v19 = type metadata accessor for SymmetricKey256();
  (*(*(v19 - 8) + 8))(v8 + v18, v19);
  v9(v0 + v12, v5);

  return _swift_deallocObject(v0, ((v21 + v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_1000A6164()
{
  v1 = type metadata accessor for LocalFindableAccessoryRecord(0);
  v2 = (*(*(v1 - 1) + 80) + 24) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);

  v4 = v0 + v2;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v2, v5);

  sub_100016590(*(v4 + v1[7]), *(v4 + v1[7] + 8));
  v7 = (v0 + v2 + v1[8]);
  v8 = v7[1];
  if (v8 >> 60 != 15)
  {
    sub_100016590(*v7, v8);
  }

  v6(v4 + v1[9], v5);
  v9 = v4 + v1[13];
  v10 = type metadata accessor for MACAddress();
  (*(*(v10 - 8) + 8))(v9, v10);
  v11 = type metadata accessor for PeripheralConnectionMaterial(0);
  sub_100016590(*(v9 + *(v11 + 20)), *(v9 + *(v11 + 20) + 8));
  v12 = v1[14];
  v13 = type metadata accessor for P256PrivateKey();
  (*(*(v13 - 8) + 8))(v4 + v12, v13);
  v14 = v1[15];
  v15 = type metadata accessor for SymmetricKey256();
  (*(*(v15 - 8) + 8))(v4 + v14, v15);

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_1000A6398()
{
  v1 = type metadata accessor for LocalFindableAccessoryRecord(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v21 = *(v6 + 64);

  v8 = v0 + v3;
  v9 = *(v6 + 8);
  v9(v0 + v3, v5);

  sub_100016590(*(v8 + v1[7]), *(v8 + v1[7] + 8));
  v10 = (v0 + v3 + v1[8]);
  v11 = v10[1];
  if (v11 >> 60 != 15)
  {
    sub_100016590(*v10, v11);
  }

  v12 = (v3 + v4 + v7) & ~v7;
  v9(v8 + v1[9], v5);
  v13 = v8 + v1[13];
  v14 = type metadata accessor for MACAddress();
  (*(*(v14 - 8) + 8))(v13, v14);
  v15 = type metadata accessor for PeripheralConnectionMaterial(0);
  sub_100016590(*(v13 + *(v15 + 20)), *(v13 + *(v15 + 20) + 8));
  v16 = v1[14];
  v17 = type metadata accessor for P256PrivateKey();
  (*(*(v17 - 8) + 8))(v8 + v16, v17);
  v18 = v1[15];
  v19 = type metadata accessor for SymmetricKey256();
  (*(*(v19 - 8) + 8))(v8 + v18, v19);
  v9(v0 + v12, v5);

  return _swift_deallocObject(v0, ((v21 + v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_1000A663C()
{
  v1 = type metadata accessor for Device();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 17) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_1000A6774(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for FMNAccountType();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1000A6820(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for FMNAccountType();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000A68C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 40) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1000A6988(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 36);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 40) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1000A6A4C()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1000A6A84()
{
  v1 = type metadata accessor for OSSignpostID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_1000A6B78()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000A6BB8()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000A6BF4()
{
  sub_100408170(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 25);
}

uint64_t sub_1000A6C30()
{

  if (*(v0 + 32))
  {
  }

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1000A6CAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 11)
  {
    v4 = *(a1 + 8) >> 60;
    v5 = ((4 * v4) & 0xC) == 0;
    v6 = ((4 * v4) & 0xC | (v4 >> 2)) ^ 0xF;
    if (v5)
    {
      return 0;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v10 = type metadata accessor for RequestMethod();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

void *sub_1000A6D5C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 11)
  {
    *result = 0;
    result[1] = ((~a2 >> 2) & 3 | (4 * ~a2)) << 60;
  }

  else
  {
    v7 = type metadata accessor for RequestMethod();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000A6E74()
{
  v1 = *(type metadata accessor for CloudKitChangeSet(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 8))(v0 + v2, v4);

  return _swift_deallocObject(v0, v3 + 16);
}

uint64_t sub_1000A6F88()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1000A6FC0()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1000A7098()
{

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1000A7108()
{

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1000A7154()
{

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1000A719C()
{

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1000A7200()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000A7278()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000A72B4()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000A72FC()
{

  return _swift_deallocObject(v0, 72);
}

uint64_t sub_1000A7354()
{

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_1000A73A4()
{

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_1000A73F4()
{

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_1000A743C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1000A7490()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000A74D0()
{
  v1 = sub_1000BC4D4(&unk_1016C3130, &unk_1013F7950);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_1000A7618()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_1000A76E8()
{
  v1 = (type metadata accessor for LostModeRecord(0) - 8);
  v2 = (*(*v1 + 80) + 40) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);

  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v4 = v1[7];
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v2 + v4, v5);
  v6(v0 + v2 + v1[8], v5);

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_1000A783C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_1000A7938()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1000A7970()
{
  v1 = (sub_1000BC4D4(&qword_10169A098, &unk_101393410) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);

  v4 = v1[14];
  sub_1000BC4D4(&qword_10169A068, &qword_1013933F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    type metadata accessor for PencilPairingService.PeripheralDiscovery(0);
    v5 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
    (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);
  }

  return _swift_deallocObject(v0, ((((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_1000A7AF8()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1000A7B30()
{

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1000A7BC0()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000A7C28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SharedBeaconRecord(0);
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

uint64_t sub_1000A7CE4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SharedBeaconRecord(0);
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

uint64_t sub_1000A7D9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000A7E08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1000A7E80()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1000A7EC4(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for FMNAccountType();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1000A7F70(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for FMNAccountType();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000A8014()
{
  v1 = *(v0 + 24);
  if (v1 >> 60 != 15)
  {
    sub_100016590(*(v0 + 16), v1);
  }

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000A806C()
{

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1000A80B4()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1000A80EC()
{

  sub_100016590(*(v0 + 32), *(v0 + 40));

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1000A8134(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1000A8240(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for Date();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1000A8348(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1000A8414(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1000A84D0()
{
  v1 = sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  v4 = *(v2 + 64);

  sub_100007BAC((v0 + 24));
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_1000A85A8()
{
  v1 = sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_1000A8644()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000A867C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000A86B4()
{

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1000A86F4()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1000A8744()
{

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1000A8788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for FailableRecordSequence(255, *(a3 + 16), *(a3 + 24), a4);
  v6 = type metadata accessor for Optional();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t sub_1000A8804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for FailableRecordSequence(255, *(a4 + 16), *(a4 + 24), a4);
  v6 = type metadata accessor for Optional();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a2, v6);
}

uint64_t sub_1000A8884()
{
  sub_100016590(*(v0 + 16), *(v0 + 24));
  sub_100016590(*(v0 + 32), *(v0 + 40));
  sub_100016590(*(v0 + 56), *(v0 + 64));
  sub_100016590(*(v0 + 72), *(v0 + 80));
  sub_100016590(*(v0 + 88), *(v0 + 96));

  return _swift_deallocObject(v0, 104);
}

uint64_t sub_1000A88DC()
{
  sub_100016590(*(v0 + 16), *(v0 + 24));
  sub_100016590(*(v0 + 32), *(v0 + 40));
  sub_100016590(*(v0 + 48), *(v0 + 56));
  sub_100016590(*(v0 + 64), *(v0 + 72));

  return _swift_deallocObject(v0, 80);
}

uint64_t sub_1000A892C()
{
  sub_100016590(*(v0 + 16), *(v0 + 24));
  sub_100016590(*(v0 + 32), *(v0 + 40));
  sub_100016590(*(v0 + 48), *(v0 + 56));
  sub_100016590(*(v0 + 64), *(v0 + 72));
  sub_100016590(*(v0 + 80), *(v0 + 88));
  sub_100016590(*(v0 + 96), *(v0 + 104));
  sub_100016590(*(v0 + 112), *(v0 + 120));

  return _swift_deallocObject(v0, 128);
}

uint64_t sub_1000A8994()
{
  sub_100016590(*(v0 + 16), *(v0 + 24));
  sub_100016590(*(v0 + 32), *(v0 + 40));
  sub_100016590(*(v0 + 48), *(v0 + 56));
  sub_100016590(*(v0 + 64), *(v0 + 72));
  sub_100016590(*(v0 + 80), *(v0 + 88));
  sub_100016590(*(v0 + 96), *(v0 + 104));
  sub_100016590(*(v0 + 112), *(v0 + 120));
  sub_100016590(*(v0 + 128), *(v0 + 136));
  sub_100016590(*(v0 + 144), *(v0 + 152));
  sub_100016590(*(v0 + 160), *(v0 + 168));
  sub_100016590(*(v0 + 176), *(v0 + 184));
  sub_100016590(*(v0 + 200), *(v0 + 208));

  return _swift_deallocObject(v0, 216);
}

uint64_t sub_1000A8A28()
{
  sub_100016590(v0[2], v0[3]);
  sub_100016590(v0[4], v0[5]);
  sub_100016590(v0[6], v0[7]);
  sub_100016590(v0[8], v0[9]);
  v1 = v0[11];
  if (v1 >> 60 != 15)
  {
    sub_100016590(v0[10], v1);
  }

  return _swift_deallocObject(v0, 96);
}

uint64_t sub_1000A8A90()
{
  sub_100016590(*(v0 + 16), *(v0 + 24));
  sub_100016590(*(v0 + 32), *(v0 + 40));

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1000A8AD4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
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
    v9 = type metadata accessor for UUID();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_1000A8B8C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = type metadata accessor for UUID();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000A8C30()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_1000A8D20()
{
  updated = type metadata accessor for AccessoryFirmwareUpdateCommandInfo(0);
  v2 = (*(*(updated - 8) + 80) + 16) & ~*(*(updated - 8) + 80);
  v3 = *(*(updated - 8) + 64);
  if (*(v0 + v2))
  {
  }

  v4 = *(updated + 20);
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);

  return _swift_deallocObject(v0, ((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_1000A8E28()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_1000A8EEC()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_1000A8FB0()
{
  v1 = type metadata accessor for OwnedBeaconRecord(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v20 = *(*(v1 - 1) + 64);

  v4 = v0 + v3;
  sub_100016590(*(v0 + v3), *(v0 + v3 + 8));
  v5 = v1[5];
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v0 + v3 + v5, v6);
  v9 = v0 + v3 + v1[6];
  type metadata accessor for StableIdentifier(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_13;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      v8(v9, v6);
      v19 = (v2 + 32) & ~v2;
      sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

LABEL_12:
      v3 = v19;
LABEL_13:

      break;
    case 3:
      v8(v9, v6);
      v19 = (v2 + 32) & ~v2;
      sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

      goto LABEL_12;
    case 4:
      goto LABEL_13;
  }

LABEL_14:
  v11 = v1[7];
  if (!(*(v7 + 48))(v4 + v11, 1, v6))
  {
    v8(v4 + v11, v6);
  }

  v12 = v1[8];
  v13 = type metadata accessor for Date();
  (*(*(v13 - 8) + 8))(v4 + v12, v13);
  sub_100016590(*(v4 + v1[9]), *(v4 + v1[9] + 8));
  v14 = (v4 + v1[10]);
  v15 = v14[1];
  if (v15 >> 60 != 15)
  {
    sub_100016590(*v14, v15);
  }

  v16 = (v4 + v1[11]);
  v17 = v16[1];
  if (v17 >> 60 != 15)
  {
    sub_100016590(*v16, v17);
  }

  sub_100016590(*(v4 + v1[12]), *(v4 + v1[12] + 8));
  sub_100016590(*(v4 + v1[13]), *(v4 + v1[13] + 8));

  return _swift_deallocObject(v0, v3 + v20);
}

uint64_t sub_1000A931C()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000A9354()
{
  v1 = type metadata accessor for OwnedBeaconRecord(0);
  v2 = *(*(v1 - 1) + 64);
  v19 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = v0 + v19;
  sub_100016590(*(v0 + v19), *(v0 + v19 + 8));
  v4 = v1[5];
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v0 + v19 + v4, v5);
  v8 = v0 + v19 + v1[6];
  type metadata accessor for StableIdentifier(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_13;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      v7(v8, v5);
      v18 = v2;
      sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

LABEL_12:
      v2 = v18;
LABEL_13:

      break;
    case 3:
      v7(v8, v5);
      v18 = v2;
      sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

      goto LABEL_12;
    case 4:
      goto LABEL_13;
  }

LABEL_14:
  v10 = v1[7];
  if (!(*(v6 + 48))(v3 + v10, 1, v5))
  {
    v7(v3 + v10, v5);
  }

  v11 = v1[8];
  v12 = type metadata accessor for Date();
  (*(*(v12 - 8) + 8))(v3 + v11, v12);
  sub_100016590(*(v3 + v1[9]), *(v3 + v1[9] + 8));
  v13 = (v3 + v1[10]);
  v14 = v13[1];
  if (v14 >> 60 != 15)
  {
    sub_100016590(*v13, v14);
  }

  v15 = (v3 + v1[11]);
  v16 = v15[1];
  if (v16 >> 60 != 15)
  {
    sub_100016590(*v15, v16);
  }

  sub_100016590(*(v3 + v1[12]), *(v3 + v1[12] + 8));
  sub_100016590(*(v3 + v1[13]), *(v3 + v1[13] + 8));

  return _swift_deallocObject(v0, ((((v2 + v19 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16);
}

uint64_t sub_1000A96E0()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_1000A97B8()
{
  updated = type metadata accessor for AccessoryFirmwareUpdateCommandInfo(0);
  v2 = (*(*(updated - 8) + 80) + 16) & ~*(*(updated - 8) + 80);
  v3 = *(*(updated - 8) + 64);
  if (*(v0 + v2))
  {
  }

  v4 = *(updated + 20);
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_1000A98AC()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v3 + ((v5 + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v3;

  v7 = *(v2 + 8);
  v7(v0 + v4, v1);

  v7(v0 + v6, v1);

  return _swift_deallocObject(v0, v6 + v5);
}

uint64_t sub_1000A99B4()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_1000A9AB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1000A9B6C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1000A9C24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 32));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1000A9D30(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for Date();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 32)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1000A9E38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1000A9F50(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1000AA064(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 237)
  {
    v4 = *a1;
    if (v4 >= 0x13)
    {
      return v4 - 18;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for KeyDropInterface.KeyAlignment(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_1000AA108(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 237)
  {
    *result = a2 + 18;
  }

  else
  {
    v7 = type metadata accessor for KeyDropInterface.KeyAlignment(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000AA1A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1000AA274(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1000AA32C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 28);
  v6 = type metadata accessor for Bit();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1000AA3A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 28);
  v7 = type metadata accessor for Bit();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1000AA420(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FMNAccountType();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1000AA4EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for FMNAccountType();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1000AA5E8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 360))(v3, v4);
  *a2 = result;
  return result;
}

uint64_t sub_1000AA640@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 1032))(v3, v4);
  *a2 = result;
  return result;
}

uint64_t sub_1000AA698@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 520))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AA6F8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 512))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AA758@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 504))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AA7B8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 496))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AA818@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 728))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AA878@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 720))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AA8D8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 392))(v3, v4);
  *a2 = result;
  return result;
}

uint64_t sub_1000AA930@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 384))(v3, v4);
  *a2 = result;
  return result;
}

uint64_t sub_1000AA988@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 56))(v3, v4);
  *a2 = result;
  return result;
}

uint64_t sub_1000AA9E0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 80))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AAA40@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 8))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_1000AAA9C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 104))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AAAFC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 112))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AAB5C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 432))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AABBC@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 1064))(v3, v4);
  *a2 = result;
  return result;
}

uint64_t sub_1000AAC14@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 408))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AAC74@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 896))(v3, v4);
  *a2 = result;
  return result;
}

uint64_t sub_1000AACCC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 416))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AAD30@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 888))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AAD90@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 152))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AADF0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 144))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AAE50@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 840))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AAEB0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 856))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AAF10@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 832))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AAF70@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 824))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AAFD0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 880))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AB030@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 872))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AB090@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 16))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AB0F0@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 88))(v3, v4);
  *a2 = result;
  return result;
}

uint64_t sub_1000AB148@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 1432))(v3, v4);
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t sub_1000AB1A8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 672))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_1000AB200@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 1304))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AB260@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 1272))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AB2C0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 784))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AB320@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 1104))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AB380@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 1152))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AB3E0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 120))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AB440@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 128))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AB4A0@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 1248))(v3, v4);
  *a2 = result;
  return result;
}

uint64_t sub_1000AB4F8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 1112))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AB558@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 1128))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AB5B8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 1168))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AB618@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 1144))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AB678@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 1288))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AB6D8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 1240))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AB738@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 680))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AB798@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 248))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AB7F8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 240))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AB858@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 1080))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AB8B8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 168))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AB918@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 160))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AB978@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 616))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AB9D8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 1368))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000ABA38@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 1360))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000ABA98@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 1352))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000ABAF8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 1376))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000ABB58@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 232))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000ABBB8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 264))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000ABC18@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 224))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000ABC78@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 800))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000ABCD8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 792))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000ABD38@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 96))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000ABD98@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 288))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000ABDF8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 272))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000ABE58@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 256))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000ABEB8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 176))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000ABF18@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 1008))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000ABF78@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 1016))(v3, v4);
  *a2 = result;
  return result;
}

uint64_t sub_1000ABFD0@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 1296))(v3, v4);
  *a2 = result;
  return result;
}

uint64_t sub_1000AC028@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 200))(v3, v4);
  *a2 = result;
  return result;
}

uint64_t sub_1000AC080@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 208))(v3, v4);
  *a2 = result;
  return result;
}

uint64_t sub_1000AC0D8@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 688))(v3, v4);
  *a2 = result;
  return result;
}

uint64_t sub_1000AC130@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 984))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AC190@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 976))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AC1F0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 1000))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AC250@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 992))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

__n128 sub_1000AC2B0@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  (*(v4 + 528))(v8, v3, v4);
  v5 = v8[5];
  *(a2 + 64) = v8[4];
  *(a2 + 80) = v5;
  *(a2 + 96) = v8[6];
  v6 = v8[1];
  *a2 = v8[0];
  *(a2 + 16) = v6;
  result = v8[3];
  *(a2 + 32) = v8[2];
  *(a2 + 48) = result;
  return result;
}

uint64_t sub_1000AC330@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 1160))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AC390@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 1384))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AC3F0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 1392))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AC450@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 1216))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AC4B0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 1224))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AC510@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 1120))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AC570@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 936))(v3, v4);
  *a2 = result;
  return result;
}

uint64_t sub_1000AC5C8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 920))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AC628@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 960))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AC688@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 1192))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AC6E8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 1184))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AC748@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 1176))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AC7A8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 1200))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AC808@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 1208))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AC868@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 1328))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AC8C8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 1320))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AC928@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 64))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_1000AC980@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 184))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AC9E0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 320))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000ACA40@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 1424))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000ACAA0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 1416))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000ACB00@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 600))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000ACB60@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 1040))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000ACBC0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 280))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000ACC20@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 368))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000ACC80@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 376))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000ACCE0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 968))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000ACD40@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 136))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000ACDA0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 1056))(v3, v4);
  *a2 = result;
  return result;
}

uint64_t sub_1000ACDF8@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 1408))(v3, v4);
  *a2 = result;
  return result;
}

uint64_t sub_1000ACE50@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 1336))(v3, v4);
  *a2 = result;
  return result;
}

uint64_t sub_1000ACEA8@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 40))(v3, v4);
  *a2 = result;
  return result;
}

uint64_t sub_1000ACF00@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 1312))(v3, v4);
  *a2 = result;
  return result;
}

uint64_t sub_1000ACF58@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 1232))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000ACFB8@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 296))(v3, v4);
  *a2 = result;
  return result;
}

uint64_t sub_1000AD010@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 704))(v3, v4);
  *a2 = result;
  return result;
}

uint64_t sub_1000AD068@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 592))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AD0C8@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 712))(v3, v4);
  *a2 = result;
  return result;
}

uint64_t sub_1000AD120@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 696))(v3, v4);
  *a2 = result;
  return result;
}

uint64_t sub_1000AD178@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 544))(v3, v4);
  *a2 = result;
  return result;
}

uint64_t sub_1000AD1D0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 1280))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_1000AD228@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 952))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AD288@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 944))(v3, v4);
  *a2 = result;
  return result;
}

uint64_t sub_1000AD2E0@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 928))(v3, v4);
  *a2 = result;
  return result;
}

uint64_t sub_1000AD338@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 336))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AD398@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 352))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AD3F8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 344))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AD458@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 328))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AD4B8@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 72))(v3, v4);
  *a2 = result;
  return result;
}

uint64_t sub_1000AD510@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 736))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}