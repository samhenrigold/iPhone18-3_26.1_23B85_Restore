double Text.with(style:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = a1;
  v9 = sub_100477EA0(a2, a3, a4 & 1, a5, a1);
  v11 = v10;
  v13 = v12;
  sub_1004757F4(v9, v10, v12 & 1, v14, v7, a6);
  sub_10001B5A4(v9, v11, v13 & 1);

  return result;
}

uint64_t sub_100477EA0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 <= 3u)
  {
    if (a5 != 2)
    {
      sub_10056FBC8();
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (a5 <= 5u)
  {
    if (a5 != 4)
    {
      sub_10056FB88();
      v7 = sub_10056FD98();
      v9 = v8;
      v11 = v10;
      sub_10056FC18();
      v5 = sub_10056FE88();

      sub_10001B5A4(v7, v9, v11 & 1);

      return v5;
    }

    goto LABEL_8;
  }

  if (a5 - 6 < 2)
  {
LABEL_8:
    sub_10056FB18();
    goto LABEL_9;
  }

  sub_10056FBD8();
LABEL_9:
  v5 = sub_10056FE88();

  return v5;
}

unint64_t sub_100478000()
{
  result = qword_1006F61E0;
  if (!qword_1006F61E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F61E0);
  }

  return result;
}

uint64_t _s5StyleOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_20;
  }

  v2 = a2 + 8;
  if (a2 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 8;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 8;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 3)
  {
    v8 = v7 - 2;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 7)
  {
    return v8 - 6;
  }

  else
  {
    return 0;
  }
}

uint64_t _s5StyleOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 8;
  if (a3 + 8 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xF8)
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1004781AC(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 3)
  {
    return v1 - 2;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1004781C0(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 2;
  }

  return result;
}

uint64_t sub_1004781F0(uint64_t *a1)
{
  sub_100010324(&unk_1006F2C00, &unk_10059E480);
  sub_10056ECA8();
  sub_100010324(&qword_1006F3F20, &qword_10059FB90);
  sub_10056ECA8();
  sub_100010324(&qword_1006F4EA8, &qword_1005A0C98);
  sub_10056ECA8();
  sub_10056F5C8();
  sub_100010324(&qword_1006F3940, &qword_10059F458);
  sub_10056ECA8();
  sub_10056ECA8();
  sub_10056F5C8();
  sub_10056F5C8();
  sub_10056F5C8();
  sub_10047849C(&unk_1006F3EF0, &unk_1006F2C00, &unk_10059E480);
  swift_getWitnessTable();
  sub_10047849C(&qword_1006F3FB8, &qword_1006F3F20, &qword_10059FB90);
  swift_getWitnessTable();
  sub_10047849C(&qword_1006F4EA0, &qword_1006F4EA8, &qword_1005A0C98);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_10047849C(&qword_1006F3FD0, &qword_1006F3940, &qword_10059F458);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_10047849C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100010324(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1004784F4()
{
  result = qword_1006F61E8;
  if (!qword_1006F61E8)
  {
    sub_100010324(&qword_1006F61F0, &qword_1005A3358);
    sub_100478580();
    sub_100478698();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F61E8);
  }

  return result;
}

unint64_t sub_100478580()
{
  result = qword_1006F61F8;
  if (!qword_1006F61F8)
  {
    sub_100010324(&qword_1006F6200, &qword_1005A3360);
    sub_10047860C();
    sub_1004787E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F61F8);
  }

  return result;
}

unint64_t sub_10047860C()
{
  result = qword_1006F6208;
  if (!qword_1006F6208)
  {
    sub_100010324(&qword_1006F6210, &qword_1005A3368);
    sub_100478698();
    sub_10047873C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F6208);
  }

  return result;
}

unint64_t sub_100478698()
{
  result = qword_1006F6218;
  if (!qword_1006F6218)
  {
    sub_100010324(&qword_1006F6220, &qword_1005A3370);
    sub_100404DE4();
    sub_10047849C(&qword_1006F3FB8, &qword_1006F3F20, &qword_10059FB90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F6218);
  }

  return result;
}

unint64_t sub_10047873C()
{
  result = qword_1006F6228;
  if (!qword_1006F6228)
  {
    sub_100010324(&qword_1006F6230, &qword_1005A3378);
    sub_100478698();
    sub_10047849C(&qword_1006F4EA0, &qword_1006F4EA8, &qword_1005A0C98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F6228);
  }

  return result;
}

unint64_t sub_1004787E0()
{
  result = qword_1006F6238;
  if (!qword_1006F6238)
  {
    sub_100010324(&qword_1006F6240, &qword_1005A3380);
    sub_10047886C();
    sub_100404DE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F6238);
  }

  return result;
}

unint64_t sub_10047886C()
{
  result = qword_1006F6248;
  if (!qword_1006F6248)
  {
    sub_100010324(&qword_1006F6250, &qword_1005A3388);
    sub_100478910();
    sub_10047849C(&qword_1006F3FB8, &qword_1006F3F20, &qword_10059FB90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F6248);
  }

  return result;
}

unint64_t sub_100478910()
{
  result = qword_1006F6258;
  if (!qword_1006F6258)
  {
    sub_100010324(&qword_1006F6260, &qword_1005A3390);
    sub_100404DE4();
    sub_10047849C(&qword_1006F3FD0, &qword_1006F3940, &qword_10059F458);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F6258);
  }

  return result;
}

__n128 VerticalToggleSlider.packageDefinition.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageDefinition);
  swift_beginAccess();
  v4 = v3[5];
  v15 = v3[4];
  v16 = v4;
  v17 = *(v3 + 96);
  v5 = v3[1];
  v11 = *v3;
  v12 = v5;
  v6 = v3[3];
  v13 = v3[2];
  v14 = v6;
  sub_1003A28BC(&v11, &v10);
  v7 = v16;
  *(a1 + 64) = v15;
  *(a1 + 80) = v7;
  *(a1 + 96) = v17;
  v8 = v12;
  *a1 = v11;
  *(a1 + 16) = v8;
  result = v14;
  *(a1 + 32) = v13;
  *(a1 + 48) = result;
  return result;
}

uint64_t VerticalToggleSlider.packageDefinition.setter(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageDefinition;
  swift_beginAccess();
  v4 = *(v3 + 80);
  v15 = *(v3 + 64);
  v16 = v4;
  v17 = *(v3 + 96);
  v5 = *(v3 + 16);
  v12[0] = *v3;
  v12[1] = v5;
  v6 = *(v3 + 48);
  v13 = *(v3 + 32);
  v14 = v6;
  v18[0] = v12[0];
  v18[1] = v5;
  v18[2] = v13;
  v18[3] = v6;
  v18[4] = v15;
  v18[5] = v4;
  v19 = v17;
  v7 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v7;
  *(v3 + 96) = *(a1 + 96);
  v8 = *(a1 + 80);
  *(v3 + 64) = *(a1 + 64);
  *(v3 + 80) = v8;
  v9 = *(a1 + 48);
  *(v3 + 32) = *(a1 + 32);
  *(v3 + 48) = v9;
  sub_1003A28BC(v12, v11);
  sub_1003A28BC(a1, v11);
  sub_10001036C(v18, &qword_1006F0328, &qword_10059A540);
  sub_10047C390(v12);
  sub_10001036C(v12, &qword_1006F0328, &qword_10059A540);
  return sub_10001036C(a1, &qword_1006F0328, &qword_10059A540);
}

void (*VerticalToggleSlider.packageDefinition.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x368uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = (v3 + 312);
  *(v3 + 856) = v1;
  v6 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageDefinition;
  *(v3 + 864) = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageDefinition;
  v7 = (v1 + v6);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[2];
  *(v4 + 16) = v7[1];
  *(v4 + 32) = v9;
  *v4 = v8;
  v10 = v7[3];
  v11 = v7[4];
  v12 = v7[5];
  *(v4 + 96) = *(v7 + 96);
  *(v4 + 64) = v11;
  *(v4 + 80) = v12;
  *(v4 + 48) = v10;
  v14 = v7[4];
  v13 = v7[5];
  v15 = v7[3];
  *(v4 + 408) = *(v7 + 96);
  v5[4] = v14;
  v5[5] = v13;
  v5[3] = v15;
  v16 = *v7;
  v17 = v7[2];
  v5[1] = v7[1];
  v5[2] = v17;
  *v5 = v16;
  sub_1003A28BC(v4, v4 + 416);
  return sub_100478C64;
}

void sub_100478C64(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *a1 + 312;
  v4 = *a1 + 520;
  v5 = (*(v2 + 856) + *(v2 + 864));
  v6 = *(*a1 + 328);
  if (a2)
  {
    *(v2 + 624) = *v3;
    *(v2 + 640) = v6;
    *(v2 + 720) = *(v3 + 96);
    v7 = *(v3 + 80);
    *(v2 + 688) = *(v3 + 64);
    *(v2 + 704) = v7;
    v8 = *(v3 + 48);
    v10 = *v3;
    v9 = *(v3 + 16);
    v11 = *(v3 + 32);
    *(v2 + 656) = v11;
    *(v2 + 672) = v8;
    v12 = *v5;
    v13 = v5[1];
    *(v2 + 136) = v5[2];
    *(v2 + 120) = v13;
    *(v2 + 104) = v12;
    v14 = v5[3];
    v15 = v5[4];
    v16 = v5[5];
    *(v2 + 200) = *(v5 + 96);
    *(v2 + 184) = v16;
    *(v2 + 168) = v15;
    *(v2 + 152) = v14;
    v17 = *v5;
    v18 = v5[2];
    *(v4 + 16) = v5[1];
    *(v4 + 32) = v18;
    *v4 = v17;
    v19 = v5[3];
    v20 = v5[5];
    v21 = *(v5 + 96);
    *(v4 + 64) = v5[4];
    *(v4 + 80) = v20;
    *(v4 + 48) = v19;
    *(v4 + 96) = v21;
    v5[1] = v9;
    v5[2] = v11;
    *v5 = v10;
    v22 = *(v3 + 48);
    v23 = *(v3 + 64);
    v24 = *(v3 + 80);
    *(v5 + 96) = *(v3 + 96);
    v5[4] = v23;
    v5[5] = v24;
    v5[3] = v22;
    sub_1003A28BC(v2 + 624, v2 + 728);
    sub_1003A28BC(v2 + 624, v2 + 728);
    sub_1003A28BC(v2 + 104, v2 + 728);
    sub_10001036C(v4, &qword_1006F0328, &qword_10059A540);
    sub_10047C390((v2 + 104));
    sub_10001036C(v2 + 104, &qword_1006F0328, &qword_10059A540);
    sub_10001036C(v2 + 624, &qword_1006F0328, &qword_10059A540);
    v25 = *(v3 + 80);
    *(v2 + 480) = *(v3 + 64);
    *(v2 + 496) = v25;
    *(v2 + 512) = *(v3 + 96);
    v26 = *(v3 + 16);
    *(v2 + 416) = *v3;
    *(v2 + 432) = v26;
    v27 = *(v3 + 48);
    *(v2 + 448) = *(v3 + 32);
    *(v2 + 464) = v27;
    v28 = v2 + 416;
  }

  else
  {
    *v4 = *v3;
    *(v4 + 16) = v6;
    *(v4 + 96) = *(v3 + 96);
    v29 = *(v3 + 80);
    *(v4 + 64) = *(v3 + 64);
    *(v4 + 80) = v29;
    v30 = *(v3 + 48);
    v32 = *v3;
    v31 = *(v3 + 16);
    v33 = *(v3 + 32);
    *(v4 + 32) = v33;
    *(v4 + 48) = v30;
    v34 = *v5;
    v35 = v5[2];
    *(v2 + 224) = v5[1];
    *(v2 + 240) = v35;
    *(v2 + 208) = v34;
    v36 = v5[3];
    v37 = v5[4];
    v38 = v5[5];
    *(v2 + 304) = *(v5 + 96);
    *(v2 + 272) = v37;
    *(v2 + 288) = v38;
    *(v2 + 256) = v36;
    v39 = *v5;
    v40 = v5[2];
    *(v2 + 432) = v5[1];
    *(v2 + 448) = v40;
    *(v2 + 416) = v39;
    v41 = v5[3];
    v42 = v5[5];
    v43 = *(v5 + 96);
    *(v2 + 480) = v5[4];
    *(v2 + 496) = v42;
    *(v2 + 464) = v41;
    *(v2 + 512) = v43;
    v5[1] = v31;
    v5[2] = v33;
    *v5 = v32;
    v44 = *(v3 + 48);
    v45 = *(v3 + 64);
    v46 = *(v3 + 80);
    *(v5 + 96) = *(v3 + 96);
    v5[4] = v45;
    v5[5] = v46;
    v5[3] = v44;
    sub_1003A28BC(v2 + 208, v2 + 624);
    sub_1003A28BC(v4, v2 + 624);
    sub_10001036C(v2 + 416, &qword_1006F0328, &qword_10059A540);
    sub_10047C390((v2 + 208));
    sub_10001036C(v2 + 208, &qword_1006F0328, &qword_10059A540);
    v28 = v4;
  }

  sub_10001036C(v28, &qword_1006F0328, &qword_10059A540);

  free(v2);
}

void VerticalToggleSlider.isOn.setter(char a1)
{
  if (a1)
  {
    v2 = 0;
  }

  else
  {
    v2 = 2;
  }

  v3 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode);
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode) = v2;
  sub_10047D49C(v3);
}

void (*VerticalToggleSlider.isOn.modify(uint64_t a1))(uint64_t *a1)
{
  v2 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode;
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + v2) != 2;
  return sub_100478F54;
}

void sub_100478F54(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  if (*(a1 + 16))
  {
    v3 = 0;
  }

  else
  {
    v3 = 2;
  }

  v4 = *(v2 + v1);
  *(v2 + v1) = v3;
  sub_10047D49C(v4);
}

void VerticalToggleSlider.value.setter(float a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue);
  v3 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue);
  if (v2 > v3)
  {
    __break(1u);
  }

  else
  {
    if (v2 > a1)
    {
      a1 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue);
    }

    if (v3 < a1)
    {
      a1 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue);
    }

    sub_10047A898(*(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange) + (((a1 - v2) / (v3 - v2)) * (*(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange + 4) - *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange))));
  }
}

uint64_t (*VerticalToggleSlider.value.modify(uint64_t (**a1)()))()
{
  if (&_swift_coroFrameAlloc)
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0x28uLL);
  }

  *a1 = result;
  *result = v1;
  v4 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue;
  *(result + 1) = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue;
  v5 = *(v1 + v4);
  v6 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue;
  *(result + 2) = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue;
  v7 = *(v1 + v6);
  if (v5 > v7)
  {
    __break(1u);
  }

  else
  {
    v8 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange;
    *(result + 3) = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange;
    v9 = (v1 + v8);
    v10 = v9[1];
    v11 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValue);
    if (*v9 > v11)
    {
      v11 = *v9;
    }

    if (v10 < v11)
    {
      v11 = v9[1];
    }

    *(result + 8) = v5 + ((v7 - v5) * ((v11 - *v9) / (v10 - *v9)));
    return sub_1004790CC;
  }

  return result;
}

void sub_1004790CC(float **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = *(v3 + *(*a1 + 1));
  v5 = *(v3 + *(*a1 + 2));
  if (a2)
  {
    if (v4 <= v5)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  if (v4 > v5)
  {
    __break(1u);
    return;
  }

LABEL_5:
  v6 = v2[8];
  if (v4 > v6)
  {
    v6 = v4;
  }

  if (v5 < v6)
  {
    v6 = v5;
  }

  sub_10047A898(*(v3 + *(v2 + 3)) + ((*(v3 + *(v2 + 3) + 4) - *(v3 + *(v2 + 3))) * ((v6 - v4) / (v5 - v4))));

  free(v2);
}

void VerticalToggleSlider.minValue.setter(float a1)
{
  if (*(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue) <= a1)
  {
    v8[0] = 0;
    v8[1] = 0xE000000000000000;
    sub_100573ED8(145);
    v9._object = 0x80000001005BB200;
    v9._countAndFlagsBits = 0xD000000000000042;
    sub_100572A98(v9);
    sub_1005730C8();
    v10._countAndFlagsBits = 3026478;
    v10._object = 0xE300000000000000;
    sub_100572A98(v10);
    sub_1005730C8();
    v11._countAndFlagsBits = 0xD000000000000048;
    v11._object = 0x80000001005BB250;
    sub_100572A98(v11);
    if (qword_1006EE9E0 != -1)
    {
      swift_once();
    }

    v2 = sub_10056DF88();
    sub_10000C49C(v2, qword_1006FE120);

    v3 = sub_10056DF68();
    v4 = sub_100573438();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v8[0] = v6;
      *v5 = 136446210;
      v7 = sub_10037A2AC(0, 0xE000000000000000, v8);

      *(v5 + 4) = v7;
      _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s", v5, 0xCu);
      sub_100010474(v6);
    }

    else
    {
    }
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue) = a1;
  }
}

void (*VerticalToggleSlider.minValue.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue);
  return sub_1004793D4;
}

void VerticalToggleSlider.maxValue.setter(float a1)
{
  if (*(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue) >= a1)
  {
    v8[0] = 0;
    v8[1] = 0xE000000000000000;
    sub_100573ED8(145);
    v9._object = 0x80000001005BB200;
    v9._countAndFlagsBits = 0xD000000000000042;
    sub_100572A98(v9);
    sub_1005730C8();
    v10._countAndFlagsBits = 3026478;
    v10._object = 0xE300000000000000;
    sub_100572A98(v10);
    sub_1005730C8();
    v11._countAndFlagsBits = 0xD000000000000048;
    v11._object = 0x80000001005BB250;
    sub_100572A98(v11);
    if (qword_1006EE9E0 != -1)
    {
      swift_once();
    }

    v2 = sub_10056DF88();
    sub_10000C49C(v2, qword_1006FE120);

    v3 = sub_10056DF68();
    v4 = sub_100573438();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v8[0] = v6;
      *v5 = 136446210;
      v7 = sub_10037A2AC(0, 0xE000000000000000, v8);

      *(v5 + 4) = v7;
      _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s", v5, 0xCu);
      sub_100010474(v6);
    }

    else
    {
    }
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue) = a1;
  }
}

void (*VerticalToggleSlider.maxValue.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue);
  return sub_10047966C;
}

void VerticalToggleSlider.valueRange.getter()
{
  if (*(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue) > *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue))
  {
    __break(1u);
  }
}

void VerticalToggleSlider.valueRange.setter(float a1, float a2)
{
  if (a1 >= a2)
  {
    v9[0] = 0;
    v9[1] = 0xE000000000000000;
    sub_100573ED8(164);
    v10._object = 0x80000001005BB200;
    v10._countAndFlagsBits = 0xD000000000000042;
    sub_100572A98(v10);
    sub_1005730C8();
    v11._countAndFlagsBits = 3026478;
    v11._object = 0xE300000000000000;
    sub_100572A98(v11);
    sub_1005730C8();
    v12._countAndFlagsBits = 0xD00000000000005BLL;
    v12._object = 0x80000001005BB2A0;
    sub_100572A98(v12);
    if (qword_1006EE9E0 != -1)
    {
      swift_once();
    }

    v3 = sub_10056DF88();
    sub_10000C49C(v3, qword_1006FE120);

    v4 = sub_10056DF68();
    v5 = sub_100573438();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v9[0] = v7;
      *v6 = 136446210;
      v8 = sub_10037A2AC(0, 0xE000000000000000, v9);

      *(v6 + 4) = v8;
      _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s", v6, 0xCu);
      sub_100010474(v7);
    }

    else
    {
    }
  }

  else
  {
    *(v2 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue) = a1;
    *(v2 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue) = a2;
  }
}

uint64_t (*VerticalToggleSlider.valueRange.modify(uint64_t (*result)()))()
{
  *result = v1;
  v2 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue);
  v3 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue);
  if (v2 > v3)
  {
    __break(1u);
  }

  else
  {
    *(result + 2) = v2;
    *(result + 3) = v3;
    return sub_100479948;
  }

  return result;
}

float VerticalToggleSlider.minLevelOffsetRatio.getter()
{
  v1 = v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_minLevelOffsetRatio;
  swift_beginAccess();
  return *v1;
}

void VerticalToggleSlider.minLevelOffsetRatio.setter(float a1)
{
  v3 = &v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_minLevelOffsetRatio];
  swift_beginAccess();
  v4 = *v3;
  *v3 = a1;
  if (v4 != a1)
  {
    sub_10047B2AC(0x100000000);
    v5 = sub_10047AE94();
    v6 = v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode];
    v7 = [v1 traitCollection];
    if (v6 == 2)
    {

      v8 = 0.0;
    }

    else if (v6)
    {

      v8 = 1.0;
    }

    else
    {
      v9 = v7;
      v10 = [v7 accessibilityContrast];

      v8 = 0.5;
      if (v10 == 1)
      {
        v8 = 1.0;
      }
    }

    [v5 setAlpha:v8];
  }
}

void (*VerticalToggleSlider.minLevelOffsetRatio.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_minLevelOffsetRatio;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  *(v4 + 40) = *v6;
  return sub_100479B58;
}

void sub_100479B58(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  if (a2)
  {
    VerticalToggleSlider.minLevelOffsetRatio.setter(v3);
  }

  else
  {
    v5 = v2[3];
    v4 = v2[4];
    v6 = *(v5 + v4);
    *(v5 + v4) = v3;
    if (v3 != v6)
    {
      v7 = v2[3];
      sub_10047B2AC(0x100000000);
      v8 = sub_10047AE94();
      v9 = v7[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode];
      v10 = [v7 traitCollection];
      if (v9 == 2)
      {

        v11 = 0.0;
      }

      else if (v9)
      {

        v11 = 1.0;
      }

      else
      {
        v12 = v10;
        v13 = [v10 accessibilityContrast];

        v11 = 0.5;
        if (v13 == 1)
        {
          v11 = 1.0;
        }
      }

      [v8 setAlpha:v11];
    }
  }

  free(v2);
}

uint64_t VerticalToggleSlider.interactionScaleFactor.getter()
{
  v1 = v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_interactionScaleFactor;
  swift_beginAccess();
  return *v1;
}

void VerticalToggleSlider.interactionScaleFactor.setter(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_interactionScaleFactor;
  swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
}

uint64_t VerticalToggleSlider.isTapToToggleEnabled.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isTapToToggleEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

void VerticalToggleSlider.isTapToToggleEnabled.setter(char a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isTapToToggleEnabled;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t VerticalToggleSlider.isVisuallyDisabled.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isVisuallyDisabled;
  swift_beginAccess();
  return *(v0 + v1);
}

void VerticalToggleSlider.isVisuallyDisabled.setter(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isVisuallyDisabled;
  swift_beginAccess();
  v5 = v1[v4];
  v1[v4] = a1;
  if (v5 != v3)
  {
    if (a1)
    {
      v6 = 1;
    }

    else
    {
      v6 = [v1 isEnabled] ^ 1;
    }

    v7 = *&v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView];
    if (v7)
    {
      v8 = 0.4;
      if (!v6)
      {
        v8 = 1.0;
      }

      [v7 setAlpha:v8];
    }

    v9 = sub_10047AE10();
    v10 = v9;
    v11 = 1.0;
    if (v6)
    {
      v11 = 0.5;
    }

    [v9 setAlpha:v11];
  }
}

void (*VerticalToggleSlider.isVisuallyDisabled.modify(uint64_t *a1))(id **a1, char a2, __n128 a3)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isVisuallyDisabled;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_10047A018;
}

void sub_10047A018(id **a1, char a2, __n128 a3)
{
  v3 = *a1;
  v5 = (*a1)[3];
  v4 = (*a1)[4];
  v6 = *(*a1 + 40);
  v7 = v4[v5];
  v4[v5] = v6;
  if ((a2 & 1) == 0)
  {
    if (((v6 ^ v7) & 1) == 0)
    {
      goto LABEL_15;
    }

    if ((v6 & 1) == 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v8 = 1;
    goto LABEL_8;
  }

  if (((v6 ^ v7) & 1) == 0)
  {
    goto LABEL_15;
  }

  if (v6)
  {
    goto LABEL_7;
  }

LABEL_4:
  v8 = [v3[3] isEnabled] ^ 1;
LABEL_8:
  v9 = *(v3[3] + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView);
  if (v9)
  {
    v10 = 0.4;
    if (!v8)
    {
      v10 = 1.0;
    }

    [v9 setAlpha:v10];
  }

  v11 = sub_10047AE10();
  v12 = v11;
  v13 = 1.0;
  if (v8)
  {
    v13 = 0.5;
  }

  [v11 setAlpha:v13];

LABEL_15:

  free(v3);
}

uint64_t VerticalToggleSlider.isContinuous.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isContinuous;
  swift_beginAccess();
  return *(v0 + v1);
}

void VerticalToggleSlider.isContinuous.setter(char a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isContinuous;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t VerticalToggleSlider.automaticallyDisablesOnMaxValue.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_automaticallyDisablesOnMaxValue;
  swift_beginAccess();
  return *(v0 + v1);
}

void VerticalToggleSlider.automaticallyDisablesOnMaxValue.setter(char a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_automaticallyDisablesOnMaxValue;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t VerticalToggleSlider.longPressMode.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_longPressMode;
  swift_beginAccess();
  return *(v0 + v1);
}

void VerticalToggleSlider.longPressMode.setter(unsigned __int8 a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_longPressMode;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  if (v4 != a1)
  {
    sub_10047BC84();
  }
}

void (*VerticalToggleSlider.longPressMode.modify(uint64_t *a1))(uint64_t a1, __n128 a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_longPressMode;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_10047A418;
}

void sub_10047A418(uint64_t a1, __n128 a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  v5 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v6 = *(v5 + v4);
  *(v5 + v4) = v3;
  if (v3 != v6)
  {
    sub_10047BC84();
  }

  free(v2);
}

uint64_t VerticalToggleSlider.growAnchorPoint.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_growAnchorPoint;
  swift_beginAccess();
  return *(v0 + v1);
}

void VerticalToggleSlider.growAnchorPoint.setter(char a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_growAnchorPoint;
  swift_beginAccess();
  v1[v3] = a1;
  v4 = sub_10047A7DC();
  v5 = v1[v3];
  v6 = [v1 traitCollection];
  *&v7 = sub_10047C65C(v6, v5).n128_u64[0];
  v9 = v8;

  [v4 setAnchorPoint:{v7, v9}];
  v10 = *&v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___growView];
  [v1 bounds];
  [v10 setFrame:?];
}

uint64_t (*VerticalToggleSlider.growAnchorPoint.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_growAnchorPoint;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_10047A638;
}

void sub_10047A638(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = v3[4];
    v6 = sub_10047A7DC();
    v7 = v4[v5];
    v8 = [v4 traitCollection];
    *&v9 = sub_10047C65C(v8, v7).n128_u64[0];
    v11 = v10;

    [v6 setAnchorPoint:{v9, v11}];
    v12 = *&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___growView];
    [v4 bounds];
    [v12 setFrame:?];
  }

  free(v3);
}

id sub_10047A728()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___stretchView;
  v2 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___stretchView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___stretchView];
  }

  else
  {
    [v0 bounds];
    v8 = [objc_allocWithZone(UIView) initWithFrame:{v4, v5, v6, v7}];
    v9 = *&v0[v1];
    *&v0[v1] = v8;
    v3 = v8;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

id sub_10047A7DC()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___growView;
  v2 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___growView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___growView);
  }

  else
  {
    v4 = sub_10047A728();
    [v4 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    v13 = [objc_allocWithZone(UIView) initWithFrame:{v6, v8, v10, v12}];
    v14 = *(v0 + v1);
    *(v0 + v1) = v13;
    v3 = v13;

    v2 = 0;
  }

  v15 = v2;
  return v3;
}

void sub_10047A898(float a1)
{
  v2 = *&v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValue];
  *&v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValue] = a1;
  if (v2 != a1)
  {
    v3 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode;
    v4 = v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode];
    if (v4 == 2 || (v4 & 1) == 0)
    {
      sub_10047B2AC(0x100000000);
      v10 = sub_10047AE94();
      v5 = v1[v3];
      v6 = [v1 traitCollection];
      if (v5 == 2)
      {

        v7 = 0.0;
      }

      else if (v5)
      {

        v7 = 1.0;
      }

      else
      {
        v8 = v6;
        v9 = [v6 accessibilityContrast];

        v7 = 0.5;
        if (v9 == 1)
        {
          v7 = 1.0;
        }
      }

      [v10 setAlpha:v7];
    }
  }
}

id sub_10047A9A4()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___feedbackGenerator;
  v2 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___feedbackGenerator);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___feedbackGenerator);
  }

  else
  {
    v4 = [objc_allocWithZone(_UIButtonFeedbackGenerator) initWithStyle:1];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_10047AA1C()
{
  v1 = [v0 traitCollection];
  v2 = [v1 accessibilityContrast];

  v3 = sub_10047AE10();
  v4 = [v3 contentView];

  v5 = [v4 layer];
  if (v2 != 1)
  {
    [v5 setCompositingFilter:kCAFilterPlusL];

    v11 = [*&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___visualEffectView] contentView];
    v12 = objc_opt_self();
    v13 = [v12 whiteColor];
    v14 = [v13 colorWithAlphaComponent:0.18];

    [v11 setBackgroundColor:v14];
    v15 = sub_10047AE94();
    v16 = [v12 whiteColor];
    [v15 setBackgroundColor:v16];
LABEL_8:

    sub_10047BA0C();
    return;
  }

  [v5 setCompositingFilter:0];

  v6 = v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode];
  v7 = [*&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___visualEffectView] contentView];
  if (v6 != 2)
  {
    v17 = objc_allocWithZone(UIColor);
    v20[4] = sub_10047D3EC;
    v20[5] = 0;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 1107296256;
    v20[2] = sub_1000376F0;
    v20[3] = &unk_1006A5FD0;
    v18 = _Block_copy(v20);
    v19 = [v17 initWithDynamicProvider:v18];
    _Block_release(v18);

    [v7 setBackgroundColor:v19];

    goto LABEL_7;
  }

  v8 = [v0 tintColor];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 colorWithAlphaComponent:0.2];

    [v7 setBackgroundColor:v10];
LABEL_7:
    v16 = sub_10047AE94();
    v15 = [v0 tintColor];
    [v16 setBackgroundColor:v15];
    goto LABEL_8;
  }

  __break(1u);
}

void sub_10047AD50()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isVisuallyDisabled;
  swift_beginAccess();
  if (v0[v1])
  {
    v2 = 1;
  }

  else
  {
    v2 = [v0 isEnabled] ^ 1;
  }

  v3 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView];
  if (v3)
  {
    v4 = 0.4;
    if (!v2)
    {
      v4 = 1.0;
    }

    [v3 setAlpha:v4];
  }

  v5 = sub_10047AE10();
  v6 = v5;
  v7 = 1.0;
  if (v2)
  {
    v7 = 0.5;
  }

  [v5 setAlpha:v7];
}

id sub_10047AE10()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___visualEffectView;
  v2 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___visualEffectView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___visualEffectView);
  }

  else
  {
    v4 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:*(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_blurEffect)];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_10047AE94()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___levelView;
  v2 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___levelView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___levelView);
  }

  else
  {
    v4 = sub_10047AE10();
    [v4 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    v13 = [objc_allocWithZone(UIView) initWithFrame:{v6, v8, v10, v12}];
    v14 = *(v0 + v1);
    *(v0 + v1) = v13;
    v3 = v13;

    v2 = 0;
  }

  v15 = v2;
  return v3;
}

id sub_10047AF50()
{
  v1 = sub_10047A7DC();
  [v1 setUserInteractionEnabled:0];

  v2 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___growView;
  [*&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___growView] setAutoresizingMask:18];
  v3 = *&v0[v2];
  v4 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_growAnchorPoint;
  swift_beginAccess();
  v5 = v0[v4];
  v6 = v3;
  v7 = [v0 traitCollection];
  *&v8 = sub_10047C65C(v7, v5).n128_u64[0];
  v10 = v9;

  [v6 setAnchorPoint:{v8, v10}];
  v11 = *&v0[v2];
  [v0 bounds];
  [v11 setFrame:?];

  [v0 addSubview:*&v0[v2]];
  v12 = sub_10047A728();
  [v12 setClipsToBounds:1];

  v13 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___stretchView;
  [*&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___stretchView] setUserInteractionEnabled:0];
  [*&v0[v13] setAutoresizingMask:18];
  v14 = *&v0[v2];
  v15 = *&v0[v13];
  [v14 bounds];
  [v15 setFrame:?];

  return [*&v0[v2] addSubview:*&v0[v13]];
}

void sub_10047B110()
{
  v1 = sub_10047AE94();
  [v1 setUserInteractionEnabled:0];

  v2 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___levelView;
  v3 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___levelView];
  v4 = sub_100572898();
  [v3 setAccessibilityIdentifier:v4];

  [*&v0[v2] setAutoresizingMask:26];
  v5 = sub_10047AE10();
  v6 = [v5 contentView];

  [v6 addSubview:*&v0[v2]];
  sub_10047B2AC(0x100000000);
  v7 = v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode];
  v12 = *&v0[v2];
  v8 = [v0 traitCollection];
  if (v7 == 2)
  {

    v9 = 0.0;
  }

  else if (v7)
  {

    v9 = 1.0;
  }

  else
  {
    v10 = v8;
    v11 = [v8 accessibilityContrast];

    v9 = 0.5;
    if (v11 == 1)
    {
      v9 = 1.0;
    }
  }

  [v12 setAlpha:v9];
}

void sub_10047B2AC(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode) == 2)
  {
    v31 = sub_10047AE94();
    v2 = sub_10047AE10();
    [v2 bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;

    [v31 setFrame:{v4, v6, v8, v10}];
  }

  else
  {
    v12 = sub_10047AE10();
    [v12 bounds];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;

    v33.origin.x = v14;
    v33.origin.y = v16;
    v33.size.width = v18;
    v33.size.height = v20;
    Height = CGRectGetHeight(v33);
    v22 = (v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_minLevelOffsetRatio);
    swift_beginAccess();
    v23 = Height * *v22;
    v24 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___visualEffectView;
    [*(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___visualEffectView) bounds];
    v25 = CGRectGetHeight(v34);
    if ((a1 & 0x100000000) != 0)
    {
      v26 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValue);
    }

    else
    {
      v26 = *&a1;
    }

    v27 = v23 + (v25 - v23) * v26;
    [*(v1 + v24) bounds];
    v28 = CGRectGetHeight(v35) - v27;
    if (v28 < 0.0)
    {
      v29 = 0.0;
    }

    else
    {
      v29 = v28;
    }

    v30 = sub_10047AE94();
    [*(v1 + v24) bounds];
    [v30 setFrame:{0.0, v29, CGRectGetWidth(v36), v27}];
  }
}

void sub_10047B488()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageDefinition];
  swift_beginAccess();
  v3 = *(v2 + 5);
  v56 = *(v2 + 4);
  v57 = v3;
  v58 = v2[96];
  v4 = *(v2 + 1);
  v52 = *v2;
  v53 = v4;
  v5 = *(v2 + 3);
  v54 = *(v2 + 2);
  v55 = v5;
  v59[0] = v52;
  v59[1] = v4;
  v59[2] = v54;
  v59[3] = v5;
  v59[4] = v56;
  v59[5] = v3;
  v60 = v58;
  if (*(&v52 + 1))
  {
    v6 = *(v2 + 5);
    v50[4] = *(v2 + 4);
    v50[5] = v6;
    v51 = v2[96];
    v7 = *(v2 + 1);
    v50[0] = *v2;
    v50[1] = v7;
    v8 = *(v2 + 3);
    v50[2] = *(v2 + 2);
    v50[3] = v8;
    v9 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView;
    v10 = *&v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView];
    if (v10)
    {
      v11 = v10;
      sub_1003A28BC(&v52, v48);
      CoreAnimationPackageView.reset()();
    }

    else
    {
      v12 = objc_allocWithZone(type metadata accessor for CoreAnimationPackageView());
      v48[4] = v56;
      v48[5] = v57;
      v49 = v58;
      v48[0] = v52;
      v48[1] = v53;
      v48[2] = v54;
      v48[3] = v55;
      sub_10037012C(v48, v47);
      sub_10037012C(v59, v47);
      v13 = CoreAnimationPackageView.init(definition:)(v50);
      v14 = UIView.forAutolayout.getter();

      v11 = v14;
      [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
      v15 = *&v1[v9];
      *&v1[v9] = v11;
      if (v15)
      {
        v16 = v11;
        v17 = v15;
        v18 = sub_100573A58();

        if ((v18 & 1) == 0)
        {
          [v17 removeFromSuperview];
        }
      }

      v19 = sub_10047AE10();
      v20 = [v19 contentView];

      [v20 addSubview:v11];
      sub_100009DCC(&qword_1006F3B50, &qword_100599780);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_100582510;
      v22 = [v11 topAnchor];
      v23 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___visualEffectView;
      v24 = [*&v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___visualEffectView] topAnchor];
      v25 = [v22 constraintGreaterThanOrEqualToAnchor:v24];

      *(v21 + 32) = v25;
      v26 = [v11 leadingAnchor];
      v27 = [*&v1[v23] leadingAnchor];
      v28 = [v26 constraintEqualToAnchor:v27];

      *(v21 + 40) = v28;
      v29 = [v11 trailingAnchor];
      v30 = [*&v1[v23] trailingAnchor];
      v31 = [v29 constraintEqualToAnchor:v30];

      *(v21 + 48) = v31;
      v32 = [v11 bottomAnchor];
      v33 = [*&v1[v23] bottomAnchor];
      v34 = [v32 constraintEqualToAnchor:v33];

      *(v21 + 56) = v34;
      v35 = [v11 heightAnchor];
      v36 = [v11 widthAnchor];

      v37 = [v35 constraintEqualToAnchor:v36];
      *(v21 + 64) = v37;
      Array<A>.activate()(v21);
    }

    v38 = &v11[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateName];
    if (v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode] == 2)
    {
      swift_beginAccess();
      v39 = *v38;
      v40 = v38[1];
      *v38 = xmmword_100596FF0;
      sub_100372434(v39, v40);
    }

    else
    {
      swift_beginAccess();
      v41 = *v38;
      v42 = v38[1];
      *v38 = xmmword_100596FE0;
      v43 = v11;
      sub_100372434(v41, v42);

      sub_1000D3B98(0, &qword_1006F3420, OS_dispatch_queue_ptr);
      v44 = sub_1005735E8();
      v45 = swift_allocObject();
      *(v45 + 16) = v1;
      *(v45 + 24) = v43;
      v46 = v1;
      OS_dispatch_queue.asyncAfter(_:block:)(sub_100481454, v45, 1.0);
    }

    sub_10047BA0C();
    sub_10001036C(&v52, &qword_1006F0328, &qword_10059A540);
  }

  else
  {
    v11 = *&v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView];
    *&v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView] = 0;
    if (!v11)
    {
      return;
    }

    [v11 removeFromSuperview];
  }
}

void sub_10047BA0C()
{
  v1 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView];
  if (v1)
  {
    v2 = v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode];
    v3 = v1;
    v19 = v3;
    if (v2 == 2)
    {
      v4 = [v3 layer];
      [v4 setCompositingFilter:0];

      v5 = [v0 traitCollection];
      v6 = [v5 accessibilityContrast];

      if (v6 != 1)
      {
        v12 = OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_foregroundColor;
        swift_beginAccess();
        v11 = v19;
        v13 = *&v19[v12];
        *&v19[v12] = 0;
        if (v13)
        {
          sub_100373464();

          return;
        }

        goto LABEL_15;
      }

      CoreAnimationPackageView.foregroundColor.setter([v0 tintColor]);
    }

    else
    {
      v7 = [v0 traitCollection];
      v8 = [v7 accessibilityContrast];

      if (v8 != 1)
      {
        v14 = OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_foregroundColor;
        swift_beginAccess();
        v15 = v19;
        v16 = *&v19[v14];
        *&v19[v14] = 0;
        if (v16)
        {
          sub_100373464();

          v15 = v19;
        }

        v17 = [v15 layer];
        v18 = kCAFilterDestOut;
        [v17 setCompositingFilter:v18];

        v11 = v20;
        goto LABEL_15;
      }

      v9 = [objc_opt_self() whiteColor];
      CoreAnimationPackageView.foregroundColor.setter(v9);
      v10 = [v19 layer];
      [v10 setCompositingFilter:0];
    }

    v11 = v19;

LABEL_15:
  }
}

void sub_10047BC84()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_longPressMode;
  swift_beginAccess();
  v2 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_longPressGestureRecognizer;
  v3 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_longPressGestureRecognizer];
  if (v0[v1] - 1 > 1)
  {
    if (!v3)
    {
      return;
    }

    [v0 removeGestureRecognizer:?];
    v4 = 0;
  }

  else
  {
    if (v3)
    {
      return;
    }

    v4 = [objc_allocWithZone(UILongPressGestureRecognizer) initWithTarget:v0 action:"longPressed:"];
    [v4 setMinimumPressDuration:0.25];
    [v0 addGestureRecognizer:v4];
  }

  v5 = *&v0[v2];
  *&v0[v2] = v4;
}

void sub_10047BD64(void *a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_longPressMode;
  swift_beginAccess();
  v4 = v1[v3];
  if (v4 == 2 || v4 == 1 && v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode] != 2)
  {
    v5 = [a1 state];
    if ((v5 - 3) >= 3)
    {
      if (v5 == 2)
      {
        v7 = sub_10047A7DC();
        [a1 locationInView:v7];
        v9 = v8;
        v11 = v10;

        sub_10047C104(v9, v11);
      }

      else if (v5 == 1)
      {
        v6 = v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode];
        v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode] = 1;
        sub_10047D49C(v6);
        [v1 sendActionsForControlEvents:0x10000];
        [v1 sendActionsForControlEvents:4096];
        *&v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_initialValue] = *&v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValue];
      }
    }

    else
    {
      sub_10047C000();
    }
  }
}

void sub_10047BEA0(void *a1)
{
  v2 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode;
  if (v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode] != 2)
  {
    v4 = [a1 state];
    if ((v4 - 3) >= 3)
    {
      if (v4 == 2)
      {
        v12 = sub_10047A7DC();
        [a1 locationInView:v12];
        v14 = v13;
        v16 = v15;

        sub_10047C104(v14, v16);
      }

      else if (v4 == 1)
      {
        [v1 sendActionsForControlEvents:0x10000];
        v5 = v1[v2];
        v1[v2] = 1;
        sub_10047D49C(v5);
        v6 = sub_10047A7DC();
        [a1 locationInView:v6];
        v8 = v7;
        v10 = v9;

        v11 = &v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_initialDraggingLocation];
        *v11 = v8;
        *(v11 + 1) = v10;
        v11[16] = 0;
        *&v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_initialValue] = *&v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValue];
      }
    }

    else
    {

      sub_10047C000();
    }
  }
}

id sub_10047C000()
{
  v1 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue];
  v2 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue];
  if (v1 > v2)
  {
    __break(1u);
  }

  else
  {
    v3 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValue];
    v4 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange];
    v5 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange + 4];
    if (v4 > v3)
    {
      v3 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange];
    }

    if (v5 < v3)
    {
      v3 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange + 4];
    }

    if (v1 + ((v2 - v1) * ((v3 - v4) / (v5 - v4)))) == v2 && (v6 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_automaticallyDisablesOnMaxValue, swift_beginAccess(), (v0[v6]))
    {
      v7 = 2;
    }

    else
    {
      v7 = 0;
    }

    v8 = v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode];
    v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode] = v7;
    sub_10047D49C(v8);
    v9 = &v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_initialDraggingLocation];
    *v9 = 0;
    *(v9 + 1) = 0;
    v9[16] = 1;
    return [v0 sendActionsForControlEvents:0x40000];
  }

  return result;
}

void sub_10047C104(double a1, double a2)
{
  v4 = &v2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_initialDraggingLocation];
  if (v2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_initialDraggingLocation + 16])
  {
    *v4 = a1;
    v4[1] = a2;
    v5 = a2;
    *(v4 + 16) = 0;
  }

  else
  {
    v5 = v4[1];
  }

  v6 = sub_10047A7DC();
  [v6 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v39.origin.x = v8;
  v39.origin.y = v10;
  v39.size.width = v12;
  v39.size.height = v14;
  Height = CGRectGetHeight(v39);
  v16 = &v2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_minLevelOffsetRatio];
  swift_beginAccess();
  v17 = Height * (1.0 - *v16);
  v18 = (v5 - a2) * (1.0 / v17) + *&v2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_initialValue];
  v19 = *&v2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange];
  v20 = v18;
  if (v19 <= v20)
  {
    v19 = v18;
  }

  if (*&v2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange + 4] < v19)
  {
    v19 = *&v2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange + 4];
  }

  sub_10047A898(v19);
  if (v17 < 0.0)
  {
    __break(1u);
  }

  else
  {
    v25 = v17 * v18;
    if (v17 * v18 < 0.0 || v25 > v17)
    {
      if (v25 >= 0.0)
      {
        v27 = v25 + 0.0 - v17;
      }

      else
      {
        v27 = v25 + 0.0;
      }

      v22.n128_f64[0] = fabs(v27);
      v23.n128_u64[1] = 0xBF8B4E81B4E81B4FLL;
      v28 = vmulq_n_f64(xmmword_100597000, v22.n128_f64[0]);
      v22.n128_f64[1] = v27;
      v21 = vdupq_n_s64(0x3F847AE147AE147BuLL);
      v29 = vmulq_f64(v22, v21);
    }

    else
    {
      v28 = xmmword_1006F6280;
      v29 = *&qword_1006F6290;
    }

    v30 = &v2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange];
    v21.n128_u64[0] = *&v2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange];
    v22.n128_u64[0] = *&v2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange + 8];
    v23.n128_u64[0] = *&v2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange + 16];
    v24.n128_u64[0] = *&v2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange + 24];
    *v30 = v28;
    v30[1] = v29;
    sub_10047FFC4(v21, v22, v23, v24);
    LOBYTE(v38) = 1;
    sub_10047B2AC(0x100000000);
    v31 = sub_10047AE94();
    v32 = v2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode];
    v33 = [v2 traitCollection];
    if (v32 == 2)
    {

      v34 = 0.0;
    }

    else if (v32)
    {

      v34 = 1.0;
    }

    else
    {
      v35 = v33;
      v36 = [v33 accessibilityContrast];

      v34 = 0.5;
      if (v36 == 1)
      {
        v34 = 1.0;
      }
    }

    [v31 setAlpha:v34];

    v37 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isContinuous;
    swift_beginAccess();
    if (v2[v37])
    {
      [v2 sendActionsForControlEvents:4096];
    }
  }
}

void sub_10047C390(uint64_t *a1)
{
  v3 = v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageDefinition;
  swift_beginAccess();
  v4 = *(v3 + 48);
  v5 = *(v3 + 80);
  v61 = *(v3 + 64);
  v62 = v5;
  v6 = *(v3 + 16);
  v58[0] = *v3;
  v58[1] = v6;
  v7 = *(v3 + 16);
  v8 = *(v3 + 48);
  v59 = *(v3 + 32);
  v60 = v8;
  v52 = v4;
  v53 = v61;
  v54 = *(v3 + 80);
  v63 = *(v3 + 96);
  v9 = v58[0];
  v55 = *(v3 + 96);
  v50 = v7;
  v51 = v59;
  v11 = *a1;
  v10 = a1[1];
  if (*(&v58[0] + 1))
  {
    if (v10)
    {
      *&v26 = *a1;
      *(&v26 + 1) = v10;
      v12 = *(a1 + 4);
      v29 = *(a1 + 3);
      v30 = v12;
      v31 = *(a1 + 5);
      v32 = *(a1 + 96);
      v13 = *(a1 + 2);
      v27 = *(a1 + 1);
      v28 = v13;
      v41 = v32;
      v39 = v12;
      v40 = v31;
      v37 = v13;
      v38 = v29;
      v35 = v26;
      v36 = v27;
      v14 = *(v3 + 64);
      v56[3] = *(v3 + 48);
      v56[4] = v14;
      v56[5] = *(v3 + 80);
      v57 = *(v3 + 96);
      v15 = *(v3 + 32);
      v56[1] = *(v3 + 16);
      v56[2] = v15;
      v56[0] = v58[0];
      sub_1003A28BC(v58, v33);
      sub_1003A28BC(v58, v33);
      sub_1003A28BC(a1, v33);
      v16 = _s11MusicCoreUI19CAPackageDefinitionV23__derived_struct_equalsySbAC_ACtFZ_0(v56, &v35);
      sub_10001036C(v58, &qword_1006F0328, &qword_10059A540);
      sub_10001036C(&v26, &qword_1006F0328, &qword_10059A540);
      v33[0] = v9;
      v33[4] = v53;
      v33[5] = v54;
      v34 = v55;
      v33[1] = v50;
      v33[2] = v51;
      v33[3] = v52;
      sub_10001036C(v33, &qword_1006F0328, &qword_10059A540);
      if (v16)
      {
        return;
      }

      goto LABEL_7;
    }
  }

  else if (!v10)
  {
    v35 = *&v58[0];
    v24 = *(v3 + 64);
    v38 = *(v3 + 48);
    v39 = v24;
    v40 = *(v3 + 80);
    v41 = *(v3 + 96);
    v25 = *(v3 + 32);
    v36 = *(v3 + 16);
    v37 = v25;
    sub_1003A28BC(v58, v56);
    sub_1003A28BC(a1, v56);
    sub_10001036C(&v35, &qword_1006F0328, &qword_10059A540);
    return;
  }

  v35 = v58[0];
  v17 = *(v3 + 64);
  v38 = *(v3 + 48);
  v39 = v17;
  v40 = *(v3 + 80);
  v41 = *(v3 + 96);
  v18 = *(v3 + 32);
  v36 = *(v3 + 16);
  v37 = v18;
  v42 = v11;
  v43 = v10;
  v19 = *(a1 + 2);
  v44 = *(a1 + 1);
  v45 = v19;
  v20 = *(a1 + 3);
  v21 = *(a1 + 4);
  v22 = *(a1 + 5);
  v49 = *(a1 + 96);
  v48 = v22;
  v47 = v21;
  v46 = v20;
  sub_1003A28BC(v58, v56);
  sub_1003A28BC(a1, v56);
  sub_10001036C(&v35, &qword_1006F6408, &qword_1005A3658);
LABEL_7:
  v23 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView);
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView) = 0;
  if (v23)
  {
    [v23 removeFromSuperview];
  }

  sub_10047B488();
}

__n128 sub_10047C65C(id a1, uint64_t a2)
{
  v3 = a1;
  if (a1)
  {
    a1 = [a1 layoutDirection];
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 != 2)
      {
        if (v3 && a1 + 1 >= 2)
        {
          if (a1 != 1)
          {
            goto LABEL_42;
          }

LABEL_34:
          v4 = CGPoint.centerRight.unsafeMutableAddressor();
          goto LABEL_41;
        }

LABEL_40:
        v4 = CGPoint.centerLeft.unsafeMutableAddressor();
        goto LABEL_41;
      }

      if (!v3 || a1 + 1 < 2)
      {
LABEL_17:
        v4 = CGPoint.topRight.unsafeMutableAddressor();
        goto LABEL_41;
      }

      if (a1 != 1)
      {
        goto LABEL_42;
      }
    }

    else
    {
      if (a2)
      {
        v4 = CGPoint.topCenter.unsafeMutableAddressor();
        goto LABEL_41;
      }

      if (v3 && a1 + 1 >= 2)
      {
        if (a1 != 1)
        {
          goto LABEL_42;
        }

        goto LABEL_17;
      }
    }

    v4 = CGPoint.topLeft.unsafeMutableAddressor();
    goto LABEL_41;
  }

  if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v4 = CGPoint.center.unsafeMutableAddressor();
      goto LABEL_41;
    }

    if (!v3 || a1 + 1 < 2)
    {
      goto LABEL_34;
    }

    if (a1 != 1)
    {
      goto LABEL_42;
    }

    goto LABEL_40;
  }

  if (a2 == 6)
  {
    if (!v3 || a1 + 1 < 2)
    {
      goto LABEL_38;
    }

    if (a1 == 1)
    {
      goto LABEL_31;
    }
  }

  else
  {
    if (a2 == 7)
    {
      v4 = CGPoint.bottomCenter.unsafeMutableAddressor();
LABEL_41:
      v5 = v4;
      swift_beginAccess();
      return *v5;
    }

    if (!v3 || a1 + 1 < 2)
    {
LABEL_31:
      v4 = CGPoint.bottomRight.unsafeMutableAddressor();
      goto LABEL_41;
    }

    if (a1 == 1)
    {
LABEL_38:
      v4 = CGPoint.bottomLeft.unsafeMutableAddressor();
      goto LABEL_41;
    }
  }

LABEL_42:
  result.n128_u64[0] = sub_10047C65C(0, a2).n128_u64[0];
  result.n128_u64[1] = v7;
  return result;
}

char *VerticalToggleSlider.init(frame:)(double a1, double a2, double a3, double a4)
{
  swift_getObjectType();
  sub_100009DCC(&qword_1006F5C30, &qword_100598A70);
  __chkstk_darwin();
  v10 = &v42 - v9;
  v11 = &v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageDefinition];
  *v11 = 0u;
  *(v11 + 1) = 0u;
  *(v11 + 2) = 0u;
  *(v11 + 3) = 0u;
  *(v11 + 4) = 0u;
  *(v11 + 5) = 0u;
  v11[96] = 0;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_minLevelOffsetRatio] = 1040402485;
  v12 = &v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_interactionScaleFactor];
  *v12 = 0;
  v12[8] = 1;
  v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isTapToToggleEnabled] = 1;
  v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isVisuallyDisabled] = 0;
  v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isContinuous] = 1;
  v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_automaticallyDisablesOnMaxValue] = 1;
  v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_longPressMode] = 1;
  v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_growAnchorPoint] = 8;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___stretchView] = 0;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___growView] = 0;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange] = 0x3F80000000000000;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValue] = 1065353216;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue] = 0;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue] = 1065353216;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___feedbackGenerator] = 0;
  v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode] = 2;
  v13 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_blurEffect;
  *&v4[v13] = [objc_opt_self() effectWithBlurRadius:10.0];
  *&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___visualEffectView] = 0;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView] = 0;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___levelView] = 0;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_sceneActivationObserver] = 0;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_longPressGestureRecognizer] = 0;
  v14 = &v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_initialDraggingLocation];
  *v14 = 0;
  *(v14 + 1) = 0;
  v14[16] = 1;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_initialValue] = 0;
  v15 = &v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange];
  v16 = *&qword_1006F6290;
  *v15 = xmmword_1006F6280;
  v15[1] = v16;
  v17 = &v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_stretchTransform];
  *v17 = 0x3FF0000000000000;
  v17[1] = 0;
  v17[2] = 0;
  v17[3] = 0x3FF0000000000000;
  v17[4] = 0;
  v17[5] = 0;
  v18 = &v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_growTransform];
  *v18 = 0x3FF0000000000000;
  v18[1] = 0;
  v18[2] = 0;
  v18[3] = 0x3FF0000000000000;
  v19 = type metadata accessor for VerticalToggleSlider();
  v18[4] = 0;
  v18[5] = 0;
  v43.receiver = v4;
  v43.super_class = v19;
  v20 = objc_msgSendSuper2(&v43, "initWithFrame:", a1, a2, a3, a4);
  [v20 setDeliversTouchesForGesturesToSuperview:0];
  sub_1000D3B98(0, &qword_1006EFB60, UIAction_ptr);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = sub_100573A88();
  [v20 addAction:v21 forControlEvents:64];

  v22 = [objc_allocWithZone(UIPanGestureRecognizer) initWithTarget:v20 action:"dragged:"];
  [v20 addGestureRecognizer:v22];

  sub_10047BC84();
  [v20 setClipsToBounds:0];
  sub_10047AF50();
  v23 = sub_10047AE10();
  [v23 setUserInteractionEnabled:0];

  v24 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___visualEffectView;
  [*&v20[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___visualEffectView] setClipsToBounds:0];
  [*&v20[v24] setAutoresizingMask:18];
  v25 = *&v20[v24];
  v26 = sub_10047A728();
  [v26 bounds];
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;

  [v25 setFrame:{v28, v30, v32, v34}];
  v35 = [*&v20[v24] contentView];
  v36 = [v35 layer];

  [v36 setCompositingFilter:kCAFilterPlusL];
  [*&v20[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___stretchView] addSubview:*&v20[v24]];
  sub_10047B110();
  sub_10047AA1C();
  sub_10047B488();
  v37 = sub_10047A728();
  sub_100573988();
  v38 = sub_100573998();
  (*(*(v38 - 8) + 56))(v10, 0, 1, v38);
  sub_1005739A8();

  sub_100009DCC(qword_1006F1BE0, &unk_1005A1D40);
  v39 = swift_allocObject();
  v42 = xmmword_10057B510;
  *(v39 + 16) = xmmword_10057B510;
  *(v39 + 32) = sub_10056E298();
  *(v39 + 40) = &protocol witness table for UITraitAccessibilityContrast;
  sub_1005739D8();
  swift_unknownObjectRelease();

  v40 = swift_allocObject();
  *(v40 + 16) = v42;
  *(v40 + 32) = sub_10056E118();
  *(v40 + 40) = &protocol witness table for UITraitLayoutDirection;
  sub_1005739D8();

  swift_unknownObjectRelease();

  return v20;
}

void VerticalToggleSlider.isEnabled.setter(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = type metadata accessor for VerticalToggleSlider();
  v14.receiver = v2;
  v14.super_class = v4;
  v5 = objc_msgSendSuper2(&v14, "isEnabled");
  v13.receiver = v2;
  v13.super_class = v4;
  objc_msgSendSuper2(&v13, "setEnabled:", v3 & 1);
  if (v5 != [v2 isEnabled])
  {
    v6 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isVisuallyDisabled;
    swift_beginAccess();
    if (v2[v6])
    {
      v7 = 1;
    }

    else
    {
      v7 = [v2 isEnabled] ^ 1;
    }

    v8 = *&v2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView];
    if (v8)
    {
      v9 = 0.4;
      if (!v7)
      {
        v9 = 1.0;
      }

      [v8 setAlpha:v9];
    }

    v10 = sub_10047AE10();
    v11 = v10;
    v12 = 1.0;
    if (v7)
    {
      v12 = 0.5;
    }

    [v10 setAlpha:v12];
  }
}

Swift::Void __swiftcall VerticalToggleSlider.layoutSubviews()()
{
  sub_100009DCC(&qword_1006F5C30, &qword_100598A70);
  __chkstk_darwin();
  v2 = &v6 - v1;
  v3 = type metadata accessor for VerticalToggleSlider();
  v6.receiver = v0;
  v6.super_class = v3;
  objc_msgSendSuper2(&v6, "layoutSubviews");
  v4 = sub_10047A728();
  sub_100573988();
  v5 = sub_100573998();
  (*(*(v5 - 8) + 56))(v2, 0, 1, v5);
  sub_1005739A8();
}

Swift::Void __swiftcall VerticalToggleSlider.tintColorDidChange()()
{
  v1.receiver = v0;
  v1.super_class = type metadata accessor for VerticalToggleSlider();
  objc_msgSendSuper2(&v1, "tintColorDidChange");
  sub_10047AA1C();
}

BOOL VerticalToggleSlider.point(inside:with:)(CGFloat a1, CGFloat a2)
{
  [v2 bounds];
  v8 = CGRectInset(v7, -14.0, -14.0);
  v6.x = a1;
  v6.y = a2;
  return CGRectContainsPoint(v8, v6);
}

id sub_10047D3EC(void *a1)
{
  v2 = [a1 userInterfaceStyle] == 2;
  v3 = [objc_opt_self() tintColor];
  v4 = [v3 resolvedColorWithTraitCollection:a1];

  v5 = [v4 colorWithAlphaComponent:dbl_100597010[v2]];
  return v5;
}

void sub_10047D49C(int a1)
{
  v2 = v1;
  sub_100009DCC(&qword_1006F5C30, &qword_100598A70);
  __chkstk_darwin();
  v5 = &v159[-v4];
  v6 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode;
  v7 = v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode];
  if (v7 == 2)
  {
    if (a1 == 2)
    {
      return;
    }
  }

  else if (a1 == 2)
  {
    if (v7)
    {
      sub_10047A898(1.0);
    }
  }

  else if (((v7 ^ a1) & 1) == 0)
  {
    return;
  }

  v8 = sub_10047A9A4();
  [v8 userInteractionStarted];

  v9 = objc_opt_self();
  if ([v9 areAnimationsEnabled])
  {
    v10 = v1[v6];
    if (a1 == 2)
    {
      if (v10 == 2)
      {
        return;
      }

      v11 = swift_allocObject();
      *(v11 + 16) = v1;
      *(v11 + 24) = v10 & 1;
      if (v10)
      {
        v12 = qword_1006EED60;
        v13 = v1;
        if (v12 != -1)
        {
          swift_once();
        }

        v14 = qword_1006F62D0;
        [qword_1006F62D0 settlingDuration];
        v16 = v15;
        [v14 mass];
        v18 = v17;
        [v14 stiffness];
        v20 = v19;
        [v14 damping];
        v22 = v21;
        *&aBlock.tx = sub_100481560;
        *&aBlock.ty = v11;
        *&aBlock.a = _NSConcreteStackBlock;
        *&aBlock.b = 1107296256;
        *&aBlock.c = sub_10007885C;
        *&aBlock.d = &unk_1006A6368;
        v23 = _Block_copy(&aBlock);

        [v9 _animateUsingSpringWithDuration:6 delay:v23 options:0 mass:v16 stiffness:0.0 damping:v18 initialVelocity:v20 animations:v22 completion:0.0];
        _Block_release(v23);
        if (qword_1006EED68 != -1)
        {
          swift_once();
        }

        v24 = qword_1006F62D8;
        v25 = swift_allocObject();
        *(v25 + 16) = v13;
        v26 = v13;
        [v24 settlingDuration];
        v28 = v27;
        [v24 mass];
        v30 = v29;
        [v24 stiffness];
        v32 = v31;
        [v24 damping];
        v34 = v33;
        *&aBlock.tx = sub_10048157C;
        *&aBlock.ty = v25;
        *&aBlock.a = _NSConcreteStackBlock;
        *&aBlock.b = 1107296256;
        *&aBlock.c = sub_10007885C;
        *&aBlock.d = &unk_1006A63B8;
        v35 = _Block_copy(&aBlock);

        [v9 _animateUsingSpringWithDuration:6 delay:v35 options:0 mass:v28 stiffness:0.0 damping:v30 initialVelocity:v32 animations:v34 completion:0.0];
        _Block_release(v35);
      }

      else
      {
        v97 = qword_1006EED40;
        v98 = v1;
        if (v97 != -1)
        {
          swift_once();
        }

        v99 = qword_1006F62B0;
        [qword_1006F62B0 settlingDuration];
        v101 = v100;
        [v99 mass];
        v103 = v102;
        [v99 stiffness];
        v105 = v104;
        [v99 damping];
        v107 = v106;
        *&aBlock.tx = sub_100481560;
        *&aBlock.ty = v11;
        *&aBlock.a = _NSConcreteStackBlock;
        *&aBlock.b = 1107296256;
        *&aBlock.c = sub_10007885C;
        *&aBlock.d = &unk_1006A62C8;
        v108 = _Block_copy(&aBlock);

        [v9 _animateUsingSpringWithDuration:6 delay:v108 options:0 mass:v101 stiffness:0.2 damping:v103 initialVelocity:v105 animations:v107 completion:0.0];
        _Block_release(v108);
        if (qword_1006EED38 != -1)
        {
          swift_once();
        }

        v109 = qword_1006F62A8;
        v110 = swift_allocObject();
        *(v110 + 16) = v98;
        v111 = v98;
        [v109 settlingDuration];
        v113 = v112;
        [v109 mass];
        v115 = v114;
        [v109 stiffness];
        v117 = v116;
        [v109 damping];
        v119 = v118;
        *&aBlock.tx = sub_10048156C;
        *&aBlock.ty = v110;
        *&aBlock.a = _NSConcreteStackBlock;
        *&aBlock.b = 1107296256;
        *&aBlock.c = sub_10007885C;
        *&aBlock.d = &unk_1006A6318;
        v120 = _Block_copy(&aBlock);

        [v9 _animateUsingSpringWithDuration:6 delay:v120 options:0 mass:v113 stiffness:0.0 damping:v115 initialVelocity:v117 animations:v119 completion:0.0];
        _Block_release(v120);

        sub_1000D3B98(0, &qword_1006F3420, OS_dispatch_queue_ptr);
        v121 = sub_1005735E8();
        v122 = swift_allocObject();
        *(v122 + 16) = v111;
        v123 = v111;
        OS_dispatch_queue.asyncAfter(_:block:)(sub_100481574, v122, 0.3);
      }

LABEL_65:

      return;
    }

    if (v10 != 2)
    {
      if (((a1 ^ v10) & 1) == 0)
      {
        return;
      }

      v73 = swift_allocObject();
      *(v73 + 16) = v2;
      *(v73 + 24) = v10 & 1;
      v74 = swift_allocObject();
      *(v74 + 16) = v2;
      *(v74 + 24) = v10 & 1;
      if (v10)
      {
        v75 = qword_1006EED60;
        v76 = v2;
        if (v75 != -1)
        {
          swift_once();
        }

        v77 = qword_1006F62D0;
        [qword_1006F62D0 settlingDuration];
        v79 = v78;
        [v77 mass];
        v81 = v80;
        [v77 stiffness];
        v83 = v82;
        [v77 damping];
        v85 = v84;
        *&aBlock.tx = sub_100481494;
        *&aBlock.ty = v73;
        *&aBlock.a = _NSConcreteStackBlock;
        *&aBlock.b = 1107296256;
        *&aBlock.c = sub_10007885C;
        *&aBlock.d = &unk_1006A60E8;
        v86 = _Block_copy(&aBlock);

        [v9 _animateUsingSpringWithDuration:6 delay:v86 options:0 mass:v79 stiffness:0.0 damping:v81 initialVelocity:v83 animations:v85 completion:0.0];
        _Block_release(v86);
        if (qword_1006EED68 != -1)
        {
          swift_once();
        }

        v87 = qword_1006F62D8;
        [qword_1006F62D8 settlingDuration];
        v89 = v88;
        [v87 mass];
        v91 = v90;
        [v87 stiffness];
        v93 = v92;
        [v87 damping];
        v95 = v94;
        *&aBlock.tx = sub_1004814A0;
        *&aBlock.ty = v74;
        *&aBlock.a = _NSConcreteStackBlock;
        *&aBlock.b = 1107296256;
        v96 = &unk_1006A6110;
      }

      else
      {
        v138 = qword_1006EED70;
        v139 = v2;
        if (v138 != -1)
        {
          swift_once();
        }

        v140 = qword_1006F62E0;
        v141 = swift_allocObject();
        *(v141 + 16) = v139;
        v142 = v139;
        [v140 settlingDuration];
        v144 = v143;
        [v140 mass];
        v146 = v145;
        [v140 stiffness];
        v148 = v147;
        [v140 damping];
        v150 = v149;
        *&aBlock.tx = sub_100481494;
        *&aBlock.ty = v73;
        *&aBlock.a = _NSConcreteStackBlock;
        *&aBlock.b = 1107296256;
        *&aBlock.c = sub_10007885C;
        *&aBlock.d = &unk_1006A6070;
        v151 = _Block_copy(&aBlock);

        *&aBlock.tx = CFRange.init(_:);
        *&aBlock.ty = v141;
        *&aBlock.a = _NSConcreteStackBlock;
        *&aBlock.b = 1107296256;
        *&aBlock.c = sub_10044E8C8;
        *&aBlock.d = &unk_1006A6098;
        v152 = _Block_copy(&aBlock);

        [v9 _animateUsingSpringWithDuration:6 delay:v151 options:v152 mass:v144 stiffness:0.0 damping:v146 initialVelocity:v148 animations:v150 completion:0.0];
        _Block_release(v152);
        _Block_release(v151);

        if (qword_1006EED78 != -1)
        {
          swift_once();
        }

        v153 = qword_1006F62E8;
        [qword_1006F62E8 settlingDuration];
        v89 = v154;
        [v153 mass];
        v91 = v155;
        [v153 stiffness];
        v93 = v156;
        [v153 damping];
        v95 = v157;
        *&aBlock.tx = sub_1004814A0;
        *&aBlock.ty = v74;
        *&aBlock.a = _NSConcreteStackBlock;
        *&aBlock.b = 1107296256;
        v96 = &unk_1006A60C0;
      }

      *&aBlock.c = sub_10007885C;
      *&aBlock.d = v96;
      v158 = _Block_copy(&aBlock);

      [v9 _animateUsingSpringWithDuration:6 delay:v158 options:0 mass:v89 stiffness:0.0 damping:v91 initialVelocity:v93 animations:v95 completion:0.0];
      _Block_release(v158);
      goto LABEL_65;
    }

    if ((a1 & 1) == 0)
    {
      if (qword_1006EED50 != -1)
      {
        swift_once();
      }

      v44 = qword_1006F62C0;
      v45 = swift_allocObject();
      *(v45 + 16) = v2;
      v46 = v2;
      [v44 settlingDuration];
      v48 = v47;
      [v44 mass];
      v50 = v49;
      [v44 stiffness];
      v52 = v51;
      [v44 damping];
      v54 = v53;
      *&aBlock.tx = sub_1004814E4;
      *&aBlock.ty = v45;
      *&aBlock.a = _NSConcreteStackBlock;
      *&aBlock.b = 1107296256;
      *&aBlock.c = sub_10007885C;
      *&aBlock.d = &unk_1006A6160;
      v55 = _Block_copy(&aBlock);

      [v9 _animateUsingSpringWithDuration:6 delay:v55 options:0 mass:v48 stiffness:0.0 damping:v50 initialVelocity:v52 animations:v54 completion:0.0];
      _Block_release(v55);
    }

    if (qword_1006EED58 != -1)
    {
      swift_once();
    }

    v56 = qword_1006F62C8;
    *&v57 = COERCE_DOUBLE(swift_allocObject());
    v58 = *&v57;
    v59 = a1 & 1;
    if (a1)
    {
      v60 = 0.0;
    }

    else
    {
      v60 = 0.1;
    }

    *(v57 + 16) = v59;
    *(v57 + 24) = v2;
    if (a1)
    {
      v61 = 0.6;
    }

    else
    {
      v61 = 0.7;
    }

    v62 = swift_allocObject();
    *(v62 + 16) = v2;
    v63 = objc_opt_self();
    v64 = v2;
    [v63 begin];
    [v63 setAnimationTimingFunction:v56];
    *&aBlock.tx = sub_100481524;
    aBlock.ty = v58;
    *&aBlock.a = _NSConcreteStackBlock;
    *&aBlock.b = 1107296256;
    *&aBlock.c = sub_10007885C;
    *&aBlock.d = &unk_1006A61D8;
    v65 = _Block_copy(&aBlock);

    *&aBlock.tx = CFRange.init(_:);
    *&aBlock.ty = v62;
    *&aBlock.a = _NSConcreteStackBlock;
    *&aBlock.b = 1107296256;
    *&aBlock.c = sub_10044E8C8;
    *&aBlock.d = &unk_1006A6200;
    v66 = _Block_copy(&aBlock);

    [v9 animateWithDuration:2 delay:v65 options:v66 animations:0.75 completion:v60];
    _Block_release(v66);
    _Block_release(v65);
    [v63 commit];

    sub_1000D3B98(0, &qword_1006F3420, OS_dispatch_queue_ptr);
    v67 = sub_1005735E8();
    v68 = swift_allocObject();
    *(v68 + 16) = v64;
    v69 = v64;
    OS_dispatch_queue.asyncAfter(_:block:)(sub_100481530, v68, v61);

    if (!v59)
    {
      v70 = swift_allocObject();
      *(v70 + 16) = v69;
      *&aBlock.tx = sub_100481558;
      *&aBlock.ty = v70;
      *&aBlock.a = _NSConcreteStackBlock;
      *&aBlock.b = 1107296256;
      *&aBlock.c = sub_10007885C;
      *&aBlock.d = &unk_1006A6278;
      v71 = _Block_copy(&aBlock);
      v72 = v69;

      [v9 animateWithDuration:0 delay:v71 options:0 animations:0.25 completion:0.7];
      _Block_release(v71);
    }
  }

  else
  {
    [v1 invalidateIntrinsicContentSize];
    [v1 setNeedsUpdateConstraints];
    v36 = [v1 superview];
    [v36 setNeedsLayout];

    v37 = [v1 superview];
    [v37 layoutIfNeeded];

    [v1 updateConstraintsIfNeeded];
    v38 = v1[v6];
    v39 = 1.0;
    v40 = 1.0;
    if (v38 != 2 && (v38 & 1) != 0)
    {
      v41 = &v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_interactionScaleFactor];
      swift_beginAccess();
      v42 = 2.0;
      if ((v41[1] & 1) == 0)
      {
        v42 = *v41;
      }

      v43 = &v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_interactionScaleFactor];
      swift_beginAccess();
      if (v43[1])
      {
        v39 = 2.0;
      }

      else
      {
        v39 = *v43;
      }

      v40 = v42;
    }

    CGAffineTransformMakeScale(&aBlock, v40, v39);
    v124 = *&aBlock.c;
    v125 = *&aBlock.tx;
    v126 = &v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_growTransform];
    *v126 = *&aBlock.a;
    *(v126 + 1) = v124;
    *(v126 + 2) = v125;
    v127 = sub_10047A7DC();
    v128 = *(v126 + 1);
    *&aBlock.a = *v126;
    *&aBlock.c = v128;
    *&aBlock.tx = *(v126 + 2);
    [v127 setTransform:&aBlock];

    sub_10047B488();
    LOBYTE(aBlock.a) = 1;
    sub_10047B2AC(0x100000000);
    v129 = sub_10047AE94();
    v130 = v1[v6];
    v131 = [v2 traitCollection];
    if (v130 == 2)
    {

      v132 = 0.0;
    }

    else if (v130)
    {

      v132 = 1.0;
    }

    else
    {
      v133 = v131;
      v134 = [v131 accessibilityContrast];

      v132 = 0.5;
      if (v134 == 1)
      {
        v132 = 1.0;
      }
    }

    [v129 setAlpha:v132];

    v135 = sub_10047A728();
    sub_100573988();
    v136 = sub_100573998();
    (*(*(v136 - 8) + 56))(v5, 0, 1, v136);
    sub_1005739A8();

    v137 = [objc_opt_self() clearColor];
    UIView.Shadow.init(color:opacity:radius:offset:)(v137, &aBlock, 0.0, 0.0, 0.0, 0.0);
    UIView.shadow.setter(&aBlock);
  }
}

void sub_10047E86C(unsigned __int8 *a1, char a2)
{
  sub_100009DCC(&qword_1006F5C30, &qword_100598A70);
  *&v4 = __chkstk_darwin().n128_u64[0];
  v6 = &v29[-v5];
  [a1 invalidateIntrinsicContentSize];
  [a1 setNeedsUpdateConstraints];
  v7 = [a1 superview];
  [v7 setNeedsLayout];

  v8 = [a1 superview];
  [v8 layoutIfNeeded];

  [a1 updateConstraintsIfNeeded];
  v9 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode;
  v10 = a1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode];
  v11 = 1.0;
  v12 = 1.0;
  if (v10 != 2 && (v10 & 1) != 0)
  {
    v13 = &a1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_interactionScaleFactor];
    swift_beginAccess();
    v14 = 2.0;
    if ((v13[8] & 1) == 0)
    {
      v14 = *v13;
    }

    v15 = &a1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_interactionScaleFactor];
    swift_beginAccess();
    if (v15[8])
    {
      v11 = 2.0;
    }

    else
    {
      v11 = *v15;
    }

    v12 = v14;
  }

  CGAffineTransformMakeScale(&v30, v12, v11);
  v16 = *&v30.c;
  v17 = *&v30.tx;
  v18 = &a1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_growTransform];
  *v18 = *&v30.a;
  *(v18 + 1) = v16;
  *(v18 + 2) = v17;
  v19 = sub_10047A7DC();
  v20 = *(v18 + 1);
  *&v30.a = *v18;
  *&v30.c = v20;
  *&v30.tx = *(v18 + 2);
  [v19 setTransform:&v30];

  v21 = sub_10047A728();
  sub_100573988();
  v22 = sub_100573998();
  (*(*(v22 - 8) + 56))(v6, 0, 1, v22);
  sub_1005739A8();

  if (a2)
  {
    LOBYTE(v30.a) = 1;
    sub_10047B2AC(0x100000000);
    v23 = sub_10047AE94();
    v24 = a1[v9];
    v25 = [a1 traitCollection];
    if (v24 == 2)
    {

      v26 = 0.0;
    }

    else if (v24)
    {

      v26 = 1.0;
    }

    else
    {
      v27 = v25;
      v28 = [v25 accessibilityContrast];

      v26 = 0.5;
      if (v28 == 1)
      {
        v26 = 1.0;
      }
    }

    [v23 setAlpha:v26];

    sub_10047B488();
  }

  else
  {
    LOBYTE(v30.a) = 0;
    sub_10047B2AC(1065353216);
  }

  sub_10047AA1C();
}

uint64_t sub_10047EB84()
{
  v0 = [objc_opt_self() blackColor];
  UIView.Shadow.init(color:opacity:radius:offset:)(v0, v2, 0.3, 9.0, 0.0, 5.0);
  return UIView.shadow.setter(v2);
}

uint64_t sub_10047EBF4(unsigned __int8 *a1)
{
  v2 = sub_10047AE94();
  v3 = a1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode];
  v4 = [a1 traitCollection];
  if (v3 == 2)
  {

    v5 = 0.0;
  }

  else if (v3)
  {

    v5 = 1.0;
  }

  else
  {
    v6 = v4;
    v7 = [v4 accessibilityContrast];

    v5 = 0.5;
    if (v7 == 1)
    {
      v5 = 1.0;
    }
  }

  [v2 setAlpha:v5];

  sub_10047B488();
  v8 = [objc_opt_self() clearColor];
  UIView.Shadow.init(color:opacity:radius:offset:)(v8, v10, 0.0, 0.0, 0.0, 0.0);
  return UIView.shadow.setter(v10);
}

double sub_10047ECF4(void *a1)
{
  if (qword_1006EED48 != -1)
  {
    swift_once();
  }

  v2 = qword_1006F62B8;
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v4 = objc_opt_self();
  v5 = a1;
  [v4 begin];
  [v4 setAnimationTimingFunction:v2];
  v6 = objc_opt_self();
  v9[4] = sub_100481584;
  v9[5] = v3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_10007885C;
  v9[3] = &unk_1006A6408;
  v7 = _Block_copy(v9);

  [v6 animateWithDuration:2 delay:v7 options:0 animations:0.85 completion:0.0];
  _Block_release(v7);
  [v4 commit];

  return result;
}

void sub_10047EE8C(uint64_t a1)
{
  v2 = sub_10047AE94();
  v3 = sub_10047AE10();
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [v2 setFrame:{v5, v7, v9, v11}];
  v12 = (a1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange);
  v13.n128_u64[0] = *(a1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange);
  v14.n128_u64[0] = *(a1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange + 8);
  v15.n128_u64[0] = *(a1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange + 16);
  v16.n128_u64[0] = *(a1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange + 24);
  v17 = *&qword_1006F6290;
  *v12 = xmmword_1006F6280;
  v12[1] = v17;
  sub_10047FFC4(v13, v14, v15, v16);
}

uint64_t sub_10047EF40(char a1, char *a2)
{
  sub_100009DCC(&qword_1006F5C30, &qword_100598A70);
  v4 = __chkstk_darwin();
  v9 = v27 - v8;
  if (a1)
  {
    v10 = &a2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange];
    v4.n128_u64[0] = *&a2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange];
    v5.n128_u64[0] = *&a2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange + 8];
    v6.n128_u64[0] = *&a2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange + 16];
    v7.n128_u64[0] = *&a2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange + 24];
    v11 = *&qword_1006F6290;
    *v10 = xmmword_1006F6280;
    *(v10 + 1) = v11;
    sub_10047FFC4(v4, v5, v6, v7);
    LOBYTE(v27[0]) = 1;
    sub_10047B2AC(0x100000000);
    v12 = sub_10047AE94();
    v13 = a2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode];
    v14 = [a2 traitCollection];
    if (v13 == 2)
    {

      v15 = 0.0;
    }

    else if (v13)
    {

      v15 = 1.0;
    }

    else
    {
      v16 = v14;
      v17 = [v14 accessibilityContrast];

      v15 = 0.5;
      if (v17 == 1)
      {
        v15 = 1.0;
      }
    }

    [v12 setAlpha:v15];
  }

  v18 = &a2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_growTransform];
  *v18 = 0x3FF0000000000000;
  *(v18 + 1) = 0;
  *(v18 + 2) = 0;
  *(v18 + 3) = 0x3FF0000000000000;
  *(v18 + 4) = 0;
  *(v18 + 5) = 0;
  v19 = sub_10047A7DC();
  v20 = *(v18 + 1);
  v27[0] = *v18;
  v27[1] = v20;
  v27[2] = *(v18 + 2);
  [v19 setTransform:v27];

  [a2 invalidateIntrinsicContentSize];
  [a2 setNeedsUpdateConstraints];
  v21 = [a2 superview];
  [v21 setNeedsLayout];

  v22 = [a2 superview];
  [v22 layoutIfNeeded];

  [a2 updateConstraintsIfNeeded];
  v23 = sub_10047A728();
  sub_100573988();
  v24 = sub_100573998();
  (*(*(v24 - 8) + 56))(v9, 0, 1, v24);
  sub_1005739A8();

  v25 = [objc_opt_self() clearColor];
  UIView.Shadow.init(color:opacity:radius:offset:)(v25, v27, 0.0, 0.0, 0.0, 0.0);
  return UIView.shadow.setter(v27);
}

void sub_10047F20C(unsigned __int8 *a1)
{
  v7 = sub_10047AE94();
  v2 = a1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode];
  v3 = [a1 traitCollection];
  if (v2 == 2)
  {

    v4 = 0.0;
  }

  else if (v2)
  {

    v4 = 1.0;
  }

  else
  {
    v5 = v3;
    v6 = [v3 accessibilityContrast];

    v4 = 0.5;
    if (v6 == 1)
    {
      v4 = 1.0;
    }
  }

  [v7 setAlpha:v4];
}

void sub_10047F2D0(uint64_t a1, char a2)
{
  sub_100009DCC(&qword_1006F5C30, &qword_100598A70);
  __chkstk_darwin();
  v5 = &v25[-v4];
  v6 = *(a1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode);
  v7 = 1.0;
  v8 = 1.0;
  if (v6 != 2 && (v6 & 1) != 0)
  {
    v9 = a1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_interactionScaleFactor;
    swift_beginAccess();
    v10 = 2.0;
    if ((*(v9 + 8) & 1) == 0)
    {
      v10 = *v9;
    }

    v11 = a1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_interactionScaleFactor;
    swift_beginAccess();
    if (*(v11 + 8))
    {
      v7 = 2.0;
    }

    else
    {
      v7 = *v11;
    }

    v8 = v10;
  }

  CGAffineTransformMakeScale(&v26, v8, v7);
  v12 = *&v26.c;
  v13 = *&v26.tx;
  v14 = (a1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_growTransform);
  *v14 = *&v26.a;
  v14[1] = v12;
  v14[2] = v13;
  v15 = sub_10047A7DC();
  v16 = v14[1];
  *&v26.a = *v14;
  *&v26.c = v16;
  *&v26.tx = v14[2];
  [v15 setTransform:&v26];

  v17 = sub_10047A728();
  sub_100573988();
  v18 = sub_100573998();
  (*(*(v18 - 8) + 56))(v5, 0, 1, v18);
  sub_1005739A8();

  if ((a2 & 1) == 0)
  {
    v23 = (a1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange);
    v19.n128_u64[0] = *(a1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange);
    v20.n128_u64[0] = *(a1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange + 8);
    v21.n128_u64[0] = *(a1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange + 16);
    v22.n128_u64[0] = *(a1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange + 24);
    v24 = *&qword_1006F6290;
    *v23 = xmmword_1006F6280;
    v23[1] = v24;
    sub_10047FFC4(v19, v20, v21, v22);
  }
}

uint64_t sub_10047F4C8(unsigned __int8 *a1, char a2)
{
  LOBYTE(v19) = 1;
  sub_10047B2AC(0x100000000);
  v4 = sub_10047AE94();
  v5 = a1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode];
  v6 = [a1 traitCollection];
  if (v5 == 2)
  {

    v7 = 0.0;
  }

  else if (v5)
  {

    v7 = 1.0;
  }

  else
  {
    v8 = v6;
    v9 = [v6 accessibilityContrast];

    v7 = 0.5;
    if (v9 == 1)
    {
      v7 = 1.0;
    }
  }

  [v4 setAlpha:v7];

  v10 = objc_opt_self();
  if (a2)
  {
    v11 = [v10 blackColor];
    v12 = 0.3;
    v13 = 9.0;
    v14 = 5.0;
  }

  else
  {
    v11 = [v10 clearColor];
    v12 = 0.0;
    v13 = 0.0;
    v14 = 0.0;
  }

  UIView.Shadow.init(color:opacity:radius:offset:)(v11, &v16, v12, v13, 0.0, v14);
  v19 = v16;
  v20 = v17;
  v21 = v18;
  return UIView.shadow.setter(&v19);
}

double sub_10047F638(uint64_t a1, uint64_t a2)
{
  if (*(a1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode) != 2)
  {
    v2 = (a2 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateName);
    swift_beginAccess();
    v3 = *v2;
    v4 = v2[1];
    *v2 = xmmword_100597020;
    sub_100372434(v3, v4);
  }

  return result;
}

Swift::Void __swiftcall VerticalToggleSlider.didMoveToWindow()()
{
  v1 = v0;
  v6.receiver = v0;
  v6.super_class = type metadata accessor for VerticalToggleSlider();
  objc_msgSendSuper2(&v6, "didMoveToWindow");
  v2 = [v0 window];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 windowScene];

    if (v4)
    {
      v5 = swift_allocObject();
      swift_unknownObjectWeakInit();
      type metadata accessor for NotificationObserver();
      swift_allocObject();
      v2 = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(UISceneDidActivateNotification, v4, 1, 1, sub_100481148, v5);
    }

    else
    {
      v2 = 0;
    }
  }

  *&v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_sceneActivationObserver] = v2;
}

void sub_10047F7EC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_10047B488();
  }
}

id sub_10047F894(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for VerticalToggleSlider();
  return objc_msgSendSuper2(&v5, *a3);
}

id sub_10047F8E0(SEL *a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for VerticalToggleSlider();
  return objc_msgSendSuper2(&v4, *a1);
}

void VerticalToggleSlider.isHighlighted.setter(char a1)
{
  v3 = type metadata accessor for VerticalToggleSlider();
  v6.receiver = v1;
  v6.super_class = v3;
  v4 = objc_msgSendSuper2(&v6, "isHighlighted");
  v5.receiver = v1;
  v5.super_class = v3;
  objc_msgSendSuper2(&v5, "setHighlighted:", a1 & 1);
  sub_10047FA10(v4);
}

void sub_10047FA10(char a1)
{
  v2 = v1;
  if ([v1 isHighlighted] != (a1 & 1))
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    v4 = objc_opt_self();
    v5 = v2;
    if ([v4 areAnimationsEnabled])
    {
      if (qword_1006EED30 != -1)
      {
        swift_once();
      }

      v6 = qword_1006F62A0;
      [qword_1006F62A0 settlingDuration];
      v8 = v7;
      [v6 mass];
      v10 = v9;
      [v6 stiffness];
      v12 = v11;
      [v6 damping];
      v14 = v13;
      *&v24.tx = sub_10048140C;
      *&v24.ty = v3;
      *&v24.a = _NSConcreteStackBlock;
      *&v24.b = 1107296256;
      *&v24.c = sub_10007885C;
      *&v24.d = &unk_1006A5F80;
      v15 = _Block_copy(&v24);

      [v4 _animateUsingSpringWithDuration:6 delay:v15 options:0 mass:v8 stiffness:0.0 damping:v10 initialVelocity:v12 animations:v14 completion:0.0];
      _Block_release(v15);
    }

    else
    {
      if ([v5 isHighlighted])
      {
        CGAffineTransformMakeScale(&v24, 0.95, 0.95);
        v17 = *&v24.a;
        v16 = *&v24.c;
        v18 = *&v24.tx;
      }

      else
      {
        v16 = xmmword_100597030;
        v17 = xmmword_100596E80;
        v18 = 0uLL;
      }

      *&v24.a = v17;
      *&v24.c = v16;
      *&v24.tx = v18;
      [v5 setTransform:&v24];
      v19 = *&v5[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView];
      if (v19)
      {
        v20 = v19;
        if ([v5 isHighlighted])
        {
          CGAffineTransformMakeScale(&v24, 0.9, 0.9);
          v22 = *&v24.a;
          v21 = *&v24.c;
          v23 = *&v24.tx;
        }

        else
        {
          v21 = xmmword_100597030;
          v22 = xmmword_100596E80;
          v23 = 0uLL;
        }

        *&v24.a = v22;
        *&v24.c = v21;
        *&v24.tx = v23;
        [v20 setTransform:&v24];
      }
    }
  }
}

void sub_10047FCE0(char *a1)
{
  if ([a1 isHighlighted])
  {
    CGAffineTransformMakeScale(&v10, 0.95, 0.95);
    v3 = *&v10.a;
    v2 = *&v10.c;
    v4 = *&v10.tx;
  }

  else
  {
    v2 = xmmword_100597030;
    v3 = xmmword_100596E80;
    v4 = 0uLL;
  }

  *&v10.a = v3;
  *&v10.c = v2;
  *&v10.tx = v4;
  [a1 setTransform:&v10];
  v5 = *&a1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView];
  if (v5)
  {
    v6 = v5;
    if ([a1 isHighlighted])
    {
      CGAffineTransformMakeScale(&v10, 0.9, 0.9);
      v8 = *&v10.a;
      v7 = *&v10.c;
      v9 = *&v10.tx;
    }

    else
    {
      v7 = xmmword_100597030;
      v8 = xmmword_100596E80;
      v9 = 0uLL;
    }

    *&v10.a = v8;
    *&v10.c = v7;
    *&v10.tx = v9;
    [v6 setTransform:&v10];
  }
}

void sub_10047FDEC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isTapToToggleEnabled;
    swift_beginAccess();
    if (v3[v4] == 1)
    {
      [v3 sendActionsForControlEvents:0x10000];
      v5 = v3[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode];
      v3[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode] = 2 * (v5 != 2);
      sub_10047D49C(v5);
      [v3 sendActionsForControlEvents:4096];
      [v3 sendActionsForControlEvents:0x40000];
    }
  }
}

void sub_10047FFC4(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  v5 = v4;
  v58 = a4;
  v57 = a3;
  v56 = a2;
  v55 = a1;
  sub_100009DCC(&qword_1006F5C30, &qword_100598A70);
  __chkstk_darwin();
  v7 = &v55 - v6;
  v8 = &v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange];
  *&v9.f64[0] = v55.n128_u64[0];
  *&v9.f64[1] = v56.n128_u64[0];
  *&v10.f64[0] = v57.n128_u64[0];
  *&v10.f64[1] = v58.n128_u64[0];
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange], v9), vceqq_f64(*&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange + 16], v10)))) & 1) == 0)
  {
    v11 = sub_10047A728();
    sub_100573988();
    v12 = sub_100573998();
    (*(*(v12 - 8) + 56))(v7, 0, 1, v12);
    sub_1005739A8();

    if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*v8, xmmword_1006F6280), vceqq_f64(v8[1], *&qword_1006F6290)))))
    {
      v42 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___stretchView;
      [*&v5[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___stretchView] anchorPoint];
      v44 = v43;
      v46 = v45;
      v47 = CGPoint.center.unsafeMutableAddressor();
      swift_beginAccess();
      if (v44 != *v47 || v46 != v47[1])
      {
        [*&v5[v42] setAnchorPoint:?];
        v49 = *&v5[v42];
        [v5 bounds];
        [v49 setFrame:?];
      }

      v50 = &v5[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_stretchTransform];
      *v50 = 0x3FF0000000000000;
      *(v50 + 1) = 0;
      *(v50 + 2) = 0;
      *(v50 + 3) = 0x3FF0000000000000;
      *(v50 + 4) = 0;
      *(v50 + 5) = 0;
      v51 = *&v5[v42];
      *&aBlock.a = 0x3FF0000000000000uLL;
      aBlock.c = 0.0;
      aBlock.d = 1.0;
      *&aBlock.tx = 0uLL;
      [v51 setTransform:{&aBlock, *&v55}];
      v52 = *&v5[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView];
      if (v52)
      {
        v53 = *(v50 + 1);
        *&aBlock.a = *v50;
        *&aBlock.c = v53;
        *&aBlock.tx = *(v50 + 2);
        CGAffineTransformInvert(&v64, &aBlock);
        aBlock = v64;
        [v52 setTransform:&aBlock];
      }

      v54 = *&v5[v42];
      [v5 bounds];
      [v54 setFrame:?];
    }

    else
    {
      v13 = objc_opt_self();
      v14 = swift_allocObject();
      *(v14 + 16) = v5;
      v15 = swift_allocObject();
      *(v15 + 16) = sub_1004813DC;
      *(v15 + 24) = v14;
      *&aBlock.tx = sub_10019CB74;
      *&aBlock.ty = v15;
      *&aBlock.a = _NSConcreteStackBlock;
      *&aBlock.b = 1107296256;
      *&aBlock.c = sub_1001D41F8;
      *&aBlock.d = &unk_1006A5F30;
      v16 = _Block_copy(&aBlock);
      v17 = v5;

      [v13 performWithoutAnimation:v16];
      _Block_release(v16);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        __break(1u);
      }

      else
      {
        v19 = sub_10047A7DC();
        [v19 frame];
        v21 = v20;
        v23 = v22;
        v25 = v24;
        v27 = v26;

        v66.origin.x = v21;
        v66.origin.y = v23;
        v66.size.width = v25;
        v66.size.height = v27;
        v28 = CGRectGetWidth(v66) + v8->f64[1];
        v29 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___growView;
        [*&v17[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___growView] frame];
        v30 = v28 / CGRectGetWidth(v67);
        [*&v17[v29] frame];
        v31 = CGRectGetHeight(v68) + v8->f64[0];
        [*&v17[v29] frame];
        Height = CGRectGetHeight(v69);
        CGAffineTransformMakeScale(&aBlock, v30, v31 / Height);
        v58 = *&aBlock.c;
        v57 = *&aBlock.a;
        v64 = aBlock;
        v33 = *&aBlock.tx;
        CGAffineTransformMakeTranslation(&aBlock, 0.0, -v8[1].f64[1]);
        static CGAffineTransform.+ infix(_:_:)(&v64, &aBlock, &v61);
        v34 = &v17[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_stretchTransform];
        v35 = v62;
        v36 = v63;
        v37 = v61;
        *v34 = v61;
        *(v34 + 1) = v62;
        *(v34 + 2) = v63;
        v38 = *&v17[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___stretchView];
        *&v60.a = v37;
        *&v60.c = v35;
        *&v60.tx = v36;
        [v38 setTransform:&v60];
        v39 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView;
        v40 = *&v17[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView];
        if (v40)
        {
          v60 = *v34;
          CGAffineTransformInvert(&v59, &v60);
          v60 = v59;
          [v40 setTransform:&v60];
          v41 = *&v17[v39];
          if (v41)
          {
            *&v60.a = v57;
            *&v60.c = v58;
            *&v60.tx = v33;
            CGAffineTransformInvert(&v59, &v60);
            v60 = v59;
            [v41 setTransform:&v60];
          }
        }
      }
    }
  }
}

void sub_10048061C(char *a1)
{
  if (*&a1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange + 24] <= 0.0)
  {
    v2 = CGPoint.topCenter.unsafeMutableAddressor();
  }

  else
  {
    v2 = CGPoint.bottomCenter.unsafeMutableAddressor();
  }

  v3 = v2;
  swift_beginAccess();
  v5 = *v3;
  v4 = v3[1];
  v6 = sub_10047A728();
  [v6 anchorPoint];
  v8 = v7;
  v10 = v9;

  if (v8 != v5 || v10 != v4)
  {
    v12 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___stretchView;
    [*&a1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___stretchView] setAnchorPoint:{v5, v4}];
    v13 = *&a1[v12];
    [a1 bounds];
    [v13 setFrame:?];
  }
}

id sub_100480744()
{
  result = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:465.0 damping:21.0 initialVelocity:{0.0, 0.0}];
  qword_1006F62A0 = result;
  return result;
}

id sub_100480794()
{
  result = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:300.0 damping:40.0 initialVelocity:{0.0, 0.0}];
  qword_1006F62A8 = result;
  return result;
}

id sub_1004807E8()
{
  result = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:194.0 damping:24.0 initialVelocity:{0.0, 0.0}];
  qword_1006F62B0 = result;
  return result;
}

id sub_100480838()
{
  v0 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v1) = 1051931443;
  LODWORD(v2) = 0.25;
  LODWORD(v3) = 1.0;
  result = [v0 initWithControlPoints:v1 :0.0 :v2 :v3];
  qword_1006F62B8 = result;
  return result;
}

id sub_100480884()
{
  result = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:158.0 damping:25.0 initialVelocity:{0.0, 0.0}];
  qword_1006F62C0 = result;
  return result;
}

id sub_1004808D4()
{
  v0 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v1) = 1051931443;
  LODWORD(v2) = 1.0;
  LODWORD(v3) = 1.0;
  result = [v0 initWithControlPoints:v2 :0.0 :v1 :v3];
  qword_1006F62C8 = result;
  return result;
}

id sub_100480920()
{
  result = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:288.0 damping:26.5 initialVelocity:{0.0, 0.0}];
  qword_1006F62D0 = result;
  return result;
}

id sub_100480974()
{
  result = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:300.0 damping:40.0 initialVelocity:{0.0, 0.0}];
  qword_1006F62D8 = result;
  return result;
}

id sub_1004809C8()
{
  result = [objc_allocWithZone(UISpringTimingParameters) initWithMass:2.0 stiffness:500.0 damping:40.0 initialVelocity:{0.0, 0.0}];
  qword_1006F62E0 = result;
  return result;
}

id sub_100480A1C()
{
  result = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:300.0 damping:40.0 initialVelocity:{0.0, 0.0}];
  qword_1006F62E8 = result;
  return result;
}

id VerticalToggleSlider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VerticalToggleSlider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100480C80()
{
  if (*(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue) > *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue))
  {
    __break(1u);
  }
}

id VerticalToggleSlider.accessibilitySetSliderValue(_:)(double a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue);
  v3 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue);
  if (v2 > v3)
  {
    __break(1u);
  }

  else
  {
    v4 = a1;
    if (v2 > v4)
    {
      v4 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue);
    }

    if (v3 < v4)
    {
      v4 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue);
    }

    sub_10047A898(*(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange) + (((v4 - v2) / (v3 - v2)) * (*(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange + 4) - *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange))));

    return sub_10047C000();
  }

  return result;
}

uint64_t sub_100480DF0()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

void sub_100480E54(char *a1)
{
  v2 = sub_10047A7DC();
  v3 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_growAnchorPoint;
  swift_beginAccess();
  v4 = a1[v3];
  v5 = [a1 traitCollection];
  *&v6 = sub_10047C65C(v5, v4).n128_u64[0];
  v8 = v7;

  [v2 setAnchorPoint:{v6, v8}];
}

void _s11MusicCoreUI20VerticalToggleSliderC5coderACSgSo7NSCoderC_tcfc_0()
{
  v1 = v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageDefinition;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_minLevelOffsetRatio) = 1040402485;
  v2 = v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_interactionScaleFactor;
  *v2 = 0;
  *(v2 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isTapToToggleEnabled) = 1;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isVisuallyDisabled) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isContinuous) = 1;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_automaticallyDisablesOnMaxValue) = 1;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_longPressMode) = 1;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_growAnchorPoint) = 8;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___stretchView) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___growView) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange) = 0x3F80000000000000;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValue) = 1065353216;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue) = 1065353216;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___feedbackGenerator) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode) = 2;
  v3 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_blurEffect;
  *(v0 + v3) = [objc_opt_self() effectWithBlurRadius:10.0];
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___visualEffectView) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___levelView) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_sceneActivationObserver) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_longPressGestureRecognizer) = 0;
  v4 = v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_initialDraggingLocation;
  *v4 = 0;
  *(v4 + 8) = 0;
  *(v4 + 16) = 1;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_initialValue) = 0;
  v5 = (v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange);
  v6 = *&qword_1006F6290;
  *v5 = xmmword_1006F6280;
  v5[1] = v6;
  v7 = (v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_stretchTransform);
  *v7 = 0x3FF0000000000000;
  v7[1] = 0;
  v7[2] = 0;
  v7[3] = 0x3FF0000000000000;
  v7[4] = 0;
  v7[5] = 0;
  v8 = (v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_growTransform);
  *v8 = 0x3FF0000000000000;
  v8[1] = 0;
  v8[2] = 0;
  v8[3] = 0x3FF0000000000000;
  v8[4] = 0;
  v8[5] = 0;
  sub_1005740F8();
  __break(1u);
}

unint64_t sub_100481154()
{
  result = qword_1006F63D0;
  if (!qword_1006F63D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F63D0);
  }

  return result;
}

unint64_t sub_1004811AC()
{
  result = qword_1006F63D8;
  if (!qword_1006F63D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F63D8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VerticalToggleSlider.AnchorPoint(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VerticalToggleSlider.AnchorPoint(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

double sub_100481390(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1004813F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100481414()
{

  return swift_deallocObject();
}

uint64_t sub_10048145C()
{

  return swift_deallocObject();
}

uint64_t sub_1004814AC()
{

  return swift_deallocObject();
}

uint64_t sub_1004814EC()
{

  return swift_deallocObject();
}

unint64_t WaveformPlayIndicator.init(settings:)(void *a1)
{
  v2 = v1;
  v32 = a1;
  ObjectType = swift_getObjectType();
  v31 = sub_100009DCC(&qword_1006F2220, &unk_1005A3660);
  v3 = *(v31 - 8);
  __chkstk_darwin();
  v5 = &v29 - v4;
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_mode) = 0;
  v6 = (v1 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_colorPalette);
  v7 = objc_opt_self();
  v30 = [v7 tintColor];
  v8 = [v7 labelColor];
  v9 = [v8 colorWithAlphaComponent:0.35];

  v10 = [v7 labelColor];
  v11 = [v10 colorWithAlphaComponent:0.2];

  v12 = [v7 labelColor];
  v13 = [v12 colorWithAlphaComponent:0.6];

  *v6 = v30;
  v6[1] = v9;
  v6[2] = v11;
  v6[3] = v13;
  v14 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_waveform;
  *(v2 + v14) = [objc_opt_self() zero];
  *(v2 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_exclusiveAnimation) = 0;
  *(v2 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_pulseTask) = 0;
  *(v2 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_barRatio) = 0x3FE0000000000000;
  v15 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator__isVisible;
  v35 = 0;
  sub_10056E438();
  (*(v3 + 32))(v2 + v15, v5, v31);
  *(v2 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator____lazy_storage___bars) = 0;
  v16 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_cannedAnimationAsset;
  type metadata accessor for BouncyBarsAsset();
  swift_allocObject();
  *(v2 + v16) = sub_100486F7C();
  v17 = v32;
  *(v2 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_settings) = v32;
  v18 = v17;
  v19 = [v18 stops];
  sub_1000D3B98(0, &qword_1006F1F20, NSNumber_ptr);
  v20 = sub_100572D28();

  if (v20 >> 62)
  {
    v21 = sub_100574178();
  }

  else
  {
    v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v22 = ObjectType;
  if (__OFSUB__(v21, 1))
  {
    __break(1u);
  }

  else
  {
    *(v2 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_numberOfBars) = v21 - 1;
    v34.receiver = v2;
    v34.super_class = v22;
    v21 = objc_msgSendSuper2(&v34, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
    result = sub_100481B68();
    v2 = result;
    if (!(result >> 62))
    {
      v24 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v24)
      {
        goto LABEL_6;
      }

LABEL_15:

      sub_100009DCC(qword_1006F1BE0, &unk_1005A1D40);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_10057B510;
      *(v28 + 32) = sub_10056E128();
      *(v28 + 40) = &protocol witness table for UITraitActiveAppearance;
      sub_1005739D8();

      swift_unknownObjectRelease();

      return v21;
    }
  }

  result = sub_100574178();
  v24 = result;
  if (!result)
  {
    goto LABEL_15;
  }

LABEL_6:
  if (v24 >= 1)
  {
    v25 = 0;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v26 = sub_100573F58();
      }

      else
      {
        v26 = *(v2 + 8 * v25 + 32);
      }

      v27 = v26;
      ++v25;
      [v21 addSubview:v26];
      [v27 setAlpha:0.0];
    }

    while (v24 != v25);
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t sub_100481B68()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator____lazy_storage___bars;
  if (*(v0 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator____lazy_storage___bars))
  {
    v2 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator____lazy_storage___bars);
  }

  else
  {
    sub_100486434();
    v2 = v3;
    *(v0 + v1) = v3;
  }

  return v2;
}

void sub_100481BCC()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_mode;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 <= 1)
  {
    if (!*(v0 + v1))
    {
      return;
    }

    v11 = v0 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_colorPalette;
    swift_beginAccess();
    v4 = *(v11 + 8);
    v12 = sub_100481B68();
    v13 = v12;
    if (v12 >> 62)
    {
      v14 = sub_100574178();
      if (!v14)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v14)
      {
        goto LABEL_34;
      }
    }

    if (v14 >= 1)
    {
      for (i = 0; i != v14; ++i)
      {
        if ((v13 & 0xC000000000000001) != 0)
        {
          v16 = sub_100573F58();
        }

        else
        {
          v16 = *(v13 + 8 * i + 32);
        }

        v17 = v16;
        [v16 setBackgroundColor:v4];
      }

      goto LABEL_34;
    }

LABEL_38:
    __break(1u);
    return;
  }

  if (v2 == 2)
  {
    v18 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_colorPalette;
    swift_beginAccess();
    v4 = *(v0 + v18);
    v19 = sub_100481B68();
    v20 = v19;
    if (v19 >> 62)
    {
      v21 = sub_100574178();
      if (!v21)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v21 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v21)
      {
        goto LABEL_34;
      }
    }

    if (v21 >= 1)
    {
      for (j = 0; j != v21; ++j)
      {
        if ((v20 & 0xC000000000000001) != 0)
        {
          v23 = sub_100573F58();
        }

        else
        {
          v23 = *(v20 + 8 * j + 32);
        }

        v24 = v23;
        [v23 setBackgroundColor:v4];
      }

      goto LABEL_34;
    }

    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v2 != 3)
  {
    return;
  }

  v3 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_colorPalette;
  swift_beginAccess();
  v4 = *(v0 + v3);
  v5 = sub_100481B68();
  v6 = v5;
  if (v5 >> 62)
  {
    v7 = sub_100574178();
    if (v7)
    {
LABEL_6:
      if (v7 >= 1)
      {
        for (k = 0; k != v7; ++k)
        {
          if ((v6 & 0xC000000000000001) != 0)
          {
            v9 = sub_100573F58();
          }

          else
          {
            v9 = *(v6 + 8 * k + 32);
          }

          v10 = v9;
          [v9 setBackgroundColor:v4];
        }

        goto LABEL_34;
      }

      goto LABEL_37;
    }
  }

  else
  {
    v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_6;
    }
  }

LABEL_34:
}

void sub_100481EB0(char a1, char a2)
{
  if (a1 == a2 && (a1 != 3 || (sub_100483400() & 1) != 0))
  {
    return;
  }

  v68 = sub_100481B68();
  type metadata accessor for AnimationGroup();
  v2 = swift_allocObject();
  v3 = v67;
  v4 = v2;
  *(v2 + 16) = _swiftEmptyArrayStorage;
  v71 = (v2 + 16);
  *(v2 + 24) = _swiftEmptyArrayStorage;
  v5 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_pulseTask;
  if (*&v67[OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_pulseTask])
  {

    sub_100572FB8();

    v3 = v67;
  }

  *&v3[v5] = 0;

  if (a1 == 3)
  {
    sub_100483700();
  }

  if (a2 == 1)
  {
    v14 = [objc_allocWithZone(UICubicTimingParameters) initWithControlPoint1:0.33 controlPoint2:{1.0, 0.67, 1.0}];
    v15 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:v14 timingParameters:0.9];

    v16 = swift_allocObject();
    *(v16 + 16) = v67;
    v17 = v67;
    sub_100486740(v15, sub_1004896A8, v16, 0.0);
  }

  else if (a2 == 4)
  {
    v6 = [objc_allocWithZone(UICubicTimingParameters) initWithControlPoint1:0.5 controlPoint2:{1.0, 0.89, 1.0}];
    v7 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:v6 timingParameters:0.25];

    v8 = swift_allocObject();
    *(v8 + 16) = v67;
    v76 = sub_1004896B0;
    v77 = v8;
    aBlock = _NSConcreteStackBlock;
    v73 = 1107296256;
    v74 = sub_10007885C;
    v75 = &unk_1006A68C8;
    v9 = _Block_copy(&aBlock);
    v10 = v67;

    [v7 addAnimations:v9];
    _Block_release(v9);
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    *(v11 + 24) = 4;
    v76 = sub_1004896B8;
    v77 = v11;
    aBlock = _NSConcreteStackBlock;
    v73 = 1107296256;
    v74 = sub_1001F1348;
    v75 = &unk_1006A6918;
    v12 = _Block_copy(&aBlock);
    v13 = v10;

    [v7 addCompletion:v12];
    _Block_release(v12);
    sub_100486740(v7, 0, 0, 0.0);
  }

  if (!a1)
  {
    v64 = v4;

    sub_1004840D0(v18);
    v20 = v19;
    sub_100483B14();
    v69 = *(v20 + 16);
    v70 = v20;
    if (v69)
    {
      v4 = 0;
      v21 = (v20 + 40);
      while (v4 < *(v70 + 16))
      {
        v23 = *(v21 - 1);
        v22 = *v21;
        v24 = objc_allocWithZone(UICubicTimingParameters);
        v25 = v22;
        v26 = v23;
        v27 = [v24 initWithControlPoint1:0.32 controlPoint2:{0.0, 0.67, 0.0}];
        v28 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:v27 timingParameters:0.5];

        v29 = swift_allocObject();
        *(v29 + 16) = v26;
        *(v29 + 24) = v22;
        v76 = sub_10048965C;
        v77 = v29;
        aBlock = _NSConcreteStackBlock;
        v73 = 1107296256;
        v74 = sub_10007885C;
        v75 = &unk_1006A6850;
        v30 = _Block_copy(&aBlock);
        swift_retain_n();
        v31 = v26;
        v32 = v25;

        [v28 addAnimations:v30];
        _Block_release(v30);

        swift_beginAccess();
        v33 = *v71;
        v34 = v28;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v71 = v33;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v33 = sub_100474F04(0, *(v33 + 2) + 1, 1, v33);
          *v71 = v33;
        }

        v37 = *(v33 + 2);
        v36 = *(v33 + 3);
        if (v37 >= v36 >> 1)
        {
          v33 = sub_100474F04((v36 > 1), v37 + 1, 1, v33);
        }

        *(v33 + 2) = v37 + 1;
        v38 = &v33[16 * v37];
        *(v38 + 4) = v34;
        *(v38 + 5) = v4 * 0.03;
        *v71 = v33;
        swift_endAccess();

        v21 += 2;
        if (v69 == ++v4)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
      goto LABEL_37;
    }

LABEL_21:

    v4 = v64;
  }

  v39 = v68;
  if (a2)
  {
    if (a2 == 2)
    {

      v45 = [objc_allocWithZone(UICubicTimingParameters) initWithControlPoint1:0.5 controlPoint2:{1.0, 0.89, 1.0}];
      v46 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:v45 timingParameters:0.15];

      v47 = swift_allocObject();
      v44 = v67;
      *(v47 + 16) = v67;
      *(v47 + 24) = a1;
      v48 = v67;
      sub_100486740(v46, sub_100489608, v47, 0.0);
    }

    else
    {
      if (a2 == 3)
      {
        v40 = [objc_allocWithZone(UICubicTimingParameters) initWithControlPoint1:0.5 controlPoint2:{1.0, 0.89, 1.0}];
        v41 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:v40 timingParameters:0.15];

        v42 = swift_allocObject();
        *(v42 + 16) = v67;
        v43 = v67;
        sub_100486740(v41, sub_100489614, v42, 0.0);
      }

      v44 = v67;
    }

    goto LABEL_39;
  }

  if (v68 >> 62)
  {
LABEL_37:
    v54 = sub_100574178();
    v39 = v68;
    v49 = v54;
    if (!v54)
    {
      goto LABEL_38;
    }

LABEL_30:
    if (v49 < 1)
    {
      __break(1u);
      return;
    }

    v50 = 0;
    v51 = v39 & 0xC000000000000001;
    do
    {
      if (v51)
      {
        v52 = sub_100573F58();
      }

      else
      {
        v52 = *(v39 + 8 * v50 + 32);
      }

      v53 = v52;
      ++v50;
      [v52 setAlpha:{0.0, v64}];

      v39 = v68;
    }

    while (v49 != v50);
    goto LABEL_38;
  }

  v49 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v49)
  {
    goto LABEL_30;
  }

LABEL_38:

  v44 = v67;
  sub_100483B14();
LABEL_39:
  v55 = *&v44[OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_exclusiveAnimation];
  if (v55)
  {
    v56 = swift_allocObject();
    *(v56 + 16) = v44;
    *(v56 + 24) = v4;
    v57 = swift_allocObject();
    *(v57 + 16) = sub_1004895C8;
    *(v57 + 24) = v56;
    swift_beginAccess();
    v58 = *(v55 + 24);
    v59 = v44;

    v60 = swift_isUniquelyReferenced_nonNull_native();
    *(v55 + 24) = v58;
    if ((v60 & 1) == 0)
    {
      v58 = sub_100475010(0, v58[2] + 1, 1, v58);
      *(v55 + 24) = v58;
    }

    v62 = v58[2];
    v61 = v58[3];
    if (v62 >= v61 >> 1)
    {
      v58 = sub_100475010((v61 > 1), v62 + 1, 1, v58);
    }

    v58[2] = v62 + 1;
    v63 = &v58[2 * v62];
    v63[4] = sub_1000E23F0;
    v63[5] = v57;
    *(v55 + 24) = v58;
    swift_endAccess();
  }

  else
  {
    sub_1004868CC();
  }
}

uint64_t WaveformPlayIndicator.mode.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_mode;
  swift_beginAccess();
  return *(v0 + v1);
}

void WaveformPlayIndicator.mode.setter(char a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_mode;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  sub_100481EB0(v4, a1);
}

void (*WaveformPlayIndicator.mode.modify(uint64_t *a1))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_mode;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_1004829E4;
}

void sub_1004829E4(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 24);
  v2 = *(*a1 + 32);
  v4 = *(v3 + v2);
  v5 = v1[40];
  *(v3 + v2) = v5;
  sub_100481EB0(v4, v5);

  free(v1);
}

void sub_100482A58()
{
  v0 = objc_opt_self();
  v1 = [v0 whiteColor];
  v2 = [v0 whiteColor];
  v3 = [v0 whiteColor];
  v4 = [v3 colorWithAlphaComponent:0.2];

  v5 = [v0 whiteColor];
  v6 = [v5 colorWithAlphaComponent:0.6];

  static WaveformPlayIndicator.ColorPalette.overlay = v1;
  *algn_1006FE7F8 = v2;
  qword_1006FE800 = v4;
  unk_1006FE808 = v6;
}

uint64_t *WaveformPlayIndicator.ColorPalette.overlay.unsafeMutableAddressor()
{
  if (qword_1006EED80 != -1)
  {
    swift_once();
  }

  return &static WaveformPlayIndicator.ColorPalette.overlay;
}

uint64_t static WaveformPlayIndicator.ColorPalette.overlay.getter()
{
  if (qword_1006EED80 != -1)
  {
    swift_once();
  }

  v0 = static WaveformPlayIndicator.ColorPalette.overlay;
  v1 = *algn_1006FE7F8;
  v2 = qword_1006FE800;
  v3 = unk_1006FE808;
  v4 = static WaveformPlayIndicator.ColorPalette.overlay;
  v5 = v1;
  v6 = v2;
  v7 = v3;
  return v0;
}

uint64_t static WaveformPlayIndicator.ColorPalette.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_1000D3B98(0, &unk_1006F6120, NSObject_ptr);
  if (sub_100573A58() & 1) != 0 && (sub_100573A58() & 1) != 0 && (sub_100573A58())
  {
    return sub_100573A58() & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100482CE8(uint64_t *a1, uint64_t *a2)
{
  sub_1000D3B98(0, &unk_1006F6120, NSObject_ptr);
  if (sub_100573A58() & 1) != 0 && (sub_100573A58() & 1) != 0 && (sub_100573A58())
  {
    return sub_100573A58() & 1;
  }

  else
  {
    return 0;
  }
}

void *WaveformPlayIndicator.colorPalette.getter()
{
  v1 = v0 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_colorPalette;
  swift_beginAccess();
  v2 = *v1;
  v3 = *(v1 + 8);
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = v2;
  v7 = v3;
  v8 = v5;
  v9 = v4;
  return v2;
}

void WaveformPlayIndicator.colorPalette.setter(void *a1, void *a2, void *a3, void *a4)
{
  sub_1004891C4(a1, a2, a3, a4);
}

void (*WaveformPlayIndicator.colorPalette.modify(uint64_t *a1))(void ***a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 56) = v1;
  v5 = v1 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_colorPalette;
  swift_beginAccess();
  v6 = *v5;
  v7 = *(v5 + 8);
  v9 = *(v5 + 16);
  v8 = *(v5 + 24);
  *v4 = v6;
  v4[1] = v7;
  v4[2] = v9;
  v4[3] = v8;
  v10 = v6;
  v11 = v7;
  v12 = v9;
  v13 = v8;
  return sub_100482F28;
}

void sub_100482F28(void ***a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v6 = (*a1)[2];
  v5 = (*a1)[3];
  if (a2)
  {
    v7 = v4;
    v8 = v3;
    v9 = v6;
    v10 = v5;
    sub_1004891C4(v7, v8, v9, v10);

    v4 = *v2;
    v3 = v2[1];
    v6 = v2[2];
    v5 = v2[3];
  }

  else
  {
    sub_1004891C4(**a1, v3, v6, v5);
  }

  free(v2);
}

id WaveformPlayIndicator.waveform.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_waveform;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void WaveformPlayIndicator.waveform.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_waveform;
  swift_beginAccess();
  v4 = *&v1[v3];
  *&v1[v3] = a1;
  v5 = a1;

  v6 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_mode;
  swift_beginAccess();
  if (v1[v6] == 2)
  {
    v7 = objc_opt_self();
    v8 = *&v1[OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_settings];
    [v8 animationDuration];
    v10 = v9;
    [v8 springDamping];
    v12 = v11;
    v13 = swift_allocObject();
    *(v13 + 16) = v1;
    v16[4] = sub_100489318;
    v16[5] = v13;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 1107296256;
    v16[2] = sub_10007885C;
    v16[3] = &unk_1006A6458;
    v14 = _Block_copy(v16);
    v15 = v1;

    [v7 animateWithDuration:0 delay:v14 usingSpringWithDamping:0 initialSpringVelocity:v10 options:0.0 animations:v12 completion:0.0];

    _Block_release(v14);
  }

  else
  {
  }
}

void (*WaveformPlayIndicator.waveform.modify(uint64_t *a1))(void ****a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  *a1 = v3;
  *(v3 + 72) = v1;
  swift_beginAccess();
  return sub_100483274;
}

void sub_100483274(void ****a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[9];
    v5 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_mode;
    swift_beginAccess();
    if (*(v4 + v5) == 2)
    {
      v6 = v3[9];
      v7 = objc_opt_self();
      v8 = *(v6 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_settings);
      [v8 animationDuration];
      v10 = v9;
      [v8 springDamping];
      v12 = v11;
      v13 = swift_allocObject();
      *(v13 + 16) = v6;
      v3[4] = sub_100489C0C;
      v3[5] = v13;
      *v3 = _NSConcreteStackBlock;
      v3[1] = 1107296256;
      v3[2] = sub_10007885C;
      v3[3] = &unk_1006A64A8;
      v14 = _Block_copy(v3);
      v15 = v6;

      [v7 animateWithDuration:0 delay:v14 usingSpringWithDamping:0 initialSpringVelocity:v10 options:0.0 animations:v12 completion:0.0];
      _Block_release(v14);
    }
  }

  free(v3);
}

uint64_t sub_100483400()
{
  v0 = sub_100481B68();
  v1 = v0;
  if (v0 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100574178())
  {
    v3 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = sub_100573F58();
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v7 = [v4 layer];
      v8 = sub_100572898();

      v9 = [v7 animationForKey:v8];

      if (!v9 || (v9, v10 = [v5 layer], v11 = sub_100572898(), , v12 = objc_msgSend(v10, "animationForKey:", v11), v10, v11, !v12) || (v12, v13 = objc_msgSend(v5, "layer"), v14 = sub_100572898(), , v15 = objc_msgSend(v13, "animationForKey:", v14), v13, v14, !v15))
      {

        return 0;
      }

      ++v3;
      if (v6 == i)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

LABEL_18:

  return 1;
}

void sub_100483700()
{
  v0 = sub_100481B68();
  v1 = v0;
  if (v0 >> 62)
  {
    goto LABEL_22;
  }

  v2 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_23;
  }

LABEL_3:
  sub_100573FF8();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = sub_100573F58();
      }

      else
      {
        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      ++v3;
      v6 = [v4 layer];

      sub_100573FC8();
      sub_100574008();
      sub_100574018();
      sub_100573FD8();
    }

    while (v2 != v3);

    v1 = _swiftEmptyArrayStorage;
    if (_swiftEmptyArrayStorage >> 62)
    {
      while (1)
      {
        v7 = sub_100574178();
        if (!v7)
        {
          break;
        }

LABEL_11:
        v8 = 0;
        v17 = _swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
          {
            v9 = sub_100573F58();
          }

          else
          {
            if (v8 >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_21;
            }

            v9 = _swiftEmptyArrayStorage[v8 + 4];
          }

          v10 = v9;
          v11 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            break;
          }

          v12 = sub_100572898();
          [v10 removeAnimationForKey:v12];

          v13 = sub_100572898();
          [v10 removeAnimationForKey:v13];

          v14 = sub_100572898();
          [v10 removeAnimationForKey:v14];

          v15 = [v10 presentationLayer];
          if (v15)
          {
            v16 = v15;
            [v15 frame];
            [v10 setFrame:?];
            [v16 cornerRadius];
            [v10 setCornerRadius:?];
          }

          ++v8;
          if (v11 == v7)
          {
            goto LABEL_25;
          }
        }

        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        v2 = sub_100574178();
        if (v2)
        {
          goto LABEL_3;
        }

LABEL_23:

        v1 = _swiftEmptyArrayStorage;
        if (!(_swiftEmptyArrayStorage >> 62))
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:
      v7 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7)
      {
        goto LABEL_11;
      }
    }

LABEL_25:
  }
}

void sub_100483A08(uint64_t a1, __n128 a2)
{
  sub_100483B14();
  v3 = a1 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_colorPalette;
  swift_beginAccess();
  v4 = *(v3 + 16);
  v5 = sub_100481B68();
  v6 = v5;
  if (!(v5 >> 62))
  {
    v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_10:

    return;
  }

  v7 = sub_100574178();
  if (!v7)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v7 >= 1)
  {
    for (i = 0; i != v7; ++i)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = sub_100573F58();
      }

      else
      {
        v9 = *(v6 + 8 * i + 32);
      }

      v10 = v9;
      [v9 setBackgroundColor:v4];
    }

    goto LABEL_10;
  }

  __break(1u);
}

void sub_100483B14()
{
  [v0 bounds];
  Width = CGRectGetWidth(v27);
  v2 = *&v0[OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_numberOfBars];
  [v0 bounds];
  v3 = CGRectGetWidth(v28);
  v4 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_mode;
  swift_beginAccess();
  if (v0[v4] == 2)
  {
    v5 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_waveform;
    swift_beginAccess();
    v6 = *&v0[v5];
  }

  else
  {
    v6 = [objc_opt_self() zero];
  }

  v26 = v6;
  v7 = sub_100481B68();
  v8 = v7;
  if (v7 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100574178())
  {
    v10 = Width / *&v2;
    Width = v10 * 0.5;
    v11 = v3 / *&v2 - v10 * 0.5;
    v3 = v10 * 0.5 * 0.5;
    v12 = 4;
    v13 = v11 * 0.5;
    while (1)
    {
      v14 = v12 - 4;
      if ((v8 & 0xC000000000000001) != 0)
      {
        v15 = sub_100573F58();
      }

      else
      {
        if (v14 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }

        v15 = *(v8 + 8 * v12);
      }

      v16 = v15;
      v17 = v12 - 3;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      v2 = v13 + v3 + v10 * v14;
      [v0 bounds];
      [v16 setCenter:{v2, CGRectGetMidY(v29)}];
      v18 = [v16 layer];
      [v18 setCornerRadius:v10 * 0.5 * 0.5];

      v19 = [v26 amplitudes];
      sub_1000D3B98(0, &qword_1006F1F20, NSNumber_ptr);
      v20 = sub_100572D28();

      if ((v20 & 0xC000000000000001) != 0)
      {
        v21 = sub_100573F58();
      }

      else
      {
        if (v14 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v21 = *(v20 + 8 * v12);
      }

      v22 = v21;

      [v22 doubleValue];
      v24 = v23;

      [v0 bounds];
      Height = CGRectGetHeight(v30);
      if (v24 < 1.0)
      {
        Height = v24 * Height;
      }

      if (Width > Height)
      {
        v2 = v10 * 0.5;
      }

      else
      {
        v2 = Height;
      }

      [v16 bounds];
      [v16 setBounds:?];
      [v16 bounds];
      [v16 setBounds:?];

      ++v12;
      if (v17 == i)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

LABEL_27:
}

double sub_100483E58(uint64_t a1, char *a2, char a3)
{
  sub_100009DCC(&qword_1006F4800, &qword_10059F670);
  __chkstk_darwin();
  v6 = &v13 - v5;
  v7 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_mode;
  swift_beginAccess();
  if (a2[v7] == a3)
  {
    v9 = sub_100572F48();
    (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
    sub_100572F08();
    v10 = a2;
    v11 = sub_100572EF8();
    v12 = swift_allocObject();
    v12[2] = v11;
    v12[3] = &protocol witness table for MainActor;
    v12[4] = v10;
    *&v10[OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_pulseTask] = sub_100396F38(0, 0, v6, &unk_1005A3938, v12);
  }

  return result;
}

void sub_100483FC4(uint64_t a1)
{
  sub_100483B14();
  v2 = a1 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_colorPalette;
  swift_beginAccess();
  v3 = *(v2 + 8);
  v4 = sub_100481B68();
  v5 = v4;
  if (!(v4 >> 62))
  {
    v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_10:

    return;
  }

  v6 = sub_100574178();
  if (!v6)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v6 >= 1)
  {
    for (i = 0; i != v6; ++i)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = sub_100573F58();
      }

      else
      {
        v8 = *(v5 + 8 * i + 32);
      }

      v9 = v8;
      [v8 setBackgroundColor:v3];
    }

    goto LABEL_10;
  }

  __break(1u);
}

void sub_1004840D0(unint64_t a1)
{
  sub_1004887F0(a1);
  v2 = v1;

  v3 = v2[2];
  if (v3 < 2)
  {
    return;
  }

  v4 = 0;
  v5 = 0;
  v6 = v3 >> 1;
  v7 = v3 - 1;
  v8 = 16 * v3 + 24;
  v24 = v3 >> 1;
  while (1)
  {
    if (v5 == v7)
    {
      goto LABEL_5;
    }

    v12 = v2[2];
    if (v5 >= v12)
    {
      break;
    }

    if (v7 >= v12)
    {
      goto LABEL_14;
    }

    v13 = v2[v4 + 4];
    v14 = v2[v4 + 5];
    v15 = *(v2 + v8 - 8);
    v16 = *(v2 + v8);
    v17 = v16;
    v18 = v13;
    v19 = v14;
    v20 = v15;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1004884BC(v2);
    }

    v21 = &v2[v4];
    v22 = v2[v4 + 4];
    v23 = v2[v4 + 5];
    v21[4] = v20;
    v21[5] = v16;

    if (v7 >= v2[2])
    {
      goto LABEL_15;
    }

    v9 = (v2 + v8);
    v10 = *(v2 + v8 - 8);
    v11 = *(v2 + v8);
    *(v9 - 1) = v18;
    *v9 = v14;

    v6 = v24;
LABEL_5:
    ++v5;
    --v7;
    v8 -= 16;
    v4 += 2;
    if (v6 == v5)
    {
      return;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
}

void sub_100484218(uint64_t a1)
{
  sub_100483B14();
  v2 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_colorPalette;
  swift_beginAccess();
  v3 = *(a1 + v2);
  v4 = sub_100481B68();
  v5 = v4;
  if (!(v4 >> 62))
  {
    v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_10:

    sub_100484324();
    return;
  }

  v6 = sub_100574178();
  if (!v6)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v6 >= 1)
  {
    for (i = 0; i != v6; ++i)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = sub_100573F58();
      }

      else
      {
        v8 = *(v5 + 8 * i + 32);
      }

      v9 = v8;
      [v8 setBackgroundColor:v3];
    }

    goto LABEL_10;
  }

  __break(1u);
}

void sub_100484324()
{
  v2 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_cannedAnimationAsset);
  if (!v2)
  {
    return;
  }

  v3 = sub_100193B54(3uLL);
  if (v3 > 2)
  {
    __break(1u);
LABEL_13:
    v5 = sub_100574178();
    if (v5)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

  v45 = *(&off_10069D858 + v3 + 32);
  v4 = sub_100481B68();
  v1 = v4;
  if (v4 >> 62)
  {
    goto LABEL_13;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
LABEL_5:
    v47[0] = _swiftEmptyArrayStorage;
    sub_100573FF8();
    if (v5 < 0)
    {
      __break(1u);
      return;
    }

    v6 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v7 = sub_100573F58();
      }

      else
      {
        v7 = *(v1 + 8 * v6 + 32);
      }

      v8 = v7;
      ++v6;
      v9 = [v7 layer];

      sub_100573FC8();
      sub_100574008();
      sub_100574018();
      sub_100573FD8();
    }

    while (v5 != v6);

    v10 = v47[0];
    goto LABEL_15;
  }

LABEL_14:

  v10 = _swiftEmptyArrayStorage;
LABEL_15:
  v42 = v10;
  if (v10 >> 62)
  {
    goto LABEL_56;
  }

  for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100574178())
  {
    v12 = 0;
    v44 = v2;
    v43 = i;
    while (1)
    {
      if ((v42 & 0xC000000000000001) != 0)
      {
        v13 = sub_100573F58();
      }

      else
      {
        if (v12 >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_55;
        }

        v13 = *(v42 + 32 + 8 * v12);
      }

      v14 = v13;
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      v16 = sub_100487228(v45, v12);
      if (!v16)
      {
        goto LABEL_20;
      }

      v17 = v16;
      v18 = v16 + 64;
      v19 = 1 << v16[32];
      if (v19 < 64)
      {
        v20 = ~(-1 << v19);
      }

      else
      {
        v20 = -1;
      }

      v21 = v20 & *(v16 + 8);
      v2 = (v19 + 63) >> 6;

      v22 = 0;
      if (v21)
      {
        while (1)
        {
          v23 = v22;
LABEL_34:
          v24 = __clz(__rbit64(v21));
          v21 &= v21 - 1;
          v25 = *(*(v17 + 7) + 8 * (v24 | (v23 << 6)));
          v26 = sub_100572898();

          [v14 addAnimation:v25 forKey:v26];

          v22 = v23;
          if (!v21)
          {
            goto LABEL_31;
          }
        }
      }

      while (1)
      {
LABEL_31:
        v23 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          __break(1u);
          goto LABEL_54;
        }

        if (v23 >= v2)
        {
          break;
        }

        v21 = *&v18[8 * v23];
        ++v22;
        if (v21)
        {
          goto LABEL_34;
        }
      }

      i = v43;
      v2 = v44;
      if (!*(v17 + 2))
      {
        goto LABEL_19;
      }

      v27 = sub_100429E7C(1);
      if ((v28 & 1) == 0)
      {
        goto LABEL_19;
      }

      v29 = [*(*(v17 + 7) + 8 * v27) values];
      if (!v29)
      {
        goto LABEL_19;
      }

      v30 = v29;
      v31 = sub_100572D28();

      if (!*(v31 + 16))
      {
        goto LABEL_18;
      }

      sub_100081F38(v31 + 32, v47);

      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_19;
      }

      if (!*(v17 + 2))
      {
        goto LABEL_19;
      }

      v32 = sub_100429E7C(0);
      if ((v33 & 1) == 0)
      {
        goto LABEL_19;
      }

      v34 = [*(*(v17 + 7) + 8 * v32) values];
      if (!v34)
      {
        goto LABEL_19;
      }

      v35 = v34;
      v36 = sub_100572D28();

      if (!*(v36 + 16))
      {
LABEL_18:

LABEL_19:

        goto LABEL_20;
      }

      sub_100081F38(v36 + 32, v47);

      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_19;
      }

      if (!*(v17 + 2))
      {
        goto LABEL_19;
      }

      v37 = sub_100429E7C(2);
      if ((v38 & 1) == 0)
      {
        goto LABEL_19;
      }

      v39 = *(*(v17 + 7) + 8 * v37);

      v40 = [v39 values];

      if (!v40)
      {
        goto LABEL_20;
      }

      v41 = sub_100572D28();

      if (!*(v41 + 16))
      {
        goto LABEL_19;
      }

      sub_100081F38(v41 + 32, v47);

      if (swift_dynamicCast())
      {
        [v14 frame];
        [v14 setFrame:?];
        [v14 setCornerRadius:v46];
      }

LABEL_20:

      v12 = v15;
      if (v15 == i)
      {
        goto LABEL_57;
      }
    }

LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    ;
  }

LABEL_57:
}

void sub_1004848FC(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_colorPalette;
  swift_beginAccess();
  v5 = *&a1[v4];
  v6 = sub_100481B68();
  v7 = v6;
  if (v6 >> 62)
  {
    v8 = sub_100574178();
    if (!v8)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
      goto LABEL_10;
    }
  }

  if (v8 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v8; ++i)
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v10 = sub_100573F58();
    }

    else
    {
      v10 = *(v7 + 8 * i + 32);
    }

    v11 = v10;
    [v10 setBackgroundColor:v5];
  }

LABEL_10:

  if (a2 == 3)
  {
    v12 = objc_opt_self();
    v13 = *&a1[OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_settings];
    [v13 animationDuration];
    v15 = v14;
    [v13 springDamping];
    v17 = v16;
    v18 = swift_allocObject();
    *(v18 + 16) = a1;
    aBlock[4] = sub_100489C0C;
    aBlock[5] = v18;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10007885C;
    aBlock[3] = &unk_1006A6AD0;
    v19 = _Block_copy(aBlock);
    v20 = a1;

    [v12 animateWithDuration:0 delay:v19 usingSpringWithDamping:0 initialSpringVelocity:v15 options:0.0 animations:v17 completion:0.0];
    _Block_release(v19);
  }
}

void sub_100484B24(char *a1, uint64_t a2)
{
  *&a1[OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_exclusiveAnimation] = a2;

  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_100489900;
  *(v5 + 24) = v4;
  swift_beginAccess();
  v6 = *(a2 + 24);

  v7 = a1;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 24) = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_100475010(0, v6[2] + 1, 1, v6);
    *(a2 + 24) = v6;
  }

  v10 = v6[2];
  v9 = v6[3];
  if (v10 >= v9 >> 1)
  {
    v6 = sub_100475010((v9 > 1), v10 + 1, 1, v6);
  }

  v6[2] = v10 + 1;
  v11 = &v6[2 * v10];
  v11[4] = sub_1000E6D8C;
  v11[5] = v5;
  *(a2 + 24) = v6;
  swift_endAccess();

  sub_1004868CC();
}

void sub_100484C80(char *a1)
{
  v2.receiver = a1;
  v2.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v2, "layoutSubviews");
  if (!*&a1[OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_exclusiveAnimation])
  {
    sub_100483B14();
  }
}

Swift::Void __swiftcall WaveformPlayIndicator.layoutSubviews()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, "layoutSubviews");
  if (!*&v0[OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_exclusiveAnimation])
  {
    sub_100483B14();
  }
}

void sub_100484D20()
{
  v1 = v0;
  [v0 bounds];
  Width = CGRectGetWidth(v61);
  v3 = *&v0[OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_numberOfBars];
  [v0 bounds];
  Height = CGRectGetHeight(v62);
  v5 = &v0[OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_colorPalette];
  swift_beginAccess();
  v7 = *(v5 + 2);
  v6 = *(v5 + 3);
  type metadata accessor for AnimationGroup();
  v8 = swift_allocObject();
  *(v8 + 16) = _swiftEmptyArrayStorage;
  v9 = (v8 + 16);
  *(v8 + 24) = _swiftEmptyArrayStorage;
  v45 = (v8 + 24);
  v53 = v7;
  v52 = v6;
  v10 = sub_100481B68();
  v11 = v10;
  v46 = v8;
  if (v10 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100574178())
  {
    v13 = 0;
    v50 = v11 & 0xFFFFFFFFFFFFFF8;
    v51 = v11 & 0xC000000000000001;
    v3 = Width / *&v3 * 0.5;
    Height = Height * 0.7;
    Width = 0.11;
    v48 = i;
    v49 = v11;
    v47 = v9;
    while (1)
    {
      if (v51)
      {
        v14 = sub_100573F58();
      }

      else
      {
        if (v13 >= *(v50 + 16))
        {
          goto LABEL_16;
        }

        v14 = *(v11 + 8 * v13 + 32);
      }

      v15 = v14;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      v54 = v13 + 1;
      v16 = [objc_allocWithZone(UICubicTimingParameters) initWithControlPoint1:0.11 controlPoint2:{0.0, 0.5, 0.0}];
      v17 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:v16 timingParameters:0.25];

      v18 = swift_allocObject();
      *(v18 + 16) = v15;
      *(v18 + 24) = v52;
      *(v18 + 32) = Height;
      v59 = sub_100489C04;
      v60 = v18;
      aBlock = _NSConcreteStackBlock;
      v56 = 1107296256;
      v57 = sub_10007885C;
      v58 = &unk_1006A6990;
      v19 = _Block_copy(&aBlock);
      v20 = v52;
      v21 = v15;

      [v17 addAnimations:v19];
      _Block_release(v19);
      v22 = [objc_allocWithZone(UICubicTimingParameters) initWithControlPoint1:0.11 controlPoint2:{0.0, 0.5, 0.0}];
      v23 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:v22 timingParameters:0.25];

      v24 = swift_allocObject();
      *(v24 + 16) = v21;
      *(v24 + 24) = v53;
      *(v24 + 32) = v3;
      v59 = sub_100489840;
      v60 = v24;
      aBlock = _NSConcreteStackBlock;
      v56 = 1107296256;
      v57 = sub_10007885C;
      v58 = &unk_1006A69E0;
      v25 = _Block_copy(&aBlock);
      v26 = v53;
      v27 = v21;

      [v23 addAnimations:v25];
      _Block_release(v25);
      v28 = swift_allocObject();
      *(v28 + 16) = v23;
      v59 = sub_1004898B0;
      v60 = v28;
      aBlock = _NSConcreteStackBlock;
      v56 = 1107296256;
      v9 = v47;
      v57 = sub_1001F1348;
      v58 = &unk_1006A6A30;
      v29 = _Block_copy(&aBlock);
      v30 = v23;

      [v17 addCompletion:v29];
      _Block_release(v29);
      swift_beginAccess();
      v31 = *v47;
      v32 = v17;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v47 = v31;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v31 = sub_100474F04(0, *(v31 + 2) + 1, 1, v31);
        *v47 = v31;
      }

      v35 = *(v31 + 2);
      v34 = *(v31 + 3);
      if (v35 >= v34 >> 1)
      {
        v31 = sub_100474F04((v34 > 1), v35 + 1, 1, v31);
      }

      *(v31 + 2) = v35 + 1;
      v36 = &v31[16 * v35];
      *(v36 + 4) = v32;
      *(v36 + 5) = v13 * 0.1;
      *v47 = v31;
      swift_endAccess();

      ++v13;
      v11 = v49;
      if (v54 == v48)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

LABEL_18:

  v37 = swift_allocObject();
  *(v37 + 16) = v1;
  v38 = swift_allocObject();
  *(v38 + 16) = sub_100489C08;
  *(v38 + 24) = v37;
  swift_beginAccess();
  v39 = *v45;
  v40 = v1;

  v41 = swift_isUniquelyReferenced_nonNull_native();
  *v45 = v39;
  if ((v41 & 1) == 0)
  {
    v39 = sub_100475010(0, v39[2] + 1, 1, v39);
    *v45 = v39;
  }

  v43 = v39[2];
  v42 = v39[3];
  if (v43 >= v42 >> 1)
  {
    v39 = sub_100475010((v42 > 1), v43 + 1, 1, v39);
  }

  v39[2] = v43 + 1;
  v44 = &v39[2 * v43];
  v44[4] = sub_1000E6D8C;
  v44[5] = v38;
  *(v46 + 24) = v39;
  swift_endAccess();

  *&v40[OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_exclusiveAnimation] = v46;

  sub_1004868CC();
}

uint64_t sub_1004853C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_100574078();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  sub_100572F08();
  v4[6] = sub_100572EF8();
  v7 = sub_100572E78();
  v4[7] = v7;
  v4[8] = v6;

  return _swift_task_switch(sub_1004854B8, v7, v6);
}

uint64_t sub_1004854B8(__n128 a1)
{
  result = sub_100572FC8();
  if (result)
  {

    v3 = v1[1];

    return v3();
  }

  v4 = *(v1[2] + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_numberOfBars);
  v5 = 100 * v4;
  if ((v4 * 100) >> 64 != (100 * v4) >> 63)
  {
    __break(1u);
    goto LABEL_13;
  }

  v6 = __OFADD__(v5, 500);
  v7 = v5 + 500;
  if (v6)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v6 = __OFADD__(v7, 600);
  v8 = v7 + 600;
  v1[9] = v8;
  if (v6)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v8 < 0)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v9 = 1000000000000000 * v8;
  v10 = (v8 * 0x38D7EA4C68000uLL) >> 64;
  sub_100484D20();
  sub_1005745A8();
  v11 = swift_task_alloc();
  v1[10] = v11;
  *v11 = v1;
  v11[1] = sub_10048563C;

  return sub_100488004(v9, v10, 0, 0, 1);
}

uint64_t sub_10048563C()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[5];
  v5 = v2[4];
  v6 = v2[3];
  v7 = (v5 + 8);
  if (v0)
  {

    (*v7)(v4, v6);
    v8 = v3[7];
    v9 = v3[8];
    v10 = sub_100489BCC;
  }

  else
  {
    (*v7)(v4, v6);
    v8 = v3[7];
    v9 = v3[8];
    v10 = sub_1004857D4;
  }

  return _swift_task_switch(v10, v8, v9);
}

uint64_t sub_1004857D4(__n128 a1)
{
  if (sub_100572FC8())
  {

    v2 = v1[1];

    return v2();
  }

  else
  {
    v4 = v1[9];
    sub_100484D20();
    sub_1005745A8();
    v5 = swift_task_alloc();
    v1[10] = v5;
    *v5 = v1;
    v5[1] = sub_10048563C;

    return sub_100488004(1000000000000000 * v4, (v4 * 0x38D7EA4C68000uLL) >> 64, 0, 0, 1);
  }
}

Swift::Void __swiftcall WaveformPlayIndicator.tintColorDidChange()()
{
  v10.receiver = v0;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, "tintColorDidChange");
  v1 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_mode;
  swift_beginAccess();
  if (*(v0 + v1) == 2)
  {
    v2 = [v0 tintColor];
    if (!v2)
    {
      goto LABEL_15;
    }

    v3 = v2;
    v4 = sub_100481B68();
    v5 = v4;
    if (v4 >> 62)
    {
      v6 = sub_100574178();
      if (v6)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
LABEL_5:
        if (v6 >= 1)
        {
          for (i = 0; i != v6; ++i)
          {
            if ((v5 & 0xC000000000000001) != 0)
            {
              v8 = sub_100573F58();
            }

            else
            {
              v8 = *(v5 + 8 * i + 32);
            }

            v9 = v8;
            [v8 setBackgroundColor:v3];
          }

          goto LABEL_12;
        }

        __break(1u);
LABEL_15:
        __break(1u);
        return;
      }
    }

LABEL_12:
  }
}

Swift::Void __swiftcall WaveformPlayIndicator.didMoveToWindow()()
{
  v4.receiver = v0;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, "didMoveToWindow");
  v1 = [v0 window];
  if (v1)
  {
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v0;
  sub_10056E488();
  sub_100485D18(v3);
}

void WaveformPlayIndicator.isVisible.setter(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  sub_10056E488();
  sub_100485D18(v3);
}

void sub_100485D18(char a1)
{
  v1 = a1 & 1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  if (v3 != v1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10056E478();

    if (v2 == 1)
    {
      sub_100483B14();
    }
  }
}

uint64_t WaveformPlayIndicator.isVisible.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  return v1;
}

void sub_100485E60(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  *a2 = v3;
}

void sub_100485EE0(char *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  swift_getKeyPath();
  swift_getKeyPath();
  v2;
  sub_10056E488();
  sub_100485D18(v3);
}

void (*WaveformPlayIndicator.isVisible.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  *(a1 + 8) = *(a1 + 9);
  return sub_100486044;
}

void sub_100486044(uint64_t a1)
{
  v2 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = *a1;
  sub_10056E478();

  v4 = *(a1 + 9);
  swift_getKeyPath();
  swift_getKeyPath();
  *(a1 + 9) = v2;
  v5 = v3;
  sub_10056E488();
  sub_100485D18(v4);
}

uint64_t WaveformPlayIndicator.$isVisible.getter()
{
  swift_beginAccess();
  sub_100009DCC(&qword_1006F2220, &unk_1005A3660);
  sub_10056E448();
  return swift_endAccess();
}

uint64_t WaveformPlayIndicator.$isVisible.setter(uint64_t a1)
{
  v2 = sub_100009DCC(&qword_1006F5698, &qword_1005A2490);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_100009DCC(&qword_1006F2220, &unk_1005A3660);
  sub_10056E458();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*WaveformPlayIndicator.$isVisible.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_100009DCC(&qword_1006F5698, &qword_1005A2490);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator__isVisible;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_100009DCC(&qword_1006F2220, &unk_1005A3660);
  sub_10056E448();
  swift_endAccess();
  return sub_10028A670;
}

void sub_100486434()
{
  v1 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_numberOfBars);
  if (v1 < 0)
  {
    __break(1u);
  }

  else if (v1)
  {
    sub_100573FF8();
    do
    {
      v2 = [objc_allocWithZone(UIView) init];
      v3 = [v2 layer];
      [v3 setCornerCurve:kCACornerCurveContinuous];

      v4 = [v2 layer];
      [v4 setAllowsEdgeAntialiasing:1];

      v5 = [v2 tintColor];
      [v2 setBackgroundColor:v5];

      sub_100573FC8();
      sub_100574008();
      sub_100574018();
      sub_100573FD8();
      --v1;
    }

    while (v1);
  }
}

uint64_t sub_100486700@<X0>(uint64_t *a2@<X8>)
{
  swift_getObjectType();
  result = sub_10056E408();
  *a2 = result;
  return result;
}

uint64_t sub_100486740(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  if (a2)
  {
    v17[4] = a2;
    v17[5] = a3;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 1107296256;
    v17[2] = sub_10007885C;
    v17[3] = &unk_1006A6760;
    v9 = _Block_copy(v17);
    sub_1000E672C(a2, a3);

    [a1 addAnimations:v9];
    _Block_release(v9);
    sub_1000F3E14(a2, a3);
  }

  swift_beginAccess();
  v10 = *(v4 + 16);
  v11 = a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v4 + 16) = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = sub_100474F04(0, *(v10 + 2) + 1, 1, v10);
    *(v4 + 16) = v10;
  }

  v14 = *(v10 + 2);
  v13 = *(v10 + 3);
  if (v14 >= v13 >> 1)
  {
    v10 = sub_100474F04((v13 > 1), v14 + 1, 1, v10);
  }

  *(v10 + 2) = v14 + 1;
  v15 = &v10[16 * v14];
  *(v15 + 4) = v11;
  *(v15 + 5) = a4;
  *(v4 + 16) = v10;
  return swift_endAccess();
}

void sub_1004868CC()
{
  v1 = v0;
  v2 = sub_100570B88();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v29 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100570BC8();
  v27 = *(v5 - 8);
  v28 = v5;
  __chkstk_darwin();
  v26 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = dispatch_group_create();
  swift_beginAccess();
  v8 = *(*(v0 + 16) + 16);
  if (v8)
  {
    v23 = v0;
    v24 = v3;
    v25 = v2;

    v9 = (v22 + 40);
    do
    {
      v10 = *(v9 - 1);
      v11 = *v9;
      v9 += 2;
      v12 = v10;
      dispatch_group_enter(v7);
      [v12 startAnimationAfterDelay:v11];
      v13 = swift_allocObject();
      *(v13 + 16) = v7;
      v35 = sub_100489578;
      v36 = v13;
      aBlock = _NSConcreteStackBlock;
      v32 = 1107296256;
      v33 = sub_1001F1348;
      v34 = &unk_1006A6710;
      v14 = _Block_copy(&aBlock);
      v15 = v12;
      v16 = v7;

      [v15 addCompletion:v14];
      _Block_release(v14);

      --v8;
    }

    while (v8);

    v3 = v24;
    v2 = v25;
    v1 = v23;
  }

  sub_1000D3B98(0, &qword_1006F3420, OS_dispatch_queue_ptr);
  v25 = sub_1005735E8();
  v35 = sub_100489580;
  v36 = v1;
  aBlock = _NSConcreteStackBlock;
  v32 = 1107296256;
  v33 = sub_10007885C;
  v34 = &unk_1006A6738;
  v17 = _Block_copy(&aBlock);

  v18 = v26;
  sub_100570BA8();
  v30 = _swiftEmptyArrayStorage;
  sub_1004897B8(&qword_1006EF668, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100009DCC(&qword_1006EF670, &unk_1005A3920);
  sub_100010BC0(&qword_1006EF678, &qword_1006EF670, &unk_1005A3920, &protocol conformance descriptor for [A]);
  v19 = v29;
  sub_100573DA8();
  v20 = v25;
  sub_100573588();
  _Block_release(v17);

  (*(v3 + 8))(v19, v2);
  (*(v27 + 8))(v18, v28);
}

double sub_100486D00(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(a1 + 24);
  v4 = *(v3 + 16);
  if (v4)
  {

    v5 = v3 + 40;
    do
    {
      v6 = *(v5 - 8);

      v6(v7);

      v5 += 16;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_100486D94()
{

  return swift_deallocClassInstance();
}

void sub_100486DD4()
{
  v0 = sub_10056C8A8();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C910(v4, qword_1006F6410);
  v5 = sub_10000C49C(v0, qword_1006F6410);
  if (qword_1006EE950 != -1)
  {
    swift_once();
  }

  v6 = qword_1006FDF00;
  v7 = sub_100572898();
  v8 = sub_100572898();
  v9 = [v6 URLForResource:v7 withExtension:v8];

  if (v9)
  {
    sub_10056C838();

    (*(v1 + 32))(v5, v3, v0);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100486F7C()
{
  v1 = v0;
  v2 = sub_10056C8A8();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + 16) = xmmword_100597040;
  *(v1 + 32) = 0x4030000000000000;
  if (qword_1006EED88 != -1)
  {
    swift_once();
  }

  v6 = sub_10000C49C(v2, qword_1006F6410);
  (*(v3 + 16))(v5, v6, v2);
  *(v1 + 40) = sub_100488B80(v5);
  *(v1 + 48) = v7;
  return v1;
}

id sub_100487228(uint64_t a1, unint64_t a2)
{
  sub_10048798C(a1, a2);
  if (!v3)
  {
LABEL_25:
    if (qword_1006EED90 != -1)
    {
LABEL_43:
      swift_once();
    }

    v33 = sub_10056DF88();
    sub_10000C49C(v33, qword_1006F6428);
    v34 = sub_10056DF68();
    v35 = sub_100573448();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "BouncyBars asset does not have expected layers / animations", v36, 2u);
    }

    return 0;
  }

  v4 = v3;
  v5 = [v3 values];
  if (!v5)
  {

    goto LABEL_25;
  }

  v6 = v5;
  v7 = sub_100572D28();

  [v4 copy];
  sub_100573D58();
  swift_unknownObjectRelease();
  sub_1000D3B98(0, &qword_1006F66E0, CAKeyframeAnimation_ptr);
  swift_dynamicCast();
  v8 = v49;
  [v4 copy];
  sub_100573D58();
  swift_unknownObjectRelease();
  swift_dynamicCast();
  v45 = v49;
  v43 = v4;
  [v4 copy];
  sub_100573D58();
  swift_unknownObjectRelease();
  swift_dynamicCast();
  v44 = v49;
  v46 = v7;
  v9 = *(v7 + 16);
  if (v9)
  {
    v10 = 0;
    v11 = v46 + 32;
    while (1)
    {
      if (v10 >= v9)
      {
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      *&v49 = v10;
      sub_100081F38(v11, &v49 + 8);
      v52 = v49;
      v53 = v50;
      v54 = v51;
      if (!v51)
      {
        goto LABEL_31;
      }

      v47 = v49;
      sub_1000F51DC((&v52 + 8), &v49);
      if (!swift_dynamicCast())
      {
        swift_bridgeObjectRelease_n();
        if (qword_1006EED90 != -1)
        {
          swift_once();
        }

        v39 = sub_10056DF88();
        sub_10000C49C(v39, qword_1006F6428);
        v40 = sub_10056DF68();
        v41 = sub_100573448();
        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          *v42 = 0;
          _os_log_impl(&_mh_execute_header, v40, v41, "BouncyBars asset does not have expected layers / animations", v42, 2u);
        }

        return 0;
      }

      v12 = v48 / 100.0 * v2[4];
      *(&v50 + 1) = &type metadata for CGFloat;
      *&v49 = v12;
      result = [v8 values];
      if (!result)
      {
        break;
      }

      v14 = result;
      v15 = sub_100572D28();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_1004884D0(v15);
      }

      if ((v47 & 0x8000000000000000) != 0)
      {
        goto LABEL_38;
      }

      if (v47 >= *(v15 + 16))
      {
        goto LABEL_39;
      }

      v16 = v15 + 32 * v47;
      sub_100010474((v16 + 32));
      sub_1000F51DC(&v49, (v16 + 32));
      isa = sub_100572D08().super.isa;

      [v8 setValues:isa];

      v18 = v45;
      v19 = sub_100572898();
      [v18 setKeyPath:v19];

      v20 = v2[3];
      v21 = v20 + v2[2];
      if (v20 > v21)
      {
        goto LABEL_40;
      }

      v22 = v20 + v48 / 100.0 * (v21 - v20);
      *(&v50 + 1) = &type metadata for CGFloat;
      *&v49 = v22;
      result = [v18 values];
      if (!result)
      {
        goto LABEL_45;
      }

      v23 = result;
      v24 = sub_100572D28();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_1004884D0(v24);
      }

      if (v47 >= *(v24 + 16))
      {
        goto LABEL_41;
      }

      v25 = v24 + 32 * v47;
      sub_100010474((v25 + 32));
      sub_1000F51DC(&v49, (v25 + 32));
      v26 = sub_100572D08().super.isa;

      [v18 setValues:v26];

      v27 = v44;
      v28 = sub_100572898();
      [v27 setKeyPath:v28];

      *(&v50 + 1) = &type metadata for CGFloat;
      *&v49 = v22 * 0.5;
      result = [v27 values];
      if (!result)
      {
        goto LABEL_46;
      }

      v29 = result;
      v30 = sub_100572D28();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_1004884D0(v30);
      }

      if (v47 >= *(v30 + 16))
      {
        goto LABEL_42;
      }

      ++v10;
      v31 = v30 + 32 * v47;
      sub_100010474((v31 + 32));
      sub_1000F51DC(&v49, (v31 + 32));
      v32 = sub_100572D08().super.isa;

      [v27 setValues:v32];

      v9 = *(v46 + 16);
      v11 += 32;
      if (v10 == v9)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
  }

  else
  {
LABEL_30:
    v54 = 0;
    v52 = 0u;
    v53 = 0u;
LABEL_31:
    swift_bridgeObjectRelease_n();
    sub_100009DCC(&qword_1006F66E8, &qword_1005A3910);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100580F90;
    *(inited + 32) = 0;
    *(inited + 40) = v8;
    *(inited + 48) = 1;
    *(inited + 56) = v45;
    *(inited + 64) = 2;
    *(inited + 72) = v44;
    v38 = sub_100385EBC(inited);
    swift_setDeallocating();
    sub_100009DCC(&qword_1006F66F0, &qword_1005A3918);
    swift_arrayDestroy();

    return v38;
  }

  return result;
}

void sub_10048798C(uint64_t a1, unint64_t a2)
{
  v4 = *(v2 + 40);
  v5 = (a1 << 56) + 0x41746E6169726156;

  v6 = sub_100487B68(v5, 0xE800000000000000, v4);

  if (!v6)
  {
    return;
  }

  v7 = [v6 sublayers];

  if (!v7)
  {
    return;
  }

  sub_1000D3B98(0, &qword_1006EF8F8, CALayer_ptr);
  v8 = sub_100572D28();

  if ((v8 & 0xC000000000000001) == 0)
  {
    if ((a2 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
    {
      v9 = *(v8 + 8 * a2 + 32);
      goto LABEL_7;
    }

    __break(1u);
    return;
  }

  v9 = sub_100573F58();
LABEL_7:
  v10 = v9;

  v11 = [v10 animationKeys];
  if (v11)
  {
    v12 = v11;
    v13 = sub_100572D28();

    if (*(v13 + 16))
    {

      v14 = sub_100572898();

      v15 = [v10 animationForKey:v14];

      if (v15)
      {
        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {
        }
      }
    }

    else
    {
    }
  }

  else
  {
  }
}

uint64_t sub_100487B68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16) && (v4 = sub_100429D94(a1, a2), (v5 & 1) != 0))
  {
    sub_100081F38(*(a3 + 56) + 32 * v4, v7);
  }

  else
  {
    memset(v7, 0, sizeof(v7));
  }

  sub_100009DCC(&qword_1006F6190, &unk_100599090);
  sub_1000D3B98(0, &qword_1006EF8F8, CALayer_ptr);
  if (swift_dynamicCast())
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100487C10(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = "cannedHeightAnimation";
  v4 = 0xD000000000000014;
  if (v2 == 1)
  {
    v5 = 0xD000000000000014;
  }

  else
  {
    v5 = 0xD000000000000015;
  }

  if (v2 == 1)
  {
    v6 = "cannedHeightAnimation";
  }

  else
  {
    v6 = "cannedWidthAnimation";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000015;
  }

  if (v2)
  {
    v8 = v6;
  }

  else
  {
    v8 = "ntroller1XCroppedImage";
  }

  if (*a2 != 1)
  {
    v4 = 0xD000000000000015;
    v3 = "cannedWidthAnimation";
  }

  if (*a2)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0xD000000000000015;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = "ntroller1XCroppedImage";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_100574498();
  }

  return v11 & 1;
}

Swift::Int sub_100487CE4()
{
  sub_100574678();
  sub_1005729F8();

  return sub_1005746C8();
}

double sub_100487D7C(uint64_t a1)
{
  sub_1005729F8();

  return result;
}

Swift::Int sub_100487E00(uint64_t a1)
{
  sub_100574678();
  sub_1005729F8();

  return sub_1005746C8();
}

unint64_t sub_100487E94@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100489B54(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_100487EC4(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000015;
  v3 = "cannedHeightAnimation";
  v4 = 0xD000000000000014;
  if (*v1 != 1)
  {
    v4 = 0xD000000000000015;
    v3 = "cannedWidthAnimation";
  }

  if (*v1)
  {
    v2 = v4;
    v5 = v3;
  }

  else
  {
    v5 = "ntroller1XCroppedImage";
  }

  *a1 = v2;
  a1[1] = v5 | 0x8000000000000000;
}

uint64_t sub_100487F2C()
{
  v0 = sub_10056DF88();
  sub_10000C910(v0, qword_1006F6428);
  sub_10000C49C(v0, qword_1006F6428);
  sub_1000D3B98(0, &qword_1006EF948, OS_os_log_ptr);
  OS_os_log.init(musicCategory:)(0x614279636E756F42, 0xEF74657373417372);
  return sub_10056DF98();
}

uint64_t sub_100487FBC()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100488004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_100574068();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return _swift_task_switch(sub_100488104, 0, 0);
}

uint64_t sub_100488104()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_100574078();
  v5 = sub_1004897B8(&qword_1006F66F8, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  sub_100574588();
  sub_1004897B8(&qword_1006F6700, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  sub_100574088();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_100488294;
  v8 = v0[11];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v8, v0 + 2, v4, v5);
}

uint64_t sub_100488294()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return _swift_task_switch(sub_100488450, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_100488450()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1004884E4(uint64_t a1)
{
  v41 = sub_100009DCC(&qword_1006F2F58, &qword_10059E9C0);
  v2 = *(v41 - 8);
  __chkstk_darwin();
  v4 = (&v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v6 = &v36 - v5;
  v7 = *(a1 + 16);
  v8 = _swiftEmptyArrayStorage;
  if (v7)
  {
    v9 = *(v2 + 80);
    v38 = v9;
    v39 = (v9 + 32) & ~v9;
    v10 = _swiftEmptyArrayStorage + v39;
    v11 = 0;
    v12 = 0;
    v13 = *(type metadata accessor for PlaylistCurators.Curator(0) - 8);
    v14 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v40 = *(v13 + 72);
    v15 = _swiftEmptyArrayStorage;
    v36 = v7;
    v37 = v2;
    while (1)
    {
      v17 = *(v41 + 48);
      *v4 = v11;
      sub_10048996C(v14, v4 + v17);
      sub_1004899D0(v4, v6);
      if (v12)
      {
        v8 = v15;
        v16 = __OFSUB__(v12--, 1);
        if (v16)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v18 = v15[3];
        if (((v18 >> 1) + 0x4000000000000000) < 0)
        {
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
          return;
        }

        v19 = v6;
        v20 = v18 & 0xFFFFFFFFFFFFFFFELL;
        if (v20 <= 1)
        {
          v21 = 1;
        }

        else
        {
          v21 = v20;
        }

        sub_100009DCC(&qword_1006F6738, &qword_1005A3958);
        v22 = *(v2 + 72);
        v23 = v39;
        v8 = swift_allocObject();
        v24 = j__malloc_size(v8);
        if (!v22)
        {
          goto LABEL_34;
        }

        v25 = v24 - v23;
        if (v24 - v23 == 0x8000000000000000 && v22 == -1)
        {
          goto LABEL_35;
        }

        v27 = v25 / v22;
        v8[2] = v21;
        v8[3] = 2 * (v25 / v22);
        v28 = v8 + v23;
        v29 = v15[3] >> 1;
        v30 = v29 * v22;
        if (v15[2])
        {
          if (v8 < v15 || v28 >= v15 + v39 + v30)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v8 != v15)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v15[2] = 0;
        }

        v10 = &v28[v30];
        v32 = (v27 & 0x7FFFFFFFFFFFFFFFLL) - v29;

        v6 = v19;
        v7 = v36;
        v2 = v37;
        v16 = __OFSUB__(v32, 1);
        v12 = v32 - 1;
        if (v16)
        {
LABEL_27:
          __break(1u);
          break;
        }
      }

      ++v11;
      sub_1004899D0(v6, v10);
      v10 += *(v2 + 72);
      v14 += v40;
      v15 = v8;
      if (v7 == v11)
      {
        goto LABEL_29;
      }
    }
  }

  v12 = 0;
LABEL_29:
  v33 = v8[3];
  if (v33 >= 2)
  {
    v34 = v33 >> 1;
    v16 = __OFSUB__(v34, v12);
    v35 = v34 - v12;
    if (v16)
    {
      goto LABEL_36;
    }

    v8[2] = v35;
  }
}

void sub_1004887F0(unint64_t a1)
{

  v2 = 0;
  v3 = _swiftEmptyArrayStorage;
  for (i = &_swiftEmptyArrayStorage[4]; ; i += 2)
  {
    v5 = a1 >> 62;
    if (a1 >> 62)
    {
      break;
    }

    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_53;
    }

LABEL_4:
    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = sub_100573F58();
    }

    else
    {
      if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
        goto LABEL_64;
      }

      v6 = *(a1 + 32);
    }

    v7 = v6;
    if (v5)
    {
      if (!sub_100574178())
      {
        goto LABEL_61;
      }

      if (sub_100574178() < 1)
      {
        goto LABEL_62;
      }

      v8 = sub_100574178();
    }

    else
    {
      v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v8)
      {
        goto LABEL_61;
      }
    }

    v9 = v8 - 1;
    if (__OFSUB__(v8, 1))
    {
      goto LABEL_58;
    }

    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (!v5)
      {
        v10 = a1 & 0xFFFFFFFFFFFFFF8;
        if (v9 <= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_21;
        }

        goto LABEL_20;
      }

LABEL_19:
      sub_100574178();
      goto LABEL_20;
    }

    if (v5)
    {
      goto LABEL_19;
    }

LABEL_20:
    a1 = sub_100573F68();
    v10 = a1 & 0xFFFFFFFFFFFFFF8;
LABEL_21:

    if (a1 >> 62)
    {
      v17 = sub_100574178();
      if (__OFSUB__(v17, 1))
      {
        goto LABEL_67;
      }

      memmove((v10 + 32), (v10 + 40), 8 * (v17 - 1));
      v18 = sub_100574178();
      if (__OFSUB__(v18, 1))
      {
        goto LABEL_68;
      }

      *(v10 + 16) = v18 - 1;
      if (!sub_100574178())
      {
LABEL_39:
        v15 = 0;
        if (v2)
        {
          goto LABEL_28;
        }

        goto LABEL_40;
      }
    }

    else
    {
      v11 = *(v10 + 16);
      memmove((v10 + 32), (v10 + 40), 8 * v11 - 8);
      *(v10 + 16) = v11 - 1;
      if (v11 == 1)
      {
        goto LABEL_39;
      }
    }

    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (a1 >> 62 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
    {
      a1 = sub_1000F2364(a1);
      v10 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    v13 = *(v10 + 16);
    if (!v13)
    {
      goto LABEL_60;
    }

    v14 = v13 - 1;
    v15 = *(v10 + 8 * v14 + 32);
    *(v10 + 16) = v14;
    if (v2)
    {
LABEL_28:
      v16 = __OFSUB__(v2--, 1);
      if (v16)
      {
        goto LABEL_59;
      }

      goto LABEL_52;
    }

LABEL_40:
    v19 = v3[3];
    if (((v19 >> 1) + 0x4000000000000000) < 0)
    {
      goto LABEL_63;
    }

    v20 = v19 & 0xFFFFFFFFFFFFFFFELL;
    if (v20 <= 1)
    {
      v21 = 1;
    }

    else
    {
      v21 = v20;
    }

    sub_100009DCC(&qword_1006F61B0, &qword_1005A32A0);
    v22 = swift_allocObject();
    v23 = j__malloc_size(v22);
    v24 = v23 - 32;
    if (v23 < 32)
    {
      v24 = v23 - 17;
    }

    v25 = v24 >> 4;
    v22[2] = v21;
    v22[3] = 2 * (v24 >> 4);
    v26 = (v22 + 4);
    v27 = v3[3] >> 1;
    if (v3[2])
    {
      v28 = v3 + 4;
      if (v22 != v3 || v26 >= v28 + 16 * v27)
      {
        memmove(v22 + 4, v28, 16 * v27);
      }

      v3[2] = 0;
    }

    i = (v26 + 16 * v27);
    v29 = (v25 & 0x7FFFFFFFFFFFFFFFLL) - v27;

    v3 = v22;
    v16 = __OFSUB__(v29, 1);
    v2 = v29 - 1;
    if (v16)
    {
      goto LABEL_59;
    }

LABEL_52:
    *i = v7;
    i[1] = v15;
  }

  if (sub_100574178())
  {
    if (!sub_100574178())
    {
      goto LABEL_65;
    }

    if (!sub_100574178())
    {
      goto LABEL_66;
    }

    goto LABEL_4;
  }

LABEL_53:

  v30 = v3[3];
  if (v30 < 2)
  {
    return;
  }

  v31 = v30 >> 1;
  v16 = __OFSUB__(v31, v2);
  v32 = v31 - v2;
  if (!v16)
  {
    v3[2] = v32;
    return;
  }

LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
}

void *sub_100488B80(uint64_t a1)
{
  v3 = sub_10056C8C8();
  if (v1)
  {
    goto LABEL_2;
  }

  v7 = v3;
  v8 = v4;
  sub_1000D3B98(0, &qword_1006F6708, NSKeyedUnarchiver_ptr);
  sub_100009DCC(&qword_1006F6710, &qword_1005A3950);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100582420;
  *(v9 + 32) = sub_1000D3B98(0, &qword_1006EF8F8, CALayer_ptr);
  *(v9 + 40) = sub_1000D3B98(0, &qword_1006F6718, NSMutableDictionary_ptr);
  *(v9 + 48) = sub_1000D3B98(0, &qword_1006F6720, NSArray_ptr);
  *(v9 + 56) = sub_1000D3B98(0, &qword_1006F6728, NSString_ptr);
  *(v9 + 64) = sub_1000D3B98(0, &qword_1006F1F20, NSNumber_ptr);
  sub_100573578();

  if (!v17)
  {
    sub_100374094(v16);
    goto LABEL_14;
  }

  sub_100009DCC(&qword_1006EFC88, &qword_100599FF0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_14:
    sub_100489918();
    swift_allocError();
    swift_willThrow();
    sub_10008246C(v7, v8);
LABEL_2:
    v5 = sub_10056C8A8();
    return (*(*(v5 - 8) + 8))(a1, v5);
  }

  if (!v15[2] || (v10 = sub_100429D94(0x6579614C746F6F72, 0xE900000000000072), (v11 & 1) == 0) || (sub_100081F38(v15[7] + 32 * v10, v16), (swift_dynamicCast() & 1) == 0))
  {

    goto LABEL_14;
  }

  if (!v15[2] || (v12 = sub_100429D94(0xD000000000000010, 0x80000001005BB920), (v13 & 1) == 0))
  {

    goto LABEL_16;
  }

  sub_100081F38(v15[7] + 32 * v12, v16);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:

    goto LABEL_14;
  }

  v14 = sub_10056C8A8();
  (*(*(v14 - 8) + 8))(a1, v14);
  sub_10008246C(v7, v8);
  return v15;
}

void _s11MusicCoreUI21WaveformPlayIndicatorC5coderACSgSo7NSCoderC_tcfc_0()
{
  v1 = v0;
  v18 = sub_100009DCC(&qword_1006F2220, &unk_1005A3660);
  v2 = *(v18 - 8);
  __chkstk_darwin();
  v4 = &v16 - v3;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_mode) = 0;
  v5 = (v0 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_colorPalette);
  v6 = objc_opt_self();
  v17 = [v6 tintColor];
  v7 = [v6 labelColor];
  v8 = [v7 colorWithAlphaComponent:0.35];

  v9 = [v6 labelColor];
  v10 = [v9 colorWithAlphaComponent:0.2];

  v11 = [v6 labelColor];
  v12 = [v11 colorWithAlphaComponent:0.6];

  *v5 = v17;
  v5[1] = v8;
  v5[2] = v10;
  v5[3] = v12;
  v13 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_waveform;
  *(v1 + v13) = [objc_opt_self() zero];
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_exclusiveAnimation) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_pulseTask) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_barRatio) = 0x3FE0000000000000;
  v14 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator__isVisible;
  v19 = 0;
  sub_10056E438();
  (*(v2 + 32))(v1 + v14, v4, v18);
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator____lazy_storage___bars) = 0;
  v15 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_cannedAnimationAsset;
  type metadata accessor for BouncyBarsAsset();
  swift_allocObject();
  *(v1 + v15) = sub_100486F7C();
  sub_1005740F8();
  __break(1u);
}

void sub_1004891C4(void *a1, void *a2, void *a3, void *a4)
{
  v9 = v4 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_colorPalette;
  swift_beginAccess();
  v10 = *v9;
  v11 = *(v9 + 8);
  v12 = *(v9 + 16);
  v13 = *(v9 + 24);
  *v9 = a1;
  *(v9 + 8) = a2;
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  sub_1000D3B98(0, &unk_1006F6120, NSObject_ptr);
  v14 = a1;
  v15 = a2;
  v16 = a3;
  v17 = a4;
  if ((sub_100573A58() & 1) == 0 || (sub_100573A58() & 1) == 0 || (sub_100573A58() & 1) == 0 || (sub_100573A58() & 1) == 0)
  {
    sub_100481BCC();
  }
}

uint64_t sub_1004892E0()
{

  return swift_deallocObject();
}

uint64_t sub_100489320(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100489344()
{
  result = qword_1006F6498;
  if (!qword_1006F6498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F6498);
  }

  return result;
}

uint64_t type metadata accessor for WaveformPlayIndicator(uint64_t a1)
{
  result = qword_1006F64C8;
  if (!qword_1006F64C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1004893EC(uint64_t a1)
{
  sub_1004894C4();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1004894C4()
{
  if (!qword_1006F2398)
  {
    v0 = sub_10056E4A8();
    if (!v1)
    {
      atomic_store(v0, &qword_1006F2398);
    }
  }
}

uint64_t sub_100489588()
{

  return swift_deallocObject();
}

uint64_t sub_1004895D0()
{

  return swift_deallocObject();
}

uint64_t sub_10048961C()
{

  return swift_deallocObject();
}

id sub_10048965C()
{
  v1 = *(v0 + 24);
  [*(v0 + 16) setAlpha:1.0];

  return [v1 setAlpha:1.0];
}

uint64_t sub_1004896C4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100489704(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000CB98;

  return sub_1004853C4(a1, v4, v5, v6);
}

uint64_t sub_1004897B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100489800()
{

  return swift_deallocObject();
}

id sub_100489844()
{
  v1 = *(v0 + 16);
  [v1 setBackgroundColor:*(v0 + 24)];
  [v1 bounds];

  return [v1 setBounds:?];
}

id sub_1004898B0(id result)
{
  if (!result)
  {
    return [*(v1 + 16) startAnimation];
  }

  return result;
}

uint64_t sub_1004898C8()
{

  return swift_deallocObject();
}

double sub_100489900()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_exclusiveAnimation) = 0;

  return result;
}

unint64_t sub_100489918()
{
  result = qword_1006F6730;
  if (!qword_1006F6730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F6730);
  }

  return result;
}

uint64_t sub_10048996C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaylistCurators.Curator(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004899D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009DCC(&qword_1006F2F58, &qword_10059E9C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100489AA8()
{
  result = qword_1006F6750;
  if (!qword_1006F6750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F6750);
  }

  return result;
}

unint64_t sub_100489B00()
{
  result = qword_1006F6758;
  if (!qword_1006F6758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F6758);
  }

  return result;
}

unint64_t sub_100489B54(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10069D880;
  v6._object = a2;
  v4 = sub_100574238(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

id sub_100489C44()
{
  result = sub_100489C64();
  qword_1006FE810 = result;
  return result;
}

id sub_100489C64()
{
  v0 = sub_10056C8A8();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v52 = &v48 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = *(sub_100009DCC(&qword_1006F69B0, &unk_1005A46A0) - 8);
  __chkstk_darwin();
  v53 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v48 - v5;
  __chkstk_darwin();
  v8 = &v48 - v7;
  __chkstk_darwin();
  v55 = &v48 - v9;
  __chkstk_darwin();
  v11 = &v48 - v10;
  v54 = sub_10048A2A8(_swiftEmptyArrayStorage);
  sub_100009DCC(&qword_1006F69B8, &qword_1005A3ED0);
  v12 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v56 = *(v3 + 72);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100580F90;
  v58 = v12;
  v51 = v13;
  v14 = v13 + v12;
  v15 = objc_opt_self();
  v16 = [v15 mainBundle];
  v17 = [v16 resourceURL];

  if (v17)
  {
    sub_10056C838();

    v18 = *(v1 + 56);
    v19 = v11;
    v20 = 0;
  }

  else
  {
    v18 = *(v1 + 56);
    v19 = v11;
    v20 = 1;
  }

  v57 = v18;
  v18(v19, v20, 1, v0);
  sub_10048A978(v11, v14);
  type metadata accessor for BundleFinder();
  v21 = [v15 bundleForClass:swift_getObjCClassFromMetadata()];
  v22 = [v21 resourceURL];

  if (v22)
  {
    v23 = v55;
    sub_10056C838();

    v24 = 0;
  }

  else
  {
    v24 = 1;
    v23 = v55;
  }

  v25 = (v1 + 56);
  v26 = v57;
  v57(v23, v24, 1, v0);
  v49 = v1;
  v27 = v56;
  sub_10048A978(v23, v14 + v56);
  v28 = [v15 mainBundle];
  v29 = [v28 bundleURL];

  sub_10056C838();
  v55 = v25;
  v26(v14 + 2 * v27, 0, 1, v0);
  v59 = v54;
  sub_10048A9E8(v51);
  v30 = v59;
  v31 = v59[2];
  v32 = v53;
  if (v31)
  {
    v33 = 0;
    v34 = v58 + v59;
    v58 = (v49 + 6);
    v54 = (v49 + 1);
    v49 += 4;
    v50 = "319BF3FEA1012BundleFinder";
    v51 = v31;
    while (v33 < v30[2])
    {
      sub_10048AB20(v34, v6);
      v35 = *v58;
      if ((*v58)(v6, 1, v0) == 1)
      {
        sub_10048AB90(v6);
        v36 = 1;
      }

      else
      {
        sub_10056C808();
        (*v54)(v6, v0);
        v36 = 0;
      }

      v57(v8, v36, 1, v0);
      sub_10048AB20(v8, v32);
      if (v35(v32, 1, v0) == 1)
      {
        sub_10048AB90(v8);
      }

      else
      {
        v37 = v30;
        v38 = v8;
        v39 = v6;
        v40 = v52;
        (*v49)(v52, v32, v0);
        v41 = objc_allocWithZone(NSBundle);
        sub_10056C7E8(v42);
        v44 = v43;
        v45 = [v41 initWithURL:v43];

        v32 = v53;
        v46 = v40;
        v6 = v39;
        v8 = v38;
        v30 = v37;
        v31 = v51;
        (*v54)(v46, v0);
        sub_10048AB90(v8);
        if (v45)
        {

          return v45;
        }
      }

      ++v33;
      v34 += v56;
      if (v31 == v33)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }

LABEL_19:
  result = sub_1005740F8();
  __break(1u);
  return result;
}

void *sub_10048A2A8(uint64_t a1)
{
  v2 = sub_10056C8A8();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100009DCC(&qword_1006F69B0, &unk_1005A46A0);
  v6 = *(v19 - 8);
  __chkstk_darwin();
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = _swiftEmptyArrayStorage;
  if (v9)
  {
    v20 = _swiftEmptyArrayStorage;
    sub_10048ABF8(0, v9, 0);
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v10 = v20;
    v13 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v17 = *(v11 + 56);
    v18 = v12;
    do
    {
      v18(v5, v13, v2);
      swift_dynamicCast();
      v20 = v10;
      v15 = v10[2];
      v14 = v10[3];
      if (v15 >= v14 >> 1)
      {
        sub_10048ABF8((v14 > 1), v15 + 1, 1);
        v10 = v20;
      }

      v10[2] = v15 + 1;
      sub_10048A978(v8, v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15);
      v13 += v17;
      --v9;
    }

    while (v9);
  }

  return v10;
}

uint64_t variable initialization expression of ShaderFallback.calculator()
{
  type metadata accessor for ShaderFallback.Calculator(0);
  swift_allocObject();
  return sub_100496D38();
}

__n128 sub_10048A54C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_10048A578(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 368))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10048A598(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 360) = 0;
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
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
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

  *(result + 368) = v3;
  return result;
}

uint64_t sub_10048A660(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_10056CFD8();
}

Swift::Int sub_10048A7C4(uint64_t a1, uint64_t a2)
{
  sub_100574678();
  swift_getWitnessTable();
  sub_10056CFE8();
  return sub_1005746C8();
}

uint64_t sub_10048A874(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10048A8BC(uint64_t a1)
{
  sub_10048A874(&qword_1006F6A00, type metadata accessor for Option, &unk_1005A40E0);
  sub_10048A874(&qword_1006F6A08, type metadata accessor for Option, &unk_1005A4034);

  return sub_100574218();
}

uint64_t sub_10048A978(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009DCC(&qword_1006F69B0, &unk_1005A46A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_10048A9E8(uint64_t a1)
{
  v2 = *(a1 + 16);
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

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_100492B9C(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = (v3[3] >> 1) - v3[2];
  sub_100009DCC(&qword_1006F69B0, &unk_1005A46A0);
  if (v8 < v2)
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
    return;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

uint64_t sub_10048AB20(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009DCC(&qword_1006F69B0, &unk_1005A46A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10048AB90(uint64_t a1)
{
  v2 = sub_100009DCC(&qword_1006F69B0, &unk_1005A46A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_10048ABF8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10048AC18(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10048AC18(void *result, int64_t a2, char a3, void *a4)
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

  sub_100009DCC(&qword_1006F69B8, &qword_1005A3ED0);
  v10 = *(sub_100009DCC(&qword_1006F69B0, &unk_1005A46A0) - 8);
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
  v15 = *(sub_100009DCC(&qword_1006F69B0, &unk_1005A46A0) - 8);
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

__n128 sub_10048AE08(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10048AE1C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10048AE3C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
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

  *(result + 40) = v3;
  return result;
}

__n128 sub_10048AE84(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 sub_10048AEB8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_10048AED4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 80))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10048AEF4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 80) = v3;
  return result;
}

__n128 sub_10048AF48(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10048AF5C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10048AF7C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 64) = v3;
  return result;
}

__n128 initializeBufferWithCopyOfBuffer for Backdrop.RGBColor(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

double sub_10048B0E4()
{
  xmmword_1006FE820 = xmmword_1005A3B00;
  *algn_1006FE830 = xmmword_1005A3B10;
  result = 0.0;
  xmmword_1006FE840 = xmmword_1005A3B20;
  unk_1006FE850 = xmmword_1005A3B30;
  return result;
}

void sub_10048B118(void *a1)
{
  v3 = [v1 vertexCount];
  if ((v3 & 0x8000000000000000) != 0)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    return;
  }

  v4 = v3;
  if (v3)
  {
    v5 = 0;
    v6 = _swiftEmptyArrayStorage;
    do
    {
      [v1 vertexAtIndex:{v5, *&v32}];
      [a1 vertexAtIndex:v5];
      v32 = v34;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_100492E88(0, *(v6 + 2) + 1, 1, v6);
      }

      v8 = *(v6 + 2);
      v7 = *(v6 + 3);
      if (v8 >= v7 >> 1)
      {
        v6 = sub_100492E88((v7 > 1), v8 + 1, 1, v6);
      }

      ++v5;
      *(&v9 + 1) = *&v33.f64[1];
      *&v9 = vcvt_f32_f64(v33);
      *&v10 = vcvt_f32_f64(v34);
      *&v11 = v35;
      *(&v10 + 1) = v11;
      *&v12 = v10;
      *&v13 = v35;
      *(&v12 + 1) = v13;
      *(v6 + 2) = v8 + 1;
      v14 = &v6[64 * v8];
      *(v14 + 2) = v9;
      *(v14 + 6) = v9;
      *(v14 + 4) = v10;
      *(v14 + 5) = v12;
    }

    while (v4 != v5);
  }

  v15 = [v1 faceCount];
  if ((v15 & 0x8000000000000000) != 0)
  {
    goto LABEL_36;
  }

  v16 = v15;
  if (v15)
  {
    v17 = 0;
    v18 = _swiftEmptyArrayStorage;
    while (1)
    {
      [v1 faceAtIndex:v17];
      sub_100009DCC(&unk_1006F6B40, &unk_1005A4670);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100581E80;
      if (HIWORD(LODWORD(v33.f64[0])))
      {
        break;
      }

      v20 = inited;
      *(inited + 32) = LOWORD(v33.f64[0]);
      if (HIWORD(LODWORD(v33.f64[1])))
      {
        goto LABEL_29;
      }

      *(inited + 34) = LOWORD(v33.f64[1]);
      if (HIWORD(HIDWORD(v33.f64[1])))
      {
        goto LABEL_30;
      }

      *(inited + 36) = WORD2(v33.f64[1]);
      *(inited + 38) = LOWORD(v33.f64[0]);
      if (HIWORD(HIDWORD(v33.f64[0])))
      {
        goto LABEL_31;
      }

      *(inited + 40) = WORD2(v33.f64[0]);
      *(inited + 42) = LOWORD(v33.f64[1]);
      v21 = *(v18 + 2);
      v22 = v21 + 6;
      if (__OFADD__(v21, 6))
      {
        goto LABEL_32;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || (v24 = *(v18 + 3) >> 1, v24 < v22))
      {
        if (v21 <= v22)
        {
          v25 = v21 + 6;
        }

        else
        {
          v25 = v21;
        }

        v18 = sub_100492D8C(isUniquelyReferenced_nonNull_native, v25, 1, v18);
        v24 = *(v18 + 3) >> 1;
      }

      v26 = *(v18 + 2);
      if (v24 - v26 < 6)
      {
        goto LABEL_33;
      }

      v27 = *(v20 + 32);
      v28 = &v18[2 * v26];
      *(v28 + 10) = *(v20 + 40);
      *(v28 + 4) = v27;

      v29 = *(v18 + 2);
      v30 = __OFADD__(v29, 6);
      v31 = v29 + 6;
      if (v30)
      {
        goto LABEL_34;
      }

      ++v17;
      *(v18 + 2) = v31;
      if (v16 == v17)
      {
        return;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }
}

uint64_t sub_10048B404(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_framebufferPixelFormat);
  *(v1 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_framebufferPixelFormat) = result;
  if (v2 != result)
  {
    v3 = *(v1 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_renderers + 16);
    *(v3 + 16) = result;
    *(v3 + 160) = sub_10048DA60();

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_10048B478(void *a1, char a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_imageStorage;
  v7 = *(v2 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_imageStorage);
  if (!a1)
  {
    *(v2 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_imageStorage) = 0;
    v10 = 0;

    goto LABEL_17;
  }

  if (v7)
  {
    _s3__C7CGImageCMa_0(0);
    sub_100491560(&qword_1006F7658, _s3__C7CGImageCMa_0, &unk_1005A3E28);
    v8 = v7;
    v9 = sub_10056CFD8();

    if (v9)
    {
      return;
    }

    v6 = OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_imageStorage;
  }

  v11 = *(v3 + v6);
  *(v3 + v6) = a1;
  v12 = a1;

  v13 = *(v3 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_renderers);
  v14 = *(v13 + 24);
  if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (v14 <= -9.22337204e18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v14 >= 9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v15 = *(v13 + 32);
  if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v15 <= -9.22337204e18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v15 >= 9.22337204e18)
  {
LABEL_27:
    __break(1u);
    return;
  }

  v16 = sub_10048B6F8(v14, 0, v15, 0);
  if (v16)
  {
    v20 = v16;
    sub_10048BF18(v16, 0, 0, 0, a2 & 1);

    return;
  }

LABEL_17:
  v17 = sub_10048CB20(*(v3 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_placeholderColor), *(v3 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_placeholderColor + 8), *(v3 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_placeholderColor + 16));
  v18 = 1.0;
  if (a2)
  {
    v18 = 0.0;
  }

  *(v3 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_textureTransitionMix) = v18;
  v19 = *(v3 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_renderers);
  *(v19 + 96) = v17;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(v19 + 104) = 1;

  swift_unknownObjectRelease();
}