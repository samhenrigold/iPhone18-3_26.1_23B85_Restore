uint64_t sub_100033FA8(uint64_t a1)
{
  v2 = sub_10003C7D8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100033FE4(uint64_t a1)
{
  v2 = sub_10003C7D8();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_100034020@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_10003C654(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_10003404C(uint64_t a1, uint64_t a2, void *a3)
{
  v26 = 0;
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  v4 = JSONDecoder.init()();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100146DA4(0, 3, 0);
  v5 = _swiftEmptyArrayStorage;
  v7 = _swiftEmptyArrayStorage[2];
  v6 = _swiftEmptyArrayStorage[3];
  v8 = v7 + 1;
  if (v7 >= v6 >> 1)
  {
    sub_100146DA4((v6 > 1), v7 + 1, 1);
    v5 = aBlock[0];
  }

  v5[2] = v8;
  v9 = &v5[2 * v7];
  strcpy(v9 + 32, "currency_code");
  *(v9 + 23) = -4864;
  aBlock[0] = v5;
  v10 = v5[3];
  v11 = v7 + 2;
  if (v8 >= v10 >> 1)
  {
    sub_100146DA4((v10 > 1), v11, 1);
    v5 = aBlock[0];
  }

  v5[2] = v11;
  v12 = &v5[2 * v8];
  v12[4] = 0xD000000000000011;
  v12[5] = 0x80000001001CA600;
  v13 = v4;
  aBlock[0] = v5;
  v15 = v5[2];
  v14 = v5[3];
  if (v15 >= v14 >> 1)
  {
    sub_100146DA4((v14 > 1), v15 + 1, 1);
    v5 = aBlock[0];
  }

  v5[2] = v15 + 1;
  v16 = &v5[2 * v15];
  v16[4] = 0xD000000000000012;
  v16[5] = 0x80000001001CA620;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v18 = swift_allocObject();
  v18[2] = v13;
  v18[3] = a1;
  v18[4] = a2;
  v18[5] = &v26;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_10003C2E4;
  *(v19 + 24) = v18;
  aBlock[4] = sub_10003C9F0;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10003ABFC;
  aBlock[3] = &unk_100218408;
  v20 = _Block_copy(aBlock);

  [a3 enumeratePersistentIDsAndProperties:isa usingBlock:v20];

  _Block_release(v20);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    if (v26)
    {
      swift_willThrow();
      swift_errorRetain();
    }
  }

  return result;
}

uint64_t sub_10003445C(uint64_t a1, uint64_t a2, void *a3)
{
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  v5 = JSONDecoder.init()();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100146DA4(0, 4, 0);
  v6 = _swiftEmptyArrayStorage;
  v8 = _swiftEmptyArrayStorage[2];
  v7 = _swiftEmptyArrayStorage[3];
  v9 = v8 + 1;
  if (v8 >= v7 >> 1)
  {
    sub_100146DA4((v7 > 1), v8 + 1, 1);
    v6 = aBlock[0];
  }

  v6[2] = v9;
  v10 = &v6[2 * v8];
  v10[4] = 0x696669746E656469;
  v10[5] = 0xEA00000000007265;
  aBlock[0] = v6;
  v11 = v6[3];
  v12 = v8 + 2;
  if (v9 >= v11 >> 1)
  {
    sub_100146DA4((v11 > 1), v12, 1);
    v6 = aBlock[0];
  }

  v6[2] = v12;
  v13 = &v6[2 * v9];
  v13[4] = 0x616E5F70756F7267;
  v13[5] = 0xEA0000000000656DLL;
  aBlock[0] = v6;
  v15 = v6[2];
  v14 = v6[3];
  v16 = v15 + 1;
  if (v15 >= v14 >> 1)
  {
    sub_100146DA4((v14 > 1), v15 + 1, 1);
    v6 = aBlock[0];
  }

  v6[2] = v16;
  v17 = &v6[2 * v15];
  v17[4] = 0x6F635F7972746572;
  v17[5] = 0xEB00000000746E75;
  aBlock[0] = v6;
  v18 = v6[3];
  v19 = v15 + 2;
  if (v16 >= v18 >> 1)
  {
    sub_100146DA4((v18 > 1), v19, 1);
    v6 = aBlock[0];
  }

  v6[2] = v19;
  v20 = &v6[2 * v16];
  v20[4] = 0xD000000000000016;
  v20[5] = 0x80000001001CA100;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v22 = swift_allocObject();
  v22[2] = v5;
  v22[3] = a1;
  v22[4] = a2;
  v22[5] = &v29;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_10003C2D8;
  *(v23 + 24) = v22;
  aBlock[4] = sub_10003C9F0;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10003ABFC;
  aBlock[3] = &unk_100218390;
  v24 = _Block_copy(aBlock);

  [a3 enumeratePersistentIDsAndProperties:isa usingBlock:v24];

  _Block_release(v24);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    if (v29)
    {
      swift_willThrow();
      swift_errorRetain();
    }
  }

  return result;
}

uint64_t sub_1000349A0(uint64_t a1, uint64_t a2, void *a3)
{
  v38 = 0;
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  v36 = JSONDecoder.init()();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100146DA4(0, 9, 0);
  v3 = 0;
  v4 = _swiftEmptyArrayStorage;
  v5 = 0x80000001001CA0C0;
  v6 = 0x80000001001CA0A0;
  v7 = 0x80000001001CA070;
  v8 = 0x80000001001CA030;
  do
  {
    v9 = *(&off_1002133F8 + v3 + 32);
    v10 = 0xD000000000000017;
    if (v9 == 7)
    {
      v10 = 0xD000000000000011;
      v11 = v6;
    }

    else
    {
      v11 = v5;
    }

    if (v9 == 6)
    {
      v10 = 0x5F676E69646E6570;
      v11 = 0xEE0073746E657665;
    }

    if (v9 == 4)
    {
      v12 = 0xD000000000000010;
    }

    else
    {
      v12 = 0xD000000000000011;
    }

    if (v9 == 4)
    {
      v13 = 0x80000001001CA050;
    }

    else
    {
      v13 = v7;
    }

    if (*(&off_1002133F8 + v3 + 32) <= 5u)
    {
      v10 = v12;
      v11 = v13;
    }

    v14 = 0xD000000000000014;
    if (v9 == 2)
    {
      v14 = 0x69737265766E6F63;
      v15 = 0xED000064695F6E6FLL;
    }

    else
    {
      v15 = v8;
    }

    if (*(&off_1002133F8 + v3 + 32))
    {
      v16 = 0xD000000000000012;
    }

    else
    {
      v16 = 0x64695F79726F7473;
    }

    if (*(&off_1002133F8 + v3 + 32))
    {
      v17 = 0x80000001001CA000;
    }

    else
    {
      v17 = 0xE800000000000000;
    }

    if (*(&off_1002133F8 + v3 + 32) <= 1u)
    {
      v14 = v16;
      v15 = v17;
    }

    if (*(&off_1002133F8 + v3 + 32) <= 3u)
    {
      v18 = v14;
    }

    else
    {
      v18 = v10;
    }

    if (*(&off_1002133F8 + v3 + 32) <= 3u)
    {
      v19 = v15;
    }

    else
    {
      v19 = v11;
    }

    aBlock[0] = v4;
    v21 = v4[2];
    v20 = v4[3];
    if (v21 >= v20 >> 1)
    {
      v29 = v8;
      v31 = v6;
      v32 = v5;
      v30 = v7;
      sub_100146DA4((v20 > 1), v21 + 1, 1);
      v8 = v29;
      v7 = v30;
      v6 = v31;
      v5 = v32;
      v4 = aBlock[0];
    }

    ++v3;
    v4[2] = v21 + 1;
    v22 = &v4[2 * v21];
    v22[4] = v18;
    v22[5] = v19;
  }

  while (v3 != 9);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v24 = swift_allocObject();
  v24[2] = v36;
  v24[3] = a1;
  v24[4] = a2;
  v24[5] = &v38;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_10003C154;
  *(v25 + 24) = v24;
  aBlock[4] = sub_10003C9F0;
  aBlock[5] = v25;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10003ABFC;
  aBlock[3] = &unk_100218318;
  v26 = _Block_copy(aBlock);

  [a3 enumeratePersistentIDsAndProperties:isa usingBlock:v26];

  _Block_release(v26);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    if (v38)
    {
      swift_willThrow();
      swift_errorRetain();
    }
  }

  return result;
}

uint64_t sub_100034DD4(uint64_t a1, uint64_t a2, void *a3)
{
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  v6 = JSONDecoder.init()();
  v17[0] = _swiftEmptyArrayStorage;
  sub_100146DA4(0, 1, 0);
  v7 = _swiftEmptyArrayStorage;
  v9 = _swiftEmptyArrayStorage[2];
  v8 = _swiftEmptyArrayStorage[3];
  if (v9 >= v8 >> 1)
  {
    sub_100146DA4((v8 > 1), v9 + 1, 1);
    v7 = v17[0];
  }

  v7[2] = v9 + 1;
  v10 = &v7[2 * v9];
  v10[4] = 0x76655F74756F6E73;
  v10[5] = 0xEB00000000746E65;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v12 = swift_allocObject();
  v12[2] = v6;
  v12[3] = a1;
  v12[4] = a2;
  v12[5] = &v18;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_10003C0A0;
  *(v13 + 24) = v12;
  v17[4] = sub_10003C9F0;
  v17[5] = v13;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 1107296256;
  v17[2] = sub_10003ABFC;
  v17[3] = &unk_1002182A0;
  v14 = _Block_copy(v17);

  [a3 enumeratePersistentIDsAndProperties:isa usingBlock:v14];

  _Block_release(v14);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    if (v18)
    {
      swift_willThrow();
      swift_errorRetain();
    }
  }

  return result;
}

uint64_t sub_10003505C(uint64_t a1, uint64_t a2, void *a3)
{
  v34 = 0;
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  v32 = JSONDecoder.init()();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100146DA4(0, 9, 0);
  v3 = 0;
  v4 = _swiftEmptyArrayStorage;
  v5 = 0x80000001001CA620;
  v6 = 0x80000001001CA000;
  do
  {
    v7 = *(&off_100213DA0 + v3 + 32);
    v8 = 0xED000064695F6E6FLL;
    if (v7 == 7)
    {
      v9 = 0xD000000000000012;
    }

    else
    {
      v9 = 0x6D6E6F7269766E65;
    }

    if (v7 == 7)
    {
      v10 = v5;
    }

    else
    {
      v10 = 0xEB00000000746E65;
    }

    if (v7 == 6)
    {
      v9 = 0x5F746361706D6F63;
      v10 = 0xEB0000000073776ALL;
    }

    if (v7 == 4)
    {
      v11 = 0x6D617473656D6974;
    }

    else
    {
      v11 = 0xD000000000000010;
    }

    if (v7 == 4)
    {
      v12 = 0xE900000000000070;
    }

    else
    {
      v12 = 0x80000001001CA670;
    }

    if (*(&off_100213DA0 + v3 + 32) <= 5u)
    {
      v9 = v11;
      v10 = v12;
    }

    if (v7 == 2)
    {
      v13 = 0xD000000000000012;
    }

    else
    {
      v13 = 0x6F7774656E5F6461;
    }

    if (v7 == 2)
    {
      v14 = v6;
    }

    else
    {
      v14 = 0xED000064695F6B72;
    }

    if (*(&off_100213DA0 + v3 + 32))
    {
      v15 = 0xD000000000000011;
    }

    else
    {
      v15 = 0x6973736572706D69;
    }

    if (*(&off_100213DA0 + v3 + 32))
    {
      v8 = 0x80000001001CA650;
    }

    if (*(&off_100213DA0 + v3 + 32) > 1u)
    {
      v8 = v14;
    }

    else
    {
      v13 = v15;
    }

    if (*(&off_100213DA0 + v3 + 32) <= 3u)
    {
      v16 = v13;
    }

    else
    {
      v16 = v9;
    }

    if (*(&off_100213DA0 + v3 + 32) <= 3u)
    {
      v17 = v8;
    }

    else
    {
      v17 = v10;
    }

    aBlock[0] = v4;
    v19 = v4[2];
    v18 = v4[3];
    if (v19 >= v18 >> 1)
    {
      v27 = v6;
      v28 = v5;
      sub_100146DA4((v18 > 1), v19 + 1, 1);
      v6 = v27;
      v5 = v28;
      v4 = aBlock[0];
    }

    ++v3;
    v4[2] = v19 + 1;
    v20 = &v4[2 * v19];
    v20[4] = v16;
    v20[5] = v17;
  }

  while (v3 != 9);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v22 = swift_allocObject();
  v22[2] = v32;
  v22[3] = a1;
  v22[4] = a2;
  v22[5] = &v34;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_10003B5DC;
  *(v23 + 24) = v22;
  aBlock[4] = sub_10003B5E8;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10003ABFC;
  aBlock[3] = &unk_100217DF0;
  v24 = _Block_copy(aBlock);

  [a3 enumeratePersistentIDsAndProperties:isa usingBlock:v24];

  _Block_release(v24);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    if (v34)
    {
      swift_willThrow();
      swift_errorRetain();
    }
  }

  return result;
}

uint64_t sub_1000354C4(uint64_t a1, uint64_t a2, void *a3)
{
  v23 = 0;
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  v6 = JSONDecoder.init()();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100146DA4(0, 27, 0);
  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  do
  {
    v9 = sub_1000AF1D0(*(&off_1002143B8 + v7 + 32));
    aBlock[0] = v8;
    v12 = v8[2];
    v11 = v8[3];
    if (v12 >= v11 >> 1)
    {
      v20 = v10;
      v21 = v9;
      sub_100146DA4((v11 > 1), v12 + 1, 1);
      v10 = v20;
      v9 = v21;
      v8 = aBlock[0];
    }

    ++v7;
    v8[2] = v12 + 1;
    v13 = &v8[2 * v12];
    v13[4] = v9;
    v13[5] = v10;
  }

  while (v7 != 27);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v15 = swift_allocObject();
  v15[2] = v6;
  v15[3] = a1;
  v15[4] = a2;
  v15[5] = &v23;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_10003BFEC;
  *(v16 + 24) = v15;
  aBlock[4] = sub_10003C9F0;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10003ABFC;
  aBlock[3] = &unk_100218228;
  v17 = _Block_copy(aBlock);

  [a3 enumeratePersistentIDsAndProperties:isa usingBlock:v17];

  _Block_release(v17);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    if (v23)
    {
      swift_willThrow();
      swift_errorRetain();
    }
  }

  return result;
}

uint64_t sub_10003576C(uint64_t a1, uint64_t a2, void *a3)
{
  v26 = 0;
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  v5 = JSONDecoder.init()();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100146DA4(0, 3, 0);
  v6 = _swiftEmptyArrayStorage;
  v23 = a2;
  v8 = _swiftEmptyArrayStorage[2];
  v7 = _swiftEmptyArrayStorage[3];
  v9 = v8 + 1;
  if (v8 >= v7 >> 1)
  {
    sub_100146DA4((v7 > 1), v8 + 1, 1);
    v6 = aBlock[0];
  }

  v6[2] = v9;
  v10 = &v6[2 * v8];
  v10[4] = 0xD000000000000012;
  v10[5] = 0x80000001001CA000;
  aBlock[0] = v6;
  v11 = v6[3];
  v12 = v8 + 2;
  if (v9 >= v11 >> 1)
  {
    sub_100146DA4((v11 > 1), v12, 1);
    v6 = aBlock[0];
  }

  v6[2] = v12;
  v13 = &v6[2 * v9];
  strcpy(v13 + 32, "conversion_tag");
  v13[47] = -18;
  aBlock[0] = v6;
  v15 = v6[2];
  v14 = v6[3];
  if (v15 >= v14 >> 1)
  {
    sub_100146DA4((v14 > 1), v15 + 1, 1);
    v6 = aBlock[0];
  }

  v6[2] = v15 + 1;
  v16 = &v6[2 * v15];
  v16[4] = 0xD000000000000012;
  v16[5] = 0x80000001001CA620;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v18 = swift_allocObject();
  v18[2] = v5;
  v18[3] = a1;
  v18[4] = v23;
  v18[5] = &v26;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_10003BF8C;
  *(v19 + 24) = v18;
  aBlock[4] = sub_10003C9F0;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10003ABFC;
  aBlock[3] = &unk_1002181B0;
  v20 = _Block_copy(aBlock);

  [a3 enumeratePersistentIDsAndProperties:isa usingBlock:v20];

  _Block_release(v20);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    if (v26)
    {
      swift_willThrow();
      swift_errorRetain();
    }
  }

  return result;
}

uint64_t sub_100035B70(uint64_t a1, uint64_t a2, void *a3)
{
  v27 = 0;
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  v25 = JSONDecoder.init()();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100146DA4(0, 9, 0);
  v3 = 0;
  v4 = _swiftEmptyArrayStorage;
  do
  {
    v5 = *(&off_100214550 + v3 + 32);
    if (v5 <= 3)
    {
      if (v5 == 2)
      {
        v6 = 0x5F65746176697270;
      }

      else
      {
        v6 = 0x657A696C616E6966;
      }

      if (v5 == 2)
      {
        v7 = 0xED00007475706E69;
      }

      else
      {
        v7 = 0xEF6E656B6F745F64;
      }

      if (*(&off_100214550 + v3 + 32))
      {
        v8 = 0xD000000000000012;
      }

      else
      {
        v8 = 0x69737265766E6F63;
      }

      if (*(&off_100214550 + v3 + 32))
      {
        v9 = 0x80000001001CA000;
      }

      else
      {
        v9 = 0xED000064695F6E6FLL;
      }

      v10 = *(&off_100214550 + v3 + 32) <= 1u;
    }

    else
    {
      if (v5 == 7)
      {
        v6 = 0x6D6E6F7269766E65;
      }

      else
      {
        v6 = 0x636F6C6C615F7369;
      }

      if (v5 == 7)
      {
        v7 = 0xEB00000000746E65;
      }

      else
      {
        v7 = 0xEC00000064657461;
      }

      if (v5 == 6)
      {
        v6 = 0x69737265766E6F63;
        v7 = 0xEF657079745F6E6FLL;
      }

      if (v5 == 4)
      {
        v8 = 0x6D617473656D6974;
      }

      else
      {
        v8 = 0x6369666974726563;
      }

      if (v5 == 4)
      {
        v9 = 0xE900000000000070;
      }

      else
      {
        v9 = 0xEB00000000657461;
      }

      v10 = *(&off_100214550 + v3 + 32) <= 5u;
    }

    if (v10)
    {
      v11 = v8;
    }

    else
    {
      v11 = v6;
    }

    if (v10)
    {
      v12 = v9;
    }

    else
    {
      v12 = v7;
    }

    aBlock[0] = v4;
    v14 = v4[2];
    v13 = v4[3];
    if (v14 >= v13 >> 1)
    {
      sub_100146DA4((v13 > 1), v14 + 1, 1);
      v4 = aBlock[0];
    }

    ++v3;
    v4[2] = v14 + 1;
    v15 = &v4[2 * v14];
    v15[4] = v11;
    v15[5] = v12;
  }

  while (v3 != 9);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v17 = swift_allocObject();
  v17[2] = v25;
  v17[3] = a1;
  v17[4] = a2;
  v17[5] = &v27;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_10003BED8;
  *(v18 + 24) = v17;
  aBlock[4] = sub_10003C9F0;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10003ABFC;
  aBlock[3] = &unk_100218138;
  v19 = _Block_copy(aBlock);

  [a3 enumeratePersistentIDsAndProperties:isa usingBlock:v19];

  _Block_release(v19);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    if (v27)
    {
      swift_willThrow();
      swift_errorRetain();
    }
  }

  return result;
}

uint64_t sub_100036028(uint64_t a1, uint64_t a2, void *a3)
{
  v29 = 0;
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  v3 = JSONDecoder.init()();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100146DA4(0, 4, 0);
  v4 = _swiftEmptyArrayStorage;
  v6 = _swiftEmptyArrayStorage[2];
  v5 = _swiftEmptyArrayStorage[3];
  v7 = v6 + 1;
  if (v6 >= v5 >> 1)
  {
    sub_100146DA4((v5 > 1), v6 + 1, 1);
    v4 = aBlock[0];
  }

  v4[2] = v7;
  v8 = &v4[2 * v6];
  v8[4] = 0xD000000000000012;
  v8[5] = 0x80000001001CA000;
  aBlock[0] = v4;
  v9 = v4[3];
  v10 = v6 + 2;
  if (v7 >= v9 >> 1)
  {
    sub_100146DA4((v9 > 1), v10, 1);
    v4 = aBlock[0];
  }

  v4[2] = v10;
  v11 = &v4[2 * v7];
  v11[4] = 0xD000000000000015;
  v11[5] = 0x80000001001CAEA0;
  aBlock[0] = v4;
  v13 = v4[2];
  v12 = v4[3];
  v14 = v13 + 1;
  if (v13 >= v12 >> 1)
  {
    sub_100146DA4((v12 > 1), v13 + 1, 1);
    v4 = aBlock[0];
  }

  v4[2] = v14;
  v15 = &v4[2 * v13];
  strcpy(v15 + 32, "app_version_id");
  v15[47] = -18;
  aBlock[0] = v4;
  v16 = v4[3];
  v17 = v13 + 2;
  if (v14 >= v16 >> 1)
  {
    sub_100146DA4((v16 > 1), v17, 1);
    v4 = aBlock[0];
  }

  v4[2] = v17;
  v18 = &v4[2 * v14];
  v18[4] = 0xD000000000000012;
  v18[5] = 0x80000001001CA620;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v20 = swift_allocObject();
  v20[2] = v3;
  v20[3] = a1;
  v20[4] = a2;
  v20[5] = &v29;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_10003BE24;
  *(v21 + 24) = v20;
  aBlock[4] = sub_10003C9F0;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10003ABFC;
  aBlock[3] = &unk_1002180C0;
  v22 = _Block_copy(aBlock);

  [a3 enumeratePersistentIDsAndProperties:isa usingBlock:v22];

  _Block_release(v22);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    if (v29)
    {
      swift_willThrow();
      swift_errorRetain();
    }
  }

  return result;
}

uint64_t sub_100036504(uint64_t a1, uint64_t a2, void *a3)
{
  v28 = 0;
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  v26 = JSONDecoder.init()();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100146DA4(0, 6, 0);
  v3 = 0;
  v4 = _swiftEmptyArrayStorage;
  do
  {
    v5 = *(&off_1002165B8 + v3 + 32);
    v6 = 0xD000000000000014;
    if (v5 == 4)
    {
      v7 = 0x6C7074656B72616DLL;
    }

    else
    {
      v7 = 0x5F7972746E756F63;
    }

    if (v5 == 4)
    {
      v8 = 0xEE0064695F656361;
    }

    else
    {
      v8 = 0xEC00000065646F63;
    }

    if (v5 == 3)
    {
      v9 = 0x80000001001CA030;
    }

    else
    {
      v6 = v7;
      v9 = v8;
    }

    if (v5 == 1)
    {
      v10 = 0xED000064695F6E6FLL;
    }

    else
    {
      v10 = 0xEF657079745F6E6FLL;
    }

    if (*(&off_1002165B8 + v3 + 32))
    {
      v11 = 0x69737265766E6F63;
    }

    else
    {
      v11 = 0xD000000000000012;
    }

    if (!*(&off_1002165B8 + v3 + 32))
    {
      v10 = 0x80000001001CA000;
    }

    if (*(&off_1002165B8 + v3 + 32) <= 2u)
    {
      v12 = v11;
    }

    else
    {
      v12 = v6;
    }

    if (*(&off_1002165B8 + v3 + 32) <= 2u)
    {
      v13 = v10;
    }

    else
    {
      v13 = v9;
    }

    aBlock[0] = v4;
    v15 = v4[2];
    v14 = v4[3];
    if (v15 >= v14 >> 1)
    {
      sub_100146DA4((v14 > 1), v15 + 1, 1);
      v4 = aBlock[0];
    }

    ++v3;
    v4[2] = v15 + 1;
    v16 = &v4[2 * v15];
    v16[4] = v12;
    v16[5] = v13;
  }

  while (v3 != 6);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v18 = swift_allocObject();
  v18[2] = v26;
  v18[3] = a1;
  v18[4] = a2;
  v18[5] = &v28;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_10003BCAC;
  *(v19 + 24) = v18;
  aBlock[4] = sub_10003C9F0;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10003ABFC;
  aBlock[3] = &unk_100217FD0;
  v20 = _Block_copy(aBlock);

  [a3 enumeratePersistentIDsAndProperties:isa usingBlock:v20];

  _Block_release(v20);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    if (v28)
    {
      swift_willThrow();
      swift_errorRetain();
    }
  }

  return result;
}

uint64_t sub_1000368E4(uint64_t a1, uint64_t a2, void *a3)
{
  v29 = 0;
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  v3 = JSONDecoder.init()();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100146DA4(0, 4, 0);
  v4 = _swiftEmptyArrayStorage;
  v6 = _swiftEmptyArrayStorage[2];
  v5 = _swiftEmptyArrayStorage[3];
  v7 = v6 + 1;
  if (v6 >= v5 >> 1)
  {
    sub_100146DA4((v5 > 1), v6 + 1, 1);
    v4 = aBlock[0];
  }

  v4[2] = v7;
  v8 = &v4[2 * v6];
  v8[4] = 0xD000000000000012;
  v8[5] = 0x80000001001CAD90;
  aBlock[0] = v4;
  v9 = v4[3];
  v10 = v6 + 2;
  if (v7 >= v9 >> 1)
  {
    sub_100146DA4((v9 > 1), v10, 1);
    v4 = aBlock[0];
  }

  v4[2] = v10;
  v11 = &v4[2 * v7];
  v11[4] = 0xD000000000000014;
  v11[5] = 0x80000001001CADB0;
  aBlock[0] = v4;
  v13 = v4[2];
  v12 = v4[3];
  v14 = v13 + 1;
  if (v13 >= v12 >> 1)
  {
    sub_100146DA4((v12 > 1), v13 + 1, 1);
    v4 = aBlock[0];
  }

  v4[2] = v14;
  v15 = &v4[2 * v13];
  v15[4] = 0xD000000000000012;
  v15[5] = 0x80000001001CA000;
  aBlock[0] = v4;
  v16 = v4[3];
  v17 = v13 + 2;
  if (v14 >= v16 >> 1)
  {
    sub_100146DA4((v16 > 1), v17, 1);
    v4 = aBlock[0];
  }

  v4[2] = v17;
  v18 = &v4[2 * v14];
  strcpy(v18 + 32, "ghostback_id");
  v18[45] = 0;
  *(v18 + 23) = -5120;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v20 = swift_allocObject();
  v20[2] = v3;
  v20[3] = a1;
  v20[4] = a2;
  v20[5] = &v29;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_10003BD70;
  *(v21 + 24) = v20;
  aBlock[4] = sub_10003C9F0;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10003ABFC;
  aBlock[3] = &unk_100218048;
  v22 = _Block_copy(aBlock);

  [a3 enumeratePersistentIDsAndProperties:isa usingBlock:v22];

  _Block_release(v22);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    if (v29)
    {
      swift_willThrow();
      swift_errorRetain();
    }
  }

  return result;
}

uint64_t sub_100036DBC(uint64_t a1, uint64_t a2, void *a3)
{
  v33 = 0;
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  v31 = JSONDecoder.init()();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100146DA4(0, 15, 0);
  v3 = 0;
  v4 = _swiftEmptyArrayStorage;
  v5 = 0x80000001001CAA20;
  v6 = 0x80000001001CA960;
  v7 = 0x80000001001CA620;
  v8 = 0x80000001001CA920;
  v9 = 0x80000001001CA900;
  v10 = 0x80000001001CA000;
  do
  {
    v11 = 0xE900000000000064;
    v12 = 0x656B636F6C5F7369;
    switch(*(&off_1002146F0 + v3 + 32))
    {
      case 1:
        v12 = 0xD000000000000015;
        v11 = v9;
        break;
      case 2:
        v12 = 0xD000000000000017;
        v11 = v8;
        break;
      case 3:
        break;
      case 4:
        v11 = 0xEA00000000006465;
        v12 = 0x7265747369676572;
        break;
      case 5:
        v12 = 0xD000000000000012;
        v11 = v7;
        break;
      case 6:
        v12 = 0xD000000000000010;
        v11 = v6;
        break;
      case 7:
        v12 = 0x6D69745F6B636F6CLL;
        v11 = 0xEE00706D61747365;
        break;
      case 8:
        v12 = 0x69745F6863746566;
        v11 = 0xEF706D617473656DLL;
        break;
      case 9:
        v12 = 0x63616274736F6867;
        v11 = 0xEC00000064695F6BLL;
        break;
      case 0xA:
        v12 = 0x69737265766E6F63;
        v11 = 0xEF657079745F6E6FLL;
        break;
      case 0xB:
        v12 = 0x6D6E6F7269766E65;
        v11 = 0xEB00000000746E65;
        break;
      case 0xC:
        v12 = 0xD000000000000016;
        v11 = v5;
        break;
      case 0xD:
        v12 = 0x6C7074656B72616DLL;
        v11 = 0xEE0064695F656361;
        break;
      case 0xE:
        v12 = 0x69737265766E6F63;
        v11 = 0xEE006761745F6E6FLL;
        break;
      default:
        v12 = 0xD000000000000012;
        v11 = v10;
        break;
    }

    aBlock[0] = v4;
    v14 = v4[2];
    v13 = v4[3];
    if (v14 >= v13 >> 1)
    {
      v26 = v6;
      v27 = v5;
      v24 = v8;
      v25 = v7;
      v22 = v10;
      v23 = v9;
      sub_100146DA4((v13 > 1), v14 + 1, 1);
      v10 = v22;
      v9 = v23;
      v8 = v24;
      v7 = v25;
      v6 = v26;
      v5 = v27;
      v4 = aBlock[0];
    }

    ++v3;
    v4[2] = v14 + 1;
    v15 = &v4[2 * v14];
    v15[4] = v12;
    v15[5] = v11;
  }

  while (v3 != 15);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v17 = swift_allocObject();
  v17[2] = v31;
  v17[3] = a1;
  v17[4] = a2;
  v17[5] = &v33;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_10003BBC0;
  *(v18 + 24) = v17;
  aBlock[4] = sub_10003C9F0;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10003ABFC;
  aBlock[3] = &unk_100217F58;
  v19 = _Block_copy(aBlock);

  [a3 enumeratePersistentIDsAndProperties:isa usingBlock:v19];

  _Block_release(v19);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    JUMPOUT(0x100037338);
  }

  if (v33)
  {
    swift_willThrow();
    swift_errorRetain();
  }
}

uint64_t sub_100037374(uint64_t a1, uint64_t a2, void *a3)
{
  v21 = 0;
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  v3 = JSONDecoder.init()();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100146DA4(0, 2, 0);
  v4 = _swiftEmptyArrayStorage;
  v6 = _swiftEmptyArrayStorage[2];
  v5 = _swiftEmptyArrayStorage[3];
  v7 = v5 >> 1;
  v8 = v6 + 1;
  if (v5 >> 1 <= v6)
  {
    sub_100146DA4((v5 > 1), v6 + 1, 1);
    v4 = aBlock[0];
    v5 = *(aBlock[0] + 24);
    v7 = v5 >> 1;
  }

  v4[2] = v8;
  v9 = &v4[2 * v6];
  v9[4] = 0x64695F6D657469;
  v9[5] = 0xE700000000000000;
  aBlock[0] = v4;
  if (v7 <= v8)
  {
    sub_100146DA4((v5 > 1), v6 + 2, 1);
    v4 = aBlock[0];
  }

  v4[2] = v6 + 2;
  v10 = &v4[2 * v8];
  v10[4] = 0x695F656C646E7562;
  v10[5] = 0xE900000000000064;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v12 = swift_allocObject();
  v12[2] = v3;
  v12[3] = a1;
  v12[4] = a2;
  v12[5] = &v21;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_10003BB60;
  *(v13 + 24) = v12;
  aBlock[4] = sub_10003C9F0;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10003ABFC;
  aBlock[3] = &unk_100217EE0;
  v14 = _Block_copy(aBlock);

  [a3 enumeratePersistentIDsAndProperties:isa usingBlock:v14];

  _Block_release(v14);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    if (v21)
    {
      swift_willThrow();
      swift_errorRetain();
    }
  }

  return result;
}

uint64_t sub_10003772C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(BOOL, uint64_t, uint64_t, uint64_t), uint64_t (*a8)(void))
{
  v13 = (a5)(0, a2, a3);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13 - 8);
  v16 = &v22 - v15;
  sub_10003C208(a1, &v22 - v15, a6);
  v17 = *a4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a4 = v17;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = a7(0, *(v17 + 16) + 1, 1, v17);
    *a4 = v17;
  }

  v20 = *(v17 + 16);
  v19 = *(v17 + 24);
  if (v20 >= v19 >> 1)
  {
    v17 = a7(v19 > 1, v20 + 1, 1, v17);
    *a4 = v17;
  }

  *(v17 + 16) = v20 + 1;
  return sub_10003C270(v16, v17 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v20, a8);
}

uint64_t sub_100037894(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, void (*a6)(_OWORD *, uint64_t, _BYTE *), uint64_t a7, uint64_t *a8)
{
  v12 = objc_opt_self();
  *&v31[0] = a2;

  sub_10000CDE0(&qword_10023A758, &qword_1001B5880);
  v13 = [v12 isValidJSONObject:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v13)
  {

    *&v31[0] = 0;
    v14 = [v12 dataWithJSONObject:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)() options:0 error:v31];
    swift_unknownObjectRelease();
    v15 = *&v31[0];
    if (v14)
    {
      v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;

      sub_10003C2F0();
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();
      sub_10001BABC(v16, v18);
      *&v32[0] = a1;
      BYTE8(v32[0]) = 0;
      a6(v32, a3, a4);
      v31[0] = v32[0];
      v31[1] = v32[1];
      v31[2] = v32[2];
      v31[3] = v32[3];
      return sub_10003C344(v31);
    }

    v20 = v15;
    v19 = _convertNSErrorToError(_:)();
  }

  else
  {
    sub_10003B628();
    v19 = swift_allocError();
  }

  swift_willThrow();
  if (qword_100239CD8 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_10000DAC0(v21, qword_10023FCB8);
  swift_errorRetain();
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *&v32[0] = v26;
    *v24 = 136315394;
    *(v24 + 4) = sub_10017AD04(0xD000000000000019, 0x80000001001CB4F0, v32);
    *(v24 + 12) = 2112;
    swift_errorRetain();
    v27 = _swift_stdlib_bridgeErrorToNSError();
    *(v24 + 14) = v27;
    *v25 = v27;
    _os_log_impl(&_mh_execute_header, v22, v23, "Failed to decode %s from dictionary with error: %@", v24, 0x16u);
    sub_10000DAF8(v25, &qword_100239F10, &qword_1001B4FD0);

    sub_10000DB58(v26);
  }

  *a8 = v19;
  swift_errorRetain();

  *a4 = 1;
}

uint64_t sub_100037C60(void *a1, void *a2, uint64_t a3, _BYTE *a4, uint64_t a5, void (*a6)(void **, uint64_t, _BYTE *), uint64_t a7, uint64_t *a8)
{
  v12 = objc_opt_self();
  v31[0] = a2;

  sub_10000CDE0(&qword_10023A758, &qword_1001B5880);
  v13 = [v12 isValidJSONObject:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v13)
  {

    v31[0] = 0;
    v14 = [v12 dataWithJSONObject:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)() options:0 error:v31];
    swift_unknownObjectRelease();
    v15 = v31[0];
    if (v14)
    {
      v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;

      sub_100010BE4();
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();
      sub_10001BABC(v16, v18);
      v36 = v31[3];
      v37 = v31[4];
      v38 = v32;
      v39 = v33;
      v34 = a1;
      v35 = 0;
      a6(&v34, a3, a4);
    }

    v20 = v15;
    v19 = _convertNSErrorToError(_:)();
  }

  else
  {
    sub_10003B628();
    v19 = swift_allocError();
  }

  swift_willThrow();
  if (qword_100239CD8 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_10000DAC0(v21, qword_10023FCB8);
  swift_errorRetain();
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v34 = v26;
    *v24 = 136315394;
    *(v24 + 4) = sub_10017AD04(0x756F437972746552, 0xEF6C65646F4D746ELL, &v34);
    *(v24 + 12) = 2112;
    swift_errorRetain();
    v27 = _swift_stdlib_bridgeErrorToNSError();
    *(v24 + 14) = v27;
    *v25 = v27;
    _os_log_impl(&_mh_execute_header, v22, v23, "Failed to decode %s from dictionary with error: %@", v24, 0x16u);
    sub_10000DAF8(v25, &qword_100239F10, &qword_1001B4FD0);

    sub_10000DB58(v26);
  }

  *a8 = v19;
  swift_errorRetain();

  *a4 = 1;
}

uint64_t sub_10003803C(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4, uint64_t a5, void (*a6)(char *, uint64_t, _BYTE *), uint64_t a7, uint64_t *a8)
{
  v34 = a7;
  v35 = a6;
  v36 = a4;
  v33 = a3;
  v11 = type metadata accessor for SnoutStoryModel(0);
  __chkstk_darwin(v11);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = objc_opt_self();
  v37 = a2;

  sub_10000CDE0(&qword_10023A758, &qword_1001B5880);
  v15 = [v14 isValidJSONObject:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v15)
  {
    v37 = a2;

    v16 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    v37 = 0;
    v17 = [v14 dataWithJSONObject:v16 options:0 error:&v37];
    swift_unknownObjectRelease();
    v18 = v37;
    if (v17)
    {
      v19 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;

      sub_10003C160(&qword_10023A0A8, type metadata accessor for SnoutStoryModel, &unk_1001B3CB4);
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();
      sub_10001BABC(v19, v21);
      *v13 = a1;
      v13[8] = 0;
      v35(v13, v33, v36);
      return sub_10003C1A8(v13, type metadata accessor for SnoutStoryModel);
    }

    v23 = v18;
    v22 = _convertNSErrorToError(_:)();
  }

  else
  {
    sub_10003B628();
    v22 = swift_allocError();
  }

  swift_willThrow();
  if (qword_100239CD8 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_10000DAC0(v24, qword_10023FCB8);
  swift_errorRetain();
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v37 = v29;
    *v27 = 136315394;
    *(v27 + 4) = sub_10017AD04(0x6F745374756F6E53, 0xEF6C65646F4D7972, &v37);
    *(v27 + 12) = 2112;
    swift_errorRetain();
    v30 = _swift_stdlib_bridgeErrorToNSError();
    *(v27 + 14) = v30;
    *v28 = v30;
    _os_log_impl(&_mh_execute_header, v25, v26, "Failed to decode %s from dictionary with error: %@", v27, 0x16u);
    sub_10000DAF8(v28, &qword_100239F10, &qword_1001B4FD0);

    sub_10000DB58(v29);
  }

  *a8 = v22;
  swift_errorRetain();

  *v36 = 1;
}

uint64_t sub_100038488(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, void (*a6)(_OWORD *, uint64_t, _BYTE *), uint64_t a7, uint64_t *a8)
{
  v12 = objc_opt_self();
  *&v31[0] = a2;

  sub_10000CDE0(&qword_10023A758, &qword_1001B5880);
  v13 = [v12 isValidJSONObject:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v13)
  {

    *&v31[0] = 0;
    v14 = [v12 dataWithJSONObject:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)() options:0 error:v31];
    swift_unknownObjectRelease();
    v15 = *&v31[0];
    if (v14)
    {
      v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;

      sub_10003C0AC();
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();
      sub_10001BABC(v16, v18);
      *&v32[0] = a1;
      BYTE8(v32[0]) = 0;
      a6(v32, a3, a4);
      v31[12] = v32[12];
      v31[13] = v32[13];
      v31[14] = v32[14];
      v31[8] = v32[8];
      v31[9] = v32[9];
      v31[10] = v32[10];
      v31[11] = v32[11];
      v31[4] = v32[4];
      v31[5] = v32[5];
      v31[6] = v32[6];
      v31[7] = v32[7];
      v31[0] = v32[0];
      v31[1] = v32[1];
      v31[2] = v32[2];
      v31[3] = v32[3];
      return sub_10003C100(v31);
    }

    v20 = v15;
    v19 = _convertNSErrorToError(_:)();
  }

  else
  {
    sub_10003B628();
    v19 = swift_allocError();
  }

  swift_willThrow();
  if (qword_100239CD8 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_10000DAC0(v21, qword_10023FCB8);
  swift_errorRetain();
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *&v32[0] = v26;
    *v24 = 136315394;
    *(v24 + 4) = sub_10017AD04(0x6E6576456F6C6F53, 0xEE006C65646F4D74, v32);
    *(v24 + 12) = 2112;
    swift_errorRetain();
    v27 = _swift_stdlib_bridgeErrorToNSError();
    *(v24 + 14) = v27;
    *v25 = v27;
    _os_log_impl(&_mh_execute_header, v22, v23, "Failed to decode %s from dictionary with error: %@", v24, 0x16u);
    sub_10000DAF8(v25, &qword_100239F10, &qword_1001B4FD0);

    sub_10000DB58(v26);
  }

  *a8 = v19;
  swift_errorRetain();

  *a4 = 1;
}

uint64_t sub_1000388E8(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4, uint64_t a5, void (*a6)(char *, uint64_t, _BYTE *), uint64_t a7, uint64_t *a8)
{
  v34 = a7;
  v35 = a6;
  v36 = a4;
  v33 = a3;
  v11 = type metadata accessor for ImpressionModel(0);
  __chkstk_darwin(v11);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = objc_opt_self();
  v37 = a2;

  sub_10000CDE0(&qword_10023A758, &qword_1001B5880);
  v15 = [v14 isValidJSONObject:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v15)
  {
    v37 = a2;

    v16 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    v37 = 0;
    v17 = [v14 dataWithJSONObject:v16 options:0 error:&v37];
    swift_unknownObjectRelease();
    v18 = v37;
    if (v17)
    {
      v19 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;

      sub_10003C160(&qword_10023A828, type metadata accessor for ImpressionModel, &unk_1001B8034);
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();
      sub_10001BABC(v19, v21);
      *v13 = a1;
      v13[8] = 0;
      v35(v13, v33, v36);
      return sub_10003C1A8(v13, type metadata accessor for ImpressionModel);
    }

    v23 = v18;
    v22 = _convertNSErrorToError(_:)();
  }

  else
  {
    sub_10003B628();
    v22 = swift_allocError();
  }

  swift_willThrow();
  if (qword_100239CD8 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_10000DAC0(v24, qword_10023FCB8);
  swift_errorRetain();
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v37 = v29;
    *v27 = 136315394;
    *(v27 + 4) = sub_10017AD04(0x6973736572706D49, 0xEF6C65646F4D6E6FLL, &v37);
    *(v27 + 12) = 2112;
    swift_errorRetain();
    v30 = _swift_stdlib_bridgeErrorToNSError();
    *(v27 + 14) = v30;
    *v28 = v30;
    _os_log_impl(&_mh_execute_header, v25, v26, "Failed to decode %s from dictionary with error: %@", v27, 0x16u);
    sub_10000DAF8(v28, &qword_100239F10, &qword_1001B4FD0);

    sub_10000DB58(v29);
  }

  *a8 = v22;
  swift_errorRetain();

  *v36 = 1;
}

uint64_t sub_100038D34(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4, uint64_t a5, void (*a6)(uint64_t *, uint64_t, _BYTE *), uint64_t a7, uint64_t *a8)
{
  v12 = objc_opt_self();
  __dst[0] = a2;

  sub_10000CDE0(&qword_10023A758, &qword_1001B5880);
  v13 = [v12 isValidJSONObject:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v13)
  {

    __dst[0] = 0;
    v14 = [v12 dataWithJSONObject:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)() options:0 error:__dst];
    swift_unknownObjectRelease();
    v15 = __dst[0];
    if (v14)
    {
      v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;

      sub_10003BFF8();
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();
      sub_10001BABC(v16, v18);
      __src[0] = a1;
      LOBYTE(__src[1]) = 0;
      a6(__src, a3, a4);
      memcpy(__dst, __src, 0x121uLL);
      return sub_10003C04C(__dst);
    }

    v20 = v15;
    v19 = _convertNSErrorToError(_:)();
  }

  else
  {
    sub_10003B628();
    v19 = swift_allocError();
  }

  swift_willThrow();
  if (qword_100239CD8 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_10000DAC0(v21, qword_10023FCB8);
  swift_errorRetain();
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    __src[0] = v26;
    *v24 = 136315394;
    *(v24 + 4) = sub_10017AD04(0x6B63616274736F50, 0xED00006C65646F4DLL, __src);
    *(v24 + 12) = 2112;
    swift_errorRetain();
    v27 = _swift_stdlib_bridgeErrorToNSError();
    *(v24 + 14) = v27;
    *v25 = v27;
    _os_log_impl(&_mh_execute_header, v22, v23, "Failed to decode %s from dictionary with error: %@", v24, 0x16u);
    sub_10000DAF8(v25, &qword_100239F10, &qword_1001B4FD0);

    sub_10000DB58(v26);
  }

  *a8 = v19;
  swift_errorRetain();

  *a4 = 1;
}

uint64_t sub_100039108(void *a1, void *a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t (*a6)(void **, uint64_t, _BYTE *), uint64_t a7, uint64_t *a8)
{
  v12 = objc_opt_self();
  v31 = a2;

  sub_10000CDE0(&qword_10023A758, &qword_1001B5880);
  v13 = [v12 isValidJSONObject:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v13)
  {

    v31 = 0;
    v14 = [v12 dataWithJSONObject:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)() options:0 error:&v31];
    swift_unknownObjectRelease();
    v15 = v31;
    if (v14)
    {
      v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;

      sub_10003BF98();
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();
      sub_10001BABC(v16, v18);
      v36 = v32;
      v37 = v33;
      v34 = a1;
      v35 = 0;
      return a6(&v34, a3, a4);
    }

    v20 = v15;
    v19 = _convertNSErrorToError(_:)();
  }

  else
  {
    sub_10003B628();
    v19 = swift_allocError();
  }

  swift_willThrow();
  if (qword_100239CD8 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_10000DAC0(v21, qword_10023FCB8);
  swift_errorRetain();
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v34 = v26;
    *v24 = 136315394;
    *(v24 + 4) = sub_10017AD04(0xD000000000000012, 0x80000001001CB4D0, &v34);
    *(v24 + 12) = 2112;
    swift_errorRetain();
    v27 = _swift_stdlib_bridgeErrorToNSError();
    *(v24 + 14) = v27;
    *v25 = v27;
    _os_log_impl(&_mh_execute_header, v22, v23, "Failed to decode %s from dictionary with error: %@", v24, 0x16u);
    sub_10000DAF8(v25, &qword_100239F10, &qword_1001B4FD0);

    sub_10000DB58(v26);
  }

  *a8 = v19;
  swift_errorRetain();

  *a4 = 1;
}

uint64_t sub_1000394CC(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, void (*a6)(_OWORD *, uint64_t, _BYTE *), uint64_t a7, uint64_t *a8)
{
  v12 = objc_opt_self();
  *&v31[0] = a2;

  sub_10000CDE0(&qword_10023A758, &qword_1001B5880);
  v13 = [v12 isValidJSONObject:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v13)
  {

    *&v31[0] = 0;
    v14 = [v12 dataWithJSONObject:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)() options:0 error:v31];
    swift_unknownObjectRelease();
    v15 = *&v31[0];
    if (v14)
    {
      v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;

      sub_10003BEE4();
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();
      sub_10001BABC(v16, v18);
      *&v33[0] = a1;
      BYTE8(v33[0]) = 0;
      a6(v33, a3, a4);
      v31[4] = v33[4];
      v32[0] = *v34;
      *(v32 + 15) = *&v34[15];
      v31[0] = v33[0];
      v31[1] = v33[1];
      v31[2] = v33[2];
      v31[3] = v33[3];
      return sub_10003BF38(v31);
    }

    v20 = v15;
    v19 = _convertNSErrorToError(_:)();
  }

  else
  {
    sub_10003B628();
    v19 = swift_allocError();
  }

  swift_willThrow();
  if (qword_100239CD8 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_10000DAC0(v21, qword_10023FCB8);
  swift_errorRetain();
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *&v33[0] = v26;
    *v24 = 136315394;
    *(v24 + 4) = sub_10017AD04(0xD000000000000013, 0x80000001001CB4B0, v33);
    *(v24 + 12) = 2112;
    swift_errorRetain();
    v27 = _swift_stdlib_bridgeErrorToNSError();
    *(v24 + 14) = v27;
    *v25 = v27;
    _os_log_impl(&_mh_execute_header, v22, v23, "Failed to decode %s from dictionary with error: %@", v24, 0x16u);
    sub_10000DAF8(v25, &qword_100239F10, &qword_1001B4FD0);

    sub_10000DB58(v26);
  }

  *a8 = v19;
  swift_errorRetain();

  *a4 = 1;
}

uint64_t sub_1000398B0(void *a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, void (*a6)(void **, uint64_t, _BYTE *), uint64_t a7, uint64_t *a8)
{
  v12 = objc_opt_self();
  *&v31[0] = a2;

  sub_10000CDE0(&qword_10023A758, &qword_1001B5880);
  v13 = [v12 isValidJSONObject:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v13)
  {

    *&v31[0] = 0;
    v14 = [v12 dataWithJSONObject:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)() options:0 error:v31];
    swift_unknownObjectRelease();
    v15 = *&v31[0];
    if (v14)
    {
      v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;

      sub_10003BE30();
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();
      sub_10001BABC(v16, v18);
      v31[0] = v32;
      v31[1] = v33;
      v31[2] = v34;
      v31[3] = v35;
      v37 = *(&v32 + 1);
      v38 = v33;
      v39 = v34;
      v40 = v35;
      v36 = a1;
      LOBYTE(v37) = 0;
      a6(&v36, a3, a4);
      return sub_10003BE84(v31);
    }

    v20 = v15;
    v19 = _convertNSErrorToError(_:)();
  }

  else
  {
    sub_10003B628();
    v19 = swift_allocError();
  }

  swift_willThrow();
  if (qword_100239CD8 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_10000DAC0(v21, qword_10023FCB8);
  swift_errorRetain();
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v36 = v26;
    *v24 = 136315394;
    *(v24 + 4) = sub_10017AD04(0xD00000000000001BLL, 0x80000001001CB490, &v36);
    *(v24 + 12) = 2112;
    swift_errorRetain();
    v27 = _swift_stdlib_bridgeErrorToNSError();
    *(v24 + 14) = v27;
    *v25 = v27;
    _os_log_impl(&_mh_execute_header, v22, v23, "Failed to decode %s from dictionary with error: %@", v24, 0x16u);
    sub_10000DAF8(v25, &qword_100239F10, &qword_1001B4FD0);

    sub_10000DB58(v26);
  }

  *a8 = v19;
  swift_errorRetain();

  *a4 = 1;
}

uint64_t sub_100039C88(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, void (*a6)(_OWORD *, uint64_t, _BYTE *), uint64_t a7, uint64_t *a8)
{
  v12 = objc_opt_self();
  *&v31[0] = a2;

  sub_10000CDE0(&qword_10023A758, &qword_1001B5880);
  v13 = [v12 isValidJSONObject:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v13)
  {

    *&v31[0] = 0;
    v14 = [v12 dataWithJSONObject:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)() options:0 error:v31];
    swift_unknownObjectRelease();
    v15 = *&v31[0];
    if (v14)
    {
      v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;

      sub_10003BCC8();
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();
      sub_10001BABC(v16, v18);
      *&v33[0] = a1;
      BYTE8(v33[0]) = 0;
      a6(v33, a3, a4);
      v31[2] = v33[2];
      v31[3] = v33[3];
      v31[4] = v33[4];
      v32 = v34;
      v31[0] = v33[0];
      v31[1] = v33[1];
      return sub_10003BD1C(v31);
    }

    v20 = v15;
    v19 = _convertNSErrorToError(_:)();
  }

  else
  {
    sub_10003B628();
    v19 = swift_allocError();
  }

  swift_willThrow();
  if (qword_100239CD8 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_10000DAC0(v21, qword_10023FCB8);
  swift_errorRetain();
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *&v33[0] = v26;
    *v24 = 136315394;
    *(v24 + 4) = sub_10017AD04(0xD000000000000016, 0x80000001001CB450, v33);
    *(v24 + 12) = 2112;
    swift_errorRetain();
    v27 = _swift_stdlib_bridgeErrorToNSError();
    *(v24 + 14) = v27;
    *v25 = v27;
    _os_log_impl(&_mh_execute_header, v22, v23, "Failed to decode %s from dictionary with error: %@", v24, 0x16u);
    sub_10000DAF8(v25, &qword_100239F10, &qword_1001B4FD0);

    sub_10000DB58(v26);
  }

  *a8 = v19;
  swift_errorRetain();

  *a4 = 1;
}

uint64_t sub_10003A068(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, void (*a6)(_OWORD *, uint64_t, _BYTE *), uint64_t a7, uint64_t *a8)
{
  v12 = objc_opt_self();
  *&v31[0] = a2;

  sub_10000CDE0(&qword_10023A758, &qword_1001B5880);
  v13 = [v12 isValidJSONObject:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v13)
  {

    *&v31[0] = 0;
    v14 = [v12 dataWithJSONObject:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)() options:0 error:v31];
    swift_unknownObjectRelease();
    v15 = *&v31[0];
    if (v14)
    {
      v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;

      sub_10003BD7C();
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();
      sub_10001BABC(v16, v18);
      *&v33[0] = a1;
      BYTE8(v33[0]) = 0;
      a6(v33, a3, a4);
      v31[2] = v33[2];
      v31[3] = v33[3];
      v32 = v34;
      v31[0] = v33[0];
      v31[1] = v33[1];
      return sub_10003BDD0(v31);
    }

    v20 = v15;
    v19 = _convertNSErrorToError(_:)();
  }

  else
  {
    sub_10003B628();
    v19 = swift_allocError();
  }

  swift_willThrow();
  if (qword_100239CD8 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_10000DAC0(v21, qword_10023FCB8);
  swift_errorRetain();
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *&v33[0] = v26;
    *v24 = 136315394;
    *(v24 + 4) = sub_10017AD04(0xD000000000000015, 0x80000001001CB470, v33);
    *(v24 + 12) = 2112;
    swift_errorRetain();
    v27 = _swift_stdlib_bridgeErrorToNSError();
    *(v24 + 14) = v27;
    *v25 = v27;
    _os_log_impl(&_mh_execute_header, v22, v23, "Failed to decode %s from dictionary with error: %@", v24, 0x16u);
    sub_10000DAF8(v25, &qword_100239F10, &qword_1001B4FD0);

    sub_10000DB58(v26);
  }

  *a8 = v19;
  swift_errorRetain();

  *a4 = 1;
}

uint64_t sub_10003A444(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, void (*a6)(_OWORD *, uint64_t, _BYTE *), uint64_t a7, uint64_t *a8)
{
  v12 = objc_opt_self();
  *&v31[0] = a2;

  sub_10000CDE0(&qword_10023A758, &qword_1001B5880);
  v13 = [v12 isValidJSONObject:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v13)
  {

    *&v31[0] = 0;
    v14 = [v12 dataWithJSONObject:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)() options:0 error:v31];
    swift_unknownObjectRelease();
    v15 = *&v31[0];
    if (v14)
    {
      v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;

      sub_10003BBCC();
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();
      sub_10001BABC(v16, v18);
      *&v32[0] = a1;
      BYTE8(v32[0]) = 0;
      a6(v32, a3, a4);
      v31[6] = v32[6];
      v31[7] = v32[7];
      v31[8] = v32[8];
      v31[2] = v32[2];
      v31[3] = v32[3];
      v31[4] = v32[4];
      v31[5] = v32[5];
      v31[0] = v32[0];
      v31[1] = v32[1];
      return sub_10003BC20(v31);
    }

    v20 = v15;
    v19 = _convertNSErrorToError(_:)();
  }

  else
  {
    sub_10003B628();
    v19 = swift_allocError();
  }

  swift_willThrow();
  if (qword_100239CD8 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_10000DAC0(v21, qword_10023FCB8);
  swift_errorRetain();
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *&v32[0] = v26;
    *v24 = 136315394;
    *(v24 + 4) = sub_10017AD04(0x63616274736F6847, 0xEE006C65646F4D6BLL, v32);
    *(v24 + 12) = 2112;
    swift_errorRetain();
    v27 = _swift_stdlib_bridgeErrorToNSError();
    *(v24 + 14) = v27;
    *v25 = v27;
    _os_log_impl(&_mh_execute_header, v22, v23, "Failed to decode %s from dictionary with error: %@", v24, 0x16u);
    sub_10000DAF8(v25, &qword_100239F10, &qword_1001B4FD0);

    sub_10000DB58(v26);
  }

  *a8 = v19;
  swift_errorRetain();

  *a4 = 1;
}

uint64_t sub_10003A830(void *a1, void *a2, uint64_t a3, _BYTE *a4, uint64_t a5, void (*a6)(void **, uint64_t, _BYTE *), uint64_t a7, uint64_t *a8)
{
  v12 = objc_opt_self();
  v31 = a2;

  sub_10000CDE0(&qword_10023A758, &qword_1001B5880);
  v13 = [v12 isValidJSONObject:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v13)
  {

    v31 = 0;
    v14 = [v12 dataWithJSONObject:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)() options:0 error:&v31];
    swift_unknownObjectRelease();
    v15 = v31;
    if (v14)
    {
      v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;

      sub_10003BB6C();
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();
      sub_10001BABC(v16, v18);
      v36 = v32;
      v37 = v33;
      v34 = a1;
      v35 = 0;
      a6(&v34, a3, a4);
    }

    v20 = v15;
    v19 = _convertNSErrorToError(_:)();
  }

  else
  {
    sub_10003B628();
    v19 = swift_allocError();
  }

  swift_willThrow();
  if (qword_100239CD8 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_10000DAC0(v21, qword_10023FCB8);
  swift_errorRetain();
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v34 = v26;
    *v24 = 136315394;
    *(v24 + 4) = sub_10017AD04(0xD00000000000001ELL, 0x80000001001CB430, &v34);
    *(v24 + 12) = 2112;
    swift_errorRetain();
    v27 = _swift_stdlib_bridgeErrorToNSError();
    *(v24 + 14) = v27;
    *v25 = v27;
    _os_log_impl(&_mh_execute_header, v22, v23, "Failed to decode %s from dictionary with error: %@", v24, 0x16u);
    sub_10000DAF8(v25, &qword_100239F10, &qword_1001B4FD0);

    sub_10000DB58(v26);
  }

  *a8 = v19;
  swift_errorRetain();

  *a4 = 1;
}

uint64_t sub_10003ABFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a1 + 32);
  v9 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v8(a2, v9, a4, a5);
}

uint64_t sub_10003AC90(uint64_t a1)
{
  v2 = _HashTable.startBucket.getter();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v4 = sub_10003B8FC(v2, *(a1 + 36), 0, a1);

  return v4;
}

uint64_t sub_10003AD0C(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v15 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v17 = &v15;
  v18 = a2;
  v6 = (1 << v4) + 63;
  if (v5 <= 0xD || (v11 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    __chkstk_darwin(isStackAllocationSafe);
    v8 = &v14 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    v9 = sub_10003B988(v8, v3, a2);
  }

  else
  {
    v12 = swift_slowAlloc();
    bzero(v12, v11);
    sub_10003B950(v12, &v16);
    v13 = v16;

    v9 = v13;
  }

  return v9 & 1;
}

unint64_t sub_10003AEE0()
{
  result = qword_10023A7D8;
  if (!qword_10023A7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023A7D8);
  }

  return result;
}

unint64_t sub_10003AF64()
{
  result = qword_10023A7E8;
  if (!qword_10023A7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023A7E8);
  }

  return result;
}

unint64_t sub_10003AFB8()
{
  result = qword_10023A7F8;
  if (!qword_10023A7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023A7F8);
  }

  return result;
}

unint64_t sub_10003B00C()
{
  result = qword_10023A800;
  if (!qword_10023A800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023A800);
  }

  return result;
}

void sub_10003B078(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ImpressionModel(0);
  v4 = (v1 + ((*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80)) + *(v3 + 32));
  sub_1000C1358(*v4, v4[1], a1);
}

uint64_t sub_10003B180()
{
  v1 = type metadata accessor for ImpressionModel(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*(v1 - 8) + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = *(v1 + 20);
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);

  return _swift_deallocObject(v0, v4 + 8, v2 | 7);
}

uint64_t sub_10003B28C(void *a1)
{
  v3 = *(type metadata accessor for ImpressionModel(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  return sub_100031C58(a1, v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_10003B3B8()
{
  v1 = type metadata accessor for ImpressionModel(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = *(v1 + 20);
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10003B610(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10003B628()
{
  result = qword_10023A820;
  if (!qword_10023A820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023A820);
  }

  return result;
}

uint64_t sub_10003B6B8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000152E0;

  return sub_10002BACC(a1);
}

uint64_t sub_10003B754()
{

  sub_10000DB58((v0 + 40));
  sub_10000DB58((v0 + 80));

  return _swift_deallocObject(v0, 120, 7);
}

uint64_t sub_10003B7A4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000BD30;

  return sub_10002BCA4(a1);
}

uint64_t sub_10003B840(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000152E0;

  return sub_10002BE80(a1);
}

uint64_t sub_10003B8FC(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 16 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_10003B950@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10003B988(a1, **(v2 + 16), *(v2 + 24));
  if (!v3)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_10003B988(uint64_t result, uint64_t a2, uint64_t a3)
{
  v23 = result;
  v22 = 0;
  v4 = 0;
  v5 = *(a2 + 16);
  v24 = v5;
  v25 = a2 + 32;
  v6 = a3 + 56;
  while (v4 != v5)
  {
    while (1)
    {
      if (v4 >= v5)
      {
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
        return result;
      }

      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_27;
      }

      v8 = (v25 + 16 * v4);
      v10 = *v8;
      v9 = v8[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v11 = Hasher._finalize()();
      v12 = -1 << *(a3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = 1 << v13;
      if (((1 << v13) & *(v6 + 8 * (v13 >> 6))) != 0)
      {
        break;
      }

LABEL_5:

LABEL_6:
      v4 = v7;
      if (v7 == v5)
      {
        return 0;
      }
    }

    v16 = (*(a3 + 48) + 16 * v13);
    v17 = *v16 == v10 && v16[1] == v9;
    if (!v17)
    {
      v18 = ~v12;
      while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        v13 = (v13 + 1) & v18;
        v14 = v13 >> 6;
        v15 = 1 << v13;
        if (((1 << v13) & *(v6 + 8 * (v13 >> 6))) == 0)
        {
          v5 = v24;
          goto LABEL_5;
        }

        v19 = (*(a3 + 48) + 16 * v13);
        if (*v19 == v10 && v19[1] == v9)
        {
          break;
        }
      }
    }

    v20 = *(v23 + 8 * v14);
    *(v23 + 8 * v14) = v20 | v15;
    if ((v20 & v15) != 0)
    {
      v5 = v24;
      goto LABEL_6;
    }

    v21 = v22 + 1;
    v5 = v24;
    if (__OFADD__(v22, 1))
    {
      goto LABEL_28;
    }

    ++v22;
    v17 = v21 == *(a3 + 16);
    v4 = v7;
    result = 1;
    if (v17)
    {
      return result;
    }
  }

  return 0;
}

unint64_t sub_10003BB6C()
{
  result = qword_10023A838;
  if (!qword_10023A838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023A838);
  }

  return result;
}

unint64_t sub_10003BBCC()
{
  result = qword_10023A840;
  if (!qword_10023A840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023A840);
  }

  return result;
}

uint64_t sub_10003BC74()
{

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t sub_10003BCC8()
{
  result = qword_10023A848;
  if (!qword_10023A848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023A848);
  }

  return result;
}

unint64_t sub_10003BD7C()
{
  result = qword_10023A850;
  if (!qword_10023A850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023A850);
  }

  return result;
}

unint64_t sub_10003BE30()
{
  result = qword_10023A858;
  if (!qword_10023A858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023A858);
  }

  return result;
}

unint64_t sub_10003BEE4()
{
  result = qword_10023A860;
  if (!qword_10023A860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023A860);
  }

  return result;
}

unint64_t sub_10003BF98()
{
  result = qword_10023A868;
  if (!qword_10023A868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023A868);
  }

  return result;
}

unint64_t sub_10003BFF8()
{
  result = qword_10023A870;
  if (!qword_10023A870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023A870);
  }

  return result;
}

unint64_t sub_10003C0AC()
{
  result = qword_10023A878;
  if (!qword_10023A878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023A878);
  }

  return result;
}

uint64_t sub_10003C160(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10003C1A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10003C208(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10003C270(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_10003C2F0()
{
  result = qword_10023A880;
  if (!qword_10023A880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023A880);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ImpressionIntakeError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 15 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 15) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 15;
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

      return (*a1 | (v4 << 8)) - 15;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ImpressionIntakeError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 sub_10003C4F8(uint64_t a1, __int128 *a2)
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

uint64_t sub_10003C524(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_10003C56C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_10003C5D4(uint64_t a1)
{
  result = sub_10003AEE0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10003C600()
{
  result = qword_10023A888;
  if (!qword_10023A888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023A888);
  }

  return result;
}

void *sub_10003C654(void *a1)
{
  v3 = sub_10000CDE0(&qword_10023A890, &qword_1001B5A88);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - v5;
  v7 = sub_10000DA7C(a1, a1[3]);
  sub_10003C7D8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_10000DB58(a1);
  }

  else
  {
    sub_10000CDE0(&qword_10023A8A0, &qword_1001B5A90);
    sub_10003C82C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    sub_10000DB58(a1);
  }

  return v7;
}

unint64_t sub_10003C7D8()
{
  result = qword_10023A898;
  if (!qword_10023A898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023A898);
  }

  return result;
}

unint64_t sub_10003C82C()
{
  result = qword_10023A8A8;
  if (!qword_10023A8A8)
  {
    sub_10000CCC0(&qword_10023A8A0, &qword_1001B5A90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023A8A8);
  }

  return result;
}

unint64_t sub_10003C8BC()
{
  result = qword_10023A8B0;
  if (!qword_10023A8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023A8B0);
  }

  return result;
}

unint64_t sub_10003C914()
{
  result = qword_10023A8B8;
  if (!qword_10023A8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023A8B8);
  }

  return result;
}

unint64_t sub_10003C96C()
{
  result = qword_10023A8C0;
  if (!qword_10023A8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023A8C0);
  }

  return result;
}

unint64_t sub_10003CAD0()
{
  result = qword_10023A8C8;
  if (!qword_10023A8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023A8C8);
  }

  return result;
}

Swift::Int sub_10003CB48()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1001B5D88[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_10003CBD0(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1001B5D88[v2]);
  return Hasher._finalize()();
}

uint64_t sub_10003CC1C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10003CEB0(*a1);
  *a2 = result;
  return result;
}

uint64_t Postback.interactionType.getter()
{
  v1 = *v0;

  return v1;
}

unint64_t sub_10003CCBC(void *a1)
{
  a1[1] = sub_10003CCF4();
  a1[2] = sub_10003CD48();
  result = sub_10003CD9C();
  a1[3] = result;
  return result;
}

unint64_t sub_10003CCF4()
{
  result = qword_10023A910;
  if (!qword_10023A910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023A910);
  }

  return result;
}

unint64_t sub_10003CD48()
{
  result = qword_10023A918;
  if (!qword_10023A918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023A918);
  }

  return result;
}

unint64_t sub_10003CD9C()
{
  result = qword_10023A920;
  if (!qword_10023A920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023A920);
  }

  return result;
}

unint64_t sub_10003CDF4()
{
  result = qword_10023A928;
  if (!qword_10023A928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023A928);
  }

  return result;
}

unint64_t sub_10003CE4C()
{
  result = qword_10023A930;
  if (!qword_10023A930)
  {
    sub_10000CCC0(&qword_10023A938, &qword_1001B5D30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023A930);
  }

  return result;
}

uint64_t sub_10003CEB0(uint64_t result)
{
  if (result > 18000)
  {
    switch(result)
    {
      case 18001:
        return 3;
      case 18400:
        return 4;
      case 19000:
        return 5;
    }
  }

  else
  {
    switch(result)
    {
      case 0:
        return result;
      case 17400:
        return 1;
      case 18000:
        return 2;
    }
  }

  return 6;
}

uint64_t sub_10003CF2C(uint64_t a1, void *a2)
{
  _StringGuts.grow(_:)(313);
  v4._countAndFlagsBits = 0xD00000000000001BLL;
  v4._object = 0x80000001001CB510;
  String.append(_:)(v4);
  v5._countAndFlagsBits = a1;
  v5._object = a2;
  String.append(_:)(v5);
  v6._countAndFlagsBits = 665632;
  v6._object = 0xE300000000000000;
  String.append(_:)(v6);
  v7._countAndFlagsBits = 0x6C7074656B72616DLL;
  v7._object = 0xEE0064695F656361;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 0xA2C5458455420;
  v8._object = 0xE700000000000000;
  String.append(_:)(v8);
  v9._object = 0xEB0000000064695FLL;
  v9._countAndFlagsBits = 0x6B63616274736F70;
  String.append(_:)(v9);
  v10._countAndFlagsBits = 0xA2C5458455420;
  v10._object = 0xE700000000000000;
  String.append(_:)(v10);
  v11._object = 0x80000001001CA650;
  v11._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v11);
  v12._countAndFlagsBits = 0x52454745544E4920;
  v12._object = 0xEA00000000000A2CLL;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 0xD000000000000012;
  v13._object = 0x80000001001CA000;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 0x52454745544E4920;
  v14._object = 0xEA00000000000A2CLL;
  String.append(_:)(v14);
  v15._object = 0x80000001001CA940;
  v15._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 0xA2C5458455420;
  v16._object = 0xE700000000000000;
  String.append(_:)(v16);
  v17._countAndFlagsBits = 0x6F7774656E5F6461;
  v17._object = 0xED000064695F6B72;
  String.append(_:)(v17);
  v18._countAndFlagsBits = 0xA2C5458455420;
  v18._object = 0xE700000000000000;
  String.append(_:)(v18);
  v19._object = 0xEF657079745F6E6FLL;
  v19._countAndFlagsBits = 0x69737265766E6F63;
  String.append(_:)(v19);
  v20._countAndFlagsBits = 0xA2C5458455420;
  v20._object = 0xE700000000000000;
  String.append(_:)(v20);
  v21._countAndFlagsBits = 0x6E69775F646964;
  v21._object = 0xE700000000000000;
  String.append(_:)(v21);
  v22._countAndFlagsBits = 0x52454745544E4920;
  v22._object = 0xEA00000000000A2CLL;
  String.append(_:)(v22);
  v23._countAndFlagsBits = 0x65636E6575716573;
  v23._object = 0xEE007865646E695FLL;
  String.append(_:)(v23);
  v24._countAndFlagsBits = 0x52454745544E4920;
  v24._object = 0xEA00000000000A2CLL;
  String.append(_:)(v24);
  v25._countAndFlagsBits = 0x5F746361706D6F63;
  v25._object = 0xEB0000000073776ALL;
  String.append(_:)(v25);
  v26._countAndFlagsBits = 0xA2C5458455420;
  v26._object = 0xE700000000000000;
  String.append(_:)(v26);
  v27._object = 0xEC0000006C72755FLL;
  v27._countAndFlagsBits = 0x6B63616274736F70;
  String.append(_:)(v27);
  v28._countAndFlagsBits = 0xA2C5458455420;
  v28._object = 0xE700000000000000;
  String.append(_:)(v28);
  v29._object = 0x80000001001CA670;
  v29._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v29);
  v30._countAndFlagsBits = 0xA2C5458455420;
  v30._object = 0xE700000000000000;
  String.append(_:)(v30);
  v31._countAndFlagsBits = 0xD000000000000015;
  v31._object = 0x80000001001CA8E0;
  String.append(_:)(v31);
  v32._countAndFlagsBits = 0xA2C5458455420;
  v32._object = 0xE700000000000000;
  String.append(_:)(v32);
  v33._countAndFlagsBits = 0xD000000000000015;
  v33._object = 0x80000001001CA900;
  String.append(_:)(v33);
  v34._countAndFlagsBits = 0x52454745544E4920;
  v34._object = 0xEA00000000000A2CLL;
  String.append(_:)(v34);
  v35._countAndFlagsBits = 0xD000000000000017;
  v35._object = 0x80000001001CA920;
  String.append(_:)(v35);
  v36._countAndFlagsBits = 0xA2C5458455420;
  v36._object = 0xE700000000000000;
  String.append(_:)(v36);
  v37._countAndFlagsBits = 0x7265747369676572;
  v37._object = 0xEA00000000006465;
  String.append(_:)(v37);
  v38._countAndFlagsBits = 0x52454745544E4920;
  v38._object = 0xEA00000000000A2CLL;
  String.append(_:)(v38);
  v39._countAndFlagsBits = 0x656B636F6C5F7369;
  v39._object = 0xE900000000000064;
  String.append(_:)(v39);
  v40._countAndFlagsBits = 0x52454745544E4920;
  v40._object = 0xEA00000000000A2CLL;
  String.append(_:)(v40);
  v41._countAndFlagsBits = 0xD000000000000014;
  v41._object = 0x80000001001CA9D0;
  String.append(_:)(v41);
  v42._countAndFlagsBits = 0xA2C5458455420;
  v42._object = 0xE700000000000000;
  String.append(_:)(v42);
  v43._object = 0xED000064695F6E6FLL;
  v43._countAndFlagsBits = 0x69737265766E6F63;
  String.append(_:)(v43);
  v44._countAndFlagsBits = 0xA2C5458455420;
  v44._object = 0xE700000000000000;
  String.append(_:)(v44);
  v45._countAndFlagsBits = 0xD000000000000012;
  v45._object = 0x80000001001CA620;
  String.append(_:)(v45);
  v46._countAndFlagsBits = 0x52454745544E4920;
  v46._object = 0xEA00000000000A2CLL;
  String.append(_:)(v46);
  v47._object = 0x80000001001CA960;
  v47._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v47);
  v48._countAndFlagsBits = 0x52454745544E4920;
  v48._object = 0xEA00000000000A2CLL;
  String.append(_:)(v48);
  v49._countAndFlagsBits = 0x6D69745F6B636F6CLL;
  v49._object = 0xEE00706D61747365;
  String.append(_:)(v49);
  v50._countAndFlagsBits = 0x52454745544E4920;
  v50._object = 0xEA00000000000A2CLL;
  String.append(_:)(v50);
  v51._countAndFlagsBits = 0xD000000000000016;
  v51._object = 0x80000001001CA980;
  String.append(_:)(v51);
  v52._object = 0x80000001001CB530;
  v52._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v52);
  v53._countAndFlagsBits = 0xD000000000000012;
  v53._object = 0x80000001001CA000;
  String.append(_:)(v53);
  v54._countAndFlagsBits = 8236;
  v54._object = 0xE200000000000000;
  String.append(_:)(v54);
  v55._countAndFlagsBits = 0x6B63616274736F70;
  v55._object = 0xEB0000000064695FLL;
  String.append(_:)(v55);
  v56._countAndFlagsBits = 8236;
  v56._object = 0xE200000000000000;
  String.append(_:)(v56);
  v57._countAndFlagsBits = 0xD000000000000014;
  v57._object = 0x80000001001CA9D0;
  String.append(_:)(v57);
  v58._countAndFlagsBits = 0xD000000000000018;
  v58._object = 0x80000001001CB550;
  String.append(_:)(v58);
  return 0;
}

void sub_10003D500(uint64_t a1)
{
  _StringGuts.grow(_:)(34);

  v2 = type metadata accessor for PostbackEntity();
  v3 = [v2 databaseTable];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7._countAndFlagsBits = v4;
  v7._object = v6;
  String.append(_:)(v7);

  v8._countAndFlagsBits = 0x4C4F432044444120;
  v8._object = 0xEC000000204E4D55;
  String.append(_:)(v8);
  v9._countAndFlagsBits = 0x6D6E6F7269766E65;
  v9._object = 0xEB00000000746E65;
  String.append(_:)(v9);
  v10._countAndFlagsBits = 0x3B5458455420;
  v10._object = 0xE600000000000000;
  String.append(_:)(v10);
  v11 = String._bridgeToObjectiveC()();

  sub_1001ACB3C(a1, v11);

  _StringGuts.grow(_:)(24);

  v12 = [v2 databaseTable];
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v16._countAndFlagsBits = v13;
  v16._object = v15;
  String.append(_:)(v16);

  v17._countAndFlagsBits = 0x205445530ALL;
  v17._object = 0xE500000000000000;
  String.append(_:)(v17);
  v18._countAndFlagsBits = 0x6D6E6F7269766E65;
  v18._object = 0xEB00000000746E65;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 656424224;
  v19._object = 0xE400000000000000;
  String.append(_:)(v19);
  v20._countAndFlagsBits = 0x69746375646F7270;
  v20._object = 0xEA00000000006E6FLL;
  String.append(_:)(v20);
  v21._countAndFlagsBits = 15143;
  v21._object = 0xE200000000000000;
  String.append(_:)(v21);
  v22 = String._bridgeToObjectiveC()();

  sub_1001ACB3C(a1, v22);
}

void sub_10003D76C(uint64_t a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31[0] = 0;
  v31[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(37);

  strcpy(v31, "ALTER TABLE ");
  BYTE5(v31[1]) = 0;
  HIWORD(v31[1]) = -5120;
  v6 = type metadata accessor for PostbackEntity();
  v7 = [v6 databaseTable];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11._countAndFlagsBits = v8;
  v11._object = v10;
  String.append(_:)(v11);

  v12._countAndFlagsBits = 0x4C4F432044444120;
  v12._object = 0xEC000000204E4D55;
  String.append(_:)(v12);
  v13._object = 0x80000001001CA030;
  v13._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 0x52454745544E4920;
  v14._object = 0xE90000000000003BLL;
  String.append(_:)(v14);
  v15 = String._bridgeToObjectiveC()();

  sub_1001ACB3C(a1, v15);

  v31[0] = 0;
  v31[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(24);

  strcpy(v31, "UPDATE ");
  v31[1] = 0xE700000000000000;
  v16 = [v6 databaseTable];
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  v20._countAndFlagsBits = v17;
  v20._object = v19;
  String.append(_:)(v20);

  v21._countAndFlagsBits = 0x205445530ALL;
  v21._object = 0xE500000000000000;
  String.append(_:)(v21);
  v22._object = 0x80000001001CA030;
  v22._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v22);
  v23._countAndFlagsBits = 656424224;
  v23._object = 0xE400000000000000;
  String.append(_:)(v23);
  static Date.now.getter();
  Date.timeIntervalSince1970.getter();
  v25 = v24;
  (*(v3 + 8))(v5, v2);
  v26 = v25 * 1000.0;
  if (COERCE__INT64(fabs(v25 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v26 <= -1.0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v26 < 1.84467441e19)
  {
    v30[1] = v26;
    v27._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v27);

    v28._countAndFlagsBits = 15143;
    v28._object = 0xE200000000000000;
    String.append(_:)(v28);
    v29 = String._bridgeToObjectiveC()();

    sub_1001ACB3C(a1, v29);

    return;
  }

LABEL_7:
  __break(1u);
}

void sub_10003DAC0(uint64_t a1)
{
  _StringGuts.grow(_:)(37);

  v2 = [type metadata accessor for PostbackEntity() databaseTable];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6._countAndFlagsBits = v3;
  v6._object = v5;
  String.append(_:)(v6);

  v7._countAndFlagsBits = 0x4C4F432044444120;
  v7._object = 0xEC000000204E4D55;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 0x69737265766E6F63;
  v8._object = 0xEE006761745F6E6FLL;
  String.append(_:)(v8);
  v9._countAndFlagsBits = 0x52454745544E4920;
  v9._object = 0xE90000000000003BLL;
  String.append(_:)(v9);
  v10 = String._bridgeToObjectiveC()();

  sub_1001ACB3C(a1, v10);
}

void sub_10003DC18(uint64_t a1)
{
  _StringGuts.grow(_:)(34);

  v2 = [type metadata accessor for PostbackEntity() databaseTable];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6._countAndFlagsBits = v3;
  v6._object = v5;
  String.append(_:)(v6);

  v7._countAndFlagsBits = 0x4C4F432044444120;
  v7._object = 0xEC000000204E4D55;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 0x5F7972746E756F63;
  v8._object = 0xEC00000065646F63;
  String.append(_:)(v8);
  v9._countAndFlagsBits = 0x3B5458455420;
  v9._object = 0xE600000000000000;
  String.append(_:)(v9);
  v10 = String._bridgeToObjectiveC()();

  sub_1001ACB3C(a1, v10);
}

void sub_10003DD64(unsigned __int8 a1, uint64_t a2)
{
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      sub_10003DAC0(a2);
    }

    else if (a1 == 4)
    {
      sub_10003DC18(a2);
    }
  }

  else if (a1)
  {
    if (a1 == 1)
    {
      sub_10003D500(a2);
    }

    else
    {
      sub_10003D76C(a2);
    }
  }

  else
  {
    v3 = [type metadata accessor for PostbackEntity() databaseTable];
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    sub_10003CF2C(v4, v6);

    v7 = String._bridgeToObjectiveC()();

    sub_1001ACB3C(a2, v7);
  }
}

uint64_t getEnumTagSinglePayload for PostbackSchemaVersion(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PostbackSchemaVersion(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

char *sub_10003DFB4()
{
  result = sub_10003DFD4();
  qword_10023FC50 = result;
  return result;
}

char *sub_10003DFD4()
{
  v0 = type metadata accessor for URL.DirectoryHint();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000CDE0(&qword_10023C230, &qword_1001B4FB0);
  __chkstk_darwin(v4 - 8);
  v6 = v27 - v5;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  sub_100160644(v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_10001B884(v6);
    if (qword_100239CC0 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_10000DAC0(v23, qword_10023FC70);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "Failed to get cached data url", v26, 2u);
    }

    exit(0);
  }

  (*(v8 + 32))(v13, v6, v7);
  strcpy(v27, "storeUser.db");
  HIBYTE(v27[6]) = 0;
  v27[7] = -5120;
  (*(v1 + 104))(v3, enum case for URL.DirectoryHint.inferFromPath(_:), v0);
  sub_10003E5C8();
  URL.appending<A>(path:directoryHint:)();
  (*(v1 + 8))(v3, v0);
  URL.absoluteString.getter();
  v14 = *(v8 + 8);
  v14(v11, v7);
  v15 = objc_allocWithZone(SQLiteConnectionOptions);
  v16 = String._bridgeToObjectiveC()();

  v17 = sub_1001AB3DC(v15, v16);

  v18 = sub_1001AB538(objc_allocWithZone(SQLiteConnection), v17);
  v19 = sub_10003E3C8();
  v20 = objc_allocWithZone(type metadata accessor for SQLiteDatabase(0));
  v21 = sub_100061318(v18, v19);

  v14(v13, v7);
  return v21;
}

uint64_t sub_10003E3C8()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v4);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  sub_10003E61C();
  static DispatchQoS.unspecified.getter();
  v7[1] = _swiftEmptyArrayStorage;
  sub_10003E668();
  sub_10000CDE0(&qword_10023A950, &qword_1001B5DB8);
  sub_10003E6C0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v0);
  return OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
}

unint64_t sub_10003E5C8()
{
  result = qword_10023A940;
  if (!qword_10023A940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023A940);
  }

  return result;
}

unint64_t sub_10003E61C()
{
  result = qword_10023B300;
  if (!qword_10023B300)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10023B300);
  }

  return result;
}

unint64_t sub_10003E668()
{
  result = qword_10023A948;
  if (!qword_10023A948)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023A948);
  }

  return result;
}

unint64_t sub_10003E6C0()
{
  result = qword_10023A958;
  if (!qword_10023A958)
  {
    sub_10000CCC0(&qword_10023A950, &qword_1001B5DB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023A958);
  }

  return result;
}

uint64_t sub_10003E72C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 600))
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

uint64_t sub_10003E774(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
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
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 600) = 1;
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

    *(result + 600) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10003E860@<X0>(uint64_t a1@<X8>)
{
  if (qword_100239CA8 != -1)
  {
    swift_once();
  }

  v2 = qword_10023FC50;
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 sharedScheduler];
  *(a1 + 192) = &type metadata for ActivityManager;
  *(a1 + 200) = &off_100223E90;
  v6 = swift_allocObject();
  *(a1 + 168) = v6;
  v6[5] = &type metadata for BackgroundSystemTaskScheduler;
  v6[6] = &off_100217910;
  v6[2] = v5;
  *(a1 + 256) = &type metadata for AttributionKitCanineArbiter;
  *(a1 + 264) = &off_1002191C8;
  if (qword_100239C90 != -1)
  {
    swift_once();
  }

  v7 = qword_10023FC28;
  *(a1 + 296) = type metadata accessor for TaskGreyhound(0);
  *(a1 + 304) = &off_1002169F0;
  *(a1 + 272) = v7;
  *(a1 + 336) = &type metadata for LaunchServicesRecordFactory;
  *(a1 + 344) = &off_10021CBA8;
  *(a1 + 376) = &type metadata for AMSDogBag;
  *(a1 + 384) = &off_100222F48;

  v8 = [v3 sharedScheduler];
  v13[3] = &type metadata for ActivityManager;
  v13[4] = &off_100223E90;
  v9 = swift_allocObject();
  v12[4] = &off_10021CBA8;
  v13[0] = v9;
  v9[5] = &type metadata for BackgroundSystemTaskScheduler;
  v9[6] = &off_100217910;
  v9[2] = v8;
  v12[3] = &type metadata for LaunchServicesRecordFactory;
  sub_1000B8524(v13, v12, a1 + 392);
  *(a1 + 504) = &type metadata for AppStoreDaemonSKANInterop;
  *(a1 + 512) = &off_100222C60;
  sub_1000B42E0((a1 + 520));
  if (qword_100239D30 != -1)
  {
    swift_once();
  }

  v10 = qword_10023FD90;
  *(a1 + 584) = type metadata accessor for SnoutManager(0);
  *(a1 + 592) = &off_100223858;
  *(a1 + 560) = v10;
  strcpy(a1, "postback_store");
  *(a1 + 15) = -18;
  *(a1 + 16) = v4;
  *(a1 + 24) = 0x63616274736F6867;
  *(a1 + 32) = 0xEF65726F74735F6BLL;
  *(a1 + 40) = v4;
  *(a1 + 48) = 0xD000000000000010;
  *(a1 + 56) = 0x80000001001CB320;
  *(a1 + 64) = v4;
  *(a1 + 72) = 0x74735F6E656B6F74;
  *(a1 + 80) = 0xEB0000000065726FLL;
  *(a1 + 88) = v4;
  *(a1 + 96) = 0xD000000000000012;
  *(a1 + 104) = 0x80000001001CB340;
  *(a1 + 112) = v4;
  *(a1 + 120) = 0xD000000000000014;
  *(a1 + 128) = 0x80000001001CB360;
  *(a1 + 136) = v4;
  *(a1 + 144) = 0xD000000000000018;
  *(a1 + 152) = 0x80000001001CB380;
  *(a1 + 160) = v4;
  *(a1 + 208) = 0xD000000000000011;
  *(a1 + 216) = 0x80000001001CB3A0;
  *(a1 + 224) = v4;
}

uint64_t sub_10003EBDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[89] = v3;
  v4[88] = a3;
  v4[87] = a2;
  updated = type metadata accessor for PostbackUpdateData(0);
  v4[90] = updated;
  v6 = *(updated - 8);
  v4[91] = v6;
  v4[92] = *(v6 + 64);
  v4[93] = swift_task_alloc();
  v4[94] = swift_task_alloc();
  v7 = type metadata accessor for Date();
  v4[95] = v7;
  v4[96] = *(v7 - 8);
  v4[97] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v4[98] = v8;
  v4[99] = *(v8 - 8);
  v4[100] = swift_task_alloc();
  v4[101] = swift_task_alloc();

  return _swift_task_switch(sub_10003ED7C, 0, 0);
}

uint64_t sub_10003ED7C()
{
  v1 = *(v0 + 808);
  v2 = *(v0 + 792);
  v3 = *(v0 + 784);
  v4 = Logger.postbackProxy.unsafeMutableAddressor();
  v5 = *(v2 + 16);
  *(v0 + 816) = v5;
  *(v0 + 824) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Protected update path", v8, 2u);
  }

  v9 = *(v0 + 808);
  v10 = *(v0 + 792);
  v11 = *(v0 + 784);

  v12 = *(v10 + 8);
  *(v0 + 832) = v12;
  v12(v9, v11);
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_10003FAF8();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

  v13 = *(v0 + 616);
  *(v0 + 840) = *(v0 + 624);
  *(v0 + 904) = *(v0 + 632);
  *(v0 + 905) = *(v0 + 633);
  v14 = *(v0 + 640);
  v15 = *(v0 + 648);
  *(v0 + 848) = v15;

  if (v13 == 915061776)
  {
    *(v0 + 856) = sub_10003FCC4(&off_100213E90);
    v16 = swift_task_alloc();
    *(v0 + 864) = v16;
    *v16 = v0;
    v16[1] = sub_10003F064;

    return sub_100128E9C(v14, v15);
  }

  else
  {

    sub_10003FB4C();
    swift_allocError();
    *v18 = 3;
    swift_willThrow();

    v19 = *(v0 + 8);

    return v19();
  }
}

uint64_t sub_10003F064(uint64_t a1, char a2)
{
  v4 = *v3;
  *(v4 + 872) = a1;
  *(v4 + 906) = a2;
  *(v4 + 880) = v2;

  if (v2)
  {

    v5 = sub_10003FA4C;
  }

  else
  {
    v5 = sub_10003F19C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10003F19C(uint64_t a1)
{
  v2 = *(v1 + 856);
  v3 = *(v1 + 840);
  static Date.now.getter();
  if (v3 >= 0x40)
  {
    sub_1000401C4();
    swift_allocError();
    v4[1] = 0;
    v4[2] = 0;
    *v4 = 6;
LABEL_3:
    v5 = *(v1 + 776);
    v6 = *(v1 + 768);
    v7 = *(v1 + 760);
    swift_willThrow();
    (*(v6 + 8))(v5, v7);

    v8 = *(v1 + 8);

    return v8();
  }

  v52 = v2;
  v10 = *(v1 + 856);
  if (*(v10 + 16))
  {
    Hasher.init(_seed:)();
    String.hash(into:)();
    v11 = Hasher._finalize()();
    v12 = v10 + 56;
    v13 = -1 << *(v10 + 32);
    v14 = v11 & ~v13;
    if ((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
    {
      v15 = ~v13;
      v16 = *(v1 + 856);
      while (1)
      {
        v17 = *(*(v16 + 48) + v14);
        if (v17 != 1 && v17 != 2)
        {
          break;
        }

        v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v18)
        {
          goto LABEL_22;
        }

        v14 = (v14 + 1) & v15;
        if (((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
        {
          goto LABEL_13;
        }
      }
    }

    else
    {
LABEL_13:
      if (!*(v10 + 16))
      {
        goto LABEL_23;
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      v19 = Hasher._finalize()();
      v20 = -1 << *(v10 + 32);
      v21 = v19 & ~v20;
      if (((*(v12 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
      {
        goto LABEL_23;
      }

      v22 = ~v20;
      v23 = *(v1 + 856);
      while (!*(*(v23 + 48) + v21) || *(*(v23 + 48) + v21) == 2)
      {
        v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v24)
        {
          goto LABEL_22;
        }

        v21 = (v21 + 1) & v22;
        if (((*(v12 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
        {
          goto LABEL_23;
        }
      }
    }

LABEL_22:
    if ((*(v1 + 906) & 1) == 0)
    {
      sub_10003FB4C();
      swift_allocError();
      *v49 = 1;
      goto LABEL_3;
    }
  }

LABEL_23:
  v25 = *(v1 + 906);
  v26 = *(v1 + 872);
  v27 = *(v1 + 905);
  v28 = *(v1 + 904);
  v29 = *(v1 + 840);
  v51 = *(v1 + 816);
  v30 = *(v1 + 800);
  v50 = *(v1 + 784);
  v31 = *(v1 + 752);
  v32 = *(v1 + 720);
  (*(*(v1 + 768) + 16))(v31 + *(v32 + 32), *(v1 + 776), *(v1 + 760));
  *v31 = v29;
  *(v31 + 8) = v28;
  *(v31 + 9) = v27;
  *(v31 + 16) = v52;
  v33 = v31 + *(v32 + 36);
  *v33 = v26;
  *(v33 + 8) = v25 & 1;

  v34 = Logger.postback.unsafeMutableAddressor();
  v51(v30, v34, v50);
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&_mh_execute_header, v35, v36, "Queueing update postback", v37, 2u);
  }

  v38 = *(v1 + 832);
  v39 = *(v1 + 800);
  v40 = *(v1 + 784);
  v41 = *(v1 + 752);
  v42 = *(v1 + 744);
  v43 = *(v1 + 728);
  v44 = *(v1 + 712);

  v38(v39, v40);
  sub_10003FD38(v44, v1 + 16);
  sub_10003FD94(v41, v42);
  v45 = (*(v43 + 80) + 624) & ~*(v43 + 80);
  v46 = swift_allocObject();
  *(v1 + 888) = v46;
  memcpy((v46 + 16), (v1 + 16), 0x258uLL);
  *(v46 + 616) = 915061776;
  sub_10003FFB8(v42, v46 + v45);
  sub_10000DA7C((v44 + 272), *(v44 + 296));
  *(v1 + 680) = sub_10000CDE0(&qword_10023A970, &qword_1001B5EF8);
  *(v1 + 688) = sub_100040104();
  *(v1 + 656) = &unk_1001B5EF0;
  *(v1 + 664) = v46;
  v47 = type metadata accessor for TaskGreyhound(0);

  v48 = swift_task_alloc();
  *(v1 + 896) = v48;
  *v48 = v1;
  v48[1] = sub_10003F848;

  return (sub_10000C9BC)(v1 + 656, v47, &off_1002169F0);
}

uint64_t sub_10003F848()
{
  v1 = *v0;

  sub_10000DB58((v1 + 656));

  return _swift_task_switch(sub_10003F94C, 0, 0);
}

uint64_t sub_10003F94C()
{
  v1 = v0[97];
  v2 = v0[96];
  v3 = v0[95];
  v4 = v0[94];

  sub_100040168(v4);
  (*(v2 + 8))(v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_10003FA4C()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_10003FAF8()
{
  result = qword_10023A960;
  if (!qword_10023A960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023A960);
  }

  return result;
}

unint64_t sub_10003FB4C()
{
  result = qword_10023A968;
  if (!qword_10023A968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023A968);
  }

  return result;
}

uint64_t sub_10003FBA0(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_100021FF4(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_10003FC38(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v7 = result;
  if (v2)
  {
    v4 = a1 + 32;
    do
    {
      sub_100025CC4(v4, v5);
      sub_1000223FC(v6, v5);
      sub_100025D20(v6);
      v4 += 40;
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_10003FCC4(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_100040218();
  result = Set.init(minimumCapacity:)();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_100022548(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_10003FD94(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for PostbackUpdateData(0);
  (*(*(updated - 8) + 16))(a2, a1, updated);
  return a2;
}

uint64_t sub_10003FDF8()
{
  v1 = (type metadata accessor for PostbackUpdateData(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 624) & ~v2;
  v4 = *(*v1 + 64);

  sub_10000DB58((v0 + 184));

  sub_10000DB58((v0 + 248));
  sub_10000DB58((v0 + 288));
  sub_10000DB58((v0 + 328));
  sub_10000DB58((v0 + 368));
  sub_10000DB58((v0 + 408));
  sub_10000DB58((v0 + 448));

  sub_10000DB58((v0 + 496));
  sub_10000DB58((v0 + 536));
  sub_10000DB58((v0 + 576));

  v5 = v1[10];
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10003FFB8(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for PostbackUpdateData(0);
  (*(*(updated - 8) + 32))(a2, a1, updated);
  return a2;
}

uint64_t sub_10004001C(uint64_t a1)
{
  v4 = *(type metadata accessor for PostbackUpdateData(0) - 8);
  v5 = (*(v4 + 80) + 624) & ~*(v4 + 80);
  v6 = *(v1 + 616);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000BD30;

  return sub_100129264(a1, v1 + 16, v6, v1 + v5);
}

unint64_t sub_100040104()
{
  result = qword_10023A978;
  if (!qword_10023A978)
  {
    sub_10000CCC0(&qword_10023A970, &qword_1001B5EF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023A978);
  }

  return result;
}

uint64_t sub_100040168(uint64_t a1)
{
  updated = type metadata accessor for PostbackUpdateData(0);
  (*(*(updated - 8) + 8))(a1, updated);
  return a1;
}

unint64_t sub_1000401C4()
{
  result = qword_10023A980;
  if (!qword_10023A980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023A980);
  }

  return result;
}

unint64_t sub_100040218()
{
  result = qword_10023A988;
  if (!qword_10023A988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023A988);
  }

  return result;
}

uint64_t sub_10004026C()
{
  sub_10000DB58((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

unint64_t sub_1000402B8()
{
  result = qword_10023A990;
  if (!qword_10023A990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023A990);
  }

  return result;
}

Swift::Int sub_100040330()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1001B6098[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_1000403B8(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1001B6098[v2]);
  return Hasher._finalize()();
}

uint64_t sub_100040404@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000406A4(*a1);
  *a2 = result;
  return result;
}

void sub_100040458(_BYTE *result, uint64_t a2)
{
  if (*result > 1u)
  {
    if (*result == 2)
    {
      sub_100040B6C(a2);
    }
  }

  else if (*result)
  {
    sub_100040A14(a2);
  }

  else
  {
    sub_1000406F8(a2);
  }
}

unint64_t sub_1000404B0(void *a1)
{
  a1[1] = sub_1000404E8();
  a1[2] = sub_10004053C();
  result = sub_100040590();
  a1[3] = result;
  return result;
}

unint64_t sub_1000404E8()
{
  result = qword_10023A9D8;
  if (!qword_10023A9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023A9D8);
  }

  return result;
}

unint64_t sub_10004053C()
{
  result = qword_10023A9E0;
  if (!qword_10023A9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023A9E0);
  }

  return result;
}

unint64_t sub_100040590()
{
  result = qword_10023A9E8;
  if (!qword_10023A9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023A9E8);
  }

  return result;
}

unint64_t sub_1000405E8()
{
  result = qword_10023A9F0;
  if (!qword_10023A9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023A9F0);
  }

  return result;
}

unint64_t sub_100040640()
{
  result = qword_10023A9F8;
  if (!qword_10023A9F8)
  {
    sub_10000CCC0(&qword_10023AA00, &qword_1001B6040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023A9F8);
  }

  return result;
}

uint64_t sub_1000406A4(uint64_t result)
{
  if (result > 17999)
  {
    if (result == 19000)
    {
      return 3;
    }

    if (result == 18000)
    {
      return 2;
    }
  }

  else
  {
    if (!result)
    {
      return result;
    }

    if (result == 17400)
    {
      return 1;
    }
  }

  return 4;
}

void sub_1000406F8(uint64_t a1)
{
  _StringGuts.grow(_:)(152);
  v2._countAndFlagsBits = 0xD00000000000001BLL;
  v2._object = 0x80000001001CB510;
  String.append(_:)(v2);
  v3 = [type metadata accessor for SnoutStoryEntity() databaseTable];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7._countAndFlagsBits = v4;
  v7._object = v6;
  String.append(_:)(v7);

  v8._countAndFlagsBits = 665632;
  v8._object = 0xE300000000000000;
  String.append(_:)(v8);
  v9._countAndFlagsBits = 0x64695F79726F7473;
  v9._object = 0xE800000000000000;
  String.append(_:)(v9);
  v10._countAndFlagsBits = 0xA2C5458455420;
  v10._object = 0xE700000000000000;
  String.append(_:)(v10);
  v11._countAndFlagsBits = 0xD000000000000012;
  v11._object = 0x80000001001CA000;
  String.append(_:)(v11);
  v12._countAndFlagsBits = 0x52454745544E4920;
  v12._object = 0xEA00000000000A2CLL;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 0x69737265766E6F63;
  v13._object = 0xED000064695F6E6FLL;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 0xA2C5458455420;
  v14._object = 0xE700000000000000;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 0xD000000000000010;
  v15._object = 0x80000001001CA050;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 0x4E41454C4F4F4220;
  v16._object = 0xEA00000000000A2CLL;
  String.append(_:)(v16);
  v17._object = 0x80000001001CA070;
  v17._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v17);
  v18._countAndFlagsBits = 0x4E41454C4F4F4220;
  v18._object = 0xEA00000000000A2CLL;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 0x5F676E69646E6570;
  v19._object = 0xEE0073746E657665;
  String.append(_:)(v19);
  v20._countAndFlagsBits = 0xA2C4E4F534A20;
  v20._object = 0xE700000000000000;
  String.append(_:)(v20);
  v21._object = 0x80000001001CA0A0;
  v21._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v21);
  v22._countAndFlagsBits = 0x52454745544E4920;
  v22._object = 0xEA00000000000A2CLL;
  String.append(_:)(v22);
  v23._countAndFlagsBits = 0xD000000000000017;
  v23._object = 0x80000001001CA0C0;
  String.append(_:)(v23);
  v24._object = 0x80000001001CB530;
  v24._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v24);
  v25._countAndFlagsBits = 0x64695F79726F7473;
  v25._object = 0xE800000000000000;
  String.append(_:)(v25);
  v26._countAndFlagsBits = 0xD000000000000018;
  v26._object = 0x80000001001CB550;
  String.append(_:)(v26);
  v27 = String._bridgeToObjectiveC()();

  sub_1001ACB3C(a1, v27);
}

void sub_100040A14(uint64_t a1)
{
  _StringGuts.grow(_:)(67);
  v2._object = 0x80000001001CB510;
  v2._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v2);
  v3 = [type metadata accessor for SoloEventEntity() databaseTable];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7._countAndFlagsBits = v4;
  v7._object = v6;
  String.append(_:)(v7);

  v8._countAndFlagsBits = 0xD00000000000001CLL;
  v8._object = 0x80000001001CB5A0;
  String.append(_:)(v8);
  v9._countAndFlagsBits = 0x76655F74756F6E73;
  v9._object = 0xEB00000000746E65;
  String.append(_:)(v9);
  v10._countAndFlagsBits = 0x3B290A4E4F534A20;
  v10._object = 0xE800000000000000;
  String.append(_:)(v10);
  v11 = String._bridgeToObjectiveC()();

  sub_1001ACB3C(a1, v11);
}

void sub_100040B6C(uint64_t a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34[0] = 0;
  v34[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(37);

  strcpy(v34, "ALTER TABLE ");
  BYTE5(v34[1]) = 0;
  HIWORD(v34[1]) = -5120;
  v6 = type metadata accessor for SnoutStoryEntity();
  v7 = [v6 databaseTable];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11._countAndFlagsBits = v8;
  v11._object = v10;
  String.append(_:)(v11);

  v12._countAndFlagsBits = 0x4C4F432044444120;
  v12._object = 0xEC000000204E4D55;
  String.append(_:)(v12);
  v13._object = 0x80000001001CA030;
  v13._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 0x52454745544E4920;
  v14._object = 0xE90000000000003BLL;
  String.append(_:)(v14);
  v15 = String._bridgeToObjectiveC()();

  sub_1001ACB3C(a1, v15);

  static Date.now.getter();
  Date.timeIntervalSince1970.getter();
  v17 = v16;
  (*(v3 + 8))(v5, v2);
  v18 = v17 * 1000.0;
  if (COERCE__INT64(fabs(v17 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v18 <= -1.0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v18 < 1.84467441e19)
  {
    v19 = v18;
    v34[0] = 0;
    v34[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(41);

    strcpy(v34, "UPDATE ");
    v34[1] = 0xE700000000000000;
    v20 = [v6 databaseTable];
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    v24._countAndFlagsBits = v21;
    v24._object = v23;
    String.append(_:)(v24);

    v25._countAndFlagsBits = 0x205445530ALL;
    v25._object = 0xE500000000000000;
    String.append(_:)(v25);
    v26._object = 0x80000001001CA030;
    v26._countAndFlagsBits = 0xD000000000000014;
    String.append(_:)(v26);
    v27._countAndFlagsBits = 61;
    v27._object = 0xE100000000000000;
    String.append(_:)(v27);
    v33[1] = v19;
    v28._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v28);

    v29._countAndFlagsBits = 0x2045524548570ALL;
    v29._object = 0xE700000000000000;
    String.append(_:)(v29);
    v30._countAndFlagsBits = 0x69737265766E6F63;
    v30._object = 0xED000064695F6E6FLL;
    String.append(_:)(v30);
    v31._countAndFlagsBits = 0x20544F4E20534920;
    v31._object = 0xED00003B4C4C554ELL;
    String.append(_:)(v31);
    v32 = String._bridgeToObjectiveC()();

    sub_1001ACB3C(a1, v32);

    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_100040F24()
{
  v1[21] = v0;
  v2 = type metadata accessor for URLRequest();
  v1[22] = v2;
  v1[23] = *(v2 - 8);
  v1[24] = swift_task_alloc();
  v3 = type metadata accessor for URL();
  v1[25] = v3;
  v1[26] = *(v3 - 8);
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  sub_10000CDE0(&qword_10023C230, &qword_1001B4FB0);
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v4 = swift_task_alloc();
  v1[33] = v4;
  *v4 = v1;
  v4[1] = sub_1000410EC;

  return sub_100158B54(8);
}

uint64_t sub_1000410EC(char a1)
{
  *(*v1 + 368) = a1;

  return _swift_task_switch(sub_1000411EC, 0, 0);
}

uint64_t sub_1000411EC()
{
  v1 = *(v0 + 368);
  if (v1 == 2 || (v1 & 1) == 0)
  {
    if (qword_100239CC8 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000DAC0(v5, qword_10023FC88);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Reengagement fetch is disabled", v8, 2u);
    }

    sub_100043830();
    swift_allocError();
    *v9 = 0;
    swift_willThrow();

    v10 = *(v0 + 8);

    return v10();
  }

  else
  {
    sub_10000DA7C((*(v0 + 168) + 8), *(*(v0 + 168) + 32));
    v2 = swift_task_alloc();
    *(v0 + 272) = v2;
    *v2 = v0;
    v2[1] = sub_10004141C;
    v3 = *(v0 + 248);

    return sub_100157BD8(v3, 9);
  }
}

uint64_t sub_10004141C()
{

  return _swift_task_switch(sub_100041518, 0, 0);
}

uint64_t sub_100041518()
{
  v1 = v0[31];
  v2 = v0[25];
  v3 = v0[26];
  v4 = *(v3 + 48);
  v5 = v4(v1, 1, v2);
  v6 = v0[32];
  if (v5 == 1)
  {
    URL.init(string:)();
    if (v4(v1, 1, v2) != 1)
    {
      sub_10001B884(v0[31]);
    }
  }

  else
  {
    (*(v3 + 32))(v0[32], v1, v2);
    (*(v3 + 56))(v6, 0, 1, v2);
  }

  v7 = v0[30];
  v8 = v0[25];
  sub_10001B8EC(v0[32], v7);
  if (v4(v7, 1, v8) == 1)
  {
    sub_10001B884(v0[30]);
    if (qword_100239CC8 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000DAC0(v9, qword_10023FC88);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Invalid URL for token fetch task", v12, 2u);
    }

    v13 = v0[32];

    sub_100043830();
    swift_allocError();
    *v14 = 1;
    swift_willThrow();
    sub_10001B884(v13);

    v18 = v0[1];

    return v18();
  }

  else
  {
    v15 = v0[21];
    (*(v0[26] + 32))(v0[29], v0[30], v0[25]);
    type metadata accessor for JSONEncoder();
    swift_allocObject();
    JSONEncoder.init()();
    v0[18] = *v15;
    sub_100043884();

    v16 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v0[35] = 0;
    v0[36] = v16;
    v0[37] = v17;
    v21 = v0[28];
    v20 = v0[29];
    v23 = v0[26];
    v22 = v0[27];
    v24 = v0[25];
    v25 = v16;
    v26 = v17;

    v27 = *(v23 + 16);
    v27(v21, v20, v24);
    v27(v22, v21, v24);
    sub_1000438D8(v25, v26);
    URLRequest.init(url:cachePolicy:timeoutInterval:)();
    URLRequest.httpMethod.setter();
    sub_1000438D8(v25, v26);
    URLRequest.httpBody.setter();
    v28._countAndFlagsBits = 0x2D746E65746E6F43;
    v28._object = 0xEC00000065707954;
    v29.value._object = 0x80000001001CB610;
    v29.value._countAndFlagsBits = 0xD000000000000010;
    URLRequest.setValue(_:forHTTPHeaderField:)(v29, v28);
    sub_10001BABC(v25, v26);
    v30 = *(v23 + 8);
    v0[38] = v30;
    v0[39] = (v23 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v30(v21, v24);
    v31 = [objc_opt_self() deviceGUID];
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;

    v35._countAndFlagsBits = 0x646975472D58;
    v36.value._countAndFlagsBits = v32;
    v36.value._object = v34;
    v35._object = 0xE600000000000000;
    URLRequest.setValue(_:forHTTPHeaderField:)(v36, v35);

    v37 = String._bridgeToObjectiveC()();
    v38 = String._bridgeToObjectiveC()();
    v39 = [objc_opt_self() bagForProfile:v37 profileVersion:v38];

    v40 = [objc_allocWithZone(AMSURLRequestEncoder) initWithBag:v39];
    v0[40] = v40;

    isa = URLRequest._bridgeToObjectiveC()().super.isa;
    v42 = [v40 requestByEncodingRequest:isa parameters:0];
    v0[41] = v42;

    if (qword_100239CC8 != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    v0[42] = sub_10000DAC0(v43, qword_10023FC88);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&_mh_execute_header, v44, v45, "Starting fetch token request...", v46, 2u);
    }

    v47 = [objc_opt_self() defaultSessionConfiguration];
    v48 = [objc_allocWithZone(AMSURLSession) initWithConfiguration:v47];
    v0[43] = v48;

    v49 = [v48 dataTaskPromiseWithRequestPromise:v42];
    v0[44] = v49;
    v0[2] = v0;
    v0[7] = v0 + 19;
    v0[3] = sub_100041CD8;
    v50 = swift_continuation_init();
    v0[17] = sub_10000CDE0(&qword_10023AA18, &unk_1001B60D0);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_100021DA0;
    v0[13] = &unk_100218940;
    v0[14] = v50;
    [v49 resultWithCompletion:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }
}

uint64_t sub_100041CD8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 360) = v1;
  if (v1)
  {
    v2 = sub_100042478;
  }

  else
  {
    v2 = sub_100041DE8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100041DE8()
{
  v1 = v0[19];
  v2 = [v1 response];
  if (!v2)
  {
    goto LABEL_7;
  }

  v3 = v2;
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (!v4)
  {

LABEL_7:
    v83 = v1;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "HTTP URL response is missing", v17, 2u);
    }

    v18 = v0[43];
    v19 = v0[44];
    v20 = v0[40];
    v21 = v0[41];
    v79 = v0[38];
    v23 = v0[36];
    v22 = v0[37];
    v71 = v0[29];
    v75 = v0[32];
    v63 = v0[24];
    v67 = v0[25];
    v24 = v0[23];
    v59 = v0[22];

    sub_100043830();
    swift_allocError();
    *v25 = 2;
    swift_willThrow();

    sub_10001BABC(v23, v22);
    (*(v24 + 8))(v63, v59);
    v79(v71, v67);
    v14 = v75;
    goto LABEL_14;
  }

  v5 = v4;
  if ([v4 statusCode] != 200)
  {
    v84 = v1;
    v26 = v3;
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    v82 = v26;
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 134217984;
      *(v29 + 4) = [v5 statusCode];

      _os_log_impl(&_mh_execute_header, v27, v28, "Token fetch call has failed with status code: %ld", v29, 0xCu);
    }

    else
    {
    }

    v31 = v0[43];
    v30 = v0[44];
    v33 = v0[40];
    v32 = v0[41];
    v76 = v0[38];
    v35 = v0[36];
    v34 = v0[37];
    v68 = v0[29];
    v72 = v0[32];
    v60 = v0[24];
    v64 = v0[25];
    v36 = v0[23];
    v56 = v0[22];
    sub_100043830();
    swift_allocError();
    *v37 = 3;
    swift_willThrow();

    sub_10001BABC(v35, v34);
    (*(v36 + 8))(v60, v56);
    v76(v68, v64);
    v14 = v72;
    goto LABEL_14;
  }

  v6 = v0[35];
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  v7 = [v1 data];
  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  sub_100043958();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v6)
  {
    v11 = v0[43];
    v12 = v0[44];
    v53 = v0[41];
    v54 = v0[40];
    v81 = v0[38];
    v74 = v0[29];
    v78 = v0[32];
    v70 = v0[25];
    v62 = v0[37];
    v66 = v0[24];
    v13 = v0[23];
    v55 = v0[36];
    v58 = v0[22];
    sub_10001BABC(v8, v10);

    sub_10001BABC(v55, v62);
    (*(v13 + 8))(v66, v58);
    v81(v74, v70);
    v14 = v78;
LABEL_14:
    sub_10001B884(v14);

    v38 = v0[1];

    return v38();
  }

  sub_10001BABC(v8, v10);

  v40 = v0[20];
  v42 = v0[43];
  v41 = v0[44];
  v65 = v0[41];
  v69 = v0[40];
  v80 = v0[38];
  v73 = v0[36];
  v77 = v0[37];
  v85 = v0[32];
  if (!*(v40 + 16))
  {
    v48 = v0[24];
    v57 = v0[25];
    v61 = v0[29];
    v50 = v0[22];
    v49 = v0[23];

    sub_100043830();
    swift_allocError();
    *v51 = 4;
    swift_willThrow();

    sub_10001BABC(v73, v77);
    (*(v49 + 8))(v48, v50);
    v80(v61, v57);
    v14 = v85;
    goto LABEL_14;
  }

  v43 = v0[29];
  v44 = v0[24];
  v52 = v0[25];
  v45 = v0[22];
  v46 = v0[23];

  sub_10001BABC(v73, v77);
  (*(v46 + 8))(v44, v45);
  v80(v43, v52);
  sub_10001B884(v85);

  v47 = v0[1];

  return v47(v40);
}

uint64_t sub_100042478(uint64_t a1)
{
  v2 = v1[44];
  v3 = v1[43];
  v5 = v1[40];
  v4 = v1[41];
  v16 = v1[38];
  v6 = v1[36];
  v7 = v1[37];
  v14 = v1[29];
  v15 = v1[32];
  v12 = v1[24];
  v13 = v1[25];
  v9 = v1[22];
  v8 = v1[23];
  swift_willThrow();

  sub_10001BABC(v6, v7);
  (*(v8 + 8))(v12, v9);
  v16(v14, v13);
  sub_10001B884(v15);

  v10 = v1[1];

  return v10();
}

uint64_t sub_1000425B4(void *a1, uint64_t a2)
{
  v4 = sub_10000CDE0(&qword_10023AA48, &qword_1001B6458);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v9 - v6;
  sub_10000DA7C(a1, a1[3]);
  sub_100043C98();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9[1] = a2;
  sub_10000CDE0(&qword_10023AA58, &qword_1001B6460);
  sub_1000444E8(&qword_10023AA60, sub_100043CEC, &protocol conformance descriptor for <A> [A]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_100042740(void *a1)
{
  v3 = v1;
  v5 = sub_10000CDE0(&qword_10023AAE0, &qword_1001B6490);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_10000DA7C(a1, a1[3]);
  sub_1000445B4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v10[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10[13] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10[12] = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10[11] = *(v3 + 40);
    v10[10] = 4;
    sub_10004465C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100042960(void *a1, uint64_t a2)
{
  v4 = sub_10000CDE0(&qword_10023AA98, &qword_1001B6478);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v9 - v6;
  sub_10000DA7C(a1, a1[3]);
  sub_100044374();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9[1] = a2;
  sub_10000CDE0(&qword_10023AA80, &qword_1001B6470);
  sub_1000443C8(&qword_10023AAA0, sub_100044494, &protocol conformance descriptor for <A> [A]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_100042AEC(void *a1)
{
  v3 = sub_10000CDE0(&qword_10023AB00, &qword_1001B64A0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_10000DA7C(a1, a1[3]);
  sub_100044BA4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v8[13] = 2;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v8[12] = 3;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v8[11] = 4;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_100042CCC(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10001DA0C;

  return sub_100040F24();
}

uint64_t sub_100042DC8@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_100213FB0, v3);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_100042E20(uint64_t a1)
{
  v2 = sub_100043C98();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100042E5C(uint64_t a1)
{
  v2 = sub_100043C98();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_100042E98@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_100043D40(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

Swift::Int sub_100042EEC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100042FE8(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_1000430D0(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1000431C8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100043EF4(*a1);
  *a2 = result;
  return result;
}

void sub_1000431F8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0xE900000000000070;
  v6 = 0x6D617473656D6974;
  v7 = 0xEF7265696669746ELL;
  v8 = 0x6564692D6D657469;
  if (v2 != 3)
  {
    v8 = 0x6D6E6F7269766E65;
    v7 = 0xEB00000000746E65;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x2D6465646E696C62;
    v3 = 0xEF746E656D656C65;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_1000432B0()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x6D617473656D6974;
  v4 = 0x6564692D6D657469;
  if (v1 != 3)
  {
    v4 = 0x6D6E6F7269766E65;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x2D6465646E696C62;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100043364@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100043EF4(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100043398(uint64_t a1)
{
  v2 = sub_1000445B4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000433D4(uint64_t a1)
{
  v2 = sub_1000445B4();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100043410@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_100043F40(a2, &v6);
  if (!v2)
  {
    v5 = v7[0];
    *a1 = v6;
    a1[1] = v5;
    result = *(v7 + 9);
    *(a1 + 25) = *(v7 + 9);
  }

  return result;
}

Swift::Int sub_10004346C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1000434C4(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100043524@<X0>(Swift::OpaquePointer cases@<0:X3>, Swift::String *a2@<X0>, BOOL *a3@<X8>)
{
  v4 = _findStringSwitchCase(cases:string:)(cases, *a2);

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_100043574@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_100214020, v3);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_1000435CC(uint64_t a1)
{
  v2 = sub_100044374();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100043608(uint64_t a1)
{
  v2 = sub_100044374();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_100043644@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1000441C0(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_100043694()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x666F6F7270;
  v4 = 0x6369666974726563;
  if (v1 != 3)
  {
    v4 = 0x726F727265;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x746E656D656C65;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100043724@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000446B0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10004374C(uint64_t a1)
{
  v2 = sub_100044BA4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100043788(uint64_t a1)
{
  v2 = sub_100044BA4();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_1000437C4@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_100044854(a2, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v7;
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

unint64_t sub_100043830()
{
  result = qword_10023AA08;
  if (!qword_10023AA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023AA08);
  }

  return result;
}

unint64_t sub_100043884()
{
  result = qword_10023AA10;
  if (!qword_10023AA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023AA10);
  }

  return result;
}

uint64_t sub_1000438D8(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_100043958()
{
  result = qword_10023AA20;
  if (!qword_10023AA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023AA20);
  }

  return result;
}

ValueMetadata *type metadata accessor for TokenFetchRequest()
{
  return &type metadata for TokenFetchRequest;
}

{
  return &type metadata for TokenFetchRequest;
}

__n128 sub_1000439DC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000439F0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100043A38(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_100043A94(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100043AB8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 72))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_100043B14(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

__n128 sub_100043B88(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_100043B9C(uint64_t *a1, int a2)
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

uint64_t sub_100043BE4(uint64_t result, int a2, int a3)
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

unint64_t sub_100043C44()
{
  result = qword_10023AA40;
  if (!qword_10023AA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023AA40);
  }

  return result;
}

unint64_t sub_100043C98()
{
  result = qword_10023AA50;
  if (!qword_10023AA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023AA50);
  }

  return result;
}

unint64_t sub_100043CEC()
{
  result = qword_10023AA68;
  if (!qword_10023AA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023AA68);
  }

  return result;
}

void *sub_100043D40(void *a1)
{
  v3 = sub_10000CDE0(&qword_10023AAB0, &qword_1001B6480);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - v5;
  v7 = sub_10000DA7C(a1, a1[3]);
  sub_100043C98();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_10000DB58(a1);
  }

  else
  {
    sub_10000CDE0(&qword_10023AA58, &qword_1001B6460);
    sub_1000444E8(&qword_10023AAB8, sub_100044560, &protocol conformance descriptor for <A> [A]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    sub_10000DB58(a1);
  }

  return v7;
}

unint64_t sub_100043EF4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100213EE0, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100043F40@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10000CDE0(&qword_10023AAC8, &qword_1001B6488);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - v7;
  sub_10000DA7C(a1, a1[3]);
  sub_1000445B4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000DB58(a1);
  }

  v26 = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v25 = 1;
  v10 = KeyedDecodingContainer.decode(_:forKey:)();
  v12 = v11;
  v20 = v10;
  v24 = 2;
  v19 = KeyedDecodingContainer.decode(_:forKey:)();
  v23 = 3;
  v18 = KeyedDecodingContainer.decode(_:forKey:)();
  v21 = 4;
  sub_100044608();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v13 = v22;
  result = sub_10000DB58(a1);
  v15 = v19;
  v16 = v20;
  *a2 = v9;
  *(a2 + 8) = v16;
  *(a2 + 16) = v12;
  *(a2 + 24) = v15;
  *(a2 + 32) = v18;
  *(a2 + 40) = v13;
  return result;
}

void *sub_1000441C0(void *a1)
{
  v3 = sub_10000CDE0(&qword_10023AA70, &qword_1001B6468);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - v5;
  v7 = sub_10000DA7C(a1, a1[3]);
  sub_100044374();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_10000DB58(a1);
  }

  else
  {
    sub_10000CDE0(&qword_10023AA80, &qword_1001B6470);
    sub_1000443C8(&qword_10023AA88, sub_100044440, &protocol conformance descriptor for <A> [A]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    sub_10000DB58(a1);
  }

  return v7;
}

unint64_t sub_100044374()
{
  result = qword_10023AA78;
  if (!qword_10023AA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023AA78);
  }

  return result;
}

uint64_t sub_1000443C8(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000CCC0(&qword_10023AA80, &qword_1001B6470);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100044440()
{
  result = qword_10023AA90;
  if (!qword_10023AA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023AA90);
  }

  return result;
}

unint64_t sub_100044494()
{
  result = qword_10023AAA8;
  if (!qword_10023AAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023AAA8);
  }

  return result;
}

uint64_t sub_1000444E8(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000CCC0(&qword_10023AA58, &qword_1001B6460);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100044560()
{
  result = qword_10023AAC0;
  if (!qword_10023AAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023AAC0);
  }

  return result;
}

unint64_t sub_1000445B4()
{
  result = qword_10023AAD0;
  if (!qword_10023AAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023AAD0);
  }

  return result;
}

unint64_t sub_100044608()
{
  result = qword_10023AAD8;
  if (!qword_10023AAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023AAD8);
  }

  return result;
}

unint64_t sub_10004465C()
{
  result = qword_10023AAE8;
  if (!qword_10023AAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023AAE8);
  }

  return result;
}

uint64_t sub_1000446B0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E656D656C65 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x666F6F7270 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6369666974726563 && a2 == 0xEB00000000657461 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x726F727265 && a2 == 0xE500000000000000)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_100044854@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10000CDE0(&qword_10023AAF0, &qword_1001B6498);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - v7;
  sub_10000DA7C(a1, a1[3]);
  sub_100044BA4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000DB58(a1);
  }

  LOBYTE(v36[0]) = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v36[0]) = 1;
  v29 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v30 = v10;
  LOBYTE(v36[0]) = 2;
  v11 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v28 = v12;
  v27 = v11;
  LOBYTE(v36[0]) = 3;
  v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v26 = v14;
  v25 = v13;
  v37 = 4;
  v15 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v17 = v16;
  (*(v6 + 8))(v8, v5);
  v18 = v29;
  *&v31 = v9;
  *(&v31 + 1) = v29;
  v19 = v27;
  *&v32 = v30;
  *(&v32 + 1) = v27;
  v20 = v25;
  *&v33 = v28;
  *(&v33 + 1) = v25;
  *&v34 = v26;
  *(&v34 + 1) = v15;
  v35 = v17;
  sub_100044BF8(&v31, v36);
  sub_10000DB58(a1);
  v36[0] = v9;
  v36[1] = v18;
  v36[2] = v30;
  v36[3] = v19;
  v36[4] = v28;
  v36[5] = v20;
  v36[6] = v26;
  v36[7] = v15;
  v36[8] = v17;
  result = sub_100044C30(v36);
  v22 = v34;
  *(a2 + 32) = v33;
  *(a2 + 48) = v22;
  *(a2 + 64) = v35;
  v23 = v32;
  *a2 = v31;
  *(a2 + 16) = v23;
  return result;
}

unint64_t sub_100044BA4()
{
  result = qword_10023AAF8;
  if (!qword_10023AAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023AAF8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BlueDogImpression.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BlueDogImpression.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

ValueMetadata *type metadata accessor for TokenFetchRequest.CodingKeys()
{
  return &type metadata for TokenFetchRequest.CodingKeys;
}

{
  return &type metadata for TokenFetchRequest.CodingKeys;
}

unint64_t sub_100044DF4()
{
  result = qword_10023AB08;
  if (!qword_10023AB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023AB08);
  }

  return result;
}

unint64_t sub_100044E4C()
{
  result = qword_10023AB10;
  if (!qword_10023AB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023AB10);
  }

  return result;
}

unint64_t sub_100044EA4()
{
  result = qword_10023AB18;
  if (!qword_10023AB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023AB18);
  }

  return result;
}

unint64_t sub_100044EFC()
{
  result = qword_10023AB20;
  if (!qword_10023AB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023AB20);
  }

  return result;
}

unint64_t sub_100044F54()
{
  result = qword_10023AB28;
  if (!qword_10023AB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023AB28);
  }

  return result;
}

unint64_t sub_100044FAC()
{
  result = qword_10023AB30;
  if (!qword_10023AB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023AB30);
  }

  return result;
}

unint64_t sub_100045004()
{
  result = qword_10023AB38;
  if (!qword_10023AB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023AB38);
  }

  return result;
}

unint64_t sub_10004505C()
{
  result = qword_10023AB40;
  if (!qword_10023AB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023AB40);
  }

  return result;
}

unint64_t sub_1000450B4()
{
  result = qword_10023AB48;
  if (!qword_10023AB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023AB48);
  }

  return result;
}

unint64_t sub_10004510C()
{
  result = qword_10023AB50;
  if (!qword_10023AB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023AB50);
  }

  return result;
}

unint64_t sub_100045164()
{
  result = qword_10023AB58;
  if (!qword_10023AB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023AB58);
  }

  return result;
}

unint64_t sub_1000451BC()
{
  result = qword_10023AB60;
  if (!qword_10023AB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023AB60);
  }

  return result;
}

uint64_t sub_100045278(uint64_t a1, void *a2)
{
  v23 = a1;
  v24 = a2;
  v26 = type metadata accessor for DispatchWorkItemFlags();
  v29 = *(v26 - 8);
  __chkstk_darwin(v26);
  v25 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for DispatchQoS();
  v27 = *(v3 - 8);
  v28 = v3;
  __chkstk_darwin(v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000CDE0(&qword_10023AB80, &qword_1001B6A28);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - v8;
  v10 = type metadata accessor for DispatchQoS.QoSClass();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001523C(0, &qword_10023B300, OS_dispatch_queue_ptr);
  (*(v11 + 104))(v13, enum case for DispatchQoS.QoSClass.default(_:), v10);
  v14 = static OS_dispatch_queue.global(qos:)();
  (*(v11 + 8))(v13, v10);
  (*(v7 + 16))(v9, v23, v6);
  v15 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v16 = swift_allocObject();
  v17 = v24;
  *(v16 + 16) = v24;
  (*(v7 + 32))(v16 + v15, v9, v6);
  aBlock[4] = sub_100045C60;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001F3F8;
  aBlock[3] = &unk_100218E70;
  v18 = _Block_copy(aBlock);
  v19 = v17;
  static DispatchQoS.unspecified.getter();
  v30 = _swiftEmptyArrayStorage;
  sub_100014D60();
  sub_10000CDE0(&qword_10023A348, &unk_1001B6A30);
  sub_100014DB8();
  v21 = v25;
  v20 = v26;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);

  (*(v29 + 8))(v21, v20);
  (*(v27 + 8))(v5, v28);
}

uint64_t sub_1000456A0(uint64_t a1)
{
  v2 = [objc_opt_self() sharedInstance];
  [v2 authenticateMessage:a1];

  sub_10000CDE0(&qword_10023AB80, &qword_1001B6A28);
  return CheckedContinuation.resume(returning:)();
}

Swift::Int MessageRegistration.hashValue.getter()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_1000457A0(uint64_t a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_100045800()
{
  sub_10000CE28(v0[9], (v0 + 2));
  sub_10000CDE0(&qword_10023AB68, &qword_1001B6A20);
  sub_10001523C(0, &qword_10023AB70, BKSHIDEventAuthenticationMessage_ptr);
  if (swift_dynamicCast())
  {
    v1 = v0[7];
    v0[10] = v1;
    v2 = swift_task_alloc();
    v0[11] = v2;
    *(v2 + 16) = v1;
    v3 = swift_task_alloc();
    v0[12] = v3;
    type metadata accessor for BKSHIDEventAuthenticationStatus(0);
    *v3 = v0;
    v3[1] = sub_1000459B4;

    return withCheckedContinuation<A>(isolation:function:_:)(v0 + 8, 0, 0, 0xD000000000000017, 0x80000001001CB660, sub_100045B88, v2, v4);
  }

  else
  {
    sub_100045B34();
    swift_allocError();
    swift_willThrow();
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_1000459B4()
{

  return _swift_task_switch(sub_100045ACC, 0, 0);
}

uint64_t sub_100045ACC()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_100045B34()
{
  result = qword_10023AB78;
  if (!qword_10023AB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023AB78);
  }

  return result;
}

uint64_t sub_100045B90()
{
  v1 = sub_10000CDE0(&qword_10023AB80, &qword_1001B6A28);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100045C60()
{
  sub_10000CDE0(&qword_10023AB80, &qword_1001B6A28);
  v1 = *(v0 + 16);

  return sub_1000456A0(v1);
}

uint64_t sub_100045CD0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100045D08(uint64_t a1)
{
  result = sub_100045B34();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100045D34()
{
  result = qword_10023AB88;
  if (!qword_10023AB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023AB88);
  }

  return result;
}

uint64_t sub_100045D88(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_100045DD0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_100045E1C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000BD30;

  return sub_100045EBC();
}

uint64_t sub_100045ED8()
{
  if (qword_100239CA8 != -1)
  {
    swift_once();
  }

  v1 = qword_10023FC50;
  sub_1000B44B4(v0 + 20);
  v0[28] = &type metadata for LaunchServicesRecordFactory;
  v0[29] = &off_10021CBA8;
  v0[33] = &type metadata for DogTokenClientFactory;
  v0[34] = &off_100219C38;
  if (qword_100239C90 != -1)
  {
    swift_once();
  }

  v2 = qword_10023FC28;
  v0[38] = type metadata accessor for TaskGreyhound(0);
  v0[39] = &off_1002169F0;
  v0[35] = v2;
  v0[43] = &type metadata for AMSDogBag;
  v0[44] = &off_100222F48;
  v0[48] = &type metadata for CasinoDog;
  v0[49] = &off_1002179A0;
  v3 = qword_100239D30;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = qword_10023FD90;
  v0[53] = type metadata accessor for SnoutManager(0);
  v0[54] = &off_100223858;
  v0[50] = v4;
  v0[2] = 0x74735F6E656B6F74;
  v0[3] = 0xEB0000000065726FLL;
  v0[4] = v1;
  v0[5] = 0xD000000000000010;
  v0[6] = 0x80000001001CB320;
  v0[7] = v1;
  v0[8] = 0xD000000000000012;
  v0[9] = 0x80000001001CB340;
  v0[10] = v1;
  v0[11] = 0xD000000000000014;
  v0[12] = 0x80000001001CB360;
  v0[13] = v1;
  v0[14] = 0xD000000000000018;
  v0[15] = 0x80000001001CB380;
  v0[16] = v1;
  v0[17] = 0x63616274736F6867;
  v0[18] = 0xEF65726F74735F6BLL;
  v0[19] = v1;
  v5 = qword_100239CC0;

  if (v5 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000DAC0(v6, qword_10023FC70);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Begin token vending fetches", v9, 2u);
  }

  v10 = swift_task_alloc();
  v0[55] = v10;
  *v10 = v0;
  v10[1] = sub_100046244;

  return sub_1000D0340();
}

uint64_t sub_100046244()
{

  return _swift_task_switch(sub_100046340, 0, 0);
}

uint64_t sub_100046340()
{
  sub_1000463A0(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_1000463F8()
{
  result = qword_10023AB90;
  if (!qword_10023AB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023AB90);
  }

  return result;
}

unint64_t sub_100046450()
{
  result = qword_10023AB98;
  if (!qword_10023AB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023AB98);
  }

  return result;
}

unint64_t sub_1000464A4(uint64_t a1)
{
  *(a1 + 8) = sub_10003BCC8();
  result = sub_1000464D4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1000464D4()
{
  result = qword_10023ABE8;
  if (!qword_10023ABE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023ABE8);
  }

  return result;
}

uint64_t sub_100046528(void *a1)
{
  v3 = v1;
  v5 = sub_10000CDE0(&qword_10023AC20, &qword_1001B6D28);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_10000DA7C(a1, a1[3]);
  sub_100046450();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v10[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10[13] = *(v3 + 24);
    v10[12] = 2;
    sub_100047180();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v10[11] = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10[10] = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10[9] = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10004677C(uint64_t a1)
{
  String.hash(into:)();
}

unint64_t sub_100046898@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100046CD4(*a1);
  *a2 = result;
  return result;
}

void sub_1000468C8(unint64_t *a1@<X8>)
{
  v2 = 0x69737265766E6F63;
  v3 = *v1;
  v4 = 0xED000064695F6E6FLL;
  v5 = 0x80000001001CA030;
  v6 = 0xD000000000000014;
  v7 = 0xEE0064695F656361;
  v8 = 0x6C7074656B72616DLL;
  if (v3 != 4)
  {
    v8 = 0x5F7972746E756F63;
    v7 = 0xEC00000065646F63;
  }

  if (v3 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  if (v3 != 1)
  {
    v4 = 0xEF657079745F6E6FLL;
  }

  if (!*v1)
  {
    v2 = 0xD000000000000012;
    v4 = 0x80000001001CA000;
  }

  if (*v1 <= 2u)
  {
    v9 = v4;
  }

  else
  {
    v2 = v6;
    v9 = v5;
  }

  *a1 = v2;
  a1[1] = v9;
}

unint64_t sub_1000469AC()
{
  v1 = 0x69737265766E6F63;
  v2 = *v0;
  v3 = 0xD000000000000014;
  v4 = 0x6C7074656B72616DLL;
  if (v2 != 4)
  {
    v4 = 0x5F7972746E756F63;
  }

  if (v2 != 3)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100046A8C@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100046CD4(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100046AD0(uint64_t a1)
{
  v2 = sub_100046450();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100046B0C(uint64_t a1)
{
  v2 = sub_100046450();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100046B48@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_100046D20(a2, v7);
  if (!v2)
  {
    v5 = v7[3];
    *(a1 + 32) = v7[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v7[4];
    *(a1 + 80) = v8;
    result = *v7;
    v6 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v6;
  }

  return result;
}

unint64_t sub_100046BC0()
{
  result = qword_10023ABF0;
  if (!qword_10023ABF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023ABF0);
  }

  return result;
}

unint64_t sub_100046C18()
{
  result = qword_10023ABF8;
  if (!qword_10023ABF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023ABF8);
  }

  return result;
}

unint64_t sub_100046C70()
{
  result = qword_10023AC00;
  if (!qword_10023AC00)
  {
    sub_10000CCC0(&qword_10023AC08, &qword_1001B6CE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023AC00);
  }

  return result;
}

unint64_t sub_100046CD4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100214058, v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100046D20@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10000CDE0(&qword_10023AC10, &qword_1001B6D20);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - v7;
  v49 = 1;
  sub_10000DA7C(a1, a1[3]);
  sub_100046450();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000DB58(a1);
  }

  LOBYTE(v38) = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v38) = 1;
  v10 = KeyedDecodingContainer.decode(_:forKey:)();
  v12 = v11;
  v31 = v10;
  LOBYTE(v32) = 2;
  sub_1000470F4();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v29 = v38;
  LOBYTE(v38) = 3;
  v28 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v38) = 4;
  v13 = KeyedDecodingContainer.decode(_:forKey:)();
  v30 = v14;
  v27 = v13;
  v50 = 5;
  v15 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v16 = *(v6 + 8);
  v17 = v15;
  v25 = v18;
  v16(v8, v5);
  *&v32 = 0;
  v26 = v49;
  BYTE8(v32) = v49;
  *&v33 = v9;
  BYTE8(v33) = v29;
  v19 = v28;
  v20 = v31;
  *&v34 = v28;
  *(&v34 + 1) = v31;
  *&v35 = v12;
  *(&v35 + 1) = v27;
  *&v36 = v30;
  *(&v36 + 1) = v17;
  v21 = v25;
  v37 = v25;
  sub_100047148(&v32, &v38);
  sub_10000DB58(a1);
  v38 = 0;
  v39 = v26;
  v40 = v9;
  v41 = v29;
  v42 = v19;
  v43 = v20;
  v44 = v12;
  v45 = v27;
  v46 = v30;
  v47 = v17;
  v48 = v21;
  result = sub_10003BD1C(&v38);
  v23 = v35;
  *(a2 + 32) = v34;
  *(a2 + 48) = v23;
  *(a2 + 64) = v36;
  *(a2 + 80) = v37;
  v24 = v33;
  *a2 = v32;
  *(a2 + 16) = v24;
  return result;
}

unint64_t sub_1000470F4()
{
  result = qword_10023AC18;
  if (!qword_10023AC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023AC18);
  }

  return result;
}

unint64_t sub_100047180()
{
  result = qword_10023AC28;
  if (!qword_10023AC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023AC28);
  }

  return result;
}

__n128 sub_1000471E4(uint64_t a1, uint64_t a2)
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

uint64_t sub_100047208(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100047250(uint64_t result, int a2, int a3)
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
      *(result + 48) = (a2 - 1);
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

unint64_t sub_1000472B8()
{
  result = qword_10023AC30;
  if (!qword_10023AC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023AC30);
  }

  return result;
}

unint64_t sub_10004731C(uint64_t a1)
{
  result = sub_10003B628();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100047348()
{
  result = qword_10023AC38;
  if (!qword_10023AC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023AC38);
  }

  return result;
}

void *sub_1000473C4(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_100088774(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_10000CDE0(&qword_10023BC80, &unk_1001B7000);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1000474CC(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_100088F84(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

Swift::Int sub_1000475C4(uint64_t *a1)
{
  v2 = *(type metadata accessor for ImpressionModel(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_10004AA10(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1000488E0(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_10004766C(void *a1)
{
  v3 = v1;
  v5 = sub_10000CDE0(&qword_10023AC60, &qword_1001B7250);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_10000DA7C(a1, a1[3]);
  sub_10004CE00();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v10[14] = *(v3 + 16);
    v10[13] = 1;
    sub_10004CE54();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v10[12] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10[11] = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10[10] = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100047870(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 32));

  return v2;
}

Swift::Int sub_1000478B4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000479B4(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_100047AA0(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100047B9C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10004CF50(*a1);
  *a2 = result;
  return result;
}

void sub_100047BCC(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA0000000000676ELL;
  v4 = 0x697274732D73776ALL;
  v5 = 0xEE007865646E692DLL;
  v6 = 0x676E69726564726FLL;
  v7 = 0x80000001001CA560;
  v8 = 0xD000000000000016;
  if (v2 != 3)
  {
    v8 = 0xD000000000000012;
    v7 = 0x80000001001CA580;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0xD000000000000013;
    v3 = 0x80000001001CA540;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_100047C88()
{
  v1 = *v0;
  v2 = 0x697274732D73776ALL;
  v3 = 0x676E69726564726FLL;
  v4 = 0xD000000000000016;
  if (v1 != 3)
  {
    v4 = 0xD000000000000012;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000013;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100047D40@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_10004CF50(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100047D68(uint64_t a1)
{
  v2 = sub_10004CE00();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100047DA4(uint64_t a1)
{
  v2 = sub_10004CE00();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100047DE0@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_10004CF9C(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    a1[2] = v7[0];
    result = *(v7 + 9);
    *(a1 + 41) = *(v7 + 9);
  }

  return result;
}

unint64_t sub_100047E48(char a1)
{
  result = 0x642D656372756F73;
  switch(a1)
  {
    case 1:
      result = 0x64692D6D616461;
      break;
    case 2:
      result = 0x6F7774656E2D6461;
      break;
    case 3:
      result = 0x6E676961706D6163;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0x6973736572706D69;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0x6D617473656D6974;
      break;
    case 8:
      result = 0x727574616E676973;
      break;
    case 9:
      result = 0x612D6E696769726FLL;
      break;
    case 10:
      result = 0x6E6F6973726576;
      break;
    case 11:
      result = 0x7974696C65646966;
      break;
    case 12:
      result = 0xD000000000000010;
      break;
    case 13:
      result = 0x676E69726564726FLL;
      break;
    case 14:
      result = 0x6D6E6F7269766E65;
      break;
    case 15:
      result = 0x69742D6C61636F6CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000480A8(void *a1)
{
  v3 = v1;
  v5 = sub_10000CDE0(&qword_10023AC78, &qword_1001B7258);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_10000DA7C(a1, a1[3]);
  sub_10004CEA8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    v11 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v11 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v11 = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v11 = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v11 = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v11 = 6;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v11 = 7;
    KeyedEncodingContainer.encode(_:forKey:)();
    v11 = 8;
    KeyedEncodingContainer.encode(_:forKey:)();
    v11 = 9;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v11 = 10;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v11 = 11;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v11 = 12;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v11 = 13;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v11 = *(v3 + 201);
    v10[14] = 14;
    sub_10004CEFC();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v11 = 15;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100048448(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_100047E48(*a1);
  v5 = v4;
  if (v3 == sub_100047E48(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1000484D0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_100047E48(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100048534(uint64_t a1)
{
  sub_100047E48(*v1);
  String.hash(into:)();
}

Swift::Int sub_100048588(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  sub_100047E48(v2);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1000485E8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10004D2B4(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_100048618@<X0>(unint64_t *a1@<X8>)
{
  result = sub_100047E48(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_100048660@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_10004D2B4(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100048694(uint64_t a1)
{
  v2 = sub_10004CEA8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000486D0(uint64_t a1)
{
  v2 = sub_10004CEA8();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10004870C@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_10004D300(a2, v11);
  if (!v2)
  {
    v5 = v11[11];
    a1[10] = v11[10];
    a1[11] = v5;
    a1[12] = v12[0];
    *(a1 + 201) = *(v12 + 9);
    v6 = v11[7];
    a1[6] = v11[6];
    a1[7] = v6;
    v7 = v11[9];
    a1[8] = v11[8];
    a1[9] = v7;
    v8 = v11[3];
    a1[2] = v11[2];
    a1[3] = v8;
    v9 = v11[5];
    a1[4] = v11[4];
    a1[5] = v9;
    result = *v11;
    v10 = v11[1];
    *a1 = v11[0];
    a1[1] = v10;
  }

  return result;
}

uint64_t sub_100048798()
{
  v1 = 208;
  if (*(v0 + 216))
  {
    v1 = 104;
  }

  return *(v0 + v1);
}

uint64_t ImpressionIntakeRequest.clientBundleID.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

void sub_1000487E4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      sub_10000CDE0(&qword_10023AC48, &unk_1001BA570);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 40);
      if (v4 != a3)
      {
LABEL_5:
        sub_10000CDE0(&qword_10023BC80, &unk_1001B7000);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

Swift::Int sub_1000488E0(unint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for ImpressionModel(0);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for ImpressionModel(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_100048E84(v8, v9, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_100048B14(0, v2, 1, a1);
  }

  return result;
}

Swift::Int sub_100048A0C(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_10000CDE0(&qword_10023BC80, &unk_1001B7000);
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1000496E4(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_100048D18(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_100048B14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for ImpressionModel(0);
  v9 = __chkstk_darwin(v8);
  v37 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v29 - v12;
  result = __chkstk_darwin(v11);
  v17 = &v29 - v16;
  v31 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v36 = v18;
    v30 = v19;
    v23 = v18 + v19 * a3;
LABEL_5:
    v34 = v20;
    v35 = a3;
    v32 = v23;
    v33 = v22;
    while (1)
    {
      sub_10004C9B4(v23, v17);
      sub_10004C9B4(v20, v13);
      v24 = *(v8 + 48);
      v25 = *&v17[v24];
      v26 = *&v13[v24];
      sub_10004CA18(v13);
      result = sub_10004CA18(v17);
      if (v26 >= v25)
      {
LABEL_4:
        a3 = v35 + 1;
        v20 = v34 + v30;
        v22 = v33 - 1;
        v23 = v32 + v30;
        if (v35 + 1 == v31)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v36)
      {
        break;
      }

      v27 = v37;
      sub_10004CA74(v23, v37);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_10004CA74(v27, v20);
      v20 += v21;
      v23 += v21;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100048D18(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 40 * a3;
    v6 = result - a3;
LABEL_5:
    v24 = a3;
    v7 = v6;
    v17 = v5;
    while (1)
    {
      sub_10000CE28(v5, &v21);
      sub_10000CE28(v5 - 40, v18);
      v8 = v22;
      v9 = v23;
      sub_10000DA7C(&v21, v22);
      v10 = (*(v9 + 16))(v8, v9);
      v11 = v19;
      v12 = v20;
      sub_10000DA7C(v18, v19);
      v13 = (*(v12 + 16))(v11, v12);
      sub_10000DB58(v18);
      result = sub_10000DB58(&v21);
      if (v13 >= v10)
      {
LABEL_4:
        a3 = v24 + 1;
        v5 = v17 + 40;
        --v6;
        if (v24 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      sub_10000DA64(v5, &v21);
      v14 = *(v5 - 24);
      *v5 = *(v5 - 40);
      *(v5 + 16) = v14;
      *(v5 + 32) = *(v5 - 8);
      result = sub_10000DA64(&v21, v5 - 40);
      v5 -= 40;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100048E84(unint64_t *a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v110 = a1;
  v7 = type metadata accessor for ImpressionModel(0);
  v117 = *(v7 - 8);
  v8 = __chkstk_darwin(v7);
  v113 = &v106 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v122 = &v106 - v11;
  v12 = __chkstk_darwin(v10);
  v14 = &v106 - v13;
  result = __chkstk_darwin(v12);
  v17 = &v106 - v16;
  v119 = a3;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = _swiftEmptyArrayStorage;
LABEL_99:
    v4 = *v110;
    if (!*v110)
    {
      goto LABEL_137;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v14 = v121;
    if (result)
    {
LABEL_101:
      v124 = v20;
      v102 = *(v20 + 2);
      if (v102 >= 2)
      {
        while (*v119)
        {
          v103 = *&v20[16 * v102];
          v104 = *&v20[16 * v102 + 24];
          sub_100049EA8(*v119 + *(v117 + 72) * v103, *v119 + *(v117 + 72) * *&v20[16 * v102 + 16], *v119 + *(v117 + 72) * v104, v4);
          if (v14)
          {
          }

          if (v104 < v103)
          {
            goto LABEL_124;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v20 = sub_10004A814(v20);
          }

          if (v102 - 2 >= *(v20 + 2))
          {
            goto LABEL_125;
          }

          v105 = &v20[16 * v102];
          *v105 = v103;
          *(v105 + 1) = v104;
          v124 = v20;
          result = sub_10004A788(v102 - 1);
          v20 = v124;
          v102 = *(v124 + 2);
          if (v102 <= 1)
          {
          }
        }

        goto LABEL_135;
      }
    }

LABEL_131:
    result = sub_10004A814(v20);
    v20 = result;
    goto LABEL_101;
  }

  v123 = result;
  v108 = a4;
  v19 = 0;
  v20 = _swiftEmptyArrayStorage;
  v114 = v14;
  while (1)
  {
    v21 = v19;
    if (v19 + 1 >= v18)
    {
      v18 = v19 + 1;
    }

    else
    {
      v22 = *v119;
      v23 = *(v117 + 72);
      v4 = *v119 + v23 * (v19 + 1);
      sub_10004C9B4(v4, v17);
      sub_10004C9B4(v22 + v23 * v19, v14);
      v24 = *(v123 + 48);
      v25 = *&v17[v24];
      v115 = *&v14[v24];
      v116 = v25;
      sub_10004CA18(v14);
      result = sub_10004CA18(v17);
      v109 = v19;
      v26 = v19 + 2;
      v118 = v23;
      v27 = v22 + v23 * (v19 + 2);
      while (v18 != v26)
      {
        LODWORD(v120) = v115 < v116;
        sub_10004C9B4(v27, v17);
        v28 = v17;
        v29 = v114;
        sub_10004C9B4(v4, v114);
        v30 = *(v123 + 48);
        v31 = *(v28 + v30);
        v32 = v18;
        v33 = v20;
        v34 = *(v29 + v30);
        v35 = v29;
        v17 = v28;
        sub_10004CA18(v35);
        result = sub_10004CA18(v28);
        v36 = v34 >= v31;
        v20 = v33;
        v18 = v32;
        v37 = v36;
        ++v26;
        v27 += v118;
        v4 += v118;
        if (((v120 ^ v37) & 1) == 0)
        {
          v18 = v26 - 1;
          break;
        }
      }

      v14 = v114;
      v21 = v109;
      if (v115 < v116)
      {
        if (v18 < v109)
        {
          goto LABEL_128;
        }

        if (v109 < v18)
        {
          v107 = v20;
          v38 = v118 * (v18 - 1);
          v39 = v18 * v118;
          v40 = v18;
          v41 = v109 * v118;
          do
          {
            if (v21 != --v40)
            {
              v120 = v40;
              v4 = *v119;
              if (!*v119)
              {
                goto LABEL_134;
              }

              sub_10004CA74(v4 + v41, v113);
              if (v41 < v38 || v4 + v41 >= v4 + v39)
              {
                swift_arrayInitWithTakeFrontToBack();
                v40 = v120;
              }

              else
              {
                v40 = v120;
                if (v41 != v38)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              result = sub_10004CA74(v113, v4 + v38);
            }

            ++v21;
            v38 -= v118;
            v39 -= v118;
            v41 += v118;
          }

          while (v21 < v40);
          v20 = v107;
          v21 = v109;
        }
      }
    }

    v42 = v119[1];
    if (v18 >= v42)
    {
      goto LABEL_35;
    }

    if (__OFSUB__(v18, v21))
    {
      goto LABEL_127;
    }

    if (v18 - v21 >= v108)
    {
LABEL_35:
      v19 = v18;
      if (v18 < v21)
      {
        goto LABEL_126;
      }

      goto LABEL_36;
    }

    if (__OFADD__(v21, v108))
    {
      goto LABEL_129;
    }

    if (v21 + v108 >= v42)
    {
      v43 = v119[1];
    }

    else
    {
      v43 = v21 + v108;
    }

    if (v43 < v21)
    {
LABEL_130:
      __break(1u);
      goto LABEL_131;
    }

    if (v18 == v43)
    {
      goto LABEL_35;
    }

    v107 = v20;
    v90 = v18;
    v91 = *v119;
    v92 = *(v117 + 72);
    v93 = *v119 + v92 * (v90 - 1);
    v94 = -v92;
    v109 = v21;
    v95 = v21 - v90;
    v120 = v90;
    v111 = v92;
    v112 = v43;
    v4 = v91 + v90 * v92;
    v96 = v123;
LABEL_89:
    v115 = v4;
    v116 = v95;
    v97 = v95;
    v118 = v93;
LABEL_90:
    sub_10004C9B4(v4, v17);
    sub_10004C9B4(v93, v14);
    v98 = *(v96 + 48);
    v99 = *&v17[v98];
    v100 = *&v14[v98];
    sub_10004CA18(v14);
    result = sub_10004CA18(v17);
    if (v100 < v99)
    {
      break;
    }

    v96 = v123;
LABEL_88:
    v19 = v112;
    v93 = v118 + v111;
    v95 = v116 - 1;
    v4 = v115 + v111;
    if (++v120 != v112)
    {
      goto LABEL_89;
    }

    v20 = v107;
    v21 = v109;
    if (v112 < v109)
    {
      goto LABEL_126;
    }

LABEL_36:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_10004A90C(0, *(v20 + 2) + 1, 1, v20);
      v20 = result;
    }

    v45 = *(v20 + 2);
    v44 = *(v20 + 3);
    v4 = v45 + 1;
    if (v45 >= v44 >> 1)
    {
      result = sub_10004A90C((v44 > 1), v45 + 1, 1, v20);
      v20 = result;
    }

    *(v20 + 2) = v4;
    v46 = &v20[16 * v45];
    *(v46 + 4) = v21;
    *(v46 + 5) = v19;
    v47 = *v110;
    if (!*v110)
    {
      goto LABEL_136;
    }

    if (v45)
    {
      while (2)
      {
        v48 = v4 - 1;
        if (v4 >= 4)
        {
          v53 = &v20[16 * v4 + 32];
          v54 = *(v53 - 64);
          v55 = *(v53 - 56);
          v59 = __OFSUB__(v55, v54);
          v56 = v55 - v54;
          if (v59)
          {
            goto LABEL_113;
          }

          v58 = *(v53 - 48);
          v57 = *(v53 - 40);
          v59 = __OFSUB__(v57, v58);
          v51 = v57 - v58;
          v52 = v59;
          if (v59)
          {
            goto LABEL_114;
          }

          v60 = &v20[16 * v4];
          v62 = *v60;
          v61 = *(v60 + 1);
          v59 = __OFSUB__(v61, v62);
          v63 = v61 - v62;
          if (v59)
          {
            goto LABEL_116;
          }

          v59 = __OFADD__(v51, v63);
          v64 = v51 + v63;
          if (v59)
          {
            goto LABEL_119;
          }

          if (v64 >= v56)
          {
            v82 = &v20[16 * v48 + 32];
            v84 = *v82;
            v83 = *(v82 + 1);
            v59 = __OFSUB__(v83, v84);
            v85 = v83 - v84;
            if (v59)
            {
              goto LABEL_123;
            }

            if (v51 < v85)
            {
              v48 = v4 - 2;
            }
          }

          else
          {
LABEL_55:
            if (v52)
            {
              goto LABEL_115;
            }

            v65 = &v20[16 * v4];
            v67 = *v65;
            v66 = *(v65 + 1);
            v68 = __OFSUB__(v66, v67);
            v69 = v66 - v67;
            v70 = v68;
            if (v68)
            {
              goto LABEL_118;
            }

            v71 = &v20[16 * v48 + 32];
            v73 = *v71;
            v72 = *(v71 + 1);
            v59 = __OFSUB__(v72, v73);
            v74 = v72 - v73;
            if (v59)
            {
              goto LABEL_121;
            }

            if (__OFADD__(v69, v74))
            {
              goto LABEL_122;
            }

            if (v69 + v74 < v51)
            {
              goto LABEL_69;
            }

            if (v51 < v74)
            {
              v48 = v4 - 2;
            }
          }
        }

        else
        {
          if (v4 == 3)
          {
            v49 = *(v20 + 4);
            v50 = *(v20 + 5);
            v59 = __OFSUB__(v50, v49);
            v51 = v50 - v49;
            v52 = v59;
            goto LABEL_55;
          }

          v75 = &v20[16 * v4];
          v77 = *v75;
          v76 = *(v75 + 1);
          v59 = __OFSUB__(v76, v77);
          v69 = v76 - v77;
          v70 = v59;
LABEL_69:
          if (v70)
          {
            goto LABEL_117;
          }

          v78 = &v20[16 * v48];
          v80 = *(v78 + 4);
          v79 = *(v78 + 5);
          v59 = __OFSUB__(v79, v80);
          v81 = v79 - v80;
          if (v59)
          {
            goto LABEL_120;
          }

          if (v81 < v69)
          {
            break;
          }
        }

        v86 = v48 - 1;
        if (v48 - 1 >= v4)
        {
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
          goto LABEL_130;
        }

        if (!*v119)
        {
          goto LABEL_133;
        }

        v87 = *&v20[16 * v86 + 32];
        v4 = *&v20[16 * v48 + 40];
        v88 = v121;
        sub_100049EA8(*v119 + *(v117 + 72) * v87, *v119 + *(v117 + 72) * *&v20[16 * v48 + 32], *v119 + *(v117 + 72) * v4, v47);
        v121 = v88;
        if (v88)
        {
        }

        if (v4 < v87)
        {
          goto LABEL_111;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_10004A814(v20);
        }

        if (v86 >= *(v20 + 2))
        {
          goto LABEL_112;
        }

        v89 = &v20[16 * v86];
        *(v89 + 4) = v87;
        *(v89 + 5) = v4;
        v124 = v20;
        result = sub_10004A788(v48);
        v20 = v124;
        v4 = *(v124 + 2);
        if (v4 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v18 = v119[1];
    if (v19 >= v18)
    {
      goto LABEL_99;
    }
  }

  if (v91)
  {
    v101 = v122;
    sub_10004CA74(v4, v122);
    v96 = v123;
    swift_arrayInitWithTakeFrontToBack();
    sub_10004CA74(v101, v93);
    v93 += v94;
    v4 += v94;
    v36 = __CFADD__(v97++, 1);
    if (v36)
    {
      goto LABEL_88;
    }

    goto LABEL_90;
  }

  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
  return result;
}

uint64_t sub_1000496E4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v106 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = _swiftEmptyArrayStorage;
LABEL_91:
    v8 = *v106;
    if (!*v106)
    {
      goto LABEL_129;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_123:
      result = sub_10004A814(v9);
      v9 = result;
    }

    v120 = v9;
    v93 = *(v9 + 16);
    if (v93 >= 2)
    {
      while (1)
      {
        v94 = *v6;
        if (!*v6)
        {
          goto LABEL_127;
        }

        v6 = (v93 - 1);
        v95 = *(v9 + 16 * v93);
        v96 = v9;
        v97 = *(v9 + 16 * (v93 - 1) + 32);
        v9 = *(v9 + 16 * (v93 - 1) + 40);
        sub_10004A3B0((v94 + 40 * v95), (v94 + 40 * v97), v94 + 40 * v9, v8);
        if (v5)
        {
        }

        if (v9 < v95)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v96 = sub_10004A814(v96);
        }

        if (v93 - 2 >= *(v96 + 2))
        {
          goto LABEL_117;
        }

        v98 = &v96[16 * v93];
        *v98 = v95;
        *(v98 + 1) = v9;
        v120 = v96;
        result = sub_10004A788(v6);
        v9 = v120;
        v93 = *(v120 + 16);
        v6 = a3;
        if (v93 <= 1)
        {
        }
      }
    }
  }

  v8 = 0;
  v9 = _swiftEmptyArrayStorage;
  while (1)
  {
    v10 = v8;
    v11 = (v8 + 1);
    if (v8 + 1 >= v7)
    {
      goto LABEL_21;
    }

    v112 = v7;
    v102 = v5;
    v12 = *v6;
    sub_10000CE28(*v6 + 40 * v11, &v117);
    v13 = 40 * v8;
    v14 = v12 + 40 * v8;
    sub_10000CE28(v14, v114);
    v15 = v118;
    v16 = v119;
    sub_10000DA7C(&v117, v118);
    v110 = (*(v16 + 16))(v15, v16);
    v18 = v115;
    v17 = v116;
    sub_10000DA7C(v114, v115);
    v108 = (*(v17 + 16))(v18, v17);
    sub_10000DB58(v114);
    result = sub_10000DB58(&v117);
    v104 = v8;
    v19 = (v8 + 2);
    v20 = v14 + 80;
    while (1)
    {
      v11 = v112;
      if (v112 == v19)
      {
        break;
      }

      sub_10000CE28(v20, &v117);
      sub_10000CE28(v20 - 40, v114);
      v22 = v118;
      v21 = v119;
      sub_10000DA7C(&v117, v118);
      v8 = (*(v21 + 16))(v22, v21);
      v24 = v115;
      v23 = v116;
      sub_10000DA7C(v114, v115);
      v25 = (*(v23 + 16))(v24, v23);
      sub_10000DB58(v114);
      result = sub_10000DB58(&v117);
      ++v19;
      v20 += 40;
      if (v108 < v110 == v25 >= v8)
      {
        v11 = v19 - 1;
        break;
      }
    }

    v5 = v102;
    v6 = a3;
    if (v108 < v110)
    {
      v8 = v104;
      if (v11 < v104)
      {
        goto LABEL_120;
      }

      if (v104 >= v11)
      {
        v10 = v104;
        goto LABEL_21;
      }

      v99 = v9;
      v26 = 40 * v11 - 40;
      v27 = v11;
      do
      {
        if (v8 != --v27)
        {
          v32 = *a3;
          if (!*a3)
          {
            goto LABEL_126;
          }

          v28 = v32 + v13;
          v29 = v32 + v26;
          sub_10000DA64((v32 + v13), &v117);
          v30 = *(v29 + 32);
          v31 = *(v29 + 16);
          *v28 = *v29;
          *(v28 + 16) = v31;
          *(v28 + 32) = v30;
          result = sub_10000DA64(&v117, v29);
        }

        ++v8;
        v26 -= 40;
        v13 += 40;
      }

      while (v8 < v27);
      v9 = v99;
    }

    v10 = v104;
LABEL_21:
    v33 = v6[1];
    if (v11 < v33)
    {
      if (__OFSUB__(v11, v10))
      {
        goto LABEL_119;
      }

      if (&v11[-v10] < a4)
      {
        if (__OFADD__(v10, a4))
        {
          goto LABEL_121;
        }

        if (v10 + a4 >= v33)
        {
          v8 = v6[1];
        }

        else
        {
          v8 = v10 + a4;
        }

        if (v8 < v10)
        {
LABEL_122:
          __break(1u);
          goto LABEL_123;
        }

        if (v11 != v8)
        {
          break;
        }
      }
    }

    v8 = v11;
    if (v11 < v10)
    {
      goto LABEL_118;
    }

LABEL_31:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_10004A90C(0, *(v9 + 16) + 1, 1, v9);
      v9 = result;
    }

    v35 = *(v9 + 16);
    v34 = *(v9 + 24);
    v36 = v35 + 1;
    if (v35 >= v34 >> 1)
    {
      result = sub_10004A90C((v34 > 1), v35 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 16) = v36;
    v37 = v9 + 16 * v35;
    *(v37 + 32) = v10;
    *(v37 + 40) = v8;
    v38 = *v106;
    if (!*v106)
    {
      goto LABEL_128;
    }

    if (v35)
    {
      while (1)
      {
        v39 = v36 - 1;
        if (v36 >= 4)
        {
          break;
        }

        if (v36 == 3)
        {
          v40 = *(v9 + 32);
          v41 = *(v9 + 40);
          v50 = __OFSUB__(v41, v40);
          v42 = v41 - v40;
          v43 = v50;
LABEL_50:
          if (v43)
          {
            goto LABEL_107;
          }

          v56 = (v9 + 16 * v36);
          v58 = *v56;
          v57 = v56[1];
          v59 = __OFSUB__(v57, v58);
          v60 = v57 - v58;
          v61 = v59;
          if (v59)
          {
            goto LABEL_110;
          }

          v62 = (v9 + 32 + 16 * v39);
          v64 = *v62;
          v63 = v62[1];
          v50 = __OFSUB__(v63, v64);
          v65 = v63 - v64;
          if (v50)
          {
            goto LABEL_113;
          }

          if (__OFADD__(v60, v65))
          {
            goto LABEL_114;
          }

          if (v60 + v65 >= v42)
          {
            if (v42 < v65)
            {
              v39 = v36 - 2;
            }

            goto LABEL_71;
          }

          goto LABEL_64;
        }

        v66 = (v9 + 16 * v36);
        v68 = *v66;
        v67 = v66[1];
        v50 = __OFSUB__(v67, v68);
        v60 = v67 - v68;
        v61 = v50;
LABEL_64:
        if (v61)
        {
          goto LABEL_109;
        }

        v69 = v9 + 16 * v39;
        v71 = *(v69 + 32);
        v70 = *(v69 + 40);
        v50 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v50)
        {
          goto LABEL_112;
        }

        if (v72 < v60)
        {
          goto LABEL_3;
        }

LABEL_71:
        v77 = v39 - 1;
        if (v39 - 1 >= v36)
        {
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (!*v6)
        {
          goto LABEL_125;
        }

        v78 = *(v9 + 32 + 16 * v77);
        v79 = *(v9 + 32 + 16 * v39 + 8);
        sub_10004A3B0((*v6 + 40 * v78), (*v6 + 40 * *(v9 + 32 + 16 * v39)), *v6 + 40 * v79, v38);
        if (v5)
        {
        }

        if (v79 < v78)
        {
          goto LABEL_103;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_10004A814(v9);
        }

        if (v77 >= *(v9 + 16))
        {
          goto LABEL_104;
        }

        v80 = v9 + 16 * v77;
        *(v80 + 32) = v78;
        *(v80 + 40) = v79;
        v120 = v9;
        result = sub_10004A788(v39);
        v9 = v120;
        v36 = *(v120 + 16);
        if (v36 <= 1)
        {
          goto LABEL_3;
        }
      }

      v44 = v9 + 32 + 16 * v36;
      v45 = *(v44 - 64);
      v46 = *(v44 - 56);
      v50 = __OFSUB__(v46, v45);
      v47 = v46 - v45;
      if (v50)
      {
        goto LABEL_105;
      }

      v49 = *(v44 - 48);
      v48 = *(v44 - 40);
      v50 = __OFSUB__(v48, v49);
      v42 = v48 - v49;
      v43 = v50;
      if (v50)
      {
        goto LABEL_106;
      }

      v51 = (v9 + 16 * v36);
      v53 = *v51;
      v52 = v51[1];
      v50 = __OFSUB__(v52, v53);
      v54 = v52 - v53;
      if (v50)
      {
        goto LABEL_108;
      }

      v50 = __OFADD__(v42, v54);
      v55 = v42 + v54;
      if (v50)
      {
        goto LABEL_111;
      }

      if (v55 >= v47)
      {
        v73 = (v9 + 32 + 16 * v39);
        v75 = *v73;
        v74 = v73[1];
        v50 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v50)
        {
          goto LABEL_115;
        }

        if (v42 < v76)
        {
          v39 = v36 - 2;
        }

        goto LABEL_71;
      }

      goto LABEL_50;
    }

LABEL_3:
    v7 = v6[1];
    if (v8 >= v7)
    {
      goto LABEL_91;
    }
  }

  v100 = v9;
  v103 = v5;
  v105 = v10;
  v81 = *v6;
  v82 = *v6 + 40 * v11;
  v83 = v10 - v11;
  v109 = v8;
LABEL_82:
  v111 = v82;
  v113 = v11;
  v84 = v83;
  while (1)
  {
    sub_10000CE28(v82, &v117);
    sub_10000CE28(v82 - 40, v114);
    v85 = v118;
    v86 = v119;
    sub_10000DA7C(&v117, v118);
    v87 = (*(v86 + 16))(v85, v86);
    v88 = v115;
    v89 = v116;
    sub_10000DA7C(v114, v115);
    v90 = (*(v89 + 16))(v88, v89);
    sub_10000DB58(v114);
    result = sub_10000DB58(&v117);
    if (v90 >= v87)
    {
LABEL_81:
      ++v11;
      v82 = v111 + 40;
      --v83;
      v8 = v109;
      if (v113 + 1 != v109)
      {
        goto LABEL_82;
      }

      v5 = v103;
      v10 = v105;
      v6 = a3;
      v9 = v100;
      if (v109 < v105)
      {
        goto LABEL_118;
      }

      goto LABEL_31;
    }

    if (!v81)
    {
      break;
    }

    sub_10000DA64(v82, &v117);
    v91 = *(v82 - 24);
    *v82 = *(v82 - 40);
    *(v82 + 16) = v91;
    *(v82 + 32) = *(v82 - 8);
    sub_10000DA64(&v117, v82 - 40);
    v82 -= 40;
    if (__CFADD__(v84++, 1))
    {
      goto LABEL_81;
    }
  }

  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
  return result;
}