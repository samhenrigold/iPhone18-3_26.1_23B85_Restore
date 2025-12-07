void sub_18846E524(uint64_t *a1, void **a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, void *a6, void *a7, uint64_t *a8)
{
  v14 = *a2;
  swift_beginAccess();
  v15 = sub_18847E300(v14, *a3);
  if (v15)
  {
    v16 = v15;
    swift_endAccess();
    v67 = v16;
    v68 = 0;
    v69 = 0;
    v70 = 0;
    v71 = 256;
    v17 = v16;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v66 = *a1;
    sub_1884AF034(&v67, v14, isUniquelyReferenced_nonNull_native);

LABEL_3:
    *a1 = v66;
    return;
  }

  v61 = a8;
  swift_endAccess();
  swift_beginAccess();
  v19 = sub_18847E34C(v14, *a4);
  if (!v19)
  {
    swift_endAccess();
    v67 = related decl 'e' for CKErrorCode.init(_:description:)(1, 0xD000000000000021, 0x80000001886FFA70);
    v68 = 0;
    v69 = 0;
    v70 = 0;
    v71 = 256;
    v54 = swift_isUniquelyReferenced_nonNull_native();
    v66 = *a1;
    sub_1884AF034(&v67, v14, v54);
    goto LABEL_3;
  }

  v59 = v19;
  v60 = a1;
  swift_endAccess();
  swift_beginAccess();
  v20 = v14;

  v65 = v20;
  v58 = sub_18846FF3C(v21, v20);

  swift_beginAccess();
  v22 = *a6;
  v23 = *a6 + 48;
  v63 = *(*a6 + 16);

  v24 = 0;
  v62 = MEMORY[0x1E69E7CC0];
  v57 = v23;
LABEL_6:
  v25 = (v23 + 24 * v24);
  while (v63 != v24)
  {
    if (v24 >= *(v22 + 16))
    {
      __break(1u);
LABEL_34:
      __break(1u);
      return;
    }

    v26 = a7;
    v28 = *(v25 - 2);
    v27 = *(v25 - 1);
    v29 = *v25;
    sub_1883F4C5C(0, &qword_1EA90CA80, 0x1E69E58C0);
    v30 = v28;

    v31 = [v30 zoneID];
    v32 = static NSObject.== infix(_:_:)();

    if (v32)
    {
      v33 = v62;
      v67 = v62;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_188477804(0, *(v62 + 16) + 1, 1);
        v33 = v67;
      }

      v35 = *(v33 + 16);
      v34 = *(v33 + 24);
      if (v35 >= v34 >> 1)
      {
        sub_188477804((v34 > 1), v35 + 1, 1);
        v33 = v67;
      }

      ++v24;
      *(v33 + 16) = v35 + 1;
      v62 = v33;
      v36 = (v33 + 24 * v35);
      v36[4] = v30;
      v36[5] = v27;
      v36[6] = v29;
      a7 = v26;
      v23 = v57;
      goto LABEL_6;
    }

    v25 += 3;
    ++v24;
    a7 = v26;
  }

  swift_beginAccess();
  v37 = *a7;
  v38 = *(*a7 + 16);

  v39 = 0;
  v64 = MEMORY[0x1E69E7CC0];
  while (v38 != v39)
  {
    if (v39 >= *(v37 + 16))
    {
      goto LABEL_34;
    }

    v40 = *(v37 + 8 * v39 + 32);
    sub_1883F4C5C(0, &qword_1EA90CA80, 0x1E69E58C0);
    v41 = v40;
    v42 = [v41 zoneID];
    v43 = static NSObject.== infix(_:_:)();

    if (v43)
    {
      v44 = v64;
      v67 = v64;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1884777CC(0, *(v64 + 16) + 1, 1);
        v44 = v67;
      }

      v46 = *(v44 + 16);
      v45 = *(v44 + 24);
      if (v46 >= v45 >> 1)
      {
        sub_1884777CC(v45 > 1, v46 + 1, 1);
        v44 = v67;
      }

      ++v39;
      *(v44 + 16) = v46 + 1;
      v64 = v44;
      *(v44 + 8 * v46 + 32) = v41;
    }

    else
    {

      ++v39;
    }
  }

  swift_beginAccess();
  v47 = *v61;
  if (*(*v61 + 16))
  {
    sub_188486310();
    v49 = v60;
    v51 = v58;
    v50 = v59;
    if (v52)
    {
      v53 = *(*(v47 + 56) + v48);
    }

    else
    {
      v53 = 0;
    }
  }

  else
  {
    v53 = 0;
    v49 = v60;
    v51 = v58;
    v50 = v59;
  }

  swift_endAccess();
  v67 = v51;
  v68 = v62;
  v69 = v64;
  v70 = v50;
  v71 = v53;
  v55 = v50;
  v56 = swift_isUniquelyReferenced_nonNull_native();
  v72 = *v49;
  sub_1884AF034(&v67, v65, v56);

  *v49 = v72;
}

uint64_t sub_18846EA90(void *a1, char a2)
{
  sub_18844E6FC(&qword_1EA90D598, &qword_1886F7FE8);
  sub_1883FE568();
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  return sub_18846E3AC(a1, a2 & 1, v2 + v9, *(v2 + v7), *(v2 + v8), *(v2 + v5), *(v2 + v6), *(v2 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_18846EB78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return sub_1883F7178();
}

uint64_t sub_18846EB90()
{
  sub_1883F78E0();
  v1 = v0[5];
  v0[6] = [v1 implementation];
  v2 = [v1 container];
  v0[7] = [v2 convenienceConfiguration];

  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_18846EC84;
  v4 = sub_1883FD9D0();

  return sub_18846EDBC(v4, v5, v6, v7, v8);
}

uint64_t sub_18846EC84()
{
  sub_1883F78E0();
  v3 = v2;
  sub_1883F78EC();
  v5 = v4;
  sub_1883F7B78();
  *v6 = v5;
  v7 = *v1;
  sub_1883F7110();
  *v8 = v7;
  *(v5 + 72) = v0;

  if (v0)
  {
    sub_1883F7FD8();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = *(v5 + 48);

    sub_1883F7910();

    return v13(v3);
  }
}

uint64_t sub_18846EDBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[12] = a5;
  v6[13] = v5;
  v6[10] = a3;
  v6[11] = a4;
  v6[9] = a1;
  return sub_1883F7178();
}

uint64_t sub_18846EDD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = sub_188470588(v12[9]);
  v12[14] = v14;
  v15 = v12[9];
  if (v14)
  {
    v16 = v13;
    v17 = v14;
    v18 = [v12[9] recordID];
    v12[15] = v18;
    if (v18)
    {
      v19 = v18;
      v48 = v12[13];
      v49 = v12[12];
      v20 = v12[11];
      v47 = v12[10];
      v21 = v12[9];
      sub_1883F4C5C(0, &unk_1EA90C110, off_1E70BA308);
      sub_18844E6FC(&qword_1EA90D4F8, &qword_1886F7F20);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_1886F79A0;
      *(v22 + 32) = v19;
      v23 = v19;
      v24 = sub_18846D310();
      v12[16] = v24;
      sub_18844E6FC(&qword_1EA90D5A8, &unk_1886FE110);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_1886F7400;
      *(v25 + 32) = v16;
      *(v25 + 40) = v17;

      CKFetchRecordsOperation.desiredKeys.setter(v25);
      v26 = swift_allocObject();
      *(v26 + 16) = v20;
      *(v26 + 24) = v21;
      v12[6] = sub_1884706A4;
      v12[7] = v26;
      v12[2] = MEMORY[0x1E69E9820];
      v12[3] = 1107296256;
      v12[4] = sub_18846F490;
      v12[5] = &unk_1EFA27628;
      v27 = _Block_copy(v12 + 2);
      v28 = v20;
      v29 = v21;

      [v24 setPerRecordProgressBlock_];
      _Block_release(v27);
      v30 = swift_task_alloc();
      v12[17] = v30;
      v30[2] = v24;
      v30[3] = v23;
      v30[4] = v29;
      v30[5] = v16;
      v30[6] = v17;
      v30[7] = v48;
      v30[8] = v47;
      v30[9] = v49;
      v31 = swift_task_alloc();
      v12[18] = v31;
      *(v31 + 16) = v24;
      v32 = swift_task_alloc();
      v12[19] = v32;
      sub_18844E6FC(&qword_1EA90D5B0, &qword_1886F8018);
      sub_1883F81C8();
      *v32 = v34;
      v32[1] = sub_18846F1E4;

      return MEMORY[0x1EEE6DE18](v12 + 8, &unk_1886F8010, v30, sub_188470784, v31, 0, 0, v33, a9, a10, a11, a12);
    }

    v38 = v12[9];

    _StringGuts.grow(_:)(25);

    sub_1883FE9CC();
    v50 = v40;
    v51 = v39;
    v37 = [v38 description];
  }

  else
  {
    _StringGuts.grow(_:)(26);

    sub_1883FE9CC();
    v50 = v36 + 1;
    v51 = v35;
    v37 = [v15 description];
  }

  v41 = v37;
  v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v44 = v43;

  MEMORY[0x18CFD5140](v42, v44);

  related decl 'e' for CKErrorCode.init(_:description:)(14, v50, v51);
  swift_willThrow();
  sub_1883F816C();

  return v45();
}

uint64_t sub_18846F1E4()
{
  sub_1883F78E0();
  sub_1883F78EC();
  v3 = v2;
  sub_1883F7B78();
  *v4 = v3;
  v5 = *v1;
  sub_1883F7110();
  *v6 = v5;
  *(v3 + 160) = v0;

  if (!v0)
  {
  }

  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18846F300()
{
  sub_1883F7120();
  v1 = *(v0 + 128);

  sub_1883F7910();

  return v2();
}

uint64_t sub_18846F364()
{
  sub_1883F78E0();
  v1 = *(v0 + 120);

  sub_1883F816C();

  return v2();
}

id sub_18846F3EC(int a1, void *a2, id a3, double a4)
{
  result = [a3 size];
  v7 = result * a4;
  if (COERCE__INT64(fabs(v7)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v7 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v7 >= 9.22337204e18)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  return [a2 setCompletedUnitCount_];
}

void sub_18846F490(uint64_t a1, void *a2, double a3)
{
  v5 = *(a1 + 32);

  v6 = a2;
  v5(a3);
}

uint64_t sub_18846F508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v10;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  v8[3] = a2;
  v8[4] = a3;
  v8[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_18846F540, 0, 0);
}

uint64_t sub_18846F540()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v4 = *(v0 + 40);
  v3 = *(v0 + 48);
  v5 = swift_task_alloc();
  *(v0 + 88) = v5;
  v6 = *(v0 + 56);
  *(v5 + 16) = *(v0 + 24);
  *(v5 + 32) = v4;
  *(v5 + 40) = v3;
  *(v5 + 48) = v6;
  *(v5 + 64) = v2;
  *(v5 + 72) = v1;
  v7 = swift_task_alloc();
  *(v0 + 96) = v7;
  sub_18844E6FC(&qword_1EA90D5B0, &qword_1886F8018);
  sub_1883F81C8();
  *v7 = v8;
  v7[1] = sub_18846F654;
  sub_1883F955C();

  return MEMORY[0x1EEE6DE38](v9, v10, v11, 0xD00000000000005ALL, v12, v13, v5, v14);
}

uint64_t sub_18846F654()
{
  sub_1883F7120();
  sub_1883F78EC();
  v3 = v2;
  sub_1883F7B78();
  *v4 = v3;
  v5 = *v1;
  sub_1883F7110();
  *v6 = v5;
  *(v3 + 104) = v0;

  if (v0)
  {
    sub_1883F7FD8();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    sub_1883F816C();

    return v10();
  }
}

id sub_18846F770(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9)
{
  v33 = a7;
  v34 = a8;
  v29 = a5;
  v30 = a6;
  v31 = a2;
  v32 = a9;
  v12 = sub_18844E6FC(&qword_1EA90D5B8, &qword_1886F8020);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v29 - v16;
  (*(v13 + 16))(&v29 - v16, a1, v12, v15);
  v18 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v19 = (v14 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  (*(v13 + 32))(v21 + v18, v17, v12);
  *(v21 + v19) = a3;
  *(v21 + v20) = a4;
  v22 = (v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8));
  v23 = v30;
  *v22 = v29;
  v22[1] = v23;
  aBlock[4] = sub_1884707C8;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1884B2FD4;
  aBlock[3] = &unk_1EFA27678;
  v24 = _Block_copy(aBlock);
  v25 = a3;
  v26 = a4;

  v27 = v31;
  [v31 setFetchRecordsCompletionBlock_];
  _Block_release(v24);
  return [v33 _scheduleConvenienceOperation_wrappingDatabase_convenienceConfiguration_];
}

void sub_18846F99C(uint64_t a1, id a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {
    v7 = a2;
LABEL_11:
    sub_18844E6FC(&qword_1EA90D5B8, &qword_1886F8020);
    CheckedContinuation.resume(throwing:)();
    return;
  }

  if (!a1 || (v11 = sub_18847E374(a4, a1)) == 0)
  {
    _StringGuts.grow(_:)(36);

    v23 = [a5 description];
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    MEMORY[0x18CFD5140](v24, v26);

    related decl 'e' for CKErrorCode.init(_:description:)(14, 0xD000000000000022, 0x80000001886FFB90);
    goto LABEL_11;
  }

  v12 = v11;
  v13 = MEMORY[0x18CFD5010](a6, a7);
  v14 = [v12 objectForKey_];

  if (v14)
  {
    objc_opt_self();
    v15 = swift_dynamicCastObjCClass();
    if (v15)
    {
      v16 = v15;
      v17 = sub_1884705EC(a5);
      v19 = v18;
      v21 = sub_1884705EC(v16);
      v22 = v20;
      if (v19 >> 60 == 15)
      {
        if (v20 >> 60 == 15)
        {
          sub_18841BA74(v17, v19);
LABEL_20:
          swift_unknownObjectRetain_n();
          sub_18844E6FC(&qword_1EA90D5B8, &qword_1886F8020);
          CheckedContinuation.resume(returning:)();
          swift_unknownObjectRelease_n();
          goto LABEL_18;
        }
      }

      else if (v20 >> 60 != 15)
      {
        sub_188424184(v17, v19);
        sub_188424184(v21, v22);
        v38 = MEMORY[0x18CFD45C0](v17, v19, v21, v22);
        sub_18841BA74(v21, v22);
        sub_18841BA74(v17, v19);
        sub_18841BA74(v21, v22);
        sub_18841BA74(v17, v19);
        if (v38)
        {
          goto LABEL_20;
        }

        goto LABEL_16;
      }

      sub_18841BA74(v17, v19);
      sub_18841BA74(v21, v22);
LABEL_16:
      _StringGuts.grow(_:)(107);
      MEMORY[0x18CFD5140](0xD000000000000019, 0x80000001886FFBE0);
      v39 = sub_1884705EC(a5);
      v40 = v32;
      sub_18844E6FC(&qword_1EA90D5C0, &qword_1886F8028);
      v33 = String.init<A>(describing:)();
      MEMORY[0x18CFD5140](v33);

      MEMORY[0x18CFD5140](0xD00000000000004ELL, 0x80000001886FFC00);
      v34 = [a5 description];
      v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = v36;

      MEMORY[0x18CFD5140](v35, v37);

      v31 = related decl 'e' for CKErrorCode.init(_:description:)(14, 0, 0xE000000000000000);
      sub_18844E6FC(&qword_1EA90D5B8, &qword_1886F8020);
      CheckedContinuation.resume(throwing:)();
      swift_unknownObjectRelease();
      goto LABEL_17;
    }

    swift_unknownObjectRelease();
  }

  _StringGuts.grow(_:)(25);

  v27 = [a5 description];
  v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v29;

  MEMORY[0x18CFD5140](v28, v30);

  v31 = related decl 'e' for CKErrorCode.init(_:description:)(14, 0xD000000000000017, 0x80000001886FFBC0);
  sub_18844E6FC(&qword_1EA90D5B8, &qword_1886F8020);
  CheckedContinuation.resume(throwing:)();
LABEL_17:

LABEL_18:
}

uint64_t sub_18846FE8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = v4;
  v9 = *v4;
  if ((*v4 & 0xC000000000000001) == 0)
  {
    goto LABEL_7;
  }

  if (v9 < 0)
  {
    v11 = *v4;
  }

  else
  {
    v11 = v9 & 0xFFFFFFFFFFFFFF8;
  }

  result = __CocoaSet.count.getter();
  if (!__OFADD__(result, 1))
  {
    *v6 = a4(v11, result + 1);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v6;
    result = a3(a1, a2, isUniquelyReferenced_nonNull_native);
    *v6 = v14;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t *sub_18846FF3C(uint64_t a1, void *a2)
{
  v3 = a1;
  v15[1] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = a2;
  v8 = v7;
  if (v5 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v13 = swift_slowAlloc();
      v14 = v8;
      v3 = sub_1884702B4(v13, v6, v3, v14);
      MEMORY[0x18CFD7E80](v13, -1, -1);

      goto LABEL_6;
    }
  }

  MEMORY[0x1EEE9AC00](v7);
  v9 = (v15 - ((8 * v6 + 15) & 0x3FFFFFFFFFFFFFF0));
  sub_188501174(0, v6, v9);
  v10 = v8;
  sub_1884700F0(v9, v6, v3, v10);
  if (v2)
  {
    swift_willThrow();
  }

  else
  {
    v3 = v11;
  }

LABEL_6:
  return v3;
}

void sub_1884700F0(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v21 = a2;
  v23 = 0;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v26 = (v8 - 1) & v8;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = *(*(a3 + 48) + 8 * v13);
    v15 = v13;
    v16 = *(*(a3 + 56) + 16 * v13);
    sub_1883F4C5C(0, &qword_1EA90CA80, 0x1E69E58C0);
    v17 = v14;
    sub_188449260(v16);
    v18 = [v17 zoneID];
    v19 = static NSObject.== infix(_:_:)();

    sub_18844CAFC(v16);
    v8 = v26;
    if (v19)
    {
      *(a1 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v23++, 1))
      {
        __break(1u);
LABEL_15:
        sub_188470350(a1, v21, v23, a3);

        return;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      goto LABEL_15;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v26 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
}

unint64_t *sub_1884702B4(unint64_t *result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = a4;
    sub_1884700F0(v7, a2, a3, v8);
    v10 = v9;

    return v10;
  }

  return result;
}

Swift::Int sub_188470350(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_18844E6FC(&qword_1EA90D5A0, &qword_1886F7FF0);
  result = static _DictionaryStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v33 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v34 = (v10 - 1) & v10;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(*(v4 + 48) + 8 * v16);
    v18 = *(v4 + 56) + 16 * v16;
    v19 = *v18;
    v20 = *(v18 + 8);
    v21 = *(v9 + 40);
    v22 = v17;
    sub_188449260(v19);
    result = NSObject._rawHashValue(seed:)(v21);
    v23 = -1 << *(v9 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
    {
      v27 = 0;
      v28 = (63 - v23) >> 6;
      while (++v25 != v28 || (v27 & 1) == 0)
      {
        v29 = v25 == v28;
        if (v25 == v28)
        {
          v25 = 0;
        }

        v27 |= v29;
        v30 = *(v12 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v12 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    *(*(v9 + 48) + 8 * v26) = v22;
    v31 = *(v9 + 56) + 16 * v26;
    *v31 = v19;
    *(v31 + 8) = v20;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v33;
    v10 = v34;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v34 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_188470588(void *a1)
{
  v1 = [a1 recordKey];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_1884705EC(void *a1)
{
  v1 = [a1 signature];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

id sub_188470650(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {

    return a1;
  }

  else
  {
    v9 = a1;

    return sub_188424184(a2, a3);
  }
}

uint64_t sub_1884706AC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1884061E0;
  sub_1883FF0A8();

  return sub_18846F508(v2, v3, v4, v5, v6, v7, v8, v9);
}

void sub_1884707C8(uint64_t a1, void *a2)
{
  sub_18844E6FC(&qword_1EA90D5B8, &qword_1886F8020);
  sub_1883FE568();
  v7 = *(v2 + v6);
  v9 = *(v2 + v8);
  v11 = *(v2 + v10);
  v12 = *(v2 + v10 + 8);

  sub_18846F99C(a1, a2, v2 + v5, v7, v9, v11, v12);
}

void __swiftcall CKDatabaseSubscription.init(subscriptionID:)(CKDatabaseSubscription *__return_ptr retstr, Swift::String subscriptionID)
{
  object = subscriptionID._object;
  countAndFlagsBits = subscriptionID._countAndFlagsBits;
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = MEMORY[0x18CFD5010](countAndFlagsBits, object);

  [v4 initWithSubscriptionID_];
}

void sub_18847090C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  CKDatabaseSubscription.recordType.setter(v1, v2);
}

void CKDatabaseSubscription.recordType.setter(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = MEMORY[0x18CFD5010](a1);
  }

  else
  {
    v3 = 0;
  }

  [v2 setRecordType_];
}

void (*CKDatabaseSubscription.recordType.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_188470A78(v1);
  a1[1] = v3;
  return sub_188470A04;
}

void sub_188470A04(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  if (a2)
  {

    CKDatabaseSubscription.recordType.setter(v3, v2);
  }

  else
  {
    CKDatabaseSubscription.recordType.setter(*a1, v2);
  }
}

uint64_t sub_188470A78(void *a1)
{
  v1 = [a1 recordType];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

CloudKit::CKDeviceCapability::Level_optional __swiftcall CKDeviceCapability.Level.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0x2010003u >> (8 * rawValue);
  if (rawValue >= 4)
  {
    LOBYTE(v2) = 3;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_188470B58(uint64_t a1, char a2)
{
  String.hash(into:)();
}

uint64_t sub_188470C24(uint64_t a1, char a2)
{
  String.hash(into:)();
}

uint64_t sub_188470CCC@<X0>(uint64_t *a1@<X8>)
{
  result = CKDeviceCapability.Level.rawValue.getter();
  *a1 = result;
  return result;
}

void *sub_188470D2C(size_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t CKDeviceCapability.name.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

{
  result = *(v0 + OBJC_IVAR___CKDeviceCapability__wrapped + 16);
  if (result)
  {

    return String.init<A>(_:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_188470D90@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *a2 = v2;
  a2[1] = v3;

  return result;
}

uint64_t CKDeviceCapability.name.setter()
{
  sub_1883F877C();

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  sub_188440388();
  v4 = v3;
  v6 = v5;

  *(v1 + 8) = v4;
  *(v1 + 16) = v6;
  return result;
}

uint64_t *sub_188470E58(uint64_t *result, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = *result;
    sub_188440388();
    *(v3 + 8) = v4;
    *(v3 + 16) = v5;
  }

  return result;
}

uint64_t CKDeviceCapability.value.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

{
  if (*(v0 + OBJC_IVAR___CKDeviceCapability__wrapped + 16))
  {

    return String.init<A>(_:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_188470ED8@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  *a2 = v2;
  a2[1] = v3;

  return result;
}

uint64_t CKDeviceCapability.value.setter()
{
  sub_1883F877C();

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  sub_188440388();
  v4 = v3;
  v6 = v5;

  *(v1 + 24) = v4;
  *(v1 + 32) = v6;
  return result;
}

uint64_t *sub_188470FA0(uint64_t *result, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = *result;
    sub_188440388();
    *(v3 + 24) = v4;
    *(v3 + 32) = v5;
  }

  return result;
}

void __swiftcall CKDeviceCapability.init(level:name:value:)(CloudKit::CKDeviceCapability *__return_ptr retstr, CloudKit::CKDeviceCapability::Level level, Swift::String name, Swift::String value)
{
  retstr->level = *level;
  sub_188440388();
  v6 = v5;
  v8 = v7;

  retstr->name._countAndFlagsBits = v6;
  retstr->name._object = v8;
  sub_188440388();
  v10 = v9;
  v12 = v11;

  retstr->value._countAndFlagsBits = v10;
  retstr->value._object = v12;
}

BOOL CKDeviceCapability.isEmpty.getter()
{
  v1 = v0[2];
  v2 = v0[1] & 0xFFFFFFFFFFFFLL;
  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  if (!v2)
  {
    return 1;
  }

  v3 = v0[4];
  if ((v3 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(v3) & 0xF;
  }

  else
  {
    v4 = v0[3] & 0xFFFFFFFFFFFFLL;
  }

  return v4 == 0;
}

uint64_t static CKDeviceCapability.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[3];
  v3 = a1[4];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a1[1] == a2[1] && a1[2] == a2[2];
  if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t CKDeviceCapability.hash(into:)(uint64_t a1)
{
  MEMORY[0x18CFD5EB0](*v1 + 1);
  String.hash(into:)();

  return String.hash(into:)();
}

Swift::Int CKDeviceCapability.hashValue.getter()
{
  v1 = *v0;
  sub_1883FEB6C();
  MEMORY[0x18CFD5EB0](v1 + 1);
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_18847125C(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x18CFD5EB0](v2 + 1);
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t CKDeviceCapabilitySet.capabilities.setter(uint64_t a1)
{
  v2 = sub_188471390(a1);

  *v1 = v2;
  return result;
}

char *sub_188471390(uint64_t a1)
{
  v103 = sub_1884770C8(0, *(a1 + 16), 0, MEMORY[0x1E69E7CC0]);

  v2 = 0;
  sub_1884767DC(sub_188471C88, 0);
  v3 = 0;
  v4 = a1;
  v101 = a1;
  v102 = *(a1 + 16);
LABEL_2:
  v100 = (v103 - 8);
  v5 = 40 * v3;
  while (1)
  {
    if (v102 == v3)
    {

      return v103;
    }

    if (v3 >= *(v4 + 16))
    {
      break;
    }

    v104 = v5;
    v105 = *(v4 + v5 + 32);
    v6 = *(v4 + v5 + 40);
    v2 = *(v4 + v5 + 48);
    v8 = *(v4 + v5 + 56);
    v7 = *(v4 + v5 + 64);
    v9 = *(v103 + 2);
    if (!v9)
    {
      v13 = 0;
      v11 = 0;
LABEL_21:
      if (!v2)
      {

        sub_1884406C8(v11, v13, 0);
        goto LABEL_37;
      }

      sub_188402E78();
      swift_bridgeObjectRetain_n();
      sub_188404200();
LABEL_26:
      v61 = sub_1883F71A8();
      v64 = sub_1884406C8(v61, v62, v63);
      v53 = sub_1883FE9E0(v64, v65, v66, v67, v68, v69, v70, v71, v98, v99, v100, v101, v102, v103, v104, v105);
LABEL_27:
      sub_1884406C8(v53, v54, v55);
      goto LABEL_28;
    }

    v10 = (v100 + 40 * v9);
    v11 = *v10;
    v13 = v10[1];
    v12 = v10[2];
    v14 = v10[3];
    v15 = v10[4];

    if (!v12)
    {
      goto LABEL_21;
    }

    if (!v2)
    {
      sub_188404200();
      v56 = sub_1883F71A8();
      sub_18847A544(v56, v57, v58, v59, v60);

      goto LABEL_26;
    }

    if (v11 != v105 || (v13 == v6 ? (v16 = v12 == v2) : (v16 = 0), !v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0))
    {
      sub_188402E78();
      swift_bridgeObjectRetain_n();
      sub_188404200();
      v37 = sub_1883F71A8();
      sub_18847A544(v37, v38, v39, v40, v41);
      v50 = sub_1883FE9E0(v42, v43, v44, v45, v46, v47, v48, v49, v98, v99, v100, v101, v102, v103, v104, v105);
      sub_1884406C8(v50, v51, v52);

      v53 = sub_1883F71A8();
      goto LABEL_27;
    }

    if (v14 == v8 && v15 == v7)
    {
      sub_188402E78();
      swift_bridgeObjectRetain_n();
      sub_188404200();
      v74 = sub_1883F71A8();
      sub_18847A544(v74, v75, v76, v77, v78);
      v87 = sub_1883FE9E0(v79, v80, v81, v82, v83, v84, v85, v86, v98, v99, v100, v101, v102, v103, v104, v105);
      sub_1884406C8(v87, v88, v89);

      v90 = sub_1883F71A8();
      sub_1884406C8(v90, v91, v92);
LABEL_36:

LABEL_37:
      v4 = v101;
      goto LABEL_38;
    }

    HIDWORD(v99) = _stringCompareWithSmolCheck(_:_:expecting:)();
    sub_188402E78();
    swift_bridgeObjectRetain_n();
    sub_188404200();
    v18 = sub_1883F71A8();
    sub_18847A544(v18, v19, v20, v21, v22);
    v31 = sub_1883FE9E0(v23, v24, v25, v26, v27, v28, v29, v30, v8, v99, v100, v101, v102, v103, v104, v105);
    sub_1884406C8(v31, v32, v33);

    v34 = sub_1883F71A8();
    sub_1884406C8(v34, v35, v36);
    if ((v99 & 0x100000000) != 0)
    {
      goto LABEL_36;
    }

LABEL_28:
    v4 = v101;
    v72 = HIBYTE(v2) & 0xF;
    if ((v2 & 0x2000000000000000) == 0)
    {
      v72 = v6 & 0xFFFFFFFFFFFFLL;
    }

    if (v72)
    {
      v73 = HIBYTE(v7) & 0xF;
      if ((v7 & 0x2000000000000000) == 0)
      {
        v73 = v8 & 0xFFFFFFFFFFFFLL;
      }

      if (v73)
      {
        v94 = *(v103 + 2);
        v93 = *(v103 + 3);
        if (v94 >= v93 >> 1)
        {
          v96 = sub_1883F8DD4(v93);
          v103 = sub_1884770C8(v96, v94 + 1, 1, v103);
        }

        *(v103 + 2) = v94 + 1;
        v95 = &v103[40 * v94];
        v95[32] = v106;
        ++v3;
        *(v95 + 5) = v6;
        *(v95 + 6) = v2;
        *(v95 + 7) = v8;
        *(v95 + 8) = v7;
        goto LABEL_2;
      }
    }

LABEL_38:
    v5 = v104 + 40;
    ++v3;
  }

  __break(1u);

  __break(1u);
  return result;
}

char *sub_18847173C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = dispatch thunk of Collection.count.getter();
  v4 = sub_1884770C8(0, v3 & ~(v3 >> 63), 0, MEMORY[0x1E69E7CC0]);
  result = Sequence.sorted(by:)();
  v6 = result;
  v7 = 0;
  v34 = *(result + 2);
  v32 = result;
LABEL_2:
  v31 = v4 - 8;
  v8 = 40 * v7;
  v33 = v4;
  while (1)
  {
    if (v34 == v7)
    {

      return v4;
    }

    if (v7 >= *(v6 + 16))
    {
      break;
    }

    v35 = v8;
    v36 = *(v6 + v8 + 32);
    v10 = *(v6 + v8 + 40);
    v9 = *(v6 + v8 + 48);
    v12 = *(v6 + v8 + 56);
    v11 = *(v6 + v8 + 64);
    v13 = *(v4 + 2);
    if (!v13)
    {
      v17 = 0;
      v15 = 0;
LABEL_21:
      if (!v9)
      {

        result = sub_1884406C8(v15, v17, 0);
        goto LABEL_37;
      }

      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      v16 = 0;
LABEL_26:
      sub_1884406C8(v15, v17, v16);
      v22 = v36;
      v23 = v10;
      v24 = v9;
LABEL_27:
      result = sub_1884406C8(v22, v23, v24);
      goto LABEL_28;
    }

    v14 = &v31[40 * v13];
    v15 = *v14;
    v17 = *(v14 + 1);
    v16 = *(v14 + 2);
    v18 = *(v14 + 3);
    v19 = *(v14 + 4);

    if (!v16)
    {
      goto LABEL_21;
    }

    if (!v9)
    {
      swift_bridgeObjectRetain_n();
      sub_18847A544(v15, v17, v16, v18, v19);

      goto LABEL_26;
    }

    if (v15 != v36 || (v17 == v10 ? (v20 = v16 == v9) : (v20 = 0), !v20 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0))
    {
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      sub_18847A544(v15, v17, v16, v18, v19);
      sub_1884406C8(v36, v10, v9);

      v22 = v15;
      v23 = v17;
      v24 = v16;
      goto LABEL_27;
    }

    if (v18 == v12 && v19 == v11)
    {
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      sub_18847A544(v15, v17, v16, v12, v19);
      sub_1884406C8(v36, v10, v9);

      sub_1884406C8(v15, v17, v16);
LABEL_36:

LABEL_37:
      v6 = v32;
      v4 = v33;
      goto LABEL_38;
    }

    v30 = _stringCompareWithSmolCheck(_:_:expecting:)();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    sub_18847A544(v15, v17, v16, v18, v19);
    sub_1884406C8(v36, v10, v9);

    result = sub_1884406C8(v15, v17, v16);
    if (v30)
    {
      goto LABEL_36;
    }

LABEL_28:
    v6 = v32;
    v4 = v33;
    v25 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
      v25 = v10 & 0xFFFFFFFFFFFFLL;
    }

    if (v25)
    {
      v26 = HIBYTE(v11) & 0xF;
      if ((v11 & 0x2000000000000000) == 0)
      {
        v26 = v12 & 0xFFFFFFFFFFFFLL;
      }

      if (v26)
      {
        v28 = *(v33 + 2);
        v27 = *(v33 + 3);
        if (v28 >= v27 >> 1)
        {
          result = sub_1884770C8((v27 > 1), v28 + 1, 1, v33);
          v4 = result;
        }

        *(v4 + 2) = v28 + 1;
        v29 = &v4[40 * v28];
        v29[32] = v36;
        ++v7;
        *(v29 + 5) = v10;
        *(v29 + 6) = v9;
        *(v29 + 7) = v12;
        *(v29 + 8) = v11;
        goto LABEL_2;
      }
    }

LABEL_38:
    v8 = v35 + 40;
    ++v7;
  }

  __break(1u);
  return result;
}

uint64_t (*CKDeviceCapabilitySet.capabilities.modify())(uint64_t *a1, char a2)
{
  *v0 = sub_188405684();
  v0[1] = v1;

  return sub_188471BF8;
}

uint64_t sub_188471BF8(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = *a1;
  if (a2)
  {

    v5 = sub_188471390(v4);

    *v2 = v5;
  }

  else
  {
    v7 = sub_188471390(v3);

    *v2 = v7;
  }

  return result;
}

BOOL sub_188471C88(void *a1, void *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 != v3)
  {
    return v2 < v3;
  }

  v4 = a1[3];
  v5 = a1[4];
  v6 = a2[3];
  v7 = a2[4];
  v8 = a1[1] == a2[1] && a1[2] == a2[2];
  if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (v4 == v6 ? (v9 = v5 == v7) : (v9 = 0), v9))
  {
    return 0;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t CKDeviceCapabilitySet.init<A>(_:)()
{
  sub_1883FC744();
  v3 = v2;
  v7 = sub_18847173C(v4, v5, v6);
  sub_1883F7930();
  result = (*(v8 + 8))(v1, v0);
  *v3 = v7;
  return result;
}

void CKDeviceCapabilitySet.subscript.getter(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = *v1;
  v4 = *(*v1 + 16);

  v5 = 0;
  v6 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v7 = 40 * v5;
  while (1)
  {
    if (v4 == v5)
    {

      return;
    }

    if (v5 >= *(v3 + 16))
    {
      break;
    }

    ++v5;
    v8 = v7 + 40;
    v9 = *(v3 + v7 + 32);
    v7 += 40;
    if (v9 == v2)
    {
      v11 = *(v3 + v8);
      v10 = *(v3 + v8 + 8);
      v13 = *(v3 + v8 + 16);
      v12 = *(v3 + v8 + 24);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_188477824(0, *(v6 + 16) + 1, 1);
      }

      v15 = *(v6 + 16);
      v14 = *(v6 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_188477824(v14 > 1, v15 + 1, 1);
      }

      *(v6 + 16) = v15 + 1;
      v16 = v6 + 40 * v15;
      *(v16 + 32) = v2;
      *(v16 + 40) = v11;
      *(v16 + 48) = v10;
      *(v16 + 56) = v13;
      *(v16 + 64) = v12;
      goto LABEL_2;
    }
  }

  __break(1u);
}

void sub_188471F18(uint64_t *a1@<X0>, unsigned __int8 *a2@<X1>, void *a3@<X8>)
{
  v4 = *a2;
  v7 = *a1;
  v6 = v4;
  CKDeviceCapabilitySet.subscript.getter(&v6);
  *a3 = v5;
}

void CKDeviceCapabilitySet.subscript.setter()
{
  sub_188403868();
  v2 = v1;
  v4 = *v3;
  v5 = *(v1 + 16);
  v6 = v5 + 1;
  v7 = 32;
  while (--v6)
  {
    v8 = *(v1 + v7);
    v7 += 40;
    if (v8 != v4)
    {
      sub_1883FDD58();

      return;
    }
  }

  v10 = 0;
  v40 = v0;
  v11 = *v0;
  v12 = *(*v0 + 2);
  v13 = MEMORY[0x1E69E7CC0];
LABEL_8:
  v14 = &v11[40 * v10];
  while (v12 != v10)
  {
    if (v10 >= *(v11 + 2))
    {
      __break(1u);
LABEL_29:
      __break(1u);
      return;
    }

    ++v10;
    v15 = (v14 + 40);
    v16 = v14[32];
    v14 += 40;
    if (v16 != v4)
    {
      v17 = v15[3];
      v34 = v15[2];
      v35 = *v15;
      v38 = v15[1];

      v36 = v17;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_188477824(0, *(v13 + 16) + 1, 1);
      }

      v19 = *(v13 + 16);
      v18 = *(v13 + 24);
      if (v19 >= v18 >> 1)
      {
        v21 = sub_1883F8DD4(v18);
        sub_188477824(v21, v19 + 1, 1);
      }

      *(v13 + 16) = v19 + 1;
      v20 = v13 + 40 * v19;
      *(v20 + 32) = v16;
      *(v20 + 40) = v35;
      *(v20 + 48) = v38;
      *(v20 + 56) = v34;
      *(v20 + 64) = v36;
      goto LABEL_8;
    }
  }

  v22 = 0;
  v23 = MEMORY[0x1E69E7CC0];
LABEL_18:
  v24 = 40 * v22;
  while (v5 != v22)
  {
    if (v22 >= *(v2 + 16))
    {
      goto LABEL_29;
    }

    ++v22;
    v25 = v24 + 40;
    v26 = *(v2 + v24 + 32);
    v24 += 40;
    if (v26 == v4)
    {
      v27 = *(v2 + v25 + 8);
      v28 = *(v2 + v25 + 24);
      v37 = *(v2 + v25 + 16);
      v39 = *(v2 + v25);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_188477824(0, *(v23 + 16) + 1, 1);
      }

      v30 = *(v23 + 16);
      v29 = *(v23 + 24);
      if (v30 >= v29 >> 1)
      {
        v32 = sub_1883F8DD4(v29);
        sub_188477824(v32, v30 + 1, 1);
      }

      *(v23 + 16) = v30 + 1;
      v31 = v23 + 40 * v30;
      *(v31 + 32) = v4;
      *(v31 + 40) = v39;
      *(v31 + 48) = v27;
      *(v31 + 56) = v37;
      *(v31 + 64) = v28;
      goto LABEL_18;
    }
  }

  sub_188472240(v23);
  v33 = sub_188471390(v13);

  *v40 = v33;
  sub_1883FDD58();
}

uint64_t sub_188472240(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_188478880(result, 1, sub_1884770C8);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_188472318(unint64_t a1)
{
  sub_188442654(a1);
  v4 = sub_188405684();
  v5 = sub_188442654(v4);
  v6 = __OFADD__(v5, v1);
  result = v5 + v1;
  if (v6)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_188478754(result, 1);
  v8 = *v2;
  v9 = *v2 & 0xFFFFFFFFFFFFFF8;
  sub_188426A14(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v1)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v11 < 1)
  {
LABEL_6:
    *v2 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_1884723C0(uint64_t a1)
{
  v4 = sub_1883F7BA8(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_188478880(v4, 1, sub_188476FB0);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_1883F81D4();
  if (v8 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1883F7E98(v6 + 24 * v7);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v9 = *(v6 + 16);
  v5 = __OFADD__(v9, v1);
  v10 = v9 + v1;
  if (!v5)
  {
    *(v6 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_188472474(uint64_t a1)
{
  v4 = sub_1883F7BA8(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1884787F4(v4, 1, &unk_1EA90D6B0, &unk_1886F8680, &type metadata for CKDatabase.RecordZoneChange.ZoneAttributesModification, sub_1884773F0);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_1883F81D4();
  if (v8 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1883F7E98(v6 + 8 * v7);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v9 = *(v6 + 16);
  v5 = __OFADD__(v9, v1);
  v10 = v9 + v1;
  if (!v5)
  {
    *(v6 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_18847253C(uint64_t a1)
{
  v4 = sub_1883F7BA8(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_188478880(v4, 1, MEMORY[0x1E69E6AB8]);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_1883F81D4();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  type metadata accessor for CKError(0);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_188472638(uint64_t a1)
{
  result = sub_1883F7BA8(a1);
  if (v8)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_1884787F4(result, 1, v5, v6, v7, sub_1884775F4);
  v9 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v10 = *(v9 + 16);
  if ((*(v9 + 24) >> 1) - v10 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1883F7E98(v9 + 16 * v10);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v9;
    return result;
  }

  v11 = *(v9 + 16);
  v8 = __OFADD__(v11, v1);
  v12 = v11 + v1;
  if (!v8)
  {
    *(v9 + 16) = v12;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t CKDeviceCapabilitySet.subscript.modify(uint64_t a1, unsigned __int8 *a2)
{
  *(a1 + 8) = v2;
  v4 = *a2;
  *(a1 + 16) = *a2;
  v8 = *v2;
  v7 = v4;
  CKDeviceCapabilitySet.subscript.getter(&v7);
  *a1 = v5;
  return sub_1883F7BCC();
}

void sub_188472770(void *a1, char a2)
{
  if (a2)
  {

    CKDeviceCapabilitySet.subscript.setter();
  }

  else
  {
    CKDeviceCapabilitySet.subscript.setter();
  }
}

Swift::Void __swiftcall CKDeviceCapabilitySet.insert(_:)(CloudKit::CKDeviceCapability *a1)
{
  level = a1->level;
  countAndFlagsBits = a1->name._countAndFlagsBits;
  object = a1->name._object;
  v6 = a1->value._countAndFlagsBits;
  v5 = a1->value._object;

  sub_188476960(sub_1884770C8);
  v7 = *(*v1 + 16);
  sub_188476B84();
  v8 = *v1;
  *(v8 + 16) = v7 + 1;
  v9 = v8 + 40 * v7;
  *(v9 + 32) = level;
  *(v9 + 40) = countAndFlagsBits;
  *(v9 + 48) = object;
  *(v9 + 56) = v6;
  *(v9 + 64) = v5;
  *v1 = v8;
  sub_188471390(v8);
  sub_188405684();

  *v1 = object;
}

uint64_t CKDeviceCapabilitySet.insert<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = MEMORY[0x1EEE9AC00](a1);
  (*(v7 + 16))(&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  sub_18844E6FC(&qword_1EA90D5C8, &unk_1886F8040);
  Array.append<A>(contentsOf:)();
  sub_188471390(*v3);
  sub_188405684();

  *v3 = a3;
  return result;
}

void sub_18847299C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 == *(a2 + 16))
  {
    if (v4)
    {
      sub_1883FC744();
      if (v5 != v6)
      {
        v7 = 0;
        do
        {
          v8 = (v3 + v7);
          v9 = (v2 + v7);
          if (*(v3 + v7 + 32) != *(v2 + v7 + 32))
          {
            break;
          }

          v10 = v8[7];
          v11 = v8[8];
          v12 = v9[7];
          v13 = v9[8];
          v14 = v8[5] == v9[5] && v8[6] == v9[6];
          if (!v14 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            break;
          }

          if (v10 != v12 || v11 != v13)
          {
            sub_1883F7BC0();
            if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              break;
            }
          }

          v7 += 40;
          --v4;
        }

        while (v4);
      }
    }
  }
}

uint64_t sub_188472AA0(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4)
{
  sub_1883F877C();
  v9 = v8 >> 62;
  if (v8 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    if (v4 >> 62)
    {
      result = __CocoaSet.count.getter();
    }

    else
    {
      result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (i != result)
    {
      v23 = 0;
      return v23 & 1;
    }

    if (!i)
    {
      goto LABEL_31;
    }

    v12 = v5 & 0xFFFFFFFFFFFFFF8;
    v13 = (v5 & 0xFFFFFFFFFFFFFF8) + 32;
    v25 = v5 & 0xFFFFFFFFFFFFFF8;
    if (v5 < 0)
    {
      v12 = v5;
    }

    if (v9)
    {
      v13 = v12;
    }

    v14 = v4 & 0xFFFFFFFFFFFFFF8;
    v15 = (v4 & 0xFFFFFFFFFFFFFF8) + 32;
    v24 = v4 & 0xFFFFFFFFFFFFFF8;
    if (v4 < 0)
    {
      v14 = v4;
    }

    if (v4 >> 62)
    {
      v15 = v14;
    }

    if (v13 == v15)
    {
LABEL_31:
      v23 = 1;
      return v23 & 1;
    }

    if (i < 0)
    {
      break;
    }

    a4 = sub_1883F4C5C(0, a3, a4);
    v26 = v5;
    v16 = v5 & 0xC000000000000001;
    v5 = v4;
    v17 = v4 & 0xC000000000000001;
    v18 = 4;
    v4 = i;
    while (1)
    {
      v19 = v18 - 4;
      v9 = v18 - 3;
      if (__OFADD__(v18 - 4, 1))
      {
        break;
      }

      if (v16)
      {
        v20 = MEMORY[0x18CFD59D0](v18 - 4, v26);
      }

      else
      {
        if (v19 >= *(v25 + 16))
        {
          goto LABEL_34;
        }

        v20 = *(v26 + 8 * v18);
      }

      a3 = v20;
      if (v17)
      {
        v21 = MEMORY[0x18CFD59D0](v18 - 4, v5);
      }

      else
      {
        if (v19 >= *(v24 + 16))
        {
          goto LABEL_35;
        }

        v21 = *(v5 + 8 * v18);
      }

      v22 = v21;
      v23 = static NSObject.== infix(_:_:)();

      if (v23)
      {
        ++v18;
        if (v9 != v4)
        {
          continue;
        }
      }

      return v23 & 1;
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

  __break(1u);
  return result;
}

uint64_t CKDeviceCapabilitySet.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 16);
  result = MEMORY[0x18CFD5EB0](v3);
  if (v3)
  {
    v5 = v2 + 64;
    do
    {
      MEMORY[0x18CFD5EB0](*(v5 - 32) + 1);

      sub_1883F7BC0();
      String.hash(into:)();
      String.hash(into:)();

      v5 += 40;
      --v3;
    }

    while (v3);
  }

  return result;
}

Swift::Int CKDeviceCapabilitySet.hashValue.getter()
{
  v1 = *v0;
  sub_1883FEB6C();
  sub_1884798FC(v3, v1);
  return Hasher._finalize()();
}

Swift::Int sub_188472D68(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  sub_1884798FC(v4, v2);
  return Hasher._finalize()();
}

void CKDeviceCapabilitySet.subscript.getter(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (*(*v2 + 16) <= a1)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v3 = *v2 + 40 * a1;
  v5 = *(v3 + 40);
  v4 = *(v3 + 48);
  v6 = *(v3 + 56);
  v7 = *(v3 + 64);
  *a2 = *(v3 + 32);
  *(a2 + 8) = v5;
  *(a2 + 16) = v4;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
}

Swift::Bool __swiftcall CKDeviceCapabilitySet.contains(_:)(CloudKit::CKDeviceCapabilitySet a1)
{
  v24 = *(*a1._sortedCapabilities._rawValue + 16);
  if (v24)
  {
    v2 = 0;
    v3 = 0;
    v4 = *v1;
    v5 = *a1._sortedCapabilities._rawValue + 32;
    v6 = *v1 + 64;
    v7 = 0;
    v22 = v6;
    v23 = v5;
    while (2)
    {
      result = 0;
      v9 = (v5 + 40 * v3);
      v10 = *v9;
      v11 = v9[1];
      v12 = v9[2];
      v13 = v9[3];
      v14 = v9[4];
      v25 = v3 + 1;
      v26 = v13;
      v15 = (v6 + 40 * v2);
      v16 = v14;
      do
      {
        if (v7 >= *(v4 + 16))
        {
          return 0;
        }

        if (v2 < 0)
        {
          __break(1u);
          return result;
        }

        if (*(v15 - 32) == v10 && ((v17 = *(v15 - 1), v18 = *v15, *(v15 - 3) == v11) ? (v19 = *(v15 - 2) == v12) : (v19 = 0), v19 || (v20 = _stringCompareWithSmolCheck(_:_:expecting:)(), v14 = v16, v13 = v26, (v20 & 1) != 0)))
        {
          if (v17 == v13 && v18 == v14)
          {
            result = 1;
          }

          else
          {
            sub_1883FF6E8();
            result = _stringCompareWithSmolCheck(_:_:expecting:)();
            v14 = v16;
            v13 = v26;
          }
        }

        else
        {
          result = 0;
        }

        ++v7;
        v15 += 5;
      }

      while (!result);
      v2 = v7;
      v3 = v25;
      v6 = v22;
      v5 = v23;
      if (v25 != v24)
      {
        continue;
      }

      break;
    }
  }

  return 1;
}

unint64_t sub_188472FA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v3)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (result > *(a3 + 16))
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

unint64_t sub_188472FC0(unint64_t result, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 16);
  if (v4 < result || v4 < a3)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v6 = a3 - result;
  if (a2 < 1)
  {
    if (v6 <= 0)
    {
      v9 = __OFSUB__(v6, a2);
      v7 = v6 == a2;
      v8 = (v6 - a2) < 0;
    }

    else
    {
      v9 = 0;
      v7 = 1;
      v8 = 0;
    }

    if (!(v8 ^ v9 | v7))
    {
      return 0;
    }
  }

  else if ((v6 & 0x8000000000000000) == 0 && v6 < a2)
  {
    return 0;
  }

  v9 = __OFADD__(result, a2);
  result += a2;
  if (v9)
  {
    goto LABEL_18;
  }

  if (result > v4)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_188473024(unint64_t result, unint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (v3 >= result && v3 >= a2)
  {
    return a2 - result;
  }

  __break(1u);
  return result;
}

unint64_t sub_188473040@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  result = sub_188473070(*a1, *v2);
  *a2 = result;
  return result;
}

unint64_t sub_188473070(uint64_t a1, uint64_t a2)
{
  v2 = __OFSUB__(a1, 1);
  result = a1 - 1;
  if (v2)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (result >= *(a2 + 16))
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t *sub_188473090(uint64_t *result)
{
  v2 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    result = sub_1884499EC(*v1);
    if ((v2 & 0x8000000000000000) == 0 && v2 < result)
    {
      *v3 = v2;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1884730EC@<X0>(uint64_t *a1@<X8>)
{
  result = CKDeviceCapabilitySet.endIndex.getter();
  *a1 = result;
  return result;
}

void (*sub_188473114())(void **a1)
{
  sub_1883F877C();
  v2 = sub_188470D2C(0x28uLL);
  *v1 = v2;
  CKDeviceCapabilitySet.subscript.getter(*v0, v2);
  return sub_188473178;
}

void sub_188473178(void **a1)
{
  v1 = *a1;

  free(v1);
}

void sub_1884731D0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (a1 < 0 || *(a3 + 16) < a2)
  {
    __break(1u);
  }

  else
  {
    a4[1] = a2;
    a4[2] = a3;
    *a4 = a1;
  }
}

uint64_t sub_1884731F4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_188473220();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_188473230@<X0>(unint64_t *a1@<X0>, unint64_t a2@<X1>, unint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_188472FC0(*a1, a2, *a3, *v4);
  *a4 = result;
  *(a4 + 8) = v7 & 1;
  return result;
}

uint64_t sub_188473280(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result >= a2)
  {
    v4 = __OFSUB__(result, a3);
    v3 = result - a3 < 0;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  if (v3 == v4)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1884732A8(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result < a2 || a3 < result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1884732D4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result < a3 || a4 < a2)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1884732E8@<X0>(unint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  result = sub_188473318(*a1, *v2);
  *a2 = result;
  return result;
}

unint64_t sub_188473318(unint64_t result, uint64_t a2)
{
  if (*(a2 + 16) <= result)
  {
    __break(1u);
  }

  else
  {
    ++result;
  }

  return result;
}

uint64_t sub_188473330()
{
  v1 = sub_188405684();
  v2 = *v0;
  result = sub_1884499EC(v1);
  if (v2 < 0 || v2 >= result)
  {
    __break(1u);
  }

  else
  {
    *v0 = v2 + 1;
  }

  return result;
}

void *sub_188473384(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v3 = sub_1885106E0(*(a1 + 16), 0);
  sub_188511800(&v7, (v3 + 4), v2, a1);
  v5 = v4;

  if (v5 == v2)
  {

    return v3;
  }

  __break(1u);
  return result;
}

void CKDeviceCapabilitySet.init(dictionaryLiteral:)(uint64_t a1@<X0>, char **a2@<X8>)
{
  v2 = a1;
  v3 = sub_1884770C8(0, *(a1 + 16), 0, MEMORY[0x1E69E7CC0]);
  v41 = *(v2 + 16);
  if (!v41)
  {
LABEL_35:

    v37 = sub_188471390(v3);

    *a2 = v37;
    return;
  }

  v4 = 0;
  v39 = v2;
  v40 = v2 + 32;
  while (2)
  {
    if (v4 < *(v2 + 16))
    {
      v5 = v40 + 16 * v4;
      v48 = *v5;
      v6 = *(v5 + 8);
      v42 = v4 + 1;
      v7 = v6 + 64;
      v8 = 1 << *(v6 + 32);
      if (v8 < 64)
      {
        v9 = ~(-1 << v8);
      }

      else
      {
        v9 = -1;
      }

      v10 = v9 & *(v6 + 64);
      v43 = (v8 + 63) >> 6;

      v11 = 0;
      v44 = v6 + 64;
      v45 = v6;
      while (v10)
      {
LABEL_13:
        v13 = *(*(v6 + 56) + 8 * (__clz(__rbit64(v10)) | (v11 << 6)));
        v14 = *(v13 + 16);
        if (v14)
        {
          v46 = v10;
          v47 = v3;
          v49 = MEMORY[0x1E69E7CC0];

          sub_188477824(0, v14, 0);
          v15 = v49;
          v16 = v13 + 40;
          do
          {

            sub_188440388();
            v18 = v17;
            v20 = v19;
            sub_188440388();
            v22 = v21;
            v24 = v23;

            v26 = *(v49 + 16);
            v25 = *(v49 + 24);
            if (v26 >= v25 >> 1)
            {
              v28 = sub_1883F8DD4(v25);
              sub_188477824(v28, v26 + 1, 1);
            }

            *(v49 + 16) = v26 + 1;
            v27 = v49 + 40 * v26;
            *(v27 + 32) = v48;
            *(v27 + 40) = v18;
            *(v27 + 48) = v20;
            *(v27 + 56) = v22;
            *(v27 + 64) = v24;
            v16 += 16;
            --v14;
          }

          while (v14);

          v10 = v46;
          v3 = v47;
          v7 = v44;
          v6 = v45;
        }

        else
        {
          v15 = MEMORY[0x1E69E7CC0];
        }

        v29 = *(v15 + 16);
        v30 = *(v3 + 2);
        v31 = v30 + v29;
        if (__OFADD__(v30, v29))
        {
LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if (v31 > *(v3 + 3) >> 1)
        {
          if (v30 <= v31)
          {
            v36 = v30 + v29;
          }

          else
          {
            v36 = *(v3 + 2);
          }

          v3 = sub_1884770C8(1, v36, 1, v3);
          v30 = *(v3 + 2);
          v32 = *(v15 + 16);
        }

        else
        {
          v32 = *(v15 + 16);
        }

        v10 &= v10 - 1;
        if (v32)
        {
          if (((*(v3 + 3) >> 1) - v30) < v29)
          {
            goto LABEL_39;
          }

          swift_arrayInitWithCopy();

          if (v29)
          {
            v33 = *(v3 + 2);
            v34 = __OFADD__(v33, v29);
            v35 = v33 + v29;
            if (v34)
            {
              goto LABEL_40;
            }

            *(v3 + 2) = v35;
          }
        }

        else
        {

          if (v29)
          {
            goto LABEL_38;
          }
        }
      }

      while (1)
      {
        v12 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          __break(1u);
          goto LABEL_37;
        }

        if (v12 >= v43)
        {
          break;
        }

        v10 = *(v7 + 8 * v12);
        ++v11;
        if (v10)
        {
          v11 = v12;
          goto LABEL_13;
        }
      }

      v4 = v42;
      v2 = v39;
      if (v42 != v41)
      {
        continue;
      }

      goto LABEL_35;
    }

    break;
  }

LABEL_41:
  __break(1u);
}

uint64_t CKDeviceCapabilitySet.init(arrayLiteral:)@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  v3 = sub_188471390(a1);

  *a2 = v3;
  return result;
}

uint64_t CKDeviceCapabilityCheckOptions.excludeDevicesWithoutCapabilityCheckingSupport.getter()
{
  return *v0;
}

{
  v1 = OBJC_IVAR___CKDeviceCapabilityCheckOptions__wrapped;
  sub_1883FE5A0(v0 + OBJC_IVAR___CKDeviceCapabilityCheckOptions__wrapped, v3);
  return *(v0 + v1);
}

uint64_t CKDeviceCapabilityCheckOptions.excludeZoneAccessBefore.getter@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 8))
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = type metadata accessor for Date();

  return sub_1883F90F4(a1, v3, 1, v4);
}

void sub_1884738BC(uint64_t a1)
{
  v2 = sub_18844E6FC(&unk_1EA90D7B0, &dword_1886F8780);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v5 - v3;
  sub_1884799AC(a1, &v5 - v3);
  CKDeviceCapabilityCheckOptions.excludeZoneAccessBefore.setter(v4);
}

void CKDeviceCapabilityCheckOptions.excludeZoneAccessBefore.setter(uint64_t a1)
{
  v2 = v1;
  v4 = sub_18844E6FC(&unk_1EA90D7B0, &dword_1886F8780);
  v5 = sub_1883F8AE4(v4);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v15 - v6;
  v8 = sub_18840AD28();
  sub_1884799AC(v8, v9);
  v10 = type metadata accessor for Date();
  v11 = sub_1883F9014();
  if (sub_1883F971C(v11, v12, v10) == 1)
  {
    sub_18841A6BC(a1);
    isa = 0;
  }

  else
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    sub_18841A6BC(a1);
    sub_1883F7930();
    (*(v14 + 8))(v7, v10);
  }

  *(v2 + 8) = isa;
}

void (*CKDeviceCapabilityCheckOptions.excludeZoneAccessBefore.modify(void *a1))(void **a1, char a2, __n128 a3)
{
  v3 = sub_188470D2C(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = sub_18844E6FC(&unk_1EA90D7B0, &dword_1886F8780);
  sub_1883F8AE4(v4);
  v3[1] = sub_1883F8640();
  v3[2] = sub_1883F8640();
  v5 = sub_1883F8640();
  v3[3] = v5;
  v6 = sub_1883F8640();
  v3[4] = v6;
  v7 = *(v1 + 8);
  v3[5] = v7;
  if (v7)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = type metadata accessor for Date();
  sub_1883F90F4(v5, v8, 1, v9);
  sub_188412494(v5, v6);
  return sub_188473B44;
}

void sub_188473B44(void **a1, char a2, __n128 a3)
{
  v3 = *a1;
  v4 = *(*a1 + 4);
  if (a2)
  {
    v6 = v3[2];
    v5 = v3[3];
    v7 = v3[1];
    sub_1884799AC(*(*a1 + 4), v7);
    CKDeviceCapabilityCheckOptions.excludeZoneAccessBefore.setter(v7);
    sub_18841A6BC(v4);
  }

  else
  {
    v8 = sub_18840AD28();
    sub_1884799AC(v8, v9);
    v10 = type metadata accessor for Date();
    v11 = sub_1883F9014();
    v13 = sub_1883F971C(v11, v12, v10);
    v14 = v3[4];
    if (v13 == 1)
    {
      sub_18841A6BC(v3[4]);
      isa = 0;
    }

    else
    {
      v16 = v3[2];
      isa = Date._bridgeToObjectiveC()().super.isa;
      sub_18841A6BC(v14);
      sub_1883F7930();
      (*(v17 + 8))(v16, v10);
    }

    v4 = v3[4];
    v6 = v3[2];
    v5 = v3[3];
    v18 = *v3;
    v7 = v3[1];

    *(v18 + 8) = isa;
  }

  free(v4);
  free(v5);
  free(v6);
  free(v7);

  free(v3);
}

void __swiftcall CKDeviceCapabilityCheckOptions.init()(CloudKit::CKDeviceCapabilityCheckOptions *__return_ptr retstr)
{
  v3 = sub_18844E6FC(&unk_1EA90D7B0, &dword_1886F8780);
  v4 = sub_1883F8AE4(v3);
  MEMORY[0x1EEE9AC00](v4);
  sub_1883F8B34();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v19 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for Date();
  sub_1883F90F4(v10, 1, 1, v11);
  v20 = 0;
  sub_1884799AC(v10, v7);
  v12 = sub_18840AD28();
  sub_1884799AC(v12, v13);
  v14 = sub_1883F9014();
  if (sub_1883F971C(v14, v15, v11) == 1)
  {
    sub_18841A6BC(v7);
    sub_18841A6BC(v10);
    v16 = 0;
    isa = 0;
  }

  else
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    sub_18841A6BC(v7);
    sub_18841A6BC(v10);
    sub_1883F7930();
    (*(v18 + 8))(v1, v11);
    v16 = v20;
  }

  retstr->excludeDevicesWithoutCapabilityCheckingSupport = v16;
  *(&retstr->_excludeZoneAccessBefore.value.super.isa + 7) = isa;
}

uint64_t CKDeviceCapabilityCheckOptions.init(excludeDevicesWithoutCapabilityCheckingSupport:excludeZoneAccessBefore:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_18844E6FC(&unk_1EA90D7B0, &dword_1886F8780);
  v8 = sub_1883F8AE4(v7);
  MEMORY[0x1EEE9AC00](v8);
  sub_1883F8B34();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20 - v10;
  *(a3 + 8) = 0;
  *a3 = a1;
  v12 = sub_1883F7BC0();
  sub_1884799AC(v12, v13);
  sub_1884799AC(v11, v3);
  v14 = type metadata accessor for Date();
  v15 = sub_1883F9014();
  if (sub_1883F971C(v15, v16, v14) == 1)
  {
    sub_18841A6BC(a2);
    result = sub_18841A6BC(v11);
    isa = 0;
  }

  else
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    sub_18841A6BC(a2);
    sub_18841A6BC(v11);
    sub_1883F7930();
    result = (*(v19 + 8))(v3, v14);
  }

  *(a3 + 8) = isa;
  return result;
}

uint64_t static CKDeviceCapabilityCheckOptions.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a1 + 1);
  v4 = *(a2 + 1);
  if (v3)
  {
    if (v4)
    {
      sub_1883F4C5C(0, &qword_1EA90D5D0, 0x1E695DF00);
      v5 = v4;
      v6 = v3;
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {
        return 1;
      }
    }
  }

  else if (!v4)
  {
    return 1;
  }

  return 0;
}

void CKDeviceCapabilityCheckOptions.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 8);
  Hasher._combine(_:)(*v1);
  if (v2)
  {
    Hasher._combine(_:)(1u);
    v3 = v2;
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int CKDeviceCapabilityCheckOptions.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1883FEB6C();
  Hasher._combine(_:)(v1);
  if (v2)
  {
    Hasher._combine(_:)(1u);
    v3 = v2;
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

Swift::Int sub_1884740C0(uint64_t a1)
{
  v2 = *(v1 + 8);
  v4[72] = *v1;
  v5 = v2;
  Hasher.init(_seed:)();
  CKDeviceCapabilityCheckOptions.hash(into:)(v4);
  return Hasher._finalize()();
}

uint64_t CKDeviceCapabilityCheckResult.isSupported.getter()
{
  return *v0;
}

{
  v1 = *(v0 + OBJC_IVAR___CKDeviceCapabilityCheckResult__wrapped);
  if (v1 != 2)
  {
    return v1 & 1;
  }

  __break(1u);
  return result;
}

Swift::Int CKDeviceCapabilityCheckResult.hashValue.getter()
{
  v1 = *v0;
  sub_1883FEB6C();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1884741B0(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void CKContainerOptions.supportedDeviceCapabilities.getter(uint64_t *a1@<X8>)
{
  v3 = sub_1884797C0(v1);
  v4 = v3;
  if (!v3)
  {
LABEL_17:
    *a1 = v4;
    return;
  }

  v5 = sub_188442654(v3);
  if (!v5)
  {

    v8 = MEMORY[0x1E69E7CC0];
LABEL_16:
    v4 = sub_188471390(v8);

    goto LABEL_17;
  }

  v6 = v5;
  v27 = MEMORY[0x1E69E7CC0];
  sub_188477824(0, v5 & ~(v5 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v7 = 0;
    v8 = v27;
    v24 = v6;
    v25 = v4 & 0xC000000000000001;
    v22 = a1;
    v23 = v4 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v25)
      {
        v10 = MEMORY[0x18CFD59D0](v7, v4);
      }

      else
      {
        if (v7 >= *(v23 + 16))
        {
          goto LABEL_19;
        }

        v10 = *(v4 + 8 * v7 + 32);
      }

      v11 = v10;
      v12 = &v10[OBJC_IVAR___CKDeviceCapability__wrapped];
      v13 = *&v10[OBJC_IVAR___CKDeviceCapability__wrapped + 16];
      if (!v13)
      {
        goto LABEL_21;
      }

      v14 = v4;
      v15 = *(v12 + 1);
      v16 = *(v12 + 4);
      v26 = *(v12 + 3);
      v17 = *v12;

      v19 = *(v27 + 16);
      v18 = *(v27 + 24);
      if (v19 >= v18 >> 1)
      {
        v21 = sub_1883F8DD4(v18);
        sub_188477824(v21, v19 + 1, 1);
      }

      *(v27 + 16) = v19 + 1;
      v20 = v27 + 40 * v19;
      *(v20 + 32) = v17;
      *(v20 + 40) = v15;
      *(v20 + 48) = v13;
      *(v20 + 56) = v26;
      *(v20 + 64) = v16;
      ++v7;
      v4 = v14;
      if (v9 == v24)
      {

        a1 = v22;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

void CKContainerOptions.supportedDeviceCapabilities.setter(uint64_t a1, uint64_t a2, CloudKit::CKDeviceCapability *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_188403868();
  a27 = v29;
  a28 = v30;
  v31 = v28;
  v33 = *v32;
  if (!*v32)
  {
    isa = 0;
LABEL_10:
    [v31 setSupportedDeviceCapabilities_];
    sub_1883FDD58();

    return;
  }

  v34 = *(v33 + 16);
  if (!v34)
  {
LABEL_9:

    type metadata accessor for CKDeviceCapability(0);
    isa = Array._bridgeToObjectiveC()().super.isa;

    goto LABEL_10;
  }

  a16 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray.reserveCapacity(_:)();
  type metadata accessor for CKDeviceCapability(0);
  v35 = 0;
  v36 = *(v33 + 16);
  v37 = (v33 + 64);
  while (v35 < *(v33 + 16))
  {
    v39 = *(v37 - 3);
    v38 = *(v37 - 2);
    v40 = *(v37 - 1);
    v41 = *v37;
    LOBYTE(a11) = *(v37 - 32);
    a12 = v39;
    a13 = v38;
    a14 = v40;
    a15 = v41;

    CKDeviceCapability.init(_:)(v42, &a11);
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    if (v36 == v35)
    {
      goto LABEL_14;
    }

    ++v35;
    v37 += 5;
    if (v34 == v35)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
}

uint64_t CKContainerOptions.supportedDeviceCapabilities.modify(uint64_t *a1)
{
  a1[1] = v1;
  CKContainerOptions.supportedDeviceCapabilities.getter(a1);
  return sub_1883F7BCC();
}

uint64_t CKDatabase.checkSupportedDeviceCapabilities(_:in:options:)(uint64_t a1, uint64_t *a2, uint64_t a3, _OWORD *a4)
{
  *(v5 + 160) = a3;
  *(v5 + 168) = v4;
  *(v5 + 152) = a1;
  v8 = sub_18844E6FC(&qword_1EA90D5D8, &unk_1886F8058);
  *(v5 + 176) = v8;
  *(v5 + 184) = *(v8 - 8);
  v9 = swift_task_alloc();
  v10 = *a2;
  *(v5 + 192) = v9;
  *(v5 + 200) = v10;
  *(v5 + 208) = *a4;

  return MEMORY[0x1EEE6DFA0](sub_188474750, 0, 0);
}

uint64_t sub_188474750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v50 = v14;
  v15 = *(v14 + 200);
  v16 = *(v15 + 16);
  v17 = MEMORY[0x1E69E7CC0];
  if (v16)
  {
    v48 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    v18 = type metadata accessor for CKDeviceCapability(0);
    v26 = 0;
    v27 = *(v15 + 16);
    v28 = (v15 + 64);
    while (v26 < *(v15 + 16))
    {
      v30 = *(v28 - 3);
      v29 = *(v28 - 2);
      v31 = *(v28 - 1);
      v32 = *v28;
      v49.level = *(v28 - 32);
      v49.name._countAndFlagsBits = v30;
      v49.name._object = v29;
      v49.value._countAndFlagsBits = v31;
      v49.value._object = v32;

      CKDeviceCapability.init(_:)(v33, &v49);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v18 = specialized ContiguousArray._endMutation()();
      if (v27 == v26)
      {
        goto LABEL_14;
      }

      ++v26;
      v28 += 5;
      if (v16 == v26)
      {
        v17 = v48;
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }

  else
  {
LABEL_7:
    *(v14 + 224) = v17;
    v34 = *(v14 + 216);
    if (v34 == 1)
    {
      v35 = 0;
    }

    else
    {
      v36 = *(v14 + 208);
      type metadata accessor for CKDeviceCapabilityCheckOptions(0);
      v49.level = v36 & 1;
      v49.name._countAndFlagsBits = v34;
      v37 = v34;
      CKDeviceCapabilityCheckOptions.init(_:)(v38, &v49);
    }

    v45 = v35;
    *(v14 + 232) = v35;
    v39 = *(v14 + 184);
    v40 = *(v14 + 192);
    v41 = *(v14 + 176);
    v46 = *(v14 + 168);
    v47 = *(v14 + 160);
    type metadata accessor for CKDeviceCapability(0);
    isa = Array._bridgeToObjectiveC()().super.isa;
    *(v14 + 240) = isa;
    *(v14 + 16) = v14;
    *(v14 + 56) = v14 + 144;
    *(v14 + 24) = sub_188474A48;
    swift_continuation_init();
    *(v14 + 136) = v41;
    v43 = sub_188403664((v14 + 112));
    type metadata accessor for CKDeviceCapabilityCheckResult(0);
    sub_18844E6FC(&qword_1EA90E3D0, &qword_1886F75C0);
    CheckedContinuation.init(continuation:function:)();
    (*(v39 + 32))(v43, v40, v41);
    *(v14 + 80) = MEMORY[0x1E69E9820];
    *(v14 + 88) = 1107296256;
    *(v14 + 96) = sub_188474CA8;
    *(v14 + 104) = &unk_1EFA276A0;
    [v46 checkSupportedDeviceCapabilities:isa inZone:v47 options:v45 completionHandler:?];
    (*(v39 + 8))(v43, v41);
    v18 = v14 + 16;
  }

  return MEMORY[0x1EEE6DEC8](v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_188474A48()
{
  v1 = *(*v0 + 48);
  *(*v0 + 248) = v1;
  if (v1)
  {

    v2 = sub_188474C1C;
  }

  else
  {
    v2 = sub_188474B60;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

void sub_188474B60()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 144);

  v3 = v2[OBJC_IVAR___CKDeviceCapabilityCheckResult__wrapped];
  if (v3 == 2)
  {
    __break(1u);
  }

  else
  {
    v4 = *(v0 + 152);

    *v4 = v3 & 1;

    v5 = *(v0 + 8);

    v5();
  }
}

uint64_t sub_188474C1C(uint64_t a1)
{
  v2 = v1[30];
  v3 = v1[29];
  swift_willThrow();

  v4 = v1[1];

  return v4();
}

void sub_188474CA8(uint64_t a1, void *a2, void *a3)
{
  sub_188400B68((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v6 = a3;
    sub_1884E0A84();
  }

  else if (a2)
  {
    v5 = a2;

    sub_1884E0C04();
  }

  else
  {
    __break(1u);
  }
}

void __swiftcall CKCheckSupportedDeviceCapabilitiesOperation.init(desiredCapabilities:zoneIDs:options:)(CKCheckSupportedDeviceCapabilitiesOperation *__return_ptr retstr, CloudKit::CKDeviceCapabilitySet desiredCapabilities, Swift::OpaquePointer zoneIDs, CloudKit::CKDeviceCapabilityCheckOptions_optional *options)
{
  sub_188403868();
  v31 = v4;
  v32 = v6;
  v8 = *v7;
  v9 = *(v5 + 1);
  if (v9 == 1)
  {
    v10 = 0;
  }

  else
  {
    v11 = *v5;
    type metadata accessor for CKDeviceCapabilityCheckOptions(0);
    v25 = v11 & 1;
    v26 = v9;
    CKDeviceCapabilityCheckOptions.init(_:)((v11 & 1), &v25);
    v10 = v12;
  }

  v13 = *(v8 + 16);
  if (v13)
  {
    v30 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    type metadata accessor for CKDeviceCapability(0);
    v14 = 0;
    v15 = *(v8 + 16);
    v16 = (v8 + 64);
    while (v14 < *(v8 + 16))
    {
      v18 = *(v16 - 3);
      v17 = *(v16 - 2);
      v19 = *(v16 - 1);
      v20 = *v16;
      v25 = *(v16 - 32);
      v26 = v18;
      v27 = v17;
      v28 = v19;
      v29 = v20;

      CKDeviceCapability.init(_:)(v21, &v25);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (v15 == v14)
      {
        goto LABEL_11;
      }

      ++v14;
      v16 += 5;
      if (v13 == v14)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }

  else
  {
LABEL_9:

    v22 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    type metadata accessor for CKDeviceCapability(0);
    isa = Array._bridgeToObjectiveC()().super.isa;

    sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);
    v24 = Array._bridgeToObjectiveC()().super.isa;

    [v22 initWithDesiredCapabilities:isa zoneIDs:v24 options:v10];

    sub_1883FDD58();
  }
}

void __swiftcall CKCheckSupportedDeviceCapabilitiesOperation.init(desiredCapabilitySets:zoneIDs:options:)(CKCheckSupportedDeviceCapabilitiesOperation *__return_ptr retstr, Swift::OpaquePointer desiredCapabilitySets, Swift::OpaquePointer zoneIDs, CloudKit::CKDeviceCapabilityCheckOptions_optional *options)
{
  v5 = *(&options->value._excludeZoneAccessBefore.value.super.isa + 7);
  if (v5 == 1)
  {
    v6 = 0;
  }

  else
  {
    excludeDevicesWithoutCapabilityCheckingSupport = options->value.excludeDevicesWithoutCapabilityCheckingSupport;
    type metadata accessor for CKDeviceCapabilityCheckOptions(0);
    v31.level = excludeDevicesWithoutCapabilityCheckingSupport;
    v31.name._countAndFlagsBits = v5;
    CKDeviceCapabilityCheckOptions.init(_:)(excludeDevicesWithoutCapabilityCheckingSupport, &v31);
    v6 = v8;
  }

  v9 = *(desiredCapabilitySets._rawValue + 2);
  if (v9)
  {
    v27 = v6;
    v33 = MEMORY[0x1E69E7CC0];
    sub_188477844(0, v9, 0);
    v10 = 0;
    v11 = v33;
    rawValue = desiredCapabilitySets._rawValue;
    v30 = desiredCapabilitySets._rawValue + 32;
    v28 = v9;
    while (v10 < *(desiredCapabilitySets._rawValue + 2))
    {
      v12 = *&v30[8 * v10];
      v13 = *(v12 + 16);
      if (v13)
      {
        v32 = MEMORY[0x1E69E7CC0];

        specialized ContiguousArray.reserveCapacity(_:)();
        type metadata accessor for CKDeviceCapability(0);
        v14 = *(v12 + 16);
        if (v13 > v14)
        {
          goto LABEL_22;
        }

        v15 = (v12 + 64);
        while (1)
        {
          v17 = *(v15 - 3);
          v16 = *(v15 - 2);
          v18 = *(v15 - 1);
          v19 = *v15;
          v31.level = *(v15 - 32);
          v31.name._countAndFlagsBits = v17;
          v31.name._object = v16;
          v31.value._countAndFlagsBits = v18;
          v31.value._object = v19;

          CKDeviceCapability.init(_:)(v20, &v31);
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          if (!v14)
          {
            break;
          }

          --v14;
          v15 += 5;
          if (!--v13)
          {

            v21 = v32;
            v9 = v28;
            desiredCapabilitySets._rawValue = rawValue;
            goto LABEL_14;
          }
        }

        __break(1u);
        break;
      }

      v21 = MEMORY[0x1E69E7CC0];
LABEL_14:
      v33 = v11;
      v23 = *(v11 + 16);
      v22 = *(v11 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_188477844((v22 > 1), v23 + 1, 1);
        v11 = v33;
      }

      ++v10;
      *(v11 + 16) = v23 + 1;
      *(v11 + 8 * v23 + 32) = v21;
      if (v10 == v9)
      {

        v6 = v27;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
  }

  else
  {

LABEL_19:
    v24 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    sub_18844E6FC(&qword_1EA90D5E0, &qword_1886F8068);
    isa = Array._bridgeToObjectiveC()().super.isa;

    sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);
    v26 = Array._bridgeToObjectiveC()().super.isa;

    [v24 initWithDesiredCapabilitySets:isa zoneIDs:v26 options:v6];
  }
}

void CKCheckSupportedDeviceCapabilitiesOperation.desiredCapabilitySets.getter()
{
  v1 = sub_188479820(v0);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v3 = v1;
    v4 = *(v1 + 16);
    if (v4)
    {
      v37 = MEMORY[0x1E69E7CC0];
      sub_188477864(0, v4, 0);
      v5 = 0;
      v6 = v37;
      v29 = v3;
      v30 = v3 + 32;
      v28 = v4;
      while (v5 < *(v3 + 16))
      {
        v31 = v6;
        v32 = v5;
        v7 = *(v30 + 8 * v5);
        v8 = sub_188442654(v7);
        if (v8)
        {
          v9 = v8;
          v10 = v8 & ~(v8 >> 63);

          sub_188477824(0, v10, 0);
          if (v9 < 0)
          {
            goto LABEL_28;
          }

          v11 = 0;
          v12 = v2;
          v35 = v7;
          v36 = v7 & 0xC000000000000001;
          v33 = v7 & 0xFFFFFFFFFFFFFF8;
          v34 = v9;
          while (1)
          {
            v13 = v11 + 1;
            if (__OFADD__(v11, 1))
            {
              break;
            }

            if (v36)
            {
              v14 = MEMORY[0x18CFD59D0](v11, v7);
            }

            else
            {
              if (v11 >= *(v33 + 16))
              {
                goto LABEL_26;
              }

              v14 = *(v7 + 8 * v11 + 32);
            }

            v15 = v14;
            v16 = &v14[OBJC_IVAR___CKDeviceCapability__wrapped];
            v17 = *&v14[OBJC_IVAR___CKDeviceCapability__wrapped + 16];
            if (!v17)
            {
              goto LABEL_29;
            }

            v18 = *(v16 + 1);
            v19 = *(v16 + 3);
            v20 = *(v16 + 4);
            v21 = *v16;

            v23 = *(v12 + 16);
            v22 = *(v12 + 24);
            if (v23 >= v22 >> 1)
            {
              sub_188477824(v22 > 1, v23 + 1, 1);
            }

            *(v12 + 16) = v23 + 1;
            v24 = v12 + 40 * v23;
            *(v24 + 32) = v21;
            *(v24 + 40) = v18;
            *(v24 + 48) = v17;
            *(v24 + 56) = v19;
            *(v24 + 64) = v20;
            ++v11;
            v7 = v35;
            if (v13 == v34)
            {
              v4 = v28;
              v3 = v29;
              v2 = MEMORY[0x1E69E7CC0];
              goto LABEL_19;
            }
          }

          __break(1u);
LABEL_26:
          __break(1u);
          break;
        }

        v12 = v2;
LABEL_19:
        v25 = sub_188471390(v12);

        v6 = v31;
        v27 = *(v31 + 16);
        v26 = *(v31 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_188477864((v26 > 1), v27 + 1, 1);
          v6 = v31;
        }

        v5 = v32 + 1;
        *(v6 + 16) = v27 + 1;
        *(v6 + 8 * v27 + 32) = v25;
        if (v32 + 1 == v4)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
    }

    else
    {
LABEL_22:
    }
  }
}

uint64_t CKCheckSupportedDeviceCapabilitiesOperation.desiredCapabilities.getter@<X0>(void *a1@<X8>)
{
  CKCheckSupportedDeviceCapabilitiesOperation.desiredCapabilitySets.getter();
  v3 = *(v2 + 16);

  if (v3 != 1)
  {
    goto LABEL_5;
  }

  CKCheckSupportedDeviceCapabilitiesOperation.desiredCapabilitySets.getter();
  if (!*(v5 + 16))
  {

LABEL_5:
    v6 = 0;
    goto LABEL_6;
  }

  v6 = *(v5 + 32);

LABEL_6:
  *a1 = v6;
  return result;
}

uint64_t CKCheckSupportedDeviceCapabilitiesOperation.zoneIDs.getter()
{
  result = sub_18847988C(v0);
  if (!result)
  {
    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

double CKCheckSupportedDeviceCapabilitiesOperation.options.getter@<D0>(_OWORD *a1@<X8>)
{
  v3 = [v1 options];
  if (v3)
  {
    v5 = v3;
    CKDeviceCapabilityCheckOptions.wrapped.getter(a1);
  }

  else
  {
    result = 0.0;
    *a1 = xmmword_1886F8030;
  }

  return result;
}

void (*CKCheckSupportedDeviceCapabilitiesOperation.perResultBlock.getter())(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  result = [v0 perResultBlock];
  if (result)
  {
    v2 = result;
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    sub_1883F8708();
    v4 = swift_allocObject();
    *(v4 + 16) = sub_188479A1C;
    *(v4 + 24) = v3;
    return sub_188479A24;
  }

  return result;
}

uint64_t (*sub_188475678@<X0>(uint64_t (**a1)()@<X8>))()
{
  result = CKCheckSupportedDeviceCapabilitiesOperation.perResultBlock.getter();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 2) = v4;
    *(result + 3) = v5;
    v6 = sub_18847A4C0;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

id sub_1884756E8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_18847A488;
  }

  else
  {
    v4 = 0;
  }

  sub_1883F5CC0(v1, v2);
  return CKCheckSupportedDeviceCapabilitiesOperation.perResultBlock.setter(v4);
}

id CKCheckSupportedDeviceCapabilitiesOperation.perResultBlock.setter(uint64_t a1)
{
  if (a1)
  {
    sub_1883FC744();
    sub_1883F8708();
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    *(v3 + 24) = v1;
    sub_1883F71C0();
    v6[1] = 1107296256;
    v6[2] = sub_188475EAC;
    v6[3] = &unk_1EFA27740;
    v4 = _Block_copy(v6);

    [v2 setPerResultBlock_];
    _Block_release(v4);
    return sub_1883F5BA0(v2, v1);
  }

  else
  {

    return [v2 setPerResultBlock_];
  }
}

void sub_188475888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for CKDeviceCapability(0);
  v9.super.isa = Array._bridgeToObjectiveC()().super.isa;
  if (a4)
  {
    v10 = _convertErrorToNSError(_:)();
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  (*(a5 + 16))(a5, a1, v9.super.isa, a3);
}

void sub_188475938(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(uint64_t, uint64_t, void *, uint64_t))
{
  v4 = a4;
  v5 = a1;
  v6 = *a2;
  v7 = *a3;
  v8 = *(*a2 + 16);
  v9 = MEMORY[0x1E69E7CC0];
  if (a3[1])
  {
    if (!v8)
    {
LABEL_8:
      v4(v5, v9, 0, v7);

      return;
    }

    v33 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    type metadata accessor for CKDeviceCapability(0);
    v10 = 0;
    v11 = *(v6 + 16);
    v12 = (v6 + 64);
    while (v10 < *(v6 + 16))
    {
      v14 = *(v12 - 3);
      v13 = *(v12 - 2);
      v15 = *(v12 - 1);
      v16 = *v12;
      v32.level = *(v12 - 32);
      v32.name._countAndFlagsBits = v14;
      v32.name._object = v13;
      v32.value._countAndFlagsBits = v15;
      v32.value._object = v16;

      CKDeviceCapability.init(_:)(v17, &v32);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (v11 == v10)
      {
        goto LABEL_22;
      }

      ++v10;
      v12 += 5;
      if (v8 == v10)
      {
        v9 = v33;
        v4 = a4;
        v5 = a1;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
    if (!v8)
    {
LABEL_17:
      type metadata accessor for CKDeviceCapabilityCheckResult(0);
      v32.level = v7 & 1;
      CKDeviceCapabilityCheckResult.init(_:)((v7 & 1), &v32);
      v31 = v26;
      v4(v5, v9, v26, 0);

      return;
    }

    v33 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    type metadata accessor for CKDeviceCapability(0);
    v18 = 0;
    v19 = *(v6 + 16);
    v20 = (v6 + 64);
    while (v18 < *(v6 + 16))
    {
      v22 = *(v20 - 3);
      v21 = *(v20 - 2);
      v23 = *(v20 - 1);
      v24 = *v20;
      v32.level = *(v20 - 32);
      v32.name._countAndFlagsBits = v22;
      v32.name._object = v21;
      v32.value._countAndFlagsBits = v23;
      v32.value._object = v24;

      CKDeviceCapability.init(_:)(v25, &v32);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (v19 == v18)
      {
        goto LABEL_23;
      }

      ++v18;
      v20 += 5;
      if (v8 == v18)
      {
        v9 = v33;
        v4 = a4;
        v5 = a1;
        goto LABEL_17;
      }
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
}

void sub_188475BF4(uint64_t a1, unint64_t a2, unsigned __int8 *a3, void *a4, void (*a5)(void, void, void))
{
  v9 = sub_188442654(a2);
  v10 = MEMORY[0x1E69E7CC0];
  if (v9)
  {
    v11 = v9;
    v34 = MEMORY[0x1E69E7CC0];
    sub_188477824(0, v9 & ~(v9 >> 63), 0);
    if ((v11 & 0x8000000000000000) == 0)
    {
      v28 = a4;
      v29 = a3;
      v30 = a1;
      v12 = 0;
      v10 = v34;
      v31 = a5;
      while (1)
      {
        v13 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if ((a2 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x18CFD59D0](v12, a2);
        }

        else
        {
          if (v12 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_22;
          }

          v14 = *(a2 + 8 * v12 + 32);
        }

        v15 = v14;
        v16 = &v14[OBJC_IVAR___CKDeviceCapability__wrapped];
        v17 = *&v14[OBJC_IVAR___CKDeviceCapability__wrapped + 16];
        if (!v17)
        {
          goto LABEL_24;
        }

        v18 = *(v16 + 1);
        v19 = *(v16 + 4);
        v33 = *(v16 + 3);
        v20 = *v16;

        v34 = v10;
        v22 = v10[2];
        v21 = v10[3];
        if (v22 >= v21 >> 1)
        {
          sub_188477824(v21 > 1, v22 + 1, 1);
          v10 = v34;
        }

        v10[2] = v22 + 1;
        v23 = &v10[5 * v22];
        *(v23 + 32) = v20;
        v23[5] = v18;
        v23[6] = v17;
        v23[7] = v33;
        v23[8] = v19;
        ++v12;
        if (v13 == v11)
        {
          a5 = v31;
          a3 = v29;
          a1 = v30;
          a4 = v28;
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
    }

    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_14:
  v24 = sub_188471390(v10);

  if (a4)
  {
    v37 = v24;
    v34 = a4;
    v35 = 1;
    v25 = a4;
LABEL_16:
    a5(a1, &v37, &v34);
    sub_188462CBC(v34, v35);

    return;
  }

  if (!a3)
  {
    v37 = v24;
    type metadata accessor for CKError(0);
    sub_188498E9C(MEMORY[0x1E69E7CC0]);
    sub_18847A4EC();
    _BridgedStoredNSError.init(_:userInfo:)();
    v34 = v36;
    v35 = 1;
    goto LABEL_16;
  }

  v37 = v24;
  v26 = a3[OBJC_IVAR___CKDeviceCapabilityCheckResult__wrapped];
  if (v26 != 2)
  {
    v34 = (v26 & 1);
    v35 = 0;
    v27 = a3;
    a5(a1, &v37, &v34);

    return;
  }

LABEL_25:
  __break(1u);
}

void sub_188475EAC(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v8 = *(a1 + 32);
  type metadata accessor for CKDeviceCapability(0);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v12 = a2;
  v10 = a4;
  v11 = a5;
  v8(v12, v9, a4, a5);
}

uint64_t CKCheckSupportedDeviceCapabilitiesOperation.perResultBlock.modify(void (**a1)(uint64_t a1, uint64_t *a2, uint64_t *a3))
{
  a1[2] = v1;
  *a1 = CKCheckSupportedDeviceCapabilitiesOperation.perResultBlock.getter();
  a1[1] = v3;
  return sub_1883F7BCC();
}

uint64_t (*CKCheckSupportedDeviceCapabilitiesOperation.checkSupportedDeviceCapabilitiesResultBlock.getter())(uint64_t a1, char a2)
{
  result = [v0 checkSupportedDeviceCapabilitiesCompletionBlock];
  if (result)
  {
    v2 = result;
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    sub_1883F8708();
    v4 = swift_allocObject();
    *(v4 + 16) = sub_188479A3C;
    *(v4 + 24) = v3;
    return sub_188479A44;
  }

  return result;
}

uint64_t (*sub_18847609C@<X0>(uint64_t (**a1)()@<X8>))()
{
  result = CKCheckSupportedDeviceCapabilitiesOperation.checkSupportedDeviceCapabilitiesResultBlock.getter();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 2) = v4;
    *(result + 3) = v5;
    v6 = sub_18847A480;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

id sub_18847610C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_18847A474;
  }

  else
  {
    v4 = 0;
  }

  sub_1883F5CC0(v1, v2);
  return CKCheckSupportedDeviceCapabilitiesOperation.checkSupportedDeviceCapabilitiesResultBlock.setter(v4);
}

id CKCheckSupportedDeviceCapabilitiesOperation.checkSupportedDeviceCapabilitiesResultBlock.setter(uint64_t a1)
{
  if (a1)
  {
    sub_1883F877C();
    sub_1883F8708();
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
    *(v4 + 24) = v1;
    sub_1883F71C0();
    v7[1] = 1107296256;
    v7[2] = sub_1884765F8;
    v7[3] = &unk_1EFA277E0;
    v5 = _Block_copy(v7);

    [v2 setCheckSupportedDeviceCapabilitiesCompletionBlock_];
    _Block_release(v5);
    [v2 setCanDropItemResultsEarly_];
    return sub_1883F5BA0(v3, v1);
  }

  else
  {

    return [v2 setCheckSupportedDeviceCapabilitiesCompletionBlock_];
  }
}

void sub_1884762BC(objc_class *a1, uint64_t a2, uint64_t a3)
{
  isa = a1;
  if (a1)
  {
    sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);
    sub_18844E6FC(&qword_1EA90D738, &qword_1886F8730);
    sub_18841A9C8();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  if (a2)
  {
    v6 = _convertErrorToNSError(_:)();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, isa);
}

uint64_t sub_188476398(uint64_t a1, char a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (qword_1ED4B5C68 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1883FDE5C(v6, qword_1ED4B5C70);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    MEMORY[0x18CFD7E80](v9, -1, -1);
  }

  if (a2)
  {
    return a3(0, a1);
  }

  sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);
  sub_18844E6FC(&qword_1EA90D738, &qword_1886F8730);
  sub_18841A9C8();
  v11 = Dictionary.init(dictionaryLiteral:)();
  a3(v11, 0);
}

void sub_188476538(uint64_t a1, void *a2, void (*a3)(void *, uint64_t))
{
  if (!a2)
  {
    goto LABEL_4;
  }

  swift_getErrorValue();
  v5 = a2;
  if (sub_1885164AC(v7))
  {

LABEL_4:
    a3(0, 0);
    return;
  }

  v6 = a2;
  a3(a2, 1);
}

uint64_t sub_1884765F8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);
    sub_18844E6FC(&qword_1EA90D738, &qword_1886F8730);
    sub_18841A9C8();
    v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t CKCheckSupportedDeviceCapabilitiesOperation.checkSupportedDeviceCapabilitiesResultBlock.modify(uint64_t (**a1)(uint64_t a1, char a2))
{
  a1[2] = v1;
  *a1 = CKCheckSupportedDeviceCapabilitiesOperation.checkSupportedDeviceCapabilitiesResultBlock.getter();
  a1[1] = v3;
  return sub_1883F7BCC();
}

uint64_t sub_188476748(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  if (a2)
  {
    v4 = sub_1883F7BC0();
    v11 = v5;
    v6(v4);
    v7 = sub_1883F7BC0();
    a3(v7);
    v8 = sub_1883F7BC0();

    return v11(v8);
  }

  else
  {
    v10 = sub_1883F7BC0();
    return a3(v10);
  }
}

Swift::Int sub_1884767DC(uint64_t (*a1)(char *, char *), uint64_t a2)
{
  v5 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1885143B0();
    v5 = v6;
  }

  result = sub_1884788F8(a1, a2);
  *v2 = v5;
  return result;
}

uint64_t sub_1884768A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = *v4;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!result)
  {
    sub_188410EAC();
    result = a4();
    *v4 = result;
  }

  return result;
}

uint64_t sub_188476960(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

void sub_188476AF4()
{
  sub_1884057D4();
  if (!(v4 ^ v5 | v3))
  {
    *v0 = v1(v2 > 1);
  }
}

void sub_188476B84()
{
  sub_1884057D4();
  if (!(v4 ^ v5 | v3))
  {
    *v0 = v1(v2 > 1);
  }
}

void sub_188476CB0()
{
  sub_1884007CC();
  if (v4)
  {
    sub_1883F876C();
    if (v5 != v6)
    {
      sub_1883FE588();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1883F9BC4();
    }
  }

  sub_18840AF6C();
  if (v3)
  {
    v7 = sub_18844E6FC(&qword_1EA90D6C8, &unk_1886F86A0);
    v8 = sub_188405D3C(v7);
    v9 = j__malloc_size(v8);
    sub_1883F791C(v9);
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  if (v1)
  {
    if (v8 != v0 || &v0[40 * v2 + 32] <= v8 + 32)
    {
      v11 = sub_1883FF6E8();
      memmove(v11, v12, v13);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    sub_18844E6FC(&qword_1EA90DC50, &qword_1886F9440);
    sub_1883FF6E8();
    swift_arrayInitWithCopy();
  }
}

void sub_188476DA8()
{
  sub_1884007CC();
  if (v3)
  {
    sub_1883F876C();
    if (v5 != v6)
    {
      sub_1883FE588();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1883F9BC4();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 2);
  if (v4 <= v7)
  {
    v8 = *(v0 + 2);
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    sub_18844E6FC(&qword_1EA90D690, &qword_1886F8660);
    v9 = sub_1883FF58C();
    j__malloc_size(v9);
    sub_1883F9194();
    *(v9 + 2) = v7;
    *(v9 + 3) = v10;
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v7] <= v11)
    {
      memmove(v11, v12, 16 * v7);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v11, v12, 16 * v7);
  }
}

void *sub_188476E7C(void *result, int64_t a2, char a3, void *a4)
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
    sub_18844E6FC(&qword_1EA90D768, &qword_1886F8760);
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
    if (v10 != a4 || &a4[3 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_18844E6FC(&unk_1EA90D770, &qword_1886F8768);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_188476FB0(char *result, int64_t a2, char a3, char *a4)
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
    sub_18844E6FC(&qword_1EA90D6B8, &qword_1886F8688);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[24 * v8] <= v12)
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1884770C8(char *result, int64_t a2, char a3, char *a4)
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
    sub_18844E6FC(&qword_1EA90D750, &qword_1886F8748);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[40 * v8] <= v12)
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_188477234()
{
  sub_18840548C();
  if (v4)
  {
    sub_1883F876C();
    if (v5 != v6)
    {
      sub_1883FE588();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1883F9BC4();
    }
  }

  sub_1883FA074();
  if (v3)
  {
    sub_1883F83D0(v7, v8, v9, v10, v11, v12);
    v13 = sub_1883FF58C();
    sub_1883FF0C4(v13);
    sub_1883F8DC4(v14);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v15 = sub_1883F9764();
  if (v1)
  {
    if (v3 != v0 || &v16[32 * v2] <= v15)
    {
      memmove(v15, v16, 32 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    sub_1883FB4FC(v15, v16);
  }
}

void sub_1884772EC()
{
  sub_1884007CC();
  if (v3)
  {
    sub_1883F876C();
    if (v5 != v6)
    {
      sub_1883FE588();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1883F9BC4();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 16);
  v8 = sub_188510764(v7, v4);
  v9 = *(type metadata accessor for PropertyDescription() - 8);
  if (v1)
  {
    v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    sub_1884776DC(v0 + v10, v7, v8 + v10, MEMORY[0x1E69947E0]);
    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1884773F0()
{
  sub_18840548C();
  if (v4)
  {
    sub_1883F876C();
    if (v5 != v6)
    {
      sub_1883FE588();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1883F9BC4();
    }
  }

  sub_1883FA074();
  if (v3)
  {
    sub_1883F83D0(v7, v8, v9, v10, v11, v12);
    v13 = sub_1883FF58C();
    sub_1883FF0C4(v13);
    sub_1883F8DC4(v14);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v15 = sub_1883F9764();
  if (v1)
  {
    if (v3 != v0 || &v16[8 * v2] <= v15)
    {
      memmove(v15, v16, 8 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    sub_1883FB4FC(v15, v16);
  }
}

void sub_1884774A8()
{
  sub_1884007CC();
  if (v4)
  {
    sub_1883F876C();
    if (v5 != v6)
    {
      sub_1883FE588();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1883F9BC4();
    }
  }

  sub_18840AF6C();
  if (v3)
  {
    v7 = sub_18844E6FC(&qword_1EA90D700, &qword_1886F86E8);
    v8 = sub_188405D3C(v7);
    v9 = j__malloc_size(v8);
    sub_1883F791C(v9);
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  if (v1)
  {
    if (v8 != v0 || &v0[24 * v2 + 32] <= v8 + 32)
    {
      v11 = sub_1883FF6E8();
      memmove(v11, v12, v13);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    sub_18844E6FC(&qword_1EA90D708, &qword_1886F86F0);
    sub_1883FF6E8();
    swift_arrayInitWithCopy();
  }
}

void sub_1884775F4()
{
  sub_18840548C();
  if (v4)
  {
    sub_1883F876C();
    if (v5 != v6)
    {
      sub_1883FE588();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1883F9BC4();
    }
  }

  sub_1883FA074();
  if (v3)
  {
    v13 = sub_1883F83D0(v7, v8, v9, v10, v11, v12);
    v14 = sub_1883FA31C(v13);
    j__malloc_size(v14);
    sub_1883F9194();
    v14[2] = v2;
    v14[3] = v15;
  }

  v16 = sub_1883F9764();
  if (v1)
  {
    sub_18840229C();
    if (v21)
    {
      v22 = v20 > v18;
    }

    else
    {
      v22 = 0;
    }

    if (!v22)
    {
      memmove(v18, v19, 16 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    sub_1883FB4FC(v16, v17);
  }
}

void sub_1884776DC(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  sub_1883FC744();
  if (v9 < v8 || (a4(0), sub_1883F7930(), v5 + *(v10 + 72) * v4 <= a3))
  {
    a4(0);
    sub_18840AD28();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != v5)
  {
    sub_18840AD28();

    swift_arrayInitWithTakeBackToFront();
  }
}

void *sub_1884777AC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_188477B60(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_188477804(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_188477C90(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_188477844(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_188477E88(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_188477864(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_188477FB8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1884778DC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1884780C0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1884778FC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1884781C0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1884779C4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_188478438(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_188477AA8()
{
  sub_18840548C();
  if (v4)
  {
    sub_1883F876C();
    if (v5 != v6)
    {
      sub_1883FE588();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1883F9BC4();
    }
  }

  sub_1883FA074();
  if (v3)
  {
    sub_1883F83D0(v7, v8, v9, v10, v11, v12);
    v13 = sub_1883FF58C();
    sub_1883FF0C4(v13);
    sub_1883F8DC4(v14);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v15 = sub_1883F9764();
  if (v1)
  {
    if (v3 != v0 || &v16[32 * v2] <= v15)
    {
      memmove(v15, v16, 32 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    sub_1883FB4FC(v15, v16);
  }
}

void *sub_188477B60(void *result, int64_t a2, char a3, void *a4)
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
    sub_18844E6FC(&qword_1EA90D728, &qword_1886F8720);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[4 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_18844E6FC(&qword_1EA90D730, &qword_1886F8728);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_188477C90(char *result, int64_t a2, char a3, char *a4)
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
    sub_18844E6FC(&qword_1EA90D6B8, &qword_1886F8688);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[24 * v8] <= v12)
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_188477DA8()
{
  sub_1884007CC();
  if (v4)
  {
    sub_1883F876C();
    if (v5 != v6)
    {
      sub_1883FE588();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1883F9BC4();
    }
  }

  sub_18840AF6C();
  if (v3)
  {
    v7 = sub_18844E6FC(&qword_1EA90D750, &qword_1886F8748);
    v8 = sub_188405D3C(v7);
    v9 = j__malloc_size(v8);
    sub_1883F791C(v9);
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  v10 = v8 + 32;
  v11 = v0 + 32;
  if (v1)
  {
    if (v8 != v0 || &v11[40 * v2] <= v10)
    {
      memmove(v10, v11, 40 * v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void *sub_188477E88(void *result, int64_t a2, char a3, void *a4)
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
    sub_18844E6FC(&qword_1EA90D748, &qword_1886F8740);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_18844E6FC(&qword_1EA90D5E0, &qword_1886F8068);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_188477FB8(char *result, int64_t a2, char a3, char *a4)
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
    sub_18844E6FC(&qword_1EA90D740, &qword_1886F8738);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1884780C0(char *result, int64_t a2, char a3, char *a4)
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
    sub_18844E6FC(&qword_1EA90D688, &qword_1886F8658);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}

char *sub_1884781C0(char *result, int64_t a2, char a3, char *a4)
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
    sub_18844E6FC(&qword_1EA90D718, &unk_1886F8700);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[32 * v8] <= v12)
    {
      memmove(v12, v13, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1884782CC()
{
  sub_18840548C();
  if (v4)
  {
    sub_1883F876C();
    if (v5 != v6)
    {
      sub_1883FE588();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1883F9BC4();
    }
  }

  sub_1883FA074();
  if (v3)
  {
    v13 = sub_1883F83D0(v7, v8, v9, v10, v11, v12);
    v14 = sub_1883FA31C(v13);
    j__malloc_size(v14);
    sub_1883F9194();
    v14[2] = v2;
    v14[3] = v15;
  }

  v16 = sub_1883F9764();
  if (v1)
  {
    sub_18840229C();
    if (v21)
    {
      v22 = v20 > v18;
    }

    else
    {
      v22 = 0;
    }

    if (!v22)
    {
      memmove(v18, v19, 16 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    sub_1883FB4FC(v16, v17);
  }
}

void sub_188478380()
{
  sub_18840548C();
  if (v4)
  {
    sub_1883F876C();
    if (v5 != v6)
    {
      sub_1883FE588();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1883F9BC4();
    }
  }

  sub_1883FA074();
  if (v3)
  {
    sub_1883F83D0(v7, v8, v9, v10, v11, v12);
    v13 = sub_1883FF58C();
    sub_1883FF0C4(v13);
    sub_1883F8DC4(v14);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v15 = sub_1883F9764();
  if (v1)
  {
    if (v3 != v0 || &v16[8 * v2] <= v15)
    {
      memmove(v15, v16, 8 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    sub_1883FB4FC(v15, v16);
  }
}

void *sub_188478438(void *result, int64_t a2, char a3, void *a4)
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
    sub_18844E6FC(&qword_1EA90D6F0, &qword_1886F86D8);
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
    if (v10 != a4 || &a4[3 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_18844E6FC(&qword_1EA90D6F8, &qword_1886F86E0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1884785A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), void (*a8)(void))
{
  v11 = a1;
  if (a3)
  {
    sub_1883F876C();
    if (v13 != v14)
    {
      sub_1883FE588();
      if (v13)
      {
LABEL_24:
        __break(1u);
        return;
      }

      sub_1883F9BC4();
    }
  }

  else
  {
    v12 = a2;
  }

  v15 = *(a4 + 16);
  if (v12 <= v15)
  {
    v16 = *(a4 + 16);
  }

  else
  {
    v16 = v12;
  }

  if (!v16)
  {
    v20 = MEMORY[0x1E69E7CC0];
    goto LABEL_18;
  }

  sub_1883F83D0(a1, a2, a3, a4, a5, a6);
  v17 = *(a7(0) - 8);
  v18 = *(v17 + 72);
  v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v20 = swift_allocObject();
  v21 = j__malloc_size(v20);
  if (!v18)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v21 - v19 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_23;
  }

  v20[2] = v15;
  v20[3] = 2 * ((v21 - v19) / v18);
LABEL_18:
  v23 = *(a7(0) - 8);
  if (v11)
  {
    v24 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    sub_1884776DC(a4 + v24, v15, v20 + v24, a8);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

uint64_t sub_188478754(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  __CocoaSet.count.getter();
LABEL_9:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v2 = result;
  return result;
}

uint64_t sub_1884787F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void))
{
  v9 = *v6;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v9;
  if (!result || a1 > *(v9 + 24) >> 1)
  {
    sub_188410EAC();
    result = a6();
    *v6 = result;
  }

  return result;
}

uint64_t sub_188478880(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    result = a3();
    *v3 = result;
  }

  return result;
}

Swift::Int sub_1884788F8(uint64_t (*a1)(char *, char *), uint64_t a2)
{
  v5 = v2[1];
  result = _minimumMergeRunLength(_:)(v5);
  if (result < v5)
  {
    if (v5 >= -1)
    {
      v7 = result;
      v8 = v5 / 2;
      if (v5 < 2)
      {
        v9 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v9 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v9 + 16) = v8;
      }

      v10[0] = (v9 + 32);
      v10[1] = v8;
      sub_188478B80(v10, v11, v2, a1, a2, v7);
      *(v9 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v5 < 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    return sub_1884789FC(0, v5, 1, a1);
  }

  return result;
}

uint64_t sub_1884789FC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *, _BYTE *, __n128))
{
  v6 = v5;
  if (a3 != a2)
  {
    v8 = a3;
    v9 = *v4;
    v10 = *v4 + 40 * a3 - 40;
    v11 = result - a3;
LABEL_4:
    v12 = (v9 + 40 * v8);
    v13 = *v12;
    v14 = *(v12 + 1);
    result = *(v12 + 2);
    v15 = *(v12 + 3);
    v16 = *(v12 + 4);
    v25 = v11;
    v36 = v10;
    while (1)
    {
      v31[0] = v13;
      v32 = v14;
      v33 = result;
      v34 = v15;
      v35 = v16;
      v17 = *(v10 + 8);
      v18 = *(v10 + 16);
      v19 = *(v10 + 24);
      v20 = *(v10 + 32);
      v26[0] = *v10;
      v27 = v17;
      v28 = v18;
      v29 = v19;
      v30 = v20;

      v21 = (a4)(v31, v26);

      if (v6)
      {
        break;
      }

      if (v21)
      {
        if (!v9)
        {
          __break(1u);
          return result;
        }

        v13 = *(v10 + 40);
        v14 = *(v10 + 48);
        result = *(v10 + 56);
        v22 = *(v10 + 16);
        *(v10 + 40) = *v10;
        v15 = *(v10 + 64);
        v16 = *(v10 + 72);
        *(v10 + 56) = v22;
        *(v10 + 72) = *(v10 + 32);
        *v10 = v13;
        *(v10 + 8) = v14;
        *(v10 + 16) = result;
        *(v10 + 24) = v15;
        *(v10 + 32) = v16;
        v10 -= 40;
        if (!__CFADD__(v11++, 1))
        {
          continue;
        }
      }

      ++v8;
      v10 = v36 + 40;
      v11 = v25 - 1;
      if (v8 != a2)
      {
        goto LABEL_4;
      }

      return result;
    }
  }

  return result;
}

void sub_188478B80(char **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(char *, char *), uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v150 = a5;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = MEMORY[0x1E69E7CC0];
LABEL_93:
    v137 = *a1;
    if (*a1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_127;
      }

      goto LABEL_95;
    }

    goto LABEL_136;
  }

  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v11 = v9;
    v12 = v9 + 1;
    if (v9 + 1 >= v8)
    {
      goto LABEL_23;
    }

    v137 = v8;
    v131 = v10;
    v13 = *a3;
    v14 = *a3 + 40 * v12;
    v16 = *(v14 + 8);
    v15 = *(v14 + 16);
    v17 = *(v14 + 24);
    v18 = *(v14 + 32);
    v145[0] = *v14;
    v146 = v16;
    v147 = v15;
    v148 = v17;
    v149 = v18;
    v19 = v13 + 40 * v11;
    v20 = *(v19 + 8);
    v21 = *(v19 + 16);
    v22 = *(v19 + 24);
    v23 = *(v19 + 32);
    v140[0] = *v19;
    v141 = v20;
    v142 = v21;
    v143 = v22;
    v144 = v23;

    v24 = a4(v145, v140);
    if (v7)
    {
LABEL_104:

      goto LABEL_105;
    }

    v25 = v24;

    v134 = 40 * v11;
    v26 = (v13 + 40 * v11 + 112);
    v129 = v11;
    v27 = v11 + 2;
    v28 = v137;
    do
    {
      v29 = v12;
      v30 = v27;
      if (v12 + 1 >= v28)
      {
        v12 = v28;
        if ((v25 & 1) == 0)
        {
          goto LABEL_22;
        }

LABEL_9:
        if (v12 >= v129)
        {
          v39 = v129 <= v29;
          v10 = v131;
          v11 = v129;
          if (v39)
          {
            if (v28 >= v30)
            {
              v40 = v30;
            }

            else
            {
              v40 = v28;
            }

            v41 = 40 * v40 - 16;
            v42 = v134 + 32;
            v43 = v12;
            v44 = v129;
            do
            {
              if (v44 != --v43)
              {
                v45 = *a3;
                if (!*a3)
                {
                  goto LABEL_134;
                }

                v46 = (v45 + v42);
                v47 = *(v45 + v42 - 32);
                v48 = (v45 + v41);
                v49 = *(v46 - 3);
                v50 = *(v46 - 1);
                v51 = *v46;
                v52 = v48[1];
                v53 = *(v48 - 1);
                *(v46 - 2) = *(v48 - 3);
                *(v46 - 1) = v53;
                *v46 = v52;
                *(v48 - 24) = v47;
                *(v48 - 1) = v49;
                *v48 = v50;
                v48[1] = v51;
              }

              ++v44;
              v41 -= 40;
              v42 += 40;
            }

            while (v44 < v43);
          }

          goto LABEL_23;
        }

        goto LABEL_130;
      }

      v32 = *(v26 - 3);
      v31 = *(v26 - 2);
      v33 = *(v26 - 1);
      v34 = *v26;
      v145[0] = *(v26 - 32);
      v146 = v32;
      v147 = v31;
      v148 = v33;
      v149 = v34;
      v35 = *(v26 - 8);
      v36 = *(v26 - 7);
      v37 = *(v26 - 6);
      v38 = *(v26 - 5);
      v140[0] = *(v26 - 72);
      v141 = v35;
      v142 = v36;
      v143 = v37;
      v144 = v38;

      LODWORD(v36) = a4(v145, v140);

      v26 += 5;
      v12 = v29 + 1;
      v27 = v30 + 1;
      v28 = v137;
    }

    while (((v25 ^ v36) & 1) == 0);
    if (v25)
    {
      goto LABEL_9;
    }

LABEL_22:
    v11 = v129;
    v10 = v131;
LABEL_23:
    v54 = a3[1];
    if (v12 < v54)
    {
      if (__OFSUB__(v12, v11))
      {
        goto LABEL_126;
      }

      if (v12 - v11 < a6)
      {
        if (__OFADD__(v11, a6))
        {
          __break(1u);
        }

        else
        {
          if (v11 + a6 >= v54)
          {
            v55 = a3[1];
          }

          else
          {
            v55 = v11 + a6;
          }

          if (v55 >= v11)
          {
            if (v12 != v55)
            {
              v130 = v11;
              v132 = v10;
              v98 = *a3;
              v99 = *a3 + 40 * v12 - 40;
              v100 = (v130 - v12);
              v127 = v55;
              do
              {
                v136 = v12;
                v137 = v100;
                v101 = v98 + 40 * v12;
                v102 = *v101;
                v104 = *(v101 + 8);
                v103 = *(v101 + 16);
                v105 = *(v101 + 24);
                v106 = *(v101 + 32);
                v107 = v99;
                v108 = v99;
                do
                {
                  v145[0] = v102;
                  v146 = v104;
                  v147 = v103;
                  v148 = v105;
                  v149 = v106;
                  v109 = *(v108 + 8);
                  v110 = *(v108 + 16);
                  v111 = *(v108 + 24);
                  v112 = *(v108 + 32);
                  v140[0] = *v108;
                  v141 = v109;
                  v142 = v110;
                  v143 = v111;
                  v144 = v112;

                  v113 = a4(v145, v140);
                  if (v7)
                  {
                    goto LABEL_104;
                  }

                  v114 = v113;

                  if ((v114 & 1) == 0)
                  {
                    break;
                  }

                  if (!v98)
                  {
                    goto LABEL_133;
                  }

                  v102 = *(v108 + 40);
                  v104 = *(v108 + 48);
                  v103 = *(v108 + 56);
                  v115 = *(v108 + 16);
                  *(v108 + 40) = *v108;
                  v105 = *(v108 + 64);
                  v106 = *(v108 + 72);
                  *(v108 + 56) = v115;
                  *(v108 + 72) = *(v108 + 32);
                  *v108 = v102;
                  *(v108 + 8) = v104;
                  *(v108 + 16) = v103;
                  *(v108 + 24) = v105;
                  *(v108 + 32) = v106;
                  v108 -= 40;
                }

                while (!__CFADD__(v100++, 1));
                v12 = v136 + 1;
                v99 = v107 + 40;
                v100 = v137 - 1;
              }

              while (v136 + 1 != v127);
              v12 = v127;
              v11 = v130;
              v10 = v132;
            }

            goto LABEL_32;
          }
        }

        __break(1u);
LABEL_130:
        __break(1u);
LABEL_131:
        __break(1u);
LABEL_132:
        __break(1u);
LABEL_133:
        __break(1u);
LABEL_134:
        __break(1u);
        goto LABEL_135;
      }
    }

LABEL_32:
    if (v12 < v11)
    {
      goto LABEL_125;
    }

    v135 = v12;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_188476DA8();
      v10 = v117;
    }

    v56 = *(v10 + 2);
    v57 = v56 + 1;
    if (v56 >= *(v10 + 3) >> 1)
    {
      sub_188476DA8();
      v10 = v118;
    }

    *(v10 + 2) = v57;
    v58 = v10 + 32;
    v59 = &v10[16 * v56 + 32];
    *v59 = v11;
    *(v59 + 1) = v135;
    v137 = *a1;
    if (!*a1)
    {
LABEL_135:
      __break(1u);
LABEL_136:
      __break(1u);
      return;
    }

    if (v56)
    {
      break;
    }

LABEL_81:
    v8 = a3[1];
    v9 = v135;
    if (v135 >= v8)
    {
      goto LABEL_93;
    }
  }

  while (1)
  {
    v60 = v57 - 1;
    v61 = &v58[16 * v57 - 16];
    v62 = &v10[16 * v57];
    if (v57 >= 4)
    {
      v67 = &v58[16 * v57];
      v68 = *(v67 - 8);
      v69 = *(v67 - 7);
      v73 = __OFSUB__(v69, v68);
      v70 = v69 - v68;
      if (v73)
      {
        goto LABEL_113;
      }

      v72 = *(v67 - 6);
      v71 = *(v67 - 5);
      v73 = __OFSUB__(v71, v72);
      v65 = v71 - v72;
      v66 = v73;
      if (v73)
      {
        goto LABEL_114;
      }

      v74 = *(v62 + 1);
      v75 = v74 - *v62;
      if (__OFSUB__(v74, *v62))
      {
        goto LABEL_116;
      }

      v73 = __OFADD__(v65, v75);
      v76 = v65 + v75;
      if (v73)
      {
        goto LABEL_119;
      }

      if (v76 >= v70)
      {
        v90 = *v61;
        v89 = *(v61 + 1);
        v73 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v73)
        {
          goto LABEL_124;
        }

        if (v65 < v91)
        {
          v60 = v57 - 2;
        }

        goto LABEL_74;
      }

      goto LABEL_52;
    }

    if (v57 == 3)
    {
      v63 = *(v10 + 4);
      v64 = *(v10 + 5);
      v73 = __OFSUB__(v64, v63);
      v65 = v64 - v63;
      v66 = v73;
LABEL_52:
      if (v66)
      {
        goto LABEL_115;
      }

      v78 = *v62;
      v77 = *(v62 + 1);
      v79 = __OFSUB__(v77, v78);
      v80 = v77 - v78;
      v81 = v79;
      if (v79)
      {
        goto LABEL_118;
      }

      v82 = *(v61 + 1);
      v83 = v82 - *v61;
      if (__OFSUB__(v82, *v61))
      {
        goto LABEL_121;
      }

      if (__OFADD__(v80, v83))
      {
        goto LABEL_123;
      }

      if (v80 + v83 >= v65)
      {
        if (v65 < v83)
        {
          v60 = v57 - 2;
        }

        goto LABEL_74;
      }

      goto LABEL_67;
    }

    if (v57 < 2)
    {
      goto LABEL_117;
    }

    v85 = *v62;
    v84 = *(v62 + 1);
    v73 = __OFSUB__(v84, v85);
    v80 = v84 - v85;
    v81 = v73;
LABEL_67:
    if (v81)
    {
      goto LABEL_120;
    }

    v87 = *v61;
    v86 = *(v61 + 1);
    v73 = __OFSUB__(v86, v87);
    v88 = v86 - v87;
    if (v73)
    {
      goto LABEL_122;
    }

    if (v88 < v80)
    {
      goto LABEL_81;
    }

LABEL_74:
    if (v60 - 1 >= v57)
    {
      break;
    }

    if (!*a3)
    {
      goto LABEL_131;
    }

    v92 = &v58[16 * v60 - 16];
    v93 = *v92;
    v94 = &v58[16 * v60];
    v95 = *(v94 + 1);
    sub_188479388((*a3 + 40 * *v92), (*a3 + 40 * *v94), *a3 + 40 * v95, v137, a4);
    if (v7)
    {
      goto LABEL_105;
    }

    if (v95 < v93)
    {
      goto LABEL_107;
    }

    v96 = v10;
    v97 = *(v10 + 2);
    if (v60 > v97)
    {
      goto LABEL_108;
    }

    *v92 = v93;
    *(v92 + 1) = v95;
    if (v60 >= v97)
    {
      goto LABEL_109;
    }

    v57 = v97 - 1;
    sub_18851423C(v94 + 16, v97 - 1 - v60, &v58[16 * v60]);
    *(v96 + 2) = v97 - 1;
    v39 = v97 > 2;
    v10 = v96;
    if (!v39)
    {
      goto LABEL_81;
    }
  }

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
  v10 = sub_188514144();
LABEL_95:
  v119 = v10 + 16;
  v120 = *(v10 + 2);
  while (v120 >= 2)
  {
    if (!*a3)
    {
      goto LABEL_132;
    }

    v121 = v10;
    v122 = &v10[16 * v120];
    v123 = *v122;
    v124 = &v119[2 * v120];
    v125 = *(v124 + 1);
    sub_188479388((*a3 + 40 * *v122), (*a3 + 40 * *v124), *a3 + 40 * v125, v137, a4);
    if (v7)
    {
      break;
    }

    if (v125 < v123)
    {
      goto LABEL_110;
    }

    if (v120 - 2 >= *v119)
    {
      goto LABEL_111;
    }

    *v122 = v123;
    *(v122 + 1) = v125;
    v126 = *v119 - v120;
    if (*v119 < v120)
    {
      goto LABEL_112;
    }

    v120 = *v119 - 1;
    sub_18851423C(v124 + 16, v126, v124);
    *v119 = v120;
    v10 = v121;
  }

LABEL_105:
}

uint64_t sub_188479388(char *__src, char *a2, unint64_t a3, char *a4, uint64_t (*a5)(char *, char *))
{
  v6 = v5;
  v7 = a4;
  v8 = a2;
  v9 = (a2 - __src) / 40;
  v66 = a3;
  v10 = (a3 - a2) / 40;
  if (v9 < v10)
  {
    v11 = a4 == __src && &__src[40 * v9] > a4;
    v12 = __src;
    if (!v11)
    {
      memmove(a4, __src, 40 * v9);
    }

    v13 = &v7[40 * v9];
    while (1)
    {
      if (v7 >= v13 || v8 >= v66)
      {
        v8 = v12;
        goto LABEL_40;
      }

      v16 = *(v8 + 1);
      v15 = *(v8 + 2);
      v17 = *(v8 + 3);
      v18 = *(v8 + 4);
      v73[0] = *v8;
      v74 = v16;
      v75 = v15;
      v76 = v17;
      v77 = v18;
      v19 = *(v7 + 1);
      v20 = *(v7 + 2);
      v21 = *(v7 + 3);
      v22 = *(v7 + 4);
      v68[0] = *v7;
      v69 = v19;
      v70 = v20;
      v71 = v21;
      v72 = v22;

      v23 = a5(v73, v68);
      if (v6)
      {

        v56 = (v13 - v7) / 40;
        v57 = v12 < v7 || v12 >= &v7[40 * v56];
        if (v57 || v12 != v7)
        {
          v54 = 40 * v56;
          v55 = v12;
LABEL_52:
          v58 = v7;
LABEL_53:
          memmove(v55, v58, v54);
        }

        return 1;
      }

      v24 = v23;

      if ((v24 & 1) == 0)
      {
        break;
      }

      v25 = v8;
      v26 = v12 == v8;
      v8 += 40;
      if (!v26)
      {
        goto LABEL_18;
      }

LABEL_19:
      v12 += 40;
    }

    v25 = v7;
    v26 = v12 == v7;
    v7 += 40;
    if (v26)
    {
      goto LABEL_19;
    }

LABEL_18:
    v27 = *v25;
    v28 = *(v25 + 1);
    *(v12 + 4) = *(v25 + 4);
    *v12 = v27;
    *(v12 + 1) = v28;
    goto LABEL_19;
  }

  v78 = v5;
  if (a4 != a2 || &a2[40 * v10] <= a4)
  {
    memmove(a4, a2, 40 * v10);
  }

  v64 = v7;
  v65 = &v7[40 * v10];
LABEL_26:
  v30 = 0;
  v62 = v8 - 40;
  v31 = __src;
  while (1)
  {
    v13 = &v65[v30];
    v32 = &v65[v30] > v64 && v8 > v31;
    v33 = v66;
    if (!v32)
    {
      v7 = v64;
LABEL_40:
      v52 = (v13 - v7) / 40;
      v53 = v8 < v7 || v8 >= &v7[40 * v52];
      if (v53 || v8 != v7)
      {
        v54 = 40 * v52;
        v55 = v8;
        goto LABEL_52;
      }

      return 1;
    }

    v35 = *(v13 - 4);
    v34 = *(v13 - 3);
    v36 = *(v13 - 2);
    v37 = *(v13 - 1);
    v73[0] = *(v13 - 40);
    v74 = v35;
    v75 = v34;
    v76 = v36;
    v77 = v37;
    v38 = *(v8 - 4);
    v39 = *(v8 - 3);
    v40 = *(v8 - 2);
    v41 = *(v8 - 1);
    v68[0] = *(v8 - 40);
    v69 = v38;
    v70 = v39;
    v71 = v40;
    v72 = v41;

    v42 = v78;
    v43 = a5(v73, v68);
    v78 = v42;
    if (v42)
    {
      break;
    }

    v44 = v43;
    v45 = v8;
    v46 = (v66 + v30);
    v47 = (v66 + v30 - 40);

    if (v44)
    {
      v65 += v30;
      v66 = v66 + v30 - 40;
      v26 = v46 == v45;
      v8 = v62;
      if (!v26)
      {
        v50 = *v62;
        v51 = *(v62 + 1);
        *(v33 + v30 - 8) = *(v62 + 4);
        *v47 = v50;
        *(v33 + v30 - 24) = v51;
        v8 = v62;
        v66 = v33 + v30 - 40;
      }

      goto LABEL_26;
    }

    v31 = __src;
    if (v13 != (v66 + v30))
    {
      v48 = *(v13 - 40);
      v49 = *(v13 - 24);
      *(v66 + v30 - 8) = *(v13 - 1);
      *v47 = v48;
      *(v66 + v30 - 24) = v49;
    }

    v30 -= 40;
    v8 = v45;
  }

  v58 = v64;
  v60 = (v65 - v64 + v30) / 40;
  if (v8 < v64 || v8 >= &v64[40 * v60])
  {
    memmove(v8, v64, 40 * v60);
  }

  else if (v8 != v64)
  {
    v54 = 40 * v60;
    v55 = v8;
    goto LABEL_53;
  }

  return 1;
}

uint64_t sub_1884797C0(void *a1)
{
  v1 = [a1 supportedDeviceCapabilities];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for CKDeviceCapability(0);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_188479820(void *a1)
{
  v1 = [a1 desiredCapabilitySets];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_18844E6FC(&qword_1EA90D5E0, &qword_1886F8068);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_18847988C(void *a1)
{
  v1 = [a1 zoneIDs];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_1884798FC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x18CFD5EB0](v3);
  if (v3)
  {
    v5 = a2 + 64;
    do
    {
      MEMORY[0x18CFD5EB0](*(v5 - 32) + 1);

      String.hash(into:)();
      String.hash(into:)();

      v5 += 40;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1884799AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_18844E6FC(&unk_1EA90D7B0, &dword_1886F8780);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_188479A58(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_188479A6C()
{
  result = qword_1EA90D5E8;
  if (!qword_1EA90D5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90D5E8);
  }

  return result;
}

unint64_t sub_188479AC4()
{
  result = qword_1EA90D5F0;
  if (!qword_1EA90D5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90D5F0);
  }

  return result;
}

unint64_t sub_188479B1C()
{
  result = qword_1EA90D5F8;
  if (!qword_1EA90D5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90D5F8);
  }

  return result;
}

unint64_t sub_188479B74()
{
  result = qword_1EA90D600;
  if (!qword_1EA90D600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90D600);
  }

  return result;
}

unint64_t sub_188479BFC()
{
  result = qword_1EA90D610;
  if (!qword_1EA90D610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90D610);
  }

  return result;
}

unint64_t sub_188479C98()
{
  result = qword_1EA90D628;
  if (!qword_1EA90D628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90D628);
  }

  return result;
}

unint64_t sub_188479CF0()
{
  result = qword_1EA90D630;
  if (!qword_1EA90D630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90D630);
  }

  return result;
}

uint64_t sub_188479DC0(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_18844E798(&qword_1EA90D620, &qword_1886F81E8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_188479E3C()
{
  result = qword_1EA90D648;
  if (!qword_1EA90D648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90D648);
  }

  return result;
}

uint64_t sub_188479ED0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_18844E798(&qword_1EA90D308, &unk_1886F75A0);
    sub_188479BFC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_188479FD0(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_18844E798(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_18847A01C()
{
  result = qword_1EA90D670;
  if (!qword_1EA90D670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90D670);
  }

  return result;
}

unint64_t sub_18847A074()
{
  result = qword_1EA90D678;
  if (!qword_1EA90D678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90D678);
  }

  return result;
}

uint64_t sub_18847A0C8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_18847A108(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

_BYTE *storeEnumTagSinglePayload for CKDeviceCapability.Level(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_18847A24C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18847A2A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CKDeviceCapabilityCheckResult(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CKDeviceCapabilityCheckResult(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_18847A488(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

unint64_t sub_18847A4EC()
{
  result = qword_1EA90CAE0;
  if (!qword_1EA90CAE0)
  {
    type metadata accessor for CKError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90CAE0);
  }

  return result;
}

double sub_18847A544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
  }

  return result;
}

double CKDeviceCapability.wrapped.getter@<D0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR___CKDeviceCapability__wrapped);
  v3 = *(v1 + OBJC_IVAR___CKDeviceCapability__wrapped + 8);
  v4 = *(v1 + OBJC_IVAR___CKDeviceCapability__wrapped + 16);
  v5 = *(v1 + OBJC_IVAR___CKDeviceCapability__wrapped + 24);
  v6 = *(v1 + OBJC_IVAR___CKDeviceCapability__wrapped + 32);
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  return sub_18847A544(v2, v3, v4, v5, v6);
}

void __swiftcall CKDeviceCapabilityCheckOptions.init(_:)(CKDeviceCapabilityCheckOptions *__return_ptr retstr, CloudKit::CKDeviceCapabilityCheckOptions *a2)
{
  excludeDevicesWithoutCapabilityCheckingSupport = a2->excludeDevicesWithoutCapabilityCheckingSupport;
  v3 = *(&a2->_excludeZoneAccessBefore.value.super.isa + 7);
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init] + OBJC_IVAR___CKDeviceCapabilityCheckOptions__wrapped;
  swift_beginAccess();
  v5 = *(v4 + 1);
  *v4 = excludeDevicesWithoutCapabilityCheckingSupport;
  *(v4 + 1) = v3;
}

id CKDeviceCapabilityCheckOptions.wrapped.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR___CKDeviceCapabilityCheckOptions__wrapped);
  sub_1883FE5A0(v3, v6);
  v4 = *(v3 + 1);
  *a1 = *v3;
  a1[1] = v4;

  return v4;
}

id CKDeviceCapability.init(level:name:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1883F999C();
  v10 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v11 = MEMORY[0x18CFD5010](v7, v6);

  v12 = MEMORY[0x18CFD5010](v5, a5);

  v13 = [v10 initWithLevel:v8 name:v11 value:v12];

  return v13;
}

char *CKDeviceCapability.init(level:name:value:)()
{
  sub_1883F999C();
  v4 = [v3 init];
  v12 = v4;
  v13 = (v2 - 1);
  if (v13 >= 3)
  {
  }

  else
  {
    v14 = sub_1883F99B0(v4, v5, v6, v7, v8, v9, v10, v11, v1);
    sub_1883F99B0(v14, v15, v16, v17, v18, v19, v20, v21, v0);
    sub_1883F8B50();
    sub_188440388();
    v23 = v22;
    v25 = v24;

    sub_188440388();
    v27 = v26;
    v29 = v28;

    v30 = &v12[OBJC_IVAR___CKDeviceCapability__wrapped];
    v31 = *&v12[OBJC_IVAR___CKDeviceCapability__wrapped];
    v32 = *&v12[OBJC_IVAR___CKDeviceCapability__wrapped + 8];
    v33 = *&v12[OBJC_IVAR___CKDeviceCapability__wrapped + 16];
    *v30 = v13;
    *(v30 + 1) = v23;
    *(v30 + 2) = v25;
    *(v30 + 3) = v27;
    *(v30 + 4) = v29;
    sub_1884406C8(v31, v32, v33);
  }

  return v12;
}

uint64_t CKDeviceCapability.level.getter()
{
  if (*(v0 + OBJC_IVAR___CKDeviceCapability__wrapped + 16))
  {
    return *(v0 + OBJC_IVAR___CKDeviceCapability__wrapped) + 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_18847AA78(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6576656CLL && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701667182 && a2 == 0xE400000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
    {

      return 2;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_18847AB80(void *a1)
{
  v3 = sub_18844E6FC(&unk_1EA90D838, &qword_1886F8838);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  sub_188400B68(a1, a1[3]);
  sub_1884401E4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v8[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[13] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_18847AD0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18847AA78(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18847AD34(uint64_t a1)
{
  v2 = sub_1884401E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18847AD70(uint64_t a1)
{
  v2 = sub_1884401E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

Swift::String __swiftcall CKDeviceCapability.sqliteRepresentation()()
{
  v1 = type metadata accessor for String.Encoding();
  v2 = sub_1883F8AE4(v1);
  MEMORY[0x1EEE9AC00](v2);
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  v3 = JSONEncoder.init()();
  if (*(v0 + OBJC_IVAR___CKDeviceCapability__wrapped + 16))
  {
    sub_18847AFD0();

    v5 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v7 = v6;

    static String.Encoding.utf8.getter();
    v8 = String.init(data:encoding:)();
    v10 = v9;
    sub_188423CCC(v5, v7);

    if (!v10)
    {
      v10 = 0x80000001886FFD10;
      v8 = 0xD000000000000034;
    }

    v3 = v8;
    v4 = v10;
  }

  else
  {
    __break(1u);
  }

  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

unint64_t sub_18847AFD0()
{
  result = qword_1EA90C148;
  if (!qword_1EA90C148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90C148);
  }

  return result;
}

char *static CKDeviceCapability.sqliteRepresentations(_:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v20 = MEMORY[0x1E69E7CC0];
  v4 = sub_1883FE594();
  result = sub_18840489C(v4, v5, v6);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v3 = v20;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = sub_1883F958C();
        v10 = MEMORY[0x18CFD59D0](v9);
      }

      else
      {
        v10 = *(a1 + 8 * v8 + 32);
      }

      v11 = v10;
      v12 = [v10 sqliteRepresentation];
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      v17 = *(v20 + 16);
      v16 = *(v20 + 24);
      if (v17 >= v16 >> 1)
      {
        v19 = sub_1883F8DD4(v16);
        sub_18840489C(v19, v17 + 1, 1);
      }

      ++v8;
      *(v20 + 16) = v17 + 1;
      v18 = v20 + 16 * v17;
      *(v18 + 32) = v13;
      *(v18 + 40) = v15;
    }

    while (v2 != v8);
    return v3;
  }

  __break(1u);
  return result;
}

void static CKDeviceCapability.isCapabilitySet(_:equalTo:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1883F4C9C(a1);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v6 = v4;
    v41 = MEMORY[0x1E69E7CC0];
    v7 = sub_1883FE594();
    sub_188477824(v7, v8, v9);
    if ((v6 & 0x8000000000000000) == 0)
    {
      v10 = 0;
      v5 = v41;
      sub_1883F7EA8();
      while (1)
      {
        v2 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        if (v37)
        {
          v11 = MEMORY[0x18CFD59D0](v10, a1);
        }

        else
        {
          sub_1883F83E8();
          if (v12)
          {
            goto LABEL_28;
          }

          v11 = sub_18840AE2C(a1);
        }

        v13 = v11;
        sub_1883FB514();
        if (!v3)
        {
          goto LABEL_32;
        }

        v15 = *(v14 + 1);
        v16 = *(v14 + 4);
        v40 = *(v14 + 3);
        v17 = *v14;

        sub_1883FA084();
        if (v12)
        {
          v20 = sub_1883F8DD4(v18);
          sub_188405690(v20);
        }

        sub_1883F91A8();
        *(v19 + 32) = v17;
        *(v19 + 40) = v15;
        *(v19 + 48) = v3;
        *(v19 + 56) = v40;
        *(v19 + 64) = v16;
        ++v10;
        if (v2 == v6)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

LABEL_13:
  v21 = sub_188471390(v5);

  v22 = sub_1883F4C9C(a2);
  v23 = MEMORY[0x1E69E7CC0];
  if (!v22)
  {
LABEL_26:
    sub_188471390(v23);
    sub_1883F793C();

    sub_18847299C(v21, v2);

    return;
  }

  v24 = v22;
  v42 = MEMORY[0x1E69E7CC0];
  v25 = sub_1883FE594();
  sub_188477824(v25, v26, v27);
  if (v24 < 0)
  {
    goto LABEL_31;
  }

  v23 = v42;
  v36 = v21;
  while (1)
  {
    v2 = 1;
    if ((a2 & 0xC000000000000001) != 0)
    {
      v28 = MEMORY[0x18CFD59D0](0, a2);
    }

    else
    {
      sub_1883F83E8();
      if (v12)
      {
        goto LABEL_29;
      }

      v28 = sub_18840AE2C(a2);
    }

    v29 = v28;
    sub_1883FB514();
    if (!v3)
    {
      break;
    }

    v31 = *v30;

    sub_1883FA084();
    if (v12)
    {
      v35 = sub_1883F8DD4(v32);
      sub_188405690(v35);
    }

    sub_1883F91A8();
    *(v33 + 32) = v31;
    sub_1884007D8(v33);
    if (v34)
    {
      v21 = v36;
      goto LABEL_26;
    }
  }

LABEL_33:
  __break(1u);
}

void static CKDeviceCapability.isCapabilitySet(_:subsetOf:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1883F4C9C(a1);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v6 = v4;
    v41 = MEMORY[0x1E69E7CC0];
    v7 = sub_1883FE594();
    sub_188477824(v7, v8, v9);
    if ((v6 & 0x8000000000000000) == 0)
    {
      v10 = 0;
      v5 = v41;
      while (1)
      {
        v2 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        if ((a1 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x18CFD59D0](v10, a1);
        }

        else
        {
          sub_1883F83E8();
          if (v12)
          {
            goto LABEL_28;
          }

          v11 = sub_18840AE2C(a1);
        }

        v13 = v11;
        sub_1883FB514();
        if (!v3)
        {
          goto LABEL_32;
        }

        v15 = *(v14 + 1);
        v16 = *(v14 + 4);
        v39 = *(v14 + 3);
        v17 = *v14;

        v41 = v5;
        sub_1883FA084();
        if (v12)
        {
          v20 = sub_1883F8DD4(v18);
          sub_188405690(v20);
          v5 = v41;
        }

        sub_1883F91A8();
        *(v19 + 32) = v17;
        *(v19 + 40) = v15;
        *(v19 + 48) = v3;
        *(v19 + 56) = v39;
        *(v19 + 64) = v16;
        ++v10;
        if (v2 == v6)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

LABEL_13:
  v21 = sub_188471390(v5);

  v22 = sub_1883F4C9C(a2);
  v23 = MEMORY[0x1E69E7CC0];
  if (!v22)
  {
LABEL_26:
    sub_188471390(v23);
    sub_1883F793C();

    v40 = v21;
    v41 = v2;
    CKDeviceCapabilitySet.contains(_:)(&v40);

    return;
  }

  v24 = v22;
  v41 = MEMORY[0x1E69E7CC0];
  v25 = sub_1883FE594();
  sub_188477824(v25, v26, v27);
  if (v24 < 0)
  {
    goto LABEL_31;
  }

  v23 = v41;
  v36 = v21;
  while (1)
  {
    v2 = 1;
    if ((a2 & 0xC000000000000001) != 0)
    {
      v28 = MEMORY[0x18CFD59D0](0, a2);
    }

    else
    {
      sub_1883F83E8();
      if (v12)
      {
        goto LABEL_29;
      }

      v28 = sub_18840AE2C(a2);
    }

    v29 = v28;
    sub_1883FB514();
    if (!v3)
    {
      break;
    }

    v31 = *v30;

    v41 = v23;
    sub_1883FA084();
    if (v12)
    {
      v35 = sub_1883F8DD4(v32);
      sub_188405690(v35);
      v23 = v41;
    }

    sub_1883F91A8();
    *(v33 + 32) = v31;
    sub_1884007D8(v33);
    if (v34)
    {
      v21 = v36;
      goto LABEL_26;
    }
  }

LABEL_33:
  __break(1u);
}

uint64_t sub_18847B748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  type metadata accessor for CKDeviceCapability(a1);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = sub_1883FD9FC();
  LOBYTE(a5) = a5(v7, a4);

  return a5 & 1;
}

void static CKDeviceCapability.pruneAndSort(_:)(uint64_t a1)
{
  v2 = sub_1883F4C9C(a1);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v1 = v2;
    *&v36.level = MEMORY[0x1E69E7CC0];
    v4 = sub_1883FE594();
    sub_188477824(v4, v5, v6);
    if (v1 < 0)
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v7 = 0;
    v8 = *&v36.level;
    sub_1883F7EA8();
    while (1)
    {
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v33)
      {
        v10 = MEMORY[0x18CFD59D0](v7, a1);
      }

      else
      {
        if (v7 >= *(v32 + 16))
        {
          goto LABEL_26;
        }

        v10 = *(a1 + 8 * v7 + 32);
      }

      v11 = v10;
      v12 = &v10[OBJC_IVAR___CKDeviceCapability__wrapped];
      v13 = *&v10[OBJC_IVAR___CKDeviceCapability__wrapped + 16];
      if (!v13)
      {
        goto LABEL_29;
      }

      v14 = *(v12 + 1);
      v15 = *(v12 + 4);
      v35 = *(v12 + 3);
      v16 = *v12;

      *&v36.level = v8;
      v18 = *(v8 + 16);
      v17 = *(v8 + 24);
      if (v18 >= v17 >> 1)
      {
        v20 = sub_1883F8DD4(v17);
        sub_188477824(v20, v18 + 1, 1);
        v8 = *&v36.level;
      }

      *(v8 + 16) = v18 + 1;
      v19 = v8 + 40 * v18;
      *(v19 + 32) = v16;
      *(v19 + 40) = v14;
      *(v19 + 48) = v13;
      *(v19 + 56) = v35;
      *(v19 + 64) = v15;
      ++v7;
      if (v9 == v1)
      {
        v3 = MEMORY[0x1E69E7CC0];
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v8 = MEMORY[0x1E69E7CC0];
LABEL_15:
  sub_188471390(v8);
  sub_1883F793C();

  v21 = sub_188473024(0, *(v1 + 16), v1);
  if (!v21)
  {

    return;
  }

  v22 = v21;
  v37 = v3;
  v23 = specialized ContiguousArray.reserveCapacity(_:)();
  if ((v22 & 0x8000000000000000) == 0)
  {
    type metadata accessor for CKDeviceCapability(v23);
    v24 = 0;
    v25 = *(v1 + 16);
    v26 = (v1 + 64);
    while (v24 < *(v1 + 16))
    {
      v28 = *(v26 - 3);
      v27 = *(v26 - 2);
      v29 = *(v26 - 1);
      v30 = *v26;
      v36.level = *(v26 - 32);
      v36.name._countAndFlagsBits = v28;
      v36.name._object = v27;
      v36.value._countAndFlagsBits = v29;
      v36.value._object = v30;

      CKDeviceCapability.init(_:)(v31, &v36);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (v25 == v24)
      {
        goto LABEL_25;
      }

      ++v24;
      v26 += 5;
      if (v22 == v24)
      {

        return;
      }
    }

    goto LABEL_24;
  }

LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
}

Swift::Void __swiftcall CKDeviceCapability.encode(with:)(NSCoder with)
{
  v2 = (v1 + OBJC_IVAR___CKDeviceCapability__wrapped);
  if (!*(v1 + OBJC_IVAR___CKDeviceCapability__wrapped + 16))
  {
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    return;
  }

  v4 = *v2;
  v5 = NSStringFromSelector(sel_level);
  if (!v5)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    MEMORY[0x18CFD5010](v6);
    sub_1883FD9FC();
  }

  [(objc_class *)with.super.isa encodeInteger:v4 + 1 forKey:v5];

  v7 = v2[2];
  if (!v7)
  {
    goto LABEL_14;
  }

  v8 = v2[1];

  MEMORY[0x18CFD5010](v8, v7);
  sub_1883FD9FC();

  v9 = NSStringFromSelector(sel_name);
  if (!v9)
  {
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    MEMORY[0x18CFD5010](v10);
    sub_18840370C();
  }

  [(objc_class *)with.super.isa encodeObject:v8 forKey:v9];

  if (!v2[2])
  {
    goto LABEL_15;
  }

  v11 = v2[3];
  v12 = v2[4];

  MEMORY[0x18CFD5010](v11, v12);
  sub_1883FD9FC();

  v13 = NSStringFromSelector(sel_value);
  if (!v13)
  {
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = MEMORY[0x18CFD5010](v14);

    v13 = v15;
  }

  v16 = v13;
  [(objc_class *)with.super.isa encodeObject:v11 forKey:?];
}

id CKDeviceCapability.init(coder:)(void *a1)
{
  v3 = &v1[OBJC_IVAR___CKDeviceCapability__wrapped];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  v3[4] = 0;
  v4 = NSStringFromSelector(sel_level);
  if (!v4)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    MEMORY[0x18CFD5010](v5);
    sub_18840370C();
  }

  v6 = [a1 decodeInt32ForKey_];

  v7 = v6 - 1;
  if (v7 >= 3)
  {
    goto LABEL_15;
  }

  v8 = NSStringFromSelector(sel_name);
  if (!v8)
  {
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    MEMORY[0x18CFD5010](v9);
    sub_18840370C();
  }

  v10 = [a1 decodeObjectForKey_];

  if (v10)
  {
    _bridgeAnyObjectToAny(_:)();
    v11 = swift_unknownObjectRelease();
  }

  else
  {
    v39 = 0;
    v40 = 0u;
  }

  v41 = v39;
  v42 = v40;
  if (!*(&v40 + 1))
  {

LABEL_22:
    sub_18840E840(&v41, &qword_1EA90DD10, &qword_1886F8770);
    goto LABEL_23;
  }

  if ((sub_188404F4C(v11, v12, v13, MEMORY[0x1E69E6158], v14, v15) & 1) == 0)
  {
LABEL_15:

LABEL_23:
    v36 = sub_1884406C8(*v3, v3[1], v3[2]);
    type metadata accessor for CKDeviceCapability(v36);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v16 = NSStringFromSelector(sel_value);
  if (!v16)
  {
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = MEMORY[0x18CFD5010](v17);
  }

  v18 = [a1 decodeObjectForKey_];

  if (v18)
  {
    _bridgeAnyObjectToAny(_:)();
    v19 = swift_unknownObjectRelease();
  }

  else
  {
    v39 = 0;
    v40 = 0u;
  }

  v41 = v39;
  v42 = v40;
  if (!*(&v40 + 1))
  {

    goto LABEL_22;
  }

  if ((sub_188404F4C(v19, v20, v21, MEMORY[0x1E69E6158], v22, v23) & 1) == 0)
  {

    goto LABEL_23;
  }

  String.init<A>(_:)();
  v41 = v38[1];
  String.init<A>(_:)();
  sub_188440388();
  v25 = v24;
  v27 = v26;

  sub_188440388();
  v29 = v28;
  v31 = v30;

  v32 = *v3;
  v33 = v3[1];
  v34 = v3[2];
  *v3 = v7;
  v3[1] = v25;
  v3[2] = v27;
  v3[3] = v29;
  v3[4] = v31;
  sub_1884406C8(v32, v33, v34);
  v38[0].receiver = v1;
  v38[0].super_class = CKDeviceCapability;
  v35 = [(objc_super *)v38 init];

  return v35;
}

uint64_t CKDeviceCapability.isEqual(_:)(uint64_t a1)
{
  v2 = sub_18847E0A0(a1, v106, &qword_1EA90DD10, &qword_1886F8770);
  if (!v107)
  {
    sub_18840E840(v106, &qword_1EA90DD10, &qword_1886F8770);
    goto LABEL_14;
  }

  type metadata accessor for CKDeviceCapability(v2);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_14:
    v29 = 0;
    return v29 & 1;
  }

  v3 = v105;
  v4 = *(v1 + OBJC_IVAR___CKDeviceCapability__wrapped);
  v5 = *(v1 + OBJC_IVAR___CKDeviceCapability__wrapped + 8);
  v7 = *(v1 + OBJC_IVAR___CKDeviceCapability__wrapped + 16);
  v6 = *(v1 + OBJC_IVAR___CKDeviceCapability__wrapped + 24);
  v8 = *(v1 + OBJC_IVAR___CKDeviceCapability__wrapped + 32);
  v9 = *&v105[OBJC_IVAR___CKDeviceCapability__wrapped];
  v10 = *&v105[OBJC_IVAR___CKDeviceCapability__wrapped + 8];
  v11 = *&v105[OBJC_IVAR___CKDeviceCapability__wrapped + 16];
  v12 = *&v105[OBJC_IVAR___CKDeviceCapability__wrapped + 24];
  v13 = *&v105[OBJC_IVAR___CKDeviceCapability__wrapped + 32];
  if (!v7)
  {
    v104 = 0;
    v33 = sub_1883F8788();
    sub_18847A544(v33, v34, 0, v35, v8);
    sub_1883F71E4();
    sub_18847A544(v36, v37, v38, v39, v40);

    if (!v11)
    {
      v41 = sub_1883F8788();
      sub_1884406C8(v41, v42, 0);
      v29 = 1;
      return v29 & 1;
    }

    goto LABEL_13;
  }

  if (!v11)
  {
    v43 = sub_1883F9BD4();
    v45 = v44;
    sub_18847A544(v43, v46, v47, v48, v49);
    sub_18847A544(v9, v10, 0, v12, v13);
    v50 = sub_1883F8788();
    sub_18847A544(v50, v51, v7, v45, v8);

    v104 = v7;

LABEL_13:
    v52 = sub_1883F8788();
    sub_1884406C8(v52, v53, v104);
    sub_1883F71E4();
    sub_1884406C8(v54, v55, v56);
    goto LABEL_14;
  }

  if (v9 != v4)
  {
    v14 = sub_1883F9BD4();
    v103 = v4;
    v16 = v15;
    sub_18847A544(v14, v17, v18, v19, v20);
    sub_1883F71E4();
    sub_18847A544(v21, v22, v23, v24, v25);
    sub_18847A544(v103, v5, v7, v16, v8);

    sub_1883F71E4();
  }

  else
  {
    v58 = v5 == v10 && v7 == v11;
    if (v58 || (v59 = *&v105[OBJC_IVAR___CKDeviceCapability__wrapped + 24], v60 = v6, v61 = _stringCompareWithSmolCheck(_:_:expecting:)(), v6 = v60, v12 = v59, v3 = v105, (v61 & 1) != 0))
    {
      if (v6 == v12 && v8 == v13)
      {
        v73 = sub_1883F9BD4();
        sub_18847A544(v73, v74, v75, v76, v77);
        sub_1883FA338();
        sub_18847A544(v78, v79, v80, v81, v82);
        sub_1883F8788();
        sub_1883F7BD8();
        sub_18847A544(v83, v84, v85, v86, v87);

        sub_1883FA338();
        sub_1884406C8(v88, v89, v90);
        v29 = 1;
      }

      else
      {
        v29 = _stringCompareWithSmolCheck(_:_:expecting:)();
        sub_1883F7BD8();
        sub_18847A544(v63, v64, v65, v66, v67);
        sub_18847A544(v9, v10, v11, v12, v13);
        sub_1883F7BD8();
        sub_18847A544(v68, v69, v70, v71, v72);

        sub_1884406C8(v9, v10, v11);
      }

      goto LABEL_8;
    }

    v91 = sub_1883F9BD4();
    v93 = v92;
    sub_18847A544(v91, v94, v95, v96, v97);
    sub_1883F71E4();
    sub_18847A544(v98, v99, v100, v101, v102);
    sub_18847A544(v4, v5, v7, v93, v8);

    sub_1883F71E4();
  }

  sub_1884406C8(v26, v27, v28);
  v29 = 0;
LABEL_8:

  sub_1883F7BD8();
  sub_1884406C8(v30, v31, v32);
  return v29 & 1;
}

uint64_t CKDeviceCapability.hash.getter()
{
  sub_18844E6FC(&qword_1EA90D7A0, &qword_1886F8778);
  sub_18847E04C();
  return Optional<A>.hashValue.getter();
}

char *CKDeviceCapability.description.getter()
{
  if (*&v0[OBJC_IVAR___CKDeviceCapability__wrapped + 16])
  {
    v8.super_class = CKDeviceCapability;

    v1 = objc_msgSendSuper2(&v8, sel_description);
    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = v3;

    v9 = v2;
    v10 = v4;
    MEMORY[0x18CFD5140](8250, 0xE200000000000000);
    v5 = String.init<A>(reflecting:)();
    MEMORY[0x18CFD5140](v5);

    return v9;
  }

  else
  {
    v11.receiver = v0;
    v11.super_class = CKDeviceCapability;
    v7 = objc_msgSendSuper2(&v11, sel_description);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1883F8B50();

    MEMORY[0x18CFD5140](0x6C696E203ALL, 0xE500000000000000);
    return v0;
  }
}

id sub_18847C5F4()
{
  v1 = v0;
  v2 = sub_18844E6FC(&unk_1EA90D7B0, &dword_1886F8780);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - v9;
  v11 = type metadata accessor for Date();
  sub_1883F90F4(v10, 1, 1, v11);
  v18 = 0;
  sub_18847E0A0(v10, v7, &unk_1EA90D7B0, &dword_1886F8780);
  sub_18847E0A0(v7, v4, &unk_1EA90D7B0, &dword_1886F8780);
  if (sub_1883F971C(v4, 1, v11) == 1)
  {
    sub_18840E840(v7, &unk_1EA90D7B0, &dword_1886F8780);
    sub_18840E840(v10, &unk_1EA90D7B0, &dword_1886F8780);
    v12 = 0;
    isa = 0;
  }

  else
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    sub_18840E840(v7, &unk_1EA90D7B0, &dword_1886F8780);
    sub_18840E840(v10, &unk_1EA90D7B0, &dword_1886F8780);
    (*(*(v11 - 8) + 8))(v4, v11);
    v12 = v18;
  }

  v14 = &v1[OBJC_IVAR___CKDeviceCapabilityCheckOptions__wrapped];
  *v14 = v12;
  *(v14 + 1) = isa;
  v17.receiver = v1;
  v17.super_class = CKDeviceCapabilityCheckOptions;
  return objc_msgSendSuper2(&v17, sel_init);
}

id CKDeviceCapabilityCheckOptions.init(excludeDevicesWithoutCapabilityCheckingSupport:excludeZoneAccessBefore:)(char a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  isa = 0;
  if (sub_1883F971C(a2, 1, v4) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    sub_1883F7930();
    (*(v6 + 8))(a2, v4);
  }

  v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithExcludeDevicesWithoutCapabilityCheckingSupport:a1 & 1 excludeZoneAccessBefore:isa];

  return v7;
}

void CKDeviceCapabilityCheckOptions.init(excludeDevicesWithoutCapabilityCheckingSupport:excludeZoneAccessBefore:)()
{
  sub_1883F8AF0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_18844E6FC(&unk_1EA90D7B0, &dword_1886F8780);
  v7 = sub_1883F8AE4(v6);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v26[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v26[-v11];
  *&v14 = MEMORY[0x1EEE9AC00](v13).n128_u64[0];
  v16 = &v26[-v15];
  v17 = [v1 init];
  sub_18847E0A0(v3, v16, &unk_1EA90D7B0, &dword_1886F8780);
  v27 = v5;
  sub_18847E0A0(v16, v12, &unk_1EA90D7B0, &dword_1886F8780);
  sub_18847E0A0(v12, v9, &unk_1EA90D7B0, &dword_1886F8780);
  v18 = type metadata accessor for Date();
  v19 = sub_1883F971C(v9, 1, v18);
  v20 = v17;
  if (v19 == 1)
  {
    v21 = v5 & 1;
    sub_18840E840(v3, &unk_1EA90D7B0, &dword_1886F8780);
    sub_18840E840(v12, &unk_1EA90D7B0, &dword_1886F8780);
    sub_18840E840(v16, &unk_1EA90D7B0, &dword_1886F8780);
    isa = 0;
  }

  else
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    sub_18840E840(v3, &unk_1EA90D7B0, &dword_1886F8780);
    sub_18840E840(v12, &unk_1EA90D7B0, &dword_1886F8780);
    sub_18840E840(v16, &unk_1EA90D7B0, &dword_1886F8780);
    sub_1883F7930();
    (*(v23 + 8))(v9, v18);
    v21 = v27;
  }

  v24 = &v20[OBJC_IVAR___CKDeviceCapabilityCheckOptions__wrapped];
  swift_beginAccess();
  v25 = *(v24 + 1);
  *v24 = v21;
  *(v24 + 1) = isa;

  sub_1883F8178();
}

uint64_t CKDeviceCapabilityCheckOptions.excludeZoneAccessBefore.getter()
{
  v1 = sub_18844E6FC(&unk_1EA90D7B0, &dword_1886F8780);
  v2 = sub_1883F8AE4(v1);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v11 - v3;
  v5 = v0 + OBJC_IVAR___CKDeviceCapabilityCheckOptions__wrapped;
  swift_beginAccess();
  if (*(v5 + 8))
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = type metadata accessor for Date();
  sub_1883F90F4(v4, v6, 1, v7);
  v8 = sub_1883F958C();
  sub_188412494(v8, v9);
  return swift_endAccess();
}

Swift::Void __swiftcall CKDeviceCapabilityCheckOptions.encode(with:)(NSCoder with)
{
  sub_1883F8AF0();
  v4 = v3;
  v5 = type metadata accessor for Date();
  sub_1883F70DC();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  sub_1883F8DE0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v19 - v10;
  v12 = (v1 + OBJC_IVAR___CKDeviceCapabilityCheckOptions__wrapped);
  sub_1883FE5A0(v1 + OBJC_IVAR___CKDeviceCapabilityCheckOptions__wrapped, &v20);
  v13 = *v12;
  v14 = NSStringFromSelector(sel_excludeDevicesWithoutCapabilityCheckingSupport);
  if (!v14)
  {
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = MEMORY[0x18CFD5010](v15);
  }

  [v4 encodeBool:v13 forKey:v14];

  swift_beginAccess();
  if (*(v12 + 1))
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v7 + 32))(v11, v2, v5);
    swift_endAccess();
    v16.super.isa = Date._bridgeToObjectiveC()().super.isa;
    v17 = NSStringFromSelector(sel_excludeZoneAccessBefore);
    if (!v17)
    {
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = MEMORY[0x18CFD5010](v18);
    }

    [v4 encodeObject:v16.super.isa forKey:v17];

    (*(v7 + 8))(v11, v5);
  }

  else
  {
    swift_endAccess();
  }

  sub_1883F8178();
}

void CKDeviceCapabilityCheckOptions.init(coder:)()
{
  sub_1883F8AF0();
  v2 = v0;
  v4 = v3;
  v5 = sub_18844E6FC(&unk_1EA90D7B0, &dword_1886F8780);
  v6 = sub_1883F8AE4(v5);
  MEMORY[0x1EEE9AC00](v6);
  sub_1883F8DE0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v33 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v33 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v34 = &v33 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v33 - v16;
  v18 = NSStringFromSelector(sel_excludeDevicesWithoutCapabilityCheckingSupport);
  if (!v18)
  {
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    MEMORY[0x18CFD5010](v19);
    sub_1883FD9FC();
  }

  v35 = [v4 decodeBoolForKey_];

  v20 = type metadata accessor for Date();
  sub_1883F90F4(v17, 1, 1, v20);
  v21 = NSStringFromSelector(sel_excludeZoneAccessBefore);
  if (!v21)
  {
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = MEMORY[0x18CFD5010](v22);
  }

  v23 = [v4 containsValueForKey_];

  if (v23)
  {
    v33 = v2;
    sub_1883F4C5C(0, &qword_1EA90D5D0, 0x1E695DF00);
    v24 = sub_1883F793C();
    v25 = NSStringFromSelector(v24);
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v26 = NSCoder.decodeObject<A>(of:forKey:)();

    if (!v26)
    {
      sub_18840E840(v17, &unk_1EA90D7B0, &dword_1886F8780);

      type metadata accessor for CKDeviceCapabilityCheckOptions(v32);
      swift_deallocPartialClassInstance();
      goto LABEL_12;
    }

    v27 = v34;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    sub_18840E840(v17, &unk_1EA90D7B0, &dword_1886F8780);
    sub_1883F90F4(v27, 0, 1, v20);
    sub_188412494(v27, v17);
    v2 = v33;
  }

  sub_18847E0A0(v17, v12, &unk_1EA90D7B0, &dword_1886F8780);
  v28 = v35;
  v37 = v35;
  sub_18847E0A0(v12, v9, &unk_1EA90D7B0, &dword_1886F8780);
  sub_18847E0A0(v9, v1, &unk_1EA90D7B0, &dword_1886F8780);
  if (sub_1883F971C(v1, 1, v20) == 1)
  {
    sub_18840E840(v9, &unk_1EA90D7B0, &dword_1886F8780);
    sub_18840E840(v12, &unk_1EA90D7B0, &dword_1886F8780);
    sub_18840E840(v17, &unk_1EA90D7B0, &dword_1886F8780);
    isa = 0;
  }

  else
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    sub_18840E840(v9, &unk_1EA90D7B0, &dword_1886F8780);
    sub_18840E840(v12, &unk_1EA90D7B0, &dword_1886F8780);
    sub_18840E840(v17, &unk_1EA90D7B0, &dword_1886F8780);
    sub_1883F7930();
    (*(v30 + 8))(v1, v20);
    v28 = v37;
  }

  v31 = &v2[OBJC_IVAR___CKDeviceCapabilityCheckOptions__wrapped];
  *v31 = v28;
  *(v31 + 1) = isa;
  v36.receiver = v2;
  v36.super_class = CKDeviceCapabilityCheckOptions;
  objc_msgSendSuper2(&v36, sel_init);

LABEL_12:
  sub_1883F8178();
}

void CKDeviceCapabilityCheckOptions.copy(with:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for CKDeviceCapabilityCheckOptions(a1);
  v5 = v2 + OBJC_IVAR___CKDeviceCapabilityCheckOptions__wrapped;
  sub_1883FE5A0(v5, v12);
  v6 = *(v5 + 8);
  v10 = *v5;
  v11 = v6;
  v7 = v6;
  CKDeviceCapabilityCheckOptions.init(_:)(v8, &v10);
  a2[3] = v4;
  *a2 = v9;
}

uint64_t CKDeviceCapabilityCheckOptions.isEqual(_:)(uint64_t a1)
{
  v2 = sub_18847E0A0(a1, v16, &qword_1EA90DD10, &qword_1886F8770);
  if (!v17)
  {
    sub_18840E840(v16, &qword_1EA90DD10, &qword_1886F8770);
    return 0;
  }

  type metadata accessor for CKDeviceCapabilityCheckOptions(v2);
  v3 = swift_dynamicCast();
  if (v3)
  {
    v4 = v15;
    v5 = (v1 + OBJC_IVAR___CKDeviceCapabilityCheckOptions__wrapped);
    v6 = sub_1883F7BE8(v3, v16);
    v7 = *v5;
    v8 = *(v5 + 1);
    v9 = &v15[OBJC_IVAR___CKDeviceCapabilityCheckOptions__wrapped];
    sub_1883F7BE8(v6, &v15);
    if (v7 != *v9)
    {
LABEL_4:

      return 0;
    }

    v11 = *(v9 + 1);
    if (v8)
    {
      if (!v11)
      {
        goto LABEL_4;
      }

      sub_1883F4C5C(0, &qword_1EA90D5D0, 0x1E695DF00);
      v12 = v8;
      v13 = v11;
      v14 = static NSObject.== infix(_:_:)();

      if ((v14 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {

      if (v11)
      {
        return 0;
      }
    }

    return 1;
  }

  return 0;
}

uint64_t sub_18847D714(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_OWORD *))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = a1;
  }

  v8 = a4(v10);

  sub_18840E840(v10, &qword_1EA90DD10, &qword_1886F8770);
  return v8 & 1;
}

Swift::Int CKDeviceCapabilityCheckOptions.hash.getter(uint64_t a1)
{
  v2 = v1 + OBJC_IVAR___CKDeviceCapabilityCheckOptions__wrapped;
  sub_1883F7BE8(a1, v7);
  v3 = *v2;
  v4 = *(v2 + 8);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v3);
  if (v4)
  {
    Hasher._combine(_:)(1u);
    v4 = v4;
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v5 = Hasher._finalize()();

  return v5;
}

uint64_t CKDeviceCapabilityCheckOptions.description.getter()
{
  v1 = v0;
  v12.super_class = CKDeviceCapabilityCheckOptions;
  v2 = objc_msgSendSuper2(&v12, sel_description);
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v13 = v3;
  v14 = v5;
  v6 = MEMORY[0x18CFD5140](8250, 0xE200000000000000);
  v7 = v1 + OBJC_IVAR___CKDeviceCapabilityCheckOptions__wrapped;
  sub_1883F7BE8(v6, v11);
  v8 = *(v7 + 8);
  v9 = String.init<A>(reflecting:)();
  MEMORY[0x18CFD5140](v9);

  return v13;
}

id sub_18847D978()
{
  *(v0 + OBJC_IVAR___CKDeviceCapabilityCheckResult__wrapped) = 2;
  v2.super_class = CKDeviceCapabilityCheckResult;
  return objc_msgSendSuper2(&v2, sel_init);
}

void __swiftcall CKDeviceCapabilityCheckResult.init(isSupported:)(CKDeviceCapabilityCheckResult *__return_ptr retstr, Swift::Bool isSupported)
{
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v3 initWithIsSupported_];
}

_BYTE *CKDeviceCapabilityCheckResult.init(isSupported:)(char a1)
{
  result = [v1 init];
  result[OBJC_IVAR___CKDeviceCapabilityCheckResult__wrapped] = a1;
  return result;
}

Swift::Void __swiftcall CKDeviceCapabilityCheckResult.encode(with:)(NSCoder with)
{
  v3 = [v1 isSupported];
  v4 = NSStringFromSelector(sel_isSupported);
  if (!v4)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = MEMORY[0x18CFD5010](v5);

    v4 = v6;
  }

  v7 = v4;
  [(objc_class *)with.super.isa encodeBool:v3 forKey:?];
}

id _sSo18CKDeviceCapabilityC8CloudKitE5coderABSgSo7NSCoderC_tcfC_0()
{
  sub_1883F793C();
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  return v1;
}