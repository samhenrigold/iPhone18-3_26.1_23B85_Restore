uint64_t sub_100968B44()
{
  v1 = v0[3];
  v2 = v1[3];
  v3 = v1[4];
  sub_1000035D0(v1, v2);
  (*(*(*(v3 + 8) + 8) + 32))(v2);
  v4 = v1[3];
  v5 = v1[4];
  sub_1000035D0(v1, v4);
  (*(v5 + 192))(v4, v5);
  v6 = swift_task_alloc();
  v0[16] = v6;
  *v6 = v0;
  v6[1] = sub_100968C6C;
  v7 = v0[10];
  v8 = v0[7];
  v9 = v0[2];

  return sub_1010CD424(v9, v7, v8);
}

uint64_t sub_100968C6C()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 64);
  v4 = *(*v0 + 56);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 40);
  v7 = *(*v0 + 32);

  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_100968E3C, v7, 0);
}

uint64_t sub_100968E3C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100968EB8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100968F34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[92] = v5;
  v6[91] = a5;
  v6[90] = a4;
  v6[89] = a3;
  v6[88] = a2;
  v6[87] = a1;
  v6[93] = sub_1000BC4D4(&qword_1016AF888, &unk_1013CAD70);
  v6[94] = swift_task_alloc();
  v6[95] = swift_task_alloc();
  v6[96] = swift_task_alloc();
  v6[97] = swift_task_alloc();
  v7 = type metadata accessor for BeaconStatus(0);
  v6[98] = v7;
  v6[99] = *(v7 - 8);
  v6[100] = swift_task_alloc();
  v6[101] = sub_1000BC4D4(&qword_1016AF880, &unk_10138CE20);
  v6[102] = swift_task_alloc();
  v8 = type metadata accessor for OwnedBeaconGroup(0);
  v6[103] = v8;
  v9 = *(v8 - 8);
  v6[104] = v9;
  v6[105] = *(v9 + 64);
  v6[106] = swift_task_alloc();
  v6[107] = swift_task_alloc();
  sub_1000BC4D4(&unk_1016AF890, &qword_1013926D0);
  v6[108] = swift_task_alloc();
  type metadata accessor for String.Encoding();
  v6[109] = swift_task_alloc();
  v6[110] = type metadata accessor for LocalFindableAccessoryRecord(0);
  v6[111] = swift_task_alloc();
  v6[112] = swift_task_alloc();
  v6[113] = sub_1000BC4D4(&qword_10169DBD8, &qword_1013BF910);
  v6[114] = swift_task_alloc();
  v6[115] = swift_task_alloc();
  sub_1000BC4D4(&unk_1016AF8A0, &unk_10139D7C0);
  v6[116] = swift_task_alloc();
  v10 = sub_1000BC4D4(&unk_1016C8FC0, &unk_10139D7D0);
  v6[117] = v10;
  v6[118] = *(v10 - 8);
  v6[119] = swift_task_alloc();
  v6[120] = *(type metadata accessor for SafeLocation(0) - 8);
  v6[121] = swift_task_alloc();
  v6[122] = swift_task_alloc();
  v11 = type metadata accessor for KeyDropLostItemDates(0);
  v6[123] = v11;
  v6[124] = *(v11 - 8);
  v6[125] = swift_task_alloc();
  sub_1000BC4D4(&unk_101698C20, &qword_101390748);
  v6[126] = swift_task_alloc();
  v6[127] = swift_task_alloc();
  sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  v6[128] = swift_task_alloc();
  v6[129] = swift_task_alloc();
  v12 = type metadata accessor for SharedBeaconRecord(0);
  v6[130] = v12;
  v6[131] = *(v12 - 8);
  v6[132] = swift_task_alloc();
  v6[133] = swift_task_alloc();
  v6[134] = swift_task_alloc();
  v6[135] = swift_task_alloc();
  v6[136] = swift_task_alloc();
  v6[137] = swift_task_alloc();
  v6[138] = swift_task_alloc();
  v6[139] = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  v6[140] = swift_task_alloc();
  v6[141] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  v6[142] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v6[143] = swift_task_alloc();
  v6[144] = swift_task_alloc();
  v6[145] = swift_task_alloc();
  v6[146] = swift_task_alloc();
  v6[147] = swift_task_alloc();
  v6[148] = swift_task_alloc();
  v6[149] = swift_task_alloc();
  v6[150] = sub_1000BC4D4(&unk_1016A99E0, &qword_1013A07B0);
  v6[151] = swift_task_alloc();
  v6[152] = swift_task_alloc();
  sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v6[153] = swift_task_alloc();
  v13 = type metadata accessor for OwnedBeaconRecord(0);
  v6[154] = v13;
  v14 = *(v13 - 8);
  v6[155] = v14;
  v6[156] = *(v14 + 64);
  v6[157] = swift_task_alloc();
  v6[158] = swift_task_alloc();
  v6[159] = swift_task_alloc();
  v6[160] = swift_task_alloc();
  v6[161] = swift_task_alloc();
  sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v6[162] = swift_task_alloc();
  v6[163] = swift_task_alloc();
  v6[164] = swift_task_alloc();
  v6[165] = swift_task_alloc();
  v6[166] = swift_task_alloc();
  v15 = type metadata accessor for Date();
  v6[167] = v15;
  v6[168] = *(v15 - 8);
  v6[169] = swift_task_alloc();
  v6[170] = swift_task_alloc();
  v6[171] = swift_task_alloc();
  v6[172] = sub_1000BC4D4(&unk_1016AA420, &unk_1013BCFE0);
  v6[173] = swift_task_alloc();
  v6[174] = swift_task_alloc();
  v6[175] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016A62E8, &qword_1013B3CB0);
  v6[176] = swift_task_alloc();
  v6[177] = swift_task_alloc();
  v6[178] = sub_1000BC4D4(&unk_1016AF8C0, &unk_1013A07A0);
  v6[179] = swift_task_alloc();
  v6[180] = swift_task_alloc();
  v6[181] = swift_task_alloc();
  v6[182] = swift_task_alloc();
  v6[183] = swift_task_alloc();
  v6[184] = swift_task_alloc();
  v16 = type metadata accessor for BeaconProductInfoRecord(0);
  v6[185] = v16;
  v6[186] = *(v16 - 8);
  v6[187] = swift_task_alloc();
  v17 = type metadata accessor for UUID();
  v6[188] = v17;
  v18 = *(v17 - 8);
  v6[189] = v18;
  v6[190] = *(v18 + 64);
  v6[191] = swift_task_alloc();
  v6[192] = swift_task_alloc();
  v6[193] = swift_task_alloc();
  v6[194] = swift_task_alloc();
  v6[195] = swift_task_alloc();
  v6[196] = swift_task_alloc();
  v6[197] = swift_task_alloc();
  v6[198] = swift_task_alloc();
  v6[199] = swift_task_alloc();
  v6[200] = swift_task_alloc();
  v6[201] = swift_task_alloc();
  v6[202] = swift_task_alloc();
  v6[203] = swift_task_alloc();
  v6[204] = swift_task_alloc();
  v6[205] = swift_task_alloc();
  v6[206] = sub_1000BC4D4(&unk_1016B29E0, &unk_1013B70E0);
  v6[207] = swift_task_alloc();
  v19 = type metadata accessor for BeaconNamingRecord(0);
  v6[208] = v19;
  v6[209] = *(v19 - 8);
  v6[210] = swift_task_alloc();
  v20 = swift_task_alloc();
  v6[211] = v20;
  *v20 = v6;
  v20[1] = sub_100969AB8;

  return daemon.getter();
}

uint64_t sub_100969AB8(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[212] = a1;

  v3 = swift_task_alloc();
  v2[213] = v3;
  v4 = type metadata accessor for Daemon();
  v2[214] = v4;
  v5 = type metadata accessor for LegacyServiceContainer();
  v6 = sub_100985CA0(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[215] = v6;
  v7 = sub_100985CA0(&unk_101698D70, type metadata accessor for LegacyServiceContainer, &unk_1014015E0);
  *v3 = v9;
  v3[1] = sub_100969C98;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100969C98(uint64_t a1)
{
  v4 = *v2;
  v4[216] = a1;
  v4[217] = v1;

  if (v1)
  {

    v5 = v4[92];
    v6 = sub_10096A0BC;
  }

  else
  {
    v6 = sub_100969DE0;
    v5 = a1;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100969DE0()
{
  v1 = v0[217];
  sub_10001B108();
  v0[218] = v2;
  v0[219] = v1;
  if (v1)
  {

    sub_100985CA0(&qword_1016969E0, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
    v3 = dispatch thunk of Actor.unownedExecutor.getter();
    v5 = v4;
    v6 = sub_10096A048;
  }

  else
  {
    sub_100985CA0(&qword_1016969E0, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
    v3 = dispatch thunk of Actor.unownedExecutor.getter();
    v5 = v7;
    v6 = sub_100969F10;
  }

  return _swift_task_switch(v6, v3, v5);
}

uint64_t sub_100969F10()
{
  v1 = *(v0 + 736);

  return _swift_task_switch(sub_100969F88, v1, 0);
}

uint64_t sub_100969F88()
{
  v1 = v0[219];
  v2 = v0[92];
  v0[222] = v0[218];
  v0[221] = v2;
  v0[220] = v1;
  v3 = v0[88];
  v4 = v0[87];
  v5 = v4[3];
  v6 = v4[4];
  sub_1000035D0(v4, v5);
  (*(*(*(v6 + 8) + 8) + 32))(v5);

  return _swift_task_switch(sub_10096A174, v3, 0);
}

uint64_t sub_10096A048()
{

  v1 = *(v0 + 736);

  return _swift_task_switch(sub_10096A0BC, v1, 0);
}

uint64_t sub_10096A0BC()
{
  v1 = v0[92];
  v0[222] = 0;
  v0[221] = v1;
  v0[220] = 0;
  v2 = v0[88];
  v3 = v0[87];
  v4 = v3[3];
  v5 = v3[4];
  sub_1000035D0(v3, v4);
  (*(*(*(v5 + 8) + 8) + 32))(v4);

  return _swift_task_switch(sub_10096A174, v2, 0);
}

uint64_t sub_10096A174()
{
  v1 = *(v0 + 1640);
  v2 = *(v0 + 1632);
  v3 = *(v0 + 1512);
  v4 = *(v0 + 1504);
  v5 = *(v0 + 704);
  v6 = *(v3 + 16);
  *(v0 + 1784) = v6;
  *(v0 + 1792) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v1, v4);
  v7 = *(v3 + 80);
  *(v0 + 2832) = v7;
  v8 = (v7 + 24) & ~v7;
  v9 = swift_allocObject();
  *(v0 + 1800) = v9;
  *(v9 + 16) = v5;
  v10 = *(v3 + 32);
  *(v0 + 1808) = v10;
  *(v0 + 1816) = (v3 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v10(v9 + v8, v2, v4);

  v11 = swift_task_alloc();
  *(v0 + 1824) = v11;
  *v11 = v0;
  v11[1] = sub_10096A308;
  v12 = *(v0 + 1656);
  v13 = *(v0 + 1648);

  return unsafeBlocking<A>(context:_:)(v12, 0xD000000000000010, 0x800000010134A8C0, sub_100986390, v9, v13);
}

uint64_t sub_10096A308()
{
  v1 = *v0;
  v2 = *(*v0 + 1640);
  v3 = *(*v0 + 1512);
  v4 = *(*v0 + 1504);

  v5 = *(v3 + 8);
  v1[229] = v5;
  v1[230] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v2, v4);
  v6 = v1[221];

  return _swift_task_switch(sub_10096A4AC, v6, 0);
}

uint64_t sub_10096A4AC()
{
  v1 = *(v0 + 1664);
  v2 = *(v0 + 1656);
  if ((*(*(v0 + 1672) + 48))(v2, 1, v1) == 1)
  {
    v3 = *(v0 + 704);
    sub_10000B3A8(v2, &unk_1016B29E0, &unk_1013B70E0);
    v4 = sub_10096A744;
    v5 = v3;
  }

  else
  {
    v6 = *(v0 + 1680);
    v7 = *(v0 + 696);
    sub_100986170(v2, v6, type metadata accessor for BeaconNamingRecord);
    v8 = v7[3];
    v9 = v7[4];
    sub_1000035D0(v7, v8);
    v10 = *(v6 + *(v1 + 28));
    v11 = (*(v9 + 208))(v10, v8, v9);
    v12 = v11;
    v13 = *(v0 + 1680);
    v14 = *(v0 + 1664);
    if (v10 == SPBeaconRoleIdOther && *(v13 + *(v14 + 36) + 8) && v11)
    {
      v15 = [v11 role];
      if (!v15)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v15 = String._bridgeToObjectiveC()();
      }

      v16 = objc_allocWithZone(SPBeaconRole);
      v17 = String._bridgeToObjectiveC()();
      v18 = [v16 initWithRoleId:v10 role:v15 roleEmoji:v17];

      v13 = *(v0 + 1680);
      v14 = *(v0 + 1664);
      v12 = v18;
    }

    v19 = (v13 + *(v14 + 32));
    v21 = *v19;
    v20 = v19[1];
    v22 = v12;

    sub_100988488(v13, type metadata accessor for BeaconNamingRecord);
    v23 = *(v0 + 1760);
    *(v0 + 1928) = v20;
    *(v0 + 1920) = v21;
    *(v0 + 1912) = v12;
    *(v0 + 1904) = v23;
    v24 = *(v0 + 704);
    v25 = *(v0 + 696);
    *(v0 + 2836) = *(*(v0 + 1376) + 48);
    v26 = v25[3];
    v27 = v25[4];
    sub_1000035D0(v25, v26);
    (*(*(*(v27 + 8) + 8) + 32))(v26);
    v4 = sub_10096B704;
    v5 = v24;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_10096A744()
{

  v1 = swift_task_alloc();
  *(v0 + 1848) = v1;
  v2 = type metadata accessor for BeaconKeyManager(0);
  *v1 = v0;
  v1[1] = sub_10096A824;
  v3 = *(v0 + 704);

  return unsafeBlocking<A>(context:_:)(v0 + 680, 0xD000000000000010, 0x800000010134A8C0, sub_1000D27E4, v3, v2);
}

uint64_t sub_10096A824()
{
  v1 = *(*v0 + 704);

  return _swift_task_switch(sub_10096A93C, v1, 0);
}

uint64_t sub_10096A960()
{
  v1 = *(v0 + 696);
  v2 = v1[3];
  v3 = v1[4];
  sub_1000035D0(v1, v2);
  (*(*(*(v3 + 8) + 8) + 32))(v2);
  v4 = getuid();
  sub_1000294F0(v4);

  return _swift_task_switch(sub_10096AA14, 0, 0);
}

uint64_t sub_10096AA14()
{
  v1 = swift_task_alloc();
  v0[233] = v1;
  *v1 = v0;
  v1[1] = sub_10096AAC4;
  v2 = v0[203];
  v3 = v0[202];

  return sub_100687A6C((v0 + 11), v2, v3);
}

uint64_t sub_10096AAC4()
{
  v2 = *v1;
  *(*v1 + 1872) = v0;

  if (v0)
  {

    v3 = sub_10096AED0;
    v4 = 0;
  }

  else
  {
    v5 = v2[229];
    v6 = v2[203];
    v7 = v2[188];
    v5(v2[202], v7);
    v5(v6, v7);

    v4 = v2[221];
    v3 = sub_10096AC2C;
  }

  return _swift_task_switch(v3, v4, 0);
}

uint64_t sub_10096AC2C()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  if (v1)
  {
    v3 = *(v0 + 120);
    v4 = *(v0 + 696);
    v5 = *(v0 + 104);
    v6 = v4[3];
    v7 = v4[4];
    sub_1000035D0(v4, v6);
    v8 = (*(v7 + 208))(v5, v6, v7);
    v9 = v8;
    if (v5 != SPBeaconRoleIdOther || v3 == 0 || v8 == 0)
    {
      v12 = v8;
    }

    else
    {

      v22 = [v9 role];
      v23 = v22;
      if (!v22)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v23 = String._bridgeToObjectiveC()();
      }

      v24 = objc_allocWithZone(SPBeaconRole);
      v25 = String._bridgeToObjectiveC()();

      v12 = [v24 initWithRoleId:v5 role:v23 roleEmoji:v25];

      v9 = v12;
    }

    v26 = v12;

    sub_10000B3A8(v0 + 88, &unk_1016AF910, &unk_10138C4C0);
    v13 = *(v0 + 1872);
  }

  else
  {
    v13 = *(v0 + 1872);
    *(v0 + 1880) = v13;
    v14 = *(v0 + 696);
    v15 = v14[3];
    v16 = v14[4];
    sub_1000035D0(v14, v15);
    if ((*(v16 + 144))(v15, v16))
    {
      v17 = *(v0 + 704);
      v18 = *(v0 + 696);
      v19 = v18[3];
      v20 = v18[4];
      sub_1000035D0(v18, v19);
      (*(*(*(v20 + 8) + 8) + 32))(v19);
      v21 = sub_10096B0BC;
      goto LABEL_19;
    }

    v9 = 0;
    v2 = 0;
  }

  *(v0 + 1928) = v1;
  *(v0 + 1920) = v2;
  *(v0 + 1912) = v9;
  *(v0 + 1904) = v13;
  v17 = *(v0 + 704);
  v27 = *(v0 + 696);
  *(v0 + 2836) = *(*(v0 + 1376) + 48);
  v28 = v27[3];
  v29 = v27[4];
  sub_1000035D0(v27, v28);
  (*(*(*(v29 + 8) + 8) + 32))(v28);
  v21 = sub_10096B704;
LABEL_19:

  return _swift_task_switch(v21, v17, 0);
}

uint64_t sub_10096AED0()
{
  v1 = v0[229];
  v2 = v0[203];
  v3 = v0[188];
  v1(v0[202], v3);
  v1(v2, v3);

  v4 = v0[221];

  return _swift_task_switch(sub_10096AF74, v4, 0);
}

uint64_t sub_10096AF74()
{
  *(v0 + 1880) = 0;
  v1 = *(v0 + 696);
  v2 = v1[3];
  v3 = v1[4];
  sub_1000035D0(v1, v2);
  if ((*(v3 + 144))(v2, v3))
  {
    v4 = *(v0 + 704);
    v5 = *(v0 + 696);
    v6 = v5[3];
    v7 = v5[4];
    sub_1000035D0(v5, v6);
    (*(*(*(v7 + 8) + 8) + 32))(v6);
    v8 = sub_10096B0BC;
  }

  else
  {
    *(v0 + 1920) = 0u;
    *(v0 + 1904) = 0u;
    v4 = *(v0 + 704);
    v9 = *(v0 + 696);
    *(v0 + 2836) = *(*(v0 + 1376) + 48);
    v10 = v9[3];
    v11 = v9[4];
    sub_1000035D0(v9, v10);
    (*(*(*(v11 + 8) + 8) + 32))(v10);
    v8 = sub_10096B704;
  }

  return _swift_task_switch(v8, v4, 0);
}

uint64_t sub_10096B0BC()
{
  v1 = *(v0 + 1808);
  v2 = *(v0 + 1632);
  v3 = *(v0 + 1504);
  v4 = *(v0 + 704);
  v5 = (*(v0 + 2832) + 24) & ~*(v0 + 2832);
  (*(v0 + 1784))(v2, *(v0 + 1640), v3);
  v6 = swift_allocObject();
  *(v0 + 1888) = v6;
  *(v6 + 16) = v4;
  v1(v6 + v5, v2, v3);

  v7 = swift_task_alloc();
  *(v0 + 1896) = v7;
  *v7 = v0;
  v7[1] = sub_10096B218;
  v8 = *(v0 + 1472);
  v9 = *(v0 + 1424);

  return unsafeBlocking<A>(context:_:)(v8, 0xD000000000000010, 0x800000010134A8C0, sub_100988F38, v6, v9);
}

uint64_t sub_10096B218()
{
  v1 = *v0;
  v2 = *(*v0 + 1832);
  v3 = *(*v0 + 1640);
  v4 = *(*v0 + 1504);

  v2(v3, v4);
  v5 = *(v1 + 1768);

  return _swift_task_switch(sub_10096B3B8, v5, 0);
}

uint64_t sub_10096B3B8()
{
  v1 = *(v0 + 1480);
  v2 = *(v0 + 1472);
  if ((*(*(v0 + 1488) + 48))(v2, 1, v1) == 1)
  {
    sub_10000B3A8(v2, &unk_1016AF8C0, &unk_1013A07A0);
    v3 = 0;
    v4 = 0;
    v5 = 0;
    goto LABEL_11;
  }

  v6 = *(v0 + 1496);
  v7 = *(v0 + 696);
  sub_100986170(v2, v6, type metadata accessor for BeaconProductInfoRecord);
  v8 = v7[3];
  v9 = v7[4];
  sub_1000035D0(v7, v8);
  v10 = (*(v9 + 96))(v8, v9);
  v11 = *(v1 + 76);
  if (v10)
  {
    v12 = *(v0 + 1416);
    sub_1000D2A70(v6 + v11, v12, &qword_1016A62E8, &qword_1013B3CB0);
    v13 = type metadata accessor for AccessoryInfoResponseContent.Configuration(0);
    v14 = (*(*(v13 - 8) + 48))(v12, 1, v13);
    v15 = *(v0 + 1416);
    if (v14 != 1)
    {
      v4 = v15[4];
      v5 = v15[5];
LABEL_9:

      sub_100988488(v15, type metadata accessor for AccessoryInfoResponseContent.Configuration);
      goto LABEL_10;
    }
  }

  else
  {
    v16 = *(v0 + 1408);
    sub_1000D2A70(v6 + v11, v16, &qword_1016A62E8, &qword_1013B3CB0);
    v17 = type metadata accessor for AccessoryInfoResponseContent.Configuration(0);
    v18 = (*(*(v17 - 8) + 48))(v16, 1, v17);
    v15 = *(v0 + 1408);
    if (v18 != 1)
    {
      v4 = v15[8];
      v5 = v15[9];
      goto LABEL_9;
    }
  }

  sub_10000B3A8(v15, &qword_1016A62E8, &qword_1013B3CB0);
  v4 = 0;
  v5 = 0;
LABEL_10:
  v19 = *(v0 + 1496);
  v20 = SPBeaconRoleIdOther;
  v21 = objc_allocWithZone(SPBeaconRole);
  v22 = String._bridgeToObjectiveC()();
  v23 = String._bridgeToObjectiveC()();
  v3 = [v21 initWithRoleId:v20 role:v22 roleEmoji:v23];

  sub_100988488(v19, type metadata accessor for BeaconProductInfoRecord);
  v24 = v3;
LABEL_11:
  v25 = *(v0 + 1880);
  *(v0 + 1928) = v5;
  *(v0 + 1920) = v4;
  *(v0 + 1912) = v3;
  *(v0 + 1904) = v25;
  v26 = *(v0 + 704);
  v27 = *(v0 + 696);
  *(v0 + 2836) = *(*(v0 + 1376) + 48);
  v28 = v27[3];
  v29 = v27[4];
  sub_1000035D0(v27, v28);
  (*(*(*(v29 + 8) + 8) + 32))(v28);

  return _swift_task_switch(sub_10096B704, v26, 0);
}

uint64_t sub_10096B704()
{
  v1 = *(v0 + 1808);
  v2 = *(v0 + 1632);
  v3 = *(v0 + 1504);
  v4 = *(v0 + 704);
  v5 = (*(v0 + 2832) + 24) & ~*(v0 + 2832);
  v6 = *(v0 + 1520) + v5;
  (*(v0 + 1784))(v2, *(v0 + 1640), v3);
  v7 = swift_allocObject();
  *(v0 + 1936) = v7;
  *(v7 + 16) = v4;
  v1(v7 + v5, v2, v3);
  *(v7 + v6) = 1;

  v8 = swift_task_alloc();
  *(v0 + 1944) = v8;
  *v8 = v0;
  v8[1] = sub_10096B86C;
  v9 = *(v0 + 1392);
  v10 = *(v0 + 1376);

  return unsafeBlocking<A>(context:_:)(v9, 0xD000000000000010, 0x800000010134A8C0, sub_1009863A8, v7, v10);
}

uint64_t sub_10096B86C()
{
  v1 = *(*v0 + 704);

  return _swift_task_switch(sub_10096B998, v1, 0);
}

uint64_t sub_10096B998()
{
  v1 = *(v0 + 2836);
  v2 = *(v0 + 1400);
  v3 = *(v0 + 1392);
  v4 = *(v0 + 1376);
  (*(v0 + 1832))(*(v0 + 1640), *(v0 + 1504));
  *(v0 + 2848) = *v3;
  sub_1000D2AD8(&v3[*(v4 + 48)], v2 + v1, &unk_101696900, &unk_10138B1E0);
  v5 = *(v0 + 1768);

  return _swift_task_switch(sub_10096BA4C, v5, 0);
}

uint64_t sub_10096BA4C()
{
  v1 = *(v0 + 1400);
  v2 = *(v0 + 1392);
  v3 = *(v0 + 1384);
  v4 = *(v0 + 1376);
  v5 = *(v0 + 1344);
  v6 = *(v0 + 1336);
  *v1 = *(v0 + 2848);
  sub_1000D2A70(v1, v2, &unk_1016AA420, &unk_1013BCFE0);
  *(v0 + 2849) = *v2;
  sub_10000B3A8(&v2[*(v4 + 48)], &unk_101696900, &unk_10138B1E0);
  sub_1000D2A70(v1, v3, &unk_1016AA420, &unk_1013BCFE0);
  v7 = *(v4 + 48);
  v8 = *(v5 + 48);
  *(v0 + 1952) = v8;
  *(v0 + 1960) = (v5 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v8(v3 + v7, 1, v6) == 1)
  {
    sub_10000B3A8(v3 + v7, &unk_101696900, &unk_10138B1E0);
  }

  else
  {
    v41 = *(v0 + 1832);
    v9 = *(v0 + 1640);
    v10 = *(v0 + 1504);
    v11 = *(v0 + 1368);
    v12 = *(v0 + 1344);
    v13 = *(v0 + 1336);
    v14 = *(v0 + 696);
    (*(v12 + 32))(v11, v3 + v7, v13);
    v16 = v14[3];
    v15 = v14[4];
    sub_1000035D0(v14, v16);
    (*(*(*(v15 + 8) + 8) + 32))(v16);
    sub_10095F4B8(v9);
    v41(v9, v10);
    (*(v12 + 8))(v11, v13);
  }

  v17 = *(v0 + 1240);
  sub_10001F280(*(v0 + 696), v0 + 304);
  *(v0 + 1968) = sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
  v18 = swift_dynamicCast();
  v19 = *(v17 + 56);
  v20 = *(v0 + 696);
  if (v18)
  {
    v21 = *(v0 + 1288);
    v22 = *(v0 + 1224);
    v23 = *(v0 + 704);
    v19(v22, 0, 1, *(v0 + 1232));
    sub_100986170(v22, v21, type metadata accessor for OwnedBeaconRecord);
    v24 = v20[3];
    v25 = v20[4];
    sub_1000035D0(v20, v24);
    (*(*(*(v25 + 8) + 8) + 32))(v24);
    v26 = sub_10096BE80;
    v27 = v23;
  }

  else
  {
    v28 = *(v0 + 1224);
    v29 = *(v0 + 1048);
    v19(v28, 1, 1, *(v0 + 1232));
    sub_10000B3A8(v28, &unk_1016A9A20, &qword_10138B280);
    sub_10001F280(v20, v0 + 344);
    v30 = swift_dynamicCast();
    v31 = *(v29 + 56);
    v32 = *(v0 + 1040);
    v33 = *(v0 + 1032);
    v34 = *(v0 + 704);
    if (v30)
    {
      v35 = *(v0 + 1104);
      v31(*(v0 + 1032), 0, 1, v32);
      sub_100986170(v33, v35, type metadata accessor for SharedBeaconRecord);
      v36 = sub_10096C9FC;
    }

    else
    {
      v37 = *(v0 + 696);
      v31(*(v0 + 1032), 1, 1, v32);
      sub_10000B3A8(v33, &unk_101698C30, &unk_101392630);
      v39 = v37[3];
      v38 = v37[4];
      sub_1000035D0(v37, v39);
      (*(*(*(v38 + 8) + 8) + 32))(v39);
      v36 = sub_10096E4E4;
    }

    v26 = v36;
    v27 = v34;
  }

  return _swift_task_switch(v26, v27, 0);
}

uint64_t sub_10096BE80()
{
  v1 = *(v0 + 1808);
  v2 = *(v0 + 1632);
  v3 = *(v0 + 1504);
  v4 = *(v0 + 704);
  v5 = (*(v0 + 2832) + 24) & ~*(v0 + 2832);
  (*(v0 + 1784))(v2, *(v0 + 1640), v3);
  v6 = swift_allocObject();
  *(v0 + 1976) = v6;
  *(v6 + 16) = v4;
  v1(v6 + v5, v2, v3);

  v7 = swift_task_alloc();
  *(v0 + 1984) = v7;
  *v7 = v0;
  v7[1] = sub_10096BFDC;
  v8 = *(v0 + 1216);
  v9 = *(v0 + 1200);

  return unsafeBlocking<A>(context:_:)(v8, 0xD000000000000010, 0x800000010134A8C0, sub_100988F30, v6, v9);
}

uint64_t sub_10096BFDC()
{
  v1 = *v0;
  v2 = *(*v0 + 1832);
  v3 = *(*v0 + 1640);
  v4 = *(*v0 + 1504);

  v2(v3, v4);
  v5 = *(v1 + 1768);

  return _swift_task_switch(sub_10096C17C, v5, 0);
}

uint64_t sub_10096C17C()
{
  v1 = *(v0 + 1216);
  v2 = type metadata accessor for LostModeRecord(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_10000B3A8(v1, &unk_1016A99E0, &qword_1013A07B0);
    v3 = 0;
  }

  else
  {
    v3 = sub_100E78AA8();
    sub_100988488(v1, type metadata accessor for LostModeRecord);
  }

  *(v0 + 1992) = v3;
  v4 = qword_101694E80;
  v5 = v3;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = *(v0 + 1512);
  v7 = *(v0 + 1504);
  v8 = *(v0 + 1288);
  v9 = *(v0 + 1232);
  v10 = *(v0 + 1192);
  v11 = qword_10177C088;
  *(v0 + 2000) = qword_10177C088;
  v12 = *(v8 + v9[20]);
  *(v0 + 2850) = v12;
  v13 = *(v8 + v9[16]);
  v14 = *(v8 + v9[17]);
  v27 = v11;
  v15 = sub_100E0EA64(v13, v14);
  *(v0 + 2851) = v15;
  sub_1000D2A70(v8 + v9[7], v10, &qword_1016980D0, &unk_10138F3B0);
  if ((*(v6 + 48))(v10, 1, v7) == 1)
  {
    v16 = *(v0 + 1192);
    sub_100988488(*(v0 + 1288), type metadata accessor for OwnedBeaconRecord);
    sub_10000B3A8(v16, &qword_1016980D0, &unk_10138F3B0);
LABEL_10:
    v19 = *(v0 + 1904);
    *(v0 + 2200) = 0u;
    *(v0 + 2192) = v27;
    *(v0 + 2854) = v12;
    *(v0 + 2853) = v15;
    *(v0 + 2184) = v3;
    *(v0 + 2176) = v19;
    v20 = *(v0 + 704);
    v21 = *(v0 + 696);
    v22 = v21[3];
    v23 = v21[4];
    sub_1000035D0(v21, v22);
    (*(*(*(v23 + 8) + 8) + 32))(v22);
    v24 = sub_10096E98C;
    v25 = v20;
    goto LABEL_12;
  }

  (*(v0 + 1808))(*(v0 + 1608), *(v0 + 1192), *(v0 + 1504));
  *(v0 + 2008) = sub_100D605C4();
  *(v0 + 2016) = v17;
  if (v17 >> 60 == 15)
  {
    v18 = *(v0 + 1288);
    (*(v0 + 1832))(*(v0 + 1608), *(v0 + 1504));
    sub_100988488(v18, type metadata accessor for OwnedBeaconRecord);
    goto LABEL_10;
  }

  v25 = *(v0 + 704);
  v24 = sub_10096C488;
LABEL_12:

  return _swift_task_switch(v24, v25, 0);
}

uint64_t sub_10096C488()
{
  v1 = *(v0 + 1808);
  v2 = *(v0 + 1640);
  v3 = *(v0 + 1504);
  v4 = *(v0 + 704);
  v5 = (*(v0 + 2832) + 24) & ~*(v0 + 2832);
  (*(v0 + 1784))(v2, *(v0 + 1608), v3);
  v6 = swift_allocObject();
  *(v0 + 2024) = v6;
  *(v6 + 16) = v4;
  v1(v6 + v5, v2, v3);

  v7 = swift_task_alloc();
  *(v0 + 2032) = v7;
  *v7 = v0;
  v7[1] = sub_10096C5E4;
  v8 = *(v0 + 1128);
  v9 = *(v0 + 1112);

  return unsafeBlocking<A>(context:_:)(v8, 0xD000000000000010, 0x800000010134A8C0, sub_100988F34, v6, v9);
}

uint64_t sub_10096C5E4()
{
  v1 = *v0;

  v2 = *(v1 + 1768);

  return _swift_task_switch(sub_10096C718, v2, 0);
}

uint64_t sub_10096C718()
{
  v1 = *(v0 + 1128);
  v2 = (*(*(v0 + 832) + 48))(v1, 1, *(v0 + 824));
  v3 = *(v0 + 2016);
  v4 = *(v0 + 2008);
  if (v2 == 1)
  {
    v5 = *(v0 + 1832);
    v6 = *(v0 + 1608);
    v7 = *(v0 + 1504);
    v8 = *(v0 + 1288);
    sub_100006654(v4, v3);
    v5(v6, v7);
    sub_100988488(v8, type metadata accessor for OwnedBeaconRecord);
    v9 = &unk_1016AF8B0;
    v10 = &unk_1013A0700;
LABEL_5:
    sub_10000B3A8(v1, v9, v10);
    v20 = 0;
    v21 = 0;
    goto LABEL_7;
  }

  v11 = *(v0 + 1136);
  sub_10051A590(v4, v3, v11);
  sub_100988488(v1, type metadata accessor for OwnedBeaconGroup);
  v12 = type metadata accessor for MACAddress();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);
  v15 = *(v0 + 2016);
  v16 = *(v0 + 2008);
  v34 = *(v0 + 1832);
  v17 = *(v0 + 1608);
  v18 = *(v0 + 1504);
  v19 = *(v0 + 1288);
  v1 = *(v0 + 1136);
  if (v14 == 1)
  {
    sub_100006654(v16, v15);
    v34(v17, v18);
    sub_100988488(v19, type metadata accessor for OwnedBeaconRecord);
    v9 = &qword_1016A40D0;
    v10 = &unk_10138BE70;
    goto LABEL_5;
  }

  v33 = *(v0 + 1288);
  v20 = MACAddress.bluetoothAddress.getter();
  v21 = v22;
  sub_100006654(v16, v15);
  v34(v17, v18);
  sub_100988488(v33, type metadata accessor for OwnedBeaconRecord);
  (*(v13 + 8))(v1, v12);
LABEL_7:
  v23 = *(v0 + 2000);
  v24 = *(v0 + 2850);
  v25 = *(v0 + 2851);
  v26 = *(v0 + 1992);
  v27 = *(v0 + 1904);
  *(v0 + 2208) = v21;
  *(v0 + 2200) = v20;
  *(v0 + 2192) = v23;
  *(v0 + 2854) = v24;
  *(v0 + 2853) = v25;
  *(v0 + 2184) = v26;
  *(v0 + 2176) = v27;
  v28 = *(v0 + 704);
  v29 = *(v0 + 696);
  v30 = v29[3];
  v31 = v29[4];
  sub_1000035D0(v29, v30);
  (*(*(*(v31 + 8) + 8) + 32))(v30);

  return _swift_task_switch(sub_10096E98C, v28, 0);
}

uint64_t sub_10096C9FC()
{

  v1 = swift_task_alloc();
  *(v0 + 2040) = v1;
  v2 = type metadata accessor for BeaconKeyManager(0);
  *v1 = v0;
  v1[1] = sub_10096CADC;
  v3 = *(v0 + 704);

  return unsafeBlocking<A>(context:_:)(v0 + 688, 0xD000000000000010, 0x800000010134A8C0, sub_1000D3168, v3, v2);
}

uint64_t sub_10096CADC()
{
  v1 = *(*v0 + 704);

  return _swift_task_switch(sub_10096CBF4, v1, 0);
}

uint64_t sub_10096CC18()
{
  *(v0 + 2840) = *(*(v0 + 1040) + 20);
  v1 = getuid();
  sub_1000294F0(v1);

  return _swift_task_switch(sub_10096CC94, 0, 0);
}

uint64_t sub_10096CC94()
{
  v1 = *(v0 + 2840);
  v2 = *(v0 + 1104);
  v3 = swift_task_alloc();
  *(v0 + 2056) = v3;
  *v3 = v0;
  v3[1] = sub_10096CD54;
  v4 = *(v0 + 1016);

  return sub_10068A150(v4, v2 + v1);
}

uint64_t sub_10096CD54()
{
  v2 = *v1;

  if (v0)
  {

    v3 = sub_10096D608;
    v4 = 0;
  }

  else
  {
    (*(v2 + 1832))(*(v2 + 1600), *(v2 + 1504));

    v4 = *(v2 + 1768);
    v3 = sub_10096CE94;
  }

  return _swift_task_switch(v3, v4, 0);
}

uint64_t sub_10096CE94()
{
  v69 = v0;
  v1 = *(v0 + 1008);
  v2 = *(v0 + 992);
  v3 = *(v0 + 984);
  sub_1000D2A70(*(v0 + 1016), v1, &unk_101698C20, &qword_101390748);
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    v4 = *(v0 + 1008);
    v5 = &unk_101698C20;
    v6 = &qword_101390748;
LABEL_5:
    sub_10000B3A8(v4, v5, v6);
    if (qword_101694480 != -1)
    {
      swift_once();
    }

    v13 = *(v0 + 1104);
    v14 = *(v0 + 1088);
    v15 = type metadata accessor for Logger();
    sub_1000076D4(v15, qword_10177A560);
    sub_1009863FC(v13, v14, type metadata accessor for SharedBeaconRecord);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = *(v0 + 1088);
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v68 = v20;
      *v19 = 141558275;
      *(v19 + 4) = 1752392040;
      *(v19 + 12) = 2081;
      sub_100985CA0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      v23 = v22;
      sub_100988488(v18, type metadata accessor for SharedBeaconRecord);
      v24 = sub_1000136BC(v21, v23, &v68);

      *(v19 + 14) = v24;
      _os_log_impl(&_mh_execute_header, v16, v17, "Lost mode is not enabled for shared beacon %{private,mask.hash}s.", v19, 0x16u);
      sub_100007BAC(v20);
    }

    else
    {
      v25 = *(v0 + 1088);

      sub_100988488(v25, type metadata accessor for SharedBeaconRecord);
    }

    v26 = 0;
    goto LABEL_17;
  }

  v7 = *(v0 + 1952);
  v8 = *(v0 + 1336);
  v9 = *(v0 + 1312);
  v10 = *(v0 + 1000);
  v11 = *(v0 + 984);
  sub_100986170(*(v0 + 1008), v10, type metadata accessor for KeyDropLostItemDates);
  sub_1000D2A70(v10 + *(v11 + 20), v9, &unk_101696900, &unk_10138B1E0);
  if (v7(v9, 1, v8) == 1)
  {
    v12 = *(v0 + 1312);
    sub_100988488(*(v0 + 1000), type metadata accessor for KeyDropLostItemDates);
    v5 = &unk_101696900;
    v6 = &unk_10138B1E0;
    v4 = v12;
    goto LABEL_5;
  }

  (*(*(v0 + 1344) + 32))(*(v0 + 1360), *(v0 + 1312), *(v0 + 1336));
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v27 = *(v0 + 1360);
  v28 = *(v0 + 1352);
  v29 = *(v0 + 1344);
  v30 = *(v0 + 1336);
  v31 = *(v0 + 1104);
  v32 = *(v0 + 1096);
  v33 = type metadata accessor for Logger();
  sub_1000076D4(v33, qword_10177A560);
  sub_1009863FC(v31, v32, type metadata accessor for SharedBeaconRecord);
  (*(v29 + 16))(v28, v27, v30);
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = *(v0 + 1352);
    v37 = *(v0 + 1344);
    v38 = *(v0 + 1336);
    v39 = *(v0 + 1096);
    v67 = v35;
    v40 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    *v40 = 141558531;
    *(v40 + 4) = 1752392040;
    *(v40 + 12) = 2081;
    sub_100985CA0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v41 = dispatch thunk of CustomStringConvertible.description.getter();
    v43 = v42;
    sub_100988488(v39, type metadata accessor for SharedBeaconRecord);
    v44 = sub_1000136BC(v41, v43, &v68);

    *(v40 + 14) = v44;
    *(v40 + 22) = 2080;
    sub_100985CA0(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v45 = v36;
    v46 = dispatch thunk of CustomStringConvertible.description.getter();
    v48 = v47;
    v49 = *(v37 + 8);
    v49(v45, v38);
    v50 = sub_1000136BC(v46, v48, &v68);

    *(v40 + 24) = v50;
    _os_log_impl(&_mh_execute_header, v34, v67, "Lost mode is enabled for shared beacon %{private,mask.hash}s\nwith timestamp of %s.", v40, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    v51 = *(v0 + 1352);
    v52 = *(v0 + 1344);
    v53 = *(v0 + 1336);
    v54 = *(v0 + 1096);

    v49 = *(v52 + 8);
    v49(v51, v53);
    sub_100988488(v54, type metadata accessor for SharedBeaconRecord);
  }

  v55 = *(v0 + 1360);
  v56 = *(v0 + 1336);
  v57 = *(v0 + 1000);
  v58 = objc_allocWithZone(SPLostModeInfo);
  isa = Date._bridgeToObjectiveC()().super.isa;
  v26 = [v58 initWithMessage:0 email:0 phoneNumber:0 timestamp:isa];

  v49(v55, v56);
  sub_100988488(v57, type metadata accessor for KeyDropLostItemDates);
  v60 = v26;
LABEL_17:
  *(v0 + 2064) = v26;
  v61 = *(v0 + 1104) + *(*(v0 + 1040) + 28);
  v62 = *v61;
  *(v0 + 2852) = *v61;
  v63 = *(v61 + 8);
  *(v0 + 2072) = v63;
  v64 = *(v61 + 16);
  *(v0 + 2080) = v64;
  *(v0 + 2088) = sub_100EB3708(v62, v63, v64);
  v65 = swift_task_alloc();
  *(v0 + 2096) = v65;
  *v65 = v0;
  v65[1] = sub_10096DE20;

  return daemon.getter();
}

uint64_t sub_10096D608()
{
  (*(v0 + 1832))(*(v0 + 1600), *(v0 + 1504));

  v1 = *(v0 + 1768);

  return _swift_task_switch(sub_10096D688, v1, 0);
}

uint64_t sub_10096D688()
{
  v69 = v0;
  (*(*(v0 + 992) + 56))(*(v0 + 1016), 1, 1, *(v0 + 984));
  v1 = *(v0 + 1008);
  v2 = *(v0 + 992);
  v3 = *(v0 + 984);
  sub_1000D2A70(*(v0 + 1016), v1, &unk_101698C20, &qword_101390748);
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    v4 = *(v0 + 1008);
    v5 = &unk_101698C20;
    v6 = &qword_101390748;
LABEL_5:
    sub_10000B3A8(v4, v5, v6);
    if (qword_101694480 != -1)
    {
      swift_once();
    }

    v13 = *(v0 + 1104);
    v14 = *(v0 + 1088);
    v15 = type metadata accessor for Logger();
    sub_1000076D4(v15, qword_10177A560);
    sub_1009863FC(v13, v14, type metadata accessor for SharedBeaconRecord);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = *(v0 + 1088);
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v68 = v20;
      *v19 = 141558275;
      *(v19 + 4) = 1752392040;
      *(v19 + 12) = 2081;
      sub_100985CA0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      v23 = v22;
      sub_100988488(v18, type metadata accessor for SharedBeaconRecord);
      v24 = sub_1000136BC(v21, v23, &v68);

      *(v19 + 14) = v24;
      _os_log_impl(&_mh_execute_header, v16, v17, "Lost mode is not enabled for shared beacon %{private,mask.hash}s.", v19, 0x16u);
      sub_100007BAC(v20);
    }

    else
    {
      v25 = *(v0 + 1088);

      sub_100988488(v25, type metadata accessor for SharedBeaconRecord);
    }

    v26 = 0;
    goto LABEL_17;
  }

  v7 = *(v0 + 1952);
  v8 = *(v0 + 1336);
  v9 = *(v0 + 1312);
  v10 = *(v0 + 1000);
  v11 = *(v0 + 984);
  sub_100986170(*(v0 + 1008), v10, type metadata accessor for KeyDropLostItemDates);
  sub_1000D2A70(v10 + *(v11 + 20), v9, &unk_101696900, &unk_10138B1E0);
  if (v7(v9, 1, v8) == 1)
  {
    v12 = *(v0 + 1312);
    sub_100988488(*(v0 + 1000), type metadata accessor for KeyDropLostItemDates);
    v5 = &unk_101696900;
    v6 = &unk_10138B1E0;
    v4 = v12;
    goto LABEL_5;
  }

  (*(*(v0 + 1344) + 32))(*(v0 + 1360), *(v0 + 1312), *(v0 + 1336));
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v27 = *(v0 + 1360);
  v28 = *(v0 + 1352);
  v29 = *(v0 + 1344);
  v30 = *(v0 + 1336);
  v31 = *(v0 + 1104);
  v32 = *(v0 + 1096);
  v33 = type metadata accessor for Logger();
  sub_1000076D4(v33, qword_10177A560);
  sub_1009863FC(v31, v32, type metadata accessor for SharedBeaconRecord);
  (*(v29 + 16))(v28, v27, v30);
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = *(v0 + 1352);
    v37 = *(v0 + 1344);
    v38 = *(v0 + 1336);
    v39 = *(v0 + 1096);
    v67 = v35;
    v40 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    *v40 = 141558531;
    *(v40 + 4) = 1752392040;
    *(v40 + 12) = 2081;
    sub_100985CA0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v41 = dispatch thunk of CustomStringConvertible.description.getter();
    v43 = v42;
    sub_100988488(v39, type metadata accessor for SharedBeaconRecord);
    v44 = sub_1000136BC(v41, v43, &v68);

    *(v40 + 14) = v44;
    *(v40 + 22) = 2080;
    sub_100985CA0(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v45 = v36;
    v46 = dispatch thunk of CustomStringConvertible.description.getter();
    v48 = v47;
    v49 = *(v37 + 8);
    v49(v45, v38);
    v50 = sub_1000136BC(v46, v48, &v68);

    *(v40 + 24) = v50;
    _os_log_impl(&_mh_execute_header, v34, v67, "Lost mode is enabled for shared beacon %{private,mask.hash}s\nwith timestamp of %s.", v40, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    v51 = *(v0 + 1352);
    v52 = *(v0 + 1344);
    v53 = *(v0 + 1336);
    v54 = *(v0 + 1096);

    v49 = *(v52 + 8);
    v49(v51, v53);
    sub_100988488(v54, type metadata accessor for SharedBeaconRecord);
  }

  v55 = *(v0 + 1360);
  v56 = *(v0 + 1336);
  v57 = *(v0 + 1000);
  v58 = objc_allocWithZone(SPLostModeInfo);
  isa = Date._bridgeToObjectiveC()().super.isa;
  v26 = [v58 initWithMessage:0 email:0 phoneNumber:0 timestamp:isa];

  v49(v55, v56);
  sub_100988488(v57, type metadata accessor for KeyDropLostItemDates);
  v60 = v26;
LABEL_17:
  *(v0 + 2064) = v26;
  v61 = *(v0 + 1104) + *(*(v0 + 1040) + 28);
  v62 = *v61;
  *(v0 + 2852) = *v61;
  v63 = *(v61 + 8);
  *(v0 + 2072) = v63;
  v64 = *(v61 + 16);
  *(v0 + 2080) = v64;
  *(v0 + 2088) = sub_100EB3708(v62, v63, v64);
  v65 = swift_task_alloc();
  *(v0 + 2096) = v65;
  *v65 = v0;
  v65[1] = sub_10096DE20;

  return daemon.getter();
}

uint64_t sub_10096DE20(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 2104) = a1;

  v5 = swift_task_alloc();
  *(v3 + 2112) = v5;
  v6 = type metadata accessor for FamilyCircleService();
  v7 = sub_100985CA0(&unk_1016AF840, type metadata accessor for FamilyCircleService, &unk_1013E4DC8);
  *v5 = v4;
  v5[1] = sub_10096DFD4;
  v8 = *(v2 + 1720);
  v9 = *(v2 + 1712);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_10096DFD4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(*v2 + 2120) = a1;

  if (v1)
  {

    v5 = *(v3 + 1768);

    return _swift_task_switch(sub_10097BB58, v5, 0);
  }

  else
  {

    v6 = swift_task_alloc();
    *(v3 + 2128) = v6;
    *v6 = v4;
    v6[1] = sub_10096E198;
    v7 = *(v3 + 2080);
    v8 = *(v3 + 2072);
    v9 = *(v3 + 2852);

    return sub_100D4C7CC(v9, v8, v7);
  }
}

uint64_t sub_10096E198(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 2136) = v2;

  if (v2)
  {

    v7 = v6[221];
    v8 = sub_10097BD18;
  }

  else
  {
    v6[268] = a2;
    v6[269] = a1;
    v7 = v6[221];
    v8 = sub_10096E2DC;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_10096E2DC()
{
  v1 = *(v0 + 2144);

  v2 = *(v0 + 2136);
  v3 = *(v0 + 2088);
  v4 = [v3 type];
  v5 = [v3 destination];
  if (v5)
  {
    if (v1)
    {
LABEL_3:
      v6 = String._bridgeToObjectiveC()();

      goto LABEL_6;
    }
  }

  else
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = String._bridgeToObjectiveC()();

    if (v1)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
LABEL_6:
  v7 = *(v0 + 2088);
  v8 = *(v0 + 1104);
  v9 = *(v0 + 1040);
  v10 = *(v0 + 1016);
  v11 = [objc_allocWithZone(SPHandle) initWithType:v4 destination:v5 formattedName:v6];

  v12 = *(v8 + *(v9 + 44));
  v13 = *(v8 + *(v9 + 48));
  v14 = v11;
  LOBYTE(v12) = sub_100E0EA64(v12, v13);

  sub_10000B3A8(v10, &unk_101698C20, &qword_101390748);
  sub_100988488(v8, type metadata accessor for SharedBeaconRecord);
  v15 = *(v0 + 2064);
  *(v0 + 2200) = 0u;
  *(v0 + 2192) = v14;
  *(v0 + 2854) = 0;
  *(v0 + 2853) = v12 & 1;
  *(v0 + 2184) = v15;
  *(v0 + 2176) = v2;
  v16 = *(v0 + 704);
  v17 = *(v0 + 696);
  v18 = v17[3];
  v19 = v17[4];
  sub_1000035D0(v17, v18);
  (*(*(*(v19 + 8) + 8) + 32))(v18);

  return _swift_task_switch(sub_10096E98C, v16, 0);
}

uint64_t sub_10096E4E4()
{
  v1 = *(v0 + 1808);
  v2 = *(v0 + 1632);
  v3 = *(v0 + 1504);
  v4 = *(v0 + 704);
  v5 = (*(v0 + 2832) + 24) & ~*(v0 + 2832);
  (*(v0 + 1784))(v2, *(v0 + 1640), v3);
  v6 = swift_allocObject();
  *(v0 + 2160) = v6;
  *(v6 + 16) = v4;
  v1(v6 + v5, v2, v3);

  v7 = swift_task_alloc();
  *(v0 + 2168) = v7;
  *v7 = v0;
  v7[1] = sub_10096E640;
  v8 = *(v0 + 1208);
  v9 = *(v0 + 1200);

  return unsafeBlocking<A>(context:_:)(v8, 0xD000000000000010, 0x800000010134A8C0, sub_1009863AC, v6, v9);
}

uint64_t sub_10096E640()
{
  v1 = *v0;
  v2 = *(*v0 + 1832);
  v3 = *(*v0 + 1640);
  v4 = *(*v0 + 1504);

  v2(v3, v4);
  v5 = *(v1 + 1768);

  return _swift_task_switch(sub_10096E7E0, v5, 0);
}

uint64_t sub_10096E7E0()
{
  v1 = *(v0 + 1208);
  v2 = type metadata accessor for LostModeRecord(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_10000B3A8(v1, &unk_1016A99E0, &qword_1013A07B0);
    v3 = 0;
  }

  else
  {
    v3 = sub_100E78AA8();
    sub_100988488(v1, type metadata accessor for LostModeRecord);
  }

  v4 = qword_101694E80;
  v5 = v3;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = qword_10177C088;
  v7 = *(v0 + 1904);
  *(v0 + 2200) = 0u;
  *(v0 + 2192) = v6;
  *(v0 + 2853) = 0;
  *(v0 + 2184) = v3;
  *(v0 + 2176) = v7;
  v8 = *(v0 + 704);
  v9 = *(v0 + 696);
  v10 = v9[3];
  v11 = v9[4];
  v12 = v6;
  sub_1000035D0(v9, v10);
  (*(*(*(v11 + 8) + 8) + 32))(v10);

  return _swift_task_switch(sub_10096E98C, v8, 0);
}

uint64_t sub_10096E98C()
{
  v1 = *(v0 + 1808);
  v2 = *(v0 + 1632);
  v3 = *(v0 + 1504);
  v4 = *(v0 + 704);
  v5 = (*(v0 + 2832) + 24) & ~*(v0 + 2832);
  (*(v0 + 1784))(v2, *(v0 + 1640), v3);
  v6 = swift_allocObject();
  *(v0 + 2216) = v6;
  *(v6 + 16) = v4;
  v1(v6 + v5, v2, v3);

  v7 = swift_task_alloc();
  *(v0 + 2224) = v7;
  *v7 = v0;
  v7[1] = sub_10096EAE8;
  v8 = *(v0 + 1464);
  v9 = *(v0 + 1424);

  return unsafeBlocking<A>(context:_:)(v8, 0xD000000000000010, 0x800000010134A8C0, sub_1009863C4, v6, v9);
}

uint64_t sub_10096EAE8()
{
  v1 = *v0;
  v2 = *(*v0 + 1832);
  v3 = *(*v0 + 1640);
  v4 = *(*v0 + 1504);

  v2(v3, v4);
  v5 = *(v1 + 1768);

  return _swift_task_switch(sub_10096EC88, v5, 0);
}

uint64_t sub_10096EC88()
{
  v1 = *(v0 + 1488);
  v2 = *(v0 + 1480);
  v3 = *(v0 + 1456);
  sub_1000D2A70(*(v0 + 1464), v3, &unk_1016AF8C0, &unk_1013A07A0);
  v4 = *(v1 + 48);
  *(v0 + 2232) = v4;
  *(v0 + 2240) = (v1 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v3, 1, v2) == 1)
  {
    sub_10000B3A8(*(v0 + 1456), &unk_1016AF8C0, &unk_1013A07A0);
    v5 = 0;
    v6 = 0;
  }

  else
  {
    v7 = *(v0 + 1456);
    v8 = (v7 + *(*(v0 + 1480) + 48));
    v5 = *v8;
    v6 = v8[1];

    sub_100988488(v7, type metadata accessor for BeaconProductInfoRecord);
  }

  *(v0 + 2256) = v6;
  *(v0 + 2248) = v5;
  v9 = *(v0 + 1480);
  v10 = *(v0 + 1448);
  sub_1000D2A70(*(v0 + 1464), v10, &unk_1016AF8C0, &unk_1013A07A0);
  if (v4(v10, 1, v9) == 1)
  {
    sub_10000B3A8(*(v0 + 1448), &unk_1016AF8C0, &unk_1013A07A0);
    v11 = 0;
    v12 = 0;
  }

  else
  {
    v13 = *(v0 + 1448);
    v14 = (v13 + *(*(v0 + 1480) + 44));
    v11 = *v14;
    v12 = v14[1];

    sub_100988488(v13, type metadata accessor for BeaconProductInfoRecord);
  }

  *(v0 + 2272) = v12;
  *(v0 + 2264) = v11;
  v15 = *(v0 + 712);
  v16 = *(v0 + 696);
  v17 = v16[3];
  v18 = v16[4];
  sub_1000035D0(v16, v17);
  *(v0 + 2280) = (*(v18 + 48))(v17, v18);
  v19 = v16[3];
  v20 = v16[4];
  sub_1000035D0(v16, v19);
  *(v0 + 2288) = (*(v20 + 56))(v19, v20);
  v21 = swift_task_alloc();
  *(v21 + 16) = v16;

  v22 = sub_10013D504(sub_1009863DC, v21, v15);

  v29 = v22[2];
  if (v29)
  {
    v30 = 0;
    v31 = *(v0 + 960);
    while (v30 < v22[2])
    {
      v32 = *(v0 + 976);
      v33 = *(v0 + 968);
      sub_1009863FC(v22 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v30, v32, type metadata accessor for SafeLocation);
      sub_100008BB8(0, &unk_1016B1680, SPSafeLocation_ptr);
      sub_1009863FC(v32, v33, type metadata accessor for SafeLocation);
      sub_1009C859C(v33);
      sub_100988488(v32, type metadata accessor for SafeLocation);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      ++v30;
      v23 = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      if (v29 == v30)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
    return unsafeBlocking<A>(context:_:)(v23, v24, v25, v26, v27, v28);
  }

LABEL_13:
  v34 = *(v0 + 1776);

  *(v0 + 2296) = sub_10112A684(_swiftEmptyArrayStorage);

  if (v34)
  {
    v35 = *(v0 + 1776);
    sub_10001F280(*(v0 + 696), v0 + 264);
    v36 = swift_allocObject();
    *(v0 + 2304) = v36;
    *(v36 + 16) = v35;
    sub_10000A748((v0 + 264), v36 + 24);
    swift_retain_n();
    v37 = swift_task_alloc();
    *(v0 + 2312) = v37;
    *v37 = v0;
    v37[1] = sub_10096F1C0;
    v28 = &type metadata for Bool;
    v26 = sub_1009866D8;
    v23 = v0 + 2847;
    v25 = 0x80000001013CA9B0;
    v24 = 0xD000000000000019;
    v27 = v36;

    return unsafeBlocking<A>(context:_:)(v23, v24, v25, v26, v27, v28);
  }

  *(v0 + 2855) = 0;
  v38 = *(v0 + 704);
  v39 = *(v0 + 696);
  v40 = v39[3];
  v41 = v39[4];
  sub_1000035D0(v39, v40);
  (*(*(*(v41 + 8) + 8) + 32))(v40);

  return _swift_task_switch(sub_10096F3AC, v38, 0);
}

uint64_t sub_10096F1C0()
{
  v1 = *v0;

  v2 = *(v1 + 1768);

  return _swift_task_switch(sub_10096F2F4, v2, 0);
}

uint64_t sub_10096F2F4()
{

  *(v0 + 2855) = *(v0 + 2847);
  v1 = *(v0 + 704);
  v2 = *(v0 + 696);
  v3 = v2[3];
  v4 = v2[4];
  sub_1000035D0(v2, v3);
  (*(*(*(v4 + 8) + 8) + 32))(v3);

  return _swift_task_switch(sub_10096F3AC, v1, 0);
}

uint64_t sub_10096F3AC()
{
  v12 = *(v0 + 1808);
  v1 = *(v0 + 1632);
  v2 = *(v0 + 1520);
  v3 = *(v0 + 1504);
  v4 = *(v0 + 728);
  v5 = *(v0 + 720);
  v6 = *(v0 + 704);
  v7 = (*(v0 + 2832) + 24) & ~*(v0 + 2832);
  (*(v0 + 1784))(v1, *(v0 + 1640), v3);
  v8 = (v7 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = swift_allocObject();
  *(v0 + 2320) = v9;
  *(v9 + 16) = v6;
  v12(v9 + v7, v1, v3);
  *(v9 + v8) = v5;
  *(v9 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8)) = v4;

  v10 = swift_task_alloc();
  *(v0 + 2328) = v10;
  *v10 = v0;
  v10[1] = sub_10096F550;

  return unsafeBlocking<A>(context:_:)(v0 + 672, 0xD000000000000010, 0x800000010134A8C0, sub_100986464, v9, &type metadata for Int);
}

uint64_t sub_10096F550()
{
  v1 = *(*v0 + 704);

  return _swift_task_switch(sub_10096F67C, v1, 0);
}

uint64_t sub_10096F67C()
{
  (*(v0 + 1832))(*(v0 + 1640), *(v0 + 1504));
  *(v0 + 2336) = *(v0 + 672);
  v1 = *(v0 + 1768);

  return _swift_task_switch(sub_10096F6F8, v1, 0);
}

uint64_t sub_10096F6F8()
{
  if (v0[292] <= 0)
  {
    v2 = 1;
    if (*(v0[92] + 200))
    {
      v2 = 2;
    }
  }

  else
  {
    v2 = 2;
  }

  v0[293] = v2;
  v3 = swift_task_alloc();
  v0[294] = v3;
  *v3 = v0;
  v3[1] = sub_10096F7C0;
  v4 = v0[116];
  v5 = v0[87];

  return sub_1009686D8(v4, v5);
}

uint64_t sub_10096F7C0()
{
  v2 = *v1;
  *(*v1 + 2360) = v0;

  if (v0)
  {

    v3 = *(v2 + 1768);
    v4 = sub_100970844;
  }

  else
  {
    v3 = *(v2 + 1768);
    v4 = sub_10096F8EC;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10096F8EC()
{
  v135 = v0;
  v1 = *(v0 + 952);
  v2 = *(v0 + 928);
  (*(*(v0 + 944) + 56))(v2, 0, 1, *(v0 + 936));
  sub_1000D2AD8(v2, v1, &unk_1016C8FC0, &unk_10139D7D0);
  v3 = [objc_allocWithZone(SPKeySyncRecord) init];
  if (v3)
  {
    v4 = *(v0 + 1832);
    v5 = *(v0 + 1640);
    v6 = *(v0 + 1504);
    v7 = *(v0 + 952);
    v8 = *(v0 + 696);
    v10 = v8[3];
    v9 = v8[4];
    sub_1000035D0(v8, v10);
    (*(*(*(v9 + 8) + 8) + 32))(v10);
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v4(v5, v6);
    [v3 setIdentifier:isa];

    [v3 setLastIndexObserved:*v7];
    v12 = Date._bridgeToObjectiveC()().super.isa;
    [v3 setLastIndexObservationDate:v12];
  }

  sub_10000B3A8(*(v0 + 952), &unk_1016C8FC0, &unk_10139D7D0);
  v13 = *(v0 + 2360);
  *(v0 + 2376) = v3;
  *(v0 + 2368) = v13;
  v14 = sub_1012BDEE0(*(v0 + 696));
  if (v14 <= 1)
  {
    if (v14)
    {
      v15 = 2;
    }

    else
    {
      v15 = 1;
    }
  }

  else if (v14 == 2)
  {
    v15 = 4;
  }

  else
  {
    if (v14 != 3)
    {
      v16 = *(v0 + 704);
      v17 = *(v0 + 696);
      v18 = v17[3];
      v19 = v17[4];
      sub_1000035D0(v17, v18);
      (*(*(*(v19 + 8) + 8) + 32))(v18);
      v20 = sub_100971698;
LABEL_28:
      v29 = v20;
      v30 = v16;
      goto LABEL_29;
    }

    v15 = 5;
  }

  v21 = *(v0 + 696);
  v22 = v21[3];
  v23 = v21[4];
  sub_1000035D0(v21, v22);
  if ((*(v23 + 56))(v22, v23) == 22034)
  {
    if (v15 == 4)
    {
      v15 = 5;
    }

    else if (v15 == 5)
    {
      v15 = 6;
    }
  }

  *(v0 + 2400) = v15;
  v24 = *(v0 + 2232);
  v25 = *(v0 + 1480);
  v26 = *(v0 + 1440);
  sub_1000D2A70(*(v0 + 1464), v26, &unk_1016AF8C0, &unk_1013A07A0);
  if (v24(v26, 1, v25) == 1)
  {
    sub_10000B3A8(*(v0 + 1440), &unk_1016AF8C0, &unk_1013A07A0);
    v27 = 0;
  }

  else
  {
    v28 = *(v0 + 1440);
    v27 = *(v28 + *(*(v0 + 1480) + 72));
    sub_100988488(v28, type metadata accessor for BeaconProductInfoRecord);
  }

  *(v0 + 2408) = v27;
  v29 = MobileGestalt_get_current_device();
  if (!v29)
  {
    __break(1u);
    return _swift_task_switch(v29, v30, v31);
  }

  v32 = v29;
  v33 = MobileGestalt_copy_productType_obj();

  if (v33)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v34 = *(v0 + 696);
  v35 = String.lowercased()();

  *(v0 + 616) = v35;
  sub_10058AE3C();
  sub_1000DF96C();
  static PartialMatchCase<>.first(containing:)();

  *(v0 + 2856) = *(v0 + 2846);
  sub_10001F280(v34, v0 + 384);
  if (swift_dynamicCast())
  {
    v36 = *(v0 + 704);
    v37 = *(v0 + 696);
    sub_100986170(*(v0 + 1280), *(v0 + 1272), type metadata accessor for OwnedBeaconRecord);
    *(v0 + 2844) = sub_100D608FC();
    v39 = v37[3];
    v38 = v37[4];
    sub_1000035D0(v37, v39);
    (*(*(*(v38 + 8) + 8) + 32))(v39);
    v40 = sub_10097279C;
LABEL_25:
    v29 = v40;
    v30 = v36;
    goto LABEL_29;
  }

  if (swift_dynamicCast())
  {
    v16 = *(v0 + 704);
    v41 = *(v0 + 696);
    sub_100986170(*(v0 + 896), *(v0 + 888), type metadata accessor for LocalFindableAccessoryRecord);
    v42 = v41[3];
    v43 = v41[4];
    sub_1000035D0(v41, v42);
    (*(*(*(v43 + 8) + 8) + 32))(v42);
    v20 = sub_100973278;
    goto LABEL_28;
  }

  if (swift_dynamicCast())
  {
    v44 = *(v0 + 1072);
    v45 = *(v0 + 1040);
    sub_100986170(*(v0 + 1080), v44, type metadata accessor for SharedBeaconRecord);
    v46 = sub_100314604(*(v44 + *(v45 + 44)), *(v44 + *(v45 + 48)));
    if (v47 >> 60 == 15)
    {
      if (qword_101694AD8 != -1)
      {
        swift_once();
      }

      v48 = *(v0 + 696);
      v49 = type metadata accessor for Logger();
      sub_1000076D4(v49, qword_10177B740);
      sub_10001F280(v48, v0 + 544);
      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = *(v0 + 1832);
        v53 = *(v0 + 1640);
        v54 = *(v0 + 1504);
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        *&v134 = v56;
        *v55 = 141558275;
        *(v55 + 4) = 1752392040;
        *(v55 + 12) = 2081;
        v57 = *(v0 + 568);
        v58 = *(v0 + 576);
        sub_1000035D0((v0 + 544), v57);
        (*(*(*(v58 + 8) + 8) + 32))(v57);
        sub_100985CA0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v59 = dispatch thunk of CustomStringConvertible.description.getter();
        v61 = v60;
        v52(v53, v54);
        sub_100007BAC((v0 + 544));
        v62 = sub_1000136BC(v59, v61, &v134);

        *(v55 + 14) = v62;
        _os_log_impl(&_mh_execute_header, v50, v51, "Could not compute productUUID from shared beacon %{private,mask.hash}s.", v55, 0x16u);
        sub_100007BAC(v56);
      }

      else
      {

        sub_100007BAC((v0 + 544));
      }

      UUID.init(uuid:)();
    }

    else
    {
      v78 = v47;
      v79 = v46;
      if (qword_101694570 != -1)
      {
        swift_once();
      }

      v134 = xmmword_10169DAA8;
      sub_100017D5C(xmmword_10169DAA8, *(&xmmword_10169DAA8 + 1));
      Data.append(_:)();
      v80 = v134;
      *(v0 + 600) = v134;
      sub_100017D5C(v80, *(&v80 + 1));
      sub_1000E0A3C();
      DataProtocol.stableUUID.getter();
      sub_100006654(v79, v78);
      sub_100016590(v80, *(&v80 + 1));
      sub_100016590(v80, *(&v80 + 1));
    }

    v30 = *(v0 + 704);
    v29 = sub_100973ACC;
    goto LABEL_29;
  }

  if (qword_101694AD8 != -1)
  {
    swift_once();
  }

  v63 = *(v0 + 696);
  v64 = type metadata accessor for Logger();
  sub_1000076D4(v64, qword_10177B740);
  sub_10001F280(v63, v0 + 424);
  v65 = Logger.logObject.getter();
  v66 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v65, v66))
  {
    v67 = *(v0 + 1832);
    v68 = *(v0 + 1640);
    v69 = *(v0 + 1504);
    v70 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    *&v134 = v71;
    *v70 = 141558275;
    *(v70 + 4) = 1752392040;
    *(v70 + 12) = 2081;
    v73 = *(v0 + 448);
    v72 = *(v0 + 456);
    sub_1000035D0((v0 + 424), v73);
    (*(*(*(v72 + 8) + 8) + 32))(v73);
    sub_100985CA0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v74 = dispatch thunk of CustomStringConvertible.description.getter();
    v76 = v75;
    v67(v68, v69);
    sub_100007BAC((v0 + 424));
    v77 = sub_1000136BC(v74, v76, &v134);

    *(v70 + 14) = v77;
    _os_log_impl(&_mh_execute_header, v65, v66, "Beacon record type is not handled for beacon %{private,mask.hash}s.", v70, 0x16u);
    sub_100007BAC(v71);
  }

  else
  {

    sub_100007BAC((v0 + 424));
  }

  v81 = *(v0 + 696);
  UUID.init(uuid:)();
  v82 = v81[3];
  v83 = v81[4];
  sub_1000035D0(v81, v82);
  v84 = (*(v83 + 24))(v82, v83);
  v85 = *(v0 + 2368);
  *(v0 + 2600) = 255;
  *(v0 + 2584) = 0u;
  *(v0 + 2576) = v86;
  *(v0 + 2568) = v84;
  *(v0 + 2560) = v85;
  v87 = *(v0 + 1048);
  v88 = *(v0 + 696);
  sub_100007BAC((v0 + 384));
  sub_10001F280(v88, v0 + 464);
  v89 = swift_dynamicCast();
  v90 = *(v87 + 56);
  if ((v89 & 1) == 0)
  {
    v96 = *(v0 + 1024);
    v90(v96, 1, 1, *(v0 + 1040));
    v97 = &unk_101698C30;
    v98 = &unk_101392630;
    v99 = v96;
LABEL_51:
    sub_10000B3A8(v99, v97, v98);
    goto LABEL_52;
  }

  v91 = *(v0 + 1064);
  v92 = *(v0 + 1040);
  v93 = *(v0 + 1024);
  v90(v93, 0, 1, v92);
  sub_100986170(v93, v91, type metadata accessor for SharedBeaconRecord);
  v94 = *(v0 + 1064);
  if (*(v91 + *(v92 + 44)) == -1)
  {
    v95 = *(v0 + 1040);
    if (*(v94 + v95[12]) == -1)
    {
      v118 = *(v94 + v95[16]);
      if (v118 == 4 || v118 == 1)
      {
        v119 = *(v0 + 864);
        v120 = *(v0 + 1064);
        sub_1000D2A70(v94 + v95[20], v119, &unk_1016AF890, &qword_1013926D0);
        sub_100988488(v120, type metadata accessor for SharedBeaconRecord);
        v121 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
        v122 = (*(*(v121 - 8) + 48))(v119, 1, v121);
        v123 = *(v0 + 1512);
        v124 = *(v0 + 1504);
        v125 = *(v0 + 1184);
        v126 = *(v0 + 864);
        if (v122 == 1)
        {
          sub_10000B3A8(v126, &unk_1016AF890, &qword_1013926D0);
          (*(v123 + 56))(v125, 1, 1, v124);
        }

        else
        {
          v127 = *(v121 + 20);
          v128 = *(v0 + 864);
          sub_1000D2A70(v126 + v127, *(v0 + 1184), &qword_1016980D0, &unk_10138F3B0);
          sub_100988488(v128, type metadata accessor for SharedBeaconRecord.PropertyListContent);
          if ((*(v123 + 48))(v125, 1, v124) != 1)
          {
            v129 = *(v0 + 1808);
            v130 = *(v0 + 1560);
            v131 = *(v0 + 1552);
            v132 = *(v0 + 1504);
            v129(v131, *(v0 + 1184), v132);
            v129(v130, v131, v132);
            goto LABEL_53;
          }
        }

        v99 = *(v0 + 1184);
        v97 = &qword_1016980D0;
        v98 = &unk_10138F3B0;
        goto LABEL_51;
      }
    }
  }

  sub_100988488(v94, type metadata accessor for SharedBeaconRecord);
LABEL_52:
  v100 = *(v0 + 696);
  v101 = v100[3];
  v102 = v100[4];
  sub_1000035D0(v100, v101);
  (*(*(*(v102 + 8) + 8) + 32))(v101);
LABEL_53:
  v103 = *(v0 + 1544);
  v104 = *(v0 + 1512);
  v105 = *(v0 + 1504);
  v106 = *(v0 + 1176);
  v107 = *(v0 + 696);
  v108 = v107[3];
  v109 = v107[4];
  sub_1000035D0(v107, v108);
  sub_10083138C(v108, v109, v103);
  v110 = v107[3];
  v111 = v107[4];
  sub_1000035D0(v107, v110);
  (*(v111 + 200))(v110, v111);
  v112 = *(v104 + 48);
  *(v0 + 2608) = v112;
  *(v0 + 2616) = (v104 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v112(v106, 1, v105) == 1)
  {
    sub_10000B3A8(*(v0 + 1176), &qword_1016980D0, &unk_10138F3B0);
    *(v0 + 2664) = 0;
    *(v0 + 2680) = 0;
    *(v0 + 2672) = 0;
    v113 = *(v0 + 1512);
    v114 = *(v0 + 1504);
    v115 = *(v0 + 1168);
    v36 = *(v0 + 704);
    (*(v0 + 1784))(v115, *(v0 + 1560), v114);
    v116 = *(v113 + 56);
    *(v0 + 2688) = v116;
    *(v0 + 2696) = (v113 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v116(v115, 0, 1, v114);
    v40 = sub_1009757DC;
    goto LABEL_25;
  }

  v117 = *(v0 + 704);
  (*(v0 + 1808))(*(v0 + 1536), *(v0 + 1176), *(v0 + 1504));
  v29 = sub_100975010;
  v30 = v117;
LABEL_29:
  v31 = 0;

  return _swift_task_switch(v29, v30, v31);
}

uint64_t sub_100970844()
{
  v123 = v0;
  v1 = *(v0 + 928);
  v2 = 1;
  (*(*(v0 + 944) + 56))(v1, 1, 1, *(v0 + 936));
  sub_10000B3A8(v1, &unk_1016AF8A0, &unk_10139D7C0);
  *(v0 + 2368) = 0u;
  v3 = sub_1012BDEE0(*(v0 + 696));
  if (v3 <= 1)
  {
    if (v3)
    {
      v2 = 2;
    }
  }

  else if (v3 == 2)
  {
    v2 = 4;
  }

  else
  {
    if (v3 != 3)
    {
      v7 = *(v0 + 704);
      v8 = *(v0 + 696);
      v9 = v8[3];
      v10 = v8[4];
      sub_1000035D0(v8, v9);
      (*(*(*(v10 + 8) + 8) + 32))(v9);
      v11 = sub_100971698;
LABEL_25:
      v17 = v11;
      v18 = v7;
      goto LABEL_26;
    }

    v2 = 5;
  }

  v4 = *(v0 + 696);
  v5 = v4[3];
  v6 = v4[4];
  sub_1000035D0(v4, v5);
  if ((*(v6 + 56))(v5, v6) == 22034)
  {
    if (v2 == 4)
    {
      v2 = 5;
    }

    else if (v2 == 5)
    {
      v2 = 6;
    }
  }

  *(v0 + 2400) = v2;
  v12 = *(v0 + 2232);
  v13 = *(v0 + 1480);
  v14 = *(v0 + 1440);
  sub_1000D2A70(*(v0 + 1464), v14, &unk_1016AF8C0, &unk_1013A07A0);
  if (v12(v14, 1, v13) == 1)
  {
    sub_10000B3A8(*(v0 + 1440), &unk_1016AF8C0, &unk_1013A07A0);
    v15 = 0;
  }

  else
  {
    v16 = *(v0 + 1440);
    v15 = *(v16 + *(*(v0 + 1480) + 72));
    sub_100988488(v16, type metadata accessor for BeaconProductInfoRecord);
  }

  *(v0 + 2408) = v15;
  v17 = MobileGestalt_get_current_device();
  if (!v17)
  {
    __break(1u);
    return _swift_task_switch(v17, v18, v19);
  }

  v20 = v17;
  v21 = MobileGestalt_copy_productType_obj();

  if (v21)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v22 = *(v0 + 696);
  v23 = String.lowercased()();

  *(v0 + 616) = v23;
  sub_10058AE3C();
  sub_1000DF96C();
  static PartialMatchCase<>.first(containing:)();

  *(v0 + 2856) = *(v0 + 2846);
  sub_10001F280(v22, v0 + 384);
  if (swift_dynamicCast())
  {
    v24 = *(v0 + 704);
    v25 = *(v0 + 696);
    sub_100986170(*(v0 + 1280), *(v0 + 1272), type metadata accessor for OwnedBeaconRecord);
    *(v0 + 2844) = sub_100D608FC();
    v27 = v25[3];
    v26 = v25[4];
    sub_1000035D0(v25, v27);
    (*(*(*(v26 + 8) + 8) + 32))(v27);
    v28 = sub_10097279C;
LABEL_22:
    v17 = v28;
    v18 = v24;
    goto LABEL_26;
  }

  if (swift_dynamicCast())
  {
    v7 = *(v0 + 704);
    v29 = *(v0 + 696);
    sub_100986170(*(v0 + 896), *(v0 + 888), type metadata accessor for LocalFindableAccessoryRecord);
    v30 = v29[3];
    v31 = v29[4];
    sub_1000035D0(v29, v30);
    (*(*(*(v31 + 8) + 8) + 32))(v30);
    v11 = sub_100973278;
    goto LABEL_25;
  }

  if (swift_dynamicCast())
  {
    v32 = *(v0 + 1072);
    v33 = *(v0 + 1040);
    sub_100986170(*(v0 + 1080), v32, type metadata accessor for SharedBeaconRecord);
    v34 = sub_100314604(*(v32 + *(v33 + 44)), *(v32 + *(v33 + 48)));
    if (v35 >> 60 == 15)
    {
      if (qword_101694AD8 != -1)
      {
        swift_once();
      }

      v36 = *(v0 + 696);
      v37 = type metadata accessor for Logger();
      sub_1000076D4(v37, qword_10177B740);
      sub_10001F280(v36, v0 + 544);
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = *(v0 + 1832);
        v41 = *(v0 + 1640);
        v42 = *(v0 + 1504);
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        *&v122 = v44;
        *v43 = 141558275;
        *(v43 + 4) = 1752392040;
        *(v43 + 12) = 2081;
        v45 = *(v0 + 568);
        v46 = *(v0 + 576);
        sub_1000035D0((v0 + 544), v45);
        (*(*(*(v46 + 8) + 8) + 32))(v45);
        sub_100985CA0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v47 = dispatch thunk of CustomStringConvertible.description.getter();
        v49 = v48;
        v40(v41, v42);
        sub_100007BAC((v0 + 544));
        v50 = sub_1000136BC(v47, v49, &v122);

        *(v43 + 14) = v50;
        _os_log_impl(&_mh_execute_header, v38, v39, "Could not compute productUUID from shared beacon %{private,mask.hash}s.", v43, 0x16u);
        sub_100007BAC(v44);
      }

      else
      {

        sub_100007BAC((v0 + 544));
      }

      UUID.init(uuid:)();
    }

    else
    {
      v66 = v35;
      v67 = v34;
      if (qword_101694570 != -1)
      {
        swift_once();
      }

      v122 = xmmword_10169DAA8;
      sub_100017D5C(xmmword_10169DAA8, *(&xmmword_10169DAA8 + 1));
      Data.append(_:)();
      v68 = v122;
      *(v0 + 600) = v122;
      sub_100017D5C(v68, *(&v68 + 1));
      sub_1000E0A3C();
      DataProtocol.stableUUID.getter();
      sub_100006654(v67, v66);
      sub_100016590(v68, *(&v68 + 1));
      sub_100016590(v68, *(&v68 + 1));
    }

    v18 = *(v0 + 704);
    v17 = sub_100973ACC;
    goto LABEL_26;
  }

  if (qword_101694AD8 != -1)
  {
    swift_once();
  }

  v51 = *(v0 + 696);
  v52 = type metadata accessor for Logger();
  sub_1000076D4(v52, qword_10177B740);
  sub_10001F280(v51, v0 + 424);
  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = *(v0 + 1832);
    v56 = *(v0 + 1640);
    v57 = *(v0 + 1504);
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    *&v122 = v59;
    *v58 = 141558275;
    *(v58 + 4) = 1752392040;
    *(v58 + 12) = 2081;
    v61 = *(v0 + 448);
    v60 = *(v0 + 456);
    sub_1000035D0((v0 + 424), v61);
    (*(*(*(v60 + 8) + 8) + 32))(v61);
    sub_100985CA0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v62 = dispatch thunk of CustomStringConvertible.description.getter();
    v64 = v63;
    v55(v56, v57);
    sub_100007BAC((v0 + 424));
    v65 = sub_1000136BC(v62, v64, &v122);

    *(v58 + 14) = v65;
    _os_log_impl(&_mh_execute_header, v53, v54, "Beacon record type is not handled for beacon %{private,mask.hash}s.", v58, 0x16u);
    sub_100007BAC(v59);
  }

  else
  {

    sub_100007BAC((v0 + 424));
  }

  v69 = *(v0 + 696);
  UUID.init(uuid:)();
  v70 = v69[3];
  v71 = v69[4];
  sub_1000035D0(v69, v70);
  v72 = (*(v71 + 24))(v70, v71);
  v73 = *(v0 + 2368);
  *(v0 + 2600) = 255;
  *(v0 + 2584) = 0u;
  *(v0 + 2576) = v74;
  *(v0 + 2568) = v72;
  *(v0 + 2560) = v73;
  v75 = *(v0 + 1048);
  v76 = *(v0 + 696);
  sub_100007BAC((v0 + 384));
  sub_10001F280(v76, v0 + 464);
  v77 = swift_dynamicCast();
  v78 = *(v75 + 56);
  if ((v77 & 1) == 0)
  {
    v84 = *(v0 + 1024);
    v78(v84, 1, 1, *(v0 + 1040));
    v85 = &unk_101698C30;
    v86 = &unk_101392630;
    v87 = v84;
LABEL_48:
    sub_10000B3A8(v87, v85, v86);
    goto LABEL_49;
  }

  v79 = *(v0 + 1064);
  v80 = *(v0 + 1040);
  v81 = *(v0 + 1024);
  v78(v81, 0, 1, v80);
  sub_100986170(v81, v79, type metadata accessor for SharedBeaconRecord);
  v82 = *(v0 + 1064);
  if (*(v79 + *(v80 + 44)) == -1)
  {
    v83 = *(v0 + 1040);
    if (*(v82 + v83[12]) == -1)
    {
      v106 = *(v82 + v83[16]);
      if (v106 == 4 || v106 == 1)
      {
        v107 = *(v0 + 864);
        v108 = *(v0 + 1064);
        sub_1000D2A70(v82 + v83[20], v107, &unk_1016AF890, &qword_1013926D0);
        sub_100988488(v108, type metadata accessor for SharedBeaconRecord);
        v109 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
        v110 = (*(*(v109 - 8) + 48))(v107, 1, v109);
        v111 = *(v0 + 1512);
        v112 = *(v0 + 1504);
        v113 = *(v0 + 1184);
        v114 = *(v0 + 864);
        if (v110 == 1)
        {
          sub_10000B3A8(v114, &unk_1016AF890, &qword_1013926D0);
          (*(v111 + 56))(v113, 1, 1, v112);
        }

        else
        {
          v115 = *(v109 + 20);
          v116 = *(v0 + 864);
          sub_1000D2A70(v114 + v115, *(v0 + 1184), &qword_1016980D0, &unk_10138F3B0);
          sub_100988488(v116, type metadata accessor for SharedBeaconRecord.PropertyListContent);
          if ((*(v111 + 48))(v113, 1, v112) != 1)
          {
            v117 = *(v0 + 1808);
            v118 = *(v0 + 1560);
            v119 = *(v0 + 1552);
            v120 = *(v0 + 1504);
            v117(v119, *(v0 + 1184), v120);
            v117(v118, v119, v120);
            goto LABEL_50;
          }
        }

        v87 = *(v0 + 1184);
        v85 = &qword_1016980D0;
        v86 = &unk_10138F3B0;
        goto LABEL_48;
      }
    }
  }

  sub_100988488(v82, type metadata accessor for SharedBeaconRecord);
LABEL_49:
  v88 = *(v0 + 696);
  v89 = v88[3];
  v90 = v88[4];
  sub_1000035D0(v88, v89);
  (*(*(*(v90 + 8) + 8) + 32))(v89);
LABEL_50:
  v91 = *(v0 + 1544);
  v92 = *(v0 + 1512);
  v93 = *(v0 + 1504);
  v94 = *(v0 + 1176);
  v95 = *(v0 + 696);
  v96 = v95[3];
  v97 = v95[4];
  sub_1000035D0(v95, v96);
  sub_10083138C(v96, v97, v91);
  v98 = v95[3];
  v99 = v95[4];
  sub_1000035D0(v95, v98);
  (*(v99 + 200))(v98, v99);
  v100 = *(v92 + 48);
  *(v0 + 2608) = v100;
  *(v0 + 2616) = (v92 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v100(v94, 1, v93) == 1)
  {
    sub_10000B3A8(*(v0 + 1176), &qword_1016980D0, &unk_10138F3B0);
    *(v0 + 2664) = 0;
    *(v0 + 2680) = 0;
    *(v0 + 2672) = 0;
    v101 = *(v0 + 1512);
    v102 = *(v0 + 1504);
    v103 = *(v0 + 1168);
    v24 = *(v0 + 704);
    (*(v0 + 1784))(v103, *(v0 + 1560), v102);
    v104 = *(v101 + 56);
    *(v0 + 2688) = v104;
    *(v0 + 2696) = (v101 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v104(v103, 0, 1, v102);
    v28 = sub_1009757DC;
    goto LABEL_22;
  }

  v105 = *(v0 + 704);
  (*(v0 + 1808))(*(v0 + 1536), *(v0 + 1176), *(v0 + 1504));
  v17 = sub_100975010;
  v18 = v105;
LABEL_26:
  v19 = 0;

  return _swift_task_switch(v17, v18, v19);
}

uint64_t sub_100971698()
{
  v1 = *(v0 + 1808);
  v2 = *(v0 + 1632);
  v3 = *(v0 + 1504);
  v4 = *(v0 + 704);
  v5 = (*(v0 + 2832) + 24) & ~*(v0 + 2832);
  (*(v0 + 1784))(v2, *(v0 + 1640), v3);
  v6 = swift_allocObject();
  *(v0 + 2384) = v6;
  *(v6 + 16) = v4;
  v1(v6 + v5, v2, v3);

  v7 = swift_task_alloc();
  *(v0 + 2392) = v7;
  *v7 = v0;
  v7[1] = sub_1009717F4;
  v8 = *(v0 + 920);
  v9 = *(v0 + 904);

  return unsafeBlocking<A>(context:_:)(v8, 0xD000000000000010, 0x800000010134A8C0, sub_100986510, v6, v9);
}

uint64_t sub_1009717F4()
{
  v1 = *v0;
  v2 = *(*v0 + 1832);
  v3 = *(*v0 + 1640);
  v4 = *(*v0 + 1504);

  v2(v3, v4);
  v5 = *(v1 + 1768);

  return _swift_task_switch(sub_100971994, v5, 0);
}

uint64_t sub_100971994()
{
  v120 = v0;
  v1 = *(v0 + 920);
  v2 = *(v0 + 784);
  if ((*(*(v0 + 792) + 48))(v1, 1, v2) == 1)
  {
    sub_10000B3A8(v1, &qword_10169DBD8, &qword_1013BF910);
    v3 = 0;
  }

  else
  {
    v4 = *(v1 + *(v2 + 20));
    sub_100988488(v1, type metadata accessor for BeaconStatus);
    v3 = qword_1013CB120[sub_100165934(v4)];
    v5 = *(v0 + 696);
    v6 = v5[3];
    v7 = v5[4];
    sub_1000035D0(v5, v6);
    if ((*(v7 + 56))(v6, v7) == 22034)
    {
      if (v3 == 4)
      {
        v3 = 5;
      }

      else if (v3 == 5)
      {
        v3 = 6;
      }
    }
  }

  *(v0 + 2400) = v3;
  v8 = *(v0 + 2232);
  v9 = *(v0 + 1480);
  v10 = *(v0 + 1440);
  sub_1000D2A70(*(v0 + 1464), v10, &unk_1016AF8C0, &unk_1013A07A0);
  if (v8(v10, 1, v9) == 1)
  {
    sub_10000B3A8(*(v0 + 1440), &unk_1016AF8C0, &unk_1013A07A0);
    v11 = 0;
  }

  else
  {
    v12 = *(v0 + 1440);
    v11 = *(v12 + *(*(v0 + 1480) + 72));
    sub_100988488(v12, type metadata accessor for BeaconProductInfoRecord);
  }

  *(v0 + 2408) = v11;
  v13 = MobileGestalt_get_current_device();
  if (!v13)
  {
    __break(1u);
    return _swift_task_switch(v13, v14, v15);
  }

  v16 = v13;
  v17 = MobileGestalt_copy_productType_obj();

  if (v17)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v18 = *(v0 + 696);
  v19 = String.lowercased()();

  *(v0 + 616) = v19;
  sub_10058AE3C();
  sub_1000DF96C();
  static PartialMatchCase<>.first(containing:)();

  *(v0 + 2856) = *(v0 + 2846);
  sub_10001F280(v18, v0 + 384);
  if (swift_dynamicCast())
  {
    v20 = *(v0 + 704);
    v21 = *(v0 + 696);
    sub_100986170(*(v0 + 1280), *(v0 + 1272), type metadata accessor for OwnedBeaconRecord);
    *(v0 + 2844) = sub_100D608FC();
    v23 = v21[3];
    v22 = v21[4];
    sub_1000035D0(v21, v23);
    (*(*(*(v22 + 8) + 8) + 32))(v23);
    v24 = sub_10097279C;
LABEL_16:
    v13 = v24;
    v14 = v20;
    goto LABEL_46;
  }

  if (swift_dynamicCast())
  {
    v25 = *(v0 + 704);
    v26 = *(v0 + 696);
    sub_100986170(*(v0 + 896), *(v0 + 888), type metadata accessor for LocalFindableAccessoryRecord);
    v27 = v26[3];
    v28 = v26[4];
    sub_1000035D0(v26, v27);
    (*(*(*(v28 + 8) + 8) + 32))(v27);
    v13 = sub_100973278;
    v14 = v25;
    goto LABEL_46;
  }

  if (swift_dynamicCast())
  {
    v29 = *(v0 + 1072);
    v30 = *(v0 + 1040);
    sub_100986170(*(v0 + 1080), v29, type metadata accessor for SharedBeaconRecord);
    v31 = sub_100314604(*(v29 + *(v30 + 44)), *(v29 + *(v30 + 48)));
    if (v32 >> 60 == 15)
    {
      if (qword_101694AD8 != -1)
      {
        swift_once();
      }

      v33 = *(v0 + 696);
      v34 = type metadata accessor for Logger();
      sub_1000076D4(v34, qword_10177B740);
      sub_10001F280(v33, v0 + 544);
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = *(v0 + 1832);
        v38 = *(v0 + 1640);
        v39 = *(v0 + 1504);
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        *&v119 = v41;
        *v40 = 141558275;
        *(v40 + 4) = 1752392040;
        *(v40 + 12) = 2081;
        v42 = *(v0 + 568);
        v43 = *(v0 + 576);
        sub_1000035D0((v0 + 544), v42);
        (*(*(*(v43 + 8) + 8) + 32))(v42);
        sub_100985CA0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v44 = dispatch thunk of CustomStringConvertible.description.getter();
        v46 = v45;
        v37(v38, v39);
        sub_100007BAC((v0 + 544));
        v47 = sub_1000136BC(v44, v46, &v119);

        *(v40 + 14) = v47;
        _os_log_impl(&_mh_execute_header, v35, v36, "Could not compute productUUID from shared beacon %{private,mask.hash}s.", v40, 0x16u);
        sub_100007BAC(v41);
      }

      else
      {

        sub_100007BAC((v0 + 544));
      }

      UUID.init(uuid:)();
    }

    else
    {
      v63 = v32;
      v64 = v31;
      if (qword_101694570 != -1)
      {
        swift_once();
      }

      v119 = xmmword_10169DAA8;
      sub_100017D5C(xmmword_10169DAA8, *(&xmmword_10169DAA8 + 1));
      Data.append(_:)();
      v65 = v119;
      *(v0 + 600) = v119;
      sub_100017D5C(v65, *(&v65 + 1));
      sub_1000E0A3C();
      DataProtocol.stableUUID.getter();
      sub_100006654(v64, v63);
      sub_100016590(v65, *(&v65 + 1));
      sub_100016590(v65, *(&v65 + 1));
    }

    v14 = *(v0 + 704);
    v13 = sub_100973ACC;
    goto LABEL_46;
  }

  if (qword_101694AD8 != -1)
  {
    swift_once();
  }

  v48 = *(v0 + 696);
  v49 = type metadata accessor for Logger();
  sub_1000076D4(v49, qword_10177B740);
  sub_10001F280(v48, v0 + 424);
  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = *(v0 + 1832);
    v53 = *(v0 + 1640);
    v54 = *(v0 + 1504);
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    *&v119 = v56;
    *v55 = 141558275;
    *(v55 + 4) = 1752392040;
    *(v55 + 12) = 2081;
    v58 = *(v0 + 448);
    v57 = *(v0 + 456);
    sub_1000035D0((v0 + 424), v58);
    (*(*(*(v57 + 8) + 8) + 32))(v58);
    sub_100985CA0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v59 = dispatch thunk of CustomStringConvertible.description.getter();
    v61 = v60;
    v52(v53, v54);
    sub_100007BAC((v0 + 424));
    v62 = sub_1000136BC(v59, v61, &v119);

    *(v55 + 14) = v62;
    _os_log_impl(&_mh_execute_header, v50, v51, "Beacon record type is not handled for beacon %{private,mask.hash}s.", v55, 0x16u);
    sub_100007BAC(v56);
  }

  else
  {

    sub_100007BAC((v0 + 424));
  }

  v66 = *(v0 + 696);
  UUID.init(uuid:)();
  v67 = v66[3];
  v68 = v66[4];
  sub_1000035D0(v66, v67);
  v69 = (*(v68 + 24))(v67, v68);
  v70 = *(v0 + 2368);
  *(v0 + 2600) = 255;
  *(v0 + 2584) = 0u;
  *(v0 + 2576) = v71;
  *(v0 + 2568) = v69;
  *(v0 + 2560) = v70;
  v72 = *(v0 + 1048);
  v73 = *(v0 + 696);
  sub_100007BAC((v0 + 384));
  sub_10001F280(v73, v0 + 464);
  v74 = swift_dynamicCast();
  v75 = *(v72 + 56);
  if ((v74 & 1) == 0)
  {
    v81 = *(v0 + 1024);
    v75(v81, 1, 1, *(v0 + 1040));
    v82 = &unk_101698C30;
    v83 = &unk_101392630;
    v84 = v81;
LABEL_38:
    sub_10000B3A8(v84, v82, v83);
    goto LABEL_39;
  }

  v76 = *(v0 + 1064);
  v77 = *(v0 + 1040);
  v78 = *(v0 + 1024);
  v75(v78, 0, 1, v77);
  sub_100986170(v78, v76, type metadata accessor for SharedBeaconRecord);
  v79 = *(v0 + 1064);
  if (*(v76 + *(v77 + 44)) == -1)
  {
    v80 = *(v0 + 1040);
    if (*(v79 + v80[12]) == -1)
    {
      v103 = *(v79 + v80[16]);
      if (v103 == 4 || v103 == 1)
      {
        v104 = *(v0 + 864);
        v105 = *(v0 + 1064);
        sub_1000D2A70(v79 + v80[20], v104, &unk_1016AF890, &qword_1013926D0);
        sub_100988488(v105, type metadata accessor for SharedBeaconRecord);
        v106 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
        v107 = (*(*(v106 - 8) + 48))(v104, 1, v106);
        v108 = *(v0 + 1512);
        v109 = *(v0 + 1504);
        v110 = *(v0 + 1184);
        v111 = *(v0 + 864);
        if (v107 == 1)
        {
          sub_10000B3A8(v111, &unk_1016AF890, &qword_1013926D0);
          (*(v108 + 56))(v110, 1, 1, v109);
        }

        else
        {
          v112 = *(v106 + 20);
          v113 = *(v0 + 864);
          sub_1000D2A70(v111 + v112, *(v0 + 1184), &qword_1016980D0, &unk_10138F3B0);
          sub_100988488(v113, type metadata accessor for SharedBeaconRecord.PropertyListContent);
          if ((*(v108 + 48))(v110, 1, v109) != 1)
          {
            v114 = *(v0 + 1808);
            v115 = *(v0 + 1560);
            v116 = *(v0 + 1552);
            v117 = *(v0 + 1504);
            v114(v116, *(v0 + 1184), v117);
            v114(v115, v116, v117);
            goto LABEL_40;
          }
        }

        v84 = *(v0 + 1184);
        v82 = &qword_1016980D0;
        v83 = &unk_10138F3B0;
        goto LABEL_38;
      }
    }
  }

  sub_100988488(v79, type metadata accessor for SharedBeaconRecord);
LABEL_39:
  v85 = *(v0 + 696);
  v86 = v85[3];
  v87 = v85[4];
  sub_1000035D0(v85, v86);
  (*(*(*(v87 + 8) + 8) + 32))(v86);
LABEL_40:
  v88 = *(v0 + 1544);
  v89 = *(v0 + 1512);
  v90 = *(v0 + 1504);
  v91 = *(v0 + 1176);
  v92 = *(v0 + 696);
  v93 = v92[3];
  v94 = v92[4];
  sub_1000035D0(v92, v93);
  sub_10083138C(v93, v94, v88);
  v95 = v92[3];
  v96 = v92[4];
  sub_1000035D0(v92, v95);
  (*(v96 + 200))(v95, v96);
  v97 = *(v89 + 48);
  *(v0 + 2608) = v97;
  *(v0 + 2616) = (v89 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v97(v91, 1, v90) == 1)
  {
    sub_10000B3A8(*(v0 + 1176), &qword_1016980D0, &unk_10138F3B0);
    *(v0 + 2664) = 0;
    *(v0 + 2680) = 0;
    *(v0 + 2672) = 0;
    v98 = *(v0 + 1512);
    v99 = *(v0 + 1504);
    v100 = *(v0 + 1168);
    v20 = *(v0 + 704);
    (*(v0 + 1784))(v100, *(v0 + 1560), v99);
    v101 = *(v98 + 56);
    *(v0 + 2688) = v101;
    *(v0 + 2696) = (v98 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v101(v100, 0, 1, v99);
    v24 = sub_1009757DC;
    goto LABEL_16;
  }

  v102 = *(v0 + 704);
  (*(v0 + 1808))(*(v0 + 1536), *(v0 + 1176), *(v0 + 1504));
  v13 = sub_100975010;
  v14 = v102;
LABEL_46:
  v15 = 0;

  return _swift_task_switch(v13, v14, v15);
}

uint64_t sub_10097279C()
{
  v1 = *(v0 + 1808);
  v2 = *(v0 + 1632);
  v3 = *(v0 + 1504);
  v4 = *(v0 + 704);
  v5 = (*(v0 + 2832) + 24) & ~*(v0 + 2832);
  (*(v0 + 1784))(v2, *(v0 + 1640), v3);
  v6 = swift_allocObject();
  *(v0 + 2416) = v6;
  *(v6 + 16) = v4;
  v1(v6 + v5, v2, v3);

  v7 = swift_task_alloc();
  *(v0 + 2424) = v7;
  *v7 = v0;
  v7[1] = sub_1009728F8;
  v8 = *(v0 + 1592);
  v9 = *(v0 + 1504);

  return unsafeBlocking<A>(context:_:)(v8, 0xD000000000000010, 0x800000010134A8C0, sub_100988F2C, v6, v9);
}

uint64_t sub_1009728F8()
{
  v1 = *(*v0 + 1832);
  v2 = *(*v0 + 1640);
  v3 = *(*v0 + 1504);
  v4 = *(*v0 + 704);

  v1(v2, v3);

  return _swift_task_switch(sub_100972A90, v4, 0);
}

uint64_t sub_100972A90()
{
  v1 = v0[158];
  v2 = v0[155];
  v3 = v0[88];
  sub_1009863FC(v0[159], v1, type metadata accessor for OwnedBeaconRecord);
  v4 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v5 = swift_allocObject();
  v0[304] = v5;
  *(v5 + 16) = v3;
  sub_100986170(v1, v5 + v4, type metadata accessor for OwnedBeaconRecord);

  v6 = swift_task_alloc();
  v0[305] = v6;
  v7 = sub_1000BC4D4(&qword_1016A0AC0, &unk_1013926A0);
  *v6 = v0;
  v6[1] = sub_100972C00;

  return unsafeBlocking<A>(context:_:)(v0 + 73, 0xD000000000000010, 0x800000010134A8C0, sub_100986664, v5, v7);
}

uint64_t sub_100972C00()
{
  v1 = *(*v0 + 704);

  return _swift_task_switch(sub_100972D2C, v1, 0);
}

uint64_t sub_100972D54()
{
  v1 = *(v0 + 2844);
  v2 = *(v0 + 1272);
  v3 = (v2 + *(*(v0 + 1232) + 60));
  v5 = *v3;
  v4 = v3[1];

  sub_100988488(v2, type metadata accessor for OwnedBeaconRecord);
  v6 = *(v0 + 2368);
  if ((v1 & 0x100) != 0)
  {
    v7 = 255;
  }

  else
  {
    v7 = v1;
  }

  *(v0 + 2600) = v7;
  *(v0 + 2584) = *(v0 + 2448);
  *(v0 + 2576) = v4;
  *(v0 + 2568) = v5;
  *(v0 + 2560) = v6;
  v8 = *(v0 + 1048);
  v9 = *(v0 + 696);
  sub_100007BAC((v0 + 384));
  sub_10001F280(v9, v0 + 464);
  v10 = swift_dynamicCast();
  v11 = *(v8 + 56);
  if ((v10 & 1) == 0)
  {
    v17 = *(v0 + 1024);
    v11(v17, 1, 1, *(v0 + 1040));
    v18 = &unk_101698C30;
    v19 = &unk_101392630;
    v20 = v17;
LABEL_9:
    sub_10000B3A8(v20, v18, v19);
    goto LABEL_10;
  }

  v12 = *(v0 + 1064);
  v13 = *(v0 + 1040);
  v14 = *(v0 + 1024);
  v11(v14, 0, 1, v13);
  sub_100986170(v14, v12, type metadata accessor for SharedBeaconRecord);
  v15 = *(v0 + 1064);
  if (*(v12 + *(v13 + 44)) != -1 || (v16 = *(v0 + 1040), *(v15 + v16[12]) != -1) || (v42 = *(v15 + v16[16]), v42 != 4) && v42 != 1)
  {
    sub_100988488(v15, type metadata accessor for SharedBeaconRecord);
LABEL_10:
    v21 = *(v0 + 696);
    v22 = v21[3];
    v23 = v21[4];
    sub_1000035D0(v21, v22);
    (*(*(*(v23 + 8) + 8) + 32))(v22);
    goto LABEL_11;
  }

  v43 = *(v0 + 864);
  v44 = *(v0 + 1064);
  sub_1000D2A70(v15 + v16[20], v43, &unk_1016AF890, &qword_1013926D0);
  sub_100988488(v44, type metadata accessor for SharedBeaconRecord);
  v45 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
  v46 = (*(*(v45 - 8) + 48))(v43, 1, v45);
  v47 = *(v0 + 1512);
  v48 = *(v0 + 1504);
  v49 = *(v0 + 1184);
  v50 = *(v0 + 864);
  if (v46 == 1)
  {
    sub_10000B3A8(v50, &unk_1016AF890, &qword_1013926D0);
    (*(v47 + 56))(v49, 1, 1, v48);
LABEL_22:
    v20 = *(v0 + 1184);
    v18 = &qword_1016980D0;
    v19 = &unk_10138F3B0;
    goto LABEL_9;
  }

  v51 = *(v45 + 20);
  v52 = *(v0 + 864);
  sub_1000D2A70(v50 + v51, *(v0 + 1184), &qword_1016980D0, &unk_10138F3B0);
  sub_100988488(v52, type metadata accessor for SharedBeaconRecord.PropertyListContent);
  if ((*(v47 + 48))(v49, 1, v48) == 1)
  {
    goto LABEL_22;
  }

  v53 = *(v0 + 1808);
  v54 = *(v0 + 1560);
  v55 = *(v0 + 1552);
  v56 = *(v0 + 1504);
  v53(v55, *(v0 + 1184), v56);
  v53(v54, v55, v56);
LABEL_11:
  v24 = *(v0 + 1544);
  v25 = *(v0 + 1512);
  v26 = *(v0 + 1504);
  v27 = *(v0 + 1176);
  v28 = *(v0 + 696);
  v29 = v28[3];
  v30 = v28[4];
  sub_1000035D0(v28, v29);
  sub_10083138C(v29, v30, v24);
  v31 = v28[3];
  v32 = v28[4];
  sub_1000035D0(v28, v31);
  (*(v32 + 200))(v31, v32);
  v33 = *(v25 + 48);
  *(v0 + 2608) = v33;
  *(v0 + 2616) = (v25 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v33(v27, 1, v26) == 1)
  {
    sub_10000B3A8(*(v0 + 1176), &qword_1016980D0, &unk_10138F3B0);
    *(v0 + 2664) = 0;
    *(v0 + 2680) = 0;
    *(v0 + 2672) = 0;
    v34 = *(v0 + 1512);
    v35 = *(v0 + 1504);
    v36 = *(v0 + 1168);
    v37 = *(v0 + 704);
    (*(v0 + 1784))(v36, *(v0 + 1560), v35);
    v38 = *(v34 + 56);
    *(v0 + 2688) = v38;
    *(v0 + 2696) = (v34 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v38(v36, 0, 1, v35);
    v39 = sub_1009757DC;
    v40 = v37;
  }

  else
  {
    v41 = *(v0 + 704);
    (*(v0 + 1808))(*(v0 + 1536), *(v0 + 1176), *(v0 + 1504));
    v39 = sub_100975010;
    v40 = v41;
  }

  return _swift_task_switch(v39, v40, 0);
}

uint64_t sub_100973278()
{
  v1 = *(v0 + 1808);
  v2 = *(v0 + 1632);
  v3 = *(v0 + 1504);
  v4 = *(v0 + 704);
  v5 = (*(v0 + 2832) + 24) & ~*(v0 + 2832);
  (*(v0 + 1784))(v2, *(v0 + 1640), v3);
  v6 = swift_allocObject();
  *(v0 + 2464) = v6;
  *(v6 + 16) = v4;
  v1(v6 + v5, v2, v3);

  v7 = swift_task_alloc();
  *(v0 + 2472) = v7;
  *v7 = v0;
  v7[1] = sub_1009733D4;
  v8 = *(v0 + 1592);
  v9 = *(v0 + 1504);

  return unsafeBlocking<A>(context:_:)(v8, 0xD000000000000010, 0x800000010134A8C0, sub_10098664C, v6, v9);
}

uint64_t sub_1009733D4()
{
  v1 = *v0;
  v2 = *(*v0 + 1832);
  v3 = *(*v0 + 1640);
  v4 = *(*v0 + 1504);

  v2(v3, v4);
  v5 = *(v1 + 1768);

  return _swift_task_switch(sub_100973574, v5, 0);
}

uint64_t sub_100973574(uint64_t a1)
{
  static String.Encoding.utf8.getter();
  v2 = String.init(data:encoding:)();
  if (!v3)
  {
    v2 = Data.hexString.getter();
  }

  v4 = v2;
  v5 = v3;
  v6 = *(v1 + 888);
  v7 = (v6 + *(*(v1 + 880) + 24));
  v9 = *v7;
  v8 = v7[1];

  sub_100988488(v6, type metadata accessor for LocalFindableAccessoryRecord);
  v10 = *(v1 + 2368);
  *(v1 + 2600) = 255;
  *(v1 + 2592) = v5;
  *(v1 + 2584) = v4;
  *(v1 + 2576) = v8;
  *(v1 + 2568) = v9;
  *(v1 + 2560) = v10;
  v11 = *(v1 + 1048);
  v12 = *(v1 + 696);
  sub_100007BAC((v1 + 384));
  sub_10001F280(v12, v1 + 464);
  v13 = swift_dynamicCast();
  v14 = *(v11 + 56);
  if ((v13 & 1) == 0)
  {
    v20 = *(v1 + 1024);
    v14(v20, 1, 1, *(v1 + 1040));
    v21 = &unk_101698C30;
    v22 = &unk_101392630;
    v23 = v20;
LABEL_8:
    sub_10000B3A8(v23, v21, v22);
    goto LABEL_9;
  }

  v15 = *(v1 + 1064);
  v16 = *(v1 + 1040);
  v17 = *(v1 + 1024);
  v14(v17, 0, 1, v16);
  sub_100986170(v17, v15, type metadata accessor for SharedBeaconRecord);
  v18 = *(v1 + 1064);
  if (*(v15 + *(v16 + 44)) != -1 || (v19 = *(v1 + 1040), *(v18 + v19[12]) != -1) || (v45 = *(v18 + v19[16]), v45 != 4) && v45 != 1)
  {
    sub_100988488(v18, type metadata accessor for SharedBeaconRecord);
LABEL_9:
    v24 = *(v1 + 696);
    v25 = v24[3];
    v26 = v24[4];
    sub_1000035D0(v24, v25);
    (*(*(*(v26 + 8) + 8) + 32))(v25);
    goto LABEL_10;
  }

  v46 = *(v1 + 864);
  v47 = *(v1 + 1064);
  sub_1000D2A70(v18 + v19[20], v46, &unk_1016AF890, &qword_1013926D0);
  sub_100988488(v47, type metadata accessor for SharedBeaconRecord);
  v48 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
  v49 = (*(*(v48 - 8) + 48))(v46, 1, v48);
  v50 = *(v1 + 1512);
  v51 = *(v1 + 1504);
  v52 = *(v1 + 1184);
  v53 = *(v1 + 864);
  if (v49 == 1)
  {
    sub_10000B3A8(v53, &unk_1016AF890, &qword_1013926D0);
    (*(v50 + 56))(v52, 1, 1, v51);
LABEL_21:
    v23 = *(v1 + 1184);
    v21 = &qword_1016980D0;
    v22 = &unk_10138F3B0;
    goto LABEL_8;
  }

  v54 = *(v48 + 20);
  v55 = *(v1 + 864);
  sub_1000D2A70(v53 + v54, *(v1 + 1184), &qword_1016980D0, &unk_10138F3B0);
  sub_100988488(v55, type metadata accessor for SharedBeaconRecord.PropertyListContent);
  if ((*(v50 + 48))(v52, 1, v51) == 1)
  {
    goto LABEL_21;
  }

  v56 = *(v1 + 1808);
  v57 = *(v1 + 1560);
  v58 = *(v1 + 1552);
  v59 = *(v1 + 1504);
  v56(v58, *(v1 + 1184), v59);
  v56(v57, v58, v59);
LABEL_10:
  v27 = *(v1 + 1544);
  v28 = *(v1 + 1512);
  v29 = *(v1 + 1504);
  v30 = *(v1 + 1176);
  v31 = *(v1 + 696);
  v32 = v31[3];
  v33 = v31[4];
  sub_1000035D0(v31, v32);
  sub_10083138C(v32, v33, v27);
  v34 = v31[3];
  v35 = v31[4];
  sub_1000035D0(v31, v34);
  (*(v35 + 200))(v34, v35);
  v36 = *(v28 + 48);
  *(v1 + 2608) = v36;
  *(v1 + 2616) = (v28 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v36(v30, 1, v29) == 1)
  {
    sub_10000B3A8(*(v1 + 1176), &qword_1016980D0, &unk_10138F3B0);
    *(v1 + 2664) = 0;
    *(v1 + 2680) = 0;
    *(v1 + 2672) = 0;
    v37 = *(v1 + 1512);
    v38 = *(v1 + 1504);
    v39 = *(v1 + 1168);
    v40 = *(v1 + 704);
    (*(v1 + 1784))(v39, *(v1 + 1560), v38);
    v41 = *(v37 + 56);
    *(v1 + 2688) = v41;
    *(v1 + 2696) = (v37 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v41(v39, 0, 1, v38);
    v42 = sub_1009757DC;
    v43 = v40;
  }

  else
  {
    v44 = *(v1 + 704);
    (*(v1 + 1808))(*(v1 + 1536), *(v1 + 1176), *(v1 + 1504));
    v42 = sub_100975010;
    v43 = v44;
  }

  return _swift_task_switch(v42, v43, 0);
}

uint64_t sub_100973ACC()
{

  v1 = swift_task_alloc();
  v0[310] = v1;
  v2 = type metadata accessor for BeaconKeyManager(0);
  v0[311] = v2;
  *v1 = v0;
  v1[1] = sub_100973BB0;
  v3 = v0[88];

  return unsafeBlocking<A>(context:_:)(v0 + 82, 0xD000000000000010, 0x800000010134A8C0, sub_1000D3168, v3, v2);
}

uint64_t sub_100973BB0()
{
  v1 = *(*v0 + 704);

  return _swift_task_switch(sub_100973CC8, v1, 0);
}

uint64_t sub_100973CEC()
{
  v1 = *(v0 + 696);
  v2 = v1[3];
  v3 = v1[4];
  sub_1000035D0(v1, v2);
  (*(*(*(v3 + 8) + 8) + 32))(v2);
  v4 = getuid();
  sub_1000294F0(v4);

  return _swift_task_switch(sub_100973DA0, 0, 0);
}

uint64_t sub_100973DA0()
{
  v1 = swift_task_alloc();
  v0[313] = v1;
  *v1 = v0;
  v1[1] = sub_100973E50;
  v2 = v0[198];
  v3 = v0[197];

  return sub_100687A6C((v0 + 2), v2, v3);
}

uint64_t sub_100973E50()
{
  v2 = *v1;
  *(*v1 + 2512) = v0;

  if (v0)
  {

    v3 = sub_1009744FC;
    v4 = 0;
  }

  else
  {
    v5 = v2[229];
    v6 = v2[198];
    v7 = v2[188];
    v5(v2[197], v7);
    v5(v6, v7);

    v4 = v2[221];
    v3 = sub_100973FB8;
  }

  return _swift_task_switch(v3, v4, 0);
}

uint64_t sub_100973FB8()
{
  if (!*(v0 + 24))
  {
    v15 = *(v0 + 704);
    v16 = sub_1009745BC;
    goto LABEL_13;
  }

  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v4 = *(v0 + 56);
  v3 = *(v0 + 64);
  sub_100988488(*(v0 + 1072), type metadata accessor for SharedBeaconRecord);

  sub_10000B3A8(v0 + 16, &unk_1016AF910, &unk_10138C4C0);
  v5 = *(v0 + 2512);
  *(v0 + 2600) = 255;
  *(v0 + 2592) = v1;
  *(v0 + 2584) = v2;
  *(v0 + 2576) = v3;
  *(v0 + 2568) = v4;
  *(v0 + 2560) = v5;
  v6 = *(v0 + 1048);
  v7 = *(v0 + 696);
  sub_100007BAC((v0 + 384));
  sub_10001F280(v7, v0 + 464);
  v8 = swift_dynamicCast();
  v9 = *(v6 + 56);
  if ((v8 & 1) == 0)
  {
    v17 = *(v0 + 1024);
    v9(v17, 1, 1, *(v0 + 1040));
    v18 = &unk_101698C30;
    v19 = &unk_101392630;
    v20 = v17;
LABEL_8:
    sub_10000B3A8(v20, v18, v19);
    goto LABEL_9;
  }

  v10 = *(v0 + 1064);
  v11 = *(v0 + 1040);
  v12 = *(v0 + 1024);
  v9(v12, 0, 1, v11);
  sub_100986170(v12, v10, type metadata accessor for SharedBeaconRecord);
  v13 = *(v0 + 1064);
  if (*(v10 + *(v11 + 44)) != -1 || (v14 = *(v0 + 1040), *(v13 + v14[12]) != -1) || (v40 = *(v13 + v14[16]), v40 != 4) && v40 != 1)
  {
    sub_100988488(v13, type metadata accessor for SharedBeaconRecord);
LABEL_9:
    v21 = *(v0 + 696);
    v22 = v21[3];
    v23 = v21[4];
    sub_1000035D0(v21, v22);
    (*(*(*(v23 + 8) + 8) + 32))(v22);
    goto LABEL_10;
  }

  v41 = *(v0 + 864);
  v42 = *(v0 + 1064);
  sub_1000D2A70(v13 + v14[20], v41, &unk_1016AF890, &qword_1013926D0);
  sub_100988488(v42, type metadata accessor for SharedBeaconRecord);
  v43 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
  v44 = (*(*(v43 - 8) + 48))(v41, 1, v43);
  v45 = *(v0 + 1512);
  v46 = *(v0 + 1504);
  v47 = *(v0 + 1184);
  v48 = *(v0 + 864);
  if (v44 == 1)
  {
    sub_10000B3A8(v48, &unk_1016AF890, &qword_1013926D0);
    (*(v45 + 56))(v47, 1, 1, v46);
LABEL_21:
    v20 = *(v0 + 1184);
    v18 = &qword_1016980D0;
    v19 = &unk_10138F3B0;
    goto LABEL_8;
  }

  v49 = *(v43 + 20);
  v50 = *(v0 + 864);
  sub_1000D2A70(v48 + v49, *(v0 + 1184), &qword_1016980D0, &unk_10138F3B0);
  sub_100988488(v50, type metadata accessor for SharedBeaconRecord.PropertyListContent);
  if ((*(v45 + 48))(v47, 1, v46) == 1)
  {
    goto LABEL_21;
  }

  v51 = *(v0 + 1808);
  v52 = *(v0 + 1560);
  v53 = *(v0 + 1552);
  v54 = *(v0 + 1504);
  v51(v53, *(v0 + 1184), v54);
  v51(v52, v53, v54);
LABEL_10:
  v24 = *(v0 + 1544);
  v25 = *(v0 + 1512);
  v26 = *(v0 + 1504);
  v27 = *(v0 + 1176);
  v28 = *(v0 + 696);
  v29 = v28[3];
  v30 = v28[4];
  sub_1000035D0(v28, v29);
  sub_10083138C(v29, v30, v24);
  v31 = v28[3];
  v32 = v28[4];
  sub_1000035D0(v28, v31);
  (*(v32 + 200))(v31, v32);
  v33 = *(v25 + 48);
  *(v0 + 2608) = v33;
  *(v0 + 2616) = (v25 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v33(v27, 1, v26) == 1)
  {
    sub_10000B3A8(*(v0 + 1176), &qword_1016980D0, &unk_10138F3B0);
    *(v0 + 2664) = 0;
    *(v0 + 2680) = 0;
    *(v0 + 2672) = 0;
    v34 = *(v0 + 1512);
    v35 = *(v0 + 1504);
    v36 = *(v0 + 1168);
    v37 = *(v0 + 704);
    (*(v0 + 1784))(v36, *(v0 + 1560), v35);
    v38 = *(v34 + 56);
    *(v0 + 2688) = v38;
    *(v0 + 2696) = (v34 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v38(v36, 0, 1, v35);
    v16 = sub_1009757DC;
    v15 = v37;
  }

  else
  {
    v39 = *(v0 + 704);
    (*(v0 + 1808))(*(v0 + 1536), *(v0 + 1176), *(v0 + 1504));
    v16 = sub_100975010;
    v15 = v39;
  }

LABEL_13:

  return _swift_task_switch(v16, v15, 0);
}

uint64_t sub_1009744FC()
{
  v1 = v0[229];
  v2 = v0[198];
  v3 = v0[188];
  v1(v0[197], v3);
  v1(v2, v3);

  v4 = v0[221];

  return _swift_task_switch(sub_1009745A0, v4, 0);
}

uint64_t sub_1009745BC()
{

  v1 = swift_task_alloc();
  v0[315] = v1;
  *v1 = v0;
  v1[1] = sub_100974694;
  v2 = v0[311];
  v3 = v0[88];

  return unsafeBlocking<A>(context:_:)(v0 + 83, 0xD000000000000010, 0x800000010134A8C0, sub_1000D3168, v3, v2);
}

uint64_t sub_100974694()
{
  v1 = *(*v0 + 704);

  return _swift_task_switch(sub_1009747AC, v1, 0);
}

uint64_t sub_1009747D0()
{
  v1 = v0[134];
  v2 = v0[130];
  v0[317] = *(v0[316] + OBJC_IVAR____TtC12searchpartyd16BeaconKeyManager_keyStore);

  v5 = v2 + 20;
  v4 = *(v2 + 20);
  v3 = *(v5 + 4);
  v6 = getuid();
  sub_1000294F0(v6);
  v7 = swift_task_alloc();
  v0[318] = v7;
  *v7 = v0;
  v7[1] = sub_1009748C8;
  v8 = v0[196];

  return sub_10068E930((v0 + 20), v1 + v3, v1 + v4, v8);
}

uint64_t sub_1009748C8()
{
  v2 = *v1;
  v2[319] = v0;

  v3 = v2[229];
  v4 = v2[196];
  v5 = v2[188];
  if (v0)
  {

    v3(v4, v5);
    v6 = v2[221];
    v7 = sub_10097BEE0;
  }

  else
  {
    v3(v2[196], v2[188]);

    v6 = v2[221];
    v7 = sub_100974A8C;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_100974A8C()
{
  v1 = *(v0 + 168);
  if (v1)
  {
    v2 = *(v0 + 160);
    v3 = *(v0 + 1072);
    v4 = *(v0 + 1040);

    sub_10000B3A8(v0 + 160, &qword_1016AF908, &unk_1013CAD90);
    v5 = (v3 + *(v4 + 40));
    v7 = *v5;
    v6 = v5[1];

    sub_100988488(v3, type metadata accessor for SharedBeaconRecord);
    v8 = *(v0 + 2552);
  }

  else
  {
    v8 = *(v0 + 2552);
    v9 = *(v0 + 1072);
    v10 = (v9 + *(*(v0 + 1040) + 40));
    v7 = *v10;
    v6 = v10[1];

    sub_100988488(v9, type metadata accessor for SharedBeaconRecord);
    v2 = 0;
  }

  *(v0 + 2600) = 255;
  *(v0 + 2592) = v1;
  *(v0 + 2584) = v2;
  *(v0 + 2576) = v6;
  *(v0 + 2568) = v7;
  *(v0 + 2560) = v8;
  v11 = *(v0 + 1048);
  v12 = *(v0 + 696);
  sub_100007BAC((v0 + 384));
  sub_10001F280(v12, v0 + 464);
  v13 = swift_dynamicCast();
  v14 = *(v11 + 56);
  if ((v13 & 1) == 0)
  {
    v20 = *(v0 + 1024);
    v14(v20, 1, 1, *(v0 + 1040));
    v21 = &unk_101698C30;
    v22 = &unk_101392630;
    v23 = v20;
LABEL_9:
    sub_10000B3A8(v23, v21, v22);
    goto LABEL_10;
  }

  v15 = *(v0 + 1064);
  v16 = *(v0 + 1040);
  v17 = *(v0 + 1024);
  v14(v17, 0, 1, v16);
  sub_100986170(v17, v15, type metadata accessor for SharedBeaconRecord);
  v18 = *(v0 + 1064);
  if (*(v15 + *(v16 + 44)) != -1 || (v19 = *(v0 + 1040), *(v18 + v19[12]) != -1) || (v45 = *(v18 + v19[16]), v45 != 4) && v45 != 1)
  {
    sub_100988488(v18, type metadata accessor for SharedBeaconRecord);
LABEL_10:
    v24 = *(v0 + 696);
    v25 = v24[3];
    v26 = v24[4];
    sub_1000035D0(v24, v25);
    (*(*(*(v26 + 8) + 8) + 32))(v25);
    goto LABEL_11;
  }

  v46 = *(v0 + 864);
  v47 = *(v0 + 1064);
  sub_1000D2A70(v18 + v19[20], v46, &unk_1016AF890, &qword_1013926D0);
  sub_100988488(v47, type metadata accessor for SharedBeaconRecord);
  v48 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
  v49 = (*(*(v48 - 8) + 48))(v46, 1, v48);
  v50 = *(v0 + 1512);
  v51 = *(v0 + 1504);
  v52 = *(v0 + 1184);
  v53 = *(v0 + 864);
  if (v49 == 1)
  {
    sub_10000B3A8(v53, &unk_1016AF890, &qword_1013926D0);
    (*(v50 + 56))(v52, 1, 1, v51);
LABEL_22:
    v23 = *(v0 + 1184);
    v21 = &qword_1016980D0;
    v22 = &unk_10138F3B0;
    goto LABEL_9;
  }

  v54 = *(v48 + 20);
  v55 = *(v0 + 864);
  sub_1000D2A70(v53 + v54, *(v0 + 1184), &qword_1016980D0, &unk_10138F3B0);
  sub_100988488(v55, type metadata accessor for SharedBeaconRecord.PropertyListContent);
  if ((*(v50 + 48))(v52, 1, v51) == 1)
  {
    goto LABEL_22;
  }

  v56 = *(v0 + 1808);
  v57 = *(v0 + 1560);
  v58 = *(v0 + 1552);
  v59 = *(v0 + 1504);
  v56(v58, *(v0 + 1184), v59);
  v56(v57, v58, v59);
LABEL_11:
  v27 = *(v0 + 1544);
  v28 = *(v0 + 1512);
  v29 = *(v0 + 1504);
  v30 = *(v0 + 1176);
  v31 = *(v0 + 696);
  v32 = v31[3];
  v33 = v31[4];
  sub_1000035D0(v31, v32);
  sub_10083138C(v32, v33, v27);
  v34 = v31[3];
  v35 = v31[4];
  sub_1000035D0(v31, v34);
  (*(v35 + 200))(v34, v35);
  v36 = *(v28 + 48);
  *(v0 + 2608) = v36;
  *(v0 + 2616) = (v28 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v36(v30, 1, v29) == 1)
  {
    sub_10000B3A8(*(v0 + 1176), &qword_1016980D0, &unk_10138F3B0);
    *(v0 + 2664) = 0;
    *(v0 + 2680) = 0;
    *(v0 + 2672) = 0;
    v37 = *(v0 + 1512);
    v38 = *(v0 + 1504);
    v39 = *(v0 + 1168);
    v40 = *(v0 + 704);
    (*(v0 + 1784))(v39, *(v0 + 1560), v38);
    v41 = *(v37 + 56);
    *(v0 + 2688) = v41;
    *(v0 + 2696) = (v37 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v41(v39, 0, 1, v38);
    v42 = sub_1009757DC;
    v43 = v40;
  }

  else
  {
    v44 = *(v0 + 704);
    (*(v0 + 1808))(*(v0 + 1536), *(v0 + 1176), *(v0 + 1504));
    v42 = sub_100975010;
    v43 = v44;
  }

  return _swift_task_switch(v42, v43, 0);
}

uint64_t sub_100975010()
{
  v1 = *(v0 + 1808);
  v2 = *(v0 + 1640);
  v3 = *(v0 + 1504);
  v4 = *(v0 + 704);
  v5 = (*(v0 + 2832) + 24) & ~*(v0 + 2832);
  (*(v0 + 1784))(v2, *(v0 + 1536), v3);
  v6 = swift_allocObject();
  *(v0 + 2624) = v6;
  *(v6 + 16) = v4;
  v1(v6 + v5, v2, v3);

  v7 = swift_task_alloc();
  *(v0 + 2632) = v7;
  *v7 = v0;
  v7[1] = sub_10097516C;
  v8 = *(v0 + 1120);
  v9 = *(v0 + 1112);

  return unsafeBlocking<A>(context:_:)(v8, 0xD000000000000010, 0x800000010134A8C0, sub_1009865C0, v6, v9);
}

uint64_t sub_10097516C()
{
  v1 = *v0;

  v2 = *(v1 + 1768);

  return _swift_task_switch(sub_1009752A0, v2, 0);
}

uint64_t sub_1009752A0()
{
  v1 = *(v0 + 1120);
  if ((*(*(v0 + 832) + 48))(v1, 1, *(v0 + 824)) == 1)
  {
    (*(v0 + 1832))(*(v0 + 1536), *(v0 + 1504));
    sub_10000B3A8(v1, &unk_1016AF8B0, &unk_1013A0700);
    *(v0 + 2664) = 0;
    *(v0 + 2680) = 0;
    *(v0 + 2672) = 0;
    v2 = *(v0 + 1512);
    v3 = *(v0 + 1504);
    v4 = *(v0 + 1168);
    v5 = *(v0 + 704);
    (*(v0 + 1784))(v4, *(v0 + 1560), v3);
    v6 = *(v2 + 56);
    *(v0 + 2688) = v6;
    *(v0 + 2696) = (v2 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v6(v4, 0, 1, v3);
    v7 = sub_1009757DC;
    v8 = v5;
  }

  else
  {
    v9 = *(v0 + 704);
    sub_100986170(v1, *(v0 + 856), type metadata accessor for OwnedBeaconGroup);
    v7 = sub_100975400;
    v8 = v9;
  }

  return _swift_task_switch(v7, v8, 0);
}

uint64_t sub_100975400()
{
  v1 = v0[106];
  v2 = v0[104];
  v3 = v0[88];
  sub_1009863FC(v0[107], v1, type metadata accessor for OwnedBeaconGroup);
  v4 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v5 = swift_allocObject();
  v0[330] = v5;
  *(v5 + 16) = v3;
  sub_100986170(v1, v5 + v4, type metadata accessor for OwnedBeaconGroup);

  v6 = swift_task_alloc();
  v0[331] = v6;
  v7 = sub_1000BC4D4(&qword_1016AF900, &qword_1013CAD88);
  *v6 = v0;
  v6[1] = sub_100975570;

  return unsafeBlocking<A>(context:_:)(v0 + 80, 0xD000000000000010, 0x800000010134A8C0, sub_1009865D8, v5, v7);
}

uint64_t sub_100975570()
{
  v1 = *(*v0 + 704);

  return _swift_task_switch(sub_10097569C, v1, 0);
}

uint64_t sub_1009756C0()
{
  v1 = *(v0 + 2656);
  v2 = *(v0 + 856);
  v3 = *(v0 + 824);
  (*(v0 + 1832))(*(v0 + 1536), *(v0 + 1504));
  v4 = (v2 + *(v3 + 36));
  v6 = *v4;
  v5 = v4[1];

  sub_100988488(v2, type metadata accessor for OwnedBeaconGroup);
  *(v0 + 2680) = v1;
  *(v0 + 2672) = v5;
  *(v0 + 2664) = v6;
  v7 = *(v0 + 1512);
  v8 = *(v0 + 1504);
  v9 = *(v0 + 1168);
  v10 = *(v0 + 704);
  (*(v0 + 1784))(v9, *(v0 + 1560), v8);
  v11 = *(v7 + 56);
  *(v0 + 2688) = v11;
  *(v0 + 2696) = (v7 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v11(v9, 0, 1, v8);

  return _swift_task_switch(sub_1009757DC, v10, 0);
}

uint64_t sub_1009757DC()
{

  v1 = swift_task_alloc();
  *(v0 + 2704) = v1;
  v2 = sub_1000BC4D4(&qword_101698C80, &unk_1013A23F0);
  *v1 = v0;
  v1[1] = sub_1009758C8;
  v3 = *(v0 + 704);

  return unsafeBlocking<A>(context:_:)(v0 + 632, 0xD000000000000010, 0x800000010134A8C0, sub_1004216C0, v3, v2);
}

uint64_t sub_1009758C8()
{
  v1 = *(*v0 + 704);

  return _swift_task_switch(sub_1009759E0, v1, 0);
}

uint64_t sub_100975A04()
{
  v1 = *(v0 + 2712);
  if (*(v1 + 16))
  {
    v2 = *(v0 + 1784);
    v3 = *(v0 + 1504);
    v4 = *(v0 + 1256);
    v5 = *(v0 + 1232);
    v6 = *(v0 + 1160);
    v7 = *(*(v0 + 1240) + 80);
    sub_1009863FC(v1 + ((v7 + 32) & ~v7), v4, type metadata accessor for OwnedBeaconRecord);

    v2(v6, v4 + *(v5 + 20), v3);
    sub_100988488(v4, type metadata accessor for OwnedBeaconRecord);
    v8 = 0;
  }

  else
  {

    v8 = 1;
  }

  v9 = *(v0 + 2608);
  v10 = *(v0 + 1504);
  v11 = *(v0 + 1168);
  v12 = *(v0 + 1160);
  v13 = *(v0 + 816);
  v14 = *(v0 + 808);
  (*(v0 + 2688))(v12, v8, 1, v10);
  v15 = *(v14 + 48);
  sub_1000D2A70(v11, v13, &qword_1016980D0, &unk_10138F3B0);
  sub_1000D2A70(v12, v13 + v15, &qword_1016980D0, &unk_10138F3B0);
  v16 = v9(v13, 1, v10);
  v17 = *(v0 + 2608);
  v18 = *(v0 + 1504);
  if (v16 == 1)
  {
    v19 = *(v0 + 1168);
    sub_10000B3A8(*(v0 + 1160), &qword_1016980D0, &unk_10138F3B0);
    sub_10000B3A8(v19, &qword_1016980D0, &unk_10138F3B0);
    if (v17(v13 + v15, 1, v18) == 1)
    {
      sub_10000B3A8(*(v0 + 816), &qword_1016980D0, &unk_10138F3B0);
      v20 = 1;
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  sub_1000D2A70(*(v0 + 816), *(v0 + 1152), &qword_1016980D0, &unk_10138F3B0);
  v21 = v17(v13 + v15, 1, v18);
  v22 = *(v0 + 1832);
  if (v21 == 1)
  {
    v23 = *(v0 + 1504);
    v24 = *(v0 + 1168);
    v25 = *(v0 + 1152);
    sub_10000B3A8(*(v0 + 1160), &qword_1016980D0, &unk_10138F3B0);
    sub_10000B3A8(v24, &qword_1016980D0, &unk_10138F3B0);
    v22(v25, v23);
LABEL_9:
    sub_10000B3A8(*(v0 + 816), &qword_1016AF880, &unk_10138CE20);
    v20 = 0;
    goto LABEL_11;
  }

  v26 = *(v0 + 1640);
  v27 = *(v0 + 1504);
  v28 = *(v0 + 1168);
  v29 = *(v0 + 1160);
  v30 = *(v0 + 1152);
  v44 = *(v0 + 816);
  (*(v0 + 1808))(v26, v13 + v15, v27);
  sub_100985CA0(&qword_1016984A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v20 = dispatch thunk of static Equatable.== infix(_:_:)();
  v22(v26, v27);
  sub_10000B3A8(v29, &qword_1016980D0, &unk_10138F3B0);
  sub_10000B3A8(v28, &qword_1016980D0, &unk_10138F3B0);
  v22(v30, v27);
  sub_10000B3A8(v44, &qword_1016980D0, &unk_10138F3B0);
LABEL_11:
  v31 = *(v0 + 696);
  v32 = [objc_allocWithZone(NSNumber) initWithBool:v20 & 1];
  *(v0 + 2720) = v32;
  sub_10001F280(v31, v0 + 504);
  v33 = v32;
  v34 = swift_dynamicCast();
  if (v34)
  {
    sub_100988488(*(v0 + 1056), type metadata accessor for SharedBeaconRecord);
  }

  v35 = *(v0 + 1344);
  v36 = *(v0 + 1336);
  v37 = *(v0 + 1328);
  v38 = *(v0 + 1320);
  v39 = *(v0 + 704);
  v40 = [objc_allocWithZone(NSNumber) initWithBool:v34 ^ 1u];
  *(v0 + 2728) = v40;
  v41 = *(v35 + 56);
  v41(v37, 1, 1, v36);
  v41(v38, 1, 1, v36);
  v42 = v40;

  return _swift_task_switch(sub_100975E98, v39, 0);
}

uint64_t sub_100975E98()
{
  v1 = *(v0 + 1808);
  v2 = *(v0 + 1640);
  v3 = *(v0 + 1504);
  v4 = *(v0 + 704);
  v5 = (*(v0 + 2832) + 24) & ~*(v0 + 2832);
  v6 = *(v0 + 1520) + v5;
  (*(v0 + 1784))(v2, *(v0 + 1560), v3);
  v7 = swift_allocObject();
  *(v0 + 2736) = v7;
  *(v7 + 16) = v4;
  v1(v7 + v5, v2, v3);
  *(v7 + v6) = 1;

  v8 = swift_task_alloc();
  *(v0 + 2744) = v8;
  *v8 = v0;
  v8[1] = sub_100976000;
  v9 = *(v0 + 1392);
  v10 = *(v0 + 1376);

  return unsafeBlocking<A>(context:_:)(v9, 0xD000000000000010, 0x800000010134A8C0, sub_100988F24, v7, v10);
}

uint64_t sub_100976000()
{
  v1 = *(*v0 + 704);

  return _swift_task_switch(sub_10097612C, v1, 0);
}

uint64_t sub_10097612C()
{
  v1 = *(v0 + 1392);
  v2 = *(v0 + 1376);
  *(v0 + 2857) = *v1;
  sub_10000B3A8(&v1[*(v2 + 48)], &unk_101696900, &unk_10138B1E0);
  v3 = *(v0 + 1768);

  return _swift_task_switch(sub_1009761B8, v3, 0);
}

uint64_t sub_1009761B8()
{
  v153 = v0;
  if (*(v0 + 2857) == 1)
  {
    v1 = *(v0 + 704);
    v2 = sub_1009777A0;
LABEL_17:

    return _swift_task_switch(v2, v1, 0);
  }

  *(v0 + 2858) = 0;
  v3 = (v0 + 1928);
  if (*(v0 + 2672))
  {

    v4 = 2664;
    v3 = (v0 + 2672);
  }

  else
  {
    v4 = 1920;
  }

  v5 = *(v0 + v4);
  *(v0 + 2776) = *v3;
  *(v0 + 2768) = v5;
  v6 = *(v0 + 2232);
  v7 = *(v0 + 1480);
  v8 = *(v0 + 1432);
  sub_1000D2A70(*(v0 + 1464), v8, &unk_1016AF8C0, &unk_1013A07A0);
  v9 = v6(v8, 1, v7);
  v10 = *(v0 + 1432);
  if (v9 == 1)
  {
    sub_10000B3A8(*(v0 + 1432), &unk_1016AF8C0, &unk_1013A07A0);
    v11 = 0;
  }

  else
  {
    v12 = *(v0 + 696);
    v13 = sub_10083B890();
    sub_100988488(v10, type metadata accessor for BeaconProductInfoRecord);
    v14 = v12[3];
    v15 = v12[4];
    sub_1000035D0(v12, v14);
    v16 = *(v15 + 184);
    v11 = v13;
    v17 = v16(v14, v15);
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;
    if (v18 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v20 == v21)
    {
      v23 = 1;
    }

    else
    {
      v23 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v24 = *(v0 + 2853);

    [v11 setIsAirTag:v23 & 1];
    [v11 setIsAppleAudioAccessory:v24];
  }

  *(v0 + 2784) = v11;
  v25 = *(v0 + 696);
  v26 = v25[3];
  v27 = v25[4];
  sub_1000035D0(v25, v26);
  if ((*(v27 + 112))(v26, v27))
  {
    v1 = *(v0 + 704);
    v2 = sub_1009790A0;
    goto LABEL_17;
  }

  v28 = *(v0 + 776);
  v29 = type metadata accessor for AccessoryMetadataRecord(0);
  v30 = *(v29 - 8);
  (*(v30 + 56))(v28, 1, 1, v29);
  v31 = *(v0 + 752);
  sub_1000D2A70(*(v0 + 776), v31, &qword_1016AF888, &unk_1013CAD70);
  v32 = (*(v30 + 48))(v31, 1, v29);
  v33 = *(v0 + 752);
  if (v32 == 1)
  {
    sub_10000B3A8(*(v0 + 752), &qword_1016AF888, &unk_1013CAD70);
    v34 = 0;
  }

  else
  {
    v34 = sub_10109CEC0();
    sub_100988488(v33, type metadata accessor for AccessoryMetadataRecord);
  }

  *(v0 + 2808) = v34;
  v35 = *(v0 + 1776);
  v36 = *(v0 + 1560);
  v37 = *(v0 + 720);
  v38 = swift_task_alloc();
  *(v38 + 16) = v36;
  v39 = sub_1002EB5E4(sub_100986528, v38, v37);

  if (v35)
  {
    v40 = *(v0 + 1776);
    sub_10001F280(*(v0 + 696), v0 + 224);
    v41 = swift_allocObject();
    *(v0 + 2816) = v41;
    *(v41 + 16) = v40;
    sub_10000A748((v0 + 224), v41 + 24);
    *(v41 + 64) = v39;
    swift_retain_n();
    v42 = swift_task_alloc();
    *(v0 + 2824) = v42;
    v43 = sub_1000BC4D4(&qword_1016AF8F8, &qword_1013CAD80);
    *v42 = v0;
    v42[1] = sub_10097A8FC;

    return unsafeBlocking<A>(context:_:)(v0 + 648, 0xD000000000000019, 0x80000001013CA9B0, sub_100986548, v41, v43);
  }

  else
  {
    sub_1009097B0(_swiftEmptyArrayStorage);
    v44 = *(v0 + 2608);
    v45 = *(v0 + 1504);
    v46 = *(v0 + 1144);
    v47 = *(v0 + 696);
    v48 = [objc_allocWithZone(SPInternalSimpleBeacon) init];
    isa = UUID._bridgeToObjectiveC()().super.isa;
    [v48 setIdentifier:isa];

    v50 = v47[3];
    v51 = v47[4];
    sub_1000035D0(v47, v50);
    v52 = (*(v51 + 184))(v50, v51);
    [v48 setType:v52];

    v53 = v47[3];
    v54 = v47[4];
    sub_1000035D0(v47, v53);
    (*(v54 + 200))(v53, v54);
    if (v44(v46, 1, v45) == 1)
    {
      v55 = 0;
    }

    else
    {
      v56 = *(v0 + 1832);
      v57 = *(v0 + 1504);
      v58 = *(v0 + 1144);
      v55 = UUID._bridgeToObjectiveC()().super.isa;
      v56(v58, v57);
    }

    v59 = *(v0 + 2600);
    v60 = *(v0 + 2408);
    v61 = *(v0 + 2288);
    v62 = *(v0 + 2280);
    v63 = *(v0 + 2272);
    v64 = *(v0 + 2856) != 5;
    [v48 setGroupIdentifier:v55];

    [v48 setPartIdentifier:v59];
    [v48 setConnectionAllowed:v64];
    [v48 setTxPower:v60];
    v65 = UUID._bridgeToObjectiveC()().super.isa;
    [v48 setProductUUID:v65];

    [v48 setVendorId:v62];
    [v48 setProductId:v61];
    if (v63)
    {
      v66 = String._bridgeToObjectiveC()();
    }

    else
    {
      v66 = 0;
    }

    v67 = *(v0 + 2256);
    [v48 setModelName:v66];

    if (v67)
    {
      v68 = String._bridgeToObjectiveC()();
    }

    else
    {
      v68 = 0;
    }

    v69 = *(v0 + 2592);
    [v48 setManufacturerName:v68];

    if (v69)
    {
      v70 = String._bridgeToObjectiveC()();
    }

    else
    {
      v70 = 0;
    }

    v71 = *(v0 + 2784);
    v72 = *(v0 + 2208);
    v73 = *(v0 + 2192);
    v74 = *(v0 + 2854);
    v75 = *(v0 + 2853);
    [v48 setSerialNumber:v70];

    [v48 setOwner:v73];
    [v48 setAccessoryProductInfo:v71];
    [v48 setIsZeus:v74];
    [v48 setIsAppleAudioAccessory:v75];
    if (v72)
    {
      v76 = String._bridgeToObjectiveC()();
    }

    else
    {
      v76 = 0;
    }

    [v48 setDiscoveryId:v76];

    if (qword_101694AD8 != -1)
    {
      swift_once();
    }

    v77 = *(v0 + 2776);
    v78 = *(v0 + 1784);
    v79 = *(v0 + 1560);
    v80 = *(v0 + 1528);
    v81 = *(v0 + 1504);
    v82 = type metadata accessor for Logger();
    sub_1000076D4(v82, qword_10177B740);
    v78(v80, v79, v81);

    v83 = Logger.logObject.getter();
    v84 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v83, v84))
    {
      v146 = *(v0 + 2776);
      v148 = *(v0 + 2768);
      v145 = *(v0 + 1832);
      v85 = *(v0 + 1528);
      v86 = *(v0 + 1504);
      v87 = swift_slowAlloc();
      v152[0] = swift_slowAlloc();
      *v87 = 136315394;
      sub_100985CA0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v88 = dispatch thunk of CustomStringConvertible.description.getter();
      v90 = v89;
      v145(v85, v86);
      v91 = sub_1000136BC(v88, v90, v152);

      *(v87 + 4) = v91;
      *(v87 + 12) = 2080;
      if (v146)
      {
        v92 = v148;
      }

      else
      {
        v92 = 0x656D616E206F4ELL;
      }

      if (v146)
      {
        v93 = v77;
      }

      else
      {
        v93 = 0xE700000000000000;
      }

      v94 = sub_1000136BC(v92, v93, v152);

      *(v87 + 14) = v94;
      _os_log_impl(&_mh_execute_header, v83, v84, "SimpleBeacon got beacon %s, name: %s", v87, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      v95 = *(v0 + 1832);
      v96 = *(v0 + 1528);
      v97 = *(v0 + 1504);

      v95(v96, v97);
    }

    v98 = *(v0 + 2776);
    v99 = String._bridgeToObjectiveC()();

    [v48 setSystemVersion:v99];

    if (v98)
    {
      v100 = String._bridgeToObjectiveC()();
    }

    else
    {
      v100 = 0;
    }

    v101 = *(v0 + 2400);
    v102 = *(v0 + 2376);
    v103 = *(v0 + 2344);
    v104 = *(v0 + 2184);
    v147 = *(v0 + 1952);
    v105 = *(v0 + 1336);
    v106 = *(v0 + 1328);
    v107 = *(v0 + 1304);
    [v48 setName:v100];

    [v48 setBatteryLevel:v101];
    [v48 setBatteryPercentage:0];
    [v48 setConnectableDeviceCount:v103];
    [v48 setKeySyncRecord:v102];
    [v48 setLostModeInfo:v104];
    v149 = v104;

    sub_1000D2A70(v106, v107, &unk_101696900, &unk_10138B1E0);
    v108 = v147(v107, 1, v105);
    v109 = 0;
    if (v108 != 1)
    {
      v110 = *(v0 + 1344);
      v111 = *(v0 + 1336);
      v112 = *(v0 + 1304);
      v109 = Date._bridgeToObjectiveC()().super.isa;
      (*(v110 + 8))(v112, v111);
    }

    v113 = *(v0 + 1952);
    v114 = *(v0 + 1336);
    v115 = *(v0 + 1320);
    v116 = *(v0 + 1296);
    [v48 setLockedTimestamp:v109];

    sub_1000D2A70(v115, v116, &unk_101696900, &unk_10138B1E0);
    if (v113(v116, 1, v114) == 1)
    {
      v117 = 0;
    }

    else
    {
      v118 = *(v0 + 1344);
      v119 = *(v0 + 1336);
      v120 = *(v0 + 1296);
      v117 = Date._bridgeToObjectiveC()().super.isa;
      (*(v118 + 8))(v120, v119);
    }

    v121 = *(v0 + 2680);
    v122 = *(v0 + 2855);
    v123 = *(v0 + 2849);
    v124 = *(v0 + 1912);
    [v48 setWipedTimestamp:v117];

    [v48 setRole:v124];
    v144 = v124;

    sub_100008BB8(0, &unk_1016B1680, SPSafeLocation_ptr);
    sub_100009D18(qword_1016B1820, &unk_1016B1680, SPSafeLocation_ptr, &protocol conformance descriptor for NSObject);
    v125 = Set._bridgeToObjectiveC()().super.isa;

    [v48 setSafeLocations:v125];

    [v48 setConnected:v123];
    [v48 setCanBeLeashedByHost:v122];
    type metadata accessor for SPBeaconTaskName(0);
    sub_100008BB8(0, &unk_1016AF850, SPBeaconTaskInformation_ptr);
    sub_100985CA0(&qword_1016964D0, type metadata accessor for SPBeaconTaskName, &unk_10138A8F4);
    v126 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v48 setTaskInformation:v126];

    if (v121)
    {
      sub_1000BC4D4(&qword_1016AF8E0, &qword_101393130);
      sub_1000041A4(&unk_1016AF8E8, &qword_1016AF8E0, &qword_101393130, &protocol conformance descriptor for Set<A>);
      v121 = Set._bridgeToObjectiveC()().super.isa;
    }

    v127 = *(v0 + 2808);
    v128 = *(v0 + 2858);
    v129 = *(v0 + 2728);
    v130 = *(v0 + 2720);
    v138 = *(v0 + 2192);
    v142 = *(v0 + 2784);
    v140 = *(v0 + 2376);
    v141 = *(v0 + 1832);
    v131 = *(v0 + 1592);
    v139 = *(v0 + 1544);
    v132 = *(v0 + 1504);
    v143 = *(v0 + 1560);
    v136 = *(v0 + 1464);
    v137 = *(v0 + 1400);
    v150 = *(v0 + 1328);
    v151 = *(v0 + 1320);
    v133 = *(v0 + 776);
    [v48 setMultipartStatus:v121];

    [v48 setOnline:v128];
    [v48 setDeviceColor:0];
    [v48 setDeviceClass:0];
    [v48 setDeviceModel:0];
    [v48 setRawDeviceModel:0];
    [v48 setDeviceDisplayName:0];
    [v48 setLowPowerMode:0];
    [v48 setThisDevice:v130];

    [v48 setIsMine:v129];
    [v48 setRawMetadata:v127];

    sub_10000B3A8(v133, &qword_1016AF888, &unk_1013CAD70);
    v141(v139, v132);
    v141(v131, v132);
    sub_10000B3A8(v136, &unk_1016AF8C0, &unk_1013A07A0);
    sub_10000B3A8(v151, &unk_101696900, &unk_10138B1E0);
    sub_10000B3A8(v150, &unk_101696900, &unk_10138B1E0);
    sub_10000B3A8(v137, &unk_1016AA420, &unk_1013BCFE0);
    v141(v143, v132);

    v134 = *(v0 + 8);

    return v134(v48);
  }
}

uint64_t sub_1009777A0()
{
  v1 = *(v0 + 1808);
  v2 = *(v0 + 1640);
  v3 = *(v0 + 1504);
  v4 = *(v0 + 704);
  v5 = (*(v0 + 2832) + 24) & ~*(v0 + 2832);
  (*(v0 + 1784))(v2, *(v0 + 1560), v3);
  v6 = swift_allocObject();
  *(v0 + 2752) = v6;
  *(v6 + 16) = v4;
  v1(v6 + v5, v2, v3);

  v7 = swift_task_alloc();
  *(v0 + 2760) = v7;
  *v7 = v0;
  v7[1] = sub_1009778FC;
  v8 = *(v0 + 912);
  v9 = *(v0 + 904);

  return unsafeBlocking<A>(context:_:)(v8, 0xD000000000000010, 0x800000010134A8C0, sub_100988F28, v6, v9);
}

uint64_t sub_1009778FC()
{
  v1 = *v0;

  v2 = *(v1 + 1768);

  return _swift_task_switch(sub_100977A30, v2, 0);
}

uint64_t sub_100977A30()
{
  v157 = v0;
  v1 = *(v0 + 912);
  v2 = *(v0 + 784);
  if ((*(*(v0 + 792) + 48))(v1, 1, v2) == 1)
  {
    sub_10000B3A8(v1, &qword_10169DBD8, &qword_1013BF910);
LABEL_4:
    v5 = 0;
    goto LABEL_6;
  }

  v3 = *(v0 + 800);
  sub_100986170(v1, v3, type metadata accessor for BeaconStatus);
  v4 = *(v3 + *(v2 + 32));
  sub_100988488(v3, type metadata accessor for BeaconStatus);
  if (v4 == 1)
  {
    goto LABEL_4;
  }

  v5 = 1;
LABEL_6:
  *(v0 + 2858) = v5;
  v6 = (v0 + 1928);
  if (*(v0 + 2672))
  {

    v7 = 2664;
    v6 = (v0 + 2672);
  }

  else
  {
    v7 = 1920;
  }

  v8 = *(v0 + v7);
  *(v0 + 2776) = *v6;
  *(v0 + 2768) = v8;
  v9 = *(v0 + 2232);
  v10 = *(v0 + 1480);
  v11 = *(v0 + 1432);
  sub_1000D2A70(*(v0 + 1464), v11, &unk_1016AF8C0, &unk_1013A07A0);
  v12 = v9(v11, 1, v10);
  v13 = *(v0 + 1432);
  if (v12 == 1)
  {
    sub_10000B3A8(*(v0 + 1432), &unk_1016AF8C0, &unk_1013A07A0);
    v14 = 0;
  }

  else
  {
    v15 = *(v0 + 696);
    v16 = sub_10083B890();
    sub_100988488(v13, type metadata accessor for BeaconProductInfoRecord);
    v17 = v15[3];
    v18 = v15[4];
    sub_1000035D0(v15, v17);
    v19 = *(v18 + 184);
    v14 = v16;
    v20 = v19(v17, v18);
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;
    if (v21 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v23 == v24)
    {
      v26 = 1;
    }

    else
    {
      v26 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v27 = *(v0 + 2853);

    [v14 setIsAirTag:v26 & 1];
    [v14 setIsAppleAudioAccessory:v27];
  }

  *(v0 + 2784) = v14;
  v28 = *(v0 + 696);
  v29 = v28[3];
  v30 = v28[4];
  sub_1000035D0(v28, v29);
  if ((*(v30 + 112))(v29, v30))
  {
    v31 = *(v0 + 704);

    return _swift_task_switch(sub_1009790A0, v31, 0);
  }

  else
  {
    v32 = *(v0 + 776);
    v33 = type metadata accessor for AccessoryMetadataRecord(0);
    v34 = *(v33 - 8);
    (*(v34 + 56))(v32, 1, 1, v33);
    v35 = *(v0 + 752);
    sub_1000D2A70(*(v0 + 776), v35, &qword_1016AF888, &unk_1013CAD70);
    v36 = (*(v34 + 48))(v35, 1, v33);
    v37 = *(v0 + 752);
    if (v36 == 1)
    {
      sub_10000B3A8(*(v0 + 752), &qword_1016AF888, &unk_1013CAD70);
      v38 = 0;
    }

    else
    {
      v38 = sub_10109CEC0();
      sub_100988488(v37, type metadata accessor for AccessoryMetadataRecord);
    }

    *(v0 + 2808) = v38;
    v39 = *(v0 + 1776);
    v40 = *(v0 + 1560);
    v41 = *(v0 + 720);
    v42 = swift_task_alloc();
    *(v42 + 16) = v40;
    v43 = sub_1002EB5E4(sub_100986528, v42, v41);

    if (v39)
    {
      v44 = *(v0 + 1776);
      sub_10001F280(*(v0 + 696), v0 + 224);
      v45 = swift_allocObject();
      *(v0 + 2816) = v45;
      *(v45 + 16) = v44;
      sub_10000A748((v0 + 224), v45 + 24);
      *(v45 + 64) = v43;
      swift_retain_n();
      v46 = swift_task_alloc();
      *(v0 + 2824) = v46;
      v47 = sub_1000BC4D4(&qword_1016AF8F8, &qword_1013CAD80);
      *v46 = v0;
      v46[1] = sub_10097A8FC;

      return unsafeBlocking<A>(context:_:)(v0 + 648, 0xD000000000000019, 0x80000001013CA9B0, sub_100986548, v45, v47);
    }

    else
    {
      sub_1009097B0(_swiftEmptyArrayStorage);
      v48 = *(v0 + 2608);
      v49 = *(v0 + 1504);
      v50 = *(v0 + 1144);
      v51 = *(v0 + 696);
      v52 = [objc_allocWithZone(SPInternalSimpleBeacon) init];
      isa = UUID._bridgeToObjectiveC()().super.isa;
      [v52 setIdentifier:isa];

      v54 = v51[3];
      v55 = v51[4];
      sub_1000035D0(v51, v54);
      v56 = (*(v55 + 184))(v54, v55);
      [v52 setType:v56];

      v57 = v51[3];
      v58 = v51[4];
      sub_1000035D0(v51, v57);
      (*(v58 + 200))(v57, v58);
      if (v48(v50, 1, v49) == 1)
      {
        v59 = 0;
      }

      else
      {
        v60 = *(v0 + 1832);
        v61 = *(v0 + 1504);
        v62 = *(v0 + 1144);
        v59 = UUID._bridgeToObjectiveC()().super.isa;
        v60(v62, v61);
      }

      v63 = *(v0 + 2600);
      v64 = *(v0 + 2408);
      v65 = *(v0 + 2288);
      v66 = *(v0 + 2280);
      v67 = *(v0 + 2272);
      v68 = *(v0 + 2856) != 5;
      [v52 setGroupIdentifier:v59];

      [v52 setPartIdentifier:v63];
      [v52 setConnectionAllowed:v68];
      [v52 setTxPower:v64];
      v69 = UUID._bridgeToObjectiveC()().super.isa;
      [v52 setProductUUID:v69];

      [v52 setVendorId:v66];
      [v52 setProductId:v65];
      if (v67)
      {
        v70 = String._bridgeToObjectiveC()();
      }

      else
      {
        v70 = 0;
      }

      v71 = *(v0 + 2256);
      [v52 setModelName:v70];

      if (v71)
      {
        v72 = String._bridgeToObjectiveC()();
      }

      else
      {
        v72 = 0;
      }

      v73 = *(v0 + 2592);
      [v52 setManufacturerName:v72];

      if (v73)
      {
        v74 = String._bridgeToObjectiveC()();
      }

      else
      {
        v74 = 0;
      }

      v75 = *(v0 + 2784);
      v76 = *(v0 + 2208);
      v77 = *(v0 + 2192);
      v78 = *(v0 + 2854);
      v79 = *(v0 + 2853);
      [v52 setSerialNumber:v74];

      [v52 setOwner:v77];
      [v52 setAccessoryProductInfo:v75];
      [v52 setIsZeus:v78];
      [v52 setIsAppleAudioAccessory:v79];
      if (v76)
      {
        v80 = String._bridgeToObjectiveC()();
      }

      else
      {
        v80 = 0;
      }

      [v52 setDiscoveryId:v80];

      if (qword_101694AD8 != -1)
      {
        swift_once();
      }

      v81 = *(v0 + 2776);
      v82 = *(v0 + 1784);
      v83 = *(v0 + 1560);
      v84 = *(v0 + 1528);
      v85 = *(v0 + 1504);
      v86 = type metadata accessor for Logger();
      sub_1000076D4(v86, qword_10177B740);
      v82(v84, v83, v85);

      v87 = Logger.logObject.getter();
      v88 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v87, v88))
      {
        v150 = *(v0 + 2776);
        v152 = *(v0 + 2768);
        v149 = *(v0 + 1832);
        v89 = *(v0 + 1528);
        v90 = *(v0 + 1504);
        v91 = swift_slowAlloc();
        v156[0] = swift_slowAlloc();
        *v91 = 136315394;
        sub_100985CA0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v92 = dispatch thunk of CustomStringConvertible.description.getter();
        v94 = v93;
        v149(v89, v90);
        v95 = sub_1000136BC(v92, v94, v156);

        *(v91 + 4) = v95;
        *(v91 + 12) = 2080;
        if (v150)
        {
          v96 = v152;
        }

        else
        {
          v96 = 0x656D616E206F4ELL;
        }

        if (v150)
        {
          v97 = v81;
        }

        else
        {
          v97 = 0xE700000000000000;
        }

        v98 = sub_1000136BC(v96, v97, v156);

        *(v91 + 14) = v98;
        _os_log_impl(&_mh_execute_header, v87, v88, "SimpleBeacon got beacon %s, name: %s", v91, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
        v99 = *(v0 + 1832);
        v100 = *(v0 + 1528);
        v101 = *(v0 + 1504);

        v99(v100, v101);
      }

      v102 = *(v0 + 2776);
      v103 = String._bridgeToObjectiveC()();

      [v52 setSystemVersion:v103];

      if (v102)
      {
        v104 = String._bridgeToObjectiveC()();
      }

      else
      {
        v104 = 0;
      }

      v105 = *(v0 + 2400);
      v106 = *(v0 + 2376);
      v107 = *(v0 + 2344);
      v108 = *(v0 + 2184);
      v151 = *(v0 + 1952);
      v109 = *(v0 + 1336);
      v110 = *(v0 + 1328);
      v111 = *(v0 + 1304);
      [v52 setName:v104];

      [v52 setBatteryLevel:v105];
      [v52 setBatteryPercentage:0];
      [v52 setConnectableDeviceCount:v107];
      [v52 setKeySyncRecord:v106];
      [v52 setLostModeInfo:v108];
      v153 = v108;

      sub_1000D2A70(v110, v111, &unk_101696900, &unk_10138B1E0);
      v112 = v151(v111, 1, v109);
      v113 = 0;
      if (v112 != 1)
      {
        v114 = *(v0 + 1344);
        v115 = *(v0 + 1336);
        v116 = *(v0 + 1304);
        v113 = Date._bridgeToObjectiveC()().super.isa;
        (*(v114 + 8))(v116, v115);
      }

      v117 = *(v0 + 1952);
      v118 = *(v0 + 1336);
      v119 = *(v0 + 1320);
      v120 = *(v0 + 1296);
      [v52 setLockedTimestamp:v113];

      sub_1000D2A70(v119, v120, &unk_101696900, &unk_10138B1E0);
      if (v117(v120, 1, v118) == 1)
      {
        v121 = 0;
      }

      else
      {
        v122 = *(v0 + 1344);
        v123 = *(v0 + 1336);
        v124 = *(v0 + 1296);
        v121 = Date._bridgeToObjectiveC()().super.isa;
        (*(v122 + 8))(v124, v123);
      }

      v125 = *(v0 + 2680);
      v126 = *(v0 + 2855);
      v127 = *(v0 + 2849);
      v128 = *(v0 + 1912);
      [v52 setWipedTimestamp:v121];

      [v52 setRole:v128];
      v148 = v128;

      sub_100008BB8(0, &unk_1016B1680, SPSafeLocation_ptr);
      sub_100009D18(qword_1016B1820, &unk_1016B1680, SPSafeLocation_ptr, &protocol conformance descriptor for NSObject);
      v129 = Set._bridgeToObjectiveC()().super.isa;

      [v52 setSafeLocations:v129];

      [v52 setConnected:v127];
      [v52 setCanBeLeashedByHost:v126];
      type metadata accessor for SPBeaconTaskName(0);
      sub_100008BB8(0, &unk_1016AF850, SPBeaconTaskInformation_ptr);
      sub_100985CA0(&qword_1016964D0, type metadata accessor for SPBeaconTaskName, &unk_10138A8F4);
      v130 = Dictionary._bridgeToObjectiveC()().super.isa;

      [v52 setTaskInformation:v130];

      if (v125)
      {
        sub_1000BC4D4(&qword_1016AF8E0, &qword_101393130);
        sub_1000041A4(&unk_1016AF8E8, &qword_1016AF8E0, &qword_101393130, &protocol conformance descriptor for Set<A>);
        v125 = Set._bridgeToObjectiveC()().super.isa;
      }

      v131 = *(v0 + 2808);
      v132 = *(v0 + 2858);
      v133 = *(v0 + 2728);
      v134 = *(v0 + 2720);
      v142 = *(v0 + 2192);
      v146 = *(v0 + 2784);
      v144 = *(v0 + 2376);
      v145 = *(v0 + 1832);
      v135 = *(v0 + 1592);
      v143 = *(v0 + 1544);
      v136 = *(v0 + 1504);
      v147 = *(v0 + 1560);
      v140 = *(v0 + 1464);
      v141 = *(v0 + 1400);
      v154 = *(v0 + 1328);
      v155 = *(v0 + 1320);
      v137 = *(v0 + 776);
      [v52 setMultipartStatus:v125];

      [v52 setOnline:v132];
      [v52 setDeviceColor:0];
      [v52 setDeviceClass:0];
      [v52 setDeviceModel:0];
      [v52 setRawDeviceModel:0];
      [v52 setDeviceDisplayName:0];
      [v52 setLowPowerMode:0];
      [v52 setThisDevice:v134];

      [v52 setIsMine:v133];
      [v52 setRawMetadata:v131];

      sub_10000B3A8(v137, &qword_1016AF888, &unk_1013CAD70);
      v145(v143, v136);
      v145(v135, v136);
      sub_10000B3A8(v140, &unk_1016AF8C0, &unk_1013A07A0);
      sub_10000B3A8(v155, &unk_101696900, &unk_10138B1E0);
      sub_10000B3A8(v154, &unk_101696900, &unk_10138B1E0);
      sub_10000B3A8(v141, &unk_1016AA420, &unk_1013BCFE0);
      v145(v147, v136);

      v138 = *(v0 + 8);

      return v138(v52);
    }
  }
}

uint64_t sub_1009790A0()
{
  v1 = *(v0 + 1808);
  v2 = *(v0 + 1640);
  v3 = *(v0 + 1504);
  v4 = *(v0 + 704);
  v5 = (*(v0 + 2832) + 24) & ~*(v0 + 2832);
  (*(v0 + 1784))(v2, *(v0 + 1560), v3);
  v6 = swift_allocObject();
  *(v0 + 2792) = v6;
  *(v6 + 16) = v4;
  v1(v6 + v5, v2, v3);

  v7 = swift_task_alloc();
  *(v0 + 2800) = v7;
  *v7 = v0;
  v7[1] = sub_1009791FC;
  v8 = *(v0 + 776);
  v9 = *(v0 + 744);

  return unsafeBlocking<A>(context:_:)(v8, 0xD000000000000010, 0x800000010134A8C0, sub_1009865A8, v6, v9);
}

uint64_t sub_1009791FC()
{
  v1 = *v0;

  v2 = *(v1 + 1768);

  return _swift_task_switch(sub_100979330, v2, 0);
}

uint64_t sub_100979330()
{
  v140 = v0;
  if (qword_101694AD8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 776);
  v2 = *(v0 + 768);
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177B740);
  sub_1000D2A70(v1, v2, &qword_1016AF888, &unk_1013CAD70);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 768);
  if (v6)
  {
    v8 = *(v0 + 760);
    v9 = swift_slowAlloc();
    v139[0] = swift_slowAlloc();
    *v9 = 136315394;
    *(v9 + 4) = sub_1000136BC(0xD000000000000035, 0x80000001013665C0, v139);
    *(v9 + 12) = 2080;
    sub_1000D2A70(v7, v8, &qword_1016AF888, &unk_1013CAD70);
    v10 = type metadata accessor for AccessoryMetadataRecord(0);
    v11 = (*(*(v10 - 8) + 48))(v8, 1, v10);
    v12 = *(v0 + 760);
    if (v11 == 1)
    {
      sub_10000B3A8(*(v0 + 760), &qword_1016AF888, &unk_1013CAD70);
      v13 = 0xE900000000000064;
      v14 = 0x726F636572206F4ELL;
    }

    else
    {
      v14 = sub_10109C94C();
      v13 = v15;
      sub_100988488(v12, type metadata accessor for AccessoryMetadataRecord);
    }

    sub_10000B3A8(*(v0 + 768), &qword_1016AF888, &unk_1013CAD70);
    v16 = sub_1000136BC(v14, v13, v139);

    *(v9 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s AccessoryMetadataRecord: %s", v9, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10000B3A8(v7, &qword_1016AF888, &unk_1013CAD70);
  }

  v17 = *(v0 + 752);
  sub_1000D2A70(*(v0 + 776), v17, &qword_1016AF888, &unk_1013CAD70);
  v18 = type metadata accessor for AccessoryMetadataRecord(0);
  v19 = (*(*(v18 - 8) + 48))(v17, 1, v18);
  v20 = *(v0 + 752);
  if (v19 == 1)
  {
    sub_10000B3A8(*(v0 + 752), &qword_1016AF888, &unk_1013CAD70);
    v21 = 0;
  }

  else
  {
    v21 = sub_10109CEC0();
    sub_100988488(v20, type metadata accessor for AccessoryMetadataRecord);
  }

  *(v0 + 2808) = v21;
  v22 = *(v0 + 1776);
  v23 = *(v0 + 1560);
  v24 = *(v0 + 720);
  v25 = swift_task_alloc();
  *(v25 + 16) = v23;
  v26 = sub_1002EB5E4(sub_100986528, v25, v24);

  if (v22)
  {
    v27 = *(v0 + 1776);
    sub_10001F280(*(v0 + 696), v0 + 224);
    v28 = swift_allocObject();
    *(v0 + 2816) = v28;
    *(v28 + 16) = v27;
    sub_10000A748((v0 + 224), v28 + 24);
    *(v28 + 64) = v26;
    swift_retain_n();
    v29 = swift_task_alloc();
    *(v0 + 2824) = v29;
    v30 = sub_1000BC4D4(&qword_1016AF8F8, &qword_1013CAD80);
    *v29 = v0;
    v29[1] = sub_10097A8FC;

    return unsafeBlocking<A>(context:_:)(v0 + 648, 0xD000000000000019, 0x80000001013CA9B0, sub_100986548, v28, v30);
  }

  else
  {
    v136 = v3;
    sub_1009097B0(_swiftEmptyArrayStorage);
    v31 = *(v0 + 2608);
    v32 = *(v0 + 1504);
    v33 = *(v0 + 1144);
    v34 = *(v0 + 696);
    v35 = [objc_allocWithZone(SPInternalSimpleBeacon) init];
    isa = UUID._bridgeToObjectiveC()().super.isa;
    [v35 setIdentifier:isa];

    v37 = v34[3];
    v38 = v34[4];
    sub_1000035D0(v34, v37);
    v39 = (*(v38 + 184))(v37, v38);
    [v35 setType:v39];

    v40 = v34[3];
    v41 = v34[4];
    sub_1000035D0(v34, v40);
    (*(v41 + 200))(v40, v41);
    if (v31(v33, 1, v32) == 1)
    {
      v42 = 0;
    }

    else
    {
      v43 = *(v0 + 1832);
      v44 = *(v0 + 1504);
      v45 = *(v0 + 1144);
      v42 = UUID._bridgeToObjectiveC()().super.isa;
      v43(v45, v44);
    }

    v46 = *(v0 + 2600);
    v47 = *(v0 + 2408);
    v48 = *(v0 + 2288);
    v49 = *(v0 + 2280);
    v50 = *(v0 + 2272);
    v51 = *(v0 + 2856) != 5;
    [v35 setGroupIdentifier:v42];

    [v35 setPartIdentifier:v46];
    [v35 setConnectionAllowed:v51];
    [v35 setTxPower:v47];
    v52 = UUID._bridgeToObjectiveC()().super.isa;
    [v35 setProductUUID:v52];

    [v35 setVendorId:v49];
    [v35 setProductId:v48];
    if (v50)
    {
      v53 = String._bridgeToObjectiveC()();
    }

    else
    {
      v53 = 0;
    }

    v54 = *(v0 + 2256);
    [v35 setModelName:v53];

    if (v54)
    {
      v55 = String._bridgeToObjectiveC()();
    }

    else
    {
      v55 = 0;
    }

    v56 = *(v0 + 2592);
    [v35 setManufacturerName:v55];

    if (v56)
    {
      v57 = String._bridgeToObjectiveC()();
    }

    else
    {
      v57 = 0;
    }

    v58 = *(v0 + 2784);
    v59 = *(v0 + 2208);
    v60 = *(v0 + 2192);
    v61 = *(v0 + 2854);
    v62 = *(v0 + 2853);
    [v35 setSerialNumber:v57];

    [v35 setOwner:v60];
    [v35 setAccessoryProductInfo:v58];
    [v35 setIsZeus:v61];
    [v35 setIsAppleAudioAccessory:v62];
    if (v59)
    {
      v63 = String._bridgeToObjectiveC()();
    }

    else
    {
      v63 = 0;
    }

    [v35 setDiscoveryId:v63];

    if (qword_101694AD8 != -1)
    {
      swift_once();
    }

    v64 = *(v0 + 2776);
    v65 = *(v0 + 1784);
    v66 = *(v0 + 1560);
    v67 = *(v0 + 1528);
    v68 = *(v0 + 1504);
    sub_1000076D4(v136, qword_10177B740);
    v65(v67, v66, v68);

    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v69, v70))
    {
      v132 = *(v0 + 2776);
      v134 = *(v0 + 2768);
      v131 = *(v0 + 1832);
      v71 = *(v0 + 1528);
      v72 = *(v0 + 1504);
      v73 = swift_slowAlloc();
      v139[0] = swift_slowAlloc();
      *v73 = 136315394;
      sub_100985CA0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v74 = dispatch thunk of CustomStringConvertible.description.getter();
      v76 = v75;
      v131(v71, v72);
      v77 = sub_1000136BC(v74, v76, v139);

      *(v73 + 4) = v77;
      *(v73 + 12) = 2080;
      if (v132)
      {
        v78 = v134;
      }

      else
      {
        v78 = 0x656D616E206F4ELL;
      }

      if (v132)
      {
        v79 = v64;
      }

      else
      {
        v79 = 0xE700000000000000;
      }

      v80 = sub_1000136BC(v78, v79, v139);

      *(v73 + 14) = v80;
      _os_log_impl(&_mh_execute_header, v69, v70, "SimpleBeacon got beacon %s, name: %s", v73, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      v81 = *(v0 + 1832);
      v82 = *(v0 + 1528);
      v83 = *(v0 + 1504);

      v81(v82, v83);
    }

    v84 = *(v0 + 2776);
    v85 = String._bridgeToObjectiveC()();

    [v35 setSystemVersion:v85];

    if (v84)
    {
      v86 = String._bridgeToObjectiveC()();
    }

    else
    {
      v86 = 0;
    }

    v87 = *(v0 + 2400);
    v88 = *(v0 + 2376);
    v89 = *(v0 + 2344);
    v90 = *(v0 + 2184);
    v133 = *(v0 + 1952);
    v91 = *(v0 + 1336);
    v92 = *(v0 + 1328);
    v93 = *(v0 + 1304);
    [v35 setName:v86];

    [v35 setBatteryLevel:v87];
    [v35 setBatteryPercentage:0];
    [v35 setConnectableDeviceCount:v89];
    [v35 setKeySyncRecord:v88];
    [v35 setLostModeInfo:v90];
    v135 = v90;

    sub_1000D2A70(v92, v93, &unk_101696900, &unk_10138B1E0);
    v94 = v133(v93, 1, v91);
    v95 = 0;
    if (v94 != 1)
    {
      v96 = *(v0 + 1344);
      v97 = *(v0 + 1336);
      v98 = *(v0 + 1304);
      v95 = Date._bridgeToObjectiveC()().super.isa;
      (*(v96 + 8))(v98, v97);
    }

    v99 = *(v0 + 1952);
    v100 = *(v0 + 1336);
    v101 = *(v0 + 1320);
    v102 = *(v0 + 1296);
    [v35 setLockedTimestamp:v95];

    sub_1000D2A70(v101, v102, &unk_101696900, &unk_10138B1E0);
    if (v99(v102, 1, v100) == 1)
    {
      v103 = 0;
    }

    else
    {
      v104 = *(v0 + 1344);
      v105 = *(v0 + 1336);
      v106 = *(v0 + 1296);
      v103 = Date._bridgeToObjectiveC()().super.isa;
      (*(v104 + 8))(v106, v105);
    }

    v107 = *(v0 + 2680);
    v108 = *(v0 + 2855);
    v109 = *(v0 + 2849);
    v110 = *(v0 + 1912);
    [v35 setWipedTimestamp:v103];

    [v35 setRole:v110];
    v130 = v110;

    sub_100008BB8(0, &unk_1016B1680, SPSafeLocation_ptr);
    sub_100009D18(qword_1016B1820, &unk_1016B1680, SPSafeLocation_ptr, &protocol conformance descriptor for NSObject);
    v111 = Set._bridgeToObjectiveC()().super.isa;

    [v35 setSafeLocations:v111];

    [v35 setConnected:v109];
    [v35 setCanBeLeashedByHost:v108];
    type metadata accessor for SPBeaconTaskName(0);
    sub_100008BB8(0, &unk_1016AF850, SPBeaconTaskInformation_ptr);
    sub_100985CA0(&qword_1016964D0, type metadata accessor for SPBeaconTaskName, &unk_10138A8F4);
    v112 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v35 setTaskInformation:v112];

    if (v107)
    {
      sub_1000BC4D4(&qword_1016AF8E0, &qword_101393130);
      sub_1000041A4(&unk_1016AF8E8, &qword_1016AF8E0, &qword_101393130, &protocol conformance descriptor for Set<A>);
      v107 = Set._bridgeToObjectiveC()().super.isa;
    }

    v113 = *(v0 + 2808);
    v114 = *(v0 + 2858);
    v115 = *(v0 + 2728);
    v116 = *(v0 + 2720);
    v124 = *(v0 + 2192);
    v128 = *(v0 + 2784);
    v126 = *(v0 + 2376);
    v127 = *(v0 + 1832);
    v117 = *(v0 + 1592);
    v125 = *(v0 + 1544);
    v118 = *(v0 + 1504);
    v129 = *(v0 + 1560);
    v122 = *(v0 + 1464);
    v123 = *(v0 + 1400);
    v137 = *(v0 + 1328);
    v138 = *(v0 + 1320);
    v119 = *(v0 + 776);
    [v35 setMultipartStatus:v107];

    [v35 setOnline:v114];
    [v35 setDeviceColor:0];
    [v35 setDeviceClass:0];
    [v35 setDeviceModel:0];
    [v35 setRawDeviceModel:0];
    [v35 setDeviceDisplayName:0];
    [v35 setLowPowerMode:0];
    [v35 setThisDevice:v116];

    [v35 setIsMine:v115];
    [v35 setRawMetadata:v113];

    sub_10000B3A8(v119, &qword_1016AF888, &unk_1013CAD70);
    v127(v125, v118);
    v127(v117, v118);
    sub_10000B3A8(v122, &unk_1016AF8C0, &unk_1013A07A0);
    sub_10000B3A8(v138, &unk_101696900, &unk_10138B1E0);
    sub_10000B3A8(v137, &unk_101696900, &unk_10138B1E0);
    sub_10000B3A8(v123, &unk_1016AA420, &unk_1013BCFE0);
    v127(v129, v118);

    v120 = *(v0 + 8);

    return v120(v35);
  }
}

uint64_t sub_10097A8FC()
{
  v1 = *v0;

  v2 = *(v1 + 1768);

  return _swift_task_switch(sub_10097AA30, v2, 0);
}

uint64_t sub_10097AA30()
{
  v110 = v0;

  v1 = *(v0 + 2608);
  v2 = *(v0 + 1504);
  v3 = *(v0 + 1144);
  v4 = *(v0 + 696);
  v5 = [objc_allocWithZone(SPInternalSimpleBeacon) init];
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [v5 setIdentifier:isa];

  v7 = v4[3];
  v8 = v4[4];
  sub_1000035D0(v4, v7);
  v9 = (*(v8 + 184))(v7, v8);
  [v5 setType:v9];

  v10 = v4[3];
  v11 = v4[4];
  sub_1000035D0(v4, v10);
  (*(v11 + 200))(v10, v11);
  if (v1(v3, 1, v2) == 1)
  {
    v12 = 0;
  }

  else
  {
    v13 = *(v0 + 1832);
    v14 = *(v0 + 1504);
    v15 = *(v0 + 1144);
    v12 = UUID._bridgeToObjectiveC()().super.isa;
    v13(v15, v14);
  }

  v16 = *(v0 + 2600);
  v17 = *(v0 + 2408);
  v18 = *(v0 + 2288);
  v19 = *(v0 + 2280);
  v20 = *(v0 + 2272);
  v21 = *(v0 + 2856) != 5;
  [v5 setGroupIdentifier:v12];

  [v5 setPartIdentifier:v16];
  [v5 setConnectionAllowed:v21];
  [v5 setTxPower:v17];
  v22 = UUID._bridgeToObjectiveC()().super.isa;
  [v5 setProductUUID:v22];

  [v5 setVendorId:v19];
  [v5 setProductId:v18];
  if (v20)
  {
    v23 = String._bridgeToObjectiveC()();
  }

  else
  {
    v23 = 0;
  }

  v24 = *(v0 + 2256);
  [v5 setModelName:v23];

  if (v24)
  {
    v25 = String._bridgeToObjectiveC()();
  }

  else
  {
    v25 = 0;
  }

  v26 = *(v0 + 2592);
  [v5 setManufacturerName:v25];

  if (v26)
  {
    v27 = String._bridgeToObjectiveC()();
  }

  else
  {
    v27 = 0;
  }

  v28 = *(v0 + 2784);
  v29 = *(v0 + 2208);
  v30 = *(v0 + 2192);
  v31 = *(v0 + 2854);
  v32 = *(v0 + 2853);
  [v5 setSerialNumber:v27];

  [v5 setOwner:v30];
  [v5 setAccessoryProductInfo:v28];
  [v5 setIsZeus:v31];
  [v5 setIsAppleAudioAccessory:v32];
  if (v29)
  {
    v33 = String._bridgeToObjectiveC()();
  }

  else
  {
    v33 = 0;
  }

  [v5 setDiscoveryId:v33];

  if (qword_101694AD8 != -1)
  {
    swift_once();
  }

  v34 = *(v0 + 2776);
  v35 = *(v0 + 1784);
  v36 = *(v0 + 1560);
  v37 = *(v0 + 1528);
  v38 = *(v0 + 1504);
  v39 = type metadata accessor for Logger();
  sub_1000076D4(v39, qword_10177B740);
  v35(v37, v36, v38);

  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v40, v41))
  {
    v103 = *(v0 + 2776);
    v105 = *(v0 + 2768);
    v102 = *(v0 + 1832);
    v42 = *(v0 + 1528);
    v43 = *(v0 + 1504);
    v44 = swift_slowAlloc();
    v109[0] = swift_slowAlloc();
    *v44 = 136315394;
    sub_100985CA0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v45 = dispatch thunk of CustomStringConvertible.description.getter();
    v47 = v46;
    v102(v42, v43);
    v48 = sub_1000136BC(v45, v47, v109);

    *(v44 + 4) = v48;
    *(v44 + 12) = 2080;
    if (v103)
    {
      v49 = v105;
    }

    else
    {
      v49 = 0x656D616E206F4ELL;
    }

    if (v103)
    {
      v50 = v34;
    }

    else
    {
      v50 = 0xE700000000000000;
    }

    v51 = sub_1000136BC(v49, v50, v109);

    *(v44 + 14) = v51;
    _os_log_impl(&_mh_execute_header, v40, v41, "SimpleBeacon got beacon %s, name: %s", v44, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v52 = *(v0 + 1832);
    v53 = *(v0 + 1528);
    v54 = *(v0 + 1504);

    v52(v53, v54);
  }

  v55 = *(v0 + 2776);
  v56 = String._bridgeToObjectiveC()();

  [v5 setSystemVersion:v56];

  if (v55)
  {
    v57 = String._bridgeToObjectiveC()();
  }

  else
  {
    v57 = 0;
  }

  v58 = *(v0 + 2400);
  v59 = *(v0 + 2376);
  v60 = *(v0 + 2344);
  v61 = *(v0 + 2184);
  v104 = *(v0 + 1952);
  v62 = *(v0 + 1336);
  v63 = *(v0 + 1328);
  v64 = *(v0 + 1304);
  [v5 setName:v57];

  [v5 setBatteryLevel:v58];
  [v5 setBatteryPercentage:0];
  [v5 setConnectableDeviceCount:v60];
  [v5 setKeySyncRecord:v59];
  [v5 setLostModeInfo:v61];
  v106 = v61;

  sub_1000D2A70(v63, v64, &unk_101696900, &unk_10138B1E0);
  v65 = v104(v64, 1, v62);
  v66 = 0;
  if (v65 != 1)
  {
    v67 = *(v0 + 1344);
    v68 = *(v0 + 1336);
    v69 = *(v0 + 1304);
    v66 = Date._bridgeToObjectiveC()().super.isa;
    (*(v67 + 8))(v69, v68);
  }

  v70 = *(v0 + 1952);
  v71 = *(v0 + 1336);
  v72 = *(v0 + 1320);
  v73 = *(v0 + 1296);
  [v5 setLockedTimestamp:v66];

  sub_1000D2A70(v72, v73, &unk_101696900, &unk_10138B1E0);
  if (v70(v73, 1, v71) == 1)
  {
    v74 = 0;
  }

  else
  {
    v75 = *(v0 + 1344);
    v76 = *(v0 + 1336);
    v77 = *(v0 + 1296);
    v74 = Date._bridgeToObjectiveC()().super.isa;
    (*(v75 + 8))(v77, v76);
  }

  v78 = *(v0 + 2680);
  v79 = *(v0 + 2855);
  v80 = *(v0 + 2849);
  v81 = *(v0 + 1912);
  [v5 setWipedTimestamp:v74];

  [v5 setRole:v81];
  v101 = v81;

  sub_100008BB8(0, &unk_1016B1680, SPSafeLocation_ptr);
  sub_100009D18(qword_1016B1820, &unk_1016B1680, SPSafeLocation_ptr, &protocol conformance descriptor for NSObject);
  v82 = Set._bridgeToObjectiveC()().super.isa;

  [v5 setSafeLocations:v82];

  [v5 setConnected:v80];
  [v5 setCanBeLeashedByHost:v79];
  type metadata accessor for SPBeaconTaskName(0);
  sub_100008BB8(0, &unk_1016AF850, SPBeaconTaskInformation_ptr);
  sub_100985CA0(&qword_1016964D0, type metadata accessor for SPBeaconTaskName, &unk_10138A8F4);
  v83 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v5 setTaskInformation:v83];

  if (v78)
  {
    sub_1000BC4D4(&qword_1016AF8E0, &qword_101393130);
    sub_1000041A4(&unk_1016AF8E8, &qword_1016AF8E0, &qword_101393130, &protocol conformance descriptor for Set<A>);
    v78 = Set._bridgeToObjectiveC()().super.isa;
  }

  v84 = *(v0 + 2808);
  v85 = *(v0 + 2858);
  v86 = *(v0 + 2728);
  v87 = *(v0 + 2720);
  v95 = *(v0 + 2192);
  v99 = *(v0 + 2784);
  v97 = *(v0 + 2376);
  v98 = *(v0 + 1832);
  v88 = *(v0 + 1592);
  v96 = *(v0 + 1544);
  v89 = *(v0 + 1504);
  v100 = *(v0 + 1560);
  v94 = *(v0 + 1400);
  v107 = *(v0 + 1328);
  v108 = *(v0 + 1320);
  v90 = *(v0 + 776);
  [v5 setMultipartStatus:{v78, *(v0 + 1464)}];

  [v5 setOnline:v85];
  [v5 setDeviceColor:0];
  [v5 setDeviceClass:0];
  [v5 setDeviceModel:0];
  [v5 setRawDeviceModel:0];
  [v5 setDeviceDisplayName:0];
  [v5 setLowPowerMode:0];
  [v5 setThisDevice:v87];

  [v5 setIsMine:v86];
  [v5 setRawMetadata:v84];

  sub_10000B3A8(v90, &qword_1016AF888, &unk_1013CAD70);
  v98(v96, v89);
  v98(v88, v89);
  sub_10000B3A8(v93, &unk_1016AF8C0, &unk_1013A07A0);
  sub_10000B3A8(v108, &unk_101696900, &unk_10138B1E0);
  sub_10000B3A8(v107, &unk_101696900, &unk_10138B1E0);
  sub_10000B3A8(v94, &unk_1016AA420, &unk_1013BCFE0);
  v98(v100, v89);

  v91 = *(v0 + 8);

  return v91(v5);
}

uint64_t sub_10097BB58()
{
  v1 = *(v0 + 2088);
  v2 = [v1 type];
  v3 = [v1 destination];
  if (!v3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v3 = String._bridgeToObjectiveC()();
  }

  v4 = *(v0 + 2088);
  v5 = *(v0 + 1104);
  v6 = *(v0 + 1040);
  v7 = *(v0 + 1016);
  v8 = [objc_allocWithZone(SPHandle) initWithType:v2 destination:v3 formattedName:0];

  v9 = *(v5 + *(v6 + 44));
  v10 = *(v5 + *(v6 + 48));
  v11 = v8;
  LOBYTE(v9) = sub_100E0EA64(v9, v10);

  sub_10000B3A8(v7, &unk_101698C20, &qword_101390748);
  sub_100988488(v5, type metadata accessor for SharedBeaconRecord);
  v12 = *(v0 + 2064);
  *(v0 + 2200) = 0u;
  *(v0 + 2192) = v11;
  *(v0 + 2854) = 0;
  *(v0 + 2853) = v9 & 1;
  *(v0 + 2184) = v12;
  *(v0 + 2176) = 0;
  v13 = *(v0 + 704);
  v14 = *(v0 + 696);
  v15 = v14[3];
  v16 = v14[4];
  sub_1000035D0(v14, v15);
  (*(*(*(v16 + 8) + 8) + 32))(v15);

  return _swift_task_switch(sub_10096E98C, v13, 0);
}

uint64_t sub_10097BD18()
{

  v1 = *(v0 + 2088);
  v2 = [v1 type];
  v3 = [v1 destination];
  if (!v3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v3 = String._bridgeToObjectiveC()();
  }

  v4 = *(v0 + 2088);
  v5 = *(v0 + 1104);
  v6 = *(v0 + 1040);
  v7 = *(v0 + 1016);
  v8 = [objc_allocWithZone(SPHandle) initWithType:v2 destination:v3 formattedName:0];

  v9 = *(v5 + *(v6 + 44));
  v10 = *(v5 + *(v6 + 48));
  v11 = v8;
  LOBYTE(v9) = sub_100E0EA64(v9, v10);

  sub_10000B3A8(v7, &unk_101698C20, &qword_101390748);
  sub_100988488(v5, type metadata accessor for SharedBeaconRecord);
  v12 = *(v0 + 2064);
  *(v0 + 2200) = 0u;
  *(v0 + 2192) = v11;
  *(v0 + 2854) = 0;
  *(v0 + 2853) = v9 & 1;
  *(v0 + 2184) = v12;
  *(v0 + 2176) = 0;
  v13 = *(v0 + 704);
  v14 = *(v0 + 696);
  v15 = v14[3];
  v16 = v14[4];
  sub_1000035D0(v14, v15);
  (*(*(*(v16 + 8) + 8) + 32))(v15);

  return _swift_task_switch(sub_10096E98C, v13, 0);
}

uint64_t sub_10097BEE0()
{
  v1 = *(v0 + 1072);
  v2 = (v1 + *(*(v0 + 1040) + 40));
  v4 = *v2;
  v3 = v2[1];

  sub_100988488(v1, type metadata accessor for SharedBeaconRecord);
  *(v0 + 2600) = 255;
  *(v0 + 2584) = 0u;
  *(v0 + 2576) = v3;
  *(v0 + 2568) = v4;
  *(v0 + 2560) = 0;
  v5 = *(v0 + 1048);
  v6 = *(v0 + 696);
  sub_100007BAC((v0 + 384));
  sub_10001F280(v6, v0 + 464);
  v7 = swift_dynamicCast();
  v8 = *(v5 + 56);
  if ((v7 & 1) == 0)
  {
    v14 = *(v0 + 1024);
    v8(v14, 1, 1, *(v0 + 1040));
    v15 = &unk_101698C30;
    v16 = &unk_101392630;
    v17 = v14;
LABEL_6:
    sub_10000B3A8(v17, v15, v16);
    goto LABEL_7;
  }

  v9 = *(v0 + 1064);
  v10 = *(v0 + 1040);
  v11 = *(v0 + 1024);
  v8(v11, 0, 1, v10);
  sub_100986170(v11, v9, type metadata accessor for SharedBeaconRecord);
  v12 = *(v0 + 1064);
  if (*(v9 + *(v10 + 44)) != -1 || (v13 = *(v0 + 1040), *(v12 + v13[12]) != -1) || ((v39 = *(v12 + v13[16]), v39 != 4) ? (v40 = v39 == 1) : (v40 = 1), !v40))
  {
    sub_100988488(v12, type metadata accessor for SharedBeaconRecord);
LABEL_7:
    v18 = *(v0 + 696);
    v19 = v18[3];
    v20 = v18[4];
    sub_1000035D0(v18, v19);
    (*(*(*(v20 + 8) + 8) + 32))(v19);
    goto LABEL_8;
  }

  v41 = *(v0 + 864);
  v42 = *(v0 + 1064);
  sub_1000D2A70(v12 + v13[20], v41, &unk_1016AF890, &qword_1013926D0);
  sub_100988488(v42, type metadata accessor for SharedBeaconRecord);
  v43 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
  v44 = (*(*(v43 - 8) + 48))(v41, 1, v43);
  v45 = *(v0 + 1512);
  v46 = *(v0 + 1504);
  v47 = *(v0 + 1184);
  v48 = *(v0 + 864);
  if (v44 == 1)
  {
    sub_10000B3A8(v48, &unk_1016AF890, &qword_1013926D0);
    (*(v45 + 56))(v47, 1, 1, v46);
LABEL_22:
    v17 = *(v0 + 1184);
    v15 = &qword_1016980D0;
    v16 = &unk_10138F3B0;
    goto LABEL_6;
  }

  v49 = *(v43 + 20);
  v50 = *(v0 + 864);
  sub_1000D2A70(v48 + v49, *(v0 + 1184), &qword_1016980D0, &unk_10138F3B0);
  sub_100988488(v50, type metadata accessor for SharedBeaconRecord.PropertyListContent);
  if ((*(v45 + 48))(v47, 1, v46) == 1)
  {
    goto LABEL_22;
  }

  v51 = *(v0 + 1808);
  v52 = *(v0 + 1560);
  v53 = *(v0 + 1552);
  v54 = *(v0 + 1504);
  v51(v53, *(v0 + 1184), v54);
  v51(v52, v53, v54);
LABEL_8:
  v21 = *(v0 + 1544);
  v22 = *(v0 + 1512);
  v23 = *(v0 + 1504);
  v24 = *(v0 + 1176);
  v25 = *(v0 + 696);
  v26 = v25[3];
  v27 = v25[4];
  sub_1000035D0(v25, v26);
  sub_10083138C(v26, v27, v21);
  v28 = v25[3];
  v29 = v25[4];
  sub_1000035D0(v25, v28);
  (*(v29 + 200))(v28, v29);
  v30 = *(v22 + 48);
  *(v0 + 2608) = v30;
  *(v0 + 2616) = (v22 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v30(v24, 1, v23) == 1)
  {
    sub_10000B3A8(*(v0 + 1176), &qword_1016980D0, &unk_10138F3B0);
    *(v0 + 2664) = 0;
    *(v0 + 2680) = 0;
    *(v0 + 2672) = 0;
    v31 = *(v0 + 1512);
    v32 = *(v0 + 1504);
    v33 = *(v0 + 1168);
    v34 = *(v0 + 704);
    (*(v0 + 1784))(v33, *(v0 + 1560), v32);
    v35 = *(v31 + 56);
    *(v0 + 2688) = v35;
    *(v0 + 2696) = (v31 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v35(v33, 0, 1, v32);
    v36 = sub_1009757DC;
    v37 = v34;
  }

  else
  {
    v38 = *(v0 + 704);
    (*(v0 + 1808))(*(v0 + 1536), *(v0 + 1176), *(v0 + 1504));
    v36 = sub_100975010;
    v37 = v38;
  }

  return _swift_task_switch(v36, v37, 0);
}

uint64_t sub_10097C3EC(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + *(type metadata accessor for SafeLocation(0) + 52));
  v9 = a2[3];
  v10 = a2[4];
  sub_1000035D0(a2, v9);
  (*(*(*(v10 + 8) + 8) + 32))(v9);
  LOBYTE(a2) = sub_1005C8A30(v7, v8);
  (*(v5 + 8))(v7, v4);
  return a2 & 1;
}

void sub_10097C58C(uint64_t a1, uint64_t a2)
{
  v31 = a1;
  v32 = a2;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v30 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000BC4D4(&qword_1016AF880, &unk_10138CE20);
  v6 = v5 - 8;
  __chkstk_darwin(v5);
  v8 = &v29 - v7;
  v9 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v10 = __chkstk_darwin(v9 - 8);
  v33 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v29 - v13;
  __chkstk_darwin(v12);
  v16 = &v29 - v15;
  WorkItemQueue.id.getter();
  (*(v3 + 56))(v16, 0, 1, v2);
  type metadata accessor for WorkItemQueue();
  static WorkItemQueue.currentWorkItemQueueIdentifier.getter();
  v17 = *(v6 + 56);
  sub_1000D2A70(v16, v8, &qword_1016980D0, &unk_10138F3B0);
  sub_1000D2A70(v14, &v8[v17], &qword_1016980D0, &unk_10138F3B0);
  v18 = *(v3 + 48);
  if (v18(v8, 1, v2) == 1)
  {
    sub_10000B3A8(v14, &qword_1016980D0, &unk_10138F3B0);
    sub_10000B3A8(v16, &qword_1016980D0, &unk_10138F3B0);
    if (v18(&v8[v17], 1, v2) == 1)
    {
      sub_10000B3A8(v8, &qword_1016980D0, &unk_10138F3B0);
      return;
    }
  }

  else
  {
    sub_1000D2A70(v8, v33, &qword_1016980D0, &unk_10138F3B0);
    if (v18(&v8[v17], 1, v2) != 1)
    {
      v25 = v30;
      (*(v3 + 32))(v30, &v8[v17], v2);
      sub_100985CA0(&qword_1016984A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v26 = v33;
      v27 = dispatch thunk of static Equatable.== infix(_:_:)();
      v28 = *(v3 + 8);
      v28(v25, v2);
      sub_10000B3A8(v14, &qword_1016980D0, &unk_10138F3B0);
      sub_10000B3A8(v16, &qword_1016980D0, &unk_10138F3B0);
      v28(v26, v2);
      sub_10000B3A8(v8, &qword_1016980D0, &unk_10138F3B0);
      if (v27)
      {
        return;
      }

      goto LABEL_7;
    }

    sub_10000B3A8(v14, &qword_1016980D0, &unk_10138F3B0);
    sub_10000B3A8(v16, &qword_1016980D0, &unk_10138F3B0);
    (*(v3 + 8))(v33, v2);
  }

  sub_10000B3A8(v8, &qword_1016AF880, &unk_10138CE20);
LABEL_7:
  if (qword_101694AD8 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_1000076D4(v19, qword_10177B740);
  v20 = v32;

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v34 = v24;
    *v23 = 136315138;
    *(v23 + 4) = sub_1000136BC(v31, v20, &v34);
    _os_log_impl(&_mh_execute_header, v21, v22, "%s is required to be called from a WorkItemQueue context!", v23, 0xCu);
    sub_100007BAC(v24);
  }
}

void sub_10097CAD8(uint64_t a1, uint64_t a2)
{
  v31 = a1;
  v32 = a2;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v30 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000BC4D4(&qword_1016AF880, &unk_10138CE20);
  v6 = v5 - 8;
  __chkstk_darwin(v5);
  v8 = &v29 - v7;
  v9 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v10 = __chkstk_darwin(v9 - 8);
  v33 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v29 - v13;
  __chkstk_darwin(v12);
  v16 = &v29 - v15;
  WorkItemQueue.id.getter();
  (*(v3 + 56))(v16, 0, 1, v2);
  type metadata accessor for WorkItemQueue();
  static WorkItemQueue.currentWorkItemQueueIdentifier.getter();
  v17 = *(v6 + 56);
  sub_1000D2A70(v16, v8, &qword_1016980D0, &unk_10138F3B0);
  sub_1000D2A70(v14, &v8[v17], &qword_1016980D0, &unk_10138F3B0);
  v18 = *(v3 + 48);
  if (v18(v8, 1, v2) == 1)
  {
    sub_10000B3A8(v14, &qword_1016980D0, &unk_10138F3B0);
    sub_10000B3A8(v16, &qword_1016980D0, &unk_10138F3B0);
    if (v18(&v8[v17], 1, v2) == 1)
    {
      sub_10000B3A8(v8, &qword_1016980D0, &unk_10138F3B0);
      return;
    }
  }

  else
  {
    sub_1000D2A70(v8, v33, &qword_1016980D0, &unk_10138F3B0);
    if (v18(&v8[v17], 1, v2) != 1)
    {
      v25 = v30;
      (*(v3 + 32))(v30, &v8[v17], v2);
      sub_100985CA0(&qword_1016984A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v26 = v33;
      v27 = dispatch thunk of static Equatable.== infix(_:_:)();
      v28 = *(v3 + 8);
      v28(v25, v2);
      sub_10000B3A8(v14, &qword_1016980D0, &unk_10138F3B0);
      sub_10000B3A8(v16, &qword_1016980D0, &unk_10138F3B0);
      v28(v26, v2);
      sub_10000B3A8(v8, &qword_1016980D0, &unk_10138F3B0);
      if (v27)
      {
        return;
      }

      goto LABEL_7;
    }

    sub_10000B3A8(v14, &qword_1016980D0, &unk_10138F3B0);
    sub_10000B3A8(v16, &qword_1016980D0, &unk_10138F3B0);
    (*(v3 + 8))(v33, v2);
  }

  sub_10000B3A8(v8, &qword_1016AF880, &unk_10138CE20);
LABEL_7:
  if (qword_101694AD8 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_1000076D4(v19, qword_10177B740);
  v20 = v32;

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v34 = v24;
    *v23 = 136315138;
    *(v23 + 4) = sub_1000136BC(v31, v20, &v34);
    _os_log_impl(&_mh_execute_header, v21, v22, "%s is required to be called from a fileCacheWorkItemQueue context!", v23, 0xCu);
    sub_100007BAC(v24);
  }
}

uint64_t sub_10097D024()
{
  v1[2] = v0;
  v2 = type metadata accessor for Date();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_10097D0F0, v0, 0);
}

uint64_t sub_10097D0F0()
{
  if (*(v0[2] + 224))
  {
    if (qword_101694AD8 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_1000076D4(v1, qword_10177B740);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Device List by serial number update pending, not creating a new task.", v4, 2u);
    }
  }

  else
  {
    if (qword_101694AD8 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000076D4(v5, qword_10177B740);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Scheduling next serial number fetch update.", v8, 2u);
    }

    v10 = v0[5];
    v9 = v0[6];
    v11 = v0[3];
    v12 = v0[4];

    static Date.trustedNow.getter(v10);
    Date.addingTimeInterval(_:)();
    v13 = *(v12 + 8);
    v13(v10, v11);
    sub_10097D338(v9);
    v13(v9, v11);
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_10097D338(uint64_t a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  (*(v4 + 16))(v6, a1, v3);
  v11 = sub_100985CA0(&unk_1016AF830, type metadata accessor for SimpleBeaconUpdateService, &unk_1013CACF0);
  v12 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v13 = (v5 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  *(v14 + 16) = v1;
  *(v14 + 24) = v11;
  (*(v4 + 32))(v14 + v12, v6, v3);
  *(v14 + v13) = v1;
  swift_retain_n();
  v15 = sub_100A838D4(0, 0, v9, &unk_1013CAD50, v14);
  if (*(v1 + 224))
  {

    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    Task.cancel()();
  }

  *(v1 + 224) = v15;
}

uint64_t sub_10097D5C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[17] = a4;
  v5[18] = a5;
  v7 = type metadata accessor for ContinuousClock();
  v5[19] = v7;
  v5[20] = *(v7 - 8);
  v5[21] = swift_task_alloc();

  return _swift_task_switch(sub_10097D688, a5, 0);
}

uint64_t sub_10097D688(uint64_t a1)
{
  Date.timeIntervalSinceNow.getter();
  v2 = static Duration.milliseconds(_:)();
  v4 = v3;
  static Clock<>.continuous.getter();
  v5 = swift_task_alloc();
  *(v1 + 176) = v5;
  *v5 = v1;
  v5[1] = sub_10097D77C;

  return sub_100D24214(v2, v4, 0, 0, 1);
}

uint64_t sub_10097D77C()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *(*v1 + 160);
  v5 = *(*v1 + 152);
  *(*v1 + 184) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 144);
  if (v0)
  {
    v7 = sub_10097D9E8;
  }

  else
  {
    v7 = sub_10097D904;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_10097D904(uint64_t a1)
{
  v2 = v1[23];
  static Task<>.checkCancellation()();
  if (v2)
  {

    v3 = v1[1];

    return v3();
  }

  else
  {
    v5 = swift_task_alloc();
    v1[24] = v5;
    *v5 = v1;
    v5[1] = sub_10097DA4C;

    return daemon.getter();
  }
}

uint64_t sub_10097D9E8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10097DA4C(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 200) = a1;

  v3 = swift_task_alloc();
  *(v2 + 208) = v3;
  v4 = type metadata accessor for Daemon();
  MyServiceDeviceStoreService = type metadata accessor for FindMyServiceDeviceStoreService(0);
  v6 = sub_100985CA0(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100985CA0(&unk_1016B1140, type metadata accessor for FindMyServiceDeviceStoreService, &unk_1013C3520);
  *v3 = v9;
  v3[1] = sub_10097DC28;

  return ActorServiceDaemon.getService<A>()(v4, MyServiceDeviceStoreService, v6, v7);
}

uint64_t sub_10097DC28(uint64_t a1)
{
  v3 = *v2;
  v3[27] = a1;
  v3[28] = v1;

  if (v1)
  {
    v4 = v3[18];
    v5 = sub_10097E5F4;
  }

  else
  {
    v6 = v3[18];

    v5 = sub_10097DD50;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

char *sub_10097DD50()
{
  v53 = v0;
  v1 = *(v0 + 144);
  v2 = OBJC_IVAR____TtC12searchpartyd25SimpleBeaconUpdateService_ephemeralBeaconSessions;
  swift_beginAccess();
  v47 = v2;
  v48 = v1;
  v3 = *(v1 + v2);
  v4 = -1;
  v5 = -1 << *(v3 + 32);
  if (-v5 < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & *(v3 + 64);
  v7 = (63 - v5) >> 6;
  result = swift_bridgeObjectRetain_n();
  v9 = 0;
  v10 = _swiftEmptyArrayStorage;
  v50 = v0;
  while (1)
  {
    *(v0 + 232) = v10;
    if (!v6)
    {
      break;
    }

LABEL_10:
    v12 = *(*(v3 + 56) + 72 * (__clz(__rbit64(v6)) | (v9 << 6)) + 48);
    v13 = *(v12 + 16);
    v14 = *(v10 + 2);
    v15 = v14 + v13;
    if (__OFADD__(v14, v13))
    {
      goto LABEL_51;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (!result || v15 > *(v10 + 3) >> 1)
    {
      if (v14 <= v15)
      {
        v16 = v14 + v13;
      }

      else
      {
        v16 = v14;
      }

      result = sub_100A5B2CC(result, v16, 1, v10);
      v10 = result;
    }

    v0 = v50;
    v6 &= v6 - 1;
    if (*(v12 + 16))
    {
      if ((*(v10 + 3) >> 1) - *(v10 + 2) < v13)
      {
        goto LABEL_55;
      }

      swift_arrayInitWithCopy();

      if (v13)
      {
        v17 = *(v10 + 2);
        v18 = __OFADD__(v17, v13);
        v19 = v17 + v13;
        if (v18)
        {
          goto LABEL_57;
        }

        *(v10 + 2) = v19;
      }
    }

    else
    {

      if (v13)
      {
        goto LABEL_52;
      }
    }
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      goto LABEL_50;
    }

    if (v11 >= v7)
    {
      break;
    }

    v6 = *(v3 + 64 + 8 * v11);
    ++v9;
    if (v6)
    {
      v9 = v11;
      goto LABEL_10;
    }
  }

  v20 = *(v48 + v47);
  v23 = *(v20 + 64);
  v22 = v20 + 64;
  v21 = v23;
  v24 = -1;
  v25 = -1 << *(*(v48 + v47) + 32);
  if (-v25 < 64)
  {
    v24 = ~(-1 << -v25);
  }

  v26 = v24 & v21;
  v27 = (63 - v25) >> 6;
  v49 = *(v48 + v47);
  result = swift_bridgeObjectRetain_n();
  v28 = 0;
  v29 = _swiftEmptyArrayStorage;
  while (1)
  {
    *(v0 + 240) = v29;
    if (!v26)
    {
      break;
    }

LABEL_31:
    v31 = *(*(v49 + 56) + 72 * (__clz(__rbit64(v26)) | (v28 << 6)) + 56);
    v32 = *(v31 + 16);
    v33 = *(v29 + 2);
    v34 = v33 + v32;
    if (__OFADD__(v33, v32))
    {
      goto LABEL_53;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (!result || v34 > *(v29 + 3) >> 1)
    {
      if (v33 <= v34)
      {
        v35 = v33 + v32;
      }

      else
      {
        v35 = v33;
      }

      result = sub_100A5B2CC(result, v35, 1, v29);
      v29 = result;
    }

    v0 = v50;
    v26 &= v26 - 1;
    if (*(v31 + 16))
    {
      if ((*(v29 + 3) >> 1) - *(v29 + 2) < v32)
      {
        goto LABEL_56;
      }

      swift_arrayInitWithCopy();

      if (v32)
      {
        v36 = *(v29 + 2);
        v18 = __OFADD__(v36, v32);
        v37 = v36 + v32;
        if (v18)
        {
          goto LABEL_58;
        }

        *(v29 + 2) = v37;
      }
    }

    else
    {

      if (v32)
      {
        goto LABEL_54;
      }
    }
  }

  while (1)
  {
    v30 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v30 >= v27)
    {

      sub_10112CA74(v38, v51);

      *(v0 + 80) = v52;
      v39 = v51[3];
      *(v0 + 48) = v51[2];
      *(v0 + 64) = v39;
      v40 = v51[1];
      *(v0 + 16) = v51[0];
      *(v0 + 32) = v40;
      if (!*(v0 + 48) || (v41 = *(v0 + 80), v42 = v41, sub_10000B3A8(v0 + 16, &qword_1016AF878, &qword_1013CAD68), !v41))
      {
        v42 = SPRepairDeviceContextTypeRepair;
      }

      v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v45 = v44;

      *(v0 + 248) = v45;
      v46 = swift_task_alloc();
      *(v0 + 256) = v46;
      *v46 = v0;
      v46[1] = sub_10097E1C0;

      return sub_1008C6A3C(v10, v29, v43, v45);
    }

    v26 = *(v22 + 8 * v30);
    ++v28;
    if (v26)
    {
      v28 = v30;
      goto LABEL_31;
    }
  }

LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
  return result;
}

uint64_t sub_10097E1C0(uint64_t a1)
{
  v4 = *v2;
  v4[33] = v1;

  v5 = v4[18];

  if (v1)
  {
    v6 = sub_10097E850;
  }

  else
  {
    v4[34] = a1;
    v6 = sub_10097E358;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10097E358()
{
  v1 = v0[34];
  v2 = v0[18];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  dispatch thunk of WorkItemQueue.enqueue(_:)();

  v4 = v0[18];
  *(v4 + 224) = 0;

  v5 = OBJC_IVAR____TtC12searchpartyd25SimpleBeaconUpdateService_ephemeralBeaconSessions;
  swift_beginAccess();
  if (*(*(v4 + v5) + 16))
  {
    v6 = swift_task_alloc();
    v0[35] = v6;
    *v6 = v0;
    v6[1] = sub_10097E4E0;

    return sub_10097D024();
  }

  else
  {

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_10097E4E0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10097E5F4()
{

  if (qword_101694AD8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177B740);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138543362;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to update serial number list: %{public}@.", v4, 0xCu);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v7 = v0[18];
  *(v7 + 224) = 0;

  v8 = OBJC_IVAR____TtC12searchpartyd25SimpleBeaconUpdateService_ephemeralBeaconSessions;
  swift_beginAccess();
  if (*(*(v7 + v8) + 16))
  {
    v9 = swift_task_alloc();
    v0[35] = v9;
    *v9 = v0;
    v9[1] = sub_10097E4E0;

    return sub_10097D024();
  }

  else
  {

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_10097E850()
{

  if (qword_101694AD8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177B740);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138543362;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to update serial number list: %{public}@.", v4, 0xCu);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v7 = v0[18];
  *(v7 + 224) = 0;

  v8 = OBJC_IVAR____TtC12searchpartyd25SimpleBeaconUpdateService_ephemeralBeaconSessions;
  swift_beginAccess();
  if (*(*(v7 + v8) + 16))
  {
    v9 = swift_task_alloc();
    v0[35] = v9;
    *v9 = v0;
    v9[1] = sub_10097E4E0;

    return sub_10097D024();
  }

  else
  {

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_10097EAAC(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10003633C;

  return sub_10097EBE4(a2);
}

uint64_t sub_10097EB48(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100036434;

  return sub_10097EBE4(a2);
}

uint64_t sub_10097EBE4(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = type metadata accessor for SimpleBeaconUpdateService.BeaconEntityChange(0);
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v2[11] = v4;
  v2[12] = *(v4 - 8);
  v2[13] = swift_task_alloc();
  MyServiceDevice = type metadata accessor for FindMyServiceDevice(0);
  v2[14] = MyServiceDevice;
  v2[15] = *(MyServiceDevice - 8);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();

  return _swift_task_switch(sub_10097ED68, v1, 0);
}

uint64_t sub_10097ED68()
{
  v1 = *(v0 + 48);
  sub_10097C58C(0xD000000000000028, 0x8000000101366590);
  v2 = *(v1 + 16);
  *(v0 + 144) = v2;
  if (v2)
  {
    v3 = *(v0 + 136);
    v4 = *(v0 + 120);
    v5 = *(v0 + 48);
    *(v0 + 192) = *(*(v0 + 112) + 28);
    *(v0 + 152) = OBJC_IVAR____TtC12searchpartyd25SimpleBeaconUpdateService_cachedUnifiedBeacons;
    v6 = *(v4 + 80);
    *(v0 + 196) = v6;
    *(v0 + 160) = *(v4 + 72);
    *(v0 + 168) = 0;
    sub_1009863FC(v5 + ((v6 + 32) & ~v6), v3, type metadata accessor for FindMyServiceDevice);
    v7 = swift_task_alloc();
    *(v0 + 176) = v7;
    *v7 = v0;
    v7[1] = sub_10097EF20;
    v8 = *(v0 + 136);

    return sub_10097F3FC(v8);
  }

  else
  {
    *(v0 + 40) = _swiftEmptyArrayStorage;
    AsyncStreamProvider.yield(value:transaction:)();

    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_10097EF20(uint64_t a1)
{
  v2 = *(*v1 + 56);
  *(*v1 + 184) = a1;

  return _swift_task_switch(sub_10097F038, v2, 0);
}

uint64_t sub_10097F038()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);
  v4 = *(v0 + 136);
  v6 = *(v0 + 96);
  v5 = *(v0 + 104);
  v7 = *(v0 + 88);
  v8 = *(v0 + 56);
  v9 = *(v0 + 168) + 1;
  v29 = *(v6 + 16);
  v29(v5, v4 + *(v0 + 192), v7);
  v10 = v1;
  sub_100988488(v4, type metadata accessor for FindMyServiceDevice);
  swift_beginAccess();
  v11 = v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v30 = *(v8 + v3);
  *(v8 + v3) = 0x8000000000000000;
  sub_1010004D4(v11, 0x2000, v5, isUniquelyReferenced_nonNull_native);
  (*(v6 + 8))(v5, v7);
  *(v8 + v3) = v30;
  swift_endAccess();

  if (v9 == v2)
  {
    v13 = *(v0 + 72);
    sub_101125468(0, *(v0 + 144), 0);
    v14 = 0;
    do
    {
      v15 = *(v0 + 128);
      v16 = *(v0 + 112);
      v17 = *(v0 + 88);
      v18 = *(v0 + 80);
      sub_1009863FC(*(v0 + 48) + ((*(v0 + 196) + 32) & ~*(v0 + 196)) + *(v0 + 160) * v14, v15, type metadata accessor for FindMyServiceDevice);
      v29(v18, v15 + *(v16 + 28), v17);
      sub_100988488(v15, type metadata accessor for FindMyServiceDevice);
      swift_storeEnumTagMultiPayload();
      v20 = _swiftEmptyArrayStorage[2];
      v19 = _swiftEmptyArrayStorage[3];
      if (v20 >= v19 >> 1)
      {
        sub_101125468((v19 > 1), v20 + 1, 1);
      }

      v21 = *(v0 + 144);
      v22 = *(v0 + 80);
      ++v14;
      _swiftEmptyArrayStorage[2] = v20 + 1;
      sub_100986170(v22, _swiftEmptyArrayStorage + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v20, type metadata accessor for SimpleBeaconUpdateService.BeaconEntityChange);
    }

    while (v14 != v21);
    *(v0 + 40) = _swiftEmptyArrayStorage;
    AsyncStreamProvider.yield(value:transaction:)();

    v28 = *(v0 + 8);

    return v28();
  }

  else
  {
    v23 = *(v0 + 160);
    v24 = *(v0 + 168) + 1;
    *(v0 + 168) = v24;
    sub_1009863FC(*(v0 + 48) + ((*(v0 + 196) + 32) & ~*(v0 + 196)) + v23 * v24, *(v0 + 136), type metadata accessor for FindMyServiceDevice);
    v25 = swift_task_alloc();
    *(v0 + 176) = v25;
    *v25 = v0;
    v25[1] = sub_10097EF20;
    v26 = *(v0 + 136);

    return sub_10097F3FC(v26);
  }
}

uint64_t sub_10097F3FC(uint64_t a1)
{
  v2[22] = a1;
  v2[23] = v1;
  MyServiceDevice = type metadata accessor for FindMyServiceDevice(0);
  v2[24] = MyServiceDevice;
  v4 = *(MyServiceDevice - 8);
  v2[25] = v4;
  v2[26] = *(v4 + 64);
  v2[27] = swift_task_alloc();
  sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v5 = type metadata accessor for Date();
  v2[32] = v5;
  v2[33] = *(v5 - 8);
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();

  return _swift_task_switch(sub_10097F5A0, v1, 0);
}

uint64_t sub_10097F5A0()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 176);
  v3 = [objc_allocWithZone(SPInternalSimpleBeacon) init];
  *(v0 + 304) = v3;
  v4 = String._bridgeToObjectiveC()();
  [v3 setName:v4];

  v5 = *(v2 + *(v1 + 84));
  *(v0 + 556) = v5;
  if (v5 != 1)
  {
    v9 = (*(v0 + 176) + *(*(v0 + 192) + 80));
    *(v0 + 328) = *v9;
    *(v0 + 336) = v9[1];

    v10 = swift_task_alloc();
    *(v0 + 344) = v10;
    *v10 = v0;
    v10[1] = sub_100980140;

    return daemon.getter();
  }

  v6 = [objc_opt_self() defaultStore];
  *(v0 + 312) = v6;
  if (!v6)
  {
    __break(1u);
    return daemon.getter();
  }

  v7 = v6;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 168;
  *(v0 + 24) = sub_10097F7E0;
  v8 = swift_continuation_init();
  *(v0 + 136) = sub_1000BC4D4(&qword_1016AF870, &qword_1013E3650);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_100C70FE4;
  *(v0 + 104) = &unk_10163F0F0;
  *(v0 + 112) = v8;
  [v7 aa_primaryAppleAccountWithCompletion:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_10097F7E0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 320) = v2;
  v3 = *(v1 + 184);
  if (v2)
  {
    v4 = sub_100983D54;
  }

  else
  {
    v4 = sub_10097F900;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10097F900()
{
  v1 = *(v0 + 168);

  if (v1 && (v2 = [v1 username]) != 0)
  {
    v3 = v2;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    if (qword_101694E80 != -1)
    {
      swift_once();
    }

    v4 = [qword_10177C088 destination];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    if (!v1)
    {
      goto LABEL_10;
    }
  }

  v5 = v1;
  v6 = [v5 aa_fullName];

  if (v6)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    goto LABEL_11;
  }

LABEL_10:
  v8 = 0;
LABEL_11:
  v9 = String._bridgeToObjectiveC()();

  if (v8)
  {
    v10 = String._bridgeToObjectiveC()();
  }

  else
  {
    v10 = 0;
  }

  v11 = *(v0 + 304);
  v12 = *(v0 + 192);
  v13 = *(v0 + 176);
  v14 = [objc_opt_self() handleWithString:v9 formattedName:v10];
  *(v0 + 408) = v14;

  [v11 setOwner:v14];
  [v11 setType:SPBeaconTypeFindMyService];
  *(v0 + 552) = *(v12 + 28);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [v11 setIdentifier:isa];

  if (*(v13 + *(v12 + 40) + 8))
  {
    v16 = String._bridgeToObjectiveC()();
  }

  else
  {
    v16 = 0;
  }

  v17 = *(v0 + 556);
  v18 = *(v0 + 304);
  v19 = *(v0 + 192);
  v20 = *(v0 + 176);
  [v18 setDeviceColor:v16];

  v21 = String._bridgeToObjectiveC()();
  [v18 setDeviceClass:v21];

  v22 = String._bridgeToObjectiveC()();
  [v18 setDeviceModel:v22];

  v23 = String._bridgeToObjectiveC()();
  [v18 setRawDeviceModel:v23];

  v24 = String._bridgeToObjectiveC()();
  [v18 setDeviceDisplayName:v24];

  v25 = [objc_allocWithZone(NSNumber) initWithBool:*(v20 + *(v19 + 76))];
  [v18 setThisDevice:v25];

  v26 = [objc_allocWithZone(NSNumber) initWithBool:v17];
  [v18 setIsMine:v26];

  v27 = qword_1013CB140[*(v20 + *(v19 + 120))];
  v28 = *(v0 + 304);
  v29 = *(v0 + 192);
  v30 = *(v0 + 176);
  [v28 setRepairState:v27];
  v31 = [objc_allocWithZone(NSNumber) initWithBool:*(v30 + *(v29 + 116))];
  [v28 setIsRepairCapable:v31];

  [v28 setBatteryLevel:0];
  v32 = v30 + *(v29 + 60);
  if ((*(v32 + 8) & 1) == 0)
  {
    v33 = *(v0 + 304);
    v34 = [objc_allocWithZone(NSNumber) initWithDouble:*v32];
    [v33 setBatteryPercentage:v34];
  }

  v35 = *(v0 + 192);
  v36 = *(v0 + 176);
  v37 = *(v36 + *(v35 + 100));
  *(v0 + 557) = v37;
  if (v37 == 1)
  {
    v38 = *(v0 + 256);
    v39 = *(v0 + 264);
    v40 = *(v0 + 248);
    sub_1000D2A70(v36 + *(v35 + 88), v40, &unk_101696900, &unk_10138B1E0);
    if ((*(v39 + 48))(v40, 1, v38) == 1)
    {
      sub_10000B3A8(*(v0 + 248), &unk_101696900, &unk_10138B1E0);
    }

    else
    {
      v42 = *(v0 + 296);
      v41 = *(v0 + 304);
      v43 = *(v0 + 256);
      v44 = *(v0 + 264);
      (*(v44 + 32))(v42, *(v0 + 248), v43);
      v45 = objc_allocWithZone(SPLostModeInfo);
      v46 = Date._bridgeToObjectiveC()().super.isa;
      v47 = [v45 initWithMessage:0 email:0 phoneNumber:0 timestamp:v46];

      [v41 setLostModeInfo:v47];
      (*(v44 + 8))(v42, v43);
    }
  }

  v48 = *(v0 + 256);
  v49 = *(v0 + 264);
  v50 = *(v0 + 240);
  sub_1000D2A70(*(v0 + 176) + *(*(v0 + 192) + 92), v50, &unk_101696900, &unk_10138B1E0);
  v51 = *(v49 + 48);
  *(v0 + 416) = v51;
  *(v0 + 424) = (v49 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v51(v50, 1, v48) == 1)
  {
    v52 = 0;
  }

  else
  {
    v53 = *(v0 + 256);
    v54 = *(v0 + 264);
    v55 = *(v0 + 240);
    v52 = Date._bridgeToObjectiveC()().super.isa;
    (*(v54 + 8))(v55, v53);
  }

  v56 = *(v0 + 256);
  v57 = *(v0 + 232);
  v58 = *(v0 + 192);
  v59 = *(v0 + 176);
  [*(v0 + 304) setLockedTimestamp:v52];

  sub_1000D2A70(v59 + *(v58 + 96), v57, &unk_101696900, &unk_10138B1E0);
  if (v51(v57, 1, v56) == 1)
  {
    v60 = 0;
  }

  else
  {
    v61 = *(v0 + 256);
    v62 = *(v0 + 264);
    v63 = *(v0 + 232);
    v60 = Date._bridgeToObjectiveC()().super.isa;
    (*(v62 + 8))(v63, v61);
  }

  v64 = *(v0 + 304);
  v65 = *(v0 + 192);
  v66 = *(v0 + 176);
  [v64 setWipedTimestamp:v60];

  [v64 setConnected:0];
  if (*(v66 + *(v65 + 36)) <= 1u && *(v66 + *(v65 + 36)))
  {
    v67 = 1;
  }

  else
  {
    v67 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v68 = *(v0 + 304);
  v69 = *(v0 + 192);
  v70 = *(v0 + 176);

  [v68 setOnline:v67 & 1];
  v71 = [objc_allocWithZone(NSNumber) initWithBool:*(v70 + *(v69 + 68))];
  [v68 setLowPowerMode:v71];

  if (*(v70 + *(v69 + 24) + 8))
  {
    v72 = String._bridgeToObjectiveC()();
  }

  else
  {
    v72 = 0;
  }

  [*(v0 + 304) setSerialNumber:v72];

  v73 = swift_task_alloc();
  *(v0 + 432) = v73;
  *v73 = v0;
  v73[1] = sub_100981524;

  return daemon.getter();
}

uint64_t sub_100980140(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 352) = a1;

  v3 = swift_task_alloc();
  *(v2 + 360) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for FamilyCircleService();
  v6 = sub_100985CA0(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100985CA0(&unk_1016AF840, type metadata accessor for FamilyCircleService, &unk_1013E4DC8);
  *v3 = v9;
  v3[1] = sub_10098031C;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_10098031C(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 368) = a1;

  v4 = *(v3 + 184);
  if (v1)
  {

    v5 = sub_1009844F4;
  }

  else
  {

    v5 = sub_100980480;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100980480()
{
  v1 = *(v0 + 328);
  v2 = *(v0 + 336);

  _s12searchpartyd20MessagingDestinationV6stringACSgSS_tcfC_0(v1, v2);
  *(v0 + 376) = v5;
  if (v5)
  {
    v6 = v3;
    v7 = v4;
    v8 = v5;
    v9 = swift_task_alloc();
    *(v0 + 384) = v9;
    *v9 = v0;
    v9[1] = sub_100980C58;

    return sub_100D4C7CC(v6, v7, v8);
  }

  else
  {

    v11 = String._bridgeToObjectiveC()();

    v12 = *(v0 + 304);
    v13 = *(v0 + 192);
    v14 = *(v0 + 176);
    v15 = [objc_opt_self() handleWithString:v11 formattedName:0];
    *(v0 + 408) = v15;

    [v12 setOwner:v15];
    [v12 setType:SPBeaconTypeFindMyService];
    *(v0 + 552) = *(v13 + 28);
    isa = UUID._bridgeToObjectiveC()().super.isa;
    [v12 setIdentifier:isa];

    if (*(v14 + *(v13 + 40) + 8))
    {
      v17 = String._bridgeToObjectiveC()();
    }

    else
    {
      v17 = 0;
    }

    v18 = *(v0 + 556);
    v19 = *(v0 + 304);
    v20 = *(v0 + 192);
    v21 = *(v0 + 176);
    [v19 setDeviceColor:v17];

    v22 = String._bridgeToObjectiveC()();
    [v19 setDeviceClass:v22];

    v23 = String._bridgeToObjectiveC()();
    [v19 setDeviceModel:v23];

    v24 = String._bridgeToObjectiveC()();
    [v19 setRawDeviceModel:v24];

    v25 = String._bridgeToObjectiveC()();
    [v19 setDeviceDisplayName:v25];

    v26 = [objc_allocWithZone(NSNumber) initWithBool:*(v21 + *(v20 + 76))];
    [v19 setThisDevice:v26];

    v27 = [objc_allocWithZone(NSNumber) initWithBool:v18];
    [v19 setIsMine:v27];

    v28 = qword_1013CB140[*(v21 + *(v20 + 120))];
    v29 = *(v0 + 304);
    v30 = *(v0 + 192);
    v31 = *(v0 + 176);
    [v29 setRepairState:v28];
    v32 = [objc_allocWithZone(NSNumber) initWithBool:*(v31 + *(v30 + 116))];
    [v29 setIsRepairCapable:v32];

    [v29 setBatteryLevel:0];
    v33 = v31 + *(v30 + 60);
    if ((*(v33 + 8) & 1) == 0)
    {
      v34 = *(v0 + 304);
      v35 = [objc_allocWithZone(NSNumber) initWithDouble:*v33];
      [v34 setBatteryPercentage:v35];
    }

    v36 = *(v0 + 192);
    v37 = *(v0 + 176);
    v38 = *(v37 + *(v36 + 100));
    *(v0 + 557) = v38;
    if (v38 == 1)
    {
      v39 = *(v0 + 256);
      v40 = *(v0 + 264);
      v41 = *(v0 + 248);
      sub_1000D2A70(v37 + *(v36 + 88), v41, &unk_101696900, &unk_10138B1E0);
      if ((*(v40 + 48))(v41, 1, v39) == 1)
      {
        sub_10000B3A8(*(v0 + 248), &unk_101696900, &unk_10138B1E0);
      }

      else
      {
        v43 = *(v0 + 296);
        v42 = *(v0 + 304);
        v44 = *(v0 + 256);
        v45 = *(v0 + 264);
        (*(v45 + 32))(v43, *(v0 + 248), v44);
        v46 = objc_allocWithZone(SPLostModeInfo);
        v47 = Date._bridgeToObjectiveC()().super.isa;
        v48 = [v46 initWithMessage:0 email:0 phoneNumber:0 timestamp:v47];

        [v42 setLostModeInfo:v48];
        (*(v45 + 8))(v43, v44);
      }
    }

    v49 = *(v0 + 256);
    v50 = *(v0 + 264);
    v51 = *(v0 + 240);
    sub_1000D2A70(*(v0 + 176) + *(*(v0 + 192) + 92), v51, &unk_101696900, &unk_10138B1E0);
    v52 = *(v50 + 48);
    *(v0 + 416) = v52;
    *(v0 + 424) = (v50 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    if (v52(v51, 1, v49) == 1)
    {
      v53 = 0;
    }

    else
    {
      v54 = *(v0 + 256);
      v55 = *(v0 + 264);
      v56 = *(v0 + 240);
      v53 = Date._bridgeToObjectiveC()().super.isa;
      (*(v55 + 8))(v56, v54);
    }

    v57 = *(v0 + 256);
    v58 = *(v0 + 232);
    v59 = *(v0 + 192);
    v60 = *(v0 + 176);
    [*(v0 + 304) setLockedTimestamp:v53];

    sub_1000D2A70(v60 + *(v59 + 96), v58, &unk_101696900, &unk_10138B1E0);
    if (v52(v58, 1, v57) == 1)
    {
      v61 = 0;
    }

    else
    {
      v62 = *(v0 + 256);
      v63 = *(v0 + 264);
      v64 = *(v0 + 232);
      v61 = Date._bridgeToObjectiveC()().super.isa;
      (*(v63 + 8))(v64, v62);
    }

    v65 = *(v0 + 304);
    v66 = *(v0 + 192);
    v67 = *(v0 + 176);
    [v65 setWipedTimestamp:v61];

    [v65 setConnected:0];
    if (*(v67 + *(v66 + 36)) <= 1u && *(v67 + *(v66 + 36)))
    {
      v68 = 1;
    }

    else
    {
      v68 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v69 = *(v0 + 304);
    v70 = *(v0 + 192);
    v71 = *(v0 + 176);

    [v69 setOnline:v68 & 1];
    v72 = [objc_allocWithZone(NSNumber) initWithBool:*(v71 + *(v70 + 68))];
    [v69 setLowPowerMode:v72];

    if (*(v71 + *(v70 + 24) + 8))
    {
      v73 = String._bridgeToObjectiveC()();
    }

    else
    {
      v73 = 0;
    }

    [*(v0 + 304) setSerialNumber:v73];

    v74 = swift_task_alloc();
    *(v0 + 432) = v74;
    *v74 = v0;
    v74[1] = sub_100981524;

    return daemon.getter();
  }
}

uint64_t sub_100980C58(uint64_t a1, uint64_t a2)
{
  v7 = *v3;
  v6 = *v3;

  v8 = *(v6 + 184);
  if (v2)
  {

    v9 = sub_100984C14;
  }

  else
  {

    *(v7 + 392) = a2;
    *(v7 + 400) = a1;
    v9 = sub_100980DCC;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_100980DCC()
{
  v1 = *(v0 + 392);

  v2 = String._bridgeToObjectiveC()();

  if (v1)
  {
    v3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v3 = 0;
  }

  v4 = *(v0 + 304);
  v5 = *(v0 + 192);
  v6 = *(v0 + 176);
  v7 = [objc_opt_self() handleWithString:v2 formattedName:v3];
  *(v0 + 408) = v7;

  [v4 setOwner:v7];
  [v4 setType:SPBeaconTypeFindMyService];
  *(v0 + 552) = *(v5 + 28);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [v4 setIdentifier:isa];

  if (*(v6 + *(v5 + 40) + 8))
  {
    v9 = String._bridgeToObjectiveC()();
  }

  else
  {
    v9 = 0;
  }

  v10 = *(v0 + 556);
  v11 = *(v0 + 304);
  v12 = *(v0 + 192);
  v13 = *(v0 + 176);
  [v11 setDeviceColor:v9];

  v14 = String._bridgeToObjectiveC()();
  [v11 setDeviceClass:v14];

  v15 = String._bridgeToObjectiveC()();
  [v11 setDeviceModel:v15];

  v16 = String._bridgeToObjectiveC()();
  [v11 setRawDeviceModel:v16];

  v17 = String._bridgeToObjectiveC()();
  [v11 setDeviceDisplayName:v17];

  v18 = [objc_allocWithZone(NSNumber) initWithBool:*(v13 + *(v12 + 76))];
  [v11 setThisDevice:v18];

  v19 = [objc_allocWithZone(NSNumber) initWithBool:v10];
  [v11 setIsMine:v19];

  v20 = qword_1013CB140[*(v13 + *(v12 + 120))];
  v21 = *(v0 + 304);
  v22 = *(v0 + 192);
  v23 = *(v0 + 176);
  [v21 setRepairState:v20];
  v24 = [objc_allocWithZone(NSNumber) initWithBool:*(v23 + *(v22 + 116))];
  [v21 setIsRepairCapable:v24];

  [v21 setBatteryLevel:0];
  v25 = v23 + *(v22 + 60);
  if ((*(v25 + 8) & 1) == 0)
  {
    v26 = *(v0 + 304);
    v27 = [objc_allocWithZone(NSNumber) initWithDouble:*v25];
    [v26 setBatteryPercentage:v27];
  }

  v28 = *(v0 + 192);
  v29 = *(v0 + 176);
  v30 = *(v29 + *(v28 + 100));
  *(v0 + 557) = v30;
  if (v30 == 1)
  {
    v31 = *(v0 + 256);
    v32 = *(v0 + 264);
    v33 = *(v0 + 248);
    sub_1000D2A70(v29 + *(v28 + 88), v33, &unk_101696900, &unk_10138B1E0);
    if ((*(v32 + 48))(v33, 1, v31) == 1)
    {
      sub_10000B3A8(*(v0 + 248), &unk_101696900, &unk_10138B1E0);
    }

    else
    {
      v35 = *(v0 + 296);
      v34 = *(v0 + 304);
      v36 = *(v0 + 256);
      v37 = *(v0 + 264);
      (*(v37 + 32))(v35, *(v0 + 248), v36);
      v38 = objc_allocWithZone(SPLostModeInfo);
      v39 = Date._bridgeToObjectiveC()().super.isa;
      v40 = [v38 initWithMessage:0 email:0 phoneNumber:0 timestamp:v39];

      [v34 setLostModeInfo:v40];
      (*(v37 + 8))(v35, v36);
    }
  }

  v41 = *(v0 + 256);
  v42 = *(v0 + 264);
  v43 = *(v0 + 240);
  sub_1000D2A70(*(v0 + 176) + *(*(v0 + 192) + 92), v43, &unk_101696900, &unk_10138B1E0);
  v44 = *(v42 + 48);
  *(v0 + 416) = v44;
  *(v0 + 424) = (v42 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v44(v43, 1, v41) == 1)
  {
    v45 = 0;
  }

  else
  {
    v46 = *(v0 + 256);
    v47 = *(v0 + 264);
    v48 = *(v0 + 240);
    v45 = Date._bridgeToObjectiveC()().super.isa;
    (*(v47 + 8))(v48, v46);
  }

  v49 = *(v0 + 256);
  v50 = *(v0 + 232);
  v51 = *(v0 + 192);
  v52 = *(v0 + 176);
  [*(v0 + 304) setLockedTimestamp:v45];

  sub_1000D2A70(v52 + *(v51 + 96), v50, &unk_101696900, &unk_10138B1E0);
  if (v44(v50, 1, v49) == 1)
  {
    v53 = 0;
  }

  else
  {
    v54 = *(v0 + 256);
    v55 = *(v0 + 264);
    v56 = *(v0 + 232);
    v53 = Date._bridgeToObjectiveC()().super.isa;
    (*(v55 + 8))(v56, v54);
  }

  v57 = *(v0 + 304);
  v58 = *(v0 + 192);
  v59 = *(v0 + 176);
  [v57 setWipedTimestamp:v53];

  [v57 setConnected:0];
  if (*(v59 + *(v58 + 36)) <= 1u && *(v59 + *(v58 + 36)))
  {
    v60 = 1;
  }

  else
  {
    v60 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v61 = *(v0 + 304);
  v62 = *(v0 + 192);
  v63 = *(v0 + 176);

  [v61 setOnline:v60 & 1];
  v64 = [objc_allocWithZone(NSNumber) initWithBool:*(v63 + *(v62 + 68))];
  [v61 setLowPowerMode:v64];

  if (*(v63 + *(v62 + 24) + 8))
  {
    v65 = String._bridgeToObjectiveC()();
  }

  else
  {
    v65 = 0;
  }

  [*(v0 + 304) setSerialNumber:v65];

  v66 = swift_task_alloc();
  *(v0 + 432) = v66;
  *v66 = v0;
  v66[1] = sub_100981524;

  return daemon.getter();
}

uint64_t sub_100981524(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[55] = a1;

  v3 = swift_task_alloc();
  v2[56] = v3;
  v4 = type metadata accessor for Daemon();
  v2[57] = v4;
  v5 = type metadata accessor for LegacyServiceContainer();
  v6 = sub_100985CA0(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100985CA0(&unk_101698D70, type metadata accessor for LegacyServiceContainer, &unk_1014015E0);
  *v3 = v9;
  v3[1] = sub_100981704;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100981704(uint64_t a1)
{
  v4 = *v2;
  v4[58] = a1;
  v4[59] = v1;

  if (v1)
  {

    v5 = v4[23];
    v6 = sub_1009819E4;
  }

  else
  {
    v6 = sub_100981848;
    v5 = a1;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100981848()
{
  v1 = *(v0 + 472);
  sub_10001B108();
  *(v0 + 480) = v2;
  if (v1)
  {

    sub_100985CA0(&qword_1016969E0, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
    v3 = dispatch thunk of Actor.unownedExecutor.getter();
    v5 = v4;
    v6 = sub_100981970;
  }

  else
  {
    sub_100985CA0(&qword_1016969E0, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
    v3 = dispatch thunk of Actor.unownedExecutor.getter();
    v5 = v7;
    v6 = sub_1009820D8;
  }

  return _swift_task_switch(v6, v3, v5);
}

uint64_t sub_100981970()
{

  v1 = *(v0 + 184);

  return _swift_task_switch(sub_1009819E4, v1, 0);
}

uint64_t sub_1009819E4()
{
  *(v0 + 144) = _swiftEmptyDictionarySingleton;
  *(v0 + 504) = 0;
  v1 = *(v0 + 288);
  v2 = *(v0 + 256);
  v3 = *(v0 + 264);
  v4 = *(v0 + 192);
  v5 = *(v0 + 176);
  v6 = SPBeaconTaskNameLocating;
  static Date.trustedNow.getter(v1);
  v7 = objc_allocWithZone(SPBeaconTaskInformation);
  isa = Date._bridgeToObjectiveC()().super.isa;
  v9 = [v7 initWithName:v6 lastUpdated:isa error:0 state:2];

  v10 = *(v3 + 8);
  *(v0 + 512) = v10;
  v10(v1, v2);
  sub_1001DFD34(v9, v6);
  if (*(v5 + *(v4 + 108)) == 1)
  {
    v11 = *(v0 + 216);
    v12 = *(v0 + 200);
    sub_1009863FC(*(v0 + 176), v11, type metadata accessor for FindMyServiceDevice);
    v13 = (*(v12 + 80) + 24) & ~*(v12 + 80);
    v14 = swift_allocObject();
    *(v0 + 520) = v14;
    *(v14 + 16) = 0;
    sub_100986170(v11, v14 + v13, type metadata accessor for FindMyServiceDevice);
    v15 = swift_task_alloc();
    *(v0 + 528) = v15;
    v16 = sub_1000BC4D4(&unk_1016AF860, &qword_1013CAD40);
    *v15 = v0;
    v15[1] = sub_100983014;
    v17 = sub_1009860E0;
    v18 = v0 + 160;
    v19 = v14;
LABEL_5:

    return unsafeBlocking<A>(context:_:)(v18, 0xD000000000000019, 0x80000001013CA9B0, v17, v19, v16);
  }

  v20 = *(v0 + 192);
  v21 = *(v0 + 176);
  if (*(v21 + *(v20 + 112)) == 1)
  {
    v22 = *(v0 + 504);
    v23 = *(v0 + 216);
    v24 = *(v0 + 200);
    sub_1009863FC(v21, v23, type metadata accessor for FindMyServiceDevice);
    v25 = (*(v24 + 80) + 24) & ~*(v24 + 80);
    v26 = swift_allocObject();
    *(v0 + 536) = v26;
    *(v26 + 16) = v22;
    sub_100986170(v23, v26 + v25, type metadata accessor for FindMyServiceDevice);

    v27 = swift_task_alloc();
    *(v0 + 544) = v27;
    v16 = sub_1000BC4D4(&unk_1016AF860, &qword_1013CAD40);
    *v27 = v0;
    v27[1] = sub_100983860;
    v17 = sub_1009860C8;
    v18 = v0 + 152;
    v19 = v26;
    goto LABEL_5;
  }

  v28 = SPBeaconTaskNameEnableLostMode;
  if (*(v0 + 557) == 1)
  {
    v29 = *(v0 + 416);
    v30 = *(v0 + 256);
    v31 = *(v0 + 224);
    sub_1000D2A70(v21 + *(v20 + 88), v31, &unk_101696900, &unk_10138B1E0);
    if (v29(v31, 1, v30) == 1)
    {
      v32 = *(v0 + 416);
      v33 = (v0 + 272);
      v34 = *(v0 + 272);
      v35 = *(v0 + 256);
      v36 = *(v0 + 224);
      v37 = v28;
      static Date.trustedNow.getter(v34);
      if (v32(v36, 1, v35) != 1)
      {
        sub_10000B3A8(*(v0 + 224), &unk_101696900, &unk_10138B1E0);
      }

      v38 = 0;
      v58 = 2;
      v39 = v28;
      goto LABEL_16;
    }

    v33 = (v0 + 272);
    (*(*(v0 + 264) + 32))(*(v0 + 272), *(v0 + 224), *(v0 + 256));
    v42 = v28;
    v38 = 0;
    v58 = 2;
  }

  else
  {
    v33 = (v0 + 288);
    v40 = *(v0 + 288);
    v41 = SPBeaconTaskNameEnableLostMode;
    static Date.trustedNow.getter(v40);
    v58 = 0;
    v38 = 2;
  }

  v39 = v28;
LABEL_16:
  v43 = *v33;
  v44 = *(v0 + 512);
  v60 = *(v0 + 408);
  v59 = *(v0 + 304);
  v57 = *(v0 + 288);
  v45 = *(v0 + 256);
  v46 = objc_allocWithZone(SPBeaconTaskInformation);
  v47 = Date._bridgeToObjectiveC()().super.isa;
  v48 = [v46 initWithName:v39 lastUpdated:v47 error:0 state:v38];

  v44(v43, v45);
  sub_1001DFD34(v48, v39);
  v49 = SPBeaconTaskNameDisableLostMode;
  static Date.trustedNow.getter(v57);
  v50 = objc_allocWithZone(SPBeaconTaskInformation);
  v51 = Date._bridgeToObjectiveC()().super.isa;
  v52 = [v50 initWithName:v49 lastUpdated:v51 error:0 state:v58];

  v44(v57, v45);
  sub_1001DFD34(v52, v49);
  type metadata accessor for SPBeaconTaskName(0);
  sub_100008BB8(0, &unk_1016AF850, SPBeaconTaskInformation_ptr);
  sub_100985CA0(&qword_1016964D0, type metadata accessor for SPBeaconTaskName, &unk_10138A8F4);
  v53 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v59 setTaskInformation:v53];

  v54 = *(v0 + 8);
  v55 = *(v0 + 304);

  return v54(v55);
}

uint64_t sub_1009820D8()
{
  v1 = *(v0 + 184);

  return _swift_task_switch(sub_100982150, v1, 0);
}

uint64_t sub_100982150()
{
  *(v0 + 144) = _swiftEmptyDictionarySingleton;
  v1 = *(v0 + 480);
  if (v1)
  {
    v2 = *(v1 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_locationFetchService);
    *(v0 + 488) = v2;

    return _swift_task_switch(sub_1009828AC, v2, 0);
  }

  *(v0 + 504) = 0;
  v3 = *(v0 + 288);
  v4 = *(v0 + 256);
  v5 = *(v0 + 264);
  v6 = *(v0 + 192);
  v7 = *(v0 + 176);
  v8 = SPBeaconTaskNameLocating;
  static Date.trustedNow.getter(v3);
  v9 = objc_allocWithZone(SPBeaconTaskInformation);
  isa = Date._bridgeToObjectiveC()().super.isa;
  v11 = [v9 initWithName:v8 lastUpdated:isa error:0 state:2];

  v12 = *(v5 + 8);
  *(v0 + 512) = v12;
  v12(v3, v4);
  sub_1001DFD34(v11, v8);
  if (*(v7 + *(v6 + 108)) == 1)
  {
    v13 = *(v0 + 216);
    v14 = *(v0 + 200);
    sub_1009863FC(*(v0 + 176), v13, type metadata accessor for FindMyServiceDevice);
    v15 = (*(v14 + 80) + 24) & ~*(v14 + 80);
    v16 = swift_allocObject();
    *(v0 + 520) = v16;
    *(v16 + 16) = 0;
    sub_100986170(v13, v16 + v15, type metadata accessor for FindMyServiceDevice);
    v17 = swift_task_alloc();
    *(v0 + 528) = v17;
    v18 = sub_1000BC4D4(&unk_1016AF860, &qword_1013CAD40);
    *v17 = v0;
    v17[1] = sub_100983014;
    v19 = sub_1009860E0;
    v20 = v0 + 160;
    v21 = v16;
LABEL_9:

    return unsafeBlocking<A>(context:_:)(v20, 0xD000000000000019, 0x80000001013CA9B0, v19, v21, v18);
  }

  v22 = *(v0 + 192);
  v23 = *(v0 + 176);
  if (*(v23 + *(v22 + 112)) == 1)
  {
    v24 = *(v0 + 504);
    v25 = *(v0 + 216);
    v26 = *(v0 + 200);
    sub_1009863FC(v23, v25, type metadata accessor for FindMyServiceDevice);
    v27 = (*(v26 + 80) + 24) & ~*(v26 + 80);
    v28 = swift_allocObject();
    *(v0 + 536) = v28;
    *(v28 + 16) = v24;
    sub_100986170(v25, v28 + v27, type metadata accessor for FindMyServiceDevice);

    v29 = swift_task_alloc();
    *(v0 + 544) = v29;
    v18 = sub_1000BC4D4(&unk_1016AF860, &qword_1013CAD40);
    *v29 = v0;
    v29[1] = sub_100983860;
    v19 = sub_1009860C8;
    v20 = v0 + 152;
    v21 = v28;
    goto LABEL_9;
  }

  v30 = SPBeaconTaskNameEnableLostMode;
  if (*(v0 + 557) == 1)
  {
    v31 = *(v0 + 416);
    v32 = *(v0 + 256);
    v33 = *(v0 + 224);
    sub_1000D2A70(v23 + *(v22 + 88), v33, &unk_101696900, &unk_10138B1E0);
    if (v31(v33, 1, v32) == 1)
    {
      v34 = *(v0 + 416);
      v35 = (v0 + 272);
      v36 = *(v0 + 272);
      v37 = *(v0 + 256);
      v38 = *(v0 + 224);
      v39 = v30;
      static Date.trustedNow.getter(v36);
      if (v34(v38, 1, v37) != 1)
      {
        sub_10000B3A8(*(v0 + 224), &unk_101696900, &unk_10138B1E0);
      }

      v40 = 0;
      v60 = 2;
      v41 = v30;
      goto LABEL_20;
    }

    v35 = (v0 + 272);
    (*(*(v0 + 264) + 32))(*(v0 + 272), *(v0 + 224), *(v0 + 256));
    v44 = v30;
    v40 = 0;
    v60 = 2;
  }

  else
  {
    v35 = (v0 + 288);
    v42 = *(v0 + 288);
    v43 = SPBeaconTaskNameEnableLostMode;
    static Date.trustedNow.getter(v42);
    v60 = 0;
    v40 = 2;
  }

  v41 = v30;
LABEL_20:
  v45 = *v35;
  v46 = *(v0 + 512);
  v62 = *(v0 + 408);
  v61 = *(v0 + 304);
  v59 = *(v0 + 288);
  v47 = *(v0 + 256);
  v48 = objc_allocWithZone(SPBeaconTaskInformation);
  v49 = Date._bridgeToObjectiveC()().super.isa;
  v50 = [v48 initWithName:v41 lastUpdated:v49 error:0 state:v40];

  v46(v45, v47);
  sub_1001DFD34(v50, v41);
  v51 = SPBeaconTaskNameDisableLostMode;
  static Date.trustedNow.getter(v59);
  v52 = objc_allocWithZone(SPBeaconTaskInformation);
  v53 = Date._bridgeToObjectiveC()().super.isa;
  v54 = [v52 initWithName:v51 lastUpdated:v53 error:0 state:v60];

  v46(v59, v47);
  sub_1001DFD34(v54, v51);
  type metadata accessor for SPBeaconTaskName(0);
  sub_100008BB8(0, &unk_1016AF850, SPBeaconTaskInformation_ptr);
  sub_100985CA0(&qword_1016964D0, type metadata accessor for SPBeaconTaskName, &unk_10138A8F4);
  v55 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v61 setTaskInformation:v55];

  v56 = *(v0 + 8);
  v57 = *(v0 + 304);

  return v56(v57);
}

uint64_t sub_1009828AC()
{
  v1 = v0[23];
  v0[62] = *(v0[61] + 216);

  return _swift_task_switch(sub_100982928, v1, 0);
}

uint64_t sub_100982928()
{
  v1 = sub_1005C8A30(*(v0 + 176) + *(v0 + 552), *(v0 + 496));

  if (v1)
  {
    v2 = 0;
  }

  else
  {
    v2 = 2;
  }

  v60 = *(v0 + 480);
  *(v0 + 504) = v60;
  v3 = *(v0 + 288);
  v4 = *(v0 + 256);
  v5 = *(v0 + 264);
  v6 = *(v0 + 192);
  v7 = *(v0 + 176);
  v8 = SPBeaconTaskNameLocating;
  static Date.trustedNow.getter(v3);
  v9 = objc_allocWithZone(SPBeaconTaskInformation);
  isa = Date._bridgeToObjectiveC()().super.isa;
  v11 = [v9 initWithName:v8 lastUpdated:isa error:0 state:v2];

  v12 = *(v5 + 8);
  *(v0 + 512) = v12;
  v12(v3, v4);
  sub_1001DFD34(v11, v8);
  if (*(v7 + *(v6 + 108)) == 1)
  {
    v13 = *(v0 + 216);
    v14 = *(v0 + 200);
    sub_1009863FC(*(v0 + 176), v13, type metadata accessor for FindMyServiceDevice);
    v15 = (*(v14 + 80) + 24) & ~*(v14 + 80);
    v16 = swift_allocObject();
    *(v0 + 520) = v16;
    *(v16 + 16) = v60;
    sub_100986170(v13, v16 + v15, type metadata accessor for FindMyServiceDevice);

    v17 = swift_task_alloc();
    *(v0 + 528) = v17;
    v18 = sub_1000BC4D4(&unk_1016AF860, &qword_1013CAD40);
    *v17 = v0;
    v17[1] = sub_100983014;
    v19 = sub_1009860E0;
    v20 = v0 + 160;
LABEL_8:

    return unsafeBlocking<A>(context:_:)(v20, 0xD000000000000019, 0x80000001013CA9B0, v19, v16, v18);
  }

  v21 = *(v0 + 192);
  v22 = *(v0 + 176);
  if (*(v22 + *(v21 + 112)) == 1)
  {
    v23 = *(v0 + 504);
    v24 = *(v0 + 216);
    v25 = *(v0 + 200);
    sub_1009863FC(v22, v24, type metadata accessor for FindMyServiceDevice);
    v26 = (*(v25 + 80) + 24) & ~*(v25 + 80);
    v16 = swift_allocObject();
    *(v0 + 536) = v16;
    *(v16 + 16) = v23;
    sub_100986170(v24, v16 + v26, type metadata accessor for FindMyServiceDevice);

    v27 = swift_task_alloc();
    *(v0 + 544) = v27;
    v18 = sub_1000BC4D4(&unk_1016AF860, &qword_1013CAD40);
    *v27 = v0;
    v27[1] = sub_100983860;
    v19 = sub_1009860C8;
    v20 = v0 + 152;
    goto LABEL_8;
  }

  v28 = SPBeaconTaskNameEnableLostMode;
  if (*(v0 + 557) == 1)
  {
    v29 = *(v0 + 416);
    v30 = *(v0 + 256);
    v31 = *(v0 + 224);
    sub_1000D2A70(v22 + *(v21 + 88), v31, &unk_101696900, &unk_10138B1E0);
    if (v29(v31, 1, v30) == 1)
    {
      v32 = *(v0 + 416);
      v33 = (v0 + 272);
      v34 = *(v0 + 272);
      v35 = *(v0 + 256);
      v36 = *(v0 + 224);
      v37 = v28;
      static Date.trustedNow.getter(v34);
      if (v32(v36, 1, v35) != 1)
      {
        sub_10000B3A8(*(v0 + 224), &unk_101696900, &unk_10138B1E0);
      }
    }

    else
    {
      v33 = (v0 + 272);
      (*(*(v0 + 264) + 32))(*(v0 + 272), *(v0 + 224), *(v0 + 256));
      v41 = v28;
    }

    v40 = 0;
    v57 = 2;
  }

  else
  {
    v33 = (v0 + 288);
    v38 = *(v0 + 288);
    v39 = SPBeaconTaskNameEnableLostMode;
    static Date.trustedNow.getter(v38);
    v57 = 0;
    v40 = 2;
  }

  v42 = *v33;
  v43 = *(v0 + 512);
  v59 = *(v0 + 408);
  v58 = *(v0 + 304);
  v44 = *(v0 + 288);
  v45 = *(v0 + 256);
  v46 = objc_allocWithZone(SPBeaconTaskInformation);
  v47 = Date._bridgeToObjectiveC()().super.isa;
  v48 = [v46 initWithName:v28 lastUpdated:v47 error:0 state:v40];

  v43(v42, v45);
  sub_1001DFD34(v48, v28);
  v49 = SPBeaconTaskNameDisableLostMode;
  static Date.trustedNow.getter(v44);
  v50 = objc_allocWithZone(SPBeaconTaskInformation);
  v51 = Date._bridgeToObjectiveC()().super.isa;
  v52 = [v50 initWithName:v49 lastUpdated:v51 error:0 state:v57];

  v43(v44, v45);
  sub_1001DFD34(v52, v49);
  type metadata accessor for SPBeaconTaskName(0);
  sub_100008BB8(0, &unk_1016AF850, SPBeaconTaskInformation_ptr);
  sub_100985CA0(&qword_1016964D0, type metadata accessor for SPBeaconTaskName, &unk_10138A8F4);
  v53 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v58 setTaskInformation:v53];

  v54 = *(v0 + 8);
  v55 = *(v0 + 304);

  return v54(v55);
}

uint64_t sub_100983014()
{
  v1 = *(*v0 + 184);

  return _swift_task_switch(sub_100983140, v1, 0);
}

uint64_t sub_100983140()
{
  v1 = *(v0 + 160);
  v2 = (v0 + 144);
  if (v1)
  {
    if ([*(v0 + 160) state] || (v3 = *(v0 + 512), v5 = *(v0 + 280), v4 = *(v0 + 288), v6 = *(v0 + 256), static Date.trustedNow.getter(v4), v7 = objc_msgSend(v1, "lastUpdated"), static Date._unconditionallyBridgeFromObjectiveC(_:)(), v7, Date.timeIntervalSince(_:)(), v9 = v8, v3(v5, v6), v3(v4, v6), v9 <= 120.0))
    {
      v17 = SPBeaconTaskNamePlaySound;
      v18 = *v2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_100FFF5A8(v1, v17, isUniquelyReferenced_nonNull_native);

      *v2 = v18;
    }

    else
    {
      v10 = *(v0 + 512);
      v11 = *(v0 + 288);
      v12 = *(v0 + 256);
      v13 = SPBeaconTaskNamePlaySound;
      static Date.trustedNow.getter(v11);
      v14 = objc_allocWithZone(SPBeaconTaskInformation);
      isa = Date._bridgeToObjectiveC()().super.isa;
      v16 = [v14 initWithName:v13 lastUpdated:isa error:0 state:2];

      v10(v11, v12);
      sub_1001DFD34(v16, v13);
    }
  }

  else
  {
    v20 = *(v0 + 512);
    v21 = *(v0 + 288);
    v22 = *(v0 + 256);
    v23 = SPBeaconTaskNamePlaySound;
    static Date.trustedNow.getter(v21);
    v24 = objc_allocWithZone(SPBeaconTaskInformation);
    v25 = Date._bridgeToObjectiveC()().super.isa;
    v26 = [v24 initWithName:v23 lastUpdated:v25 error:0 state:2];

    v20(v21, v22);
    sub_1001DFD34(v26, v23);
  }

  v27 = *(v0 + 192);
  v28 = *(v0 + 176);
  if (*(v28 + *(v27 + 112)) == 1)
  {
    v29 = *(v0 + 504);
    v30 = *(v0 + 216);
    v31 = *(v0 + 200);
    sub_1009863FC(v28, v30, type metadata accessor for FindMyServiceDevice);
    v32 = (*(v31 + 80) + 24) & ~*(v31 + 80);
    v33 = swift_allocObject();
    *(v0 + 536) = v33;
    *(v33 + 16) = v29;
    sub_100986170(v30, v33 + v32, type metadata accessor for FindMyServiceDevice);

    v34 = swift_task_alloc();
    *(v0 + 544) = v34;
    v35 = sub_1000BC4D4(&unk_1016AF860, &qword_1013CAD40);
    *v34 = v0;
    v34[1] = sub_100983860;

    return unsafeBlocking<A>(context:_:)(v0 + 152, 0xD000000000000019, 0x80000001013CA9B0, sub_1009860C8, v33, v35);
  }

  else
  {
    v36 = SPBeaconTaskNameEnableLostMode;
    if (*(v0 + 557) == 1)
    {
      v37 = *(v0 + 416);
      v38 = *(v0 + 256);
      v39 = *(v0 + 224);
      sub_1000D2A70(v28 + *(v27 + 88), v39, &unk_101696900, &unk_10138B1E0);
      v40 = v37(v39, 1, v38);
      v41 = *(v0 + 256);
      v42 = *(v0 + 224);
      if (v40 == 1)
      {
        v43 = *(v0 + 416);
        v44 = (v0 + 272);
        v45 = *(v0 + 272);
        v46 = v36;
        static Date.trustedNow.getter(v45);
        if (v43(v42, 1, v41) != 1)
        {
          sub_10000B3A8(*(v0 + 224), &unk_101696900, &unk_10138B1E0);
        }
      }

      else
      {
        v44 = (v0 + 272);
        (*(*(v0 + 264) + 32))(*(v0 + 272), *(v0 + 224), *(v0 + 256));
        v50 = v36;
      }

      v49 = 0;
      v66 = 2;
    }

    else
    {
      v44 = (v0 + 288);
      v47 = *(v0 + 288);
      v48 = SPBeaconTaskNameEnableLostMode;
      static Date.trustedNow.getter(v47);
      v66 = 0;
      v49 = 2;
    }

    v51 = *v44;
    v52 = *(v0 + 512);
    v68 = *(v0 + 408);
    v67 = *(v0 + 304);
    v53 = *(v0 + 288);
    v54 = *(v0 + 256);
    v55 = objc_allocWithZone(SPBeaconTaskInformation);
    v56 = Date._bridgeToObjectiveC()().super.isa;
    v57 = [v55 initWithName:v36 lastUpdated:v56 error:0 state:v49];

    v52(v51, v54);
    sub_1001DFD34(v57, v36);
    v58 = SPBeaconTaskNameDisableLostMode;
    static Date.trustedNow.getter(v53);
    v59 = objc_allocWithZone(SPBeaconTaskInformation);
    v60 = Date._bridgeToObjectiveC()().super.isa;
    v61 = [v59 initWithName:v58 lastUpdated:v60 error:0 state:v66];

    v52(v53, v54);
    sub_1001DFD34(v61, v58);
    type metadata accessor for SPBeaconTaskName(0);
    sub_100008BB8(0, &unk_1016AF850, SPBeaconTaskInformation_ptr);
    sub_100985CA0(&qword_1016964D0, type metadata accessor for SPBeaconTaskName, &unk_10138A8F4);
    v62 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v67 setTaskInformation:v62];

    v63 = *(v0 + 8);
    v64 = *(v0 + 304);

    return v63(v64);
  }
}

uint64_t sub_100983860()
{
  v1 = *(*v0 + 184);

  return _swift_task_switch(sub_10098398C, v1, 0);
}

uint64_t sub_10098398C()
{
  sub_1001DFD34(*(v0 + 152), SPBeaconTaskNameStopSound);
  v1 = SPBeaconTaskNameEnableLostMode;
  if (*(v0 + 557) == 1)
  {
    v2 = *(v0 + 416);
    v3 = *(v0 + 256);
    v4 = *(v0 + 224);
    sub_1000D2A70(*(v0 + 176) + *(*(v0 + 192) + 88), v4, &unk_101696900, &unk_10138B1E0);
    v5 = v2(v4, 1, v3);
    v6 = *(v0 + 256);
    v7 = *(v0 + 224);
    if (v5 == 1)
    {
      v8 = *(v0 + 416);
      v9 = (v0 + 272);
      v10 = *(v0 + 272);
      v11 = v1;
      static Date.trustedNow.getter(v10);
      if (v8(v7, 1, v6) != 1)
      {
        sub_10000B3A8(*(v0 + 224), &unk_101696900, &unk_10138B1E0);
      }
    }

    else
    {
      v9 = (v0 + 272);
      (*(*(v0 + 264) + 32))(*(v0 + 272), *(v0 + 224), *(v0 + 256));
      v15 = v1;
    }

    v14 = 0;
    v31 = 2;
  }

  else
  {
    v9 = (v0 + 288);
    v12 = *(v0 + 288);
    v13 = SPBeaconTaskNameEnableLostMode;
    static Date.trustedNow.getter(v12);
    v31 = 0;
    v14 = 2;
  }

  v16 = *v9;
  v17 = *(v0 + 512);
  v33 = *(v0 + 408);
  v32 = *(v0 + 304);
  v18 = *(v0 + 288);
  v19 = *(v0 + 256);
  v20 = objc_allocWithZone(SPBeaconTaskInformation);
  isa = Date._bridgeToObjectiveC()().super.isa;
  v22 = [v20 initWithName:v1 lastUpdated:isa error:0 state:v14];

  v17(v16, v19);
  sub_1001DFD34(v22, v1);
  v23 = SPBeaconTaskNameDisableLostMode;
  static Date.trustedNow.getter(v18);
  v24 = objc_allocWithZone(SPBeaconTaskInformation);
  v25 = Date._bridgeToObjectiveC()().super.isa;
  v26 = [v24 initWithName:v23 lastUpdated:v25 error:0 state:v31];

  v17(v18, v19);
  sub_1001DFD34(v26, v23);
  type metadata accessor for SPBeaconTaskName(0);
  sub_100008BB8(0, &unk_1016AF850, SPBeaconTaskInformation_ptr);
  sub_100985CA0(&qword_1016964D0, type metadata accessor for SPBeaconTaskName, &unk_10138A8F4);
  v27 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v32 setTaskInformation:v27];

  v28 = *(v0 + 8);
  v29 = *(v0 + 304);

  return v28(v29);
}

uint64_t sub_100983D54(uint64_t a1)
{
  v2 = *(v1 + 312);
  swift_willThrow();

  if (qword_101694E80 != -1)
  {
    swift_once();
  }

  v3 = [qword_10177C088 destination];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = String._bridgeToObjectiveC()();

  v5 = *(v1 + 304);
  v6 = *(v1 + 192);
  v7 = *(v1 + 176);
  v8 = [objc_opt_self() handleWithString:v4 formattedName:0];
  *(v1 + 408) = v8;

  [v5 setOwner:v8];
  [v5 setType:SPBeaconTypeFindMyService];
  *(v1 + 552) = *(v6 + 28);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [v5 setIdentifier:isa];

  if (*(v7 + *(v6 + 40) + 8))
  {
    v10 = String._bridgeToObjectiveC()();
  }

  else
  {
    v10 = 0;
  }

  v11 = *(v1 + 556);
  v12 = *(v1 + 304);
  v13 = *(v1 + 192);
  v14 = *(v1 + 176);
  [v12 setDeviceColor:v10];

  v15 = String._bridgeToObjectiveC()();
  [v12 setDeviceClass:v15];

  v16 = String._bridgeToObjectiveC()();
  [v12 setDeviceModel:v16];

  v17 = String._bridgeToObjectiveC()();
  [v12 setRawDeviceModel:v17];

  v18 = String._bridgeToObjectiveC()();
  [v12 setDeviceDisplayName:v18];

  v19 = [objc_allocWithZone(NSNumber) initWithBool:*(v14 + *(v13 + 76))];
  [v12 setThisDevice:v19];

  v20 = [objc_allocWithZone(NSNumber) initWithBool:v11];
  [v12 setIsMine:v20];

  v21 = qword_1013CB140[*(v14 + *(v13 + 120))];
  v22 = *(v1 + 304);
  v23 = *(v1 + 192);
  v24 = *(v1 + 176);
  [v22 setRepairState:v21];
  v25 = [objc_allocWithZone(NSNumber) initWithBool:*(v24 + *(v23 + 116))];
  [v22 setIsRepairCapable:v25];

  [v22 setBatteryLevel:0];
  v26 = v24 + *(v23 + 60);
  if ((*(v26 + 8) & 1) == 0)
  {
    v27 = *(v1 + 304);
    v28 = [objc_allocWithZone(NSNumber) initWithDouble:*v26];
    [v27 setBatteryPercentage:v28];
  }

  v29 = *(v1 + 192);
  v30 = *(v1 + 176);
  v31 = *(v30 + *(v29 + 100));
  *(v1 + 557) = v31;
  if (v31 == 1)
  {
    v32 = *(v1 + 256);
    v33 = *(v1 + 264);
    v34 = *(v1 + 248);
    sub_1000D2A70(v30 + *(v29 + 88), v34, &unk_101696900, &unk_10138B1E0);
    if ((*(v33 + 48))(v34, 1, v32) == 1)
    {
      sub_10000B3A8(*(v1 + 248), &unk_101696900, &unk_10138B1E0);
    }

    else
    {
      v36 = *(v1 + 296);
      v35 = *(v1 + 304);
      v37 = *(v1 + 256);
      v38 = *(v1 + 264);
      (*(v38 + 32))(v36, *(v1 + 248), v37);
      v39 = objc_allocWithZone(SPLostModeInfo);
      v40 = Date._bridgeToObjectiveC()().super.isa;
      v41 = [v39 initWithMessage:0 email:0 phoneNumber:0 timestamp:v40];

      [v35 setLostModeInfo:v41];
      (*(v38 + 8))(v36, v37);
    }
  }

  v42 = *(v1 + 256);
  v43 = *(v1 + 264);
  v44 = *(v1 + 240);
  sub_1000D2A70(*(v1 + 176) + *(*(v1 + 192) + 92), v44, &unk_101696900, &unk_10138B1E0);
  v45 = *(v43 + 48);
  *(v1 + 416) = v45;
  *(v1 + 424) = (v43 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v45(v44, 1, v42) == 1)
  {
    v46 = 0;
  }

  else
  {
    v47 = *(v1 + 256);
    v48 = *(v1 + 264);
    v49 = *(v1 + 240);
    v46 = Date._bridgeToObjectiveC()().super.isa;
    (*(v48 + 8))(v49, v47);
  }

  v50 = *(v1 + 256);
  v51 = *(v1 + 232);
  v52 = *(v1 + 192);
  v53 = *(v1 + 176);
  [*(v1 + 304) setLockedTimestamp:v46];

  sub_1000D2A70(v53 + *(v52 + 96), v51, &unk_101696900, &unk_10138B1E0);
  if (v45(v51, 1, v50) == 1)
  {
    v54 = 0;
  }

  else
  {
    v55 = *(v1 + 256);
    v56 = *(v1 + 264);
    v57 = *(v1 + 232);
    v54 = Date._bridgeToObjectiveC()().super.isa;
    (*(v56 + 8))(v57, v55);
  }

  v58 = *(v1 + 304);
  v59 = *(v1 + 192);
  v60 = *(v1 + 176);
  [v58 setWipedTimestamp:v54];

  [v58 setConnected:0];
  if (*(v60 + *(v59 + 36)) <= 1u && *(v60 + *(v59 + 36)))
  {
    v61 = 1;
  }

  else
  {
    v61 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v62 = *(v1 + 304);
  v63 = *(v1 + 192);
  v64 = *(v1 + 176);

  [v62 setOnline:v61 & 1];
  v65 = [objc_allocWithZone(NSNumber) initWithBool:*(v64 + *(v63 + 68))];
  [v62 setLowPowerMode:v65];

  if (*(v64 + *(v63 + 24) + 8))
  {
    v66 = String._bridgeToObjectiveC()();
  }

  else
  {
    v66 = 0;
  }

  [*(v1 + 304) setSerialNumber:v66];

  v67 = swift_task_alloc();
  *(v1 + 432) = v67;
  *v67 = v1;
  v67[1] = sub_100981524;

  return daemon.getter();
}

uint64_t sub_1009844F4()
{
  v1 = String._bridgeToObjectiveC()();

  v2 = *(v0 + 304);
  v3 = *(v0 + 192);
  v4 = *(v0 + 176);
  v5 = [objc_opt_self() handleWithString:v1 formattedName:0];
  *(v0 + 408) = v5;

  [v2 setOwner:v5];
  [v2 setType:SPBeaconTypeFindMyService];
  *(v0 + 552) = *(v3 + 28);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [v2 setIdentifier:isa];

  if (*(v4 + *(v3 + 40) + 8))
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  v8 = *(v0 + 556);
  v9 = *(v0 + 304);
  v10 = *(v0 + 192);
  v11 = *(v0 + 176);
  [v9 setDeviceColor:v7];

  v12 = String._bridgeToObjectiveC()();
  [v9 setDeviceClass:v12];

  v13 = String._bridgeToObjectiveC()();
  [v9 setDeviceModel:v13];

  v14 = String._bridgeToObjectiveC()();
  [v9 setRawDeviceModel:v14];

  v15 = String._bridgeToObjectiveC()();
  [v9 setDeviceDisplayName:v15];

  v16 = [objc_allocWithZone(NSNumber) initWithBool:*(v11 + *(v10 + 76))];
  [v9 setThisDevice:v16];

  v17 = [objc_allocWithZone(NSNumber) initWithBool:v8];
  [v9 setIsMine:v17];

  v18 = qword_1013CB140[*(v11 + *(v10 + 120))];
  v19 = *(v0 + 304);
  v20 = *(v0 + 192);
  v21 = *(v0 + 176);
  [v19 setRepairState:v18];
  v22 = [objc_allocWithZone(NSNumber) initWithBool:*(v21 + *(v20 + 116))];
  [v19 setIsRepairCapable:v22];

  [v19 setBatteryLevel:0];
  v23 = v21 + *(v20 + 60);
  if ((*(v23 + 8) & 1) == 0)
  {
    v24 = *(v0 + 304);
    v25 = [objc_allocWithZone(NSNumber) initWithDouble:*v23];
    [v24 setBatteryPercentage:v25];
  }

  v26 = *(v0 + 192);
  v27 = *(v0 + 176);
  v28 = *(v27 + *(v26 + 100));
  *(v0 + 557) = v28;
  if (v28 == 1)
  {
    v29 = *(v0 + 256);
    v30 = *(v0 + 264);
    v31 = *(v0 + 248);
    sub_1000D2A70(v27 + *(v26 + 88), v31, &unk_101696900, &unk_10138B1E0);
    if ((*(v30 + 48))(v31, 1, v29) == 1)
    {
      sub_10000B3A8(*(v0 + 248), &unk_101696900, &unk_10138B1E0);
    }

    else
    {
      v33 = *(v0 + 296);
      v32 = *(v0 + 304);
      v34 = *(v0 + 256);
      v35 = *(v0 + 264);
      (*(v35 + 32))(v33, *(v0 + 248), v34);
      v36 = objc_allocWithZone(SPLostModeInfo);
      v37 = Date._bridgeToObjectiveC()().super.isa;
      v38 = [v36 initWithMessage:0 email:0 phoneNumber:0 timestamp:v37];

      [v32 setLostModeInfo:v38];
      (*(v35 + 8))(v33, v34);
    }
  }

  v39 = *(v0 + 256);
  v40 = *(v0 + 264);
  v41 = *(v0 + 240);
  sub_1000D2A70(*(v0 + 176) + *(*(v0 + 192) + 92), v41, &unk_101696900, &unk_10138B1E0);
  v42 = *(v40 + 48);
  *(v0 + 416) = v42;
  *(v0 + 424) = (v40 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v42(v41, 1, v39) == 1)
  {
    v43 = 0;
  }

  else
  {
    v44 = *(v0 + 256);
    v45 = *(v0 + 264);
    v46 = *(v0 + 240);
    v43 = Date._bridgeToObjectiveC()().super.isa;
    (*(v45 + 8))(v46, v44);
  }

  v47 = *(v0 + 256);
  v48 = *(v0 + 232);
  v49 = *(v0 + 192);
  v50 = *(v0 + 176);
  [*(v0 + 304) setLockedTimestamp:v43];

  sub_1000D2A70(v50 + *(v49 + 96), v48, &unk_101696900, &unk_10138B1E0);
  if (v42(v48, 1, v47) == 1)
  {
    v51 = 0;
  }

  else
  {
    v52 = *(v0 + 256);
    v53 = *(v0 + 264);
    v54 = *(v0 + 232);
    v51 = Date._bridgeToObjectiveC()().super.isa;
    (*(v53 + 8))(v54, v52);
  }

  v55 = *(v0 + 304);
  v56 = *(v0 + 192);
  v57 = *(v0 + 176);
  [v55 setWipedTimestamp:v51];

  [v55 setConnected:0];
  if (*(v57 + *(v56 + 36)) <= 1u && *(v57 + *(v56 + 36)))
  {
    v58 = 1;
  }

  else
  {
    v58 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v59 = *(v0 + 304);
  v60 = *(v0 + 192);
  v61 = *(v0 + 176);

  [v59 setOnline:v58 & 1];
  v62 = [objc_allocWithZone(NSNumber) initWithBool:*(v61 + *(v60 + 68))];
  [v59 setLowPowerMode:v62];

  if (*(v61 + *(v60 + 24) + 8))
  {
    v63 = String._bridgeToObjectiveC()();
  }

  else
  {
    v63 = 0;
  }

  [*(v0 + 304) setSerialNumber:v63];

  v64 = swift_task_alloc();
  *(v0 + 432) = v64;
  *v64 = v0;
  v64[1] = sub_100981524;

  return daemon.getter();
}

uint64_t sub_100984C14()
{

  v1 = String._bridgeToObjectiveC()();

  v2 = *(v0 + 304);
  v3 = *(v0 + 192);
  v4 = *(v0 + 176);
  v5 = [objc_opt_self() handleWithString:v1 formattedName:0];
  *(v0 + 408) = v5;

  [v2 setOwner:v5];
  [v2 setType:SPBeaconTypeFindMyService];
  *(v0 + 552) = *(v3 + 28);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [v2 setIdentifier:isa];

  if (*(v4 + *(v3 + 40) + 8))
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  v8 = *(v0 + 556);
  v9 = *(v0 + 304);
  v10 = *(v0 + 192);
  v11 = *(v0 + 176);
  [v9 setDeviceColor:v7];

  v12 = String._bridgeToObjectiveC()();
  [v9 setDeviceClass:v12];

  v13 = String._bridgeToObjectiveC()();
  [v9 setDeviceModel:v13];

  v14 = String._bridgeToObjectiveC()();
  [v9 setRawDeviceModel:v14];

  v15 = String._bridgeToObjectiveC()();
  [v9 setDeviceDisplayName:v15];

  v16 = [objc_allocWithZone(NSNumber) initWithBool:*(v11 + *(v10 + 76))];
  [v9 setThisDevice:v16];

  v17 = [objc_allocWithZone(NSNumber) initWithBool:v8];
  [v9 setIsMine:v17];

  v18 = qword_1013CB140[*(v11 + *(v10 + 120))];
  v19 = *(v0 + 304);
  v20 = *(v0 + 192);
  v21 = *(v0 + 176);
  [v19 setRepairState:v18];
  v22 = [objc_allocWithZone(NSNumber) initWithBool:*(v21 + *(v20 + 116))];
  [v19 setIsRepairCapable:v22];

  [v19 setBatteryLevel:0];
  v23 = v21 + *(v20 + 60);
  if ((*(v23 + 8) & 1) == 0)
  {
    v24 = *(v0 + 304);
    v25 = [objc_allocWithZone(NSNumber) initWithDouble:*v23];
    [v24 setBatteryPercentage:v25];
  }

  v26 = *(v0 + 192);
  v27 = *(v0 + 176);
  v28 = *(v27 + *(v26 + 100));
  *(v0 + 557) = v28;
  if (v28 == 1)
  {
    v29 = *(v0 + 256);
    v30 = *(v0 + 264);
    v31 = *(v0 + 248);
    sub_1000D2A70(v27 + *(v26 + 88), v31, &unk_101696900, &unk_10138B1E0);
    if ((*(v30 + 48))(v31, 1, v29) == 1)
    {
      sub_10000B3A8(*(v0 + 248), &unk_101696900, &unk_10138B1E0);
    }

    else
    {
      v33 = *(v0 + 296);
      v32 = *(v0 + 304);
      v34 = *(v0 + 256);
      v35 = *(v0 + 264);
      (*(v35 + 32))(v33, *(v0 + 248), v34);
      v36 = objc_allocWithZone(SPLostModeInfo);
      v37 = Date._bridgeToObjectiveC()().super.isa;
      v38 = [v36 initWithMessage:0 email:0 phoneNumber:0 timestamp:v37];

      [v32 setLostModeInfo:v38];
      (*(v35 + 8))(v33, v34);
    }
  }

  v39 = *(v0 + 256);
  v40 = *(v0 + 264);
  v41 = *(v0 + 240);
  sub_1000D2A70(*(v0 + 176) + *(*(v0 + 192) + 92), v41, &unk_101696900, &unk_10138B1E0);
  v42 = *(v40 + 48);
  *(v0 + 416) = v42;
  *(v0 + 424) = (v40 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v42(v41, 1, v39) == 1)
  {
    v43 = 0;
  }

  else
  {
    v44 = *(v0 + 256);
    v45 = *(v0 + 264);
    v46 = *(v0 + 240);
    v43 = Date._bridgeToObjectiveC()().super.isa;
    (*(v45 + 8))(v46, v44);
  }

  v47 = *(v0 + 256);
  v48 = *(v0 + 232);
  v49 = *(v0 + 192);
  v50 = *(v0 + 176);
  [*(v0 + 304) setLockedTimestamp:v43];

  sub_1000D2A70(v50 + *(v49 + 96), v48, &unk_101696900, &unk_10138B1E0);
  if (v42(v48, 1, v47) == 1)
  {
    v51 = 0;
  }

  else
  {
    v52 = *(v0 + 256);
    v53 = *(v0 + 264);
    v54 = *(v0 + 232);
    v51 = Date._bridgeToObjectiveC()().super.isa;
    (*(v53 + 8))(v54, v52);
  }

  v55 = *(v0 + 304);
  v56 = *(v0 + 192);
  v57 = *(v0 + 176);
  [v55 setWipedTimestamp:v51];

  [v55 setConnected:0];
  if (*(v57 + *(v56 + 36)) <= 1u && *(v57 + *(v56 + 36)))
  {
    v58 = 1;
  }

  else
  {
    v58 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v59 = *(v0 + 304);
  v60 = *(v0 + 192);
  v61 = *(v0 + 176);

  [v59 setOnline:v58 & 1];
  v62 = [objc_allocWithZone(NSNumber) initWithBool:*(v61 + *(v60 + 68))];
  [v59 setLowPowerMode:v62];

  if (*(v61 + *(v60 + 24) + 8))
  {
    v63 = String._bridgeToObjectiveC()();
  }

  else
  {
    v63 = 0;
  }

  [*(v0 + 304) setSerialNumber:v63];

  v64 = swift_task_alloc();
  *(v0 + 432) = v64;
  *v64 = v0;
  v64[1] = sub_100981524;

  return daemon.getter();
}

void *sub_10098533C@<X0>(void *result@<X0>, void *a3@<X8>)
{
  if (result)
  {
    MyServiceDevice = type metadata accessor for FindMyServiceDevice(0);
    __chkstk_darwin(MyServiceDevice);
    sub_100008BB8(0, &unk_1016AF850, SPBeaconTaskInformation_ptr);
    result = OS_dispatch_queue.sync<A>(execute:)();
    v5 = v6;
  }

  else
  {
    v5 = 0;
  }

  *a3 = v5;
  return result;
}

uint64_t sub_100985418()
{

  sub_100988C9C(*(v0 + 240), *(v0 + 248), *(v0 + 256), *(v0 + 264), *(v0 + 272), *(v0 + 280), *(v0 + 288), *(v0 + 296), *(v0 + 304));

  v1 = OBJC_IVAR____TtC12searchpartyd25SimpleBeaconUpdateService_cachedUnifiedBeaconsURL;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_10098556C()
{
  sub_100985418();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1009855A0(uint64_t a1)
{
  result = type metadata accessor for URL();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_1009856D8(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10098574C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100985794(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1009857F8()
{
  result = qword_1016AF820;
  if (!qword_1016AF820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AF820);
  }

  return result;
}

uint64_t sub_10098584C(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  updated = type metadata accessor for SimpleBeaconUpdateService(0);
  *v4 = v2;
  v4[1] = sub_100014744;

  return ActorServiceProtocol.initialLaunchProcessing()(updated, a2);
}

uint64_t sub_1009858F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  updated = type metadata accessor for SimpleBeaconUpdateService(0);
  *v8 = v4;
  v8[1] = sub_100014744;

  return ActorServiceProtocol.migrate(from:to:)(a1, a2, updated, a4);
}

uint64_t sub_1009859C0(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  updated = type metadata accessor for SimpleBeaconUpdateService(0);
  *v4 = v2;
  v4[1] = sub_100014650;

  return ActorServiceProtocol.firstLaunchSinceReboot()(updated, a2);
}

uint64_t sub_100985A6C(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  updated = type metadata accessor for SimpleBeaconUpdateService(0);
  *v4 = v2;
  v4[1] = sub_100014744;

  return ActorServiceProtocol.startup()(updated, a2);
}

uint64_t sub_100985B18()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014650;

  return sub_10094AED4();
}

uint64_t sub_100985BA4()
{
  type metadata accessor for SimpleBeaconUpdateService(0);
  sub_100985CA0(&unk_1016B10F0, type metadata accessor for SimpleBeaconUpdateService, &unk_1013CAC90);
  return ActorServiceProtocol.description.getter();
}

uint64_t sub_100985CA0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100985CE8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + *(type metadata accessor for OwnerSharingCircle(0) + 28)) == 2)
  {
    return static UUID.== infix(_:_:)() & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100985DA0()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100014744;

  return sub_10094D9AC(v0);
}

uint64_t sub_100985E30(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

void sub_100985E88(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  swift_beginAccess();
  v4 = *(a1 + 32);
  if ((v4 & 0xC000000000000001) != 0)
  {

    v5 = __CocoaSet.count.getter();
  }

  else
  {
    v5 = *(v4 + 16);
  }

  *a2 = v5 == 0;
}

id sub_100985F20@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = [a1 fetchProperties];
  v4 = [a1 bundleIdentifier];
  if (v4)
  {
    v5 = v4;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = [a1 sendInitialBeacons];
  v10 = [a1 matchingBeaconUUIDs];
  type metadata accessor for UUID();
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v12 = [a1 matchingProductUUIDs];
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v14 = [a1 matchingSerialNumbers];
  v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v16 = [a1 matchingFindMyIds];
  v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  result = [a1 repairContextType];
  *a2 = v19;
  *(a2 + 8) = v6;
  *(a2 + 16) = v8;
  *(a2 + 24) = v9;
  *(a2 + 32) = v11;
  *(a2 + 40) = v13;
  *(a2 + 48) = v15;
  *(a2 + 56) = v17;
  *(a2 + 64) = result;
  return result;
}

uint64_t sub_100986170(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1009861D8(uint64_t a1)
{
  v4 = *(type metadata accessor for Date() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100014650;

  return sub_10097D5C4(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1009862F8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014744;

  return sub_10097EAAC(v2, v3);
}