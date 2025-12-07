uint64_t sub_10018C3C8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v93 = a2;
  v4 = sub_100164A3C(&unk_1002D7BD0, &unk_10024A800);
  __chkstk_darwin(v4 - 8);
  v6 = &v91 - v5;
  v95 = sub_100164A3C(&qword_1002D6A10, &qword_10024A818);
  v7 = *(v95 - 8);
  __chkstk_darwin(v95);
  v9 = &v91 - v8;
  v10 = _s8SnapshotVMa(0);
  __chkstk_darwin(v10);
  v12 = &v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v96 = a1;
  sub_100014E1C(a1, v13);
  sub_100191DD4();
  v94 = v9;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100164B98(v96);
  }

  v92 = v12;
  type metadata accessor for Date();
  v97 = 0;
  sub_100192750(&qword_1002D6A18, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v14 = v92;
  sub_100191E28(v6, v92, &unk_1002D7BD0, &unk_10024A800);
  v97 = 1;
  v15 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v16 = v14 + v10[5];
  *v16 = v15;
  *(v16 + 8) = v17 & 1;
  v97 = 2;
  v18 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v19 = v14 + v10[6];
  *v19 = v18;
  *(v19 + 8) = v20 & 1;
  v97 = 3;
  v21 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v22 = v14 + v10[7];
  *v22 = v21;
  *(v22 + 8) = v23 & 1;
  v97 = 4;
  v24 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v25 = v14 + v10[8];
  *v25 = v24;
  *(v25 + 8) = v26 & 1;
  v97 = 5;
  v27 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v28 = v14 + v10[9];
  *v28 = v27;
  *(v28 + 8) = v29 & 1;
  v97 = 6;
  v30 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v31 = v14 + v10[10];
  *v31 = v30;
  *(v31 + 8) = v32 & 1;
  v97 = 7;
  v33 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v34 = (v14 + v10[11]);
  *v34 = v33;
  v34[1] = v35;
  v97 = 8;
  v36 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v37 = v14 + v10[12];
  *v37 = v36;
  *(v37 + 8) = v38 & 1;
  v97 = 9;
  v39 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v40 = &v92[v10[13]];
  *v40 = v39;
  v40[8] = v41 & 1;
  v97 = 10;
  v42 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v43 = &v92[v10[14]];
  *v43 = v42;
  v43[8] = v44 & 1;
  v97 = 11;
  v45 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v46 = &v92[v10[15]];
  *v46 = v45;
  v46[1] = v47;
  v97 = 12;
  v48 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v49 = &v92[v10[16]];
  *v49 = v48;
  v49[1] = v50;
  v97 = 13;
  v51 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v52 = &v92[v10[17]];
  *v52 = v51;
  v52[8] = v53 & 1;
  v97 = 14;
  v54 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v55 = &v92[v10[18]];
  *v55 = v54;
  v55[8] = v56 & 1;
  v97 = 15;
  v57 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v58 = &v92[v10[19]];
  *v58 = v57;
  v58[8] = v59 & 1;
  v97 = 16;
  v60 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v61 = &v92[v10[20]];
  *v61 = v60;
  v61[8] = v62 & 1;
  v97 = 17;
  v63 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v64 = &v92[v10[21]];
  *v64 = v63;
  v64[8] = v65 & 1;
  v97 = 18;
  v66 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v67 = &v92[v10[22]];
  *v67 = v66;
  v67[8] = v68 & 1;
  v97 = 19;
  v69 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v70 = &v92[v10[23]];
  *v70 = v69;
  v70[8] = v71 & 1;
  v97 = 20;
  v72 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v73 = &v92[v10[24]];
  *v73 = v72;
  v73[8] = v74 & 1;
  v97 = 21;
  v75 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v76 = &v92[v10[25]];
  *v76 = v75;
  v76[8] = v77 & 1;
  v97 = 22;
  v78 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v79 = &v92[v10[26]];
  *v79 = v78;
  v79[8] = v80 & 1;
  v97 = 23;
  v81 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v82 = &v92[v10[27]];
  *v82 = v81;
  v82[8] = v83 & 1;
  v97 = 24;
  v84 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v86 = v85;
  (*(v7 + 8))(v94, v95);
  v88 = v92;
  v87 = v93;
  v89 = &v92[v10[28]];
  *v89 = v84;
  v89[8] = v86 & 1;
  sub_100191E90(v88, v87);
  sub_100164B98(v96);
  return sub_100191EF4(v88, _s8SnapshotVMa);
}

Swift::Int sub_10018CD84()
{
  Hasher.init(_seed:)();
  sub_10018BBF4(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10018CDC8(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_10018BBF4(v2);
  return Hasher._finalize()();
}

uint64_t sub_10018CE08(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = a3 & 1;
  *(result + 40) = a4;
  *(result + 48) = a5 & 1;
  return result;
}

void sub_10018CE70()
{
  sub_10018CFD8();
  if (*(v0 + 32))
  {
    goto LABEL_6;
  }

  if ((~*(v0 + 24) & 0x7FF0000000000000) == 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v1 = *(v0 + 24);
  if (v1 <= -9.22337204e18)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v1 >= 9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  isa = Int._bridgeToObjectiveC()().super.super.isa;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1001906EC(isa, 0xD000000000000016, 0x800000010025BE50, isUniquelyReferenced_nonNull_native);
LABEL_6:
  if (*(v0 + 48))
  {
    return;
  }

  if ((~*(v0 + 40) & 0x7FF0000000000000) == 0)
  {
    goto LABEL_14;
  }

  v4 = *(v0 + 40);
  if (v4 <= -9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v4 >= 9.22337204e18)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v5 = Int._bridgeToObjectiveC()().super.super.isa;
  v6 = swift_isUniquelyReferenced_nonNull_native();
  sub_1001906EC(v5, 0xD00000000000001FLL, 0x800000010025BE30, v6);
}

void sub_10018CFD8()
{
  v1 = sub_100164A3C(&qword_1002D6A20, qword_10024A820);
  __chkstk_darwin(v1 - 8);
  v368 = &v341 - v2;
  v3 = type metadata accessor for TimeZone();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v357 = &v341 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v365 = type metadata accessor for Date.ISO8601FormatStyle.TimeZoneSeparator();
  v6 = *(v365 - 8);
  __chkstk_darwin(v365);
  v8 = &v341 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v363 = type metadata accessor for Date.ISO8601FormatStyle.TimeSeparator();
  v373 = *(v363 - 8);
  __chkstk_darwin(v363);
  v359 = &v341 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v362 = type metadata accessor for Date.ISO8601FormatStyle.DateTimeSeparator();
  v370 = *(v362 - 8);
  __chkstk_darwin(v362);
  v358 = &v341 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v361 = type metadata accessor for Date.ISO8601FormatStyle.DateSeparator();
  v353 = *(v361 - 8);
  __chkstk_darwin(v361);
  v360 = &v341 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v356 = type metadata accessor for Date.ISO8601FormatStyle();
  v343 = *(v356 - 8);
  __chkstk_darwin(v356);
  v355 = &v341 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100164A3C(&unk_1002D7BD0, &unk_10024A800);
  __chkstk_darwin(v13 - 8);
  v366 = &v341 - v14;
  v375 = _s8SnapshotVMa(0);
  v372 = *(v375 - 8);
  v15 = __chkstk_darwin(v375);
  v17 = &v341 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v367 = &v341 - v18;
  v19 = *(v0 + 24);
  v20 = &_swiftEmptyDictionarySingleton;
  v342 = v0;
  if (v19 != 2)
  {
    isa = Bool._bridgeToObjectiveC()().super.super.isa;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v377 = &_swiftEmptyDictionarySingleton;
    sub_1001906EC(isa, 0x69736E6172547369, 0xEC0000006E6F6974, isUniquelyReferenced_nonNull_native);
    v0 = v342;
    v20 = v377;
  }

  v23 = *(v0 + 136);
  v364 = v8;
  if (v23)
  {
    goto LABEL_8;
  }

  if ((~*(v0 + 128) & 0x7FF0000000000000) == 0)
  {
LABEL_243:
    __break(1u);
    goto LABEL_244;
  }

  v24 = *(v0 + 128);
  if (v24 > -9.22337204e18)
  {
    if (v24 >= 9.22337204e18)
    {
      goto LABEL_245;
    }

    v25 = Int._bridgeToObjectiveC()().super.super.isa;
    v26 = swift_isUniquelyReferenced_nonNull_native();
    v377 = v20;
    sub_1001906EC(v25, 0xD00000000000001ALL, 0x800000010025C0F0, v26);
    v0 = v342;
    v20 = v377;
LABEL_8:
    if (*(v0 + 137) != 2)
    {
      v27 = Bool._bridgeToObjectiveC()().super.super.isa;
      v28 = swift_isUniquelyReferenced_nonNull_native();
      v377 = v20;
      sub_1001906EC(v27, 0xD00000000000001BLL, 0x800000010025C0D0, v28);
      v20 = v377;
    }

    v29 = String._bridgeToObjectiveC()();
    v30 = swift_isUniquelyReferenced_nonNull_native();
    v376 = v20;
    sub_1001906EC(v29, 0xD000000000000011, 0x800000010025BE70, v30);
    v31 = v376;
    v377 = v376;
    v32 = *(v342 + 16);
    v374 = v32;
    if (v32)
    {
      v33 = *(v32 + 16);
      v34 = _swiftEmptyArrayStorage;
      if (v33)
      {
        v376 = _swiftEmptyArrayStorage;
        v369 = v33;
        sub_100190A50(0, v33, 0);
        v35 = 0;
        v34 = v376;
        v371 = v32 + ((*(v372 + 80) + 32) & ~*(v372 + 80));
        v354 = enum case for Date.ISO8601FormatStyle.DateSeparator.dash(_:);
        v353 += 13;
        v352 = enum case for Date.ISO8601FormatStyle.DateTimeSeparator.standard(_:);
        v351 = (v370 + 104);
        v350 = enum case for Date.ISO8601FormatStyle.TimeSeparator.colon(_:);
        v349 = (v373 + 13);
        v348 = enum case for Date.ISO8601FormatStyle.TimeZoneSeparator.omitted(_:);
        v347 = (v6 + 104);
        v346 = (v4 + 48);
        v344 = (v4 + 32);
        ++v343;
        v36 = v367;
        v37 = v368;
        v370 = v3;
        v38 = v366;
        v345 = v17;
        while (v35 < *(v32 + 16))
        {
          v373 = v34;
          sub_100191E90(v371 + *(v372 + 72) * v35, v36);
          sub_10001A718(v36, v38, &unk_1002D7BD0, &unk_10024A800);
          v39 = type metadata accessor for Date();
          v40 = *(v39 - 8);
          if ((*(v40 + 48))(v38, 1, v39) == 1)
          {
            sub_100191EF4(v36, _s8SnapshotVMa);
            sub_1000157F0(v38, &unk_1002D7BD0, &unk_10024A800);
            v41 = 0;
            v42 = 0;
          }

          else
          {
            (*v353)(v360, v354, v361);
            (*v351)(v358, v352, v362);
            (*v349)(v359, v350, v363);
            (*v347)(v364, v348, v365);
            TimeZone.init(secondsFromGMT:)();
            if ((*v346)(v37, 1, v3) == 1)
            {
              goto LABEL_246;
            }

            (*v344)(v357, v37, v3);
            v43 = v355;
            Date.ISO8601FormatStyle.init(dateSeparator:dateTimeSeparator:timeSeparator:timeZoneSeparator:includingFractionalSeconds:timeZone:)();
            v44 = v366;
            v45 = Date.ISO8601Format(_:)();
            v37 = v368;
            v41 = v45;
            v42 = v46;
            v47 = v43;
            v38 = v44;
            (*v343)(v47, v356);
            v36 = v367;
            sub_100191EF4(v367, _s8SnapshotVMa);
            (*(v40 + 8))(v38, v39);
            v17 = v345;
          }

          v34 = v373;
          v376 = v373;
          v49 = v373[2];
          v48 = v373[3];
          if (v49 >= v48 >> 1)
          {
            sub_100190A50((v48 > 1), v49 + 1, 1);
            v36 = v367;
            v37 = v368;
            v34 = v376;
          }

          ++v35;
          v34[2] = v49 + 1;
          v50 = &v34[2 * v49];
          v50[4] = v41;
          v50[5] = v42;
          v3 = v370;
          v32 = v374;
          if (v369 == v35)
          {
            v31 = v377;
            goto LABEL_23;
          }
        }

        __break(1u);
        goto LABEL_243;
      }
    }

    else
    {
      v34 = 0;
    }

LABEL_23:
    v51 = v375;
    v52 = sub_100191F54(v34);

    v53 = swift_isUniquelyReferenced_nonNull_native();
    v376 = v31;
    sub_1001906EC(v52, 0xD000000000000011, 0x800000010025BE90, v53);
    v54 = v376;
    v377 = v376;
    v55 = v374;
    if (v374)
    {
      v56 = *(v374 + 16);
      v57 = _swiftEmptyArrayStorage;
      if (v56)
      {
        v376 = _swiftEmptyArrayStorage;
        sub_100190A50(0, v56, 0);
        v57 = v376;
        v58 = v55 + ((*(v372 + 80) + 32) & ~*(v372 + 80));
        v59 = *(v372 + 72);
        do
        {
          sub_100191E90(v58, v17);
          v60 = &v17[*(v375 + 60)];
          v62 = *v60;
          v61 = *(v60 + 1);

          sub_100191EF4(v17, _s8SnapshotVMa);
          v376 = v57;
          v64 = v57[2];
          v63 = v57[3];
          if (v64 >= v63 >> 1)
          {
            sub_100190A50((v63 > 1), v64 + 1, 1);
            v57 = v376;
          }

          v57[2] = v64 + 1;
          v65 = &v57[2 * v64];
          v65[4] = v62;
          v65[5] = v61;
          v58 += v59;
          --v56;
        }

        while (v56);
        v55 = v374;
        v51 = v375;
      }

      v66 = sub_100191F54(v57);

      v67 = swift_isUniquelyReferenced_nonNull_native();
      v376 = v54;
      sub_1001906EC(v66, 0x576C656E6E616863, 0xEC00000068746469, v67);
      v377 = v376;
      v68 = *(v55 + 16);
      v69 = _swiftEmptyArrayStorage;
      if (v68)
      {
        v376 = _swiftEmptyArrayStorage;
        sub_100190208(v68, sub_100190A50);
        v70 = v55 + ((*(v372 + 80) + 32) & ~*(v372 + 80));
        v71 = *(v372 + 72);
        v69 = v376;
        do
        {
          sub_100191E90(v70, v17);
          v72 = &v17[v51[16]];
          v73 = *v72;
          v74 = *(v72 + 1);

          sub_100191EF4(v17, _s8SnapshotVMa);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_100190A50(0, v69[2] + 1, 1);
            v69 = v376;
          }

          v76 = v69[2];
          v75 = v69[3];
          if (v76 >= v75 >> 1)
          {
            sub_100190A50((v75 > 1), v76 + 1, 1);
            v69 = v376;
          }

          v69[2] = v76 + 1;
          v77 = &v69[2 * v76];
          v77[4] = v73;
          v77[5] = v74;
          v70 += v71;
          --v68;
        }

        while (v68);
        v55 = v374;
      }

      v78 = sub_100191F54(v69);

      sub_10018FD68(v78, 0x426C656E6E616863, 0xEB00000000646E61);
      v79 = *(v55 + 16);
      v80 = _swiftEmptyArrayStorage;
      if (v79)
      {
        v376 = _swiftEmptyArrayStorage;
        sub_100190208(v79, sub_100190A20);
        v81 = v55 + ((*(v372 + 80) + 32) & ~*(v372 + 80));
        v82 = *(v372 + 72);
        v80 = v376;
        do
        {
          sub_100191E90(v81, v17);
          v83 = &v17[v51[14]];
          v84 = *v83;
          v85 = v83[8];
          sub_100191EF4(v17, _s8SnapshotVMa);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_100190A20(0, v80[2] + 1, 1);
            v80 = v376;
          }

          v87 = v80[2];
          v86 = v80[3];
          if (v87 >= v86 >> 1)
          {
            sub_100190A20((v86 > 1), v87 + 1, 1);
            v80 = v376;
          }

          v80[2] = v87 + 1;
          v88 = &v80[2 * v87];
          v88[4] = v84;
          *(v88 + 40) = v85;
          v81 += v82;
          --v79;
        }

        while (v79);
        v55 = v374;
      }
    }

    else
    {
      v89 = sub_100191F54(0);

      v90 = swift_isUniquelyReferenced_nonNull_native();
      v376 = v54;
      sub_1001906EC(v89, 0x576C656E6E616863, 0xEC00000068746469, v90);
      v377 = v376;
      v91 = String._bridgeToObjectiveC()();

      sub_10018FD68(v91, 0x426C656E6E616863, 0xEB00000000646E61);
      v80 = 0;
    }

    v92 = sub_1001920D8(v80);

    sub_10018FD68(v92, 0x4E6C656E6E616863, 0xED00007265626D75);
    if (v55)
    {
      v93 = *(v55 + 16);
      v94 = _swiftEmptyArrayStorage;
      if (v93)
      {
        v376 = _swiftEmptyArrayStorage;
        sub_100190208(v93, sub_100190A20);
        v95 = v55 + ((*(v372 + 80) + 32) & ~*(v372 + 80));
        v96 = *(v372 + 72);
        v94 = v376;
        do
        {
          sub_100191E90(v95, v17);
          v97 = &v17[v51[20]];
          v98 = *v97;
          v99 = v97[8];
          sub_100191EF4(v17, _s8SnapshotVMa);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_100190A20(0, v94[2] + 1, 1);
            v94 = v376;
          }

          v101 = v94[2];
          v100 = v94[3];
          if (v101 >= v100 >> 1)
          {
            sub_100190A20((v100 > 1), v101 + 1, 1);
            v94 = v376;
          }

          v94[2] = v101 + 1;
          v102 = &v94[2 * v101];
          v102[4] = v98;
          *(v102 + 40) = v99;
          v95 += v96;
          --v93;
          v51 = v375;
        }

        while (v93);
      }

      v103 = sub_1001920D8(v94);

      sub_10018FD68(v103, 0xD000000000000019, 0x800000010025BEB0);
      v104 = v374;
      v105 = *(v374 + 16);
      v106 = _swiftEmptyArrayStorage;
      if (v105)
      {
        v376 = _swiftEmptyArrayStorage;
        sub_100190208(v105, sub_100190A20);
        v107 = v104 + ((*(v372 + 80) + 32) & ~*(v372 + 80));
        v108 = *(v372 + 72);
        v106 = v376;
        do
        {
          sub_100191E90(v107, v17);
          v109 = &v17[v51[21]];
          v110 = *v109;
          v111 = v109[8];
          sub_100191EF4(v17, _s8SnapshotVMa);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_100190A20(0, v106[2] + 1, 1);
            v106 = v376;
          }

          v113 = v106[2];
          v112 = v106[3];
          if (v113 >= v112 >> 1)
          {
            sub_100190A20((v112 > 1), v113 + 1, 1);
            v106 = v376;
          }

          v106[2] = v113 + 1;
          v114 = &v106[2 * v113];
          v114[4] = v110;
          *(v114 + 40) = v111;
          v107 += v108;
          --v105;
        }

        while (v105);
      }
    }

    else
    {
      v115 = String._bridgeToObjectiveC()();

      sub_10018FD68(v115, 0xD000000000000019, 0x800000010025BEB0);
      v106 = 0;
    }

    v116 = sub_1001920D8(v106);

    sub_10018FD68(v116, 0xD00000000000001ALL, 0x800000010025BED0);
    v117 = v374;
    if (v374)
    {
      v118 = *(v374 + 16);
      v119 = _swiftEmptyArrayStorage;
      if (v118)
      {
        v376 = _swiftEmptyArrayStorage;
        sub_100190208(v118, sub_100190A20);
        v120 = v117 + ((*(v372 + 80) + 32) & ~*(v372 + 80));
        v121 = *(v372 + 72);
        v119 = v376;
        do
        {
          sub_100191E90(v120, v17);
          v122 = &v17[v51[22]];
          v123 = *v122;
          v124 = v122[8];
          sub_100191EF4(v17, _s8SnapshotVMa);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_100190A20(0, v119[2] + 1, 1);
            v119 = v376;
          }

          v126 = v119[2];
          v125 = v119[3];
          if (v126 >= v125 >> 1)
          {
            sub_100190A20((v125 > 1), v126 + 1, 1);
            v119 = v376;
          }

          v119[2] = v126 + 1;
          v127 = &v119[2 * v126];
          v127[4] = v123;
          *(v127 + 40) = v124;
          v120 += v121;
          --v118;
          v51 = v375;
        }

        while (v118);
      }

      v128 = sub_1001920D8(v119);

      sub_10018FD68(v128, 0xD000000000000016, 0x800000010025BEF0);
      v117 = v374;
      v129 = *(v374 + 16);
      v130 = _swiftEmptyArrayStorage;
      if (v129)
      {
        v376 = _swiftEmptyArrayStorage;
        sub_100190208(v129, sub_100190A20);
        v131 = v117 + ((*(v372 + 80) + 32) & ~*(v372 + 80));
        v132 = *(v372 + 72);
        v130 = v376;
        do
        {
          sub_100191E90(v131, v17);
          v133 = &v17[v51[10]];
          v134 = *v133;
          v135 = v133[8];
          sub_100191EF4(v17, _s8SnapshotVMa);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_100190A20(0, v130[2] + 1, 1);
            v130 = v376;
          }

          v137 = v130[2];
          v136 = v130[3];
          if (v137 >= v136 >> 1)
          {
            sub_100190A20((v136 > 1), v137 + 1, 1);
            v130 = v376;
          }

          v130[2] = v137 + 1;
          v138 = &v130[2 * v137];
          v138[4] = v134;
          *(v138 + 40) = v135;
          v131 += v132;
          --v129;
        }

        while (v129);
        v117 = v374;
      }
    }

    else
    {
      v139 = String._bridgeToObjectiveC()();

      sub_10018FD68(v139, 0xD000000000000016, 0x800000010025BEF0);
      v130 = 0;
    }

    v140 = sub_1001920D8(v130);

    sub_10018FD68(v140, 1769173874, 0xE400000000000000);
    if (v117)
    {
      v141 = *(v117 + 16);
      v142 = _swiftEmptyArrayStorage;
      if (v141)
      {
        v376 = _swiftEmptyArrayStorage;
        sub_100190208(v141, sub_100190A20);
        v143 = v117 + ((*(v372 + 80) + 32) & ~*(v372 + 80));
        v144 = *(v372 + 72);
        v142 = v376;
        do
        {
          sub_100191E90(v143, v17);
          v145 = &v17[v51[12]];
          v146 = *v145;
          v147 = v145[8];
          sub_100191EF4(v17, _s8SnapshotVMa);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_100190A20(0, v142[2] + 1, 1);
            v142 = v376;
          }

          v149 = v142[2];
          v148 = v142[3];
          if (v149 >= v148 >> 1)
          {
            sub_100190A20((v148 > 1), v149 + 1, 1);
            v142 = v376;
          }

          v142[2] = v149 + 1;
          v150 = &v142[2 * v149];
          v150[4] = v146;
          *(v150 + 40) = v147;
          v143 += v144;
          --v141;
        }

        while (v141);
        v117 = v374;
      }

      v151 = sub_1001920D8(v142);

      sub_10018FD68(v151, 7499379, 0xE300000000000000);
      v152 = *(v117 + 16);
      v153 = _swiftEmptyArrayStorage;
      if (v152)
      {
        v376 = _swiftEmptyArrayStorage;
        sub_100190208(v152, sub_100190A20);
        v154 = v117 + ((*(v372 + 80) + 32) & ~*(v372 + 80));
        v155 = *(v372 + 72);
        v153 = v376;
        do
        {
          sub_100191E90(v154, v17);
          v156 = &v17[v51[13]];
          v157 = *v156;
          v158 = v156[8];
          sub_100191EF4(v17, _s8SnapshotVMa);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_100190A20(0, v153[2] + 1, 1);
            v153 = v376;
          }

          v160 = v153[2];
          v159 = v153[3];
          if (v160 >= v159 >> 1)
          {
            sub_100190A20((v159 > 1), v160 + 1, 1);
            v153 = v376;
          }

          v153[2] = v160 + 1;
          v161 = &v153[2 * v160];
          v161[4] = v157;
          *(v161 + 40) = v158;
          v154 += v155;
          --v152;
        }

        while (v152);
        v117 = v374;
      }
    }

    else
    {
      v162 = String._bridgeToObjectiveC()();

      sub_10018FD68(v162, 7499379, 0xE300000000000000);
      v153 = 0;
    }

    v163 = sub_1001920D8(v153);

    sub_10018FD68(v163, 6382435, 0xE300000000000000);
    if (v117)
    {
      v164 = *(v117 + 16);
      v165 = _swiftEmptyArrayStorage;
      if (v164)
      {
        v376 = _swiftEmptyArrayStorage;
        sub_100190208(v164, sub_1001909F0);
        v166 = v117 + ((*(v372 + 80) + 32) & ~*(v372 + 80));
        v167 = *(v372 + 72);
        v165 = v376;
        do
        {
          sub_100191E90(v166, v17);
          v168 = &v17[v51[17]];
          v169 = *v168;
          v170 = v168[8];
          sub_100191EF4(v17, _s8SnapshotVMa);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1001909F0(0, v165[2] + 1, 1);
            v165 = v376;
          }

          v172 = v165[2];
          v171 = v165[3];
          if (v172 >= v171 >> 1)
          {
            sub_1001909F0((v171 > 1), v172 + 1, 1);
            v165 = v376;
          }

          v165[2] = v172 + 1;
          v173 = &v165[2 * v172];
          v173[4] = v169;
          *(v173 + 40) = v170;
          v166 += v167;
          --v164;
          v51 = v375;
        }

        while (v164);
      }

      v174 = sub_10018FFE0(v165);

      sub_10018FD68(v174, 0xD00000000000001ALL, 0x800000010025BF10);
      v117 = v374;
      v175 = *(v374 + 16);
      v176 = _swiftEmptyArrayStorage;
      if (v175)
      {
        v376 = _swiftEmptyArrayStorage;
        sub_100190208(v175, sub_1001909F0);
        v177 = v117 + ((*(v372 + 80) + 32) & ~*(v372 + 80));
        v178 = *(v372 + 72);
        v176 = v376;
        do
        {
          sub_100191E90(v177, v17);
          v179 = &v17[v51[18]];
          v180 = *v179;
          v181 = v179[8];
          sub_100191EF4(v17, _s8SnapshotVMa);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1001909F0(0, v176[2] + 1, 1);
            v176 = v376;
          }

          v183 = v176[2];
          v182 = v176[3];
          if (v183 >= v182 >> 1)
          {
            sub_1001909F0((v182 > 1), v183 + 1, 1);
            v176 = v376;
          }

          v176[2] = v183 + 1;
          v184 = &v176[2 * v183];
          v184[4] = v180;
          *(v184 + 40) = v181;
          v177 += v178;
          --v175;
        }

        while (v175);
        v117 = v374;
      }
    }

    else
    {
      v185 = String._bridgeToObjectiveC()();

      sub_10018FD68(v185, 0xD00000000000001ALL, 0x800000010025BF10);
      v176 = 0;
    }

    v186 = sub_10018FFE0(v176);

    sub_10018FD68(v186, 0xD000000000000018, 0x800000010025BF30);
    if (v117)
    {
      v187 = *(v117 + 16);
      v188 = _swiftEmptyArrayStorage;
      if (v187)
      {
        v376 = _swiftEmptyArrayStorage;
        sub_100190208(v187, sub_1001909F0);
        v189 = v117 + ((*(v372 + 80) + 32) & ~*(v372 + 80));
        v190 = *(v372 + 72);
        v188 = v376;
        do
        {
          sub_100191E90(v189, v17);
          v191 = &v17[v51[19]];
          v192 = *v191;
          v193 = v191[8];
          sub_100191EF4(v17, _s8SnapshotVMa);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1001909F0(0, v188[2] + 1, 1);
            v188 = v376;
          }

          v195 = v188[2];
          v194 = v188[3];
          if (v195 >= v194 >> 1)
          {
            sub_1001909F0((v194 > 1), v195 + 1, 1);
            v188 = v376;
          }

          v188[2] = v195 + 1;
          v196 = &v188[2 * v195];
          v196[4] = v192;
          *(v196 + 40) = v193;
          v189 += v190;
          --v187;
          v51 = v375;
        }

        while (v187);
        v117 = v374;
      }

      v197 = sub_10018FFE0(v188);

      sub_10018FD68(v197, 0xD000000000000010, 0x800000010025BF50);
      if (!v117)
      {
        v222 = String._bridgeToObjectiveC()();

        sub_10018FD68(v222, 0x6F72656C65636361, 0xEE0058726574656DLL);
        v211 = 0;
        goto LABEL_146;
      }

      v198 = *(v117 + 16);
      v199 = _swiftEmptyArrayStorage;
      if (v198)
      {
        v376 = _swiftEmptyArrayStorage;
        sub_100190208(v198, sub_1001909F0);
        v200 = v117 + ((*(v372 + 80) + 32) & ~*(v372 + 80));
        v201 = *(v372 + 72);
        v199 = v376;
        do
        {
          sub_100191E90(v200, v17);
          v202 = &v17[v51[7]];
          v203 = *v202;
          v204 = v202[8];
          sub_100191EF4(v17, _s8SnapshotVMa);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1001909F0(0, v199[2] + 1, 1);
            v199 = v376;
          }

          v206 = v199[2];
          v205 = v199[3];
          if (v206 >= v205 >> 1)
          {
            sub_1001909F0((v205 > 1), v206 + 1, 1);
            v199 = v376;
          }

          v199[2] = v206 + 1;
          v207 = &v199[2 * v206];
          v207[4] = v203;
          *(v207 + 40) = v204;
          v200 += v201;
          --v198;
          v51 = v375;
        }

        while (v198);
        v117 = v374;
      }
    }

    else
    {
      v208 = String._bridgeToObjectiveC()();

      sub_10018FD68(v208, 0xD000000000000010, 0x800000010025BF50);
      v199 = 0;
    }

    v209 = sub_10018FFE0(v199);

    sub_10018FD68(v209, 0x6F72656C65636361, 0xEE0058726574656DLL);
    if (!v117)
    {
      v220 = String._bridgeToObjectiveC()();

      sub_10018FD68(v220, 0x6F72656C65636361, 0xEE0059726574656DLL);
      v221 = 0;
      goto LABEL_156;
    }

    v210 = *(v117 + 16);
    v211 = _swiftEmptyArrayStorage;
    if (v210)
    {
      v376 = _swiftEmptyArrayStorage;
      sub_100190208(v210, sub_1001909F0);
      v212 = v117 + ((*(v372 + 80) + 32) & ~*(v372 + 80));
      v213 = *(v372 + 72);
      v211 = v376;
      do
      {
        sub_100191E90(v212, v17);
        v214 = &v17[v51[8]];
        v215 = *v214;
        v216 = v214[8];
        sub_100191EF4(v17, _s8SnapshotVMa);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1001909F0(0, v211[2] + 1, 1);
          v211 = v376;
        }

        v218 = v211[2];
        v217 = v211[3];
        if (v218 >= v217 >> 1)
        {
          sub_1001909F0((v217 > 1), v218 + 1, 1);
          v211 = v376;
        }

        v211[2] = v218 + 1;
        v219 = &v211[2 * v218];
        v219[4] = v215;
        *(v219 + 40) = v216;
        v212 += v213;
        --v210;
      }

      while (v210);
      v117 = v374;
    }

LABEL_146:
    v223 = sub_10018FFE0(v211);

    sub_10018FD68(v223, 0x6F72656C65636361, 0xEE0059726574656DLL);
    if (!v117)
    {
      v233 = String._bridgeToObjectiveC()();

      sub_10018FD68(v233, 0x6F72656C65636361, 0xEE005A726574656DLL);
      v234 = 0;
      goto LABEL_164;
    }

    v224 = *(v117 + 16);
    v221 = _swiftEmptyArrayStorage;
    if (v224)
    {
      v376 = _swiftEmptyArrayStorage;
      sub_100190208(v224, sub_1001909F0);
      v225 = v117 + ((*(v372 + 80) + 32) & ~*(v372 + 80));
      v226 = *(v372 + 72);
      v221 = v376;
      do
      {
        sub_100191E90(v225, v17);
        v227 = &v17[v51[9]];
        v228 = *v227;
        v229 = v227[8];
        sub_100191EF4(v17, _s8SnapshotVMa);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1001909F0(0, v221[2] + 1, 1);
          v221 = v376;
        }

        v231 = v221[2];
        v230 = v221[3];
        if (v231 >= v230 >> 1)
        {
          sub_1001909F0((v230 > 1), v231 + 1, 1);
          v221 = v376;
        }

        v221[2] = v231 + 1;
        v232 = &v221[2 * v231];
        v232[4] = v228;
        *(v232 + 40) = v229;
        v225 += v226;
        --v224;
      }

      while (v224);
      v117 = v374;
    }

LABEL_156:
    v235 = sub_10018FFE0(v221);

    sub_10018FD68(v235, 0x6F72656C65636361, 0xEE005A726574656DLL);
    if (!v117)
    {
      v257 = String._bridgeToObjectiveC()();

      sub_10018FD68(v257, 0xD000000000000011, 0x800000010025BF70);
      v248 = 0;
      goto LABEL_174;
    }

    v236 = *(v117 + 16);
    v234 = _swiftEmptyArrayStorage;
    if (v236)
    {
      v376 = _swiftEmptyArrayStorage;
      sub_100190208(v236, sub_1001909F0);
      v237 = v117 + ((*(v372 + 80) + 32) & ~*(v372 + 80));
      v238 = *(v372 + 72);
      v234 = v376;
      do
      {
        sub_100191E90(v237, v17);
        v239 = &v17[v51[5]];
        v240 = *v239;
        v241 = v239[8];
        sub_100191EF4(v17, _s8SnapshotVMa);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1001909F0(0, v234[2] + 1, 1);
          v234 = v376;
        }

        v243 = v234[2];
        v242 = v234[3];
        if (v243 >= v242 >> 1)
        {
          sub_1001909F0((v242 > 1), v243 + 1, 1);
          v234 = v376;
        }

        v234[2] = v243 + 1;
        v244 = &v234[2 * v243];
        v244[4] = v240;
        *(v244 + 40) = v241;
        v237 += v238;
        --v236;
      }

      while (v236);
    }

LABEL_164:
    v245 = sub_10018FFE0(v234);

    sub_10018FD68(v245, 0xD000000000000011, 0x800000010025BF70);
    v246 = v374;
    if (!v374)
    {
      v271 = String._bridgeToObjectiveC()();

      sub_10018FD68(v271, 0xD000000000000010, 0x800000010025BF90);
      v260 = 0;
      goto LABEL_185;
    }

    v247 = *(v374 + 16);
    v248 = _swiftEmptyArrayStorage;
    if (v247)
    {
      v376 = _swiftEmptyArrayStorage;
      sub_100190208(v247, sub_1001909F0);
      v249 = v246 + ((*(v372 + 80) + 32) & ~*(v372 + 80));
      v250 = *(v372 + 72);
      v248 = v376;
      do
      {
        sub_100191E90(v249, v17);
        v251 = &v17[v51[6]];
        v252 = *v251;
        v253 = v251[8];
        sub_100191EF4(v17, _s8SnapshotVMa);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1001909F0(0, v248[2] + 1, 1);
          v248 = v376;
        }

        v255 = v248[2];
        v254 = v248[3];
        if (v255 >= v254 >> 1)
        {
          sub_1001909F0((v254 > 1), v255 + 1, 1);
          v248 = v376;
        }

        v248[2] = v255 + 1;
        v256 = &v248[2 * v255];
        v256[4] = v252;
        *(v256 + 40) = v253;
        v249 += v250;
        --v247;
      }

      while (v247);
    }

LABEL_174:
    v258 = sub_10018FFE0(v248);

    sub_10018FD68(v258, 0xD000000000000010, 0x800000010025BF90);
    v246 = v374;
    if (!v374)
    {
      v269 = String._bridgeToObjectiveC()();

      sub_10018FD68(v269, 0x6574656D6F646570, 0xED00006563615072);
      v270 = 0;
      goto LABEL_193;
    }

    v259 = *(v374 + 16);
    v260 = _swiftEmptyArrayStorage;
    if (v259)
    {
      v376 = _swiftEmptyArrayStorage;
      sub_100190208(v259, sub_1001909F0);
      v261 = v246 + ((*(v372 + 80) + 32) & ~*(v372 + 80));
      v262 = *(v372 + 72);
      v260 = v376;
      do
      {
        sub_100191E90(v261, v17);
        v263 = &v17[v51[23]];
        v264 = *v263;
        v265 = v263[8];
        sub_100191EF4(v17, _s8SnapshotVMa);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1001909F0(0, v260[2] + 1, 1);
          v260 = v376;
        }

        v267 = v260[2];
        v266 = v260[3];
        if (v267 >= v266 >> 1)
        {
          sub_1001909F0((v266 > 1), v267 + 1, 1);
          v260 = v376;
        }

        v260[2] = v267 + 1;
        v268 = &v260[2 * v267];
        v268[4] = v264;
        *(v268 + 40) = v265;
        v261 += v262;
        --v259;
      }

      while (v259);
      v246 = v374;
    }

LABEL_185:
    v272 = sub_10018FFE0(v260);

    sub_10018FD68(v272, 0x6574656D6F646570, 0xED00006563615072);
    if (!v246)
    {
      v296 = String._bridgeToObjectiveC()();

      sub_10018FD68(v296, 0xD000000000000010, 0x800000010025BFB0);
      v285 = 0;
      goto LABEL_204;
    }

    v273 = *(v246 + 16);
    v270 = _swiftEmptyArrayStorage;
    if (v273)
    {
      v376 = _swiftEmptyArrayStorage;
      sub_100190208(v273, sub_1001909F0);
      v274 = v246 + ((*(v372 + 80) + 32) & ~*(v372 + 80));
      v275 = *(v372 + 72);
      v270 = v376;
      do
      {
        sub_100191E90(v274, v17);
        v276 = &v17[v51[24]];
        v277 = *v276;
        v278 = v276[8];
        sub_100191EF4(v17, _s8SnapshotVMa);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1001909F0(0, v270[2] + 1, 1);
          v270 = v376;
        }

        v280 = v270[2];
        v279 = v270[3];
        if (v280 >= v279 >> 1)
        {
          sub_1001909F0((v279 > 1), v280 + 1, 1);
          v270 = v376;
        }

        v270[2] = v280 + 1;
        v281 = &v270[2 * v280];
        v281[4] = v277;
        *(v281 + 40) = v278;
        v274 += v275;
        --v273;
      }

      while (v273);
    }

LABEL_193:
    v282 = sub_10018FFE0(v270);

    sub_10018FD68(v282, 0xD000000000000010, 0x800000010025BFB0);
    v283 = v374;
    if (!v374)
    {
      v294 = String._bridgeToObjectiveC()();

      sub_10018FD68(v294, 0xD000000000000017, 0x800000010025BFD0);
      v295 = 0;
      goto LABEL_212;
    }

    v284 = *(v374 + 16);
    v285 = _swiftEmptyArrayStorage;
    if (v284)
    {
      v376 = _swiftEmptyArrayStorage;
      sub_100190208(v284, sub_1001909F0);
      v286 = v283 + ((*(v372 + 80) + 32) & ~*(v372 + 80));
      v287 = *(v372 + 72);
      v285 = v376;
      do
      {
        sub_100191E90(v286, v17);
        v288 = &v17[v51[25]];
        v289 = *v288;
        v290 = v288[8];
        sub_100191EF4(v17, _s8SnapshotVMa);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1001909F0(0, v285[2] + 1, 1);
          v285 = v376;
        }

        v292 = v285[2];
        v291 = v285[3];
        if (v292 >= v291 >> 1)
        {
          sub_1001909F0((v291 > 1), v292 + 1, 1);
          v285 = v376;
        }

        v285[2] = v292 + 1;
        v293 = &v285[2 * v292];
        v293[4] = v289;
        *(v293 + 40) = v290;
        v286 += v287;
        --v284;
      }

      while (v284);
    }

LABEL_204:
    v297 = sub_10018FFE0(v285);

    sub_10018FD68(v297, 0xD000000000000017, 0x800000010025BFD0);
    v298 = v374;
    if (!v374)
    {
      v321 = String._bridgeToObjectiveC()();

      sub_10018FD68(v321, 0xD000000000000018, 0x800000010025BFF0);
      v311 = 0;
      goto LABEL_223;
    }

    v299 = *(v374 + 16);
    v295 = _swiftEmptyArrayStorage;
    if (v299)
    {
      v376 = _swiftEmptyArrayStorage;
      sub_100190208(v299, sub_1001909F0);
      v300 = v298 + ((*(v372 + 80) + 32) & ~*(v372 + 80));
      v301 = *(v372 + 72);
      v295 = v376;
      do
      {
        sub_100191E90(v300, v17);
        v302 = &v17[v51[26]];
        v303 = *v302;
        v304 = v302[8];
        sub_100191EF4(v17, _s8SnapshotVMa);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1001909F0(0, v295[2] + 1, 1);
          v295 = v376;
        }

        v306 = v295[2];
        v305 = v295[3];
        if (v306 >= v305 >> 1)
        {
          sub_1001909F0((v305 > 1), v306 + 1, 1);
          v295 = v376;
        }

        v295[2] = v306 + 1;
        v307 = &v295[2 * v306];
        v307[4] = v303;
        *(v307 + 40) = v304;
        v300 += v301;
        --v299;
      }

      while (v299);
    }

LABEL_212:
    v308 = sub_10018FFE0(v295);

    sub_10018FD68(v308, 0xD000000000000018, 0x800000010025BFF0);
    v309 = v374;
    if (!v374)
    {
      v320 = String._bridgeToObjectiveC()();

      sub_10018FD68(v320, 0xD000000000000016, 0x800000010025C010);
      goto LABEL_232;
    }

    v310 = *(v374 + 16);
    v311 = _swiftEmptyArrayStorage;
    if (v310)
    {
      v376 = _swiftEmptyArrayStorage;
      sub_100190208(v310, sub_1001909F0);
      v312 = v309 + ((*(v372 + 80) + 32) & ~*(v372 + 80));
      v313 = *(v372 + 72);
      v311 = v376;
      do
      {
        sub_100191E90(v312, v17);
        v314 = &v17[v51[27]];
        v315 = *v314;
        v316 = v314[8];
        sub_100191EF4(v17, _s8SnapshotVMa);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1001909F0(0, v311[2] + 1, 1);
          v311 = v376;
        }

        v318 = v311[2];
        v317 = v311[3];
        if (v318 >= v317 >> 1)
        {
          sub_1001909F0((v317 > 1), v318 + 1, 1);
          v311 = v376;
        }

        v311[2] = v318 + 1;
        v319 = &v311[2 * v318];
        v319[4] = v315;
        *(v319 + 40) = v316;
        v312 += v313;
        --v310;
      }

      while (v310);
    }

LABEL_223:
    v322 = sub_10018FFE0(v311);

    sub_10018FD68(v322, 0xD000000000000016, 0x800000010025C010);
    v323 = v374;
    if (v374)
    {
      v324 = *(v374 + 16);
      v325 = _swiftEmptyArrayStorage;
      if (v324)
      {
        v376 = _swiftEmptyArrayStorage;
        sub_100190208(v324, sub_1001909F0);
        v326 = v323 + ((*(v372 + 80) + 32) & ~*(v372 + 80));
        v327 = *(v372 + 72);
        v325 = v376;
        do
        {
          sub_100191E90(v326, v17);
          v328 = &v17[v51[28]];
          v329 = *v328;
          v330 = v328[8];
          sub_100191EF4(v17, _s8SnapshotVMa);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1001909F0(0, v325[2] + 1, 1);
            v325 = v376;
          }

          v332 = v325[2];
          v331 = v325[3];
          if (v332 >= v331 >> 1)
          {
            sub_1001909F0((v331 > 1), v332 + 1, 1);
            v325 = v376;
          }

          v325[2] = v332 + 1;
          v333 = &v325[2 * v332];
          v333[4] = v329;
          *(v333 + 40) = v330;
          v326 += v327;
          --v324;
        }

        while (v324);
      }

      goto LABEL_233;
    }

LABEL_232:
    v325 = 0;
LABEL_233:
    v334 = sub_10018FFE0(v325);

    sub_10018FD68(v334, 0xD00000000000001ALL, 0x800000010025C030);
    v335 = v342;
    if ((*(v342 + 40) & 1) == 0)
    {
      v336.super.super.isa = Int._bridgeToObjectiveC()().super.super.isa;
      sub_10018FD68(v336.super.super.isa, 0xD000000000000010, 0x800000010025C090);
      v335 = v342;
      if ((*(v342 + 56) & 1) == 0)
      {
        v337.super.super.isa = Int._bridgeToObjectiveC()().super.super.isa;
        sub_10018FD68(v337.super.super.isa, 0xD000000000000013, 0x800000010025C0B0);
        v335 = v342;
      }
    }

    if (v335[121] != 2)
    {
      v338.super.super.isa = Bool._bridgeToObjectiveC()().super.super.isa;
      sub_10018FD68(v338.super.super.isa, 0xD000000000000015, 0x800000010025C070);
      v335 = v342;
    }

    if ((v335[104] & 1) == 0 && (v335[120] & 1) == 0)
    {
      v339.super.super.isa = Int._bridgeToObjectiveC()().super.super.isa;
      sub_10018FD68(v339.super.super.isa, 0x697469736E617274, 0xEE0072756F486E6FLL);
      v340.super.super.isa = Int._bridgeToObjectiveC()().super.super.isa;
      sub_10018FD68(v340.super.super.isa, 0xD000000000000011, 0x800000010025C050);
    }

    return;
  }

LABEL_244:
  __break(1u);
LABEL_245:
  __break(1u);
LABEL_246:
  __break(1u);
}

uint64_t sub_10018FD68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_1001906EC(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_100164498(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_100190864();
        v14 = v16;
      }

      result = sub_10019053C(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t sub_10018FE60()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10018FEA8(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, char a9, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, char a15, char a16, char a17)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 128) = a3;
  *(result + 136) = a4 & 1;
  v23 = a5;
  if ((a5 & &_mh_execute_header) != 0)
  {
    v23 = 0;
  }

  *(result + 32) = v23;
  *(result + 40) = BYTE4(a5) & 1;
  *(result + 48) = a6;
  *(result + 56) = a7 & 1;
  *(result + 64) = a8;
  *(result + 72) = a9 & 1;
  *(result + 80) = a10;
  *(result + 88) = a11 & 1;
  *(result + 96) = a12;
  *(result + 104) = a13 & 1;
  *(result + 112) = a14;
  *(result + 120) = a15 & 1;
  *(result + 121) = a16;
  *(result + 137) = a17;
  return result;
}

NSString sub_10018FFE0(uint64_t a1)
{
  if (a1)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      sub_1001909D0(0, v3, 0);
      v4 = _swiftEmptyArrayStorage;
      v5 = (a1 + 40);
      do
      {
        if (*v5)
        {
          v6 = 0;
          v7 = 0xE000000000000000;
        }

        else
        {
          v8 = *(v5 - 1);
          sub_100164A3C(&qword_1002D6CE0, &qword_10024AB10);
          v9 = swift_allocObject();
          *(v9 + 16) = xmmword_1002497B0;
          *(v9 + 56) = &type metadata for Double;
          *(v9 + 64) = &protocol witness table for Double;
          *(v9 + 32) = v8;
          v6 = String.init(format:_:)();
        }

        v17 = v4;
        v11 = v4[2];
        v10 = v4[3];
        if (v11 >= v10 >> 1)
        {
          v16 = v6;
          v13 = v7;
          sub_1001909D0((v10 > 1), v11 + 1, 1);
          v7 = v13;
          v6 = v16;
          v4 = v17;
        }

        v4[2] = v11 + 1;
        v12 = &v4[2 * v11];
        v12[4] = v6;
        v12[5] = v7;
        v5 += 16;
        --v3;
      }

      while (v3);
    }

    sub_100164A3C(&qword_1002D6CD0, &qword_10024AB08);
    sub_1001926EC();
    BidirectionalCollection<>.joined(separator:)();

    v14 = String._bridgeToObjectiveC()();

    return v14;
  }

  else
  {

    return String._bridgeToObjectiveC()();
  }
}

uint64_t sub_1001901C0()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100190208(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!result || a1 > *(v4 + 24) >> 1)
  {

    return a2();
  }

  return result;
}

Swift::Int sub_100190298(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100164A3C(&qword_1002D5C68, &qword_10024AB20);
  v35 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_10019053C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v9 = Hasher._finalize()();

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

  return result;
}

void sub_1001906EC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100164498(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_100190298(v16, a4 & 1);
      v11 = sub_100164498(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_100190864();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7];
    v23 = *(v22 + 8 * v11);
    *(v22 + 8 * v11) = a1;

    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v24 = (v21[6] + 16 * v11);
  *v24 = a2;
  v24[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v25 = v21[2];
  v15 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v26;
}

id sub_100190864()
{
  v1 = v0;
  sub_100164A3C(&qword_1002D5C68, &qword_10024AB20);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

char *sub_1001909D0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100190A70(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1001909F0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100190B7C(a1, a2, a3, *v3, &qword_1002D6CC8, &qword_10024AB00);
  *v3 = result;
  return result;
}

char *sub_100190A20(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100190B7C(a1, a2, a3, *v3, &qword_1002D6CC0, &qword_10024AAF8);
  *v3 = result;
  return result;
}

void *sub_100190A50(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100190C74(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100190A70(char *result, int64_t a2, char a3, char *a4)
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
    sub_100164A3C(&qword_1002D6CE8, &qword_10024AB18);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_100190B7C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_100164A3C(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  v17 = 16 * v10;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[v17])
    {
      memmove(v15, v16, v17);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, v17);
  }

  return v12;
}

void *sub_100190C74(void *result, int64_t a2, char a3, void *a4)
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
    sub_100164A3C(&qword_1002D6CB0, &qword_10024AAE8);
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
    v10 = _swiftEmptyArrayStorage;
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
    sub_100164A3C(&qword_1002D6CB8, &qword_10024AAF0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_100190DA8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x800000010025BE90 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010025BF70 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010025BF90 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F72656C65636361 && a2 == 0xEE0058726574656DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6F72656C65636361 && a2 == 0xEE0059726574656DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6F72656C65636361 && a2 == 0xEE005A726574656DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 1769173874 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x4E6B726F7774656ELL && a2 == 0xEB00000000656D61 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 7499379 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 6382435 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x4E6C656E6E616863 && a2 == 0xED00007265626D75 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x576C656E6E616863 && a2 == 0xEC00000068746469 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x426C656E6E616863 && a2 == 0xEB00000000646E61 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000010025BF10 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000018 && 0x800000010025BF30 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010025BF50 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000019 && 0x800000010025BEB0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000010025BED0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD000000000000016 && 0x800000010025BEF0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0x6574656D6F646570 && a2 == 0xED00006563615072 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010025BFB0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0xD000000000000017 && 0x800000010025BFD0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0xD000000000000018 && 0x800000010025BFF0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0xD000000000000016 && 0x800000010025C010 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000010025C030 == a2)
  {

    return 24;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 24;
    }

    else
    {
      return 25;
    }
  }
}

BOOL sub_10019156C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v146 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100164A3C(&unk_1002D7BD0, &unk_10024A800);
  __chkstk_darwin(v8 - 8);
  v10 = &v146 - v9;
  v11 = sub_100164A3C(&qword_1002D6CF0, &qword_10024AB28);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v146 - v13;
  v15 = *(v12 + 56);
  sub_10001A718(a1, &v146 - v13, &unk_1002D7BD0, &unk_10024A800);
  sub_10001A718(a2, &v14[v15], &unk_1002D7BD0, &unk_10024A800);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_1000157F0(v14, &unk_1002D7BD0, &unk_10024A800);
      goto LABEL_9;
    }

LABEL_6:
    sub_1000157F0(v14, &qword_1002D6CF0, &qword_10024AB28);
    return 0;
  }

  sub_10001A718(v14, v10, &unk_1002D7BD0, &unk_10024A800);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  (*(v5 + 32))(v7, &v14[v15], v4);
  sub_100192750(&qword_1002D6CF8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v18 = dispatch thunk of static Equatable.== infix(_:_:)();
  v19 = *(v5 + 8);
  v19(v7, v4);
  v19(v10, v4);
  sub_1000157F0(v14, &unk_1002D7BD0, &unk_10024A800);
  if ((v18 & 1) == 0)
  {
    return 0;
  }

LABEL_9:
  v20 = _s8SnapshotVMa(0);
  v21 = v20[5];
  v22 = (a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  v25 = *(a2 + v21 + 8);
  if (v23)
  {
    if (!v25)
    {
      return 0;
    }
  }

  else
  {
    if (*v22 != *v24)
    {
      LOBYTE(v25) = 1;
    }

    if (v25)
    {
      return 0;
    }
  }

  v26 = v20[6];
  v27 = (a1 + v26);
  v28 = *(a1 + v26 + 8);
  v29 = (a2 + v26);
  v30 = *(a2 + v26 + 8);
  if (v28)
  {
    if (!v30)
    {
      return 0;
    }
  }

  else
  {
    if (*v27 != *v29)
    {
      LOBYTE(v30) = 1;
    }

    if (v30)
    {
      return 0;
    }
  }

  v31 = v20[7];
  v32 = (a1 + v31);
  v33 = *(a1 + v31 + 8);
  v34 = (a2 + v31);
  v35 = *(a2 + v31 + 8);
  if (v33)
  {
    if (!v35)
    {
      return 0;
    }
  }

  else
  {
    if (*v32 != *v34)
    {
      LOBYTE(v35) = 1;
    }

    if (v35)
    {
      return 0;
    }
  }

  v36 = v20[8];
  v37 = (a1 + v36);
  v38 = *(a1 + v36 + 8);
  v39 = (a2 + v36);
  v40 = *(a2 + v36 + 8);
  if (v38)
  {
    if (!v40)
    {
      return 0;
    }
  }

  else
  {
    if (*v37 != *v39)
    {
      LOBYTE(v40) = 1;
    }

    if (v40)
    {
      return 0;
    }
  }

  v41 = v20[9];
  v42 = (a1 + v41);
  v43 = *(a1 + v41 + 8);
  v44 = (a2 + v41);
  v45 = *(a2 + v41 + 8);
  if (v43)
  {
    if (!v45)
    {
      return 0;
    }
  }

  else
  {
    if (*v42 != *v44)
    {
      LOBYTE(v45) = 1;
    }

    if (v45)
    {
      return 0;
    }
  }

  v46 = v20[10];
  v47 = (a1 + v46);
  v48 = *(a1 + v46 + 8);
  v49 = (a2 + v46);
  v50 = *(a2 + v46 + 8);
  if (v48)
  {
    if (!v50)
    {
      return 0;
    }
  }

  else
  {
    if (*v47 != *v49)
    {
      LOBYTE(v50) = 1;
    }

    if (v50)
    {
      return 0;
    }
  }

  v51 = v20[11];
  v52 = (a1 + v51);
  v53 = *(a1 + v51 + 8);
  v54 = (a2 + v51);
  v55 = v54[1];
  if (v53)
  {
    if (!v55)
    {
      return 0;
    }

    if (*v52 != *v54 || v53 != v55)
    {
      v56 = v20;
      v57 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v20 = v56;
      if ((v57 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v55)
  {
    return 0;
  }

  v58 = v20[12];
  v59 = (a1 + v58);
  v60 = *(a1 + v58 + 8);
  v61 = (a2 + v58);
  v62 = *(a2 + v58 + 8);
  if (v60)
  {
    if (!v62)
    {
      return 0;
    }
  }

  else
  {
    if (*v59 != *v61)
    {
      LOBYTE(v62) = 1;
    }

    if (v62)
    {
      return 0;
    }
  }

  v63 = v20[13];
  v64 = (a1 + v63);
  v65 = *(a1 + v63 + 8);
  v66 = (a2 + v63);
  v67 = *(a2 + v63 + 8);
  if (v65)
  {
    if (!v67)
    {
      return 0;
    }
  }

  else
  {
    if (*v64 != *v66)
    {
      LOBYTE(v67) = 1;
    }

    if (v67)
    {
      return 0;
    }
  }

  v68 = v20[14];
  v69 = (a1 + v68);
  v70 = *(a1 + v68 + 8);
  v71 = (a2 + v68);
  v72 = *(a2 + v68 + 8);
  if (v70)
  {
    if (!v72)
    {
      return 0;
    }
  }

  else
  {
    if (*v69 != *v71)
    {
      LOBYTE(v72) = 1;
    }

    if (v72)
    {
      return 0;
    }
  }

  v73 = v20[15];
  v74 = (a1 + v73);
  v75 = *(a1 + v73 + 8);
  v76 = (a2 + v73);
  v77 = v76[1];
  if (v75)
  {
    if (!v77)
    {
      return 0;
    }

    if (*v74 != *v76 || v75 != v77)
    {
      v78 = v20;
      v79 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v20 = v78;
      if ((v79 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v77)
  {
    return 0;
  }

  v80 = v20[16];
  v81 = (a1 + v80);
  v82 = *(a1 + v80 + 8);
  v83 = (a2 + v80);
  v84 = v83[1];
  if (v82)
  {
    if (!v84)
    {
      return 0;
    }

    v85 = v20;
    if ((*v81 != *v83 || v82 != v84) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v85 = v20;
    if (v84)
    {
      return 0;
    }
  }

  v86 = v85[17];
  v87 = (a1 + v86);
  v88 = *(a1 + v86 + 8);
  v89 = (a2 + v86);
  v90 = *(a2 + v86 + 8);
  if (v88)
  {
    if (!v90)
    {
      return 0;
    }
  }

  else
  {
    if (*v87 != *v89)
    {
      LOBYTE(v90) = 1;
    }

    if (v90)
    {
      return 0;
    }
  }

  v91 = v85[18];
  v92 = (a1 + v91);
  v93 = *(a1 + v91 + 8);
  v94 = (a2 + v91);
  v95 = *(a2 + v91 + 8);
  if (v93)
  {
    if (!v95)
    {
      return 0;
    }
  }

  else
  {
    if (*v92 != *v94)
    {
      LOBYTE(v95) = 1;
    }

    if (v95)
    {
      return 0;
    }
  }

  v96 = v85[19];
  v97 = (a1 + v96);
  v98 = *(a1 + v96 + 8);
  v99 = (a2 + v96);
  v100 = *(a2 + v96 + 8);
  if (v98)
  {
    if (!v100)
    {
      return 0;
    }
  }

  else
  {
    if (*v97 != *v99)
    {
      LOBYTE(v100) = 1;
    }

    if (v100)
    {
      return 0;
    }
  }

  v101 = v85[20];
  v102 = (a1 + v101);
  v103 = *(a1 + v101 + 8);
  v104 = (a2 + v101);
  v105 = *(a2 + v101 + 8);
  if (v103)
  {
    if (!v105)
    {
      return 0;
    }
  }

  else
  {
    if (*v102 != *v104)
    {
      LOBYTE(v105) = 1;
    }

    if (v105)
    {
      return 0;
    }
  }

  v106 = v85[21];
  v107 = (a1 + v106);
  v108 = *(a1 + v106 + 8);
  v109 = (a2 + v106);
  v110 = *(a2 + v106 + 8);
  if (v108)
  {
    if (!v110)
    {
      return 0;
    }
  }

  else
  {
    if (*v107 != *v109)
    {
      LOBYTE(v110) = 1;
    }

    if (v110)
    {
      return 0;
    }
  }

  v111 = v85[22];
  v112 = (a1 + v111);
  v113 = *(a1 + v111 + 8);
  v114 = (a2 + v111);
  v115 = *(a2 + v111 + 8);
  if (v113)
  {
    if (!v115)
    {
      return 0;
    }
  }

  else
  {
    if (*v112 != *v114)
    {
      LOBYTE(v115) = 1;
    }

    if (v115)
    {
      return 0;
    }
  }

  v116 = v85[23];
  v117 = (a1 + v116);
  v118 = *(a1 + v116 + 8);
  v119 = (a2 + v116);
  v120 = *(a2 + v116 + 8);
  if (v118)
  {
    if (!v120)
    {
      return 0;
    }
  }

  else
  {
    if (*v117 != *v119)
    {
      LOBYTE(v120) = 1;
    }

    if (v120)
    {
      return 0;
    }
  }

  v121 = v85[24];
  v122 = (a1 + v121);
  v123 = *(a1 + v121 + 8);
  v124 = (a2 + v121);
  v125 = *(a2 + v121 + 8);
  if (v123)
  {
    if (!v125)
    {
      return 0;
    }
  }

  else
  {
    if (*v122 != *v124)
    {
      LOBYTE(v125) = 1;
    }

    if (v125)
    {
      return 0;
    }
  }

  v126 = v85[25];
  v127 = (a1 + v126);
  v128 = *(a1 + v126 + 8);
  v129 = (a2 + v126);
  v130 = *(a2 + v126 + 8);
  if (v128)
  {
    if (!v130)
    {
      return 0;
    }
  }

  else
  {
    if (*v127 != *v129)
    {
      LOBYTE(v130) = 1;
    }

    if (v130)
    {
      return 0;
    }
  }

  v131 = v85[26];
  v132 = (a1 + v131);
  v133 = *(a1 + v131 + 8);
  v134 = (a2 + v131);
  v135 = *(a2 + v131 + 8);
  if (v133)
  {
    if (!v135)
    {
      return 0;
    }
  }

  else
  {
    if (*v132 != *v134)
    {
      LOBYTE(v135) = 1;
    }

    if (v135)
    {
      return 0;
    }
  }

  v136 = v85[27];
  v137 = (a1 + v136);
  v138 = *(a1 + v136 + 8);
  v139 = (a2 + v136);
  v140 = *(a2 + v136 + 8);
  if (v138)
  {
    if (!v140)
    {
      return 0;
    }
  }

  else
  {
    if (*v137 != *v139)
    {
      LOBYTE(v140) = 1;
    }

    if (v140)
    {
      return 0;
    }
  }

  v141 = v85[28];
  v142 = (a1 + v141);
  v143 = *(a1 + v141 + 8);
  v144 = (a2 + v141);
  v145 = *(a2 + v141 + 8);
  if ((v143 & 1) == 0)
  {
    if (*v142 != *v144)
    {
      v145 = 1;
    }

    return (v145 & 1) == 0;
  }

  return (v145 & 1) != 0;
}

unint64_t sub_100191DD4()
{
  result = qword_1002D9AE0[0];
  if (!qword_1002D9AE0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1002D9AE0);
  }

  return result;
}

uint64_t sub_100191E28(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100164A3C(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_100191E90(uint64_t a1, uint64_t a2)
{
  v4 = _s8SnapshotVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100191EF4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

NSString sub_100191F54(uint64_t a1)
{
  if (a1)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      sub_1001909D0(0, v3, 0);
      v4 = _swiftEmptyArrayStorage;
      v5 = (a1 + 40);
      do
      {
        v7 = *v5;
        v5 += 2;
        v6 = v7;
        if (v7)
        {

          v6 = String.init<A>(describing:)();
        }

        else
        {
          v8 = 0xE000000000000000;
        }

        v16 = v4;
        v10 = v4[2];
        v9 = v4[3];
        if (v10 >= v9 >> 1)
        {
          v12 = v6;
          v13 = v8;
          sub_1001909D0((v9 > 1), v10 + 1, 1);
          v8 = v13;
          v6 = v12;
          v4 = v16;
        }

        v4[2] = v10 + 1;
        v11 = &v4[2 * v10];
        v11[4] = v6;
        v11[5] = v8;
        --v3;
      }

      while (v3);
    }

    sub_100164A3C(&qword_1002D6CD0, &qword_10024AB08);
    sub_1001926EC();
    BidirectionalCollection<>.joined(separator:)();

    v14 = String._bridgeToObjectiveC()();

    return v14;
  }

  else
  {

    return String._bridgeToObjectiveC()();
  }
}

NSString sub_1001920D8(uint64_t a1)
{
  if (a1)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      sub_1001909D0(0, v3, 0);
      v4 = _swiftEmptyArrayStorage;
      v5 = (a1 + 40);
      do
      {
        if (*v5)
        {
          v6 = 0;
          v7 = 0xE000000000000000;
        }

        else
        {
          v6 = String.init<A>(describing:)();
        }

        v15 = v4;
        v9 = v4[2];
        v8 = v4[3];
        if (v9 >= v8 >> 1)
        {
          v11 = v6;
          v12 = v7;
          sub_1001909D0((v8 > 1), v9 + 1, 1);
          v7 = v12;
          v6 = v11;
          v4 = v15;
        }

        v4[2] = v9 + 1;
        v10 = &v4[2 * v9];
        v10[4] = v6;
        v10[5] = v7;
        v5 += 16;
        --v3;
      }

      while (v3);
    }

    sub_100164A3C(&qword_1002D6CD0, &qword_10024AB08);
    sub_1001926EC();
    BidirectionalCollection<>.joined(separator:)();

    v13 = String._bridgeToObjectiveC()();

    return v13;
  }

  else
  {

    return String._bridgeToObjectiveC()();
  }
}

void sub_1001922C8(uint64_t a1)
{
  sub_1001923F4(319);
  if (v1 <= 0x3F)
  {
    sub_100164220(319, &qword_1002D5C00, &type metadata for Double);
    if (v2 <= 0x3F)
    {
      sub_100164220(319, qword_1002D8100, &type metadata for Int);
      if (v3 <= 0x3F)
      {
        sub_100164220(319, &unk_1002D7D10, &type metadata for String);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1001923F4(uint64_t a1)
{
  if (!qword_1002D7F00)
  {
    type metadata accessor for Date();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1002D7F00);
    }
  }
}

uint64_t _s8SnapshotV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE8)
  {
    goto LABEL_17;
  }

  if (a2 + 24 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 24) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 24;
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

      return (*a1 | (v4 << 8)) - 24;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 24;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x19;
  v8 = v6 - 25;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s8SnapshotV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 24 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 24) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE8)
  {
    v4 = 0;
  }

  if (a2 > 0xE7)
  {
    v5 = ((a2 - 232) >> 8) + 1;
    *result = a2 + 24;
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
    *result = a2 + 24;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1001925E8()
{
  result = qword_1002D9E00[0];
  if (!qword_1002D9E00[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1002D9E00);
  }

  return result;
}

unint64_t sub_100192640()
{
  result = qword_1002D9F10;
  if (!qword_1002D9F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D9F10);
  }

  return result;
}

unint64_t sub_100192698()
{
  result = qword_1002D9F18[0];
  if (!qword_1002D9F18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1002D9F18);
  }

  return result;
}

unint64_t sub_1001926EC()
{
  result = qword_1002D6CD8;
  if (!qword_1002D6CD8)
  {
    sub_100169B50(&qword_1002D6CD0, &qword_10024AB08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D6CD8);
  }

  return result;
}

uint64_t sub_100192750(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10019279C(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  [a1 activate];
  return v2;
}

uint64_t sub_1001927E8()
{
  v1 = *(v0 + 16);
  v2 = objc_opt_self();
  v3 = v1;
  v4 = [v2 eventIDWithType:0 interfaceName:0];
  [v3 setEventHandler:0 eventID:v4];

  [*(v0 + 16) stopMonitoringAllEvents];
  [*(v0 + 16) invalidate];

  return v0;
}

uint64_t sub_100192898()
{
  sub_1001927E8();

  return swift_deallocClassInstance();
}

id sub_1001928CC(uint64_t a1, void *a2, void *a3)
{
  v5 = *(v3 + 16);
  if (a2)
  {
    aBlock[4] = a2;
    aBlock[5] = a3;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000191C0;
    aBlock[3] = &unk_1002B6820;
    v6 = _Block_copy(aBlock);
  }

  else
  {
    v6 = 0;
  }

  v7 = [v5 interfaceName];
  if (v7)
  {
    v8 = v7;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v9 = String._bridgeToObjectiveC()();
  }

  else
  {
    v9 = 0;
  }

  v10 = objc_opt_self();
  v11 = [v10 eventIDWithType:a1 interfaceName:v9];

  [v5 setEventHandler:v6 eventID:v11];
  _Block_release(v6);
  v12 = [v5 interfaceName];
  if (v12)
  {
    v13 = v12;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v14 = String._bridgeToObjectiveC()();
  }

  else
  {
    v14 = 0;
  }

  v15 = [v10 eventIDWithType:a1 interfaceName:v14];

  aBlock[0] = 0;
  v16 = [v5 startMonitoringEvent:v15 error:aBlock];

  if (v16)
  {
    return aBlock[0];
  }

  v18 = aBlock[0];
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

uint64_t sub_100192B30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_100192B48@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v25 = [v3 RSSI];
  v4 = [v3 networkName];
  if (v4)
  {
    v5 = v4;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v7;
    v23 = v6;
  }

  else
  {
    v21 = 0;
    v23 = 0;
  }

  v8 = [v3 noise];
  v9 = [v3 CCA];
  v10 = [v3 channel];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 channel];
  }

  else
  {
    v12 = 0;
  }

  v13 = [v3 channel];
  if (v13)
  {
    v14 = v13;
    [v13 width];

    sub_100192D40();
    v15 = BinaryInteger.description.getter();
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0;
  }

  result = [v3 channel];
  if (result)
  {
    v19 = result;
    [result band];

    sub_100192D40();
    result = BinaryInteger.description.getter();
  }

  else
  {
    v20 = 0;
  }

  *a1 = v25;
  *(a1 + 8) = 0;
  *(a1 + 16) = v24;
  *(a1 + 24) = v22;
  *(a1 + 32) = v8;
  *(a1 + 40) = 0;
  *(a1 + 48) = v9;
  *(a1 + 56) = 0;
  *(a1 + 64) = v12;
  *(a1 + 72) = v11 == 0;
  *(a1 + 80) = v15;
  *(a1 + 88) = v17;
  *(a1 + 96) = result;
  *(a1 + 104) = v20;
  return result;
}

unint64_t sub_100192D40()
{
  result = qword_1002D6D00;
  if (!qword_1002D6D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D6D00);
  }

  return result;
}

__n128 sub_100192DA4(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_100192DC8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 112))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_100192E24(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

void *sub_100192ED8()
{
  if (qword_1002D9FA0 != -1)
  {
    swift_once();
  }

  return &unk_1002DBF98;
}

BOOL sub_100192F28()
{
  v1 = sub_100164A3C(&unk_1002D7BD0, &unk_10024A800);
  __chkstk_darwin(v1 - 8);
  v3 = &v17 - v2;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v17 - v9;
  if (!*(*(v0 + 144) + 16) || *(v0 + OBJC_IVAR___WISWiFiToCellTransitionMonitor_numberOfEventsUndersampledOnNoTransition) > 1)
  {
    return 0;
  }

  v11 = OBJC_IVAR___WISWiFiToCellTransitionMonitor_lastNoTransitionEventTimestamp;
  swift_beginAccess();
  sub_10001A718(v0 + v11, v3, &unk_1002D7BD0, &unk_10024A800);
  v12 = *(v5 + 48);
  if (v12(v3, 1, v4) == 1)
  {
    static Date.distantPast.getter();
    if (v12(v3, 1, v4) != 1)
    {
      sub_1000157F0(v3, &unk_1002D7BD0, &unk_10024A800);
    }
  }

  else
  {
    (*(v5 + 32))(v10, v3, v4);
  }

  static Date.now.getter();
  Date.distance(to:)();
  v15 = v14;
  v16 = *(v5 + 8);
  v16(v8, v4);
  v16(v10, v4);
  return v15 >= 3600.0;
}

uint64_t sub_100193194()
{
  v1[5] = v0;
  v1[6] = swift_getObjectType();
  sub_100164A3C(&unk_1002D7BD0, &unk_10024A800);
  v1[7] = swift_task_alloc();
  v2 = type metadata accessor for Logger();
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v3 = type metadata accessor for ContinuousClock();
  v1[12] = v3;
  v1[13] = *(v3 - 8);
  v1[14] = swift_task_alloc();

  return _swift_task_switch(sub_100193300, v0, 0);
}

uint64_t sub_100193300()
{
  v1 = static Duration.seconds(_:)();
  v3 = v2;
  static Clock<>.continuous.getter();
  v4 = swift_task_alloc();
  *(v0 + 120) = v4;
  *v4 = v0;
  v4[1] = sub_1001933E4;

  return sub_10019A818(v1, v3, 0, 0, 1);
}

uint64_t sub_1001933E4()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 104);
  v5 = *(*v1 + 96);
  *(*v1 + 128) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 40);
  if (v0)
  {
    v7 = sub_100193738;
  }

  else
  {
    v7 = sub_10019356C;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_10019356C()
{
  sub_100003E50(&off_1002B69B8, v0[11]);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 134217984;
    *(v3 + 4) = 0x40AC200000000000;
    _os_log_impl(&_mh_execute_header, v1, v2, "Reached max waiting time %fs after link down, timestamp of next link up is unknown, submitting collected events...", v3, 0xCu);
  }

  v4 = v0[11];
  v5 = v0[8];
  v6 = v0[9];
  v7 = v0[7];
  v8 = v0[5];

  (*(v6 + 8))(v4, v5);
  v9 = type metadata accessor for Date();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  v10 = OBJC_IVAR___WISWiFiToCellTransitionMonitor_timestampOfLastLinkUpChange;
  swift_beginAccess();
  sub_10019B228(v7, v8 + v10);
  swift_endAccess();
  sub_100197E7C();

  v11 = v0[1];

  return v11();
}

uint64_t sub_100193738()
{
  sub_100003E50(&off_1002B69B8, v0[10]);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  v3 = os_log_type_enabled(v1, v2);
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[8];
  if (v3)
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Task waiting to submit events after a max waiting time is canceled, link went up earlier than max waiting time", v7, 2u);
  }

  (*(v5 + 8))(v4, v6);

  v8 = v0[1];

  return v8();
}

uint64_t sub_100193888(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 56) = a1;
  *(v2 + 24) = swift_getObjectType();
  v3 = type metadata accessor for Logger();
  *(v2 + 32) = v3;
  *(v2 + 40) = *(v3 - 8);
  *(v2 + 48) = swift_task_alloc();

  return _swift_task_switch(sub_100193958, v1, 0);
}

uint64_t sub_100193958()
{
  sub_100003E50(&off_1002B69B8, *(v0 + 48));
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 56);
    v4 = swift_slowAlloc();
    *v4 = 67109120;
    *(v4 + 4) = v3;
    _os_log_impl(&_mh_execute_header, v1, v2, "Setting wistoolTreatDisassocAsBeaconLost to %{BOOL}d", v4, 8u);
  }

  v6 = *(v0 + 40);
  v5 = *(v0 + 48);
  v7 = *(v0 + 32);
  v8 = *(v0 + 16);
  v9 = *(v0 + 56);

  (*(v6 + 8))(v5, v7);
  *(v8 + OBJC_IVAR___WISWiFiToCellTransitionMonitor_wistoolTreatDisassocAsBeaconLost) = v9;

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_100193A98()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_100164A3C(&qword_1002D7180, &qword_10024ABF0);
  __chkstk_darwin(v2 - 8);
  v4 = &v22 - v3;
  v5 = sub_100164A3C(&unk_1002D7BD0, &unk_10024A800);
  __chkstk_darwin(v5 - 8);
  v7 = &v22 - v6;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003E50(&off_1002B69B8, v11);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Starting snapshot task...", v14, 2u);
  }

  (*(v9 + 8))(v11, v8);
  static Date.now.getter();
  v15 = type metadata accessor for Date();
  (*(*(v15 - 8) + 56))(v7, 0, 1, v15);
  v16 = OBJC_IVAR___WISWiFiToCellTransitionMonitor_startTimeOfCurrentSnapshotTask;
  swift_beginAccess();
  sub_10019B228(v7, v1 + v16);
  swift_endAccess();
  v17 = OBJC_IVAR___WISWiFiToCellTransitionMonitor_snapshotTask;
  if (*(v1 + OBJC_IVAR___WISWiFiToCellTransitionMonitor_snapshotTask))
  {

    sub_100164A3C(&qword_1002D7A10, &qword_10024AC20);
    Task.cancel()();
  }

  *(v1 + v17) = 0;

  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v4, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = v1;

  v20 = sub_100193EC0(0, 0, v4, &unk_10024ADD8, v19);
  sub_1000157F0(v4, &qword_1002D7180, &qword_10024ABF0);
  *(v1 + v17) = v20;
}

uint64_t sub_100193E30()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100002A58;

  return sub_100194400();
}

uint64_t sub_100193EC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100164A3C(&qword_1002D7180, &qword_10024ABF0);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_10001A718(a3, v22 - v9, &qword_1002D7180, &qword_10024ABF0);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1000157F0(v10, &qword_1002D7180, &qword_10024ABF0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_10019412C()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_100164A3C(&unk_1002D7BD0, &unk_10024A800);
  __chkstk_darwin(v2 - 8);
  v4 = &v16 - v3;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003E50(&off_1002B69B8, v8);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Stopping snapshot task...", v11, 2u);
  }

  (*(v6 + 8))(v8, v5);
  v12 = type metadata accessor for Date();
  (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
  v13 = OBJC_IVAR___WISWiFiToCellTransitionMonitor_startTimeOfCurrentSnapshotTask;
  swift_beginAccess();
  sub_10019B228(v4, v1 + v13);
  swift_endAccess();
  v14 = OBJC_IVAR___WISWiFiToCellTransitionMonitor_snapshotTask;
  if (*(v1 + OBJC_IVAR___WISWiFiToCellTransitionMonitor_snapshotTask))
  {

    sub_100164A3C(&qword_1002D7A10, &qword_10024AC20);
    Task.cancel()();
  }

  *(v1 + v14) = 0;

  return (*((swift_isaMask & *v1) + 0x280))(1);
}

uint64_t sub_100194400()
{
  v1[5] = v0;
  v1[6] = swift_getObjectType();
  v2 = type metadata accessor for ContinuousClock();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  sub_100164A3C(&unk_1002D7BD0, &unk_10024A800);
  v1[11] = swift_task_alloc();
  sub_100164A3C(&qword_1002D7180, &qword_10024ABF0);
  v1[12] = swift_task_alloc();
  v3 = type metadata accessor for Logger();
  v1[13] = v3;
  v1[14] = *(v3 - 8);
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v4 = type metadata accessor for Date();
  v1[17] = v4;
  v1[18] = *(v4 - 8);
  v1[19] = swift_task_alloc();

  return _swift_task_switch(sub_100003738, v0, 0);
}

uint64_t sub_10019460C()
{
  v1 = *(*v0 + 40);

  return _swift_task_switch(sub_10019471C, v1, 0);
}

uint64_t sub_10019471C(uint64_t result)
{
  if (*(*(v1 + 40) + *(v1 + 176)) == 1)
  {
    v2 = *(sub_100195DD8() + 2);

    if (v2 >= 0x12)
    {
      sub_100003E50(&off_1002B69B8, *(v1 + 120));

      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = *(v1 + 192);
        v6 = *(v1 + 40);
        v7 = swift_slowAlloc();
        *v7 = 134218496;
        v8 = *(v6 + v5);
        *(v7 + 4) = v8;
        *(v7 + 12) = 2048;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_13;
        }

        *(v7 + 14) = v8 + 1;
        v9 = v7;

        *(v9 + 22) = 2048;
        *(v9 + 24) = 2;
        _os_log_impl(&_mh_execute_header, v3, v4, "Undersampling a NO transition event. Current number of undersampled events with NO transition on current network: %ld, increasing to %ld, max. allowed is %ld", v9, 0x20u);
      }

      else
      {
      }

      v10 = *(v1 + 264);
      v12 = *(v1 + 184);
      v11 = *(v1 + 192);
      v14 = *(v1 + 144);
      v13 = *(v1 + 152);
      v15 = *(v1 + 136);
      v16 = *(v1 + 88);
      v17 = *(v1 + 40);
      (*(v1 + 200))(*(v1 + 120), *(v1 + 104));
      sub_1001964D8(0, v13, 0, v10);
      (*(v14 + 16))(v16, v13, v15);
      (*(v14 + 56))(v16, 0, 1, v15);
      swift_beginAccess();
      sub_10019B228(v16, v17 + v12);
      v7 = swift_endAccess();
      v18 = *(v17 + v11);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        v21 = *(v1 + 176);
        v22 = *(v1 + 40);
        *(v22 + *(v1 + 192)) = v20;
        *(v22 + v21) = 0;
        goto LABEL_9;
      }

      __break(1u);
LABEL_13:
      __break(1u);
      return v7;
    }
  }

LABEL_9:
  static Clock<>.continuous.getter();
  v23 = swift_task_alloc();
  *(v1 + 224) = v23;
  *v23 = v1;
  v23[1] = sub_1001949DC;

  return sub_10019A818(1000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_1001949DC()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[10];
  v5 = v2[8];
  v6 = v2[7];
  v7 = v2[5];
  v8 = (v5 + 8);
  if (v0)
  {

    v9 = *v8;
    v3[30] = *v8;
    v9(v4, v6);
    v10 = sub_100002E98;
  }

  else
  {
    v11 = *v8;
    v3[29] = *v8;
    v11(v4, v6);
    v10 = sub_100194B90;
  }

  return _swift_task_switch(v10, v7, 0);
}

uint64_t sub_100194B90()
{
  *(v0 + 248) = *(v0 + 232);
  (*(v0 + 160))(0);
  static Clock<>.continuous.getter();
  v1 = swift_task_alloc();
  *(v0 + 256) = v1;
  *v1 = v0;
  v1[1] = sub_100194C7C;

  return sub_10019A818(4000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_100194C7C()
{
  v2 = *v1;

  v3 = v2[31];
  v4 = v2[9];
  v5 = v2[7];
  v6 = v2[5];
  if (v0)
  {

    v3(v4, v5);
    v7 = sub_10019C104;
  }

  else
  {
    v3(v4, v5);
    v7 = sub_100194E38;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_100194E38()
{
  (*(*(v0 + 144) + 8))(*(v0 + 152), *(v0 + 136));
  if (static Task<>.isCancelled.getter())
  {

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v3 = *(v0 + 176);
    v4 = *(v0 + 40);
    static Date.now.getter();
    v5 = (*(v4 + v3) & 1) != 0 || sub_100192F28() && vcvtd_n_f64_u64(sub_10019B150(0x20000000000001uLL), 0x35uLL) < 0.0025;
    v6 = *(v0 + 128);
    *(*(v0 + 40) + *(v0 + 176)) = v5;
    sub_100003E50(&off_1002B69B8, v6);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = *(v0 + 176);
      v10 = *(v0 + 40);
      v11 = swift_slowAlloc();
      *v11 = 67109120;
      *(v11 + 4) = *(v10 + v9);

      _os_log_impl(&_mh_execute_header, v7, v8, "Currently undersampling a no transition event: %{BOOL}d", v11, 8u);
    }

    else
    {
    }

    v12 = *(v0 + 128);
    v13 = *(v0 + 104);
    v14 = *(v0 + 112);
    v15 = *(v14 + 8);
    *(v0 + 200) = v15;
    *(v0 + 208) = (v14 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v15(v12, v13);
    v16 = sub_100002F84();
    *(v0 + 264) = v16 & 1;
    v17 = *(v0 + 40);
    if ((v16 & 1) != 0 || *(v17 + *(v0 + 176)) == 1)
    {
      if ((*(v17 + 152) & 1) == 0)
      {
        v18 = *(v0 + 96);
        v19 = *(v0 + 48);
        v20 = type metadata accessor for TaskPriority();
        (*(*(v20 - 8) + 56))(v18, 1, 1, v20);
        v21 = sub_10019BF0C(&qword_1002D6DA8, type metadata accessor for WiFiToCellTransitionMonitor, &unk_10024AC68);
        v22 = swift_allocObject();
        v22[2] = v17;
        v22[3] = v21;
        v22[4] = v17;
        v22[5] = v19;
        swift_retain_n();
        sub_100176B80(0, 0, v18, &unk_10024ADB0, v22);
      }

      v23 = swift_task_alloc();
      *(v0 + 216) = v23;
      *v23 = v0;
      v23[1] = sub_10019460C;
      v24 = *(v0 + 152);

      return sub_100199678(v24);
    }

    else
    {
      v25 = *(v0 + 160);
      sub_1000035A8();
      v25(1);
      static Clock<>.continuous.getter();
      v26 = swift_task_alloc();
      *(v0 + 224) = v26;
      *v26 = v0;
      v26[1] = sub_1001949DC;

      return sub_10019A818(1000000000000000000, 0, 0, 0, 1);
    }
  }
}

uint64_t sub_10019528C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v7 = type metadata accessor for Logger();
  v5[4] = v7;
  v5[5] = *(v7 - 8);
  v5[6] = swift_task_alloc();

  return _swift_task_switch(sub_100195350, a4, 0);
}

uint64_t sub_100195350()
{
  sub_100003E50(&off_1002B69B8, v0[6]);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Starting all readers (ioKitReader, motionReader, locationEnvironmentReader)...", v3, 2u);
  }

  v5 = v0[5];
  v4 = v0[6];
  v6 = v0[4];
  v7 = v0[2];

  (*(v5 + 8))(v4, v6);
  sub_100182E54();
  v8 = *(v7 + 120);
  v0[7] = v8;
  v9 = *v8;
  v0[8] = *(*v8 + 264);
  v0[9] = (v9 + 264) & 0xFFFFFFFFFFFFLL | 0x360000000000000;

  return _swift_task_switch(sub_1001954B0, v8, 0);
}

uint64_t sub_1001954B0()
{
  v1 = *(v0 + 16);
  (*(v0 + 64))();

  return _swift_task_switch(sub_100195520, v1, 0);
}

uint64_t sub_100195520()
{
  v1 = *(v0[2] + 128);
  v0[10] = v1;
  v2 = *v1 + 312;
  v0[11] = *v2;
  v0[12] = v2 & 0xFFFFFFFFFFFFLL | 0x9549000000000000;
  return _swift_task_switch(sub_100195568, v1, 0);
}

uint64_t sub_100195568()
{
  v1 = *(v0 + 16);
  (*(v0 + 88))();

  return _swift_task_switch(sub_1001955D8, v1, 0);
}

uint64_t sub_1001955D8()
{
  *(*(v0 + 16) + 152) = 1;

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100195644(int a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_100164A3C(&qword_1002D7180, &qword_10024ABF0);
  __chkstk_darwin(v5 - 8);
  v7 = &v21 - v6;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v10) = *(v2 + 152);
  v22 = a1;
  if (v10 == 1)
  {
    *(v2 + 153) = 0;
    v12 = 1;
  }

  else if ((a1 & 1) != 0 && (*(v2 + 153) & 1) == 0)
  {
    v12 = 1;
    *(v2 + 153) = 1;
  }

  else
  {
    v12 = 0;
  }

  sub_100003E50(&off_1002B69B8, v11);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v21 = v9;
    v16 = v15;
    *v15 = 67109888;
    *(v15 + 4) = *(v2 + 152);
    *(v15 + 8) = 1024;
    *(v15 + 10) = *(v2 + 153);

    *(v16 + 14) = 1024;
    *(v16 + 16) = v22 & 1;
    *(v16 + 20) = 1024;
    *(v16 + 22) = v12;
    _os_log_impl(&_mh_execute_header, v13, v14, "Stopping all readers with areReadersRunning %{BOOL}d and forcedReadersStop %{BOOL}d (doForce %{BOOL}d) -> isStopNecessary %{BOOL}d", v16, 0x1Au);
    v9 = v21;
  }

  else
  {
  }

  result = (*(v9 + 8))(v11, v8);
  if (v12)
  {
    v18 = type metadata accessor for TaskPriority();
    (*(*(v18 - 8) + 56))(v7, 1, 1, v18);
    v19 = sub_10019BF0C(&qword_1002D6DA8, type metadata accessor for WiFiToCellTransitionMonitor, &unk_10024AC68);
    v20 = swift_allocObject();
    *(v20 + 16) = v2;
    *(v20 + 24) = v19;
    *(v20 + 32) = v22 & 1;
    *(v20 + 40) = v2;
    *(v20 + 48) = ObjectType;
    swift_retain_n();
    sub_100176B80(0, 0, v7, &unk_10024AC00, v20);
  }

  return result;
}

uint64_t sub_10019598C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a5;
  *(v6 + 24) = a6;
  *(v6 + 104) = a4;
  v8 = type metadata accessor for Logger();
  *(v6 + 32) = v8;
  *(v6 + 40) = *(v8 - 8);
  *(v6 + 48) = swift_task_alloc();

  return _swift_task_switch(sub_100195A54, a5, 0);
}

uint64_t sub_100195A54()
{
  sub_100003E50(&off_1002B69B8, *(v0 + 48));

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 16);
  if (v3)
  {
    v5 = *(v0 + 104);
    v6 = swift_slowAlloc();
    *v6 = 67109376;
    *(v6 + 4) = v5;
    *(v6 + 8) = 1024;
    *(v6 + 10) = *(v4 + 153);

    _os_log_impl(&_mh_execute_header, v1, v2, "Stopping all readers (ioKitReader, motionReader, locationEnvironmentReader) with doForce %{BOOL}d, forcedReadersStop %{BOOL}d...", v6, 0xEu);
  }

  else
  {
  }

  v7 = *(v0 + 16);
  (*(*(v0 + 40) + 8))(*(v0 + 48), *(v0 + 32));
  v8 = *(v7 + 120);
  *(v0 + 56) = v8;
  v9 = *v8;
  *(v0 + 64) = *(*v8 + 272);
  *(v0 + 72) = (v9 + 272) & 0xFFFFFFFFFFFFLL | 0x5D58000000000000;

  return _swift_task_switch(sub_100195BE4, v8, 0);
}

uint64_t sub_100195BE4()
{
  v1 = *(v0 + 16);
  (*(v0 + 64))();

  return _swift_task_switch(sub_100195C54, v1, 0);
}

uint64_t sub_100195C54()
{
  v1 = *(v0 + 16);
  sub_1001830C4(*(v0 + 104));
  v2 = *(v1 + 128);
  *(v0 + 80) = v2;
  v3 = *v2;
  *(v0 + 88) = *(*v2 + 320);
  *(v0 + 96) = (v3 + 320) & 0xFFFFFFFFFFFFLL | 0x55B7000000000000;

  return _swift_task_switch(sub_100195CFC, v2, 0);
}

uint64_t sub_100195CFC()
{
  v1 = *(v0 + 16);
  (*(v0 + 88))(*(v0 + 104));

  return _swift_task_switch(sub_100195D70, v1, 0);
}

uint64_t sub_100195D70()
{
  *(*(v0 + 16) + 152) = 0;

  v1 = *(v0 + 8);

  return v1();
}

char *sub_100195DD8()
{
  ObjectType = swift_getObjectType();
  v1 = type metadata accessor for Logger();
  v50 = *(v1 - 8);
  v51 = v1;
  v2 = __chkstk_darwin(v1);
  v48 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v45 = &v44 - v4;
  v54 = _s8SnapshotVMa(0);
  v5 = *(v54 - 8);
  v6 = __chkstk_darwin(v54);
  v52 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v44 - v8;
  v10 = OBJC_IVAR___WISWiFiToCellTransitionMonitor_snapshots;
  swift_beginAccess();
  v47 = v0;
  v46 = v10;
  v11 = *(v0 + v10);
  v12 = *(v11 + 16);
  v53 = v9 + 8;

  v14 = (v12 + 1);
  v15 = 2 * v12 + 3;
  do
  {
    if (!v12)
    {

      v36 = v48;
      sub_100003E50(&off_1002B69B8, v48);
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v37, v38))
      {
        goto LABEL_29;
      }

      v39 = swift_slowAlloc();
      *v39 = 0;
      v40 = "There are no snapshots with network name not nil";
      goto LABEL_28;
    }

    if (v12 > *(v11 + 16))
    {
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    --v12;
    v16 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v17 = *(v5 + 72);
    sub_100191E90(v11 + v16 + v17 * v12, v9);
    v18 = *&v53[*(v54 + 44)];

    result = sub_10019BE18(v9);
    --v14;
    v15 -= 2;
  }

  while (!v18);

  v19 = *(v47 + v46);
  v20 = (v12 + 1);
  if ((v12 + 1) > *(v19 + 16) || (v21 = (v19 + v16 + *(v54 + 44) + v17 * v12), (v22 = v21[1]) == 0))
  {
    v36 = v45;
    sub_100003E50(&off_1002B69B8, v45);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v37, v38))
    {
      goto LABEL_29;
    }

    v39 = swift_slowAlloc();
    *v39 = 0;
    v40 = "Invalid snapshot index";
LABEL_28:
    _os_log_impl(&_mh_execute_header, v37, v38, v40, v39, 2u);

LABEL_29:

    (*(v50 + 8))(v36, v51);
    return _swiftEmptyArrayStorage;
  }

  v23 = (v12 - 17);
  if (v20 < 18)
  {
    v23 = 0;
  }

  if (v20 >= v23)
  {
    v50 = v19 + v16;
    v53 = v23;
    if ((v23 & 0x8000000000000000) == 0)
    {
      v24 = *v21;

      v25 = 18;
      if (v14 > 18)
      {
        v25 = v14;
      }

      v26 = v19;
      v27 = v25 - v12 - 19;
      ObjectType = v26;
      v28 = v26 + v16 + v17 * v12;
      v29 = -v17;
      v51 = (v12 + 1);
      while (1)
      {
        if (v53 >= v20)
        {
          goto LABEL_42;
        }

        v31 = v52;
        sub_100191E90(v28, v52);
        v32 = (v31 + *(v54 + 44));
        v33 = v32[1];
        if (!v33)
        {
          break;
        }

        if (*v32 == v24 && v33 == v22)
        {
          result = sub_10019BE18(v52);
        }

        else
        {
          v35 = _stringCompareWithSmolCheck(_:_:expecting:)();
          result = sub_10019BE18(v52);
          if ((v35 & 1) == 0)
          {
            goto LABEL_33;
          }
        }

        v28 += v29;
        --v20;
        if (__CFADD__(v27++, 1))
        {
          v41 = v53;
          v20 = v53;
          goto LABEL_35;
        }
      }

      sub_10019BE18(v52);
LABEL_33:
      v41 = v53;
LABEL_35:

      if (v51 < v20)
      {
        goto LABEL_45;
      }

      if (v20 < v41)
      {
        goto LABEL_46;
      }

      v56 = v51;
      v57 = v20;
      v58 = ObjectType;
      v59 = v50;
      v60 = 0;
      v61 = v15;
      if ((v20 - 1) == v12)
      {

        return _swiftEmptyArrayStorage;
      }

      v42 = sub_10019AFAC(&v12[-v20 + 1], 0);
      v43 = sub_10019B7D0(v55, &v42[v16], &v12[-v20 + 1]) + v20 - 1;

      result = swift_unknownObjectRelease();
      if (v43 == v12)
      {

        return v42;
      }

      goto LABEL_47;
    }

    goto LABEL_44;
  }

LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
  return result;
}

uint64_t sub_100196360(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v6 = _s8SnapshotVMa(0);
  v7 = *(v6 - 8);
  result = __chkstk_darwin(v6 - 8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a3 + 16);
  if (v11)
  {
    v12 = 0;
    while (1)
    {
      if (v12 >= *(a3 + 16))
      {
        __break(1u);
        return result;
      }

      sub_100191E90(a3 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v12, v10);
      v13 = a1(v10);
      result = sub_10019BE18(v10);
      if (v3)
      {

        return a3;
      }

      if ((v13 & 1) == 0)
      {
        break;
      }

      if (v11 == ++v12)
      {
        v12 = v11;
        break;
      }
    }

    if (*(a3 + 16) < v12)
    {
      __break(1u);
    }
  }

  return a3;
}

uint64_t sub_1001964D8(int a1, void (*a2)(char *, void, uint64_t), void *a3, int a4)
{
  v86 = a4;
  v90 = a3;
  v98 = a1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for Date();
  v88 = *(v5 - 8);
  v89 = v5;
  __chkstk_darwin(v5);
  v83 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100164A3C(&unk_1002D7BD0, &unk_10024A800);
  __chkstk_darwin(v7 - 8);
  v91 = &v82 - v8;
  v9 = type metadata accessor for Logger();
  v100 = *(v9 - 8);
  v101 = v9;
  v10 = __chkstk_darwin(v9);
  v93 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v85 = &v82 - v13;
  v14 = __chkstk_darwin(v12);
  v92 = &v82 - v15;
  __chkstk_darwin(v14);
  v87 = &v82 - v16;
  v17 = type metadata accessor for Calendar.Component();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v82 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for Calendar();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v82 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Calendar.current.getter();
  v25 = *(v18 + 104);
  v25(v20, enum case for Calendar.Component.weekday(_:), v17);
  v95 = v25;
  v84 = Calendar.component(_:from:)();
  v96 = *(v18 + 8);
  v96(v20, v17);
  v26 = *(v22 + 8);
  v26(v24, v21);
  static Calendar.current.getter();
  v25(v20, enum case for Calendar.Component.hour(_:), v17);
  v27 = a2;
  v94 = Calendar.component(_:from:)();
  v28 = v96;
  v96(v20, v17);
  v26(v24, v21);
  static Calendar.current.getter();
  v95(v20, enum case for Calendar.Component.minute(_:), v17);
  v95 = v27;
  v29 = Calendar.component(_:from:)();
  v28(v20, v17);
  LOBYTE(v17) = v98;
  v30 = v97;
  v26(v24, v21);
  v31 = v17;
  if ((v17 & 1) == 0)
  {
    goto LABEL_17;
  }

  v32 = v30 + 144;
  if (*(*(v30 + 144) + 16) >= 0x18uLL)
  {
    v21 = v87;
    sub_100003E50(&off_1002B69B8, v87);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v20 = swift_slowAlloc();
      *v20 = 134217984;
      *(v20 + 4) = 24;
      _os_log_impl(&_mh_execute_header, v33, v34, "Seen minutes of day amount is >= %ld, removing the oldest entry", v20, 0xCu);
    }

    (*(v100 + 8))(v21, v101);
    if (!*(*v32 + 16))
    {
      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    v24 = (v30 + 144);
    sub_10019BB04(0, 1, sub_10019AEA8, sub_10019BA5C);
  }

  v35 = v29 - v29 % 5;
  if (__OFSUB__(v29, v29 % 5))
  {
    __break(1u);
    goto LABEL_43;
  }

  v36 = 60 * v94;
  if ((v94 * 60) >> 64 != (60 * v94) >> 63)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v37 = __OFADD__(v36, v35);
  v38 = v36 + v35;
  if (v37)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v21 = v38 + 10;
  if (__OFADD__(v38, 10))
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v24 = *v32;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v32 = v24;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_46:
    v24 = sub_10019AEA8(0, *(v24 + 2) + 1, 1, v24);
    *v32 = v24;
  }

  v41 = *(v24 + 2);
  v40 = *(v24 + 3);
  if (v41 >= v40 >> 1)
  {
    v24 = sub_10019AEA8((v40 > 1), v41 + 1, 1, v24);
  }

  *(v24 + 2) = v41 + 1;
  *&v24[8 * v41 + 32] = v21;
  *v32 = v24;
  v42 = v92;
  sub_100003E50(&off_1002B69B8, v92);
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 134218240;
    *(v45 + 4) = v94;
    *(v45 + 12) = 2048;
    *(v45 + 14) = v29;
    _os_log_impl(&_mh_execute_header, v43, v44, "Added %ld hour, %ld minute to seen minutes of day", v45, 0x16u);
  }

  (*(v100 + 8))(v42, v101);
LABEL_17:
  if (!*(v30 + OBJC_IVAR___WISWiFiToCellTransitionMonitor_snapshotTask) || (, isCancelled = swift_task_isCancelled(), , (isCancelled & 1) != 0))
  {
    v47 = v93;
    sub_100003E50(&off_1002B69B8, v93);
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&_mh_execute_header, v48, v49, "Transition is relevant but snapshot task is not running. Ignoring...", v50, 2u);
    }

    return (*(v100 + 8))(v47, v101);
  }

  v52 = sub_100195DD8();
  __chkstk_darwin(v52);
  v81 = v95;
  v32 = sub_100196360(sub_10019BFEC, v80, v53);
  v20 = v91;
  if ((v56 & 1) == 0)
  {
    goto LABEL_23;
  }

  v29 = v56;
  v28 = v55;
  v21 = v54;
  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v62 = swift_dynamicCastClass();
  if (!v62)
  {
    swift_unknownObjectRelease();
    v62 = _swiftEmptyArrayStorage;
  }

  v63 = v62[2];

  if (__OFSUB__(v29 >> 1, v28))
  {
    goto LABEL_48;
  }

  if (v63 != (v29 >> 1) - v28)
  {
LABEL_49:
    swift_unknownObjectRelease();
    v56 = v29;
    v55 = v28;
    v54 = v21;
LABEL_23:
    sub_10019B574(v32, v54, v55, v56);
    v58 = v57;
    v59 = v89;
    v60 = v90;
    v61 = v88;
    goto LABEL_30;
  }

  v58 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  v59 = v89;
  v60 = v90;
  v61 = v88;
  if (v58)
  {
    goto LABEL_31;
  }

  v58 = _swiftEmptyArrayStorage;
LABEL_30:
  swift_unknownObjectRelease();
LABEL_31:
  if (v58[2] == 18)
  {
    v64 = OBJC_IVAR___WISWiFiToCellTransitionMonitor_startTimeOfCurrentSnapshotTask;
    swift_beginAccess();
    sub_10001A718(v30 + v64, v20, &unk_1002D7BD0, &unk_10024A800);
    v65 = (*(v61 + 48))(v20, 1, v59);
    if (v65)
    {
      sub_1000157F0(v20, &unk_1002D7BD0, &unk_10024A800);
      v66 = 0;
      if (v60)
      {
LABEL_34:
        v67 = [v60 reason];
        v68 = [v60 subreason];
        v69 = v67;
        v70 = [v60 isInvoluntaryLinkDown];
LABEL_41:
        _s15TransitionEventCMa();
        v102 = v60 == 0;
        v79 = sub_10018FEA8(v58, v31 & 1, v66, v65 != 0, v69 | (v102 << 32), v68, v102, 0, 1, 0, 1, v94, 0, v84, 0, v70, v86);
        sub_1000035A8();
        sub_100199A38(v79);
      }
    }

    else
    {
      v76 = v83;
      (*(v61 + 16))(v83, v20, v59);
      sub_1000157F0(v20, &unk_1002D7BD0, &unk_10024A800);
      Date.distance(to:)();
      v78 = v77;
      (*(v61 + 8))(v76, v59);
      v66 = v78;
      if (v60)
      {
        goto LABEL_34;
      }
    }

    v69 = 0;
    v68 = 0;
    v70 = 2;
    goto LABEL_41;
  }

  v71 = v85;
  sub_100003E50(&off_1002B69B8, v85);

  v72 = Logger.logObject.getter();
  v73 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    *v74 = 134218240;
    v75 = v58[2];

    *(v74 + 4) = v75;

    *(v74 + 12) = 2048;
    *(v74 + 14) = 18;
    _os_log_impl(&_mh_execute_header, v72, v73, "Number of sending snapshots %ld is not equal to expected (%ld). Not sending a CA event", v74, 0x16u);
  }

  else
  {
  }

  return (*(v100 + 8))(v71, v101);
}

void sub_1001970D4()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (!v2)
  {
    if (*((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

    goto LABEL_10;
  }

  if (_CocoaArrayWrapper.endIndex.getter())
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_3:
      if ((v1 & 0xC000000000000001) == 0)
      {
        if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

        if (!v2)
        {
          goto LABEL_6;
        }

        goto LABEL_12;
      }

LABEL_11:
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      if (!v2)
      {
LABEL_6:
        v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_13;
      }

LABEL_12:
      v3 = _CocoaArrayWrapper.endIndex.getter();
LABEL_13:
      if (v3)
      {
        sub_10019BCDC(0, 1);
        return;
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

LABEL_17:
  __break(1u);
}

BOOL sub_1001971AC(uint64_t a1, uint64_t a2)
{
  v3 = sub_100164A3C(&unk_1002D7BD0, &unk_10024A800);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  sub_10001A718(a1, &v11 - v4, &unk_1002D7BD0, &unk_10024A800);
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1000157F0(v5, &unk_1002D7BD0, &unk_10024A800);
    return 0;
  }

  else
  {
    Date.distance(to:)();
    v10 = v9;
    (*(v7 + 8))(v5, v6);
    return v10 <= 105.0;
  }
}

uint64_t sub_100197308(uint64_t a1)
{
  v2[13] = a1;
  v2[14] = v1;
  v2[15] = swift_getObjectType();
  sub_100164A3C(&qword_1002D7180, &qword_10024ABF0);
  v2[16] = swift_task_alloc();
  sub_100164A3C(&unk_1002D7BD0, &unk_10024A800);
  v2[17] = swift_task_alloc();
  v3 = type metadata accessor for Logger();
  v2[18] = v3;
  v2[19] = *(v3 - 8);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v4 = type metadata accessor for Date();
  v2[24] = v4;
  v2[25] = *(v4 - 8);
  v2[26] = swift_task_alloc();

  return _swift_task_switch(sub_1001974C4, v1, 0);
}

uint64_t sub_1001974C4()
{
  v78 = v0;
  if ([*(v0 + 104) type] != 6)
  {
    goto LABEL_17;
  }

  v1 = [*(v0 + 104) info];
  if (!v1)
  {
    v15 = *(v0 + 104);
    sub_100003E50(&off_1002B69B8, *(v0 + 160));
    v16 = v15;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();

    v19 = os_log_type_enabled(v17, v18);
    v20 = *(v0 + 152);
    v21 = *(v0 + 160);
    v22 = *(v0 + 144);
    if (v19)
    {
      v23 = *(v0 + 104);
      v76 = *(v0 + 160);
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v77 = v25;
      *v24 = 136315138;
      v26 = [v23 description];
      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v28;

      v30 = sub_10017A8A8(v27, v29, &v77);

      *(v24 + 4) = v30;
      v31 = "Link changed: %s. Info of the event is nil. Ignoring the event...";
LABEL_15:
      _os_log_impl(&_mh_execute_header, v17, v18, v31, v24, 0xCu);
      sub_100164B98(v25);

      (*(v20 + 8))(v76, v22);
      goto LABEL_17;
    }

LABEL_16:

    (*(v20 + 8))(v21, v22);
LABEL_17:
    if (*(*(v0 + 112) + OBJC_IVAR___WISWiFiToCellTransitionMonitor_snapshotTask))
    {

      isCancelled = swift_task_isCancelled();

      v42 = isCancelled ^ 1;
    }

    else
    {
      v42 = 0;
    }

    goto LABEL_20;
  }

  v2 = v1;
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v3 + 16))
  {

    goto LABEL_12;
  }

  v6 = sub_100164498(v4, v5);
  v8 = v7;

  if ((v8 & 1) == 0)
  {
LABEL_12:

LABEL_13:
    v32 = *(v0 + 104);
    sub_100003E50(&off_1002B69B8, *(v0 + 168));
    v33 = v32;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();

    v34 = os_log_type_enabled(v17, v18);
    v21 = *(v0 + 168);
    v22 = *(v0 + 144);
    v20 = *(v0 + 152);
    if (v34)
    {
      v35 = *(v0 + 104);
      v76 = *(v0 + 168);
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v77 = v25;
      *v24 = 136315138;
      v36 = [v35 description];
      v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v39 = v38;

      v40 = sub_10017A8A8(v37, v39, &v77);

      *(v24 + 4) = v40;
      v31 = "Link changed: %s. Link status of the event is nil";
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  sub_1001675EC(*(v3 + 56) + 32 * v6, v0 + 16);

  sub_10019B1DC();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  v9 = *(v0 + 96);
  if ([v9 isLinkDown] && (objc_msgSend(v9, "reason") == 2 || *(*(v0 + 112) + OBJC_IVAR___WISWiFiToCellTransitionMonitor_wistoolTreatDisassocAsBeaconLost) == 1 && objc_msgSend(v9, "reason") == 8))
  {
    v11 = *(v0 + 200);
    v10 = *(v0 + 208);
    v12 = *(v0 + 192);
    static Date.now.getter();
    v13 = sub_100002F84();
    v14 = v9;
    sub_1001964D8(1, v10, v9, v13 & 1);

    (*(v11 + 8))(v10, v12);
  }

  if ([v9 isLinkDown])
  {
    sub_100003E50(&off_1002B69B8, *(v0 + 176));
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&_mh_execute_header, v45, v46, "WiFi link changed state to DOWN", v47, 2u);
    }

    v48 = *(v0 + 192);
    v49 = *(v0 + 200);
    v50 = *(v0 + 176);
    v51 = *(v0 + 144);
    v52 = *(v0 + 152);
    v53 = *(v0 + 136);
    v54 = *(v0 + 112);

    (*(v52 + 8))(v50, v51);
    static Date.now.getter();
    (*(v49 + 56))(v53, 0, 1, v48);
    v55 = OBJC_IVAR___WISWiFiToCellTransitionMonitor_timestampOfLastLinkDownChange;
    swift_beginAccess();
    sub_10019B228(v53, v54 + v55);
    swift_endAccess();
    sub_10019412C();
    sub_1000035A8();
    v56 = OBJC_IVAR___WISWiFiToCellTransitionMonitor_submitEventsAfterMaxWaitingTimeTask;
    if (*(v54 + OBJC_IVAR___WISWiFiToCellTransitionMonitor_submitEventsAfterMaxWaitingTimeTask))
    {

      sub_100164A3C(&qword_1002D7A10, &qword_10024AC20);
      Task.cancel()();
    }

    v70 = *(v0 + 128);
    v71 = *(v0 + 112);
    *(v54 + v56) = 0;

    v72 = type metadata accessor for TaskPriority();
    (*(*(v72 - 8) + 56))(v70, 1, 1, v72);
    v73 = swift_allocObject();
    v73[2] = 0;
    v73[3] = 0;
    v73[4] = v71;

    v74 = sub_100193EC0(0, 0, v70, &unk_10024AC30, v73);
    sub_1000157F0(v70, &qword_1002D7180, &qword_10024ABF0);
    *(v54 + v56) = v74;
  }

  else if (!*(*(v0 + 112) + OBJC_IVAR___WISWiFiToCellTransitionMonitor_snapshotTask) || (, v57 = swift_task_isCancelled(), , (v57 & 1) != 0))
  {
    sub_100003E50(&off_1002B69B8, *(v0 + 184));
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&_mh_execute_header, v58, v59, "WiFi link changed state to UP", v60, 2u);
    }

    v61 = *(v0 + 192);
    v62 = *(v0 + 200);
    v63 = *(v0 + 184);
    v64 = *(v0 + 144);
    v65 = *(v0 + 152);
    v66 = *(v0 + 136);
    v67 = *(v0 + 112);

    (*(v65 + 8))(v63, v64);
    *(v67 + OBJC_IVAR___WISWiFiToCellTransitionMonitor_numberOfEventsUndersampledOnNoTransition) = 0;
    static Date.now.getter();
    (*(v62 + 56))(v66, 0, 1, v61);
    v68 = OBJC_IVAR___WISWiFiToCellTransitionMonitor_timestampOfLastLinkUpChange;
    swift_beginAccess();
    sub_10019B228(v66, v67 + v68);
    swift_endAccess();
    v69 = OBJC_IVAR___WISWiFiToCellTransitionMonitor_submitEventsAfterMaxWaitingTimeTask;
    if (*(v67 + OBJC_IVAR___WISWiFiToCellTransitionMonitor_submitEventsAfterMaxWaitingTimeTask))
    {

      sub_100164A3C(&qword_1002D7A10, &qword_10024AC20);
      Task.cancel()();
    }

    *(v67 + v69) = 0;

    sub_100197E7C();
    sub_100193A98();
  }

  if (*(*(v0 + 112) + OBJC_IVAR___WISWiFiToCellTransitionMonitor_snapshotTask))
  {

    v75 = swift_task_isCancelled();

    v42 = v75 ^ 1;
  }

  else
  {

    v42 = 0;
  }

LABEL_20:

  v43 = *(v0 + 8);

  return v43(v42 & 1);
}

uint64_t sub_100197DEC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100002960;

  return sub_100193194();
}

uint64_t sub_100197E7C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v95 = type metadata accessor for Logger();
  v92 = *(v95 - 8);
  v3 = __chkstk_darwin(v95);
  v5 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v99 = &v75 - v6;
  v7 = sub_100164A3C(&unk_1002D7BD0, &unk_10024A800);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v96 = &v75 - v12;
  v13 = __chkstk_darwin(v11);
  v80 = &v75 - v14;
  __chkstk_darwin(v13);
  v16 = &v75 - v15;
  v17 = type metadata accessor for Date();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v85 = &v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v75 - v21;
  v23 = OBJC_IVAR___WISWiFiToCellTransitionMonitor_timestampOfLastLinkDownChange;
  swift_beginAccess();
  v79 = v23;
  v24 = v18;
  sub_10001A718(v1 + v23, v16, &unk_1002D7BD0, &unk_10024A800);
  v97 = *(v18 + 48);
  v98 = v18 + 48;
  if (v97(v16, 1, v17) != 1)
  {
    v29 = *(v18 + 32);
    v94 = v17;
    v84 = v18 + 32;
    v83 = v29;
    v29(v22, v16, v17);
    v30 = OBJC_IVAR___WISWiFiToCellTransitionMonitor_transitionEventsToSend;
    swift_beginAccess();
    v31 = *(v1 + v30);
    if (v31 >> 62)
    {
      v32 = _CocoaArrayWrapper.endIndex.getter();
      if (!v32)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v32)
      {
        goto LABEL_31;
      }
    }

    result = _s23CompleteTransitionEventCMa();
    v93 = result;
    if (v32 < 1)
    {
      __break(1u);
      return result;
    }

    v76 = v30;
    v87 = v22;
    v78 = v10;
    v33 = OBJC_IVAR___WISWiFiToCellTransitionMonitor_timestampOfLastLinkUpChange;
    v89 = v31 & 0xC000000000000001;

    v90 = v33;
    swift_beginAccess();
    v34 = v31;
    v35 = 0;
    v88 = (v92 + 8);
    v77 = v18;
    v86 = (v18 + 8);
    *&v36 = 136315394;
    v81 = v36;
    v37 = v99;
    v92 = v31;
    v91 = v32;
    v82 = ObjectType;
    do
    {
      if (v89)
      {
        v46 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v46 = *(v34 + 8 * v35 + 32);
      }

      sub_100003E50(&off_1002B69B8, v37);

      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v47, v48))
      {
        v49 = v1;
        v50 = v95;
        v51 = swift_slowAlloc();
        v101[0] = swift_slowAlloc();
        *v51 = v81;
        v52 = sub_100180154();
        v53 = *v52;
        v54 = v52[1];

        v55 = sub_10017A8A8(v53, v54, v101);

        *(v51 + 4) = v55;
        *(v51 + 12) = 2080;
        if (*(v46 + 40))
        {
          v56 = 0xE200000000000000;
          v57 = 20302;
        }

        else
        {
          v100 = *(v46 + 32);
          sub_10019C0B0();
          v57 = BinaryInteger.description.getter();
          v56 = v58;
        }

        v59 = sub_10017A8A8(v57, v56, v101);

        *(v51 + 14) = v59;
        _os_log_impl(&_mh_execute_header, v47, v48, "Sending a CA event %s for %s transition...", v51, 0x16u);
        swift_arrayDestroy();

        (*v88)(v99, v50);
        v1 = v49;
        ObjectType = v82;
      }

      else
      {

        (*v88)(v37, v95);
      }

      v60 = *(v46 + 16);
      v61 = v94;
      v62 = v96;
      if (v60)
      {
        v63 = *(v60 + 16);
        if (v63)
        {
          v64 = v63 - 1;
          v65 = *(_s8SnapshotVMa(0) - 8);
          v66 = v60 + ((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * v64;
          v67 = v80;
          sub_10001A718(v66, v80, &unk_1002D7BD0, &unk_10024A800);
          if (v97(v67, 1, v61) == 1)
          {
            sub_1000157F0(v67, &unk_1002D7BD0, &unk_10024A800);
            v60 = 0;
            v68 = 1;
          }

          else
          {
            Date.distance(to:)();
            v70 = v69;
            (*v86)(v67, v61);
            v68 = 0;
            v60 = v70;
          }

          v62 = v96;
        }

        else
        {
          v60 = 0;
          v68 = 1;
        }
      }

      else
      {
        v68 = 1;
      }

      sub_10001A718(v1 + v90, v62, &unk_1002D7BD0, &unk_10024A800);
      v71 = v61;
      v72 = v97(v62, 1, v61);
      if (v72 == 1)
      {
        v44 = 0;
      }

      else
      {
        v38 = ObjectType;
        v39 = v1;
        v40 = v85;
        v83(v85, v62, v71);
        Date.distance(to:)();
        v42 = v41;
        v43 = v40;
        v1 = v39;
        ObjectType = v38;
        (*v86)(v43, v71);
        v44 = v42;
      }

      ++v35;

      sub_10018CE08(v45, v60, v68, v44, v72 == 1);
      sub_100180104();

      sub_100180160();

      v34 = v92;
      v37 = v99;
    }

    while (v91 != v35);

    v10 = v78;
    v24 = v77;
    v22 = v87;
    v30 = v76;
LABEL_31:
    v73 = v94;
    (*(v24 + 8))(v22, v94);
    *(v1 + v30) = _swiftEmptyArrayStorage;

    (*(v24 + 56))(v10, 1, 1, v73);
    v74 = v79;
    swift_beginAccess();
    sub_10019B228(v10, v1 + v74);
    return swift_endAccess();
  }

  sub_1000157F0(v16, &unk_1002D7BD0, &unk_10024A800);
  sub_100003E50(&off_1002B69B8, v5);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v25, v26, "Skipping sending CA events: no link down event is logged", v27, 2u);
  }

  return (*(v92 + 8))(v5, v95);
}

void *sub_1001988C0()
{
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for Logger();
  v25 = *(v2 - 8);
  v3 = __chkstk_darwin(v2);
  v26 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v24 - v5;
  v7 = sub_100164A3C(&qword_1002D7180, &qword_10024ABF0);
  __chkstk_darwin(v7 - 8);
  v9 = &v24 - v8;
  swift_defaultActor_initialize();
  _s25LocationEnvironmentReaderCMa();
  *(v0 + 112) = sub_100182524();
  _s11IOKitReaderCMa();
  *(v0 + 120) = sub_100180E3C();
  _s12MotionReaderCMa(0);
  *(v0 + 128) = sub_10018877C();
  _s24WiFiInterfaceStateReaderCMa();
  *(v0 + 136) = sub_10019279C([objc_allocWithZone(CWFInterface) initWithServiceType:1]);
  *(v0 + 144) = _swiftEmptyArrayStorage;
  *(v0 + 152) = 0;
  v10 = OBJC_IVAR___WISWiFiToCellTransitionMonitor_lastNoTransitionEventTimestamp;
  v11 = type metadata accessor for Date();
  v12 = *(*(v11 - 8) + 56);
  v12(v0 + v10, 1, 1, v11);
  *(v0 + OBJC_IVAR___WISWiFiToCellTransitionMonitor_snapshots) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR___WISWiFiToCellTransitionMonitor_transitionEventsToSend) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR___WISWiFiToCellTransitionMonitor_numberOfEventsUndersampledOnNoTransition) = 0;
  v12(v0 + OBJC_IVAR___WISWiFiToCellTransitionMonitor_startTimeOfCurrentSnapshotTask, 1, 1, v11);
  *(v0 + OBJC_IVAR___WISWiFiToCellTransitionMonitor_submitEventsAfterMaxWaitingTimeTask) = 0;
  v12(v0 + OBJC_IVAR___WISWiFiToCellTransitionMonitor_timestampOfLastLinkDownChange, 1, 1, v11);
  v12(v0 + OBJC_IVAR___WISWiFiToCellTransitionMonitor_timestampOfLastLinkUpChange, 1, 1, v11);
  *(v0 + OBJC_IVAR___WISWiFiToCellTransitionMonitor_snapshotTask) = 0;
  *(v0 + OBJC_IVAR___WISWiFiToCellTransitionMonitor_wistoolTreatDisassocAsBeaconLost) = 0;
  *(v0 + OBJC_IVAR___WISWiFiToCellTransitionMonitor_undersamplingNoTransitionEvent) = 0;
  v13 = type metadata accessor for WiFiToCellTransitionMonitor(0);
  v27.receiver = v0;
  v27.super_class = v13;
  v14 = objc_msgSendSuper2(&v27, "init");
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
  type metadata accessor for MainActor();
  v16 = v14;
  v17 = static MainActor.shared.getter();
  v18 = swift_allocObject();
  v18[2] = v17;
  v18[3] = &protocol witness table for MainActor;
  v18[4] = v16;
  v18[5] = ObjectType;
  sub_100176B80(0, 0, v9, &unk_10024AC40, v18);

  sub_1001928CC(6, sub_10019B3C0, v16);

  v19 = v25;
  sub_100003E50(&off_1002B69B8, v6);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "WiFiToCellTransitionMonitor. Finished init", v22, 2u);
  }

  (*(v19 + 8))(v6, v2);
  return v16;
}

uint64_t sub_100198E98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  type metadata accessor for MainActor();
  *(v4 + 48) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100198F30, v6, v5);
}

uint64_t sub_100198F30()
{

  if (qword_1002D9FA0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  swift_weakAssign();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100198FEC(void *a1, uint64_t a2)
{
  v4 = sub_100164A3C(&qword_1002D7180, &qword_10024ABF0);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a2;
  v8[5] = a1;

  v9 = a1;
  sub_100176B80(0, 0, v6, &unk_10024ADC0, v8);
}

uint64_t sub_100199100(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v9 = (*((swift_isaMask & *a4) + 0x2A8) + **((swift_isaMask & *a4) + 0x2A8));
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_10017F434;

  return v9(a5);
}

uint64_t sub_100199264()
{
  v1 = v0;
  swift_getObjectType();
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100164A3C(&qword_1002D7180, &qword_10024ABF0);
  __chkstk_darwin(v6 - 8);
  v8 = &v16 - v7;
  v9 = *(v0 + 120);
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v9;
  swift_retain_n();
  sub_100176B80(0, 0, v8, &unk_10024AC50, v11);

  sub_100003E50(&off_1002B69B8, v5);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "WiFiToCellTransitionMonitor. Deinit", v14, 2u);
  }

  else
  {
  }

  (*(v3 + 8))(v5, v2);

  sub_1000157F0(v1 + OBJC_IVAR___WISWiFiToCellTransitionMonitor_lastNoTransitionEventTimestamp, &unk_1002D7BD0, &unk_10024A800);

  sub_1000157F0(v1 + OBJC_IVAR___WISWiFiToCellTransitionMonitor_startTimeOfCurrentSnapshotTask, &unk_1002D7BD0, &unk_10024A800);

  sub_1000157F0(v1 + OBJC_IVAR___WISWiFiToCellTransitionMonitor_timestampOfLastLinkDownChange, &unk_1002D7BD0, &unk_10024A800);
  sub_1000157F0(v1 + OBJC_IVAR___WISWiFiToCellTransitionMonitor_timestampOfLastLinkUpChange, &unk_1002D7BD0, &unk_10024A800);

  swift_defaultActor_destroy();
  return v1;
}

uint64_t sub_1001995A4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4[2] = a4;
  v5 = *a4 + 280;
  v4[3] = *v5;
  v4[4] = v5 & 0xFFFFFFFFFFFFLL | 0x36BD000000000000;
  return _swift_task_switch(sub_1001995E8, a4, 0);
}

uint64_t sub_1001995E8()
{
  (*(v0 + 24))();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10019964C()
{
  sub_100199264();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100199678(uint64_t a1)
{
  v2[8] = v1;
  v2[9] = *(_s8SnapshotVMa(0) - 8);
  v2[10] = swift_task_alloc();
  v4 = swift_task_alloc();
  v2[11] = v4;
  v5 = swift_task_alloc();
  v2[12] = v5;
  *v5 = v2;
  v5[1] = sub_100199788;

  return sub_100199B58(v4, a1);
}

uint64_t sub_100199788()
{
  v1 = *(*v0 + 64);

  return _swift_task_switch(sub_100199898, v1, 0);
}

uint64_t sub_100199898()
{
  v1 = v0[8];
  sub_100191E90(v0[11], v0[10]);
  v2 = OBJC_IVAR___WISWiFiToCellTransitionMonitor_snapshots;
  swift_beginAccess();
  v3 = *(v1 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + v2) = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_10019ACD0(0, v3[2] + 1, 1, v3);
    *(v1 + v2) = v3;
  }

  v6 = v3[2];
  v5 = v3[3];
  if (v6 >= v5 >> 1)
  {
    v3 = sub_10019ACD0((v5 > 1), v6 + 1, 1, v3);
  }

  v8 = v0[9];
  v7 = v0[10];
  v3[2] = v6 + 1;
  sub_10019BDB4(v7, v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v6);
  *(v1 + v2) = v3;
  swift_endAccess();
  if (v6 >= 0x18)
  {
    swift_beginAccess();
    sub_10019BB04(0, 1, sub_10019ACD0, sub_10019B914);
    swift_endAccess();
  }

  sub_10019BE18(v0[11]);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100199A38(uint64_t a1)
{
  v2 = OBJC_IVAR___WISWiFiToCellTransitionMonitor_transitionEventsToSend;
  swift_beginAccess();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v1 + v2) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v2) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v3 = *(v1 + v2);
  swift_endAccess();
  if (v3 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result < 11)
    {
      return result;
    }
  }

  else
  {
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result < 11)
    {
      return result;
    }
  }

  swift_beginAccess();
  sub_1001970D4();
  swift_endAccess();
}

uint64_t sub_100199B58(uint64_t a1, uint64_t a2)
{
  v3[30] = a2;
  v3[31] = v2;
  v3[29] = a1;
  sub_100164A3C(&unk_1002D7BD0, &unk_10024A800);
  v3[32] = swift_task_alloc();
  sub_100164A3C(&qword_1002D67B0, &qword_10024A640);
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();

  return _swift_task_switch(sub_100199C3C, v2, 0);
}

uint64_t sub_100199C3C()
{
  v1 = *(v0 + 248);
  sub_100192B48(v0 + 16);
  *(v0 + 280) = *(v0 + 32);
  v2 = *(v0 + 48);
  *(v0 + 171) = *(v0 + 56);
  v3 = *(v0 + 64);
  *(v0 + 296) = v2;
  *(v0 + 304) = v3;
  *(v0 + 456) = *(v0 + 72);
  *(v0 + 312) = *(v0 + 80);
  *(v0 + 457) = *(v0 + 88);
  v4 = *(v0 + 112);
  *(v0 + 320) = *(v0 + 96);
  *(v0 + 336) = v4;
  sub_100183630(v0 + 128);
  *(v0 + 352) = *(v0 + 144);
  *(v0 + 368) = *(v0 + 160);
  v5 = *(v0 + 168);
  *(v0 + 174) = *(v0 + 170);
  *(v0 + 172) = v5;
  v6 = *(v1 + 128);
  *(v0 + 376) = v6;
  v7 = (*v6 + 192) & 0xFFFFFFFFFFFFLL | 0x9076000000000000;
  *(v0 + 384) = *(*v6 + 192);
  *(v0 + 392) = v7;

  return _swift_task_switch(sub_100199D38, v6, 0);
}

uint64_t sub_100199D38()
{
  v1 = *(v0 + 376);
  *(v0 + 458) = (*(v0 + 384))();
  v2 = (*v1 + 216) & 0xFFFFFFFFFFFFLL | 0x8550000000000000;
  *(v0 + 400) = *(*v1 + 216);
  *(v0 + 408) = v2;

  return _swift_task_switch(sub_100199DC4, v1, 0);
}

uint64_t sub_100199DC4()
{
  v1 = *(v0 + 248);
  (*(v0 + 400))();

  return _swift_task_switch(sub_100199E38, v1, 0);
}

uint64_t sub_100199E38()
{
  v1 = *(v0[31] + 120);
  v0[52] = v1;
  v2 = (*v1 + 208) & 0xFFFFFFFFFFFFLL | 0x3425000000000000;
  v0[53] = *(*v1 + 208);
  v0[54] = v2;
  return _swift_task_switch(sub_100199E78, v1, 0);
}

uint64_t sub_100199E78()
{
  v1 = *(v0 + 416);
  *(v0 + 208) = (*(v0 + 424))();
  *(v0 + 216) = v2;
  *(v0 + 224) = v3;
  v4 = (*v1 + 184) & 0xFFFFFFFFFFFFLL | 0xCEFE000000000000;
  *(v0 + 440) = *(*v1 + 184);
  *(v0 + 448) = v4;

  return _swift_task_switch(sub_100199F08, v1, 0);
}

uint64_t sub_100199F08()
{
  v1 = *(v0 + 248);
  *(v0 + 176) = (*(v0 + 440))();
  *(v0 + 184) = v2;
  *(v0 + 192) = v3;
  *(v0 + 200) = v4;

  return _swift_task_switch(sub_100199F84, v1, 0);
}

uint64_t sub_100199F84()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 240);
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  (*(v4 + 16))(v1, v2, v3);
  (*(v4 + 56))(v1, 0, 1, v3);
  if (*(v0 + 40) == 1)
  {
    v43 = 1;
    v41 = 0;
    v42 = 0;
    v38 = 0;
    v39 = 0;
    v36 = 0;
    v33 = 0;
    v34 = 0;
    v31 = 0;
    v32 = 0;
    v44 = 0;
    v40 = 1;
    v37 = 1;
    v35 = 1;
  }

  else
  {
    v44 = *(v0 + 16);
    v35 = *(v0 + 24);
    v37 = *(v0 + 171);
    v40 = *(v0 + 456);
    v43 = *(v0 + 457);

    sub_1000157F0(v0 + 16, &qword_1002D6DE0, &qword_10024AD90);
    v41 = *(v0 + 344);
    v42 = *(v0 + 336);
    v38 = *(v0 + 328);
    v39 = *(v0 + 320);
    v36 = *(v0 + 312);
    v33 = *(v0 + 296);
    v34 = *(v0 + 304);
    v31 = *(v0 + 288);
    v32 = *(v0 + 280);
  }

  v5 = *(v0 + 172);
  v6 = v5 | (*(v0 + 174) << 16);
  if ((v5 & 0xFF00) == 0x700)
  {
    v28 = 0;
    v29 = 0;
    v30 = 0;
    LOBYTE(v6) = 1;
    LOBYTE(v26) = 7;
    LOBYTE(v27) = 6;
    LOBYTE(v25) = 1;
    v24 = 1;
  }

  else
  {
    v25 = *(v0 + 360);
    v30 = *(v0 + 128);
    v24 = *(v0 + 136);
    v26 = HIWORD(v6);
    v27 = v6 >> 8;
    v28 = *(v0 + 352);
    v29 = *(v0 + 368);
  }

  v7 = *(v0 + 184);
  v8 = *(v0 + 176);
  v9 = *(v0 + 458);
  v10 = *(v0 + 264);
  v11 = *(v0 + 272);
  v12 = *(v0 + 256);
  v13 = *(v0 + 200) & 1;
  if (*(v0 + 200))
  {
    v8 = 0;
  }

  v21 = *(v0 + 232);
  v22 = v8;
  if (*(v0 + 200))
  {
    v7 = 0;
  }

  v23 = v7;
  if (*(v0 + 200))
  {
    v14 = 0;
  }

  else
  {
    v14 = *(v0 + 192);
  }

  v15 = *(v0 + 224) & 1;
  if (*(v0 + 224))
  {
    v16 = 0;
  }

  else
  {
    v16 = *(v0 + 208);
  }

  if (*(v0 + 224))
  {
    v17 = 0;
  }

  else
  {
    v17 = *(v0 + 216);
  }

  v20 = v17;
  sub_10001A718(v11, v10, &qword_1002D67B0, &qword_10024A640);
  sub_10018A9D4(v12, v16, v15, v20, v15, v22, v13, v23, v21, v13, v14, v13, v44, v35 & 1, v32, v31, v33, v37 & 1, v34, v40 & 1, v36, v43 & 1, v39, v38, v42, v41, v30, v24 & 1, v28, v25 & 1, v29, v6 & 1, v27, v26, v9, v10);
  sub_1000157F0(v11, &qword_1002D67B0, &qword_10024A640);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_10019A354(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = swift_getObjectType();
  v4 = type metadata accessor for WIS.XPC.WiFiToCellTransitionTreatDissasocAsBeaconLostRequest();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();

  return _swift_task_switch(sub_10019A480, 0, 0);
}

uint64_t sub_10019A480()
{
  v1 = WIS.XPC.WiFiToCellTransitionTreatDissasocAsBeaconLostRequest.enabled.getter();
  v2 = swift_task_alloc();
  *(v0 + 96) = v2;
  *v2 = v0;
  v2[1] = sub_10019A524;

  return sub_100193888(v1 & 1);
}

uint64_t sub_10019A524()
{

  return _swift_task_switch(sub_10019A620, 0, 0);
}

uint64_t sub_10019A620()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v4 = v0[3];
  sub_100003E50(&off_1002B69B8, v0[11]);
  (*(v2 + 16))(v1, v4, v3);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[7];
  v8 = v0[8];
  v10 = v0[6];
  if (v7)
  {
    v11 = swift_slowAlloc();
    *v11 = 67109120;
    v12 = WIS.XPC.WiFiToCellTransitionTreatDissasocAsBeaconLostRequest.enabled.getter() & 1;
    (*(v9 + 8))(v8, v10);
    *(v11 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v5, v6, "TreatDissasocDropsAsBeaconLostDrops set to %{BOOL}d", v11, 8u);
  }

  else
  {
    (*(v9 + 8))(v0[8], v0[6]);
  }

  v14 = v0[10];
  v13 = v0[11];
  v15 = v0[9];

  (*(v14 + 8))(v13, v15);
  WIS.XPC.WiFiToCellTransitionTreatDissasocAsBeaconLostResponse.init()();

  v16 = v0[1];

  return v16();
}

uint64_t sub_10019A7CC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  type metadata accessor for WiFiToCellTransitionMonitor(0);

  return sub_100003E50(a1, a2);
}

uint64_t sub_10019A818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = type metadata accessor for ContinuousClock.Instant();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return _swift_task_switch(sub_10019A918, 0, 0);
}

uint64_t sub_10019A918()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = type metadata accessor for ContinuousClock();
  v5 = sub_10019BF0C(&qword_1002D6DF0, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_10019BF0C(&qword_1002D6DF8, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_10019AAA8;
  v8 = v0[11];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v8, v0 + 2, v4, v5);
}

uint64_t sub_10019AAA8()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return _swift_task_switch(sub_10019AC64, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_10019AC64()
{

  v1 = *(v0 + 8);

  return v1();
}

void *sub_10019ACD0(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100164A3C(&qword_1002D6DE8, &qword_10024AD98);
  v10 = *(_s8SnapshotVMa(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(_s8SnapshotVMa(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_10019AEA8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100164A3C(&qword_1002D6E00, &qword_10024ADC8);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_10019AFAC(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100164A3C(&qword_1002D6DE8, &qword_10024AD98);
  v4 = *(_s8SnapshotVMa(0) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if (&result[-v6] != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * (&result[-v6] / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10019B0A8()
{
  v2 = *(v0 + 32);
  v4 = *(v0 + 40);
  v3 = *(v0 + 48);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10017F434;

  return sub_10019598C(v5, v6, v7, v2, v4, v3);
}

unint64_t sub_10019B150(unint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_stdlib_random();
    result = (0 * v1) >> 64;
    if (-v1 % v1)
    {
      while (1)
      {
        swift_stdlib_random();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_10019B1DC()
{
  result = qword_1002D6DB0;
  if (!qword_1002D6DB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1002D6DB0);
  }

  return result;
}

uint64_t sub_10019B228(uint64_t a1, uint64_t a2)
{
  v4 = sub_100164A3C(&unk_1002D7BD0, &unk_10024A800);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10019B298()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10017F434;

  return sub_100197DEC();
}

uint64_t sub_10019B32C()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100002A5C;

  return sub_100198E98(v3, v4, v5, v2);
}

uint64_t sub_10019B3C8()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100002A5C;

  return sub_1001995A4(v3, v4, v5, v2);
}

void sub_10019B474(uint64_t a1)
{
  sub_1001923F4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10019B574(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      sub_100164A3C(&qword_1002D6DE8, &qword_10024AD98);
      v7 = *(_s8SnapshotVMa(0) - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        _s8SnapshotVMa(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

unint64_t sub_10019B714(uint64_t a1, char a2)
{
  v4 = *v2;
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if ((isUniquelyReferenced_nonNull_bridgeObject & 1) == 0 || (result = 0, (v4 & 0x8000000000000000) != 0) || (v4 & 0x4000000000000000) != 0 || a1 > *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    if (v4 >> 62)
    {
      _CocoaArrayWrapper.endIndex.getter();
    }

    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    *v2 = result;
  }

  return result;
}

void *sub_10019B7D0(void *result, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[5];
  v22 = v3[3];
  v23 = v3[4];
  if (!a2)
  {
LABEL_21:
    a3 = 0;
LABEL_22:
    v12 = v5;
LABEL_25:
    *result = v4;
    result[1] = v5;
    result[2] = v6;
    result[3] = v22;
    result[4] = v23;
    result[5] = v7;
    result[6] = v12;
    return a3;
  }

  if (!a3)
  {
    goto LABEL_22;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = a2;
    v20 = v3[2];
    v21 = result;
    v9 = 0;
    v18 = a3;
    v19 = v3[5];
    v10 = v7 >> 1;
    v11 = a3 - 1;
    while (1)
    {
      if (v4 - v5 == v9)
      {
        v12 = v4;
        a3 = v4 - v5;
        result = v21;
        goto LABEL_24;
      }

      v12 = v5 + v9 + 1;
      if (__OFADD__(v5 + v9, 1))
      {
        break;
      }

      v13 = v5 + v9;
      if (v5 + v9 >= v10 || v4 < v12 || v5 >= v12 || v13 < v23)
      {
        goto LABEL_28;
      }

      v17 = *(*(_s8SnapshotVMa(0) - 8) + 72);
      result = sub_100191E90(v22 + v17 * v13, v8);
      if (v11 == v9)
      {
        result = v21;
        a3 = v18;
LABEL_24:
        v7 = v19;
        v6 = v20;
        goto LABEL_25;
      }

      v8 += v17;
      v6 = ++v9;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_10019B914(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = _s8SnapshotVMa(0);
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_10019BA5C(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 8 * result + 8 * a3;
  v10 = (v6 + 32 + 8 * a2);
  if (result != v10 || result >= v10 + 8 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 8 * v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_10019BB04(uint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = a4(v8, a2, 0);
  *v4 = v6;
  return result;
}

uint64_t sub_10019BBDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  _s15TransitionEventCMa();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = _CocoaArrayWrapper.endIndex.getter();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_10019BCDC(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v5 = a1;
    v6 = *v4;
    v7 = *v4 >> 62;
    if (!v7)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < v3)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v3, v5))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = v5 - v3;
  if (__OFSUB__(0, v3 - v5))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v7)
  {
    v10 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
    goto LABEL_18;
  }

  sub_10019B714(result, 1);

  return sub_10019BBDC(v5, v3, 0);
}

uint64_t sub_10019BDB4(uint64_t a1, uint64_t a2)
{
  v4 = _s8SnapshotVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10019BE18(uint64_t a1)
{
  v2 = _s8SnapshotVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10019BE74()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100002A5C;

  return sub_10019528C(v4, v5, v6, v2, v3);
}

uint64_t sub_10019BF0C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10019BF54()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100002A5C;

  return sub_100199100(v4, v5, v6, v2, v3);
}

uint64_t sub_10019C01C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100002A5C;

  return sub_100193E30();
}

unint64_t sub_10019C0B0()
{
  result = qword_1002D6E08;
  if (!qword_1002D6E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D6E08);
  }

  return result;
}

uint64_t sub_10019C108(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 112) = a1;
}

uint64_t sub_10019C264@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 144);
  v4 = *(v1 + 168);
  v5 = *(v1 + 176);
  *a1 = *(v1 + 128);
  *(a1 + 16) = v3;
  *(a1 + 24) = *(v1 + 152);
  *(a1 + 40) = v4;
  *(a1 + 48) = v5;
}

uint64_t sub_10019C2D0(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(a1 + 16);
  *(v1 + 128) = *a1;
  *(v1 + 144) = v3;
  *(v1 + 160) = *(a1 + 32);
  *(v1 + 176) = *(a1 + 48);
}

uint64_t sub_10019C414()
{
  v1 = OBJC_IVAR____TtC17wirelessinsightsd31RoamingPLMNPredictionController_curRegistrationState;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_10019C458(char a1)
{
  v3 = OBJC_IVAR____TtC17wirelessinsightsd31RoamingPLMNPredictionController_curRegistrationState;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void sub_10019C514(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC17wirelessinsightsd31RoamingPLMNPredictionController_lastKnownMCC;
  swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
}

uint64_t sub_10019C5D4()
{
  v1 = OBJC_IVAR____TtC17wirelessinsightsd31RoamingPLMNPredictionController_predictionSendState;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_10019C618(char a1)
{
  v3 = OBJC_IVAR____TtC17wirelessinsightsd31RoamingPLMNPredictionController_predictionSendState;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_10019C6E4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  swift_beginAccess();
  return sub_10001A718(v4 + v8, a4, a2, a3);
}

uint64_t sub_10019C76C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = *a2;
  swift_beginAccess();
  sub_10018A03C(a1, v4 + v8, a3, a4);
  return swift_endAccess();
}

uint64_t sub_10019C8E4(void *a1)
{
  v2 = v1 + *a1;
  swift_beginAccess();
  return *v2;
}

void sub_10019C92C(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC17wirelessinsightsd31RoamingPLMNPredictionController_airplaneModeEnableMCC;
  swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
}

void sub_10019CBB4(uint64_t a1@<X8>)
{
  XPCEventPublisher.Token.rawValue.getter();
  *(a1 + 24) = &type metadata for DefaultDateProvider;
  *(a1 + 32) = &off_1002B7A00;
}

void sub_10019CBEC(uint64_t a1@<X8>)
{
  XPCEventPublisher.Token.rawValue.getter();
  *(a1 + 24) = &type metadata for PredictionMetric.CoreAnalyticsSubmitter;
  *(a1 + 32) = &off_1002B54A8;
}

uint64_t sub_10019CC24(__int128 *a1, __int128 *a2)
{
  v4 = swift_allocObject();
  sub_10019CC74(a1, a2);
  return v4;
}

uint64_t sub_10019CC74(__int128 *a1, __int128 *a2)
{
  swift_defaultActor_initialize();
  *(v2 + 112) = &_swiftEmptySetSingleton;
  *(v2 + 120) = 4;
  *(v2 + 128) = 0u;
  *(v2 + 144) = 0u;
  *(v2 + 160) = 0u;
  *(v2 + 176) = 0;
  v5 = OBJC_IVAR____TtC17wirelessinsightsd31RoamingPLMNPredictionController_lastConnectedToCellAt;
  v6 = type metadata accessor for Date();
  v7 = *(*(v6 - 8) + 56);
  v7(v2 + v5, 1, 1, v6);
  *(v2 + OBJC_IVAR____TtC17wirelessinsightsd31RoamingPLMNPredictionController_curRegistrationState) = 5;
  v8 = v2 + OBJC_IVAR____TtC17wirelessinsightsd31RoamingPLMNPredictionController_lastKnownMCC;
  *v8 = 0;
  *(v8 + 8) = 1;
  *(v2 + OBJC_IVAR____TtC17wirelessinsightsd31RoamingPLMNPredictionController_predictionSendState) = 0;
  v9 = OBJC_IVAR____TtC17wirelessinsightsd31RoamingPLMNPredictionController_predictionData;
  v10 = type metadata accessor for InternalUpcomingFlightPrediction(0);
  (*(*(v10 - 8) + 56))(v2 + v9, 1, 1, v10);
  v7(v2 + OBJC_IVAR____TtC17wirelessinsightsd31RoamingPLMNPredictionController_airplaneModeEnableTimestamp, 1, 1, v6);
  v11 = v2 + OBJC_IVAR____TtC17wirelessinsightsd31RoamingPLMNPredictionController_airplaneModeEnableMCC;
  *v11 = 0;
  *(v11 + 8) = 1;
  v7(v2 + OBJC_IVAR____TtC17wirelessinsightsd31RoamingPLMNPredictionController_airplaneModeDisableTimestamp, 1, 1, v6);
  v7(v2 + OBJC_IVAR____TtC17wirelessinsightsd31RoamingPLMNPredictionController_limitedServiceTimestamp, 1, 1, v6);
  v7(v2 + OBJC_IVAR____TtC17wirelessinsightsd31RoamingPLMNPredictionController_fullServiceTimestamp, 1, 1, v6);
  sub_10001A700(a1, v2 + OBJC_IVAR____TtC17wirelessinsightsd31RoamingPLMNPredictionController_dateProvider);
  sub_10001A700(a2, v2 + OBJC_IVAR____TtC17wirelessinsightsd31RoamingPLMNPredictionController_metricSubmitter);
  return v2;
}

uint64_t sub_10019CE74()
{
  v1 = sub_100164A3C(&unk_1002D7BD0, &unk_10024A800);
  __chkstk_darwin(v1 - 8);
  v3 = &v11 - v2;
  v4 = sub_100164A3C(&qword_1002D6E10, &qword_10024AE18);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for InternalUpcomingFlightPrediction(0);
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  (*(*v0 + 384))(v6);
  v8 = type metadata accessor for Date();
  v9 = *(*(v8 - 8) + 56);
  v9(v3, 1, 1, v8);
  (*(*v0 + 408))(v3);
  (*(*v0 + 432))(0, 1);
  v9(v3, 1, 1, v8);
  (*(*v0 + 456))(v3);
  v9(v3, 1, 1, v8);
  (*(*v0 + 480))(v3);
  v9(v3, 1, 1, v8);
  (*(*v0 + 504))(v3);
  return (*(*v0 + 360))(0);
}

uint64_t sub_10019D1BC()
{
  v1 = v0;
  v2 = sub_100164A3C(&unk_1002D7BD0, &unk_10024A800);
  v3 = __chkstk_darwin(v2 - 8);
  v264 = v241 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v257 = v241 - v6;
  v7 = __chkstk_darwin(v5);
  v266 = v241 - v8;
  v9 = __chkstk_darwin(v7);
  v255 = v241 - v10;
  v11 = __chkstk_darwin(v9);
  v263 = v241 - v12;
  v13 = __chkstk_darwin(v11);
  v262 = v241 - v14;
  v15 = __chkstk_darwin(v13);
  v261 = v241 - v16;
  v17 = __chkstk_darwin(v15);
  v260 = v241 - v18;
  __chkstk_darwin(v17);
  v268 = (v241 - v19);
  v270 = type metadata accessor for Date();
  v269 = *(v270 - 8);
  v20 = __chkstk_darwin(v270);
  v259 = v241 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v258 = v241 - v23;
  v24 = __chkstk_darwin(v22);
  v247 = v241 - v25;
  v26 = __chkstk_darwin(v24);
  v28 = v241 - v27;
  v29 = __chkstk_darwin(v26);
  v246 = v241 - v30;
  v31 = __chkstk_darwin(v29);
  v254 = v241 - v32;
  v33 = __chkstk_darwin(v31);
  v245 = v241 - v34;
  v35 = __chkstk_darwin(v33);
  v253 = v241 - v36;
  v37 = __chkstk_darwin(v35);
  v252 = v241 - v38;
  __chkstk_darwin(v37);
  v251 = (v241 - v39);
  v273 = type metadata accessor for MapsSuggestionController.UpcomingFlightPrediction(0);
  __chkstk_darwin(v273);
  v249 = (v241 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  v41 = type metadata accessor for InternalUpcomingFlightPrediction(0);
  v272 = *(v41 - 8);
  v42 = __chkstk_darwin(v41);
  v275 = v241 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __chkstk_darwin(v42);
  v250 = v241 - v45;
  __chkstk_darwin(v44);
  v248 = v241 - v46;
  v47 = sub_100164A3C(&qword_1002D6E10, &qword_10024AE18);
  v48 = __chkstk_darwin(v47 - 8);
  v267 = v241 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __chkstk_darwin(v48);
  v52 = v241 - v51;
  __chkstk_darwin(v50);
  v54 = v241 - v53;
  v55 = type metadata accessor for Logger();
  v56 = *(v55 - 8);
  __chkstk_darwin(v55);
  v58 = v241 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003E50(&off_1002B6A68, v58);

  v59 = Logger.logObject.getter();
  v60 = static os_log_type_t.debug.getter();

  LODWORD(v265) = v60;
  v61 = os_log_type_enabled(v59, v60);
  v274 = v1;
  v256 = v28;
  if (!v61)
  {
    v70 = v41;

    v71 = (*(v56 + 8))(v58, v55);
    v72 = v270;
    v73 = v269;
    v74 = v272;
    goto LABEL_12;
  }

  v242 = v59;
  v243 = v56;
  v244 = v55;
  v62 = swift_slowAlloc();
  v63 = swift_slowAlloc();
  v241[2] = v63;
  v276 = v63;
  *v62 = 136315394;
  v64 = *(*v1 + 376);
  v241[1] = *v1 + 376;
  v241[0] = v64;
  v64(v63, v65, v66);
  v67 = *(v272 + 48);
  v271 = v41;
  if (v67(v54, 1, v41))
  {
    sub_1000157F0(v54, &qword_1002D6E10, &qword_10024AE18);
    v68 = 0xE300000000000000;
    v69 = 7104878;
  }

  else
  {
    v75 = v248;
    sub_1001A3408(v54, v248, type metadata accessor for InternalUpcomingFlightPrediction);
    sub_1000157F0(v54, &qword_1002D6E10, &qword_10024AE18);
    v76 = v249;
    sub_1001A3408(v75, v249, type metadata accessor for MapsSuggestionController.UpcomingFlightPrediction);
    sub_1001A3470(v75, type metadata accessor for InternalUpcomingFlightPrediction);
    v77 = sub_1001A4F98();
    v68 = v78;
    sub_1001A3470(v76, type metadata accessor for MapsSuggestionController.UpcomingFlightPrediction);
    v69 = v77;
  }

  v72 = v270;
  v79 = sub_10017A8A8(v69, v68, &v276);

  *(v62 + 4) = v79;
  *(v62 + 12) = 2080;
  (v241[0])(v80);
  v81 = v271;
  v82 = v67(v52, 1, v271);
  v74 = v272;
  if (v82)
  {
    v70 = v81;
    v83 = &qword_1002D6E10;
    v84 = &qword_10024AE18;
    v85 = v52;
  }

  else
  {
    v88 = v250;
    sub_1001A3408(v52, v250, type metadata accessor for InternalUpcomingFlightPrediction);
    sub_1000157F0(v52, &qword_1002D6E10, &qword_10024AE18);
    v70 = v81;
    sub_10001A718(v88 + *(v81 + 20), v279, &qword_1002D71D0, &qword_10024AE20);
    sub_1001A3470(v88, type metadata accessor for InternalUpcomingFlightPrediction);
    if (v280)
    {
      sub_100014E1C(v279, v280);
      v89 = dispatch thunk of CustomStringConvertible.description.getter();
      v86 = v90;
      sub_100164B98(v279);
      v87 = v89;
      v1 = v274;
      v73 = v269;
      goto LABEL_11;
    }

    v83 = &qword_1002D71D0;
    v84 = &qword_10024AE20;
    v85 = v279;
  }

  sub_1000157F0(v85, v83, v84);
  v1 = v274;
  v73 = v269;
  v86 = 0xE300000000000000;
  v87 = 7104878;
LABEL_11:
  v91 = sub_10017A8A8(v87, v86, &v276);

  *(v62 + 14) = v91;
  v92 = v242;
  _os_log_impl(&_mh_execute_header, v242, v265, "Sending CA event with prediction %s and cellular coverage tile %s", v62, 0x16u);
  swift_arrayDestroy();

  v71 = (*(v243 + 8))(v58, v244);
LABEL_12:
  v93 = v268;
  v94 = v267;
  (*(*v1 + 376))(v71);
  if ((*(v74 + 48))(v94, 1, v70) == 1)
  {
    v95 = sub_1000157F0(v94, &qword_1002D6E10, &qword_10024AE18);
    return (*(*v1 + 528))(v95);
  }

  v97 = sub_1001A3358(v94, v275);
  v98 = (*v1 + 352);
  v99 = *v98;
  if ((*v98)(v97) != 2 && v99() != 3)
  {
    v95 = sub_1001A3470(v275, type metadata accessor for InternalUpcomingFlightPrediction);
    return (*(*v1 + 528))(v95);
  }

  v100 = (*v1 + 448);
  v270 = *v100;
  v269 = v100;
  (v270)();
  v272 = v73[6];
  LODWORD(v250) = (v272)(v93, 1, v72);
  v271 = v70;
  if (v250 == 1)
  {
    v101 = sub_1000157F0(v93, &unk_1002D7BD0, &unk_10024A800);
    v243 = 0;
  }

  else
  {
    v102 = v251;
    (v73[4])(v251, v93, v72);
    Date.distance(to:)();
    v243 = v103;
    v101 = (v73[1])(v102, v72);
  }

  v104 = v262;
  v105 = (*v1 + 400);
  v106 = v260;
  v268 = *v105;
  v267 = v105;
  v268(v101);
  v107 = v272;
  LODWORD(v262) = (v272)(v106, 1, v72);
  v108 = v261;
  if (v262 == 1)
  {
    v109 = sub_1000157F0(v106, &unk_1002D7BD0, &unk_10024A800);
  }

  else
  {
    v110 = v252;
    (v73[4])(v252, v106, v72);
    Date.distance(to:)();
    Date.distance(to:)();
    v111 = v110;
    v107 = v272;
    v109 = (v73[1])(v111, v72);
  }

  (v270)(v109);
  if (v107(v108, 1, v72) == 1)
  {
    v112 = sub_1000157F0(v108, &unk_1002D7BD0, &unk_10024A800);
    LODWORD(v261) = 1;
  }

  else
  {
    v113 = v108;
    v114 = v73;
    v115 = v73[4];
    v116 = v253;
    v117 = v115(v253, v113, v72);
    (*(*v1 + 472))(v117);
    if (v107(v104, 1, v72) == 1)
    {
      (v114[1])(v116, v72);
      v112 = sub_1000157F0(v104, &unk_1002D7BD0, &unk_10024A800);
      LODWORD(v261) = 1;
    }

    else
    {
      v118 = v245;
      v115(v245, v104, v72);
      Date.distance(to:)();
      v119 = v114[1];
      v120 = v118;
      v107 = v272;
      v119(v120, v72);
      v112 = (v119)(v116, v72);
      LODWORD(v261) = 0;
    }

    v73 = v114;
  }

  v121 = v263;
  (v270)(v112);
  v122 = v121;
  if (v107(v121, 1, v72) == 1)
  {
    v123 = sub_1000157F0(v121, &unk_1002D7BD0, &unk_10024A800);
    LODWORD(v263) = 1;
  }

  else
  {
    v124 = v73;
    v125 = v73[4];
    v126 = v254;
    v127 = v125(v254, v122, v72);
    v128 = v255;
    (*(*v1 + 496))(v127);
    v129 = v128;
    if (v107(v128, 1, v72) == 1)
    {
      (v124[1])(v126, v72);
      v123 = sub_1000157F0(v128, &unk_1002D7BD0, &unk_10024A800);
      LODWORD(v263) = 1;
    }

    else
    {
      v130 = v246;
      v125(v246, v129, v72);
      Date.distance(to:)();
      v131 = v124[1];
      v131(v130, v72);
      v123 = (v131)(v126, v72);
      LODWORD(v263) = 0;
    }

    v73 = v124;
  }

  v132 = v266;
  v268(v123);
  if (v107(v132, 1, v72) == 1)
  {
    v133 = sub_1000157F0(v266, &unk_1002D7BD0, &unk_10024A800);
    LODWORD(v260) = 1;
    v134 = v264;
  }

  else
  {
    v135 = v73[4];
    v136 = v256;
    v137 = v135(v256, v266, v72);
    v138 = v257;
    (v270)(v137);
    v139 = v138;
    v107 = v272;
    if ((v272)(v139, 1, v72) == 1)
    {
      (v73[1])(v136, v72);
      v133 = sub_1000157F0(v139, &unk_1002D7BD0, &unk_10024A800);
      LODWORD(v260) = 1;
    }

    else
    {
      v140 = v247;
      v135(v247, v139, v72);
      Date.distance(to:)();
      Date.distance(to:)();
      v141 = v73[1];
      v141(v140, v72);
      v133 = (v141)(v136, v72);
      v107 = v272;
      LODWORD(v260) = 0;
    }

    v134 = v264;
  }

  (*(*v1 + 280))(v133);
  v142 = v107(v134, 1, v72);
  v143 = v271;
  if (v142 == 1)
  {
    v144 = sub_1000157F0(v134, &unk_1002D7BD0, &unk_10024A800);
  }

  else
  {
    v145 = v258;
    (v73[4])(v258, v134, v72);
    v146 = *(v1 + OBJC_IVAR____TtC17wirelessinsightsd31RoamingPLMNPredictionController_dateProvider + 24);
    v147 = *(v1 + OBJC_IVAR____TtC17wirelessinsightsd31RoamingPLMNPredictionController_dateProvider + 32);
    sub_100014E1C((v1 + OBJC_IVAR____TtC17wirelessinsightsd31RoamingPLMNPredictionController_dateProvider), v146);
    v148 = v259;
    (*(v147 + 8))(v146, v147);
    Date.timeIntervalSince(_:)();
    v150 = v149;
    v151 = v73[1];
    v151(v148, v72);
    v144 = (v151)(v145, v72);
    if (v150 > 60.0)
    {
      v152 = 0;
      v267 = 0;
      v153 = 0;
      v154 = 0;
      v269 = 0;
      v155 = 0;
      LODWORD(v268) = 0;
      goto LABEL_47;
    }
  }

  v144 = (*(*v1 + 256))(v279, v144);
  v152 = v279[0];
  v267 = v279[1];
  v153 = v279[2];
  v154 = v280;
  v155 = v282;
  v269 = v281;
  LODWORD(v268) = v283;
LABEL_47:
  v156 = (*v1 + 424);
  v251 = *v156;
  v249 = v156;
  v157 = (v251)(v144);
  if (v158)
  {
    v159 = 2;
    if (!v154)
    {
      LODWORD(v252) = 2;
      v259 = 0;
      v269 = 0;
      v245 = 0;
      v256 = 0;
      v247 = 0;
      v160 = 0;
      v267 = 0;
      v152 = 0;
LABEL_55:
      v165 = 1;
      LODWORD(v268) = 1;
      goto LABEL_56;
    }
  }

  else
  {
    if (!v154)
    {
      v259 = 0;
      v269 = 0;
      v245 = 0;
      v256 = 0;
      v247 = 0;
      v160 = 0;
      v267 = 0;
      v152 = 0;
      LODWORD(v252) = 2;
      goto LABEL_55;
    }

    v159 = v157 == v152;
  }

  LODWORD(v252) = v159;
  v259 = v155;
  v161 = objc_opt_self();

  v247 = v153;
  v162 = String._bridgeToObjectiveC()();
  v163 = [v161 getRATFromCellMonitorString:v162];

  v245 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v256 = v164;

  v165 = 0;
  v160 = v154;
LABEL_56:
  LODWORD(v272) = v165;
  v166 = *(v143 + 20);
  sub_10001A718(&v166[v275], &v276, &qword_1002D71D0, &qword_10024AE20);
  v167 = v277;
  v257 = v152;
  if (v277)
  {
    v168 = v278;
    sub_100014E1C(&v276, v277);
    v266 = (*(v168 + 80))(v167, v168);
    sub_100164B98(&v276);
  }

  else
  {
    sub_1000157F0(&v276, &qword_1002D71D0, &qword_10024AE20);
    v266 = 0;
  }

  sub_10001A718(&v166[v275], &v276, &qword_1002D71D0, &qword_10024AE20);
  v169 = v277;
  if (v277)
  {
    v170 = v278;
    sub_100014E1C(&v276, v277);
    v265 = (*(v170 + 88))(v169, v170);
    sub_100164B98(&v276);
  }

  else
  {
    sub_1000157F0(&v276, &qword_1002D71D0, &qword_10024AE20);
    v265 = 0;
  }

  sub_10001A718(&v166[v275], &v276, &qword_1002D71D0, &qword_10024AE20);
  v171 = v277;
  v258 = v154;
  if (v277)
  {
    v172 = v278;
    sub_100014E1C(&v276, v277);
    v173 = (*(v172 + 112))(v171, v172);
    sub_100164B98(&v276);
    v174 = objc_opt_self();
    v175 = [v174 getCellMonitorRATFromEnumValue:v173];
    v176 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v171 = v177;

    v178 = String._bridgeToObjectiveC()();

    v179 = [v174 getRATFromCellMonitorString:v178];

    v244 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v181 = v180;
  }

  else
  {
    sub_1000157F0(&v276, &qword_1002D71D0, &qword_10024AE20);
    v244 = 0;
    v181 = 0;
    v176 = 0;
  }

  sub_10001A718(&v166[v275], &v276, &qword_1002D71D0, &qword_10024AE20);
  v182 = v277;
  if (v277)
  {
    v183 = v160;
    v184 = v166;
    v185 = v278;
    sub_100014E1C(&v276, v277);
    v186 = *(v185 + 96);
    v187 = v185;
    v166 = v184;
    v160 = v183;
    v255 = v186(v182, v187);
    LODWORD(v253) = v188;
    sub_100164B98(&v276);
  }

  else
  {
    sub_1000157F0(&v276, &qword_1002D71D0, &qword_10024AE20);
    v255 = 0;
    LODWORD(v253) = 1;
  }

  v264 = v166;
  sub_10001A718(&v166[v275], &v276, &qword_1002D71D0, &qword_10024AE20);
  v189 = v277;
  if (v277)
  {
    v190 = v278;
    sub_100014E1C(&v276, v277);
    v254 = (*(v190 + 104))(v189, v190);
    LODWORD(v270) = v191;
    sub_100164B98(&v276);
  }

  else
  {
    sub_1000157F0(&v276, &qword_1002D71D0, &qword_10024AE20);
    v254 = 0;
    LODWORD(v270) = 1;
  }

  v192 = v272;
  if (v167)
  {
    v193 = v272;
  }

  else
  {
    v193 = 1;
  }

  LODWORD(v246) = v193;
  if (!v169)
  {
    v192 = 1;
  }

  LODWORD(v248) = v192;
  if (v160 && v171)
  {
    if (v247 == v176 && v160 == v171)
    {
      v194 = 1;
    }

    else
    {
      v194 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    LODWORD(v247) = v194 & 1;
  }

  else
  {

    LODWORD(v247) = 2;
  }

  sub_100164A3C(&qword_1002D5C48, &qword_100249878);
  v195 = swift_allocObject();
  *(v195 + 16) = xmmword_10024ADE0;
  *(v195 + 32) = 0x614D656372756F73;
  v258 = (v195 + 32);
  *(v195 + 40) = 0xEC00000074656B72;
  *(v195 + 48) = String._bridgeToObjectiveC()();
  *(v195 + 56) = 0xD000000000000011;
  *(v195 + 64) = 0x800000010025C5B0;
  *(v195 + 72) = String._bridgeToObjectiveC()();
  *(v195 + 80) = 0x434D656372756F73;
  *(v195 + 88) = 0xE900000000000043;
  v251();
  if (v196)
  {
    isa = [objc_allocWithZone(NSNull) init];
  }

  else
  {
    isa = Int._bridgeToObjectiveC()().super.super.isa;
  }

  *(v195 + 96) = isa;
  *(v195 + 104) = 0x756F537441736177;
  *(v195 + 112) = 0xEB00000000656372;
  *(v195 + 120) = Bool._bridgeToObjectiveC()();
  *(v195 + 128) = 0xD00000000000001FLL;
  *(v195 + 136) = 0x800000010025C5D0;
  if (v252 == 2)
  {
    v198 = [objc_allocWithZone(NSNull) init];
  }

  else
  {
    v198 = Bool._bridgeToObjectiveC()().super.super.isa;
  }

  *(v195 + 144) = v198;
  strcpy((v195 + 152), "predictedMCC");
  *(v195 + 165) = 0;
  *(v195 + 166) = -5120;
  if (v167)
  {
    v199.super.super.isa = Int._bridgeToObjectiveC()().super.super.isa;
  }

  else
  {
    v199.super.super.isa = [objc_allocWithZone(NSNull) init];
  }

  *(v195 + 168) = v199;
  strcpy((v195 + 176), "predictedMNC");
  *(v195 + 189) = 0;
  *(v195 + 190) = -5120;
  if (v169)
  {
    v200.super.super.isa = Int._bridgeToObjectiveC()().super.super.isa;
  }

  else
  {
    v200.super.super.isa = [objc_allocWithZone(NSNull) init];
  }

  *(v195 + 192) = v200;
  strcpy((v195 + 200), "predictedRAT");
  *(v195 + 213) = 0;
  *(v195 + 214) = -5120;
  v201 = v271;
  if (v181)
  {
    v202 = String._bridgeToObjectiveC()();
  }

  else
  {
    v202 = [objc_allocWithZone(NSNull) init];
  }

  *(v195 + 216) = v202;
  strcpy((v195 + 224), "predictedBand");
  *(v195 + 238) = -4864;
  v203 = v253;
  if (v253)
  {
    v204 = [objc_allocWithZone(NSNull) init];
  }

  else
  {
    v204 = Int._bridgeToObjectiveC()().super.super.isa;
  }

  v205 = v272;
  *(v195 + 240) = v204;
  *(v195 + 248) = 0xD000000000000012;
  *(v195 + 256) = 0x800000010025C5F0;
  if (v270)
  {
    v206 = [objc_allocWithZone(NSNull) init];
  }

  else
  {
    v206 = Int._bridgeToObjectiveC()().super.super.isa;
  }

  *(v195 + 264) = v206;
  *(v195 + 272) = 0x434D6C6175746361;
  *(v195 + 280) = 0xE900000000000043;
  if (v205)
  {
    *(v195 + 288) = [objc_allocWithZone(NSNull) init];
    *(v195 + 296) = 0x4E4D6C6175746361;
    *(v195 + 304) = 0xE900000000000043;
    v207 = [objc_allocWithZone(NSNull) init];
  }

  else
  {
    *(v195 + 288) = Int._bridgeToObjectiveC()();
    *(v195 + 296) = 0x4E4D6C6175746361;
    *(v195 + 304) = 0xE900000000000043;
    v207 = Int._bridgeToObjectiveC()().super.super.isa;
  }

  *(v195 + 312) = v207;
  *(v195 + 320) = 0x41526C6175746361;
  *(v195 + 328) = 0xE900000000000054;
  if (v256)
  {
    v208 = String._bridgeToObjectiveC()();
  }

  else
  {
    v208 = [objc_allocWithZone(NSNull) init];
  }

  v209 = v268;
  *(v195 + 336) = v208;
  *(v195 + 344) = 0x61426C6175746361;
  *(v195 + 352) = 0xEA0000000000646ELL;
  if (v205)
  {
    v210 = [objc_allocWithZone(NSNull) init];
  }

  else
  {
    v210 = Int._bridgeToObjectiveC()().super.super.isa;
  }

  *(v195 + 360) = v210;
  *(v195 + 368) = 0x72466C6175746361;
  *(v195 + 376) = 0xEF79636E65757165;
  if (v209)
  {
    v211 = [objc_allocWithZone(NSNull) init];
  }

  else
  {
    v211 = Int._bridgeToObjectiveC()().super.super.isa;
  }

  *(v195 + 384) = v211;
  *(v195 + 392) = 0x614D43434D646964;
  *(v195 + 400) = 0xEB00000000686374;
  if (v246)
  {
    v212 = [objc_allocWithZone(NSNull) init];
  }

  else
  {
    v212 = Bool._bridgeToObjectiveC()().super.super.isa;
  }

  *(v195 + 408) = v212;
  *(v195 + 416) = 0x614D434E4D646964;
  *(v195 + 424) = 0xEB00000000686374;
  if (v248)
  {
    v213 = [objc_allocWithZone(NSNull) init];
  }

  else
  {
    v213 = Bool._bridgeToObjectiveC()().super.super.isa;
  }

  v214 = v205 | v203;
  *(v195 + 432) = v213;
  *(v195 + 440) = 0x614D544152646964;
  *(v195 + 448) = 0xEB00000000686374;
  if (v247 == 2)
  {
    v215 = [objc_allocWithZone(NSNull) init];
  }

  else
  {
    v215 = Bool._bridgeToObjectiveC()().super.super.isa;
  }

  v216 = v209 | v270;
  *(v195 + 456) = v215;
  strcpy((v195 + 464), "didBandMatch");
  *(v195 + 477) = 0;
  *(v195 + 478) = -5120;
  if (v214)
  {
    v217 = [objc_allocWithZone(NSNull) init];
  }

  else
  {
    v217 = Bool._bridgeToObjectiveC()().super.super.isa;
  }

  *(v195 + 480) = v217;
  *(v195 + 488) = 0xD000000000000011;
  *(v195 + 496) = 0x800000010025C610;
  if (v216)
  {
    v218 = [objc_allocWithZone(NSNull) init];
  }

  else
  {
    v218 = Bool._bridgeToObjectiveC()().super.super.isa;
  }

  *(v195 + 504) = v218;
  *(v195 + 512) = 0xD00000000000002BLL;
  *(v195 + 520) = 0x800000010025C630;
  v219 = v262;
  if (v262 == 1)
  {
    v220 = [objc_allocWithZone(NSNull) init];
  }

  else
  {
    v220 = Double._bridgeToObjectiveC()().super.super.isa;
  }

  *(v195 + 528) = v220;
  *(v195 + 536) = 0xD000000000000025;
  *(v195 + 544) = 0x800000010025C660;
  if (v250 == 1)
  {
    v221 = [objc_allocWithZone(NSNull) init];
  }

  else
  {
    v221 = Double._bridgeToObjectiveC()().super.super.isa;
  }

  *(v195 + 552) = v221;
  *(v195 + 560) = 0xD00000000000002ALL;
  *(v195 + 568) = 0x800000010025C690;
  if (v219 == 1)
  {
    v222 = [objc_allocWithZone(NSNull) init];
  }

  else
  {
    v222 = Double._bridgeToObjectiveC()().super.super.isa;
  }

  *(v195 + 576) = v222;
  *(v195 + 584) = 0xD00000000000001ELL;
  *(v195 + 592) = 0x800000010025C6C0;
  if (v261)
  {
    v223 = [objc_allocWithZone(NSNull) init];
  }

  else
  {
    v223 = Double._bridgeToObjectiveC()().super.super.isa;
  }

  *(v195 + 600) = v223;
  *(v195 + 608) = 0xD00000000000001BLL;
  *(v195 + 616) = 0x800000010025C6E0;
  if (v263)
  {
    v224 = [objc_allocWithZone(NSNull) init];
  }

  else
  {
    v224 = Double._bridgeToObjectiveC()().super.super.isa;
  }

  *(v195 + 624) = v224;
  *(v195 + 632) = 0xD000000000000011;
  *(v195 + 640) = 0x800000010025C700;
  sub_1001A33BC();
  *(v195 + 648) = NSNumber.init(BOOLeanLiteral:)(0);
  *(v195 + 656) = 0xD000000000000030;
  *(v195 + 664) = 0x800000010025C720;
  if (v260)
  {
    *(v195 + 672) = [objc_allocWithZone(NSNull) init];
    *(v195 + 680) = 0xD000000000000037;
    *(v195 + 688) = 0x800000010025C760;
    *(v195 + 696) = [objc_allocWithZone(NSNull) init];
    *(v195 + 704) = 0xD000000000000014;
    *(v195 + 712) = 0x800000010025C7A0;
    v225 = [objc_allocWithZone(NSNull) init];
  }

  else
  {
    *(v195 + 672) = Double._bridgeToObjectiveC()();
    *(v195 + 680) = 0xD000000000000037;
    *(v195 + 688) = 0x800000010025C760;
    *(v195 + 696) = Double._bridgeToObjectiveC()();
    *(v195 + 704) = 0xD000000000000014;
    *(v195 + 712) = 0x800000010025C7A0;
    v225 = Double._bridgeToObjectiveC()().super.super.isa;
  }

  *(v195 + 720) = v225;
  *(v195 + 728) = 0xD000000000000017;
  *(v195 + 736) = 0x800000010025C7C0;
  v226 = v273;
  v227 = v275;
  Date.distance(to:)();
  *(v195 + 744) = Double._bridgeToObjectiveC()();
  *(v195 + 752) = 0xD000000000000010;
  *(v195 + 760) = 0x800000010025C7E0;
  sub_1001A4EEC(*(v227 + *(v226 + 24)));
  v228 = String._bridgeToObjectiveC()();

  *(v195 + 768) = v228;
  *(v195 + 776) = 0xD00000000000001ELL;
  *(v195 + 784) = 0x800000010025C800;
  sub_10001A718(&v264[v227], &v276, &qword_1002D71D0, &qword_10024AE20);
  v229 = v277;
  if (v277)
  {
    v230 = v278;
    sub_100014E1C(&v276, v277);
    (*(v230 + 120))(v229, v230);
    sub_100164B98(&v276);
    v231.super.super.isa = Int._bridgeToObjectiveC()().super.super.isa;
  }

  else
  {
    sub_1000157F0(&v276, &qword_1002D71D0, &qword_10024AE20);
    v231.super.super.isa = [objc_allocWithZone(NSNull) init];
  }

  *(v195 + 792) = v231;
  strcpy((v195 + 800), "sourceCountry");
  *(v195 + 814) = -4864;
  if (*(v275 + *(v201 + 24) + 8))
  {
    v232 = String._bridgeToObjectiveC()();
  }

  else
  {
    v232 = [objc_allocWithZone(NSNull) init];
  }

  *(v195 + 816) = v232;
  *(v195 + 824) = 0xD000000000000012;
  *(v195 + 832) = 0x800000010025C820;
  if (*(v275 + *(v201 + 28) + 8))
  {
    v233 = String._bridgeToObjectiveC()();
  }

  else
  {
    v233 = [objc_allocWithZone(NSNull) init];
  }

  *(v195 + 840) = v233;
  *(v195 + 848) = 0xD000000000000019;
  *(v195 + 856) = 0x800000010025C840;
  v234 = (*(*v274 + 304))();
  if (v234 == 5)
  {
    v235 = [objc_allocWithZone(NSNull) init];
  }

  else
  {
    sub_1001BD474(v234);
    v235 = String._bridgeToObjectiveC()();
  }

  *(v195 + 864) = v235;
  v236 = sub_100164510(v195);
  swift_setDeallocating();
  sub_100164A3C(&qword_1002D5C58, qword_100249880);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v237 = v274;
  v238 = *(v274 + OBJC_IVAR____TtC17wirelessinsightsd31RoamingPLMNPredictionController_metricSubmitter + 24);
  v239 = *(v274 + OBJC_IVAR____TtC17wirelessinsightsd31RoamingPLMNPredictionController_metricSubmitter + 32);
  sub_100014E1C((v274 + OBJC_IVAR____TtC17wirelessinsightsd31RoamingPLMNPredictionController_metricSubmitter), v238);
  (*(v239 + 16))(0xD000000000000034, 0x800000010025C570, v236, v238, v239);

  (*(*v237 + 528))(v240);
  return sub_1001A3470(v275, type metadata accessor for InternalUpcomingFlightPrediction);
}

uint64_t sub_10019F958@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v162 = a2;
  v4 = *v2;
  v192 = type metadata accessor for InternalUpcomingFlightPrediction(0);
  v185 = *(v192 - 8);
  v5 = __chkstk_darwin(v192);
  v158 = &v156 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v159 = &v156 - v8;
  v9 = __chkstk_darwin(v7);
  v186 = &v156 - v10;
  v11 = __chkstk_darwin(v9);
  v181 = &v156 - v12;
  v13 = __chkstk_darwin(v11);
  v184 = &v156 - v14;
  __chkstk_darwin(v13);
  v180 = &v156 - v15;
  v16 = sub_100164A3C(&qword_1002D6E10, &qword_10024AE18);
  v17 = __chkstk_darwin(v16 - 8);
  v161 = &v156 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v178 = &v156 - v20;
  __chkstk_darwin(v19);
  v22 = &v156 - v21;
  v23 = type metadata accessor for Date();
  v24 = *(v23 - 8);
  v25 = __chkstk_darwin(v23);
  v168 = &v156 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v28 = &v156 - v27;
  v191 = type metadata accessor for Logger();
  v29 = *(v191 - 8);
  v30 = __chkstk_darwin(v191);
  v171 = &v156 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v30);
  v163 = &v156 - v33;
  v34 = __chkstk_darwin(v32);
  v164 = &v156 - v35;
  v36 = __chkstk_darwin(v34);
  v172 = &v156 - v37;
  v38 = __chkstk_darwin(v36);
  v40 = &v156 - v39;
  __chkstk_darwin(v38);
  v42 = &v156 - v41;
  v194 = v4;
  sub_100003E50(&off_1002B6A68, &v156 - v41);
  v43 = *(v24 + 16);
  v188 = a1;
  v44 = a1;
  v45 = v23;
  v167 = v24 + 16;
  v166 = v43;
  v43(v28, v44, v23);
  v46 = v22;
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.debug.getter();
  v49 = os_log_type_enabled(v47, v48);
  v193 = v46;
  v170 = v23;
  v189 = v40;
  if (v49)
  {
    v50 = swift_slowAlloc();
    v51 = v24;
    v52 = swift_slowAlloc();
    v196[0] = v52;
    *v50 = 136315138;
    sub_1001A34D0(&qword_1002D5B88, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v53 = dispatch thunk of CustomStringConvertible.description.getter();
    v54 = v45;
    v56 = v55;
    v165 = *(v51 + 8);
    v165(v28, v54);
    v57 = sub_10017A8A8(v53, v56, v196);

    *(v50 + 4) = v57;
    _os_log_impl(&_mh_execute_header, v47, v48, "Fetching most likely prediction for time %s", v50, 0xCu);
    sub_100164B98(v52);
    v58 = v51 + 8;
    v40 = v189;
    v46 = v193;

    v59 = v191;
    v195 = *(v29 + 8);
    v195(v42, v191);
    v60 = v29 + 8;
  }

  else
  {

    v165 = *(v24 + 8);
    v165(v28, v23);
    v59 = v191;
    v195 = *(v29 + 8);
    v195(v42, v191);
    v60 = v29 + 8;
    v58 = v24 + 8;
  }

  v62 = v185 + 56;
  v61 = *(v185 + 56);
  v63 = v192;
  v61(v46, 1, 1, v192);
  v173 = v61;
  v64 = (v61)(v178, 1, 1, v63);
  result = (*(*v190 + 208))(v64);
  v67 = 0;
  v69 = result + 56;
  v68 = *(result + 56);
  v183 = result;
  v70 = 1 << *(result + 32);
  v71 = -1;
  if (v70 < 64)
  {
    v71 = ~(-1 << v70);
  }

  v72 = v71 & v68;
  v73 = (v70 + 63) >> 6;
  v174 = v62;
  v187 = (v62 - 8);
  *&v66 = 136315394;
  v176 = v66;
  *&v66 = 136315138;
  v160 = v66;
  v190 = v60;
  v74 = v184;
  v169 = v58;
  v179 = v73;
  v177 = result + 56;
  if ((v71 & v68) != 0)
  {
    while (1)
    {
LABEL_13:
      while (1)
      {
        v77 = v180;
        sub_1001A3408(*(v183 + 48) + *(v185 + 72) * (__clz(__rbit64(v72)) | (v67 << 6)), v180, type metadata accessor for InternalUpcomingFlightPrediction);
        sub_1001A3358(v77, v74);
        v182 = type metadata accessor for MapsSuggestionController.UpcomingFlightPrediction(0);
        Date.distance(to:)();
        v79 = fabs(v78);
        sub_100003E50(&off_1002B6A68, v40);
        v80 = v74;
        v81 = v181;
        sub_1001A3408(v80, v181, type metadata accessor for InternalUpcomingFlightPrediction);
        v82 = Logger.logObject.getter();
        v83 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v82, v83))
        {
          v84 = swift_slowAlloc();
          v85 = swift_slowAlloc();
          v196[0] = v85;
          *v84 = v176;
          sub_1001A34D0(&qword_1002D6E18, type metadata accessor for InternalUpcomingFlightPrediction, &unk_10024C8E8);
          v86 = dispatch thunk of CustomStringConvertible.description.getter();
          v88 = v87;
          sub_1001A3470(v81, type metadata accessor for InternalUpcomingFlightPrediction);
          v89 = sub_10017A8A8(v86, v88, v196);

          *(v84 + 4) = v89;
          *(v84 + 12) = 2048;
          *(v84 + 14) = v79;
          _os_log_impl(&_mh_execute_header, v82, v83, "Checking %s. Time diff: %f", v84, 0x16u);
          sub_100164B98(v85);
          v40 = v189;
          v90 = v193;

          v59 = v191;
          v195(v40, v191);
          v91 = v186;
        }

        else
        {

          sub_1001A3470(v81, type metadata accessor for InternalUpcomingFlightPrediction);
          v59 = v191;
          v195(v40, v191);
          v91 = v186;
          v90 = v193;
        }

        v72 &= v72 - 1;
        v74 = v184;
        if (v79 <= 7200.0)
        {
          break;
        }

        v92 = v59;
        v93 = v172;
        sub_100003E50(&off_1002B6A68, v172);
        v94 = Logger.logObject.getter();
        v95 = static os_log_type_t.debug.getter();
        v96 = os_log_type_enabled(v94, v95);
        v97 = v192;
        if (v96)
        {
          v98 = swift_slowAlloc();
          *v98 = 0;
          _os_log_impl(&_mh_execute_header, v94, v95, "Time diff larger than maximum, skipping", v98, 2u);
          v40 = v189;
        }

        v75 = v93;
        v59 = v92;
        v195(v75, v92);
        result = sub_1001A3470(v74, type metadata accessor for InternalUpcomingFlightPrediction);
        v73 = v179;
        v63 = v97;
        v69 = v177;
        if (!v72)
        {
          goto LABEL_9;
        }
      }

      v63 = v192;
      v175 = *v187;
      if ((v175)(v90, 1, v192))
      {
        if (v79 > 1.79769313e308)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v99 = v90 + *(v182 + 13);
        v100 = v168;
        v101 = v170;
        v166(v168, v99, v170);
        Date.distance(to:)();
        v103 = v102;
        v69 = v177;
        v104 = v101;
        v40 = v189;
        v165(v100, v104);
        if (v79 > fabs(v103))
        {
          goto LABEL_27;
        }
      }

      v105 = v164;
      sub_100003E50(&off_1002B6A68, v164);
      sub_1001A3408(v74, v91, type metadata accessor for InternalUpcomingFlightPrediction);
      v106 = Logger.logObject.getter();
      v107 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v106, v107))
      {
        v108 = swift_slowAlloc();
        v157 = swift_slowAlloc();
        v196[0] = v157;
        *v108 = v160;
        sub_1001A34D0(&qword_1002D6E18, type metadata accessor for InternalUpcomingFlightPrediction, &unk_10024C8E8);
        v109 = dispatch thunk of CustomStringConvertible.description.getter();
        v111 = v110;
        sub_1001A3470(v186, type metadata accessor for InternalUpcomingFlightPrediction);
        v112 = sub_10017A8A8(v109, v111, v196);
        v63 = v192;

        *(v108 + 4) = v112;
        _os_log_impl(&_mh_execute_header, v106, v107, "Prediction is new best match: %s", v108, 0xCu);
        sub_100164B98(v157);
        v113 = v193;

        v59 = v191;
        v195(v105, v191);
      }

      else
      {

        sub_1001A3470(v91, type metadata accessor for InternalUpcomingFlightPrediction);
        v59 = v191;
        v195(v105, v191);
        v113 = v193;
      }

      sub_1000157F0(v113, &qword_1002D6E10, &qword_10024AE18);
      sub_1001A3408(v74, v113, type metadata accessor for InternalUpcomingFlightPrediction);
      v173(v113, 0, 1, v63);
      v40 = v189;
LABEL_27:
      sub_10001A718(v74 + *(v63 + 20), v196, &qword_1002D71D0, &qword_10024AE20);
      if (v196[3])
      {
        sub_1000157F0(v196, &qword_1002D71D0, &qword_10024AE20);
        v114 = v178;
        if ((v175)(v178, 1, v63))
        {
          if (v79 <= 1.79769313e308)
          {
            goto LABEL_33;
          }
        }

        else
        {
          v115 = v114 + *(v182 + 13);
          v116 = v168;
          v117 = v170;
          v166(v168, v115, v170);
          Date.distance(to:)();
          v119 = v118;
          v165(v116, v117);
          if (v79 <= fabs(v119))
          {
LABEL_33:
            v120 = v163;
            sub_100003E50(&off_1002B6A68, v163);
            v121 = v159;
            sub_1001A3408(v74, v159, type metadata accessor for InternalUpcomingFlightPrediction);
            v122 = Logger.logObject.getter();
            v123 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v122, v123))
            {
              v124 = swift_slowAlloc();
              v175 = v124;
              v182 = swift_slowAlloc();
              v196[0] = v182;
              *v124 = v160;
              sub_1001A34D0(&qword_1002D6E18, type metadata accessor for InternalUpcomingFlightPrediction, &unk_10024C8E8);
              v125 = v121;
              v63 = v192;
              v126 = dispatch thunk of CustomStringConvertible.description.getter();
              v128 = v127;
              sub_1001A3470(v125, type metadata accessor for InternalUpcomingFlightPrediction);
              v129 = sub_10017A8A8(v126, v128, v196);
              v59 = v191;

              v130 = v175;
              *(v175 + 4) = v129;
              _os_log_impl(&_mh_execute_header, v122, v123, "Prediction is new best match with cellular coverage data: %s", v130, 0xCu);
              sub_100164B98(v182);

              v195(v163, v59);
            }

            else
            {

              sub_1001A3470(v121, type metadata accessor for InternalUpcomingFlightPrediction);
              v195(v120, v59);
              v63 = v192;
            }

            v131 = v178;
            sub_1000157F0(v178, &qword_1002D6E10, &qword_10024AE18);
            sub_1001A3358(v74, v131);
            result = (v173)(v131, 0, 1, v63);
            v40 = v189;
            goto LABEL_37;
          }
        }

        result = sub_1001A3470(v74, type metadata accessor for InternalUpcomingFlightPrediction);
      }

      else
      {
        sub_1001A3470(v74, type metadata accessor for InternalUpcomingFlightPrediction);
        result = sub_1000157F0(v196, &qword_1002D71D0, &qword_10024AE20);
      }

LABEL_37:
      v73 = v179;
      if (!v72)
      {
        goto LABEL_9;
      }
    }
  }

  while (1)
  {
LABEL_9:
    v76 = v67 + 1;
    if (__OFADD__(v67, 1))
    {
      __break(1u);
      return result;
    }

    if (v76 >= v73)
    {
      break;
    }

    v72 = *(v69 + 8 * v76);
    ++v67;
    if (v72)
    {
      v67 = v76;
      goto LABEL_13;
    }
  }

  v132 = v171;
  sub_100003E50(&off_1002B6A68, v171);
  v133 = Logger.logObject.getter();
  v134 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v133, v134))
  {
    v135 = swift_slowAlloc();
    v196[0] = swift_slowAlloc();
    *v135 = v176;
    v136 = v178;
    swift_beginAccess();
    v137 = v63;
    v138 = *v187;
    if ((*v187)(v136, 1, v137))
    {
      v139 = 0xE300000000000000;
      v140 = 7104878;
    }

    else
    {
      v141 = v158;
      sub_1001A3408(v136, v158, type metadata accessor for InternalUpcomingFlightPrediction);
      v142 = sub_1001BCC88();
      v139 = v143;
      sub_1001A3470(v141, type metadata accessor for InternalUpcomingFlightPrediction);
      v140 = v142;
      v59 = v191;
    }

    v144 = sub_10017A8A8(v140, v139, v196);

    *(v135 + 4) = v144;
    *(v135 + 12) = 2080;
    v145 = v193;
    swift_beginAccess();
    if (v138(v145, 1, v192))
    {
      v146 = 0xE300000000000000;
      v147 = 7104878;
    }

    else
    {
      v148 = v158;
      sub_1001A3408(v145, v158, type metadata accessor for InternalUpcomingFlightPrediction);
      v149 = sub_1001BCC88();
      v146 = v150;
      sub_1001A3470(v148, type metadata accessor for InternalUpcomingFlightPrediction);
      v147 = v149;
    }

    v151 = sub_10017A8A8(v147, v146, v196);

    *(v135 + 14) = v151;
    _os_log_impl(&_mh_execute_header, v133, v134, "Final result: best match with cellular coverage data %s. Best match %s", v135, 0x16u);
    swift_arrayDestroy();

    v195(v171, v59);
    v63 = v192;
  }

  else
  {

    v195(v132, v59);
    v136 = v178;
  }

  v152 = v161;
  swift_beginAccess();
  sub_10001A718(v136, v152, &qword_1002D6E10, &qword_10024AE18);
  v153 = *v187;
  if ((*v187)(v152, 1, v63) == 1)
  {
    v154 = v193;
    swift_beginAccess();
    sub_10001A718(v154, v162, &qword_1002D6E10, &qword_10024AE18);
    if (v153(v152, 1, v63) != 1)
    {
      sub_1000157F0(v152, &qword_1002D6E10, &qword_10024AE18);
    }
  }

  else
  {
    v155 = v162;
    sub_1001A3358(v152, v162);
    v173(v155, 0, 1, v63);
  }

  sub_1000157F0(v136, &qword_1002D6E10, &qword_10024AE18);
  return sub_1000157F0(v193, &qword_1002D6E10, &qword_10024AE18);
}

uint64_t sub_1001A0FC0(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003E50(&off_1002B6A68, v6);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v18 = v3;
    v10 = v9;
    v11 = swift_slowAlloc();
    v19 = v11;
    *v10 = 136315138;
    type metadata accessor for InternalUpcomingFlightPrediction(0);
    sub_1001A34D0(&qword_1002D8250, type metadata accessor for InternalUpcomingFlightPrediction, &unk_10024C8A8);
    v12 = Set.description.getter();
    v14 = sub_10017A8A8(v12, v13, &v19);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v7, v8, "Received new upcoming flight predictions: %s", v10, 0xCu);
    sub_100164B98(v11);

    (*(v4 + 8))(v6, v18);
  }

  else
  {

    (*(v4 + 8))(v6, v3);
  }

  v15 = *(*v2 + 216);

  return v15(v16);
}

uint64_t sub_1001A1240(int a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_100164A3C(&unk_1002D7BD0, &unk_10024A800);
  __chkstk_darwin(v5 - 8);
  v104 = &v88 - v6;
  v7 = type metadata accessor for MapsSuggestionController.UpcomingFlightPrediction(0);
  __chkstk_darwin(v7 - 8);
  v93 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for InternalUpcomingFlightPrediction(0);
  v101 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v94 = &v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v92 = &v88 - v12;
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v98 = &v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100164A3C(&qword_1002D6E10, &qword_10024AE18);
  v17 = __chkstk_darwin(v16 - 8);
  v96 = &v88 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v95 = &v88 - v20;
  __chkstk_darwin(v19);
  v97 = &v88 - v21;
  v22 = type metadata accessor for Logger();
  v23 = *(v22 - 8);
  v24 = __chkstk_darwin(v22);
  v102 = &v88 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v27 = &v88 - v26;
  v99 = v4;
  sub_100003E50(&off_1002B6A68, &v88 - v26);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.info.getter();
  v30 = os_log_type_enabled(v28, v29);
  v100 = v9;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    v105[0] = v91;
    *v31 = 136315138;
    if (a1)
    {
      v32 = 28271;
    }

    else
    {
      v32 = 6710895;
    }

    v103 = v23;
    if (a1)
    {
      v33 = 0xE200000000000000;
    }

    else
    {
      v33 = 0xE300000000000000;
    }

    v34 = sub_10017A8A8(v32, v33, v105);
    LODWORD(v90) = a1;
    v35 = v2;
    v36 = v22;
    v37 = v14;
    v38 = v13;
    v39 = v34;
    v23 = v103;

    *(v31 + 4) = v39;
    v13 = v38;
    v14 = v37;
    v22 = v36;
    v2 = v35;
    _os_log_impl(&_mh_execute_header, v28, v29, "Airplane mode is now %s", v31, 0xCu);
    sub_100164B98(v91);

    v40 = v90;

    v41 = v23;
  }

  else
  {

    v41 = v23;
    v40 = a1;
  }

  v42 = *(v41 + 8);
  v43 = v42(v27, v22);
  result = (*(*v2 + 232))(v43);
  if (v40)
  {
    if (result == 3)
    {
      return result;
    }

    v103 = v23;
    (*(*v2 + 536))();
    v45 = (v2 + OBJC_IVAR____TtC17wirelessinsightsd31RoamingPLMNPredictionController_dateProvider);
    v46 = *(v2 + OBJC_IVAR____TtC17wirelessinsightsd31RoamingPLMNPredictionController_dateProvider + 24);
    v47 = *(v2 + OBJC_IVAR____TtC17wirelessinsightsd31RoamingPLMNPredictionController_dateProvider + 32);
    sub_100014E1C((v2 + OBJC_IVAR____TtC17wirelessinsightsd31RoamingPLMNPredictionController_dateProvider), v46);
    v48 = v98;
    (*(v47 + 8))(v46, v47);
    v49 = v97;
    (*(*v2 + 544))(v48);
    v50 = *(v14 + 8);
    v98 = v13;
    v50(v48, v13);
    (*(*v2 + 384))(v49);
    v51 = v102;
    sub_100003E50(&off_1002B6A68, v102);

    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.info.getter();

    if (!os_log_type_enabled(v52, v53))
    {

      v64 = v51;
      v65 = v22;
LABEL_25:
      v42(v64, v65);
      (*(*v2 + 360))(1);
      (*(*v2 + 240))(3);
      v82 = v45[3];
      v83 = v45[4];
      sub_100014E1C(v45, v82);
      v84 = v104;
      (*(v83 + 8))(v82, v83);
      (*(v14 + 56))(v84, 0, 1, v98);
      v85 = (*(*v2 + 408))(v84);
      v86 = (*(*v2 + 328))(v85);
      return (*(*v2 + 432))(v86, v87 & 1);
    }

    v89 = v53;
    v90 = v52;
    v91 = v45;
    v97 = v22;
    v99 = v14;
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v88 = v55;
    v107[0] = v55;
    *v54 = 136315394;
    v56 = *(*v2 + 376);
    v57 = v95;
    v56(v55);
    v58 = *(v101 + 48);
    v101 += 48;
    if (v58(v57, 1, v100))
    {
      sub_1000157F0(v57, &qword_1002D6E10, &qword_10024AE18);
      v59 = 0xE300000000000000;
      v60 = 7104878;
    }

    else
    {
      v66 = v92;
      sub_1001A3408(v57, v92, type metadata accessor for InternalUpcomingFlightPrediction);
      sub_1000157F0(v57, &qword_1002D6E10, &qword_10024AE18);
      v67 = v93;
      sub_1001A3408(v66, v93, type metadata accessor for MapsSuggestionController.UpcomingFlightPrediction);
      sub_1001A3470(v66, type metadata accessor for InternalUpcomingFlightPrediction);
      v68 = sub_1001A4F98();
      v59 = v69;
      sub_1001A3470(v67, type metadata accessor for MapsSuggestionController.UpcomingFlightPrediction);
      v60 = v68;
    }

    v70 = sub_10017A8A8(v60, v59, v107);

    *(v54 + 4) = v70;
    *(v54 + 12) = 2080;
    v72 = v96;
    v56(v71);
    v73 = v100;
    if (v58(v72, 1, v100))
    {
      sub_1000157F0(v72, &qword_1002D6E10, &qword_10024AE18);
      v14 = v99;
      v74 = v97;
      v45 = v91;
    }

    else
    {
      v77 = v94;
      sub_1001A3408(v72, v94, type metadata accessor for InternalUpcomingFlightPrediction);
      sub_1000157F0(v72, &qword_1002D6E10, &qword_10024AE18);
      sub_10001A718(v77 + *(v73 + 20), v105, &qword_1002D71D0, &qword_10024AE20);
      sub_1001A3470(v77, type metadata accessor for InternalUpcomingFlightPrediction);
      v14 = v99;
      v74 = v97;
      v45 = v91;
      if (v106)
      {
        sub_100014E1C(v105, v106);
        v78 = dispatch thunk of CustomStringConvertible.description.getter();
        v75 = v79;
        sub_100164B98(v105);
        v76 = v78;
        goto LABEL_24;
      }

      sub_1000157F0(v105, &qword_1002D71D0, &qword_10024AE20);
    }

    v75 = 0xE300000000000000;
    v76 = 7104878;
LABEL_24:
    v80 = sub_10017A8A8(v76, v75, v107);

    *(v54 + 14) = v80;
    v81 = v90;
    _os_log_impl(&_mh_execute_header, v90, v89, "Most likely prediction: %s. Cellular coverage tile %s", v54, 0x16u);
    swift_arrayDestroy();

    v64 = v102;
    v65 = v74;
    goto LABEL_25;
  }

  if (result == 3)
  {
    (*(*v2 + 240))(4);
    v61 = *(v2 + OBJC_IVAR____TtC17wirelessinsightsd31RoamingPLMNPredictionController_dateProvider + 24);
    v62 = *(v2 + OBJC_IVAR____TtC17wirelessinsightsd31RoamingPLMNPredictionController_dateProvider + 32);
    sub_100014E1C((v2 + OBJC_IVAR____TtC17wirelessinsightsd31RoamingPLMNPredictionController_dateProvider), v61);
    v63 = v104;
    (*(v62 + 8))(v61, v62);
    (*(v14 + 56))(v63, 0, 1, v13);
    return (*(*v2 + 456))(v63);
  }

  return result;
}

uint64_t sub_1001A1E68(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100164A3C(&unk_1002D7BD0, &unk_10024A800);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v37 - v8;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003E50(&off_1002B6A68, v13);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v40 = v9;
    v17 = v16;
    v18 = swift_slowAlloc();
    v39 = v7;
    v19 = v18;
    v42 = v18;
    *v17 = 136315138;
    v41 = a1;
    sub_1001A3518();
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = sub_10017A8A8(v20, v21, &v42);
    v38 = v10;
    v23 = a1;
    v24 = v22;

    *(v17 + 4) = v24;
    a1 = v23;
    _os_log_impl(&_mh_execute_header, v14, v15, "Registration state changed to %s", v17, 0xCu);
    sub_100164B98(v19);
    v7 = v39;

    v9 = v40;

    (*(v11 + 8))(v13, v38);
  }

  else
  {

    (*(v11 + 8))(v13, v10);
  }

  v25 = (*(*v1 + 312))(a1);
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      result = (*(*v1 + 232))(v25);
      if (result != 3)
      {
        (*(*v1 + 472))();
        v32 = type metadata accessor for Date();
        v33 = *(v32 - 8);
        v34 = (*(v33 + 48))(v7, 1, v32);
        sub_1000157F0(v7, &unk_1002D7BD0, &unk_10024A800);
        if (v34 == 1)
        {
          v35 = *(v2 + OBJC_IVAR____TtC17wirelessinsightsd31RoamingPLMNPredictionController_dateProvider + 24);
          v36 = *(v2 + OBJC_IVAR____TtC17wirelessinsightsd31RoamingPLMNPredictionController_dateProvider + 32);
          sub_100014E1C((v2 + OBJC_IVAR____TtC17wirelessinsightsd31RoamingPLMNPredictionController_dateProvider), v35);
          (*(v36 + 8))(v35, v36);
          (*(v33 + 56))(v9, 0, 1, v32);
          (*(*v2 + 480))(v9);
        }

        return (*(*v2 + 240))(1);
      }
    }

    else
    {
      result = (*(*v1 + 232))(v25);
      if (result != 3)
      {
        return (*(*v1 + 240))(2);
      }
    }
  }

  else if (a1 - 1 >= 2)
  {
    result = (*(*v1 + 232))(v25);
    if (result != 3)
    {
      return (*(*v1 + 240))(4);
    }
  }

  else
  {
    v26 = *(*v1 + 232);
    result = (v26)(v25);
    if (result != 3)
    {
      result = v26();
      if (result)
      {
        v28 = *(v1 + OBJC_IVAR____TtC17wirelessinsightsd31RoamingPLMNPredictionController_dateProvider + 24);
        v29 = *(v1 + OBJC_IVAR____TtC17wirelessinsightsd31RoamingPLMNPredictionController_dateProvider + 32);
        sub_100014E1C((v1 + OBJC_IVAR____TtC17wirelessinsightsd31RoamingPLMNPredictionController_dateProvider), v28);
        (*(v29 + 8))(v28, v29);
        v30 = type metadata accessor for Date();
        (*(*(v30 - 8) + 56))(v9, 0, 1, v30);
        (*(*v1 + 504))(v9);
        v31 = (*(*v1 + 240))(0);
        return (*(*v1 + 536))(v31);
      }
    }
  }

  return result;
}