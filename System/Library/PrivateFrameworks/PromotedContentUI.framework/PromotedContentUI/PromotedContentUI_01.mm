uint64_t sub_1C19A7220(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C1A6D62C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C19A72C4()
{
  MEMORY[0x1C6906340](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C19A7304()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C19A7344()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C19A7384()
{
  MEMORY[0x1C6906340](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C19A73BC()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

id sub_1C19A7404@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 ready];
  *a2 = result;
  return result;
}

uint64_t sub_1C19A744C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

id sub_1C19A7484@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 frame];
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  return result;
}

uint64_t sub_1C19A74D4()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C19A751C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C19A7554()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C19A758C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C19A75DC()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C19A7630()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C19A7668()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C19A76B8()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C19A76F4()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C19A7734()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C19A776C()
{
  MEMORY[0x1C6906340](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C19A77A8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C1A6D5DC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1C19A7854(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C1A6D5DC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C19A78F8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C1A6D5DC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1C19A79A4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C1A6D5DC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C19A7A48(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C1A6D5DC();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1C19A7AB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C1A6D5DC();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1C19A7B24()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C19A7B5C()
{

  return MEMORY[0x1EEE6BDD0](v0, 49, 7);
}

uint64_t sub_1C19A7B9C()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C19A7BDC()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C19A7C24()
{
  MEMORY[0x1C6906340](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C19A7C5C()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C19A7C9C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_1C19A7CD4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C19A7D14()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C19A7D4C()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C19A7D94()
{
  v1 = sub_1C1A6D5DC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_1C19A7E78()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C19A7EB0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C19A7EF0()
{
  MEMORY[0x1C6906340](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C19A80F8()
{

  sub_1C199935C((v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1C19A8138()
{
  sub_1C199935C((v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1C19A8170()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C19A81A8()
{
  MEMORY[0x1C6906340](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C19A81E0()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C19A8220()
{
  MEMORY[0x1C6906340](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C19A8258()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C19A8290()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C19A82C8()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C19A8310()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C19A8360()
{
  MEMORY[0x1C6906340](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C19A8398()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

void sub_1C19A83D8(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___APPCMetricsVideoView_isFullScreen;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

id sub_1C19A8434@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C1A36C90();
  *a1 = result;
  return result;
}

void sub_1C19A8460(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR___APPCMetricsVideoView____lazy_storage___privacyMarkerButton);
  *(*a2 + OBJC_IVAR___APPCMetricsVideoView____lazy_storage___privacyMarkerButton) = *a1;
  v3 = v2;
}

uint64_t sub_1C19A84B0()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

void sub_1C19A8510(uint64_t a1, uint64_t *a2)
{
  sub_1C1A29014();
  sub_1C1A6D38C();
  __break(1u);
}

void sub_1C19A85C4(uint64_t a1, uint64_t *a2)
{
  sub_1C1A39E6C();
  sub_1C1A6D39C();
  __break(1u);
}

uint64_t sub_1C19A8654()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C19A86C0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C19A86F8()
{
  MEMORY[0x1C6906340](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C19A87A0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C1A6D62C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1C19A884C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C1A6D62C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

__n128 sub_1C19A88F0@<Q0>(uint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___APPrivacyMarker_minimumTappableSize;
  swift_beginAccess();
  result = *(v3 + v4);
  *a2 = result;
  return result;
}

void sub_1C19A8948(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (*a2 + OBJC_IVAR___APPrivacyMarker_minimumTappableSize);
  swift_beginAccess();
  *v4 = v2;
  v4[1] = v3;
  sub_1C19970C4();
}

uint64_t sub_1C19A89A4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1C19A9E58(&qword_1EBF04D70, &unk_1C1A77E90);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[6];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[11] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_1C1A6D48C();
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[12];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_1C19A8ADC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_1C19A9E58(&qword_1EBF04D70, &unk_1C1A77E90);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[6];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[11] + 8) = (a2 - 1);
  }

  else
  {
    v13 = sub_1C1A6D48C();
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[12];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

uint64_t sub_1C19A8C14()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C19A8C54()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C19A8C8C()
{
  v1 = (type metadata accessor for CarouselElement(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();

  v5 = v1[8];
  v6 = sub_1C1A6D48C();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  v7 = v1[12];
  v8 = sub_1C1A6DDAC();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v3 + v7, 1, v8))
  {
    (*(v9 + 8))(v0 + v3 + v7, v8);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1C19A8E24()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C19A8E88()
{
  MEMORY[0x1C6906340](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C19A8EC0()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C19A8EF8()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C19A8F38()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C19A8F70@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 40);
  *a2 = *(v3 + 32);
  a2[1] = v4;
}

uint64_t sub_1C19A8FC0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 56);
  *a2 = *(v3 + 48);
  a2[1] = v4;
}

uint64_t sub_1C19A9010@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 72);
  *a2 = *(v3 + 64);
  a2[1] = v4;
}

uint64_t sub_1C19A9060@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 88);
  *a2 = *(v3 + 80);
  a2[1] = v4;
}

void sub_1C19A90B0(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 96);
}

void sub_1C19A90F8(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 96) = v2;
}

uint64_t sub_1C19A913C()
{
  v1 = (type metadata accessor for CarouselElement(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v16 = *(*v1 + 64);
  v4 = sub_1C1A6D6EC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v17 = *(v5 + 64);
  swift_unknownObjectRelease();

  v7 = v1[8];
  v8 = sub_1C1A6D48C();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);

  v9 = v1[12];
  v10 = sub_1C1A6DDAC();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v3 + v9, 1, v10))
  {
    (*(v11 + 8))(v0 + v3 + v9, v10);
  }

  v12 = v2 | v6;
  v13 = (v16 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + v6 + 8) & ~v6;

  (*(v5 + 8))(v0 + v14, v4);

  return MEMORY[0x1EEE6BDD0](v0, v14 + v17, v12 | 7);
}

uint64_t sub_1C19A9404()
{
  MEMORY[0x1C6906340](v0 + 16);

  return swift_deallocClassInstance();
}

void AppStoreConfig.description.getter()
{
  v1 = 0;
  v2 = MEMORY[0x1E69E7CC0];
  v3 = *v0;
LABEL_2:
  if (v1 <= 4)
  {
    v4 = 4;
  }

  else
  {
    v4 = v1;
  }

  v5 = v4 + 1;
  v6 = (&unk_1F413ED00 + 24 * v1 + 32);
  while (v1 != 4)
  {
    if (v5 == ++v1)
    {
      __break(1u);
      return;
    }

    v7 = v6 + 3;
    v8 = *v6;
    v6 += 3;
    if ((v8 & ~v3) == 0)
    {
      v10 = *(v7 - 2);
      v9 = *(v7 - 1);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C19A9E38(0, v2[2] + 1, 1);
      }

      v12 = v2[2];
      v11 = v2[3];
      if (v12 >= v11 >> 1)
      {
        sub_1C19A9E38((v11 > 1), v12 + 1, 1);
      }

      v2[2] = v12 + 1;
      v13 = &v2[3 * v12];
      v13[4] = v8;
      v13[5] = v10;
      v13[6] = v9;
      goto LABEL_2;
    }
  }

  sub_1C19A9E58(&qword_1EBF035E0, &qword_1C1A72D50);
  swift_arrayDestroy();
  v14 = v2[2];
  if (v14)
  {
    v21 = MEMORY[0x1E69E7CC0];
    sub_1C19A9E18(0, v14, 0);
    v15 = v2 + 6;
    do
    {
      v17 = *(v15 - 1);
      v16 = *v15;
      v19 = *(v21 + 16);
      v18 = *(v21 + 24);

      if (v19 >= v18 >> 1)
      {
        sub_1C19A9E18((v18 > 1), v19 + 1, 1);
      }

      *(v21 + 16) = v19 + 1;
      v20 = v21 + 16 * v19;
      *(v20 + 32) = v17;
      *(v20 + 40) = v16;
      v15 += 3;
      --v14;
    }

    while (v14);
  }

  sub_1C19A9E58(&qword_1EBF035E8, &qword_1C1A72D58);
  sub_1C19A9EA0();
  sub_1C1A6F37C();
}

void sub_1C19A96CC(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
}

void *sub_1C19A974C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_1C19A9778@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_1C19A9890(uint64_t a1, id *a2)
{
  v3 = sub_1C1A6F3BC();
  *a2 = 0;
  return v3 & 1;
}

void sub_1C19A9910(uint64_t *a2@<X8>)
{
  sub_1C1A6F3CC();
  v3 = sub_1C1A6F39C();

  *a2 = v3;
}

uint64_t sub_1C19A9954(void *a1, uint64_t *a2)
{
  v2 = sub_1C1A6F3CC();
  v4 = v3;
  if (v2 == sub_1C1A6F3CC() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1C1A6FCEC();
  }

  return v7 & 1;
}

uint64_t sub_1C19A99DC(uint64_t a1)
{
  v2 = sub_1C19AB0CC(&qword_1EBF03850, type metadata accessor for ASCAppState, &unk_1C1A7370C);
  v3 = sub_1C19AB0CC(&qword_1EBF03858, type metadata accessor for ASCAppState, &unk_1C1A736AC);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1C19A9A98(uint64_t a1)
{
  v2 = sub_1C19AB0CC(&qword_1EBF03868, type metadata accessor for OpenExternalURLOptionsKey, &unk_1C1A7379C);
  v3 = sub_1C19AB0CC(&qword_1EBF03870, type metadata accessor for OpenExternalURLOptionsKey, &unk_1C1A7345C);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1C19A9B54(uint64_t a1)
{
  v2 = sub_1C19AB0CC(&qword_1EDE626E0, type metadata accessor for Key, &unk_1C1A737E0);
  v3 = sub_1C19AB0CC(&qword_1EBF03860, type metadata accessor for Key, &unk_1C1A7357C);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

void sub_1C19A9C10(uint64_t *a2@<X8>)
{
  v3 = sub_1C1A6F39C();

  *a2 = v3;
}

uint64_t sub_1C19A9C58(uint64_t a1)
{
  v2 = sub_1C19AB0CC(&qword_1EBF03878, type metadata accessor for OpenURLOptionsKey, &unk_1C1A73824);
  v3 = sub_1C19AB0CC(&qword_1EBF03880, type metadata accessor for OpenURLOptionsKey, &unk_1C1A73348);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1C19A9D14()
{
  v0 = sub_1C1A6F3CC();
  v1 = MEMORY[0x1C6904F80](v0);

  return v1;
}

double sub_1C19A9D50(uint64_t a1)
{
  sub_1C1A6F3CC();
  sub_1C1A6F45C();

  return result;
}

uint64_t sub_1C19A9DA4(uint64_t a1)
{
  sub_1C1A6F3CC();
  sub_1C1A6FDAC();
  sub_1C1A6F45C();
  v1 = sub_1C1A6FDDC();

  return v1;
}

char *sub_1C19A9E18(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C19AA430(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C19A9E38(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C19AA53C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1C19A9E58(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1C19A9EA0()
{
  result = qword_1EDE62720;
  if (!qword_1EDE62720)
  {
    sub_1C19A9F04(&qword_1EBF035E8, &qword_1C1A72D58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE62720);
  }

  return result;
}

uint64_t sub_1C19A9F04(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1C19A9F50()
{
  result = qword_1EBF035F0;
  if (!qword_1EBF035F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF035F0);
  }

  return result;
}

unint64_t sub_1C19A9FA8()
{
  result = qword_1EBF035F8;
  if (!qword_1EBF035F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF035F8);
  }

  return result;
}

unint64_t sub_1C19AA000()
{
  result = qword_1EDE63510;
  if (!qword_1EDE63510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE63510);
  }

  return result;
}

unint64_t sub_1C19AA058()
{
  result = qword_1EDE63508;
  if (!qword_1EDE63508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE63508);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppStoreConfig(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AppStoreConfig(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
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

  *(result + 8) = v3;
  return result;
}

__n128 sub_1C19AA178(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 sub_1C19AA1AC(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C19AA1B8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C19AA1D8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

void *sub_1C19AA204(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C19AACC8(a1, a2, a3, *v3, &qword_1EBF03760, &unk_1C1A73110, MEMORY[0x1E69C5E30]);
  *v3 = result;
  return result;
}

void *sub_1C19AA248(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C19AA684(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C19AA268(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C19AA7B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C19AA288(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C19AAEA4(a1, a2, a3, *v3, &qword_1EBF03788, &qword_1C1A73140, &qword_1EBF03790, &qword_1C1A73148);
  *v3 = result;
  return result;
}

char *sub_1C19AA2C8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C19AA9C0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C19AA2E8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C19AAAC4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C19AA308(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C19AABD4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C19AA328(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C19AACC8(a1, a2, a3, *v3, &qword_1EBF037C0, &qword_1C1A73178, MEMORY[0x1E6968178]);
  *v3 = result;
  return result;
}

void *sub_1C19AA36C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C19AACC8(a1, a2, a3, *v3, &qword_1EBF037B8, &qword_1C1A73170, type metadata accessor for ImpressionInfo);
  *v3 = result;
  return result;
}

void *sub_1C19AA3B0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C19AAEA4(a1, a2, a3, *v3, &qword_1EBF037A8, &unk_1C1A73160, &qword_1EBF037B0, &unk_1C1A76BB0);
  *v3 = result;
  return result;
}

void *sub_1C19AA3F0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C19AAEA4(a1, a2, a3, *v3, &qword_1EBF03798, &unk_1C1A73150, &qword_1EBF037A0, &unk_1C1A782D0);
  *v3 = result;
  return result;
}

char *sub_1C19AA430(char *result, int64_t a2, char a3, char *a4)
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
    sub_1C19A9E58(&qword_1EBF037C8, &qword_1C1A73180);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1C19AA53C(void *result, int64_t a2, char a3, void *a4)
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
    sub_1C19A9E58(&qword_1EBF037D0, qword_1C1A73188);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1C19A9E58(&qword_1EBF035E0, &qword_1C1A72D50);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1C19AA684(void *result, int64_t a2, char a3, void *a4)
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
    sub_1C19A9E58(&qword_1EBF03750, &unk_1C1A73100);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    sub_1C19A9E58(&qword_1EBF03758, &unk_1C1A758E0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C19AA7B8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1C19A9E58(&qword_1EBF03778, &qword_1C1A73128);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1C19AA8BC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1C19A9E58(&qword_1EBF043D0, &qword_1C1A73138);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1C19AA9C0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1C19A9E58(&qword_1EBF03780, &qword_1C1A73130);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

char *sub_1C19AAAC4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1C19A9E58(&qword_1EBF03768, &unk_1C1A75ED0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C19AABD4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1C19A9E58(&qword_1EBF03770, &qword_1C1A73120);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1C19AACC8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1C19A9E58(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
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

void *sub_1C19AAEA4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_1C19A9E58(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1C19A9E58(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

uint64_t sub_1C19AB0CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C19AB3E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_1C19AB47C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id sub_1C19AB534(unint64_t a1, uint64_t a2)
{
  v76 = sub_1C19A9E58(&qword_1EBF03890, &qword_1C1A73950);
  MEMORY[0x1EEE9AC00](v76);
  v77 = (v70 - v5);
  v6 = sub_1C1A6D94C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_1C19A9E58(&qword_1EBF03888, &unk_1C1A758B0);
  v81 = *(v10 - 8);
  v82 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v79 = (v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v74 = (v70 - v13);
  MEMORY[0x1EEE9AC00](v14);
  v80 = v70 - v15;
  v16 = sub_1C1A6D62C();
  v78 = *(v16 - 8);
  *&v17 = MEMORY[0x1EEE9AC00](v16).n128_u64[0];
  v19 = v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v2[2] lock];
  v20 = sub_1C19ABED4(a1);
  v21 = v20;
  v22 = v20 >> 62;
  if (v20 >> 62)
  {
    if (sub_1C1A6F9EC())
    {
      goto LABEL_3;
    }

LABEL_30:

    sub_1C19AC050(a1);
    v69 = v2[2];

    return [v69 unlock];
  }

  if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_30;
  }

LABEL_3:
  v71 = v9;
  v72 = v7;
  v73 = v6;
  v75 = v2;
  v23 = sub_1C1A6F67C();
  v24 = sub_1C199E4CC();
  v70[0] = &qword_1C1A73880;
  v70[1] = "n>16@0:8";
  v70[2] = v24;
  v25 = sub_1C1A6F8EC();
  if (os_log_type_enabled(v25, v23))
  {
    v26 = a2;

    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v83 = v28;
    *v27 = 134218242;
    if (v22)
    {
      v29 = sub_1C1A6F9EC();
    }

    else
    {
      v29 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v27 + 4) = v29;

    *(v27 + 12) = 2082;
    v30 = sub_1C1A6DA3C();
    sub_1C1A6DD2C();

    v31 = sub_1C1A6D5EC();
    v33 = v32;
    (*(v78 + 8))(v19, v16);
    v34 = sub_1C19A1884(v31, v33, &v83);

    *(v27 + 14) = v34;
    _os_log_impl(&dword_1C198D000, v25, v23, "[PCUI] Got %ld ads for fetching context: %{public}s.", v27, 0x16u);
    sub_1C199935C(v28);
    MEMORY[0x1C6906260](v28, -1, -1);
    v35 = v27;
    a2 = v26;
    MEMORY[0x1C6906260](v35, -1, -1);
  }

  v36 = v75;
  v37 = v80;
  sub_1C1A6D98C();
  v39 = v81;
  v38 = v82;
  v40 = (*(v81 + 88))(v37, v82);
  v41 = v79;
  if (v40 == *MEMORY[0x1E69C5EC0])
  {
    (*(v39 + 16))(v79, v37, v38);
    (*(v39 + 96))(v41, v38);
    v42 = sub_1C1A6D88C();
    v43 = *(v42 - 8);
    if ((*(v43 + 88))(v41, v42) == *MEMORY[0x1E69C5E10])
    {
      v78 = a2;
      (*(v43 + 96))(v41, v42);
LABEL_14:
      v49 = *v41;
      (*(v39 + 8))(v37, v38);
      v50 = sub_1C19ACBC0(v21, v49);
      v52 = v51;

      if (v52)
      {
        if (v52 == 1)
        {
          v54 = v71;
          v53 = v72;
          *v71 = v50;
          v55 = v73;
          (*(v53 + 104))(v54, *MEMORY[0x1E69C5E88], v73);

          sub_1C1A6D95C();

          (*(v53 + 8))(v54, v55);
        }

        else
        {
          v61 = sub_1C1A6F66C();
          v62 = sub_1C1A6F8EC();
          sub_1C1A6F18C(v61, &dword_1C198D000, v62, "[PCUI] Found fault when resolving content. Content likely failed validation.", 76, 2, MEMORY[0x1E69E7CC0]);

          v64 = v71;
          v63 = v72;
          v65 = v73;
          (*(v72 + 104))(v71, *MEMORY[0x1E69C5E70], v73);
          sub_1C1A6D95C();
          (*(v63 + 8))(v64, v65);
        }
      }

      else
      {

        sub_1C19AC2D4(v60, v78);
        swift_bridgeObjectRelease_n();
      }

      v66 = v36 + *(*v36 + 15);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v67 = *(v66 + 1);
        ObjectType = swift_getObjectType();
        (*(v67 + 16))(ObjectType, v67);
        swift_unknownObjectRelease();
      }

      return [v36[2] unlock];
    }

    (*(v43 + 8))(v41, v42);
  }

  else if (v40 == *MEMORY[0x1E69C5ED8])
  {
    v78 = a2;
    v44 = v74;
    (*(v39 + 16))(v74, v37, v38);
    (*(v39 + 96))(v44, v38);
    v45 = *v44;
    v41 = (v44 + *(sub_1C19A9E58(&qword_1EBF038A0, qword_1C1A73970) + 48));
    v46 = sub_1C1A6D88C();
    v47 = v37;
    v48 = *(v46 - 8);
    if ((*(v48 + 88))(v41, v46) == *MEMORY[0x1E69C5E10])
    {

      (*(v48 + 96))(v41, v46);
      v37 = v47;
      goto LABEL_14;
    }

    sub_1C19ADCEC(v45);

    sub_1C19AC2D4(v21, v78);

    (*(v48 + 8))(v41, v46);
    (*(v39 + 8))(v47, v38);
    return [v36[2] unlock];
  }

  result = sub_1C19AC2D4(v21, a2);
  if ((v21 & 0xC000000000000001) != 0)
  {
    v57 = MEMORY[0x1C69055B0](0, v21);
    goto LABEL_21;
  }

  if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v57 = *(v21 + 32);
LABEL_21:
    v58 = v57;

    v59 = v77;
    *v77 = v58;
    swift_storeEnumTagMultiPayload();
    sub_1C1A6DA4C();
    sub_1C1991140(v59, &qword_1EBF03890, &qword_1C1A73950);
    (*(v39 + 8))(v37, v38);
    return [v36[2] unlock];
  }

  __break(1u);
  return result;
}

uint64_t sub_1C19ABED4(unint64_t a1)
{
  v11 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1C1A6F9EC())
  {
    v4 = 0;
    v5 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1C69055B0](v4, a1);
      }

      else
      {
        if (v4 >= *(v5 + 16))
        {
          goto LABEL_15;
        }

        v6 = *(a1 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v10 = v6;
      if (sub_1C19AE2BC(&v10, v1))
      {
        sub_1C1A6FB2C();
        sub_1C1A6FB5C();
        sub_1C1A6FB6C();
        sub_1C1A6FB3C();
        v5 = a1 & 0xFFFFFFFFFFFFFF8;
      }

      else
      {
      }

      ++v4;
      if (v8 == i)
      {
        return v11;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1C19AC050(unint64_t a1)
{
  v2 = sub_1C1A6D94C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C19A9E58(&qword_1EBF03890, &qword_1C1A73950);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = (&v17 - v8);
  if (a1 >> 62)
  {
    result = sub_1C1A6F9EC();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    v11 = MEMORY[0x1C69055B0](0, a1, v7);
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v11 = *(a1 + 32);
  }

  v12 = v11;
  v13 = sub_1C1A6EAFC();
  if (v13 == 1057)
  {
    v14 = MEMORY[0x1E69C5EB8];
  }

  else if (v13 == 1031)
  {
    v14 = MEMORY[0x1E69C5EA0];
  }

  else
  {
    *v9 = sub_1C1A6EABC();
    v14 = MEMORY[0x1E69C5EB0];
  }

  v15 = *v14;
  v16 = sub_1C1A6D9BC();
  (*(*(v16 - 8) + 104))(v9, v15, v16);
  swift_storeEnumTagMultiPayload();
  sub_1C1A6DA4C();
  sub_1C1991140(v9, &qword_1EBF03890, &qword_1C1A73950);
  (*(v3 + 104))(v5, *MEMORY[0x1E69C5E70], v2);
  sub_1C1A6D95C();

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1C19AC2D4(unint64_t a1, uint64_t a2)
{
  v77 = a2;
  v4 = *v2;
  v5 = sub_1C1A6D94C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_1C1A6D8DC();
  v80 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v10 = v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_1C1A6D93C();
  v79 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v75 = v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v85 = v56 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v86 = v56 - v15;
  v16 = sub_1C19A9E58(&qword_1EBF038A8, &unk_1C1A73990);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v74 = v56 - v17;
  v81 = sub_1C1A6D5DC();
  v18 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v73 = v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v72 = v56 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v78 = v56 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v62 = v56 - v25;
  sub_1C1A6D5CC();
  if (a1 >> 62)
  {
    result = sub_1C1A6F9EC();
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v58 = v2;
  v60 = v5;
  v59 = v6;
  v57 = v8;
  v56[1] = v4;
  v56[0] = v18;
  if (result)
  {
    if (result < 1)
    {
      __break(1u);
      return result;
    }

    v27 = 0;
    v67 = (v18 + 48);
    v68 = a1 & 0xC000000000000001;
    v61 = (v18 + 32);
    v82 = (v18 + 16);
    v84 = (v79 + 16);
    v66 = v79 + 32;
    v65 = (v79 + 8);
    v64 = (v18 + 8);
    v28 = MEMORY[0x1E69E7CC0];
    v63 = v80 + 32;
    v29 = MEMORY[0x1E69E7CC0];
    v70 = v10;
    v71 = a1;
    v30 = v81;
    v31 = v78;
    v69 = result;
    do
    {
      v83 = v29;
      if (v68)
      {
        v32 = MEMORY[0x1C69055B0](v27, a1);
      }

      else
      {
        v32 = *(a1 + 8 * v27 + 32);
      }

      v33 = v32;
      v34 = v74;
      v35 = v28;
      sub_1C1A6EB1C();
      v36 = *v67;
      if ((*v67)(v34, 1, v30) == 1)
      {
        (*v82)(v31, v62, v30);
        v37 = v30;
        v38 = v31;
        if (v36(v34, 1, v30) != 1)
        {
          sub_1C1991140(v34, &qword_1EBF038A8, &unk_1C1A73990);
        }
      }

      else
      {
        (*v61)(v31, v34, v30);
        v37 = v30;
        v38 = v31;
      }

      sub_1C1A6DA3C();
      sub_1C1A6EA5C();
      (*v82)(v72, v38, v37);
      sub_1C1A6EACC();
      v39 = v86;
      sub_1C1A6D91C();
      v40 = *v84;
      (*v84)(v85, v39, v87);
      v28 = v35;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_1C19CACC8(0, v35[2] + 1, 1, v35);
      }

      v41 = v70;
      a1 = v71;
      v29 = v83;
      v43 = v28[2];
      v42 = v28[3];
      v31 = v78;
      if (v43 >= v42 >> 1)
      {
        v28 = sub_1C19CACC8((v42 > 1), v43 + 1, 1, v28);
      }

      v28[2] = v43 + 1;
      v44 = v87;
      (*(v79 + 32))(v28 + ((*(v79 + 80) + 32) & ~*(v79 + 80)) + *(v79 + 72) * v43, v85, v87);
      v40(v75, v86, v44);
      v45 = v33;
      sub_1C1A6D8AC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = sub_1C19CACA0(0, v29[2] + 1, 1, v29);
      }

      v30 = v81;
      v47 = v29[2];
      v46 = v29[3];
      if (v47 >= v46 >> 1)
      {
        v29 = sub_1C19CACA0((v46 > 1), v47 + 1, 1, v29);
      }

      ++v27;

      (*v65)(v86, v87);
      (*v64)(v31, v30);
      v29[2] = v47 + 1;
      (*(v80 + 32))(v29 + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * v47, v41, v76);
    }

    while (v69 != v27);
  }

  else
  {
    v28 = MEMORY[0x1E69E7CC0];
    v29 = MEMORY[0x1E69E7CC0];
  }

  v48 = v28;
  v49 = v58;
  sub_1C1A6DC3C();
  v50 = v49 + *(*v49 + 120);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v51 = *(v50 + 8);
    ObjectType = swift_getObjectType();
    (*(v51 + 24))(v29, ObjectType, v51);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  v53 = v60;
  v54 = v59;
  v55 = v57;
  *v57 = v48;
  (*(v54 + 104))(v55, *MEMORY[0x1E69C5E68], v53);
  sub_1C1A6D95C();
  (*(v54 + 8))(v55, v53);
  return (*(v56[0] + 8))(v62, v81);
}

unint64_t sub_1C19ACBC0(unint64_t a1, unint64_t a2)
{
  v56 = sub_1C19A9E58(&qword_1EBF03890, &qword_1C1A73950);
  MEMORY[0x1EEE9AC00](v56);
  v55 = (&v50 - v6);
  v53 = sub_1C1A6D62C();
  v7 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v52 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = MEMORY[0x1E69E7CC0];
  v67 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
LABEL_62:
    v9 = sub_1C1A6F9EC();
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_63:
    v3 = MEMORY[0x1E69E7CC0];
    v48 = MEMORY[0x1E69E7CC0];
    if (!(MEMORY[0x1E69E7CC0] >> 62))
    {
      goto LABEL_54;
    }

LABEL_64:
    if (!sub_1C1A6F9EC())
    {
      goto LABEL_65;
    }

LABEL_55:

    return v48;
  }

  v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
    goto LABEL_63;
  }

LABEL_3:
  if (v9 < 1)
  {
    __break(1u);
    goto LABEL_69;
  }

  v10 = v2 + *(*v2 + 120);
  v63 = "n>16@0:8";
  v64 = a1 & 0xC000000000000001;
  v62 = &qword_1C1A73880;
  v51 = (v7 + 8);

  v11 = 0;
  v3 = MEMORY[0x1E69E7CC0];
  *&v12 = 136446210;
  v57 = v12;
  *&v12 = 136446466;
  v50 = v12;
  v60 = v10;
  v61 = MEMORY[0x1E69E7CC0];
  v58 = v9;
  v59 = a1;
  do
  {
    if (v64)
    {
      v20 = MEMORY[0x1C69055B0](v11, a1);
    }

    else
    {
      v20 = *(a1 + 8 * v11 + 32);
    }

    v21 = v20;
    if (a2 >> 62)
    {
      if (!sub_1C1A6F9EC())
      {
LABEL_28:
        v30 = v21;
        MEMORY[0x1C6904FB0]();
        if (*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v67 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1C1A6F53C();
        }

        sub_1C1A6F55C();

        v61 = v67;
        goto LABEL_6;
      }
    }

    else if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_28;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong || (v23 = *(v10 + 8), v7 = Strong, ObjectType = swift_getObjectType(), v65 = v7, v2 = (*(*(v23 + 8) + 16))(v21, ObjectType), swift_unknownObjectRelease(), v2))
    {
      v25 = sub_1C1A6F66C();
      sub_1C199E4CC();
      v26 = sub_1C1A6F8EC();
      if (os_log_type_enabled(v26, v25))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v65 = v14;
        *v13 = v57;
        v15 = sub_1C1A6EA5C();
        v17 = sub_1C19A1884(v15, v16, &v65);

        *(v13 + 4) = v17;
        v9 = v58;
        _os_log_impl(&dword_1C198D000, v26, v25, "[PCUI] Failed to validate received content: %{public}s", v13, 0xCu);
        sub_1C199935C(v14);
        v18 = v14;
        a1 = v59;
        MEMORY[0x1C6906260](v18, -1, -1);
        v19 = v13;
        v10 = v60;
        MEMORY[0x1C6906260](v19, -1, -1);
      }

      else
      {
      }

      goto LABEL_6;
    }

    if (a2 >> 62)
    {
      v27 = sub_1C1A6F9EC();
    }

    else
    {
      v27 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v27)
    {
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    v7 = a2 >> 62;
    if (a2 >> 62)
    {
      if (!sub_1C1A6F9EC())
      {
        goto LABEL_57;
      }
    }

    else if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_57;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v3 = MEMORY[0x1C69055B0](0, a2);
      v28 = a2 & 0xFFFFFFFFFFFFFF8;
      if (v7)
      {
        goto LABEL_34;
      }
    }

    else
    {
      if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_58;
      }

      v3 = *(a2 + 32);

      v28 = a2 & 0xFFFFFFFFFFFFFF8;
      if (v7)
      {
LABEL_34:
        if ((a2 & 0x8000000000000000) != 0)
        {
          v2 = a2;
        }

        else
        {
          v2 = v28;
        }

        if (!sub_1C1A6F9EC())
        {
          goto LABEL_60;
        }

        if (sub_1C1A6F9EC() < 1)
        {
          goto LABEL_61;
        }

        v29 = sub_1C1A6F9EC();
        goto LABEL_40;
      }
    }

    v29 = *(v28 + 16);
    if (!v29)
    {
      goto LABEL_60;
    }

LABEL_40:
    v2 = v29 - 1;
    if (__OFSUB__(v29, 1))
    {
      goto LABEL_59;
    }

    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v68 = a2;
    if (v7)
    {
      isUniquelyReferenced_nonNull_bridgeObject = 0;
    }

    if (isUniquelyReferenced_nonNull_bridgeObject != 1 || v2 > *((a2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      if (v7)
      {
        sub_1C1A6F9EC();
      }

      a2 = sub_1C1A6FB0C();
      v68 = a2;
    }

    sub_1C19E7764(0, 1, 0);
    v32 = sub_1C1A6F67C();
    sub_1C199E4CC();
    v33 = sub_1C1A6F8EC();
    if (os_log_type_enabled(v33, v32))
    {
      v34 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v65 = v54;
      *v34 = v50;
      v35 = sub_1C1A6EA5C();
      v37 = sub_1C19A1884(v35, v36, &v65);

      *(v34 + 4) = v37;
      *(v34 + 12) = 2082;
      v38 = v52;
      sub_1C1A6D9FC();
      v39 = sub_1C1A6D5EC();
      v41 = v40;
      (*v51)(v38, v53);
      v42 = sub_1C19A1884(v39, v41, &v65);
      a1 = v59;

      *(v34 + 14) = v42;
      _os_log_impl(&dword_1C198D000, v33, v32, "[PCUI] Received content from network with id: %{public}s to resolve request %{public}s", v34, 0x16u);
      v43 = v54;
      swift_arrayDestroy();
      MEMORY[0x1C6906260](v43, -1, -1);
      v44 = v34;
      v9 = v58;
      MEMORY[0x1C6906260](v44, -1, -1);
    }

    v10 = v60;
    v45 = v55;
    *v55 = v21;
    swift_storeEnumTagMultiPayload();
    v46 = v21;
    sub_1C1A6DA4C();
    sub_1C1991140(v45, &qword_1EBF03890, &qword_1C1A73950);

    MEMORY[0x1C6904FB0](v47);
    if (*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v66 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1C1A6F53C();
    }

    sub_1C1A6F55C();

    v3 = v66;
LABEL_6:
    ++v11;
  }

  while (v9 != v11);

  v48 = v61;
  if (v61 >> 62)
  {
    goto LABEL_64;
  }

LABEL_54:
  if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_55;
  }

LABEL_65:

  if (!(v3 >> 62))
  {
    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v3;
    }

LABEL_70:

    return 0;
  }

LABEL_69:
  if (!sub_1C1A6F9EC())
  {
    goto LABEL_70;
  }

  return v3;
}

id sub_1C19AD3D8(void *a1, uint64_t a2)
{
  v86 = a2;
  v3 = sub_1C19A9E58(&qword_1EBF03888, &unk_1C1A758B0);
  v75 = *(v3 - 8);
  v76 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v74 = &v71 - v4;
  v83 = sub_1C19A9E58(&qword_1EBF03890, &qword_1C1A73950);
  MEMORY[0x1EEE9AC00](v83);
  v84 = (&v71 - v5);
  v6 = sub_1C19A9E58(&qword_1EBF03898, &qword_1C1A73958);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v80 = &v71 - v7;
  v8 = sub_1C1A6DEEC();
  v81 = *(v8 - 8);
  v82 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v72 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v71 - v11;
  v88 = sub_1C1A6D94C();
  v90 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v87 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C1A6D62C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1C1A6F66C();
  v19 = sub_1C199E4CC();
  v77 = &qword_1C1A73880;
  v78 = "n>16@0:8";
  v79 = v19;
  v20 = sub_1C1A6F8EC();
  v21 = os_log_type_enabled(v20, v18);
  v73 = v12;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    LODWORD(v85) = v18;
    v24 = v23;
    v25 = swift_slowAlloc();
    v91[0] = v25;
    *v22 = 136446467;
    v26 = sub_1C1A6DA3C();
    sub_1C1A6DD2C();

    v27 = sub_1C1A6D5EC();
    v29 = v28;
    (*(v15 + 8))(v17, v14);
    v30 = sub_1C19A1884(v27, v29, v91);

    *(v22 + 4) = v30;
    *(v22 + 12) = 2113;
    v31 = a1;
    v32 = _swift_stdlib_bridgeErrorToNSError();
    *(v22 + 14) = v32;
    *v24 = v32;
    _os_log_impl(&dword_1C198D000, v20, v85, "[PCUI] Got error for fetching context: %{public}s, error: %{private}@", v22, 0x16u);
    sub_1C1991140(v24, &unk_1EBF04B10, &qword_1C1A74EC0);
    MEMORY[0x1C6906260](v24, -1, -1);
    sub_1C199935C(v25);
    MEMORY[0x1C6906260](v25, -1, -1);
    MEMORY[0x1C6906260](v22, -1, -1);
  }

  v33 = v89;
  [*(v89 + 16) lock];
  v34 = *(v33 + 24);
  v35 = *MEMORY[0x1E69C5E70];
  v36 = v90;
  v37 = *(v90 + 104);
  v39 = v87;
  v38 = v88;
  v37(v87, v35, v88);
  v85 = v34;
  LOBYTE(v33) = sub_1C1A6D97C();
  v40 = *(v36 + 8);
  v90 = v36 + 8;
  v40(v39, v38);
  if (v33)
  {
    v91[0] = a1;
    v41 = a1;
    sub_1C19A9E58(&qword_1EBF04990, &unk_1C1A73960);
    v42 = v80;
    v43 = v82;
    v44 = swift_dynamicCast();
    v45 = v81;
    v46 = *(v81 + 56);
    if (v44)
    {
      v46(v42, 0, 1, v43);
      v47 = v73;
      (*(v45 + 32))(v73, v42, v43);
      v48 = v72;
      (*(v45 + 104))(v72, *MEMORY[0x1E69C5F38], v43);
      v49 = sub_1C1A6DEDC();
      v50 = *(v45 + 8);
      v50(v48, v43);
      if (v49)
      {
        v51 = v47;
        v52 = v84;
        *v84 = 8;
        v53 = *MEMORY[0x1E69C5EB0];
        v54 = sub_1C1A6D9BC();
        (*(*(v54 - 8) + 104))(v52, v53, v54);
        swift_storeEnumTagMultiPayload();
        sub_1C1A6DA4C();
        sub_1C1991140(v52, &qword_1EBF03890, &qword_1C1A73950);
        v50(v51, v43);
LABEL_13:
        v69 = v87;
        v68 = v88;
        v37(v87, v35, v88);
        sub_1C1A6D95C();
        v40(v69, v68);
        return [*(v89 + 16) unlock];
      }

      v50(v47, v43);
    }

    else
    {
      v46(v42, 1, 1, v43);
      sub_1C1991140(v42, &qword_1EBF03898, &qword_1C1A73958);
    }

    v65 = v84;
    *v84 = 9;
    v66 = *MEMORY[0x1E69C5EB0];
    v67 = sub_1C1A6D9BC();
    (*(*(v67 - 8) + 104))(v65, v66, v67);
    swift_storeEnumTagMultiPayload();
    sub_1C1A6DA4C();
    sub_1C1991140(v65, &qword_1EBF03890, &qword_1C1A73950);
    goto LABEL_13;
  }

  v55 = sub_1C1A6F66C();
  v56 = sub_1C1A6F8EC();
  if (os_log_type_enabled(v56, v55))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v91[0] = v58;
    *v57 = 136380675;
    v59 = v74;
    sub_1C1A6D98C();
    v60 = v76;
    v61 = sub_1C1A6D9CC();
    v63 = v62;
    (*(v75 + 8))(v59, v60);
    v64 = sub_1C19A1884(v61, v63, v91);

    *(v57 + 4) = v64;
    _os_log_impl(&dword_1C198D000, v56, v55, "[PCUI] Unable to process fetch failed event for current state (%{private}s", v57, 0xCu);
    sub_1C199935C(v58);
    MEMORY[0x1C6906260](v58, -1, -1);
    MEMORY[0x1C6906260](v57, -1, -1);
  }

  return [*(v89 + 16) unlock];
}

uint64_t sub_1C19ADCEC(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1;
  v5 = sub_1C1A6D94C();
  v50 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v48 = (&v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v55 = sub_1C1A6D93C();
  v7 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v54 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v3 + 80);
  v10 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v13 = *(v10 + 16);
  v49 = v1;
  v51 = &v43 - v14;
  v13(v12);
  v15 = *(a1 + 16);
  if (v15)
  {
    v43 = v10;
    v44 = v9;
    v45 = v4;
    v46 = v5;
    v56 = MEMORY[0x1E69E7CC0];
    sub_1C19A9E18(0, v15, 0);
    v16 = v56;
    v18 = *(v7 + 16);
    v17 = v7 + 16;
    v19 = *(v17 + 64);
    v47 = a1;
    v20 = a1 + ((v19 + 32) & ~v19);
    v52 = *(v17 + 56);
    v53 = v18;
    v21 = (v17 - 8);
    do
    {
      v22 = v54;
      v23 = v55;
      v24 = v17;
      v53(v54, v20, v55);
      v25 = sub_1C1A6D8EC();
      v27 = v26;
      (*v21)(v22, v23);
      v56 = v16;
      v29 = *(v16 + 16);
      v28 = *(v16 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_1C19A9E18((v28 > 1), v29 + 1, 1);
        v16 = v56;
      }

      *(v16 + 16) = v29 + 1;
      v30 = v16 + 16 * v29;
      *(v30 + 32) = v25;
      *(v30 + 40) = v27;
      v20 += v52;
      --v15;
      v17 = v24;
    }

    while (v15);
    v5 = v46;
    a1 = v47;
    v9 = v44;
    v10 = v43;
  }

  v31 = v51;
  v32 = sub_1C1A6DC4C();

  result = (*(v10 + 8))(v31, v9);
  if (v32 >> 62)
  {
    result = sub_1C1A6F9EC();
    v34 = result;
    if (!result)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v34 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v34)
    {
      goto LABEL_16;
    }
  }

  if (v34 < 1)
  {
    __break(1u);
    return result;
  }

  v35 = 0;
  do
  {
    if ((v32 & 0xC000000000000001) != 0)
    {
      v36 = MEMORY[0x1C69055B0](v35, v32);
    }

    else
    {
      v36 = *(v32 + 8 * v35 + 32);
    }

    v37 = v36;
    ++v35;
    [sub_1C1A6EAAC() notConsumedWithCode:8004 placeholder:0];

    swift_unknownObjectRelease();
  }

  while (v34 != v35);
LABEL_16:

  v38 = v49 + *(*v49 + 120);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v39 = *(v38 + 1);
    ObjectType = swift_getObjectType();
    (*(v39 + 32))(a1, ObjectType, v39);
    swift_unknownObjectRelease();
  }

  v41 = v48;
  *v48 = a1;
  v42 = v50;
  (*(v50 + 104))(v41, *MEMORY[0x1E69C5E58], v5);

  sub_1C1A6D95C();
  return (*(v42 + 8))(v41, v5);
}

id *sub_1C19AE1A8()
{
  v1 = *v0;

  (*(*(v1[10] - 8) + 8))(v0 + *(*v0 + 14));
  sub_1C19A9384(v0 + *(*v0 + 15));
  return v0;
}

uint64_t sub_1C19AE24C()
{
  sub_1C19AE1A8();

  return swift_deallocClassInstance();
}

uint64_t sub_1C19AE2BC(void **a1, uint64_t a2)
{
  v4 = sub_1C19A9E58(&qword_1EBF038A8, &unk_1C1A73990);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v33 - v5;
  v7 = *a1;
  v8 = sub_1C1A6EAFC();
  if (v8 > 1024)
  {
    if (v8 == 1025)
    {
      v28 = a2 + *(*a2 + 120);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v29 = *(v28 + 8);
        ObjectType = swift_getObjectType();
        sub_1C1A6D5AC();
        v31 = sub_1C1A6D5DC();
        (*(*(v31 - 8) + 56))(v6, 0, 1, v31);
        (*(v29 + 40))(v6, ObjectType, v29);
        swift_unknownObjectRelease();
        sub_1C1991140(v6, &qword_1EBF038A8, &unk_1C1A73990);
      }

      v32 = sub_1C1A6F66C();
      sub_1C199E4CC();
      v15 = sub_1C1A6F8EC();
      sub_1C1A6F18C(v32, &dword_1C198D000, v15, "[PCUI] Got noAdsInCache for active fetch.", 41, 2, MEMORY[0x1E69E7CC0]);
    }

    else
    {
      if (v8 != 1031)
      {
        goto LABEL_9;
      }

      v14 = sub_1C1A6F64C();
      sub_1C199E4CC();
      v15 = sub_1C1A6F8EC();
      sub_1C1A6F18C(v14, &dword_1C198D000, v15, "[PCUI] Got policy ad drop for active fetch.", 43, 2, MEMORY[0x1E69E7CC0]);
    }

    return 0;
  }

  if (v8 != 200)
  {
    if (v8 == 1010)
    {
      v9 = sub_1C1A6F66C();
      sub_1C199E4CC();
      v10 = sub_1C1A6F8EC();
      if (!os_log_type_enabled(v10, v9))
      {
LABEL_14:

        return 0;
      }

      v11 = v7;
      v12 = swift_slowAlloc();
      *v12 = 134349056;
      sub_1C1A6EAFC();
      *(v12 + 4) = sub_1C1A6DF6C();

      v13 = "[PCUI] Got network error for active fetch. (%{public}ld)";
LABEL_13:
      _os_log_impl(&dword_1C198D000, v10, v9, v13, v12, 0xCu);
      MEMORY[0x1C6906260](v12, -1, -1);
      goto LABEL_14;
    }

LABEL_9:
    v16 = a2 + *(*a2 + 120);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v17 = *(v16 + 8);
      v18 = swift_getObjectType();
      sub_1C1A6D5AC();
      v19 = sub_1C1A6D5DC();
      (*(*(v19 - 8) + 56))(v6, 0, 1, v19);
      (*(v17 + 40))(v6, v18, v17);
      swift_unknownObjectRelease();
      sub_1C1991140(v6, &qword_1EBF038A8, &unk_1C1A73990);
    }

    v9 = sub_1C1A6F66C();
    sub_1C199E4CC();
    v10 = sub_1C1A6F8EC();
    if (!os_log_type_enabled(v10, v9))
    {
      goto LABEL_14;
    }

    v20 = v7;
    v12 = swift_slowAlloc();
    *v12 = 134349056;
    sub_1C1A6EAFC();
    *(v12 + 4) = sub_1C1A6DF6C();

    v13 = "[PCUI] Got error for active fetch. (%{public}ld)";
    goto LABEL_13;
  }

  v21 = sub_1C1A6F64C();
  sub_1C199E4CC();
  v22 = sub_1C1A6F8EC();
  sub_1C1A6F18C(v21, &dword_1C198D000, v22, "[PCUI] Got filled ad for active fetch.", 38, 2, MEMORY[0x1E69E7CC0]);

  v23 = a2 + *(*a2 + 120);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v24 = *(v23 + 8);
    v25 = swift_getObjectType();
    v26 = sub_1C1A6D5DC();
    (*(*(v26 - 8) + 56))(v6, 1, 1, v26);
    (*(v24 + 40))(v6, v25, v24);
    swift_unknownObjectRelease();
    sub_1C1991140(v6, &qword_1EBF038A8, &unk_1C1A73990);
  }

  return 1;
}

char *sub_1C19AE89C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *v5;
  *&v5[*(*v5 + 120) + 8] = 0;
  v11 = swift_unknownObjectWeakInit();
  *(v5 + 2) = a1;
  *(v5 + 3) = a2;
  *(v11 + 8) = a5;
  swift_unknownObjectWeakAssign();
  (*(*(*(v10 + 80) - 8) + 32))(&v5[*(*v5 + 112)], a3);
  return v5;
}

char *sub_1C19AE978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for SLPCCMContentProcessor(0, *(v5 + 80), *(v5 + 88), a4);
  swift_allocObject();
  return sub_1C19AE89C(a1, a2, a3, a4, a5);
}

uint64_t sub_1C19AEA44()
{
  v1 = sub_1C1A6D5DC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C19A9E58(&qword_1EBF038A8, &unk_1C1A73990);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v10 - v6;
  sub_1C1A6FDAC();
  sub_1C19AF408(&qword_1EBF038B8, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1C1A6F35C();
  v8 = type metadata accessor for VisibilityTiming(0);
  sub_1C19AF080(v0 + *(v8 + 20), v7);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    sub_1C1A6FDCC();
  }

  else
  {
    (*(v2 + 32))(v4, v7, v1);
    sub_1C1A6FDCC();
    sub_1C1A6F35C();
    (*(v2 + 8))(v4, v1);
  }

  return sub_1C1A6FDDC();
}

uint64_t sub_1C19AEC44(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C1A6D5DC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C19A9E58(&qword_1EBF038A8, &unk_1C1A73990);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v12 - v9;
  sub_1C19AF408(&qword_1EBF038B8, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1C1A6F35C();
  sub_1C19AF080(v2 + *(a2 + 20), v10);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    return sub_1C1A6FDCC();
  }

  (*(v5 + 32))(v7, v10, v4);
  sub_1C1A6FDCC();
  sub_1C1A6F35C();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1C19AEE30(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C1A6D5DC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C19A9E58(&qword_1EBF038A8, &unk_1C1A73990);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v12 - v9;
  sub_1C1A6FDAC();
  sub_1C19AF408(&qword_1EBF038B8, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1C1A6F35C();
  sub_1C19AF080(v2 + *(a2 + 20), v10);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    sub_1C1A6FDCC();
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    sub_1C1A6FDCC();
    sub_1C1A6F35C();
    (*(v5 + 8))(v7, v4);
  }

  return sub_1C1A6FDDC();
}

uint64_t sub_1C19AF080(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C19A9E58(&qword_1EBF038A8, &unk_1C1A73990);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

BOOL sub_1C19AF0F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C1A6D5DC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C19A9E58(&qword_1EBF038A8, &unk_1C1A73990);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - v9;
  v11 = sub_1C19A9E58(&qword_1EBF038C0, &unk_1C1A73A20);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v20 - v12;
  if ((sub_1C1A6D58C() & 1) == 0)
  {
    return 0;
  }

  v14 = *(type metadata accessor for VisibilityTiming(0) + 20);
  v15 = *(v11 + 48);
  sub_1C19AF080(a1 + v14, v13);
  sub_1C19AF080(a2 + v14, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_1C1991140(v13, &qword_1EBF038A8, &unk_1C1A73990);
      return 1;
    }

    goto LABEL_7;
  }

  sub_1C19AF080(v13, v10);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_7:
    sub_1C1991140(v13, &qword_1EBF038C0, &unk_1C1A73A20);
    return 0;
  }

  (*(v5 + 32))(v7, &v13[v15], v4);
  sub_1C19AF408(&qword_1EBF038C8, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
  v18 = sub_1C1A6F38C();
  v19 = *(v5 + 8);
  v19(v7, v4);
  v19(v10, v4);
  sub_1C1991140(v13, &qword_1EBF038A8, &unk_1C1A73990);
  return (v18 & 1) != 0;
}

uint64_t sub_1C19AF408(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C19AF450(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_1C1A6F98C();
    v5 = v4;
    v6 = sub_1C1A6FA2C();
    v8 = v7;
    v9 = MEMORY[0x1C6905470](v3, v5, v6, v7);
    sub_1C19B07E4(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_1C19B07E4(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v3 = sub_1C1A6F95C();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_1C19CA078(v3, v5, v2 != 0, a1);
  v12 = v11;
  sub_1C19B07E4(v3, v5, v2 != 0);
  return v12;
}

void sub_1C19AF56C()
{
  v0 = sub_1C1A6F39C();
  v1 = objc_opt_self();
  v2 = [v1 fontWithName:v0 size:13.0];

  if (!v2)
  {
    v2 = [v1 systemFontOfSize_];
  }

  qword_1EBF07660 = v2;
}

double sub_1C19AF60C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a4 == 1)
  {
    v7 = &unk_1C1A73AB8;
    v8 = &unk_1C1A73AA0;
  }

  else
  {
    v5 = 0.0;
    v6 = 0.0;
    if (a4 != 2)
    {
      goto LABEL_6;
    }

    v7 = &unk_1C1A73AE8;
    v8 = &unk_1C1A73AD0;
  }

  v5 = v8[a3];
  v6 = v7[a3];
LABEL_6:
  v9 = *(v4 + 144);
  (v9)(a1, a2);
  if (qword_1EBF03590 != -1)
  {
    v30 = v10;
    swift_once();
    v10 = v30;
  }

  v11 = v5 - (v10 + v10);
  v12 = qword_1EBF07660;
  sub_1C19A9E58(&qword_1EBF03910, &unk_1C1A78290);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1A73A30;
  v14 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  *(inited + 64) = sub_1C198FB8C(0, &qword_1EDE626C0, 0x1E69DB878);
  *(inited + 40) = v12;
  v15 = v12;
  v16 = v14;
  sub_1C19B6B90(inited);
  swift_setDeallocating();
  sub_1C1991140(inited + 32, &qword_1EBF03918, &unk_1C1A73A90);
  v17 = sub_1C1A6F39C();
  type metadata accessor for Key(0);
  sub_1C19B0724();
  v18 = sub_1C1A6F2FC();

  [v17 boundingRectWithSize:1 options:v18 attributes:0 context:{v11, 1.79769313e308}];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  v31.origin.x = v20;
  v31.origin.y = v22;
  v31.size.width = v24;
  v31.size.height = v26;
  v27 = ceil(CGRectGetHeight(v31));
  v28 = v9();
  return v28 + v27 + v6 + v28;
}

id sub_1C19AF868()
{
  v1 = OBJC_IVAR____TtC17PromotedContentUI26CarouselCollectionViewCell____lazy_storage___assetImageView;
  v2 = *(v0 + OBJC_IVAR____TtC17PromotedContentUI26CarouselCollectionViewCell____lazy_storage___assetImageView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC17PromotedContentUI26CarouselCollectionViewCell____lazy_storage___assetImageView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
    v5 = objc_opt_self();
    v6 = v4;
    v7 = [v5 systemGray6Color];
    [v6 setBackgroundColor_];

    [v6 setClipsToBounds_];
    [v6 setContentMode_];
    [v6 setAccessibilityIgnoresInvertColors_];
    [v6 setTranslatesAutoresizingMaskIntoConstraints_];

    v8 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

id sub_1C19AF98C()
{
  v1 = OBJC_IVAR____TtC17PromotedContentUI26CarouselCollectionViewCell____lazy_storage___captionLabel;
  v2 = *(v0 + OBJC_IVAR____TtC17PromotedContentUI26CarouselCollectionViewCell____lazy_storage___captionLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC17PromotedContentUI26CarouselCollectionViewCell____lazy_storage___captionLabel);
  }

  else
  {
    v4 = sub_1C19B0614();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1C19AF9EC()
{
  v1 = OBJC_IVAR____TtC17PromotedContentUI26CarouselCollectionViewCell____lazy_storage___blurImageView;
  v2 = *(v0 + OBJC_IVAR____TtC17PromotedContentUI26CarouselCollectionViewCell____lazy_storage___blurImageView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC17PromotedContentUI26CarouselCollectionViewCell____lazy_storage___blurImageView);
  }

  else
  {
    type metadata accessor for MediumCarouselCollectionViewCell();
    if (swift_dynamicCastClass())
    {
      v4 = 0.5625;
    }

    else
    {
      v4 = 1.0;
    }

    v5 = objc_allocWithZone(type metadata accessor for BlurImageView());
    v6 = v0;
    v7 = sub_1C1A1D660(19, 2, v4);
    [v7 setTranslatesAutoresizingMaskIntoConstraints_];
    v8 = *(v0 + v1);
    *(v6 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

id sub_1C19AFABC(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + *a1);
  if (v3)
  {
    v4 = *(v1 + *a1);
  }

  else
  {
    v5 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
    [v5 setTranslatesAutoresizingMaskIntoConstraints_];
    v6 = *(v1 + v2);
    *(v1 + v2) = v5;
    v4 = v5;

    v3 = 0;
  }

  v7 = v3;
  return v4;
}

id sub_1C19AFB40(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC17PromotedContentUI26CarouselCollectionViewCell_touchPoint];
  *v9 = 0;
  *(v9 + 1) = 0;
  *&v4[OBJC_IVAR____TtC17PromotedContentUI26CarouselCollectionViewCell____lazy_storage___assetImageView] = 0;
  *&v4[OBJC_IVAR____TtC17PromotedContentUI26CarouselCollectionViewCell____lazy_storage___captionView] = 0;
  *&v4[OBJC_IVAR____TtC17PromotedContentUI26CarouselCollectionViewCell____lazy_storage___captionLabel] = 0;
  *&v4[OBJC_IVAR____TtC17PromotedContentUI26CarouselCollectionViewCell____lazy_storage___blurImageView] = 0;
  *&v4[OBJC_IVAR____TtC17PromotedContentUI26CarouselCollectionViewCell____lazy_storage___filterView] = 0;
  *&v4[OBJC_IVAR____TtC17PromotedContentUI26CarouselCollectionViewCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v19.receiver = v4;
  v19.super_class = type metadata accessor for CarouselCollectionViewCell();
  v10 = objc_msgSendSuper2(&v19, sel_initWithFrame_, a1, a2, a3, a4);
  v11 = [v10 layer];
  [v11 setOpaque_];

  v12 = [v10 layer];
  [v12 setAllowsGroupOpacity_];

  v13 = [v10 contentView];
  v14 = [v13 layer];

  [v14 setCornerRadius_];
  v15 = [v10 contentView];
  v16 = [v15 layer];

  [v16 setCornerCurve_];
  v17 = [v10 contentView];
  [v17 setClipsToBounds_];

  [v10 setIsAccessibilityElement_];
  [v10 setAccessibilityTraits_];

  return v10;
}

id sub_1C19AFDE4(uint64_t a1)
{
  v2 = v1;
  v13.receiver = v1;
  v13.super_class = type metadata accessor for CarouselCollectionViewCell();
  objc_msgSendSuper2(&v13, sel_prepareForReuse);
  [v1 setAccessibilityLabel_];
  v3 = sub_1C19AF868();
  [v3 setImage_];

  v4 = sub_1C19AF9EC();
  v5 = OBJC_IVAR____TtC17PromotedContentUI13BlurImageView_image;
  v6 = *&v4[OBJC_IVAR____TtC17PromotedContentUI13BlurImageView_image];
  *&v4[OBJC_IVAR____TtC17PromotedContentUI13BlurImageView_image] = 0;

  v7 = sub_1C1A1D500();
  v8 = *&v4[v5];
  [v7 setImage_];

  v9 = sub_1C19AF98C();
  [v9 setText_];

  v10 = &v2[OBJC_IVAR____TtC17PromotedContentUI26CarouselCollectionViewCell_touchPoint];
  *v10 = 0;
  *(v10 + 1) = 0;
  *&v2[OBJC_IVAR____TtC17PromotedContentUI26CarouselCollectionViewCell_delegate + 8] = 0;
  swift_unknownObjectWeakAssign();
  v11 = sub_1C19AFAB0();
  [v11 setBackgroundColor_];

  return [*&v2[OBJC_IVAR____TtC17PromotedContentUI26CarouselCollectionViewCell____lazy_storage___filterView] setHidden_];
}

void sub_1C19AFF84(uint64_t a1, uint64_t a2)
{
  sub_1C198FB8C(0, &qword_1EDE60C78, 0x1E69DD190);
  sub_1C19B077C();
  v5 = sub_1C1A6F5EC();
  v18.receiver = v2;
  v18.super_class = type metadata accessor for CarouselCollectionViewCell();
  objc_msgSendSuper2(&v18, sel_touchesBegan_withEvent_, v5, a2);

  v6 = sub_1C19AF450(a1);
  if (v6)
  {
    v7 = v6;
    [v6 locationInView_];
    v9 = v8;
    v11 = v10;
    v12 = [v2 superview];
    [v2 convertPoint:v12 toView:{v9, v11}];
    v14 = v13;
    v16 = v15;

    v17 = &v2[OBJC_IVAR____TtC17PromotedContentUI26CarouselCollectionViewCell_touchPoint];
    *v17 = v14;
    *(v17 + 1) = v16;
  }
}

void sub_1C19B013C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_1C19A9E58(&qword_1EBF03908, &unk_1C1A73A80);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v30 - v8;
  v10 = sub_1C1A6DD8C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR____TtC17PromotedContentUI26CarouselCollectionViewCell_delegate + 8] = a3;
  swift_unknownObjectWeakAssign();
  v14 = sub_1C1A6F39C();
  [v4 setAccessibilityLabel_];

  v15 = sub_1C19AF98C();
  v16 = type metadata accessor for CarouselElement(0);
  if (*(a1 + *(v16 + 32) + 8))
  {
    v17 = sub_1C1A6F39C();
  }

  else
  {
    v17 = 0;
  }

  [v15 setText_];

  sub_1C19B05A4(a1 + *(v16 + 40), v9);
  v18 = sub_1C1A6DDAC();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v9, 1, v18) == 1)
  {
    sub_1C1991140(v9, &qword_1EBF03908, &unk_1C1A73A80);
LABEL_9:
    v28 = sub_1C19AFAB0();
    [v28 setHidden_];
    goto LABEL_10;
  }

  v20 = sub_1C1A6DD9C();
  (*(v19 + 8))(v9, v18);
  if (!*(v20 + 16))
  {

    goto LABEL_9;
  }

  (*(v11 + 16))(v13, v20 + ((*(v11 + 80) + 32) & ~*(v11 + 80)), v10);

  sub_1C1A6DD4C();
  v22 = (v21 / 255.0);
  sub_1C1A6DD7C();
  v24 = (v23 / 255.0);
  sub_1C1A6DD5C();
  v26 = (v25 / 255.0);
  sub_1C1A6DD6C();
  v28 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:v22 green:v24 blue:v26 alpha:(v27 / 255.0)];
  (*(v11 + 8))(v13, v10);
  v29 = sub_1C19AFAB0();
  [v29 setBackgroundColor_];

  [*&v4[OBJC_IVAR____TtC17PromotedContentUI26CarouselCollectionViewCell____lazy_storage___filterView] setHidden_];
LABEL_10:
}

id sub_1C19B04C0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CarouselCollectionViewCell();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1C19B05A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C19A9E58(&qword_1EBF03908, &unk_1C1A73A80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1C19B0614()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v1 = [objc_opt_self() whiteColor];
  [v0 setTextColor_];

  if (qword_1EBF03590 != -1)
  {
    swift_once();
  }

  [v0 setFont_];
  [v0 setTextAlignment_];
  [v0 setNumberOfLines_];
  [v0 setAdjustsFontForContentSizeCategory_];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  return v0;
}

unint64_t sub_1C19B0724()
{
  result = qword_1EDE626E0;
  if (!qword_1EDE626E0)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE626E0);
  }

  return result;
}

unint64_t sub_1C19B077C()
{
  result = qword_1EDE60C70;
  if (!qword_1EDE60C70)
  {
    sub_1C198FB8C(255, &qword_1EDE60C78, 0x1E69DD190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE60C70);
  }

  return result;
}

double sub_1C19B07E4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

void sub_1C19B07F0()
{
  v1 = (v0 + OBJC_IVAR____TtC17PromotedContentUI26CarouselCollectionViewCell_touchPoint);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC17PromotedContentUI26CarouselCollectionViewCell____lazy_storage___assetImageView) = 0;
  *(v0 + OBJC_IVAR____TtC17PromotedContentUI26CarouselCollectionViewCell____lazy_storage___captionView) = 0;
  *(v0 + OBJC_IVAR____TtC17PromotedContentUI26CarouselCollectionViewCell____lazy_storage___captionLabel) = 0;
  *(v0 + OBJC_IVAR____TtC17PromotedContentUI26CarouselCollectionViewCell____lazy_storage___blurImageView) = 0;
  *(v0 + OBJC_IVAR____TtC17PromotedContentUI26CarouselCollectionViewCell____lazy_storage___filterView) = 0;
  *(v0 + OBJC_IVAR____TtC17PromotedContentUI26CarouselCollectionViewCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_1C1A6FB8C();
  __break(1u);
}

id sub_1C19B08E0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CarouselBackgroundCollectionController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1C19B0BAC(void *a1)
{
  if (qword_1EDE612D8 != -1)
  {
    swift_once();
  }

  v2 = sub_1C1A6F39C();
  v3 = sub_1C1A6D6BC();
  v4 = [a1 dequeueReusableCellWithReuseIdentifier:v2 forIndexPath:v3];

  type metadata accessor for ImageCollectionViewCell();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = v5;
    [*(v5 + OBJC_IVAR____TtC17PromotedContentUI23ImageCollectionViewCell_imageView) setContentMode_];
    return v6;
  }

  else
  {

    v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());

    return [v8 init];
  }
}

id MetricsView.addDiagnostic(forEvent:dump:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C1A6E6EC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = [objc_opt_self() isAppleInternalInstall];
  if (result)
  {
    [*(v3 + OBJC_IVAR___APPCMetricsView_promotedContent) metricsHelper];
    sub_1C1A6E3AC();
    if (swift_dynamicCastClass())
    {
      v11 = sub_1C1A6E39C();
      if (v11)
      {
        v12 = v11;
        sub_1C1A6E6DC();
        if (a3)
        {
          v13 = sub_1C1A6E6CC();
          v15 = v14;
          v17 = 0;
          v18 = 0xE000000000000000;
          sub_1C1A6FACC();

          v17 = 0x747369480A0D0A0DLL;
          v18 = 0xEE000A0D3A79726FLL;
          MEMORY[0x1C6904F50](v13, v15);

          MEMORY[0x1C6904F50](168626701, 0xE400000000000000);
          MEMORY[0x1C6904F50](a2, a3);
          v16 = v18;
          *v9 = v17;
          v9[1] = v16;
          (*(v7 + 104))(v9, *MEMORY[0x1E69C60E0], v6);
          sub_1C1A6E6DC();

          swift_unknownObjectRelease();
          return (*(v7 + 8))(v9, v6);
        }
      }
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

double sub_1C19B0F2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v7 = v6;
  v49 = a1;
  v50 = a2;
  v10 = sub_1C19A9E58(&qword_1EBF03A58, &qword_1C1A73B70);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v49 - v14;
  v16 = sub_1C1A6F88C();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  if (a6 == 1)
  {
    v21 = &unk_1C1A73BA0;
    v22 = &unk_1C1A73B88;
  }

  else
  {
    v19 = 0.0;
    v20 = 0.0;
    if (a6 != 2)
    {
      goto LABEL_6;
    }

    v21 = &unk_1C1A73BD0;
    v22 = &unk_1C1A73BB8;
  }

  v19 = v22[a5];
  v20 = v21[a5];
LABEL_6:
  v23 = (*(v7 + 144))(v18);
  sub_1C198FB8C(0, &qword_1EDE60C68, 0x1E69DC738);
  static UIButton.Configuration.mediumBorderless()();
  v24 = sub_1C1A6F89C();
  [v24 setTranslatesAutoresizingMaskIntoConstraints_];
  sub_1C1A6F8AC();
  if ((*(v17 + 48))(v15, 1, v16))
  {
    sub_1C19B1A00(v15, v12);
    sub_1C1A6F8BC();
    sub_1C1991140(v15, &qword_1EBF03A58, &qword_1C1A73B70);
  }

  else
  {

    sub_1C1A6F87C();
    sub_1C1A6F8BC();
  }

  v25 = [v24 sizeThatFits_];
  v27 = v26;
  (*(v7 + 344))(v25);
  if (qword_1EBF03590 != -1)
  {
    v48 = v28;
    swift_once();
    v28 = v48;
  }

  v29 = v19 - (v23 + v23 + v27 + v28);
  if (v29 < 0.0)
  {
    v30 = 0.0;
  }

  else
  {
    v30 = v29;
  }

  v31 = qword_1EBF07660;
  sub_1C19A9E58(&qword_1EBF03910, &unk_1C1A78290);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1A73A30;
  v33 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  *(inited + 64) = sub_1C198FB8C(0, &qword_1EDE626C0, 0x1E69DB878);
  *(inited + 40) = v31;
  v34 = v31;
  v35 = v33;
  sub_1C19B6B90(inited);
  swift_setDeallocating();
  sub_1C1991140(inited + 32, &qword_1EBF03918, &unk_1C1A73A90);
  v36 = sub_1C1A6F39C();
  type metadata accessor for Key(0);
  sub_1C19B0724();
  v37 = sub_1C1A6F2FC();

  [v36 boundingRectWithSize:1 options:v37 attributes:0 context:{v30, 1.79769313e308}];
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;

  v51.origin.x = v39;
  v51.origin.y = v41;
  v51.size.width = v43;
  v51.size.height = v45;
  Height = CGRectGetHeight(v51);

  return v23 + v20 + v23 + fmax(ceil(Height), 28.0);
}

id sub_1C19B139C()
{
  v1 = v0;
  v2 = sub_1C1A6F88C();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = OBJC_IVAR____TtC17PromotedContentUI29CTACarouselCollectionViewCell____lazy_storage___button;
  v4 = *(v0 + OBJC_IVAR____TtC17PromotedContentUI29CTACarouselCollectionViewCell____lazy_storage___button);
  if (v4)
  {
    v5 = *(v0 + OBJC_IVAR____TtC17PromotedContentUI29CTACarouselCollectionViewCell____lazy_storage___button);
  }

  else
  {
    sub_1C198FB8C(0, &qword_1EDE60C68, 0x1E69DC738);
    static UIButton.Configuration.mediumBorderless()();
    v6 = sub_1C1A6F89C();
    [v6 setTranslatesAutoresizingMaskIntoConstraints_];
    [v6 addTarget:v1 action:sel_didTapCTAButtonWithSender_ forControlEvents:64];
    v7 = *(v1 + v3);
    *(v1 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

void sub_1C19B14AC()
{
  v1 = sub_1C19A9E58(&qword_1EBF03A60, &unk_1C1A73B78);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v14 - v2;
  v4 = sub_1C19A9E58(&qword_1EBF03A58, &qword_1C1A73B70);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for CTACarouselCollectionViewCell();
  v14.receiver = v0;
  v14.super_class = v10;
  objc_msgSendSuper2(&v14, sel_prepareForReuse);
  v11 = sub_1C19B139C();
  sub_1C1A6F8AC();
  v12 = sub_1C1A6F88C();
  if ((*(*(v12 - 8) + 48))(v9, 1, v12))
  {
    sub_1C19B1A00(v9, v6);
    sub_1C1A6F8BC();

    sub_1C1991140(v9, &qword_1EBF03A58, &qword_1C1A73B70);
  }

  else
  {
    v13 = sub_1C1A6D2FC();
    (*(*(v13 - 8) + 56))(v3, 1, 1, v13);
    sub_1C1A6F81C();
    sub_1C1A6F8BC();
  }
}

void sub_1C19B1788(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C19A9E58(&qword_1EBF03A58, &qword_1C1A73B70);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v14 - v10;
  sub_1C19B013C(a1, a2, a3);
  v12 = sub_1C19B139C();
  sub_1C1A6F8AC();
  v13 = sub_1C1A6F88C();
  if ((*(*(v13 - 8) + 48))(v11, 1, v13))
  {
    sub_1C19B1A00(v11, v8);
    sub_1C1A6F8BC();

    sub_1C1991140(v11, &qword_1EBF03A58, &qword_1C1A73B70);
  }

  else
  {
    type metadata accessor for CarouselElement(0);

    sub_1C1A6F87C();
    sub_1C1A6F8BC();
  }
}

id sub_1C19B1998(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CTACarouselCollectionViewCell();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1C19B1A00(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C19A9E58(&qword_1EBF03A58, &qword_1C1A73B70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_1C19B1A70(uint64_t a1)
{
  v1 = sub_1C1A6F3CC();
  v3 = v2;
  if (v1 == sub_1C1A6F3CC() && v3 == v4)
  {

    return 10.0;
  }

  v6 = sub_1C1A6FCEC();

  result = 10.0;
  if ((v6 & 1) == 0)
  {
    v8 = sub_1C1A6F3CC();
    v10 = v9;
    if (v8 == sub_1C1A6F3CC() && v10 == v11)
    {
      goto LABEL_13;
    }

    v13 = sub_1C1A6FCEC();

    result = 12.0;
    if ((v13 & 1) == 0)
    {
      v14 = sub_1C1A6F3CC();
      v16 = v15;
      if (v14 == sub_1C1A6F3CC() && v16 == v17)
      {
LABEL_13:

        return 12.0;
      }

      v18 = sub_1C1A6FCEC();

      result = 12.0;
      if ((v18 & 1) == 0)
      {
        v19 = sub_1C1A6F3CC();
        v21 = v20;
        if (v19 == sub_1C1A6F3CC() && v21 == v22)
        {

          return 13.0;
        }

        v23 = sub_1C1A6FCEC();

        result = 13.0;
        if ((v23 & 1) == 0)
        {
          v24 = sub_1C1A6F3CC();
          v26 = v25;
          if (v24 == sub_1C1A6F3CC() && v26 == v27)
          {

            return 14.0;
          }

          v28 = sub_1C1A6FCEC();

          result = 14.0;
          if ((v28 & 1) == 0)
          {
            v29 = sub_1C1A6F3CC();
            v31 = v30;
            if (v29 == sub_1C1A6F3CC() && v31 == v32)
            {

              return 16.0;
            }

            v33 = sub_1C1A6FCEC();

            result = 16.0;
            if ((v33 & 1) == 0)
            {
              v34 = sub_1C1A6F3CC();
              v36 = v35;
              if (v34 == sub_1C1A6F3CC() && v36 == v37)
              {

                return 17.0;
              }

              v38 = sub_1C1A6FCEC();

              result = 17.0;
              if ((v38 & 1) == 0)
              {
                v39 = sub_1C1A6F3CC();
                v41 = v40;
                if (v39 == sub_1C1A6F3CC() && v41 == v42)
                {

                  return 20.0;
                }

                v43 = sub_1C1A6FCEC();

                result = 20.0;
                if ((v43 & 1) == 0)
                {
                  v44 = sub_1C1A6F3CC();
                  v46 = v45;
                  if (v44 == sub_1C1A6F3CC() && v46 == v47)
                  {
                    goto LABEL_39;
                  }

                  v48 = sub_1C1A6FCEC();

                  if (v48)
                  {
                    return 23.0;
                  }

                  v49 = sub_1C1A6F3CC();
                  v51 = v50;
                  if (v49 != sub_1C1A6F3CC() || v51 != v52)
                  {
                    v53 = sub_1C1A6FCEC();

                    if (v53)
                    {
                      return 23.0;
                    }

                    v54 = sub_1C1A6F3CC();
                    v56 = v55;
                    if (v54 == sub_1C1A6F3CC() && v56 == v57)
                    {
                      goto LABEL_39;
                    }

                    v58 = sub_1C1A6FCEC();

                    if (v58)
                    {
                      return 23.0;
                    }

                    v59 = sub_1C1A6F3CC();
                    v61 = v60;
                    if (v59 != sub_1C1A6F3CC() || v61 != v62)
                    {
                      v63 = sub_1C1A6FCEC();

                      result = 13.0;
                      if (v63)
                      {
                        return 23.0;
                      }

                      return result;
                    }
                  }

LABEL_39:

                  return 23.0;
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_1C19B2044()
{
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v2 = v1;
  v3 = [v1 safeAreaLayoutGuide];

  [v3 layoutFrame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = &v0[OBJC_IVAR____TtC17PromotedContentUI20ExpandViewController_maximumExpandedSize];
  if (v0[OBJC_IVAR____TtC17PromotedContentUI20ExpandViewController_maximumExpandedSize + 16])
  {
    return;
  }

  v13 = v12[1];
  if (*v12 == 0.0 || (v25.origin.x = v5, v25.origin.y = v7, v25.size.width = v9, v25.size.height = v11, v14 = *v12, CGRectGetWidth(v25) < v14))
  {
    v26.origin.x = v5;
    v26.origin.y = v7;
    v26.size.width = v9;
    v26.size.height = v11;
    CGRectGetWidth(v26);
  }

  if (v13 == 0.0 || (v27.origin.x = v5, v27.origin.y = v7, v27.size.width = v9, v27.size.height = v11, CGRectGetHeight(v27) < v13))
  {
    v28.origin.x = v5;
    v28.origin.y = v7;
    v28.size.width = v9;
    v28.size.height = v11;
    CGRectGetHeight(v28);
  }

  v29.origin.x = v5;
  v29.origin.y = v7;
  v29.size.width = v9;
  v29.size.height = v11;
  CGRectGetWidth(v29);
  v15 = [v0 view];
  if (!v15)
  {
    goto LABEL_14;
  }

  v16 = v15;
  [v15 safeAreaInsets];

  v30.origin.x = v5;
  v30.origin.y = v7;
  v30.size.width = v9;
  v30.size.height = v11;
  CGRectGetHeight(v30);
  v17 = [v0 view];
  if (!v17)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v18 = v17;
  [v17 safeAreaInsets];

  v19 = sub_1C1A6F67C();
  sub_1C199E4CC();
  v20 = sub_1C1A6F8EC();
  sub_1C19A9E58(&unk_1EBF03FD0, &unk_1C1A73CC0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1C1A73A30;
  v22 = sub_1C1A6F76C();
  v24 = v23;
  *(v21 + 56) = MEMORY[0x1E69E6158];
  *(v21 + 64) = sub_1C199E518();
  *(v21 + 32) = v22;
  *(v21 + 40) = v24;
  sub_1C1A6F18C(v19, &dword_1C198D000, v20, "Expanded webView frame is %@", 28, 2, v21);
}

double sub_1C19B2338()
{
  v1 = (v0 + OBJC_IVAR____TtC17PromotedContentUI20ExpandViewController____lazy_storage___closeButtonPadding);
  if ((*(v0 + OBJC_IVAR____TtC17PromotedContentUI20ExpandViewController____lazy_storage___closeButtonPadding + 8) & 1) == 0)
  {
    return *v1;
  }

  v2 = [objc_opt_self() currentDevice];
  v3 = [v2 userInterfaceIdiom];

  result = 16.0;
  if (v3 == 1)
  {
    result = 11.0;
  }

  *v1 = result;
  v1[8] = 0;
  return result;
}

void sub_1C19B23C8(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C19A9E58(&qword_1EBF038A8, &unk_1C1A73990);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v11[-v3];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = sub_1C1A6F64C();
    sub_1C199E4CC();
    v8 = sub_1C1A6F8EC();
    sub_1C1A6F18C(v7, &dword_1C198D000, v8, "Will handle UI did background notification received", 51, 2, MEMORY[0x1E69E7CC0]);

    sub_1C1A6D5CC();
    v9 = sub_1C1A6D5DC();
    (*(*(v9 - 8) + 56))(v4, 0, 1, v9);
    v10 = OBJC_IVAR____TtC17PromotedContentUI20ExpandViewController_backgroundedTime;
    swift_beginAccess();
    sub_1C19B40BC(v4, v6 + v10);
    swift_endAccess();
  }
}

void sub_1C19B2564(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1C19B25B8();
  }
}

void sub_1C19B25B8()
{
  v1 = v0;
  v2 = sub_1C19A9E58(&qword_1EBF038A8, &unk_1C1A73990);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v20 - v3;
  v5 = sub_1C1A6D5DC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20 - v10;
  v12 = sub_1C1A6F64C();
  sub_1C199E4CC();
  v13 = sub_1C1A6F8EC();
  sub_1C1A6F18C(v12, &dword_1C198D000, v13, "Will handle UI will enter foreground notification, check if post tap dismissal needed", 85, 2, MEMORY[0x1E69E7CC0]);

  sub_1C1A6D5CC();
  v14 = OBJC_IVAR____TtC17PromotedContentUI20ExpandViewController_backgroundedTime;
  swift_beginAccess();
  sub_1C19AF080(v1 + v14, v4);
  v15 = *(v6 + 48);
  if (v15(v4, 1, v5) == 1)
  {
    sub_1C1A6D5CC();
    if (v15(v4, 1, v5) != 1)
    {
      sub_1C1991140(v4, &qword_1EBF038A8, &unk_1C1A73990);
    }
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
  }

  sub_1C1A6D50C();
  v17 = v16;
  v18 = v16;
  v19 = *(v6 + 8);
  v19(v8, v5);
  v19(v11, v5);
  if ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v17 <= -9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v17 >= 9.22337204e18)
  {
LABEL_13:
    __break(1u);
    return;
  }

  if (v17 >= 301)
  {
    sub_1C19B35B0();
  }
}

id sub_1C19B28E8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *&v0[OBJC_IVAR____TtC17PromotedContentUI20ExpandViewController_webView];
  sub_1C1A65B5C();

  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

uint64_t type metadata accessor for ExpandViewController(uint64_t a1)
{
  result = qword_1EBF03AC8;
  if (!qword_1EBF03AC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C19B2B18()
{
  v9.receiver = v0;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, sel_viewDidLoad);
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_6;
  }

  v2 = v1;
  v3 = [objc_opt_self() systemBackgroundColor];
  [v2 setBackgroundColor_];

  v4 = [v0 view];
  if (!v4)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v5 = v4;
  v6 = OBJC_IVAR____TtC17PromotedContentUI20ExpandViewController_closeButton;
  [v4 addSubview_];

  sub_1C19B2C38();
  v7 = [v0 view];
  if (v7)
  {
    v8 = v7;
    [v7 bringSubviewToFront_];

    return;
  }

LABEL_7:
  __break(1u);
}

id sub_1C19B2C38()
{
  v1 = v0;
  v2 = sub_1C1A6D48C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C1A6D1DC();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, &v1[OBJC_IVAR____TtC17PromotedContentUI20ExpandViewController_expandedDestinationURL], v2, v8);
  sub_1C1A6D1BC();
  v11 = OBJC_IVAR____TtC17PromotedContentUI20ExpandViewController_webView;
  v12 = *&v1[OBJC_IVAR____TtC17PromotedContentUI20ExpandViewController_webView];
  v13 = sub_1C1A6D19C();

  result = [v1 view];
  if (result)
  {
    v15 = result;
    [result addSubview_];

    return (*(v7 + 8))(v10, v6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1C19B2E7C(uint64_t a1)
{
  v2 = *(*(v1 + OBJC_IVAR____TtC17PromotedContentUI20ExpandViewController_webView) + OBJC_IVAR____TtC17PromotedContentUI22PromotedContentWebView_webProcessProxy);
  if (v2)
  {
    v3 = a1;
    swift_unknownObjectRetain();
    v4 = sub_1C1A6F67C();
    sub_1C199E4CC();
    v5 = sub_1C1A6F8EC();
    sub_1C19A9E58(&unk_1EBF03FD0, &unk_1C1A73CC0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1C1A73A30;
    v7 = sub_1C199E518();
    v8 = v3 & 1;
    v9 = 0x6C62697369766E69;
    if (v8)
    {
      v9 = 0x656C6269736976;
    }

    v10 = 0xE900000000000065;
    *(v6 + 56) = MEMORY[0x1E69E6158];
    *(v6 + 64) = v7;
    if (v8)
    {
      v10 = 0xE700000000000000;
    }

    *(v6 + 32) = v9;
    *(v6 + 40) = v10;
    sub_1C1A6F18C(v4, &dword_1C198D000, v5, "PC: Update MRAID visibility to %@", 33, 2, v6);

    [v2 creativeVisibilityDidChange_];

    swift_unknownObjectRelease();
  }

  else
  {
    v11 = sub_1C1A6F66C();
    sub_1C199E4CC();
    v12 = sub_1C1A6F8EC();
    sub_1C1A6F18C(v11, &dword_1C198D000, v12, "PC: Try to update MRAID visibility but no proxy is found or the WebView is missing.", 83, 2, MEMORY[0x1E69E7CC0]);
  }
}

void sub_1C19B30B4(char a1)
{
  v9.receiver = v1;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, sel_viewWillDisappear_, a1 & 1);
  v3 = *&v1[OBJC_IVAR____TtC17PromotedContentUI20ExpandViewController_notificationObserver];
  if (v3)
  {
    v4 = objc_opt_self();
    swift_unknownObjectRetain();
    v5 = [v4 defaultCenter];
    [v5 removeObserver_];
    swift_unknownObjectRelease();
  }

  v6 = *&v1[OBJC_IVAR____TtC17PromotedContentUI20ExpandViewController_notificationOpenObserver];
  if (v6)
  {
    v7 = objc_opt_self();
    swift_unknownObjectRetain();
    v8 = [v7 defaultCenter];
    [v8 removeObserver_];
    swift_unknownObjectRelease();
  }
}

void sub_1C19B3224(void *a1, uint64_t a2, uint64_t a3, const char **a4, uint64_t a5)
{
  v10.receiver = a1;
  v10.super_class = swift_getObjectType();
  v8 = *a4;
  v9 = v10.receiver;
  objc_msgSendSuper2(&v10, v8, a3);
  sub_1C19B2E7C(a5);
}

void sub_1C19B3294()
{
  v1 = *(v0 + OBJC_IVAR____TtC17PromotedContentUI20ExpandViewController_webView);
  sub_1C19B2044();
  [v1 setFrame_];

  v2 = OBJC_IVAR____TtC17PromotedContentUI20ExpandViewController_closeButton;
  v3 = *(v0 + OBJC_IVAR____TtC17PromotedContentUI20ExpandViewController_closeButton);
  sub_1C19B2044();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [*(v0 + v2) imageForState_];
  if (v12)
  {
    v13 = v12;
    [v12 size];
    v15 = v14;
    v17 = v16;
  }

  else
  {
    v17 = 0.0;
    v15 = 0.0;
  }

  v18 = sub_1C19B2338();
  v19 = v15 + v18 + v18;
  v20 = v17 + *(v0 + OBJC_IVAR____TtC17PromotedContentUI20ExpandViewController____lazy_storage___closeButtonPadding) + *(v0 + OBJC_IVAR____TtC17PromotedContentUI20ExpandViewController____lazy_storage___closeButtonPadding);
  v24.origin.x = v5;
  v24.origin.y = v7;
  v24.size.width = v9;
  v24.size.height = v11;
  v21 = CGRectGetMaxX(v24) - v19;
  v25.origin.x = v5;
  v25.origin.y = v7;
  v25.size.width = v9;
  v25.size.height = v11;
  [v3 setFrame_];

  sub_1C19B33F0(v22);
}

void sub_1C19B33F0(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC17PromotedContentUI20ExpandViewController_webView);
  v3 = *&v2[OBJC_IVAR____TtC17PromotedContentUI22PromotedContentWebView_webProcessProxy];
  if (v3)
  {
    swift_unknownObjectRetain();
    [v2 frame];
    x = v12.origin.x;
    y = v12.origin.y;
    width = v12.size.width;
    height = v12.size.height;
    v8 = CGRectGetWidth(v12);
    v13.origin.x = x;
    v13.origin.y = y;
    v13.size.width = width;
    v13.size.height = height;
    [v3 setExpandedWidth:v8 andHeight:CGRectGetHeight(v13)];

    swift_unknownObjectRelease();
  }

  else
  {
    v9 = sub_1C1A6F66C();
    sub_1C199E4CC();
    v10 = sub_1C1A6F8EC();
    sub_1C1A6F18C(v9, &dword_1C198D000, v10, "PC: WebProcess proxy or webview is not found.", 45, 2, MEMORY[0x1E69E7CC0]);
  }
}

void sub_1C19B35B0()
{
  v1 = v0;
  v2 = sub_1C19A9E58(&qword_1EBF03AD8, &unk_1C1A74620);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v15 - v3;
  v5 = &v0[OBJC_IVAR____TtC17PromotedContentUI20ExpandViewController_actionDelegate];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 1);
    ObjectType = swift_getObjectType();
    v8 = *MEMORY[0x1E69C5F20];
    v9 = sub_1C1A6DDCC();
    v10 = *(v9 - 8);
    (*(v10 + 104))(v4, v8, v9);
    (*(v10 + 56))(v4, 0, 1, v9);
    (*(v6 + 8))(v4, ObjectType, v6);
    swift_unknownObjectRelease();
    sub_1C1991140(v4, &qword_1EBF03AD8, &unk_1C1A74620);
  }

  else
  {
    v11 = sub_1C1A6F66C();
    sub_1C199E4CC();
    v12 = sub_1C1A6F8EC();
    sub_1C1A6F18C(v11, &dword_1C198D000, v12, "Cannot find the action delegate! Forced to close itself.", 56, 2, MEMORY[0x1E69E7CC0]);

    v13 = [v1 presentingViewController];
    if (v13)
    {
      v16 = v13;
      [v13 dismissViewControllerAnimated:!UIAccessibilityIsReduceMotionEnabled() completion:0];
      v14 = v16;
    }
  }
}

void sub_1C19B3968(uint64_t a1)
{
  sub_1C1A6D48C();
  if (v1 <= 0x3F)
  {
    sub_1C199B708(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1C19B3A78(uint64_t a1)
{
  v2 = *(*(v1 + OBJC_IVAR____TtC17PromotedContentUI20ExpandViewController_webView) + OBJC_IVAR____TtC17PromotedContentUI22PromotedContentWebView_webProcessProxy);
  if (v2)
  {
    [swift_unknownObjectRetain() creativeStateDidChange_];
    sub_1C19B33F0([v2 creativeVisibilityDidChange_]);

    swift_unknownObjectRelease();
  }

  else
  {
    v3 = sub_1C1A6F66C();
    sub_1C199E4CC();
    v4 = sub_1C1A6F8EC();
    sub_1C1A6F18C(v3, &dword_1C198D000, v4, "PC : WebProcess proxy is not found.", 35, 2, MEMORY[0x1E69E7CC0]);
  }
}

void sub_1C19B3D30()
{
  v1 = sub_1C19A9E58(&qword_1EBF03AD8, &unk_1C1A74620);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v14 - v2;
  v4 = sub_1C1A6F67C();
  sub_1C199E4CC();
  v5 = sub_1C1A6F8EC();
  sub_1C1A6F18C(v4, &dword_1C198D000, v5, "PC: MRAID did call close.", 25, 2, MEMORY[0x1E69E7CC0]);

  v6 = v0 + OBJC_IVAR____TtC17PromotedContentUI20ExpandViewController_actionDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v6 + 8);
    ObjectType = swift_getObjectType();
    v9 = *MEMORY[0x1E69C5F20];
    v10 = sub_1C1A6DDCC();
    v11 = *(v10 - 8);
    (*(v11 + 104))(v3, v9, v10);
    (*(v11 + 56))(v3, 0, 1, v10);
    (*(v7 + 8))(v3, ObjectType, v7);
    swift_unknownObjectRelease();
    sub_1C1991140(v3, &qword_1EBF03AD8, &unk_1C1A74620);
  }

  else
  {
    v12 = sub_1C1A6F66C();
    v15 = sub_1C1A6F8EC();
    sub_1C1A6F18C(v12, &dword_1C198D000, v15, "Cannot find the action delegate! Unable to close the expand view controller.", 76, 2, MEMORY[0x1E69E7CC0]);
    v13 = v15;
  }
}

uint64_t sub_1C19B40BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C19A9E58(&qword_1EBF038A8, &unk_1C1A73990);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1C19B412C()
{
  v1 = v0 + OBJC_IVAR____TtC17PromotedContentUI20ExpandViewController_maximumExpandedSize;
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = 1;
  *(v0 + OBJC_IVAR____TtC17PromotedContentUI20ExpandViewController_navigationCoordinator) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC17PromotedContentUI20ExpandViewController_actionDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC17PromotedContentUI20ExpandViewController_notificationObserver) = 0;
  *(v0 + OBJC_IVAR____TtC17PromotedContentUI20ExpandViewController_notificationOpenObserver) = 0;
  v2 = OBJC_IVAR____TtC17PromotedContentUI20ExpandViewController_backgroundedTime;
  v3 = sub_1C1A6D5DC();
  (*(*(v3 - 8) + 56))(v0 + v2, 1, 1, v3);
  v4 = v0 + OBJC_IVAR____TtC17PromotedContentUI20ExpandViewController____lazy_storage___closeButtonPadding;
  *v4 = 0;
  *(v4 + 8) = 1;
  sub_1C1A6FB8C();
  __break(1u);
}

void sub_1C19B4254()
{
  v1 = v0 + OBJC_IVAR____TtC17PromotedContentUI20ExpandViewController_actionDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    v4 = *(v0 + OBJC_IVAR____TtC17PromotedContentUI20ExpandViewController_tapGestureRecognizer);
    v5 = *(v0 + OBJC_IVAR____TtC17PromotedContentUI20ExpandViewController_webView);
    v8 = v4;
    [v5 frame];
    (*(v2 + 16))(v8, ObjectType, v2);
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = sub_1C1A6F65C();
    sub_1C199E4CC();
    v7 = sub_1C1A6F8EC();
    sub_1C1A6F18C(v6, &dword_1C198D000, v7, "tap recognized", 14, 2, MEMORY[0x1E69E7CC0]);

    sub_1C19B35B0();
  }
}

void sub_1C19B43C4(uint64_t a1)
{
  v1 = sub_1C1A6F66C();
  sub_1C199E4CC();
  v2 = sub_1C1A6F8EC();
  sub_1C19A9E58(&unk_1EBF03FD0, &unk_1C1A73CC0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C1A73A30;
  *(v3 + 56) = MEMORY[0x1E69E6158];
  *(v3 + 64) = sub_1C199E518();
  *(v3 + 32) = 0xD00000000000003CLL;
  *(v3 + 40) = 0x80000001C1A7AAB0;
  sub_1C1A6F18C(v1, &dword_1C198D000, v2, "%@", 2, 2, v3);

  v4 = sub_1C1A6F39C();
  APSimulateCrash();
}

uint64_t sub_1C19B450C()
{
  result = sub_1C19B452C();
  qword_1EDE66568 = result;
  return result;
}

uint64_t sub_1C19B452C()
{
  v0 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1C1A49908(0xD000000000000020, 0x80000001C1A7AEA0, 128, isUniquelyReferenced_nonNull_native);
  v2 = swift_isUniquelyReferenced_nonNull_native();
  sub_1C1A49908(0x79614C7473726966, 0xEB0000000074756FLL, 1, v2);
  v3 = swift_isUniquelyReferenced_nonNull_native();
  sub_1C1A49908(0xD00000000000002ELL, 0x80000001C1A7AED0, 16, v3);
  v4 = swift_isUniquelyReferenced_nonNull_native();
  sub_1C1A49908(0xD000000000000014, 0x80000001C1A7AF00, 256, v4);
  v5 = swift_isUniquelyReferenced_nonNull_native();
  sub_1C1A49908(0x6961507473726966, 0xEA0000000000746ELL, 64, v5);
  v6 = swift_isUniquelyReferenced_nonNull_native();
  sub_1C1A49908(0xD00000000000002DLL, 0x80000001C1A7AF20, 32, v6);
  v7 = swift_isUniquelyReferenced_nonNull_native();
  sub_1C1A49908(0xD00000000000001DLL, 0x80000001C1A7AF50, 4, v7);
  v8 = swift_isUniquelyReferenced_nonNull_native();
  sub_1C1A49908(0xD00000000000001BLL, 0x80000001C1A7AF70, 2, v8);
  v9 = swift_isUniquelyReferenced_nonNull_native();
  sub_1C1A49908(0xD000000000000030, 0x80000001C1A7AF90, 8, v9);
  return v0;
}

uint64_t sub_1C19B4750(uint64_t a1)
{
  if (qword_1EDE62A20 != -1)
  {
LABEL_21:
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_1EDE66568;
  v3 = qword_1EDE66568 + 64;
  v4 = 1 << *(qword_1EDE66568 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(qword_1EDE66568 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (v6)
  {
LABEL_10:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = *(*(v2 + 48) + ((v8 << 9) | (8 * v11)));
    if ((v12 & ~a1) == 0)
    {
      swift_beginAccess();
      v13 = qword_1EDE66568;
      if (*(qword_1EDE66568 + 16) && (v14 = sub_1C19B61F4(v12), (v15 & 1) != 0))
      {
        v16 = (*(v13 + 56) + 16 * v14);
        v17 = v16[1];
        v27 = *v16;
        swift_endAccess();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1C19CADF4(0, *(v9 + 2) + 1, 1, v9);
        }

        v19 = *(v9 + 2);
        v18 = *(v9 + 3);
        v20 = v19 + 1;
        if (v19 >= v18 >> 1)
        {
          v22 = sub_1C19CADF4((v18 > 1), v19 + 1, 1, v9);
          v20 = v19 + 1;
          v9 = v22;
        }

        *(v9 + 2) = v20;
        v21 = &v9[16 * v19];
        *(v21 + 4) = v27;
        *(v21 + 5) = v17;
      }

      else
      {
        swift_endAccess();
      }
    }
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_21;
    }

    if (v10 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v10);
    ++v8;
    if (v6)
    {
      v8 = v10;
      goto LABEL_10;
    }
  }

  v28 = sub_1C1A6FCCC();
  MEMORY[0x1C6904F50](540949792, 0xE400000000000000);
  v23 = MEMORY[0x1C6904FE0](v9, MEMORY[0x1E69E6158]);
  v25 = v24;

  MEMORY[0x1C6904F50](v23, v25);

  return v28;
}

uint64_t sub_1C19B49C4()
{
  v1 = *v0;
  sub_1C1A6FDAC();
  MEMORY[0x1C6905870](v1);
  return sub_1C1A6FDDC();
}

uint64_t sub_1C19B4A38(uint64_t a1)
{
  v2 = *v1;
  sub_1C1A6FDAC();
  MEMORY[0x1C6905870](v2);
  return sub_1C1A6FDDC();
}

void sub_1C19B4A84(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_1C19AB3E4(a1);

  *a2 = v3;
}

void sub_1C19B4AC4(void *a1, uint64_t a2)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      sub_1C1A022A4(a1, a2);

      swift_unknownObjectRelease();
      return;
    }

    swift_unknownObjectRelease();
  }

  v4 = sub_1C1A6F66C();
  sub_1C199E4CC();
  v5 = sub_1C1A6F8EC();
  sub_1C19A9E58(&unk_1EBF03FD0, &unk_1C1A73CC0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1C1A73A30;
  if (a1)
  {
    v7 = v6;
    v8 = [a1 description];
    v9 = sub_1C1A6F3CC();
    v11 = v10;

    v7[7] = MEMORY[0x1E69E6158];
    v7[8] = sub_1C199E518();
    v7[4] = v9;
    v7[5] = v11;
    sub_1C1A6F18C(v4, &dword_1C198D000, v5, "WebView %@: Unable to forward rendering progress.", 49, 2, v7);
  }

  else
  {
    __break(1u);
  }
}

void sub_1C19B4D14(char *a1, uint64_t a2, void *a3, void *a4, void *a5, SEL *a6)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    if ([Strong respondsToSelector_])
    {
      v13 = a3;
      v14 = a4;
      v15 = a5;
      v16 = a1;
      v17 = sub_1C1A6D3AC();
      [v12 *a6];
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

void *sub_1C19B4E48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    if ([result respondsToSelector_])
    {
      [v9 *a5];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

_OWORD *sub_1C19B4EDC(void *a1, uint64_t a2)
{
  v4 = sub_1C1A6F66C();
  sub_1C199E4CC();
  v5 = sub_1C1A6F8EC();
  sub_1C19A9E58(&unk_1EBF03FD0, &unk_1C1A73CC0);
  result = swift_allocObject();
  result[1] = xmmword_1C1A73CD0;
  if (!a1)
  {
    __break(1u);
    return result;
  }

  v7 = result;
  v8 = [a1 description];
  v9 = sub_1C1A6F3CC();
  v11 = v10;

  v12 = MEMORY[0x1E69E6158];
  v7[7] = MEMORY[0x1E69E6158];
  v13 = sub_1C199E518();
  v7[8] = v13;
  v7[4] = v9;
  v7[5] = v11;
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      v14 = 0x80000001C1A7AE40;
      v15 = 0xD000000000000013;
      goto LABEL_12;
    }

    if (a2 == 3)
    {
      v14 = 0x80000001C1A7AE20;
      v15 = 0xD000000000000018;
      goto LABEL_12;
    }

LABEL_9:
    v7[12] = v12;
    v7[13] = v13;
    v7[9] = 0x6E776F6E6B6E55;
    v14 = 0xE700000000000000;
    goto LABEL_13;
  }

  if (!a2)
  {
    v14 = 0xEC00000074696D69;
    v15 = 0x6C2079726F6D654DLL;
    goto LABEL_12;
  }

  if (a2 != 1)
  {
    goto LABEL_9;
  }

  v14 = 0xE900000000000074;
  v15 = 0x696D696C20555043;
LABEL_12:
  v7[12] = v12;
  v7[13] = v13;
  v7[9] = v15;
LABEL_13:
  v7[10] = v14;
  sub_1C1A6F18C(v4, &dword_1C198D000, v5, "WebView %@: WebContent process was terminated due to %@.", 56, 2, v7);

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v16 = result;
    if ([result respondsToSelector_])
    {
      [v16 webViewWebContentProcessDidTerminate_];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_1C19B51F0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1C19B525C(uint64_t a1, Class a2)
{
  v3 = objc_allocWithZone(a2);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  v5.receiver = v3;
  v5.super_class = a2;
  return objc_msgSendSuper2(&v5, sel_init);
}

unint64_t sub_1C19B52E8()
{
  result = qword_1EDE62A18;
  if (!qword_1EDE62A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE62A18);
  }

  return result;
}

unint64_t sub_1C19B5340()
{
  result = qword_1EBF03BB0;
  if (!qword_1EBF03BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF03BB0);
  }

  return result;
}

unint64_t sub_1C19B5398()
{
  result = qword_1EBF03BB8;
  if (!qword_1EBF03BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF03BB8);
  }

  return result;
}

unint64_t sub_1C19B53F0()
{
  result = qword_1EBF03BC0;
  if (!qword_1EBF03BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF03BC0);
  }

  return result;
}

void sub_1C19B5448(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1C19A9E58(&qword_1EBF03C58, &qword_1C1A74068);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  v10 = type metadata accessor for VisibilityTiming(0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v14 + 48))(a1, 1, v11) == 1)
  {
    sub_1C1991140(a1, &qword_1EBF03C58, &qword_1C1A74068);
    sub_1C1A401E4(a2, a3, v9);

    sub_1C1991140(v9, &qword_1EBF03C58, &qword_1C1A74068);
  }

  else
  {
    sub_1C19B7920(a1, v13, type metadata accessor for VisibilityTiming);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_1C1A495B4(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }
}

void sub_1C19B561C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_1C19916E4(a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *v3;
    sub_1C1A497B8(v8, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v7;
  }

  else
  {
    sub_1C1991140(a1, &qword_1EBF03BD0, &qword_1C1A73F90);
    sub_1C1A40238(a2, a3, v8);

    sub_1C1991140(v8, &qword_1EBF03BD0, &qword_1C1A73F90);
  }
}

void sub_1C19B56EC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_1C1A49A68(a1, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    v7 = sub_1C1992F04(a2);
    if (v8)
    {
      v9 = v7;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        sub_1C1A4A510();
        v11 = v13;
      }

      sub_1C19B6638(v9, v11);
      *v3 = v11;
    }
  }
}

void sub_1C19B5804(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a5)(void))
{
  v6 = v5;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v5;
    a4(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v5 = v18;
  }

  else
  {
    v13 = sub_1C1991010(a2, a3);
    v15 = v14;

    if (v15)
    {
      v16 = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v6;
      v19 = *v6;
      if (!v16)
      {
        a5();
        v17 = v19;
      }

      sub_1C19B69CC(v13, v17);
      *v6 = v17;
    }
  }
}

void sub_1C19B590C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1C19A9E58(&qword_1EBF03C30, &unk_1C1A77A50);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  v10 = type metadata accessor for PreloadedContentDiagnosticPayload(0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v14 + 48))(a1, 1, v11) == 1)
  {
    sub_1C1991140(a1, &qword_1EBF03C30, &unk_1C1A77A50);
    sub_1C19A0AF0(a2, a3, v9);

    sub_1C1991140(v9, &qword_1EBF03C30, &unk_1C1A77A50);
  }

  else
  {
    sub_1C19B7920(a1, v13, type metadata accessor for PreloadedContentDiagnosticPayload);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_1C1A49A90(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }
}

void sub_1C19B5B38(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a5)(void))
{
  v6 = v5;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v5;
    a4(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v5 = v18;
  }

  else
  {
    v13 = sub_1C1991010(a2, a3);
    v15 = v14;

    if (v15)
    {
      v16 = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v6;
      v19 = *v6;
      if (!v16)
      {
        a5();
        v17 = v19;
      }

      sub_1C19B69CC(v13, v17);
      *v6 = v17;
    }
  }
}

void sub_1C19B5C40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v3;
    sub_1C1A49C94(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v14;
  }

  else
  {
    v9 = sub_1C1991010(a2, a3);
    v11 = v10;

    if (v11)
    {
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v4;
      v15 = *v4;
      if (!v12)
      {
        sub_1C1A4AD30();
        v13 = v15;
      }

      sub_1C19B69CC(v9, v13);
      *v4 = v13;
    }
  }
}

uint64_t OnScreenAdEvent.init(adInstanceId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  a3[2] = sub_1C19B6BD8(MEMORY[0x1E69E7CC0]);
  type metadata accessor for OnScreenAdEvent(0);
  result = sub_1C1A6D61C();
  *a3 = a1;
  a3[1] = a2;
  return result;
}

double OnScreenAdEvent.subscript.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = *(v3 + 16);
  if (*(v5 + 16) && (v6 = sub_1C1991010(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(v5 + 56) + 32 * v6;

    sub_1C19A1A5C(v8, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_1C19B5E20(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  sub_1C1990FA8(a1, v7, &qword_1EBF03BD0, &qword_1C1A73F90);
  sub_1C1990FA8(v7, v6, &qword_1EBF03BD0, &qword_1C1A73F90);

  sub_1C19B561C(v6, v3, v4);
  return sub_1C1991140(v7, &qword_1EBF03BD0, &qword_1C1A73F90);
}

uint64_t OnScreenAdEvent.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C1990FA8(a1, v7, &qword_1EBF03BD0, &qword_1C1A73F90);
  sub_1C19B561C(v7, a2, a3);
  return sub_1C1991140(a1, &qword_1EBF03BD0, &qword_1C1A73F90);
}

void (*OnScreenAdEvent.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x78uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[13] = a3;
  v7[14] = v3;
  v7[12] = a2;
  v9 = *(v3 + 16);
  if (*(v9 + 16) && (v10 = sub_1C1991010(a2, a3), (v11 & 1) != 0))
  {
    sub_1C19A1A5C(*(v9 + 56) + 32 * v10, v8);
  }

  else
  {
    *v8 = 0u;
    v8[1] = 0u;
  }

  return sub_1C19B5FFC;
}

void sub_1C19B5FFC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 104);
  v4 = *(*a1 + 96);
  if (a2)
  {
    sub_1C1990FA8(*a1, v2 + 32, &qword_1EBF03BD0, &qword_1C1A73F90);
    sub_1C1990FA8(v2 + 32, v2 + 64, &qword_1EBF03BD0, &qword_1C1A73F90);

    sub_1C19B561C(v2 + 64, v4, v3);
    sub_1C1991140(v2 + 32, &qword_1EBF03BD0, &qword_1C1A73F90);
  }

  else
  {
    sub_1C1990FA8(*a1, v2 + 32, &qword_1EBF03BD0, &qword_1C1A73F90);

    sub_1C19B561C(v2 + 32, v4, v3);
  }

  sub_1C1991140(v2, &qword_1EBF03BD0, &qword_1C1A73F90);

  free(v2);
}

uint64_t static OnScreenAdEvent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for OnScreenAdEvent(0) + 24);

  return MEMORY[0x1EEDC4E90](a1 + v4, a2 + v4);
}

unint64_t sub_1C19B6164(uint64_t a1)
{
  sub_1C1A6F3CC();
  sub_1C1A6FDAC();
  sub_1C1A6F45C();
  v2 = sub_1C1A6FDDC();

  return sub_1C19B636C(a1, v2);
}

unint64_t sub_1C19B61F4(uint64_t a1)
{
  sub_1C1A6FDAC();
  MEMORY[0x1C6905870](a1);
  v2 = sub_1C1A6FDDC();

  return sub_1C19A34CC(a1, v2);
}

unint64_t sub_1C19B6260(uint64_t a1)
{
  v2 = sub_1C1A6FA4C();

  return sub_1C19B62A4(a1, v2);
}

unint64_t sub_1C19B62A4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1C19B7870(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1C6905510](v9, a1);
      sub_1C19B78CC(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1C19B636C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_1C1A6F3CC();
      v8 = v7;
      if (v6 == sub_1C1A6F3CC() && v8 == v9)
      {
        break;
      }

      v11 = sub_1C1A6FCEC();

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

void sub_1C19B6488(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1C1A6F96C() + 1) & ~v5;
    do
    {
      sub_1C1A6FDAC();

      sub_1C1A6F45C();
      v10 = sub_1C1A6FDDC();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }
}

uint64_t sub_1C19B6638(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1C1A6F96C() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_1C1A6FD9C();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1C19B67D8(int64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (a1 + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v9 = ~v6;
    v10 = (sub_1C1A6F96C() + 1) & ~v6;
    while (1)
    {
      sub_1C1A6FDAC();

      sub_1C1A6F45C();
      v11 = sub_1C1A6FDDC();

      v12 = v11 & v9;
      if (v4 >= v10)
      {
        break;
      }

      if (v12 < v10)
      {
        goto LABEL_10;
      }

LABEL_11:
      v13 = *(a2 + 48);
      v14 = (v13 + 16 * v4);
      v15 = (v13 + 16 * v7);
      if (v4 != v7 || v14 >= v15 + 1)
      {
        *v14 = *v15;
      }

      v16 = *(a2 + 56);
      v17 = *(*(a3(0) - 8) + 72);
      v18 = v17 * v4;
      v19 = v16 + v17 * v4;
      v20 = v17 * v7;
      v21 = v16 + v17 * v7 + v17;
      if (v18 < v20 || v19 >= v21)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v18 == v20)
        {
          goto LABEL_5;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v9;
      if (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v12 < v10)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v4 < v12)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }
}

void sub_1C19B69CC(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1C1A6F96C() + 1) & ~v5;
    do
    {
      sub_1C1A6FDAC();

      sub_1C1A6F45C();
      v9 = sub_1C1A6FDDC();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }
}

unint64_t sub_1C19B6BD8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1C19A9E58(&qword_1EBF03D08, &qword_1C1A74120);
    v3 = sub_1C1A6FBEC();
    v4 = a1 + 32;

    while (1)
    {
      sub_1C1990FA8(v4, &v13, &qword_1EBF03D10, &unk_1C1A755E0);
      v5 = v13;
      v6 = v14;
      result = sub_1C1991010(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1C19916E4(&v15, (v3[7] + 32 * result));
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t type metadata accessor for OnScreenAdEvent(uint64_t a1)
{
  result = qword_1EDE61EA8;
  if (!qword_1EDE61EA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C19B6D7C(uint64_t a1)
{
  sub_1C19B6E10();
  if (v1 <= 0x3F)
  {
    sub_1C1A6D62C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C19B6E10()
{
  if (!qword_1EDE60CC0)
  {
    v0 = sub_1C1A6F33C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDE60CC0);
    }
  }
}

unint64_t sub_1C19B6E88(uint64_t a1)
{
  v2 = sub_1C19A9E58(&qword_1EBF03BD8, &qword_1C1A73FD8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v20 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1C19A9E58(&qword_1EBF03BE0, &qword_1C1A73FE0);
    v7 = sub_1C1A6FBEC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_1C1990FA8(v9, v5, &qword_1EBF03BD8, &qword_1C1A73FD8);
      v11 = *v5;
      result = sub_1C1992F04(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v11;
      v15 = v7[7];
      v16 = type metadata accessor for VisibilityTiming(0);
      result = sub_1C19B7920(v5 + v8, v15 + *(*(v16 - 8) + 72) * v14, type metadata accessor for VisibilityTiming);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1C19B7074(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1C19A9E58(&qword_1EBF03CE8, &qword_1C1A740F8);
    v3 = sub_1C1A6FBEC();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1C1991010(v5, v6);
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1C19B71C4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_1C19A9E58(a2, a3);
    v5 = sub_1C1A6FBEC();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_1C1991010(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1C19B72D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1C19A9E58(&qword_1EBF03C60, &unk_1C1A74070);
    v3 = sub_1C1A6FBEC();
    v4 = a1 + 32;

    while (1)
    {
      sub_1C1990FA8(v4, v13, &qword_1EBF03C68, &qword_1C1A773D0);
      result = sub_1C19B6260(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_1C19916E4(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1C19B7410(uint64_t a1)
{
  v2 = sub_1C19A9E58(&qword_1EBF03C48, &qword_1C1A74058);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1C19A9E58(&qword_1EBF03C50, &qword_1C1A74060);
    v7 = sub_1C1A6FBEC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1C1990FA8(v9, v5, &qword_1EBF03C48, &qword_1C1A74058);
      v11 = *v5;
      v12 = v5[1];
      result = sub_1C1991010(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for FrequencyCapInfo(0);
      result = sub_1C19B7920(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15, type metadata accessor for FrequencyCapInfo);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1C19B760C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1C19A9E58(&qword_1EBF03C90, &qword_1C1A740A0);
    v3 = sub_1C1A6FBEC();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1C1991010(v5, v6);
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1C19B7758(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    sub_1C19A9E58(a2, a3);
    v9 = sub_1C1A6FBEC();
    v10 = a1 + 32;

    while (1)
    {
      sub_1C1990FA8(v10, &v17, a4, a5);
      v11 = v17;
      result = sub_1C19B6164(v17);
      if (v13)
      {
        break;
      }

      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v9[6] + 8 * result) = v11;
      result = sub_1C19916E4(&v18, (v9[7] + 32 * result));
      v14 = v9[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v9[2] = v16;
      v10 += 40;
      if (!--v5)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1C19B7920(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C19B798C()
{
  v19.receiver = v0;
  v19.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v19, sel_viewDidLoad);
  v1 = objc_opt_self();
  v2 = [v1 defaultCenter];
  v3 = *MEMORY[0x1E69DDAC8];
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = sub_1C19B97F8;
  v18 = v4;
  v13 = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = sub_1C1A40D40;
  v16 = &unk_1F413FB08;
  v5 = _Block_copy(&v13);

  v6 = [v2 addObserverForName:v3 object:0 queue:0 usingBlock:v5];
  _Block_release(v5);

  *&v0[OBJC_IVAR____TtC17PromotedContentUI27CalendarEventViewController_notificationObserver] = v6;
  swift_unknownObjectRelease();
  v7 = [v1 defaultCenter];
  v8 = *MEMORY[0x1E69DDBC0];
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = sub_1C19B9800;
  v18 = v9;
  v13 = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = sub_1C1A40D40;
  v16 = &unk_1F413FB30;
  v10 = _Block_copy(&v13);

  v11 = [v7 addObserverForName:v8 object:0 queue:0 usingBlock:v10];
  _Block_release(v10);

  *&v0[OBJC_IVAR____TtC17PromotedContentUI27CalendarEventViewController_notificationOpenObserver] = v11;
  return swift_unknownObjectRelease();
}

void sub_1C19B7BF0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C19A9E58(&qword_1EBF038A8, &unk_1C1A73990);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v11[-v3];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = sub_1C1A6F64C();
    sub_1C198FB8C(0, &qword_1EDE63F30, 0x1E69E9BF8);
    v8 = sub_1C1A6F8EC();
    sub_1C1A6F18C(v7, &dword_1C198D000, v8, "Will handle UI did background notification received", 51, 2, MEMORY[0x1E69E7CC0]);

    sub_1C1A6D5CC();
    v9 = sub_1C1A6D5DC();
    (*(*(v9 - 8) + 56))(v4, 0, 1, v9);
    v10 = OBJC_IVAR____TtC17PromotedContentUI27CalendarEventViewController_backgroundedTime;
    swift_beginAccess();
    sub_1C19B40BC(v4, v6 + v10);
    swift_endAccess();
  }
}

void sub_1C19B7D9C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1C19B7DF0();
  }
}

void sub_1C19B7DF0()
{
  v1 = v0;
  v2 = sub_1C19A9E58(&qword_1EBF038A8, &unk_1C1A73990);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v20 - v3;
  v5 = sub_1C1A6D5DC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20 - v10;
  v12 = sub_1C1A6F64C();
  sub_1C198FB8C(0, &qword_1EDE63F30, 0x1E69E9BF8);
  v13 = sub_1C1A6F8EC();
  sub_1C1A6F18C(v12, &dword_1C198D000, v13, "Will handle UI will enter foreground notification, check if post tap dismissal needed", 85, 2, MEMORY[0x1E69E7CC0]);

  sub_1C1A6D5CC();
  v14 = OBJC_IVAR____TtC17PromotedContentUI27CalendarEventViewController_backgroundedTime;
  swift_beginAccess();
  sub_1C19AF080(v1 + v14, v4);
  v15 = *(v6 + 48);
  if (v15(v4, 1, v5) == 1)
  {
    sub_1C1A6D5CC();
    if (v15(v4, 1, v5) != 1)
    {
      sub_1C1991140(v4, &qword_1EBF038A8, &unk_1C1A73990);
    }
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
  }

  sub_1C1A6D50C();
  v17 = v16;
  v18 = v16;
  v19 = *(v6 + 8);
  v19(v8, v5);
  v19(v11, v5);
  if ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v17 <= -9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v17 >= 9.22337204e18)
  {
LABEL_13:
    __break(1u);
    return;
  }

  if (v17 >= 301)
  {
    sub_1C19B8954();
  }
}

void sub_1C19B8144(char a1)
{
  v15.receiver = v1;
  v15.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v15, sel_viewDidAppear_, a1 & 1);
  v3 = [objc_opt_self() authorizationStatusForEntityType_];
  if (v3 <= 2)
  {
    if ((v3 - 1) < 2)
    {
      sub_1C198FB8C(0, &qword_1EDE63F38, 0x1E69E9610);
      swift_allocObject();
      swift_unknownObjectWeakInit();

      sub_1C1A6F6BC();

      return;
    }

    if (!v3)
    {
      goto LABEL_8;
    }

LABEL_9:
    v13 = sub_1C1A6F66C();
    sub_1C198FB8C(0, &qword_1EDE63F30, 0x1E69E9BF8);
    v6 = sub_1C1A6F8DC();
    sub_1C1A6F18C(v13, &dword_1C198D000, v6, "Current calendar authorization status is not supported. Please file a rdar.", 75, 2, MEMORY[0x1E69E7CC0]);
    goto LABEL_10;
  }

  if (v3 == 4)
  {
LABEL_8:
    v8 = *&v1[OBJC_IVAR____TtC17PromotedContentUI27CalendarEventViewController_eventStore];
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    *(v10 + 24) = v8;
    v14[4] = sub_1C19B97AC;
    v14[5] = v10;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 1107296256;
    v14[2] = sub_1C19B8CF4;
    v14[3] = &unk_1F413FA90;
    v11 = _Block_copy(v14);
    v12 = v8;

    [v12 requestFullAccessToEventsWithCompletion_];
    _Block_release(v11);

    return;
  }

  if (v3 != 3)
  {
    goto LABEL_9;
  }

  v4 = *&v1[OBJC_IVAR____TtC17PromotedContentUI27CalendarEventViewController_calendarEvent];
  v5 = *&v1[OBJC_IVAR____TtC17PromotedContentUI27CalendarEventViewController_eventStore];
  v6 = v1;
  v7 = v5;

  sub_1C1A27690(v7, v4, v6, v7);

LABEL_10:
}

void sub_1C19B83E8()
{
  v1 = v0;
  type metadata accessor for PromotedContentUIModule();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = objc_opt_self();
  v4 = [v3 bundleForClass_];
  v5 = [v3 mainBundle];
  sub_1C198FB8C(0, &qword_1EDE62678, 0x1E696AAE8);
  LOBYTE(ObjCClassFromMetadata) = sub_1C1A6F7BC();

  if (ObjCClassFromMetadata)
  {
    sub_1C1A6FB8C();
    __break(1u);
  }

  else
  {
    sub_1C1A6D31C();
    sub_1C1A6D31C();
    sub_1C1A6D31C();
    v6 = sub_1C1A6F39C();

    v7 = sub_1C1A6F39C();

    v8 = [objc_opt_self() alertControllerWithTitle:v6 message:v7 preferredStyle:{1, 0xE200000000000000}];

    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v10 = sub_1C1A6F39C();

    aBlock[4] = sub_1C19B97F0;
    aBlock[5] = v9;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C19B8FA0;
    aBlock[3] = &unk_1F413FAE0;
    v11 = _Block_copy(aBlock);

    v12 = [objc_opt_self() actionWithTitle:v10 style:0 handler:v11];
    _Block_release(v11);

    [v8 addAction_];
    [v1 presentViewController:v8 animated:!UIAccessibilityIsReduceMotionEnabled() completion:0];
  }
}

void sub_1C19B87CC(char a1)
{
  v9.receiver = v1;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, sel_viewWillDisappear_, a1 & 1);
  v3 = *&v1[OBJC_IVAR____TtC17PromotedContentUI27CalendarEventViewController_notificationObserver];
  if (v3)
  {
    v4 = objc_opt_self();
    swift_unknownObjectRetain();
    v5 = [v4 defaultCenter];
    [v5 removeObserver_];
    swift_unknownObjectRelease();
  }

  v6 = *&v1[OBJC_IVAR____TtC17PromotedContentUI27CalendarEventViewController_notificationOpenObserver];
  if (v6)
  {
    v7 = objc_opt_self();
    swift_unknownObjectRetain();
    v8 = [v7 defaultCenter];
    [v8 removeObserver_];
    swift_unknownObjectRelease();
  }
}

void sub_1C19B8954()
{
  v1 = v0;
  v2 = sub_1C19A9E58(&qword_1EBF03AD8, &unk_1C1A74620);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v15 - v3;
  v5 = &v0[OBJC_IVAR____TtC17PromotedContentUI27CalendarEventViewController_actionDelegate];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 1);
    ObjectType = swift_getObjectType();
    v8 = OBJC_IVAR____TtC17PromotedContentUI27CalendarEventViewController_actionResult;
    swift_beginAccess();
    v9 = sub_1C1A6DDCC();
    v10 = *(v9 - 8);
    (*(v10 + 16))(v4, &v0[v8], v9);
    (*(v10 + 56))(v4, 0, 1, v9);
    (*(v6 + 8))(v4, ObjectType, v6);
    swift_unknownObjectRelease();
    sub_1C1991140(v4, &qword_1EBF03AD8, &unk_1C1A74620);
  }

  else
  {
    v11 = sub_1C1A6F66C();
    sub_1C198FB8C(0, &qword_1EDE63F30, 0x1E69E9BF8);
    v12 = sub_1C1A6F8EC();
    sub_1C1A6F18C(v11, &dword_1C198D000, v12, "Cannot find the action delegate! Forced to close itself.", 56, 2, MEMORY[0x1E69E7CC0]);

    v13 = [v1 presentingViewController];
    if (v13)
    {
      v15 = v13;
      [v13 dismissViewControllerAnimated:!UIAccessibilityIsReduceMotionEnabled() completion:0];
      v14 = v15;
    }
  }
}

void sub_1C19B8BD4(char a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    if (a1)
    {
      v8 = *&Strong[OBJC_IVAR____TtC17PromotedContentUI27CalendarEventViewController_calendarEvent];
      v9 = Strong;
      v7 = a4;

      sub_1C1A27690(v7, v8, v9, v7);
    }

    else
    {
      sub_1C198FB8C(0, &qword_1EDE63F38, 0x1E69E9610);
      swift_allocObject();
      swift_unknownObjectWeakInit();

      sub_1C1A6F6BC();
    }
  }
}

void sub_1C19B8CF4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_1C19B8D6C(void *a1, uint64_t a2, void *a3)
{
  sub_1C198FB8C(0, &qword_1EDE63F38, 0x1E69E9610);
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  v6[2] = a3;
  v6[3] = a1;
  v6[4] = v5;
  v7 = a3;
  v8 = a1;

  sub_1C1A6F6BC();
}

void sub_1C19B8E50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_allocWithZone(MEMORY[0x1E6966B88]) init];
  [v5 setEventStore_];
  [v5 setEvent_];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  [v5 setEditViewDelegate_];

  swift_beginAccess();
  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    v8 = v7;
    [v7 presentViewController:v5 animated:!UIAccessibilityIsReduceMotionEnabled() completion:0];
  }
}

void sub_1C19B8F4C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1C19B8954();
  }
}

void sub_1C19B8FA0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t type metadata accessor for CalendarEventViewController(uint64_t a1)
{
  result = qword_1EBF03D50;
  if (!qword_1EBF03D50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C19B9168(uint64_t a1)
{
  sub_1C1A6DDCC();
  if (v1 <= 0x3F)
  {
    sub_1C199B708(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1C19B9260(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    a2();
  }
}

void sub_1C19B9328()
{
  v1 = OBJC_IVAR____TtC17PromotedContentUI27CalendarEventViewController_actionResult;
  v2 = *MEMORY[0x1E69C5F28];
  v3 = sub_1C1A6DDCC();
  (*(*(v3 - 8) + 104))(v0 + v1, v2, v3);
  v4 = OBJC_IVAR____TtC17PromotedContentUI27CalendarEventViewController_eventStore;
  *(v0 + v4) = [objc_allocWithZone(MEMORY[0x1E6966A18]) init];
  *(v0 + OBJC_IVAR____TtC17PromotedContentUI27CalendarEventViewController_notificationObserver) = 0;
  *(v0 + OBJC_IVAR____TtC17PromotedContentUI27CalendarEventViewController_notificationOpenObserver) = 0;
  v5 = OBJC_IVAR____TtC17PromotedContentUI27CalendarEventViewController_backgroundedTime;
  v6 = sub_1C1A6D5DC();
  (*(*(v6 - 8) + 56))(v0 + v5, 1, 1, v6);
  *(v0 + OBJC_IVAR____TtC17PromotedContentUI27CalendarEventViewController_actionDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_1C1A6FB8C();
  __break(1u);
}

void sub_1C19B9478(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1C1A6DDCC();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1 || a1 == 2)
  {
    v12 = sub_1C1A6F67C();
    sub_1C198FB8C(0, &qword_1EDE63F30, 0x1E69E9BF8);
    v13 = sub_1C1A6F8EC();
    sub_1C1A6F18C(v12, &dword_1C198D000, v13, "Calendar event is not saved.", 28, 2, MEMORY[0x1E69E7CC0]);
LABEL_7:

    goto LABEL_8;
  }

  if (a1 != 1)
  {
    v14 = sub_1C1A6F66C();
    sub_1C198FB8C(0, &qword_1EDE63F30, 0x1E69E9BF8);
    v13 = sub_1C1A6F8EC();
    sub_1C1A6F18C(v14, &dword_1C198D000, v13, "Unhandled calendar status.", 26, 2, MEMORY[0x1E69E7CC0]);
    goto LABEL_7;
  }

  v10 = v6;
  (*(v5 + 104))(v9, *MEMORY[0x1E69C5F20], v6, v7);
  v11 = OBJC_IVAR____TtC17PromotedContentUI27CalendarEventViewController_actionResult;
  swift_beginAccess();
  (*(v5 + 40))(&v2[v11], v9, v10);
  swift_endAccess();
LABEL_8:
  IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1C19B977C;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C198FEA4;
  aBlock[3] = &unk_1F413FA40;
  v17 = _Block_copy(aBlock);

  [v2 dismissViewControllerAnimated:!IsReduceMotionEnabled completion:v17];
  _Block_release(v17);
}

uint64_t sub_1C19B9834()
{
  sub_1C1A6FDAC();
  MEMORY[0x1C6905870](0);
  return sub_1C1A6FDDC();
}

uint64_t sub_1C19B98A0(uint64_t a1)
{
  sub_1C1A6FDAC();
  MEMORY[0x1C6905870](0);
  return sub_1C1A6FDDC();
}

void sub_1C19B98FC(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6C6569466174656DLL && a2 == 0xEA00000000007364)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_1C1A6FCEC();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_1C19B99A4(uint64_t a1)
{
  v2 = sub_1C19B9E54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C19B99E0(uint64_t a1)
{
  v2 = sub_1C19B9E54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C19B9A1C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1C19B9A78(void *a1)
{
  v2 = v1;
  v4 = sub_1C19A9E58(&qword_1EBF03DE0, &qword_1C1A74270);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v9 - v6;
  sub_1C1994048(a1, a1[3]);
  sub_1C19B9E54();
  sub_1C1A6FE0C();
  v9[1] = *(v2 + 16);
  sub_1C19A9E58(&qword_1EBF03DD0, &unk_1C1A785F0);
  sub_1C19B9EA8(&qword_1EBF03DE8, MEMORY[0x1E69E6160], MEMORY[0x1E69E5E38]);
  sub_1C1A6FCAC();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1C19B9BFC(void *a1)
{
  v4 = sub_1C19A9E58(&qword_1EBF03DC0, &unk_1C1A74260);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v9 - v6;
  sub_1C1994048(a1, a1[3]);
  sub_1C19B9E54();
  sub_1C1A6FDFC();
  if (v2)
  {
    type metadata accessor for AppRequestMetaFieldsSource();
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_1C19A9E58(&qword_1EBF03DD0, &unk_1C1A785F0);
    sub_1C19B9EA8(&qword_1EBF03DD8, MEMORY[0x1E69E6190], MEMORY[0x1E69E5E58]);
    sub_1C1A6FC5C();
    (*(v5 + 8))(v7, v4);
    *(v1 + 16) = v9[1];
  }

  sub_1C199935C(a1);
  return v1;
}

uint64_t sub_1C19B9DD8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for AppRequestMetaFieldsSource();
  v5 = swift_allocObject();
  result = sub_1C19B9BFC(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

unint64_t sub_1C19B9E54()
{
  result = qword_1EBF03DC8;
  if (!qword_1EBF03DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF03DC8);
  }

  return result;
}

uint64_t sub_1C19B9EA8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1C19A9F04(&qword_1EBF03DD0, &unk_1C1A785F0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppRequestMetaFieldsSource.CodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for AppRequestMetaFieldsSource.CodingKeys(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_1C19BA000()
{
  result = qword_1EBF03DF0;
  if (!qword_1EBF03DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF03DF0);
  }

  return result;
}

unint64_t sub_1C19BA058()
{
  result = qword_1EBF03DF8;
  if (!qword_1EBF03DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF03DF8);
  }

  return result;
}

unint64_t sub_1C19BA0B0()
{
  result = qword_1EBF03E00;
  if (!qword_1EBF03E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF03E00);
  }

  return result;
}

uint64_t sub_1C19BA104()
{
  v1 = v0;
  v2 = sub_1C19A9E58(&qword_1EBF03E50, qword_1C1A758C0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - v3;
  v5 = OBJC_IVAR____TtC17PromotedContentUI20AppStoreDataProvider____lazy_storage___diagnostics;
  if (*(v1 + OBJC_IVAR____TtC17PromotedContentUI20AppStoreDataProvider____lazy_storage___diagnostics))
  {
    v6 = *(v1 + OBJC_IVAR____TtC17PromotedContentUI20AppStoreDataProvider____lazy_storage___diagnostics);
  }

  else
  {
    v7 = sub_1C1A6EDFC();
    (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
    sub_1C1A6ED0C();
    swift_allocObject();
    v6 = sub_1C1A6ECEC();
    *(v1 + v5) = v6;
  }

  return v6;
}

uint64_t sub_1C19BA218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v98 = a3;
  v12 = sub_1C19A9E58(&qword_1EBF03E18, &qword_1C1A74478);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v84 - v13;
  v15 = sub_1C19A9E58(&qword_1EBF038A8, &unk_1C1A73990);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v84 - v16;
  v18 = sub_1C1A6D5DC();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v96 = &v84 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v97 = &v84 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v84 - v24;
  *(v6 + 72) = a6;
  *(v6 + 24) = a1;
  *(v6 + 32) = a2;
  v27 = v26;

  *(v6 + 40) = v98;
  *(v6 + 48) = a4;

  *(v6 + 56) = a5;
  v28 = v25;

  *(v6 + 80) = 0;

  *(v6 + 88) = 0;

  sub_1C1A6D5CC();
  v29 = *(v19 + 16);
  v29(v17, v25, v27);
  v95 = *(v19 + 56);
  v95(v17, 0, 1, v27);
  v30 = OBJC_IVAR____TtC17PromotedContentUI20AppStoreDataProvider_initializedAt;
  swift_beginAccess();
  v98 = v17;
  sub_1C19B40BC(v17, v6 + v30);
  swift_endAccess();
  if (*(v6 + OBJC_IVAR____TtC17PromotedContentUI20AppStoreDataProvider_firstInitializeCall) != 1)
  {
    goto LABEL_17;
  }

  v94 = v14;
  *(v6 + OBJC_IVAR____TtC17PromotedContentUI20AppStoreDataProvider_firstInitializeCall) = 0;
  v31 = sub_1C1A1BC24();
  v32 = 0.0;
  if (v31)
  {
    v93 = *(v31 + 4);
    if (!v93)
    {

      goto LABEL_16;
    }

    v33 = OBJC_IVAR____TtC17PromotedContentUI27AppStoreDataProviderSession_lastFetch;
    v34 = v31;
    v88 = v31;
    swift_beginAccess();
    v84 = v33;
    v35 = v97;
    v29(v97, &v34[v33], v27);
    swift_unknownObjectRetain();
    v85 = v29;
    v36 = v6;
    v90 = v25;
    sub_1C1A6D50C();
    v32 = v37;
    v89 = v19;
    v39 = *(v19 + 8);
    v38 = v19 + 8;
    v91 = v27;
    v86 = v39;
    v39(v35, v27);
    ObjectType = swift_getObjectType();

    v40 = sub_1C19E5E3C();
    v42 = v41;

    v43 = *(v6 + 24);
    v44 = v36[4];
    v92 = v36;
    v45 = v36[5];
    v46 = v36[6];

    LODWORD(v43) = sub_1C1A0F5DC(v40, v42, v43, v44, v45, v46);

    if (v43)
    {
      v98 = OBJC_IVAR____TtC17PromotedContentUI20AppStoreDataProvider_sessionPersistence;
      v47 = sub_1C1A6F64C();
      sub_1C198FB8C(0, &qword_1EDE63F30, 0x1E69E9BF8);
      v48 = sub_1C1A6F8EC();
      sub_1C19A9E58(&unk_1EBF03FD0, &unk_1C1A73CC0);
      v49 = swift_allocObject();
      *(v49 + 16) = xmmword_1C1A73A30;
      v50 = [v93 identifier];
      v51 = sub_1C1A6F3CC();
      v53 = v52;

      *(v49 + 56) = MEMORY[0x1E69E6158];
      *(v49 + 64) = sub_1C199E518();
      *(v49 + 32) = v51;
      *(v49 + 40) = v53;
      sub_1C1A6F18C(v47, &dword_1C198D000, v48, "[PCUI] Client cached content (%{public}@) can't be reused.", 58, 2, v49);

      v54 = sub_1C1A6F64C();
      v55 = sub_1C1A6F8EC();
      sub_1C1A6F18C(v54, &dword_1C198D000, v55, "[PCUI] Removing session", 23, 2, MEMORY[0x1E69E7CC0]);

      sub_1C198FB8C(0, &qword_1EDE63970, 0x1E695E000);
      sub_1C19CF178(0);

      swift_unknownObjectRelease();
      v28 = v90;
      v27 = v91;
      v19 = v89;
      goto LABEL_16;
    }

    v56 = v84;
    ObjectType = v38;
    v57 = v88;
    v58 = *(v88 + 4);
    if (v58)
    {
      [v58 setVended_];
    }

    v59 = v92;
    v92[10] = v57;

    v60 = v59[10];
    v27 = v91;
    v19 = v89;
    if (v60)
    {
      v61 = *(v60 + 16);
      v62 = swift_allocObject();
      v62[2] = v59;
      v62[3] = v57;
      v62[4] = v61;
      v63 = v61;

      v64 = v63;

      sub_1C1A6E95C();
      v59 = v92;
    }

    v65 = v97;
    v66 = v85;
    v85(v97, &v57[v56], v27);
    v67 = OBJC_IVAR____TtC17PromotedContentUI20AppStoreDataProvider_lastFetch;
    swift_beginAccess();
    (*(v19 + 40))(v59 + v67, v65, v27);
    swift_endAccess();
    v68 = v98;
    v66(v98, &v57[v56], v27);
    v95(v68, 0, 1, v27);
    sub_1C19BAC5C(v68);
    sub_1C1991140(v68, &qword_1EBF038A8, &unk_1C1A73990);
    sub_1C1A6D5CC();
    v69 = v96;
    v66(v96, &v57[v56], v27);
    sub_1C1A6D50C();
    v71 = v70;
    v72 = v69;
    v73 = v86;
    v86(v72, v27);
    v73(v65, v27);
    sub_1C198FB8C(0, &qword_1EDE63970, 0x1E695E000);
    v74 = COERCE_DOUBLE(sub_1C19CECF8());
    if (v75)
    {
      if (v71 <= 900.0)
      {
LABEL_13:
        LODWORD(v98) = sub_1C1A6F64C();
        sub_1C198FB8C(0, &qword_1EDE63F30, 0x1E69E9BF8);
        v76 = sub_1C1A6F8EC();
        sub_1C19A9E58(&unk_1EBF03FD0, &unk_1C1A73CC0);
        v77 = swift_allocObject();
        *(v77 + 16) = xmmword_1C1A73A30;
        v78 = [v93 identifier];
        v79 = sub_1C1A6F3CC();
        v81 = v80;

        *(v77 + 56) = MEMORY[0x1E69E6158];
        *(v77 + 64) = sub_1C199E518();
        *(v77 + 32) = v79;
        *(v77 + 40) = v81;
        sub_1C1A6F18C(v98, &dword_1C198D000, v76, "[PCUI] Successfully loaded content (%{public}@) from client's cache.", 68, 2, v77);

        swift_unknownObjectRelease();

        [objc_opt_self() sendEventTimed:10 roundtrip:0 message:v32];
        return (v73)(v90, v27);
      }
    }

    else if (v71 <= v74)
    {
      goto LABEL_13;
    }

    swift_unknownObjectRelease();
    v28 = v90;
  }

LABEL_16:
  [objc_opt_self() sendEventTimed:10 roundtrip:0 message:v32];
  v14 = v94;
LABEL_17:
  v83 = sub_1C1A6D62C();
  (*(*(v83 - 8) + 56))(v14, 1, 1, v83);
  sub_1C19BB0B0(1, 0, 0, v14);
  sub_1C1991140(v14, &qword_1EBF03E18, &qword_1C1A74478);
  return (*(v19 + 8))(v28, v27);
}

uint64_t sub_1C19BAC5C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1C19A9E58(&qword_1EBF038A8, &unk_1C1A73990);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v33 - v5;
  v7 = sub_1C1A6D5DC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v12 = MEMORY[0x1EEE9AC00](v11).n128_u64[0];
  v14 = &v33 - v13;
  [*(v2 + 16) invalidate];
  sub_1C1990FA8(a1, v6, &qword_1EBF038A8, &unk_1C1A73990);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1C1991140(v6, &qword_1EBF038A8, &unk_1C1A73990);
    v15 = 0.0;
  }

  else
  {
    (*(v8 + 32))(v14, v6, v7);
    sub_1C1A6D5CC();
    sub_1C1A6D50C();
    v15 = v16;
    v17 = *(v8 + 8);
    v17(v10, v7);
    v17(v14, v7);
  }

  sub_1C198FB8C(0, &qword_1EDE63970, 0x1E695E000);
  *&result = COERCE_DOUBLE(sub_1C19CECF8());
  if (v19)
  {
    v20 = 900.0;
  }

  else
  {
    v20 = *&result;
  }

  v21 = v20 - v15;
  if (v21 >= 0.0)
  {
    v22 = sub_1C1A6F64C();
    sub_1C198FB8C(0, &qword_1EDE63F30, 0x1E69E9BF8);
    v23 = sub_1C1A6F8EC();
    sub_1C19A9E58(&unk_1EBF03FD0, &unk_1C1A73CC0);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1C1A73A30;
    v25 = [objc_opt_self() apLocalSharedFormatter];
    sub_1C1A6D55C();
    v26 = sub_1C1A6D52C();
    (*(v8 + 8))(v10, v7);
    v27 = [v25 stringFromDate_];

    v28 = sub_1C1A6F3CC();
    v30 = v29;

    *(v24 + 56) = MEMORY[0x1E69E6158];
    *(v24 + 64) = sub_1C199E518();
    *(v24 + 32) = v28;
    *(v24 + 40) = v30;
    sub_1C1A6F18C(v22, &dword_1C198D000, v23, "[PCUI] Scheduled metadata expiration timer on %{public}@", 56, 2, v24);

    sub_1C198FB8C(0, &qword_1EDE63F38, 0x1E69E9610);
    v31 = swift_allocObject();
    swift_weakInit();
    v32 = swift_allocObject();
    *(v32 + 16) = v31;
    *(v32 + 24) = v21;

    sub_1C1A6F6BC();

    *&result = COERCE_DOUBLE();
  }

  return result;
}

uint64_t sub_1C19BB0B0(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v65 = a4;
  v66 = a2;
  v67 = a3;
  v6 = sub_1C19A9E58(&qword_1EBF03E18, &qword_1C1A74478);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v52 - v7;
  v9 = sub_1C1A6E4BC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1C1A6D5DC();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v52 - v18;
  sub_1C1A6D5CC();
  if (!*(v4 + 88))
  {
    v20 = a1;
    v57 = v12;
    v58 = v9;
    v22 = v66;
    v21 = v67;
    v59 = v8;
    v60 = v10;
    v61 = v16;
    v62 = v14;
    v63 = v13;
    v64 = v19;
    if (*(v4 + 32) && *(v4 + 48) && *(v4 + 56))
    {
      if ((v20 & 1) != 0 || (*(v4 + 72) & 1) == 0)
      {
        v31 = objc_allocWithZone(sub_1C1A6E8BC());

        v55 = v4;
        v56 = sub_1C1A6E84C();
        v54 = OBJC_IVAR____TtC17PromotedContentUI20AppStoreDataProvider_searchAdsFacade;
        v32 = *MEMORY[0x1E69C60B0];
        v33 = v60;
        v53 = *(v60 + 104);
        v35 = v57;
        v34 = v58;
        v53(v57, v32, v58);

        sub_1C19E64C4(v35, v22, v21);

        v36 = *(v33 + 8);
        v36(v35, v34);
        sub_1C1A6E87C();

        v53(v35, v32, v34);

        sub_1C19E68C0(v35);

        v36(v35, v34);
        sub_1C1A6E85C();

        sub_1C1A6E83C();

        sub_1C1A6E86C();
        sub_1C1A6E9EC();
        sub_1C1A6E82C();
        sub_1C1990FA8(v65, v59, &qword_1EBF03E18, &qword_1C1A74478);
        v37 = sub_1C1A6E9DC();
        type metadata accessor for AppStoreDataProviderSession(0);
        v38 = swift_allocObject();
        v38[3] = 0;
        v38[4] = 0;
        v39 = v37;
        sub_1C1A6D4FC();
        v38[2] = v39;
        v40 = swift_allocObject();
        v41 = v55;
        v40[2] = v55;
        v40[3] = v38;
        v40[4] = v39;
        v42 = v39;

        sub_1C1A6E95C();

        *(v41 + 88) = v38;

        v43 = sub_1C1A6F67C();
        sub_1C198FB8C(0, &qword_1EDE63F30, 0x1E69E9BF8);
        v44 = sub_1C1A6F8EC();
        sub_1C1A6F18C(v43, &dword_1C198D000, v44, "[PCUI] Starting fetching from context...", 40, 2, MEMORY[0x1E69E7CC0]);

        v45 = [objc_opt_self() sharedInstance];
        LODWORD(v43) = [v45 locationEnabled];

        if (v43)
        {
          v46 = OBJC_IVAR____TtC17PromotedContentUI20AppStoreDataProvider_greenTeaLogger;
          [*(v41 + OBJC_IVAR____TtC17PromotedContentUI20AppStoreDataProvider_greenTeaLogger) willAccessLocation];
          v47 = *(v41 + v46);
          if (v47)
          {
            [v47 willTransmitLocationFor_];
          }
        }

        sub_1C19A9E58(&qword_1EBF03E20, &unk_1C1A74480);
        v48 = sub_1C1A6E34C();
        v49 = *(v48 - 8);
        v50 = (*(v49 + 80) + 32) & ~*(v49 + 80);
        v51 = swift_allocObject();
        *(v51 + 16) = xmmword_1C1A73A30;
        *(v51 + v50) = 1;
        (*(v49 + 104))(v51 + v50, *MEMORY[0x1E69C6018], v48);
        sub_1C1A6E96C();

        goto LABEL_10;
      }

      v23 = sub_1C1A6F67C();
      sub_1C198FB8C(0, &qword_1EDE63F30, 0x1E69E9BF8);
      v24 = sub_1C1A6F8EC();
      sub_1C1A6F18C(v23, &dword_1C198D000, v24, "[PCUI] AppStoreModule is not making a subsequent request because it's been disabled", 83, 2, MEMORY[0x1E69E7CC0]);
    }

    else
    {
      v25 = sub_1C1A6F66C();
      sub_1C198FB8C(0, &qword_1EDE63F30, 0x1E69E9BF8);
      v24 = sub_1C1A6F8EC();
    }

LABEL_10:
    v14 = v62;
    v13 = v63;
    v19 = v64;
    v16 = v61;
  }

  v26 = objc_opt_self();
  v27 = sub_1C1A6D52C();
  sub_1C1A6D5CC();
  v28 = sub_1C1A6D52C();
  v29 = *(v14 + 8);
  v29(v16, v13);
  [v26 sendEventTimed:9 startDate:v27 endDate:v28 message:0];

  return (v29)(v19, v13);
}

uint64_t sub_1C19BB8AC(void (*a1)(void), uint64_t a2)
{
  v3 = v2;
  v131 = a2;
  v132 = a1;
  v4 = sub_1C19A9E58(&qword_1EBF03E18, &qword_1C1A74478);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v135 = &v112 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v112 - v7;
  v9 = sub_1C19A9E58(&qword_1EBF03E48, &qword_1C1A744B0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v120 = &v112 - v10;
  v121 = sub_1C1A6E4BC();
  v119 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  v118 = &v112 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C1A6D62C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v112 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C19BA104();
  sub_1C1A6ECDC();

  sub_1C1A6D61C();
  v16 = sub_1C1A6D5EC();
  v18 = v17;
  v130 = v13;
  v133 = *(v13 + 8);
  v134 = v13 + 8;
  v133(v15, v12);
  v19 = sub_1C1A6F67C();
  v20 = sub_1C198FB8C(0, &qword_1EDE63F30, 0x1E69E9BF8);
  v124 = "n>16@0:8";
  v125 = &OBJC_IVAR____TtC17PromotedContentUI20AppStoreDataProvider_theLock;
  v126 = v20;
  v21 = sub_1C1A6F8EC();
  v127 = sub_1C19A9E58(&unk_1EBF03FD0, &unk_1C1A73CC0);
  v22 = swift_allocObject();
  v128 = xmmword_1C1A73A30;
  *(v22 + 16) = xmmword_1C1A73A30;
  *(v22 + 56) = MEMORY[0x1E69E6158];
  v129 = sub_1C199E518();
  *(v22 + 64) = v129;
  v123 = v16;
  *(v22 + 32) = v16;
  *(v22 + 40) = v18;

  sub_1C1A6F18C(v19, &dword_1C198D000, v21, "[PCUI] App store requested ad, starting request with id: %{public}@", 67, 2, v22);

  v23 = v3[10];
  if (v23 && (v24 = *(v23 + 32)) != 0)
  {
    v117 = v8;
    v25 = *(v23 + 16);
    v122 = v24;
    swift_unknownObjectRetain();
    v26 = v25;
    sub_1C1A6DD2C();
    v27 = sub_1C1A6D5EC();
    v29 = v28;

    v135 = v12;
    v133(v15, v12);
    v30 = OBJC_IVAR____TtC17PromotedContentUI20AppStoreDataProvider_searchAdsFacade;

    v31 = sub_1C19E5F0C();
    v33 = v32;

    type metadata accessor for AppStoreRequestTask(0);
    v34 = swift_allocObject();
    *(v34 + 64) = 0;
    v113 = (v34 + 64);
    *(v34 + 96) = 0;
    *(v34 + 72) = 0;
    swift_unknownObjectWeakInit();
    *(v34 + 104) = 0;
    *(v34 + 112) = 0;
    *(v34 + 120) = 0;
    sub_1C1A6D5CC();
    *(v34 + 16) = v123;
    *(v34 + 24) = v18;
    v114 = v27;
    *(v34 + 48) = v27;
    *(v34 + 56) = v29;
    v123 = v29;
    *(v34 + 32) = v31;
    *(v34 + 40) = v33;
    *(v34 + 80) = 7005;
    swift_getObjectType();
    v116 = v30;

    v35 = sub_1C19E5E3C();
    v37 = v36;

    v38 = v3[3];
    v39 = v3[4];
    v115 = v3;
    v40 = v3[5];
    v41 = v3[6];

    LODWORD(v38) = sub_1C1A0F5DC(v35, v37, v38, v39, v40, v41);

    if (v38)
    {
      v42 = v123;
      v43 = v115;
      sub_1C19BC700(1);
      v44 = sub_1C1A6F67C();
      v45 = sub_1C1A6F8EC();
      v46 = swift_allocObject();
      *(v46 + 16) = v128;
      v48 = *(v34 + 16);
      v47 = *(v34 + 24);
      v49 = v129;
      *(v46 + 56) = MEMORY[0x1E69E6158];
      *(v46 + 64) = v49;
      *(v46 + 32) = v48;
      *(v46 + 40) = v47;

      sub_1C1A6F18C(v44, &dword_1C198D000, v45, "[PCUI] App store requested ad, finishing request with id: %{public}@. Cached content can't be vended to a client - not relevant.", 128, 2, v46);

      if (v43[11])
      {
        *(v43 + OBJC_IVAR____TtC17PromotedContentUI20AppStoreDataProvider_missedOpportunity) = 1;
      }

      else
      {
        sub_1C19BE4A0(14);
      }

      v83 = v130;

      v84 = sub_1C19E5F0C();
      v86 = v85;

      sub_1C1A6EB6C();
      sub_1C1A6D61C();
      v87 = objc_allocWithZone(sub_1C1A6E9EC());
      v88 = sub_1C1A6E98C();
      v89 = sub_1C1A6EA7C();

      sub_1C1A06F5C(v89, v84, v86, v114, v42, 1);
      v132();

      v77 = v117;
      (*(v83 + 56))(v117, 1, 1, v135);
      sub_1C19BB0B0(0, 0, 0, v77);
      swift_unknownObjectRelease();
    }

    else
    {

      v78 = v115;
      sub_1C19BC700(2);

      v123 = sub_1C19E5F0C();
      v116 = v79;

      if (*v113)
      {

        sub_1C1A6D9FC();

        v80 = sub_1C1A6D5EC();
        v82 = v81;
        v133(v15, v135);
      }

      else
      {
        v80 = *(v34 + 48);
        v82 = *(v34 + 56);
      }

      v90 = v119;
      v91 = v118;
      v92 = v121;
      (*(v119 + 104))(v118, *MEMORY[0x1E69C60B0], v121);
      v136[0] = 4;
      v93 = v120;
      (*(v90 + 16))(v120, v91, v92);
      (*(v90 + 56))(v93, 0, 1, v92);
      type metadata accessor for AppStoreAd(0);
      v94 = swift_allocObject();
      v95 = swift_unknownObjectRetain();
      v96 = sub_1C1A6A104(v95, v123, v116, v80, v82, v136, v93, v94);
      (*(v90 + 8))(v91, v92);
      v97 = v78[10];
      if (v97 && (*(v97 + 32) = 0, swift_unknownObjectRelease(), (v98 = v78[10]) != 0))
      {
        v99 = *(v98 + 24);
        *(v98 + 24) = 0;

        v100 = v78[10];
      }

      else
      {
        v100 = 0;
      }

      sub_1C1A1BF34(v100);

      v101 = sub_1C1A6F67C();
      v102 = sub_1C1A6F8EC();
      v103 = swift_allocObject();
      *(v103 + 16) = v128;
      v105 = *(v34 + 16);
      v104 = *(v34 + 24);
      v106 = v129;
      *(v103 + 56) = MEMORY[0x1E69E6158];
      *(v103 + 64) = v106;
      *(v103 + 32) = v105;
      *(v103 + 40) = v104;

      sub_1C1A6F18C(v101, &dword_1C198D000, v102, "[PCUI] App store requested ad, finishing request with id: %{public}@.", 69, 2, v103);

      v107 = objc_opt_self();
      v108 = sub_1C1A6F39C();
      [v107 sendEvent_];

      sub_1C1A6ECCC();

      *(v78 + OBJC_IVAR____TtC17PromotedContentUI20AppStoreDataProvider_missedOpportunity) = 0;
      (v132)(v96, v34);
      sub_1C19BCB34();
      swift_beginAccess();
      v109 = *(v96 + 32);
      v110 = *(v96 + 40);
      v77 = v117;
      (*(v130 + 56))(v117, 1, 1, v135);

      sub_1C19BB0B0(0, v109, v110, v77);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v122 = v18;
    sub_1C19BC700(0);
    v50 = v130;
    v51 = *(v130 + 56);
    v52 = v135;
    v51(v135, 1, 1, v12);
    v53 = v3[11];
    if (v53)
    {
      v54 = *(v53 + 16);

      v55 = v54;
      sub_1C1A6DD2C();

      v56 = sub_1C1A6D5EC();
      v58 = v57;
    }

    else
    {
      sub_1C1A6D61C();
      sub_1C1991140(v52, &qword_1EBF03E18, &qword_1C1A74478);
      (*(v50 + 16))(v52, v15, v12);
      v51(v52, 0, 1, v12);
      v56 = sub_1C1A6D5EC();
      v58 = v59;
    }

    v133(v15, v12);

    v60 = sub_1C19E5F0C();
    v62 = v61;

    type metadata accessor for AppStoreRequestTask(0);
    v34 = swift_allocObject();
    *(v34 + 96) = 0;
    *(v34 + 64) = 0;
    *(v34 + 72) = 0;
    swift_unknownObjectWeakInit();
    *(v34 + 104) = 0;
    *(v34 + 112) = 0;
    *(v34 + 120) = 0;

    sub_1C1A6D5CC();
    v63 = v122;
    *(v34 + 16) = v123;
    *(v34 + 24) = v63;
    *(v34 + 48) = v56;
    *(v34 + 56) = v58;
    v64 = v58;
    *(v34 + 32) = v60;
    *(v34 + 40) = v62;
    *(v34 + 80) = 7005;
    v65 = sub_1C1A6F67C();
    v66 = sub_1C1A6F8EC();
    v67 = swift_allocObject();
    *(v67 + 16) = v128;
    v69 = *(v34 + 16);
    v68 = *(v34 + 24);
    v70 = v129;
    *(v67 + 56) = MEMORY[0x1E69E6158];
    *(v67 + 64) = v70;
    *(v67 + 32) = v69;
    *(v67 + 40) = v68;

    sub_1C1A6F18C(v65, &dword_1C198D000, v66, "[PCUI] App store requested ad, finishing request with id: %{public}@. No ads in cache.", 86, 2, v67);

    if (v3[11])
    {
      *(v3 + OBJC_IVAR____TtC17PromotedContentUI20AppStoreDataProvider_missedOpportunity) = 1;
    }

    else
    {
      sub_1C19BE4A0(8);
    }

    v71 = sub_1C19E5F0C();
    v73 = v72;

    sub_1C1A6EB6C();
    sub_1C1A6D61C();
    v74 = objc_allocWithZone(sub_1C1A6E9EC());
    v75 = sub_1C1A6E98C();
    v76 = sub_1C1A6EA7C();

    sub_1C1A06F5C(v76, v71, v73, v56, v64, 1);
    v132();

    v77 = v135;
    sub_1C19BB0B0(0, 0, 0, v135);
  }

  sub_1C1991140(v77, &qword_1EBF03E18, &qword_1C1A74478);
  return v34;
}

uint64_t sub_1C19BC700(uint64_t a1)
{
  v36 = a1;
  v2 = sub_1C19A9E58(&qword_1EBF038A8, &unk_1C1A73990);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v35 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v35 - v5;
  v7 = sub_1C1A6D5DC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v35 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v35 - v15;
  sub_1C1A6D5CC();
  v17 = OBJC_IVAR____TtC17PromotedContentUI20AppStoreDataProvider_initializedAt;
  swift_beginAccess();
  v37 = v1;
  sub_1C1990FA8(v1 + v17, v6, &qword_1EBF038A8, &unk_1C1A73990);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1C1991140(v6, &qword_1EBF038A8, &unk_1C1A73990);
    v18 = qword_1C1A744D0[v36];
    v19 = objc_opt_self();
    v20 = OBJC_IVAR____TtC17PromotedContentUI20AppStoreDataProvider_previousGetAdAt;
    v21 = v37;
    swift_beginAccess();
    (*(v8 + 16))(v10, v21 + v20, v7);
    v22 = sub_1C1A6D52C();
    v23 = *(v8 + 8);
    v23(v10, v7);
    v24 = sub_1C1A6D52C();
    [v19 sendEventTimed:v18 startDate:v22 endDate:v24 message:0];
  }

  else
  {
    (*(v8 + 32))(v13, v6, v7);
    v25 = v36;
    v26 = qword_1C1A744B8[v36];
    v27 = objc_opt_self();
    v28 = sub_1C1A6D52C();
    v29 = sub_1C1A6D52C();
    [v27 sendEventTimed:v26 startDate:v28 endDate:v29 message:0];

    [v27 sendEventTimed:qword_1C1A744D0[v25] roundtrip:0 message:0.0];
    v23 = *(v8 + 8);
    v23(v13, v7);
    v30 = v35;
    (*(v8 + 56))(v35, 1, 1, v7);
    v31 = v37;
    swift_beginAccess();
    sub_1C19B40BC(v30, v31 + v17);
    swift_endAccess();
  }

  v32 = OBJC_IVAR____TtC17PromotedContentUI20AppStoreDataProvider_previousGetAdAt;
  v33 = v37;
  swift_beginAccess();
  (*(v8 + 24))(v33 + v32, v16, v7);
  swift_endAccess();
  return (v23)(v16, v7);
}

void sub_1C19BCB34()
{
  v1 = sub_1C19A9E58(&qword_1EBF03E18, &qword_1C1A74478);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v26 - v2;
  v4 = sub_1C1A6D62C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C1A6F67C();
  sub_1C198FB8C(0, &qword_1EDE63F30, 0x1E69E9BF8);
  v9 = sub_1C1A6F8EC();
  sub_1C1A6F18C(v8, &dword_1C198D000, v9, "[PCUI] Get next ad from daemon", 30, 2, MEMORY[0x1E69E7CC0]);

  v10 = *(v0 + 80);
  if (v10)
  {

    v11 = sub_1C1A6F64C();
    v12 = sub_1C1A6F8EC();
    sub_1C19A9E58(&unk_1EBF03FD0, &unk_1C1A73CC0);
    v13 = swift_allocObject();
    v26 = xmmword_1C1A73A30;
    *(v13 + 16) = xmmword_1C1A73A30;
    v14 = *(v10 + 16);
    sub_1C1A6DD2C();

    v15 = sub_1C1A6D5EC();
    v17 = v16;
    (*(v5 + 8))(v7, v4);
    *(v13 + 56) = MEMORY[0x1E69E6158];
    *(v13 + 64) = sub_1C199E518();
    *(v13 + 32) = v15;
    *(v13 + 40) = v17;
    sub_1C1A6F18C(v11, &dword_1C198D000, v12, "[PCUI] Requesting next cached ad from a daemon for context %{public}@", 69, 2, v13);

    v18 = *(v10 + 16);
    sub_1C19A9E58(&qword_1EBF03E20, &unk_1C1A74480);
    v19 = sub_1C1A6E34C();
    v20 = *(v19 - 8);
    v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = v26;
    *(v22 + v21) = 1;
    (*(v20 + 104))(v22 + v21, *MEMORY[0x1E69C6018], v19);
    v23 = v18;
    sub_1C1A6E96C();
  }

  else if (*(v0 + 88))
  {
    v24 = sub_1C1A6F64C();
    *&v26 = sub_1C1A6F8EC();
    sub_1C1A6F18C(v24, &dword_1C198D000, v26, "[PCUI] Trying to get an ad while we're still fetching one", 57, 2, MEMORY[0x1E69E7CC0]);
    v25 = v26;
  }

  else
  {
    (*(v5 + 56))(v3, 1, 1, v4);
    sub_1C19BB0B0(0, 0, 0, v3);
    sub_1C1991140(v3, &qword_1EBF03E18, &qword_1C1A74478);
  }
}

void sub_1C19BCF98(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v159 = a2;
  v158 = sub_1C1A6D5DC();
  v151 = *(v158 - 8);
  MEMORY[0x1EEE9AC00](v158);
  v157 = &v134 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v156 = &v134 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v155 = &v134 - v9;
  v10 = sub_1C1A6D62C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v143 = &v134 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = sub_1C19A9E58(&qword_1EBF03E30, &qword_1C1A74498);
  MEMORY[0x1EEE9AC00](v148);
  v138 = &v134 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v140 = &v134 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v154 = &v134 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v134 - v19;
  v21 = sub_1C19A9E58(&qword_1EBF03E18, &qword_1C1A74478);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v135 = &v134 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v134 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v137 = &v134 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v136 = &v134 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v134 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v142 = &v134 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v152 = (&v134 - v36);
  MEMORY[0x1EEE9AC00](v37);
  v161 = &v134 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v153 = &v134 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v134 - v42;
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v134 - v45;
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v134 - v48;
  v147 = a1;
  sub_1C1A6DD2C();
  v50 = 1;
  v149 = *(v11 + 56);
  v150 = v11 + 56;
  v149(v49, 0, 1, v10);
  v160 = v3;
  v51 = *(v3 + 80);
  v141 = v25;
  v139 = v32;
  if (v51)
  {
    v52 = *(v51 + 16);
    sub_1C1A6DD2C();

    v50 = 0;
  }

  v149(v46, v50, 1, v10);
  v53 = *(v148 + 48);
  sub_1C1990FA8(v49, v20, &qword_1EBF03E18, &qword_1C1A74478);
  sub_1C1990FA8(v46, &v20[v53], &qword_1EBF03E18, &qword_1C1A74478);
  v54 = *(v11 + 48);
  v55 = v54(v20, 1, v10);
  v145 = v54;
  v144 = v11;
  v146 = v11 + 48;
  if (v55 == 1)
  {
    sub_1C1991140(v46, &qword_1EBF03E18, &qword_1C1A74478);
    sub_1C1991140(v49, &qword_1EBF03E18, &qword_1C1A74478);
    v56 = v54;
    if (v54(&v20[v53], 1, v10) == 1)
    {
      goto LABEL_16;
    }
  }

  else
  {
    sub_1C1990FA8(v20, v43, &qword_1EBF03E18, &qword_1C1A74478);
    if (v54(&v20[v53], 1, v10) != 1)
    {
      v63 = v143;
      (*(v11 + 32))(v143, &v20[v53], v10);
      sub_1C198FD84(&qword_1EDE623B0, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      LODWORD(v134) = sub_1C1A6F38C();
      v64 = *(v11 + 8);
      v64(v63, v10);
      sub_1C1991140(v46, &qword_1EBF03E18, &qword_1C1A74478);
      sub_1C1991140(v49, &qword_1EBF03E18, &qword_1C1A74478);
      v64(v43, v10);
      sub_1C1991140(v20, &qword_1EBF03E18, &qword_1C1A74478);
      v56 = v145;
      v57 = v159;
      if (v134)
      {
        goto LABEL_17;
      }

      goto LABEL_9;
    }

    sub_1C1991140(v46, &qword_1EBF03E18, &qword_1C1A74478);
    sub_1C1991140(v49, &qword_1EBF03E18, &qword_1C1A74478);
    (*(v11 + 8))(v43, v10);
    v56 = v145;
  }

  sub_1C1991140(v20, &qword_1EBF03E30, &qword_1C1A74498);
  v57 = v159;
LABEL_9:
  v58 = v153;
  sub_1C1A6DD2C();
  v59 = 1;
  v149(v58, 0, 1, v10);
  v60 = *(v160 + 88);
  if (v60)
  {
    v61 = *(v60 + 16);
    v62 = v161;
    sub_1C1A6DD2C();

    v59 = 0;
    v20 = v154;
  }

  else
  {
    v20 = v154;
    v62 = v161;
  }

  v149(v62, v59, 1, v10);
  v65 = *(v148 + 48);
  sub_1C1990FA8(v58, v20, &qword_1EBF03E18, &qword_1C1A74478);
  sub_1C1990FA8(v62, &v20[v65], &qword_1EBF03E18, &qword_1C1A74478);
  if (v56(v20, 1, v10) == 1)
  {
    sub_1C1991140(v62, &qword_1EBF03E18, &qword_1C1A74478);
    sub_1C1991140(v58, &qword_1EBF03E18, &qword_1C1A74478);
    if (v56(&v20[v65], 1, v10) == 1)
    {
LABEL_16:
      sub_1C1991140(v20, &qword_1EBF03E18, &qword_1C1A74478);
      v57 = v159;
      goto LABEL_17;
    }

    goto LABEL_30;
  }

  v73 = v152;
  sub_1C1990FA8(v20, v152, &qword_1EBF03E18, &qword_1C1A74478);
  if (v56(&v20[v65], 1, v10) == 1)
  {
    sub_1C1991140(v161, &qword_1EBF03E18, &qword_1C1A74478);
    sub_1C1991140(v58, &qword_1EBF03E18, &qword_1C1A74478);
    (*(v144 + 8))(v73, v10);
LABEL_30:
    sub_1C1991140(v20, &qword_1EBF03E30, &qword_1C1A74498);
LABEL_31:
    v74 = sub_1C1A6F66C();
    sub_1C198FB8C(0, &qword_1EDE63F30, 0x1E69E9BF8);
    v75 = sub_1C1A6F8EC();
    sub_1C1A6F18C(v74, &dword_1C198D000, v75, "[PCUI] Getting updates for a context the App Store Module doesn't know about, ignoring.", 87, 2, MEMORY[0x1E69E7CC0], v134);
    goto LABEL_52;
  }

  v98 = v144;
  v99 = &v20[v65];
  v100 = v143;
  (*(v144 + 32))(v143, v99, v10);
  sub_1C198FD84(&qword_1EDE623B0, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
  LODWORD(v154) = sub_1C1A6F38C();
  v101 = v58;
  v102 = *(v98 + 8);
  v102(v100, v10);
  sub_1C1991140(v161, &qword_1EBF03E18, &qword_1C1A74478);
  sub_1C1991140(v101, &qword_1EBF03E18, &qword_1C1A74478);
  v102(v152, v10);
  sub_1C1991140(v20, &qword_1EBF03E18, &qword_1C1A74478);
  if ((v154 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_17:
  if (v57 >> 62)
  {
    goto LABEL_80;
  }

  for (i = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1C1A6F9EC())
  {
    v134 = v10;
    v67 = v57 & 0xC000000000000001;
    if (!i)
    {
      break;
    }

    v68 = 0;
    v69 = v57 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v67)
      {
        v70 = MEMORY[0x1C69055B0](v68, v57);
      }

      else
      {
        if (v68 >= *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_78;
        }

        v70 = *(v57 + 8 * v68 + 32);
      }

      v71 = v70;
      v72 = v68 + 1;
      if (__OFADD__(v68, 1))
      {
        break;
      }

      sub_1C1A6EB4C();

      ++v68;
      if (v72 == i)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    ;
  }

  v69 = v57 & 0xFFFFFFFFFFFFFF8;
LABEL_33:
  v153 = OBJC_IVAR____TtC17PromotedContentUI20AppStoreDataProvider_lastFetch;
  swift_beginAccess();
  v76 = 0;
  v77 = (v151 + 2);
  ++v151;
  v152 = v77;
  v154 = i;
  v10 = v156;
  while (i != v76)
  {
    v57 = v160;
    if (v67)
    {
      v78 = MEMORY[0x1C69055B0](v76, v159);
      if (__OFADD__(v76, 1))
      {
        goto LABEL_42;
      }
    }

    else
    {
      if (v76 >= *(v69 + 16))
      {
        goto LABEL_79;
      }

      v78 = *(v159 + 8 * v76 + 32);
      if (__OFADD__(v76, 1))
      {
LABEL_42:
        __break(1u);
LABEL_43:
        v88 = sub_1C1A6F66C();
        sub_1C198FB8C(0, &qword_1EDE63F30, 0x1E69E9BF8);
        v89 = sub_1C1A6F8EC();
        sub_1C1A6F18C(v88, &dword_1C198D000, v89, "[PCUI] Got an ad that will expire before the metadata expiration timer will fire (This shouldn't happen, please file a radar)", 125, 2, MEMORY[0x1E69E7CC0]);

        break;
      }
    }

    v79 = v155;
    v161 = v78;
    sub_1C1A6EACC();
    v80 = v67;
    v81 = v157;
    v82 = v158;
    (*v152)(v157, &v153[v57], v158);
    sub_1C198FB8C(0, &qword_1EDE63970, 0x1E695E000);
    sub_1C19CECF8();
    sub_1C1A6D51C();
    v83 = *v151;
    v84 = v81;
    v67 = v80;
    (*v151)(v84, v82);
    sub_1C1A6D50C();
    v86 = v85;

    v83(v10, v82);
    v87 = v79;
    i = v154;
    v83(v87, v82);
    ++v76;
    if (v86 < 0.0)
    {
      goto LABEL_43;
    }
  }

  v90 = v160;
  if (!i)
  {
    v97 = sub_1C1A6F66C();
    sub_1C198FB8C(0, &qword_1EDE63F30, 0x1E69E9BF8);
    v75 = sub_1C1A6F8EC();
    sub_1C1A6F18C(v97, &dword_1C198D000, v75, "[PCUI] Got empty promoted content collection.", 45, 2, MEMORY[0x1E69E7CC0], v134);
    goto LABEL_52;
  }

  if (v67)
  {
    v75 = MEMORY[0x1C69055B0](0, v159);
    v91 = v140;
    v92 = v142;
LABEL_48:
    v93 = OBJC_IVAR____TtC17PromotedContentUI20AppStoreDataProvider_missedOpportunity;
    v94 = v134;
    v95 = v139;
    if (*(v90 + OBJC_IVAR____TtC17PromotedContentUI20AppStoreDataProvider_missedOpportunity) == 1)
    {
      if (sub_1C1A6EABC() == -1)
      {
        v96 = 15;
      }

      else
      {
        v96 = sub_1C1A6EABC();
      }

      sub_1C19BE4A0(v96);
      *(v90 + v93) = 0;
    }

    sub_1C1A6DD2C();
    v103 = 1;
    v149(v92, 0, 1, v94);
    v104 = *(v90 + 80);
    if (v104)
    {
      v105 = *(v104 + 16);
      sub_1C1A6DD2C();

      v103 = 0;
    }

    v149(v95, v103, 1, v94);
    v106 = *(v148 + 48);
    sub_1C1990FA8(v92, v91, &qword_1EBF03E18, &qword_1C1A74478);
    sub_1C1990FA8(v95, v91 + v106, &qword_1EBF03E18, &qword_1C1A74478);
    v107 = v95;
    v108 = v92;
    v109 = v145;
    if (v145(v91, 1, v94) == 1)
    {
      sub_1C1991140(v107, &qword_1EBF03E18, &qword_1C1A74478);
      sub_1C1991140(v108, &qword_1EBF03E18, &qword_1C1A74478);
      if (v109(v91 + v106, 1, v94) == 1)
      {
        sub_1C1991140(v91, &qword_1EBF03E18, &qword_1C1A74478);
        v110 = v160;
LABEL_74:
        v75 = v75;
        sub_1C19BF774(v75, v110);

        goto LABEL_52;
      }
    }

    else
    {
      v111 = v136;
      sub_1C1990FA8(v91, v136, &qword_1EBF03E18, &qword_1C1A74478);
      if (v109(v91 + v106, 1, v94) != 1)
      {
        v121 = v144;
        v122 = v91 + v106;
        v123 = v143;
        (*(v144 + 32))(v143, v122, v94);
        sub_1C198FD84(&qword_1EDE623B0, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
        v124 = v111;
        v125 = sub_1C1A6F38C();
        v126 = v91;
        v127 = *(v121 + 8);
        v127(v123, v94);
        sub_1C1991140(v107, &qword_1EBF03E18, &qword_1C1A74478);
        sub_1C1991140(v142, &qword_1EBF03E18, &qword_1C1A74478);
        v127(v124, v94);
        v114 = v141;
        sub_1C1991140(v126, &qword_1EBF03E18, &qword_1C1A74478);
        v110 = v160;
        v112 = v138;
        v113 = v137;
        if (v125)
        {
          goto LABEL_74;
        }

        goto LABEL_65;
      }

      sub_1C1991140(v107, &qword_1EBF03E18, &qword_1C1A74478);
      sub_1C1991140(v142, &qword_1EBF03E18, &qword_1C1A74478);
      (*(v144 + 8))(v111, v94);
    }

    sub_1C1991140(v91, &qword_1EBF03E30, &qword_1C1A74498);
    v110 = v160;
    v112 = v138;
    v113 = v137;
    v114 = v141;
LABEL_65:
    sub_1C1A6DD2C();
    v115 = 1;
    v149(v113, 0, 1, v94);
    v116 = *(v110 + 88);
    if (v116)
    {
      v117 = *(v116 + 16);
      sub_1C1A6DD2C();

      v115 = 0;
    }

    v149(v114, v115, 1, v94);
    v118 = *(v148 + 48);
    sub_1C1990FA8(v113, v112, &qword_1EBF03E18, &qword_1C1A74478);
    sub_1C1990FA8(v114, v112 + v118, &qword_1EBF03E18, &qword_1C1A74478);
    v119 = v145;
    if (v145(v112, 1, v94) == 1)
    {
      sub_1C1991140(v114, &qword_1EBF03E18, &qword_1C1A74478);
      sub_1C1991140(v113, &qword_1EBF03E18, &qword_1C1A74478);
      if (v119(v112 + v118, 1, v94) == 1)
      {
        sub_1C1991140(v112, &qword_1EBF03E18, &qword_1C1A74478);
        goto LABEL_76;
      }
    }

    else
    {
      v120 = v135;
      sub_1C1990FA8(v112, v135, &qword_1EBF03E18, &qword_1C1A74478);
      if (v119(v112 + v118, 1, v94) != 1)
      {
        v128 = v144;
        v129 = v112 + v118;
        v130 = v143;
        (*(v144 + 32))(v143, v129, v94);
        sub_1C198FD84(&qword_1EDE623B0, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
        v131 = v120;
        v132 = sub_1C1A6F38C();
        v133 = *(v128 + 8);
        v133(v130, v94);
        sub_1C1991140(v141, &qword_1EBF03E18, &qword_1C1A74478);
        sub_1C1991140(v113, &qword_1EBF03E18, &qword_1C1A74478);
        v133(v131, v94);
        sub_1C1991140(v112, &qword_1EBF03E18, &qword_1C1A74478);
        if ((v132 & 1) == 0)
        {
          goto LABEL_52;
        }

LABEL_76:
        v75 = v75;
        sub_1C19BFB14(v75, v160);

        goto LABEL_52;
      }

      sub_1C1991140(v141, &qword_1EBF03E18, &qword_1C1A74478);
      sub_1C1991140(v113, &qword_1EBF03E18, &qword_1C1A74478);
      (*(v144 + 8))(v120, v94);
    }

    sub_1C1991140(v112, &qword_1EBF03E30, &qword_1C1A74498);
LABEL_52:

    return;
  }

  v91 = v140;
  v92 = v142;
  if (*(v69 + 16))
  {
    v75 = *(v159 + 32);
    goto LABEL_48;
  }

  __break(1u);
}

uint64_t sub_1C19BE4A0(uint64_t a1)
{
  v1 = objc_opt_self();
  v2 = sub_1C1A6F39C();
  sub_1C19A9E58(&qword_1EBF03E38, &unk_1C1A744A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1A73CD0;
  *(inited + 32) = 0x6F436E6F73616572;
  *(inited + 40) = 0xEA00000000006564;
  *(inited + 48) = sub_1C1A6F63C();
  *(inited + 56) = 0xD000000000000014;
  *(inited + 64) = 0x80000001C1A7B810;
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  sub_1C19B6E74(inited);
  swift_setDeallocating();
  sub_1C19A9E58(&qword_1EBF03E40, &unk_1C1A77920);
  swift_arrayDestroy();
  sub_1C198FB8C(0, &qword_1EDE62670, 0x1E69E58C0);
  v4 = sub_1C1A6F2FC();

  [v1 sendEvent:v2 customPayload:v4];

  sub_1C19BA104();
  sub_1C1A6ECCC();
}

uint64_t sub_1C19BE668()
{
  v1 = v0;
  v2 = sub_1C1A6D62C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1C1A6F67C();
  sub_1C198FB8C(0, &qword_1EDE63F30, 0x1E69E9BF8);
  v26 = sub_1C1A6F8EC();
  sub_1C19A9E58(&unk_1EBF03FD0, &unk_1C1A73CC0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1C1A73CD0;
  v7 = *(v0 + 80);
  if (v7)
  {
    v8 = *(v7 + 16);
    sub_1C1A6DD2C();

    v9 = sub_1C1A6D5EC();
    v11 = v10;
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v12 = MEMORY[0x1E69E6158];
  *(v6 + 56) = MEMORY[0x1E69E6158];
  v13 = sub_1C199E518();
  v14 = v13;
  *(v6 + 64) = v13;
  if (v11)
  {
    v15 = v9;
  }

  else
  {
    v15 = 7104878;
  }

  v16 = 0xE300000000000000;
  if (v11)
  {
    v16 = v11;
  }

  *(v6 + 32) = v15;
  *(v6 + 40) = v16;
  v17 = *(v1 + 88);
  if (!v17)
  {
    v22 = (v6 + 72);
    *(v6 + 96) = v12;
    *(v6 + 104) = v13;
    goto LABEL_13;
  }

  v18 = *(v17 + 16);
  sub_1C1A6DD2C();

  v19 = sub_1C1A6D5EC();
  v21 = v20;
  (*(v3 + 8))(v5, v2);
  v22 = (v6 + 72);
  *(v6 + 96) = v12;
  *(v6 + 104) = v14;
  if (!v21)
  {
LABEL_13:
    *v22 = 7104878;
    v21 = 0xE300000000000000;
    goto LABEL_14;
  }

  *v22 = v19;
LABEL_14:
  *(v6 + 80) = v21;
  v23 = v26;
  sub_1C1A6F18C(v27, &dword_1C198D000, v26, "[PCUI] Replacing context (%{public}@) with new context (%{public}@)", 67, 2, v6);

  *(v1 + 80) = *(v1 + 88);

  *(v1 + 88) = 0;

  v24 = *(v1 + 80);

  sub_1C1A1BF34(v24);
}

uint64_t sub_1C19BE94C()
{

  v1 = OBJC_IVAR____TtC17PromotedContentUI20AppStoreDataProvider_lastFetch;
  v2 = sub_1C1A6D5DC();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);

  sub_1C1991140(v0 + OBJC_IVAR____TtC17PromotedContentUI20AppStoreDataProvider_initializedAt, &qword_1EBF038A8, &unk_1C1A73990);
  v3(v0 + OBJC_IVAR____TtC17PromotedContentUI20AppStoreDataProvider_previousGetAdAt, v2);

  return v0;
}

uint64_t sub_1C19BEA74()
{
  sub_1C19BE94C();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AppStoreDataProvider(uint64_t a1)
{
  result = qword_1EDE618E8;
  if (!qword_1EDE618E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C19BEB20(uint64_t a1)
{
  sub_1C1A6D5DC();
  if (v1 <= 0x3F)
  {
    sub_1C199B708(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

id sub_1C19BEC44(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  [*(a3 + 64) lock];
  if (a1 >> 62)
  {
    result = sub_1C1A6F9EC();
    if (!result)
    {
      goto LABEL_7;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      goto LABEL_7;
    }
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    v11 = MEMORY[0x1C69055B0](0, a1);
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v11 = *(a1 + 32);
  }

  v12 = *(a4 + 24);
  *(a4 + 24) = v11;
  v13 = v11;

  sub_1C19BCF98(a5, a2);
LABEL_7:
  v14 = *(a3 + 64);

  return [v14 unlock];
}

void sub_1C19BED30(uint64_t a1, double a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = objc_opt_self();
    v6 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    v10[4] = sub_1C19BF700;
    v10[5] = v6;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 1107296256;
    v10[2] = sub_1C19B8FA0;
    v10[3] = &unk_1F413FCA8;
    v7 = _Block_copy(v10);

    v8 = [v5 scheduledTimerWithTimeInterval:0 repeats:v7 block:a2];
    _Block_release(v7);
    v9 = *(v4 + 16);
    *(v4 + 16) = v8;
  }
}

uint64_t sub_1C19BEE9C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C1A6F1FC();
  v18 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1C1A6F22C();
  v6 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C1A6F20C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C198FB8C(0, &qword_1EDE63F38, 0x1E69E9610);
  (*(v10 + 104))(v12, *MEMORY[0x1E69E7F98], v9);
  v13 = sub_1C1A6F72C();
  (*(v10 + 8))(v12, v9);
  aBlock[4] = sub_1C19BF708;
  aBlock[5] = a2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C198FEA4;
  aBlock[3] = &unk_1F413FCD0;
  v14 = _Block_copy(aBlock);

  sub_1C1A6F21C();
  v19 = MEMORY[0x1E69E7CC0];
  sub_1C198FD84(&qword_1EDE63F68, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1C19A9E58(&qword_1EBF03E28, &qword_1C1A74490);
  sub_1C19BF710();
  sub_1C1A6F94C();
  MEMORY[0x1C69051C0](0, v8, v5, v14);
  _Block_release(v14);

  (*(v18 + 8))(v5, v3);
  (*(v6 + 8))(v8, v17);
}

uint64_t sub_1C19BF208(uint64_t a1)
{
  v1 = sub_1C19A9E58(&qword_1EBF03E18, &qword_1C1A74478);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v9 - v2;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = sub_1C1A6F64C();
    sub_1C198FB8C(0, &qword_1EDE63F30, 0x1E69E9BF8);
    v7 = sub_1C1A6F8EC();
    sub_1C1A6F18C(v6, &dword_1C198D000, v7, "[PCUI] Metadata expiration timer fired.", 39, 2, MEMORY[0x1E69E7CC0]);

    [*(v5 + 64) lock];
    v8 = sub_1C1A6D62C();
    (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
    sub_1C19BB0B0(1, 0, 0, v3);
    sub_1C1991140(v3, &qword_1EBF03E18, &qword_1C1A74478);
    [*(v5 + 64) unlock];
  }

  return result;
}

uint64_t sub_1C19BF3D0()
{
  v1 = sub_1C19A9E58(&qword_1EBF038A8, &unk_1C1A73990);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v27 = &v26 - v2;
  v3 = sub_1C19A9E58(&qword_1EBF03E18, &qword_1C1A74478);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v26 = &v26 - v4;
  v5 = sub_1C1A6D5DC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v26 - v10;
  sub_1C1A6D5CC();
  v12 = OBJC_IVAR____TtC17PromotedContentUI20AppStoreDataProvider_lastFetch;
  swift_beginAccess();
  v13 = *(v6 + 16);
  v28 = v0;
  v13(v8, v0 + v12, v5);
  sub_1C1A6D50C();
  v15 = v14;
  v16 = *(v6 + 8);
  v16(v8, v5);
  v16(v11, v5);
  sub_1C198FB8C(0, &qword_1EDE63970, 0x1E695E000);
  v17 = COERCE_DOUBLE(sub_1C19CECF8());
  if ((v18 & 1) == 0)
  {
    if (v15 <= v17)
    {
      goto LABEL_3;
    }

LABEL_5:
    v23 = sub_1C1A6D62C();
    v24 = v26;
    (*(*(v23 - 8) + 56))(v26, 1, 1, v23);
    sub_1C19BB0B0(0, 0, 0, v24);
    v20 = &qword_1EBF03E18;
    v21 = &qword_1C1A74478;
    v22 = v24;
    return sub_1C1991140(v22, v20, v21);
  }

  if (v15 > 900.0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v19 = v27;
  v13(v27, v28 + v12, v5);
  (*(v6 + 56))(v19, 0, 1, v5);
  sub_1C19BAC5C(v19);
  v20 = &qword_1EBF038A8;
  v21 = &unk_1C1A73990;
  v22 = v19;
  return sub_1C1991140(v22, v20, v21);
}

unint64_t sub_1C19BF710()
{
  result = qword_1EDE63F50;
  if (!qword_1EDE63F50)
  {
    sub_1C19A9F04(&qword_1EBF03E28, &qword_1C1A74490);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE63F50);
  }

  return result;
}

uint64_t sub_1C19BF774(void *a1, uint64_t a2)
{
  [a1 serverUnfilledReason];
  v4 = sub_1C1A6DF6C();
  if (v4 == sub_1C1A6DF6C())
  {
    v5 = sub_1C1A6F65C();
    sub_1C198FB8C(0, &qword_1EDE63F30, 0x1E69E9BF8);
    v6 = sub_1C1A6F8EC();
    sub_1C1A6F18C(v5, &dword_1C198D000, v6, "[PCUI] Got ad for current context.", 34, 2, MEMORY[0x1E69E7CC0]);

    v7 = *(a2 + 80);
    if (v7)
    {
      *(v7 + 32) = a1;

      v8 = a1;

      swift_unknownObjectRelease();
      v9 = *(a2 + 80);
    }

    else
    {
      v9 = 0;
    }

    sub_1C1A1BF34(v9);
  }

  else
  {
    [a1 serverUnfilledReason];
    v10 = sub_1C1A6DF6C();
    if (v10 == sub_1C1A6DF6C())
    {
      v11 = sub_1C1A6F65C();
      sub_1C198FB8C(0, &qword_1EDE63F30, 0x1E69E9BF8);
      v12 = sub_1C1A6F8EC();
      sub_1C1A6F18C(v11, &dword_1C198D000, v12, "[PCUI] Got noAdsInCache for current context.", 44, 2, MEMORY[0x1E69E7CC0]);
    }

    else
    {
      v13 = sub_1C1A6F66C();
      sub_1C198FB8C(0, &qword_1EDE63F30, 0x1E69E9BF8);
      v14 = sub_1C1A6F8EC();
      sub_1C19A9E58(&unk_1EBF03FD0, &unk_1C1A73CC0);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_1C1A73A30;
      [a1 serverUnfilledReason];
      v16 = sub_1C1A6DF6C();
      v17 = MEMORY[0x1E69E65A8];
      *(v15 + 56) = MEMORY[0x1E69E6530];
      *(v15 + 64) = v17;
      *(v15 + 32) = v16;
      sub_1C1A6F18C(v13, &dword_1C198D000, v14, "[PCUI] Got error for current context: %d", v21);
    }

    *(a2 + 80) = 0;

    v18 = sub_1C1A6F64C();
    sub_1C198FB8C(0, &qword_1EDE63F30, 0x1E69E9BF8);
    v19 = sub_1C1A6F8EC();
    sub_1C1A6F18C(v18, &dword_1C198D000, v19, "[PCUI] Removing session", 23, 2, MEMORY[0x1E69E7CC0]);

    sub_1C198FB8C(0, &qword_1EDE63970, 0x1E695E000);
    sub_1C19CF178(0);
  }
}

uint64_t sub_1C19BFB14(void *a1, uint64_t a2)
{
  v4 = sub_1C19A9E58(&qword_1EBF038A8, &unk_1C1A73990);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v32 - v5;
  v7 = sub_1C1A6D5DC();
  v8 = *(v7 - 8);
  *&v9 = MEMORY[0x1EEE9AC00](v7).n128_u64[0];
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 serverUnfilledReason];
  v12 = sub_1C1A6DF6C();
  if (v12 == sub_1C1A6DF6C())
  {
    v13 = sub_1C1A6F65C();
    sub_1C198FB8C(0, &qword_1EDE63F30, 0x1E69E9BF8);
    v14 = sub_1C1A6F8EC();
    sub_1C1A6F18C(v13, &dword_1C198D000, v14, "[PCUI] Got ad for fetching context.", 35, 2, MEMORY[0x1E69E7CC0]);

    [*(a2 + 16) invalidate];
    sub_1C1A6D5CC();
    v15 = OBJC_IVAR____TtC17PromotedContentUI20AppStoreDataProvider_lastFetch;
    swift_beginAccess();
    v16 = *(v8 + 40);
    v16(a2 + v15, v11, v7);
    swift_endAccess();
    (*(v8 + 56))(v6, 1, 1, v7);
    sub_1C19BAC5C(v6);
    sub_1C1991140(v6, &qword_1EBF038A8, &unk_1C1A73990);
    v17 = *(a2 + 88);
    if (v17)
    {
      *(v17 + 32) = a1;

      v18 = a1;

      swift_unknownObjectRelease();
      v19 = *(a2 + 88);
      if (v19)
      {
        (*(v8 + 16))(v11, a2 + v15, v7);
        v20 = OBJC_IVAR____TtC17PromotedContentUI27AppStoreDataProviderSession_lastFetch;
        swift_beginAccess();

        v16(v19 + v20, v11, v7);
        swift_endAccess();
      }
    }

    return sub_1C19BE668();
  }

  else
  {
    [a1 serverUnfilledReason];
    v22 = sub_1C1A6DF6C();
    if (v22 == sub_1C1A6DF6C())
    {
      v23 = sub_1C1A6F65C();
      sub_1C198FB8C(0, &qword_1EDE63F30, 0x1E69E9BF8);
      v24 = sub_1C1A6F8EC();
      sub_1C1A6F18C(v23, &dword_1C198D000, v24, "[PCUI] Got noAdsInCache for fetching context.", 45, 2, MEMORY[0x1E69E7CC0]);
    }

    else
    {
      v25 = sub_1C1A6F66C();
      sub_1C198FB8C(0, &qword_1EDE63F30, 0x1E69E9BF8);
      v26 = sub_1C1A6F8EC();
      sub_1C19A9E58(&unk_1EBF03FD0, &unk_1C1A73CC0);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_1C1A73A30;
      [a1 serverUnfilledReason];
      v28 = sub_1C1A6DF6C();
      v29 = MEMORY[0x1E69E65A8];
      *(v27 + 56) = MEMORY[0x1E69E6530];
      *(v27 + 64) = v29;
      *(v27 + 32) = v28;
      sub_1C1A6F18C(v25, &dword_1C198D000, v26, "[PCUI] Got error for fetching context: %d", v32);
    }

    [a1 serverUnfilledReason];
    v30 = sub_1C1A6DF6C();
    if (v30 != sub_1C1A6DF6C())
    {
      sub_1C1A6D5CC();
      v31 = OBJC_IVAR____TtC17PromotedContentUI20AppStoreDataProvider_lastFetch;
      swift_beginAccess();
      (*(v8 + 40))(a2 + v31, v11, v7);
      swift_endAccess();
    }

    *(a2 + 88) = 0;
  }
}

uint64_t sub_1C19C0030()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

double sub_1C19C00EC()
{
  v1 = sub_1C19C224C(0.0, 0.0, 1.79769313e308, 1.79769313e308);
  v2 = sub_1C1A6F39C();
  [v1 setText_];

  v3 = v1;
  [v3 sizeToFit];
  [v3 frame];
  v5 = v4;

  [*(v0 + OBJC_IVAR____TtC17PromotedContentUI24GroupedSponsorshipAdView_imageViewWidthConstraint) constant];
  v7 = v5 + 4.0 + v6;
  [*(v0 + OBJC_IVAR____TtC17PromotedContentUI24GroupedSponsorshipAdView_textLabel) bounds];
  CGRectGetHeight(v9);
  [*(v0 + OBJC_IVAR____TtC17PromotedContentUI24GroupedSponsorshipAdView_imageViewHeightConstraint) constant];
  return v7;
}

id sub_1C19C0200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a4;
  v47 = a3;
  v43 = a1;
  ObjectType = swift_getObjectType();
  v6 = sub_1C1A6D48C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v45 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v40 - v10;
  v41 = &v40 - v10;
  v12 = sub_1C19A9E58(&unk_1EBF050D0, &qword_1C1A74530);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v40 - v13;
  v42 = &v40 - v13;
  v15 = OBJC_IVAR____TtC17PromotedContentUI24GroupedSponsorshipAdView_textLabel;
  v16 = sub_1C19C224C(0.0, 0.0, 0.0, 0.0);
  [v16 setHidden_];
  [v16 setTranslatesAutoresizingMaskIntoConstraints_];

  *&v4[v15] = v16;
  v17 = OBJC_IVAR____TtC17PromotedContentUI24GroupedSponsorshipAdView_imageView;
  v18 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  [v18 setContentMode_];
  [v18 setOpaque_];
  [v18 setAccessibilityIgnoresInvertColors_];
  [v18 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v17] = v18;
  v19 = &v4[OBJC_IVAR____TtC17PromotedContentUI24GroupedSponsorshipAdView_text];
  *v19 = v43;
  v19[1] = a2;
  v20 = [v18 widthAnchor];

  v21 = [v20 constraintEqualToConstant_];
  *&v4[OBJC_IVAR____TtC17PromotedContentUI24GroupedSponsorshipAdView_imageViewWidthConstraint] = v21;
  v22 = [*&v4[v17] heightAnchor];
  v23 = [v22 constraintEqualToConstant_];

  *&v4[OBJC_IVAR____TtC17PromotedContentUI24GroupedSponsorshipAdView_imageViewHeightConstraint] = v23;
  v48.receiver = v4;
  v48.super_class = ObjectType;
  v24 = objc_msgSendSuper2(&v48, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_1C19C067C();
  v25 = sub_1C1A6F5AC();
  (*(*(v25 - 8) + 56))(v14, 1, 1, v25);
  v26 = *(v7 + 16);
  v27 = v11;
  v28 = v6;
  v26(v27, v47, v6);
  v30 = v45;
  v29 = v46;
  v26(v45, v46, v28);
  sub_1C1A6F58C();
  v31 = sub_1C1A6F57C();
  v32 = *(v7 + 80);
  v33 = (v32 + 40) & ~v32;
  v34 = (v8 + v32 + v33) & ~v32;
  v35 = swift_allocObject();
  v36 = MEMORY[0x1E69E85E0];
  *(v35 + 2) = v31;
  *(v35 + 3) = v36;
  *(v35 + 4) = v24;
  v37 = *(v7 + 32);
  v37(&v35[v33], v41, v28);
  v37(&v35[v34], v30, v28);
  sub_1C1A40E34(0, 0, v42, &unk_1C1A74540, v35);

  v38 = *(v7 + 8);
  v38(v29, v28);
  v38(v47, v28);
  return v24;
}