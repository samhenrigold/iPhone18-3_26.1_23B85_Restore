uint64_t sub_10012A430()
{
  (*(v0[24] + 8))(v0[25], v0[23]);

  v1 = v0[1];

  return v1(0);
}

uint64_t Playlist.duplicate()()
{
  v1[2] = v0;
  v2 = sub_100004CB8(&qword_100636500, &qword_100518D48);
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = sub_100004CB8(&qword_100637A30, &unk_100518D60);
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_10012A654, 0, 0);
}

uint64_t sub_10012A654()
{
  sub_1004D8ECC();
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_10012A6FC;
  v2 = *(v0 + 40);

  return MusicLibraryPlaylistRequest.response<>()(v2);
}

uint64_t sub_10012A6FC()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_10012A8B0;
  }

  else
  {
    (*(v2[4] + 8))(v2[5], v2[3]);
    v3 = sub_10012A828;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10012A828()
{
  (*(v0[7] + 8))(v0[8], v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10012A8B0()
{
  (*(v0[7] + 8))(v0[8], v0[6]);

  v1 = v0[1];

  return v1();
}

double sub_10012A938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1004DD05C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  sub_100004CB8(&qword_100635240, &qword_1005171A0);
  *&result = __chkstk_darwin().n128_u64[0];
  v13 = &v18 - v12;
  if (a1)
  {
    v14 = sub_1004DDA8C();
    (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
    (*(v9 + 16))(&v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a5, v8);
    v15 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = 0;
    *(v16 + 24) = 0;
    (*(v9 + 32))(v16 + v15, &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
    v17 = (v16 + ((v10 + v15 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v17 = a1;
    v17[1] = a2;

    sub_10011F560(0, 0, v13, &unk_10051BD30, v16);
  }

  return result;
}

uint64_t sub_10012AB38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_100004CB8(&qword_100637C70, &qword_10051BD38);
  v6[5] = swift_task_alloc();
  sub_100004CB8(&qword_100637C78, &qword_10051BD40);
  v6[6] = swift_task_alloc();
  sub_100004CB8(&unk_100637C80, &unk_10051BD48);
  v6[7] = swift_task_alloc();

  return _swift_task_switch(sub_10012AC48, 0, 0);
}

uint64_t sub_10012AC48()
{
  v1 = *(v0 + 56);
  sub_1004DD03C();
  v2 = sub_1004DCC9C();
  *(v0 + 64) = v2;
  v3 = *(v2 - 8);
  *(v0 + 72) = v3;
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_10001074C(*(v0 + 56), &unk_100637C80, &unk_10051BD48);
    (*(v0 + 24))(0, 0);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 40);
    v7 = *(v0 + 48);
    v8 = sub_1004DCC0C();
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
    v9 = sub_1004DCB6C();
    (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
    v10 = swift_task_alloc();
    *(v0 + 80) = v10;
    *v10 = v0;
    v10[1] = sub_10012AE68;
    v11 = *(v0 + 48);
    v12 = *(v0 + 40);
    v13.n128_u64[0] = 0x4072C00000000000;
    v14.n128_u64[0] = 1.0;
    v15.n128_u64[0] = 0x4072C00000000000;

    return Artwork.image(width:height:pixelLength:cropStyle:format:cacheOwner:)(v11, v12, 0, 0, v13, v15, v14);
  }
}

uint64_t sub_10012AE68(uint64_t a1)
{
  v3 = *v2;
  (*v2)[11] = a1;

  if (v1)
  {
    v6 = v3 + 5;
    v4 = v3[5];
    v5 = v6[1];

    sub_10001074C(v4, &qword_100637C70, &qword_10051BD38);
    sub_10001074C(v5, &qword_100637C78, &qword_10051BD40);
    v7 = sub_10012B10C;
  }

  else
  {
    v8 = v3[8];
    v9 = v3[9];
    v11 = v3[6];
    v10 = v3[7];
    sub_10001074C(v3[5], &qword_100637C70, &qword_10051BD38);
    sub_10001074C(v11, &qword_100637C78, &qword_10051BD40);
    (*(v9 + 8))(v10, v8);
    v7 = sub_10012B018;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10012B018()
{
  v1 = UIImagePNGRepresentation(*(v0 + 88));
  if (v1)
  {
    v2 = v1;
    v3 = sub_1004D810C();
    v5 = v4;

    v6.super.isa = sub_1004D80FC().super.isa;
    sub_100010598(v3, v5);
  }

  else
  {
    v6.super.isa = 0;
  }

  v7 = *(v0 + 88);
  (*(v0 + 24))(v6.super.isa, 0);

  swift_unknownObjectRelease();

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_10012B10C()
{
  (*(*(v0 + 72) + 8))(*(v0 + 56), *(v0 + 64));
  (*(v0 + 24))(0, 0);

  v1 = *(v0 + 8);

  return v1();
}

double sub_10012B1AC(uint64_t a1, void *aBlock, uint64_t ObjCClassMetadata, uint64_t a4)
{
  v6 = *(a1 + 32);
  v7 = _Block_copy(aBlock);
  if (v7)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    v7 = sub_10012C460;
    if (!ObjCClassMetadata)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = 0;
  if (ObjCClassMetadata)
  {
LABEL_3:
    ObjCClassMetadata = swift_getObjCClassMetadata();
  }

LABEL_4:
  if (a4)
  {
    a4 = sub_1004DD21C();
  }

  v6(v7, v8, ObjCClassMetadata, a4);

  sub_10000DE74(v7, v8);

  return result;
}

void sub_10012B2B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_1004D7F3C();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t sub_10012B324(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10007330C;

  return v6(a1);
}

void *sub_10012B41C(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_10012B490@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_10012B4C0(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_10012B5B4;

  return v5(v2 + 32);
}

uint64_t sub_10012B5B4()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t _s9MusicCore13CollaborationO5SetupO5title6activeSSSb_tFZ_0(char a1)
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

uint64_t sub_10012B8F4(uint64_t a1, uint64_t a2)
{
  v6 = *(sub_1004D809C() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100035C88;

  return sub_10012F098(a1, a2, v2 + v7);
}

uint64_t sub_10012B9D4()
{
  swift_unknownObjectRelease();

  if (*(v0 + 72))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10012BA2C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100035C88;

  return sub_100122444(a1, v4, v5, v1 + 32);
}

uint64_t sub_10012BADC()
{
  if (qword_100633B60 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  v17 = v10;
  *v18 = v11;
  v19 = v12;
  v20 = v13;
  v14[0] = v6;
  v14[1] = v7;
  v15 = v8;
  v16 = v9;
  if ((Playlist.hasActiveCollaboration.getter() & 1) == 0)
  {
    if (BYTE1(v14[0]) != 1)
    {
      sub_10012BD08();
      swift_allocError();
      v4 = xmmword_1005127A0;
      goto LABEL_13;
    }

    if ((sub_100122804() & 1) == 0)
    {
      sub_10012BD08();
      swift_allocError();
      v4 = xmmword_100512810;
LABEL_13:
      *v3 = v4;
      v2 = v3 + 1;
      goto LABEL_14;
    }
  }

  if ((sub_1001202D0(3u, v15) & 1) == 0)
  {
    sub_10012BD08();
    swift_allocError();
    v4 = xmmword_100512820;
    goto LABEL_13;
  }

  if (v18[1] && ([v18[1] isMinorAccountHolder] & 1) == 0)
  {
    if (BYTE8(v14[0]))
    {
      return sub_100073E60(v14);
    }

    sub_10012BD08();
    swift_allocError();
    v4 = xmmword_1005127C0;
    goto LABEL_13;
  }

  sub_10012BD08();
  swift_allocError();
  v1 = v0;
  v2 = (v0 + 16);
  *v1 = 0;
  v1[1] = 0;
LABEL_14:
  *v2 = 3;
  swift_willThrow();
  return sub_100073E60(v14);
}

unint64_t sub_10012BD08()
{
  result = qword_100637970;
  if (!qword_100637970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100637970);
  }

  return result;
}

uint64_t sub_10012BD5C()
{

  return swift_deallocObject();
}

double sub_10012BD9C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_10012BE04()
{
  result = qword_100637A38;
  if (!qword_100637A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100637A38);
  }

  return result;
}

unint64_t sub_10012BE5C()
{
  result = qword_100637A40;
  if (!qword_100637A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100637A40);
  }

  return result;
}

uint64_t sub_10012BED0(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_10012BEEC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10012BF34(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_10012BF78(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_10012C008(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100035C88;

  return sub_10012B4C0(a1, v4);
}

uint64_t sub_10012C0C0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100035C88;

  return sub_10012B4C0(a1, v4);
}

uint64_t sub_10012C178(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100035B28;

  return sub_10012B4C0(a1, v4);
}

uint64_t sub_10012C230(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100035C88;

  return sub_10012B4C0(a1, v4);
}

uint64_t sub_10012C300(uint64_t (*a1)(void))
{
  v2 = a1(0);
  (*(*(v2 - 8) + 8))(v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80)), v2);

  return swift_deallocObject();
}

double sub_10012C390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(sub_1004DD05C() - 8);
  v10 = v4 + ((*(v9 + 80) + 16) & ~*(v9 + 80));

  return sub_10012A938(a1, a2, a3, a4, v10);
}

uint64_t sub_10012C428()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_10012C468()
{
  v1 = sub_1004DD05C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_10012C544(uint64_t a1)
{
  v4 = *(sub_1004DD05C() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100035B28;

  return sub_10012AB38(a1, v6, v7, v1 + v5, v9, v10);
}

uint64_t sub_10012C674(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10012C6BC()
{

  return swift_deallocObject();
}

__n128 static Alert.explicitRestrictedAlert(traitCollection:)@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1001362BC(a1, v6);
  v4 = v6[3];
  *(a2 + 32) = v6[2];
  *(a2 + 48) = v4;
  *(a2 + 64) = v7;
  result = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = result;
  return result;
}

__n128 static Alert.confirmDelete(for:library:)@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = sub_100008C70(a1, v5);
  sub_10012F264(v7, a2, v5, v6, v10);
  v8 = v10[3];
  *(a3 + 32) = v10[2];
  *(a3 + 48) = v8;
  *(a3 + 64) = v11;
  result = v10[1];
  *a3 = v10[0];
  *(a3 + 16) = result;
  return result;
}

__n128 static Alert.cellularDataDisallowedAlert(_:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1001375C8(a1, a2, v6);
  v4 = v6[3];
  *(a3 + 32) = v6[2];
  *(a3 + 48) = v4;
  *(a3 + 64) = v7;
  result = v6[1];
  *a3 = v6[0];
  *(a3 + 16) = result;
  return result;
}

__n128 static Alert.dolbyAtmosDownloadsAlert(message:completion:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_100137094(a1, a2, a3, a4, v9);
  v7 = v9[3];
  *(a5 + 32) = v9[2];
  *(a5 + 48) = v7;
  *(a5 + 64) = v10;
  result = v9[1];
  *a5 = v9[0];
  *(a5 + 16) = result;
  return result;
}

double static Alert.Action.cancel.getter@<D0>(uint64_t a1@<X8>)
{
  sub_100136DFC(v5);
  v3 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v3;
  result = *&v6;
  *(a1 + 32) = v6;
  *(a1 + 48) = v7;
  return result;
}

__n128 static Alert.enableCloudLibraryAlert(context:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100137B00(a1, v6);
  v4 = v6[3];
  *(a2 + 32) = v6[2];
  *(a2 + 48) = v4;
  *(a2 + 64) = v7;
  result = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = result;
  return result;
}

void static Alert.Action.tapToRadar(title:description:screenshots:attachments:files:keywords:withDevicePrefix:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, void (*a7)(char *, char *, uint64_t)@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10)
{
  v48 = a7;
  v49 = a8;
  v46 = a5;
  v47 = a6;
  v44 = a3;
  v45 = a4;
  v13 = sub_1004D82AC();
  v42 = *(v13 - 8);
  v43 = v13;
  __chkstk_darwin();
  v41 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1004D809C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin();
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v20 = &v40 - v19;
  sub_100004CB8(&qword_100634B30, &unk_100513D70);
  __chkstk_darwin();
  v22 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v24 = &v40 - v23;
  if (qword_100634428 != -1)
  {
    swift_once();
  }

  v25 = 0uLL;
  if (static DeviceCapabilities.isInternalInstall == 1)
  {
    sub_100165FA8(a1, a2, v44, v45, v46, v47, v48, v49, v24, a10 & 1);
    sub_1000EAC4C(v24, v22);
    if ((*(v16 + 48))(v22, 1, v15) == 1)
    {
      sub_100031B48(v24);
      v26 = v22;
LABEL_10:
      sub_100031B48(v26);
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v31 = 0;
      v25 = 0uLL;
      goto LABEL_11;
    }

    v48 = *(v16 + 32);
    v49 = v16 + 32;
    v48(v20, v22, v15);
    v32 = [objc_opt_self() sharedApplication];
    sub_1004D7FDC(v33);
    v35 = v34;
    v36 = [v32 canOpenURL:v34];

    if (!v36)
    {
      (*(v16 + 8))(v20, v15);
      v26 = v24;
      goto LABEL_10;
    }

    (*(v16 + 16))(v18, v20, v15);
    v37 = (*(v16 + 80) + 16) & ~*(v16 + 80);
    v31 = swift_allocObject();
    v48((v31 + v37), v18, v15);
    v38 = v41;
    _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
    v27 = sub_1004D827C();
    v28 = v39;
    (*(v42 + 8))(v38, v43);
    (*(v16 + 8))(v20, v15);
    sub_100031B48(v24);
    v25 = xmmword_100512830;
    v30 = &unk_10051DF20;
    v29 = 2;
  }

  else
  {
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
  }

LABEL_11:
  *a9 = v27;
  *(a9 + 8) = v28;
  *(a9 + 16) = v25;
  *(a9 + 32) = v29;
  *(a9 + 40) = v30;
  *(a9 + 48) = v31;
}

__n128 static Alert.cellularRestrictedAlert(model:)@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_100137DB4(a2, v5);
  v3 = v5[3];
  *(a1 + 32) = v5[2];
  *(a1 + 48) = v3;
  *(a1 + 64) = v6;
  result = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = result;
  return result;
}

id sub_10012CDCC()
{
  result = [objc_opt_self() sharedNetworkObserver];
  if (result)
  {
    v2 = result;
    [result setVideoCellularStreamingAllowed:1];

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10012CE80()
{
  result = [objc_opt_self() sharedNetworkObserver];
  if (result)
  {
    v2 = result;
    [result setMusicCellularStreamingAllowed:1];

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    __break(1u);
  }

  return result;
}

__n128 static Alert.networkUnavailableAlert(model:traitCollection:)@<Q0>(uint64_t a1@<X8>, uint64_t a2@<X0>, void *a3@<X1>)
{
  sub_100138C74(a2, a3, v6);
  v4 = v6[3];
  *(a1 + 32) = v6[2];
  *(a1 + 48) = v4;
  *(a1 + 64) = v7;
  result = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = result;
  return result;
}

char *static Alert.accountRequiredAlert(traitCollection:)@<X0>(void (*a1)(char *, char *, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v50 = a1;
  v3 = sub_1004D82AC();
  v58 = *(v3 - 8);
  v59 = v3;
  __chkstk_darwin();
  v57 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004D83FC();
  __chkstk_darwin();
  v5 = sub_1004DD3EC();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v45 - v9;
  sub_1004DD37C();
  v11 = *(v6 + 16);
  v11(v8, v10, v5);
  if (qword_100633A80 != -1)
  {
    swift_once();
  }

  v12 = qword_100671958;
  v13 = qword_100671958;
  sub_1004D838C();
  v56 = v13;
  v14 = sub_1004DD4AC();
  v54 = v15;
  v55 = v14;
  v16 = *(v6 + 8);
  v16(v10, v5);
  sub_1004DD37C();
  v11(v8, v10, v5);
  sub_1004D838C();
  v17 = sub_1004DD4AC();
  v52 = v18;
  v53 = v17;
  v16(v10, v5);
  v51 = v16;
  if (v50 && [v50 userInterfaceIdiom] == 3)
  {
    v19 = _swiftEmptyArrayStorage;
  }

  else
  {
    sub_1004DD37C();
    v50 = v11;
    v11(v8, v10, v5);
    v20 = v56;
    sub_1004D838C();
    v49 = v12;
    v21 = sub_1004DD4AC();
    v47 = v22;
    v48 = v21;
    v16(v10, v5);
    v23 = v57;
    _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
    v24 = sub_1004D827C();
    v45 = v25;
    v46 = v24;
    (*(v58 + 8))(v23, v59);
    v19 = sub_10003A840(0, 1, 1, _swiftEmptyArrayStorage);
    v27 = *(v19 + 2);
    v26 = *(v19 + 3);
    if (v27 >= v26 >> 1)
    {
      v19 = sub_10003A840((v26 > 1), v27 + 1, 1, v19);
    }

    *(v19 + 2) = v27 + 1;
    v28 = &v19[56 * v27];
    v29 = v45;
    *(v28 + 4) = v46;
    *(v28 + 5) = v29;
    v30 = v47;
    *(v28 + 6) = v48;
    *(v28 + 7) = v30;
    v28[64] = 2;
    *(v28 + 9) = &unk_10051BD78;
    *(v28 + 10) = 0;
    v11 = v50;
  }

  sub_1004DD37C();
  v11(v8, v10, v5);
  v31 = v56;
  sub_1004D838C();
  v32 = sub_1004DD4AC();
  v34 = v33;
  v51(v10, v5);
  v35 = v57;
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v36 = sub_1004D827C();
  v38 = v37;
  (*(v58 + 8))(v35, v59);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10003A840(0, *(v19 + 2) + 1, 1, v19);
    v19 = result;
  }

  v41 = *(v19 + 2);
  v40 = *(v19 + 3);
  if (v41 >= v40 >> 1)
  {
    result = sub_10003A840((v40 > 1), v41 + 1, 1, v19);
    v19 = result;
  }

  *(v19 + 2) = v41 + 1;
  v42 = &v19[56 * v41];
  *(v42 + 4) = v36;
  *(v42 + 5) = v38;
  *(v42 + 6) = v32;
  *(v42 + 7) = v34;
  v42[64] = 2;
  *(v42 + 9) = 0;
  *(v42 + 10) = 0;
  v43 = v54;
  *a2 = v55;
  *(a2 + 8) = v43;
  v44 = v52;
  *(a2 + 16) = v53;
  *(a2 + 24) = v44;
  *(a2 + 32) = 0;
  *(a2 + 33) = v61[0];
  *(a2 + 36) = *(v61 + 3);
  *(a2 + 40) = 0;
  *(a2 + 48) = 1;
  *(a2 + 49) = *v60;
  *(a2 + 52) = *&v60[3];
  *(a2 + 56) = v19;
  *(a2 + 64) = 0;
  return result;
}

id sub_10012D564()
{
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v2 = result;
    LSApplicationWorkspace.openSettings()();

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *static Alert.subscriptionRequiredAlert(traitCollection:)@<X0>(void (*a1)(char *, char *, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v50 = a1;
  v3 = sub_1004D82AC();
  v58 = *(v3 - 8);
  v59 = v3;
  __chkstk_darwin();
  v57 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004D83FC();
  __chkstk_darwin();
  v5 = sub_1004DD3EC();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v45 - v9;
  sub_1004DD37C();
  v11 = *(v6 + 16);
  v11(v8, v10, v5);
  if (qword_100633A80 != -1)
  {
    swift_once();
  }

  v12 = qword_100671958;
  v13 = qword_100671958;
  sub_1004D838C();
  v56 = v13;
  v14 = sub_1004DD4AC();
  v54 = v15;
  v55 = v14;
  v16 = *(v6 + 8);
  v16(v10, v5);
  sub_1004DD37C();
  v11(v8, v10, v5);
  sub_1004D838C();
  v17 = sub_1004DD4AC();
  v52 = v18;
  v53 = v17;
  v16(v10, v5);
  v51 = v16;
  if (v50 && [v50 userInterfaceIdiom] == 3)
  {
    v19 = _swiftEmptyArrayStorage;
  }

  else
  {
    sub_1004DD37C();
    v50 = v11;
    v11(v8, v10, v5);
    v20 = v56;
    sub_1004D838C();
    v49 = v12;
    v21 = sub_1004DD4AC();
    v47 = v22;
    v48 = v21;
    v16(v10, v5);
    v23 = v57;
    _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
    v24 = sub_1004D827C();
    v45 = v25;
    v46 = v24;
    (*(v58 + 8))(v23, v59);
    v19 = sub_10003A840(0, 1, 1, _swiftEmptyArrayStorage);
    v27 = *(v19 + 2);
    v26 = *(v19 + 3);
    if (v27 >= v26 >> 1)
    {
      v19 = sub_10003A840((v26 > 1), v27 + 1, 1, v19);
    }

    *(v19 + 2) = v27 + 1;
    v28 = &v19[56 * v27];
    v29 = v45;
    *(v28 + 4) = v46;
    *(v28 + 5) = v29;
    v30 = v47;
    *(v28 + 6) = v48;
    *(v28 + 7) = v30;
    v28[64] = 2;
    *(v28 + 9) = &unk_10051BD80;
    *(v28 + 10) = 0;
    v11 = v50;
  }

  sub_1004DD37C();
  v11(v8, v10, v5);
  v31 = v56;
  sub_1004D838C();
  v32 = sub_1004DD4AC();
  v34 = v33;
  v51(v10, v5);
  v35 = v57;
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v36 = sub_1004D827C();
  v38 = v37;
  (*(v58 + 8))(v35, v59);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10003A840(0, *(v19 + 2) + 1, 1, v19);
    v19 = result;
  }

  v41 = *(v19 + 2);
  v40 = *(v19 + 3);
  if (v41 >= v40 >> 1)
  {
    result = sub_10003A840((v40 > 1), v41 + 1, 1, v19);
    v19 = result;
  }

  *(v19 + 2) = v41 + 1;
  v42 = &v19[56 * v41];
  *(v42 + 4) = v36;
  *(v42 + 5) = v38;
  *(v42 + 6) = v32;
  *(v42 + 7) = v34;
  v42[64] = 2;
  *(v42 + 9) = 0;
  *(v42 + 10) = 0;
  v43 = v54;
  *a2 = v55;
  *(a2 + 8) = v43;
  v44 = v52;
  *(a2 + 16) = v53;
  *(a2 + 24) = v44;
  *(a2 + 32) = 0;
  *(a2 + 33) = v61[0];
  *(a2 + 36) = *(v61 + 3);
  *(a2 + 40) = 0;
  *(a2 + 48) = 1;
  *(a2 + 49) = *v60;
  *(a2 + 52) = *&v60[3];
  *(a2 + 56) = v19;
  *(a2 + 64) = 0;
  return result;
}

id sub_10012DBCC()
{
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
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v6 = result;
    sub_1004DD43C();
    v7 = sub_1004DD3FC();

    [v6 setBoolValue:1 forSetting:v7];

    v8 = *(v0 + 8);

    return v8();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10012DD60()
{
  v1 = [objc_opt_self() defaultWorkspace];
  if (v1)
  {
    v2 = v1;
    LSApplicationWorkspace.openRestrictions()();
  }

  v3 = *(v0 + 8);

  return v3();
}

double static Alert.contentUnavailableAlert()@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1004D82AC();
  v29 = *(v2 - 8);
  v30 = v2;
  __chkstk_darwin();
  v28 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004D83FC();
  __chkstk_darwin();
  v4 = sub_1004DD3EC();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v26 - v8;
  sub_1004DD37C();
  v10 = *(v5 + 16);
  v10(v7, v9, v4);
  if (qword_100633A80 != -1)
  {
    swift_once();
  }

  v11 = qword_100671958;
  sub_1004D838C();
  v12 = v11;
  v13 = sub_1004DD4AC();
  v26 = v14;
  v27 = v13;
  v15 = *(v5 + 8);
  v15(v9, v4);
  sub_1004DD37C();
  v10(v7, v9, v4);
  sub_1004D838C();
  v16 = sub_1004DD4AC();
  v18 = v17;
  v15(v9, v4);
  v19 = v28;
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v20 = sub_1004D827C();
  v22 = v21;
  (*(v29 + 8))(v19, v30);
  sub_100004CB8(&qword_100634F40, &qword_100515800);
  v23 = swift_allocObject();
  *&result = 1;
  *(v23 + 16) = xmmword_100511DA0;
  *(v23 + 32) = v20;
  *(v23 + 40) = v22;
  *(v23 + 48) = v16;
  *(v23 + 56) = v18;
  *(v23 + 64) = 2;
  *(v23 + 72) = 0;
  *(v23 + 80) = 0;
  *a1 = 0;
  *(a1 + 8) = 0;
  v25 = v26;
  *(a1 + 16) = v27;
  *(a1 + 24) = v25;
  *(a1 + 32) = 0;
  *(a1 + 33) = *v32;
  *(a1 + 36) = *&v32[3];
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  *(a1 + 49) = *v31;
  *(a1 + 52) = *&v31[3];
  *(a1 + 56) = v23;
  *(a1 + 64) = 0;
  return result;
}

double static Alert.userUploadRequiredAlert()@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1004D82AC();
  v34 = *(v2 - 8);
  v35 = v2;
  __chkstk_darwin();
  v33 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004D83FC();
  __chkstk_darwin();
  v4 = sub_1004DD3EC();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v29 - v8;
  sub_1004DD37C();
  v10 = *(v5 + 16);
  v10(v7, v9, v4);
  if (qword_100633A80 != -1)
  {
    swift_once();
  }

  v11 = qword_100671958;
  sub_1004D838C();
  v12 = v11;
  v13 = sub_1004DD4AC();
  v31 = v14;
  v32 = v13;
  v15 = *(v5 + 8);
  v15(v9, v4);
  sub_1004DD37C();
  v10(v7, v9, v4);
  sub_1004D838C();
  v16 = sub_1004DD4AC();
  v29 = v17;
  v30 = v16;
  v15(v9, v4);
  sub_1004DD37C();
  v10(v7, v9, v4);
  sub_1004D838C();
  v18 = sub_1004DD4AC();
  v20 = v19;
  v15(v9, v4);
  v21 = v33;
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v22 = sub_1004D827C();
  v24 = v23;
  (*(v34 + 8))(v21, v35);
  sub_100004CB8(&qword_100634F40, &qword_100515800);
  v25 = swift_allocObject();
  *&result = 1;
  *(v25 + 16) = xmmword_100511DA0;
  *(v25 + 32) = v22;
  *(v25 + 40) = v24;
  *(v25 + 48) = v18;
  *(v25 + 56) = v20;
  *(v25 + 64) = 2;
  *(v25 + 72) = 0;
  *(v25 + 80) = 0;
  v27 = v31;
  *a1 = v32;
  *(a1 + 8) = v27;
  v28 = v29;
  *(a1 + 16) = v30;
  *(a1 + 24) = v28;
  *(a1 + 32) = 0;
  *(a1 + 33) = *v37;
  *(a1 + 36) = *&v37[3];
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  *(a1 + 49) = *v36;
  *(a1 + 52) = *&v36[3];
  *(a1 + 56) = v25;
  *(a1 + 64) = 0;
  return result;
}

__n128 static Alert.ageVerificationFallbackAlert()@<Q0>(uint64_t a1@<X8>)
{
  sub_1001393C8(v4);
  v2 = v4[3];
  *(a1 + 32) = v4[2];
  *(a1 + 48) = v2;
  *(a1 + 64) = v5;
  result = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10012E5E8()
{
  if (qword_100633D00 != -1)
  {
    swift_once();
  }

  CloudLibrary.StatusObserver.enableCloudLibrary(completion:)(0, 0);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10012E688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a3;
  *(v4 + 24) = a4;
  return _swift_task_switch(sub_10012E6A8, 0, 0);
}

uint64_t sub_10012E6A8()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v1(0);
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10012E718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a3;
  *(v4 + 24) = a4;
  return _swift_task_switch(sub_10012E738, 0, 0);
}

id sub_10012E738()
{
  result = [objc_opt_self() sharedNetworkObserver];
  if (result)
  {
    v2 = result;
    v3 = *(v0 + 16);
    [result setMusicCellularDownloadingAllowed:1];

    if (v3)
    {
      (*(v0 + 16))(1);
    }

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10012E7E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  return _swift_task_switch(sub_10012E808, 0, 0);
}

uint64_t sub_10012E808()
{
  v1 = *(v0 + 24);
  v3 = v1[3];
  v2 = v1[4];
  v4 = sub_100008C70(v1, v3);
  v5 = swift_task_alloc();
  *(v0 + 40) = v5;
  *v5 = v0;
  v5[1] = sub_10012E8C4;

  return MusicLibrary.remove<A>(_:)(v4, v3, v2);
}

uint64_t sub_10012E8C4()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10012E9F8, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_10012E9F8()
{
  v14 = v0;
  if (qword_100633A88 != -1)
  {
    swift_once();
  }

  v1 = sub_1004D966C();
  sub_100035430(v1, static Logger.actions);
  swift_errorRetain();
  v2 = sub_1004D964C();
  v3 = sub_1004DDF7C();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[6];
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    v0[2] = v5;
    swift_errorRetain();
    sub_100004CB8(&qword_100638980, &qword_100515B30);
    v8 = sub_1004DD4DC();
    v10 = sub_1000343A8(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to delete item=%s", v6, 0xCu);
    sub_100008D24(v7);
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_10012EBC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a3;
  *(v4 + 24) = a4;
  return _swift_task_switch(sub_10012EBE8, 0, 0);
}

uint64_t sub_10012EBE8()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() standardUserDefaults];
  [v2 setPrefersSpatialDownloads:1];

  v5 = (v1 + *v1);
  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  *v3 = v0;
  v3[1] = sub_10012ED14;

  return v5(1);
}

uint64_t sub_10012ED14()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10012EE08(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_100035B28;

  return v6(0);
}

__n128 static Alert.downloadPinsAlert(completion:)@<Q0>(uint64_t a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  sub_1001396CC(a2, a3, v6);
  v4 = v6[3];
  *(a1 + 32) = v6[2];
  *(a1 + 48) = v4;
  *(a1 + 64) = v7;
  result = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10012EF44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a3;
  *(v4 + 24) = a4;
  return _swift_task_switch(sub_10012EF64, 0, 0);
}

uint64_t sub_10012EF64()
{
  (*(v0 + 16))(0);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10012EFCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a3;
  *(v4 + 24) = a4;
  return _swift_task_switch(sub_10012EFEC, 0, 0);
}

id sub_10012EFEC()
{
  result = [objc_opt_self() sharedCloudController];
  if (result)
  {
    v2 = result;
    v3 = *(v0 + 16);
    [result enableAutomaticDownloadsForPinnedLibraryEntities];

    v3(1);
    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10012F098(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a3;
  sub_1004DDA4C();
  *(v3 + 24) = sub_1004DDA3C();
  v5 = sub_1004DD9BC();

  return _swift_task_switch(sub_10012F130, v5, v4);
}

uint64_t sub_10012F130()
{

  v1 = [objc_opt_self() sharedApplication];
  sub_1004D7FDC(v2);
  v4 = v3;
  sub_10005F120(_swiftEmptyArrayStorage);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_10013A268(&qword_100634D20, type metadata accessor for OpenExternalURLOptionsKey, &unk_100514CF4);
  isa = sub_1004DD1FC().super.isa;

  [v1 openURL:v4 options:isa completionHandler:0];

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10012F264@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v33 = a2;
  v9 = sub_1004D82AC();
  v34 = *(v9 - 8);
  v35 = v9;
  __chkstk_darwin();
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004D83FC();
  __chkstk_darwin();
  v12 = sub_1004DD3EC();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = &v32 - v16;
  v37[3] = a3;
  v37[4] = a4;
  v36 = a4;
  v18 = sub_1000357EC(v37);
  (*(*(a3 - 8) + 16))(v18, a1, a3);
  sub_1004DD37C();
  (*(v13 + 16))(v15, v17, v12);
  if (qword_100633A80 != -1)
  {
    swift_once();
  }

  v19 = qword_100671958;
  sub_1004D838C();
  v32 = sub_1004DD4AC();
  v21 = v20;
  (*(v13 + 8))(v17, v12);
  sub_100035868(v37, v38);
  v22 = swift_allocObject();
  sub_100035850(v38, v22 + 16);
  *(v22 + 56) = v33;

  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v23 = sub_1004D827C();
  v25 = v24;
  (*(v34 + 8))(v11, v35);
  v26 = sub_100134D4C(v18, a3, v36);
  v28 = v27;
  sub_100004CB8(&qword_100634F40, &qword_100515800);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1005126C0;
  *(v29 + 32) = v23;
  *(v29 + 40) = v25;
  *(v29 + 48) = v32;
  *(v29 + 56) = v21;
  *(v29 + 64) = 1;
  *(v29 + 72) = &unk_10051BE18;
  *(v29 + 80) = v22;

  sub_100136DFC(v38);
  v30 = v38[1];
  *(v29 + 88) = v38[0];
  *(v29 + 104) = v30;
  *(v29 + 120) = v38[2];
  *(v29 + 136) = v39;

  result = sub_100008D24(v37);
  *a5 = 0;
  *(a5 + 8) = 0;
  *(a5 + 16) = v26;
  *(a5 + 24) = v28;
  *(a5 + 32) = 1;
  *(a5 + 33) = v38[0];
  *(a5 + 36) = *(v38 + 3);
  *(a5 + 40) = 0;
  *(a5 + 48) = 1;
  *(a5 + 49) = v37[0];
  *(a5 + 52) = *(v37 + 3);
  *(a5 + 56) = v29;
  *(a5 + 64) = 0;
  return result;
}

uint64_t sub_10012F68C(uint64_t a1)
{
  v115 = a1;
  v94 = sub_1004DCAAC();
  v88 = *(v94 - 8);
  __chkstk_darwin();
  v86 = &v82 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v87 = &v82 - v2;
  __chkstk_darwin();
  v89 = &v82 - v3;
  v91 = sub_1004DCF8C();
  v90 = *(v91 - 8);
  __chkstk_darwin();
  v92 = &v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_1004DD01C();
  v95 = *(v98 - 8);
  __chkstk_darwin();
  v93 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v96 = &v82 - v6;
  v100 = sub_1004D92AC();
  v97 = *(v100 - 8);
  __chkstk_darwin();
  v82 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v101 = &v82 - v8;
  v102 = sub_1004D924C();
  v99 = *(v102 - 8);
  __chkstk_darwin();
  v104 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_1004D8FEC();
  v103 = *(v106 - 8);
  __chkstk_darwin();
  v85 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v107 = &v82 - v11;
  v12 = sub_1004DC95C();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v84 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v109 = &v82 - v15;
  v111 = sub_1004DD05C();
  v108 = *(v111 - 8);
  __chkstk_darwin();
  v110 = &v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1004DC2DC();
  v112 = *(v17 - 8);
  __chkstk_darwin();
  v83 = &v82 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v20 = &v82 - v19;
  sub_1004D83FC();
  __chkstk_darwin();
  v114 = &v82 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1004DD3EC();
  v23 = *(v22 - 8);
  __chkstk_darwin();
  v25 = &v82 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v27 = &v82 - v26;
  v28 = sub_1004DCA0C();
  v113 = *(v28 - 8);
  __chkstk_darwin();
  v30 = &v82 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117[3] = v12;
  v117[4] = &protocol witness table for Song;
  v31 = sub_1000357EC(v117);
  v105 = v13;
  v32 = *(v13 + 16);
  v33 = v115;
  v115 = v12;
  v32(v31, v33, v12);
  sub_100035868(v117, &v116);
  sub_100004CB8(&qword_100637D08, &qword_10051BE20);
  if (swift_dynamicCast())
  {
    sub_1004DD37C();
    (*(v23 + 16))(v25, v27, v22);
    if (qword_100633A80 != -1)
    {
      swift_once();
    }

    v34 = qword_100671958;
    sub_1004D838C();
    v35 = sub_1004DD4AC();
    (*(v23 + 8))(v27, v22);
    v36 = *(v113 + 8);
    v37 = v30;
    goto LABEL_5;
  }

  if (swift_dynamicCast())
  {
    sub_1004DD37C();
    (*(v23 + 16))(v25, v27, v22);
    if (qword_100633A80 != -1)
    {
      swift_once();
    }

    v39 = qword_100671958;
    sub_1004D838C();
    v35 = sub_1004DD4AC();
    (*(v23 + 8))(v27, v22);
    (*(v112 + 8))(v20, v17);
    goto LABEL_15;
  }

  v41 = v110;
  v40 = v111;
  if (swift_dynamicCast())
  {
    sub_1004DD37C();
    (*(v23 + 16))(v25, v27, v22);
    if (qword_100633A80 != -1)
    {
      swift_once();
    }

    v42 = qword_100671958;
    sub_1004D838C();
    v35 = sub_1004DD4AC();
    (*(v23 + 8))(v27, v22);
    v36 = *(v108 + 8);
    v37 = v41;
    v38 = v40;
    goto LABEL_14;
  }

  v28 = v115;
  if (swift_dynamicCast())
  {
    sub_1004DD37C();
    (*(v23 + 16))(v25, v27, v22);
    if (qword_100633A80 != -1)
    {
      swift_once();
    }

    v44 = qword_100671958;
    sub_1004D838C();
    v35 = sub_1004DD4AC();
    (*(v23 + 8))(v27, v22);
    v36 = *(v105 + 8);
    v37 = v109;
    goto LABEL_5;
  }

  v28 = v106;
  if (swift_dynamicCast())
  {
    sub_1004DD37C();
    (*(v23 + 16))(v25, v27, v22);
    if (qword_100633A80 != -1)
    {
      swift_once();
    }

    v45 = qword_100671958;
    sub_1004D838C();
    v35 = sub_1004DD4AC();
    (*(v23 + 8))(v27, v22);
    v36 = *(v103 + 8);
    v37 = v107;
    goto LABEL_5;
  }

  v28 = v102;
  if (swift_dynamicCast())
  {
    sub_1004DD37C();
    (*(v23 + 16))(v25, v27, v22);
    if (qword_100633A80 != -1)
    {
      swift_once();
    }

    v46 = qword_100671958;
    sub_1004D838C();
    v35 = sub_1004DD4AC();
    (*(v23 + 8))(v27, v22);
    v36 = *(v99 + 8);
    v47 = &v119;
LABEL_33:
    v37 = *(v47 - 32);
LABEL_5:
    v38 = v28;
LABEL_14:
    v36(v37, v38);
LABEL_15:
    sub_100008D24(&v116);
LABEL_16:
    sub_100008D24(v117);
    return v35;
  }

  v28 = v100;
  v48 = v23;
  if (swift_dynamicCast())
  {
    sub_1004DD37C();
    (*(v23 + 16))(v25, v27, v22);
    if (qword_100633A80 != -1)
    {
      swift_once();
    }

    v49 = qword_100671958;
    sub_1004D838C();
    v35 = sub_1004DD4AC();
    (*(v23 + 8))(v27, v22);
    v36 = *(v97 + 8);
    v47 = &v118;
    goto LABEL_33;
  }

  v50 = v96;
  v51 = v98;
  if (!swift_dynamicCast())
  {
    v63 = v89;
    v64 = v94;
    v65 = swift_dynamicCast();
    v66 = v25;
    v67 = v115;
    if (v65)
    {
      v68 = v88;
      v69 = v87;
      (*(v88 + 32))(v87, v63, v64);
      v70 = v86;
      (*(v68 + 16))(v86, v69, v64);
      v71 = (*(v68 + 88))(v70, v64);
      if (v71 == enum case for Track.song(_:))
      {
        (*(v68 + 96))(v70, v64);
        v72 = v105;
        v73 = v84;
        (*(v105 + 32))(v84, v70, v67);
        v74 = sub_10012F68C(v73);
        v75 = v67;
        v35 = v74;
        (*(v72 + 8))(v73, v75);
LABEL_46:
        (*(v68 + 8))(v69, v64);
        goto LABEL_15;
      }

      if (v71 == enum case for Track.musicVideo(_:))
      {
        (*(v68 + 96))(v70, v64);
        v78 = v112;
        v79 = v83;
        (*(v112 + 32))(v83, v70, v17);
        v35 = sub_100130BD4(v79);
        (*(v78 + 8))(v79, v17);
        goto LABEL_46;
      }

      v80 = *(v68 + 8);
      v80(v69, v64);
      v80(v70, v64);
    }

LABEL_55:
    sub_100008D24(&v116);
    sub_1004DD37C();
    (*(v48 + 16))(v66, v27, v22);
    if (qword_100633A80 != -1)
    {
      swift_once();
    }

    v81 = qword_100671958;
    sub_1004D838C();
    v35 = sub_1004DD4AC();
    (*(v48 + 8))(v27, v22);
    goto LABEL_16;
  }

  v52 = v95;
  v53 = v93;
  (*(v95 + 32))(v93, v50, v51);
  v54 = v92;
  sub_1004DCF9C();
  v55 = v90;
  v56 = v91;
  v57 = (*(v90 + 88))(v54, v91);
  if (v57 == enum case for Playlist.Entry.InternalItem.musicMovie(_:))
  {
    (*(v55 + 96))(v54, v56);
    v58 = v103;
    v59 = v85;
    v60 = v106;
    (*(v103 + 32))(v85, v54, v106);
    v61 = sub_1001321A0(v59);
LABEL_37:
    v62 = v60;
    v35 = v61;
    (*(v58 + 8))(v59, v62);
LABEL_43:
    (*(v52 + 8))(v53, v98);
    goto LABEL_15;
  }

  if (v57 == enum case for Playlist.Entry.InternalItem.musicVideo(_:))
  {
    (*(v55 + 96))(v54, v56);
    v76 = v112;
    v77 = v83;
    (*(v112 + 32))(v83, v54, v17);
    v35 = sub_100130BD4(v77);
    (*(v76 + 8))(v77, v17);
    goto LABEL_43;
  }

  if (v57 == enum case for Playlist.Entry.InternalItem.song(_:))
  {
    (*(v55 + 96))(v54, v56);
    v58 = v105;
    v59 = v84;
    v60 = v115;
    (*(v105 + 32))(v84, v54, v115);
    v61 = sub_10012F68C(v59);
    goto LABEL_37;
  }

  if (v57 == enum case for Playlist.Entry.InternalItem.tvEpisode(_:))
  {
    (*(v55 + 96))(v54, v56);
    v58 = v97;
    v59 = v82;
    v60 = v100;
    (*(v97 + 32))(v82, v54, v100);
    v61 = sub_100133758(v59);
    goto LABEL_37;
  }

  if (v57 != enum case for Playlist.Entry.InternalItem.uploadedAudio(_:) && v57 != enum case for Playlist.Entry.InternalItem.uploadedVideo(_:))
  {
    (*(v52 + 8))(v53, v98);
    (*(v55 + 8))(v54, v56);
    v66 = v25;
    goto LABEL_55;
  }

  (*(v55 + 8))(v54, v56);
  result = sub_1004DECCC();
  __break(1u);
  return result;
}

uint64_t sub_100130BD4(uint64_t a1)
{
  v120 = a1;
  v97 = sub_1004DCAAC();
  v93 = *(v97 - 8);
  __chkstk_darwin();
  v91 = &v87 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v92 = &v87 - v2;
  __chkstk_darwin();
  v94 = &v87 - v3;
  v95 = sub_1004DCF8C();
  v99 = *(v95 - 8);
  __chkstk_darwin();
  v96 = &v87 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_1004DD01C();
  v98 = *(v103 - 8);
  __chkstk_darwin();
  v100 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v101 = &v87 - v6;
  v106 = sub_1004D92AC();
  v102 = *(v106 - 8);
  __chkstk_darwin();
  v87 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v105 = &v87 - v8;
  v107 = sub_1004D924C();
  v104 = *(v107 - 8);
  __chkstk_darwin();
  v109 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_1004D8FEC();
  v108 = *(v112 - 8);
  __chkstk_darwin();
  v90 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v111 = &v87 - v11;
  v115 = sub_1004DC95C();
  v110 = *(v115 - 8);
  __chkstk_darwin();
  v89 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v114 = &v87 - v13;
  v118 = sub_1004DD05C();
  v113 = *(v118 - 8);
  __chkstk_darwin();
  v117 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1004DC2DC();
  v16 = *(v15 - 8);
  __chkstk_darwin();
  v88 = &v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v19 = &v87 - v18;
  sub_1004D83FC();
  __chkstk_darwin();
  v119 = &v87 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1004DD3EC();
  v22 = *(v21 - 8);
  __chkstk_darwin();
  v24 = &v87 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v26 = &v87 - v25;
  v27 = sub_1004DCA0C();
  v28 = *(v27 - 8);
  __chkstk_darwin();
  v30 = &v87 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122[3] = v15;
  v122[4] = &protocol witness table for MusicVideo;
  v31 = sub_1000357EC(v122);
  v116 = v16;
  (*(v16 + 16))(v31, v120, v15);
  sub_100035868(v122, &v121);
  sub_100004CB8(&qword_100637D08, &qword_10051BE20);
  if (swift_dynamicCast())
  {
    sub_1004DD37C();
    (*(v22 + 16))(v24, v26, v21);
    if (qword_100633A80 != -1)
    {
      swift_once();
    }

    v32 = qword_100671958;
    sub_1004D838C();
    v33 = sub_1004DD4AC();
    (*(v22 + 8))(v26, v21);
    (*(v28 + 8))(v30, v27);
    goto LABEL_29;
  }

  if (swift_dynamicCast())
  {
    sub_1004DD37C();
    (*(v22 + 16))(v24, v26, v21);
    if (qword_100633A80 != -1)
    {
      swift_once();
    }

    v34 = qword_100671958;
    sub_1004D838C();
    v33 = sub_1004DD4AC();
    (*(v22 + 8))(v26, v21);
    (*(v116 + 8))(v19, v15);
    goto LABEL_29;
  }

  if (swift_dynamicCast())
  {
    sub_1004DD37C();
    (*(v22 + 16))(v24, v26, v21);
    if (qword_100633A80 != -1)
    {
      swift_once();
    }

    v35 = qword_100671958;
    sub_1004D838C();
    v33 = sub_1004DD4AC();
    (*(v22 + 8))(v26, v21);
    (*(v113 + 8))(v117, v118);
    goto LABEL_29;
  }

  if (swift_dynamicCast())
  {
    sub_1004DD37C();
    (*(v22 + 16))(v24, v26, v21);
    if (qword_100633A80 != -1)
    {
      swift_once();
    }

    v36 = qword_100671958;
    sub_1004D838C();
    v33 = sub_1004DD4AC();
    (*(v22 + 8))(v26, v21);
    (*(v110 + 8))(v114, v115);
    goto LABEL_29;
  }

  v37 = v26;
  if (swift_dynamicCast())
  {
    sub_1004DD37C();
    (*(v22 + 16))(v24, v26, v21);
    if (qword_100633A80 != -1)
    {
      swift_once();
    }

    v38 = qword_100671958;
    sub_1004D838C();
    v33 = sub_1004DD4AC();
    (*(v22 + 8))(v26, v21);
    (*(v108 + 8))(v111, v112);
    goto LABEL_29;
  }

  v39 = v107;
  v40 = v21;
  if (swift_dynamicCast())
  {
    sub_1004DD37C();
    (*(v22 + 16))(v24, v37, v21);
    if (qword_100633A80 != -1)
    {
      swift_once();
    }

    v41 = qword_100671958;
    sub_1004D838C();
    v33 = sub_1004DD4AC();
    (*(v22 + 8))(v37, v21);
    (*(v104 + 8))(v109, v39);
    goto LABEL_29;
  }

  v42 = v105;
  v43 = v106;
  v44 = v22;
  if (swift_dynamicCast())
  {
    sub_1004DD37C();
    (*(v22 + 16))(v24, v37, v40);
    if (qword_100633A80 != -1)
    {
      swift_once();
    }

    v45 = qword_100671958;
    sub_1004D838C();
    v33 = sub_1004DD4AC();
    (*(v22 + 8))(v37, v40);
    (*(v102 + 8))(v42, v43);
    goto LABEL_29;
  }

  v47 = v101;
  v48 = v103;
  if (!swift_dynamicCast())
  {
    v60 = v94;
    v61 = v97;
    v62 = v24;
    if (swift_dynamicCast())
    {
      v63 = v60;
      v64 = v93;
      v65 = v92;
      (*(v93 + 32))(v92, v63, v61);
      v66 = v91;
      (*(v64 + 16))(v91, v65, v61);
      v67 = (*(v64 + 88))(v66, v61);
      if (v67 == enum case for Track.song(_:))
      {
        (*(v64 + 96))(v66, v61);
        v68 = v110;
        v69 = v89;
        v70 = v115;
        (*(v110 + 32))(v89, v66, v115);
        v71 = sub_10012F68C(v69);
        v72 = v70;
        v33 = v71;
        (*(v68 + 8))(v69, v72);
LABEL_42:
        (*(v64 + 8))(v65, v61);
        goto LABEL_29;
      }

      if (v67 == enum case for Track.musicVideo(_:))
      {
        (*(v64 + 96))(v66, v61);
        v76 = v116;
        v77 = v88;
        (*(v116 + 32))(v88, v66, v15);
        v78 = sub_100130BD4(v77);
        (*(v76 + 8))(v77, v15);
        v33 = v78;
        goto LABEL_42;
      }

      v84 = *(v64 + 8);
      v84(v65, v61);
      v84(v66, v61);
    }

LABEL_52:
    sub_100008D24(&v121);
    sub_1004DD37C();
    (*(v44 + 16))(v62, v37, v40);
    if (qword_100633A80 != -1)
    {
      swift_once();
    }

    v86 = qword_100671958;
    sub_1004D838C();
    v33 = sub_1004DD4AC();
    (*(v44 + 8))(v37, v40);
    goto LABEL_30;
  }

  v49 = v98;
  v50 = v100;
  (*(v98 + 32))(v100, v47, v48);
  v51 = v96;
  sub_1004DCF9C();
  v52 = v99;
  v53 = v95;
  v54 = (*(v99 + 88))(v51, v95);
  if (v54 == enum case for Playlist.Entry.InternalItem.musicMovie(_:))
  {
    (*(v52 + 96))(v51, v53);
    v55 = v108;
    v56 = v90;
    v57 = v112;
    (*(v108 + 32))(v90, v51, v112);
    v58 = sub_1001321A0(v56);
LABEL_34:
    v59 = v57;
    v33 = v58;
    (*(v55 + 8))(v56, v59);
    (*(v49 + 8))(v50, v103);
LABEL_29:
    sub_100008D24(&v121);
LABEL_30:
    sub_100008D24(v122);
    return v33;
  }

  if (v54 == enum case for Playlist.Entry.InternalItem.musicVideo(_:))
  {
    (*(v99 + 96))(v51, v53);
    v73 = v116;
    v74 = v88;
    (*(v116 + 32))(v88, v51, v15);
    v75 = sub_100130BD4(v74);
    (*(v73 + 8))(v74, v15);
    v33 = v75;
LABEL_45:
    (*(v49 + 8))(v100, v103);
    goto LABEL_29;
  }

  if (v54 == enum case for Playlist.Entry.InternalItem.song(_:))
  {
    (*(v99 + 96))(v51, v53);
    v79 = v110;
    v80 = v89;
    v81 = v115;
    (*(v110 + 32))(v89, v51, v115);
    v82 = sub_10012F68C(v80);
    v83 = v81;
    v33 = v82;
    (*(v79 + 8))(v80, v83);
    goto LABEL_45;
  }

  v85 = v99;
  v50 = v100;
  if (v54 == enum case for Playlist.Entry.InternalItem.tvEpisode(_:))
  {
    (*(v99 + 96))(v51, v53);
    v55 = v102;
    v56 = v87;
    v57 = v106;
    (*(v102 + 32))(v87, v51, v106);
    v58 = sub_100133758(v56);
    goto LABEL_34;
  }

  if (v54 != enum case for Playlist.Entry.InternalItem.uploadedAudio(_:) && v54 != enum case for Playlist.Entry.InternalItem.uploadedVideo(_:))
  {
    (*(v49 + 8))(v100, v103);
    (*(v85 + 8))(v51, v53);
    v62 = v24;
    goto LABEL_52;
  }

  (*(v99 + 8))(v51, v53);
  result = sub_1004DECCC();
  __break(1u);
  return result;
}

uint64_t sub_1001321A0(uint64_t a1)
{
  v114 = a1;
  v94 = sub_1004DCAAC();
  v89 = *(v94 - 8);
  __chkstk_darwin();
  v87 = &v82 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v88 = &v82 - v2;
  __chkstk_darwin();
  v90 = &v82 - v3;
  v92 = sub_1004DCF8C();
  v91 = *(v92 - 8);
  __chkstk_darwin();
  v93 = &v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_1004DD01C();
  v95 = *(v99 - 8);
  __chkstk_darwin();
  v96 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v97 = &v82 - v6;
  v101 = sub_1004D92AC();
  v98 = *(v101 - 8);
  __chkstk_darwin();
  v83 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v102 = &v82 - v8;
  v103 = sub_1004D924C();
  v100 = *(v103 - 8);
  __chkstk_darwin();
  v104 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1004D8FEC();
  v115 = *(v10 - 8);
  __chkstk_darwin();
  v86 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v106 = &v82 - v12;
  v109 = sub_1004DC95C();
  v105 = *(v109 - 8);
  __chkstk_darwin();
  v85 = &v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v108 = &v82 - v14;
  v110 = sub_1004DD05C();
  v107 = *(v110 - 8);
  __chkstk_darwin();
  v112 = &v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1004DC2DC();
  v111 = *(v16 - 8);
  __chkstk_darwin();
  v84 = &v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v19 = &v82 - v18;
  sub_1004D83FC();
  __chkstk_darwin();
  v113 = &v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1004DD3EC();
  v22 = *(v21 - 8);
  __chkstk_darwin();
  v24 = &v82 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v26 = &v82 - v25;
  v27 = sub_1004DCA0C();
  v28 = *(v27 - 8);
  __chkstk_darwin();
  v30 = &v82 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117[3] = v10;
  v117[4] = sub_10013A268(&qword_100637D10, &type metadata accessor for MusicMovie, &protocol conformance descriptor for MusicMovie);
  v31 = sub_1000357EC(v117);
  v32 = v114;
  v33 = *(v115 + 16);
  v114 = v10;
  v33(v31, v32, v10);
  sub_100035868(v117, &v116);
  sub_100004CB8(&qword_100637D08, &qword_10051BE20);
  if (swift_dynamicCast())
  {
    sub_1004DD37C();
    (*(v22 + 16))(v24, v26, v21);
    if (qword_100633A80 != -1)
    {
      swift_once();
    }

    v34 = qword_100671958;
    sub_1004D838C();
    v35 = sub_1004DD4AC();
    (*(v22 + 8))(v26, v21);
    (*(v28 + 8))(v30, v27);
    goto LABEL_16;
  }

  v36 = v16;
  if (swift_dynamicCast())
  {
    sub_1004DD37C();
    (*(v22 + 16))(v24, v26, v21);
    if (qword_100633A80 != -1)
    {
      swift_once();
    }

    v37 = qword_100671958;
    sub_1004D838C();
    v35 = sub_1004DD4AC();
    (*(v22 + 8))(v26, v21);
    v38 = *(v111 + 8);
    v39 = v19;
LABEL_9:
    v40 = v36;
LABEL_15:
    v38(v39, v40);
LABEL_16:
    sub_100008D24(&v116);
LABEL_17:
    sub_100008D24(v117);
    return v35;
  }

  v41 = v110;
  if (swift_dynamicCast())
  {
    sub_1004DD37C();
    (*(v22 + 16))(v24, v26, v21);
    if (qword_100633A80 != -1)
    {
      swift_once();
    }

    v42 = qword_100671958;
    sub_1004D838C();
    v35 = sub_1004DD4AC();
    (*(v22 + 8))(v26, v21);
    v38 = *(v107 + 8);
    v39 = v112;
    goto LABEL_14;
  }

  v44 = v36;
  v45 = v108;
  v36 = v109;
  if (swift_dynamicCast())
  {
    sub_1004DD37C();
    (*(v22 + 16))(v24, v26, v21);
    if (qword_100633A80 != -1)
    {
      swift_once();
    }

    v46 = qword_100671958;
    sub_1004D838C();
    v35 = sub_1004DD4AC();
    (*(v22 + 8))(v26, v21);
    v38 = *(v105 + 8);
    v39 = v45;
    goto LABEL_9;
  }

  v41 = v114;
  if (swift_dynamicCast())
  {
    sub_1004DD37C();
    (*(v22 + 16))(v24, v26, v21);
    if (qword_100633A80 != -1)
    {
      swift_once();
    }

    v47 = qword_100671958;
    sub_1004D838C();
    v35 = sub_1004DD4AC();
    (*(v22 + 8))(v26, v21);
    v38 = *(v115 + 8);
    v39 = v106;
    goto LABEL_14;
  }

  v41 = v103;
  if (swift_dynamicCast())
  {
    sub_1004DD37C();
    (*(v22 + 16))(v24, v26, v21);
    if (qword_100633A80 != -1)
    {
      swift_once();
    }

    v48 = qword_100671958;
    sub_1004D838C();
    v35 = sub_1004DD4AC();
    (*(v22 + 8))(v26, v21);
    v38 = *(v100 + 8);
    v49 = &v119;
LABEL_34:
    v39 = *(v49 - 32);
LABEL_14:
    v40 = v41;
    goto LABEL_15;
  }

  v41 = v101;
  if (swift_dynamicCast())
  {
    sub_1004DD37C();
    (*(v22 + 16))(v24, v26, v21);
    if (qword_100633A80 != -1)
    {
      swift_once();
    }

    v50 = qword_100671958;
    sub_1004D838C();
    v35 = sub_1004DD4AC();
    (*(v22 + 8))(v26, v21);
    v38 = *(v98 + 8);
    v49 = &v118;
    goto LABEL_34;
  }

  v51 = v97;
  v52 = v99;
  if (!swift_dynamicCast())
  {
    v63 = v94;
    v64 = v26;
    if (swift_dynamicCast())
    {
      v115 = v21;
      v65 = v89;
      v66 = v88;
      (*(v89 + 32))();
      v67 = v87;
      (*(v65 + 16))(v87, v66, v63);
      v68 = (*(v65 + 88))(v67, v63);
      if (v68 == enum case for Track.song(_:))
      {
        (*(v65 + 96))(v67, v63);
        v69 = v105;
        v70 = v85;
        (*(v105 + 32))(v85, v67, v36);
        v35 = sub_10012F68C(v70);
        (*(v69 + 8))(v70, v36);
        (*(v65 + 8))(v66, v63);
        goto LABEL_16;
      }

      if (v68 == enum case for Track.musicVideo(_:))
      {
        (*(v65 + 96))(v67, v63);
        v73 = v111;
        v74 = v66;
        v75 = v84;
        (*(v111 + 32))(v84, v67, v44);
        v35 = sub_100130BD4(v75);
        (*(v73 + 8))(v75, v44);
        (*(v65 + 8))(v74, v63);
        goto LABEL_16;
      }

      v80 = *(v65 + 8);
      v80(v66, v63);
      v80(v67, v63);
      v21 = v115;
    }

LABEL_55:
    sub_100008D24(&v116);
    sub_1004DD37C();
    (*(v22 + 16))(v24, v64, v21);
    if (qword_100633A80 != -1)
    {
      swift_once();
    }

    v81 = qword_100671958;
    sub_1004D838C();
    v35 = sub_1004DD4AC();
    (*(v22 + 8))(v64, v21);
    goto LABEL_17;
  }

  v53 = v52;
  v54 = v95;
  v55 = v96;
  (*(v95 + 32))(v96, v51, v53);
  v56 = v93;
  sub_1004DCF9C();
  v57 = v91;
  v58 = v92;
  v59 = (*(v91 + 88))(v56, v92);
  if (v59 == enum case for Playlist.Entry.InternalItem.musicMovie(_:))
  {
    (*(v57 + 96))(v56, v58);
    v60 = v114;
    v61 = v115;
    v62 = v86;
    (*(v115 + 32))(v86, v56, v114);
    v35 = sub_1001321A0(v62);
    (*(v61 + 8))(v62, v60);
    (*(v54 + 8))(v55, v99);
    goto LABEL_16;
  }

  if (v59 == enum case for Playlist.Entry.InternalItem.musicVideo(_:))
  {
    (*(v57 + 96))(v56, v58);
    v71 = v111;
    v72 = v84;
    (*(v111 + 32))(v84, v56, v44);
    v35 = sub_100130BD4(v72);
    (*(v71 + 8))(v72, v44);
LABEL_51:
    (*(v54 + 8))(v96, v99);
    goto LABEL_16;
  }

  if (v59 == enum case for Playlist.Entry.InternalItem.song(_:))
  {
    (*(v57 + 96))(v56, v58);
    v76 = v105;
    v77 = v85;
    v78 = v109;
    (*(v105 + 32))(v85, v56, v109);
    v79 = sub_10012F68C(v77);
LABEL_50:
    v35 = v79;
    (*(v76 + 8))(v77, v78);
    goto LABEL_51;
  }

  if (v59 == enum case for Playlist.Entry.InternalItem.tvEpisode(_:))
  {
    (*(v57 + 96))(v56, v58);
    v76 = v98;
    v77 = v83;
    v78 = v101;
    (*(v98 + 32))(v83, v56, v101);
    v79 = sub_100133758(v77);
    goto LABEL_50;
  }

  if (v59 != enum case for Playlist.Entry.InternalItem.uploadedAudio(_:) && v59 != enum case for Playlist.Entry.InternalItem.uploadedVideo(_:))
  {
    (*(v54 + 8))(v96, v99);
    (*(v57 + 8))(v56, v58);
    v64 = v26;
    goto LABEL_55;
  }

  (*(v57 + 8))(v56, v58);
  result = sub_1004DECCC();
  __break(1u);
  return result;
}

uint64_t sub_100133758(uint64_t a1)
{
  v125 = a1;
  v105 = sub_1004DCAAC();
  v100 = *(v105 - 8);
  __chkstk_darwin();
  v98 = &v93 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v99 = &v93 - v2;
  __chkstk_darwin();
  v101 = &v93 - v3;
  v103 = sub_1004DCF8C();
  v102 = *(v103 - 8);
  __chkstk_darwin();
  v104 = &v93 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_1004DD01C();
  v106 = *(v109 - 8);
  __chkstk_darwin();
  v107 = &v93 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v108 = &v93 - v6;
  v7 = sub_1004D92AC();
  v126 = *(v7 - 8);
  __chkstk_darwin();
  v94 = &v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v111 = &v93 - v9;
  v114 = sub_1004D924C();
  v110 = *(v114 - 8);
  __chkstk_darwin();
  v113 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_1004D8FEC();
  v112 = *(v117 - 8);
  __chkstk_darwin();
  v97 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v116 = &v93 - v12;
  v119 = sub_1004DC95C();
  v115 = *(v119 - 8);
  __chkstk_darwin();
  v96 = &v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v120 = &v93 - v14;
  v122 = sub_1004DD05C();
  v118 = *(v122 - 8);
  __chkstk_darwin();
  v121 = &v93 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1004DC2DC();
  v123 = *(v16 - 8);
  __chkstk_darwin();
  v95 = &v93 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v19 = &v93 - v18;
  sub_1004D83FC();
  __chkstk_darwin();
  v124 = &v93 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1004DD3EC();
  v22 = *(v21 - 8);
  __chkstk_darwin();
  v24 = &v93 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v26 = &v93 - v25;
  v27 = sub_1004DCA0C();
  v28 = *(v27 - 8);
  __chkstk_darwin();
  v30 = &v93 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128[3] = v7;
  v128[4] = sub_10013A268(&qword_100637D18, &type metadata accessor for TVEpisode, &protocol conformance descriptor for TVEpisode);
  v31 = sub_1000357EC(v128);
  v32 = v125;
  v33 = *(v126 + 16);
  v125 = v7;
  v33(v31, v32, v7);
  sub_100035868(v128, &v127);
  sub_100004CB8(&qword_100637D08, &qword_10051BE20);
  if (swift_dynamicCast())
  {
    sub_1004DD37C();
    (*(v22 + 16))(v24, v26, v21);
    if (qword_100633A80 != -1)
    {
      swift_once();
    }

    v34 = qword_100671958;
    sub_1004D838C();
    v35 = sub_1004DD4AC();
    (*(v22 + 8))(v26, v21);
    (*(v28 + 8))(v30, v27);
    goto LABEL_27;
  }

  v36 = v16;
  if (swift_dynamicCast())
  {
    sub_1004DD37C();
    (*(v22 + 16))(v24, v26, v21);
    if (qword_100633A80 != -1)
    {
      swift_once();
    }

    v37 = qword_100671958;
    sub_1004D838C();
    v35 = sub_1004DD4AC();
    (*(v22 + 8))(v26, v21);
    v38 = *(v123 + 8);
    v39 = v19;
LABEL_9:
    v40 = v36;
LABEL_26:
    v38(v39, v40);
LABEL_27:
    sub_100008D24(&v127);
LABEL_28:
    sub_100008D24(v128);
    return v35;
  }

  v42 = v121;
  v41 = v122;
  if (swift_dynamicCast())
  {
    sub_1004DD37C();
    (*(v22 + 16))(v24, v26, v21);
    if (qword_100633A80 != -1)
    {
      swift_once();
    }

    v43 = qword_100671958;
    sub_1004D838C();
    v35 = sub_1004DD4AC();
    (*(v22 + 8))(v26, v21);
    (*(v118 + 8))(v42, v41);
    goto LABEL_27;
  }

  v44 = v119;
  if (swift_dynamicCast())
  {
    sub_1004DD37C();
    (*(v22 + 16))(v24, v26, v21);
    if (qword_100633A80 != -1)
    {
      swift_once();
    }

    v45 = qword_100671958;
    sub_1004D838C();
    v35 = sub_1004DD4AC();
    (*(v22 + 8))(v26, v21);
    (*(v115 + 8))(v120, v44);
    goto LABEL_27;
  }

  v46 = v24;
  if (swift_dynamicCast())
  {
    sub_1004DD37C();
    (*(v22 + 16))(v24, v26, v21);
    if (qword_100633A80 != -1)
    {
      swift_once();
    }

    v47 = qword_100671958;
    sub_1004D838C();
    v35 = sub_1004DD4AC();
    (*(v22 + 8))(v26, v21);
    (*(v112 + 8))(v116, v117);
    goto LABEL_27;
  }

  if (swift_dynamicCast())
  {
    sub_1004DD37C();
    (*(v22 + 16))(v24, v26, v21);
    if (qword_100633A80 != -1)
    {
      swift_once();
    }

    v48 = qword_100671958;
    sub_1004D838C();
    v35 = sub_1004DD4AC();
    (*(v22 + 8))(v26, v21);
    v38 = *(v110 + 8);
    v39 = v113;
    v40 = v114;
    goto LABEL_26;
  }

  v122 = v36;
  v36 = v125;
  if (swift_dynamicCast())
  {
    sub_1004DD37C();
    (*(v22 + 16))(v24, v26, v21);
    if (qword_100633A80 != -1)
    {
      swift_once();
    }

    v50 = qword_100671958;
    sub_1004D838C();
    v35 = sub_1004DD4AC();
    (*(v22 + 8))(v26, v21);
    v38 = *(v126 + 8);
    v39 = v111;
    goto LABEL_9;
  }

  v51 = v108;
  v52 = v109;
  if (!swift_dynamicCast())
  {
    v65 = v101;
    v66 = v105;
    v67 = v21;
    v68 = v26;
    if (swift_dynamicCast())
    {
      v69 = v100;
      v70 = v99;
      (*(v100 + 32))(v99, v65, v66);
      v71 = v98;
      (*(v69 + 16))(v98, v70, v66);
      v72 = (*(v69 + 88))(v71, v66);
      if (v72 == enum case for Track.song(_:))
      {
        (*(v69 + 96))(v71, v66);
        v73 = v115;
        v74 = v96;
        (*(v115 + 32))(v96, v71, v44);
        v75 = sub_10012F68C(v74);
        (*(v73 + 8))(v74, v44);
        v35 = v75;
LABEL_43:
        (*(v69 + 8))(v70, v66);
        goto LABEL_27;
      }

      if (v72 == enum case for Track.musicVideo(_:))
      {
        (*(v69 + 96))(v71, v66);
        v81 = v122;
        v82 = v123;
        v83 = v95;
        (*(v123 + 32))(v95, v71, v122);
        v84 = sub_100130BD4(v83);
        v85 = v81;
        v35 = v84;
        (*(v82 + 8))(v83, v85);
        goto LABEL_43;
      }

      v90 = *(v69 + 8);
      v90(v70, v66);
      v90(v71, v66);
    }

LABEL_54:
    sub_100008D24(&v127);
    sub_1004DD37C();
    (*(v22 + 16))(v46, v68, v67);
    if (qword_100633A80 != -1)
    {
      swift_once();
    }

    v92 = qword_100671958;
    sub_1004D838C();
    v35 = sub_1004DD4AC();
    (*(v22 + 8))(v68, v67);
    goto LABEL_28;
  }

  v53 = v106;
  v54 = v107;
  (*(v106 + 32))(v107, v51, v52);
  v55 = v104;
  sub_1004DCF9C();
  v56 = v102;
  v57 = v103;
  v58 = (*(v102 + 88))(v55, v103);
  if (v58 == enum case for Playlist.Entry.InternalItem.musicMovie(_:))
  {
    (*(v56 + 96))(v55, v57);
    v59 = v112;
    v60 = v97;
    v61 = v117;
    (*(v112 + 32))(v97, v55, v117);
    v62 = sub_1001321A0(v60);
    (*(v59 + 8))(v60, v61);
    v63 = *(v53 + 8);
    v64 = v54;
LABEL_50:
    v91 = v52;
    v35 = v62;
    v63(v64, v91);
    goto LABEL_27;
  }

  if (v58 == enum case for Playlist.Entry.InternalItem.musicVideo(_:))
  {
    (*(v56 + 96))(v55, v57);
    v76 = v122;
    v77 = v123;
    v78 = v95;
    (*(v123 + 32))(v95, v55, v122);
    v79 = sub_100130BD4(v78);
    (*(v77 + 8))(v78, v76);
    v80 = v52;
    v35 = v79;
    (*(v53 + 8))(v107, v80);
    goto LABEL_27;
  }

  if (v58 == enum case for Playlist.Entry.InternalItem.song(_:))
  {
    (*(v56 + 96))(v55, v57);
    v86 = v115;
    v87 = v96;
    v88 = v119;
    (*(v115 + 32))(v96, v55, v119);
    v89 = sub_10012F68C(v87);
LABEL_49:
    v62 = v89;
    (*(v86 + 8))(v87, v88);
    v63 = *(v53 + 8);
    v64 = v107;
    goto LABEL_50;
  }

  if (v58 == enum case for Playlist.Entry.InternalItem.tvEpisode(_:))
  {
    (*(v56 + 96))(v55, v57);
    v88 = v125;
    v86 = v126;
    v87 = v94;
    (*(v126 + 32))(v94, v55, v125);
    v89 = sub_100133758(v87);
    goto LABEL_49;
  }

  if (v58 != enum case for Playlist.Entry.InternalItem.uploadedAudio(_:) && v58 != enum case for Playlist.Entry.InternalItem.uploadedVideo(_:))
  {
    (*(v53 + 8))(v107, v52);
    (*(v56 + 8))(v55, v57);
    v67 = v21;
    v68 = v26;
    goto LABEL_54;
  }

  (*(v56 + 8))(v55, v57);
  result = sub_1004DECCC();
  __break(1u);
  return result;
}

uint64_t sub_100134D4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v111 = a3;
  v112 = a1;
  v90 = sub_1004DCAAC();
  v84 = *(v90 - 8);
  __chkstk_darwin();
  v82 = &v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v83 = &v77 - v5;
  __chkstk_darwin();
  v85 = &v77 - v6;
  v87 = sub_1004DCF8C();
  v86 = *(v87 - 8);
  __chkstk_darwin();
  v88 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_1004DD01C();
  v91 = *(v93 - 8);
  __chkstk_darwin();
  v89 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v92 = &v77 - v9;
  v96 = sub_1004D92AC();
  v94 = *(v96 - 8);
  __chkstk_darwin();
  v78 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v97 = &v77 - v11;
  v100 = sub_1004D924C();
  v95 = *(v100 - 8);
  __chkstk_darwin();
  v99 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_1004D8FEC();
  v98 = *(v103 - 8);
  __chkstk_darwin();
  v81 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v102 = &v77 - v14;
  v105 = sub_1004DC95C();
  v101 = *(v105 - 8);
  __chkstk_darwin();
  v80 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v106 = &v77 - v16;
  v108 = sub_1004DD05C();
  v104 = *(v108 - 8);
  __chkstk_darwin();
  v107 = &v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1004DC2DC();
  v109 = *(v18 - 8);
  __chkstk_darwin();
  v79 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v21 = &v77 - v20;
  sub_1004D83FC();
  __chkstk_darwin();
  v110 = &v77 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1004DD3EC();
  v24 = *(v23 - 8);
  __chkstk_darwin();
  v26 = &v77 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v28 = &v77 - v27;
  v29 = sub_1004DCA0C();
  v30 = *(v29 - 8);
  __chkstk_darwin();
  v32 = &v77 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114[3] = a2;
  v114[4] = v111;
  v33 = sub_1000357EC(v114);
  (*(*(a2 - 8) + 16))(v33, v112, a2);
  sub_100035868(v114, &v113);
  sub_100004CB8(&qword_100637D08, &qword_10051BE20);
  if (swift_dynamicCast())
  {
    sub_1004DD37C();
    (*(v24 + 16))(v26, v28, v23);
    if (qword_100633A80 != -1)
    {
      swift_once();
    }

    v34 = qword_100671958;
    sub_1004D838C();
    v35 = sub_1004DD4AC();
    (*(v24 + 8))(v28, v23);
    (*(v30 + 8))(v32, v29);
    goto LABEL_29;
  }

  v36 = v18;
  if (swift_dynamicCast())
  {
    sub_1004DD37C();
    (*(v24 + 16))(v26, v28, v23);
    if (qword_100633A80 != -1)
    {
      swift_once();
    }

    v37 = qword_100671958;
    sub_1004D838C();
    v35 = sub_1004DD4AC();
    (*(v24 + 8))(v28, v23);
    (*(v109 + 8))(v21, v18);
    goto LABEL_29;
  }

  v39 = v107;
  v38 = v108;
  if (swift_dynamicCast())
  {
    sub_1004DD37C();
    (*(v24 + 16))(v26, v28, v23);
    if (qword_100633A80 != -1)
    {
      swift_once();
    }

    v40 = qword_100671958;
    sub_1004D838C();
    v35 = sub_1004DD4AC();
    (*(v24 + 8))(v28, v23);
    (*(v104 + 8))(v39, v38);
    goto LABEL_29;
  }

  v41 = v105;
  if (swift_dynamicCast())
  {
    sub_1004DD37C();
    (*(v24 + 16))(v26, v28, v23);
    if (qword_100633A80 != -1)
    {
      swift_once();
    }

    v42 = qword_100671958;
    sub_1004D838C();
    v35 = sub_1004DD4AC();
    (*(v24 + 8))(v28, v23);
    (*(v101 + 8))(v106, v41);
    goto LABEL_29;
  }

  v43 = v28;
  if (swift_dynamicCast())
  {
    sub_1004DD37C();
    (*(v24 + 16))(v26, v28, v23);
    if (qword_100633A80 != -1)
    {
      swift_once();
    }

    v44 = qword_100671958;
    sub_1004D838C();
    v35 = sub_1004DD4AC();
    (*(v24 + 8))(v28, v23);
    (*(v98 + 8))(v102, v103);
    goto LABEL_29;
  }

  v45 = v23;
  if (swift_dynamicCast())
  {
    sub_1004DD37C();
    (*(v24 + 16))(v26, v28, v23);
    if (qword_100633A80 != -1)
    {
      swift_once();
    }

    v46 = qword_100671958;
    sub_1004D838C();
    v35 = sub_1004DD4AC();
    (*(v24 + 8))(v28, v23);
    (*(v95 + 8))(v99, v100);
    goto LABEL_29;
  }

  v47 = v96;
  v48 = v24;
  if (swift_dynamicCast())
  {
    sub_1004DD37C();
    (*(v24 + 16))(v26, v28, v45);
    if (qword_100633A80 != -1)
    {
      swift_once();
    }

    v49 = qword_100671958;
    sub_1004D838C();
    v35 = sub_1004DD4AC();
    (*(v24 + 8))(v28, v45);
    (*(v94 + 8))(v97, v47);
    goto LABEL_29;
  }

  v51 = v92;
  v52 = v93;
  if (!swift_dynamicCast())
  {
    v64 = v85;
    v65 = v90;
    if (swift_dynamicCast())
    {
      v112 = v36;
      v66 = v84;
      v67 = v83;
      (*(v84 + 32))(v83, v64, v65);
      v68 = v82;
      (*(v66 + 16))(v82, v67, v65);
      v69 = (*(v66 + 88))(v68, v65);
      if (v69 == enum case for Track.song(_:))
      {
        (*(v66 + 96))(v68, v65);
        v70 = v101;
        v71 = v80;
        (*(v101 + 32))(v80, v68, v41);
        v35 = sub_10012F68C(v71);
        (*(v70 + 8))(v71, v41);
LABEL_41:
        (*(v66 + 8))(v67, v65);
LABEL_29:
        sub_100008D24(&v113);
LABEL_30:
        sub_100008D24(v114);
        return v35;
      }

      if (v69 == enum case for Track.musicVideo(_:))
      {
        (*(v66 + 96))(v68, v65);
        v72 = v109;
        v73 = v79;
        v74 = v112;
        (*(v109 + 32))(v79, v68, v112);
        v35 = sub_100130BD4(v73);
        (*(v72 + 8))(v73, v74);
        goto LABEL_41;
      }

      v75 = *(v66 + 8);
      v75(v67, v65);
      v75(v68, v65);
    }

LABEL_51:
    sub_100008D24(&v113);
    sub_1004DD37C();
    (*(v48 + 16))(v26, v43, v45);
    if (qword_100633A80 != -1)
    {
      swift_once();
    }

    v76 = qword_100671958;
    sub_1004D838C();
    v35 = sub_1004DD4AC();
    (*(v48 + 8))(v43, v45);
    goto LABEL_30;
  }

  v112 = v36;
  v53 = v51;
  v54 = v91;
  v55 = v89;
  (*(v91 + 32))(v89, v53, v52);
  v56 = v88;
  sub_1004DCF9C();
  v57 = v86;
  v58 = v87;
  v59 = (*(v86 + 88))(v56, v87);
  if (v59 == enum case for Playlist.Entry.InternalItem.musicMovie(_:))
  {
    (*(v57 + 96))(v56, v58);
    v60 = v98;
    v61 = v81;
    v62 = v103;
    (*(v98 + 32))(v81, v56, v103);
    v63 = sub_1001321A0(v61);
LABEL_47:
    v35 = v63;
    (*(v60 + 8))(v61, v62);
    (*(v54 + 8))(v55, v52);
    goto LABEL_29;
  }

  if (v59 == enum case for Playlist.Entry.InternalItem.musicVideo(_:))
  {
    (*(v57 + 96))(v56, v58);
    v60 = v109;
    v61 = v79;
    v62 = v112;
    (*(v109 + 32))(v79, v56, v112);
    v63 = sub_100130BD4(v61);
    goto LABEL_47;
  }

  if (v59 == enum case for Playlist.Entry.InternalItem.song(_:))
  {
    (*(v57 + 96))(v56, v58);
    v60 = v101;
    v61 = v80;
    v62 = v105;
    (*(v101 + 32))(v80, v56, v105);
    v63 = sub_10012F68C(v61);
    goto LABEL_47;
  }

  if (v59 == enum case for Playlist.Entry.InternalItem.tvEpisode(_:))
  {
    (*(v57 + 96))(v56, v58);
    v60 = v94;
    v61 = v78;
    v62 = v96;
    (*(v94 + 32))(v78, v56, v96);
    v63 = sub_100133758(v61);
    goto LABEL_47;
  }

  if (v59 != enum case for Playlist.Entry.InternalItem.uploadedAudio(_:) && v59 != enum case for Playlist.Entry.InternalItem.uploadedVideo(_:))
  {
    (*(v54 + 8))(v55, v52);
    (*(v57 + 8))(v56, v58);
    goto LABEL_51;
  }

  (*(v57 + 8))(v56, v58);
  result = sub_1004DECCC();
  __break(1u);
  return result;
}

uint64_t sub_1001362BC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v101 = sub_1004D82AC();
  v99 = *(v101 - 8);
  __chkstk_darwin();
  v98 = v87 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1004D8C2C();
  v90 = *(v5 - 8);
  v91 = v5;
  __chkstk_darwin();
  v89 = v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004D83FC();
  __chkstk_darwin();
  v8 = v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_1004DD3EC();
  v9 = *(v102 - 8);
  __chkstk_darwin();
  v103 = v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = v87 - v11;
  if (qword_100633B60 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  v114[4] = v110;
  v114[5] = v111;
  v114[6] = v112;
  v114[7] = v113;
  v114[0] = v106;
  v114[1] = v107;
  v114[2] = v108;
  v114[3] = v109;
  v13 = *(&v108 + 1);

  sub_100073E60(v114);
  LODWORD(v94) = sub_1001202D0(7u, v13);

  v14 = [objc_opt_self() allowAccountModifications];
  v100 = v8;
  if (v14)
  {
    if (a1)
    {
      v15 = [a1 userInterfaceIdiom] != 3;
    }

    else
    {
      v15 = 1;
    }

    LODWORD(v95) = v15;
  }

  else
  {
    LODWORD(v95) = 0;
  }

  v16 = v102;
  v17 = v103;
  sub_1004DD37C();
  v104 = *(v9 + 16);
  v105 = v9 + 16;
  v104(v17, v12, v16);
  v18 = v12;
  if (qword_100633A80 != -1)
  {
    swift_once();
  }

  v19 = qword_100671958;
  v20 = qword_100671958;
  sub_1004D838C();
  v21 = sub_1004DD4AC();
  v96 = v22;
  v97 = v21;
  v23 = v9 + 8;
  v24 = *(v9 + 8);
  v24(v18, v16);
  if (v95)
  {
    v25 = v20;
    v92 = v23;
    v93 = v24;
    v87[1] = v19;
    v88 = a2;
    if ((v94 & 1) != 0 || (v26 = v89, sub_1004D8C1C(), v27 = sub_1004D8C0C(), (*(v90 + 8))(v26, v91), (v27 & 1) == 0))
    {
      v64 = v18;
      sub_1004DD37C();
      v66 = v102;
      v65 = v103;
      v104(v103, v64, v102);
      v67 = v25;
      sub_1004D838C();
      v68 = v67;
      v94 = sub_1004DD4AC();
      v95 = v69;
      v70 = v93;
      v93(v64, v66);
      sub_100004CB8(&qword_100634F40, &qword_100515800);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_1005126C0;
      sub_1004DD37C();
      v104(v65, v64, v66);
      sub_1004D838C();
      v71 = sub_1004DD4AC();
      v90 = v72;
      v91 = v71;
      v70(v64, v66);
      v73 = v98;
      _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
      v74 = sub_1004D827C();
      v76 = v75;
      v99 = *(v99 + 8);
      (v99)(v73, v101);
      *(v36 + 32) = v74;
      *(v36 + 40) = v76;
      v77 = v90;
      *(v36 + 48) = v91;
      *(v36 + 56) = v77;
      *(v36 + 64) = 2;
      *(v36 + 72) = &unk_10051BE70;
      *(v36 + 80) = 0;
      sub_1004DD37C();
      v78 = v66;
      v104(v65, v64, v66);
      sub_1004D838C();
      v79 = sub_1004DD4AC();
      v81 = v80;
      v93(v64, v78);
      _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
      v82 = sub_1004D827C();
      v84 = v83;
      result = (v99)(v73, v101);
      *(v36 + 88) = v82;
      *(v36 + 96) = v84;
      *(v36 + 104) = v79;
      *(v36 + 112) = v81;
      v51 = (v36 + 128);
      *(v36 + 120) = 2;
      v32 = v94;
    }

    else
    {
      sub_1004DD37C();
      v28 = v103;
      v29 = v102;
      (v104)(v103, v18);
      v30 = v25;
      sub_1004D838C();
      v31 = v30;
      v32 = sub_1004DD4AC();
      v95 = v33;
      v34 = v29;
      v35 = v93;
      v93(v18, v29);
      sub_100004CB8(&qword_100634F40, &qword_100515800);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_1005126C0;
      sub_1004DD37C();
      v104(v28, v18, v34);
      sub_1004D838C();
      v94 = sub_1004DD4AC();
      v91 = v37;
      v35(v18, v34);
      v38 = v98;
      _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
      v39 = sub_1004D827C();
      v41 = v40;
      v99 = *(v99 + 8);
      (v99)(v38, v101);
      *(v36 + 32) = v39;
      *(v36 + 40) = v41;
      v42 = v91;
      *(v36 + 48) = v94;
      *(v36 + 56) = v42;
      *(v36 + 64) = 2;
      *(v36 + 72) = &unk_10051BE78;
      *(v36 + 80) = 0;
      sub_1004DD37C();
      v43 = v102;
      v104(v28, v18, v102);
      sub_1004D838C();
      v44 = sub_1004DD4AC();
      v46 = v45;
      v93(v18, v43);
      _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
      v47 = sub_1004D827C();
      v49 = v48;
      result = (v99)(v38, v101);
      *(v36 + 88) = v47;
      *(v36 + 96) = v49;
      *(v36 + 104) = v44;
      *(v36 + 112) = v46;
      v51 = (v36 + 128);
      *(v36 + 120) = 2;
    }

    a2 = v88;
  }

  else
  {
    sub_1004DD37C();
    v104(v17, v18, v16);
    v52 = v20;
    sub_1004D838C();
    v53 = v52;
    v54 = v103;
    v94 = sub_1004DD4AC();
    v95 = v55;
    v56 = v16;
    v24(v18, v16);
    sub_100004CB8(&qword_100634F40, &qword_100515800);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_100511DA0;
    sub_1004DD37C();
    v104(v54, v18, v56);
    sub_1004D838C();
    v32 = v94;
    v57 = sub_1004DD4AC();
    v59 = v58;
    v24(v18, v56);
    v60 = v98;
    _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
    v61 = sub_1004D827C();
    v63 = v62;
    result = (*(v99 + 8))(v60, v101);
    *(v36 + 32) = v61;
    *(v36 + 40) = v63;
    *(v36 + 48) = v57;
    *(v36 + 56) = v59;
    v51 = (v36 + 72);
    *(v36 + 64) = 2;
  }

  *v51 = 0;
  v51[1] = 0;
  v85 = v96;
  *a2 = v97;
  *(a2 + 8) = v85;
  v86 = v95;
  *(a2 + 16) = v32;
  *(a2 + 24) = v86;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 1;
  *(a2 + 56) = v36;
  *(a2 + 64) = 0;
  return result;
}

uint64_t sub_100136DFC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1004D82AC();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v20[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1004D83FC();
  __chkstk_darwin();
  v6 = sub_1004DD3EC();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v11 = &v20[-v10];
  sub_1004DD37C();
  (*(v7 + 16))(v9, v11, v6);
  if (qword_100633A80 != -1)
  {
    swift_once();
  }

  v12 = qword_100671958;
  sub_1004D838C();
  v13 = sub_1004DD4AC();
  v15 = v14;
  (*(v7 + 8))(v11, v6);
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v16 = sub_1004D827C();
  v18 = v17;
  result = (*(v3 + 8))(v5, v2);
  *a1 = v16;
  *(a1 + 8) = v18;
  *(a1 + 16) = v13;
  *(a1 + 24) = v15;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  return result;
}

void sub_100137094(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v55 = a3;
  v60 = a1;
  v61 = a2;
  v66 = sub_1004D82AC();
  v59 = *(v66 - 8);
  __chkstk_darwin();
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004D83FC();
  __chkstk_darwin();
  v9 = sub_1004DD3EC();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v47 - v13;
  sub_1004DD37C();
  v15 = v10;
  v16 = *(v10 + 16);
  v65 = v10 + 16;
  v58 = v16;
  v16(v12, v14, v9);
  if (qword_100633A80 != -1)
  {
    swift_once();
  }

  v17 = qword_100671958;
  v18 = qword_100671958;
  v64 = v17;
  v19 = v18;
  sub_1004D838C();
  v51 = v19;
  v20 = sub_1004DD4AC();
  v56 = v21;
  v57 = v20;
  v22 = *(v15 + 8);
  v62 = v15 + 8;
  v63 = v22;
  v22(v14, v9);
  v23 = swift_allocObject();
  v54 = v23;
  v24 = v55;
  *(v23 + 16) = v55;
  *(v23 + 24) = a4;

  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v25 = v12;
  v26 = v8;
  v27 = sub_1004D827C();
  v52 = v28;
  v53 = v27;
  v29 = v24;
  v48 = *(v59 + 8);
  v48(v26, v66);
  sub_1004DD37C();
  v30 = v58;
  v58(v25, v14, v9);
  sub_1004D838C();
  v31 = v51;
  v59 = sub_1004DD4AC();
  v51 = v32;
  v63(v14, v9);
  v33 = swift_allocObject();
  v50 = v33;
  *(v33 + 16) = v29;
  *(v33 + 24) = a4;

  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v55 = sub_1004D827C();
  v49 = v34;
  v48(v26, v66);
  sub_1004DD37C();
  v30(v25, v14, v9);
  sub_1004D838C();
  v35 = sub_1004DD4AC();
  v37 = v36;
  v63(v14, v9);
  sub_100004CB8(&qword_100634F40, &qword_100515800);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1005126C0;
  v39 = v52;
  *(v38 + 32) = v53;
  *(v38 + 40) = v39;
  v40 = v56;
  *(v38 + 48) = v57;
  *(v38 + 56) = v40;
  *(v38 + 64) = 2;
  v41 = v54;
  v42 = v55;
  *(v38 + 72) = &unk_10051BDD8;
  *(v38 + 80) = v41;
  v43 = v49;
  *(v38 + 88) = v42;
  *(v38 + 96) = v43;
  v44 = v50;
  v45 = v51;
  *(v38 + 104) = v59;
  *(v38 + 112) = v45;
  *(v38 + 120) = 0;
  *(v38 + 128) = &unk_10051BDE8;
  *(v38 + 136) = v44;

  *a5 = v35;
  *(a5 + 8) = v37;
  *(a5 + 16) = v60;
  *(a5 + 24) = v46;
  *(a5 + 32) = 0;
  *(a5 + 33) = v68[0];
  *(a5 + 36) = *(v68 + 3);
  *(a5 + 40) = 0;
  *(a5 + 48) = 1;
  *(a5 + 49) = *v67;
  *(a5 + 52) = *&v67[3];
  *(a5 + 56) = v38;
  *(a5 + 64) = 0;
}

id sub_1001375C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v48 = a2;
  v45 = a1;
  sub_1004D83FC();
  __chkstk_darwin();
  v4 = sub_1004DD3EC();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = v40 - v8;
  sub_1004DD37C();
  v10 = v5;
  v13 = *(v5 + 16);
  v12 = v5 + 16;
  v11 = v13;
  v13(v7, v9, v4);
  if (qword_100633A80 != -1)
  {
    swift_once();
  }

  v51 = v11;
  v14 = qword_100671958;
  v49 = qword_100671958;
  sub_1004D838C();
  v50 = v14;
  v15 = sub_1004DD4AC();
  v46 = v16;
  v47 = v15;
  v44 = *(v10 + 8);
  v17 = v10 + 8;
  v44(v9, v4);
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v19 = result;
    MobileGestalt_get_wapiCapability();

    v41 = a3;
    sub_1004DD37C();
    v20 = v51;
    v51(v7, v9, v4);
    v21 = v49;
    sub_1004D838C();
    v40[1] = v12;
    v22 = sub_1004DD4AC();
    v42 = v23;
    v43 = v22;
    v24 = v44;
    v40[2] = v17;
    v44(v9, v4);
    sub_100004CB8(&qword_100634F40, &qword_100515800);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1005126C0;
    sub_1004DD37C();
    v20(v7, v9, v4);
    sub_1004D838C();
    v26 = v49;
    v27 = sub_1004DD4AC();
    v29 = v28;
    v24(v9, v4);
    v30 = swift_allocObject();
    v31 = v45;
    v32 = v48;
    *(v30 + 16) = v45;
    *(v30 + 24) = v32;
    *(v25 + 32) = 0x6C65636E6163;
    *(v25 + 40) = 0xE600000000000000;
    *(v25 + 48) = v27;
    *(v25 + 56) = v29;
    *(v25 + 64) = 0;
    *(v25 + 72) = &unk_10051BDF8;
    *(v25 + 80) = v30;
    sub_10000DE64(v31, v32);
    sub_1004DD37C();
    v51(v7, v9, v4);
    sub_1004D838C();
    v33 = sub_1004DD4AC();
    v35 = v34;
    v24(v9, v4);
    v36 = swift_allocObject();
    *(v36 + 16) = v31;
    *(v36 + 24) = v32;
    *(v25 + 88) = 0x6E4F6E727574;
    *(v25 + 96) = 0xE600000000000000;
    *(v25 + 104) = v33;
    *(v25 + 112) = v35;
    *(v25 + 120) = 2;
    *(v25 + 128) = &unk_10051BE08;
    *(v25 + 136) = v36;
    result = sub_10000DE64(v31, v32);
    v37 = v46;
    v38 = v41;
    *v41 = v47;
    v38[1] = v37;
    v39 = v42;
    v38[2] = v43;
    v38[3] = v39;
    *(v38 + 32) = 0;
    *(v38 + 33) = v53[0];
    *(v38 + 9) = *(v53 + 3);
    v38[5] = 0;
    *(v38 + 48) = 1;
    *(v38 + 49) = *v52;
    *(v38 + 13) = *&v52[3];
    v38[7] = v25;
    v38[8] = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100137B00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v4 = sub_1004D82AC();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100633CF8 != -1)
  {
    swift_once();
  }

  v8 = static CloudLibrary.EnablementContext.action;

  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v9 = sub_1004D827C();
  v11 = v10;
  (*(v5 + 8))(v7, v4);
  v12 = CloudLibrary.EnablementContext.title.getter(v2);
  v14 = v13;
  v15 = CloudLibrary.EnablementContext.message.getter(v2);
  v17 = v16;
  sub_100004CB8(&qword_100634F40, &qword_100515800);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1005126C0;
  *(v18 + 32) = v9;
  *(v18 + 40) = v11;
  *(v18 + 48) = v8;
  *(v18 + 64) = 2;
  *(v18 + 72) = &unk_10051BDC8;
  *(v18 + 80) = 0;

  sub_100136DFC(v22);
  v19 = v22[1];
  *(v18 + 88) = v22[0];
  *(v18 + 104) = v19;
  *(v18 + 120) = v22[2];
  *(v18 + 136) = v23;

  *a2 = v12;
  *(a2 + 8) = v14;
  *(a2 + 16) = v15;
  *(a2 + 24) = v17;
  *(a2 + 32) = 0;
  *(a2 + 33) = v22[0];
  *(a2 + 36) = *(v22 + 3);
  *(a2 + 40) = 0;
  *(a2 + 48) = 1;
  *(a2 + 49) = *v24;
  *(a2 + 52) = *&v24[3];
  *(a2 + 56) = v18;
  *(a2 + 64) = 0;
  return result;
}

uint64_t sub_100137D2C()
{
  v1 = sub_1004D809C();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

id sub_100137DB4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1004D82AC();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004D83FC();
  __chkstk_darwin();
  v96 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_1004DD3EC();
  v95 = *(v93 - 8);
  __chkstk_darwin();
  v10 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v81 - v11;
  result = MobileGestalt_get_current_device();
  if (!result)
  {
    __break(1u);
    return result;
  }

  v14 = result;
  wapiCapability = MobileGestalt_get_wapiCapability();

  v89 = v7;
  v90 = v5;
  v91 = v4;
  v92 = a2;
  if (!a1)
  {
    goto LABEL_38;
  }

  objc_opt_self();
  v16 = v10;
  if (swift_dynamicCastObjCClass() || (objc_opt_self(), swift_dynamicCastObjCClass()))
  {
    if (wapiCapability)
    {
      sub_1004DD37C();
      v17 = v95;
      v18 = *(v95 + 16);
      v94 = (v95 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v19 = v93;
      v18(v10, v12, v93);
      v20 = v10;
      if (qword_100633A80 == -1)
      {
        goto LABEL_43;
      }
    }

    else
    {
      sub_1004DD37C();
      v17 = v95;
      v18 = *(v95 + 16);
      v94 = (v95 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v19 = v93;
      v18(v10, v12, v93);
      v20 = v10;
      if (qword_100633A80 == -1)
      {
        goto LABEL_43;
      }
    }

    goto LABEL_51;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass() || (objc_opt_self(), swift_dynamicCastObjCClass()))
  {
    v21 = v93;
    if ((wapiCapability & 1) == 0)
    {
      goto LABEL_33;
    }

LABEL_13:
    sub_1004DD37C();
    v22 = v95;
    v23 = *(v95 + 16);
    v94 = (v95 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v23(v16, v12, v21);
    v24 = v16;
    if (qword_100633A80 == -1)
    {
      goto LABEL_34;
    }

LABEL_53:
    swift_once();
    goto LABEL_34;
  }

  objc_opt_self();
  v25 = swift_dynamicCastObjCClass();
  if (!v25)
  {
LABEL_38:
    v19 = v93;
    v16 = v10;
    if ((wapiCapability & 1) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_39;
  }

  v26 = v25;
  v27 = MPModelRelationshipMediaClipStaticAssets;
  v28 = a1;
  if (![v26 hasLoadedValueForKey:v27])
  {

    goto LABEL_38;
  }

  v29 = [v26 staticAssets];
  v19 = v93;
  if (!v29)
  {

    v16 = v10;
    if ((wapiCapability & 1) == 0)
    {
LABEL_42:
      sub_1004DD37C();
      v17 = v95;
      v18 = *(v95 + 16);
      v94 = (v95 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v18(v16, v12, v19);
      v20 = v16;
      if (qword_100633A80 == -1)
      {
LABEL_43:
        v55 = qword_100671958;
        sub_1004D838C();
        v56 = v55;
        v57 = sub_1004DD4AC();
        v87 = v58;
        v88 = v57;
        v59 = *(v17 + 8);
        v59(v12, v19);
        sub_1004DD37C();
        v18(v20, v12, v19);
        sub_1004D838C();
        v60 = sub_1004DD4AC();
        v85 = v61;
        v86 = v60;
        v59(v12, v19);
        v46 = v59;
        sub_1004DD37C();
        v49 = v12;
        v62 = v12;
        v51 = v19;
        v18(v20, v62, v19);
        if (qword_100633A80 != -1)
        {
          swift_once();
        }

        v52 = v18;
        v82 = v56;
        sub_1004D838C();
        v63 = sub_1004DD4AC();
        v93 = v64;
        v83 = v63;
        v84 = &unk_10051BDB8;
        v48 = v20;
        goto LABEL_46;
      }

LABEL_51:
      swift_once();
      goto LABEL_43;
    }

LABEL_39:
    sub_1004DD37C();
    v17 = v95;
    v18 = *(v95 + 16);
    v94 = (v95 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v18(v16, v12, v19);
    v20 = v16;
    if (qword_100633A80 == -1)
    {
      goto LABEL_43;
    }

    goto LABEL_51;
  }

  v30 = v29;
  v87 = v28;
  sub_100139DF0();
  v31 = sub_1004DD87C();

  if (v31 >> 62)
  {
LABEL_56:
    v32 = sub_1004DED5C();
  }

  else
  {
    v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v33 = v31;
  v16 = v10;
  if (!v32)
  {
LABEL_41:

    if ((wapiCapability & 1) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_39;
  }

  v34 = 0;
  v94 = MPModelPropertyStaticAssetMediaType;
  v88 = v31 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if ((v31 & 0xC000000000000001) != 0)
    {
      v35 = sub_1004DEB2C();
    }

    else
    {
      if (v34 >= *(v88 + 16))
      {
        goto LABEL_55;
      }

      v35 = *(v33 + 8 * v34 + 32);
    }

    v19 = v35;
    v36 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      __break(1u);
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    if ([v35 hasLoadedValueForKey:v94])
    {
      break;
    }

LABEL_23:
    ++v34;
    v19 = v93;
    v33 = v31;
    if (v36 == v32)
    {
      goto LABEL_41;
    }
  }

  v37 = [v19 mediaType];

  v38 = v37 == 2;
  v16 = v10;
  if (!v38)
  {
    goto LABEL_23;
  }

  v21 = v93;
  if (wapiCapability)
  {
    goto LABEL_13;
  }

LABEL_33:
  sub_1004DD37C();
  v22 = v95;
  v23 = *(v95 + 16);
  v94 = (v95 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v23(v16, v12, v21);
  v24 = v16;
  if (qword_100633A80 != -1)
  {
    goto LABEL_53;
  }

LABEL_34:
  v39 = qword_100671958;
  sub_1004D838C();
  v40 = v39;
  v41 = sub_1004DD4AC();
  v87 = v42;
  v88 = v41;
  v43 = *(v22 + 8);
  v43(v12, v21);
  sub_1004DD37C();
  v23(v24, v12, v21);
  sub_1004D838C();
  v44 = sub_1004DD4AC();
  v85 = v45;
  v86 = v44;
  v43(v12, v21);
  v46 = v43;
  v47 = v21;
  v48 = v24;
  sub_1004DD37C();
  v49 = v12;
  v50 = v12;
  v51 = v47;
  v23(v24, v50, v47);
  if (qword_100633A80 != -1)
  {
    swift_once();
  }

  v52 = v23;
  v82 = v40;
  sub_1004D838C();
  v53 = sub_1004DD4AC();
  v93 = v54;
  v83 = v53;
  v84 = &unk_10051BDC0;
LABEL_46:
  v81 = v46;
  v46(v49, v51);
  v65 = v89;
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v95 = sub_1004D827C();
  v67 = v66;
  v68 = v91;
  v69 = *(v90 + 8);
  v69(v65, v91);

  sub_1004DD37C();
  v52(v48, v49, v51);
  if (qword_100633A80 != -1)
  {
    swift_once();
  }

  sub_1004D838C();
  v70 = sub_1004DD4AC();
  v96 = v71;
  v81(v49, v51);
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v72 = sub_1004D827C();
  v74 = v73;
  v69(v65, v68);
  sub_100004CB8(&qword_100634F40, &qword_100515800);
  v75 = swift_allocObject();
  *(v75 + 16) = xmmword_1005126C0;
  *(v75 + 32) = v95;
  *(v75 + 40) = v67;
  v76 = v84;
  *(v75 + 48) = v83;
  *(v75 + 56) = v93;
  *(v75 + 64) = 2;
  *(v75 + 72) = v76;
  *(v75 + 80) = 0;
  *(v75 + 88) = v72;
  *(v75 + 96) = v74;
  v77 = v96;
  *(v75 + 104) = v70;
  *(v75 + 112) = v77;
  *(v75 + 120) = 0;
  *(v75 + 128) = 0;
  *(v75 + 136) = 0;

  result = sub_10000DE74(v76, 0);
  v78 = v92;
  v79 = v87;
  *v92 = v88;
  v78[1] = v79;
  v80 = v85;
  v78[2] = v86;
  v78[3] = v80;
  *(v78 + 32) = 0;
  *(v78 + 33) = v98[0];
  *(v78 + 9) = *(v98 + 3);
  v78[5] = 0;
  *(v78 + 48) = 1;
  *(v78 + 49) = *v97;
  *(v78 + 13) = *&v97[3];
  v78[7] = v75;
  v78[8] = 0;
  return result;
}

id sub_100138C74@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1004D82AC();
  v62 = *(v6 - 8);
  __chkstk_darwin();
  v61 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004D83FC();
  __chkstk_darwin();
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_1004DD3EC();
  v59 = *(v63 - 8);
  __chkstk_darwin();
  v60 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v50 - v11;
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v14 = result;
    MobileGestalt_get_wapiCapability();

    result = MobileGestalt_get_current_device();
    if (result)
    {
      v15 = result;
      MobileGestalt_get_cellularDataCapability();

      v58 = v9;
      if (a1)
      {
        objc_opt_self();
        swift_dynamicCastObjCClass();
        v16 = v63;
        v17 = v60;
        v18 = v59;
      }

      else
      {
        v16 = v63;
        v18 = v59;
        v17 = v60;
      }

      sub_1004DD37C();
      v57 = *(v18 + 16);
      v57(v17, v12, v16);
      if (qword_100633A80 != -1)
      {
        swift_once();
      }

      v56 = qword_100671958;
      sub_1004D838C();
      v19 = sub_1004DD4AC();
      v52 = v20;
      v53 = v19;
      v21 = *(v18 + 8);
      v21(v12, v16);
      v54 = v6;
      v55 = a2;
      if (a2 && [a2 userInterfaceIdiom] == 3)
      {
        v22 = _swiftEmptyArrayStorage;
      }

      else
      {
        v51 = a3;
        sub_1004DD37C();
        v57(v17, v12, v16);
        if (qword_100633A80 != -1)
        {
          swift_once();
        }

        v23 = v56;
        sub_1004D838C();
        v24 = sub_1004DD4AC();
        v26 = v25;
        v21(v12, v16);
        v27 = v61;
        _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
        v28 = sub_1004D827C();
        v30 = v29;
        (*(v62 + 8))(v27, v6);
        v22 = sub_10003A840(0, 1, 1, _swiftEmptyArrayStorage);
        v32 = *(v22 + 2);
        v31 = *(v22 + 3);
        if (v32 >= v31 >> 1)
        {
          v22 = sub_10003A840((v31 > 1), v32 + 1, 1, v22);
        }

        *(v22 + 2) = v32 + 1;
        v33 = &v22[56 * v32];
        *(v33 + 4) = v28;
        *(v33 + 5) = v30;
        *(v33 + 6) = v24;
        *(v33 + 7) = v26;
        v33[64] = 2;
        *(v33 + 9) = &unk_10051BDB0;
        *(v33 + 10) = 0;
        a3 = v51;
        v16 = v63;
        v17 = v60;
      }

      sub_1004DD37C();
      v57(v17, v12, v16);
      if (qword_100633A80 != -1)
      {
        swift_once();
      }

      v34 = v56;
      sub_1004D838C();
      v35 = sub_1004DD4AC();
      v37 = v36;
      v21(v12, v16);
      v38 = v61;
      _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
      v39 = sub_1004D827C();
      v41 = v40;
      (*(v62 + 8))(v38, v54);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_10003A840(0, *(v22 + 2) + 1, 1, v22);
      }

      v43 = v52;
      v42 = v53;
      v45 = *(v22 + 2);
      v44 = *(v22 + 3);
      if (v45 >= v44 >> 1)
      {
        v22 = sub_10003A840((v44 > 1), v45 + 1, 1, v22);
      }

      *(v22 + 2) = v45 + 1;
      v46 = &v22[56 * v45];
      *(v46 + 4) = v39;
      *(v46 + 5) = v41;
      *(v46 + 6) = v35;
      *(v46 + 7) = v37;
      v46[64] = 2;
      *(v46 + 9) = 0;
      *(v46 + 10) = 0;
      if (v55)
      {
        v47 = [v55 userInterfaceIdiom];

        if (v47 == 3)
        {
          v48 = 0;
          v49 = v43;
          v43 = 0;
LABEL_27:
          v64 = 1;
          *a3 = v48;
          *(a3 + 8) = v43;
          *(a3 + 16) = v42;
          *(a3 + 24) = v49;
          *(a3 + 32) = 0;
          *(a3 + 40) = 0;
          *(a3 + 48) = 1;
          *(a3 + 56) = v22;
          *(a3 + 64) = 0;
          return result;
        }
      }

      else
      {
      }

      v49 = 0;
      v48 = v42;
      v42 = 0;
      goto LABEL_27;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

double sub_1001393C8@<D0>(uint64_t a1@<X8>)
{
  sub_1004D83FC();
  __chkstk_darwin();
  v2 = sub_1004DD3EC();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v22 - v6;
  sub_1004DD37C();
  v8 = *(v3 + 16);
  v8(v5, v7, v2);
  if (qword_100633A80 != -1)
  {
    swift_once();
  }

  v9 = qword_100671958;
  sub_1004D838C();
  v10 = v9;
  v11 = sub_1004DD4AC();
  v23 = v12;
  v24 = v11;
  v13 = *(v3 + 8);
  v13(v7, v2);
  sub_1004DD37C();
  v8(v5, v7, v2);
  sub_1004D838C();
  v14 = sub_1004DD4AC();
  v16 = v15;
  v13(v7, v2);
  sub_100004CB8(&qword_100634F40, &qword_100515800);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_100511DA0;
  sub_100136DFC(v25);
  result = *v25;
  v19 = v25[1];
  v20 = v25[2];
  *(v17 + 32) = v25[0];
  *(v17 + 48) = v19;
  *(v17 + 64) = v20;
  *(v17 + 80) = v26;
  v21 = v23;
  *a1 = v24;
  *(a1 + 8) = v21;
  *(a1 + 16) = v14;
  *(a1 + 24) = v16;
  *(a1 + 32) = 0;
  *(a1 + 33) = v25[0];
  *(a1 + 36) = *(v25 + 3);
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  *(a1 + 49) = *v27;
  *(a1 + 52) = *&v27[3];
  *(a1 + 56) = v17;
  *(a1 + 64) = 0;
  return result;
}

uint64_t sub_1001396CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v55 = a2;
  v56 = a1;
  v53 = a3;
  v57 = sub_1004D82AC();
  v54 = *(v57 - 8);
  __chkstk_darwin();
  v48 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004D83FC();
  __chkstk_darwin();
  v4 = sub_1004DD3EC();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v40 - v8;
  sub_1004DD37C();
  v10 = *(v5 + 16);
  v10(v7, v9, v4);
  if (qword_100633A80 != -1)
  {
    swift_once();
  }

  v11 = qword_100671958;
  v12 = qword_100671958;
  sub_1004D838C();
  v13 = v12;
  v14 = sub_1004DD4AC();
  v51 = v15;
  v52 = v14;
  v16 = *(v5 + 8);
  v43 = v5 + 8;
  v16(v9, v4);
  sub_1004DD37C();
  v10(v7, v9, v4);
  v45 = v10;
  v47 = v5 + 16;
  sub_1004D838C();
  v44 = v11;
  v17 = sub_1004DD4AC();
  v49 = v18;
  v50 = v17;
  v19 = v16;
  v46 = v16;
  v16(v9, v4);
  sub_100004CB8(&qword_100634F40, &qword_100515800);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1005126C0;
  sub_1004DD37C();
  v10(v7, v9, v4);
  sub_1004D838C();
  v21 = sub_1004DD4AC();
  v41 = v22;
  v42 = v21;
  v19(v9, v4);
  v23 = swift_allocObject();
  *(v23 + 16) = v56;
  *(v23 + 24) = v55;

  v24 = v48;
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v25 = sub_1004D827C();
  v27 = v26;
  v54 = *(v54 + 8);
  (v54)(v24, v57);
  *(v20 + 32) = v25;
  *(v20 + 40) = v27;
  v28 = v41;
  *(v20 + 48) = v42;
  *(v20 + 56) = v28;
  *(v20 + 64) = 2;
  *(v20 + 72) = &unk_10051BD98;
  *(v20 + 80) = v23;
  sub_1004DD37C();
  v45(v7, v9, v4);
  sub_1004D838C();
  v29 = sub_1004DD4AC();
  v31 = v30;
  v46(v9, v4);
  v32 = swift_allocObject();
  *(v32 + 16) = v56;
  *(v32 + 24) = v55;

  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v33 = sub_1004D827C();
  v35 = v34;
  result = (v54)(v24, v57);
  *(v20 + 88) = v33;
  *(v20 + 96) = v35;
  *(v20 + 104) = v29;
  *(v20 + 112) = v31;
  *(v20 + 120) = 2;
  *(v20 + 128) = &unk_10051BDA8;
  *(v20 + 136) = v32;
  v37 = v53;
  v38 = v50;
  v39 = v51;
  *v53 = v52;
  v37[1] = v39;
  v37[2] = v38;
  v37[3] = v49;
  *(v37 + 32) = 0;
  *(v37 + 33) = v59[0];
  *(v37 + 9) = *(v59 + 3);
  v37[5] = 1;
  *(v37 + 48) = 0;
  *(v37 + 49) = *v58;
  *(v37 + 13) = *&v58[3];
  v37[7] = v20;
  v37[8] = 0;
  return result;
}

uint64_t sub_100139C90(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100035C88;

  return sub_10012EF44(a1, a2, v7, v6);
}

uint64_t sub_100139D40(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100035B28;

  return sub_10012EFCC(a1, a2, v7, v6);
}

unint64_t sub_100139DF0()
{
  result = qword_100637D00;
  if (!qword_100637D00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100637D00);
  }

  return result;
}

uint64_t sub_100139E3C()
{

  return swift_deallocObject();
}

uint64_t sub_100139E74(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100035C88;

  return sub_10012EBC8(a1, a2, v7, v6);
}

uint64_t sub_100139F24(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100035C88;

  return sub_10012EE08(a1, a2, v6);
}

uint64_t sub_100139FD8(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100035C88;

  return sub_10012E688(a1, a2, v7, v6);
}

uint64_t sub_10013A088()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10013A0C8(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100035C88;

  return sub_10012E718(a1, a2, v7, v6);
}

uint64_t sub_10013A178()
{
  sub_100008D24((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_10013A1B8(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 56);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100035C88;

  return sub_10012E7E8(a1, a2, v2 + 16, v6);
}

uint64_t sub_10013A268(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t UInt32.formatName.getter(int a1)
{
  v10 = 0;
  memset(inSpecifier, 0, sizeof(inSpecifier));
  DWORD2(inSpecifier[0]) = a1;
  if (a1 == 1634492771)
  {
    return 1128352833;
  }

  outPropertyData = 0;
  ioPropertyDataSize = 8;
  Property = AudioFormatGetProperty(0x666E616Du, 0x28u, inSpecifier, &ioPropertyDataSize, &outPropertyData);
  if (Property == sub_1004D9A4C() || !outPropertyData)
  {
    if (qword_100633C78 != -1)
    {
      swift_once();
    }

    v4 = sub_1004D966C();
    sub_100035430(v4, static Logger.audioFormat);
    v5 = sub_1004D964C();
    v6 = sub_1004DDF7C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 67109120;
      *(v7 + 4) = Property;
      _os_log_impl(&_mh_execute_header, v5, v6, "AudioFormatGetProperty kAudioFormatProperty_FormatName error: %d", v7, 8u);
    }

    return 0;
  }

  else
  {
    v3 = sub_1004DD4BC(outPropertyData);

    return v3;
  }
}

char *sub_10013A488()
{
  result = sub_10013A4A8();
  static Datavault.music = result;
  return result;
}

char *sub_10013A4A8()
{
  sub_100004CB8(&qword_100637D38, &qword_10051BE88);
  __chkstk_darwin();
  v1 = &v20 - v0;
  v2 = sub_1004D809C();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v20 - v6;
  __chkstk_darwin();
  v9 = &v20 - v8;
  v10 = [objc_opt_self() defaultManager];
  v11 = sub_1004DD3FC();
  v12 = [v10 containerURLForSecurityApplicationGroupIdentifier:v11];

  if (!v12)
  {
    return 0;
  }

  sub_1004D802C();

  sub_1004D7FEC();
  type metadata accessor for Datavault(0);
  (*(v3 + 16))(v5, v7, v2);
  v14 = Datavault.__allocating_init(url:storageClass:)(v5, 0x707041636973754DLL, 0xE800000000000000);
  if (qword_100633C50 != -1)
  {
    swift_once();
  }

  v15 = sub_1004D966C();
  v16 = sub_100035430(v15, qword_100637D20);
  v17 = *(v15 - 8);
  (*(v17 + 16))(v1, v16, v15);
  v18 = *(v3 + 8);
  v18(v7, v2);
  v18(v9, v2);
  (*(v17 + 56))(v1, 0, 1, v15);
  v19 = OBJC_IVAR____TtC14MusicUtilities9Datavault_logger;
  swift_beginAccess();
  sub_10013ADF0(v1, &v14[v19]);
  swift_endAccess();
  return v14;
}

uint64_t *Datavault.music.unsafeMutableAddressor()
{
  if (qword_100633C48 != -1)
  {
    swift_once();
  }

  return &static Datavault.music;
}

double static Datavault.music.getter()
{
  if (qword_100633C48 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  return result;
}

double static Datavault.music.setter(uint64_t a1)
{
  if (qword_100633C48 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static Datavault.music = a1;

  return result;
}

uint64_t (*static Datavault.music.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_100633C48 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_10013AD0C()
{
  v0 = sub_1004D966C();
  sub_100035718(v0, qword_100637D20);
  sub_100035430(v0, qword_100637D20);
  return sub_1004D965C();
}

uint64_t sub_10013AD88(uint64_t a1)
{
  v2 = sub_100004CB8(&qword_100636460, &qword_100518BE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10013ADF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004CB8(&qword_100637D38, &qword_10051BE88);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t NSDateComponents.lastUpdatedDateString.getter()
{
  sub_100004CB8(&qword_100636E60, &qword_10051A950);
  __chkstk_darwin();
  v1 = &v16 - v0;
  v2 = sub_1004D826C();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v16 - v6;
  v8 = sub_1004D7D4C();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004D7D0C();
  sub_1004D823C();
  sub_1004D7D2C();
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v3 + 8))(v7, v2);
    (*(v9 + 8))(v11, v8);
    sub_10013B310(v1);
    return 0;
  }

  else
  {
    (*(v3 + 32))(v5, v1, v2);
    Date.lastUpdatedDateString(relativeTo:)();
    v14 = v13;
    v15 = *(v3 + 8);
    v15(v5, v2);
    v15(v7, v2);
    (*(v9 + 8))(v11, v8);
    return v14;
  }
}

uint64_t DateComponents.lastUpdatedDateString(relativeTo:)(uint64_t a1)
{
  sub_100004CB8(&qword_100636E60, &qword_10051A950);
  __chkstk_darwin();
  v2 = &v10 - v1;
  v3 = sub_1004D826C();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004D7D2C();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_10013B310(v2);
    return 0;
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    Date.lastUpdatedDateString(relativeTo:)();
    v9 = v8;
    (*(v4 + 8))(v6, v3);
    return v9;
  }
}

uint64_t sub_10013B310(uint64_t a1)
{
  v2 = sub_100004CB8(&qword_100636E60, &qword_10051A950);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t DateComponents.lastUpdatedDateString.getter()
{
  sub_100004CB8(&qword_100636E60, &qword_10051A950);
  __chkstk_darwin();
  v1 = &v12 - v0;
  v2 = sub_1004D826C();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v12 - v6;
  sub_1004D823C();
  sub_1004D7D2C();
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v3 + 8))(v7, v2);
    sub_10013B310(v1);
    return 0;
  }

  else
  {
    (*(v3 + 32))(v5, v1, v2);
    Date.lastUpdatedDateString(relativeTo:)();
    v10 = v9;
    v11 = *(v3 + 8);
    v11(v5, v2);
    v11(v7, v2);
    return v10;
  }
}

void Date.lastUpdatedDateString(relativeTo:)()
{
  sub_1004DD3CC();
  __chkstk_darwin();
  sub_1004D83FC();
  __chkstk_darwin();
  v0 = sub_1004DD3EC();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v18 - v4;
  sub_1004D819C();
  if (v6 <= 0.0)
  {
    return;
  }

  if (v6 < 3600.0)
  {
    v7 = v6 / 60.0;
    if (*&v7 >> 52 > 0x7FEuLL)
    {
      __break(1u);
    }

    else if (v7 > -9.22337204e18)
    {
      if (v7 < 9.22337204e18)
      {
        v8 = v7;
        if (!v7)
        {
          sub_1004DD37C();
          goto LABEL_21;
        }

        sub_1004DD3BC();
        v20._countAndFlagsBits = 0x2064657461647055;
        v20._object = 0xE800000000000000;
        sub_1004DD3AC(v20);
        v19 = v8;
        sub_1004DD38C();
        v9 = 9;
        goto LABEL_8;
      }

      goto LABEL_33;
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v6 >= 86400.0)
  {
    if (v6 >= 604800.0)
    {
      if (v6 >= 2592000.0)
      {
        return;
      }

      v16 = v6 / 604800.0;
      if (*&v16 >> 52 <= 0x7FEuLL)
      {
        if (v16 > -9.22337204e18)
        {
          if (v16 < 9.22337204e18)
          {
            v17 = v16;
            sub_1004DD3BC();
            v23._countAndFlagsBits = 0x2064657461647055;
            v23._object = 0xE800000000000000;
            sub_1004DD3AC(v23);
            v19 = v17;
            sub_1004DD38C();
            v9 = 19;
LABEL_8:
            v10._countAndFlagsBits = v9 | 0x6F67612064;
LABEL_19:
            v10._object = 0xE500000000000000;
            goto LABEL_20;
          }

LABEL_42:
          __break(1u);
          return;
        }

LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v13 = v6 / 86400.0;
    if (*&v13 >> 52 <= 0x7FEuLL)
    {
      if (v13 > -9.22337204e18)
      {
        if (v13 < 9.22337204e18)
        {
          v14 = v13;
          sub_1004DD3BC();
          v22._countAndFlagsBits = 0x2064657461647055;
          v22._object = 0xE800000000000000;
          sub_1004DD3AC(v22);
          v19 = v14;
          sub_1004DD38C();
          v10._countAndFlagsBits = 0x6F67612064;
          goto LABEL_19;
        }

        goto LABEL_39;
      }

LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v11 = v6 / 3600.0;
  if (*&v11 >> 52 > 0x7FEuLL)
  {
    goto LABEL_34;
  }

  if (v11 <= -9.22337204e18)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v11 >= 9.22337204e18)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v12 = v11;
  sub_1004DD3BC();
  v21._countAndFlagsBits = 0x2064657461647055;
  v21._object = 0xE800000000000000;
  sub_1004DD3AC(v21);
  v19 = v12;
  sub_1004DD38C();
  v10._countAndFlagsBits = 0x6F6761207268;
  v10._object = 0xE600000000000000;
LABEL_20:
  sub_1004DD3AC(v10);
  sub_1004DD3DC();
LABEL_21:
  (*(v1 + 16))(v3, v5, v0);
  if (qword_100633A80 != -1)
  {
    swift_once();
  }

  v15 = qword_100671958;
  sub_1004D838C();
  sub_1004DD4AC();
  (*(v1 + 8))(v5, v0);
}

uint64_t Date.lastUpdatedDateString.getter()
{
  v0 = sub_1004D826C();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004D823C();
  Date.lastUpdatedDateString(relativeTo:)();
  v5 = v4;
  (*(v1 + 8))(v3, v0);
  return v5;
}

uint64_t static String.stringForTrackCountAndDuration(trackCount:duration:)(uint64_t a1, int a2, uint64_t a3, char a4)
{
  v63 = a2;
  v62 = a1;
  sub_1004D83FC();
  __chkstk_darwin();
  v61 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1004DD3EC();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v60 = &v54 - v11;
  sub_1004DD3CC();
  __chkstk_darwin();
  v12 = sub_1004D84BC();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004D84CC();
  __chkstk_darwin();
  v19 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = v10;
  if ((a4 & 1) != 0 || (v20 = *&a3, *&a3 <= 0.0))
  {
    v36 = 0;
    v38 = 0;
    if ((v63 & 1) == 0)
    {
LABEL_13:
      if (v38)
      {
        sub_1004DD3BC();
        v70._countAndFlagsBits = 0;
        v70._object = 0xE000000000000000;
        sub_1004DD3AC(v70);
        v68 = v62;
        sub_1004DD38C();
        v71._countAndFlagsBits = 0x297328676E6F7320;
        v71._object = 0xEA0000000000202CLL;
        sub_1004DD3AC(v71);
        v72._countAndFlagsBits = v36;
        v72._object = v38;
        sub_1004DD39C(v72);

        v39._countAndFlagsBits = 0;
        v39._object = 0xE000000000000000;
LABEL_17:
        sub_1004DD3AC(v39);
        v41 = v60;
        sub_1004DD3DC();
        (*(v8 + 16))(v59, v41, v7);
        if (qword_100633A80 != -1)
        {
          swift_once();
        }

        v42 = qword_100671958;
        sub_1004D838C();
        v36 = sub_1004DD4AC();
        (*(v8 + 8))(v41, v7);
        return v36;
      }

      v40 = v62;
      if (v62 >= 1)
      {
        sub_1004DD3BC();
        v73._countAndFlagsBits = 0;
        v73._object = 0xE000000000000000;
        sub_1004DD3AC(v73);
        v68 = v40;
        sub_1004DD38C();
        v39._countAndFlagsBits = 0x297328676E6F7320;
        v39._object = 0xE800000000000000;
        goto LABEL_17;
      }

      return 0;
    }

LABEL_9:
    if (v38)
    {
      return v36;
    }

    return 0;
  }

  v55 = v17;
  v56 = v7;
  v57 = v16;
  v58 = v8;
  sub_1004D848C();
  v21 = *(v13 + 104);
  v21(v15, enum case for Calendar.Component.second(_:), v12);
  sub_1004D843C();
  v54 = v22;
  v24 = v23;
  v25 = *(v13 + 8);
  v25(v15, v12);
  if (v24 & 1) != 0 || (v21(v15, enum case for Calendar.Component.minute(_:), v12), sub_1004D843C(), v27 = v26, v29 = v28, result = (v25)(v15, v12), (v29))
  {
    v8 = v58;
    goto LABEL_6;
  }

  v43 = v54 * v27;
  v8 = v58;
  if ((v54 * v27) >> 64 != (v54 * v27) >> 63)
  {
    __break(1u);
    goto LABEL_43;
  }

  if ((~a3 & 0x7FF0000000000000) == 0)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (*&a3 <= -9.22337204e18)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (*&a3 >= 9.22337204e18)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (!v43)
  {
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v44 = *&a3;
  if (*&a3 == 0x8000000000000000 && v43 == -1)
  {
    goto LABEL_53;
  }

  v45 = v44 / v43 * v43;
  if ((v44 / v43 * v43) >> 64 != v45 >> 63)
  {
    goto LABEL_47;
  }

  v46 = v44 % v43;
  if (__OFSUB__(v44, v45))
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (!v54)
  {
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if (v46 == 0x8000000000000000 && v54 == -1)
  {
    goto LABEL_54;
  }

  v48 = v46 / v54;
  v49 = v46 / v54 * v54;
  if ((v48 * v54) >> 64 != v49 >> 63)
  {
    goto LABEL_50;
  }

  v50 = __OFADD__(v45, v49);
  v51 = v45 + v49;
  if (v50)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v50 = __OFSUB__(v44, v51);
  v52 = v44 - v51;
  if (v50)
  {
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  if (v52 < v54 / 2)
  {
    goto LABEL_6;
  }

  v50 = __OFSUB__(v54, v52);
  v53 = v54 - v52;
  if (!v50)
  {
    v20 = *&a3 + v53;
LABEL_6:
    v31 = [*NSDateFormatter.collectionsDurationFormatter.unsafeMutableAddressor() stringFromTimeInterval:v20];
    if (v31)
    {
      v32 = v31;
      v33 = sub_1004DD43C();
      v35 = v34;

      v68 = v33;
      v69 = v35;
      v66 = 44;
      v67 = 0xE100000000000000;
      v64 = 0;
      v65 = 0xE000000000000000;
      sub_100030C58();
      v36 = sub_1004DE87C();
      v38 = v37;

      (*(v55 + 8))(v19, v57);
    }

    else
    {
      (*(v55 + 8))(v19, v57);
      v36 = 0;
      v38 = 0;
    }

    v7 = v56;
    if ((v63 & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_9;
  }

LABEL_55:
  __break(1u);
  return result;
}

Swift::Void __swiftcall LSApplicationWorkspace.openSettings()()
{
  v1 = v0;
  sub_100004CB8(&qword_100634B30, &unk_100513D70);
  __chkstk_darwin();
  v3 = &v12 - v2;
  v4 = sub_1004D809C();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004D805C();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_10001074C(v3, &qword_100634B30, &unk_100513D70);
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    sub_1004D7FDC(v8);
    v10 = v9;
    sub_10005E644(_swiftEmptyArrayStorage);
    isa = sub_1004DD1FC().super.isa;

    [v1 openSensitiveURL:v10 withOptions:isa];

    (*(v5 + 8))(v7, v4);
  }
}

Swift::Void __swiftcall LSApplicationWorkspace.openRestrictions()()
{
  v1 = v0;
  sub_100004CB8(&qword_100634B30, &unk_100513D70);
  __chkstk_darwin();
  v3 = &v12 - v2;
  v4 = sub_1004D809C();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004D805C();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_10001074C(v3, &qword_100634B30, &unk_100513D70);
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    sub_1004D7FDC(v8);
    v10 = v9;
    sub_10005E644(_swiftEmptyArrayStorage);
    isa = sub_1004DD1FC().super.isa;

    [v1 openSensitiveURL:v10 withOptions:isa];

    (*(v5 + 8))(v7, v4);
  }
}

Swift::Void __swiftcall LSApplicationWorkspace.openAudioQuality()()
{
  v1 = v0;
  sub_100004CB8(&qword_100634B30, &unk_100513D70);
  __chkstk_darwin();
  v3 = &v12 - v2;
  v4 = sub_1004D809C();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004D805C();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_10001074C(v3, &qword_100634B30, &unk_100513D70);
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    sub_1004D7FDC(v8);
    v10 = v9;
    sub_10005E644(_swiftEmptyArrayStorage);
    isa = sub_1004DD1FC().super.isa;

    [v1 openSensitiveURL:v10 withOptions:isa];

    (*(v5 + 8))(v7, v4);
  }
}

Swift::Void __swiftcall LSApplicationWorkspace.openAtmos()()
{
  v1 = v0;
  sub_100004CB8(&qword_100634B30, &unk_100513D70);
  __chkstk_darwin();
  v3 = &v12 - v2;
  v4 = sub_1004D809C();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004D805C();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_10001074C(v3, &qword_100634B30, &unk_100513D70);
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    sub_1004D7FDC(v8);
    v10 = v9;
    sub_10005E644(_swiftEmptyArrayStorage);
    isa = sub_1004DD1FC().super.isa;

    [v1 openSensitiveURL:v10 withOptions:isa];

    (*(v5 + 8))(v7, v4);
  }
}

Swift::Void __swiftcall LSApplicationWorkspace.openMusicSettings()()
{
  v1 = v0;
  sub_100004CB8(&qword_100634B30, &unk_100513D70);
  __chkstk_darwin();
  v3 = &v12 - v2;
  v4 = sub_1004D809C();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004D805C();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_10001074C(v3, &qword_100634B30, &unk_100513D70);
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    sub_1004D7FDC(v8);
    v10 = v9;
    sub_10005E644(_swiftEmptyArrayStorage);
    isa = sub_1004DD1FC().super.isa;

    [v1 openSensitiveURL:v10 withOptions:isa];

    (*(v5 + 8))(v7, v4);
  }
}

Swift::Void __swiftcall LSApplicationWorkspace.openAccountSettings()()
{
  v1 = v0;
  sub_100004CB8(&qword_100634B30, &unk_100513D70);
  __chkstk_darwin();
  v3 = &v12 - v2;
  v4 = sub_1004D809C();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004D805C();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_10001074C(v3, &qword_100634B30, &unk_100513D70);
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    sub_1004D7FDC(v8);
    v10 = v9;
    sub_10005E644(_swiftEmptyArrayStorage);
    isa = sub_1004DD1FC().super.isa;

    [v1 openSensitiveURL:v10 withOptions:isa];

    (*(v5 + 8))(v7, v4);
  }
}

Swift::Bool __swiftcall LSApplicationWorkspace.openNotificationSettings()()
{
  v1 = v0;
  sub_100004CB8(&qword_100634B30, &unk_100513D70);
  __chkstk_darwin();
  v3 = &v14 - v2;
  v4 = sub_1004D809C();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004D805C();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_10001074C(v3, &qword_100634B30, &unk_100513D70);
    return 0;
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    sub_1004D7FDC(v9);
    v11 = v10;
    sub_10005E644(_swiftEmptyArrayStorage);
    isa = sub_1004DD1FC().super.isa;

    v13 = [v1 openSensitiveURL:v11 withOptions:isa];

    (*(v5 + 8))(v7, v4);
    return v13;
  }
}

Swift::Void __swiftcall LSApplicationWorkspace.openMusicHapticsSettings()()
{
  v1 = v0;
  sub_100004CB8(&qword_100634B30, &unk_100513D70);
  __chkstk_darwin();
  v3 = &v12 - v2;
  v4 = sub_1004D809C();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004D805C();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_10001074C(v3, &qword_100634B30, &unk_100513D70);
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    sub_1004D7FDC(v8);
    v10 = v9;
    sub_10005E644(_swiftEmptyArrayStorage);
    isa = sub_1004DD1FC().super.isa;

    [v1 openSensitiveURL:v10 withOptions:isa];

    (*(v5 + 8))(v7, v4);
  }
}

uint64_t LSApplicationWorkspace.openiTunesStore(with:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1004D7C7C();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v44 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004CB8(&qword_100634B30, &unk_100513D70);
  __chkstk_darwin();
  v45 = v37 - v7;
  v46 = sub_1004D809C();
  v8 = *(v46 - 8);
  __chkstk_darwin();
  v10 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v43 = v37 - v11;
  sub_100004CB8(&qword_100637978, &qword_10051B948);
  __chkstk_darwin();
  v13 = v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin();
  v16 = v37 - v15;
  v17 = *(v5 + 56);
  v17(v37 - v15, 1, 1, v4, v14);
  if (a1)
  {
    v18 = [a1 universalStore];
    if (v18)
    {
      v41 = a2;
      v40 = [v18 adamID];
      swift_unknownObjectRelease();
      if (qword_100633C28 != -1)
      {
        swift_once();
      }

      sub_100004CB8(&qword_1006372B0, &qword_1005128E0);
      UnfairLock.locked<A>(_:)(sub_100030C3C);
      v19 = v48;
      a2 = v41;
      if (v48)
      {
        v39 = v5;
        v20 = sub_1004DD3FC();
        v21 = v19;
        v22 = [v19 urlForBagKey:v20];

        if (v22)
        {
          v38 = v21;
          sub_1004D802C();

          (*(v8 + 32))(v43, v10, v46);
          sub_1004D7BEC();
          sub_10013E58C(v13, v16);
          v5 = v39;
          v23 = *(v39 + 48);
          v37[1] = v39 + 48;
          if (v23(v16, 1, v4) || (v24 = sub_1004D7BCC()) == 0)
          {

            v24 = _swiftEmptyArrayStorage;
          }

          v48 = v24;
          sub_100004CB8(&qword_100635078, &qword_100526F50);
          sub_1004D7BBC();
          v36 = swift_allocObject();
          *(v36 + 16) = xmmword_1005126C0;
          v47 = v40;
          sub_1004DEFFC();
          sub_1004D7B8C();

          sub_1004D7B8C();
          sub_100045434(v36);
          if (v23(v16, 1, v4))
          {
          }

          else
          {
            sub_1004D7BDC();
          }

          a2 = v41;
          v27 = v45;
          v26 = v46;
          (*(v8 + 8))(v43, v46);
          goto LABEL_15;
        }

        a2 = v41;
        v5 = v39;
      }
    }
  }

  sub_1004D7C6C();
  (v17)(v13, 0, 1, v4);
  sub_10013E58C(v13, v16);
  v23 = *(v5 + 48);
  if (!v23(v16, 1, v4))
  {
    sub_1004D7C4C();
  }

  v25 = v23(v16, 1, v4);
  v26 = v46;
  if (!v25)
  {
    sub_1004D7C0C();
  }

  v27 = v45;
LABEL_15:
  if (v23(v16, 1, v4))
  {
    (*(v8 + 56))(v27, 1, 1, v26);
  }

  else
  {
    v28 = v44;
    (*(v5 + 16))(v44, v16, v4);
    sub_1004D7BFC();
    (*(v5 + 8))(v28, v4);
    if ((*(v8 + 48))(v27, 1, v26) != 1)
    {
      (*(v8 + 32))(a2, v27, v26);
      sub_1004D7FDC(v31);
      v33 = v32;
      sub_10005E644(_swiftEmptyArrayStorage);
      v34 = a2;
      isa = sub_1004DD1FC().super.isa;

      [v42 openSensitiveURL:v33 withOptions:isa];

      a2 = v34;
      v29 = 0;
      goto LABEL_19;
    }
  }

  sub_10001074C(v27, &qword_100634B30, &unk_100513D70);
  v29 = 1;
LABEL_19:
  (*(v8 + 56))(a2, v29, 1, v26);
  return sub_10001074C(v16, &qword_100637978, &qword_10051B948);
}

uint64_t LSApplicationWorkspace.openiTunesStore(with:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1004D7C7C();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v39 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004CB8(&qword_100634B30, &unk_100513D70);
  __chkstk_darwin();
  v42 = v37 - v5;
  v6 = sub_1004D809C();
  v43 = *(v6 - 8);
  v44 = v6;
  __chkstk_darwin();
  v8 = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v40 = v37 - v9;
  sub_100004CB8(&qword_100637978, &qword_10051B948);
  __chkstk_darwin();
  v11 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin();
  v14 = v37 - v13;
  v15 = *(v3 + 56);
  v15(v37 - v13, 1, 1, v2, v12);
  v16 = sub_1004DC9AC();
  v41 = v3;
  if (v17)
  {
    v37[1] = v16;
    v38 = a1;
    if (qword_100633C28 != -1)
    {
      swift_once();
    }

    sub_100004CB8(&qword_1006372B0, &qword_1005128E0);
    UnfairLock.locked<A>(_:)(sub_100115284);
    v18 = v45;
    if (v45)
    {
      v19 = sub_1004DD3FC();
      v20 = [v18 urlForBagKey:v19];

      if (v20)
      {
        sub_1004D802C();

        (*(v43 + 32))(v40, v8, v44);
        sub_1004D7BEC();
        sub_10013E58C(v11, v14);
        v21 = *(v41 + 48);
        if (v21(v14, 1, v2) || (v22 = sub_1004D7BCC()) == 0)
        {

          v22 = _swiftEmptyArrayStorage;
        }

        v45 = v22;
        sub_100004CB8(&qword_100635078, &qword_100526F50);
        sub_1004D7BBC();
        v27 = swift_allocObject();
        *(v27 + 16) = xmmword_1005126C0;
        sub_1004D7B8C();

        sub_1004D7B8C();
        sub_100045434(v27);
        if (v21(v14, 1, v2))
        {
        }

        else
        {
          sub_1004D7BDC();
        }

        v25 = v43;
        v24 = v44;
        v26 = v42;
        (*(v43 + 8))(v40, v44);
        a1 = v38;
        goto LABEL_20;
      }

      v3 = v41;
    }

    a1 = v38;
  }

  sub_1004D7C6C();
  (v15)(v11, 0, 1, v2);
  sub_10013E58C(v11, v14);
  v21 = *(v3 + 48);
  if (!v21(v14, 1, v2))
  {
    sub_1004D7C4C();
  }

  v23 = v21(v14, 1, v2);
  v25 = v43;
  v24 = v44;
  if (!v23)
  {
    sub_1004D7C0C();
  }

  v26 = v42;
LABEL_20:
  if (v21(v14, 1, v2))
  {
    (*(v25 + 56))(v26, 1, 1, v24);
  }

  else
  {
    v28 = v41;
    v29 = v39;
    (*(v41 + 16))(v39, v14, v2);
    sub_1004D7BFC();
    (*(v28 + 8))(v29, v2);
    if ((*(v25 + 48))(v26, 1, v24) != 1)
    {
      (*(v25 + 32))(a1, v26, v24);
      sub_1004D7FDC(v32);
      v34 = v33;
      sub_10005E644(_swiftEmptyArrayStorage);
      v35 = a1;
      isa = sub_1004DD1FC().super.isa;

      [v37[2] openSensitiveURL:v34 withOptions:isa];

      a1 = v35;
      v30 = 0;
      goto LABEL_24;
    }
  }

  sub_10001074C(v26, &qword_100634B30, &unk_100513D70);
  v30 = 1;
LABEL_24:
  (*(v25 + 56))(a1, v30, 1, v24);
  return sub_10001074C(v14, &qword_100637978, &qword_10051B948);
}

Swift::Void __swiftcall LSApplicationWorkspace.openMusic(tabIdentifier:)(MusicCore::TabIdentifier_optional tabIdentifier)
{
  v2 = v1;
  value = tabIdentifier.value;
  sub_100004CB8(&qword_100634B30, &unk_100513D70);
  __chkstk_darwin();
  v5 = &v23 - v4;
  v6 = sub_1004D809C();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = 0x2F2F3A636973756DLL;
  v25 = 0xE800000000000000;
  if (value != 7)
  {
    v10 = 0x7972617262696CLL;
    v23._countAndFlagsBits = 0x6261743F2F626174;
    v23._object = 0xE90000000000003DLL;
    v11 = 0xE600000000000000;
    v12 = 0x736F65646976;
    if (value != 5)
    {
      v12 = 0x7473696C79616C70;
      v11 = 0xE900000000000073;
    }

    v13 = 0xE500000000000000;
    v14 = 0x6F69646172;
    if (value != 3)
    {
      v14 = 0x686372616573;
      v13 = 0xE600000000000000;
    }

    if (value <= 4)
    {
      v12 = v14;
      v11 = v13;
    }

    v15 = 0xE900000000000077;
    v16 = 0x6F4E6E657473696CLL;
    if (value != 1)
    {
      v16 = 0x6573776F7262;
      v15 = 0xE600000000000000;
    }

    if (value)
    {
      v10 = v16;
    }

    else
    {
      v15 = 0xE700000000000000;
    }

    if (value <= 2)
    {
      v17._countAndFlagsBits = v10;
    }

    else
    {
      v17._countAndFlagsBits = v12;
    }

    if (value <= 2)
    {
      v18 = v15;
    }

    else
    {
      v18 = v11;
    }

    v17._object = v18;
    sub_1004DD5FC(v17);

    sub_1004DD5CC(v23);
  }

  sub_1004D805C();

  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_10001074C(v5, &qword_100634B30, &unk_100513D70);
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    sub_1004D7FDC(v19);
    v21 = v20;
    sub_10005E644(_swiftEmptyArrayStorage);
    isa = sub_1004DD1FC().super.isa;

    [v2 openSensitiveURL:v21 withOptions:isa];

    (*(v7 + 8))(v9, v6);
  }
}

uint64_t sub_10013E58C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004CB8(&qword_100637978, &qword_10051B948);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id static MPModelPlaylist.defaultMusicKind.getter()
{
  v0 = objc_opt_self();
  v1 = _sSo20MPModelPlaylistEntryC9MusicCoreE07defaultD4KindSo0abcG0CvgZ_0();
  v2 = [v0 kindWithPlaylistEntryKind:v1 options:0];

  return v2;
}

id sub_10013E678(void *a1)
{
  v1 = [objc_opt_self() standardUserDefaults];
  strcpy(v5, "showAllTVShows");
  v5[15] = -18;
  sub_100030C58();
  NSUserDefaults.subscript.getter(&v6);
  if (!v7)
  {
    sub_10013EDFC(&v6);
    goto LABEL_6;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:

    goto LABEL_7;
  }

  if (v5[0])
  {
    v2 = 3;
    goto LABEL_8;
  }

LABEL_7:
  v2 = 2;
LABEL_8:
  v3 = [objc_opt_self() kindWithVariants:v2];

  return v3;
}

id static MPModelArtist.defaultMusicKind.getter()
{
  v0 = objc_opt_self();
  v1 = objc_opt_self();
  v2 = [objc_opt_self() kindWithVariants:3];
  v3 = [v1 kindWithSongKind:v2];

  v4 = [v0 kindWithAlbumKind:v3];
  return v4;
}

id static MPModelAlbum.defaultMusicKind.getter()
{
  v0 = objc_opt_self();
  v1 = [objc_opt_self() kindWithVariants:3];
  v2 = [v0 kindWithSongKind:v1];

  return v2;
}

id static MPModelTVShow.defaultMusicKind.getter()
{
  v0 = [objc_opt_self() standardUserDefaults];
  strcpy(v8, "showAllTVShows");
  v8[15] = -18;
  sub_100030C58();
  NSUserDefaults.subscript.getter(&v9);
  if (!v10)
  {
    sub_10013EDFC(&v9);
    goto LABEL_6;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:

    goto LABEL_7;
  }

  if ((v8[0] & 1) == 0)
  {
LABEL_7:
    v1 = 2;
    goto LABEL_8;
  }

  v1 = 3;
LABEL_8:
  v2 = objc_opt_self();
  v3 = objc_opt_self();
  v4 = [objc_opt_self() kindWithVariants:v1];
  v5 = [v3 kindWithEpisodeKind:v4];

  v6 = [v2 kindWithSeasonKind:v5];
  return v6;
}

id static MPModelTVSeason.defaultMusicKind.getter()
{
  v0 = [objc_opt_self() standardUserDefaults];
  strcpy(v6, "showAllTVShows");
  v6[15] = -18;
  sub_100030C58();
  NSUserDefaults.subscript.getter(&v7);
  if (!v8)
  {
    sub_10013EDFC(&v7);
    goto LABEL_6;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:

    goto LABEL_7;
  }

  if ((v6[0] & 1) == 0)
  {
LABEL_7:
    v1 = 2;
    goto LABEL_8;
  }

  v1 = 3;
LABEL_8:
  v2 = objc_opt_self();
  v3 = [objc_opt_self() kindWithVariants:v1];
  v4 = [v2 kindWithEpisodeKind:v3];

  return v4;
}

id _sSo20MPModelPlaylistEntryC9MusicCoreE07defaultD4KindSo0abcG0CvgZ_0()
{
  sub_100004CB8(&qword_1006379A0, &unk_100518BF0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1005127F0;
  *(v0 + 32) = [objc_opt_self() kindWithVariants:7];
  v1 = objc_opt_self();
  v2 = [v1 standardUserDefaults];
  strcpy(v10, "showAllTVShows");
  v10[15] = -18;
  sub_100030C58();
  NSUserDefaults.subscript.getter(v11);
  if (!v12)
  {
    sub_10013EDFC(v11);
    goto LABEL_6;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:

    goto LABEL_7;
  }

  if (v10[0])
  {
    v3 = 3;
    goto LABEL_8;
  }

LABEL_7:
  v3 = 2;
LABEL_8:
  *(v0 + 40) = [objc_opt_self() kindWithVariants:v3];
  v4 = [v1 standardUserDefaults];
  strcpy(v10, "showAllTVShows");
  v10[15] = -18;
  NSUserDefaults.subscript.getter(v11);
  if (!v12)
  {
    sub_10013EDFC(v11);
    goto LABEL_13;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:

    goto LABEL_14;
  }

  if ((v10[0] & 1) == 0)
  {
LABEL_14:
    v5 = 2;
    goto LABEL_15;
  }

  v5 = 3;
LABEL_15:
  v6 = objc_opt_self();
  *(v0 + 48) = [objc_opt_self() kindWithVariants:v5];
  sub_100004CB8(&unk_100637D40, &qword_10051BEA8);
  isa = sub_1004DD85C().super.isa;

  v8 = [v6 kindWithKinds:isa];

  return v8;
}

uint64_t sub_10013EDFC(uint64_t a1)
{
  v2 = sub_100004CB8(&qword_100638E60, &unk_10051A920);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id MPModelPlaylistEntry.innermostModelObject.getter()
{
  v1 = [v0 type];
  if (v1 == 3)
  {
    v3 = [v5 movie];
LABEL_7:
    result = v3;
    v2 = v5;
    if (result)
    {
      return result;
    }

    goto LABEL_8;
  }

  if (v1 == 2)
  {
    v3 = [v5 tvEpisode];
    goto LABEL_7;
  }

  v2 = v5;
  if (v1 == 1)
  {
    v3 = [v5 song];
    goto LABEL_7;
  }

LABEL_8:

  return v2;
}

id MPModelGenericObject.innermostModelObject.getter()
{
  switch([v0 type])
  {
    case 1uLL:
      result = [v5 song];
      if (!result)
      {
        goto LABEL_37;
      }

      break;
    case 2uLL:
      result = [v5 album];
      if (!result)
      {
        goto LABEL_37;
      }

      break;
    case 3uLL:
      result = [v5 artist];
      if (!result)
      {
        goto LABEL_37;
      }

      break;
    case 4uLL:
      result = [v5 playlist];
      if (!result)
      {
        goto LABEL_37;
      }

      break;
    case 5uLL:
      v2 = [v5 playlistEntry];
      if (!v2)
      {
        goto LABEL_37;
      }

      v3 = v2;
      v4 = [v2 innermostModelObject];

      result = v4;
      break;
    case 6uLL:
      result = [v5 tvEpisode];
      if (!result)
      {
        goto LABEL_37;
      }

      break;
    case 7uLL:
      result = [v5 season];
      if (!result)
      {
        goto LABEL_37;
      }

      break;
    case 8uLL:
      result = [v5 show];
      if (!result)
      {
        goto LABEL_37;
      }

      break;
    case 9uLL:
      result = [v5 movie];
      if (!result)
      {
        goto LABEL_37;
      }

      break;
    case 0xAuLL:
      result = [v5 mediaClip];
      if (!result)
      {
        goto LABEL_37;
      }

      break;
    case 0xBuLL:
      result = [v5 podcast];
      if (!result)
      {
        goto LABEL_37;
      }

      break;
    case 0xCuLL:
      result = [v5 podcastEpisode];
      if (!result)
      {
        goto LABEL_37;
      }

      break;
    case 0xDuLL:
      result = [v5 radioStation];
      if (!result)
      {
        goto LABEL_37;
      }

      break;
    case 0xFuLL:
      result = [v5 genre];
      if (!result)
      {
        goto LABEL_37;
      }

      break;
    case 0x10uLL:
      result = [v5 curator];
      if (!result)
      {
        goto LABEL_37;
      }

      break;
    case 0x11uLL:
      result = [v5 socialPerson];
      if (!result)
      {
        goto LABEL_37;
      }

      break;
    case 0x13uLL:
      result = [v5 recordLabel];
      if (!result)
      {
        goto LABEL_37;
      }

      break;
    case 0x14uLL:
      result = [v5 creditsArtist];
      if (!result)
      {
        goto LABEL_37;
      }

      break;
    default:
LABEL_37:

      result = v5;
      break;
  }

  return result;
}

id MPModelStoreBrowseContentItem.innermostModelObject.getter()
{
  v1 = [v0 innerObject];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 innermostModelObject];

    return v3;
  }

  else
  {

    return v5;
  }
}

uint64_t sub_10013F3F4(uint64_t a1, unint64_t a2, int a3)
{
  sub_1004D83FC();
  __chkstk_darwin();
  v6 = sub_1004DD3EC();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v15 - v10;
  sub_1004DD3CC();
  __chkstk_darwin();
  result = 0;
  if ((a2 & 0x8000000000000000) == 0 && a1 >= 1)
  {
    sub_1004DD3BC();
    v17._countAndFlagsBits = 0;
    v17._object = 0xE000000000000000;
    sub_1004DD3AC(v17);
    v16 = *&a1;
    sub_1004DD38C();
    v18._countAndFlagsBits = 0x2F7469622DLL;
    v18._object = 0xE500000000000000;
    sub_1004DD3AC(v18);
    v16 = a2 / 1000.0;
    sub_1004DD38C();
    v19._countAndFlagsBits = 0x207A486B20;
    v19._object = 0xE500000000000000;
    sub_1004DD3AC(v19);
    v20._countAndFlagsBits = UInt32.formatName.getter(a3);
    sub_1004DD39C(v20);

    v21._countAndFlagsBits = 0;
    v21._object = 0xE000000000000000;
    sub_1004DD3AC(v21);
    sub_1004DD3DC();
    (*(v7 + 16))(v9, v11, v6);
    if (qword_100633A80 != -1)
    {
      swift_once();
    }

    v13 = qword_100671958;
    sub_1004D838C();
    v14 = sub_1004DD4AC();
    (*(v7 + 8))(v11, v6);
    return v14;
  }

  return result;
}

uint64_t _sSo20MPCPlayerAudioFormatC9MusicCoreE12inputDetailsSSSgvg_0()
{
  v1 = [v0 bitDepth];
  v2 = [v0 sampleRate];
  v3 = [v0 codec];

  return sub_10013F3F4(v1, v2, v3);
}

id MPModelObject.bestIdentifier(for:)(uint64_t a1, unsigned __int8 a2)
{
  v3 = v2;
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = [v6 anyObject];
    if (v7)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (!v8 || (v7 = [v8 innerObject]) == 0)
  {
LABEL_6:
    v7 = v3;
  }

LABEL_7:
  v9 = v7;
  if (a2 == 1)
  {
    v10 = [v7 identifiers];
    if (a1 == 2)
    {
      ObjectType = swift_getObjectType();
      v12 = static MPIdentifierSet.bestIdentifier<A>(for:purpose:identifiers:)(ObjectType, 2, 1u, v10);
    }

    else if (a1 == 1 || (v11 = swift_getObjectType(), v12 = static MPIdentifierSet.bestIdentifier<A>(for:purpose:identifiers:)(v11, 2, 1u, v10), !v13))
    {
      sub_100141384(v9);
    }

    v16 = v12;
  }

  else
  {
    v14 = swift_getObjectType();
    v15 = [v9 identifiers];
    v16 = static MPIdentifierSet.bestIdentifier<A>(for:purpose:identifiers:)(v14, a1, a2, v15);
  }

  return v16;
}

uint64_t sub_10013F968()
{
  v1 = v0[19];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_10013FA84;
  v2 = swift_continuation_init();
  v0[17] = sub_100004CB8(&qword_100637D50, &qword_10051BEE0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10013FC1C;
  v0[13] = &unk_1005DEAA0;
  v0[14] = v2;
  [v1 requestImageWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10013FA84()
{
  v1 = *(*v0 + 48);
  *(*v0 + 160) = v1;
  if (v1)
  {
    v2 = sub_10013FBB0;
  }

  else
  {
    v2 = sub_10013FB94;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10013FBB0(uint64_t a1)
{
  swift_willThrow();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t *sub_10013FC1C(uint64_t a1, void *a2, void *a3)
{
  result = sub_100008C70((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100004CB8(&qword_100638980, &qword_100515B30);
    swift_allocError();
    *v6 = a3;
    v7 = a3;

    return swift_continuation_throwingResumeWithError();
  }

  else if (a2)
  {
    **(*(*result + 64) + 40) = a2;
    v8 = a2;

    return swift_continuation_throwingResume();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void MPArtworkCatalog.requestImage(_:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v7[4] = sub_10014181C;
  v7[5] = v5;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_100022450;
  v7[3] = &unk_1005DEAF0;
  v6 = _Block_copy(v7);

  [v2 requestImageWithCompletion:v6];
  _Block_release(v6);
}

void sub_10013FDD4(void *a1, uint64_t a2, void (*a3)(void *, uint64_t))
{
  if (a1)
  {
    v8 = a1;
    a3(a1, 0);
  }

  else
  {
    sub_100146CA0();
    v6 = swift_allocError();
    *v7 = a2;
    swift_errorRetain();
    a3(v6, 1);
  }
}

void *MPArtworkCatalog.image(from:size:)(void *a1, double a2, double a3)
{
  v6 = sub_1004DBF2C();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  [a1 setDestinationScale:0.0];
  [a1 setFittingSize:{a2, a3}];
  v11 = dispatch_semaphore_create(0);
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v12 + 24) = v11;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_10014189C;
  *(v13 + 24) = v12;
  aBlock[4] = sub_100146E44;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100022450;
  aBlock[3] = &unk_1005DEB90;
  v14 = _Block_copy(aBlock);

  v15 = v11;

  [a1 requestImageWithCompletion:v14];
  _Block_release(v14);

  sub_1004DBF0C();
  sub_1004DE29C();

  (*(v7 + 8))(v9, v6);
  swift_beginAccess();
  v16 = *(v10 + 16);
  v17 = v16;

  return v16;
}

Swift::Int sub_100140114(void *a1, char a2, uint64_t a3)
{
  v4 = a1;
  if (a2)
  {
    sub_100004CB8(&qword_100638980, &qword_100515B30);
    swift_willThrowTypedImpl();
    v4 = 0;
  }

  else
  {
    v5 = a1;
  }

  swift_beginAccess();
  v6 = *(a3 + 16);
  *(a3 + 16) = v4;

  return sub_1004DE2AC();
}

uint64_t MPArtworkCatalog.setDestination<A>(_:for:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1004DF06C();
  v11 = swift_allocObject();
  v11[2] = a5;
  v11[3] = a3;
  v11[4] = a4;
  v14[4] = sub_1001418E0;
  v14[5] = v11;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_100014F88;
  v14[3] = &unk_1005DEBE0;
  v12 = _Block_copy(v14);

  [v5 setDestination:v10 forRepresentationKinds:a2 configurationBlock:v12];
  _Block_release(v12);
  return swift_unknownObjectRelease();
}

uint64_t sub_1001402BC(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t), uint64_t a4, uint64_t a5)
{
  v8 = *(a5 - 8);
  __chkstk_darwin();
  v10 = &v13[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10000904C(v11, v13);
  swift_dynamicCast();
  a3(v10, a2);
  return (*(v8 + 8))(v10, a5);
}

uint64_t MPArtworkCatalog.originalSize.getter()
{
  v1 = [v0 token];
  sub_1004DE8DC();
  swift_unknownObjectRelease();
  sub_100006F10(0, &qword_100637D58, MPStoreArtworkRequestToken_ptr);
  if (swift_dynamicCast())
  {
    v2 = [v7 imageArtworkInfo];
    if (v2)
    {
      v3 = v2;
      [v2 originalSize];
      v5 = v4;

      return v5;
    }
  }

  return 0;
}

uint64_t MPArtworkCatalog.expectedRatio.getter()
{
  v0 = COERCE_DOUBLE(MPArtworkCatalog.originalSize.getter());
  if ((v2 & 1) != 0 || v1 <= 0.0)
  {
    *&result = 0.0;
  }

  else
  {
    *&result = v0 / v1;
  }

  return result;
}

id static MPArtworkCatalog.monogram(for:layoutDirection:)(uint64_t a1, uint64_t a2, id a3, char a4)
{
  sub_100004CB8(&unk_100637D60, &qword_10051BEE8);
  if (a4)
  {
    v8 = [objc_opt_self() currentTraitCollection];
    a3 = [v8 layoutDirection];
  }

  else if (a3 >= 2)
  {
    result = sub_1004DF07C();
    __break(1u);
    return result;
  }

  return _sSo16MPArtworkCatalogC9MusicCoreE8monogram3for26environmentLayoutDirectionABSgSSSg_So018UITraitEnvironmenthI0VtFZ_0(a1, a2, a3);
}

id static MPMediaLibrary.device.getter()
{
  result = [swift_getObjCClassFromMetadata() deviceMediaLibrary];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

void MPMediaPickerConfiguration.musicTypeIdentifiers.getter()
{
  v1 = v0;
  v2 = [objc_opt_self() mainBundle];
  v3 = NSBundle.exportedTypeDeclarations.getter();

  if (!v3)
  {
    return;
  }

  v4 = [v1 typeIdentifiers];
  v5 = sub_1004DD87C();

  v6 = *(v5 + 16);

  if (!v6)
  {

    if ([v1 mediaTypes])
    {
      v41 = [v1 mediaTypes];

      sub_100140ADC(v41);
    }

    return;
  }

  v7 = [v1 typeIdentifiers];
  v8 = sub_1004DD87C();

  v43 = *(v8 + 16);
  if (!v43)
  {
    v11 = _swiftEmptyArrayStorage;
LABEL_49:

    sub_100145D20(v11);

    return;
  }

  v9 = 0;
  v10 = v3 + 32;
  v11 = _swiftEmptyArrayStorage;
  v44 = v3 + 32;
  v45 = v3;
  v42 = v8;
  while (2)
  {
    if (v9 >= *(v8 + 16))
    {
      goto LABEL_52;
    }

    v46 = v11;
    v47 = v9;
    v12 = *(v3 + 16);

    if (!v12)
    {
      v14 = _swiftEmptyArrayStorage;
      goto LABEL_23;
    }

    v13 = 0;
    v14 = _swiftEmptyArrayStorage;
    do
    {
      v15 = v13;
      while (1)
      {
        if (v15 >= *(v3 + 16))
        {
          __break(1u);
          goto LABEL_51;
        }

        v16 = *(v10 + 8 * v15);
        if (*(v16 + 16))
        {
          break;
        }

LABEL_10:
        if (v12 == ++v15)
        {
          goto LABEL_23;
        }
      }

      v17 = sub_100056B84(0xD000000000000010, 0x80000001004EEB60);
      if ((v18 & 1) == 0)
      {

        goto LABEL_10;
      }

      sub_10000904C(*(v16 + 56) + 32 * v17, v49);

      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_10;
      }

      v19 = v50;
      if (!v50)
      {
        goto LABEL_10;
      }

      v20 = v49[4];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_10003A134(0, *(v14 + 2) + 1, 1, v14);
      }

      v22 = *(v14 + 2);
      v21 = *(v14 + 3);
      if (v22 >= v21 >> 1)
      {
        v14 = sub_10003A134((v21 > 1), v22 + 1, 1, v14);
      }

      v13 = v15 + 1;
      *(v14 + 2) = v22 + 1;
      v23 = &v14[16 * v22];
      *(v23 + 4) = v20;
      *(v23 + 5) = v19;
      v10 = v44;
      v3 = v45;
    }

    while (v12 - 1 != v15);
LABEL_23:
    v24 = *(v14 + 2);
    if (!v24)
    {
      v48 = _swiftEmptyArrayStorage;
LABEL_37:

      v11 = v46;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_100039EF8(0, v46[2] + 1, 1, v46);
      }

      v10 = v44;
      v3 = v45;
      v40 = v11[2];
      v39 = v11[3];
      if (v40 >= v39 >> 1)
      {
        v11 = sub_100039EF8((v39 > 1), v40 + 1, 1, v11);
      }

      v9 = v47 + 1;
      v11[2] = v40 + 1;
      v11[v40 + 4] = v48;
      v8 = v42;
      if (v47 + 1 == v43)
      {
        goto LABEL_49;
      }

      continue;
    }

    break;
  }

  v25 = 0;
  v26 = v14 + 40;
  v48 = _swiftEmptyArrayStorage;
LABEL_25:
  v27 = &v26[16 * v25];
  v28 = v25;
  while (v28 < *(v14 + 2))
  {
    v30 = *(v27 - 1);
    v29 = *v27;
    v25 = v28 + 1;

    v31 = sub_1004DD3FC();
    v32 = sub_1004DD3FC();
    v33 = UTTypeConformsTo(v31, v32);

    if (v33)
    {
      v34 = v48;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v49[0] = v48;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1000374EC(0, v48[2] + 1, 1);
        v34 = v49[0];
      }

      v37 = v34[2];
      v36 = v34[3];
      if (v37 >= v36 >> 1)
      {
        sub_1000374EC((v36 > 1), v37 + 1, 1);
        v34 = v49[0];
      }

      v34[2] = v37 + 1;
      v48 = v34;
      v38 = &v34[2 * v37];
      v38[4] = v30;
      v38[5] = v29;
      v26 = v14 + 40;
      if (v24 - 1 != v28)
      {
        goto LABEL_25;
      }

      goto LABEL_37;
    }

    v27 += 16;
    ++v28;
    if (v24 == v25)
    {
      goto LABEL_37;
    }
  }

LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
}

char *sub_100140ADC(__int16 a1)
{
  if ((a1 & 1) == 0)
  {
    result = _swiftEmptyArrayStorage;
    if ((a1 & 0x800) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  result = sub_10003A134(0, 1, 1, _swiftEmptyArrayStorage);
  v4 = *(result + 2);
  v3 = *(result + 3);
  if (v4 >= v3 >> 1)
  {
    result = sub_10003A134((v3 > 1), v4 + 1, 1, result);
  }

  *(result + 2) = v4 + 1;
  v5 = &result[16 * v4];
  *(v5 + 4) = 0xD000000000000014;
  *(v5 + 5) = 0x80000001004EEEA0;
  if ((a1 & 0x800) != 0)
  {
LABEL_7:
    v6 = result;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = v6;
    }

    else
    {
      result = sub_10003A134(0, *(v6 + 2) + 1, 1, v6);
    }

    v8 = *(result + 2);
    v7 = *(result + 3);
    if (v8 >= v7 >> 1)
    {
      result = sub_10003A134((v7 > 1), v8 + 1, 1, result);
    }

    *(result + 2) = v8 + 1;
    v9 = &result[16 * v8];
    *(v9 + 4) = 0xD00000000000001BLL;
    *(v9 + 5) = 0x80000001004EEE80;
  }

  return result;
}

id MPMediaPickerConfiguration.supportsCatalogContent.getter()
{
  if (qword_100633B60 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  v10[4] = v6;
  v10[5] = v7;
  v10[6] = v8;
  v10[7] = v9;
  v10[0] = v2;
  v10[1] = v3;
  v10[2] = v4;
  v10[3] = v5;
  sub_100073E60(v10);
  if (BYTE8(v10[0]))
  {
    return [v0 showsCatalogContent];
  }

  else
  {
    return 0;
  }
}

id MPMediaPickerConfiguration.supportsCloudLibrary.getter()
{
  if (qword_100633B60 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  v10[4] = v6;
  v10[5] = v7;
  v10[6] = v8;
  v10[7] = v9;
  v10[0] = v2;
  v10[1] = v3;
  v10[2] = v4;
  v10[3] = v5;
  sub_100073E60(v10);
  if (BYTE9(v10[0]))
  {
    return [v0 showsCloudItems];
  }

  else
  {
    return 0;
  }
}

unint64_t MPIdentifierSet.publicLoggingDescription.getter()
{
  v1._countAndFlagsBits = MPIdentifierSet.bestLibraryIdentifier.getter();
  if (v1._object)
  {
    sub_1004DD5FC(v1);

    v22._countAndFlagsBits = 59;
    v22._object = 0xE100000000000000;
    sub_1004DD5FC(v22);
    v2 = sub_10003A134(0, 1, 1, _swiftEmptyArrayStorage);
    v4 = *(v2 + 2);
    v3 = *(v2 + 3);
    if (v4 >= v3 >> 1)
    {
      v2 = sub_10003A134((v3 > 1), v4 + 1, 1, v2);
    }

    *(v2 + 2) = v4 + 1;
    v5 = &v2[16 * v4];
    *(v5 + 4) = 0x507972617262696CLL;
    *(v5 + 5) = 0xEB000000003D4449;
  }

  else
  {
    v2 = _swiftEmptyArrayStorage;
  }

  v6 = [v0 universalStore];
  if (v6)
  {
    v7 = [v6 globalPlaylistID];
    swift_unknownObjectRelease();
    if (v7)
    {
      v8 = sub_1004DD43C();
      v10 = v9;

      sub_1004DEAAC(20);

      v23._countAndFlagsBits = v8;
      v23._object = v10;
      sub_1004DD5FC(v23);

      v24._countAndFlagsBits = 59;
      v24._object = 0xE100000000000000;
      sub_1004DD5FC(v24);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = sub_10003A134(0, *(v2 + 2) + 1, 1, v2);
      }

      v12 = *(v2 + 2);
      v11 = *(v2 + 3);
      if (v12 >= v11 >> 1)
      {
        v2 = sub_10003A134((v11 > 1), v12 + 1, 1, v2);
      }

      *(v2 + 2) = v12 + 1;
      v13 = &v2[16 * v12];
      *(v13 + 4) = 0xD000000000000011;
      *(v13 + 5) = 0x80000001004EEBA0;
    }
  }

  v14._countAndFlagsBits = MPIdentifierSet.bestStoreIdentifier.getter();
  if (v14._object)
  {
    sub_1004DD5FC(v14);

    v25._countAndFlagsBits = 59;
    v25._object = 0xE100000000000000;
    sub_1004DD5FC(v25);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_10003A134(0, *(v2 + 2) + 1, 1, v2);
    }

    v16 = *(v2 + 2);
    v15 = *(v2 + 3);
    if (v16 >= v15 >> 1)
    {
      v2 = sub_10003A134((v15 > 1), v16 + 1, 1, v2);
    }

    *(v2 + 2) = v16 + 1;
    v17 = &v2[16 * v16];
    *(v17 + 4) = 0x3D65726F7473;
    *(v17 + 5) = 0xE600000000000000;
  }

  sub_1004DEAAC(19);

  sub_100004CB8(&unk_1006372E0, &unk_1005157F0);
  sub_1000533D4();
  v18 = sub_1004DD30C();
  v20 = v19;

  v26._countAndFlagsBits = v18;
  v26._object = v20;
  sub_1004DD5FC(v26);

  v27._countAndFlagsBits = 62;
  v27._object = 0xE100000000000000;
  sub_1004DD5FC(v27);
  return 0xD000000000000010;
}

id MPIdentifierSet.bestLibraryIdentifier.getter()
{
  result = [v0 library];
  if (result)
  {
    v2 = result;
    if ([result persistentID] && (objc_msgSend(v2, "persistentID"), isa = sub_1004DF22C().super.super.isa, v4 = MPStoreItemMetadataStringNormalizeStoreIDValue(), isa, v4))
    {
      v5 = sub_1004DD43C();

      swift_unknownObjectRelease();
      return v5;
    }

    else
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

id MPIdentifierSet.bestStoreIdentifier.getter()
{
  result = [v0 universalStore];
  if (result)
  {
    v2 = result;
    v3 = [result subscriptionAdamID];
    v4 = [v2 purchasedAdamID];
    v5 = [v2 adamID];
    if ((v3 || v4 || v5) && (isa = sub_1004DF22C().super.super.isa, v7 = MPStoreItemMetadataStringNormalizeStoreIDValue(), isa, v7))
    {
      v8 = sub_1004DD43C();

      swift_unknownObjectRelease();
      return v8;
    }

    else
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

void static MPIdentifierSet.bestPlayabilityIdentifier<A>(for:options:identifiers:)(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (a2 == 2)
  {
    sub_100141778(a1, a3);
  }

  else
  {
    if (a2 != 1)
    {
      v6 = a1;
      sub_100141778(a1, a3);
      if (v7)
      {
        return;
      }

      a1 = v6;
    }

    sub_100141538(a1, a3, a4);
  }
}

void sub_100141384(void *a1)
{
  v8 = 2;
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = &v8;
  *(v3 + 24) = a1;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_100146D2C;
  *(v4 + 24) = v3;
  aBlock[4] = sub_100051F90;
  aBlock[5] = v4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000121E8;
  aBlock[3] = &unk_1005DF438;
  v5 = _Block_copy(aBlock);
  v6 = a1;

  [v2 performWithoutEnforcement:v5];
  _Block_release(v5);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  else if (v8 == 2 || (v8 & 1) == 0)
  {
  }

  else
  {
    MPIdentifierSet.bestLibraryIdentifier.getter();
  }
}

void sub_100141538(void *a1, uint64_t a2, uint64_t a3)
{
  v11 = 2;
  v5 = objc_opt_self();
  v6 = swift_allocObject();
  v6[2] = a3;
  v6[3] = &v11;
  v6[4] = a1;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_100146C94;
  *(v7 + 24) = v6;
  aBlock[4] = sub_100051F90;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000121E8;
  aBlock[3] = &unk_1005DF3C0;
  v8 = _Block_copy(aBlock);
  v9 = a1;

  [v5 performWithoutEnforcement:v8];
  _Block_release(v8);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  else if (v11 == 2 || (v11 & 1) == 0)
  {
  }

  else
  {
    MPIdentifierSet.bestLibraryIdentifier.getter();
  }
}

uint64_t sub_1001416F4(char *a1, uint64_t a2)
{
  swift_getObjectType();
  result = swift_conformsToProtocol2();
  v5 = 2;
  if (result && a2)
  {
    v6 = result;
    ObjectType = swift_getObjectType();
    result = (*(v6 + 8))(ObjectType, v6);
    v5 = result & 1;
  }

  *a1 = v5;
  return result;
}

id sub_100141778(uint64_t a1, void *a2)
{
  sub_100006F10(0, &unk_100637FD0, MPIdentifierSet_ptr);
  ObjectType = swift_getObjectType();
  return static MPIdentifierSet.bestIdentifier<A>(for:purpose:identifiers:)(ObjectType, 2, 1u, a2);
}

uint64_t sub_1001417E4()
{

  return swift_deallocObject();
}

uint64_t sub_100141824()
{

  return swift_deallocObject();
}

uint64_t sub_10014185C()
{

  return swift_deallocObject();
}

uint64_t sub_1001418A8()
{

  return swift_deallocObject();
}

void MPIdentifierSet.init(kind:deviceLibraryPID:)(void *a1, uint64_t a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_100146030;
  *(v6 + 24) = v5;
  v8[4] = sub_10001E39C;
  v8[5] = v6;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_10001E3C4;
  v8[3] = &unk_1005DEC58;
  v7 = _Block_copy(v8);

  [v4 initWithModelKind:a1 block:v7];

  _Block_release(v7);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }
}

void sub_100141A60(void *a1, uint64_t a2)
{
  v4 = [objc_opt_self() deviceMediaLibrary];
  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = v4;
  v6 = [v4 uniqueIdentifier];

  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = a2;
    v8 = swift_allocObject();
    *(v8 + 16) = sub_100146C24;
    *(v8 + 24) = v7;
    v11[4] = sub_100146EC4;
    v11[5] = v8;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 1107296256;
    v11[2] = sub_100141C08;
    v11[3] = &unk_1005DF348;
    v9 = _Block_copy(v11);

    [a1 setLibraryIdentifiersWithDatabaseID:v6 block:v9];

    _Block_release(v9);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
LABEL_6:
      __break(1u);
    }
  }
}

uint64_t sub_100141C08(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  swift_unknownObjectRetain();
  v3(a2);

  return swift_unknownObjectRelease();
}

uint64_t LibraryAddable.hasLoadedLibraryAddedProperty.getter()
{
  if ([v0 hasLoadedValueForKey:MPModelPropertyAlbumLibraryAdded] & 1) != 0 || (objc_msgSend(v0, "hasLoadedValueForKey:", MPModelPropertyMovieLibraryAdded) & 1) != 0 || (objc_msgSend(v0, "hasLoadedValueForKey:", MPModelPropertyPlaylistLibraryAdded) & 1) != 0 || (objc_msgSend(v0, "hasLoadedValueForKey:", MPModelPropertySongLibraryAdded) & 1) != 0 || (objc_msgSend(v0, "hasLoadedValueForKey:", MPModelPropertyTVEpisodeLibraryAdded) & 1) != 0 || (objc_msgSend(v0, "hasLoadedValueForKey:", MPModelPropertyTVSeasonLibraryAdded))
  {
    return 1;
  }

  else
  {
    return [v0 hasLoadedValueForKey:MPModelPropertyArtistLibraryAdded];
  }
}

BOOL LibraryAddable.isUserLibraryAddable.getter()
{
  v1 = [objc_allocWithZone(MPLibraryAddStatusObserver) init];
  [v1 configureWithModelObject:v0];
  v2 = [v1 currentStatus];

  return (v2 - 1) < 3;
}

BOOL PlaylistAddable.isPlaylistAddEligible.getter(uint64_t a1, uint64_t a2)
{
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  return (!v4 || ([v4 isArtistUploadedContent] & 1) == 0) && ((*(*(a2 + 8) + 16))(a1) & 1) != 0;
}

Swift::String_optional __swiftcall MPModelObject.genericModelRelationshipKey()()
{
  objc_opt_self();
  if (swift_dynamicCastObjCClass() || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), (v0 = swift_dynamicCastObjCClass()) != 0))
  {
    v0 = sub_1004DD43C();
  }

  else
  {
    v1 = 0;
  }

  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t MPModelObject.MediaKitPlayableKind.rawValue.getter(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v4 = 0x6F6D2D636973756DLL;
    v5 = 0x7473696C79616C70;
    if (a1 != 8)
    {
      v5 = 0x736D75626C61;
    }

    if (a1 != 7)
    {
      v4 = v5;
    }

    v6 = 0x736E6F6974617473;
    if (a1 != 5)
    {
      v6 = 0x69762D636973756DLL;
    }

    if (a1 <= 6u)
    {
      return v6;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v1 = 0x73676E6F73;
    v2 = 0x73776F68732D7674;
    if (a1 != 2)
    {
      v2 = 0x646564616F6C7075;
    }

    if (a1)
    {
      v1 = 0x6F736970652D7674;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1001421F8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = MPModelObject.MediaKitPlayableKind.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == MPModelObject.MediaKitPlayableKind.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1004DF08C();
  }

  return v8 & 1;
}

Swift::Int sub_100142280()
{
  v1 = *v0;
  sub_1004DF26C();
  MPModelObject.MediaKitPlayableKind.rawValue.getter(v1);
  sub_1004DD55C();

  return sub_1004DF2BC();
}

uint64_t sub_1001422E4(uint64_t a1)
{
  MPModelObject.MediaKitPlayableKind.rawValue.getter(*v1);
  sub_1004DD55C();
}

Swift::Int sub_100142338()
{
  v1 = *v0;
  sub_1004DF26C();
  MPModelObject.MediaKitPlayableKind.rawValue.getter(v1);
  sub_1004DD55C();

  return sub_1004DF2BC();
}

unint64_t sub_100142398@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _sSo13MPModelObjectC9MusicCoreE20MediaKitPlayableKindO8rawValueAESgSS_tcfC_0(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1001423C8@<X0>(uint64_t *a1@<X8>)
{
  result = MPModelObject.MediaKitPlayableKind.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t MPModelObject.mediaKitPlayableKind.getter()
{
  objc_opt_self();
  v0 = swift_dynamicCastObjCClass();
  if (v0)
  {
    v1 = v0;
    v2 = [v0 isArtistUploadedContent];
    v3 = [v1 hasVideo];
    if (v2)
    {
      if (v3)
      {
        return 4;
      }

      else
      {
        return 3;
      }
    }

    else if (v3)
    {
      return 6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      return 1;
    }

    else
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        return 2;
      }

      else
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          return 5;
        }

        else
        {
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            return 7;
          }

          else
          {
            objc_opt_self();
            if (swift_dynamicCastObjCClass())
            {
              return 8;
            }

            else
            {
              objc_opt_self();
              if (swift_dynamicCastObjCClass())
              {
                return 9;
              }

              else
              {
                return 10;
              }
            }
          }
        }
      }
    }
  }
}

uint64_t MPModelObject.FavoriteStatus.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x657469726F766166;
  v2 = 0x64656B696C736964;
  if (a1 != 2)
  {
    v2 = 0x726F707075736E75;
  }

  if (a1)
  {
    v1 = 0x6C61727475656ELL;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

Swift::Int sub_1001425E0()
{
  sub_1004DF26C();
  sub_1004DD55C();

  return sub_1004DF2BC();
}

uint64_t sub_1001426B0(uint64_t a1)
{
  sub_1004DD55C();
}

Swift::Int sub_10014276C()
{
  sub_1004DF26C();
  sub_1004DD55C();

  return sub_1004DF2BC();
}

unint64_t sub_100142838@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _sSo13MPModelObjectC9MusicCoreE14FavoriteStatusO8rawValueAESgSS_tcfC_0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_100142868(uint64_t *a1@<X8>)
{
  v2 = 0xE900000000000064;
  v3 = 0x657469726F766166;
  v4 = 0xE800000000000000;
  v5 = 0x64656B696C736964;
  if (*v1 != 2)
  {
    v5 = 0x726F707075736E75;
    v4 = 0xEB00000000646574;
  }

  if (*v1)
  {
    v3 = 0x6C61727475656ELL;
    v2 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t MPModelObject.favoriteStatus.getter()
{
  objc_opt_self();
  v0 = swift_dynamicCastObjCClass();
  if (v0 || (objc_opt_self(), (v0 = swift_dynamicCastObjCClass()) != 0) || (objc_opt_self(), (v0 = swift_dynamicCastObjCClass()) != 0))
  {
    v1 = v0;
    v2 = [v0 isFavorite];
LABEL_5:
    v3 = v2;
    v4 = [v1 isDisliked];
    if (v3)
    {
      if ((v4 & 1) == 0)
      {
        return 0;
      }

LABEL_27:
      result = sub_1004DECCC();
      __break(1u);
      return result;
    }

    v6 = v4 == 0;
    goto LABEL_9;
  }

  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (v7)
  {
    v1 = v7;
    if (qword_100633B60 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_1004D9B6C();

    v27 = v19;
    v28 = v20;
    v29 = v21;
    v30 = v22;
    v23 = v15;
    v24 = v16;
    v25 = v17;
    v26 = v18;
    sub_100073E60(&v23);
    if (BYTE8(v23))
    {
      v2 = [v1 isFavorite];
      goto LABEL_5;
    }

    return 3;
  }

  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (!v8)
  {
    return 3;
  }

  v9 = v8;
  if (qword_100633B60 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  v27 = v19;
  v28 = v20;
  v29 = v21;
  v30 = v22;
  v23 = v15;
  v24 = v16;
  v25 = v17;
  v26 = v18;
  sub_100073E60(&v23);
  if ((BYTE8(v23) & 1) == 0)
  {
    return 3;
  }

  v10 = [v9 artist];
  if (!v10)
  {
    return 3;
  }

  v11 = v10;
  v12 = [v10 isFavorite];
  v13 = [v11 isDisliked];
  v14 = v13;
  if (v12)
  {
    if ((v13 & 1) == 0)
    {

      return 0;
    }

    goto LABEL_27;
  }

  v6 = v14 == 0;
LABEL_9:
  if (v6)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

id MPModelAlbum.orphanMusicVideo.getter()
{
  v1 = _sSo12MPModelAlbumC9MusicCoreE06orphanC16VideoPropertySetSo010MPPropertyH0CvgZ_0();
  v2 = [v0 hasLoadedValuesForPropertySet:v1];

  if (!v2 || [v0 trackCount] > 1)
  {
    return 0;
  }

  result = [v0 representativeSong];
  if (result)
  {
    v4 = result;
    v5 = [result hasVideo];
    result = v4;
    if ((v5 & 1) == 0)
    {

      return 0;
    }
  }

  return result;
}

uint64_t MPModelAlbum.representativeTitle.getter()
{
  sub_100004CB8(&unk_100637DF0, &unk_10051C9B0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1005126C0;
  *(v1 + 32) = sub_1004DD43C();
  *(v1 + 40) = v2;
  *(v1 + 48) = sub_1004DD43C();
  *(v1 + 56) = v3;
  isa = sub_1004DD85C().super.isa;

  v5 = [objc_opt_self() propertySetWithProperties:isa];

  LODWORD(isa) = [v0 hasLoadedValuesForPropertySet:v5];
  if (isa && [v0 trackCount] <= 1)
  {
    v6 = [v0 title];
    if (!v6)
    {
      v10 = [v0 representativeSong];
      if (!v10)
      {
        return 0;
      }

      v11 = v10;
      v12 = [v10 title];

      if (!v12)
      {
        return 0;
      }

      v6 = v12;
    }

LABEL_6:
    v8 = v6;
    v7 = sub_1004DD43C();

    return v7;
  }

  v6 = [v0 title];
  if (v6)
  {
    goto LABEL_6;
  }

  return 0;
}

id static MPModelAlbum.representativeTitlePropertySet.getter()
{
  sub_100004CB8(&unk_100637DF0, &unk_10051C9B0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1005126C0;
  *(v0 + 32) = sub_1004DD43C();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_1004DD43C();
  *(v0 + 56) = v2;
  isa = sub_1004DD85C().super.isa;

  v4 = [objc_opt_self() propertySetWithProperties:isa];

  return v4;
}

uint64_t Array<A>.union()(uint64_t a1, uint64_t a2)
{
  v3 = [objc_opt_self() emptyPropertySet];
  sub_1004DD98C();
  sub_100006F10(0, &qword_100639C10, MPPropertySet_ptr);
  swift_getWitnessTable();
  sub_1004DD79C();

  return v4;
}

id sub_100143208(uint64_t a1, SEL *a2, SEL *a3)
{
  v6 = v3;
  v8 = sub_1004D85FC();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin();
  v14 = (&v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14, v6, a1, v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = *(v14 + *(sub_100004CB8(&unk_100637E00, &unk_10051BF50) + 48));
    (*(v9 + 32))(v11, v14, v8);
    isa = sub_1004D856C().super.isa;
    v18 = [v16 *a3];

    (*(v9 + 8))(v11, v8);
    return v18;
  }

  else
  {
    v20 = v14[1];
    v21 = [v20 *a2];

    return v21;
  }
}

id SnapshotIdentifier.identifiers.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = type metadata accessor for SnapshotIdentifier.Lazy(0, *(a1 + 16), a3, a4);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v19 - v9;
  v11 = __chkstk_darwin();
  v13 = (&v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13, v5, a1, v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = *v13;
    v16 = [*v13 identifiers];

    return v16;
  }

  else
  {
    (*(v8 + 32))(v10, v13, v7);
    v18 = SnapshotIdentifier.Lazy.identifiers.getter(v7);
    (*(v8 + 8))(v10, v7);
    return v18;
  }
}

id SnapshotIdentifier.object.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = type metadata accessor for SnapshotIdentifier.Lazy(0, *(a1 + 16), a3, a4);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v17 - v9;
  v11 = __chkstk_darwin();
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, v5, a1, v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return *v13;
  }

  (*(v8 + 32))(v10, v13, v7);
  v16 = SnapshotIdentifier.Lazy.object.getter(v7);
  (*(v8 + 8))(v10, v7);
  return v16;
}

unint64_t SnapshotIdentifier.debugDescription.getter(uint64_t a1)
{
  v7 = SnapshotIdentifier.description.getter(a1);
  v8._countAndFlagsBits = 0x7463656A626F202CLL;
  v8._object = 0xEA0000000000203ALL;
  sub_1004DD5FC(v8);
  v6 = SnapshotIdentifier.object.getter(a1, v2, v3, v4);
  swift_getWitnessTable();
  sub_1004DF03C();

  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  sub_1004DD5FC(v9);

  return v7;
}

unint64_t SnapshotIdentifier.description.getter(uint64_t a1)
{
  v11._countAndFlagsBits = sub_1004DF34C();
  sub_1004DD5FC(v11);

  v12._countAndFlagsBits = 2112062;
  v12._object = 0xE300000000000000;
  sub_1004DD5FC(v12);
  v13._countAndFlagsBits = 60;
  v13._object = 0xE100000000000000;
  sub_1004DD5FC(v13);

  v5 = SnapshotIdentifier.identifiers.getter(a1, v2, v3, v4);
  v6 = [v5 description];
  v7 = sub_1004DD43C();
  v9 = v8;

  v14._countAndFlagsBits = v7;
  v14._object = v9;
  sub_1004DD5FC(v14);

  v15._countAndFlagsBits = 0x696669746E656469;
  v15._object = 0xEB000000003D7265;
  sub_1004DD5FC(v15);

  return 0xD000000000000012;
}

void SnapshotIdentifier.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = SnapshotIdentifier.identifiers.getter(a2, a2, a3, a4);
  sub_1004DE60C();
}

uint64_t static SnapshotIdentifier.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100006F10(0, &qword_1006381E0, NSObject_ptr);
  v6 = type metadata accessor for SnapshotIdentifier(0, a3, v4, v5);
  v10 = SnapshotIdentifier.identifiers.getter(v6, v7, v8, v9);
  v14 = SnapshotIdentifier.identifiers.getter(v6, v11, v12, v13);
  v15 = sub_1004DE5FC();

  return v15 & 1;
}

Swift::Int SnapshotIdentifier.hashValue.getter(uint64_t a1)
{
  sub_1004DF26C();
  v5 = SnapshotIdentifier.identifiers.getter(a1, v2, v3, v4);
  sub_1004DE60C();

  return sub_1004DF2BC();
}

Swift::Int sub_100143AC0(uint64_t a1, uint64_t a2)
{
  sub_1004DF26C();
  SnapshotIdentifier.hash(into:)(v6, a2, v3, v4);
  return sub_1004DF2BC();
}

void static NSDiffableDataSourceSnapshot<>.enumerateSnapshotIdentifierItems(from:using:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v17 = 0;
  v12 = swift_allocObject();
  v12[2] = a4;
  v12[3] = a5;
  v12[4] = a6;
  v12[5] = a1;
  v12[6] = a2;
  v12[7] = a3;
  v12[8] = &v17;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_100146370;
  *(v13 + 24) = v12;
  aBlock[4] = sub_1001463A4;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100143E34;
  aBlock[3] = &unk_1005DECD0;
  v14 = _Block_copy(aBlock);
  v15 = a1;

  [v15 enumerateItemIdentifiersUsingBlock:v14];
  _Block_release(v14);
  LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

  if (v15)
  {
    __break(1u);
  }
}

uint64_t sub_100143C9C(uint64_t a1, uint64_t a2, _BYTE *a3, void *a4, void (*a5)(uint64_t, char *, _BYTE *), uint64_t a6, _BYTE *a7, uint64_t a8, uint64_t a9)
{
  v24 = a3;
  v13 = type metadata accessor for SnapshotIdentifier(0, a9, a3, a4);
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = &v23 - v15;
  v17 = *(sub_100004CB8(&unk_100637E00, &unk_10051BF50) + 48);
  v18 = sub_1004D85FC();
  (*(*(v18 - 8) + 16))(v16, a1, v18);
  *&v16[v17] = a4;
  type metadata accessor for SnapshotIdentifier.Lazy(0, a9, v19, v20);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v21 = a4;
  a5(a1, v16, a7);
  *v24 = *a7;
  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_100143E34(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = sub_1004D85FC();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 32);
  sub_1004D858C();
  v12 = a3;
  v11(v10, v12, a4);

  return (*(v8 + 8))(v10, v7);
}

void static NSDiffableDataSourceSnapshot<>.enumerateSnapshotIdentifierItems(from:inSection:using:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v19 = 0;
  v14 = swift_allocObject();
  v14[2] = a5;
  v14[3] = a6;
  v14[4] = a7;
  v14[5] = a2;
  v14[6] = a1;
  v14[7] = a3;
  v14[8] = a4;
  v14[9] = &v19;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_100146404;
  *(v15 + 24) = v14;
  aBlock[4] = sub_10014643C;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100144244;
  aBlock[3] = &unk_1005DED48;
  v16 = _Block_copy(aBlock);
  v17 = a1;

  [v17 enumerateItemIdentifiersInSectionAtIndex:a2 usingBlock:v16];
  _Block_release(v16);
  LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

  if (a2)
  {
    __break(1u);
  }
}

uint64_t sub_1001440D4(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, void *a5, void (*a6)(uint64_t, char *, _BYTE *), uint64_t a7, _BYTE *a8, uint64_t a9, uint64_t a10)
{
  v23 = a7;
  v24 = a3;
  v14 = type metadata accessor for SnapshotIdentifier(0, a10, a3, a4);
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v17 = &v23 - v16;
  v18 = *(sub_100004CB8(&unk_100637E00, &unk_10051BF50) + 48);
  sub_1004D85BC();
  *&v17[v18] = a5;
  type metadata accessor for SnapshotIdentifier.Lazy(0, a10, v19, v20);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v21 = a5;
  a6(a1, v17, a8);
  *v24 = *a8;
  return (*(v15 + 8))(v17, v14);
}

void sub_100144244(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  v7 = a3;
  v6(a2, v7, a4);
}

uint64_t static NSDiffableDataSourceSnapshot<>.snapshotIdentifiers(from:inSection:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for SnapshotIdentifier(0, a4, a3, a4);
  v12 = sub_1004DD8DC();
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a5;
  v11[5] = &v12;
  static NSDiffableDataSourceSnapshot<>.enumerateSnapshotIdentifierItems(from:inSection:using:)(a1, a2, sub_100146464, v11, a3, a4, a5);
  return v12;
}

uint64_t sub_100144350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = type metadata accessor for SnapshotIdentifier(0, a6, a3, a4);
  v8 = __chkstk_darwin();
  (*(v10 + 16))(&v12 - v9, a2, v7, v8);
  sub_1004DD98C();
  return sub_1004DD93C();
}

void static NSDiffableDataSourceSnapshot<>.enumerateSnapshotIdentifierSections(from:using:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v17 = 0;
  v12 = swift_allocObject();
  v12[2] = a4;
  v12[3] = a5;
  v12[4] = a6;
  v12[5] = a1;
  v12[6] = a2;
  v12[7] = a3;
  v12[8] = &v17;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_100146470;
  *(v13 + 24) = v12;
  aBlock[4] = sub_100146EC0;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100144244;
  aBlock[3] = &unk_1005DEDC0;
  v14 = _Block_copy(aBlock);
  v15 = a1;

  [v15 enumerateSectionIdentifiersUsingBlock:v14];
  _Block_release(v14);
  LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

  if (v15)
  {
    __break(1u);
  }
}

uint64_t sub_1001445B4(uint64_t a1, uint64_t a2, _BYTE *a3, void *a4, void (*a5)(uint64_t, void *, _BYTE *), uint64_t a6, _BYTE *a7, uint64_t a8)
{
  v14 = type metadata accessor for SnapshotIdentifier(0, a8, a3, a4);
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v17 = (&v22 - v16);
  *v17 = a1;
  v17[1] = a4;
  type metadata accessor for SnapshotIdentifier.Lazy(0, a8, v18, v19);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v20 = a4;
  a5(a1, v17, a7);
  *a3 = *a7;
  return (*(v15 + 8))(v17, v14);
}

void static NSDiffableDataSourceSnapshot<>.snapshot(from:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  type metadata accessor for SnapshotIdentifier(0, a3, a3, a4);
  swift_getWitnessTable();
  sub_1004D996C();
  objc_opt_self();
  v10 = swift_dynamicCastObjCClassUnconditional();
  v11 = swift_allocObject();
  v11[2] = a2;
  v11[3] = a3;
  v11[4] = a4;
  v11[5] = a5;
  v11[6] = v10;
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = a4;
  v12[5] = sub_1001464DC;
  v12[6] = v11;
  v15[4] = sub_1001464FC;
  v15[5] = v12;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = sub_100144A24;
  v15[3] = &unk_1005DEE38;
  v13 = _Block_copy(v15);
  v14 = a1;

  [v14 enumerateSectionsUsingBlock:v13];
  _Block_release(v13);
  LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

  if (v14)
  {
    __break(1u);
  }
}

uint64_t sub_1001448DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_1001A9E7C(a6, a6);
  swift_allocObject();
  v14 = sub_1004DD89C();
  *v15 = a1;
  v16 = sub_1001720EC(v14, a6);
  type metadata accessor for SnapshotIdentifier(255, a7, v17, v18);
  swift_unknownObjectRetain();
  swift_getWitnessTable();
  sub_1004D997C();
  v19._rawValue = v16;
  sub_1004D995C(v19);

  static NSDiffableDataSourceSnapshot<>.snapshotIdentifiers(from:inSection:)(a5, a2, a6, a7, a8);
  swift_unknownObjectRetain();
  sub_1004D994C();
  swift_unknownObjectRelease();
}

uint64_t sub_100144A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100006F10(0, &qword_100637290, MPModelObject_ptr);
  v7 = *(a1 + 32);
  v8 = swift_unknownObjectRetain();
  v7(v8, a3, a4);

  return swift_unknownObjectRelease();
}

void static NSDiffableDataSourceSnapshot<>.snapshot(from:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  type metadata accessor for SnapshotIdentifier(0, a2, a4, a5);
  swift_getWitnessTable();
  sub_1004D996C();
  objc_opt_self();
  v8 = swift_dynamicCastObjCClassUnconditional();
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_100146524;
  *(v10 + 24) = v9;
  v13[4] = sub_100146530;
  v13[5] = v10;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_100144DC4;
  v13[3] = &unk_1005DEEB0;
  v11 = _Block_copy(v13);
  v12 = a1;

  [v12 enumerateSectionsUsingBlock:v11];
  _Block_release(v11);
  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
    __break(1u);
  }
}

uint64_t sub_100144C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  sub_100004CB8(&unk_100637DF0, &unk_10051C9B0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100511DA0;
  *(v9 + 32) = sub_1004DD43C();
  *(v9 + 40) = v10;
  type metadata accessor for SnapshotIdentifier(255, a6, v11, v12);
  swift_getWitnessTable();
  sub_1004D997C();
  v13._rawValue = v9;
  sub_1004D995C(v13);

  static NSDiffableDataSourceSnapshot<>.snapshotIdentifiers(from:inSection:)(a5, a2, &type metadata for String, a6, &protocol witness table for String);
  sub_1004DD43C();
  sub_1004D994C();
}

void sub_100144DC4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

void static NSDiffableDataSourceSnapshot<>.snapshot(from:)(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t x3_0@<X3>)
{
  type metadata accessor for SnapshotIdentifier(0, a2, a3, x3_0);
  type metadata accessor for SnapshotIdentifier(0, a3, v8, v9);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1004D996C();
  objc_opt_self();
  v10 = swift_dynamicCastObjCClassUnconditional();
  objc_opt_self();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = a4;
  v12[5] = swift_dynamicCastObjCClassUnconditional();
  WitnessTable = swift_getWitnessTable();
  static NSDiffableDataSourceSnapshot<>.enumerateSnapshotIdentifierSections(from:using:)(v10, sub_100146558, v12, a2, a3, WitnessTable);
}

uint64_t sub_100144F70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v28 = a2;
  v29 = a6;
  v30 = a1;
  v31 = a5;
  v9 = type metadata accessor for SnapshotIdentifier(255, a6, a3, a4);
  v10 = sub_1004DE7CC();
  v32 = *(v10 - 8);
  v33 = v10;
  __chkstk_darwin();
  v12 = &v26 - v11;
  sub_1004DF00C();
  v13 = *(v9 - 8);
  swift_allocObject();
  v14 = sub_1004DD89C();
  v27 = *(v13 + 16);
  v27(v15, a2, v9);
  v16 = sub_1001720EC(v14, v9);
  v19 = type metadata accessor for SnapshotIdentifier(255, a7, v17, v18);
  WitnessTable = swift_getWitnessTable();
  v21 = swift_getWitnessTable();
  v34 = v9;
  v35 = v19;
  v36 = WitnessTable;
  v37 = v21;
  sub_1004D997C();
  v22._rawValue = v16;
  sub_1004D995C(v22);

  v23 = v29;
  v24 = swift_getWitnessTable();
  static NSDiffableDataSourceSnapshot<>.snapshotIdentifiers(from:inSection:)(v31, v30, v23, a7, v24);
  v27(v12, v28, v9);
  (*(v13 + 56))(v12, 0, 1, v9);
  sub_1004D994C();

  return (*(v32 + 8))(v12, v33);
}

uint64_t MPModelPlaylist.supportsSing.getter()
{
  if (([v0 traits] & 0x100) != 0)
  {
    return MSVDeviceSupportsVocalAttenuation();
  }

  else
  {
    return 0;
  }
}

id MPModelPlaylist.coverArtworkCatalog.getter()
{
  sub_100004CB8(&unk_100637DF0, &unk_10051C9B0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100511A40;
  *(v1 + 32) = sub_1004DD43C();
  *(v1 + 40) = v2;
  *(v1 + 48) = sub_1004DD43C();
  *(v1 + 56) = v3;
  *(v1 + 64) = sub_1004DD43C();
  *(v1 + 72) = v4;
  isa = sub_1004DD85C().super.isa;

  v6 = [objc_opt_self() propertySetWithProperties:isa];

  LODWORD(isa) = [v0 hasLoadedValuesForPropertySet:v6];
  if (!isa)
  {
    return 0;
  }

  result = [v0 name];
  if (!result)
  {
    return result;
  }

  v8 = result;
  v9 = sub_1004DD43C();
  v11 = v10;

  if (([v0 userEditableComponents] & 2) == 0)
  {

    return 0;
  }

  v12 = [v0 coverArtworkRecipe];
  v13 = sub_1004DD43C();
  v15 = v14;

  result = _s9MusicCore14PlaylistCoversO12ArtworkTokenC7rawJSON13playlistTitleAESgSS_SStcfC_0(v13, v15, v9, v11);
  if (result)
  {
    v16 = result;
    v17 = [v0 artworkCatalog];
    if (v17)
    {
      v18 = v17;
    }

    else
    {
      if (qword_100633E00 != -1)
      {
        swift_once();
      }

      v19 = sub_1004D966C();
      sub_100035430(v19, static Logger.playlistCovers);
      v20 = v0;
      v21 = sub_1004D964C();
      v22 = sub_1004DDF9C();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v31 = v24;
        *v23 = 136446210;
        v25 = [v20 coverArtworkRecipe];
        v26 = sub_1004DD43C();
        v28 = v27;

        v29 = sub_1000343A8(v26, v28, &v31);

        *(v23 + 4) = v29;
        _os_log_impl(&_mh_execute_header, v21, v22, "No server artwork catalog available for playlist with coverArtworkRecipe=%{public}s", v23, 0xCu);
        sub_100008D24(v24);
      }

      v30 = qword_100633DE0;
      v16 = v16;
      if (v30 != -1)
      {
        swift_once();
      }

      v18 = [objc_allocWithZone(MPArtworkCatalog) initWithToken:v16 dataSource:static PlaylistCovers.ArtworkDataSource.shared];
    }

    return v18;
  }

  return result;
}

unint64_t MPNowPlayingAudioFormatBadging.debugDescription.getter(uint64_t a1)
{
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v1._countAndFlagsBits = 0x7373656C73736F6CLL;
        v1._object = 0xE800000000000000;
        goto LABEL_16;
      case 4:
        v1._object = 0x80000001004EED30;
        v1._countAndFlagsBits = 0xD000000000000016;
        goto LABEL_16;
      case 5:
        v1._countAndFlagsBits = 0x416C616974617073;
        v1._object = 0xEC0000006F696475;
        goto LABEL_16;
    }
  }

  else
  {
    switch(a1)
    {
      case 0:
        v1._countAndFlagsBits = 0x6574537973736F6CLL;
        v1._object = 0xEB000000006F6572;
        goto LABEL_16;
      case 1:
        v1._countAndFlagsBits = 0x6D744179626C6F64;
        v1._object = 0xEA0000000000736FLL;
        goto LABEL_16;
      case 2:
        v1._countAndFlagsBits = 0x64754179626C6F64;
        v1._object = 0xEA00000000006F69;
LABEL_16:
        sub_1004DD5FC(v1);
        goto LABEL_17;
    }
  }

  v3._countAndFlagsBits = sub_1004DEFFC();
  sub_1004DD5FC(v3);

  v4._countAndFlagsBits = 62;
  v4._object = 0xE100000000000000;
  sub_1004DD5FC(v4);
  v5._countAndFlagsBits = 0x3C6E776F6E6B6E75;
  v5._object = 0xE800000000000000;
  sub_1004DD5FC(v5);

LABEL_17:
  v6._countAndFlagsBits = 41;
  v6._object = 0xE100000000000000;
  sub_1004DD5FC(v6);
  return 0xD00000000000001FLL;
}

id MPModelPerson.monogramArtworkCatalog.getter()
{
  if (![v0 hasLoadedValueForKey:MPModelPropertyPersonName])
  {
    return 0;
  }

  v1 = [v0 name];
  if (v1)
  {
    v2 = v1;
    v3 = sub_1004DD43C();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v7 = [objc_opt_self() currentTraitCollection];
  v8 = [v7 layoutDirection];

  v9 = _sSo16MPArtworkCatalogC9MusicCoreE8monogram3for26environmentLayoutDirectionABSgSSSg_So018UITraitEnvironmenthI0VtFZ_0(v3, v5, v8);

  return v9;
}

void MPModelTVSeason.title.getter()
{
  v8[0] = 0;
  v8[1] = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v8;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_10014659C;
  *(v3 + 24) = v2;
  v7[4] = sub_10001185C;
  v7[5] = v3;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_1000121E8;
  v7[3] = &unk_1005DEF28;
  v4 = _Block_copy(v7);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
  }
}

uint64_t sub_1001459DC(void *a1, uint64_t *a2)
{
  sub_1004D83FC();
  __chkstk_darwin();
  v4 = sub_1004DD3EC();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = v21 - v8;
  sub_1004DD3CC();
  if ([a1 number] < 1)
  {
    v15 = [a1 show];
    if (v15 && (v16 = v15, v17 = [v15 title], v16, v17))
    {
      v18 = sub_1004DD43C();
      v20 = v19;
    }

    else
    {
      v18 = 0;
      v20 = 0;
    }

    *a2 = v18;
    a2[1] = v20;
  }

  else
  {
    sub_1004DD3BC();
    v23._countAndFlagsBits = 0x206E6F73616553;
    v23._object = 0xE700000000000000;
    sub_1004DD3AC(v23);
    v21[1] = [a1 number];
    sub_1004DD38C();
    v24._countAndFlagsBits = 0;
    v24._object = 0xE000000000000000;
    sub_1004DD3AC(v24);
    sub_1004DD3DC();
    (*(v5 + 16))(v7, v9, v4);
    if (qword_100633A80 != -1)
    {
      swift_once();
    }

    v10 = qword_100671958;
    sub_1004D838C();
    v11 = sub_1004DD4AC();
    v13 = v12;
    (*(v5 + 8))(v9, v4);
    *a2 = v11;
    a2[1] = v13;
  }
}

void sub_100145D20(uint64_t a1)
{
  v2 = 0;
  v3 = 0;
  v4 = a1 + 32;
  v5 = _swiftEmptyArrayStorage;
  v6 = &_swiftEmptyArrayStorage[4];
LABEL_3:
  v8 = *(a1 + 16);
  if (v3 != v8)
  {
    if (v3 >= v8)
    {
LABEL_34:
      __break(1u);
    }

    else
    {
      while (1)
      {
        v9 = *(v4 + 8 * v3);

        if (v9)
        {
          v7 = *(v9 + 16);
          if (v7)
          {
            break;
          }
        }

        ++v3;
        v10 = *(a1 + 16);
        if (v3 == v10)
        {
          goto LABEL_30;
        }

        if (v3 >= v10)
        {
          goto LABEL_34;
        }
      }

      v11 = 0;
      ++v3;
      while (v11 < v7)
      {
        v12 = v9 + 16 * v11;
        v13 = *(v12 + 40);
        v29 = *(v12 + 32);
        if (v2)
        {

          v14 = v5;
          v15 = __OFSUB__(v2--, 1);
          if (v15)
          {
            goto LABEL_36;
          }
        }

        else
        {
          v16 = *(v5 + 3);
          if (((v16 >> 1) + 0x4000000000000000) < 0)
          {
            goto LABEL_37;
          }

          v17 = v16 & 0xFFFFFFFFFFFFFFFELL;
          if (v17 <= 1)
          {
            v18 = 1;
          }

          else
          {
            v18 = v17;
          }

          sub_100004CB8(&unk_100637DF0, &unk_10051C9B0);
          v14 = swift_allocObject();
          v19 = j__malloc_size(v14);
          v20 = v19 - 32;
          if (v19 < 32)
          {
            v20 = v19 - 17;
          }

          v21 = v20 >> 4;
          *(v14 + 2) = v18;
          *(v14 + 3) = 2 * (v20 >> 4);
          v22 = v14 + 32;
          v23 = *(v5 + 3) >> 1;
          v6 = &v14[16 * v23 + 32];
          v24 = (v21 & 0x7FFFFFFFFFFFFFFFLL) - v23;
          if (*(v5 + 2))
          {
            v25 = v5 + 32;
            if (v14 != v5 || v22 >= &v25[16 * v23])
            {
              memmove(v22, v25, 16 * v23);
            }

            *(v5 + 2) = 0;
          }

          else
          {
          }

          v15 = __OFSUB__(v24, 1);
          v2 = v24 - 1;
          if (v15)
          {
            goto LABEL_36;
          }
        }

        ++v11;
        *v6 = v29;
        *(v6 + 1) = v13;
        v6 += 16;
        v5 = v14;
        v7 = *(v9 + 16);
        if (v11 == v7)
        {
          goto LABEL_3;
        }
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

LABEL_30:

  v26 = *(v5 + 3);
  if (v26 >= 2)
  {
    v27 = v26 >> 1;
    v15 = __OFSUB__(v27, v2);
    v28 = v27 - v2;
    if (v15)
    {
LABEL_38:
      __break(1u);
      return;
    }

    *(v5 + 2) = v28;
  }
}

id _sSo16MPArtworkCatalogC9MusicCoreE8monogram3for26environmentLayoutDirectionABSgSSSg_So018UITraitEnvironmenthI0VtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v4 = sub_1004DD3FC();
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_allocWithZone(MusicMonogramArtworkToken) initWithFullName:v4 rightToLeft:a3 == 1];

  if (!v5)
  {
    return 0;
  }

  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 sharedMonogramArtworkDataSource];
  v9 = objc_allocWithZone(MPArtworkCatalog);
  v10 = v7;
  v11 = [v9 initWithToken:v10 dataSource:v8];

  return v11;
}

unint64_t _sSo13MPModelObjectC9MusicCoreE20MediaKitPlayableKindO8rawValueAESgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1005D2650;
  v6._object = a2;
  v4 = sub_1004DEE2C(v3, v6);

  if (v4 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v4;
  }
}

unint64_t _sSo13MPModelObjectC9MusicCoreE14FavoriteStatusO8rawValueAESgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1005D2760;
  v6._object = a2;
  v4 = sub_1004DEE2C(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

id _sSo12MPModelAlbumC9MusicCoreE06orphanC16VideoPropertySetSo010MPPropertyH0CvgZ_0()
{
  sub_100004CB8(&unk_100637DF0, &unk_10051C9B0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100511DA0;
  *(v0 + 32) = sub_1004DD43C();
  *(v0 + 40) = v1;
  sub_100004CB8(&qword_100637F60, &unk_1005216D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100511DA0;
  *(inited + 32) = sub_1004DD43C();
  *(inited + 40) = v3;
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100511DA0;
  *(v4 + 32) = sub_1004DD43C();
  *(v4 + 40) = v5;
  isa = sub_1004DD85C().super.isa;

  v7 = [objc_opt_self() propertySetWithProperties:isa];

  *(inited + 48) = v7;
  sub_10005F144(inited);
  swift_setDeallocating();
  sub_100146BAC(inited + 32);
  v8 = objc_allocWithZone(MPPropertySet);
  v9 = sub_1004DD85C().super.isa;

  sub_100006F10(0, &qword_100639C10, MPPropertySet_ptr);
  v10 = sub_1004DD1FC().super.isa;

  v11 = [v8 initWithProperties:v9 relationships:v10];

  return v11;
}

id sub_1001462C0@<X0>(id *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  result = [*a1 propertySetByCombiningWithPropertySet:*a2];
  *a3 = result;
  return result;
}

uint64_t sub_100146338()
{

  return swift_deallocObject();
}

uint64_t sub_1001463CC()
{

  return swift_deallocObject();
}

uint64_t sub_1001464A4()
{

  return swift_deallocObject();
}

uint64_t sub_100146564()
{

  return swift_deallocObject();
}

unint64_t sub_1001465A8()
{
  result = qword_100637E10;
  if (!qword_100637E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100637E10);
  }

  return result;
}

unint64_t sub_100146600()
{
  result = qword_100637E18;
  if (!qword_100637E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100637E18);
  }

  return result;
}

unint64_t sub_100146658()
{
  result = qword_100637E20;
  if (!qword_100637E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100637E20);
  }

  return result;
}

unint64_t sub_1001466B0()
{
  result = qword_100637E28;
  if (!qword_100637E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100637E28);
  }

  return result;
}

unint64_t sub_100146708()
{
  result = qword_100637E30;
  if (!qword_100637E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100637E30);
  }

  return result;
}

unint64_t sub_100146760()
{
  result = qword_100637E38[0];
  if (!qword_100637E38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100637E38);
  }

  return result;
}

uint64_t sub_1001467D0(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t _s20MediaKitPlayableKindOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s20MediaKitPlayableKindOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}