uint64_t sub_10001C2A8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v5 = sub_100027E48;
  }

  else
  {

    *(v4 + 112) = a1;
    v5 = sub_10001C3D8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10001C3D8()
{
  v1 = v0[14];
  v2 = v0[9];
  v3 = *(v0[10] + 24);
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_100027BAC;
  *(v5 + 24) = v4;
  v0[6] = sub_100027D6C;
  v0[7] = v5;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100015128;
  v0[5] = &block_descriptor_233;
  v6 = _Block_copy(v0 + 2);

  [v3 performBlockAndWait:v6];
  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  else
  {
    v8 = v0[1];

    return v8();
  }

  return result;
}

uint64_t sub_10001C570(uint64_t a1)
{
  *(v2 + 72) = a1;
  *(v2 + 80) = v1;
  return _swift_task_switch(sub_10001C590, 0, 0);
}

uint64_t sub_10001C590()
{
  v18 = v0;
  v1 = v0[9];
  v17 = _swiftEmptyArrayStorage;
  if (v1 >> 62)
  {
LABEL_23:
    v15 = v1 & 0xFFFFFFFFFFFFFF8;
    v16 = sub_1000293D8();
    v2 = v0[9];
  }

  else
  {
    v15 = v1 & 0xFFFFFFFFFFFFFF8;
    v16 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v2 = v1;
  }

  v3 = 0;
  v4 = v0[10];
  v5 = v1 & 0xC000000000000001;
  v6 = v2 + 32;
  v7 = _swiftEmptyArrayStorage;
LABEL_4:
  v14 = v7;
  v0[11] = v7;
  while (v16 != v3)
  {
    if (v5)
    {
      v8 = sub_1000293B8();
    }

    else
    {
      if (v3 >= *(v15 + 16))
      {
        goto LABEL_22;
      }

      v8 = *(v6 + 8 * v3);
    }

    v9 = v8;
    v10 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v1 = *(v4 + 24);
    *(swift_task_alloc() + 16) = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1000473A0, &qword_10002BF60);
    sub_100029218();

    ++v3;
    if (v0[8])
    {
      sub_100029028();
      if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_100029058();
      }

      v1 = &v17;
      sub_100029068();
      v7 = v17;
      v3 = v10;
      goto LABEL_4;
    }
  }

  if (v14 >> 62)
  {
    if (sub_1000293D8())
    {
      goto LABEL_18;
    }
  }

  else if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_18:
    v11 = swift_task_alloc();
    v0[12] = v11;
    *v11 = v0;
    v11[1] = sub_10001C83C;

    return sub_100020C5C(v14);
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_10001C83C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v5 = sub_100027E48;
  }

  else
  {

    *(v4 + 112) = a1;
    v5 = sub_10001C96C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10001C96C()
{
  v1 = v0[14];
  v2 = v0[9];
  v3 = *(v0[10] + 24);
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_100027B28;
  *(v5 + 24) = v4;
  v0[6] = sub_100027D6C;
  v0[7] = v5;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100015128;
  v0[5] = &block_descriptor_208;
  v6 = _Block_copy(v0 + 2);

  [v3 performBlockAndWait:v6];
  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  else
  {
    v8 = v0[1];

    return v8();
  }

  return result;
}

uint64_t sub_10001CB04(uint64_t a1)
{
  *(v2 + 72) = a1;
  *(v2 + 80) = v1;
  return _swift_task_switch(sub_10001CB24, 0, 0);
}

uint64_t sub_10001CB24()
{
  v18 = v0;
  v1 = v0[9];
  v17 = _swiftEmptyArrayStorage;
  if (v1 >> 62)
  {
LABEL_23:
    v15 = v1 & 0xFFFFFFFFFFFFFF8;
    v16 = sub_1000293D8();
    v2 = v0[9];
  }

  else
  {
    v15 = v1 & 0xFFFFFFFFFFFFFF8;
    v16 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v2 = v1;
  }

  v3 = 0;
  v4 = v0[10];
  v5 = v1 & 0xC000000000000001;
  v6 = v2 + 32;
  v7 = _swiftEmptyArrayStorage;
LABEL_4:
  v14 = v7;
  v0[11] = v7;
  while (v16 != v3)
  {
    if (v5)
    {
      v8 = sub_1000293B8();
    }

    else
    {
      if (v3 >= *(v15 + 16))
      {
        goto LABEL_22;
      }

      v8 = *(v6 + 8 * v3);
    }

    v9 = v8;
    v10 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v1 = *(v4 + 24);
    *(swift_task_alloc() + 16) = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1000473A0, &qword_10002BF60);
    sub_100029218();

    ++v3;
    if (v0[8])
    {
      sub_100029028();
      if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_100029058();
      }

      v1 = &v17;
      sub_100029068();
      v7 = v17;
      v3 = v10;
      goto LABEL_4;
    }
  }

  if (v14 >> 62)
  {
    if (sub_1000293D8())
    {
      goto LABEL_18;
    }
  }

  else if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_18:
    v11 = swift_task_alloc();
    v0[12] = v11;
    *v11 = v0;
    v11[1] = sub_10001CDD0;

    return sub_100020C5C(v14);
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_10001CDD0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v5 = sub_100027E48;
  }

  else
  {

    *(v4 + 112) = a1;
    v5 = sub_10001CF00;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10001CF00()
{
  v1 = v0[14];
  v2 = v0[9];
  v3 = *(v0[10] + 24);
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_100027A9C;
  *(v5 + 24) = v4;
  v0[6] = sub_100027D6C;
  v0[7] = v5;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100015128;
  v0[5] = &block_descriptor_185;
  v6 = _Block_copy(v0 + 2);

  [v3 performBlockAndWait:v6];
  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  else
  {
    v8 = v0[1];

    return v8();
  }

  return result;
}

uint64_t sub_10001D098(uint64_t a1)
{
  *(v2 + 72) = a1;
  *(v2 + 80) = v1;
  return _swift_task_switch(sub_10001D0B8, 0, 0);
}

uint64_t sub_10001D0B8()
{
  v18 = v0;
  v1 = v0[9];
  v17 = _swiftEmptyArrayStorage;
  if (v1 >> 62)
  {
LABEL_23:
    v15 = v1 & 0xFFFFFFFFFFFFFF8;
    v16 = sub_1000293D8();
    v2 = v0[9];
  }

  else
  {
    v15 = v1 & 0xFFFFFFFFFFFFFF8;
    v16 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v2 = v1;
  }

  v3 = 0;
  v4 = v0[10];
  v5 = v1 & 0xC000000000000001;
  v6 = v2 + 32;
  v7 = _swiftEmptyArrayStorage;
LABEL_4:
  v14 = v7;
  v0[11] = v7;
  while (v16 != v3)
  {
    if (v5)
    {
      v8 = sub_1000293B8();
    }

    else
    {
      if (v3 >= *(v15 + 16))
      {
        goto LABEL_22;
      }

      v8 = *(v6 + 8 * v3);
    }

    v9 = v8;
    v10 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v1 = *(v4 + 24);
    *(swift_task_alloc() + 16) = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1000473A0, &qword_10002BF60);
    sub_100029218();

    ++v3;
    if (v0[8])
    {
      sub_100029028();
      if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_100029058();
      }

      v1 = &v17;
      sub_100029068();
      v7 = v17;
      v3 = v10;
      goto LABEL_4;
    }
  }

  if (v14 >> 62)
  {
    if (sub_1000293D8())
    {
      goto LABEL_18;
    }
  }

  else if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_18:
    v11 = swift_task_alloc();
    v0[12] = v11;
    *v11 = v0;
    v11[1] = sub_10001D364;

    return sub_100020C5C(v14);
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_10001D364(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v5 = sub_10001D62C;
  }

  else
  {

    *(v4 + 112) = a1;
    v5 = sub_10001D494;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10001D494()
{
  v1 = v0[14];
  v2 = v0[9];
  v3 = *(v0[10] + 24);
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1000279E4;
  *(v5 + 24) = v4;
  v0[6] = sub_100027D6C;
  v0[7] = v5;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100015128;
  v0[5] = &block_descriptor_152;
  v6 = _Block_copy(v0 + 2);

  [v3 performBlockAndWait:v6];
  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  else
  {
    v8 = v0[1];

    return v8();
  }

  return result;
}

uint64_t sub_10001D62C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10001D690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[13] = a6;
  v7[14] = a7;
  v7[11] = a4;
  v7[12] = a5;
  v7[9] = a2;
  v7[10] = a3;
  v7[8] = a1;
  return _swift_task_switch(sub_10001D6BC, 0, 0);
}

uint64_t sub_10001D6BC()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  v4 = v0[8];
  v5 = *(v2 + 24);
  v6 = swift_task_alloc();
  v6[2] = v2;
  v6[3] = v4;
  v6[4] = v3;
  v6[5] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100047338, &qword_10002BED0);
  sub_100029218();
  v7 = v0[9];

  if (!v7)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    return result;
  }

  v9 = 0;
  v26 = v0[3];
  v27 = v0[2];
  v28 = *(v26 + 16);
  v10 = v0[9];
  while (1)
  {
    v11 = v28 >= v9;
    if (v10 > 0)
    {
      v11 = v9 >= v28;
    }

    if (v11 || (sub_1000290E8() & 1) != 0)
    {
      break;
    }

    v12 = v0[13];
    v13 = v0[9];
    if (__OFADD__(v9, v13))
    {
      v14 = ((v9 + v13) >> 63) ^ 0x8000000000000000;
    }

    else
    {
      v14 = v9 + v13;
    }

    v15 = swift_task_alloc();
    v15[2] = v9;
    v15[3] = v13;
    v15[4] = v26;
    v15[5] = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100047340, &qword_10002BED8);
    sub_100029218();

    v12(v0[2]);

    sub_100029218();
    v9 = v14;
  }

  v16 = v0[12];

  v17 = swift_allocObject();
  *(v17 + 16) = sub_100027D70;
  *(v17 + 24) = v16;
  v0[6] = sub_100027D6C;
  v0[7] = v17;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100015128;
  v0[5] = &block_descriptor_52;
  v18 = _Block_copy(v0 + 2);

  [v5 performBlockAndWait:v18];
  _Block_release(v18);
  LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

  if (v16)
  {
    goto LABEL_16;
  }

  v19 = v0[8];
  v20 = v0[9];
  sub_100029388(60);
  v30._object = 0x800000010002E4E0;
  v30._countAndFlagsBits = 0xD000000000000014;
  sub_100028FE8(v30);
  v0[2] = v28;
  v31._countAndFlagsBits = sub_100029408();
  sub_100028FE8(v31);

  v32._countAndFlagsBits = 0xD000000000000015;
  v32._object = 0x800000010002E500;
  sub_100028FE8(v32);
  v0[2] = v20;
  v33._countAndFlagsBits = sub_100029408();
  sub_100028FE8(v33);

  v34._countAndFlagsBits = 0x71657220726F6620;
  v34._object = 0xED00002074736575;
  sub_100028FE8(v34);
  v21 = [v19 description];
  v22 = sub_100028F88();
  v24 = v23;

  v35._countAndFlagsBits = v22;
  v35._object = v24;
  sub_100028FE8(v35);

  _sSo9OS_os_logC9mapssyncdE5debugyySSFZ_0(0, 0xE000000000000000);

  v25 = v0[1];

  return v25();
}

uint64_t sub_10001DB7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[17] = a5;
  v6[18] = a6;
  v6[15] = a3;
  v6[16] = a4;
  v6[13] = a1;
  v6[14] = a2;
  return _swift_task_switch(sub_10001DBA4, 0, 0);
}

uint64_t sub_10001DBA4()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  v4 = v0[13];
  v0[19] = *(v1 + 24);
  v5 = swift_task_alloc();
  v5[2] = v1;
  v5[3] = v4;
  v5[4] = v3;
  v5[5] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100047338, &qword_10002BED0);
  sub_100029218();
  v6 = v0[14];

  result = v0[9];
  v0[20] = v0[8];
  v0[21] = result;
  v8 = *(result + 16);
  v0[22] = v8;
  if (!v6)
  {
    __break(1u);
    goto LABEL_13;
  }

  v9 = v0[14];
  if (v9 < 1 || !v8 || (v0[23] = v9, v10 = sub_1000290E8(), v11 = v0[20], (v10 & 1) != 0))
  {
    v12 = v0[19];
    v13 = v0[17];

    v14 = swift_allocObject();
    *(v14 + 16) = sub_100027D70;
    *(v14 + 24) = v13;
    v0[6] = sub_100027D6C;
    v0[7] = v14;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_100015128;
    v0[5] = &block_descriptor_221;
    v15 = _Block_copy(v0 + 2);

    [v12 performBlockAndWait:v15];
    _Block_release(v15);
    LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

    if ((v12 & 1) == 0)
    {
      v16 = v0[22];
      v17 = v0[13];
      v18 = v0[14];
      sub_100029388(60);
      v30._object = 0x800000010002E4E0;
      v30._countAndFlagsBits = 0xD000000000000014;
      sub_100028FE8(v30);
      v0[11] = v16;
      v31._countAndFlagsBits = sub_100029408();
      sub_100028FE8(v31);

      v32._countAndFlagsBits = 0xD000000000000015;
      v32._object = 0x800000010002E500;
      sub_100028FE8(v32);
      v0[12] = v18;
      v33._countAndFlagsBits = sub_100029408();
      sub_100028FE8(v33);

      v34._countAndFlagsBits = 0x71657220726F6620;
      v34._object = 0xED00002074736575;
      sub_100028FE8(v34);
      v19 = [v17 description];
      v20 = sub_100028F88();
      v22 = v21;

      v35._countAndFlagsBits = v20;
      v35._object = v22;
      sub_100028FE8(v35);

      _sSo9OS_os_logC9mapssyncdE5debugyySSFZ_0(0, 0xE000000000000000);

      v23 = v0[1];

      return v23();
    }

LABEL_13:
    __break(1u);
    return result;
  }

  v24 = v0[14];
  v25 = v0[21];
  v26 = swift_task_alloc();
  v26[2] = 0;
  v26[3] = v24;
  v26[4] = v25;
  v26[5] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100047340, &qword_10002BED8);
  sub_100029218();

  v27 = v0[10];
  v0[24] = v27;
  v28 = swift_task_alloc();
  v0[25] = v28;
  *v28 = v0;
  v28[1] = sub_10001E044;

  return sub_10001BFDC(v27);
}

uint64_t sub_10001E044()
{
  *(*v1 + 208) = v0;

  if (v0)
  {

    v2 = sub_100027D68;
  }

  else
  {
    v2 = sub_10001E190;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10001E190()
{
  v1 = *(v0 + 208);
  sub_100029218();
  if (v1)
  {

    v2 = *(v0 + 8);
LABEL_11:

    return v2();
  }

  v3 = *(v0 + 176);
  v4 = *(v0 + 184);
  v5 = *(v0 + 112);
  v6 = v3 >= v4;
  v7 = v4 >= v3;
  if (v5 <= 0)
  {
    v7 = v6;
  }

  if (v7)
  {
    goto LABEL_9;
  }

  v8 = __OFADD__(v4, v5);
  v9 = v4 + v5;
  if (v8)
  {
    v9 = (v9 >> 63) ^ 0x8000000000000000;
  }

  *(v0 + 184) = v9;
  if (sub_1000290E8())
  {
LABEL_9:
    v10 = *(v0 + 152);
    v11 = *(v0 + 136);

    v12 = swift_allocObject();
    *(v12 + 16) = sub_100027D70;
    *(v12 + 24) = v11;
    *(v0 + 48) = sub_100027D6C;
    *(v0 + 56) = v12;
    *(v0 + 16) = _NSConcreteStackBlock;
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_100015128;
    *(v0 + 40) = &block_descriptor_221;
    v13 = _Block_copy((v0 + 16));

    [v10 performBlockAndWait:v13];
    _Block_release(v13);
    LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

    if (v10)
    {
      __break(1u);
      return result;
    }

    v15 = *(v0 + 176);
    v16 = *(v0 + 104);
    v17 = *(v0 + 112);
    sub_100029388(60);
    v28._object = 0x800000010002E4E0;
    v28._countAndFlagsBits = 0xD000000000000014;
    sub_100028FE8(v28);
    *(v0 + 88) = v15;
    v29._countAndFlagsBits = sub_100029408();
    sub_100028FE8(v29);

    v30._countAndFlagsBits = 0xD000000000000015;
    v30._object = 0x800000010002E500;
    sub_100028FE8(v30);
    *(v0 + 96) = v17;
    v31._countAndFlagsBits = sub_100029408();
    sub_100028FE8(v31);

    v32._countAndFlagsBits = 0x71657220726F6620;
    v32._object = 0xED00002074736575;
    sub_100028FE8(v32);
    v18 = [v16 description];
    v19 = sub_100028F88();
    v21 = v20;

    v33._countAndFlagsBits = v19;
    v33._object = v21;
    sub_100028FE8(v33);

    _sSo9OS_os_logC9mapssyncdE5debugyySSFZ_0(0, 0xE000000000000000);

    v2 = *(v0 + 8);
    goto LABEL_11;
  }

  v22 = *(v0 + 112);
  v23 = swift_task_alloc();
  v24 = *(v0 + 160);
  v23[1].i64[0] = v4;
  v23[1].i64[1] = v22;
  v23[2] = vextq_s8(v24, v24, 8uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100047340, &qword_10002BED8);
  sub_100029218();

  v25 = *(v0 + 80);
  *(v0 + 192) = v25;
  v26 = swift_task_alloc();
  *(v0 + 200) = v26;
  *v26 = v0;
  v26[1] = sub_10001E044;

  return sub_10001BFDC(v25);
}

uint64_t sub_10001E608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[13] = a6;
  v7[14] = a7;
  v7[11] = a4;
  v7[12] = a5;
  v7[9] = a2;
  v7[10] = a3;
  v7[8] = a1;
  return _swift_task_switch(sub_10001E634, 0, 0);
}

uint64_t sub_10001E634()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  v4 = v0[8];
  v5 = *(v2 + 24);
  v6 = swift_task_alloc();
  v6[2] = v2;
  v6[3] = v4;
  v6[4] = v3;
  v6[5] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1000472D8, &qword_10002BEA0);
  sub_100029218();
  v7 = v0[9];

  if (!v7)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    return result;
  }

  v9 = 0;
  v26 = v0[3];
  v27 = v0[2];
  v28 = *(v26 + 16);
  v10 = v0[9];
  while (1)
  {
    v11 = v28 >= v9;
    if (v10 > 0)
    {
      v11 = v9 >= v28;
    }

    if (v11 || (sub_1000290E8() & 1) != 0)
    {
      break;
    }

    v12 = v0[13];
    v13 = v0[9];
    if (__OFADD__(v9, v13))
    {
      v14 = ((v9 + v13) >> 63) ^ 0x8000000000000000;
    }

    else
    {
      v14 = v9 + v13;
    }

    v15 = swift_task_alloc();
    v15[2] = v9;
    v15[3] = v13;
    v15[4] = v26;
    v15[5] = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1000472E0, &qword_10002BEA8);
    sub_100029218();

    v12(v0[2]);

    sub_100029218();
    v9 = v14;
  }

  v16 = v0[12];

  v17 = swift_allocObject();
  *(v17 + 16) = sub_100026D70;
  *(v17 + 24) = v16;
  v0[6] = sub_100026D80;
  v0[7] = v17;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100015128;
  v0[5] = &block_descriptor_2;
  v18 = _Block_copy(v0 + 2);

  [v5 performBlockAndWait:v18];
  _Block_release(v18);
  LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

  if (v16)
  {
    goto LABEL_16;
  }

  v19 = v0[8];
  v20 = v0[9];
  sub_100029388(60);
  v30._object = 0x800000010002E4E0;
  v30._countAndFlagsBits = 0xD000000000000014;
  sub_100028FE8(v30);
  v0[2] = v28;
  v31._countAndFlagsBits = sub_100029408();
  sub_100028FE8(v31);

  v32._countAndFlagsBits = 0xD000000000000015;
  v32._object = 0x800000010002E500;
  sub_100028FE8(v32);
  v0[2] = v20;
  v33._countAndFlagsBits = sub_100029408();
  sub_100028FE8(v33);

  v34._countAndFlagsBits = 0x71657220726F6620;
  v34._object = 0xED00002074736575;
  sub_100028FE8(v34);
  v21 = [v19 description];
  v22 = sub_100028F88();
  v24 = v23;

  v35._countAndFlagsBits = v22;
  v35._object = v24;
  sub_100028FE8(v35);

  _sSo9OS_os_logC9mapssyncdE5debugyySSFZ_0(0, 0xE000000000000000);

  v25 = v0[1];

  return v25();
}

uint64_t sub_10001EAF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[17] = a5;
  v6[18] = a6;
  v6[15] = a3;
  v6[16] = a4;
  v6[13] = a1;
  v6[14] = a2;
  return _swift_task_switch(sub_10001EB1C, 0, 0);
}

uint64_t sub_10001EB1C()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  v4 = v0[13];
  v0[19] = *(v1 + 24);
  v5 = swift_task_alloc();
  v5[2] = v1;
  v5[3] = v4;
  v5[4] = v3;
  v5[5] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1000472D8, &qword_10002BEA0);
  sub_100029218();
  v6 = v0[14];

  result = v0[9];
  v0[20] = v0[8];
  v0[21] = result;
  v8 = *(result + 16);
  v0[22] = v8;
  if (!v6)
  {
    __break(1u);
    goto LABEL_13;
  }

  v9 = v0[14];
  if (v9 < 1 || !v8 || (v0[23] = v9, v10 = sub_1000290E8(), v11 = v0[20], (v10 & 1) != 0))
  {
    v12 = v0[19];
    v13 = v0[17];

    v14 = swift_allocObject();
    *(v14 + 16) = sub_100027D70;
    *(v14 + 24) = v13;
    v0[6] = sub_100027D6C;
    v0[7] = v14;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_100015128;
    v0[5] = &block_descriptor_173;
    v15 = _Block_copy(v0 + 2);

    [v12 performBlockAndWait:v15];
    _Block_release(v15);
    LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

    if ((v12 & 1) == 0)
    {
      v16 = v0[22];
      v17 = v0[13];
      v18 = v0[14];
      sub_100029388(60);
      v30._object = 0x800000010002E4E0;
      v30._countAndFlagsBits = 0xD000000000000014;
      sub_100028FE8(v30);
      v0[11] = v16;
      v31._countAndFlagsBits = sub_100029408();
      sub_100028FE8(v31);

      v32._countAndFlagsBits = 0xD000000000000015;
      v32._object = 0x800000010002E500;
      sub_100028FE8(v32);
      v0[12] = v18;
      v33._countAndFlagsBits = sub_100029408();
      sub_100028FE8(v33);

      v34._countAndFlagsBits = 0x71657220726F6620;
      v34._object = 0xED00002074736575;
      sub_100028FE8(v34);
      v19 = [v17 description];
      v20 = sub_100028F88();
      v22 = v21;

      v35._countAndFlagsBits = v20;
      v35._object = v22;
      sub_100028FE8(v35);

      _sSo9OS_os_logC9mapssyncdE5debugyySSFZ_0(0, 0xE000000000000000);

      v23 = v0[1];

      return v23();
    }

LABEL_13:
    __break(1u);
    return result;
  }

  v24 = v0[14];
  v25 = v0[21];
  v26 = swift_task_alloc();
  v26[2] = 0;
  v26[3] = v24;
  v26[4] = v25;
  v26[5] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1000472E0, &qword_10002BEA8);
  sub_100029218();

  v27 = v0[10];
  v0[24] = v27;
  v28 = swift_task_alloc();
  v0[25] = v28;
  *v28 = v0;
  v28[1] = sub_10001EFBC;

  return sub_10001CB04(v27);
}

uint64_t sub_10001EFBC()
{
  *(*v1 + 208) = v0;

  if (v0)
  {

    v2 = sub_10001F580;
  }

  else
  {
    v2 = sub_10001F108;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10001F108()
{
  v1 = *(v0 + 208);
  sub_100029218();
  if (v1)
  {

    v2 = *(v0 + 8);
LABEL_11:

    return v2();
  }

  v3 = *(v0 + 176);
  v4 = *(v0 + 184);
  v5 = *(v0 + 112);
  v6 = v3 >= v4;
  v7 = v4 >= v3;
  if (v5 <= 0)
  {
    v7 = v6;
  }

  if (v7)
  {
    goto LABEL_9;
  }

  v8 = __OFADD__(v4, v5);
  v9 = v4 + v5;
  if (v8)
  {
    v9 = (v9 >> 63) ^ 0x8000000000000000;
  }

  *(v0 + 184) = v9;
  if (sub_1000290E8())
  {
LABEL_9:
    v10 = *(v0 + 152);
    v11 = *(v0 + 136);

    v12 = swift_allocObject();
    *(v12 + 16) = sub_100027D70;
    *(v12 + 24) = v11;
    *(v0 + 48) = sub_100027D6C;
    *(v0 + 56) = v12;
    *(v0 + 16) = _NSConcreteStackBlock;
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_100015128;
    *(v0 + 40) = &block_descriptor_173;
    v13 = _Block_copy((v0 + 16));

    [v10 performBlockAndWait:v13];
    _Block_release(v13);
    LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

    if (v10)
    {
      __break(1u);
      return result;
    }

    v15 = *(v0 + 176);
    v16 = *(v0 + 104);
    v17 = *(v0 + 112);
    sub_100029388(60);
    v28._object = 0x800000010002E4E0;
    v28._countAndFlagsBits = 0xD000000000000014;
    sub_100028FE8(v28);
    *(v0 + 88) = v15;
    v29._countAndFlagsBits = sub_100029408();
    sub_100028FE8(v29);

    v30._countAndFlagsBits = 0xD000000000000015;
    v30._object = 0x800000010002E500;
    sub_100028FE8(v30);
    *(v0 + 96) = v17;
    v31._countAndFlagsBits = sub_100029408();
    sub_100028FE8(v31);

    v32._countAndFlagsBits = 0x71657220726F6620;
    v32._object = 0xED00002074736575;
    sub_100028FE8(v32);
    v18 = [v16 description];
    v19 = sub_100028F88();
    v21 = v20;

    v33._countAndFlagsBits = v19;
    v33._object = v21;
    sub_100028FE8(v33);

    _sSo9OS_os_logC9mapssyncdE5debugyySSFZ_0(0, 0xE000000000000000);

    v2 = *(v0 + 8);
    goto LABEL_11;
  }

  v22 = *(v0 + 112);
  v23 = swift_task_alloc();
  v24 = *(v0 + 160);
  v23[1].i64[0] = v4;
  v23[1].i64[1] = v22;
  v23[2] = vextq_s8(v24, v24, 8uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1000472E0, &qword_10002BEA8);
  sub_100029218();

  v25 = *(v0 + 80);
  *(v0 + 192) = v25;
  v26 = swift_task_alloc();
  *(v0 + 200) = v26;
  *v26 = v0;
  v26[1] = sub_10001EFBC;

  return sub_10001CB04(v25);
}

uint64_t sub_10001F580()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10001F5E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[17] = a5;
  v6[18] = a6;
  v6[15] = a3;
  v6[16] = a4;
  v6[13] = a1;
  v6[14] = a2;
  return _swift_task_switch(sub_10001F60C, 0, 0);
}

uint64_t sub_10001F60C()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  v4 = v0[13];
  v0[19] = *(v1 + 24);
  v5 = swift_task_alloc();
  v5[2] = v1;
  v5[3] = v4;
  v5[4] = v3;
  v5[5] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1000473C8, &qword_10002BF98);
  sub_100029218();
  v6 = v0[14];

  result = v0[9];
  v0[20] = v0[8];
  v0[21] = result;
  v8 = *(result + 16);
  v0[22] = v8;
  if (!v6)
  {
    __break(1u);
    goto LABEL_13;
  }

  v9 = v0[14];
  if (v9 < 1 || !v8 || (v0[23] = v9, v10 = sub_1000290E8(), v11 = v0[20], (v10 & 1) != 0))
  {
    v12 = v0[19];
    v13 = v0[17];

    v14 = swift_allocObject();
    *(v14 + 16) = sub_100027D70;
    *(v14 + 24) = v13;
    v0[6] = sub_100027D6C;
    v0[7] = v14;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_100015128;
    v0[5] = &block_descriptor_196;
    v15 = _Block_copy(v0 + 2);

    [v12 performBlockAndWait:v15];
    _Block_release(v15);
    LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

    if ((v12 & 1) == 0)
    {
      v16 = v0[22];
      v17 = v0[13];
      v18 = v0[14];
      sub_100029388(60);
      v30._object = 0x800000010002E4E0;
      v30._countAndFlagsBits = 0xD000000000000014;
      sub_100028FE8(v30);
      v0[11] = v16;
      v31._countAndFlagsBits = sub_100029408();
      sub_100028FE8(v31);

      v32._countAndFlagsBits = 0xD000000000000015;
      v32._object = 0x800000010002E500;
      sub_100028FE8(v32);
      v0[12] = v18;
      v33._countAndFlagsBits = sub_100029408();
      sub_100028FE8(v33);

      v34._countAndFlagsBits = 0x71657220726F6620;
      v34._object = 0xED00002074736575;
      sub_100028FE8(v34);
      v19 = [v17 description];
      v20 = sub_100028F88();
      v22 = v21;

      v35._countAndFlagsBits = v20;
      v35._object = v22;
      sub_100028FE8(v35);

      _sSo9OS_os_logC9mapssyncdE5debugyySSFZ_0(0, 0xE000000000000000);

      v23 = v0[1];

      return v23();
    }

LABEL_13:
    __break(1u);
    return result;
  }

  v24 = v0[14];
  v25 = v0[21];
  v26 = swift_task_alloc();
  v26[2] = 0;
  v26[3] = v24;
  v26[4] = v25;
  v26[5] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1000473D0, &qword_10002BFA0);
  sub_100029218();

  v27 = v0[10];
  v0[24] = v27;
  v28 = swift_task_alloc();
  v0[25] = v28;
  *v28 = v0;
  v28[1] = sub_10001FAAC;

  return sub_10001C570(v27);
}

uint64_t sub_10001FAAC()
{
  *(*v1 + 208) = v0;

  if (v0)
  {

    v2 = sub_100027D68;
  }

  else
  {
    v2 = sub_10001FBF8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10001FBF8()
{
  v1 = *(v0 + 208);
  sub_100029218();
  if (v1)
  {

    v2 = *(v0 + 8);
LABEL_11:

    return v2();
  }

  v3 = *(v0 + 176);
  v4 = *(v0 + 184);
  v5 = *(v0 + 112);
  v6 = v3 >= v4;
  v7 = v4 >= v3;
  if (v5 <= 0)
  {
    v7 = v6;
  }

  if (v7)
  {
    goto LABEL_9;
  }

  v8 = __OFADD__(v4, v5);
  v9 = v4 + v5;
  if (v8)
  {
    v9 = (v9 >> 63) ^ 0x8000000000000000;
  }

  *(v0 + 184) = v9;
  if (sub_1000290E8())
  {
LABEL_9:
    v10 = *(v0 + 152);
    v11 = *(v0 + 136);

    v12 = swift_allocObject();
    *(v12 + 16) = sub_100027D70;
    *(v12 + 24) = v11;
    *(v0 + 48) = sub_100027D6C;
    *(v0 + 56) = v12;
    *(v0 + 16) = _NSConcreteStackBlock;
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_100015128;
    *(v0 + 40) = &block_descriptor_196;
    v13 = _Block_copy((v0 + 16));

    [v10 performBlockAndWait:v13];
    _Block_release(v13);
    LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

    if (v10)
    {
      __break(1u);
      return result;
    }

    v15 = *(v0 + 176);
    v16 = *(v0 + 104);
    v17 = *(v0 + 112);
    sub_100029388(60);
    v28._object = 0x800000010002E4E0;
    v28._countAndFlagsBits = 0xD000000000000014;
    sub_100028FE8(v28);
    *(v0 + 88) = v15;
    v29._countAndFlagsBits = sub_100029408();
    sub_100028FE8(v29);

    v30._countAndFlagsBits = 0xD000000000000015;
    v30._object = 0x800000010002E500;
    sub_100028FE8(v30);
    *(v0 + 96) = v17;
    v31._countAndFlagsBits = sub_100029408();
    sub_100028FE8(v31);

    v32._countAndFlagsBits = 0x71657220726F6620;
    v32._object = 0xED00002074736575;
    sub_100028FE8(v32);
    v18 = [v16 description];
    v19 = sub_100028F88();
    v21 = v20;

    v33._countAndFlagsBits = v19;
    v33._object = v21;
    sub_100028FE8(v33);

    _sSo9OS_os_logC9mapssyncdE5debugyySSFZ_0(0, 0xE000000000000000);

    v2 = *(v0 + 8);
    goto LABEL_11;
  }

  v22 = *(v0 + 112);
  v23 = swift_task_alloc();
  v24 = *(v0 + 160);
  v23[1].i64[0] = v4;
  v23[1].i64[1] = v22;
  v23[2] = vextq_s8(v24, v24, 8uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1000473D0, &qword_10002BFA0);
  sub_100029218();

  v25 = *(v0 + 80);
  *(v0 + 192) = v25;
  v26 = swift_task_alloc();
  *(v0 + 200) = v26;
  *v26 = v0;
  v26[1] = sub_10001FAAC;

  return sub_10001C570(v25);
}

uint64_t sub_100020070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[17] = a5;
  v6[18] = a6;
  v6[15] = a3;
  v6[16] = a4;
  v6[13] = a1;
  v6[14] = a2;
  return _swift_task_switch(sub_100020098, 0, 0);
}

uint64_t sub_100020098()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  v4 = v0[13];
  v0[19] = *(v1 + 24);
  v5 = swift_task_alloc();
  v5[2] = v1;
  v5[3] = v4;
  v5[4] = v3;
  v5[5] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100047390, &qword_10002BF48);
  sub_100029218();
  v6 = v0[14];

  result = v0[9];
  v0[20] = v0[8];
  v0[21] = result;
  v8 = *(result + 16);
  v0[22] = v8;
  if (!v6)
  {
    __break(1u);
    goto LABEL_13;
  }

  v9 = v0[14];
  if (v9 < 1 || !v8 || (v0[23] = v9, v10 = sub_1000290E8(), v11 = v0[20], (v10 & 1) != 0))
  {
    v12 = v0[19];
    v13 = v0[17];

    v14 = swift_allocObject();
    *(v14 + 16) = sub_100027D70;
    *(v14 + 24) = v13;
    v0[6] = sub_100027D6C;
    v0[7] = v14;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_100015128;
    v0[5] = &block_descriptor_140;
    v15 = _Block_copy(v0 + 2);

    [v12 performBlockAndWait:v15];
    _Block_release(v15);
    LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

    if ((v12 & 1) == 0)
    {
      v16 = v0[22];
      v17 = v0[13];
      v18 = v0[14];
      sub_100029388(60);
      v30._object = 0x800000010002E4E0;
      v30._countAndFlagsBits = 0xD000000000000014;
      sub_100028FE8(v30);
      v0[11] = v16;
      v31._countAndFlagsBits = sub_100029408();
      sub_100028FE8(v31);

      v32._countAndFlagsBits = 0xD000000000000015;
      v32._object = 0x800000010002E500;
      sub_100028FE8(v32);
      v0[12] = v18;
      v33._countAndFlagsBits = sub_100029408();
      sub_100028FE8(v33);

      v34._countAndFlagsBits = 0x71657220726F6620;
      v34._object = 0xED00002074736575;
      sub_100028FE8(v34);
      v19 = [v17 description];
      v20 = sub_100028F88();
      v22 = v21;

      v35._countAndFlagsBits = v20;
      v35._object = v22;
      sub_100028FE8(v35);

      _sSo9OS_os_logC9mapssyncdE5debugyySSFZ_0(0, 0xE000000000000000);

      v23 = v0[1];

      return v23();
    }

LABEL_13:
    __break(1u);
    return result;
  }

  v24 = v0[14];
  v25 = v0[21];
  v26 = swift_task_alloc();
  v26[2] = 0;
  v26[3] = v24;
  v26[4] = v25;
  v26[5] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100047398, &qword_10002BF50);
  sub_100029218();

  v27 = v0[10];
  v0[24] = v27;
  v28 = swift_task_alloc();
  v0[25] = v28;
  *v28 = v0;
  v28[1] = sub_100020538;

  return sub_10001D098(v27);
}

uint64_t sub_100020538()
{
  *(*v1 + 208) = v0;

  if (v0)
  {

    v2 = sub_100027D68;
  }

  else
  {
    v2 = sub_100020684;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100020684()
{
  v1 = *(v0 + 208);
  sub_100029218();
  if (v1)
  {

    v2 = *(v0 + 8);
LABEL_11:

    return v2();
  }

  v3 = *(v0 + 176);
  v4 = *(v0 + 184);
  v5 = *(v0 + 112);
  v6 = v3 >= v4;
  v7 = v4 >= v3;
  if (v5 <= 0)
  {
    v7 = v6;
  }

  if (v7)
  {
    goto LABEL_9;
  }

  v8 = __OFADD__(v4, v5);
  v9 = v4 + v5;
  if (v8)
  {
    v9 = (v9 >> 63) ^ 0x8000000000000000;
  }

  *(v0 + 184) = v9;
  if (sub_1000290E8())
  {
LABEL_9:
    v10 = *(v0 + 152);
    v11 = *(v0 + 136);

    v12 = swift_allocObject();
    *(v12 + 16) = sub_100027D70;
    *(v12 + 24) = v11;
    *(v0 + 48) = sub_100027D6C;
    *(v0 + 56) = v12;
    *(v0 + 16) = _NSConcreteStackBlock;
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_100015128;
    *(v0 + 40) = &block_descriptor_140;
    v13 = _Block_copy((v0 + 16));

    [v10 performBlockAndWait:v13];
    _Block_release(v13);
    LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

    if (v10)
    {
      __break(1u);
      return result;
    }

    v15 = *(v0 + 176);
    v16 = *(v0 + 104);
    v17 = *(v0 + 112);
    sub_100029388(60);
    v28._object = 0x800000010002E4E0;
    v28._countAndFlagsBits = 0xD000000000000014;
    sub_100028FE8(v28);
    *(v0 + 88) = v15;
    v29._countAndFlagsBits = sub_100029408();
    sub_100028FE8(v29);

    v30._countAndFlagsBits = 0xD000000000000015;
    v30._object = 0x800000010002E500;
    sub_100028FE8(v30);
    *(v0 + 96) = v17;
    v31._countAndFlagsBits = sub_100029408();
    sub_100028FE8(v31);

    v32._countAndFlagsBits = 0x71657220726F6620;
    v32._object = 0xED00002074736575;
    sub_100028FE8(v32);
    v18 = [v16 description];
    v19 = sub_100028F88();
    v21 = v20;

    v33._countAndFlagsBits = v19;
    v33._object = v21;
    sub_100028FE8(v33);

    _sSo9OS_os_logC9mapssyncdE5debugyySSFZ_0(0, 0xE000000000000000);

    v2 = *(v0 + 8);
    goto LABEL_11;
  }

  v22 = *(v0 + 112);
  v23 = swift_task_alloc();
  v24 = *(v0 + 160);
  v23[1].i64[0] = v4;
  v23[1].i64[1] = v22;
  v23[2] = vextq_s8(v24, v24, 8uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100047398, &qword_10002BF50);
  sub_100029218();

  v25 = *(v0 + 80);
  *(v0 + 192) = v25;
  v26 = swift_task_alloc();
  *(v0 + 200) = v26;
  *v26 = v0;
  v26[1] = sub_100020538;

  return sub_10001D098(v25);
}

id sub_100020AFC(void *a1)
{
  v2 = [a1 mapItemStorage];
  if (v2)
  {
    v3 = v2;
    v4 = sub_100028D28();
    v6 = v5;

    v7 = objc_allocWithZone(GEOMapItemStorage);
    sub_100011160(v4, v6);
    isa = sub_100028D18().super.isa;
    sub_1000110C8(v4, v6);
    v9 = [v7 initWithData:isa];

    sub_1000110C8(v4, v6);
    if (v9)
    {
      v10 = [v9 _identifier];

      if (v10)
      {
        v11 = [v10 isValid];
        result = v10;
        if (v11)
        {
          return result;
        }
      }
    }
  }

  result = [a1 muid];
  if (result)
  {
    return [objc_allocWithZone(GEOMapItemIdentifier) initWithMUID:objc_msgSend(a1 resultProviderID:"muid") coordinate:{0, -180.0, -180.0}];
  }

  return result;
}

uint64_t sub_100020C5C(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return _swift_task_switch(sub_100020C7C, 0, 0);
}

uint64_t sub_100020C7C()
{
  v1 = [objc_opt_self() sharedService];
  v0[5] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = [v1 defaultTraits];
    v0[6] = v3;
    if (v3)
    {
      v4 = v0[4];
      v5 = v3;
      [v3 setAnalyticsOptOut:1];
      sub_100003E20(0, &qword_1000473A8, GEOMapItemIdentifier_ptr);
      isa = sub_100029038().super.isa;
      v7 = [v2 ticketForIdentifiers:isa traits:v5];
      v0[7] = v7;

      v8 = swift_task_alloc();
      v0[8] = v8;
      *(v8 + 16) = v7;
      *(v8 + 24) = v4;
      v9 = swift_task_alloc();
      v0[9] = v9;
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1000473B0, &qword_10002BF78);
      *v9 = v0;
      v9[1] = sub_100020E78;

      return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0xD000000000000019, 0x800000010002EAE0, sub_1000279EC, v8, v10);
    }
  }

  v11 = v0[1];

  return v11(_swiftEmptyArrayStorage);
}

uint64_t sub_100020E78()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_10002100C;
  }

  else
  {

    v2 = sub_100020F94;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100020F94()
{
  v1 = *(v0 + 48);

  swift_unknownObjectRelease();
  v2 = *(v0 + 16);
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_10002100C()
{
  v1 = *(v0 + 48);

  swift_unknownObjectRelease();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100021090(unint64_t a1, unint64_t a2)
{
  v4 = sub_100028D98();
  v40 = *(v4 - 8);
  __chkstk_darwin(v4);
  v48 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100028D88();
  v41 = v4;
  if (a1 >> 62)
  {
    goto LABEL_48;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1000293D8())
  {
    v7 = 0;
    v8 = a1 & 0xC000000000000001;
    v42 = a1 + 32;
    v43 = a1 & 0xFFFFFFFFFFFFFF8;
    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v10 = a2;
    }

    else
    {
      v10 = a2 & 0xFFFFFFFFFFFFFF8;
    }

    v39[1] = v10;
    v50 = a2 & 0xC000000000000001;
    v11 = &selRef_initWithUnsignedLongLong_;
    v46 = a1;
    v47 = a2 >> 62;
    v44 = a1 & 0xC000000000000001;
    v45 = i;
    while (1)
    {
      while (1)
      {
        if (v8)
        {
          v12 = sub_1000293B8();
        }

        else
        {
          if (v7 >= *(v43 + 16))
          {
            goto LABEL_47;
          }

          v12 = *(v42 + 8 * v7);
        }

        v13 = v12;
        if (__OFADD__(v7++, 1))
        {
          goto LABEL_46;
        }

        if (([v12 v11[34]] & 1) == 0)
        {
          break;
        }

        if (v7 == i)
        {
          return (*(v40 + 8))(v48, v41);
        }
      }

      isa = sub_100028D48().super.isa;
      [v13 setMapItemLastRefreshed:isa];

      v49 = v7;
      a1 = v47 ? sub_1000293D8() : *(v9 + 16);
      v16 = v50;
      p_attr = &stru_100042FF8.attr;
      if (a1)
      {
        break;
      }

LABEL_39:

LABEL_40:
      i = v45;
      a1 = v46;
      v7 = v49;
      v8 = v44;
      v11 = &selRef_initWithUnsignedLongLong_;
      if (v49 == v45)
      {
        return (*(v40 + 8))(v48, v41);
      }
    }

    v18 = 0;
    v51 = v13;
    while (v16)
    {
      v19 = sub_1000293B8();
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        goto LABEL_44;
      }

LABEL_23:
      v21 = [v13 p_attr[507]];
      if (v21)
      {
        v22 = a1;
        v23 = v21;
        v24 = [v21 mapItemStorage];

        if (v24)
        {
          v25 = v9;
          v26 = a2;
          v27 = sub_100028D28();
          v29 = v28;

          v30 = objc_allocWithZone(GEOMapItemStorage);
          sub_100011160(v27, v29);
          v31 = sub_100028D18().super.isa;
          sub_1000110C8(v27, v29);
          v32 = [v30 initWithData:v31];

          sub_1000110C8(v27, v29);
          if (v32)
          {
            v33 = [v32 _identifier];

            v9 = v25;
            if (!v33)
            {
              goto LABEL_29;
            }

            v34 = [v19 _identifier];
            if (v34)
            {
              v35 = v34;
              sub_100003E20(0, &qword_1000473A8, GEOMapItemIdentifier_ptr);
              v36 = sub_100029288();

              if (v36)
              {
                v37 = v51;
                sub_100023C58(v19);

                swift_unknownObjectRelease();
                a2 = v26;
                goto LABEL_40;
              }

LABEL_29:
              swift_unknownObjectRelease();
            }

            else
            {
              swift_unknownObjectRelease();
            }

            a2 = v26;
          }

          else
          {
            swift_unknownObjectRelease();
            a2 = v26;
            v9 = v25;
          }

          v16 = v50;
          p_attr = (&stru_100042FF8 + 8);
        }

        else
        {
          swift_unknownObjectRelease();
        }

        a1 = v22;
        v13 = v51;
        goto LABEL_19;
      }

      swift_unknownObjectRelease();
LABEL_19:
      ++v18;
      if (v20 == a1)
      {
        goto LABEL_39;
      }
    }

    if (v18 >= *(v9 + 16))
    {
      goto LABEL_45;
    }

    v19 = *(a2 + 8 * v18 + 32);
    swift_unknownObjectRetain();
    v20 = v18 + 1;
    if (!__OFADD__(v18, 1))
    {
      goto LABEL_23;
    }

LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    ;
  }

  return (*(v40 + 8))(v48, v41);
}

uint64_t sub_1000214CC(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v41 = a3;
  v5 = sub_100028D98();
  v42 = *(v5 - 8);
  __chkstk_darwin(v5);
  v50 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100028D88();
  v43 = v5;
  if (a1 >> 62)
  {
    goto LABEL_48;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1000293D8())
  {
    v8 = 0;
    v9 = a1 & 0xC000000000000001;
    v44 = a1 + 32;
    v45 = a1 & 0xFFFFFFFFFFFFFF8;
    v10 = a2 & 0xFFFFFFFFFFFFFF8;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v11 = a2;
    }

    else
    {
      v11 = a2 & 0xFFFFFFFFFFFFFF8;
    }

    v40 = v11;
    v52 = a2 & 0xC000000000000001;
    v12 = &selRef_initWithUnsignedLongLong_;
    v48 = a1;
    v49 = a2 >> 62;
    v46 = a1 & 0xC000000000000001;
    v47 = i;
    while (1)
    {
      while (1)
      {
        if (v9)
        {
          v13 = sub_1000293B8();
        }

        else
        {
          if (v8 >= *(v45 + 16))
          {
            goto LABEL_47;
          }

          v13 = *(v44 + 8 * v8);
        }

        v14 = v13;
        if (__OFADD__(v8++, 1))
        {
          goto LABEL_46;
        }

        if (([v13 v12[34]] & 1) == 0)
        {
          break;
        }

        if (v8 == i)
        {
          return (*(v42 + 8))(v50, v43);
        }
      }

      isa = sub_100028D48().super.isa;
      [v14 setMapItemLastRefreshed:isa];

      v51 = v8;
      a1 = v49 ? sub_1000293D8() : *(v10 + 16);
      v17 = v52;
      p_attr = &stru_100042FF8.attr;
      if (a1)
      {
        break;
      }

LABEL_39:

LABEL_40:
      i = v47;
      a1 = v48;
      v8 = v51;
      v9 = v46;
      v12 = &selRef_initWithUnsignedLongLong_;
      if (v51 == v47)
      {
        return (*(v42 + 8))(v50, v43);
      }
    }

    v19 = 0;
    v53 = v14;
    while (v17)
    {
      v20 = sub_1000293B8();
      v21 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        goto LABEL_44;
      }

LABEL_23:
      v22 = [v14 p_attr[507]];
      if (v22)
      {
        v23 = a1;
        v24 = v22;
        v25 = [v22 mapItemStorage];

        if (v25)
        {
          v26 = v10;
          v27 = a2;
          v28 = sub_100028D28();
          v30 = v29;

          v31 = objc_allocWithZone(GEOMapItemStorage);
          sub_100011160(v28, v30);
          v32 = sub_100028D18().super.isa;
          sub_1000110C8(v28, v30);
          v33 = [v31 initWithData:v32];

          sub_1000110C8(v28, v30);
          if (v33)
          {
            v34 = [v33 _identifier];

            v10 = v26;
            if (!v34)
            {
              goto LABEL_29;
            }

            v35 = [v20 _identifier];
            if (v35)
            {
              v36 = v35;
              sub_100003E20(0, &qword_1000473A8, GEOMapItemIdentifier_ptr);
              v37 = sub_100029288();

              if (v37)
              {
                v38 = v53;
                sub_100023400(v20, v41);

                swift_unknownObjectRelease();
                a2 = v27;
                goto LABEL_40;
              }

LABEL_29:
              swift_unknownObjectRelease();
            }

            else
            {
              swift_unknownObjectRelease();
            }

            a2 = v27;
          }

          else
          {
            swift_unknownObjectRelease();
            a2 = v27;
            v10 = v26;
          }

          v17 = v52;
          p_attr = (&stru_100042FF8 + 8);
        }

        else
        {
          swift_unknownObjectRelease();
        }

        a1 = v23;
        v14 = v53;
        goto LABEL_19;
      }

      swift_unknownObjectRelease();
LABEL_19:
      ++v19;
      if (v21 == a1)
      {
        goto LABEL_39;
      }
    }

    if (v19 >= *(v10 + 16))
    {
      goto LABEL_45;
    }

    v20 = *(a2 + 8 * v19 + 32);
    swift_unknownObjectRetain();
    v21 = v19 + 1;
    if (!__OFADD__(v19, 1))
    {
      goto LABEL_23;
    }

LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    ;
  }

  return (*(v42 + 8))(v50, v43);
}

uint64_t sub_100021910(unint64_t a1, uint64_t a2)
{
  v42 = a2;
  v3 = sub_100028D98();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v39 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100028D88();
  v31 = v4;
  v32 = v3;
  if (a1 >> 62)
  {
    goto LABEL_43;
  }

  v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v6)
  {
LABEL_3:
    v7 = 0;
    v8 = a1 & 0xC000000000000001;
    v33 = a1 + 32;
    v34 = a1 & 0xFFFFFFFFFFFFFF8;
    v9 = v42 & 0xFFFFFFFFFFFFFF8;
    v43 = v42 & 0xFFFFFFFFFFFFFF8;
    if (v42 < 0)
    {
      v9 = v42;
    }

    v30 = v9;
    v41 = v42 & 0xC000000000000001;
    v10 = &selRef_initWithUnsignedLongLong_;
    v37 = a1;
    v38 = v42 >> 62;
    v35 = a1 & 0xC000000000000001;
    v36 = v6;
    while (1)
    {
      while (1)
      {
        if (v8)
        {
          v11 = sub_1000293B8();
        }

        else
        {
          if (v7 >= *(v34 + 16))
          {
            goto LABEL_42;
          }

          v11 = *(v33 + 8 * v7);
        }

        v12 = v11;
        if (__OFADD__(v7++, 1))
        {
          goto LABEL_41;
        }

        if (([v11 v10[34]] & 1) == 0)
        {
          break;
        }

        if (v7 == v6)
        {
          return (*(v31 + 8))(v39, v32);
        }
      }

      a1 = v39;
      isa = sub_100028D48().super.isa;
      [v12 setMapItemLastRefreshed:isa];

      v40 = v7;
      if (v38)
      {
        break;
      }

      v15 = *(v43 + 16);
      if (v15)
      {
        goto LABEL_15;
      }

LABEL_36:

LABEL_37:
      v6 = v36;
      a1 = v37;
      v8 = v35;
      v10 = &selRef_initWithUnsignedLongLong_;
      v7 = v40;
      if (v40 == v36)
      {
        return (*(v31 + 8))(v39, v32);
      }
    }

    v15 = sub_1000293D8();
    if (!v15)
    {
      goto LABEL_36;
    }

LABEL_15:
    v16 = 0;
    while (1)
    {
      if (v41)
      {
        v17 = sub_1000293B8();
        v18 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          goto LABEL_39;
        }
      }

      else
      {
        if (v16 >= *(v43 + 16))
        {
          goto LABEL_40;
        }

        v17 = *(v42 + 8 * v16 + 32);
        swift_unknownObjectRetain();
        v18 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          v6 = sub_1000293D8();
          if (!v6)
          {
            return (*(v31 + 8))(v39, v32);
          }

          goto LABEL_3;
        }
      }

      v19 = [v12 mapItemStorage];
      if (v19 && (v20 = v19, v21 = sub_100028D28(), v23 = v22, v20, v24 = objc_allocWithZone(GEOMapItemStorage), sub_100011160(v21, v23), v25 = sub_100028D18().super.isa, sub_1000110C8(v21, v23), a1 = [v24 initWithData:v25], v25, sub_1000110C8(v21, v23), a1) && (v26 = objc_msgSend(a1, "_identifier"), a1, v26))
      {
        v27 = [v17 _identifier];
        if (!v27)
        {
          swift_unknownObjectRelease();

          goto LABEL_28;
        }

        v28 = v27;
        sub_100003E20(0, &qword_1000473A8, GEOMapItemIdentifier_ptr);
        a1 = sub_100029288();

        if (a1)
        {
          goto LABEL_34;
        }
      }

      else if ([v12 muid])
      {
        a1 = [v17 _muid];
        if (a1 == [v12 muid])
        {
LABEL_34:
          sub_100023E1C(v17);

          swift_unknownObjectRelease();
          goto LABEL_37;
        }
      }

      swift_unknownObjectRelease();
LABEL_28:
      ++v16;
      if (v18 == v15)
      {
        goto LABEL_36;
      }
    }
  }

  return (*(v31 + 8))(v39, v32);
}

id sub_100021D28(uint64_t (*a1)(void))
{
  a1(0);
  v1 = [swift_getObjCClassFromMetadata() fetchRequest];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100046758, &qword_10002BEB0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10002BD00;
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_10002BD10;
  sub_100003E20(0, &qword_100046B10, NSPredicate_ptr);
  *(v3 + 32) = sub_100029118();
  *(v3 + 40) = sub_100029118();
  *(v3 + 48) = sub_100029118();
  v4 = objc_allocWithZone(NSCompoundPredicate);
  isa = sub_100029038().super.isa;

  v6 = [v4 initWithType:1 subpredicates:isa];

  *(v2 + 32) = v6;
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10002BD10;
  *(v7 + 32) = sub_100029118();
  *(v7 + 40) = sub_100029118();
  *(v7 + 48) = sub_100029118();
  v8 = objc_allocWithZone(NSCompoundPredicate);
  v9 = sub_100029038().super.isa;

  v10 = [v8 initWithType:1 subpredicates:v9];

  *(v2 + 40) = v10;
  v11 = objc_allocWithZone(NSCompoundPredicate);
  v12 = sub_100029038().super.isa;

  v13 = [v11 initWithType:2 subpredicates:v12];

  [v1 setPredicate:v13];
  [v1 setFetchBatchSize:*(v15 + 88)];
  return v1;
}

uint64_t sub_100022020(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_100027D7C;
  *(v5 + 24) = v4;
  v8[4] = sub_100027D6C;
  v8[5] = v5;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_100015128;
  v8[3] = &block_descriptor_63;
  v6 = _Block_copy(v8);

  [v3 performBlockAndWait:v6];
  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10002217C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_100026DC0;
  *(v5 + 24) = v4;
  v8[4] = sub_100027D6C;
  v8[5] = v5;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_100015128;
  v8[3] = &block_descriptor_43;
  v6 = _Block_copy(v8);

  [v3 performBlockAndWait:v6];
  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  return result;
}

void sub_1000222D8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1000293D8();
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return;
    }
  }

  if (v2 < 1)
  {
    __break(1u);
  }

  else
  {
    for (i = 0; i != v2; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = sub_1000293B8();
      }

      else
      {
        v4 = *(a1 + 8 * i + 32);
      }

      v5 = v4;
      sub_1000236A0();
    }
  }
}

void sub_100022384(uint64_t a1)
{
  v7 = *(a1 + 96);
  if (v7 == 0x8000000000000000)
  {
    __break(1u);
    goto LABEL_36;
  }

  v8 = -v7;
  v9 = -86400 * v7;
  if ((v8 * 86400) >> 64 != v9 >> 63)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v10 = [objc_allocWithZone(NSDate) initWithTimeIntervalSinceNow:v9];
  type metadata accessor for MapsSyncManagedVisit();
  v11 = [swift_getObjCClassFromMetadata() fetchRequest];
  type metadata accessor for MapsSyncManagedVisitedLocation();
  v12 = [swift_getObjCClassFromMetadata() fetchRequest];
  sub_100003E20(0, &qword_100046B10, NSPredicate_ptr);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046AC0, &unk_10002AFB0);
  v14 = swift_allocObject();
  v52 = xmmword_10002AD50;
  *(v14 + 16) = xmmword_10002AD50;
  v15 = sub_100003E20(0, &qword_100047358, NSDate_ptr);
  *(v14 + 56) = v15;
  v16 = sub_10002764C();
  *(v14 + 64) = v16;
  *(v14 + 32) = v10;
  v17 = v10;
  v18 = sub_100029118();
  [v11 setPredicate:v18];

  v48 = v13;
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_10002AD50;
  *(v19 + 56) = v15;
  *(v19 + 64) = v16;
  *(v19 + 32) = v17;
  v50 = v17;
  v20 = sub_100029118();
  [v12 setPredicate:v20];

  v21 = objc_allocWithZone(NSBatchDeleteRequest);
  v51 = v11;
  v22 = v11;
  v3 = v12;
  v5 = [v21 initWithFetchRequest:v22];
  [v5 setResultType:2];
  v6 = [objc_allocWithZone(NSBatchDeleteRequest) initWithFetchRequest:v12];
  [v6 setResultType:2];
  v23 = *(a1 + 24);
  *&v55 = 0;
  v24 = [v23 executeRequest:v5 error:&v55];
  v25 = v55;
  if (!v24)
  {
    v29 = v55;
    sub_100028C78();

    swift_willThrow();
    goto LABEL_14;
  }

  v26 = v24;
  objc_opt_self();
  v27 = swift_dynamicCastObjCClass();
  v28 = v25;
  if (!v27)
  {
  }

  *&v55 = 0;
  v30 = [v23 executeRequest:v6 error:{&v55, v48}];
  v31 = v55;
  if (!v30)
  {
    v36 = v55;
    sub_100028C78();

    swift_willThrow();
LABEL_14:
    *&v55 = 0;
    *(&v55 + 1) = 0xE000000000000000;
    sub_100029388(36);
    v57._countAndFlagsBits = 0xD000000000000022;
    v57._object = 0x800000010002EBF0;
    sub_100028FE8(v57);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1000472C0, &unk_10002AD80);
    sub_1000293C8();
    v4 = *(&v55 + 1);
    v1 = v55;
    v2 = sub_100029148();
    if (qword_100046258 == -1)
    {
LABEL_15:
      v37 = static OS_os_log.MapsSync;
      v38 = swift_allocObject();
      *(v38 + 16) = v52;
      *(v38 + 56) = &type metadata for String;
      *(v38 + 64) = sub_1000022C4();
      *(v38 + 32) = v1;
      *(v38 + 40) = v4;
      sub_100028DE8(v2, &_mh_execute_header, v37, "%{public}@", 10, 2, v38);

      return;
    }

LABEL_37:
    swift_once();
    goto LABEL_15;
  }

  v32 = v30;
  objc_opt_self();
  v33 = swift_dynamicCastObjCClass();
  if (v33)
  {
    v34 = v31;
    v35 = &selRef_initWithUnsignedLongLong_;
    if (v27)
    {
      goto LABEL_11;
    }

LABEL_17:
    v55 = 0u;
    v56 = 0u;
    goto LABEL_25;
  }

  v39 = v31;

  v35 = &selRef_initWithUnsignedLongLong_;
  if (!v27)
  {
    goto LABEL_17;
  }

LABEL_11:
  if ([v27 v35[27]])
  {
    sub_1000292D8();
    swift_unknownObjectRelease();
  }

  else
  {
    v53 = 0u;
    v54 = 0u;
  }

  v55 = v53;
  v56 = v54;
  if (!*(&v54 + 1))
  {
LABEL_25:
    sub_1000029A8(&v55, &qword_100047350, &qword_10002B2E0);
    if (v33)
    {
      goto LABEL_23;
    }

LABEL_26:

    v55 = 0u;
    v56 = 0u;
LABEL_32:
    sub_1000029A8(&v55, &qword_100047350, &qword_10002B2E0);
    return;
  }

  if (swift_dynamicCast())
  {
    *&v55 = 0;
    *(&v55 + 1) = 0xE000000000000000;
    sub_100029388(34);

    *&v55 = 0x20646574656C6544;
    *(&v55 + 1) = 0xE800000000000000;
    v58._countAndFlagsBits = sub_100029408();
    sub_100028FE8(v58);

    v59._object = 0x800000010002EC50;
    v59._countAndFlagsBits = 0xD000000000000016;
    sub_100028FE8(v59);
    v40 = [v50 description];
    v41 = sub_100028F88();
    v43 = v42;

    v60._countAndFlagsBits = v41;
    v60._object = v43;
    sub_100028FE8(v60);

    _sSo9OS_os_logC9mapssyncdE5debugyySSFZ_0(v55, *(&v55 + 1));
  }

  if (!v33)
  {
    goto LABEL_26;
  }

LABEL_23:
  if ([v33 v35[27]])
  {
    sub_1000292D8();
    swift_unknownObjectRelease();
  }

  else
  {
    v53 = 0u;
    v54 = 0u;
  }

  v55 = v53;
  v56 = v54;
  if (!*(&v54 + 1))
  {

    goto LABEL_32;
  }

  if (swift_dynamicCast())
  {
    *&v55 = 0;
    *(&v55 + 1) = 0xE000000000000000;
    sub_100029388(44);

    *&v55 = 0x20646574656C6544;
    *(&v55 + 1) = 0xE800000000000000;
    v61._countAndFlagsBits = sub_100029408();
    sub_100028FE8(v61);

    v62._countAndFlagsBits = 0xD000000000000020;
    v62._object = 0x800000010002EC20;
    sub_100028FE8(v62);
    v44 = [v50 description];
    v45 = sub_100028F88();
    v47 = v46;

    v63._countAndFlagsBits = v45;
    v63._object = v47;
    sub_100028FE8(v63);

    _sSo9OS_os_logC9mapssyncdE5debugyySSFZ_0(v55, *(&v55 + 1));
  }

  else
  {
  }
}

unint64_t sub_100022C14(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, void *), uint64_t a4, uint64_t (*a5)(void))
{
  v6 = v5;
  v8 = a5(0);
  v9 = sub_100029238();
  if (!v5)
  {
    v6 = v9;
    if (v9 >> 62)
    {
      v12 = sub_1000293D8();
      if ((v12 & 0x8000000000000000) == 0)
      {
        goto LABEL_11;
      }

      __break(1u);
      goto LABEL_10;
    }

    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v10)
    {
LABEL_12:
      v11 = _swiftEmptyArrayStorage;
      if (!a3)
      {
        return v6;
      }

      goto LABEL_6;
    }

    while (1)
    {
      v11 = sub_1000240EC(v10, 0);
      v12 = sub_100026328(v14, (v11 + 4), v10, 0, v10);
      if (v12 == v10)
      {
        break;
      }

LABEL_10:
      __break(1u);
LABEL_11:
      v10 = v12;
      if (!v12)
      {
        goto LABEL_12;
      }
    }

    if (a3)
    {
LABEL_6:
      a3(v8, v11);
    }
  }

  return v6;
}

void *sub_100022D50(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(void), uint64_t (*x5_0)(void))
{
  v13 = a1 + a2;
  if (__OFADD__(a1, a2))
  {
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v12 = a5;
  v10 = a4;
  v9 = a1;
  v25 = x5_0;
  if (*(a3 + 16) >= v13)
  {
    v11 = a1 + a2;
  }

  else
  {
    v11 = *(a3 + 16);
  }

  sub_100029388(30);

  v26._countAndFlagsBits = sub_100029408();
  sub_100028FE8(v26);

  v27._countAndFlagsBits = 540945696;
  v27._object = 0xE400000000000000;
  sub_100028FE8(v27);
  v28._countAndFlagsBits = sub_100029408();
  object = v28._object;
  sub_100028FE8(v28);

  v7 = 0x800000010002E520;
  _sSo9OS_os_logC9mapssyncdE5debugyySSFZ_0(0xD000000000000016, 0x800000010002E520);

  if (v11 < v9)
  {
    goto LABEL_33;
  }

  object = v10 >> 62;
  if (!(v10 >> 62))
  {
    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v9)
    {
      goto LABEL_8;
    }

LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

LABEL_34:
  if (sub_1000293D8() < v9)
  {
    goto LABEL_35;
  }

LABEL_8:
  if (v9 < 0)
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (object)
  {
    v14 = sub_1000293D8();
  }

  else
  {
    v14 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v14 < v11)
  {
    goto LABEL_37;
  }

  if (v13 < 0)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if ((v10 & 0xC000000000000001) != 0 && v11 != v9)
  {
    if (v11 > v9)
    {
      v12(0);

      v15 = v9;
      do
      {
        v16 = v15 + 1;
        sub_1000293A8(v15);
        v15 = v16;
      }

      while (v11 != v16);
      if (!object)
      {
        goto LABEL_20;
      }

      goto LABEL_22;
    }

LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (!object)
  {
LABEL_20:
    v7 = v10 & 0xFFFFFFFFFFFFFF8;
    v17 = (v10 & 0xFFFFFFFFFFFFFF8) + 32;
    v10 = (2 * v11) | 1;
    goto LABEL_24;
  }

LABEL_22:

  v7 = sub_1000293E8();
  v9 = v18;
  v10 = v19;
  if ((v19 & 1) == 0)
  {
LABEL_23:
    sub_10002616C(v7, v17, v9, v10, v25);
    v21 = v20;
LABEL_30:
    swift_unknownObjectRelease();
    return v21;
  }

LABEL_24:
  v13 = v17;
  sub_100029438();
  swift_unknownObjectRetain_n();
  v22 = swift_dynamicCastClass();
  if (!v22)
  {
    swift_unknownObjectRelease();
    v22 = _swiftEmptyArrayStorage;
  }

  v23 = v22[2];

  if (__OFSUB__(v10 >> 1, v9))
  {
    goto LABEL_40;
  }

  if (v23 != (v10 >> 1) - v9)
  {
LABEL_41:
    swift_unknownObjectRelease();
    v17 = v13;
    goto LABEL_23;
  }

  v21 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v21)
  {
    v21 = _swiftEmptyArrayStorage;
    goto LABEL_30;
  }

  return v21;
}

id sub_10002304C(uint64_t a1)
{
  v1 = *(a1 + 24);
  result = [v1 hasChanges];
  if (result)
  {
    v4 = 0;
    if ([v1 save:&v4])
    {
      return v4;
    }

    else
    {
      v3 = v4;
      sub_100028C78();

      return swift_willThrow();
    }
  }

  return result;
}

void sub_10002310C(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1000473B8, &qword_10002BF80);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = aBlock - v8;
  if (a2)
  {
    (*(v7 + 16))(v9, a1, v6);
    v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v11 = swift_allocObject();
    (*(v7 + 32))(v11 + v10, v9, v6);
    aBlock[4] = sub_1000279F4;
    aBlock[5] = v11;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100023360;
    aBlock[3] = &block_descriptor_161;
    v12 = _Block_copy(aBlock);

    [a2 submitWithHandler:v12 networkActivity:0 queue:*(a3 + 48)];
    _Block_release(v12);
  }
}

uint64_t sub_1000232CC(void *a1, void *a2)
{
  if (a2)
  {
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1000473B8, &qword_10002BF80);
    return sub_100029098();
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1000473B8, &qword_10002BF80);
    return sub_1000290A8();
  }
}

uint64_t sub_100023360(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1000473C0, &qword_10002BF88);
    v4 = sub_100029048();
  }

  v6 = a3;
  v5(v4, a3);
}

void sub_100023400(void *a1, uint64_t a2)
{
  v4 = [objc_opt_self() mapItemStorageForGEOMapItem:a1 forUseType:a2];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    v7 = sub_100023A9C();
    if (v7)
    {
      v8 = v7;
      v9 = [v7 _clientAttributes];
    }

    else
    {
      v9 = 0;
    }

    [v6 setClientAttributes:v9];
  }

  v10 = v5;
  sub_100023B80(v5);
  swift_getObjectType();
  v11 = [objc_allocWithZone(NSNumber) initWithUnsignedLongLong:{objc_msgSend(a1, "_muid")}];
  [v2 setMuid:v11];

  [a1 coordinate];
  v13 = [objc_allocWithZone(NSNumber) initWithDouble:v12];
  [v2 setLatitude:v13];

  [a1 coordinate];
  v15 = [objc_allocWithZone(NSNumber) initWithDouble:v14];
  [v2 setLongitude:v15];

  v16 = [a1 addressObject];
  if (!v16 || (v17 = v16, v18 = [v16 fullAddressWithMultiline:0], v17, !v18))
  {
    v18 = 0;
  }

  [v2 setMapItemAddress:v18];

  v19 = [a1 name];
  [v2 setMapItemName:v19];

  sub_100013678(a1);
  v20 = sub_100028F78();

  [v2 setMapItemCategory:v20];
}

void sub_1000236A0()
{
  v1 = [v0 mapItem];
  if (!v1)
  {
    return;
  }

  v2 = v1;
  v3 = [v1 mapItemStorage];

  if (!v3)
  {
    return;
  }

  v4 = sub_100028D28();
  v6 = v5;

  v7 = objc_allocWithZone(GEOMapItemStorage);
  sub_100011160(v4, v6);
  isa = sub_100028D18().super.isa;
  sub_1000110C8(v4, v6);
  v26 = [v7 initWithData:isa];

  if (v26)
  {
    v9 = [v0 muid];
    if (!v9)
    {
      v10 = [objc_allocWithZone(NSNumber) initWithUnsignedLongLong:{objc_msgSend(v26, "_muid")}];
      [v0 setMuid:v10];
      v9 = v10;
    }

    v11 = [v0 latitude];
    if (!v11)
    {
      [v26 coordinate];
      v13 = [objc_allocWithZone(NSNumber) initWithDouble:v12];
      [v0 setLatitude:v13];
      v11 = v13;
    }

    v14 = [v0 longitude];
    if (!v14)
    {
      [v26 coordinate];
      v16 = [objc_allocWithZone(NSNumber) initWithDouble:v15];
      [v0 setLongitude:v16];
      v14 = v16;
    }

    v17 = [v0 mapItemAddress];
    if (!v17)
    {
      v21 = [v26 addressObject];
      if (!v21)
      {
        goto LABEL_12;
      }

      v22 = v21;
      v23 = [v21 fullAddressWithMultiline:0];
      if (v23)
      {
        v24 = v23;
        [v0 setMapItemAddress:v23];

        v17 = v24;
      }

      else
      {
        v17 = v22;
      }
    }

LABEL_12:
    v18 = [v0 mapItemName];
    if (!v18)
    {
      v19 = [v26 name];
      [v0 setMapItemName:v19];
      v18 = v19;
    }

    v20 = [v0 mapItemCategory];
    if (v20)
    {

      sub_1000110C8(v4, v6);
    }

    else
    {
      v26 = v26;
      sub_1000267A4(v26);

      v25 = sub_100028F78();

      [v0 setMapItemCategory:v25];
      sub_1000110C8(v4, v6);
    }

    return;
  }

  sub_1000110C8(v4, v6);
}

id sub_100023A9C()
{
  result = [v0 mapItem];
  if (result)
  {
    v2 = result;
    v3 = [result mapItemStorage];

    if (v3)
    {
      v4 = sub_100028D28();
      v6 = v5;

      v7 = objc_allocWithZone(GEOMapItemStorage);
      sub_100011160(v4, v6);
      isa = sub_100028D18().super.isa;
      sub_1000110C8(v4, v6);
      v9 = [v7 initWithData:isa];

      sub_1000110C8(v4, v6);
      return v9;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_100023B80(void *a1)
{
  v2 = [v1 mapItem];
  if (v2)
  {
    v3 = v2;
    if (a1 && (v4 = [a1 data]) != 0)
    {
      v5 = v4;
      v6 = sub_100028D28();
      v8 = v7;

      v9.super.isa = sub_100028D18().super.isa;
      sub_1000110C8(v6, v8);
    }

    else
    {
      v9.super.isa = 0;
    }

    [v3 setMapItemStorage:v9.super.isa];
  }
}

void sub_100023C58(void *a1)
{
  v3 = [objc_opt_self() mapItemStorageForGEOMapItem:a1 forUseType:4];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    v6 = sub_100023A9C();
    if (v6)
    {
      v7 = v6;
      v8 = [v6 _clientAttributes];
    }

    else
    {
      v8 = 0;
    }

    [v5 setClientAttributes:v8];
  }

  v9 = v4;
  sub_100023B80(v4);
  v10 = [objc_allocWithZone(NSNumber) initWithUnsignedLongLong:{objc_msgSend(a1, "_muid")}];
  [v1 setMuid:v10];

  [a1 coordinate];
  v12 = [objc_allocWithZone(NSNumber) initWithDouble:v11];
  [v1 setLatitude:v12];

  [a1 coordinate];
  v14 = [objc_allocWithZone(NSNumber) initWithDouble:v13];
  [v1 setLongitude:v14];
}

void sub_100023E1C(void *a1)
{
  v3 = [objc_opt_self() mapItemStorageForGEOMapItem:a1 forUseType:4];
  v4 = v3;
  if (!v3)
  {
    goto LABEL_8;
  }

  v5 = v3;
  v6 = [v1 mapItemStorage];
  if (v6 && (v7 = v6, v8 = sub_100028D28(), v10 = v9, v7, v11 = objc_allocWithZone(GEOMapItemStorage), sub_100011160(v8, v10), isa = sub_100028D18().super.isa, sub_1000110C8(v8, v10), v13 = [v11 initWithData:isa], isa, sub_1000110C8(v8, v10), v13))
  {
    v14 = [v13 _clientAttributes];
  }

  else
  {
    v14 = 0;
  }

  [v5 setClientAttributes:v14];

  v15 = [v5 data];
  if (v15)
  {
    v16 = v15;
    v17 = sub_100028D28();
    v19 = v18;

    v20.super.isa = sub_100028D18().super.isa;
    sub_1000110C8(v17, v19);
  }

  else
  {
LABEL_8:
    v20.super.isa = 0;
  }

  [v1 setMapItemStorage:v20.super.isa];

  [v1 setMuid:{objc_msgSend(a1, "_muid")}];
  [a1 coordinate];
  v22 = [objc_allocWithZone(NSNumber) initWithDouble:v21];
  [v1 setLatitude:v22];

  [a1 coordinate];
  v24 = [objc_allocWithZone(NSNumber) initWithDouble:v23];
  [v1 setLongitude:v24];

  v25 = [objc_allocWithZone(NSNumber) initWithInt:{objc_msgSend(a1, "_resultProviderID")}];
  [v1 setResultProviderIdentifier:v25];
}

void *sub_1000240EC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1000472F0, &qword_10002BEB8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

uint64_t sub_100024170(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1000294B8();
  sub_100028FC8();
  v8 = sub_1000294E8();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_100029428() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_1000248B4(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1000242C0(uint64_t a1, Swift::UInt64 a2, uint64_t a3)
{
  v7 = *v3;
  sub_1000294B8();
  sub_1000294D8(a2);
  sub_1000294C8(a3);
  v8 = sub_1000294E8();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = *(v7 + 48) + 16 * v10;
      v13 = *v12;
      v14 = *(v12 + 8);
      if (v13 == a2 && v14 == a3)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    result = 0;
  }

  else
  {
LABEL_8:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_100024A34(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    result = 1;
  }

  *a1 = a2;
  *(a1 + 8) = a3;
  return result;
}

uint64_t sub_1000243E4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100047328, &qword_10002BEC8);
  result = sub_100029368();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_1000294B8();
      sub_100028FC8();
      result = sub_1000294E8();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_100024644(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100047388, &qword_10002BF20);
  result = sub_100029368();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = *(v3 + 48) + 16 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      sub_1000294B8();
      sub_1000294D8(v19);
      sub_1000294C8(v20);
      result = sub_1000294E8();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 16 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1000248B4(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1000243E4(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_100024BAC();
      goto LABEL_16;
    }

    sub_100024E5C(v8 + 1);
  }

  v10 = *v4;
  sub_1000294B8();
  sub_100028FC8();
  result = sub_1000294E8();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_100029428();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_100029478();
  __break(1u);
  return result;
}

Swift::UInt64 sub_100024A34(Swift::UInt64 result, uint64_t a2, unint64_t a3, char a4)
{
  v5 = a2;
  v6 = result;
  v7 = *(*v4 + 16);
  v8 = *(*v4 + 24);
  if (v8 > v7 && (a4 & 1) != 0)
  {
    goto LABEL_15;
  }

  if (a4)
  {
    sub_100024644(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      v9 = a3;
      result = sub_100024D08();
      a3 = v9;
      goto LABEL_15;
    }

    sub_100025094(v7 + 1);
  }

  v10 = *v4;
  sub_1000294B8();
  sub_1000294D8(v6);
  sub_1000294C8(v5);
  result = sub_1000294E8();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = *(v10 + 48) + 16 * a3;
      v14 = *v13;
      v15 = *(v13 + 8);
      if (v14 == v6 && v15 == v5)
      {
        goto LABEL_18;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_15:
  v17 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v18 = *(v17 + 48) + 16 * a3;
  *v18 = v6;
  *(v18 + 8) = v5;
  v19 = *(v17 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v17 + 16) = v21;
    return result;
  }

  __break(1u);
LABEL_18:
  result = sub_100029478();
  __break(1u);
  return result;
}

void *sub_100024BAC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100047328, &qword_10002BEC8);
  v2 = *v0;
  v3 = sub_100029358();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_100024D08()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100047388, &qword_10002BF20);
  v2 = *v0;
  v3 = sub_100029358();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(v20 + 8) = v18)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = 16 * v14;
      v18 = *(v2 + 48) + v17;
      v19 = *v18;
      LODWORD(v18) = *(v18 + 8);
      v20 = *(v4 + 48) + v17;
      *v20 = v19;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

uint64_t sub_100024E5C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100047328, &qword_10002BEC8);
  result = sub_100029368();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_1000294B8();

      sub_100028FC8();
      result = sub_1000294E8();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_100025094(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100047388, &qword_10002BF20);
  result = sub_100029368();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = *(v3 + 48) + 16 * (v14 | (v6 << 6));
      v18 = *v17;
      v19 = *(v17 + 8);
      sub_1000294B8();
      sub_1000294D8(v18);
      sub_1000294C8(v19);
      result = sub_1000294E8();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v5 + 48) + 16 * v12;
      *v13 = v18;
      *(v13 + 8) = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1000252D4(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = *(v2 + 48) + ((v9 << 10) | (16 * v10));
        result = sub_1000258D8(*v11, *(v11 + 8));
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

void *sub_1000253D4(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v65 = 0;
    v58 = 0;
    v63 = a2;
    v64 = a1;
    v6 = a1 + 56;
    v5 = *(a1 + 56);
    v7 = -1 << *(a1 + 32);
    v62 = ~v7;
    if (-v7 < 64)
    {
      v8 = ~(-1 << -v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & v5;
    v10 = (63 - v7) >> 6;
    v11 = (a2 + 56);
    while (1)
    {
      do
      {
        if (!v9)
        {
          v13 = v65;
          v12 = v63;
          while (1)
          {
            v14 = v13 + 1;
            if (__OFADD__(v13, 1))
            {
              break;
            }

            if (v14 >= v10)
            {

              goto LABEL_52;
            }

            v9 = *(v6 + 8 * v14);
            ++v13;
            if (v9)
            {
              v65 = v14;
              goto LABEL_13;
            }
          }

LABEL_55:
          __break(1u);
          goto LABEL_56;
        }

        v12 = v63;
LABEL_13:
        v15 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
        v16 = *(v64 + 48) + ((v65 << 10) | (16 * v15));
        v3 = *v16;
        v17 = *(v16 + 8);
        sub_1000294B8();
        sub_1000294D8(v3);
        sub_1000294C8(v17);
        v18 = sub_1000294E8();
        v19 = -1 << *(v12 + 32);
        v2 = v18 & ~v19;
        v4 = v2 >> 6;
        v12 = 1 << v2;
      }

      while (((1 << v2) & v11[v2 >> 6]) == 0);
      v20 = *(v63 + 48);
      v21 = (v20 + 16 * v2);
      v22 = *v21;
      v23 = *(v21 + 2);
      if (v22 == v3 && v23 == v17)
      {
        break;
      }

      while (1)
      {
        v2 = (v2 + 1) & ~v19;
        v4 = v2 >> 6;
        v12 = 1 << v2;
        if ((v11[v2 >> 6] & (1 << v2)) == 0)
        {
          break;
        }

        v25 = v20 + 16 * v2;
        if (*v25 == v3 && *(v25 + 8) == v17)
        {
          goto LABEL_21;
        }
      }
    }

LABEL_21:
    v68 = v62;
    v69 = v65;
    v70 = v9;
    v67[0] = v64;
    v67[1] = v6;
    v26 = (63 - v19) >> 6;
    v3 = 8 * v26;

    v59 = v26;
    if (v26 <= 0x80)
    {
      goto LABEL_22;
    }

LABEL_56:
    v54 = v63;

    if (swift_stdlib_isStackAllocationSafe())
    {

LABEL_22:
      v60 = &v57;
      __chkstk_darwin(v27);
      v29 = (&v57 - v28);
      memcpy(&v57 - v28, v11, v3);
      v30 = v29[v4] & ~v12;
      v12 = v63;
      v31 = *(v63 + 16);
      v29[v4] = v30;
      v32 = v31 - 1;
      v4 = 1;
LABEL_23:
      v61 = v32;
      while (v9)
      {
LABEL_31:
        v36 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
        v37 = *(v64 + 48) + ((v65 << 10) | (16 * v36));
        v3 = *v37;
        v38 = *(v37 + 8);
        sub_1000294B8();
        v2 = v66;
        sub_1000294D8(v3);
        sub_1000294C8(v38);
        v39 = sub_1000294E8();
        v40 = -1 << *(v12 + 32);
        v41 = v39 & ~v40;
        v42 = v41 >> 6;
        v43 = 1 << v41;
        if (((1 << v41) & v11[v41 >> 6]) != 0)
        {
          v44 = *(v12 + 48);
          v45 = (v44 + 16 * v41);
          v46 = *v45;
          v47 = *(v45 + 2);
          if (v46 == v3 && v47 == v38)
          {
LABEL_24:
            v33 = v29[v42];
            v29[v42] = v33 & ~v43;
            if ((v33 & v43) != 0)
            {
              v32 = v61 - 1;
              if (__OFSUB__(v61, 1))
              {
                __break(1u);
              }

              if (v61 == 1)
              {

                v12 = &_swiftEmptySetSingleton;
                goto LABEL_49;
              }

              goto LABEL_23;
            }
          }

          else
          {
            v49 = ~v40;
            while (1)
            {
              v41 = (v41 + 1) & v49;
              v42 = v41 >> 6;
              v43 = 1 << v41;
              if ((v11[v41 >> 6] & (1 << v41)) == 0)
              {
                break;
              }

              v50 = v44 + 16 * v41;
              if (*v50 == v3 && *(v50 + 8) == v38)
              {
                goto LABEL_24;
              }
            }
          }
        }
      }

      v34 = v65;
      while (1)
      {
        v35 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          __break(1u);
          goto LABEL_55;
        }

        if (v35 >= v10)
        {
          break;
        }

        v9 = *(v6 + 8 * v35);
        ++v34;
        if (v9)
        {
          v65 = v35;
          goto LABEL_31;
        }
      }

      if (v10 <= v65 + 1)
      {
        v51 = v65 + 1;
      }

      else
      {
        v51 = v10;
      }

      v65 = v51 - 1;
      v12 = sub_100025C28(v29, v59, v61, v12);
LABEL_49:
      v52 = v64;
LABEL_52:
      sub_1000277F4(v52);
      return v12;
    }

    v55 = swift_slowAlloc();
    memcpy(v55, v11, v3);
    v56 = v58;
    v12 = sub_100025A1C(v55, v59, v54, v2, v67);

    if (!v56)
    {

      v52 = v67[0];
      v62 = v68;
      v65 = v69;
      goto LABEL_52;
    }

    __break(1u);
  }

  else
  {

    return &_swiftEmptySetSingleton;
  }

  return result;
}

uint64_t sub_1000258D8(Swift::UInt64 a1, uint64_t a2)
{
  v3 = a2;
  v5 = *v2;
  sub_1000294B8();
  sub_1000294D8(a1);
  sub_1000294C8(v3);
  v6 = sub_1000294E8();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = *(v5 + 48) + 16 * v8;
    v11 = *v10;
    v12 = *(v10 + 8);
    if (v11 == a1 && v12 == v3)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  v18 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100024D08();
    v16 = v18;
  }

  v17 = *(*(v16 + 48) + 16 * v8);
  sub_100025E54(v8);
  result = v17;
  *v2 = v18;
  return result;
}

Swift::Int sub_100025A1C(Swift::Int result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = result;
  v8 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v9 = v8 - 1;
  v10 = a3 + 56;
  while (2)
  {
    v33 = v9;
    do
    {
      while (1)
      {
        do
        {
          v12 = a5[3];
          v13 = a5[4];
          if (!v13)
          {
            v15 = (a5[2] + 64) >> 6;
            v16 = a5[3];
            while (1)
            {
              v14 = v16 + 1;
              if (__OFADD__(v16, 1))
              {
                __break(1u);
                goto LABEL_28;
              }

              if (v14 >= v15)
              {
                break;
              }

              v13 = *(a5[1] + 8 * v14);
              ++v16;
              if (v13)
              {
                goto LABEL_10;
              }
            }

            if (v15 <= v12 + 1)
            {
              v31 = v12 + 1;
            }

            else
            {
              v31 = (a5[2] + 64) >> 6;
            }

            a5[3] = v31 - 1;
            a5[4] = 0;

            return sub_100025C28(v7, a2, v33, a3);
          }

          v14 = a5[3];
LABEL_10:
          v17 = *(*a5 + 48) + ((v14 << 10) | (16 * __clz(__rbit64(v13))));
          v18 = *v17;
          v19 = *(v17 + 8);
          a5[3] = v14;
          a5[4] = (v13 - 1) & v13;
          sub_1000294B8();
          sub_1000294D8(v18);
          sub_1000294C8(v19);
          result = sub_1000294E8();
          v20 = -1 << *(a3 + 32);
          v21 = result & ~v20;
          v22 = v21 >> 6;
          v23 = 1 << v21;
        }

        while (((1 << v21) & *(v10 + 8 * (v21 >> 6))) == 0);
        v24 = *(a3 + 48);
        v25 = (v24 + 16 * v21);
        v26 = *v25;
        v27 = *(v25 + 2);
        if (v26 == v18 && v27 == v19)
        {
          break;
        }

        v29 = ~v20;
        while (1)
        {
          v21 = (v21 + 1) & v29;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if ((*(v10 + 8 * (v21 >> 6)) & (1 << v21)) == 0)
          {
            break;
          }

          v30 = v24 + 16 * v21;
          if (*v30 == v18 && *(v30 + 8) == v19)
          {
            goto LABEL_3;
          }
        }
      }

LABEL_3:
      v11 = v7[v22];
      v7[v22] = v11 & ~v23;
    }

    while ((v11 & v23) == 0);
    v9 = v33 - 1;
    if (__OFSUB__(v33, 1))
    {
LABEL_28:
      __break(1u);
    }

    else
    {
      if (v33 != 1)
      {
        continue;
      }

      return &_swiftEmptySetSingleton;
    }

    return result;
  }
}

uint64_t sub_100025C28(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100047388, &qword_10002BF20);
  result = sub_100029378();
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
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(v4 + 48) + 16 * (v13 | (v11 << 6));
    v17 = *v16;
    v18 = *(v16 + 8);
    sub_1000294B8();
    sub_1000294D8(v17);
    sub_1000294C8(v18);
    result = sub_1000294E8();
    v19 = -1 << v9[32];
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = *(v9 + 6) + 16 * v22;
    *v27 = v17;
    *(v27 + 8) = v18;
    ++*(v9 + 2);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
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
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t sub_100025E54(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_100029308();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = 16 * v6;
        v11 = *(v3 + 48) + 16 * v6;
        v12 = *v11;
        v13 = *(v11 + 8);
        sub_1000294B8();
        sub_1000294D8(v12);
        sub_1000294C8(v13);
        v14 = sub_1000294E8() & v7;
        if (v2 >= v9)
        {
          if (v14 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v14 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v14)
        {
LABEL_11:
          v15 = *(v3 + 48);
          v16 = (v15 + 16 * v2);
          v17 = (v15 + v10);
          if (16 * v2 != v10 || (v2 = v6, v16 >= v17 + 1))
          {
            *v16 = *v17;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

void sub_100026024()
{
  v1 = *v0;
  v2 = *(*v0 + 2);
  v3 = v2 - 2;
  if (v2 >= 2)
  {
    v4 = 0;
    while (1)
    {
      swift_stdlib_random();
      v6 = (0 * v2) >> 64;
      if (v2)
      {
        if (-v2 % v2)
        {
          while (1)
          {
            swift_stdlib_random();
          }
        }
      }

      v8 = v4 + v6;
      if (__OFADD__(v4, v6))
      {
        break;
      }

      if (v4 != v8)
      {
        v9 = *(v1 + 2);
        if (v4 >= v9)
        {
          goto LABEL_18;
        }

        if (v8 >= v9)
        {
          goto LABEL_19;
        }

        v10 = *&v1[8 * v4 + 32];
        v11 = *&v1[8 * v8 + 32];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v1 = sub_10002660C(v1);
        }

        v12 = *(v1 + 2);
        if (v4 >= v12)
        {
          goto LABEL_20;
        }

        *&v1[8 * v4 + 32] = v11;
        if (v8 >= v12)
        {
          goto LABEL_21;
        }

        *&v1[8 * v8 + 32] = v10;
        *v0 = v1;
      }

      --v2;
      if (v4++ == v3)
      {
        return;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
  }
}

void sub_10002616C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(void))
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v6)
  {
    if (v6 < 1)
    {
      if (v5 != a3)
      {
LABEL_7:
        a5(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100046758, &qword_10002BEB0);
      v9 = swift_allocObject();
      v10 = _swift_stdlib_malloc_size(v9);
      v11 = v10 - 32;
      if (v10 < 32)
      {
        v11 = v10 - 25;
      }

      v9[2] = v6;
      v9[3] = (2 * (v11 >> 3)) | 1;
      if (v5 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_100026258(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = _swiftEmptyArrayStorage;
      if (v4 != a3)
      {
LABEL_7:
        memcpy(v8 + 4, (a2 + 8 * a3), 8 * v5);
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1000472F0, &qword_10002BEB8);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 25;
      }

      v8[2] = v5;
      v8[3] = 2 * (v10 >> 3);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t *sub_100026328(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
LABEL_15:
    a3 = 0;
LABEL_16:
    v8 = a4;
LABEL_19:
    *result = a4;
    result[1] = a5;
    result[2] = v8;
    return a3;
  }

  if (!a3)
  {
    goto LABEL_16;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    if (a5 <= a4)
    {
      v6 = a4;
    }

    else
    {
      v6 = a5;
    }

    v7 = a4 - v6;
    while (1)
    {
      if (!(a4 - a5 + v5))
      {
        v8 = a5;
        a3 = a5 - a4;
        goto LABEL_19;
      }

      if (a5 < a4)
      {
        break;
      }

      if (!(v7 + v5))
      {
        goto LABEL_21;
      }

      *(a2 + 8 * v5) = a4 + v5;
      if (a3 - 1 == v5)
      {
        v8 = a4 + v5 + 1;
        goto LABEL_19;
      }

      if (__OFADD__(++v5, 1))
      {
        __break(1u);
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000263C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1000292F8();
  v7 = 1 << *(a2 + 32);
  if (v7 < result)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (*(a1 + 16))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = *(a2 + 36);
  v9 = *(a1 + 8);
  if (v8 != v9)
  {
    goto LABEL_12;
  }

  if (*a1 < result)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (*(a1 + 40))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v10 = *(a1 + 32);
  if (v8 != v10)
  {
    goto LABEL_14;
  }

  v11 = *(a1 + 24);
  if (v7 < v11)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  *a3 = *a1;
  *(a3 + 8) = v9;
  *(a3 + 16) = 0;
  *(a3 + 24) = v11;
  *(a3 + 32) = v10;
  *(a3 + 40) = 0;
  *(a3 + 48) = a2;
}

uint64_t sub_1000264A8(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, int a6, char a7, uint64_t a8)
{
  if (a4 < 0)
  {
LABEL_26:
    __break(1u);
  }

  else
  {
    if (!a4)
    {
      v20 = result;
      sub_1000277FC(result, a2, a3 & 1);
      return v20;
    }

    v8 = 0;
    v9 = a3 | a7;
    while ((v9 & 1) == 0)
    {
      if (a2 != a6)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (result == a5)
      {
        return 0;
      }

      if (result < 0)
      {
        goto LABEL_23;
      }

      v11 = 1 << *(a8 + 32);
      if (result >= v11)
      {
        goto LABEL_23;
      }

      v12 = result >> 6;
      v13 = *(a8 + 56 + 8 * (result >> 6));
      if (((v13 >> result) & 1) == 0)
      {
        goto LABEL_24;
      }

      if (*(a8 + 36) != a6)
      {
        goto LABEL_25;
      }

      v14 = v13 & (-2 << (result & 0x3F));
      if (v14)
      {
        result = __clz(__rbit64(v14)) | result & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v15 = v12 << 6;
        v16 = v12 + 1;
        v17 = (a8 + 64 + 8 * v12);
        while (v16 < (v11 + 63) >> 6)
        {
          v19 = *v17++;
          v18 = v19;
          v15 += 64;
          ++v16;
          if (v19)
          {
            result = __clz(__rbit64(v18)) + v15;
            goto LABEL_5;
          }
        }

        result = 1 << *(a8 + 32);
      }

LABEL_5:
      LODWORD(a2) = a6;
      v9 = a7;
      if (v8++ == a4 - 1)
      {
        return result;
      }
    }
  }

  __break(1u);
  return result;
}

char *sub_100026620(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1000472F0, &qword_10002BEB8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

void sub_100026724(void *a1@<X8>)
{
  v2 = sub_100023A9C();
  if (!v2)
  {
    goto LABEL_5;
  }

  v3 = v2;
  v4 = [v2 _identifier];

  if (v4 && ([v4 isValid] & 1) == 0)
  {

LABEL_5:
    v4 = 0;
  }

  *a1 = v4;
}

id sub_1000267A4(void *a1)
{
  v25 = sub_100028C98();
  v22 = *(v25 - 8);
  v2 = __chkstk_darwin(v25);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v21 - v5;
  v31 = &_swiftEmptySetSingleton;
  v7 = [a1 _place];
  v8 = [v7 firstBusiness];

  v9 = [v8 localizedCategories];
  if (!v9)
  {
    sub_100003E20(0, &qword_100046F98, NSMutableArray_ptr);
    v9 = sub_100029248();
  }

  sub_100029258();

  sub_100028C88();
  if (!v30)
  {
LABEL_16:
    (*(v22 + 8))(v6, v25);
    v29 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100047300, &qword_10002BEC0);
    sub_100027358(&qword_100046FA0, &unk_100047300, &qword_10002BEC0, &protocol conformance descriptor for Set<A>);
    sub_100001FC0();
    v20 = sub_100029018();

    return v20;
  }

  v10 = sub_100003E20(0, &qword_100046FA8, GEOCategory_ptr);
  v23 = (v22 + 8);
  v24 = v10;
  while (1)
  {
    if (!swift_dynamicCast())
    {
      goto LABEL_6;
    }

    v11 = v6;
    v12 = v27;
    v13 = [v27 localizedNames];
    if (!v13)
    {
      sub_100003E20(0, &qword_100046F98, NSMutableArray_ptr);
      v13 = sub_100029248();
    }

    sub_100029258();

    sub_100028C88();
    if (v28)
    {
      break;
    }

LABEL_5:
    (*v23)(v4, v25);

    v6 = v11;
LABEL_6:
    sub_100028C88();
    if (!v30)
    {
      goto LABEL_16;
    }
  }

  sub_100003E20(0, &qword_100047320, GEOLocalizedName_ptr);
  while ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    sub_100028C88();
    if (!v28)
    {
      goto LABEL_5;
    }
  }

  v14 = v26;
  result = [v26 name];
  if (result)
  {
    v16 = result;
    v17 = sub_100028F88();
    v19 = v18;

    sub_100024170(&v26, v17, v19);

    goto LABEL_12;
  }

  __break(1u);
  return result;
}

unint64_t sub_100026B8C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1000472D0, &qword_10002BE80);
    v3 = sub_1000293F8();
    v4 = a1 + 32;

    while (1)
    {
      sub_100011330(v4, v13, &qword_100046778, &unk_10002AFE0);
      result = sub_10000243C(v13);
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
      result = sub_100026CC8(&v15, (v3[7] + 32 * result));
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

_OWORD *sub_100026CC8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100026E08@<X0>(uint64_t (*a1)(void)@<X0>, unint64_t *a2@<X8>)
{
  result = sub_100022C14(*(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), a1);
  if (!v3)
  {
    *a2 = result;
    a2[1] = v6;
  }

  return result;
}

uint64_t sub_100026E80(void *a1)
{
  v14 = a1;
  v2 = sub_100029178();
  v3 = *(v2 - 8);
  v15 = v2;
  v16 = v3;
  __chkstk_darwin(v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100029158();
  __chkstk_darwin(v6);
  v7 = sub_100028EC8();
  __chkstk_darwin(v7 - 8);
  *(v1 + 32) = 0;
  v13[0] = sub_100003E20(0, &qword_100046278, OS_dispatch_queue_ptr);
  v13[3] = "mapItemCategory == nil";
  sub_100028EB8();
  v17 = _swiftEmptyArrayStorage;
  v13[2] = sub_100027BD4(&qword_100046280, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  v13[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100046288, &unk_10002AD60);
  sub_100027358(&qword_100046290, &qword_100046288, &unk_10002AD60, &protocol conformance descriptor for [A]);
  sub_1000292E8();
  v8 = enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:);
  v9 = *(v16 + 104);
  v16 += 104;
  v9(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v15);
  *(v1 + 40) = sub_1000291A8();
  sub_100028EB8();
  v17 = _swiftEmptyArrayStorage;
  sub_1000292E8();
  v9(v5, v8, v15);
  *(v1 + 48) = sub_1000291A8();
  *(v1 + 56) = GEOConfigGetInteger();
  *(v1 + 64) = GEOConfigGetInteger();
  *(v1 + 72) = GEOConfigGetInteger();
  *(v1 + 80) = GEOConfigGetInteger();
  *(v1 + 88) = GEOConfigGetInteger();
  *(v1 + 96) = GEOConfigGetInteger();
  *(v1 + 104) = GEOConfigGetBOOL();
  *(v1 + 105) = GEOConfigGetBOOL();
  *(v1 + 106) = GEOConfigGetBOOL();
  *(v1 + 107) = GEOConfigGetBOOL();
  *(v1 + 108) = GEOConfigGetBOOL();
  *(v1 + 109) = GEOConfigGetBOOL();
  *(v1 + 110) = GEOConfigGetBOOL();
  *(v1 + 111) = GEOConfigGetBOOL();
  *(v1 + 112) = GEOConfigGetBOOL();
  *(v1 + 120) = xmmword_10002AEB0;
  *(v1 + 136) = 86400;
  v10 = v14;
  *(v1 + 16) = v14;
  v11 = [v10 newBackgroundContext];
  *(v1 + 24) = v11;
  [v11 setAutomaticallyMergesChangesFromParent:1];
  sub_100015638();
  sub_100015758();
  return v1;
}

uint64_t sub_100027358(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000273F4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000034F8;

  return sub_10001726C(a1, v4, v5, v7, v6);
}

uint64_t objectdestroy_68Tm()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100027550(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000034FC;

  return sub_100015EF4(a1, v4, v5, v7, v6);
}

unint64_t sub_10002764C()
{
  result = qword_100047360;
  if (!qword_100047360)
  {
    sub_100003E20(255, &qword_100047358, NSDate_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100047360);
  }

  return result;
}

uint64_t sub_1000276D4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    v6 = sub_1000292F8();
    v7 = *(a2 + 36);
    v8 = -1 << *(a2 + 32);
    v9 = sub_1000264A8(v6, v7, 0, v4, -v8, *(a2 + 36), 0, a2);
    v11 = v10;
    v13 = v12;
    v14 = v12;
    result = sub_1000292F8();
    if (v14 == 255)
    {
      v15 = -v8;
    }

    else
    {
      v15 = v9;
    }

    if (v14 == 255)
    {
      v16 = v7;
    }

    else
    {
      v16 = v11;
    }

    if (v14 != 255 && (v13 & 1) != 0)
    {
      goto LABEL_16;
    }

    v17 = *(a2 + 36);
    if (v17 == v16)
    {
      if (v15 >= result)
      {
        v21[0] = result;
        v21[1] = v17;
        v22 = 0;
        v23 = v15;
        v24 = v16;
        v25 = 0;
        result = sub_1000263C4(v21, a2, v19);
        v18 = v19[1];
        *a3 = v19[0];
        *(a3 + 16) = v18;
        *(a3 + 32) = v19[2];
        *(a3 + 48) = v20;
        return result;
      }

      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1000277FC(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_100027808(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

id sub_1000279B4@<X0>(void *a1@<X8>)
{
  result = sub_100020AFC(*(v1 + 16));
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000279F4(void *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1000473B8, &qword_10002BF80);

  return sub_1000232CC(a1, a2);
}

void *sub_100027B30@<X0>(void (*a1)(void)@<X0>, void *a2@<X8>, uint64_t (*a3)(void)@<X1>)
{
  result = sub_100022D50(*(v3 + 16), *(v3 + 24), *(v3 + 32), *(v3 + 40), a1, a3);
  if (!v4)
  {
    *a2 = result;
  }

  return result;
}

uint64_t objectdestroy_144Tm()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100027BD4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t __swift_memcpy12_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for MapsSyncDaemonPeriodicActivityHandler.CuratedCollectionId(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 12))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MapsSyncDaemonPeriodicActivityHandler.CuratedCollectionId(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
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

  *(result + 12) = v3;
  return result;
}

unint64_t sub_100027C90()
{
  result = qword_1000473E0;
  if (!qword_1000473E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000473E0);
  }

  return result;
}

id sub_100027EA4(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MapsSyncManagedSharedTripBlockedItem();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100027FB0()
{
  v0 = sub_100028E48();
  __swift_allocate_value_buffer(v0, qword_100047438);
  __swift_project_value_buffer(v0, qword_100047438);
  if (qword_100046260 != -1)
  {
    swift_once();
  }

  v1 = static OS_os_log.Signpost;
  return sub_100028E28();
}

uint64_t sub_100028040(const char *a1, uint64_t a2, unsigned __int8 a3, char a4)
{
  v46 = a1;
  v45 = a3;
  v47 = sub_100028E18();
  v5 = *(v47 - 8);
  v6 = __chkstk_darwin(v47);
  v8 = &v42[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __chkstk_darwin(v6);
  v11 = &v42[-v10];
  __chkstk_darwin(v9);
  v13 = &v42[-v12];
  v14 = sub_100028E48();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v42[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = __chkstk_darwin(v16);
  v21 = &v42[-v20];
  __chkstk_darwin(v19);
  v23 = &v42[-v22];
  v24 = qword_100046268 == -1;
  if (a4)
  {
    if (qword_100046268 != -1)
    {
      swift_once();
    }

    v25 = __swift_project_value_buffer(v14, qword_100047438);
    v26 = *(v15 + 16);
    v26(v23, v25, v14);
    v26(v21, v25, v14);
    sub_100028E38();
    sub_100028DF8();
    v28 = *(v15 + 8);
    v15 += 8;
    v27 = v28;
    v28(v21, v14);
    v8 = sub_100028E38();
    v29 = sub_100029208();
    v21 = v8;
    result = sub_100029298();
    if ((result & 1) == 0)
    {
      goto LABEL_19;
    }

    v44 = v27;
    v43 = v29;
    if (v45)
    {
      goto LABEL_14;
    }

    v18 = v46;
    if (v46)
    {
LABEL_18:
      v35 = swift_slowAlloc();
      *v35 = 0;
      v36 = sub_100028E08();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, v43, v36, v18, "enableTelemetry=YES", v35, 2u);

      v27 = v44;
LABEL_19:

      v37 = v47;
      (*(v5 + 16))(v11, v13, v47);
      sub_100028E88();
      swift_allocObject();
      v38 = sub_100028E78();
      (*(v5 + 8))(v13, v37);
      v27(v23, v14);
      return v38;
    }

    __break(1u);
  }

  if (!v24)
  {
    swift_once();
  }

  v31 = __swift_project_value_buffer(v14, qword_100047438);
  v32 = *(v15 + 16);
  v32(v18, v31, v14);
  v32(v21, v31, v14);
  sub_100028E38();
  sub_100028DF8();
  v33 = *(v15 + 8);
  v33(v21, v14);
  v13 = sub_100028E38();
  v34 = sub_100029208();
  result = sub_100029298();
  if ((result & 1) == 0)
  {
LABEL_25:

    v41 = v47;
    (*(v5 + 16))(v11, v8, v47);
    sub_100028E88();
    swift_allocObject();
    v38 = sub_100028E78();
    (*(v5 + 8))(v8, v41);
    v33(v18, v14);
    return v38;
  }

  v44 = v33;
  v43 = v34;
  if ((v45 & 1) == 0)
  {
    v23 = v46;
    if (!v46)
    {
      __break(1u);
LABEL_14:
      if (!(v46 >> 32))
      {
        if ((v46 & 0xFFFFF800) == 0xD800)
        {
LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

        if (v46 >> 16 <= 0x10)
        {
          v18 = &v48;
          goto LABEL_18;
        }

        goto LABEL_29;
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    goto LABEL_24;
  }

  if (v46 >> 32)
  {
    goto LABEL_28;
  }

  if ((v46 & 0xFFFFF800) != 0xD800)
  {
    if (v46 >> 16 > 0x10)
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v23 = &v49;
LABEL_24:
    v39 = swift_slowAlloc();
    *v39 = 0;
    v40 = sub_100028E08();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, v43, v40, v23, "", v39, 2u);

    v33 = v44;
    goto LABEL_25;
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1000285E4(const char *a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, char a5)
{
  v45 = a1;
  v42 = a3;
  v6 = sub_100028E58();
  v40 = *(v6 - 8);
  v41 = v6;
  v7 = __chkstk_darwin(v6);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v40 - v10;
  v12 = sub_100028E18();
  v43 = *(v12 - 8);
  v44 = v12;
  v13 = __chkstk_darwin(v12);
  v15 = (&v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v13);
  v17 = (&v40 - v16);
  v18 = sub_100028E48();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v22 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v40 - v23;
  v25 = qword_100046268 == -1;
  if (a5)
  {
    if (qword_100046268 != -1)
    {
      swift_once();
    }

    v26 = __swift_project_value_buffer(v18, qword_100047438);
    (*(v19 + 16))(v24, v26, v18);
    v15 = sub_100028E38();
    sub_100028E68();
    v22 = sub_1000291F8();
    v9 = v15;
    result = sub_100029298();
    if ((result & 1) == 0)
    {
      goto LABEL_14;
    }

    if (v42)
    {
      if (v45 >> 32)
      {
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      if ((v45 & 0xFFFFF800) == 0xD800)
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      if (v45 >> 16 > 0x10)
      {
        goto LABEL_35;
      }

      v45 = &v46;
    }

    else if (!v45)
    {
      __break(1u);
      goto LABEL_8;
    }

    sub_100028E98();

    v31 = v40;
    v30 = v41;
    if ((*(v40 + 88))(v11, v41) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v32 = "[Error] Interval already ended";
    }

    else
    {
      (*(v31 + 8))(v11, v30);
      v32 = "enableTelemetry=YES";
    }

    v36 = swift_slowAlloc();
    *v36 = 0;
    v37 = sub_100028E08();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, v22, v37, v45, v32, v36, 2u);
    v15 = v17;
    v17 = v9;
    v22 = v24;
    goto LABEL_31;
  }

LABEL_8:
  if (!v25)
  {
    swift_once();
  }

  v28 = __swift_project_value_buffer(v18, qword_100047438);
  (*(v19 + 16))(v22, v28, v18);
  v17 = sub_100028E38();
  sub_100028E68();
  v29 = sub_1000291F8();
  result = sub_100029298();
  if ((result & 1) == 0)
  {
    goto LABEL_32;
  }

  if ((v42 & 1) == 0)
  {
    if (!v45)
    {
      __break(1u);
LABEL_14:
      v15 = v17;
      v22 = v24;
      v17 = v9;
LABEL_32:

      (*(v43 + 8))(v15, v44);
      return (*(v19 + 8))(v22, v18);
    }

    goto LABEL_25;
  }

  if (v45 >> 32)
  {
    goto LABEL_34;
  }

  if ((v45 & 0xFFFFF800) != 0xD800)
  {
    if (v45 >> 16 <= 0x10)
    {
      v45 = &v47;
LABEL_25:

      sub_100028E98();

      v34 = v40;
      v33 = v41;
      if ((*(v40 + 88))(v9, v41) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v35 = "[Error] Interval already ended";
      }

      else
      {
        (*(v34 + 8))(v9, v33);
        v35 = "";
      }

      v38 = swift_slowAlloc();
      *v38 = 0;
      v39 = sub_100028E08();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, v29, v39, v45, v35, v38, 2u);
LABEL_31:

      goto LABEL_32;
    }

    goto LABEL_36;
  }

LABEL_38:
  __break(1u);
  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}