uint64_t sub_1AC656678(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  if (a1)
  {
    v4 = a1;
  }

  else
  {
    sub_1AC5CF764(0, &qword_1EB56AAA0, 0x1E696AD98);
    v4 = sub_1AC79FE38();
  }

  a3(v4);
}

uint64_t sub_1AC656714(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_1AC5CF764(0, &qword_1EB56AAA0, 0x1E696AD98);
    v4 = sub_1AC79FE28();
  }

  v6 = a3;
  v5(v4, a3);
}

void sub_1AC6567FC(uint64_t a1, uint64_t a2)
{
  sub_1AC5CF764(0, &qword_1EB56AAA0, 0x1E696AD98);
  v3 = sub_1AC79FE18();
  (*(a2 + 16))(a2, v3);
}

void sub_1AC656888()
{
  OUTLINED_FUNCTION_78_0();
  OUTLINED_FUNCTION_99();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0;
  v4[4] = sub_1AC6587B8;
  v4[5] = v2;
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_31_4();
  v4[2] = sub_1AC6569B8;
  v4[3] = &block_descriptor_2;
  _Block_copy(v4);
  OUTLINED_FUNCTION_30_2();

  OUTLINED_FUNCTION_38_4(v3, sel_getRecognitionUtteranceStatisticsWithCompletionWithError_);
  _Block_release(v1);
}

uint64_t sub_1AC656930(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  if (a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = sub_1AC79FE38();
  }

  a3(v4);
}

uint64_t sub_1AC6569B8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_1AC79FE28();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

uint64_t sub_1AC656A8C(void *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v9 = _Block_copy(aBlock);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = a1;
  a6(a5, v10);
}

void sub_1AC656B20(uint64_t a1, uint64_t a2)
{
  v3 = sub_1AC79FE18();
  (*(a2 + 16))(a2, v3);
}

void sub_1AC656BA0()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR___SFSpeechAnalyzer__implementation);
  *(v0 + 24) = v1;
  if (v1)
  {
    OUTLINED_FUNCTION_85();
    v3 = v2;
    v4 = OUTLINED_FUNCTION_32_4();
    v5 = OUTLINED_FUNCTION_55(v4);
    *v5 = v6;
    OUTLINED_FUNCTION_9_5(v5);

    sub_1AC739CFC();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1AC656C40()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_15_3();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_18();
  *v6 = v5;
  *(v3 + 40) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_33();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    v10 = OUTLINED_FUNCTION_20_4();

    return v11(v10);
  }
}

uint64_t sub_1AC656D88(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1AC656E30;

  return sub_1AC656B8C();
}

uint64_t sub_1AC656E30()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v6 = *(v5 + 24);
  v7 = *(v5 + 16);
  v8 = *v1;
  OUTLINED_FUNCTION_18();
  *v9 = v8;

  if (v0)
  {
    if (v6)
    {
      v10 = v3[3];
      sub_1AC79F738();

      v11 = OUTLINED_FUNCTION_8_4();
      v12(v11);
      v13 = v10;
LABEL_6:
      _Block_release(v13);

      goto LABEL_9;
    }
  }

  else
  {
    if (v6)
    {
      v14 = v3[3];
      sub_1AC7A0438();
      OUTLINED_FUNCTION_29_5();

      v15 = OUTLINED_FUNCTION_7_5();
      v16(v15);
      v13 = v14;
      goto LABEL_6;
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_149_0();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24);
}

void sub_1AC656FE0()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR___SFSpeechAnalyzer__implementation);
  *(v0 + 24) = v1;
  if (v1)
  {
    OUTLINED_FUNCTION_85();
    v3 = v2;
    v4 = OUTLINED_FUNCTION_32_4();
    v5 = OUTLINED_FUNCTION_55(v4);
    *v5 = v6;
    OUTLINED_FUNCTION_9_5(v5);

    sub_1AC73A140();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1AC657080()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_18();
  *v6 = v5;
  *(v3 + 40) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_149_0();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_149_0();

    return v14(v11, v12, v13, v14, v15, v16, v17, v18);
  }
}

uint64_t sub_1AC6571E8(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1AC657290;

  return sub_1AC656FCC();
}

uint64_t sub_1AC657290()
{
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_15_3();
  v4 = v3;
  OUTLINED_FUNCTION_19();
  *v5 = v4;
  v7 = *(v6 + 24);
  v8 = *(v6 + 16);
  v9 = *v2;
  OUTLINED_FUNCTION_18();
  *v10 = v9;

  if (v0)
  {
    if (v7)
    {
      v11 = *(v4 + 24);
      sub_1AC79F738();

      v12 = OUTLINED_FUNCTION_8_4();
      v13(v12);
      v14 = v11;
LABEL_6:
      _Block_release(v14);

      goto LABEL_9;
    }
  }

  else
  {
    if (v7)
    {
      v15 = *(v4 + 24);
      sub_1AC79FF58();
      OUTLINED_FUNCTION_29_5();

      v16 = OUTLINED_FUNCTION_7_5();
      v17(v16);
      v14 = v15;
      goto LABEL_6;
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_44();

  return v18();
}

void sub_1AC65743C()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR___SFSpeechAnalyzer__implementation);
  *(v0 + 24) = v1;
  if (v1)
  {
    OUTLINED_FUNCTION_85();
    v3 = v2;
    v4 = OUTLINED_FUNCTION_32_4();
    v5 = OUTLINED_FUNCTION_55(v4);
    *v5 = v6;
    OUTLINED_FUNCTION_9_5(v5);

    sub_1AC73A3E8();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1AC6574DC()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_15_3();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_18();
  *v6 = v5;
  *(v3 + 40) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_33();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    v10 = OUTLINED_FUNCTION_20_4();

    return v11(v10);
  }
}

uint64_t sub_1AC657624(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1AC6576CC;

  return sub_1AC657428();
}

uint64_t sub_1AC6576CC()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v6 = *(v5 + 24);
  v7 = *(v5 + 16);
  v8 = *v1;
  OUTLINED_FUNCTION_18();
  *v9 = v8;

  if (v0)
  {
    if (v6)
    {
      v10 = v3[3];
      sub_1AC79F738();

      v11 = OUTLINED_FUNCTION_8_4();
      v12(v11);
      v13 = v10;
LABEL_6:
      _Block_release(v13);

      goto LABEL_9;
    }
  }

  else
  {
    if (v6)
    {
      v14 = v3[3];
      sub_1AC5CF764(0, &qword_1EB56AAA0, 0x1E696AD98);
      sub_1AC79FE18();
      OUTLINED_FUNCTION_29_5();

      v15 = OUTLINED_FUNCTION_7_5();
      v16(v15);
      v13 = v14;
      goto LABEL_6;
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_149_0();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24);
}

void sub_1AC657898()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR___SFSpeechAnalyzer__implementation);
  *(v0 + 24) = v1;
  if (v1)
  {
    OUTLINED_FUNCTION_85();
    v3 = v2;
    v4 = OUTLINED_FUNCTION_32_4();
    v5 = OUTLINED_FUNCTION_55(v4);
    *v5 = v6;
    OUTLINED_FUNCTION_9_5(v5);

    sub_1AC73A650();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1AC657958(void *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5)
{
  v6 = _Block_copy(aBlock);
  OUTLINED_FUNCTION_99();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = a1;
  v8 = a1;

  return sub_1AC72CEC8();
}

uint64_t sub_1AC6579C4(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1AC657A6C;

  return sub_1AC657884();
}

uint64_t sub_1AC657A6C()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v6 = *(v5 + 24);
  v7 = *(v5 + 16);
  v8 = *v1;
  OUTLINED_FUNCTION_18();
  *v9 = v8;

  if (v0)
  {
    if (v6)
    {
      v10 = v3[3];
      sub_1AC79F738();

      v11 = OUTLINED_FUNCTION_8_4();
      v12(v11);
      v13 = v10;
LABEL_6:
      _Block_release(v13);

      goto LABEL_9;
    }
  }

  else
  {
    if (v6)
    {
      v14 = v3[3];
      sub_1AC79FE18();
      OUTLINED_FUNCTION_29_5();

      v15 = OUTLINED_FUNCTION_7_5();
      v16(v15);
      v13 = v14;
      goto LABEL_6;
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_149_0();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24);
}

uint64_t sub_1AC657C0C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_2_1();
}

void sub_1AC657C20()
{
  v1 = *(v0[3] + OBJC_IVAR___SFSpeechAnalyzer__implementation);
  v0[4] = v1;
  if (v1)
  {
    OUTLINED_FUNCTION_85();
    v3 = v2;
    v4 = OUTLINED_FUNCTION_32_4();
    v0[5] = v4;
    *v4 = v0;
    v4[1] = sub_1AC657CCC;
    v5 = OUTLINED_FUNCTION_31_0(v0[2]);

    sub_1AC73AD00(v5);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1AC657CCC()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_18();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1AC657DEC, 0, 0);
  }

  else
  {

    OUTLINED_FUNCTION_44();

    return v7();
  }
}

uint64_t sub_1AC657DEC()
{
  OUTLINED_FUNCTION_85();

  OUTLINED_FUNCTION_44();

  return v1();
}

uint64_t sub_1AC657ED0(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1AC657F90;

  return sub_1AC657C0C(a1);
}

uint64_t sub_1AC657F90()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v6 = v5[4];
  v7 = v5[3];
  v8 = v5[2];
  v9 = *v1;
  OUTLINED_FUNCTION_18();
  *v10 = v9;

  if (v0)
  {
    if (v6)
    {
      v11 = *(v3 + 32);
      sub_1AC79F738();

      v12 = OUTLINED_FUNCTION_7_5();
      v13(v12);
      _Block_release(v11);
    }

    else
    {
    }
  }

  else if (v6)
  {
    v14 = *(v3 + 32);
    v15 = OUTLINED_FUNCTION_8_4();
    v16(v15);
    _Block_release(v14);
  }

  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_149_0();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24);
}

uint64_t sub_1AC658128()
{
  OUTLINED_FUNCTION_85();
  if (qword_1ED9373D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED938600;
  *(v0 + 16) = qword_1ED938600;

  return MEMORY[0x1EEE6DFA0](sub_1AC6581BC, v1, 0);
}

uint64_t sub_1AC6581BC()
{
  OUTLINED_FUNCTION_85();
  sub_1AC680770();

  OUTLINED_FUNCTION_44();

  return v0();
}

uint64_t sub_1AC658284(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1AC658318;

  return sub_1AC65810C();
}

uint64_t sub_1AC658318()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v2 = v1;
  OUTLINED_FUNCTION_19();
  *v3 = v2;
  v5 = *(v4 + 16);
  v6 = *v0;
  OUTLINED_FUNCTION_18();
  *v7 = v6;

  if (v5)
  {
    v8 = *(v2 + 16);
    v8[2](v8);
    _Block_release(v8);
  }

  OUTLINED_FUNCTION_44();

  return v9();
}

id sub_1AC658428()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_1AC6584C8()
{
  OUTLINED_FUNCTION_72();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_64_0(v3);
  *v4 = v5;
  v4[1] = sub_1AC5C4D48;
  v6 = OUTLINED_FUNCTION_16_5();

  return v7(v6, v1, v2);
}

uint64_t sub_1AC658570()
{
  OUTLINED_FUNCTION_72();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_64_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_6(v1);

  return v4(v3);
}

uint64_t sub_1AC658600()
{
  OUTLINED_FUNCTION_72();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_64_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_6(v1);

  return v4(v3);
}

uint64_t sub_1AC658690()
{
  OUTLINED_FUNCTION_72();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_64_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_6(v1);

  return v4(v3);
}

uint64_t sub_1AC658720()
{
  OUTLINED_FUNCTION_72();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_64_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_6(v1);

  return v4(v3);
}

uint64_t sub_1AC6587F0()
{
  OUTLINED_FUNCTION_72();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_64_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_6(v1);

  return v4(v3);
}

uint64_t sub_1AC658880()
{
  OUTLINED_FUNCTION_45();
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_64_0(v5);
  *v6 = v7;
  v6[1] = sub_1AC5C4D48;
  v8 = OUTLINED_FUNCTION_16_5();

  return v9(v8, v1, v2, v3, v4);
}

uint64_t sub_1AC65893C()
{
  OUTLINED_FUNCTION_72();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_64_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_6(v1);

  return v4(v3);
}

uint64_t sub_1AC6589CC()
{
  OUTLINED_FUNCTION_72();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_64_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_6(v1);

  return v4(v3);
}

uint64_t sub_1AC658A5C()
{
  OUTLINED_FUNCTION_72();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_64_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_6(v1);

  return v4(v3);
}

uint64_t sub_1AC658AEC()
{
  OUTLINED_FUNCTION_72();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_64_0(v3);
  *v4 = v5;
  v4[1] = sub_1AC5C4D48;
  v6 = OUTLINED_FUNCTION_16_5();

  return v7(v6, v1, v2);
}

uint64_t objectdestroy_10Tm()
{
  _Block_release(*(v0 + 16));

  OUTLINED_FUNCTION_99();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1AC658BD8()
{
  OUTLINED_FUNCTION_72();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_64_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_6(v1);

  return v4(v3);
}

uint64_t sub_1AC658C68()
{
  OUTLINED_FUNCTION_72();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_64_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_6(v1);

  return v4(v3);
}

uint64_t sub_1AC658D00(uint64_t a1)
{
  sub_1AC79F7F8();
  v11 = *(v1 + 16);
  v3 = *(v1 + 32);
  v10 = *(v1 + 24);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1AC5C5380;

  return sub_1AC6518CC(a1, v11, v10, v3, v4, v5, v6, v7);
}

uint64_t OUTLINED_FUNCTION_30_2()
{
}

uint64_t OUTLINED_FUNCTION_32_4()
{

  return swift_task_alloc();
}

uint64_t sub_1AC658F90(uint64_t a1)
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

  result = sub_1AC6A8728(result, 1);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = *(v6 + 16);
  if ((*(v6 + 24) >> 1) - v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  memcpy((v6 + 24 * v7 + 32), (a1 + 32), 24 * v3);

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v8 = *(v6 + 16);
  v9 = __OFADD__(v8, v3);
  v10 = v8 + v3;
  if (!v9)
  {
    *(v6 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1AC659050(uint64_t a1)
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

  sub_1AC6A8740(result, 1);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v6 + 24) >> 1) - *(v6 + 16);
  result = sub_1AC79F5C8();
  if (v7 < v3)
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

  v8 = *(v6 + 16);
  v9 = __OFADD__(v8, v3);
  v10 = v8 + v3;
  if (!v9)
  {
    *(v6 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1AC659150(uint64_t a1)
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

  result = sub_1AC6A8770(result, 1);
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BF80, &qword_1AC7A8390);
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

uint64_t sub_1AC65922C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(a1 + 16);
  v5 = *(*v2 + 16);
  result = v5 + v4;
  if (__OFADD__(v5, v4))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = a2(result, 1);
  v7 = *v2;
  if (!*(a1 + 16))
  {

    if (!v4)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v7 + 24) >> 1) - *(v7 + 16) < v4)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = OUTLINED_FUNCTION_171();
  __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_8:
    *v2 = v7;
    return result;
  }

  v10 = *(v7 + 16);
  v11 = __OFADD__(v10, v4);
  v12 = v10 + v4;
  if (!v11)
  {
    *(v7 + 16) = v12;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1AC659310(uint64_t a1)
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

  result = sub_1AC6A87A0(result, 1);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = *(v6 + 16);
  if ((*(v6 + 24) >> 1) - v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  memcpy((v6 + 48 * v7 + 32), (a1 + 32), 48 * v3);

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v8 = *(v6 + 16);
  v9 = __OFADD__(v8, v3);
  v10 = v8 + v3;
  if (!v9)
  {
    *(v6 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

void sub_1AC6593D0(uint64_t result, uint64_t a2)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_10;
  }

  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1AC6A87B8(v6 + v4, 1);
  v2 = *v3;
  v8 = *(*v3 + 16);
  v9 = (*(*v3 + 24) >> 1) - v8;
  v10 = sub_1AC61B78C(&v26, *v3 + 8 * v8 + 32, v9, result, a2);
  if (v10 < v4)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v10 >= 1)
  {
    v11 = *(v2 + 16);
    v12 = __OFADD__(v11, v10);
    v13 = v11 + v10;
    if (v12)
    {
      __break(1u);
LABEL_30:
      *(v2 + 16) = v13 + 1;
      goto LABEL_8;
    }

    *(v2 + 16) = v13;
  }

  if (v10 != v9)
  {
LABEL_8:
    *v3 = v2;
    return;
  }

LABEL_12:
  v14 = v27;
  v15 = v28;
  if (v28 == v27)
  {
    goto LABEL_8;
  }

  v16 = v26;
  if (v27 < v26)
  {
    goto LABEL_31;
  }

  if (v28 < v26)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (v28 < v27)
  {
    v13 = *(v2 + 16);
    v17 = v28 + 1;
LABEL_17:
    v18 = *(v2 + 24);
    v19 = v18 >> 1;
    if ((v18 >> 1) < v13 + 1)
    {
      v22 = v2;
      v23 = v13;
      v24 = v17;
      sub_1AC60ED68(v18 > 1, v13 + 1, 1, v22);
      v17 = v24;
      v13 = v23;
      v2 = v25;
      v19 = *(v25 + 24) >> 1;
    }

    for (i = v17; ; ++i)
    {
      if (v13 >= v19)
      {
        *(v2 + 16) = v13;
        v17 = i;
        goto LABEL_17;
      }

      *(v2 + 8 * v13 + 32) = v15;
      if (v14 == i)
      {
        goto LABEL_30;
      }

      if (v17 < v16 || i >= v14)
      {
        break;
      }

      v15 = i;
      ++v13;
    }

    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

LABEL_33:
  __break(1u);
}

uint64_t sub_1AC65956C@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = sub_1AC79FB18();
  OUTLINED_FUNCTION_40();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_6();
  v11 = v10 - v9;
  v12 = 0;
  v13 = *(a2 + 16);
  while (1)
  {
    if (v13 == v12)
    {
      v18 = 1;
      v19 = a3;
      return __swift_storeEnumTagSinglePayload(v19, v18, 1, v5);
    }

    OUTLINED_FUNCTION_89_0();
    (*(v7 + 16))(v11, a2 + v14 + *(v7 + 72) * v12, v5);
    v15 = a1(v11);
    if (v3)
    {
      v20 = OUTLINED_FUNCTION_614();
      return v21(v20);
    }

    if (v15)
    {
      break;
    }

    v16 = OUTLINED_FUNCTION_614();
    v17(v16);
    ++v12;
  }

  v19 = a3;
  (*(v7 + 32))(a3, v11, v5);
  v18 = 0;
  return __swift_storeEnumTagSinglePayload(v19, v18, 1, v5);
}

uint64_t sub_1AC659708@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v17 = a3;
  v6 = type metadata accessor for SpeechRecognizerSupportedFeatures(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 0;
  v11 = *(a2 + 16);
  while (1)
  {
    if (v11 == v10)
    {
      v13 = 1;
      v14 = v17;
      return __swift_storeEnumTagSinglePayload(v14, v13, 1, v6);
    }

    sub_1AC68A130(a2 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v10, v9);
    v12 = a1(v9);
    if (v3)
    {
      return sub_1AC68A2BC();
    }

    if (v12)
    {
      break;
    }

    sub_1AC68A2BC();
    ++v10;
  }

  v14 = v17;
  sub_1AC61B988(v9, v17);
  v13 = 0;
  return __swift_storeEnumTagSinglePayload(v14, v13, 1, v6);
}

void *sub_1AC6598AC(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1AC7A08A8();
    type metadata accessor for SpeechRecognizerWorker(0);
    sub_1AC68A730(&qword_1EB56B418, type metadata accessor for SpeechRecognizerWorker);
    result = sub_1AC7A0488();
    v5 = v22;
    v7 = v23;
    v8 = v24;
    v9 = v25;
    v10 = v26;
  }

  else
  {
    v11 = -1 << *(a3 + 32);
    v7 = a3 + 56;
    v8 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = v13 & *(a3 + 56);

    v9 = 0;
  }

  v21 = v5;
  if (v5 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v14 = v9;
  v15 = v10;
  v16 = v9;
  if (v10)
  {
LABEL_12:
    v17 = (v15 - 1) & v15;
    v18 = *(*(v5 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));

    if (v18)
    {
      while (1)
      {
        v27 = v18;
        v19 = a1(&v27);
        if (v4)
        {
          break;
        }

        if (v19)
        {
          goto LABEL_23;
        }

        v9 = v16;
        v10 = v17;
        v5 = v21;
        if ((v21 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (!sub_1AC7A0918())
        {
          goto LABEL_20;
        }

        type metadata accessor for SpeechRecognizerWorker(0);
        swift_dynamicCast();
        v18 = v27;
        v16 = v9;
        v17 = v10;
        if (!v27)
        {
          goto LABEL_21;
        }
      }

LABEL_23:
      sub_1AC5CA508(v21);
    }

    else
    {
LABEL_21:
      v5 = v21;
LABEL_20:
      sub_1AC5CA508(v5);
      return 0;
    }

    return v18;
  }

  else
  {
    while (1)
    {
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v16 >= ((v8 + 64) >> 6))
      {
        goto LABEL_20;
      }

      v15 = *(v7 + 8 * v16);
      ++v14;
      if (v15)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1AC659B08()
{
  OUTLINED_FUNCTION_104();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = OUTLINED_FUNCTION_289();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  OUTLINED_FUNCTION_167(v11);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_437();
  v13 = OUTLINED_FUNCTION_509();
  sub_1AC68A3F8(v13, v14, &qword_1EB56BE70, &qword_1AC7A8270);
  v15 = sub_1AC7A0288();
  v16 = OUTLINED_FUNCTION_55_2();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v16, v17, v15);

  if (EnumTagSinglePayload == 1)
  {
    sub_1AC5C9624(v0, &qword_1EB56BE70, &qword_1AC7A8270);
  }

  else
  {
    sub_1AC7A0278();
    OUTLINED_FUNCTION_106();
    v19 = OUTLINED_FUNCTION_198();
    v20(v19);
  }

  v21 = *(v2 + 16);
  swift_unknownObjectRetain();

  if (!v21)
  {
    if (v8)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_1AC5C9624(v6, &qword_1EB56BE70, &qword_1AC7A8270);
    OUTLINED_FUNCTION_99();
    v23 = swift_allocObject();
    *(v23 + 16) = v4;
    *(v23 + 24) = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C7F8, &qword_1AC7AAB38);
    swift_task_create();
    goto LABEL_9;
  }

  swift_getObjectType();
  sub_1AC7A01B8();
  swift_unknownObjectRelease();
  if (!v8)
  {
    goto LABEL_8;
  }

LABEL_6:
  OUTLINED_FUNCTION_360();
  sub_1AC7A0018();
  OUTLINED_FUNCTION_99();
  v22 = swift_allocObject();
  *(v22 + 16) = v4;
  *(v22 + 24) = v2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C7F8, &qword_1AC7AAB38);
  swift_task_create();
  OUTLINED_FUNCTION_86();

  sub_1AC5C9624(v6, &qword_1EB56BE70, &qword_1AC7A8270);

LABEL_9:
  OUTLINED_FUNCTION_339();
  OUTLINED_FUNCTION_105();
}

void sub_1AC659DBC()
{
  OUTLINED_FUNCTION_104();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270);
  OUTLINED_FUNCTION_167(v9);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_437();
  v11 = OUTLINED_FUNCTION_509();
  sub_1AC68A3F8(v11, v12, &qword_1EB56BE70, &qword_1AC7A8270);
  v13 = sub_1AC7A0288();
  v14 = OUTLINED_FUNCTION_55_2();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v14, v15, v13);

  if (EnumTagSinglePayload == 1)
  {
    sub_1AC5C9624(v0, &qword_1EB56BE70, &qword_1AC7A8270);
  }

  else
  {
    sub_1AC7A0278();
    OUTLINED_FUNCTION_106();
    (*(v17 + 8))(v0, v13);
  }

  v18 = *(v2 + 16);
  swift_unknownObjectRetain();

  if (!v18)
  {
    if (v8)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_1AC5C9624(v6, &qword_1EB56BE70, &qword_1AC7A8270);
    OUTLINED_FUNCTION_99();
    v20 = swift_allocObject();
    *(v20 + 16) = v4;
    *(v20 + 24) = v2;
    swift_task_create();
    goto LABEL_9;
  }

  swift_getObjectType();
  sub_1AC7A01B8();
  swift_unknownObjectRelease();
  if (!v8)
  {
    goto LABEL_8;
  }

LABEL_6:
  OUTLINED_FUNCTION_360();
  sub_1AC7A0018();
  OUTLINED_FUNCTION_99();
  v19 = swift_allocObject();
  *(v19 + 16) = v4;
  *(v19 + 24) = v2;

  swift_task_create();

  sub_1AC5C9624(v6, &qword_1EB56BE70, &qword_1AC7A8270);

LABEL_9:
  OUTLINED_FUNCTION_339();
  OUTLINED_FUNCTION_105();
}

uint64_t sub_1AC65A080()
{
  OUTLINED_FUNCTION_85();
  if (qword_1ED9373D0 != -1)
  {
    OUTLINED_FUNCTION_14_2(&qword_1ED9373D0);
  }

  v1 = qword_1ED938600;
  *(v0 + 16) = qword_1ED938600;

  return MEMORY[0x1EEE6DFA0](sub_1AC6581BC, v1, 0);
}

uint64_t SpeechAnalyzer.__allocating_init(modules:options:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C7D0, &qword_1AC7ACB40);
  OUTLINED_FUNCTION_167(v5);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_602();
  v7 = type metadata accessor for ClientInfo(0);
  OUTLINED_FUNCTION_80();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_6();
  v11 = v10 - v9;
  if (qword_1EB56B598 != -1)
  {
    OUTLINED_FUNCTION_4_1(&qword_1EB56B598);
  }

  __swift_project_value_buffer(v7, qword_1EB56E830);
  OUTLINED_FUNCTION_7_6();
  sub_1AC68A130(v12, v11);
  sub_1AC68A3F8(a2, v2, &qword_1EB56C7D0, &qword_1AC7ACB40);
  v13 = swift_allocObject();
  SpeechAnalyzer.init(client:modules:options:)(v11, a1, v2);
  sub_1AC5C9624(a2, &qword_1EB56C7D0, &qword_1AC7ACB40);
  return v13;
}

uint64_t SpeechAnalyzer.__allocating_init(client:modules:options:)(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_203_0();
  SpeechAnalyzer.init(client:modules:options:)(v2, v3, v4);
  return v1;
}

uint64_t SpeechAnalyzer.init(client:modules:options:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  OUTLINED_FUNCTION_108_0();
  swift_defaultActor_initialize();
  *(v5 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_pendingNewModules) = 0;
  *(v5 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_internalModules) = MEMORY[0x1E69E7CC0];
  *(v5 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_inputTask) = 0;
  *(v5 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_isRunningInputLoop) = 0;
  OUTLINED_FUNCTION_220(v5 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_latestInputBufferRange);
  OUTLINED_FUNCTION_472(v5 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_latestInputSampleTime);
  *(v5 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_isInputFinished) = 0;
  *(v5 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_didFinishInputHandlers) = v8;
  *(v5 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_inputBarriers) = v8;
  *(v5 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_isFinished) = 0;
  OUTLINED_FUNCTION_471((v5 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_internalVolatileRange), v9);
  v10 = (v5 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_didChangeVolatileRange);
  *v10 = 0;
  v10[1] = 0;
  *(v5 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_volatileRangeBarriers) = v11;
  v12 = v5 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_updatedContext;
  *v12 = 0;
  *(v12 + 8) = 0;
  sub_1AC68A130(v4, v5 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_clientInfo);
  sub_1AC68A130(v4, v5 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_currentClientInfo);
  sub_1AC68A3F8(a3, v5 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_options, &qword_1EB56C7D0, &qword_1AC7ACB40);
  *(v5 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_pendingNewModules) = a2;

  type metadata accessor for AnalysisContext();
  swift_allocObject();
  v13 = AnalysisContext.init()();
  *(v5 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_internalContext) = v13;

  OUTLINED_FUNCTION_38_5();
  sub_1AC6877BC(v14, v13, v15);

  v16 = OUTLINED_FUNCTION_88_0();
  sub_1AC5C9624(v16, v17, &qword_1AC7ACB40);
  OUTLINED_FUNCTION_3_7();
  sub_1AC68A2BC();
  return v5;
}

void SpeechAnalyzer.__allocating_init<A>(inputSequence:modules:options:analysisContext:volatileRangeChangedHandler:)()
{
  OUTLINED_FUNCTION_104();
  v32 = v2;
  v30 = v3;
  v31 = v4;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v33 = v11;
  v13 = v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C7D0, &qword_1AC7ACB40);
  OUTLINED_FUNCTION_167(v14);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_234();
  OUTLINED_FUNCTION_44_4();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_6();
  v21 = v20 - v19;
  v22 = type metadata accessor for ClientInfo(0);
  OUTLINED_FUNCTION_80();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_437();
  sub_1AC5D9374(v10, v8);
  if (qword_1EB56B598 != -1)
  {
    OUTLINED_FUNCTION_4_1(&qword_1EB56B598);
  }

  __swift_project_value_buffer(v22, qword_1EB56E830);
  OUTLINED_FUNCTION_7_6();
  sub_1AC68A130(v24, v0);
  OUTLINED_FUNCTION_504();
  v25(v21, v13, v6);
  sub_1AC68A3F8(v33, v1, &qword_1EB56C7D0, &qword_1AC7ACB40);
  SpeechAnalyzer.__allocating_init<A>(client:inputSequence:modules:options:analysisContext:volatileRangeChangedHandler:)(v0, v21, v30, v1, v32, v10, v8, v6, v31);
  v26 = OUTLINED_FUNCTION_142();
  sub_1AC5C3958(v26, v27);
  v28 = OUTLINED_FUNCTION_289();
  sub_1AC5C9624(v28, v29, &qword_1AC7ACB40);
  (*(v17 + 8))(v13, v6);
  OUTLINED_FUNCTION_339();
  OUTLINED_FUNCTION_105();
}

uint64_t SpeechAnalyzer.__allocating_init<A>(client:inputSequence:modules:options:analysisContext:volatileRangeChangedHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = OUTLINED_FUNCTION_377();
  SpeechAnalyzer.init<A>(client:inputSequence:modules:options:analysisContext:volatileRangeChangedHandler:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, vars0);
  return v17;
}

void SpeechAnalyzer.init<A>(client:inputSequence:modules:options:analysisContext:volatileRangeChangedHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_104();
  v24 = v23;
  v26 = v25;
  v102 = v28;
  v103 = v27;
  v30 = v29;
  v93 = v31;
  v33 = v32;
  OUTLINED_FUNCTION_44_4();
  v98 = v35;
  v99 = v34;
  v97 = a21;
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_596();
  v95 = v38;
  v96 = v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C7D0, &qword_1AC7ACB40);
  OUTLINED_FUNCTION_167(v39);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_602();
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270);
  v42 = OUTLINED_FUNCTION_167(v41);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_5();
  v100 = v43 - v44;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v89 - v46;
  v48 = sub_1AC7A0288();
  OUTLINED_FUNCTION_40();
  v50 = v49;
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_597();
  v94 = v52;
  v92 = v53;
  MEMORY[0x1EEE9AC00](v54);
  v104 = &v89 - v55;
  v101 = v26;
  v56 = OUTLINED_FUNCTION_124_0();
  sub_1AC5D9374(v56, v57);
  swift_defaultActor_initialize();
  *(v21 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_pendingNewModules) = 0;
  *(v21 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_internalModules) = MEMORY[0x1E69E7CC0];
  *(v21 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_inputTask) = 0;
  *(v21 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_isRunningInputLoop) = 0;
  OUTLINED_FUNCTION_220(v21 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_latestInputBufferRange);
  OUTLINED_FUNCTION_472(v21 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_latestInputSampleTime);
  *(v21 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_isInputFinished) = 0;
  *(v21 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_didFinishInputHandlers) = v58;
  *(v21 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_inputBarriers) = v58;
  *(v21 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_isFinished) = 0;
  OUTLINED_FUNCTION_471((v21 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_internalVolatileRange), v59);
  v60 = (v21 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_didChangeVolatileRange);
  *v60 = 0;
  v60[1] = 0;
  *(v21 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_volatileRangeBarriers) = v61;
  v62 = v21 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_updatedContext;
  *v62 = 0;
  *(v62 + 8) = 0;
  sub_1AC68A3F8(v30, v22, &qword_1EB56C7D0, &qword_1AC7ACB40);
  v63 = type metadata accessor for SpeechAnalyzer.Options(0);
  OUTLINED_FUNCTION_96(v22, 1, v63);
  if (v64)
  {
    sub_1AC5C9624(v22, &qword_1EB56C7D0, &qword_1AC7ACB40);
    OUTLINED_FUNCTION_65_0();
    __swift_storeEnumTagSinglePayload(v65, v66, v67, v48);
    sub_1AC7A0338();
    OUTLINED_FUNCTION_104_2(v47);
    if (!v64)
    {
      sub_1AC5C9624(v47, &qword_1EB56BE70, &qword_1AC7A8270);
    }
  }

  else
  {
    (*(v50 + 16))(v47, v22, v48);
    OUTLINED_FUNCTION_274();
    sub_1AC68A2BC();
    OUTLINED_FUNCTION_150_1();
    __swift_storeEnumTagSinglePayload(v68, v69, v70, v48);
    (*(v50 + 32))(v104, v47, v48);
  }

  sub_1AC68A130(v33, v21 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_clientInfo);
  sub_1AC68A130(v33, v21 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_currentClientInfo);
  v90 = v30;
  sub_1AC68A3F8(v30, v21 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_options, &qword_1EB56C7D0, &qword_1AC7ACB40);
  *(v21 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_pendingNewModules) = v93;

  v71 = (v21 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_didChangeVolatileRange);
  v72 = *(v21 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_didChangeVolatileRange);
  v73 = *(v21 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_didChangeVolatileRange + 8);
  *v71 = v101;
  v71[1] = v24;
  sub_1AC5C3958(v72, v73);
  v91 = v24;
  v74 = v102;
  *(v21 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_internalContext) = v102;

  OUTLINED_FUNCTION_38_5();
  sub_1AC6877BC(v75, v74, v76);

  v93 = v33;
  v77 = *(v50 + 16);
  v77(v100, v104, v48);
  OUTLINED_FUNCTION_150_1();
  __swift_storeEnumTagSinglePayload(v78, v79, v80, v48);
  v81 = v98;
  v82 = v99;
  v83 = v96;
  (*(v98 + 16))(v96, v103, v99);
  v84 = OUTLINED_FUNCTION_346();
  (v77)(v84);
  v85 = (*(v81 + 80) + 56) & ~*(v81 + 80);
  v86 = swift_allocObject();
  *(v86 + 2) = 0;
  *(v86 + 3) = 0;
  v87 = v97;
  *(v86 + 4) = v82;
  *(v86 + 5) = v87;
  *(v86 + 6) = v21;
  (*(v81 + 32))(&v86[v85], v83, v82);
  OUTLINED_FUNCTION_203_0();
  v88();

  OUTLINED_FUNCTION_99_1();
  sub_1AC659DBC();
  sub_1AC5C3958(v101, v91);

  sub_1AC5C9624(v90, &qword_1EB56C7D0, &qword_1AC7ACB40);
  (*(v81 + 8))(v103, v82);
  OUTLINED_FUNCTION_3_7();
  sub_1AC68A2BC();
  (*(v50 + 8))(v104, v48);
  OUTLINED_FUNCTION_339();
  OUTLINED_FUNCTION_105();
}

uint64_t sub_1AC65AD84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1AC68A844, a4, 0);
}

void sub_1AC65ADAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_104();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  OUTLINED_FUNCTION_44_4();
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v32 = &a9 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270);
  OUTLINED_FUNCTION_167(v33);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_482();
  v35 = sub_1AC7A0288();
  OUTLINED_FUNCTION_80();
  v36 = OUTLINED_FUNCTION_289();
  v37(v36);
  OUTLINED_FUNCTION_150_1();
  __swift_storeEnumTagSinglePayload(v38, v39, v40, v35);
  v41 = OUTLINED_FUNCTION_389();
  v42(v41);
  OUTLINED_FUNCTION_16_6();
  v45 = sub_1AC68A730(v43, v44);
  v46 = (*(v28 + 80) + 56) & ~*(v28 + 80);
  v47 = swift_allocObject();
  *(v47 + 2) = v20;
  *(v47 + 3) = v45;
  *(v47 + 4) = v26;
  *(v47 + 5) = v24;
  *(v47 + 6) = v20;
  (*(v28 + 32))(&v47[v46], v32, v26);
  OUTLINED_FUNCTION_168_1();
  swift_retain_n();
  OUTLINED_FUNCTION_99_1();
  sub_1AC659DBC();
  *(v20 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_inputTask) = v48;

  OUTLINED_FUNCTION_105();
}

void SpeechAnalyzer.analysisOptions.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C7D0, &qword_1AC7ACB40);
  OUTLINED_FUNCTION_167(v2);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_482();
  sub_1AC68A3F8(v0 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_options, v1, &qword_1EB56C7D0, &qword_1AC7ACB40);
  sub_1AC6D963C(v1);
}

uint64_t SpeechAnalyzer.setClientInfo(_:)()
{
  OUTLINED_FUNCTION_85();
  v1[8] = v2;
  v1[9] = v0;
  v3 = type metadata accessor for ClientInfo(0);
  OUTLINED_FUNCTION_167(v3);
  v1[10] = OUTLINED_FUNCTION_126();
  v4 = OUTLINED_FUNCTION_222();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

void sub_1AC65B0E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_640();
  a17 = v19;
  a18 = v20;
  OUTLINED_FUNCTION_102();
  a16 = v18;
  if (off_1ED937D60 != -1)
  {
    OUTLINED_FUNCTION_3_0();
    swift_once();
  }

  v22 = v18[9];
  v21 = v18[10];
  v23 = sub_1AC79FDE8();
  v24 = __swift_project_value_buffer(v23, qword_1ED9386C8);
  v18[11] = v24;
  v25 = OBJC_IVAR____TtC6Speech14SpeechAnalyzer_currentClientInfo;
  OUTLINED_FUNCTION_175();
  swift_beginAccess();
  OUTLINED_FUNCTION_7_6();
  sub_1AC68A130(v22 + v25, v21);
  sub_1AC6B83E0();
  v27 = v26;
  OUTLINED_FUNCTION_3_7();
  sub_1AC68A2BC();
  if (v27)
  {
    v28 = v18[8];
    swift_beginAccess();
    sub_1AC68793C(v28, v22 + v25);
    swift_endAccess();
    v29 = sub_1AC5CAF3C();
    v18[12] = v29;
    v30 = *(v29 + 16);
    v18[13] = v30;
    if (v30)
    {
      v31 = (v29 + 32);
      while (1)
      {
        v18[14] = 0;
        v32 = *v31;
        v18[15] = *v31;
        v33 = object_getClass(v32) != _TtC6Speech22SpeechRecognizerWorker || v32 == 0;
        if (!v33)
        {
          break;
        }

        OUTLINED_FUNCTION_59_3();
        if (v33)
        {
          goto LABEL_13;
        }
      }

      swift_unknownObjectRetain();
      v42 = swift_task_alloc();
      v43 = OUTLINED_FUNCTION_584(v42);
      *v43 = v44;
      OUTLINED_FUNCTION_60_3(v43);
      OUTLINED_FUNCTION_168();

      sub_1AC68D548(v45);
    }

    else
    {
LABEL_13:

      OUTLINED_FUNCTION_44();
      OUTLINED_FUNCTION_168();

      v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10);
    }
  }

  else
  {
    v47 = sub_1AC79FDC8();
    v48 = sub_1AC7A05F8();
    if (OUTLINED_FUNCTION_366(v48))
    {
      OUTLINED_FUNCTION_150();
      OUTLINED_FUNCTION_363();
      v49 = swift_slowAlloc();
      a10 = v49;
      *v24 = 136315138;
      OUTLINED_FUNCTION_65();
      *(v24 + 4) = sub_1AC5CFE74(0xD000000000000046, v50, &a10);
      OUTLINED_FUNCTION_635(&dword_1AC5BC000, v51, v52, "Failed precondition: %s");
      __swift_destroy_boxed_opaque_existential_0(v49);
      OUTLINED_FUNCTION_129();
      OUTLINED_FUNCTION_70();
    }

    __break(1u);
  }
}

uint64_t sub_1AC65B340()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_19();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 136) = v0;

  OUTLINED_FUNCTION_496();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1AC65B45C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_583();
  while (v10 != v12)
  {
    ++v12;
    v13 += 16;
    if (OUTLINED_FUNCTION_538() == _TtC6Speech22SpeechRecognizerWorker && v11 != 0)
    {
      swift_unknownObjectRetain();
      v15 = swift_task_alloc();
      v16 = OUTLINED_FUNCTION_584(v15);
      *v16 = v17;
      OUTLINED_FUNCTION_60_3(v16);
      OUTLINED_FUNCTION_149_0();

      return sub_1AC68D548(v18);
    }
  }

  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_149_0();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28);
}

uint64_t sub_1AC65B550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_524();
  OUTLINED_FUNCTION_45();
  v11 = *(v10 + 136);
  v12 = v11;
  v13 = sub_1AC79FDC8();
  v14 = sub_1AC7A05F8();

  v15 = OUTLINED_FUNCTION_645();
  v16 = *(v10 + 136);
  v17 = *(v10 + 120);
  if (v15)
  {
    v18 = OUTLINED_FUNCTION_150();
    v19 = OUTLINED_FUNCTION_418();
    *v18 = 138412290;
    v20 = v16;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_582(v21);
    OUTLINED_FUNCTION_309();
    _os_log_impl(v22, v23, v24, v25, v26, 0xCu);
    sub_1AC5C9624(v19, &unk_1EB56C630, &qword_1AC7A7E40);
    OUTLINED_FUNCTION_125_1();
    OUTLINED_FUNCTION_96_0();
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_583();
  while (v16 != v17)
  {
    ++v17;
    v14 += 16;
    if (OUTLINED_FUNCTION_538() == _TtC6Speech22SpeechRecognizerWorker && v13 != 0)
    {
      swift_unknownObjectRetain();
      v28 = swift_task_alloc();
      v29 = OUTLINED_FUNCTION_584(v28);
      *v29 = v30;
      OUTLINED_FUNCTION_60_3(v29);
      OUTLINED_FUNCTION_523();

      return sub_1AC68D548(v31);
    }
  }

  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_523();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41);
}

uint64_t SpeechAnalyzer.prepareToAnalyze(in:)()
{
  OUTLINED_FUNCTION_85();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_64_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_95_2(v1);
  OUTLINED_FUNCTION_138();

  return SpeechAnalyzer.prepareToAnalyze(in:withProgressReadyHandler:)(v3, v4, v5);
}

uint64_t SpeechAnalyzer.prepareToAnalyze(in:withProgressReadyHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_15_5(sub_1AC65B7B4, v3);
}

uint64_t sub_1AC65B7B4()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_65();
  if (sub_1AC65BF3C(0xD00000000000002ELL, v1))
  {
    v2 = swift_task_alloc();
    v3 = OUTLINED_FUNCTION_587(v2);
    *v3 = v4;
    v3[1] = sub_1AC65B890;

    return sub_1AC5CCD68();
  }

  else
  {
    sub_1AC5C3958(*(v0 + 24), *(v0 + 32));
    OUTLINED_FUNCTION_29();

    return v6();
  }
}

uint64_t sub_1AC65B890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_50();
  v17 = v16;
  OUTLINED_FUNCTION_19();
  *v18 = v17;
  v19 = *v15;
  OUTLINED_FUNCTION_18();
  *v20 = v19;

  if (v14)
  {
    *(v17 + 96) = v14;
    v21 = v14;
    v22 = swift_task_alloc();
    *(v17 + 104) = v22;
    *v22 = v19;
    OUTLINED_FUNCTION_258(v22);
    v23 = OUTLINED_FUNCTION_362();

    return sub_1AC65D064(v23, v14);
  }

  else
  {
    OUTLINED_FUNCTION_496();

    return MEMORY[0x1EEE6DFA0](v25, v26, v27);
  }
}

id sub_1AC65B9E8()
{
  OUTLINED_FUNCTION_640();
  v16 = v1;
  OUTLINED_FUNCTION_102();
  if (v0[3])
  {

    v2 = *(sub_1AC5CAF3C() + 16);

    result = [objc_opt_self() progressWithTotalUnitCount_];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v4 = result;
    v5 = v0[3];
    v6 = result;
    [v6 setCompletedUnitCount_];
    v7 = v6;
    v5();

    v8 = OUTLINED_FUNCTION_117();
    sub_1AC5C3958(v8, v9);
  }

  else
  {
    v4 = 0;
  }

  v0[7] = v4;
  v10 = v0[2];
  v0[8] = sub_1AC5CAF3C();
  OUTLINED_FUNCTION_99();
  v11 = swift_allocObject();
  v0[9] = v11;
  *(v11 + 16) = v10;
  *(v11 + 24) = v4;
  v12 = v10;
  v13 = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_588(v13);
  *v14 = v15;
  v14[1] = sub_1AC65BB74;
  OUTLINED_FUNCTION_334();

  return (sub_1AC65CBAC)();
}

uint64_t sub_1AC65BB74()
{
  OUTLINED_FUNCTION_72();
  v2 = *v1;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 88) = v0;

  v5 = *(v2 + 40);

  if (v0)
  {
    v6 = sub_1AC65BEB0;
  }

  else
  {
    v6 = sub_1AC65BCCC;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1AC65BCCC()
{
  OUTLINED_FUNCTION_85();

  sub_1AC5C3958(*(v0 + 24), *(v0 + 32));
  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t sub_1AC65BD2C()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v2 = *(v1 + 96);
  v3 = *v0;
  OUTLINED_FUNCTION_18();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_89_2();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1AC65BE40()
{
  OUTLINED_FUNCTION_72();
  swift_willThrow();
  v0 = OUTLINED_FUNCTION_39();
  sub_1AC5C3958(v0, v1);
  OUTLINED_FUNCTION_44();

  return v2();
}

uint64_t sub_1AC65BEB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_85();

  v15 = *(v14 + 88);
  *(v14 + 96) = v15;
  v16 = v15;
  v17 = swift_task_alloc();
  v18 = OUTLINED_FUNCTION_585(v17);
  *v18 = v19;
  OUTLINED_FUNCTION_258(v18);
  v20 = OUTLINED_FUNCTION_362();

  return sub_1AC65D064(v20, v15);
}

BOOL sub_1AC65BF3C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v4 = OBJC_IVAR____TtC6Speech14SpeechAnalyzer_isFinished;
  if (*(v2 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_isFinished) == 1)
  {
    if (off_1ED937D60 != -1)
    {
      OUTLINED_FUNCTION_3_0();
      swift_once();
    }

    v7 = sub_1AC79FDE8();
    OUTLINED_FUNCTION_10_3(v7, qword_1ED9386C8);

    v8 = sub_1AC79FDC8();
    sub_1AC7A05F8();

    if (OUTLINED_FUNCTION_645())
    {
      v9 = OUTLINED_FUNCTION_150();
      v16 = swift_slowAlloc();
      *v9 = 136315138;
      *(v9 + 4) = sub_1AC5CFE74(a1, a2, &v16);
      OUTLINED_FUNCTION_309();
      _os_log_impl(v10, v11, v12, v13, v14, 0xCu);
      OUTLINED_FUNCTION_67();
      OUTLINED_FUNCTION_96_0();
    }
  }

  return (*(v3 + v4) & 1) == 0;
}

uint64_t sub_1AC65C068()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_27_0();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_18();
  *v4 = v3;
  *(v6 + 168) = v5;

  v7 = OUTLINED_FUNCTION_222();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1AC65C160()
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_57();
  if (sub_1AC65EB54(v1[21], v1[19]))
  {
  }

  else
  {
    sub_1AC616094();
    v3 = v2;
    if (off_1ED937D60 != -1)
    {
      OUTLINED_FUNCTION_3_0();
      swift_once();
    }

    v4 = v1[21];
    v5 = sub_1AC79FDE8();
    OUTLINED_FUNCTION_10_3(v5, qword_1ED9386C8);

    v6 = sub_1AC79FDC8();
    sub_1AC7A05F8();
    OUTLINED_FUNCTION_108_0();

    v7 = os_log_type_enabled(v6, v0);
    v8 = v1[21];
    if (v7)
    {
      OUTLINED_FUNCTION_448();
      OUTLINED_FUNCTION_436();
      *v4 = 136315394;
      v9 = sub_1AC79FB18();
      sub_1AC68A730(&qword_1EB56B468, MEMORY[0x1E6969770]);
      OUTLINED_FUNCTION_623();
      sub_1AC7A0458();

      v10 = OUTLINED_FUNCTION_60_2();
      sub_1AC5CFE74(v10, v11, v12);
      OUTLINED_FUNCTION_627();

      *(v4 + 4) = v3;
      *(v4 + 12) = 2080;
      MEMORY[0x1B26E8D20](v8, v9);

      v13 = OUTLINED_FUNCTION_623();
      v16 = sub_1AC5CFE74(v13, v14, v15);

      *(v4 + 14) = v16;
      OUTLINED_FUNCTION_94();
      _os_log_impl(v17, v18, v19, v20, v21, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_96_0();
      OUTLINED_FUNCTION_77_1();

      goto LABEL_9;
    }
  }

LABEL_9:
  v22 = v1[14];
  v23 = v1[10];
  v32 = v1[17];

  OUTLINED_FUNCTION_11_7();
  sub_1AC65922C(v24, v25);
  *(v23 + v22) = v32;

  v26 = swift_task_alloc();
  v1[22] = v26;
  *v26 = v1;
  OUTLINED_FUNCTION_198_0(v26);
  OUTLINED_FUNCTION_77_2();

  return sub_1AC65ECDC(v27, v28, v29);
}

uint64_t sub_1AC65C3F4()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_18();
  *v6 = v5;
  *(v3 + 184) = v0;

  if (v0)
  {

    v7 = OUTLINED_FUNCTION_196_0();
  }

  else
  {
    v9 = *(v3 + 80);

    v7 = sub_1AC65C554;
    v8 = v9;
  }

  return MEMORY[0x1EEE6DFA0](v7, v8, 0);
}

uint64_t sub_1AC65C554()
{
  OUTLINED_FUNCTION_85();
  v1 = sub_1AC5CAF3C();
  *(v0 + 192) = v1;
  OUTLINED_FUNCTION_30(&unk_1AC7AACD0);
  v5 = v2;
  v3 = swift_task_alloc();
  *(v0 + 200) = v3;
  *v3 = v0;
  v3[1] = sub_1AC65C614;

  return v5(&unk_1AC7AADE0, 0, v1);
}

void sub_1AC65C614()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 208) = v5;

  if (v0)
  {
  }

  else
  {

    OUTLINED_FUNCTION_490();

    MEMORY[0x1EEE6DFA0](v6, v7, v8);
  }
}

void sub_1AC65C744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_639();
  OUTLINED_FUNCTION_102();
  v12 = 0;
  v13 = *(*(v11 + 128) + 16);
  while (v13)
  {
    if (!*(*(v11 + 128) + 16))
    {
      __break(1u);
      return;
    }

    OUTLINED_FUNCTION_399();
    v14 = *(v10 + 48);
    swift_unknownObjectRetain();
    v15 = OUTLINED_FUNCTION_155_1();
    v14(v15);
    v16 = OUTLINED_FUNCTION_172();
    v17(v16);
    swift_unknownObjectRelease();
    v12 += 16;
  }

  v18 = *(v11 + 208);

  sub_1AC5C8C68(v18);

  v19 = OUTLINED_FUNCTION_73_1();
  v20(v19);

  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_636();

  v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
}

uint64_t sub_1AC65C858()
{
  OUTLINED_FUNCTION_85();
  (*(v0[12] + 8))(v0[13], v0[11]);

  OUTLINED_FUNCTION_44();

  return v1();
}

uint64_t sub_1AC65C8D0(void *a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a3;
  v5 = a1[1];
  ObjectType = swift_getObjectType();
  v9 = (*(v5 + 16) + **(v5 + 16));
  v7 = swift_task_alloc();
  *(v3 + 24) = v7;
  *v7 = v3;
  v7[1] = sub_1AC65CA08;

  return v9(a2, ObjectType, v5);
}

uint64_t sub_1AC65CA08()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v2 = *v1;
  OUTLINED_FUNCTION_18();
  *v3 = v2;

  if (v0)
  {
    OUTLINED_FUNCTION_44();

    return v4();
  }

  else
  {
    OUTLINED_FUNCTION_138();

    return MEMORY[0x1EEE6DFA0](v6, v7, v8);
  }
}

char *sub_1AC65CB20()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = v1;
    result = [v2 completedUnitCount];
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    [v2 setCompletedUnitCount_];
  }

  OUTLINED_FUNCTION_29();

  return v4();
}

uint64_t sub_1AC65CBAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[2] = a3;
  v3[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1AC65CBD0, 0, 0);
}

uint64_t sub_1AC65CBD0()
{
  OUTLINED_FUNCTION_85();
  if (*(*(v0 + 40) + 16))
  {
    v1 = swift_task_alloc();
    OUTLINED_FUNCTION_508(v1);
    v2 = swift_task_alloc();
    v3 = OUTLINED_FUNCTION_42_1(v2);
    *v3 = v4;
    v3[1] = sub_1AC65CCCC;
    OUTLINED_FUNCTION_175();

    return MEMORY[0x1EEE6DE40]();
  }

  else
  {
    OUTLINED_FUNCTION_29();

    return v5();
  }
}

uint64_t sub_1AC65CCCC()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_18();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1AC65CDCC()
{
  OUTLINED_FUNCTION_85();

  OUTLINED_FUNCTION_44();

  return v0();
}

uint64_t sub_1AC65CE28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[2] = a3;
  v3[3] = a1;
  return OUTLINED_FUNCTION_15_5(sub_1AC65CE48, 0);
}

uint64_t sub_1AC65CE48()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 40);
  if (v1 >> 62)
  {
    if (sub_1AC7A08E8())
    {
      goto LABEL_3;
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v2 = swift_task_alloc();
    OUTLINED_FUNCTION_508(v2);
    v3 = swift_task_alloc();
    v4 = OUTLINED_FUNCTION_42_1(v3);
    *v4 = v5;
    v4[1] = sub_1AC65CF64;
    OUTLINED_FUNCTION_175();

    return MEMORY[0x1EEE6DE40]();
  }

  OUTLINED_FUNCTION_29();

  return v6();
}

uint64_t sub_1AC65CF64()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_18();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1AC65D064(char a1, uint64_t a2)
{
  *(v3 + 64) = a2;
  *(v3 + 72) = v2;
  *(v3 + 104) = a1;
  return OUTLINED_FUNCTION_15_5(sub_1AC65D084, v2);
}

uint64_t sub_1AC65D084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  OUTLINED_FUNCTION_46();
  a24 = v26;
  a25 = v27;
  OUTLINED_FUNCTION_55_3();
  a23 = v25;
  v28 = *(v25 + 72);
  if (*(v28 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_isFinished))
  {
    if (off_1ED937D60 != -1)
    {
      OUTLINED_FUNCTION_3_0();
      swift_once();
    }

    v29 = sub_1AC79FDE8();
    OUTLINED_FUNCTION_10_3(v29, qword_1ED9386C8);
    v30 = sub_1AC79FDC8();
    v31 = sub_1AC7A05E8();
    if (OUTLINED_FUNCTION_153(v31))
    {
      v32 = OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_242(v32);
      OUTLINED_FUNCTION_69();
      _os_log_impl(v33, v34, v35, v36, v37, 2u);
      OUTLINED_FUNCTION_129();
    }

    OUTLINED_FUNCTION_44();
    OUTLINED_FUNCTION_26();

    return v39(v38, v39, v40, v41, v42, v43, v44, v45, a9, *(&a9 + 1), a10, a11, a12, a13, a14, a15, a16, a17);
  }

  else
  {
    v47 = *(v25 + 64);
    *(v28 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_isFinished) = 1;
    v48 = *(v25 + 64);
    if (v47)
    {
      v49 = *(v25 + 64);
    }

    else
    {
      sub_1AC7A01F8();
      OUTLINED_FUNCTION_26_5();
      sub_1AC68A730(v50, v51);
      v52 = OUTLINED_FUNCTION_287();
      v49 = OUTLINED_FUNCTION_188(v52, v53);
      sub_1AC79FE08();
    }

    *(v25 + 80) = v49;
    v54 = v48;
    if (off_1ED937D60 != -1)
    {
      OUTLINED_FUNCTION_3_0();
      swift_once();
    }

    v55 = sub_1AC79FDE8();
    OUTLINED_FUNCTION_10_3(v55, qword_1ED9386C8);
    v56 = sub_1AC79FDC8();
    v57 = sub_1AC7A05E8();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = OUTLINED_FUNCTION_20();
      *v58 = 0;
      _os_log_impl(&dword_1AC5BC000, v56, v57, "SpeechAnalyzer: Clearing input barriers", v58, 2u);
      OUTLINED_FUNCTION_77_1();
    }

    v59 = sub_1AC675748();
    v60 = *(v59 + 16);
    if (v60)
    {
      a11 = MEMORY[0x1E69E7CC0];
      sub_1AC631660(0, v60, 0);
      v61 = a11;
      v62 = a11[2];
      v63 = 64;
      do
      {
        v64 = *(v59 + v63);
        a11 = v61;
        v65 = v61[3];
        a9 = v64;

        if (v62 >= v65 >> 1)
        {
          sub_1AC631660((v65 > 1), v62 + 1, 1);
          v61 = a11;
        }

        v61[2] = v62 + 1;
        *&v61[2 * v62 + 4] = a9;
        v63 += 48;
        ++v62;
        --v60;
      }

      while (v60);
    }

    else
    {

      v61 = MEMORY[0x1E69E7CC0];
    }

    v66 = v61[2];
    if (v66)
    {
      v67 = v61 + 5;
      do
      {
        v68 = *(v67 - 1);
        a11 = v49;
        a12 = 0;
        a13 = 0;
        LOBYTE(a14) = 1;

        v69 = v49;
        v68(&a11);

        v67 += 2;
        --v66;
      }

      while (v66);
    }

    v70 = *(v25 + 72);

    sub_1AC67BD18(v49);
    if (*(v70 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_inputTask))
    {

      sub_1AC7A0318();
    }

    v71 = *(v25 + 104);
    *(*(v25 + 72) + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_isInputFinished) = 1;
    v72 = v49;
    sub_1AC675568(v49);

    *(v25 + 88) = sub_1AC5CAF3C();
    OUTLINED_FUNCTION_30(&unk_1AC7AE808);
    *&a9 = v73;
    v74 = swift_task_alloc();
    *(v25 + 96) = v74;
    *v74 = v25;
    if (v47 || v71)
    {
      v74[1] = sub_1AC65D4D8;
    }

    else
    {
      v74[1] = sub_1AC65D738;
    }

    OUTLINED_FUNCTION_26();

    return v78(v75, v76, v77, v78, v79, v80, v81, v82, a9, *(&a9 + 1), a10, a11, a12, a13, a14, a15, a16, a17);
  }
}

uint64_t sub_1AC65D4D8()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v1 = *v0;
  OUTLINED_FUNCTION_18();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_89_2();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

void sub_1AC65D5EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_57();
  v14 = OBJC_IVAR____TtC6Speech14SpeechAnalyzer_internalModules;
  if (*(v12 + 104) == 1)
  {
    OUTLINED_FUNCTION_175();
    swift_beginAccess();
    OUTLINED_FUNCTION_643();
    v15 = v14 + 40;
    while (a9)
    {
      OUTLINED_FUNCTION_517();
      if (v16)
      {
        __break(1u);
        goto LABEL_14;
      }

      OUTLINED_FUNCTION_562();
      OUTLINED_FUNCTION_641();
      OUTLINED_FUNCTION_246();
      v13();
      swift_unknownObjectRelease();
      v15 += 16;
    }
  }

  else
  {
    OUTLINED_FUNCTION_175();
    swift_beginAccess();
    OUTLINED_FUNCTION_643();
    v17 = v14 + 40;
    while (a9)
    {
      OUTLINED_FUNCTION_517();
      if (v16)
      {
LABEL_14:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_562();
      OUTLINED_FUNCTION_641();
      OUTLINED_FUNCTION_246();
      v13();
      swift_unknownObjectRelease();
      v17 += 16;
    }
  }

  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_77_2();

  v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t sub_1AC65D738()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v1 = *v0;
  OUTLINED_FUNCTION_18();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_89_2();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1AC65D84C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_57();
  v14 = *(v13 + 72);
  v15 = OBJC_IVAR____TtC6Speech14SpeechAnalyzer_internalModules;
  v29 = v13;
  OUTLINED_FUNCTION_175();
  swift_beginAccess();
  v16 = *(*(v14 + v15) + 16);

  v18 = result;
  v19 = result + 40;
  while (v16)
  {
    if (!*(v18 + 16))
    {
      __break(1u);
      return result;
    }

    OUTLINED_FUNCTION_562();
    v20 = *(v12 + 48);
    swift_unknownObjectRetain();
    OUTLINED_FUNCTION_246();
    v20();
    result = swift_unknownObjectRelease();
    v19 += 16;
  }

  OUTLINED_FUNCTION_77_2();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, v29, a10, a11, a12);
}

void SpeechAnalyzer.deinit()
{
  OUTLINED_FUNCTION_104();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C7D0, &qword_1AC7ACB40);
  v3 = OUTLINED_FUNCTION_22(v2);
  v22 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v22 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270);
  OUTLINED_FUNCTION_167(v7);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OBJC_IVAR____TtC6Speech14SpeechAnalyzer_inputTask;
  if (*(v0 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_inputTask))
  {

    sub_1AC7A0318();
  }

  v10 = OBJC_IVAR____TtC6Speech14SpeechAnalyzer_internalModules;
  OUTLINED_FUNCTION_175();
  swift_beginAccess();

  sub_1AC5CAF9C(v11);
  OUTLINED_FUNCTION_430();
  sub_1AC7A0288();
  OUTLINED_FUNCTION_65_0();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  v16 = *(v0 + v9);
  v17 = *(v0 + v10);
  v18 = OBJC_IVAR____TtC6Speech14SpeechAnalyzer_options;
  sub_1AC68A3F8(v0 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_options, v6, &qword_1EB56C7D0, &qword_1AC7ACB40);
  v19 = *(v22 + 80);
  v22 = v9;
  v20 = (v19 + 56) & ~v19;
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = v16;
  v21[5] = v17;
  v21[6] = v1;
  sub_1AC68A444(v6, v21 + v20, &qword_1EB56C7D0, &qword_1AC7ACB40);

  OUTLINED_FUNCTION_99_1();
  sub_1AC659DBC();

  sub_1AC5C9624(v0 + v18, &qword_1EB56C7D0, &qword_1AC7ACB40);
  sub_1AC68A2BC();
  sub_1AC68A2BC();

  sub_1AC5C3958(*(v0 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_didChangeVolatileRange), *(v0 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_didChangeVolatileRange + 8));

  sub_1AC5C9624(v0 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_updatedContext + 8, &qword_1EB56C7D8, &qword_1AC7AA868);
  swift_defaultActor_destroy();
  OUTLINED_FUNCTION_339();
  OUTLINED_FUNCTION_105();
}

uint64_t sub_1AC65DC74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C7D0, &qword_1AC7ACB40);
  v7[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AC65DD14, 0, 0);
}

uint64_t sub_1AC65DD14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_355();
  OUTLINED_FUNCTION_102();
  if (v10[2])
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_100();
    v10[7] = v14;
    *v14 = v15;
    v14[1] = sub_1AC65DE7C;
    OUTLINED_FUNCTION_291();

    return MEMORY[0x1EEE6DA20](v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
  }

  else
  {
    OUTLINED_FUNCTION_581();
    for (; v11; --v11)
    {
      swift_getObjectType();
      OUTLINED_FUNCTION_622();
      v24 = *(v13 + 48);
      v13 += 48;
      swift_unknownObjectRetain();
      v25 = OUTLINED_FUNCTION_155_1();
      v24(v25);
      swift_unknownObjectRelease();
      v12 += 16;
    }

    OUTLINED_FUNCTION_30(&unk_1AC7AE808);
    v37 = v26;
    v27 = swift_task_alloc();
    v10[9] = v27;
    *v27 = v10;
    OUTLINED_FUNCTION_162_1(v27);
    OUTLINED_FUNCTION_291();

    return v31(v28, v29, v30, v31, v32, v33, v34, v35, v37, a10);
  }
}

uint64_t sub_1AC65DE7C()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v1 = *v0;
  OUTLINED_FUNCTION_18();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1AC65DF60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_355();
  OUTLINED_FUNCTION_102();
  OUTLINED_FUNCTION_581();
  for (; v11; --v11)
  {
    swift_getObjectType();
    OUTLINED_FUNCTION_622();
    v14 = *(v13 + 48);
    v13 += 48;
    swift_unknownObjectRetain();
    v15 = OUTLINED_FUNCTION_155_1();
    v14(v15);
    swift_unknownObjectRelease();
    v12 += 16;
  }

  OUTLINED_FUNCTION_30(&unk_1AC7AE808);
  v27 = v16;
  v17 = swift_task_alloc();
  *(v10 + 72) = v17;
  *v17 = v10;
  OUTLINED_FUNCTION_162_1(v17);
  OUTLINED_FUNCTION_291();

  return v21(v18, v19, v20, v21, v22, v23, v24, v25, v27, a10);
}

uint64_t sub_1AC65E030()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v1 = *v0;
  OUTLINED_FUNCTION_18();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1AC65E114()
{
  OUTLINED_FUNCTION_57();
  v1 = 0;
  v2 = MEMORY[0x1E69E7CC0];
  v3 = v0[4];
  v31 = MEMORY[0x1E69E7CC0];
  v4 = *(v3 + 16);
  v5 = v3 + 32;
  v6 = _TtC6Speech22SpeechRecognizerWorker;
LABEL_2:
  v0[10] = v2;
  v7 = (v5 + 16 * v1);
  while (1)
  {
    if (v4 == v1)
    {
      sub_1AC68A3F8(v0[5], v0[6], &qword_1EB56C7D0, &qword_1AC7ACB40);
      v15 = type metadata accessor for SpeechAnalyzer.Options(0);
      v16 = OUTLINED_FUNCTION_178_1();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v16, v17, v15);
      v19 = v0[6];
      if (EnumTagSinglePayload == 1)
      {

        sub_1AC5C9624(v19, &qword_1EB56C7D0, &qword_1AC7ACB40);
LABEL_15:
        v20 = 0;
        while (v0[8])
        {
          OUTLINED_FUNCTION_399();
          OUTLINED_FUNCTION_622();
          cache = v6[1].cache;
          v6 = (v6 + 56);
          swift_unknownObjectRetain();
          v22 = OUTLINED_FUNCTION_172();
          cache(v22);
          swift_unknownObjectRelease();
          v20 += 16;
        }

        OUTLINED_FUNCTION_44();
        OUTLINED_FUNCTION_634();

        __asm { BRAA            X1, X16 }
      }

      v25 = *(v19 + *(v15 + 20));
      OUTLINED_FUNCTION_274();
      sub_1AC68A2BC();
      switch(v25)
      {
        case 1:
        case 3:
          if (qword_1ED9373D0 == -1)
          {
            goto LABEL_23;
          }

          goto LABEL_33;
        case 2:
        case 4:
          if (qword_1ED9373D0 != -1)
          {
            OUTLINED_FUNCTION_14_2(&qword_1ED9373D0);
          }

          v0[12] = qword_1ED938600;
          goto LABEL_27;
        default:

          goto LABEL_15;
      }
    }

    if (v1 >= v4)
    {
      break;
    }

    v8 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_32;
    }

    v10 = *v7;
    v7 += 2;
    v9 = v10;
    ++v1;
    if (object_getClass(v10) == _TtC6Speech22SpeechRecognizerWorker && v9 != 0)
    {
      v12 = swift_unknownObjectRetain();
      MEMORY[0x1B26E8CF0](v12);
      OUTLINED_FUNCTION_483();
      if (v14)
      {
        OUTLINED_FUNCTION_9(v13);
        sub_1AC7A0178();
      }

      OUTLINED_FUNCTION_172();
      sub_1AC7A0198();
      v2 = v31;
      v1 = v8;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  OUTLINED_FUNCTION_14_2(&qword_1ED9373D0);
LABEL_23:
  v0[11] = qword_1ED938600;
LABEL_27:
  OUTLINED_FUNCTION_634();

  return MEMORY[0x1EEE6DFA0](v26, v27, v28);
}

uint64_t sub_1AC65E3C4()
{
  OUTLINED_FUNCTION_85();
  sub_1AC680560(*(v0 + 80), 0);

  v1 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1AC65E430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_355();
  OUTLINED_FUNCTION_102();
  v12 = 0;
  while (*(v10 + 64))
  {
    OUTLINED_FUNCTION_399();
    OUTLINED_FUNCTION_622();
    v13 = *(v11 + 56);
    v11 += 56;
    swift_unknownObjectRetain();
    v14 = OUTLINED_FUNCTION_172();
    v13(v14);
    swift_unknownObjectRelease();
    v12 += 16;
  }

  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_291();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
}

uint64_t sub_1AC65E4DC()
{
  OUTLINED_FUNCTION_85();
  v0 = OUTLINED_FUNCTION_178_1();
  sub_1AC680560(v0, v1);

  v2 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1AC65E548(void *a1)
{
  v2 = a1[1];
  ObjectType = swift_getObjectType();
  v6 = (*(v2 + 48) + **(v2 + 48));
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1AC68A840;

  return v6(1, ObjectType, v2);
}

uint64_t SpeechAnalyzer.__deallocating_deinit()
{
  SpeechAnalyzer.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t SpeechAnalyzer.modules.getter()
{
  OUTLINED_FUNCTION_175();
  swift_beginAccess();

  sub_1AC608680(v2);
  OUTLINED_FUNCTION_108_0();

  if (*(v0 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_pendingNewModules))
  {
    v3 = *(v0 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_pendingNewModules);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  sub_1AC65922C(v3, sub_1AC6A8758);
  return v1;
}

uint64_t SpeechAnalyzer.setModules(_:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_15_5(sub_1AC65E768, v1);
}

{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_15_5(sub_1AC67EE68, v1);
}

uint64_t sub_1AC65E768()
{
  OUTLINED_FUNCTION_85();
  if (sub_1AC65BF3C(0x6C75646F4D746573, 0xEE00293A5F287365))
  {
    *(*(v0 + 24) + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_pendingNewModules) = *(v0 + 16);

    v1 = swift_task_alloc();
    v2 = OUTLINED_FUNCTION_55(v1);
    *v2 = v3;
    OUTLINED_FUNCTION_140_1(v2);

    return sub_1AC5CCD68();
  }

  else
  {
    OUTLINED_FUNCTION_29();

    return v5();
  }
}

uint64_t sub_1AC65E864()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_18();
  *v6 = v5;
  *(v3 + 40) = v0;

  if (v0)
  {
    v7 = v0;
    v8 = swift_task_alloc();
    *(v3 + 48) = v8;
    *v8 = v5;
    v8[1] = sub_1AC65E9D0;
    v9 = OUTLINED_FUNCTION_362();

    return sub_1AC65D064(v9, v0);
  }

  else
  {
    v11 = *(v5 + 8);

    return v11();
  }
}

uint64_t sub_1AC65E9D0()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v2 = *(v1 + 40);
  v3 = *v0;
  OUTLINED_FUNCTION_18();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_89_2();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1AC65EAE4()
{
  OUTLINED_FUNCTION_72();
  swift_willThrow();
  OUTLINED_FUNCTION_44();

  return v0();
}

uint64_t sub_1AC65EB54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BFD8, &qword_1AC7A83F0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11[-v5];
  v7 = *(a2 + 16);
  if (v7 == 1)
  {
    sub_1AC625B14(a2, v6);
    v9 = sub_1AC79FB18();
    result = __swift_getEnumTagSinglePayload(v6, 1, v9);
    if (result != 1)
    {
      MEMORY[0x1EEE9AC00](result);
      *&v11[-16] = v6;
      v8 = sub_1AC6F47B8(sub_1AC637BAC, &v11[-32], a1);
      (*(*(v9 - 8) + 8))(v6, v9);
      return v8;
    }

    __break(1u);
  }

  else
  {
    if (!v7)
    {
      return 1;
    }

    return sub_1AC68448C(a1, a2);
  }

  return result;
}

uint64_t sub_1AC65ECDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[87] = v3;
  v4[86] = a3;
  v4[85] = a2;
  v4[84] = a1;
  v5 = sub_1AC7A0288();
  v4[88] = v5;
  v6 = *(v5 - 8);
  v4[89] = v6;
  v4[90] = *(v6 + 64);
  v4[91] = swift_task_alloc();
  v4[92] = swift_task_alloc();
  v4[93] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C8A0, &qword_1AC7AADE8);
  v4[94] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C8A8, &qword_1AC7B1DB0);
  v4[95] = v7;
  v4[96] = *(v7 - 8);
  v4[97] = swift_task_alloc();
  v8 = type metadata accessor for SpeechRecognizerSupportedFeatures(0);
  v4[98] = v8;
  v4[99] = *(v8 - 8);
  v4[100] = swift_task_alloc();
  v4[101] = swift_task_alloc();
  v4[102] = swift_task_alloc();
  v4[103] = swift_task_alloc();
  v4[104] = swift_task_alloc();
  v4[105] = swift_task_alloc();
  v4[106] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C8B0, &qword_1AC7AADF0);
  v4[107] = swift_task_alloc();
  v4[108] = swift_task_alloc();
  v4[109] = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C8B8, &qword_1AC7AADF8) - 8) + 64);
  v4[110] = swift_task_alloc();
  v4[111] = swift_task_alloc();
  v4[112] = swift_task_alloc();
  v4[113] = swift_task_alloc();
  v4[114] = swift_task_alloc();
  v4[115] = swift_task_alloc();
  v9 = sub_1AC79FDE8();
  v4[116] = v9;
  v4[117] = *(v9 - 8);
  v4[118] = swift_task_alloc();
  type metadata accessor for ClientInfo(0);
  v4[119] = swift_task_alloc();
  v4[120] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AC65F054, v3, 0);
}

uint64_t sub_1AC660B68()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_19();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 1008) = v0;

  OUTLINED_FUNCTION_496();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1AC662770()
{
  OUTLINED_FUNCTION_72();
  v1 = v0[136];
  v2 = v0[133];
  v3 = v0[119];
  OUTLINED_FUNCTION_175();
  swift_beginAccess();
  OUTLINED_FUNCTION_7_6();
  sub_1AC68A130(v2 + v1, v3);
  v4 = OUTLINED_FUNCTION_89_2();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1AC6640BC()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_18();
  *v6 = v5;
  *(v3 + 1152) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_74_3();

    v7 = OUTLINED_FUNCTION_196_0();
  }

  else
  {
    v8 = *(v3 + 696);
    v7 = sub_1AC6641E0;
  }

  return MEMORY[0x1EEE6DFA0](v7, v8, 0);
}

uint64_t sub_1AC6655DC()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_18();
  *v6 = v5;
  *(v3 + 1192) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_74_3();

    v7 = OUTLINED_FUNCTION_196_0();
  }

  else
  {
    v8 = *(v3 + 696);
    v7 = sub_1AC665700;
  }

  return MEMORY[0x1EEE6DFA0](v7, v8, 0);
}

uint64_t sub_1AC666830()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_18();
  *v6 = v5;
  *(v3 + 1232) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_74_3();

    v7 = OUTLINED_FUNCTION_196_0();
  }

  else
  {
    v8 = *(v3 + 696);
    v7 = sub_1AC666954;
  }

  return MEMORY[0x1EEE6DFA0](v7, v8, 0);
}

uint64_t sub_1AC666954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  v272 = v42;
  OUTLINED_FUNCTION_616();
  swift_unknownObjectRelease();
  isa = v42[154].isa;
  v45 = v42[150].isa;
  OUTLINED_FUNCTION_342();
  while (1)
  {
    if (v45 == v43)
    {
      OUTLINED_FUNCTION_206_0();

      v55 = v41[2].isa;
      v42[155].isa = v55;
      if (!v55)
      {
        goto LABEL_109;
      }

      OUTLINED_FUNCTION_206_0();

      OUTLINED_FUNCTION_393();
      do
      {
        v42[156].isa = v44;
        OUTLINED_FUNCTION_356();
        if (v56)
        {
          goto LABEL_121;
        }

        v42[157].isa = *(v42 + v41 + 600);
        type metadata accessor for NormalizingTranscriber(0);
        OUTLINED_FUNCTION_4_4();
        if (swift_dynamicCastClass())
        {
          swift_unknownObjectRetain();
          v217 = swift_task_alloc();
          v218 = OUTLINED_FUNCTION_590(v217);
          *v218 = v219;
          OUTLINED_FUNCTION_13_4(v218);
          OUTLINED_FUNCTION_93_2();
          OUTLINED_FUNCTION_405();

          return sub_1AC66F25C(v220, v221, v222);
        }

        OUTLINED_FUNCTION_134_2();
      }

      while (!v57);

      v40 = v41[2].isa;
      v42[160].isa = v40;
      if (!v40)
      {
LABEL_109:
        v42[170].isa = isa;
        OUTLINED_FUNCTION_329();
        OUTLINED_FUNCTION_117_2();

        v42[74].isa = v40;
        v42[73].isa = MEMORY[0x1E69E7CC0];
        if (qword_1ED9373D0 != -1)
        {
          goto LABEL_125;
        }

        goto LABEL_110;
      }

      OUTLINED_FUNCTION_101_2();
      v255 = v42[95].isa;
      v256 = v42[98].isa;
      v254 = v58 + 8;
      v253 = v59 + 8;

      v60 = 0;
      v61 = &protocol descriptor for TranscriberBackedSpeechModule;
      v62 = v42 + 75;
      v257 = v40;
      while (1)
      {
        OUTLINED_FUNCTION_276();
        if (v60 >= v64)
        {
          goto LABEL_122;
        }

        v65 = *(v63 + 16 * v60 + 32);
        swift_getObjectType();
        v66 = OUTLINED_FUNCTION_4_4();
        v68 = dynamic_cast_existential_1_conditional(v66, v67, &protocol descriptor for TranscriberBackedSpeechModule);
        if (v68)
        {
          v55 = v68;
          v70 = v69;
          swift_getObjectType();
          OUTLINED_FUNCTION_103_2((v55 + OBJC_IVAR____TtC6Speech17CommandRecognizer_transcriber));
          swift_unknownObjectRetain();
          OUTLINED_FUNCTION_653();
          v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C8C8, &qword_1AC7AAE00);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BF80, &qword_1AC7A8390);
          OUTLINED_FUNCTION_170_1();
          if (swift_dynamicCast())
          {
            v258 = v70;
            v260 = v55;
            v268 = v60;
            v269 = v65;
            OUTLINED_FUNCTION_652();
            v71 = v62->isa;
            v72 = v62->isa + 64;
            OUTLINED_FUNCTION_32_5();
            v75 = v74 & v73;
            v77 = (63 - v76) >> 6;
            OUTLINED_FUNCTION_168_1();
            swift_bridgeObjectRetain_n();
            v78 = 0;
            v265 = v71;
            if (!v75)
            {
              while (1)
              {
                v55 = v78 + 1;
                if (__OFADD__(v78, 1))
                {
                  goto LABEL_120;
                }

                if (v55 >= v77)
                {

                  v98 = 1;
                  goto LABEL_31;
                }

                ++v78;
                if (*(v72 + 8 * v55))
                {
                  goto LABEL_24;
                }
              }
            }

LABEL_20:
            v55 = v78;
LABEL_24:
            v79 = v42[108].isa;
            v80 = v42[107].isa;
            OUTLINED_FUNCTION_143_2();
            OUTLINED_FUNCTION_1_7();
            sub_1AC68A130(v81, v79);
            OUTLINED_FUNCTION_326();
            *(v79 + v82) = v61;
            v83 = OUTLINED_FUNCTION_619();
            sub_1AC61B988(v83, v84);
            *(v80 + *(v71 + 12)) = *(v79 + *(v71 + 12));
            v85 = *(v80 + *(v71 + 12));
            v86 = *(v85 + 16);
            v87 = v85 + 32;

            v88 = v86 + 1;
            do
            {
              if (!--v88)
              {
                v92 = v42[107].isa;
                OUTLINED_FUNCTION_2_6();
                sub_1AC68A2BC();
                OUTLINED_FUNCTION_130_2();
                sub_1AC5C9624(v92 + v93, &qword_1EB56C8D0, &qword_1AC7AAE18);
                v78 = v55;
                v71 = v265;
                goto LABEL_20;
              }

              v89 = OUTLINED_FUNCTION_619();
              __swift_project_boxed_opaque_existential_1(v89, v90);
              v91 = sub_1AC7A0D28();
              __swift_project_boxed_opaque_existential_1(v270, v42[25].isa);
              v61 = sub_1AC7A0D28();
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              v87 += 40;
            }

            while (v91 != v61);
            v94 = v42[115].isa;
            v95 = v42[107].isa;

            v96 = OUTLINED_FUNCTION_506();
            sub_1AC61B988(v96, v97);
            OUTLINED_FUNCTION_130_2();
            *(v94 + v99) = *(v95 + v99);
LABEL_31:
            v100 = v42[106].isa;
            __swift_storeEnumTagSinglePayload(v42[115].isa, v98, 1, v100);

            v101 = OUTLINED_FUNCTION_278();
            EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v101, v102, v100);
            v104 = v42[115].isa;
            v41 = v42[114].isa;
            v62 = v42 + 75;
            v60 = v268;
            v61 = &protocol descriptor for TranscriberBackedSpeechModule;
            if (EnumTagSinglePayload)
            {
              v105 = OUTLINED_FUNCTION_123();
              memcpy(v105, v106, v107);
            }

            else
            {
              v108 = v42[106].isa;
              OUTLINED_FUNCTION_1_7();
              v109 = OUTLINED_FUNCTION_74_0();
              sub_1AC68A130(v109, v110);
              OUTLINED_FUNCTION_130_2();
              sub_1AC68A3F8(v104 + v111, v41 + v111, &qword_1EB56C8D0, &qword_1AC7AAE18);
              v112 = OUTLINED_FUNCTION_68_3();
              __swift_storeEnumTagSinglePayload(v112, v113, v114, v108);
            }

            OUTLINED_FUNCTION_608();
            v115 = OUTLINED_FUNCTION_55_2();
            OUTLINED_FUNCTION_96(v115, v116, v104);
            if (v57)
            {
              v117 = v42[115].isa;
              v118 = OUTLINED_FUNCTION_178_1();
              if (!__swift_getEnumTagSinglePayload(v118, v119, v104))
              {
                sub_1AC79FB18();
                OUTLINED_FUNCTION_22_0();
                (*(v120 + 8))(v117);
                v104 = v256;

                v121 = type metadata accessor for TranscriberCommon.ModelOptions(0);
                if (!OUTLINED_FUNCTION_63_3(v121))
                {
                  v122 = sub_1AC79F7F8();
                  if (!OUTLINED_FUNCTION_75_1(v122))
                  {
                    OUTLINED_FUNCTION_40_4();
                    v123 = OUTLINED_FUNCTION_123();
                    v124(v123);
                  }

                  OUTLINED_FUNCTION_119_2();
                  if (!OUTLINED_FUNCTION_88_2())
                  {
                    OUTLINED_FUNCTION_40_4();
                    v125 = OUTLINED_FUNCTION_227();
                    v126(v125);
                  }

                  OUTLINED_FUNCTION_118_2();
                  OUTLINED_FUNCTION_370();
                  OUTLINED_FUNCTION_369();
                  OUTLINED_FUNCTION_368();
                  OUTLINED_FUNCTION_367();
                  v104 = v256;
                }

                v41 = v42[115].isa;

                OUTLINED_FUNCTION_130_2();

                OUTLINED_FUNCTION_608();
              }

              swift_unknownObjectRelease();
              v127 = OUTLINED_FUNCTION_55_2();
              if (__swift_getEnumTagSinglePayload(v127, v128, v104))
              {
                goto LABEL_83;
              }

              OUTLINED_FUNCTION_651();
              OUTLINED_FUNCTION_22_0();
              (*(v129 + 8))(v41);
              OUTLINED_FUNCTION_426();
              v130 = OUTLINED_FUNCTION_364();
              if (!OUTLINED_FUNCTION_63_3(v130))
              {
                v131 = sub_1AC79F7F8();
                if (!OUTLINED_FUNCTION_75_1(v131))
                {
                  OUTLINED_FUNCTION_40_4();
                  v132 = OUTLINED_FUNCTION_123();
                  v133(v132);
                }

                OUTLINED_FUNCTION_119_2();
                if (!OUTLINED_FUNCTION_88_2())
                {
                  OUTLINED_FUNCTION_40_4();
                  v134 = OUTLINED_FUNCTION_227();
                  v135(v134);
                }

                OUTLINED_FUNCTION_118_2();
                OUTLINED_FUNCTION_370();
                OUTLINED_FUNCTION_369();
                OUTLINED_FUNCTION_368();
                OUTLINED_FUNCTION_367();
                v104 = v256;
              }

              v41 = v42[114].isa;
              v136 = *(v104 + 48);
              v137 = v253;
            }

            else
            {
              v138 = v42[105].isa;
              v139 = v42[97].isa;
              OUTLINED_FUNCTION_130_2();
              v141 = *(&v41->isa + v140);
              v55 = *(v255 + 12);
              sub_1AC61B988(v41, v139);
              *(v139 + v55) = v141;
              v40 = *(v139 + *(v255 + 12));
              v142 = OUTLINED_FUNCTION_506();
              sub_1AC61B988(v142, v143);
              if (off_1ED937D60 != -1)
              {
                OUTLINED_FUNCTION_3_0();
                swift_once();
              }

              OUTLINED_FUNCTION_10_3(v42[116].isa, qword_1ED9386C8);
              OUTLINED_FUNCTION_649();
              swift_unknownObjectRetain();
              v41 = sub_1AC79FDC8();
              v144 = sub_1AC7A05E8();
              swift_unknownObjectRelease();
              v266 = v40;
              if (os_log_type_enabled(v41, v144))
              {
                v55 = v269;
                v145 = OUTLINED_FUNCTION_448();
                v138 = OUTLINED_FUNCTION_494();
                v271[0] = v138;
                *v145 = 136315394;
                sub_1AC68A30C(&v42[12], &v42[7]);
                v146 = sub_1AC79FFF8();
                v148 = v147;
                OUTLINED_FUNCTION_648();
                sub_1AC5CFE74(v146, v148, v149);
                OUTLINED_FUNCTION_627();

                *(v145 + 4) = v146;
                *(v145 + 12) = 2080;
                v42[63].isa = v260;
                v42[64].isa = v258;
                swift_unknownObjectRetain();
                v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BFA0, &qword_1AC7A83B0);
                v151 = OUTLINED_FUNCTION_654(v150);
                v40 = v152;
                v153 = sub_1AC5CFE74(v151, v152, v271);

                *(v145 + 14) = v153;
                _os_log_impl(&dword_1AC5BC000, v41, v144, "SpeechAnalyzer.setWorkers: Re-resolving worker for %s with %s", v145, 0x16u);
                OUTLINED_FUNCTION_557();
                OUTLINED_FUNCTION_129();
                OUTLINED_FUNCTION_96_0();
              }

              else
              {

                __swift_destroy_boxed_opaque_existential_0(&v42[12].isa);
              }

              v154 = OUTLINED_FUNCTION_358();
              if (v155(v154))
              {
                OUTLINED_FUNCTION_146_1();

                swift_unknownObjectRelease();
                OUTLINED_FUNCTION_2_6();
                sub_1AC68A2BC();
                v224 = OUTLINED_FUNCTION_55_2();
                if (!__swift_getEnumTagSinglePayload(v224, v225, v40))
                {
                  OUTLINED_FUNCTION_397();
                  OUTLINED_FUNCTION_22_0();
                  (*(v226 + 8))(v41);
                  OUTLINED_FUNCTION_426();
                  v227 = OUTLINED_FUNCTION_364();
                  if (!OUTLINED_FUNCTION_63_3(v227))
                  {
                    v228 = sub_1AC79F7F8();
                    if (!OUTLINED_FUNCTION_75_1(v228))
                    {
                      OUTLINED_FUNCTION_40_4();
                      v229 = OUTLINED_FUNCTION_123();
                      v230(v229);
                    }

                    OUTLINED_FUNCTION_119_2();
                    if (!OUTLINED_FUNCTION_88_2())
                    {
                      OUTLINED_FUNCTION_40_4();
                      v231 = OUTLINED_FUNCTION_227();
                      v232(v231);
                    }

                    OUTLINED_FUNCTION_118_2();
                    OUTLINED_FUNCTION_370();
                    OUTLINED_FUNCTION_369();
                    OUTLINED_FUNCTION_368();
                    OUTLINED_FUNCTION_367();
                    v138 = v256;
                  }

                  v41 = v42[115].isa;
                  OUTLINED_FUNCTION_522(*(v138 + 48));

                  OUTLINED_FUNCTION_130_2();
                }

                __swift_destroy_boxed_opaque_existential_0(v270);
LABEL_98:
                OUTLINED_FUNCTION_480();
                while (1)
                {
                  v42[161].isa = v55;
                  OUTLINED_FUNCTION_183_1();
                  if (v56)
                  {
                    goto LABEL_123;
                  }

                  OUTLINED_FUNCTION_546();
                  OUTLINED_FUNCTION_4_4();
                  if (swift_dynamicCastClass())
                  {
                    swift_unknownObjectRetain();
                    v239 = swift_task_alloc();
                    v240 = OUTLINED_FUNCTION_499(v239);
                    *v240 = v241;
                    OUTLINED_FUNCTION_10_5(v240);
                    OUTLINED_FUNCTION_93_2();
                    OUTLINED_FUNCTION_405();

                    return sub_1AC66FC5C(v242, v243, v244);
                  }

                  OUTLINED_FUNCTION_177_1();
                  if (v55 == v233)
                  {

                    v234 = v41[2].isa;
                    v42[165].isa = v234;
                    if (!v234)
                    {
                      goto LABEL_109;
                    }

                    OUTLINED_FUNCTION_206_0();

                    OUTLINED_FUNCTION_393();
                    while (1)
                    {
                      OUTLINED_FUNCTION_330();
                      if (v56)
                      {
                        goto LABEL_124;
                      }

                      OUTLINED_FUNCTION_554();
                      OUTLINED_FUNCTION_4_4();
                      if (swift_dynamicCastClass())
                      {
                        swift_unknownObjectRetain();
                        v246 = swift_task_alloc();
                        v247 = OUTLINED_FUNCTION_425(v246);
                        *v247 = v248;
                        OUTLINED_FUNCTION_8_5(v247);
                        OUTLINED_FUNCTION_93_2();
                        OUTLINED_FUNCTION_405();

                        return sub_1AC6706AC(v249, v250, v251);
                      }

                      OUTLINED_FUNCTION_134_2();
                      if (v57)
                      {

                        goto LABEL_109;
                      }
                    }
                  }
                }
              }

              v156 = OUTLINED_FUNCTION_268();
              v157(v156);
              v158 = OUTLINED_FUNCTION_359();
              OUTLINED_FUNCTION_96(v158, v159, v138);
              v62 = v42 + 75;
              if (v57)
              {
                sub_1AC5C9624(v42[94].isa, &qword_1EB56C8A0, &qword_1AC7AADE8);
                type metadata accessor for CommandRecognizer(0);
                OUTLINED_FUNCTION_124_3();
                v160 = swift_dynamicCastClass();
                if (v160)
                {
                  v161 = v160;
                  OUTLINED_FUNCTION_431();
                  v261 = v163;
                  v263 = v162;
                  v164 = v42[105].isa;
                  v165 = v42[103].isa;
                  OUTLINED_FUNCTION_77_3();
                  sub_1AC68A130(v164, v165);
                  *(v165 + *(v256 + 32)) = 1;
                  v166 = *&v161[OBJC_IVAR____TtC6Speech17CommandRecognizer_activeSet];
                  v167 = v165 + *(v256 + 48);
                  v168 = *v167;
                  v169 = *(v167 + 8);
                  v170 = v166;
                  OUTLINED_FUNCTION_611();
                  swift_unknownObjectRetain();
                  v259 = v161;

                  *v167 = v168;
                  *(v167 + 8) = v166;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C8D8, &qword_1AC7AAE20);
                  OUTLINED_FUNCTION_64_4();
                  v173 = v172 & ~v171;
                  v174 = swift_allocObject();
                  *(v174 + 16) = xmmword_1AC7A6D00;
                  v175 = v174 + v173;
                  v55 = *(v255 + 12);
                  v176 = OUTLINED_FUNCTION_170();
                  sub_1AC68A130(v176, v177);
                  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BF78, &unk_1AC7A9270);
                  v179 = OUTLINED_FUNCTION_521(v178);
                  *(v179 + 16) = xmmword_1AC7A6D00;
                  sub_1AC68A30C(v270, v179 + 32);
                  *(v175 + v55) = v179;
                  sub_1AC79FE38();
                  OUTLINED_FUNCTION_493();
                  OUTLINED_FUNCTION_261();
                  OUTLINED_FUNCTION_4_6();
                  v180 = OUTLINED_FUNCTION_97_2();
                  sub_1AC684A7C(v180, v181, v182, v183, v184);
                  OUTLINED_FUNCTION_259();
                  v41 = swift_task_alloc();
                  v41[2].isa = v270;
                  v185 = OUTLINED_FUNCTION_12_5();
                  sub_1AC714E0C(v185, v186, v266);

                  swift_isUniquelyReferenced_nonNull_native();
                  OUTLINED_FUNCTION_161_1();
                  OUTLINED_FUNCTION_515();
                  sub_1AC6E0F44();
                  swift_unknownObjectRelease_n();
                  OUTLINED_FUNCTION_259();
                  OUTLINED_FUNCTION_2_6();
                  sub_1AC68A2BC();
                  v60 = v268;
                  v61 = &protocol descriptor for TranscriberBackedSpeechModule;
                  if (!__swift_getEnumTagSinglePayload(v261, 1, v263))
                  {
                    OUTLINED_FUNCTION_397();
                    OUTLINED_FUNCTION_22_0();
                    (*(v187 + 8))(v41);
                    OUTLINED_FUNCTION_446();
                    v188 = OUTLINED_FUNCTION_201_0();
                    if (!OUTLINED_FUNCTION_63_3(v188))
                    {
                      v189 = sub_1AC79F7F8();
                      if (!OUTLINED_FUNCTION_75_1(v189))
                      {
                        OUTLINED_FUNCTION_40_4();
                        v190 = OUTLINED_FUNCTION_123();
                        v191(v190);
                      }

                      OUTLINED_FUNCTION_119_2();
                      if (!OUTLINED_FUNCTION_88_2())
                      {
                        OUTLINED_FUNCTION_40_4();
                        v192 = OUTLINED_FUNCTION_227();
                        v193(v192);
                      }

                      OUTLINED_FUNCTION_118_2();
                      OUTLINED_FUNCTION_370();
                      OUTLINED_FUNCTION_369();
                      OUTLINED_FUNCTION_368();
                      OUTLINED_FUNCTION_367();
                    }

                    v41 = v42[115].isa;

                    OUTLINED_FUNCTION_468();
                    OUTLINED_FUNCTION_476();
                    OUTLINED_FUNCTION_413();
                    OUTLINED_FUNCTION_130_2();
                  }

                  OUTLINED_FUNCTION_2_6();
                  sub_1AC68A2BC();
                  v62 = v42 + 75;
                  goto LABEL_83;
                }

                OUTLINED_FUNCTION_146_1();

                swift_unknownObjectRelease();
                OUTLINED_FUNCTION_2_6();
                sub_1AC68A2BC();
                v206 = OUTLINED_FUNCTION_55_2();
                v60 = v268;
                v61 = &protocol descriptor for TranscriberBackedSpeechModule;
                if (__swift_getEnumTagSinglePayload(v206, v207, v40))
                {
LABEL_83:
                  __swift_destroy_boxed_opaque_existential_0(v270);
                  v40 = v257;
                  goto LABEL_84;
                }

                OUTLINED_FUNCTION_397();
                OUTLINED_FUNCTION_22_0();
                (*(v208 + 8))(v41);
                OUTLINED_FUNCTION_426();
                v209 = OUTLINED_FUNCTION_364();
                if (!OUTLINED_FUNCTION_63_3(v209))
                {
LABEL_76:
                  v212 = sub_1AC79F7F8();
                  if (!OUTLINED_FUNCTION_75_1(v212))
                  {
                    OUTLINED_FUNCTION_40_4();
                    v213 = OUTLINED_FUNCTION_123();
                    v214(v213);
                  }

                  OUTLINED_FUNCTION_119_2();
                  if (!OUTLINED_FUNCTION_88_2())
                  {
                    OUTLINED_FUNCTION_40_4();
                    v215 = OUTLINED_FUNCTION_227();
                    v216(v215);
                  }

                  OUTLINED_FUNCTION_118_2();
                  OUTLINED_FUNCTION_370();
                  OUTLINED_FUNCTION_369();
                  OUTLINED_FUNCTION_368();
                  OUTLINED_FUNCTION_367();
                  v138 = v256;
                }
              }

              else
              {
                OUTLINED_FUNCTION_431();
                v262 = v195;
                v264 = v194;
                v196 = v42[105].isa;
                v197 = v42[104].isa;
                sub_1AC61B988(v42[94].isa, v197);
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C8D8, &qword_1AC7AAE20);
                OUTLINED_FUNCTION_64_4();
                v198 = OUTLINED_FUNCTION_549();
                *(v198 + 16) = xmmword_1AC7A6D00;
                v199 = v198 + v55;
                v55 = *(v255 + 12);
                OUTLINED_FUNCTION_1_7();
                sub_1AC68A130(v197, v199);
                *(v199 + v55) = v266;
                sub_1AC79FE38();
                OUTLINED_FUNCTION_493();
                OUTLINED_FUNCTION_261();
                OUTLINED_FUNCTION_4_6();
                v200 = OUTLINED_FUNCTION_97_2();
                v138 = isa;
                sub_1AC684A7C(v200, v201, v202, v203, v204);
                OUTLINED_FUNCTION_259();
                v41 = v42 + 75;
                sub_1AC6EE14C(v196);
                OUTLINED_FUNCTION_611();
                swift_unknownObjectRelease();

                OUTLINED_FUNCTION_6_5();
                sub_1AC68A2BC();
                OUTLINED_FUNCTION_388();
                sub_1AC68A2BC();
                if (__swift_getEnumTagSinglePayload(v262, 1, v264))
                {
                  v60 = v268;
                  v61 = &protocol descriptor for TranscriberBackedSpeechModule;
                  goto LABEL_83;
                }

                OUTLINED_FUNCTION_397();
                OUTLINED_FUNCTION_22_0();
                (*(v210 + 8))(&v42[75].isa);
                OUTLINED_FUNCTION_426();
                v211 = OUTLINED_FUNCTION_364();
                v60 = v268;
                v61 = &protocol descriptor for TranscriberBackedSpeechModule;
                if (!OUTLINED_FUNCTION_63_3(v211))
                {
                  goto LABEL_76;
                }
              }

              v41 = v42[115].isa;
              v136 = *(v138 + 48);
              v137 = v254;
            }

            OUTLINED_FUNCTION_130_2();

            goto LABEL_83;
          }

          swift_unknownObjectRelease();
        }

LABEL_84:
        if (++v60 == v40)
        {
          goto LABEL_98;
        }
      }
    }

    v42[151].isa = v43;
    OUTLINED_FUNCTION_276();
    if (v43 >= v47)
    {
      break;
    }

    v40 = *(v44 + v46);
    v42[152].isa = v40;
    type metadata accessor for DictationTranscriber(0);
    OUTLINED_FUNCTION_287();
    swift_dynamicCastClass();
    OUTLINED_FUNCTION_177_1();
    if (v48)
    {
      swift_unknownObjectRetain();
      v49 = swift_task_alloc();
      v42[153].isa = v49;
      *v49 = v42;
      OUTLINED_FUNCTION_17_5(v49);
      OUTLINED_FUNCTION_154_1();
      OUTLINED_FUNCTION_405();

      return sub_1AC66E85C(v50, v51, v52);
    }
  }

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
  OUTLINED_FUNCTION_14_2(&qword_1ED9373D0);
LABEL_110:
  v42[171].isa = qword_1ED938600;
  OUTLINED_FUNCTION_9_6();
  OUTLINED_FUNCTION_405();

  return MEMORY[0x1EEE6DFA0](v235, v236, v237);
}

uint64_t sub_1AC667ADC()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_18();
  *v6 = v5;
  *(v3 + 1272) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_74_3();

    v7 = OUTLINED_FUNCTION_196_0();
  }

  else
  {
    v8 = *(v3 + 696);
    v7 = sub_1AC667C00;
  }

  return MEMORY[0x1EEE6DFA0](v7, v8, 0);
}

uint64_t sub_1AC668B94()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_18();
  *v6 = v5;
  *(v3 + 1312) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_74_3();

    v7 = OUTLINED_FUNCTION_196_0();
  }

  else
  {
    v8 = *(v3 + 696);
    v7 = sub_1AC668CB8;
  }

  return MEMORY[0x1EEE6DFA0](v7, v8, 0);
}

uint64_t sub_1AC668CB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  OUTLINED_FUNCTION_355();
  OUTLINED_FUNCTION_102();
  swift_unknownObjectRelease();
  v45 = v42[164];
  v46 = v42[160];
  OUTLINED_FUNCTION_457();
  while (v46 != v43)
  {
    v42[161] = v43;
    OUTLINED_FUNCTION_276();
    if (v43 >= v48)
    {
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v40 = *(v47 + v44);
    v42[162] = v40;
    type metadata accessor for EndpointDetector(0);
    OUTLINED_FUNCTION_287();
    swift_dynamicCastClass();
    OUTLINED_FUNCTION_284();
    if (v49)
    {
      swift_unknownObjectRetain();
      v50 = swift_task_alloc();
      v51 = OUTLINED_FUNCTION_499(v50);
      *v51 = v52;
      OUTLINED_FUNCTION_10_5(v51);
      OUTLINED_FUNCTION_154_1();
      OUTLINED_FUNCTION_291();

      return sub_1AC66FC5C(v53, v54, v55);
    }
  }

  OUTLINED_FUNCTION_206_0();

  v58 = *(v41 + 16);
  v42[165] = v58;
  if (v58)
  {
    OUTLINED_FUNCTION_206_0();

    v59 = 0;
    v60 = 32;
    while (1)
    {
      v42[166] = v59;
      if (v59 >= *(v41 + 16))
      {
        goto LABEL_22;
      }

      v42[167] = *(v41 + v60);
      type metadata accessor for SpeechDetector(0);
      OUTLINED_FUNCTION_4_4();
      if (swift_dynamicCastClass())
      {
        swift_unknownObjectRetain();
        v65 = swift_task_alloc();
        v66 = OUTLINED_FUNCTION_425(v65);
        *v66 = v67;
        OUTLINED_FUNCTION_8_5(v66);
        OUTLINED_FUNCTION_16_5();
        OUTLINED_FUNCTION_291();

        return sub_1AC6706AC(v68, v69, v70);
      }

      ++v59;
      v60 += 16;
      if (v58 == v59)
      {

        break;
      }
    }
  }

  v42[170] = v45;
  OUTLINED_FUNCTION_329();
  OUTLINED_FUNCTION_117_2();

  v42[74] = v40;
  v42[73] = MEMORY[0x1E69E7CC0];
  if (qword_1ED9373D0 == -1)
  {
    goto LABEL_15;
  }

LABEL_23:
  OUTLINED_FUNCTION_14_2(&qword_1ED9373D0);
LABEL_15:
  v42[171] = qword_1ED938600;
  OUTLINED_FUNCTION_9_6();
  OUTLINED_FUNCTION_291();

  return MEMORY[0x1EEE6DFA0](v61, v62, v63);
}

uint64_t sub_1AC668EE0()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_18();
  *v6 = v5;
  *(v3 + 1352) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_74_3();

    v7 = OUTLINED_FUNCTION_196_0();
  }

  else
  {
    v8 = *(v3 + 696);
    v7 = sub_1AC669004;
  }

  return MEMORY[0x1EEE6DFA0](v7, v8, 0);
}

uint64_t sub_1AC669004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  OUTLINED_FUNCTION_524();
  OUTLINED_FUNCTION_45();
  swift_unknownObjectRelease();
  v44 = v41[169];
  v45 = v41[165];
  OUTLINED_FUNCTION_457();
  while (v45 != v42)
  {
    v41[166] = v42;
    OUTLINED_FUNCTION_276();
    if (v42 >= v47)
    {
      __break(1u);
      goto LABEL_13;
    }

    v40 = *(v46 + v43);
    v41[167] = v40;
    type metadata accessor for SpeechDetector(0);
    OUTLINED_FUNCTION_287();
    swift_dynamicCastClass();
    OUTLINED_FUNCTION_284();
    if (v48)
    {
      swift_unknownObjectRetain();
      v49 = swift_task_alloc();
      v50 = OUTLINED_FUNCTION_425(v49);
      *v50 = v51;
      OUTLINED_FUNCTION_8_5(v50);
      OUTLINED_FUNCTION_154_1();
      OUTLINED_FUNCTION_523();

      return sub_1AC6706AC(v52, v53, v54);
    }
  }

  v41[170] = v44;
  OUTLINED_FUNCTION_329();
  OUTLINED_FUNCTION_117_2();

  v41[74] = v40;
  v41[73] = MEMORY[0x1E69E7CC0];
  if (qword_1ED9373D0 == -1)
  {
    goto LABEL_9;
  }

LABEL_13:
  OUTLINED_FUNCTION_14_2(&qword_1ED9373D0);
LABEL_9:
  v41[171] = qword_1ED938600;
  OUTLINED_FUNCTION_9_6();
  OUTLINED_FUNCTION_523();

  return MEMORY[0x1EEE6DFA0](v57, v58, v59);
}

uint64_t sub_1AC669164()
{
  OUTLINED_FUNCTION_85();
  *(v0 + 1376) = sub_1AC6808F8();
  v1 = OUTLINED_FUNCTION_89_2();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1AC6691C8()
{
  OUTLINED_FUNCTION_85();
  v1 = sub_1AC61C24C();
  v0[173] = v1;
  if (v1)
  {
    if (v1 < 1)
    {
      __break(1u);
      return MEMORY[0x1EEE6DFA0](v1, v2, v3);
    }

    v4 = v0[172];
    v0[175] = MEMORY[0x1E69E7CC0];
    v0[174] = 0;
    if ((v4 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1B26E95B0](0);
    }

    else
    {
      OUTLINED_FUNCTION_537(v1, v4);
    }

    OUTLINED_FUNCTION_266();
  }

  else
  {
    v0[177] = MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_490();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1AC66928C()
{
  v1 = *(v0 + 696);
  *(v0 + 498) = *(*(v0 + 1408) + 120);
  return OUTLINED_FUNCTION_15_5(sub_1AC6692B0, v1);
}

uint64_t sub_1AC6692B0()
{
  OUTLINED_FUNCTION_72();
  v11 = v0;
  if (*(v0 + 498))
  {
    v1 = (v0 + 584);

    MEMORY[0x1B26E8CF0](v2);
    if (*((*(v0 + 584) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 584) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1AC7A0178();
    }

    OUTLINED_FUNCTION_170();
    sub_1AC7A0198();
  }

  else
  {
    sub_1AC610C70(&v10, *(v0 + 1408));

    v1 = (v0 + 1400);
  }

  v3 = *v1;
  v4 = *(v0 + 1392) + 1;
  if (v4 == *(v0 + 1384))
  {
    *(v0 + 1416) = v3;
  }

  else
  {
    *(v0 + 1400) = v3;
    *(v0 + 1392) = v4;
    v5 = *(v0 + 1376);
    if ((v5 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1B26E95B0]();
    }

    else
    {
      OUTLINED_FUNCTION_535(v4, v5);
    }

    OUTLINED_FUNCTION_266();
  }

  OUTLINED_FUNCTION_490();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1AC6693DC()
{
  OUTLINED_FUNCTION_85();
  sub_1AC680618(*(v0 + 1416));
  v1 = OUTLINED_FUNCTION_89_2();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1AC669440()
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_55_3();
  if (off_1ED937D60 != -1)
  {
    goto LABEL_27;
  }

  while (1)
  {
    OUTLINED_FUNCTION_10_3(*(v0 + 928), qword_1ED9386C8);
    v1 = *(v0 + 592);

    v2 = sub_1AC79FDC8();
    v3 = sub_1AC7A05E8();
    if (OUTLINED_FUNCTION_366(v3))
    {
      v4 = OUTLINED_FUNCTION_448();
      *v4 = 134218240;
      OUTLINED_FUNCTION_175();
      swift_beginAccess();
      *(v4 + 4) = *(*(v0 + 600) + 16);
      *(v4 + 12) = 2048;
      *(v4 + 14) = sub_1AC672A40(v1);

      OUTLINED_FUNCTION_309();
      _os_log_impl(v5, v6, v7, v8, v9, 0x16u);
      OUTLINED_FUNCTION_96_0();
    }

    else
    {
    }

    v70 = *(v0 + 848);
    *(v0 + 1424) = type metadata accessor for SpeechRecognizerWorker(0);
    *(v0 + 576) = sub_1AC79FE38();
    OUTLINED_FUNCTION_175();
    swift_beginAccess();
    v10 = *(v0 + 600);
    *(v0 + 1432) = v10;
    v11 = v10 + 64;
    v12 = -1;
    v13 = -1 << *(v10 + 32);
    if (-v13 < 64)
    {
      v12 = ~(-1 << -v13);
    }

    v14 = v12 & *(v10 + 64);
    v15 = (63 - v13) >> 6;
    v68 = v10;

    v16 = 0;
    v67 = v1;
    v69 = v11;
    if (v14)
    {
      break;
    }

LABEL_9:
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v17 >= v15)
      {
        OUTLINED_FUNCTION_65_0();
        __swift_storeEnumTagSinglePayload(v57, v58, v59, v60);
        v14 = 0;
        goto LABEL_14;
      }

      v14 = *(v11 + 8 * v17);
      ++v16;
      if (v14)
      {
        v16 = v17;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_27:
    OUTLINED_FUNCTION_3_0();
    swift_once();
  }

  while (1)
  {
    v17 = v16;
LABEL_13:
    v18 = *(v0 + 896);
    v19 = *(v0 + 848);
    v20 = *(v0 + 816);
    v21 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v22 = v21 | (v17 << 6);
    OUTLINED_FUNCTION_1_7();
    sub_1AC68A130(v23, v20);
    v24 = *(*(v68 + 56) + 8 * v22);
    v25 = *(v70 + 48);
    v26 = OUTLINED_FUNCTION_204_0();
    sub_1AC61B988(v26, v27);
    *(v18 + v25) = v24;
    v28 = OUTLINED_FUNCTION_68_3();
    __swift_storeEnumTagSinglePayload(v28, v29, v30, v19);

    v1 = v67;
LABEL_14:
    v31 = *(v0 + 896);
    v32 = *(v0 + 848);
    v33 = OUTLINED_FUNCTION_359();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v33, v34, v32);
    v36 = *(v0 + 904);
    if (EnumTagSinglePayload)
    {
      memcpy(*(v0 + 904), v31, *(v0 + 872));
    }

    else
    {
      v37 = OUTLINED_FUNCTION_142();
      sub_1AC61B988(v37, v38);
      *(v36 + *(v70 + 48)) = *&v31[*(v70 + 48)];
      OUTLINED_FUNCTION_113_2();
      __swift_storeEnumTagSinglePayload(v39, v40, v41, v42);
    }

    v43 = *(v0 + 904);
    v44 = OUTLINED_FUNCTION_55_2();
    OUTLINED_FUNCTION_96(v44, v45, v46);
    if (v47)
    {
      break;
    }

    v48 = *(v0 + 960);
    v49 = *(v0 + 808);
    v50 = *(v0 + 696);

    sub_1AC61B988(v43, v49);
    v51 = swift_task_alloc();
    v51[2] = v49;
    v51[3] = v48;
    v51[4] = v50;
    v52 = sub_1AC6598AC(sub_1AC68A370, v51, v1);

    if (v52)
    {
      v53 = *(v0 + 816);
      OUTLINED_FUNCTION_1_7();
      sub_1AC68A130(v54, v53);
      v55 = OUTLINED_FUNCTION_142();
      sub_1AC672828(v55, v56);
    }

    OUTLINED_FUNCTION_2_6();
    sub_1AC68A2BC();
    v11 = v69;
    if (!v14)
    {
      goto LABEL_9;
    }
  }

  *(v0 + 1440) = *(v0 + 576);

  *(v0 + 1448) = sub_1AC605610(v61);
  OUTLINED_FUNCTION_222();
  OUTLINED_FUNCTION_26();

  return MEMORY[0x1EEE6DFA0](v62, v63, v64);
}

uint64_t sub_1AC669814()
{
  OUTLINED_FUNCTION_72();
  v1 = *(v0 + 696);
  sub_1AC680618(*(v0 + 1448));

  return MEMORY[0x1EEE6DFA0](sub_1AC669894, v1, 0);
}

uint64_t sub_1AC669894()
{
  v1 = v0[180];
  v2 = v0[171];
  v0[182] = *(v0[179] + 16);
  v0[183] = *(v1 + 16);
  return OUTLINED_FUNCTION_15_5(sub_1AC6698C4, v2);
}

uint64_t sub_1AC6698C4()
{
  OUTLINED_FUNCTION_85();
  sub_1AC680840(*(v0 + 1456) - *(v0 + 1464));
  v1 = OUTLINED_FUNCTION_89_2();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

void sub_1AC669930()
{
  v3 = *(v0 + 1432);
  v4 = *(v0 + 696);

  v5 = OBJC_IVAR____TtC6Speech14SpeechAnalyzer_internalContext;
  *(v0 + 1472) = OBJC_IVAR____TtC6Speech14SpeechAnalyzer_internalContext;
  *(v0 + 1480) = *(v4 + v5);
  v6 = *(v3 + 32);
  *(v0 + 499) = v6;
  v7 = -1;
  v8 = -1 << v6;
  if (-(-1 << v6) < 64)
  {
    v7 = ~(-1 << -(-1 << v6));
  }

  v9 = v7 & *(v3 + 64);
  *(v0 + 1488) = OBJC_IVAR____TtC6Speech14SpeechAnalyzer_options;
  v10 = MEMORY[0x1E69E7CC0];
  *(v0 + 1496) = MEMORY[0x1E69E7CC0];

  if (v9)
  {
    v1 = 0;
    v2 = *(v0 + 1432);
LABEL_8:
    v13 = *(v0 + 880);
    v14 = *(v0 + 848);
    v15 = *(v0 + 816);
    v16 = (v9 - 1) & v9;
    OUTLINED_FUNCTION_1_7();
    sub_1AC68A130(v17, v15);
    v9 = *(v2[7] + 8 * (__clz(__rbit64(v9)) | (v1 << 6)));
    v2 = *(v14 + 48);
    v18 = OUTLINED_FUNCTION_74_0();
    sub_1AC61B988(v18, v19);
    *(v2 + v13) = v9;
    v20 = OUTLINED_FUNCTION_68_3();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v14);

    v12 = v1;
  }

  else
  {
    v11 = 0;
    v12 = ((63 - v8) >> 6) - 1;
    while (v12 != v11)
    {
      v1 = v11 + 1;
      v2 = *(v0 + 1432);
      v9 = v2[v11++ + 9];
      if (v9)
      {
        goto LABEL_8;
      }
    }

    OUTLINED_FUNCTION_65_0();
    __swift_storeEnumTagSinglePayload(v75, v76, v77, v78);
    v16 = 0;
  }

  *(v0 + 1512) = v12;
  *(v0 + 1504) = v16;
  v23 = *(v0 + 848);
  v24 = OUTLINED_FUNCTION_178_1();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v24, v25, v23);
  v27 = *(v0 + 888);
  if (EnumTagSinglePayload)
  {
    v28 = OUTLINED_FUNCTION_172();
    memcpy(v28, v29, v30);
  }

  else
  {
    v31 = OUTLINED_FUNCTION_170();
    sub_1AC61B988(v31, v32);
    OUTLINED_FUNCTION_325();
    OUTLINED_FUNCTION_113_2();
    __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
  }

  v37 = *(v0 + 888);
  v38 = *(v0 + 848);
  OUTLINED_FUNCTION_104_2(v37);
  if (v39)
  {
    v40 = *(v0 + 1096);

    v41 = *(v40 + 16);
    *(v0 + 1560) = v41;
    if (v41)
    {
      v42 = v0 + 456;
      v43 = (*(v0 + 1096) + 32);
      v2 = &qword_1EB56C8C8;
      v99 = v0;
      do
      {
        v44 = *v43;
        ObjectType = swift_getObjectType();
        v46 = dynamic_cast_existential_1_conditional(v44, ObjectType, &protocol descriptor for TranscriberBackedSpeechModule);
        if (v46)
        {
          OUTLINED_FUNCTION_379(v46);
          swift_unknownObjectRetain();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C8C8, &qword_1AC7AAE00);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BF80, &qword_1AC7A8390);
          OUTLINED_FUNCTION_203_0();
          if (swift_dynamicCast())
          {
            sub_1AC5D9384((v0 + 256), v0 + 216);
            type metadata accessor for CommandRecognizer(0);
            OUTLINED_FUNCTION_93();
            if (swift_dynamicCastClass())
            {
              OUTLINED_FUNCTION_659();
              v47 = v42;
              v48 = off_1EB56C8E0;
              swift_unknownObjectRetain();
              v49 = v48(&OBJC_IVAR____TtC6Speech17CommandRecognizer_transcriber, &protocol descriptor for TranscriberBackedSpeechModule);
              v2 = &qword_1EB56C8C8;
              v42 = v47;
              v0 = v99;
              sub_1AC71E6B4(v49);
              swift_unknownObjectRelease();
            }

            swift_unknownObjectRelease();
            __swift_destroy_boxed_opaque_existential_0((v0 + 216));
          }

          else
          {
            swift_unknownObjectRelease();
          }
        }

        v43 += 2;
        --v41;
      }

      while (v41);
      v27 = 0;
      v9 = *(v0 + 1096);
      v1 = v9 + 32;
      v10 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        OUTLINED_FUNCTION_629();
        if (v50)
        {
          __break(1u);
          goto LABEL_51;
        }

        *(v0 + 1584) = *v1;
        type metadata accessor for LanguageDetector(0);
        OUTLINED_FUNCTION_93();
        v51 = swift_dynamicCastClass();
        *(v0 + 1592) = v51;
        if (v51)
        {
          break;
        }

        OUTLINED_FUNCTION_626();
        if (v39)
        {
          goto LABEL_28;
        }
      }

      v79 = v51;
      OUTLINED_FUNCTION_567();
      OUTLINED_FUNCTION_487(OBJC_IVAR____TtC6Speech16LanguageDetector_detectorOptions);
      sub_1AC68A29C(v79);
      swift_task_alloc();
      OUTLINED_FUNCTION_100();
      *(v0 + 1600) = v80;
      *v80 = v81;
      OUTLINED_FUNCTION_57_4(v80);
      OUTLINED_FUNCTION_251();

      sub_1AC765C80();
    }

    else
    {
LABEL_28:
      *(v0 + 1624) = v10;
      sub_1AC7A0338();
      v52 = *(v10 + 16);
      *(v0 + 1632) = v52;
      if (v52)
      {
        OUTLINED_FUNCTION_238();
        v98 = *(v0 + 728);
        OUTLINED_FUNCTION_624();
        OUTLINED_FUNCTION_310(v53);
        swift_getObjectType();
        OUTLINED_FUNCTION_235();
        v100 = swift_allocObject();
        OUTLINED_FUNCTION_444(v100);
        OUTLINED_FUNCTION_99();
        v96 = swift_allocObject();
        OUTLINED_FUNCTION_290(v96);
        v97 = *(v1 + 16);
        v54 = OUTLINED_FUNCTION_321();
        v55(v54);
        OUTLINED_FUNCTION_347();
        OUTLINED_FUNCTION_173_1();
        v56 = OUTLINED_FUNCTION_656(&unk_1F21342B8);
        v57 = OUTLINED_FUNCTION_441(v56);
        v58(v57);
        *(v2 + v56) = v100;
        *(v56 + v9) = v96;
        OUTLINED_FUNCTION_235();
        v59 = swift_allocObject();
        OUTLINED_FUNCTION_335(v59);
        swift_weakInit();
        v97(v98, v41, v27);
        v60 = OUTLINED_FUNCTION_655(&unk_1F21342E0);
        v61 = OUTLINED_FUNCTION_345(v60);
        v62(v61);
        *(v2 + v60) = v9;
        OUTLINED_FUNCTION_610();
        swift_unknownObjectRetain();

        v63 = swift_task_alloc();
        v64 = OUTLINED_FUNCTION_589(v63);
        *v64 = v65;
        v66 = OUTLINED_FUNCTION_35_5(v64);
        OUTLINED_FUNCTION_617(v66, sub_1AC68A188);
        OUTLINED_FUNCTION_251();

        __asm { BRAA            X6, X16 }
      }

      *(v0 + 1688) = v10;
      v83 = *(v0 + 1472);
      v84 = *(v0 + 696);

      *(v0 + 1696) = *(v84 + v83);
      v85 = sub_1AC61C24C();
      *(v0 + 1704) = v85;

      if (!v85)
      {
        OUTLINED_FUNCTION_27_5();
        OUTLINED_FUNCTION_207_0();
        OUTLINED_FUNCTION_233();
        v93();

        OUTLINED_FUNCTION_3_7();
        sub_1AC68A2BC();

        OUTLINED_FUNCTION_29();
        OUTLINED_FUNCTION_251();

        __asm { BRAA            X1, X16 }
      }

      OUTLINED_FUNCTION_514();
      if (v39)
      {
        OUTLINED_FUNCTION_513();
        if (!v88)
        {
          __break(1u);
          return;
        }

        OUTLINED_FUNCTION_537(v86, v87);
      }

      else
      {
LABEL_51:
        MEMORY[0x1B26E95B0](0);
      }

      OUTLINED_FUNCTION_343();
      v89 = swift_task_alloc();
      v90 = OUTLINED_FUNCTION_497(v89);
      *v90 = v91;
      OUTLINED_FUNCTION_23_4(v90);
      OUTLINED_FUNCTION_251();

      sub_1AC690BA8();
    }
  }

  else
  {
    *(v0 + 1520) = *(v37 + *(v38 + 48));
    v69 = OUTLINED_FUNCTION_198();
    sub_1AC61B988(v69, v70);
    v71 = OUTLINED_FUNCTION_124_0();
    *(v0 + 1528) = sub_1AC6DC7DC(v71, v72);
    v73 = swift_task_alloc();
    *(v0 + 1536) = v73;
    *v73 = v0;
    OUTLINED_FUNCTION_185_1(v73);
    OUTLINED_FUNCTION_251();

    sub_1AC68E9AC();
  }
}

uint64_t sub_1AC66A204()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  *v4 = *v1;
  v3[193] = v5;
  v3[194] = v0;

  if (v0)
  {

    v6 = OUTLINED_FUNCTION_196_0();
  }

  else
  {
    v7 = v3[87];
    v6 = sub_1AC66A33C;
  }

  return MEMORY[0x1EEE6DFA0](v6, v7, 0);
}

void sub_1AC66A33C()
{

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 1496);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_69;
  }

  while (1)
  {
    v4 = *(v3 + 16);
    if (v4 >= *(v3 + 24) >> 1)
    {
      OUTLINED_FUNCTION_247();
      sub_1AC5CB1EC();
      v3 = v122;
    }

    v5 = *(v0 + 1544);
    v6 = *(v0 + 1520);
    OUTLINED_FUNCTION_21_5();
    v9 = sub_1AC68A730(v7, v8);
    *(v3 + 16) = v4 + 1;
    v10 = v3 + 16 * v4;
    *(v10 + 32) = v5;
    *(v10 + 40) = v9;
    v11 = v6[2];
    if (v11)
    {
      v12 = *(v0 + 1544);
      v6 = &qword_1EB56BF80;
      v13 = *(v0 + 1520) + 32;
      v1 = &unk_1EB56B000;
      do
      {
        sub_1AC68A30C(v13, v0 + 296);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BF80, &qword_1AC7A8390);
        v14 = OUTLINED_FUNCTION_433();
        v15 = type metadata accessor for CommandRecognizer(v14);
        if (OUTLINED_FUNCTION_282(v0 + 528, v16, v17, v15))
        {

          sub_1AC71E6B4(v12);
        }

        else
        {
          v18 = type metadata accessor for EndpointDetector(0);
          if (OUTLINED_FUNCTION_282(v0 + 520, v19, v20, v18))
          {

            sub_1AC762C50(v12);
          }

          else
          {
            v21 = type metadata accessor for SpeechDetector(0);
            if (OUTLINED_FUNCTION_282(v0 + 536, v22, v23, v21))
            {

              sub_1AC6B1964(v12);
            }

            else
            {
              v24 = type metadata accessor for Transcriber();
              if (!OUTLINED_FUNCTION_282(v0 + 544, v25, v26, v24))
              {
                v27 = type metadata accessor for SpeechTranscriber(0);
                if (!OUTLINED_FUNCTION_282(v0 + 552, v28, v29, v27))
                {
                  v30 = type metadata accessor for DictationTranscriber(0);
                  if (!OUTLINED_FUNCTION_282(v0 + 560, v31, v32, v30))
                  {
                    v33 = type metadata accessor for NormalizingTranscriber(0);
                    if (!OUTLINED_FUNCTION_282(v0 + 568, v34, v35, v33))
                    {
                      goto LABEL_18;
                    }
                  }
                }
              }

              sub_1AC7442B0(v12);
            }
          }
        }

LABEL_18:
        __swift_destroy_boxed_opaque_existential_0((v0 + 296));
        v13 += 40;
        --v11;
      }

      while (v11);
    }

    OUTLINED_FUNCTION_2_6();
    sub_1AC68A2BC();
    v36 = *(v0 + 1512);
    v37 = *(v0 + 1504);
    *(v0 + 1496) = v3;
    if (!v37)
    {
      while (1)
      {
        v38 = v36 + 1;
        if (__OFADD__(v36, 1))
        {
          break;
        }

        if (v38 >= (((1 << *(v0 + 499)) + 63) >> 6))
        {
          OUTLINED_FUNCTION_65_0();
          __swift_storeEnumTagSinglePayload(v101, v102, v103, v104);
          v42 = 0;
          goto LABEL_26;
        }

        v6 = *(v0 + 1432);
        v37 = v6[v38 + 8];
        ++v36;
        if (v37)
        {
          v36 = v38;
          goto LABEL_25;
        }
      }

      __break(1u);
      goto LABEL_68;
    }

    v6 = *(v0 + 1432);
LABEL_25:
    v39 = *(v0 + 880);
    v40 = *(v0 + 848);
    v41 = *(v0 + 816);
    v42 = ((v37 - 1) & v37);
    v43 = __clz(__rbit64(v37)) | (v36 << 6);
    OUTLINED_FUNCTION_1_7();
    sub_1AC68A130(v44, v41);
    v6 = *(v6[7] + 8 * v43);
    v45 = *(v40 + 48);
    v46 = OUTLINED_FUNCTION_74_0();
    sub_1AC61B988(v46, v47);
    *(v39 + v45) = v6;
    v48 = OUTLINED_FUNCTION_68_3();
    __swift_storeEnumTagSinglePayload(v48, v49, v50, v40);

LABEL_26:
    *(v0 + 1512) = v36;
    *(v0 + 1504) = v42;
    v51 = *(v0 + 848);
    v52 = OUTLINED_FUNCTION_178_1();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v52, v53, v51);
    v55 = *(v0 + 888);
    if (EnumTagSinglePayload)
    {
      v56 = OUTLINED_FUNCTION_172();
      memcpy(v56, v57, v58);
    }

    else
    {
      v59 = OUTLINED_FUNCTION_170();
      sub_1AC61B988(v59, v60);
      OUTLINED_FUNCTION_325();
      OUTLINED_FUNCTION_113_2();
      __swift_storeEnumTagSinglePayload(v61, v62, v63, v64);
    }

    v65 = *(v0 + 888);
    v66 = *(v0 + 848);
    OUTLINED_FUNCTION_104_2(v65);
    if (!v67)
    {
      *(v0 + 1520) = *(v65 + *(v66 + 48));
      v95 = OUTLINED_FUNCTION_198();
      sub_1AC61B988(v95, v96);
      v97 = OUTLINED_FUNCTION_124_0();
      *(v0 + 1528) = sub_1AC6DC7DC(v97, v98);
      v99 = swift_task_alloc();
      *(v0 + 1536) = v99;
      *v99 = v0;
      OUTLINED_FUNCTION_185_1(v99);
      OUTLINED_FUNCTION_251();

      sub_1AC68E9AC();
      return;
    }

    v68 = *(v0 + 1096);

    v69 = *(v68 + 16);
    *(v0 + 1560) = v69;
    if (!v69)
    {
      break;
    }

    v126 = v3;
    v70 = (*(v0 + 1096) + 32);
    v42 = &qword_1EB56C8C8;
    do
    {
      v1 = *v70;
      ObjectType = swift_getObjectType();
      v72 = dynamic_cast_existential_1_conditional(v1, ObjectType, &protocol descriptor for TranscriberBackedSpeechModule);
      if (v72)
      {
        OUTLINED_FUNCTION_379(v72);
        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C8C8, &qword_1AC7AAE00);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BF80, &qword_1AC7A8390);
        OUTLINED_FUNCTION_203_0();
        if (swift_dynamicCast())
        {
          sub_1AC5D9384((v0 + 256), v0 + 216);
          type metadata accessor for CommandRecognizer(0);
          OUTLINED_FUNCTION_93();
          if (swift_dynamicCastClass())
          {
            OUTLINED_FUNCTION_659();
            v73 = off_1EB56C8E0;
            swift_unknownObjectRetain();
            v74 = v73(&OBJC_IVAR____TtC6Speech17CommandRecognizer_transcriber, &protocol descriptor for TranscriberBackedSpeechModule);
            v42 = &qword_1EB56C8C8;
            sub_1AC71E6B4(v74);
            swift_unknownObjectRelease();
          }

          swift_unknownObjectRelease();
          __swift_destroy_boxed_opaque_existential_0((v0 + 216));
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }

      v70 += 2;
      --v69;
    }

    while (v69);
    v55 = 0;
    v6 = *(v0 + 1096);
    v36 = (v6 + 4);
    v3 = v126;
    while (1)
    {
      OUTLINED_FUNCTION_629();
      if (v75)
      {
        break;
      }

      *(v0 + 1584) = *v36;
      type metadata accessor for LanguageDetector(0);
      OUTLINED_FUNCTION_93();
      v76 = swift_dynamicCastClass();
      *(v0 + 1592) = v76;
      if (v76)
      {
        v105 = v76;
        OUTLINED_FUNCTION_567();
        OUTLINED_FUNCTION_487(OBJC_IVAR____TtC6Speech16LanguageDetector_detectorOptions);
        sub_1AC68A29C(v105);
        swift_task_alloc();
        OUTLINED_FUNCTION_100();
        *(v0 + 1600) = v106;
        *v106 = v107;
        OUTLINED_FUNCTION_57_4(v106);
        OUTLINED_FUNCTION_251();

        sub_1AC765C80();
        return;
      }

      OUTLINED_FUNCTION_626();
      if (v67)
      {
        goto LABEL_45;
      }
    }

LABEL_68:
    __break(1u);
LABEL_69:
    OUTLINED_FUNCTION_53_3();
    sub_1AC5CB1EC();
    v3 = v121;
  }

LABEL_45:
  *(v0 + 1624) = v3;
  sub_1AC7A0338();
  v77 = *(v3 + 16);
  *(v0 + 1632) = v77;
  if (v77)
  {
    OUTLINED_FUNCTION_238();
    OUTLINED_FUNCTION_607();
    v127 = v78;
    OUTLINED_FUNCTION_624();
    OUTLINED_FUNCTION_310(v79);
    swift_getObjectType();
    OUTLINED_FUNCTION_235();
    v128 = swift_allocObject();
    OUTLINED_FUNCTION_444(v128);
    OUTLINED_FUNCTION_99();
    v123 = swift_allocObject();
    OUTLINED_FUNCTION_290(v123);
    v124 = *(v36 + 16);
    v80 = OUTLINED_FUNCTION_321();
    v81(v80);
    OUTLINED_FUNCTION_347();
    OUTLINED_FUNCTION_173_1();
    v82 = OUTLINED_FUNCTION_656(&unk_1F21342B8);
    v83 = OUTLINED_FUNCTION_383(v82);
    v84(v83);
    *(v42 + v1) = v128;
    *(v6 + v1) = v123;
    OUTLINED_FUNCTION_235();
    v85 = swift_allocObject();
    OUTLINED_FUNCTION_335(v85);
    swift_weakInit();
    v124(v127, v125, v55);
    v86 = OUTLINED_FUNCTION_655(&unk_1F21342E0);
    v87 = OUTLINED_FUNCTION_345(v86);
    v88(v87);
    *(v42 + v86) = v6;
    OUTLINED_FUNCTION_610();
    swift_unknownObjectRetain();

    v89 = swift_task_alloc();
    v90 = OUTLINED_FUNCTION_589(v89);
    *v90 = v91;
    v92 = OUTLINED_FUNCTION_35_5(v90);
    OUTLINED_FUNCTION_617(v92, sub_1AC68A188);
    OUTLINED_FUNCTION_251();

    __asm { BRAA            X6, X16 }
  }

  v109 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_558();

  *(v0 + 1696) = *(v6 + v55);
  v110 = sub_1AC61C24C();
  OUTLINED_FUNCTION_561(v110);
  if (!v109)
  {
    OUTLINED_FUNCTION_27_5();
    OUTLINED_FUNCTION_52_2();
    OUTLINED_FUNCTION_340();
    OUTLINED_FUNCTION_233();
    v118();

    OUTLINED_FUNCTION_3_7();
    sub_1AC68A2BC();

    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_251();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_514();
  if (v67)
  {
    OUTLINED_FUNCTION_513();
    if (!v113)
    {
      __break(1u);
      return;
    }

    OUTLINED_FUNCTION_537(v111, v112);
  }

  else
  {
    MEMORY[0x1B26E95B0](0);
  }

  OUTLINED_FUNCTION_343();
  v114 = swift_task_alloc();
  v115 = OUTLINED_FUNCTION_497(v114);
  *v115 = v116;
  OUTLINED_FUNCTION_23_4(v115);
  OUTLINED_FUNCTION_251();

  sub_1AC690BA8();
}

uint64_t sub_1AC66ADD4()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  *v4 = *v1;
  v3[201] = v5;
  v3[202] = v0;

  if (v0)
  {
    v6 = v3[87];
    sub_1AC68A2AC(v3[60]);

    v7 = sub_1AC66CC08;
    v8 = v6;
  }

  else
  {
    v9 = v3[87];
    sub_1AC68A2AC(v3[60]);
    v7 = sub_1AC66AF24;
    v8 = v9;
  }

  return MEMORY[0x1EEE6DFA0](v7, v8, 0);
}

void sub_1AC66AF24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_633();
  v35 = *(v31 + 1608);
  if (v35)
  {

    sub_1AC6AB720(v36);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v38 = *(v31 + 1576);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_30:
      OUTLINED_FUNCTION_31_2();
      sub_1AC5CB1EC();
      v38 = v102;
    }

    v40 = *(v38 + 16);
    v39 = *(v38 + 24);
    v30 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      OUTLINED_FUNCTION_9(v39);
      sub_1AC5CB1EC();
      v38 = v103;
    }

    swift_unknownObjectRelease();
    v41 = sub_1AC68A730(&qword_1EB56C8C0, type metadata accessor for LanguageDetectorWorker);
    *(v38 + 16) = v30;
    v42 = v38 + 16 * v40;
    *(v42 + 32) = v35;
    *(v42 + 40) = v41;
  }

  else
  {
    swift_unknownObjectRelease();
    v38 = *(v31 + 1576);
  }

  v43 = *(v31 + 1560);
  OUTLINED_FUNCTION_457();
  while (v43 != v32)
  {
    *(v31 + 1576) = v38;
    *(v31 + 1568) = v32;
    OUTLINED_FUNCTION_276();
    if (v32 >= v45)
    {
      __break(1u);
      goto LABEL_30;
    }

    v35 = *(v44 + v33);
    *(v31 + 1584) = v35;
    type metadata accessor for LanguageDetector(0);
    OUTLINED_FUNCTION_287();
    *(v31 + 1592) = swift_dynamicCastClass();
    OUTLINED_FUNCTION_284();
    if (v46)
    {
      v47 = v46;
      OUTLINED_FUNCTION_567();
      v48 = *(v47 + OBJC_IVAR____TtC6Speech16LanguageDetector_detectorOptions + 8);
      v49 = *(v47 + OBJC_IVAR____TtC6Speech16LanguageDetector_detectorOptions + 16);
      *(v31 + 480) = *(v47 + OBJC_IVAR____TtC6Speech16LanguageDetector_detectorOptions);
      *(v31 + 488) = v48;
      *(v31 + 496) = v49;
      swift_unknownObjectRetain();
      v50 = OUTLINED_FUNCTION_73_1();
      sub_1AC68A29C(v50);
      swift_task_alloc();
      OUTLINED_FUNCTION_100();
      *(v31 + 1600) = v51;
      *v51 = v52;
      OUTLINED_FUNCTION_57_4(v51);
      OUTLINED_FUNCTION_262();

      sub_1AC765C80();
      return;
    }
  }

  *(v31 + 1624) = v38;
  sub_1AC7A0338();
  v54 = *(v38 + 16);
  *(v31 + 1632) = v54;
  if (v54)
  {
    OUTLINED_FUNCTION_238();
    OUTLINED_FUNCTION_607();
    v109 = v55;
    OUTLINED_FUNCTION_624();
    OUTLINED_FUNCTION_310(v56);
    ObjectType = swift_getObjectType();
    OUTLINED_FUNCTION_235();
    v112 = swift_allocObject();
    OUTLINED_FUNCTION_444(v112);
    OUTLINED_FUNCTION_99();
    v104 = swift_allocObject();
    OUTLINED_FUNCTION_290(v104);
    v105 = *(v32 + 2);
    v57 = OUTLINED_FUNCTION_321();
    v58(v57);
    OUTLINED_FUNCTION_347();
    OUTLINED_FUNCTION_173_1();
    v59 = OUTLINED_FUNCTION_656(&unk_1F21342B8);
    v60 = OUTLINED_FUNCTION_383(v59);
    v61(v60);
    *(v34 + v33) = v112;
    *(v43 + v34) = v104;
    OUTLINED_FUNCTION_235();
    v62 = swift_allocObject();
    OUTLINED_FUNCTION_335(v62);
    swift_weakInit();
    v105(v109, a21, v30);
    v63 = OUTLINED_FUNCTION_655(&unk_1F21342E0);
    v64 = OUTLINED_FUNCTION_345(v63);
    v65(v64);
    *(v63 + v33) = v43;
    v110 = OUTLINED_FUNCTION_610();
    swift_unknownObjectRetain();

    v113 = v32 + *v32;
    v66 = swift_task_alloc();
    v67 = OUTLINED_FUNCTION_589(v66);
    *v67 = v68;
    v69 = OUTLINED_FUNCTION_35_5(v67);
    OUTLINED_FUNCTION_617(v69, sub_1AC68A188);
    OUTLINED_FUNCTION_262();

    v76(v70, v71, v72, v73, v74, v75, v76, v77, a9, a10, a11, a12, a13, a14, a15, v30, a17, v34, v104, v105, a21, v30, v35, v38, ObjectType, v110, v113, a28, a29, a30);
  }

  else
  {
    v79 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_558();

    *(v31 + 1696) = *(v43 + v30);
    v80 = sub_1AC61C24C();
    OUTLINED_FUNCTION_561(v80);
    if (v79)
    {
      OUTLINED_FUNCTION_514();
      if (v81)
      {
        OUTLINED_FUNCTION_513();
        if (!v84)
        {
          __break(1u);
          return;
        }

        OUTLINED_FUNCTION_537(v82, v83);
      }

      else
      {
        MEMORY[0x1B26E95B0](0);
      }

      OUTLINED_FUNCTION_343();
      v85 = swift_task_alloc();
      v86 = OUTLINED_FUNCTION_497(v85);
      *v86 = v87;
      OUTLINED_FUNCTION_23_4(v86);
      OUTLINED_FUNCTION_262();

      sub_1AC690BA8();
    }

    else
    {
      OUTLINED_FUNCTION_27_5();
      OUTLINED_FUNCTION_52_2();
      OUTLINED_FUNCTION_260();
      v106 = v90;
      v108 = v89;
      OUTLINED_FUNCTION_340();
      v111 = v92;
      v114 = v91;
      OUTLINED_FUNCTION_233();
      v93();

      OUTLINED_FUNCTION_3_7();
      sub_1AC68A2BC();

      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_262();

      v95(v94, v95, v96, v97, v98, v99, v100, v101, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, v106, v108, v111, v114, a28, a29, a30);
    }
  }
}

uint64_t sub_1AC66B518()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_50();
  v2 = *(v1 + 696);
  v3 = *v0;
  OUTLINED_FUNCTION_18();
  *v4 = v3;

  return MEMORY[0x1EEE6DFA0](sub_1AC66B674, v2, 0);
}

void sub_1AC66B674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_633();
  v33 = v31[205];
  v34 = v31[204];
  swift_unknownObjectRelease();
  if (v33 + 1 == v34)
  {
    v35 = 0;
    v36 = MEMORY[0x1E69E7CC0];
    v106 = MEMORY[0x1E69E7CC0];
    v37 = v31[203] + 32;
LABEL_3:
    v31[211] = v36;
    v38 = v31[204];
    v39 = (v37 + 16 * v35);
    v40 = v31[203];
    while (v38 != v35)
    {
      if (v35 >= *(v40 + 16))
      {
        __break(1u);
        goto LABEL_28;
      }

      v41 = v39 + 2;
      ++v35;
      v42 = *v39;
      v43 = object_getClass(*v39) != _TtC6Speech22SpeechRecognizerWorker || v42 == 0;
      v39 = v41;
      if (!v43)
      {
        v44 = swift_unknownObjectRetain();
        MEMORY[0x1B26E8CF0](v44);
        OUTLINED_FUNCTION_483();
        if (v45)
        {
          sub_1AC7A0178();
        }

        OUTLINED_FUNCTION_172();
        sub_1AC7A0198();
        v36 = v106;
        goto LABEL_3;
      }
    }

    v72 = v31[184];
    v73 = v31[87];

    v31[212] = *(v73 + v72);
    v74 = sub_1AC61C24C();
    OUTLINED_FUNCTION_561(v74);
    if (v36)
    {
      OUTLINED_FUNCTION_514();
      if (v43)
      {
        OUTLINED_FUNCTION_513();
        if (!v77)
        {
          __break(1u);
          return;
        }

        OUTLINED_FUNCTION_537(v75, v76);
      }

      else
      {
LABEL_28:
        MEMORY[0x1B26E95B0](0);
      }

      OUTLINED_FUNCTION_343();
      v78 = swift_task_alloc();
      v79 = OUTLINED_FUNCTION_497(v78);
      *v79 = v80;
      OUTLINED_FUNCTION_23_4(v79);
      OUTLINED_FUNCTION_262();

      sub_1AC690BA8();
      return;
    }

    OUTLINED_FUNCTION_27_5();
    OUTLINED_FUNCTION_207_0();
    v95 = v31[100];
    v97 = v31[97];
    v99 = v31[94];
    v96 = v31[93];
    v102 = v31[92];
    v105 = v31[91];
    OUTLINED_FUNCTION_233();
    v82();

    OUTLINED_FUNCTION_3_7();
    sub_1AC68A2BC();

    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_262();

    v84(v83, v84, v85, v86, v87, v88, v89, v90, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, v95, v96, v97, v99, v102, v105, v106, a28, a29, a30);
  }

  else
  {
    ++v31[205];
    v94 = v31[93];
    v91 = v31[92];
    v100 = v31[91];
    v46 = v31[90];
    v47 = v31[89];
    OUTLINED_FUNCTION_624();
    OUTLINED_FUNCTION_310(v49 + 16 * v48);
    ObjectType = swift_getObjectType();
    OUTLINED_FUNCTION_235();
    v103 = swift_allocObject();
    OUTLINED_FUNCTION_444(v103);
    OUTLINED_FUNCTION_99();
    v92 = swift_allocObject();
    OUTLINED_FUNCTION_290(v92);
    v93 = *(v47 + 2);
    v50 = OUTLINED_FUNCTION_387();
    v51(v50);
    OUTLINED_FUNCTION_347();
    OUTLINED_FUNCTION_173_1();
    v52 = OUTLINED_FUNCTION_656(&unk_1F21342B8);
    v53 = OUTLINED_FUNCTION_441(v52);
    v54(v53);
    *(v52 + v46) = v103;
    *(v52 + v32) = v92;
    OUTLINED_FUNCTION_235();
    v55 = swift_allocObject();
    OUTLINED_FUNCTION_335(v55);
    swift_weakInit();
    v93(v100, v94, v30);
    v56 = OUTLINED_FUNCTION_655(&unk_1F21342E0);
    v57 = OUTLINED_FUNCTION_345(v56);
    v58(v57);
    *(v56 + v46) = v32;
    v101 = OUTLINED_FUNCTION_610();
    swift_unknownObjectRetain();

    v104 = v47 + *v47;
    v59 = swift_task_alloc();
    v60 = OUTLINED_FUNCTION_589(v59);
    *v60 = v61;
    v62 = OUTLINED_FUNCTION_35_5(v60);
    OUTLINED_FUNCTION_617(v62, sub_1AC68A188);
    OUTLINED_FUNCTION_262();

    v69(v63, v64, v65, v66, v67, v68, v69, v70, a9, a10, a11, a12, a13, v91, v30, a16, v52, v92, v93, v94, v30, v34, v33, ObjectType, v101, v104, a27, a28, a29, a30);
  }
}

uint64_t sub_1AC66BBD4()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_18();
  *v6 = v5;
  *(v3 + 1736) = v0;

  if (v0)
  {
    v7 = *(v3 + 696);

    v8 = sub_1AC66CDC0;
    v9 = v7;
  }

  else
  {
    v9 = *(v3 + 696);
    v8 = sub_1AC66BCE4;
  }

  return MEMORY[0x1EEE6DFA0](v8, v9, 0);
}

void sub_1AC66BCE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_633();

  v31 = v30[215];
  if (v31 == v30[213])
  {
    OUTLINED_FUNCTION_27_5();
    OUTLINED_FUNCTION_52_2();
    OUTLINED_FUNCTION_260();
    v53 = v33;
    v54 = v32;
    OUTLINED_FUNCTION_340();
    v55 = v35;
    v56 = v34;
    OUTLINED_FUNCTION_233();
    v36();

    OUTLINED_FUNCTION_3_7();
    sub_1AC68A2BC();

    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_262();

    v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, v53, v54, v55, v56, a28, a29, a30);
    return;
  }

  OUTLINED_FUNCTION_514();
  if (v45)
  {
    OUTLINED_FUNCTION_513();
    if (v31 >= v47)
    {
LABEL_14:
      __break(1u);
      return;
    }

    v52 = *(v46 + 8 * v31 + 32);
  }

  else
  {
    v52 = MEMORY[0x1B26E95B0](v31);
  }

  v30[214] = v52;
  v30[215] = v31 + 1;
  if (__OFADD__(v31, 1))
  {
    __break(1u);
    goto LABEL_14;
  }

  v48 = swift_task_alloc();
  v49 = OUTLINED_FUNCTION_497(v48);
  *v49 = v50;
  OUTLINED_FUNCTION_23_4(v49);
  OUTLINED_FUNCTION_262();

  sub_1AC690BA8();
}

uint64_t sub_1AC66BEF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_250();
  OUTLINED_FUNCTION_275();
  swift_unknownObjectRelease();
  v51 = v26[126];
  v38 = v26[108];
  v39 = v26[107];
  v40 = v26[105];
  v41 = v26[104];
  v42 = v26[103];
  v43 = v26[102];
  v44 = v26[101];
  v45 = v26[100];
  OUTLINED_FUNCTION_260();
  v46 = v28;
  v47 = v27;
  v48 = v26[93];
  v49 = v26[92];
  v50 = v26[91];
  OUTLINED_FUNCTION_3_7();
  sub_1AC68A2BC();

  OUTLINED_FUNCTION_90_3();
  OUTLINED_FUNCTION_249();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, a24, a25, a26);
}

uint64_t sub_1AC66C08C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_250();
  OUTLINED_FUNCTION_275();
  swift_unknownObjectRelease();

  v51 = v26[144];
  v38 = v26[108];
  v39 = v26[107];
  v40 = v26[105];
  v41 = v26[104];
  v42 = v26[103];
  v43 = v26[102];
  v44 = v26[101];
  v45 = v26[100];
  OUTLINED_FUNCTION_260();
  v46 = v28;
  v47 = v27;
  v48 = v26[93];
  v49 = v26[92];
  v50 = v26[91];
  OUTLINED_FUNCTION_3_7();
  sub_1AC68A2BC();

  OUTLINED_FUNCTION_90_3();
  OUTLINED_FUNCTION_249();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, a24, a25, a26);
}

uint64_t sub_1AC66C228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_250();
  OUTLINED_FUNCTION_275();
  swift_unknownObjectRelease();

  v51 = v26[149];
  v38 = v26[108];
  v39 = v26[107];
  v40 = v26[105];
  v41 = v26[104];
  v42 = v26[103];
  v43 = v26[102];
  v44 = v26[101];
  v45 = v26[100];
  OUTLINED_FUNCTION_260();
  v46 = v28;
  v47 = v27;
  v48 = v26[93];
  v49 = v26[92];
  v50 = v26[91];
  OUTLINED_FUNCTION_3_7();
  sub_1AC68A2BC();

  OUTLINED_FUNCTION_90_3();
  OUTLINED_FUNCTION_249();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, a24, a25, a26);
}

uint64_t sub_1AC66C3C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_250();
  OUTLINED_FUNCTION_275();
  swift_unknownObjectRelease();

  v51 = v26[154];
  v38 = v26[108];
  v39 = v26[107];
  v40 = v26[105];
  v41 = v26[104];
  v42 = v26[103];
  v43 = v26[102];
  v44 = v26[101];
  v45 = v26[100];
  OUTLINED_FUNCTION_260();
  v46 = v28;
  v47 = v27;
  v48 = v26[93];
  v49 = v26[92];
  v50 = v26[91];
  OUTLINED_FUNCTION_3_7();
  sub_1AC68A2BC();

  OUTLINED_FUNCTION_90_3();
  OUTLINED_FUNCTION_249();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, a24, a25, a26);
}

uint64_t sub_1AC66C560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_250();
  OUTLINED_FUNCTION_275();
  swift_unknownObjectRelease();

  v51 = v26[159];
  v38 = v26[108];
  v39 = v26[107];
  v40 = v26[105];
  v41 = v26[104];
  v42 = v26[103];
  v43 = v26[102];
  v44 = v26[101];
  v45 = v26[100];
  OUTLINED_FUNCTION_260();
  v46 = v28;
  v47 = v27;
  v48 = v26[93];
  v49 = v26[92];
  v50 = v26[91];
  OUTLINED_FUNCTION_3_7();
  sub_1AC68A2BC();

  OUTLINED_FUNCTION_90_3();
  OUTLINED_FUNCTION_249();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, a24, a25, a26);
}

uint64_t sub_1AC66C6FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_250();
  OUTLINED_FUNCTION_275();
  swift_unknownObjectRelease();

  v51 = v26[164];
  v38 = v26[108];
  v39 = v26[107];
  v40 = v26[105];
  v41 = v26[104];
  v42 = v26[103];
  v43 = v26[102];
  v44 = v26[101];
  v45 = v26[100];
  OUTLINED_FUNCTION_260();
  v46 = v28;
  v47 = v27;
  v48 = v26[93];
  v49 = v26[92];
  v50 = v26[91];
  OUTLINED_FUNCTION_3_7();
  sub_1AC68A2BC();

  OUTLINED_FUNCTION_90_3();
  OUTLINED_FUNCTION_249();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, a24, a25, a26);
}

uint64_t sub_1AC66C898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_250();
  OUTLINED_FUNCTION_275();
  swift_unknownObjectRelease();

  v51 = v26[169];
  v38 = v26[108];
  v39 = v26[107];
  v40 = v26[105];
  v41 = v26[104];
  v42 = v26[103];
  v43 = v26[102];
  v44 = v26[101];
  v45 = v26[100];
  OUTLINED_FUNCTION_260();
  v46 = v28;
  v47 = v27;
  v48 = v26[93];
  v49 = v26[92];
  v50 = v26[91];
  OUTLINED_FUNCTION_3_7();
  sub_1AC68A2BC();

  OUTLINED_FUNCTION_90_3();
  OUTLINED_FUNCTION_249();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, a24, a25, a26);
}

uint64_t sub_1AC66CA34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_250();
  OUTLINED_FUNCTION_275();

  OUTLINED_FUNCTION_2_6();
  sub_1AC68A2BC();

  v51 = v26[194];
  v38 = v26[108];
  v39 = v26[107];
  v40 = v26[105];
  v41 = v26[104];
  v42 = v26[103];
  v43 = v26[102];
  v44 = v26[101];
  v45 = v26[100];
  OUTLINED_FUNCTION_260();
  v46 = v28;
  v47 = v27;
  v48 = v26[93];
  v49 = v26[92];
  v50 = v26[91];
  OUTLINED_FUNCTION_3_7();
  sub_1AC68A2BC();

  OUTLINED_FUNCTION_90_3();
  OUTLINED_FUNCTION_249();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, a24, a25, a26);
}

uint64_t sub_1AC66CC08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_250();
  OUTLINED_FUNCTION_275();

  swift_unknownObjectRelease();

  v51 = v26[202];
  v38 = v26[108];
  v39 = v26[107];
  v40 = v26[105];
  v41 = v26[104];
  v42 = v26[103];
  v43 = v26[102];
  v44 = v26[101];
  v45 = v26[100];
  OUTLINED_FUNCTION_260();
  v46 = v28;
  v47 = v27;
  v48 = v26[93];
  v49 = v26[92];
  v50 = v26[91];
  OUTLINED_FUNCTION_3_7();
  sub_1AC68A2BC();

  OUTLINED_FUNCTION_90_3();
  OUTLINED_FUNCTION_249();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, a24, a25, a26);
}

uint64_t sub_1AC66CDC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_250();
  OUTLINED_FUNCTION_275();

  v27 = OUTLINED_FUNCTION_142();
  v28(v27);

  v53 = v26[217];
  v40 = v26[108];
  v41 = v26[107];
  v42 = v26[105];
  v43 = v26[104];
  v44 = v26[103];
  v45 = v26[102];
  v46 = v26[101];
  v47 = v26[100];
  OUTLINED_FUNCTION_260();
  v48 = v30;
  v49 = v29;
  v50 = v26[93];
  v51 = v26[92];
  v52 = v26[91];
  OUTLINED_FUNCTION_3_7();
  sub_1AC68A2BC();

  OUTLINED_FUNCTION_90_3();
  OUTLINED_FUNCTION_249();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, a24, a25, a26);
}

uint64_t sub_1AC66CFA4(uint64_t a1, void *a2)
{
  *(v2 + 16) = a1;
  v3 = a2[1];
  ObjectType = swift_getObjectType();
  v7 = (*(v3 + 32) + **(v3 + 32));
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  *v5 = v2;
  v5[1] = sub_1AC66D0D0;

  return v7(v2 + 32, ObjectType, v3);
}

uint64_t sub_1AC66D0D0()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v1 = *v0;
  OUTLINED_FUNCTION_18();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1AC66D1B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  v3[2] = a3;
  return MEMORY[0x1EEE6DFA0](sub_1AC66D1DC, 0, 0);
}

uint64_t sub_1AC66D1DC()
{
  OUTLINED_FUNCTION_72();
  if (*(*(v0 + 48) + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C800, &qword_1AC7AAB98);
    v1 = swift_task_alloc();
    OUTLINED_FUNCTION_519(v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C808, &qword_1AC7AABB0);
    swift_task_alloc();
    OUTLINED_FUNCTION_100();
    *(v0 + 64) = v2;
    *v2 = v3;
    v2[1] = sub_1AC66D310;
    v4 = OUTLINED_FUNCTION_323();

    return MEMORY[0x1EEE6DD58](v4);
  }

  else
  {
    OUTLINED_FUNCTION_82();
    v6 = MEMORY[0x1E69E7CC0];

    return v5(v6);
  }
}

uint64_t sub_1AC66D310()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_18();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1AC66D410()
{
  OUTLINED_FUNCTION_85();

  OUTLINED_FUNCTION_44();

  return v0();
}

uint64_t sub_1AC66D46C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[20] = a1;
  v3[21] = a2;
  v3[22] = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EB56C8E0, &qword_1AC7AAE48);
  v3[23] = swift_task_alloc();
  v3[24] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C8E8, &qword_1AC7AAE50);
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = type metadata accessor for SpeechRecognizerSupportedFeatures(0);
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C8F0, &qword_1AC7AAE58);
  v3[33] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C8A0, &qword_1AC7AADE8);
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[16] = a1;

  return MEMORY[0x1EEE6DFA0](sub_1AC66D644, a3, 0);
}

uint64_t sub_1AC66DE5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[20] = a1;
  v3[21] = a2;
  v3[22] = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EB56C8E0, &qword_1AC7AAE48);
  v3[23] = swift_task_alloc();
  v3[24] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C8E8, &qword_1AC7AAE50);
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = type metadata accessor for SpeechRecognizerSupportedFeatures(0);
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C8F0, &qword_1AC7AAE58);
  v3[33] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C8A0, &qword_1AC7AADE8);
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[16] = a1;

  return MEMORY[0x1EEE6DFA0](sub_1AC66E034, a3, 0);
}

uint64_t sub_1AC66E85C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[20] = a1;
  v3[21] = a2;
  v3[22] = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EB56C8E0, &qword_1AC7AAE48);
  v3[23] = swift_task_alloc();
  v3[24] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C8E8, &qword_1AC7AAE50);
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = type metadata accessor for SpeechRecognizerSupportedFeatures(0);
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C8F0, &qword_1AC7AAE58);
  v3[33] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C8A0, &qword_1AC7AADE8);
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[16] = a1;

  return MEMORY[0x1EEE6DFA0](sub_1AC66EA34, a3, 0);
}

uint64_t sub_1AC66F25C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[20] = a1;
  v3[21] = a2;
  v3[22] = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EB56C8E0, &qword_1AC7AAE48);
  v3[23] = swift_task_alloc();
  v3[24] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C8E8, &qword_1AC7AAE50);
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = type metadata accessor for SpeechRecognizerSupportedFeatures(0);
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C8F0, &qword_1AC7AAE58);
  v3[33] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C8A0, &qword_1AC7AADE8);
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[16] = a1;

  return MEMORY[0x1EEE6DFA0](sub_1AC66F434, a3, 0);
}

uint64_t sub_1AC66FC5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[20] = a1;
  v3[21] = a2;
  v3[22] = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EB56C8E0, &qword_1AC7AAE48);
  v3[23] = swift_task_alloc();
  v3[24] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C8E8, &qword_1AC7AAE50);
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = type metadata accessor for SpeechRecognizerSupportedFeatures(0);
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C8F0, &qword_1AC7AAE58);
  v3[33] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C8A0, &qword_1AC7AADE8);
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[16] = a1;

  return MEMORY[0x1EEE6DFA0](sub_1AC66FE34, a3, 0);
}

uint64_t sub_1AC6706AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[20] = a1;
  v3[21] = a2;
  v3[22] = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EB56C8E0, &qword_1AC7AAE48);
  v3[23] = swift_task_alloc();
  v3[24] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C8E8, &qword_1AC7AAE50);
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = type metadata accessor for SpeechRecognizerSupportedFeatures(0);
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C8F0, &qword_1AC7AAE58);
  v3[32] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C8A0, &qword_1AC7AADE8);
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v3[16] = a1;

  return MEMORY[0x1EEE6DFA0](sub_1AC670878, a3, 0);
}

void sub_1AC670878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v118 = v18;
  v20 = *(v18 + 256);
  v21 = *(v18 + 216);
  v22 = *(v18 + 176);
  v23 = **(v18 + 168);

  sub_1AC605538(v24);
  OUTLINED_FUNCTION_363();
  v25 = swift_task_alloc();
  OUTLINED_FUNCTION_427(v25);
  OUTLINED_FUNCTION_98_1();

  OUTLINED_FUNCTION_65_0();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v22);
  v29 = OUTLINED_FUNCTION_204_0();
  sub_1AC68A3F8(v29, v30, v31, v32);
  v33 = OUTLINED_FUNCTION_55_2();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v33, v34, v21);
  v36 = *(v18 + 264);
  if (EnumTagSinglePayload != 1)
  {
    sub_1AC61B988(v36, *(v18 + 248));
    if (off_1ED937D60 != -1)
    {
      OUTLINED_FUNCTION_3_0();
      swift_once();
    }

    v56 = OUTLINED_FUNCTION_394();
    __swift_project_value_buffer(v56, qword_1ED9386C8);
    OUTLINED_FUNCTION_29_5();
    swift_retain_n();
    v57 = sub_1AC79FDC8();
    v58 = sub_1AC7A05E8();
    if (OUTLINED_FUNCTION_318(v58))
    {
      OUTLINED_FUNCTION_150();
      v117[0] = OUTLINED_FUNCTION_202();
      v59 = OUTLINED_FUNCTION_159_1(4.8149e-34);
      v60 = type metadata accessor for SpeechDetector(v59);
      v61 = OUTLINED_FUNCTION_563(v60);
      sub_1AC5CFE74(v61, v62, v117);
      OUTLINED_FUNCTION_430();
      *(v23 + 4) = v20;
      OUTLINED_FUNCTION_94();
      _os_log_impl(v63, v64, v65, v66, v67, 0xCu);
      OUTLINED_FUNCTION_67();
      OUTLINED_FUNCTION_77_1();
    }

    else
    {
    }

    v79 = *(v18 + 240);
    v80 = *(v18 + 168);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_7();
    v81 = OUTLINED_FUNCTION_123();
    sub_1AC68A130(v81, v82);
    v117[0] = *v80;
    sub_1AC6E08C4(v79);
    OUTLINED_FUNCTION_82_2();
    if (v83)
    {
      __break(1u);
    }

    else
    {
      OUTLINED_FUNCTION_442();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C910, &qword_1AC7AAE78);
      if (sub_1AC7A0B18())
      {
        sub_1AC6E08C4(*(v18 + 240));
        OUTLINED_FUNCTION_142_1();
        if (!v39)
        {
          OUTLINED_FUNCTION_403();

          sub_1AC7A0DC8();
          return;
        }
      }

      if (v80)
      {
        v22 = v117[0];

        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_30:
          OUTLINED_FUNCTION_141_1();
          if (v105)
          {
            OUTLINED_FUNCTION_46_6(v104);
            sub_1AC60E4F8();
          }

          v106 = *(v18 + 256);
          v114 = *(v18 + 272);
          v116 = *(v18 + 168);
          *(v18 + 112) = type metadata accessor for SpeechDetector(0);
          OUTLINED_FUNCTION_267();
          v109 = sub_1AC68A730(v107, v108);
          OUTLINED_FUNCTION_37_6(v109);
          OUTLINED_FUNCTION_20_5();
          sub_1AC68A2BC();
          OUTLINED_FUNCTION_360();
          sub_1AC68A2BC();
          sub_1AC5C9624(v106, &qword_1EB56C8F0, &qword_1AC7AAE58);
          sub_1AC5C9624(v114, &qword_1EB56C8A0, &qword_1AC7AADE8);

          *v116 = v22;
LABEL_33:

          OUTLINED_FUNCTION_29();
          OUTLINED_FUNCTION_403();

          __asm { BRAA            X1, X16 }
        }

LABEL_38:
        OUTLINED_FUNCTION_31_2();
        sub_1AC60E4F8();
        goto LABEL_30;
      }
    }

    __break(1u);
    goto LABEL_38;
  }

  v37 = *(v18 + 256);
  v38 = *(v18 + 184);
  sub_1AC5C9624(v36, &qword_1EB56C8A0, &qword_1AC7AADE8);
  sub_1AC67124C();
  OUTLINED_FUNCTION_65_4(v38);
  if (v39)
  {
    OUTLINED_FUNCTION_569();
    sub_1AC5C9624(v37, &off_1EB56C8E0, &qword_1AC7AAE48);
    if (off_1ED937D60 != -1)
    {
      OUTLINED_FUNCTION_3_0();
      swift_once();
    }

    v40 = OUTLINED_FUNCTION_394();
    __swift_project_value_buffer(v40, qword_1ED9386C8);
    OUTLINED_FUNCTION_117_2();

    v41 = sub_1AC79FDC8();
    v42 = sub_1AC7A05E8();
    v43 = OUTLINED_FUNCTION_153(v42);
    v44 = *(v18 + 160);
    if (v43)
    {
      v45 = OUTLINED_FUNCTION_150();
      v46 = swift_slowAlloc();
      v117[0] = v46;
      *v45 = 136315138;
      *(v18 + 136) = v44;
      v47 = type metadata accessor for SpeechDetector(0);
      v48 = OUTLINED_FUNCTION_564(v47);
      v50 = sub_1AC5CFE74(v48, v49, v117);

      *(v45 + 4) = v50;
      OUTLINED_FUNCTION_69();
      _os_log_impl(v51, v52, v53, v54, v55, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v46);
      OUTLINED_FUNCTION_96_0();
      OUTLINED_FUNCTION_129();
    }

    else
    {
    }

    sub_1AC7A0B78();
    OUTLINED_FUNCTION_403();
  }

  else
  {
    v68 = OUTLINED_FUNCTION_428();
    sub_1AC68A444(v68, v69, &qword_1EB56C8E8, &qword_1AC7AAE50);
    if (off_1ED937D60 != -1)
    {
      OUTLINED_FUNCTION_3_0();
      swift_once();
    }

    v70 = OUTLINED_FUNCTION_394();
    __swift_project_value_buffer(v70, qword_1ED9386C8);
    OUTLINED_FUNCTION_168_1();
    swift_retain_n();
    v71 = sub_1AC79FDC8();
    sub_1AC7A05E8();
    OUTLINED_FUNCTION_348();
    if (os_log_type_enabled(v71, v72))
    {
      OUTLINED_FUNCTION_150();
      v117[0] = OUTLINED_FUNCTION_230();
      v73 = OUTLINED_FUNCTION_156_1(4.8149e-34);
      v74 = type metadata accessor for SpeechDetector(v73);
      v75 = OUTLINED_FUNCTION_565(v74);
      sub_1AC5CFE74(v75, v76, v117);
      OUTLINED_FUNCTION_550();
      *(v38 + 4) = v19;
      OUTLINED_FUNCTION_179_1(&dword_1AC5BC000, v77, v78, "SpeechAnalyzer.updateWorkerGroups: Adding %s to modified group");
      OUTLINED_FUNCTION_148_1();
      OUTLINED_FUNCTION_125_1();
    }

    else
    {
    }

    sub_1AC68A3F8(*(v18 + 208), *(v18 + 200), &qword_1EB56C8E8, &qword_1AC7AAE50);
    v85 = OUTLINED_FUNCTION_204_0();
    sub_1AC61B988(v85, v86);
    OUTLINED_FUNCTION_547();
    v87 = OUTLINED_FUNCTION_198();
    sub_1AC6DC790(v87, v88);
    if (v89)
    {
      v90 = v89;
      v113 = *(v18 + 256);
      v115 = *(v18 + 272);
      v91 = *(v18 + 232);
      v112 = *(v18 + 208);
      v92 = *(v18 + 160);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BF78, &unk_1AC7A9270);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1AC7A6D00;
      *(inited + 56) = type metadata accessor for SpeechDetector(0);
      OUTLINED_FUNCTION_267();
      *(inited + 64) = sub_1AC68A730(v94, v95);
      *(inited + 32) = v92;
      v117[0] = v90;
      sub_1AC659150(inited);
      v96 = v117[0];
      sub_1AC6EE14C(v91);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C8D8, &qword_1AC7AAE20);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C8A8, &qword_1AC7B1DB0);
      OUTLINED_FUNCTION_86_0();
      v97 = OUTLINED_FUNCTION_73_2();
      *(v97 + 16) = xmmword_1AC7A6D00;
      v98 = v97 + v92;
      v99 = *(inited + 56);
      OUTLINED_FUNCTION_1_7();
      v100 = OUTLINED_FUNCTION_387();
      sub_1AC68A130(v100, v101);
      *(v98 + v99) = v96;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D4F0, &unk_1AC7AF180);
      OUTLINED_FUNCTION_5_4();
      sub_1AC68A730(v102, v103);
      OUTLINED_FUNCTION_100_2();
      sub_1AC79FE38();
      OUTLINED_FUNCTION_4_6();
      OUTLINED_FUNCTION_556();
      OUTLINED_FUNCTION_6_5();
      sub_1AC68A2BC();
      OUTLINED_FUNCTION_390();
      sub_1AC68A2BC();
      sub_1AC5C9624(v112, &qword_1EB56C8E8, &qword_1AC7AAE50);
      sub_1AC5C9624(v113, &qword_1EB56C8F0, &qword_1AC7AAE58);
      sub_1AC5C9624(v115, &qword_1EB56C8A0, &qword_1AC7AADE8);
      goto LABEL_33;
    }

    __break(1u);
  }
}

void sub_1AC67124C()
{
  OUTLINED_FUNCTION_104();
  v80 = v1;
  v90 = v3;
  v91 = v2;
  v5 = v4;
  v7 = v6;
  v83 = v8;
  type metadata accessor for SpeechRecognizerSupportedFeatures(0);
  OUTLINED_FUNCTION_40();
  v88 = v10;
  v89 = v9;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_6();
  v84 = v12 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C8A0, &qword_1AC7AADE8);
  v14 = OUTLINED_FUNCTION_167(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  v17 = v15 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v77 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EB56C8E0, &qword_1AC7AAE48);
  OUTLINED_FUNCTION_80();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5();
  v78 = v23 - v24;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v25);
  v79 = &v77 - v26;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_469();
  v28 = OUTLINED_FUNCTION_142();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(v28, v29);
  v31 = OUTLINED_FUNCTION_167(v30);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_5();
  v81 = v32 - v33;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v77 - v35;
  v37 = OUTLINED_FUNCTION_614();
  sub_1AC68A3F8(v37, v38, &qword_1EB56C8F0, &qword_1AC7AAE58);
  v82 = v21;
  OUTLINED_FUNCTION_96(v36, 1, v21);
  if (v39)
  {
    v77 = v7;
    sub_1AC5C9624(v36, &qword_1EB56C8F0, &qword_1AC7AAE58);
    v40 = v91;
    v87 = *(v91 + 16);
    OUTLINED_FUNCTION_168_1();
    swift_retain_n();

    v41 = 0;
    v86 = v5;
    while (1)
    {
      if (v87 == v41)
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C8E8, &qword_1AC7AAE50);
        v58 = v83;
        OUTLINED_FUNCTION_65_0();
        __swift_storeEnumTagSinglePayload(v59, v60, v61, v62);
        v63 = v77;
LABEL_13:

        sub_1AC68A3F8(v58, v81, &off_1EB56C8E0, &qword_1AC7AAE48);
        v70 = OUTLINED_FUNCTION_68_3();
        __swift_storeEnumTagSinglePayload(v70, v71, v72, v82);
        OUTLINED_FUNCTION_574(v63, &v92);
        v73 = OUTLINED_FUNCTION_89();
        sub_1AC68A6C8(v73, v74, v75, v76);
        goto LABEL_14;
      }

      OUTLINED_FUNCTION_89_0();
      v44 = v40 + v42 + *(v43 + 72) * v41;
      v90(v44);
      sub_1AC68A3F8(v20, v17, &qword_1EB56C8A0, &qword_1AC7AADE8);
      v45 = OUTLINED_FUNCTION_278();
      OUTLINED_FUNCTION_96(v45, v46, v89);
      v85 = v44;
      if (v39)
      {
        sub_1AC5C9624(v20, &qword_1EB56C8A0, &qword_1AC7AADE8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C8E8, &qword_1AC7AAE50);
        OUTLINED_FUNCTION_65_0();
      }

      else
      {
        v47 = v20;
        v48 = v84;
        sub_1AC61B988(v17, v84);
        v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C8E8, &qword_1AC7AAE50);
        v50 = *(v49 + 48);
        OUTLINED_FUNCTION_1_7();
        sub_1AC68A130(v44, v0);
        v51 = v48;
        v20 = v47;
        sub_1AC61B988(v51, v0 + v50);
        sub_1AC5C9624(v47, &qword_1EB56C8A0, &qword_1AC7AADE8);
        OUTLINED_FUNCTION_150_1();
        v55 = v49;
      }

      __swift_storeEnumTagSinglePayload(v52, v53, v54, v55);
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C8E8, &qword_1AC7AAE50);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v0, 1, v56);
      sub_1AC5C9624(v0, &off_1EB56C8E0, &qword_1AC7AAE48);
      if (EnumTagSinglePayload != 1)
      {
        break;
      }

      ++v41;
      v40 = v91;
    }

    v64 = v79;
    sub_1AC6722D8();

    v65 = v78;
    sub_1AC68A3F8(v64, v78, &off_1EB56C8E0, &qword_1AC7AAE48);
    OUTLINED_FUNCTION_65_4(v65);
    if (!v39)
    {
      v66 = v65;
      v58 = v83;
      sub_1AC68A444(v66, v83, &qword_1EB56C8E8, &qword_1AC7AAE50);
      sub_1AC5C9624(v64, &off_1EB56C8E0, &qword_1AC7AAE48);
      OUTLINED_FUNCTION_150_1();
      __swift_storeEnumTagSinglePayload(v67, v68, v69, v56);
      v63 = v77;
      goto LABEL_13;
    }

    __break(1u);
  }

  else
  {
    sub_1AC68A444(v36, v83, &off_1EB56C8E0, &qword_1AC7AAE48);
LABEL_14:
    OUTLINED_FUNCTION_105();
  }
}

void sub_1AC67179C()
{
  OUTLINED_FUNCTION_104();
  v101 = v0;
  v102 = v1;
  v111 = v2;
  v4 = v3;
  v6 = v5;
  type metadata accessor for SpeechRecognizerSupportedFeatures(0);
  OUTLINED_FUNCTION_40();
  v108 = v8;
  v109 = v7;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_6();
  v104 = v10 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C8A0, &qword_1AC7AADE8);
  v12 = OUTLINED_FUNCTION_167(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v96 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EB56C8E0, &qword_1AC7AAE48);
  OUTLINED_FUNCTION_80();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5();
  v97 = v21 - v22;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v23);
  v98 = &v96 - v24;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v96 - v26;
  v28 = OUTLINED_FUNCTION_88_0();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(v28, v29);
  v31 = OUTLINED_FUNCTION_167(v30);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_5();
  v99 = v32 - v33;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v96 - v35;
  v37 = OUTLINED_FUNCTION_204_0();
  sub_1AC68A3F8(v37, v38, &qword_1EB56C8F0, &qword_1AC7AAE58);
  v39 = OUTLINED_FUNCTION_55_2();
  v100 = v19;
  OUTLINED_FUNCTION_96(v39, v40, v19);
  if (v41)
  {
    v96 = v6;
    sub_1AC5C9624(v36, &qword_1EB56C8F0, &qword_1AC7AAE58);
    v42 = *(v4 + 16);
    v106 = *v101;
    v107 = v42;
    OUTLINED_FUNCTION_168_1();
    swift_retain_n();
    v110 = v4;

    v43 = 0;
    v103 = v18;
    while (1)
    {
      if (v107 == v43)
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C8E8, &qword_1AC7AAE50);
        v74 = v102;
        OUTLINED_FUNCTION_65_0();
        __swift_storeEnumTagSinglePayload(v75, v76, v77, v78);
LABEL_13:

        v88 = v96;

        sub_1AC68A3F8(v74, v99, &off_1EB56C8E0, &qword_1AC7AAE48);
        v89 = OUTLINED_FUNCTION_68_3();
        __swift_storeEnumTagSinglePayload(v89, v90, v91, v100);
        OUTLINED_FUNCTION_574(v88, &v112);
        v92 = OUTLINED_FUNCTION_89();
        sub_1AC68A6C8(v92, v93, v94, v95);
        goto LABEL_14;
      }

      OUTLINED_FUNCTION_89_0();
      v46 = v110 + v44 + *(v45 + 72) * v43;
      sub_1AC7452F0(v46);
      v47 = OUTLINED_FUNCTION_41_4();
      sub_1AC68A3F8(v47, v48, &qword_1EB56C8A0, &qword_1AC7AADE8);
      OUTLINED_FUNCTION_96(v15, 1, v109);
      v105 = v46;
      if (v41)
      {
        v49 = OUTLINED_FUNCTION_142();
        sub_1AC5C9624(v49, v50, &qword_1AC7AADE8);
        v51 = OUTLINED_FUNCTION_289();
        __swift_instantiateConcreteTypeFromMangledNameV2(v51, v52);
        v64 = OUTLINED_FUNCTION_158_1();
      }

      else
      {
        v53 = v15;
        v54 = v15;
        v55 = v104;
        sub_1AC61B988(v53, v104);
        v56 = OUTLINED_FUNCTION_289();
        v58 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v56, v57) + 48);
        OUTLINED_FUNCTION_1_7();
        v59 = OUTLINED_FUNCTION_172();
        sub_1AC68A130(v59, v60);
        v61 = v55;
        v15 = v54;
        sub_1AC61B988(v61, &v27[v58]);
        v62 = OUTLINED_FUNCTION_117();
        sub_1AC5C9624(v62, v63, &qword_1AC7AADE8);
        OUTLINED_FUNCTION_113_2();
      }

      __swift_storeEnumTagSinglePayload(v64, v65, v66, v67);
      v68 = OUTLINED_FUNCTION_289();
      v70 = __swift_instantiateConcreteTypeFromMangledNameV2(v68, v69);
      v71 = OUTLINED_FUNCTION_178_1();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v71, v72, v70);
      sub_1AC5C9624(v27, &off_1EB56C8E0, &qword_1AC7AAE48);
      if (EnumTagSinglePayload != 1)
      {
        break;
      }

      ++v43;
    }

    v79 = v98;
    sub_1AC672474();

    v80 = v97;
    sub_1AC68A3F8(v79, v97, &off_1EB56C8E0, &qword_1AC7AAE48);
    v81 = OUTLINED_FUNCTION_278();
    OUTLINED_FUNCTION_96(v81, v82, v70);
    if (!v41)
    {
      v83 = v80;
      v74 = v102;
      sub_1AC68A444(v83, v102, &qword_1EB56C8E8, &qword_1AC7AAE50);
      sub_1AC5C9624(v79, &off_1EB56C8E0, &qword_1AC7AAE48);
      OUTLINED_FUNCTION_113_2();
      __swift_storeEnumTagSinglePayload(v84, v85, v86, v87);
      goto LABEL_13;
    }

    __break(1u);
  }

  else
  {
    sub_1AC68A444(v36, v102, &off_1EB56C8E0, &qword_1AC7AAE48);
LABEL_14:
    OUTLINED_FUNCTION_105();
  }
}

uint64_t sub_1AC671CD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v60 = a3;
  v54 = a4;
  v6 = type metadata accessor for SpeechRecognizerSupportedFeatures(0);
  v58 = *(v6 - 8);
  v59 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v55 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C8A0, &qword_1AC7AADE8);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v48 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EB56C8E0, &qword_1AC7AAE48);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v50 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v51 = &v48 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v48 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C8F0, &qword_1AC7AAE58);
  v22 = MEMORY[0x1EEE9AC00](v21 - 8);
  v52 = &v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v48 - v24;
  sub_1AC68A3F8(a1, &v48 - v24, &qword_1EB56C8F0, &qword_1AC7AAE58);
  v53 = v14;
  if (__swift_getEnumTagSinglePayload(v25, 1, v14) != 1)
  {
    return sub_1AC68A444(v25, v54, &off_1EB56C8E0, &qword_1AC7AAE48);
  }

  v49 = a1;
  sub_1AC5C9624(v25, &qword_1EB56C8F0, &qword_1AC7AAE58);
  v26 = *(a2 + 16);
  swift_retain_n();

  v27 = 0;
  for (i = a2; ; a2 = i)
  {
    if (v26 == v27)
    {

      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C8E8, &qword_1AC7AAE50);
      v42 = v54;
      __swift_storeEnumTagSinglePayload(v54, 1, 1, v41);

      v43 = v49;
LABEL_13:

      v47 = v52;
      sub_1AC68A3F8(v42, v52, &off_1EB56C8E0, &qword_1AC7AAE48);
      __swift_storeEnumTagSinglePayload(v47, 0, 1, v53);
      swift_beginAccess();
      return sub_1AC68A6C8(v47, v43, &qword_1EB56C8F0, &qword_1AC7AAE58);
    }

    v28 = a2 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v27;
    sub_1AC7452F0(v28);
    sub_1AC68A3F8(v13, v11, &qword_1EB56C8A0, &qword_1AC7AADE8);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v59);
    v56 = v28;
    if (EnumTagSinglePayload == 1)
    {
      sub_1AC5C9624(v13, &qword_1EB56C8A0, &qword_1AC7AADE8);
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C8E8, &qword_1AC7AAE50);
      v31 = v20;
      v32 = 1;
    }

    else
    {
      v33 = v13;
      v34 = v55;
      sub_1AC61B988(v11, v55);
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C8E8, &qword_1AC7AAE50);
      v36 = *(v35 + 48);
      sub_1AC68A130(v28, v20);
      v37 = v34;
      v13 = v33;
      sub_1AC61B988(v37, &v20[v36]);
      sub_1AC5C9624(v33, &qword_1EB56C8A0, &qword_1AC7AADE8);
      v31 = v20;
      v32 = 0;
      v30 = v35;
    }

    __swift_storeEnumTagSinglePayload(v31, v32, 1, v30);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C8E8, &qword_1AC7AAE50);
    v39 = __swift_getEnumTagSinglePayload(v20, 1, v38);
    sub_1AC5C9624(v20, &off_1EB56C8E0, &qword_1AC7AAE48);
    if (v39 != 1)
    {
      break;
    }

    ++v27;
  }

  v44 = v51;
  sub_1AC67261C(v56, v51);

  v45 = v50;
  sub_1AC68A3F8(v44, v50, &off_1EB56C8E0, &qword_1AC7AAE48);
  if (__swift_getEnumTagSinglePayload(v45, 1, v38) != 1)
  {
    v46 = v45;
    v42 = v54;
    sub_1AC68A444(v46, v54, &qword_1EB56C8E8, &qword_1AC7AAE50);
    sub_1AC5C9624(v44, &off_1EB56C8E0, &qword_1AC7AAE48);
    __swift_storeEnumTagSinglePayload(v42, 0, 1, v38);

    v43 = v49;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

void sub_1AC6722D8()
{
  OUTLINED_FUNCTION_104();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  type metadata accessor for SpeechRecognizerSupportedFeatures(0);
  OUTLINED_FUNCTION_80();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_602();
  v9 = OUTLINED_FUNCTION_60_2();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  v12 = OUTLINED_FUNCTION_167(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_469();
  v3(v5);
  v17 = OUTLINED_FUNCTION_289();
  sub_1AC68A3F8(v17, v18, &qword_1EB56C8A0, &qword_1AC7AADE8);
  OUTLINED_FUNCTION_65_4(v15);
  if (v19)
  {
    sub_1AC5C9624(v1, &qword_1EB56C8A0, &qword_1AC7AADE8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C8E8, &qword_1AC7AAE50);
    v25 = OUTLINED_FUNCTION_158_1();
  }

  else
  {
    v20 = OUTLINED_FUNCTION_614();
    sub_1AC61B988(v20, v21);
    v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C8E8, &qword_1AC7AAE50) + 48);
    OUTLINED_FUNCTION_1_7();
    v23 = OUTLINED_FUNCTION_172();
    sub_1AC68A130(v23, v24);
    sub_1AC61B988(v0, v7 + v22);
    sub_1AC5C9624(v1, &qword_1EB56C8A0, &qword_1AC7AADE8);
    OUTLINED_FUNCTION_113_2();
  }

  __swift_storeEnumTagSinglePayload(v25, v26, v27, v28);
  OUTLINED_FUNCTION_105();
}

void sub_1AC672474()
{
  OUTLINED_FUNCTION_104();
  v3 = v2;
  v5 = v4;
  type metadata accessor for SpeechRecognizerSupportedFeatures(0);
  OUTLINED_FUNCTION_80();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_602();
  v7 = OUTLINED_FUNCTION_60_2();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  v10 = OUTLINED_FUNCTION_167(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_469();
  sub_1AC7452F0(v3);
  sub_1AC68A3F8(v1, v13, &qword_1EB56C8A0, &qword_1AC7AADE8);
  OUTLINED_FUNCTION_65_4(v13);
  if (v15)
  {
    sub_1AC5C9624(v1, &qword_1EB56C8A0, &qword_1AC7AADE8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C8E8, &qword_1AC7AAE50);
    v19 = OUTLINED_FUNCTION_158_1();
  }

  else
  {
    sub_1AC61B988(v13, v0);
    v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C8E8, &qword_1AC7AAE50) + 48);
    OUTLINED_FUNCTION_1_7();
    v17 = OUTLINED_FUNCTION_172();
    sub_1AC68A130(v17, v18);
    sub_1AC61B988(v0, v5 + v16);
    sub_1AC5C9624(v1, &qword_1EB56C8A0, &qword_1AC7AADE8);
    OUTLINED_FUNCTION_113_2();
  }

  __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
  OUTLINED_FUNCTION_105();
}

uint64_t sub_1AC67261C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SpeechRecognizerSupportedFeatures(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C8A0, &qword_1AC7AADE8);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v19 - v11;
  sub_1AC7452F0(a1);
  sub_1AC68A3F8(v12, v10, &qword_1EB56C8A0, &qword_1AC7AADE8);
  if (__swift_getEnumTagSinglePayload(v10, 1, v4) == 1)
  {
    sub_1AC5C9624(v12, &qword_1EB56C8A0, &qword_1AC7AADE8);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C8E8, &qword_1AC7AAE50);
    v14 = a2;
    v15 = 1;
  }

  else
  {
    sub_1AC61B988(v10, v6);
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C8E8, &qword_1AC7AAE50);
    v17 = *(v16 + 48);
    sub_1AC68A130(a1, a2);
    sub_1AC61B988(v6, a2 + v17);
    sub_1AC5C9624(v12, &qword_1EB56C8A0, &qword_1AC7AADE8);
    v14 = a2;
    v15 = 0;
    v13 = v16;
  }

  return __swift_storeEnumTagSinglePayload(v14, v15, 1, v13);
}

uint64_t sub_1AC672828(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    swift_isUniquelyReferenced_nonNull_native();
    v5 = *v2;
    sub_1AC6E1048();
    *v2 = v5;
  }

  else
  {
    sub_1AC6E08C4(a2);
    if (v3)
    {
      swift_isUniquelyReferenced_nonNull_native();
      v6 = *v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C998, &unk_1AC7AE850);
      sub_1AC7A0B18();
      type metadata accessor for SpeechRecognizerSupportedFeatures(0);
      sub_1AC68A2BC();
      type metadata accessor for SpeechRecognizerWorker(0);
      sub_1AC68A730(&qword_1EB56B3F8, type metadata accessor for SpeechRecognizerSupportedFeatures);
      sub_1AC7A0B38();

      *v2 = v6;
    }
  }

  return sub_1AC68A2BC();
}

BOOL sub_1AC6729C8(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v3 = sub_1AC7A0D28();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v4 = sub_1AC7A0D28();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v3 != v4;
}

uint64_t sub_1AC672A40(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return sub_1AC7A08E8();
  }

  else
  {
    return *(a1 + 16);
  }
}

uint64_t sub_1AC672A60(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16[-v8];
  v10 = sub_1AC7A0288();
  (*(*(v10 - 8) + 16))(v9, a2, v10);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v10);
  v11 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v12 = swift_allocObject();
  swift_beginAccess();
  swift_unknownObjectWeakLoadStrong();
  *(v12 + 24) = *(a4 + 24);
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  *(v13 + 32) = v11;
  *(v13 + 40) = v12;
  v14 = a1[1];
  *(v13 + 48) = *a1;
  *(v13 + 64) = v14;
  *(v13 + 80) = a1[2];
  sub_1AC659DBC();
}

uint64_t sub_1AC672C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1AC672C60, 0, 0);
}

uint64_t sub_1AC672C60()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_175();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[11] = Strong;
  if (Strong)
  {
    OUTLINED_FUNCTION_175();
    swift_beginAccess();
    v2 = swift_unknownObjectWeakLoadStrong();
    v0[12] = v2;
    if (v2)
    {
      v3 = *(v0[9] + 24);
      v4 = swift_task_alloc();
      v5 = OUTLINED_FUNCTION_585(v4);
      *v5 = v6;
      v5[1] = sub_1AC672D84;
      v7 = OUTLINED_FUNCTION_16_5();

      return sub_1AC672EC8(v7, v3, v8);
    }
  }

  OUTLINED_FUNCTION_44();

  return v10();
}

uint64_t sub_1AC672D84()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v1 = *v0;
  OUTLINED_FUNCTION_18();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1AC672E68()
{
  OUTLINED_FUNCTION_85();
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_44();

  return v0();
}

uint64_t sub_1AC672EC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[14] = a3;
  v4[15] = v3;
  v4[13] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1AC672EEC, v3, 0);
}

uint64_t sub_1AC672EEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_137();
  OUTLINED_FUNCTION_169();
  v15 = v14[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BF50, &unk_1AC7A8360);
  inited = swift_initStackObject();
  v14[16] = inited;
  inited[1] = xmmword_1AC7A6D00;
  v17 = *v15;
  v18 = v15[2];
  inited[3] = v15[1];
  inited[4] = v18;
  inited[2] = v17;
  v14[12] = inited;
  result = sub_1AC5CAF3C();
  v20 = result;
  v21 = 0;
  v22 = *(result + 16);
  v23 = result + 32;
  v24 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v14[17] = v24;
  v25 = (v23 + 16 * v21);
  while (v22 != v21)
  {
    if (v21 >= *(v20 + 16))
    {
      __break(1u);
      return result;
    }

    v26 = v25 + 2;
    ++v21;
    v27 = *v25;
    v25 += 2;
    if (v27 != v14[13])
    {
      v28 = *(v26 - 1);
      swift_unknownObjectRetain();
      result = swift_isUniquelyReferenced_nonNull_native();
      a11 = v24;
      if ((result & 1) == 0)
      {
        OUTLINED_FUNCTION_265();
        v29 = OUTLINED_FUNCTION_35_2();
        result = sub_1AC631680(v29, v30, v31);
      }

      v33 = *(v24 + 16);
      v32 = *(v24 + 24);
      if (v33 >= v32 >> 1)
      {
        v35 = OUTLINED_FUNCTION_9(v32);
        result = sub_1AC631680(v35, v33 + 1, 1);
      }

      *(v24 + 16) = v33 + 1;
      v34 = v24 + 16 * v33;
      *(v34 + 32) = v27;
      *(v34 + 40) = v28;
      goto LABEL_2;
    }
  }

  if (*(v24 + 16))
  {
    OUTLINED_FUNCTION_30(&unk_1AC7AACD0);
    v54 = v36;
    v37 = swift_task_alloc();
    v14[18] = v37;
    *v37 = v14;
    v37[1] = sub_1AC673110;
    OUTLINED_FUNCTION_115();

    return v41(v38, v39, v40, v41, v42, v43, v44, v45, a9, v54, a11, a12, a13, a14);
  }

  else
  {

    sub_1AC5C8C68(v14[12]);

    OUTLINED_FUNCTION_44();
    OUTLINED_FUNCTION_115();

    return v47(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12, a13, a14);
  }
}

void sub_1AC673110()
{
  OUTLINED_FUNCTION_72();
  v3 = v2;
  OUTLINED_FUNCTION_50();
  v5 = v4;
  OUTLINED_FUNCTION_19();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_18();
  *v8 = v7;

  if (v0)
  {
  }

  else
  {

    *(v5 + 152) = v3;
    OUTLINED_FUNCTION_490();

    MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }
}

uint64_t sub_1AC67323C()
{
  OUTLINED_FUNCTION_85();
  sub_1AC659310(*(v0 + 152));
  sub_1AC5C8C68(*(v0 + 96));

  OUTLINED_FUNCTION_44();

  return v1();
}

uint64_t sub_1AC6732B0(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v13 - v6;
  v8 = sub_1AC7A0288();
  (*(*(v8 - 8) + 16))(v7, a2, v8);
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v8);
  v9 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v9;
  v10[5] = a1;
  v11 = a1;
  sub_1AC659B08();
}

uint64_t sub_1AC673430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1AC673454, 0, 0);
}

uint64_t sub_1AC673454()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_175();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    v2 = *(v0 + 56);
    v3 = swift_task_alloc();
    *(v0 + 72) = v3;
    *v3 = v0;
    OUTLINED_FUNCTION_85_0(v3);

    return sub_1AC65D064(0, v2);
  }

  else
  {
    **(v0 + 40) = 1;
    OUTLINED_FUNCTION_44();

    return v5();
  }
}

uint64_t sub_1AC673544()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v1 = *v0;
  OUTLINED_FUNCTION_18();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1AC673644()
{
  **(v0 + 40) = *(v0 + 64) == 0;
  OUTLINED_FUNCTION_44();
  return v1();
}

uint64_t SpeechAnalyzer.start<A>(inputSequence:)()
{
  OUTLINED_FUNCTION_85();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = sub_1AC7A0288();
  v1[6] = v5;
  OUTLINED_FUNCTION_22(v5);
  v1[7] = v6;
  v1[8] = OUTLINED_FUNCTION_126();
  v7 = OUTLINED_FUNCTION_222();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1AC673828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 16) = a4;
  v8 = swift_task_alloc();
  *(v7 + 24) = v8;
  *v8 = v7;
  v8[1] = sub_1AC6738E0;

  return SpeechAnalyzer.analyzeSequence<A>(_:)();
}

uint64_t sub_1AC6738E0()
{
  OUTLINED_FUNCTION_72();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_18();
  *v4 = v3;

  v5 = *(v2 + 16);
  if (v0)
  {

    v6 = sub_1AC68A870;
  }

  else
  {
    v6 = sub_1AC673A0C;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1AC673A0C()
{
  OUTLINED_FUNCTION_85();
  *(*(v0 + 16) + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_inputTask) = 0;

  OUTLINED_FUNCTION_44();

  return v1();
}

uint64_t SpeechAnalyzer.analyzeSequence<A>(_:)()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  v1[32] = v2;
  v1[33] = v0;
  v1[30] = v3;
  v1[31] = v4;
  v5 = sub_1AC7A01F8();
  v1[34] = v5;
  OUTLINED_FUNCTION_22(v5);
  v1[35] = v6;
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  OUTLINED_FUNCTION_155_1();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1[38] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_22(AssociatedTypeWitness);
  v1[39] = v8;
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  OUTLINED_FUNCTION_44_4();
  v1[42] = v9;
  v1[43] = OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_155_1();
  v10 = swift_getAssociatedTypeWitness();
  v1[44] = v10;
  OUTLINED_FUNCTION_22(v10);
  v1[45] = v11;
  v1[46] = OUTLINED_FUNCTION_126();
  v12 = sub_1AC7A0288();
  v1[47] = v12;
  OUTLINED_FUNCTION_22(v12);
  v1[48] = v13;
  v1[49] = OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_222();
  OUTLINED_FUNCTION_149_0();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

uint64_t sub_1AC673C9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_355();
  a17 = v20;
  a18 = v21;
  OUTLINED_FUNCTION_102();
  a16 = v19;
  OUTLINED_FUNCTION_65();
  if (sub_1AC65BF3C(0xD000000000000013, v22))
  {
    if (off_1ED937D60 != -1)
    {
      OUTLINED_FUNCTION_3_0();
      swift_once();
    }

    v23 = v19[33];
    v24 = sub_1AC79FDE8();
    v25 = __swift_project_value_buffer(v24, qword_1ED9386C8);
    v26 = OBJC_IVAR____TtC6Speech14SpeechAnalyzer_isRunningInputLoop;
    v19[50] = v25;
    v19[51] = v26;
    if (*(v23 + v26) == 1)
    {
      v60 = sub_1AC79FDC8();
      v61 = sub_1AC7A05F8();
      if (OUTLINED_FUNCTION_366(v61))
      {
        OUTLINED_FUNCTION_150();
        OUTLINED_FUNCTION_363();
        v62 = swift_slowAlloc();
        a9 = v62;
        *v18 = 136315138;
        *(v18 + 4) = sub_1AC5CFE74(0xD000000000000046, 0x80000001AC7B6900, &a9);
        OUTLINED_FUNCTION_635(&dword_1AC5BC000, v63, v64, "Failed precondition: %s");
        __swift_destroy_boxed_opaque_existential_0(v62);
        OUTLINED_FUNCTION_129();
        OUTLINED_FUNCTION_70();
      }

      __break(1u);
    }

    else
    {
      v27 = v19[33];
      *(v23 + v26) = 1;
      v28 = OBJC_IVAR____TtC6Speech14SpeechAnalyzer_isInputFinished;
      v19[52] = OBJC_IVAR____TtC6Speech14SpeechAnalyzer_isInputFinished;
      *(v27 + v28) = 0;
      v29 = sub_1AC79FDC8();
      v30 = sub_1AC7A05D8();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 16777472;
        sub_1AC7A0338();
        v32 = sub_1AC7A0278();
        v33 = OUTLINED_FUNCTION_198();
        v34(v33);
        v31[4] = v32;
        _os_log_impl(&dword_1AC5BC000, v29, v30, "SpeechAnalyzer: Input loop starting at priority %hhu", v31, 5u);
        OUTLINED_FUNCTION_96_0();
      }

      v36 = v19[42];
      v35 = v19[43];
      v37 = v19[31];
      v38 = v19[30];

      (*(v36 + 16))(v35, v38, v37);
      OUTLINED_FUNCTION_117();
      sub_1AC7A0368();
      OUTLINED_FUNCTION_16_6();
      v19[53] = sub_1AC68A730(v39, v40);
      v19[54] = swift_getAssociatedConformanceWitness();
      swift_task_alloc();
      OUTLINED_FUNCTION_100();
      v19[55] = v41;
      *v41 = v42;
      v41[1] = sub_1AC5C1EE4;
      OUTLINED_FUNCTION_112_2();
      OUTLINED_FUNCTION_291();
    }

    return MEMORY[0x1EEE6D8D0](v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12, a13, a14);
  }

  else
  {

    OUTLINED_FUNCTION_248();
    OUTLINED_FUNCTION_291();

    return v56(v51, v52, v53, v54, v55, v56, v57, v58, a9, a10);
  }
}

uint64_t sub_1AC674020()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v2 = *(v1 + 472);
  v3 = *v0;
  OUTLINED_FUNCTION_18();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_89_2();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1AC674134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_355();
  OUTLINED_FUNCTION_102();
  swift_willThrow();
  OUTLINED_FUNCTION_62_3();

  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_291();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17, a9, a10);
}

uint64_t sub_1AC6741CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_355();
  OUTLINED_FUNCTION_102();
  v11 = *(v10 + 320);
  v12 = *(*(v10 + 312) + 32);
  v12(v11, *(v10 + 328), *(v10 + 304));
  OUTLINED_FUNCTION_89();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_246();
  v13 = sub_1AC7A0D08();
  v14 = *(v10 + 320);
  if (v13)
  {
    v15 = v13;
    (*(*(v10 + 312) + 8))(*(v10 + 320), *(v10 + 304));
  }

  else
  {
    v11 = *(v10 + 304);
    v16 = OUTLINED_FUNCTION_124_0();
    v15 = OUTLINED_FUNCTION_188(v16, v17);
    v12(v18, v14, v11);
  }

  v19 = OUTLINED_FUNCTION_295();
  v20(v19);
  *(v10 + 472) = v15;
  v21 = *(v10 + 272);
  *(v10 + 232) = v15;
  v22 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D450, &qword_1AC7A7E50);
  OUTLINED_FUNCTION_477();
  if (swift_dynamicCast())
  {

    v23 = OUTLINED_FUNCTION_124_0();
    v24(v23);
    sub_1AC79FDC8();
    v25 = sub_1AC7A05D8();
    if (OUTLINED_FUNCTION_153(v25))
    {
      v26 = OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_242(v26);
      OUTLINED_FUNCTION_69();
      _os_log_impl(v27, v28, v29, v30, v31, 2u);
      OUTLINED_FUNCTION_129();
    }

    OUTLINED_FUNCTION_657();
    OUTLINED_FUNCTION_26_5();
    sub_1AC68A730(v32, v33);
    v34 = OUTLINED_FUNCTION_124_3();
    v36 = OUTLINED_FUNCTION_188(v34, v35);
    v38 = OUTLINED_FUNCTION_84_1(v36, v37);
    v39(v38);
    swift_willThrow();
    v40 = OUTLINED_FUNCTION_344();
    v41(v40);

    OUTLINED_FUNCTION_62_3();

    OUTLINED_FUNCTION_44();
    OUTLINED_FUNCTION_291();

    return v43(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10);
  }

  else
  {

    v51 = v15;
    v52 = sub_1AC79FDC8();
    sub_1AC7A05F8();

    if (os_log_type_enabled(v52, v21))
    {
      OUTLINED_FUNCTION_150();
      v53 = OUTLINED_FUNCTION_97_0();
      *v11 = 138412290;
      v54 = v15;
      v55 = _swift_stdlib_bridgeErrorToNSError();
      OUTLINED_FUNCTION_118(v55);
      OUTLINED_FUNCTION_376(&dword_1AC5BC000, v56, v21, "SpeechAnalyzer: Input loop ending with error: %@");
      sub_1AC5C9624(v53, &unk_1EB56C630, &qword_1AC7A7E40);
      OUTLINED_FUNCTION_96_0();
      OUTLINED_FUNCTION_77_1();
    }

    v57 = *(v10 + 416);
    v58 = *(v10 + 264);

    *(v58 + v57) = 1;
    v59 = v15;
    sub_1AC675568(v15);
    v60 = swift_task_alloc();
    v61 = OUTLINED_FUNCTION_586(v60);
    *v61 = v62;
    OUTLINED_FUNCTION_33_5(v61);
    OUTLINED_FUNCTION_291();

    return sub_1AC65D064(v63, v64);
  }
}

uint64_t sub_1AC67451C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_355();
  OUTLINED_FUNCTION_102();
  v11 = OUTLINED_FUNCTION_295();
  v12(v11);
  sub_1AC5C9624(v10 + 88, &qword_1EB56C7E0, &unk_1AC7ACD10);
  v13 = *(v10 + 464);
  *(v10 + 232) = v13;
  *(v10 + 472) = v13;
  v14 = *(v10 + 272);
  v15 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D450, &qword_1AC7A7E50);
  OUTLINED_FUNCTION_123();
  if (swift_dynamicCast())
  {

    v16 = OUTLINED_FUNCTION_124_0();
    v17(v16);
    sub_1AC79FDC8();
    v18 = sub_1AC7A05D8();
    if (OUTLINED_FUNCTION_153(v18))
    {
      v19 = OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_242(v19);
      OUTLINED_FUNCTION_69();
      _os_log_impl(v20, v21, v22, v23, v24, 2u);
      OUTLINED_FUNCTION_129();
    }

    OUTLINED_FUNCTION_657();
    OUTLINED_FUNCTION_26_5();
    sub_1AC68A730(v25, v26);
    v27 = OUTLINED_FUNCTION_124_3();
    v29 = OUTLINED_FUNCTION_188(v27, v28);
    v31 = OUTLINED_FUNCTION_84_1(v29, v30);
    v32(v31);
    swift_willThrow();
    v33 = OUTLINED_FUNCTION_344();
    v34(v33);

    OUTLINED_FUNCTION_62_3();

    OUTLINED_FUNCTION_44();
    OUTLINED_FUNCTION_291();

    return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10);
  }

  else
  {

    v44 = v13;
    v45 = sub_1AC79FDC8();
    sub_1AC7A05F8();

    if (os_log_type_enabled(v45, (v10 - 24)))
    {
      OUTLINED_FUNCTION_150();
      v46 = OUTLINED_FUNCTION_97_0();
      *v14 = 138412290;
      v47 = v13;
      v48 = _swift_stdlib_bridgeErrorToNSError();
      OUTLINED_FUNCTION_118(v48);
      OUTLINED_FUNCTION_376(&dword_1AC5BC000, v49, (v10 - 24), "SpeechAnalyzer: Input loop ending with error: %@");
      sub_1AC5C9624(v46, &unk_1EB56C630, &qword_1AC7A7E40);
      OUTLINED_FUNCTION_96_0();
      OUTLINED_FUNCTION_77_1();
    }

    v50 = *(v10 + 416);
    v51 = *(v10 + 264);

    *(v51 + v50) = 1;
    v52 = v13;
    sub_1AC675568(v13);
    v53 = swift_task_alloc();
    v54 = OUTLINED_FUNCTION_586(v53);
    *v54 = v55;
    OUTLINED_FUNCTION_33_5(v54);
    OUTLINED_FUNCTION_291();

    return sub_1AC65D064(v56, v57);
  }
}

uint64_t sub_1AC6747EC()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v1 = *v0;
  OUTLINED_FUNCTION_18();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_222();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1AC6748E4()
{
  OUTLINED_FUNCTION_72();
  v1 = sub_1AC5CAF3C();
  *(v0 + 256) = v1;
  v2 = swift_allocObject();
  *(v0 + 264) = v2;
  memcpy((v2 + 16), (v0 + 16), 0x41uLL);
  *(v2 + 84) = *(v0 + 84);
  *(v2 + 100) = *(v0 + 100);
  *(v2 + 116) = *(v0 + 116);
  sub_1AC5CD620(v0 + 16, v0 + 160);
  OUTLINED_FUNCTION_30(&unk_1AC7AACD0);
  v6 = v3;
  v4 = swift_task_alloc();
  *(v0 + 272) = v4;
  *v4 = v0;
  v4[1] = sub_1AC6749F8;

  return v6(&unk_1AC7AACC8, v2, v1);
}

uint64_t sub_1AC6749F8()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  v3 = v2;
  OUTLINED_FUNCTION_50();
  v5 = v4;
  OUTLINED_FUNCTION_19();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_18();
  *v8 = v7;

  if (v0)
  {

    OUTLINED_FUNCTION_149_0();

    return v11(v9, v10, v11, v12, v13, v14, v15, v16);
  }

  else
  {

    *(v5 + 280) = v3;
    OUTLINED_FUNCTION_149_0();

    return MEMORY[0x1EEE6DFA0](v18, v19, v20);
  }
}

uint64_t sub_1AC674B54()
{
  OUTLINED_FUNCTION_275();
  v43 = v0;
  sub_1AC5C8C68(*(v0 + 280));

  v38 = v0;
  v1 = sub_1AC7A0558();
  result = sub_1AC5CB4B4(v1, v2, v3);
  v5 = result;
  v6 = *(result + 16);
  if (!v6)
  {

    goto LABEL_20;
  }

  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = v6 - 1;
  p_cache = _TtC6Speech22SpeechRecognizerWorker.cache;
  v35 = result;
  while (1)
  {
    if (v9 >= v6)
    {
      __break(1u);
      return result;
    }

    v40 = v8;
    v12 = *(v5 + v7 + 32);
    v13 = *(v5 + v7 + 40);
    v14 = *(v5 + v7 + 48);
    v37 = *(v5 + v7 + 56);
    v39 = *(v5 + v7 + 64);
    v15 = p_cache[428];

    if (v15 != -1)
    {
      OUTLINED_FUNCTION_3_0();
      swift_once();
    }

    v16 = sub_1AC79FDE8();
    __swift_project_value_buffer(v16, qword_1ED9386C8);
    v17 = sub_1AC79FDC8();
    v18 = sub_1AC7A05E8();
    if (OUTLINED_FUNCTION_366(v18))
    {
      v36 = v7;
      v19 = OUTLINED_FUNCTION_150();
      v20 = p_cache;
      v21 = v10;
      v22 = OUTLINED_FUNCTION_418();
      *v19 = 138412290;
      *(v38 + 132) = v12;
      *(v38 + 140) = v13;
      *(v38 + 148) = v14;
      v23 = CMTimeCopyDescription(0, (v38 + 132));
      OUTLINED_FUNCTION_582(v23);
      _os_log_impl(&dword_1AC5BC000, v17, v18, "SpeechAnalyzer: Executing finalize/finish input barrier at %@", v19, 0xCu);
      sub_1AC5C9624(v22, &unk_1EB56C630, &qword_1AC7A7E40);
      v10 = v21;
      p_cache = v20;
      OUTLINED_FUNCTION_70();
      v5 = v35;
      v7 = v36;
      OUTLINED_FUNCTION_70();
    }

    v41[0] = sub_1AC7A0558();
    v41[1] = v24;
    v41[2] = v25;
    v42 = 0;
    v39(v41);

    if ((v40 & 1) == 0)
    {
      break;
    }

    if (v10 == v9)
    {

      goto LABEL_17;
    }

    v8 = 1;
LABEL_13:
    v6 = *(v5 + 16);
    v7 += 48;
    ++v9;
  }

  if (v10 != v9)
  {
    v8 = v37;
    goto LABEL_13;
  }

  if (!v37)
  {
    goto LABEL_20;
  }

LABEL_17:
  v26 = sub_1AC79FDC8();
  v27 = sub_1AC7A05D8();
  if (OUTLINED_FUNCTION_153(v27))
  {
    v28 = OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_242(v28);
    OUTLINED_FUNCTION_69();
    _os_log_impl(v29, v30, v31, v32, v33, 2u);
    OUTLINED_FUNCTION_129();
  }

LABEL_20:
  OUTLINED_FUNCTION_82();

  return v34();
}

uint64_t sub_1AC674E5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_355();
  OUTLINED_FUNCTION_102();
  v11 = v10[2] + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_updatedContext;
  os_unfair_lock_lock(v11);
  v12 = *(v11 + 8);
  v10[3] = v12;
  *(v11 + 8) = 0;
  os_unfair_lock_unlock(v11);
  if (v12)
  {
    *(v10[2] + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_internalContext) = v12;

    result = sub_1AC5CAF3C();
    v14 = result;
    v15 = 0;
    v16 = MEMORY[0x1E69E7CC0];
    a9 = MEMORY[0x1E69E7CC0];
    v17 = *(result + 16);
LABEL_3:
    v10[4] = v16;
    v18 = 16 * v15 + 32;
    while (v17 != v15)
    {
      if (v15 >= *(v14 + 16))
      {
        __break(1u);
LABEL_26:
        __break(1u);
        return result;
      }

      v19 = v18 + 16;
      ++v15;
      v20 = *(v14 + v18);
      result = object_getClass(v20);
      v21 = result != _TtC6Speech22SpeechRecognizerWorker || v20 == 0;
      v18 = v19;
      if (!v21)
      {
        v22 = swift_unknownObjectRetain();
        MEMORY[0x1B26E8CF0](v22);
        v23 = *((a9 & 0xFFFFFFFFFFFFFF8) + 0x18);
        if (*((a9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v23 >> 1)
        {
          OUTLINED_FUNCTION_9(v23);
          sub_1AC7A0178();
        }

        OUTLINED_FUNCTION_124_0();
        result = sub_1AC7A0198();
        v16 = a9;
        goto LABEL_3;
      }
    }

    result = sub_1AC61C24C();
    v10[5] = result;
    if (!result)
    {

      goto LABEL_18;
    }

    if (result < 1)
    {
      goto LABEL_26;
    }

    v10[6] = 0;
    v24 = v10[4];
    if ((v24 & 0xC000000000000001) != 0)
    {
      v16 = MEMORY[0x1B26E95B0](0);
    }

    else
    {
      OUTLINED_FUNCTION_537(result, v24);
    }

    v10[7] = v16;
    v33 = swift_task_alloc();
    v34 = OUTLINED_FUNCTION_76(v33);
    *v34 = v35;
    OUTLINED_FUNCTION_61_2(v34);
    OUTLINED_FUNCTION_291();

    return sub_1AC690BA8();
  }

  else
  {
LABEL_18:
    OUTLINED_FUNCTION_44();
    OUTLINED_FUNCTION_291();

    return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10);
  }
}

uint64_t sub_1AC67506C()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_19();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 72) = v0;

  OUTLINED_FUNCTION_496();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1AC675188()
{
  OUTLINED_FUNCTION_85();

  v2 = v1[6] + 1;
  if (v2 == v1[5])
  {

    OUTLINED_FUNCTION_44();

    return v3();
  }

  else
  {
    v1[6] = v2;
    v5 = v1[4];
    if ((v5 & 0xC000000000000001) != 0)
    {
      v0 = MEMORY[0x1B26E95B0]();
    }

    else
    {
      OUTLINED_FUNCTION_535(v2, v5);
    }

    v1[7] = v0;
    v6 = swift_task_alloc();
    v7 = OUTLINED_FUNCTION_76(v6);
    *v7 = v8;
    OUTLINED_FUNCTION_61_2(v7);

    return sub_1AC690BA8();
  }
}

uint64_t sub_1AC67526C()
{
  OUTLINED_FUNCTION_524();
  OUTLINED_FUNCTION_45();
  if (off_1ED937D60 != -1)
  {
    OUTLINED_FUNCTION_3_0();
    swift_once();
  }

  v1 = v0[9];
  v2 = sub_1AC79FDE8();
  OUTLINED_FUNCTION_10_3(v2, qword_1ED9386C8);
  v3 = v1;
  v4 = sub_1AC79FDC8();
  sub_1AC7A05F8();

  v5 = OUTLINED_FUNCTION_645();
  v6 = v0[9];
  if (v5)
  {
    v7 = OUTLINED_FUNCTION_150();
    v8 = OUTLINED_FUNCTION_418();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_582(v10);
    OUTLINED_FUNCTION_309();
    _os_log_impl(v11, v12, v13, v14, v15, 0xCu);
    sub_1AC5C9624(v8, &unk_1EB56C630, &qword_1AC7A7E40);
    OUTLINED_FUNCTION_125_1();
    OUTLINED_FUNCTION_96_0();
  }

  else
  {
  }

  v16 = v0[6] + 1;
  if (v16 == v0[5])
  {

    OUTLINED_FUNCTION_44();
    OUTLINED_FUNCTION_523();

    return v18(v17, v18, v19, v20, v21, v22, v23, v24);
  }

  else
  {
    v0[6] = v16;
    v26 = v0[4];
    if ((v26 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1B26E95B0]();
    }

    else
    {
      OUTLINED_FUNCTION_535(v16, v26);
    }

    v0[7] = v4;
    v27 = swift_task_alloc();
    v28 = OUTLINED_FUNCTION_76(v27);
    *v28 = v29;
    OUTLINED_FUNCTION_61_2(v28);
    OUTLINED_FUNCTION_523();

    return sub_1AC690BA8();
  }
}

void sub_1AC67547C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = OBJC_IVAR____TtC6Speech14SpeechAnalyzer_didFinishInputHandlers;
  swift_beginAccess();

  sub_1AC703C5C();
  v8 = *(*(v3 + v7) + 16);
  sub_1AC703DAC(v8);
  v9 = *(v3 + v7);
  *(v9 + 16) = v8 + 1;
  v10 = v9 + 16 * v8;
  *(v10 + 32) = sub_1AC689718;
  *(v10 + 40) = v6;
  *(v3 + v7) = v9;
  swift_endAccess();
  if (*(v3 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_isInputFinished) == 1)
  {
    sub_1AC675568(0);
  }
}

void sub_1AC675568(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC6Speech14SpeechAnalyzer_didFinishInputHandlers;
  OUTLINED_FUNCTION_574(v1 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_didFinishInputHandlers, v10);
  v4 = *(v1 + v3);
  v5 = *(v4 + 16);

  v6 = 0;
  for (i = v4 + 40; ; i += 16)
  {
    if (v5 == v6)
    {

      *(v1 + v3) = MEMORY[0x1E69E7CC0];

      return;
    }

    if (v6 >= *(v4 + 16))
    {
      break;
    }

    ++v6;
    v8 = *(i - 8);
    v9 = a1;

    v8(&v9);
  }

  __break(1u);
}

uint64_t sub_1AC675644(uint64_t a1, unint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v12 = a2;
  v14 = HIDWORD(a2);
  v15 = swift_allocObject();
  *(v15 + 16) = a5;
  *(v15 + 24) = a6;
  v16 = OBJC_IVAR____TtC6Speech14SpeechAnalyzer_inputBarriers;
  swift_beginAccess();

  sub_1AC703C74();
  v17 = *(*(v7 + v16) + 16);
  sub_1AC703DC4(v17);
  v18 = *(v7 + v16);
  *(v18 + 16) = v17 + 1;
  v19 = v18 + 48 * v17;
  *(v19 + 32) = a1;
  *(v19 + 40) = v12;
  *(v19 + 44) = v14;
  *(v19 + 48) = a3;
  *(v19 + 56) = a4;
  *(v19 + 64) = sub_1AC688EE8;
  *(v19 + 72) = v15;
  *(v7 + v16) = v18;
  return swift_endAccess();
}

uint64_t sub_1AC675748()
{
  v1 = OBJC_IVAR____TtC6Speech14SpeechAnalyzer_inputBarriers;
  swift_beginAccess();
  result = *(v0 + v1);
  *(v0 + v1) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t SpeechAnalyzer.finalize(through:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 72) = a4;
  *(v5 + 32) = a3;
  *(v5 + 40) = v4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  return OUTLINED_FUNCTION_15_5(sub_1AC6757BC, v4);
}

uint64_t sub_1AC6757BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_640();
  OUTLINED_FUNCTION_102();
  if (sub_1AC65BF3C(0xD000000000000012, 0x80000001AC7B6950))
  {
    if (*(v10 + 72))
    {
      v11 = 1;
    }

    else
    {
      sub_1AC70C064(*(v10 + 16), *(v10 + 24), *(v10 + 32));
      v11 = *(v10 + 72);
    }

    v22 = *(v10 + 32);
    v21 = *(v10 + 40);
    v37 = *(v10 + 16);
    OUTLINED_FUNCTION_16_6();
    sub_1AC68A730(v23, v24);
    v25 = swift_task_alloc();
    *(v10 + 48) = v25;
    *(v25 + 16) = v21;
    *(v25 + 24) = v37;
    *(v25 + 40) = v22;
    *(v25 + 48) = v11 & 1;
    v26 = swift_task_alloc();
    v27 = OUTLINED_FUNCTION_42_1(v26);
    *v27 = v28;
    v27[1] = sub_1AC67594C;
    OUTLINED_FUNCTION_228();
    OUTLINED_FUNCTION_168();

    return MEMORY[0x1EEE6DE38](v29, v30, v31, v32, v33, v34, v35, v36);
  }

  else
  {
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_168();

    return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
  }
}

uint64_t sub_1AC67594C()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_18();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (v0)
  {
    v7 = *(v3 + 40);
    v8 = sub_1AC68A83C;
  }

  else
  {
    v9 = *(v3 + 40);

    v8 = sub_1AC5C8B40;
    v7 = v9;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1AC675A58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v24 = a6;
  v23 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BCB8, &qword_1AC7A80E0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v23 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v23 - v15;
  v17 = sub_1AC7A0288();
  __swift_storeEnumTagSinglePayload(v16, 1, 1, v17);
  (*(v11 + 16))(v13, a1, v10);
  v18 = sub_1AC68A730(&qword_1EB56B360, type metadata accessor for SpeechAnalyzer);
  v19 = (*(v11 + 80) + 65) & ~*(v11 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  *(v20 + 24) = v18;
  *(v20 + 32) = a2;
  *(v20 + 40) = a3;
  v21 = v23;
  *(v20 + 48) = a4;
  *(v20 + 56) = v21;
  *(v20 + 64) = v24 & 1;
  (*(v11 + 32))(v20 + v19, v13, v10);
  swift_retain_n();
  sub_1AC659DBC();
}

uint64_t sub_1AC675C8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 40) = a7;
  *(v8 + 48) = v14;
  *(v8 + 104) = a8;
  *(v8 + 24) = a5;
  *(v8 + 32) = a6;
  *(v8 + 16) = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BCB8, &qword_1AC7A80E0);
  *(v8 + 56) = v10;
  v11 = *(v10 - 8);
  *(v8 + 64) = v11;
  *(v8 + 72) = *(v11 + 64);
  *(v8 + 80) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AC675D78, a4, 0);
}

uint64_t sub_1AC675D78()
{
  OUTLINED_FUNCTION_524();
  OUTLINED_FUNCTION_45();
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];
  (*(v3 + 16))(v1, v0[6], v2);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = swift_allocObject();
  v0[11] = v5;
  (*(v3 + 32))(v5 + v4, v1, v2);
  v6 = swift_task_alloc();
  v0[12] = v6;
  *v6 = v0;
  v6[1] = sub_1AC675EA4;
  OUTLINED_FUNCTION_523();

  return sub_1AC675FBC(v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_1AC675EA4()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v1 = *v0;
  OUTLINED_FUNCTION_18();
  *v2 = v1;

  OUTLINED_FUNCTION_44();

  return v3();
}

uint64_t sub_1AC675FBC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 48) = a7;
  *(v8 + 56) = v7;
  *(v8 + 273) = a5;
  *(v8 + 272) = a4;
  *(v8 + 32) = a3;
  *(v8 + 40) = a6;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = sub_1AC7A0288();
  *(v8 + 64) = v9;
  v10 = *(v9 - 8);
  *(v8 + 72) = v10;
  *(v8 + 80) = *(v10 + 64);
  *(v8 + 88) = swift_task_alloc();
  *(v8 + 96) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AC6760A0, v7, 0);
}

uint64_t sub_1AC6760A0()
{
  if (*(v1 + 272))
  {
    v2 = *(v1 + 56);
    v3 = (v2 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_latestInputSampleTime);
    if (*(v2 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_latestInputSampleTime + 24))
    {
      if (off_1ED937D60 != -1)
      {
        OUTLINED_FUNCTION_3_0();
        swift_once();
      }

      v4 = sub_1AC79FDE8();
      OUTLINED_FUNCTION_10_3(v4, qword_1ED9386C8);
      v5 = sub_1AC79FDC8();
      sub_1AC7A05E8();
      OUTLINED_FUNCTION_38_2();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = OUTLINED_FUNCTION_20();
        OUTLINED_FUNCTION_242(v7);
        OUTLINED_FUNCTION_410(&dword_1AC5BC000, v8, v9, "SpeechAnalyzer: Finalizing through latest of no input; skipping");
        OUTLINED_FUNCTION_129();
      }

      v10 = *(v1 + 40);

      v10(0);
      goto LABEL_23;
    }

    v11 = v3 + 2;
    v12 = v3 + 1;
  }

  else
  {
    v3 = (v1 + 16);
    v11 = (v1 + 32);
    v12 = (v1 + 24);
    v2 = *(v1 + 56);
  }

  v13 = *v11;
  v14 = *v12;
  v15 = *v3;
  v84 = HIDWORD(*v12);
  v16 = (v2 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_internalVolatileRange);
  if ((v16[6] & 1) == 0)
  {
    v18 = v16[2];
    v17 = v16[3];
    v19 = v16[5];
    LODWORD(v0) = *(v16 + 8);
    v83 = *(v16 + 9);
    v20 = *v16;
    v21 = v16[1];
    OUTLINED_FUNCTION_429();
    if (sub_1AC7A0678())
    {
      v77 = v0;
      v79 = v17;
      v81 = v15;
      if (off_1ED937D60 != -1)
      {
        OUTLINED_FUNCTION_3_0();
        swift_once();
      }

      v22 = sub_1AC79FDE8();
      OUTLINED_FUNCTION_10_3(v22, qword_1ED9386C8);
      v23 = sub_1AC79FDC8();
      v24 = sub_1AC7A05E8();
      if (os_log_type_enabled(v23, v24))
      {
        v75 = v19;
        v25 = v23;
        v26 = v14;
        v27 = OUTLINED_FUNCTION_448();
        v28 = swift_slowAlloc();
        *v27 = 138412546;
        *(v1 + 248) = v81;
        *(v1 + 256) = v26;
        v23 = v25;
        *(v1 + 260) = v84;
        *(v1 + 264) = v13;
        v29 = CMTimeCopyDescription(0, (v1 + 248));
        *(v27 + 4) = v29;
        *v28 = v29;
        *(v27 + 12) = 2112;
        *(v1 + 176) = v20;
        *(v1 + 184) = v21;
        *(v1 + 192) = v18;
        *(v1 + 200) = v79;
        *(v1 + 208) = v77;
        *(v1 + 212) = v83;
        *(v1 + 216) = v75;
        v30 = CMTimeRangeCopyDescription(0, (v1 + 176));
        *(v27 + 14) = v30;
        v28[1] = v30;
        _os_log_impl(&dword_1AC5BC000, v25, v24, "SpeechAnalyzer: Already finalized %@ before %@", v27, 0x16u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56C630, &qword_1AC7A7E40);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_70();
        OUTLINED_FUNCTION_70();
      }

      (*(v1 + 40))(0);
      goto LABEL_23;
    }
  }

  v31 = *(v1 + 56) + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_latestInputBufferRange;
  if ((*(v31 + 48) & 1) != 0 || (v58 = *(v31 + 32), v57 = *(v31 + 40), v0 = *(v31 + 16), v59 = *(v31 + 24), v60 = *(v31 + 8), *(v1 + 128) = *v31, *(v1 + 136) = v60, *(v1 + 144) = v0, *(v1 + 152) = v59, *(v1 + 160) = v58, *(v1 + 168) = v57, OUTLINED_FUNCTION_429(), (sub_1AC7A0528() & 1) == 0) && (OUTLINED_FUNCTION_429(), (sub_1AC7A0678() & 1) == 0))
  {
    if (off_1ED937D60 != -1)
    {
      OUTLINED_FUNCTION_3_0();
      swift_once();
    }

    v32 = sub_1AC79FDE8();
    OUTLINED_FUNCTION_10_3(v32, qword_1ED9386C8);
    v33 = sub_1AC79FDC8();
    v34 = sub_1AC7A05E8();
    if (OUTLINED_FUNCTION_153(v34))
    {
      v35 = OUTLINED_FUNCTION_150();
      v36 = OUTLINED_FUNCTION_418();
      *v35 = 138412290;
      *(v1 + 224) = v15;
      *(v1 + 232) = v14;
      *(v1 + 236) = v84;
      *(v1 + 240) = v13;
      v37 = CMTimeCopyDescription(0, (v1 + 224));
      OUTLINED_FUNCTION_582(v37);
      _os_log_impl(&dword_1AC5BC000, v33, v0, "SpeechAnalyzer: Setting finalization input barrier at %@", v35, 0xCu);
      sub_1AC5C9624(v36, &unk_1EB56C630, &qword_1AC7A7E40);
      OUTLINED_FUNCTION_125_1();
      OUTLINED_FUNCTION_96_0();
    }

    v39 = *(v1 + 88);
    v38 = *(v1 + 96);
    v74 = v39;
    v80 = v13;
    v40 = *(v1 + 72);
    v41 = *(v1 + 80);
    v42 = *(v1 + 64);
    v82 = *(v1 + 48);
    v78 = *(v1 + 40);
    v76 = *(v1 + 273);
    sub_1AC7A0338();
    OUTLINED_FUNCTION_235();
    v43 = swift_allocObject();
    swift_weakInit();
    OUTLINED_FUNCTION_504();
    v44 = v39;
    v45 = v42;
    v46(v44, v38, v42);
    v47 = (*(v40 + 80) + 16) & ~*(v40 + 80);
    v73 = v14;
    v48 = (v41 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
    v49 = swift_allocObject();
    (*(v40 + 32))(v49 + v47, v74, v45);
    *(v49 + v48) = v43;
    v50 = v49 + ((v48 + 11) & 0xFFFFFFFFFFFFFFF8);
    *v50 = v15;
    *(v50 + 8) = v73;
    *(v50 + 12) = v84;
    *(v50 + 16) = v80;
    *(v50 + 24) = v76;
    v51 = (v49 + ((v48 + 43) & 0xFFFFFFFFFFFFFFF8));
    *v51 = v78;
    v51[1] = v82;

    v52 = OUTLINED_FUNCTION_429();
    sub_1AC675644(v52, v53, v80, v76, v54, v49);

    (*(v40 + 8))(v38, v45);

LABEL_23:

    OUTLINED_FUNCTION_44();
    OUTLINED_FUNCTION_403();

    __asm { BRAA            X1, X16 }
  }

  if (off_1ED937D60 != -1)
  {
    OUTLINED_FUNCTION_3_0();
    swift_once();
  }

  v61 = sub_1AC79FDE8();
  OUTLINED_FUNCTION_10_3(v61, qword_1ED9386C8);
  v62 = sub_1AC79FDC8();
  sub_1AC7A05E8();
  OUTLINED_FUNCTION_38_2();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = OUTLINED_FUNCTION_20();
    *v64 = 0;
    _os_log_impl(&dword_1AC5BC000, v62, v0, "SpeechAnalyzer: Finalizing immediately", v64, 2u);
    OUTLINED_FUNCTION_96_0();
  }

  *(v1 + 104) = sub_1AC5CAF3C();
  v65 = swift_task_alloc();
  *(v1 + 112) = v65;
  *v65 = v1;
  v65[1] = sub_1AC676778;
  OUTLINED_FUNCTION_16_5();
  OUTLINED_FUNCTION_403();

  return sub_1AC678E10(v66, v67, v68, v69, v70);
}

uint64_t sub_1AC676778()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_18();
  *v6 = v5;
  *(v3 + 120) = v0;

  if (v0)
  {
    v7 = *(v3 + 56);
    v8 = sub_1AC6768F8;
  }

  else
  {
    v9 = *(v3 + 56);

    v8 = sub_1AC676888;
    v7 = v9;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1AC676888()
{
  OUTLINED_FUNCTION_85();
  (*(v0 + 40))(0);

  OUTLINED_FUNCTION_44();

  return v1();
}

uint64_t sub_1AC6768F8()
{
  OUTLINED_FUNCTION_72();
  v1 = *(v0 + 120);
  v2 = *(v0 + 40);

  v3 = v1;
  v2(v1);

  OUTLINED_FUNCTION_44();

  return v4();
}

uint64_t SpeechAnalyzer.finalizeAndFinishThroughEndOfInput()()
{
  OUTLINED_FUNCTION_85();
  v1[2] = v0;
  v2 = sub_1AC7A0288();
  v1[3] = v2;
  OUTLINED_FUNCTION_22(v2);
  v1[4] = v3;
  v1[5] = OUTLINED_FUNCTION_126();
  v4 = OUTLINED_FUNCTION_222();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1AC676A38()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  v1 = sub_1AC65BF3C(0xD000000000000024, 0x80000001AC7B6970);
  v2 = v0[5];
  if (v1)
  {
    v3 = v0[2];
    sub_1AC7A0338();
    OUTLINED_FUNCTION_16_6();
    sub_1AC68A730(v4, v5);
    v6 = swift_task_alloc();
    v0[6] = v6;
    *(v6 + 16) = v3;
    *(v6 + 24) = v2;
    v7 = swift_task_alloc();
    v8 = OUTLINED_FUNCTION_42_1(v7);
    *v8 = v9;
    v8[1] = sub_1AC676BA0;
    OUTLINED_FUNCTION_228();
    OUTLINED_FUNCTION_149_0();

    return MEMORY[0x1EEE6DE38](v10, v11, v12, v13, v14, v15, v16, v17);
  }

  else
  {

    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_149_0();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25);
  }
}

uint64_t sub_1AC676BA0()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_18();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (v0)
  {
    v7 = *(v3 + 16);
    v8 = sub_1AC676D20;
  }

  else
  {
    v9 = *(v3 + 16);

    v8 = sub_1AC676CB0;
    v7 = v9;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1AC676CB0()
{
  OUTLINED_FUNCTION_85();
  (*(v0[4] + 8))(v0[5], v0[3]);

  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t sub_1AC676D20()
{
  OUTLINED_FUNCTION_72();

  v0 = OUTLINED_FUNCTION_89();
  v1(v0);

  OUTLINED_FUNCTION_44();

  return v2();
}

uint64_t sub_1AC676DA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19[1] = a2;
  v20 = a3;
  v21 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BCB8, &qword_1AC7A80E0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v19 - v5;
  v19[0] = v19 - v5;
  v7 = sub_1AC7A0288();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  swift_weakInit();
  (*(v8 + 16))(v10, v20, v7);
  v12 = v6;
  v13 = v3;
  (*(v4 + 16))(v12, v21, v3);
  v14 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v15 = (v9 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (*(v4 + 80) + v15 + 8) & ~*(v4 + 80);
  v17 = swift_allocObject();
  (*(v8 + 32))(v17 + v14, v10, v7);
  *(v17 + v15) = v11;
  (*(v4 + 32))(v17 + v16, v19[0], v13);

  sub_1AC67547C(sub_1AC689638, v17);
}

uint64_t sub_1AC677014(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a1;
  v5 = sub_1AC7A0288();
  v30 = *(v5 - 8);
  v6 = v30;
  v36 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BCB8, &qword_1AC7A80E0);
  v8 = *(v32 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v31 = &v27 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v27 - v12;
  v33 = &v27 - v12;
  v14 = *(v6 + 16);
  v14(&v27 - v12, a2, v5);
  v28 = v5;
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v5);
  v29 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v16 = v31;
  v15 = v32;
  (*(v8 + 16))(v31, v35, v32);
  v17 = v34;
  v14(v34, a2, v5);
  v18 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v19 = (v9 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = v30;
  v21 = (*(v30 + 80) + v19 + 8) & ~*(v30 + 80);
  v22 = swift_allocObject();
  *(v22 + 2) = 0;
  *(v22 + 3) = 0;
  v23 = v37;
  *(v22 + 4) = v37;
  (*(v8 + 32))(&v22[v18], v16, v15);
  v24 = v28;
  *&v22[v19] = v29;
  (*(v20 + 32))(&v22[v21], v17, v24);
  v25 = v23;
  sub_1AC659DBC();
}

uint64_t sub_1AC677350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[11] = a6;
  v7[12] = a7;
  v7[9] = a4;
  v7[10] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BCB8, &qword_1AC7A80E0);
  v7[13] = v8;
  v9 = *(v8 - 8);
  v7[14] = v9;
  v7[15] = *(v9 + 64);
  v7[16] = swift_task_alloc();
  v10 = sub_1AC7A0288();
  v7[17] = v10;
  v11 = *(v10 - 8);
  v7[18] = v11;
  v7[19] = *(v11 + 64);
  v7[20] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AC67748C, 0, 0);
}

uint64_t sub_1AC67748C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_55_3();
  v21 = v19[9];
  if (v21)
  {
    if (off_1ED937D60 != -1)
    {
      OUTLINED_FUNCTION_3_0();
      swift_once();
      v21 = v19[9];
    }

    v22 = sub_1AC79FDE8();
    OUTLINED_FUNCTION_10_3(v22, qword_1ED9386C8);
    v23 = v21;
    v24 = sub_1AC79FDC8();
    sub_1AC7A05E8();

    if (os_log_type_enabled(v24, v18))
    {
      OUTLINED_FUNCTION_150();
      v25 = OUTLINED_FUNCTION_97_0();
      *v20 = 138412290;
      v26 = v21;
      v27 = _swift_stdlib_bridgeErrorToNSError();
      OUTLINED_FUNCTION_118(v27);
      OUTLINED_FUNCTION_376(&dword_1AC5BC000, v28, v18, "SpeechAnalyzer: End of input not reached because %@");
      sub_1AC5C9624(v25, &unk_1EB56C630, &qword_1AC7A7E40);
      OUTLINED_FUNCTION_96_0();
      OUTLINED_FUNCTION_77_1();
    }

    v19[8] = v21;
    v29 = v21;
    sub_1AC7A01C8();
LABEL_7:

    OUTLINED_FUNCTION_44();
    OUTLINED_FUNCTION_26();

    return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
  }

  if (off_1ED937D60 != -1)
  {
    OUTLINED_FUNCTION_3_0();
    swift_once();
  }

  v39 = sub_1AC79FDE8();
  OUTLINED_FUNCTION_10_3(v39, qword_1ED9386C8);
  v40 = sub_1AC79FDC8();
  v41 = sub_1AC7A05E8();
  if (OUTLINED_FUNCTION_153(v41))
  {
    v42 = OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_242(v42);
    OUTLINED_FUNCTION_69();
    _os_log_impl(v43, v44, v45, v46, v47, 2u);
    OUTLINED_FUNCTION_129();
  }

  OUTLINED_FUNCTION_175();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v19[21] = Strong;
  if (!Strong)
  {
    goto LABEL_7;
  }

  v49 = v19[20];
  v50 = v19[18];
  v51 = v19[16];
  v71 = v51;
  v72 = v19[17];
  v52 = v19[14];
  v74 = v19[19];
  v53 = v19[12];
  v54 = v19[13];
  v70 = v54;
  v73 = v19[10];
  OUTLINED_FUNCTION_235();
  v55 = swift_allocObject();
  v19[22] = v55;
  OUTLINED_FUNCTION_175();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  OUTLINED_FUNCTION_504();
  v56(v49, v53, v72);
  (*(v52 + 16))(v51, v73, v54);
  v57 = (*(v50 + 80) + 16) & ~*(v50 + 80);
  v58 = (v74 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
  v59 = (*(v52 + 80) + v58 + 8) & ~*(v52 + 80);
  v60 = swift_allocObject();
  v19[23] = v60;
  (*(v50 + 32))(v60 + v57, v49, v72);
  *(v60 + v58) = v55;
  (*(v52 + 32))(v60 + v59, v71, v70);

  v61 = swift_task_alloc();
  v19[24] = v61;
  *v61 = v19;
  v61[1] = sub_1AC677858;
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_26();

  return sub_1AC675FBC(v62, v63, v64, v65, v66, v67, v68);
}