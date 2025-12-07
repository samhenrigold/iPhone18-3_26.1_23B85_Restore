void sub_1003C3064(uint64_t *a1, char a2)
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
    sub_1002EC870(v2 + 624, v2 + 728);
    sub_1002EC870(v2 + 624, v2 + 728);
    sub_1002EC870(v2 + 104, v2 + 728);
    sub_100007214(v4, &qword_10060B3F8, &qword_1004DD250);
    sub_1003C6790((v2 + 104));
    sub_100007214(v2 + 104, &qword_10060B3F8, &qword_1004DD250);
    sub_100007214(v2 + 624, &qword_10060B3F8, &qword_1004DD250);
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
    sub_1002EC870(v2 + 208, v2 + 624);
    sub_1002EC870(v4, v2 + 624);
    sub_100007214(v2 + 416, &qword_10060B3F8, &qword_1004DD250);
    sub_1003C6790((v2 + 208));
    sub_100007214(v2 + 208, &qword_10060B3F8, &qword_1004DD250);
    v28 = v4;
  }

  sub_100007214(v28, &qword_10060B3F8, &qword_1004DD250);

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
  sub_1003C789C(v3);
}

void (*VerticalToggleSlider.isOn.modify(uint64_t a1))(uint64_t *a1)
{
  v2 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode;
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + v2) != 2;
  return sub_1003C3354;
}

void sub_1003C3354(uint64_t *a1)
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
  sub_1003C789C(v4);
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

    sub_1003C4C98(*(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange) + (((a1 - v2) / (v3 - v2)) * (*(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange + 4) - *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange))));
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
    return sub_1003C34CC;
  }

  return result;
}

void sub_1003C34CC(float **a1, char a2)
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

  sub_1003C4C98(*(v3 + *(v2 + 3)) + ((*(v3 + *(v2 + 3) + 4) - *(v3 + *(v2 + 3))) * ((v6 - v4) / (v5 - v4))));

  free(v2);
}

void VerticalToggleSlider.minValue.setter(float a1)
{
  if (*(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue) <= a1)
  {
    v8[0] = 0;
    v8[1] = 0xE000000000000000;
    sub_1004BD404(145);
    v9._object = 0x800000010050AEB0;
    v9._countAndFlagsBits = 0xD000000000000042;
    sub_1004BC024(v9);
    sub_1004BC634();
    v10._countAndFlagsBits = 3026478;
    v10._object = 0xE300000000000000;
    sub_1004BC024(v10);
    sub_1004BC634();
    v11._countAndFlagsBits = 0xD000000000000048;
    v11._object = 0x800000010050AF00;
    sub_1004BC024(v11);
    if (qword_100609AB0 != -1)
    {
      swift_once();
    }

    v2 = sub_1004B80B4();
    sub_100007084(v2, qword_100618E80);

    v3 = sub_1004B8094();
    v4 = sub_1004BC994();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v8[0] = v6;
      *v5 = 136446210;
      v7 = sub_1002C4260(0, 0xE000000000000000, v8);

      *(v5 + 4) = v7;
      _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s", v5, 0xCu);
      sub_100004C6C(v6);
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
  return sub_1003C37D4;
}

void VerticalToggleSlider.maxValue.setter(float a1)
{
  if (*(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue) >= a1)
  {
    v8[0] = 0;
    v8[1] = 0xE000000000000000;
    sub_1004BD404(145);
    v9._object = 0x800000010050AEB0;
    v9._countAndFlagsBits = 0xD000000000000042;
    sub_1004BC024(v9);
    sub_1004BC634();
    v10._countAndFlagsBits = 3026478;
    v10._object = 0xE300000000000000;
    sub_1004BC024(v10);
    sub_1004BC634();
    v11._countAndFlagsBits = 0xD000000000000048;
    v11._object = 0x800000010050AF00;
    sub_1004BC024(v11);
    if (qword_100609AB0 != -1)
    {
      swift_once();
    }

    v2 = sub_1004B80B4();
    sub_100007084(v2, qword_100618E80);

    v3 = sub_1004B8094();
    v4 = sub_1004BC994();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v8[0] = v6;
      *v5 = 136446210;
      v7 = sub_1002C4260(0, 0xE000000000000000, v8);

      *(v5 + 4) = v7;
      _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s", v5, 0xCu);
      sub_100004C6C(v6);
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
  return sub_1003C3A6C;
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
    sub_1004BD404(164);
    v10._object = 0x800000010050AEB0;
    v10._countAndFlagsBits = 0xD000000000000042;
    sub_1004BC024(v10);
    sub_1004BC634();
    v11._countAndFlagsBits = 3026478;
    v11._object = 0xE300000000000000;
    sub_1004BC024(v11);
    sub_1004BC634();
    v12._countAndFlagsBits = 0xD00000000000005BLL;
    v12._object = 0x800000010050AF50;
    sub_1004BC024(v12);
    if (qword_100609AB0 != -1)
    {
      swift_once();
    }

    v3 = sub_1004B80B4();
    sub_100007084(v3, qword_100618E80);

    v4 = sub_1004B8094();
    v5 = sub_1004BC994();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v9[0] = v7;
      *v6 = 136446210;
      v8 = sub_1002C4260(0, 0xE000000000000000, v9);

      *(v6 + 4) = v8;
      _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s", v6, 0xCu);
      sub_100004C6C(v7);
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
    return sub_1003C3D48;
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
    sub_1003C56AC(0x100000000);
    v5 = sub_1003C5294();
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
  return sub_1003C3F58;
}

void sub_1003C3F58(uint64_t a1, char a2)
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
      sub_1003C56AC(0x100000000);
      v8 = sub_1003C5294();
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

    v9 = sub_1003C5210();
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
  return sub_1003C4418;
}

void sub_1003C4418(id **a1, char a2, __n128 a3)
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

  v11 = sub_1003C5210();
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
    sub_1003C6084();
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
  return sub_1003C4818;
}

void sub_1003C4818(uint64_t a1, __n128 a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  v5 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v6 = *(v5 + v4);
  *(v5 + v4) = v3;
  if (v3 != v6)
  {
    sub_1003C6084();
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
  v4 = sub_1003C4BDC();
  v5 = v1[v3];
  v6 = [v1 traitCollection];
  *&v7 = sub_1003C6A5C(v6, v5).n128_u64[0];
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
  return sub_1003C4A38;
}

void sub_1003C4A38(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = v3[4];
    v6 = sub_1003C4BDC();
    v7 = v4[v5];
    v8 = [v4 traitCollection];
    *&v9 = sub_1003C6A5C(v8, v7).n128_u64[0];
    v11 = v10;

    [v6 setAnchorPoint:{v9, v11}];
    v12 = *&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___growView];
    [v4 bounds];
    [v12 setFrame:?];
  }

  free(v3);
}

id sub_1003C4B28()
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

id sub_1003C4BDC()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___growView;
  v2 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___growView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___growView);
  }

  else
  {
    v4 = sub_1003C4B28();
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

void sub_1003C4C98(float a1)
{
  v2 = *&v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValue];
  *&v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValue] = a1;
  if (v2 != a1)
  {
    v3 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode;
    v4 = v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode];
    if (v4 == 2 || (v4 & 1) == 0)
    {
      sub_1003C56AC(0x100000000);
      v10 = sub_1003C5294();
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

id sub_1003C4DA4()
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

void sub_1003C4E1C()
{
  v1 = [v0 traitCollection];
  v2 = [v1 accessibilityContrast];

  v3 = sub_1003C5210();
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
    v15 = sub_1003C5294();
    v16 = [v12 whiteColor];
    [v15 setBackgroundColor:v16];
LABEL_8:

    sub_1003C5E0C();
    return;
  }

  [v5 setCompositingFilter:0];

  v6 = v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode];
  v7 = [*&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___visualEffectView] contentView];
  if (v6 != 2)
  {
    v17 = objc_allocWithZone(UIColor);
    v20[4] = sub_1003C77EC;
    v20[5] = 0;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 1107296256;
    v20[2] = sub_100399BF8;
    v20[3] = &unk_1005C6C58;
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
    v16 = sub_1003C5294();
    v15 = [v0 tintColor];
    [v16 setBackgroundColor:v15];
    goto LABEL_8;
  }

  __break(1u);
}

void sub_1003C5150()
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

  v5 = sub_1003C5210();
  v6 = v5;
  v7 = 1.0;
  if (v2)
  {
    v7 = 0.5;
  }

  [v5 setAlpha:v7];
}

id sub_1003C5210()
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

id sub_1003C5294()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___levelView;
  v2 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___levelView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___levelView);
  }

  else
  {
    v4 = sub_1003C5210();
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

id sub_1003C5350()
{
  v1 = sub_1003C4BDC();
  [v1 setUserInteractionEnabled:0];

  v2 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___growView;
  [*&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___growView] setAutoresizingMask:18];
  v3 = *&v0[v2];
  v4 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_growAnchorPoint;
  swift_beginAccess();
  v5 = v0[v4];
  v6 = v3;
  v7 = [v0 traitCollection];
  *&v8 = sub_1003C6A5C(v7, v5).n128_u64[0];
  v10 = v9;

  [v6 setAnchorPoint:{v8, v10}];
  v11 = *&v0[v2];
  [v0 bounds];
  [v11 setFrame:?];

  [v0 addSubview:*&v0[v2]];
  v12 = sub_1003C4B28();
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

void sub_1003C5510()
{
  v1 = sub_1003C5294();
  [v1 setUserInteractionEnabled:0];

  v2 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___levelView;
  v3 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___levelView];
  v4 = sub_1004BBE24();
  [v3 setAccessibilityIdentifier:v4];

  [*&v0[v2] setAutoresizingMask:26];
  v5 = sub_1003C5210();
  v6 = [v5 contentView];

  [v6 addSubview:*&v0[v2]];
  sub_1003C56AC(0x100000000);
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

void sub_1003C56AC(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode) == 2)
  {
    v31 = sub_1003C5294();
    v2 = sub_1003C5210();
    [v2 bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;

    [v31 setFrame:{v4, v6, v8, v10}];
  }

  else
  {
    v12 = sub_1003C5210();
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

    v30 = sub_1003C5294();
    [*(v1 + v24) bounds];
    [v30 setFrame:{0.0, v29, CGRectGetWidth(v36), v27}];
  }
}

void sub_1003C5888()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageDefinition];
  swift_beginAccess();
  v4 = *(v2 + 5);
  v57 = *(v2 + 4);
  v58 = v4;
  v59 = v2[96];
  v5 = *(v2 + 1);
  v53 = *v2;
  v54 = v5;
  v6 = *(v2 + 3);
  v55 = *(v2 + 2);
  v56 = v6;
  v60[0] = v53;
  v60[1] = v5;
  v60[2] = v55;
  v60[3] = v6;
  v60[4] = v57;
  v60[5] = v4;
  v61 = v59;
  if (*(&v53 + 1))
  {
    v7 = *(v2 + 5);
    v51[4] = *(v2 + 4);
    v51[5] = v7;
    v52 = v2[96];
    v8 = *(v2 + 1);
    v51[0] = *v2;
    v51[1] = v8;
    v9 = *(v2 + 3);
    v51[2] = *(v2 + 2);
    v51[3] = v9;
    v10 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView;
    v11 = *&v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView];
    if (v11)
    {
      v12 = v11;
      sub_1002EC870(&v53, v49);
      CoreAnimationPackageView.reset()();
    }

    else
    {
      v13 = objc_allocWithZone(type metadata accessor for CoreAnimationPackageView(0, v3));
      v49[4] = v57;
      v49[5] = v58;
      v50 = v59;
      v49[0] = v53;
      v49[1] = v54;
      v49[2] = v55;
      v49[3] = v56;
      sub_1002BA0E0(v49, v48);
      sub_1002BA0E0(v60, v48);
      v14 = CoreAnimationPackageView.init(definition:)(v51);
      v15 = UIView.forAutolayout.getter();

      v12 = v15;
      [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
      v16 = *&v1[v10];
      *&v1[v10] = v12;
      if (v16)
      {
        v17 = v12;
        v18 = v16;
        v19 = sub_1004BCFA4();

        if ((v19 & 1) == 0)
        {
          [v18 removeFromSuperview];
        }
      }

      v20 = sub_1003C5210();
      v21 = [v20 contentView];

      [v21 addSubview:v12];
      sub_100003ABC(&qword_10060EC20, &qword_1004DC490);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_1004C51B0;
      v23 = [v12 topAnchor];
      v24 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___visualEffectView;
      v25 = [*&v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___visualEffectView] topAnchor];
      v26 = [v23 constraintGreaterThanOrEqualToAnchor:v25];

      *(v22 + 32) = v26;
      v27 = [v12 leadingAnchor];
      v28 = [*&v1[v24] leadingAnchor];
      v29 = [v27 constraintEqualToAnchor:v28];

      *(v22 + 40) = v29;
      v30 = [v12 trailingAnchor];
      v31 = [*&v1[v24] trailingAnchor];
      v32 = [v30 constraintEqualToAnchor:v31];

      *(v22 + 48) = v32;
      v33 = [v12 bottomAnchor];
      v34 = [*&v1[v24] bottomAnchor];
      v35 = [v33 constraintEqualToAnchor:v34];

      *(v22 + 56) = v35;
      v36 = [v12 heightAnchor];
      v37 = [v12 widthAnchor];

      v38 = [v36 constraintEqualToAnchor:v37];
      *(v22 + 64) = v38;
      Array<A>.activate()(v22);
    }

    v39 = &v12[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateName];
    if (v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode] == 2)
    {
      swift_beginAccess();
      v40 = *v39;
      v41 = v39[1];
      *v39 = xmmword_1004D9CE0;
      sub_1002BC3E8(v40, v41);
    }

    else
    {
      swift_beginAccess();
      v42 = *v39;
      v43 = v39[1];
      *v39 = xmmword_1004D9CD0;
      v44 = v12;
      sub_1002BC3E8(v42, v43);

      sub_100009130(0, &qword_10060E4F0, OS_dispatch_queue_ptr);
      v45 = sub_1004BCB44();
      v46 = swift_allocObject();
      *(v46 + 16) = v1;
      *(v46 + 24) = v44;
      v47 = v1;
      OS_dispatch_queue.asyncAfter(_:block:)(sub_1003CB854, v46, 1.0);
    }

    sub_1003C5E0C();
    sub_100007214(&v53, &qword_10060B3F8, &qword_1004DD250);
  }

  else
  {
    v12 = *&v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView];
    *&v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView] = 0;
    if (!v12)
    {
      return;
    }

    [v12 removeFromSuperview];
  }
}

void sub_1003C5E0C()
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
          sub_1002BD418();

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
          sub_1002BD418();

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

void sub_1003C6084()
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

void sub_1003C6164(void *a1)
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
        v7 = sub_1003C4BDC();
        [a1 locationInView:v7];
        v9 = v8;
        v11 = v10;

        sub_1003C6504(v9, v11);
      }

      else if (v5 == 1)
      {
        v6 = v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode];
        v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode] = 1;
        sub_1003C789C(v6);
        [v1 sendActionsForControlEvents:0x10000];
        [v1 sendActionsForControlEvents:4096];
        *&v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_initialValue] = *&v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValue];
      }
    }

    else
    {
      sub_1003C6400();
    }
  }
}

void sub_1003C62A0(void *a1)
{
  v2 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode;
  if (v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode] != 2)
  {
    v4 = [a1 state];
    if ((v4 - 3) >= 3)
    {
      if (v4 == 2)
      {
        v12 = sub_1003C4BDC();
        [a1 locationInView:v12];
        v14 = v13;
        v16 = v15;

        sub_1003C6504(v14, v16);
      }

      else if (v4 == 1)
      {
        [v1 sendActionsForControlEvents:0x10000];
        v5 = v1[v2];
        v1[v2] = 1;
        sub_1003C789C(v5);
        v6 = sub_1003C4BDC();
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

      sub_1003C6400();
    }
  }
}

id sub_1003C6400()
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
    sub_1003C789C(v8);
    v9 = &v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_initialDraggingLocation];
    *v9 = 0;
    *(v9 + 1) = 0;
    v9[16] = 1;
    return [v0 sendActionsForControlEvents:0x40000];
  }

  return result;
}

void sub_1003C6504(double a1, double a2)
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

  v6 = sub_1003C4BDC();
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

  sub_1003C4C98(v19);
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
      v28 = vmulq_n_f64(xmmword_1004D9CF0, v22.n128_f64[0]);
      v22.n128_f64[1] = v27;
      v21 = vdupq_n_s64(0x3F847AE147AE147BuLL);
      v29 = vmulq_f64(v22, v21);
    }

    else
    {
      v28 = xmmword_100611350;
      v29 = *&qword_100611360;
    }

    v30 = &v2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange];
    v21.n128_u64[0] = *&v2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange];
    v22.n128_u64[0] = *&v2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange + 8];
    v23.n128_u64[0] = *&v2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange + 16];
    v24.n128_u64[0] = *&v2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange + 24];
    *v30 = v28;
    v30[1] = v29;
    sub_1003CA3C4(v21, v22, v23, v24);
    LOBYTE(v38) = 1;
    sub_1003C56AC(0x100000000);
    v31 = sub_1003C5294();
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

void sub_1003C6790(uint64_t *a1)
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
      sub_1002EC870(v58, v33);
      sub_1002EC870(v58, v33);
      sub_1002EC870(a1, v33);
      v16 = _s11MusicCoreUI19CAPackageDefinitionV23__derived_struct_equalsySbAC_ACtFZ_0(v56, &v35);
      sub_100007214(v58, &qword_10060B3F8, &qword_1004DD250);
      sub_100007214(&v26, &qword_10060B3F8, &qword_1004DD250);
      v33[0] = v9;
      v33[4] = v53;
      v33[5] = v54;
      v34 = v55;
      v33[1] = v50;
      v33[2] = v51;
      v33[3] = v52;
      sub_100007214(v33, &qword_10060B3F8, &qword_1004DD250);
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
    sub_1002EC870(v58, v56);
    sub_1002EC870(a1, v56);
    sub_100007214(&v35, &qword_10060B3F8, &qword_1004DD250);
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
  sub_1002EC870(v58, v56);
  sub_1002EC870(a1, v56);
  sub_100007214(&v35, &qword_1006114D8, &qword_1004E6368);
LABEL_7:
  v23 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView);
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView) = 0;
  if (v23)
  {
    [v23 removeFromSuperview];
  }

  sub_1003C5888();
}

__n128 sub_1003C6A5C(id a1, uint64_t a2)
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
  result.n128_u64[0] = sub_1003C6A5C(0, a2).n128_u64[0];
  result.n128_u64[1] = v7;
  return result;
}

char *VerticalToggleSlider.init(frame:)(double a1, double a2, double a3, double a4)
{
  swift_getObjectType();
  sub_100003ABC(&qword_100610D00, &qword_1004DB780);
  __chkstk_darwin();
  v10 = &v44 - v9;
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
  v14 = [objc_opt_self() effectWithBlurRadius:10.0];
  *&v4[v13] = v14;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___visualEffectView] = 0;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView] = 0;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___levelView] = 0;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_sceneActivationObserver] = 0;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_longPressGestureRecognizer] = 0;
  v15 = &v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_initialDraggingLocation];
  *v15 = 0;
  *(v15 + 1) = 0;
  v15[16] = 1;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_initialValue] = 0;
  v16 = &v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange];
  v17 = *&qword_100611360;
  *v16 = xmmword_100611350;
  v16[1] = v17;
  v18 = &v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_stretchTransform];
  *v18 = 0x3FF0000000000000;
  v18[1] = 0;
  v18[2] = 0;
  v18[3] = 0x3FF0000000000000;
  v18[4] = 0;
  v18[5] = 0;
  v19 = &v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_growTransform];
  *v19 = 0x3FF0000000000000;
  v19[1] = 0;
  v19[2] = 0;
  v19[3] = 0x3FF0000000000000;
  v21 = type metadata accessor for VerticalToggleSlider(v14, v20);
  v19[4] = 0;
  v19[5] = 0;
  v45.receiver = v4;
  v45.super_class = v21;
  v22 = objc_msgSendSuper2(&v45, "initWithFrame:", a1, a2, a3, a4);
  [v22 setDeliversTouchesForGesturesToSuperview:0];
  sub_100009130(0, &qword_10060AC30, UIAction_ptr);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = sub_1004BCFD4();
  [v22 addAction:v23 forControlEvents:64];

  v24 = [objc_allocWithZone(UIPanGestureRecognizer) initWithTarget:v22 action:"dragged:"];
  [v22 addGestureRecognizer:v24];

  sub_1003C6084();
  [v22 setClipsToBounds:0];
  sub_1003C5350();
  v25 = sub_1003C5210();
  [v25 setUserInteractionEnabled:0];

  v26 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___visualEffectView;
  [*&v22[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___visualEffectView] setClipsToBounds:0];
  [*&v22[v26] setAutoresizingMask:18];
  v27 = *&v22[v26];
  v28 = sub_1003C4B28();
  [v28 bounds];
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;

  [v27 setFrame:{v30, v32, v34, v36}];
  v37 = [*&v22[v26] contentView];
  v38 = [v37 layer];

  [v38 setCompositingFilter:kCAFilterPlusL];
  [*&v22[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___stretchView] addSubview:*&v22[v26]];
  sub_1003C5510();
  sub_1003C4E1C();
  sub_1003C5888();
  v39 = sub_1003C4B28();
  sub_1004BCED4();
  v40 = sub_1004BCEE4();
  (*(*(v40 - 8) + 56))(v10, 0, 1, v40);
  sub_1004BCEF4();

  sub_100003ABC(qword_10060CCB0, &unk_1004E4A50);
  v41 = swift_allocObject();
  v44 = xmmword_1004C50A0;
  *(v41 + 16) = xmmword_1004C50A0;
  *(v41 + 32) = sub_1004B83C4();
  *(v41 + 40) = &protocol witness table for UITraitAccessibilityContrast;
  sub_1004BCF24();
  swift_unknownObjectRelease();

  v42 = swift_allocObject();
  *(v42 + 16) = v44;
  *(v42 + 32) = sub_1004B8244();
  *(v42 + 40) = &protocol witness table for UITraitLayoutDirection;
  sub_1004BCF24();

  swift_unknownObjectRelease();

  return v22;
}

void VerticalToggleSlider.isEnabled.setter(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = type metadata accessor for VerticalToggleSlider(a1, a2);
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

    v10 = sub_1003C5210();
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
  sub_100003ABC(&qword_100610D00, &qword_1004DB780);
  __chkstk_darwin();
  v2 = &v8 - v1;
  v5 = type metadata accessor for VerticalToggleSlider(v3, v4);
  v8.receiver = v0;
  v8.super_class = v5;
  objc_msgSendSuper2(&v8, "layoutSubviews");
  v6 = sub_1003C4B28();
  sub_1004BCED4();
  v7 = sub_1004BCEE4();
  (*(*(v7 - 8) + 56))(v2, 0, 1, v7);
  sub_1004BCEF4();
}

Swift::Void __swiftcall VerticalToggleSlider.tintColorDidChange()()
{
  v3.receiver = v2;
  v3.super_class = type metadata accessor for VerticalToggleSlider(v0, v1);
  objc_msgSendSuper2(&v3, "tintColorDidChange");
  sub_1003C4E1C();
}

BOOL VerticalToggleSlider.point(inside:with:)(CGFloat a1, CGFloat a2)
{
  [v2 bounds];
  v8 = CGRectInset(v7, -14.0, -14.0);
  v6.x = a1;
  v6.y = a2;
  return CGRectContainsPoint(v8, v6);
}

id sub_1003C77EC(void *a1)
{
  v2 = [a1 userInterfaceStyle] == 2;
  v3 = [objc_opt_self() tintColor];
  v4 = [v3 resolvedColorWithTraitCollection:a1];

  v5 = [v4 colorWithAlphaComponent:dbl_1004D9D00[v2]];
  return v5;
}

void sub_1003C789C(int a1)
{
  v2 = v1;
  sub_100003ABC(&qword_100610D00, &qword_1004DB780);
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
      sub_1003C4C98(1.0);
    }
  }

  else if (((v7 ^ a1) & 1) == 0)
  {
    return;
  }

  v8 = sub_1003C4DA4();
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
        v12 = qword_100609E30;
        v13 = v1;
        if (v12 != -1)
        {
          swift_once();
        }

        v14 = qword_1006113A0;
        [qword_1006113A0 settlingDuration];
        v16 = v15;
        [v14 mass];
        v18 = v17;
        [v14 stiffness];
        v20 = v19;
        [v14 damping];
        v22 = v21;
        *&aBlock.tx = sub_1003CB960;
        *&aBlock.ty = v11;
        *&aBlock.a = _NSConcreteStackBlock;
        *&aBlock.b = 1107296256;
        *&aBlock.c = sub_1000D6C80;
        *&aBlock.d = &unk_1005C6FF0;
        v23 = _Block_copy(&aBlock);

        [v9 _animateUsingSpringWithDuration:6 delay:v23 options:0 mass:v16 stiffness:0.0 damping:v18 initialVelocity:v20 animations:v22 completion:0.0];
        _Block_release(v23);
        if (qword_100609E38 != -1)
        {
          swift_once();
        }

        v24 = qword_1006113A8;
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
        *&aBlock.tx = sub_1003CB97C;
        *&aBlock.ty = v25;
        *&aBlock.a = _NSConcreteStackBlock;
        *&aBlock.b = 1107296256;
        *&aBlock.c = sub_1000D6C80;
        *&aBlock.d = &unk_1005C7040;
        v35 = _Block_copy(&aBlock);

        [v9 _animateUsingSpringWithDuration:6 delay:v35 options:0 mass:v28 stiffness:0.0 damping:v30 initialVelocity:v32 animations:v34 completion:0.0];
        _Block_release(v35);
      }

      else
      {
        v97 = qword_100609E10;
        v98 = v1;
        if (v97 != -1)
        {
          swift_once();
        }

        v99 = qword_100611380;
        [qword_100611380 settlingDuration];
        v101 = v100;
        [v99 mass];
        v103 = v102;
        [v99 stiffness];
        v105 = v104;
        [v99 damping];
        v107 = v106;
        *&aBlock.tx = sub_1003CB960;
        *&aBlock.ty = v11;
        *&aBlock.a = _NSConcreteStackBlock;
        *&aBlock.b = 1107296256;
        *&aBlock.c = sub_1000D6C80;
        *&aBlock.d = &unk_1005C6F50;
        v108 = _Block_copy(&aBlock);

        [v9 _animateUsingSpringWithDuration:6 delay:v108 options:0 mass:v101 stiffness:0.2 damping:v103 initialVelocity:v105 animations:v107 completion:0.0];
        _Block_release(v108);
        if (qword_100609E08 != -1)
        {
          swift_once();
        }

        v109 = qword_100611378;
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
        *&aBlock.tx = sub_1003CB96C;
        *&aBlock.ty = v110;
        *&aBlock.a = _NSConcreteStackBlock;
        *&aBlock.b = 1107296256;
        *&aBlock.c = sub_1000D6C80;
        *&aBlock.d = &unk_1005C6FA0;
        v120 = _Block_copy(&aBlock);

        [v9 _animateUsingSpringWithDuration:6 delay:v120 options:0 mass:v113 stiffness:0.0 damping:v115 initialVelocity:v117 animations:v119 completion:0.0];
        _Block_release(v120);

        sub_100009130(0, &qword_10060E4F0, OS_dispatch_queue_ptr);
        v121 = sub_1004BCB44();
        v122 = swift_allocObject();
        *(v122 + 16) = v111;
        v123 = v111;
        OS_dispatch_queue.asyncAfter(_:block:)(sub_1003CB974, v122, 0.3);
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
        v75 = qword_100609E30;
        v76 = v2;
        if (v75 != -1)
        {
          swift_once();
        }

        v77 = qword_1006113A0;
        [qword_1006113A0 settlingDuration];
        v79 = v78;
        [v77 mass];
        v81 = v80;
        [v77 stiffness];
        v83 = v82;
        [v77 damping];
        v85 = v84;
        *&aBlock.tx = sub_1003CB894;
        *&aBlock.ty = v73;
        *&aBlock.a = _NSConcreteStackBlock;
        *&aBlock.b = 1107296256;
        *&aBlock.c = sub_1000D6C80;
        *&aBlock.d = &unk_1005C6D70;
        v86 = _Block_copy(&aBlock);

        [v9 _animateUsingSpringWithDuration:6 delay:v86 options:0 mass:v79 stiffness:0.0 damping:v81 initialVelocity:v83 animations:v85 completion:0.0];
        _Block_release(v86);
        if (qword_100609E38 != -1)
        {
          swift_once();
        }

        v87 = qword_1006113A8;
        [qword_1006113A8 settlingDuration];
        v89 = v88;
        [v87 mass];
        v91 = v90;
        [v87 stiffness];
        v93 = v92;
        [v87 damping];
        v95 = v94;
        *&aBlock.tx = sub_1003CB8A0;
        *&aBlock.ty = v74;
        *&aBlock.a = _NSConcreteStackBlock;
        *&aBlock.b = 1107296256;
        v96 = &unk_1005C6D98;
      }

      else
      {
        v138 = qword_100609E40;
        v139 = v2;
        if (v138 != -1)
        {
          swift_once();
        }

        v140 = qword_1006113B0;
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
        *&aBlock.tx = sub_1003CB894;
        *&aBlock.ty = v73;
        *&aBlock.a = _NSConcreteStackBlock;
        *&aBlock.b = 1107296256;
        *&aBlock.c = sub_1000D6C80;
        *&aBlock.d = &unk_1005C6CF8;
        v151 = _Block_copy(&aBlock);

        *&aBlock.tx = CFRange.init(_:);
        *&aBlock.ty = v141;
        *&aBlock.a = _NSConcreteStackBlock;
        *&aBlock.b = 1107296256;
        *&aBlock.c = sub_100398C10;
        *&aBlock.d = &unk_1005C6D20;
        v152 = _Block_copy(&aBlock);

        [v9 _animateUsingSpringWithDuration:6 delay:v151 options:v152 mass:v144 stiffness:0.0 damping:v146 initialVelocity:v148 animations:v150 completion:0.0];
        _Block_release(v152);
        _Block_release(v151);

        if (qword_100609E48 != -1)
        {
          swift_once();
        }

        v153 = qword_1006113B8;
        [qword_1006113B8 settlingDuration];
        v89 = v154;
        [v153 mass];
        v91 = v155;
        [v153 stiffness];
        v93 = v156;
        [v153 damping];
        v95 = v157;
        *&aBlock.tx = sub_1003CB8A0;
        *&aBlock.ty = v74;
        *&aBlock.a = _NSConcreteStackBlock;
        *&aBlock.b = 1107296256;
        v96 = &unk_1005C6D48;
      }

      *&aBlock.c = sub_1000D6C80;
      *&aBlock.d = v96;
      v158 = _Block_copy(&aBlock);

      [v9 _animateUsingSpringWithDuration:6 delay:v158 options:0 mass:v89 stiffness:0.0 damping:v91 initialVelocity:v93 animations:v95 completion:0.0];
      _Block_release(v158);
      goto LABEL_65;
    }

    if ((a1 & 1) == 0)
    {
      if (qword_100609E20 != -1)
      {
        swift_once();
      }

      v44 = qword_100611390;
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
      *&aBlock.tx = sub_1003CB8E4;
      *&aBlock.ty = v45;
      *&aBlock.a = _NSConcreteStackBlock;
      *&aBlock.b = 1107296256;
      *&aBlock.c = sub_1000D6C80;
      *&aBlock.d = &unk_1005C6DE8;
      v55 = _Block_copy(&aBlock);

      [v9 _animateUsingSpringWithDuration:6 delay:v55 options:0 mass:v48 stiffness:0.0 damping:v50 initialVelocity:v52 animations:v54 completion:0.0];
      _Block_release(v55);
    }

    if (qword_100609E28 != -1)
    {
      swift_once();
    }

    v56 = qword_100611398;
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
    *&aBlock.tx = sub_1003CB924;
    aBlock.ty = v58;
    *&aBlock.a = _NSConcreteStackBlock;
    *&aBlock.b = 1107296256;
    *&aBlock.c = sub_1000D6C80;
    *&aBlock.d = &unk_1005C6E60;
    v65 = _Block_copy(&aBlock);

    *&aBlock.tx = CFRange.init(_:);
    *&aBlock.ty = v62;
    *&aBlock.a = _NSConcreteStackBlock;
    *&aBlock.b = 1107296256;
    *&aBlock.c = sub_100398C10;
    *&aBlock.d = &unk_1005C6E88;
    v66 = _Block_copy(&aBlock);

    [v9 animateWithDuration:2 delay:v65 options:v66 animations:0.75 completion:v60];
    _Block_release(v66);
    _Block_release(v65);
    [v63 commit];

    sub_100009130(0, &qword_10060E4F0, OS_dispatch_queue_ptr);
    v67 = sub_1004BCB44();
    v68 = swift_allocObject();
    *(v68 + 16) = v64;
    v69 = v64;
    OS_dispatch_queue.asyncAfter(_:block:)(sub_1003CB930, v68, v61);

    if (!v59)
    {
      v70 = swift_allocObject();
      *(v70 + 16) = v69;
      *&aBlock.tx = sub_1003CB958;
      *&aBlock.ty = v70;
      *&aBlock.a = _NSConcreteStackBlock;
      *&aBlock.b = 1107296256;
      *&aBlock.c = sub_1000D6C80;
      *&aBlock.d = &unk_1005C6F00;
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
    v127 = sub_1003C4BDC();
    v128 = *(v126 + 1);
    *&aBlock.a = *v126;
    *&aBlock.c = v128;
    *&aBlock.tx = *(v126 + 2);
    [v127 setTransform:&aBlock];

    sub_1003C5888();
    LOBYTE(aBlock.a) = 1;
    sub_1003C56AC(0x100000000);
    v129 = sub_1003C5294();
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

    v135 = sub_1003C4B28();
    sub_1004BCED4();
    v136 = sub_1004BCEE4();
    (*(*(v136 - 8) + 56))(v5, 0, 1, v136);
    sub_1004BCEF4();

    v137 = [objc_opt_self() clearColor];
    UIView.Shadow.init(color:opacity:radius:offset:)(v137, &aBlock, 0.0, 0.0, 0.0, 0.0);
    UIView.shadow.setter(&aBlock);
  }
}

void sub_1003C8C6C(unsigned __int8 *a1, char a2)
{
  sub_100003ABC(&qword_100610D00, &qword_1004DB780);
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
  v19 = sub_1003C4BDC();
  v20 = *(v18 + 1);
  *&v30.a = *v18;
  *&v30.c = v20;
  *&v30.tx = *(v18 + 2);
  [v19 setTransform:&v30];

  v21 = sub_1003C4B28();
  sub_1004BCED4();
  v22 = sub_1004BCEE4();
  (*(*(v22 - 8) + 56))(v6, 0, 1, v22);
  sub_1004BCEF4();

  if (a2)
  {
    LOBYTE(v30.a) = 1;
    sub_1003C56AC(0x100000000);
    v23 = sub_1003C5294();
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

    sub_1003C5888();
  }

  else
  {
    LOBYTE(v30.a) = 0;
    sub_1003C56AC(1065353216);
  }

  sub_1003C4E1C();
}

uint64_t sub_1003C8F84(uint64_t a1, uint64_t a2)
{
  v2 = [objc_opt_self() blackColor];
  UIView.Shadow.init(color:opacity:radius:offset:)(v2, v4, 0.3, 9.0, 0.0, 5.0);
  return UIView.shadow.setter(v4);
}

uint64_t sub_1003C8FF4(unsigned __int8 *a1)
{
  v2 = sub_1003C5294();
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

  sub_1003C5888();
  v8 = [objc_opt_self() clearColor];
  UIView.Shadow.init(color:opacity:radius:offset:)(v8, v10, 0.0, 0.0, 0.0, 0.0);
  return UIView.shadow.setter(v10);
}

double sub_1003C90F4(void *a1)
{
  if (qword_100609E18 != -1)
  {
    swift_once();
  }

  v2 = qword_100611388;
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v4 = objc_opt_self();
  v5 = a1;
  [v4 begin];
  [v4 setAnimationTimingFunction:v2];
  v6 = objc_opt_self();
  v9[4] = sub_1003CB984;
  v9[5] = v3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1000D6C80;
  v9[3] = &unk_1005C7090;
  v7 = _Block_copy(v9);

  [v6 animateWithDuration:2 delay:v7 options:0 animations:0.85 completion:0.0];
  _Block_release(v7);
  [v4 commit];

  return result;
}

void sub_1003C928C(uint64_t a1)
{
  v2 = sub_1003C5294();
  v3 = sub_1003C5210();
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
  v17 = *&qword_100611360;
  *v12 = xmmword_100611350;
  v12[1] = v17;
  sub_1003CA3C4(v13, v14, v15, v16);
}

uint64_t sub_1003C9340(char a1, char *a2)
{
  sub_100003ABC(&qword_100610D00, &qword_1004DB780);
  v4 = __chkstk_darwin();
  v9 = v27 - v8;
  if (a1)
  {
    v10 = &a2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange];
    v4.n128_u64[0] = *&a2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange];
    v5.n128_u64[0] = *&a2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange + 8];
    v6.n128_u64[0] = *&a2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange + 16];
    v7.n128_u64[0] = *&a2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange + 24];
    v11 = *&qword_100611360;
    *v10 = xmmword_100611350;
    *(v10 + 1) = v11;
    sub_1003CA3C4(v4, v5, v6, v7);
    LOBYTE(v27[0]) = 1;
    sub_1003C56AC(0x100000000);
    v12 = sub_1003C5294();
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
  v19 = sub_1003C4BDC();
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
  v23 = sub_1003C4B28();
  sub_1004BCED4();
  v24 = sub_1004BCEE4();
  (*(*(v24 - 8) + 56))(v9, 0, 1, v24);
  sub_1004BCEF4();

  v25 = [objc_opt_self() clearColor];
  UIView.Shadow.init(color:opacity:radius:offset:)(v25, v27, 0.0, 0.0, 0.0, 0.0);
  return UIView.shadow.setter(v27);
}

void sub_1003C960C(unsigned __int8 *a1)
{
  v7 = sub_1003C5294();
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

void sub_1003C96D0(uint64_t a1, char a2)
{
  sub_100003ABC(&qword_100610D00, &qword_1004DB780);
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
  v15 = sub_1003C4BDC();
  v16 = v14[1];
  *&v26.a = *v14;
  *&v26.c = v16;
  *&v26.tx = v14[2];
  [v15 setTransform:&v26];

  v17 = sub_1003C4B28();
  sub_1004BCED4();
  v18 = sub_1004BCEE4();
  (*(*(v18 - 8) + 56))(v5, 0, 1, v18);
  sub_1004BCEF4();

  if ((a2 & 1) == 0)
  {
    v23 = (a1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange);
    v19.n128_u64[0] = *(a1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange);
    v20.n128_u64[0] = *(a1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange + 8);
    v21.n128_u64[0] = *(a1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange + 16);
    v22.n128_u64[0] = *(a1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange + 24);
    v24 = *&qword_100611360;
    *v23 = xmmword_100611350;
    v23[1] = v24;
    sub_1003CA3C4(v19, v20, v21, v22);
  }
}

uint64_t sub_1003C98C8(unsigned __int8 *a1, char a2)
{
  LOBYTE(v19) = 1;
  sub_1003C56AC(0x100000000);
  v4 = sub_1003C5294();
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

double sub_1003C9A38(uint64_t a1, uint64_t a2)
{
  if (*(a1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode) != 2)
  {
    v2 = (a2 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateName);
    swift_beginAccess();
    v3 = *v2;
    v4 = v2[1];
    *v2 = xmmword_1004D9D10;
    sub_1002BC3E8(v3, v4);
  }

  return result;
}

Swift::Void __swiftcall VerticalToggleSlider.didMoveToWindow()()
{
  v3 = v2;
  v9.receiver = v2;
  v9.super_class = type metadata accessor for VerticalToggleSlider(v0, v1);
  objc_msgSendSuper2(&v9, "didMoveToWindow");
  v4 = [v2 window];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 windowScene];

    if (v6)
    {
      v7 = swift_allocObject();
      swift_unknownObjectWeakInit();
      type metadata accessor for NotificationObserver(0, v8);
      swift_allocObject();
      v4 = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(UISceneDidActivateNotification, v6, 1, 1, sub_1003CB548, v7);
    }

    else
    {
      v4 = 0;
    }
  }

  *&v3[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_sceneActivationObserver] = v4;
}

void sub_1003C9BEC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1003C5888();
  }
}

id sub_1003C9C94(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for VerticalToggleSlider(a1, a2);
  return objc_msgSendSuper2(&v5, *a3);
}

id sub_1003C9CE0(SEL *a1, uint64_t a2)
{
  v5.receiver = v2;
  v5.super_class = type metadata accessor for VerticalToggleSlider(a1, a2);
  return objc_msgSendSuper2(&v5, *a1);
}

void VerticalToggleSlider.isHighlighted.setter(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = type metadata accessor for VerticalToggleSlider(a1, a2);
  v7.receiver = v2;
  v7.super_class = v4;
  v5 = objc_msgSendSuper2(&v7, "isHighlighted");
  v6.receiver = v2;
  v6.super_class = v4;
  objc_msgSendSuper2(&v6, "setHighlighted:", v3 & 1);
  sub_1003C9E10(v5);
}

void sub_1003C9E10(char a1)
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
      if (qword_100609E00 != -1)
      {
        swift_once();
      }

      v6 = qword_100611370;
      [qword_100611370 settlingDuration];
      v8 = v7;
      [v6 mass];
      v10 = v9;
      [v6 stiffness];
      v12 = v11;
      [v6 damping];
      v14 = v13;
      *&v24.tx = sub_1003CB80C;
      *&v24.ty = v3;
      *&v24.a = _NSConcreteStackBlock;
      *&v24.b = 1107296256;
      *&v24.c = sub_1000D6C80;
      *&v24.d = &unk_1005C6C08;
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
        v16 = xmmword_1004D9D20;
        v17 = xmmword_1004D9B70;
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
          v21 = xmmword_1004D9D20;
          v22 = xmmword_1004D9B70;
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

void sub_1003CA0E0(char *a1)
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
    v2 = xmmword_1004D9D20;
    v3 = xmmword_1004D9B70;
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
      v7 = xmmword_1004D9D20;
      v8 = xmmword_1004D9B70;
      v9 = 0uLL;
    }

    *&v10.a = v8;
    *&v10.c = v7;
    *&v10.tx = v9;
    [v6 setTransform:&v10];
  }
}

void sub_1003CA1EC(uint64_t a1, uint64_t a2)
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
      sub_1003C789C(v5);
      [v3 sendActionsForControlEvents:4096];
      [v3 sendActionsForControlEvents:0x40000];
    }
  }
}

void sub_1003CA3C4(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  v5 = v4;
  v58 = a4;
  v57 = a3;
  v56 = a2;
  v55 = a1;
  sub_100003ABC(&qword_100610D00, &qword_1004DB780);
  __chkstk_darwin();
  v7 = &v55 - v6;
  v8 = &v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange];
  *&v9.f64[0] = v55.n128_u64[0];
  *&v9.f64[1] = v56.n128_u64[0];
  *&v10.f64[0] = v57.n128_u64[0];
  *&v10.f64[1] = v58.n128_u64[0];
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange], v9), vceqq_f64(*&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange + 16], v10)))) & 1) == 0)
  {
    v11 = sub_1003C4B28();
    sub_1004BCED4();
    v12 = sub_1004BCEE4();
    (*(*(v12 - 8) + 56))(v7, 0, 1, v12);
    sub_1004BCEF4();

    if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*v8, xmmword_100611350), vceqq_f64(v8[1], *&qword_100611360)))))
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
      *(v15 + 16) = sub_1003CB7DC;
      *(v15 + 24) = v14;
      *&aBlock.tx = sub_1000E6038;
      *&aBlock.ty = v15;
      *&aBlock.a = _NSConcreteStackBlock;
      *&aBlock.b = 1107296256;
      *&aBlock.c = sub_100008224;
      *&aBlock.d = &unk_1005C6BB8;
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
        v19 = sub_1003C4BDC();
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

void sub_1003CAA1C(char *a1)
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
  v6 = sub_1003C4B28();
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

id sub_1003CAB44()
{
  result = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:465.0 damping:21.0 initialVelocity:{0.0, 0.0}];
  qword_100611370 = result;
  return result;
}

id sub_1003CAB94()
{
  result = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:300.0 damping:40.0 initialVelocity:{0.0, 0.0}];
  qword_100611378 = result;
  return result;
}

id sub_1003CABE8()
{
  result = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:194.0 damping:24.0 initialVelocity:{0.0, 0.0}];
  qword_100611380 = result;
  return result;
}

id sub_1003CAC38()
{
  v0 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v1) = 1051931443;
  LODWORD(v2) = 0.25;
  LODWORD(v3) = 1.0;
  result = [v0 initWithControlPoints:v1 :0.0 :v2 :v3];
  qword_100611388 = result;
  return result;
}

id sub_1003CAC84()
{
  result = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:158.0 damping:25.0 initialVelocity:{0.0, 0.0}];
  qword_100611390 = result;
  return result;
}

id sub_1003CACD4()
{
  v0 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v1) = 1051931443;
  LODWORD(v2) = 1.0;
  LODWORD(v3) = 1.0;
  result = [v0 initWithControlPoints:v2 :0.0 :v1 :v3];
  qword_100611398 = result;
  return result;
}

id sub_1003CAD20()
{
  result = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:288.0 damping:26.5 initialVelocity:{0.0, 0.0}];
  qword_1006113A0 = result;
  return result;
}

id sub_1003CAD74()
{
  result = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:300.0 damping:40.0 initialVelocity:{0.0, 0.0}];
  qword_1006113A8 = result;
  return result;
}

id sub_1003CADC8()
{
  result = [objc_allocWithZone(UISpringTimingParameters) initWithMass:2.0 stiffness:500.0 damping:40.0 initialVelocity:{0.0, 0.0}];
  qword_1006113B0 = result;
  return result;
}

id sub_1003CAE1C()
{
  result = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:300.0 damping:40.0 initialVelocity:{0.0, 0.0}];
  qword_1006113B8 = result;
  return result;
}

id VerticalToggleSlider.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for VerticalToggleSlider(a1, a2);
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_1003CB080()
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

    sub_1003C4C98(*(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange) + (((v4 - v2) / (v3 - v2)) * (*(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange + 4) - *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange))));

    return sub_1003C6400();
  }

  return result;
}

uint64_t sub_1003CB1F0()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

void sub_1003CB254(char *a1)
{
  v2 = sub_1003C4BDC();
  v3 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_growAnchorPoint;
  swift_beginAccess();
  v4 = a1[v3];
  v5 = [a1 traitCollection];
  *&v6 = sub_1003C6A5C(v5, v4).n128_u64[0];
  v8 = v7;

  [v2 setAnchorPoint:{v6, v8}];
}

void _s11MusicCoreUI20VerticalToggleSliderC5coderACSgSo7NSCoderC_tcfc_0(uint64_t a1, uint64_t a2)
{
  v3 = v2 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageDefinition;
  *v3 = 0u;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  *(v3 + 64) = 0u;
  *(v3 + 80) = 0u;
  *(v3 + 96) = 0;
  *(v2 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_minLevelOffsetRatio) = 1040402485;
  v4 = v2 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_interactionScaleFactor;
  *v4 = 0;
  *(v4 + 8) = 1;
  *(v2 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isTapToToggleEnabled) = 1;
  *(v2 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isVisuallyDisabled) = 0;
  *(v2 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isContinuous) = 1;
  *(v2 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_automaticallyDisablesOnMaxValue) = 1;
  *(v2 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_longPressMode) = 1;
  *(v2 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_growAnchorPoint) = 8;
  *(v2 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___stretchView) = 0;
  *(v2 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___growView) = 0;
  *(v2 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange) = 0x3F80000000000000;
  *(v2 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValue) = 1065353216;
  *(v2 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue) = 0;
  *(v2 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue) = 1065353216;
  *(v2 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___feedbackGenerator) = 0;
  *(v2 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode) = 2;
  v5 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_blurEffect;
  *(v2 + v5) = [objc_opt_self() effectWithBlurRadius:10.0];
  *(v2 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___visualEffectView) = 0;
  *(v2 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView) = 0;
  *(v2 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___levelView) = 0;
  *(v2 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_sceneActivationObserver) = 0;
  *(v2 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_longPressGestureRecognizer) = 0;
  v6 = v2 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_initialDraggingLocation;
  *v6 = 0;
  *(v6 + 8) = 0;
  *(v6 + 16) = 1;
  *(v2 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_initialValue) = 0;
  v7 = (v2 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange);
  v8 = *&qword_100611360;
  *v7 = xmmword_100611350;
  v7[1] = v8;
  v9 = (v2 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_stretchTransform);
  *v9 = 0x3FF0000000000000;
  v9[1] = 0;
  v9[2] = 0;
  v9[3] = 0x3FF0000000000000;
  v9[4] = 0;
  v9[5] = 0;
  v10 = (v2 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_growTransform);
  *v10 = 0x3FF0000000000000;
  v10[1] = 0;
  v10[2] = 0;
  v10[3] = 0x3FF0000000000000;
  v10[4] = 0;
  v10[5] = 0;
  sub_1004BD624();
  __break(1u);
}

unint64_t sub_1003CB554()
{
  result = qword_1006114A0;
  if (!qword_1006114A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006114A0);
  }

  return result;
}

unint64_t sub_1003CB5AC()
{
  result = qword_1006114A8;
  if (!qword_1006114A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006114A8);
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

double sub_1003CB790(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1003CB7F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1003CB814()
{

  return swift_deallocObject();
}

uint64_t sub_1003CB85C()
{

  return swift_deallocObject();
}

uint64_t sub_1003CB8AC()
{

  return swift_deallocObject();
}

uint64_t sub_1003CB8EC()
{

  return swift_deallocObject();
}

unint64_t WaveformPlayIndicator.init(settings:)(void *a1)
{
  v2 = v1;
  v35 = a1;
  ObjectType = swift_getObjectType();
  v34 = sub_100003ABC(&qword_10060D2F0, &unk_1004E6370);
  v3 = *(v34 - 8);
  __chkstk_darwin();
  v5 = &v32 - v4;
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_mode) = 0;
  v6 = (v1 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_colorPalette);
  v7 = objc_opt_self();
  v33 = [v7 tintColor];
  v8 = [v7 labelColor];
  v9 = [v8 colorWithAlphaComponent:0.35];

  v10 = [v7 labelColor];
  v11 = [v10 colorWithAlphaComponent:0.2];

  v12 = [v7 labelColor];
  v13 = [v12 colorWithAlphaComponent:0.6];

  *v6 = v33;
  v6[1] = v9;
  v6[2] = v11;
  v6[3] = v13;
  v14 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_waveform;
  *(v2 + v14) = [objc_opt_self() zero];
  *(v2 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_exclusiveAnimation) = 0;
  *(v2 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_pulseTask) = 0;
  *(v2 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_barRatio) = 0x3FE0000000000000;
  v15 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator__isVisible;
  v38 = 0;
  sub_1004B8564();
  (*(v3 + 32))(v2 + v15, v5, v34);
  *(v2 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator____lazy_storage___bars) = 0;
  v16 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_cannedAnimationAsset;
  type metadata accessor for BouncyBarsAsset(0, v17);
  v18 = swift_allocObject();
  *(v2 + v16) = sub_1003D137C(v18, v19);
  v20 = v35;
  *(v2 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_settings) = v35;
  v21 = v20;
  v22 = [v21 stops];
  sub_100009130(0, &qword_10060CFF0, NSNumber_ptr);
  v23 = sub_1004BC2A4();

  if (v23 >> 62)
  {
    v24 = sub_1004BD6A4();
  }

  else
  {
    v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v25 = ObjectType;
  if (__OFSUB__(v24, 1))
  {
    __break(1u);
  }

  else
  {
    *(v2 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_numberOfBars) = v24 - 1;
    v37.receiver = v2;
    v37.super_class = v25;
    v24 = objc_msgSendSuper2(&v37, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
    result = sub_1003CBF68();
    v2 = result;
    if (!(result >> 62))
    {
      v27 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v27)
      {
        goto LABEL_6;
      }

LABEL_15:

      sub_100003ABC(qword_10060CCB0, &unk_1004E4A50);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_1004C50A0;
      *(v31 + 32) = sub_1004B8254();
      *(v31 + 40) = &protocol witness table for UITraitActiveAppearance;
      sub_1004BCF24();

      swift_unknownObjectRelease();

      return v24;
    }
  }

  result = sub_1004BD6A4();
  v27 = result;
  if (!result)
  {
    goto LABEL_15;
  }

LABEL_6:
  if (v27 >= 1)
  {
    v28 = 0;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v29 = sub_1004BD484();
      }

      else
      {
        v29 = *(v2 + 8 * v28 + 32);
      }

      v30 = v29;
      ++v28;
      [v24 addSubview:v29];
      [v30 setAlpha:0.0];
    }

    while (v27 != v28);
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t sub_1003CBF68()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator____lazy_storage___bars;
  if (*(v0 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator____lazy_storage___bars))
  {
    v2 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator____lazy_storage___bars);
  }

  else
  {
    sub_1003D0834();
    v2 = v3;
    *(v0 + v1) = v3;
  }

  return v2;
}

void sub_1003CBFCC()
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
    v12 = sub_1003CBF68();
    v13 = v12;
    if (v12 >> 62)
    {
      v14 = sub_1004BD6A4();
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
          v16 = sub_1004BD484();
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
    v19 = sub_1003CBF68();
    v20 = v19;
    if (v19 >> 62)
    {
      v21 = sub_1004BD6A4();
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
          v23 = sub_1004BD484();
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
  v5 = sub_1003CBF68();
  v6 = v5;
  if (v5 >> 62)
  {
    v7 = sub_1004BD6A4();
    if (v7)
    {
LABEL_6:
      if (v7 >= 1)
      {
        for (k = 0; k != v7; ++k)
        {
          if ((v6 & 0xC000000000000001) != 0)
          {
            v9 = sub_1004BD484();
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

void sub_1003CC2B0(char a1, char a2)
{
  if (a1 == a2 && (a1 != 3 || (sub_1003CD800() & 1) != 0))
  {
    return;
  }

  v69 = sub_1003CBF68();
  type metadata accessor for AnimationGroup(0, v2);
  v3 = swift_allocObject();
  v4 = v68;
  v5 = v3;
  *(v3 + 16) = _swiftEmptyArrayStorage;
  v72 = (v3 + 16);
  *(v3 + 24) = _swiftEmptyArrayStorage;
  v6 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_pulseTask;
  if (*&v68[OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_pulseTask])
  {

    sub_1004BC524();

    v4 = v68;
  }

  *&v4[v6] = 0;

  if (a1 == 3)
  {
    sub_1003CDB00();
  }

  if (a2 == 1)
  {
    v15 = [objc_allocWithZone(UICubicTimingParameters) initWithControlPoint1:0.33 controlPoint2:{1.0, 0.67, 1.0}];
    v16 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:v15 timingParameters:0.9];

    v17 = swift_allocObject();
    *(v17 + 16) = v68;
    v18 = v68;
    sub_1003D0B40(v16, sub_1003D3AA8, v17, 0.0);
  }

  else if (a2 == 4)
  {
    v7 = [objc_allocWithZone(UICubicTimingParameters) initWithControlPoint1:0.5 controlPoint2:{1.0, 0.89, 1.0}];
    v8 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:v7 timingParameters:0.25];

    v9 = swift_allocObject();
    *(v9 + 16) = v68;
    v77 = sub_1003D3AB0;
    v78 = v9;
    aBlock = _NSConcreteStackBlock;
    v74 = 1107296256;
    v75 = sub_1000D6C80;
    v76 = &unk_1005C7550;
    v10 = _Block_copy(&aBlock);
    v11 = v68;

    [v8 addAnimations:v10];
    _Block_release(v10);
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    *(v12 + 24) = 4;
    v77 = sub_1003D3AB8;
    v78 = v12;
    aBlock = _NSConcreteStackBlock;
    v74 = 1107296256;
    v75 = sub_10013ABCC;
    v76 = &unk_1005C75A0;
    v13 = _Block_copy(&aBlock);
    v14 = v11;

    [v8 addCompletion:v13];
    _Block_release(v13);
    sub_1003D0B40(v8, 0, 0, 0.0);
  }

  if (!a1)
  {
    v65 = v5;

    sub_1003CE4D0(v19);
    v21 = v20;
    sub_1003CDF14();
    v70 = *(v21 + 16);
    v71 = v21;
    if (v70)
    {
      v5 = 0;
      v22 = (v21 + 40);
      while (v5 < *(v71 + 16))
      {
        v24 = *(v22 - 1);
        v23 = *v22;
        v25 = objc_allocWithZone(UICubicTimingParameters);
        v26 = v23;
        v27 = v24;
        v28 = [v25 initWithControlPoint1:0.32 controlPoint2:{0.0, 0.67, 0.0}];
        v29 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:v28 timingParameters:0.5];

        v30 = swift_allocObject();
        *(v30 + 16) = v27;
        *(v30 + 24) = v23;
        v77 = sub_1003D3A5C;
        v78 = v30;
        aBlock = _NSConcreteStackBlock;
        v74 = 1107296256;
        v75 = sub_1000D6C80;
        v76 = &unk_1005C74D8;
        v31 = _Block_copy(&aBlock);
        swift_retain_n();
        v32 = v27;
        v33 = v26;

        [v29 addAnimations:v31];
        _Block_release(v31);

        swift_beginAccess();
        v34 = *v72;
        v35 = v29;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v72 = v34;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v34 = sub_1003BF304(0, *(v34 + 2) + 1, 1, v34);
          *v72 = v34;
        }

        v38 = *(v34 + 2);
        v37 = *(v34 + 3);
        if (v38 >= v37 >> 1)
        {
          v34 = sub_1003BF304((v37 > 1), v38 + 1, 1, v34);
        }

        *(v34 + 2) = v38 + 1;
        v39 = &v34[16 * v38];
        *(v39 + 4) = v35;
        *(v39 + 5) = v5 * 0.03;
        *v72 = v34;
        swift_endAccess();

        v22 += 2;
        if (v70 == ++v5)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
      goto LABEL_37;
    }

LABEL_21:

    v5 = v65;
  }

  v40 = v69;
  if (a2)
  {
    if (a2 == 2)
    {

      v46 = [objc_allocWithZone(UICubicTimingParameters) initWithControlPoint1:0.5 controlPoint2:{1.0, 0.89, 1.0}];
      v47 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:v46 timingParameters:0.15];

      v48 = swift_allocObject();
      v45 = v68;
      *(v48 + 16) = v68;
      *(v48 + 24) = a1;
      v49 = v68;
      sub_1003D0B40(v47, sub_1003D3A08, v48, 0.0);
    }

    else
    {
      if (a2 == 3)
      {
        v41 = [objc_allocWithZone(UICubicTimingParameters) initWithControlPoint1:0.5 controlPoint2:{1.0, 0.89, 1.0}];
        v42 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:v41 timingParameters:0.15];

        v43 = swift_allocObject();
        *(v43 + 16) = v68;
        v44 = v68;
        sub_1003D0B40(v42, sub_1003D3A14, v43, 0.0);
      }

      v45 = v68;
    }

    goto LABEL_39;
  }

  if (v69 >> 62)
  {
LABEL_37:
    v55 = sub_1004BD6A4();
    v40 = v69;
    v50 = v55;
    if (!v55)
    {
      goto LABEL_38;
    }

LABEL_30:
    if (v50 < 1)
    {
      __break(1u);
      return;
    }

    v51 = 0;
    v52 = v40 & 0xC000000000000001;
    do
    {
      if (v52)
      {
        v53 = sub_1004BD484();
      }

      else
      {
        v53 = *(v40 + 8 * v51 + 32);
      }

      v54 = v53;
      ++v51;
      [v53 setAlpha:{0.0, v65}];

      v40 = v69;
    }

    while (v50 != v51);
    goto LABEL_38;
  }

  v50 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v50)
  {
    goto LABEL_30;
  }

LABEL_38:

  v45 = v68;
  sub_1003CDF14();
LABEL_39:
  v56 = *&v45[OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_exclusiveAnimation];
  if (v56)
  {
    v57 = swift_allocObject();
    *(v57 + 16) = v45;
    *(v57 + 24) = v5;
    v58 = swift_allocObject();
    *(v58 + 16) = sub_1003D39C8;
    *(v58 + 24) = v57;
    swift_beginAccess();
    v59 = *(v56 + 24);
    v60 = v45;

    v61 = swift_isUniquelyReferenced_nonNull_native();
    *(v56 + 24) = v59;
    if ((v61 & 1) == 0)
    {
      v59 = sub_1003BF410(0, v59[2] + 1, 1, v59);
      *(v56 + 24) = v59;
    }

    v63 = v59[2];
    v62 = v59[3];
    if (v63 >= v62 >> 1)
    {
      v59 = sub_1003BF410((v62 > 1), v63 + 1, 1, v59);
    }

    v59[2] = v63 + 1;
    v64 = &v59[2 * v63];
    v64[4] = sub_1000081FC;
    v64[5] = v58;
    *(v56 + 24) = v59;
    swift_endAccess();
  }

  else
  {
    sub_1003D0CCC();
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
  sub_1003CC2B0(v4, a1);
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
  return sub_1003CCDE4;
}

void sub_1003CCDE4(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 24);
  v2 = *(*a1 + 32);
  v4 = *(v3 + v2);
  v5 = v1[40];
  *(v3 + v2) = v5;
  sub_1003CC2B0(v4, v5);

  free(v1);
}

void sub_1003CCE58(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_self();
  v3 = [v2 whiteColor];
  v4 = [v2 whiteColor];
  v5 = [v2 whiteColor];
  v6 = [v5 colorWithAlphaComponent:0.2];

  v7 = [v2 whiteColor];
  v8 = [v7 colorWithAlphaComponent:0.6];

  static WaveformPlayIndicator.ColorPalette.overlay = v3;
  *algn_100619558 = v4;
  qword_100619560 = v6;
  unk_100619568 = v8;
}

uint64_t *WaveformPlayIndicator.ColorPalette.overlay.unsafeMutableAddressor()
{
  if (qword_100609E50 != -1)
  {
    swift_once();
  }

  return &static WaveformPlayIndicator.ColorPalette.overlay;
}

uint64_t static WaveformPlayIndicator.ColorPalette.overlay.getter()
{
  if (qword_100609E50 != -1)
  {
    swift_once();
  }

  v0 = static WaveformPlayIndicator.ColorPalette.overlay;
  v1 = *algn_100619558;
  v2 = qword_100619560;
  v3 = unk_100619568;
  v4 = static WaveformPlayIndicator.ColorPalette.overlay;
  v5 = v1;
  v6 = v2;
  v7 = v3;
  return v0;
}

uint64_t static WaveformPlayIndicator.ColorPalette.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_100009130(0, &unk_1006111F0, NSObject_ptr);
  if (sub_1004BCFA4() & 1) != 0 && (sub_1004BCFA4() & 1) != 0 && (sub_1004BCFA4())
  {
    return sub_1004BCFA4() & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1003CD0E8(uint64_t *a1, uint64_t *a2)
{
  sub_100009130(0, &unk_1006111F0, NSObject_ptr);
  if (sub_1004BCFA4() & 1) != 0 && (sub_1004BCFA4() & 1) != 0 && (sub_1004BCFA4())
  {
    return sub_1004BCFA4() & 1;
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
  sub_1003D35C4(a1, a2, a3, a4);
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
  return sub_1003CD328;
}

void sub_1003CD328(void ***a1, char a2)
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
    sub_1003D35C4(v7, v8, v9, v10);

    v4 = *v2;
    v3 = v2[1];
    v6 = v2[2];
    v5 = v2[3];
  }

  else
  {
    sub_1003D35C4(**a1, v3, v6, v5);
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
    v16[4] = sub_1003D3718;
    v16[5] = v13;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 1107296256;
    v16[2] = sub_1000D6C80;
    v16[3] = &unk_1005C70E0;
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
  return sub_1003CD674;
}

void sub_1003CD674(void ****a1, char a2)
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
      v3[4] = sub_1003D400C;
      v3[5] = v13;
      *v3 = _NSConcreteStackBlock;
      v3[1] = 1107296256;
      v3[2] = sub_1000D6C80;
      v3[3] = &unk_1005C7130;
      v14 = _Block_copy(v3);
      v15 = v6;

      [v7 animateWithDuration:0 delay:v14 usingSpringWithDamping:0 initialSpringVelocity:v10 options:0.0 animations:v12 completion:0.0];
      _Block_release(v14);
    }
  }

  free(v3);
}

uint64_t sub_1003CD800()
{
  v0 = sub_1003CBF68();
  v1 = v0;
  if (v0 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1004BD6A4())
  {
    v3 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = sub_1004BD484();
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
      v8 = sub_1004BBE24();

      v9 = [v7 animationForKey:v8];

      if (!v9 || (v9, v10 = [v5 layer], v11 = sub_1004BBE24(), , v12 = objc_msgSend(v10, "animationForKey:", v11), v10, v11, !v12) || (v12, v13 = objc_msgSend(v5, "layer"), v14 = sub_1004BBE24(), , v15 = objc_msgSend(v13, "animationForKey:", v14), v13, v14, !v15))
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

void sub_1003CDB00()
{
  v0 = sub_1003CBF68();
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
  sub_1004BD524();
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
        v4 = sub_1004BD484();
      }

      else
      {
        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      ++v3;
      v6 = [v4 layer];

      sub_1004BD4F4();
      sub_1004BD534();
      sub_1004BD544();
      sub_1004BD504();
    }

    while (v2 != v3);

    v1 = _swiftEmptyArrayStorage;
    if (_swiftEmptyArrayStorage >> 62)
    {
      while (1)
      {
        v7 = sub_1004BD6A4();
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
            v9 = sub_1004BD484();
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

          v12 = sub_1004BBE24();
          [v10 removeAnimationForKey:v12];

          v13 = sub_1004BBE24();
          [v10 removeAnimationForKey:v13];

          v14 = sub_1004BBE24();
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
        v2 = sub_1004BD6A4();
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

void sub_1003CDE08(uint64_t a1, __n128 a2)
{
  sub_1003CDF14();
  v3 = a1 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_colorPalette;
  swift_beginAccess();
  v4 = *(v3 + 16);
  v5 = sub_1003CBF68();
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

  v7 = sub_1004BD6A4();
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
        v9 = sub_1004BD484();
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

void sub_1003CDF14()
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
  v7 = sub_1003CBF68();
  v8 = v7;
  if (v7 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1004BD6A4())
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
        v15 = sub_1004BD484();
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
      sub_100009130(0, &qword_10060CFF0, NSNumber_ptr);
      v20 = sub_1004BC2A4();

      if ((v20 & 0xC000000000000001) != 0)
      {
        v21 = sub_1004BD484();
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

double sub_1003CE258(uint64_t a1, char *a2, char a3)
{
  sub_100003ABC(&qword_10060F8D0, &qword_1004E2380);
  __chkstk_darwin();
  v6 = &v13 - v5;
  v7 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_mode;
  swift_beginAccess();
  if (a2[v7] == a3)
  {
    v9 = sub_1004BC4B4();
    (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
    sub_1004BC474();
    v10 = a2;
    v11 = sub_1004BC464();
    v12 = swift_allocObject();
    v12[2] = v11;
    v12[3] = &protocol witness table for MainActor;
    v12[4] = v10;
    *&v10[OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_pulseTask] = sub_1002E0EEC(0, 0, v6, &unk_1004E6648, v12);
  }

  return result;
}

void sub_1003CE3C4(uint64_t a1)
{
  sub_1003CDF14();
  v2 = a1 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_colorPalette;
  swift_beginAccess();
  v3 = *(v2 + 8);
  v4 = sub_1003CBF68();
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

  v6 = sub_1004BD6A4();
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
        v8 = sub_1004BD484();
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

void sub_1003CE4D0(unint64_t a1)
{
  sub_1003D2BF0(a1);
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
      v2 = sub_1003D28BC(v2);
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

void sub_1003CE618(uint64_t a1)
{
  sub_1003CDF14();
  v2 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_colorPalette;
  swift_beginAccess();
  v3 = *(a1 + v2);
  v4 = sub_1003CBF68();
  v5 = v4;
  if (!(v4 >> 62))
  {
    v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_10:

    sub_1003CE724();
    return;
  }

  v6 = sub_1004BD6A4();
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
        v8 = sub_1004BD484();
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

void sub_1003CE724()
{
  v2 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_cannedAnimationAsset);
  if (!v2)
  {
    return;
  }

  v3 = sub_1000DCF8C(3uLL);
  if (v3 > 2)
  {
    __break(1u);
LABEL_13:
    v5 = sub_1004BD6A4();
    if (v5)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

  v45 = *(&off_1005BE4E0 + v3 + 32);
  v4 = sub_1003CBF68();
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
    sub_1004BD524();
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
        v7 = sub_1004BD484();
      }

      else
      {
        v7 = *(v1 + 8 * v6 + 32);
      }

      v8 = v7;
      ++v6;
      v9 = [v7 layer];

      sub_1004BD4F4();
      sub_1004BD534();
      sub_1004BD544();
      sub_1004BD504();
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

  for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1004BD6A4())
  {
    v12 = 0;
    v44 = v2;
    v43 = i;
    while (1)
    {
      if ((v42 & 0xC000000000000001) != 0)
      {
        v13 = sub_1004BD484();
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

      v16 = sub_1003D1628(v45, v12);
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
          v26 = sub_1004BBE24();

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

      v27 = sub_1003741B4(1);
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
      v31 = sub_1004BC2A4();

      if (!*(v31 + 16))
      {
        goto LABEL_18;
      }

      sub_100004DE4(v31 + 32, v47);

      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_19;
      }

      if (!*(v17 + 2))
      {
        goto LABEL_19;
      }

      v32 = sub_1003741B4(0);
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
      v36 = sub_1004BC2A4();

      if (!*(v36 + 16))
      {
LABEL_18:

LABEL_19:

        goto LABEL_20;
      }

      sub_100004DE4(v36 + 32, v47);

      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_19;
      }

      if (!*(v17 + 2))
      {
        goto LABEL_19;
      }

      v37 = sub_1003741B4(2);
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

      v41 = sub_1004BC2A4();

      if (!*(v41 + 16))
      {
        goto LABEL_19;
      }

      sub_100004DE4(v41 + 32, v47);

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

void sub_1003CECFC(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_colorPalette;
  swift_beginAccess();
  v5 = *&a1[v4];
  v6 = sub_1003CBF68();
  v7 = v6;
  if (v6 >> 62)
  {
    v8 = sub_1004BD6A4();
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
      v10 = sub_1004BD484();
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
    aBlock[4] = sub_1003D400C;
    aBlock[5] = v18;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000D6C80;
    aBlock[3] = &unk_1005C7758;
    v19 = _Block_copy(aBlock);
    v20 = a1;

    [v12 animateWithDuration:0 delay:v19 usingSpringWithDamping:0 initialSpringVelocity:v15 options:0.0 animations:v17 completion:0.0];
    _Block_release(v19);
  }
}

void sub_1003CEF24(char *a1, uint64_t a2)
{
  *&a1[OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_exclusiveAnimation] = a2;

  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1003D3D00;
  *(v5 + 24) = v4;
  swift_beginAccess();
  v6 = *(a2 + 24);

  v7 = a1;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 24) = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_1003BF410(0, v6[2] + 1, 1, v6);
    *(a2 + 24) = v6;
  }

  v10 = v6[2];
  v9 = v6[3];
  if (v10 >= v9 >> 1)
  {
    v6 = sub_1003BF410((v9 > 1), v10 + 1, 1, v6);
  }

  v6[2] = v10 + 1;
  v11 = &v6[2 * v10];
  v11[4] = sub_100009350;
  v11[5] = v5;
  *(a2 + 24) = v6;
  swift_endAccess();

  sub_1003D0CCC();
}

void sub_1003CF080(char *a1)
{
  v2.receiver = a1;
  v2.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v2, "layoutSubviews");
  if (!*&a1[OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_exclusiveAnimation])
  {
    sub_1003CDF14();
  }
}

Swift::Void __swiftcall WaveformPlayIndicator.layoutSubviews()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, "layoutSubviews");
  if (!*&v0[OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_exclusiveAnimation])
  {
    sub_1003CDF14();
  }
}

void sub_1003CF120()
{
  v1 = v0;
  [v0 bounds];
  Width = CGRectGetWidth(v62);
  v3 = *&v0[OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_numberOfBars];
  [v0 bounds];
  Height = CGRectGetHeight(v63);
  v5 = &v0[OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_colorPalette];
  swift_beginAccess();
  v7 = *(v5 + 2);
  v6 = *(v5 + 3);
  type metadata accessor for AnimationGroup(0, v8);
  v9 = swift_allocObject();
  *(v9 + 16) = _swiftEmptyArrayStorage;
  v10 = (v9 + 16);
  *(v9 + 24) = _swiftEmptyArrayStorage;
  v46 = (v9 + 24);
  v54 = v7;
  v53 = v6;
  v11 = sub_1003CBF68();
  v12 = v11;
  v47 = v9;
  if (v11 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1004BD6A4())
  {
    v14 = 0;
    v51 = v12 & 0xFFFFFFFFFFFFFF8;
    v52 = v12 & 0xC000000000000001;
    v3 = Width / *&v3 * 0.5;
    Height = Height * 0.7;
    Width = 0.11;
    v49 = i;
    v50 = v12;
    v48 = v10;
    while (1)
    {
      if (v52)
      {
        v15 = sub_1004BD484();
      }

      else
      {
        if (v14 >= *(v51 + 16))
        {
          goto LABEL_16;
        }

        v15 = *(v12 + 8 * v14 + 32);
      }

      v16 = v15;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      v55 = v14 + 1;
      v17 = [objc_allocWithZone(UICubicTimingParameters) initWithControlPoint1:0.11 controlPoint2:{0.0, 0.5, 0.0}];
      v18 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:v17 timingParameters:0.25];

      v19 = swift_allocObject();
      *(v19 + 16) = v16;
      *(v19 + 24) = v53;
      *(v19 + 32) = Height;
      v60 = sub_1003D4004;
      v61 = v19;
      aBlock = _NSConcreteStackBlock;
      v57 = 1107296256;
      v58 = sub_1000D6C80;
      v59 = &unk_1005C7618;
      v20 = _Block_copy(&aBlock);
      v21 = v53;
      v22 = v16;

      [v18 addAnimations:v20];
      _Block_release(v20);
      v23 = [objc_allocWithZone(UICubicTimingParameters) initWithControlPoint1:0.11 controlPoint2:{0.0, 0.5, 0.0}];
      v24 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:v23 timingParameters:0.25];

      v25 = swift_allocObject();
      *(v25 + 16) = v22;
      *(v25 + 24) = v54;
      *(v25 + 32) = v3;
      v60 = sub_1003D3C40;
      v61 = v25;
      aBlock = _NSConcreteStackBlock;
      v57 = 1107296256;
      v58 = sub_1000D6C80;
      v59 = &unk_1005C7668;
      v26 = _Block_copy(&aBlock);
      v27 = v54;
      v28 = v22;

      [v24 addAnimations:v26];
      _Block_release(v26);
      v29 = swift_allocObject();
      *(v29 + 16) = v24;
      v60 = sub_1003D3CB0;
      v61 = v29;
      aBlock = _NSConcreteStackBlock;
      v57 = 1107296256;
      v10 = v48;
      v58 = sub_10013ABCC;
      v59 = &unk_1005C76B8;
      v30 = _Block_copy(&aBlock);
      v31 = v24;

      [v18 addCompletion:v30];
      _Block_release(v30);
      swift_beginAccess();
      v32 = *v48;
      v33 = v18;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v48 = v32;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v32 = sub_1003BF304(0, *(v32 + 2) + 1, 1, v32);
        *v48 = v32;
      }

      v36 = *(v32 + 2);
      v35 = *(v32 + 3);
      if (v36 >= v35 >> 1)
      {
        v32 = sub_1003BF304((v35 > 1), v36 + 1, 1, v32);
      }

      *(v32 + 2) = v36 + 1;
      v37 = &v32[16 * v36];
      *(v37 + 4) = v33;
      *(v37 + 5) = v14 * 0.1;
      *v48 = v32;
      swift_endAccess();

      ++v14;
      v12 = v50;
      if (v55 == v49)
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

  v38 = swift_allocObject();
  *(v38 + 16) = v1;
  v39 = swift_allocObject();
  *(v39 + 16) = sub_1003D4008;
  *(v39 + 24) = v38;
  swift_beginAccess();
  v40 = *v46;
  v41 = v1;

  v42 = swift_isUniquelyReferenced_nonNull_native();
  *v46 = v40;
  if ((v42 & 1) == 0)
  {
    v40 = sub_1003BF410(0, v40[2] + 1, 1, v40);
    *v46 = v40;
  }

  v44 = v40[2];
  v43 = v40[3];
  if (v44 >= v43 >> 1)
  {
    v40 = sub_1003BF410((v43 > 1), v44 + 1, 1, v40);
  }

  v40[2] = v44 + 1;
  v45 = &v40[2 * v44];
  v45[4] = sub_100009350;
  v45[5] = v39;
  *(v47 + 24) = v40;
  swift_endAccess();

  *&v41[OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_exclusiveAnimation] = v47;

  sub_1003D0CCC();
}

uint64_t sub_1003CF7C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_1004BD5A4();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  sub_1004BC474();
  v4[6] = sub_1004BC464();
  v7 = sub_1004BC3E4();
  v4[7] = v7;
  v4[8] = v6;

  return _swift_task_switch(sub_1003CF8B8, v7, v6);
}

uint64_t sub_1003CF8B8(__n128 a1)
{
  result = sub_1004BC534();
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
  sub_1003CF120();
  sub_1004BDAD4();
  v11 = swift_task_alloc();
  v1[10] = v11;
  *v11 = v1;
  v11[1] = sub_1003CFA3C;

  return sub_1003D2404(v9, v10, 0, 0, 1);
}

uint64_t sub_1003CFA3C()
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
    v10 = sub_1003D3FCC;
  }

  else
  {
    (*v7)(v4, v6);
    v8 = v3[7];
    v9 = v3[8];
    v10 = sub_1003CFBD4;
  }

  return _swift_task_switch(v10, v8, v9);
}

uint64_t sub_1003CFBD4(__n128 a1)
{
  if (sub_1004BC534())
  {

    v2 = v1[1];

    return v2();
  }

  else
  {
    v4 = v1[9];
    sub_1003CF120();
    sub_1004BDAD4();
    v5 = swift_task_alloc();
    v1[10] = v5;
    *v5 = v1;
    v5[1] = sub_1003CFA3C;

    return sub_1003D2404(1000000000000000 * v4, (v4 * 0x38D7EA4C68000uLL) >> 64, 0, 0, 1);
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
    v4 = sub_1003CBF68();
    v5 = v4;
    if (v4 >> 62)
    {
      v6 = sub_1004BD6A4();
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
              v8 = sub_1004BD484();
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
  sub_1004B85A4();

  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v0;
  sub_1004B85B4();
  sub_1003D0118(v3);
}

void WaveformPlayIndicator.isVisible.setter(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  sub_1004B85B4();
  sub_1003D0118(v3);
}

void sub_1003D0118(char a1)
{
  v1 = a1 & 1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  if (v3 != v1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1004B85A4();

    if (v2 == 1)
    {
      sub_1003CDF14();
    }
  }
}

uint64_t WaveformPlayIndicator.isVisible.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  return v1;
}

void sub_1003D0260(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  *a2 = v3;
}

void sub_1003D02E0(char *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  swift_getKeyPath();
  swift_getKeyPath();
  v2;
  sub_1004B85B4();
  sub_1003D0118(v3);
}

void (*WaveformPlayIndicator.isVisible.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  *(a1 + 8) = *(a1 + 9);
  return sub_1003D0444;
}

void sub_1003D0444(uint64_t a1)
{
  v2 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = *a1;
  sub_1004B85A4();

  v4 = *(a1 + 9);
  swift_getKeyPath();
  swift_getKeyPath();
  *(a1 + 9) = v2;
  v5 = v3;
  sub_1004B85B4();
  sub_1003D0118(v4);
}

uint64_t WaveformPlayIndicator.$isVisible.getter()
{
  swift_beginAccess();
  sub_100003ABC(&qword_10060D2F0, &unk_1004E6370);
  sub_1004B8574();
  return swift_endAccess();
}

uint64_t WaveformPlayIndicator.$isVisible.setter(uint64_t a1)
{
  v2 = sub_100003ABC(&qword_100610768, &qword_1004E51A0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_100003ABC(&qword_10060D2F0, &unk_1004E6370);
  sub_1004B8584();
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
  v5 = sub_100003ABC(&qword_100610768, &qword_1004E51A0);
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
  v4[16] = sub_100003ABC(&qword_10060D2F0, &unk_1004E6370);
  sub_1004B8574();
  swift_endAccess();
  return sub_1001D4118;
}

void sub_1003D0834()
{
  v1 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_numberOfBars);
  if (v1 < 0)
  {
    __break(1u);
  }

  else if (v1)
  {
    sub_1004BD524();
    do
    {
      v2 = [objc_allocWithZone(UIView) init];
      v3 = [v2 layer];
      [v3 setCornerCurve:kCACornerCurveContinuous];

      v4 = [v2 layer];
      [v4 setAllowsEdgeAntialiasing:1];

      v5 = [v2 tintColor];
      [v2 setBackgroundColor:v5];

      sub_1004BD4F4();
      sub_1004BD534();
      sub_1004BD544();
      sub_1004BD504();
      --v1;
    }

    while (v1);
  }
}

uint64_t sub_1003D0B00@<X0>(uint64_t *a2@<X8>)
{
  swift_getObjectType();
  result = sub_1004B8534();
  *a2 = result;
  return result;
}

uint64_t sub_1003D0B40(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  if (a2)
  {
    v17[4] = a2;
    v17[5] = a3;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 1107296256;
    v17[2] = sub_1000D6C80;
    v17[3] = &unk_1005C73E8;
    v9 = _Block_copy(v17);
    sub_10002F518(a2, a3);

    [a1 addAnimations:v9];
    _Block_release(v9);
    sub_10003CC4C(a2, a3);
  }

  swift_beginAccess();
  v10 = *(v4 + 16);
  v11 = a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v4 + 16) = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = sub_1003BF304(0, *(v10 + 2) + 1, 1, v10);
    *(v4 + 16) = v10;
  }

  v14 = *(v10 + 2);
  v13 = *(v10 + 3);
  if (v14 >= v13 >> 1)
  {
    v10 = sub_1003BF304((v13 > 1), v14 + 1, 1, v10);
  }

  *(v10 + 2) = v14 + 1;
  v15 = &v10[16 * v14];
  *(v15 + 4) = v11;
  *(v15 + 5) = a4;
  *(v4 + 16) = v10;
  return swift_endAccess();
}

void sub_1003D0CCC()
{
  v1 = v0;
  v2 = sub_1004BA8F4();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v29 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1004BA924();
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
      v35 = sub_1003D3978;
      v36 = v13;
      aBlock = _NSConcreteStackBlock;
      v32 = 1107296256;
      v33 = sub_10013ABCC;
      v34 = &unk_1005C7398;
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

  sub_100009130(0, &qword_10060E4F0, OS_dispatch_queue_ptr);
  v25 = sub_1004BCB44();
  v35 = sub_1003D3980;
  v36 = v1;
  aBlock = _NSConcreteStackBlock;
  v32 = 1107296256;
  v33 = sub_1000D6C80;
  v34 = &unk_1005C73C0;
  v17 = _Block_copy(&aBlock);

  v18 = v26;
  sub_1004BA914();
  v30 = _swiftEmptyArrayStorage;
  sub_1003D3BB8(&qword_10060A738, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100003ABC(&qword_10060A740, &unk_1004E6630);
  sub_1000206D4(&qword_10060A748, &qword_10060A740, &unk_1004E6630, &protocol conformance descriptor for [A]);
  v19 = v29;
  sub_1004BD2D4();
  v20 = v25;
  sub_1004BCAE4();
  _Block_release(v17);

  (*(v3 + 8))(v19, v2);
  (*(v27 + 8))(v18, v28);
}

double sub_1003D1100(uint64_t a1)
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

uint64_t sub_1003D1194()
{

  return swift_deallocClassInstance();
}

void sub_1003D11D4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1004B6B04();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100007108(v6, qword_1006114E0);
  v7 = sub_100007084(v2, qword_1006114E0);
  if (qword_100609A20 != -1)
  {
    swift_once();
  }

  v8 = qword_100618C60;
  v9 = sub_1004BBE24();
  v10 = sub_1004BBE24();
  v11 = [v8 URLForResource:v9 withExtension:v10];

  if (v11)
  {
    sub_1004B6A94();

    (*(v3 + 32))(v7, v5, v2);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1003D137C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_1004B6B04();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + 16) = xmmword_1004D9D30;
  *(v3 + 32) = 0x4030000000000000;
  if (qword_100609E58 != -1)
  {
    swift_once();
  }

  v8 = sub_100007084(v4, qword_1006114E0);
  (*(v5 + 16))(v7, v8, v4);
  *(v3 + 40) = sub_1003D2F80(v7);
  *(v3 + 48) = v9;
  return v3;
}

id sub_1003D1628(uint64_t a1, unint64_t a2)
{
  sub_1003D1D8C(a1, a2);
  if (!v3)
  {
LABEL_25:
    if (qword_100609E60 != -1)
    {
LABEL_43:
      swift_once();
    }

    v33 = sub_1004B80B4();
    sub_100007084(v33, qword_1006114F8);
    v34 = sub_1004B8094();
    v35 = sub_1004BC9A4();
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
  v7 = sub_1004BC2A4();

  [v4 copy];
  sub_1004BD284();
  swift_unknownObjectRelease();
  sub_100009130(0, &qword_1006117B0, CAKeyframeAnimation_ptr);
  swift_dynamicCast();
  v8 = v49;
  [v4 copy];
  sub_1004BD284();
  swift_unknownObjectRelease();
  swift_dynamicCast();
  v45 = v49;
  v43 = v4;
  [v4 copy];
  sub_1004BD284();
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
      sub_100004DE4(v11, &v49 + 8);
      v52 = v49;
      v53 = v50;
      v54 = v51;
      if (!v51)
      {
        goto LABEL_31;
      }

      v47 = v49;
      sub_10003E13C((&v52 + 8), &v49);
      if (!swift_dynamicCast())
      {
        swift_bridgeObjectRelease_n();
        if (qword_100609E60 != -1)
        {
          swift_once();
        }

        v39 = sub_1004B80B4();
        sub_100007084(v39, qword_1006114F8);
        v40 = sub_1004B8094();
        v41 = sub_1004BC9A4();
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
      v15 = sub_1004BC2A4();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_1003D28D0(v15);
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
      sub_100004C6C((v16 + 32));
      sub_10003E13C(&v49, (v16 + 32));
      isa = sub_1004BC284().super.isa;

      [v8 setValues:isa];

      v18 = v45;
      v19 = sub_1004BBE24();
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
      v24 = sub_1004BC2A4();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_1003D28D0(v24);
      }

      if (v47 >= *(v24 + 16))
      {
        goto LABEL_41;
      }

      v25 = v24 + 32 * v47;
      sub_100004C6C((v25 + 32));
      sub_10003E13C(&v49, (v25 + 32));
      v26 = sub_1004BC284().super.isa;

      [v18 setValues:v26];

      v27 = v44;
      v28 = sub_1004BBE24();
      [v27 setKeyPath:v28];

      *(&v50 + 1) = &type metadata for CGFloat;
      *&v49 = v22 * 0.5;
      result = [v27 values];
      if (!result)
      {
        goto LABEL_46;
      }

      v29 = result;
      v30 = sub_1004BC2A4();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_1003D28D0(v30);
      }

      if (v47 >= *(v30 + 16))
      {
        goto LABEL_42;
      }

      ++v10;
      v31 = v30 + 32 * v47;
      sub_100004C6C((v31 + 32));
      sub_10003E13C(&v49, (v31 + 32));
      v32 = sub_1004BC284().super.isa;

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
    sub_100003ABC(&qword_1006117B8, &qword_1004E6620);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004C5070;
    *(inited + 32) = 0;
    *(inited + 40) = v8;
    *(inited + 48) = 1;
    *(inited + 56) = v45;
    *(inited + 64) = 2;
    *(inited + 72) = v44;
    v38 = sub_1002CFE70(inited);
    swift_setDeallocating();
    sub_100003ABC(&qword_1006117C0, &qword_1004E6628);
    swift_arrayDestroy();

    return v38;
  }

  return result;
}

void sub_1003D1D8C(uint64_t a1, unint64_t a2)
{
  v4 = *(v2 + 40);
  v5 = (a1 << 56) + 0x41746E6169726156;

  v6 = sub_1003D1F68(v5, 0xE800000000000000, v4);

  if (!v6)
  {
    return;
  }

  v7 = [v6 sublayers];

  if (!v7)
  {
    return;
  }

  sub_100009130(0, &qword_10060A9C8, CALayer_ptr);
  v8 = sub_1004BC2A4();

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

  v9 = sub_1004BD484();
LABEL_7:
  v10 = v9;

  v11 = [v10 animationKeys];
  if (v11)
  {
    v12 = v11;
    v13 = sub_1004BC2A4();

    if (*(v13 + 16))
    {

      v14 = sub_1004BBE24();

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

uint64_t sub_1003D1F68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16) && (v4 = sub_1003740CC(a1, a2), (v5 & 1) != 0))
  {
    sub_100004DE4(*(a3 + 56) + 32 * v4, v7);
  }

  else
  {
    memset(v7, 0, sizeof(v7));
  }

  sub_100003ABC(&qword_100611260, &unk_1004DBDA0);
  sub_100009130(0, &qword_10060A9C8, CALayer_ptr);
  if (swift_dynamicCast())
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1003D2010(_BYTE *a1, _BYTE *a2)
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
    v11 = sub_1004BD9C4();
  }

  return v11 & 1;
}

Swift::Int sub_1003D20E4()
{
  sub_1004BDBA4();
  sub_1004BBF84();

  return sub_1004BDBF4();
}

double sub_1003D217C(uint64_t a1)
{
  sub_1004BBF84();

  return result;
}

Swift::Int sub_1003D2200()
{
  sub_1004BDBA4();
  sub_1004BBF84();

  return sub_1004BDBF4();
}

unint64_t sub_1003D2294@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1003D3F54(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1003D22C4(unint64_t *a1@<X8>)
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

uint64_t sub_1003D232C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1004B80B4();
  sub_100007108(v2, qword_1006114F8);
  sub_100007084(v2, qword_1006114F8);
  sub_100009130(0, &qword_10060AA18, OS_os_log_ptr);
  OS_os_log.init(musicCategory:)(0x614279636E756F42, 0xEF74657373417372);
  return sub_1004B80C4();
}

uint64_t sub_1003D23BC()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1003D2404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_1004BD594();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return _swift_task_switch(sub_1003D2504, 0, 0);
}

uint64_t sub_1003D2504()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_1004BD5A4();
  v5 = sub_1003D3BB8(&qword_1006117C8, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  sub_1004BDAB4();
  sub_1003D3BB8(&qword_1006117D0, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  sub_1004BD5B4();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_1003D2694;
  v8 = v0[11];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v8, v0 + 2, v4, v5);
}

uint64_t sub_1003D2694()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return _swift_task_switch(sub_1003D2850, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_1003D2850()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1003D28E4(uint64_t a1)
{
  v41 = sub_100003ABC(&qword_10060E028, &qword_1004E16D0);
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
      sub_1003D3D6C(v14, v4 + v17);
      sub_1003D3DD0(v4, v6);
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

        sub_100003ABC(&qword_100611808, &qword_1004E6668);
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
      sub_1003D3DD0(v6, v10);
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

void sub_1003D2BF0(unint64_t a1)
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
      v6 = sub_1004BD484();
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
      if (!sub_1004BD6A4())
      {
        goto LABEL_61;
      }

      if (sub_1004BD6A4() < 1)
      {
        goto LABEL_62;
      }

      v8 = sub_1004BD6A4();
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
      sub_1004BD6A4();
      goto LABEL_20;
    }

    if (v5)
    {
      goto LABEL_19;
    }

LABEL_20:
    a1 = sub_1004BD494();
    v10 = a1 & 0xFFFFFFFFFFFFFF8;
LABEL_21:

    if (a1 >> 62)
    {
      v17 = sub_1004BD6A4();
      if (__OFSUB__(v17, 1))
      {
        goto LABEL_67;
      }

      memmove((v10 + 32), (v10 + 40), 8 * (v17 - 1));
      v18 = sub_1004BD6A4();
      if (__OFSUB__(v18, 1))
      {
        goto LABEL_68;
      }

      *(v10 + 16) = v18 - 1;
      if (!sub_1004BD6A4())
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
      a1 = sub_10003B19C(a1);
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

    sub_100003ABC(&qword_100611280, &qword_1004E5FB0);
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

  if (sub_1004BD6A4())
  {
    if (!sub_1004BD6A4())
    {
      goto LABEL_65;
    }

    if (!sub_1004BD6A4())
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

void *sub_1003D2F80(uint64_t a1)
{
  v3 = sub_1004B6B24();
  if (v1)
  {
    goto LABEL_2;
  }

  v7 = v3;
  v8 = v4;
  sub_100009130(0, &qword_1006117D8, NSKeyedUnarchiver_ptr);
  sub_100003ABC(&qword_1006117E0, &qword_1004E6660);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1004C50D0;
  *(v9 + 32) = sub_100009130(0, &qword_10060A9C8, CALayer_ptr);
  *(v9 + 40) = sub_100009130(0, &qword_1006117E8, NSMutableDictionary_ptr);
  *(v9 + 48) = sub_100009130(0, &qword_1006117F0, NSArray_ptr);
  *(v9 + 56) = sub_100009130(0, &qword_1006117F8, NSString_ptr);
  *(v9 + 64) = sub_100009130(0, &qword_10060CFF0, NSNumber_ptr);
  sub_1004BCAD4();

  if (!v17)
  {
    sub_1002BE048(v16);
    goto LABEL_14;
  }

  sub_100003ABC(&qword_10060AD58, &qword_1004DCD00);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_14:
    sub_1003D3D18();
    swift_allocError();
    swift_willThrow();
    sub_100004D90(v7, v8);
LABEL_2:
    v5 = sub_1004B6B04();
    return (*(*(v5 - 8) + 8))(a1, v5);
  }

  if (!v15[2] || (v10 = sub_1003740CC(0x6579614C746F6F72, 0xE900000000000072), (v11 & 1) == 0) || (sub_100004DE4(v15[7] + 32 * v10, v16), (swift_dynamicCast() & 1) == 0))
  {

    goto LABEL_14;
  }

  if (!v15[2] || (v12 = sub_1003740CC(0xD000000000000010, 0x800000010050B5D0), (v13 & 1) == 0))
  {

    goto LABEL_16;
  }

  sub_100004DE4(v15[7] + 32 * v12, v16);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:

    goto LABEL_14;
  }

  v14 = sub_1004B6B04();
  (*(*(v14 - 8) + 8))(a1, v14);
  sub_100004D90(v7, v8);
  return v15;
}

void _s11MusicCoreUI21WaveformPlayIndicatorC5coderACSgSo7NSCoderC_tcfc_0()
{
  v1 = v0;
  v21 = sub_100003ABC(&qword_10060D2F0, &unk_1004E6370);
  v2 = *(v21 - 8);
  __chkstk_darwin();
  v4 = &v19 - v3;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_mode) = 0;
  v5 = (v0 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_colorPalette);
  v6 = objc_opt_self();
  v20 = [v6 tintColor];
  v7 = [v6 labelColor];
  v8 = [v7 colorWithAlphaComponent:0.35];

  v9 = [v6 labelColor];
  v10 = [v9 colorWithAlphaComponent:0.2];

  v11 = [v6 labelColor];
  v12 = [v11 colorWithAlphaComponent:0.6];

  *v5 = v20;
  v5[1] = v8;
  v5[2] = v10;
  v5[3] = v12;
  v13 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_waveform;
  *(v1 + v13) = [objc_opt_self() zero];
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_exclusiveAnimation) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_pulseTask) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_barRatio) = 0x3FE0000000000000;
  v14 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator__isVisible;
  v22 = 0;
  sub_1004B8564();
  (*(v2 + 32))(v1 + v14, v4, v21);
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator____lazy_storage___bars) = 0;
  v15 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_cannedAnimationAsset;
  type metadata accessor for BouncyBarsAsset(0, v16);
  v17 = swift_allocObject();
  *(v1 + v15) = sub_1003D137C(v17, v18);
  sub_1004BD624();
  __break(1u);
}

void sub_1003D35C4(void *a1, void *a2, void *a3, void *a4)
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
  sub_100009130(0, &unk_1006111F0, NSObject_ptr);
  v14 = a1;
  v15 = a2;
  v16 = a3;
  v17 = a4;
  if ((sub_1004BCFA4() & 1) == 0 || (sub_1004BCFA4() & 1) == 0 || (sub_1004BCFA4() & 1) == 0 || (sub_1004BCFA4() & 1) == 0)
  {
    sub_1003CBFCC();
  }
}

uint64_t sub_1003D36E0()
{

  return swift_deallocObject();
}

uint64_t sub_1003D3720(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1003D3744()
{
  result = qword_100611568;
  if (!qword_100611568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100611568);
  }

  return result;
}

uint64_t type metadata accessor for WaveformPlayIndicator(uint64_t a1)
{
  result = qword_100611598;
  if (!qword_100611598)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1003D37EC(uint64_t a1)
{
  sub_1003D38C4();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1003D38C4()
{
  if (!qword_10060D468)
  {
    v0 = sub_1004B85D4();
    if (!v1)
    {
      atomic_store(v0, &qword_10060D468);
    }
  }
}

uint64_t sub_1003D3988()
{

  return swift_deallocObject();
}

uint64_t sub_1003D39D0()
{

  return swift_deallocObject();
}

uint64_t sub_1003D3A1C()
{

  return swift_deallocObject();
}

id sub_1003D3A5C()
{
  v1 = *(v0 + 24);
  [*(v0 + 16) setAlpha:1.0];

  return [v1 setAlpha:1.0];
}

uint64_t sub_1003D3AC4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1003D3B04(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000136EC;

  return sub_1003CF7C4(a1, v4, v5, v6);
}

uint64_t sub_1003D3BB8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1003D3C00()
{

  return swift_deallocObject();
}

id sub_1003D3C44()
{
  v1 = *(v0 + 16);
  [v1 setBackgroundColor:*(v0 + 24)];
  [v1 bounds];

  return [v1 setBounds:?];
}

id sub_1003D3CB0(id result)
{
  if (!result)
  {
    return [*(v1 + 16) startAnimation];
  }

  return result;
}

uint64_t sub_1003D3CC8()
{

  return swift_deallocObject();
}

double sub_1003D3D00()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_exclusiveAnimation) = 0;

  return result;
}

unint64_t sub_1003D3D18()
{
  result = qword_100611800;
  if (!qword_100611800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100611800);
  }

  return result;
}

uint64_t sub_1003D3D6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaylistCurators.Curator(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003D3DD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003ABC(&qword_10060E028, &qword_1004E16D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1003D3EA8()
{
  result = qword_100611820;
  if (!qword_100611820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100611820);
  }

  return result;
}

unint64_t sub_1003D3F00()
{
  result = qword_100611828;
  if (!qword_100611828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100611828);
  }

  return result;
}

unint64_t sub_1003D3F54(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1005BE508;
  v6._object = a2;
  v4 = sub_1004BD764(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

id sub_1003D4044(uint64_t a1, uint64_t a2)
{
  result = sub_1003D4064(a1, a2);
  qword_100619570 = result;
  return result;
}

id sub_1003D4064(uint64_t a1, uint64_t a2)
{
  v2 = sub_1004B6B04();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v56 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(sub_100003ABC(&qword_100611A80, &unk_1004E73B0) - 8);
  __chkstk_darwin();
  v57 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v52 - v7;
  __chkstk_darwin();
  v10 = &v52 - v9;
  __chkstk_darwin();
  v59 = &v52 - v11;
  __chkstk_darwin();
  v13 = &v52 - v12;
  v58 = sub_1003D46A8(_swiftEmptyArrayStorage, v14);
  sub_100003ABC(&qword_100611A88, &qword_1004E6BE0);
  v15 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v60 = *(v5 + 72);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1004C5070;
  v62 = v15;
  v55 = v16;
  v17 = v16 + v15;
  v18 = objc_opt_self();
  v19 = [v18 mainBundle];
  v20 = [v19 resourceURL];

  if (v20)
  {
    sub_1004B6A94();

    v21 = *(v3 + 56);
    v22 = v13;
    v23 = 0;
  }

  else
  {
    v21 = *(v3 + 56);
    v22 = v13;
    v23 = 1;
  }

  v61 = v21;
  v21(v22, v23, 1, v2);
  sub_1003D4D78(v13, v17);
  type metadata accessor for BundleFinder(0, v24);
  v25 = [v18 bundleForClass:swift_getObjCClassFromMetadata()];
  v26 = [v25 resourceURL];

  if (v26)
  {
    v27 = v59;
    sub_1004B6A94();

    v28 = 0;
  }

  else
  {
    v28 = 1;
    v27 = v59;
  }

  v29 = (v3 + 56);
  v30 = v61;
  v61(v27, v28, 1, v2);
  v53 = v3;
  v31 = v60;
  sub_1003D4D78(v27, v17 + v60);
  v32 = [v18 mainBundle];
  v33 = [v32 bundleURL];

  sub_1004B6A94();
  v59 = v29;
  v30(v17 + 2 * v31, 0, 1, v2);
  v63 = v58;
  sub_1003D4DE8(v55);
  v34 = v63;
  v35 = v63[2];
  v36 = v57;
  if (v35)
  {
    v37 = 0;
    v38 = v62 + v63;
    v62 = (v53 + 6);
    v58 = (v53 + 1);
    v53 += 4;
    v54 = "319BF3FEA1012BundleFinder";
    v55 = v35;
    while (v37 < v34[2])
    {
      sub_1003D4F20(v38, v8);
      v39 = *v62;
      if ((*v62)(v8, 1, v2) == 1)
      {
        sub_1003D4F90(v8);
        v40 = 1;
      }

      else
      {
        sub_1004B6A64();
        (*v58)(v8, v2);
        v40 = 0;
      }

      v61(v10, v40, 1, v2);
      sub_1003D4F20(v10, v36);
      if (v39(v36, 1, v2) == 1)
      {
        sub_1003D4F90(v10);
      }

      else
      {
        v41 = v34;
        v42 = v10;
        v43 = v8;
        v44 = v56;
        (*v53)(v56, v36, v2);
        v45 = objc_allocWithZone(NSBundle);
        sub_1004B6A44(v46);
        v48 = v47;
        v49 = [v45 initWithURL:v47];

        v36 = v57;
        v50 = v44;
        v8 = v43;
        v10 = v42;
        v34 = v41;
        v35 = v55;
        (*v58)(v50, v2);
        sub_1003D4F90(v10);
        if (v49)
        {

          return v49;
        }
      }

      ++v37;
      v38 += v60;
      if (v35 == v37)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }

LABEL_19:
  result = sub_1004BD624();
  __break(1u);
  return result;
}

void *sub_1003D46A8(uint64_t a1, uint64_t a2)
{
  v3 = sub_1004B6B04();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100003ABC(&qword_100611A80, &unk_1004E73B0);
  v7 = *(v20 - 8);
  __chkstk_darwin();
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = _swiftEmptyArrayStorage;
  if (v10)
  {
    v21 = _swiftEmptyArrayStorage;
    sub_1003D4FF8(0, v10, 0);
    v13 = *(v4 + 16);
    v12 = v4 + 16;
    v11 = v21;
    v14 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v18 = *(v12 + 56);
    v19 = v13;
    do
    {
      v19(v6, v14, v3);
      swift_dynamicCast();
      v21 = v11;
      v16 = v11[2];
      v15 = v11[3];
      if (v16 >= v15 >> 1)
      {
        sub_1003D4FF8((v15 > 1), v16 + 1, 1);
        v11 = v21;
      }

      v11[2] = v16 + 1;
      sub_1003D4D78(v9, v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v16);
      v14 += v18;
      --v10;
    }

    while (v10);
  }

  return v11;
}

uint64_t variable initialization expression of ShaderFallback.calculator()
{
  type metadata accessor for ShaderFallback.Calculator(0);
  swift_allocObject();
  return sub_1003E1138();
}

__n128 sub_1003D494C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1003D4978(uint64_t a1, int a2)
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

uint64_t sub_1003D4998(uint64_t result, int a2, int a3)
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

uint64_t sub_1003D4A60(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_1004B71E4();
}

Swift::Int sub_1003D4BC4(uint64_t a1, uint64_t a2)
{
  sub_1004BDBA4();
  swift_getWitnessTable();
  sub_1004B71F4();
  return sub_1004BDBF4();
}

uint64_t sub_1003D4C74(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1003D4CBC(uint64_t a1)
{
  sub_1003D4C74(&qword_100611AD0, type metadata accessor for Option, &unk_1004E6DF0);
  sub_1003D4C74(&qword_100611AD8, type metadata accessor for Option, &unk_1004E6D44);

  return sub_1004BD744();
}

uint64_t sub_1003D4D78(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003ABC(&qword_100611A80, &unk_1004E73B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1003D4DE8(uint64_t a1)
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

  v3 = sub_1003DCF9C(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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
  sub_100003ABC(&qword_100611A80, &unk_1004E73B0);
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

uint64_t sub_1003D4F20(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003ABC(&qword_100611A80, &unk_1004E73B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003D4F90(uint64_t a1)
{
  v2 = sub_100003ABC(&qword_100611A80, &unk_1004E73B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1003D4FF8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1003D5018(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1003D5018(void *result, int64_t a2, char a3, void *a4)
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

  sub_100003ABC(&qword_100611A88, &qword_1004E6BE0);
  v10 = *(sub_100003ABC(&qword_100611A80, &unk_1004E73B0) - 8);
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
  v15 = *(sub_100003ABC(&qword_100611A80, &unk_1004E73B0) - 8);
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

__n128 sub_1003D5208(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1003D521C(uint64_t a1, int a2)
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

uint64_t sub_1003D523C(uint64_t result, int a2, int a3)
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

__n128 sub_1003D5284(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 sub_1003D52B8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1003D52D4(uint64_t a1, int a2)
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

uint64_t sub_1003D52F4(uint64_t result, int a2, int a3)
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

__n128 sub_1003D5348(uint64_t a1, uint64_t a2)
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

uint64_t sub_1003D535C(uint64_t a1, int a2)
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

uint64_t sub_1003D537C(uint64_t result, int a2, int a3)
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

double sub_1003D54E4()
{
  xmmword_100619580 = xmmword_1004E6810;
  *algn_100619590 = xmmword_1004E6820;
  result = 0.0;
  xmmword_1006195A0 = xmmword_1004E6830;
  unk_1006195B0 = xmmword_1004E6840;
  return result;
}

void sub_1003D5518(void *a1)
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
        v6 = sub_1003DD288(0, *(v6 + 2) + 1, 1, v6);
      }

      v8 = *(v6 + 2);
      v7 = *(v6 + 3);
      if (v8 >= v7 >> 1)
      {
        v6 = sub_1003DD288((v7 > 1), v8 + 1, 1, v6);
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
      sub_100003ABC(&unk_100611C10, &unk_1004E7380);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1004C5220;
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

        v18 = sub_1003DD18C(isUniquelyReferenced_nonNull_native, v25, 1, v18);
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

uint64_t sub_1003D5804(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_framebufferPixelFormat);
  *(v1 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_framebufferPixelFormat) = result;
  if (v2 != result)
  {
    v3 = *(v1 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_renderers + 16);
    *(v3 + 16) = result;
    *(v3 + 160) = sub_1003D7E60();

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1003D5878(void *a1, char a2)
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
    sub_1003DB960(&qword_100612728, _s3__C7CGImageCMa_0, &unk_1004E6B38);
    v8 = v7;
    v9 = sub_1004B71E4();

    if (v9)
    {
      return;
    }

    v6 = OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_imageStorage;
  }

  v13 = *(v3 + v6);
  *(v3 + v6) = a1;
  v14 = a1;

  v15 = *(v3 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_renderers);
  v16 = *(v15 + 24);
  if ((*&v16 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (v16 <= -9.22337204e18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v16 >= 9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v17 = *(v15 + 32);
  if ((*&v17 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v17 <= -9.22337204e18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v17 >= 9.22337204e18)
  {
LABEL_27:
    __break(1u);
    return;
  }

  v11 = sub_1003D5AF8(v16, 0, v17, 0);
  if (v11)
  {
    v21 = v11;
    sub_1003D6318(v11, 0, 0, 0, a2 & 1);

    return;
  }

LABEL_17:
  v18 = sub_1003D6F20(*(v3 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_placeholderColor), *(v3 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_placeholderColor + 8), *(v3 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_placeholderColor + 16), v11, v12);
  v19 = 1.0;
  if (a2)
  {
    v19 = 0.0;
  }

  *(v3 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_textureTransitionMix) = v19;
  v20 = *(v3 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_renderers);
  *(v20 + 96) = v18;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(v20 + 104) = 1;

  swift_unknownObjectRelease();
}

CGImageRef sub_1003D5AF8(uint64_t Width, char a2, int64_t Height, char a4)
{
  v5 = v4;
  if (a2)
  {
    Width = CGImageGetWidth(v5);
  }

  v9 = CGImageGetWidth(v5);
  if (v9 < Width)
  {
    Width = v9;
  }

  if (a4)
  {
    Height = CGImageGetHeight(v5);
  }

  v10 = CGImageGetHeight(v5);
  if (v10 >= Height)
  {
    v11 = Height;
  }

  else
  {
    v11 = v10;
  }

  v12 = CGImageGetColorSpace(v5);
  if (!v12 || (v13 = v12, Model = CGColorSpaceGetModel(v12), v13, Model))
  {
    if (CGImageGetAlphaInfo(v5) != kCGImageAlphaNoneSkipFirst && CGImageGetAlphaInfo(v5) != kCGImageAlphaPremultipliedFirst)
    {
      return v5;
    }
  }

  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v16 = sub_1003DB9A8(Width, v11, DeviceRGB);

  if (!v16)
  {
    return v5;
  }

  v17 = sub_1004BC964();
  sub_100009130(0, &qword_1006126B8, OS_os_log_ptr);
  v18 = sub_1004BD144();
  if (os_log_type_enabled(v18, v17))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v27 = v20;
    *v19 = 136315138;
    _s3__C7CGImageCMa_0(0);
    v21 = v5;
    v22 = sub_1004BBF04();
    v24 = sub_1003DAAC4(v22, v23, &v27);

    *(v19 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v18, v17, "Backdrop: Redrawing incompatible image: %s", v19, 0xCu);
    sub_100004C6C(v20);
  }

  sub_1004BC8E4();
  Image = CGBitmapContextCreateImage(v16);

  return Image;
}

uint64_t sub_1003D5D24(uint64_t result, double a2, double a3, double a4, uint64_t a5)
{
  v6 = (v5 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_placeholderColor);
  *v6 = a2;
  v6[1] = a3;
  v6[2] = a4;
  if (!*(v5 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_imageStorage))
  {
    v7 = result;
    v8 = sub_1003D6F20(a2, a3, a4, result, a5);
    v9 = 1.0;
    if (v7)
    {
      v9 = 0.0;
    }

    *(v5 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_textureTransitionMix) = v9;
    v10 = *(v5 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_renderers);
    *(v10 + 96) = v8;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    *(v10 + 104) = 1;

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t *sub_1003D5DE0(uint64_t *a1)
{
  v2 = v1;
  *&v1[OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_observer + 8] = 0;
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_state] = 0;
  *&v1[OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_framebufferPixelFormat] = 80;
  *&v1[OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_colorPixelFormat] = 115;
  v1[OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_isPaused] = 0;
  *&v1[OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_crossfadeDuration] = 1077097267;
  *&v1[OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_imageStorage] = 0;
  v4 = &v1[OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_placeholderColor];
  *v4 = 0x3FF0000000000000;
  *(v4 + 1) = 0;
  *(v4 + 2) = 0;
  v5 = &v1[OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_environment];
  *v5 = 0;
  *(v5 + 4) = 0x432000004019999ALL;
  v6 = OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_crossfadeTimingFunction;
  v7 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v8) = 1050253722;
  LODWORD(v9) = 1.0;
  *&v2[v6] = [v7 initWithControlPoints:0.0 :0.0 :v8 :v9];
  *&v2[OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_warpTimingSpeed] = 0x400C000000000000;
  *&v2[OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_textureTransitionMix] = 0;
  *&v2[OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_pinchWarpMix] = 0;
  *&v2[OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_pinchMix] = 0;
  v10 = OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_uniforms;
  if (qword_100611878 != -1)
  {
    swift_once();
  }

  memmove(&v2[v10], &static Uniforms.standard, 0x170uLL);
  memmove(&v2[OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_incomingUniforms], &static Uniforms.standard, 0x170uLL);
  v11 = OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_spectrumAnalysis;
  type metadata accessor for SpectrumAnalysis(0, v12);
  swift_allocObject();
  v13 = sub_1003DC6C4();
  *&v2[v11] = v13;
  __asm { FMOV            V0.2S, #1.0 }

  *&v2[OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_aspectRatio] = _D0;
  v19 = &v2[OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_blurRadiusFactor];
  *v19 = 0;
  v19[4] = 1;
  v20 = a1[3];
  v21 = &v2[OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_context];
  *(v21 + 25) = *(a1 + 25);
  v22 = *(a1 + 1);
  *v21 = *a1;
  *(v21 + 1) = v22;
  type metadata accessor for Backdrop.TextureBlender(v13, v23);
  swift_allocObject();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v24 = v20;
  v25 = sub_1003DB1F0(a1);
  type metadata accessor for Backdrop.RotatingArtworkRenderer(v25, v26);
  v27 = swift_allocObject();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v28 = v24;
  v29 = sub_1003D8EA0(a1);
  type metadata accessor for Backdrop.PinchRenderer(v29, v30);
  v31 = swift_allocObject();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v32 = v28;
  sub_1003D7694(a1, 0);
  v33 = &v2[OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_renderers];
  *v33 = v25;
  v33[1] = v27;
  v33[2] = v31;
  v38.receiver = v2;
  v38.super_class = type metadata accessor for Backdrop.CompositeRenderer(v34, v35);
  v36 = objc_msgSendSuper2(&v38, "init");
  sub_1003D613C();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v36;
}

void sub_1003D613C()
{
  sub_1003DB4EC();
  v2 = *(v1 + 16);
  if (!v2)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v2 == 1)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v2 >= 3)
  {
    v14 = *(v1 + 48);
    v15 = *(v1 + 32);
    v12 = *(v1 + 80);
    v13 = *(v1 + 64);
    v11 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1004E6810, COERCE_FLOAT(*(v1 + 96))), xmmword_1004E6820, *(v1 + 96), 1), xmmword_1004E6830, *(v1 + 96), 2), xmmword_1004E6850, *(v1 + 96), 3);
    v10 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1004E6810, COERCE_FLOAT(*(v1 + 112))), xmmword_1004E6820, *(v1 + 112), 1), xmmword_1004E6830, *(v1 + 112), 2), xmmword_1004E6850, *(v1 + 112), 3);
    v9 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1004E6810, COERCE_FLOAT(*(v1 + 128))), xmmword_1004E6820, *(v1 + 128), 1), xmmword_1004E6830, *(v1 + 128), 2), xmmword_1004E6850, *(v1 + 128), 3);
    v8 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1004E6810, COERCE_FLOAT(*(v1 + 144))), xmmword_1004E6820, *(v1 + 144), 1), xmmword_1004E6830, *(v1 + 144), 2), xmmword_1004E6850, *(v1 + 144), 3);
    v6 = *(v1 + 176);
    v7 = *(v1 + 160);
    v4 = *(v1 + 208);
    v5 = *(v1 + 192);

    v3 = v0 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_uniforms;
    swift_beginAccess();
    *(v3 + 80) = v15;
    *(v3 + 96) = v14;
    *(v3 + 112) = v13;
    *(v3 + 128) = v12;
    *(v3 + 144) = -1;
    *(v3 + 148) = 1130102784;
    *(v3 + 160) = v11;
    *(v3 + 176) = v10;
    *(v3 + 192) = v9;
    *(v3 + 208) = v8;
    *(v3 + 224) = -1;
    *(v3 + 228) = 1124204544;
    *(v3 + 240) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1004E6810, v7.f32[0]), xmmword_1004E6820, *v7.f32, 1), xmmword_1004E6830, v7, 2), xmmword_1004E6860, v7, 3);
    *(v3 + 256) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1004E6810, v6.f32[0]), xmmword_1004E6820, *v6.f32, 1), xmmword_1004E6830, v6, 2), xmmword_1004E6860, v6, 3);
    *(v3 + 272) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1004E6810, v5.f32[0]), xmmword_1004E6820, *v5.f32, 1), xmmword_1004E6830, v5, 2), xmmword_1004E6860, v5, 3);
    *(v3 + 288) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1004E6810, v4.f32[0]), xmmword_1004E6820, *v4.f32, 1), xmmword_1004E6830, v4, 2), xmmword_1004E6860, v4, 3);
    *(v3 + 304) = 0;
    *(v3 + 308) = 1124859904;
    return;
  }

LABEL_7:
  __break(1u);
}

double sub_1003D6318(void *a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  if (a4)
  {
    v10 = sub_1003D6F20(*&a1, *&a2, *&a3, a1, a2);
    v11 = 1.0;
    if (a5)
    {
      v11 = 0.0;
    }

    *&v5[OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_textureTransitionMix] = v11;
    v12 = *&v5[OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_renderers];
    *(v12 + 96) = v10;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    *(v12 + 104) = 1;

    swift_unknownObjectRelease();
  }

  else
  {
    v14 = swift_allocObject();
    *(v14 + 16) = a1;
    *(v14 + 24) = a2;
    *(v14 + 32) = a3;
    *(v14 + 40) = 0;
    *(v14 + 48) = v5;
    *(v14 + 56) = a5 & 1;
    sub_100003ABC(&qword_1006126D8, &qword_1004E71E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004C50A0;
    v16 = MTKTextureLoaderOptionSRGB;
    *(inited + 32) = MTKTextureLoaderOptionSRGB;
    *(inited + 40) = 0;
    v17 = v5;
    sub_1003DB7F0(a1, a2, a3, 0);
    v18 = v16;
    v19 = sub_1003DB100(inited);
    swift_setDeallocating();
    sub_1003DB7FC(inited + 32);
    v20 = *&v17[OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_context + 24];
    sub_1003D67E4(v19);

    type metadata accessor for Option(0);
    sub_1003DB960(&qword_100611AD0, type metadata accessor for Option, &unk_1004E6DF0);
    v21.super.isa = sub_1004BBC24().super.isa;

    if (a5)
    {
      v22 = swift_allocObject();
      v22[2] = sub_1003DB7D8;
      v22[3] = v14;
      v28[4] = sub_1003DB89C;
      v28[5] = v22;
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 1107296256;
      v28[2] = sub_1003D6EA0;
      v28[3] = &unk_1005CCE70;
      v23 = _Block_copy(v28);

      [v20 newTextureWithCGImage:a1 options:v21.super.isa completionHandler:v23];

      _Block_release(v23);
    }

    else
    {
      v28[0] = 0;
      v24 = [v20 newTextureWithCGImage:a1 options:v21.super.isa error:v28];

      v25 = v28[0];
      if (v24)
      {
        v26 = v24;
      }

      else
      {
        v27 = v25;
        sub_1004B69B4();

        swift_willThrow();

        v26 = 0;
      }

      sub_1003D66E0(v26, a1, a2, a3, 0, v17, 0);
      swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1003D66E0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7)
{
  if (a5 & 1) != 0 || (v7 = *(a6 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_imageStorage)) == 0 || (v8 = result, v9 = a6, v10 = a7, _s3__C7CGImageCMa_0(0), sub_1003DB960(&qword_100612728, _s3__C7CGImageCMa_0, &unk_1004E6B38), v11 = v7, v12 = sub_1004B71E4(), v11, a7 = v10, a6 = v9, result = v8, (v12))
  {
    v13 = 1.0;
    if (a7)
    {
      v13 = 0.0;
    }

    *(a6 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_textureTransitionMix) = v13;
    v14 = *(a6 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_renderers);
    *(v14 + 96) = result;
    swift_unknownObjectRetain();
    result = swift_unknownObjectRelease();
    *(v14 + 104) = 1;
  }

  return result;
}

void sub_1003D67E4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100003ABC(&qword_100612718, &qword_1004E7200);
    v1 = sub_1004BD6F4();
  }

  else
  {
    v1 = _swiftEmptyDictionarySingleton;
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 8;

  v7 = 0;
  while (v4)
  {
LABEL_15:
    v10 = __clz(__rbit64(v4)) | (v7 << 6);
    v11 = *(*(a1 + 48) + 8 * v10);
    v23 = *(*(a1 + 56) + v10);
    v12 = v11;
    swift_dynamicCast();
    sub_10003E13C((v24 + 8), v22);
    sub_10003E13C(v22, v24);
    sub_1004BBE64();
    sub_1004BDBA4();
    sub_1004BBF84();
    v13 = sub_1004BDBF4();

    v14 = -1 << *(v1 + 32);
    v15 = v13 & ~v14;
    v16 = v15 >> 6;
    if (((-1 << v15) & ~v6[v15 >> 6]) == 0)
    {
      v17 = 0;
      v18 = (63 - v14) >> 6;
      while (++v16 != v18 || (v17 & 1) == 0)
      {
        v19 = v16 == v18;
        if (v16 == v18)
        {
          v16 = 0;
        }

        v17 |= v19;
        v20 = v6[v16];
        if (v20 != -1)
        {
          v8 = __clz(__rbit64(~v20)) + (v16 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v8 = __clz(__rbit64((-1 << v15) & ~v6[v15 >> 6])) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v6 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
    v4 &= v4 - 1;
    *(v1[6] + 8 * v8) = v12;
    sub_10003E13C(v24, (v1[7] + 32 * v8));
    ++v1[2];
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v9 >= v5)
    {

      return;
    }

    v4 = *(a1 + 64 + 8 * v9);
    ++v7;
    if (v4)
    {
      v7 = v9;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}