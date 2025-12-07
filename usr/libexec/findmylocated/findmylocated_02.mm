uint64_t sub_100037C60()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100037CBC()
{
  v1 = type metadata accessor for Credentials(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();

  v4 = *(v0 + 56);
  if (v4 >> 60 != 15)
  {
    sub_1000049D0(*(v0 + 48), v4);
  }

  v5 = (v2 + 64) & ~v2;
  v6 = (((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = v0 + v5;

  v8 = *(v1 + 28);
  v9 = type metadata accessor for URL();
  v10 = *(*(v9 - 8) + 8);
  v10(v7 + v8, v9);
  v11 = v7 + *(v1 + 32);

  v12 = type metadata accessor for Credentials.SecureLocationsProperties(0);
  v10(v11 + *(v12 + 20), v9);

  return _swift_deallocObject(v0, ((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_100037EB0()
{
  v1 = type metadata accessor for Response();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16, v3 | 7);
}

uint64_t sub_100037F90()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100037FC8(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100038008()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100038050()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000380B8()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100038140()
{
  v1 = (type metadata accessor for SecureLocation(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = (((*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (type metadata accessor for Credentials(0) - 8);
  v6 = *(*v5 + 80);
  v7 = (v4 + v6 + 16) & ~v6;
  v8 = *(*v5 + 64);
  v9 = v2 | v6;

  v10 = v0 + v3;

  v11 = v1[15];
  v12 = type metadata accessor for Date();
  (*(*(v12 - 8) + 8))(v10 + v11, v12);
  v13 = v1[16];
  v14 = type metadata accessor for MotionActivityState();
  (*(*(v14 - 8) + 8))(v10 + v13, v14);

  v15 = v5[9];
  v16 = type metadata accessor for URL();
  v17 = *(*(v16 - 8) + 8);
  v17(v0 + v7 + v15, v16);
  v18 = v0 + v7 + v5[10];

  v19 = type metadata accessor for Credentials.SecureLocationsProperties(0);
  v17(v18 + *(v19 + 20), v16);

  return _swift_deallocObject(v0, v7 + v8, v9 | 7);
}

uint64_t sub_1000383CC()
{
  v1 = type metadata accessor for Credentials(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = type metadata accessor for SecureLocation(0);
  v5 = *(*(v4 - 8) + 80);
  v6 = *(*(v4 - 8) + 64);
  swift_unknownObjectRelease();

  v7 = *(v0 + 56);
  if (v7 >> 60 != 15)
  {
    sub_1000049D0(*(v0 + 48), v7);
  }

  v8 = (v2 + 64) & ~v2;
  v9 = (v8 + v3 + v5) & ~v5;
  v21 = v2 | v5;
  v10 = v0 + v8;

  v11 = *(v1 + 28);
  v12 = type metadata accessor for URL();
  v13 = *(*(v12 - 8) + 8);
  v13(v10 + v11, v12);
  v14 = v10 + *(v1 + 32);

  v15 = type metadata accessor for Credentials.SecureLocationsProperties(0);
  v13(v14 + *(v15 + 20), v12);

  v16 = *(v4 + 52);
  v17 = type metadata accessor for Date();
  (*(*(v17 - 8) + 8))(v0 + v9 + v16, v17);
  v18 = *(v4 + 56);
  v19 = type metadata accessor for MotionActivityState();
  (*(*(v19 - 8) + 8))(v0 + v9 + v18, v19);

  return _swift_deallocObject(v0, ((((v6 + v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v21 | 7);
}

uint64_t sub_100038678()
{
  v1 = type metadata accessor for Response();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_100038728()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000387A0()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000387FC()
{
  v1 = sub_10004B564(&unk_1005A9938, &unk_1004C3080);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_1000388E0()
{

  sub_1000049D0(*(v0 + 24), *(v0 + 32));

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_100038938()
{

  return _swift_deallocObject(v0, 56, 7);
}

char *sub_100038C64()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_10004B564(&qword_1005A9DE0, &qword_1004C32C0);
  }

  else
  {
    return (&type metadata for () + 1);
  }
}

uint64_t sub_100038C94()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100038CDC()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_100038D14()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100038D4C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100038DA4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = type metadata accessor for DiversifiedRootKeys();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_100038E94(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    v12 = type metadata accessor for DiversifiedRootKeys();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_100038F90()
{
  v1 = type metadata accessor for SecureLocationsCachedSharedKey(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 1) + 64);

  v5 = v0 + v3;
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);

  v7 = v1[6];
  v8 = type metadata accessor for PrivateKey();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v3 + v7, 1, v8))
  {
    (*(v9 + 8))(v5 + v7, v8);
  }

  v10 = v1[7];
  v11 = type metadata accessor for HashedAdvertisement();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v5 + v10, 1, v11))
  {
    (*(v12 + 8))(v5 + v10, v11);
  }

  v13 = v1[8];
  v14 = type metadata accessor for Destination();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(v5 + v13, 1, v14))
  {
    (*(v15 + 8))(v5 + v13, v14);
  }

  v16 = v1[11];
  v17 = type metadata accessor for Date();
  v18 = *(v17 - 8);
  if (!(*(v18 + 48))(v5 + v16, 1, v17))
  {
    (*(v18 + 8))(v5 + v16, v17);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000392A8()
{

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_1000392F0()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_10003932C()
{
  v1 = type metadata accessor for Destination();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000393F0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100039428()
{
  v1 = type metadata accessor for Destination();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100039538()
{
  v1 = type metadata accessor for Destination();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100039600()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100039678()
{
  v1 = sub_10004B564(&qword_1005AAC70, &qword_1004D96D0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for Destination();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v11 + 16, v10 | 7);
}

uint64_t sub_1000397E4()
{

  return _swift_deallocObject(v0, 57, 7);
}

uint64_t sub_100039834()
{
  v1 = *(sub_10004B564(&qword_1005AABB0, &unk_1004C45F0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);

  v5 = type metadata accessor for DiversifiedRootKeys();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return _swift_deallocObject(v0, ((((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_100039990()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000399C8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100039A04()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100039A44()
{
  v1 = type metadata accessor for PrivateKey();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100039B0C()
{
  v1 = type metadata accessor for DiversifiedRootKeys();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100039BE4()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100039C2C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_14:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v11 = *(a1 + a3[5] + 8);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  v13 = sub_10004B564(&unk_1005AE620, &qword_1004C4588);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[6];
LABEL_13:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_14;
  }

  v16 = sub_10004B564(&qword_1005AAB18, &qword_1004C4580);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[7];
    goto LABEL_13;
  }

  v17 = sub_10004B564(&qword_1005A9280, &qword_1004C27F8);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v14 = *(v17 - 8);
    v15 = a3[8];
    goto LABEL_13;
  }

  v18 = sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  v19 = *(*(v18 - 8) + 48);
  v20 = a1 + a3[11];

  return v19(v20, a2, v18);
}

uint64_t sub_100039E64(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_12:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5] + 8) = (a2 - 1);
    return result;
  }

  v13 = sub_10004B564(&unk_1005AE620, &qword_1004C4588);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[6];
LABEL_11:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_12;
  }

  v16 = sub_10004B564(&qword_1005AAB18, &qword_1004C4580);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[7];
    goto LABEL_11;
  }

  v17 = sub_10004B564(&qword_1005A9280, &qword_1004C27F8);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[8];
    goto LABEL_11;
  }

  v18 = sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[11];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_10003A104()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003A13C()
{
  v1 = (type metadata accessor for SecureLocation(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[15];
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  v7 = v1[16];
  v8 = type metadata accessor for MotionActivityState();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10003A288()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10003A2DC()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10003A334()
{
  v1 = (type metadata accessor for SecureLocation(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = (((*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  v5 = v0 + v3;

  v6 = v1[15];
  v7 = type metadata accessor for Date();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);
  v8 = v1[16];
  v9 = type metadata accessor for MotionActivityState();
  (*(*(v9 - 8) + 8))(v5 + v8, v9);

  return _swift_deallocObject(v0, v4 + 8, v2 | 7);
}

uint64_t sub_10003A49C()
{
  v1 = (type metadata accessor for SecureLocationsCachedPayload(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  v5 = v0 + v3;
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v5, v6);
  v7 = v5 + v1[7];

  v8 = type metadata accessor for SecureLocation(0);
  v9 = *(v8 + 52);
  v10 = type metadata accessor for Date();
  (*(*(v10 - 8) + 8))(v7 + v9, v10);
  v11 = *(v8 + 56);
  v12 = type metadata accessor for MotionActivityState();
  (*(*(v12 - 8) + 8))(v7 + v11, v12);

  return _swift_deallocObject(v0, v4 + 16, v2 | 7);
}

uint64_t sub_10003A63C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003A674()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10003A744()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003A77C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = type metadata accessor for SecureLocation(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_10003A86C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    v12 = type metadata accessor for SecureLocation(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_10003A97C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10003A9DC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003AA1C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003AA54()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003AA8C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10003AAE8()
{
  v1 = type metadata accessor for SecureLocationsStewie.ServiceState();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10003ABE8()
{
  v1 = *(sub_10004B564(&unk_1005AB4C0, &qword_1004C3440) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);

  v5 = type metadata accessor for SecureLocationsStewie.PublishResult();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return _swift_deallocObject(v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_10003AD1C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003AD54()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10003AD94()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10003ADDC()
{
  v1 = *(v0 + 32);
  if (v1 >> 60 != 15)
  {
    sub_1000049D0(*(v0 + 24), v1);
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10003AE34()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10003AEC8()
{
  v1 = (type metadata accessor for SecureLocation(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[15];
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  v7 = v1[16];
  v8 = type metadata accessor for MotionActivityState();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10003B00C()
{
  v1 = (type metadata accessor for SecureLocation(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[15];
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  v7 = v1[16];
  v8 = type metadata accessor for MotionActivityState();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10003B15C(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 252)
  {
    v4 = *a1;
    if (v4 >= 4)
    {
      return v4 - 3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for LocalUserNotificationCategory();
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_10003B200(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 252)
  {
    *result = a2 + 3;
  }

  else
  {
    v7 = type metadata accessor for LocalUserNotificationCategory();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10003B2D4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10003B380(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10003B428()
{
  v1 = type metadata accessor for SessionMessagingInvite();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for Destination();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_10003B578()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003B5B0()
{
  v1 = type metadata accessor for Destination();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10003B68C()
{
  v1 = type metadata accessor for Destination();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10003B768()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10003B7C0()
{
  v1 = type metadata accessor for Destination();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10003B848()
{
  v1 = type metadata accessor for Destination();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 96) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  sub_1000049D0(*(v0 + 32), *(v0 + 40));

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10003B940()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003B980()
{
  v17 = type metadata accessor for PrivateKey();
  v1 = *(v17 - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(v1 + 64);
  v16 = type metadata accessor for HashedAdvertisement();
  v5 = *(v16 - 8);
  v6 = *(v5 + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v8 = *(v5 + 64);
  v9 = type metadata accessor for MessageContext();
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = (v7 + v8 + v11) & ~v11;
  v13 = v2 | v6 | v11;
  v14 = (*(v10 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v1 + 8))(v0 + v3, v17);
  (*(v5 + 8))(v0 + v7, v16);
  (*(v10 + 8))(v0 + v12, v9);

  return _swift_deallocObject(v0, v14 + 8, v13 | 7);
}

uint64_t sub_10003BB70()
{
  v17 = type metadata accessor for HashedAdvertisement();
  v1 = *(v17 - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  v16 = type metadata accessor for PrivateKey();
  v5 = *(v16 - 8);
  v6 = *(v5 + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v8 = *(v5 + 64);
  v9 = type metadata accessor for MessageContext();
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = (v7 + v8 + v11) & ~v11;
  v15 = v2 | v6 | v11;
  v13 = (((*(v10 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v1 + 8))(v0 + v3, v17);
  (*(v5 + 8))(v0 + v7, v16);
  (*(v10 + 8))(v0 + v12, v9);

  return _swift_deallocObject(v0, v13 + 8, v15 | 7);
}

uint64_t sub_10003BD70()
{
  v17 = type metadata accessor for HashedAdvertisement();
  v1 = *(v17 - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);
  v16 = type metadata accessor for PrivateKey();
  v5 = *(v16 - 8);
  v6 = *(v5 + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v8 = *(v5 + 64);
  v9 = type metadata accessor for MessageContext();
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = (v7 + v8 + v11) & ~v11;
  v15 = v2 | v6 | v11;
  v13 = (((*(v10 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v1 + 8))(v0 + v3, v17);
  (*(v5 + 8))(v0 + v7, v16);
  (*(v10 + 8))(v0 + v12, v9);

  return _swift_deallocObject(v0, v13 + 16, v15 | 7);
}

uint64_t sub_10003BF88()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10003C068()
{

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_10003C0A8()
{

  return _swift_deallocObject(v0, 24, 7);
}

id sub_10003C0E0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC13findmylocated22CurrentLocationMonitor_currentLocation;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_10003C178()
{

  return _swift_deallocObject(v0, 28, 7);
}

uint64_t sub_10003C1B0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003C200()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003C238()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003C298()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003C2D8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003C324()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003C35C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10003C3AC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003C3E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URLComponents();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10003C450(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URLComponents();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_10003C4C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ClientContext(0);
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
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_10003C584(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ClientContext(0);
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
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10003C644(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URLComponents();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10003C6B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URLComponents();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_10003C77C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ClientContext(0);
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

uint64_t sub_10003C848(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ClientContext(0);
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

uint64_t sub_10003C904(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URLComponents();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10003C970(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URLComponents();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_10003C9E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ClientContext(0);
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
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_10003CAA4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ClientContext(0);
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
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10003CB74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ClientContext(0);
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
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_10003CC38(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ClientContext(0);
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
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10003CCF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URLComponents();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10003CD64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URLComponents();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_10003CDD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ClientContext(0);
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
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_10003CE98(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ClientContext(0);
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
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10003CF58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 40);
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
    v9 = type metadata accessor for ClientContext(0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_10003D010(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 40) = a2;
  }

  else
  {
    v7 = type metadata accessor for ClientContext(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10003D0B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URLComponents();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10003D120(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URLComponents();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_10003D190(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URLComponents();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10003D1FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URLComponents();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_10003D26C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 40);
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
    v9 = type metadata accessor for ClientContext(0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_10003D324(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 40) = a2;
  }

  else
  {
    v7 = type metadata accessor for ClientContext(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10003D3C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URLComponents();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10003D434(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URLComponents();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_10003D4A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 40);
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
    v9 = type metadata accessor for ClientContext(0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_10003D55C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 40) = a2;
  }

  else
  {
    v7 = type metadata accessor for ClientContext(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10003D6AC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for SystemInfo.DeviceLockState();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 48);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10003D758(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for SystemInfo.DeviceLockState();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 48);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10003D844(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B564(&qword_1005A8F20, &qword_1004C9BE0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10003D8BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B564(&qword_1005A8F20, &qword_1004C9BE0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_10003D938(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_10004B564(&qword_1005A92D0, &qword_1004C2890);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10003D9F4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_10004B564(&qword_1005A92D0, &qword_1004C2890);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10003DE88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 64);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for URL();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 76);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10003DF34(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 64) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for URL();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 76);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10003E01C()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10003E05C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003E094()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10003E0D4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 224, 7);
}

uint64_t sub_10003E164()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003E19C()
{

  return _swift_deallocObject(v0, 208, 7);
}

uint64_t sub_10003E22C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
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

uint64_t sub_10003E2F8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for URL();
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

uint64_t sub_10003E3B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URLComponents();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10003E41C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URLComponents();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_10003E48C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ClientContext(0);
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
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_10003E54C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ClientContext(0);
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
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10003E608(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ClientContext(0);
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
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_10003E6CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ClientContext(0);
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
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10003E794()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10003E7D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for RequestMethod();
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

uint64_t sub_10003E890(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for RequestMethod();
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

uint64_t sub_10003E98C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[5] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_10004B564(&qword_1005AE5C0, &unk_1004D06D0);
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[8];
      goto LABEL_3;
    }

    v15 = sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[9];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_10003EB1C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5] + 8) = (a2 - 1);
    return result;
  }

  v13 = sub_10004B564(&qword_1005AE5C0, &unk_1004D06D0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[8];
    goto LABEL_3;
  }

  v15 = sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[9];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_10003ECAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Fence.ID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for Fence.TriggerID();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = type metadata accessor for Fence.TriggerPosition();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_10003EDEC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for Fence.ID();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = type metadata accessor for Fence.TriggerID();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = type metadata accessor for Fence.TriggerPosition();
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_10003EFBC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 254)
  {
    v12 = *(a1 + a3[5]);
    if (v12 >= 2)
    {
      return v12 - 1;
    }

    else
    {
      return 0;
    }
  }

  v13 = sub_10004B564(&qword_1005AEB98, &unk_1004D07C0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a2)
  {
    v8 = v13;
    v9 = *(v14 + 48);
    v10 = a1 + a3[6];
    goto LABEL_3;
  }

  v15 = sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[7];

  return v16(v17, a2, v15);
}

uint64_t sub_10003F140(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 254)
  {
    *(a1 + a4[5]) = a2 + 1;
    return result;
  }

  v13 = sub_10004B564(&qword_1005AEB98, &unk_1004D07C0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[6];
    goto LABEL_3;
  }

  v15 = sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[7];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_10003F2C8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 254)
  {
    v12 = *(a1 + a3[5]);
    if (v12 >= 2)
    {
      return v12 - 1;
    }

    else
    {
      return 0;
    }
  }

  v13 = type metadata accessor for SharedSecretKey();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a2)
  {
    v8 = v13;
    v9 = *(v14 + 48);
    v10 = a1 + a3[6];
    goto LABEL_3;
  }

  v15 = type metadata accessor for Date();
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[7];

  return v16(v17, a2, v15);
}

uint64_t sub_10003F434(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 254)
  {
    *(a1 + a4[5]) = a2 + 1;
    return result;
  }

  v13 = type metadata accessor for SharedSecretKey();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[6];
    goto LABEL_3;
  }

  v15 = type metadata accessor for Date();
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[7];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_10003F5A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8) >> 60;
    if (((4 * v10) & 0xC) != 0)
    {
      return 16 - ((4 * v10) & 0xC | (v10 >> 2));
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_10003F674(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for URL();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    v11 = (a1 + *(a4 + 20));
    *v11 = 0;
    v11[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  return result;
}

uint64_t sub_10003F73C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003F774()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10003F7B4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10003F7FC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003F834()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 41) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10003F904(uint64_t a1, uint64_t a2, uint64_t a3)
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
    Properties = type metadata accessor for Credentials.FindMyLocateProperties(0);
    v9 = *(Properties - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = Properties;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for Credentials.SecureLocationsProperties(0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_10003FA28(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    Properties = type metadata accessor for Credentials.FindMyLocateProperties(0);
    v9 = *(Properties - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = Properties;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for Credentials.SecureLocationsProperties(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_10003FB54(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for URL();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10003FC00(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for URL();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10003FCA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10003FD10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_10003FD80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URLComponents();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10003FDEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URLComponents();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_10003FE5C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003FE94()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10003FF30()
{
  v1 = sub_10004B564(&qword_1005AFFB8, &qword_1004D14A0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  sub_100004984(v0 + 2);
  sub_100004984(v0 + 7);

  if (*(v0 + 16))
  {
    sub_100004984(v0 + 13);
  }

  v5 = (v3 + 144) & ~v3;
  v6 = (v4 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(&v0[v5], v1);

  return _swift_deallocObject(v0, v6 + 8, v3 | 7);
}

uint64_t sub_10004002C()
{
  v1 = type metadata accessor for Response();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_100040114()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100040164()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004019C()
{
  v1 = *(type metadata accessor for AckAlertEndpoint(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = sub_10004B564(&qword_1005B0138, &qword_1004D16C8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);

  v9 = type metadata accessor for URLComponents();
  (*(*(v9 - 8) + 8))(v0 + v3, v9);

  v10 = *(v0 + v4 + 16);
  if (v10 >> 60 != 15)
  {
    sub_1000049D0(*(v0 + v4 + 8), v10);
  }

  v11 = (v4 + 31) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + v7 + 40) & ~v7;
  sub_100004984((v0 + v11));
  (*(v6 + 8))(v0 + v12, v5);

  return _swift_deallocObject(v0, ((v8 + v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | v7 | 7);
}

uint64_t sub_100040358()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100040394()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000403CC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100040404(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100040470(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100040520()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100040590()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100040654()
{
  v1 = sub_10004B564(&qword_1005AC678, &qword_1004C6F20);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_1000407B8()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100040884()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000408BC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000408F4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100040934()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004096C()
{
  sub_10004B564(&qword_1005B0AE0, &qword_1004D2628);
  UnsafeMutablePointer.deinitialize(count:)();
  sub_10004B564(&qword_1005B0AE8, &qword_1004D2630);
  UnsafeMutablePointer.deinitialize(count:)();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000409E4()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_100040AE4()
{
  v1 = (type metadata accessor for ShareInvitationRecord(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  v5 = v0 + v3;
  v6 = type metadata accessor for URL();
  (*(*(v6 - 8) + 8))(v5, v6);
  sub_1000049D0(*(v5 + v1[7]), *(v5 + v1[7] + 8));

  return _swift_deallocObject(v0, ((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_100040BFC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100040C38()
{
  v1 = type metadata accessor for PersonHandle();
  v2 = *(v1 - 8);
  v21 = *(v2 + 80);
  v3 = (v21 + 32) & ~v21;
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = type metadata accessor for FenceRecord(0);
  v6 = *(*(v5 - 1) + 80);
  v20 = *(*(v5 - 1) + 64);
  v23 = type metadata accessor for Fence();
  v7 = *(v23 - 8);
  v8 = *(v7 + 80);
  v19 = *(v7 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  v22 = (v4 + v6 + 8) & ~v6;
  v9 = v0 + v22;
  v10 = type metadata accessor for UUID();
  (*(*(v10 - 8) + 8))(v0 + v22, v10);

  v11 = v5[8];
  v12 = type metadata accessor for Fence.Schedule();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v0 + v22 + v11, 1, v12))
  {
    (*(v13 + 8))(v9 + v11, v12);
  }

  v14 = v5[9];
  v15 = type metadata accessor for Date();
  v16 = *(v15 - 8);
  if (!(*(v16 + 48))(v9 + v14, 1, v15))
  {
    (*(v16 + 8))(v9 + v14, v15);
  }

  v17 = (((v20 + v22 + 7) & 0xFFFFFFFFFFFFFFF8) + v8 + 8) & ~v8;

  (*(v7 + 8))(v0 + v17, v23);

  return _swift_deallocObject(v0, ((v19 + v17 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v21 | v6 | v8 | 7);
}

uint64_t sub_100040FD8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100041010()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_1000410F0()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_1000411EC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10004122C()
{
  v1 = type metadata accessor for Fence.TriggerID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10004130C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004134C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100041384()
{
  v1 = type metadata accessor for Fence.ID();
  v2 = *(v1 - 8);
  v17 = *(v2 + 80);
  v3 = (v17 + 24) & ~v17;
  v4 = *(v2 + 64);
  v5 = type metadata accessor for Fence.TriggerPosition();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v3 + v4 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = *(sub_10004B564(&qword_1005A9148, &qword_1004D2370) - 8);
  v11 = *(v10 + 80);
  v12 = (v8 + v9 + v11) & ~v11;
  v16 = *(v10 + 64);

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v8, v5);
  v13 = type metadata accessor for Fence.AcceptanceStatus();
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(v0 + v12, 1, v13))
  {
    (*(v14 + 8))(v0 + v12, v13);
  }

  return _swift_deallocObject(v0, ((v16 + v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v17 | v7 | v11 | 7);
}

uint64_t sub_1000415CC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100041614()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100041658()
{
  v1 = type metadata accessor for ContinuousClock.Instant();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_100041740()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100041778()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1000417E4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100041834()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100041884()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000418C0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100041908()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_1000419C4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000419FC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100041A34()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100041A98()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100041AD0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100041B14()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100041B5C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100041B94()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100041BD8()
{
  sub_1000049D0(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100041C28()
{
  sub_1000049D0(*(v0 + 16), *(v0 + 24));
  sub_1000049D0(*(v0 + 32), *(v0 + 40));

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100041CFC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for URL();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100041DA8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for URL();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100041E4C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for Fence.ID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = type metadata accessor for Fence.TriggerID();
    if (*(*(v11 - 8) + 84) == a2)
    {
      v8 = v11;
      v12 = *(v11 - 8);
      v13 = a3[5];
    }

    else
    {
      v14 = type metadata accessor for Fence.TriggerPosition();
      if (*(*(v14 - 8) + 84) == a2)
      {
        v8 = v14;
        v12 = *(v14 - 8);
        v13 = a3[6];
      }

      else
      {
        v15 = type metadata accessor for Date();
        if (*(*(v15 - 8) + 84) != a2)
        {
          v17 = *(a1 + a3[8]);
          if (v17 >= 5)
          {
            return v17 - 4;
          }

          else
          {
            return 0;
          }
        }

        v8 = v15;
        v12 = *(v15 - 8);
        v13 = a3[7];
      }
    }

    v9 = *(v12 + 48);
    v10 = a1 + v13;
  }

  return v9(v10, a2, v8);
}

uint64_t sub_100041FE4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for Fence.ID();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = type metadata accessor for Fence.TriggerID();
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      v16 = type metadata accessor for Fence.TriggerPosition();
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[6];
      }

      else
      {
        result = type metadata accessor for Date();
        if (*(*(result - 8) + 84) != a3)
        {
          *(a1 + a4[8]) = a2 + 4;
          return result;
        }

        v10 = result;
        v14 = *(result - 8);
        v15 = a4[7];
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_10004217C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Handle();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_100042234(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = type metadata accessor for Handle();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000422E0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_10004B564(&qword_1005B3360, &unk_1004C6AA0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1000423A8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = sub_10004B564(&qword_1005B3360, &unk_1004C6AA0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10004246C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100042518(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000425C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 254)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return v10 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = type metadata accessor for Date();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1000426E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 254)
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  else
  {
    v11 = type metadata accessor for Date();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_100042800()
{
  v1 = type metadata accessor for SessionMessagingInvite();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100042888()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_1000428D0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100042908()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100042940()
{
  v17 = type metadata accessor for Account();
  v1 = *(v17 - 8);
  v2 = *(v1 + 80);
  v15 = (v2 + 32) & ~v2;
  v3 = *(v1 + 64);
  v16 = type metadata accessor for Destination();
  v4 = *(v16 - 8);
  v5 = *(v4 + 80);
  v6 = (v15 + v3 + v5) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = type metadata accessor for MessageContext();
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = (v7 + v10 + 8) & ~v10;
  v14 = *(v9 + 64);
  v12 = v2 | v5 | v10;
  (*(v1 + 8))(v0 + v15, v17);
  (*(v4 + 8))(v0 + v6, v16);

  (*(v9 + 8))(v0 + v11, v8);

  return _swift_deallocObject(v0, v11 + v14, v12 | 7);
}

uint64_t sub_100042B30()
{
  v22 = type metadata accessor for Account();
  v1 = *(v22 - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  v4 = type metadata accessor for Destination();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v20 = (((v2 + 32) & ~v2) + v3 + v6) & ~v6;
  v21 = v4;
  v7 = v20 + *(v5 + 64);
  v19 = type metadata accessor for Message();
  v8 = *(v19 - 8);
  v9 = *(v8 + 80);
  v17 = (v7 + v9) & ~v9;
  v10 = (*(v8 + 64) + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = type metadata accessor for MessageContext();
  v11 = *(v18 - 8);
  v12 = *(v11 + 80);
  v13 = (v10 + v12 + 8) & ~v12;
  v16 = *(v11 + 64);
  v14 = v2 | v6 | v12 | v9;
  (*(v1 + 8))(v0 + ((v2 + 32) & ~v2), v22);
  (*(v5 + 8))(v0 + v20, v21);
  (*(v8 + 8))(v0 + v17, v19);

  (*(v11 + 8))(v0 + v13, v18);

  return _swift_deallocObject(v0, v13 + v16, v14 | 7);
}

uint64_t sub_100042DB0()
{
  v17 = type metadata accessor for Account();
  v1 = *(v17 - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  v16 = type metadata accessor for UUID();
  v5 = *(v16 - 8);
  v6 = *(v5 + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v8 = *(v5 + 64);
  v9 = type metadata accessor for Destination();
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = (v7 + v8 + v11) & ~v11;
  v15 = *(v10 + 64);
  v13 = v2 | v6 | v11;
  (*(v1 + 8))(v0 + v3, v17);
  (*(v5 + 8))(v0 + v7, v16);
  (*(v10 + 8))(v0 + v12, v9);

  return _swift_deallocObject(v0, v12 + v15, v13 | 7);
}

uint64_t sub_100042F8C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100042FC4()
{
  v22 = type metadata accessor for Account();
  v1 = *(v22 - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  v21 = type metadata accessor for Destination();
  v4 = *(v21 - 8);
  v5 = *(v4 + 80);
  v6 = (((v2 + 72) & ~v2) + v3 + v5) & ~v5;
  v17 = v6;
  v7 = *(v4 + 64);
  v20 = sub_10004B564(&qword_1005B1888, &unk_1004D8870);
  v8 = *(v20 - 8);
  v9 = *(v8 + 80);
  v18 = (v6 + v7 + v9) & ~v9;
  v10 = (*(v8 + 64) + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = type metadata accessor for MessageContext();
  v11 = *(v19 - 8);
  v12 = *(v11 + 80);
  v13 = (v10 + v12 + 8) & ~v12;
  v16 = *(v11 + 64);
  v14 = v2 | v5 | v12 | v9;
  swift_unknownObjectRelease();
  sub_100004984((v0 + 32));
  (*(v1 + 8))(v0 + ((v2 + 72) & ~v2), v22);
  (*(v4 + 8))(v0 + v17, v21);
  (*(v8 + 8))(v0 + v18, v20);

  (*(v11 + 8))(v0 + v13, v19);

  return _swift_deallocObject(v0, v13 + v16, v14 | 7);
}

uint64_t sub_10004325C()
{
  v17 = type metadata accessor for Account();
  v1 = *(v17 - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 72) & ~v2;
  v4 = *(v1 + 64);
  v16 = type metadata accessor for UUID();
  v5 = *(v16 - 8);
  v6 = *(v5 + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v8 = *(v5 + 64);
  v9 = type metadata accessor for Destination();
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = (v7 + v8 + v11) & ~v11;
  v15 = *(v10 + 64);
  v13 = v2 | v6 | v11;
  swift_unknownObjectRelease();
  sub_100004984((v0 + 32));
  (*(v1 + 8))(v0 + v3, v17);
  (*(v5 + 8))(v0 + v7, v16);
  (*(v10 + 8))(v0 + v12, v9);

  return _swift_deallocObject(v0, v12 + v15, v13 | 7);
}

uint64_t sub_100043470()
{
  v1 = (type metadata accessor for FenceTriggerRecord(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = v3 + *(*v1 + 64);
  v5 = sub_10004B564(&qword_1005B1C20, &qword_1004D5AF0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v4 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = v2 | v7;

  v11 = v0 + v3;
  v12 = type metadata accessor for Fence.ID();
  (*(*(v12 - 8) + 8))(v0 + v3, v12);
  v13 = v1[7];
  v14 = type metadata accessor for Fence.TriggerID();
  (*(*(v14 - 8) + 8))(v11 + v13, v14);
  v15 = v1[8];
  v16 = type metadata accessor for Fence.TriggerPosition();
  (*(*(v16 - 8) + 8))(v11 + v15, v16);
  (*(v6 + 8))(v0 + v8, v5);

  return _swift_deallocObject(v0, v8 + v9, v10 | 7);
}

uint64_t sub_100043718()
{
  v1 = sub_10004B564(&qword_1005B1C20, &qword_1004D5AF0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);

  if (*(v0 + 160))
  {
  }

  if (*(v0 + 464))
  {
  }

  v5 = (v3 + 504) & ~v3;
  v6 = (v4 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v6 + 8, v3 | 7);
}

uint64_t sub_1000438B4()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_10004B564(&qword_1005B1C20, &qword_1004D5AF0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 16) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;

  (*(v2 + 8))(v0 + v4, v1);
  sub_1000049D0(*(v0 + v5), *(v0 + v5 + 8));
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_100043A28()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_100043AB0()
{
  v1 = type metadata accessor for SecureLocationsCachedSharedKey(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 1) + 64);

  v5 = v0 + v3;
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);

  v7 = v1[6];
  v8 = type metadata accessor for PrivateKey();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v3 + v7, 1, v8))
  {
    (*(v9 + 8))(v5 + v7, v8);
  }

  v10 = v1[7];
  v11 = type metadata accessor for HashedAdvertisement();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v5 + v10, 1, v11))
  {
    (*(v12 + 8))(v5 + v10, v11);
  }

  v13 = v1[8];
  v14 = type metadata accessor for Destination();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(v5 + v13, 1, v14))
  {
    (*(v15 + 8))(v5 + v13, v14);
  }

  v16 = v1[11];
  v17 = type metadata accessor for Date();
  v18 = *(v17 - 8);
  if (!(*(v18 + 48))(v5 + v16, 1, v17))
  {
    (*(v18 + 8))(v5 + v16, v17);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100043DE0()
{
  v1 = (type metadata accessor for OwnerSharedSecretsRecord(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = sub_10004B564(&qword_1005B1C20, &qword_1004D5AF0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v4 + v7 + 8) & ~v7;
  v9 = v2 | v7;
  v10 = (*(v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = v0 + v3;
  v12 = type metadata accessor for UUID();
  (*(*(v12 - 8) + 8))(v0 + v3, v12);
  v13 = v1[8];
  v14 = type metadata accessor for SharedSecretKey();
  (*(*(v14 - 8) + 8))(v11 + v13, v14);
  v15 = v1[9];
  v16 = type metadata accessor for Date();
  (*(*(v16 - 8) + 8))(v11 + v15, v16);

  (*(v6 + 8))(v0 + v8, v5);

  return _swift_deallocObject(v0, v10 + 8, v9 | 7);
}

uint64_t sub_100043FEC()
{
  v1 = sub_10004B564(&qword_1005B1C90, &qword_1004D5E70);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_1000440B0()
{
  v1 = type metadata accessor for Handle();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v17 = (v3 + 24) & ~v3;
  v18 = v1;
  v4 = v17 + *(v2 + 64);
  v5 = sub_10004B564(&qword_1005B1CA0, &qword_1004D5ED0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v4 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = type metadata accessor for HandleType();
  v11 = *(v10 - 8);
  v12 = *(v11 + 80);
  v13 = (v8 + v9 + v12) & ~v12;
  v14 = v3 | v12 | v7;
  v15 = (*(v11 + 64) + v13 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v17, v18);
  (*(v6 + 8))(v0 + v8, v5);
  (*(v11 + 8))(v0 + v13, v10);

  return _swift_deallocObject(v0, v15 + 8, v14 | 7);
}

uint64_t sub_10004429C()
{
  v1 = (type metadata accessor for SecureLocation(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[15];
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  v7 = v1[16];
  v8 = type metadata accessor for MotionActivityState();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100044428()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100044640()
{
  v1 = type metadata accessor for ClientID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100044720()
{
  Priority = type metadata accessor for LocatePriority();
  v2 = *(Priority - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, Priority);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100044808()
{
  Priority = type metadata accessor for LocatePriority();
  v2 = *(Priority - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, Priority);

  return _swift_deallocObject(v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_1000448C4()
{
  Priority = type metadata accessor for LocatePriority();
  v2 = *(Priority - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, Priority);

  return _swift_deallocObject(v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_100044980()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000449B8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100044A08()
{
  v1 = sub_10004B564(&qword_1005B2490, &unk_1004D6A28);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100044A9C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100044B84()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100044C7C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100044CE0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100044DEC()
{
  v1 = type metadata accessor for LocationRequest();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_100044EFC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100044F44()
{
  v1 = type metadata accessor for ClientID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100045024()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004505C()
{
  v1 = type metadata accessor for LocationRequest();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100045134()
{
  v1 = type metadata accessor for LocationRequest();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = type metadata accessor for ClientID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v11 + 8, v10 | 7);
}

uint64_t sub_1000452AC()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100045304()
{

  sub_1000049D0(*(v0 + 40), *(v0 + 48));
  sub_1000049D0(*(v0 + 56), *(v0 + 64));

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_1000453F4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100045434()
{
  MyInterface = type metadata accessor for MicroFindMyInterface();
  v2 = *(MyInterface - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, MyInterface);

  return _swift_deallocObject(v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_1000454D8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_100045590(void *result, uint64_t a2, int a3, uint64_t a4)
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
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10004563C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100045674()
{
  swift_unknownObjectRelease();

  sub_1000049D0(*(v0 + 40), *(v0 + 48));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000456BC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000456F4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100045734()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004576C()
{
  v1 = type metadata accessor for Handle();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;

  v7 = *(v2 + 8);
  v7(v0 + v4, v1);
  v7(v0 + v6, v1);

  return _swift_deallocObject(v0, v6 + v5, v3 | 7);
}

uint64_t sub_100045864()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004589C()
{

  sub_1000049D0(*(v0 + 32), *(v0 + 40));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000458E4()
{
  v1 = type metadata accessor for Handle();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);

  sub_1000049D0(*(v0 + 32), *(v0 + 40));
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000459B8()
{
  v1 = type metadata accessor for Handle();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100045A88()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100045ACC(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Handle();
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
      v13 = sub_10004B564(&qword_1005B3360, &unk_1004C6AA0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_100045BFC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for Handle();
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
      v13 = sub_10004B564(&qword_1005B3360, &unk_1004C6AA0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_100045D2C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100045D64()
{

  sub_1000049D0(*(v0 + 48), *(v0 + 56));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100045E24()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100045E78()
{
  v1 = type metadata accessor for Friend();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100045F60()
{
  v1 = type metadata accessor for Friend();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10004602C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100046064()
{
  v1 = *(sub_10004B564(&qword_1005AF228, &unk_1004D0440) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v16 = *(v1 + 64);
  v17 = type metadata accessor for UUID();
  v4 = *(v17 - 8);
  v5 = *(v4 + 80);
  v15 = *(v4 + 64);
  v6 = type metadata accessor for Friend();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v14 = *(v7 + 64);
  swift_unknownObjectRelease();

  v9 = type metadata accessor for CloudKitChangeSet();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v3, 1, v9))
  {
    (*(v10 + 8))(v0 + v3, v9);
  }

  v11 = (v3 + v16 + v5) & ~v5;
  v12 = (v11 + v15 + v8) & ~v8;
  (*(v4 + 8))(v0 + v11, v17);
  (*(v7 + 8))(v0 + v12, v6);

  return _swift_deallocObject(v0, ((((v14 + v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | v5 | v8 | 7);
}

uint64_t sub_1000462E4()
{
  v1 = type metadata accessor for Device();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_10004638C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1000463DC()
{
  v17 = sub_10004B564(&qword_1005B3990, &qword_1004D8940);
  v1 = *(v17 - 8);
  v2 = *(v1 + 80);
  v15 = (v2 + 16) & ~v2;
  v3 = *(v1 + 64);
  v16 = type metadata accessor for Handle();
  v4 = *(v16 - 8);
  v5 = *(v4 + 80);
  v6 = (v15 + v3 + v5) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = (v7 + v10 + 8) & ~v10;
  v12 = v2 | v5 | v10;
  v13 = (*(v9 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v15, v17);
  (*(v4 + 8))(v0 + v6, v16);

  (*(v9 + 8))(v0 + v11, v8);

  return _swift_deallocObject(v0, v13 + 8, v12 | 7);
}

uint64_t sub_1000465DC()
{
  v1 = type metadata accessor for Handle();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = sub_10004B564(&qword_1005B3990, &qword_1004D8940);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v11 + 8, v10 | 7);
}

uint64_t sub_10004673C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100046778()
{
  v1 = type metadata accessor for Handle();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = *(sub_10004B564(&qword_1005B0F30, &qword_1004D3308) - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + v7) & ~v7;
  v9 = *(v6 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v10 = (v0 + v8);
  v11 = type metadata accessor for DiscoveryToken(0);
  if (!(*(*(v11 - 8) + 48))(v0 + v8, 1, v11))
  {

    v12 = v10 + *(v11 + 20);
    v13 = type metadata accessor for Date();
    (*(*(v13 - 8) + 8))(v12, v13);
    v14 = *(type metadata accessor for DiscoveryToken.Bucket(0) + 24);
    v15 = type metadata accessor for DateInterval();
    (*(*(v15 - 8) + 8))(&v12[v14], v15);
  }

  return _swift_deallocObject(v0, ((v9 + v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | v7 | 7);
}

uint64_t sub_10004698C()
{
  v1 = type metadata accessor for Friend();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100046A5C()
{
  v1 = type metadata accessor for Friend();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100046B10()
{
  v1 = (type metadata accessor for FindingTokenEnvelopeV1(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  sub_1000049D0(*(v0 + v3 + v1[8]), *(v0 + v3 + v1[8] + 8));

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100046C30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for DateInterval();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 24);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_100046D20(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for DateInterval();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 24);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_100046E1C(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for DiscoveryToken.Bucket(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_100046EC8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for DiscoveryToken.Bucket(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100046F6C()
{
  v1 = sub_10004B564(&qword_1005B3B60, &qword_1004D8B88);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10004700C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100047048()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100047098()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000470E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for LocalUserNotificationCategory();
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
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 32) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1000471F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for LocalUserNotificationCategory();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for UUID();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 32) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1000472FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for LocalUserNotificationCategory();
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
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 32) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_10004740C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for LocalUserNotificationCategory();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for UUID();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 32) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_100047518(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for LocalUserNotificationCategory();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = type metadata accessor for UUID();
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[7]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_100047620(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for LocalUserNotificationCategory();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    result = type metadata accessor for UUID();
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[7]) = (a2 - 1);
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[6];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

uint64_t sub_100047724(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for LocalUserNotificationCategory();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = type metadata accessor for UUID();
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v13 = *(a1 + a3[7] + 8);
    if (v13 >= 0xFFFFFFFF)
    {
      LODWORD(v13) = -1;
    }

    return (v13 + 1);
  }

  else
  {
    v14 = type metadata accessor for Friend();
    v15 = *(*(v14 - 8) + 48);
    v16 = a1 + a3[8];

    return v15(v16, a2, v14);
  }
}

uint64_t sub_100047898(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for LocalUserNotificationCategory();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_5:
    v13 = *(v10 + 56);

    return v13(a1 + v11, a2, a2, v9);
  }

  result = type metadata accessor for UUID();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = *(result - 8);
    v11 = a4[6];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[7] + 8) = (a2 - 1);
  }

  else
  {
    v14 = type metadata accessor for Friend();
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + a4[8];

    return v15(v16, a2, a2, v14);
  }

  return result;
}

uint64_t sub_100047A2C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100047A70()
{
  v21 = type metadata accessor for MessageContext();
  v1 = *(v21 - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  v20 = type metadata accessor for UUID();
  v4 = *(v20 - 8);
  v5 = *(v4 + 80);
  v18 = (((v2 + 24) & ~v2) + v3 + v5) & ~v5;
  v6 = (((*(v4 + 64) + v18 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v19 = type metadata accessor for PrivateKey();
  v7 = *(v19 - 8);
  v8 = *(v7 + 80);
  v9 = (v6 + v8 + 8) & ~v8;
  v10 = *(v7 + 64);
  v17 = type metadata accessor for HashedAdvertisement();
  v11 = *(v17 - 8);
  v12 = *(v11 + 80);
  v13 = (v9 + v10 + v12) & ~v12;
  v16 = *(v11 + 64);
  v14 = v2 | v5 | v8 | v12;

  (*(v1 + 8))(v0 + ((v2 + 24) & ~v2), v21);
  (*(v4 + 8))(v0 + v18, v20);

  (*(v7 + 8))(v0 + v9, v19);
  (*(v11 + 8))(v0 + v13, v17);

  return _swift_deallocObject(v0, v13 + v16, v14 | 7);
}

uint64_t sub_100047D00(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[5] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = type metadata accessor for PrivateKey();
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[7];
      goto LABEL_3;
    }

    v15 = type metadata accessor for HashedAdvertisement();
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[8];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_100047E78(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5] + 8) = (a2 - 1);
    return result;
  }

  v13 = type metadata accessor for PrivateKey();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[7];
    goto LABEL_3;
  }

  v15 = type metadata accessor for HashedAdvertisement();
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[8];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_100047FF8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for Account();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for Destination();
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

  v14 = sub_10004B564(&qword_1005AB918, &unk_1004C5800);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  if (a2 == 12)
  {
    v16 = *(a1 + a3[7] + 8) >> 60;
    if (((4 * v16) & 0xC) != 0)
    {
      return 16 - ((4 * v16) & 0xC | (v16 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v17 = type metadata accessor for MessageContext();
    v18 = *(*(v17 - 8) + 48);
    v19 = a1 + a3[8];

    return v18(v19, a2, v17);
  }
}

uint64_t sub_1000481D0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for Account();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = type metadata accessor for Destination();
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

  result = sub_10004B564(&qword_1005AB918, &unk_1004C5800);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  if (a3 == 12)
  {
    v17 = (a1 + a4[7]);
    *v17 = 0;
    v17[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v18 = type metadata accessor for MessageContext();
    v19 = *(*(v18 - 8) + 56);
    v20 = a1 + a4[8];

    return v19(v20, a2, a2, v18);
  }

  return result;
}

uint64_t sub_1000483A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Account();
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
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = type metadata accessor for Destination();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_1000484E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for Account();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = type metadata accessor for Destination();
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_100048630(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MessagingCapability();
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

uint64_t sub_1000486EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for MessagingCapability();
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

uint64_t sub_1000487A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10004B564(&qword_1005AB918, &unk_1004C5800);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 11)
  {
    v10 = *(a1 + *(a3 + 20) + 8) >> 60;
    v11 = ((4 * v10) & 0xC) == 0;
    v12 = ((4 * v10) & 0xC | (v10 >> 2)) ^ 0xF;
    if (v11)
    {
      return 0;
    }

    else
    {
      return v12;
    }
  }

  else
  {
    v13 = type metadata accessor for MessagingOptions();
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + *(a3 + 24);

    return v14(v15, a2, v13);
  }
}

uint64_t sub_1000488DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10004B564(&qword_1005AB918, &unk_1004C5800);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 11)
  {
    v11 = (a1 + *(a4 + 20));
    *v11 = 0;
    v11[1] = ((~a2 >> 2) & 3 | (4 * ~a2)) << 60;
  }

  else
  {
    v12 = type metadata accessor for MessagingOptions();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 24);

    return v13(v14, a2, a2, v12);
  }

  return result;
}

uint64_t sub_100048AC8()
{
  v1 = sub_10004B564(&qword_1005B1C20, &qword_1004D5AF0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100048BA4()
{
  v1 = type metadata accessor for MessageContext();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v11 + 8, v10 | 7);
}

uint64_t sub_100048D00()
{
  v1 = type metadata accessor for MessageContext();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_100048E78()
{
  v1 = type metadata accessor for ContinuousClock.Instant();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_10004B564(&qword_1005B4F58, &qword_1004DC018);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;

  (*(v2 + 8))(v0 + v4, v1);

  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_100048FEC()
{

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_100049038()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10004908C()
{
  v1 = sub_10004B564(&qword_1005B1C20, &qword_1004D5AF0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10004919C()
{
  v1 = type metadata accessor for PreferenceStreamChange();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100049270()
{
  v1 = type metadata accessor for PreferenceStreamChange();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10004933C()
{
  v1 = *(sub_10004B564(&qword_1005AA718, &qword_1004C4370) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();

  v5 = type metadata accessor for Device();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10004946C()
{
  v1 = *(sub_10004B564(&qword_1005AA718, &qword_1004C4370) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);

  v5 = type metadata accessor for Device();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100049598()
{
  v1 = type metadata accessor for PreferenceStreamChange();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100049670()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = type metadata accessor for PreferenceStreamChange();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v11 + 8, v10 | 7);
}

uint64_t sub_1000497D8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100049810()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100049874()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000498BC()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100049934(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B564(&qword_1005AFFD8, &qword_1004D14D8);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 4)
  {
    return v5 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000499AC(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 3);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_10004B564(&qword_1005AFFD8, &qword_1004D14D8);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_100049A3C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100049A74()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100049ABC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100049AF4()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100049BB8()
{
  v1 = sub_10004B564(&qword_1005AC688, &unk_1004C6F30);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_100049D1C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100049DFC()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100049EC0()
{
  v1 = sub_10004B564(&qword_1005AC668, &qword_1004C6F10);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_10004A024()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10004A0F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
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
    v11 = type metadata accessor for Logger();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_10004A218(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for URL();
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
    v11 = type metadata accessor for Logger();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_10004A33C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10004A37C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10004A440()
{
  v1 = sub_10004B564(&qword_1005AC658, &unk_1004C6F00);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_10004A5A4()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10004A69C()
{
  v1 = (type metadata accessor for SecureLocationsConfig(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[21];
  v6 = type metadata accessor for URL();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10004A7A0()
{
  v1 = (type metadata accessor for SecureLocationsConfig(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 17) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;

  v6 = v1[21];
  v7 = type metadata accessor for URL();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);

  return _swift_deallocObject(v0, v4 + 8, v2 | 7);
}

uint64_t sub_10004A8A8()
{
  sub_1000049D0(*(v0 + 24), *(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10004A914()
{
  v1 = type metadata accessor for SecureLocationsCachedSharedKey(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);

  v5 = v0 + v3;
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);

  v7 = v1[6];
  v8 = type metadata accessor for PrivateKey();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v3 + v7, 1, v8))
  {
    (*(v9 + 8))(v5 + v7, v8);
  }

  v10 = v1[7];
  v11 = type metadata accessor for HashedAdvertisement();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v5 + v10, 1, v11))
  {
    (*(v12 + 8))(v5 + v10, v11);
  }

  v13 = v1[8];
  v14 = type metadata accessor for Destination();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(v5 + v13, 1, v14))
  {
    (*(v15 + 8))(v5 + v13, v14);
  }

  v16 = v1[11];
  v17 = type metadata accessor for Date();
  v18 = *(v17 - 8);
  if (!(*(v18 + 48))(v5 + v16, 1, v17))
  {
    (*(v18 + 8))(v5 + v16, v17);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10004AC2C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004AC64()
{
  v1 = (type metadata accessor for SecureLocationsCachedSharingKey(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);

  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = v1[7];
  v7 = type metadata accessor for DiversifiedRootKeys();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10004AD84()
{
  v1 = (type metadata accessor for SecureLocationsCachedPayload(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);

  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = v0 + v3 + v1[7];

  v7 = type metadata accessor for SecureLocation(0);
  v8 = *(v7 + 52);
  v9 = type metadata accessor for Date();
  (*(*(v9 - 8) + 8))(v6 + v8, v9);
  v10 = *(v7 + 56);
  v11 = type metadata accessor for MotionActivityState();
  (*(*(v11 - 8) + 8))(v6 + v10, v11);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10004AFD4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10004B004(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

_OWORD *sub_10004B064(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10004B08C@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_10004B0C8(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10004B0D8(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_100010780(*a1);
  v5 = v4;
  if (v3 == sub_100010780(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_10004B160()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_100010780(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10004B1C4(uint64_t a1)
{
  sub_100010780(*v1);
  String.hash(into:)();
}

Swift::Int sub_10004B218()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_100010780(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10004B278@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10004C954(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_10004B2A8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_100010780(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t variable initialization expression of CurrentLocationMonitor.queue()
{
  v0 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v0);
  v1 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004B518();
  (*(v3 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v2);
  static DispatchQoS.unspecified.getter();
  v7[1] = _swiftEmptyArrayStorage;
  sub_10004BB2C(&qword_1005A8670, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10004B564(&unk_1005AB400, &unk_1004C0BF0);
  sub_10004B5AC();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  return OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
}

unint64_t sub_10004B518()
{
  result = qword_1005A96F0;
  if (!qword_1005A96F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1005A96F0);
  }

  return result;
}

uint64_t sub_10004B564(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_10004B5AC()
{
  result = qword_1005A8680;
  if (!qword_1005A8680)
  {
    sub_10004B610(&unk_1005AB400, &unk_1004C0BF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005A8680);
  }

  return result;
}

uint64_t sub_10004B610(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t variable initialization expression of DarwinNotificationManager.serialQueue()
{
  v0 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v0);
  v1 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004B518();
  (*(v3 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v2);
  static DispatchQoS.unspecified.getter();
  v7[1] = _swiftEmptyArrayStorage;
  sub_10004BB2C(&qword_1005A8670, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10004B564(&unk_1005AB400, &unk_1004C0BF0);
  sub_10004B5AC();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  return OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
}

uint64_t variable initialization expression of DarwinNotificationManager.lock()
{
  sub_10004B564(&qword_1005A8688, &qword_1004C5FA0);
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t sub_10004B920(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10004B940(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

uint64_t sub_10004B990(uint64_t a1)
{
  v2 = sub_10004BB2C(&qword_1005A8888, type metadata accessor for SecureLocationsError, &unk_1004C1414);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_10004B9FC(uint64_t a1)
{
  v2 = sub_10004BB2C(&qword_1005A8888, type metadata accessor for SecureLocationsError, &unk_1004C1414);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_10004BA68(uint64_t a1)
{
  v2 = sub_10004BB2C(&qword_1005A88C0, type metadata accessor for SecureLocationsError, &unk_1004C15BC);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

_DWORD *sub_10004BAD4@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_10004BB2C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10004BB74(uint64_t a1)
{
  v2 = sub_10004BB2C(&qword_1005A88C8, type metadata accessor for CKError, &unk_1004C1200);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_10004BBE0(uint64_t a1)
{
  v2 = sub_10004BB2C(&qword_1005A88C8, type metadata accessor for CKError, &unk_1004C1200);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_10004BC4C(uint64_t a1)
{
  v2 = sub_10004BB2C(&qword_1005A8858, type metadata accessor for CKError, &unk_1004C16CC);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_10004BCB8(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_10004BD30(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_10004BDB0@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_10004BDF4()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String.hashValue.getter();

  return v0;
}

uint64_t sub_10004BE30(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_10004BE84()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v0 = Hasher._finalize()();

  return v0;
}

Swift::Int sub_10004BEF8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10004BF40()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_10004BF94(uint64_t a1)
{
  v2 = sub_10004BB2C(&qword_1005A8858, type metadata accessor for CKError, &unk_1004C16CC);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_10004C000(uint64_t a1)
{
  v2 = sub_10004BB2C(&qword_1005A8858, type metadata accessor for CKError, &unk_1004C16CC);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_10004C06C(void *a1, uint64_t a2)
{
  v4 = sub_10004BB2C(&qword_1005A8858, type metadata accessor for CKError, &unk_1004C16CC);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_10004C0FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004BB2C(&qword_1005A8858, type metadata accessor for CKError, &unk_1004C16CC);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

uint64_t sub_10004C188(uint64_t a1)
{
  v2 = sub_10004BB2C(&qword_1005A88C0, type metadata accessor for SecureLocationsError, &unk_1004C15BC);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_10004C1F4(uint64_t a1)
{
  v2 = sub_10004BB2C(&qword_1005A88C0, type metadata accessor for SecureLocationsError, &unk_1004C15BC);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_10004C260(void *a1, uint64_t a2)
{
  v4 = sub_10004BB2C(&qword_1005A88C0, type metadata accessor for SecureLocationsError, &unk_1004C15BC);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_10004C2F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004BB2C(&qword_1005A88C0, type metadata accessor for SecureLocationsError, &unk_1004C15BC);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_10004C36C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10004C3CC(void *a1, uint64_t *a2)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

uint64_t sub_10004C454(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10004BB2C(&qword_1005A8858, type metadata accessor for CKError, &unk_1004C16CC);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_10004C4D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10004BB2C(&qword_1005A88C0, type metadata accessor for SecureLocationsError, &unk_1004C15BC);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_10004C55C@<X0>(void *a2@<X8>)
{
  v3 = String._bridgeToObjectiveC()();

  *a2 = v3;
  return result;
}

uint64_t sub_10004C5A4@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10004C5D0(uint64_t a1)
{
  v2 = sub_10004BB2C(&qword_1005A88F0, type metadata accessor for URLResourceKey, &unk_1004C152C);
  v3 = sub_10004BB2C(&qword_1005A88F8, type metadata accessor for URLResourceKey, &unk_1004C14CC);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10004C68C(unsigned __int8 a1, uint64_t a2)
{
  v3._countAndFlagsBits = sub_100010CF4(a1);
  v37 = 0xD000000000000030;
  v38[0] = 0x80000001004DE5F0;
  String.append(_:)(v3);

  v4 = sub_100010EA8(_swiftEmptyArrayStorage);
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  while (v7)
  {
LABEL_11:
    v13 = __clz(__rbit64(v7)) | (v9 << 6);
    v14 = *(*(a2 + 48) + v13);
    sub_100011004(*(a2 + 56) + 40 * v13, v38);
    LOBYTE(v37) = v14;
    sub_100011068(&v37, v35);
    v15 = sub_100010780(v35[0]);
    v17 = v16;
    sub_100011068(&v37, v33);
    sub_100010BD4(&v34, v32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = sub_1000110D8(v15, v17);
    v21 = v4[2];
    v22 = (v20 & 1) == 0;
    v23 = __OFADD__(v21, v22);
    v24 = v21 + v22;
    if (v23)
    {
      goto LABEL_23;
    }

    v25 = v20;
    if (v4[3] < v24)
    {
      sub_100011198(v24, isUniquelyReferenced_nonNull_native);
      v19 = sub_1000110D8(v15, v17);
      if ((v25 & 1) != (v26 & 1))
      {
        goto LABEL_25;
      }

LABEL_16:
      if (v25)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_16;
    }

    v30 = v19;
    sub_100202380();
    v19 = v30;
    if (v25)
    {
LABEL_4:
      v10 = v19;

      v11 = (v4[7] + 40 * v10);
      sub_100004984(v11);
      sub_100010BD4(v32, v11);
      sub_100011514(&v37);
      goto LABEL_5;
    }

LABEL_17:
    v4[(v19 >> 6) + 8] |= 1 << v19;
    v27 = (v4[6] + 16 * v19);
    *v27 = v15;
    v27[1] = v17;
    sub_100010BD4(v32, v4[7] + 40 * v19);
    sub_100011514(&v37);
    v28 = v4[2];
    v23 = __OFADD__(v28, 1);
    v29 = v28 + 1;
    if (v23)
    {
      goto LABEL_24;
    }

    v4[2] = v29;
LABEL_5:
    v7 &= v7 - 1;
    sub_100004984(v36);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v8)
    {

      return 0xD000000000000030;
    }

    v7 = *(a2 + 64 + 8 * v12);
    ++v9;
    if (v7)
    {
      v9 = v12;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t sub_10004C954(uint64_t a1, uint64_t a2)
{
  v2 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v2 >= 0x26)
  {
    return 38;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_10004C9A8(uint64_t a1)
{
  if (!a1)
  {
    return 1701736270;
  }

  swift_errorRetain();
  v1 = _convertErrorToNSError(_:)();
  v2 = [v1 domain];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v3 && v6 == v5)
  {
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v8 & 1) == 0)
    {
      _StringGuts.grow(_:)(26);

      strcpy(v19, "Error Domain: ");
      HIBYTE(v19[1]) = -18;
      v9 = [v1 domain];
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      v13._countAndFlagsBits = v10;
      v13._object = v12;
      String.append(_:)(v13);

      v14._countAndFlagsBits = 0x203A65646F43202ELL;
      v14._object = 0xE800000000000000;
      String.append(_:)(v14);
      [v1 code];
      v15._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v15);

      return v19[0];
    }
  }

  [v1 code];
  v17 = stringForCKErrorCode();
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v18;
}

uint64_t sub_10004CBC0(uint64_t a1, char a2, uint64_t a3, char a4)
{
  sub_10004B564(&qword_1005A8788, &qword_1004C0EA8);
  inited = swift_initStackObject();
  *(inited + 32) = 14;
  *(inited + 16) = xmmword_1004C0BB0;
  *(inited + 64) = &type metadata for Int;
  *(inited + 72) = &off_10058C3A8;
  *(inited + 40) = a1;
  *(inited + 80) = 13;
  *(inited + 112) = &type metadata for Bool;
  *(inited + 120) = &off_10058C3C8;
  *(inited + 88) = a2;
  *(inited + 128) = 15;
  sub_10004B564(&qword_1005A8800, &qword_1004C0EC0);
  Result.error.getter();
  v8 = sub_10004C9A8(v14);
  v10 = v9;

  *(inited + 160) = &type metadata for String;
  *(inited + 168) = &off_10058C398;
  *(inited + 136) = v8;
  *(inited + 144) = v10;
  *(inited + 176) = 10;
  *(inited + 208) = &type metadata for Bool;
  *(inited + 216) = &off_10058C3C8;
  *(inited + 184) = (a4 & 1) == 0;
  v11 = sub_1000105C0(inited);
  swift_setDeallocating();
  sub_10004B564(&qword_1005A8790, &qword_1004C0EB0);
  swift_arrayDestroy();
  v12 = sub_10004C68C(0, v11);

  return v12;
}

uint64_t sub_10004CD88()
{
  v0 = type metadata accessor for Fence.Variant();
  v19 = *(v0 - 8);
  v20 = v0;
  __chkstk_darwin(v0);
  v2 = &v18 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Fence.Participant();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v18 - v8;
  sub_10004B564(&qword_1005A8788, &qword_1004C0EA8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004C0BC0;
  *(inited + 32) = 2;
  v18 = inited + 32;
  Fence.createdBy.getter();
  v11 = Fence.Participant.valueForAnalytics.getter();
  v12 = *(v4 + 8);
  v12(v9, v3);
  *(inited + 64) = &type metadata for Int;
  *(inited + 72) = &off_10058C3A8;
  *(inited + 40) = v11;
  *(inited + 80) = 3;
  Fence.finder.getter();
  v13 = Fence.Participant.valueForAnalytics.getter();
  v12(v7, v3);
  *(inited + 112) = &type metadata for Int;
  *(inited + 120) = &off_10058C3A8;
  *(inited + 88) = v13;
  *(inited + 128) = 1;
  Fence.variant.getter();
  v14 = Fence.Variant.valueForAnalytics.getter();
  (*(v19 + 8))(v2, v20);
  *(inited + 160) = &type metadata for Int;
  *(inited + 168) = &off_10058C3A8;
  *(inited + 136) = v14;
  *(inited + 176) = 6;
  *(inited + 208) = &type metadata for String;
  *(inited + 216) = &off_10058C398;
  *(inited + 184) = 0xD000000000000014;
  *(inited + 192) = 0x80000001004DE630;
  *(inited + 224) = 17;
  *(inited + 256) = &type metadata for Bool;
  *(inited + 264) = &off_10058C3C8;
  *(inited + 232) = 0;
  v15 = sub_1000105C0(inited);
  swift_setDeallocating();
  sub_10004B564(&qword_1005A8790, &qword_1004C0EB0);
  swift_arrayDestroy();
  v16 = sub_10004C68C(4u, v15);

  return v16;
}

uint64_t sub_10004D0C4(uint64_t a1, uint64_t a2, char a3)
{
  v5 = type metadata accessor for Fence.Variant();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004B564(&qword_1005A8788, &qword_1004C0EA8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004C0BD0;
  *(inited + 32) = 19;
  v17[1] = a2;
  v18 = a3 & 1;
  sub_10004B564(&qword_1005A8800, &qword_1004C0EC0);
  Result.error.getter();
  v10 = sub_10004C9A8(v17[0]);
  v12 = v11;

  *(inited + 64) = &type metadata for String;
  *(inited + 72) = &off_10058C398;
  *(inited + 40) = v10;
  *(inited + 48) = v12;
  *(inited + 80) = 1;
  Fence.variant.getter();
  v13 = Fence.Variant.valueForAnalytics.getter();
  (*(v6 + 8))(v8, v5);
  *(inited + 112) = &type metadata for Int;
  *(inited + 120) = &off_10058C3A8;
  *(inited + 88) = v13;
  *(inited + 128) = 18;
  *(inited + 160) = &type metadata for Bool;
  *(inited + 168) = &off_10058C3C8;
  *(inited + 136) = (a3 & 1) == 0;
  v14 = sub_1000105C0(inited);
  swift_setDeallocating();
  sub_10004B564(&qword_1005A8790, &qword_1004C0EB0);
  swift_arrayDestroy();
  v15 = sub_10004C68C(5u, v14);

  return v15;
}

uint64_t sub_10004D318(uint64_t a1, uint64_t a2, char a3)
{
  sub_10004B564(&qword_1005A8788, &qword_1004C0EA8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004C0BD0;
  *(inited + 32) = 20;
  v5 = Fence.TriggerPosition.valueForAnalytics.getter();
  *(inited + 64) = &type metadata for Int;
  *(inited + 72) = &off_10058C3A8;
  *(inited + 40) = v5;
  *(inited + 80) = 4;
  sub_10004B564(&qword_1005A8800, &qword_1004C0EC0);
  Result.error.getter();
  v6 = sub_10004C9A8(v12);
  v8 = v7;

  *(inited + 112) = &type metadata for String;
  *(inited + 120) = &off_10058C398;
  *(inited + 88) = v6;
  *(inited + 96) = v8;
  *(inited + 128) = 5;
  *(inited + 160) = &type metadata for Bool;
  *(inited + 168) = &off_10058C3C8;
  *(inited + 136) = (a3 & 1) == 0;
  v9 = sub_1000105C0(inited);
  swift_setDeallocating();
  sub_10004B564(&qword_1005A8790, &qword_1004C0EB0);
  swift_arrayDestroy();
  v10 = sub_10004C68C(6u, v9);

  return v10;
}

uint64_t sub_10004D4D8()
{
  v20 = type metadata accessor for Fence.Participant();
  v0 = *(v20 - 8);
  v1 = __chkstk_darwin(v20);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v5 = &v20 - v4;
  v6 = type metadata accessor for Fence.Variant();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004B564(&qword_1005A8788, &qword_1004C0EA8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004C0BB0;
  *(inited + 32) = 1;
  Fence.variant.getter();
  v11 = Fence.Variant.valueForAnalytics.getter();
  (*(v7 + 8))(v9, v6);
  *(inited + 64) = &type metadata for Int;
  *(inited + 72) = &off_10058C3A8;
  *(inited + 40) = v11;
  *(inited + 80) = 2;
  Fence.createdBy.getter();
  v12 = Fence.Participant.valueForAnalytics.getter();
  v13 = *(v0 + 8);
  v14 = v5;
  v15 = v20;
  v13(v14, v20);
  *(inited + 112) = &type metadata for Int;
  *(inited + 120) = &off_10058C3A8;
  *(inited + 88) = v12;
  *(inited + 128) = 3;
  Fence.finder.getter();
  v16 = Fence.Participant.valueForAnalytics.getter();
  v13(v3, v15);
  *(inited + 160) = &type metadata for Int;
  *(inited + 168) = &off_10058C3A8;
  *(inited + 136) = v16;
  *(inited + 176) = 16;
  *(inited + 208) = &type metadata for Bool;
  *(inited + 216) = &off_10058C3C8;
  *(inited + 184) = 1;
  v17 = sub_1000105C0(inited);
  swift_setDeallocating();
  sub_10004B564(&qword_1005A8790, &qword_1004C0EB0);
  swift_arrayDestroy();
  v18 = sub_10004C68C(9u, v17);

  return v18;
}

uint64_t sub_10004D7D0(uint64_t a1, char a2, char a3, unsigned __int8 a4)
{
  sub_10004B564(&qword_1005A8788, &qword_1004C0EA8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004C0BD0;
  *(inited + 32) = 20;
  v8 = Fence.TriggerPosition.valueForAnalytics.getter();
  *(inited + 64) = &type metadata for Int;
  *(inited + 72) = &off_10058C3A8;
  *(inited + 40) = v8;
  *(inited + 80) = a2;
  *(inited + 112) = &type metadata for String;
  *(inited + 120) = &off_10058C398;
  strcpy((inited + 88), "NoFenceFound");
  *(inited + 101) = 0;
  *(inited + 102) = -5120;
  *(inited + 128) = a3;
  *(inited + 160) = &type metadata for Bool;
  *(inited + 168) = &off_10058C3C8;
  *(inited + 136) = 0;
  v9 = sub_1000105C0(inited);
  swift_setDeallocating();
  sub_10004B564(&qword_1005A8790, &qword_1004C0EB0);
  swift_arrayDestroy();
  v10 = sub_10004C68C(a4, v9);

  return v10;
}

uint64_t sub_10004D930(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, int a7)
{
  v44 = a6;
  v45 = a7;
  v42 = a5;
  v43 = a4;
  v40 = a2;
  v41 = a3;
  v7 = type metadata accessor for Fence.AcceptanceStatus();
  v38 = *(v7 - 8);
  v39 = v7;
  __chkstk_darwin(v7);
  v36 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Fence.Variant();
  v34 = *(v9 - 8);
  v35 = v9;
  __chkstk_darwin(v9);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Fence.Participant();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v34 - v17;
  sub_10004B564(&qword_1005A8788, &qword_1004C0EA8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004C0BE0;
  *(inited + 32) = 2;
  v37 = inited + 32;
  Fence.createdBy.getter();
  v20 = Fence.Participant.valueForAnalytics.getter();
  v21 = *(v13 + 8);
  v21(v18, v12);
  *(inited + 64) = &type metadata for Int;
  *(inited + 72) = &off_10058C3A8;
  *(inited + 40) = v20;
  *(inited + 80) = 3;
  Fence.finder.getter();
  v22 = Fence.Participant.valueForAnalytics.getter();
  v21(v16, v12);
  *(inited + 112) = &type metadata for Int;
  *(inited + 120) = &off_10058C3A8;
  *(inited + 88) = v22;
  *(inited + 128) = 1;
  Fence.variant.getter();
  v23 = Fence.Variant.valueForAnalytics.getter();
  (*(v34 + 8))(v11, v35);
  *(inited + 160) = &type metadata for Int;
  *(inited + 168) = &off_10058C3A8;
  *(inited + 136) = v23;
  *(inited + 176) = 21;
  v24 = v36;
  Fence.acceptanceStatus.getter();
  v25 = Fence.AcceptanceStatus.valueForAnalytics.getter();
  (*(v38 + 8))(v24, v39);
  *(inited + 208) = &type metadata for Int;
  *(inited + 216) = &off_10058C3A8;
  *(inited + 184) = v25;
  *(inited + 224) = 20;
  v26 = Fence.TriggerPosition.valueForAnalytics.getter();
  *(inited + 256) = &type metadata for Int;
  *(inited + 264) = &off_10058C3A8;
  *(inited + 232) = v26;
  v27 = v43;
  *(inited + 272) = v42;
  v47 = v41;
  v48 = v27 & 1;
  sub_10004B564(&qword_1005A8800, &qword_1004C0EC0);
  Result.error.getter();
  v28 = sub_10004C9A8(v46);
  v30 = v29;

  *(inited + 304) = &type metadata for String;
  *(inited + 312) = &off_10058C398;
  *(inited + 280) = v28;
  *(inited + 288) = v30;
  *(inited + 320) = v44;
  *(inited + 352) = &type metadata for Bool;
  *(inited + 360) = &off_10058C3C8;
  *(inited + 328) = (v27 & 1) == 0;
  v31 = sub_1000105C0(inited);
  swift_setDeallocating();
  sub_10004B564(&qword_1005A8790, &qword_1004C0EB0);
  swift_arrayDestroy();
  v32 = sub_10004C68C(v45, v31);

  return v32;
}

uint64_t sub_10004DD80(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6)
{
  v33 = a5;
  v34 = a6;
  v31 = a4;
  v32 = a3;
  v30 = a2;
  v6 = type metadata accessor for Fence.Variant();
  v27 = *(v6 - 8);
  v28 = v6;
  __chkstk_darwin(v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Fence.Participant();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v27 - v14;
  sub_10004B564(&qword_1005A8788, &qword_1004C0EA8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004C0BC0;
  *(inited + 32) = 2;
  v29 = inited + 32;
  Fence.createdBy.getter();
  v17 = Fence.Participant.valueForAnalytics.getter();
  v18 = *(v10 + 8);
  v18(v15, v9);
  *(inited + 64) = &type metadata for Int;
  *(inited + 72) = &off_10058C3A8;
  *(inited + 40) = v17;
  *(inited + 80) = 3;
  Fence.finder.getter();
  v19 = Fence.Participant.valueForAnalytics.getter();
  v18(v13, v9);
  *(inited + 112) = &type metadata for Int;
  *(inited + 120) = &off_10058C3A8;
  *(inited + 88) = v19;
  *(inited + 128) = 1;
  Fence.variant.getter();
  v20 = Fence.Variant.valueForAnalytics.getter();
  (*(v27 + 8))(v8, v28);
  *(inited + 160) = &type metadata for Int;
  *(inited + 168) = &off_10058C3A8;
  *(inited + 136) = v20;
  LOBYTE(v9) = v32;
  *(inited + 176) = v31;
  v36 = v30;
  v37 = v9 & 1;
  sub_10004B564(&qword_1005A8800, &qword_1004C0EC0);
  Result.error.getter();
  v21 = sub_10004C9A8(v35);
  v23 = v22;

  *(inited + 208) = &type metadata for String;
  *(inited + 216) = &off_10058C398;
  *(inited + 184) = v21;
  *(inited + 192) = v23;
  *(inited + 224) = v33;
  *(inited + 256) = &type metadata for Bool;
  *(inited + 264) = &off_10058C3C8;
  *(inited + 232) = (v9 & 1) == 0;
  v24 = sub_1000105C0(inited);
  swift_setDeallocating();
  sub_10004B564(&qword_1005A8790, &qword_1004C0EB0);
  swift_arrayDestroy();
  v25 = sub_10004C68C(v34, v24);

  return v25;
}

__n128 sub_10004E140(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_10004E154(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_10004E19C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FencesReliabilityMetric.Field(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xDB)
  {
    goto LABEL_17;
  }

  if (a2 + 37 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 37) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 37;
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

      return (*a1 | (v4 << 8)) - 37;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 37;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x26;
  v8 = v6 - 38;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FencesReliabilityMetric.Field(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 37 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 37) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xDB)
  {
    v4 = 0;
  }

  if (a2 > 0xDA)
  {
    v5 = ((a2 - 219) >> 8) + 1;
    *result = a2 + 37;
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
    *result = a2 + 37;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10004E358()
{
  result = qword_1005A8838;
  if (!qword_1005A8838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005A8838);
  }

  return result;
}

void sub_10004E690(uint64_t a1, unint64_t *a2, uint64_t a3)
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

unint64_t sub_10004E724()
{
  result = qword_1005A88B0;
  if (!qword_1005A88B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005A88B0);
  }

  return result;
}

uint64_t sub_10004E9AC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6567617373656DLL;
  }

  else
  {
    v3 = 0x7265646E65537369;
  }

  if (v2)
  {
    v4 = 0xED000064696C6156;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x6567617373656DLL;
  }

  else
  {
    v5 = 0x7265646E65537369;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xED000064696C6156;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_10004EA60()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10004EAF0(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_10004EB6C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10004EBF8@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_10058A4F8, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_10004EC58(uint64_t *a1@<X8>)
{
  v2 = 0x7265646E65537369;
  if (*v1)
  {
    v2 = 0x6567617373656DLL;
  }

  v3 = 0xED000064696C6156;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_10004ECA4(uint64_t a1)
{
  v2 = sub_100010EA8(_swiftEmptyArrayStorage);
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  while (v5)
  {
LABEL_11:
    v11 = __clz(__rbit64(v5)) | (v7 << 6);
    v12 = *(*(a1 + 48) + v11);
    sub_100011004(*(a1 + 56) + 40 * v11, &v35);
    v34[0] = v12;
    sub_10004EF78(v34, v32);
    if (v32[0])
    {
      v13 = 0x6567617373656DLL;
    }

    else
    {
      v13 = 0x7265646E65537369;
    }

    if (v32[0])
    {
      v14 = 0xE700000000000000;
    }

    else
    {
      v14 = 0xED000064696C6156;
    }

    sub_10004EF78(v34, v30);
    sub_100010BD4(&v31, v29);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = sub_1000110D8(v13, v14);
    v18 = v2[2];
    v19 = (v17 & 1) == 0;
    v20 = __OFADD__(v18, v19);
    v21 = v18 + v19;
    if (v20)
    {
      goto LABEL_29;
    }

    v22 = v17;
    if (v2[3] < v21)
    {
      sub_100011198(v21, isUniquelyReferenced_nonNull_native);
      v16 = sub_1000110D8(v13, v14);
      if ((v22 & 1) != (v23 & 1))
      {
        goto LABEL_31;
      }

LABEL_22:
      if (v22)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_22;
    }

    v27 = v16;
    sub_100202380();
    v16 = v27;
    if (v22)
    {
LABEL_4:
      v8 = v16;

      v9 = (v2[7] + 40 * v8);
      sub_100004984(v9);
      sub_100010BD4(v29, v9);
      sub_10004EFE8(v34);
      goto LABEL_5;
    }

LABEL_23:
    v2[(v16 >> 6) + 8] |= 1 << v16;
    v24 = (v2[6] + 16 * v16);
    *v24 = v13;
    v24[1] = v14;
    sub_100010BD4(v29, v2[7] + 40 * v16);
    sub_10004EFE8(v34);
    v25 = v2[2];
    v20 = __OFADD__(v25, 1);
    v26 = v25 + 1;
    if (v20)
    {
      goto LABEL_30;
    }

    v2[2] = v26;
LABEL_5:
    v5 &= v5 - 1;
    sub_100004984(v33);
  }

  while (1)
  {
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return 0xD000000000000030;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v7;
    if (v5)
    {
      v7 = v10;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10004EF78(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B564(&qword_1005A8A30, &qword_1004C1770);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004EFE8(uint64_t a1)
{
  v2 = sub_10004B564(&qword_1005A8A30, &qword_1004C1770);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10004F074()
{
  result = qword_1005A8A38;
  if (!qword_1005A8A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005A8A38);
  }

  return result;
}

uint64_t sub_10004F0D8()
{
  v0 = type metadata accessor for Logger();
  sub_10004F154(v0, qword_1005DFA50);
  sub_10000A6F0(v0, qword_1005DFA50);
  return Logger.init(subsystem:category:)();
}

uint64_t *sub_10004F154(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

Swift::Int sub_10004F1D0()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_10004F214()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_10004F258(uint64_t a1, uint64_t a2)
{
  v3[92] = v2;
  v3[91] = a2;
  v3[90] = a1;
  return _swift_task_switch(sub_10004F280, v2, 0);
}

uint64_t sub_10004F280()
{
  v14 = v0;
  if (qword_1005A7E90 != -1)
  {
    swift_once();
  }

  v1 = v0[92];
  v2 = *(v1 + 120);
  v3 = *(v1 + 128);
  if (sub_10021B304(v2, v3, qword_1005DFA80))
  {
    if (qword_1005A7E88 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000A6F0(v4, qword_1005DFA68);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v13 = v8;
      *v7 = 136446210;
      *(v7 + 4) = sub_10000D01C(v2, v3, &v13);
      _os_log_impl(&_mh_execute_header, v5, v6, "AnalyticsEvent not computing disallowed analytics event %{public}s.", v7, 0xCu);
      sub_100004984(v8);
    }

    v9 = v0[1];

    return v9();
  }

  else
  {
    v12 = (v0[90] + *v0[90]);
    v11 = swift_task_alloc();
    v0[93] = v11;
    *v11 = v0;
    v11[1] = sub_10004F524;

    return v12();
  }
}

uint64_t sub_10004F524(uint64_t a1)
{
  v2 = *(*v1 + 736);
  *(*v1 + 752) = a1;

  return _swift_task_switch(sub_10004F63C, v2, 0);
}

unint64_t sub_10004F63C()
{
  v92 = (v0 + 304);
  v93 = (v0 + 256);
  v1 = (v0 + 352);
  v89 = (v0 + 400);
  v2 = (v0 + 496);
  v3 = *(v0 + 752);
  v6 = *(v3 + 64);
  v5 = v3 + 64;
  v4 = v6;
  v90 = (v0 + 448);
  v91 = *(v0 + 752);
  v7 = -1 << *(v91 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & v4;
  v97 = *(v0 + 736);
  swift_beginAccess();
  v10 = 0;
  v11 = (63 - v7) >> 6;
  while (v9)
  {
    while (1)
    {
LABEL_12:
      v14 = __clz(__rbit64(v9)) | (v10 << 6);
      v15 = (*(v91 + 48) + 16 * v14);
      v16 = v15[1];
      v98 = *v15;
      sub_10005345C(*(v91 + 56) + 48 * v14, v0 + 16);
      v94 = *(v0 + 16);
      v96 = *(v0 + 32);
      v17 = *(v0 + 48);
      v18 = *(v0 + 56);

      if (!v16)
      {
LABEL_76:

        v85 = *(v0 + 8);
        goto LABEL_77;
      }

      v9 &= v9 - 1;
      *(v0 + 64) = v94;
      *(v0 + 80) = v96;
      *(v0 + 96) = v17;
      *(v0 + 104) = v18;
      v19 = *(v97 + 112);
      if (*(v19 + 16))
      {
        break;
      }

LABEL_24:
      sub_10005345C(v0 + 64, v0 + 112);
      if (*(v0 + 153))
      {
        if (*(v0 + 153) == 1)
        {
          v30 = *(v0 + 112);
          *(v0 + 280) = &type metadata for Int64;
          *(v0 + 288) = sub_100053494();
          *(v0 + 256) = v30;
          v31 = 2;
        }

        else
        {
          v33 = *(v0 + 112);
          *(v0 + 280) = &type metadata for Double;
          *(v0 + 288) = sub_1000535B8();
          *(v0 + 256) = v33;
          v31 = 3;
        }

        *(v0 + 296) = v31;
      }

      else
      {
        v32 = *(v0 + 128);
        *v93 = *(v0 + 112);
        *(v0 + 272) = v32;
        *(v0 + 281) = *(v0 + 137);
      }

      swift_beginAccess();
      sub_1000534E8(v93, v92);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v7 = *(v97 + 112);
      *&v99 = v7;
      *(v97 + 112) = 0x8000000000000000;
      result = sub_1000110D8(v98, v16);
      v37 = *(v7 + 16);
      v38 = (v36 & 1) == 0;
      v39 = __OFADD__(v37, v38);
      v40 = v37 + v38;
      if (v39)
      {
        __break(1u);
LABEL_87:
        __break(1u);
LABEL_88:
        __break(1u);
LABEL_89:
        __break(1u);
LABEL_90:
        __break(1u);
LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
        return result;
      }

      v41 = v36;
      if (*(v7 + 24) < v40)
      {
        sub_10022BE4C(v40, isUniquelyReferenced_nonNull_native);
        result = sub_1000110D8(v98, v16);
        if ((v41 & 1) != (v42 & 1))
        {
          goto LABEL_80;
        }

LABEL_35:
        v1 = (v0 + 352);
        if (v41)
        {
          goto LABEL_6;
        }

        goto LABEL_36;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_35;
      }

      v77 = result;
      sub_100202528();
      result = v77;
      v1 = (v0 + 352);
      if (v41)
      {
LABEL_6:
        v12 = result;

        sub_100053580(v92, *(v7 + 56) + 48 * v12);
        goto LABEL_7;
      }

LABEL_36:
      *(v7 + 8 * (result >> 6) + 64) |= 1 << result;
      v43 = (*(v7 + 48) + 16 * result);
      *v43 = v98;
      v43[1] = v16;
      v44 = (*(v7 + 56) + 48 * result);
      v45 = *(v0 + 329);
      v46 = *(v0 + 320);
      *v44 = *v92;
      v44[1] = v46;
      *(v44 + 25) = v45;
      v47 = *(v7 + 16);
      v39 = __OFADD__(v47, 1);
      v48 = v47 + 1;
      if (v39)
      {
        goto LABEL_87;
      }

      *(v7 + 16) = v48;
LABEL_7:
      *(v97 + 112) = v7;
      swift_endAccess();
      sub_100053520(v0 + 64);
      sub_100053550(v93);
      if (!v9)
      {
        goto LABEL_8;
      }
    }

    v20 = sub_1000110D8(v98, v16);
    if ((v21 & 1) == 0)
    {

      goto LABEL_24;
    }

    sub_1000534E8(*(v19 + 56) + 48 * v20, v0 + 208);

    sub_10005345C(v0 + 64, v0 + 160);
    if (!*(v0 + 201))
    {
      v49 = *(v0 + 176);
      *v1 = *(v0 + 160);
      v1[1] = v49;
      *(v1 + 25) = *(v0 + 185);
      goto LABEL_62;
    }

    if (*(v0 + 201) != 1)
    {
      v50 = *(v0 + 160);
      sub_1000534E8(v0 + 208, v2);
      if (*(v0 + 536) != 3)
      {
        goto LABEL_85;
      }

      sub_100010BD4(v2, v0 + 584);
      v51 = *(v0 + 608);
      sub_100011AEC((v0 + 584), v51);
      v52 = *(v51 - 8);
      swift_task_alloc();
      (*(v52 + 16))();
      v53 = sub_1000535B8();
      BinaryFloatingPoint.init<A>(_:)();

      v54 = v50 + *(v0 + 712);
      *(v0 + 376) = &type metadata for Double;
      *(v0 + 384) = v53;
      v1 = (v0 + 352);
      *(v0 + 352) = v54;
      *(v0 + 392) = 3;
      sub_100004984((v0 + 584));
      goto LABEL_62;
    }

    v22 = *(v0 + 160);
    v7 = v0 + 400;
    sub_1000534E8(v0 + 208, v89);
    if (*(v0 + 440) != 2)
    {
      goto LABEL_84;
    }

    v86 = v22;
    sub_100010BD4(v89, v0 + 544);
    v23 = *(v0 + 568);
    v24 = sub_100011AEC((v0 + 544), v23);
    v25 = *(v23 - 8);
    v26 = swift_task_alloc();
    v95 = v25;
    v27 = v25;
    v28 = v26;
    (*(v27 + 16))(v26, v24, v23);
    if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() > 64)
    {
      *(v0 + 704) = 0x8000000000000000;
      if (dispatch thunk of static BinaryInteger.isSigned.getter())
      {
        if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
        {
          goto LABEL_49;
        }

        v87 = v28;
        v29 = swift_task_alloc();
        sub_100053494();
LABEL_44:
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v58 = dispatch thunk of static Comparable.< infix(_:_:)();
        (*(v95 + 8))(v29, v23);
        v28 = v87;

        if (v58)
        {
          goto LABEL_92;
        }

        goto LABEL_50;
      }

      v55 = v28;
      v56 = dispatch thunk of static BinaryInteger.isSigned.getter();
      v87 = v55;
      v57 = dispatch thunk of BinaryInteger.bitWidth.getter();
      if (v56)
      {
        if (v57 <= 64)
        {
          swift_getAssociatedTypeWitness();
          swift_task_alloc();
          swift_getAssociatedConformanceWitness();
          dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
          v59 = swift_task_alloc();
          dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
          v60 = dispatch thunk of static Comparable.< infix(_:_:)();
          (*(v95 + 8))(v59, v23);
          v28 = v87;

          if (v60)
          {
            goto LABEL_92;
          }

LABEL_49:
          dispatch thunk of BinaryInteger._lowWord.getter();
          goto LABEL_50;
        }

        v29 = swift_task_alloc();
        sub_100053494();
        goto LABEL_44;
      }

      v28 = v55;
      if (v57 < 64)
      {
        goto LABEL_49;
      }
    }

LABEL_50:
    if (dispatch thunk of BinaryInteger.bitWidth.getter() > 64 || dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
    {
      *(v0 + 696) = 0x7FFFFFFFFFFFFFFFLL;
      v61 = v28;
      v62 = dispatch thunk of static BinaryInteger.isSigned.getter();
      v88 = v61;
      v63 = dispatch thunk of BinaryInteger.bitWidth.getter();
      if (v62)
      {
        if (v63 >= 65)
        {
          goto LABEL_53;
        }
      }

      else if (v63 >= 64)
      {
LABEL_53:
        v64 = swift_task_alloc();
        sub_100053494();
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v65 = dispatch thunk of static Comparable.< infix(_:_:)();
        (*(v95 + 8))(v64, v23);
        v28 = v88;

        if (v65)
        {
          goto LABEL_91;
        }

        goto LABEL_60;
      }

      v28 = v61;
      dispatch thunk of BinaryInteger._lowWord.getter();
    }

LABEL_60:
    v66 = dispatch thunk of BinaryInteger._lowWord.getter();
    (*(v95 + 8))(v28, v23);

    v39 = __OFADD__(v66, v86);
    v67 = v66 + v86;
    if (v39)
    {
      goto LABEL_90;
    }

    v68 = sub_100053494();
    *(v0 + 352) = v67;
    *(v0 + 360) = v99;
    *(v0 + 376) = &type metadata for Int64;
    *(v0 + 384) = v68;
    *(v0 + 392) = 2;
    sub_100004984((v0 + 544));
    v1 = (v0 + 352);
LABEL_62:
    swift_beginAccess();
    sub_1000534E8(v1, v90);
    v69 = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v97 + 112);
    *&v99 = v7;
    *(v97 + 112) = 0x8000000000000000;
    result = sub_1000110D8(v98, v16);
    v71 = *(v7 + 16);
    v72 = (v70 & 1) == 0;
    v39 = __OFADD__(v71, v72);
    v73 = v71 + v72;
    if (v39)
    {
      goto LABEL_88;
    }

    v74 = v70;
    if (*(v7 + 24) < v73)
    {
      sub_10022BE4C(v73, v69);
      result = sub_1000110D8(v98, v16);
      if ((v74 & 1) != (v75 & 1))
      {
LABEL_80:

        return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      }

LABEL_67:
      v1 = (v0 + 352);
      if (v74)
      {
        goto LABEL_68;
      }

      goto LABEL_72;
    }

    if (v69)
    {
      goto LABEL_67;
    }

    v78 = result;
    sub_100202528();
    result = v78;
    v1 = (v0 + 352);
    if (v74)
    {
LABEL_68:
      v76 = result;

      sub_100053580(v90, *(v7 + 56) + 48 * v76);
      goto LABEL_74;
    }

LABEL_72:
    *(v7 + 8 * (result >> 6) + 64) |= 1 << result;
    v79 = (*(v7 + 48) + 16 * result);
    *v79 = v98;
    v79[1] = v16;
    v80 = (*(v7 + 56) + 48 * result);
    v81 = *(v0 + 473);
    v82 = *(v0 + 464);
    *v80 = *v90;
    v80[1] = v82;
    *(v80 + 25) = v81;
    v83 = *(v7 + 16);
    v39 = __OFADD__(v83, 1);
    v84 = v83 + 1;
    if (v39)
    {
      goto LABEL_89;
    }

    *(v7 + 16) = v84;
LABEL_74:
    *(v97 + 112) = v7;
    swift_endAccess();
    sub_100053550(v0 + 208);
    sub_100053520(v0 + 64);
    sub_100053550(v1);
  }

LABEL_8:
  while (1)
  {
    v13 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v13 >= v11)
    {
      goto LABEL_76;
    }

    v9 = *(v5 + 8 * v13);
    ++v10;
    if (v9)
    {
      v10 = v13;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_84:
  v2 = v7;
LABEL_85:

  sub_100053550(v2);
  sub_10005360C();
  swift_allocError();
  swift_willThrow();

  sub_100053550(v0 + 208);
  sub_100053520(v0 + 64);
  v85 = *(v0 + 8);
LABEL_77:

  return v85();
}

uint64_t sub_1000502C4(uint64_t a1)
{
  *(v2 + 104) = a1;
  *(v2 + 112) = v1;
  return _swift_task_switch(sub_1000502E4, v1, 0);
}

uint64_t sub_1000502E4()
{
  v14 = v0;
  v0[2] = v0[13];
  swift_errorRetain();
  sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
  v1 = String.init<A>(describing:)();
  v3 = v2;
  v11 = &type metadata for String;
  v4 = sub_1000246F4();
  v12 = v4;
  *&v10 = v1;
  *(&v10 + 1) = v3;
  v13 = 1;
  swift_beginAccess();
  sub_100145548(&v10, 0xD000000000000010, 0x80000001004DE860);
  swift_endAccess();
  swift_getErrorValue();
  v5 = Error.code.getter();
  v11 = &type metadata for Int;
  v12 = sub_100054734();
  *&v10 = v5;
  v13 = 2;
  swift_beginAccess();
  sub_100145548(&v10, 0x646F43726F727265, 0xE900000000000065);
  swift_endAccess();
  swift_getErrorValue();
  v6 = Error.domain.getter();
  v11 = &type metadata for String;
  v12 = v4;
  *&v10 = v6;
  *(&v10 + 1) = v7;
  v13 = 1;
  swift_beginAccess();
  sub_100145548(&v10, 0x6D6F44726F727265, 0xEB000000006E6961);
  swift_endAccess();
  v8 = v0[1];

  return v8();
}

uint64_t sub_1000504E8()
{

  v1 = OBJC_IVAR____TtC13findmylocated14AnalyticsEvent_identifier;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_10005465C(v0 + OBJC_IVAR____TtC13findmylocated14AnalyticsEvent_startTime);
  sub_10005465C(v0 + OBJC_IVAR____TtC13findmylocated14AnalyticsEvent_endTime);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for AnalyticsEvent(uint64_t a1)
{
  result = qword_1005A8A88;
  if (!qword_1005A8A88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000505E4(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    sub_1000506D4(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1000506D4(uint64_t a1)
{
  if (!qword_1005A8A98)
  {
    type metadata accessor for DispatchTime();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1005A8A98);
    }
  }
}

void *sub_10005072C()
{
  v1 = v0;
  v2 = sub_10004B564(&qword_1005A8C88, &unk_1004C1AB0);
  v3 = __chkstk_darwin(v2 - 8);
  v46 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v44 = &v41 - v6;
  v7 = __chkstk_darwin(v5);
  v9 = &v41 - v8;
  __chkstk_darwin(v7);
  v11 = &v41 - v10;
  v12 = type metadata accessor for DispatchTime();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v45 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v41 - v16;
  sub_10004B564(&qword_1005A8C90, &qword_1004C5FC0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1004C1900;
  v19 = [objc_allocWithZone(NSDate) init];
  [v19 timeIntervalSince1970];
  v21 = v20;

  *(v18 + 56) = &type metadata for Double;
  *(v18 + 64) = &protocol witness table for Double;
  *(v18 + 32) = v21;
  v22 = String.init(format:_:)();
  v24 = v23;
  v25 = sub_1000246F4();
  *&v49 = v22;
  *(&v49 + 1) = v24;
  v50 = &type metadata for String;
  v51 = v25;
  v52 = 1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v48 = _swiftEmptyDictionarySingleton;
  sub_100452308(&v49, 0x6D695468636F7065, 0xE900000000000065, isUniquelyReferenced_nonNull_native);
  v27 = v48;
  sub_1000545EC(v1 + OBJC_IVAR____TtC13findmylocated14AnalyticsEvent_startTime, v11);
  v28 = *(v13 + 48);
  if (v28(v11, 1, v12) == 1)
  {
    sub_10005465C(v11);
    return v27;
  }

  v42 = *(v13 + 32);
  v43 = v17;
  v42();
  v29 = OBJC_IVAR____TtC13findmylocated14AnalyticsEvent_endTime;
  swift_beginAccess();
  sub_1000545EC(v1 + v29, v9);
  v30 = v28(v9, 1, v12);
  sub_10005465C(v9);
  if (v30 == 1)
  {
    v31 = v44;
    static DispatchTime.now()();
    (*(v13 + 56))(v31, 0, 1, v12);
    swift_beginAccess();
    sub_1000546C4(v31, v1 + v29);
    swift_endAccess();
  }

  v32 = v46;
  sub_1000545EC(v1 + v29, v46);
  if (v28(v32, 1, v12) == 1)
  {
    (*(v13 + 8))(v43, v12);
    sub_10005465C(v32);
    return v27;
  }

  v33 = v45;
  (v42)(v45, v32, v12);
  v34 = DispatchTime.uptimeNanoseconds.getter();
  v35 = v43;
  result = DispatchTime.uptimeNanoseconds.getter();
  if (v34 >= result)
  {
    v37 = (v34 - result) / 1000000000.0;
    v38 = sub_1000535B8();
    *&v49 = v37;
    v50 = &type metadata for Double;
    v51 = v38;
    v52 = 3;
    v39 = swift_isUniquelyReferenced_nonNull_native();
    v47 = v27;
    sub_100452308(&v49, 0x6E6F697461727564, 0xE800000000000000, v39);
    v40 = *(v13 + 8);
    v40(v33, v12);
    v40(v35, v12);
    return v47;
  }

  __break(1u);
  return result;
}

uint64_t sub_100050C00()
{
  v0 = type metadata accessor for Logger();
  sub_10004F154(v0, qword_1005DFA68);
  sub_10000A6F0(v0, qword_1005DFA68);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100050C80()
{
  result = sub_10023F00C(_swiftEmptyArrayStorage);
  qword_1005DFA80 = result;
  return result;
}

uint64_t sub_100050CA8()
{
  v0 = type metadata accessor for Logger();
  sub_10004F154(v0, qword_1005A8A48);
  v1 = sub_10000A6F0(v0, qword_1005A8A48);
  if (qword_1005A7E88 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A6F0(v0, qword_1005DFA68);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100050D70(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return _swift_task_switch(sub_100050D90, v1, 0);
}

uint64_t sub_100050D90(uint64_t a1)
{
  v18 = v1;
  if (static SystemInfo.underTest.getter())
  {
    if (qword_1005A7E98 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000A6F0(v2, qword_1005A8A48);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_14;
    }

    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "SPAnalytics not submitting analytics during unit tests.", v5, 2u);
LABEL_13:

LABEL_14:

    v14 = v1[1];

    return v14();
  }

  if (qword_1005A7E90 != -1)
  {
    swift_once();
  }

  v6 = v1[5];
  v7 = qword_1005DFA80;
  v8 = *(v6 + 120);
  v1[7] = v8;
  v9 = *(v6 + 128);
  v1[8] = v9;
  if (sub_10021B304(v8, v9, v7))
  {
    if (qword_1005A7E98 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000A6F0(v10, qword_1005A8A48);

    v3 = Logger.logObject.getter();
    v11 = static os_log_type_t.info.getter();

    if (!os_log_type_enabled(v3, v11))
    {
      goto LABEL_14;
    }

    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v17 = v13;
    *v12 = 136446210;
    *(v12 + 4) = sub_10000D01C(v8, v9, &v17);
    _os_log_impl(&_mh_execute_header, v3, v11, "AnalyticsPublisher not submitting disallowed analytics event %{public}s to CA.", v12, 0xCu);
    sub_100004984(v13);

    goto LABEL_13;
  }

  v16 = v1[5];

  return _swift_task_switch(sub_100051060, v16, 0);
}

uint64_t sub_100051060()
{

  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_100051114;
  v2 = *(v0 + 40);

  return sub_100051684(v2, v2);
}

uint64_t sub_100051114()
{
  v2 = *v1;

  v3 = *(v2 + 40);
  if (v0)
  {

    v4 = sub_1000549A0;
  }

  else
  {
    v4 = sub_100051254;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100051254()
{
  v1 = v0[5];
  v2 = v0[6];
  swift_beginAccess();
  v0[10] = *(v1 + 112);

  return _swift_task_switch(sub_1000512DC, v2, 0);
}

uint64_t sub_1000512DC()
{
  v15 = v0;
  sub_100053660(v0[10]);

  if (qword_1005A7E98 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005A8A48);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[7];
    v4 = v0[8];
    v6 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v6 = 136446466;
    *(v6 + 4) = sub_10000D01C(v5, v4, &v14);
    *(v6 + 12) = 2080;
    sub_1000545A4(0, &qword_1005B3440, NSObject_ptr);
    v7 = Dictionary.description.getter();
    v9 = sub_10000D01C(v7, v8, &v14);

    *(v6 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "Analytics: %{public}s, %s.", v6, 0x16u);
    swift_arrayDestroy();
  }

  v10 = String._bridgeToObjectiveC()();
  sub_1000545A4(0, &qword_1005B3440, NSObject_ptr);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  AnalyticsSendEvent();

  v12 = v0[1];

  return v12();
}

uint64_t sub_100051550()
{
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

__n128 sub_1000515B0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000515C4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 41))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 40);
  if (v3 >= 4)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100051600(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_10005164C(uint64_t result, unsigned int a2)
{
  if (a2 > 3)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 4;
    LOBYTE(a2) = 4;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t sub_100051684(uint64_t a1, uint64_t a2)
{
  *(v2 + 728) = a2;
  *(v2 + 720) = a1;
  return _swift_task_switch(sub_1000516AC, a1, 0);
}

uint64_t sub_1000516AC()
{
  v13 = v0;
  if (qword_1005A7E90 != -1)
  {
    swift_once();
  }

  v1 = v0[90];
  v2 = *(v1 + 120);
  v3 = *(v1 + 128);
  if (sub_10021B304(v2, v3, qword_1005DFA80))
  {
    if (qword_1005A7E88 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000A6F0(v4, qword_1005DFA68);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v12 = v8;
      *v7 = 136446210;
      *(v7 + 4) = sub_10000D01C(v2, v3, &v12);
      _os_log_impl(&_mh_execute_header, v5, v6, "AnalyticsEvent not computing disallowed analytics event %{public}s.", v7, 0xCu);
      sub_100004984(v8);
    }

    v9 = v0[1];

    return v9();
  }

  else
  {
    v11 = v0[91];

    return _swift_task_switch(sub_1000518C4, v11, 0);
  }
}

uint64_t sub_1000518C4()
{
  v1 = *(v0 + 720);
  *(v0 + 736) = sub_10005072C();

  return _swift_task_switch(sub_100051934, v1, 0);
}

unint64_t sub_100051934()
{
  v93 = (v0 + 304);
  v94 = (v0 + 256);
  v1 = (v0 + 352);
  v90 = (v0 + 400);
  v2 = (v0 + 496);
  v3 = *(v0 + 736);
  v6 = *(v3 + 64);
  v5 = v3 + 64;
  v4 = v6;
  v91 = (v0 + 448);
  v92 = *(v0 + 736);
  v7 = -1 << *(v92 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & v4;
  v98 = *(v0 + 720);
  swift_beginAccess();
  v10 = 0;
  v11 = (63 - v7) >> 6;
  while (v9)
  {
    while (1)
    {
LABEL_12:
      v14 = __clz(__rbit64(v9)) | (v10 << 6);
      v15 = (*(v92 + 48) + 16 * v14);
      v16 = v15[1];
      v99 = *v15;
      sub_10005345C(*(v92 + 56) + 48 * v14, v0 + 16);
      v95 = *(v0 + 16);
      v97 = *(v0 + 32);
      v17 = *(v0 + 48);
      v18 = *(v0 + 56);

      if (!v16)
      {
LABEL_76:

        v83 = *(v0 + 8);
        goto LABEL_77;
      }

      v9 &= v9 - 1;
      *(v0 + 64) = v95;
      *(v0 + 80) = v97;
      *(v0 + 96) = v17;
      *(v0 + 104) = v18;
      v19 = *(v98 + 112);
      if (*(v19 + 16))
      {
        break;
      }

LABEL_25:
      sub_10005345C(v0 + 64, v0 + 112);
      if (*(v0 + 153))
      {
        if (*(v0 + 153) == 1)
        {
          v30 = *(v0 + 112);
          *(v0 + 280) = &type metadata for Int64;
          *(v0 + 288) = sub_100053494();
          *(v0 + 256) = v30;
          v31 = 2;
        }

        else
        {
          v33 = *(v0 + 112);
          *(v0 + 280) = &type metadata for Double;
          *(v0 + 288) = sub_1000535B8();
          *(v0 + 256) = v33;
          v31 = 3;
        }

        *(v0 + 296) = v31;
      }

      else
      {
        v32 = *(v0 + 128);
        *v94 = *(v0 + 112);
        *(v0 + 272) = v32;
        *(v0 + 281) = *(v0 + 137);
      }

      swift_beginAccess();
      sub_1000534E8(v94, v93);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v7 = *(v98 + 112);
      *&v100 = v7;
      *(v98 + 112) = 0x8000000000000000;
      result = sub_1000110D8(v99, v16);
      v36 = *(v7 + 16);
      v37 = (v35 & 1) == 0;
      v38 = __OFADD__(v36, v37);
      v39 = v36 + v37;
      if (v38)
      {
        __break(1u);
LABEL_87:
        __break(1u);
LABEL_88:
        __break(1u);
LABEL_89:
        __break(1u);
LABEL_90:
        __break(1u);
LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
        return result;
      }

      v40 = v35;
      if (*(v7 + 24) < v39)
      {
        sub_10022BE4C(v39, isUniquelyReferenced_nonNull_native);
        result = sub_1000110D8(v99, v16);
        if ((v40 & 1) != (v41 & 1))
        {
          goto LABEL_80;
        }

LABEL_36:
        v1 = (v0 + 352);
        if (v40)
        {
          goto LABEL_6;
        }

        goto LABEL_37;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_36;
      }

      v75 = result;
      sub_100202528();
      result = v75;
      v1 = (v0 + 352);
      if (v40)
      {
LABEL_6:
        v12 = result;

        sub_100053580(v93, *(v7 + 56) + 48 * v12);
        goto LABEL_7;
      }

LABEL_37:
      *(v7 + 8 * (result >> 6) + 64) |= 1 << result;
      v42 = (*(v7 + 48) + 16 * result);
      *v42 = v99;
      v42[1] = v16;
      v43 = (*(v7 + 56) + 48 * result);
      v44 = *(v0 + 329);
      v45 = *(v0 + 320);
      *v43 = *v93;
      v43[1] = v45;
      *(v43 + 25) = v44;
      v46 = *(v7 + 16);
      v38 = __OFADD__(v46, 1);
      v47 = v46 + 1;
      if (v38)
      {
        goto LABEL_87;
      }

      *(v7 + 16) = v47;
LABEL_7:
      *(v98 + 112) = v7;
      swift_endAccess();
      sub_100053520(v0 + 64);
      sub_100053550(v94);
      if (!v9)
      {
        goto LABEL_8;
      }
    }

    v20 = sub_1000110D8(v99, v16);
    if ((v21 & 1) == 0)
    {

      goto LABEL_25;
    }

    sub_1000534E8(*(v19 + 56) + 48 * v20, v0 + 208);

    sub_10005345C(v0 + 64, v0 + 160);
    if (!*(v0 + 201))
    {
      v48 = *(v0 + 176);
      *v1 = *(v0 + 160);
      v1[1] = v48;
      *(v1 + 25) = *(v0 + 185);
      goto LABEL_62;
    }

    if (*(v0 + 201) != 1)
    {
      v49 = *(v0 + 160);
      sub_1000534E8(v0 + 208, v2);
      if (*(v0 + 536) != 3)
      {
        goto LABEL_85;
      }

      sub_100010BD4(v2, v0 + 584);
      v50 = *(v0 + 608);
      sub_100011AEC((v0 + 584), v50);
      v51 = *(v50 - 8);
      swift_task_alloc();
      (*(v51 + 16))();
      v52 = sub_1000535B8();
      BinaryFloatingPoint.init<A>(_:)();

      v53 = v49 + *(v0 + 712);
      *(v0 + 376) = &type metadata for Double;
      *(v0 + 384) = v52;
      v1 = (v0 + 352);
      *(v0 + 352) = v53;
      *(v0 + 392) = 3;
      sub_100004984((v0 + 584));
      goto LABEL_62;
    }

    v22 = *(v0 + 160);
    v7 = v0 + 400;
    sub_1000534E8(v0 + 208, v90);
    if (*(v0 + 440) != 2)
    {
      goto LABEL_84;
    }

    v89 = v22;
    sub_100010BD4(v90, v0 + 544);
    v23 = *(v0 + 568);
    v24 = sub_100011AEC((v0 + 544), v23);
    v25 = *(v23 - 8);
    v26 = swift_task_alloc();
    v96 = v25;
    v27 = v25;
    v28 = v26;
    (*(v27 + 16))(v26, v24, v23);
    if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() >= 65)
    {
      *(v0 + 704) = 0x8000000000000000;
      if (dispatch thunk of static BinaryInteger.isSigned.getter())
      {
        if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
        {
          goto LABEL_49;
        }

        v85 = swift_task_alloc();
        sub_100053494();
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v84 = dispatch thunk of static Comparable.< infix(_:_:)();
        (*(v96 + 8))(v85, v23);

        if (v84)
        {
          goto LABEL_92;
        }
      }

      else
      {
        v86 = dispatch thunk of static BinaryInteger.isSigned.getter();
        v54 = dispatch thunk of BinaryInteger.bitWidth.getter();
        if (v86)
        {
          v87 = v28;
          if (v54 <= 64)
          {
            swift_getAssociatedTypeWitness();
            swift_task_alloc();
            swift_getAssociatedConformanceWitness();
            dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
            v57 = swift_task_alloc();
            dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
            v58 = dispatch thunk of static Comparable.< infix(_:_:)();
            (*(v96 + 8))(v57, v23);
            v28 = v87;

            if (v58)
            {
              goto LABEL_92;
            }

LABEL_49:
            dispatch thunk of BinaryInteger._lowWord.getter();
            goto LABEL_50;
          }

          v55 = swift_task_alloc();
          sub_100053494();
          dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
          v56 = dispatch thunk of static Comparable.< infix(_:_:)();
          (*(v96 + 8))(v55, v23);
          v28 = v87;

          if (v56)
          {
            goto LABEL_92;
          }
        }

        else if (v54 < 64)
        {
          goto LABEL_49;
        }
      }
    }

LABEL_50:
    if (dispatch thunk of BinaryInteger.bitWidth.getter() > 64 || dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
    {
      *(v0 + 696) = 0x7FFFFFFFFFFFFFFFLL;
      v59 = v28;
      v60 = dispatch thunk of static BinaryInteger.isSigned.getter();
      v88 = v59;
      v61 = dispatch thunk of BinaryInteger.bitWidth.getter();
      if (v60)
      {
        if (v61 > 64)
        {
          goto LABEL_53;
        }
      }

      else if (v61 >= 64)
      {
LABEL_53:
        v62 = swift_task_alloc();
        sub_100053494();
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v63 = dispatch thunk of static Comparable.< infix(_:_:)();
        (*(v96 + 8))(v62, v23);
        v28 = v88;

        if (v63)
        {
          goto LABEL_91;
        }

        goto LABEL_60;
      }

      v28 = v59;
      dispatch thunk of BinaryInteger._lowWord.getter();
    }

LABEL_60:
    v64 = dispatch thunk of BinaryInteger._lowWord.getter();
    (*(v96 + 8))(v28, v23);

    v38 = __OFADD__(v64, v89);
    v65 = v64 + v89;
    if (v38)
    {
      goto LABEL_90;
    }

    v66 = sub_100053494();
    *(v0 + 352) = v65;
    *(v0 + 360) = v100;
    *(v0 + 376) = &type metadata for Int64;
    *(v0 + 384) = v66;
    *(v0 + 392) = 2;
    sub_100004984((v0 + 544));
    v1 = (v0 + 352);
LABEL_62:
    swift_beginAccess();
    sub_1000534E8(v1, v91);
    v67 = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v98 + 112);
    *&v100 = v7;
    *(v98 + 112) = 0x8000000000000000;
    result = sub_1000110D8(v99, v16);
    v69 = *(v7 + 16);
    v70 = (v68 & 1) == 0;
    v38 = __OFADD__(v69, v70);
    v71 = v69 + v70;
    if (v38)
    {
      goto LABEL_88;
    }

    v72 = v68;
    if (*(v7 + 24) < v71)
    {
      sub_10022BE4C(v71, v67);
      result = sub_1000110D8(v99, v16);
      if ((v72 & 1) != (v73 & 1))
      {
LABEL_80:

        return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      }

LABEL_67:
      v1 = (v0 + 352);
      if (v72)
      {
        goto LABEL_68;
      }

      goto LABEL_72;
    }

    if (v67)
    {
      goto LABEL_67;
    }

    v76 = result;
    sub_100202528();
    result = v76;
    v1 = (v0 + 352);
    if (v72)
    {
LABEL_68:
      v74 = result;

      sub_100053580(v91, *(v7 + 56) + 48 * v74);
      goto LABEL_74;
    }

LABEL_72:
    *(v7 + 8 * (result >> 6) + 64) |= 1 << result;
    v77 = (*(v7 + 48) + 16 * result);
    *v77 = v99;
    v77[1] = v16;
    v78 = (*(v7 + 56) + 48 * result);
    v79 = *(v0 + 473);
    v80 = *(v0 + 464);
    *v78 = *v91;
    v78[1] = v80;
    *(v78 + 25) = v79;
    v81 = *(v7 + 16);
    v38 = __OFADD__(v81, 1);
    v82 = v81 + 1;
    if (v38)
    {
      goto LABEL_89;
    }

    *(v7 + 16) = v82;
LABEL_74:
    *(v98 + 112) = v7;
    swift_endAccess();
    sub_100053550(v0 + 208);
    sub_100053520(v0 + 64);
    sub_100053550(v1);
  }

LABEL_8:
  while (1)
  {
    v13 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v13 >= v11)
    {
      goto LABEL_76;
    }

    v9 = *(v5 + 8 * v13);
    ++v10;
    if (v9)
    {
      v10 = v13;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_84:
  v2 = v7;
LABEL_85:

  sub_100053550(v2);
  sub_10005360C();
  swift_allocError();
  swift_willThrow();

  sub_100053550(v0 + 208);
  sub_100053520(v0 + 64);
  v83 = *(v0 + 8);
LABEL_77:

  return v83();
}

uint64_t sub_100052618(uint64_t a1, uint64_t a2)
{
  *(v2 + 728) = a2;
  *(v2 + 720) = a1;
  return _swift_task_switch(sub_100052640, a1, 0);
}

unint64_t sub_100052640()
{
  v104 = v0;
  if (qword_1005A7E90 != -1)
  {
LABEL_93:
    swift_once();
  }

  v1 = *(v0 + 720);
  v2 = *(v1 + 120);
  v3 = *(v1 + 128);
  if (sub_10021B304(v2, v3, qword_1005DFA80))
  {
    if (qword_1005A7E88 != -1)
    {
LABEL_96:
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000A6F0(v4, qword_1005DFA68);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *&v103 = v8;
      *v7 = 136446210;
      *(v7 + 4) = sub_10000D01C(v2, v3, &v103);
      _os_log_impl(&_mh_execute_header, v5, v6, "AnalyticsEvent not computing disallowed analytics event %{public}s.", v7, 0xCu);
      sub_100004984(v8);
    }

LABEL_82:
    v86 = *(v0 + 8);
    goto LABEL_83;
  }

  v92 = (v0 + 400);
  v93 = (v0 + 496);
  v96 = (v0 + 304);
  v97 = (v0 + 256);
  v9 = (v0 + 352);
  v94 = (v0 + 448);
  v10 = *(v0 + 720);
  v11 = *(v0 + 728);
  v14 = *(v11 + 64);
  v13 = v11 + 64;
  v12 = v14;
  v15 = -1 << *(*(v0 + 728) + 32);
  if (-v15 < 64)
  {
    v16 = ~(-1 << -v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & v12;
  v95 = *(v0 + 728);

  v101 = v10;
  swift_beginAccess();
  v18 = 0;
  v3 = (63 - v15) >> 6;
  if (!v17)
  {
LABEL_14:
    while (1)
    {
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v20 >= v3)
      {
        goto LABEL_81;
      }

      v17 = *(v13 + 8 * v20);
      ++v18;
      if (v17)
      {
        v18 = v20;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_90:
    v93 = v15;
LABEL_91:

    sub_100053550(v93);
    sub_10005360C();
    swift_allocError();
    swift_willThrow();

    sub_100053550(v0 + 208);
    sub_100053520(v0 + 64);
    v86 = *(v0 + 8);
LABEL_83:

    return v86();
  }

  while (1)
  {
    while (1)
    {
LABEL_18:
      v21 = __clz(__rbit64(v17)) | (v18 << 6);
      v22 = (*(v95 + 48) + 16 * v21);
      v23 = v22[1];
      v102 = *v22;
      sub_10005345C(*(v95 + 56) + 48 * v21, v0 + 16);
      v98 = *(v0 + 16);
      v99 = *(v0 + 32);
      v24 = *(v0 + 48);
      v25 = *(v0 + 56);

      if (!v23)
      {
LABEL_81:

        goto LABEL_82;
      }

      v17 &= v17 - 1;
      *(v0 + 64) = v98;
      *(v0 + 80) = v99;
      *(v0 + 96) = v24;
      *(v0 + 104) = v25;
      v26 = *(v101 + 112);
      if (*(v26 + 16))
      {
        break;
      }

LABEL_30:
      sub_10005345C(v0 + 64, v0 + 112);
      if (*(v0 + 153))
      {
        if (*(v0 + 153) == 1)
        {
          v33 = *(v0 + 112);
          *(v0 + 280) = &type metadata for Int64;
          *(v0 + 288) = sub_100053494();
          *(v0 + 256) = v33;
          v34 = 2;
        }

        else
        {
          v36 = *(v0 + 112);
          *(v0 + 280) = &type metadata for Double;
          *(v0 + 288) = sub_1000535B8();
          *(v0 + 256) = v36;
          v34 = 3;
        }

        *(v0 + 296) = v34;
      }

      else
      {
        v35 = *(v0 + 128);
        *v97 = *(v0 + 112);
        *(v0 + 272) = v35;
        *(v0 + 281) = *(v0 + 137);
      }

      swift_beginAccess();
      sub_1000534E8(v97, v96);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v103 = *(v101 + 112);
      v38 = v103;
      *(v101 + 112) = 0x8000000000000000;
      v39 = sub_1000110D8(v102, v23);
      v41 = *(v38 + 16);
      v42 = (v40 & 1) == 0;
      v43 = __OFADD__(v41, v42);
      v44 = v41 + v42;
      if (v43)
      {
        __break(1u);
        goto LABEL_93;
      }

      v2 = v40;
      if (*(v38 + 24) < v44)
      {
        sub_10022BE4C(v44, isUniquelyReferenced_nonNull_native);
        v39 = sub_1000110D8(v102, v23);
        if ((v2 & 1) != (v45 & 1))
        {
          goto LABEL_86;
        }

LABEL_41:
        v9 = (v0 + 352);
        if (v2)
        {
          goto LABEL_12;
        }

        goto LABEL_42;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_41;
      }

      v78 = v39;
      sub_100202528();
      v39 = v78;
      v9 = (v0 + 352);
      if (v2)
      {
LABEL_12:
        v19 = v39;

        v15 = v103;
        sub_100053580(v96, *(v103 + 56) + 48 * v19);
        goto LABEL_13;
      }

LABEL_42:
      v15 = v103;
      *(v103 + 8 * (v39 >> 6) + 64) |= 1 << v39;
      v46 = (*(v15 + 48) + 16 * v39);
      *v46 = v102;
      v46[1] = v23;
      v47 = (*(v15 + 56) + 48 * v39);
      v48 = *(v0 + 329);
      v49 = *(v0 + 320);
      *v47 = *v96;
      v47[1] = v49;
      *(v47 + 25) = v48;
      v50 = *(v15 + 16);
      v43 = __OFADD__(v50, 1);
      v51 = v50 + 1;
      if (v43)
      {
        __break(1u);
LABEL_95:
        __break(1u);
        goto LABEL_96;
      }

      *(v15 + 16) = v51;
LABEL_13:
      *(v101 + 112) = v15;
      swift_endAccess();
      sub_100053520(v0 + 64);
      sub_100053550(v97);
      if (!v17)
      {
        goto LABEL_14;
      }
    }

    v27 = sub_1000110D8(v102, v23);
    if ((v28 & 1) == 0)
    {

      goto LABEL_30;
    }

    sub_1000534E8(*(v26 + 56) + 48 * v27, v0 + 208);

    sub_10005345C(v0 + 64, v0 + 160);
    if (!*(v0 + 201))
    {
      v52 = *(v0 + 176);
      *v9 = *(v0 + 160);
      v9[1] = v52;
      *(v9 + 25) = *(v0 + 185);
      goto LABEL_67;
    }

    if (*(v0 + 201) != 1)
    {
      v53 = *(v0 + 160);
      sub_1000534E8(v0 + 208, v93);
      if (*(v0 + 536) != 3)
      {
        goto LABEL_91;
      }

      sub_100010BD4(v93, v0 + 584);
      v54 = *(v0 + 608);
      sub_100011AEC((v0 + 584), v54);
      v55 = *(v54 - 8);
      swift_task_alloc();
      (*(v55 + 16))();
      v56 = sub_1000535B8();
      BinaryFloatingPoint.init<A>(_:)();

      v57 = v53 + *(v0 + 712);
      *(v0 + 376) = &type metadata for Double;
      *(v0 + 384) = v56;
      v9 = (v0 + 352);
      *(v0 + 352) = v57;
      *(v0 + 392) = 3;
      sub_100004984((v0 + 584));
      goto LABEL_67;
    }

    v29 = *(v0 + 160);
    v15 = v0 + 400;
    sub_1000534E8(v0 + 208, v92);
    if (*(v0 + 440) != 2)
    {
      goto LABEL_90;
    }

    v90 = v29;
    sub_100010BD4(v92, v0 + 544);
    v30 = *(v0 + 568);
    v100 = sub_100011AEC((v0 + 544), v30);
    v31 = *(v30 - 8);
    v32 = swift_task_alloc();
    v91 = v31;
    (*(v31 + 16))(v32, v100, v30);
    if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() >= 65)
    {
      *(v0 + 704) = 0x8000000000000000;
      if (dispatch thunk of static BinaryInteger.isSigned.getter())
      {
        if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
        {
          goto LABEL_54;
        }

LABEL_49:
        v60 = swift_task_alloc();
        sub_100053494();
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v87 = dispatch thunk of static Comparable.< infix(_:_:)();
        (*(v91 + 8))(v60, v30);

        if (v87)
        {
          goto LABEL_100;
        }

        goto LABEL_55;
      }

      v58 = dispatch thunk of static BinaryInteger.isSigned.getter();
      v59 = dispatch thunk of BinaryInteger.bitWidth.getter();
      if (v58)
      {
        if (v59 <= 64)
        {
          swift_getAssociatedTypeWitness();
          swift_task_alloc();
          swift_getAssociatedConformanceWitness();
          dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
          v62 = swift_task_alloc();
          dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
          v63 = dispatch thunk of static Comparable.< infix(_:_:)();
          (*(v91 + 8))(v62, v30);

          if (v63)
          {
            goto LABEL_100;
          }

LABEL_54:
          dispatch thunk of BinaryInteger._lowWord.getter();
          goto LABEL_55;
        }

        goto LABEL_49;
      }

      if (v59 < 64)
      {
        goto LABEL_54;
      }
    }

LABEL_55:
    if (dispatch thunk of BinaryInteger.bitWidth.getter() > 64 || dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
    {
      *(v0 + 696) = 0x7FFFFFFFFFFFFFFFLL;
      v88 = dispatch thunk of static BinaryInteger.isSigned.getter();
      v64 = dispatch thunk of BinaryInteger.bitWidth.getter();
      if (v88)
      {
        if (v64 > 64)
        {
          goto LABEL_58;
        }
      }

      else if (v64 >= 64)
      {
LABEL_58:
        v65 = swift_task_alloc();
        sub_100053494();
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v89 = dispatch thunk of static Comparable.< infix(_:_:)();
        (*(v91 + 8))(v65, v30);

        if (v89)
        {
          goto LABEL_99;
        }

        goto LABEL_65;
      }

      dispatch thunk of BinaryInteger._lowWord.getter();
    }

LABEL_65:
    v66 = dispatch thunk of BinaryInteger._lowWord.getter();
    (*(v91 + 8))(v32, v30);

    v43 = __OFADD__(v66, v90);
    v67 = v66 + v90;
    if (v43)
    {
      goto LABEL_98;
    }

    v68 = sub_100053494();
    *(v0 + 352) = v67;
    *(v0 + 360) = v103;
    *(v0 + 376) = &type metadata for Int64;
    *(v0 + 384) = v68;
    *(v0 + 392) = 2;
    sub_100004984((v0 + 544));
    v9 = (v0 + 352);
LABEL_67:
    v2 = v101;
    swift_beginAccess();
    sub_1000534E8(v9, v94);
    v69 = swift_isUniquelyReferenced_nonNull_native();
    *&v103 = *(v101 + 112);
    v70 = v103;
    *(v101 + 112) = 0x8000000000000000;
    result = sub_1000110D8(v102, v23);
    v72 = *(v70 + 16);
    v73 = (v71 & 1) == 0;
    v43 = __OFADD__(v72, v73);
    v74 = v72 + v73;
    if (v43)
    {
      goto LABEL_95;
    }

    v75 = v71;
    if (*(v70 + 24) >= v74)
    {
      break;
    }

    sub_10022BE4C(v74, v69);
    result = sub_1000110D8(v102, v23);
    if ((v75 & 1) != (v76 & 1))
    {
LABEL_86:

      return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    }

LABEL_72:
    v9 = (v0 + 352);
    if ((v75 & 1) == 0)
    {
      goto LABEL_77;
    }

LABEL_73:
    v77 = result;

    v15 = v103;
    sub_100053580(v94, *(v103 + 56) + 48 * v77);
LABEL_79:
    *(v101 + 112) = v15;
    swift_endAccess();
    sub_100053550(v0 + 208);
    sub_100053520(v0 + 64);
    sub_100053550(v9);
    if (!v17)
    {
      goto LABEL_14;
    }
  }

  if (v69)
  {
    goto LABEL_72;
  }

  v79 = result;
  sub_100202528();
  result = v79;
  v9 = (v0 + 352);
  if (v75)
  {
    goto LABEL_73;
  }

LABEL_77:
  v15 = v103;
  *(v103 + 8 * (result >> 6) + 64) |= 1 << result;
  v80 = (*(v15 + 48) + 16 * result);
  *v80 = v102;
  v80[1] = v23;
  v81 = (*(v15 + 56) + 48 * result);
  v82 = *(v0 + 473);
  v83 = *(v0 + 464);
  *v81 = *v94;
  v81[1] = v83;
  *(v81 + 25) = v82;
  v84 = *(v15 + 16);
  v43 = __OFADD__(v84, 1);
  v85 = v84 + 1;
  if (!v43)
  {
    *(v15 + 16) = v85;
    goto LABEL_79;
  }

  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
  return result;
}