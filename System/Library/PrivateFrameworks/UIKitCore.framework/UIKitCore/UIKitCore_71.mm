void sub_1891C9080(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_18917F0B0(v2);
  }

  v3 = *(v2 + 2);
  v20[0] = (v2 + 32);
  v20[1] = v3;
  v4 = sub_18A4A85F8();
  if (v4 >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 56;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          v13 = *(v12 + 2);
          if (v13 > *(v12 - 6))
          {
            break;
          }

          v14 = *(v12 + 4);
          v15 = *(v12 + 1);
          v16 = *(v12 - 8);
          *(v12 + 8) = *(v12 - 24);
          *(v12 + 24) = v16;
          *(v12 - 6) = v13;
          *(v12 - 1) = v15;
          *v12 = v14;
          v12 -= 32;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 32;
        --v9;
      }
    }
  }

  else
  {
    v5 = v4;
    v6 = (v3 >> 1);
    if (v3 >= 2)
    {
      v7 = sub_18A4A75D8();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v18[0] = (v7 + 32);
    v18[1] = v6;
    sub_1891CBAC8(v18, v19, v20, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
}

uint64_t UISlider.TrackConfiguration.Tick.title.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

void UISlider.TrackConfiguration.Tick.title.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
}

void *UISlider.TrackConfiguration.Tick.image.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

uint64_t UISlider.TrackConfiguration.Tick.init(position:title:image:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, float a5@<S0>)
{
  *a4 = a5;
  *(a4 + 8) = result;
  *(a4 + 16) = a2;
  *(a4 + 24) = a3;
  return result;
}

void UISlider.TrackConfiguration.Tick.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_18A4A88B8();
  if (!v2)
  {
    sub_18A4A88A8();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_7:
    sub_18A4A88A8();
    return;
  }

  sub_18A4A88A8();
  sub_18A4A7348();
  if (!v3)
  {
    goto LABEL_7;
  }

LABEL_3:
  sub_18A4A88A8();
  v4 = v3;
  sub_18A4A7C98();
}

uint64_t UISlider.TrackConfiguration.Tick.hashValue.getter()
{
  v1 = *(v0 + 3);
  v4 = *v0;
  v5 = *(v0 + 2);
  v6 = v1;
  sub_18A4A8888();
  UISlider.TrackConfiguration.Tick.hash(into:)(v3);
  return sub_18A4A88E8();
}

uint64_t sub_1891C9418()
{
  v1 = *(v0 + 3);
  v4 = *v0;
  v5 = *(v0 + 2);
  v6 = v1;
  sub_18A4A8888();
  UISlider.TrackConfiguration.Tick.hash(into:)(v3);
  return sub_18A4A88E8();
}

uint64_t sub_1891C9478()
{
  v1 = *(v0 + 3);
  v4 = *v0;
  v5 = *(v0 + 2);
  v6 = v1;
  sub_18A4A8888();
  UISlider.TrackConfiguration.Tick.hash(into:)(v3);
  return sub_18A4A88E8();
}

void UISlider.TrackConfiguration.init(allowsTickValuesOnly:neutralValue:enabledRange:ticks:)(char a1@<W0>, char *a2@<X1>, uint64_t a3@<X8>, float a4@<S0>, float a5@<S1>, float a6@<S2>)
{
  v12 = a2;

  sub_1891C9080(&v12);

  v11 = v12;
  *a3 = a1 & 1;
  *(a3 + 4) = a4;
  *(a3 + 8) = a5;
  *(a3 + 12) = a6;
  *(a3 + 16) = v11;
  *(a3 + 24) = 0;
}

void UISlider.TrackConfiguration.init(allowsTickValuesOnly:neutralValue:enabledRange:numberOfTicks:)(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>, float a4@<S0>, float a5@<S1>, float a6@<S2>)
{
  v12 = sub_1891CC4D8(a2);

  sub_1891C9080(&v12);

  v11 = v12;
  *a3 = a1 & 1;
  *(a3 + 4) = a4;
  *(a3 + 8) = a5;
  *(a3 + 12) = a6;
  *(a3 + 16) = v11;
  *(a3 + 24) = 1;
}

uint64_t sub_1891C96C4()
{
  v1 = *(v0 + 16);
  result = MEMORY[0x1E69E7CC0];
  v11 = MEMORY[0x1E69E7CC0];
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = (v1 + 56);
    do
    {
      v5 = *(v4 - 6);
      v6 = *v4;
      if (*(v4 - 1))
      {
        v7 = v6;

        v8 = sub_18A4A7258();
      }

      else
      {
        v7 = v6;
        v8 = 0;
      }

      v9 = objc_allocWithZone(UISliderTick);
      LODWORD(v10) = v5;
      [v9 initWithPosition:v8 title:v7 image:v10];

      MEMORY[0x18CFE2450]();
      if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_18A4A7588();
      }

      v4 += 4;
      sub_18A4A75F8();

      --v3;
    }

    while (v3);
    return v11;
  }

  return result;
}

uint64_t UISlider.TrackConfiguration.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_18A4A88A8();
  sub_18A4A88B8();
  sub_18A4A88B8();
  sub_18A4A88B8();
  sub_1891CC270(a1, v3);
  return sub_18A4A88A8();
}

uint64_t UISlider.TrackConfiguration.hashValue.getter()
{
  v1 = *(v0 + 3);
  v2 = *(v0 + 2);
  v3 = v0[24];
  v6 = *v0;
  v7 = *(v0 + 4);
  v8 = v1;
  v9 = v2;
  v10 = v3;
  sub_18A4A8888();
  UISlider.TrackConfiguration.hash(into:)(v5);
  return sub_18A4A88E8();
}

uint64_t sub_1891C9914()
{
  v1 = *(v0 + 3);
  v2 = *(v0 + 2);
  v3 = v0[24];
  v6 = *v0;
  v7 = *(v0 + 4);
  v8 = v1;
  v9 = v2;
  v10 = v3;
  sub_18A4A8888();
  UISlider.TrackConfiguration.hash(into:)(v5);
  return sub_18A4A88E8();
}

uint64_t sub_1891C9984()
{
  v1 = *(v0 + 3);
  v2 = *(v0 + 2);
  v3 = v0[24];
  v6 = *v0;
  v7 = *(v0 + 4);
  v8 = v1;
  v9 = v2;
  v10 = v3;
  sub_18A4A8888();
  UISlider.TrackConfiguration.hash(into:)(v5);
  return sub_18A4A88E8();
}

void UISlider.trackConfiguration.getter(uint64_t a1@<X8>)
{
  v3 = [v1 trackConfiguration];
  if (v3)
  {
    v4 = v3[OBJC_IVAR___UISliderTrackConfiguration__configuration];
    v6 = *&v3[OBJC_IVAR___UISliderTrackConfiguration__configuration + 8];
    v5 = *&v3[OBJC_IVAR___UISliderTrackConfiguration__configuration + 16];
    v7 = v3[OBJC_IVAR___UISliderTrackConfiguration__configuration + 24];
    v8 = *&v3[OBJC_IVAR___UISliderTrackConfiguration__configuration + 4];
    v9 = v3;

    v10 = v4 | (v8 << 32);
  }

  else
  {
    v10 = 0;
    v6 = 0;
    v5 = 0;
    v7 = 0;
  }

  *a1 = v10;
  *(a1 + 8) = v6;
  *(a1 + 16) = v5;
  *(a1 + 24) = v7;
}

void sub_1891C9A94(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 trackConfiguration];
  if (v3)
  {
    v4 = v3[OBJC_IVAR___UISliderTrackConfiguration__configuration];
    v6 = *&v3[OBJC_IVAR___UISliderTrackConfiguration__configuration + 8];
    v5 = *&v3[OBJC_IVAR___UISliderTrackConfiguration__configuration + 16];
    v7 = v3[OBJC_IVAR___UISliderTrackConfiguration__configuration + 24];
    v8 = *&v3[OBJC_IVAR___UISliderTrackConfiguration__configuration + 4];
    v9 = v3;

    v10 = v4 | (v8 << 32);
  }

  else
  {
    v10 = 0;
    v6 = 0;
    v5 = 0;
    v7 = 0;
  }

  *a2 = v10;
  *(a2 + 8) = v6;
  *(a2 + 16) = v5;
  *(a2 + 24) = v7;
}

void sub_1891C9B38(__int128 *a1)
{
  v1 = *(a1 + 2);
  v2 = *(a1 + 24);
  v3 = *a1;
  v4 = v1;
  v5 = v2;

  UISlider.trackConfiguration.setter(&v3);
}

void UISlider.trackConfiguration.setter(uint64_t *a1)
{
  v2 = a1[2];
  if (v2)
  {
    v3 = *(a1 + 24);
    v5 = *a1;
    v4 = a1[1];
    v6 = HIDWORD(*a1);
    v8 = [objc_allocWithZone(UISliderTrackConfiguration) initWithTicks:0 number:0 evenlySpaced:0];
    v7 = &v8[OBJC_IVAR___UISliderTrackConfiguration__configuration];
    *v7 = v5 & 1;
    *(v7 + 1) = v6;
    *(v7 + 1) = v4;
    *(v7 + 2) = v2;
    v7[24] = v3 & 1;

    [v1 setTrackConfiguration_];
  }

  else
  {

    [v1 setTrackConfiguration_];
  }
}

void (*UISlider.trackConfiguration.modify(uint64_t **a1))(uint64_t a1, char a2)
{
  v2 = v1;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  v4[4] = v2;
  v6 = [v2 trackConfiguration];
  if (v6)
  {
    v7 = v6[OBJC_IVAR___UISliderTrackConfiguration__configuration];
    v9 = *&v6[OBJC_IVAR___UISliderTrackConfiguration__configuration + 8];
    v8 = *&v6[OBJC_IVAR___UISliderTrackConfiguration__configuration + 16];
    v10 = v6[OBJC_IVAR___UISliderTrackConfiguration__configuration + 24];
    v11 = *&v6[OBJC_IVAR___UISliderTrackConfiguration__configuration + 4];
    v12 = v6;

    v13 = v7 | (v11 << 32);
  }

  else
  {
    v13 = 0;
    v9 = 0;
    v8 = 0;
    v10 = 0;
  }

  *v5 = v13;
  v5[1] = v9;
  v5[2] = v8;
  *(v5 + 24) = v10;
  return sub_1891C9D88;
}

void sub_1891C9D88(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 16);
  v4 = *(*a1 + 32);
  if (a2)
  {
    if (v3)
    {
      v5 = v2[24];
      v7 = *v2;
      v6 = *(v2 + 1);
      v8 = HIDWORD(*v2);
      v9 = objc_allocWithZone(UISliderTrackConfiguration);

      v10 = [v9 initWithTicks:0 number:0 evenlySpaced:0];
      v11 = &v10[OBJC_IVAR___UISliderTrackConfiguration__configuration];
      *v11 = v7 & 1;
      *(v11 + 1) = v8;
      *(v11 + 1) = v6;
      *(v11 + 2) = v3;
      v11[24] = v5 & 1;

      [v4 setTrackConfiguration_];
    }

    else
    {
      [*(*a1 + 32) setTrackConfiguration_];
    }
  }

  else if (v3)
  {
    v12 = v2[24];
    v14 = *v2;
    v13 = *(v2 + 1);
    v15 = HIDWORD(*v2);
    v16 = [objc_allocWithZone(UISliderTrackConfiguration) initWithTicks:0 number:0 evenlySpaced:0];
    v17 = &v16[OBJC_IVAR___UISliderTrackConfiguration__configuration];
    *v17 = v14 & 1;
    *(v17 + 1) = v15;
    *(v17 + 1) = v13;
    *(v17 + 2) = v3;
    v17[24] = v12 & 1;

    [v4 setTrackConfiguration_];
  }

  else
  {
    [*(*a1 + 32) setTrackConfiguration_];
  }

  free(v2);
}

id sub_1891CA104(uint64_t a1, uint64_t a2, uint64_t a3, float a4)
{
  if (a2)
  {
    v6 = sub_18A4A7258();
  }

  else
  {
    v6 = 0;
  }

  v7 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  *&v8 = a4;
  v9 = [v7 initWithPosition:v6 title:a3 image:v8];

  return v9;
}

void sub_1891CA230(void *a1@<X8>)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  [v2 position];
  v6 = v5;
  v7 = [v2 title];
  if (v7)
  {
    v8 = v7;
    sub_18A4A7288();
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = [v2 image];
  if (v10)
  {
    v12 = sub_18A4A7258();
  }

  else
  {
    v12 = 0;
  }

  v13 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  LODWORD(v14) = v6;
  v15 = [v13 initWithPosition:v12 title:v11 image:v14];

  a1[3] = ObjectType;
  *a1 = v15;
}

uint64_t UISliderTick.hash.getter()
{
  v1 = *(v0 + OBJC_IVAR___UISliderTick__tick);
  v2 = *(v0 + OBJC_IVAR___UISliderTick__tick + 8);
  v3 = *(v0 + OBJC_IVAR___UISliderTick__tick + 16);
  v4 = *(v0 + OBJC_IVAR___UISliderTick__tick + 24);
  v9 = v1;
  v10 = v2;
  v11 = v3;
  v12 = v4;
  sub_18A4A8888();
  v5 = v4;

  UISlider.TrackConfiguration.Tick.hash(into:)(v8);
  v6 = sub_18A4A88E8();

  return v6;
}

uint64_t UISliderTick.isEqual(_:)(uint64_t a1)
{
  sub_188C85D28(a1, v31);
  v4 = v32;
  if (v32)
  {
    v5 = __swift_project_boxed_opaque_existential_0(v31, v32);
    v6 = *(v4 - 8);
    v7 = MEMORY[0x1EEE9AC00](v5);
    v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v9, v7);
    v10 = sub_18A4A86A8();
    (*(v6 + 8))(v9, v4);
    v3 = __swift_destroy_boxed_opaque_existential_0Tm(v31);
  }

  else
  {
    v10 = 0;
  }

  v30.receiver = v1;
  v30.super_class = UISliderTick;
  v11 = objc_msgSendSuper2(&v30, sel_isEqual_, v10, v3);
  swift_unknownObjectRelease();
  if (!v11)
  {
    goto LABEL_9;
  }

  v12 = sub_188C85D28(a1, v31);
  if (!v32)
  {
    sub_188A553EC(v31);
    goto LABEL_9;
  }

  type metadata accessor for UISliderTick(v12);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v24 = 0;
    return v24 & 1;
  }

  v13 = v28[0];
  v14 = *(v28[0] + OBJC_IVAR___UISliderTick__tick + 8);
  v15 = *(v28[0] + OBJC_IVAR___UISliderTick__tick + 16);
  v16 = *(v28[0] + OBJC_IVAR___UISliderTick__tick + 24);
  LODWORD(v31[0]) = *(v28[0] + OBJC_IVAR___UISliderTick__tick);
  v31[1] = v14;
  v31[2] = v15;
  v32 = v16;
  v17 = &v1[OBJC_IVAR___UISliderTick__tick];
  v18 = *&v1[OBJC_IVAR___UISliderTick__tick];
  v19 = *&v1[OBJC_IVAR___UISliderTick__tick + 8];
  v20 = *&v1[OBJC_IVAR___UISliderTick__tick + 16];
  v21 = *(v17 + 3);
  LODWORD(v28[0]) = v18;
  v28[1] = v19;
  v28[2] = v20;
  v29 = v21;
  v22 = v21;

  v23 = v16;

  v24 = _sSo8UISliderC5UIKitE18TrackConfigurationV4TickV2eeoiySbAG_AGtFZ_0(v31, v28);

  v25 = v29;

  v26 = v32;

  return v24 & 1;
}

id UISliderTick.init(coder:)(void *a1)
{
  v2 = sub_1891CC7B0(a1);

  return v2;
}

void sub_1891CA744(void *a1)
{
  [v1 position];
  v4 = v3;
  v5 = sub_18A4A7258();
  LODWORD(v6) = v4;
  [a1 encodeFloat:v5 forKey:v6];

  v7 = [v1 title];
  v8 = sub_18A4A7258();
  [a1 encodeObject:v7 forKey:v8];

  v9 = [v1 image];
  v10 = sub_18A4A7258();
  [a1 encodeObject:v9 forKey:v10];
}

void sub_1891CABE0(unint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {

    v33 = sub_1891CC4D8(a2);

    sub_1891C9080(&v33);

LABEL_14:
    v18 = v33;
    v19 = 1;
LABEL_23:
    v30 = &v3[OBJC_IVAR___UISliderTrackConfiguration__configuration];
    *v30 = 1;
    *(v30 + 1) = 0;
    *(v30 + 2) = 0;
    *(v30 + 3) = 1065353216;
    *(v30 + 2) = v18;
    v30[24] = v19;
    v32.receiver = v3;
    v32.super_class = UISliderTrackConfiguration;
    objc_msgSendSuper2(&v32, sel_init, v31);
    return;
  }

  if (!a1)
  {
    v33 = MEMORY[0x1E69E7CC0];
    sub_1891C9080(&v33);
    goto LABEL_14;
  }

  if (!(a1 >> 62))
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_6;
    }

LABEL_21:

    v7 = MEMORY[0x1E69E7CC0];
LABEL_22:
    v33 = v7;

    sub_1891C9080(&v33);

    v19 = 0;
    v18 = v33;
    goto LABEL_23;
  }

  v6 = sub_18A4A7F68();
  if (!v6)
  {
    goto LABEL_21;
  }

LABEL_6:
  v31 = v3;
  v33 = MEMORY[0x1E69E7CC0];
  sub_188E6D4C0(0, v6 & ~(v6 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v7 = v33;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v8 = 0;
      do
      {
        v9 = sub_188E4B2C4(v8, a1);
        v10 = *(v9 + OBJC_IVAR___UISliderTick__tick);
        v12 = *(v9 + OBJC_IVAR___UISliderTick__tick + 8);
        v11 = *(v9 + OBJC_IVAR___UISliderTick__tick + 16);
        v13 = *(v9 + OBJC_IVAR___UISliderTick__tick + 24);
        v14 = v13;

        swift_unknownObjectRelease();
        v33 = v7;
        v16 = *(v7 + 2);
        v15 = *(v7 + 3);
        if (v16 >= v15 >> 1)
        {
          sub_188E6D4C0((v15 > 1), v16 + 1, 1);
          v3 = v31;
          v7 = v33;
        }

        *(v7 + 2) = v16 + 1;
        v17 = &v7[32 * v16];
        *(v17 + 8) = v10;
        ++v8;
        *(v17 + 5) = v12;
        *(v17 + 6) = v11;
        *(v17 + 7) = v13;
      }

      while (v6 != v8);
    }

    else
    {
      v20 = (a1 + 32);
      do
      {
        v21 = *v20 + OBJC_IVAR___UISliderTick__tick;
        v22 = *v21;
        v24 = *(v21 + 8);
        v23 = *(v21 + 16);
        v25 = *(v21 + 24);
        v33 = v7;
        v27 = *(v7 + 2);
        v26 = *(v7 + 3);

        v28 = v25;
        if (v27 >= v26 >> 1)
        {
          sub_188E6D4C0((v26 > 1), v27 + 1, 1);
          v3 = v31;
          v7 = v33;
        }

        *(v7 + 2) = v27 + 1;
        v29 = &v7[32 * v27];
        *(v29 + 8) = v22;
        *(v29 + 5) = v24;
        *(v29 + 6) = v23;
        *(v29 + 7) = v25;
        ++v20;
        --v6;
      }

      while (v6);
    }

    goto LABEL_22;
  }

  __break(1u);

  __break(1u);
}

id sub_1891CAF2C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v1 = sub_18A4A7F68();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  type metadata accessor for UISliderTick(v2);
  v3 = sub_18A4A7518();
  v4 = [v2 initWithTicks:v3 number:v1 evenlySpaced:0];

  return v4;
}

id sub_1891CB038(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v2 initWithTicks:0 number:a1 evenlySpaced:1];
}

id sub_1891CB0C8@<X0>(void *a1@<X8>)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = [v2 ticks];
  type metadata accessor for UISliderTick(v5);
  sub_18A4A7548();

  v6 = [v2 ticks];
  v7 = sub_18A4A7548();

  if (v7 >> 62)
  {
    v8 = sub_18A4A7F68();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = [v2 ticksAreEvenlySpaced];
  v10 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v11 = sub_18A4A7518();

  v12 = [v10 initWithTicks:v11 number:v8 evenlySpaced:v9];

  [v12 setAllowsTickValuesOnly_];
  [v2 neutralValue];
  [v12 setNeutralValue_];
  [v2 minimumEnabledValue];
  [v12 setMinimumEnabledValue_];
  [v2 maximumEnabledValue];
  result = [v12 setMaximumEnabledValue_];
  a1[3] = ObjectType;
  *a1 = v12;
  return result;
}

uint64_t sub_1891CB2AC(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void *__return_ptr))
{
  v5 = a1;
  a4(v8);

  __swift_project_boxed_opaque_existential_0(v8, v8[3]);
  v6 = sub_18A4A86A8();
  __swift_destroy_boxed_opaque_existential_0Tm(v8);
  return v6;
}

uint64_t UISliderTrackConfiguration.hash.getter()
{
  v1 = *(v0 + OBJC_IVAR___UISliderTrackConfiguration__configuration + 12);
  v2 = *(v0 + OBJC_IVAR___UISliderTrackConfiguration__configuration + 16);
  v3 = *(v0 + OBJC_IVAR___UISliderTrackConfiguration__configuration + 24);
  v7 = *(v0 + OBJC_IVAR___UISliderTrackConfiguration__configuration);
  v8 = *(v0 + OBJC_IVAR___UISliderTrackConfiguration__configuration + 4);
  v9 = v1;
  v10 = v2;
  v11 = v3;
  sub_18A4A8888();

  UISlider.TrackConfiguration.hash(into:)(v6);
  v4 = sub_18A4A88E8();

  return v4;
}

uint64_t UISliderTrackConfiguration.isEqual(_:)(uint64_t a1)
{
  sub_188C85D28(a1, v27);
  v4 = v31;
  if (v31)
  {
    v5 = __swift_project_boxed_opaque_existential_0(v27, v31);
    v6 = *(v4 - 8);
    v7 = MEMORY[0x1EEE9AC00](v5);
    v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v6 + 16))(v9, v7);
    v10 = sub_18A4A86A8();
    (*(v6 + 8))(v9, v4);
    v3 = __swift_destroy_boxed_opaque_existential_0Tm(v27);
  }

  else
  {
    v10 = 0;
  }

  v26.receiver = v1;
  v26.super_class = UISliderTrackConfiguration;
  v11 = objc_msgSendSuper2(&v26, sel_isEqual_, v10, v3);
  swift_unknownObjectRelease();
  if (!v11)
  {
    goto LABEL_9;
  }

  v12 = sub_188C85D28(a1, v27);
  if (!v31)
  {
    sub_188A553EC(v27);
    goto LABEL_9;
  }

  type metadata accessor for UISliderTrackConfiguration(v12);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v20 = 0;
    return v20 & 1;
  }

  v13 = *v22;
  v14 = *(*v22 + OBJC_IVAR___UISliderTrackConfiguration__configuration + 12);
  v15 = *(*v22 + OBJC_IVAR___UISliderTrackConfiguration__configuration + 16);
  v16 = *(*v22 + OBJC_IVAR___UISliderTrackConfiguration__configuration + 24);
  v27[0] = *(*v22 + OBJC_IVAR___UISliderTrackConfiguration__configuration);
  v28 = *(*v22 + OBJC_IVAR___UISliderTrackConfiguration__configuration + 4);
  v29 = v14;
  v30 = v15;
  LOBYTE(v31) = v16;
  v17 = *&v1[OBJC_IVAR___UISliderTrackConfiguration__configuration + 12];
  v18 = *&v1[OBJC_IVAR___UISliderTrackConfiguration__configuration + 16];
  v19 = v1[OBJC_IVAR___UISliderTrackConfiguration__configuration + 24];
  v22[0] = v1[OBJC_IVAR___UISliderTrackConfiguration__configuration];
  *&v22[4] = *&v1[OBJC_IVAR___UISliderTrackConfiguration__configuration + 4];
  v23 = v17;
  v24 = v18;
  v25 = v19;

  v20 = _sSo8UISliderC5UIKitE18TrackConfigurationV2eeoiySbAE_AEtFZ_0(v27, v22);

  return v20 & 1;
}

uint64_t sub_1891CB6A0(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_OWORD *, __n128))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = a1;
  }

  v8 = (a4)(v10);

  sub_188A553EC(v10);
  return v8 & 1;
}

uint64_t UISliderTrackConfiguration.init(coder:)(void *a1)
{
  sub_1891CC9E8(a1);
  v3 = v2;

  return v3;
}

void sub_1891CB790(void *a1)
{
  v3 = [v1 ticks];
  if (!v3)
  {
    type metadata accessor for UISliderTick(0);
    sub_18A4A7548();
    v3 = sub_18A4A7518();
  }

  v4 = sub_18A4A7258();
  [a1 encodeObject:v3 forKey:v4];

  v5 = [v1 ticksAreEvenlySpaced];
  v6 = sub_18A4A7258();
  [a1 encodeBool:v5 forKey:v6];

  v7 = [v1 allowsTickValuesOnly];
  v8 = sub_18A4A7258();
  [a1 encodeBool:v7 forKey:v8];

  [v1 neutralValue];
  v10 = v9;
  v11 = sub_18A4A7258();
  LODWORD(v12) = v10;
  [a1 encodeFloat:v11 forKey:v12];

  [v1 minimumEnabledValue];
  v14 = v13;
  v15 = sub_18A4A7258();
  LODWORD(v16) = v14;
  [a1 encodeFloat:v15 forKey:v16];

  [v1 maximumEnabledValue];
  v18 = v17;
  v20 = sub_18A4A7258();
  LODWORD(v19) = v18;
  [a1 encodeFloat:v20 forKey:v19];
}

void sub_1891CBAC8(float **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v8 = sub_18917EF5C(v8);
    }

    v86 = v8 + 16;
    v87 = *(v8 + 2);
    if (v87 >= 2)
    {
      while (*a3)
      {
        v88 = &v8[16 * v87];
        v89 = *v88;
        v90 = &v86[2 * v87];
        v91 = v90[1];
        sub_1891CC06C((*a3 + 32 * *v88), (*a3 + 32 * *v90), (*a3 + 32 * v91), v5);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v91 < v89)
        {
          goto LABEL_114;
        }

        if (v87 - 2 >= *v86)
        {
          goto LABEL_115;
        }

        *v88 = v89;
        *(v88 + 1) = v91;
        v92 = *v86 - v87;
        if (*v86 < v87)
        {
          goto LABEL_116;
        }

        v87 = *v86 - 1;
        memmove(v90, v90 + 2, 16 * v92);
        *v86 = v87;
        if (v87 <= 1)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_126;
    }

LABEL_97:

    return;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v93 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 32 * v7);
      v11 = 32 * v9;
      v12 = (*a3 + 32 * v9);
      v14 = *v12;
      v13 = v12 + 16;
      v15 = v14;
      v16 = v9 + 2;
      v17 = v10;
      while (v6 != v16)
      {
        v18 = *v13;
        v13 += 8;
        v19 = v18 > v17;
        ++v16;
        v17 = v18;
        if ((((v10 <= v15) ^ v19) & 1) == 0)
        {
          v7 = v16 - 1;
          if (v10 > v15)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 > v15)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v20 = 32 * v7 - 8;
        v21 = v7;
        v22 = v9;
        do
        {
          if (v22 != --v21)
          {
            v29 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v23 = (v29 + v11);
            v24 = (v29 + v20);
            v25 = *v23;
            v26 = *(v23 + 3);
            v27 = *(v23 + 2);
            v28 = *(v24 - 1);
            *v23 = *(v24 - 3);
            *(v23 + 1) = v28;
            *(v24 - 6) = v25;
            *(v24 - 1) = v27;
            *v24 = v26;
          }

          ++v22;
          v20 -= 32;
          v11 += 32;
        }

        while (v22 < v21);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_188E4B688(0, *(v8 + 2) + 1, 1, v8);
    }

    v5 = *(v8 + 2);
    v40 = *(v8 + 3);
    v41 = v5 + 1;
    if (v5 >= v40 >> 1)
    {
      v8 = sub_188E4B688((v40 > 1), v5 + 1, 1, v8);
    }

    *(v8 + 2) = v41;
    v42 = v8 + 32;
    v43 = &v8[16 * v5 + 32];
    *v43 = v9;
    *(v43 + 1) = v7;
    v95 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v44 = *(v8 + 4);
          v45 = *(v8 + 5);
          v54 = __OFSUB__(v45, v44);
          v46 = v45 - v44;
          v47 = v54;
LABEL_57:
          if (v47)
          {
            goto LABEL_104;
          }

          v60 = &v8[16 * v41];
          v62 = *v60;
          v61 = *(v60 + 1);
          v63 = __OFSUB__(v61, v62);
          v64 = v61 - v62;
          v65 = v63;
          if (v63)
          {
            goto LABEL_106;
          }

          v66 = &v42[16 * v5];
          v68 = *v66;
          v67 = *(v66 + 1);
          v54 = __OFSUB__(v67, v68);
          v69 = v67 - v68;
          if (v54)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v64, v69))
          {
            goto LABEL_111;
          }

          if (v64 + v69 >= v46)
          {
            if (v46 < v69)
            {
              v5 = v41 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v41 < 2)
        {
          goto LABEL_112;
        }

        v70 = &v8[16 * v41];
        v72 = *v70;
        v71 = *(v70 + 1);
        v54 = __OFSUB__(v71, v72);
        v64 = v71 - v72;
        v65 = v54;
LABEL_72:
        if (v65)
        {
          goto LABEL_108;
        }

        v73 = &v42[16 * v5];
        v75 = *v73;
        v74 = *(v73 + 1);
        v54 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v54)
        {
          goto LABEL_110;
        }

        if (v76 < v64)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v41)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v81 = &v42[16 * v5 - 16];
        v82 = *v81;
        v83 = &v42[16 * v5];
        v84 = *(v83 + 1);
        sub_1891CC06C((*a3 + 32 * *v81), (*a3 + 32 * *v83), (*a3 + 32 * v84), v95);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v84 < v82)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 2))
        {
          goto LABEL_100;
        }

        *v81 = v82;
        *(v81 + 1) = v84;
        v85 = *(v8 + 2);
        if (v5 >= v85)
        {
          goto LABEL_101;
        }

        v41 = v85 - 1;
        memmove(&v42[16 * v5], v83 + 16, 16 * (v85 - 1 - v5));
        *(v8 + 2) = v85 - 1;
        if (v85 <= 2)
        {
          goto LABEL_3;
        }
      }

      v48 = &v42[16 * v41];
      v49 = *(v48 - 8);
      v50 = *(v48 - 7);
      v54 = __OFSUB__(v50, v49);
      v51 = v50 - v49;
      if (v54)
      {
        goto LABEL_102;
      }

      v53 = *(v48 - 6);
      v52 = *(v48 - 5);
      v54 = __OFSUB__(v52, v53);
      v46 = v52 - v53;
      v47 = v54;
      if (v54)
      {
        goto LABEL_103;
      }

      v55 = &v8[16 * v41];
      v57 = *v55;
      v56 = *(v55 + 1);
      v54 = __OFSUB__(v56, v57);
      v58 = v56 - v57;
      if (v54)
      {
        goto LABEL_105;
      }

      v54 = __OFADD__(v46, v58);
      v59 = v46 + v58;
      if (v54)
      {
        goto LABEL_107;
      }

      if (v59 >= v51)
      {
        v77 = &v42[16 * v5];
        v79 = *v77;
        v78 = *(v77 + 1);
        v54 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v54)
        {
          goto LABEL_113;
        }

        if (v46 < v80)
        {
          v5 = v41 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v93;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v30 = *a3;
  v31 = *a3 + 32 * v7 - 32;
  v32 = v9 - v7;
LABEL_30:
  v33 = *(v30 + 32 * v7);
  v34 = v32;
  v35 = v31;
  while (1)
  {
    if (v33 > *v35)
    {
LABEL_29:
      ++v7;
      v31 += 32;
      --v32;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v30)
    {
      break;
    }

    v36 = *(v35 + 56);
    v37 = *(v35 + 40);
    v38 = *(v35 + 16);
    *(v35 + 32) = *v35;
    *(v35 + 48) = v38;
    *v35 = v33;
    *(v35 + 8) = v37;
    *(v35 + 24) = v36;
    v35 -= 32;
    if (__CFADD__(v34++, 1))
    {
      goto LABEL_29;
    }
  }

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
}

uint64_t sub_1891CC06C(float *__dst, float *__src, float *a3, float *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 31;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 5;
  v11 = a3 - __src;
  v12 = a3 - __src + 31;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 5;
  if (v10 < v12 >> 5)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 32 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 32)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (*v6 <= *v4)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    v17 = *(v15 + 1);
    *v7 = *v15;
    *(v7 + 1) = v17;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 32 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 32 && v6 > v7)
  {
LABEL_24:
    v18 = v6 - 8;
    v5 -= 8;
    v19 = v14;
    do
    {
      v20 = v5 + 8;
      v21 = *(v19 - 8);
      v19 -= 8;
      if (v21 <= *v18)
      {
        if (v20 != v6)
        {
          v23 = *(v6 - 1);
          *v5 = *v18;
          *(v5 + 1) = v23;
        }

        if (v14 <= v4 || (v6 -= 8, v18 <= v7))
        {
          v6 = v18;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v20 != v14)
      {
        v22 = *(v19 + 1);
        *v5 = *v19;
        *(v5 + 1) = v22;
      }

      v5 -= 8;
      v14 = v19;
    }

    while (v19 > v4);
    v14 = v19;
  }

LABEL_35:
  v24 = v14 - v4 + (v14 - v4 < 0 ? 0x1FuLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v24 & 0xFFFFFFFFFFFFFFE0)))
  {
    memmove(v6, v4, 32 * (v24 >> 5));
  }

  return 1;
}

void sub_1891CC270(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  MEMORY[0x18CFE37E0](v3);
  if (v3)
  {
    v4 = (a2 + 56);
    do
    {
      v6 = *(v4 - 1);
      v7 = *v4;
      sub_18A4A88B8();
      if (v6)
      {
        sub_18A4A88A8();
        v8 = v7;

        sub_18A4A7348();
        if (!v7)
        {
          goto LABEL_9;
        }
      }

      else
      {
        sub_18A4A88A8();
        v9 = v7;
        if (!v7)
        {
LABEL_9:
          sub_18A4A88A8();
          goto LABEL_4;
        }
      }

      sub_18A4A88A8();
      v5 = v7;
      sub_18A4A7C98();

LABEL_4:
      v4 += 4;

      --v3;
    }

    while (v3);
  }
}

uint64_t _sSo8UISliderC5UIKitE18TrackConfigurationV4TickV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  if (v3)
  {
    if (!v5)
    {
      return 0;
    }

    v7 = *(a1 + 8) == *(a2 + 8) && v3 == v5;
    if (!v7 && (sub_18A4A86C8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  if (v4)
  {
    if (v6)
    {
      sub_188A34624(0, &unk_1EA93A1A0, off_1E70E9A58);
      v9 = v6;
      v10 = v4;
      v11 = sub_18A4A7C88();

      if (v11)
      {
        return 1;
      }
    }
  }

  else if (!v6)
  {
    return 1;
  }

  return 0;
}

uint64_t _sSo8UISliderC5UIKitE18TrackConfigurationV2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  result = 0;
  if (((*a1 ^ *a2) & 1) == 0 && *(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2) && *(a1 + 3) == *(a2 + 3))
  {
    v6 = a1[24];
    v7 = a2[24];
    sub_189014CC0(*(a1 + 2), *(a2 + 2));
    if (v8)
    {
      return v6 ^ v7 ^ 1u;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

char *sub_1891CC4D8(uint64_t a1)
{
  if (a1 < 2)
  {
    if (a1 == 1)
    {
      v3 = sub_188E4CD60(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v8 = *(v3 + 2);
      v7 = *(v3 + 3);
      if (v8 >= v7 >> 1)
      {
        v3 = sub_188E4CD60((v7 > 1), v8 + 1, 1, v3);
      }

      *(v3 + 2) = v8 + 1;
      v9 = &v3[32 * v8];
      *(v9 + 8) = 1056964608;
      *(v9 + 6) = 0;
      *(v9 + 7) = 0;
      *(v9 + 5) = 0;
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v2 = 0;
    v3 = MEMORY[0x1E69E7CC0];
    do
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_188E4CD60(0, *(v3 + 2) + 1, 1, v3);
      }

      v5 = *(v3 + 2);
      v4 = *(v3 + 3);
      if (v5 >= v4 >> 1)
      {
        v3 = sub_188E4CD60((v4 > 1), v5 + 1, 1, v3);
      }

      *(v3 + 2) = v5 + 1;
      v6 = &v3[32 * v5];
      *(v6 + 8) = v2 / (a1 - 1);
      *(v6 + 6) = 0;
      *(v6 + 7) = 0;
      *(v6 + 5) = 0;
      ++v2;
    }

    while (a1 != v2);
  }

  return v3;
}

id sub_1891CC648(uint64_t a1, uint64_t a2, void *a3, double a4)
{
  v7 = LODWORD(a4);
  if (a2)
  {
    v8 = sub_18A4A7258();

    [v8 copy];

    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    v9 = swift_dynamicCast();
    if (v9)
    {
      a1 = v15;
    }

    else
    {
      a1 = 0;
    }

    if (v9)
    {
      v10 = v16;
    }

    else
    {
      v10 = 0;
    }

    if (a3)
    {
      goto LABEL_9;
    }

LABEL_13:
    v12 = 0;
    goto LABEL_14;
  }

  v10 = 0;
  if (!a3)
  {
    goto LABEL_13;
  }

LABEL_9:
  [a3 copy];
  sub_18A4A7DE8();
  swift_unknownObjectRelease();
  sub_188A34624(0, &unk_1EA93A1A0, off_1E70E9A58);
  v11 = swift_dynamicCast();
  v12 = v15;
  if (!v11)
  {
    v12 = 0;
  }

LABEL_14:
  v13 = &v4[OBJC_IVAR___UISliderTick__tick];
  *v13 = v7;
  *(v13 + 1) = a1;
  *(v13 + 2) = v10;
  *(v13 + 3) = v12;
  v17.receiver = v4;
  v17.super_class = UISliderTick;
  return objc_msgSendSuper2(&v17, sel_init);
}

id sub_1891CC7B0(void *a1)
{
  v3 = sub_18A4A7258();
  [a1 decodeFloatForKey_];
  v5 = v4;

  v6 = sub_18A4A7258();
  v7 = [a1 decodeObjectForKey_];

  if (v7)
  {
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
  }

  v22 = v20;
  v23 = v21;
  if (*(&v21 + 1))
  {
    v8 = swift_dynamicCast();
    if (v8)
    {
      v9 = v17;
    }

    else
    {
      v9 = 0;
    }

    if (v8)
    {
      v10 = v18;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    sub_188A553EC(&v22);
    v9 = 0;
    v10 = 0;
  }

  v11 = sub_18A4A7258();
  v12 = [a1 decodeObjectForKey_];

  if (v12)
  {
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
  }

  v22 = v20;
  v23 = v21;
  if (*(&v21 + 1))
  {
    sub_188A34624(0, &unk_1EA93A1A0, off_1E70E9A58);
    v13 = swift_dynamicCast();
    v14 = v17;
    if (!v13)
    {
      v14 = 0;
    }
  }

  else
  {
    sub_188A553EC(&v22);
    v14 = 0;
  }

  v15 = &v1[OBJC_IVAR___UISliderTick__tick];
  *v15 = v5;
  *(v15 + 1) = v9;
  *(v15 + 2) = v10;
  *(v15 + 3) = v14;
  v19.receiver = v1;
  v19.super_class = UISliderTick;
  return objc_msgSendSuper2(&v19, sel_init);
}

void sub_1891CC9E8(void *a1)
{
  v3 = sub_18A4A7258();
  v4 = [a1 decodeObjectForKey_];

  if (v4)
  {
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
  }

  else
  {
    v41 = 0u;
    v42 = 0u;
  }

  v43[0] = v41;
  v43[1] = v42;
  if (!*(&v42 + 1))
  {
    sub_188A553EC(v43);
    goto LABEL_20;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93F978, &qword_18A672FC8);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_20:
    v9 = MEMORY[0x1E69E7CC0];
    goto LABEL_21;
  }

  v5 = v39;
  if (v39 >> 62)
  {
    v6 = sub_18A4A7F68();
    v5 = v39;
    if (v6)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

  v6 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
LABEL_19:

    goto LABEL_20;
  }

LABEL_8:
  v7 = v5;
  v36 = a1;
  v37 = v1;
  *&v43[0] = MEMORY[0x1E69E7CC0];
  sub_188E6D4C0(0, v6 & ~(v6 >> 63), 0);
  if (v6 < 0)
  {
    goto LABEL_24;
  }

  v8 = 0;
  v9 = *&v43[0];
  v10 = v7;
  v38 = v7 & 0xC000000000000001;
  v11 = v7;
  do
  {
    if (v38)
    {
      v12 = sub_188E4B2C4(v8, v10);
    }

    else
    {
      v12 = *(v10 + 8 * v8 + 32);
    }

    v13 = v12;
    v14 = *&v12[OBJC_IVAR___UISliderTick__tick];
    v16 = *&v12[OBJC_IVAR___UISliderTick__tick + 8];
    v15 = *&v12[OBJC_IVAR___UISliderTick__tick + 16];
    v17 = *&v12[OBJC_IVAR___UISliderTick__tick + 24];
    v18 = v17;

    *&v43[0] = v9;
    v20 = *(v9 + 16);
    v19 = *(v9 + 24);
    if (v20 >= v19 >> 1)
    {
      sub_188E6D4C0((v19 > 1), v20 + 1, 1);
      v1 = v37;
      v9 = *&v43[0];
    }

    *(v9 + 16) = v20 + 1;
    v21 = v9 + 32 * v20;
    *(v21 + 32) = v14;
    ++v8;
    *(v21 + 40) = v16;
    *(v21 + 48) = v15;
    *(v21 + 56) = v17;
    v10 = v11;
  }

  while (v6 != v8);

  a1 = v36;
LABEL_21:
  v22 = sub_18A4A7258();
  v23 = [a1 decodeBoolForKey_];

  v24 = sub_18A4A7258();
  v4 = [a1 decodeBoolForKey_];

  v25 = sub_18A4A7258();
  [a1 decodeFloatForKey_];
  v27 = v26;

  v28 = sub_18A4A7258();
  [a1 decodeFloatForKey_];
  v30 = v29;

  v31 = sub_18A4A7258();
  [a1 decodeFloatForKey_];
  v33 = v32;

  if (v30 <= v33)
  {
    LOBYTE(v41) = v4;
    *&v43[0] = v9;

    sub_1891C9080(v43);

    v34 = *&v43[0];
    v35 = &v1[OBJC_IVAR___UISliderTrackConfiguration__configuration];
    *v35 = v4;
    *(v35 + 1) = v27;
    *(v35 + 2) = v30;
    *(v35 + 3) = v33;
    *(v35 + 2) = v34;
    v35[24] = v23;
    v40.receiver = v1;
    v40.super_class = UISliderTrackConfiguration;
    objc_msgSendSuper2(&v40, sel_init);
    return;
  }

  __break(1u);
LABEL_24:
  __break(1u);

  __break(1u);
}

unint64_t sub_1891CCDF4()
{
  result = qword_1EA93F958;
  if (!qword_1EA93F958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F958);
  }

  return result;
}

unint64_t sub_1891CCE4C()
{
  result = qword_1EA93F960;
  if (!qword_1EA93F960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F960);
  }

  return result;
}

uint64_t sub_1891CCEA0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_1891CCEE8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1891CCF3C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
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

uint64_t sub_1891CCF98(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

id sub_1891CD038()
{
  v1 = type metadata accessor for _UIRimHighlightEffectViewEntry();
  v4.receiver = v0;
  v4.super_class = v2;
  return objc_msgSendSuper2(&v4, sel_dealloc, v1);
}

double UIScrollView._intelligenceVisibleBounds.getter()
{
  [v0 adjustedContentInset];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  [v0 safeAreaInsets];
  v10 = UIEdgeInsetsMax(15, v2, v4, v6, v8, v9);
  v12 = v11;
  v14 = v13;
  v16 = v15;
  [v0 bounds];

  return UIRectInset(v17, v18, v19, v20, v10, v16, v14, v12);
}

uint64_t sub_1891CD298(char a1, double a2)
{
  v3 = sub_18A4A39B8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = v14 - v9;
  v14[1] = 0;
  sub_1891CD788(v8);
  result = sub_18A4A8A98();
  if (a1)
  {
    sub_18A4A3998();
    sub_188F653E4(v10, v6);
    v12 = *(v4 + 8);
    v12(v6, v3);
    result = (v12)(v10, v3);
  }

  if ((a1 & 2) != 0)
  {
    sub_18A4A39A8();
    sub_188F653E4(v10, v6);
    v13 = *(v4 + 8);
    v13(v6, v3);
    return (v13)(v10, v3);
  }

  return result;
}

uint64_t _sSo12UIScrollViewC5UIKitE27_intelligenceCollectContent2in9collectorySo6CGRectV_21UIIntelligenceSupport0J16ElementCollectorCtF_0(double a1)
{
  v2 = sub_18A4A3BA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_18A4A39B8();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_18A4A36A8();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_18A4A3728();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v1 bounds];
  [v1 contentSize];
  [v1 contentOffset];
  [v1 adjustedContentInset];
  sub_18A4A3698();
  v13 = [v1 _contentScrollableAxes];
  sub_1891CD298(v13, v14);
  sub_18A4A3718();
  (*(v9 + 16))(v5, v12, v8);
  (*(v3 + 104))(v5, *MEMORY[0x1E69DBBA0], v2);
  sub_18A4A3418();
  (*(v3 + 8))(v5, v2);
  return (*(v9 + 8))(v12, v8);
}

unint64_t sub_1891CD788(double a1)
{
  result = qword_1EA92FD30;
  if (!qword_1EA92FD30)
  {
    sub_18A4A39B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA92FD30);
  }

  return result;
}

double sub_1891CD7E0(void *a1)
{
  sub_18A4A80E8();

  strcpy(v4, "<Element id: ");
  HIWORD(v4[1]) = -4864;
  MEMORY[0x18CFE22D0](*a1, a1[1]);
  MEMORY[0x18CFE22D0](0x6469646E6163203BLL, 0xEE00203A73657461);
  v2 = MEMORY[0x18CFE24A0](a1[5], &type metadata for NavigationBarContentWidthResolver.Element.Candidate);
  MEMORY[0x18CFE22D0](v2);

  MEMORY[0x18CFE22D0](62, 0xE100000000000000);
  MEMORY[0x18CFE22D0](v4[0], v4[1]);

  return result;
}

uint64_t sub_1891CD8E0()
{
  sub_18A4A80E8();
  MEMORY[0x18CFE22D0](0xD000000000000017, 0x800000018A6AFEC0);
  MEMORY[0x18CFE22D0](*v0, *(v0 + 8));
  MEMORY[0x18CFE22D0](0x726F697270203B22, 0xED0000203A797469);
  v1 = sub_18A4A8618();
  MEMORY[0x18CFE22D0](v1);

  MEMORY[0x18CFE22D0](0x3A6874646977203BLL, 0xE900000000000020);
  sub_18A4A7718();
  if (*(v0 + 32))
  {
    MEMORY[0x18CFE22D0](0x6F437473756D203BLL, 0xEE00657370616C6CLL);
  }

  if (*(v0 + 33))
  {
    MEMORY[0x18CFE22D0](0xD00000000000001DLL, 0x800000018A6AFEE0);
  }

  MEMORY[0x18CFE22D0](62, 0xE100000000000000);
  return 0;
}

uint64_t sub_1891CDA68()
{
  sub_18A4A80E8();

  strcpy(v3, "<Element id: ");
  HIWORD(v3[1]) = -4864;
  MEMORY[0x18CFE22D0](*v0, v0[1]);
  MEMORY[0x18CFE22D0](0x6469646E6163203BLL, 0xEE00203A73657461);
  v1 = MEMORY[0x18CFE24A0](v0[5], &type metadata for NavigationBarContentWidthResolver.Element.Candidate);
  MEMORY[0x18CFE22D0](v1);

  MEMORY[0x18CFE22D0](62, 0xE100000000000000);
  return v3[0];
}

BOOL sub_1891CDB40(unint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if (a1[2] < a2[2])
  {
    return 1;
  }

  v5 = a1;
  v18 = a2;
  v6 = *(a3 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = *a1;
    v9 = a1[1];
    v10 = (a3 + 40);
    v11 = *v18;
    v12 = v18[1];
    while (1)
    {
      v13 = *(v10 - 1) == v8 && *v10 == v9;
      if (v13 || (sub_18A4A86C8() & 1) != 0)
      {
        break;
      }

      v7 = (v7 + 1);
      v10 += 6;
      if (v6 == v7)
      {
        goto LABEL_19;
      }
    }

    v5 = 0;
    v14 = (a3 + 40);
    while (1)
    {
      v15 = *(v14 - 1) == v11 && *v14 == v12;
      if (v15 || (sub_18A4A86C8() & 1) != 0)
      {
        break;
      }

      v5 = (v5 + 1);
      v14 += 6;
      if (v6 == v5)
      {
        goto LABEL_19;
      }
    }
  }

  else
  {
LABEL_19:
    sub_18A4A80E8();

    v17[0] = 0xD00000000000002CLL;
    v17[1] = 0x800000018A6AFF00;
    v16 = sub_1891CD8E0();
    v7 = v17;
    MEMORY[0x18CFE22D0](v16);

    sub_18A4A8398();
    __break(1u);
  }

  return v7 < v5;
}

uint64_t sub_1891CDD34(char *__src, char *a2, char *a3, unint64_t *__dst, uint64_t a5)
{
  v6 = v5;
  v7 = a3;
  v8 = a2;
  v9 = __src;
  v10 = a2 - __src;
  v11 = (a2 - __src) / 40;
  v12 = a3 - a2;
  v13 = (a3 - a2) / 40;
  if (v11 < v13)
  {
    v14 = 40 * v11;
    v15 = __dst;
    if (__dst != __src || &__src[v14] <= __dst)
    {
      memmove(__dst, __src, v14);
    }

    v16 = &v15[v14 / 8];
    if (v10 < 40)
    {
      v37 = v9;
      goto LABEL_48;
    }

    v17 = a5;
    if (v8 >= v7)
    {
      v37 = v9;
      goto LABEL_48;
    }

    v85 = v5;
    while (1)
    {
      v18 = v7;
      v19 = v8[1];
      v20 = v8[2];
      v21 = v8[3];
      v22 = *(v8 + 32);
      v23 = *(v8 + 33);
      v79 = *v8;
      v80 = v19;
      v81 = v20;
      v82 = v21;
      v83 = v22;
      v84 = v23;
      v24 = v15[1];
      v25 = v15[2];
      v26 = v15[3];
      v27 = *(v15 + 32);
      v28 = *(v15 + 33);
      v73 = *v15;
      v74 = v24;
      v75 = v25;
      v76 = v26;
      v77 = v27;
      v78 = v28;

      v29 = v17;
      v30 = v85;
      v31 = sub_1891CDB40(&v79, &v73, v17);
      v85 = v30;
      if (v30)
      {

        v65 = 5 * ((v16 - v15) / 40);
        if (v9 < v15 || v9 >= &v15[v65] || v9 != v15)
        {
          memmove(v9, v15, v65 * 8);
        }

        goto LABEL_52;
      }

      v32 = v31;

      if (!v32)
      {
        break;
      }

      v33 = v8;
      v34 = v9 == v8;
      v8 += 5;
      v7 = v18;
      if (!v34)
      {
        goto LABEL_14;
      }

LABEL_15:
      v9 += 5;
      v17 = v29;
      if (v15 >= v16 || v8 >= v7)
      {
        v37 = v9;
        goto LABEL_48;
      }
    }

    v33 = v15;
    v34 = v9 == v15;
    v15 += 5;
    v7 = v18;
    if (v34)
    {
      goto LABEL_15;
    }

LABEL_14:
    v35 = *v33;
    v36 = *(v33 + 1);
    v9[4] = v33[4];
    *v9 = v35;
    *(v9 + 1) = v36;
    goto LABEL_15;
  }

  v38 = 5 * v13;
  if (__dst != a2 || &a2[v38 * 8] <= __dst)
  {
    v39 = __dst;
    memmove(__dst, a2, 40 * v13);
    __dst = v39;
  }

  __srca = __dst;
  v16 = &__dst[v38];
  if (v12 < 40 || v8 <= v9)
  {
    v37 = v8;
    v15 = __dst;
    goto LABEL_48;
  }

LABEL_23:
  v85 = v6;
  v40 = 0;
  v41 = v16;
  v69 = v8 - 5;
  v70 = v7;
  while (1)
  {
    v42 = v41;
    v43 = &v41[v40];
    v44 = &v41[v40 - 5];
    v46 = v41[v40 - 4];
    v45 = v41[v40 - 3];
    v47 = *(v43 - 2);
    v48 = *(v43 - 8);
    v49 = *(v43 - 7);
    v79 = *v44;
    v80 = v46;
    v81 = v45;
    v82 = v47;
    v83 = v48;
    v84 = v49;
    v50 = *(v8 - 4);
    v51 = *(v8 - 3);
    v52 = *(v8 - 2);
    v53 = *(v8 - 8);
    v54 = *(v8 - 7);
    v73 = *(v8 - 5);
    v74 = v50;
    v75 = v51;
    v76 = v52;
    v77 = v53;
    v78 = v54;

    v55 = v85;
    v56 = sub_1891CDB40(&v79, &v73, a5);
    v85 = v55;
    if (v55)
    {
      break;
    }

    v57 = v56;

    if (v57)
    {
      v37 = v8 - 5;
      v7 = &v70[v40 * 8 - 40];
      if (&v70[v40 * 8] != v8)
      {
        v61 = *v69;
        v62 = *(v8 - 3);
        *&v70[v40 * 8 - 8] = *(v8 - 1);
        *v7 = v61;
        *&v70[v40 * 8 - 24] = v62;
      }

      v63 = v42;
      v16 = &v42[v40];
      v15 = __srca;
      v64 = &v42[v40] > __srca;
      v6 = v85;
      if (!v64 || (v8 -= 5, v69 <= v9))
      {
        v16 = &v63[v40];
LABEL_48:
        v67 = 5 * ((v16 - v15) / 40);
        if (v37 < v15 || v37 >= &v15[v67] || v37 != v15)
        {
          memmove(v37, v15, v67 * 8);
        }

        goto LABEL_52;
      }

      goto LABEL_23;
    }

    if (&v70[v40 * 8] != v43)
    {
      v58 = &v70[v40 * 8 - 40];
      v59 = *v44;
      v60 = *(v44 + 16);
      *(v58 + 32) = *(v44 + 32);
      *v58 = v59;
      *(v58 + 16) = v60;
    }

    v40 -= 5;
    v41 = v42;
    v16 = &v42[v40];
    v15 = __srca;
    if (&v42[v40] <= __srca)
    {
      v37 = v8;
      goto LABEL_48;
    }
  }

  v66 = 40 * ((v42 - __srca + v40 * 8) / 40);
  if (v8 < __srca || v8 >= &__srca[v66 / 8])
  {
    memmove(v8, __srca, v66);
  }

  else if (v8 != __srca)
  {
    memmove(v8, __srca, v66);
  }

LABEL_52:

  return 1;
}

void sub_1891CE20C(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  v6 = a3[1];
  if (v6 < 1)
  {
    swift_bridgeObjectRetain_n();
    v8 = MEMORY[0x1E69E7CC0];
LABEL_128:
    v179 = *a1;
    if (!v179)
    {
      goto LABEL_169;
    }

    swift_bridgeObjectRetain_n();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_161;
    }

    goto LABEL_130;
  }

  swift_bridgeObjectRetain_n();
  v7 = 0;
  v179 = (v5 + 40);
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7;
    v10 = v7 + 1;
    v155 = v7;
    if (v7 + 1 >= v6)
    {
LABEL_32:
      v24 = v10;
      goto LABEL_33;
    }

    v11 = *a3;
    v12 = *a3 + 40 * v10;
    v13 = *v12;
    v14 = *(v12 + 8);
    v15 = *(v12 + 16);
    v16 = *(v12 + 24);
    v17 = *(v12 + 32);
    LOBYTE(v12) = *(v12 + 33);
    v162 = v13;
    i = v14;
    v164 = v15;
    v165 = v16;
    v166 = v17;
    v167 = v12;
    v18 = v11 + 40 * v9;
    v19 = *v18;
    v20 = *(v18 + 8);
    v21 = *(v18 + 16);
    v22 = *(v18 + 24);
    v23 = *(v18 + 32);
    LOBYTE(v18) = *(v18 + 33);
    v156 = v19;
    v157 = v20;
    v158 = v21;
    v159 = v22;
    v160 = v23;
    v161 = v18;

    v149 = sub_1891CDB40(&v162, &v156, v5);
    if (v153)
    {
      swift_bridgeObjectRelease_n();

LABEL_126:

      return;
    }

    v24 = v9 + 2;
    v145 = v11;
    v147 = v6;
    if (v9 + 2 < v6)
    {
      do
      {
        v25 = (v11 + 40 * v10);
        v10 = v24;
        v26 = (v11 + 40 * v24);
        v27 = *v26;
        v28 = v26[1];
        v176 = *(v26 + 16);
        v174 = v27;
        v175 = v28;
        v29 = *v25;
        v30 = v25[1];
        v178 = *(v25 + 16);
        v177[0] = v29;
        v177[1] = v30;
        if (v175 < v30)
        {
          if (!v149)
          {
            goto LABEL_32;
          }
        }

        else
        {
          v31 = *(v5 + 16);
          if (!v31)
          {
            goto LABEL_27;
          }

          v32 = v8;
          v33 = 0;
          v34 = v174;
          v35 = v179;
          while (1)
          {
            v36 = *(v35 - 1) == v34 && *v35 == *(&v34 + 1);
            if (v36 || (sub_18A4A86C8() & 1) != 0)
            {
              break;
            }

            ++v33;
            v35 += 6;
            if (v31 == v33)
            {
              goto LABEL_27;
            }
          }

          v37 = 0;
          v38 = v177[0];
          v39 = v179;
          while (1)
          {
            v40 = *(v39 - 1) == v38 && *v39 == *(&v38 + 1);
            if (v40 || (sub_18A4A86C8() & 1) != 0)
            {
              break;
            }

            ++v37;
            v39 += 6;
            if (v31 == v37)
            {
              goto LABEL_27;
            }
          }

          v41 = v33 >= v37;
          v8 = v32;
          v9 = v155;
          v11 = v145;
          v6 = v147;
          if (((v149 ^ v41) & 1) == 0)
          {
            v24 = v10;
            goto LABEL_30;
          }
        }

        v24 = v10 + 1;
      }

      while (v10 + 1 != v6);
      v24 = v6;
      if (!v149)
      {
        goto LABEL_33;
      }
    }

    else
    {
LABEL_30:
      if (!v149)
      {
        goto LABEL_33;
      }
    }

    if (v24 < v9)
    {
      goto LABEL_160;
    }

    if (v9 < v24)
    {
      v120 = 40 * v24 - 16;
      v121 = 40 * v9 + 33;
      v122 = v24;
      v123 = v9;
      do
      {
        if (v123 != --v122)
        {
          v124 = *a3;
          if (!*a3)
          {
            goto LABEL_164;
          }

          v125 = (v124 + v121);
          v126 = *(v124 + v121 - 33);
          v127 = v124 + v120;
          v128 = *(v125 - 17);
          v129 = *(v125 - 9);
          v130 = *(v125 - 1);
          v131 = *v125;
          v132 = *(v127 + 8);
          v133 = *(v127 - 8);
          *(v125 - 33) = *(v127 - 24);
          *(v125 - 17) = v133;
          *(v125 - 1) = v132;
          *(v127 - 24) = v126;
          *(v127 - 8) = v128;
          *v127 = v129;
          *(v127 + 8) = v130;
          *(v127 + 9) = v131;
        }

        ++v123;
        v120 -= 40;
        v121 += 40;
      }

      while (v123 < v122);
    }

LABEL_33:
    v42 = a3[1];
    if (v24 >= v42)
    {
      goto LABEL_67;
    }

    if (__OFSUB__(v24, v9))
    {
      goto LABEL_157;
    }

    if (v24 - v9 >= a4)
    {
      goto LABEL_67;
    }

    v43 = v9 + a4;
    if (__OFADD__(v9, a4))
    {
      goto LABEL_158;
    }

    if (v43 >= v42)
    {
      v43 = a3[1];
    }

    if (v43 < v9)
    {
      break;
    }

    if (v24 != v43)
    {
      v146 = v8;
      v148 = v43;
      v44 = *a3;
      do
      {
        v150 = v24;
        v45 = v24;
        do
        {
          v46 = (v44 + 40 * v45);
          v47 = *v46;
          v48 = v46[1];
          v171 = *(v46 + 16);
          v169 = v47;
          v170 = v48;
          v49 = *(v46 - 40);
          v50 = *(v46 - 24);
          v173 = *(v46 - 4);
          v172[0] = v49;
          v172[1] = v50;
          if (v170 >= v50)
          {
            v51 = *(v5 + 16);
            if (!v51)
            {
              goto LABEL_167;
            }

            v52 = 0;
            v53 = v169;
            v54 = v179;
            while (1)
            {
              v55 = *(v54 - 1) == v53 && *v54 == *(&v53 + 1);
              if (v55 || (sub_18A4A86C8() & 1) != 0)
              {
                break;
              }

              ++v52;
              v54 += 6;
              if (v51 == v52)
              {
                goto LABEL_167;
              }
            }

            v56 = 0;
            v57 = v172[0];
            v58 = v179;
            while (1)
            {
              v59 = *(v58 - 1) == v57 && *v58 == *(&v57 + 1);
              if (v59 || (sub_18A4A86C8() & 1) != 0)
              {
                break;
              }

              ++v56;
              v58 += 6;
              if (v51 == v56)
              {
                goto LABEL_167;
              }
            }

            v60 = v52 >= v56;
            v5 = a5;
            v9 = v155;
            if (v60)
            {
              break;
            }
          }

          if (!v44)
          {
            swift_bridgeObjectRelease_n();
            __break(1u);
LABEL_163:
            swift_bridgeObjectRelease_n();
            __break(1u);
LABEL_164:
            swift_bridgeObjectRelease_n();
            __break(1u);
LABEL_165:

            __break(1u);
LABEL_166:
            swift_bridgeObjectRelease_n();
            __break(1u);
LABEL_167:
            v156 = 0;
            v157 = 0xE000000000000000;
            sub_1891CED2C(&v169, &v162);
            sub_1891CED2C(v172, &v162);
            sub_18A4A80E8();

            v162 = 0xD00000000000002CLL;
            for (i = 0x800000018A6AFF00; ; i = 0x800000018A6AFF00)
            {
              v142 = sub_1891CD8E0();
              MEMORY[0x18CFE22D0](v142);

              sub_18A4A8398();
              __break(1u);
LABEL_169:
              swift_bridgeObjectRelease_n();
              __break(1u);
LABEL_27:
              v156 = 0;
              v157 = 0xE000000000000000;
              sub_1891CED2C(&v174, &v162);
              sub_1891CED2C(v177, &v162);
              sub_18A4A80E8();

              v162 = 0xD00000000000002CLL;
            }
          }

          --v45;
          v61 = *v46;
          v62 = v46 - 40;
          v63 = *(v46 + 2);
          v64 = *(v46 + 3);
          v65 = *(v46 + 32);
          v66 = *(v46 + 33);
          v67 = *(v46 - 24);
          *v46 = *(v46 - 40);
          v46[1] = v67;
          *(v46 + 4) = *(v46 - 1);
          *v62 = v61;
          *(v62 + 16) = v63;
          *(v62 + 24) = v64;
          *(v62 + 32) = v65;
          *(v62 + 33) = v66;
        }

        while (v45 != v9);
        v24 = v150 + 1;
      }

      while (v150 + 1 != v148);
      v24 = v148;
      v8 = v146;
    }

LABEL_67:
    if (v24 < v9)
    {
      goto LABEL_156;
    }

    v151 = v24;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_188E4B688(0, *(v8 + 16) + 1, 1, v8);
    }

    v69 = *(v8 + 16);
    v68 = *(v8 + 24);
    v70 = v69 + 1;
    if (v69 >= v68 >> 1)
    {
      v8 = sub_188E4B688((v68 > 1), v69 + 1, 1, v8);
    }

    *(v8 + 16) = v70;
    v71 = v8 + 16 * v69;
    *(v71 + 32) = v9;
    *(v71 + 40) = v151;
    v72 = *a1;
    if (!*a1)
    {
      goto LABEL_166;
    }

    if (v69)
    {
      while (1)
      {
        v73 = v70 - 1;
        if (v70 >= 4)
        {
          break;
        }

        if (v70 == 3)
        {
          v74 = *(v8 + 32);
          v75 = *(v8 + 40);
          v84 = __OFSUB__(v75, v74);
          v76 = v75 - v74;
          v77 = v84;
LABEL_87:
          if (v77)
          {
            goto LABEL_145;
          }

          v90 = (v8 + 16 * v70);
          v92 = *v90;
          v91 = v90[1];
          v93 = __OFSUB__(v91, v92);
          v94 = v91 - v92;
          v95 = v93;
          if (v93)
          {
            goto LABEL_148;
          }

          v96 = (v8 + 32 + 16 * v73);
          v98 = *v96;
          v97 = v96[1];
          v84 = __OFSUB__(v97, v98);
          v99 = v97 - v98;
          if (v84)
          {
            goto LABEL_151;
          }

          if (__OFADD__(v94, v99))
          {
            goto LABEL_152;
          }

          if (v94 + v99 >= v76)
          {
            if (v76 < v99)
            {
              v73 = v70 - 2;
            }

            goto LABEL_108;
          }

          goto LABEL_101;
        }

        v100 = (v8 + 16 * v70);
        v102 = *v100;
        v101 = v100[1];
        v84 = __OFSUB__(v101, v102);
        v94 = v101 - v102;
        v95 = v84;
LABEL_101:
        if (v95)
        {
          goto LABEL_147;
        }

        v103 = v8 + 16 * v73;
        v105 = *(v103 + 32);
        v104 = *(v103 + 40);
        v84 = __OFSUB__(v104, v105);
        v106 = v104 - v105;
        if (v84)
        {
          goto LABEL_150;
        }

        if (v106 < v94)
        {
          goto LABEL_3;
        }

LABEL_108:
        v111 = v73 - 1;
        if (v73 - 1 >= v70)
        {
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
          goto LABEL_159;
        }

        v112 = *a3;
        if (!*a3)
        {
          goto LABEL_163;
        }

        v113 = v8;
        v114 = v8 + 32;
        v8 = *(v8 + 32 + 16 * v111);
        v115 = *(v114 + 16 * v73 + 8);
        v116 = (v112 + 40 * v8);
        v117 = (v112 + 40 * *(v114 + 16 * v73));
        v118 = (v112 + 40 * v115);

        sub_1891CDD34(v116, v117, v118, v72, v5);
        if (v153)
        {
          swift_bridgeObjectRelease_n();
          goto LABEL_126;
        }

        if (v115 < v8)
        {
          goto LABEL_141;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v113 = sub_18917EF5C(v113);
        }

        if (v111 >= *(v113 + 2))
        {
          goto LABEL_142;
        }

        v119 = &v113[16 * v111];
        *(v119 + 4) = v8;
        *(v119 + 5) = v115;
        v168 = v113;
        sub_18917EED0(v73);
        v8 = v168;
        v70 = *(v168 + 16);
        if (v70 <= 1)
        {
          goto LABEL_3;
        }
      }

      v78 = v8 + 32 + 16 * v70;
      v79 = *(v78 - 64);
      v80 = *(v78 - 56);
      v84 = __OFSUB__(v80, v79);
      v81 = v80 - v79;
      if (v84)
      {
        goto LABEL_143;
      }

      v83 = *(v78 - 48);
      v82 = *(v78 - 40);
      v84 = __OFSUB__(v82, v83);
      v76 = v82 - v83;
      v77 = v84;
      if (v84)
      {
        goto LABEL_144;
      }

      v85 = (v8 + 16 * v70);
      v87 = *v85;
      v86 = v85[1];
      v84 = __OFSUB__(v86, v87);
      v88 = v86 - v87;
      if (v84)
      {
        goto LABEL_146;
      }

      v84 = __OFADD__(v76, v88);
      v89 = v76 + v88;
      if (v84)
      {
        goto LABEL_149;
      }

      if (v89 >= v81)
      {
        v107 = (v8 + 32 + 16 * v73);
        v109 = *v107;
        v108 = v107[1];
        v84 = __OFSUB__(v108, v109);
        v110 = v108 - v109;
        if (v84)
        {
          goto LABEL_153;
        }

        if (v76 < v110)
        {
          v73 = v70 - 2;
        }

        goto LABEL_108;
      }

      goto LABEL_87;
    }

LABEL_3:
    v7 = v151;
    v6 = a3[1];
    if (v151 >= v6)
    {
      goto LABEL_128;
    }
  }

LABEL_159:
  __break(1u);
LABEL_160:
  __break(1u);
LABEL_161:
  v8 = sub_18917EF5C(v8);
LABEL_130:
  v168 = v8;
  v134 = v8;
  v8 = *(v8 + 16);
  if (v8 >= 2)
  {
    do
    {
      v135 = *a3;
      if (!*a3)
      {
        goto LABEL_165;
      }

      v136 = *&v134[16 * v8];
      v137 = *&v134[16 * v8 + 24];
      v138 = (v135 + 40 * v136);
      v139 = (v135 + 40 * *&v134[16 * v8 + 16]);
      v140 = (v135 + 40 * v137);

      sub_1891CDD34(v138, v139, v140, v179, a5);
      if (v153)
      {
        break;
      }

      if (v137 < v136)
      {
        goto LABEL_154;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v134 = sub_18917EF5C(v134);
      }

      if (v8 - 2 >= *(v134 + 2))
      {
        goto LABEL_155;
      }

      v141 = &v134[16 * v8];
      *v141 = v136;
      *(v141 + 1) = v137;
      v168 = v134;
      sub_18917EED0(v8 - 1);
      v134 = v168;
      v8 = *(v168 + 16);
    }

    while (v8 > 1);
  }

  swift_bridgeObjectRelease_n();
}

unint64_t sub_1891CED64(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_18A4A7368();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_18A4A7448();
}

uint64_t sub_1891CEE14(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 34))
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

uint64_t sub_1891CEE5C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 34) = 1;
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

    *(result + 34) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1891CEEBC(uint64_t a1)
{
  v24 = *(a1 + 16);
  if (!v24)
  {
    return;
  }

  v1 = 0;
  v2 = MEMORY[0x1E69E7CC0];
  v23 = a1 + 32;
  while (1)
  {
    v3 = *(v23 + 8 * v1);
    v4 = v3 >> 62;
    if (v3 >> 62)
    {
      v5 = sub_18A4A7F68();
    }

    else
    {
      v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v6 = v2 >> 62;
    if (v2 >> 62)
    {
      v22 = sub_18A4A7F68();
      v8 = v22 + v5;
      if (__OFADD__(v22, v5))
      {
LABEL_32:
        __break(1u);
        return;
      }
    }

    else
    {
      v7 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v8 = v7 + v5;
      if (__OFADD__(v7, v5))
      {
        goto LABEL_32;
      }
    }

    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v27 = v5;
    if (isUniquelyReferenced_nonNull_bridgeObject)
    {
      if (!v6)
      {
        v10 = v2 & 0xFFFFFFFFFFFFFF8;
        if (v8 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_14:
      sub_18A4A7F68();
      goto LABEL_15;
    }

    if (v6)
    {
      goto LABEL_14;
    }

LABEL_15:
    v2 = sub_18A4A8168();
    v10 = v2 & 0xFFFFFFFFFFFFFF8;
LABEL_16:
    v11 = *(v10 + 16);
    v12 = *(v10 + 24);
    if (v4)
    {
      break;
    }

    v13 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v13)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (((v12 >> 1) - v11) < v27)
    {
      goto LABEL_35;
    }

    v25 = v2;
    v14 = v10 + 8 * v11 + 32;
    if (v4)
    {
      if (v13 < 1)
      {
        goto LABEL_37;
      }

      sub_188A34360(&qword_1EA93FA98, &unk_1EA93FA88, &unk_18A673268, MEMORY[0x1E69E6340]);
      for (i = 0; i != v13; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93FA88, &unk_18A673268);
        v16 = sub_188E4D4DC(v26, i, v3);
        v18 = *v17;

        (v16)(v26, 0);
        *(v14 + 8 * i) = v18;
      }
    }

    else
    {
      type metadata accessor for _UITimeline.Action();
      swift_arrayInitWithCopy();
    }

    v2 = v25;
    if (v27 >= 1)
    {
      v19 = *(v10 + 16);
      v20 = __OFADD__(v19, v27);
      v21 = v19 + v27;
      if (v20)
      {
        goto LABEL_36;
      }

      *(v10 + 16) = v21;
    }

LABEL_4:
    if (++v1 == v24)
    {
      return;
    }
  }

  v13 = sub_18A4A7F68();
  if (v13)
  {
    goto LABEL_20;
  }

LABEL_3:

  if (v27 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
}

uint64_t _UILiquidMorphAnimation.Parameters.init(manageViews:usingIntermediateShapes:kick:animationSmoothness:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  *a8 = result;
  *(a8 + 1) = a2;
  *(a8 + 8) = a3;
  *(a8 + 16) = a4;
  *(a8 + 24) = a5 & 1;
  *(a8 + 32) = a6;
  *(a8 + 40) = a7 & 1;
  return result;
}

uint64_t _UILiquidMorphAnimation.Parameters.kick.setter(uint64_t result, uint64_t a2, char a3)
{
  *(v3 + 8) = result;
  *(v3 + 16) = a2;
  *(v3 + 24) = a3 & 1;
  return result;
}

uint64_t _UILiquidMorphAnimation.Parameters.animationSmoothness.setter(uint64_t result, char a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 & 1;
  return result;
}

void sub_1891CF2E4(unint64_t a1, char *a2, void *a3, char *a4, void (*a5)(void), uint64_t a6)
{
  v7 = v6;
  v125 = a6;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93FA58, &qword_18A673240);
  v118 = *(v13 - 8);
  v119 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v117 = &v105 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v116 = &v105 - v16;
  v17 = *a2;
  v18 = a2[1];
  v19 = *(a2 + 1);
  v122 = *(a2 + 2);
  v123 = v19;
  v20 = a2[24];
  v120 = v18;
  v121 = v20;
  v124 = *(a2 + 4);
  v21 = a2[40];
  if (_UISolariumEnabled())
  {
    v110 = v21;
    v111 = a5;
    if (a1 >> 62)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93A088, &qword_18A65DB18);
      v104 = sub_18A4A83B8();

      a1 = v104;
      v23 = &OBJC_IVAR____UINavigationBarPlatterItemView_animationScheduler;
      if ((v17 & 1) == 0)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v22 = a1 & 0xFFFFFFFFFFFFFF8;

      sub_18A4A8738();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93A088, &qword_18A65DB18);
      if (swift_dynamicCastMetatype())
      {
        v23 = &OBJC_IVAR____UINavigationBarPlatterItemView_animationScheduler;
        if (v17)
        {
          goto LABEL_5;
        }

LABEL_62:
        v112 = a4;
        v113 = a3;
        v115 = v23[330];
        v62 = *&v115[v7];
        v126[0] = a1;
        v126[3] = v62;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93FA60, &qword_18A673248);
        sub_188A34360(&unk_1EA930B88, &unk_1EA93FA60, &qword_18A673248, MEMORY[0x1E69E6310]);
        v63 = v116;
        sub_18A4A71E8();
        sub_188D7A46C(v63, v62);
        v65 = v64;

        v66 = v117;
        v67 = v119;
        sub_18A4A84C8();
        sub_188D7A46C(v66, a1);
        v69 = v68;
        v70 = *(v118 + 8);
        v70(v66, v67);
        v70(v63, v67);
        if (qword_1EA930BF0 != -1)
        {
          swift_once();
        }

        v71 = sub_18A4A4378();
        __swift_project_value_buffer(v71, qword_1EA994EE0);

        v72 = sub_18A4A4358();
        v73 = sub_18A4A7968();

        if (os_log_type_enabled(v72, v73))
        {
          v74 = swift_slowAlloc();
          v119 = v69;
          v75 = v74;
          v76 = swift_slowAlloc();
          v126[0] = v76;
          *v75 = 136315138;
          v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93A088, &qword_18A65DB18);
          v78 = MEMORY[0x18CFE24E0](v65, v77);
          v80 = v7;
          v81 = sub_1891D69C0(v78, v79, v126);

          *(v75 + 4) = v81;
          v7 = v80;
          _os_log_impl(&dword_188A29000, v72, v73, "LiquidMorph From: %s", v75, 0xCu);
          v82 = __swift_destroy_boxed_opaque_existential_0Tm(v76);
          MEMORY[0x18CFEA5B0](v76, -1, -1, v82);
          v83 = v75;
          v69 = v119;
          MEMORY[0x18CFEA5B0](v83, -1, -1);
        }

        v84 = sub_18A4A4358();
        v85 = sub_18A4A7968();

        if (os_log_type_enabled(v84, v85))
        {
          v86 = swift_slowAlloc();
          v87 = swift_slowAlloc();
          v126[0] = v87;
          *v86 = 136315138;
          v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93A088, &qword_18A65DB18);
          v89 = MEMORY[0x18CFE24E0](v69, v88);
          v90 = v69;
          v92 = sub_1891D69C0(v89, v91, v126);

          *(v86 + 4) = v92;
          _os_log_impl(&dword_188A29000, v84, v85, "LiquidMorph To: %s", v86, 0xCu);
          v93 = __swift_destroy_boxed_opaque_existential_0Tm(v87);
          MEMORY[0x18CFEA5B0](v87, -1, -1, v93);
          MEMORY[0x18CFEA5B0](v86, -1, -1);
        }

        else
        {

          v90 = v69;
        }

        v94 = *(v7 + OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation_sharedAnimationContainer);
        type metadata accessor for _UIReparentingView();
        v95 = v94;

        v96 = v95;
        v97 = sub_188D733EC(v96);
        [v97 setFrame_];
        [v97 setAlpha_];

        v98 = v96;
        v99 = sub_188D733EC(v98);
        [v99 setFrame_];
        [v99 setAlpha_];

        sub_1891D4604(v65, v97, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0);
        v100 = swift_allocObject();
        v101 = v111;
        v102 = v125;
        v100[2] = v111;
        v100[3] = v102;
        v100[4] = v7;
        sub_188D738F4(v101, v102);
        v103 = v7;
        sub_1891D4604(v90, v99, 0, v123, v122, v121, 0, v124, v110, v120, v113, v112, sub_1891D69B4, v100);

        *&v115[v7] = a1;
        goto LABEL_70;
      }

      v50 = a4;
      v51 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v51)
      {
        v52 = a3;
        v53 = v22 + 32;
        while (1)
        {
          v126[4] = &unk_1EFE40210;
          if (!swift_dynamicCastObjCProtocolConditional())
          {
            break;
          }

          v53 += 8;
          if (!--v51)
          {
            goto LABEL_48;
          }
        }

        a1 = v22 | 1;
LABEL_48:
        a3 = v52;
        a4 = v50;
        v23 = &OBJC_IVAR____UINavigationBarPlatterItemView_animationScheduler;
        if ((v17 & 1) == 0)
        {
          goto LABEL_62;
        }
      }

      else
      {
        a4 = v50;
        v23 = &OBJC_IVAR____UINavigationBarPlatterItemView_animationScheduler;
        if ((v17 & 1) == 0)
        {
          goto LABEL_62;
        }
      }
    }

LABEL_5:
    v24 = v23[330];
    v25 = *(v7 + v24);
    if (v25 >> 62)
    {
      if (!sub_18A4A7F68())
      {
        goto LABEL_70;
      }
    }

    else if (!*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_70;
    }

    v107 = v24;
    if ((v25 & 0xC000000000000001) != 0)
    {

      v26 = sub_188E49F3C(0, v25);
    }

    else
    {
      if (!*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_78;
      }

      v26 = *(v25 + 32);
      swift_unknownObjectRetain();
    }

    v27 = [v26 _morphContainerView];
    if (v27)
    {
      v114 = v27;
      v108 = v7;
      v106 = a1 >> 62;
      v112 = a4;
      v113 = a3;
      v115 = v26;
      if (!(a1 >> 62))
      {
        v28 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v29 = &selRef__modalAnimationFinishedEndIgnoringInteractiveEvents_;
        if (v28)
        {
LABEL_13:
          v30 = v28 - 1;
          if (v28 >= 1)
          {
            v31 = 0;
            v32 = a1 & 0xC000000000000001;
            v33 = &selRef_widthAnchor;
            v109 = a1 & 0xC000000000000001;
            while (1)
            {
              if (v32)
              {
                v35 = sub_188E49F3C(v31, a1);
              }

              else
              {
                v35 = *(a1 + 8 * v31 + 32);
                swift_unknownObjectRetain();
              }

              v36 = [v35 v29[49]];
              v37 = [v36 v33[160]];
              if (v37)
              {
                v34 = v37;
                swift_unknownObjectRelease();

                if (v30 == v31)
                {
                  goto LABEL_26;
                }
              }

              else
              {
                v38 = a1;
                v39 = v33;
                v40 = [v115 v29[49]];
                v41 = [v40 superview];
                v42 = v114;
                if (v41 && (v43 = v41, v41, v43 == v42))
                {
                  [v42 insertSubview:v36 belowSubview:v40];
                }

                else
                {
                  [v42 insertSubview:v36 atIndex:0];
                }

                swift_unknownObjectRelease();

                v33 = v39;
                a1 = v38;
                v32 = v109;
                if (v30 == v31)
                {
                  goto LABEL_26;
                }
              }

              ++v31;
            }
          }

          __break(1u);
          goto LABEL_82;
        }

        goto LABEL_26;
      }

LABEL_78:
      v28 = sub_18A4A7F68();
      v29 = &selRef__modalAnimationFinishedEndIgnoringInteractiveEvents_;
      if (v28)
      {
        goto LABEL_13;
      }

LABEL_26:
      v44 = *&v108[v107];
      if (v44 >> 62)
      {
        v45 = sub_18A4A7F68();
      }

      else
      {
        v45 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v46 = MEMORY[0x1E69E7CC0];
      if (v45)
      {
        v126[0] = MEMORY[0x1E69E7CC0];

        sub_18A4A8208();
        if (v45 < 0)
        {
LABEL_82:
          __break(1u);
          goto LABEL_83;
        }

        v47 = 0;
        do
        {
          if ((v44 & 0xC000000000000001) != 0)
          {
            v48 = sub_188E49F3C(v47, v44);
          }

          else
          {
            v48 = *(v44 + 8 * v47 + 32);
            swift_unknownObjectRetain();
          }

          ++v47;
          v49 = [v48 v29[49]];
          swift_unknownObjectRelease();
          sub_18A4A81D8();
          sub_18A4A8218();
          sub_18A4A8228();
          sub_18A4A81E8();
        }

        while (v45 != v47);

        v46 = v126[0];
      }

      v54 = sub_188F98498(v46);

      swift_beginAccess();
      sub_189075D74(v54);
      swift_endAccess();
      if (v106)
      {
        v55 = sub_18A4A7F68();
      }

      else
      {
        v55 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v56 = MEMORY[0x1E69E7CC0];
      if (v55)
      {
        v126[0] = MEMORY[0x1E69E7CC0];
        sub_18A4A8208();
        if (v55 < 0)
        {
LABEL_83:
          __break(1u);
          return;
        }

        v57 = 0;
        do
        {
          if ((a1 & 0xC000000000000001) != 0)
          {
            v58 = sub_188E49F3C(v57, a1);
          }

          else
          {
            v58 = *(a1 + 8 * v57 + 32);
            swift_unknownObjectRetain();
          }

          ++v57;
          v59 = [v58 v29[49]];
          swift_unknownObjectRelease();
          sub_18A4A81D8();
          sub_18A4A8218();
          sub_18A4A8228();
          sub_18A4A81E8();
        }

        while (v55 != v57);
        v56 = v126[0];
      }

      v60 = sub_188F98498(v56);

      v61 = v108;
      swift_beginAccess();
      v7 = v61;
      sub_1891D7158(v60);
      swift_endAccess();
      swift_unknownObjectRelease();

      a4 = v112;
      a3 = v113;
      v23 = &OBJC_IVAR____UINavigationBarPlatterItemView_animationScheduler;
      goto LABEL_62;
    }

    swift_unknownObjectRelease();
LABEL_70:

    return;
  }

  if (a5)
  {
    a5();
  }
}

double sub_1891CFF3C(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    a1();
  }

  sub_1891D59C0();
  v4 = MEMORY[0x1E69E7CC0];
  *(a3 + OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation_currentMorphables) = MEMORY[0x1E69E7CC0];

  v5 = OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation_morphAnimations;
  swift_beginAccess();
  *(a3 + v5) = v4;

  return result;
}

uint64_t sub_1891CFFC8()
{
  v1 = OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation____lazy_storage___morphTimeline;
  if (*(v0 + OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation____lazy_storage___morphTimeline))
  {
    v2 = *(v0 + OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation____lazy_storage___morphTimeline);
  }

  else
  {
    type metadata accessor for _UITimeline();
    v2 = swift_allocObject();
    v3 = MEMORY[0x1E69E7CC0];
    *(v2 + 24) = 0;
    *(v2 + 32) = 0;
    *(v2 + 16) = v3;
    *(v2 + 40) = 1;
    *(v2 + 48) = 0x3FF0000000000000;
    *(v2 + 56) = 0;
    *(v0 + v1) = v2;
  }

  return v2;
}

id sub_1891D0050()
{
  v1 = OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation____lazy_storage___lensingSDFView;
  v2 = *(v0 + OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation____lazy_storage___lensingSDFView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation____lazy_storage___lensingSDFView);
  }

  else
  {
    type metadata accessor for UISDFView();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1891D00E0(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + *a1);
  if (v3)
  {
    v4 = *(v1 + *a1);
  }

  else
  {
    v5 = [objc_allocWithZone(UIView) init];
    v6 = *(v1 + v2);
    *(v1 + v2) = v5;
    v4 = v5;

    v3 = 0;
  }

  v7 = v3;
  return v4;
}

uint64_t sub_1891D0150()
{
  if (*(v0 + OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation____lazy_storage___lensingPortals))
  {
    v1 = *(v0 + OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation____lazy_storage___lensingPortals);
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC0];
    *(v0 + OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation____lazy_storage___lensingPortals) = MEMORY[0x1E69E7CC0];
  }

  return v1;
}

void sub_1891D0198(uint64_t a1, uint64_t a2, void *a3, void *a4, char *a5, void (*a6)(void), uint64_t a7)
{
  if (!_UISolariumEnabled())
  {
    goto LABEL_30;
  }

  v388 = a4;
  type metadata accessor for _UIMorphAnimationSettingsDomain();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v416.receiver = ObjCClassFromMetadata;
  v416.super_class = &OBJC_METACLASS____TtC5UIKit31_UIMorphAnimationSettingsDomain;
  v15 = objc_msgSendSuper2(&v416, sel_rootSettings);
  if (!v15)
  {
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  v16 = v15;
  type metadata accessor for _UIMorphAnimationSettings();
  v17 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit25_UIMorphAnimationSettings_morphV2Enabled);

  a4 = v388;
  if (v17 != 1)
  {
LABEL_30:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0, &unk_18A64BA50);
    v132 = swift_allocObject();
    *(v132 + 16) = xmmword_18A64B710;
    *(v132 + 32) = a2;
    LOWORD(aBlock.origin.x) = 256;
    aBlock.size.width = 0.0;
    aBlock.origin.y = 0.0;
    LOBYTE(aBlock.size.height) = 1;
    *v418 = 0;
    v418[8] = 1;
    swift_unknownObjectRetain();
    sub_1891CF2E4(v132, &aBlock, a4, a5, a6, a7);

    return;
  }

  v345 = a5;
  v360 = ObjCClassFromMetadata;
  v415 = &unk_1EFE40210;
  v385 = [swift_dynamicCastObjCProtocolUnconditional() _morphPreviewFromCurrentState_fallbackBackgroundColor_contentScale_];
  v18 = [(UITargetedPreview *)v385 _typedStorage];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9371F8, &qword_18A6526D8);
  v19 = swift_allocObject();
  *(v19 + 16) = 1;
  v20 = OBJC_IVAR____UITypedStorage_storage;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v405 = *(v18 + v20);
  *(v18 + v20) = 0x8000000000000000;
  v22 = v7;
  sub_188A40430(v19, &_s31IgnoreForGlassSizeResolutionKeyVN, isUniquelyReferenced_nonNull_native);
  *(v18 + v20) = v405;
  swift_endAccess();

  v414 = &unk_1EFE40210;
  v387 = [swift_dynamicCastObjCProtocolUnconditional() _morphPreviewFromCurrentState_fallbackBackgroundColor_contentScale_];
  v23 = [(UITargetedPreview *)v387 _typedStorage];
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  v25 = OBJC_IVAR____UITypedStorage_storage;
  swift_beginAccess();
  v26 = swift_isUniquelyReferenced_nonNull_native();
  *&v405 = *(v23 + v25);
  *(v23 + v25) = 0x8000000000000000;
  sub_188A40430(v24, &_s31IgnoreForGlassSizeResolutionKeyVN, v26);
  *(v23 + v25) = v405;
  swift_endAccess();

  v27 = sub_1891D00C8();
  [a3 _frame];
  [v27 setFrame_];

  v28 = OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation____lazy_storage___pivotView;
  v29 = [*&v22[OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation____lazy_storage___pivotView] layer];
  v30 = sub_18A4A7258();
  [v29 setName_];

  [*&v22[v28] setUserInteractionEnabled_];
  v31 = *&v22[v28];
  v32 = objc_opt_self();
  v33 = v31;
  v34 = [v32 clearColor];
  v35 = [objc_allocWithZone(UIPreviewParameters) init];
  [v35 setBackgroundColor_];
  [v35 setVisiblePath_];
  [v35 setShadowPath_];

  v36 = [a3 target];
  v37 = [objc_allocWithZone(UITargetedPreview) initWithView:v33 parameters:v35 target:v36];

  v38 = [(UITargetedPreview *)v37 _typedStorage];
  v39 = swift_allocObject();
  *(v39 + 16) = 1;
  v40 = OBJC_IVAR____UITypedStorage_storage;
  swift_beginAccess();
  v41 = swift_isUniquelyReferenced_nonNull_native();
  *&v405 = *(v38 + v40);
  *(v38 + v40) = 0x8000000000000000;
  sub_188A40430(v39, &_s31IgnoreForGlassSizeResolutionKeyVN, v41);
  *(v38 + v40) = v405;
  swift_endAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0, &unk_18A64BA50);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_18A64E3F0;
  v43 = v37;
  v44 = [v385 view];
  v45 = [v44 _vendAssertionForOverrideAlpha_];

  *(v42 + 32) = v45;
  v46 = [v387 view];
  v47 = [v46 _vendAssertionForOverrideAlpha_];

  *(v42 + 40) = v47;
  *&v22[OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation_hidingAssertions] = v42;

  v48 = *&v22[OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation_sharedGroupCompletion];
  v49 = swift_allocObject();
  v49[2] = a6;
  v49[3] = a7;
  v49[4] = v22;
  *v418 = sub_1891D7A7C;
  *&v418[8] = v49;
  *&aBlock.origin.x = MEMORY[0x1E69E9820];
  *&aBlock.origin.y = 1107296256;
  *&aBlock.size.width = sub_188A4A8F0;
  *&aBlock.size.height = &block_descriptor_13_3;
  v50 = _Block_copy(&aBlock);
  sub_188D738F4(a6, a7);
  v22;

  [v48 addCompletion_];
  _Block_release(v50);
  [v385 size];
  v53 = v51 * v52;
  [v387 size];
  v56 = v54 * v55;
  v346 = v53;
  v340 = v56;
  if (v53 >= v56)
  {
    v57 = v385;
  }

  else
  {
    v57 = v387;
  }

  if (v53 >= v56)
  {
    v58 = v387;
  }

  else
  {
    v58 = v385;
  }

  v59 = v58;
  v60 = v57;
  v61 = [v59 target];
  v62 = [v61 container];

  [v59 _frame];
  [v62 convertRect:0 toView:?];
  v349 = v64;
  v350 = v63;
  v347 = v66;
  v348 = v65;

  v67 = [v60 target];
  v68 = [v67 container];

  v361 = v60;
  [v60 _frame];
  [v68 convertRect:0 toView:?];
  v70 = v69;
  v72 = v71;
  v74 = v73;
  v76 = v75;

  v77 = [v43 target];
  v78 = [v77 container];

  [v43 _frame];
  [v78 convertRect:0 toView:?];
  v80 = v79;
  v82 = v81;
  v84 = v83;
  v86 = v85;

  v379 = v70;
  v381 = v72;
  v428.origin.x = v70;
  v428.origin.y = v72;
  v384 = v74;
  v428.size.width = v74;
  rect = v76;
  v428.size.height = v76;
  Width = CGRectGetWidth(v428);
  Center = UIRectGetCenter(v80, v82, v84);
  v374 = v87;
  v429.origin.x = v80;
  v429.origin.y = v82;
  v429.size.width = v84;
  v429.size.height = v86;
  v88 = CGRectGetHeight(v429) * 0.5;
  v430.origin.x = v80;
  v430.origin.y = v82;
  v430.size.width = v84;
  v430.size.height = v86;
  v89 = CGRectGetWidth(v430) * 0.5;
  v431.origin.x = v80;
  v431.origin.y = v82;
  v431.size.width = v84;
  v431.size.height = v86;
  v90 = CGRectGetHeight(v431) * 0.5;
  v367 = v82;
  v370 = v80;
  v432.origin.x = v80;
  v432.origin.y = v82;
  v362 = v86;
  v365 = v84;
  v432.size.width = v84;
  v432.size.height = v86;
  v91 = CGRectGetWidth(v432);
  v433.origin.x = UIRectInset(v350, v349, v348, v347, v88, v91 * 0.5, v90, v89);
  x = v433.origin.x;
  y = v433.origin.y;
  v94 = v433.size.width;
  height = v433.size.height;
  MinX = CGRectGetMinX(v433);
  v434.origin.x = x;
  v434.origin.y = y;
  v434.size.width = v94;
  v434.size.height = height;
  MaxX = CGRectGetMaxX(v434);
  if (MinX > MaxX)
  {
    __break(1u);
    goto LABEL_82;
  }

  v98 = MaxX;
  v435.origin.x = x;
  v435.origin.y = y;
  v435.size.width = v94;
  v435.size.height = height;
  MinY = CGRectGetMinY(v435);
  v436.origin.x = x;
  v436.origin.y = y;
  v436.size.width = v94;
  v436.size.height = height;
  MaxY = CGRectGetMaxY(v436);
  if (MinY > MaxY)
  {
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v332 = v48;
  v101 = Center;
  if (MinX > Center)
  {
    v101 = MinX;
  }

  if (v98 >= v101)
  {
    v102 = v101;
  }

  else
  {
    v102 = v98;
  }

  v103 = v374;
  if (MinY > v374)
  {
    v103 = MinY;
  }

  if (MaxY >= v103)
  {
    v104 = v103;
  }

  else
  {
    v104 = MaxY;
  }

  UIRectCenteredAboutPointScale(v379, v381, v384, Width, v102, v104, 1.0);
  v375 = v105;
  v341 = v106;
  v355 = v107;
  v351 = v108;
  v437.origin.x = v370;
  v437.origin.y = v367;
  v437.size.width = v365;
  v437.size.height = v86;
  v109 = CGRectGetWidth(v437);
  v438.origin.x = v370;
  v438.origin.y = v367;
  v438.size.width = v365;
  v438.size.height = v86;
  v110 = CGRectGetHeight(v438);
  if (v110 < v109)
  {
    v109 = v110;
  }

  v439.origin.x = v379;
  v439.origin.y = v381;
  v439.size.width = v384;
  v439.size.height = rect;
  v111 = CGRectGetWidth(v439);
  *v426 = v375;
  *&v426[1] = v341;
  *&v426[2] = v355;
  v426[3] = v351;
  v427 = 0;
  v378 = sub_18923BBD8(v426, COERCE__INT64(v109 / v111), 0);
  v413.receiver = v360;
  v413.super_class = &OBJC_METACLASS____TtC5UIKit31_UIMorphAnimationSettingsDomain;
  v112 = objc_msgSendSuper2(&v413, sel_rootSettings);
  if (!v112)
  {
    goto LABEL_86;
  }

  v113 = v112;
  v114 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit25_UIMorphAnimationSettings_genieEnabled);

  v343 = v59;
  v344 = v43;
  if (v114 == 1)
  {
    v390.receiver = v360;
    v390.super_class = &OBJC_METACLASS____TtC5UIKit31_UIMorphAnimationSettingsDomain;
    v115 = objc_msgSendSuper2(&v390, sel_rootSettings);
    if (!v115)
    {
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
      goto LABEL_92;
    }

    v116 = v115;
    v338 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit25_UIMorphAnimationSettings_genieScale);

    v117 = UIRectGetCenter(v375, v341, v355);
    v119 = v118;
    v120 = [(UITargetedPreview *)v378 _typedStorage];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C9B0, &qword_18A6526D0);
    v121 = swift_allocObject();
    *(v121 + 16) = 1;
    *(v121 + 24) = v338;
    *(v121 + 32) = v117;
    *(v121 + 40) = v119;
    *(v121 + 48) = v379;
    *(v121 + 56) = v381;
    *(v121 + 64) = v384;
    *(v121 + 72) = rect;
    *(v121 + 80) = 256;
    v122 = OBJC_IVAR____UITypedStorage_storage;
    swift_beginAccess();
    v123 = swift_isUniquelyReferenced_nonNull_native();
    *&v405 = *(v120 + v122);
    *(v120 + v122) = 0x8000000000000000;
    sub_188A40430(v121, &_s18GenieParametersKeyVN, v123);
    *(v120 + v122) = v405;
    swift_endAccess();

    v124 = UIRectGetCenter(v375, v341, v355);
    v126 = v125;
    v127 = [(UITargetedPreview *)v361 _typedStorage];
    v128 = swift_allocObject();
    *(v128 + 16) = 0;
    *(v128 + 24) = v338;
    *(v128 + 32) = v124;
    *(v128 + 40) = v126;
    *(v128 + 48) = v379;
    *(v128 + 56) = v381;
    *(v128 + 64) = v384;
    *(v128 + 72) = rect;
    *(v128 + 80) = 256;
    v129 = OBJC_IVAR____UITypedStorage_storage;
    swift_beginAccess();
    v130 = swift_isUniquelyReferenced_nonNull_native();
    *&v405 = *(v127 + v129);
    *(v127 + v129) = 0x8000000000000000;
    sub_188A40430(v128, &_s18GenieParametersKeyVN, v130);
    *(v127 + v129) = v405;
    swift_endAccess();

    v59 = v343;
  }

  if ([v385 _resolvedBackgroundMaterial])
  {
    ObjectType = swift_getObjectType();
    sub_18901EB8C(ObjectType, v411);
    swift_unknownObjectRelease();
  }

  else
  {
    v412 = 0;
    memset(v411, 0, sizeof(v411));
  }

  if ([v387 _resolvedBackgroundMaterial])
  {
    v133 = swift_getObjectType();
    sub_18901EB8C(v133, v409);
    swift_unknownObjectRelease();
  }

  else
  {
    v410 = 0;
    memset(v409, 0, sizeof(v409));
  }

  [v59 size];
  v135 = v134;
  [v59 size];
  if (v136 >= v135)
  {
    v137 = v135;
  }

  else
  {
    v137 = v136;
  }

  [v59 size];
  v139 = v138;
  [v59 size];
  if (v139 > v140)
  {
    v141 = v139;
  }

  else
  {
    v141 = v140;
  }

  v376 = v141;
  [v361 size];
  v143 = v142;
  [v361 size];
  if (v144 >= v143)
  {
    v145 = v143;
  }

  else
  {
    v145 = v144;
  }

  v331 = v145;
  v146 = UIRectGetCenter(v370, v367, v365);
  v148 = v147;
  v339 = v137;
  UIRectCenteredAboutPointScale(0.0, 0.0, v137, v137, v146, v147, 1.0);
  v352 = v149;
  v335 = v151;
  v337 = v150;
  v333 = v152;
  v153 = UIRectGetCenter(v379, v381, v384);
  v155 = v154;
  v356 = _UILerp_3(v146, v153);
  v156 = _UILerp_3(v148, v155);
  v440.origin.x = UIRectInset(v379, v381, v384, rect, 0.0, 0.0, 0.0, 0.0);
  v157 = v440.origin.x;
  v158 = v440.origin.y;
  v159 = v440.size.width;
  v160 = v440.size.height;
  v161 = CGRectGetMinX(v440);
  v441.origin.x = v157;
  v441.origin.y = v158;
  v441.size.width = v159;
  v441.size.height = v160;
  v162 = CGRectGetMaxX(v441);
  if (v161 > v162)
  {
    goto LABEL_83;
  }

  v163 = v162;
  v442.origin.x = v157;
  v442.origin.y = v158;
  v442.size.width = v159;
  v442.size.height = v160;
  v164 = CGRectGetMinY(v442);
  v443.origin.x = v157;
  v443.origin.y = v158;
  v443.size.width = v159;
  v443.size.height = v160;
  v165 = CGRectGetMaxY(v443);
  if (v164 > v165)
  {
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  v166 = v356;
  if (v161 > v356)
  {
    v166 = v161;
  }

  if (v163 >= v166)
  {
    v167 = v166;
  }

  else
  {
    v167 = v163;
  }

  if (v164 > v156)
  {
    v168 = v164;
  }

  else
  {
    v168 = v156;
  }

  if (v165 >= v168)
  {
    v169 = v168;
  }

  else
  {
    v169 = v165;
  }

  UIRectCenteredAboutPointScale(v352, v337, v335, v333, v167, v169, 1.0);
  v424[0] = v170;
  v424[1] = v171;
  v424[2] = v172;
  v424[3] = v173;
  v425 = 0;
  v174 = sub_18923BBD8(v424, 0x3FD0000000000000, 0);

  if ((v376 / v339 + -1.0) * 0.5 < 0.0)
  {
    v175 = 0.0;
  }

  else
  {
    v175 = (v376 / v339 + -1.0) * 0.5;
  }

  sub_1891CFFC8();
  sub_188F75AF4();

  v176 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for _UITimeline.Action();
  v177 = swift_allocObject();
  v178 = dbl_18A6731B0[v346 < v340] * v175;
  v177[2] = 0xD000000000000010;
  v177[3] = 0x800000018A6AFF90;
  v177[4] = 0;
  v177[5] = sub_1891D7A88;
  v177[6] = v176;
  v357 = v174;
  v342 = v177;
  if (v346 < v340)
  {
    v179 = v177;
    v363 = [objc_allocWithZone(UIViewSpringAnimationBehaviorSettings) init];
    [v363 setDampingRatio_];
    [v363 setResponse_];
    v180 = objc_allocWithZone(UIViewSpringAnimationBehaviorSettings);

    v368 = [v180 &selRef_inhibitSetupOrientation];
    [v368 setDampingRatio_];
    [v368 setResponse_];
    v181 = [v387 target];
    v371 = [v387 retargetedPreviewWithTarget_];

    v444.origin.x = v379;
    v444.origin.y = v381;
    v444.size.width = v384;
    v444.size.height = rect;
    v182 = CGRectGetWidth(v444);
    CACornerRadiiMake(&v405, v182, v182, v182, v182);
    LOBYTE(v422[0]) = 0;
    *&v391[7] = v405;
    *&v391[23] = v406;
    *&v391[39] = *v407;
    *&v391[55] = *&v407[16];
    memset(&aBlock, 0, sizeof(aBlock));
    v418[0] = 1;
    *&v418[16] = 0;
    *&v418[8] = 0;
    v418[24] = 1;
    *&v418[25] = *v391;
    *&v418[88] = *&v407[24];
    *&v418[73] = *&v391[48];
    *&v418[57] = *&v391[32];
    *&v418[41] = *&v391[16];
    LOBYTE(v419) = 0;
    sub_1891D7A90(&aBlock);
    v183 = [(UITargetedPreview *)v371 _typedStorage];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93FA70, &unk_18A673250);
    v184 = swift_allocObject();
    v185 = *&v418[80];
    *(v184 + 112) = *&v418[64];
    *(v184 + 128) = v185;
    *(v184 + 144) = v419;
    v186 = *&v418[16];
    *(v184 + 48) = *v418;
    *(v184 + 64) = v186;
    v187 = *&v418[48];
    *(v184 + 80) = *&v418[32];
    *(v184 + 96) = v187;
    size = aBlock.size;
    *(v184 + 16) = aBlock.origin;
    *(v184 + 32) = size;
    v189 = OBJC_IVAR____UITypedStorage_storage;
    swift_beginAccess();
    v190 = swift_isUniquelyReferenced_nonNull_native();
    *&v395 = *(v183 + v189);
    *(v183 + v189) = 0x8000000000000000;
    sub_188A40430(v184, &_s19OverrideGeometryKeyVN, v190);
    *(v183 + v189) = v395;
    swift_endAccess();

    v191 = swift_allocObject();
    *(v191 + 16) = xmmword_18A64E3F0;
    *(v191 + 32) = v378;
    *(v191 + 40) = v385;
    v192 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_188D73128(v411, &v401);
    v193 = swift_allocObject();
    *(v193 + 16) = v192;
    v194 = v402;
    *(v193 + 24) = v401;
    *(v193 + 40) = v194;
    *(v193 + 56) = v403;
    *(v193 + 64) = v191;
    *(v193 + 80) = 0;
    *(v193 + 88) = 0;
    *(v193 + 72) = 0;
    v195 = swift_allocObject();
    *(v195 + 16) = xmmword_18A6731D0;
    *(v195 + 32) = 0;
    *(v195 + 40) = sub_1891D7F04;
    *(v195 + 48) = v193;
    v382 = swift_allocObject();
    *(v382 + 16) = xmmword_18A64B710;
    *(v382 + 32) = v195;
    v380 = swift_allocObject();
    *(v380 + 16) = xmmword_18A64B710;
    *(v380 + 32) = v179;
    v196 = swift_allocObject();
    *(v196 + 16) = xmmword_18A64E3F0;
    *(v196 + 32) = v378;
    *&v395 = v352;
    *(&v395 + 1) = v337;
    *&v396 = v335;
    *(&v396 + 1) = v333;
    LOBYTE(v397) = 0;
    v197 = v378;
    v198 = v385;
    v199 = v197;

    *(v196 + 40) = sub_18923BBD8(&v395, 0, 1);
    v200 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_188D73128(v411, &v401);
    v201 = swift_allocObject();
    *(v201 + 16) = v200;
    v202 = v402;
    *(v201 + 24) = v401;
    *(v201 + 40) = v202;
    *(v201 + 56) = v403;
    *(v201 + 64) = v196;
    *(v201 + 72) = v368;
    *(v201 + 80) = v388;
    *(v201 + 88) = v345;
    v203 = swift_allocObject();
    v203[2] = 0xD000000000000010;
    v203[3] = 0x800000018A6AFFF0;
    v203[4] = 0;
    v203[5] = sub_1891D7F04;
    v203[6] = v201;
    recta = swift_allocObject();
    *(recta + 16) = xmmword_18A64B710;
    *(recta + 32) = v203;
    v204 = swift_allocObject();
    *(v204 + 16) = xmmword_18A64E3F0;
    *(v204 + 32) = v371;
    *(v204 + 40) = v174;
    v205 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_188D73128(v409, &v401);
    v206 = swift_allocObject();
    *(v206 + 16) = v205;
    v207 = v402;
    *(v206 + 24) = v401;
    *(v206 + 40) = v207;
    *(v206 + 56) = v403;
    *(v206 + 64) = v204;
    *(v206 + 72) = v363;
    *(v206 + 80) = v388;
    *(v206 + 88) = v345;
    v208 = swift_allocObject();
    *(v208 + 16) = 0xD000000000000015;
    *(v208 + 24) = 0x800000018A6B0010;
    *(v208 + 32) = v178;
    *(v208 + 40) = sub_1891D7F04;
    *(v208 + 48) = v206;
    v353 = swift_allocObject();
    *(v353 + 16) = xmmword_18A64B710;
    *(v353 + 32) = v208;
    v209 = swift_allocObject();
    *(v209 + 16) = xmmword_18A64E3F0;
    *(v209 + 32) = v387;
    *(v209 + 40) = v174;
    v210 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_188D73128(v409, &v401);
    v211 = swift_allocObject();
    *(v211 + 16) = v210;
    v212 = v402;
    *(v211 + 24) = v401;
    *(v211 + 40) = v212;
    *(v211 + 56) = v403;
    *(v211 + 64) = v209;
    *(v211 + 80) = 0;
    *(v211 + 88) = 0;
    *(v211 + 72) = v363;
    v213 = swift_allocObject();
    *(v213 + 16) = xmmword_18A6731C0;
    *(v213 + 32) = v178 + 0.1;
    *(v213 + 40) = sub_1891D7F04;
    *(v213 + 48) = v211;
    v214 = swift_allocObject();
    *(v214 + 16) = xmmword_18A64B710;
    *(v214 + 32) = v213;
    v215 = objc_allocWithZone(UIViewSpringAnimationBehaviorSettings);
    v216 = v363;
    sub_188D738F4(v388, v345);
    v217 = v174;
    v218 = v387;
    v219 = v216;
    sub_188D738F4(v388, v345);
    v220 = v217;
    v221 = v368;
    v222 = v371;
    v223 = [v215 init];
    [v223 setDampingRatio_];
    [v223 setResponse_];

    v224 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v225 = swift_allocObject();
    v225[2] = v223;
    v225[3] = sub_1891D7BA8;
    v225[4] = v224;
    v226 = swift_allocObject();
    v226[2] = 0;
    v226[3] = 0;
    v226[4] = 0;
    v226[5] = sub_1891D7EEC;
    v226[6] = v225;
    v227 = swift_allocObject();
    *(v227 + 16) = xmmword_18A64B710;
    *(v227 + 32) = v226;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93FA80, &qword_18A673260);
    v228 = swift_allocObject();
    *(v228 + 16) = xmmword_18A6510F0;
    *(v228 + 32) = MEMORY[0x1E69E7CC0];
    *(v228 + 40) = v382;
    *(v228 + 48) = v380;
    *(v228 + 56) = recta;
    *(v228 + 64) = v353;
    v229 = "_UIMonochromaticTreatment";
    *(v228 + 72) = v214;
    *(v228 + 80) = v227;
    sub_1891CEEBC(v228);
    v231 = v230;
    v389 = v219;

    v232 = &selRef_setRemoteAppID_;
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93FA88, &unk_18A673268);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_188F75BA0(v231);

    goto LABEL_69;
  }

  v233 = [objc_allocWithZone(UIViewSpringAnimationBehaviorSettings) init];
  [v233 setDampingRatio_];
  [v233 setResponse_];

  v234 = [v378 target];
  v235 = [v378 retargetedPreviewWithTarget_];

  sub_18923B9EC(&aBlock);
  v236 = sub_188F36334(&aBlock);
  if (v236 == 1)
  {
    goto LABEL_91;
  }

  v237 = v418[0];
  if ((v418[0] & 1) == 0)
  {
    v238 = aBlock.size.height;
    v239 = aBlock.size.width;
    v240 = aBlock.origin.y;
    v241 = aBlock.origin.x;
    v420 = *&v418[8];
    v421 = v418[24];
    v242 = CGRectGetWidth(aBlock);
    CACornerRadiiMake(&v401, v242, v242, v242, v242);
    v400 = 0;
    v399[23] = v421;
    *&v399[7] = v420;
    *&v398[7] = v401;
    *&v398[23] = v402;
    *&v398[39] = v403;
    *&v398[55] = v404;
    *&v405 = v241;
    *(&v405 + 1) = v240;
    *&v406 = v239;
    *(&v406 + 1) = v238;
    v407[0] = v237;
    *&v407[1] = *v399;
    *&v407[17] = *&v399[16];
    *&v407[41] = *&v398[16];
    *&v407[57] = *&v398[32];
    *&v407[73] = *&v398[48];
    *&v407[88] = *(&v404 + 1);
    *&v407[25] = *v398;
    LOBYTE(v408) = 0;
    sub_1891D7A90(&v405);
    v336 = v235;
    v243 = [(UITargetedPreview *)v235 _typedStorage];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93FA70, &unk_18A673250);
    v244 = swift_allocObject();
    v245 = *&v407[80];
    *(v244 + 112) = *&v407[64];
    *(v244 + 128) = v245;
    *(v244 + 144) = v408;
    v246 = *&v407[16];
    *(v244 + 48) = *v407;
    *(v244 + 64) = v246;
    v247 = *&v407[48];
    *(v244 + 80) = *&v407[32];
    *(v244 + 96) = v247;
    v248 = v406;
    *(v244 + 16) = v405;
    *(v244 + 32) = v248;
    v249 = OBJC_IVAR____UITypedStorage_storage;
    swift_beginAccess();
    v250 = swift_isUniquelyReferenced_nonNull_native();
    v422[0] = *(v243 + v249);
    *(v243 + v249) = 0x8000000000000000;
    sub_188A40430(v244, &_s19OverrideGeometryKeyVN, v250);
    *(v243 + v249) = v422[0];
    swift_endAccess();

    v251 = swift_allocObject();
    *(v251 + 16) = xmmword_18A64E3F0;
    *(v251 + 32) = v385;
    *(v251 + 40) = v174;
    v252 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_188D73128(v411, &v395);
    v253 = swift_allocObject();
    *(v253 + 16) = v252;
    v254 = v396;
    *(v253 + 24) = v395;
    *(v253 + 40) = v254;
    *(v253 + 56) = v397;
    *(v253 + 64) = v251;
    *(v253 + 80) = 0;
    *(v253 + 88) = 0;
    *(v253 + 72) = v233;
    v255 = swift_allocObject();
    *(v255 + 16) = xmmword_18A6731C0;
    *(v255 + 32) = 0;
    *(v255 + 40) = sub_1891D7A98;
    *(v255 + 48) = v253;
    v334 = swift_allocObject();
    *(v334 + 16) = xmmword_18A64B710;
    *(v334 + 32) = v255;
    v256 = swift_allocObject();
    *(v256 + 16) = xmmword_18A64B710;
    *(v256 + 32) = v342;
    v330 = v256;
    v257 = swift_allocObject();
    *(v257 + 16) = xmmword_18A64E3F0;
    *(v257 + 32) = v378;
    *v422 = v370;
    *&v422[1] = v367;
    *&v422[2] = v365;
    *&v422[3] = v362;
    v423 = 0;
    v258 = v385;
    v364 = v378;

    v259 = v174;
    v366 = v233;
    *(v257 + 40) = sub_18923BBD8(v422, 0x3FD0000000000000, 0);
    v260 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_188D73128(v411, &v395);
    v261 = swift_allocObject();
    *(v261 + 16) = v260;
    v262 = v396;
    *(v261 + 24) = v395;
    *(v261 + 40) = v262;
    *(v261 + 56) = v397;
    *(v261 + 64) = v257;
    *(v261 + 72) = v233;
    *(v261 + 80) = v388;
    *(v261 + 88) = v345;
    v263 = swift_allocObject();
    v263[2] = 0xD000000000000010;
    v263[3] = 0x800000018A6AFFB0;
    v263[4] = 0;
    v263[5] = sub_1891D7F04;
    v263[6] = v261;
    v372 = swift_allocObject();
    *(v372 + 16) = xmmword_18A64B710;
    *(v372 + 32) = v263;
    v264 = swift_allocObject();
    *(v264 + 16) = xmmword_18A64E3F0;
    *(v264 + 32) = v364;
    *(v264 + 40) = v387;
    v265 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_188D73128(v409, &v395);
    v266 = swift_allocObject();
    *(v266 + 16) = v265;
    v267 = v396;
    *(v266 + 24) = v395;
    *(v266 + 40) = v267;
    *(v266 + 56) = v397;
    *(v266 + 64) = v264;
    *(v266 + 80) = 0;
    *(v266 + 88) = 0;
    *(v266 + 72) = v233;
    v268 = swift_allocObject();
    *(v268 + 16) = xmmword_18A6731D0;
    *(v268 + 32) = v178;
    *(v268 + 40) = sub_1891D7F04;
    *(v268 + 48) = v266;
    v369 = swift_allocObject();
    *(v369 + 16) = xmmword_18A64B710;
    *(v369 + 32) = v268;
    v269 = v366;
    v270 = v387;
    v271 = v364;
    sub_188D738F4(v388, v345);
    v389 = v269;
    UIRectGetCenter(v350, v349, v348);
    v273 = v272;
    UIRectGetCenter(v379, v381, v384);
    if (v274 >= v273)
    {
      v275 = -15.0;
    }

    else
    {
      v275 = 15.0;
    }

    v276 = [objc_allocWithZone(UIViewSpringAnimationBehaviorSettings) init];
    [v276 setDampingRatio_];
    v232 = &selRef_setRemoteAppID_;
    [v276 setResponse_];

    v277 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v278 = swift_allocObject();
    *(v278 + 16) = v277;
    *(v278 + 24) = 0;
    *(v278 + 32) = v275;
    v279 = swift_allocObject();
    v279[2] = v276;
    v279[3] = sub_1891D7B04;
    v279[4] = v278;
    v280 = swift_allocObject();
    *(v280 + 16) = xmmword_18A6731E0;
    *(v280 + 32) = v178 + 0.001;
    *(v280 + 40) = sub_1891D7B10;
    *(v280 + 48) = v279;
    v281 = swift_allocObject();
    *(v281 + 16) = xmmword_18A64B710;
    *(v281 + 32) = v280;
    v282 = [objc_allocWithZone(UIViewSpringAnimationBehaviorSettings) init];
    [v282 setDampingRatio_];
    [v282 setResponse_];

    v283 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v284 = swift_allocObject();
    *(v284 + 16) = v283;
    *(v284 + 24) = 0;
    *(v284 + 32) = v275;
    v285 = swift_allocObject();
    v285[2] = v282;
    v285[3] = sub_1891D7B1C;
    v285[4] = v284;
    v286 = swift_allocObject();
    *(v286 + 16) = xmmword_18A6731F0;
    *(v286 + 32) = v178 + 0.15;
    *(v286 + 40) = sub_1891D7EEC;
    *(v286 + 48) = v285;
    v287 = swift_allocObject();
    *(v287 + 16) = xmmword_18A64B710;
    *(v287 + 32) = v286;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93FA80, &qword_18A673260);
    v288 = swift_allocObject();
    *(v288 + 16) = xmmword_18A6510F0;
    *(v288 + 32) = MEMORY[0x1E69E7CC0];
    *(v288 + 40) = v334;
    *(v288 + 48) = v330;
    *(v288 + 56) = v372;
    *(v288 + 64) = v369;
    *(v288 + 72) = v281;
    *(v288 + 80) = v287;
    sub_1891CEEBC(v288);
    v290 = v289;

    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93FA88, &unk_18A673268);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_188F75BA0(v290);

    v229 = "_UIMonochromaticTreatment";
LABEL_69:
    v291 = [objc_allocWithZone(UIViewSpringAnimationBehaviorSettings) init];
    [v291 setDampingRatio_];
    [v291 v232[158]];
    v292 = [objc_allocWithZone(UIViewSpringAnimationBehaviorSettings) init];
    [v292 setDampingRatio_];
    [v292 v232[158]];
    v293 = swift_allocObject();
    *(v293 + 16) = xmmword_18A64E3F0;
    v294 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v295 = swift_allocObject();
    v295[2] = v291;
    v295[3] = sub_1891D7B28;
    v295[4] = v294;
    v296 = swift_allocObject();
    *(v296 + 16) = xmmword_18A673200;
    *(v296 + 32) = 0;
    *(v296 + 40) = sub_1891D7EEC;
    *(v296 + 48) = v295;
    *(v293 + 32) = v296;
    v297 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v298 = swift_allocObject();
    v298[2] = v292;
    v298[3] = sub_1891D7B48;
    v298[4] = v297;
    v299 = swift_allocObject();
    *(v299 + 16) = xmmword_18A673210;
    *(v299 + 32) = 0x3FC999999999999ALL;
    *(v299 + 40) = sub_1891D7EEC;
    *(v299 + 48) = v298;
    *(v293 + 40) = v299;
    v386 = v291;
    v383 = v292;

    sub_188F75BA0(v293);

    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v300 = v360;
    v394.receiver = v360;
    v394.super_class = &OBJC_METACLASS____TtC5UIKit31_UIMorphAnimationSettingsDomain;
    v301 = objc_msgSendSuper2(&v394, sel_rootSettings);
    if (v301)
    {
      v302 = v301;
      v303 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit25_UIMorphAnimationSettings_lensingEnabled);

      if (v303 == 1)
      {
        v304 = [objc_allocWithZone(UIViewSpringAnimationBehaviorSettings) init];
        [v304 setDampingRatio_];
        [v304 setResponse_];

        v305 = v346 < v340;
        if (v346 >= v340)
        {
          v306 = 0.4;
        }

        else
        {
          v306 = 0.7;
        }

        if (v346 >= v340)
        {
          v307 = v178;
        }

        else
        {
          v307 = v178 + 0.12;
        }

        v373 = [objc_allocWithZone(UIViewSpringAnimationBehaviorSettings) init];
        [v373 setDampingRatio_];
        [v373 setResponse_];
        v308 = swift_allocObject();
        *(v308 + 16) = xmmword_18A64E3E0;
        v309 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v310 = swift_allocObject();
        *(v310 + 16) = v309;
        *(v310 + 24) = v305;
        *(v310 + 32) = v339;
        *(v310 + 40) = v331;
        v311 = swift_allocObject();
        v311[2] = v304;
        v311[3] = sub_1891D7B68;
        v311[4] = v310;
        v312 = swift_allocObject();
        *(v312 + 16) = xmmword_18A673220;
        *(v312 + 32) = 0;
        *(v312 + 40) = sub_1891D7EEC;
        *(v312 + 48) = v311;
        *(v308 + 32) = v312;
        v313 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v314 = swift_allocObject();
        *(v314 + 16) = v313;
        *(v314 + 24) = v305;
        *(v314 + 32) = v331;
        *(v314 + 40) = v339;
        v315 = swift_allocObject();
        v315[2] = v389;
        v315[3] = sub_1891D7B78;
        v315[4] = v314;
        v316 = swift_allocObject();
        *(v316 + 16) = 0xD000000000000018;
        *(v316 + 24) = 0x800000018A6AFFD0;
        *(v316 + 32) = v178;
        *(v316 + 40) = sub_1891D7EEC;
        *(v316 + 48) = v315;
        *(v308 + 40) = v316;
        v300 = v360;
        v317 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v318 = swift_allocObject();
        *(v318 + 16) = v317;
        *(v318 + 24) = v305;
        v319 = swift_allocObject();
        v319[2] = v373;
        v319[3] = sub_1891D7B88;
        v319[4] = v318;
        v320 = swift_allocObject();
        *(v320 + 16) = xmmword_18A673230;
        *(v320 + 32) = v307;
        *(v320 + 40) = sub_1891D7EEC;
        *(v320 + 48) = v319;
        *(v308 + 48) = v320;
        v321 = v304;

        v322 = v389;
        v323 = v373;
        sub_188F75BA0(v308);

        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();
      }

      v393.receiver = v300;
      v393.super_class = &OBJC_METACLASS____TtC5UIKit31_UIMorphAnimationSettingsDomain;

      v324 = objc_msgSendSuper2(&v393, sel_rootSettings);
      if (v324)
      {
        v325 = v324;
        v326 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit25_UIMorphAnimationSettings_speed);

        v392.receiver = v300;
        v392.super_class = &OBJC_METACLASS____TtC5UIKit31_UIMorphAnimationSettingsDomain;
        v327 = objc_msgSendSuper2(&v392, sel_rootSettings);
        if (v327)
        {
          v328 = v327;
          v329 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit25_UIMorphAnimationSettings_amplifyDelays);

          sub_188F753C0(v329, v326);

          [v332 complete];

          sub_188A3F5FC(v409, &unk_1EA93C9A0, qword_18A6513A0);
          sub_188A3F5FC(v411, &unk_1EA93C9A0, qword_18A6513A0);
          return;
        }

        goto LABEL_89;
      }

LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
      goto LABEL_90;
    }

LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

LABEL_92:
  __break(1u);
}

double sub_1891D2C0C(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    a1();
  }

  sub_1891D59C0();
  v4 = OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation_morphAnimations;
  swift_beginAccess();
  *(a3 + v4) = MEMORY[0x1E69E7CC0];

  *(a3 + OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation_hidingAssertions) = 0;

  sub_1891CFFC8();
  sub_188F75AF4();

  return result;
}

void sub_1891D2CA8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation_morphAnimations;
    swift_beginAccess();
    v4 = *&v2[v3];
    v32 = v4;
    if (v4 >> 62)
    {
LABEL_35:
      v5 = sub_18A4A7F68();
    }

    else
    {
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v33 = OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation____lazy_storage___lensingPortals;

    if (v5)
    {
      v6 = 0;
      v35 = v2;
      v34 = v5;
      while (1)
      {
        if ((v32 & 0xC000000000000001) != 0)
        {
          v7 = sub_188E4A0E4(v6, v32);
        }

        else
        {
          if (v6 >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_34;
          }

          v7 = *(v32 + 32 + 8 * v6);
        }

        v8 = v7;
        v9 = __OFADD__(v6, 1);
        v10 = v6 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        v11 = *&v7[OBJC_IVAR____UIMagicMorphAnimation_morphView];
        type metadata accessor for _UIMorphAnimationSettingsDomain();
        v39.receiver = swift_getObjCClassFromMetadata();
        v39.super_class = &OBJC_METACLASS____TtC5UIKit31_UIMorphAnimationSettingsDomain;
        v12 = v11;
        v13 = objc_msgSendSuper2(&v39, sel_rootSettings);
        if (!v13)
        {
          break;
        }

        v14 = v13;
        type metadata accessor for _UIMorphAnimationSettings();
        v15 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit25_UIMorphAnimationSettings_lensingEnabled);

        v16 = OBJC_IVAR____UIMagicMorphView_clippingView;
        [*&v12[OBJC_IVAR____UIMagicMorphView_clippingView] setClipsToBounds_];
        v17 = sub_1891D0050();
        [v17 _addTrackedElementFor_with_];

        v18 = sub_1891D0150();
        v19 = v18;
        v36 = v8;
        v37 = v10;
        if (v18 >> 62)
        {
          v20 = sub_18A4A7F68();
          if (v20)
          {
LABEL_14:
            v21 = 0;
            v2 = (v19 & 0xFFFFFFFFFFFFFF8);
            while (1)
            {
              if ((v19 & 0xC000000000000001) != 0)
              {
                v22 = sub_188E49828(v21, v19);
              }

              else
              {
                if (v21 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_32;
                }

                v22 = *(v19 + 8 * v21 + 32);
              }

              v23 = v22;
              v24 = v21 + 1;
              if (__OFADD__(v21, 1))
              {
                break;
              }

              v25 = [v22 sourceView];

              if (v25)
              {
                v26 = *&v12[v16];

                if (v25 == v26)
                {

                  v2 = v35;
                  goto LABEL_6;
                }
              }

              ++v21;
              if (v24 == v20)
              {
                goto LABEL_26;
              }
            }

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

        else
        {
          v20 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v20)
          {
            goto LABEL_14;
          }
        }

LABEL_26:

        v27 = [objc_allocWithZone(_UIPortalView) initWithSourceView_];
        [v27 setHidesSourceView_];
        [v27 setMatchesPosition_];
        [v27 setMatchesTransform_];
        v2 = v35;
        v28 = sub_1891D00D4();
        [v28 addSubview_];

        v29 = v33;
        v38 = *&v35[v33];
        v30 = v27;

        MEMORY[0x18CFE2450](v31);
        if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_18A4A7588();
          v29 = v33;
        }

        sub_18A4A75F8();

        *&v35[v29] = v38;

LABEL_6:
        v6 = v37;
        if (v37 == v34)
        {
          goto LABEL_29;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_29:
    }
  }
}

void sub_1891D30DC(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation_sharedAnimationContainer;
    v3 = *(Strong + OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation_sharedAnimationContainer);
    v4 = Strong;
    v5 = *&v3[OBJC_IVAR____TtC5UIKit30_UIMorphAnimationContainerView_kickView];
    [v3 bounds];
    [v5 setCenter_];

    v9 = *(*&v4[v2] + OBJC_IVAR____TtC5UIKit30_UIMorphAnimationContainerView_kickView);
    v10[0] = 0x3FF0000000000000;
    v10[1] = 0;
    v10[2] = 0;
    v10[3] = 0x3FF0000000000000;
    v10[4] = 0;
    v10[5] = 0;
    [v9 setTransform_];
  }
}

void sub_1891D31B4(uint64_t a1, double a2, double a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation_sharedAnimationContainer;
    v7 = Strong;
    [*(*(Strong + OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation_sharedAnimationContainer) + OBJC_IVAR____TtC5UIKit30_UIMorphAnimationContainerView_kickView) center];
    [*(*&v7[v6] + OBJC_IVAR____TtC5UIKit30_UIMorphAnimationContainerView_kickView) setCenter_];
  }
}

void sub_1891D3268(uint64_t a1, double a2, double a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = *(*(Strong + OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation_sharedAnimationContainer) + OBJC_IVAR____TtC5UIKit30_UIMorphAnimationContainerView_kickView);
    v7 = Strong;
    CGAffineTransformMakeTranslation(&v8, -a2, -a3);
    [v6 setTransform_];
  }
}

void sub_1891D3318(uint64_t a1, double a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1891D4478(a2);
  }
}

void sub_1891D337C(uint64_t a1, char a2, double a3, double a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if (a2)
    {
      v9 = a3;
    }

    else
    {
      v9 = a4;
    }

    *(Strong + OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation_minLensingDimension) = v9;
    sub_1891D3970(0);
  }
}

void sub_1891D3400(uint64_t a1, char a2, double a3, double a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if (a2)
    {
      v9 = a3;
    }

    else
    {
      v9 = a4;
    }

    *(Strong + OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation_minLensingDimension) = v9;
    sub_1891D3970(a2 & 1);
  }
}

void sub_1891D3480(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1891D3970(a2 & 1);
  }
}

void sub_1891D34E0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5, char *a6, double a7)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    sub_188D73128(a2, &v50);
    if (v51)
    {
      sub_188A5EBAC(&v50, v52);
      v40 = a5;
      v41 = v13;
      v39 = a6;
      if (a3 >> 62)
      {
LABEL_32:
        v14 = sub_18A4A7F68();
        if (v14)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v14 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v14)
        {
LABEL_5:
          v15 = 0;
          v45 = a3;
          v46 = a3 & 0xC000000000000001;
          v43 = a3 & 0xFFFFFFFFFFFFFF8;
          v44 = v14;
          while (1)
          {
            if (v46)
            {
              sub_188E49F3C(v15, a3);
              v16 = v15 + 1;
              if (__OFADD__(v15, 1))
              {
                goto LABEL_28;
              }
            }

            else
            {
              if (v15 >= *(v43 + 16))
              {
                goto LABEL_30;
              }

              swift_unknownObjectRetain();
              v16 = v15 + 1;
              if (__OFADD__(v15, 1))
              {
LABEL_28:
                __break(1u);
LABEL_29:
                __break(1u);
LABEL_30:
                __break(1u);
LABEL_31:
                __break(1u);
                goto LABEL_32;
              }
            }

            objc_opt_self();
            v17 = swift_dynamicCastObjCClass();
            if (v17)
            {
              break;
            }

            swift_unknownObjectRelease();
LABEL_7:
            ++v15;
            if (v16 == v14)
            {
              goto LABEL_33;
            }
          }

          v18 = v17;
          sub_188A53994(v52, &v50);
          v19 = [(UITargetedPreview *)v18 _typedStorage];
          sub_188D73128(&v50, v49);
          sub_188D73128(v49, v47);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93FAA0, &qword_18A6732F0);
          v20 = swift_allocObject();
          v21 = v47[1];
          *(v20 + 16) = v47[0];
          *(v20 + 32) = v21;
          *(v20 + 48) = v48;
          v22 = OBJC_IVAR____UITypedStorage_storage;
          swift_beginAccess();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v24 = *(v19 + v22);
          *(v19 + v22) = 0x8000000000000000;
          a3 = sub_188A403F4(&_s19OverrideMaterialKeyVN);
          v26 = v24[2];
          v27 = (v25 & 1) == 0;
          v28 = v26 + v27;
          if (__OFADD__(v26, v27))
          {
            goto LABEL_29;
          }

          v29 = v25;
          if (v24[3] < v28)
          {
            sub_188A3F76C(v28, isUniquelyReferenced_nonNull_native);
            v30 = sub_188A403F4(&_s19OverrideMaterialKeyVN);
            if ((v29 & 1) != (v31 & 1))
            {
              sub_18A4A87A8();
              __break(1u);
              return;
            }

            a3 = v30;
            if ((v29 & 1) == 0)
            {
              goto LABEL_24;
            }

LABEL_22:
            *(v24[7] + 8 * a3) = v20;

LABEL_26:
            *(v19 + v22) = v24;
            swift_endAccess();

            swift_unknownObjectRelease();
            sub_188A3F5FC(v49, &unk_1EA93C9A0, qword_18A6513A0);
            sub_188A3F5FC(&v50, &unk_1EA93C9A0, qword_18A6513A0);
            v14 = v44;
            a3 = v45;
            goto LABEL_7;
          }

          if (isUniquelyReferenced_nonNull_native)
          {
            if (v25)
            {
              goto LABEL_22;
            }
          }

          else
          {
            sub_188FA0BDC();
            if (v29)
            {
              goto LABEL_22;
            }
          }

LABEL_24:
          v24[(a3 >> 6) + 8] |= 1 << a3;
          *(v24[6] + 8 * a3) = &_s19OverrideMaterialKeyVN;
          *(v24[7] + 8 * a3) = v20;
          v32 = v24[2];
          v33 = __OFADD__(v32, 1);
          v34 = v32 + 1;
          if (v33)
          {
            goto LABEL_31;
          }

          v24[2] = v34;
          goto LABEL_26;
        }
      }

LABEL_33:
      __swift_destroy_boxed_opaque_existential_0Tm(v52);
      a5 = v40;
      v13 = v41;
      a6 = v39;
    }

    else
    {
      sub_188A3F5FC(&v50, &unk_1EA93C9A0, qword_18A6513A0);
    }

    v35 = *&v13[OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation_sharedAnimationContainer];
    type metadata accessor for _UIReparentingView();
    v36 = v35;

    v37 = sub_188D733EC(v36);
    [v37 setFrame_];
    [v37 setAlpha_];

    if (a4)
    {
      v38 = sub_188EB2558(a7);
    }

    else
    {
      v38 = 0;
    }

    sub_1891D4604(a3, v37, 0, 0, 0, 1, v38, 0, 1, 0, a5, a6, 0, 0);

    *&v13[OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation_currentMorphables] = a3;
  }
}

void sub_1891D3970(char a1)
{
  v3 = [*&v1[OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation_sharedAnimationContainer] layer];
  v4 = [v3 filters];

  if (v4)
  {

    v27 = 0;
    v5 = 0;
  }

  else
  {
    v6 = objc_opt_self();
    v5 = swift_allocObject();
    *(v5 + 16) = v1;
    v7 = swift_allocObject();
    v27 = sub_1891D7DE4;
    *(v7 + 16) = sub_1891D7DE4;
    *(v7 + 24) = v5;
    v32 = sub_188E3FE50;
    v33 = v7;
    aBlock = MEMORY[0x1E69E9820];
    v29 = 1107296256;
    v30 = sub_188A4A968;
    v31 = &block_descriptor_166_1;
    v8 = _Block_copy(&aBlock);
    v9 = v1;

    [v6 performWithoutAnimation_];
    _Block_release(v8);
    LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

    if (v6)
    {
      goto LABEL_7;
    }
  }

  v10 = objc_opt_self();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = a1 & 1;
  *(v12 + 24) = v11;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1891D7DEC;
  *(v13 + 24) = v12;
  v32 = sub_188E3FE50;
  v33 = v13;
  aBlock = MEMORY[0x1E69E9820];
  v29 = 1107296256;
  v30 = sub_188A4A968;
  v31 = &block_descriptor_177_0;
  v14 = _Block_copy(&aBlock);

  [v10 performWithoutAnimation_];
  _Block_release(v14);
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if ((v10 & 1) == 0)
  {
    v15 = sub_1891D0050();
    v16 = [v15 layer];

    objc_opt_self();
    v17 = swift_dynamicCastObjCClassUnconditional();
    v18 = sub_18A4A2D28();
    v19 = sub_18A4A7258();
    [v17 setValue:v18 forKeyPath:v19];

    v20 = sub_1891D00D4();
    v21 = [v20 layer];

    v22 = sub_18A4A2D28();
    v23 = sub_18A4A7258();
    [v21 setValue:v22 forKeyPath:v23];

    v24 = [*&v1[OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation____lazy_storage___lensingContainer] layer];
    v25 = sub_18A4A2D28();
    v26 = sub_18A4A7258();
    [v24 setValue:v25 forKeyPath:v26];

    sub_188A55B8C(v27, v5);

    return;
  }

  __break(1u);
LABEL_7:
  __break(1u);
}

void sub_1891D3E6C(uint64_t a1)
{
  v2 = sub_1891D0050();
  v3 = [v2 layer];

  v4 = sub_18A4A7258();
  [v3 setName_];

  v5 = OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation____lazy_storage___lensingSDFView;
  v6 = *(a1 + OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation____lazy_storage___lensingSDFView);
  v7 = OBJC_IVAR____TtC5UIKit9UISDFView_gradientOvalization;
  v8 = *&v6[OBJC_IVAR____TtC5UIKit9UISDFView_gradientOvalization];
  *&v6[OBJC_IVAR____TtC5UIKit9UISDFView_gradientOvalization] = 1056964608;
  if (v8 != 0.5)
  {
    v9 = *&v6[OBJC_IVAR____TtC5UIKit9UISDFView_containerView];
    if (v9)
    {
      v45 = v6;
      v42 = v9;
      v10 = [v42 subviews];
      sub_188A34624(0, &qword_1ED48F680, off_1E70EAD78);
      v11 = sub_18A4A7548();

      v43 = v5;
      v44 = a1;
      if (v11 >> 62)
      {
        v12 = sub_18A4A7F68();
        if (v12)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v12)
        {
LABEL_5:
          if (v12 < 1)
          {
            __break(1u);
            return;
          }

          v13 = 0;
          v14 = v11 & 0xC000000000000001;
          p_cb = &OBJC_PROTOCOL___UIMutableTraits.cb;
          v47 = v6;
          do
          {
            if (v14)
            {
              v16 = sub_188E49300(v13, v11);
            }

            else
            {
              v16 = *(v11 + 8 * v13 + 32);
            }

            v17 = v16;
            type metadata accessor for UISDFElementView();
            v18 = swift_dynamicCastClassUnconditional();
            v19 = *&v6[v7];
            v20 = *(p_cb + 489);
            v21 = *&v18[v20];
            *&v18[v20] = v19;
            if (v19 != v21)
            {
              v22 = v12;
              v23 = v7;
              v24 = v11;
              v25 = p_cb;
              v26 = v18;
              v27 = [v18 layer];
              v28 = *&v26[v20];
              p_cb = v25;
              v11 = v24;
              v7 = v23;
              v12 = v22;
              v6 = v47;
              [v27 setGradientOvalization_];
            }

            ++v13;
          }

          while (v12 != v13);
        }
      }

      v5 = v43;
      a1 = v44;
    }
  }

  v48 = [objc_allocWithZone(MEMORY[0x1E6979458]) init];
  v29 = [*(a1 + v5) layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setEffect_];

  v30 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
  v31 = [*(a1 + v5) layer];
  v32 = [v31 name];

  [v30 setValue:v32 forKey:*MEMORY[0x1E6979C10]];
  v33 = sub_18A4A2D28();
  [v30 setValue:v33 forKey:*MEMORY[0x1E6979990]];

  v34 = sub_1891D00D4();
  v35 = [v34 layer];

  [v35 setZPosition_];
  v36 = OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation____lazy_storage___lensingContainer;
  [*(a1 + OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation_sharedAnimationContainer) addSubview_];
  v37 = [*(a1 + v36) layer];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937800, &unk_18A64D700);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_18A64BFA0;
  v39 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
  v40 = sub_188A34624(0, &qword_1ED48EE50, 0x1E6979378);
  *(v38 + 32) = v39;
  *(v38 + 88) = v40;
  *(v38 + 56) = v40;
  *(v38 + 64) = v30;
  v46 = v30;
  v41 = sub_18A4A7518();

  [v37 setFilters_];

  [*(a1 + v36) addSubview_];
}

void sub_1891D4364(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_1891D0050();

    v5 = [v4 layer];
    objc_opt_self();
    v6 = swift_dynamicCastObjCClassUnconditional();
    v7 = sub_18A4A2D28();
    v8 = sub_18A4A7258();
    [v6 setValue:v7 forKeyPath:v8];
  }
}

void sub_1891D4478(double a1)
{
  v16 = &type metadata for _GlassGroup;
  v17 = &protocol witness table for _GlassGroup;
  v13 = 0;
  v14 = a1;
  v15 = 256;
  UIView._background.setter(&v13);
  v3 = sub_1891D0050();
  v3[OBJC_IVAR____TtC5UIKit9UISDFView_applySmoothnessViaGaussianRadius] = 1;

  v12 = *(v1 + OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation____lazy_storage___lensingSDFView);
  sub_18900EF90();
  v4 = v12;
  if (v5 != a1)
  {
    v6 = *(v12 + OBJC_IVAR____TtC5UIKit9UISDFView_applySmoothnessViaGaussianRadius);
    v7 = [v12 layer];
    objc_opt_self();
    v8 = swift_dynamicCastObjCClassUnconditional();
    if (v6)
    {
      v9 = v8;
      v10 = sub_18A4A2D28();
      v11 = sub_18A4A7258();
      [v9 setValue:v10 forKey:v11];

      v7 = v11;
    }

    else
    {
      [v8 setSmoothness_];
    }

    v4 = v12;
  }
}

void sub_1891D4604(unint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, char a6, void *a7, uint64_t a8, char a9, char a10, void *a11, char *a12, uint64_t a13, uint64_t a14)
{
  v15 = v14;
  v137 = a2;
  v18 = *&v14[OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation_sharedGroupCompletion];
  v19 = swift_allocObject();
  *(v19 + 16) = a13;
  *(v19 + 24) = a14;
  v172 = sub_188FE62F8;
  v173 = v19;
  aBlock = MEMORY[0x1E69E9820];
  v169 = 1107296256;
  v170 = sub_188A4A8F0;
  v171 = &block_descriptor_183_0;
  v20 = _Block_copy(&aBlock);
  sub_188D738F4(a13, a14);

  v153 = v18;
  [v18 addCompletion_];
  _Block_release(v20);
  v21 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_104;
  }

  v22 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v145 = v15;
  v148 = v22;
  v149 = a1;
  if (!v22)
  {
    goto LABEL_11;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    goto LABEL_107;
  }

  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_109;
  }

  v23 = *(a1 + 32);
  swift_unknownObjectRetain();
  while (1)
  {
    v24 = [v23 _morphContainerView];
    if (!v24)
    {
      swift_unknownObjectRelease();
LABEL_11:
      v138 = 0;
      v139 = 0;
      if (!v21)
      {
        goto LABEL_12;
      }

      goto LABEL_17;
    }

    v25 = v24;
    v26 = [*&v15[OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation_sharedAnimationContainer] window];
    if (v26)
    {
      v27 = v26;
      swift_unknownObjectRelease();

      goto LABEL_11;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      Strong = [v25 _window];
      if (!Strong)
      {
        goto LABEL_116;
      }
    }

    v29 = Strong;
    v30 = objc_opt_self();
    v31 = swift_allocObject();
    *(v31 + 16) = v15;
    *(v31 + 24) = v29;
    v32 = swift_allocObject();
    v138 = sub_1891D7E08;
    v139 = v31;
    *(v32 + 16) = sub_1891D7E08;
    *(v32 + 24) = v31;
    v172 = sub_188E3FE50;
    v173 = v32;
    aBlock = MEMORY[0x1E69E9820];
    v169 = 1107296256;
    v170 = sub_188A4A968;
    v171 = &block_descriptor_215_1;
    v33 = _Block_copy(&aBlock);
    v34 = v15;
    v35 = v29;

    [v30 performWithoutAnimation_];
    swift_unknownObjectRelease();

    _Block_release(v33);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      goto LABEL_111;
    }

    v15 = v145;
    a1 = v149;
    if (!v21)
    {
LABEL_12:
      v141 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_18;
    }

LABEL_17:
    v141 = sub_18A4A7F68();
LABEL_18:
    v21 = OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation_morphAnimations;
    swift_beginAccess();
    v37 = *&v15[v21];
    v38 = v37 >> 62 ? sub_18A4A7F68() : *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    a1 = v141 - v38;
    if (!__OFSUB__(v141, v38))
    {
      break;
    }

    __break(1u);
LABEL_107:
    v23 = sub_188E49F3C(0, a1);
  }

  if (a1 >= 1)
  {
    type metadata accessor for _UIMagicMorphAnimation();
    v40 = v39;
    do
    {
      v41 = objc_allocWithZone(v40);
      v42 = sub_188C8C67C(v153);
      swift_unknownObjectWeakAssign();
      v42[OBJC_IVAR____UIMagicMorphAnimation_reparentsDuringMorph] = 0;
      swift_beginAccess();
      v43 = v42;
      MEMORY[0x18CFE2450]();
      if (*((*&v15[v21] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v15[v21] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_18A4A7588();
        v15 = v145;
      }

      sub_18A4A75F8();
      swift_endAccess();

      --a1;
    }

    while (a1);
  }

  if ((v15[OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation__overrideReduceMotion] & 1) == 0 && !UIAccessibilityIsReduceMotionEnabled())
  {
    type metadata accessor for _UIMorphAnimationSettingsDomain();
    v167.receiver = swift_getObjCClassFromMetadata();
    v167.super_class = &OBJC_METACLASS____TtC5UIKit31_UIMorphAnimationSettingsDomain;
    v49 = objc_msgSendSuper2(&v167, sel_rootSettings);
    v46 = v148;
    v45 = v149;
    if (!v49)
    {
      goto LABEL_114;
    }

    v47 = v49;
    v48 = &OBJC_IVAR____TtC5UIKit25_UIMorphAnimationSettings_liquidMorph;
LABEL_32:
    type metadata accessor for _UIMorphAnimationSettings();
    v140 = *(swift_dynamicCastClassUnconditional() + *v48);

    if (v46)
    {
      v150 = v45 & 0xFFFFFFFFFFFFFF8;
      v151 = v45 & 0xC000000000000001;
      v50 = 4;
      v142 = v21;
      v143 = a7;
      do
      {
        v51 = v50 - 4;
        if (v151)
        {
          v160 = sub_188E49F3C(v50 - 4, v45);
          v52 = (v50 - 3);
          if (__OFADD__(v51, 1))
          {
            goto LABEL_100;
          }
        }

        else
        {
          if (v51 >= *(v150 + 16))
          {
            goto LABEL_101;
          }

          v160 = *(v45 + 8 * v50);
          swift_unknownObjectRetain();
          v52 = (v50 - 3);
          if (__OFADD__(v51, 1))
          {
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            v22 = sub_18A4A7F68();
            goto LABEL_3;
          }
        }

        a1 = *&v15[v21];
        if ((a1 & 0xC000000000000001) != 0)
        {

          a1 = sub_188E4A0E4(v50 - 4, a1);

          if ((a3 & 1) == 0)
          {
            goto LABEL_44;
          }
        }

        else
        {
          if (v51 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_102;
          }

          a1 = *(a1 + 8 * v50);
          if ((a3 & 1) == 0)
          {
            goto LABEL_44;
          }
        }

        v53 = OBJC_IVAR____UIMagicMorphAnimation_animationItems;
        swift_beginAccess();
        v54 = *(a1 + v53);
        if (v54 >> 62)
        {
          if (sub_18A4A7F68())
          {
LABEL_34:
            swift_unknownObjectRelease();
            goto LABEL_35;
          }
        }

        else if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_34;
        }

LABEL_44:
        v55 = *&a4;
        v56 = *&a5;
        if ((a6 & 1) == 0)
        {
          v57 = v141 - v51;
          if (__OFSUB__(v141, v51))
          {
            goto LABEL_103;
          }

          v55 = *&a4 * v57;
          v56 = *&a5 * v57;
        }

        v154 = v56;
        v155 = v55;
        v162 = a1;
        if (a7)
        {
          type metadata accessor for _UIMorphAnimationSpec();
          v59 = objc_allocWithZone(v58);
          v60 = a7;
          v61 = sub_188F5C484(v60);
        }

        else
        {
          v61 = v140;
        }

        v156 = v52;
        v62 = [objc_opt_self() behaviorWithDampingRatio:1.0 response:0.1];
        if (!v62)
        {
          goto LABEL_112;
        }

        v63 = v62;
        v64 = *&v61[OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_contentMorph];
        v65 = *&v61[OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_width];
        v66 = *&v61[OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_height];
        v67 = *&v61[OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_positionX];
        v68 = *&v61[OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_positionY];
        v69 = *&v61[OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_transform];
        type metadata accessor for _UIMagicMorphAnimation.Parameters();
        v71 = v70;
        v72 = objc_allocWithZone(v70);
        *&v72[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimation10Parameters_morphSpring] = v64;
        *&v72[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimation10Parameters_widthSpring] = v65;
        *&v72[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimation10Parameters_heightSpring] = v66;
        *&v72[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimation10Parameters_positionXSpring] = v67;
        *&v72[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimation10Parameters_positionYSpring] = v68;
        *&v72[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimation10Parameters_transformSpring] = v69;
        *&v72[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimation10Parameters_fallbackBackgroundColor] = 0;
        *&v72[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimation10Parameters_overlayViews] = MEMORY[0x1E69E7CC0];
        *&v72[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimation10Parameters_contentScale] = 0x3FF0000000000000;
        v73 = &v72[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimation10Parameters_reparentingOptions];
        *v73 = v63;
        v73[8] = 0;
        v72[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimation10Parameters_crossBlurWhenMorphing] = 2;
        v72[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimation10Parameters_useIntermediateShape] = a10 & 1;
        v72[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimation10Parameters_tracksPresentationLayer] = 1;
        v75 = v154;
        v74 = v155;
        if (a6)
        {
          v74 = 0.0;
          v75 = 0.0;
        }

        v76 = &v72[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimation10Parameters_kick];
        *v76 = v74;
        v76[1] = v75;
        v77 = &v72[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimation10Parameters_animationSmoothness];
        *v77 = a8;
        v77[8] = a9 & 1;
        v166.receiver = v72;
        v166.super_class = v71;
        v78 = v64;
        v79 = v65;
        v80 = v66;
        v81 = v67;
        v82 = v68;
        v83 = v69;
        a1 = objc_msgSendSuper2(&v166, sel_init);
        v84 = 0;
        v85 = 0;
        if (v50 == 4)
        {
          v84 = a11;
          v85 = a12;
          sub_188D738F4(a11, a12);
        }

        v86 = OBJC_IVAR____UIMagicMorphAnimation_animationItems;
        swift_beginAccess();
        v87 = *&v162[v86];
        if (v87 >> 62)
        {
          v88 = sub_18A4A7F68();
        }

        else
        {
          v88 = *((v87 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        a7 = v143;
        v89 = [v160 _morphPreviewFromCurrentState_fallbackBackgroundColor_contentScale_];
        sub_188D7AA34(v89, a1, v84, v85, 0, 0);

        sub_188A55B8C(v84, v85);
        swift_unknownObjectRelease();

        v15 = v145;
        v46 = v148;
        v45 = v149;
        v21 = v142;
        v52 = v156;
LABEL_35:

        ++v50;
      }

      while (v52 != v46);
    }

    v90 = sub_188D741A4(v45);
    if (v90)
    {
      v91 = v90;
      v92 = [v90 _morphContainerView];
      if (v92)
      {
        v93 = OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation_reparentingViews;
        swift_beginAccess();
        v94 = *&v15[v93];

        v95 = sub_18903ABF8(v92, v94);

        if (!v95)
        {
          v95 = v137;
        }

        v96 = [v91 _morphView];
        v97 = v96;
        v98 = OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation_prevReparentingReferenceView;
        v99 = *&v15[OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation_prevReparentingReferenceView];
        if (v99)
        {
          v100 = v96;
          v101 = v92;
          v102 = v99;
          v103 = [v102 _morphContainerView];
          if (v103)
          {
            v104 = v103;
            sub_188A34624(0, &qword_1ED48F680, off_1E70EAD78);
            v105 = sub_18A4A7C88();

            if (v105)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0, &unk_18A64BA50);
              inited = swift_initStackObject();
              *(inited + 16) = xmmword_18A64E3F0;
              *(inited + 32) = v91;
              *(inited + 40) = v102;
              v107 = v102;
              swift_unknownObjectRetain();
              v108 = sub_188D741A4(inited);
              swift_setDeallocating();
              swift_arrayDestroy();
              if (!v108)
              {
                goto LABEL_115;
              }

              v109 = [v108 _morphView];
              swift_unknownObjectRelease();

              v110 = v109;
              v15 = v145;
              v97 = v100;
              goto LABEL_80;
            }
          }

          else
          {
          }

          v15 = v145;
          v97 = v100;
        }

        v110 = v97;
LABEL_80:
        v112 = *&v15[v98];
        *&v15[v98] = v110;
        v113 = v110;

        v114 = [v113 superview];
        if (v114 && (v115 = v114, v114, v115 == v92))
        {
          [v92 insertSubview:v95 aboveSubview:v113];
        }

        else
        {
          [v92 addSubview_];
        }

        swift_beginAccess();
        v116 = *&v15[v93];
        v163 = v113;
        if ((v116 & 0xC000000000000001) != 0)
        {
          if (v116 < 0)
          {
            v117 = *&v15[v93];
          }

          else
          {
            v117 = v116 & 0xFFFFFFFFFFFFFF8;
          }

          v118 = v92;
          v119 = v95;
          v120 = sub_18A4A7F68();
          if (__OFADD__(v120, 1))
          {
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
            goto LABEL_113;
          }

          *&v15[v93] = sub_18907BBF0(v117, v120 + 1);
        }

        else
        {
          v121 = v92;
          v122 = v95;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v165 = *&v15[v93];
        v161 = v95;
        sub_188E9F3FC(v95, v92, isUniquelyReferenced_nonNull_native);
        *&v15[v93] = v165;

        swift_endAccess();
        v124 = objc_opt_self();
        v111 = swift_allocObject();
        *(v111 + 16) = v15;
        *(v111 + 24) = v97;
        v125 = swift_allocObject();
        *(v125 + 16) = sub_1891D7DF8;
        *(v125 + 24) = v111;
        v172 = sub_188E3FE50;
        v173 = v125;
        aBlock = MEMORY[0x1E69E9820];
        v169 = 1107296256;
        v170 = sub_188A4A968;
        v171 = &block_descriptor_193_0;
        v126 = _Block_copy(&aBlock);
        v15;
        v159 = v97;

        v157 = v124;
        [v124 performWithoutAnimation_];
        _Block_release(v126);
        v127 = swift_isEscapingClosureAtFileLocation();

        if ((v127 & 1) == 0)
        {
          v128 = *&v15[v93];
          if ((v128 & 0xC000000000000001) != 0)
          {

            v129 = sub_18A4A7F68();
          }

          else
          {
            v129 = *(v128 + 16);
          }

          if (v129 == 1)
          {
            v130 = v161;
            [v130 setAlpha_];
            swift_unknownObjectRelease();
          }

          else
          {
            v131 = [objc_allocWithZone(UIViewSpringAnimationBehaviorSettings) init];
            [v131 setDampingRatio_];
            [v131 setResponse_];
            v132 = swift_allocObject();
            swift_unknownObjectUnownedInit();
            v133 = swift_allocObject();
            *(v133 + 16) = v132;
            *(v133 + 24) = v161;
            v172 = sub_1891D7E00;
            v173 = v133;
            aBlock = MEMORY[0x1E69E9820];
            v169 = 1107296256;
            v170 = sub_188A4A8F0;
            v171 = &block_descriptor_202_0;
            v134 = _Block_copy(&aBlock);
            v135 = v161;

            v172 = signpost_c2_entryLock_start;
            v173 = 0;
            aBlock = MEMORY[0x1E69E9820];
            v169 = 1107296256;
            v170 = sub_188C3DD6C;
            v171 = &block_descriptor_205_0;
            v136 = _Block_copy(&aBlock);
            [v157 _animateUsingSpringBehavior_tracking_animations_completion_];
            swift_unknownObjectRelease();

            _Block_release(v136);
            _Block_release(v134);
          }

          v92 = sub_1891D7DF8;
          goto LABEL_99;
        }

LABEL_109:
        __break(1u);
        goto LABEL_110;
      }

      swift_unknownObjectRelease();
      v111 = 0;
    }

    else
    {
      v92 = 0;
      v111 = 0;
    }

LABEL_99:
    [v153 complete];

    sub_188A55B8C(v138, v139);
    sub_188A55B8C(v92, v111);
    return;
  }

  type metadata accessor for _UIMorphAnimationSettingsDomain();
  v164.receiver = swift_getObjCClassFromMetadata();
  v164.super_class = &OBJC_METACLASS____TtC5UIKit31_UIMorphAnimationSettingsDomain;
  v44 = objc_msgSendSuper2(&v164, sel_rootSettings);
  v46 = v148;
  v45 = v149;
  if (v44)
  {
    v47 = v44;
    v48 = &OBJC_IVAR____TtC5UIKit25_UIMorphAnimationSettings_liquidMorphReduceMotion;
    goto LABEL_32;
  }

LABEL_113:
  __break(1u);
LABEL_114:
  __break(1u);
LABEL_115:
  __break(1u);
LABEL_116:
  __break(1u);
}

void sub_1891D5764(uint64_t a1, void *a2)
{
  v3 = sub_188D74350();
  v5 = v3[4];
  v3[4] = a2;
  v4 = a2;
  sub_188D630A4(v5);
}

void sub_1891D57CC(uint64_t a1, id a2)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v4 = OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation_reparentingViews;
  swift_beginAccess();
  v5 = *&Strong[v4];

  if ((v5 & 0xC000000000000001) != 0)
  {
    v6 = sub_18A4A8338();
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v5 = v6 | 0x8000000000000000;
  }

  else
  {
    v10 = -1 << *(v5 + 32);
    v7 = v5 + 64;
    v8 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(v5 + 64);
  }

  v13 = 0;
  v23 = v8;
  v14 = (v8 + 64) >> 6;
  if ((v5 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v15 = v13;
    v16 = v9;
    v17 = v13;
    if (!v9)
    {
      break;
    }

LABEL_12:
    v18 = (v16 - 1) & v16;
    v19 = *(*(v5 + 56) + ((v17 << 9) | (8 * __clz(__rbit64(v16)))));
    if (!v19)
    {
LABEL_21:
      sub_188E036A4(v5);
      return;
    }

    while (1)
    {
      v22 = v19 == a2 ? 1.0 : 0.0;
      [v19 setAlpha_];

      v13 = v17;
      v9 = v18;
      if ((v5 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_18A4A8378())
      {
        v21 = v20;
        swift_unknownObjectRelease();
        v24 = v21;
        type metadata accessor for _UIReparentingView();
        swift_dynamicCast();
        v19 = v25;
        v17 = v13;
        v18 = v9;
        if (v25)
        {
          continue;
        }
      }

      goto LABEL_21;
    }
  }

  while (1)
  {
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v17 >= v14)
    {
      goto LABEL_21;
    }

    v16 = *(v7 + 8 * v17);
    ++v15;
    if (v16)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_1891D59C0()
{
  v1 = v0;
  [*(v0 + OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation_sharedAnimationContainer) removeFromSuperview];
  v2 = OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation_viewsToRemove;
  while (1)
  {
    swift_beginAccess();
    v8 = *(v1 + v2);
    v9 = v8 & 0xC000000000000001;
    if ((v8 & 0xC000000000000001) == 0)
    {
      break;
    }

    if (!sub_18A4A7F68())
    {
      goto LABEL_13;
    }

    v3 = sub_18A4A7F08();
    v4 = v10;
LABEL_4:
    v5 = v9 != 0;
    sub_1891D7788(v3, v4, v5);
    v7 = v6;
    swift_endAccess();
    [v7 removeFromSuperview];
  }

  if (*(v8 + 16))
  {
    v11 = 0;
    v12 = (v8 + 56);
    v3 = 1 << *(v8 + 32);
    v13 = (v3 + 63) >> 6;
    while (1)
    {
      v15 = *v12++;
      v14 = v15;
      if (v15)
      {
        break;
      }

      v11 -= 64;
      if (!--v13)
      {
        goto LABEL_3;
      }
    }

    v3 = __clz(__rbit64(v14)) - v11;
LABEL_3:
    v4 = *(v8 + 36);
    goto LABEL_4;
  }

LABEL_13:
  swift_endAccess();
  v16 = OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation_reparentingViews;
  swift_beginAccess();
  v36 = v16;
  v17 = *(v1 + v16);
  if ((v17 & 0xC000000000000001) != 0)
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = sub_18A4A8338() | 0x8000000000000000;
  }

  else
  {
    v22 = -1 << *(v17 + 32);
    v19 = ~v22;
    v18 = v17 + 64;
    v23 = -v22;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    else
    {
      v24 = -1;
    }

    v20 = v24 & *(v17 + 64);
    v21 = v17;
  }

  v25 = 0;
  v26 = (v19 + 64) >> 6;
  if ((v21 & 0x8000000000000000) != 0)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v27 = v25;
    v28 = v20;
    v29 = v25;
    if (!v20)
    {
      while (1)
      {
        v29 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          break;
        }

        if (v29 >= v26)
        {
          goto LABEL_30;
        }

        v28 = *(v18 + 8 * v29);
        ++v27;
        if (v28)
        {
          goto LABEL_24;
        }
      }

      __break(1u);
      goto LABEL_39;
    }

LABEL_24:
    v30 = (v28 - 1) & v28;
    v17 = *(*(v21 + 56) + ((v29 << 9) | (8 * __clz(__rbit64(v28)))));
    if (!v17)
    {
      break;
    }

    while (1)
    {
      [v17 removeFromSuperview];

      v25 = v29;
      v20 = v30;
      if ((v21 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_26:
      if (sub_18A4A8378())
      {
        swift_unknownObjectRelease();
        type metadata accessor for _UIReparentingView();
        swift_dynamicCast();
        v17 = v37;
        v29 = v25;
        v30 = v20;
        if (v37)
        {
          continue;
        }
      }

      goto LABEL_30;
    }
  }

LABEL_30:
  sub_188E036A4(v21);
  *(v1 + v36) = MEMORY[0x1E69E7CC8];

  v31 = sub_1891D0150();
  v17 = v31;
  if (!(v31 >> 62))
  {
    v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v32)
    {
      goto LABEL_32;
    }

LABEL_40:

    *(v1 + OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation____lazy_storage___lensingPortals) = MEMORY[0x1E69E7CC0];

    return;
  }

LABEL_39:
  v32 = sub_18A4A7F68();
  if (!v32)
  {
    goto LABEL_40;
  }

LABEL_32:
  if (v32 >= 1)
  {
    for (i = 0; i != v32; ++i)
    {
      if ((v17 & 0xC000000000000001) != 0)
      {
        v34 = sub_188E49828(i, v17);
      }

      else
      {
        v34 = *(v17 + 8 * i + 32);
      }

      v35 = v34;
      [v34 removeFromSuperview];
    }

    goto LABEL_40;
  }

  __break(1u);
}

uint64_t sub_1891D5D64()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_8;
  }

  if (*(v0 + OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation_inferGlassGroupFromContainer) != 1)
  {
    goto LABEL_7;
  }

  v2 = Strong;
  v3 = [Strong traitCollection];
  v4 = sub_188B657E8();
  if (!v4)
  {

    Strong = v2;
LABEL_7:

    goto LABEL_8;
  }

  v5 = v4;
  v6 = swift_unknownObjectWeakLoadStrong();

  if (!v6)
  {
LABEL_8:
    *(&v9 + 1) = &type metadata for _GlassGroup;
    v10 = &protocol witness table for _GlassGroup;
    LOWORD(v8) = 0;
    *(&v8 + 1) = 0;
    LOWORD(v9) = 1;
    return UIView._background.setter(&v8);
  }

  v10 = 0;
  v8 = 0u;
  v9 = 0u;
  return UIView._background.setter(&v8);
}

void sub_1891D5E7C(unint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, void *a6, char *a7, void (*a8)(void), uint64_t a9)
{
  v9[0] = a5;
  v9[1] = 0;
  v10 = a2;
  v11 = a3;
  v12 = a4 & 1;
  v13 = 0;
  v14 = 1;
  sub_1891CF2E4(a1, v9, a6, a7, a8, a9);
}

void sub_1891D5ED4(unint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6, char a7, void *a8, char *a9, void (*a10)(void), uint64_t a11)
{
  v11[0] = a7;
  v11[1] = 0;
  v12 = a2;
  v13 = a3;
  v14 = a4 & 1;
  v15 = a5;
  v16 = a6 & 1;
  sub_1891CF2E4(a1, v11, a8, a9, a10, a11);
}

id _UILiquidMorphAnimation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_1891D60F8(void *a1, void *a2, uint64_t a3)
{
  *&v56 = a3;
  v52 = type metadata accessor for _Glass._GlassVariant(0);
  MEMORY[0x1EEE9AC00](v52);
  v53 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a2;
  if (!a2)
  {
    swift_unknownObjectRetain();
    v6 = a1;
  }

  swift_unknownObjectRetain();
  v7 = [a1 _morphView];
  [v7 bounds];
  Width = CGRectGetWidth(v68);
  [v7 bounds];
  Height = CGRectGetHeight(v69);
  if (Height >= Width)
  {
    v10 = Width;
  }

  else
  {
    v10 = Height;
  }

  [v7 bounds];
  v11 = CGRectGetWidth(v70);
  [v7 bounds];
  v12 = CGRectGetHeight(v71);
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  v54 = a1;
  if (a2)
  {
    v14 = [a2 _morphView];
    [v14 bounds];
    v15 = CGRectGetWidth(v72);
    if (v15 < v10)
    {
      v10 = v15;
    }

    [v14 bounds];
    v16 = CGRectGetHeight(v73);
    if (v16 < v13)
    {
      v13 = v16;
    }
  }

  else
  {
    v14 = v7;
  }

  v17 = v14;
  [v6 _morphCenterPoint];
  v19 = v18;
  v21 = v20;
  UIRectCenteredAboutPointScale(0.0, 0.0, v10, v13, v18, v20, 1.0);
  v26 = [objc_allocWithZone(UIView) initWithFrame_];
  v27 = [v26 layer];
  v57.a = 0.0;
  v57.b = -2.68156159e154;
  MEMORY[0x18CFE22D0](0x20796D6D7544, 0xE600000000000000);
  [v26 frame];
  v61.a = v28;
  v61.b = v29;
  v61.c = v30;
  v61.d = v31;
  type metadata accessor for CGRect(0);
  sub_18A4A82D8();
  v32 = sub_18A4A7258();

  [v27 setName_];

  [v26 setUserInteractionEnabled_];
  v33 = [v26 layer];
  [v33 setCornerRadius_];

  CGAffineTransformMakeScale(&v61, 0.4, 0.4);
  [v26 setTransform_];
  v34 = [v7 backgroundColor];
  [v26 setBackgroundColor_];

  v35 = [v6 _morphView];
  v36 = [(UIView *)v35 _typedStorage];
  sub_188A6852C(&v61);

  v57 = v61;
  v58 = v62;
  v59 = v63;
  v60 = v64;
  if (*&v61.d)
  {
    sub_188A53994(&v57, &v65);
    sub_188ACE668(&v57);
  }

  else
  {
    sub_188A3F5FC(&v57, &unk_1EA933EC0, &qword_18A65E090);
    v65 = 0u;
    v66 = 0u;
    v67 = 0;
  }

  if (*(&v66 + 1))
  {
    sub_188A5EBAC(&v65, &v57);
  }

  else
  {
    if (qword_1EA931280 != -1)
    {
      swift_once();
    }

    v37 = __swift_project_value_buffer(v52, qword_1EA994F90);
    v38 = v53;
    sub_188AD8CAC(v37, v53, type metadata accessor for _Glass._GlassVariant);
    *&v57.d = type metadata accessor for _Glass(0);
    *&v57.tx = &protocol witness table for _Glass;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v57);
    _Glass.init(_:smoothness:)(v38, boxed_opaque_existential_0, 0.0);
    if (*(&v66 + 1))
    {
      sub_188A3F5FC(&v65, &unk_1EA93C9A0, qword_18A6513A0);
    }
  }

  [v26 setAlpha_];
  sub_188A53994(&v57, &v61);
  UIView._background.setter(&v61);
  v40 = [objc_allocWithZone(UIPreviewParameters) init];
  v41 = [objc_opt_self() clearColor];
  [v40 setBackgroundColor_];

  v42 = objc_allocWithZone(v55);
  v43 = v56;
  [v26 transform];
  tx = v61.tx;
  ty = v61.ty;
  v56 = *&v61.a;
  v55 = *&v61.c;
  v46 = objc_allocWithZone(UIPreviewTarget);
  *&v61.c = v55;
  *&v61.a = v56;
  v61.tx = tx;
  v61.ty = ty;
  v47 = [v46 initWithContainer:v43 center:&v61 transform:{v19, v21}];

  v48 = [v42 initWithView:v26 parameters:v40 target:v47];
  v49 = v48;
  [v49 _setOverridePositionTrackingView_];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0Tm(&v57);
  return v49;
}

id sub_1891D6918(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t (*_UILiquidMorphAnimation.overrideReduceMotion.modify(uint64_t a1))(uint64_t result)
{
  v2 = OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation__overrideReduceMotion;
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + v2);
  return sub_1891D69A4;
}

unint64_t sub_1891D69C0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1891D6A8C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_188A55598(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t sub_1891D6A8C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1891D6B98(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_18A4A81C8();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_1891D6B98(uint64_t a1, unint64_t a2)
{
  v3 = sub_1891D6BE4(a1, a2);
  sub_1891D6D14(&unk_1EFAB76B8);
  return v3;
}

void *sub_1891D6BE4(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1891D6E00(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_18A4A81C8();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_18A4A73B8();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1891D6E00(v10, 0);
        result = sub_18A4A8098();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

void sub_1891D6D14(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
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

  v3 = sub_1891D6E74(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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
  v8 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[v8 + 32], (a1 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v9 = *(v3 + 2);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 2) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void *sub_1891D6E00(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93FAB0, &qword_18A6732F8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1891D6E74(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93FAB0, &qword_18A6732F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_1891D6FE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), unint64_t *a4, void *a5, void (*a6)(unint64_t))
{
  v11 = v6;

  v12 = sub_18A4A7F68();
  v13 = swift_unknownObjectRetain();
  v14 = a3(v13, v12);
  v23 = v14;

  v15 = sub_18A4A7C78();
  v16 = -1 << *(v14 + 32);
  v17 = v15 & ~v16;
  if ((*(v14 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
  {
    v18 = ~v16;
    sub_188A34624(0, a4, a5);
    while (1)
    {
      v19 = *(*(v14 + 48) + 8 * v17);
      v20 = sub_18A4A7C88();

      if (v20)
      {
        break;
      }

      v17 = (v17 + 1) & v18;
      if (((*(v14 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v21 = *(*(v14 + 48) + 8 * v17);
  a6(v17);
  result = sub_18A4A7C88();
  if (result)
  {
    *v11 = v23;
    return v21;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1891D7158(uint64_t a1)
{
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (!sub_18A4A7F68())
    {
      return;
    }
  }

  else if (!*(*v1 + 16))
  {
    return;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_18A4A7F18();
    sub_188A34624(0, &qword_1ED48F680, off_1E70EAD78);
    sub_188FE633C();
    sub_18A4A77D8();
    a1 = v18;
    v3 = v19;
    v4 = v20;
    v5 = v21;
    v6 = v22;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v5 = 0;
  }

  v10 = (v4 + 64) >> 6;
  if (a1 < 0)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v11 = v5;
    v12 = v6;
    v13 = v5;
    if (!v6)
    {
      break;
    }

LABEL_16:
    v14 = (v12 - 1) & v12;
    v15 = *(*(a1 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v15)
    {
LABEL_22:
      sub_188E036A4(a1);
      return;
    }

    while (1)
    {
      v16 = sub_188DD15C0(v15);

      v5 = v13;
      v6 = v14;
      if ((a1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_18:
      if (sub_18A4A7FB8())
      {
        sub_188A34624(0, &qword_1ED48F680, off_1E70EAD78);
        swift_dynamicCast();
        v15 = v17;
        v13 = v5;
        v14 = v6;
        if (v17)
        {
          continue;
        }
      }

      goto LABEL_22;
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      goto LABEL_22;
    }

    v12 = *(v3 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

void sub_1891D7378(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C130, qword_18A66CFF0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v17 - v4;
  v6 = sub_18A4A2B48();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v10 = 1 << *(a1 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(a1 + 56);
    v13 = (v10 + 63) >> 6;
    v17[0] = v7 + 8;
    v17[1] = v7 + 16;

    v14 = 0;
    while (v12)
    {
      v15 = v14;
LABEL_10:
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      (*(v7 + 16))(v9, *(a1 + 48) + *(v7 + 72) * (v16 | (v15 << 6)), v6);
      sub_189221EFC(v9, v5);
      (*(v7 + 8))(v9, v6);
      sub_188A3F5FC(v5, &unk_1EA93C130, qword_18A66CFF0);
    }

    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v13)
      {

        return;
      }

      v12 = *(a1 + 56 + 8 * v15);
      ++v14;
      if (v12)
      {
        v14 = v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

void sub_1891D7594(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93F060, &unk_18A66CFE0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v17 - v4;
  v6 = _s22RotaryPlaceholderLabelC11TextSegmentVMa(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v10 = 1 << *(a1 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(a1 + 56);
    v13 = (v10 + 63) >> 6;

    v14 = 0;
    while (v12)
    {
      v15 = v14;
LABEL_10:
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      sub_188AD8CAC(*(a1 + 48) + *(v7 + 72) * (v16 | (v15 << 6)), v9, _s22RotaryPlaceholderLabelC11TextSegmentVMa);
      sub_1892221A4(v9, v5);
      sub_1891D7E78(v9);
      sub_188A3F5FC(v5, &qword_1EA93F060, &unk_18A66CFE0);
    }

    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v13)
      {

        return;
      }

      v12 = *(a1 + 56 + 8 * v15);
      ++v14;
      if (v12)
      {
        v14 = v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

void sub_1891D7788(unint64_t a1, void *a2, char a3)
{
  v4 = a1;
  v5 = *v3;
  if ((*v3 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (v5 < 0)
      {
        v6 = *v3;
      }

      else
      {
        v6 = v5 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x18CFE2EC0](a1, a2, v6);
      sub_188A34624(0, &qword_1ED48F680, off_1E70EAD78);

      swift_dynamicCast();
      sub_1891D6FE0(v6, v16, sub_188E730FC, &qword_1ED48F680, off_1E70EAD78, sub_189224F44);

      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  v7 = a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  if (a3)
  {
    v11 = v3;
    sub_188A34624(0, &qword_1ED48F680, off_1E70EAD78);
    if (sub_18A4A7F48() != *(v10 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_18A4A7F58();
    swift_dynamicCast();
    v7 = v16;
    v3 = v16;
    v12 = sub_18A4A7C78();
    v13 = -1 << *(v10 + 32);
    v4 = v12 & ~v13;
    if ((*(v10 + 56 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
    {
      v14 = ~v13;
      do
      {
        v15 = *(*(v10 + 48) + 8 * v4);
        v3 = sub_18A4A7C88();

        if (v3)
        {
          goto LABEL_19;
        }

        v4 = (v4 + 1) & v14;
      }

      while (((*(v10 + 56 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
    }

    __break(1u);
  }

  if ((v4 & 0x8000000000000000) != 0 || 1 << *(v10 + 32) <= v4)
  {
    goto LABEL_24;
  }

  if (((*(v10 + 8 * (v4 >> 6) + 56) >> v4) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v11 = v3;
  if (*(v10 + 36) != v7)
  {
    __break(1u);
LABEL_19:
  }

  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_188E79D44();
  }

  sub_189224F44(v4);
  *v11 = v10;
}

uint64_t objectdestroy_6Tm()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t objectdestroy_19Tm()
{

  if (*(v0 + 48))
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 24));
  }

  if (*(v0 + 80))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t objectdestroy_36Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1891D7D30(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[41])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1891D7D84(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

id sub_1891D7E08()
{
  v1 = *(v0 + 24);
  v2 = *(*(v0 + 16) + OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation_sharedAnimationContainer);
  [v1 bounds];
  [v2 setFrame_];

  return [v1 insertSubview:v2 atIndex:0];
}

uint64_t sub_1891D7E78(uint64_t a1)
{
  v2 = _s22RotaryPlaceholderLabelC11TextSegmentVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1891D7F1C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93FC70, &unk_18A64E770);
    v3 = sub_18A4A8488();
    v4 = a1 + 32;

    while (1)
    {
      sub_1891D8084(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_188B0944C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_188A55538(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1891D802C()
{
  result = qword_1EA933910;
  if (!qword_1EA933910)
  {
    type metadata accessor for UISSceneConnectionValueError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA933910);
  }

  return result;
}

uint64_t sub_1891D8084(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934DB8, &unk_18A668600);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1891D80F4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  if ((*(a1 + 8) & 0xF000000000000007) != 0)
  {
    v2 = *a1 & 0x7FFFFFFF;
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1891D8140(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
      *(result + 8) = 1;
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

uint64_t sub_1891D8190@<X0>(uint64_t *a1@<X8>)
{
  result = swift_unknownObjectWeakLoadStrong();
  v4 = *(v1 + 8);
  *a1 = result;
  a1[1] = v4;
  return result;
}

double sub_1891D81C0@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  *(a2 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(a2 + 8) = v3;
  swift_unknownObjectWeakAssign();

  swift_unknownObjectRelease();
  return result;
}

unint64_t sub_1891D8220(uint64_t a1)
{
  result = sub_1891D8248();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1891D8248()
{
  result = qword_1EA93FC78;
  if (!qword_1EA93FC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93FC78);
  }

  return result;
}

double sub_1891D829C()
{
  swift_getKeyPath();
  sub_1891D8D90();
  sub_18A4A2C08();

  swift_beginAccess();

  return result;
}

double sub_1891D8324@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1891D8D90();
  sub_18A4A2C08();

  swift_beginAccess();
  *a2 = *(v3 + 16);

  return result;
}

double sub_1891D83B4(uint64_t a1)
{
  swift_beginAccess();
  if (sub_188DCECF8(*(v1 + 16), a1))
  {
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1891D8D90();
    sub_18A4A2BF8();
  }

  return result;
}

void sub_1891D84B8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 16) = a2;
}

uint64_t sub_1891D8520()
{

  v1 = OBJC_IVAR____TtCE5UIKitCSo33_UISceneScrollPocketHostComponentP33_E5D3248CFF770718E70CF655EC048F6C17ObservableStorage___observationRegistrar;
  v2 = sub_18A4A2C48();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1891D85C4()
{
  v1 = v0;
  v2 = [(_UISceneScrollPocketHostComponent *)v0 _typedStorage];
  v3 = sub_18901F410();

  if (!v3)
  {
    _s17ObservableStorageCMa(0);
    v3 = swift_allocObject();
    *(v3 + 16) = MEMORY[0x1E69E7CC8];
    sub_18A4A2C38();
    v4 = [(_UISceneScrollPocketHostComponent *)v1 _typedStorage];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93FC88, &unk_18A673448);
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    v6 = OBJC_IVAR____UITypedStorage_storage;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v4 + v6);
    *(v4 + v6) = 0x8000000000000000;
    sub_188A40430(v5, &_s20ObservableStorageKeyVN, isUniquelyReferenced_nonNull_native);
    *(v4 + v6) = v9;
    swift_endAccess();
  }

  return v3;
}

uint64_t sub_1891D86FC(uint64_t a1)
{
  v2 = sub_1891D85C4();
  swift_getKeyPath();
  sub_1891D8D90();
  sub_18A4A2C08();

  swift_beginAccess();
  v3 = *(v2 + 16);

  if (*(v3 + 16) && (v4 = sub_188C4585C(a1), (v5 & 1) != 0))
  {
    v6 = *(*(v3 + 56) + 8 * v4);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

double sub_1891D8804(uint64_t a1, uint64_t a2)
{
  v4 = sub_1891D85C4();
  swift_getKeyPath();
  sub_1891D8D90();
  sub_18A4A2C08();

  swift_getKeyPath();
  sub_18A4A2C28();

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + 16);
  *(v4 + 16) = 0x8000000000000000;
  sub_188DCE988(a1, a2, isUniquelyReferenced_nonNull_native);
  *(v4 + 16) = v7;
  swift_endAccess();
  swift_getKeyPath();
  sub_18A4A2C18();

  return result;
}

void sub_1891D8A28(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_getObjectType();
  v6 = [(_UISceneScrollPocketHostComponent *)v2 _pocketElements];
  v7 = [v6 objectForKey_];

  if (v7)
  {
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_18A4A80E8();
  MEMORY[0x18CFE22D0](0xD000000000000016, 0x800000018A6B0460);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93FC90, &qword_18A673458);
  sub_18A4A82D8();
  MEMORY[0x18CFE22D0](0xD000000000000019, 0x800000018A6B0480);
  v9 = sub_18A4A7258();

  [(_UISceneScrollPocketHostComponent *)ObjCClassFromMetadata bsAssert:v9 message:?];

  v10 = [objc_allocWithZone(_UIScrollPocketProxyElement) initWithEdge_];
  v11 = [v3 registrationInteraction];
  if (v11)
  {
    v12 = [v11 view];
    swift_unknownObjectRelease();
    [v10 updateWithElement:a1 coordinateSpace:v12];

    v13 = [(_UISceneScrollPocketHostComponent *)v3 _pocketElements];
    [v13 setObject:v10 forKey:a1];

    [(_UISceneScrollPocketHostComponent *)v3 updatePocketSettings];
  }

  else
  {
    __break(1u);
  }
}

id sub_1891D8C54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = [v2 bridgedLumaUserInterfaceStyleFor_];
  *a2 = 1056964608;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = result;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  return result;
}

uint64_t _s17ObservableStorageCMa(uint64_t a1)
{
  result = qword_1EA930A20;
  if (!qword_1EA930A20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1891D8CF0(uint64_t a1)
{
  result = sub_18A4A2C48();
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

unint64_t sub_1891D8D90()
{
  result = qword_1EA930A30;
  if (!qword_1EA930A30)
  {
    _s17ObservableStorageCMa(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA930A30);
  }

  return result;
}

void sub_1891D8E04(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = [(_UISceneScrollPocketHostComponent *)v1 _pocketElements];
  v5 = [v4 objectForKey_];

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_18A4A80E8();
  MEMORY[0x18CFE22D0](0xD000000000000026, 0x800000018A6B03E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93FC90, &qword_18A673458);
  sub_18A4A82D8();
  v7 = sub_18A4A7258();

  [(_UISceneScrollPocketHostComponent *)ObjCClassFromMetadata bsAssert:v7 message:?];

  if (v5)
  {
    v8 = v5;
    v9 = [v2 registrationInteraction];
    if (v9)
    {
      v10 = [v9 view];
      swift_unknownObjectRelease();
      [v8 updateWithElement:a1 coordinateSpace:v10];

      [(_UISceneScrollPocketHostComponent *)v2 updatePocketSettings];
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1891D8FBC(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = [(_UISceneScrollPocketHostComponent *)v1 _pocketElements];
  v5 = [v4 objectForKey_];

  if (v5)
  {
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_18A4A80E8();
  MEMORY[0x18CFE22D0](0xD000000000000027, 0x800000018A6B0410);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93FC90, &qword_18A673458);
  sub_18A4A82D8();
  MEMORY[0x18CFE22D0](0xD00000000000001ALL, 0x800000018A6B0440);
  v7 = sub_18A4A7258();

  [(_UISceneScrollPocketHostComponent *)ObjCClassFromMetadata bsAssert:v7 message:?];

  v8 = [(_UISceneScrollPocketHostComponent *)v1 _pocketElements];
  [v8 removeObjectForKey_];

  [(_UISceneScrollPocketHostComponent *)v2 updatePocketSettings];
}

uint64_t getEnumTagSinglePayload for _UILightEffectDirectionalTransition(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 5))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 4);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for _UILightEffectDirectionalTransition(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1891D9218()
{
  result = qword_1EA930128;
  if (!qword_1EA930128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA930128);
  }

  return result;
}

uint64_t sub_1891D926C(uint64_t a1)
{
  if (a1 >= 4)
  {
    type metadata accessor for CGRectEdge(0);
    result = sub_18A4A8768();
    __break(1u);
  }

  else
  {
    v1 = *&aMinx_2[8 * (a1 & 3)];
    v2 = 0x6867696C68676968;
    if ((a1 & 0x100000000) == 0)
    {
      v2 = 0x6F69746365726964;
    }

    v4 = v2;
    MEMORY[0x18CFE22D0](0x3A6E696769726F28, 0xE900000000000020);
    MEMORY[0x18CFE22D0](v1, 0xE400000000000000);

    MEMORY[0x18CFE22D0](41, 0xE100000000000000);
    return v4;
  }

  return result;
}

uint64_t sub_1891D9368()
{
  v1 = 0x100000000;
  if (!*(v0 + 4))
  {
    v1 = 0;
  }

  return sub_1891D926C(v1 | *v0);
}

uint64_t sub_1891D9384()
{
  v1 = *(v0 + 4);
  sub_18A4A8888();
  sub_18A4A88B8();
  MEMORY[0x18CFE37E0](v1);
  return sub_18A4A88E8();
}

uint64_t sub_1891D93E4()
{
  v1 = *(v0 + 4);
  sub_18A4A8888();
  sub_18A4A88B8();
  MEMORY[0x18CFE37E0](v1);
  return sub_18A4A88E8();
}

uint64_t sub_1891D9440(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    return (*(a2 + 4) ^ *(a1 + 4) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1891D9474()
{
  result = qword_1EA92F868;
  if (!qword_1EA92F868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA92F868);
  }

  return result;
}

unint64_t sub_1891D94C8(uint64_t a1)
{
  result = sub_1891D94F0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1891D94F0()
{
  result = qword_1EA92F870;
  if (!qword_1EA92F870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA92F870);
  }

  return result;
}

unint64_t sub_1891D9544(uint64_t a1)
{
  result = sub_1891D956C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1891D956C()
{
  result = qword_1EA930130;
  if (!qword_1EA930130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA930130);
  }

  return result;
}

uint64_t sub_1891D95D0(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = a4;
  v29 = a2;
  v30 = a3;
  v8 = sub_18A4A29D8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v27 - v13;
  swift_beginAccess();
  if (*(*(v5 + 48) + 16) && (sub_188E906F4(), (v15 & 1) != 0))
  {
    swift_endAccess();
    swift_retain_n();
  }

  else
  {
    swift_endAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93FCD0, &qword_18A673748);
    v16 = swift_allocObject();
    *(v16 + 16) = sub_188E8EDF4(MEMORY[0x1E69E7CC0]);
    swift_beginAccess();
    swift_retain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = *(v5 + 48);
    *(v5 + 48) = 0x8000000000000000;
    sub_188EA1A1C(v16, a1 & 1, isUniquelyReferenced_nonNull_native);
    *(v5 + 48) = v31;
    swift_endAccess();
  }

  v18 = swift_allocObject();
  *(v18 + 16) = v28;
  *(v18 + 24) = a5;
  *(v18 + 32) = a1 & 1;

  v19 = sub_1891D9CD8(v29, v30);
  sub_18A4A29C8();
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1891DB9AC;
  *(v20 + 24) = v18;
  swift_beginAccess();

  v21 = swift_isUniquelyReferenced_nonNull_native();
  v31 = v19[4];
  v19[4] = 0x8000000000000000;
  sub_188EA19DC(sub_1891DB9B4, v20, v14, v21);
  v19[4] = v31;
  swift_endAccess();
  v22 = swift_allocObject();
  swift_weakInit();
  v23 = *(v9 + 32);
  v23(v11, v14, v8);
  v24 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = v22;
  v23((v25 + v24), v11, v8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93FCF8, &qword_18A673768);
  result = swift_allocObject();
  *(result + 16) = sub_1891DB898;
  *(result + 24) = v25;
  return result;
}

uint64_t sub_1891D9954(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = a4;
  v29 = a2;
  v30 = a3;
  v8 = sub_18A4A29D8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v27 - v13;
  swift_beginAccess();
  if (*(*(v5 + 48) + 16) && (sub_188E906F4(), (v15 & 1) != 0))
  {
    swift_endAccess();
    swift_retain_n();
  }

  else
  {
    swift_endAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93FCD0, &qword_18A673748);
    v16 = swift_allocObject();
    *(v16 + 16) = sub_188E8EDF4(MEMORY[0x1E69E7CC0]);
    swift_beginAccess();
    swift_retain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = *(v5 + 48);
    *(v5 + 48) = 0x8000000000000000;
    sub_188EA1A1C(v16, a1 & 1, isUniquelyReferenced_nonNull_native);
    *(v5 + 48) = v31;
    swift_endAccess();
  }

  v18 = swift_allocObject();
  *(v18 + 16) = v28;
  *(v18 + 24) = a5;
  *(v18 + 32) = a1 & 1;

  v19 = sub_1891D9EE4(v29, v30);
  sub_18A4A29C8();
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1891DB708;
  *(v20 + 24) = v18;
  swift_beginAccess();

  v21 = swift_isUniquelyReferenced_nonNull_native();
  v31 = v19[4];
  v19[4] = 0x8000000000000000;
  sub_188EA1B40(sub_1891DB70C, v20, v14, v21);
  v19[4] = v31;
  swift_endAccess();
  v22 = swift_allocObject();
  swift_weakInit();
  v23 = *(v9 + 32);
  v23(v11, v14, v8);
  v24 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = v22;
  v23((v25 + v24), v11, v8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93FCD8, &qword_18A673750);
  result = swift_allocObject();
  *(result + 16) = sub_1891DB710;
  *(result + 24) = v25;
  return result;
}

void *sub_1891D9CD8(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93FD00, &qword_18A673770);
  sub_18A4A7308();
  v5 = sub_18A4A7258();

  v6 = MEMORY[0x18CFE4050](v5);

  swift_beginAccess();
  v7 = *(v2 + 16);
  if (*(v7 + 16))
  {
    v8 = sub_188C4585C(v6);
    if (v9)
    {
      sub_188A53994(*(v7 + 56) + 40 * v8, v16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93FCF0, &qword_18A659BB0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93FD08, &qword_18A673778);
      if (swift_dynamicCast())
      {
        return v15;
      }
    }
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93FD08, &qword_18A673778);
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a2;

  v10[4] = sub_188E8FE4C(MEMORY[0x1E69E7CC0]);
  v16[0] = &type metadata for UIKeyboardInlineCandidateStorage.IsVisibleKey;
  sub_18A4A7308();
  v12 = sub_18A4A7258();

  v13 = MEMORY[0x18CFE4050](v12);

  v16[3] = v11;
  v16[4] = sub_1891DB93C(&unk_1EA93FD10, &qword_1EA93FD08, &qword_18A673778);
  v16[0] = v10;
  swift_beginAccess();

  sub_188F28C0C(v16, v13);
  swift_endAccess();
  return v10;
}

void *sub_1891D9EE4(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93FCC8, &qword_18A673740);
  sub_18A4A7308();
  v5 = sub_18A4A7258();

  v6 = MEMORY[0x18CFE4050](v5);

  swift_beginAccess();
  v7 = *(v2 + 16);
  if (*(v7 + 16))
  {
    v8 = sub_188C4585C(v6);
    if (v9)
    {
      sub_188A53994(*(v7 + 56) + 40 * v8, v16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93FCF0, &qword_18A659BB0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93FCE0, &unk_18A673758);
      if (swift_dynamicCast())
      {
        return v15;
      }
    }
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93FCE0, &unk_18A673758);
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a2;

  v10[4] = sub_188E8FE60(MEMORY[0x1E69E7CC0]);
  v16[0] = &type metadata for UIKeyboardInlineCandidateStorage.IsExpandedKey;
  sub_18A4A7308();
  v12 = sub_18A4A7258();

  v13 = MEMORY[0x18CFE4050](v12);

  v16[3] = v11;
  v16[4] = sub_1891DB93C(&qword_1EA93FCE8, &qword_1EA93FCE0, &unk_18A673758);
  v16[0] = v10;
  swift_beginAccess();

  sub_188F28C0C(v16, v13);
  swift_endAccess();
  return v10;
}

double sub_1891DA0F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), void (*a4)(uint64_t, uint64_t))
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_beginAccess();
    v8 = a3(a2);
    v10 = v9;
    swift_endAccess();
    a4(v8, v10);
  }

  return result;
}

void *sub_1891DA1C0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    v23 = *(v3 + 16);
    swift_beginAccess();
    v9 = v8[7];
    if (*(v9 + 16) && (v10 = sub_188E906F4(), (v11 & 1) != 0))
    {
      v12 = *(v9 + 56) + 16 * v10;
      v13 = *v12;
      v14 = *(v12 + 8);
      v15 = *v12;

      v16 = v15;
      swift_endAccess();
      sub_188FD3128(v13, v14);
    }

    else
    {
      swift_endAccess();
      v17 = v8[2];
      if (!v17 || (v18 = v8[3], , v16 = v17(v8, &v23), sub_188A55B8C(v17, v18), !v16))
      {
        v16 = [objc_allocWithZone(MEMORY[0x1E698E768]) init];
      }
    }

    v19 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    sub_18A4A7308();
    v20 = sub_18A4A7258();

    v21 = MEMORY[0x18CFE4050](v20);

    v22 = [v19 flagForSetting_];

    return (v22 == 1);
  }

  return result;
}

id sub_1891DA360(void *a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93FCC0, &qword_18A673738);
  sub_18A4A7308();
  v4 = sub_18A4A7258();

  v5 = MEMORY[0x18CFE4050](v4);

  return [a1 setFlag:a2 & 1 forSetting:v5];
}

id sub_1891DA4C0(uint64_t a1, uint64_t a2)
{
  v3 = _s37UIKeyboardCandidateSceneSpecificationCMa();
  v6.receiver = v2;
  v6.super_class = v4;
  return objc_msgSendSuper2(&v6, sel_dealloc, v3);
}

Swift::Void __swiftcall UIKeyboardCandidateSceneHostingController.setupSceneHosting()()
{
  v1 = v0;
  v2 = sub_18A4A7258();
  v3 = [objc_opt_self() identityForEmbeddedApplicationIdentifier_];

  _s37UIKeyboardCandidateSceneSpecificationCMa();
  v5 = objc_allocWithZone(v4);
  v6 = v3;
  v7 = [v5 init];
  v8 = [objc_allocWithZone(_UISceneHostingController) initWithProcessIdentity:v6 sceneSpecification:v7];

  v9 = OBJC_IVAR___UIKeyboardCandidateSceneHostingController_sceneHostingController;
  v10 = *(v1 + OBJC_IVAR___UIKeyboardCandidateSceneHostingController_sceneHostingController);
  *(v1 + OBJC_IVAR___UIKeyboardCandidateSceneHostingController_sceneHostingController) = v8;

  v11 = *(v1 + v9);
  if (v11)
  {
    [v11 setDelegate_];
    v12 = *(v1 + v9);
    if (v12)
    {
      v13 = v12;
      v14 = [(_UISceneHostingController *)v13 _fbScene];
      type metadata accessor for _UISceneKeyValueStorageExtension(0);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      type metadata accessor for _UISceneKeyValueStorageComponent();
      v16 = swift_getObjCClassFromMetadata();
      if ([v14 componentForExtension:ObjCClassFromMetadata ofClass:v16])
      {
        if (swift_dynamicCastClass())
        {
          v17 = sub_1890F5B48();

          swift_unknownObjectRelease();
          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            v60[2] = Strong;
            v61 = ObjCClassFromMetadata;
            [Strong hostTextIsVertical];
            v19 = swift_weakLoadStrong();
            if (v19)
            {
              v20 = v19;
              v60[1] = v60;
              MEMORY[0x1EEE9AC00](v19);
              v21 = *(v17 + 16);

              sub_188FD0880(v21, v20, sub_1891DB6D8);
            }

            v22 = [objc_opt_self() currentDevice];
            v23 = [v22 userInterfaceIdiom];

            v62 = v23;
            v24 = swift_weakLoadStrong();
            if (v24)
            {
              v25 = v24;
              MEMORY[0x1EEE9AC00](v24);
              sub_188FD0880(*(v17 + 16), v25, sub_1891DB6A0);
            }

            swift_unknownObjectRelease();

            ObjCClassFromMetadata = v61;
          }

          else
          {
          }
        }

        else
        {

          swift_unknownObjectRelease();
        }
      }

      else
      {
      }

      v26 = *(v1 + v9);
      if (v26)
      {
        v27 = v26;
        v28 = [(_UISceneHostingController *)v27 _fbScene];
        if ([v28 componentForExtension:ObjCClassFromMetadata ofClass:v16])
        {
          if (swift_dynamicCastClass())
          {
            v29 = sub_1890F5B58();

            swift_unknownObjectRelease();
            v30 = swift_allocObject();
            swift_unknownObjectWeakInit();
            if (swift_weakLoadStrong())
            {
              v31 = swift_allocObject();
              *(v31 + 16) = sub_1891DAF38;
              *(v31 + 24) = v30;
              v32 = *(v29 + 16);

              sub_1891D9954(v32, sub_1891DB5A8, 0, sub_1891DB658, v31);
            }

            v33 = OBJC_IVAR___UIKeyboardCandidateSceneHostingController_sceneConfigurationObservables;
            v34 = swift_beginAccess();
            MEMORY[0x18CFE2450](v34);
            if (*(*(v1 + v33) + 16) >= *(*(v1 + v33) + 24) >> 1)
            {
              sub_18A4A7588();
            }

            sub_18A4A75F8();
            swift_endAccess();
            v35 = swift_allocObject();
            swift_unknownObjectWeakInit();
            if (swift_weakLoadStrong())
            {
              v36 = swift_allocObject();
              *(v36 + 16) = sub_1891DB9A8;
              *(v36 + 24) = v35;
              v37 = *(v29 + 16);

              sub_1891D95D0(v37, sub_1891DB58C, 0, sub_1891DB9B0, v36);
            }

            v38 = swift_beginAccess();
            MEMORY[0x18CFE2450](v38);
            if (*(*(v1 + v33) + 16) >= *(*(v1 + v33) + 24) >> 1)
            {
              sub_18A4A7588();
            }

            sub_18A4A75F8();
            swift_endAccess();
          }

          else
          {

            swift_unknownObjectRelease();
          }
        }

        else
        {
        }

        v39 = *(v1 + v9);
        if (v39)
        {
          v40 = swift_unknownObjectWeakLoadStrong();
          if (v40)
          {
            v41 = v40;
            v42 = v39;
            v43 = [v42 sceneViewController];
            v44 = [v43 view];

            if (v44)
            {
              v45 = [v41 hostingParentView];
              [v45 addSubview_];
              [v44 setTranslatesAutoresizingMaskIntoConstraints_];
              v61 = objc_opt_self();
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0, &unk_18A64BA50);
              v46 = swift_allocObject();
              *(v46 + 16) = xmmword_18A64B810;
              v47 = [v44 topAnchor];
              v48 = [v45 topAnchor];
              v49 = [v47 constraintEqualToAnchor_];

              *(v46 + 32) = v49;
              v50 = [v44 bottomAnchor];
              v51 = [v45 bottomAnchor];
              v52 = [v50 constraintEqualToAnchor_];

              *(v46 + 40) = v52;
              v53 = [v44 leftAnchor];
              v54 = [v45 leftAnchor];
              v55 = [v53 constraintEqualToAnchor_];

              *(v46 + 48) = v55;
              v56 = [v44 rightAnchor];
              v57 = [v45 rightAnchor];
              v58 = [v56 constraintEqualToAnchor_];

              *(v46 + 56) = v58;
              sub_188A34624(0, &qword_1ED48CFF0, 0x1E69977A0);
              v59 = sub_18A4A7518();

              [v61 activateConstraints_];

              swift_unknownObjectRelease();
            }

            else
            {

              swift_unknownObjectRelease();
            }
          }
        }
      }
    }
  }
}