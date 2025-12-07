uint64_t sub_1B2185740(void *a1, uint64_t *a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1B218578C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 0;
  }

  if (sub_1B22531F0())
  {
    return -1;
  }

  return (sub_1B22531F0() & 1) == 0;
}

uint64_t sub_1B2185948()
{
  sub_1B2112904();
  v16[0] = v0;
  v14 = v1;
  v15 = v2;
  sub_1B212FF14(v13);
  sub_1B211562C();
  sub_1B211194C();
  v4 = v3();
  sub_1B2115014(v4, v5, v6, v7, v8, v9, v10, v11, v13[0], v13[1], v13[2], v14, v15);
  sub_1B2113208(v13);
  return sub_1B212AC5C(v16, &qword_1EB7A0E30, &unk_1B2259360);
}

uint64_t sub_1B21859D4()
{
  sub_1B2112904();
  v16[0] = v0;
  v14 = v1;
  v15 = v2;
  sub_1B212FF14(v13);
  sub_1B211562C();
  sub_1B211194C();
  v4 = v3();
  sub_1B2115014(v4, v5, v6, v7, v8, v9, v10, v11, v13[0], v13[1], v13[2], v14, v15);
  sub_1B2113208(v13);
  return sub_1B212AC5C(v16, &qword_1EB7A0E30, &unk_1B2259360);
}

uint64_t sub_1B2185A60()
{
  sub_1B2112904();
  v16[0] = v0;
  v14 = v1;
  v15 = v2;
  sub_1B212FF14(v13);
  sub_1B211562C();
  sub_1B211194C();
  v4 = v3();
  sub_1B2115014(v4, v5, v6, v7, v8, v9, v10, v11, v13[0], v13[1], v13[2], v14, v15);
  sub_1B2113208(v13);
  return sub_1B212AC5C(v16, &qword_1EB7A0E30, &unk_1B2259360);
}

uint64_t sub_1B2185AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  v10[3] = a4;
  v10[4] = a6;
  v8 = sub_1B212FF14(v10);
  (*(*(a4 - 8) + 16))(v8, a1, a4);
  sub_1B21443FC(v11, v10);
  sub_1B212AC5C(v11, &qword_1EB7A0E30, &unk_1B2259360);
  return sub_1B2113208(v10);
}

uint64_t sub_1B2185BA4(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a1 == 2)
  {
    v9 = 0;
    v10 = 0;
    memset(v14, 0, 24);
  }

  else
  {
    LOBYTE(v14[0]) = a1 & 1;
    v10 = &protocol witness table for Bool;
    v9 = MEMORY[0x1E69E6370];
  }

  v14[3] = v9;
  v14[4] = v10;
  v13[3] = a5;
  v13[4] = a7;
  v11 = sub_1B212FF14(v13);
  (*(*(a5 - 8) + 16))(v11, a2, a5);
  sub_1B21443FC(v14, v13);
  sub_1B2113208(v13);
  return sub_1B212AC5C(v14, &qword_1EB7A0E30, &unk_1B2259360);
}

uint64_t sub_1B2185C88(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    a1 = 0;
    v10 = 0;
    v11 = 0;
    v15[1] = 0;
    v15[2] = 0;
  }

  else
  {
    v11 = &protocol witness table for Int;
    v10 = MEMORY[0x1E69E6530];
  }

  v14[4] = a8;
  v15[0] = a1;
  v15[3] = v10;
  v15[4] = v11;
  v14[3] = a6;
  v12 = sub_1B212FF14(v14);
  (*(*(a6 - 8) + 16))(v12, a3, a6);
  sub_1B21443FC(v15, v14);
  sub_1B2113208(v14);
  return sub_1B212AC5C(v15, &qword_1EB7A0E30, &unk_1B2259360);
}

uint64_t sub_1B2185D60(__int16 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if ((a1 & 0x100) != 0)
  {
    v10 = 0;
    v9 = 0;
    memset(v14, 0, 24);
  }

  else
  {
    LOBYTE(v14[0]) = a1;
    v9 = &protocol witness table for Int8;
    v10 = MEMORY[0x1E69E7230];
  }

  v14[3] = v10;
  v14[4] = v9;
  v13[3] = a5;
  v13[4] = a7;
  v11 = sub_1B212FF14(v13);
  (*(*(a5 - 8) + 16))(v11, a2, a5);
  sub_1B21443FC(v14, v13);
  sub_1B2113208(v13);
  return sub_1B212AC5C(v14, &qword_1EB7A0E30, &unk_1B2259360);
}

uint64_t sub_1B2185E3C(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if ((a1 & 0x10000) != 0)
  {
    v10 = 0;
    v9 = 0;
    memset(v14, 0, 24);
  }

  else
  {
    LOWORD(v14[0]) = a1;
    v9 = &protocol witness table for Int16;
    v10 = MEMORY[0x1E69E7290];
  }

  v14[3] = v10;
  v14[4] = v9;
  v13[3] = a5;
  v13[4] = a7;
  v11 = sub_1B212FF14(v13);
  (*(*(a5 - 8) + 16))(v11, a2, a5);
  sub_1B21443FC(v14, v13);
  sub_1B2113208(v13);
  return sub_1B212AC5C(v14, &qword_1EB7A0E30, &unk_1B2259360);
}

uint64_t sub_1B2185F14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if ((a1 & 0x100000000) != 0)
  {
    v10 = 0;
    v9 = 0;
    memset(v14, 0, 24);
  }

  else
  {
    LODWORD(v14[0]) = a1;
    v9 = &protocol witness table for Int32;
    v10 = MEMORY[0x1E69E72F0];
  }

  v14[3] = v10;
  v14[4] = v9;
  v13[3] = a5;
  v13[4] = a7;
  v11 = sub_1B212FF14(v13);
  (*(*(a5 - 8) + 16))(v11, a2, a5);
  sub_1B21443FC(v14, v13);
  sub_1B2113208(v13);
  return sub_1B212AC5C(v14, &qword_1EB7A0E30, &unk_1B2259360);
}

uint64_t sub_1B2185FEC(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    a1 = 0;
    v10 = 0;
    v11 = 0;
    v15[1] = 0;
    v15[2] = 0;
  }

  else
  {
    v11 = &protocol witness table for Int64;
    v10 = MEMORY[0x1E69E7360];
  }

  v14[4] = a8;
  v15[0] = a1;
  v15[3] = v10;
  v15[4] = v11;
  v14[3] = a6;
  v12 = sub_1B212FF14(v14);
  (*(*(a6 - 8) + 16))(v12, a3, a6);
  sub_1B21443FC(v15, v14);
  sub_1B2113208(v14);
  return sub_1B212AC5C(v15, &qword_1EB7A0E30, &unk_1B2259360);
}

uint64_t sub_1B21860C4(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    a1 = 0;
    v10 = 0;
    v11 = 0;
    v15[1] = 0;
    v15[2] = 0;
  }

  else
  {
    v11 = &protocol witness table for UInt;
    v10 = MEMORY[0x1E69E6810];
  }

  v14[4] = a8;
  v15[0] = a1;
  v15[3] = v10;
  v15[4] = v11;
  v14[3] = a6;
  v12 = sub_1B212FF14(v14);
  (*(*(a6 - 8) + 16))(v12, a3, a6);
  sub_1B21443FC(v15, v14);
  sub_1B2113208(v14);
  return sub_1B212AC5C(v15, &qword_1EB7A0E30, &unk_1B2259360);
}

uint64_t sub_1B218619C(__int16 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if ((a1 & 0x100) != 0)
  {
    v10 = 0;
    v9 = 0;
    memset(v14, 0, 24);
  }

  else
  {
    LOBYTE(v14[0]) = a1;
    v9 = &protocol witness table for UInt8;
    v10 = MEMORY[0x1E69E7508];
  }

  v14[3] = v10;
  v14[4] = v9;
  v13[3] = a5;
  v13[4] = a7;
  v11 = sub_1B212FF14(v13);
  (*(*(a5 - 8) + 16))(v11, a2, a5);
  sub_1B21443FC(v14, v13);
  sub_1B2113208(v13);
  return sub_1B212AC5C(v14, &qword_1EB7A0E30, &unk_1B2259360);
}

uint64_t sub_1B2186278(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if ((a1 & 0x10000) != 0)
  {
    v10 = 0;
    v9 = 0;
    memset(v14, 0, 24);
  }

  else
  {
    LOWORD(v14[0]) = a1;
    v9 = &protocol witness table for UInt16;
    v10 = MEMORY[0x1E69E75F8];
  }

  v14[3] = v10;
  v14[4] = v9;
  v13[3] = a5;
  v13[4] = a7;
  v11 = sub_1B212FF14(v13);
  (*(*(a5 - 8) + 16))(v11, a2, a5);
  sub_1B21443FC(v14, v13);
  sub_1B2113208(v13);
  return sub_1B212AC5C(v14, &qword_1EB7A0E30, &unk_1B2259360);
}

uint64_t sub_1B2186350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if ((a1 & 0x100000000) != 0)
  {
    v10 = 0;
    v9 = 0;
    memset(v14, 0, 24);
  }

  else
  {
    LODWORD(v14[0]) = a1;
    v9 = &protocol witness table for UInt32;
    v10 = MEMORY[0x1E69E7668];
  }

  v14[3] = v10;
  v14[4] = v9;
  v13[3] = a5;
  v13[4] = a7;
  v11 = sub_1B212FF14(v13);
  (*(*(a5 - 8) + 16))(v11, a2, a5);
  sub_1B21443FC(v14, v13);
  sub_1B2113208(v13);
  return sub_1B212AC5C(v14, &qword_1EB7A0E30, &unk_1B2259360);
}

uint64_t sub_1B2186428(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    a1 = 0;
    v10 = 0;
    v11 = 0;
    v15[1] = 0;
    v15[2] = 0;
  }

  else
  {
    v11 = &protocol witness table for UInt64;
    v10 = MEMORY[0x1E69E76D8];
  }

  v14[4] = a8;
  v15[0] = a1;
  v15[3] = v10;
  v15[4] = v11;
  v14[3] = a6;
  v12 = sub_1B212FF14(v14);
  (*(*(a6 - 8) + 16))(v12, a3, a6);
  sub_1B21443FC(v15, v14);
  sub_1B2113208(v14);
  return sub_1B212AC5C(v15, &qword_1EB7A0E30, &unk_1B2259360);
}

uint64_t sub_1B2186500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if ((a1 & 0x100000000) != 0)
  {
    v10 = 0;
    v9 = 0;
    memset(v14, 0, 24);
  }

  else
  {
    LODWORD(v14[0]) = a1;
    v9 = &protocol witness table for Float;
    v10 = MEMORY[0x1E69E6448];
  }

  v14[3] = v10;
  v14[4] = v9;
  v13[3] = a5;
  v13[4] = a7;
  v11 = sub_1B212FF14(v13);
  (*(*(a5 - 8) + 16))(v11, a2, a5);
  sub_1B21443FC(v14, v13);
  sub_1B2113208(v13);
  return sub_1B212AC5C(v14, &qword_1EB7A0E30, &unk_1B2259360);
}

uint64_t sub_1B21865D8(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    a1 = 0;
    v10 = 0;
    v11 = 0;
    v15[1] = 0;
    v15[2] = 0;
  }

  else
  {
    v11 = &protocol witness table for Double;
    v10 = MEMORY[0x1E69E63B0];
  }

  v14[4] = a8;
  v15[0] = a1;
  v15[3] = v10;
  v15[4] = v11;
  v14[3] = a6;
  v12 = sub_1B212FF14(v14);
  (*(*(a6 - 8) + 16))(v12, a3, a6);
  sub_1B21443FC(v15, v14);
  sub_1B2113208(v14);
  return sub_1B212AC5C(v15, &qword_1EB7A0E30, &unk_1B2259360);
}

uint64_t sub_1B21866B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    v10 = &protocol witness table for String;
    v11 = MEMORY[0x1E69E6158];
    v12 = a2;
  }

  else
  {
    a1 = 0;
    v12 = 0;
    v11 = 0;
    v10 = 0;
    v16[2] = 0;
  }

  v16[0] = a1;
  v16[1] = v12;
  v16[3] = v11;
  v16[4] = v10;
  v15[3] = a6;
  v15[4] = a8;
  v13 = sub_1B212FF14(v15);
  (*(*(a6 - 8) + 16))(v13, a3, a6);

  sub_1B21443FC(v16, v15);
  sub_1B2113208(v15);
  return sub_1B212AC5C(v16, &qword_1EB7A0E30, &unk_1B2259360);
}

uint64_t sub_1B218686C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, void *a4@<X8>)
{
  a4[3] = type metadata accessor for RecordEncoder(0, a2, a3, a3);
  a4[4] = swift_getWitnessTable();
  *a4 = a1;
}

uint64_t sub_1B21868D8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  a5[3] = type metadata accessor for RecordEncoder(0, a2, a4, a3);
  a5[4] = swift_getWitnessTable();
  *a5 = a1;
}

uint64_t sub_1B2186FAC(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = *a3;
  v8 = sub_1B22522F0();
  MEMORY[0x1EEE9AC00](v8 - 8);
  sub_1B21139A0(a1, a1[3]);
  v9 = sub_1B22534D0();
  (*(*(v7 + 88) + 24))(v9);

  v10 = sub_1B2251AF0();
  v12 = v11;

  if (v17)
  {
    *a6 = v17;
  }

  else
  {
    sub_1B22522E0();
    result = sub_1B22522C0();
    if (v14)
    {
      v16[3] = MEMORY[0x1E69E6158];
      v16[4] = &protocol witness table for String;
      v16[0] = result;
      v16[1] = v14;
      sub_1B21443FC(v16, a1);
      sub_1B21267A8(v10, v12);
      return sub_1B212AC5C(v16, &qword_1EB7A0E30, &unk_1B2259360);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1B2187234()
{
  sub_1B21619D8(&qword_1EB7A0DD0, &unk_1B226A780);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1B22546B0;
  sub_1B211EE68(v0 + 24, v1 + 32);
  return v1;
}

uint64_t sub_1B21872F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 64) = 1;
  sub_1B2187234();
  nullsub_1();
  type metadata accessor for JSONRequiredEncoder.KeyedContainer(0, a2, a3, v6);
  swift_getWitnessTable();
  return sub_1B2252FA0();
}

unint64_t sub_1B218738C@<X0>(uint64_t *a1@<X8>)
{
  *(v1 + 64) = 1;
  v3 = sub_1B2187234();
  a1[3] = &type metadata for JSONRequiredEncoder;
  result = sub_1B2187B18();
  a1[4] = result;
  *a1 = v3;
  return result;
}

uint64_t sub_1B218741C()
{
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  sub_1B211EE68(v0 + 24, v2);

  sub_1B21443FC(v3, v2);

  sub_1B2113208(v2);
  return sub_1B212AC5C(v3, &qword_1EB7A0E30, &unk_1B2259360);
}

uint64_t sub_1B21874AC(char a1)
{
  v5 = MEMORY[0x1E69E6370];
  v6 = &protocol witness table for Bool;
  v4[0] = a1;
  sub_1B211EE68(v1 + 24, v3);

  sub_1B21443FC(v4, v3);

  sub_1B2113208(v3);
  return sub_1B212AC5C(v4, &qword_1EB7A0E30, &unk_1B2259360);
}

uint64_t sub_1B2187548(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  sub_1B2116040();
  v21[0] = v3;
  sub_1B2114704(v3, v4, v5, v6, v7, v8, v9, v10, v20[0]);

  sub_1B2115014(v11, v12, v13, v14, v15, v16, v17, v18, v20[0], v20[1], v20[2], v20[3], v20[4]);

  sub_1B2113208(v20);
  return sub_1B212AC5C(v21, &qword_1EB7A0E30, &unk_1B2259360);
}

uint64_t sub_1B21875B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  sub_1B2116040();
  v21[0] = v3;
  sub_1B2114704(v3, v4, v5, v6, v7, v8, v9, v10, v20[0]);

  sub_1B2115014(v11, v12, v13, v14, v15, v16, v17, v18, v20[0], v20[1], v20[2], v20[3], v20[4]);

  sub_1B2113208(v20);
  return sub_1B212AC5C(v21, &qword_1EB7A0E30, &unk_1B2259360);
}

uint64_t sub_1B2187628(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  sub_1B2116040();
  v21[0] = v3;
  sub_1B2114704(v3, v4, v5, v6, v7, v8, v9, v10, v20[0]);

  sub_1B2115014(v11, v12, v13, v14, v15, v16, v17, v18, v20[0], v20[1], v20[2], v20[3], v20[4]);

  sub_1B2113208(v20);
  return sub_1B212AC5C(v21, &qword_1EB7A0E30, &unk_1B2259360);
}

uint64_t sub_1B2187698(float a1)
{
  v5 = MEMORY[0x1E69E6448];
  v6 = &protocol witness table for Float;
  *v4 = a1;
  sub_1B211EE68(v1 + 24, v3);

  sub_1B21443FC(v4, v3);

  sub_1B2113208(v3);
  return sub_1B212AC5C(v4, &qword_1EB7A0E30, &unk_1B2259360);
}

uint64_t sub_1B2187734(double a1)
{
  v4[3] = MEMORY[0x1E69E63B0];
  v4[4] = &protocol witness table for Double;
  *v4 = a1;
  sub_1B211EE68(v1 + 24, v3);

  sub_1B21443FC(v4, v3);

  sub_1B2113208(v3);
  return sub_1B212AC5C(v4, &qword_1EB7A0E30, &unk_1B2259360);
}

uint64_t sub_1B21877D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B211EE68(v3 + 24, v8);

  sub_1B2144B88(a1, v8, a2, a3);
  sub_1B2113208(v8);
}

unint64_t sub_1B2187B18()
{
  result = qword_1ED85BF90[0];
  if (!qword_1ED85BF90[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED85BF90);
  }

  return result;
}

void sub_1B2187B6C(void *a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  else if (!a3)
  {
  }
}

uint64_t SQLSelectable<>.sqlSelection.getter()
{
  sub_1B211563C();
  sub_1B2116050(v0, v1, v2);
  sub_1B211280C();
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v3);
  sub_1B2112920();
  v4 = sub_1B2115030();
  v5(v4);
  v6 = sub_1B211658C();
  return v7(v6);
}

uint64_t SQLOrderingTerm<>.sqlOrdering.getter()
{
  sub_1B211563C();
  sub_1B2116050(v0, v1, v2);
  sub_1B211280C();
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v3);
  sub_1B2112920();
  v4 = sub_1B2115030();
  v5(v4);
  v6 = sub_1B211658C();
  return v7(v6);
}

uint64_t SQLExpressible<>.sqlExpression.getter()
{
  sub_1B211563C();
  sub_1B2116050(v0, v1, v2);
  sub_1B211280C();
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v3);
  sub_1B2112920();
  v4 = sub_1B2115030();
  v5(v4);
  v6 = sub_1B211658C();
  return v7(v6);
}

uint64_t StatementBinding<>.bind(to:at:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1B211280C();
  v11 = v10;
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v17 - v13;
  sub_1B2252560();
  v15 = (*(a6 + 8))(a1, a2, AssociatedTypeWitness, a6);
  (*(v11 + 8))(v14, AssociatedTypeWitness);
  return v15;
}

uint64_t DatabaseValueConvertible<>.databaseValue.getter()
{
  sub_1B211563C();
  v4 = sub_1B2116050(v1, v2, v3);
  sub_1B211280C();
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v5);
  sub_1B2112920();
  (*(v0 + 24))(v4, v0);
  v6 = sub_1B211658C();
  return v7(v6);
}

uint64_t static DatabaseValueConvertible<>.fromDatabaseValue(_:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = v6;
  v23 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = sub_1B2252B00();
  sub_1B211280C();
  v16 = v15;
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v22 - v18;
  LOBYTE(v18) = *(a1 + 16);
  v29 = *a1;
  v30 = v18;
  (*(a5 + 32))(&v29, AssociatedTypeWitness, a5);
  v24 = a2;
  v25 = a3;
  v26 = a4;
  v27 = a5;
  v28 = v7;
  sub_1B212C6C8(sub_1B2188278, MEMORY[0x1E69E73E0], a2, v20, v23);
  return (*(v16 + 8))(v19, v14);
}

uint64_t sub_1B2188170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  (*(v9 + 16))(&v11 - v8, a1, v7);
  return sub_1B2252570();
}

uint64_t RangeReplaceableCollection.init<A>(_:minimumCapacity:)@<X0>(uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  sub_1B2252980();
  sub_1B2252950();
  sub_1B211F33C();
  v8 = sub_1B211401C();
  v9(v8);
  result = swift_unknownObjectRelease();
  if (v5)
  {
    sub_1B2111808();
    return (*(v11 + 8))(a5, a3);
  }

  return result;
}

uint64_t Dictionary.init<A>(grouping:by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1B2117A40();
  swift_getAssociatedTypeWitness();
  sub_1B2144060();
  sub_1B22526A0();
  sub_1B2252150();
  v7 = sub_1B211401C();
  v8(v7);
  swift_unknownObjectRelease();
  if (v6)
  {
  }

  return sub_1B2122C74();
}

uint64_t Dictionary.init<A>(minimumCapacity:grouping:by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1B2117A40();
  swift_getAssociatedTypeWitness();
  sub_1B2144060();
  v11 = sub_1B22526A0();
  MEMORY[0x1B2741C60](a1, a5, v11, a7);
  v12 = sub_1B211401C();
  v13(v12);
  swift_unknownObjectRelease();
  if (v7)
  {
  }

  return sub_1B2122C74();
}

void sub_1B21885D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1B2111640();
  v74 = v24;
  v26 = v25;
  v28 = v27;
  v72 = v29;
  v31 = v30;
  v69 = v32;
  v70 = v33;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1B211280C();
  v68 = v34;
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v35);
  v73 = v67 - v36;
  sub_1B21115E0();
  v38 = v37;
  MEMORY[0x1EEE9AC00](v39);
  sub_1B2112FA8();
  v42 = v40 - v41;
  v44 = MEMORY[0x1EEE9AC00](v43);
  v46 = v67 - v45;
  v28(v31, v44);
  if (v23)
  {
LABEL_10:
    sub_1B2112FDC();
    return;
  }

  v67[0] = v42;
  v67[1] = 0;
  v67[2] = v38;
  v47 = swift_allocObject();
  v49 = v69;
  v48 = v70;
  v47[2] = v26;
  v47[3] = v49;
  v50 = v74;
  v47[4] = v74;
  v47[5] = v48;
  (v68[2])(v73, v31, AssociatedTypeWitness);
  v51 = swift_allocObject();
  v51[2] = v26;
  v51[3] = v49;
  v51[4] = v50;
  v51[5] = v48;
  v51[6] = a23;
  v51[7] = v47;
  v68 = v47;
  v52 = v72;
  swift_isUniquelyReferenced_nonNull_native();
  v53 = *v52;
  v75 = *v52;
  *v52 = 0x8000000000000000;
  v69 = v46;
  v54 = sub_1B2111658();
  v70 = sub_1B218E094(v54, v55, v50);
  if (!__OFADD__(*(v53 + 16), (v56 & 1) == 0))
  {
    v57 = v56;
    sub_1B22526A0();
    sub_1B2252EB0();
    if (sub_1B2252E70())
    {
      v58 = sub_1B211A254();
      v70 = sub_1B218E094(v58, v59, v74);
      v61 = v72;
      if ((v57 & 1) == (v60 & 1))
      {
LABEL_7:
        *v61 = v75;

        if ((v57 & 1) == 0)
        {
          (v51[6])(v62);
          v63 = sub_1B2126070();
          v64(v63);
          sub_1B2252EA0();
        }

        sub_1B2252660();
        v65 = sub_1B211A254();
        v66(v65);

        goto LABEL_10;
      }

      sub_1B2253390();
      __break(1u);
    }

    v61 = v72;
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t Dictionary.init<A>(uniqueKeysWithValues:)()
{
  sub_1B213CAB4();
  v1 = sub_1B2252150();
  sub_1B212346C(v1);
  sub_1B211401C();
  sub_1B2121F48();
  v2();
  swift_unknownObjectRelease();
  if (v0)
  {
  }

  return sub_1B2122C74();
}

uint64_t Dictionary.init<A>(minimumCapacity:uniqueKeysWithValues:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = MEMORY[0x1B2741C60](a1, a3, a4, a6);
  sub_1B212346C(v7);
  sub_1B211401C();
  sub_1B2121F48();
  v8();
  swift_unknownObjectRelease();
  if (v6)
  {
  }

  return sub_1B2122C74();
}

uint64_t sub_1B2188B74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1B21115E0();
  v26 = v10;
  MEMORY[0x1EEE9AC00](v11);
  sub_1B2111844();
  v25 = v13 - v12;
  sub_1B21115E0();
  MEMORY[0x1EEE9AC00](v14);
  sub_1B2111844();
  sub_1B218E814();
  sub_1B2252B00();
  sub_1B211280C();
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v15);
  sub_1B211504C();
  v16 = sub_1B2117214();
  v17(v16);
  v18 = a4;
  sub_1B22521D0();
  sub_1B211A254();
  sub_1B2252170();
  v19 = sub_1B21142C4();
  LODWORD(a4) = sub_1B2122A98(v19, v20, a5);
  v21 = sub_1B2111658();
  result = v22(v21);
  if (a4 != 1)
  {
    sub_1B2252CD0();

    (*(v26 + 16))(v25, a1, v18);
    v24 = sub_1B2252310();
    MEMORY[0x1B2741EB0](v24);

    MEMORY[0x1B2741EB0](39, 0xE100000000000000);
    result = sub_1B2252EC0();
    __break(1u);
  }

  return result;
}

uint64_t sub_1B2188E54(uint64_t a1)
{
  v3 = *(v1 + 56);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return v3(a1, a1 + *(TupleTypeMetadata2 + 48));
}

uint64_t Set.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1B2252160();
  sub_1B21211E8();
  sub_1B211401C();
  sub_1B2121F48();
  v5();
  swift_unknownObjectRelease();
  if (v4)
  {
  }

  return sub_1B2122C74();
}

uint64_t Set.init<A>(_:minimumCapacity:)()
{
  sub_1B213CAB4();
  MEMORY[0x1B27422D0](v1, v2, v3);
  sub_1B21211E8();
  sub_1B211401C();
  sub_1B2121F48();
  v4();
  swift_unknownObjectRelease();
  if (v0)
  {
  }

  return sub_1B2122C74();
}

uint64_t sub_1B2188FEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B21115E0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  sub_1B2112FA8();
  v9 = v7 - v8;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v15 - v12;
  (*(v5 + 16))(v9, v11);
  sub_1B2111634();
  sub_1B2252810();
  sub_1B2252800();
  return (*(v5 + 8))(v13, a3);
}

uint64_t Sequence.flatMap<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1B21115E0();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  sub_1B2111844();
  sub_1B218E814();
  swift_getAssociatedTypeWitness();
  v15 = sub_1B2144060();
  v19 = type metadata accessor for AnyCursor(v15, v16, v17, v18);
  (*(v13 + 16))(v7, v6, a3);
  v20 = sub_1B2117214();
  AnyCursor.__allocating_init<A>(_:)(v20, v21, a5);
  sub_1B211D87C();
  swift_getWitnessTable();
  v22 = sub_1B2122C80();
  v25 = Cursor.flatMap<A>(_:)(v22, v23, v19, a4, v24, a6);

  return v25;
}

uint64_t AnyCursor.__allocating_init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B211D530();
  sub_1B21115E0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  sub_1B2111844();
  v10 = v9 - v8;
  swift_getAssociatedTypeWitness();
  sub_1B2111808();
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v11);
  sub_1B218E814();
  (*(v6 + 16))(v10, v4, v3);
  sub_1B22524B0();
  swift_getAssociatedConformanceWitness();
  v12 = sub_1B2117214();
  v15 = AnyCursor.__allocating_init<A>(iterator:)(v12, v13, v14);
  (*(v6 + 8))(v4, v3);
  return v15;
}

uint64_t Cursor.flatMap<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = a6;
  v12[6] = a1;
  v12[7] = a2;
  Cursor.map<A>(_:)(sub_1B218C3FC, v12);

  sub_1B211314C();
  type metadata accessor for MapCursor(v13, v14, v15, a5);
  sub_1B21224C4();
  swift_getWitnessTable();
  v16 = Cursor<>.joined()();

  return v16;
}

{
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = a6;
  v12[6] = a1;
  v12[7] = a2;
  sub_1B21262CC();
  swift_getAssociatedTypeWitness();
  v13 = sub_1B2144060();
  v17 = type metadata accessor for AnyCursor(v13, v14, v15, v16);

  sub_1B211D87C();
  WitnessTable = swift_getWitnessTable();
  v19 = Cursor.flatMap<A>(_:)(sub_1B218E2B8, v12, a3, v17, a5, WitnessTable);

  return v19;
}

uint64_t sub_1B2189518(void (*a1)(uint64_t *))
{
  while (1)
  {
    result = sub_1B211B804();
    if (v1 || !result)
    {
      break;
    }

    v4 = result;
    a1(&v4);
  }

  return result;
}

void Cursor.forEach(_:)()
{
  sub_1B2111640();
  sub_1B2117208();
  v4 = v3;
  v20 = v5;
  sub_1B2117A40();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1B2132550(AssociatedTypeWitness);
  sub_1B211280C();
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v7);
  sub_1B211504C();
  sub_1B21115E0();
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v8);
  sub_1B21182D8();
  v9 = *(v4 + 16);
  while (1)
  {
    v10 = sub_1B2117FB0();
    v9(v10);
    if (v0)
    {
      break;
    }

    v11 = sub_1B21142C4();
    sub_1B2115BB4(v11, v12, v2);
    if (v13)
    {
      v18 = sub_1B211ACF8();
      v19(v18);
      break;
    }

    v14 = sub_1B211F174();
    v15(v14);
    v20(v1);
    v16 = sub_1B211F61C();
    v17(v16);
  }

  sub_1B2111FB4();
  sub_1B2112FDC();
}

Swift::Bool __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Cursor.isEmpty()()
{
  sub_1B2117A40();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1B2111634();
  v2 = sub_1B2252B00();
  sub_1B211280C();
  v4 = v3;
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v12 - v6;
  v8 = sub_1B2117214();
  v9(v8);
  if (!v0)
  {
    sub_1B2115BB4(v7, 1, AssociatedTypeWitness);
    if (v10)
    {
      LOBYTE(AssociatedTypeWitness) = 1;
    }

    else
    {
      LOBYTE(AssociatedTypeWitness) = 0;
    }

    (*(v4 + 8))(v7, v2);
  }

  return AssociatedTypeWitness & 1;
}

void Cursor.contains(where:)()
{
  sub_1B2111640();
  sub_1B2117208();
  v4 = v3;
  v20 = v5;
  sub_1B2117A40();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1B2132550(AssociatedTypeWitness);
  sub_1B211280C();
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v7);
  sub_1B211504C();
  sub_1B21115E0();
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v8);
  sub_1B21182D8();
  v21 = *(v4 + 16);
  do
  {
    v9 = sub_1B2117FB0();
    v21(v9);
    if (v0)
    {
      break;
    }

    v10 = sub_1B21142C4();
    sub_1B2115BB4(v10, v11, v2);
    if (v12)
    {
      v18 = sub_1B211ACF8();
      v19(v18);
      break;
    }

    v13 = sub_1B211F174();
    v14(v13);
    v15 = v20(v1);
    v16 = sub_1B211F61C();
    v17(v16);
  }

  while ((v15 & 1) == 0);
  sub_1B2111FB4();
  sub_1B2112FDC();
}

uint64_t Cursor.enumerated()()
{
  v1 = sub_1B2144060();
  type metadata accessor for EnumeratedCursor(v1, v2, v3, v4);
  v5 = sub_1B2113B28();
  sub_1B2189A64(v5);
  sub_1B2113B28();
  swift_unknownObjectRetain();
  return v0;
}

uint64_t sub_1B2189A64(uint64_t a1)
{
  sub_1B2112820();
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = 0;
  return result;
}

void *sub_1B2189ABC()
{
  sub_1B211D5B4();
  sub_1B2114ED8();
  result = swift_allocObject();
  result[2] = v2;
  result[3] = v1;
  result[4] = v0;
  return result;
}

void Cursor.first(where:)()
{
  sub_1B2111640();
  sub_1B2117208();
  v4 = v3;
  v27 = v5;
  v28 = v6;
  v26 = v7;
  sub_1B2117A40();
  v30 = v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1B2115E58(AssociatedTypeWitness);
  sub_1B211280C();
  v24 = v11;
  v25 = v10;
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v12);
  sub_1B21352EC();
  sub_1B21115E0();
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v24 - v14;
  v31 = v4;
  v29 = *(v4 + 16);
  v17 = (v16 + 32);
  for (i = (v16 + 8); ; (*i)(v15, v2))
  {
    v19 = sub_1B2117FB0();
    v29(v19);
    if (v0)
    {
      break;
    }

    sub_1B211471C(v1);
    if (v20)
    {
      v22 = (*(v24 + 8))(v1, v25);
      v23 = 1;
LABEL_8:
      sub_1B214CBC0(v22, v23);
      break;
    }

    v21 = *v17;
    sub_1B21262CC();
    v21();
    if (v27(v15))
    {
      v22 = (v21)(v26, v15, v2);
      v23 = 0;
      goto LABEL_8;
    }
  }

  sub_1B2111FB4();
  sub_1B2112FDC();
}

uint64_t Cursor.compactMap<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1B2252B00();
  sub_1B211314C();
  Cursor.map<A>(_:)(v9, v10);
  sub_1B2117C44();
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a5;
  v12 = sub_1B2111634();
  v14 = type metadata accessor for MapCursor(v12, v13, v8, a5);
  sub_1B21224C4();
  WitnessTable = swift_getWitnessTable();
  Cursor.filter(_:)(sub_1B218C478, v11, v14, WitnessTable);

  sub_1B2117C44();
  v16 = swift_allocObject();
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = a5;
  type metadata accessor for FilterCursor(0, v14, WitnessTable, v17);
  sub_1B214CB7C();
  swift_getWitnessTable();
  v18 = Cursor.map<A>(_:)(sub_1B218C4AC, v16);

  return v18;
}

uint64_t Cursor.map<A>(_:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B213CCFC();
  v6 = type metadata accessor for MapCursor(v2, v3, v4, v5);
  sub_1B2189ABC();
  sub_1B2113B28();
  swift_unknownObjectRetain();

  return v6;
}

uint64_t sub_1B2189ED8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_1B2252B00();
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = v12 - v8;
  (*(v10 + 16))(v12 - v8, a1, v7);
  result = sub_1B2122A98(v9, 1, a2);
  if (result != 1)
  {
    return (*(*(a2 - 8) + 32))(a3, v9, a2);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B218A028()
{
  sub_1B211D5B4();
  result = swift_allocObject();
  *(result + 40) = 0;
  *(result + 16) = v2;
  *(result + 24) = v1;
  *(result + 32) = v0;
  return result;
}

uint64_t Cursor.dropFirst(_:)()
{
  v1 = sub_1B213CCFC();
  type metadata accessor for DropFirstCursor(v1, v2, v3, v4);
  sub_1B213CC48();
  sub_1B218A0A8();
  sub_1B2113B28();
  swift_unknownObjectRetain();
  return v0;
}

uint64_t sub_1B218A0A8()
{
  sub_1B211D530();
  sub_1B2114ED8();
  v2 = swift_allocObject();
  sub_1B218C8B4(v1, v0);
  return v2;
}

void Cursor.dropLast(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1B2111640();
  a19 = v23;
  a20 = v24;
  v65 = v20;
  v26 = v25;
  sub_1B2117A40();
  v66 = v28;
  v67 = v27;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1B212D540();
  sub_1B2252B00();
  sub_1B211280C();
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v30);
  sub_1B211504C();
  sub_1B21115E0();
  v32 = v31;
  MEMORY[0x1EEE9AC00](v33);
  sub_1B2112FA8();
  v36 = v34 - v35;
  MEMORY[0x1EEE9AC00](v37);
  v41 = v57 - v40;
  if (v26 < 0)
  {
    sub_1B212E278();
    sub_1B2252EC0();
    __break(1u);
  }

  else
  {
    if (v26)
    {
      v59 = v39;
      v60 = v38;
      v62 = v26;
      sub_1B212D540();
      a10 = sub_1B2252600();
      sub_1B212D540();
      v68 = sub_1B2252600();

      v61 = sub_1B2252590();

      v63 = *(v67 + 16);
      v64 = v67 + 16;
      v42 = (v32 + 32);
      v57[2] = v32 + 24;
      v58 = v32;
      v43 = (v32 + 16);
      while (1)
      {
        v63(v66, v67);
        if (v21)
        {

          goto LABEL_14;
        }

        v44 = sub_1B21142C4();
        sub_1B2115BB4(v44, v45, AssociatedTypeWitness);
        if (v46)
        {
          break;
        }

        (*v42)(v41, v22, AssociatedTypeWitness);
        sub_1B2126070();
        if (sub_1B2252640() >= v62)
        {
          sub_1B22526E0();
          sub_1B212D540();
          v57[1] = sub_1B22526A0();
          sub_1B2252660();
          sub_1B22525F0();
          v49 = v68;
          sub_1B218E264(v61, v68, AssociatedTypeWitness);
          isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
          v51 = v49 & 0xFFFFFFFFFFFFFF8;
          if ((isClassOrObjCExistentialType & 1) == 0)
          {
            v51 = v49;
          }

          (*(v58 + 24))(v51 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v61, v41, AssociatedTypeWitness);
          v61 = sub_1B2252650();
          v52 = sub_1B21497E8();
          v53(v52);
          v61 %= v62;
        }

        else
        {
          (*v43)(v36, v41, AssociatedTypeWitness);
          sub_1B212D540();
          sub_1B22526A0();
          sub_1B2252660();
          v47 = sub_1B21497E8();
          v48(v47);
        }
      }

      v55 = sub_1B211ACF8();
      v56(v55);
    }

    else
    {
      sub_1B212D540();
      v54 = sub_1B22526A0();
      swift_unknownObjectRetain();
      sub_1B214CB7C();
      swift_getWitnessTable();
      RangeReplaceableCollection.init<A>(_:)(v54, &a10);
    }

LABEL_14:
    sub_1B2111FB4();
    sub_1B2112FDC();
  }
}

uint64_t sub_1B218A60C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v13(v10);
  if (!v7)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    type metadata accessor for AnyCursor(0, AssociatedTypeWitness, v16, v17);
    return AnyCursor.__allocating_init<A>(_:)(v12, a5, a7);
  }

  return result;
}

uint64_t Cursor<>.joined()()
{
  v1 = sub_1B2144060();
  type metadata accessor for FlattenCursor(v1, v2, v3, v4);
  v5 = sub_1B2113B28();
  sub_1B2189A64(v5);
  sub_1B2113B28();
  swift_unknownObjectRetain();
  return v0;
}

{
  sub_1B211D5B4();
  sub_1B2117C44();
  v3 = swift_allocObject();
  v3[2] = v2;
  v3[3] = v1;
  v3[4] = v0;
  swift_getAssociatedTypeWitness();
  sub_1B211314C();
  v8 = Cursor.flatMap<A>(_:)(v4, v5, v6, v7, v1, v0);

  return v8;
}

void Cursor.max(by:)()
{
  sub_1B2111640();
  sub_1B218E7F0(v3, v4, v5);
  sub_1B2117A40();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1B2252B00();
  sub_1B211280C();
  MEMORY[0x1EEE9AC00](v7);
  sub_1B2112FA8();
  MEMORY[0x1EEE9AC00](v8);
  sub_1B213CB4C();
  MEMORY[0x1EEE9AC00](v9);
  sub_1B21241D4();
  MEMORY[0x1EEE9AC00](v10);
  v12 = sub_1B212DE24(v11);
  v1(v12);
  if (!v0)
  {
    v13 = sub_1B218E820();
    sub_1B2115BB4(v13, v14, AssociatedTypeWitness);
    if (v15)
    {
      v16 = sub_1B212D624();
      v17(v16);
      v18 = v41;
      v19 = 1;
    }

    else
    {
      v20 = sub_1B2146AA4();
      v21(v20);
      while (1)
      {
        v22 = sub_1B211EAE0();
        v23(v22);
        v24 = sub_1B21142C4();
        sub_1B2115BB4(v24, v25, AssociatedTypeWitness);
        if (v15)
        {
          break;
        }

        sub_1B21145A0();
        v28(v26, v27);
        if (v42(v1, v2))
        {
          v29 = sub_1B211A254();
          v30(v29);
          sub_1B21145A0();
          v33(v31, v32);
        }

        else
        {
          v34 = sub_1B21263CC();
          v35(v34);
        }
      }

      v36 = sub_1B211ACF8();
      v37(v36);
      sub_1B2126070();
      sub_1B21145A0();
      v40(v38, v39);
      v18 = v41;
      v19 = 0;
    }

    sub_1B21117B4(v18, v19, 1, AssociatedTypeWitness);
  }

  sub_1B2112FDC();
}

void Cursor.min(by:)()
{
  sub_1B2111640();
  sub_1B218E7F0(v3, v4, v5);
  sub_1B2117A40();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1B2252B00();
  sub_1B211280C();
  MEMORY[0x1EEE9AC00](v7);
  sub_1B2112FA8();
  MEMORY[0x1EEE9AC00](v8);
  sub_1B213CB4C();
  MEMORY[0x1EEE9AC00](v9);
  sub_1B21241D4();
  MEMORY[0x1EEE9AC00](v10);
  v12 = sub_1B212DE24(v11);
  v1(v12);
  if (!v0)
  {
    v13 = sub_1B218E820();
    sub_1B2115BB4(v13, v14, AssociatedTypeWitness);
    if (v15)
    {
      v16 = sub_1B212D624();
      v17(v16);
      v18 = v41;
      v19 = 1;
    }

    else
    {
      v20 = sub_1B2146AA4();
      v21(v20);
      while (1)
      {
        v22 = sub_1B211EAE0();
        v23(v22);
        v24 = sub_1B21142C4();
        sub_1B2115BB4(v24, v25, AssociatedTypeWitness);
        if (v15)
        {
          break;
        }

        sub_1B21145A0();
        v28(v26, v27);
        if (v42(v2, v1))
        {
          v29 = sub_1B211A254();
          v30(v29);
          sub_1B21145A0();
          v33(v31, v32);
        }

        else
        {
          v34 = sub_1B21263CC();
          v35(v34);
        }
      }

      v36 = sub_1B211ACF8();
      v37(v36);
      sub_1B2126070();
      sub_1B21145A0();
      v40(v38, v39);
      v18 = v41;
      v19 = 0;
    }

    sub_1B21117B4(v18, v19, 1, AssociatedTypeWitness);
  }

  sub_1B2112FDC();
}

uint64_t Cursor.prefix(_:)()
{
  v1 = sub_1B213CCFC();
  type metadata accessor for PrefixCursor(v1, v2, v3, v4);
  sub_1B213CC48();
  sub_1B218ACE4();
  sub_1B2113B28();
  swift_unknownObjectRetain();
  return v0;
}

void *sub_1B218ACE4()
{
  sub_1B211D530();
  sub_1B2114ED8();
  result = swift_allocObject();
  result[3] = v0;
  result[4] = 0;
  result[2] = v1;
  return result;
}

uint64_t sub_1B218AD48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t))
{
  v9 = sub_1B213CCFC();
  v12(v9, v10, v11);
  v13 = a6(v6, v6, a2);
  swift_unknownObjectRetain();

  return v13;
}

void Cursor.reduce<A>(_:_:)()
{
  sub_1B2111640();
  v47 = v2;
  v4 = v3;
  v6 = v5;
  v40 = v7;
  v41 = v8;
  v48 = v9;
  sub_1B21115E0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  sub_1B2111844();
  v15 = v14 - v13;
  sub_1B2117A40();
  v46 = v16;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1B2252B00();
  sub_1B211280C();
  v39[0] = v19;
  v39[1] = v18;
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v20);
  v22 = v39 - v21;
  sub_1B21115E0();
  v24 = v23;
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v25);
  sub_1B218E814();
  v26 = *(v11 + 16);
  v11 += 16;
  v43 = v6;
  v26(v48, v47, v6);
  v47 = v4;
  v27 = v15;
  v44 = *(v4 + 16);
  v45 = v4 + 16;
  v28 = (v24 + 32);
  v39[2] = v24 + 8;
  v42 = (v11 - 8);
  for (i = (v11 + 16); ; (*i)(v48, v27, v35))
  {
    v44(v46, v47);
    if (v0)
    {
      v36 = v48;
      v37 = v43;
      v38 = *v42;
      goto LABEL_7;
    }

    v30 = sub_1B218E820();
    sub_1B2115BB4(v30, v31, AssociatedTypeWitness);
    if (v32)
    {
      break;
    }

    (*v28)(v1, v22, AssociatedTypeWitness);
    v40(v48, v1);
    v33 = sub_1B2124B80();
    v34(v33);
    v35 = v43;
    (*v42)(v48, v43);
  }

  v36 = sub_1B212D624();
LABEL_7:
  v38(v36, v37);
  sub_1B2111FB4();
  sub_1B2112FDC();
}

void Cursor.reduce<A>(into:_:)()
{
  sub_1B2111640();
  sub_1B2117208();
  v3 = v2;
  v5 = v4;
  v32 = v6;
  v33 = v7;
  v9 = v8;
  sub_1B2117A40();
  v35 = v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1B2111634();
  sub_1B2252B00();
  sub_1B211280C();
  v28 = v13;
  v29 = v12;
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v27 - v15;
  sub_1B21115E0();
  v18 = v17;
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v19);
  sub_1B211504C();
  v30 = *(v5 - 8);
  v31 = v5;
  v34 = v9;
  v20 = sub_1B21497E8();
  v21(v20);
  v36 = v3;
  v22 = *(v3 + 16);
  while (1)
  {
    v23 = sub_1B2117FB0();
    v22(v23);
    if (v0)
    {
      break;
    }

    sub_1B2115BB4(v16, 1, AssociatedTypeWitness);
    if (v24)
    {
      (*(v28 + 8))(v16, v29);
      goto LABEL_7;
    }

    v25 = sub_1B2111658();
    v26(v25);
    v32(v34, v1);
    (*(v18 + 8))(v1, AssociatedTypeWitness);
  }

  (*(v30 + 8))(v34, v31);
LABEL_7:
  sub_1B2111FB4();
  sub_1B2112FDC();
}

void Cursor.suffix(_:)()
{
  sub_1B2111640();
  v60 = v0;
  v61 = v3;
  v5 = v4;
  sub_1B2117A40();
  v59 = v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1B2111634();
  sub_1B2252B00();
  sub_1B211280C();
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v8);
  sub_1B211504C();
  sub_1B21115E0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  sub_1B2112FA8();
  MEMORY[0x1EEE9AC00](v12);
  v16 = v53 - v15;
  if (v5 < 0)
  {
LABEL_20:
    sub_1B2252EC0();
    __break(1u);
    return;
  }

  if (v5)
  {
    v53[2] = v14;
    v53[3] = v13;
    sub_1B2111634();
    v64 = sub_1B2252600();
    sub_1B2111634();
    v55 = sub_1B22526A0();
    v56 = v5;
    sub_1B22525D0();
    v54 = sub_1B2252590();
    v57 = *(v61 + 16);
    v58 = v61 + 16;
    v17 = v10;
    v18 = (v10 + 32);
    v53[0] = v17 + 40;
    v53[1] = v17;
    while (1)
    {
      v57(v59, v61);
      if (v1)
      {

        goto LABEL_16;
      }

      v19 = sub_1B21142C4();
      sub_1B2115BB4(v19, v20, AssociatedTypeWitness);
      if (v21)
      {
        break;
      }

      (*v18)(v16, v2, AssociatedTypeWitness);
      if (sub_1B2252640() >= v56)
      {
        sub_1B22525F0();
        sub_1B218E264(v54, v64, AssociatedTypeWitness);
        _swift_isClassOrObjCExistentialType();
        v27 = v54;
        sub_1B211314C();
        v30(v28, v29);
        if (__OFADD__(v27, 1))
        {
          __break(1u);
LABEL_18:
          __break(1u);
          goto LABEL_19;
        }

        v54 = (v27 + 1) % v56;
      }

      else
      {
        sub_1B211314C();
        v24(v22, v23);
        sub_1B2252660();
        v25 = sub_1B2122C80();
        v26(v25);
      }
    }

    v31 = sub_1B211ACF8();
    v32(v31);
    sub_1B2122C80();
    v33 = sub_1B2252590();
    v34 = v54;
    if (v54 == v33)
    {
      goto LABEL_16;
    }

    sub_1B2122C80();
    if (sub_1B2252640() < v34)
    {
      goto LABEL_18;
    }

    v35 = sub_1B22526D0();
    v60 = v37;
    v61 = v36;
    v59 = v38;
    if ((v34 & 0x8000000000000000) == 0)
    {
      v39 = v35;
      v40 = sub_1B22526D0();
      v42 = v41;
      v44 = v43;
      v46 = v45;
      sub_1B2252BA0();
      sub_1B213CCFC();
      sub_1B2252FE0();
      swift_allocObject();
      v47 = sub_1B22525B0();
      v49 = v60;
      v48 = v61;
      *v50 = v39;
      v50[1] = v48;
      v51 = v59;
      v50[2] = v49;
      v50[3] = v51;
      v50[4] = v40;
      v50[5] = v42;
      v50[6] = v44;
      v50[7] = v46;
      sub_1B2152E00(v47, v34);
      v62 = v52;
      sub_1B22526A0();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      swift_getWitnessTable();
      sub_1B214CB7C();
      swift_getWitnessTable();
      sub_1B21497E8();
      sub_1B2252540();
      v62 = v63;
      sub_1B2252DF0();
      sub_1B214CB7C();
      swift_getWitnessTable();
      sub_1B22526C0();

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      goto LABEL_16;
    }

LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  sub_1B2111634();
  sub_1B2252600();
LABEL_16:
  sub_1B2111FB4();
  sub_1B2112FDC();
}

void Cursor<>.contains(_:)()
{
  sub_1B2111640();
  sub_1B2117208();
  v25[3] = v3;
  v25[4] = v4;
  v6 = v5;
  sub_1B2117A40();
  v27 = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1B2132550(AssociatedTypeWitness);
  sub_1B211280C();
  v25[1] = v10;
  v25[2] = v9;
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v11);
  sub_1B211504C();
  sub_1B21115E0();
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v12);
  v14 = v25 - v13;
  v28 = v6;
  v26 = *(v6 + 16);
  v16 = (v15 + 32);
  v17 = (v15 + 8);
  do
  {
    v18 = sub_1B2117FB0();
    v26(v18);
    if (v0)
    {
      break;
    }

    v19 = sub_1B21142C4();
    sub_1B2115BB4(v19, v20, v1);
    if (v21)
    {
      v23 = sub_1B211ACF8();
      v24(v23);
      break;
    }

    (*v16)(v14, v2, v1);
    v22 = sub_1B2252270();
    (*v17)(v14, v1);
  }

  while ((v22 & 1) == 0);
  sub_1B2111FB4();
  sub_1B2112FDC();
}

uint64_t sub_1B218BA24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t *, uint64_t, uint64_t))
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return a5(a4, &v8, v9, v10);
}

void Cursor<>.joined(separator:)()
{
  sub_1B2111640();
  v1 = v0;
  v75 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  sub_1B2117A40();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1B2111634();
  sub_1B2252B00();
  sub_1B211280C();
  v65 = v13;
  v66 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v63 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v61 - v17;
  v80 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  MEMORY[0x1EEE9AC00](v23);
  v77 = &v61 - v24;
  v29 = MEMORY[0x1EEE9AC00](v25);
  v31 = &v61 - v30;
  v32 = HIBYTE(v8) & 0xF;
  v73 = v10;
  v74 = v8;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v32 = v10 & 0xFFFFFFFFFFFFLL;
  }

  v33 = (v4 + 16);
  if (v32)
  {
    v62 = v28;
    v34 = v27;
    v78 = 0;
    v79 = 0xE000000000000000;
    v35 = *(v4 + 16);
    v36 = v26;
    v35(v6, v4, v29);
    v64 = v0;
    if (!v0)
    {
      v72 = v4 + 16;
      sub_1B2115BB4(v36, 1, v80);
      if (v45)
      {
        (*(v65 + 8))(v36, v66);
      }

      else
      {
        v76 = v6;
        v49 = v34;
        v50 = v62;
        v51 = sub_1B21497E8();
        v70 = v52;
        v71 = v35;
        v69 = v53;
        (v53)(v51);
        v68 = *(v49 + 16);
        v68(v77, v50, v80);
        sub_1B213CDFC();
        v75 = v54;
        v67 = v55;
        v56 = sub_1B2252490();
        MEMORY[0x1B2741EB0](v56);

        v57 = (v49 + 8);
        v59 = v63;
        v58 = v64;
        while (1)
        {
          v71(v76, v4);
          if (v58)
          {
            (*v57)(v62, v80);

            goto LABEL_20;
          }

          sub_1B2115BB4(v59, 1, v80);
          if (v45)
          {
            break;
          }

          v69(v21, v59, v80);
          MEMORY[0x1B2741EB0](v73, v74);
          v68(v77, v21, v80);
          sub_1B2126070();
          v60 = sub_1B2252490();
          MEMORY[0x1B2741EB0](v60);

          (*v57)(v21, v80);
        }

        (*v57)(v62, v80);
        (*(v65 + 8))(v59, v66);
      }
    }
  }

  else
  {
    v76 = v6;
    v78 = 0;
    v79 = 0xE000000000000000;
    v73 = *v33;
    v74 = v4;
    v37 = (v27 + 32);
    v38 = (v27 + 16);
    v39 = (v27 + 8);
    v40 = v80;
    while (1)
    {
      v41 = v1;
      v42 = v33;
      v73(v76, v74, v29);
      if (v41)
      {

        goto LABEL_20;
      }

      v43 = sub_1B218E820();
      sub_1B2115BB4(v43, v44, v40);
      if (v45)
      {
        break;
      }

      (*v37)(v31, v18, v40);
      (*v38)(v77, v31, v40);
      sub_1B213CDFC();
      v46 = sub_1B2252490();
      MEMORY[0x1B2741EB0](v46);
      v40 = v80;

      (*v39)(v31, v80);
      v33 = v42;
      v1 = 0;
    }

    v47 = sub_1B212D624();
    v48(v47);
  }

LABEL_20:
  sub_1B2111FB4();
  sub_1B2112FDC();
}

uint64_t AnyCursor.__allocating_init<A>(_:)()
{
  sub_1B211D5B4();
  sub_1B2117A4C();
  v0 = swift_allocObject();
  AnyCursor.init<A>(_:)();
  return v0;
}

void *AnyCursor.init<A>(_:)()
{
  sub_1B211D5B4();
  v4 = *(*v1 + 80);
  v1[2] = sub_1B218C1E8(v5, v4, v2, v0);
  v1[3] = v6;
  v7 = sub_1B218C268(v3, v4, v2, v0);
  v9 = v8;
  swift_unknownObjectRelease();
  v1[4] = v7;
  v1[5] = v9;
  return v1;
}

uint64_t (*sub_1B218C1E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  v8[5] = a1;
  swift_unknownObjectRetain();
  return sub_1B218E6F4;
}

uint64_t (*sub_1B218C268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t a1, uint64_t a2)
{
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  v8[5] = a1;
  swift_unknownObjectRetain();
  return sub_1B218E6BC;
}

uint64_t AnyCursor.__allocating_init<A>(iterator:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocBox();
  sub_1B21115E0();
  v9 = v8;
  (*(v10 + 16))();
  v11 = swift_allocObject();
  v11[2] = *(v3 + 80);
  v11[3] = a2;
  v11[4] = a3;
  v11[5] = v7;

  v12 = AnyCursor.__allocating_init(_:)();
  (*(v9 + 8))(a1, a2);

  return v12;
}

uint64_t sub_1B218C3FC@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 48))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1B218C4F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_projectBox();
  swift_beginAccess();
  sub_1B2252B50();
  return swift_endAccess();
}

uint64_t AnyCursor.__allocating_init(_:)()
{
  sub_1B211D530();
  sub_1B2117A4C();
  v0 = swift_allocObject();
  AnyCursor.init(_:)();
  return v0;
}

uint64_t *AnyCursor.init(_:)()
{
  sub_1B211D530();
  v3 = *v1;
  v1[2] = v4;
  v1[3] = v5;
  sub_1B2117C44();
  v6 = swift_allocObject();
  v6[2] = *(v3 + 80);
  v6[3] = v2;
  v6[4] = v0;
  v1[4] = sub_1B218E384;
  v1[5] = v6;

  return v1;
}

uint64_t sub_1B218C634(void (*a1)(char *), uint64_t a2, uint64_t (*a3)(__n128), uint64_t a4, uint64_t a5)
{
  v23 = a2;
  v22 = a1;
  v8 = sub_1B2252B00();
  v20 = *(v8 - 8);
  v21 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19 - v9;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = (v15 + 32);
  for (i = (v15 + 8); ; (*i)(v14, a5))
  {
    result = a3(v12);
    if (v5)
    {
      break;
    }

    if (sub_1B2122A98(v10, 1, a5) == 1)
    {
      return (*(v20 + 8))(v10, v21);
    }

    (*v16)(v14, v10, a5);
    v22(v14);
  }

  return result;
}

uint64_t AnyCursor.deinit()
{

  return v0;
}

uint64_t AnyCursor.__deallocating_deinit()
{
  AnyCursor.deinit();
  v0 = sub_1B2117A4C();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void *sub_1B218C8B4(uint64_t a1, uint64_t a2)
{
  v2[4] = 0;
  if (a2 < 0)
  {
    sub_1B212E278();
    result = sub_1B2252EC0();
    __break(1u);
  }

  else
  {
    v2[2] = a1;
    v2[3] = a2;
    return v2;
  }

  return result;
}

void DropFirstCursor.next()()
{
  sub_1B2111640();
  v3 = v0;
  v20 = v4;
  sub_1B2111958();
  v6 = *(v5 + 88);
  sub_1B2117A40();
  v23 = v7;
  swift_getAssociatedTypeWitness();
  sub_1B2144060();
  v22 = v8;
  v21 = sub_1B2252B00();
  sub_1B211280C();
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v9);
  sub_1B211504C();
  v10 = *(v6 + 16);
  v12 = (v11 + 8);
  v14 = *(v0 + 24);
  for (i = *(v0 + 32); ; *(v3 + 32) = i)
  {
    if (i >= v14)
    {
      v10(v23, v6);
LABEL_9:
      sub_1B2111FB4();
      sub_1B2112FDC();
      return;
    }

    v10(v23, v6);
    if (v1)
    {
      goto LABEL_9;
    }

    v15 = sub_1B21142C4();
    v17 = sub_1B2122A98(v15, v16, v22);
    (*v12)(v2, v21);
    if (v17 == 1)
    {
      *(v3 + 32) = v14;
      sub_1B21117B4(v20, 1, 1, v22);
      goto LABEL_9;
    }

    v18 = *(v3 + 32);
    v19 = __OFADD__(v18, 1);
    i = v18 + 1;
    if (v19)
    {
      break;
    }
  }

  __break(1u);
}

void DropWhileCursor.next()()
{
  sub_1B2111640();
  v4 = v3;
  sub_1B2111958();
  v6 = *(v5 + 88);
  v8 = *(v7 + 80);
  sub_1B2117A40();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1B2115E58(AssociatedTypeWitness);
  sub_1B211280C();
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v10);
  sub_1B211504C();
  v15 = MEMORY[0x1EEE9AC00](v11);
  v17 = v30 - v16;
  if (*(v0 + 40) != 1)
  {
    v30[1] = v14;
    v30[2] = v12;
    v30[5] = *(v6 + 16);
    v30[6] = v6 + 16;
    v30[7] = v8;
    v18 = *(v0 + 16);
    v30[3] = v4;
    v30[4] = v18;
    v19 = (v13 + 32);
    while (1)
    {
      v20 = sub_1B218E7CC();
      v21(v20);
      if (v1)
      {
        goto LABEL_11;
      }

      sub_1B211471C(v2);
      if (v22)
      {
        break;
      }

      v23 = *v19;
      sub_1B218E808();
      v23();
      if (((*(v0 + 24))(v17) & 1) == 0)
      {
        *(v0 + 40) = 1;
        sub_1B21262CC();
        v28 = (v23)();
        v29 = 0;
        goto LABEL_10;
      }

      v24 = sub_1B2116A00();
      v25(v24);
    }

    v26 = sub_1B211ACF8();
    v28 = v27(v26);
    v29 = 1;
LABEL_10:
    sub_1B214CBC0(v28, v29);
    goto LABEL_11;
  }

  (*(v6 + 16))(v8, v6, v15);
LABEL_11:
  sub_1B2111FB4();
  sub_1B2112FDC();
}

uint64_t DropWhileCursor.__deallocating_deinit()
{
  FilterCursor.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 41, 7);
}

void EnumeratedCursor.next()()
{
  sub_1B2111640();
  v32 = v4;
  sub_1B2111958();
  v6 = *(v5 + 88);
  v8 = *(v7 + 80);
  sub_1B2117A40();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_1B2115E58(AssociatedTypeWitness);
  sub_1B211280C();
  v31 = v11;
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v12);
  sub_1B211504C();
  sub_1B21115E0();
  v14 = v13;
  sub_1B21117FC();
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v31 - v17;
  (*(v6 + 16))(v8, v6, v16);
  if (v1)
  {
    goto LABEL_7;
  }

  v20 = v31;
  v19 = v32;
  sub_1B211471C(v3);
  if (v21)
  {
    v22 = (*(v20 + 8))(v3, v10);
    v23 = sub_1B218E82C(v22, MEMORY[0x1E69E6530]);
    sub_1B21117B4(v19, 1, 1, v23);
LABEL_7:
    sub_1B2112FDC();
    return;
  }

  v24 = *(v14 + 32);
  sub_1B218E808();
  v25 = v24();
  v26 = sub_1B218E82C(v25, MEMORY[0x1E69E6530]);
  v27 = *(v26 + 48);
  *v19 = *(v0 + 24);
  (v24)(v19 + v27, v18, v2);
  sub_1B21117B4(v19, 0, 1, v26);
  v28 = *(v0 + 24);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (!v29)
  {
    *(v0 + 24) = v30;
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_1B218CFD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, uint64_t))
{
  result = a3(*(a2 + 24), a1);
  v6 = *(a2 + 24);
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  v9 = v7;
  if (v3)
  {
    if (!v9)
    {
LABEL_8:
      *(a2 + 24) = v8;
      return result;
    }

    __break(1u);
  }

  if (!v9)
  {
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t EnumeratedCursor.__deallocating_deinit()
{
  PrefixCursor.deinit();
  v0 = sub_1B2112820();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1B218D06C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[1] = *(a3 + 80);
  v5 = a1;
  v6 = a2;
  return EnumeratedCursor.forEach(_:)(sub_1B218E69C, v4);
}

uint64_t sub_1B218D0B0(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v11 = *(TupleTypeMetadata2 - 8);
  v12 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v14 = &v17[-v13];
  *&v17[-v13] = a1;
  (*(*(AssociatedTypeWitness - 8) + 16))(&v17[*(v15 + 48) - v13], a2, AssociatedTypeWitness, v12);
  a3(v14);
  return (*(v11 + 8))(v14, TupleTypeMetadata2);
}

void FilterCursor.next()()
{
  sub_1B2111640();
  sub_1B2111958();
  sub_1B2117A40();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1B2115E58(AssociatedTypeWitness);
  sub_1B211280C();
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v5);
  sub_1B211504C();
  sub_1B21115E0();
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v6);
  sub_1B21352EC();
  v8 = (v7 + 32);
  while (1)
  {
    v9 = sub_1B218E7CC();
    v10(v9);
    if (v1)
    {
      break;
    }

    sub_1B211471C(v3);
    if (v11)
    {
      v15 = sub_1B211ACF8();
      v17 = v16(v15);
      v18 = 1;
LABEL_8:
      sub_1B214CBC0(v17, v18);
      break;
    }

    v12 = *v8;
    sub_1B218E808();
    v12();
    if ((*(v0 + 24))(v2))
    {
      sub_1B21262CC();
      v17 = (v12)();
      v18 = 0;
      goto LABEL_8;
    }

    v13 = sub_1B2116A00();
    v14(v13);
  }

  sub_1B2111FB4();
  sub_1B2112FDC();
}

uint64_t sub_1B218D450(uint64_t a1, uint64_t a2)
{
  v6[3] = a1;
  v6[4] = a2;
  sub_1B212CD74();
  sub_1B212CD74();
  return v4(v3, v6, *(v2 + 80));
}

uint64_t sub_1B218D4C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  result = (*(a2 + 24))();
  if (!v3 && (result & 1) != 0)
  {
    return a3(a1);
  }

  return result;
}

void FlattenCursor.next()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1B2111640();
  a19 = v23;
  a20 = v24;
  v44 = v25;
  sub_1B2111958();
  v27 = *(v26 + 96);
  v29 = *(v28 + 88);
  v47 = *(v28 + 80);
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1B2111634();
  v46 = sub_1B2252B00();
  sub_1B211280C();
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v31);
  sub_1B211504C();
  v33 = (v32 + 8);
  v45 = v27;
  while (1)
  {
    if (*(v20 + 24))
    {
      v34 = *(v45 + 16);
      swift_unknownObjectRetain();
      v35 = swift_checkMetadataState();
      v34(v35, v45);
      swift_unknownObjectRelease();
      if (v21)
      {
        goto LABEL_12;
      }

      v36 = sub_1B21142C4();
      sub_1B2115BB4(v36, v37, AssociatedTypeWitness);
      if (!v38)
      {
        sub_1B2111808();
        v42 = v44;
        (*(v41 + 32))(v44, v22, AssociatedTypeWitness);
        v43 = 0;
        goto LABEL_11;
      }
    }

    else
    {
      v39 = sub_1B21142C4();
      sub_1B21117B4(v39, v40, 1, AssociatedTypeWitness);
    }

    (*v33)(v22, v46);
    (*(v29 + 16))(&a10, v47, v29);
    if (v21)
    {
      goto LABEL_12;
    }

    if (!a10)
    {
      break;
    }

    *(v20 + 24) = a10;
    swift_unknownObjectRelease();
  }

  v43 = 1;
  v42 = v44;
LABEL_11:
  sub_1B21117B4(v42, v43, 1, AssociatedTypeWitness);
LABEL_12:
  sub_1B2111FB4();
  sub_1B2112FDC();
}

uint64_t FlattenCursor.deinit()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t FlattenCursor.__deallocating_deinit()
{
  FlattenCursor.deinit();
  v0 = sub_1B2112820();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void MapCursor.next()()
{
  sub_1B2111640();
  v3 = v0;
  v27 = v4;
  sub_1B2111958();
  v26 = v5;
  v7 = *(v6 + 96);
  v8 = *(v6 + 80);
  sub_1B2117A40();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1B212D540();
  v10 = sub_1B2252B00();
  sub_1B211280C();
  v25 = v11;
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v23 - v13;
  sub_1B21115E0();
  v24 = v15;
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v16);
  sub_1B211504C();
  (*(v7 + 16))(v8, v7);
  if (!v1)
  {
    v17 = v24;
    v18 = v25;
    sub_1B2115BB4(v14, 1, AssociatedTypeWitness);
    if (v19)
    {
      (*(v18 + 8))(v14, v10);
      v22 = 1;
      v20 = v27;
      v21 = v26;
    }

    else
    {
      (*(v17 + 32))(v2, v14, AssociatedTypeWitness);
      v20 = v27;
      (*(v3 + 24))(v2);
      v21 = v26;
      (*(v17 + 8))(v2, AssociatedTypeWitness);
      v22 = 0;
    }

    sub_1B21117B4(v20, v22, 1, *(v21 + 88));
  }

  sub_1B2112FDC();
}

uint64_t MapCursor.forEach(_:)()
{
  sub_1B212CD74();
  sub_1B212CD74();
  v0 = sub_1B211401C();
  return v1(v0);
}

uint64_t sub_1B218DAF4(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4)
{
  v6 = *(*a4 + 88);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v13 - v9;
  result = (*(v11 + 24))(v8);
  if (!v4)
  {
    a2(v10);
    return (*(v7 + 8))(v10, v6);
  }

  return result;
}

void PrefixCursor.next()()
{
  sub_1B2111640();
  sub_1B211FDE0();
  v6 = *(v5 + 88);
  v8 = *(v7 + 80);
  sub_1B2117A40();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_1B2115E58(AssociatedTypeWitness);
  sub_1B211280C();
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v11);
  sub_1B211504C();
  v13 = *(v3 + 24);
  v12 = *(v3 + 32);
  if (v12 >= v13)
  {
    v18 = v1;
    goto LABEL_7;
  }

  *(v3 + 32) = v12 + 1;
  (*(v6 + 16))(v8, v6);
  if (!v0)
  {
    sub_1B211471C(v4);
    if (!v14)
    {
      sub_1B2111808();
      sub_1B218E808();
      v17();
      v18 = v1;
      v19 = 0;
LABEL_8:
      sub_1B21117B4(v18, v19, 1, v2);
      goto LABEL_9;
    }

    v15 = sub_1B211ACF8();
    v16(v15, v10);
    *(v3 + 32) = v13;
    v18 = v1;
LABEL_7:
    v19 = 1;
    goto LABEL_8;
  }

LABEL_9:
  sub_1B2111FB4();
  sub_1B2112FDC();
}

uint64_t PrefixCursor.__deallocating_deinit()
{
  PrefixCursor.deinit();
  v0 = sub_1B2114ED8();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void PrefixWhileCursor.next()()
{
  sub_1B2111640();
  sub_1B211FDE0();
  sub_1B2117A40();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_1B2115E58(AssociatedTypeWitness);
  sub_1B211280C();
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v8);
  sub_1B21352EC();
  sub_1B21115E0();
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v9);
  sub_1B21182D8();
  if (*(v4 + 40))
  {
    v13 = 1;
  }

  else
  {
    v19 = v12;
    v20 = v11;
    v14 = sub_1B2111658();
    v15(v14);
    if (v0)
    {
      goto LABEL_5;
    }

    sub_1B211471C(v2);
    if (v16)
    {
      v10 = (*(v19 + 8))(v2, v7);
      v13 = 1;
    }

    else
    {
      v17 = *(v20 + 32);
      sub_1B21262CC();
      v17();
      v18 = (*(v4 + 24))(v5);
      if (v18)
      {
        v10 = (v17)(v1, v5, v3);
        v13 = 0;
      }

      else
      {
        v10 = (*(v20 + 8))(v5, v3);
        v13 = 1;
        *(v4 + 40) = 1;
      }
    }
  }

  sub_1B214CBC0(v10, v13);
LABEL_5:
  sub_1B2111FB4();
  sub_1B2112FDC();
}

unint64_t sub_1B218E094(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B2252210();

  return sub_1B218E0F0(a1, v6, a2, a3);
}

unint64_t sub_1B218E0F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[0] = a1;
  v15[1] = a4;
  v6 = *(a3 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v4;
  v17 = v4 + 64;
  v10 = ~(-1 << *(v4 + 32));
  for (i = v11 & v10; ((1 << i) & *(v17 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v10)
  {
    (*(v6 + 16))(v9, *(v16 + 48) + *(v6 + 72) * i, a3, v7);
    v13 = sub_1B2252270();
    (*(v6 + 8))(v9, a3);
    if (v13)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_1B218E264(unint64_t a1, uint64_t a2, uint64_t a3)
{
  result = _swift_isClassOrObjCExistentialType();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = a2 & 0xFFFFFFFFFFFFFF8;
  if ((result & 1) == 0)
  {
    v6 = a2;
  }

  if (*(v6 + 16) <= a1)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1B218E7F0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(v4 - 72) = v3;
  *(v4 - 112) = result;
  *(v4 - 104) = a2;
  *(v4 - 144) = a3;
  return result;
}

uint64_t sub_1B218E82C(uint64_t a1, uint64_t a2)
{

  return swift_getTupleTypeMetadata2();
}

uint64_t sub_1B218E84C()
{
  sub_1B2117FC0();
  sub_1B21115E0();
  MEMORY[0x1EEE9AC00](v0);
  sub_1B2111844();
  sub_1B211473C();
  v1();
  sub_1B211D894(v6);

  v2 = Row.__allocating_init(_:)(v6[1]);
  v3 = sub_1B2111F44();
  v4(v3);
  return v2;
}

uint64_t sub_1B218E934@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_1B21619D8(&qword_1EB7A0E30, &unk_1B2259360);
  v6 = MEMORY[0x1E69E7CC0];
  v7 = sub_1B2252190();
  *a3 = v6;
  a3[1] = v7;
  v8 = sub_1B2111F44();
  v9(v8);
  v10 = *(*(a2 - 8) + 8);

  return v10(a1, a2);
}

uint64_t sub_1B218EA04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1B218FA48(v3[1], v28);
  v8 = v29;
  sub_1B212AC5C(v28, qword_1EB7A1570, &qword_1B225A4D0);
  if (v8 == 1)
  {
    v27 = a1;
    v25 = a2;
    v26 = a3;
    result = sub_1B2252220();
    v10 = result;
    v12 = v11;
    v13 = 0;
    v14 = *(v7 + 16);
    for (i = (v7 + 40); ; i += 2)
    {
      if (v14 == v13)
      {

        v22 = v27;
        sub_1B21446E0(v27, v28);
        v23 = v25;
        v24 = v26;
        goto LABEL_15;
      }

      if (v13 >= *(v7 + 16))
      {
        break;
      }

      v17 = *(i - 1);
      v16 = *i;
      if (sub_1B2252220() == v10 && v18 == v12)
      {

LABEL_14:

        v22 = v27;
        sub_1B21446E0(v27, v28);
        v23 = v17;
        v24 = v16;
LABEL_15:
        sub_1B21A3D20(v28, v23, v24);
        v21 = v22;
        return sub_1B212AC5C(v21, &qword_1EB7A0E30, &unk_1B2259360);
      }

      v20 = sub_1B22531F0();

      if (v20)
      {
        goto LABEL_14;
      }

      ++v13;
    }

    __break(1u);
  }

  else
  {
    sub_1B21446E0(a1, v28);
    sub_1B21A3D20(v28, a2, a3);
    v21 = a1;
    return sub_1B212AC5C(v21, &qword_1EB7A0E30, &unk_1B2259360);
  }

  return result;
}

uint64_t static EncodableRecord.databaseEncodingUserInfo.getter()
{
  sub_1B2252E60();

  return sub_1B2252190();
}

uint64_t static EncodableRecord.databaseJSONEncoder(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1B2251A70();
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1B2111844();
  v27 = sub_1B2251AD0();
  sub_1B211280C();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  sub_1B2111844();
  v10 = v9 - v8;
  v11 = sub_1B2251AA0();
  sub_1B211280C();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  sub_1B2111844();
  v17 = v16 - v15;
  v18 = sub_1B2251A90();
  sub_1B211280C();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  sub_1B2111844();
  v24 = v23 - v22;
  sub_1B2251B20();
  swift_allocObject();
  v25 = sub_1B2251B10();
  (*(v20 + 104))(v24, *MEMORY[0x1E6967F98], v18);
  sub_1B2251AB0();
  (*(v13 + 104))(v17, *MEMORY[0x1E6967FB0], v11);
  sub_1B2251AC0();
  (*(v6 + 104))(v10, *MEMORY[0x1E6967FE8], v27);
  sub_1B2251AE0();
  sub_1B2251A60();
  sub_1B2251A80();
  (*(a4 + 16))(a3);
  sub_1B2225128();

  sub_1B2251B00();
  return v25;
}

void static EncodableRecord.databaseDateEncodingStrategy.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 2;
}

uint64_t PersistenceContainer.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B2144750(a1, a2, a3, v5);

  sub_1B212AC5C(a1, &qword_1EB7A0E30, &unk_1B2259360);
  return sub_1B212AC5C(v5, qword_1EB7A1570, &qword_1B225A4D0);
}

void sub_1B218EF84(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  if (*(v2 + 16))
  {
    if (*(v2 + 16) == 1)
    {
      v4(a1);
    }

    else
    {
      switch(v4)
      {
        case 1uLL:
          sub_1B2251E40();
          goto LABEL_21;
        case 2uLL:
          goto LABEL_14;
        case 3uLL:
          sub_1B2251E70();
          v18 = sub_1B2115BCC(v23);
          if (!(v20 ^ v21 | v19))
          {
            goto LABEL_25;
          }

          if (v18 <= -9.22337204e18)
          {
            goto LABEL_28;
          }

          if (v18 < 9.22337204e18)
          {
            goto LABEL_19;
          }

          goto LABEL_29;
        case 4uLL:
          sub_1B2251E70();
          v18 = sub_1B2115BCC(v17 * 1000.0);
          if (v20 ^ v21 | v19)
          {
            if (v18 <= -9.22337204e18)
            {
              __break(1u);
LABEL_28:
              __break(1u);
LABEL_29:
              __break(1u);
            }

            else if (v18 < 9.22337204e18)
            {
LABEL_19:
              *(a2 + 24) = MEMORY[0x1E69E7360];
              *(a2 + 32) = &protocol witness table for Int64;
              *a2 = v18;
            }

            else
            {
              __break(1u);
LABEL_14:
              sub_1B2251E70();
LABEL_21:
              *(a2 + 24) = MEMORY[0x1E69E63B0];
              *(a2 + 32) = &protocol witness table for Double;
              *a2 = v22;
            }
          }

          else
          {
            __break(1u);
LABEL_25:
            __break(1u);
LABEL_26:
            swift_once();
LABEL_8:
            v11 = qword_1ED85D6E8;
            v12 = sub_1B2251E50();
            v13 = [v11 stringFromDate_];

            v14 = sub_1B22522A0();
            v16 = v15;

            *a2 = v14;
            *(a2 + 8) = v16;
            *(a2 + 16) = 2;
          }

          break;
        case 5uLL:
          if (qword_1EB7A0D40 != -1)
          {
            swift_once();
          }

          v24 = qword_1EB7A18F8;
          v5 = sub_1B2251E50();
          v6 = [v24 stringFromDate_];
          goto LABEL_5;
        default:
          *(a2 + 24) = &type metadata for DatabaseValue;
          *(a2 + 32) = &protocol witness table for DatabaseValue;
          if (qword_1ED85D6E0 == -1)
          {
            goto LABEL_8;
          }

          goto LABEL_26;
      }
    }
  }

  else
  {
    v5 = sub_1B2251E50();
    v6 = [v4 stringFromDate_];
LABEL_5:
    v7 = v6;

    v8 = sub_1B22522A0();
    v10 = v9;

    *(a2 + 24) = MEMORY[0x1E69E6158];
    *(a2 + 32) = &protocol witness table for String;
    *a2 = v8;
    *(a2 + 8) = v10;
  }
}

void *EncodableRecord.databaseDictionary.getter()
{
  sub_1B211280C();
  MEMORY[0x1EEE9AC00](v0);
  sub_1B2111844();
  sub_1B21142D0();
  v1();
  v2 = sub_1B2111F44();
  sub_1B218E934(v2, v3, v4);

  sub_1B21619D8(&qword_1EB7A1900, &qword_1B2259370);
  result = sub_1B2252EE0();
  v6 = result;
  v7 = 0;
  v8 = v41 + 64;
  v9 = 1 << *(v41 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v41 + 64);
  v12 = (v9 + 63) >> 6;
  v30 = result + 8;
  v31 = v41;
  if (v11)
  {
    while (1)
    {
      v13 = __clz(__rbit64(v11));
      v32 = (v11 - 1) & v11;
LABEL_10:
      v16 = v13 | (v7 << 6);
      v17 = (*(v31 + 48) + 16 * v16);
      v33 = *v17;
      v34 = v17[1];
      sub_1B21446E0(*(v31 + 56) + 40 * v16, &v40);
      sub_1B21446E0(&v40, v37);
      v18 = v38;
      if (v38)
      {
        v19 = v6;
        v20 = v39;
        sub_1B21139A0(v37, v38);
        v21 = *(v20 + 24);

        v22 = v20;
        v6 = v19;
        v21(v35, v18, v22);
        v23 = v35[0];
        v18 = v35[1];
        v24 = v36;
        sub_1B2113208(v37);
      }

      else
      {

        sub_1B212AC5C(v37, &qword_1EB7A0E30, &unk_1B2259360);
        v23 = 0;
        v24 = 4;
      }

      result = sub_1B212AC5C(&v40, &qword_1EB7A0E30, &unk_1B2259360);
      *(v30 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v25 = (v6[6] + 16 * v16);
      *v25 = v33;
      v25[1] = v34;
      v26 = v6[7] + 24 * v16;
      *v26 = v23;
      *(v26 + 8) = v18;
      *(v26 + 16) = v24;
      v27 = v6[2];
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (v28)
      {
        break;
      }

      v6[2] = v29;
      v11 = v32;
      if (!v32)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        return v6;
      }

      v15 = *(v8 + 8 * v7);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v32 = (v15 - 1) & v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

BOOL EncodableRecord.databaseEquals(_:)()
{
  sub_1B2117FC0();
  sub_1B21115E0();
  v1 = v0;
  MEMORY[0x1EEE9AC00](v2);
  sub_1B2111844();
  v3 = *(v1 + 16);
  sub_1B21142D0();
  v3();
  sub_1B211D894(&v10);
  sub_1B211473C();
  v3();
  sub_1B211D894(v9);
  v4 = v9[0];
  v5 = v9[1];
  sub_1B2117C44();
  v6 = swift_allocObject();
  *(v6 + 16) = v10;
  *(v6 + 32) = 0;

  sub_1B21903D4(&v11, v6, v4, v5);
  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();

  v7 = v12;
  if (v12)
  {
    sub_1B21906DC(v11, v12, v13, v14, v15);
  }

  return v7 == 0;
}

uint64_t EncodableRecord.databaseChanges<A>(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v22[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x1EEE9AC00](v9);
  (*(v12 + 16))(&v22[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)], v13, a2, v10);
  sub_1B211314C();
  sub_1B218E934(v14, v15, v16);
  (*(v6 + 16))(v8, a1, a3);
  sub_1B218E934(v8, a3, &v23);
  sub_1B2117C44();
  v17 = swift_allocObject();
  *(v17 + 16) = v24;
  *(v17 + 32) = 0;
  sub_1B2117C44();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = v23;
  sub_1B21619D8(&qword_1EB7A1908, &qword_1B2259378);
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1B2190738;
  *(v19 + 24) = v18;
  *&v24 = MEMORY[0x1E69E7CC8];

  sub_1B2192304(v20, 1, &v24);

  return v24;
}

double PersistenceContainer.subscript.getter@<D0>(uint64_t a1@<X8>)
{
  if (*(*(v1 + 8) + 16) && (v3 = sub_1B211E590(), (v4 & 1) != 0))
  {
    v5 = sub_1B2115650(v3);
    v6 = sub_1B21446E0(v5, &v18);
    *&result = sub_1B211D5C4(v6, v7, v8, v9, v10, v11, v12, v13, v14, v17, v15, v18, v19).n128_u64[0];
  }

  else
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1B218F978(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  sub_1B21446E0(a1, v6);

  return PersistenceContainer.subscript.setter(v6, v3, v4);
}

void sub_1B218F9CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 16))
  {
    sub_1B211E590();
    if (v4)
    {
    }
  }

  sub_1B21142D0();
}

double sub_1B218FA48@<D0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_1B211E590(), (v5 & 1) != 0))
  {
    v6 = *(a1 + 56) + 40 * v4;

    sub_1B21446E0(v6, a2);
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *&result = 1;
    *(a2 + 24) = xmmword_1B2259350;
  }

  return result;
}

uint64_t sub_1B218FABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  sub_1B212CF80();
  sub_1B21C7908();
  v9 = v8;
  if (!v10)
  {

    sub_1B21449A8();
    v11 = *(*v5 + 16);
    sub_1B2144A08();
    v12 = *v5;
    *(v12 + 16) = v11 + 1;
    v13 = v12 + 16 * v11;
    *(v13 + 32) = a4;
    *(v13 + 40) = a5;
    *v5 = v12;
  }

  return v9;
}

void (*PersistenceContainer.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  v7 = sub_1B2170FB8(0x90uLL);
  *a1 = v7;
  *(v7 + 16) = a3;
  *(v7 + 17) = v3;
  *(v7 + 15) = a2;
  if (*(*(v3 + 8) + 16) && (v8 = sub_1B211E590(), (v9 & 1) != 0))
  {
    v10 = sub_1B2115650(v8);
    sub_1B21446E0(v10, (v7 + 40));
    v11 = *(v7 + 56);
    *v7 = *(v7 + 40);
    *(v7 + 1) = v11;
    *(v7 + 4) = *(v7 + 9);
  }

  else
  {
    *(v7 + 4) = 0;
    *v7 = 0u;
    *(v7 + 1) = 0u;
  }

  return sub_1B218FC44;
}

void sub_1B218FC44(uint64_t **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_1B21446E0(*a1, (v2 + 5));
    sub_1B211473C();
    sub_1B2144750(v3, v4, v5, v6);
    sub_1B212AC5C((v2 + 10), qword_1EB7A1570, &qword_1B225A4D0);
    sub_1B21142D0();
    sub_1B212AC5C(v7, v8, v9);
    sub_1B21142D0();
  }

  else
  {
    sub_1B2144750(*a1, v2[15], v2[16], (v2 + 5));
    sub_1B212AC5C((v2 + 5), qword_1EB7A1570, &qword_1B225A4D0);
    v11 = &qword_1EB7A0E30;
    v12 = &unk_1B2259360;
    v10 = v2;
  }

  sub_1B212AC5C(v10, v11, v12);

  free(v2);
}

uint64_t PersistenceContainer.subscript.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *(v3 + 8);
  (*(a2 + 16))(a1, a2);
  if (*(v5 + 16) && (v6 = sub_1B211E590(), (v7 & 1) != 0))
  {
    v8 = sub_1B21446E0(*(v5 + 56) + 40 * v6, &v20);
    sub_1B211D5C4(v8, v9, v10, v11, v12, v13, v14, v15, v16, v19, v17, v20, v21);
  }

  else
  {
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }
}

uint64_t sub_1B218FE34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 16);
  v6 = *(a3 + a4 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v14[-v8 - 8];
  (*(v10 + 16))(&v14[-v8 - 8], v11, v5, v7);
  sub_1B21446E0(a1, v14);
  return PersistenceContainer.subscript.setter(v14, v9, v5, v6);
}

uint64_t PersistenceContainer.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (*(a4 + 16))(a3, a4);
  v7 = v6;
  sub_1B21446E0(a1, v12);
  sub_1B2144750(v12, v5, v7, v11);

  v8 = sub_1B2111F44();
  v9(v8);
  sub_1B212AC5C(a1, &qword_1EB7A0E30, &unk_1B2259360);
  sub_1B212AC5C(v11, qword_1EB7A1570, &qword_1B225A4D0);
  return sub_1B212AC5C(v12, &qword_1EB7A0E30, &unk_1B2259360);
}

void (*PersistenceContainer.subscript.modify())(uint64_t **a1, char a2)
{
  sub_1B2111FC0();
  v4 = v3;
  v5 = sub_1B2170FB8(0x80uLL);
  *v4 = v5;
  v5[11] = v1;
  v5[12] = v0;
  v5[10] = v2;
  sub_1B21115E0();
  *(v6 + 104) = v7;
  v9 = *(v8 + 64);
  v5[14] = sub_1B2170FB8(v9);
  v5[15] = sub_1B2170FB8(v9);
  sub_1B211314C();
  v10();
  sub_1B211473C();
  PersistenceContainer.subscript.getter(v11, v12, v13);
  return sub_1B2190134;
}

void sub_1B2190134(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[14];
  v3 = (*a1)[15];
  if (a2)
  {
    v6 = v2[10];
    v5 = v2[11];
    sub_1B21446E0(*a1, (v2 + 5));
    v7 = sub_1B2111F44();
    v8(v7);
    PersistenceContainer.subscript.setter((v2 + 5), v4, v6, v5);
    sub_1B212AC5C(v2, &qword_1EB7A0E30, &unk_1B2259360);
  }

  else
  {
    PersistenceContainer.subscript.setter(*a1, v2[15], v2[10], v2[11]);
  }

  free(v3);
  free(v4);

  free(v2);
}

uint64_t sub_1B219020C()
{
  sub_1B2117FC0();
  v2 = v1;
  v4 = *v0;
  v3 = v0[1];
  if (*(v3 + 16) && (sub_1B2111F44(), v5 = sub_1B211E590(), (v6 & 1) != 0))
  {
    v7 = sub_1B2115650(v5);
    result = sub_1B21446E0(v7, &v26);
    v9 = v27;
    *v2 = v26;
    *(v2 + 16) = v9;
    *(v2 + 32) = v28;
  }

  else
  {
    v25 = v2;
    sub_1B2111F44();
    result = sub_1B2252220();
    v10 = result;
    v12 = v11;
    v13 = 0;
    v14 = *(v4 + 16);
    for (i = (v4 + 40); ; i += 2)
    {
      if (v14 == v13)
      {
LABEL_16:

        *(v25 + 32) = 0;
        *v25 = 0u;
        *(v25 + 16) = 0u;
        return result;
      }

      if (v13 >= *(v4 + 16))
      {
        break;
      }

      if (!*(v3 + 16))
      {
        goto LABEL_21;
      }

      v16 = *i;

      result = sub_1B211E590();
      if ((v17 & 1) == 0)
      {
        goto LABEL_22;
      }

      v18 = sub_1B2115650(result);
      sub_1B21446E0(v18, &v27);
      if (!v16)
      {
        goto LABEL_16;
      }

      v26 = v27;
      v27 = v28;
      *&v28 = v29;
      v19 = sub_1B2252220();
      v21 = v20;

      if (v19 == v10 && v21 == v12)
      {

LABEL_18:

        v24 = v27;
        *v25 = v26;
        *(v25 + 16) = v24;
        *(v25 + 32) = v28;
        return result;
      }

      v23 = sub_1B22531F0();

      if (v23)
      {
        goto LABEL_18;
      }

      result = sub_1B212AC5C(&v26, &qword_1EB7A0E30, &unk_1B2259360);
      ++v13;
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }

  return result;
}

void *sub_1B21903D4@<X0>(void *__return_ptr a1@<X8>, void *a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  v4 = a2;
  v5 = &qword_1EB7A0E30;
  for (i = &unk_1B2259360; ; i = v36)
  {
    result = swift_beginAccess();
    v8 = v4[2];
    v9 = *(v8 + 16);
    v10 = v4[4];
    if (v10 == v9)
    {
      v11 = 0;
      v12 = 0;
      v53 = 0;
      v51 = 0u;
      v52 = 0u;
      v13 = 1;
      v50 = 0u;
      goto LABEL_8;
    }

    if (v10 >= v9)
    {
      break;
    }

    if (!*(v4[3] + 16))
    {
      goto LABEL_21;
    }

    v14 = v8 + 16 * v10;
    v12 = *(v14 + 32);
    v11 = *(v14 + 40);

    result = sub_1B211E590();
    if ((v15 & 1) == 0)
    {
      goto LABEL_22;
    }

    v16 = sub_1B2115650(result);
    sub_1B21446E0(v16, &v44);
    v51 = v44;
    v52 = v45;
    v53 = v46;
    *&v50 = v12;
    *(&v50 + 1) = v11;
    v4[4] = v10 + 1;
    v13 = v11 == 0;
LABEL_8:
    swift_endAccess();
    if (v13)
    {
      result = sub_1B212AC5C(&v50, &qword_1EB7A10D8, &qword_1B2254918);
      *(a1 + 32) = 0;
      *a1 = 0u;
      *(a1 + 1) = 0u;
      return result;
    }

    v54[0] = v51;
    v54[1] = v52;
    v55 = v53;
    v42 = a3;
    v43 = a4;
    sub_1B219020C();
    sub_1B21446E0(&v50, &v42);
    v17 = *(&v44 + 1);
    v38 = v12;
    if (*(&v44 + 1))
    {
      v18 = v45;
      sub_1B21139A0(&v42, *(&v44 + 1));
      (*(v18 + 24))(&v47, v17, v18);
      v19 = v47;
      v17 = v48;
      v20 = v49;
      sub_1B2113208(&v42);
    }

    else
    {
      sub_1B212CF80();
      sub_1B212AC5C(v21, v22, v23);
      v19 = 0;
      v20 = 4;
    }

    sub_1B21446E0(v54, &v42);
    v24 = *(&v44 + 1);
    if (*(&v44 + 1))
    {
      v25 = v5;
      v26 = v45;
      sub_1B21139A0(&v42, *(&v44 + 1));
      (*(v26 + 24))(&v47, v24, v26);
      v27 = v47;
      v24 = v48;
      v28 = v49;
      sub_1B2113208(&v42);
    }

    else
    {
      sub_1B212CF80();
      sub_1B212AC5C(v29, v30, v31);
      v27 = 0;
      v25 = v5;
      v28 = 4;
    }

    v42 = v27;
    v43 = v24;
    LOBYTE(v44) = v28;
    v47 = v19;
    v48 = v17;
    v49 = v20;
    v32 = static DatabaseValue.== infix(_:_:)(&v42, &v47);
    sub_1B212AC5C(&v50, v25, i);
    v33 = i;
    v34 = v25;
    v35 = v25;
    v36 = v33;
    sub_1B212AC5C(v54, v35, v33);
    result = sub_1B2113A44(v27, v24, v28);
    if (!v32)
    {
      *a1 = v38;
      a1[1] = v11;
      a1[2] = v19;
      a1[3] = v17;
      *(a1 + 32) = v20;
      return result;
    }

    sub_1B2113A44(v19, v17, v20);
    v5 = v34;
    v4 = a2;
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

void sub_1B21906DC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  if (a2)
  {

    sub_1B2113A44(a3, a4, a5);
  }
}

id sub_1B2190744()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
  result = [v0 setFormatOptions_];
  qword_1EB7A18F8 = v0;
  return result;
}

uint64_t DatabaseUUIDEncodingStrategy.hashValue.getter()
{
  v1 = *v0;
  sub_1B2253420();
  MEMORY[0x1B2742F10](v1);
  return sub_1B2253470();
}

uint64_t sub_1B2190834(uint64_t a1, unint64_t a2)
{
  v64 = sub_1B2251B80();
  sub_1B211280C();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  sub_1B2111844();
  v10 = v9 - v8;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v11 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v11 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11)
  {

    return a1;
  }

  v12 = sub_1B2252390();
  v66 = a2;
  v13 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v13 = 11;
  }

  v62 = 4 * v11;
  if (4 * v11 < v12 >> 14)
  {
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
  }

  else
  {
    v65 = v13 | (v11 << 16);
    v63 = (v6 + 8);
    v14 = MEMORY[0x1E69E7CC0];
    v2 = 15;
    while (1)
    {
      sub_1B2251B50();
      sub_1B2156990();
      v15 = sub_1B2252B70();
      v17 = v16;
      v18 = *v63;
      (*v63)(v10, v64);
      if (v17)
      {
        v19 = v2 >> 14;
        goto LABEL_27;
      }

      v19 = v15 >> 14;
      if (v15 >> 14 < v2 >> 14)
      {
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1B212DE50();
        v14 = v33;
      }

      v21 = *(v14 + 16);
      v20 = *(v14 + 24);
      if (v21 >= v20 >> 1)
      {
        v34 = sub_1B211156C(v20);
        sub_1B216270C(v34, v21 + 1, 1, v14);
        v14 = v35;
      }

      *(v14 + 16) = v21 + 1;
      v22 = v14 + 16 * v21;
      *(v22 + 32) = v2;
      *(v22 + 40) = v15;
      if (v62 < v19)
      {
        goto LABEL_38;
      }

      v2 = v66;
      sub_1B2251B40();
      v23 = sub_1B2252B70();
      v25 = v24;
      v27 = v26;
      v18(v10, v64);
      if (v27)
      {
        break;
      }

      if ((sub_1B2252390() ^ v23) >= 0x4000)
      {
        v28 = sub_1B22523A0();
        if (v19 > v28 >> 14)
        {
          goto LABEL_40;
        }

        v29 = v28;
        v31 = *(v14 + 16);
        v30 = *(v14 + 24);
        if (v31 >= v30 >> 1)
        {
          v36 = sub_1B211156C(v30);
          sub_1B216270C(v36, v31 + 1, 1, v14);
          v14 = v37;
        }

        *(v14 + 16) = v31 + 1;
        v32 = v14 + 16 * v31;
        *(v32 + 32) = v15;
        *(v32 + 40) = v29;
        v15 = v29;
      }

      v2 = v15;
      if (v62 < v25 >> 14)
      {
        goto LABEL_39;
      }
    }

    v2 = v15;
LABEL_27:
    if (v62 < v19)
    {
      goto LABEL_42;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_29;
    }
  }

  sub_1B212DE50();
  v14 = v59;
LABEL_29:
  v43 = *(v14 + 16);
  v42 = *(v14 + 24);
  v44 = v43 + 1;
  if (v43 >= v42 >> 1)
  {
    v60 = sub_1B211156C(v42);
    sub_1B216270C(v60, v43 + 1, 1, v14);
    v14 = v61;
  }

  *(v14 + 16) = v44;
  v45 = v14 + 16 * v43;
  *(v45 + 32) = v2;
  *(v45 + 40) = v65;
  v67 = MEMORY[0x1E69E7CC0];
  sub_1B2116B10(0, v43 + 1, 0, v38, v39, v40, v41);
  v46 = v14 + 40;
  do
  {
    sub_1B22524A0();
    v47 = sub_1B2252B10();
    v49 = v48;

    v51 = *(v67 + 16);
    v50 = *(v67 + 24);
    if (v51 >= v50 >> 1)
    {
      v53 = sub_1B211156C(v50);
      sub_1B2116B10(v53, v51 + 1, 1, v54, v55, v56, v57);
    }

    v46 += 16;
    *(v67 + 16) = v51 + 1;
    v52 = v67 + 16 * v51;
    *(v52 + 32) = v47;
    *(v52 + 40) = v49;
    --v44;
  }

  while (v44);

  sub_1B21619D8(&qword_1EB7A0DA0, &qword_1B2254340);
  sub_1B215175C();
  a1 = sub_1B2252250();

  return a1;
}

unint64_t sub_1B2190C9C()
{
  sub_1B211606C();
  sub_1B2138CB8();
  v1 = sub_1B2253470();

  return sub_1B2190DE8(v0, v1);
}

uint64_t sub_1B2190CF8()
{
  sub_1B211606C();
  sub_1B2145DB0(v3, *v0);
  sub_1B2252370();
  sub_1B2145E84();
  sub_1B2145E84();
  v1 = sub_1B2253470();

  return sub_1B2190EAC(v0, v1);
}

unint64_t sub_1B2190D8C()
{
  sub_1B211606C();
  sub_1B2192880();
  v1 = sub_1B2253470();

  return sub_1B219122C(v0, v1);
}

unint64_t sub_1B2190DE8(uint64_t a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v3 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    type metadata accessor for TableAlias();

    v6 = static TableAlias.== infix(_:_:)();

    if (v6)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_1B2190EAC(void *a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  v31 = v2 + 64;
  if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
  {
    return v4;
  }

  v30 = ~v3;
  v5 = 0x4B4341424C4C4F52;
  v32 = *a1;
  v34 = a1[2];
  v35 = a1[1];
  v6 = a1[3];
  v29 = a1[4];
  while (1)
  {
    v7 = *(v33 + 48) + 40 * v4;
    v9 = *(v7 + 8);
    v8 = *(v7 + 16);
    v10 = *(v7 + 24);
    v11 = *(v7 + 32);
    v12 = 0xE800000000000000;
    v13 = v5;
    switch(*v7)
    {
      case 1:
        v12 = 0xE500000000000000;
        v13 = 0x54524F4241;
        break;
      case 2:
        v12 = 0xE400000000000000;
        v13 = 1279869254;
        break;
      case 3:
        v12 = 0xE600000000000000;
        v13 = 0x45524F4E4749;
        break;
      case 4:
        v12 = 0xE700000000000000;
        v13 = 0x4543414C504552;
        break;
      default:
        break;
    }

    v14 = 0xE800000000000000;
    v15 = v5;
    switch(v32)
    {
      case 1:
        v14 = 0xE500000000000000;
        v5 = 0x54524F4241;
        break;
      case 2:
        v14 = 0xE400000000000000;
        v5 = 1279869254;
        break;
      case 3:
        v14 = 0xE600000000000000;
        v5 = 0x45524F4E4749;
        break;
      case 4:
        v14 = 0xE700000000000000;
        v5 = 0x4543414C504552;
        break;
      default:
        break;
    }

    if (v13 == v5 && v12 == v14)
    {
    }

    else
    {
      v17 = sub_1B22531F0();

      if ((v17 & 1) == 0)
      {
        goto LABEL_49;
      }
    }

    if (v9 != v35 || v8 != v34)
    {
      result = sub_1B22531F0();
      if ((result & 1) == 0)
      {
        goto LABEL_49;
      }
    }

    v20 = *(v10 + 16);
    if (v20 != *(v6 + 16))
    {
      goto LABEL_49;
    }

    if (v20 && v10 != v6)
    {
      break;
    }

LABEL_38:
    v25 = *(v11 + 16);
    if (v25 == *(v29 + 16))
    {
      if (!v25 || v11 == v29)
      {
LABEL_51:

        return v4;
      }

      v26 = (v11 + 40);
      v27 = (v29 + 40);
      while (1)
      {
        v28 = *(v26 - 1) == *(v27 - 1) && *v26 == *v27;
        if (!v28 && (sub_1B22531F0() & 1) == 0)
        {
          break;
        }

        v26 += 2;
        v27 += 2;
        if (!--v25)
        {
          goto LABEL_51;
        }
      }
    }

LABEL_49:

    v4 = (v4 + 1) & v30;
    v5 = v15;
    if (((*(v31 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
    {
      return v4;
    }
  }

  v22 = (v10 + 40);
  v23 = (v6 + 40);
  while (v20)
  {
    result = *(v22 - 1);
    if (result != *(v23 - 1) || *v22 != *v23)
    {
      result = sub_1B22531F0();
      if ((result & 1) == 0)
      {
        goto LABEL_49;
      }
    }

    v22 += 2;
    v23 += 2;
    if (!--v20)
    {
      goto LABEL_38;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1B219122C(uint64_t a1, uint64_t a2)
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = v2 + 64;
  v5 = -1 << *(v2 + 32);
  result = a2 & ~v5;
  if (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) == 0)
  {
    return result;
  }

  v7 = ~v5;
  v8 = *(a1 + 16);
  v37 = (a1 + 48);
  v33 = ~v5;
  v34 = v2 + 64;
  v39 = v8;
  while (1)
  {
    v9 = *(*(v2 + 48) + 8 * result);
    if (*(v9 + 16) != v8)
    {
      goto LABEL_71;
    }

    if (!v8 || v9 == a1)
    {
      return result;
    }

    v38 = result;

    v10 = 0;
    v11 = (v9 + 48);
    v12 = v37;
    v40 = v9;
    while (2)
    {
      if (v10 >= *(v9 + 16))
      {
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
        __break(1u);
        __break(1u);
        __break(1u);
        __break(1u);
        __break(1u);
        __break(1u);
        __break(1u);
        __break(1u);
        __break(1u);
        __break(1u);
        __break(1u);
        __break(1u);
        __break(1u);
        __break(1u);
        __break(1u);
        __break(1u);
        __break(1u);
        __break(1u);
        __break(1u);
        __break(1u);
        __break(1u);
      }

      if (v8 == v10)
      {
        goto LABEL_77;
      }

      ++v10;
      v13 = *(v11 - 2);
      v14 = *(v11 - 1);
      v15 = *v11;
      v16 = *(v12 - 2);
      v17 = *(v12 - 1);
      v18 = *v12;
      switch(*v11)
      {
        case 1:
          if (*v12)
          {
            if (v18 != 1)
            {
              goto LABEL_68;
            }

            sub_1B2113A44(*(v11 - 2), *(v11 - 1), 1);
            sub_1B2113A44(v16, v17, 1);
            sub_1B2113A44(v13, v14, 1);
            v28 = *&v13 == *&v16;
          }

          else
          {
            sub_1B2113A44(*(v11 - 2), *(v11 - 1), 1);
            sub_1B2113A44(v16, v17, 0);
            sub_1B2113A44(v13, v14, 1);
            if (*&v13 <= -9.22337204e18 || *&v13 >= 9.22337204e18 || trunc(*&v13) != *&v13)
            {
              goto LABEL_69;
            }

            v28 = v16 == *&v13;
          }

          goto LABEL_48;
        case 2:
          if (v18 == 2)
          {
            if (v13 == v16 && v14 == v17)
            {
              sub_1B2113A20(*(v11 - 2), *(v11 - 1), 2);
              sub_1B2113A20(v13, v14, 2);
              sub_1B2113A44(v13, v14, 2);
              v20 = v13;
              v21 = v14;
              v22 = 2;
LABEL_51:
              sub_1B2113A44(v20, v21, v22);
LABEL_62:
              v9 = v40;
            }

            else
            {
              v24 = sub_1B22531F0();
              sub_1B2113A20(v16, v17, 2);
              sub_1B2113A20(v13, v14, 2);
              sub_1B2113A44(v13, v14, 2);
              sub_1B2113A44(v16, v17, 2);
              v9 = v40;
              if ((v24 & 1) == 0)
              {
                goto LABEL_69;
              }
            }

LABEL_63:
            v12 += 3;
            v11 += 24;
            if (v8 == v10)
            {

              return v38;
            }

            continue;
          }

          sub_1B2113A20(*(v11 - 2), *(v11 - 1), 2);

LABEL_68:
          sub_1B2113A20(v16, v17, v18);
          sub_1B2113A44(v13, v14, v15);
          sub_1B2113A44(v16, v17, v18);
          sub_1B2113A44(v13, v14, v15);
LABEL_69:

          result = v38;
LABEL_70:
          a1 = v35;
          v2 = v36;
          v7 = v33;
          v4 = v34;
LABEL_71:
          result = (result + 1) & v7;
          if (((*(v4 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) == 0)
          {
            return result;
          }

          break;
        case 3:
          if (v18 != 3)
          {
            sub_1B2113A20(*(v11 - 2), *(v11 - 1), 3);
            sub_1B2126638(v13, v14);
            goto LABEL_68;
          }

          if (*&v13 == 0.0 && (v14 == 0xC000000000000000 ? (v25 = v17 >> 62 == 3) : (v25 = 0), v25 && *&v16 == 0.0 && v17 == 0xC000000000000000))
          {
            sub_1B2113A20(0, 0xC000000000000000, 3);
            sub_1B2113A20(0, 0xC000000000000000, 3);
            sub_1B2113A44(0, 0xC000000000000000, 3);
            v26 = 0;
            v27 = 0xC000000000000000;
          }

          else
          {
            switch(v17 >> 62)
            {
              case 1uLL:
                LODWORD(v29) = HIDWORD(v16) - v16;
                if (__OFSUB__(HIDWORD(v16), v16))
                {
                  goto LABEL_78;
                }

                v29 = v29;
LABEL_59:
                if (v29)
                {
                  sub_1B2113A20(*(v12 - 2), *(v12 - 1), 3);
                  sub_1B2113A20(v13, v14, 3);
                  sub_1B2113A44(v13, v14, 3);
                  sub_1B2113A44(v16, v17, 3);

                  result = v38;
                  v8 = v39;
                  goto LABEL_70;
                }

LABEL_60:
                sub_1B2113A20(*(v12 - 2), *(v12 - 1), 3);
                sub_1B2113A20(v13, v14, 3);
                sub_1B2113A44(v13, v14, 3);
                v26 = v16;
                v27 = v17;
                break;
              case 2uLL:
                v31 = *(v16 + 16);
                v30 = *(v16 + 24);
                v32 = __OFSUB__(v30, v31);
                v29 = v30 - v31;
                if (!v32)
                {
                  goto LABEL_59;
                }

                goto LABEL_79;
              case 3uLL:
                goto LABEL_60;
              default:
                v29 = BYTE6(v17);
                goto LABEL_59;
            }
          }

          sub_1B2113A44(v26, v27, 3);
          v8 = v39;
          goto LABEL_62;
        case 4:
          if (v18 != 4 || (v17 | v16) != 0)
          {
            goto LABEL_68;
          }

          sub_1B2113A44(*(v11 - 2), *(v11 - 1), 4);
          sub_1B2113A44(0, 0, 4);
          v20 = v13;
          v21 = v14;
          v22 = 4;
          goto LABEL_51;
        default:
          if (*v12)
          {
            if (v18 != 1)
            {
              goto LABEL_68;
            }

            sub_1B2113A44(*(v11 - 2), *(v11 - 1), 0);
            sub_1B2113A44(v16, v17, 1);
            sub_1B2113A44(v13, v14, 0);
            if (*&v16 <= -9.22337204e18)
            {
              goto LABEL_69;
            }

            v9 = v40;
            if (*&v16 >= 9.22337204e18 || trunc(*&v16) != *&v16 || v13 != *&v16)
            {
              goto LABEL_69;
            }
          }

          else
          {
            sub_1B2113A44(*(v11 - 2), *(v11 - 1), 0);
            sub_1B2113A44(v16, v17, 0);
            sub_1B2113A44(v13, v14, 0);
            v28 = v13 == v16;
LABEL_48:
            v9 = v40;
            if (!v28)
            {
              goto LABEL_69;
            }
          }

          goto LABEL_63;
      }

      break;
    }
  }
}

void sub_1B2192304(uint64_t a1, char a2, void *a3)
{
  while (1)
  {
    sub_1B2252F10();
    if (!v23)
    {

      return;
    }

    v4 = *a3;
    v6 = sub_1B211E590();
    v7 = v4[2];
    v8 = (v5 & 1) == 0;
    v9 = v7 + v8;
    if (__OFADD__(v7, v8))
    {
      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      sub_1B2253390();
      __break(1u);
      goto LABEL_18;
    }

    v10 = v5;
    if (v4[3] < v9)
    {
      break;
    }

    if (a2)
    {
      if (v5)
      {
        goto LABEL_12;
      }
    }

    else
    {
      sub_1B21619D8(&qword_1EB7A1918, &qword_1B226A9E0);
      sub_1B2252E80();
      if (v10)
      {
        goto LABEL_12;
      }
    }

LABEL_9:
    v13 = *a3;
    *(*a3 + 8 * (v6 >> 6) + 64) |= 1 << v6;
    v14 = (v13[6] + 16 * v6);
    *v14 = v22;
    v14[1] = v23;
    v15 = v13[7] + 24 * v6;
    *v15 = v24;
    *(v15 + 8) = v25;
    *(v15 + 16) = v26;
    v16 = v13[2];
    v17 = __OFADD__(v16, 1);
    v18 = v16 + 1;
    if (v17)
    {
      goto LABEL_16;
    }

    v13[2] = v18;
    a2 = 1;
  }

  sub_1B2245C58(v9, a2 & 1);
  v11 = sub_1B211E590();
  if ((v10 & 1) != (v12 & 1))
  {
    goto LABEL_17;
  }

  v6 = v11;
  if ((v10 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_12:
  v19 = swift_allocError();
  swift_willThrow();
  v20 = v19;
  sub_1B21619D8(qword_1EB7A0F98, &unk_1B22595B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1B2113A44(v24, v25, v26);

    return;
  }

LABEL_18:
  sub_1B2252CD0();
  MEMORY[0x1B2741EB0](0xD00000000000001BLL, 0x80000001B226CFA0);
  sub_1B2252E10();
  MEMORY[0x1B2741EB0](39, 0xE100000000000000);
  sub_1B2252EC0();
  __break(1u);
}

unint64_t sub_1B21925D4()
{
  result = qword_1EB7A1910;
  if (!qword_1EB7A1910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7A1910);
  }

  return result;
}

uint64_t sub_1B21926AC(uint64_t a1)
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

_BYTE *storeEnumTagSinglePayload for DatabaseUUIDEncodingStrategy(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1B21927AC(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1B21927C4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B2192818(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void sub_1B2192880()
{
  sub_1B211AD04();
  if (v0)
  {
    v2 = (v1 + 48);
    do
    {
      v3 = *(v2 - 2);
      v4 = *(v2 - 1);
      v6 = *v2;
      v2 += 24;
      v5 = v6;
      switch(v6)
      {
        case 1:
          if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
          {
            v7 = *&v3;
          }

          else
          {
            v7 = 0.0;
          }

          goto LABEL_11;
        case 2:
          sub_1B2113A20(v3, v4, 2);
          sub_1B2114748();
          sub_1B2252370();
          break;
        case 3:
          sub_1B2113A20(v3, v4, 3);
          sub_1B2114748();
          sub_1B2251DF0();
          break;
        case 4:
          MEMORY[0x1B2742F10](0);
          break;
        default:
          v7 = v3;
LABEL_11:
          MEMORY[0x1B2742F40](*&v7);
          break;
      }

      sub_1B2113A44(v3, v4, v5);
      --v0;
    }

    while (v0);
  }
}

uint64_t sub_1B219296C()
{
  v1 = v0;
  type metadata accessor for SchedulingWatchdog();
  v2 = sub_1B21114CC();
  if (v2 && (v3 = *(v2 + 24), , , v3))
  {
    sub_1B2195714(v1, v3);
  }

  else
  {
    result = sub_1B2252EC0();
    __break(1u);
  }

  return result;
}

uint64_t DatabaseRegionObservation.init(tracking:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1B2115660();
  result = swift_allocObject();
  *(result + 16) = a1;
  *a2 = 0;
  *(a2 + 8) = sub_1B219487C;
  *(a2 + 16) = result;
  return result;
}

{
  sub_1B2115660();
  result = swift_allocObject();
  *(result + 16) = a1;
  *a2 = 0;
  *(a2 + 8) = sub_1B21958B0;
  *(a2 + 16) = result;
  return result;
}

void *DatabaseRegionObservation.start(in:onChange:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  ObjectType = swift_getObjectType();
  v14[16] = v9;
  v15 = *(v4 + 8);
  v16 = a3;
  v17 = a4;
  v11 = *(a2 + 64);
  v12 = sub_1B21619D8(qword_1EB7A1920, &qword_1B22595C0);
  result = v11(&v18, sub_1B2194898, v14, v12, ObjectType, a2);
  if (!v5)
  {
    return v18;
  }

  return result;
}

void *sub_1B2192BE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *(*a3)(uint64_t *__return_ptr)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  result = a3(&v16);
  if (!v6)
  {
    if (v16)
    {
      sub_1B21E79E0(v16);
    }

    sub_1B21C9D20(&v17);

    v13 = v17;
    type metadata accessor for DatabaseRegionObserver();
    v14 = swift_allocObject();
    *(v14 + 40) = 0;
    *(v14 + 16) = v13;
    *(v14 + 24) = a4;
    *(v14 + 32) = a5;

    sub_1B2177C58(v15, a2, a1);

    *a6 = v14;
    a6[1] = &off_1F296D0C0;
  }

  return result;
}

uint64_t DatabaseRegionObservation.publisher(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *v3;
  v7 = *(v3 + 1);
  v6 = *(v3 + 2);
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = v5;
  *(a3 + 24) = v7;
  *(a3 + 32) = v6;

  return swift_unknownObjectRetain();
}

BOOL sub_1B2192D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;

  v8 = DatabaseRegion.isModified(byEventsOfKind:)(a1, a2, a3, v4);

  return v8;
}

uint64_t sub_1B2192DB8(void *a1)
{
  v2 = v1;
  v3 = *(v1 + 16);
  if (v3)
  {
    v5 = a1[3];
    v6 = a1[4];
    sub_1B21139A0(a1, v5);
    v7 = *(v6 + 16);

    v8 = v7(v5, v6);
    v10 = v9;
    v11 = sub_1B2252220();
    v13 = sub_1B214A5A8(v11, v12, v8, v10, v3);
    v15 = v14;

    if (v13 != 1)
    {
      if (v15)
      {
        v16 = sub_1B21CA838(a1[6], v15);

        if ((v16 & 1) == 0)
        {
          return result;
        }

        goto LABEL_10;
      }
    }
  }

LABEL_10:
  *(v2 + 40) = 1;

  return sub_1B219296C();
}

uint64_t sub_1B2192EF0()
{
  if (*(v0 + 40) == 1)
  {
    *(v0 + 40) = 0;
    return (*(v0 + 24))();
  }

  return result;
}

uint64_t sub_1B2192F30()
{

  return v0;
}

uint64_t sub_1B2192F58()
{
  v0 = sub_1B2192F30();

  return MEMORY[0x1EEE6BDC0](v0, 41, 7);
}

uint64_t DatabasePublishers.DatabaseRegion.receive<A>(subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a3;
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v21[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  v10 = *(v3 + 8);
  v11 = *(v3 + 16);
  v12 = *(v3 + 24);
  v13 = *(v3 + 32);
  v17 = _s26DatabaseRegionSubscriptionCMa(0, v14, v15, v16);
  LOBYTE(v21[0]) = v11;
  v21[1] = v12;
  v21[2] = v13;
  (*(v6 + 16))(v8, a1, a2);
  swift_unknownObjectRetain();

  v18 = sub_1B2193100(v9, v10, v21, v8);
  v21[3] = v17;
  v21[4] = swift_getWitnessTable();
  v21[0] = v18;
  sub_1B2251FD0();
  return sub_1B2113208(v21);
}

__n128 sub_1B2193164@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v13 = *a4;
  (*(*(a5 - 8) + 32))(a7, a1, a5);
  v15 = _s26DatabaseRegionSubscriptionC16WaitingForDemandVMa(0, a5, a6, v14);
  v16 = (a7 + *(v15 + 36));
  *v16 = a2;
  v16[1] = a3;
  v17 = a7 + *(v15 + 40);
  *v17 = v13;
  result = *(a4 + 8);
  *(v17 + 8) = result;
  return result;
}

uint64_t sub_1B2193218@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a5 - 8) + 32))(a7, a1, a5);
  result = _s26DatabaseRegionSubscriptionC9ObservingVMa(0, a5, a6, v13);
  v15 = (a7 + *(result + 36));
  *v15 = a2;
  v15[1] = a3;
  *(a7 + *(result + 40)) = a4;
  return result;
}

char *sub_1B21932B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a4;
  v19 = a2;
  v7 = *v4;
  v8 = *(*v4 + 80);
  v9 = *(*v4 + 88);
  v10 = _s26DatabaseRegionSubscriptionC5StateOMa(0, v8, v9, a4);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v17 - v12;
  v14 = v7;
  LOBYTE(v7) = *a3;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  v15 = *(v14 + 112);
  *&v4[v15] = [objc_allocWithZone(MEMORY[0x1E696AE68]) init];
  v20[0] = v7;
  v21 = *(a3 + 8);
  sub_1B2193164(v18, a1, v19, v20, v8, v9, v13);
  swift_storeEnumTagMultiPayload();
  (*(v11 + 32))(&v4[*(*v4 + 104)], v13, v10);
  return v4;
}

uint64_t sub_1B21934A0(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v71 = a2;
  v5 = *a1;
  v6 = *(*a1 + 80);
  v7 = *(*a1 + 88);
  v8 = _s26DatabaseRegionSubscriptionC9ObservingVMa(0, v6, v7, a4);
  v69 = *(v8 - 8);
  v70 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v72 = v62 - v9;
  v68 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v10);
  ObjectType = v62 - v11;
  v13 = _s26DatabaseRegionSubscriptionC16WaitingForDemandVMa(0, v6, v7, v12);
  v73 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v62 - v14;
  v17 = _s26DatabaseRegionSubscriptionC5StateOMa(0, v6, v7, v16);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v75 = v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = v62 - v21;
  v23 = *(v5 + 104);
  swift_beginAccess();
  v78 = v18;
  (*(v18 + 16))(v22, &a1[v23], v17);
  v74 = v17;
  result = swift_getEnumCaseMultiPayload();
  if (result)
  {
    if (result != 1)
    {
      return result;
    }

    v25 = v70;
    v26 = *(v69 + 32);
    v27 = v72;
    v26(v72, v22, v70);
    v28 = *(v25 + 40);
    v29 = *&v27[v28];
    sub_1B2252030();
    v30 = sub_1B2252010();
    v31 = v74;
    if (v30)
    {
      goto LABEL_20;
    }

    sub_1B2252030();
    v32 = sub_1B2252010();
    v33 = sub_1B2252030();
    if (v32)
    {
      v27 = v72;
LABEL_19:
      *&v27[v28] = v33;
LABEL_20:
      v61 = v75;
      v26(v75, v27, v25);
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      (*(v78 + 40))(&a1[v23], v61, v31);
      return swift_endAccess();
    }

    v60 = v71;
    result = sub_1B2252010();
    v27 = v72;
    if (result)
    {
      goto LABEL_16;
    }

    if (((v29 | v60) & 0x8000000000000000) == 0)
    {
      v33 = v60 + v29;
      if (!__OFADD__(v29, v60))
      {
        v25 = v70;
        if ((v33 & 0x8000000000000000) == 0)
        {
          goto LABEL_19;
        }

LABEL_24:
        __break(1u);
        return result;
      }

LABEL_16:
      v33 = sub_1B2252030();
      v25 = v70;
      goto LABEL_19;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v65 = v23;
  v66 = v15;
  (*(v73 + 32))(v15, v22, v13);
  sub_1B2252030();
  v34 = v71;
  result = sub_1B2252010();
  v35 = v78;
  v36 = v7;
  v37 = v6;
  v38 = ObjectType;
  if ((result & 1) == 0)
  {
    if (v34 < 0)
    {
      __break(1u);
      goto LABEL_23;
    }

    if (!v34)
    {
      return (*(v73 + 8))(v66, v13);
    }
  }

  v39 = *(v68 + 16);
  v40 = v66;
  v41 = v75;
  v64 = v37;
  v42 = v36;
  v62[1] = v36;
  v39(ObjectType, v66, v37);
  v43 = &v40[*(v13 + 36)];
  v44 = *v43;
  v70 = v43[1];
  sub_1B2193218(v38, v44, v70, v34, v37, v42, v41);
  v45 = v74;
  swift_storeEnumTagMultiPayload();
  v46 = v65;
  swift_beginAccess();
  v47 = *(v35 + 40);
  v78 = v35 + 40;
  swift_unknownObjectRetain();
  v63 = v47;
  v47(&a1[v46], v41, v45);
  swift_endAccess();
  v72 = v13;
  v48 = &v40[*(v13 + 40)];
  LODWORD(v69) = *v48;
  v49 = *(v48 + 2);
  v68 = *(v48 + 1);
  v50 = swift_allocObject();
  swift_weakInit();
  v51 = swift_allocObject();
  v51[2] = v64;
  v51[3] = v42;
  v51[4] = v50;
  ObjectType = swift_getObjectType();
  v71 = v62;
  MEMORY[0x1EEE9AC00](ObjectType);
  LOBYTE(v62[-6]) = v69;
  v62[-5] = v68;
  v62[-4] = v49;
  v62[-3] = sub_1B21955DC;
  v62[-2] = v51;
  v52 = v70;
  v69 = *(v70 + 64);

  v53 = sub_1B21619D8(qword_1EB7A1920, &qword_1B22595C0);
  v54 = v76;
  (v69)(&v77, sub_1B2195898, &v62[-8], v53, ObjectType, v52);
  v55 = (v73 + 8);

  if (v54)
  {
    v56 = v74;
    v57 = v75;
    swift_storeEnumTagMultiPayload();
    v58 = v65;
    swift_beginAccess();
    v63(&a1[v58], v57, v56);
    swift_endAccess();
    *&v77 = v54;
    v59 = v66;
    sub_1B2251FC0();

    return (*v55)(v59, v72);
  }

  else
  {
    *(a1 + 1) = v77;
    swift_unknownObjectRelease();
    return (*v55)(v66, v72);
  }
}

uint64_t sub_1B2193C34(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1B2193E94(a1);
  }

  return result;
}

void sub_1B2193C94()
{
  v1 = *(v0 + *(*v0 + 112));
  sub_1B21E8980(sub_1B2193D34, 0, sub_1B21955A4);
}

uint64_t sub_1B2193D4C(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = _s26DatabaseRegionSubscriptionC5StateOMa(0, *(*a1 + 80), *(*a1 + 88), a4);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  *(a1 + 2) = 0;
  *(a1 + 3) = 0;
  swift_unknownObjectRelease();
  swift_storeEnumTagMultiPayload();
  v9 = *(*a1 + 104);
  swift_beginAccess();
  (*(v6 + 40))(&a1[v9], v8, v5);
  return swift_endAccess();
}

void sub_1B2193EC0(uint64_t a1, uint64_t a2, void (*a3)(id))
{
  v6 = *(v3 + *(*v3 + 112));
  sub_1B21E8980(a2, 0, a3);
}

uint64_t sub_1B2193F54(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a2;
  v5 = *a1;
  v6 = *(*a1 + 80);
  v7 = *(*a1 + 88);
  v8 = _s26DatabaseRegionSubscriptionC5StateOMa(0, v6, v7, a4);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v54 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v59 = &v48 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v48 - v14;
  v58 = v6;
  v56 = v7;
  v17 = _s26DatabaseRegionSubscriptionC9ObservingVMa(0, v6, v7, v16);
  v62 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v55 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v48 - v20;
  v22 = v5;
  v23 = v9;
  v24 = *(v22 + 104);
  swift_beginAccess();
  v25 = *(v9 + 16);
  v60 = a1;
  v61 = v24;
  v25(v15, a1 + v24, v8);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(v23 + 8))(v15, v8);
  }

  v51 = v23;
  v52 = v8;
  v26 = v62;
  v27 = v62 + 32;
  v28 = *(v62 + 32);
  v28(v21, v15, v17);
  v53 = v17;
  v29 = *&v21[*(v17 + 40)];
  v30 = sub_1B2252020();
  sub_1B2252030();
  if (sub_1B2252010())
  {
    sub_1B2252030();
    if (sub_1B2252010())
    {
      return (*(v26 + 8))(v21, v53);
    }
  }

  sub_1B2252030();
  if ((sub_1B2252010() & 1) == 0)
  {
    sub_1B2252030();
    if ((sub_1B2252010() & 1) != 0 || v30 >= v29)
    {
      return (*(v26 + 8))(v21, v53);
    }
  }

  v49 = v28;
  v50 = v27;
  v31 = v26;
  v63 = v57;
  v32 = sub_1B2251FE0();
  v33 = v60;
  v34 = v59;
  v35 = v52;
  v25(v59, v60 + v61, v52);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v31 + 8))(v21, v53);
    return (*(v51 + 8))(v34, v35);
  }

  v58 = v21;
  v36 = v55;
  v37 = v53;
  v49(v55, v34, v53);
  v38 = *(v37 + 40);
  v39 = *&v36[v38];
  sub_1B2252030();
  if ((sub_1B2252010() & 1) == 0)
  {
    v40 = v38;
    sub_1B2252030();
    v41 = sub_1B2252010();
    v42 = sub_1B2252030();
    if (v41)
    {
      v38 = v40;
    }

    else
    {
      result = sub_1B2252010();
      v38 = v40;
      if (result)
      {
        goto LABEL_18;
      }

      if ((v39 | v32) < 0)
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v42 = v39 + v32;
      if (__OFADD__(v39, v32))
      {
LABEL_18:
        v42 = sub_1B2252030();
      }

      else if (v42 < 0)
      {
LABEL_34:
        __break(1u);
        return result;
      }
    }

    *&v36[v38] = v42;
    v39 = v42;
  }

  v44 = v51;
  sub_1B2252030();
  if ((sub_1B2252010() & 1) == 0)
  {
    sub_1B2252030();
    if (sub_1B2252010())
    {
      v45 = sub_1B2252030();
      (*(v31 + 8))(v58, v37);
LABEL_28:
      *&v36[v38] = v45;
      goto LABEL_29;
    }

    result = (*(v31 + 8))(v58, v37);
    if (v39 < 0)
    {
      __break(1u);
    }

    else if (v39)
    {
      v45 = v39 - 1;
      goto LABEL_28;
    }

    __break(1u);
    goto LABEL_33;
  }

  (*(v31 + 8))(v58, v37);
LABEL_29:
  v46 = v54;
  v49(v54, v36, v37);
  swift_storeEnumTagMultiPayload();
  v47 = v61;
  swift_beginAccess();
  (*(v44 + 40))(v33 + v47, v46, v35);
  return swift_endAccess();
}

char *sub_1B21944B0()
{
  v1 = *v0;
  swift_unknownObjectRelease();
  v2 = *(*v0 + 104);
  v4 = _s26DatabaseRegionSubscriptionC5StateOMa(0, *(v1 + 80), *(v1 + 88), v3);
  (*(*(v4 - 8) + 8))(v0 + v2, v4);

  return v0;
}

uint64_t sub_1B2194574()
{
  v0 = sub_1B21944B0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1B2194634(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  for (i = (a1 + 32); ; i += 3)
  {
    if (*(a1 + 16) == v2)
    {
      v4 = 0;
      goto LABEL_7;
    }

    if (*i == a2)
    {
      break;
    }

    ++v2;
  }

  v4 = v2;
LABEL_7:

  return v4;
}

void sub_1B21946B0()
{
  sub_1B21173C4();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1B219560C();
    v0 = v5;
  }

  if (*(v0 + 16) <= v1)
  {
    __break(1u);
  }

  else
  {
    v2 = sub_1B2112948();
    sub_1B2160924(v2, v3, v4);
    sub_1B211505C();
  }
}

void sub_1B2194714()
{
  sub_1B21173C4();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1B2195620();
    v0 = v5;
  }

  v3 = *(v0 + 16);
  if (v3 <= v2)
  {
    __break(1u);
  }

  else
  {
    v4 = v3 - 1;
    sub_1B215A618((v0 + 16 * v2 + 48), v3 - 1 - v2, (v0 + 16 * v2 + 32));
    *(v0 + 16) = v4;
    *v1 = v0;
  }
}

unint64_t sub_1B2194794()
{
  sub_1B21173C4();
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v0 & 0x8000000000000000) != 0 || (v0 & 0x4000000000000000) != 0)
  {
    result = sub_1B2195638(v0);
    v0 = result;
  }

  v4 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4 <= v2)
  {
    __break(1u);
  }

  else
  {
    v5 = v4 - 1;
    v6 = v4 - 1 - v2;
    v7 = (v0 & 0xFFFFFFFFFFFFFF8) + 8 * v2;
    v8 = *(v7 + 0x20);
    sub_1B224B140((v7 + 40), v6, (v7 + 32));
    *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
    *v1 = v0;
    return v8;
  }

  return result;
}

void sub_1B2194818()
{
  sub_1B21173C4();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1B219569C();
    v0 = v5;
  }

  if (*(v0 + 16) <= v1)
  {
    __break(1u);
  }

  else
  {
    v2 = sub_1B2112948();
    sub_1B224B150(v2, v3, v4);
    sub_1B211505C();
  }
}

uint64_t sub_1B21948C8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1B2194908(uint64_t result, int a2, int a3)
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

uint64_t sub_1B219497C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1B21949BC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1B2194A14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = _s26DatabaseRegionSubscriptionC5StateOMa(319, *(a1 + 80), *(a1 + 88), a4);
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

uint64_t sub_1B2194AD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  result = _s26DatabaseRegionSubscriptionC16WaitingForDemandVMa(319, v4, v5, a4);
  if (v8 <= 0x3F)
  {
    result = _s26DatabaseRegionSubscriptionC9ObservingVMa(319, v4, v5, v7);
    if (v9 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1B2194B68(unint64_t result, unsigned int a2, uint64_t a3)
{
  v3 = (((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v4 = v3 + 24;
  v5 = v3 + 8;
  if (v5 <= v4)
  {
    v5 = v4;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
LABEL_25:
    v13 = *(result + v5);
    if (v13 >= 3)
    {
      return (v13 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v6 = v5 | 1;
    if ((v5 | 1) <= 3)
    {
      v7 = ((a2 + 2) >> 8) + 1;
    }

    else
    {
      v7 = 2;
    }

    if (v7 >= 0x10000)
    {
      v8 = 4;
    }

    else
    {
      v8 = 2;
    }

    if (v7 < 0x100)
    {
      v8 = 1;
    }

    if (v7 >= 2)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    switch(v9)
    {
      case 1:
        v10 = *(result + v6);
        if (!*(result + v6))
        {
          goto LABEL_25;
        }

        goto LABEL_21;
      case 2:
        v10 = *(result + v6);
        if (!*(result + v6))
        {
          goto LABEL_25;
        }

        goto LABEL_21;
      case 3:
        __break(1u);
        return result;
      case 4:
        v10 = *(result + v6);
        if (!v10)
        {
          goto LABEL_25;
        }

LABEL_21:
        v11 = (v10 - 1) << (8 * v6);
        if (v6 <= 3)
        {
          v12 = *result;
        }

        else
        {
          v11 = 0;
          v12 = *result;
        }

        result = (v12 | v11) + 254;
        break;
      default:
        goto LABEL_25;
    }
  }

  return result;
}

void sub_1B2194C6C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = (((*(*(*(a4 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = v5 + 24;
  v7 = v5 + 8;
  if (v7 <= v6)
  {
    v7 = v6;
  }

  v8 = v7 | 1;
  if (a3 < 0xFE)
  {
    v11 = 0;
  }

  else
  {
    if (v8 <= 3)
    {
      v9 = ((a3 + 2) >> 8) + 1;
    }

    else
    {
      v9 = 2;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }
  }

  if (a2 > 0xFD)
  {
    v12 = a2 - 254;
    v13 = (a2 - 254) >> 8;
    bzero(a1, v7 | 1);
    if (v8 <= 3)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = 1;
    }

    if (v8 > 3)
    {
      *a1 = v12;
    }

    else
    {
      *a1 = v12;
    }

    switch(v11)
    {
      case 1:
        a1[v8] = v14;
        break;
      case 2:
        *&a1[v8] = v14;
        break;
      case 3:
LABEL_36:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = v14;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v11)
    {
      case 1:
        a1[v8] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_30;
      case 2:
        *&a1[v8] = 0;
        goto LABEL_29;
      case 3:
        goto LABEL_36;
      case 4:
        *&a1[v8] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_30;
      default:
LABEL_29:
        if (a2)
        {
LABEL_30:
          a1[v7] = -a2;
        }

        break;
    }
  }
}

uint64_t sub_1B2194E18(uint64_t result, unsigned int a2, uint64_t a3)
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
      return sub_1B2122A98(result, v5, v4);
    }
  }

  else
  {
    v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
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

void sub_1B2194F5C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
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
  v10 = ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = a3 - v8;
    if (((((v9 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
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
            }

            else
            {
              v18 = (a2 - 1);
            }

            *v17 = v18;
          }

          else
          {

            sub_1B21117B4(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((((v9 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((((v9 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8);
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

unint64_t sub_1B219513C()
{
  result = qword_1EB7A1AA8[0];
  if (!qword_1EB7A1AA8[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_1EB7A1AA8);
  }

  return result;
}

unint64_t sub_1B21951A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_checkMetadataState();
  if (v5 <= 0x3F)
  {
    result = sub_1B219513C();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B219522C(uint64_t result, unsigned int a2, uint64_t a3)
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
      return sub_1B2122A98(result, v5, v4);
    }
  }

  else
  {
    v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 24;
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

void sub_1B2195370(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
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
  v10 = ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 24;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = a3 - v8;
    if (((((v9 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFE8)
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
            }

            else
            {
              v18 = (a2 - 1);
            }

            *v17 = v18;
          }

          else
          {

            sub_1B21117B4(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((((v9 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFE8)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((((v9 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFE8)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 24);
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

uint64_t sub_1B2195638(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1B2252C20();
  }

  return sub_1B2252D10();
}

uint64_t sub_1B2195714(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a2 + 40);
  v5 = sub_1B2116B08();

  for (i = 0; ; ++i)
  {
    if (v5 == i)
    {
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1B27427E0](i, v4);
      v8 = result;
    }

    else
    {
      if (i >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v8 = *(v4 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      return result;
    }

    v9 = sub_1B2176B68();
    if (v9)
    {
      v10 = v9;
      swift_unknownObjectRelease();
      if (v10 == a1)
      {
        break;
      }
    }
  }

  *(v8 + 17) = 1;
  swift_beginAccess();
  v11 = *(a2 + 48);

  sub_1B2194634(v11, v8);
  if ((v12 & 1) == 0)
  {
    sub_1B21946B0();
    v14 = v13;
    v16 = v15;

    sub_1B211A378(v14, v16);
  }

  swift_endAccess();
  sub_1B2175F98();
}

uint64_t ValueObservation.map<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  memcpy(v17, v5, sizeof(v17));
  v11 = swift_allocObject();
  v12 = *(a3 + 16);
  v13 = *(a3 + 24);
  v11[2] = v12;
  v11[3] = a4;
  v11[4] = v13;
  v11[5] = a1;
  v11[6] = a2;
  v14 = type metadata accessor for ValueReducers.Map(0, v12, a4, v13);

  WitnessTable = swift_getWitnessTable();
  sub_1B21AC6AC(sub_1B2195ACC, v11, a3, v14, WitnessTable, a5);
}

uint64_t sub_1B21959CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v13 = MEMORY[0x1EEE9AC00](a1);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15, v13);
  sub_1B2195AF4(v15, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_1B2195AF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a4 - 8) + 32))(a7, a1, a4);
  result = type metadata accessor for ValueReducers.Map(0, a4, a5, a6);
  v14 = (a7 + *(result + 44));
  *v14 = a2;
  v14[1] = a3;
  return result;
}

uint64_t ValueReducers.Map._value(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22 = a3;
  v6 = *(*(a2 + 32) + 8);
  v7 = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v21 = sub_1B2252B00();
  v9 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v11 = &v21 - v10;
  v12 = *(AssociatedTypeWitness - 8);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v21 - v15;
  (*(v6 + 32))(a1, v7, v6, v14);
  if (sub_1B2122A98(v11, 1, AssociatedTypeWitness) == 1)
  {
    (*(v9 + 8))(v11, v21);
    v17 = 1;
    v18 = v22;
  }

  else
  {
    (*(v12 + 32))(v16, v11, AssociatedTypeWitness);
    v19 = v22;
    (*(v3 + *(a2 + 44)))(v16);
    (*(v12 + 8))(v16, AssociatedTypeWitness);
    v17 = 0;
    v18 = v19;
  }

  return sub_1B21117B4(v18, v17, 1, *(a2 + 24));
}

uint64_t sub_1B2195DF0(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B2195E48(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_1B2173DAC();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B2195ED0(uint64_t result, unsigned int a2, uint64_t a3)
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
      return sub_1B2122A98(result, v5, v4);
    }
  }

  else
  {
    v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
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

void sub_1B219600C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
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
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v11 = a3 - v8 + 1;
  }

  else
  {
    v11 = 2;
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

  if (v8 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (a2)
        {
LABEL_33:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
              v17[1] = 0;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *v17 = v18;
          }

          else
          {

            sub_1B21117B4(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
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
        goto LABEL_44;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

_BYTE *sub_1B2196240(_BYTE *result, int a2, int a3)
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

void sub_1B2196360()
{
  sub_1B2111640();
  v36 = v2;
  v4 = v3;
  v6 = v5;
  v7 = v0;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  memcpy(__dst, v0, 0xA2uLL);
  sub_1B211E17C(v0, __src, v6, v4);
  sub_1B21366E4(__dst, __src);
  sub_1B2137278();
  v15 = v14;
  memcpy(v33, __src, sizeof(v33));
  v34 = v9;
  v35 = v15;
  v16 = sub_1B2137488(v11);
  if (v1)
  {
    sub_1B2142BCC(v33);
  }

  else
  {
    v17 = v16;
    v30 = v4;
    type metadata accessor for StatementArgumentsSink();
    swift_allocObject();

    v24 = sub_1B2114D98(0, v18, v19, v20, v21, v22, v23);
    type metadata accessor for SQLGenerationContext();
    swift_initStackObject();

    v26 = sub_1B2117164(v25, v24, MEMORY[0x1E69E7CC0]);
    sub_1B21425A4(v26, __src);

    *(v13 + 40) = 0;
    *(v13 + 24) = 0u;
    *(v13 + 8) = 0u;
    *v13 = v17;
    sub_1B2142B5C(__src, v13 + 8);
    *(v13 + 48) = 0;
    *(v13 + 56) = 0;
    sub_1B2137278();
    v28 = v27;
    sub_1B2142BCC(v33);
    if (*(v28 + 16))
    {
      v29 = swift_allocObject();
      *(v29 + 16) = v28;
      memcpy((v29 + 24), __dst, 0xA2uLL);
      *(v13 + 48) = v36;
      *(v13 + 56) = v29;
      sub_1B211E17C(v7, __src, v6, v30);
    }

    else
    {
    }
  }

  sub_1B2112FDC();
}

uint64_t Table.tableName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Table.tableName.setter()
{
  sub_1B211D530();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Table.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t Table<A>.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t Table.none()()
{
  sub_1B211566C();
  Table.all()(v0);
  v1 = sub_1B2115BE4();
  type metadata accessor for QueryInterfaceRequest(v1, v2, v3, v4);
  v5 = FilteredRequest.none()();
  sub_1B2116508(v5, v6, v7, v8, v9, v10, v11, v12, v24, v26, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64);
  sub_1B211283C();
  v21 = sub_1B2118220(v13, v14, v15, v16, v17, v18, v19, v20, v25, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v66);
  return v22(v21);
}

void Table.select(sql:arguments:)()
{
  sub_1B2111F14();
  sub_1B2115E74(v5, v6, v7, v8, v9, v10, v11, v12, v32, v33, v34, v35[0], v35[1], v35[2], v35[3], v35[4], v35[5], v35[6], v35[7], v35[8], v35[9], v35[10], v35[11], v35[12], v35[13], v35[14], v35[15], v35[16], v35[17], v35[18], v35[19], v35[20], __src[0], __src[1]);
  v13 = sub_1B21619D8(&qword_1EB7A10A8, &unk_1B225ECC0);
  v14 = sub_1B2122478(v13);
  *(v14 + 16) = xmmword_1B22546B0;
  *(v14 + 56) = &type metadata for SQL;
  *(v14 + 64) = &protocol witness table for SQL;
  v15 = sub_1B21619D8(&qword_1EB7A0F70, &qword_1B2257590);
  v16 = sub_1B2117BF4(v15);
  sub_1B2114258(v16, v17, v18, v19, v20, v21, v22, v23, v24, v25);
  __src[0] = v4;
  __src[1] = v1;
  __src[2] = v3;
  __src[3] = v2;
  sub_1B2114CC4(__src);
  memcpy((v0 + 32), __src, 0xB8uLL);
  *(v14 + 32) = v0;
  v26 = sub_1B211A260();
  InterfaceRequest = type metadata accessor for QueryInterfaceRequest(v26, v27, v28, v29);

  sub_1B2115B7C();
  SelectionRequest.select(_:)();

  memcpy(v37, v35, 0xA2uLL);
  sub_1B2111FD0();
  (*(v31 + 8))(v37, InterfaceRequest);
  sub_1B2111588();
}

uint64_t Table.select(literal:)(uint64_t *a1)
{
  v1 = *a1;
  sub_1B211566C();
  Table.all()(v2);
  v3 = sub_1B21619D8(&qword_1EB7A10A8, &unk_1B225ECC0);
  v4 = sub_1B2122478(v3);
  *(v4 + 16) = xmmword_1B22546B0;
  *(v4 + 56) = &type metadata for SQL;
  *(v4 + 64) = &protocol witness table for SQL;
  *(v4 + 32) = v1;
  sub_1B2124B94(v4, v5, v6, v7);

  sub_1B213CDD4();
  SelectionRequest.select(_:)();

  sub_1B2116508(v8, v9, v10, v11, v12, v13, v14, v15, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67);
  sub_1B2111808();
  v24 = sub_1B219AABC(v16, v17, v18, v19, v20, v21, v22, v23, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v69);
  return v25(v24);
}

void Table.select<A>(sql:arguments:as:)()
{
  sub_1B2111F14();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v11 = *v9;
  v10 = v9[1];
  sub_1B211AD24();
  Table.all()(v12);
  v13 = sub_1B21619D8(&qword_1EB7A10A8, &unk_1B225ECC0);
  v14 = sub_1B2122478(v13);
  *(v14 + 16) = xmmword_1B22546B0;
  *(v14 + 56) = &type metadata for SQL;
  *(v14 + 64) = &protocol witness table for SQL;
  v15 = sub_1B21619D8(&qword_1EB7A0F70, &qword_1B2257590);
  v16 = sub_1B2117BF4(v15);
  sub_1B2114258(v16, v17, v18, v19, v20, v21, v22, v23, v24, v25);
  __src[0] = v8;
  __src[1] = v6;
  __src[2] = v11;
  __src[3] = v10;
  sub_1B2114CC4(__src);
  memcpy((v0 + 32), __src, 0xB8uLL);
  *(v14 + 32) = v0;
  InterfaceRequest = type metadata accessor for QueryInterfaceRequest(0, *(v2 + 16), v26, v27);

  QueryInterfaceRequest.select<A>(_:as:)(v14, v4, InterfaceRequest);

  memcpy(v32, v30, 0xA2uLL);
  sub_1B2111808();
  (*(v29 + 8))(v32, InterfaceRequest);
  sub_1B2111588();
}

uint64_t sub_1B2196CF0()
{
  sub_1B219AAA4();
  v2 = v1;
  sub_1B211566C();
  v4 = Table.all()(v3);
  v8 = sub_1B2124B94(v4, v5, v6, v7);
  sub_1B21172C0();
  WitnessTable = swift_getWitnessTable();
  v10 = v0(v2, v8, &protocol witness table for QueryInterfaceRequest<A>, &protocol witness table for QueryInterfaceRequest<A>, WitnessTable);
  sub_1B2116508(v10, v11, v12, v13, v14, v15, v16, v17, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69);
  sub_1B2111808();
  v26 = sub_1B219AABC(v18, v19, v20, v21, v22, v23, v24, v25, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v71);
  return v27(v26);
}

uint64_t Table.filter(sql:arguments:)()
{
  sub_1B2117A7C();
  v4 = *v3;
  v5 = v3[1];
  v6 = v0[1];
  v10[5] = *v0;
  v10[6] = v6;
  v10[3] = &type metadata for SQL;
  v10[4] = &protocol witness table for SQL;
  v7 = sub_1B21619D8(&qword_1EB7A0F70, &qword_1B2257590);
  v8 = sub_1B2117BF4(v7);
  *(v8 + 16) = xmmword_1B22546B0;
  __src[0] = v2;
  __src[1] = v1;
  __src[2] = v4;
  __src[3] = v5;
  sub_1B2114CC4(__src);
  memcpy((v8 + 32), __src, 0xB8uLL);
  v10[0] = v8;

  Table.filter(_:)();
  return sub_1B2113208(v10);
}

uint64_t Table.filter(literal:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a1;
  sub_1B219AA80(a1, a2, a3, a4, a5, a6, a7, a8, v16, v17[0], v17[1], v17[2], v18, v19, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11], __src[12], __src[13], __src[14], __src[15], __src[16], __src[17], __src[18], __src[19], __src[20], __dst[0], __dst[1]);
  v18 = &type metadata for SQL;
  v19 = &protocol witness table for SQL;
  v17[0] = v8;
  v9 = sub_1B2115BE4();
  InterfaceRequest = type metadata accessor for QueryInterfaceRequest(v9, v10, v11, v12);

  FilteredRequest.filter(_:)(v17, InterfaceRequest, &protocol witness table for QueryInterfaceRequest<A>);
  memcpy(__dst, __src, 0xA2uLL);
  sub_1B211283C();
  (*(v14 + 8))(__dst, InterfaceRequest);
  return sub_1B2113208(v17);
}

uint64_t Table.orderByPrimaryKey()()
{
  sub_1B211566C();
  Table.all()(v0);
  v1 = sub_1B2115BE4();
  type metadata accessor for QueryInterfaceRequest(v1, v2, v3, v4);
  v5 = TableRequest<>.orderByPrimaryKey()();
  sub_1B2116508(v5, v6, v7, v8, v9, v10, v11, v12, v24, v26, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64);
  sub_1B211283C();
  v21 = sub_1B2118220(v13, v14, v15, v16, v17, v18, v19, v20, v25, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v66);
  return v22(v21);
}

void Table.order(sql:arguments:)()
{
  sub_1B2111F14();
  sub_1B2115E74(v5, v6, v7, v8, v9, v10, v11, v12, v32, v33, v34, v35[0], v35[1], v35[2], v35[3], v35[4], v35[5], v35[6], v35[7], v35[8], v35[9], v35[10], v35[11], v35[12], v35[13], v35[14], v35[15], v35[16], v35[17], v35[18], v35[19], v35[20], __src[0], __src[1]);
  v13 = sub_1B21619D8(&qword_1EB7A10E0, &qword_1B2254920);
  v14 = sub_1B2122478(v13);
  *(v14 + 16) = xmmword_1B22546B0;
  *(v14 + 56) = &type metadata for SQL;
  *(v14 + 64) = &protocol witness table for SQL;
  v15 = sub_1B21619D8(&qword_1EB7A0F70, &qword_1B2257590);
  v16 = sub_1B2117BF4(v15);
  sub_1B2114258(v16, v17, v18, v19, v20, v21, v22, v23, v24, v25);
  __src[0] = v4;
  __src[1] = v1;
  __src[2] = v3;
  __src[3] = v2;
  sub_1B2114CC4(__src);
  memcpy((v0 + 32), __src, 0xB8uLL);
  *(v14 + 32) = v0;
  v26 = sub_1B211A260();
  InterfaceRequest = type metadata accessor for QueryInterfaceRequest(v26, v27, v28, v29);

  sub_1B2115B7C();
  OrderedRequest.order(_:)();

  memcpy(v37, v35, 0xA2uLL);
  sub_1B2111FD0();
  (*(v31 + 8))(v37, InterfaceRequest);
  sub_1B2111588();
}

uint64_t Table.order(literal:)(uint64_t *a1)
{
  v1 = *a1;
  sub_1B211566C();
  Table.all()(v2);
  v3 = sub_1B21619D8(&qword_1EB7A10E0, &qword_1B2254920);
  v4 = sub_1B2122478(v3);
  *(v4 + 16) = xmmword_1B22546B0;
  *(v4 + 56) = &type metadata for SQL;
  *(v4 + 64) = &protocol witness table for SQL;
  *(v4 + 32) = v1;
  sub_1B2124B94(v4, v5, v6, v7);

  sub_1B213CDD4();
  OrderedRequest.order(_:)();

  sub_1B2116508(v8, v9, v10, v11, v12, v13, v14, v15, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67);
  sub_1B2111808();
  v24 = sub_1B219AABC(v16, v17, v18, v19, v20, v21, v22, v23, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v69);
  return v25(v24);
}

uint64_t Table.aliased(_:)()
{
  sub_1B211D530();
  sub_1B211566C();
  Table.all()(v0);
  v1 = sub_1B2115BE4();
  type metadata accessor for QueryInterfaceRequest(v1, v2, v3, v4);
  v5 = sub_1B21115BC();
  v7 = QueryInterfaceRequest.aliased(_:)(v5, v6);
  sub_1B2116508(v7, v8, v9, v10, v11, v12, v13, v14, v26, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66);
  sub_1B211283C();
  v23 = sub_1B2118220(v15, v16, v17, v18, v19, v20, v21, v22, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v68);
  return v24(v23);
}

uint64_t Table.with<A>(_:)()
{
  sub_1B219AAA4();
  v2 = v1;
  memcpy(v12, v3, 0xBBuLL);
  v4 = v0[1];
  __dst[0] = *v0;
  __dst[1] = v4;
  v5 = Table.all()(__src);
  v9 = sub_1B2124B94(v5, v6, v7, v8);
  QueryInterfaceRequest.with<A>(_:)(v12, v9, v2);
  memcpy(__dst, __src, 0xA2uLL);
  sub_1B2111808();
  return (*(v10 + 8))(__dst, v9);
}

uint64_t Table<A>.filter<A>(ids:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1B211AD24();
  Table.all()(v10);
  v11 = sub_1B211A260();
  InterfaceRequest = type metadata accessor for QueryInterfaceRequest(v11, v12, v13, v14);
  sub_1B21172C0();
  swift_getWitnessTable();
  v16 = sub_1B2115B7C();
  TableRequest<>.filter<A>(ids:)(v16, v17, a3, v18, v19, v20, a5, a4, a6);
  memcpy(__dst, __src, 0xA2uLL);
  sub_1B2111FD0();
  return (*(v21 + 8))(__dst, InterfaceRequest);
}

uint64_t Table<A>.selectID()()
{
  sub_1B219AAA4();
  sub_1B211566C();
  Table.all()(v2);
  v3 = sub_1B2122988();
  InterfaceRequest = type metadata accessor for QueryInterfaceRequest(v3, v4, v5, v6);
  Interface = QueryInterfaceRequest<A>.selectID()(InterfaceRequest, v1, v0);
  sub_1B2116508(Interface, v9, v10, v11, v12, v13, v14, v15, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67);
  sub_1B21142DC();
  v24 = sub_1B2115B70(v16, v17, v18, v19, v20, v21, v22, v23, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v69);
  return v25(v24);
}

uint64_t Table<A>.filter<A>(ids:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1B211AD24();
  Table.all()(v14);
  InterfaceRequest = type metadata accessor for QueryInterfaceRequest(0, *(a2 + 16), v15, v16);
  sub_1B21172C0();
  WitnessTable = swift_getWitnessTable();
  TableRequest<>.filter<A>(ids:)(a1, InterfaceRequest, a3, &protocol witness table for QueryInterfaceRequest<A>, &protocol witness table for QueryInterfaceRequest<A>, WitnessTable, a5, a4, a7, a6);
  memcpy(__dst, __src, 0xA2uLL);
  sub_1B2111808();
  return (*(v19 + 8))(__dst, InterfaceRequest);
}

uint64_t Table<A>.fetchCursor(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return sub_1B2197BBC();
}

{
  return sub_1B2197BBC();
}

uint64_t Table<A>.fetchAll(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return sub_1B2197BBC();
}

{
  return sub_1B2197BBC();
}

uint64_t Table<A>.fetchOne(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return sub_1B2197C78();
}

{
  return sub_1B2197C78();
}

uint64_t Table<A>.fetchSet(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return sub_1B2197E48(a1, a2, a3, a4, FetchRequest<>.fetchSet(_:));
}

{
  return sub_1B2197E48(a1, a2, a3, a4, FetchRequest<>.fetchSet(_:));
}

void (*sub_1B2197A70(uint64_t a1, void (*a2)(uint64_t, char *)))(uint64_t, char *)
{
  v6 = *v2;
  v5 = v2[1];

  v7 = MEMORY[0x1E69E7CC0];
  sub_1B2116B4C();
  v9 = v8;
  v11 = v10;
  sub_1B21359AC();
  *__src = v6;
  v44 = v5;
  v45 = 0;
  v46 = sub_1B2151AA4;
  v47 = 0;
  v48 = 0;
  v49 = 0;
  v50 = v7;
  v51 = 0;
  v52 = v9;
  v53 = v11;
  v54 = v12;
  v55 = v13;
  v56 = 0;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0;
  v61 = 1;
  sub_1B211D5DC(v12, v13, v14, v15, v16, v17, v18, v19, v21, *v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42);
  a2(a1, v22);
  sub_1B2115BF0();
  sub_1B2137224(__src);
  return a2;
}

uint64_t sub_1B2197BBC()
{
  sub_1B219AA68();
  sub_1B2115074(v1, v2);
  Table.all()(v3);
  v4 = sub_1B2115BE4();
  InterfaceRequest = type metadata accessor for QueryInterfaceRequest(v4, v5, v6, v7);
  sub_1B2112968(InterfaceRequest);
  sub_1B2114310();
  v9 = sub_1B2126008();
  v10 = v0(v9);
  sub_1B21142EC(v10, v11, v12, v13, v14, v15, v16, v17, v29, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50);
  sub_1B211283C();
  v26 = sub_1B2114028(v18, v19, v20, v21, v22, v23, v24, v25, v30);
  v27(v26);
  return sub_1B212CDA8();
}

uint64_t sub_1B2197C78()
{
  sub_1B219AA68();
  sub_1B2115074(v1, v2);
  Table.all()(v3);
  v4 = sub_1B2115BE4();
  InterfaceRequest = type metadata accessor for QueryInterfaceRequest(v4, v5, v6, v7);
  sub_1B2112968(InterfaceRequest);
  sub_1B2114310();
  v9 = sub_1B2126008();
  v10 = v0(v9);
  sub_1B211608C(v10, v11, v12, v13, v14, v15, v16, v17, v29, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50);
  sub_1B211283C();
  v26 = sub_1B2114028(v18, v19, v20, v21, v22, v23, v24, v25, v30);
  return v27(v26);
}

uint64_t Table<A>.fetchCursor(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return sub_1B2197E48(a1, a2, a3, a4, FetchRequest<>.fetchCursor(_:));
}

{
  return sub_1B2197E48(a1, a2, a3, a4, FetchRequest<>.fetchCursor(_:));
}

uint64_t Table<A>.fetchAll(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return sub_1B2197E48(a1, a2, a3, a4, FetchRequest<>.fetchAll(_:));
}

{
  return sub_1B2197E48(a1, a2, a3, a4, FetchRequest<>.fetchAll(_:));
}

uint64_t Table<A>.fetchOne(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return sub_1B2197F10(a1, a2, a3, a4, FetchRequest<>.fetchOne(_:));
}

{
  return sub_1B2197F10(a1, a2, a3, a4, FetchRequest<>.fetchOne(_:));
}

uint64_t Table<A>.fetchSet(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return sub_1B219802C(a1, a2, a3, a4, a5, FetchRequest<>.fetchSet(_:));
}

{
  return sub_1B219802C(a1, a2, a3, a4, a5, FetchRequest<>.fetchSet(_:));
}

uint64_t sub_1B2197E48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  sub_1B2121F58();
  sub_1B2115074(v6, v7);
  Table.all()(v8);
  v9 = sub_1B2115BE4();
  InterfaceRequest = type metadata accessor for QueryInterfaceRequest(v9, v10, v11, v12);
  sub_1B2112968(InterfaceRequest);
  sub_1B2114310();
  v14 = sub_1B2116A10();
  v15 = a5(v14);
  sub_1B21142EC(v15, v16, v17, v18, v19, v20, v21, v22, v34, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55);
  sub_1B211283C();
  v31 = sub_1B2114028(v23, v24, v25, v26, v27, v28, v29, v30, v35);
  v32(v31);
  return sub_1B212CDA8();
}

uint64_t sub_1B2198244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(_BYTE *, uint64_t, uint64_t, void *, void, uint64_t, double))
{
  v13 = *a4;
  v14 = a4[1];
  v15 = sub_1B213574C();
  v17[0] = v13;
  v17[1] = v14;
  a8(v18, a2, a3, v17, *(a5 + 16), a6, v15);

  return sub_1B2181698(v13);
}

uint64_t sub_1B2198344(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, void (*a7)(_BYTE *, uint64_t, uint64_t, void *, void, uint64_t, double))
{
  v12 = a1[1];
  v13 = *a4;
  v14 = a4[1];
  v17[2] = *a1;
  v17[3] = v12;
  v15 = sub_1B21518F0(v18);
  v17[0] = v13;
  v17[1] = v14;
  a7(v18, a2, a3, v17, *(a5 + 16), a6, v15);

  return sub_1B2181698(v13);
}

uint64_t Table.association<A>(to:on:)@<X0>(void *__src@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X4>, uint64_t *x8_0@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  type metadata accessor for CommonTableExpression(0, a5, v10, v11);
  sub_1B21518F0(__srca);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  *&v14 = sub_1B219A420;
  *(&v14 + 1) = v12;
  v15 = 0;
  v16 = 0;
  v17 = 0x80;
  sub_1B21D92BC(__srca, &v14, x8_0);
}

uint64_t sub_1B21984DC@<X0>(void (*a1)(void *__return_ptr)@<X2>, void *a2@<X8>)
{
  a1(v6);
  v3 = v7;
  v4 = v8;
  sub_1B21139A0(v6, v7);
  (*(v4 + 8))(__src, v3, v4);
  nullsub_1();
  memcpy(a2, __src, 0xA3uLL);
  return sub_1B2113208(v6);
}

uint64_t Table.association<A>(to:)()
{
  sub_1B219AAA4();
  v2 = v1;
  memcpy(__dst, v3, sizeof(__dst));
  type metadata accessor for CommonTableExpression(0, v0, v4, v5);
  sub_1B21518F0(__src);
  *&v7 = sub_1B21C5B28;
  *(&v7 + 1) = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0x80;
  return sub_1B21D92BC(__src, &v7, v2);
}

void *Table.hasMany<A, B>(_:through:using:key:)()
{
  sub_1B2117A5C();
  v11 = sub_1B2114758(v3, v4, v5, v6, v7, v8, v9, v10);
  v12(v11);
  v13 = sub_1B21145AC();
  v14(v13);
  sub_1B216CEF8(v33);
  sub_1B212D6B0();
  swift_getAssociatedTypeWitness();
  sub_1B211FDFC();
  result = sub_1B21E1C58(v15, v16);
  if (v0)
  {
    v18 = sub_1B212607C();
    type metadata accessor for HasManyThroughAssociation(v18, v19, v2, v20);
    WitnessTable = swift_getWitnessTable();
    sub_1B2113B34(WitnessTable, v22, v23, v24, v25, v26, v27, v28, v31, v32);
    AssociationToMany.forKey(_:)(v29, v30);
  }

  else
  {
    *v1 = v33;
  }

  return result;
}

void *Table.hasOne<A, B>(_:through:using:key:)()
{
  sub_1B2117A5C();
  v11 = sub_1B2114758(v3, v4, v5, v6, v7, v8, v9, v10);
  v12(v11);
  v13 = sub_1B21145AC();
  v14(v13);
  sub_1B216CEF8(v33);
  sub_1B212D6B0();
  swift_getAssociatedTypeWitness();
  sub_1B211FDFC();
  result = sub_1B21E1C58(v15, v16);
  if (v0)
  {
    v18 = sub_1B212607C();
    type metadata accessor for HasOneThroughAssociation(v18, v19, v2, v20);
    WitnessTable = swift_getWitnessTable();
    sub_1B2113B34(WitnessTable, v22, v23, v24, v25, v26, v27, v28, v31, v32);
    AssociationToOne.forKey(_:)(v29, v30);
  }

  else
  {
    *v1 = v33;
  }

  return result;
}

uint64_t sub_1B21989E8()
{
  sub_1B211D530();
  sub_1B211566C();
  Table.all()(v0);
  v1 = sub_1B2115BE4();
  InterfaceRequest = type metadata accessor for QueryInterfaceRequest(v1, v2, v3, v4);
  sub_1B211508C(InterfaceRequest);
  v6 = sub_1B21115BC();
  v9 = DerivableRequest.annotated(with:)(v6, v7, v8);
  sub_1B2116508(v9, v10, v11, v12, v13, v14, v15, v16, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68);
  sub_1B211283C();
  v25 = sub_1B2118220(v17, v18, v19, v20, v21, v22, v23, v24, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v70);
  return v26(v25);
}

uint64_t Table.having(_:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_1B219AA80(a1, a2, a3, a4, a5, a6, a7, a8, *a1, *(a1 + 1), v16, v17, v18, v19, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11], __src[12], __src[13], __src[14], __src[15], __src[16], __src[17], __src[18], __src[19], __src[20], __dst[0], __dst[1]);
  v9 = sub_1B2115BE4();
  InterfaceRequest = type metadata accessor for QueryInterfaceRequest(v9, v10, v11, v12);
  sub_1B211508C(InterfaceRequest);
  DerivableRequest.having(_:)();
  memcpy(__dst, __src, 0xA2uLL);
  sub_1B211283C();
  return (*(v14 + 8))(__dst, a2);
}

void (*sub_1B2198B50(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t)))(uint64_t, uint64_t)
{
  sub_1B2115074(a1, a2);
  Table.all()(v5);
  v6 = sub_1B2122988();
  InterfaceRequest = type metadata accessor for QueryInterfaceRequest(v6, v7, v8, v9);
  a3(a1, InterfaceRequest);
  sub_1B2115BF0();
  sub_1B211608C(v11, v12, v13, v14, v15, v16, v17, v18, v30, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51);
  sub_1B21142DC();
  v27 = sub_1B2112FF4(v19, v20, v21, v22, v23, v24, v25, v26, v31);
  v28(v27);
  return a3;
}

void Table.exists<A>(_:key:)()
{
  sub_1B2111640();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v24 = v9;
  v10 = sub_1B2252B00();
  sub_1B21115E0();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v25[-1] - v14;
  v16 = v0[1];
  v25[0] = *v0;
  v25[1] = v16;
  sub_1B2111808();
  (*(v17 + 16))(v15, v8, v4);
  sub_1B21117B4(v15, 0, 1, v4);
  Table.filter<A>(key:)(v26, v15, v6, v4, v2);
  (*(v12 + 8))(v15, v10);
  v18 = sub_1B211A260();
  InterfaceRequest = type metadata accessor for QueryInterfaceRequest(v18, v19, v20, v21);
  QueryInterfaceRequest.isEmpty(_:)(v24, InterfaceRequest);
  memcpy(v25, v26, 0xA2uLL);
  sub_1B2111FD0();
  (*(v23 + 8))(v25, InterfaceRequest);
  sub_1B2112FDC();
}

uint64_t Table<A>.exists(_:id:)()
{
  sub_1B219AAB0();
  v3 = sub_1B2115074(v1, v2);
  Table<A>.filter(id:)(v3, v4, v5, v6);
  v7 = sub_1B2122988();
  type metadata accessor for QueryInterfaceRequest(v7, v8, v9, v10);
  v11 = sub_1B2115680();
  v13 = QueryInterfaceRequest.isEmpty(_:)(v11, v12);
  if (v0)
  {
    sub_1B211608C(v13, v14, v15, v16, v17, v18, v19, v20, v44, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66);
    sub_1B21142DC();
    v29 = sub_1B2112FF4(v21, v22, v23, v24, v25, v26, v27, v28, v45);
    v30(v29);
  }

  else
  {
    v32 = v13;
    sub_1B211608C(v13, v14, v15, v16, v17, v18, v19, v20, v44, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66);
    sub_1B21142DC();
    v41 = sub_1B2112FF4(v33, v34, v35, v36, v37, v38, v39, v40, v46);
    v42(v41);
    v31 = v32 ^ 1;
  }

  return sub_1B211D8B0(v31);
}

{
  sub_1B219AAB0();
  v3 = sub_1B2115074(v1, v2);
  Table<A>.filter(id:)(v3, v4, v5, v6, v7);
  v8 = sub_1B2122988();
  type metadata accessor for QueryInterfaceRequest(v8, v9, v10, v11);
  v12 = sub_1B2115680();
  v14 = QueryInterfaceRequest.isEmpty(_:)(v12, v13);
  if (v0)
  {
    sub_1B211608C(v14, v15, v16, v17, v18, v19, v20, v21, v45, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67);
    sub_1B21142DC();
    v30 = sub_1B2112FF4(v22, v23, v24, v25, v26, v27, v28, v29, v46);
    v31(v30);
  }

  else
  {
    v33 = v14;
    sub_1B211608C(v14, v15, v16, v17, v18, v19, v20, v21, v45, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67);
    sub_1B21142DC();
    v42 = sub_1B2112FF4(v34, v35, v36, v37, v38, v39, v40, v41, v47);
    v43(v42);
    v32 = v33 ^ 1;
  }

  return sub_1B211D8B0(v32);
}

uint64_t Table.exists(_:key:)()
{
  sub_1B219AAB0();
  v3 = sub_1B2115074(v1, v2);
  Table.filter(key:)(v3, v4);
  v5 = sub_1B2122988();
  type metadata accessor for QueryInterfaceRequest(v5, v6, v7, v8);
  v9 = sub_1B2115680();
  v11 = QueryInterfaceRequest.isEmpty(_:)(v9, v10);
  if (v0)
  {
    sub_1B211608C(v11, v12, v13, v14, v15, v16, v17, v18, v42, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64);
    sub_1B21142DC();
    v27 = sub_1B2112FF4(v19, v20, v21, v22, v23, v24, v25, v26, v43);
    v28(v27);
  }

  else
  {
    v30 = v11;
    sub_1B211608C(v11, v12, v13, v14, v15, v16, v17, v18, v42, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64);
    sub_1B21142DC();
    v39 = sub_1B2112FF4(v31, v32, v33, v34, v35, v36, v37, v38, v44);
    v40(v39);
    v29 = v30 ^ 1;
  }

  return sub_1B211D8B0(v29);
}

void Table.deleteAll<A>(_:keys:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1B2111640();
  a19 = v21;
  a20 = v22;
  v43 = v24;
  v44 = v23;
  v26 = v25;
  sub_1B21115E0();
  v28 = MEMORY[0x1EEE9AC00](v27);
  v30 = *v20;
  v31 = v20[1];
  (*(v32 + 16))(&v42 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0), v28);
  swift_getAssociatedTypeWitness();
  v33 = sub_1B22526C0();
  v46[0] = v33;
  sub_1B212607C();
  v34 = sub_1B22526A0();
  sub_1B2111968();
  swift_getWitnessTable();
  if (sub_1B2252900())
  {
  }

  else
  {
    v45[0] = v30;
    v45[1] = v31;
    a10 = v33;
    v35 = sub_1B212CD80();
    Table.filter<A>(keys:)(v46, &a10, v26, v34, v35, v43);

    v36 = sub_1B211A260();
    InterfaceRequest = type metadata accessor for QueryInterfaceRequest(v36, v37, v38, v39);
    QueryInterfaceRequest.deleteAll(_:)(v44);
    memcpy(v45, v46, 0xA2uLL);
    sub_1B2111FD0();
    (*(v41 + 8))(v45, InterfaceRequest);
  }

  sub_1B212CDA8();
  sub_1B2112FDC();
}

uint64_t Table<A>.deleteAll<A>(_:ids:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = *v7;
  v14 = v7[1];
  if ((sub_1B2252850() & 1) == 0)
  {
    Table<A>.filter<A>(ids:)(a2, a3, a4, a5, a6, a7);
    v16 = sub_1B211A260();
    InterfaceRequest = type metadata accessor for QueryInterfaceRequest(v16, v17, v18, v19);
    v21 = QueryInterfaceRequest.deleteAll(_:)(a1);
    sub_1B211D5DC(v21, v22, v23, v24, v25, v26, v27, v28, a1, v15, v14, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51);
    sub_1B21142DC();
    (*(v29 + 8))(__dst, InterfaceRequest);
  }

  return sub_1B2122C74();
}

BOOL Table<A>.deleteOne(_:id:)()
{
  sub_1B2135644();
  v4 = v3;
  v6 = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1B2152D64(AssociatedTypeWitness, AssociatedTypeWitness);
  sub_1B212348C();
  v9 = v8;
  sub_1B211AD38();
  v10 = sub_1B22525B0();
  (*(v9 + 16))(v11, v4, AssociatedTypeWitness);
  sub_1B2152E00(v10, AssociatedTypeWitness);
  v16 = v12;
  sub_1B212607C();
  v13 = sub_1B22526A0();
  sub_1B2111968();
  WitnessTable = swift_getWitnessTable();
  Table<A>.deleteAll<A>(_:ids:)(v6, &v16, v2, v13, v1, WitnessTable, v0);
  sub_1B2115BF0();

  return sub_1B2113158();
}

uint64_t Table<A>.deleteAll<A>(_:ids:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((sub_1B2252850() & 1) == 0)
  {
    Table<A>.filter<A>(ids:)(a2, a3, a4, a5, a6, a7, a8);
    v14 = sub_1B211A260();
    InterfaceRequest = type metadata accessor for QueryInterfaceRequest(v14, v15, v16, v17);
    QueryInterfaceRequest.deleteAll(_:)(a1);
    memcpy(__dst, __src, 0xA2uLL);
    sub_1B21142DC();
    (*(v19 + 8))(__dst, InterfaceRequest);
  }

  return sub_1B2122C74();
}

BOOL Table<A>.deleteOne(_:id:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1B2152D64(AssociatedTypeWitness, AssociatedTypeWitness);
  sub_1B212348C();
  v14 = v13;
  sub_1B211AD38();
  v15 = sub_1B22525B0();
  (*(v14 + 16))(v16, a2, AssociatedTypeWitness);
  sub_1B2152E00(v15, AssociatedTypeWitness);
  v21 = v17;
  sub_1B212607C();
  v18 = sub_1B22526A0();
  sub_1B2111968();
  WitnessTable = swift_getWitnessTable();
  Table<A>.deleteAll<A>(_:ids:)(a1, &v21, a3, v18, a4, WitnessTable, a5, a6);
  sub_1B2115BF0();

  return sub_1B2113158();
}

uint64_t Table.deleteAll(_:keys:)(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    sub_1B219AAB0();
    v29 = *v2;
    v31 = v2[1];
    Table.filter(keys:)(v3, v4);
    v5 = sub_1B2122988();
    type metadata accessor for QueryInterfaceRequest(v5, v6, v7, v8);
    v9 = sub_1B2115680();
    v10 = QueryInterfaceRequest.deleteAll(_:)(v9);
    sub_1B211608C(v10, v11, v12, v13, v14, v15, v16, v17, v29, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50);
    sub_1B21142DC();
    v26 = sub_1B2112FF4(v18, v19, v20, v21, v22, v23, v24, v25, v30);
    v27(v26);
  }

  return sub_1B2122C74();
}

BOOL Table.deleteOne(_:key:)()
{
  sub_1B21224F4();
  sub_1B21619D8(&qword_1EB7A1BB0, &qword_1B22598E0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1B22546B0;
  *(v2 + 32) = v0;

  Table.deleteAll(_:keys:)(v1, v2);
  sub_1B2115BF0();

  return sub_1B2113158();
}

uint64_t Table.updateAll(_:onConflict:_:)(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v6 = *a2;
  v31 = *v3;
  v33 = v3[1];
  Table.all()(v53);
  v54 = v6;
  v7 = sub_1B2115BE4();
  InterfaceRequest = type metadata accessor for QueryInterfaceRequest(v7, v8, v9, v10);
  v12 = QueryInterfaceRequest.updateAll(_:onConflict:_:)(a1, &v54, a3, InterfaceRequest);
  sub_1B21142EC(v12, v13, v14, v15, v16, v17, v18, v19, v31, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52);
  sub_1B211283C();
  v28 = sub_1B2114028(v20, v21, v22, v23, v24, v25, v26, v27, v32);
  v29(v28);
  return sub_1B212CDA8();
}

uint64_t Table.updateAll(_:onConflict:_:_:)()
{
  sub_1B2135644();
  v3 = v2;
  v8 = *v4;
  sub_1B21619D8(&qword_1EB7A0F68, &unk_1B2254680);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B22546B0;
  sub_1B214FAC0(v1, inited + 32);

  sub_1B216CE64(v6);
  Table.updateAll(_:onConflict:_:)(v3, &v8, inited);
  sub_1B2115BF0();

  return v0;
}

void sub_1B2199D48()
{
  type metadata accessor for Row();
  sub_1B2196360();
  if (!v0)
  {
    if (v3[5])
    {
      __break(1u);
    }

    else
    {
      v1[0] = 0;
      v1[1] = 0;
      static Row.fetchCursor(_:arguments:adapter:)(v2, v1, v3);
      sub_1B2142D18(&v2);
    }
  }
}

uint64_t sub_1B2199E1C()
{
  result = sub_1B2146A54(v14);
  if (v0)
  {
    return sub_1B2122C74();
  }

  if (!v14[6])
  {
    v9 = sub_1B2117FCC(result, v2, v3, v4, v5, v6, v7, v8, v12, v13, v14[0]);
    static Row.fetchCursor(_:arguments:adapter:)(v9, v10, v11);
    sub_1B2142D18(v14);
    return sub_1B2122C74();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B2199E98()
{
  v1 = type metadata accessor for Row();
  sub_1B2196360();
  if (!v0)
  {
    v10 = sub_1B212CF8C(v2, v3, v4, v5, v6, v7, v8, v9, v17, v18, v19[0]);
    v1 = static Row.fetchAll(_:arguments:adapter:)(v10, v11, v12);
    if (v20)
    {

      v14 = sub_1B2113B50();
      v20(v14);
      v15 = sub_1B2122C8C();
      sub_1B2112F4C(v15, v16);
    }

    sub_1B2142D18(v19);
  }

  return v1;
}

uint64_t sub_1B2199FB8(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Row();
  sub_1B2196360();
  if (!v2)
  {
    v6 = v13;
    if (v13)
    {
      v7 = v14;
      v10 = 0uLL;

      v8 = static Row.fetchAll(_:arguments:adapter:)(v11, &v10, v12);
      v6(a1, v8);
      sub_1B2168FE4(v8);
      a2 = v9;
      sub_1B2112F4C(v6, v7);
    }

    else
    {
      v10 = 0uLL;
      a2 = static Row.fetchSet(_:arguments:adapter:)(v11, &v10, v12);
    }

    sub_1B2142D18(&v11);
  }

  return a2;
}

uint64_t sub_1B219A14C()
{
  v1 = sub_1B2146A54(&v20);
  if (!v0)
  {
    v10 = v22;
    if (v22)
    {
      v11 = v20;
      v19 = 0uLL;

      v15 = static Row.fetchAll(_:arguments:adapter:)(v11, &v19, &v21);
      v16 = sub_1B2115B7C();
      v10(v16);
      sub_1B2168FE4(v15);
      v17 = sub_1B2113B50();
      sub_1B2112F4C(v17, v18);
      sub_1B2142D18(&v20);
    }

    else
    {
      v12 = sub_1B2117FCC(v1, v2, v3, v4, v5, v6, v7, v8, v19, *(&v19 + 1), v20);
      static Row.fetchSet(_:arguments:adapter:)(v12, v13, v14);
      sub_1B2142D18(&v20);
    }
  }

  return sub_1B2122C74();
}

uint64_t sub_1B219A27C(uint64_t a1)
{
  v3 = type metadata accessor for Row();
  sub_1B2196360();
  if (!v1)
  {
    v9 = 0uLL;
    v4 = static Row.fetchOne(_:arguments:adapter:)(v10[0], &v9, &v10[1]);
    v3 = v4;
    if (v4)
    {
      v6 = v11;
      if (v11)
      {
        v7 = v12;
        sub_1B21619D8(qword_1EB7A13D0, qword_1B2257E80);
        v8 = swift_allocObject();
        *(v8 + 16) = xmmword_1B2257570;
        *(v8 + 32) = v3;
        sub_1B2112328(v6, v7);

        v6(a1, v8);

        sub_1B2112F4C(v6, v7);
      }
    }

    sub_1B2142D18(v10);
  }

  return v3;
}

uint64_t sub_1B219A428()
{
  sub_1B213CACC();
  v4 = sub_1B2146A54(v3);
  if (!v0)
  {
    v12 = sub_1B212CF8C(v4, v5, v6, v7, v8, v9, v10, v11, v23, v24, v25[0]);
    v15 = static Row.fetchOne(_:arguments:adapter:)(v12, v13, v14);
    v1 = v15;
    if (v15)
    {
      v17 = v26;
      if (v26)
      {
        sub_1B21619D8(qword_1EB7A13D0, qword_1B2257E80);
        v18 = swift_allocObject();
        *(v18 + 16) = xmmword_1B2257570;
        *(v18 + 32) = v1;
        v19 = sub_1B2122C8C();
        sub_1B2112328(v19, v20);

        v17(v2, v18);

        v21 = sub_1B2122C8C();
        sub_1B2112F4C(v21, v22);
      }
    }

    sub_1B2142D18(v25);
  }

  return v1;
}

uint64_t sub_1B219A54C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B219A588(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1B219A5C8(uint64_t result, int a2, int a3)
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

void sub_1B219A604(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v28 = *(a1 + 16);
  for (i = (a1 + 64); ; i += 40)
  {
    if (v28 == v4)
    {
LABEL_17:

      return;
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      sub_1B2253390();
      __break(1u);
      goto LABEL_23;
    }

    v6 = *i;
    v8 = *(i - 2);
    v7 = *(i - 1);
    v10 = *(i - 4);
    v9 = *(i - 3);

    sub_1B2113A20(v8, v7, v6);
    if (!v9)
    {
      goto LABEL_17;
    }

    v30 = v7;
    v31 = v6;
    v11 = *a3;
    v13 = sub_1B211E590();
    v14 = v11[2];
    v15 = (v12 & 1) == 0;
    v16 = v14 + v15;
    if (__OFADD__(v14, v15))
    {
      goto LABEL_20;
    }

    v17 = v12;
    if (v11[3] < v16)
    {
      break;
    }

    if (a2)
    {
      if (v12)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_1B21619D8(&qword_1EB7A1918, &qword_1B226A9E0);
      sub_1B2252E80();
      if (v17)
      {
        goto LABEL_15;
      }
    }

LABEL_12:
    v20 = *a3;
    *(*a3 + 8 * (v13 >> 6) + 64) |= 1 << v13;
    v21 = (v20[6] + 16 * v13);
    *v21 = v10;
    v21[1] = v9;
    v22 = v20[7] + 24 * v13;
    *v22 = v8;
    *(v22 + 8) = v30;
    *(v22 + 16) = v31;
    v23 = v20[2];
    v24 = __OFADD__(v23, 1);
    v25 = v23 + 1;
    if (v24)
    {
      goto LABEL_21;
    }

    v20[2] = v25;
    ++v4;
    a2 = 1;
  }

  sub_1B2245C58(v16, a2 & 1);
  v18 = sub_1B211E590();
  if ((v17 & 1) != (v19 & 1))
  {
    goto LABEL_22;
  }

  v13 = v18;
  if ((v17 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_15:
  v26 = swift_allocError();
  swift_willThrow();
  v27 = v26;
  sub_1B21619D8(qword_1EB7A0F98, &unk_1B22595B0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_1B2113A44(v8, v30, v31);

    return;
  }

LABEL_23:
  sub_1B2252CD0();
  MEMORY[0x1B2741EB0](0xD00000000000001BLL, 0x80000001B226CFA0);
  sub_1B2252E10();
  MEMORY[0x1B2741EB0](39, 0xE100000000000000);
  sub_1B2252EC0();
  __break(1u);
}

uint64_t sub_1B219A994()
{

  if (v0[8])
  {
  }

  if (v0[17])
  {
  }

  if (v0[19])
  {
  }

  return swift_deallocObject();
}

void *sub_1B219AA80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  v39 = v37[1];
  a36 = *v37;
  a37 = v39;

  return Table.all()(&a15);
}

void *sub_1B219AAC8@<X0>(void *a1@<X8>)
{
  v2 = sub_1B2251D30();
  NSURL.databaseValue.getter(&v4);

  __src[0] = v4;
  LOBYTE(__src[1]) = v5;
  sub_1B2127D7C(__src);
  return memcpy(a1, __src, 0xA3uLL);
}

void *sub_1B219AB2C()
{
  if (qword_1ED85D6E0 != -1)
  {
    swift_once();
  }

  v0 = qword_1ED85D6E8;
  v1 = sub_1B2251E50();
  v2 = [v0 stringFromDate_];

  v3 = sub_1B22522A0();
  v5 = v4;

  *__src = v3;
  v17 = v5;
  v18 = 2;
  v6 = sub_1B2127D7C(__src);
  return sub_1B21182E8(v6, v7, v8, v9, v10, v11, v12, v13, v15);
}

void *sub_1B219ABEC@<X0>(void *a2@<X8>)
{
  v6[21] = *MEMORY[0x1E69E9840];
  v6[0] = sub_1B2251ED0();
  v6[1] = v3;
  v6[0] = MEMORY[0x1B27418E0](v6, 16);
  v6[1] = v4;
  LOBYTE(v6[2]) = 3;
  sub_1B2127D7C(v6);
  return memcpy(a2, v6, 0xA3uLL);
}

void *sub_1B219AC78@<X0>(void *a1@<X8>)
{
  DatabaseDateComponents.databaseValue.getter();
  __src[0] = v3;
  LOBYTE(__src[1]) = v4;
  sub_1B2127D7C(__src);
  return memcpy(a1, __src, 0xA3uLL);
}

uint64_t sub_1B219ACD0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  __src[0] = a1;
  __src[1] = a2;
  LOBYTE(__src[2]) = 3;
  sub_1B2127D7C(__src);
  memcpy(a3, __src, 0xA3uLL);
  return sub_1B2126638(a1, a2);
}

void *sub_1B219AD38(float a1)
{
  *__src = a1;
  v12 = 0;
  v13 = 1;
  v1 = sub_1B2127D7C(__src);
  return sub_1B21182E8(v1, v2, v3, v4, v5, v6, v7, v8, v10);
}

void sub_1B219AD80()
{
  sub_1B2111F14();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v24 = v6;
  v7 = HIDWORD(v4);
  v8 = HIWORD(v4);
  v9 = v2 >> 16;
  v10 = HIDWORD(v2);
  v22 = HIWORD(v2);
  v23 = HIWORD(v0);
  v11 = sub_1B2251F10();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  sub_1B2111844();
  v15 = v14 - v13;
  LODWORD(v25[0]) = v5;
  WORD2(v25[0]) = v7;
  HIWORD(v25[0]) = v8;
  LOWORD(v25[1]) = v3;
  WORD1(v25[1]) = v9;
  WORD2(v25[1]) = v10;
  HIWORD(v25[1]) = v22;
  LOWORD(v25[2]) = v1;
  WORD1(v25[2]) = v23;
  v16 = [objc_allocWithZone(MEMORY[0x1E696AB90]) initWithDecimal_];
  sub_1B2251EF0();
  v17 = sub_1B2251F00();
  (*(v12 + 8))(v15, v11);
  v18 = [v16 descriptionWithLocale_];

  v19 = sub_1B22522A0();
  v21 = v20;

  v25[0] = v19;
  v25[1] = v21;
  LOBYTE(v25[2]) = 2;
  sub_1B2127D7C(v25);
  memcpy(v24, v25, 0xA3uLL);
  sub_1B2111588();
}

void *sub_1B219AF60(char a1)
{
  *__src = a1;
  v12 = 0;
  v13 = 0;
  v1 = sub_1B2127D7C(__src);
  return sub_1B21182E8(v1, v2, v3, v4, v5, v6, v7, v8, v10);
}

void *sub_1B219AFA0(__int16 a1)
{
  *__src = a1;
  v12 = 0;
  v13 = 0;
  v1 = sub_1B2127D7C(__src);
  return sub_1B21182E8(v1, v2, v3, v4, v5, v6, v7, v8, v10);
}

void *sub_1B219AFE0(int a1)
{
  *__src = a1;
  v12 = 0;
  v13 = 0;
  v1 = sub_1B2127D7C(__src);
  return sub_1B21182E8(v1, v2, v3, v4, v5, v6, v7, v8, v10);
}

void *sub_1B219B020(unsigned __int8 a1)
{
  *__src = a1;
  v12 = 0;
  v13 = 0;
  v1 = sub_1B2127D7C(__src);
  return sub_1B21182E8(v1, v2, v3, v4, v5, v6, v7, v8, v10);
}

void *sub_1B219B060(unsigned __int16 a1)
{
  *__src = a1;
  v12 = 0;
  v13 = 0;
  v1 = sub_1B2127D7C(__src);
  return sub_1B21182E8(v1, v2, v3, v4, v5, v6, v7, v8, v10);
}

void *sub_1B219B0A0(unsigned int __src)
{
  *__srca = __src;
  v12 = 0;
  v13 = 0;
  v1 = sub_1B2127D7C(__srca);
  return sub_1B21182E8(v1, v2, v3, v4, v5, v6, v7, v8, v10);
}

uint64_t sub_1B219B0E0(uint64_t __src)
{
  if (__src < 0)
  {
    __break(1u);
  }

  else
  {
    *__srca = __src;
    v11 = 0;
    v12 = 0;
    v1 = sub_1B2127D7C(__srca);
    return sub_1B21182E8(v1, v2, v3, v4, v5, v6, v7, v8, v9);
  }

  return __src;
}

uint64_t sub_1B219B14C()
{
  sub_1B2253420();
  MEMORY[0x1B2742F10](0);
  return sub_1B2253470();
}

uint64_t sub_1B219B1A0(uint64_t a1)
{
  sub_1B2253420();
  MEMORY[0x1B2742F10](0);
  return sub_1B2253470();
}

uint64_t FTS5.Diacritics.hashValue.getter()
{
  v1 = *v0;
  sub_1B2253420();
  MEMORY[0x1B2742F10](v1);
  return sub_1B2253470();
}

GRDBInternal::FTS5 __swiftcall FTS5.init()()
{
  sub_1B21145C4(v0);
  result.moduleName._object = v2;
  result.moduleName._countAndFlagsBits = v1;
  return result;
}

uint64_t sub_1B219B280(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Configuration(0);
  v5 = (v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  sub_1B2111844();
  v8 = v7 - v6;
  *v8 = 1;
  *(v8 + 8) = 0;
  *(v8 + 16) = 0;
  *(v8 + 23) = 0;
  *(v8 + 32) = MEMORY[0x1E69E7CC0];
  *(v8 + 40) = 0;
  *(v8 + 48) = 0;
  *(v8 + 56) = 0;
  *(v8 + 64) = 2;
  *(v8 + 72) = 0;
  *(v8 + 80) = 0;
  *(v8 + 88) = -1;
  *(v8 + 96) = 5;
  sub_1B2252110();
  *(v8 + v5[19]) = 0;
  *(v8 + v5[20]) = 0;
  *(v8 + v5[21]) = 1;
  *(v8 + v5[22]) = 0;
  v9 = (v8 + v5[23]);
  *v9 = 0;
  v9[1] = 0;
  v10 = (v8 + v5[24]);
  *v10 = 0;
  v10[1] = 0;
  v11 = (v8 + v5[25]);
  type metadata accessor for DatabaseQueue();
  *v11 = 0;
  v11[1] = 0;
  swift_allocObject();
  DatabaseQueue.init(configuration:)(v8);
  v15 = a1;
  v16 = a2;
  v12 = sub_1B21FB5C4(sub_1B21A1678, v14);

  return v12;
}

void sub_1B219B3F8(uint64_t a1@<X1>, unint64_t a2@<X2>, void *a3@<X8>)
{
  static FTS5TokenizerDescriptor.ascii(separators:tokenCharacters:)(MEMORY[0x1E69E7CD0], MEMORY[0x1E69E7CD0], &v23);
  Database.makeTokenizer(_:)(&v23);
  if (v3)
  {
  }

  else
  {
    v8 = v7;

    ObjectType = swift_getObjectType();
    v10 = FTS5Tokenizer.tokenize(query:)(a1, a2, ObjectType, v8);
    swift_unknownObjectRelease();
    v11 = 0;
    v12 = *(v10 + 16);
    v13 = MEMORY[0x1E69E7CC0];
LABEL_4:
    v14 = 24 * v11;
    while (1)
    {
      if (v12 == v11)
      {

        *a3 = v13;
        return;
      }

      if (v11 >= *(v10 + 16))
      {
        break;
      }

      ++v11;
      v15 = v14 + 24;
      v16 = *(v10 + v14 + 48);
      v14 += 24;
      if ((v16 & 1) == 0)
      {
        v17 = *(v10 + v15 + 16);
        v22 = *(v10 + v15 + 8);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1B214400C();
          v13 = v20;
        }

        v18 = *(v13 + 16);
        if (v18 >= *(v13 + 24) >> 1)
        {
          sub_1B214400C();
          v13 = v21;
        }

        *(v13 + 16) = v18 + 1;
        v19 = v13 + 16 * v18;
        *(v19 + 32) = v22;
        *(v19 + 40) = v17;
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

double FTS5.makeTableDefinition(configuration:)(char *a1)
{
  v1 = *a1;
  type metadata accessor for FTS5TableDefinition();
  v2 = swift_allocObject();
  *(v2 + 24) = MEMORY[0x1E69E7CC0];
  result = 0.0;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0;
  *(v2 + 80) = 0;
  *(v2 + 88) = 0;
  *(v2 + 72) = 0;
  *(v2 + 96) = 1;
  *(v2 + 104) = 0;
  *(v2 + 112) = 0;
  *(v2 + 16) = v1;
  return result;
}

unint64_t FTS5.moduleArguments(for:in:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1B21115FC();
  swift_beginAccess();
  if (!sub_1B2118640(*(a1 + 24)))
  {
    result = sub_1B2252EC0();
    __break(1u);
    return result;
  }

  v243 = a1;
  v6 = *(a1 + 24);
  v7 = sub_1B2118640(v6);
  v8 = MEMORY[0x1E69E7CC0];
  v246 = a2;
  if (v7)
  {
    v9 = v7;
    if (v7 < 1)
    {
      __break(1u);
LABEL_96:
      sub_1B21173D4(&qword_1ED85D658);
      goto LABEL_19;
    }

    v240 = v2;
    v259 = v6 & 0xC000000000000001;

    v10 = 0;
    v11 = MEMORY[0x1E69E7CC0];
    do
    {
      if (v259)
      {
        v12 = MEMORY[0x1B27427E0](v10, v6);
      }

      else
      {
        v12 = *(v6 + 8 * v10 + 32);
      }

      if (*(v12 + 32) == 1)
      {
        v14 = *(v12 + 16);
        v13 = *(v12 + 24);
      }

      else
      {
        v15 = *(v12 + 24);
        __src[0] = *(v12 + 16);
        __src[1] = v15;

        MEMORY[0x1B2741EB0](0x5845444E494E5520, 0xEA00000000004445);
        v14 = __src[0];
        v13 = __src[1];
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1B21150D0();
        sub_1B214400C();
        v11 = v19;
      }

      v17 = *(v11 + 16);
      v16 = *(v11 + 24);
      v8 = v11;
      if (v17 >= v16 >> 1)
      {
        sub_1B2112994(v16);
        sub_1B214400C();
        v8 = v20;
      }

      v10 = v10 + 1;

      *(v8 + 16) = v17 + 1;
      v11 = v8;
      v18 = v8 + 16 * v17;
      *(v18 + 32) = v14;
      *(v18 + 40) = v13;
    }

    while (v9 != v10);

    v3 = v2;
  }

  v21 = v243;
  sub_1B21115FC();
  swift_beginAccess();
  v9 = &unk_1ED861000;
  if (!*(v243 + 72))
  {
    v30 = v8;
    goto LABEL_27;
  }

  v254[0] = *(v243 + 72);

  sub_1B21619D8(&qword_1EB7A0DA0, &qword_1B2254340);
  sub_1B215175C();
  sub_1B212D844();
  v22 = sub_1B2252250();
  v24 = v23;

  *v255 = v22;
  v256 = v24;
  LOBYTE(v257) = 2;
  sub_1B2127D7C(v255);
  sub_1B2115EAC();
  if (qword_1ED85D658 != -1)
  {
    goto LABEL_96;
  }

LABEL_19:
  v25 = v9[288];

  v26 = MEMORY[0x1E69E7CC0];
  sub_1B2116B4C();
  v27 = type metadata accessor for SQLGenerationContext();
  sub_1B211AD64(v27);

  sub_1B2117164(v28, v25, v26);
  sub_1B211D5F8();
  v29 = sub_1B2117C50();
  v30 = v3;
  sub_1B2127E58(v29, v31);
  if (v3)
  {
LABEL_20:

LABEL_47:
  }

  v33 = v32;

  v34 = sub_1B213CF0C(0x657A696E656B6F74uLL);
  MEMORY[0x1B2741EB0](v34, v33);

  v35 = v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1B21150D0();
    sub_1B214400C();
    v35 = isUniquelyReferenced_nonNull_native;
  }

  v21 = v243;
  v39 = *(v35 + 24);
  v40 = v35;
  if (*(v35 + 16) >= v39 >> 1)
  {
    sub_1B2112994(v39);
    sub_1B214400C();
    v40 = isUniquelyReferenced_nonNull_native;
  }

  sub_1B213CAE4(isUniquelyReferenced_nonNull_native, v37, v38, v40);
LABEL_27:
  v42 = *(v21 + 32);
  v41 = *(v21 + 40);
  v43 = *(v21 + 48);
  v44 = *(v21 + 56);
  if (*(v21 + 64) == 1)
  {
    v259 = v30;
    v249[0] = 0x3D746E65746E6F63;
    v249[1] = 0xE800000000000000;
    *v255 = v42;
    v256 = v41;
    LOBYTE(v257) = 2;
    sub_1B2127D7C(v255);
    sub_1B2115EAC();
    sub_1B2111658();
    sub_1B213CB6C();
    sub_1B219DEE4(v45, v46, v47, v48, v49);
    v50 = qword_1ED85D658;

    if (v50 != -1)
    {
      sub_1B21173D4(&qword_1ED85D658);
    }

    sub_1B2116B4C();
    v51 = type metadata accessor for SQLGenerationContext();
    v52 = sub_1B211AD64(v51);
    sub_1B21A18D4(v52, v53, v54, v55, v56, v57, v58, v59, v230, v232, v234, v236, v44, v43, v243, v246);
    sub_1B211722C();
    sub_1B2117164(v60, v61, v62);
    sub_1B211D5F8();
    v63 = sub_1B2117C50();
    v65 = sub_1B2127E58(v63, v64);
    if (v3)
    {

      sub_1B2111658();
      sub_1B211722C();
      sub_1B219DF24(v67, v68, v69, v70, 1);
      sub_1B2111658();
      sub_1B211722C();
      sub_1B219DF24(v71, v72, v73, v74, 1);
    }

    v94 = v65;
    v95 = v66;
    v236 = v51;

    v96 = sub_1B2111658();
    sub_1B219DF24(v96, v97, v240, v238, 1);
    MEMORY[0x1B2741EB0](v94, v95);

    v98 = v249[0];
    v99 = v249[1];
    v100 = v259;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1B21150D0();
      sub_1B214400C();
      v100 = v221;
    }

    sub_1B2117FE4();
    if (v102)
    {
      sub_1B2112994(v101);
      sub_1B214400C();
      v259 = v222;
    }

    v103 = v259;
    *(v259 + 16) = v100;
    v104 = v103 + 16 * v95;
    *(v104 + 32) = v98;
    *(v104 + 40) = v99;
    sub_1B2111658();
    Database.primaryKey(_:)();
    sub_1B2111658();
    sub_1B213CB6C();
    sub_1B219DF24(v134, v135, v136, v137, v138);
    if (v253)
    {
      v93 = 0;
      if (v253 == 1)
      {
        v139 = sub_1B2117214();
        sub_1B21424A0(v139, v140, 1u);
      }

      v21 = v243;
      goto LABEL_63;
    }

    v249[0] = v251;
    v249[1] = v252;
    LOBYTE(v249[2]) = 2;
    sub_1B2127D7C(v249);
    memcpy(v254, v249, 0xA3uLL);

    sub_1B2116B4C();
    v201 = sub_1B211AD64(v51);
    sub_1B21A18D4(v201, v202, v203, v204, v205, v206, v207, v208, v230, v232, v234, v51, v238, v240, v243, v246);
    sub_1B211722C();
    v212 = sub_1B2117164(v209, v210, v211);
    memcpy(v248, v254, 0xA3uLL);
    v93 = 0;
    v213 = sub_1B2127E58(v212, 0);
    v215 = v214;

    v216 = sub_1B2117214();
    sub_1B21424A0(v216, v217, 0);
    v248[0] = 0;
    v248[1] = 0xE000000000000000;
    sub_1B2252CD0();

    sub_1B2124BAC();
    v248[0] = v218;
    sub_1B211F188();
    v248[1] = v219;
    MEMORY[0x1B2741EB0](v213, v215);

    sub_1B211AD58();
    if (v102)
    {
      sub_1B2112994(v220);
      sub_1B214400C();
      v259 = v229;
    }

    v21 = v243;
    goto LABEL_58;
  }

  if (v41)
  {
    v241 = *(v21 + 48);
    v259 = v30;
    *v255 = v42;
    v256 = v41;
    LOBYTE(v257) = 2;
    sub_1B2127D7C(v255);
    sub_1B2115EAC();
    v76 = qword_1ED85D658;

    if (v76 != -1)
    {
      sub_1B21173D4(&qword_1ED85D658);
    }

    sub_1B2116B4C();
    v77 = type metadata accessor for SQLGenerationContext();
    v78 = sub_1B211AD64(v77);
    sub_1B21A18D4(v78, v79, v80, v81, v82, v83, v84, v85, v230, v232, v234, v236, v238, v241, v243, v246);
    sub_1B21234A8();
    sub_1B2117164(v86, v87, v88);
    sub_1B211D5F8();
    v89 = sub_1B2117C50();
    v30 = v3;
    v91 = sub_1B2127E58(v89, v90);
    v93 = v3;
    if (v3)
    {

      goto LABEL_47;
    }

    v122 = v91;
    v123 = v92;

    strcpy(v254, "content=");
    BYTE1(v254[1]) = 0;
    WORD1(v254[1]) = 0;
    HIDWORD(v254[1]) = -402653184;
    MEMORY[0x1B2741EB0](v122, v123);

    if ((sub_1B2113000() & 1) == 0)
    {
      sub_1B21150D0();
      sub_1B214400C();
    }

    v21 = v243;
    sub_1B211AD58();
    if (v102)
    {
      sub_1B2112994(v128);
      sub_1B214400C();
      v127 = v124;
    }

    sub_1B213CAE4(v124, v125, v126, v127);
    v43 = v240;
    if (!v44)
    {
      goto LABEL_53;
    }

LABEL_43:
    v105 = v30;
    *v255 = v43;
    v256 = v44;
    LOBYTE(v257) = 2;
    sub_1B2127D7C(v255);
    sub_1B2115EAC();
    if (qword_1ED85D658 != -1)
    {
      sub_1B21173D4(&qword_1ED85D658);
    }

    sub_1B2116B4C();
    v106 = type metadata accessor for SQLGenerationContext();
    v107 = sub_1B211AD64(v106);
    sub_1B21A18D4(v107, v108, v109, v110, v111, v112, v113, v114, v230, v232, v234, v236, v238, v240, v243, v246);
    sub_1B21234A8();
    sub_1B2117164(v115, v116, v117);
    sub_1B211D5F8();
    v118 = sub_1B2117C50();
    v120 = sub_1B2127E58(v118, v119);
    if (v93)
    {

      goto LABEL_47;
    }

    v129 = v120;
    v130 = v121;

    sub_1B2252CD0();

    sub_1B2124BAC();
    v254[0] = v131;
    sub_1B211F188();
    v254[1] = v132;
    MEMORY[0x1B2741EB0](v129, v130);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1B21150D0();
      sub_1B214400C();
      v105 = v226;
    }

    v21 = v243;
    v259 = v105;
    sub_1B211AD58();
    if (v102)
    {
      sub_1B2112994(v133);
      sub_1B214400C();
      v259 = v227;
    }

LABEL_58:
    sub_1B2122504();
    goto LABEL_63;
  }

  v93 = v3;
  if (v44)
  {
    goto LABEL_43;
  }

LABEL_53:
  v259 = v30;
LABEL_63:
  sub_1B21115FC();
  swift_beginAccess();
  if (*(v21 + 80))
  {

    sub_1B219C484(v141, v142, v143, v144, v145, v146, v147, v148, v230, v232, v234, v236, v238, v240, v243, v246, v248[0], v248[1], v248[2], v248[3], v248[4], v248[5], v248[6], v248[7], v248[8], v248[9]);
    v150 = v149;

    v155 = *(v150 + 16);
    if (v155)
    {
      v242 = v93;
      __src[0] = MEMORY[0x1E69E7CC0];
      sub_1B2116B10(0, v155, 0, v151, v152, v153, v154);
      v156 = 32;
      v157 = __src[0];
      do
      {
        v254[0] = *(v150 + v156);
        v158 = sub_1B2252FD0();
        v160 = v159;
        __src[0] = v157;
        v162 = *(v157 + 16);
        v161 = *(v157 + 24);
        if (v162 >= v161 >> 1)
        {
          v164 = sub_1B211156C(v161);
          sub_1B2116B10(v164, v162 + 1, 1, v165, v166, v167, v168);
          v157 = __src[0];
        }

        *(v157 + 16) = v162 + 1;
        v163 = v157 + 16 * v162;
        *(v163 + 32) = v158;
        *(v163 + 40) = v160;
        v156 += 8;
        --v155;
      }

      while (v155);

      v93 = v242;
    }

    else
    {

      v157 = MEMORY[0x1E69E7CC0];
    }

    v254[0] = v157;
    sub_1B21619D8(&qword_1EB7A0DA0, &qword_1B2254340);
    sub_1B215175C();
    sub_1B212D844();
    v169 = sub_1B2252250();
    v171 = v170;

    __src[0] = v169;
    __src[1] = v171;
    LOBYTE(__src[2]) = 2;
    sub_1B2127D7C(__src);
    memcpy(__dst, __src, sizeof(__dst));
    if (qword_1ED85D658 != -1)
    {
      sub_1B21173D4(&qword_1ED85D658);
    }

    sub_1B2116B4C();
    v172 = type metadata accessor for SQLGenerationContext();
    v173 = sub_1B211AD64(v172);
    sub_1B21A18D4(v173, v174, v175, v176, v177, v178, v179, v180, v231, v233, v235, v237, v239, v242, v244, v247);
    sub_1B21234A8();
    v184 = sub_1B2117164(v181, v182, v183);
    sub_1B2127E58(v184, 0);
    if (v93)
    {
      goto LABEL_20;
    }

    v186 = v185;

    v187 = sub_1B213CF0C(0x3D786966657270uLL);
    MEMORY[0x1B2741EB0](v187, v186);

    if ((sub_1B2113000() & 1) == 0)
    {
      sub_1B21150D0();
      sub_1B214400C();
    }

    v21 = v245;
    sub_1B2117FE4();
    if (v102)
    {
      sub_1B2112994(v188);
      sub_1B214400C();
      v259 = v228;
    }

    sub_1B2122504();
  }

  sub_1B21115FC();
  swift_beginAccess();
  if ((*(v21 + 96) & 1) == 0)
  {
    v189 = *(v21 + 88);
    strcpy(v254, "columnSize=");
    HIDWORD(v254[1]) = -352321536;
    v249[0] = v189;
    v190 = sub_1B2252FD0();
    MEMORY[0x1B2741EB0](v190);

    if ((sub_1B2113000() & 1) == 0)
    {
      sub_1B21150D0();
      sub_1B214400C();
    }

    sub_1B2117FE4();
    if (v102)
    {
      sub_1B2112994(v191);
      sub_1B214400C();
      v259 = v225;
    }

    sub_1B2122504();
  }

  sub_1B21115FC();
  swift_beginAccess();
  v192 = *(v21 + 112);
  if (!v192)
  {
    return v259;
  }

  v193 = *(v21 + 104);
  v249[0] = 0x3D6C6961746564;
  v249[1] = 0xE700000000000000;

  MEMORY[0x1B2741EB0](v193, v192);

  v194 = v249[0];
  v195 = v249[1];
  v196 = v259;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1B21150D0();
    sub_1B214400C();
    v196 = v223;
  }

  v197 = *(v196 + 16);
  sub_1B211AD58();
  if (v102)
  {
    sub_1B2112994(v199);
    sub_1B214400C();
    v198 = v224;
  }

  *(v198 + 16) = v196;
  result = v198;
  v200 = v198 + 16 * v197;
  *(v200 + 32) = v194;
  *(v200 + 40) = v195;
  return result;
}