void sub_1B2111304(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B2111640();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  type metadata accessor for SchedulingWatchdog();
  v10 = sub_1B21114CC();
  if (!v10)
  {
    MEMORY[0x1EEE9AC00](0);
    v17 = v5;
    v18 = v3;
    v19 = v9;
    v20 = v7;
    sub_1B211226C(v14, v16);
    goto LABEL_5;
  }

  v11 = v10;
  v12 = sub_1B211A144(*(v3 + 16));
  if ((v12 & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](v12);
    v16[0] = v5;
    v16[1] = v11;
    v17 = v3;
    v18 = v9;
    v19 = v7;
    sub_1B211226C(v13, &v15);

LABEL_5:
    sub_1B2112FDC();
    return;
  }

  sub_1B2112A88();
  sub_1B2252EC0();
  __break(1u);
}

uint64_t DatabaseWriter.write<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[2] = a3;
  v6[3] = a4;
  v6[4] = a5;
  v6[5] = a1;
  v6[6] = a2;
  return (*(a5 + 24))(sub_1B2112430, v6, a4, a3);
}

uint64_t sub_1B21114CC()
{
  sub_1B2111770();
  if (qword_1ED85E6E8 != -1)
  {
    sub_1B211788C(&qword_1ED85E6E8);
  }

  sub_1B22529E0();
  return v1;
}

void sub_1B2111614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  sub_1B2161FE4();
}

uint64_t sub_1B21116A4(uint64_t a1, uint64_t a2)
{

  return swift_getAssociatedTypeWitness();
}

uint64_t sub_1B21116BC()
{

  return sub_1B2252250();
}

uint64_t sub_1B211172C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  return sub_1B2122400(va, v12, v13);
}

uint64_t sub_1B2111758(uint64_t a1)
{

  return swift_allocObject();
}

unint64_t sub_1B2111770()
{
  result = qword_1ED85E778;
  if (!qword_1ED85E778)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED85E778);
  }

  return result;
}

void *sub_1B2111814(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  return static TableRecord.all()(va);
}

uint64_t sub_1B2111854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_1B212C6C8(v9, a4, v10, a7, v11);
}

uint64_t sub_1B21118D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52)
{

  return sub_1B213A774(&STACK[0x210], &a52);
}

uint64_t sub_1B21118E8()
{

  return sub_1B211CF8C(v0);
}

uint64_t sub_1B2111910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  v4[10] = a1;
  v4[11] = a2;
  v4[7] = 0;
  v4[8] = 0;

  return sub_1B211EE68(va, (v4 + 2));
}

uint64_t sub_1B2111980()
{
}

uint64_t sub_1B21119A4()
{

  return swift_getWitnessTable();
}

__n128 sub_1B2111A68()
{
  v5 = *&STACK[0x280];
  *&STACK[0x510] = *&STACK[0x290];
  *&STACK[0x538] = v5;
  *&STACK[0x551] = *&STACK[0x260];
  v6 = *&STACK[0x230];
  *&STACK[0x579] = *&STACK[0x220];
  STACK[0x520] = STACK[0x2A0];
  STACK[0x528] = v3;
  STACK[0x530] = v2;
  STACK[0x548] = v1;
  LOBYTE(STACK[0x550]) = 0;
  STACK[0x560] = STACK[0x26F];
  STACK[0x568] = v0;
  STACK[0x570] = v4;
  LOBYTE(STACK[0x578]) = 0;
  *&STACK[0x589] = v6;
  *&STACK[0x599] = *&STACK[0x240];
  result = *&STACK[0x249];
  *&STACK[0x5A2] = *&STACK[0x249];
  return result;
}

void sub_1B2111B80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  sub_1B2116B10(0, v7, 0, a4, a5, a6, a7);
}

void sub_1B2111C08(uint64_t a1)
{

  sub_1B212A6B4();
}

uint64_t sub_1B2111C54()
{
  v2 = *(v0 - 208);
  *(v0 - 160) = *(v0 - 224);
  *(v0 - 144) = v2;
  v3 = *(v0 - 176);
  *(v0 - 128) = *(v0 - 192);
  *(v0 - 112) = v3;

  return sub_1B218450C(v0 - 160);
}

uint64_t sub_1B2111CE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v24 = a7;
  v26 = sub_1B2252B00();
  v13 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v23 - v17;
  sub_1B21117B4(&v23 - v17, 1, 1, a5);
  v34 = 3;
  v27 = a4;
  v28 = a5;
  v29 = a6;
  v30 = v18;
  v31 = a2;
  v32 = a3;
  v33 = a1;
  v19 = v25;
  Database.inTransaction(_:_:)(&v34, sub_1B2123404);
  if (v19)
  {
    return (*(v13 + 8))(v18, v26);
  }

  v21 = v24;
  v22 = v26;
  (*(v13 + 16))(v15, v18, v26);
  result = sub_1B2122A98(v15, 1, a5);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(a5 - 8) + 32))(v21, v15, a5);
    return (*(v13 + 8))(v18, v22);
  }

  return result;
}

uint64_t sub_1B2111ED8(uint64_t a1)
{

  return swift_arrayInitWithCopy();
}

void *sub_1B2111F2C@<X0>(void *x8_0@<X8>)
{

  return static TableRecord.all()(x8_0);
}

uint64_t sub_1B2111F70@<X0>(uint64_t x8_0@<X8>)
{

  return sub_1B2135E94(v3, v4, x8_0);
}

uint64_t sub_1B2112034(uint64_t a1)
{

  return sub_1B2252EC0();
}

void sub_1B2112060()
{

  JUMPOUT(0x1B2741EB0);
}

uint64_t sub_1B21120AC()
{

  return sub_1B2251BC0();
}

uint64_t sub_1B2112130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  sub_1B2112328(a1, a2);
  sub_1B2112328(v18, v21);
  sub_1B2112328(v17, v19);

  return sub_1B2112328(v20, a17);
}

void sub_1B21121A0()
{

  JUMPOUT(0x1B2741EB0);
}

uint64_t sub_1B21121D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v10 = a10[3];
  sub_1B21139A0(a10, v10);
  return v10;
}

void sub_1B2112208()
{

  JUMPOUT(0x1B2741F40);
}

uint64_t sub_1B211226C(uint64_t a1, uint64_t a2)
{

  return sub_1B2252A50();
}

uint64_t sub_1B211228C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  return sub_1B2122784(a5, va);
}

uint64_t sub_1B21122BC()
{
}

uint64_t sub_1B2112328(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

void sub_1B2112358(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = *(a1 + 16);
  a2(v4);
  if (v2)
  {
    v5 = sub_1B211790C();
    sub_1B21343E4(v5, v6, v7, v8, v9, a1);
  }

  else if (*(v4 + OBJC_IVAR____TtC12GRDBInternal8Database_configuration + 41) & 1) == 0 && (Database.isInsideTransaction.getter())
  {
    sub_1B2112A88();
    sub_1B2252EC0();
    __break(1u);
  }
}

void Database.inTransaction(_:_:)(uint64_t a1, uint64_t (*a2)(void))
{
  sub_1B2111748();
  Database.beginTransaction(_:)(v5);
  if (!v6)
  {
    v7 = OBJC_IVAR____TtC12GRDBInternal8Database_isInsideTransactionBlock;
    sub_1B2113BE8();
    if (a2())
    {
      v8 = 0;
    }

    else
    {
      sub_1B2115ADC();
      sub_1B21130FC();
      sub_1B2119EFC(v10);
      *(v2 + v7) = v3;
      sub_1B213CEB0();
      Database.commit()();
      if (!v11)
      {
        goto LABEL_9;
      }

      v8 = v11;
    }

    Database.rollback()();
    if (v9)
    {
      if (v8)
      {
      }
    }

    else if (!v8)
    {
LABEL_9:
      *(v2 + v7) = v3;
      return;
    }

    swift_willThrow();
    goto LABEL_9;
  }
}

void sub_1B2112554(char *a1@<X0>, void *a2@<X8>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>)
{
  v6 = a1;
  v7 = *(a1 + 2);
  v52 = MEMORY[0x1E69E7CC0];
  sub_1B2114114(0, v7, 0, a3, a4, a5, a6);
  v8 = v52;
  v44 = v7;
  v45 = v6;
  if (v7)
  {
    v9 = *(v6 + 2);
    v10 = (v6 + 32);
    while (v9)
    {
      v6 = &unk_1B2259360;
      sub_1B211E17C(v10, v51, &qword_1EB7A0E30, &unk_1B2259360);
      sub_1B211E17C(v51, v49, &qword_1EB7A0E30, &unk_1B2259360);
      v11 = v50;
      if (v50)
      {
        sub_1B21139A0(v49, v50);
        v12 = sub_1B2115DCC();
        v13(v12);
        v15 = v46;
        v14 = v47;
        v16 = v48;
        sub_1B2113208(v49);
      }

      else
      {
        sub_1B2122B98(v49);
        v15 = 0;
        v14 = 0;
        v16 = 4;
      }

      sub_1B2122B98(v51);
      sub_1B2117AE8();
      if (v18)
      {
        v20 = sub_1B211156C(v17);
        sub_1B2114114(v20, v11, 1, v21, v22, v23, v24);
        v8 = v52;
      }

      *(v8 + 16) = v11;
      v19 = v8 + 24 * &unk_1B2259360;
      *(v19 + 32) = v15;
      *(v19 + 40) = v14;
      *(v19 + 48) = v16;
      v10 += 40;
      --v9;
      if (!--v7)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    v26 = v44;
    v25 = v45;
    for (i = &v45[40 * v44 + 32]; ; i += 40)
    {
      v28 = *(v25 + 2);
      if (v26 == v28)
      {

        v42 = MEMORY[0x1E69E7CC8];
        *a2 = v8;
        a2[1] = v42;
        return;
      }

      if (v26 >= v28)
      {
        break;
      }

      sub_1B211E17C(i, v51, &qword_1EB7A0E30, &unk_1B2259360);
      sub_1B211E17C(v51, v49, &qword_1EB7A0E30, &unk_1B2259360);
      v29 = v50;
      if (v50)
      {
        sub_1B21139A0(v49, v50);
        v30 = sub_1B2115DCC();
        v31(v30);
        v32 = v46;
        v33 = v47;
        v34 = v48;
        sub_1B2113208(v49);
      }

      else
      {
        sub_1B2122B98(v49);
        v32 = 0;
        v33 = 0;
        v34 = 4;
      }

      sub_1B2122B98(v51);
      sub_1B2117AE8();
      if (v18)
      {
        v37 = sub_1B211156C(v35);
        sub_1B2114114(v37, v29, 1, v38, v39, v40, v41);
        v8 = v52;
      }

      *(v8 + 16) = v29;
      v36 = v8 + 24 * v6;
      *(v36 + 32) = v32;
      *(v36 + 40) = v33;
      *(v36 + 48) = v34;
      ++v26;
      v25 = v45;
    }

    __break(1u);
  }

  __break(1u);
}

size_t sub_1B21127CC(void *a1)
{
  result = j__malloc_size(a1);
  a1[2] = v1;
  a1[3] = 2 * ((result - 32) / v2);
  return result;
}

void *sub_1B2112878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t __dst)
{

  return memcpy(&__dst, &STACK[0x220], 0xB8uLL);
}

uint64_t *sub_1B2112894(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  return sub_1B212DB30(a1, v4, v3, va);
}

void *sub_1B21128B8(uint64_t a1)
{

  return FetchRequest.databaseRegion(_:)(v2, v1, a1, v3);
}

void sub_1B21128F8(uint64_t a1@<X8>)
{
  *a1 = v1;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

uint64_t sub_1B2112920()
{

  return sub_1B2252560();
}

uint64_t sub_1B2112968(uint64_t a1)
{

  return swift_getWitnessTable();
}

uint64_t sub_1B2112A08(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t sub_1B2112A24(uint64_t a1)
{

  return swift_once();
}

void sub_1B2112AE8()
{

  JUMPOUT(0x1B2743C50);
}

uint64_t sub_1B2112B10()
{

  return sub_1B216EC78(v1 > 1, v0, 1);
}

uint64_t sub_1B2112B34@<X0>(uint64_t a1@<X8>)
{

  return sub_1B21DAEF8(v1, v2, v3, a1, 1);
}

void sub_1B2112B5C()
{

  JUMPOUT(0x1B2741EB0);
}

uint64_t sub_1B2112B88()
{
  sub_1B2112F4C(*(v0 - 312), *(v0 - 424));
  sub_1B2112F4C(*(v0 - 384), *(v0 - 392));
  sub_1B2112F4C(*(v0 - 296), *(v0 - 304));
  sub_1B2112F4C(*(v0 - 416), *(v0 - 408));
  v1 = *(v0 - 400);
  v2 = *(v0 - 440);

  return sub_1B2112F4C(v1, v2);
}

void sub_1B2112C8C()
{

  sub_1B214400C();
}

uint64_t sub_1B2112CB0()
{
  *v0 = 1;
  *(v0 + 8) = 0;
  *(v0 + 16) = 0;
  *(v0 + 23) = 0;
  *(v0 + 32) = v1;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  *(v0 + 64) = 2;
  *(v0 + 72) = 0;
  *(v0 + 80) = 0;
  *(v0 + 88) = -1;
  *(v0 + 96) = 5;

  return sub_1B2252110();
}

void sub_1B2112D00()
{

  JUMPOUT(0x1B2741EB0);
}

uint64_t sub_1B2112D24()
{

  return swift_willThrow();
}

__n128 *sub_1B2112D48(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[3].n128_u64[1] = v4;
  result[4].n128_u64[0] = v3;
  result[2].n128_u64[0] = v2;
  result[6].n128_u64[0] = v4;
  result[6].n128_u64[1] = v3;
  return result;
}

void *sub_1B2112DCC()
{

  return memcpy(&STACK[0x3D8], &STACK[0x6C8], 0xB8uLL);
}

uint64_t sub_1B2112DE8(uint64_t a1, uint64_t a2)
{
  *(a2 + 24) = v3;
  *(a2 + 32) = v2;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;

  return swift_willThrow();
}

uint64_t sub_1B2112E08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{

  return swift_beginAccess();
}

__n128 sub_1B2112E34()
{
  *(v2 - 112) = v0;
  *(v2 - 111) = *(v1 + 81);
  result = *(v1 + 96);
  *(v2 - 96) = result;
  return result;
}

uint64_t sub_1B2112E4C(unint64_t *a1)
{

  return sub_1B211AB74(a1, v1, v2, &protocol conformance descriptor for SQLRequest<A>);
}

uint64_t sub_1B2112F20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15, uint64_t a17, __int128 a18, __int128 a19, char a20)
{
  *(&a15 + 1) = a1;
  a17 = a2;
  a18 = 0u;
  a19 = 0u;
  a20 = 0;

  return sub_1B2202FD4(&a15);
}

uint64_t sub_1B2112F4C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1B2112F5C(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_1B2112FB8()
{

  return swift_unownedRetainStrong();
}

uint64_t sub_1B2113000()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_1B2113040(uint64_t a1)
{

  return sub_1B2252E70();
}

void sub_1B211306C()
{

  JUMPOUT(0x1B2741EB0);
}

uint64_t sub_1B21130B8(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_getAssociatedTypeWitness();
}

void *sub_1B2113118()
{

  return memcpy((v0 + 16), (v0 + 184), 0xA2uLL);
}

void sub_1B2113134()
{

  JUMPOUT(0x1B2741EB0);
}

uint64_t sub_1B21131B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{

  return sub_1B22524A0();
}

void sub_1B21131DC(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

uint64_t sub_1B2113208(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

unint64_t sub_1B2113254@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>, __n128 a3@<Q0>)
{
  result = static Int.fromDatabaseValue(_:)(a2, a3);
  *a1 = result;
  *(a1 + 8) = v5 & 1;
  return result;
}

void sub_1B2113284()
{
  sub_1B2111640();
  v1 = v0;
  v3 = v2;
  v25[1] = v4;
  v26 = v5;
  v7 = v6;
  v25[0] = v8;
  v9 = sub_1B2252B00();
  sub_1B211280C();
  v11 = v10;
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v12);
  v14 = v25 - v13;
  v16 = *v7;
  v15 = v7[1];
  v17 = *(v7 + 16);
  v30[8] = v16;
  v30[9] = v15;
  v31 = v17;
  v18 = sub_1B211A314();
  v19(v18, v3, v1);
  if (sub_1B2122A98(v14, 1, v3) == 1)
  {
    v20 = (*(v11 + 8))(v14, v9);
    v26(v30, v20);
    v27 = v16;
    v28 = v15;
    v29 = v17;
    sub_1B21A2FC0();
    swift_allocError();
    sub_1B211D7D8();
    sub_1B2183238(v3, v21, v22, v23);
    sub_1B2111C54();
    swift_willThrow();
  }

  else
  {
    sub_1B2111808();
    (*(v24 + 32))(v25[0], v14, v3);
  }

  sub_1B2112FDC();
}

unint64_t static Int.fromDatabaseValue(_:)(uint64_t a1, __n128 a2)
{
  result = *a1;
  v4 = *(a1 + 16);
  if (v4)
  {
    if (v4 != 1 || *&result < -9.22337204e18 || *&result >= 9.22337204e18)
    {
      *&result = COERCE_DOUBLE(sub_1B2111FA8());
      return result;
    }

    if ((~result & 0x7FF0000000000000) != 0)
    {
      if (*&result > -9.22337204e18)
      {
        *&result = COERCE_DOUBLE(sub_1B2122188(*&result));
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

void sub_1B211349C()
{
  sub_1B2111640();
  v5 = v1;
  v7 = v6;
  v8 = v6[8];
  if (!v8)
  {
    v11 = v7[5];
    v12 = v7[6];
    v21 = v2;
    v22 = v0;
    v28 = v4;
    v19 = v3;
    sub_1B21139A0(v7 + 2, v11);
    v13 = (*(v12 + 48))(&v25, v5, v11, v12);
    v20 = &v18;
    v15 = v25;
    v14 = v26;
    v16 = v27;
    v23[0] = v25;
    v23[1] = v26;
    v24 = v27;
    v17 = MEMORY[0x1EEE9AC00](v13);
    v28(v23, v19, v17);
    sub_1B2113A44(v15, v14, v16);
    goto LABEL_6;
  }

  if (v1 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v1 <= 0x7FFFFFFF)
  {
    v9 = MEMORY[0x1EEE9AC00](v8);
    v10(v9);
LABEL_6:
    sub_1B2112FDC();
    return;
  }

  __break(1u);
}

void sub_1B2113624(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int128 a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16, __int128 __dst, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  sub_1B2122614();
  a30 = v31;
  a31 = v32;
  sub_1B211D530();
  a19 = *MEMORY[0x1E69E9840];
  v34 = sqlite3_column_count(v33);
  if ((v34 & 0x80000000) != 0)
  {
    __break(1u);
LABEL_23:
    __break(1u);
  }

  if (v34)
  {
    v39 = v34;
    a18 = MEMORY[0x1E69E7CC0];
    sub_1B2114114(0, v34, 0, v35, v36, v37, v38);
    v40 = 0;
    v41 = a18;
    while (2)
    {
      v42 = sub_1B224B29C();
      v44 = 0.0;
      v45 = 0;
      v46 = 4;
      switch(sqlite3_column_type(v42, v43))
      {
        case 1:
          v47 = sub_1B224B29C();
          v44 = COERCE_DOUBLE(sqlite3_column_int64(v47, v48));
          v45 = 0;
          v46 = 0;
          goto LABEL_18;
        case 2:
          v58 = sub_1B224B29C();
          v45 = 0;
          v44 = sqlite3_column_double(v58, v59);
          v46 = 1;
          goto LABEL_18;
        case 3:
          v60 = sub_1B224B29C();
          if (!sqlite3_column_text(v60, v61))
          {
            goto LABEL_23;
          }

          v44 = COERCE_DOUBLE(sub_1B2252400());
          v45 = v62;
          v46 = 2;
LABEL_18:
          a18 = v41;
          v63 = *(v41 + 16);
          if (v63 >= *(v41 + 24) >> 1)
          {
            sub_1B2126410();
            sub_1B2114114(v65, v66, v67, v68, v69, v70, v71);
            v41 = a18;
          }

          ++v40;
          *(v41 + 16) = v63 + 1;
          v64 = v41 + 24 * v63;
          *(v64 + 32) = v44;
          *(v64 + 40) = v45;
          *(v64 + 48) = v46;
          if (v39 == v40)
          {
            break;
          }

          continue;
        case 4:
          v49 = sub_1B224B29C();
          v51 = sqlite3_column_blob(v49, v50);
          if (v51 && (v52 = v51, v53 = sub_1B224B29C(), (v55 = sqlite3_column_bytes(v53, v54)) != 0))
          {
            v56 = v55;
            if (v55 < 15)
            {
              *(&__dst + 6) = 0;
              *&__dst = 0;
              BYTE14(__dst) = v55;
              memcpy(&__dst, v52, v55);
              v44 = *&__dst;
              v45 = a14 & 0xF00000000000000 | DWORD2(__dst) | ((WORD6(__dst) | (BYTE14(__dst) << 16)) << 32);
              v46 = 3;
              a14 = v45;
            }

            else
            {
              sub_1B2251BF0();
              swift_allocObject();
              if (v56 == 0x7FFFFFFF)
              {
                v57 = sub_1B2251BB0();
                sub_1B2251DB0();
                v44 = COERCE_DOUBLE(swift_allocObject());
                *(*&v44 + 16) = xmmword_1B226BA10;
                v45 = v57 | 0x8000000000000000;
              }

              else
              {
                *&v44 = v56 << 32;
                v45 = sub_1B2251BB0() | 0x4000000000000000;
              }

              v46 = 3;
            }
          }

          else
          {
            v44 = 0.0;
            v46 = 3;
            v45 = 0xC000000000000000;
          }

          goto LABEL_18;
        case 5:
          goto LABEL_18;
        default:
          *&__dst = 0;
          *(&__dst + 1) = 0xE000000000000000;
          sub_1B2252CD0();

          *&__dst = 0xD00000000000001FLL;
          *(&__dst + 1) = 0x80000001B226D040;
          v72 = sub_1B2252FD0();
          MEMORY[0x1B2741EB0](v72);

          sub_1B2252EC0();
          __break(1u);
          JUMPOUT(0x1B2113964);
      }

      break;
    }
  }

  sub_1B2138CAC();
  sub_1B2115CEC();
}

void *sub_1B21139A0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_1B21139E4@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(a2 + 16) > result)
  {
    v3 = a2 + 24 * result;
    v4 = *(v3 + 32);
    v5 = *(v3 + 40);
    *a3 = v4;
    *(a3 + 8) = v5;
    v6 = *(v3 + 48);
    *(a3 + 16) = v6;
    return sub_1B2113A20(v4, v5, v6);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B2113A20(uint64_t a1, unint64_t a2, char a3)
{
  if (a3 == 3)
  {
    return sub_1B2126638(a1, a2);
  }

  if (a3 == 2)
  {
  }

  return a1;
}

uint64_t sub_1B2113A44(uint64_t a1, unint64_t a2, char a3)
{
  if (a3 == 3)
  {
    return sub_1B21267A8(a1, a2);
  }

  if (a3 == 2)
  {
  }

  return a1;
}

Swift::Void __swiftcall DatabasePool.releaseMemory()()
{
  sub_1B2113C20(sub_1B2113FCC, 0);
  if (*(v0 + 24))
  {

    sub_1B2120064(sub_1B212044C, v0);
  }
}

uint64_t sub_1B2113B10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{

  return sub_1B21619D8(a5, a6);
}

uint64_t sub_1B2113B5C@<X0>(uint64_t a1@<X8>)
{
  *v1 = v2;
  v1[1] = v4;
  v1[2] = ~v5;
  v1[3] = a1;
  v1[4] = v6;
  return v3;
}

uint64_t sub_1B2113B80()
{

  return sub_1B2181728(&STACK[0x350], &STACK[0x278]);
}

void sub_1B2113BA4()
{

  JUMPOUT(0x1B2741EB0);
}

uint64_t sub_1B2113C20(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SchedulingWatchdog();
  v5 = sub_1B21114CC();
  if (v5)
  {
    v6 = v5;
    v7 = sub_1B211A144(*(v2 + 16));
    if (v7)
    {
      sub_1B2116728();
      sub_1B2112A88();
      result = sub_1B21184AC(v11);
      __break(1u);
    }

    else
    {
      MEMORY[0x1EEE9AC00](v7);
      sub_1B2111B5C();
      *(v8 - 32) = v6;
      *(v8 - 24) = v2;
      *(v8 - 16) = a1;
      *(v8 - 8) = a2;
      sub_1B211810C();
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](0);
    sub_1B2111B5C();
    *(v10 - 32) = v2;
    *(v10 - 24) = a1;
    *(v10 - 16) = a2;
    return sub_1B211810C();
  }

  return result;
}

void sub_1B2113D70(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = *(a1 + 16);
  a2(v4);
  if (v2)
  {
    sub_1B21343E4(v4, "/Library/Caches/com.apple.xbs/Sources/GRDB/GRDB/Core/SerializedDatabase.swift", 77, 2, 108, a1);
  }

  else if (*(v4 + OBJC_IVAR____TtC12GRDBInternal8Database_configuration + 41) & 1) == 0 && (Database.isInsideTransaction.getter())
  {
    sub_1B2252EC0();
    __break(1u);
  }
}

Swift::Void __swiftcall Database.releaseMemory()()
{
  sub_1B21233F8();
  type metadata accessor for SchedulingWatchdog();
  v1 = sub_1B2113B28();
  if (sub_1B2117B40(v1))
  {
    sub_1B21115FC();
    swift_beginAccess();
    sqlite3_db_release_memory(*(v0 + 16));
    v2 = (v0 + OBJC_IVAR____TtC12GRDBInternal8Database_schemaCache);
    sub_1B2117F5C(v0 + OBJC_IVAR____TtC12GRDBInternal8Database_schemaCache, v13);
    *v2 = 0;

    sub_1B21619D8(&qword_1EB7A21A8, &unk_1B226AE60);
    sub_1B22521C0();
    swift_endAccess();
    v3 = sub_1B211FF34(&OBJC_IVAR____TtC12GRDBInternal8Database____lazy_storage___internalStatementCache);
    sub_1B21140E4(v3, v4);

    type metadata accessor for Statement();
    sub_1B2112F9C();
    v5 = sub_1B2252190();
    v6 = sub_1B211499C(v5, OBJC_IVAR____TtC12GRDBInternal8Database____lazy_storage___internalStatementCache);
    sub_1B2120024(v6, v7);
    v8 = sub_1B211FF34(&OBJC_IVAR____TtC12GRDBInternal8Database____lazy_storage___publicStatementCache);
    sub_1B21140E4(v8, v9);

    sub_1B2112F9C();
    v10 = sub_1B2252190();
    v11 = sub_1B211499C(v10, OBJC_IVAR____TtC12GRDBInternal8Database____lazy_storage___publicStatementCache);
    sub_1B2120024(v11, v12);
  }

  else
  {
    sub_1B2111608();
    sub_1B2112ECC();
    sub_1B2252EC0();
    __break(1u);
  }
}

uint64_t sub_1B2114034(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t sub_1B2114050(uint64_t a1)
{

  return swift_beginAccess();
}

__n128 sub_1B211409C()
{
  result = *(v1 - 112);
  *(v1 - 72) = v0;
  return result;
}

void sub_1B2114114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1B2117A28();
  sub_1B2114DE0();
  *v7 = v8;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Database.execute(sql:arguments:)(Swift::String sql, GRDBInternal::StatementArguments arguments)
{
  sub_1B2114908();
  sub_1B21619D8(&qword_1EB7A0F70, &qword_1B2257590);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B22546B0;
  __src[0] = v3;
  __src[1] = v2;
  __src[2] = v4;
  __src[3] = v5;
  sub_1B2114CC4(__src);
  memcpy((inited + 32), __src, 0xB8uLL);
  v8 = inited;

  Database.execute(literal:)(&v8);
}

__n128 sub_1B2114258(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, __n128 a10)
{
  result = a10;
  a1[1] = a10;
  return result;
}

uint64_t sub_1B21142AC(uint64_t a1)
{

  return swift_allocObject();
}

void *sub_1B21142EC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, ...)
{
  va_start(va1, a29);
  va_start(__srca, a29);
  __src = va_arg(va1, void);
  v33 = va_arg(va1, void);
  v34 = va_arg(va1, void);
  v35 = va_arg(va1, void);
  v36 = va_arg(va1, void);
  v37 = va_arg(va1, void);
  v38 = va_arg(va1, void);
  v39 = va_arg(va1, void);
  v40 = va_arg(va1, void);
  v41 = va_arg(va1, void);
  v42 = va_arg(va1, void);
  v43 = va_arg(va1, void);
  v44 = va_arg(va1, void);
  v45 = va_arg(va1, void);
  v46 = va_arg(va1, void);
  v47 = va_arg(va1, void);
  v48 = va_arg(va1, void);
  v49 = va_arg(va1, void);
  v50 = va_arg(va1, void);
  v51 = va_arg(va1, void);
  v52 = va_arg(va1, void);

  return memcpy(&a9, __srca, 0xA2uLL);
}

void *sub_1B2114348()
{

  return memcpy(&STACK[0x458], (v0 + 16), 0xABuLL);
}

void *sub_1B21143C8()
{

  return memcpy((v0 + 2088), (v0 + 3536), 0xA3uLL);
}

id sub_1B21143F8(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t sub_1B21144D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_1B211B048(&a9);
}

void _s12GRDBInternal15FetchableRecordPAAE28databaseDateDecodingStrategyAA08DatabaseefG0OvgZ_0(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 2;
}

void sub_1B2114580()
{
  v1 = 1280070990;
  v2 = 0xE400000000000000;

  SQLInterpolation.appendLiteral(_:)(*&v1);
}

void *sub_1B21145E0()
{

  return memcpy(&STACK[0x5E8], &STACK[0x350], 0xD2uLL);
}

uint64_t sub_1B2114600()
{
  v4 = *(v0 - 1);
  v5 = *v0;
  v1[5] = v0;
  v1[376] = v4;
  v1[377] = v5;
  v1[378] = v2;

  return sub_1B213CBE4((v1 + 376));
}

uint64_t sub_1B211463C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  a1[7] = a2;
  a1[8] = v2;
  a1[4] = v4;

  return sub_1B22522D0();
}

void *sub_1B2114698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  return static TableRecord.all()(va);
}

uint64_t sub_1B21146E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return swift_beginAccess();
}

uint64_t sub_1B2114704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_1B211EE68(v9 + 24, &a9);
}

void *sub_1B2114784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56)
{
  v58 = (*(a56 + 56) + 176 * v56);

  return memcpy(&STACK[0x228], v58, 0xABuLL);
}

void sub_1B21147B0(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *v7 = v9;
  *(v7 + 8) = v4;
  *(v7 + 16) = a4;
  *(v7 + 24) = v6;
  *(v7 + 32) = v5;
  *(v7 + 40) = a1;
  *(v7 + 56) = v8 & 1;
}

uint64_t sub_1B2114830()
{
}

uint64_t sub_1B211488C(uint64_t a1)
{
  *v1 = 0;
  v1[1] = 0;

  return swift_allocObject();
}

uint64_t sub_1B21148B4()
{
}

void sub_1B21148E8()
{
  v3 = *(v0 + 32);
  *(v3 + 16) = v2 + 1;
  v4 = (v3 + 40 * v2);
  v4[4] = v1;
  v4[5] = 0;
  v4[6] = 0;
  v4[7] = 0;
}

uint64_t sub_1B211492C(uint64_t a1)
{

  return sub_1B2252EC0();
}

uint64_t sub_1B211494C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return RangeReplaceableCollection.init<A>(_:)(v4, va);
}

uint64_t sub_1B211499C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (v2 + a2);
  v5 = *(v2 + a2);
  *v4 = v3;
  v4[1] = a1;
  return v5;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Database.beginTransaction(_:)(GRDBInternal::Database::TransactionKind_optional a1)
{
  sub_1B212425C();
  v3 = *v2;
  if (v3 == 3)
  {
    if (*(v1 + OBJC_IVAR____TtC12GRDBInternal8Database__readOnlyDepth) > 0 || (*(v1 + OBJC_IVAR____TtC12GRDBInternal8Database_configuration + 1) & 1) != 0)
    {
      v3 = 0;
    }

    else
    {
      v3 = *(v1 + OBJC_IVAR____TtC12GRDBInternal8Database_configuration + 40);
    }
  }

  sub_1B2252CD0();

  v4 = 0x54414944454D4D49;
  if (v3 != 1)
  {
    v4 = 0x564953554C435845;
  }

  if (v3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x4445525245464544;
  }

  if (v3)
  {
    v6 = 0xE900000000000045;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  MEMORY[0x1B2741EB0](v5, v6);

  MEMORY[0x1B2741EB0](0x4341534E41525420, 0xEC0000004E4F4954);
  sub_1B2111BFC();
  Database.execute(sql:arguments:)(v7, v8);
}

void Database.allStatements(literal:)(uint64_t *a1)
{
  v4 = *a1;
  type metadata accessor for StatementArgumentsSink();
  swift_allocObject();
  sub_1B2114D98(0, v5, v6, v7, v8, v9, v10);
  sub_1B2116B4C();
  sub_1B21159FC();
  type metadata accessor for SQLGenerationContext();
  swift_allocObject();

  v12 = sub_1B2117868(v11);
  *&v22 = v4;
  sub_1B2119120(v12, v13, v14, v15, v16, v17, v18);
  if (!v1)
  {
    sub_1B21159FC();
    sub_1B211B048(&v22);
    if (*(v22 + 16))
    {
    }

    else
    {
      v19 = *(*(&v22 + 1) + 16);

      if (!v19)
      {
        v20 = 0uLL;
        goto LABEL_7;
      }
    }

    sub_1B211B048(&v22);
    v20 = v22;
LABEL_7:
    v22 = v20;
    type metadata accessor for SQLStatementCursor();
    swift_allocObject();

    sub_1B211B748(v21, v2, v3, &v22, 0);

    goto LABEL_8;
  }

LABEL_8:
  sub_1B2117E1C();
}

void *sub_1B2114CC4(void *result)
{
  v1 = result[13] & 1;
  v2 = result[20] & 0xE000000000FFC1FFLL;
  result[8] &= 1uLL;
  result[13] = v1;
  result[20] = v2;
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Database.execute(literal:)(GRDBInternal::SQL literal)
{
  v4[0] = *literal.elements._rawValue;
  Database.allStatements(literal:)(v4);
  if (!v1)
  {
    while (sub_1B211B804())
    {
      v4[0] = 0;
      v4[1] = 0;
      v2.value.values._rawValue = v4;
      Statement.execute(arguments:)(v2);
      if (v3)
      {

        break;
      }
    }
  }
}

uint64_t sub_1B2114D98(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1B2112554(MEMORY[0x1E69E7CC0], &v10, a4, a5, a6, a7);
  *(v7 + 16) = v10;
  *(v7 + 32) = a1;
  return v7;
}

void sub_1B2114DE0()
{
  sub_1B2111830();
  if ((v4 & 1) == 0 || (sub_1B2115F84(), v5 == v6))
  {
LABEL_6:
    sub_1B2111EF8();
    if (v3)
    {
      v13 = sub_1B2113B10(v7, v8, v9, v10, v11, v12);
      v14 = sub_1B21169D8(v13);
      v15 = j__malloc_size(v14);
      sub_1B2117B94(v15);
      if (v2)
      {
LABEL_8:
        v16 = sub_1B2117B84();
        v1(v16);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_8;
    }

    sub_1B2115B30();
    goto LABEL_11;
  }

  sub_1B212CD14();
  if (!v5)
  {
    sub_1B2115544();
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_1B2114F3C(uint64_t a1)
{

  return sub_1B2252EC0();
}

uint64_t sub_1B2114F84()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  v8 = *(v0 + 64);
  v9 = *(v0 + 72);
  v18 = *(v0 + 176) | (*(v0 + 178) << 16);
  v16 = *(v0 + 160);
  v17 = *(v0 + 168);
  v14 = *(v0 + 128);
  v15 = *(v0 + 144);
  v12 = *(v0 + 96);
  v13 = *(v0 + 112);
  v11 = *(v0 + 80);

  return sub_1B213B9FC(v2, v3, v4, v5, v6, v7, v8, v9, v11, *(&v11 + 1), v12, *(&v12 + 1), v13, *(&v13 + 1), v14, *(&v14 + 1), v15, *(&v15 + 1), v16, v17, v18);
}

void sub_1B2114FE8()
{
  *(v4 + 16) = v0;
  v5 = v4 + 16 * v3;
  *(v5 + 32) = v1;
  *(v5 + 40) = v2;
}

uint64_t sub_1B2114FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a1 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;

  return DatabaseFunction.init(_:argumentCount:pure:function:)(v6, a2, a3, 1, a5, 0);
}

uint64_t sub_1B2115014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  return sub_1B21443FC(va, &a9);
}

uint64_t sub_1B211505C()
{
  *(v0 + 16) = v3;
  *v1 = v0;
  return v2;
}

uint64_t sub_1B211508C(uint64_t a1)
{

  return swift_getWitnessTable();
}

uint64_t sub_1B21151D4()
{

  return sub_1B216EC78(0, v0, 0);
}

uint64_t sub_1B21151F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  return sub_1B2142C9C(a10, v10, v12, v11, 1);
}

uint64_t sub_1B2115240()
{

  return sub_1B2112F4C(sub_1B21E7B74, v0);
}

void *sub_1B2115268(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, ...)
{
  va_start(va, a50);

  return memcpy(va, &a9, 0xA8uLL);
}

uint64_t sub_1B21152B4(uint64_t a1)
{

  return sub_1B2252EC0();
}

void sub_1B21152E0()
{

  JUMPOUT(0x1B2741EB0);
}

uint64_t sub_1B21152FC(uint64_t a1, uint64_t a2)
{

  return swift_allocError();
}

uint64_t sub_1B2115314()
{
  *(v2 - 96) = v1;
  *(v2 - 88) = v0;
  return v2 - 96;
}

uint64_t sub_1B2115370(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);

  return MEMORY[0x1EEE688A0](va, va1, v3, v4, v5 & 1, a1);
}

uint64_t sub_1B211539C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{

  return swift_beginAccess();
}

void *sub_1B21153C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{

  return sub_1B213BBD8(v31, &a31);
}

uint64_t sub_1B21153E4()
{

  return swift_getObjectType();
}

sqlite3 *sub_1B2115410(uint64_t a1)
{

  return Database.isInsideTransaction.getter();
}

uint64_t sub_1B2115490(uint64_t a1, unint64_t a2)
{
  sub_1B2113A20(a1, a2, 3);
  sub_1B2113A20(v4, v3, 3);

  return sub_1B2113A20(v2, v5, 3);
}

uint64_t sub_1B21154F0()
{

  return swift_allocObject();
}

void sub_1B2115554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  v26 = va_arg(va1, void);
  v27 = va_arg(va1, void);
  v28 = va_arg(va1, void);
  v29 = va_arg(va1, void);
  v30 = va_arg(va1, void);
  v31 = va_arg(va1, void);

  sub_1B2139304(va, a1, a2, a4, a5, a6, a7, a8, a9, v10, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31);
}

uint64_t sub_1B21155BC(uint64_t a1)
{

  return swift_once();
}

void _sSd12GRDBInternalE13databaseValueAA08DatabaseC0Vvg_0(uint64_t a1@<X8>, double a2@<D0>)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
}

uint64_t sub_1B2115698(uint64_t a1)
{

  return swift_getWitnessTable();
}

void sub_1B211575C()
{

  sub_1B214ACA8();
}

uint64_t sub_1B21157D8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 33);
  v7 = *(a1 + 34);
  *v1 = *a1;
  *(v1 + 8) = v3;
  *(v1 + 16) = v4;
  *(v1 + 24) = v5;
  *(v1 + 32) = *(a1 + 32);
  *(v1 + 33) = v6;
  *(v1 + 34) = v7;
}

void sub_1B2115864()
{

  JUMPOUT(0x1B2741EB0);
}

void *sub_1B211589C(void *a1)
{

  return memcpy(a1, &STACK[0x2B0], 0xA2uLL);
}

void sub_1B21158F8()
{

  JUMPOUT(0x1B2741EB0);
}

uint64_t sub_1B211591C(uint64_t a1)
{
  v2[4] = a1;
  *v2 = v1;
  return v1;
}

id sub_1B211594C@<X0>(uint64_t a1@<X8>)
{
  v4 = *(*(v2 + 56) + ((a1 << 9) | (8 * __clz(__rbit64(v1)))));

  return v4;
}

uint64_t sub_1B211597C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1B2112F4C(v16, a10);
  sub_1B2112F4C(a11, v17);
  sub_1B2112F4C(a12, v18);
  sub_1B2112F4C(a14, a13);

  return sub_1B2112F4C(v14, v15);
}

uint64_t sub_1B21159D0(uint64_t a1, uint64_t a2, ...)
{

  return swift_beginAccess();
}

void *sub_1B2115A08(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t __src, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, ...)
{
  va_start(va, a51);

  return memcpy(va, &__src, 0xA3uLL);
}

uint64_t sub_1B2115A74(uint64_t a1)
{

  return sub_1B2252EC0();
}

uint64_t sub_1B2115AA0(uint64_t a1)
{
  v2 = *(a1 + 16);

  return sqlite3_stmt_busy(v2);
}

uint64_t sub_1B2115B30()
{

  return swift_arrayInitWithCopy();
}

uint64_t sub_1B2115B50()
{

  return swift_task_alloc();
}

uint64_t sub_1B2115B88()
{
  *(v0 - 200) = 0;
  *(v0 - 192) = 0xE000000000000000;

  return sub_1B2252CD0();
}

uint64_t sub_1B2115C0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return RangeReplaceableCollection.init<A>(_:)(v4, va);
}

uint64_t sub_1B2115C54(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  return StatementArguments.description.getter(a1, a2, a3, a4, a5, a6, a7);
}

void sub_1B2115D08()
{

  JUMPOUT(0x1B2741EB0);
}

uint64_t sub_1B2115D38(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1B2115D98(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9)
{
  a9 = *a2;

  return static FetchableRecord.fetchCursor(_:arguments:adapter:)(a1, &a9, a3, a4, a5);
}

void sub_1B2115DF4()
{

  JUMPOUT(0x1B2741EB0);
}

uint64_t sub_1B2115E10()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

void *sub_1B2115E28(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(__srca, a9);
  __src = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  v26 = va_arg(va1, void);
  v27 = va_arg(va1, void);
  v28 = va_arg(va1, void);
  v29 = va_arg(va1, void);
  v30 = va_arg(va1, void);
  v31 = va_arg(va1, void);
  v32 = va_arg(va1, void);
  v33 = va_arg(va1, void);
  v34 = va_arg(va1, void);
  v35 = va_arg(va1, void);
  v36 = va_arg(va1, void);
  v37 = va_arg(va1, void);
  v12 = *v10;
  *(*v10 + 16) = v9 + 1;

  return memcpy((v12 + 184 * v9 + 32), __srca, 0xB8uLL);
}

uint64_t sub_1B2115E58(uint64_t a1)
{

  return sub_1B2252B00();
}

void *sub_1B2115E74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  v36 = v34[1];
  a33 = *v34;
  a34 = v36;

  return Table.all()(&a12);
}

void *sub_1B2115EAC()
{

  return memcpy(&STACK[0x3A0], &STACK[0x2F8], 0xA3uLL);
}

uint64_t sub_1B2115F28(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t sub_1B2115F40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, ...)
{
  va_start(va, a29);

  return sub_1B21CF9AC(v30, v29, va, v31);
}

uint64_t sub_1B2115FC8(uint64_t a1)
{

  return swift_dynamicCast();
}

uint64_t sub_1B2116050(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_getAssociatedTypeWitness();
}

uint64_t sub_1B211606C()
{

  return sub_1B2253420();
}

void *sub_1B211608C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, ...)
{
  va_start(va1, a29);
  va_start(__srca, a29);
  __src = va_arg(va1, void);
  v33 = va_arg(va1, void);
  v34 = va_arg(va1, void);
  v35 = va_arg(va1, void);
  v36 = va_arg(va1, void);
  v37 = va_arg(va1, void);
  v38 = va_arg(va1, void);
  v39 = va_arg(va1, void);
  v40 = va_arg(va1, void);
  v41 = va_arg(va1, void);
  v42 = va_arg(va1, void);
  v43 = va_arg(va1, void);
  v44 = va_arg(va1, void);
  v45 = va_arg(va1, void);
  v46 = va_arg(va1, void);
  v47 = va_arg(va1, void);
  v48 = va_arg(va1, void);
  v49 = va_arg(va1, void);
  v50 = va_arg(va1, void);
  v51 = va_arg(va1, void);
  v52 = va_arg(va1, void);

  return memcpy(&a9, __srca, 0xA2uLL);
}

uint64_t sub_1B21160A8(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / v3);
  return result;
}

void *sub_1B21160D4()
{
  v5 = (*(v1 + 48) + 16 * v2);
  *v5 = v0;
  v5[1] = v3;
  v6 = (*(v1 + 56) + 176 * v2);

  return memcpy(v6, &STACK[0x2D8], 0xABuLL);
}

void *sub_1B2116104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return static TableRecord.all()(va);
}

uint64_t sub_1B2116170()
{

  return type metadata accessor for Configuration(0);
}

void sub_1B21161F8()
{

  JUMPOUT(0x1B2741EB0);
}

void sub_1B2116260()
{
  *(v0 + 16) = v1;
  v5 = v0 + 16 * v4;
  *(v5 + 32) = v2;
  *(v5 + 40) = v3;
}

void sub_1B2116280(unint64_t a1@<X8>)
{

  sub_1B2162630(a1 > 1, v2, 1, v1);
}

id sub_1B21162F8(id a1, SEL a2)
{

  return [a1 a2];
}

uint64_t sub_1B2116318(uint64_t a1, uint64_t a2)
{
  sub_1B2112F4C(a1, a2);
  sub_1B2112F4C(*(v2 - 368), *(v2 - 304));
  v3 = *(v2 - 360);
  v4 = *(v2 - 352);

  return sub_1B2112F4C(v3, v4);
}

void sub_1B2116360(uint64_t a1@<X8>)
{
  *(v1 + 16) = a1;
  v10 = v1 + 40 * v7;
  *(v10 + 32) = v6;
  *(v10 + 40) = v5;
  *(v10 + 48) = v4;
  *(v10 + 56) = v3;
  *(v10 + 64) = v8;
  *(v10 + 65) = v9;
  *(v10 + 66) = v2;
}

uint64_t sub_1B211639C()
{
  sub_1B2113A20(*(v0 + 32), *(v0 + 40), *(v0 + 48));

  return swift_isUniquelyReferenced_nonNull_native();
}

void *sub_1B21163DC(void *__src, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);

  return memcpy(va, __src, 0xA3uLL);
}

uint64_t sub_1B21163F8()
{

  return swift_getWitnessTable();
}

void *sub_1B21164A4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(__srca, a13);
  __src = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  v26 = va_arg(va1, void);
  v27 = va_arg(va1, void);
  v28 = va_arg(va1, void);
  v29 = va_arg(va1, void);
  v30 = va_arg(va1, void);
  v31 = va_arg(va1, void);
  v32 = va_arg(va1, void);
  v33 = va_arg(va1, void);
  v34 = va_arg(va1, void);
  v35 = va_arg(va1, void);
  v36 = va_arg(va1, void);
  v37 = va_arg(va1, void);
  v38 = va_arg(va1, void);
  v39 = va_arg(va1, void);
  v40 = va_arg(va1, void);
  *(v15 + 16) = v13;

  return memcpy((v15 + v14 * v16 + 32), __srca, 0xA3uLL);
}

__n128 sub_1B21164D4(uint64_t a1)
{
  *(v1 + 72) = a1;
  result = *(v1 + 40);
  v3 = *(v1 + 56);
  v4 = *(v1 + 24);
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  return result;
}

void *sub_1B2116508(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, ...)
{
  va_start(va, a29);

  return memcpy(va, &a9, 0xA2uLL);
}

uint64_t sub_1B21165D8(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1B21165F8(uint64_t a1)
{

  return sub_1B2252E70();
}

uint64_t sub_1B2116618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{

  return swift_beginAccess();
}

uint64_t sub_1B211668C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, __n128 a9@<Q0>, __n128 a10@<Q1>, __n128 a11@<Q2>, __n128 a12@<Q3>, __n128 a13@<Q4>, unsigned int a14@<W8>)
{

  return sub_1B213B9FC(a1, a2, a3, a4, a5, a6, a7, a8, a9.n128_i64[0], a9.n128_i64[1], a10.n128_i64[0], a10.n128_i64[1], a11.n128_i64[0], a11.n128_i64[1], a12.n128_i64[0], a12.n128_i64[1], a13.n128_i64[0], a13.n128_i64[1], v14, v15, a14);
}

uint64_t sub_1B2116764(uint64_t a1, uint64_t a2, ...)
{

  return sub_1B2252FA0();
}

uint64_t sub_1B21167C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{

  return swift_beginAccess();
}

uint64_t sub_1B21167E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1B2112328(a1, a2);
  sub_1B2112328(v11, v13);
  sub_1B2112328(v10, a9);

  return sub_1B2112328(v9, v12);
}

uint64_t sub_1B2116834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return swift_beginAccess();
}

void *sub_1B2116850(void *a1)
{

  return memcpy(a1, &STACK[0x390], 0xB8uLL);
}

void *sub_1B2116868(void *__src, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, ...)
{
  va_start(va, a51);

  return memcpy(va, __src, 0xA3uLL);
}

uint64_t sub_1B21168C4()
{
  sub_1B2113A20(v2, v1, 3);

  return sub_1B2113A20(v0, v3, 3);
}

void sub_1B2116914()
{

  sub_1B213CA68();
}

uint64_t sub_1B2116938(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(uint64_t, uint64_t, uint64_t *))
{
  if (*(a1 + 16))
  {
    sub_1B21619D8(a2, a3);
    sub_1B2117220();
    v5 = sub_1B2252F00();
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC8];
  }

  v8 = v5;

  a4(v6, 1, &v8);

  return v8;
}

uint64_t sub_1B21169D8(uint64_t a1)
{

  return swift_allocObject();
}

void *sub_1B2116A68()
{

  return sub_1B213BBD8(v0, &STACK[0x4B8]);
}

uint64_t sub_1B2116A84()
{

  return sub_1B21414CC(v2, v1, v0);
}

uint64_t sub_1B2116AA0(uint64_t a1)
{

  return swift_allocObject();
}

void sub_1B2116B10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1B211E4B0();
  sub_1B2119D9C();
  *v7 = v8;
}

void sub_1B2116B4C()
{
  sub_1B2111F14();
  v8 = v1;
  v9 = *(v1 + 16);
  if (v9)
  {
    sub_1B212D820(v1, v2, v3, v4, v5, v6, v7);
    v10 = v24;
    v11 = (v8 + 48);
    do
    {
      memcpy(__dst, v11 - 16, 0xBBuLL);
      v13 = __dst[0];
      v12 = __dst[1];
      memcpy(v23, v11, 0xABuLL);
      sub_1B211E17C(__dst, v21, &qword_1EB7A1BF0, &qword_1B2259968);
      sub_1B21818BC(&__dst[2], v21);
      sub_1B219A920(v23);

      sub_1B2122400(__dst, &qword_1EB7A1BF0, &qword_1B2259968);
      sub_1B212D630();
      if (v19)
      {
        sub_1B211F354(v14, v15, v16, v17, v18);
        v10 = v24;
      }

      *(v10 + 16) = v0;
      v20 = v10 + 16 * v8;
      *(v20 + 32) = v13;
      *(v20 + 40) = v12;
      v11 += 192;
      --v9;
    }

    while (v9);
  }

  sub_1B2116938(v8, &qword_1EB7A1BC8, &qword_1B2259958, sub_1B2116C80);
  sub_1B2117220();
  sub_1B2111588();
}

void sub_1B2116C80(uint64_t a1, char a2, void *a3)
{
  v5 = 0;
  v6 = *(a1 + 16);
  v24 = a1 + 32;
  while (1)
  {
    if (v5 == v6)
    {
      sub_1B2117018(__src);
      memcpy(__dst, __src, 0xBBuLL);
      v5 = v6;
    }

    else
    {
      if ((v5 & 0x8000000000000000) != 0)
      {
        goto LABEL_24;
      }

      if (v5 >= *(a1 + 16))
      {
        goto LABEL_25;
      }

      memcpy(__src, (v24 + 192 * v5), 0xBBuLL);
      memcpy(__dst, (v24 + 192 * v5++), 0xBBuLL);
      nullsub_1();
      sub_1B211E17C(__src, v26, &qword_1EB7A1BF0, &qword_1B2259968);
    }

    memcpy(__src, __dst, 0xBBuLL);
    if (sub_1B2117000(__src) == 1)
    {

      return;
    }

    v7 = __dst[0];
    v8 = __dst[1];
    memcpy(v26, &__dst[2], 0xABuLL);
    v9 = *a3;
    v11 = sub_1B211E590();
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    if (__OFADD__(v12, v13))
    {
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      sub_1B2253390();
      __break(1u);
      goto LABEL_27;
    }

    v14 = v10;
    if (v9[3] < v12 + v13)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_18;
      }
    }

    else
    {
      sub_1B21619D8(&qword_1EB7A1BD8, &qword_1B225A4B0);
      sub_1B2252E80();
      if (v14)
      {
        goto LABEL_18;
      }
    }

LABEL_15:
    v17 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v18 = (v17[6] + 16 * v11);
    *v18 = v7;
    v18[1] = v8;
    memcpy((v17[7] + 176 * v11), v26, 0xABuLL);
    v19 = v17[2];
    v20 = __OFADD__(v19, 1);
    v21 = v19 + 1;
    if (v20)
    {
      goto LABEL_23;
    }

    v17[2] = v21;
    a2 = 1;
  }

  sub_1B2245854();
  v15 = sub_1B211E590();
  if ((v14 & 1) != (v16 & 1))
  {
    goto LABEL_26;
  }

  v11 = v15;
  if ((v14 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_18:
  v22 = swift_allocError();
  swift_willThrow();
  v29 = v22;
  v23 = v22;
  sub_1B21619D8(qword_1EB7A0F98, &unk_1B22595B0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_1B219A920(v26);

    return;
  }

LABEL_27:
  sub_1B2252CD0();
  MEMORY[0x1B2741EB0](0xD00000000000001BLL, 0x80000001B226CFA0);
  sub_1B2252E10();
  MEMORY[0x1B2741EB0](39, 0xE100000000000000);
  sub_1B2252EC0();
  __break(1u);
}

uint64_t sub_1B2117000(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1B2117164(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;

  v3[4] = sub_1B2118664();
  sub_1B2117044(a3);
  v3[5] = v5;
  v6 = sub_1B2115C78();
  v9 = sub_1B211903C(v6, v7, v8, 0);

  v3[6] = v9;
  return v3;
}

void sub_1B2117238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  sub_1B2116B10(0, v7, 0, a4, a5, a6, a7);
}

void *sub_1B21172D8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(__srca, a9);
  __src = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  v26 = va_arg(va1, void);
  v27 = va_arg(va1, void);
  v28 = va_arg(va1, void);
  v29 = va_arg(va1, void);
  v30 = va_arg(va1, void);
  v31 = va_arg(va1, void);
  v32 = va_arg(va1, void);
  v33 = va_arg(va1, void);
  v34 = va_arg(va1, void);
  v35 = va_arg(va1, void);
  v36 = va_arg(va1, void);
  v37 = va_arg(va1, void);
  v12 = *v9;
  *(*v9 + 16) = v10 + 1;

  return memcpy((v12 + 184 * v10 + 32), __srca, 0xB8uLL);
}

void sub_1B2117368()
{

  sub_1B214400C();
}

uint64_t sub_1B21173D4(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1B2117408(uint64_t a1)
{

  return sub_1B2252EC0();
}

uint64_t sub_1B2117460(uint64_t a1)
{

  return swift_getWitnessTable();
}

uint64_t sub_1B2117488(uint64_t a1)
{

  return sub_1B2252EC0();
}

uint64_t sub_1B21174BC()
{
  result = *(v0 + 48);
  *(v0 + 48) = v2;
  *(v0 + 56) = v1;
  return result;
}

uint64_t sub_1B21174CC()
{
  sub_1B2113A20(v2, v3, 3);
  sub_1B2113A20(v0, v1, 3);
  sub_1B2113A20(v2, v3, 3);

  return sub_1B2113A20(v0, v1, 3);
}

unint64_t sub_1B2117584(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a5 + 8 * (result >> 6) + 64) |= 1 << result;
  v5 = (*(a5 + 48) + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  return result;
}

uint64_t sub_1B21175C8(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1B2117608()
{
}

uint64_t sub_1B2117654(uint64_t a1)
{

  return sub_1B22531F0();
}

uint64_t sub_1B2117674(uint64_t a1)
{

  return swift_once();
}

void sub_1B21176D0()
{

  sub_1B214400C();
}

uint64_t sub_1B21176F4()
{
  *(v1 + v2[17]) = 0;
  *(v1 + v2[18]) = 0;
  *(v1 + v2[19]) = v0;
  *(v1 + v2[20]) = 0;
  v4 = (v1 + v2[21]);
  *v4 = 0;
  v4[1] = 0;
  v5 = (v1 + v2[22]);
  *v5 = 0;
  v5[1] = 0;

  return type metadata accessor for DatabaseQueue();
}

uint64_t sub_1B2117760(uint64_t a1, uint64_t a2)
{

  return sub_1B219B280(a1, a2);
}

uint64_t sub_1B21177B0()
{

  return sub_1B2251CE0();
}

uint64_t sub_1B211783C(unint64_t *a1)
{
  v4 = MEMORY[0x1E69E6328];

  return sub_1B211AB74(a1, v1, v2, v4);
}

void *sub_1B2117868(uint64_t a1)
{

  return sub_1B2117164(a1, v1, v2);
}

uint64_t sub_1B211788C(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1B21178AC()
{

  return sub_1B2127E58(v0, 0);
}

uint64_t sub_1B21178CC@<X0>(void *a1@<X8>)
{
  v3 = a1[1];
  v4 = a1[2];
  *v1 = *a1;
  v1[1] = v3;
  v1[2] = v4;
}

uint64_t sub_1B2117970(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1B21179D8(unint64_t *a1)
{
  v4 = MEMORY[0x1E69E6310];

  return sub_1B211AB74(a1, v1, v2, v4);
}

uint64_t sub_1B2117A9C()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

__int128 *sub_1B2117B18(uint64_t a1)
{

  return FetchRequest<>.fetchAll(_:)();
}

uint64_t sub_1B2117B40(uint64_t a1)
{
  result = sub_1B21114CC();
  if (result)
  {
    v3 = sub_1B211A144(a1);

    return v3 & 1;
  }

  return result;
}

uint64_t sub_1B2117B94(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / v3);
  return result;
}

uint64_t sub_1B2117BF4(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_1B2117C0C()
{
}

void sub_1B2117C98()
{

  JUMPOUT(0x1B2741EB0);
}

void sub_1B2117CF0()
{

  sub_1B214400C();
}

uint64_t sub_1B2117D94(uint64_t a1, uint64_t a2)
{

  return MEMORY[0x1EEDC6910](a1, a2, 1024, 0, 0, 1, v2, v2);
}

void sub_1B2117DBC()
{

  JUMPOUT(0x1B2741EB0);
}

uint64_t sub_1B2117DD8()
{

  return DatabaseQueue.init(configuration:)(v0);
}

uint64_t sub_1B2117DFC(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1B2117E40()
{

  return swift_getObjectType();
}

uint64_t sub_1B2117EA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 - 72) = a5;

  return sub_1B2252850();
}

void sub_1B2117EEC(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{

  sub_1B213CF80(v20, a1, a2 & 1, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_1B2117F5C(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t sub_1B2117F74@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>, uint64_t a4, ...)
{
  va_start(va, a4);

  return sub_1B211E17C(a3, va, a1, a2);
}

void sub_1B2117F8C()
{

  JUMPOUT(0x1B2741EB0);
}

uint64_t _sSi12GRDBInternalE13databaseValueAA08DatabaseC0Vvg_0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  return result;
}

uint64_t sub_1B211803C()
{
}

uint64_t sub_1B21180A4()
{

  return sub_1B2127E58(v0, 1);
}

uint64_t sub_1B21180CC(uint64_t a1)
{

  return swift_getTupleTypeMetadata2();
}

uint64_t sub_1B211810C()
{

  return sub_1B2252A50();
}

void sub_1B211812C(uint64_t a1@<X8>)
{
  *(v1 + 16) = a1;
  v6 = (v1 + 24 * v2);
  v6[4] = v5;
  v6[5] = v4;
  v6[6] = v3;
}

uint64_t sub_1B2118164()
{

  return type metadata accessor for StatementArgumentsSink();
}

uint64_t sub_1B2118184()
{

  return swift_unownedRetainStrong();
}

uint64_t sub_1B21181C0()
{

  return sub_1B2127E58(v0, 0);
}

__n128 sub_1B211824C()
{
  v2 = v0[1].n128_u8[0];
  result = *v0;
  *(v1 - 48) = *v0;
  *(v1 - 32) = v2;
  return result;
}

uint64_t sub_1B2118264(uint64_t a1)
{

  return swift_once();
}

void *sub_1B2118284(uint64_t a1, const void *a2)
{

  return memcpy(v2, a2, 0xB8uLL);
}

void *sub_1B21182E8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(__srca, a9);
  __src = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  v26 = va_arg(va1, void);
  v27 = va_arg(va1, void);
  v28 = va_arg(va1, void);
  v29 = va_arg(va1, void);
  v30 = va_arg(va1, void);
  v31 = va_arg(va1, void);
  v32 = va_arg(va1, void);
  v33 = va_arg(va1, void);

  return memcpy(v9, __srca, 0xA3uLL);
}

uint64_t sub_1B211832C(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1B22531F0();
}

void *sub_1B2118348(void *result)
{
  result[2] = v3;
  result[3] = v2;
  result[4] = v4;
  result[5] = v1;
  return result;
}

uint64_t sub_1B21183E4(unint64_t *a1)
{
  v4 = MEMORY[0x1E69E6328];

  return sub_1B211AB74(a1, v1, v2, v4);
}

uint64_t sub_1B2118410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __int128 a19)
{
  a19 = *(v19 + 48);

  return type metadata accessor for ReceiveValuesOnSubscription.Target(0, &a15);
}

uint64_t sub_1B2118434()
{
}

uint64_t sub_1B2118454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 - 72) = a1;

  return sub_1B2252850();
}

uint64_t sub_1B21184AC(uint64_t a1)
{

  return sub_1B2252EC0();
}

void *sub_1B2118514(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(__srca, a11);
  __src = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  v26 = va_arg(va1, void);
  v27 = va_arg(va1, void);
  v28 = va_arg(va1, void);
  v29 = va_arg(va1, void);
  v30 = va_arg(va1, void);
  v31 = va_arg(va1, void);
  v32 = va_arg(va1, void);
  v33 = va_arg(va1, void);
  v34 = va_arg(va1, void);
  v35 = va_arg(va1, void);
  v36 = va_arg(va1, void);
  v37 = va_arg(va1, void);

  return memcpy((v11 + 32), __srca, 0xB8uLL);
}

uint64_t sub_1B2118558()
{
}

uint64_t sub_1B2118584(uint64_t a1)
{

  return swift_once();
}

void sub_1B21185BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  *(v19 + 8 * (v20 >> 6) + 64) |= 1 << v20;
  v22 = (*(v19 + 48) + 16 * v20);
  *v22 = a19;
  v22[1] = v21;
}

void sub_1B21185F4()
{

  sub_1B213CA68();
}

uint64_t sub_1B2118614(uint64_t a1)
{

  return sub_1B2252EC0();
}

uint64_t sub_1B2118640(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_1B2252C20();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_1B2118664()
{
  v1 = sub_1B2116B08();

  sub_1B2117044(v2);
  v4 = sub_1B2118DD0(v3);

  if (v1 == v4)
  {

    v6 = sub_1B2118DF0(v5);
    v7 = v6;
    v82 = 0;
    v8 = 0;
    v113 = MEMORY[0x1E69E7CD0];
    v9 = v6 + 64;
    v10 = 1 << *(v6 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v6 + 64);
    v13 = (v10 + 63) >> 6;
    v83 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v14 = v8;
      if (!v12)
      {
        break;
      }

LABEL_9:
      v15 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v16 = v15 | (v8 << 6);
      v17 = (*(v7 + 48) + 16 * v16);
      v18 = *v17;
      v19 = v17[1];
      v0 = *(*(v7 + 56) + 8 * v16);
      if (sub_1B2116B08() >= 2)
      {
        v105 = v0 & 0xC000000000000001;
        v106 = sub_1B2116B08();
        v102 = v0 & 0xFFFFFFFFFFFFFF8;

        v100 = 0;
        v25 = 0;
        while (v106 != v25)
        {
          if (v105)
          {
            MEMORY[0x1B27427E0](v25, v0);
          }

          else
          {
            if (v25 >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_68;
            }
          }

          v26 = v25 + 1;
          if (__OFADD__(v25, 1))
          {
            goto LABEL_67;
          }

          sub_1B2139070();
          v28 = v27;

          ++v25;
          if (v28)
          {

            v25 = v26;
            v29 = __OFADD__(v100++, 1);
            if (v29)
            {
              goto LABEL_69;
            }
          }
        }

        if (v100 >= 2)
        {
          goto LABEL_70;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1B2161EEC();
          v83 = v31;
        }

        v30 = *(v83 + 16);
        if (v30 >= *(v83 + 24) >> 1)
        {
          sub_1B2161EEC();
          v83 = v32;
        }

        *(v83 + 16) = v30 + 1;
        *(v83 + 8 * v30 + 32) = v0;
      }

      else
      {

        sub_1B2139304(&v107, v18, v19, v20, v21, v22, v23, v24, v79, v80, v81, v82, v83, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v105, v106, v107, v108, v109, v110, v111);
      }
    }

    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
LABEL_65:
        __break(1u);
        goto LABEL_66;
      }

      if (v8 >= v13)
      {
        break;
      }

      v12 = *(v9 + 8 * v8);
      ++v14;
      if (v12)
      {
        goto LABEL_9;
      }
    }

    type metadata accessor for TableAlias();
    sub_1B2119894(qword_1ED85E848, &protocol conformance descriptor for TableAlias);
    v33 = sub_1B2252190();
    v34 = v83;
    v87 = *(v83 + 16);
    if (!v87)
    {
LABEL_61:

      return v33;
    }

    v35 = 0;
    v85 = v83 + 32;
    while (v35 < *(v34 + 16))
    {
      v36 = *(v85 + 8 * v35);
      if (v36 >> 62)
      {
        v0 = sub_1B2252C20();
        if (v0)
        {
LABEL_33:
          v89 = v35;
          v37 = v36 & 0xC000000000000001;
          v97 = v36 + 32;
          v99 = v36 & 0xFFFFFFFFFFFFFF8;

          v38 = 0;
          v39 = 1;
          v93 = v0;
          v95 = v36;
          v91 = v36 & 0xC000000000000001;
          while (1)
          {
            if (v37)
            {
              v40 = MEMORY[0x1B27427E0](v38, v36);
            }

            else
            {
              if (v38 >= *(v99 + 16))
              {
                goto LABEL_64;
              }

              v40 = *(v97 + 8 * v38);
            }

            v29 = __OFADD__(v38++, 1);
            if (v29)
            {
              break;
            }

            v41 = sub_1B2139070();
            if (v42)
            {
            }

            else
            {
              v101 = v40;
              v103 = v33;
              sub_1B2138F70(v41);
              sub_1B21FD8E0();
              v43 = sub_1B22524A0();
              v45 = v44;
              v47 = v46;
              v49 = v48;

              v50 = MEMORY[0x1B2741E40](v43, v45, v47, v49);
              v52 = v51;

              v53 = 0;
              v54 = v113;
              v105 = v50;
LABEL_42:
              v107 = v50;
              v108 = v52;
              v112 = v39;

              v55 = sub_1B2252FD0();
              MEMORY[0x1B2741EB0](v55);

              v56 = v107;
              v0 = v108;
              if (v53)
              {
              }

              v29 = __OFADD__(v39++, 1);
              if (v29)
              {
                __break(1u);
                break;
              }

              v57 = sub_1B2252220();
              v59 = v58;
              if (*(v54 + 16))
              {
                v60 = v57;
                v106 = v56;
                v61 = v52;
                sub_1B2253420();
                sub_1B2252370();
                v62 = sub_1B2253470();
                v63 = ~(-1 << *(v54 + 32));
                while (1)
                {
                  v64 = v62 & v63;
                  if (((*(v54 + 56 + (((v62 & v63) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v62 & v63)) & 1) == 0)
                  {
                    break;
                  }

                  v65 = (*(v54 + 48) + 16 * v64);
                  if (*v65 != v60 || v65[1] != v59)
                  {
                    v67 = sub_1B22531F0();
                    v62 = v64 + 1;
                    if ((v67 & 1) == 0)
                    {
                      continue;
                    }
                  }

                  v53 = 1;
                  v52 = v61;
                  v50 = v105;
                  goto LABEL_42;
                }
              }

              v68 = sub_1B2252220();
              sub_1B2139304(&v107, v68, v69, v69, v70, v71, v72, v73, v79, v80, v81, v82, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v106, v107, v108, v109, v110, v111);

              swift_isUniquelyReferenced_nonNull_native();
              v107 = v104;
              sub_1B21ABF20();

              v33 = v107;
              v0 = v93;
              v36 = v95;
              v37 = v91;
            }

            if (v38 == v0)
            {

              v34 = v83;
              v35 = v89;
              goto LABEL_57;
            }
          }

          __break(1u);
LABEL_64:
          __break(1u);
          goto LABEL_65;
        }
      }

      else
      {
        v0 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v0)
        {
          goto LABEL_33;
        }
      }

LABEL_57:
      if (++v35 == v87)
      {
        goto LABEL_61;
      }
    }

LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    v107 = 0;
    v108 = 0xE000000000000000;
    sub_1B2252CD0();

    v107 = 0xD000000000000011;
    v108 = 0x80000001B226EE80;
    sub_1B21C2A5C(0, v105 == 0, v0);
    if (v105)
    {
      v75 = MEMORY[0x1B27427E0](0, v0);
    }

    else
    {
    }

    v76 = sub_1B2138F70(v75);
    v78 = v77;

    MEMORY[0x1B2741EB0](v76, v78);
  }

  result = sub_1B2252EC0();
  __break(1u);
  return result;
}

uint64_t sub_1B2118DD0(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return sub_1B2252C20();
  }

  else
  {
    return *(a1 + 16);
  }
}

uint64_t sub_1B211903C(uint64_t a1, uint64_t a2, void (*a3)(void *__return_ptr, void *), uint64_t a4)
{
  if (*(a1 + 16))
  {
    sub_1B21619D8(&qword_1EB7A1BC8, &qword_1B2259958);
    sub_1B2117220();
    v8 = sub_1B2252F00();
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC8];
  }

  v10 = v8;

  sub_1B21198D4(a1, a2, a3, a4, 1, &v10);

  return v10;
}

uint64_t sub_1B2119120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = v8;
  v10 = *v7;
  v11 = *(*v7 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  if (!v11)
  {
LABEL_41:
    v89[0] = v12;
    v76 = sub_1B2122034();
    sub_1B21619D8(v76, v77);
    sub_1B211AB74(qword_1ED85E790, &qword_1EB7A0DA0, &qword_1B2254340, MEMORY[0x1E69E6310]);
    sub_1B2252250();

    return sub_1B2122034();
  }

  v95 = MEMORY[0x1E69E7CC0];
  sub_1B2116B10(0, v11, 0, a4, a5, a6, a7);
  v14 = 0;
  v12 = v95;
  v82 = v11;
  v79 = v10;
  v80 = a1;
  while (2)
  {
    if (v14 < *(v10 + 16))
    {
      v15 = v14 + 1;
      sub_1B21118C4();
      memcpy(v16, v17, v18);
      sub_1B21118C4();
      memmove(v19, v20, v21);
      v83 = v15;
      switch(sub_1B211AF10(v94))
      {
        case 1u:
          v41 = sub_1B2119818(v94);
          memcpy(v92, v41, 0xA2uLL);
          if (sub_1B214D180(v92) == 1)
          {
            v81 = v9;
            v42 = sub_1B21197F4(v92);
            memcpy(v99, v42, 0xA2uLL);
            sub_1B211D778();
            memcpy(v91, __src, sizeof(v91));
            v43 = sub_1B2119818(v91);
            sub_1B211D778();
            sub_1B211D778();
            sub_1B214CFE0(v43, v89);
            sub_1B21366E4(v99, v90);
            v44 = 0;
            v45 = v42[11];
            v46 = v42[12];
            v100 = *(v45 + 16);
            v84 = v45;
            v47 = (v45 + 40);
            v48 = MEMORY[0x1E69E7CC0];
            while (v100 != v44)
            {
              if (v44 >= *(v84 + 16))
              {
                __break(1u);
LABEL_48:
                __break(1u);
LABEL_49:
                __break(1u);
LABEL_50:
                __break(1u);
LABEL_51:
                __break(1u);
LABEL_52:
                __break(1u);
LABEL_53:
                __break(1u);
                goto LABEL_54;
              }

              if (!*(v46 + 16))
              {
                goto LABEL_48;
              }

              v50 = *(v47 - 1);
              v49 = *v47;

              v51 = sub_1B211E590();
              if ((v52 & 1) == 0)
              {
                goto LABEL_49;
              }

              v53 = (*(v46 + 56) + 216 * v51);
              memcpy(v86, v53, 0xD2uLL);
              memcpy(v89, v53, 0xD2uLL);
              memmove(v87, v53, 0xD2uLL);
              *__dst = v50;
              *&__dst[8] = v49;
              memcpy(&__dst[16], v89, 0xD2uLL);

              sub_1B2181728(v86, v85);
              sub_1B2181728(v87, v85);
              sub_1B212AC5C(__dst, &qword_1EB7A13A8, &qword_1B2257E40);
              memcpy(&v85[2], v87, 0xD2uLL);
              v85[0] = v50;
              v85[1] = v49;
              sub_1B21C3FEC();
              v55 = v54;
              memcpy(v89, v85, 0xE2uLL);
              sub_1B212AC5C(v89, &qword_1EB7A13A8, &qword_1B2257E40);
              v56 = *(v55 + 16);
              v57 = *(v48 + 16);
              v58 = v57 + v56;
              if (__OFADD__(v57, v56))
              {
                goto LABEL_50;
              }

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v58 > *(v48 + 24) >> 1)
              {
                if (v57 <= v58)
                {
                  v60 = v57 + v56;
                }

                else
                {
                  v60 = v57;
                }

                sub_1B2161FB4(isUniquelyReferenced_nonNull_native, v60, 1, v48);
                v48 = v61;
              }

              if (*(v55 + 16))
              {
                if ((*(v48 + 24) >> 1) - *(v48 + 16) < v56)
                {
                  goto LABEL_52;
                }

                swift_arrayInitWithCopy();

                if (v56)
                {
                  v62 = *(v48 + 16);
                  v63 = __OFADD__(v62, v56);
                  v64 = v62 + v56;
                  if (v63)
                  {
                    goto LABEL_53;
                  }

                  *(v48 + 16) = v64;
                }
              }

              else
              {

                if (v56)
                {
                  goto LABEL_51;
                }
              }

              v47 += 2;
              ++v44;
            }

            sub_1B211AC90(__src);
            memcpy(v96, v90, 0xA8uLL);
            v96[168] = 0;
            *v97 = v89[0];
            *&v97[3] = *(v89 + 3);
            v98 = v48;
            a1 = v80;
            sub_1B21376C4();
            v9 = v81;
            if (!v81)
            {
              v24 = v74;
              v23 = v75;
              sub_1B2142BCC(v96);
              sub_1B211AC90(__src);
              sub_1B211AC90(__src);
              v10 = v79;
              goto LABEL_13;
            }

            sub_1B2142BCC(v96);
            sub_1B211AC90(__src);
            sub_1B211AC90(__src);
          }

          else
          {
            v85[0] = *sub_1B21197F4(v92);
            sub_1B2112DCC();
            v65 = sub_1B2119818(v89);
            sub_1B211AF1C(__src, __dst);
            sub_1B214CFE0(v65, __dst);
            v72 = sub_1B2119120(a1, v66, v67, v68, v69, v70, v71);
            if (!v9)
            {
              v24 = v72;
              v23 = v73;
              sub_1B211AC90(__src);
              goto LABEL_12;
            }

            sub_1B211AC90(__src);
LABEL_43:
            sub_1B211AC90(__src);
          }

          break;
        case 2u:
          v30 = sub_1B2119818(v94);
          memcpy(__dst, v30, 0xA3uLL);
          sub_1B2112DCC();
          v31 = sub_1B2119818(v89);
          sub_1B2127DC0(v31, v85);
          v27 = v9;
          v28 = sub_1B2127E58(a1, 0);
          goto LABEL_10;
        case 3u:
          v32 = sub_1B2119818(v94);
          memcpy(__dst, v32, 0xB8uLL);
          sub_1B2112DCC();
          v33 = sub_1B2119818(v89);
          sub_1B213A774(v33, v85);
          v27 = v9;
          v28 = sub_1B213A7D0(a1);
          goto LABEL_10;
        case 4u:
          v25 = sub_1B2119818(v94);
          memcpy(__dst, v25, 0xA3uLL);
          sub_1B2112DCC();
          v26 = sub_1B2119818(v89);
          sub_1B214D958(v26, v85);
          v27 = v9;
          v28 = sub_1B214DCE8(a1);
LABEL_10:
          v9 = v27;
          if (v27)
          {
            goto LABEL_43;
          }

          v24 = v28;
          v23 = v29;
LABEL_12:
          sub_1B211AC90(__src);
LABEL_13:
          v95 = v12;
          v39 = *(v12 + 16);
          v38 = *(v12 + 24);
          if (v39 >= v38 >> 1)
          {
            sub_1B2116B10(v38 > 1, v39 + 1, 1, v34, v35, v36, v37);
            v12 = v95;
          }

          *(v12 + 16) = v39 + 1;
          v40 = v12 + 16 * v39;
          *(v40 + 32) = v24;
          *(v40 + 40) = v23;
          v14 = v83;
          if (v83 == v82)
          {
            goto LABEL_41;
          }

          continue;
        default:
          v22 = sub_1B2119818(v94);
          v24 = *v22;
          v23 = *(v22 + 8);
          *__dst = *(v22 + 16);
          sub_1B211D778();

          if ((sub_1B211AF84(__dst) & 1) == 0)
          {
            goto LABEL_55;
          }

          goto LABEL_12;
      }

      return sub_1B2122034();
    }

    break;
  }

LABEL_54:
  __break(1u);
LABEL_55:
  result = sub_1B2252EC0();
  __break(1u);
  return result;
}

uint64_t sub_1B211984C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B2119894(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TableAlias();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1B21198D4(uint64_t a1, uint64_t a2, void (*a3)(void *__return_ptr, void *), uint64_t a4, char a5, void *a6)
{
  v43 = a6;
  v8 = *(a1 + 16);
  v35 = a1 + 32;

  v9 = 0;
  while (1)
  {
    if (v9 == v8)
    {
      sub_1B2117018(__src);
      memcpy(__dst, __src, 0xBBuLL);
      v9 = v8;
    }

    else
    {
      if ((v9 & 0x8000000000000000) != 0)
      {
        goto LABEL_26;
      }

      if (v9 >= *(a1 + 16))
      {
        goto LABEL_27;
      }

      if (!*(a2 + 16))
      {
        goto LABEL_28;
      }

      v10 = (v35 + 16 * v9);
      v11 = *v10;
      v12 = v10[1];

      v13 = sub_1B211E590();
      if ((v14 & 1) == 0)
      {
        goto LABEL_29;
      }

      v15 = (*(a2 + 56) + 176 * v13);
      memcpy(v38, v15, 0xABuLL);
      memcpy(__src, v15, 0xABuLL);
      memmove(v39, v15, 0xABuLL);
      v40[0] = v11;
      v40[1] = v12;
      memcpy(&v40[2], __src, 0xABuLL);

      sub_1B21818BC(v38, v37);
      sub_1B21818BC(v39, v37);
      sub_1B2122400(v40, &qword_1EB7A1BD0, &qword_1B226C7C0);
      memcpy(&v37[2], v39, 0xABuLL);
      ++v9;
      v37[0] = v11;
      v37[1] = v12;
      a3(__dst, v37);
      memcpy(__src, v37, 0xBBuLL);
      sub_1B2122400(__src, &qword_1EB7A1BD0, &qword_1B226C7C0);
      nullsub_1();
    }

    memcpy(__src, __dst, 0xBBuLL);
    if (sub_1B2117000(__src) == 1)
    {

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      return;
    }

    v16 = a2;
    v17 = __dst[0];
    v18 = __dst[1];
    v37[0] = __dst[0];
    v37[1] = __dst[1];
    memcpy(v40, &__dst[2], 0xABuLL);
    v19 = *v43;
    v21 = sub_1B211E590();
    v22 = v19[2];
    v23 = (v20 & 1) == 0;
    if (__OFADD__(v22, v23))
    {
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      sub_1B2253390();
      __break(1u);
      goto LABEL_31;
    }

    v24 = v20;
    if (v19[3] < v22 + v23)
    {
      break;
    }

    if (a5)
    {
      if (v20)
      {
        goto LABEL_20;
      }
    }

    else
    {
      sub_1B21619D8(&qword_1EB7A1BD8, &qword_1B225A4B0);
      sub_1B2252E80();
      if (v24)
      {
        goto LABEL_20;
      }
    }

LABEL_17:
    v27 = *v43;
    v27[(v21 >> 6) + 8] |= 1 << v21;
    v28 = (v27[6] + 16 * v21);
    *v28 = v17;
    v28[1] = v18;
    memcpy((v27[7] + 176 * v21), v40, 0xABuLL);
    v29 = v27[2];
    v30 = __OFADD__(v29, 1);
    v31 = v29 + 1;
    if (v30)
    {
      goto LABEL_25;
    }

    v27[2] = v31;
    a5 = 1;
    a2 = v16;
  }

  sub_1B2245854();
  v25 = sub_1B211E590();
  if ((v24 & 1) != (v26 & 1))
  {
    goto LABEL_30;
  }

  v21 = v25;
  if ((v24 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_20:
  v32 = swift_allocError();
  swift_willThrow();
  v38[0] = v32;
  v33 = v32;
  sub_1B21619D8(qword_1EB7A0F98, &unk_1B22595B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1B219A920(v40);

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();

    return;
  }

LABEL_31:
  v39[0] = 0;
  v39[1] = 0xE000000000000000;
  sub_1B2252CD0();
  MEMORY[0x1B2741EB0](0xD00000000000001BLL, 0x80000001B226CFA0);
  sub_1B2252E10();
  MEMORY[0x1B2741EB0](39, 0xE100000000000000);
  sub_1B2252EC0();
  __break(1u);
}

void sub_1B2119D9C()
{
  sub_1B2111830();
  if ((v5 & 1) == 0 || (sub_1B2115F84(), v6 == v7))
  {
LABEL_6:
    sub_1B2111EF8();
    if (v4)
    {
      sub_1B2113B10(v8, v9, v10, v11, v12, v13);
      v14 = sub_1B211A23C();
      j__malloc_size(v14);
      sub_1B211F5F8();
      v14[2] = v3;
      v14[3] = v15;
      if (v2)
      {
LABEL_8:
        v16 = sub_1B2117B84();
        v1(v16);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_8;
    }

    sub_1B2115B30();
    goto LABEL_11;
  }

  sub_1B212CD14();
  if (!v6)
  {
    sub_1B2115544();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1B2119E50(uint64_t *a1, uint64_t a2)
{
  if (*a1)
  {
    v4 = a1[1];
    v8 = *a1;
    v9 = v4;
    v5 = &v8;
    Statement.setArguments(_:)(*(&a2 - 1));
  }

  else if (*(v2 + 96) == 1)
  {
    sub_1B211A000();
    if (!v3)
    {
      v6 = *(v2 + 112);
      v8 = *(v2 + 104);
      v9 = v6;

      v7.values._rawValue = &v8;
      Statement.validateArguments(_:)(v7);
    }
  }
}

void sub_1B2119EFC(uint64_t a1)
{
  sub_1B212425C();
  if (*(v1 + OBJC_IVAR____TtC12GRDBInternal8Database_isInsideTransactionBlock) == 1)
  {
    v5 = v4;
    v6 = v3;
    sub_1B2122734();
    swift_beginAccess();
    if (sqlite3_get_autocommit(*(v2 + 16)))
    {
      v7 = v6();
      v9 = v8;
      v5(v15);
      v10 = v15[0];
      v11 = v15[1];
      v12 = *(v2 + OBJC_IVAR____TtC12GRDBInternal8Database_configuration + 26);
      v13 = sub_1B21AC298();
      sub_1B21152FC(&type metadata for DatabaseError, v13);
      *v14 = 4;
      *(v14 + 8) = 0xD000000000000017;
      *(v14 + 16) = 0x80000001B2270FE0;
      *(v14 + 24) = v7;
      *(v14 + 32) = v9;
      *(v14 + 40) = v10;
      *(v14 + 48) = v11;
      *(v14 + 56) = v12;
      swift_willThrow();
    }
  }
}

uint64_t sub_1B211A000()
{
  type metadata accessor for SchedulingWatchdog();
  v1 = swift_unownedRetainStrong();
  if ((sub_1B2117B40(v1) & 1) == 0)
  {
    goto LABEL_9;
  }

  result = sqlite3_reset(*(v0 + 16));
  if (!result)
  {
    return result;
  }

  v3 = result;
  swift_unownedRetainStrong();
  v4 = Database.lastErrorMessage.getter();
  v6 = v5;

  v7 = Statement.sql.getter();
  v9 = v8;
  sub_1B21AC298();
  swift_allocError();
  v11 = v10;
  if (!v6)
  {
    if (sqlite3_errstr(v3))
    {
      v4 = sub_1B22523F0();
      v6 = v12;
      goto LABEL_6;
    }

    __break(1u);
LABEL_9:
    sub_1B2117938();
    result = sub_1B2252EC0();
    __break(1u);
    return result;
  }

LABEL_6:
  *v11 = v3;
  *(v11 + 8) = v4;
  *(v11 + 16) = v6;
  *(v11 + 24) = v7;
  *(v11 + 32) = v9;
  *(v11 + 40) = 0;
  *(v11 + 48) = 0;
  *(v11 + 56) = 0;
  return swift_willThrow();
}

uint64_t sub_1B211A144(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  v4 = sub_1B2116B08();

  v6 = 0;
  while (1)
  {
    while (1)
    {
      v7 = v6;
      if (v6 == v4)
      {
LABEL_10:

        return v7 != v4;
      }

      if ((v3 & 0xC000000000000001) == 0)
      {
        break;
      }

      result = MEMORY[0x1B27427E0](v6++, v3);
      if (__OFADD__(v7, 1))
      {
        goto LABEL_13;
      }

      v8 = result;
      result = swift_unknownObjectRelease();
      if (v8 == a1)
      {
        goto LABEL_10;
      }
    }

    if ((v6 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v6 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

    ++v6;
    if (*(v3 + 32 + 8 * v7) == a1)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_1B211A23C()
{

  return swift_allocObject();
}

uint64_t sub_1B211A26C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_1B21619D8(a3, a4);
}

void *sub_1B211A2B4(uint64_t a1, const void *a2)
{

  return memcpy(v2, a2, 0xA3uLL);
}

uint64_t sub_1B211A2DC()
{
}

uint64_t sub_1B211A33C(uint64_t a1, ...)
{

  return swift_beginAccess();
}

uint64_t sub_1B211A378(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

void Database.statementWillExecute(_:)(uint64_t a1)
{
  sub_1B2119EFC(sub_1B221D72C);
  if (!v2)
  {
    v4 = sub_1B211BD50(a1);
    if (*(v1 + OBJC_IVAR____TtC12GRDBInternal8Database_isRecordingSelectedRegion) == 1)
    {
      swift_beginAccess();
      v6 = *(a1 + 32);
      v7 = OBJC_IVAR____TtC12GRDBInternal8Database_selectedRegion;
      swift_beginAccess();
      v8 = *(v1 + v7);
      v9[0] = v6;
      v9[1] = v8;

      v10.tableRegions.value._rawValue = v9;
      DatabaseRegion.union(_:)(v10);

      *(v1 + v7) = v9[2];
      swift_endAccess();
    }

    sub_1B211CD70(v4, v5);
    sub_1B211C87C(a1);
  }
}

uint64_t Database.statementDidExecute(_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40) == 1)
  {
    Database.clearSchemaCache()();
  }

  sub_1B211CD70(a1, a2);
  sub_1B211C474(a1);
}

uint64_t sub_1B211A558(uint64_t a1, int a2, char *a3, char *a4)
{

  v7 = sub_1B211A5CC(a2, a3, a4);

  return v7;
}

uint64_t sub_1B211A5CC(int a1, char *__s1, char *a3)
{
  result = 0;
  v6 = v3;
  switch(a1)
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 24:
    case 25:
    case 26:
    case 29:
      result = 0;
      goto LABEL_4;
    case 9:
      result = 0;
      if ((*(v6 + 65) & 1) == 0)
      {
        if (__s1)
        {
          result = strcmp(__s1, "sqlite_master");
          if (result)
          {
            result = strcmp(__s1, "sqlite_temp_master");
            if (result)
            {
              v12 = sub_1B22523F0();
              v14 = v13;
              sub_1B2112A08(v6 + 32);

              sub_1B214AB94();
              sub_1B211575C();
              sub_1B2115120();
              *(v15 + 32) = v12;
              *(v15 + 40) = v14;
              *(v15 + 48) = 0;
              *(v15 + 56) = 1;
              *(v6 + 32) = v16;
              swift_endAccess();
              v17 = swift_unownedRetainStrong();
              sub_1B211CD70(v17, v18);

              sub_1B214BDE0();
              v20 = v19;

              if (v20)
              {
                return 2;
              }

              else
              {
                return 0;
              }
            }
          }
        }
      }

      return result;
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 30:
      result = 0;
      *(v6 + 65) = 1;
LABEL_4:
      *(v6 + 40) = 1;
      return result;
    case 18:
      if (__s1)
      {
        v41 = sub_1B22523F0();
        v43 = v42;
        sub_1B2112A08(v6 + 32);
        sub_1B214AB94();
        sub_1B211575C();
        sub_1B2115120();
        *(v44 + 32) = v41;
        *(v44 + 40) = v43;
        *(v44 + 48) = 0;
        *(v44 + 56) = 0;
        *(v6 + 32) = v45;
        swift_endAccess();
      }

      return 0;
    case 20:
      if (!__s1)
      {
        return 0;
      }

      v23 = sub_1B22523F0();
      v25 = v24;
      if (a3)
      {
        v26 = v23;
        v27 = sub_1B22523F0();
        v29 = v28;
        v30 = HIBYTE(v28) & 0xF;
        if ((v28 & 0x2000000000000000) == 0)
        {
          v30 = v27 & 0xFFFFFFFFFFFFLL;
        }

        if (v30)
        {
          v31 = v27;
          sub_1B21619D8(&qword_1EB7A0F88, &unk_1B22546A0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1B22546B0;
          *(inited + 32) = v31;
          *(inited + 40) = v29;
          v33 = sub_1B213285C(inited);
          v34 = sub_1B2252220();
          v36 = v35;
          sub_1B21C8758(v33);
          v38 = v37;

          v39 = sub_1B2132B34(v38);
          sub_1B21619D8(&qword_1EB7A2190, &unk_1B225B250);
          v40 = swift_initStackObject();
          *(v40 + 16) = xmmword_1B22546B0;
          *(v40 + 32) = v34;
          *(v40 + 40) = v36;
          *(v40 + 48) = v26;
          *(v40 + 56) = v25;
          *(v40 + 64) = v39;
          *(v40 + 72) = 0;
          sub_1B211B358();
        }

        else
        {

          v52 = sub_1B2252220();
          v54 = v53;
          sub_1B21619D8(&qword_1EB7A2190, &unk_1B225B250);
          v55 = swift_initStackObject();
          *(v55 + 16) = xmmword_1B22546B0;
          *(v55 + 32) = v52;
          *(v55 + 40) = v54;
          *(v55 + 48) = v26;
          *(v55 + 56) = v25;
          sub_1B211B358();
          *(v55 + 64) = 0;
          *(v55 + 72) = 0;
        }

        v56 = sub_1B2252190();
        sub_1B2112A08(v6 + 24);
        v57 = *(v6 + 24);
        v58[0] = v56;
        v58[1] = v57;
        v59.tableRegions.value._rawValue = v58;
        DatabaseRegion.union(_:)(v59);

        *(v6 + 24) = v58[2];
        swift_endAccess();
      }

      goto LABEL_51;
    case 22:
      if (!__s1)
      {
        return 0;
      }

      if (!strcmp(__s1, "BEGIN"))
      {
        v9 = *(v6 + 48);
        v10 = *(v6 + 56);
        *(v6 + 48) = 0;
        *(v6 + 56) = 0;
      }

      else
      {
        if (!strcmp(__s1, "COMMIT"))
        {
          v9 = *(v6 + 48);
          v10 = *(v6 + 56);
          v11 = xmmword_1B2259350;
        }

        else
        {
          if (strcmp(__s1, "ROLLBACK"))
          {
            return 0;
          }

          v9 = *(v6 + 48);
          v10 = *(v6 + 56);
          v11 = xmmword_1B225B1F0;
        }

        *(v6 + 48) = v11;
      }

      v21 = *(v6 + 64);
      v22 = 3;
      goto LABEL_46;
    case 23:
      if (!__s1)
      {
        return 0;
      }

      v46 = sub_1B22523F0();
      v48 = v47;
      if (a3)
      {
        v49 = v46;
        v50 = sub_1B22523F0();
        sub_1B214FB4C(v49, v48, v50, v51);
      }

      goto LABEL_51;
    case 31:
      if (!a3)
      {
        return 0;
      }

      if (!strcmp(a3, "sqlite_drop_column"))
      {
        *(v6 + 40) = 1;
      }

      if (sqlite3_libversion_number() > 3018999 || sqlite3_stricmp(a3, "COUNT"))
      {
        return 0;
      }

      swift_beginAccess();
      *(v6 + 24) = 0;
      goto LABEL_51;
    case 32:
      if (!__s1 || !a3)
      {
        return 0;
      }

      sub_1B22523F0();
      if (!strcmp(__s1, "BEGIN"))
      {
        v9 = sub_1B21174BC();
        *(v6 + 64) = 0;
        goto LABEL_47;
      }

      if (!strcmp(__s1, "RELEASE"))
      {
        v9 = sub_1B21174BC();
        v22 = 1;
        goto LABEL_46;
      }

      if (!strcmp(__s1, "ROLLBACK"))
      {
        v9 = sub_1B21174BC();
        v22 = 2;
LABEL_46:
        *(v6 + 64) = v22;
LABEL_47:
        sub_1B211BD38(v9, v10, v21);
        return 0;
      }

LABEL_51:

      return 0;
    default:
      return result;
  }
}

uint64_t sub_1B211AB74(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1B2161A20(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B211ABBC(uint64_t a1)
{
  result = sub_1B214BDD4(a1);
  if (!result)
  {
    v4 = sub_1B212CFD8(0, v3);
    sub_1B2161A20(v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1B211AC20(void *a1)
{
  v2 = a1[1];
  if (*(*a1 + 16) || *(v2 + 16))
  {
    if (*(v1 + 32))
    {
      return 0;
    }

    *&v4 = *a1;
    *(&v4 + 1) = v2;
    swift_beginAccess();
    static StatementArguments.+= infix(_:_:)(v1 + 16, &v4);
    swift_endAccess();
  }

  return 1;
}

uint64_t sub_1B211ACDC()
{

  return swift_arrayInitWithCopy();
}

void sub_1B211AD04()
{

  JUMPOUT(0x1B2742F10);
}

uint64_t sub_1B211AD38()
{

  return swift_allocObject();
}

uint64_t sub_1B211AD64(uint64_t a1)
{

  return swift_allocObject();
}

__n128 sub_1B211ADB0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v3 = a3 + 40 * a1;
  result = *a2;
  v5 = *(a2 + 16);
  *v3 = *a2;
  *(v3 + 16) = v5;
  *(v3 + 32) = *(a2 + 32);
  return result;
}

void sub_1B211ADF0(__n128 a1)
{
  *(v1 + 16) = v4;
  v5 = (v1 + 24 * v3);
  v5[2] = a1;
  v5[3].n128_u8[0] = v2;
}

uint64_t sub_1B211AE44(uint64_t a1)
{

  return sub_1B2122A98(v2 + v1, 1, a1);
}

void sub_1B211AE64()
{

  JUMPOUT(0x1B2741EB0);
}

double sub_1B211AEBC()
{
  result = 0.0;
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0;
  return result;
}

void sub_1B211AED0(uint64_t a1, uint64_t a2)
{
  *(a2 + 16) = 3;
  v5 = *(v4 - 224);
  *(a2 + 24) = *(v4 - 72);
  *(a2 + 32) = v5;
  *(a2 + 40) = v2;
  *(a2 + 48) = v3;
}

uint64_t sub_1B211AF84(__int128 *a1)
{
  sub_1B211AFD4();
  v3 = *a1;
  LOBYTE(a1) = sub_1B211AC20(&v3);

  return a1 & 1;
}

uint64_t sub_1B211AFD4()
{
  v1 = *(v0 + 24);
  if (v1 < 0)
  {
    v3 = *(v0 + 16);

    v4 = sub_1B211AFD4();
    sub_1B211B418(v3, v1);
    return v4;
  }

  else
  {
  }
}

uint64_t sub_1B211B048@<X0>(void *a1@<X8>)
{
  v2 = sub_1B211AFD4();
  swift_beginAccess();
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);

  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_1B211B0B4()
{
  if (*(v0 + 136))
  {
    v1 = *(v0 + 136);
  }

  else
  {
    v1 = sub_1B211B114(v0);
    *(v0 + 136) = v1;
  }

  return v1;
}

uint64_t sub_1B211B114(uint64_t a1)
{
  result = sub_1B211B264();
  if (result < 0xFFFFFFFF80000000)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v3 = result;
  if (result > 0x7FFFFFFF)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    v4 = MEMORY[0x1E69E7CC0];
    if (!result)
    {
      return v4;
    }

    v16 = MEMORY[0x1E69E7CC0];
    sub_1B214177C(0, result, 0);
    v4 = v16;
    v5 = *(a1 + 16);
    for (i = 1; ; ++i)
    {
      result = sqlite3_bind_parameter_name(v5, i);
      if (result)
      {
        v7 = sub_1B22523F0();
        v9 = sub_1B21FD2F0(1uLL, v7, v8);
        v10 = MEMORY[0x1B2741E40](v9);
        v12 = v11;
      }

      else
      {
        v10 = 0;
        v12 = 0;
      }

      v14 = *(v16 + 16);
      v13 = *(v16 + 24);
      if (v14 >= v13 >> 1)
      {
        result = sub_1B214177C(v13 > 1, v14 + 1, 1);
      }

      *(v16 + 16) = v14 + 1;
      v15 = v16 + 16 * v14;
      *(v15 + 32) = v10;
      *(v15 + 40) = v12;
      if (!v3)
      {
        break;
      }

      if (!--v3)
      {
        return v4;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1B211B264()
{
  if (*(v0 + 128) != 1)
  {
    return *(v0 + 120);
  }

  result = sqlite3_bind_parameter_count(*(v0 + 16));
  *(v0 + 120) = result;
  *(v0 + 128) = 0;
  return result;
}

uint64_t sub_1B211B2A0()
{
  sub_1B211B358();
  v1 = MEMORY[0x1E69E7CC0];
  v2 = sub_1B2252190();
  swift_beginAccess();
  *(v0 + 24) = v2;

  swift_beginAccess();
  *(v0 + 32) = v1;

  *(v0 + 40) = 0;
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  v5 = *(v0 + 64);
  *(v0 + 64) = -1;
  result = sub_1B211BD38(v3, v4, v5);
  *(v0 + 65) = 0;
  return result;
}

unint64_t sub_1B211B358()
{
  result = qword_1ED85E6E0;
  if (!qword_1ED85E6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED85E6E0);
  }

  return result;
}

void *sub_1B211B3AC()
{
  sub_1B211B418(*(v0 + 16), *(v0 + 24));

  return v0;
}

uint64_t sub_1B211B3E4()
{
  sub_1B211B3AC();

  return MEMORY[0x1EEE6BDC0](v0, 56, 7);
}

uint64_t sub_1B211B418(uint64_t a1, uint64_t a2)
{

  if ((a2 & 0x8000000000000000) == 0)
  {
  }

  return result;
}

uint64_t sub_1B211B460()
{

  return MEMORY[0x1EEE6BDC0](v0, 33, 7);
}

uint64_t sub_1B211B4A8@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, void *a3@<X3>, uint64_t *a4@<X8>)
{
  v30[1] = *MEMORY[0x1E69E9840];
  if (!result)
  {
    goto LABEL_10;
  }

  v8 = result;
  v30[0] = 0;
  v9 = *(a2 + 56);
  v10 = *(a2 + 32);
  type metadata accessor for Statement();
  swift_allocObject();

  result = sub_1B211B954(v11, (v8 + v9), v30, v10);
  if (v4)
  {
    *a3 = v4;
    return result;
  }

  if (!v30[0])
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = result;
  *(a2 + 56) = &v30[0][-v8];
  if (!result)
  {
    result = sub_1B211CE84();
LABEL_10:
    *a4 = 0;
    return result;
  }

  result = swift_beginAccess();
  if (!*(a2 + 64))
  {
LABEL_11:
    *a4 = v12;
    return result;
  }

  result = swift_beginAccess();
  v13 = *(a2 + 64);
  if (v13)
  {
    v14 = *(v13 + 16);

    v15 = sub_1B211B0B4();

    v19 = sub_1B211C0C4(v15, (a2 + 64), v12, v14, v16, v17, v18);
    swift_endAccess();

    MEMORY[0x1EEE9AC00](v20);
    sub_1B21619D8(&qword_1EB7A10C0, &unk_1B2257E70);
    sub_1B2150658();
    KeyPath = swift_getKeyPath();

    v27 = sub_1B21506CC(v19, KeyPath, v22, v23, v24, v25, v26);

    v29[0] = v27;
    v29[1] = MEMORY[0x1E69E7CC8];
    v28.values._rawValue = v29;
    Statement.setUncheckedArguments(_:)(v28);

    goto LABEL_11;
  }

LABEL_13:
  __break(1u);
  return result;
}

__n128 sub_1B211B734(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1B211B748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, int a5)
{
  v7 = *a4;
  v8 = a4[1];
  *(v5 + 64) = 0;
  *(v5 + 72) = 0;
  *(v5 + 16) = a1;
  v9 = sub_1B2252350();

  *(v5 + 24) = v9;
  *(v5 + 32) = a5;
  if (v7)
  {
    v10 = *(v7 + 16);
  }

  else
  {
    v10 = 0;
  }

  *(v5 + 40) = v10;
  *(v5 + 48) = v7 == 0;
  *(v5 + 56) = 0;
  swift_beginAccess();
  v11 = *(v5 + 64);
  v12 = *(v5 + 72);
  *(v5 + 64) = v7;
  *(v5 + 72) = v8;
  sub_1B211A378(v11, v12);
  return v5;
}

uint64_t sub_1B211B804()
{
  v2 = *(v0 + 24);
  if (*(v0 + 56) >= *(v2 + 16) - 1)
  {
    result = sub_1B211CE84();
    if (!v1)
    {
      return 0;
    }
  }

  else
  {
    result = sub_1B211B4A8(v2 + 32, v0, &v4, &v5);
    if (!v1)
    {
      return v5;
    }
  }

  return result;
}

uint64_t sub_1B211B870(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t sub_1B211B888(uint64_t *a1, uint64_t (*a2)(void), uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v5 = *a1;
  v6 = *(v4 + *a1);
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v9 = v4;
    a2();
    swift_allocObject();
    sub_1B2113B28();

    v7 = a4(v10);
    *(v9 + v5) = v7;
  }

  return v7;
}

uint64_t *sub_1B211B954(uint64_t a1, const char *a2, const char **a3, unsigned int a4)
{
  v5 = v4;
  ppStmt[1] = *MEMORY[0x1E69E9840];
  v53 = *v4;
  v4[3] = 0;
  sub_1B211B358();
  v10 = MEMORY[0x1E69E7CC0];
  v5[4] = sub_1B2252190();
  *(v5 + 40) = 0;
  v5[6] = 0;
  v5[7] = 0;
  *(v5 + 64) = -1;
  v5[9] = v10;
  v5[11] = 0;
  v11 = MEMORY[0x1E69E7CC8];
  *(v5 + 96) = 1;
  v5[13] = v10;
  v5[14] = v11;
  v5[15] = 0;
  *(v5 + 128) = 1;
  v5[17] = 0;
  type metadata accessor for SchedulingWatchdog();
  if (sub_1B2117B40(a1))
  {
    v12 = sub_1B211B91C();
    sub_1B211B2A0();
    ppStmt[0] = 0;
    sub_1B21115FC();
    swift_beginAccess();
    v13 = sqlite3_prepare_v3(*(a1 + 16), a2, -1, a4, ppStmt, a3);
    if (!v13)
    {
      v31 = ppStmt[0];
      if (ppStmt[0])
      {
        v5[10] = a1;
        v5[2] = v31;
        sub_1B21115FC();
        swift_beginAccess();
        v32 = *(v12 + 24);
        swift_beginAccess();
        v5[4] = v32;
        swift_unownedRetain();

        *(v5 + 40) = *(v12 + 40);
        v33 = *(v12 + 48);
        v34 = *(v12 + 56);
        v35 = v5[6];
        v36 = v5[7];
        v37 = *(v12 + 64);
        v5[6] = v33;
        v5[7] = v34;
        v38 = *(v5 + 64);
        *(v5 + 64) = v37;
        sub_1B211BD24(v33, v34, v37);
        sub_1B211BD38(v35, v36, v38);
        sub_1B21115FC();
        swift_beginAccess();
        v39 = *(v12 + 32);

        v5[9] = v39;
      }

      else
      {

        sub_1B211BD38(v5[6], v5[7], *(v5 + 64));

        sub_1B2122D30(v40, v41, v42, v43, v44, v45, v46, v47, v49, v50, v51, v53);

        return 0;
      }

      return v5;
    }

    v14 = v13;
    v15 = Database.lastErrorMessage.getter();
    v17 = v16;
    v52 = sub_1B22523F0();
    v19 = v18;
    sub_1B21AC298();
    swift_allocError();
    v21 = v20;
    if (v17)
    {
LABEL_6:
      *v21 = v14;
      *(v21 + 8) = v15;
      *(v21 + 16) = v17;
      *(v21 + 24) = v52;
      *(v21 + 32) = v19;
      *(v21 + 40) = 0;
      *(v21 + 48) = 0;
      *(v21 + 56) = 0;
      swift_willThrow();

      sub_1B211BD38(v5[6], v5[7], *(v5 + 64));

      sub_1B2122D30(v23, v24, v25, v26, v27, v28, v29, v30, v49, v50, v52, v53);

      return v5;
    }

    if (sqlite3_errstr(v14))
    {
      v15 = sub_1B22523F0();
      v17 = v22;
      goto LABEL_6;
    }

    __break(1u);
  }

  sub_1B2117938();
  result = sub_1B2252EC0();
  __break(1u);
  return result;
}

uint64_t sub_1B211BD24(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_1B211C0AC(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_1B211BD38(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_1B211B870(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_1B211BD50(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC12GRDBInternal8Database__isSuspended);
  v3 = *(v2 + 24);

  [v3 lock];
  sub_1B2117330();
  swift_beginAccess();
  sub_1B21184CC();
  sub_1B211C6E8(v4, v5, v6);
  [*(v2 + 24) unlock];
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Statement.execute(arguments:)(GRDBInternal::StatementArguments_optional arguments)
{
  v6 = *arguments.value.values._rawValue;
  sub_1B2119E50(&v6, arguments.value.namedValues._rawValue);
  if (!v2)
  {
    swift_unownedRetainStrong();
    Database.statementWillExecute(_:)(v1);
    sub_1B211D800();

    v3 = *(v1 + 16);
    do
    {
      v4 = sqlite3_step(v3);
    }

    while (v4 == 100);
    if (v4 == 101)
    {
      swift_unownedRetainStrong();
      Database.statementDidExecute(_:)(v1, v5);
    }

    else
    {
      swift_unownedRetainStrong();
      sub_1B2122700(v1);
    }

    sub_1B211D800();
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Statement.validateArguments(_:)(GRDBInternal::StatementArguments a1)
{

  sub_1B211BF3C(v1, 0);
  if (!v2)
  {
  }
}

uint64_t sub_1B211BF3C(uint64_t a1, char a2)
{
  v6 = *(*v2 + 16);
  v7 = sub_1B211B0B4();

  v11 = sub_1B211C0C4(v7, v2, a1, v6, v8, v9, v10);

  if (!v3 && (a2 & 1) == 0 && *(*v2 + 16))
  {

    sub_1B2252CD0();

    v12 = sub_1B2252FD0();
    MEMORY[0x1B2741EB0](v12);

    v13 = Statement.sql.getter();
    v15 = v14;
    sub_1B21AC298();
    swift_allocError();
    *v16 = 21;
    *(v16 + 8) = 0xD000000000000025;
    *(v16 + 16) = 0x80000001B2270150;
    *(v16 + 24) = v13;
    *(v16 + 32) = v15;
    *(v16 + 40) = 0;
    *(v16 + 48) = 0;
    *(v16 + 56) = 0;
    swift_willThrow();
  }

  return v11;
}

uint64_t sub_1B211C0AC(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t sub_1B211C0C4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *(a1 + 16);
  if (!v9)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v11 = a1;
  v58 = MEMORY[0x1E69E7CC0];
  sub_1B2114114(0, v9, 0, a4, a5, a6, a7);
  v12 = v58;
  v13 = (v11 + 40);
  while (1)
  {
    v53 = v12;
    v14 = *v13;
    if (!*v13)
    {
      break;
    }

    v11 = *(v13 - 1);
    v15 = a2[1];
    v16 = *(v15 + 16);

    if (v16 && (v17 = sub_1B211E590(), (v18 & 1) != 0))
    {
      v19 = *(v15 + 56) + 24 * v17;
      v8 = *v19;
      v7 = *(v19 + 8);
      LOBYTE(v11) = *(v19 + 16);
      sub_1B2113A20(*v19, v7, v11);
    }

    else
    {
      v20 = *a2;
      if (!*(*a2 + 16))
      {
        sub_1B2252CD0();

        sub_1B2118544();
        v54 = v38;
        v56 = v37;
        MEMORY[0x1B2741EB0](v11, v14);
        v39 = v54;
        v40 = v56;
        v41 = Statement.sql.getter();
        v12 = v42;
        v43 = sub_1B21AC298();
        v44 = sub_1B21152FC(&type metadata for DatabaseError, v43);
        goto LABEL_19;
      }

      v21 = sub_1B211639C();
      *a2 = v20;
      sub_1B2111C08(v21);
      v23 = v22;
      *a2 = v22;
      sub_1B212A870((v22 + 4));
      v24 = v23[2];
      memmove(v23 + 4, v23 + 7, 24 * v24 - 24);
      v23[2] = v24 - 1;
      *a2 = v23;
    }

LABEL_12:
    v12 = v53;
    v35 = *(v53 + 16);
    v34 = *(v53 + 24);
    if (v35 >= v34 >> 1)
    {
      sub_1B2114114(v34 > 1, v35 + 1, 1, v25, v26, v27, v28);
      v12 = v53;
    }

    v13 += 2;
    *(v12 + 16) = v35 + 1;
    v36 = v12 + 24 * v35;
    *(v36 + 32) = v8;
    *(v36 + 40) = v7;
    *(v36 + 48) = v11;
    if (!--v9)
    {

      return v12;
    }
  }

  v29 = *a2;
  if (*(*a2 + 16))
  {
    v30 = sub_1B211639C();
    *a2 = v29;
    sub_1B2111C08(v30);
    v32 = v31;
    *a2 = v31;
    sub_1B212A870((v31 + 4));
    v33 = v32[2];
    memmove(v32 + 4, v32 + 7, 24 * v33 - 24);
    v32[2] = v33 - 1;
    *a2 = v32;
    goto LABEL_12;
  }

  sub_1B2252CD0();

  sub_1B2118544();
  v55 = v47 + 9;
  v57 = v46;
  v48 = sub_1B2252FD0();
  MEMORY[0x1B2741EB0](v48);

  v39 = v55;
  v40 = v57;
  v41 = Statement.sql.getter();
  v12 = v49;
  v50 = sub_1B21AC298();
  v44 = sub_1B21152FC(&type metadata for DatabaseError, v50);
LABEL_19:
  sub_1B2112244(v44, v45);
  *(v51 + 8) = v39;
  *(v51 + 16) = v40;
  *(v51 + 24) = v41;
  *(v51 + 32) = v12;
  *(v51 + 40) = 0;
  *(v51 + 48) = 0;
  *(v51 + 56) = 0;
  swift_willThrow();

  return v12;
}

uint64_t sub_1B211C444()
{
  if (*(v0 + OBJC_IVAR____TtC12GRDBInternal8Database__readOnlyDepth) <= 0)
  {
    return *(v0 + OBJC_IVAR____TtC12GRDBInternal8Database_configuration + 1);
  }

  else
  {
    return 1;
  }
}

void sub_1B211C474(uint64_t a1)
{
  sub_1B21115FC();
  swift_beginAccess();
  if (sub_1B2116B08())
  {
    sub_1B21118B8();
    swift_beginAccess();
    *(v1 + 48) = MEMORY[0x1E69E7CC0];

    sub_1B2175F98();
    type metadata accessor for SchedulingWatchdog();
    v3 = sub_1B21114CC();
    if (!v3)
    {
      __break(1u);
      JUMPOUT(0x1B211C6C8);
    }

    *(v3 + 24) = 0;
  }

  v4 = *(a1 + 64);
  v6 = *(a1 + 48);
  v5 = *(a1 + 56);
  switch(v4)
  {
    case 0:
      v7 = sub_1B21146D8();
      sub_1B211BD24(v7, v8, 0);

      v9 = sub_1B21146D8();
      sub_1B2176FDC(v9, v10);
      goto LABEL_7;
    case 1:
      v19 = sub_1B21146D8();
      sub_1B211BD24(v19, v20, 1u);

      v21 = sub_1B21146D8();
      sub_1B2177280(v21, v22);

      if (*(v1 + 32) || (swift_unownedRetainStrong(), v23 = Database.isInsideTransaction.getter(), , (v23 & 1) != 0))
      {
        if (sub_1B2176FA4())
        {
          sub_1B21214C0();
        }

LABEL_8:
        v15 = sub_1B21146D8();
        sub_1B211BD38(v15, v16, v4);
LABEL_9:
        v17 = *(v1 + 32);
        *(v1 + 32) = 0;
        if (v17 == 2)
        {
          swift_unownedRetainStrong();
          v18 = sub_1B211C444();

          sub_1B21766E4((v18 & 1) == 0);
        }

        else if (v17 == 1)
        {
          sub_1B21213B0();
        }

        else
        {
          sub_1B211C6D8(v17);
        }
      }

      else
      {
        sub_1B2121A40();
        v24 = sub_1B21146D8();
        sub_1B211BD38(v24, v25, 1u);
      }

      break;
    case 2:
      v11 = sub_1B21146D8();
      sub_1B211BD24(v11, v12, 2u);

      v13 = sub_1B21146D8();
      sub_1B2177080(v13, v14);
LABEL_7:

      goto LABEL_8;
    case 3:
      if (v6 ^ 1 | v5 || *(v1 + 32))
      {
        goto LABEL_9;
      }

      sub_1B2121A40();
      break;
    default:
      goto LABEL_9;
  }
}

void sub_1B211C6D8(id a1)
{
  if (a1 >= 3)
  {
  }
}

const char *sub_1B211C6E8(const char *result, uint64_t a2, uint64_t a3)
{
  if (*result == 1)
  {
    result = sub_1B2238D48();
    if (!v3)
    {
      if (result == 7102839 && v6 == 0xE300000000000000)
      {
      }

      else
      {
        v8 = sub_1B22531F0();

        if ((v8 & 1) == 0)
        {
LABEL_12:
          result = sub_1B2230638();
          if ((result & 1) == 0)
          {
            swift_beginAccess();
            sqlite3_exec(*(a2 + 16), "ROLLBACK", 0, 0, 0);
            v9 = Statement.sql.getter();
            v11 = v10;
            v13 = *(a3 + 104);
            v12 = *(a3 + 112);
            v14 = *(a2 + OBJC_IVAR____TtC12GRDBInternal8Database_configuration + 26);
            sub_1B21AC298();
            swift_allocError();
            *v15 = 4;
            *(v15 + 8) = 0xD000000000000015;
            *(v15 + 16) = 0x80000001B2270F90;
            *(v15 + 24) = v9;
            *(v15 + 32) = v11;
            *(v15 + 40) = v13;
            *(v15 + 48) = v12;
            *(v15 + 56) = v14;
            swift_willThrow();
          }

          return result;
        }
      }

      result = Statement.isReadonly.getter();
      if (result)
      {
        return result;
      }

      goto LABEL_12;
    }
  }

  return result;
}

void sub_1B211C87C(uint64_t a1)
{
  v2 = v1;
  swift_unownedRetainStrong();
  v4 = sub_1B211C444();

  if ((v4 & 1) != 0 || (sub_1B21115FC(), swift_beginAccess(), !sub_1B2116B08()))
  {
LABEL_49:
    v68 = v2[4];
    v2[4] = 0;
    sub_1B211C6D8(v68);
    return;
  }

  type metadata accessor for SchedulingWatchdog();
  v5 = sub_1B21114CC();
  if (v5)
  {
    *(v5 + 24) = v1;

    v6 = *(a1 + 72);
    v7 = *(v6 + 16);
    v75 = v1;
    if (v7 != 1)
    {
      if (v7)
      {
        v29 = v1[5];
        v73 = v29 & 0xC000000000000001;
        v74 = sub_1B2116B08();
        v71 = v29 + 32;
        v72 = v29 & 0xFFFFFFFFFFFFFF8;

        v69 = v29;

        v30 = 0;
        v70 = MEMORY[0x1E69E7CC0];
        while (v30 != v74)
        {
          if (v73)
          {
            v31 = MEMORY[0x1B27427E0](v30, v69);
          }

          else
          {
            if (v30 >= *(v72 + 16))
            {
              goto LABEL_54;
            }

            v31 = *(v71 + 8 * v30);
          }

          v32 = __OFADD__(v30, 1);
          v33 = v30 + 1;
          if (v32)
          {
            goto LABEL_53;
          }

          v76 = v33;
          v34 = *(v6 + 16);
          swift_retain_n();
          v35 = 0;
          v78 = MEMORY[0x1E69E7CC0];
LABEL_28:
          v36 = (v6 + 56 + 32 * v35);
          while (v34 != v35)
          {
            if (v35 >= *(v6 + 16))
            {
              __break(1u);
              goto LABEL_51;
            }

            v38 = *(v36 - 3);
            v37 = *(v36 - 2);
            v39 = *(v36 - 1);
            v40 = *v36;
            v41 = sub_1B21155DC();
            sub_1B21785C4(v41, v42, v43, v44);
            v45 = sub_1B21155DC();
            if (sub_1B217605C(v45, v46, v47, v48))
            {
              v53 = v78;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_1B216EBA0();
                v53 = v78;
              }

              v54 = *(v53 + 16);
              v55 = v54 + 1;
              if (v54 >= *(v53 + 24) >> 1)
              {
                sub_1B216EBA0();
                v55 = v54 + 1;
                v53 = v78;
              }

              ++v35;
              *(v53 + 16) = v55;
              v78 = v53;
              v56 = v53 + 32 * v54;
              *(v56 + 32) = v38;
              *(v56 + 40) = v37;
              *(v56 + 48) = v39;
              *(v56 + 56) = v40;
              goto LABEL_28;
            }

            v49 = sub_1B21155DC();
            sub_1B21505F8(v49, v50, v51, v52);
            v36 += 32;
            ++v35;
          }

          if (*(v78 + 16))
          {

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v2 = v75;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1B2111614(isUniquelyReferenced_nonNull_native, v58, v59, v70);
              v70 = v62;
            }

            v60 = *(v70 + 16);
            if (v60 >= *(v70 + 24) >> 1)
            {
              sub_1B2161FE4();
              v70 = v63;
            }

            *(v70 + 16) = v60 + 1;
            v61 = (v70 + 24 * v60);
            v61[4] = v31;
            v61[5] = v78;
            v61[6] = v6;
            v30 = v76;
          }

          else
          {

            v2 = v75;
            v30 = v76;
          }
        }

        sub_1B21118B8();
        swift_beginAccess();
        v8 = v70;
      }

      else
      {
        sub_1B21118B8();
        swift_beginAccess();
        v8 = MEMORY[0x1E69E7CC0];
      }

LABEL_48:
      v2[6] = v8;

      sub_1B2175F98();
      goto LABEL_49;
    }

    v9 = *(v6 + 32);
    v10 = *(v6 + 40);
    v11 = *(v6 + 48);
    v12 = *(v6 + 56);
    v13 = v2[5];
    v14 = sub_1B2116B08();
    sub_1B21785C4(v9, v10, v11, v12);

    v15 = 0;
    v77 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v14 == v15)
      {

        v64 = sub_1B212CD60();
        sub_1B21505F8(v64, v65, v66, v67);
        v2 = v75;
        sub_1B21118B8();
        swift_beginAccess();
        v8 = v77;
        goto LABEL_48;
      }

      if ((v13 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1B27427E0](v15, v13);
      }

      else
      {
        if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_52;
        }

        sub_1B2117C0C();
      }

      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      v17 = sub_1B212CD60();
      if (sub_1B217605C(v17, v18, v19, v20))
      {
        v21 = swift_isUniquelyReferenced_nonNull_native();
        if ((v21 & 1) == 0)
        {
          sub_1B2111614(v21, v22, v23, v77);
          v77 = v27;
        }

        v24 = *(v77 + 16);
        v25 = v24 + 1;
        if (v24 >= *(v77 + 24) >> 1)
        {
          sub_1B2161FE4();
          v25 = v24 + 1;
          v77 = v28;
        }

        *(v77 + 16) = v25;
        v26 = (v77 + 24 * v24);
        v26[5] = 0;
        v26[6] = 0;
        v26[4] = v10;
        v15 = v16;
      }

      else
      {

        ++v15;
      }
    }

LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
  }

  __break(1u);
}

uint64_t Statement.deinit()
{
  sqlite3_finalize(*(v0 + 16));

  sub_1B211BD38(*(v0 + 48), *(v0 + 56), *(v0 + 64));

  swift_unownedRelease();

  return v0;
}

uint64_t Statement.__deallocating_deinit()
{
  Statement.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 144, 7);
}

uint64_t SQLStatementCursor.__deallocating_deinit()
{
  SQLStatementCursor.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 80, 7);
}

uint64_t sub_1B211CE84()
{
  result = swift_beginAccess();
  v2 = *(v0 + 64);
  if (v2 && (*(v0 + 48) & 1) == 0)
  {
    if (*(v2 + 16))
    {
      sub_1B2252CD0();

      v3 = sub_1B2252FD0();
      MEMORY[0x1B2741EB0](v3);

      v4 = sub_1B21AC298();
      v5 = sub_1B21152FC(&type metadata for DatabaseError, v4);
      sub_1B2112244(v5, v6);
      *(v7 + 8) = 0xD000000000000025;
      *(v7 + 16) = 0x80000001B2270150;
      *(v7 + 24) = 0u;
      *(v7 + 40) = 0u;
      *(v7 + 56) = 0;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_1B211CF8C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1B211CFCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 80) = sub_1B211DF80(MEMORY[0x1E69E7CC0], a2, a3, a4, a5, a6, a7);
  *(v7 + 88) = v9;
  *(v7 + 56) = a1;
  v10 = *(a1 + 16);
  *(v7 + 64) = v10;
  swift_retain_n();
  v11 = sub_1B211DAEC(v10, a1);
  *(v7 + 40) = &type metadata for StatementRowImpl;
  *(v7 + 48) = &off_1F2977710;
  *(v7 + 16) = v11;
  *(v7 + 24) = v12;
  *(v7 + 32) = v13;
  LODWORD(v10) = sqlite3_column_count(*(v7 + 64));

  *(v7 + 72) = v10;
  return v7;
}

uint64_t sub_1B211D084(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = swift_allocObject();
  sub_1B21230F0(a1, a2, a3);
  return v6;
}

sqlite3_int64 sub_1B211D0EC@<X0>(sqlite3_stmt *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  result = sqlite3_column_int64(a1, a2);
  *a3 = result;
  *(a3 + 8) = 0;
  return result;
}

void sub_1B211D118(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v27 = *(a1 + 16);
  for (i = (a1 + 64); ; i += 5)
  {
    if (v27 == v4)
    {

      return;
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_1B2253390();
      __break(1u);
      goto LABEL_22;
    }

    v29 = v4;
    v7 = *(i - 4);
    v6 = *(i - 3);
    v8 = *(i - 1);
    v9 = *i;
    v10 = *a3;
    v30 = *(i - 2);

    v12 = sub_1B211E590();
    v13 = v10[2];
    v14 = (v11 & 1) == 0;
    v15 = v13 + v14;
    if (__OFADD__(v13, v14))
    {
      goto LABEL_19;
    }

    v16 = v11;
    if (v10[3] < v15)
    {
      break;
    }

    if (a2)
    {
      if (v11)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_1B21619D8(&qword_1EB7A1BC0, &qword_1B2259950);
      sub_1B2252E80();
      if (v16)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v19 = *a3;
    *(*a3 + 8 * (v12 >> 6) + 64) |= 1 << v12;
    v20 = (v19[6] + 16 * v12);
    *v20 = v7;
    v20[1] = v6;
    v21 = (v19[7] + 24 * v12);
    *v21 = v30;
    v21[1] = v8;
    v21[2] = v9;
    v22 = v19[2];
    v23 = __OFADD__(v22, 1);
    v24 = v22 + 1;
    if (v23)
    {
      goto LABEL_20;
    }

    v19[2] = v24;
    v4 = v29 + 1;
    a2 = 1;
  }

  sub_1B224560C(v15, a2 & 1);
  v17 = sub_1B211E590();
  if ((v16 & 1) != (v18 & 1))
  {
    goto LABEL_21;
  }

  v12 = v17;
  if ((v16 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v25 = swift_allocError();
  swift_willThrow();
  v26 = v25;
  sub_1B21619D8(qword_1EB7A0F98, &unk_1B22595B0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_22:
  sub_1B2252CD0();
  MEMORY[0x1B2741EB0](0xD00000000000001BLL, 0x80000001B226CFA0);
  sub_1B2252E10();
  MEMORY[0x1B2741EB0](39, 0xE100000000000000);
  sub_1B2252EC0();
  __break(1u);
}

uint64_t static Row.fetchOne(_:arguments:adapter:)(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v10 = *a2;
  static Row.fetchCursor(_:arguments:adapter:)(a1, &v10, a3);
  if (!v3)
  {
    v4 = sub_1B211EB44();
    if (v4)
    {
      v6 = v4[5];
      v7 = v4[6];
      sub_1B21139A0(v4 + 2, v6);
      v8 = *(v7 + 112);

      v8(v9, v6, v7);
    }
  }

  return sub_1B2122C74();
}

uint64_t sub_1B211D53C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return type metadata accessor for QueryInterfaceRequest(0, v4, a3, a4);
}

uint64_t sub_1B211D580(uint64_t a1, uint64_t a2)
{

  return sub_1B22531F0();
}

uint64_t sub_1B211D59C()
{

  return type metadata accessor for DatabaseFunction();
}

__n128 sub_1B211D5C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a10, uint64_t a9, __n128 a11, __int128 a12, uint64_t a13)
{
  result = a11;
  *v13 = a11;
  *(v13 + 16) = a12;
  *(v13 + 32) = a13;
  return result;
}

void *sub_1B211D5DC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t __dst, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va1, a30);
  va_start(__srca, a30);
  __src = va_arg(va1, void);
  v34 = va_arg(va1, void);
  v35 = va_arg(va1, void);
  v36 = va_arg(va1, void);
  v37 = va_arg(va1, void);
  v38 = va_arg(va1, void);
  v39 = va_arg(va1, void);
  v40 = va_arg(va1, void);
  v41 = va_arg(va1, void);
  v42 = va_arg(va1, void);
  v43 = va_arg(va1, void);
  v44 = va_arg(va1, void);
  v45 = va_arg(va1, void);
  v46 = va_arg(va1, void);
  v47 = va_arg(va1, void);
  v48 = va_arg(va1, void);
  v49 = va_arg(va1, void);
  v50 = va_arg(va1, void);
  v51 = va_arg(va1, void);
  v52 = va_arg(va1, void);
  v53 = va_arg(va1, void);

  return memcpy(&__dst, __srca, 0xA2uLL);
}

void *sub_1B211D5F8()
{

  return memcpy(&STACK[0x250], &STACK[0x3A0], 0xA3uLL);
}

void sub_1B211D6D0()
{
  sub_1B21117B4(v0, 0, 1, v1);

  TableRequest<>.filter<A>(key:)();
}

void sub_1B211D75C()
{

  JUMPOUT(0x1B2741EB0);
}

uint64_t sub_1B211D778()
{

  return sub_1B211AF1C(&STACK[0x6C8], &STACK[0x3D8]);
}

uint64_t sub_1B211D790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  return sub_1B2119120(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_1B211D7E8(uint64_t a1)
{

  return sub_1B212EBC0(a1);
}

uint64_t sub_1B211D850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return type metadata accessor for QueryInterfaceRequest(0, v4, a3, a4);
}

uint64_t sub_1B211D894@<X0>(void *a1@<X8>)
{

  return sub_1B218E934(v2, v1, a1);
}

uint64_t sub_1B211D8D0(uint64_t a1, uint64_t a2, ...)
{

  return swift_beginAccess();
}

uint64_t sub_1B211D8EC(uint64_t a1)
{

  return sub_1B2252E70();
}

unint64_t sub_1B211D920(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = sub_1B211DAE0(a3);

  return sub_1B21BF944(a2, v5, a3);
}

void sub_1B211D970()
{

  sub_1B214400C();
}

uint64_t sub_1B211D9CC()
{

  return swift_getAssociatedTypeWitness();
}

id sub_1B211D9EC(id a1, SEL a2, uint64_t a3)
{

  return [a1 a2];
}

void sub_1B211DA34()
{

  sub_1B21617F4();
}

void *sub_1B211DA54(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va1, a22);
  va_start(__srca, a22);
  __src = va_arg(va1, void);
  v27 = va_arg(va1, void);
  v28 = va_arg(va1, void);
  v29 = va_arg(va1, void);
  v30 = va_arg(va1, void);
  v31 = va_arg(va1, void);
  v32 = va_arg(va1, void);
  v33 = va_arg(va1, void);
  v34 = va_arg(va1, void);
  v35 = va_arg(va1, void);
  v36 = va_arg(va1, void);
  v37 = va_arg(va1, void);
  v38 = va_arg(va1, void);
  v39 = va_arg(va1, void);
  v40 = va_arg(va1, void);
  v41 = va_arg(va1, void);
  v42 = va_arg(va1, void);
  v43 = va_arg(va1, void);
  v44 = va_arg(va1, void);
  v45 = va_arg(va1, void);
  v46 = va_arg(va1, void);
  v47 = va_arg(va1, void);
  v48 = va_arg(va1, void);

  return memcpy((v22 + 32), __srca, 0xB8uLL);
}

uint64_t sub_1B211DA88()
{
}

uint64_t sub_1B211DAA0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_getWitnessTable();
}

uint64_t sub_1B211DAEC(sqlite3_stmt *a1, uint64_t a2)
{
  result = sqlite3_column_count(a1);
  if ((result & 0x80000000) != 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return result;
  }

  v8 = MEMORY[0x1E69E7CC0];
  if (result)
  {
    v31 = a2;
    v9 = result;
    v34 = MEMORY[0x1E69E7CC0];
    sub_1B2116B10(0, result, 0, v4, v5, v6, v7);
    v10 = 0;
    v11 = v34;
    while (1)
    {
      result = sqlite3_column_name(a1, v10);
      if (!result)
      {
        goto LABEL_23;
      }

      sub_1B22523F0();
      v12 = sub_1B2252220();
      v14 = v13;

      v20 = *(v34 + 16);
      v19 = *(v34 + 24);
      v21 = v20 + 1;
      if (v20 >= v19 >> 1)
      {
        sub_1B2116B10(v19 > 1, v20 + 1, 1, v15, v16, v17, v18);
      }

      ++v10;
      *(v34 + 16) = v21;
      v22 = v34 + 16 * v20;
      *(v22 + 32) = v12;
      *(v22 + 40) = v14;
      if (v9 == v10)
      {
        goto LABEL_11;
      }
    }
  }

  v21 = *(MEMORY[0x1E69E7CC0] + 16);
  if (v21)
  {
    v31 = a2;
    v11 = MEMORY[0x1E69E7CC0];
LABEL_11:
    result = sub_1B211E89C(0, v21, 0);
    v23 = 0;
    v24 = v8;
    v33 = *(v11 + 16);
    v25 = (v11 + 40);
    while (v33 != v23)
    {
      if (v23 >= *(v11 + 16))
      {
        goto LABEL_21;
      }

      v26 = *(v25 - 1);
      v27 = *v25;
      v28 = *(v24 + 16);
      v29 = *(v24 + 24);

      if (v28 >= v29 >> 1)
      {
        result = sub_1B211E89C(v29 > 1, v28 + 1, 1);
      }

      *(v24 + 16) = v28 + 1;
      v30 = (v24 + 24 * v28);
      v30[4] = v26;
      v30[5] = v27;
      v30[6] = v23++;
      v25 += 2;
      if (v21 == v23)
      {

        a2 = v31;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v24 = MEMORY[0x1E69E7CC0];

LABEL_18:
  sub_1B211E40C(v24);
  return a2;
}

Swift::Void __swiftcall Statement.setUncheckedArguments(_:)(GRDBInternal::StatementArguments a1)
{
  v2 = *a1.values._rawValue;
  v3 = *(a1.values._rawValue + 1);
  *(v1 + 104) = *a1.values._rawValue;
  *(v1 + 112) = v3;
  v43 = v2;

  *(v1 + 96) = 0;
  sub_1B211A000();
  sub_1B212357C();
  v4 = sub_1B211B0B4();
  v5 = 0;
  v6 = 0;
  v7 = v4 + 40;
  v39 = v4 + 40;
  v8 = -*(v4 + 16);
  v9 = 1;
  v40 = v3;
  v41 = v4;
  v38 = v8;
LABEL_2:
  v10 = 0;
  v44 = v8 + v5;
  v42 = v9;
  v11 = v9 - 0x7FFFFFFF;
  for (i = (v7 + 16 * v5); ; i += 2)
  {
    if (!(v11 + v10))
    {
      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
      swift_unexpectedError();
      __break(1u);
      return;
    }

    if (!(v44 + v10))
    {
      break;
    }

    if ((v5 + v10) >= *(v4 + 16))
    {
      goto LABEL_18;
    }

    if (*i && *(v3 + 16) && (v13 = v5, v14 = v6, , sub_1B211E590(), v16 = v15, , v6 = v14, v5 = v13, (v16 & 1) != 0))
    {
      v17 = sub_1B2118388();
      sub_1B2113A20(v17, v18, v19);
      v20 = sub_1B2118388();
      sub_1B2123648(v20, v21, v22, v42 + v10);
      v23 = sub_1B2118388();
      v3 = v40;
      v4 = v41;
      sub_1B2113A44(v23, v24, v25);
      v6 = v14;
      v5 = v13;
    }

    else
    {
      v26 = *(v43 + 16);
      if (v6 != v26)
      {
        if (v6 < v26)
        {
          v27 = v5 + v10 + 1;
          v28 = v6 + 1;
          v29 = sub_1B2116444();
          sub_1B2113A20(v29, v30, v31);
          v32 = sub_1B2116444();
          sub_1B2123648(v32, v33, v34, v42 + v10);
          v35 = sub_1B2116444();
          v4 = v41;
          sub_1B2113A44(v35, v36, v37);
          v5 = v27;
          v9 = v42 + v10 + 1;
          v6 = v28;
          v7 = v39;
          v8 = v38;
          goto LABEL_2;
        }

        goto LABEL_19;
      }
    }

    ++v10;
  }
}

uint64_t sub_1B211DF80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(a1 + 16);
  if (v8)
  {
    v20 = MEMORY[0x1E69E7CC0];
    sub_1B2116B10(0, v8, 0, a4, a5, a6, a7);
    v9 = (a1 + 40);
    do
    {
      v11 = *(v9 - 1);
      v10 = *v9;
      v12 = *(v20 + 16);
      v13 = *(v20 + 24);

      if (v12 >= v13 >> 1)
      {
        sub_1B2116B10(v13 > 1, v12 + 1, 1, v14, v15, v16, v17);
      }

      *(v20 + 16) = v12 + 1;
      v18 = v20 + 16 * v12;
      *(v18 + 32) = v11;
      *(v18 + 40) = v10;
      v9 += 5;
      --v8;
    }

    while (v8);
  }

  sub_1B2116938(a1, &qword_1EB7A1BB8, &unk_1B226C230, sub_1B211D118);
  return sub_1B2117220();
}

void Row._checkIndex(_:file:line:)(uint64_t a1)
{
  if (a1 < 0 || (sub_1B224B374(), v2 ^ v3 | v1))
  {
    sub_1B2111608();
    sub_1B2115AF4();
    sub_1B2252EC0();
    __break(1u);
  }
}

uint64_t static Row.fetchCursor(_:arguments:adapter:)(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v8 = *a2;
  sub_1B211E1E0(a3, v7, &qword_1EB7A1370, &unk_1B2257580);
  type metadata accessor for RowCursor();
  v3 = swift_allocObject();
  v4 = sub_1B2113B50();
  sub_1B211CF8C(v4);

  sub_1B211E268(v5, &v8, v7);
  return v3;
}

uint64_t sub_1B211E17C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_1B21619D8(a3, a4);
  sub_1B2111808();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1B211E1E0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_1B224B650(a1, a2, a3, a4);
  sub_1B2111808();
  v5 = sub_1B2112FD0();
  v6(v5);
  return v4;
}

uint64_t *sub_1B211E268(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = v3;
  v9 = *a2;
  v8 = a2[1];
  *(v3 + 24) = 0;
  *(v3 + 16) = a1;
  type metadata accessor for Row();
  swift_allocObject();
  v10 = swift_retain_n();
  sub_1B211CFCC(v10, v11, v12, v13, v14, v15, v16);
  v24[3] = type metadata accessor for Statement();
  v24[4] = &protocol witness table for Statement;
  v24[0] = a1;

  v17 = sub_1B211E6DC(a3, v24);

  if (v4)
  {
    v18 = sub_1B2117214();
    sub_1B211A378(v18, v19);

    sub_1B212ACBC(a3, &qword_1EB7A1370);
    sub_1B2113208(v24);

    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_1B2113208(v24);
    *(v5 + 32) = v17;
    v24[0] = v9;
    v24[1] = v8;
    sub_1B2119E50(v24, v20);
    sub_1B212ACBC(a3, &qword_1EB7A1370);

    v21 = sub_1B2117214();
    sub_1B211A378(v21, v22);
  }

  return v5;
}

uint64_t sub_1B211E40C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1B21619D8(&qword_1EB7A2168, &unk_1B226ACD0);
    v3 = sub_1B2252F00();
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC8];
  }

  v6 = v3;
  sub_1B211E8BC(a1, 1, &v6);
  v4 = v6;
  if (v1)
  {
  }

  return v4;
}

uint64_t sub_1B211E510()
{
}

unint64_t sub_1B211E590()
{
  sub_1B2117FC0();
  sub_1B21224DC();
  sub_1B211473C();
  sub_1B2252370();
  sub_1B2253470();
  v0 = sub_1B2111F44();

  return sub_1B211E5F4(v0, v1, v2);
}

unint64_t sub_1B211E5F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_1B22531F0() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

void *sub_1B211E6C0()
{
  v2 = *(v0 + 40);

  return sub_1B21139A0((v0 + 16), v2);
}

uint64_t *sub_1B211E6DC(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v6 = *v4;
  sub_1B2122784(a1, v18);
  if (v19)
  {
    sub_1B21217FC(v18, v21);
    v7 = v22;
    sub_1B21139A0(v21, v22);
    sub_1B2111A1C();
    v8(v18, a2, v7);
    if (!v3)
    {
      v9 = v19;
      v10 = v20;
      sub_1B21A1628(v18, v19);
      sub_1B21115E0();
      v12 = MEMORY[0x1EEE9AC00](v11);
      v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v15 + 16))(v14, v12);

      v4 = sub_1B21B64A0(v16, v14, v6, v9, v10);
      sub_1B2113208(v18);
    }

    sub_1B2113208(v21);
  }

  else
  {
    sub_1B211EA78(v18);
  }

  return v4;
}

uint64_t sub_1B211E89C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B216F4EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1B211EA78(uint64_t a1)
{
  v2 = sub_1B21619D8(&qword_1EB7A1370, &unk_1B2257580);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1B211EAF4()
{

  JUMPOUT(0x1B2741EB0);
}

void sub_1B211EB14()
{

  JUMPOUT(0x1B2741EB0);
}

void sub_1B211EB30(uint64_t a1@<X8>)
{
  v4 = (*(v1 + 48) + 16 * a1);
  *v4 = v2;
  v4[1] = v3;
}

uint64_t sub_1B211EB44()
{
  sub_1B2116AD0();
  swift_beginAccess();
  if (*(v0 + 24))
  {
    return 0;
  }

  sub_1B2131988();
  v3 = sub_1B2122D50();
  result = sub_1B211ED00(v3);
  if (!v1 && !result)
  {
    *(v0 + 24) = 1;
  }

  return result;
}

uint64_t RowCursor.__deallocating_deinit()
{
  RowCursor.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

uint64_t RowCursor.deinit()
{

  sub_1B211A000();

  return v0;
}

void *Row.deinit()
{
  sub_1B2113208((v0 + 16));

  return v0;
}

uint64_t Row.__deallocating_deinit()
{
  Row.deinit();
  v0 = sub_1B212D678();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1B211ECB8@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B211EDD8(a2, a3);
  if (!v3)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1B211ED00(uint64_t a1)
{
  if (!sub_1B2115AA0(a1))
  {
    sub_1B2118184();
    v8 = sub_1B211497C();
    Database.statementWillExecute(_:)(v8);
    v1 = v2;
    if (v2)
    {
      goto LABEL_11;
    }
  }

  if (sqlite3_step(v3) == 100)
  {
    v9 = sub_1B2115468();
    sub_1B211ECE4(v10, v9);
    if (!v2)
    {

      return v11;
    }
  }

  sub_1B21122DC();
  if (!v4)
  {
    sub_1B2118184();
    sub_1B2122398();
LABEL_11:
  }

  sub_1B2118184();
  v5 = sub_1B211497C();
  Database.statementDidExecute(_:)(v5, v6);
  sub_1B211DA88();

  if (!v1)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1B211EE68(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t Statement.columnNames.getter()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    sub_1B2147038(v0);
    v1 = v2;
    *(v0 + 24) = v2;
  }

  return v1;
}

uint64_t sub_1B211EF2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14[3] = &type metadata for StatementCopyRowImpl;
  v14[4] = &off_1F2977620;
  v14[0] = a1;
  v14[1] = a2;
  v9 = sub_1B211DF80(MEMORY[0x1E69E7CC0], a2, a3, a4, a5, a6, a7);
  sub_1B2111910(v9, v10, v11, v12);
  *(a3 + 72) = *(a2 + 16);
  sub_1B2113208(v14);
  return a3;
}

void Row.fastDecode<A>(_:atUncheckedIndex:)()
{
  sub_1B2111640();
  sub_1B224B23C();
  sub_1B2117214();
  sub_1B214EC88();
  v0();
  sub_1B2112FDC();
}

uint64_t sub_1B211EFE0()
{

  return sub_1B2127DC0(v0 + 2840, v0 + 1752);
}

uint64_t sub_1B211EFF8@<X0>(uint64_t a2@<X8>)
{
  *(v2 - 72) = a2;

  return sub_1B2252B00();
}

uint64_t sub_1B211F028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(__int128 *, uint64_t, _BYTE *, uint64_t, uint64_t))
{
  v16 = sub_1B212CFD8(a1, a2);
  v17(v16);
  v28 = v30;
  v29 = v31;
  v21 = a3;
  v22 = a4;
  v23 = a5;
  v24 = a6;
  v25 = a7;
  v26 = v9;
  v27 = a2;
  a9(&v28, a8, v20, a4, a6);
  return sub_1B2113A44(v28, *(&v28 + 1), v29);
}

void *sub_1B211F1B0(void *a1)
{

  return memcpy(a1, (v1 + 3008), 0xA3uLL);
}

void sub_1B211F1C8()
{

  JUMPOUT(0x1B2741EB0);
}

void sub_1B211F1E0(GRDBInternal::StatementArguments_optional a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  a7 = 0;
  a8 = 0;
  a1.value.values._rawValue = &a7;

  Statement.execute(arguments:)(a1);
}

uint64_t sub_1B211F20C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>)
{
  result = static Bool.fromDatabaseValue(_:)(a2);
  *a1 = result;
  return result;
}

uint64_t static Bool.fromDatabaseValue(_:)(uint64_t a1)
{
  v1 = (*a1 & 0x7FFFFFFFFFFFFFFFLL) != 0;
  if (*(a1 + 16) != 1)
  {
    v1 = 2;
  }

  if (*(a1 + 16))
  {
    return v1;
  }

  else
  {
    return *a1 != 0;
  }
}

uint64_t RangeReplaceableCollection.init<A>(_:)@<X0>(uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  sub_1B2252980();
  sub_1B211F33C();
  v7 = sub_1B211401C();
  v8(v7);
  result = swift_unknownObjectRelease();
  if (v4)
  {
    sub_1B2111808();
    return (*(v10 + 8))(a4, a2);
  }

  return result;
}

void sub_1B211F354(uint64_t a1@<X3>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X6>, unint64_t a5@<X8>)
{

  sub_1B2116B10(a5 > 1, v5, 1, a1, a2, a3, a4);
}

uint64_t sub_1B211F3F8(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v17 = a2;
  v9 = *(a6 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v16 - v13;
  result = (*(v9 + 40))(a1, a5, v9, v12);
  if (!v6)
  {
    v17(v14);
    return (*(v11 + 8))(v14, AssociatedTypeWitness);
  }

  return result;
}

uint64_t static DatabaseValueConvertible<>.fetchAll(_:arguments:adapter:)()
{
  sub_1B2114774();
  sub_1B2117FF8(v1, v2);
  result = static DatabaseValueConvertible<>.fetchCursor(_:arguments:adapter:)(v3, v4, v5, v6, v7, v8);
  if (!v0)
  {
    sub_1B22526A0();
    v10 = sub_1B2116A40();
    type metadata accessor for FastDatabaseValueCursor(v10, v11, v12, v13);
    sub_1B21119A4();
    sub_1B21165B0();
    WitnessTable = swift_getWitnessTable();
    sub_1B2115C0C(WitnessTable, v15, v16, v17);
    return v18;
  }

  return result;
}

uint64_t sub_1B211F648()
{

  return sqlite3_column_type(v1, v0);
}

void sub_1B211F6B0()
{

  JUMPOUT(0x1B2741EB0);
}

uint64_t sub_1B211F6E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_1B2112F4C(v16, a12);
  sub_1B2112F4C(a14, a13);

  return sub_1B2112F4C(a16, a15);
}

id sub_1B211F72C@<X0>(uint64_t a1@<X8>)
{
  v4 = *(*(v2 + 56) + ((a1 << 9) | (8 * v1)));

  return v4;
}

uint64_t sub_1B211F758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  return sub_1B2122784(a5, va);
}

uint64_t sub_1B211F7D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *v5;
  WitnessTable = swift_getWitnessTable();
  return DatabaseCursor.forEach(_:)(a1, a2, v8, WitnessTable);
}

uint64_t DatabaseCursor.forEach(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 8);
  result = (*(v7 + 16))(a3, v7);
  if ((result & 1) == 0)
  {
    v9 = (*(a4 + 16))(a3, a4);
    MEMORY[0x1EEE9AC00](v9);
    Statement.forEachStep(_:)(sub_1B211F3D4);
    sub_1B211D800();

    if (!v4)
    {
      return (*(v7 + 24))(1, a3, v7);
    }
  }

  return result;
}

uint64_t Statement.forEachStep(_:)(uint64_t (*a1)(sqlite3_stmt *))
{
  type metadata accessor for SchedulingWatchdog();
  v4 = swift_unownedRetainStrong();
  if (sub_1B2117B40(v4))
  {

    v5 = *(v1 + 16);
    if (sqlite3_stmt_busy(v5) || (swift_unownedRetainStrong(), sub_1B2111BFC(), Database.statementWillExecute(_:)(v10), result = sub_1B211DA88(), !v2))
    {
      while (1)
      {
        v6 = sqlite3_step(v5);
        if (v6 != 100)
        {
          break;
        }

        result = a1(v5);
        if (v2)
        {
          return result;
        }
      }

      if (v6 == 101)
      {
        swift_unownedRetainStrong();
        sub_1B2111BFC();
        Database.statementDidExecute(_:)(v8, v9);
      }

      else
      {
        swift_unownedRetainStrong();
        sub_1B2111BFC();
        Database.statementDidFail(_:withResultCode:)(v11, v12);
      }

      return sub_1B211DA88();
    }
  }

  else
  {
    sub_1B2112EA0();
    sub_1B2117938();
    result = sub_1B2252EC0();
    __break(1u);
  }

  return result;
}

uint64_t FastDatabaseValueCursor._element(sqliteStatement:)()
{
  sub_1B212CFBC();
  v4 = *(v3 + 80);
  v5 = sub_1B2252B00();
  sub_1B211280C();
  v7 = v6;
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v8);
  sub_1B21182D8();
  v9 = sub_1B21115F0();
  v11 = sqlite3_column_type(v9, v10);
  if (v11 != 5)
  {
    v12 = sub_1B2117C60();
    v13(v12);
    if (sub_1B2122A98(v2, 1, v4) != 1)
    {
      sub_1B2111808();
      return (*(v14 + 32))(v1, v2, v4);
    }

    v11 = (*(v7 + 8))(v2, v5);
  }

  MEMORY[0x1EEE9AC00](v11);
  sub_1B21156F0();
  *(v16 - 16) = sub_1B21A3058;
  *(v16 - 8) = v0;
  v17 = sub_1B21115F0();
  static DatabaseValueConvertible<>._valueMismatch(fromStatement:atUncheckedIndex:context:)(v17, v18, v19, v20, v4);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1B211FC88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getAssociatedTypeWitness();
  sub_1B211280C();
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v7);
  sub_1B21182D8();
  (*(v8 + 16))(v5, a1);
  sub_1B211314C();
  return sub_1B2252960();
}

void *sub_1B211FE14(void *a1)
{

  return memcpy(a1, &STACK[0x748], 0xB8uLL);
}

uint64_t sub_1B211FE3C(uint64_t a1, uint64_t a2)
{

  return sub_1B2181640(a1, a2, v4, v2, v3);
}

sqlite3 *Database.isInsideTransaction.getter()
{
  sub_1B21233F8();
  type metadata accessor for SchedulingWatchdog();
  v1 = sub_1B2113B28();
  if (sub_1B2117B40(v1))
  {
    sub_1B2122734();
    swift_beginAccess();
    result = *(v0 + 16);
    if (result)
    {
      return (sqlite3_get_autocommit(result) == 0);
    }
  }

  else
  {
    sub_1B2111608();
    sub_1B2112ECC();
    result = sub_1B2252EC0();
    __break(1u);
  }

  return result;
}

uint64_t sub_1B211FF34(void *a1)
{
  v2 = (v1 + *a1);
  if (v2[1])
  {
    v1 = *v2;
  }

  else
  {
    type metadata accessor for Statement();
    v3 = sub_1B2252190();
    *v2 = v1;
    v2[1] = v3;
    swift_unownedRetain();
    swift_unownedRetain();

    v4 = sub_1B2112F9C();
    sub_1B2120024(v4, v5);
  }

  v6 = sub_1B211187C();
  sub_1B211FFE4(v6, v7);
  return v1;
}

uint64_t sub_1B211FFE4(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    swift_unownedRetain();
  }

  return v2;
}

uint64_t sub_1B2120024(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    swift_unownedRelease();
  }

  return v2;
}

uint64_t sub_1B2120064(uint64_t a1, uint64_t a2)
{
  v13 = a2;
  v3 = v2;
  v12 = a1;
  v4 = sub_1B22520F0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B21619D8(&qword_1EB7A2B88, &unk_1B2260248);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1B22546B0;
  sub_1B22520E0();
  v18 = v8;
  sub_1B21202AC(qword_1ED85E0C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1B21619D8(&qword_1EB7A27A8, &qword_1B225E820);
  sub_1B21E8598(&qword_1ED85E0B8, &qword_1EB7A27A8, &qword_1B225E820);
  sub_1B2252BC0();
  v15 = v3;
  v16 = v12;
  v17 = v13;
  sub_1B21619D8(&qword_1EB7A3148, &qword_1B2269C00);
  v9 = v14;
  sub_1B2252A40();
  if (v9)
  {
    return (*(v5 + 8))(v7, v4);
  }

  (*(v5 + 8))(v7, v4);
  return v19;
}

uint64_t sub_1B21202AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B21202F4(unint64_t *a1, uint64_t x1_0)
{
  result = *a1;
  if (!result)
  {
    v5 = sub_1B212CFD8(0, x1_0);
    sub_1B2161A20(v5, v6);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B2120344@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, void *(*a3)(uint64_t *__return_ptr, uint64_t)@<X1>)
{
  result = sub_1B2120394(a2, a3);
  if (!v3)
  {
    *a1 = result & 1;
  }

  return result;
}

void *sub_1B2120394(uint64_t a1, void *(*a2)(uint64_t *__return_ptr, uint64_t))
{
  v4 = sub_1B22529A0();
  result = a2(&v6, v4);
  if (!v2)
  {
    return v6;
  }

  return result;
}

uint64_t sub_1B21203F4@<X0>(uint64_t result@<X0>, BOOL *a2@<X8>)
{
  v3 = *(result + 24);
  if (v3)
  {

    sub_1B2120468();
  }

  *a2 = v3 == 0;
  return result;
}

uint64_t sub_1B2120468()
{

  sub_1B21204D8(MEMORY[0x1E69E7CC0], sub_1B212086C);
}

void sub_1B2120530()
{
  v5 = sub_1B22520F0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  sub_1B2111844();
  v9 = v8 - v7;
  v10 = *(v4 + 24);
  sub_1B21619D8(&qword_1EB7A2B88, &unk_1B2260248);
  *(swift_allocObject() + 16) = xmmword_1B22546B0;
  v11 = v10;
  sub_1B22520E0();
  sub_1B21202AC(qword_1ED85E0C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1B21619D8(&qword_1EB7A27A8, &qword_1B225E820);
  sub_1B21E8598(&qword_1ED85E0B8, &qword_1EB7A27A8, &qword_1B225E820);
  sub_1B2252BC0();
  sub_1B2252A40();
  (*(v6 + 8))(v9, v5);
}

uint64_t sub_1B212073C()
{
  sub_1B211D7B0();
  swift_beginAccess();
  v1(v0 + 16);
  return swift_endAccess();
}

uint64_t sub_1B2120808(void *a1, uint64_t a2)
{

  *a1 = a2;
}

uint64_t Statement.step<A>(_:)@<X0>(uint64_t (*a1)(sqlite3_stmt *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v8 = *(v3 + 16);
  if (sqlite3_stmt_busy(v8) || (sub_1B2122070(), v14 = sub_1B211E540(), Database.statementWillExecute(_:)(v14), sub_1B211D800(), result = , !v4))
  {
    if (sqlite3_step(v8) == 100)
    {
      result = a1(v8);
      if (v4)
      {
        return result;
      }

      v12 = a3;
      v13 = 0;
      return sub_1B21117B4(v12, v13, 1, a2);
    }

    sub_1B21122DC();
    if (!v9)
    {
      sub_1B2122070();
      sub_1B2122700(v3);
      sub_1B211D800();
    }

    sub_1B2122070();
    v10 = sub_1B211E540();
    Database.statementDidExecute(_:)(v10, v11);
    sub_1B211D800();

    if (!v4)
    {
      v12 = a3;
      v13 = 1;
      return sub_1B21117B4(v12, v13, 1, a2);
    }
  }

  return result;
}

Swift::String __swiftcall String.init(sqliteStatement:index:)(Swift::OpaquePointer sqliteStatement, Swift::Int32 index)
{
  v2 = sqlite3_column_text(sqliteStatement._rawValue, index);
  if (v2)
  {

    v2 = sub_1B2252400();
  }

  else
  {
    __break(1u);
  }

  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

uint64_t (*sub_1B21209E0(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a1;
  swift_unknownObjectRetain();
  return sub_1B2120CB8;
}

uint64_t sub_1B2120A54()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t FastNullableDatabaseValueCursor._element(sqliteStatement:)()
{
  sub_1B212CFBC();
  v4 = *(v3 + 80);
  v5 = sub_1B2252B00();
  sub_1B211280C();
  v7 = v6;
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v8);
  sub_1B21182D8();
  v9 = sub_1B21115F0();
  if (sqlite3_column_type(v9, v10) == 5)
  {

    return sub_1B21117B4(v1, 1, 1, v4);
  }

  else
  {
    v12 = sub_1B2117C60();
    v13(v12);
    if (sub_1B2122A98(v2, 1, v4) == 1)
    {
      v15 = (*(v7 + 8))(v2, v5);
      MEMORY[0x1EEE9AC00](v15);
      sub_1B21156F0();
      *(v16 - 16) = sub_1B21A3088;
      *(v16 - 8) = v0;
      v17 = sub_1B21115F0();
      static DatabaseValueConvertible<>._valueMismatch(fromStatement:atUncheckedIndex:context:)(v17, v18, v19, v20, v4);
      result = swift_unexpectedError();
      __break(1u);
    }

    else
    {
      sub_1B2111808();
      (*(v14 + 32))(v1, v2, v4);
      return sub_1B21117B4(v1, 0, 1, v4);
    }
  }

  return result;
}

uint64_t sub_1B2120CF4@<X0>(Swift::OpaquePointer a1@<X0>, Swift::Int32 a2@<W1>, Swift::String *a3@<X8>)
{
  v5 = String.init(sqliteStatement:index:)(a1, a2);
  result = v5._countAndFlagsBits;
  *a3 = v5;
  return result;
}

uint64_t DatabaseCursor.next()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(a2 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_1B2252B00();
  sub_1B21115E0();
  v23 = v10;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - v13;
  if ((*(v7 + 16))(a1, v7, v12))
  {
    return sub_1B21117B4(a3, 1, 1, AssociatedTypeWitness);
  }

  v22 = a3;
  (*(a2 + 16))(a1, a2);
  v16 = sub_1B21209E0(v3, a1, a2);
  v17 = v24;
  Statement.step<A>(_:)(v16, AssociatedTypeWitness, v14);
  sub_1B211D800();
  if (v17)
  {
  }

  else
  {

    if (sub_1B2122A98(v14, 1, AssociatedTypeWitness) == 1)
    {
      (*(v23 + 8))(v14, v9);
      (*(v7 + 24))(1, a1, v7);
      v18 = v22;
      v19 = 1;
    }

    else
    {
      sub_1B2111808();
      v21 = v22;
      (*(v20 + 32))(v22, v14, AssociatedTypeWitness);
      v18 = v21;
      v19 = 0;
    }

    return sub_1B21117B4(v18, v19, 1, AssociatedTypeWitness);
  }
}

void static DatabaseValueConvertible<>.fetchOne(_:arguments:adapter:)()
{
  sub_1B2111640();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v30 = v13;
  v29 = sub_1B2252B00();
  v14 = sub_1B2252B00();
  sub_1B211280C();
  v28 = v15;
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v16);
  v33 = &v28 - v17;
  v18 = *v10;
  v19 = v10[1];
  v20 = sub_1B2115EC8();
  v22 = type metadata accessor for FastNullableDatabaseValueCursor(v20, v21, v4, v2);
  v32[0] = v18;
  v32[1] = v19;
  sub_1B2122784(v8, v31);

  sub_1B211CF8C(v18);
  sub_1B211D084(v12, v32, v31);
  if (!v0)
  {
    v24 = v28;
    v23 = v29;
    v25 = v30;
    WitnessTable = swift_getWitnessTable();
    DatabaseCursor.next()(v22, WitnessTable, v33);

    if (sub_1B2122A98(v33, 1, v23) == 1)
    {
      sub_1B21117B4(v25, 1, 1, v6);
      if (sub_1B2122A98(v33, 1, v23) != 1)
      {
        (*(v24 + 8))(v33, v14);
      }
    }

    else
    {
      sub_1B2111808();
      (*(v27 + 32))(v25, v33, v23);
    }
  }

  sub_1B2112FDC();
}

uint64_t sub_1B2121180(uint64_t result)
{
  if (result)
  {
    v1 = result;

    sub_1B21212A8();
    v2 = *(v1 + 32);
    *(v1 + 32) = 1;
    sub_1B211C6D8(v2);

    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B2121220()
{

  return sub_1B2127DC0(&STACK[0x608], &STACK[0x560]);
}

uint64_t sub_1B2121244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54)
{
  a52 = 0;
  a53 = 0;
  a54 = 4;

  return sub_1B2127D7C(&a52);
}

uint64_t sub_1B2121270()
{
  sub_1B21841CC(v0, v1, *(v2 - 152));
}

uint64_t sub_1B21212A8()
{
  sub_1B21214C0();
  swift_unownedRetainStrong();
  v2 = sub_1B211C444();

  if ((v2 & 1) == 0)
  {
    sub_1B2117330();
    swift_beginAccess();
    v4 = *(v0 + 40);
    v5 = sub_1B2116B08();

    for (i = 0; ; ++i)
    {
      if (v5 == i)
      {
      }

      if ((v4 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x1B27427E0](i, v4);
      }

      else
      {
        if (i >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        result = sub_1B2117C0C();
      }

      if (__OFADD__(i, 1))
      {
        break;
      }

      sub_1B21765C8(result);

      if (v1)
      {
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }

  return result;
}

void sub_1B21213B0()
{

  sub_1B2121848();

  swift_unownedRetainStrong();
  v1 = sub_1B211C444();

  if ((v1 & 1) != 0 || (sub_1B2117330(), swift_beginAccess(), v2 = *(v0 + 40), (v3 = sub_1B2116B08()) == 0))
  {
LABEL_10:
    sub_1B21218AC();
    return;
  }

  v4 = v3;
  if (v3 >= 1)
  {

    v5 = 0;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1B27427E0](v5, v2);
      }

      else
      {
        sub_1B2117C0C();
      }

      ++v5;
      v6 = swift_unownedRetainStrong();
      sub_1B2176630(v6);
    }

    while (v4 != v5);

    goto LABEL_10;
  }

  __break(1u);
}

uint64_t sub_1B21214C0()
{
  type metadata accessor for SchedulingWatchdog();
  result = sub_1B21114CC();
  if (result)
  {
    v19 = result;
    *(result + 24) = v0;

    v2 = *(v0 + 24);
    sub_1B21115FC();
    swift_beginAccess();
    v3 = *(v2 + 16);

    sub_1B2121848();

    v4 = 0;
    v5 = *(v3 + 16);
    v21 = v3;
    v20 = v3 + 32;
    v22 = v5;
    while (1)
    {
      if (v4 == v5)
      {
        v27 = 0u;
        v28 = 0u;
        v6 = v5;
        v26 = 0u;
      }

      else
      {
        if ((v4 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_22:
          __break(1u);
          break;
        }

        if (v4 >= *(v21 + 16))
        {
          goto LABEL_22;
        }

        sub_1B21784FC(v20 + 48 * v4, &v26);
        v6 = v4 + 1;
      }

      v29[0] = v26;
      v29[1] = v27;
      v30 = v28;
      if (!*(&v27 + 1))
      {

        *(v19 + 24) = 0;
      }

      v24 = v6;
      v7 = *(&v30 + 1);
      sub_1B21217FC(v29, &v26);
      v8 = *(v7 + 16);
      v23 = v7;
      if (v8)
      {
        v9 = (v7 + 48);
        while (1)
        {
          v10 = *(v9 - 1);
          v11 = *v9;
          v12 = sub_1B21139A0(&v26, *(&v27 + 1));
          v25[3] = &type metadata for DatabaseEvent;
          v25[4] = &off_1F296A8E0;
          sub_1B212DE18();
          v25[0] = swift_allocObject();
          v13 = sub_1B217856C(v12, v25[0] + 16);
          if (!v10)
          {
            break;
          }

          MEMORY[0x1EEE9AC00](v13);
          v18 = v25;

          sub_1B211CF8C(v10);
          v14 = sub_1B2203814(sub_1B21789C4, v17, v10);
          if (v14)
          {
            sub_1B211A378(v10, v11);
LABEL_17:
            sub_1B2113208(v25);
            v16 = sub_1B21139A0(&v26, *(&v27 + 1));
            sub_1B21764DC(v16);

            goto LABEL_18;
          }

          MEMORY[0x1EEE9AC00](v14);
          v18 = v25;
          v15 = sub_1B2203814(sub_1B21785A4, v17, v11);
          sub_1B211A378(v10, v11);
          if (!v15)
          {
            goto LABEL_17;
          }

          sub_1B2113208(v25);
LABEL_18:
          v9 += 3;
          if (!--v8)
          {
            goto LABEL_19;
          }
        }

        goto LABEL_17;
      }

LABEL_19:

      result = sub_1B2113208(&v26);
      v5 = v22;
      v4 = v24;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B21217FC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1B2121814()
{
  sub_1B2113208((v0 + 16));
  sub_1B212DE18();

  return swift_deallocObject();
}

uint64_t sub_1B2121848()
{
  sub_1B21118B8();
  swift_beginAccess();
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 16) = MEMORY[0x1E69E7CC0];

  sub_1B21118B8();
  swift_beginAccess();
  *(v0 + 24) = v1;
}

void sub_1B21218AC()
{
  sub_1B2122150();
  sub_1B21118B8();
  swift_beginAccess();
  v1 = *(v0 + 40);
  v9 = MEMORY[0x1E69E7CC0];
  v2 = sub_1B2116B08();

  for (i = 0; ; ++i)
  {
    if (v2 == i)
    {

      *(v0 + 40) = v9;

      v4 = *(v0 + 40);
      v5 = sub_1B2116B08();
      if (v5)
      {
        v6 = v5;
        if (v5 < 1)
        {
          goto LABEL_23;
        }

        for (j = 0; j != v6; ++j)
        {
          if ((v4 & 0xC000000000000001) != 0)
          {
            v8 = MEMORY[0x1B27427E0](j, v4);
          }

          else
          {
          }

          *(v8 + 17) = 0;
        }
      }

      sub_1B2114274();
      return;
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1B27427E0](i, v1);
    }

    else
    {
      if (i >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_22;
      }
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    if (sub_1B2176B68())
    {
      swift_unknownObjectRelease();
      sub_1B2252D60();
      sub_1B2252DA0();
      sub_1B2115B7C();
      sub_1B2252DB0();
      sub_1B2252D70();
    }

    else
    {
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
}

void sub_1B2121A40()
{
  sub_1B21212A8();
  if (v0)
  {
    swift_unownedRetainStrong();
    v1 = sub_1B211C444();

    sub_1B21766E4((v1 & 1) == 0);
    swift_willThrow();
  }

  else
  {
    sub_1B21213B0();
  }
}

uint64_t sub_1B2121AF4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = swift_allocObject();
  sub_1B2121CAC(a1, a2, a3);
  return v6;
}

uint64_t static FetchableRecord.fetchOne(_:arguments:adapter:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  result = sub_1B2115D98(a1, a2, a3, a4, a5, a6, a7, a8, v17);
  if (!v9)
  {
    v15 = type metadata accessor for RecordCursor(0, a4, a5, v14);
    WitnessTable = swift_getWitnessTable();
    DatabaseCursor.next()(v15, WitnessTable, a9);
  }

  return result;
}

uint64_t static FetchableRecord.fetchCursor(_:arguments:adapter:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *a2;
  v8 = a2[1];
  type metadata accessor for RecordCursor(0, a4, a5, a4);
  v12[0] = v7;
  v12[1] = v8;
  sub_1B2122784(a3, v11);

  v9 = sub_1B2112F9C();
  sub_1B211CF8C(v9);
  return sub_1B2121AF4(a1, v12, v11);
}

uint64_t *sub_1B2121CAC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = v3;
  v9 = *a2;
  v8 = a2[1];
  *(v3 + 24) = 0;
  *(v3 + 16) = a1;
  type metadata accessor for Row();
  swift_allocObject();
  v10 = swift_retain_n();
  sub_1B211CFCC(v10, v11, v12, v13, v14, v15, v16);
  v20[3] = type metadata accessor for Statement();
  v20[4] = &protocol witness table for Statement;
  v20[0] = a1;

  v17 = sub_1B211E6DC(a3, v20);

  if (v4)
  {
    sub_1B211A378(v9, v8);

    sub_1B212E32C(a3, &qword_1EB7A1370, &unk_1B2257580);
    sub_1B2113208(v20);

    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_1B2113208(v20);
    *(v5 + 32) = v17;
    v20[0] = v9;
    v20[1] = v8;
    sub_1B2119E50(v20, v18);
    sub_1B212E32C(a3, &qword_1EB7A1370, &unk_1B2257580);

    sub_1B211A378(v9, v8);
  }

  return v5;
}

uint64_t FastDatabaseValueCursor.__deallocating_deinit()
{
  FastDatabaseValueCursor.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t _s12GRDBInternal23FastDatabaseValueCursorCfd_0()
{

  sub_1B211A000();

  return v0;
}

void sub_1B2121F24()
{

  JUMPOUT(0x1B2741EB0);
}

uint64_t sub_1B2121FA4(uint64_t a1)
{

  return sub_1B2252E70();
}

uint64_t sub_1B2121FF0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 33);
  v7 = *(a1 + 34);
  v8 = *(a1 + 32);
  *(v1 + 576) = *a1;
  *(v1 + 584) = v3;
  *(v1 + 592) = v4;
  *(v1 + 600) = v5;
  *(v1 + 608) = v8;
  *(v1 + 609) = v6;
  *(v1 + 610) = v7;
}

id sub_1B2122040@<X0>(uint64_t a1@<X8>)
{

  return [v1 (a1 + 376)];
}

uint64_t sub_1B2122070()
{

  return swift_unownedRetainStrong();
}

uint64_t sub_1B21220AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13 = *(v11 - 72);

  return FetchRequest<>.fetchSet(_:)(a9, v10, a1, v13, v9);
}

uint64_t sub_1B21220D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{

  return sub_1B213A774(&STACK[0x238], &a57);
}

unint64_t sub_1B2122194()
{

  return sub_1B211E590();
}

void sub_1B21221C4()
{

  JUMPOUT(0x1B2741EB0);
}

double sub_1B21221E0()
{
  result = 0.0;
  *v0 = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0;
  return result;
}

uint64_t sub_1B21221F8@<X0>(uint64_t a1@<X8>)
{
  v2[3] = a1;
  v2[4] = v1;

  return sub_1B21B3390(v3, v4, v5, v2);
}

id sub_1B2122240@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v2 + ((a1 << 9) | (8 * v1)));

  return v4;
}

void sub_1B21222C0()
{

  JUMPOUT(0x1B2741EB0);
}

uint64_t sub_1B212231C()
{
}

uint64_t sub_1B2122344()
{
  v5 = (v1 + *v0);
  v6 = *v5;
  v7 = v5[1];
  *v5 = v2;
  v5[1] = v3;

  return sub_1B2120024(v6, v7);
}

uint64_t sub_1B2122364(uint64_t a1, uint64_t a2)
{

  return sub_1B2252A50();
}

uint64_t sub_1B2122398()
{

  return Database.statementDidFail(_:withResultCode:)(v1, v0);
}

uint64_t sub_1B2122400(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_1B21619D8(a2, a3);
  sub_1B2111808();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1B2122478(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_1B21224DC()
{

  return sub_1B2253420();
}

void sub_1B2122504()
{
  v5 = *(v4 - 72);
  *(v5 + 16) = v0;
  v6 = v5 + 16 * v3;
  *(v6 + 32) = v1;
  *(v6 + 40) = v2;
}

uint64_t sub_1B21225C8(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

void *sub_1B2122630(uint64_t a1)
{
  v3 = *(v1 - 72);

  return QueryInterfaceRequest.deleteAll(_:)(v3);
}

void sub_1B2122654()
{

  JUMPOUT(0x1B2741EB0);
}

void sub_1B2122674()
{

  JUMPOUT(0x1B2741EB0);
}

uint64_t sub_1B212268C(uint64_t a1)
{

  return swift_once();
}

void sub_1B21226AC()
{

  sub_1B2161920();
}

uint64_t sub_1B21226CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  return sub_1B212E32C(va, v12, v13);
}

uint64_t sub_1B2122700(uint64_t a1)
{

  return Database.statementDidFail(_:withResultCode:)(a1, v1);
}

void sub_1B2122718(uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t x8_0@<X8>, uint64_t a9)
{

  sub_1B22341D4(v10, a3, a4, x8_0);
}

uint64_t sub_1B2122744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 - 72) = a5;

  return sub_1B2252850();
}

uint64_t sub_1B2122784(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B21619D8(&qword_1EB7A1370, &unk_1B2257580);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B21227F4(uint64_t a1, void (*a2)(uint64_t, __n128), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_1B2252B00();
  sub_1B211280C();
  v13 = v12;
  sub_1B21117FC();
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v19 - v16;
  a2(a4, v15);
  if (!v6)
  {
    sub_1B21117B4(v17, 0, 1, a6);
    (*(v13 + 40))(a1, v17, v11);
  }

  return 0;
}

void *sub_1B2122954@<X0>(void *x8_0@<X8>)
{

  return static TableRecord.all()(x8_0);
}

void sub_1B212296C()
{

  sub_1B21277F4();
}

void sub_1B2122994()
{

  JUMPOUT(0x1B2741EB0);
}

void *sub_1B21229D4(void *__src, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  return memcpy(va, __src, 0xA3uLL);
}

uint64_t sub_1B21229FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{

  return sub_1B21FDE44(a19, a20);
}

id sub_1B2122A2C@<X0>(uint64_t a1@<X8>)
{

  return [v1 (a1 + 376)];
}

void sub_1B2122A44()
{

  JUMPOUT(0x1B2741E40);
}

uint64_t sub_1B2122A70()
{
}

uint64_t sub_1B2122AC0(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B2122B00(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1B21619D8(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void *SQLStatementCursor.deinit()
{

  sub_1B211A378(*(v0 + 64), *(v0 + 72));
  return v0;
}

uint64_t sub_1B2122B98(uint64_t a1)
{
  v2 = sub_1B21619D8(&qword_1EB7A0E30, &unk_1B2259360);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1B2122C40(uint64_t a1)
{

  sub_1B2143F5C();
}

void sub_1B2122C5C()
{

  JUMPOUT(0x1B2741EB0);
}

uint64_t sub_1B2122CBC()
{
  *(v0 + 2832) = 0;
  *v3 = 0u;
  v3[1] = 0u;

  return sub_1B2122B00(v0 + 2800, v0 + 2592, v1, v2);
}

uint64_t sub_1B2122CF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1B21DFADC(v4, v6, a3, v5, a4);
}

uint64_t sub_1B2122D14(uint64_t result)
{
  *(result + 16) = v1;
  *(result + 24) = v2;
  return result;
}

uint64_t sub_1B2122D30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{

  return swift_deallocPartialClassInstance();
}

uint64_t sub_1B2122DCC(uint64_t a1)
{
  if ((*(a1 + 162) >> 3) <= 0x14u)
  {
    return *(a1 + 162) >> 3;
  }

  else
  {
    return (*a1 + 21);
  }
}

uint64_t FastDatabaseValueCursor._isDone.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 24) = a1;
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Database.commit()()
{
  sub_1B21173F4();
  v0._countAndFlagsBits = 0xD000000000000012;
  Database.execute(sql:arguments:)(v0, v1);
}

uint64_t String.databaseValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = 2;
}

uint64_t sub_1B2122EB0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void, uint64_t, uint64_t, uint64_t), uint64_t (*a8)(uint64_t, void *, _BYTE *))
{
  v11 = *a2;
  v12 = a2[1];
  a7(0, a4, a5, a6);
  v15[0] = v11;
  v15[1] = v12;
  sub_1B2122784(a3, v14);

  sub_1B211CF8C(v11);
  return a8(a1, v15, v14);
}

Swift::Int32 __swiftcall DatabaseValue.bind(to:at:)(Swift::OpaquePointer to, Swift::Int32 at)
{
  v3 = *v2;
  switch(*(v2 + 16))
  {
    case 1:
      v22 = sub_1B2111F44();

      result = sqlite3_bind_double(v22, v23, v24);
      break;
    case 2:
      v9 = qword_1ED85E010;

      if (v9 != -1)
      {
        swift_once();
      }

      v10 = qword_1ED861908;
      sub_1B21115F0();
      sub_1B2252350();
      v11 = sub_1B2111F44();
      v14 = sqlite3_bind_text(v11, v12, v13, -1, v10);

      v15 = sub_1B21115F0();
      v17 = 2;
      goto LABEL_12;
    case 3:
      v18 = sub_1B21115F0();
      sub_1B2126638(v18, v19);
      v20 = sub_1B2111F44();
      v14 = Data.bind(to:at:)(v20, v21);
      v15 = sub_1B21115F0();
      v17 = 3;
LABEL_12:
      sub_1B2113A44(v15, v16, v17);
      result = v14;
      break;
    case 4:
      v7 = sub_1B2111F44();

      result = sqlite3_bind_null(v7, v8);
      break;
    default:
      v4 = sub_1B2111F44();

      result = sqlite3_bind_int64(v4, v5, v3);
      break;
  }

  return result;
}

uint64_t *sub_1B21230F0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = v3;
  v8 = *v3;
  v10 = *a2;
  v9 = a2[1];
  *(v3 + 24) = 0;
  v3[2] = a1;
  v11 = v8;
  sub_1B2122784(a3, &v18);
  if (!v19)
  {

    sub_1B2122400(&v18, &qword_1EB7A1370, &unk_1B2257580);
    *(v5 + 7) = 0;
    goto LABEL_8;
  }

  v24 = v11;
  sub_1B2134D5C(&v18, v21);
  v12 = v22;
  v13 = v23;
  sub_1B21139A0(v21, v22);
  v19 = type metadata accessor for Statement();
  v20 = &protocol witness table for Statement;
  *&v18 = a1;
  swift_retain_n();
  v14 = sub_1B21B2B3C(0, &v18, v12, v13);
  if (v4)
  {
    sub_1B211A378(v10, v9);

    sub_1B2122400(a3, &qword_1EB7A1370, &unk_1B2257580);
    sub_1B2113208(&v18);
    sub_1B2113208(v21);

    swift_deallocPartialClassInstance();
    return v5;
  }

  v16 = v14;
  result = sub_1B2113208(&v18);
  if (v16 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v16 <= 0x7FFFFFFF)
  {
    *(v5 + 7) = v16;
    sub_1B2113208(v21);
LABEL_8:
    v21[0] = v10;
    v21[1] = v9;
    sub_1B2119E50(v21, v15);
    sub_1B2122400(a3, &qword_1EB7A1370, &unk_1B2257580);

    sub_1B211A378(v10, v9);
    if (v4)
    {
    }

    return v5;
  }

  __break(1u);
  return result;
}

void sub_1B2123344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  SQLInterpolation.appendLiteral(_:)(*&a9);
}

uint64_t sub_1B2123360@<X0>(void *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  *a1 = a2;
  a1[1] = v5;
  a1[2] = ~v3;
  a1[3] = a3;
  a1[4] = v6;
  return v4;
}

void *sub_1B212338C@<X0>(uint64_t a1@<X8>)
{

  return sub_1B213BBD8(v1, a1);
}

void sub_1B21233A4()
{

  JUMPOUT(0x1B2741EB0);
}

void *sub_1B21233E0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, ...)
{
  va_start(va1, a29);
  va_start(__srca, a29);
  __src = va_arg(va1, void);
  v33 = va_arg(va1, void);
  v34 = va_arg(va1, void);
  v35 = va_arg(va1, void);
  v36 = va_arg(va1, void);
  v37 = va_arg(va1, void);
  v38 = va_arg(va1, void);
  v39 = va_arg(va1, void);
  v40 = va_arg(va1, void);
  v41 = va_arg(va1, void);
  v42 = va_arg(va1, void);
  v43 = va_arg(va1, void);
  v44 = va_arg(va1, void);
  v45 = va_arg(va1, void);
  v46 = va_arg(va1, void);
  v47 = va_arg(va1, void);
  v48 = va_arg(va1, void);
  v49 = va_arg(va1, void);
  v50 = va_arg(va1, void);
  v51 = va_arg(va1, void);
  v52 = va_arg(va1, void);

  return memcpy(a1, __srca, 0xA3uLL);
}

double StatementArguments.init(arrayLiteral:)@<D0>(char *a1@<X0>, _OWORD *a2@<X8>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>)
{
  sub_1B2112554(a1, &v8, a3, a4, a5, a6);
  result = *&v8;
  *a2 = v8;
  return result;
}

const char *sub_1B21234B8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{

  return RowDecodingContext.init(row:key:)(a1, &v19, &a17);
}

uint64_t sub_1B21234F4()
{
}

uint64_t *sub_1B2123524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  a18 = *(a2 + 16);
  a19 = a3;

  return sub_1B212FF14(&a15);
}

uint64_t sub_1B2123560(uint64_t a1)
{
  if ((*(a1 + 16) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

uint64_t sub_1B212357C()
{
  result = sqlite3_clear_bindings(*(v0 + 16));
  if (result)
  {
    v7 = result;
    swift_unownedRetainStrong();
    Database.lastErrorMessage.getter();
    sub_1B21140B8();

    v4 = Statement.sql.getter();
    v6 = v5;
    if (!v2)
    {
      if (!sqlite3_errstr(v7))
      {
        __break(1u);
      }

      sub_1B22523F0();
      sub_1B21140B8();
    }

    LODWORD(v8) = v7;
    *(&v8 + 1) = v1;
    v9 = v2;
    v10 = v4;
    v11 = v6;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    sub_1B2202FD4(&v8);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_1B2123648(int a1, int a2, int a3, Swift::Int32 at)
{
  result = DatabaseValue.bind(to:at:)(v4[2], at);
  if (result)
  {
    v13 = result;
    swift_unownedRetainStrong();
    v6 = Database.lastErrorMessage.getter();
    v8 = v7;

    v9 = Statement.sql.getter();
    v11 = v10;
    if (!v8)
    {
      if (!sqlite3_errstr(v13))
      {
        __break(1u);
      }

      v6 = sub_1B22523F0();
      v8 = v12;
    }

    LODWORD(v14) = v13;
    *(&v14 + 1) = v6;
    v15 = v8;
    v16 = v9;
    v17 = v11;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    sub_1B2202FD4(&v14);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_1B212372C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1B2123768(uint64_t a1@<X0>, uint64_t *a5@<X8>)
{
  v8 = type metadata accessor for Configuration(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_projectBox();
  swift_beginAccess();
  v12 = *(a1 + 16);
  v13 = v12 + 1;
  if (__OFADD__(v12, 1))
  {
    __break(1u);
  }

  else
  {
    *(a1 + 16) = v13;
    swift_beginAccess();
    sub_1B212392C(v11, v10);
    v16[0] = 0x2E726564616572;
    v16[1] = 0xE700000000000000;
    v16[9] = v13;

    v14 = sub_1B2252FD0();
    MEMORY[0x1B2741EB0](v14);

    type metadata accessor for SerializedDatabase();
    swift_allocObject();
    sub_1B2123A30();
    if (!v5)
    {
      *a5 = v15;
    }
  }
}

uint64_t sub_1B212392C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Configuration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B2123990(uint64_t a1)
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

uint64_t sub_1B21239AC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B21239EC(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_1B2123A30()
{
  sub_1B2111640();
  v2 = v0;
  v4 = v3;
  v34 = v5;
  v35 = v6;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v32 = *v2;
  v33 = v13;
  v15 = type metadata accessor for Configuration(0);
  v16 = v15 - 8;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v32 - v20;
  sub_1B212392C(v10, &v32 - v20);
  v21[*(v16 + 88)] = 1;
  v2[3] = v14;
  v2[4] = v12;

  v22 = sub_1B2124064(v34, v8, v35, v4);
  v24 = v23;
  v25 = v22;

  sub_1B212392C(v21, v18);
  type metadata accessor for Database(0);
  swift_allocObject();

  sub_1B2123CC4(v33, v12, v25, v24, v18);
  if (v1)
  {

    sub_1B2133D70(v10);
    sub_1B2133D70(v21);

    swift_deallocPartialClassInstance();
  }

  else
  {
    v2[2] = v26;
    if (v21[1] == 1)
    {
      v27 = sub_1B2124C20();
    }

    else
    {
      v27 = sub_1B21571A4();
    }

    v28 = v27;

    v2[5] = v28;
    type metadata accessor for SchedulingWatchdog();
    v29 = v28;

    sub_1B2124F54(v30);

    v31 = v2[5];
    sub_1B2252A50();

    sub_1B2133D70(v10);
    sub_1B2133D70(v21);
  }

  sub_1B2112FDC();
}

void sub_1B2123CC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  *(v5 + 16) = 0;
  v11 = v5 + OBJC_IVAR____TtC12GRDBInternal8Database__lastSchemaVersion;
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = (v5 + OBJC_IVAR____TtC12GRDBInternal8Database_schemaCache);
  sub_1B2124180();
  v13 = sub_1B2252190();
  *v12 = 0;
  v12[1] = v13;
  sub_1B21131DC(OBJC_IVAR____TtC12GRDBInternal8Database____lazy_storage___internalStatementCache);
  sub_1B21131DC(OBJC_IVAR____TtC12GRDBInternal8Database____lazy_storage___publicStatementCache);
  *(v5 + OBJC_IVAR____TtC12GRDBInternal8Database____lazy_storage___authorizer) = 0;
  *(v5 + OBJC_IVAR____TtC12GRDBInternal8Database____lazy_storage___observationBroker) = 0;
  *(v5 + OBJC_IVAR____TtC12GRDBInternal8Database_isRecordingSelectedRegion) = 0;
  v14 = OBJC_IVAR____TtC12GRDBInternal8Database_selectedRegion;
  sub_1B211B358();
  *(v5 + v14) = sub_1B2252190();
  *(v5 + OBJC_IVAR____TtC12GRDBInternal8Database_isInsideTransactionBlock) = 0;
  v15 = OBJC_IVAR____TtC12GRDBInternal8Database__isSuspended;
  sub_1B21619D8(&qword_1EB7A33C8, &qword_1B226B9F8);
  swift_allocObject();
  *(v5 + v15) = sub_1B2124274(0);
  sub_1B21131DC(OBJC_IVAR____TtC12GRDBInternal8Database_journalModeCache);
  sub_1B21131DC(OBJC_IVAR____TtC12GRDBInternal8Database_busyCallback);
  sub_1B21131DC(OBJC_IVAR____TtC12GRDBInternal8Database_trace);
  v16 = MEMORY[0x1E69E7CD0];
  *(v5 + OBJC_IVAR____TtC12GRDBInternal8Database_functions) = MEMORY[0x1E69E7CD0];
  *(v5 + OBJC_IVAR____TtC12GRDBInternal8Database_collations) = v16;
  *(v5 + OBJC_IVAR____TtC12GRDBInternal8Database__readOnlyDepth) = 0;
  if (*(a5 + 1))
  {
    v17 = 1;
  }

  else
  {
    v17 = 6;
  }

  v18 = type metadata accessor for Configuration(0);
  v19 = sub_1B21242B8(a1, a2, v17 | (*(a5 + *(v18 + 80)) << 15));

  if (v6)
  {

    sub_1B2133D70(a5);

    v20 = sub_1B21260E0(OBJC_IVAR____TtC12GRDBInternal8Database____lazy_storage___internalStatementCache);
    sub_1B2120024(v20, v21);
    v22 = sub_1B21260E0(OBJC_IVAR____TtC12GRDBInternal8Database____lazy_storage___publicStatementCache);
    sub_1B2120024(v22, v23);

    v24 = sub_1B21260E0(OBJC_IVAR____TtC12GRDBInternal8Database_busyCallback);
    sub_1B2112F4C(v24, v25);
    v26 = sub_1B21260E0(OBJC_IVAR____TtC12GRDBInternal8Database_trace);
    sub_1B2112F4C(v26, v27);

    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_1B21118B8();
    swift_beginAccess();
    *(v7 + 16) = v19;
    v28 = (v7 + OBJC_IVAR____TtC12GRDBInternal8Database_description);
    *v28 = a3;
    v28[1] = a4;
    sub_1B2124B1C(a5, v7 + OBJC_IVAR____TtC12GRDBInternal8Database_configuration);
  }

  sub_1B2149864();
}

uint64_t sub_1B2124064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!*(v4 + 16))
  {
    v7 = a1;

    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:

    v9 = 0;
    v8 = 0xE000000000000000;
    goto LABEL_6;
  }

  v7 = *(v4 + 8);
  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:

  MEMORY[0x1B2741EB0](a3, a4);
  v9 = 46;
  v8 = 0xE100000000000000;
LABEL_6:

  MEMORY[0x1B2741EB0](v9, v8);

  return v7;
}

uint64_t type metadata accessor for Database(uint64_t a1)
{
  result = qword_1ED85E670;
  if (!qword_1ED85E670)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1B2124180()
{
  result = qword_1ED85E6B0;
  if (!qword_1ED85E6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED85E6B0);
  }

  return result;
}

void *sub_1B2124244(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va1, a30);
  va_start(__srca, a30);
  __src = va_arg(va1, void);
  v34 = va_arg(va1, void);
  v35 = va_arg(va1, void);
  v36 = va_arg(va1, void);
  v37 = va_arg(va1, void);
  v38 = va_arg(va1, void);
  v39 = va_arg(va1, void);
  v40 = va_arg(va1, void);
  v41 = va_arg(va1, void);
  v42 = va_arg(va1, void);
  v43 = va_arg(va1, void);
  v44 = va_arg(va1, void);
  v45 = va_arg(va1, void);
  v46 = va_arg(va1, void);
  v47 = va_arg(va1, void);
  v48 = va_arg(va1, void);
  v49 = va_arg(va1, void);
  v50 = va_arg(va1, void);
  v51 = va_arg(va1, void);
  v52 = va_arg(va1, void);
  v53 = va_arg(va1, void);

  return memcpy(a1, __srca, 0xA3uLL);
}

uint64_t sub_1B2124274(char a1)
{
  *(v1 + 24) = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  *(v1 + 16) = a1;
  return v1;
}

const char *sub_1B21242B8(uint64_t a1, uint64_t a2, int a3)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v12[0] = 0;
  v4 = sub_1B2252350();
  v5 = sqlite3_open_v2((v4 + 32), v12, a3, 0);

  result = v12[0];
  if (v5)
  {
    sqlite3_close(v12[0]);
    sub_1B21AC298();
    swift_allocError();
    v8 = v7;
    result = sqlite3_errstr(v5);
    if (result)
    {
LABEL_3:
      v9 = sub_1B22523F0();
      *v8 = v5;
      *(v8 + 8) = v9;
      *(v8 + 16) = v10;
      *(v8 + 24) = 0u;
      *(v8 + 40) = 0u;
      *(v8 + 56) = 0;
      return swift_willThrow();
    }

    __break(1u);
  }

  else if (!v12[0])
  {
    sub_1B21AC298();
    swift_allocError();
    v8 = v11;
    v5 = 2;
    if (!sqlite3_errstr(2))
    {
      __break(1u);
    }

    goto LABEL_3;
  }

  return result;
}

uint64_t type metadata accessor for Configuration(uint64_t a1)
{
  result = qword_1ED85E8C8;
  if (!qword_1ED85E8C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B2124438()
{
  type metadata accessor for DatabaseCollation();
  swift_initStaticObject();
  Database.add(collation:)();
  swift_initStaticObject();
  Database.add(collation:)();
  swift_initStaticObject();
  Database.add(collation:)();
  swift_initStaticObject();
  Database.add(collation:)();
  swift_initStaticObject();

  return Database.add(collation:)();
}

uint64_t Database.add(collation:)()
{
  sub_1B213CF68();
  sub_1B2117F5C(v0 + OBJC_IVAR____TtC12GRDBInternal8Database_collations, &v9);

  sub_1B2125808(v2, sub_1B2132630, sub_1B22474C8);
  swift_endAccess();

  sub_1B2117330();
  swift_beginAccess();
  v3 = *(v0 + 16);
  v4 = sub_1B2252350();
  collation_v2 = sqlite3_create_collation_v2(v3, (v4 + 32), 1, v1, sub_1B2238684, 0);

  if (collation_v2)
  {
    v7 = Database.lastErrorMessage.getter();
    if (!v8)
    {
      if (!sqlite3_errstr(collation_v2))
      {
        __break(1u);
      }

      v7 = sub_1B22523F0();
    }

    LODWORD(v9) = collation_v2;
    *(&v9 + 1) = v7;
    v10 = v8;
    v11 = 0u;
    v12 = 0u;
    v13 = 0;
    sub_1B2202FD4(&v9);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void sub_1B2124614(uint64_t a1)
{
  sub_1B212D010();
  v6 = v1;
  sub_1B21181AC();
  sub_1B21619D8(&qword_1EB7A34A8, &qword_1B226C250);
  sub_1B2115F64();
  sub_1B2252C70();
  sub_1B224B1C8();
  if (v7)
  {
    v8 = 0;
    sub_1B224B578();
    if (v1)
    {
      while (1)
      {
        sub_1B2125FF4();
LABEL_9:
        v13 = *(*(v2 + 48) + 8 * (v9 | (v8 << 6)));
        sub_1B2253420();
        MEMORY[0x1B2742F10](0);
        sub_1B2253470();
        sub_1B2124268();
        if (((-1 << v15) & ~*(v4 + 8 * v14)) == 0)
        {
          break;
        }

        sub_1B2112110();
LABEL_17:
        sub_1B2111AE8();
        sub_1B212D8C4();
        *(v19 + 8 * v18) = v13;
        sub_1B212D15C();

        if (!v6)
        {
          goto LABEL_4;
        }
      }

      sub_1B2114850();
      while (1)
      {
        sub_1B211FE98();
        if (v17)
        {
          if (v16)
          {
            break;
          }
        }

        sub_1B224B4EC();
        sub_1B2134C2C();
        if (!v17)
        {
          sub_1B2118398();
          goto LABEL_17;
        }
      }
    }

    else
    {
LABEL_4:
      v10 = v8;
      while (1)
      {
        v8 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        if (v8 >= v5)
        {

          v6 = v1;
          goto LABEL_21;
        }

        ++v10;
        if (*(v2 + 56 + 8 * v8))
        {
          sub_1B211667C();
          v6 = (v12 & v11);
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v3;
    sub_1B212CE34();
  }
}

BOOL static DatabaseCollation.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B2252350();
  v3 = sub_1B2252350();
  v4 = sqlite3_stricmp((v2 + 32), (v3 + 32));

  return v4 == 0;
}

void sub_1B2124804(uint64_t a1)
{
  sub_1B212D010();
  v4 = v1;
  sub_1B21181AC();
  sub_1B21619D8(&qword_1EB7A34A8, &qword_1B226C250);
  sub_1B2115F64();
  sub_1B2252C70();
  sub_1B224B1C8();
  if (!v5)
  {
LABEL_26:

    *v4 = v3;
    sub_1B212CE34();
    return;
  }

  v6 = 0;
  v7 = (v2 + 56);
  v8 = 1 << *(v2 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v2 + 56);
  v11 = (v8 + 63) >> 6;
  if (!v10)
  {
LABEL_7:
    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v6 >= v11)
      {
        break;
      }

      ++v13;
      if (v7[v6])
      {
        sub_1B211667C();
        v10 = v15 & v14;
        goto LABEL_12;
      }
    }

    sub_1B211DAB8();
    if (v23 != v24)
    {
      sub_1B2113B98();
      *v7 = v25;
    }

    else
    {
      v26 = sub_1B2122A88();
      sub_1B2148CEC(v26, v27, v2 + 56);
    }

    v4 = v1;
    *(v2 + 16) = 0;
    goto LABEL_26;
  }

  while (1)
  {
    sub_1B213CCE8();
LABEL_12:
    v16 = *(*(v2 + 48) + 8 * (v12 | (v6 << 6)));
    sub_1B2253420();
    MEMORY[0x1B2742F10](0);
    sub_1B2253470();
    sub_1B2124268();
    if (((-1 << v18) & ~*(v3 + 56 + 8 * v17)) == 0)
    {
      break;
    }

    sub_1B2112110();
LABEL_20:
    sub_1B2111AE8();
    sub_1B213CBD0();
    *(v22 + 8 * v21) = v16;
    sub_1B212D15C();
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  sub_1B2114850();
  while (1)
  {
    sub_1B211FE98();
    if (v20)
    {
      if (v19)
      {
        break;
      }
    }

    sub_1B224B4EC();
    sub_1B212E31C();
    if (!v20)
    {
      sub_1B2118398();
      goto LABEL_20;
    }
  }

LABEL_28:
  __break(1u);
}