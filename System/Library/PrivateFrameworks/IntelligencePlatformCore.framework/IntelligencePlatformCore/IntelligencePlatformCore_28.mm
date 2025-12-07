uint64_t sub_1C4673290(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for GraphTriple(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C4EFEEF8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v4 + 20);
  sub_1C4EFEA18();
  LOBYTE(v11) = sub_1C44DBB50(a1 + v11, v10);
  v12 = *(v8 + 8);
  v12(v10, v7);
  if (v11)
  {
    v13 = *(v4 + 28);
    sub_1C4EFE518();
    v14 = sub_1C44DBB50(a1 + v13, v10);
    v12(v10, v7);
    if ((v14 & 1) == 0)
    {
      sub_1C4EFE478();
      v15 = sub_1C44DBB50(a1 + v13, v10);
      v12(v10, v7);
      if ((v15 & 1) == 0)
      {
        return 0;
      }
    }
  }

  sub_1C4589088();
  v16 = *(*a2 + 16);
  sub_1C4589C48();
  sub_1C449EDC8(a1, v6, type metadata accessor for GraphTriple);
  sub_1C4673C64(v16, v6, a2);
  return 1;
}

uint64_t sub_1C4673488(id *a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v32 = a4;
  v7 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v31 - v8;
  v10 = sub_1C4EFF0C8();
  v33 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v14 = MEMORY[0x1EEE9AC00](v13).n128_u64[0];
  v16 = &v31 - v15;
  v17 = [*a1 handle];
  sub_1C4F01138();

  v18 = String.normalizedContactHandle()();

  if (!v18.value._object)
  {
    return result;
  }

  sub_1C465C294(v18.value._countAndFlagsBits, v18.value._object, a2);

  if (sub_1C44157D4(v9, 1, v10) == 1)
  {
    return sub_1C4420C3C(v9, &unk_1EC0BA0E0, &qword_1C4F105A0);
  }

  (*(v33 + 32))(v16, v9, v10);
  swift_isUniquelyReferenced_nonNull_native();
  v34 = *a3;
  v20 = v34;
  *a3 = 0x8000000000000000;
  sub_1C44E3664();
  if (__OFADD__(*(v20 + 16), (v22 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v23 = v21;
  v24 = v22;
  sub_1C456902C(&qword_1EC0BAA10, &qword_1C4F16910);
  v25 = sub_1C4F02458();
  v26 = v34;
  if (v25)
  {
    sub_1C44E3664();
    if ((v24 & 1) == (v28 & 1))
    {
      v23 = v27;
      goto LABEL_8;
    }

LABEL_13:
    result = sub_1C4F029F8();
    __break(1u);
    return result;
  }

LABEL_8:
  *a3 = v26;

  v29 = *a3;
  if ((v24 & 1) == 0)
  {
    (*(v33 + 16))(v12, v16, v10);
    sub_1C457EB2C(v23, v12, MEMORY[0x1E69E7CC0], v29);
  }

  v30 = v32;
  MEMORY[0x1C6940330]();
  sub_1C4427EF0();
  sub_1C4F01748();
  return (*(v33 + 8))(v16, v10);
}

uint64_t sub_1C46737C0()
{

  sub_1C449F128();

  sub_1C440962C((v0 + OBJC_IVAR____TtC24IntelligencePlatformCore25CallInteractionSignalView_handleView));

  return v0;
}

uint64_t sub_1C4673858()
{
  sub_1C46737C0();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CallInteractionSignalView(uint64_t a1)
{
  result = qword_1EC0BA9E8;
  if (!qword_1EC0BA9E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4673904(uint64_t a1)
{
  result = _s10ViewConfigVMa(319);
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C46739B8()
{
  sub_1C4671594();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C4673A30()
{
  sub_1C466FEB0();
  v1 = *(v0 + 8);

  return v1();
}

id sub_1C4673B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = sub_1C4F01108();

  v9 = sub_1C4F01108();

  if (a6)
  {
    v10 = sub_1C4F01108();
  }

  else
  {
    v10 = 0;
  }

  v11 = [v6 initWithViewName:v8 featureName:v9 subidentifierName:v10];

  return v11;
}

uint64_t sub_1C4673C64(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v10 = type metadata accessor for GraphTriple(0);
  v11 = sub_1C4502254(&qword_1EC0BAA28, type metadata accessor for GraphTriple, &protocol conformance descriptor for GraphTriple);
  v6 = sub_1C4422F90(&v9);
  sub_1C45B1EE4(a2, v6);
  v7 = *a3;
  *(v7 + 16) = a1 + 1;
  return sub_1C441D670(&v9, v7 + 40 * a1 + 32);
}

uint64_t sub_1C4673D30()
{
  sub_1C456902C(&unk_1EC0C65C0, &qword_1C4F0D1F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D130;
  sub_1C441D188(inited, "carPlayConnected");
  *(inited + 48) = [objc_opt_self() featureValueWithInt64_];
  sub_1C4577DBC();
  return sub_1C4F00F28();
}

uint64_t sub_1C4673DD8(int a1)
{
  sub_1C456902C(&unk_1EC0C65C0, &qword_1C4F0D1F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D130;
  sub_1C441D188(inited, "carPlayConnected");
  *(inited + 48) = [objc_opt_self() featureValueWithInt64_];
  sub_1C4577DBC();
  v3 = sub_1C4F00F28();
  v4 = 0xE400000000000000;
  v5 = 1766222167;
  v6 = 0xEA00000000006465;
  v7 = 0x7463657078656E55;
  if (a1 == 1)
  {
    v7 = 4346709;
    v6 = 0xE300000000000000;
  }

  if (a1 != 2)
  {
    v5 = v7;
    v4 = v6;
  }

  if (a1)
  {
    v8 = v5;
  }

  else
  {
    v8 = 0x6E776F6E6B6E55;
  }

  if (a1)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0xE700000000000000;
  }

  if (sub_1C4594E18(v8, v9))
  {
    swift_isUniquelyReferenced_nonNull_native();
    sub_1C4660314();
  }

  else
  {
    v10 = sub_1C445FAA8(0x5279616C50726163, 0xED00006E6F736165);
    if (v11)
    {
      v12 = v10;
      swift_isUniquelyReferenced_nonNull_native();
      sub_1C456902C(&qword_1EC0BCCA0, &qword_1C4F0E300);
      sub_1C4F02458();

      v13 = *(*(v3 + 56) + 8 * v12);
      sub_1C4F02478();
    }
  }

  return v3;
}

uint64_t sub_1C4673FF8@<X0>(uint64_t a1@<X0>, char a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  sub_1C4EF9CD8();
  sub_1C43FBCE0();
  (*(v8 + 32))(a4, a1);
  result = type metadata accessor for CarPlayEvent(0);
  *(a4 + *(result + 20)) = a2;
  *(a4 + *(result + 24)) = a3;
  return result;
}

void sub_1C46740A8(uint64_t a1)
{
  v3 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  sub_1C43FBD18(v3);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v16 - v5;
  v7 = sub_1C456902C(&qword_1EC0BAA30, &qword_1C4F3B4F0);
  v8 = sub_1C43FBD18(v7);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v16 - v12;
  v14 = [BiomeLibrary() CarPlay];
  swift_unknownObjectRelease();
  v15 = [v14 Connected];
  swift_unknownObjectRelease();
  sub_1C4674278(v15, a1, v13);

  if (!v1)
  {
    sub_1C445FFF0(v13, v10, &qword_1EC0BAA30, &qword_1C4F3B4F0);
    sub_1C445FFF0(a1, v6, &qword_1EC0B84B8, &unk_1C4F0D4F0);
    sub_1C49397B4();
    sub_1C4420C3C(v13, &qword_1EC0BAA30, &qword_1C4F3B4F0);
  }
}

void sub_1C4674278(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26 = a3;
  v25 = sub_1C456902C(&qword_1EC0B8600, &unk_1C4F0D4E0);
  MEMORY[0x1EEE9AC00](v25);
  v5 = sub_1C456902C(&qword_1EC0BAA38, &qword_1C4F16958);
  v23 = *(v5 - 8);
  v24 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v23 - v6;
  v8 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v23 - v12;
  v14 = sub_1C4EF9CD8();
  v15 = *(*(v14 - 8) + 16);
  v15(v13, a2, v14);
  sub_1C440BAA8(v13, 0, 1, v14);
  v16 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  v15(v10, a2 + *(v16 + 36), v14);
  sub_1C440BAA8(v10, 0, 1, v14);
  v17 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v18 = sub_1C457A86C(v13, v10, 0, 0, 0);
  v19 = [a1 publisherWithOptions_];

  v20 = v19;
  sub_1C456902C(&qword_1EC0B8608, &qword_1C4F3B4B0);
  v21 = v27;
  sub_1C4EFFC38();
  if (v21)
  {
  }

  else
  {
    *(swift_allocObject() + 16) = a1;
    type metadata accessor for CarPlayEvent(0);
    sub_1C4401CBC(&qword_1EDDEFEF0, &qword_1EC0B8600, &unk_1C4F0D4E0, MEMORY[0x1E69A9B60]);
    v22 = a1;

    sub_1C4F02848();

    (*(v23 + 32))(v26, v7, v24);
  }
}

void sub_1C46745FC()
{
  sub_1C43FE96C();
  sub_1C4402AD0(v2);
  sub_1C456902C(&qword_1EC0B8600, &unk_1C4F0D4E0);
  sub_1C43FBCE0();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBD64();
  sub_1C456902C(&qword_1EC0BAA48, &qword_1C4F16988);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FE94C();
  v5 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v6 = sub_1C43FBD18(v5);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FFBA8();
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1C441C794();
  sub_1C43FBCE0();
  v10 = *(v9 + 16);
  v11 = sub_1C4410890();
  v10(v11);
  v12 = sub_1C43FC024();
  sub_1C440BAA8(v12, v13, v14, v8);
  sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  v15 = sub_1C43FCF40();
  v10(v15);
  sub_1C442B8CC();
  v16 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v17 = sub_1C4402AE4();
  v18 = sub_1C441D120(v17, sel_publisherWithOptions_);

  v19 = v18;
  v20 = sub_1C456902C(&qword_1EC0B8608, &qword_1C4F3B4B0);
  sub_1C440DDC4(v20);
  if (v0)
  {
  }

  else
  {
    sub_1C43FBDBC();
    v21 = swift_allocObject();
    v22 = sub_1C44258B8(v21);
    type metadata accessor for SemanticLocationEvent(v22);
    sub_1C442C318(&qword_1EDDEFEE8, &qword_1EC0B8600, &unk_1C4F0D4E0);
    v23 = v1;

    sub_1C43FFBC4();

    v24 = sub_1C43FCF2C();
    v25(v24);
  }

  sub_1C445E730();
  sub_1C43FBC80();
}

void sub_1C467485C()
{
  sub_1C43FE96C();
  sub_1C4402AD0(v2);
  sub_1C456902C(&qword_1EC0B8600, &unk_1C4F0D4E0);
  sub_1C43FBCE0();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBD64();
  sub_1C456902C(&qword_1EC0BAA88, &qword_1C4F16A90);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FE94C();
  v5 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v6 = sub_1C43FBD18(v5);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FFBA8();
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1C441C794();
  sub_1C43FBCE0();
  v10 = *(v9 + 16);
  v11 = sub_1C4410890();
  v10(v11);
  v12 = sub_1C43FC024();
  sub_1C440BAA8(v12, v13, v14, v8);
  sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  v15 = sub_1C43FCF40();
  v10(v15);
  sub_1C442B8CC();
  v16 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v17 = sub_1C4402AE4();
  v18 = sub_1C441D120(v17, sel_publisherWithOptions_);

  v19 = v18;
  v20 = sub_1C456902C(&qword_1EC0B8608, &qword_1C4F3B4B0);
  sub_1C440DDC4(v20);
  if (v0)
  {
  }

  else
  {
    sub_1C43FBDBC();
    v21 = swift_allocObject();
    v22 = sub_1C44258B8(v21);
    type metadata accessor for DeviceBluetoothEvent(v22);
    sub_1C442C318(&qword_1EDDEFF08, &qword_1EC0B8600, &unk_1C4F0D4E0);
    v23 = v1;

    sub_1C43FFBC4();

    v24 = sub_1C43FCF2C();
    v25(v24);
  }

  sub_1C445E730();
  sub_1C43FBC80();
}

void sub_1C4674ABC()
{
  sub_1C43FE96C();
  sub_1C4402AD0(v2);
  sub_1C456902C(&qword_1EC0B8600, &unk_1C4F0D4E0);
  sub_1C43FBCE0();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBD64();
  sub_1C456902C(&qword_1EC0BAA98, &unk_1C4F3B5C0);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FE94C();
  v5 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v6 = sub_1C43FBD18(v5);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FFBA8();
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1C441C794();
  sub_1C43FBCE0();
  v10 = *(v9 + 16);
  v11 = sub_1C4410890();
  v10(v11);
  v12 = sub_1C43FC024();
  sub_1C440BAA8(v12, v13, v14, v8);
  sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  v15 = sub_1C43FCF40();
  v10(v15);
  sub_1C442B8CC();
  v16 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v17 = sub_1C4402AE4();
  v18 = sub_1C441D120(v17, sel_publisherWithOptions_);

  v19 = v18;
  v20 = sub_1C456902C(&qword_1EC0B8608, &qword_1C4F3B4B0);
  sub_1C440DDC4(v20);
  if (v0)
  {
  }

  else
  {
    sub_1C43FBDBC();
    v21 = swift_allocObject();
    v22 = sub_1C44258B8(v21);
    type metadata accessor for DevicePluggedInEvent(v22);
    sub_1C442C318(&qword_1EDDEFF00, &qword_1EC0B8600, &unk_1C4F0D4E0);
    v23 = v1;

    sub_1C43FFBC4();

    v24 = sub_1C43FCF2C();
    v25(v24);
  }

  sub_1C445E730();
  sub_1C43FBC80();
}

void sub_1C4674D1C()
{
  sub_1C43FE96C();
  sub_1C4402AD0(v2);
  sub_1C456902C(&qword_1EC0B8600, &unk_1C4F0D4E0);
  sub_1C43FBCE0();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBD64();
  sub_1C456902C(&qword_1EC0BAA58, &qword_1C4F169B0);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FE94C();
  v5 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v6 = sub_1C43FBD18(v5);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FFBA8();
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1C441C794();
  sub_1C43FBCE0();
  v10 = *(v9 + 16);
  v11 = sub_1C4410890();
  v10(v11);
  v12 = sub_1C43FC024();
  sub_1C440BAA8(v12, v13, v14, v8);
  sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  v15 = sub_1C43FCF40();
  v10(v15);
  sub_1C442B8CC();
  v16 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v17 = sub_1C4402AE4();
  v18 = sub_1C441D120(v17, sel_publisherWithOptions_);

  v19 = v18;
  v20 = sub_1C456902C(&qword_1EC0B8608, &qword_1C4F3B4B0);
  sub_1C440DDC4(v20);
  if (v0)
  {
  }

  else
  {
    sub_1C43FBDBC();
    v21 = swift_allocObject();
    v22 = sub_1C44258B8(v21);
    type metadata accessor for UserFocusComputedModeEvent(v22);
    sub_1C442C318(&qword_1EDDEFED0, &qword_1EC0B8600, &unk_1C4F0D4E0);
    v23 = v1;

    sub_1C43FFBC4();

    v24 = sub_1C43FCF2C();
    v25(v24);
  }

  sub_1C445E730();
  sub_1C43FBC80();
}

void sub_1C4674F7C()
{
  sub_1C43FE96C();
  sub_1C4402AD0(v2);
  sub_1C456902C(&qword_1EC0B8600, &unk_1C4F0D4E0);
  sub_1C43FBCE0();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBD64();
  sub_1C456902C(&qword_1EC0BAAA8, &qword_1C4F16AE0);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FE94C();
  v5 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v6 = sub_1C43FBD18(v5);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FFBA8();
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1C441C794();
  sub_1C43FBCE0();
  v10 = *(v9 + 16);
  v11 = sub_1C4410890();
  v10(v11);
  v12 = sub_1C43FC024();
  sub_1C440BAA8(v12, v13, v14, v8);
  sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  v15 = sub_1C43FCF40();
  v10(v15);
  sub_1C442B8CC();
  v16 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v17 = sub_1C4402AE4();
  v18 = sub_1C441D120(v17, sel_publisherWithOptions_);

  v19 = v18;
  v20 = sub_1C456902C(&qword_1EC0B8608, &qword_1C4F3B4B0);
  sub_1C440DDC4(v20);
  if (v0)
  {
  }

  else
  {
    sub_1C43FBDBC();
    v21 = swift_allocObject();
    v22 = sub_1C44258B8(v21);
    type metadata accessor for DeviceScreenLockEvent(v22);
    sub_1C442C318(&qword_1EDDEFED8, &qword_1EC0B8600, &unk_1C4F0D4E0);
    v23 = v1;

    sub_1C43FFBC4();

    v24 = sub_1C43FCF2C();
    v25(v24);
  }

  sub_1C445E730();
  sub_1C43FBC80();
}

void sub_1C46751DC()
{
  sub_1C43FE96C();
  sub_1C4402AD0(v2);
  sub_1C456902C(&qword_1EC0B8600, &unk_1C4F0D4E0);
  sub_1C43FBCE0();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBD64();
  sub_1C456902C(&qword_1EC0BAA78, &unk_1C4F3B590);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FE94C();
  v5 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v6 = sub_1C43FBD18(v5);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FFBA8();
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1C441C794();
  sub_1C43FBCE0();
  v10 = *(v9 + 16);
  v11 = sub_1C4410890();
  v10(v11);
  v12 = sub_1C43FC024();
  sub_1C440BAA8(v12, v13, v14, v8);
  sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  v15 = sub_1C43FCF40();
  v10(v15);
  sub_1C442B8CC();
  v16 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v17 = sub_1C4402AE4();
  v18 = sub_1C441D120(v17, sel_publisherWithOptions_);

  v19 = v18;
  v20 = sub_1C456902C(&qword_1EC0B8608, &qword_1C4F3B4B0);
  sub_1C440DDC4(v20);
  if (v0)
  {
  }

  else
  {
    sub_1C43FBDBC();
    v21 = swift_allocObject();
    v22 = sub_1C44258B8(v21);
    type metadata accessor for DeviceAirplaneModeEvent(v22);
    sub_1C442C318(&qword_1EDDEFEE0, &qword_1EC0B8600, &unk_1C4F0D4E0);
    v23 = v1;

    sub_1C43FFBC4();

    v24 = sub_1C43FCF2C();
    v25(v24);
  }

  sub_1C445E730();
  sub_1C43FBC80();
}

void sub_1C467543C()
{
  sub_1C43FE96C();
  sub_1C4402AD0(v2);
  sub_1C456902C(&qword_1EC0B8600, &unk_1C4F0D4E0);
  sub_1C43FBCE0();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBD64();
  sub_1C456902C(&qword_1EC0BAAB8, &unk_1C4F3B5F0);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FE94C();
  v5 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v6 = sub_1C43FBD18(v5);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FFBA8();
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1C441C794();
  sub_1C43FBCE0();
  v10 = *(v9 + 16);
  v11 = sub_1C4410890();
  v10(v11);
  v12 = sub_1C43FC024();
  sub_1C440BAA8(v12, v13, v14, v8);
  sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  v15 = sub_1C43FCF40();
  v10(v15);
  sub_1C442B8CC();
  v16 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v17 = sub_1C4402AE4();
  v18 = sub_1C441D120(v17, sel_publisherWithOptions_);

  v19 = v18;
  v20 = sub_1C456902C(&qword_1EC0B8608, &qword_1C4F3B4B0);
  sub_1C440DDC4(v20);
  if (v0)
  {
  }

  else
  {
    sub_1C43FBDBC();
    v21 = swift_allocObject();
    v22 = sub_1C44258B8(v21);
    type metadata accessor for DeviceWiFiConnectedEvent(v22);
    sub_1C442C318(&qword_1EDDEFF20, &qword_1EC0B8600, &unk_1C4F0D4E0);
    v23 = v1;

    sub_1C43FFBC4();

    v24 = sub_1C43FCF2C();
    v25(v24);
  }

  sub_1C445E730();
  sub_1C43FBC80();
}

uint64_t sub_1C467569C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v3[5] = type metadata accessor for CarPlayEvent(0);
  v3[6] = swift_task_alloc();
  v4 = sub_1C4EF9CD8();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  sub_1C456902C(&qword_1EC0BAA40, &unk_1C4F16978);
  v3[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C46757C8, 0, 0);
}

uint64_t sub_1C46757C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1C442F130();
  sub_1C4404D98();
  v18 = [*(v12 + 24) eventBody];
  if (v18)
  {
    v19 = sub_1C443454C(v18);
    [v16 timestamp];
    sub_1C4EF9AC8();
    v20 = sub_1C44364D0();
    v21(v20);
    *(v13 + *(v10 + 20)) = [v19 starting];
    v22 = [v19 reason];

    (*(v17 + 8))(v14, v15);
    *(v13 + *(v10 + 24)) = v22;
    sub_1C4415FBC();
    sub_1C4677BF0(v13, v11, v23);
    sub_1C43FBD94();
    sub_1C440BAA8(v24, v25, v26, v10);

    sub_1C44157D4(v11, 1, v10);
    v27 = sub_1C44259DC();
    if (!v28)
    {
      sub_1C4415FBC();
      v38 = sub_1C4677BF0(v35, v36, v37);
      v39 = 0;
      goto LABEL_11;
    }

    v38 = sub_1C4420C3C(v27, &qword_1EC0BAA40, &unk_1C4F16978);
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88(&qword_1EDDFECB0);
    }

    v29 = sub_1C442F090();
    v30 = sub_1C44690E8(v29, qword_1EDDFECB8);
    v31 = sub_1C4F00968();
    sub_1C4F01CF8();

    if (sub_1C44020E0())
    {
      sub_1C4404AEC();
      v32 = sub_1C4403FF4();
      sub_1C441B738(v32, 5.7779e-34);
      sub_1C43FBD74(&dword_1C43F8000, v33, v34, "Unable to parse eventBody from %@");
      sub_1C4420C3C(v32, &qword_1EC0BDA00, &qword_1C4F10D30);
      sub_1C43FEA20();
      sub_1C43FE9D4();
    }
  }

  v39 = 1;
LABEL_11:
  sub_1C4416EB8(v38, v39);

  sub_1C43FBDA0();
  sub_1C4422280();

  return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10);
}

uint64_t sub_1C46759DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_1C4EF9CD8();
  v3[5] = swift_task_alloc();
  sub_1C456902C(&qword_1EC0BAA50, &qword_1C4F169A8);
  v3[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4675AA8, 0, 0);
}

uint64_t sub_1C4675AA8()
{
  v1 = [*(v0 + 24) eventBody];
  if (!v1)
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88(&qword_1EDDFECB0);
    }

    v9 = sub_1C442F090();
    v10 = sub_1C44690E8(v9, qword_1EDDFECB8);
    v11 = sub_1C4F00968();
    sub_1C4F01CF8();

    if (sub_1C44020E0())
    {
      sub_1C4404AEC();
      v12 = sub_1C4403FF4();
      sub_1C441B738(v12, 5.7779e-34);
      sub_1C43FBD74(&dword_1C43F8000, v13, v14, "Unable to parse eventBody from %@");
      sub_1C4420C3C(v12, &qword_1EC0BDA00, &qword_1C4F10D30);
      sub_1C43FEA20();
      sub_1C43FE9D4();
    }

    v6 = type metadata accessor for SemanticLocationEvent(0);
    goto LABEL_9;
  }

  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v4 = *(v0 + 24);
  v5 = v1;
  [v4 timestamp];
  sub_1C4EF9AC8();
  sub_1C4AFA110(v5, v3, v2);

  v6 = type metadata accessor for SemanticLocationEvent(0);
  v7 = sub_1C44157D4(v2, 1, v6);
  v8 = *(v0 + 48);
  if (v7 == 1)
  {
    sub_1C4420C3C(v8, &qword_1EC0BAA50, &qword_1C4F169A8);
LABEL_9:
    v15 = 1;
    goto LABEL_11;
  }

  sub_1C4677BF0(v8, *(v0 + 16), type metadata accessor for SemanticLocationEvent);
  v15 = 0;
LABEL_11:
  sub_1C440BAA8(*(v0 + 16), v15, 1, v6);

  sub_1C43FBDA0();

  return v16();
}

uint64_t sub_1C4675CA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v3[5] = type metadata accessor for DeviceBluetoothEvent(0);
  v3[6] = swift_task_alloc();
  v4 = sub_1C4EF9CD8();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  sub_1C456902C(&qword_1EC0BAA90, &unk_1C4F16AB0);
  v3[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4675DCC, 0, 0);
}

uint64_t sub_1C4675DCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1C442F130();
  sub_1C4404D98();
  v14 = [*(v10 + 24) eventBody];
  if (v14)
  {
    v15 = sub_1C4440F4C(v14);
    [v12 timestamp];
    sub_1C4EF9AC8();
    v16 = sub_1C4415908();
    v17(v16);
    *(v11 + *(v13 + 20)) = [v15 starting];
    v18 = [v15 userWearing];
    v19 = [v15 address];
    v20 = *(v10 + 72);
    v21 = *(v10 + 56);
    if (v19)
    {
      v22 = v19;
      v23 = sub_1C4F01138();
      v25 = v24;

      v26 = sub_1C441C16C();
      v27(v26);
    }

    else
    {
      v35 = sub_1C441C16C();
      v36(v35);

      v23 = 0;
      v25 = 0;
    }

    sub_1C44601C8();
    *v37 = v18;
    *(v37 + 8) = v23;
    *(v37 + 16) = v25;
    sub_1C441B7F0();
    sub_1C4677BF0(v38, v20, v39);
    sub_1C43FBD94();
    sub_1C440BAA8(v40, v41, v42, v21);

    sub_1C44157D4(v20, 1, v21);
    v43 = sub_1C44259DC();
    if (!v44)
    {
      sub_1C441B7F0();
      v34 = sub_1C4677BF0(v45, v46, v47);
      v48 = 0;
      goto LABEL_14;
    }

    v34 = sub_1C4420C3C(v43, &qword_1EC0BAA90, &unk_1C4F16AB0);
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88(&qword_1EDDFECB0);
    }

    v28 = sub_1C442F090();
    v29 = sub_1C44690E8(v28, qword_1EDDFECB8);
    v30 = sub_1C4F00968();
    sub_1C4F01CF8();

    if (sub_1C44020E0())
    {
      sub_1C4404AEC();
      v31 = sub_1C4403FF4();
      sub_1C441B738(v31, 5.7779e-34);
      sub_1C43FBD74(&dword_1C43F8000, v32, v33, "Unable to parse eventBody from %@");
      sub_1C4420C3C(v31, &qword_1EC0BDA00, &qword_1C4F10D30);
      sub_1C43FEA20();
      sub_1C43FE9D4();
    }
  }

  v48 = 1;
LABEL_14:
  sub_1C4416EB8(v34, v48);

  sub_1C43FBDA0();
  sub_1C4422280();

  return v50(v49, v50, v51, v52, v53, v54, v55, v56, a9, a10);
}

uint64_t sub_1C4676030(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v3[5] = type metadata accessor for DevicePluggedInEvent(0);
  v3[6] = swift_task_alloc();
  v4 = sub_1C4EF9CD8();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  sub_1C456902C(&qword_1EC0BAAA0, &qword_1C4F16AD8);
  v3[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C467615C, 0, 0);
}

uint64_t sub_1C467615C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1C442F130();
  sub_1C4404D98();
  v18 = [*(v12 + 24) eventBody];
  if (v18)
  {
    v19 = sub_1C443454C(v18);
    [v16 timestamp];
    sub_1C4EF9AC8();
    v20 = sub_1C44364D0();
    v21(v20);
    *(v13 + *(v10 + 20)) = [v19 starting];
    v22 = [v19 wireless];

    (*(v17 + 8))(v14, v15);
    *(v13 + *(v10 + 24)) = v22;
    sub_1C441E29C();
    sub_1C4677BF0(v13, v11, v23);
    sub_1C43FBD94();
    sub_1C440BAA8(v24, v25, v26, v10);

    sub_1C44157D4(v11, 1, v10);
    v27 = sub_1C44259DC();
    if (!v28)
    {
      sub_1C441E29C();
      v38 = sub_1C4677BF0(v35, v36, v37);
      v39 = 0;
      goto LABEL_11;
    }

    v38 = sub_1C4420C3C(v27, &qword_1EC0BAAA0, &qword_1C4F16AD8);
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88(&qword_1EDDFECB0);
    }

    v29 = sub_1C442F090();
    v30 = sub_1C44690E8(v29, qword_1EDDFECB8);
    v31 = sub_1C4F00968();
    sub_1C4F01CF8();

    if (sub_1C44020E0())
    {
      sub_1C4404AEC();
      v32 = sub_1C4403FF4();
      sub_1C441B738(v32, 5.7779e-34);
      sub_1C43FBD74(&dword_1C43F8000, v33, v34, "Unable to parse eventBody from %@");
      sub_1C4420C3C(v32, &qword_1EC0BDA00, &qword_1C4F10D30);
      sub_1C43FEA20();
      sub_1C43FE9D4();
    }
  }

  v39 = 1;
LABEL_11:
  sub_1C4416EB8(v38, v39);

  sub_1C43FBDA0();
  sub_1C4422280();

  return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10);
}

uint64_t sub_1C4676370(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v3[5] = type metadata accessor for UserFocusComputedModeEvent(0);
  v3[6] = swift_task_alloc();
  v4 = sub_1C4EF9CD8();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  sub_1C456902C(&qword_1EC0BAA60, qword_1C4F169D0);
  v3[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C467649C, 0, 0);
}

uint64_t sub_1C467649C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1C442F130();
  sub_1C4404D98();
  v14 = [*(v10 + 24) eventBody];
  if (v14)
  {
    v15 = sub_1C4440F4C(v14);
    [v12 timestamp];
    sub_1C4EF9AC8();
    v16 = sub_1C4415908();
    v17(v16);
    *(v11 + *(v13 + 20)) = [v15 starting];
    v18 = [v15 semanticType];
    v19 = [v15 mode];
    v20 = *(v10 + 72);
    v21 = *(v10 + 56);
    if (v19)
    {
      v22 = v19;
      v23 = sub_1C4F01138();
      v25 = v24;

      v26 = sub_1C441C16C();
      v27(v26);
    }

    else
    {
      v35 = sub_1C441C16C();
      v36(v35);

      v23 = 0;
      v25 = 0;
    }

    sub_1C44601C8();
    *v37 = v18;
    *(v37 + 8) = v23;
    *(v37 + 16) = v25;
    sub_1C4409B44();
    sub_1C4677BF0(v38, v20, v39);
    sub_1C43FBD94();
    sub_1C440BAA8(v40, v41, v42, v21);

    sub_1C44157D4(v20, 1, v21);
    v43 = sub_1C44259DC();
    if (!v44)
    {
      sub_1C4409B44();
      v34 = sub_1C4677BF0(v45, v46, v47);
      v48 = 0;
      goto LABEL_14;
    }

    v34 = sub_1C4420C3C(v43, &qword_1EC0BAA60, qword_1C4F169D0);
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88(&qword_1EDDFECB0);
    }

    v28 = sub_1C442F090();
    v29 = sub_1C44690E8(v28, qword_1EDDFECB8);
    v30 = sub_1C4F00968();
    sub_1C4F01CF8();

    if (sub_1C44020E0())
    {
      sub_1C4404AEC();
      v31 = sub_1C4403FF4();
      sub_1C441B738(v31, 5.7779e-34);
      sub_1C43FBD74(&dword_1C43F8000, v32, v33, "Unable to parse eventBody from %@");
      sub_1C4420C3C(v31, &qword_1EC0BDA00, &qword_1C4F10D30);
      sub_1C43FEA20();
      sub_1C43FE9D4();
    }
  }

  v48 = 1;
LABEL_14:
  sub_1C4416EB8(v34, v48);

  sub_1C43FBDA0();
  sub_1C4422280();

  return v50(v49, v50, v51, v52, v53, v54, v55, v56, a9, a10);
}

uint64_t sub_1C4676700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v3[5] = type metadata accessor for DeviceScreenLockEvent(0);
  v3[6] = swift_task_alloc();
  v4 = sub_1C4EF9CD8();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  sub_1C456902C(&qword_1EC0BAAB0, &unk_1C4F16B00);
  v3[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C467682C, 0, 0);
}

uint64_t sub_1C467682C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1C442F130();
  sub_1C4404D98();
  v18 = [*(v12 + 24) eventBody];
  if (v18)
  {
    v19 = sub_1C446BE6C(v18);
    [v16 timestamp];
    sub_1C4EF9AC8();
    v20 = sub_1C4433BE8();
    v21(v20);
    [v19 starting];

    (*(v17 + 8))(v13, v14);
    sub_1C440CB0C();
    sub_1C4426A68();
    sub_1C4677BF0(v15, v11, v22);
    sub_1C43FBD94();
    sub_1C440BAA8(v23, v24, v25, v10);

    sub_1C44157D4(v11, 1, v10);
    v26 = sub_1C44259DC();
    if (!v27)
    {
      sub_1C4426A68();
      v37 = sub_1C4677BF0(v34, v35, v36);
      v38 = 0;
      goto LABEL_11;
    }

    v37 = sub_1C4420C3C(v26, &qword_1EC0BAAB0, &unk_1C4F16B00);
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88(&qword_1EDDFECB0);
    }

    v28 = sub_1C442F090();
    v29 = sub_1C44690E8(v28, qword_1EDDFECB8);
    v30 = sub_1C4F00968();
    sub_1C4F01CF8();

    if (sub_1C44020E0())
    {
      sub_1C4404AEC();
      v31 = sub_1C4403FF4();
      sub_1C441B738(v31, 5.7779e-34);
      sub_1C43FBD74(&dword_1C43F8000, v32, v33, "Unable to parse eventBody from %@");
      sub_1C4420C3C(v31, &qword_1EC0BDA00, &qword_1C4F10D30);
      sub_1C43FEA20();
      sub_1C43FE9D4();
    }
  }

  v38 = 1;
LABEL_11:
  sub_1C4416EB8(v37, v38);

  sub_1C43FBDA0();
  sub_1C4422280();

  return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10);
}

uint64_t sub_1C4676A24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v3[5] = type metadata accessor for DeviceAirplaneModeEvent(0);
  v3[6] = swift_task_alloc();
  v4 = sub_1C4EF9CD8();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  sub_1C456902C(&qword_1EC0BAA80, &qword_1C4F16A88);
  v3[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4676B50, 0, 0);
}

uint64_t sub_1C4676B50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1C442F130();
  sub_1C4404D98();
  v18 = [*(v12 + 24) eventBody];
  if (v18)
  {
    v19 = sub_1C446BE6C(v18);
    [v16 timestamp];
    sub_1C4EF9AC8();
    v20 = sub_1C4433BE8();
    v21(v20);
    [v19 starting];

    (*(v17 + 8))(v13, v14);
    sub_1C440CB0C();
    sub_1C443FB34();
    sub_1C4677BF0(v15, v11, v22);
    sub_1C43FBD94();
    sub_1C440BAA8(v23, v24, v25, v10);

    sub_1C44157D4(v11, 1, v10);
    v26 = sub_1C44259DC();
    if (!v27)
    {
      sub_1C443FB34();
      v37 = sub_1C4677BF0(v34, v35, v36);
      v38 = 0;
      goto LABEL_11;
    }

    v37 = sub_1C4420C3C(v26, &qword_1EC0BAA80, &qword_1C4F16A88);
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88(&qword_1EDDFECB0);
    }

    v28 = sub_1C442F090();
    v29 = sub_1C44690E8(v28, qword_1EDDFECB8);
    v30 = sub_1C4F00968();
    sub_1C4F01CF8();

    if (sub_1C44020E0())
    {
      sub_1C4404AEC();
      v31 = sub_1C4403FF4();
      sub_1C441B738(v31, 5.7779e-34);
      sub_1C43FBD74(&dword_1C43F8000, v32, v33, "Unable to parse eventBody from %@");
      sub_1C4420C3C(v31, &qword_1EC0BDA00, &qword_1C4F10D30);
      sub_1C43FEA20();
      sub_1C43FE9D4();
    }
  }

  v38 = 1;
LABEL_11:
  sub_1C4416EB8(v37, v38);

  sub_1C43FBDA0();
  sub_1C4422280();

  return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10);
}

uint64_t sub_1C4676D48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v3[5] = type metadata accessor for DeviceWiFiConnectedEvent(0);
  v3[6] = swift_task_alloc();
  v4 = sub_1C4EF9CD8();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  sub_1C456902C(&qword_1EC0BAAC0, &qword_1C4F16B28);
  v3[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4676E74, 0, 0);
}

uint64_t sub_1C4676E74()
{
  sub_1C4404D98();
  v4 = [*(v0 + 24) eventBody];
  if (v4)
  {
    v5 = sub_1C4440F4C(v4);
    [v2 timestamp];
    sub_1C4EF9AC8();
    v6 = sub_1C4415908();
    v7(v6);
    *(v1 + *(v3 + 20)) = [v5 starting];
    v8 = [v5 SSID];
    v10 = *(v0 + 64);
    v9 = *(v0 + 72);
    v11 = *(v0 + 56);
    if (v8)
    {
      v12 = v8;
      v13 = sub_1C4F01138();
      v15 = v14;

      (*(v10 + 8))(v9, v11);
    }

    else
    {
      (*(v10 + 8))(*(v0 + 72), *(v0 + 56));

      v13 = 0;
      v15 = 0;
    }

    v23 = *(v0 + 80);
    v24 = *(v0 + 40);
    v25 = (*(v0 + 48) + *(v24 + 24));
    *v25 = v13;
    v25[1] = v15;
    sub_1C4424FC8();
    sub_1C4677BF0(v26, v23, v27);
    v28 = sub_1C43FC024();
    sub_1C440BAA8(v28, v29, v30, v24);

    sub_1C44157D4(v23, 1, v24);
    v31 = sub_1C44259DC();
    if (!v32)
    {
      sub_1C4424FC8();
      v22 = sub_1C4677BF0(v33, v34, v35);
      v36 = 0;
      goto LABEL_14;
    }

    v22 = sub_1C4420C3C(v31, &qword_1EC0BAAC0, &qword_1C4F16B28);
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88(&qword_1EDDFECB0);
    }

    v16 = sub_1C442F090();
    v17 = sub_1C44690E8(v16, qword_1EDDFECB8);
    v18 = sub_1C4F00968();
    sub_1C4F01CF8();

    if (sub_1C44020E0())
    {
      sub_1C4404AEC();
      v19 = sub_1C4403FF4();
      sub_1C441B738(v19, 5.7779e-34);
      sub_1C43FBD74(&dword_1C43F8000, v20, v21, "Unable to parse eventBody from %@");
      sub_1C4420C3C(v19, &qword_1EC0BDA00, &qword_1C4F10D30);
      sub_1C43FEA20();
      sub_1C43FE9D4();
    }
  }

  v36 = 1;
LABEL_14:
  sub_1C4416EB8(v22, v36);

  sub_1C43FBDA0();

  return v37();
}

uint64_t sub_1C46770E8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C4677C50;

  return sub_1C467569C(a1, v6, a3);
}

uint64_t sub_1C4677198()
{
  sub_1C43FCF70();
  sub_1C43FEA10();
  v0 = swift_task_alloc();
  v1 = sub_1C43FCF54(v0);
  *v1 = v2;
  v3 = sub_1C44064BC(v1);

  return v4(v3);
}

uint64_t type metadata accessor for CarPlayEvent(uint64_t a1)
{
  result = qword_1EDDEB7C0;
  if (!qword_1EDDEB7C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4677274(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C4677C50;

  return sub_1C46759DC(a1, v6, a3);
}

uint64_t sub_1C4677324()
{
  sub_1C43FCF70();
  sub_1C43FEA10();
  v0 = swift_task_alloc();
  v1 = sub_1C43FCF54(v0);
  *v1 = v2;
  v3 = sub_1C44064BC(v1);

  return v4(v3);
}

uint64_t sub_1C46773B4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C4677C50;

  return sub_1C4675CA0(a1, v6, a3);
}

uint64_t sub_1C4677464(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C4677C50;

  return sub_1C4676030(a1, v6, a3);
}

uint64_t sub_1C4677514(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C4677C50;

  return sub_1C4676370(a1, v6, a3);
}

uint64_t sub_1C46775C4()
{
  sub_1C43FCF70();
  sub_1C43FEA10();
  v0 = swift_task_alloc();
  v1 = sub_1C43FCF54(v0);
  *v1 = v2;
  v3 = sub_1C44064BC(v1);

  return v4(v3);
}

uint64_t sub_1C467767C(uint64_t a1)
{
  result = sub_1C4EF9CD8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C4677710(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C4677C50;

  return sub_1C4676700(a1, v6, a3);
}

uint64_t sub_1C46777C0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C4677C50;

  return sub_1C4676A24(a1, v6, a3);
}

uint64_t sub_1C4677870()
{
  sub_1C43FCF70();
  sub_1C43FEA10();
  v0 = swift_task_alloc();
  v1 = sub_1C43FCF54(v0);
  *v1 = v2;
  v3 = sub_1C44064BC(v1);

  return v4(v3);
}

uint64_t sub_1C4677900()
{
  sub_1C43FCF70();
  sub_1C43FEA10();
  v0 = swift_task_alloc();
  v1 = sub_1C43FCF54(v0);
  *v1 = v2;
  v3 = sub_1C44064BC(v1);

  return v4(v3);
}

uint64_t sub_1C4677990()
{
  sub_1C43FCF70();
  sub_1C43FEA10();
  v0 = swift_task_alloc();
  v1 = sub_1C43FCF54(v0);
  *v1 = v2;
  v3 = sub_1C44064BC(v1);

  return v4(v3);
}

uint64_t sub_1C4677A20()
{
  sub_1C43FCF70();
  sub_1C43FEA10();
  v0 = swift_task_alloc();
  v1 = sub_1C43FCF54(v0);
  *v1 = v2;
  v3 = sub_1C44064BC(v1);

  return v4(v3);
}

uint64_t sub_1C4677AB0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C4665934;

  return sub_1C4676D48(a1, v6, a3);
}

uint64_t sub_1C4677B60()
{
  sub_1C43FCF70();
  sub_1C43FEA10();
  v0 = swift_task_alloc();
  v1 = sub_1C43FCF54(v0);
  *v1 = v2;
  v3 = sub_1C44064BC(v1);

  return v4(v3);
}

uint64_t sub_1C4677BF0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FBCE0();
  (*(v5 + 32))(a2, a1);
  return a2;
}

void sub_1C4677C70(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C456902C(&qword_1EC0BAA70, &qword_1C4F16A20);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v8 - v6;
  sub_1C46740A8(a1);
  if (!v2)
  {
    sub_1C4677D44(v7, a2);
  }
}

uint64_t sub_1C4677D44(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0BAA70, &qword_1C4F16A20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C4677DB4()
{
  result = qword_1EDDDC488;
  if (!qword_1EDDDC488)
  {
    sub_1C4572308(&qword_1EC0BAAC8, &unk_1C4F16B50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDC488);
  }

  return result;
}

uint64_t sub_1C4677E18(uint64_t a1)
{
  v2 = a1;
  v3 = [BiomeLibrary() CarPlay];
  swift_unknownObjectRelease();
  v4 = [v3 Connected];
  swift_unknownObjectRelease();
  *(v1 + 24) = v4;
  *(v1 + 16) = v2;
  return v1;
}

uint64_t sub_1C4677F0C()
{
  v5 = MEMORY[0x1E69E7CC0];
  sub_1C44CD9C0(0, 1, 0);
  v0 = v5;
  v2 = *(v5 + 16);
  v1 = *(v5 + 24);
  if (v2 >= v1 >> 1)
  {
    sub_1C44CD9C0(v1 > 1, v2 + 1, 1);
    v0 = v5;
  }

  *(v0 + 16) = v2 + 1;
  v3 = v0 + 16 * v2;
  *(v3 + 32) = 0xD000000000000014;
  *(v3 + 40) = 0x80000001C4F8F500;

  return sub_1C4499940();
}

uint64_t sub_1C4677FC0(uint64_t a1)
{
  v3 = objc_autoreleasePoolPush();
  sub_1C4678018(v1, a1, &v5);
  objc_autoreleasePoolPop(v3);
  return v5;
}

uint64_t sub_1C4678018@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v25 - v10;
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  v13 = *(a1 + 24);
  v14 = sub_1C4EF9CD8();
  sub_1C440BAA8(v11, 1, 1, v14);
  (*(*(v14 - 8) + 16))(v8, a2, v14);
  sub_1C440BAA8(v8, 0, 1, v14);
  v15 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v16 = sub_1C457A86C(v11, v8, 1, 1, 0);
  v17 = [v13 publisherWithOptions_];

  v30 = sub_1C467973C;
  v31 = a1;
  aBlock = MEMORY[0x1E69E9820];
  v27 = 1107296256;
  v28 = sub_1C44405F8;
  v29 = &unk_1F43E6318;
  v18 = _Block_copy(&aBlock);

  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = v12;
  v30 = sub_1C4679744;
  v31 = v19;
  aBlock = MEMORY[0x1E69E9820];
  v27 = 1107296256;
  v28 = sub_1C4440590;
  v29 = &unk_1F43E6368;
  v20 = _Block_copy(&aBlock);

  v21 = [v17 sinkWithCompletion:v18 receiveInput:v20];

  _Block_release(v20);
  _Block_release(v18);

  swift_beginAccess();
  v22 = *(v12 + 16);
  *a3 = v22;
  v23 = v22;
}

void sub_1C467832C(void *a1, uint64_t a2)
{
  v3 = [a1 error];
  if (v3)
  {
    v4 = v3;
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v5 = sub_1C4F00978();
    sub_1C442B738(v5, qword_1EDDFECB8);

    v6 = v4;
    oslog = sub_1C4F00968();
    v7 = sub_1C4F01CD8();

    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v20 = v9;
      *v8 = 136315394;
      v10 = [*(a2 + 24) description];
      v11 = sub_1C4F01138();
      v13 = v12;

      v14 = sub_1C441D828(v11, v13, &v20);

      *(v8 + 4) = v14;
      *(v8 + 12) = 2080;
      v15 = v6;
      sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
      v16 = sub_1C4F01198();
      v18 = sub_1C441D828(v16, v17, &v20);

      *(v8 + 14) = v18;
      _os_log_impl(&dword_1C43F8000, oslog, v7, "Unable to fetch events from stream: %s with error: %s", v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1C6942830](v9, -1, -1);
      MEMORY[0x1C6942830](v8, -1, -1);
    }

    else
    {
    }
  }
}

void sub_1C4678574(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [a1 eventBody];
  if (v5)
  {
    v6 = v5;
    swift_beginAccess();
    v7 = *(a3 + 16);
    *(a3 + 16) = v6;
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v8 = sub_1C4F00978();
    sub_1C442B738(v8, qword_1EDDFECB8);

    oslog = sub_1C4F00968();
    v9 = sub_1C4F01CF8();

    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v18[0] = v11;
      *v10 = 136315138;
      v12 = [*(a2 + 24) description];
      v13 = sub_1C4F01138();
      v15 = v14;

      v16 = sub_1C441D828(v13, v15, v18);

      *(v10 + 4) = v16;
      _os_log_impl(&dword_1C43F8000, oslog, v9, "Unable to parse event body from read event in the stream: %s", v10, 0xCu);
      sub_1C440962C(v11);
      MEMORY[0x1C6942830](v11, -1, -1);
      MEMORY[0x1C6942830](v10, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_1C4678764(uint64_t a1)
{
  v1 = sub_1C4677FC0(a1);
  if (v1)
  {
    v2 = v1;
    v3 = [v1 starting];
    sub_1C456902C(&qword_1EC0BAAD8, &qword_1C4F16BE0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C4F0D130;
    *(inited + 32) = 0xD000000000000014;
    *(inited + 40) = 0x80000001C4F8F500;
    sub_1C4577DBC();
    *(inited + 48) = sub_1C4A3B8F8(v3);
    sub_1C456902C(&qword_1EC0BA860, &unk_1C4F1EF30);
    v5 = sub_1C4F00F28();
    v6 = sub_1C467894C(v5);

    return v6;
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88(&qword_1EDDFECB0);
    }

    v8 = sub_1C4F00978();
    sub_1C442B738(v8, qword_1EDDFECB8);
    v9 = sub_1C4F00968();
    v10 = sub_1C4F01CF8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1C43F8000, v9, v10, "CarPlayEvent is nil", v11, 2u);
      MEMORY[0x1C6942830](v11, -1, -1);
    }

    sub_1C4577DBC();

    return sub_1C4F00F28();
  }
}

uint64_t sub_1C467894C(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC8];
  v38 = MEMORY[0x1E69E7CC8];
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;
  result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v9 = 0;
  while (v6)
  {
LABEL_10:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = v11 | (v9 << 6);
    v13 = *(*(a1 + 56) + 8 * v12);
    if (v13)
    {
      v14 = (*(a1 + 48) + 16 * v12);
      v36 = *v14;
      v37 = v14[1];
      v15 = *(v2 + 16);
      if (*(v2 + 24) <= v15)
      {
        v17 = v13;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C46795D8(v15 + 1, 1, v18, v19, v20, v21, v22, v23, v35, v36, v37, SBYTE4(v37));
        v2 = v38;
      }

      else
      {
        v16 = v13;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      }

      sub_1C4F02AF8();
      sub_1C4F01298();
      result = sub_1C4F02B68();
      v24 = v2 + 64;
      v25 = -1 << *(v2 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v2 + 64 + 8 * (v26 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v25) >> 6;
        v29 = v37;
        while (++v27 != v31 || (v30 & 1) == 0)
        {
          v32 = v27 == v31;
          if (v27 == v31)
          {
            v27 = 0;
          }

          v30 |= v32;
          v33 = *(v24 + 8 * v27);
          if (v33 != -1)
          {
            v28 = __clz(__rbit64(~v33)) + (v27 << 6);
            goto LABEL_23;
          }
        }

        goto LABEL_26;
      }

      v28 = __clz(__rbit64((-1 << v26) & ~*(v2 + 64 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
      v29 = v37;
LABEL_23:
      *(v24 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
      v34 = (*(v2 + 48) + 16 * v28);
      *v34 = v36;
      v34[1] = v29;
      *(*(v2 + 56) + 8 * v28) = v13;
      ++*(v2 + 16);
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_1C4678B88(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v34 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBCC4();
  v12 = v11 - v10;
  type metadata accessor for FeatureProviderSnapshot(0);
  sub_1C43FCDF8();
  v32 = v14;
  v33 = v13;
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBCC4();
  v17 = v16 - v15;
  v18 = *(a2 + 16);
  v19 = MEMORY[0x1E69E7CC0];
  if (v18)
  {
    v29 = a3;
    v37 = MEMORY[0x1E69E7CC0];
    v36 = v17;
    sub_1C459D0A8();
    v20 = v36;
    v19 = v37;
    v22 = *(v8 + 16);
    v21 = v8 + 16;
    v23 = a2 + ((*(v21 + 64) + 32) & ~*(v21 + 64));
    v30 = *(v21 + 56);
    v31 = v22;
    do
    {
      v31(v12, v23, v34);
      v31(v20, v12, v34);
      v24 = sub_1C4678764(v12);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v25 = v4;
      sub_1C467B7F0(v24, a1);

      sub_1C465CF34();
      v27 = v26;
      v20 = v36;

      (*(v21 - 8))(v12, v34);
      *(v36 + *(v33 + 20)) = v27;
      v28 = *(v37 + 16);
      if (v28 >= *(v37 + 24) >> 1)
      {
        sub_1C459D0A8();
        v20 = v36;
      }

      *(v37 + 16) = v28 + 1;
      sub_1C4586A54(v20, v37 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v28);
      v23 += v30;
      --v18;
      v4 = v25;
    }

    while (v18);
    a3 = v29;
  }

  *a3 = v19;
}

uint64_t sub_1C4678E3C()
{
  sub_1C4EF9CD8();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v0);
  sub_1C43FBCC4();
  v3 = v2 - v1;
  sub_1C4EF9C88();
  v4 = sub_1C4678764(v3);
  v5 = sub_1C4404C28();
  v6(v5);
  return v4;
}

uint64_t sub_1C4678EF4()
{
  v0 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBCC4();
  v6 = v5 - v4;
  v7 = sub_1C4677F0C();
  v8 = sub_1C4404C28();
  v10 = sub_1C4499AD0(v8, v9, v7);

  if (v10)
  {
    sub_1C4EF9C88();
    sub_1C4678764(v6);
    (*(v2 + 8))(v6, v0);
    v11 = sub_1C4404C28();
    v12 = sub_1C44F9274(v11);
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88(&qword_1EDDFECB0);
    }

    v13 = sub_1C4F00978();
    sub_1C442B738(v13, qword_1EDDFECB8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v14 = sub_1C4F00968();
    v15 = sub_1C4F01CF8();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v16 = 136315138;
      v17 = sub_1C4404C28();
      *(v16 + 4) = sub_1C441D828(v17, v18, v19);
      _os_log_impl(&dword_1C43F8000, v14, v15, "Feature with name %s doesn't exist", v16, 0xCu);
      sub_1C440962C(v21);
      MEMORY[0x1C6942830](v21, -1, -1);
      MEMORY[0x1C6942830](v16, -1, -1);
    }

    return 0;
  }

  return v12;
}

uint64_t sub_1C467917C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1C4679254(uint64_t a1, uint64_t a2)
{
  result = sub_1C467BA24(&qword_1EC0BAAD0, a2, type metadata accessor for CarPlaySignal, &unk_1C4F16B98);
  *(a1 + 16) = result;
  return result;
}

void sub_1C46792AC()
{
  sub_1C440599C();
  sub_1C456902C(&qword_1EC0BAB18, &qword_1C4F16C28);
  v4 = sub_1C440BBEC();
  v30 = v1;
  sub_1C447F8F8(v4, v5);
  sub_1C4423658();
  if (!v6)
  {
LABEL_27:

    *v0 = v2;
    return;
  }

  v29 = v3;
  v7 = 0;
  v8 = v3;
  sub_1C44192F8();
  sub_1C4424FE0();
  if (!v1)
  {
LABEL_4:
    v9 = v7;
    while (1)
    {
      v7 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v7 >= v0)
      {
        break;
      }

      sub_1C443456C();
      if (v10)
      {
        sub_1C43FCF1C();
        v1 = v12 & v11;
        goto LABEL_9;
      }
    }

    if (v30)
    {
      sub_1C43FED48();
      if (v25 != v26)
      {
        sub_1C43FC134(v24);
      }

      else
      {
        v27 = sub_1C4408764();
        sub_1C4501018(v27, v28, v8);
      }

      *(v3 + 16) = 0;
    }

    goto LABEL_27;
  }

  while (1)
  {
    sub_1C44041D4();
LABEL_9:
    sub_1C441B808();
    v16 = (v14 + v13 * v15);
    v31 = *v16;
    v17 = *(v16 + 2);
    if ((v30 & 1) == 0)
    {
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }

    sub_1C4F02AF8();
    sub_1C446BE8C(v32);
    sub_1C4F02B68();
    sub_1C441F630();
    sub_1C4405760();
    if (v18)
    {
      break;
    }

    sub_1C43FFC04();
LABEL_19:
    sub_1C43FFF28(v19);
    v23 = v22 + 24 * v21;
    *v23 = v31;
    *(v23 + 16) = v17;
    sub_1C443322C();
    v3 = v29;
    if (!v1)
    {
      goto LABEL_4;
    }
  }

  sub_1C43FFBF0();
  while (1)
  {
    sub_1C4410160();
    if (v18)
    {
      if (v20)
      {
        break;
      }
    }

    sub_1C444FCD8();
    if (!v18)
    {
      sub_1C43FCF98();
      goto LABEL_19;
    }
  }

LABEL_29:
  __break(1u);
}

void sub_1C4679474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12)
{
  sub_1C4404B14();
  sub_1C4412E64();
  sub_1C456902C(&qword_1EC0BDC60, &qword_1C4F16C68);
  sub_1C44259EC();
  sub_1C4440FB4();
  if (!v16)
  {
LABEL_27:

    *v12 = v14;
    sub_1C440576C();
    return;
  }

  v42 = v13;
  v17 = 0;
  v18 = v13;
  sub_1C44192F8();
  sub_1C442B9E8();
  if (!v15)
  {
LABEL_4:
    v19 = v17;
    while (1)
    {
      v17 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v17 >= v12)
      {
        break;
      }

      sub_1C4422298();
      if (v20)
      {
        sub_1C43FCF1C();
        v15 = v22 & v21;
        goto LABEL_9;
      }
    }

    if (a12)
    {
      sub_1C4416EF0();
      if (v38 != v39)
      {
        sub_1C43FC134(v37);
      }

      else
      {
        v40 = sub_1C4408764();
        sub_1C4501018(v40, v41, v18);
      }

      *(v13 + 16) = 0;
    }

    goto LABEL_27;
  }

  while (1)
  {
    sub_1C43FE644();
LABEL_9:
    sub_1C4434ED4();
    v28 = *(v27 + 8 * v26);
    if ((a12 & 1) == 0)
    {
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v23 = v28;
    }

    v29 = sub_1C440CB24(v23, v24, v25);
    sub_1C444B094(v29, v30, v31);
    sub_1C4F02B68();
    sub_1C441F630();
    sub_1C4414988();
    if (v32)
    {
      break;
    }

    sub_1C43FFC04();
LABEL_19:
    sub_1C442C614(v33);
    *(v36 + 8 * v35) = v28;
    sub_1C443322C();
    v13 = v42;
    if (!v15)
    {
      goto LABEL_4;
    }
  }

  sub_1C43FFBF0();
  while (1)
  {
    sub_1C4410160();
    if (v32)
    {
      if (v34)
      {
        break;
      }
    }

    sub_1C441E1A8();
    if (!v32)
    {
      sub_1C43FCF98();
      goto LABEL_19;
    }
  }

LABEL_29:
  __break(1u);
}

void sub_1C46795D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12)
{
  sub_1C4404B14();
  sub_1C4412E64();
  sub_1C456902C(&qword_1EC0B8488, &unk_1C4F0D470);
  sub_1C44259EC();
  sub_1C4440FB4();
  if (!v16)
  {
LABEL_27:

    *v12 = v14;
    sub_1C440576C();
    return;
  }

  v42 = v13;
  v17 = 0;
  v18 = v13;
  sub_1C44192F8();
  sub_1C442B9E8();
  if (!v15)
  {
LABEL_4:
    v19 = v17;
    while (1)
    {
      v17 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v17 >= v12)
      {
        break;
      }

      sub_1C4422298();
      if (v20)
      {
        sub_1C43FCF1C();
        v15 = v22 & v21;
        goto LABEL_9;
      }
    }

    if (a12)
    {
      sub_1C4416EF0();
      if (v38 != v39)
      {
        sub_1C43FC134(v37);
      }

      else
      {
        v40 = sub_1C4408764();
        sub_1C4501018(v40, v41, v18);
      }

      *(v13 + 16) = 0;
    }

    goto LABEL_27;
  }

  while (1)
  {
    sub_1C43FE644();
LABEL_9:
    sub_1C4434ED4();
    v28 = *(v27 + 8 * v26);
    if ((a12 & 1) == 0)
    {
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v23 = v28;
    }

    v29 = sub_1C440CB24(v23, v24, v25);
    sub_1C444B094(v29, v30, v31);
    sub_1C4F02B68();
    sub_1C441F630();
    sub_1C4414988();
    if (v32)
    {
      break;
    }

    sub_1C43FFC04();
LABEL_19:
    sub_1C442C614(v33);
    *(v36 + 8 * v35) = v28;
    sub_1C443322C();
    v13 = v42;
    if (!v15)
    {
      goto LABEL_4;
    }
  }

  sub_1C43FFBF0();
  while (1)
  {
    sub_1C4410160();
    if (v32)
    {
      if (v34)
      {
        break;
      }
    }

    sub_1C441E1A8();
    if (!v32)
    {
      sub_1C43FCF98();
      goto LABEL_19;
    }
  }

LABEL_29:
  __break(1u);
}

void sub_1C4679760()
{
  sub_1C43FBD3C();
  sub_1C4450628();
  v3 = sub_1C4EFDAB8();
  sub_1C43FCDF8();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBCC4();
  v51 = v8 - v7;
  v9 = *v0;
  sub_1C456902C(&qword_1EC0BAB20, &qword_1C4F16C30);
  v50 = v2;
  v10 = sub_1C4F02548();
  if (!*(v9 + 16))
  {
LABEL_30:

    *v1 = v10;
    sub_1C43FE9F0();
    return;
  }

  v57 = v3;
  v11 = 0;
  v12 = v9 + 64;
  sub_1C43FEC90();
  v15 = v14 & v13;
  v17 = (v16 + 63) >> 6;
  v48 = v9;
  v49 = v5;
  v52 = (v5 + 32);
  v18 = v10 + 64;
  if ((v14 & v13) == 0)
  {
LABEL_4:
    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v17)
      {
        break;
      }

      ++v21;
      if (*(v12 + 8 * v11))
      {
        sub_1C43FCF1C();
        v20 = v23 & v22;
        goto LABEL_9;
      }
    }

    if (v50)
    {
      sub_1C43FED48();
      if (v44 != v45)
      {
        sub_1C4409B5C(v43);
      }

      else
      {
        v46 = sub_1C4408764();
        sub_1C4501018(v46, v47, v12);
      }

      *(v9 + 16) = 0;
    }

    goto LABEL_30;
  }

  while (1)
  {
    v19 = __clz(__rbit64(v15));
    v20 = (v15 - 1) & v15;
LABEL_9:
    v24 = 48 * (v19 | (v11 << 6));
    v55 = *(v49 + 72);
    v56 = v20;
    v25 = sub_1C4434094();
    v26(v25);
    v27 = *(v9 + 56) + v24;
    if (v50)
    {
      v53 = *v27;
      v54 = *(v27 + 16);
      v28 = *(v27 + 32);
      v29 = *(v27 + 40);
    }

    else
    {
      v28 = *(v27 + 32);
      v29 = *(v27 + 40);
      v53 = *v27;
      v54 = *(v27 + 16);
      sub_1C45D7F64(*v27, *(v27 + 8), *(v27 + 16), *(v27 + 24), v28, v29);
    }

    sub_1C467BA24(&qword_1EDDEFFD0, 255, MEMORY[0x1E69A9478], MEMORY[0x1E69A9488]);
    sub_1C4F00FD8();
    sub_1C4411990();
    sub_1C4405760();
    if (v30)
    {
      break;
    }

    sub_1C440D204();
    v33 = v31 | v32;
    v34 = v51;
LABEL_22:
    sub_1C441EB0C();
    *(v18 + v40) |= v41;
    (*v52)(*(v10 + 48) + v55 * v33, v34, v57);
    v42 = *(v10 + 56) + 48 * v33;
    *v42 = v53;
    *(v42 + 16) = v54;
    *(v42 + 32) = v28;
    *(v42 + 40) = v29;
    sub_1C4404DA4();
    v9 = v48;
    v15 = v56;
    if (!v56)
    {
      goto LABEL_4;
    }
  }

  sub_1C43FFBF0();
  v34 = v51;
  while (1)
  {
    sub_1C4410160();
    if (v30)
    {
      if (v36)
      {
        break;
      }
    }

    if (v35 == v37)
    {
      v35 = 0;
    }

    if (*(v18 + 8 * v35) != -1)
    {
      sub_1C4410A88();
      v33 = v39 + (v38 << 6);
      goto LABEL_22;
    }
  }

LABEL_32:
  __break(1u);
}

void sub_1C4679B30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, _BYTE *))
{
  sub_1C4412E64();
  sub_1C456902C(v9, v10);
  sub_1C44259EC();
  sub_1C4440FB4();
  if (!v11)
  {
LABEL_28:

    *v5 = v7;
    return;
  }

  v12 = 0;
  v13 = v6 + 8;
  sub_1C43FEC90();
  sub_1C441D1A0();
  if (!v8)
  {
LABEL_4:
    v15 = v12;
    while (1)
    {
      v12 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v12 >= v5)
      {
        break;
      }

      ++v15;
      if (v13[v12])
      {
        sub_1C43FCF1C();
        v8 = v17 & v16;
        goto LABEL_9;
      }
    }

    if (v29)
    {
      sub_1C4416EF0();
      if (v25 != v26)
      {
        *v13 = -1 << v24;
      }

      else
      {
        v27 = sub_1C4408764();
        sub_1C4501018(v27, v28, (v6 + 8));
      }

      v6[2] = 0;
    }

    goto LABEL_28;
  }

  while (1)
  {
    sub_1C445E7B0();
LABEL_9:
    v18 = v6[7] + 40 * (v14 | (v12 << 6));
    if (v29)
    {
      a5(v18, v32);
    }

    else
    {
      sub_1C442E860(v18, v32);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }

    sub_1C4F02AF8();
    sub_1C446BE8C(v31);
    sub_1C4F02B68();
    sub_1C441F630();
    sub_1C4405760();
    if (v19)
    {
      break;
    }

    sub_1C43FFC04();
LABEL_20:
    sub_1C43FFF28(v20);
    a5(v32, (v23 + 40 * v22));
    sub_1C443322C();
    if (!v8)
    {
      goto LABEL_4;
    }
  }

  sub_1C43FFBF0();
  while (1)
  {
    sub_1C4410160();
    if (v19)
    {
      if (v21)
      {
        break;
      }
    }

    sub_1C444FCD8();
    if (!v19)
    {
      sub_1C43FCF98();
      goto LABEL_20;
    }
  }

LABEL_30:
  __break(1u);
}

void sub_1C4679D48()
{
  sub_1C43FBD3C();
  sub_1C443FB4C();
  v4 = sub_1C4EFEFB8();
  sub_1C43FCDF8();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  v10 = v9 - v8;
  sub_1C4426A80();
  sub_1C456902C(&qword_1EC0BAB90, &qword_1C4F16CC0);
  v11 = sub_1C442FC54();
  sub_1C442F148(v11, v12);
  sub_1C445FCFC();
  if (!v13)
  {
LABEL_30:

    *v0 = v3;
    sub_1C43FE9F0();
    return;
  }

  v43 = v10;
  v14 = 0;
  v15 = v1 + 64;
  sub_1C43FEC90();
  sub_1C441D1A0();
  v39 = v6;
  v41 = (v6 + 32);
  v40 = v1;
  if (!v10)
  {
LABEL_4:
    v16 = v14;
    while (1)
    {
      v14 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v14 >= v0)
      {
        break;
      }

      ++v16;
      if (*(v15 + 8 * v14))
      {
        sub_1C43FCF1C();
        v10 = v18 & v17;
        goto LABEL_9;
      }
    }

    if (v2)
    {
      sub_1C4416EF0();
      if (v35 != v36)
      {
        sub_1C4409B5C(v34);
      }

      else
      {
        v37 = sub_1C4408764();
        sub_1C4501018(v37, v38, v15);
      }

      *(v1 + 16) = 0;
    }

    goto LABEL_30;
  }

  while (1)
  {
    sub_1C445E7B0();
LABEL_9:
    v42 = *(v6 + 72);
    v19 = sub_1C443F58C();
    v20(v19);
    v21 = sub_1C441AE68();
    if (v2)
    {
      sub_1C441D670(v21, v22);
    }

    else
    {
      sub_1C442E860(v21, v22);
    }

    sub_1C467BA24(&qword_1EDDEFF90, 255, MEMORY[0x1E69A97D0], MEMORY[0x1E69A97D8]);
    sub_1C4F00FD8();
    sub_1C4411990();
    sub_1C4405760();
    if (v23)
    {
      break;
    }

    sub_1C440D204();
    v26 = v24 | v25;
    v6 = v39;
    v1 = v40;
LABEL_22:
    sub_1C441EB0C();
    sub_1C4435828(v32);
    (*v41)(v33 + v42 * v26, v43, v4);
    sub_1C441D670(&v44, *(v3 + 56) + 40 * v26);
    sub_1C4404DA4();
    if (!v10)
    {
      goto LABEL_4;
    }
  }

  sub_1C43FFBF0();
  v6 = v39;
  v1 = v40;
  while (1)
  {
    sub_1C4410160();
    if (v23)
    {
      if (v28)
      {
        break;
      }
    }

    if (v27 == v29)
    {
      v27 = 0;
    }

    if (*(v3 + 64 + 8 * v27) != -1)
    {
      sub_1C4410A88();
      v26 = v31 + (v30 << 6);
      goto LABEL_22;
    }
  }

LABEL_32:
  __break(1u);
}

void sub_1C467A010()
{
  sub_1C43FBD3C();
  sub_1C4450628();
  v49 = sub_1C4EFF0C8();
  sub_1C43FCDF8();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  v48 = v7 - v6;
  v8 = *v0;
  sub_1C456902C(&qword_1EC0BAAF0, &qword_1C4F16BF8);
  v46 = v2;
  v9 = sub_1C4F02548();
  if (!v8[2])
  {
LABEL_30:

LABEL_31:
    *v1 = v9;
    sub_1C43FE9F0();
    return;
  }

  v42 = v1;
  v10 = 0;
  v11 = (v8 + 8);
  sub_1C43FEC90();
  v14 = v13 & v12;
  v16 = (v15 + 63) >> 6;
  v43 = (v4 + 16);
  v44 = v8;
  v45 = v4;
  v47 = (v4 + 32);
  v17 = v9 + 64;
  if ((v13 & v12) == 0)
  {
LABEL_4:
    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v10 >= v16)
      {
        break;
      }

      ++v19;
      if (*(v11 + 8 * v10))
      {
        sub_1C43FCF1C();
        v14 = v21 & v20;
        goto LABEL_9;
      }
    }

    if ((v46 & 1) == 0)
    {

      v1 = v42;
      goto LABEL_31;
    }

    sub_1C43FED48();
    v1 = v42;
    if (v38 != v39)
    {
      sub_1C4409B5C(v37);
    }

    else
    {
      v40 = sub_1C4408764();
      sub_1C4501018(v40, v41, v11);
    }

    v8[2] = 0;
    goto LABEL_30;
  }

  while (1)
  {
    sub_1C44041D4();
LABEL_9:
    v22 = v18 | (v10 << 6);
    v23 = v8[7];
    v24 = (v8[6] + 16 * v22);
    v26 = *v24;
    v25 = v24[1];
    v27 = *(v45 + 72);
    v28 = v23 + v27 * v22;
    if (v46)
    {
      (*v47)(v48, v28, v49);
    }

    else
    {
      (*v43)(v48, v28, v49);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }

    sub_1C4F02AF8();
    sub_1C4F01298();
    sub_1C4F02B68();
    sub_1C4411990();
    sub_1C4405760();
    if (v29)
    {
      break;
    }

    sub_1C43FFC04();
LABEL_22:
    sub_1C44064EC();
    *(v17 + v33) |= v34;
    v36 = (*(v9 + 48) + 16 * v35);
    *v36 = v26;
    v36[1] = v25;
    (*v47)(*(v9 + 56) + v27 * v35, v48, v49);
    sub_1C4404DA4();
    v8 = v44;
    if (!v14)
    {
      goto LABEL_4;
    }
  }

  sub_1C43FFBF0();
  while (1)
  {
    sub_1C4410160();
    if (v29)
    {
      if (v31)
      {
        break;
      }
    }

    if (v30 == v32)
    {
      v30 = 0;
    }

    if (*(v17 + 8 * v30) != -1)
    {
      sub_1C43FCF98();
      goto LABEL_22;
    }
  }

LABEL_33:
  __break(1u);
}

void sub_1C467A2D4()
{
  sub_1C43FBD3C();
  sub_1C443FB4C();
  sub_1C4EFF0C8();
  sub_1C43FCDF8();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBCC4();
  v11 = v10 - v9;
  sub_1C4426A80();
  sub_1C456902C(&qword_1EC0BAAE8, &qword_1C4F16BF0);
  v12 = sub_1C442FC54();
  sub_1C442F148(v12, v13);
  sub_1C445FCFC();
  if (!v14)
  {
LABEL_30:

LABEL_31:
    *v0 = v4;
    sub_1C43FE9F0();
    return;
  }

  v43 = v0;
  v15 = 0;
  v16 = v2 + 64;
  sub_1C43FEC90();
  sub_1C447EFA8();
  if (!v5)
  {
LABEL_4:
    v17 = v15;
    while (1)
    {
      v15 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v15 >= v11)
      {
        break;
      }

      ++v17;
      if (*(v16 + 8 * v15))
      {
        sub_1C43FCF1C();
        v5 = v19 & v18;
        goto LABEL_9;
      }
    }

    if ((v3 & 1) == 0)
    {

      v0 = v43;
      goto LABEL_31;
    }

    sub_1C4416EF0();
    v0 = v43;
    if (v39 != v40)
    {
      sub_1C4409B5C(v38);
    }

    else
    {
      v41 = sub_1C4408764();
      sub_1C4501018(v41, v42, v16);
    }

    *(v2 + 16) = 0;
    goto LABEL_30;
  }

  while (1)
  {
    sub_1C4410218();
LABEL_9:
    sub_1C44021DC();
    if (v20)
    {
      v21 = sub_1C4415FD4();
      v22(v21);
      v45 = *(*(v2 + 56) + 8 * v1);
    }

    else
    {
      v23 = sub_1C4415FD4();
      v24(v23);
      v45 = *(*(v2 + 56) + 8 * v1);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }

    sub_1C441C17C();
    v26 = sub_1C467BA24(&qword_1EDDFE820, 255, v25, MEMORY[0x1E69A9820]);
    sub_1C442EAD4(v26);
    sub_1C4411990();
    sub_1C4405760();
    if (v27)
    {
      break;
    }

    sub_1C440D204();
    v1 = v28 | v29;
LABEL_22:
    sub_1C441EB0C();
    v36 = sub_1C440C3D8(v35);
    v37(v36);
    *(*(v4 + 56) + 8 * v1) = v45;
    sub_1C4404DA4();
    v2 = v44;
    if (!v5)
    {
      goto LABEL_4;
    }
  }

  sub_1C43FFBF0();
  while (1)
  {
    sub_1C4410160();
    if (v27)
    {
      if (v31)
      {
        break;
      }
    }

    if (v30 == v32)
    {
      v30 = 0;
    }

    if (*(v7 + 8 * v30) != -1)
    {
      sub_1C4410A88();
      v1 = v34 + (v33 << 6);
      goto LABEL_22;
    }
  }

LABEL_33:
  __break(1u);
}

void sub_1C467A544()
{
  sub_1C43FBD3C();
  sub_1C443FB4C();
  sub_1C4EFF428();
  sub_1C43FCDF8();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBCC4();
  v11 = v10 - v9;
  sub_1C4426A80();
  sub_1C456902C(&qword_1EC0BAB00, &unk_1C4F58BA0);
  v12 = sub_1C442FC54();
  sub_1C442F148(v12, v13);
  sub_1C445FCFC();
  if (!v14)
  {
LABEL_30:

LABEL_31:
    *v0 = v4;
    sub_1C43FE9F0();
    return;
  }

  v42 = v0;
  v15 = 0;
  v16 = v2 + 64;
  sub_1C43FEC90();
  sub_1C447EFA8();
  if (!v5)
  {
LABEL_4:
    v17 = v15;
    while (1)
    {
      v15 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v15 >= v11)
      {
        break;
      }

      ++v17;
      if (*(v16 + 8 * v15))
      {
        sub_1C43FCF1C();
        v5 = v19 & v18;
        goto LABEL_9;
      }
    }

    if ((v3 & 1) == 0)
    {

      v0 = v42;
      goto LABEL_31;
    }

    sub_1C4416EF0();
    v0 = v42;
    if (v38 != v39)
    {
      sub_1C4409B5C(v37);
    }

    else
    {
      v40 = sub_1C4408764();
      sub_1C4501018(v40, v41, v16);
    }

    *(v2 + 16) = 0;
    goto LABEL_30;
  }

  while (1)
  {
    sub_1C4410218();
LABEL_9:
    sub_1C44021DC();
    if (v20)
    {
      v21 = sub_1C4415FD4();
      v22(v21);
      v44 = *(*(v2 + 56) + 8 * v1);
    }

    else
    {
      v23 = sub_1C4415FD4();
      v24(v23);
      v44 = *(*(v2 + 56) + 8 * v1);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }

    v25 = sub_1C467BA24(&qword_1EDDEFF70, 255, MEMORY[0x1E69A98A0], MEMORY[0x1E69A98A8]);
    sub_1C442EAD4(v25);
    sub_1C4411990();
    sub_1C4405760();
    if (v26)
    {
      break;
    }

    sub_1C440D204();
    v1 = v27 | v28;
LABEL_22:
    sub_1C441EB0C();
    v35 = sub_1C440C3D8(v34);
    v36(v35);
    *(*(v4 + 56) + 8 * v1) = v44;
    sub_1C4404DA4();
    v2 = v43;
    if (!v5)
    {
      goto LABEL_4;
    }
  }

  sub_1C43FFBF0();
  while (1)
  {
    sub_1C4410160();
    if (v26)
    {
      if (v30)
      {
        break;
      }
    }

    if (v29 == v31)
    {
      v29 = 0;
    }

    if (*(v7 + 8 * v29) != -1)
    {
      sub_1C4410A88();
      v1 = v33 + (v32 << 6);
      goto LABEL_22;
    }
  }

LABEL_33:
  __break(1u);
}

void sub_1C467A7C4()
{
  sub_1C443FB4C();
  v4 = sub_1C4EFF0C8();
  sub_1C43FCDF8();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  v10 = v9 - v8;
  sub_1C4426A80();
  sub_1C456902C(&qword_1EC0BAAF8, &unk_1C4F16C00);
  v11 = sub_1C442FC54();
  sub_1C442F148(v11, v12);
  sub_1C445FCFC();
  if (!v13)
  {
LABEL_27:

    *v0 = v3;
    return;
  }

  v43 = v10;
  v44 = v4;
  v14 = 0;
  v15 = v1 + 64;
  sub_1C43FEC90();
  sub_1C441D1A0();
  if (!v10)
  {
LABEL_4:
    v18 = v14;
    while (1)
    {
      v14 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v14 >= v0)
      {
        break;
      }

      ++v18;
      if (*(v15 + 8 * v14))
      {
        sub_1C43FCF1C();
        v10 = v20 & v19;
        goto LABEL_9;
      }
    }

    if (v2)
    {
      sub_1C4416EF0();
      if (v38 != v39)
      {
        sub_1C4409B5C(v37);
      }

      else
      {
        v40 = sub_1C4408764();
        sub_1C4501018(v40, v41, v15);
      }

      *(v1 + 16) = 0;
    }

    goto LABEL_27;
  }

  while (1)
  {
    sub_1C445E7B0();
LABEL_9:
    v21 = v16 | (v14 << 6);
    v42 = *(v17 + 72);
    v22 = sub_1C441837C();
    v23(v22);
    v24 = *(*(v1 + 56) + 8 * v21);
    sub_1C441C17C();
    sub_1C467BA24(&qword_1EDDFE820, 255, v25, MEMORY[0x1E69A9820]);
    sub_1C4F00FD8();
    sub_1C4411990();
    sub_1C4405760();
    if (v26)
    {
      break;
    }

    sub_1C440D204();
    v29 = v27 | v28;
LABEL_19:
    sub_1C441EB0C();
    sub_1C4435828(v35);
    (*(v6 + 32))(v36 + v42 * v29, v43, v44);
    *(*(v3 + 56) + 8 * v29) = v24;
    sub_1C4404DA4();
    if (!v10)
    {
      goto LABEL_4;
    }
  }

  sub_1C43FFBF0();
  while (1)
  {
    sub_1C4410160();
    if (v26)
    {
      if (v31)
      {
        break;
      }
    }

    if (v30 == v32)
    {
      v30 = 0;
    }

    if (*(v3 + 64 + 8 * v30) != -1)
    {
      sub_1C4410A88();
      v29 = v34 + (v33 << 6);
      goto LABEL_19;
    }
  }

LABEL_29:
  __break(1u);
}

void sub_1C467AA84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  sub_1C4423AE0();
  a33 = v38;
  a34 = v39;
  sub_1C440599C();
  sub_1C456902C(&qword_1EC0B86A8, &qword_1C4F16C10);
  v40 = sub_1C440BBEC();
  v65 = v35;
  sub_1C447F8F8(v40, v41);
  sub_1C4423658();
  if (!v42)
  {
LABEL_27:

    *v34 = v36;
    sub_1C4441450();
    return;
  }

  v64 = v37;
  v43 = 0;
  v44 = v37;
  sub_1C44192F8();
  sub_1C4424FE0();
  if (!v35)
  {
LABEL_4:
    v45 = v43;
    while (1)
    {
      v43 = v45 + 1;
      if (__OFADD__(v45, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v43 >= v34)
      {
        break;
      }

      sub_1C443456C();
      if (v46)
      {
        sub_1C43FCF1C();
        v35 = v48 & v47;
        goto LABEL_9;
      }
    }

    if (v65)
    {
      sub_1C43FED48();
      if (v60 != v61)
      {
        sub_1C43FC134(v59);
      }

      else
      {
        v62 = sub_1C4408764();
        sub_1C4501018(v62, v63, v44);
      }

      *(v37 + 16) = 0;
    }

    goto LABEL_27;
  }

  while (1)
  {
    sub_1C44041D4();
LABEL_9:
    sub_1C441B808();
    v51 = (v50 + 16 * v49);
    v52 = v51[1];
    v66 = *v51;
    if ((v65 & 1) == 0)
    {
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }

    sub_1C4F02AF8();
    sub_1C446BE8C(&a14);
    sub_1C4F02B68();
    sub_1C441F630();
    sub_1C4405760();
    if (v53)
    {
      break;
    }

    sub_1C43FFC04();
LABEL_19:
    sub_1C43FFF28(v54);
    v58 = (v57 + 16 * v56);
    *v58 = v66;
    v58[1] = v52;
    sub_1C443322C();
    v37 = v64;
    if (!v35)
    {
      goto LABEL_4;
    }
  }

  sub_1C43FFBF0();
  while (1)
  {
    sub_1C4410160();
    if (v53)
    {
      if (v55)
      {
        break;
      }
    }

    sub_1C444FCD8();
    if (!v53)
    {
      sub_1C43FCF98();
      goto LABEL_19;
    }
  }

LABEL_29:
  __break(1u);
}

void sub_1C467AC18()
{
  sub_1C4412E64();
  sub_1C456902C(&qword_1EC0BAB28, &qword_1C4F16C38);
  sub_1C44259EC();
  sub_1C4440FB4();
  if (!v4)
  {
LABEL_28:

    *v0 = v2;
    return;
  }

  v5 = 0;
  sub_1C44192F8();
  sub_1C442B9E8();
  if (!v3)
  {
LABEL_4:
    v6 = v5;
    while (1)
    {
      v5 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v0)
      {
        break;
      }

      sub_1C4422298();
      if (v7)
      {
        sub_1C43FCF1C();
        v3 = v9 & v8;
        goto LABEL_9;
      }
    }

    if (v35)
    {
      sub_1C4416EF0();
      if (v31 != v32)
      {
        sub_1C43FC134(v30);
      }

      else
      {
        v33 = sub_1C4408764();
        sub_1C4501018(v33, v34, v1);
      }

      *(v1 + 16) = 0;
    }

    goto LABEL_28;
  }

  while (1)
  {
    sub_1C43FE644();
LABEL_9:
    sub_1C4434ED4();
    v14 = (v13 + (v12 << 6));
    if (v35)
    {
      v15 = *v14;
      v16 = v14[1];
      v17 = v14[2];
      *&v38[9] = *(v14 + 41);
      v37 = v16;
      *v38 = v17;
      v36 = v15;
    }

    else
    {
      sub_1C467B9B4(v14, &v36);
      v14 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }

    v18 = sub_1C440CB24(v14, v10, v11);
    sub_1C444B094(v18, v19, v20);
    sub_1C4F02B68();
    sub_1C441F630();
    sub_1C4414988();
    if (v21)
    {
      break;
    }

    sub_1C43FFC04();
LABEL_20:
    sub_1C442C614(v22);
    v26 = (v25 + (v24 << 6));
    v27 = v36;
    v28 = v37;
    v29 = *v38;
    *(v26 + 41) = *&v38[9];
    v26[1] = v28;
    v26[2] = v29;
    *v26 = v27;
    sub_1C443322C();
    if (!v3)
    {
      goto LABEL_4;
    }
  }

  sub_1C43FFBF0();
  while (1)
  {
    sub_1C4410160();
    if (v21)
    {
      if (v23)
      {
        break;
      }
    }

    sub_1C441E1A8();
    if (!v21)
    {
      sub_1C43FCF98();
      goto LABEL_20;
    }
  }

LABEL_30:
  __break(1u);
}

void sub_1C467ADC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  sub_1C4404B14();
  a31 = v36;
  a32 = v37;
  sub_1C440599C();
  sub_1C456902C(&qword_1EC0BAB30, &qword_1C4F16C48);
  v38 = sub_1C440BBEC();
  v64 = v33;
  sub_1C447F8F8(v38, v39);
  sub_1C4423658();
  if (!v40)
  {
LABEL_27:

    *v32 = v34;
    sub_1C440576C();
    return;
  }

  v63 = v35;
  v41 = 0;
  v42 = v35;
  sub_1C44192F8();
  sub_1C4424FE0();
  if (!v33)
  {
LABEL_4:
    v43 = v41;
    while (1)
    {
      v41 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v41 >= v32)
      {
        break;
      }

      sub_1C443456C();
      if (v44)
      {
        sub_1C43FCF1C();
        v33 = v46 & v45;
        goto LABEL_9;
      }
    }

    if (v64)
    {
      sub_1C43FED48();
      if (v59 != v60)
      {
        sub_1C43FC134(v58);
      }

      else
      {
        v61 = sub_1C4408764();
        sub_1C4501018(v61, v62, v42);
      }

      *(v35 + 16) = 0;
    }

    goto LABEL_27;
  }

  while (1)
  {
    sub_1C44041D4();
LABEL_9:
    sub_1C441B808();
    v52 = *(v51 + 8 * v50);
    if ((v64 & 1) == 0)
    {
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }

    sub_1C440CB24(v47, v48, v49);
    sub_1C446BE8C(&a12);
    sub_1C4F02B68();
    sub_1C441F630();
    sub_1C4405760();
    if (v53)
    {
      break;
    }

    sub_1C43FFC04();
LABEL_19:
    sub_1C43FFF28(v54);
    *(v57 + 8 * v56) = v52;
    sub_1C443322C();
    v35 = v63;
    if (!v33)
    {
      goto LABEL_4;
    }
  }

  sub_1C43FFBF0();
  while (1)
  {
    sub_1C4410160();
    if (v53)
    {
      if (v55)
      {
        break;
      }
    }

    sub_1C444FCD8();
    if (!v53)
    {
      sub_1C43FCF98();
      goto LABEL_19;
    }
  }

LABEL_29:
  __break(1u);
}

void sub_1C467AF58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  sub_1C4423AE0();
  v35 = v34;
  v37 = v36;
  v38 = *v34;
  sub_1C456902C(&qword_1EC0BAB88, &qword_1C4F16CB8);
  v72 = v37;
  v39 = sub_1C4F02548();
  if (!v38[2])
  {
LABEL_29:

LABEL_30:
    *v35 = v39;
    sub_1C4441450();
    return;
  }

  v71 = v38;
  v40 = 0;
  v41 = v38;
  sub_1C44192F8();
  v44 = v43 & v42;
  v46 = (v45 + 63) >> 6;
  v47 = v39 + 64;
  if ((v43 & v42) == 0)
  {
LABEL_4:
    v49 = v40;
    while (1)
    {
      v40 = v49 + 1;
      if (__OFADD__(v49, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v40 >= v46)
      {
        break;
      }

      ++v49;
      if (*(v41 + 8 * v40))
      {
        sub_1C43FCF1C();
        v44 = v51 & v50;
        goto LABEL_9;
      }
    }

    if ((v72 & 1) == 0)
    {

      v35 = v34;
      goto LABEL_30;
    }

    sub_1C43FED48();
    v35 = v34;
    if (v67 != v68)
    {
      sub_1C43FC134(v66);
    }

    else
    {
      v69 = sub_1C4408764();
      sub_1C4501018(v69, v70, v41);
    }

    v38[2] = 0;
    goto LABEL_29;
  }

  while (1)
  {
    sub_1C4410218();
LABEL_9:
    v52 = v48 | (v40 << 6);
    v53 = v38[7];
    v54 = (v38[6] + 32 * v52);
    v55 = v54[1];
    v74 = *v54;
    v56 = v54[3];
    v73 = v54[2];
    v57 = *(v53 + 8 * v52);
    if ((v72 & 1) == 0)
    {
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }

    sub_1C4F02AF8();
    sub_1C4F01298();
    sub_1C4F01298();
    sub_1C4F02B68();
    sub_1C441F630();
    sub_1C4405760();
    if (v58)
    {
      break;
    }

    sub_1C43FFC04();
LABEL_21:
    sub_1C44064EC();
    *(v47 + v62) |= v63;
    v65 = (*(v39 + 48) + 32 * v64);
    *v65 = v74;
    v65[1] = v55;
    v65[2] = v73;
    v65[3] = v56;
    *(*(v39 + 56) + 8 * v64) = v57;
    sub_1C443322C();
    v38 = v71;
    if (!v44)
    {
      goto LABEL_4;
    }
  }

  sub_1C43FFBF0();
  while (1)
  {
    sub_1C4410160();
    if (v58)
    {
      if (v60)
      {
        break;
      }
    }

    if (v59 == v61)
    {
      v59 = 0;
    }

    if (*(v47 + 8 * v59) != -1)
    {
      sub_1C43FCF98();
      goto LABEL_21;
    }
  }

LABEL_32:
  __break(1u);
}

void sub_1C467B19C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  sub_1C4423AE0();
  sub_1C4412E64();
  sub_1C456902C(v38, v39);
  v40 = sub_1C442FC54();
  sub_1C442F148(v40, v41);
  sub_1C4440FB4();
  if (!v42)
  {
LABEL_27:

    *v34 = v36;
    sub_1C4441450();
    return;
  }

  v43 = 0;
  sub_1C44192F8();
  sub_1C442B9E8();
  if (!v37)
  {
LABEL_4:
    v44 = v43;
    while (1)
    {
      v43 = v44 + 1;
      if (__OFADD__(v44, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v43 >= v34)
      {
        break;
      }

      sub_1C4422298();
      if (v45)
      {
        sub_1C43FCF1C();
        v37 = v47 & v46;
        goto LABEL_9;
      }
    }

    if (v36)
    {
      sub_1C4416EF0();
      if (v56 != v57)
      {
        sub_1C43FC134(v55);
      }

      else
      {
        v58 = sub_1C4408764();
        sub_1C4501018(v58, v59, v35);
      }

      *(v35 + 16) = 0;
    }

    goto LABEL_27;
  }

  while (1)
  {
    sub_1C43FE644();
LABEL_9:
    sub_1C4434ED4();
    v60 = *(v49 + 16 * v48);
    if ((v36 & 1) == 0)
    {
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }

    sub_1C4F02AF8();
    sub_1C4F01298();
    sub_1C4F02B68();
    sub_1C441F630();
    sub_1C4414988();
    if (v50)
    {
      break;
    }

    sub_1C43FFC04();
LABEL_19:
    sub_1C442C614(v51);
    *(v54 + 16 * v53) = v60;
    sub_1C443322C();
    if (!v37)
    {
      goto LABEL_4;
    }
  }

  sub_1C43FFBF0();
  while (1)
  {
    sub_1C4410160();
    if (v50)
    {
      if (v52)
      {
        break;
      }
    }

    sub_1C441E1A8();
    if (!v50)
    {
      sub_1C43FCF98();
      goto LABEL_19;
    }
  }

LABEL_29:
  __break(1u);
}

void sub_1C467B328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12)
{
  sub_1C4404B14();
  sub_1C4412E64();
  sub_1C456902C(&qword_1EC0BAB58, &unk_1C4F58BF0);
  sub_1C44259EC();
  sub_1C4440FB4();
  if (!v16)
  {
LABEL_27:

    *v12 = v14;
    sub_1C440576C();
    return;
  }

  v42 = v13;
  v17 = 0;
  v18 = v13;
  sub_1C44192F8();
  sub_1C442B9E8();
  if (!v15)
  {
LABEL_4:
    v19 = v17;
    while (1)
    {
      v17 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v17 >= v12)
      {
        break;
      }

      sub_1C4422298();
      if (v20)
      {
        sub_1C43FCF1C();
        v15 = v22 & v21;
        goto LABEL_9;
      }
    }

    if (a12)
    {
      sub_1C4416EF0();
      if (v38 != v39)
      {
        sub_1C43FC134(v37);
      }

      else
      {
        v40 = sub_1C4408764();
        sub_1C4501018(v40, v41, v18);
      }

      *(v13 + 16) = 0;
    }

    goto LABEL_27;
  }

  while (1)
  {
    sub_1C43FE644();
LABEL_9:
    sub_1C4434ED4();
    v28 = *(v27 + 8 * v26);
    if ((a12 & 1) == 0)
    {
      v23 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }

    v29 = sub_1C440CB24(v23, v24, v25);
    sub_1C444B094(v29, v30, v31);
    sub_1C4F02B68();
    sub_1C441F630();
    sub_1C4414988();
    if (v32)
    {
      break;
    }

    sub_1C43FFC04();
LABEL_19:
    sub_1C442C614(v33);
    *(v36 + 8 * v35) = v28;
    sub_1C443322C();
    v13 = v42;
    if (!v15)
    {
      goto LABEL_4;
    }
  }

  sub_1C43FFBF0();
  while (1)
  {
    sub_1C4410160();
    if (v32)
    {
      if (v34)
      {
        break;
      }
    }

    sub_1C441E1A8();
    if (!v32)
    {
      sub_1C43FCF98();
      goto LABEL_19;
    }
  }

LABEL_29:
  __break(1u);
}

void sub_1C467B4B0()
{
  sub_1C4412E64();
  sub_1C456902C(&qword_1EC0B86B8, &unk_1C4F58C00);
  sub_1C44259EC();
  sub_1C4440FB4();
  if (!v4)
  {
LABEL_28:

    *v0 = v2;
    return;
  }

  v5 = 0;
  sub_1C44192F8();
  sub_1C442B9E8();
  if (!v3)
  {
LABEL_4:
    v6 = v5;
    while (1)
    {
      v5 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v0)
      {
        break;
      }

      sub_1C4422298();
      if (v7)
      {
        sub_1C43FCF1C();
        v3 = v9 & v8;
        goto LABEL_9;
      }
    }

    if (v29)
    {
      sub_1C4416EF0();
      if (v25 != v26)
      {
        sub_1C43FC134(v24);
      }

      else
      {
        v27 = sub_1C4408764();
        sub_1C4501018(v27, v28, v1);
      }

      *(v1 + 16) = 0;
    }

    goto LABEL_28;
  }

  while (1)
  {
    sub_1C43FE644();
LABEL_9:
    sub_1C4434ED4();
    v12 = (v11 + 32 * v10);
    if (v29)
    {
      v13 = sub_1C44482AC(v12, v30);
    }

    else
    {
      sub_1C442B870(v12, v30);
      v13 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }

    v16 = sub_1C440CB24(v13, v14, v15);
    sub_1C444B094(v16, v17, v18);
    sub_1C4F02B68();
    sub_1C441F630();
    sub_1C4414988();
    if (v19)
    {
      break;
    }

    sub_1C43FFC04();
LABEL_20:
    sub_1C442C614(v20);
    sub_1C44482AC(v30, (v23 + 32 * v22));
    sub_1C443322C();
    if (!v3)
    {
      goto LABEL_4;
    }
  }

  sub_1C43FFBF0();
  while (1)
  {
    sub_1C4410160();
    if (v19)
    {
      if (v21)
      {
        break;
      }
    }

    sub_1C441E1A8();
    if (!v19)
    {
      sub_1C43FCF98();
      goto LABEL_20;
    }
  }

LABEL_30:
  __break(1u);
}

void sub_1C467B67C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  sub_1C4404B14();
  a31 = v36;
  a32 = v37;
  sub_1C440599C();
  sub_1C456902C(v38, v39);
  v40 = sub_1C440BBEC();
  v66 = v33;
  sub_1C447F8F8(v40, v41);
  sub_1C4423658();
  if (!v42)
  {
LABEL_27:

    *v32 = v34;
    sub_1C440576C();
    return;
  }

  v65 = v35;
  v43 = 0;
  v44 = v35;
  sub_1C44192F8();
  sub_1C4424FE0();
  if (!v33)
  {
LABEL_4:
    v45 = v43;
    while (1)
    {
      v43 = v45 + 1;
      if (__OFADD__(v45, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v43 >= v32)
      {
        break;
      }

      sub_1C443456C();
      if (v46)
      {
        sub_1C43FCF1C();
        v33 = v48 & v47;
        goto LABEL_9;
      }
    }

    if (v66)
    {
      sub_1C43FED48();
      if (v61 != v62)
      {
        sub_1C43FC134(v60);
      }

      else
      {
        v63 = sub_1C4408764();
        sub_1C4501018(v63, v64, v44);
      }

      *(v35 + 16) = 0;
    }

    goto LABEL_27;
  }

  while (1)
  {
    sub_1C44041D4();
LABEL_9:
    sub_1C441B808();
    v54 = *(v53 + 8 * v52);
    if ((v66 & 1) == 0)
    {
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v49 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }

    sub_1C440CB24(v49, v50, v51);
    sub_1C446BE8C(&a12);
    sub_1C4F02B68();
    sub_1C441F630();
    sub_1C4405760();
    if (v55)
    {
      break;
    }

    sub_1C43FFC04();
LABEL_19:
    sub_1C43FFF28(v56);
    *(v59 + 8 * v58) = v54;
    sub_1C443322C();
    v35 = v65;
    if (!v33)
    {
      goto LABEL_4;
    }
  }

  sub_1C43FFBF0();
  while (1)
  {
    sub_1C4410160();
    if (v55)
    {
      if (v57)
      {
        break;
      }
    }

    sub_1C444FCD8();
    if (!v55)
    {
      sub_1C43FCF98();
      goto LABEL_19;
    }
  }

LABEL_29:
  __break(1u);
}

_BYTE *sub_1C467B7F0(_BYTE *a1, uint64_t a2)
{
  v4 = a1;
  v17[1] = *MEMORY[0x1E69E9840];
  v5 = a1[32];
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v16 = swift_slowAlloc();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v4 = sub_1C45867F0(v16, v7, v4, a2);
      MEMORY[0x1C6942830](v16, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x1EEE9AC00](v8);
  v9 = v17 - ((8 * v7 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_1C4501018(0, v7, v9);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4586AB8(v9, v7, v4, a2, v10, v11, v12, v13);
  if (v2)
  {
    swift_willThrow();
  }

  else
  {
    v4 = v14;
  }

  swift_bridgeObjectRelease_n();
LABEL_6:

  return v4;
}

uint64_t sub_1C467B9B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0B9AE0, &qword_1C4F16C40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C467BA24(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C467BA74(__int16 a1, uint64_t a2)
{
  *(v2 + 152) = a2;
  *(v2 + 176) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C467BA98, 0, 0);
}

uint64_t sub_1C467BA98()
{
  v1 = *(v0 + 176);
  v2 = objc_opt_self();
  sub_1C467BDE0();
  v3 = sub_1C4F01658();
  *(v0 + 160) = v3;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_1C467BBF4;
  v4 = swift_continuation_init();
  *(v0 + 136) = sub_1C456902C(&unk_1EC0BABA0, &qword_1C4F16CD8);
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1C467BE24;
  *(v0 + 104) = &unk_1F43E6390;
  *(v0 + 112) = v4;
  [v2 fullSetDonationWithItemType:v1 descriptors:v3 completion:v0 + 80];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1C467BBF4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 168) = v1;
  if (v1)
  {
    v2 = sub_1C467BD70;
  }

  else
  {
    v2 = sub_1C467BD04;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1C467BD04()
{
  v1 = *(v0 + 144);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1C467BD70(uint64_t a1)
{
  v2 = *(v1 + 160);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

unint64_t sub_1C467BDE0()
{
  result = qword_1EDDF0470;
  if (!qword_1EDDF0470)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDDF0470);
  }

  return result;
}

uint64_t *sub_1C467BE24(uint64_t a1, void *a2, void *a3)
{
  result = sub_1C4409678((a1 + 32), *(a1 + 56));
  v6 = *result;
  if (a3)
  {
    return sub_1C467BE90(v6, a3);
  }

  if (a2)
  {
    return sub_1C467BEFC(v6, a2);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C467BE90(uint64_t a1, uint64_t a2)
{
  sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  v4 = swift_allocError();
  *v5 = a2;

  return MEMORY[0x1EEE6DEE8](a1, v4);
}

_BYTE *storeEnumTagSinglePayload for CNContactPrivacyChecker(_BYTE *result, int a2, int a3)
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

uint64_t sub_1C467BFD0@<X0>(uint64_t *a1@<X8>)
{
  v40 = a1;
  v2 = type metadata accessor for CNContactDeltaSourceIngestor(0);
  MEMORY[0x1EEE9AC00](v2);
  v39[0] = v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v39 - v5;
  v7 = sub_1C456902C(&unk_1EC0BAC20, &unk_1C4F141E0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v39 - v8;
  v10 = type metadata accessor for ConstructionProgressTokens(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1C456902C(&unk_1EC0BA4B8, &unk_1C4F16F60);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v39 - v14;
  v16 = type metadata accessor for ProgressTokens(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v2 + 28);
  v41 = v1;
  v20 = *(v1 + v19);
  v39[1] = v6;
  switch(v20)
  {
    case 2:

      goto LABEL_4;
    default:
      v21 = sub_1C4F02938();

      if (v21)
      {
LABEL_4:
        type metadata accessor for PhaseStores(0);
        v44 = v2;
        v45 = sub_1C46825D4(&qword_1EDDF22C0, type metadata accessor for CNContactDeltaSourceIngestor, &unk_1C4F16E3C);
        sub_1C4422F90(&v42);
        sub_1C448C9D8();
        sub_1C44FEF34(&v42, 1);
        sub_1C440962C(&v42);
        if (sub_1C44157D4(v15, 1, v16) == 1)
        {
          v22 = &unk_1EC0BA4B8;
          v23 = &unk_1C4F16F60;
          v24 = v15;
LABEL_8:
          result = sub_1C4420C3C(v24, v22, v23);
          v34 = 0;
          v35 = 0xF000000000000000;
          goto LABEL_18;
        }

        sub_1C449F390();
        v26 = objc_autoreleasePoolPush();
        v27 = &v18[*(v16 + 28)];
        v28 = v27[1];
        if (v28 >> 60 == 15)
        {
          v34 = 0;
          v35 = 0xF000000000000000;
        }

        else
        {
          v32 = *v27;
          sub_1C4EF9348();
          swift_allocObject();
          sub_1C44344B8(v32, v28);
          sub_1C4EF9338();
          sub_1C456902C(qword_1EC0BAC30, &qword_1C4F142F8);
          sub_1C4401CBC(&qword_1EDDF7D78, qword_1EC0BAC30, &qword_1C4F142F8, &protocol conformance descriptor for ProgressToken<A>);
          sub_1C4EF9328();
          sub_1C441DFEC(v32, v28);

          v34 = v42;
          v35 = v43;
        }

        objc_autoreleasePoolPop(v26);
        v36 = type metadata accessor for ProgressTokens;
        v37 = v18;
      }

      else
      {
        type metadata accessor for PhaseStores(0);
        v44 = v2;
        v45 = sub_1C46825D4(&qword_1EDDF22C0, type metadata accessor for CNContactDeltaSourceIngestor, &unk_1C4F16E3C);
        sub_1C4422F90(&v42);
        sub_1C448C9D8();
        sub_1C449D50C(&v42, 0);
        sub_1C440962C(&v42);
        if (sub_1C44157D4(v9, 1, v10) == 1)
        {
          v22 = &unk_1EC0BAC20;
          v23 = &unk_1C4F141E0;
          v24 = v9;
          goto LABEL_8;
        }

        sub_1C449F390();
        v29 = objc_autoreleasePoolPush();
        v30 = &v12[*(v10 + 28)];
        v31 = v30[1];
        if (v31 >> 60 == 15)
        {
          v34 = 0;
          v35 = 0xF000000000000000;
        }

        else
        {
          v33 = *v30;
          sub_1C4EF9348();
          swift_allocObject();
          sub_1C44344B8(v33, v31);
          sub_1C4EF9338();
          sub_1C456902C(qword_1EC0BAC30, &qword_1C4F142F8);
          sub_1C4401CBC(&qword_1EDDF7D78, qword_1EC0BAC30, &qword_1C4F142F8, &protocol conformance descriptor for ProgressToken<A>);
          sub_1C4EF9328();
          sub_1C441DFEC(v33, v31);

          v34 = v42;
          v35 = v43;
        }

        objc_autoreleasePoolPop(v29);
        v36 = type metadata accessor for ConstructionProgressTokens;
        v37 = v12;
      }

      result = sub_1C4485354(v37, v36);
LABEL_18:
      v38 = v40;
      *v40 = v34;
      v38[1] = v35;
      return result;
  }
}

void sub_1C467C860()
{
  sub_1C43FBD3C();
  v6 = sub_1C441B340(v5);
  v7 = type metadata accessor for FutureLifeEventDeltaSourceIngestor(v6);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C4412E80(v9, v68);
  MEMORY[0x1EEE9AC00](v10);
  sub_1C4410A24();
  v11 = sub_1C456902C(&unk_1EC0BAC20, &unk_1C4F141E0);
  sub_1C43FBD18(v11);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FFF80();
  type metadata accessor for ConstructionProgressTokens(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C440A82C();
  v14 = sub_1C456902C(&unk_1EC0BA4B8, &unk_1C4F16F60);
  sub_1C43FBD18(v14);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v15);
  v16 = sub_1C4414998();
  v17 = type metadata accessor for ProgressTokens(v16);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FBCC4();
  v21 = (v20 - v19);
  v22 = 0x6E776F6E6B6E75;
  switch(*(v0 + *(v7 + 20)))
  {
    case 1:
      v22 = sub_1C441B7B0();
      goto LABEL_5;
    case 2:

      goto LABEL_6;
    case 3:
      v22 = sub_1C4402D44();
      goto LABEL_5;
    default:
LABEL_5:
      sub_1C440417C(v22);
      sub_1C440167C();
      if (v2)
      {
LABEL_6:
        type metadata accessor for PhaseStores(0);
        sub_1C442DE10();
        sub_1C444B0B0();
        v25 = sub_1C46825D4(v23, v24, &unk_1C4F30FD8);
        sub_1C4434EE8(v25);
        sub_1C4408774();
        sub_1C448C9D8();
        sub_1C446BEA4();
        sub_1C442B9FC();
        if (!v34)
        {
          sub_1C44119A4();
          v32 = objc_autoreleasePoolPush();
          sub_1C440DFD8();
          if (!v34 & v33)
          {
            v35 = 1;
          }

          else
          {
            v35 = 0;
          }

          if (!(!v34 & v33))
          {
            v39 = sub_1C441451C();
            sub_1C44099C4(v39);
            v40 = sub_1C4426A94();
            sub_1C44344B8(v40, v17);
            sub_1C4EF9338();
            sub_1C447F910();
            sub_1C441F648(&qword_1EDDF7D60);
            v41 = sub_1C43FD374();
            sub_1C442EAF8(v41, v42);
            v43 = sub_1C4401D48();
            if (&dword_1C4F141D0)
            {
              sub_1C441DCA4(v43, v44);
              objc_autoreleasePoolPop(v3);
              v45 = sub_1C4406938();
LABEL_29:
              sub_1C4485354(v45, v46);
              if (qword_1EDDFD028 != -1)
              {
                sub_1C4419274();
                swift_once();
              }

              v54 = sub_1C4F00978();
              sub_1C43FCEE8(v54, qword_1EDE2DE10);
              sub_1C4408774();
              sub_1C4461F5C(v55, v56, v57);
              v58 = sub_1C4F00968();
              v59 = sub_1C4F01CF8();
              if (sub_1C443583C(v59))
              {
                sub_1C43FD084();
                v60 = sub_1C4402BBC();
                sub_1C44305A4(v60);
                *v35 = 136315138;
                sub_1C4408774();
                sub_1C443F5A0(v61, v62, v63);
                sub_1C4485354(v2, type metadata accessor for FutureLifeEventDeltaSourceIngestor);
                sub_1C46403A4();
                sub_1C443FB60();
                sub_1C4434578();
                sub_1C442A8DC();
                *(v35 + 4) = type metadata accessor for FutureLifeEventDeltaSourceIngestor;
                sub_1C4415FE8(&dword_1C43F8000, v64, v65, "No progress token for %s");
                sub_1C440962C(v21);
                sub_1C43FBCFC();
                MEMORY[0x1C6942830]();
                sub_1C43FBCFC();
                MEMORY[0x1C6942830]();
              }

              else
              {
                sub_1C4461C4C();
              }

              goto LABEL_35;
            }

            sub_1C441DCA4(v43, v44);
          }

          objc_autoreleasePoolPop(v3);
          v66 = sub_1C4406938();
          goto LABEL_40;
        }

        v26 = &unk_1EC0BA4B8;
        v27 = &unk_1C4F16F60;
        v28 = v4;
LABEL_12:
        sub_1C4420C3C(v28, v26, v27);
LABEL_35:
        sub_1C4422A70();
        goto LABEL_41;
      }

      type metadata accessor for PhaseStores(0);
      sub_1C442DE10();
      sub_1C444B0B0();
      v31 = sub_1C46825D4(v29, v30, &unk_1C4F30FD8);
      sub_1C4434EE8(v31);
      sub_1C4408774();
      sub_1C448C9D8();
      sub_1C4469110();
      sub_1C441C8A8();
      if (v34)
      {
        v26 = &unk_1EC0BAC20;
        v27 = &unk_1C4F141E0;
        v28 = v1;
        goto LABEL_12;
      }

      sub_1C440A800();
      v36 = objc_autoreleasePoolPush();
      sub_1C4416F04();
      if (!v38 & v37)
      {
        v35 = 1;
      }

      else
      {
        v35 = 0;
      }

      if (!(!v38 & v37))
      {
        v47 = sub_1C441451C();
        sub_1C44099C4(v47);
        v48 = sub_1C43FD388();
        sub_1C44344B8(v48, v49);
        sub_1C4EF9338();
        sub_1C447F910();
        sub_1C441F648(&qword_1EDDF7D60);
        v50 = sub_1C43FD374();
        sub_1C4418390(v50, v51);
        v52 = sub_1C43FD388();
        if (&dword_1C4F141D0)
        {
          sub_1C441DCA4(v52, v53);
          objc_autoreleasePoolPop(v0);
          sub_1C442C644();
          v45 = v3;
          goto LABEL_29;
        }

        sub_1C441DCA4(v52, v53);
      }

      objc_autoreleasePoolPop(v0);
      sub_1C442C644();
      v66 = v3;
LABEL_40:
      sub_1C4485354(v66, v67);
LABEL_41:
      sub_1C4404DB4();
      sub_1C43FE9F0();
      return;
  }
}

void sub_1C467CD60()
{
  sub_1C43FBD3C();
  v6 = sub_1C441B340(v5);
  type metadata accessor for WalletEmailOrderDeltaSourceIngestor(v6);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C4412E80(v8, v65);
  MEMORY[0x1EEE9AC00](v9);
  sub_1C4410A24();
  v10 = sub_1C456902C(&unk_1EC0BAC20, &unk_1C4F141E0);
  sub_1C43FBD18(v10);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FFF80();
  type metadata accessor for ConstructionProgressTokens(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C440A82C();
  v13 = sub_1C456902C(&unk_1EC0BA4B8, &unk_1C4F16F60);
  sub_1C43FBD18(v13);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v14);
  v15 = sub_1C4414998();
  v16 = type metadata accessor for ProgressTokens(v15);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C44320B0();
  v18 = 0x6E776F6E6B6E75;
  switch(v19)
  {
    case 1:
      v18 = sub_1C441B7B0();
      goto LABEL_5;
    case 2:

      goto LABEL_6;
    case 3:
      v18 = sub_1C4402D44();
      goto LABEL_5;
    default:
LABEL_5:
      sub_1C440417C(v18);
      sub_1C440167C();
      if (v1)
      {
LABEL_6:
        sub_1C441C194();
        sub_1C442DE10();
        sub_1C44189FC();
        v22 = sub_1C46825D4(v20, v21, &unk_1C4F6F990);
        sub_1C4434EE8(v22);
        sub_1C440F434();
        sub_1C448C9D8();
        sub_1C446BEA4();
        sub_1C442B9FC();
        if (!v31)
        {
          sub_1C44119A4();
          v29 = objc_autoreleasePoolPush();
          sub_1C440DFD8();
          if (!v31 & v30)
          {
            v32 = 1;
          }

          else
          {
            v32 = 0;
          }

          if (!(!v31 & v30))
          {
            v36 = sub_1C441451C();
            sub_1C44099C4(v36);
            v37 = sub_1C4426A94();
            sub_1C44344B8(v37, v16);
            sub_1C4EF9338();
            sub_1C447F910();
            sub_1C441F648(&qword_1EDDF7D60);
            v38 = sub_1C43FD374();
            sub_1C442EAF8(v38, v39);
            v40 = sub_1C4401D48();
            if (&dword_1C4F141D0)
            {
              sub_1C441DCA4(v40, v41);
              objc_autoreleasePoolPop(v2);
              v42 = sub_1C4406938();
LABEL_29:
              sub_1C4485354(v42, v43);
              if (qword_1EDDFD028 != -1)
              {
                sub_1C4419274();
                swift_once();
              }

              v51 = sub_1C4F00978();
              sub_1C43FCEE8(v51, qword_1EDE2DE10);
              sub_1C440F434();
              sub_1C4461F5C(v52, v53, v54);
              v55 = sub_1C4F00968();
              v56 = sub_1C4F01CF8();
              if (sub_1C443583C(v56))
              {
                sub_1C43FD084();
                v57 = sub_1C4402BBC();
                sub_1C44305A4(v57);
                *v32 = 136315138;
                sub_1C440F434();
                sub_1C443F5A0(v58, v59, v60);
                sub_1C4485354(v1, type metadata accessor for WalletEmailOrderDeltaSourceIngestor);
                sub_1C464037C();
                sub_1C443FB60();
                sub_1C4434578();
                sub_1C442A8DC();
                *(v32 + 4) = type metadata accessor for WalletEmailOrderDeltaSourceIngestor;
                sub_1C4415FE8(&dword_1C43F8000, v61, v62, "No progress token for %s");
                sub_1C440962C(v3);
                sub_1C43FBCFC();
                MEMORY[0x1C6942830]();
                sub_1C43FBCFC();
                MEMORY[0x1C6942830]();
              }

              else
              {
                sub_1C4461C4C();
              }

              goto LABEL_35;
            }

            sub_1C441DCA4(v40, v41);
          }

          objc_autoreleasePoolPop(v2);
          v63 = sub_1C4406938();
          goto LABEL_40;
        }

        v23 = &unk_1EC0BA4B8;
        v24 = &unk_1C4F16F60;
        v25 = v4;
LABEL_12:
        sub_1C4420C3C(v25, v23, v24);
LABEL_35:
        sub_1C4422A70();
        goto LABEL_41;
      }

      sub_1C444FCE8();
      sub_1C442DE10();
      sub_1C44189FC();
      v28 = sub_1C46825D4(v26, v27, &unk_1C4F6F990);
      sub_1C4434EE8(v28);
      sub_1C440F434();
      sub_1C448C9D8();
      sub_1C4469110();
      sub_1C441C8A8();
      if (v31)
      {
        v23 = &unk_1EC0BAC20;
        v24 = &unk_1C4F141E0;
        v25 = v0;
        goto LABEL_12;
      }

      sub_1C440A800();
      v33 = objc_autoreleasePoolPush();
      sub_1C4416F04();
      if (!v35 & v34)
      {
        v32 = 1;
      }

      else
      {
        v32 = 0;
      }

      if (!(!v35 & v34))
      {
        v44 = sub_1C441451C();
        sub_1C44099C4(v44);
        v45 = sub_1C43FD388();
        sub_1C44344B8(v45, v46);
        sub_1C4EF9338();
        sub_1C447F910();
        sub_1C441F648(&qword_1EDDF7D60);
        v47 = sub_1C43FD374();
        sub_1C4418390(v47, v48);
        v49 = sub_1C43FD388();
        if (&dword_1C4F141D0)
        {
          sub_1C441DCA4(v49, v50);
          objc_autoreleasePoolPop(v16);
          sub_1C442C644();
          v42 = v2;
          goto LABEL_29;
        }

        sub_1C441DCA4(v49, v50);
      }

      objc_autoreleasePoolPop(v16);
      sub_1C442C644();
      v63 = v2;
LABEL_40:
      sub_1C4485354(v63, v64);
LABEL_41:
      sub_1C4404DB4();
      sub_1C43FE9F0();
      return;
  }
}

void sub_1C467D22C()
{
  sub_1C43FBD3C();
  v6 = sub_1C441B340(v5);
  type metadata accessor for BMAppleMusicEventDeltaSourceIngestor(v6);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C4412E80(v8, v65);
  MEMORY[0x1EEE9AC00](v9);
  sub_1C4410A24();
  v10 = sub_1C456902C(&unk_1EC0BAC20, &unk_1C4F141E0);
  sub_1C43FBD18(v10);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FFF80();
  type metadata accessor for ConstructionProgressTokens(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C440A82C();
  v13 = sub_1C456902C(&unk_1EC0BA4B8, &unk_1C4F16F60);
  sub_1C43FBD18(v13);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v14);
  v15 = sub_1C4414998();
  v16 = type metadata accessor for ProgressTokens(v15);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C44320B0();
  v18 = 0x6E776F6E6B6E75;
  switch(v19)
  {
    case 1:
      v18 = sub_1C441B7B0();
      goto LABEL_5;
    case 2:

      goto LABEL_6;
    case 3:
      v18 = sub_1C4402D44();
      goto LABEL_5;
    default:
LABEL_5:
      sub_1C440417C(v18);
      sub_1C440167C();
      if (v1)
      {
LABEL_6:
        sub_1C441C194();
        sub_1C442DE10();
        sub_1C44364E8();
        v22 = sub_1C46825D4(v20, v21, &unk_1C4F14550);
        sub_1C4434EE8(v22);
        sub_1C4425A14();
        sub_1C448C9D8();
        sub_1C446BEA4();
        sub_1C442B9FC();
        if (!v31)
        {
          sub_1C44119A4();
          v29 = objc_autoreleasePoolPush();
          sub_1C440DFD8();
          if (!v31 & v30)
          {
            v32 = 1;
          }

          else
          {
            v32 = 0;
          }

          if (!(!v31 & v30))
          {
            v36 = sub_1C441451C();
            sub_1C44099C4(v36);
            v37 = sub_1C4426A94();
            sub_1C44344B8(v37, v16);
            sub_1C4EF9338();
            sub_1C447F910();
            sub_1C441F648(&qword_1EDDF7D60);
            v38 = sub_1C43FD374();
            sub_1C442EAF8(v38, v39);
            v40 = sub_1C4401D48();
            if (&dword_1C4F141D0)
            {
              sub_1C441DCA4(v40, v41);
              objc_autoreleasePoolPop(v2);
              v42 = sub_1C4406938();
LABEL_29:
              sub_1C4485354(v42, v43);
              if (qword_1EDDFD028 != -1)
              {
                sub_1C4419274();
                swift_once();
              }

              v51 = sub_1C4F00978();
              sub_1C43FCEE8(v51, qword_1EDE2DE10);
              sub_1C4425A14();
              sub_1C4461F5C(v52, v53, v54);
              v55 = sub_1C4F00968();
              v56 = sub_1C4F01CF8();
              if (sub_1C443583C(v56))
              {
                sub_1C43FD084();
                v57 = sub_1C4402BBC();
                sub_1C44305A4(v57);
                *v32 = 136315138;
                sub_1C4425A14();
                sub_1C443F5A0(v58, v59, v60);
                sub_1C4485354(v1, type metadata accessor for BMAppleMusicEventDeltaSourceIngestor);
                sub_1C4640354();
                sub_1C443FB60();
                sub_1C4434578();
                sub_1C442A8DC();
                *(v32 + 4) = type metadata accessor for BMAppleMusicEventDeltaSourceIngestor;
                sub_1C4415FE8(&dword_1C43F8000, v61, v62, "No progress token for %s");
                sub_1C440962C(v3);
                sub_1C43FBCFC();
                MEMORY[0x1C6942830]();
                sub_1C43FBCFC();
                MEMORY[0x1C6942830]();
              }

              else
              {
                sub_1C4461C4C();
              }

              goto LABEL_35;
            }

            sub_1C441DCA4(v40, v41);
          }

          objc_autoreleasePoolPop(v2);
          v63 = sub_1C4406938();
          goto LABEL_40;
        }

        v23 = &unk_1EC0BA4B8;
        v24 = &unk_1C4F16F60;
        v25 = v4;
LABEL_12:
        sub_1C4420C3C(v25, v23, v24);
LABEL_35:
        sub_1C4422A70();
        goto LABEL_41;
      }

      sub_1C444FCE8();
      sub_1C442DE10();
      sub_1C44364E8();
      v28 = sub_1C46825D4(v26, v27, &unk_1C4F14550);
      sub_1C4434EE8(v28);
      sub_1C4425A14();
      sub_1C448C9D8();
      sub_1C4469110();
      sub_1C441C8A8();
      if (v31)
      {
        v23 = &unk_1EC0BAC20;
        v24 = &unk_1C4F141E0;
        v25 = v0;
        goto LABEL_12;
      }

      sub_1C440A800();
      v33 = objc_autoreleasePoolPush();
      sub_1C4416F04();
      if (!v35 & v34)
      {
        v32 = 1;
      }

      else
      {
        v32 = 0;
      }

      if (!(!v35 & v34))
      {
        v44 = sub_1C441451C();
        sub_1C44099C4(v44);
        v45 = sub_1C43FD388();
        sub_1C44344B8(v45, v46);
        sub_1C4EF9338();
        sub_1C447F910();
        sub_1C441F648(&qword_1EDDF7D60);
        v47 = sub_1C43FD374();
        sub_1C4418390(v47, v48);
        v49 = sub_1C43FD388();
        if (&dword_1C4F141D0)
        {
          sub_1C441DCA4(v49, v50);
          objc_autoreleasePoolPop(v16);
          sub_1C442C644();
          v42 = v2;
          goto LABEL_29;
        }

        sub_1C441DCA4(v49, v50);
      }

      objc_autoreleasePoolPop(v16);
      sub_1C442C644();
      v63 = v2;
LABEL_40:
      sub_1C4485354(v63, v64);
LABEL_41:
      sub_1C4404DB4();
      sub_1C43FE9F0();
      return;
  }
}

void sub_1C467D6F8()
{
  sub_1C43FBD3C();
  v6 = sub_1C441B340(v5);
  type metadata accessor for WalletClassicOrderDeltaSourceIngestor(v6);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C4412E80(v8, v65);
  MEMORY[0x1EEE9AC00](v9);
  sub_1C4410A24();
  v10 = sub_1C456902C(&unk_1EC0BAC20, &unk_1C4F141E0);
  sub_1C43FBD18(v10);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FFF80();
  type metadata accessor for ConstructionProgressTokens(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C440A82C();
  v13 = sub_1C456902C(&unk_1EC0BA4B8, &unk_1C4F16F60);
  sub_1C43FBD18(v13);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v14);
  v15 = sub_1C4414998();
  v16 = type metadata accessor for ProgressTokens(v15);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C44320B0();
  v18 = 0x6E776F6E6B6E75;
  switch(v19)
  {
    case 1:
      v18 = sub_1C441B7B0();
      goto LABEL_5;
    case 2:

      goto LABEL_6;
    case 3:
      v18 = sub_1C4402D44();
      goto LABEL_5;
    default:
LABEL_5:
      sub_1C440417C(v18);
      sub_1C440167C();
      if (v1)
      {
LABEL_6:
        sub_1C441C194();
        sub_1C442DE10();
        sub_1C4433C00();
        v22 = sub_1C46825D4(v20, v21, &unk_1C4F6F704);
        sub_1C4434EE8(v22);
        sub_1C443323C();
        sub_1C448C9D8();
        sub_1C446BEA4();
        sub_1C442B9FC();
        if (!v31)
        {
          sub_1C44119A4();
          v29 = objc_autoreleasePoolPush();
          sub_1C440DFD8();
          if (!v31 & v30)
          {
            v32 = 1;
          }

          else
          {
            v32 = 0;
          }

          if (!(!v31 & v30))
          {
            v36 = sub_1C441451C();
            sub_1C44099C4(v36);
            v37 = sub_1C4426A94();
            sub_1C44344B8(v37, v16);
            sub_1C4EF9338();
            sub_1C447F910();
            sub_1C441F648(&qword_1EDDF7D60);
            v38 = sub_1C43FD374();
            sub_1C442EAF8(v38, v39);
            v40 = sub_1C4401D48();
            if (&dword_1C4F141D0)
            {
              sub_1C441DCA4(v40, v41);
              objc_autoreleasePoolPop(v2);
              v42 = sub_1C4406938();
LABEL_29:
              sub_1C4485354(v42, v43);
              if (qword_1EDDFD028 != -1)
              {
                sub_1C4419274();
                swift_once();
              }

              v51 = sub_1C4F00978();
              sub_1C43FCEE8(v51, qword_1EDE2DE10);
              sub_1C443323C();
              sub_1C4461F5C(v52, v53, v54);
              v55 = sub_1C4F00968();
              v56 = sub_1C4F01CF8();
              if (sub_1C443583C(v56))
              {
                sub_1C43FD084();
                v57 = sub_1C4402BBC();
                sub_1C44305A4(v57);
                *v32 = 136315138;
                sub_1C443323C();
                sub_1C443F5A0(v58, v59, v60);
                sub_1C4485354(v1, type metadata accessor for WalletClassicOrderDeltaSourceIngestor);
                sub_1C4640304();
                sub_1C443FB60();
                sub_1C4434578();
                sub_1C442A8DC();
                *(v32 + 4) = type metadata accessor for WalletClassicOrderDeltaSourceIngestor;
                sub_1C4415FE8(&dword_1C43F8000, v61, v62, "No progress token for %s");
                sub_1C440962C(v3);
                sub_1C43FBCFC();
                MEMORY[0x1C6942830]();
                sub_1C43FBCFC();
                MEMORY[0x1C6942830]();
              }

              else
              {
                sub_1C4461C4C();
              }

              goto LABEL_35;
            }

            sub_1C441DCA4(v40, v41);
          }

          objc_autoreleasePoolPop(v2);
          v63 = sub_1C4406938();
          goto LABEL_40;
        }

        v23 = &unk_1EC0BA4B8;
        v24 = &unk_1C4F16F60;
        v25 = v4;
LABEL_12:
        sub_1C4420C3C(v25, v23, v24);
LABEL_35:
        sub_1C4422A70();
        goto LABEL_41;
      }

      sub_1C444FCE8();
      sub_1C442DE10();
      sub_1C4433C00();
      v28 = sub_1C46825D4(v26, v27, &unk_1C4F6F704);
      sub_1C4434EE8(v28);
      sub_1C443323C();
      sub_1C448C9D8();
      sub_1C4469110();
      sub_1C441C8A8();
      if (v31)
      {
        v23 = &unk_1EC0BAC20;
        v24 = &unk_1C4F141E0;
        v25 = v0;
        goto LABEL_12;
      }

      sub_1C440A800();
      v33 = objc_autoreleasePoolPush();
      sub_1C4416F04();
      if (!v35 & v34)
      {
        v32 = 1;
      }

      else
      {
        v32 = 0;
      }

      if (!(!v35 & v34))
      {
        v44 = sub_1C441451C();
        sub_1C44099C4(v44);
        v45 = sub_1C43FD388();
        sub_1C44344B8(v45, v46);
        sub_1C4EF9338();
        sub_1C447F910();
        sub_1C441F648(&qword_1EDDF7D60);
        v47 = sub_1C43FD374();
        sub_1C4418390(v47, v48);
        v49 = sub_1C43FD388();
        if (&dword_1C4F141D0)
        {
          sub_1C441DCA4(v49, v50);
          objc_autoreleasePoolPop(v16);
          sub_1C442C644();
          v42 = v2;
          goto LABEL_29;
        }

        sub_1C441DCA4(v49, v50);
      }

      objc_autoreleasePoolPop(v16);
      sub_1C442C644();
      v63 = v2;
LABEL_40:
      sub_1C4485354(v63, v64);
LABEL_41:
      sub_1C4404DB4();
      sub_1C43FE9F0();
      return;
  }
}

void sub_1C467DBC4()
{
  sub_1C43FBD3C();
  v6 = sub_1C441B340(v5);
  type metadata accessor for WalletTrackedOrderDeltaSourceIngestor(v6);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C4412E80(v8, v65);
  MEMORY[0x1EEE9AC00](v9);
  sub_1C4410A24();
  v10 = sub_1C456902C(&unk_1EC0BAC20, &unk_1C4F141E0);
  sub_1C43FBD18(v10);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FFF80();
  type metadata accessor for ConstructionProgressTokens(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C440A82C();
  v13 = sub_1C456902C(&unk_1EC0BA4B8, &unk_1C4F16F60);
  sub_1C43FBD18(v13);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v14);
  v15 = sub_1C4414998();
  v16 = type metadata accessor for ProgressTokens(v15);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C44320B0();
  v18 = 0x6E776F6E6B6E75;
  switch(v19)
  {
    case 1:
      v18 = sub_1C441B7B0();
      goto LABEL_5;
    case 2:

      goto LABEL_6;
    case 3:
      v18 = sub_1C4402D44();
      goto LABEL_5;
    default:
LABEL_5:
      sub_1C440417C(v18);
      sub_1C440167C();
      if (v1)
      {
LABEL_6:
        sub_1C441C194();
        sub_1C442DE10();
        sub_1C4440FC0();
        v22 = sub_1C46825D4(v20, v21, &unk_1C4F6FDC4);
        sub_1C4434EE8(v22);
        sub_1C440D214();
        sub_1C448C9D8();
        sub_1C446BEA4();
        sub_1C442B9FC();
        if (!v31)
        {
          sub_1C44119A4();
          v29 = objc_autoreleasePoolPush();
          sub_1C440DFD8();
          if (!v31 & v30)
          {
            v32 = 1;
          }

          else
          {
            v32 = 0;
          }

          if (!(!v31 & v30))
          {
            v36 = sub_1C441451C();
            sub_1C44099C4(v36);
            v37 = sub_1C4426A94();
            sub_1C44344B8(v37, v16);
            sub_1C4EF9338();
            sub_1C447F910();
            sub_1C441F648(&qword_1EDDF7D60);
            v38 = sub_1C43FD374();
            sub_1C442EAF8(v38, v39);
            v40 = sub_1C4401D48();
            if (&dword_1C4F141D0)
            {
              sub_1C441DCA4(v40, v41);
              objc_autoreleasePoolPop(v2);
              v42 = sub_1C4406938();
LABEL_29:
              sub_1C4485354(v42, v43);
              if (qword_1EDDFD028 != -1)
              {
                sub_1C4419274();
                swift_once();
              }

              v51 = sub_1C4F00978();
              sub_1C43FCEE8(v51, qword_1EDE2DE10);
              sub_1C440D214();
              sub_1C4461F5C(v52, v53, v54);
              v55 = sub_1C4F00968();
              v56 = sub_1C4F01CF8();
              if (sub_1C443583C(v56))
              {
                sub_1C43FD084();
                v57 = sub_1C4402BBC();
                sub_1C44305A4(v57);
                *v32 = 136315138;
                sub_1C440D214();
                sub_1C443F5A0(v58, v59, v60);
                sub_1C4485354(v1, type metadata accessor for WalletTrackedOrderDeltaSourceIngestor);
                sub_1C46401E4();
                sub_1C443FB60();
                sub_1C4434578();
                sub_1C442A8DC();
                *(v32 + 4) = type metadata accessor for WalletTrackedOrderDeltaSourceIngestor;
                sub_1C4415FE8(&dword_1C43F8000, v61, v62, "No progress token for %s");
                sub_1C440962C(v3);
                sub_1C43FBCFC();
                MEMORY[0x1C6942830]();
                sub_1C43FBCFC();
                MEMORY[0x1C6942830]();
              }

              else
              {
                sub_1C4461C4C();
              }

              goto LABEL_35;
            }

            sub_1C441DCA4(v40, v41);
          }

          objc_autoreleasePoolPop(v2);
          v63 = sub_1C4406938();
          goto LABEL_40;
        }

        v23 = &unk_1EC0BA4B8;
        v24 = &unk_1C4F16F60;
        v25 = v4;
LABEL_12:
        sub_1C4420C3C(v25, v23, v24);
LABEL_35:
        sub_1C4422A70();
        goto LABEL_41;
      }

      sub_1C444FCE8();
      sub_1C442DE10();
      sub_1C4440FC0();
      v28 = sub_1C46825D4(v26, v27, &unk_1C4F6FDC4);
      sub_1C4434EE8(v28);
      sub_1C440D214();
      sub_1C448C9D8();
      sub_1C4469110();
      sub_1C441C8A8();
      if (v31)
      {
        v23 = &unk_1EC0BAC20;
        v24 = &unk_1C4F141E0;
        v25 = v0;
        goto LABEL_12;
      }

      sub_1C440A800();
      v33 = objc_autoreleasePoolPush();
      sub_1C4416F04();
      if (!v35 & v34)
      {
        v32 = 1;
      }

      else
      {
        v32 = 0;
      }

      if (!(!v35 & v34))
      {
        v44 = sub_1C441451C();
        sub_1C44099C4(v44);
        v45 = sub_1C43FD388();
        sub_1C44344B8(v45, v46);
        sub_1C4EF9338();
        sub_1C447F910();
        sub_1C441F648(&qword_1EDDF7D60);
        v47 = sub_1C43FD374();
        sub_1C4418390(v47, v48);
        v49 = sub_1C43FD388();
        if (&dword_1C4F141D0)
        {
          sub_1C441DCA4(v49, v50);
          objc_autoreleasePoolPop(v16);
          sub_1C442C644();
          v42 = v2;
          goto LABEL_29;
        }

        sub_1C441DCA4(v49, v50);
      }

      objc_autoreleasePoolPop(v16);
      sub_1C442C644();
      v63 = v2;
LABEL_40:
      sub_1C4485354(v63, v64);
LABEL_41:
      sub_1C4404DB4();
      sub_1C43FE9F0();
      return;
  }
}

void sub_1C467E090()
{
  sub_1C43FBD3C();
  v6 = sub_1C441B340(v5);
  type metadata accessor for WalletTransactionOrderDeltaSourceIngestor(v6);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C4412E80(v8, v65);
  MEMORY[0x1EEE9AC00](v9);
  sub_1C4410A24();
  v10 = sub_1C456902C(&unk_1EC0BAC20, &unk_1C4F141E0);
  sub_1C43FBD18(v10);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FFF80();
  type metadata accessor for ConstructionProgressTokens(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C440A82C();
  v13 = sub_1C456902C(&unk_1EC0BA4B8, &unk_1C4F16F60);
  sub_1C43FBD18(v13);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v14);
  v15 = sub_1C4414998();
  v16 = type metadata accessor for ProgressTokens(v15);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C44320B0();
  v18 = 0x6E776F6E6B6E75;
  switch(v19)
  {
    case 1:
      v18 = sub_1C441B7B0();
      goto LABEL_5;
    case 2:

      goto LABEL_6;
    case 3:
      v18 = sub_1C4402D44();
      goto LABEL_5;
    default:
LABEL_5:
      sub_1C440417C(v18);
      sub_1C440167C();
      if (v1)
      {
LABEL_6:
        sub_1C441C194();
        sub_1C442DE10();
        sub_1C44021FC();
        v22 = sub_1C46825D4(v20, v21, &unk_1C4F6FFF8);
        sub_1C4434EE8(v22);
        sub_1C4410A98();
        sub_1C448C9D8();
        sub_1C446BEA4();
        sub_1C442B9FC();
        if (!v31)
        {
          sub_1C44119A4();
          v29 = objc_autoreleasePoolPush();
          sub_1C440DFD8();
          if (!v31 & v30)
          {
            v32 = 1;
          }

          else
          {
            v32 = 0;
          }

          if (!(!v31 & v30))
          {
            v36 = sub_1C441451C();
            sub_1C44099C4(v36);
            v37 = sub_1C4426A94();
            sub_1C44344B8(v37, v16);
            sub_1C4EF9338();
            sub_1C447F910();
            sub_1C441F648(&qword_1EDDF7D60);
            v38 = sub_1C43FD374();
            sub_1C442EAF8(v38, v39);
            v40 = sub_1C4401D48();
            if (&dword_1C4F141D0)
            {
              sub_1C441DCA4(v40, v41);
              objc_autoreleasePoolPop(v2);
              v42 = sub_1C4406938();
LABEL_29:
              sub_1C4485354(v42, v43);
              if (qword_1EDDFD028 != -1)
              {
                sub_1C4419274();
                swift_once();
              }

              v51 = sub_1C4F00978();
              sub_1C43FCEE8(v51, qword_1EDE2DE10);
              sub_1C4410A98();
              sub_1C4461F5C(v52, v53, v54);
              v55 = sub_1C4F00968();
              v56 = sub_1C4F01CF8();
              if (sub_1C443583C(v56))
              {
                sub_1C43FD084();
                v57 = sub_1C4402BBC();
                sub_1C44305A4(v57);
                *v32 = 136315138;
                sub_1C4410A98();
                sub_1C443F5A0(v58, v59, v60);
                sub_1C4485354(v1, type metadata accessor for WalletTransactionOrderDeltaSourceIngestor);
                sub_1C46401BC();
                sub_1C443FB60();
                sub_1C4434578();
                sub_1C442A8DC();
                *(v32 + 4) = type metadata accessor for WalletTransactionOrderDeltaSourceIngestor;
                sub_1C4415FE8(&dword_1C43F8000, v61, v62, "No progress token for %s");
                sub_1C440962C(v3);
                sub_1C43FBCFC();
                MEMORY[0x1C6942830]();
                sub_1C43FBCFC();
                MEMORY[0x1C6942830]();
              }

              else
              {
                sub_1C4461C4C();
              }

              goto LABEL_35;
            }

            sub_1C441DCA4(v40, v41);
          }

          objc_autoreleasePoolPop(v2);
          v63 = sub_1C4406938();
          goto LABEL_40;
        }

        v23 = &unk_1EC0BA4B8;
        v24 = &unk_1C4F16F60;
        v25 = v4;
LABEL_12:
        sub_1C4420C3C(v25, v23, v24);
LABEL_35:
        sub_1C4422A70();
        goto LABEL_41;
      }

      sub_1C444FCE8();
      sub_1C442DE10();
      sub_1C44021FC();
      v28 = sub_1C46825D4(v26, v27, &unk_1C4F6FFF8);
      sub_1C4434EE8(v28);
      sub_1C4410A98();
      sub_1C448C9D8();
      sub_1C4469110();
      sub_1C441C8A8();
      if (v31)
      {
        v23 = &unk_1EC0BAC20;
        v24 = &unk_1C4F141E0;
        v25 = v0;
        goto LABEL_12;
      }

      sub_1C440A800();
      v33 = objc_autoreleasePoolPush();
      sub_1C4416F04();
      if (!v35 & v34)
      {
        v32 = 1;
      }

      else
      {
        v32 = 0;
      }

      if (!(!v35 & v34))
      {
        v44 = sub_1C441451C();
        sub_1C44099C4(v44);
        v45 = sub_1C43FD388();
        sub_1C44344B8(v45, v46);
        sub_1C4EF9338();
        sub_1C447F910();
        sub_1C441F648(&qword_1EDDF7D60);
        v47 = sub_1C43FD374();
        sub_1C4418390(v47, v48);
        v49 = sub_1C43FD388();
        if (&dword_1C4F141D0)
        {
          sub_1C441DCA4(v49, v50);
          objc_autoreleasePoolPop(v16);
          sub_1C442C644();
          v42 = v2;
          goto LABEL_29;
        }

        sub_1C441DCA4(v49, v50);
      }

      objc_autoreleasePoolPop(v16);
      sub_1C442C644();
      v63 = v2;
LABEL_40:
      sub_1C4485354(v63, v64);
LABEL_41:
      sub_1C4404DB4();
      sub_1C43FE9F0();
      return;
  }
}

uint64_t sub_1C467E55C(uint64_t a1)
{
  v2 = v1;
  v40[1] = *MEMORY[0x1E69E9840];
  if (qword_1EDDFD028 != -1)
  {
    swift_once();
  }

  v4 = sub_1C4F00978();
  sub_1C442B738(v4, qword_1EDE2DE10);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v5 = sub_1C4F00968();
  v6 = sub_1C4F01CF8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v40[0] = v8;
    *v7 = 136315138;
    v9 = MEMORY[0x1C6940380](a1, MEMORY[0x1E69E6158]);
    v11 = sub_1C441D828(v9, v10, v40);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1C43F8000, v5, v6, "CNContact delta identiers : %s", v7, 0xCu);
    sub_1C440962C(v8);
    MEMORY[0x1C6942830](v8, -1, -1);
    MEMORY[0x1C6942830](v7, -1, -1);
  }

  if (*(a1 + 16))
  {
    sub_1C4461BB8(0, &qword_1EDDF03C8, 0x1E695CD78);
    v12 = sub_1C44C8F40();
    v13 = sub_1C467EA4C(v12);
    v14 = objc_opt_self();
    v15 = sub_1C4F01658();
    v16 = [v14 predicateForContactsWithIdentifiers_];

    [v13 setPredicate_];
    v17 = *(v2 + *(type metadata accessor for CNContactDeltaSourceIngestor(0) + 32));
    v40[0] = 0;
    v18 = [v17 executeFetchRequest:v13 error:v40];
    if (v18)
    {
      v19 = v18;
      v20 = v40[0];
      v40[0] = [v19 value];
      sub_1C456902C(&unk_1EC0BABF0, &qword_1C4F16F30);
      if (swift_dynamicCast())
      {

        return v39;
      }

      v36 = sub_1C4F00968();
      v37 = sub_1C4F01CD8();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&dword_1C43F8000, v36, v37, "Can't get CNContacts from CNFetchResult", v38, 2u);
        MEMORY[0x1C6942830](v38, -1, -1);
      }
    }

    else
    {
      v25 = v40[0];
      v26 = sub_1C4EF97A8();

      swift_willThrow();
      v27 = v26;
      v28 = sub_1C4F00968();
      v29 = sub_1C4F01CD8();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v40[0] = v31;
        *v30 = 136315138;
        v32 = v26;
        sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
        v33 = sub_1C4F01198();
        v35 = sub_1C441D828(v33, v34, v40);

        *(v30 + 4) = v35;
        _os_log_impl(&dword_1C43F8000, v28, v29, "Can't fetch CNContacts with identifiers due to: %s", v30, 0xCu);
        sub_1C440962C(v31);
        MEMORY[0x1C6942830](v31, -1, -1);
        MEMORY[0x1C6942830](v30, -1, -1);
      }
    }
  }

  else
  {
    v22 = sub_1C4F00968();
    v23 = sub_1C4F01CB8();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1C43F8000, v22, v23, "Can't fetch CNContacts as identifier is empty", v24, 2u);
      MEMORY[0x1C6942830](v24, -1, -1);
    }
  }

  return MEMORY[0x1E69E7CC0];
}

id sub_1C467EA4C(uint64_t a1)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_1C456902C(&unk_1EC0BABE0, &unk_1C4F16F20);
  v2 = sub_1C4F01658();

  v3 = [v1 initWithKeysToFetch_];

  return v3;
}

uint64_t sub_1C467EAD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1C456902C(&unk_1EC0B7610, &unk_1C4F17610);
  sub_1C43FBD18(v7);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FFF80();
  v9 = sub_1C456902C(&qword_1EC0C2A90, &unk_1C4F16D30);
  sub_1C43FBD18(v9);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - v11;
  _s24IntelligencePlatformCore5StagePAAE11entityClass0aB006EntityF0Vvg_0();
  v13 = type metadata accessor for CNContactDeltaSourceIngestor(0);
  *(a3 + v13[7]) = 2;
  *(a3 + v13[9]) = 9;
  v14 = v13[11];
  v15 = sub_1C4EFF1C8();
  sub_1C440BAA8(a3 + v14, 1, 1, v15);
  if (qword_1EDDFED28 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Source(0);
  sub_1C442B738(v16, &unk_1EDDFD088);
  sub_1C43FED58();
  sub_1C448C9D8();
  sub_1C441EB20();
  sub_1C448C9D8();
  *(a3 + v13[8]) = a2;
  v17 = [objc_allocWithZone(MEMORY[0x1E695CD80]) init];
  [v17 setStyle_];
  *(a3 + v13[10]) = v17;
  v18 = sub_1C4EF9E48();
  sub_1C440BAA8(v3, 1, 1, v18);
  sub_1C4EFF1A8();
  sub_1C4485354(a1, type metadata accessor for PhaseStores);
  sub_1C440BAA8(v12, 0, 1, v15);
  return sub_1C468282C();
}

uint64_t sub_1C467ED38()
{
  sub_1C43FBCD4();
  v1[14] = v0;
  v2 = sub_1C4EF98F8();
  sub_1C43FBD18(v2);
  v1[15] = sub_1C43FBE7C();
  v3 = type metadata accessor for CNContactDeltaSourceIngestor(0);
  v1[16] = v3;
  sub_1C43FBD18(v3);
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C467EE08, 0, 0);
}

uint64_t sub_1C467EE08()
{
  v152 = v0;
  sub_1C44C0EFC();
  sub_1C467BFD0(&v144);
  v1 = v145;
  if (v145 >> 60 == 15)
  {
    if (qword_1EDDFD028 != -1)
    {
LABEL_61:
      sub_1C4419274();
      swift_once();
    }

    v2 = sub_1C4440CF0();
    sub_1C442B738(v2, qword_1EDE2DE10);
    sub_1C442FC64();
    v3 = sub_1C4F00968();
    v4 = sub_1C4F01CD8();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = sub_1C43FD084();
      v6 = sub_1C43FFD34();
      v144 = v6;
      *v5 = 136315138;
      sub_1C4640838();
      sub_1C43FFF58();
      v7 = sub_1C4404044();
      v10 = sub_1C441D828(v7, v8, v9);

      *(v5 + 4) = v10;
      _os_log_impl(&dword_1C43F8000, v3, v4, "No token available for delta update: %s", v5, 0xCu);
      sub_1C440962C(v6);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    else
    {

      sub_1C43FFF58();
    }

    sub_1C46828B4();
    sub_1C441C114();
    swift_allocError();
    *v55 = 0;
    swift_willThrow();
    goto LABEL_56;
  }

  v11 = v144;
  v12 = [objc_allocWithZone(MEMORY[0x1E695CE18]) init];
  v13 = sub_1C43FD388();
  sub_1C44344B8(v13, v14);
  sub_1C43FD388();
  v15 = sub_1C467FAD8();
  v17 = v16;
  v19 = v18;
  v20 = sub_1C43FD388();
  sub_1C441DFEC(v20, v21);

  if (!v15)
  {
    if (qword_1EDDFD028 != -1)
    {
      sub_1C4419274();
      swift_once();
    }

    v56 = sub_1C4440CF0();
    sub_1C442B738(v56, qword_1EDE2DE10);
    sub_1C442FC64();
    v57 = sub_1C4F00968();
    v58 = sub_1C4F01CD8();
    if (sub_1C4417F98(v58))
    {
      v59 = sub_1C43FD084();
      v60 = sub_1C43FFD34();
      v144 = v60;
      *v59 = 136315138;
      v61 = sub_1C4640838();
      v63 = v62;
      sub_1C43FFF58();
      v64 = sub_1C441D828(v61, v63, &v144);

      *(v59 + 4) = v64;
      sub_1C445BF24(&dword_1C43F8000, v65, v66, "Unable to fetch changes for delta update: %s");
      sub_1C440962C(v60);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    else
    {

      sub_1C43FFF58();
    }

    v88 = sub_1C43FCE84();
    sub_1C44344B8(v88, v89);
    sub_1C43FCE84();
    sub_1C4646A88();
    v90 = sub_1C43FCE84();
    sub_1C441DFEC(v90, v91);
    v92 = sub_1C43FCE84();
    sub_1C441DFEC(v92, v93);
    goto LABEL_56;
  }

  v138 = v1;
  v22 = sub_1C4428DA0(v15);
  v137 = v19;
  if (!v22)
  {

    if (qword_1EDDFD028 != -1)
    {
      goto LABEL_63;
    }

    goto LABEL_36;
  }

  v23 = v22;
  v132 = v17;
  v133 = v11;
  v24 = 0;
  v134 = v0 + 16;
  v135 = (v0 + 104);
  v131 = (v0 + 168);
  v136 = (v0 + 96);
  *(v0 + 96) = 0;
  v142 = v15 & 0xC000000000000001;
  v143 = MEMORY[0x1E69E7CD0];
  v141 = v15 & 0xFFFFFFFFFFFFFF8;
  v140 = MEMORY[0x1E69E7CC0];
  do
  {
    if (v142)
    {
      v25 = MEMORY[0x1C6940F90](v24, v15);
    }

    else
    {
      if (v24 >= *(v141 + 16))
      {
        goto LABEL_60;
      }

      v25 = *(v15 + 8 * v24 + 32);
    }

    v11 = v25;
    v26 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      __break(1u);
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    v27 = objc_opt_self();
    v28 = sub_1C44512AC(v27);
    if (v28 || (v29 = objc_opt_self(), (v28 = sub_1C44512AC(v29)) != 0))
    {
      v30 = [v28 contact];
      v31 = [v30 identifier];
      v32 = sub_1C4F01138();
      v34 = v33;

      sub_1C44869B4(&v144, v32, v34, v35, v36, v37, v38, v39, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151);
LABEL_16:

      goto LABEL_17;
    }

    v40 = objc_opt_self();
    v41 = sub_1C44512AC(v40);
    if (v41)
    {
      v42 = v41;
      v43 = [v41 contactIdentifier];
      v44 = sub_1C4F01138();
      v139 = v45;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C443D664();
        v140 = v53;
      }

      v46 = *(v140 + 16);
      if (v46 >= *(v140 + 24) >> 1)
      {
        sub_1C443D664();
        v140 = v54;
      }

      *(v140 + 16) = v46 + 1;
      v47 = v140 + 16 * v46;
      *(v47 + 32) = v44;
      *(v47 + 40) = v139;
      v48 = [v42 contactIdentifier];
      v49 = sub_1C4F01138();
      v51 = v50;

      sub_1C4A7E078(v49, v51);

      goto LABEL_16;
    }

    v52 = objc_opt_self();
    if (sub_1C44512AC(v52))
    {

      *v135 = v24;

      if (qword_1EDDFD028 != -1)
      {
        sub_1C4419274();
        swift_once();
      }

      v122 = sub_1C4F00978();
      sub_1C43FCEE8(v122, qword_1EDE2DE10);
      v123 = sub_1C4F00968();
      v124 = sub_1C4F01CF8();
      if (sub_1C43FEB2C(v124))
      {
        v125 = swift_slowAlloc();
        *v125 = 0;
        _os_log_impl(&dword_1C43F8000, v123, v124, "<Received drop everything event. Going to throw>", v125, 2u);
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
      }

      v126 = *(v0 + 112);

      sub_1C468293C();
      sub_1C441C114();
      swift_allocError();
      *v127 = 0xD000000000000024;
      *(v127 + 8) = 0x80000001C4F8F5A0;
      *(v127 + 16) = 1;
      swift_willThrow();

      sub_1C467FE40(v126, v135, v136);
      v120 = v133;
      v121 = v138;
LABEL_55:
      sub_1C441DFEC(v120, v121);
      sub_1C4434000(v132, v137);
      goto LABEL_56;
    }

LABEL_17:
    ++v24;
  }

  while (v26 != v23);

  v67 = *(v140 + 16);
  *(v0 + 96) = v67;
  sub_1C46800C8();

  if (!__OFADD__(v23, v67))
  {
    v69 = *(v0 + 120);
    v68 = *(v0 + 128);
    v70 = *(v0 + 112);
    *(v0 + 104) = v23 + v67;
    v71 = sub_1C44FE820(v143);
    v72 = sub_1C467E55C(v71);

    *(v134 + 32) = 0;
    *v134 = 0u;
    *(v134 + 16) = 0u;
    v73 = [objc_allocWithZone(MEMORY[0x1E695CE90]) initWithContactStore_];
    *(v0 + 80) = sub_1C4461BB8(0, &qword_1EDDF05A8, 0x1E695CE90);
    *(v0 + 88) = &off_1F43E6920;
    *(v0 + 56) = v73;
    sub_1C468282C();
    sub_1C4461BB8(0, &qword_1EDDFCE78, 0x1E69789A8);
    v74 = [objc_opt_self() systemPhotoLibraryURL];
    sub_1C4EF98C8();

    v75 = sub_1C44B90E0(v69);
    *(v0 + 168) = 0;
    type metadata accessor for PhaseStores(0);
    v76 = swift_task_alloc();
    v76[2] = v72;
    v76[3] = v70;
    v76[4] = v136;
    v76[5] = v75;
    v76[6] = v134;
    v76[7] = v135;
    v76[8] = v131;
    GraphStore.tripleInsertingTransaction(transactionBody:)(sub_1C4682908, v76);

    if (*v131 != 1)
    {
      v113 = *(v0 + 112);
      sub_1C44344B8(v132, v137);
      sub_1C4404C28();
      sub_1C4646A88();

      v114 = sub_1C4404C28();
      sub_1C4434000(v114, v115);
      sub_1C4420C3C(v134, &unk_1EC0BABC0, qword_1C4F16ED8);
      sub_1C467FE40(v113, v135, v136);
      sub_1C441DFEC(v133, v138);
      v116 = sub_1C4404C28();
      sub_1C4434000(v116, v117);
      goto LABEL_56;
    }

    if (qword_1EDDFD028 != -1)
    {
      sub_1C4419274();
      swift_once();
    }

    v94 = sub_1C4440CF0();
    sub_1C442B738(v94, qword_1EDE2DE10);
    sub_1C442FC64();
    v95 = sub_1C4F00968();
    v96 = sub_1C4F01CD8();
    v97 = sub_1C4417F98(v96);
    v98 = *(v0 + 152);
    if (v97)
    {
      v99 = sub_1C43FD084();
      v100 = sub_1C43FFD34();
      v144 = v100;
      *v99 = 136315138;
      v101 = sub_1C4640838();
      v103 = v102;
      sub_1C43FFF58();
      sub_1C441D828(v101, v103, &v144);
      sub_1C4426A94();

      *(v99 + 4) = v98;
      _os_log_impl(&dword_1C43F8000, v95, v96, "Unable to commit deltas for : %s", v99, 0xCu);
      sub_1C440962C(v100);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      v104 = v138;
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();

      v105 = v134;
    }

    else
    {

      sub_1C43FFF58();
      v105 = v134;
      v104 = v138;
    }

    v118 = *(v0 + 112);
    sub_1C465B58C();
    sub_1C441C114();
    swift_allocError();
    *v119 = 1;
    swift_willThrow();

    sub_1C4420C3C(v105, &unk_1EC0BABC0, qword_1C4F16ED8);
    sub_1C467FE40(v118, v135, v136);
    v120 = v133;
    v121 = v104;
    goto LABEL_55;
  }

  __break(1u);
LABEL_63:
  sub_1C4419274();
  swift_once();
LABEL_36:
  v77 = sub_1C4440CF0();
  sub_1C442B738(v77, qword_1EDE2DE10);
  sub_1C442FC64();
  v78 = sub_1C4F00968();
  v79 = sub_1C4F01CD8();
  if (sub_1C4417F98(v79))
  {
    v80 = sub_1C43FD084();
    v81 = sub_1C43FFD34();
    v144 = v81;
    *v80 = 136315138;
    v82 = sub_1C4640838();
    v84 = v83;
    sub_1C43FFF58();
    v85 = sub_1C441D828(v82, v84, &v144);

    *(v80 + 4) = v85;
    sub_1C445BF24(&dword_1C43F8000, v86, v87, "No changes available for delta update: %s");
    sub_1C440962C(v81);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  else
  {

    sub_1C43FFF58();
  }

  v106 = sub_1C4424948();
  sub_1C44344B8(v106, v107);
  sub_1C4424948();
  sub_1C4646A88();
  v108 = sub_1C4424948();
  sub_1C4434000(v108, v109);
  sub_1C46828B4();
  sub_1C441C114();
  swift_allocError();
  *v110 = 1;
  swift_willThrow();
  v111 = sub_1C4424948();
  sub_1C4434000(v111, v112);
  sub_1C441DFEC(v11, v138);
LABEL_56:

  sub_1C43FBDA0();

  return v128();
}

uint64_t sub_1C467FAD8()
{
  sub_1C4404078();
  v28[1] = *MEMORY[0x1E69E9840];
  swift_getObjectType();
  v2 = sub_1C46819F0(v1, v0);
  v28[0] = 0;
  v3 = [v1 executeFetchRequest:v2 error:v28];
  if (!v3)
  {
    v8 = v28[0];
    v9 = sub_1C4EF97A8();

    swift_willThrow();
    if (qword_1EDDFD028 != -1)
    {
      sub_1C4419274();
      swift_once();
    }

    v10 = sub_1C4F00978();
    sub_1C43FCEE8(v10, qword_1EDE2DE10);
    v11 = v9;
    v12 = sub_1C4F00968();
    v13 = sub_1C4F01CD8();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = sub_1C43FD084();
      v15 = sub_1C43FFD34();
      v28[0] = v15;
      *v14 = 136315138;
      v16 = v9;
      sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
      v17 = sub_1C4F01198();
      v19 = sub_1C441D828(v17, v18, v28);

      *(v14 + 4) = v19;
      _os_log_impl(&dword_1C43F8000, v12, v13, "Can't fetch CNContact change due to: %s", v14, 0xCu);
      sub_1C440962C(v15);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830](v20);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830](v21);
    }

    else
    {
    }

    return 0;
  }

  v4 = v3;
  v5 = v28[0];
  v28[0] = [v4 value];
  sub_1C456902C(&qword_1EC0BAC18, &unk_1C4F16F50);
  if (!swift_dynamicCast())
  {
    if (qword_1EDDFD028 != -1)
    {
      sub_1C4419274();
      swift_once();
    }

    v22 = sub_1C4F00978();
    sub_1C43FCEE8(v22, qword_1EDE2DE10);
    v23 = sub_1C4F00968();
    v24 = sub_1C4F01CD8();
    if (sub_1C43FEB2C(v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1C43F8000, v23, v24, "Can't get CNContact change events from CNFetchResult", v25, 2u);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    return 0;
  }

  v6 = v27;
  v7 = [v4 currentHistoryToken];
  sub_1C4EF9A68();

  return v6;
}

uint64_t sub_1C467FE40(uint64_t a1, void *a2, void *a3)
{
  v5 = type metadata accessor for Pipeline.StatusStore(0);
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for CNContactDeltaSourceIngestor(0);
  sub_1C448C9D8();
  v8[*(v6 + 28)] = 1;
  Pipeline.StatusStore.currentSessionId()();
  sub_1C4485354(v8, type metadata accessor for Pipeline.StatusStore);
  sub_1C4F00288();
  sub_1C456902C(&qword_1EC0BA6C0, &unk_1C4F14600);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D480;
  *(inited + 32) = 0x496E6F6973736573;
  *(inited + 40) = 0xE900000000000064;
  v10 = sub_1C4F01108();

  *(inited + 48) = v10;
  *(inited + 56) = 0x614E656372756F73;
  *(inited + 64) = 0xEA0000000000656DLL;
  sub_1C4461BB8(0, &qword_1EDDFA440, 0x1E696AEC0);
  *(inited + 72) = sub_1C4F01EF8();
  *(inited + 80) = 0x756F436E656B6174;
  *(inited + 88) = 0xEA0000000000746ELL;
  *(inited + 96) = sub_1C4F01B58();
  strcpy((inited + 104), "droppedCount");
  *(inited + 117) = 0;
  *(inited + 118) = -5120;
  result = *a3 - *a2;
  if (__OFSUB__(*a3, *a2))
  {
    __break(1u);
  }

  else
  {
    *(inited + 120) = sub_1C4F01B58();
    sub_1C4461BB8(0, qword_1EDDFCDD0, 0x1E69E58C0);
    sub_1C4F00F28();
    sub_1C4F00268();
  }

  return result;
}

void sub_1C46800C8()
{
  sub_1C43FBD3C();
  v151 = v0;
  v144 = v2;
  v3 = sub_1C456902C(&unk_1EC0C07E0, &unk_1C4F168F0);
  sub_1C43FBD18(v3);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v126 - v5;
  v7 = sub_1C4EFDE18();
  sub_1C43FCE64();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBCC4();
  sub_1C4414998();
  v11 = sub_1C4EFDE68();
  v12 = sub_1C43FBD18(v11);
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBCC4();
  v139 = v14 - v13;
  v15 = sub_1C4EFDE88();
  sub_1C43FCE64();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  v135 = &v126 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FBF38();
  v133 = v21;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v22);
  sub_1C43FBF38();
  v134 = v23;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v24);
  sub_1C43FBF38();
  v132 = v25;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v26);
  sub_1C43FBF38();
  v131 = v27;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FBF38();
  v145 = v29;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v30);
  sub_1C43FBF38();
  v150 = v31;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v32);
  sub_1C43FBF38();
  v153 = v33;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v34);
  sub_1C43FBF38();
  v149 = v35;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v36);
  sub_1C43FBF38();
  v148 = v37;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v38);
  sub_1C43FBF38();
  v147 = v39;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v40);
  v146 = &v126 - v41;
  v138 = sub_1C4EFDE98();
  sub_1C43FCE64();
  v137 = v42;
  MEMORY[0x1EEE9AC00](v43);
  sub_1C43FBCC4();
  v136 = v45 - v44;
  if (qword_1EDDFD028 != -1)
  {
    sub_1C4419274();
    swift_once();
  }

  v46 = sub_1C4F00978();
  v152 = sub_1C442B738(v46, qword_1EDE2DE10);
  v47 = sub_1C4F00968();
  v48 = sub_1C4F01CF8();
  v49 = sub_1C43FEB2C(v48);
  v142 = v9;
  v143 = v15;
  v140 = v1;
  v141 = v17;
  if (v49)
  {
    v50 = sub_1C43FD084();
    v51 = sub_1C43FFD34();
    v156 = v51;
    *v50 = 136315138;
    v158 = type metadata accessor for CNContactDeltaSourceIngestor(0);
    sub_1C456902C(&qword_1EC0BA5B0, &unk_1C4F16F40);
    v52 = sub_1C4F01198();
    v54 = sub_1C441D828(v52, v53, &v156);

    *(v50 + 4) = v54;
    _os_log_impl(&dword_1C43F8000, v47, v48, "<%s deleting contacts>", v50, 0xCu);
    sub_1C440962C(v51);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  v55 = v144;
  v56 = *(v144 + 16);
  if (v56)
  {
    v129 = v7;
    v130 = v6;
    v158 = MEMORY[0x1E69E7CC0];
    sub_1C44CD9C0(0, v56, 0);
    v57 = v158;
    v58 = v55 + 40;
    do
    {
      v59 = qword_1EDDF7890;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if (v59 != -1)
      {
        swift_once();
      }

      v60 = type metadata accessor for SourceIdPrefix(0);
      v61 = sub_1C442B738(v60, qword_1EDDF7898);
      v63 = *v61;
      v62 = v61[1];
      v156 = v63;
      v157 = v62;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      MEMORY[0x1C6940010](58, 0xE100000000000000);
      v64 = sub_1C4404C28();
      MEMORY[0x1C6940010](v64);

      v65 = v156;
      v66 = v157;
      v158 = v57;
      v68 = *(v57 + 16);
      v67 = *(v57 + 24);
      if (v68 >= v67 >> 1)
      {
        sub_1C44CD9C0(v67 > 1, v68 + 1, 1);
        v57 = v158;
      }

      *(v57 + 16) = v68 + 1;
      v69 = v57 + 16 * v68;
      *(v69 + 32) = v65;
      *(v69 + 40) = v66;
      v58 += 16;
      --v56;
    }

    while (v56);
    v70 = sub_1C4499940();
    v71 = sub_1C4F00968();
    v72 = sub_1C4F01CC8();
    v73 = sub_1C43FEB2C(v72);
    v144 = v70;
    if (v73)
    {
      v74 = swift_slowAlloc();
      v156 = swift_slowAlloc();
      *v74 = 136315394;
      v158 = type metadata accessor for CNContactDeltaSourceIngestor(0);
      sub_1C456902C(&qword_1EC0BA5B0, &unk_1C4F16F40);
      v75 = sub_1C4F01198();
      v77 = sub_1C441D828(v75, v76, &v156);

      *(v74 + 4) = v77;
      *(v74 + 12) = 2080;
      v78 = sub_1C4F01AC8();
      v80 = sub_1C441D828(v78, v79, &v156);

      *(v74 + 14) = v80;
      _os_log_impl(&dword_1C43F8000, v71, v72, "<%s sourceIds:%s>", v74, 0x16u);
      swift_arrayDestroy();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    v81 = v151;
    v156 = MEMORY[0x1E69E7CC0];
    v158 = MEMORY[0x1E69E7CC0];
    v82 = type metadata accessor for CNContactDeltaSourceIngestor(0);
    v83 = &v81[*(v82 + 20)];
    v128 = *&v83[*(type metadata accessor for PhaseStores(0) + 24)];
    sub_1C456902C(&unk_1EC0BAC00, &unk_1C4F11680);
    v84 = type metadata accessor for Source(0);
    sub_1C43FCF7C(v84);
    v85 = swift_allocObject();
    *(v85 + 16) = xmmword_1C4F0D130;
    v126 = v82;
    sub_1C43FED58();
    sub_1C448C9D8();
    SourceSet.init(arrayLiteral:)(&v155, v85);
    v127 = v155;
    v86 = v141;
    v87 = *(v141 + 104);
    v88 = v146;
    v89 = v143;
    (v87)(v146, *MEMORY[0x1E69A95C0], v143);
    v90 = v147;
    sub_1C4401D54();
    v87();
    v91 = v148;
    sub_1C4401D54();
    v87();
    v92 = v149;
    sub_1C4401D54();
    v87();
    sub_1C4401D54();
    v87();
    sub_1C4401D54();
    v87();
    v93 = *(v86 + 16);
    v93(v145, v88, v89);
    v93(v131, v90, v89);
    v93(v132, v91, v89);
    v93(v134, v92, v89);
    v94 = v133;
    v93(v133, v153, v89);
    v95 = v135;
    v93(v135, v150, v89);
    LOBYTE(v125) = 0;
    v123 = v95;
    v124 = v127;
    v121[1] = v94;
    v122 = 0;
    v121[0] = 0;
    v96 = v140;
    sub_1C4EFDD38();
    (*(v142 + 104))(v96, *MEMORY[0x1E69A95A8], v129);
    sub_1C4EFDE28();
    v97 = v136;
    sub_1C4EFDEA8();
    v98 = *(v86 + 8);
    v99 = sub_1C4404044();
    v98(v99);
    (v98)(v153, v89);
    (v98)(v149, v89);
    (v98)(v148, v89);
    (v98)(v147, v89);
    (v98)(v146, v89);
    v100 = sub_1C4EFD678();
    v101 = v130;
    v102 = sub_1C440BAA8(v130, 1, 1, v100);
    MEMORY[0x1EEE9AC00](v102);
    v122 = v144;
    v123 = v151;
    v124 = &v156;
    v125 = &v158;
    sub_1C48687D0(v97, v101, sub_1C4682990, v121);

    sub_1C4420C3C(v101, &unk_1EC0C07E0, &unk_1C4F168F0);
    (*(v137 + 8))(v97, v138);
    v103 = v156;
    v104 = v158;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v105 = sub_1C4404C28();
    sub_1C4681710(v105, v106);

    v107 = sub_1C4F00968();
    v108 = sub_1C4F01CF8();
    if (sub_1C43FEB2C(v108))
    {
      v109 = sub_1C43FFD34();
      v110 = sub_1C43FFD34();
      *v109 = 136315650;
      v154 = v126;
      v155 = v110;
      sub_1C456902C(&qword_1EC0BA5B0, &unk_1C4F16F40);
      v111 = sub_1C4F01198();
      v113 = sub_1C441D828(v111, v112, &v155);

      *(v109 + 4) = v113;
      *(v109 + 12) = 2048;
      *(v109 + 14) = *(v103 + 16);
      *(v109 + 22) = 2048;
      *(v109 + 24) = *(v104 + 16);
      _os_log_impl(&dword_1C43F8000, v107, v108, "<%s Deleted. d:%ld, u:%ld>", v109, 0x20u);
      sub_1C440962C(v110);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }
  }

  else
  {
    v114 = sub_1C4F00968();
    v115 = sub_1C4F01CF8();
    if (os_log_type_enabled(v114, v115))
    {
      v116 = sub_1C43FD084();
      v117 = sub_1C43FFD34();
      v156 = v117;
      *v116 = 136315138;
      v158 = type metadata accessor for CNContactDeltaSourceIngestor(0);
      sub_1C456902C(&qword_1EC0BA5B0, &unk_1C4F16F40);
      v118 = sub_1C4F01198();
      v120 = sub_1C441D828(v118, v119, &v156);

      *(v116 + 4) = v120;
      _os_log_impl(&dword_1C43F8000, v114, v115, "<%s No contacts need to delete>", v116, 0xCu);
      sub_1C440962C(v117);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }
  }

  sub_1C43FE9F0();
}

void sub_1C4680DE8(void (*a1)(void)@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, void *a6@<X5>, uint64_t a7@<X6>, void *a8@<X7>, char *a9@<X8>, char *a10)
{
  v12 = v10;
  v51 = a8;
  v56 = a6;
  v57 = a7;
  v62 = a4;
  v54 = a1;
  v55 = a2;
  v50 = a9;
  v49 = a10;
  v53 = type metadata accessor for CNContactDeltaSourceIngestor(0);
  MEMORY[0x1EEE9AC00](v53);
  v47 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v48 = &v47 - v17;
  v18 = sub_1C4428DA0(a3);
  v19 = 0;
  v60 = a3 & 0xC000000000000001;
  v61 = v18;
  v58 = a3 & 0xFFFFFFFFFFFFFF8;
  v59 = a3;
  for (i = a5; ; a5 = i)
  {
    if (v61 == v19)
    {
      v33 = *v49;
      goto LABEL_21;
    }

    if (v60)
    {
      v20 = MEMORY[0x1C6940F90](v19, v59);
    }

    else
    {
      if (v19 >= *(v58 + 16))
      {
        goto LABEL_25;
      }

      v20 = *(v59 + 8 * v19 + 32);
    }

    v11 = v20;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (sub_1C4F01948())
    {
      if (qword_1EDDFD028 != -1)
      {
        goto LABEL_28;
      }

      goto LABEL_18;
    }

    v21 = *a5 + 1;
    if (__OFADD__(*a5, 1))
    {
      goto LABEL_26;
    }

    v63 = v19;
    *a5 = v21;
    v22 = v53;
    v23 = v53[5];
    v24 = v62;
    v25 = *(v62 + v53[8]);
    v26 = v11;
    v11 = *(v62 + v53[10]);
    v66 = 2;
    sub_1C44DDE2C();
    v27 = (v24 + v22[11]);
    v28 = v24 + v23;
    v29 = v23;
    sub_1C44C4CA8(v65, v28, v25, v11, 0, v56, &v66, v64, v54, v55, 0, 0, v27);
    if (v12)
    {
      sub_1C4420C3C(v64, &unk_1EC0BABC0, qword_1C4F16ED8);
      v65[0] = v12;
      v30 = v12;
      sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
      if (swift_dynamicCast())
      {

        v31 = v64[0];
        sub_1C465B58C();
        v11 = swift_allocError();
        *v32 = v31;
        v66 = 1;
        static Transformers.reportError(error:context:config:pipelineType:)(v11, 0x6361746E6F434E43, 0xE900000000000074, v62 + v29, &v66);

        v12 = 0;
        goto LABEL_14;
      }

      v33 = 1;
      LOBYTE(v65[0]) = 1;
      static Transformers.reportError(error:context:config:pipelineType:)(v12, 0x6361746E6F434E43, 0xE900000000000074, v62 + v23, v65);

      *v49 = 1;
LABEL_21:
      *v50 = v33;
      return;
    }

    sub_1C4420C3C(v64, &unk_1EC0BABC0, qword_1C4F16ED8);
    sub_1C440962C(v65);
    if (__OFADD__(*v51, 1))
    {
      goto LABEL_27;
    }

    ++*v51;
LABEL_14:
    v19 = v63 + 1;
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  swift_once();
LABEL_18:
  v34 = sub_1C4F00978();
  sub_1C442B738(v34, qword_1EDE2DE10);
  v35 = v48;
  sub_1C448C9D8();
  v36 = sub_1C4F00968();
  v37 = sub_1C4F01CF8();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v65[0] = v39;
    *v38 = 136315138;
    v40 = v11;
    v41 = v47;
    sub_1C448C9D8();
    sub_1C4485354(v35, type metadata accessor for CNContactDeltaSourceIngestor);
    v42 = sub_1C4640838();
    v44 = v43;
    v45 = v41;
    v11 = v40;
    sub_1C4485354(v45, type metadata accessor for CNContactDeltaSourceIngestor);
    v46 = sub_1C441D828(v42, v44, v65);

    *(v38 + 4) = v46;
    _os_log_impl(&dword_1C43F8000, v36, v37, "%s going to defer", v38, 0xCu);
    sub_1C440962C(v39);
    MEMORY[0x1C6942830](v39, -1, -1);
    MEMORY[0x1C6942830](v38, -1, -1);
  }

  else
  {
    sub_1C4485354(v35, type metadata accessor for CNContactDeltaSourceIngestor);
  }

  sub_1C4F01828();
  sub_1C46825D4(&qword_1EDDFCF00, MEMORY[0x1E69E8550], MEMORY[0x1E69E8558]);
  swift_allocError();
  sub_1C4F00EA8();
  swift_willThrow();
}

uint64_t sub_1C46813DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v28 = a4;
  v30 = a3;
  v8 = sub_1C456902C(&qword_1EC0BAC10, &unk_1C4F0F030);
  v29 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v27 - v9;
  v11 = type metadata accessor for GraphTriple(0);
  v27 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = (a1 + *(v14 + 44));
  v16 = *v15;
  v17 = v15[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v18 = objc_autoreleasePoolPush();
  v33 = v16;
  v34 = v17;
  v31 = 30;
  v32 = 0xE100000000000000;
  sub_1C4415EA8();
  sub_1C4F01FC8();

  objc_autoreleasePoolPop(v18);
  v19 = sub_1C4499940();
  v20 = sub_1C4A95434(a2, v19);
  if (v20[2])
  {
    v21 = type metadata accessor for CNContactDeltaSourceIngestor(0);
    sub_1C4B4AB30(v30 + *(v21 + 24), v20);

    if (*&v13[*(v11 + 36)])
    {
      sub_1C448C9D8();
      sub_1C448C9D8();
      sub_1C4588FA8();
      v22 = *(*a5 + 16);
      sub_1C4589B90();
      sub_1C4485354(v13, type metadata accessor for GraphTriple);
      v23 = *a5;
      *(v23 + 16) = v22 + 1;
      sub_1C46829D4(v10, v23 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v22);
    }

    else
    {
      v24 = v28;
      sub_1C4588D78();
      v25 = *(*v24 + 16);
      sub_1C4589968();
      sub_1C4485354(v13, type metadata accessor for GraphTriple);
      *(*v24 + 16) = v25 + 1;
      sub_1C448C9D8();
    }
  }

  else
  {
  }

  return 1;
}

uint64_t sub_1C4681710(uint64_t a1, uint64_t a2)
{
  v4 = a1;
  v3[2] = &v4;
  v3[3] = a2;

  sub_1C446C37C(sub_1C46829B8, v3);
}

uint64_t sub_1C4681780()
{
  sub_1C43FBCD4();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C4682A44;

  return sub_1C467ED38();
}

uint64_t sub_1C4681808()
{
  sub_1C4EFD548();
  sub_1C43FBCE0();
  v0 = sub_1C43FBC98();

  return v1(v0);
}

void sub_1C468190C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

uint64_t sub_1C4681968()
{
  sub_1C43FBCD4();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C44E2E7C;

  return sub_1C44C0680();
}

id sub_1C46819F0(uint64_t a1, unint64_t a2)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E695CD40]) init];
  if (a2 >> 60 == 15)
  {
    v4 = 0;
  }

  else
  {
    v4 = sub_1C4EF9A38();
  }

  [v3 setStartingToken_];

  [v3 setIncludeGroupChanges_];
  [v3 setShouldUnifyResults_];
  return v3;
}

void sub_1C4681AA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v66 = a3;
  v70 = type metadata accessor for ExpiredGraphTriple(0);
  MEMORY[0x1EEE9AC00](v70);
  v64 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v62 - v9;
  v63 = sub_1C456902C(&qword_1EC0BAC10, &unk_1C4F0F030);
  v65 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v62 = &v62 - v11;
  v12 = type metadata accessor for GraphTriple(0);
  v67 = *(v12 - 1);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = 0;
  v16 = *(a2 + 16);
  v68 = a2;
  v69 = v16;
  v71 = a1;
  while (v69 != v15)
  {
    v72 = v15;
    sub_1C448C9D8();
    v17 = sub_1C4EFF0C8();
    (*(*(v17 - 8) + 16))(v10, v14, v17);
    v18 = v12[5];
    v73 = v4;
    v19 = v70;
    v20 = *(v70 + 20);
    v21 = sub_1C4EFEEF8();
    v22 = *(*(v21 - 8) + 16);
    v22(&v10[v20], &v14[v18], v21);
    v23 = v12[6];
    v24 = v19[6];
    v25 = sub_1C4EFF8A8();
    (*(*(v25 - 8) + 16))(&v10[v24], &v14[v23], v25);
    v22(&v10[v19[7]], &v14[v12[7]], v21);
    v26 = &v14[v12[8]];
    v28 = *v26;
    v27 = *(v26 + 1);
    v29 = *&v14[v12[9]];
    v30 = v12[11];
    v31 = *&v14[v12[10]];
    v33 = *&v14[v30];
    v32 = *&v14[v30 + 8];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4EF9AE8();
    v34 = &v10[v19[8]];
    *v34 = v28;
    *(v34 + 1) = v27;
    *&v10[v19[9]] = v29;
    *&v10[v19[10]] = v31;
    v35 = &v10[v19[11]];
    *v35 = v33;
    *(v35 + 1) = v32;
    *&v10[v19[12]] = v36;
    sub_1C46825D4(&qword_1EDDF4F28, type metadata accessor for ExpiredGraphTriple, &protocol conformance descriptor for ExpiredGraphTriple);
    v37 = v73;
    sub_1C4EFB6C8();
    v4 = v37;
    sub_1C4485354(v10, type metadata accessor for ExpiredGraphTriple);
    if (v37)
    {
      sub_1C4485354(v14, type metadata accessor for GraphTriple);
      return;
    }

    v15 = v72 + 1;
    sub_1C46825D4(&qword_1EDDEBBC0, type metadata accessor for GraphTriple, &protocol conformance descriptor for GraphTriple);
    sub_1C4EFBA98();
    sub_1C4485354(v14, type metadata accessor for GraphTriple);
  }

  v38 = 0;
  v69 = *(v66 + 16);
  v39 = v62;
  while (v69 != v38)
  {
    sub_1C44DDE2C();
    sub_1C46825D4(&qword_1EDDEBBC0, type metadata accessor for GraphTriple, &protocol conformance descriptor for GraphTriple);
    sub_1C4EFBA98();
    if (v4 || (v72 = v38, v40 = sub_1C4EFF0C8(), v41 = v64, (*(*(v40 - 8) + 16))(v64, v39, v40), v42 = v12[5], v73 = 0, v43 = v70, v44 = *(v70 + 20), v45 = sub_1C4EFEEF8(), v46 = *(*(v45 - 8) + 16), v46(v41 + v44, v39 + v42, v45), v47 = v12[6], v48 = v43[6], v49 = sub_1C4EFF8A8(), (*(*(v49 - 8) + 16))(v41 + v48, v39 + v47, v49), v46(v41 + v43[7], v39 + v12[7], v45), v50 = (v39 + v12[8]), v51 = *v50, v52 = v50[1], v53 = *(v39 + v12[9]), v54 = v12[11], v55 = *(v39 + v12[10]), v57 = *(v39 + v54), v56 = *(v39 + v54 + 8), _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0(), _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0(), sub_1C4EF9AE8(), v58 = (v41 + v43[8]), *v58 = v51, v58[1] = v52, *(v41 + v43[9]) = v53, *(v41 + v43[10]) = v55, v59 = (v41 + v43[11]), *v59 = v57, v59[1] = v56, *(v41 + v43[12]) = v60, sub_1C46825D4(&qword_1EDDF4F28, type metadata accessor for ExpiredGraphTriple, &protocol conformance descriptor for ExpiredGraphTriple), v61 = v73, sub_1C4EFB6C8(), v4 = v61, sub_1C4485354(v41, type metadata accessor for ExpiredGraphTriple), v61))
    {
      sub_1C4420C3C(v39, &qword_1EC0BAC10, &unk_1C4F0F030);
      return;
    }

    sub_1C46825D4(&qword_1EDDEBBC8, type metadata accessor for GraphTriple, &protocol conformance descriptor for GraphTriple);
    sub_1C4EFB6C8();
    sub_1C4420C3C(v39, &qword_1EC0BAC10, &unk_1C4F0F030);
    v38 = v72 + 1;
  }
}

void sub_1C4682274(uint64_t a1)
{
  sub_1C4EFD548();
  if (v1 <= 0x3F)
  {
    type metadata accessor for PhaseStores(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Source(319);
      if (v3 <= 0x3F)
      {
        sub_1C4461BB8(319, &qword_1EDDF0548, 0x1E695CE18);
        if (v4 <= 0x3F)
        {
          sub_1C4461BB8(319, &qword_1EDDF0400, 0x1E695CD80);
          if (v5 <= 0x3F)
          {
            sub_1C4682388(319);
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

void sub_1C4682388(uint64_t a1)
{
  if (!qword_1EDDFA1A8)
  {
    sub_1C4EFF1C8();
    v1 = sub_1C4F01F48();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDDFA1A8);
    }
  }
}

void sub_1C4682408(uint64_t a1)
{
  type metadata accessor for PhaseStores(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Source(319);
    if (v2 <= 0x3F)
    {
      sub_1C4461BB8(319, &qword_1EDDF0548, 0x1E695CE18);
      if (v3 <= 0x3F)
      {
        sub_1C4EFD548();
        if (v4 <= 0x3F)
        {
          sub_1C4461BB8(319, &qword_1EDDF0400, 0x1E695CD80);
          if (v5 <= 0x3F)
          {
            sub_1C4682388(319);
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

uint64_t sub_1C4682524(uint64_t a1)
{
  result = sub_1C46825D4(qword_1EDDE0910, type metadata accessor for CNContactFullSourceIngestor, &unk_1C4F16D7C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C468257C(uint64_t a1)
{
  result = sub_1C46825D4(&qword_1EDDE08F0, type metadata accessor for CNContactFullSourceIngestor, &unk_1C4F16DA4);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C46825D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C468261C(uint64_t a1)
{
  result = sub_1C46825D4(&qword_1EDDE0908, type metadata accessor for CNContactFullSourceIngestor, &unk_1C4F16EA8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4682674(uint64_t a1)
{
  result = sub_1C46825D4(&qword_1EDDF22D0, type metadata accessor for CNContactDeltaSourceIngestor, &unk_1C4F16DF8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C46826CC(uint64_t a1)
{
  result = sub_1C46825D4(&unk_1EDDF22B0, type metadata accessor for CNContactDeltaSourceIngestor, &unk_1C4F16E20);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4682724(uint64_t a1)
{
  result = sub_1C46825D4(&qword_1EDDF22C8, type metadata accessor for CNContactDeltaSourceIngestor, &unk_1C4F16E80);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C468277C(uint64_t a1)
{
  result = sub_1C46825D4(&qword_1EDDF22C0, type metadata accessor for CNContactDeltaSourceIngestor, &unk_1C4F16E3C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C46827D4(uint64_t a1)
{
  result = sub_1C46825D4(&unk_1EDDE08F8, type metadata accessor for CNContactFullSourceIngestor, "\tfK/li\r");
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C468282C()
{
  sub_1C4404078();
  sub_1C456902C(v1, v2);
  sub_1C43FBCE0();
  v3 = sub_1C43FBC98();
  v4(v3);
  return v0;
}

unint64_t sub_1C46828B4()
{
  result = qword_1EDDF90F0;
  if (!qword_1EDDF90F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF90F0);
  }

  return result;
}

unint64_t sub_1C468293C()
{
  result = qword_1EDDE7178[0];
  if (!qword_1EDDE7178[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDE7178);
  }

  return result;
}

uint64_t sub_1C46829D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0BAC10, &unk_1C4F0F030);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t Publisher<>.scanReduce(compare:merge:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v73 = a3;
  v74 = a4;
  v70 = a1;
  v71 = a2;
  v65 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for PublisherScanReduceState(255, AssociatedTypeWitness, v8, v9);
  v58 = v10;
  v11 = sub_1C4F00AE8();
  WitnessTable = swift_getWitnessTable();
  v12 = sub_1C4F00AB8();
  v13 = sub_1C4F00AD8();
  v79 = swift_getWitnessTable();
  v64 = v13;
  v14 = sub_1C4F00AB8();
  v78 = swift_getWitnessTable();
  v77 = swift_getWitnessTable();
  v81 = v12;
  v82 = v14;
  v63 = v12;
  v66 = v14;
  v83 = v78;
  v84 = v77;
  v76 = sub_1C4F00AC8();
  sub_1C43FCE64();
  v80 = v15;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBC74();
  v69 = v17;
  sub_1C43FCE64();
  v67 = v18;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FBC74();
  v60 = v20;
  v72 = *(v14 - 8);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBC74();
  v62 = v22;
  v68 = *(v12 - 8);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v23);
  sub_1C43FBC74();
  v59 = v24;
  v25 = sub_1C4F01F48();
  MEMORY[0x1EEE9AC00](v25 - 8);
  v27 = &v57 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v57 - v29;
  v31 = *(v10 - 8);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v57 - v33;
  sub_1C43FCE64();
  v61 = v35;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v57 - v37;
  sub_1C440BAA8(v30, 1, 1, AssociatedTypeWitness);
  sub_1C440BAA8(v27, 1, 1, AssociatedTypeWitness);
  sub_1C4683164(v30, v27, AssociatedTypeWitness, v34);
  v39 = swift_allocObject();
  v40 = v65;
  v39[2] = v65;
  v39[3] = a6;
  v39[4] = v70;
  v41 = v73;
  v42 = v74;
  v39[5] = v71;
  v39[6] = v41;
  v39[7] = v42;

  v43 = v58;
  sub_1C4F00C88();

  (*(v31 + 8))(v34, v43);
  v44 = swift_allocObject();
  *(v44 + 16) = v40;
  *(v44 + 24) = a6;
  v45 = v59;
  sub_1C4F00C28();

  v46 = v60;
  sub_1C4F00C78();
  v47 = swift_allocObject();
  *(v47 + 16) = v40;
  *(v47 + 24) = a6;
  v48 = v62;
  v49 = v64;
  sub_1C4F00C28();

  (*(v67 + 8))(v46, v49);
  v50 = v69;
  v51 = v48;
  v52 = v63;
  v53 = v66;
  sub_1C4F00CC8();
  v54 = v76;
  swift_getWitnessTable();
  v55 = sub_1C4F00C18();
  (*(v80 + 8))(v50, v54);
  (*(v72 + 8))(v51, v53);
  (*(v68 + 8))(v45, v52);
  (*(v61 + 8))(v38, v11);
  return v55;
}

uint64_t sub_1C4683164@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1C4F01F48();
  v13 = *(*(v8 - 8) + 32);
  (v13)((v8 - 8), a4, a1, v8);
  v11 = a4 + *(type metadata accessor for PublisherScanReduceState(0, a3, v9, v10) + 28);

  return v13(v11, a2, v8);
}

uint64_t sub_1C468322C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(char *, uint64_t)@<X2>, uint64_t a4@<X3>, void (*a5)(char *, uint64_t)@<X4>, uint64_t a6@<X5>, uint64_t a9@<X8>)
{
  v33[1] = a6;
  v34 = a5;
  v35 = a4;
  v36 = a3;
  v37 = a9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = sub_1C4F01F48();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v33 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = v33 - v20;
  v22 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v23);
  v25 = v33 - v24;
  v28 = type metadata accessor for PublisherScanReduceState(0, AssociatedTypeWitness, v26, v27);
  (*(v13 + 16))(v21, a1 + *(v28 + 28), v12);
  if (sub_1C44157D4(v21, 1, AssociatedTypeWitness) == 1)
  {
    (*(v13 + 8))(v21, v12);
    v29 = v18;
    v30 = 1;
LABEL_6:
    sub_1C440BAA8(v29, v30, 1, AssociatedTypeWitness);
    (*(v22 + 16))(v15, a2, AssociatedTypeWitness);
    goto LABEL_7;
  }

  v31 = *(v22 + 32);
  v31(v25, v21, AssociatedTypeWitness);
  if ((v36(v25, a2) & 1) == 0)
  {
    v31(v18, v25, AssociatedTypeWitness);
    v29 = v18;
    v30 = 0;
    goto LABEL_6;
  }

  sub_1C440BAA8(v18, 1, 1, AssociatedTypeWitness);
  v34(v25, a2);
  (*(v22 + 8))(v25, AssociatedTypeWitness);
LABEL_7:
  sub_1C440BAA8(v15, 0, 1, AssociatedTypeWitness);
  return sub_1C4683164(v18, v15, AssociatedTypeWitness, v37);
}

uint64_t sub_1C4683538@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  swift_getAssociatedTypeWitness();
  v6 = sub_1C4F01F48();
  v7 = *(*(v6 - 8) + 16);

  return v7(a4, a1, v6);
}

uint64_t sub_1C46835D4@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(type metadata accessor for PublisherScanReduceState(0, AssociatedTypeWitness, v7, v8) + 28);
  v10 = sub_1C4F01F48();
  v11 = *(*(v10 - 8) + 16);

  return v11(a4, a1 + v9, v10);
}

uint64_t Publisher<>.bufferAndSort(by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[1] = a1;
  v17[2] = a2;
  swift_getAssociatedTypeWitness();
  v6 = sub_1C4F017A8();
  v17[0] = swift_getWitnessTable();
  v18 = v6;
  v19 = MEMORY[0x1E69E73E0];
  v20 = v17[0];
  v21 = MEMORY[0x1E69E7410];
  v7 = sub_1C4F00AF8();
  sub_1C43FCE64();
  v9 = v8;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v17 - v11;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1C4F01718();
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = v13;

  sub_1C4F00D28();

  swift_beginAccess();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C4F01098();
  swift_endAccess();
  v18 = *(v13 + 16);
  sub_1C4F014C8();
  swift_getWitnessTable();
  v15 = sub_1C4F00C18();
  (*(v9 + 8))(v12, v7);

  return v15;
}

uint64_t sub_1C4683918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  (*(v8 + 16))(&v10 - v7, a1, AssociatedTypeWitness, v6);
  swift_beginAccess();
  sub_1C4F017A8();
  sub_1C4F01768();
  return swift_endAccess();
}

uint64_t sub_1C4683A38(uint64_t a1)
{
  result = sub_1C4F01F48();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C4683AA8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = v6 - 1;
  if (v6)
  {
    v8 = *(v5 + 64);
  }

  else
  {
    v7 = 0;
    v8 = *(v5 + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v7;
  if (a2 > v7)
  {
    v10 = ((v8 + *(v5 + 80)) & ~*(v5 + 80)) + v8;
    v11 = 8 * v10;
    if (v10 > 3)
    {
      goto LABEL_7;
    }

    v13 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v13))
    {
      v12 = *(a1 + v10);
      if (v12)
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v13 <= 0xFF)
      {
        if (v13 < 2)
        {
          goto LABEL_22;
        }

LABEL_7:
        v12 = *(a1 + v10);
        if (!*(a1 + v10))
        {
          goto LABEL_22;
        }

LABEL_14:
        v14 = (v12 - 1) << v11;
        if (v10 > 3)
        {
          v14 = 0;
        }

        if (v10)
        {
          if (v10 > 3)
          {
            LODWORD(v10) = 4;
          }

          switch(v10)
          {
            case 2:
              LODWORD(v10) = *a1;
              break;
            case 3:
              LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
              break;
            case 4:
              LODWORD(v10) = *a1;
              break;
            default:
              LODWORD(v10) = *a1;
              break;
          }
        }

        return v7 + (v10 | v14) + 1;
      }

      v12 = *(a1 + v10);
      if (*(a1 + v10))
      {
        goto LABEL_14;
      }
    }
  }

LABEL_22:
  if (v6 < 2)
  {
    return 0;
  }

  v16 = sub_1C44157D4(a1, v6, v4);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

void sub_1C4683C30(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = v9 - 1;
  if (!v9)
  {
    v10 = 0;
  }

  v11 = *(*(v7 - 8) + 64);
  if (!v9)
  {
    ++v11;
  }

  v12 = ((v11 + *(v8 + 80)) & ~*(v8 + 80)) + v11;
  v13 = 8 * v12;
  v14 = a3 >= v10;
  v15 = a3 - v10;
  if (v15 != 0 && v14)
  {
    if (v12 <= 3)
    {
      v16 = ((v15 + ~(-1 << v13)) >> v13) + 1;
      if (HIWORD(v16))
      {
        v6 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v6 = v17;
        }

        else
        {
          v6 = 0;
        }
      }
    }

    else
    {
      v6 = 1;
    }
  }

  if (v10 >= a2)
  {
    switch(v6)
    {
      case 1:
        a1[v12] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 2:
        *&a1[v12] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *&a1[v12] = 0;
        goto LABEL_28;
      default:
LABEL_28:
        if (a2)
        {
LABEL_29:
          if (v9 >= 2)
          {
            v21 = a2 + 1;

            sub_1C440BAA8(a1, v21, v9, v7);
          }
        }

        break;
    }
  }

  else
  {
    v18 = ~v10 + a2;
    if (v12 < 4)
    {
      v19 = (v18 >> v13) + 1;
      if (v12)
      {
        v20 = v18 & ~(-1 << v13);
        bzero(a1, v12);
        if (v12 == 3)
        {
          *a1 = v20;
          a1[2] = BYTE2(v20);
        }

        else if (v12 == 2)
        {
          *a1 = v20;
        }

        else
        {
          *a1 = v18;
        }
      }
    }

    else
    {
      bzero(a1, v12);
      *a1 = v18;
      v19 = 1;
    }

    switch(v6)
    {
      case 1:
        a1[v12] = v19;
        break;
      case 2:
        *&a1[v12] = v19;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *&a1[v12] = v19;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1C4684054()
{
  result = sub_1C4684084();
  if (!v0)
  {
    return sub_1C4DDF824(result);
  }

  return result;
}

uint64_t sub_1C46841C4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
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

uint64_t sub_1C4684204(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C468425C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[20] = a4;
  v5[21] = v4;
  v5[18] = a2;
  v5[19] = a3;
  v5[17] = a1;
  sub_1C456902C(&qword_1EC0BACB8, &qword_1C4F17038);
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  v5[25] = type metadata accessor for LOIBasedSemanticLocationSegment(0);
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();
  v5[28] = swift_task_alloc();
  v6 = sub_1C4F00978();
  v5[29] = v6;
  v5[30] = *(v6 - 8);
  v5[31] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C46843BC, 0, 0);
}

uint64_t sub_1C46843BC(uint64_t a1)
{
  sub_1C4F00198();
  v2 = sub_1C4F00968();
  v3 = sub_1C4F01CF8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1C43F8000, v2, v3, "Running commute inference model", v4, 2u);
    MEMORY[0x1C6942830](v4, -1, -1);
  }

  v6 = v1[30];
  v5 = v1[31];
  v7 = v1[29];
  v8 = v1[18];

  (*(v6 + 8))(v5, v7);
  sub_1C442E860(v8, (v1 + 2));
  sub_1C456902C(&qword_1EC0B9798, &unk_1C4F17040);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v31 = v1[24];
    v32 = sub_1C440A564();
LABEL_15:
    sub_1C440BAA8(v32, v33, v34, v35);
    sub_1C46849A4(v31);
LABEL_16:
    type metadata accessor for InferredActivitySegment(0);
    v39 = sub_1C440A564();
    sub_1C440BAA8(v39, v40, v41, v42);
    goto LABEL_17;
  }

  v9 = v1[28];
  v10 = v1[24];
  v11 = v1[19];
  sub_1C4406954(v10);
  sub_1C4684A0C(v10, v9);
  v12 = sub_1C442E860(v11, (v1 + 7));
  if ((sub_1C44041E8(v12, (v1 + 7)) & 1) == 0)
  {
    v36 = v1[25];
    v31 = v1[23];
    sub_1C4684A70(v1[28]);
    v32 = sub_1C440A564();
    v35 = v36;
    goto LABEL_15;
  }

  v13 = v1[27];
  v14 = v1[23];
  v15 = v1[20];
  sub_1C4406954(v14);
  sub_1C4684A0C(v14, v13);
  v16 = sub_1C442E860(v15, (v1 + 12));
  if ((sub_1C44041E8(v16, (v1 + 12)) & 1) == 0)
  {
    v37 = v1[28];
    v38 = v1[25];
    v31 = v1[22];
    sub_1C4684A70(v1[27]);
    sub_1C4684A70(v37);
    v32 = sub_1C440A564();
    v35 = v38;
    goto LABEL_15;
  }

  v17 = v1[26];
  v18 = v1[27];
  v19 = v1[25];
  v20 = v1[22];
  sub_1C4406954(v20);
  sub_1C4684A0C(v20, v17);
  if (*(v18 + *(v19 + 24)) || (v21 = v1[27], v22 = v1[21], v23 = *(v1[25] + 20), sub_1C4EF9B78(), v24 >= *(v22 + 16)))
  {
    v45 = v1[27];
    v28 = v1[28];
    sub_1C4684A70(v1[26]);
    v27 = v45;
LABEL_21:
    sub_1C4684A70(v27);
LABEL_22:
    sub_1C4684A70(v28);
    goto LABEL_16;
  }

  v25 = v1[28];
  v26 = *(v25 + *(v19 + 24));
  sub_1C4684A70(v25);
  v27 = v1[26];
  if (v26 == 2)
  {
    v46 = *(v27 + *(v19 + 24));
    sub_1C4684A70(v27);
    v28 = v1[27];
    if (v46 == 1)
    {
      v29 = v1[21];
      v30 = v1[17];
      goto LABEL_26;
    }

    goto LABEL_22;
  }

  if (v26 != 1 || *(v27 + *(v19 + 24)) != 2)
  {
    v28 = v1[27];
    goto LABEL_21;
  }

  v28 = v1[27];
  v29 = v1[21];
  v30 = v1[17];
  sub_1C4684A70(v27);
LABEL_26:
  v47 = sub_1C4EF9CD8();
  v48 = *(*(v47 - 8) + 16);
  v48(v30, v28, v47);
  v49 = type metadata accessor for InferredActivitySegment(0);
  v48(v30 + v49[5], v21 + v23, v47);
  sub_1C4684A70(v28);
  v50 = *(v29 + 8);
  v51 = *(v29 + 24);
  v52 = *(v29 + 32);
  *(v30 + v49[6]) = *v29;
  *(v30 + v49[7]) = v50;
  v53 = (v30 + v49[8]);
  *v53 = v51;
  v53[1] = v52;
  sub_1C440BAA8(v30, 0, 1, v49);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
LABEL_17:

  v43 = v1[1];

  return v43();
}

uint64_t sub_1C46847DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(v4 + 16);
  *(v5 + 16) = *v4;
  *(v5 + 32) = v10;
  *(v5 + 48) = *(v4 + 32);
  v11 = swift_task_alloc();
  *(v5 + 56) = v11;
  *v11 = v5;
  v11[1] = sub_1C46848B0;

  return sub_1C468425C(a1, a2, a3, a4);
}

uint64_t sub_1C46848B0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1C46849A4(uint64_t a1)
{
  v2 = sub_1C456902C(&qword_1EC0BACB8, &qword_1C4F17038);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C4684A0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LOIBasedSemanticLocationSegment(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4684A70(uint64_t a1)
{
  v2 = type metadata accessor for LOIBasedSemanticLocationSegment(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for CommuteInference(uint64_t a1)
{
  result = qword_1EDDE7208;
  if (!qword_1EDDE7208)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4684B40(uint64_t a1)
{
  result = sub_1C4EFF0C8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C4684BDC()
{
  sub_1C43FD394();
  switch(v2)
  {
    case 1:
      v0 = 0xE400000000000000;
      break;
    case 2:
      v0 = 0xE500000000000000;
      break;
    case 3:
      v0 = 0xEA0000000000676ELL;
      break;
    default:
      break;
  }

  sub_1C440D22C();
  switch(v6)
  {
    case 1:
      v1 = 0xE400000000000000;
      v5 = 1819047270;
      break;
    case 2:
      v1 = 0xE500000000000000;
      v5 = 0x61746C6564;
      break;
    case 3:
      v5 = 0x69686374614D6F74;
      v1 = 0xEA0000000000676ELL;
      break;
    default:
      break;
  }

  if (v3 == v5 && v0 == v1)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1C43FFF90(v3, v4, v5);
  }

  return v8 & 1;
}

uint64_t sub_1C4684CF4(uint64_t a1, uint64_t a2)
{
  sub_1C4F01138();
  sub_1C447EFD0();
  sub_1C4F01138();
  sub_1C445E7C4();
  v6 = v6 && v2 == v5;
  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1C43FFF90(v3, v5, v4);
  }

  return v7 & 1;
}

uint64_t sub_1C4684D64()
{
  sub_1C441C1B4();
  switch(v2)
  {
    case 1:
      v0 = 0xEE006E6F69746172;
      break;
    case 4:
      v0 = 0xEA00000000006E6FLL;
      break;
    case 5:
      v0 = 0xE700000000000000;
      break;
    default:
      break;
  }

  sub_1C4424FF4();
  switch(v6)
  {
    case 1:
      v5 = 0x656E654772696170;
      v1 = 0xEE006E6F69746172;
      break;
    case 2:
      v7 = 0x69686374616DLL;
      goto LABEL_10;
    case 3:
      v7 = 0x697075646564;
LABEL_10:
      v5 = v7 & 0xFFFFFFFFFFFFLL | 0x676E000000000000;
      break;
    case 4:
      v5 = 0x6974756C6F736572;
      v1 = 0xEA00000000006E6FLL;
      break;
    case 5:
      v1 = 0xE700000000000000;
      v5 = 0x6C6172656E6567;
      break;
    default:
      break;
  }

  if (v3 == v5 && v0 == v1)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1C43FFF90(v3, v4, v5);
  }

  return v9 & 1;
}

uint64_t sub_1C4684F1C(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xE900000000000065;
  v3 = 0x6D614E656C626174;
  v4 = a1;
  v5 = 0x6D614E656C626174;
  v6 = 0xE900000000000065;
  switch(v4)
  {
    case 1:
      v6 = 0xE500000000000000;
      v5 = 0x7972657571;
      break;
    case 2:
      v6 = 0x80000001C4F86390;
      v5 = 0xD00000000000001DLL;
      break;
    case 3:
      v6 = 0x80000001C4F863B0;
      v5 = 0xD000000000000020;
      break;
    case 4:
      v6 = 0x80000001C4F863E0;
      v5 = 0xD000000000000015;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v2 = 0xE500000000000000;
      v3 = 0x7972657571;
      break;
    case 2:
      v2 = 0x80000001C4F86390;
      v3 = 0xD00000000000001DLL;
      break;
    case 3:
      v2 = 0x80000001C4F863B0;
      v3 = 0xD000000000000020;
      break;
    case 4:
      v2 = 0x80000001C4F863E0;
      v3 = 0xD000000000000015;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1C43FED70(v5, a2, v3);
  }

  return v8 & 1;
}

uint64_t sub_1C4685084()
{
  sub_1C441C1B4();
  switch(v2)
  {
    case 1:
      v0 = 0x80000001C4F861E0;
      break;
    case 2:
      v0 = 0xE900000000000074;
      break;
    case 3:
      v0 = 0x80000001C4F86200;
      break;
    case 4:
      sub_1C4416008();
      break;
    case 5:
      v0 = 0xED0000687361486FLL;
      break;
    case 6:
      v0 = 0xEC00000068736148;
      break;
    default:
      break;
  }

  sub_1C4424FF4();
  switch(v7)
  {
    case 1:
      sub_1C442DE20();
      v1 = v8 | 0x8000000000000000;
      break;
    case 2:
      v5 = 0x6E65764569466957;
      v1 = 0xE900000000000074;
      break;
    case 3:
      v1 = (v6 - 32) | 0x8000000000000000;
      v5 = 0xD000000000000015;
      break;
    case 4:
      sub_1C440E008();
      break;
    case 5:
      v5 = 0x6547657372616F43;
      v1 = 0xED0000687361486FLL;
      break;
    case 6:
      v5 = 0x6F6547656772614CLL;
      v1 = 0xEC00000068736148;
      break;
    default:
      break;
  }

  if (v3 == v5 && v0 == v1)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1C43FFF90(v3, v4, v5);
  }

  return v10 & 1;
}

uint64_t sub_1C4685280()
{
  v1 = sub_1C4433C18();
  switch(v3)
  {
    case 1:
      v0 = 0xE400000000000000;
      v1 = 1701667182;
      break;
    case 2:
      v0 = 0xE700000000000000;
      v1 = 0x6E6F6973726576;
      break;
    case 3:
      v0 = 0xE400000000000000;
      v1 = 1701869940;
      break;
    case 4:
      v1 = 0x4665727574616566;
      v0 = 0xEB0000000067616CLL;
      break;
    default:
      break;
  }

  v4 = 0xE200000000000000;
  v5 = 25705;
  switch(v2)
  {
    case 1:
      v4 = 0xE400000000000000;
      v5 = 1701667182;
      break;
    case 2:
      v4 = 0xE700000000000000;
      v5 = 0x6E6F6973726576;
      break;
    case 3:
      v4 = 0xE400000000000000;
      v5 = 1701869940;
      break;
    case 4:
      v5 = 0x4665727574616566;
      v4 = 0xEB0000000067616CLL;
      break;
    default:
      break;
  }

  if (v1 == v5 && v0 == v4)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1C43FFF90(v1, v2, v5);
  }

  return v7 & 1;
}

uint64_t sub_1C46853CC()
{
  sub_1C4433254();
  switch(v2)
  {
    case 2:
      sub_1C441F674();
      break;
    case 3:
      sub_1C4406970();
      break;
    case 4:
      sub_1C440878C(21);
      break;
    case 5:
      sub_1C440DFF4();
      break;
    case 6:
      sub_1C442FC94();
      v0 = 0xEA00000000006563;
      break;
    default:
      break;
  }

  sub_1C440D22C();
  switch(v6)
  {
    case 1:
      v5 = 0x7463656A627573;
      break;
    case 2:
      sub_1C442C65C();
      break;
    case 3:
      sub_1C4419330();
      break;
    case 4:
      sub_1C44119D0();
      break;
    case 5:
      sub_1C4416F20();
      break;
    case 6:
      sub_1C4425A2C();
      v1 = 0xEA00000000006563;
      break;
    default:
      break;
  }

  if (v3 == v5 && v0 == v1)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1C43FFF90(v3, v4, v5);
  }

  return v8 & 1;
}

uint64_t sub_1C468550C(unsigned __int8 a1, uint64_t a2)
{
  v2 = 1162690894;
  v3 = 0xE400000000000000;
  v4 = a1;
  v5 = 1162690894;
  switch(v4)
  {
    case 1:
      v3 = 0xE800000000000000;
      v5 = 0x4E4F4954414C4552;
      break;
    case 2:
      v5 = 0x54444554414C4552;
      v3 = 0xE90000000000004FLL;
      break;
    case 3:
      v5 = 0x5049434954524150;
      v3 = 0xEF454D414E544E41;
      break;
    default:
      break;
  }

  v6 = 0xE400000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE800000000000000;
      v2 = 0x4E4F4954414C4552;
      break;
    case 2:
      v2 = 0x54444554414C4552;
      v6 = 0xE90000000000004FLL;
      break;
    case 3:
      v2 = 0x5049434954524150;
      v6 = 0xEF454D414E544E41;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1C43FFF90(v5, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_1C4685668()
{
  sub_1C44320D4();
  switch(v2)
  {
    case 1:
      sub_1C441F674();
      break;
    case 2:
      sub_1C4406970();
      break;
    case 3:
      sub_1C440878C(21);
      break;
    case 4:
      sub_1C440DFF4();
      break;
    case 5:
      v0 = 0xEC000000706D6174;
      break;
    case 6:
      sub_1C43FC144();
      v0 = 0xE900000000000070;
      break;
    default:
      break;
  }

  sub_1C440D22C();
  switch(v6)
  {
    case 1:
      sub_1C442C65C();
      break;
    case 2:
      sub_1C4419330();
      break;
    case 3:
      sub_1C44119D0();
      break;
    case 4:
      sub_1C4416F20();
      break;
    case 5:
      v5 = 0x73656D69546C7474;
      v1 = 0xEC000000706D6174;
      break;
    case 6:
      sub_1C440A844();
      break;
    case 7:
      v5 = 0x73746E65696C63;
      break;
    default:
      break;
  }

  if (v3 == v5 && v0 == v1)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1C43FFF90(v3, v4, v5);
  }

  return v8 & 1;
}

uint64_t sub_1C46857D4(char a1)
{
  if (a1)
  {
    v1 = 0xE700000000000000;
  }

  else
  {
    v1 = 0xE900000000000065;
  }

  sub_1C442BA28();
  if (v8)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v2 == v4 && v1 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1C43FFF90(v2, v3, v4);
  }

  return v9 & 1;
}

uint64_t sub_1C4685868()
{
  v1 = sub_1C4433C18();
  switch(v3)
  {
    case 1:
      v1 = 0x7974697669746361;
      v0 = 0xED0000746E657645;
      break;
    case 2:
      v1 = 0x6E6F697461636F6CLL;
      v0 = 0xE900000000000073;
      break;
    case 3:
      sub_1C440F44C();
      sub_1C440C400();
      break;
    default:
      break;
  }

  v4 = 0xE200000000000000;
  v5 = 25705;
  switch(v2)
  {
    case 1:
      sub_1C440BC08();
      v4 = 0xED0000746E657645;
      break;
    case 2:
      v5 = 0x6E6F697461636F6CLL;
      v4 = 0xE900000000000073;
      break;
    case 3:
      sub_1C4412EA0();
      sub_1C441591C();
      break;
    default:
      break;
  }

  if (v1 == v5 && v0 == v4)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1C43FFF90(v1, v2, v5);
  }

  return v7 & 1;
}

uint64_t sub_1C4685998(char a1)
{
  v2 = 0xE600000000000000;
  switch(a1)
  {
    case 1:
      v2 = 0xE500000000000000;
      break;
    case 2:
      v2 = 0xEB00000000746E65;
      break;
    case 3:
      v2 = 0xEA0000000000646CLL;
      break;
    case 4:
      v2 = 0xE700000000000000;
      break;
    case 7:
      v2 = 0xE700000000000000;
      break;
    case 8:
      v2 = 0xE900000000000074;
      break;
    case 9:
      v2 = 0xE700000000000000;
      break;
    case 10:
      v2 = 0xE500000000000000;
      break;
    default:
      break;
  }

  sub_1C441022C();
  switch(v6)
  {
    case 1:
      v1 = 0xE500000000000000;
      v5 = 0x646C696863;
      break;
    case 2:
      v5 = 0x726170646E617267;
      v1 = 0xEB00000000746E65;
      break;
    case 3:
      v5 = 0x696863646E617267;
      v1 = 0xEA0000000000646CLL;
      break;
    case 4:
      v1 = 0xE700000000000000;
      sub_1C4440FD8();
      break;
    case 5:
      v5 = 0x646E65697266;
      break;
    case 6:
      v5 = 0x6573756F7073;
      break;
    case 7:
      v1 = 0xE700000000000000;
      v7 = 0x656E74726170;
      goto LABEL_18;
    case 8:
      v5 = 0x6E61747369737361;
      v1 = 0xE900000000000074;
      break;
    case 9:
      v1 = 0xE700000000000000;
      v7 = 0x6567616E616DLL;
LABEL_18:
      v5 = v7 & 0xFFFFFFFFFFFFLL | 0x72000000000000;
      break;
    case 10:
      v1 = 0xE500000000000000;
      v5 = 0x726568746FLL;
      break;
    default:
      break;
  }

  if (v3 == v5 && v2 == v1)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1C43FFF90(v3, v4, v5);
  }

  return v9 & 1;
}

uint64_t sub_1C4685C04(char a1)
{
  if (a1)
  {
    v1 = 0xE500000000000000;
  }

  else
  {
    v1 = 0xE400000000000000;
  }

  sub_1C442BA28();
  if (v8)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v2 == v4 && v1 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1C43FFF90(v2, v3, v4);
  }

  return v9 & 1;
}

uint64_t sub_1C4685C88(unsigned __int8 a1, uint64_t a2)
{
  v2 = 7173491;
  v3 = 0xE300000000000000;
  v4 = a1;
  v5 = 7173491;
  switch(v4)
  {
    case 1:
      v5 = 6780513;
      break;
    case 2:
      v3 = 0xE500000000000000;
      v5 = 0x746E756F63;
      break;
    case 3:
      v5 = 0x756F635F71696E75;
      v3 = 0xEA0000000000746ELL;
      break;
    default:
      break;
  }

  v6 = 0xE300000000000000;
  switch(a2)
  {
    case 1:
      v2 = 6780513;
      break;
    case 2:
      v6 = 0xE500000000000000;
      v2 = 0x746E756F63;
      break;
    case 3:
      v2 = 0x756F635F71696E75;
      v6 = 0xEA0000000000746ELL;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1C43FFF90(v5, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_1C4685DAC(char a1)
{
  v2 = 0xE600000000000000;
  switch(a1)
  {
    case 1:
      v2 = 0xE700000000000000;
      break;
    case 3:
      v2 = 0xE800000000000000;
      break;
    case 4:
      v2 = 0xE400000000000000;
      break;
    default:
      break;
  }

  sub_1C441022C();
  switch(v6)
  {
    case 1:
      v1 = 0xE700000000000000;
      v5 = 0x72656765746E69;
      break;
    case 2:
      v5 = 0x656C62756F64;
      break;
    case 3:
      v1 = 0xE800000000000000;
      v5 = 0x6E6F697461727564;
      break;
    case 4:
      v1 = 0xE400000000000000;
      v5 = 1702125924;
      break;
    default:
      break;
  }

  if (v3 == v5 && v2 == v1)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1C43FFF90(v3, v4, v5);
  }

  return v8 & 1;
}

uint64_t sub_1C4685F0C(char a1)
{
  if (a1)
  {
    v1 = 0xEC0000006E6F7372;
  }

  else
  {
    v1 = 0xE600000000000000;
  }

  sub_1C442BA28();
  if (v8)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v2 == v4 && v1 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1C43FFF90(v2, v3, v4);
  }

  return v9 & 1;
}