uint64_t sub_1C99C693C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  (*(*(a6 - 8) + 32))(a9, a1, a6);
  v21[0] = a6;
  v21[1] = a7;
  v21[2] = a8;
  v21[3] = a10;
  result = type metadata accessor for StatefulTryMap(0, v21);
  v19 = (a9 + *(result + 52));
  *v19 = a2;
  v19[1] = a3;
  v20 = (a9 + *(result + 56));
  *v20 = a4;
  v20[1] = a5;
  return result;
}

uint64_t sub_1C99C6A04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a4;
  v35 = a1;
  sub_1C97AE9DC();
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v27 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v12[2];
  v13 = v12[3];
  v31 = v12[5];
  v32 = sub_1C9A91C58();
  sub_1C97AE9DC();
  v34 = v15;
  MEMORY[0x1EEE9AC00](v16);
  v30 = &v26 - v17;
  v18 = *(a2 + 32);
  v28 = swift_allocBox();
  v29 = v4;
  (*(v4 + *(a2 + 52)))();
  (*(v8 + 16))(&v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v4, a2);
  v19 = (*(v8 + 80) + 64) & ~*(v8 + 80);
  v20 = (v10 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 2) = v14;
  *(v21 + 3) = v13;
  *(v21 + 4) = v18;
  *(v21 + 5) = a3;
  v22 = v33;
  *(v21 + 6) = v31;
  *(v21 + 7) = v22;
  (*(v8 + 32))(&v21[v19], v27, a2);
  *&v21[v20] = v28;

  v23 = v30;
  sub_1C9A91F68();

  v24 = v32;
  swift_getWitnessTable();
  sub_1C9A920B8();
  (*(v34 + 8))(v23, v24);
}

uint64_t sub_1C99C6C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = swift_projectBox();
  v17[0] = a4;
  v17[1] = a5;
  v17[2] = a6;
  v17[3] = a8;
  v15 = *(a2 + *(type metadata accessor for StatefulMap(0, v17) + 56));
  swift_beginAccess();
  v15(a1, v14);
  return swift_endAccess();
}

uint64_t sub_1C99C6D60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v30 = a2;
  v31 = a1;
  v5 = a2 - 8;
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = *(v5 + 24);
  v9 = *(v5 + 32);
  v26 = *(v5 + 48);
  v27 = v8;
  v10 = v9;
  sub_1C9A91CB8();
  sub_1C97AE9DC();
  v28 = v12;
  v29 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v24 - v13;
  v15 = *(v5 + 40);
  v16 = swift_allocBox();
  (*(v4 + *(v5 + 60)))();
  v17 = *(v6 + 16);
  v25 = v4;
  v17(&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v4, v30);
  v18 = (*(v6 + 80) + 64) & ~*(v6 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = v27;
  *(v19 + 3) = v10;
  v21 = v32;
  v20 = v33;
  *(v19 + 4) = v15;
  *(v19 + 5) = v21;
  *(v19 + 6) = v26;
  *(v19 + 7) = v20;
  (*(v6 + 32))(&v19[v18], &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v30);
  *&v19[(v7 + v18 + 7) & 0xFFFFFFFFFFFFFFF8] = v16;

  sub_1C9A92048();

  v22 = v29;
  swift_getWitnessTable();
  sub_1C9A920B8();
  (*(v28 + 8))(v14, v22);
}

uint64_t sub_1C99C703C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = swift_projectBox();
  v17[0] = a4;
  v17[1] = a5;
  v17[2] = a6;
  v17[3] = a8;
  v15 = *(a2 + *(type metadata accessor for StatefulTryMap(0, v17) + 56));
  swift_beginAccess();
  v15(a1, v14);
  return swift_endAccess();
}

uint64_t sub_1C99C711C(uint64_t a1)
{
  v3 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v12 = v1[3];
  v4 = v12;
  v13 = v5;
  v14 = v7;
  type metadata accessor for StatefulTryMap(0, &v11);
  sub_1C99C741C();
  return sub_1C99C703C(a1, v1 + v8, v9, v3, v4, v5, v6, v7);
}

uint64_t sub_1C99C7200(uint64_t (*a1)(void, __int128 *))
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 48);
  v7 = *(v1 + 16);
  v6 = v7;
  v8 = v2;
  v9 = v3;
  v4 = *(a1(0, &v7) - 8);
  (*(*(v6 - 8) + 8))(v1 + ((*(v4 + 80) + 64) & ~*(v4 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1C99C7328(uint64_t a1)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v11[0] = v1[2];
  v3 = v11[0];
  v11[1] = v4;
  v11[2] = v5;
  v11[3] = v7;
  type metadata accessor for StatefulMap(0, v11);
  sub_1C99C741C();
  return sub_1C99C6C98(a1, v1 + v8, v9, v3, v4, v5, v6, v7);
}

uint64_t AudioFileSequence.init(url:audioFormat:bufferFrameCapacity:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)()@<X2>, uint64_t (**a4)()@<X8>)
{
  v8 = sub_1C9A91558();
  sub_1C97AE9C8();
  v10 = v9;
  v11 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v13 = (*(v12 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  result = (*(v10 + 32))(v14 + v11, a1, v8);
  *(v14 + v13) = a2;
  *a4 = sub_1C9812A50;
  a4[1] = v14;
  a4[2] = a3;
  return result;
}

uint64_t sub_1C99C7528(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    while (a2 != -1 || result != 0x8000000000000000)
    {
      v3 = a2;
      a2 = result % a2;
      result = v3;
      if (!a2)
      {
        return v3;
      }
    }

    __break(1u);
  }

  else
  {
    return result;
  }

  return result;
}

void *sub_1C99C7564(uint64_t (*a1)(uint64_t), uint64_t a2, unint64_t a3)
{
  v3 = sub_1C98254FC(a1, a2, a3);

  return v3;
}

id sub_1C99C7598(uint64_t a1)
{
  v2 = sub_1C9A91558();
  sub_1C97AE9C8();
  v4 = v3;
  v6 = MEMORY[0x1EEE9AC00](v5);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13 - v7;
  (*(v4 + 16))(&v13 - v7, a1, v2);
  v9 = objc_allocWithZone(MEMORY[0x1E6958408]);
  v10 = sub_1C99CA018(v8);
  v11 = [v10 length];

  return v11;
}

void sub_1C99C78B0(id *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = *a1;
  v6 = [*a1 framePosition];
  if (v6 >= [v5 length])
  {
    goto LABEL_8;
  }

  v7 = [v5 processingFormat];
  v8 = *(a2 + 8);
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_13:
    __break(1u);
  }

  if (HIDWORD(v8))
  {
    goto LABEL_13;
  }

  v9 = v7;
  v10 = [objc_allocWithZone(MEMORY[0x1E6958440]) initWithPCMFormat:v7 frameCapacity:v8];

  if (v10)
  {
    v13[0] = 0;
    if ([v5 readIntoBuffer:v10 error:v13])
    {
      v11 = v13[0];
      if ([v10 frameLength])
      {
LABEL_9:
        *a3 = v10;
        return;
      }

LABEL_8:
      v10 = 0;
      goto LABEL_9;
    }

    v12 = v13[0];
    sub_1C9A913C8();

    swift_willThrow();
  }

  else
  {
    sub_1C9812B64();
    swift_allocError();
    swift_willThrow();
  }
}

AVAudioPCMBuffer_optional __swiftcall AudioFileSequence.Iterator.next()()
{
  v1 = *v0;

  v2 = objc_autoreleasePoolPush();
  if (!*(v1 + 16))
  {
    sub_1C97A2CEC(&unk_1EC3D2870, &unk_1C9AC4F10);
    sub_1C9825A44();
    v6 = swift_allocError();
    swift_willThrow();
    objc_autoreleasePoolPop(v2);

LABEL_5:
    sub_1C99C9F50();
    v3 = 0;
    goto LABEL_6;
  }

  v8 = *(v1 + 16);
  sub_1C99C78B0(&v8, v0, &v9);
  v3 = v9;
  objc_autoreleasePoolPop(v2);

  if (!v3)
  {
    goto LABEL_5;
  }

LABEL_6:
  v7 = v3;
  result.value.super._impl = v4;
  result.value.super.super.isa = v7;
  result.is_nil = v5;
  return result;
}

unint64_t sub_1C99C7B34@<X0>(unint64_t *a1@<X8>)
{
  result = AudioFileSequence.Iterator.next()();
  *a1 = result;
  return result;
}

uint64_t sub_1C99C7B5C(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  sub_1C97A2CEC(&qword_1EC3C83F8, &unk_1C9AA33B0);
  sub_1C97F07FC();
  swift_allocObject();
  return sub_1C99C9E78(sub_1C99CA4DC, v3);
}

uint64_t AudioFileSequence.makeIterator()@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = (*v1)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C99C7C40@<X0>(uint64_t *a1@<X8>)
{
  AudioFileSequence.makeIterator()(a1);
}

id sub_1C99C7C90(uint64_t a1, void *a2)
{
  sub_1C9A91558();
  sub_1C97AE9C8();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, a1);
  v8 = [a2 settings];
  v9 = sub_1C9A92328();

  v10 = [a2 commonFormat];
  LOBYTE(a2) = [a2 isInterleaved];
  v11 = objc_allocWithZone(MEMORY[0x1E6958408]);
  return sub_1C99CA2A0(v6, v9, v10, a2);
}

id sub_1C99C7DE8(uint64_t a1, id a2)
{
  sub_1C9A91558();
  sub_1C97AE9C8();
  MEMORY[0x1EEE9AC00](v5);
  v7 = sub_1C99CA628(v6, v13);
  v8(v7);
  v9 = objc_allocWithZone(MEMORY[0x1E6958408]);
  v10 = sub_1C99CA018(v3);
  if (!v2)
  {
    v11 = v10;
    a2 = sub_1C99C7ED0(v10, a2);
  }

  return a2;
}

id sub_1C99C7ED0(void *a1, void *a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v4 = [a1 processingFormat];
  v5 = [a2 isEqual_];

  if (v5)
  {
    return a1;
  }

  sub_1C99CA438(v6);
  v8[0] = 0;
  return sub_1C99C8BA4(a1, a2, v8);
}

void sub_1C99C7FB0(void *a1)
{
  v2 = [a1 fileFormat];
  [v2 sampleRate];
  v4 = v3;

  sub_1C99CA608();
  if (!(v6 ^ v7 | v5))
  {
    __break(1u);
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 <= -2147483650.0)
  {
    goto LABEL_7;
  }

  sub_1C99CA5F8();
  if (v6)
  {
    v8 = v4;
    CMTimeMake(v37, 0, v4);
    value = v37[0].value;
    epoch = v37[0].epoch;
    v11 = *&v37[0].timescale;
    v12 = CMTimeMake(v37, [a1 length], v8);
    v20 = sub_1C99CA64C(v12, v13, v14, v15, v16, v17, v18, v19, v37[0].value, *&v37[0].timescale, v37[0].epoch, value);
    v23 = CMTimeRangeMake(v22, v20, v21);
    sub_1C99CA614(v23, v24, v25, v26, v27, v28, v29, v30, v31, v33, v34, v35, v36, v11, epoch, *&v37[0].value, *&v37[0].epoch, v32);
    return;
  }

LABEL_8:
  __break(1u);
}

void sub_1C99C80BC(void *a1, double a2)
{
  sub_1C99C7FB0(a1);
  type metadata accessor for SNTimeUtils(v3);
  sub_1C99CA608();
  if (!(v5 ^ v6 | v4))
  {
    __break(1u);
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (a2 <= -2147483650.0)
  {
    goto LABEL_7;
  }

  sub_1C99CA5F8();
  if (v5)
  {
    v7 = sub_1C97CB164(v17, v18);
    sub_1C99CA614(v7, v8, v9, v10, v11, v12, v13, v14, v15, v17[0], v17[1], v17[2], v17[3], v17[4], v17[5], v18[0], v18[1], v16);
    return;
  }

LABEL_8:
  __break(1u);
}

double sub_1C99C8158@<D0>(_OWORD *a1@<X8>)
{
  sub_1C9A91558();
  sub_1C97AE9C8();
  MEMORY[0x1EEE9AC00](v4);
  v6 = sub_1C99CA628(v5, v12);
  v7(v6);
  v8 = objc_allocWithZone(MEMORY[0x1E6958408]);
  v9 = sub_1C99CA154(v2, 1, 0);
  if (!v1)
  {
    v11 = v9;
    sub_1C99C7FB0(v9);

    *a1 = v12;
    a1[1] = v13;
    result = *&v14;
    a1[2] = v14;
  }

  return result;
}

double sub_1C99C8248@<D0>(_OWORD *a1@<X8>, double a2@<D0>)
{
  type metadata accessor for SNTimeUtils(a2);
  sub_1C97CC8B4(sub_1C99CA4C0, v5);
  v3 = v5[1];
  *a1 = v5[0];
  a1[1] = v3;
  result = *&v6;
  a1[2] = v6;
  return result;
}

double sub_1C99C82C8@<D0>(_OWORD *a1@<X8>)
{
  result = sub_1C99C8158(v5);
  if (!v1)
  {
    v4 = v5[1];
    *a1 = v5[0];
    a1[1] = v4;
    result = *&v6;
    a1[2] = v6;
  }

  return result;
}

void sub_1C99C8448(void *a1, uint64_t (*a2)(id *, uint64_t (*)(id *), uint64_t, uint64_t (*)(void *, id *), uint64_t, uint64_t), uint64_t a3, uint64_t (*a4)(void *, id *), uint64_t a5, uint64_t a6, void *a7)
{
  v7 = a7;
  v8 = a5;
  v9 = a1;
  v38 = *MEMORY[0x1E69E9840];
  v10 = &selRef_numberWithUnsignedInteger_;
  v11 = &off_1E8348000;
  if (a1)
  {
    while (1)
    {
      v36 = 0;
      v12 = a2(&v36, a2, a3, a4, a5, a6);
      v13 = v36;
      if (!v12)
      {
        break;
      }

      v14 = v12;
      v15 = v36;
      v16 = v9;
      if ([v14 frameCapacity] < v9)
      {
        v16 = [v14 frameCapacity];
      }

      [v14 v10[45]];
      v17 = [v7 framePosition];
      if (v17 >= [v7 length])
      {
        [v14 v10[45]];
      }

      else
      {
        v36 = 0;
        v18 = [v7 readIntoBuffer:v14 frameCount:v16 error:&v36];
        if (v18)
        {
          v19 = v36;
          v20 = v15;
        }

        else
        {
          v21 = v36;
          v22 = v11;
          v23 = v8;
          v24 = sub_1C9A913C8();

          swift_willThrow();
          v20 = sub_1C9A913B8();
          v25 = v20;
          v26 = v24;
          v8 = v23;
          v11 = v22;
          v7 = a7;
        }

        v27 = v20;

        if (!v18)
        {
          goto LABEL_25;
        }

        v15 = v27;
      }

      if (![v14 v11[415]])
      {

        return;
      }

      if (v9 < [v14 v11[415]])
      {
        type metadata accessor for SNError(v28);
        v36 = 0;
        v37 = 0xE000000000000000;
        sub_1C9A935B8();

        v36 = 0xD000000000000029;
        v37 = 0x80000001C9ADD8E0;
        if ([v14 v11[415]] >= v9)
        {
          v32 = sub_1C9A93A98();
          MEMORY[0x1CCA90230](v32);

          sub_1C9929478(0xD000000000000017, 0x80000001C9AD4AA0, 2, 0, v36, v37);

          swift_willThrow();

          goto LABEL_27;
        }

LABEL_30:
        __break(1u);
      }

      v29 = [v14 v11[415]];
      v30 = (v9 - v29);
      if (v9 < v29)
      {
        __break(1u);
        goto LABEL_30;
      }

      v36 = v15;
      v31 = a4(v14, &v36);
      v27 = v36;

      if ((v31 & 1) == 0)
      {
        if (v27)
        {
          goto LABEL_26;
        }

        __break(1u);
LABEL_25:
        if (v27)
        {
LABEL_26:
          swift_willThrow();

LABEL_27:
          v7 = v14;
          goto LABEL_28;
        }

LABEL_32:

        __break(1u);
        return;
      }

      v9 = v30;
      v10 = &selRef_numberWithUnsignedInteger_;
      if (!v9)
      {
        goto LABEL_28;
      }
    }

    if (v36)
    {
      swift_willThrow();
      v13;
      goto LABEL_28;
    }

    __break(1u);
    goto LABEL_32;
  }

LABEL_28:
}

void sub_1C99C87F4(void *a1, uint64_t (*a2)(id *), uint64_t a3, uint64_t (*a4)(void *, id, id *), uint64_t a5, uint64_t (*a6)(void *, id *))
{
  v7 = a1;
  v29 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return;
  }

  while (1)
  {
    v27 = 0;
    v8 = a2(&v27);
    v9 = v27;
    if (!v8)
    {
      if (v27)
      {
        swift_willThrow();
        v9;
        return;
      }

      __break(1u);
      goto LABEL_26;
    }

    v10 = v8;
    v11 = v27;
    v12 = v7;
    if ([v10 frameCapacity] < v7)
    {
      v12 = [v10 frameCapacity];
    }

    [v10 setFrameLength_];
    v27 = v11;
    v13 = a4(v10, v12, &v27);
    v14 = v27;

    if ((v13 & 1) == 0)
    {
      if (v14)
      {
        swift_willThrow();

        return;
      }

LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    if (!sub_1C99CA670())
    {

      return;
    }

    if (v7 < sub_1C99CA670())
    {
      type metadata accessor for SNError(v15);
      v27 = 0;
      v28 = 0xE000000000000000;
      sub_1C9A935B8();

      v27 = 0xD000000000000029;
      v28 = 0x80000001C9ADD8E0;
      if (sub_1C99CA670() >= v7)
      {
        v20 = sub_1C9A93A98();
        MEMORY[0x1CCA90230](v20);

        v21 = v28;
        v22 = sub_1C99CA65C();
        sub_1C9929478(v22, v23, 2, 0, v24, v21);

        swift_willThrow();

        goto LABEL_22;
      }

LABEL_24:
      __break(1u);
    }

    v16 = sub_1C99CA670();
    v17 = (v7 - v16);
    if (v7 < v16)
    {
      __break(1u);
      goto LABEL_24;
    }

    v27 = v14;
    v18 = a6(v10, &v27);
    v19 = v27;

    if ((v18 & 1) == 0)
    {
      break;
    }

    v7 = v17;
    if (!v17)
    {
      return;
    }
  }

  if (!v19)
  {
LABEL_27:
    __break(1u);
    return;
  }

  swift_willThrow();
LABEL_22:
}

uint64_t sub_1C99C8AB8(uint64_t result, double a2)
{
  if (result)
  {
    type metadata accessor for SNError(a2);
    sub_1C9A935B8();

    v2 = sub_1C9A93A98();
    MEMORY[0x1CCA90230](v2);

    v3 = sub_1C99CA65C();
    sub_1C9929478(v3, v4, 1, 0, v5, 0x80000001C9ADD910);

    return swift_willThrow();
  }

  return result;
}

id sub_1C99C8BA4(void *a1, void *a2, uint64_t a3)
{
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initSecondaryReader:a1 format:a2 error:a3];

  return v5;
}

void sub_1C99C8C08(void *a1, uint64_t a2)
{
  v4 = [a1 processingFormat];
  v5 = [v4 channelLayout];

  v6 = [objc_allocWithZone(MEMORY[0x1E6958418]) initWithStreamDescription:a2 channelLayout:v5];
  if (v6)
  {
    sub_1C99C7ED0(a1, v6);
  }

  else
  {
    __break(1u);
  }
}

void sub_1C99C8CCC(void *a1, double a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = [a1 processingFormat];
  v5 = [v4 streamDescription];

  v7 = *v5;
  v6 = v5[1];
  v10 = *(v5 + 4);
  v8[1] = *(&v7 + 1);
  v9 = v6;
  *v8 = a2;
  sub_1C99C8C08(a1, v8);
}

void *(*sub_1C99C8D88(void *a1, uint64_t a2, char a3))()
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  if (a3)
  {
    sub_1C97F07FC();
    v7 = swift_allocObject();
    *(v7 + 16) = 0;
    v8 = [objc_allocWithZone(MEMORY[0x1E6958440]) initWithPCMFormat:a1 frameCapacity:a2];

    *(v7 + 16) = 0;
    v9 = sub_1C99CA490;
    if (v8)
    {
      sub_1C97F07FC();
      *(swift_allocObject() + 16) = v8;

      return sub_1C99CA498;
    }
  }

  else
  {
    v10 = a1;
    return sub_1C99CA484;
  }

  return v9;
}

id sub_1C99C8EA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_allocWithZone(MEMORY[0x1E6958440]);

  return [v5 initWithPCMFormat:a2 frameCapacity:a3];
}

uint64_t sub_1C99C8EF0(void *a1, uint64_t a2)
{
  if (a1)
  {
    swift_beginAccess();
    v4 = *(a2 + 16);
    *a1 = v4;
    v5 = v4;
  }

  return 0;
}

uint64_t sub_1C99C8F4C(void *a1, uint64_t a2, void *a3, id a4)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v8 = [a4 framePosition];
  if (v8 >= [a4 length])
  {
    [a1 setFrameLength_];
    return 1;
  }

  v13[0] = 0;
  if ([a4 readIntoBuffer:a1 frameCount:a2 error:v13])
  {
    v9 = v13[0];
    return 1;
  }

  v11 = v13[0];
  v12 = sub_1C9A913C8();

  swift_willThrow();
  if (a3)
  {
    *a3 = sub_1C9A913B8();
  }

  return 0;
}

void sub_1C99C9074(void *result, unint64_t a2, uint64_t (*a3)(id *), uint64_t a4)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (HIDWORD(a2))
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1C99C9484(a2, result);
  if (v4)
  {
    return;
  }

  [result setFramePosition_];
  if ((v14 & 0x8000000000000000) != 0)
  {
    goto LABEL_10;
  }

  if (HIDWORD(v14))
  {
LABEL_11:
    __break(1u);
    return;
  }

  sub_1C97F07FC();
  v8 = swift_allocObject();
  *(v8 + 16) = result;
  v9 = result;
  sub_1C99C87F4(v14, a3, a4, sub_1C99CA47C, v8, _s13SoundAnalysis31SNEstimateSpeechDistanceRequestC20supportsSecureCodingSbvgZ_0);
  v11 = v10;

  sub_1C99C8AB8(v11, v12);
}

void sub_1C99C9194(void *a1, unsigned int a2)
{
  v3 = [a1 processingFormat];
  [v3 sampleRate];
  v5 = v4;

  sub_1C99CA608();
  if (!(v7 ^ v8 | v6))
  {
    __break(1u);
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v5 <= -2147483650.0)
  {
    goto LABEL_7;
  }

  sub_1C99CA5F8();
  if (v7)
  {
    CMTimeMake(&v9, a2, v5);
    return;
  }

LABEL_8:
  __break(1u);
}

CMTimeValue sub_1C99C9244(uint64_t a1, uint64_t a2)
{
  result = sub_1C99C7528(a1, a2);
  if (result)
  {
    if (a1 == 0x8000000000000000 && result == -1)
    {
      goto LABEL_12;
    }

    if (a1 >= 0xFFFFFFFF80000000)
    {
      if (a1 <= 0x7FFFFFFF)
      {
        CMTimeMake(&v5, a1 / result, a1);
        return v5.value;
      }

      goto LABEL_11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_11:
  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

void sub_1C99C92C4(void *a1, unint64_t a2, CMTimeRoundingMethod a3)
{
  v6 = [a1 fileFormat];
  [v6 sampleRate];
  v8 = v7;

  sub_1C99CA608();
  if (!(v10 ^ v11 | v9))
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v8 <= -9.22337204e18)
  {
    goto LABEL_12;
  }

  if (v8 >= 9.22337204e18)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v12 = [a1 processingFormat];
  [v12 sampleRate];
  v14 = v13;

  sub_1C99CA608();
  if (!(v10 ^ v11 | v9))
  {
    goto LABEL_14;
  }

  if (v14 <= -9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v14 >= 9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v15 = sub_1C99C9244(v8, v14);
  if ((a2 & 0x8000000000000000) != 0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (!HIDWORD(a2))
  {
    v18 = v15;
    v19 = v16;
    v20 = v17;
    sub_1C99C9194(a1, a2);
    v22 = v21;
    v24 = v23;
    v26 = v25;
    type metadata accessor for SNTimeUtils(v27);
    sub_1C97CC968(v22, v24, v26, v18, v19, v20, *MEMORY[0x1E6960CC0], *(MEMORY[0x1E6960CC0] + 8), *(MEMORY[0x1E6960CC0] + 16), a3);
    return;
  }

LABEL_18:
  __break(1u);
}

void sub_1C99C9484(unsigned int a1, void *a2)
{
  sub_1C99C9194(a2, a1);
  v6 = v5;
  v8 = v7;
  v10 = v9;
  sub_1C99C92C4(a2, a1, kCMTimeRoundingMethod_RoundTowardNegativeInfinity);
  if (!v2)
  {
    *&v62.timescale = v12;
    v62.epoch = v13;
    v19 = sub_1C99CA64C(v11, v12, v13, v14, v15, v16, v17, v18, v6, v8, v10, v11);
    CMTimeRangeFromTimeToTime(v21, v19, v20);
    v67 = *(&time_16 + 1);
    v22 = v65;
    v23 = v66;
    v24 = [a2 fileFormat];
    [v24 sampleRate];
    v26 = v25;

    sub_1C99CA608();
    if (!(v28 ^ v29 | v27))
    {
      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    if (v26 <= -2147483650.0)
    {
      goto LABEL_14;
    }

    sub_1C99CA5F8();
    if (!v28)
    {
      goto LABEL_15;
    }

    CMTimeConvertScale(&v62, &time, v26, kCMTimeRoundingMethod_RoundTowardNegativeInfinity);
    value = v62.value;
    v31 = *&v62.timescale;
    epoch = v62.epoch;
    v33 = [a2 processingFormat];
    [v33 sampleRate];
    v35 = v34;

    sub_1C99CA608();
    if (!(v28 ^ v29 | v27))
    {
      goto LABEL_16;
    }

    if (v35 <= -2147483650.0)
    {
LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
      return;
    }

    sub_1C99CA5F8();
    if (!v28)
    {
      goto LABEL_18;
    }

    *&time = v67;
    *(&time + 1) = v22;
    *&time_16 = v23;
    v36 = CMTimeConvertScale(&v62, &time, v35, kCMTimeRoundingMethod_RoundTowardNegativeInfinity);
    v37 = *&v62.timescale;
    v60 = v62.epoch;
    *&v62.timescale = v31;
    v62.epoch = epoch;
    v45 = sub_1C99CA64C(v36, v38, v39, v40, v41, v42, v43, v44, v62.value, v37, v60, value);
    v48 = CMTimeRangeMake(v47, v45, v46);
    sub_1C99CA614(v48, v49, v50, v51, v52, v53, v54, v55, v56, v58, v59, v61, v62.value, *&v62.timescale, v62.epoch, time, time_16, v57);
  }
}

void sub_1C99C9694(void *a1, __n128 *a2, uint64_t a3, uint64_t (*a4)(id *), uint64_t a5, uint64_t (*a6)(void *, id, id *), uint64_t a7, uint64_t (*a8)(void *, id, id *), double a9, uint64_t a10, uint64_t (*a11)(void *, id *), uint64_t a12)
{
  type metadata accessor for SNTimeUtils(a9);
  v18 = [a1 processingFormat];
  [v18 sampleRate];
  v20 = v19;

  sub_1C99CA608();
  if (!(v22 ^ v23 | v21))
  {
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v20 <= -2147483650.0)
  {
    goto LABEL_17;
  }

  v24 = sub_1C99CA5F8();
  if (!v22)
  {
    goto LABEL_18;
  }

  sub_1C97CCF4C(a2, v20, v24);
  if (!v12)
  {
    sub_1C99C80BC(a1, a2[2].n128_i32[0]);
    sub_1C97CC148(a2, v44, v39);
    if ((v40 & 0x8000000000000000) != 0)
    {
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    if (HIDWORD(v40))
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v25 = v41;
    v26 = a6;
    v27 = v42;
    v28 = v43;
    sub_1C99C87F4(v40, a4, a5, v26, a7, a11);
    sub_1C99C8AB8(v29, v30);
    if ((v27 & 0x8000000000000000) != 0)
    {
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    if (HIDWORD(v27))
    {
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    if (v25 != a3)
    {
      sub_1C99C9074(a1, v25, a4, a5);
    }

    sub_1C99C8448(v27, a4, a5, a11, a12, v37, a1);
    sub_1C99C8AB8(v31, v32);
    if ((v28 & 0x8000000000000000) != 0)
    {
      goto LABEL_23;
    }

    if (HIDWORD(v28))
    {
LABEL_24:
      __break(1u);
      return;
    }

    sub_1C99C87F4(v28, a4, a5, a8, a10, a11);
    sub_1C99C8AB8(v33, v34);
  }
}

uint64_t sub_1C99C98E8(void *a1, __n128 *a2, uint64_t a3, uint64_t a4, char a5, uint64_t (*a6)(void *, id, id *), uint64_t a7, uint64_t (*a8)(void *, id, id *), uint64_t a9, uint64_t (*a10)(void *, id *), uint64_t a11)
{
  v18 = [a1 processingFormat];
  v19 = sub_1C99C8D88(v18, a4, a5);
  v21 = v20;

  sub_1C99C9694(a1, a2, a3, v19, v21, a6, a7, a8, *&a9, a9, a10, a11);
}

void sub_1C99C99CC(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *), uint64_t a5, uint64_t (*a6)(void *, id *), uint64_t a7, double a8)
{
  type metadata accessor for SNTimeUtils(a8);
  v13 = [a1 processingFormat];
  [v13 sampleRate];
  v15 = v14;

  sub_1C99CA608();
  if (!(v17 ^ v18 | v16))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v15 <= -2147483650.0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19 = sub_1C99CA5F8();
  if (!v17)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

  sub_1C97CCF4C(a2, v15, v19);
  if (!v8)
  {
    sub_1C99C80BC(a1, *(a2 + 32));
    v20 = sub_1C97CD7B8(a2, v30);
    v21 = 0;
    v22 = *(v20 + 16);
    v23 = 32;
    while (v22 != v21)
    {
      if (v21 >= *(v20 + 16))
      {
        __break(1u);
        goto LABEL_16;
      }

      v24 = *(v20 + v23 + 16);
      v34[0] = *(v20 + v23);
      v34[1] = v24;
      v35[0] = *(v20 + v23 + 32);
      sub_1C99C9694(a1, v34, a3, a4, a5, sub_1C99C9CC4, 0, sub_1C99C9CC4, *v35, 0, a6, a7);
      ++v21;
      a3 = sub_1C9A92F08();
      v23 += 48;
    }

    if (!v22)
    {
      goto LABEL_19;
    }

    if (v22 <= *(v20 + 16))
    {
      v25 = (v20 + 48 * v22);
      v26 = *v25;
      v31 = *(v25 - 1);
      v32 = v26;
      v33 = v25[1];

      sub_1C9A92F08();
      return;
    }

    goto LABEL_20;
  }
}

uint64_t sub_1C99C9BDC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t (*a6)(void *, id *), uint64_t a7)
{
  v15 = [a1 processingFormat];
  v16 = sub_1C99C8D88(v15, a4, a5);
  v18 = v17;

  sub_1C99C99CC(a1, a2, a3, v16, v18, a6, a7, v19);
  if (!v22)
  {
    v7 = v20;
  }

  return v7;
}

uint64_t sub_1C99C9CC4(double a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a4)
  {
    type metadata accessor for SNError(a1);
    *a4 = sub_1C9929478(0xD000000000000017, 0x80000001C9AD4AA0, 2, 0, 0xD000000000000019, 0x80000001C9ADD940);
  }

  return 0;
}

id sub_1C99C9D44@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>, double a4@<D0>)
{
  type metadata accessor for SNAudioFileUtils(a4);
  result = sub_1C99C7DE8(a1, a2);
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

id sub_1C99C9D9C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>, double a4@<D0>)
{
  type metadata accessor for SNAudioFileUtils(a4);
  result = sub_1C99C7C90(a1, a2);
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

id sub_1C99C9DEC(uint64_t a1, double a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for SNAudioFileUtils(a2);
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_1C99C9E44(uint64_t a1, double a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for SNAudioFileUtils(a2);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1C99C9E78(void (*a1)(uint64_t *__return_ptr), uint64_t a2)
{
  *(v2 + 16) = 0;
  v5 = objc_autoreleasePoolPush();
  sub_1C99C9EF0(v2, a1);
  objc_autoreleasePoolPop(v5);
  if (v3)
  {
  }

  return v2;
}

void sub_1C99C9EF0(uint64_t a1, void (*a2)(uint64_t *__return_ptr))
{
  a2(&v5);
  if (!v2)
  {
    v4 = *(a1 + 16);
    *(a1 + 16) = v5;
  }
}

uint64_t sub_1C99C9F44()
{
  result = v0;
  *(v0 + 16) = 0;
  return result;
}

BOOL sub_1C99C9F50()
{
  v1 = *(v0 + 16);
  v2 = v1 != 0;
  *(v0 + 16) = 0;

  return v2;
}

unint64_t sub_1C99C9F88()
{
  result = qword_1EC3CFDF0;
  if (!qword_1EC3CFDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFDF0);
  }

  return result;
}

id sub_1C99CA018(uint64_t a1)
{
  v2 = v1;
  v14[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1C9A91488();
  v14[0] = 0;
  v5 = [v2 initForReading:v4 error:v14];

  v6 = v14[0];
  if (v5)
  {
    v7 = sub_1C9A91558();
    sub_1C97DA940();
    v9 = *(v8 + 8);
    v10 = v6;
    v9(a1, v7);
  }

  else
  {
    v11 = v14[0];
    sub_1C9A913C8();

    swift_willThrow();
    sub_1C9A91558();
    sub_1C97DA940();
    (*(v12 + 8))(a1);
  }

  return v5;
}

id sub_1C99CA154(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v18[1] = *MEMORY[0x1E69E9840];
  v8 = sub_1C9A91488();
  v18[0] = 0;
  v9 = [v4 initForReading:v8 commonFormat:a2 interleaved:a3 & 1 error:v18];

  v10 = v18[0];
  if (v9)
  {
    v11 = sub_1C9A91558();
    sub_1C97DA940();
    v13 = *(v12 + 8);
    v14 = v10;
    v13(a1, v11);
  }

  else
  {
    v15 = v18[0];
    sub_1C9A913C8();

    swift_willThrow();
    sub_1C9A91558();
    sub_1C97DA940();
    (*(v16 + 8))(a1);
  }

  return v9;
}

id sub_1C99CA2A0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v19[1] = *MEMORY[0x1E69E9840];
  v9 = sub_1C9A91488();
  v10 = sub_1C9A922F8();

  v19[0] = 0;
  v11 = [v5 initForWriting:v9 settings:v10 commonFormat:a3 interleaved:a4 & 1 error:v19];

  v12 = v19[0];
  if (v11)
  {
    v13 = sub_1C9A91558();
    v14 = *(*(v13 - 8) + 8);
    v15 = v12;
    v14(a1, v13);
  }

  else
  {
    v16 = v19[0];
    sub_1C9A913C8();

    swift_willThrow();
    v17 = sub_1C9A91558();
    (*(*(v17 - 8) + 8))(a1, v17);
  }

  return v11;
}

unint64_t sub_1C99CA438(double a1)
{
  result = qword_1EC3CFDF8;
  if (!qword_1EC3CFDF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC3CFDF8);
  }

  return result;
}

void *sub_1C99CA498()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

_BYTE *sub_1C99CA4F8(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1C99CA5A4()
{
  result = qword_1EC3CFE00;
  if (!qword_1EC3CFE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFE00);
  }

  return result;
}

__n128 sub_1C99CA614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a17, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15, __int128 a16, __n128 a18)
{
  *v18 = a15;
  v18[1] = a16;
  result = a18;
  v18[2] = a18;
  return result;
}

id sub_1C99CA670()
{

  return [v0 (v1 + 350)];
}

uint64_t sub_1C99CA688(uint64_t *a1, void *a2)
{
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v20 = a1[7];
  v21 = a1[6];
  v8 = a2[2];
  v9 = a2[3];
  v10 = a2[4];
  v11 = a2[5];
  v12 = *a1 == *a2 && a1[1] == a2[1];
  v18 = a2[7];
  v19 = a2[6];
  if (!v12 && (sub_1C9A93B18() & 1) == 0)
  {
    return 0;
  }

  v13 = v4 == v8 && v5 == v9;
  if (!v13 && (sub_1C9A93B18() & 1) == 0)
  {
    return 0;
  }

  v14 = v6 == v10 && v7 == v11;
  if (!v14 && (sub_1C9A93B18() & 1) == 0)
  {
    return 0;
  }

  v15 = v21 == v19 && v20 == v18;
  if (!v15 && (sub_1C9A93B18() & 1) == 0)
  {
    return 0;
  }

  if (a1[8] == a2[8] && a1[9] == a2[9])
  {
    return 1;
  }

  return sub_1C9A93B18();
}

uint64_t sub_1C99CA7DC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E49726576726573 && a2 == 0xEA00000000006F66;
  if (v4 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7461507972657571 && a2 == 0xE900000000000068)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9A93B18();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C99CA8B4(char a1)
{
  if (a1)
  {
    return 0x7461507972657571;
  }

  else
  {
    return 0x6E49726576726573;
  }
}

uint64_t sub_1C99CA8F4(void *a1)
{
  v3 = v1;
  v5 = sub_1C97A2CEC(&unk_1EC3CFE40, &unk_1C9AC5268);
  sub_1C97AE9C8();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16[-v9];
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C99CBE54();
  sub_1C9A93DD8();
  v11 = *v3;
  v12 = v3[2];
  v23 = v3[1];
  v24 = v12;
  v13 = v3[2];
  v25 = v3[3];
  v18 = v11;
  v19 = v23;
  v14 = *v3;
  v20 = v13;
  v21 = v3[3];
  v22 = v14;
  v17[79] = 0;
  sub_1C9840AC4(&v22, v17);
  sub_1C9877B9C();
  sub_1C9A93A18();
  sub_1C99CC424();
  if (!v2)
  {
    v16[15] = 1;
    sub_1C9A939C8();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_1C99CAAAC(uint64_t a1)
{
  sub_1C9A92528();
  sub_1C9A92528();
  sub_1C9A92528();
  sub_1C9A92528();

  return sub_1C9A92528();
}

uint64_t sub_1C99CAB40()
{
  sub_1C9A93CC8();
  sub_1C9A92528();
  sub_1C9A92528();
  sub_1C9A92528();
  sub_1C9A92528();
  sub_1C9A92528();
  return sub_1C9A93D18();
}

void *sub_1C99CABE4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1C97A2CEC(&qword_1EC3CFE28, &qword_1C9AC5260);
  sub_1C97AE9C8();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C99CBE54();
  sub_1C9A93DB8();
  if (v2)
  {
    return sub_1C97A592C(a1);
  }

  v23 = 0;
  sub_1C9877A74();
  sub_1C9A938F8();
  v18 = v14;
  v19 = v15;
  v20 = v16;
  v21 = v17;
  v22 = 1;
  v5 = sub_1C9A938A8();
  v7 = v6;
  v8 = sub_1C97FB2A8();
  v9(v8);
  v12[0] = v18;
  v12[1] = v19;
  v12[2] = v20;
  v12[3] = v21;
  *&v12[4] = v5;
  *(&v12[4] + 1) = v7;
  sub_1C99CBEA8(v12, v13);
  sub_1C97A592C(a1);
  sub_1C99CC460();
  v13[8] = v5;
  v13[9] = v7;
  sub_1C99CBEE0(v13);
  return memcpy(a2, v12, 0x50uLL);
}

uint64_t sub_1C99CAE14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C99CA7DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C99CAE3C(uint64_t a1)
{
  v2 = sub_1C99CBE54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99CAE78(uint64_t a1)
{
  v2 = sub_1C99CBE54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1C99CAEB4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1C99CABE4(a1, v5);
  if (!v2)
  {
    return memcpy(a2, v5, 0x50uLL);
  }

  return result;
}

uint64_t sub_1C99CAF20()
{
  sub_1C9A93CC8();
  sub_1C99CAAAC(v1);
  return sub_1C9A93D18();
}

char *sub_1C99CAF60(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = *&a1[OBJC_IVAR___SNFileServerInfo_impl + 16];
  v17[0] = *&a1[OBJC_IVAR___SNFileServerInfo_impl];
  v17[1] = v6;
  v7 = *&a1[OBJC_IVAR___SNFileServerInfo_impl + 48];
  v18 = *&a1[OBJC_IVAR___SNFileServerInfo_impl + 32];
  v19 = v7;
  v20 = v17[0];
  v21 = v6;
  v22 = v18;
  v23 = v7;
  v8 = type metadata accessor for SNListFilesRequest(*v17);
  v9 = objc_allocWithZone(v8);
  v10 = &v9[OBJC_IVAR___SNListFilesRequest_impl];
  v11 = v21;
  *v10 = v17[0];
  *(v10 + 1) = v11;
  v12 = v23;
  *(v10 + 2) = v22;
  *(v10 + 3) = v12;
  *(v10 + 8) = a2;
  *(v10 + 9) = a3;
  sub_1C9840AC4(v17, v16);
  v15.receiver = v9;
  v15.super_class = v8;
  v13 = objc_msgSendSuper2(&v15, sel_init);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v13;
}

id (*sub_1C99CB08C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  v31 = a2;
  v10 = sub_1C97A2CEC(&qword_1EC3CA8D0, &qword_1C9AA47B0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v30 - v11;
  v13 = [objc_allocWithZone(MEMORY[0x1E69C6B70]) init];
  [v13 setDispatchQueue_];
  v14 = [objc_allocWithZone(MEMORY[0x1E6999488]) init];
  v15 = sub_1C9A92478();
  [v14 setServiceType_];

  v16 = (v5 + OBJC_IVAR___SNListFilesRequest_impl);
  v17 = *(v5 + OBJC_IVAR___SNListFilesRequest_impl + 16);
  v18 = v16[3];

  sub_1C99CBF10(v17, v18, v14);
  v20 = v16[8];
  v19 = v16[9];
  v21 = sub_1C9A92988();
  sub_1C97ACC50(v12, 1, 1, v21);
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = v14;
  v22[5] = v20;
  v22[6] = v19;
  v22[7] = a4;
  v23 = v31;
  v22[8] = a5;
  v22[9] = v23;
  v22[10] = a3;
  v22[11] = v13;

  v24 = v14;

  v25 = v13;
  sub_1C99A9128();
  v27 = v26;
  v28 = swift_allocObject();
  v28[2] = v27;
  v28[3] = v25;
  v28[4] = v24;
  return sub_1C99CC15C;
}

uint64_t sub_1C99CB2AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 376) = v11;
  *(v8 + 360) = v10;
  *(v8 + 344) = a7;
  *(v8 + 352) = a8;
  *(v8 + 328) = a5;
  *(v8 + 336) = a6;
  *(v8 + 320) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1C99CB2EC, 0, 0);
}

uint64_t sub_1C99CB2EC()
{
  sub_1C97AA95C();
  v1 = v0[40];
  v0[2] = v0;
  v0[3] = sub_1C99CB400;
  v2 = swift_continuation_init();
  v3 = sub_1C97A2CEC(&qword_1EC3CA050, &qword_1C9AA94A0);
  v0[48] = v3;
  v0[25] = v3;
  v0[18] = MEMORY[0x1E69E9820];
  v0[19] = 1107296256;
  v0[20] = sub_1C9A1E374;
  v0[21] = &unk_1F4948DD8;
  v0[22] = v2;
  [v1 activateWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1C99CB400()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C981E01C();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 392) = v4;
  if (v4)
  {
    v5 = sub_1C99CB9A4;
  }

  else
  {
    v5 = sub_1C99CB500;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1C99CB500()
{
  sub_1C97AA884();
  type metadata accessor for SNFileSharingUtils(v1);
  v2 = swift_task_alloc();
  v0[50] = v2;
  *v2 = v0;
  v2[1] = sub_1C99CB5A0;
  v4 = v0[41];
  v3 = v0[42];
  v5 = v0[40];

  return sub_1C983E4A8(v4, v3, v5);
}

uint64_t sub_1C99CB5A0()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C981E01C();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 408) = v4;
  *(v2 + 416) = v0;

  if (v0)
  {
    v5 = sub_1C99CBA30;
  }

  else
  {
    v5 = sub_1C99CB6A4;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1C99CB6A4()
{
  v1 = v0;
  v2 = v0 + 5;
  receiver = v1[24].receiver;
  super_class = v1[23].super_class;
  v4 = v1[22].super_class;
  v5 = v1[21].super_class;
  v6 = sub_1C99CC194(v1[25].super_class);
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  v9 = type metadata accessor for SNFileListingResult(v7);
  v10 = objc_allocWithZone(v9);
  *&v10[OBJC_IVAR___SNFileListingResult_fileItems] = v8;
  v1[19].receiver = v10;
  v1[19].super_class = v9;
  v11 = objc_msgSendSuper2(v1 + 19, sel_init);
  v1[26].super_class = v11;
  v1[18].super_class = v9;
  v1[17].receiver = v11;
  v12 = v11;
  v5(v1 + 17);
  sub_1C97A592C(&v1[17].receiver);
  v4(0);
  v1[5].receiver = v1;
  v1[5].super_class = sub_1C99CB844;
  v13 = swift_continuation_init();
  v1[16].super_class = receiver;
  v1[13].receiver = MEMORY[0x1E69E9820];
  v1[13].super_class = 1107296256;
  v1[14].receiver = sub_1C9A1E374;
  v1[14].super_class = &unk_1F4948E00;
  v1[15].receiver = v13;
  [(objc_class *)super_class activateWithCompletion:&v1[13]];

  return MEMORY[0x1EEE6DEC8](v2);
}

uint64_t sub_1C99CB844()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C981E01C();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 112);
  *(v1 + 432) = v4;
  if (v4)
  {
    v5 = sub_1C99CBAB4;
  }

  else
  {
    v5 = sub_1C99CB944;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1C99CB944()
{
  sub_1C97AA884();
  v1 = *(v0 + 408);

  sub_1C97DA91C();

  return v2();
}

uint64_t sub_1C99CB9A4()
{
  sub_1C97AA95C();
  swift_willThrow();
  v1 = *(v0 + 392);
  v2 = *(v0 + 360);
  v3 = v1;
  v2(v1);

  sub_1C97DA91C();

  return v4();
}

uint64_t sub_1C99CBA30()
{
  sub_1C97AA95C();
  v1 = *(v0 + 416);
  v2 = *(v0 + 360);
  v3 = v1;
  v2(v1);

  sub_1C97DA91C();

  return v4();
}

uint64_t sub_1C99CBAB4()
{
  sub_1C97AA95C();
  v1 = v0[53];
  v2 = v0[51];
  swift_willThrow();

  v3 = v0[54];
  v4 = v0[45];
  v5 = v3;
  v4(v3);

  sub_1C97DA91C();

  return v6();
}

id sub_1C99CBB4C(uint64_t a1, void *a2, void *a3)
{
  sub_1C9A92A28();
  [a2 invalidate];

  return [a3 invalidate];
}

id SNListFilesRequest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SNListFilesRequest.__deallocating_deinit(double a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SNListFilesRequest(a1);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1C99CBD58(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_1C99CBD98(uint64_t result, int a2, int a3)
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

unint64_t sub_1C99CBE00()
{
  result = qword_1EC3CFE20;
  if (!qword_1EC3CFE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFE20);
  }

  return result;
}

unint64_t sub_1C99CBE54()
{
  result = qword_1EC3CFE30;
  if (!qword_1EC3CFE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFE30);
  }

  return result;
}

void sub_1C99CBF10(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1C9A92478();

  [a3 setDestinationID_];
}

uint64_t sub_1C99CBF74(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1C99CC074;

  return sub_1C99CB2AC(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1C99CC074()
{
  sub_1C97AA884();
  sub_1C97AA890();

  sub_1C97DA91C();

  return v0();
}

uint64_t sub_1C99CC194(void *a1)
{
  v1 = [a1 fileItems];
  if (!v1)
  {
    return 0;
  }

  v3 = v1;
  sub_1C99CC1F4(v2);
  v4 = sub_1C9A92798();

  return v4;
}

unint64_t sub_1C99CC1F4(double a1)
{
  result = qword_1EC3CFE50;
  if (!qword_1EC3CFE50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC3CFE50);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ListFilesRequest.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C99CC318()
{
  result = qword_1EC3CFE58;
  if (!qword_1EC3CFE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFE58);
  }

  return result;
}

unint64_t sub_1C99CC370()
{
  result = qword_1EC3CFE60;
  if (!qword_1EC3CFE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFE60);
  }

  return result;
}

unint64_t sub_1C99CC3C8()
{
  result = qword_1EC3CFE68[0];
  if (!qword_1EC3CFE68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC3CFE68);
  }

  return result;
}

uint64_t sub_1C99CC424()
{
  v3 = *(v1 - 208);
  *(v1 - 304) = *(v1 - 224);
  *(v1 - 288) = v3;
  v4 = *(v0 + 48);
  *(v1 - 272) = *(v1 - 192);
  *(v1 - 256) = v4;

  return sub_1C9877BF0(v1 - 304);
}

__n128 sub_1C99CC460()
{
  v2 = *(v1 - 144);
  *(v0 + 96) = *(v1 - 160);
  *(v0 + 112) = v2;
  result = *(v1 - 128);
  v4 = *(v1 - 112);
  *(v0 + 128) = result;
  *(v0 + 144) = v4;
  return result;
}

void *sub_1C99CC544(void *__src, uint64_t a2, void *__dst, uint64_t a4)
{
  if (__src)
  {
    v4 = a2 - __src;
  }

  else
  {
    v4 = 0;
  }

  if (!__dst)
  {
    if (!v4)
    {
      return __src;
    }

    goto LABEL_11;
  }

  if (v4 != a4 - __dst)
  {
LABEL_11:
    sub_1C9886D84();
    swift_allocError();
    *v5 = 0;
    return swift_willThrow();
  }

  if (__src)
  {

    return memmove(__dst, __src, a2 - __src);
  }

  return __src;
}

void sub_1C99CC5E4(uint64_t a1, void *a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 16);
  if (v5)
  {
    v9[0] = 0;
    v6 = v5;
    if ([v6 writeFromBuffer:a2 error:v9])
    {
      v7 = v9[0];
    }

    else
    {
      v8 = v9[0];
      sub_1C9A913C8();

      swift_willThrow();
    }
  }

  else
  {
    sub_1C97A2CEC(&unk_1EC3D2870, &unk_1C9AC4F10);
    sub_1C9825A44();
    swift_allocError();
    swift_willThrow();
  }

  objc_autoreleasePoolPop(v4);
}

uint64_t sub_1C99CC7B4(uint64_t a1)
{
  result = sub_1C9A93258();
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

uint64_t sub_1C99CC848(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = MEMORY[0x1CCA90390](a1, a2, AssociatedTypeWitness);
  return a3(v11);
}

uint64_t sub_1C99CC8D0()
{
  sub_1C9A93CC8();
  sub_1C979AFAC();
  return sub_1C9A93D18();
}

uint64_t sub_1C99CC90C()
{
  v1 = *(*v0 + 88);
  v2 = sub_1C9A93258();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1C99CC990()
{
  sub_1C99CC90C();

  return swift_deallocClassInstance();
}

uint64_t sub_1C99CCA40()
{
  sub_1C99CCA0C();

  return swift_deallocClassInstance();
}

uint64_t sub_1C99CCA8C(uint64_t a1, uint64_t a2)
{
  v4 = swift_slowAlloc();
  *(v2 + 16) = v4;
  *(v2 + 24) = v4 + a1;
  return v2;
}

uint64_t sub_1C99CCAC8()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    MEMORY[0x1CCA93280](v1, -1, -1);
  }

  return swift_deallocClassInstance();
}

uint64_t sub_1C99CCBB0()
{
  sub_1C99CCB7C();

  return swift_deallocClassInstance();
}

_BYTE *sub_1C99CCBFC(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1C99CCD20(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
    goto LABEL_6;
  }

  if (!result)
  {
    if (!a3)
    {
      v3 = 2;
      goto LABEL_7;
    }

LABEL_6:
    v3 = 1;
LABEL_7:
    sub_1C9886D84();
    swift_allocError();
    *v4 = v3;
    return swift_willThrow();
  }

  if (a2 - result < a3)
  {
    goto LABEL_6;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MemUtils.DomainError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C99CCE84()
{
  result = qword_1EC3D0070;
  if (!qword_1EC3D0070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D0070);
  }

  return result;
}

void sub_1C99CCED8(void *a1)
{
  sub_1C99CD0B0(a1);
  if (v1)
  {
    swift_getErrorValue();
    v5 = sub_1C9A93C38();
    v7 = v6;
    sub_1C9939654();
    swift_allocError();
    *v8 = 0xD000000000000016;
    v8[1] = 0x80000001C9ADD9F0;
    v8[2] = v5;
    v8[3] = v7;
    swift_willThrow();
  }

  else
  {
    sub_1C99CD12C(a1);
    [a1 sampleRate];
    v4 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    sub_1C999C710();
  }
}

_DWORD *sub_1C99CD0B0(void *a1)
{
  result = [a1 streamDescription];
  if (result[2] != 1819304813)
  {
    type metadata accessor for SNError(v2);
    sub_1C98573F8();
    sub_1C99CD1B4(v4, v3 + 1, v5);
    return swift_willThrow();
  }

  return result;
}

id sub_1C99CD12C(void *a1)
{
  if (![a1 channelCount] || (result = objc_msgSend(a1, sel_sampleRate), v2 <= 0.0))
  {
    type metadata accessor for SNError(v2);
    sub_1C98573F8();
    sub_1C99CD1B4(v5, v4 + 35, v6);
    return swift_willThrow();
  }

  return result;
}

id sub_1C99CD1B4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{

  return sub_1C9929478(0xD000000000000017, a1, 3, 0, a2, a3 | 0x8000000000000000);
}

void sub_1C99CD1D8(void *a1, double a2)
{
  v64 = *MEMORY[0x1E69E9840];
  type metadata accessor for SNUtils(a2);
  v3 = sub_1C9A17B4C();
  v4 = sub_1C9A18184();
  v5 = [a1 inputDescriptionsByName];
  sub_1C97BD318(v6, 0, &qword_1EC3C54D0, 0x1E695FE50);
  v7 = sub_1C9A92328();

  v8 = *(v7 + 16);

  if (v8 != 1)
  {
    goto LABEL_13;
  }

  v9 = [a1 inputDescriptionsByName];
  v10 = sub_1C9A92328();

  v11 = sub_1C98BBCAC(v10);

  if (!v11)
  {
    goto LABEL_13;
  }

  if ([v11 type] != 5 || (v12 = objc_msgSend(v11, sel_multiArrayConstraint)) == 0)
  {

LABEL_13:

    type metadata accessor for SNError(v26);
    sub_1C98573F8();
    sub_1C993AD60(v28, v27 + 15, v29);
    swift_willThrow();
    return;
  }

  v14 = v12;
  v62 = 0;
  if ((sub_1C99CE9A0(v3, &v62, v12, v13) & 1) == 0)
  {
    v30 = v62;

    v31 = sub_1C9A913C8();

    swift_willThrow();
    type metadata accessor for SNError(v32);
    v62 = 0;
    v63 = 0xE000000000000000;
    sub_1C9A935B8();

    sub_1C99CEBC4();
    v34 = sub_1C97BD318(v33, 0, &qword_1EC3C54B0, 0x1E696AD98);
    v35 = MEMORY[0x1CCA90460](v3, v34);
    v37 = v36;

    MEMORY[0x1CCA90230](v35, v37);

    MEMORY[0x1CCA90230](0xD000000000000017, 0x80000001C9ADDB00);
    v38 = v63;
    v39 = sub_1C9998E18();
    sub_1C9929478(v39, v40, v41, v42, v43, v38);

    swift_willThrow();

    return;
  }

  v15 = v62;

  v16 = [a1 outputDescriptionsByName];
  v17 = sub_1C9A92328();

  v18 = *(v17 + 16);

  if (v18 != 1)
  {
    goto LABEL_16;
  }

  v19 = [a1 outputDescriptionsByName];
  v20 = sub_1C9A92328();

  v21 = sub_1C98BBCAC(v20);

  if (!v21)
  {
    goto LABEL_16;
  }

  if ([v21 type] != 5 || (v22 = objc_msgSend(v21, sel_multiArrayConstraint)) == 0)
  {

LABEL_16:

    type metadata accessor for SNError(v44);
    sub_1C98573F8();
    sub_1C993AD60(v46, v45 + 21, v47);
    swift_willThrow();

    return;
  }

  v24 = v22;
  v62 = 0;
  if (sub_1C99CE9A0(v4, &v62, v22, v23))
  {
    v25 = v62;
  }

  else
  {
    v48 = v62;
    v49 = sub_1C9A913C8();

    swift_willThrow();
    type metadata accessor for SNError(v50);
    v62 = 0;
    v63 = 0xE000000000000000;
    sub_1C9A935B8();

    sub_1C99CEBC4();
    v52 = sub_1C97BD318(v51, 0, &qword_1EC3C54B0, 0x1E696AD98);
    v53 = MEMORY[0x1CCA90460](v4, v52);
    v55 = v54;

    MEMORY[0x1CCA90230](v53, v55);

    MEMORY[0x1CCA90230](0xD000000000000018, 0x80000001C9ADDB50);
    v56 = v63;
    v57 = sub_1C9998E18();
    sub_1C9929478(v57, v58, v59, v60, v61, v56);

    swift_willThrow();
  }
}

id sub_1C99CD748(void *a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();

  sub_1C99CD1D8(a1, v6);
  if (v2)
  {

    swift_deallocPartialClassInstance();
  }

  else
  {
    v59 = ObjectType;
    v60 = v1;
    v62[0] = 0x40467A0000;
    v62[1] = 0x45EA600042FA0000;
    v62[2] = 0x3C23D70A00000002;
    v63 = 0;
    v64 = xmmword_1C9AA7B00;
    v65 = 0;
    sub_1C97A2CEC(&unk_1EC3C6E20, &qword_1C9A9FF60);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1C9AC5740;
    *(v7 + 32) = sub_1C9A92B88();
    *(v7 + 40) = sub_1C9A92B88();
    *(v7 + 48) = sub_1C9A92B88();
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1C9AC5750;
    *(v8 + 32) = sub_1C9A92B88();
    *(v8 + 40) = sub_1C9A92B88();
    *(v8 + 48) = sub_1C9A92B88();
    *(v8 + 56) = sub_1C9A92B88();
    sub_1C97BD318(v9, 0, &qword_1EC3D0080, 0x1E695FEE0);
    v66 = a1;
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1C9AC5740;
    v11 = objc_opt_self();
    *(v10 + 32) = [v11 valueWithRange_];
    *(v10 + 40) = sub_1C99CEBE8();
    *(v10 + 48) = [v11 valueWithRange_];
    v12 = sub_1C99CDDCC(v10);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1C9AC5750;
    *(v13 + 32) = sub_1C99CEBE8();
    *(v13 + 40) = sub_1C99CEBE8();
    *(v13 + 48) = [v11 valueWithRange_];
    *(v13 + 56) = [v11 valueWithRange_];
    v14 = sub_1C99CDDCC(v13);
    sub_1C999AFB0();
    v55 = sub_1C985B960(v15);
    v57 = v17;

    sub_1C999AF90();
    v19 = sub_1C985B960(v18);
    v50 = v20;
    v51 = v19;

    sub_1C97BD318(v21, 0, &qword_1EC3D0088, 0x1E695FED8);
    v54 = v12;
    v23 = sub_1C99CDE54(v7, 65568, v54, v22);
    v53 = v14;
    v25 = sub_1C99CDE54(v8, 65568, v53, v24);
    sub_1C97BD318(v26, 0, &qword_1EC3C54D0, 0x1E695FE50);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_1C9A9DF30;
    *(v27 + 32) = v23;
    v52 = v23;
    v28 = sub_1C9A1826C(v55, v57, 5, 0, v27);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1C9A9DF30;
    *(v29 + 32) = v25;
    v58 = v25;
    v30 = sub_1C9A1826C(v51, v50, 5, 0, v29);
    sub_1C97A2CEC(&qword_1EC3D0090, &unk_1C9AC5790);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C9A9EDD0;
    v32 = [v28 name];
    v33 = sub_1C9A924A8();
    v35 = v34;

    *(inited + 32) = v33;
    *(inited + 40) = v35;
    *(inited + 48) = v28;
    v56 = v28;
    v36 = sub_1C9A92348();
    v37 = swift_initStackObject();
    *(v37 + 16) = xmmword_1C9A9EDD0;
    v38 = [v30 name];
    v39 = sub_1C9A924A8();
    v41 = v40;

    *(v37 + 32) = v39;
    *(v37 + 40) = v41;
    *(v37 + 48) = v30;
    v42 = v30;
    v43 = sub_1C9A92348();
    v44 = objc_allocWithZone(MEMORY[0x1E695FEC0]);
    v46 = sub_1C999BB18(v36, v43, 0, 0xE000000000000000, 0, 0xE000000000000000, 0, v45);
    v48 = objc_allocWithZone(type metadata accessor for _SNLogMelSpectrogramCustomModel(v47));
    v49 = sub_1C99E3C88(v46, v62);

    *&v60[OBJC_IVAR____SNVGGishFrontEndProcessingCustomModel_underlyingModel] = v49;
    v61.receiver = v60;
    v61.super_class = v59;
    v3 = objc_msgSendSuper2(&v61, sel_init);
  }

  return v3;
}

id sub_1C99CDDCC(uint64_t a1)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_1C97BD318(v2, 0, &qword_1EC3C5690, 0x1E696B098);
  v3 = sub_1C9A92768();

  v4 = [v1 initWithSizeRangeForDimension_];

  return v4;
}

id sub_1C99CDE54(uint64_t a1, uint64_t a2, void *a3, double a4)
{
  sub_1C97BD318(a4, 0, &qword_1EC3C54B0, 0x1E696AD98);
  v6 = sub_1C9A92768();

  v7 = [swift_getObjCClassFromMetadata() constraintWithShape:v6 dataType:a2 shapeConstraint:a3];

  return v7;
}

id sub_1C99CDFA8(void *a1)
{
  sub_1C97A2CEC(&unk_1EC3C6E20, &qword_1C9A9FF60);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C9AC5740;
  *(v3 + 32) = sub_1C9A92B88();
  *(v3 + 40) = sub_1C9A92B88();
  *(v3 + 48) = sub_1C9A92B88();
  type metadata accessor for SNUtils(v4);
  v5 = sub_1C9A17B4C();
  v6 = sub_1C9A18184();
  v7 = [a1 featureNames];
  v8 = sub_1C9A92B28();

  v9 = sub_1C985B960(v8);
  if (v1)
  {
  }

  else
  {
    v11 = v10;
    v64 = v6;
    v12 = v9;

    v8 = sub_1C9A92478();
    v13 = [a1 featureValueForName_];

    if (v13 && (v8 = [v13 multiArrayValue], v13, v8))
    {
      v14 = [v8 shape];
      sub_1C97BD318(v15, 0, &qword_1EC3C54B0, 0x1E696AD98);
      v16 = sub_1C9A92798();

      LOBYTE(v14) = sub_1C980937C(v16, v5, v17);

      if (v14)
      {
        v18 = swift_allocObject();
        v18[2] = v8;
        v19 = v8;
        v60 = [v19 dataPointer];
        v59 = [v19 dataType];
        v20 = sub_1C9A92768();
        v21 = sub_1C998D6A4(v20);

        objc_allocWithZone(MEMORY[0x1E695FED0]);

        v26 = sub_1C9990C04(v60, v3, v59, v22, v21, sub_1C99CEBC0, v18);
        v61 = v19;
        v27 = sub_1C998D85C(v26);
        sub_1C97A2CEC(&qword_1EC3C69E8, &unk_1C9A9D4A0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1C9A9EDD0;
        *(inited + 32) = v12;
        *(inited + 40) = v11;
        v29 = v27;
        v30 = objc_opt_self();
        v31 = [v30 featureValueWithMultiArray_];
        v33 = sub_1C97BD318(v32, 0, &qword_1EC3C54F8, 0x1E695FE60);
        *(inited + 72) = v33;
        *(inited + 48) = v31;
        v34 = sub_1C9A92348();
        objc_allocWithZone(MEMORY[0x1E695FE48]);
        v58 = v33;
        v35 = sub_1C98B6EC8(v34);
        sub_1C99E27F4(v35);
        v37 = v36;

        v38 = [v37 featureNames];
        v39 = sub_1C9A92B28();

        v40 = sub_1C985B960(v39);
        v42 = v41;
        v62 = v35;
        v63 = v29;
        v43 = v40;

        v8 = sub_1C9A92478();
        v44 = [v37 featureValueForName_];

        if (v44 && (v8 = [v44 multiArrayValue], v44, v8))
        {
          v57 = v42;
          v45 = swift_allocObject();
          v45[2] = v8;
          v46 = v8;
          v56 = [v46 dataPointer];
          v55 = [v46 dataType];
          v47 = sub_1C9A92768();
          v48 = sub_1C998D6A4(v47);

          objc_allocWithZone(MEMORY[0x1E695FED0]);

          v51 = sub_1C9990C04(v56, v64, v55, v49, v48, sub_1C99CEA70, v45);
          v52 = swift_initStackObject();
          *(v52 + 16) = xmmword_1C9A9EDD0;
          *(v52 + 32) = v43;
          *(v52 + 40) = v57;
          v53 = [v30 featureValueWithMultiArray_];
          *(v52 + 72) = v58;
          *(v52 + 48) = v53;
          v54 = sub_1C9A92348();
          objc_allocWithZone(MEMORY[0x1E695FE48]);
          v8 = sub_1C98B6EC8(v54);

          swift_unknownObjectRelease();
        }

        else
        {

          sub_1C99CEA1C();
          swift_allocError();
          *v50 = 1;
          swift_willThrow();

          swift_unknownObjectRelease();
        }
      }

      else
      {

        sub_1C99CEA1C();
        swift_allocError();
        *v24 = 2;
        swift_willThrow();
      }
    }

    else
    {

      sub_1C99CEA1C();
      swift_allocError();
      *v23 = 0;
      swift_willThrow();
    }
  }

  return v8;
}

id sub_1C99CE9A0(uint64_t a1, uint64_t a2, void *a3, double a4)
{
  sub_1C97BD318(a4, 0, &qword_1EC3C54B0, 0x1E696AD98);
  v6 = sub_1C9A92768();
  v7 = [a3 isAllowedShape:v6 error:a2];

  return v7;
}

unint64_t sub_1C99CEA1C()
{
  result = qword_1EC3D0098;
  if (!qword_1EC3D0098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D0098);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for _SNVGGishFrontEndProcessingCustomModel.DomainError(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C99CEB6C()
{
  result = qword_1EC3D00A0;
  if (!qword_1EC3D00A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D00A0);
  }

  return result;
}

id sub_1C99CEBE8()
{

  return [v1 (v0 + 4045)];
}

uint64_t sub_1C99CEC08(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1C9A93B18() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_1C9A93B18() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[4] == a2[4] && a1[5] == a2[5];
  if (!v6 && (sub_1C9A93B18() & 1) == 0)
  {
    return 0;
  }

  if (a1[6] == a2[6] && a1[7] == a2[7])
  {
    return 1;
  }

  return sub_1C9A93B18();
}

uint64_t sub_1C99CECD0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6369766544736469 && a2 == 0xEB00000000444965;
    if (v6 || (sub_1C9A93B18() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C65646F6DLL && a2 == 0xE500000000000000;
      if (v7 || (sub_1C9A93B18() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 1701667182 && a2 == 0xE400000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_1C9A93B18();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_1C99CEE30(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 0x6369766544736469;
      break;
    case 2:
      result = 0x6C65646F6DLL;
      break;
    case 3:
      result = 1701667182;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C99CEEB4(void *a1)
{
  v3 = v1;
  v5 = sub_1C97A2CEC(&qword_1EC3D00C8, &qword_1C9AC5998);
  sub_1C97AE9C8();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v20 - v9;
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C99CF82C();
  sub_1C9A93DD8();
  v11 = *v3;
  v12 = v3[1];
  v24 = 0;
  sub_1C99CFA64(v11, v12, &v24);
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    v23 = 1;
    sub_1C99CFA64(v13, v14, &v23);
    v15 = v3[4];
    v16 = v3[5];
    v22 = 2;
    sub_1C99CFA64(v15, v16, &v22);
    v17 = v3[6];
    v18 = v3[7];
    v21 = 3;
    sub_1C99CFA64(v17, v18, &v21);
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_1C99CF02C(uint64_t a1)
{
  sub_1C9A92528();
  sub_1C9A92528();
  sub_1C9A92528();

  return sub_1C9A92528();
}

uint64_t sub_1C99CF084()
{
  sub_1C9A93CC8();
  sub_1C9A92528();
  sub_1C9A92528();
  sub_1C9A92528();
  sub_1C9A92528();
  return sub_1C9A93D18();
}

uint64_t sub_1C99CF0EC@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1C97A2CEC(&qword_1EC3D00B8, &qword_1C9AC5990);
  sub_1C97AE9C8();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - v9;
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C99CF82C();
  sub_1C9A93DB8();
  if (v2)
  {
    return sub_1C97A592C(a1);
  }

  LOBYTE(v34[0]) = 0;
  sub_1C998D454();
  v11 = sub_1C9A938A8();
  v29 = v12;
  LOBYTE(v34[0]) = 1;
  sub_1C998D454();
  v13 = sub_1C9A938A8();
  v28 = v14;
  v26 = v13;
  LOBYTE(v34[0]) = 2;
  sub_1C998D454();
  v25 = sub_1C9A938A8();
  v27 = v15;
  v35 = 3;
  v16 = sub_1C9A938A8();
  v18 = v17;
  (*(v7 + 8))(v10, v5);
  v19 = v29;
  *&v30 = v11;
  *(&v30 + 1) = v29;
  v21 = v26;
  v20 = v27;
  *&v31 = v26;
  *(&v31 + 1) = v28;
  *&v32 = v25;
  *(&v32 + 1) = v27;
  *&v33 = v16;
  *(&v33 + 1) = v18;
  sub_1C9840AC4(&v30, v34);
  sub_1C97A592C(a1);
  v34[0] = v11;
  v34[1] = v19;
  v34[2] = v21;
  v34[3] = v28;
  v34[4] = v25;
  v34[5] = v20;
  v34[6] = v16;
  v34[7] = v18;
  result = sub_1C9877BF0(v34);
  v23 = v31;
  *a2 = v30;
  a2[1] = v23;
  v24 = v33;
  a2[2] = v32;
  a2[3] = v24;
  return result;
}

uint64_t sub_1C99CF3A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C99CECD0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C99CF3CC(uint64_t a1)
{
  v2 = sub_1C99CF82C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99CF408(uint64_t a1)
{
  v2 = sub_1C99CF82C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1C99CF444@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1C99CF0EC(a1, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a2 = v7[0];
    a2[1] = v5;
    result = *&v8;
    v6 = v9;
    a2[2] = v8;
    a2[3] = v6;
  }

  return result;
}

uint64_t sub_1C99CF4A8()
{
  sub_1C9A93CC8();
  sub_1C99CF02C(v1);
  return sub_1C9A93D18();
}

id sub_1C99CF5F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  a3();
  v3 = sub_1C9A92478();

  return v3;
}

id SNFileServerInfo.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SNFileServerInfo.__deallocating_deinit(uint64_t a1, double a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for SNFileServerInfo(a2);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

unint64_t sub_1C99CF7D8()
{
  result = qword_1EC3D00B0;
  if (!qword_1EC3D00B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D00B0);
  }

  return result;
}

unint64_t sub_1C99CF82C()
{
  result = qword_1EC3D00C0;
  if (!qword_1EC3D00C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D00C0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FileServerInfo.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C99CF960()
{
  result = qword_1EC3D00D0;
  if (!qword_1EC3D00D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D00D0);
  }

  return result;
}

unint64_t sub_1C99CF9B8()
{
  result = qword_1EC3D00D8;
  if (!qword_1EC3D00D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D00D8);
  }

  return result;
}

unint64_t sub_1C99CFA10()
{
  result = qword_1EC3D00E0;
  if (!qword_1EC3D00E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D00E0);
  }

  return result;
}

uint64_t sub_1C99CFA64(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1C9A939C8();
}

uint64_t sub_1C99CFAA4()
{
  v3[2] = sub_1C99CFFA4;
  v4 = v0;

  v1 = sub_1C97E3000(sub_1C983DFC0, v3);

  return v1;
}

uint64_t sub_1C99CFB50()
{
  v1 = sub_1C97A2CEC(&qword_1EC3D00F0, &unk_1C9AC5C10);
  sub_1C97AE9C8();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v11 - v5;
  v7 = *(v0 + 16);
  v8 = swift_allocObject();
  v8[2] = sub_1C97AE650;
  v8[3] = v0;
  v8[4] = v7;

  sub_1C97A2CEC(&qword_1EC3C7108, &qword_1C9A9F618);
  sub_1C97AE67C(&qword_1EC3C7110, &qword_1EC3C7108, &qword_1C9A9F618, MEMORY[0x1E695BED8]);
  sub_1C9A91EF8();
  sub_1C97AE67C(&qword_1EC3D00F8, &qword_1EC3D00F0, &unk_1C9AC5C10, MEMORY[0x1E695C058]);
  v9 = sub_1C9A91F28();
  (*(v3 + 8))(v6, v1);
  return v9;
}

uint64_t sub_1C99CFD1C(void *a1)
{
  v2 = sub_1C97A2CEC(&qword_1EC3D0100, &qword_1C9AC5C20);
  sub_1C97AE9C8();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C99D0004();
  sub_1C9A93DD8();
  return (*(v4 + 8))(v7, v2);
}

uint64_t sub_1C99CFE24(uint64_t a1)
{
  v2 = sub_1C99D0004();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99CFE60(uint64_t a1)
{
  v2 = sub_1C99D0004();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1C99CFEFC()
{
  result = qword_1EC3D00E8;
  if (!qword_1EC3D00E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D00E8);
  }

  return result;
}

uint64_t sub_1C99CFF74@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C99CFF50();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1C99CFFCC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C98BFCDC();
  *a1 = result;
  return result;
}

unint64_t sub_1C99D0004()
{
  result = qword_1EC3D0108;
  if (!qword_1EC3D0108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D0108);
  }

  return result;
}

unint64_t sub_1C99D006C()
{
  result = qword_1EC3D0110;
  if (!qword_1EC3D0110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D0110);
  }

  return result;
}

unint64_t sub_1C99D00C4()
{
  result = qword_1EC3D0118;
  if (!qword_1EC3D0118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D0118);
  }

  return result;
}

uint64_t sub_1C99D0118()
{

  return sub_1C9797790();
}

uint64_t sub_1C99D013C@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v18 = a6;
  v19 = a4;
  v10 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = (*(v13 + 8))(v14, v13);
  a2(v15);
  if (!v6)
  {
    (*(v10 + 32))(v18, v12, v19);
  }

  return (*(a5 + 16))(a3, a5);
}

uint64_t sub_1C99D02E0()
{
  MEMORY[0x1CCA93280](*(v0 + 16), -1, -1);

  return swift_deallocClassInstance();
}

uint64_t sub_1C99D0430(uint64_t a1, uint64_t a2)
{
  sub_1C9A92008();
  v2 = sub_1C9A91C78();
  swift_getWitnessTable();
  v3 = sub_1C991CE6C(v2);

  return v3;
}

uint64_t sub_1C99D04C0@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  return result;
}

uint64_t sub_1C99D04EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x657669746361 && a2 == 0xE600000000000000;
  if (v4 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6576697463616E69 && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9A93B18();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C99D05B0(char a1)
{
  if (a1)
  {
    return 0x6576697463616E69;
  }

  else
  {
    return 0x657669746361;
  }
}

uint64_t sub_1C99D05E4(void *a1, int a2)
{
  v24 = a2;
  sub_1C97A2CEC(&qword_1EC3D0150, &qword_1C9AC5E80);
  sub_1C97AE9C8();
  v22 = v4;
  v23 = v3;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v21 - v6;
  v21 = sub_1C97A2CEC(&qword_1EC3D0158, &qword_1C9AC5E88);
  sub_1C97AE9C8();
  v9 = v8;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - v11;
  v13 = sub_1C97A2CEC(&qword_1EC3D0160, &qword_1C9AC5E90);
  sub_1C97AE9C8();
  v15 = v14;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v21 - v17;
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C99D0F58();
  sub_1C9A93DD8();
  v19 = (v15 + 8);
  if (v24)
  {
    v26 = 1;
    sub_1C99D0FAC();
    sub_1C9A93988();
    (*(v22 + 8))(v7, v23);
  }

  else
  {
    v25 = 0;
    sub_1C99D1000();
    sub_1C9A93988();
    (*(v9 + 8))(v12, v21);
  }

  return (*v19)(v18, v13);
}

uint64_t sub_1C99D0870(unint64_t a1)
{
  v40 = sub_1C97A2CEC(&qword_1EC3D0120, &qword_1C9AC5E60);
  sub_1C97AE9C8();
  v38 = v2;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v34 - v4;
  v6 = sub_1C97A2CEC(&qword_1EC3D0128, &qword_1C9AC5E68);
  sub_1C97AE9C8();
  v37 = v7;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v34 - v9;
  v11 = sub_1C97A2CEC(&qword_1EC3D0130, &unk_1C9AC5E70);
  sub_1C97AE9C8();
  v39 = v12;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v34 - v14;
  sub_1C97A5A8C(a1, *(a1 + 24));
  sub_1C99D0F58();
  v16 = v41;
  sub_1C9A93DB8();
  if (v16)
  {
    goto LABEL_8;
  }

  v35 = v6;
  v36 = v10;
  v41 = a1;
  v17 = v40;
  sub_1C9A93958();
  result = sub_1C98EE524();
  if (v20 == v21 >> 1)
  {
LABEL_7:
    v26 = sub_1C9A93648();
    swift_allocError();
    v28 = v27;
    sub_1C97A2CEC(&qword_1EC3C6F20, &qword_1C9AA0D80);
    *v28 = &type metadata for CombineUtils.Activation;
    sub_1C9A93868();
    sub_1C9A93638();
    (*(*(v26 - 8) + 104))(v28, *MEMORY[0x1E69E6AF8], v26);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v39 + 8))(v15, v11);
    a1 = v41;
LABEL_8:
    sub_1C97A592C(a1);
    return a1;
  }

  v34 = 0;
  if (v20 < (v21 >> 1))
  {
    a1 = *(v19 + v20);
    sub_1C98EE520();
    v23 = v22;
    v25 = v24;
    swift_unknownObjectRelease();
    if (v23 == v25 >> 1)
    {
      if (a1)
      {
        LODWORD(v37) = a1;
        v43 = 1;
        sub_1C99D0FAC();
        sub_1C988A520(&type metadata for CombineUtils.Activation.InactiveCodingKeys, &v43);
        swift_unknownObjectRelease();
        (*(v38 + 8))(v5, v17);
        v30 = sub_1C988A4F0();
        v31(v30);
        a1 = v37;
      }

      else
      {
        v42 = 0;
        sub_1C99D1000();
        v29 = v36;
        sub_1C988A520(&type metadata for CombineUtils.Activation.ActiveCodingKeys, &v42);
        swift_unknownObjectRelease();
        (*(v37 + 8))(v29, v35);
        v32 = sub_1C988A4F0();
        v33(v32);
      }

      sub_1C97A592C(v41);
      return a1;
    }

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C99D0CF4(uint64_t a1)
{
  v2 = sub_1C99D1000();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99D0D30(uint64_t a1)
{
  v2 = sub_1C99D1000();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99D0D8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C99D04EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C99D0DB4(uint64_t a1)
{
  v2 = sub_1C99D0F58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99D0DF0(uint64_t a1)
{
  v2 = sub_1C99D0F58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99D0E2C(uint64_t a1)
{
  v2 = sub_1C99D0FAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99D0E68(uint64_t a1)
{
  v2 = sub_1C99D0FAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99D0EBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  v6 = *v4;
  sub_1C9A93CC8();
  a4(v8, v6);
  return sub_1C9A93D18();
}

uint64_t sub_1C99D0F08@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C99D0870(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

unint64_t sub_1C99D0F58()
{
  result = qword_1EC3D0138;
  if (!qword_1EC3D0138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D0138);
  }

  return result;
}

unint64_t sub_1C99D0FAC()
{
  result = qword_1EC3D0140;
  if (!qword_1EC3D0140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D0140);
  }

  return result;
}

unint64_t sub_1C99D1000()
{
  result = qword_1EC3D0148;
  if (!qword_1EC3D0148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D0148);
  }

  return result;
}

_BYTE *sub_1C99D1054(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C99D1154()
{
  result = qword_1EC3D0168;
  if (!qword_1EC3D0168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D0168);
  }

  return result;
}

unint64_t sub_1C99D11AC()
{
  result = qword_1EC3D0170;
  if (!qword_1EC3D0170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D0170);
  }

  return result;
}

unint64_t sub_1C99D1204()
{
  result = qword_1EC3D0178;
  if (!qword_1EC3D0178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D0178);
  }

  return result;
}

unint64_t sub_1C99D125C()
{
  result = qword_1EC3D0180;
  if (!qword_1EC3D0180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D0180);
  }

  return result;
}

unint64_t sub_1C99D12B4()
{
  result = qword_1EC3D0188;
  if (!qword_1EC3D0188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D0188);
  }

  return result;
}

unint64_t sub_1C99D130C()
{
  result = qword_1EC3D0190;
  if (!qword_1EC3D0190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D0190);
  }

  return result;
}

unint64_t sub_1C99D1364()
{
  result = qword_1EC3D0198;
  if (!qword_1EC3D0198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D0198);
  }

  return result;
}

uint64_t sub_1C99D13BC(uint64_t result, double a2)
{
  if ((result - 4) < 0xFFFFFFFFFFFFFFFDLL)
  {
    type metadata accessor for SNError(a2);
    sub_1C9929478(0xD000000000000017, 0x80000001C9AD4AA0, 4, 0, 0xD00000000000001BLL, 0x80000001C9AD8720);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1C99D1444(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 3)
  {
    return *(a1 + 8 * v1 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C99D146C(void *a1)
{
  v1 = a1;
  sub_1C97A2CEC(&unk_1EC3CA040, &qword_1C9A9C750);
  if (swift_dynamicCast())
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C99D14CC(uint64_t a1, unint64_t a2, void (*a3)(uint64_t *__return_ptr), uint64_t a4, void (*a5)(uint64_t *))
{
  a3(&v20);
  if (v5)
  {
    if (qword_1EC3C5520 != -1)
    {
      swift_once();
    }

    v9 = sub_1C9A91B58();
    sub_1C97BFF6C(v9, qword_1EC3D3108);

    v10 = v5;
    v11 = sub_1C9A91B38();
    v12 = sub_1C9A92FA8();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v20 = v14;
      *v13 = 136315394;
      *(v13 + 4) = sub_1C9849140(a1, a2, &v20);
      *(v13 + 12) = 2080;
      v15 = v5;
      sub_1C97A2CEC(&unk_1EC3CA040, &qword_1C9A9C750);
      v16 = sub_1C9A924F8();
      v18 = sub_1C9849140(v16, v17, &v20);

      *(v13 + 14) = v18;
      _os_log_impl(&dword_1C9788000, v11, v12, "%serror logging: %s", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1CCA93280](v14, -1, -1);
      MEMORY[0x1CCA93280](v13, -1, -1);
    }

    return swift_willThrow();
  }

  else
  {
    a5(&v20);
    return v20;
  }
}

uint64_t sub_1C99D16E4(uint64_t a1, unint64_t a2, void (*a3)(uint64_t *__return_ptr), uint64_t a4, void (*a5)(uint64_t *))
{
  a3(&v20);
  if (v5)
  {
    if (qword_1EC3C5520 != -1)
    {
      swift_once();
    }

    v9 = sub_1C9A91B58();
    sub_1C97BFF6C(v9, qword_1EC3D3108);

    v10 = v5;
    v11 = sub_1C9A91B38();
    v12 = sub_1C9A92FA8();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v20 = v14;
      *v13 = 136315394;
      *(v13 + 4) = sub_1C9849140(a1, a2, &v20);
      *(v13 + 12) = 2080;
      v15 = v5;
      sub_1C97A2CEC(&unk_1EC3CA040, &qword_1C9A9C750);
      v16 = sub_1C9A924F8();
      v18 = sub_1C9849140(v16, v17, &v20);

      *(v13 + 14) = v18;
      _os_log_impl(&dword_1C9788000, v11, v12, "%serror logging: %s", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1CCA93280](v14, -1, -1);
      MEMORY[0x1CCA93280](v13, -1, -1);
    }

    return swift_willThrow();
  }

  else
  {
    a5(&v20);
    return v20;
  }
}

id sub_1C99D18F4(void *a1)
{
  if (!a1)
  {
    v4 = *MEMORY[0x1E695D930];
    v5 = 0xED0000726F727265;
    v6 = 0x206E776F6E6B6E75;
LABEL_6:
    v9 = objc_allocWithZone(MEMORY[0x1E695DF30]);
    return sub_1C99D1C64(v4, v6, v5, 0);
  }

  v1 = a1;
  sub_1C97A2CEC(&unk_1EC3CA040, &qword_1C9A9C750);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v7 = *MEMORY[0x1E695D930];
    swift_getErrorValue();
    v4 = v7;
    v6 = sub_1C9A93C38();
    v5 = v8;
    goto LABEL_6;
  }

  v2 = sub_1C9A92478();
  objc_allocWithZone(MEMORY[0x1E695DF30]);

  v3 = sub_1C99D1C64(v2, v11, v12, 0);

  return v3;
}

uint64_t sub_1C99D1ABC()
{
  sub_1C993B85C();

  return v1;
}

uint64_t sub_1C99D1B38(uint64_t a1, unint64_t a2, void (*a3)(uint64_t *__return_ptr), uint64_t a4, void (*a5)(uint64_t *))
{
  v6 = sub_1C99D14CC(a1, a2, a3, a4, a5);
  if (v5)
  {
    v7 = sub_1C99D146C(v5);

    sub_1C985E2B4();
    swift_willThrowTypedImpl();
    swift_allocError();
    *v8 = v7;
  }

  return v6;
}

uint64_t sub_1C99D1BD0(uint64_t a1, unint64_t a2, void (*a3)(uint64_t *__return_ptr), uint64_t a4, void (*a5)(uint64_t *))
{
  v6 = sub_1C99D16E4(a1, a2, a3, a4, a5);
  if (!v5)
  {
    return v6;
  }

  v7 = sub_1C99D146C(v5);

  sub_1C985E2B4();
  swift_willThrowTypedImpl();
  swift_allocError();
  *v8 = v7;
  return v7;
}

id sub_1C99D1C64(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    v7 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v8 = 0;
    goto LABEL_6;
  }

  v7 = sub_1C9A92478();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v8 = sub_1C9A922F8();

LABEL_6:
  v9 = [v4 initWithName:a1 reason:v7 userInfo:v8];

  return v9;
}

void *sub_1C99D1D54(uint64_t a1)
{
  result = sub_1C99F4814(a1, v7);
  if (!v1)
  {
    sub_1C97BD360(v7, v6);
    if (swift_dynamicCast())
    {
      sub_1C97A592C(v7);
      return v5;
    }

    else
    {
      sub_1C97E78C8();
      v3 = sub_1C97A7A80(&type metadata for CollectionUtils.DomainError);
      sub_1C99D40B0(v3, v4);
      return sub_1C97A592C(v7);
    }
  }

  return result;
}

void *sub_1C99D1DF0(uint64_t a1)
{
  result = sub_1C99F4814(a1, v7);
  if (!v1)
  {
    sub_1C97BD360(v7, &v6);
    sub_1C9841D44(v3);
    if (swift_dynamicCast())
    {
      sub_1C97A592C(v7);
      return v7[5];
    }

    else
    {
      sub_1C97E78C8();
      v4 = sub_1C97A7A80(&type metadata for CollectionUtils.DomainError);
      sub_1C99D40B0(v4, v5);
      return sub_1C97A592C(v7);
    }
  }

  return result;
}

void *sub_1C99D1E90(uint64_t a1, uint64_t a2)
{
  result = sub_1C99F4888(a1, a2, v7);
  if (!v2)
  {
    sub_1C97BD360(v7, v6);
    if (swift_dynamicCast())
    {
      sub_1C97A592C(v7);
      return v5;
    }

    else
    {
      sub_1C97E78C8();
      swift_allocError();
      *v4 = 7;
      swift_willThrow();
      return sub_1C97A592C(v7);
    }
  }

  return result;
}

void *sub_1C99D1F44(uint64_t a1, uint64_t a2)
{
  result = sub_1C99F4888(a1, a2, v6);
  if (!v2)
  {
    sub_1C97BD360(v6, v5);
    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_1C97E78C8();
      swift_allocError();
      *v4 = 7;
      swift_willThrow();
    }

    return sub_1C97A592C(v6);
  }

  return result;
}

void *sub_1C99D1FF8(uint64_t a1, uint64_t a2)
{
  result = sub_1C99F4888(a1, a2, v6);
  if (!v2)
  {
    sub_1C97BD360(v6, &v5);
    sub_1C97A2CEC(&qword_1EC3D01B8, &qword_1C9AC62B8);
    if (swift_dynamicCast())
    {
      sub_1C97A592C(v6);
      return v6[5];
    }

    else
    {
      sub_1C97E78C8();
      swift_allocError();
      *v4 = 7;
      swift_willThrow();
      return sub_1C97A592C(v6);
    }
  }

  return result;
}

uint64_t sub_1C99D2278()
{
  v1 = *(v0 + OBJC_IVAR___SNDetectSoundActionsRequest_impl + 40);
  v2 = *(v1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v14 = MEMORY[0x1E69E7CC0];

    sub_1C9A93698();
    v5 = type metadata accessor for SNSoundActionCommand(v4);
    v6 = (v1 + 56);
    do
    {
      v8 = *(v6 - 3);
      v7 = *(v6 - 2);
      v9 = *(v6 - 1);
      v10 = *v6;
      v6 += 4;
      v11 = objc_allocWithZone(v5);
      v12 = &v11[OBJC_IVAR___SNSoundActionCommand_impl];
      *v12 = v8;
      *(v12 + 1) = v7;
      *(v12 + 2) = v9;
      *(v12 + 3) = v10;
      v13.receiver = v11;
      v13.super_class = v5;

      objc_msgSendSuper2(&v13, sel_init);
      sub_1C9A93678();
      sub_1C9A936A8();
      sub_1C9A936B8();
      sub_1C9A93688();
      --v2;
    }

    while (v2);

    return v14;
  }

  return result;
}

void sub_1C99D2418(unint64_t a1)
{
  v2 = v1;
  v3 = a1;
  if (a1 >> 62)
  {
    v4 = sub_1C9A934C8();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_13:

    v6 = MEMORY[0x1E69E7CC0];
    goto LABEL_14;
  }

  v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_13;
  }

LABEL_3:
  v19 = MEMORY[0x1E69E7CC0];
  sub_1C97B830C(0, v4 & ~(v4 >> 63), 0);
  if (v4 < 0)
  {
    __break(1u);
    return;
  }

  v5 = 0;
  v6 = v19;
  v17 = v1;
  v18 = v3 & 0xC000000000000001;
  v7 = v3;
  do
  {
    if (v18)
    {
      v8 = MEMORY[0x1CCA912B0](v5, v3);
    }

    else
    {
      v8 = *(v3 + 8 * v5 + 32);
    }

    v9 = v8;
    v10 = *&v8[OBJC_IVAR___SNSoundActionCommand_impl];
    v11 = *&v8[OBJC_IVAR___SNSoundActionCommand_impl + 8];
    v12 = *&v8[OBJC_IVAR___SNSoundActionCommand_impl + 16];
    v13 = *&v8[OBJC_IVAR___SNSoundActionCommand_impl + 24];

    v15 = *(v19 + 16);
    v14 = *(v19 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_1C97B830C(v14 > 1, v15 + 1, 1);
    }

    ++v5;
    *(v19 + 16) = v15 + 1;
    v16 = (v19 + 32 * v15);
    v16[4] = v10;
    v16[5] = v11;
    v16[6] = v12;
    v16[7] = v13;
    v3 = v7;
  }

  while (v4 != v5);

  v2 = v17;
LABEL_14:
  *(v2 + OBJC_IVAR___SNDetectSoundActionsRequest_impl + 40) = v6;
}

_UNKNOWN **sub_1C99D25C4(uint64_t a1, double a2)
{
  type metadata accessor for SNSoundActionsDetector(a2);
  v4 = swift_allocObject();
  sub_1C99D2E34(v2);
  if (v3)
  {
    return &off_1F4949830;
  }

  else
  {
    return v4;
  }
}

void sub_1C99D2624(void *a1, uint64_t a2)
{
  v4 = v2;
  ObjectType = swift_getObjectType();
  v8 = sub_1C99D1E90(a2, 0xD000000000000013);
  if (v3)
  {

    goto LABEL_4;
  }

  v9 = v8;
  sub_1C99D1F44(a2, 0x6D61536F69647541);
  v11 = v10;
  v12 = sub_1C99D1E90(a2, 0xD000000000000015);
  v13 = sub_1C99D1FF8(a2, 0x73646E616D6D6F43);

  v14 = v13[2];
  v15 = MEMORY[0x1E69E7CC0];
  if (v14)
  {
    v46 = v12;
    v47 = v9;
    v50 = ObjectType;
    v58 = MEMORY[0x1E69E7CC0];
    v48 = v14;
    sub_1C9A93698();
    v17 = 0;
    while (2)
    {
      if (v17 >= v13[2])
      {
        __break(1u);
        goto LABEL_35;
      }

      v18 = objc_allocWithZone(type metadata accessor for SNSoundActionCommand(v16));
      swift_bridgeObjectRetain_n();
      v19 = sub_1C99999C0();
      v20 = sub_1C99D3EA8([a1 modelDescription]);
      if (v20)
      {
        v22 = sub_1C99D2B24(v20);

        if (v22)
        {
          v53 = v17 + 1;
          v55 = v19;
          v23 = &v19[OBJC_IVAR___SNSoundActionCommand_impl];
          v24 = (v22 + 40);
          v25 = *(v22 + 16) + 1;
          do
          {
            if (!--v25)
            {

              v19 = v55;
              goto LABEL_20;
            }

            if (*(v24 - 1) == *v23 && *v24 == *(v23 + 1))
            {
              break;
            }

            v24 += 2;
          }

          while ((sub_1C9A93B18() & 1) == 0);

          sub_1C9A93678();
          sub_1C9A936A8();
          sub_1C9A936B8();
          sub_1C9A93688();
          v17 = v53;
          if (v53 != v48)
          {
            continue;
          }

          v28 = v58;
          ObjectType = v50;
          v12 = v46;
          v9 = v47;
          v15 = MEMORY[0x1E69E7CC0];
          goto LABEL_22;
        }
      }

      break;
    }

LABEL_20:
    type metadata accessor for SNError(v21);
    sub_1C9929478(0xD000000000000017, 0x80000001C9AD4AA0, 1, 0, 0, 0xE000000000000000);
    swift_willThrow();

LABEL_4:
    swift_deallocPartialClassInstance();
    return;
  }

  v28 = MEMORY[0x1E69E7CC0];
LABEL_22:
  type metadata accessor for SNMLModelAdapter(v27);
  v29 = swift_allocObject();
  *(v29 + 16) = a1;
  v30 = sub_1C97BDEE0();
  if (!v30)
  {
    v44 = a1;

LABEL_33:
    v45 = &v4[OBJC_IVAR___SNDetectSoundActionsRequest_impl];
    *v45 = v29;
    v45[1] = &off_1F4937370;
    v45[2] = v11;
    v45[3] = v9;
    v45[4] = v12;
    v45[5] = v15;
    v57.receiver = v4;
    v57.super_class = ObjectType;
    objc_msgSendSuper2(&v57, sel_init, v46, v47);

    return;
  }

  v47 = v9;
  v49 = v29;
  v54 = v28;
  v56 = v30;
  v46 = v12;
  v51 = ObjectType;
  v52 = a1;
  v58 = v15;
  v31 = v30 & ~(v30 >> 63);
  v32 = a1;
  sub_1C97B830C(0, v31, 0);
  if ((v56 & 0x8000000000000000) == 0)
  {
    v33 = 0;
    v15 = v58;
    v34 = v54;
    do
    {
      if ((v54 & 0xC000000000000001) != 0)
      {
        v35 = MEMORY[0x1CCA912B0](v33);
      }

      else
      {
        v35 = *(v34 + 8 * v33 + 32);
      }

      v36 = v35;
      v37 = *&v35[OBJC_IVAR___SNSoundActionCommand_impl];
      v38 = *&v35[OBJC_IVAR___SNSoundActionCommand_impl + 8];
      v39 = *&v35[OBJC_IVAR___SNSoundActionCommand_impl + 16];
      v40 = *&v35[OBJC_IVAR___SNSoundActionCommand_impl + 24];

      v58 = v15;
      v42 = *(v15 + 16);
      v41 = *(v15 + 24);
      if (v42 >= v41 >> 1)
      {
        sub_1C97B830C(v41 > 1, v42 + 1, 1);
        v15 = v58;
      }

      ++v33;
      *(v15 + 16) = v42 + 1;
      v43 = (v15 + 32 * v42);
      v43[4] = v37;
      v43[5] = v38;
      v43[6] = v39;
      v43[7] = v40;
      v34 = v54;
    }

    while (v56 != v33);

    ObjectType = v51;
    a1 = v52;
    v12 = v46;
    v9 = v47;
    v29 = v49;
    goto LABEL_33;
  }

LABEL_35:
  __break(1u);
}

uint64_t sub_1C99D2B24(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  sub_1C97B7B08(0, v2, 0);
  v3 = v12;
  v4 = a1 + 32;
  if (v2)
  {
    while (1)
    {
      sub_1C97BD360(v4, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1C97B7B08((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      v7 = v3 + 16 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      v4 += 32;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

id SNDetectSoundActionsRequest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SNDetectSoundActionsRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1C99D2E34(char *a1)
{
  v3 = v2;
  v4 = v1;
  *(v1 + 16) = 0;
  v6 = sub_1C99D2278();
  v7 = *&a1[OBJC_IVAR___SNDetectSoundActionsRequest_impl + 16];
  if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v7 <= -2147483650.0)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v7 >= 2147483650.0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v8 = v6;
  v38 = *&a1[OBJC_IVAR___SNDetectSoundActionsRequest_impl + 32];
  v36 = sub_1C9A93168();
  v37 = v9;
  v11 = v10;
  v12 = sub_1C97BDEE0();
  if (v12)
  {
    v13 = v12;
    v40[0] = MEMORY[0x1E69E7CC0];
    sub_1C97B7DD0(0, v12 & ~(v12 >> 63), 0);
    if ((v13 & 0x8000000000000000) == 0)
    {
      v32 = v11;
      v33 = v2;
      v34 = a1;
      v35 = v1;
      v14 = 0;
      v15 = v40[0];
      v39 = v8 & 0xC000000000000001;
      v16 = v8;
      v17 = v13;
      do
      {
        if (v39)
        {
          v18 = MEMORY[0x1CCA912B0](v14, v8);
        }

        else
        {
          v18 = *(v8 + 8 * v14 + 32);
        }

        v19 = v18;
        v20 = *&v18[OBJC_IVAR___SNSoundActionCommand_impl];
        v21 = *&v18[OBJC_IVAR___SNSoundActionCommand_impl + 8];
        v22 = *&v18[OBJC_IVAR___SNSoundActionCommand_impl + 24];
        v23 = *&v18[OBJC_IVAR___SNSoundActionCommand_impl + 16];

        v40[0] = v15;
        v25 = *(v15 + 16);
        v24 = *(v15 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_1C97B7DD0(v24 > 1, v25 + 1, 1);
          v15 = v40[0];
        }

        ++v14;
        *(v15 + 16) = v25 + 1;
        v26 = (v15 + 32 * v25);
        v26[4] = v20;
        v26[5] = v21;
        v26[6] = v22;
        v26[7] = v23;
        v8 = v16;
      }

      while (v17 != v14);

      a1 = v34;
      v4 = v35;
      v11 = v32;
      v3 = v33;
      goto LABEL_15;
    }

LABEL_21:
    __break(1u);
    return;
  }

  v15 = MEMORY[0x1E69E7CC0];
LABEL_15:
  v40[0] = v36;
  v40[1] = v37;
  v40[2] = v11;
  v27 = sub_1C9952C6C(v15, v38, v40);
  if (v3)
  {

    swift_deallocPartialClassInstance();
  }

  else
  {
    v29 = v27;
    v30 = v28;

    sub_1C97AA878();
    v31 = swift_allocObject();
    *(v31 + 16) = v29;
    *(v31 + 24) = v30;
    *(v4 + 32) = sub_1C99D3F10;
    *(v4 + 40) = v31;
    *(v4 + 24) = a1;
  }
}

id sub_1C99D30F8(double a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v75 = *MEMORY[0x1E69E9840];
  type metadata accessor for SNUtils(a1);
  ObjectType = swift_getObjectType();
  v11 = (*(a3 + 16))(ObjectType, a3);
  v12 = sub_1C9A16FF8(v11);

  sub_1C9A18C50(v12, 1u);
  v14 = v13;

  v15 = objc_opt_self();
  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_34;
  }

  if (a1 <= -1.0)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (a1 >= 4294967300.0)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if ((a4 & 0x8000000000000000) != 0)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (HIDWORD(a4))
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v16 = v15;
  sub_1C9A76554(a1, a4, 1, &v71);
  sub_1C9A76640(a1, a4, v14, 1, &v71);
  v17 = v71;
  v68 = v73;
  v69 = v72;
  v67 = v74;
  v71 = 0;
  v18 = sub_1C9A761F8(v16, &v71, *&v73);
  if (!v18)
  {
    v40 = v71;
    sub_1C9A913C8();

    swift_willThrow();
    return v18;
  }

  v19 = v71;
  v20 = sub_1C9A92478();
  v21 = sub_1C99D4074();
  v24 = sub_1C9A72FAC(v21, v22, v20, v23);

  if (!v24)
  {
    v41 = v71;
    sub_1C9A913C8();

    swift_willThrow();
    goto LABEL_31;
  }

  v25 = v71;
  v26 = sub_1C9A92478();
  v27 = sub_1C99D4074();
  v30 = sub_1C9A74DF0(v27, v28, v26, v29);

  if (!v30)
  {
    v42 = v71;
    sub_1C99D40D0();

    swift_willThrow();
    goto LABEL_31;
  }

  v66 = v30;
  v31 = v71;
  v32 = sub_1C99D4088();
  v33 = sub_1C99D4074();
  v36 = sub_1C9A75428(v33, v34, v32, v35);

  if (!v36)
  {
    v43 = v71;
    sub_1C99D40D0();

    swift_willThrow();
    v44 = v66;
    goto LABEL_17;
  }

  v37 = v71;
  sub_1C9A3B76C(v36, a2, a3, v38);
  if (!v4)
  {
    v65 = v36;
    v45 = sub_1C9A92478();
    v71 = 0;
    v36 = sub_1C9A7347C(v16, v18, v45, 1, &v71);

    if (v36)
    {
      v70 = 0;
      v46 = v71;
      v47 = sub_1C99D4030();
      if (sub_1C9A762F8(v47, v48, v24, v66, 0, 0, v49, v50))
      {
        v70 = 0;
        v51 = 0;
        v71 = v17;
        v72 = v69;
        v73 = v68;
        v74 = v67;
        v52 = sub_1C9A762F8(v16, v18, v66, v65, 0, 0, &v71, &v70);
        v53 = v70;
        if (v52)
        {
          v70 = 0;
          v54 = v53;
          v55 = sub_1C99D4030();
          if (sub_1C9A762F8(v55, v56, v65, v36, 0, 0, v57, v58))
          {
            if (a1 > -9.22337204e18)
            {
              if (a1 < 9.22337204e18)
              {
                v59 = v70;
                sub_1C9A695C8(v18, a4, a1, 1);
                sub_1C9A69B8C(v18);

                v39 = v65;
                goto LABEL_12;
              }

LABEL_39:
              __break(1u);
            }

LABEL_38:
            __break(1u);
            goto LABEL_39;
          }

          v63 = v70;
          sub_1C9A913C8();

          swift_willThrow();
        }

        else
        {
          v62 = v70;
          sub_1C99D40D0();

          swift_willThrow();
        }
      }

      else
      {
        v61 = v70;
        sub_1C99D40D0();

        swift_willThrow();
      }

LABEL_31:
      return v18;
    }

    v60 = v71;
    sub_1C9A913C8();

    swift_willThrow();
    v44 = v65;
LABEL_17:

    goto LABEL_31;
  }

  v39 = v66;
LABEL_12:

  return v18;
}

void *sub_1C99D3674(void *a1, int64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t), double a4)
{
  v56[6] = *MEMORY[0x1E69E9840];
  v9 = objc_opt_self();
  v52.value = 0;
  v10 = sub_1C9A7608C(v9, a1, &v52);
  v11 = v52.value;
  if (!v10)
  {
    v24 = v52.value;
    sub_1C9A913C8();

    swift_willThrow();
    return v4;
  }

  v12 = v10;
  v50 = v4;
  v48 = a3;
  value = a2;
  v13 = *(v4[3] + OBJC_IVAR___SNDetectSoundActionsRequest_impl + 8);
  ObjectType = swift_getObjectType();
  v15 = *(v13 + 16);
  swift_unknownObjectRetain();
  v16 = v11;
  v4 = v15(ObjectType, v13);
  swift_unknownObjectRelease();
  sub_1C993923C(v4);
  if (!v17)
  {
    sub_1C97A8E8C();
    sub_1C97A7A80(&type metadata for OptionalUtils.DomainError);
    *v26 = 0;
    swift_willThrow();
    goto LABEL_10;
  }

  v18 = sub_1C9A92478();

  v4 = [v12 featureValueForName_];

  if (!v4 || (v19 = [v4 dictionaryValue], v4, sub_1C9841D44(v20), v21 = sub_1C9A92328(), v19, sub_1C99347DC(v21), v23 = v22, , !v23))
  {
    sub_1C97A8E8C();
    sub_1C97A7A80(&type metadata for OptionalUtils.DomainError);
    *v25 = 0;
    swift_willThrow();

LABEL_10:
    swift_unknownObjectRelease();
    return v4;
  }

  sub_1C9A3B888(a1, 0, v53);
  if (!v5)
  {
    if ((*&v53[0] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (*v53 > -9.22337204e18)
    {
      if (*v53 < 9.22337204e18)
      {
        v27 = *v53;
        v28 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInt_];
        sub_1C97CDE50(v28);
        v30 = v29;

        CMTimeMake(&v52, v27, v30);
        v31 = v52.value;
        epoch = v52.epoch;
        v32 = *&v52.timescale;
        v33 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInt_];
        sub_1C97CDE50(v33);
        LODWORD(v28) = v34;

        CMTimeMake(&v52, value, v28);
        v35 = v52.value;
        v36 = v52.epoch;
        v37 = *&v52.timescale;
        v38 = v50[4];
        sub_1C9878F3C();
        v40 = v39;

        v56[0] = v31;
        v56[1] = v32;
        v56[2] = epoch;
        v56[3] = v35;
        v56[4] = v37;
        v56[5] = v36;
        v42 = v38(v40, v56);

        if (v42)
        {
          SNSoundActionsResult.timeRange.getter(v54);
          v43 = v54[0];
          v44 = v54[1];
          v45 = v54[2];
          v46 = v42;
          v48(v43, v44, v45);
          v47 = sub_1C9A92F08();
          (v48)(v47);
          sub_1C9A92F18();
          SNSoundActionsResult.timeRange.setter(v55);

          sub_1C97A2CEC(&unk_1EC3C6E20, &qword_1C9A9FF60);
          v4 = swift_allocObject();
          *(v4 + 1) = xmmword_1C9A9DF30;
          v4[4] = v46;
        }

        else
        {
          v4 = MEMORY[0x1E69E7CC0];
        }

        goto LABEL_10;
      }

LABEL_21:
      __break(1u);
    }

    __break(1u);
    goto LABEL_21;
  }

  swift_unknownObjectRelease();

  return v4;
}

id sub_1C99D3B54()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1;
  }

  sub_1C99D3E38();
  sub_1C97A7A80(&type metadata for SNSoundActionsDetector.DomainError);
  return swift_willThrow();
}

void sub_1C99D3BA8()
{
  v2 = *v0;
  sub_1C97AA878();
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  *(v3 + 24) = v2;

  v4 = sub_1C97C1C8C();

  if (!v1)
  {
    v5 = v0[2];
    v0[2] = v4;
  }
}

uint64_t sub_1C99D3C5C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = (*(a1 + 24) + OBJC_IVAR___SNDetectSoundActionsRequest_impl);
  v5 = *(v4 + 1);
  v6 = *(v4 + 3);
  v7 = v4[2];
  v8 = swift_unknownObjectRetain();
  v9 = sub_1C99D30F8(v7, v8, v5, v6);
  result = swift_unknownObjectRelease();
  if (!v2)
  {
    *a2 = v9;
  }

  return result;
}

id sub_1C99D3CDC()
{
  result = sub_1C99D3B54();
  if (!v0)
  {
    v2 = result;
    v3 = sub_1C99D4088();
    v4 = sub_1C9A6AEE4(v2, v3);

    return v4;
  }

  return result;
}

uint64_t sub_1C99D3D70()
{
  sub_1C99D3D40();

  return swift_deallocClassInstance();
}

unint64_t sub_1C99D3E38()
{
  result = qword_1EC3D01B0;
  if (!qword_1EC3D01B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D01B0);
  }

  return result;
}

uint64_t sub_1C99D3EA8(void *a1)
{
  v2 = [a1 classLabels];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1C9A92798();

  return v3;
}

_BYTE *storeEnumTagSinglePayload for SNSoundActionsDetector.DomainError(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1C99D3FDC()
{
  result = qword_1EC3D01C0[0];
  if (!qword_1EC3D01C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC3D01C0);
  }

  return result;
}

uint64_t sub_1C99D4088()
{

  return sub_1C9A92478();
}

uint64_t sub_1C99D40B0(uint64_t a1, _BYTE *a2)
{
  *a2 = 7;

  return swift_willThrow();
}

uint64_t sub_1C99D40D0()
{

  return sub_1C9A913C8();
}

uint64_t AnyAsyncIterator.next()()
{
  sub_1C97AA95C();
  v6 = (*v0 + **v0);
  v1 = swift_task_alloc();
  v2 = sub_1C97AA858(v1);
  *v2 = v3;
  v4 = sub_1C99D5AB4(v2);

  return v6(v4);
}

void *sub_1C99D41F4()
{
  sub_1C99D5AC4();
  v5 = swift_allocBox();
  (*(*(v1 - 8) + 32))(v6, v3, v1);
  sub_1C97A7DFC();
  result = swift_allocObject();
  result[2] = v2;
  result[3] = v1;
  result[4] = v0;
  result[5] = v5;
  *v4 = &unk_1C9AC65C8;
  v4[1] = result;
  return result;
}

uint64_t sub_1C99D4290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  v5[8] = swift_projectBox();

  return MEMORY[0x1EEE6DFA0](sub_1C99D4304, 0, 0);
}

uint64_t sub_1C99D4304()
{
  sub_1C97AA884();
  swift_beginAccess();
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_1C99D43B0;
  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6D8C8](v2);
}

uint64_t sub_1C99D43B0()
{
  sub_1C97AA884();
  sub_1C97AA890();
  v3 = v2;
  sub_1C97AA84C();
  *v4 = v3;
  v5 = *v1;
  sub_1C97AA83C();
  *v6 = v5;
  *(v3 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C99D44D4, 0, 0);
  }

  else
  {
    swift_endAccess();
    sub_1C97DA91C();

    return v7();
  }
}

uint64_t sub_1C99D44D4()
{
  sub_1C97AA884();
  swift_endAccess();
  sub_1C97DA91C();

  return v0();
}

uint64_t sub_1C99D4530()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C97DA5D0;

  return AnyAsyncIterator.next()();
}

uint64_t sub_1C99D45C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a4;
  v12 = swift_task_alloc();
  *(v6 + 32) = v12;
  *v12 = v6;
  v12[1] = sub_1C99D469C;

  return MEMORY[0x1EEE6D8E0](a1, a2, a3, a5, a6, v6 + 16);
}

uint64_t sub_1C99D469C()
{
  sub_1C97AA884();
  sub_1C97AA890();
  v3 = v2;
  sub_1C97AA84C();
  *v4 = v3;
  v5 = *v1;
  sub_1C97AA83C();
  *v6 = v5;

  if (v0)
  {
    **(v3 + 24) = *(v3 + 16);
  }

  sub_1C97DA91C();

  return v7();
}

uint64_t sub_1C99D47B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *, uint64_t, uint64_t, uint64_t))
{
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, v5, a1);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return a5(v10, AssociatedTypeWitness, a1, a2);
}

uint64_t sub_1C99D48C4()
{
  sub_1C99D5AC4();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 2) = v2;
  *(v8 + 3) = v1;
  *(v8 + 4) = v0;
  result = (*(v6 + 32))(&v8[v7], v3, v1);
  *v4 = sub_1C99D5A6C;
  v4[1] = v8;
  return result;
}

double sub_1C99D499C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a5@<X8>)
{
  v18 = a2;
  v19 = a5;
  v7 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v18 - v15;
  (*(v7 + 16))(v9, a1, a3);
  sub_1C9A92A68();
  (*(v11 + 16))(v14, v16, AssociatedTypeWitness);
  swift_getAssociatedConformanceWitness();
  sub_1C99D41F4();
  (*(v11 + 8))(v16, AssociatedTypeWitness);
  result = *&v20;
  *v19 = v20;
  return result;
}

uint64_t sub_1C99D4BF8()
{
  AnyAsyncSequence.makeAsyncIterator()();
}

uint64_t sub_1C99D4C24(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v8 = *v4;
  v7 = v4[1];
  v9 = sub_1C97A83D4(a4);
  sub_1C97A7DFC();
  v10 = swift_allocObject();
  v10[2] = *(a2 + 16);
  v10[3] = a3;
  v10[4] = v8;
  v10[5] = v7;
  v11 = sub_1C9A93258();

  swift_getWitnessTable();
  sub_1C9803BB8(sub_1C99D58FC, v9, &unk_1C9AC65B8, v10, v11);
}

uint64_t sub_1C99D4D30(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1C97DA5D0;

  return v6(a1);
}

uint64_t sub_1C99D4E44(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C99D4E94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C99D4EB8, 0, 0);
}

uint64_t sub_1C99D4EB8(double a1)
{
  v2 = v1[5];
  v3 = v1[6];
  v4 = v1[4];
  v5 = v4[2];
  v6 = v4[3];
  v7 = v4[4];
  v8 = v4[5];
  type metadata accessor for XPCProxyDecoder.SingleValueContainer(a1);
  sub_1C97A7DFC();
  v9 = swift_allocObject();
  v1[7] = v9;
  v9[2] = v5;
  v9[3] = v6;
  v9[4] = v7;
  v9[5] = v8;
  sub_1C97A8F30(v5, v6, v7, v8);
  sub_1C99D5220(v9, v2, v3);
  v1[8] = v10;
  v11 = swift_task_alloc();
  v1[9] = v11;
  sub_1C9A93258();
  v1[2] = v3;
  swift_getWitnessTable();
  *v11 = v1;
  v11[1] = sub_1C99D5004;

  return sub_1C98040B4();
}

uint64_t sub_1C99D5004()
{
  sub_1C97DA934();
  v3 = v2;
  v5 = v4;
  sub_1C97AA890();
  v7 = v6;
  sub_1C97AA84C();
  *v8 = v7;
  v9 = *v1;
  sub_1C97AA83C();
  *v10 = v9;
  v7[10] = v0;

  if (v0)
  {
    v11 = sub_1C99D51B0;
  }

  else
  {

    v7[11] = v3;
    v7[12] = v5;
    v11 = sub_1C99D512C;
  }

  return MEMORY[0x1EEE6DFA0](v11, 0, 0);
}

uint64_t sub_1C99D512C()
{
  sub_1C97AA95C();
  v1 = *(v0 + 24);
  v4 = *(v0 + 88);

  *v1 = vextq_s8(v4, v4, 8uLL);
  sub_1C97DA91C();

  return v2();
}

uint64_t sub_1C99D51B0()
{
  sub_1C97AA884();

  sub_1C97DA91C();

  return v0();
}

void *sub_1C99D5220(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a1;

  return &unk_1C9AC65A8;
}

uint64_t sub_1C99D5294(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_task_alloc();
  v3[7] = v5;
  v6 = sub_1C9A93258();
  type metadata accessor for XPCFunction(0, &type metadata for XPCVoid, v6, v7);
  v3[6] = a3;
  WitnessTable = swift_getWitnessTable();
  v3[4] = &off_1F494B9C0;
  v3[5] = WitnessTable;
  swift_getWitnessTable();
  *v5 = v3;
  v5[1] = sub_1C99D53C8;

  return sub_1C987CBD8();
}

uint64_t sub_1C99D53C8()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C97AA84C();
  *v3 = v2;
  v4 = *v1;
  sub_1C97AA83C();
  *v5 = v4;
  *(v6 + 64) = v0;

  if (v0)
  {
    v7 = sub_1C99D54C8;
  }

  else
  {
    v7 = sub_1C98BE8DC;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1C99D54EC()
{
  sub_1C97DA934();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;

  v8 = swift_task_alloc();
  v9 = sub_1C97AA858(v8);
  *v9 = v10;
  v9[1] = sub_1C97DA5D0;

  return sub_1C99D4E94(v7, v5, v3, v1);
}

uint64_t sub_1C99D55AC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C97DA5D0;

  return sub_1C99D54EC();
}

uint64_t sub_1C99D5664(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C99D56B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C99D5708(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C99D575C()
{
  sub_1C97AA95C();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1C99D5800;

  return sub_1C99D5294(v4, v2, v3);
}

uint64_t sub_1C99D5800()
{
  sub_1C97AA95C();
  v2 = v1;
  v4 = v3;
  sub_1C97AA890();
  v5 = *v0;
  sub_1C97AA83C();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(v4, v2);
}

uint64_t sub_1C99D5914()
{
  sub_1C97DA934();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = sub_1C97AA858(v2);
  *v3 = v4;
  v5 = sub_1C99D5AB4(v3);

  return sub_1C99D4D30(v5, v1);
}

uint64_t sub_1C99D59C0()
{
  sub_1C97DA934();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = sub_1C97AA858(v5);
  *v6 = v7;
  v8 = sub_1C99D5AB4(v6);

  return sub_1C99D4290(v8, v3, v1, v2, v4);
}

uint64_t sub_1C99D5ADC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4[0] = *(a1 + 16);
  v4[1] = v1;
  result = type metadata accessor for AudioStreamAnalyzerEnvironmentImpl(319, v4);
  if (v3 <= 0x3F)
  {
    v5 = 0;
    *&v4[0] = result;
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C99D5B54(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return sub_1C97ABF20(result, v5, v4);
    }
  }

  else
  {
    v8 = ((((((((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1C99D5CB8(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((((((((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = a3 - v8;
    if (((((((((((((v9 + 7) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
              v17[1] = 0;
              v17[2] = 0;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *v17 = v18;
          }

          else
          {

            sub_1C97ACC50(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((((((((((((v9 + 7) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((((((((((((v9 + 7) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((((((((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

void sub_1C99D5EE8(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_1C99D633C(319);
    if (v2 <= 0x3F)
    {
      sub_1C99D6418(319);
      if (v3 <= 0x3F)
      {
        sub_1C99D64F4(319);
        if (v4 <= 0x3F)
        {
          sub_1C99D65D0(319);
          if (v5 <= 0x3F)
          {
            sub_1C99D66AC(319);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1C99D5FD8(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return sub_1C97ABF20(result, v5, v4);
    }
  }

  else
  {
    v8 = ((((((((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1C99D613C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((((((((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = a3 - v8;
    if (((((((((((((v9 + 7) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
              v17[1] = 0;
              v17[2] = 0;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *v17 = v18;
          }

          else
          {

            sub_1C97ACC50(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((((((((((((v9 + 7) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((((((((((((v9 + 7) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((((((((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

void sub_1C99D633C(uint64_t a1)
{
  if (!qword_1EC3C4C88)
  {
    v2 = sub_1C97AA4F0(&qword_1EC3C8580, &qword_1C9AA34C8);
    v3 = sub_1C97AE67C(&qword_1EC3C4EE8, &qword_1EC3C8580, &qword_1C9AA34C8, &unk_1C9AC69B0);
    v4 = sub_1C97AE67C(qword_1EC3C4D30, &qword_1EC3D0350, &unk_1C9AC6630, &unk_1C9AAF808);
    v5 = type metadata accessor for SyncCache(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1EC3C4C88);
    }
  }
}

void sub_1C99D6418(uint64_t a1)
{
  if (!qword_1EC3C4C90)
  {
    v2 = sub_1C97AA4F0(&qword_1EC3C8588, &qword_1C9AA34D8);
    v3 = sub_1C97AE67C(&qword_1EC3C4EF0, &qword_1EC3C8588, &qword_1C9AA34D8, &unk_1C9AC69B0);
    v4 = sub_1C97AE67C(&unk_1EC3C4EB8, &qword_1EC3D0358, &unk_1C9AC6640, &unk_1C9A9C6B0);
    v5 = type metadata accessor for SyncCache(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1EC3C4C90);
    }
  }
}

void sub_1C99D64F4(uint64_t a1)
{
  if (!qword_1EC3C4CA8[0])
  {
    v2 = sub_1C97AA4F0(&qword_1EC3C8590, &qword_1C9AA34E8);
    v3 = sub_1C97AE67C(qword_1EC3C4F08, &qword_1EC3C8590, &qword_1C9AA34E8, &unk_1C9AC69B0);
    v4 = sub_1C97AE67C(&unk_1EC3C5470, &qword_1EC3D0360, &unk_1C9AC6650, &unk_1C9AA4ED8);
    v5 = type metadata accessor for SyncCache(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, qword_1EC3C4CA8);
    }
  }
}

void sub_1C99D65D0(uint64_t a1)
{
  if (!qword_1EC3C4CA0)
  {
    v2 = sub_1C97AA4F0(&qword_1EC3C8598, &qword_1C9AA34F8);
    v3 = sub_1C97AE67C(&qword_1EC3C4F00, &qword_1EC3C8598, &qword_1C9AA34F8, &unk_1C9AC69B0);
    v4 = sub_1C97AE67C(&qword_1EC3C5468, &qword_1EC3D0368, &unk_1C9AC6660, &unk_1C9AAEAD8);
    v5 = type metadata accessor for SyncCache(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1EC3C4CA0);
    }
  }
}

void sub_1C99D66AC(uint64_t a1)
{
  if (!qword_1EC3C4C98)
  {
    v2 = sub_1C97AA4F0(&qword_1EC3C85A0, &qword_1C9AA3508);
    v3 = sub_1C97AE67C(&qword_1EC3C4EF8, &qword_1EC3C85A0, &qword_1C9AA3508, &unk_1C9AC69B0);
    v4 = sub_1C97AE67C(qword_1EC3C51D0, qword_1EC3D0370, qword_1C9AC6670, &unk_1C9AAF1E0);
    v5 = type metadata accessor for SyncCache(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1EC3C4C98);
    }
  }
}

uint64_t sub_1C99D67C0@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  result = sub_1C99D6788(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_1C99D6800@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v7[0] = *(a1 + 16);
  v7[1] = v4;
  v5 = type metadata accessor for AudioStreamAnalyzerEnvironmentImpl(0, v7);
  return (*(*(v5 - 8) + 16))(a2, v2, v5);
}

void sub_1C99D6870(void **a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  sub_1C9A095DC(*a1);
  if (!v2)
  {
    *a2 = v5;
    *(a2 + 8) = v6;
    *(a2 + 16) = v7;
    *(a2 + 24) = v8 & 1;
    *(a2 + 32) = v4;
  }
}

uint64_t sub_1C99D68B4@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  v4 = *result;
  v3 = *(result + 8);
  v5 = *(result + 16);
  v6 = *(result + 32);
  if (*(result + 24) != 1)
  {

    goto LABEL_5;
  }

  if ((v3 * v5) >> 64 == (v3 * v5) >> 63)
  {
    j__swift_bridgeObjectRetain();
    result = sub_1C9A0A588(v3 * v5, v4, v3, v5);
    v4 = result;
LABEL_5:
    *a2 = v4;
    a2[1] = v3;
    a2[2] = v5;
    a2[3] = v6;
    return result;
  }

  __break(1u);
  return result;
}

id sub_1C99D6968@<X0>(id *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v5 = *a2;
  v6 = *a1;
  result = [v6 frameLength];
  if (__OFADD__(v5, result))
  {
    __break(1u);
  }

  else
  {
    *a2 = v5 + result;
    *a3 = v6;
    a3[1] = v5;
  }

  return result;
}

void *sub_1C99D69C4@<X0>(void *result@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v3 = result[2];
  v4 = *a2 + v3;
  if (__OFADD__(*a2, v3))
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    v5 = *result;
    v6 = v7[1];
    *a2 = v4;
    *a3 = v5;
    a3[1] = v6;
    a3[2] = v3;
    a3[3] = v4;
  }

  return result;
}

uint64_t sub_1C99D69F8(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C99D6A34(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C99D6A70(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C99D6AAC(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C99D6AE8(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C99D6BC0@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v7 = *(v2 + *(*v2 + 112));
  v4 = type metadata accessor for SafeLock(a2);
  swift_getAssociatedTypeWitness();
  v5 = sub_1C9A93258();

  sub_1C99D013C(&v7, sub_1C99D7C64, v4, v5, &off_1F4949530, a1);
}

uint64_t sub_1C99D6CD0@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v7 = *(v2 + *(*v2 + 112));
  v4 = type metadata accessor for SafeLock(a2);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();

  sub_1C99D013C(&v7, sub_1C99D787C, v4, AssociatedTypeWitness, &off_1F4949530, a1);
}

uint64_t sub_1C99D6DEC(uint64_t a1)
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

uint64_t sub_1C99D6E8C()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 112));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1C99D6F04()
{
  sub_1C99D6E8C();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1C99D6F48(uint64_t a1)
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

double sub_1C99D6FE8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X1>)
{
  v16 = *MEMORY[0x1E69E9840];
  swift_beginAccess();
  sub_1C98783B4(*(a1 + 16), v13, a3);
  v7 = v13[0];
  v6 = v13[1];
  v8 = v13[2];
  v9 = v13[3];
  v10 = v13[4];
  v11 = v14;
  swift_endAccess();
  if (!v7)
  {
    goto LABEL_4;
  }

  if (v7 != 1)
  {
    notifier[0] = v8;
    sub_1C987AD48(v7, v6, v8, v9, v10);
    IODeregisterForSystemPower(notifier);
    IONotificationPortDestroy(v9);
    IOServiceClose(v11);

LABEL_4:
    sub_1C982467C(v13);
  }

  swift_beginAccess();
  sub_1C97EE2CC(notifier, a3);
  swift_endAccess();
  sub_1C982467C(notifier);
  *a2 = 1;
  result = 0.0;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1C99D714C@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v27 = a1;
  v26 = a2;
  v29 = a5;
  v6 = *(*a3 + 88);
  v7 = *(*a3 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v22 = *(AssociatedTypeWitness - 8);
  v23 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v25 = &v20 - v9;
  swift_getAssociatedTypeWitness();
  v10 = sub_1C9A93258();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v21 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v20 - v14;
  swift_beginAccess();
  v16 = *(v6 + 24);
  v24 = a4;
  v16(a4, v7, v6);
  swift_endAccess();
  v17 = v28;
  v27(v15);
  if (v17)
  {
    return (*(v11 + 8))(v15, v10);
  }

  (*(v11 + 8))(v15, v10);
  (*(v22 + 16))(v25, v24, v23);
  v19 = v21;
  (*(v11 + 16))(v21, v29, v10);
  swift_beginAccess();
  (*(v6 + 32))(v19, v25, v7, v6);
  return swift_endAccess();
}

uint64_t sub_1C99D7450@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v29 = a4;
  v26 = a2;
  v27 = a1;
  v30 = a5;
  v5 = *(*a3 + 88);
  v6 = *(*a3 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v22 = *(AssociatedTypeWitness - 8);
  v23 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v24 = &v21 - v8;
  v21 = swift_getAssociatedTypeWitness();
  v9 = sub_1C9A93258();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v21 - v14;
  swift_beginAccess();
  v16 = *(v5 + 24);
  v25 = v6;
  v16(v29, v6, v5);
  swift_endAccess();
  v17 = v28;
  v27(v15);
  if (v17)
  {
    return (*(v10 + 8))(v15, v9);
  }

  (*(v10 + 8))(v15, v9);
  v19 = v24;
  (*(v22 + 16))(v24, v29, v23);
  v20 = v21;
  (*(*(v21 - 8) + 16))(v13, v30, v21);
  sub_1C97ACC50(v13, 0, 1, v20);
  swift_beginAccess();
  (*(v5 + 32))(v13, v19, v25, v5);
  return swift_endAccess();
}

uint64_t sub_1C99D7780()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 104));

  return v0;
}

uint64_t sub_1C99D780C()
{
  sub_1C99D7780();

  return swift_deallocClassInstance();
}

uint64_t sub_1C99D789C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8, uint64_t a9)
{
  v19 = a6;
  v20 = a3;
  v21 = a4;
  v22 = a7;
  v11 = *a2;
  v12 = *(a8 - 8);
  v13 = MEMORY[0x1EEE9AC00](a1);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v16(v13);
  v23 = a5;
  v24 = v19;
  v25 = a8;
  v26 = *(v11 + 80);
  v27 = a9;
  v28 = *(v11 + 88);
  v29 = v20;
  v30 = v21;
  v31 = a1;
  sub_1C99D6CD0(v22, v17);
  return (*(v12 + 8))(v15, a8);
}

uint64_t sub_1C99D7A10@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v19[0] = a4;
  v19[1] = a3;
  v20 = a2;
  v9 = sub_1C9A93258();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v19 - v12;
  v14 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v16 = v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v13, a1, v9);
  if (sub_1C97ABF20(v13, 1, a5) == 1)
  {
    (*(v10 + 8))(v13, v9);
    return v20(v19[0]);
  }

  else
  {
    v18 = *(v14 + 32);
    v18(v16, v13, a5);
    return (v18)(a6, v16, a5);
  }
}

id sub_1C99D7C84(uint64_t a1, uint64_t a2)
{
  v3 = objc_allocWithZone(v2);
  v4 = sub_1C9A92478();

  v5 = [v3 initWithIdentifier:v4 detectedValue:0];

  return v5;
}

uint64_t SNDetectionResult.detectorIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2 + OBJC_IVAR___SNDetectionResult_impl;
  *(v3 + 80) = a1;
  *(v3 + 88) = a2;
  return sub_1C99D9BC8();
}

double SNDetectionResult.timeRange.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR___SNDetectionResult_impl;
  v3 = *(v1 + OBJC_IVAR___SNDetectionResult_impl + 40);
  *a1 = *(v1 + OBJC_IVAR___SNDetectionResult_impl);
  *(a1 + 8) = *(v2 + 8);
  *(a1 + 16) = *(v2 + 16);
  result = *(v2 + 32);
  *(a1 + 32) = result;
  *(a1 + 40) = v3;
  return result;
}

double SNDetectionResult.timeRange.setter(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = v1 + OBJC_IVAR___SNDetectionResult_impl;
  *v3 = *a1;
  *(v3 + 8) = *(a1 + 8);
  *(v3 + 16) = *(a1 + 16);
  result = *(a1 + 32);
  *(v3 + 32) = result;
  *(v3 + 40) = v2;
  return result;
}

double sub_1C99D7E70@<D0>(_OWORD *a1@<X8>)
{
  SNDetectionResult.timeRange.getter(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

void (*SNDetectionResult.timeRange.modify(void *a1))(void **a1)
{
  v3 = sub_1C97A2C48(0x38uLL);
  *a1 = v3;
  *v3 = v1;
  SNDetectionResult.timeRange.getter((v3 + 1));
  return sub_1C99D7F18;
}

void sub_1C99D7F18(void **a1)
{
  v1 = *a1;
  SNDetectionResult.timeRange.setter(*a1 + 8);

  free(v1);
}

double (*SNDetectionResult.confidence.modify(void *a1))(uint64_t a1)
{
  v2 = OBJC_IVAR___SNDetectionResult_impl;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = *(v1 + v2 + 48);
  return sub_1C98277B8;
}

uint64_t (*SNDetectionResult.detected.modify(uint64_t a1))(uint64_t result)
{
  v2 = OBJC_IVAR___SNDetectionResult_impl;
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + v2 + 72);
  return sub_1C99D8074;
}

uint64_t SNDetectionResult.identifier.getter()
{
  v1 = *(v0 + OBJC_IVAR___SNDetectionResult_impl + 56);

  return v1;
}

uint64_t SNDetectionResult.identifier.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2 + OBJC_IVAR___SNDetectionResult_impl;
  *(v3 + 56) = a1;
  *(v3 + 64) = a2;
  return sub_1C99D9BC8();
}

uint64_t (*SNDetectionResult.identifier.modify(void *a1))(void *a1)
{
  v3 = OBJC_IVAR___SNDetectionResult_impl;
  a1[2] = v1;
  a1[3] = v3;
  v4 = v1 + v3;
  v5 = *(v4 + 64);
  *a1 = *(v4 + 56);
  a1[1] = v5;

  return sub_1C982797C;
}

id sub_1C99D8180(void *a1, uint64_t a2, void (*a3)(void *, uint64_t))
{
  a3(a1, a2);
  sub_1C9A92478();
  sub_1C97C926C();

  return a1;
}

uint64_t SNDetectionResult.detectorIdentifier.getter()
{
  if (*(v0 + OBJC_IVAR___SNDetectionResult_impl + 88))
  {
    v1 = *(v0 + OBJC_IVAR___SNDetectionResult_impl + 80);
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

void sub_1C99D8234(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  sub_1C9A924A8();
  v7 = a1;
  v6 = sub_1C984ADE8();
  a4(v6);
}

uint64_t sub_1C99D82A8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t (*SNDetectionResult.detectorIdentifier.modify(uint64_t *a1))()
{
  a1[2] = v1;
  *a1 = SNDetectionResult.detectorIdentifier.getter();
  a1[1] = v3;
  return sub_1C99D8338;
}

uint64_t sub_1C99D8338(void *a1)
{
  v1 = a1[1];
  v2 = a1[2] + OBJC_IVAR___SNDetectionResult_impl;
  *(v2 + 80) = *a1;
  *(v2 + 88) = v1;
}

id sub_1C99D8358()
{
  v1 = sub_1C9A92478();
  v2 = [v0 initWithIdentifier_];

  return v2;
}

id sub_1C99D83C8(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C9A92478();

  v4 = [v2 initWithIdentifier:v3 detectedValue:0];

  return v4;
}

id sub_1C99D8450(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v6 = objc_allocWithZone(sub_1C97FB30C());
  return sub_1C99D8498(v3, a2, v4);
}

id sub_1C99D8498(uint64_t a1, uint64_t a2, char a3)
{
  sub_1C97FB30C();
  ObjectType = swift_getObjectType();
  v8 = MEMORY[0x1E6960C98];
  v9 = *(MEMORY[0x1E6960C98] + 40);
  v10 = &v3[OBJC_IVAR___SNDetectionResult_impl];
  *v10 = *MEMORY[0x1E6960C98];
  *(v10 + 1) = *(v8 + 8);
  *(v10 + 1) = *(v8 + 16);
  *(v10 + 4) = *(v8 + 32);
  *(v10 + 5) = v9;
  *(v10 + 6) = 0;
  *(v10 + 7) = v4;
  *(v10 + 8) = a2;
  v10[72] = a3;
  *(v10 + 5) = xmmword_1C9AC69E0;
  v12.receiver = v3;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, sel_init);
}

void *SNDetectionResult.copy(with:)@<X0>(void *a1@<X8>)
{
  ObjectType = swift_getObjectType();
  memcpy(__dst, (v1 + OBJC_IVAR___SNDetectionResult_impl), sizeof(__dst));
  v4 = objc_allocWithZone(ObjectType);
  memcpy(&v4[OBJC_IVAR___SNDetectionResult_impl], __dst, 0x60uLL);
  sub_1C97F9900(__dst, v7);
  v6.receiver = v4;
  v6.super_class = ObjectType;
  result = objc_msgSendSuper2(&v6, sel_init);
  a1[3] = ObjectType;
  *a1 = result;
  return result;
}

uint64_t SNDetectionResult.hash.getter()
{
  sub_1C99D9BF4(v5);
  sub_1C99D9BF4(v4);
  sub_1C9A93CC8();
  sub_1C97F9900(v5, v2);
  sub_1C97F2A98(v3);
  v0 = sub_1C9A93D18();
  sub_1C97F99E0(v5);
  return v0;
}

uint64_t SNDetectionResult.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_1C97A2C7C(a1, &v15);
  if (v16)
  {
    sub_1C97A2D34(&v15, v14);
    sub_1C97BD360(v14, v13);
    if (swift_dynamicCast())
    {
      v2 = v12;
      v3 = OBJC_IVAR___SNDetectionResult_impl;
      sub_1C99D9BF4(v8);
      sub_1C99D9BF4(v7);
      memcpy(__dst, &v2[v3], sizeof(__dst));
      memcpy(__src, &v2[v3], sizeof(__src));
      v4 = sub_1C97F24F8(v7, __src);
      memcpy(v10, __src, sizeof(v10));
      sub_1C97F9900(v8, v11);
      sub_1C97F9900(__dst, v11);
      sub_1C97F99E0(v10);
      memcpy(v11, v7, sizeof(v11));
      sub_1C97F99E0(v11);
    }

    else
    {
      v4 = 0;
    }

    sub_1C97A592C(v14);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

id SNDetectionResult.__allocating_init(coder:)()
{
  v1 = objc_allocWithZone(v0);
  sub_1C97C926C();
  return SNDetectionResult.init(coder:)();
}

id SNDetectionResult.init(coder:)()
{
  sub_1C97C926C();
  swift_getObjectType();
  sub_1C97BD318(v1, 0, &qword_1EC3C5690, 0x1E696B098);
  v2 = sub_1C9A93198();
  if (v2)
  {
    v3 = v2;
    sub_1C984AEC4();
    v4 = sub_1C9A92478();
    [v0 decodeDoubleForKey_];

    sub_1C99D9BE0();
    v5 = sub_1C9A92478();
    [v0 decodeBoolForKey_];

    sub_1C97BD318(v6, 0, &qword_1EC3C8F28, 0x1E696AEC0);
    v7 = sub_1C9A93198();
    if (v7)
    {
      v8 = v7;
      v10 = 0;
      sub_1C9A92498();
    }
  }

  else
  {
  }

  swift_deallocPartialClassInstance();
  return 0;
}

Swift::Void __swiftcall SNDetectionResult.encode(with:)(NSCoder with)
{
  SNDetectionResult.timeRange.getter(v20);
  v3 = [objc_opt_self() valueWithCMTimeRange_];
  v4 = sub_1C9A92478();
  v5 = sub_1C99D9BD0();
  [v5 v6];

  v7 = v1 + OBJC_IVAR___SNDetectionResult_impl;
  v8 = *(v1 + OBJC_IVAR___SNDetectionResult_impl + 48);
  sub_1C984AEC4();
  v9 = sub_1C9A92478();
  [(objc_class *)with.super.isa encodeDouble:v9 forKey:v8];

  v10 = *(v7 + 72);
  sub_1C99D9BE0();
  v11 = sub_1C9A92478();
  [(objc_class *)with.super.isa encodeBool:v10 forKey:v11];

  sub_1C984ADE8();
  v12 = sub_1C9A92478();

  v13 = sub_1C9A92478();
  v14 = sub_1C99D9BD0();
  [v14 v15];

  SNDetectionResult.detectorIdentifier.getter();
  v16 = sub_1C9A92478();

  v17 = sub_1C9A92478();
  v18 = sub_1C99D9BD0();
  [v18 v19];
}

uint64_t SNDetectionResult.description.getter()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  *&v15[0] = 0;
  *(&v15[0] + 1) = 0xE000000000000000;
  sub_1C9A935B8();
  v17 = v15[0];
  v16.receiver = v0;
  v16.super_class = ObjectType;
  v3 = objc_msgSendSuper2(&v16, sel_description);
  sub_1C9A924A8();

  v4 = sub_1C984ADE8();
  MEMORY[0x1CCA90230](v4);

  MEMORY[0x1CCA90230](32, 0xE100000000000000);
  v5 = &v1[OBJC_IVAR___SNDetectionResult_impl];

  v6 = sub_1C984ADE8();
  MEMORY[0x1CCA90230](v6);

  MEMORY[0x1CCA90230](32, 0xE100000000000000);
  if (v5[72])
  {
    v7 = 0;
  }

  else
  {
    v7 = 7630702;
  }

  if (v5[72])
  {
    v8 = 0xE000000000000000;
  }

  else
  {
    v8 = 0xE300000000000000;
  }

  MEMORY[0x1CCA90230](v7, v8);

  MEMORY[0x1CCA90230](0xD00000000000001ALL, 0x80000001C9ADDD70);
  sub_1C9A92AF8();
  MEMORY[0x1CCA90230](544497952, 0xE400000000000000);
  SNDetectionResult.timeRange.getter(v15);
  v9 = objc_opt_self();
  v14[0] = v15[0];
  v14[1] = v15[1];
  v14[2] = v15[2];
  v10 = [v9 valueWithCMTimeRange_];
  v11 = [v10 description];
  sub_1C9A924A8();

  v12 = sub_1C984ADE8();
  MEMORY[0x1CCA90230](v12);

  return v17;
}

id sub_1C99D902C(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  sub_1C97FB30C();
  ObjectType = swift_getObjectType();
  sub_1C97BD318(v7, 0, &unk_1EC3C9010, 0x1E696ACD0);
  v8 = sub_1C9A92FF8();
  v20 = v8;
  if (v8)
  {
    memcpy(__dst, (v8 + OBJC_IVAR___SNDetectionResult_impl), sizeof(__dst));
    sub_1C97F9900(__dst, &v24);

    memcpy(&v4[OBJC_IVAR___SNDetectionResult_impl], __dst, 0x60uLL);
  }

  else
  {
    sub_1C99D9A70();
    v23 = swift_allocError();
    swift_willThrow();
    if (qword_1EC3C5520 != -1)
    {
      sub_1C97DAA64(&qword_1EC3C5520);
    }

    v9 = sub_1C9A91B58();
    sub_1C97BFF6C(v9, qword_1EC3D3108);
    v10 = sub_1C9A91B38();
    v11 = sub_1C9A92FB8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      __dst[0] = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_1C9849140(0xD000000000000042, 0x80000001C9ADDE00, __dst);
      _os_log_impl(&dword_1C9788000, v10, v11, "Would-be Fatal Error! %s", v12, 0xCu);
      sub_1C97A592C(v13);
      sub_1C9840CEC();
      sub_1C9840CEC();
    }

    v14 = MEMORY[0x1E6960C98];
    v15 = *MEMORY[0x1E6960C98];
    v16 = *(MEMORY[0x1E6960C98] + 16);
    v17 = *(MEMORY[0x1E6960C98] + 24);
    v18 = *(MEMORY[0x1E6960C98] + 40);

    v19 = &v4[OBJC_IVAR___SNDetectionResult_impl];
    *v19 = v15;
    *(v19 + 1) = *(v14 + 8);
    *(v19 + 2) = v16;
    *(v19 + 3) = v17;
    *(v19 + 4) = *(v14 + 32);
    *(v19 + 5) = v18;
    *(v19 + 6) = 0;
    *(v19 + 7) = 0;
    *(v19 + 8) = 0xE000000000000000;
    v19[72] = 0;
    *(v19 + 10) = 0;
    *(v19 + 11) = 0;
  }

  v26.receiver = v4;
  v26.super_class = ObjectType;
  v21 = objc_msgSendSuper2(&v26, sel_init);
  sub_1C97A5978(v3, a2);
  return v21;
}

uint64_t SNDetectionResult.binarySampleRepresentation()(double a1)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v13[0] = 0;
  v2 = [objc_opt_self() archivedDataWithRootObject:v1 requiringSecureCoding:1 error:v13];
  v3 = v13[0];
  if (v2)
  {
    v4 = sub_1C9A91618();
  }

  else
  {
    v5 = v3;
    v6 = sub_1C9A913C8();

    swift_willThrow();
    if (qword_1EC3C5520 != -1)
    {
      sub_1C97DAA64(&qword_1EC3C5520);
    }

    v7 = sub_1C9A91B58();
    sub_1C97BFF6C(v7, qword_1EC3D3108);
    v8 = sub_1C9A91B38();
    v9 = sub_1C9A92FB8();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v13[0] = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_1C9849140(0xD00000000000003ELL, 0x80000001C9ADDD90, v13);
      _os_log_impl(&dword_1C9788000, v8, v9, "Would-be Fatal Error! %s", v10, 0xCu);
      sub_1C97A592C(v11);
      sub_1C9840CEC();
      sub_1C9840CEC();
    }

    return 0;
  }

  return v4;
}

id SNDetectionResult.__allocating_init(binarySampleRepresentation:metadata:timestamp:)(uint64_t a1, unint64_t a2)
{

  v5 = objc_allocWithZone(v2);
  v6 = objc_allocWithZone(sub_1C97FB30C());
  v7 = sub_1C99D902C(a1, a2);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v7;
}

id SNDetectionResult.init(binarySampleRepresentation:metadata:timestamp:)(uint64_t a1, unint64_t a2)
{
  ObjectType = swift_getObjectType();

  v5 = objc_allocWithZone(ObjectType);
  sub_1C99D902C(a1, a2);
  sub_1C97C926C();
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v5;
}

void sub_1C99D9680(uint64_t *a1@<X8>)
{
  SNDetectionResult.timeRange.getter(&range);
  v3 = CMTimeRangeCopyAsDictionary(&range, *MEMORY[0x1E695E480]);
  if (!v3)
  {
    v3 = [objc_allocWithZone(MEMORY[0x1E695DF20]) init];
  }

  sub_1C97A2CEC(&qword_1EC3C69E8, &unk_1C9A9D4A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C9AA95C0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  v5 = v1 + OBJC_IVAR___SNDetectionResult_impl;
  v6 = *(v1 + OBJC_IVAR___SNDetectionResult_impl + 64);
  v7 = MEMORY[0x1E69E6158];
  *(inited + 48) = *(v1 + OBJC_IVAR___SNDetectionResult_impl + 56);
  *(inited + 56) = v6;
  *(inited + 72) = v7;
  *(inited + 80) = 0x6E656469666E6F63;
  *(inited + 88) = 0xEA00000000006563;
  v8 = *(v5 + 48);
  v9 = objc_allocWithZone(MEMORY[0x1E696AD98]);

  v10 = [v9 initWithDouble_];
  v12 = sub_1C97BD318(v11, 0, &qword_1EC3C54B0, 0x1E696AD98);
  *(inited + 96) = v10;
  *(inited + 120) = v12;
  *(inited + 128) = 0x676E6152656D6974;
  *(inited + 136) = 0xE900000000000065;
  v14 = sub_1C97BD318(v13, 0, &qword_1EC3C4A18, 0x1E695DF20);
  *(inited + 144) = v3;
  *(inited + 168) = v14;
  *(inited + 176) = 0x6465746365746564;
  *(inited + 184) = 0xE800000000000000;
  v15 = *(v5 + 72);
  v16 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  v17 = v3;
  *(inited + 192) = [v16 initWithBool_];
  *(inited + 216) = v12;
  *(inited + 224) = 0xD000000000000012;
  *(inited + 232) = 0x80000001C9AD54E0;
  v18 = SNDetectionResult.detectorIdentifier.getter();
  *(inited + 264) = v7;
  *(inited + 240) = v18;
  *(inited + 248) = v19;
  v20 = sub_1C9A92348();
  a1[3] = sub_1C97A2CEC(&qword_1EC3C6330, qword_1C9A9BBC0);

  *a1 = v20;
}

id SNDetectionResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_1C99D99DC@<D0>(_OWORD *a1@<X8>)
{
  SNDetectionResult.timeRange.getter(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

unint64_t sub_1C99D9A70()
{
  result = qword_1EC3D0410;
  if (!qword_1EC3D0410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D0410);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SNDetectionResult.DomainError(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1C99D9B74()
{
  result = qword_1EC3D0418[0];
  if (!qword_1EC3D0418[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC3D0418);
  }

  return result;
}

void *sub_1C99D9BF4(void *a1)
{

  return memcpy(a1, (v2 + v1), 0x60uLL);
}

uint64_t sub_1C99D9C30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Future.State(319, *(a1 + 80), a3, a4);
  if (v5 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

char *sub_1C99D9CD4()
{
  v1 = *v0;

  v2 = *(*v0 + 96);
  v5 = type metadata accessor for Future.State(0, *(v1 + 80), v3, v4);
  (*(*(v5 - 8) + 8))(v0 + v2, v5);
  return v0;
}

uint64_t sub_1C99D9D68()
{
  sub_1C99D9CD4();

  return swift_deallocClassInstance();
}

uint64_t sub_1C99D9DF0(uint64_t a1)
{
  sub_1C9A91748();
  sub_1C9A93258();
  swift_getFunctionTypeMetadata1();
  sub_1C982EDD8();
  result = sub_1C9A92358();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C99D9EBC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_22;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_22:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_22;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    switch(v5)
    {
      case 2:
        LODWORD(v5) = *a1;
        break;
      case 3:
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v5) = *a1;
        break;
      default:
        LODWORD(v5) = *a1;
        break;
    }
  }

  return (v5 | v10) + 255;
}

void sub_1C99D9FE0(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if (a3 < 0xFF)
  {
    v8 = 0;
  }

  else if (v6 <= 3)
  {
    v11 = ((a3 + ~(-1 << v7) - 254) >> v7) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFE)
  {
    v9 = a2 - 255;
    if (v6 < 4)
    {
      v10 = (v9 >> v7) + 1;
      if (v5 != -1)
      {
        v13 = v9 & ~(-1 << v7);
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v6 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v9;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
    }

    switch(v8)
    {
      case 1:
        a1[v6] = v10;
        break;
      case 2:
        *&a1[v6] = v10;
        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v6] = v10;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v6] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v5] = -a2;
        }

        break;
    }
  }
}

_BYTE *sub_1C99DA1A4(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1C99DA274(uint64_t a1)
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

uint64_t sub_1C99DA308(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 32);
  v13 = *(v8 + 16);
  v14 = v13;
  v15 = v10;
  v16 = v9;
  v17 = v11;
  type metadata accessor for SplitStreamResult.Inner(0, &v14);
  (*(v5 + 16))(v7, a1, a3);
  *&v14 = sub_1C99DA454(v7);
  swift_getWitnessTable();
  sub_1C9A91F08();
}

uint64_t sub_1C99DA568(uint64_t a1)
{
  v3 = *(*v1 + 88);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v18 - v5;
  v9 = type metadata accessor for StreamResult(0, v3, v7, v8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v18 - v10);
  (*(v12 + 16))(&v18 - v10, a1, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v19 = *v11;
      v14 = v19;
      v15 = v19;
      sub_1C9A91D08();

      v16 = sub_1C9A91D78();
    }

    else
    {
      v19 = 0;
      sub_1C9A91D08();
      return sub_1C9A91D78();
    }
  }

  else
  {
    (*(v4 + 32))(v6, v11, v3);
    v16 = sub_1C9A91D28();
    (*(v4 + 8))(v6, v3);
  }

  return v16;
}

uint64_t sub_1C99DA7F0(uint64_t a1)
{
  v29 = *v1;
  v28 = *(v29 + 96);
  v3 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v27 = &v25 - v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v25 - v10;
  swift_getAssociatedConformanceWitness();
  v12 = sub_1C9A91D48();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v25 - v13;
  (*(v15 + 16))(&v25 - v13, a1);
  if (sub_1C97ABF20(v14, 1, AssociatedTypeWitness) == 1)
  {
    v30 = 0;
    return sub_1C9A91D08();
  }

  else
  {
    v26 = *(v6 + 32);
    v26(v11, v14, AssociatedTypeWitness);
    v17 = *(v3 + 16);
    v18 = v1 + *(*v1 + 120);
    v19 = v27;
    v20 = v3;
    v21 = v28;
    v17(v27, v18, v28);
    (*(v6 + 16))(v9, v11, AssociatedTypeWitness);
    v22 = sub_1C9A93AE8();
    if (v22)
    {
      v23 = v22;
      (*(v6 + 8))(v9, AssociatedTypeWitness);
    }

    else
    {
      v23 = swift_allocError();
      v26(v24, v9, AssociatedTypeWitness);
    }

    v30 = v23;
    sub_1C9A91D08();

    (*(v20 + 8))(v19, v21);
    return (*(v6 + 8))(v11, AssociatedTypeWitness);
  }
}

uint64_t sub_1C99DAC6C()
{
  sub_1C99DABFC();

  return swift_deallocClassInstance();
}

uint64_t sub_1C99DACD8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_1C99DB050();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C99DAD50(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_22;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 253) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_22:
      v11 = *(a1 + v4);
      if (v11 >= 3)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_22;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    switch(v5)
    {
      case 2:
        LODWORD(v5) = *a1;
        break;
      case 3:
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v5) = *a1;
        break;
      default:
        LODWORD(v5) = *a1;
        break;
    }
  }

  return (v5 | v10) + 254;
}

void sub_1C99DAE74(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if (a3 < 0xFE)
  {
    v8 = 0;
  }

  else if (v6 <= 3)
  {
    v11 = ((a3 + ~(-1 << v7) - 253) >> v7) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFD)
  {
    v9 = a2 - 254;
    if (v6 < 4)
    {
      v10 = (v9 >> v7) + 1;
      if (v5 != -1)
      {
        v13 = v9 & ~(-1 << v7);
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v6 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v9;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
    }

    switch(v8)
    {
      case 1:
        a1[v6] = v10;
        break;
      case 2:
        *&a1[v6] = v10;
        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v6] = v10;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v6] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v5] = -a2;
        }

        break;
    }
  }
}

unint64_t sub_1C99DB050()
{
  result = qword_1EC3D06A0[0];
  if (!qword_1EC3D06A0[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_1EC3D06A0);
  }

  return result;
}

uint64_t sub_1C99DB154(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C99DB1C4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return sub_1C97ABF20(a1, v5, v4);
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return sub_1C97ABF20(a1, v5, v4);
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_1C99DB300(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v8 <= 3)
    {
      v15 = ((v11 + ~(-1 << v9)) >> v9) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 >= a2)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:

          sub_1C97ACC50(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    v13 = ~v7 + a2;
    if (v8 < 4)
    {
      v14 = (v13 >> v9) + 1;
      if (v8)
      {
        v17 = v13 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v8 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        break;
      case 2:
        *&a1[v8] = v14;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        break;
      default:
        return;
    }
  }
}

void *sub_1C99DB530(void *a1, uint64_t a2)
{
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  v30 = v8;
  v31 = v4;
  if (v7)
  {
    while (1)
    {
      v10 = v9;
LABEL_8:
      v11 = (v10 << 10) | (16 * __clz(__rbit64(v7)));
      v12 = (*(a2 + 48) + v11);
      v14 = *v12;
      v13 = v12[1];
      v15 = (*(a2 + 56) + v11);
      v16 = v15[1];
      v32 = *v15;

      swift_isUniquelyReferenced_nonNull_native();
      v17 = sub_1C9A32230(v14, v13);
      if (__OFADD__(a1[2], (v18 & 1) == 0))
      {
        break;
      }

      v19 = v17;
      v20 = v18;
      sub_1C97A2CEC(&qword_1EC3C7BB0, &qword_1C9AA0018);
      if (sub_1C9A93748())
      {
        v21 = sub_1C9A32230(v14, v13);
        if ((v20 & 1) != (v22 & 1))
        {
          goto LABEL_22;
        }

        v19 = v21;
      }

      v7 &= v7 - 1;
      if (v20)
      {

        v23 = (a1[7] + 16 * v19);
        *v23 = v32;
        v23[1] = v16;
      }

      else
      {
        a1[(v19 >> 6) + 8] |= 1 << v19;
        v24 = (a1[6] + 16 * v19);
        *v24 = v14;
        v24[1] = v13;
        v25 = (a1[7] + 16 * v19);
        *v25 = v32;
        v25[1] = v16;
        v26 = a1[2];
        v27 = __OFADD__(v26, 1);
        v28 = v26 + 1;
        if (v27)
        {
          goto LABEL_21;
        }

        a1[2] = v28;
      }

      v9 = v10;
      v8 = v30;
      v4 = v31;
      if (!v7)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v8)
      {

        return a1;
      }

      v7 = *(v4 + 8 * v10);
      ++v9;
      if (v7)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = sub_1C9A93BF8();
  __break(1u);
  return result;
}

__objc2_class **sub_1C99DB764(uint64_t a1, uint64_t a2, void *a3)
{
  v25[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1C9A924E8();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = &off_1E8348000;
  v7 = [objc_allocWithZone(MEMORY[0x1E696AED8]) init];
  v8 = sub_1C9A91488();
  [v7 setExecutableURL_];

  sub_1C99DBC1C(a2, v7);
  if (a3)
  {
    v9 = a3;
  }

  else
  {
    v10 = sub_1C9A92348();
    v9 = sub_1C99DBB5C(0, v10, v11);
  }

  sub_1C99DBC7C(v9, v7);
  v12 = [objc_allocWithZone(MEMORY[0x1E696AE00]) init];
  [v7 setStandardOutput_];
  v25[0] = 0;
  if (![v7 launchAndReturnError_])
  {
    v24 = v25[0];
    sub_1C9A913C8();

    swift_willThrow();
    goto LABEL_9;
  }

  v13 = v25[0];
  [v7 waitUntilExit];
  v14 = [v12 fileHandleForReading];
  v15 = [v14 readDataToEndOfFile];

  v16 = sub_1C9A91618();
  v18 = v17;

  v19 = [v12 fileHandleForReading];
  [v19 closeFile];

  sub_1C9A924D8();
  result = sub_1C9A924B8();
  if (v21)
  {
    v6 = result;
    if (![v7 terminationStatus])
    {
      sub_1C97A5978(v16, v18);

      return v6;
    }

    v22 = [v7 terminationStatus];
    sub_1C99DBCF4();
    swift_allocError();
    *v23 = v22;
    swift_willThrow();
    sub_1C97A5978(v16, v18);
LABEL_9:

    return v6;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C99DBAA8(uint64_t a1)
{
  sub_1C9A93CC8();
  MEMORY[0x1CCA91980](0);
  MEMORY[0x1CCA91980](a1);
  return sub_1C9A93D18();
}

uint64_t sub_1C99DBB0C()
{
  v1 = *v0;
  sub_1C9A93CC8();
  MEMORY[0x1CCA91980](0);
  MEMORY[0x1CCA91980](v1);
  return sub_1C9A93D18();
}

void *sub_1C99DBB5C(void *a1, uint64_t a2, double a3)
{
  if (a1)
  {
    v4 = a1;
  }

  else
  {
    v5 = [objc_opt_self() processInfo];
    v6 = [v5 environment];

    v4 = sub_1C9A92328();
  }

  v7 = sub_1C99DB530(v4, a2);

  return v7;
}

void sub_1C99DBC1C(uint64_t a1, void *a2)
{
  v3 = sub_1C9A92768();
  [a2 setArguments_];
}

void sub_1C99DBC7C(uint64_t a1, void *a2)
{
  v3 = sub_1C9A922F8();

  [a2 setEnvironment_];
}

unint64_t sub_1C99DBCF4()
{
  result = qword_1EC3D0728;
  if (!qword_1EC3D0728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D0728);
  }

  return result;
}

unint64_t sub_1C99DBD5C()
{
  result = qword_1EC3D0730[0];
  if (!qword_1EC3D0730[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC3D0730);
  }

  return result;
}

uint64_t *sub_1C99DBDB0(void *a1, uint64_t a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v9[0] = 0;
  v4 = [a1 setActive:1 withOptions:a2 error:v9];
  v5 = v9[0];
  if (v4)
  {
    *(v2 + 16) = a1;
    v6 = v5;
  }

  else
  {
    v7 = v9[0];
    sub_1C9A913C8();

    swift_willThrow();
    swift_deallocPartialClassInstance();
  }

  return v2;
}

uint64_t sub_1C99DBEB0()
{
  v1 = v0;
  v15[1] = *MEMORY[0x1E69E9840];
  v2 = *(v0 + 16);
  v15[0] = 0;
  if ([v2 setActive:0 error:v15])
  {
    v3 = v15[0];
  }

  else
  {
    v4 = v15[0];
    v5 = sub_1C9A913C8();

    swift_willThrow();
    if (qword_1EC3C5520 != -1)
    {
      swift_once();
    }

    v6 = sub_1C9A91B58();
    sub_1C97BFF6C(v6, qword_1EC3D3108);
    v7 = v5;
    v8 = sub_1C9A91B38();
    v9 = sub_1C9A92FA8();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      v12 = v5;
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 4) = v13;
      *v11 = v13;
      _os_log_impl(&dword_1C9788000, v8, v9, "Failed to deactivate audio session: %@", v10, 0xCu);
      sub_1C97BFFA4(v11);
      MEMORY[0x1CCA93280](v11, -1, -1);
      MEMORY[0x1CCA93280](v10, -1, -1);
    }

    else
    {
    }
  }

  return v1;
}

uint64_t sub_1C99DC090()
{
  sub_1C99DBEB0();

  return swift_deallocClassInstance();
}

id sub_1C99DC0E8()
{
  v1 = [v0 decoupledIO];
  v2 = &selRef_inputSampleRate;
  if (!v1)
  {
    v2 = &selRef_sampleRate;
  }

  return [v0 *v2];
}

uint64_t sub_1C99DC184(void *a1, double a2)
{
  type metadata accessor for XPCDataEncoder(a2);
  sub_1C97AA878();
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  v5 = *(v2 + 24);
  v6 = *(v5 + 32);
  v7 = *(v5 + 40);
  type metadata accessor for XPCProxyEncoder(v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v6;
  v9[5] = v7;
  type metadata accessor for XPCEncoder(v10);
  inited = swift_initStackObject();
  *(inited + 16) = v4;
  *(inited + 24) = v9;
  v12 = *(v2 + 16);
  sub_1C97AA878();
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1C99DCB5C;
  *(v13 + 24) = v4;
  v14 = *(v12 + 16);
  if (v14)
  {
    v15 = *(v12 + 24);
    sub_1C97A8E8C();
    v16 = swift_allocError();
    sub_1C99DCB8C(v16, v17);
    *(v12 + 16) = v14;
    *(v12 + 24) = v15;

LABEL_5:
  }

  sub_1C97AA878();
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1C99DC9E4;
  *(v18 + 24) = v13;
  *(v12 + 16) = sub_1C98CB318;
  *(v12 + 24) = v18;
  v19 = *(v2 + 24);
  sub_1C97AA878();
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1C99DCB74;
  *(v20 + 24) = v9;
  v21 = *(v19 + 16);
  if (v21)
  {
    v22 = *(v19 + 24);
    sub_1C97A8E8C();
    v23 = swift_allocError();
    sub_1C99DCB8C(v23, v24);
    *(v19 + 16) = v21;
    *(v19 + 24) = v22;

    goto LABEL_5;
  }

  sub_1C97AA878();
  v26 = swift_allocObject();
  *(v26 + 16) = sub_1C99DCA00;
  *(v26 + 24) = v20;
  *(v19 + 16) = sub_1C97A8E70;
  *(v19 + 24) = v26;
  v27 = a1[3];
  v28 = a1[4];
  sub_1C97A5A8C(a1, v27);
  v29 = *(v28 + 8);

  v29(inited, v27, v28);
  if (!v30)
  {
    swift_setDeallocating();
    sub_1C9890968();
    sub_1C97AA878();
    return swift_deallocClassInstance();
  }
}