double sub_100B67F0C(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;

  sub_100B676B4(v3);

  return result;
}

uint64_t sub_100B67F5C()
{

  sub_100B69168(v0 + qword_1011B38A8);
  return v0;
}

uint64_t sub_100B67FB0()
{
  sub_100B67F5C();

  return swift_deallocClassInstance();
}

void *sub_100B68018@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_100B66B78(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100B68040(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, WitnessTable);
}

uint64_t sub_100B680BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, WitnessTable);
}

void sub_100B68138(uint64_t a1)
{
  swift_getWitnessTable();
  UIViewRepresentable.body.getter();
  __break(1u);
}

uint64_t sub_100B68178(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011B37E0, &qword_100F044F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100B681E8()
{
  result = qword_1011B37F8;
  if (!qword_1011B37F8)
  {
    sub_1001109D0(&qword_1011B37E8, &qword_100F044F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B37F8);
  }

  return result;
}

void sub_100B6827C()
{
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v9[0] = v0[2];
  v1 = v9[0];
  v9[1] = v2;
  v9[2] = v3;
  v9[3] = v4;
  v9[4] = v5;
  v9[5] = v6;
  v7 = *(type metadata accessor for CarouselView(0, v9) - 8);
  v8 = v0 + ((*(v7 + 80) + 64) & ~*(v7 + 80));

  sub_100B65E58(v8, v1, v2, v3, v4, v5, v6);
}

uint64_t sub_100B68338(uint64_t a1, uint64_t a2)
{
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  v13[0] = v2[2];
  v5 = v13[0];
  v13[1] = v6;
  v13[2] = v7;
  v13[3] = v8;
  v13[4] = v9;
  v13[5] = v10;
  v11 = *(type metadata accessor for CarouselView(0, v13) - 8);
  return sub_100B662C8(a1, a2, v2 + ((*(v11 + 80) + 64) & ~*(v11 + 80)), v5, v6, v7, v8, v9, v10);
}

void sub_100B6844C(uint64_t a1)
{
  type metadata accessor for Array();
  type metadata accessor for Binding();
  if (v1 <= 0x3F)
  {
    sub_100B68CA0(319, &qword_1011B3888, &type metadata accessor for ScrollPosition);
    if (v2 <= 0x3F)
    {
      sub_100B68CA0(319, &qword_1011B3890, _s3__C6CGSizeVMa_1);
      if (v3 <= 0x3F)
      {
        sub_10001F888();
        if (v4 <= 0x3F)
        {
          sub_10002F044(319);
          if (v5 <= 0x3F)
          {
            type metadata accessor for Optional();
            type metadata accessor for State();
            if (v6 <= 0x3F)
            {
              sub_100B68CF4();
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_100B685BC(int *a1, unsigned int a2, uint64_t a3, __n128 a4)
{
  v7 = type metadata accessor for ScrollPosition();
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  if (v9 >= 0)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(*(a3 + 16) - 8);
  v13 = *(v12 + 84);
  v14 = *(v8 + 80);
  v15 = v13 - 1;
  if (!v13)
  {
    v15 = 0;
  }

  if (v15 <= v11)
  {
    v15 = v11;
  }

  if (v13)
  {
    v16 = 7;
  }

  else
  {
    v16 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  v17 = v14 | 7;
  v18 = ((v14 + 16) & ~v14) + *(*(v7 - 8) + 64) + 7;
  v19 = *(v12 + 80) & 0xF8;
  v20 = ~v19 & 0xFFFFFFFFFFFFFFF8;
  v21 = v19 + 23;
  if (v15 >= a2)
  {
    goto LABEL_37;
  }

  v22 = ((((v16 + *(v12 + 64)) & 0xFFFFFFFFFFFFFFF8) + ((v21 + ((((((((((v18 + ((v14 + 24) & ~v17)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & v20) + 31) & 0xFFFFFFFFFFFFFFF8) + 8;
  v23 = v22 & 0xFFFFFFF8;
  if ((v22 & 0xFFFFFFF8) != 0)
  {
    v24 = 2;
  }

  else
  {
    v24 = a2 - v15 + 1;
  }

  if (v24 >= 0x10000)
  {
    v25 = 4;
  }

  else
  {
    v25 = 2;
  }

  if (v24 < 0x100)
  {
    v25 = 1;
  }

  if (v24 >= 2)
  {
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  if (v26 > 1)
  {
    if (v26 == 2)
    {
      v27 = *(a1 + v22);
      if (!v27)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v27 = *(a1 + v22);
      if (!v27)
      {
        goto LABEL_37;
      }
    }

LABEL_34:
    v29 = v27 - 1;
    if (v23)
    {
      v29 = 0;
      v30 = *a1;
    }

    else
    {
      v30 = 0;
    }

    return v15 + (v30 | v29) + 1;
  }

  if (v26)
  {
    v27 = *(a1 + v22);
    if (v27)
    {
      goto LABEL_34;
    }
  }

LABEL_37:
  if (v15 == 0x7FFFFFFF)
  {
    v31 = *(a1 + 1);
    if (v31 >= 0xFFFFFFFF)
    {
      LODWORD(v31) = -1;
    }

    return (v31 + 1);
  }

  else
  {
    v32 = (a1 + v17 + 24) & ~v17;
    if (v15 == v10)
    {
      v33 = *(v8 + 48);

      return v33((v14 + ((v32 + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v14);
    }

    else
    {
      v34 = (*(v12 + 48))((v21 + ((((((((((v18 + v32) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & v20, v13);
      if (v34 >= 2)
      {
        return v34 - 1;
      }

      else
      {
        return 0;
      }
    }
  }
}

void sub_100B688A4(uint64_t *a1, uint64_t a2, unsigned int a3, uint64_t a4, __n128 a5)
{
  v9 = type metadata accessor for ScrollPosition();
  v10 = 0;
  v11 = *(v9 - 8);
  v12 = *(v11 + 84);
  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = *(v11 + 84);
  }

  if (v12 >= 0)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(*(a4 + 16) - 8);
  v16 = *(v15 + 84);
  v17 = *(v11 + 80);
  v18 = *(v15 + 80);
  v19 = v16 - 1;
  if (!v16)
  {
    v19 = 0;
  }

  if (v19 <= 0x7FFFFFFE)
  {
    v20 = 2147483646;
  }

  else
  {
    v20 = v19;
  }

  if (v20 <= v14)
  {
    v21 = v14;
  }

  else
  {
    v21 = v20;
  }

  v22 = ((v17 + 16) & ~v17) + *(*(v9 - 8) + 64) + 7;
  v23 = ~(v18 & 0xF8) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v18 & 0xF8) + 23;
  if (v16)
  {
    v25 = *(v15 + 64);
  }

  else
  {
    v25 = *(v15 + 64) + 1;
  }

  v26 = ((((v25 + 7) & 0xFFFFFFFFFFFFFFF8) + ((v24 + ((((((((((v22 + ((v17 + 24) & ~(v17 | 7))) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & v23) + 31) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v21 < a3)
  {
    if (((((v25 + 7) & 0xFFFFFFF8) + ((v24 + ((((((((((v22 + ((v17 + 24) & ~(v17 | 7))) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8)) & v23) + 31) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v27 = a3 - v21 + 1;
    }

    else
    {
      v27 = 2;
    }

    if (v27 >= 0x10000)
    {
      v28 = 4;
    }

    else
    {
      v28 = 2;
    }

    if (v27 < 0x100)
    {
      v28 = 1;
    }

    if (v27 >= 2)
    {
      v10 = v28;
    }

    else
    {
      v10 = 0;
    }
  }

  if (a2 > v21)
  {
    if (((((v25 + 7) & 0xFFFFFFF8) + ((v24 + ((((((((((v22 + ((v17 + 24) & ~(v17 | 7))) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8)) & v23) + 31) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v29 = a2 - v21;
    }

    else
    {
      v29 = 1;
    }

    if (((((v25 + 7) & 0xFFFFFFF8) + ((v24 + ((((((((((v22 + ((v17 + 24) & ~(v17 | 7))) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8)) & v23) + 31) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v30 = ~v21 + a2;
      bzero(a1, v26);
      *a1 = v30;
    }

    if (v10 > 1)
    {
      if (v10 == 2)
      {
        *(a1 + v26) = v29;
      }

      else
      {
        *(a1 + v26) = v29;
      }
    }

    else if (v10)
    {
      *(a1 + v26) = v29;
    }

    return;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *(a1 + v26) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_48;
    }

    *(a1 + v26) = 0;
LABEL_47:
    if (!a2)
    {
      return;
    }

    goto LABEL_48;
  }

  if (!v10)
  {
    goto LABEL_47;
  }

  *(a1 + v26) = 0;
  if (!a2)
  {
    return;
  }

LABEL_48:
  if (v21 == 0x7FFFFFFF)
  {
    if ((a2 & 0x80000000) != 0)
    {
      a1[1] = 0;
      a1[2] = 0;
      *a1 = a2 & 0x7FFFFFFF;
    }

    else
    {
      a1[1] = (a2 - 1);
    }
  }

  else
  {
    v31 = (a1 + (v17 | 7) + 24) & ~(v17 | 7);
    if (v13 == v21)
    {
      v32 = *(v11 + 56);

      v32((v17 + ((v31 + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v17, a2, v12, v9);
    }

    else
    {
      v33 = v24 + ((((((((((v22 + v31) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
      v34 = (v33 & v23);
      if (v20 >= a2)
      {
        if (v19 >= a2)
        {
          v40 = *(v15 + 56);

          v40(v33 & v23, (a2 + 1));
        }

        else
        {
          if (v25 <= 3)
          {
            v37 = ~(-1 << (8 * v25));
          }

          else
          {
            v37 = -1;
          }

          if (v25)
          {
            v38 = v37 & (~v19 + a2);
            if (v25 <= 3)
            {
              v39 = v25;
            }

            else
            {
              v39 = 4;
            }

            bzero(v34, v25);
            if (v39 > 2)
            {
              if (v39 == 3)
              {
                *v34 = v38;
                v34[2] = BYTE2(v38);
              }

              else
              {
                *v34 = v38;
              }
            }

            else if (v39 == 1)
            {
              *v34 = v38;
            }

            else
            {
              *v34 = v38;
            }
          }
        }
      }

      else
      {
        v35 = (v25 + 7) & 0xFFFFFFF8;
        if (v35 != -8)
        {
          v36 = ~v20 + a2;
          bzero(v34, (v35 + 8));
          *v34 = v36;
        }
      }
    }
  }
}

void sub_100B68CA0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Binding();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100B68CF4()
{
  if (!qword_1011B38A0)
  {
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_1011B38A0);
    }
  }
}

void sub_100B68D44(uint64_t a1)
{
  sub_100B68CA0(319, &qword_1011B3888, &type metadata accessor for ScrollPosition);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

void sub_100B68E14(uint64_t a1)
{
  type metadata accessor for Array();
  type metadata accessor for Binding();
  if (v1 <= 0x3F)
  {
    sub_100B68CA0(319, &qword_1011B3888, &type metadata accessor for ScrollPosition);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100B68F08(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011B37E0, &qword_100F044F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_100B68FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = [objc_allocWithZone(UIPageControl) init];
  v14[0] = a2;
  v14[1] = a3;
  v14[2] = a4;
  v14[3] = a5;
  type metadata accessor for PageControl(255, v14);
  swift_getWitnessTable();
  type metadata accessor for UIViewRepresentableContext();
  UIViewRepresentableContext.coordinator.getter();
  [v9 addTarget:v14[0] action:"updateCurrentPage:" forControlEvents:4096];

  v10 = objc_opt_self();
  v11 = [v10 systemFillColor];
  [v9 setPageIndicatorTintColor:v11];

  v12 = [v10 labelColor];
  [v9 setCurrentPageIndicatorTintColor:v12];

  return v9;
}

uint64_t sub_100B690F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011B37E0, &qword_100F044F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100B69168(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011B37E0, &qword_100F044F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100B6923C(double *a1)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v12[0] = v1[2];
  v3 = v12[0];
  v12[1] = v4;
  v12[2] = v5;
  v12[3] = v6;
  v12[4] = v7;
  v12[5] = v8;
  v9 = *(type metadata accessor for CarouselView(0, v12) - 8);
  v10 = v1 + ((*(v9 + 80) + 64) & ~*(v9 + 80));

  return sub_100B65AE0(a1, v10, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_100B69334(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100B6937C()
{
  v1 = v0[2];
  v11 = v0[1];
  v12[0] = v11;
  v2 = v0[3];
  v12[1] = v1;
  v12[2] = v2;
  v3 = type metadata accessor for CarouselView(0, v12);
  v4 = v0 + ((*(*(v3 - 1) + 80) + 64) & ~*(*(v3 - 1) + 80));

  v5 = &v4[v3[17]];

  v6 = *(sub_10010FC20(&qword_1011B37E0, &qword_100F044F0) + 32);
  v7 = type metadata accessor for ScrollPosition();
  (*(*(v7 - 8) + 8))(&v5[v6], v7);

  if (*&v4[v3[22]])
  {
  }

  v8 = &v4[v3[23]];
  v9 = *(v11 - 8);
  if (!(*(v9 + 48))(v8, 1, v11))
  {
    (*(v9 + 8))(v8, v11);
  }

  type metadata accessor for Optional();
  type metadata accessor for State();

  return swift_deallocObject();
}

uint64_t sub_100B695C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  v14[0] = v2[2];
  v5 = v14[0];
  v14[1] = v6;
  v14[2] = v7;
  v14[3] = v8;
  v14[4] = v9;
  v14[5] = v10;
  v11 = *(type metadata accessor for CarouselView(0, v14) - 8);
  v12 = v2 + ((*(v11 + 80) + 64) & ~*(v11 + 80));

  return sub_100B65270(a1, v12, v5, v7, v8, v9, a2);
}

double sub_100B69698()
{
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v14 = v0[2];
  v1 = v14;
  v15 = v2;
  v16 = v3;
  v17 = v4;
  v18 = v5;
  v19 = v6;
  v7 = *(type metadata accessor for CarouselView(0, &v14) - 8);
  v8 = *(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(*(v1 - 8) + 80);
  v14 = v1;
  v15 = v2;
  v16 = v3;
  v17 = v4;
  v11 = (((v8 + 64) & ~v8) + v9 + v10) & ~v10;
  v18 = v5;
  v19 = v6;
  v12 = type metadata accessor for CarouselView(0, &v14);
  return sub_100B65850(v0 + v11, 1, v12);
}

void CircularProgressView.setState(_:animated:)(uint64_t a1, int a2, char a3)
{
  v5 = &v3[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView__state];
  if ((a2 & 0x10000) != 0)
  {
    if (v3[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView__state + 10])
    {
      return;
    }

    *v5 = *&a1;
    *(v5 + 4) = a2;
    v5[10] = 1;
    if (a3)
    {
      v6 = *&v3[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_progressLayer];
      goto LABEL_13;
    }
  }

  else
  {
    if ((v3[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView__state + 10] & 1) == 0)
    {
      v16 = *v5;
      v17 = *(v5 + 4);
      if ((a2 & 0x100) != 0)
      {
        if (a1 | a2)
        {
          if ((*(v5 + 4) & 0x100) != 0 && *&v16 | *(v5 + 4))
          {
            return;
          }
        }

        else if ((*(v5 + 4) & 0x100) != 0 && !(*&v16 | *(v5 + 4)))
        {
          return;
        }
      }

      else if ((*(v5 + 4) & 0x100) == 0)
      {
        if (a2)
        {
          if (v17)
          {
            return;
          }
        }

        else if ((v17 & 1) == 0 && *&a1 == v16)
        {
          return;
        }
      }
    }

    *v5 = *&a1;
    *(v5 + 4) = a2;
    v5[10] = 0;
    if (a3)
    {
      v6 = *&v3[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_progressLayer];
      LOBYTE(v7) = a2;
      if ((a2 & 0x100) == 0)
      {
        goto LABEL_5;
      }

LABEL_23:
      if (a1 | v7)
      {
        [v6 setOpacity:0.0];
        if (a3)
        {
          return;
        }
      }

      else if (*&v3[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_spinAnimator])
      {
        v20 = swift_allocObject();
        *(v20 + 16) = v3;
        *(v20 + 24) = v6;
        v21 = v3;
        v22 = v6;

        sub_100B6B498(sub_100B6B96C, v20, 1.0);

        if (a3)
        {
          return;
        }
      }

      else
      {
        [v6 setStrokeEnd:1.0];
        sub_10010FC20(&qword_1011B5630, "\b)\n");
        v23 = swift_allocObject();
        *(v23 + 16) = xmmword_100EBC6C0;
        sub_100009F78(0, &qword_1011B3A00, NSNumber_ptr);
        *(v23 + 32) = NSNumber.init(integerLiteral:)(4);
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v6 setLineDashPattern:isa];

        if (a3)
        {
          return;
        }
      }

      goto LABEL_46;
    }
  }

  v13 = objc_opt_self();
  [v13 begin];
  [v13 setDisableActions:1];
  v6 = *&v3[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_progressLayer];
  if (v5[10])
  {
LABEL_13:
    [v6 setLineDashPattern:0];
    if (*&v3[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_spinAnimator])
    {
      v14 = swift_allocObject();
      *(v14 + 16) = v3;
      v15 = v3;

      sub_100B6B498(sub_100B6AA14, v14, 0.0);

      goto LABEL_15;
    }

LABEL_40:
    if (a3)
    {
      return;
    }

    goto LABEL_46;
  }

  a1 = *v5;
  v7 = *(v5 + 4);
  if ((v7 & 0x100) != 0)
  {
    goto LABEL_23;
  }

LABEL_5:
  v8 = *&a1;
  [v6 setLineDashPattern:0];
  LODWORD(v9) = 1.0;
  [v6 setOpacity:v9];
  if ((v7 & 1) == 0)
  {
    if (*&v3[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_spinAnimator])
    {
      v18 = swift_allocObject();
      *(v18 + 16) = v3;

      v19 = v3;
      sub_100B6B498(sub_100B6BF8C, v18, v8);

      if (a3)
      {
        return;
      }

      goto LABEL_46;
    }

    [v6 setStrokeEnd:v8];
    goto LABEL_40;
  }

  v10 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_spinAnimator;
  v11 = *&v3[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_spinAnimator];
  if (!v11)
  {
    type metadata accessor for CircularProgressView.SpinAnimator();
    v11 = swift_allocObject();
    *(v11 + 40) = 0;
    *(v11 + 16) = 0xD000000000000010;
    *(v11 + 24) = 0x8000000100E65810;
    *(v11 + 32) = v6;
    v12 = v6;
  }

  *&v3[v10] = v11;

  sub_100B6B180();
LABEL_15:

  if (a3)
  {
    return;
  }

LABEL_46:
  v25 = objc_opt_self();

  [v25 commit];
}

BOOL static CircularProgressView.State.__derived_enum_equals(_:_:)(uint64_t a1, __int16 a2, uint64_t a3, __int16 a4)
{
  if ((a2 & 0x100) != 0)
  {
    v5 = (a3 | a4) == 0;
    if ((a4 & 0x100) == 0)
    {
      v5 = 0;
    }

    v6 = (a3 | a4) != 0;
    if ((a4 & 0x100) == 0)
    {
      v6 = 0;
    }

    if (a1 | a2)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    if ((a4 & 0x100) == 0)
    {
      if (a2)
      {
        if (a4)
        {
          return 1;
        }
      }

      else if ((a4 & 1) == 0 && *&a1 == *&a3)
      {
        return 1;
      }
    }

    return 0;
  }
}

BOOL sub_100B69CE8(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (*(a1 + 9) == 1)
  {
    if (*&v2 | v3)
    {
      if (*(a2 + 9))
      {
        return (*&v4 | v5) != 0;
      }
    }

    else if (*(a2 + 9))
    {
      return (*&v4 | v5) == 0;
    }

    return 0;
  }

  if ((*(a2 + 9) & 1) == 0)
  {
    if (v3)
    {
      if (v5)
      {
        return 1;
      }
    }

    else if ((v5 & 1) == 0 && v2 == v4)
    {
      return 1;
    }
  }

  return 0;
}

char *CircularProgressView.init(size:)(double a1, double a2)
{
  ObjectType = swift_getObjectType();
  v6 = &v2[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView__state];
  *v6 = 0;
  *(v6 + 4) = 0;
  v6[10] = 1;
  *&v2[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_image] = 0;
  *&v2[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageView] = 0;
  *&v2[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageScale] = 0x3FE0000000000000;
  *&v2[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_spinAnimator] = 0;
  v7 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_progressLayer;
  *&v2[v7] = [objc_allocWithZone(CAShapeLayer) init];
  v8 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_trackLayer;
  *&v2[v8] = [objc_allocWithZone(CAShapeLayer) init];
  v9 = &v2[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_preferredSize];
  *v9 = a1;
  v9[1] = a2;
  v25.receiver = v2;
  v25.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v25, "initWithFrame:", 0.0, 0.0, a1, a2);
  v11 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_trackLayer;
  v12 = *&v10[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_trackLayer];
  v13 = objc_opt_self();
  v14 = v10;
  v15 = v12;
  v16 = [v13 clearColor];
  v17 = [v16 CGColor];

  [v15 setFillColor:v17];
  [*&v10[v11] setLineWidth:2.5];
  v18 = [v14 layer];
  [v18 addSublayer:*&v10[v11]];

  v19 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_progressLayer;
  [*&v14[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_progressLayer] setLineCap:kCALineCapRound];
  [*&v14[v19] setStrokeEnd:0.0];
  v20 = *&v14[v19];
  v21 = [v13 clearColor];
  v22 = [v21 CGColor];

  [v20 setFillColor:v22];
  [*&v14[v19] setLineWidth:2.5];
  [*&v14[v19] setLineDashPhase:6.0];
  v23 = [v14 layer];

  [v23 addSublayer:*&v14[v19]];
  sub_100B6A048();

  return v14;
}

void sub_100B6A048()
{
  v1 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_trackLayer];
  v2 = [objc_opt_self() tertiarySystemFillColor];
  v3 = [v2 CGColor];

  [v1 setStrokeColor:v3];
  v4 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_progressLayer];
  v5 = [v0 tintColor];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 CGColor];

    [v4 setStrokeColor:v7];
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall CircularProgressView.tintColorDidChange()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, "tintColorDidChange");
  sub_100B6A048();
}

Swift::Void __swiftcall CircularProgressView.layoutSubviews()()
{
  v24.receiver = v0;
  v24.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v24, "layoutSubviews");
  [v0 bounds];
  x = v25.origin.x;
  y = v25.origin.y;
  width = v25.size.width;
  height = v25.size.height;
  v5 = CGRectGetWidth(v25);
  v26.origin.x = x;
  v26.origin.y = y;
  v26.size.width = width;
  v26.size.height = height;
  v6 = CGRectGetHeight(v26);
  if (v6 >= v5)
  {
    v6 = v5;
  }

  v7 = (v6 + -2.5) * 0.5;
  CGRect.center.getter();
  v10 = [objc_opt_self() bezierPathWithArcCenter:1 radius:v8 startAngle:v9 endAngle:v7 clockwise:{-1.57079633, 4.71238898}];
  v11 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_trackLayer];
  v12 = [v10 CGPath];
  [v11 setPath:v12];

  v13 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_progressLayer];
  v14 = [v10 CGPath];
  [v13 setPath:v14];

  [v13 setBounds:{x, y, width, height}];
  v27.origin.x = x;
  v27.origin.y = y;
  v27.size.width = width;
  v27.size.height = height;
  v15 = CGRectGetWidth(v27) * 0.5;
  v28.origin.x = x;
  v28.origin.y = y;
  v28.size.width = width;
  v28.size.height = height;
  [v13 setPosition:{v15, CGRectGetHeight(v28) * 0.5}];
  v16 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageView;
  v17 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageView];
  if (v17)
  {
    [v17 setFrame:{x, y, width, height}];
    v18 = *&v0[v16];
    if (v18)
    {
      v19 = v18;
      [v19 frame];
      v20 = CGRectGetWidth(v29);
      [v19 frame];
      v21 = CGRectGetHeight(v30);
      if (v21 < v20)
      {
        v20 = v21;
      }

      v22 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageScale;
      swift_beginAccess();
      v23 = [objc_opt_self() configurationWithPointSize:v20 * *&v0[v22]];
      [v19 setPreferredSymbolConfiguration:v23];
    }
  }
}

double CircularProgressView.sizeThatFits(_:)()
{
  v1 = v0 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_preferredSize;
  swift_beginAccess();
  return *v1;
}

void CircularProgressView.preferredSize.setter(double a1, double a2)
{
  v5 = &v2[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_preferredSize];
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  if (v6 != a1 || v7 != a2)
  {
    [v2 invalidateIntrinsicContentSize];
  }
}

void (*CircularProgressView.preferredSize.modify(uint64_t *a1))(id **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_preferredSize;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return sub_100B6A70C;
}

void sub_100B6A70C(id **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 3);
  v3 = ((*a1)[6] + (*a1)[5]);
  v4 = *(*a1 + 4);
  v5 = *v3;
  v6 = v3[1];
  *v3 = v2;
  v3[1] = v4;
  if (v2 != v5 || v4 != v6)
  {
    [v1[5] invalidateIntrinsicContentSize];
  }

  free(v1);
}

void (*CircularProgressView.state.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 16) = v1;
  v2 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView__state + 8);
  v3 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView__state + 10);
  *a1 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView__state);
  *(a1 + 8) = v2;
  *(a1 + 10) = v3;
  return sub_100B6A7FC;
}

double sub_100B6A840(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a2 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_spinAnimator);
  if (v6)
  {
    v7 = v6 == a1;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    *(a2 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_spinAnimator) = 0;
  }

  sub_10010FC20(&qword_1011B5630, "\b)\n");
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100EBC6C0;
  sub_100009F78(0, &qword_1011B3A00, NSNumber_ptr);
  *(v8 + 32) = NSNumber.init(integerLiteral:)(4);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a3 setLineDashPattern:isa];

  v10 = a2 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView__state;
  result = 0.0;
  if ((*(a2 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView__state + 10) & 1) == 0)
  {
    v12 = *v10;
    v13 = *(v10 + 8);
    if ((v13 & 0x100) != 0)
    {
      if (!(*&v12 | v13))
      {
        return 1.0;
      }
    }

    else
    {
      result = v12;
      if (v13)
      {
        return 0.6;
      }
    }
  }

  return result;
}

double sub_100B6A974(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_spinAnimator);
  if (v4)
  {
    v5 = v4 == a1;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    *(a2 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_spinAnimator) = 0;
  }

  v6 = a2 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView__state;
  result = 0.0;
  if ((*(a2 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView__state + 10) & 1) == 0)
  {
    v8 = *v6;
    v9 = *(v6 + 8);
    if ((v9 & 0x100) != 0)
    {
      if (!(*&v8 | v9))
      {
        return 1.0;
      }
    }

    else
    {
      result = v8;
      if (v9)
      {
        return 0.6;
      }
    }
  }

  return result;
}

void sub_100B6AA30()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_image;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageView;
    v4 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageView);
    if (v4)
    {
      v5 = v2;
      v6 = v4;
    }

    else
    {
      v8 = objc_allocWithZone(UIImageView);
      v9 = v2;
      v6 = [v8 init];
    }

    v10 = v4;
    [v6 setImage:v2];
    v11 = *(v0 + v3);
    if (v11)
    {
      v12 = v11;
      [v12 frame];
      Width = CGRectGetWidth(v18);
      [v12 frame];
      Height = CGRectGetHeight(v19);
      if (Height < Width)
      {
        Width = Height;
      }

      v15 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageScale;
      swift_beginAccess();
      v16 = [objc_opt_self() configurationWithPointSize:Width * *(v0 + v15)];
      [v12 setPreferredSymbolConfiguration:v16];

      v7 = *(v0 + v3);
    }

    else
    {
      v7 = 0;
    }

    *(v0 + v3) = v6;
    v17 = v6;
    sub_100B6AD2C(v7);
  }

  else
  {
    v7 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageView);
    *(v0 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageView) = 0;
    sub_100B6AD2C(v7);
  }
}

void *CircularProgressView.image.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_image;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void CircularProgressView.image.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_image;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  sub_100B6AA30();
}

void (*CircularProgressView.image.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_100B6ACF8;
}

void sub_100B6ACF8(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_100B6AA30();
  }
}

void sub_100B6AD2C(void *a1)
{
  v2 = v1;
  v3 = a1;
  v4 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageView;
  v5 = *&v1[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageView];
  if (v5)
  {
    if (!a1)
    {
LABEL_10:
      v13 = v5;
      [v13 setContentMode:4];
      [v2 addSubview:v13];

      return;
    }

    sub_100009F78(0, &unk_1011B3BD0, UIImageView_ptr);
    v6 = v5;
    v3 = v3;
    v7 = static NSObject.== infix(_:_:)();

    if (v7)
    {
      return;
    }
  }

  else if (!a1)
  {
    return;
  }

  v8 = v3;
  v9 = [v8 superview];
  if (v9)
  {
    v10 = v9;
    sub_100009F78(0, &qword_1011B7C10, UIView_ptr);
    v11 = v2;
    v12 = static NSObject.== infix(_:_:)();

    if (v12)
    {
      [v8 removeFromSuperview];
    }
  }

  v5 = *&v2[v4];
  if (v5)
  {
    goto LABEL_10;
  }
}

double CircularProgressView.imageScale.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageScale;
  swift_beginAccess();
  return *(v0 + v1);
}

void CircularProgressView.imageScale.setter(double a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageScale;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  if (v4 != a1)
  {
    v5 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageView);
    if (v5)
    {
      v6 = v5;
      [v6 frame];
      Width = CGRectGetWidth(v10);
      [v6 frame];
      Height = CGRectGetHeight(v11);
      if (Height >= Width)
      {
        Height = Width;
      }

      v9 = [objc_opt_self() configurationWithPointSize:*(v1 + v3) * Height];
      [v6 setPreferredSymbolConfiguration:v9];
    }
  }
}

void (*CircularProgressView.imageScale.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageScale;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return sub_100B6B070;
}

void sub_100B6B070(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  if (a2)
  {
    CircularProgressView.imageScale.setter(v3);
  }

  else
  {
    v5 = v2[4];
    v4 = v2[5];
    v6 = *(v5 + v4);
    *(v5 + v4) = v3;
    if (v3 != v6)
    {
      v7 = v2[4];
      v8 = *(v7 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageView);
      if (v8)
      {
        v9 = v2[5];
        v10 = v8;
        [v10 frame];
        Width = CGRectGetWidth(v15);
        [v10 frame];
        Height = CGRectGetHeight(v16);
        if (Height >= Width)
        {
          Height = Width;
        }

        v13 = [objc_opt_self() configurationWithPointSize:*(v7 + v9) * Height];
        [v10 setPreferredSymbolConfiguration:v13];
      }
    }
  }

  free(v2);
}

void sub_100B6B180()
{
  *(v0 + 40) = 0;
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = *(v0 + 16);
  v4 = String._bridgeToObjectiveC()();
  [v1 removeAnimationForKey:v4];

  *&v21[0] = v3;
  *(&v21[0] + 1) = v2;

  v5._countAndFlagsBits = 0x676E69646E65;
  v5._object = 0xE600000000000000;
  String.append(_:)(v5);
  v6 = String._bridgeToObjectiveC()();

  [v1 removeAnimationForKey:v6];

  [v1 setStrokeEnd:0.6];
  v7 = String._bridgeToObjectiveC()();
  v8 = [objc_opt_self() animationWithKeyPath:v7];

  v9 = [v1 presentationLayer];
  if (!v9)
  {
    v9 = v1;
  }

  v10 = String._bridgeToObjectiveC()();
  v11 = [v9 valueForKeyPath:v10];

  if (v11)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
  }

  v21[0] = v19;
  v21[1] = v20;
  if (*(&v20 + 1))
  {
    swift_dynamicCast();
  }

  else
  {
    sub_100011EC0(v21);
  }

  isa = Double._bridgeToObjectiveC()().super.super.isa;
  [v8 setFromValue:isa];

  v13 = Double._bridgeToObjectiveC()().super.super.isa;
  [v8 setToValue:v13];

  v14 = v8;
  [v14 setRemovedOnCompletion:1];
  [v14 setFillMode:kCAFillModeBoth];
  [v14 setDuration:1.0];
  LODWORD(v15) = 2139095040;
  [v14 setRepeatCount:v15];
  v16 = CACurrentMediaTime();
  [v14 duration];
  [v14 setBeginTime:{(v16 - fmod(v16, v17))}];

  v18 = String._bridgeToObjectiveC()();
  [v1 addAnimation:v14 forKey:v18];
}

void sub_100B6B498(uint64_t a1, uint64_t a2, double a3)
{
  if ((*(v3 + 40) & 1) == 0)
  {
    *(v3 + 40) = 1;
    v7 = *(v3 + 32);
    v8 = [v7 presentationLayer];
    if (!v8)
    {
      v8 = v7;
    }

    v9 = String._bridgeToObjectiveC()();
    v10 = [v8 valueForKeyPath:v9];

    if (v10)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v41 = 0u;
      v42 = 0u;
    }

    v11 = fmin(a3, 0.1);
    v43[0] = v41;
    v43[1] = v42;
    if (*(&v42 + 1))
    {
      swift_dynamicCast();
    }

    else
    {
      sub_100011EC0(v43);
    }

    v12 = String._bridgeToObjectiveC()();
    v13 = objc_opt_self();
    v14 = [v13 animationWithKeyPath:v12];

    isa = Double._bridgeToObjectiveC()().super.super.isa;
    [v14 setFromValue:isa];

    v16 = Double._bridgeToObjectiveC()().super.super.isa;
    [v14 setToValue:v16];

    v17 = String._bridgeToObjectiveC()();
    v18 = [v13 animationWithKeyPath:v17];

    v19 = CGFloat._bridgeToObjectiveC()().super.super.isa;
    [v18 setToValue:v19];

    v20 = [objc_allocWithZone(CAAnimationGroup) init];
    sub_10010FC20(&qword_1011B5630, "\b)\n");
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_100EBC6D0;
    *(v21 + 32) = v14;
    *(v21 + 40) = v18;
    sub_100009F78(0, &unk_1011B3BE0, CAAnimation_ptr);
    v22 = v14;
    v23 = v18;
    v24 = Array._bridgeToObjectiveC()().super.isa;

    [v20 setAnimations:v24];

    v25 = v20;
    [v25 setDuration:((1.0 - (0.6 - v11)) * 6.28318531 + -6.28318531 + 6.28318531) * 0.159154943];
    [v25 setFillMode:kCAFillModeForwards];
    [v25 setRemovedOnCompletion:0];
    v26 = type metadata accessor for CircularProgressView.SpinAnimator.Delegate();
    v27 = objc_allocWithZone(v26);
    v28 = &v27[OBJC_IVAR____TtCCC11MusicCoreUI20CircularProgressViewP33_2327D9925563EEC9FF3A63D4DED4721D12SpinAnimator8Delegate_onAnimationDidStop];
    *v28 = 0;
    *(v28 + 1) = 0;
    v40.receiver = v27;
    v40.super_class = v26;
    v29 = objc_msgSendSuper2(&v40, "init");
    [v25 setDelegate:v29];

    v30 = swift_allocObject();
    *(v30 + 16) = v29;
    *(v30 + 24) = v3;
    *(v30 + 32) = v11;
    *(v30 + 40) = a1;
    *(v30 + 48) = a2;
    *(v30 + 56) = a3;
    v31 = &v29[OBJC_IVAR____TtCCC11MusicCoreUI20CircularProgressViewP33_2327D9925563EEC9FF3A63D4DED4721D12SpinAnimator8Delegate_onAnimationDidStop];
    v32 = *&v29[OBJC_IVAR____TtCCC11MusicCoreUI20CircularProgressViewP33_2327D9925563EEC9FF3A63D4DED4721D12SpinAnimator8Delegate_onAnimationDidStop];
    v33 = *&v29[OBJC_IVAR____TtCCC11MusicCoreUI20CircularProgressViewP33_2327D9925563EEC9FF3A63D4DED4721D12SpinAnimator8Delegate_onAnimationDidStop + 8];
    *v31 = sub_100B6BF74;
    v31[1] = v30;
    v34 = v29;

    sub_100020438(v32, v33);
    v36 = *(v3 + 16);
    v35 = *(v3 + 24);
    v37 = String._bridgeToObjectiveC()();
    [v7 removeAnimationForKey:v37];

    *&v43[0] = v36;
    *(&v43[0] + 1) = v35;

    v38._countAndFlagsBits = 0x676E69646E65;
    v38._object = 0xE600000000000000;
    String.append(_:)(v38);
    v39 = String._bridgeToObjectiveC()();

    [v7 addAnimation:v25 forKey:v39];
  }
}

void sub_100B6B998(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t))
{
  if (*(a5 + 40) == 1)
  {
    v11 = objc_opt_self();
    [v11 begin];
    [v11 setDisableActions:1];
    v12 = *(a5 + 32);
    v17 = *(a5 + 16);
    v18 = *(a5 + 24);

    v13._countAndFlagsBits = 0x676E69646E65;
    v13._object = 0xE600000000000000;
    String.append(_:)(v13);
    v14 = String._bridgeToObjectiveC()();

    [v12 removeAnimationForKey:{v14, v17, v18}];

    [v12 setStrokeStart:0.0];
    [v12 setStrokeEnd:a1];
    [v11 commit];
    v15 = COERCE_DOUBLE(a6(a5));
    if (v16)
    {
      v15 = a2;
    }

    [v12 setStrokeEnd:v15];
  }
}

id sub_100B6BBCC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CircularProgressView.SpinAnimator.Delegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100B6BC18()
{

  return swift_deallocClassInstance();
}

void _s11MusicCoreUI20CircularProgressViewC5coderACSgSo7NSCoderC_tcfc_0()
{
  v1 = v0 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView__state;
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 10) = 1;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_image) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageView) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageScale) = 0x3FE0000000000000;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_spinAnimator) = 0;
  v2 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_progressLayer;
  *(v0 + v2) = [objc_allocWithZone(CAShapeLayer) init];
  v3 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_trackLayer;
  *(v0 + v3) = [objc_allocWithZone(CAShapeLayer) init];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t type metadata accessor for CircularProgressView()
{
  return objc_opt_self();
}

{
  return type metadata accessor for CircularProgressView();
}

uint64_t initializeBufferWithCopyOfBuffer for CircularProgressView.State(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for CircularProgressView.State(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 10))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CircularProgressView.State(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 10) = v3;
  return result;
}

uint64_t sub_100B6BF00(uint64_t a1)
{
  if (*(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100B6BF1C(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
    *(result + 9) = 1;
  }

  else
  {
    *(result + 9) = 0;
  }

  return result;
}

uint64_t sub_100B6BF90(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_100B6C020(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Artwork.CropStyle();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011B4720, &qword_100F02D00);
  __chkstk_darwin();
  v9 = &v51 - v8;
  v62 = sub_10010FC20(&qword_1011B3568, &unk_100F03C90);
  __chkstk_darwin();
  v67 = &v51 - v10;
  v69 = type metadata accessor for ArtworkImage.ViewModel(0);
  v11 = *(v69 - 8);
  __chkstk_darwin();
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011B5930, &qword_100EFDE70);
  __chkstk_darwin();
  v64 = &v51 - v14;
  v65 = sub_10010FC20(&unk_1011B4930, &qword_100F05490);
  __chkstk_darwin();
  v71 = &v51 - v15;
  v70 = type metadata accessor for ArtworkImage.GridPreview.Item(0);
  __chkstk_darwin();
  v17 = (&v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v66 = &v51 - v19;
  v20 = *(a1 + 16);
  if (v20 == *(a2 + 16))
  {
    if (v20 && a1 != a2)
    {
      v54 = v9;
      v21 = (*(v18 + 80) + 32) & ~*(v18 + 80);
      v22 = a1 + v21;
      v23 = a2 + v21;
      v63 = (v11 + 48);
      v57 = (v5 + 48);
      v58 = v4;
      v51 = (v5 + 32);
      v52 = v7;
      v53 = (v5 + 8);
      v61 = *(v18 + 72);
      v24 = v64;
      v25 = v66;
      v59 = v13;
      v56 = v17;
      while (1)
      {
        sub_100B8D7C0(v22, v25, type metadata accessor for ArtworkImage.GridPreview.Item);
        v68 = v22;
        sub_100B8D7C0(v23, v17, type metadata accessor for ArtworkImage.GridPreview.Item);
        v26 = *v25 == *v17 && v25[1] == v17[1];
        if (!v26 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
LABEL_32:
          sub_100B8DCA8(v17, type metadata accessor for ArtworkImage.GridPreview.Item);
          sub_100B8DCA8(v25, type metadata accessor for ArtworkImage.GridPreview.Item);
          goto LABEL_33;
        }

        v27 = v71;
        v28 = *(v70 + 20);
        v29 = *(v65 + 48);
        sub_1000089F8(v25 + v28, v71, &qword_1011B5930, &qword_100EFDE70);
        sub_1000089F8(v17 + v28, v27 + v29, &qword_1011B5930, &qword_100EFDE70);
        v30 = *v63;
        v31 = v27;
        v32 = v69;
        if ((*v63)(v31, 1, v69) == 1)
        {
          break;
        }

        v60 = v20;
        v34 = v71;
        sub_1000089F8(v71, v24, &qword_1011B5930, &qword_100EFDE70);
        if (v30(v34 + v29, 1, v32) == 1)
        {
          sub_100B8DCA8(v24, type metadata accessor for ArtworkImage.ViewModel);
          v25 = v66;
LABEL_26:
          v48 = &unk_1011B4930;
          v49 = &qword_100F05490;
          goto LABEL_31;
        }

        v35 = v59;
        sub_100B8D828(v71 + v29, v59, type metadata accessor for ArtworkImage.ViewModel);
        if ((static Artwork.== infix(_:_:)() & 1) == 0)
        {
          sub_100B8DCA8(v35, type metadata accessor for ArtworkImage.ViewModel);
          goto LABEL_30;
        }

        v36 = *(v69 + 20);
        v37 = *(v62 + 48);
        v38 = v67;
        sub_1000089F8(v24 + v36, v67, &qword_1011B4720, &qword_100F02D00);
        sub_1000089F8(v35 + v36, v38 + v37, &qword_1011B4720, &qword_100F02D00);
        v39 = *v57;
        v40 = v38;
        v41 = v58;
        if ((*v57)(v40, 1, v58) == 1)
        {
          sub_100B8DCA8(v35, type metadata accessor for ArtworkImage.ViewModel);
          v42 = v39(v67 + v37, 1, v41);
          v17 = v56;
          if (v42 != 1)
          {
            goto LABEL_29;
          }

          sub_1000095E8(v67, &qword_1011B4720, &qword_100F02D00);
          v24 = v64;
          sub_100B8DCA8(v64, type metadata accessor for ArtworkImage.ViewModel);
          v25 = v66;
          v20 = v60;
          goto LABEL_18;
        }

        v43 = v67;
        v44 = v54;
        sub_1000089F8(v67, v54, &qword_1011B4720, &qword_100F02D00);
        if (v39(v43 + v37, 1, v41) == 1)
        {
          sub_100B8DCA8(v59, type metadata accessor for ArtworkImage.ViewModel);
          (*v53)(v44, v41);
          v17 = v56;
LABEL_29:
          sub_1000095E8(v67, &qword_1011B3568, &unk_100F03C90);
          v24 = v64;
LABEL_30:
          v25 = v66;
          sub_100B8DCA8(v24, type metadata accessor for ArtworkImage.ViewModel);
          v48 = &qword_1011B5930;
          v49 = &qword_100EFDE70;
LABEL_31:
          sub_1000095E8(v71, v48, v49);
          goto LABEL_32;
        }

        v45 = v52;
        (*v51)(v52, v43 + v37, v41);
        sub_100B8C798(&qword_1011B3570, &type metadata accessor for Artwork.CropStyle, &protocol conformance descriptor for Artwork.CropStyle);
        v55 = dispatch thunk of static Equatable.== infix(_:_:)();
        v46 = *v53;
        (*v53)(v45, v41);
        sub_100B8DCA8(v59, type metadata accessor for ArtworkImage.ViewModel);
        v46(v44, v41);
        sub_1000095E8(v43, &qword_1011B4720, &qword_100F02D00);
        v24 = v64;
        sub_100B8DCA8(v64, type metadata accessor for ArtworkImage.ViewModel);
        sub_1000095E8(v71, &qword_1011B5930, &qword_100EFDE70);
        v17 = v56;
        v25 = v66;
        v20 = v60;
        if ((v55 & 1) == 0)
        {
          goto LABEL_32;
        }

LABEL_21:
        v47 = _s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E11PlaceholderO21__derived_enum_equalsySbAF_AFtFZ_0(v25 + *(v70 + 24), v17 + *(v70 + 24));
        sub_100B8DCA8(v17, type metadata accessor for ArtworkImage.GridPreview.Item);
        sub_100B8DCA8(v25, type metadata accessor for ArtworkImage.GridPreview.Item);
        if (v47)
        {
          v23 += v61;
          v22 = v68 + v61;
          if (--v20)
          {
            continue;
          }
        }

        return v47 & 1;
      }

      v33 = v30(v71 + v29, 1, v32);
      v25 = v66;
      if (v33 != 1)
      {
        goto LABEL_26;
      }

LABEL_18:
      sub_1000095E8(v71, &qword_1011B5930, &qword_100EFDE70);
      goto LABEL_21;
    }

    v47 = 1;
  }

  else
  {
LABEL_33:
    v47 = 0;
  }

  return v47 & 1;
}

uint64_t sub_100B6C934(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s11MusicCoreUI16PlaylistCuratorsO4ViewV13ConfigurationV23__derived_struct_equalsySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v46 = type metadata accessor for Artwork();
  v4 = *(v46 - 8);
  __chkstk_darwin();
  v38 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_1011B55F0, &unk_100EFFDC0);
  __chkstk_darwin();
  v44 = &v34 - v6;
  v43 = sub_10010FC20(&qword_1011B4A58, &qword_100F062D0);
  __chkstk_darwin();
  v8 = &v34 - v7;
  v42 = type metadata accessor for PlaylistCurators.Curator(0);
  __chkstk_darwin();
  v47 = (&v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v45 = (&v34 - v11);
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      return 1;
    }

    v13 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = (v4 + 48);
    v35 = (v4 + 32);
    v36 = (v4 + 48);
    v37 = (v4 + 8);
    v41 = *(v10 + 72);
    v17 = v44;
    v18 = v45;
    while (1)
    {
      sub_100B8D7C0(v14, v18, type metadata accessor for PlaylistCurators.Curator);
      v19 = v47;
      sub_100B8D7C0(v15, v47, type metadata accessor for PlaylistCurators.Curator);
      v20 = *v18 == *v19 && v18[1] == v19[1];
      if (!v20 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v21 = v18;
      v22 = v16;
      v23 = *(v42 + 20);
      v24 = *(v43 + 48);
      sub_1000089F8(v21 + v23, v8, &unk_1011B55F0, &unk_100EFFDC0);
      sub_1000089F8(v47 + v23, &v8[v24], &unk_1011B55F0, &unk_100EFFDC0);
      v25 = *v22;
      if ((*v22)(v8, 1, v46) == 1)
      {
        if (v25(&v8[v24], 1, v46) != 1)
        {
          goto LABEL_19;
        }

        v16 = v22;
        sub_1000095E8(v8, &unk_1011B55F0, &unk_100EFFDC0);
        sub_100B8DCA8(v47, type metadata accessor for PlaylistCurators.Curator);
        v18 = v45;
        sub_100B8DCA8(v45, type metadata accessor for PlaylistCurators.Curator);
      }

      else
      {
        v40 = v14;
        v26 = v8;
        sub_1000089F8(v8, v17, &unk_1011B55F0, &unk_100EFFDC0);
        if (v25(&v8[v24], 1, v46) == 1)
        {
          (*v37)(v17, v46);
LABEL_19:
          sub_1000095E8(v8, &qword_1011B4A58, &qword_100F062D0);
          v18 = v45;
          break;
        }

        v27 = &v8[v24];
        v28 = v38;
        v29 = v46;
        (*v35)(v38, v27, v46);
        sub_100B8C798(&qword_1011B4A60, &type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
        v39 = dispatch thunk of static Equatable.== infix(_:_:)();
        v30 = *v37;
        v31 = v28;
        v32 = v44;
        (*v37)(v31, v29);
        v17 = v32;
        v30(v32, v29);
        sub_1000095E8(v26, &unk_1011B55F0, &unk_100EFFDC0);
        sub_100B8DCA8(v47, type metadata accessor for PlaylistCurators.Curator);
        v18 = v45;
        v16 = v36;
        sub_100B8DCA8(v45, type metadata accessor for PlaylistCurators.Curator);
        v8 = v26;
        v14 = v40;
        if ((v39 & 1) == 0)
        {
          return 0;
        }
      }

      v15 += v41;
      v14 += v41;
      if (!--v12)
      {
        return 1;
      }
    }

    sub_100B8DCA8(v47, type metadata accessor for PlaylistCurators.Curator);
    sub_100B8DCA8(v18, type metadata accessor for PlaylistCurators.Curator);
  }

  return 0;
}

uint64_t Collaboration.Management.Model.__allocating_init(manager:playlist:)(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v4 = sub_100B8BC6C(a1, a2);

  return v4;
}

uint64_t Collaboration.Management.Model.init(manager:playlist:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_100B8BC6C(a1, a2);

  return v2;
}

uint64_t property wrapper backing initializer of Collaboration.Management.Model.playlist(uint64_t a1)
{
  v2 = type metadata accessor for Playlist();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin();
  v8 = &v12 - v7;
  v9 = *(v3 + 16);
  v9(&v12 - v7, a1, v2, v6);
  (v9)(v5, v8, v2);
  Published.init(initialValue:)();
  v10 = *(v3 + 8);
  v10(a1, v2);
  return (v10)(v8, v2);
}

uint64_t sub_100B6D118(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    static ApplicationCapabilities.shared.getter(&v3);
    sub_100014984(&v3);
    swift_getKeyPath();
    swift_getKeyPath();
    return static Published.subscript.setter();
  }

  return result;
}

uint64_t sub_100B6D1B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  sub_10010FC20(&qword_1011B4ED0, &qword_100F05A48);
  v5[7] = swift_task_alloc();
  v6 = sub_10010FC20(&qword_1011B4ED8, &qword_100F05A50);
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  v7 = sub_10010FC20(&qword_1011B4EE0, &qword_100F05A58);
  v5[11] = v7;
  v5[12] = *(v7 - 8);
  v5[13] = swift_task_alloc();
  v8 = sub_10010FC20(&qword_1011B4EE8, &qword_100F05A60);
  v5[14] = v8;
  v5[15] = *(v8 - 8);
  v5[16] = swift_task_alloc();

  return _swift_task_switch(sub_100B6D388, 0, 0);
}

uint64_t sub_100B6D388()
{
  type metadata accessor for Playlist();
  type metadata accessor for Playlist.Collaborator();
  sub_100B8C798(&qword_1011B4EF0, &type metadata accessor for Playlist.Collaborator, &protocol conformance descriptor for Playlist.Collaborator);
  MusicLibrarySectionedRequest.init()();
  swift_getKeyPath();
  v0[2] = Playlist.id.getter();
  v0[3] = v1;
  MusicLibrarySectionedRequest.filterSections<A>(matching:equalTo:)();

  type metadata accessor for MainActor();
  v0[17] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100B6D4F4, v3, v2);
}

uint64_t sub_100B6D4F4()
{

  sub_100020674(&qword_1011B4EF8, &qword_1011B4EE8, &qword_100F05A60, &protocol conformance descriptor for MusicLibrarySectionedRequest<A, B>);
  *(v0 + 144) = MusicAutoupdatableRequest.autoupdatingResponse.getter();

  return _swift_task_switch(sub_100B6D5A0, 0, 0);
}

uint64_t sub_100B6D5A0()
{
  v1 = v0[13];
  v15 = v0[14];
  v16 = v0[16];
  v13 = v0[12];
  v14 = v0[15];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[7];
  v11 = v0[8];
  v12 = v0[11];
  v5 = v0[6];
  *(v5 + OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model_autoupdatingResponse) = v0[18];

  dispatch thunk of MusicAutoupdatingResponse.$response.getter();

  sub_100009F78(0, &qword_1011B4F00, OS_dispatch_queue_ptr);
  v6 = static OS_dispatch_queue.main.getter();
  v0[4] = v6;
  v7 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  sub_100020674(&qword_1011B4F08, &qword_1011B4ED8, &qword_100F05A50, &protocol conformance descriptor for Published<A>.Publisher);
  sub_10002078C();
  Publisher.receive<A>(on:options:)();
  sub_1000095E8(v4, &qword_1011B4ED0, &qword_100F05A48);

  (*(v3 + 8))(v2, v11);
  swift_allocObject();
  swift_weakInit();
  sub_100020674(&qword_1011B4F18, &qword_1011B4EE0, &qword_100F05A58, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v8 = Publisher<>.sink(receiveValue:)();

  (*(v13 + 8))(v1, v12);
  (*(v14 + 8))(v16, v15);
  *(v5 + OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model_autoupdatingResponseSubscription) = v8;

  v9 = v0[1];

  return v9();
}

void sub_100B6D868(uint64_t a1, uint64_t a2)
{
  v220 = a1;
  sub_10010FC20(&unk_1011B4540, &qword_100F010B0);
  __chkstk_darwin();
  v216 = &v182 - v3;
  v4 = type metadata accessor for Playlist.Collaborator();
  v214 = *(v4 - 8);
  __chkstk_darwin();
  v228 = &v182 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v213 = &v182 - v6;
  __chkstk_darwin();
  v231 = &v182 - v7;
  __chkstk_darwin();
  v223 = &v182 - v8;
  v225 = sub_10010FC20(&qword_1011B4F20, &qword_100F05A90);
  v205 = *(v225 - 8);
  __chkstk_darwin();
  v204 = &v182 - v9;
  v203 = sub_10010FC20(&qword_1011B4F28, &qword_100F05A98);
  __chkstk_darwin();
  v224 = &v182 - v10;
  v196 = type metadata accessor for Date();
  v194 = *(v196 - 8);
  __chkstk_darwin();
  v189 = &v182 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v193 = sub_10010FC20(&qword_1011B4F30, &qword_100F05AA0);
  __chkstk_darwin();
  v195 = &v182 - v12;
  v202 = type metadata accessor for Playlist();
  v201 = *(v202 - 1);
  __chkstk_darwin();
  v199 = &v182 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v200 = &v182 - v14;
  __chkstk_darwin();
  v192 = (&v182 - v15);
  sub_10010FC20(&qword_1011B4900, &qword_100F05300);
  __chkstk_darwin();
  v190 = &v182 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v197 = &v182 - v17;
  __chkstk_darwin();
  v198 = &v182 - v18;
  sub_10010FC20(&qword_1011B4918, &qword_100F05438);
  __chkstk_darwin();
  v222 = &v182 - v19;
  v215 = type metadata accessor for Playlist.Collaborator.Status();
  v210 = *(v215 - 8);
  __chkstk_darwin();
  v208 = &v182 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v209 = &v182 - v21;
  v229 = type metadata accessor for Playlist.Collaboration();
  v230 = *(v229 - 8);
  __chkstk_darwin();
  v211 = &v182 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v234 = sub_10010FC20(&qword_1011B4F38, &qword_100F05AA8);
  v235 = *(v234 - 8);
  __chkstk_darwin();
  v217 = &v182 - v23;
  v232 = type metadata accessor for Logger();
  v226 = *(v232 - 8);
  __chkstk_darwin();
  v218 = &v182 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v207 = &v182 - v25;
  __chkstk_darwin();
  v206 = &v182 - v26;
  __chkstk_darwin();
  v227 = &v182 - v27;
  v212 = sub_10010FC20(&qword_1011B48F8, &qword_100F052F8);
  __chkstk_darwin();
  v191 = &v182 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v221 = &v182 - v29;
  __chkstk_darwin();
  v31 = &v182 - v30;
  __chkstk_darwin();
  v33 = &v182 - v32;
  __chkstk_darwin();
  v236 = &v182 - v34;
  sub_10010FC20(&qword_1011B4F40, &qword_100F05AB0);
  __chkstk_darwin();
  v36 = &v182 - v35;
  sub_10010FC20(&qword_1011B4F48, &qword_100F05AB8);
  __chkstk_darwin();
  v219 = (&v182 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v39 = &v182 - v38;
  __chkstk_darwin();
  v41 = &v182 - v40;
  __chkstk_darwin();
  v43 = &v182 - v42;
  __chkstk_darwin();
  v237 = &v182 - v44;
  swift_beginAccess();
  v233 = a2;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v46 = *(Strong + OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model_autoupdatingResponse);

    if (v46)
    {
      v47 = dispatch thunk of MusicAutoupdatingResponse.isLoaded.getter();

      if (v47)
      {
        v188 = v4;
        sub_1000089F8(v220, v36, &qword_1011B4F40, &qword_100F05AB0);
        v48 = sub_10010FC20(&qword_1011B4F50, &qword_100F05AC0);
        v49 = *(v48 - 8);
        if ((*(v49 + 48))(v36, 1, v48) == 1)
        {
          sub_1000095E8(v36, &qword_1011B4F40, &qword_100F05AB0);
        }

        else
        {
          v50 = MusicLibrarySectionedResponse.sections.getter();
          (*(v49 + 8))(v36, v48);
          if (*(v50 + 16))
          {
            v51 = v234;
            (*(v235 + 16))(v237, v50 + ((*(v235 + 80) + 32) & ~*(v235 + 80)), v234);

            v52 = 0;
            v53 = v236;
            goto LABEL_10;
          }
        }

        v52 = 1;
        v53 = v236;
        v51 = v234;
LABEL_10:
        v54 = v235;
        v55 = v237;
        (*(v235 + 56))(v237, v52, 1, v51);
        sub_1000089F8(v55, v43, &qword_1011B4F48, &qword_100F05AB8);
        v56 = *(v54 + 48);
        v185 = v54 + 48;
        v184 = v56;
        if (v56(v43, 1, v51) == 1)
        {
          sub_1000095E8(v43, &qword_1011B4F48, &qword_100F05AB8);
          v57 = v230;
          (*(v230 + 56))(v53, 1, 1, v229);
        }

        else
        {
          swift_getKeyPath();
          MusicLibrarySection.subscript.getter();
          v53 = v236;

          (*(v54 + 8))(v43, v51);
          v57 = v230;
        }

        v58 = v227;
        v59 = Logger.collaboration.unsafeMutableAddressor();
        v60 = v226;
        v61 = *(v226 + 16);
        v186 = v59;
        v62 = v232;
        v220 = v226 + 16;
        v187 = v61;
        v61(v58);
        sub_1000089F8(v237, v41, &qword_1011B4F48, &qword_100F05AB8);
        sub_1000089F8(v53, v33, &qword_1011B48F8, &qword_100F052F8);
        v63 = Logger.logObject.getter();
        v183 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v63, v183))
        {
          v64 = swift_slowAlloc();
          v182 = swift_slowAlloc();
          v239 = v182;
          *v64 = 136446466;
          sub_1000089F8(v41, v39, &qword_1011B4F48, &qword_100F05AB8);
          v65 = String.init<A>(describing:)();
          v67 = v66;
          sub_1000095E8(v41, &qword_1011B4F48, &qword_100F05AB8);
          v68 = sub_100010744(v65, v67, &v239);

          *(v64 + 4) = v68;
          *(v64 + 12) = 2082;
          sub_1000089F8(v33, v31, &qword_1011B48F8, &qword_100F052F8);
          v69 = String.init<A>(describing:)();
          v71 = v70;
          sub_1000095E8(v33, &qword_1011B48F8, &qword_100F052F8);
          v72 = v69;
          v57 = v230;
          v73 = sub_100010744(v72, v71, &v239);

          *(v64 + 14) = v73;
          _os_log_impl(&_mh_execute_header, v63, v183, "    [Management] Did update collaborative playlist with:\n        playlist=%{public}s)\n        collaboration=%{public}s", v64, 0x16u);
          swift_arrayDestroy();

          v62 = v232;

          v74 = *(v60 + 8);
          v74(v227, v62);
        }

        else
        {

          sub_1000095E8(v33, &qword_1011B48F8, &qword_100F052F8);
          sub_1000095E8(v41, &qword_1011B4F48, &qword_100F05AB8);
          v74 = *(v60 + 8);
          v74(v58, v62);
        }

        v75 = v235;
        v76 = v229;
        v77 = v219;
        sub_1000089F8(v237, v219, &qword_1011B4F48, &qword_100F05AB8);
        v78 = v234;
        v79 = v184(v77, 1, v234);
        v80 = v222;
        v81 = v221;
        if (v79 == 1)
        {
          sub_1000095E8(v77, &qword_1011B4F48, &qword_100F05AB8);
LABEL_25:
          v97 = v218;
          v187(v218, v186, v62);
          v98 = Logger.logObject.getter();
          v99 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v98, v99))
          {
            v100 = swift_slowAlloc();
            *v100 = 0;
            _os_log_impl(&_mh_execute_header, v98, v99, "[Management] Dismissing management sheet", v100, 2u);
          }

          v74(v97, v62);
          swift_beginAccess();
          if (swift_weakLoadStrong())
          {
            swift_getKeyPath();
            swift_getKeyPath();
            v240[0] = 1;
            static Published.subscript.setter();
          }

LABEL_29:
          sub_1000095E8(v236, &qword_1011B48F8, &qword_100F052F8);
          sub_1000095E8(v237, &qword_1011B4F48, &qword_100F05AB8);
          return;
        }

        v82 = v77;
        v83 = v217;
        (*(v75 + 32))(v217, v82, v78);
        sub_1000089F8(v236, v81, &qword_1011B48F8, &qword_100F052F8);
        v227 = *(v57 + 48);
        if ((v227)(v81, 1, v76) == 1)
        {
          (*(v75 + 8))(v83, v78);
          sub_1000095E8(v81, &qword_1011B48F8, &qword_100F052F8);
          v62 = v232;
          goto LABEL_25;
        }

        v212 = v74;
        v84 = v211;
        (*(v57 + 32))(v211, v81, v76);
        Playlist.Collaboration.collaboratorStatus.getter();
        v85 = v210;
        v86 = v215;
        if ((*(v210 + 48))(v80, 1, v215) == 1)
        {
          (*(v57 + 8))(v84, v76);
          (*(v75 + 8))(v217, v234);
          sub_1000095E8(v80, &qword_1011B4918, &qword_100F05438);
LABEL_24:
          v62 = v232;
          v74 = v212;
          goto LABEL_25;
        }

        v87 = v209;
        (*(v85 + 32))(v209, v80, v86);
        v88 = v208;
        (*(v85 + 104))(v208, enum case for Playlist.Collaborator.Status.notJoined(_:), v86);
        sub_100B8C798(&unk_1011B4920, &type metadata accessor for Playlist.Collaborator.Status, &protocol conformance descriptor for Playlist.Collaborator.Status);
        v89 = v85;
        v90 = dispatch thunk of static Equatable.== infix(_:_:)();
        v91 = v215;
        v92 = v90;
        v94 = *(v89 + 8);
        v93 = v89 + 8;
        v95 = v88;
        v96 = v94;
        v94(v95, v215);
        if (v92)
        {
          v96(v87, v91);
          (*(v230 + 8))(v211, v76);
          (*(v75 + 8))(v217, v234);
          goto LABEL_24;
        }

        v210 = v93;
        swift_beginAccess();
        v101 = swift_weakLoadStrong();
        v102 = v230;
        if (!v101 || (swift_getKeyPath(), swift_getKeyPath(), static Published.subscript.getter(&v239), , , , v239 != 1))
        {
LABEL_47:
          swift_beginAccess();
          if (swift_weakLoadStrong())
          {
            v120 = v200;
            MusicLibrarySection.item.getter();
            swift_getKeyPath();
            swift_getKeyPath();
            v121 = v201;
            v122 = v202;
            (*(v201 + 16))(v199, v120, v202);
            static Published.subscript.setter();
            (*(v121 + 8))(v120, v122);
          }

          swift_beginAccess();
          v123 = swift_weakLoadStrong();
          v124 = v224;
          if (v123)
          {
            v125 = Playlist.Collaboration.isOpenInvitation.getter();
            swift_getKeyPath();
            swift_getKeyPath();
            LOBYTE(v239) = v125 & 1;
            static Published.subscript.setter();
          }

          v202 = v96;
          v126 = v204;
          MusicLibrarySection.items.getter();
          v127 = v205;
          v128 = v225;
          (*(v205 + 16))(v124, v126, v225);
          v129 = *(v203 + 36);
          v130 = sub_100020674(&qword_1011B4F58, &qword_1011B4F20, &qword_100F05A90, &protocol conformance descriptor for MusicItemCollection<A>);
          dispatch thunk of Collection.startIndex.getter();
          (*(v127 + 8))(v126, v128);
          swift_beginAccess();
          dispatch thunk of Collection.endIndex.getter();
          if (*&v129[v124] == v239)
          {
            v218 = _swiftEmptyArrayStorage;
            v222 = _swiftEmptyArrayStorage;
          }

          else
          {
            v145 = v214;
            v227 = (v214 + 16);
            v146 = (v214 + 32);
            v219 = (v214 + 8);
            v208 = (v214 + 56);
            v222 = _swiftEmptyArrayStorage;
            v218 = _swiftEmptyArrayStorage;
            v221 = v129;
            do
            {
              v152 = v130;
              v153 = dispatch thunk of Collection.subscript.read();
              v154 = *v227;
              v155 = v223;
              v156 = v188;
              (*v227)(v223);
              v153(&v239, 0);
              v130 = v152;
              dispatch thunk of Collection.formIndex(after:)();
              v157 = *v146;
              v158 = v231;
              (*v146)(v231, v155, v156);
              v159 = Playlist.Collaborator.isPending.getter();
              if (v159 == 2 || (v159 & 1) == 0)
              {
                v154(v228, v158, v156);
                v164 = v222;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v164 = sub_100BF9BAC(0, *(v164 + 2) + 1, 1, v164);
                }

                v166 = *(v164 + 2);
                v165 = *(v164 + 3);
                if (v166 >= v165 >> 1)
                {
                  v164 = sub_100BF9BAC((v165 > 1), v166 + 1, 1, v164);
                }

                *(v164 + 2) = v166 + 1;
                v167 = (*(v145 + 80) + 32) & ~*(v145 + 80);
                v222 = v164;
                v157(&v164[v167 + *(v145 + 72) * v166], v228, v156);
                if (swift_weakLoadStrong())
                {
                  swift_getKeyPath();
                  swift_getKeyPath();
                  v147 = static Published.subscript.modify();
                  v148 = v216;
                  v149 = v231;
                  sub_100B8A3A0(v231, v216);
                  v150 = v148;
                  v145 = v214;
                  sub_1000095E8(v150, &unk_1011B4540, &qword_100F010B0);
                  v147(&v239, 0);
                  v151 = v149;
                  v130 = v152;

                  (*v219)(v151, v188);
                }

                else
                {
                  (*v219)(v231, v156);
                  v168 = v216;
                  (*v208)(v216, 1, 1, v156);
                  sub_1000095E8(v168, &unk_1011B4540, &qword_100F010B0);
                }
              }

              else
              {
                v154(v213, v158, v156);
                v160 = v218;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v160 = sub_100BF9BAC(0, *(v160 + 2) + 1, 1, v160);
                }

                v218 = v160;
                v162 = *(v160 + 2);
                v161 = *(v160 + 3);
                if (v162 >= v161 >> 1)
                {
                  v218 = sub_100BF9BAC((v161 > 1), v162 + 1, 1, v218);
                }

                (*(v145 + 8))(v158, v156);
                v163 = v218;
                *(v218 + 2) = v162 + 1;
                v157(&v163[((*(v145 + 80) + 32) & ~*(v145 + 80)) + *(v145 + 72) * v162], v213, v156);
              }

              v124 = v224;
              dispatch thunk of Collection.endIndex.getter();
            }

            while (*&v221[v124] != v239);
          }

          sub_1000095E8(v124, &qword_1011B4F28, &qword_100F05A98);
          swift_beginAccess();
          v131 = swift_weakLoadStrong();
          v132 = v222;
          if (v131)
          {
            swift_getKeyPath();
            swift_getKeyPath();
            v238[1] = v132;

            static Published.subscript.setter();
          }

          swift_beginAccess();
          v133 = swift_weakLoadStrong();
          v134 = v206;
          v135 = v218;
          if (v133)
          {
            swift_getKeyPath();
            swift_getKeyPath();
            v238[0] = v135;

            static Published.subscript.setter();
          }

          v136 = v232;
          v187(v134, v186, v232);

          v137 = Logger.logObject.getter();
          v138 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v137, v138))
          {
            v139 = swift_slowAlloc();
            v140 = swift_slowAlloc();
            v238[0] = v140;
            *v139 = 136315138;
            v141 = Array.description.getter();
            v143 = v142;

            v144 = sub_100010744(v141, v143, v238);

            *(v139 + 4) = v144;
            _os_log_impl(&_mh_execute_header, v137, v138, "[Management] pendingCollaborators=%s", v139, 0xCu);
            sub_10000959C(v140);
          }

          else
          {
          }

          v169 = v134;
          v170 = v212;
          v212(v169, v136);
          v171 = v207;
          v187(v207, v186, v136);

          v172 = Logger.logObject.getter();
          v173 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v172, v173))
          {
            v174 = v171;
            v175 = swift_slowAlloc();
            v176 = swift_slowAlloc();
            v238[0] = v176;
            *v175 = 136315138;
            v177 = Array.description.getter();
            v178 = v170;
            v180 = v179;

            v181 = sub_100010744(v177, v180, v238);

            *(v175 + 4) = v181;
            _os_log_impl(&_mh_execute_header, v172, v173, "[Management] activeCollaborators=%s", v175, 0xCu);
            sub_10000959C(v176);

            v178(v174, v232);
          }

          else
          {

            v170(v171, v136);
          }

          (v202)(v209, v215);
          (*(v230 + 8))(v211, v229);
          (*(v235 + 8))(v217, v234);
          goto LABEL_29;
        }

        swift_beginAccess();
        v103 = swift_weakLoadStrong();
        v104 = v194;
        v105 = v197;
        if (v103)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          v106 = v192;
          static Published.subscript.getter(v192);

          v107 = v191;
          Playlist.collaboration.getter();
          (*(v201 + 8))(v106, v202);
          if ((v227)(v107, 1, v76) != 1)
          {
            v108 = v198;
            Playlist.Collaboration.invitationExpirationDate.getter();
            (*(v102 + 8))(v107, v76);
            v109 = v196;
LABEL_38:
            Playlist.Collaboration.invitationExpirationDate.getter();
            v110 = *(v193 + 48);
            v111 = v195;
            sub_1000089F8(v108, v195, &qword_1011B4900, &qword_100F05300);
            sub_1000089F8(v105, v111 + v110, &qword_1011B4900, &qword_100F05300);
            v112 = v104;
            v113 = *(v104 + 48);
            if (v113(v111, 1, v109) == 1)
            {
              sub_1000095E8(v105, &qword_1011B4900, &qword_100F05300);
              sub_1000095E8(v108, &qword_1011B4900, &qword_100F05300);
              if (v113(v111 + v110, 1, v109) == 1)
              {
                sub_1000095E8(v111, &qword_1011B4900, &qword_100F05300);
                goto LABEL_47;
              }
            }

            else
            {
              v114 = v190;
              sub_1000089F8(v111, v190, &qword_1011B4900, &qword_100F05300);
              if (v113(v111 + v110, 1, v109) != 1)
              {
                v115 = v111 + v110;
                v116 = v189;
                (*(v112 + 32))(v189, v115, v109);
                sub_100B8C798(&qword_1011B4F60, &type metadata accessor for Date, &protocol conformance descriptor for Date);
                v117 = v114;
                v118 = dispatch thunk of static Equatable.== infix(_:_:)();
                v119 = *(v112 + 8);
                v119(v116, v109);
                sub_1000095E8(v197, &qword_1011B4900, &qword_100F05300);
                sub_1000095E8(v198, &qword_1011B4900, &qword_100F05300);
                v119(v117, v109);
                sub_1000095E8(v111, &qword_1011B4900, &qword_100F05300);
                if (v118)
                {
                  goto LABEL_47;
                }

LABEL_44:
                swift_beginAccess();
                if (swift_weakLoadStrong())
                {
                  swift_getKeyPath();
                  swift_getKeyPath();
                  LOBYTE(v239) = 0;
                  static Published.subscript.setter();
                }

                goto LABEL_47;
              }

              sub_1000095E8(v197, &qword_1011B4900, &qword_100F05300);
              sub_1000095E8(v198, &qword_1011B4900, &qword_100F05300);
              (*(v112 + 8))(v114, v109);
            }

            sub_1000095E8(v111, &qword_1011B4F30, &qword_100F05AA0);
            goto LABEL_44;
          }

          sub_1000095E8(v107, &qword_1011B48F8, &qword_100F052F8);
        }

        v108 = v198;
        v109 = v196;
        (*(v104 + 56))(v198, 1, 1, v196);
        goto LABEL_38;
      }
    }
  }
}

double sub_100B6FD74@<D0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(a1);

  return result;
}

double sub_100B6FDEC@<D0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(a2);

  return result;
}

uint64_t sub_100B6FE68(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for Playlist();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin();
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3, v7);
  swift_getKeyPath();
  swift_getKeyPath();
  (v10)(v6, v9, v3);

  static Published.subscript.setter();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_100B70028()
{
  v0 = type metadata accessor for Playlist.Collaborator.Status();
  v29 = *(v0 - 8);
  __chkstk_darwin();
  v27 = &v26 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_10010FC20(&qword_1011B4910, &qword_100F05430);
  __chkstk_darwin();
  v3 = &v26 - v2;
  v4 = type metadata accessor for Playlist();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = (&v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10010FC20(&qword_1011B48F8, &qword_100F052F8);
  __chkstk_darwin();
  v9 = &v26 - v8;
  sub_10010FC20(&qword_1011B4918, &qword_100F05438);
  __chkstk_darwin();
  v28 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v26 - v11;
  __chkstk_darwin();
  v14 = &v26 - v13;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v7);

  Playlist.collaboration.getter();
  (*(v5 + 8))(v7, v4);
  v15 = type metadata accessor for Playlist.Collaboration();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v9, 1, v15) == 1)
  {
    sub_1000095E8(v9, &qword_1011B48F8, &qword_100F052F8);
    v17 = v29;
    (*(v29 + 56))(v14, 1, 1, v0);
  }

  else
  {
    Playlist.Collaboration.collaboratorStatus.getter();
    (*(v16 + 8))(v9, v15);
    v17 = v29;
  }

  (*(v17 + 104))(v12, enum case for Playlist.Collaborator.Status.pending(_:), v0);
  (*(v17 + 56))(v12, 0, 1, v0);
  v18 = *(v30 + 48);
  sub_1000089F8(v14, v3, &qword_1011B4918, &qword_100F05438);
  sub_1000089F8(v12, &v3[v18], &qword_1011B4918, &qword_100F05438);
  v19 = *(v17 + 48);
  if (v19(v3, 1, v0) != 1)
  {
    v21 = v28;
    sub_1000089F8(v3, v28, &qword_1011B4918, &qword_100F05438);
    if (v19(&v3[v18], 1, v0) != 1)
    {
      v22 = v27;
      (*(v17 + 32))(v27, &v3[v18], v0);
      sub_100B8C798(&unk_1011B4920, &type metadata accessor for Playlist.Collaborator.Status, &protocol conformance descriptor for Playlist.Collaborator.Status);
      v23 = v21;
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      v24 = *(v17 + 8);
      v24(v22, v0);
      sub_1000095E8(v12, &qword_1011B4918, &qword_100F05438);
      sub_1000095E8(v14, &qword_1011B4918, &qword_100F05438);
      v24(v23, v0);
      sub_1000095E8(v3, &qword_1011B4918, &qword_100F05438);
      return v20 & 1;
    }

    sub_1000095E8(v12, &qword_1011B4918, &qword_100F05438);
    sub_1000095E8(v14, &qword_1011B4918, &qword_100F05438);
    (*(v17 + 8))(v21, v0);
    goto LABEL_9;
  }

  sub_1000095E8(v12, &qword_1011B4918, &qword_100F05438);
  sub_1000095E8(v14, &qword_1011B4918, &qword_100F05438);
  if (v19(&v3[v18], 1, v0) != 1)
  {
LABEL_9:
    sub_1000095E8(v3, &qword_1011B4910, &qword_100F05430);
    v20 = 0;
    return v20 & 1;
  }

  sub_1000095E8(v3, &qword_1011B4918, &qword_100F05438);
  v20 = 1;
  return v20 & 1;
}

uint64_t sub_100B70664()
{
  v0 = type metadata accessor for Playlist();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = (&v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v7);

  if (v7 == 1 && (sub_100B70D84() & 1) == 0)
  {
    v4 = 1;
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(v3);

    v4 = Playlist.isOwner.getter();
    (*(v1 + 8))(v3, v0);
  }

  return v4 & 1;
}

uint64_t sub_100B707DC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  if (v3 == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v3);

    v0 = v3;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v3);

    v1 = v3;
    v3 = v0;
    sub_100B13C20(v1);
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v3);
  }

  return v3;
}

uint64_t sub_100B70940()
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  v0 = type metadata accessor for String.LocalizationValue();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v16 - v4;
  type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v17);

  v6 = *(v17 + 16);

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v17);

  v7 = *(v17 + 16);

  if (v7 == 1)
  {
    if (!v6)
    {
      return 0;
    }

    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v8._countAndFlagsBits = 0;
    v8._object = 0xE000000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v8);
    v17 = v6;
    String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
    v9 = 0xD000000000000012;
    v10 = 0x8000000100E65FA0;
  }

  else
  {
    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v11._countAndFlagsBits = 0;
    v11._object = 0xE000000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v11);
    v17 = v7;
    String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
    if (v6)
    {
      v12._countAndFlagsBits = 0x2064656E696F6A20;
      v12._object = 0xAC00000020A280E2;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v12);
      v17 = v6;
      String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
      v9 = 0x676E69646E657020;
      v10 = 0xE800000000000000;
    }

    else
    {
      v10 = 0x8000000100E65F80;
      v9 = 0xD000000000000011;
    }
  }

  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(*&v9);
  String.LocalizationValue.init(stringInterpolation:)();
  (*(v1 + 16))(v3, v5, v0);
  if (qword_1011B0430 != -1)
  {
    swift_once();
  }

  v14 = qword_10121B340;
  static Locale.current.getter();
  v13 = String.init(localized:table:bundle:locale:comment:)();
  (*(v1 + 8))(v5, v0);
  return v13;
}

uint64_t sub_100B70D84()
{
  v0 = type metadata accessor for Playlist();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = (&v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10010FC20(&qword_1011B48F8, &qword_100F052F8);
  __chkstk_darwin();
  v5 = &v19 - v4;
  sub_10010FC20(&qword_1011B4900, &qword_100F05300);
  __chkstk_darwin();
  v7 = &v19 - v6;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v20 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v19 = &v19 - v11;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v3);

  Playlist.collaboration.getter();
  (*(v1 + 8))(v3, v0);
  v12 = type metadata accessor for Playlist.Collaboration();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v5, 1, v12) == 1)
  {
    sub_1000095E8(v5, &qword_1011B48F8, &qword_100F052F8);
    (*(v9 + 56))(v7, 1, 1, v8);
  }

  else
  {
    Playlist.Collaboration.invitationExpirationDate.getter();
    (*(v13 + 8))(v5, v12);
    if ((*(v9 + 48))(v7, 1, v8) != 1)
    {
      v15 = v19;
      (*(v9 + 32))(v19, v7, v8);
      v16 = v20;
      Date.init()();
      v14 = static Date.> infix(_:_:)();
      v17 = *(v9 + 8);
      v17(v16, v8);
      v17(v15, v8);
      return v14 & 1;
    }
  }

  sub_1000095E8(v7, &qword_1011B4900, &qword_100F05300);
  v14 = 1;
  return v14 & 1;
}

uint64_t sub_100B71154()
{
  v1 = v0;
  type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin();
  v64 = &v62 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Calendar();
  v73 = *(v3 - 8);
  v74 = v3;
  __chkstk_darwin();
  v72 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DateComponents();
  v76 = *(v5 - 8);
  v77 = v5;
  __chkstk_darwin();
  v75 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Locale();
  __chkstk_darwin();
  v67 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for String.LocalizationValue();
  v69 = *(v8 - 8);
  v70 = v8;
  __chkstk_darwin();
  v66 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v68 = &v62 - v10;
  v11 = type metadata accessor for Playlist();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v63 = (&v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v65 = (&v62 - v14);
  __chkstk_darwin();
  v16 = (&v62 - v15);
  sub_10010FC20(&qword_1011B48F8, &qword_100F052F8);
  __chkstk_darwin();
  v18 = &v62 - v17;
  sub_10010FC20(&qword_1011B4900, &qword_100F05300);
  __chkstk_darwin();
  v20 = &v62 - v19;
  v21 = type metadata accessor for Date();
  v22 = *(v21 - 8);
  __chkstk_darwin();
  v71 = &v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v80 = &v62 - v24;
  swift_getKeyPath();
  swift_getKeyPath();
  v79 = v1;
  static Published.subscript.getter(v16);

  Playlist.collaboration.getter();
  v25 = *(v12 + 8);
  v78 = v11;
  v25(v16, v11);
  v26 = type metadata accessor for Playlist.Collaboration();
  v27 = *(v26 - 8);
  if ((*(v27 + 48))(v18, 1, v26) == 1)
  {
    sub_1000095E8(v18, &qword_1011B48F8, &qword_100F052F8);
    (*(v22 + 56))(v20, 1, 1, v21);
LABEL_4:
    sub_1000095E8(v20, &qword_1011B4900, &qword_100F05300);
    return 0;
  }

  Playlist.Collaboration.invitationExpirationDate.getter();
  (*(v27 + 8))(v18, v26);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    goto LABEL_4;
  }

  v29 = *(v22 + 32);
  v62 = v21;
  v29(v80, v20, v21);
  v30 = v22;
  if (sub_100B70D84() & 1) != 0 && (swift_getKeyPath(), swift_getKeyPath(), v31 = v65, static Published.subscript.getter(v65), , , v32 = Playlist.isOwner.getter(), v25(v31, v78), v32 != 2) && (v32)
  {
    v33 = v68;
    String.LocalizationValue.init(stringLiteral:)();
    v35 = v69;
    v34 = v70;
    (*(v69 + 16))(v66, v33, v70);
    if (qword_1011B0430 != -1)
    {
      swift_once();
    }

    v36 = qword_10121B340;
    static Locale.current.getter();
    v37 = String.init(localized:table:bundle:locale:comment:)();
    (*(v35 + 8))(v33, v34);
    (*(v30 + 8))(v80, v62);
  }

  else
  {
    v38 = v72;
    static Calendar.autoupdatingCurrent.getter();
    sub_10010FC20(&qword_1011B4908, &qword_100F05308);
    v39 = type metadata accessor for Calendar.Component();
    v40 = *(v39 - 8);
    v41 = (*(v40 + 80) + 32) & ~*(v40 + 80);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_100EBC6B0;
    v43.n128_f64[0] = (*(v40 + 104))(v42 + v41, enum case for Calendar.Component.day(_:), v39);
    sub_100B0EFA8(v42, v43);
    swift_setDeallocating();
    (*(v40 + 8))(v42 + v41, v39);
    swift_deallocClassInstance();
    v44 = v71;
    Date.init()();
    v45 = v75;
    v46 = v80;
    Calendar.dateComponents(_:from:to:)();

    v47 = *(v30 + 8);
    v48 = v62;
    v47(v44, v62);
    (*(v73 + 8))(v38, v74);
    v49 = DateComponents.day.getter();
    if (v50)
    {
      (*(v76 + 8))(v45, v77);
      v47(v46, v48);
      return 0;
    }

    v51 = v49;
    swift_getKeyPath();
    swift_getKeyPath();
    v52 = v63;
    static Published.subscript.getter(v63);

    v53 = Playlist.isOwner.getter();
    v25(v52, v78);
    if (v53 == 2 || (v53 & 1) == 0)
    {
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v57._object = 0x8000000100E65E80;
      v57._countAndFlagsBits = 0xD000000000000010;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v57);
      v81 = v51;
      String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
      v55 = 0x2E29732879616420;
      v56 = 0xE800000000000000;
    }

    else
    {
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v54._object = 0x8000000100E65E80;
      v54._countAndFlagsBits = 0xD000000000000010;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v54);
      v81 = v51;
      String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
      v55 = 0xD00000000000006CLL;
      v56 = 0x8000000100E65EA0;
    }

    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(*&v55);
    v58 = v68;
    String.LocalizationValue.init(stringInterpolation:)();
    v60 = v69;
    v59 = v70;
    (*(v69 + 16))(v66, v58, v70);
    if (qword_1011B0430 != -1)
    {
      swift_once();
    }

    v61 = qword_10121B340;
    static Locale.current.getter();
    v37 = String.init(localized:table:bundle:locale:comment:)();
    (*(v60 + 8))(v58, v59);
    (*(v76 + 8))(v45, v77);
    v47(v46, v62);
  }

  return v37;
}

uint64_t sub_100B71CC8@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Playlist();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = (&v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10010FC20(&qword_1011B48F8, &qword_100F052F8);
  __chkstk_darwin();
  v7 = &v14 - v6;
  if (sub_100B70D84())
  {
    v8 = type metadata accessor for URL();
    v9 = *(*(v8 - 8) + 56);

    return v9(a1, 1, 1, v8);
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(v5);

    Playlist.collaboration.getter();
    (*(v3 + 8))(v5, v2);
    v11 = type metadata accessor for Playlist.Collaboration();
    v12 = *(v11 - 8);
    if ((*(v12 + 48))(v7, 1, v11) == 1)
    {
      sub_1000095E8(v7, &qword_1011B48F8, &qword_100F052F8);
      v13 = type metadata accessor for URL();
      return (*(*(v13 - 8) + 56))(a1, 1, 1, v13);
    }

    else
    {
      Playlist.Collaboration.invitationURL.getter();
      return (*(v12 + 8))(v7, v11);
    }
  }
}

uint64_t sub_100B71F7C@<X0>(uint64_t a1@<X8>)
{
  sub_10010FC20(&qword_1011B3D28, &qword_100F047D0);
  __chkstk_darwin();
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v11[-v5];
  v7 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model____lazy_storage___artworkViewModel;
  swift_beginAccess();
  sub_1000089F8(v1 + v7, v6, &qword_1011B3D28, &qword_100F047D0);
  v8 = sub_10010FC20(&qword_1011B5930, &qword_100EFDE70);
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    return sub_10003D17C(v6, a1, &qword_1011B5930, &qword_100EFDE70);
  }

  sub_1000095E8(v6, &qword_1011B3D28, &qword_100F047D0);
  sub_100B7218C(a1);
  sub_1000089F8(a1, v4, &qword_1011B5930, &qword_100EFDE70);
  (*(v9 + 56))(v4, 0, 1, v8);
  swift_beginAccess();
  sub_10006B010(v4, v1 + v7, &qword_1011B3D28, &qword_100F047D0);
  return swift_endAccess();
}

uint64_t sub_100B7218C@<X0>(uint64_t a2@<X8>)
{
  v19 = a2;
  sub_10010FC20(&unk_1011B55F0, &unk_100EFFDC0);
  __chkstk_darwin();
  v3 = &v18 - v2;
  v4 = type metadata accessor for Playlist();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = (&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for Artwork();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v7);

  Playlist.artwork.getter();
  (*(v5 + 8))(v7, v4);
  if ((*(v9 + 48))(v3, 1, v8) == 1)
  {
    sub_1000095E8(v3, &unk_1011B55F0, &unk_100EFFDC0);
    v12 = type metadata accessor for ArtworkImage.ViewModel(0);
    return (*(*(v12 - 8) + 56))(v19, 1, 1, v12);
  }

  else
  {
    (*(v9 + 32))(v11, v3, v8);
    v14 = v19;
    (*(v9 + 16))(v19, v11, v8);
    v15 = type metadata accessor for ArtworkImage.ViewModel(0);
    v16 = *(v15 + 20);
    static Artwork.CropStyle.boundedBox.getter();
    (*(v9 + 8))(v11, v8);
    v17 = type metadata accessor for Artwork.CropStyle();
    (*(*(v17 - 8) + 56))(v14 + v16, 0, 1, v17);
    return (*(*(v15 - 8) + 56))(v14, 0, 1, v15);
  }
}

uint64_t sub_100B724E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 80) = a5;
  *(v5 + 16) = a1;
  *(v5 + 24) = a4;
  v6 = type metadata accessor for Playlist();
  *(v5 + 32) = v6;
  *(v5 + 40) = *(v6 - 8);
  *(v5 + 48) = swift_task_alloc();

  return _swift_task_switch(sub_100B725A4, 0, 0);
}

uint64_t sub_100B725A4()
{
  v1 = *(v0 + 48);
  *(v0 + 56) = *(*(v0 + 24) + 16);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter(v1);

  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_100B726AC;
  v3 = *(v0 + 48);
  v4 = *(v0 + 80);

  return Collaboration.Manager.updateShareOption(_:for:)(v4, v3);
}

uint64_t sub_100B726AC()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  v3 = v2[6];
  v4 = v2[5];
  v5 = v2[4];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v6 = sub_100B917C8;
  }

  else
  {
    (*(v4 + 8))(v2[6], v2[4]);

    v6 = sub_100B72868;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100B72868()
{
  **(v0 + 16) = *(v0 + 72) != 0;

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100B728DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for Playlist();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  v4[6] = swift_task_alloc();

  return _swift_task_switch(sub_100B729A8, 0, 0);
}

uint64_t sub_100B729A8()
{
  v1 = v0[5];
  v0[7] = *(v0[2] + 16);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter(v1);

  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = sub_100B72AAC;
  v4 = v0[5];
  v3 = v0[6];

  return Collaboration.Manager.end(_:)(v3, v4);
}

uint64_t sub_100B72AAC()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    (*(v2[4] + 8))(v2[5], v2[3]);

    v3 = sub_100B72CA8;
  }

  else
  {
    v5 = v2[5];
    v4 = v2[6];
    v8 = v2 + 3;
    v6 = v2[3];
    v7 = v8[1];

    v9 = *(v7 + 8);
    v9(v5, v6);
    v9(v4, v6);
    v3 = sub_100B72C40;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100B72C40()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100B72CA8()
{
  v0[10] = *(v0[2] + 16);
  type metadata accessor for MainActor();

  v0[11] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100B72D50, v2, v1);
}

uint64_t sub_100B72D50()
{
  v1 = *(v0 + 72);

  Collaboration.Manager.handleError(_:)(v1);

  return _swift_task_switch(sub_100B72DCC, 0, 0);
}

uint64_t sub_100B72DCC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100B72E3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for Playlist();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  v6 = type metadata accessor for URL();
  v4[6] = v6;
  v4[7] = *(v6 - 8);
  v4[8] = swift_task_alloc();

  return _swift_task_switch(sub_100B72F58, 0, 0);
}

uint64_t sub_100B72F58()
{
  v1 = v0[5];
  v0[9] = *(v0[2] + 16);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter(v1);

  v2 = swift_task_alloc();
  v0[10] = v2;
  *v2 = v0;
  v2[1] = sub_100B73060;
  v3 = v0[8];
  v4 = v0[5];

  return Collaboration.Manager.resetInvitationURL(_:)(v3, v4);
}

uint64_t sub_100B73060()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    (*(v2[4] + 8))(v2[5], v2[3]);

    v3 = sub_100B73270;
  }

  else
  {
    v5 = v2[7];
    v4 = v2[8];
    v7 = v2[5];
    v6 = v2[6];
    v10 = v2 + 3;
    v8 = v2[3];
    v9 = v10[1];

    (*(v9 + 8))(v7, v8);
    (*(v5 + 8))(v4, v6);
    v3 = sub_100B73204;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100B73204()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100B73270()
{
  v1 = *(v0 + 16);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 112) = 0;

  static Published.subscript.setter();
  *(v0 + 96) = *(v1 + 16);
  type metadata accessor for MainActor();

  *(v0 + 104) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100B73364, v3, v2);
}

uint64_t sub_100B73364()
{
  v1 = *(v0 + 88);

  Collaboration.Manager.handleError(_:)(v1);

  return _swift_task_switch(sub_100B733E0, 0, 0);
}

uint64_t sub_100B733E0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100B73454(uint64_t a1)
{
  sub_10010FC20(&qword_1011B62E0, &qword_100F06260);
  __chkstk_darwin();
  v3 = v17 - v2;
  sub_10010FC20(&unk_1011B4540, &qword_100F010B0);
  __chkstk_darwin();
  v5 = v17 - v4;
  v6 = type metadata accessor for Playlist.Collaborator();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = v17 - v10;
  sub_1000089F8(a1, v5, &unk_1011B4540, &qword_100F010B0);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1000095E8(v5, &unk_1011B4540, &qword_100F010B0);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v12 = *(v7 + 32);
    v12(v11, v5, v6);
    v13 = type metadata accessor for TaskPriority();
    (*(*(v13 - 8) + 56))(v3, 1, 1, v13);
    (*(v7 + 16))(v9, v11, v6);
    v14 = (*(v7 + 80) + 40) & ~*(v7 + 80);
    v15 = swift_allocObject();
    *(v15 + 2) = 0;
    *(v15 + 3) = 0;
    *(v15 + 4) = v17[1];
    v12(&v15[v14], v9, v6);

    sub_100B284E0(0, 0, v3, &unk_100F052F0, v15);

    return (*(v7 + 8))(v11, v6);
  }

  return result;
}

uint64_t sub_100B73798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for Playlist();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v5[7] = swift_task_alloc();

  return _swift_task_switch(sub_100B73864, 0, 0);
}

uint64_t sub_100B73864()
{
  v1 = v0[6];
  v0[8] = *(v0[2] + 16);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter(v1);

  v2 = swift_task_alloc();
  v0[9] = v2;
  *v2 = v0;
  v2[1] = sub_100B7396C;
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[3];

  return Collaboration.Manager.remove(collaborator:in:)(v3, v5, v4);
}

uint64_t sub_100B7396C()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    (*(v2[5] + 8))(v2[6], v2[4]);

    v3 = sub_100B73B68;
  }

  else
  {
    v5 = v2[6];
    v4 = v2[7];
    v8 = v2 + 4;
    v6 = v2[4];
    v7 = v8[1];

    v9 = *(v7 + 8);
    v9(v5, v6);
    v9(v4, v6);
    v3 = sub_100B73B00;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100B73B00()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100B73B68()
{
  v0[11] = *(v0[2] + 16);
  type metadata accessor for MainActor();

  v0[12] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100B73C10, v2, v1);
}

uint64_t sub_100B73C10()
{
  v1 = *(v0 + 80);

  Collaboration.Manager.handleError(_:)(v1);

  return _swift_task_switch(sub_100B73C8C, 0, 0);
}

uint64_t sub_100B73C8C()
{

  v1 = *(v0 + 8);

  return v1();
}

double sub_100B73CFC(uint64_t a1, int a2)
{
  v19 = a1;
  v21 = a2;
  sub_10010FC20(&qword_1011B62E0, &qword_100F06260);
  __chkstk_darwin();
  v20 = &v18 - v3;
  v4 = type metadata accessor for Playlist.Collaborator();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin();
  v10 = &v18 - v9;
  v11 = *(v5 + 16);
  v11(v7, a1, v4, v8);
  swift_getKeyPath();
  swift_getKeyPath();
  v12 = static Published.subscript.modify();
  sub_100B8B200(v10, v7);
  (*(v5 + 8))(v10, v4);
  v12(v22, 0);

  v13 = type metadata accessor for TaskPriority();
  v14 = v20;
  (*(*(v13 - 8) + 56))(v20, 1, 1, v13);
  (v11)(v10, v19, v4);
  v15 = (*(v5 + 80) + 41) & ~*(v5 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  *(v16 + 32) = v18;
  *(v16 + 40) = v21 & 1;
  (*(v5 + 32))(v16 + v15, v10, v4);

  sub_100B284E0(0, 0, v14, &unk_100F052C8, v16);

  return result;
}

uint64_t sub_100B73FD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 136) = a5;
  *(v6 + 16) = a4;
  *(v6 + 24) = a6;
  v7 = type metadata accessor for Playlist.Collaborator();
  *(v6 + 32) = v7;
  v8 = *(v7 - 8);
  *(v6 + 40) = v8;
  *(v6 + 48) = *(v8 + 64);
  *(v6 + 56) = swift_task_alloc();
  sub_10010FC20(&qword_1011B62E0, &qword_100F06260);
  *(v6 + 64) = swift_task_alloc();
  v9 = type metadata accessor for Playlist();
  *(v6 + 72) = v9;
  *(v6 + 80) = *(v9 - 8);
  *(v6 + 88) = swift_task_alloc();

  return _swift_task_switch(sub_100B74130, 0, 0);
}

uint64_t sub_100B74130()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 136);
  *(v0 + 96) = *(*(v0 + 16) + 16);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter(v1);

  v3 = swift_task_alloc();
  *(v0 + 104) = v3;
  *v3 = v0;
  v3[1] = sub_100B74240;
  v4 = *(v0 + 88);
  v5 = *(v0 + 24);

  return Collaboration.Manager.moderate(_:collaborator:in:)(v2 & 1, v5, v4);
}

uint64_t sub_100B74240()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 112) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {

    return _swift_task_switch(sub_100B7442C, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_100B7442C()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[2];
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v1, 1, 1, v7);
  (*(v3 + 16))(v2, v4, v5);
  type metadata accessor for MainActor();

  v8 = static MainActor.shared.getter();
  v9 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v10 = swift_allocObject();
  *(v10 + 2) = v8;
  *(v10 + 3) = &protocol witness table for MainActor;
  *(v10 + 4) = v6;
  (*(v3 + 32))(&v10[v9], v2, v5);
  sub_100B28AF4(0, 0, v1, &unk_100F052D8, v10);

  v0[15] = *(v6 + 16);

  v0[16] = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100B745EC, v12, v11);
}

uint64_t sub_100B745EC()
{
  v1 = *(v0 + 112);

  Collaboration.Manager.handleError(_:)(v1);

  return _swift_task_switch(sub_100B74668, 0, 0);
}

uint64_t sub_100B74668()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100B746E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[6] = a1;
  type metadata accessor for MainActor();
  v5[9] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100B74780, v7, v6);
}

uint64_t sub_100B74780()
{
  v1 = v0[8];
  v2 = v0[6];

  swift_getKeyPath();
  swift_getKeyPath();
  v3 = static Published.subscript.modify();
  sub_100B8A3A0(v1, v2);
  v3(v0 + 2, 0);

  v4 = v0[1];

  return v4();
}

uint64_t Collaboration.Management.Model.deinit()
{

  v1 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__pendingCollaborators;
  v2 = sub_10010FC20(&qword_1011B3CC8, &qword_100F047B0);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__activeCollaborators, v2);
  v4 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__transientCollaborators;
  v5 = sub_10010FC20(&qword_1011B3CE0, &qword_100F047B8);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__playlist;
  v7 = sub_10010FC20(&qword_1011B3CF0, &unk_100F047C0);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__isOpen;
  v9 = sub_10010FC20(&qword_1011B3D00, &unk_100F0A200);
  v10 = *(*(v9 - 8) + 8);
  v10(v0 + v8, v9);
  v10(v0 + OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__isResetingURL, v9);
  v10(v0 + OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__shouldDismiss, v9);
  v10(v0 + OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__hasNetworkConnectivity, v9);
  sub_1000095E8(v0 + OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model____lazy_storage___artworkViewModel, &qword_1011B3D28, &qword_100F047D0);

  return v0;
}

uint64_t Collaboration.Management.Model.__deallocating_deinit()
{
  Collaboration.Management.Model.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_100B74AEC@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for Collaboration.Management.Model(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

uint64_t Collaboration.Management.View.init(model:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for Collaboration.Management.View(0);
  v3 = v2[5];
  *(a1 + v3) = swift_getKeyPath();
  sub_10010FC20(&unk_1011B0890, &qword_100F06E90);
  swift_storeEnumTagMultiPayload();
  v4 = v2[6];
  *(a1 + v4) = swift_getKeyPath();
  sub_10010FC20(&unk_1011B3D50, &qword_100EFDEE0);
  swift_storeEnumTagMultiPayload();
  v5 = v2[7];
  *(a1 + v5) = swift_getKeyPath();
  sub_10010FC20(&unk_1011B08A0, &qword_100EFDF18);
  swift_storeEnumTagMultiPayload();
  v6 = v2[8];
  sub_10010FC20(&qword_1011B3D60, &qword_100F04880);
  State.init(wrappedValue:)();
  *(a1 + v6) = v13;
  v7 = a1 + v2[9];
  State.init(wrappedValue:)();
  *v7 = v13;
  *(v7 + 1) = *(&v13 + 1);
  v8 = a1 + v2[10];
  State.init(wrappedValue:)();
  *v8 = v13;
  *(v8 + 1) = *(&v13 + 1);
  v9 = a1 + v2[11];
  State.init(wrappedValue:)();
  *v9 = v13;
  *(v9 + 1) = *(&v13 + 1);
  v10 = a1 + v2[12];
  State.init(wrappedValue:)();
  *v10 = v13;
  *(v10 + 1) = *(&v13 + 1);
  type metadata accessor for Collaboration.Management.Model(0);
  sub_100B8C798(&qword_1011B3D68, type metadata accessor for Collaboration.Management.Model, &protocol conformance descriptor for Collaboration.Management.Model);
  result = ObservedObject.init(wrappedValue:)();
  *a1 = result;
  a1[1] = v12;
  return result;
}

uint64_t property wrapper backing initializer of Collaboration.Management.View.shareSheet(uint64_t a1)
{
  sub_10010FC20(&qword_1011B3D60, &qword_100F04880);
  State.init(wrappedValue:)();
  return v2;
}

uint64_t property wrapper backing initializer of Collaboration.Management.View.viewModel()
{
  type metadata accessor for Collaboration.Management.Model(0);
  sub_100B8C798(&qword_1011B3D68, type metadata accessor for Collaboration.Management.Model, &protocol conformance descriptor for Collaboration.Management.Model);

  return ObservedObject.init(wrappedValue:)();
}

uint64_t Collaboration.Management.View.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v25 = a1;
  v22 = *(type metadata accessor for Collaboration.Management.View(0) - 8);
  v3 = *(v22 + 64);
  __chkstk_darwin();
  v4 = sub_10010FC20(&qword_1011B3D70, &qword_100F04888);
  v5 = *(v4 - 8);
  v23 = v4;
  v24 = v5;
  __chkstk_darwin();
  v7 = v21 - v6;
  v26 = v2;
  v21[1] = sub_10010FC20(&qword_1011B3D78, &qword_100F04890);
  v8 = sub_1001109D0(&qword_1011B3D80, &qword_100F04898);
  v9 = sub_1001109D0(&qword_1011B3D88, &qword_100F048A0);
  v10 = sub_1001109D0(&qword_1011B3D90, &qword_100F048A8);
  v11 = type metadata accessor for InsetGroupedListStyle();
  v12 = sub_100B8C5D4();
  v27 = v10;
  v28 = v11;
  v29 = v12;
  v30 = &protocol witness table for InsetGroupedListStyle;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v14 = sub_1001109D0(&qword_1011B3DC0, &qword_100F048C0);
  v15 = sub_100020674(&qword_1011B3DC8, &qword_1011B3DC0, &qword_100F048C0, &protocol conformance descriptor for ToolbarItem<A, B>);
  v27 = v14;
  v28 = v15;
  v16 = swift_getOpaqueTypeConformance2();
  v27 = v8;
  v28 = v9;
  v29 = OpaqueTypeConformance2;
  v30 = v16;
  swift_getOpaqueTypeConformance2();
  NavigationStack.init<>(root:)();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v27);

  sub_100B8D7C0(v2, v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Collaboration.Management.View);
  v17 = (*(v22 + 80) + 16) & ~*(v22 + 80);
  v18 = swift_allocObject();
  sub_100B8D828(v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for Collaboration.Management.View);
  sub_100020674(&unk_1011B3DD0, &qword_1011B3D70, &qword_100F04888, &protocol conformance descriptor for NavigationStack<A, B>);
  v19 = v23;
  View.onChange<A>(of:initial:_:)();

  return (*(v24 + 8))(v7, v19);
}

uint64_t sub_100B75210@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = type metadata accessor for InsetGroupedListStyle();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10010FC20(&qword_1011B3D90, &qword_100F048A8);
  __chkstk_darwin();
  v9 = &v22 - v8;
  v24 = sub_10010FC20(&qword_1011B3D80, &qword_100F04898);
  v10 = *(v24 - 8);
  __chkstk_darwin();
  v12 = &v22 - v11;
  v23 = a1;
  v26 = a1;
  sub_10010FC20(&qword_1011B4A68, &qword_100F05600);
  sub_100020674(&qword_1011B4A70, &qword_1011B4A68, &qword_100F05600, &protocol conformance descriptor for TupleView<A>);
  List<>.init(content:)();
  KeyPath = swift_getKeyPath();
  if (qword_1011B0650 != -1)
  {
    v21 = KeyPath;
    swift_once();
    KeyPath = v21;
  }

  v14 = qword_1011B3C08;
  v15 = &v9[*(v7 + 36)];
  *v15 = KeyPath;
  v15[1] = v14;
  InsetGroupedListStyle.init()();
  v16 = sub_100B8C5D4();
  View.listStyle<A>(_:)();
  (*(v4 + 8))(v6, v3);
  sub_1000095E8(v9, &qword_1011B3D90, &qword_100F048A8);
  __chkstk_darwin();
  *(&v22 - 2) = v23;
  sub_10010FC20(&qword_1011B3D88, &qword_100F048A0);
  v27 = v7;
  v28 = v3;
  v29 = v16;
  v30 = &protocol witness table for InsetGroupedListStyle;
  swift_getOpaqueTypeConformance2();
  v17 = sub_1001109D0(&qword_1011B3DC0, &qword_100F048C0);
  v18 = sub_100020674(&qword_1011B3DC8, &qword_1011B3DC0, &qword_100F048C0, &protocol conformance descriptor for ToolbarItem<A, B>);
  v27 = v17;
  v28 = v18;
  swift_getOpaqueTypeConformance2();
  v19 = v24;
  View.toolbar<A>(content:)();
  return (*(v10 + 8))(v12, v19);
}

uint64_t sub_100B75610@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v152 = a2;
  v150 = sub_10010FC20(&qword_1011B4A88, &qword_100F05640);
  v149 = *(v150 - 8);
  __chkstk_darwin();
  v115 = &v114 - v3;
  v146 = type metadata accessor for Playlist();
  v145 = *(v146 - 8);
  __chkstk_darwin();
  v144 = (&v114 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10010FC20(&qword_1011B4A90, &qword_100F05648);
  __chkstk_darwin();
  v151 = &v114 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v148 = &v114 - v6;
  v7 = sub_10010FC20(&qword_1011B4A98, &qword_100F05650);
  v155 = *(v7 - 8);
  v156 = v7;
  __chkstk_darwin();
  v123 = &v114 - v8;
  v122 = sub_10010FC20(&qword_1011B4AA0, &qword_100F05658);
  v121 = *(v122 - 8);
  __chkstk_darwin();
  v135 = &v114 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v134 = &v114 - v10;
  v119 = sub_10010FC20(&qword_1011B4AA8, &qword_100F05660);
  v118 = *(v119 - 8);
  __chkstk_darwin();
  v116 = &v114 - v11;
  sub_10010FC20(&qword_1011B4AB0, &qword_100F05668);
  __chkstk_darwin();
  v120 = &v114 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v133 = &v114 - v13;
  type metadata accessor for Locale();
  __chkstk_darwin();
  v125 = &v114 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = type metadata accessor for String.LocalizationValue();
  v124 = *(v126 - 8);
  __chkstk_darwin();
  v153 = &v114 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v154 = &v114 - v16;
  v132 = sub_10010FC20(&qword_1011B4AB8, &qword_100F05670);
  v130 = *(v132 - 8);
  __chkstk_darwin();
  v128 = &v114 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v136 = &v114 - v18;
  v131 = type metadata accessor for Playlist.Collaborator();
  v129 = *(v131 - 8);
  __chkstk_darwin();
  v117 = &v114 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v127 = &v114 - v20;
  sub_10010FC20(&qword_1011B4AC0, &qword_100F05678);
  __chkstk_darwin();
  v147 = &v114 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v159 = &v114 - v22;
  v140 = type metadata accessor for Prominence();
  v23 = *(v140 - 8);
  __chkstk_darwin();
  v25 = &v114 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = sub_10010FC20(&qword_1011B4AC8, &qword_100F05680);
  __chkstk_darwin();
  v27 = &v114 - v26;
  v138 = sub_10010FC20(&qword_1011B4AD0, &qword_100F05688);
  v139 = *(v138 - 8);
  __chkstk_darwin();
  v29 = &v114 - v28;
  v143 = sub_10010FC20(&qword_1011B4AD8, &qword_100F05690);
  v142 = *(v143 - 8);
  __chkstk_darwin();
  v141 = &v114 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v32 = &v114 - v31;
  v158 = a1;
  v160 = a1;
  sub_100B79638(a1, v27);
  v137 = sub_10010FC20(&qword_1011B4AE0, &qword_100F05698);
  v33 = sub_1001109D0(&qword_1011B4AE8, &qword_100F056A0);
  v34 = sub_1001109D0(&qword_1011B4AF0, &qword_100F056A8);
  v35 = sub_100B8F3F4();
  v36 = sub_100B8F4D8(&qword_1011B4B20, &qword_1011B4AF0, &qword_100F056A8, sub_100B8F554);
  v161 = v33;
  v162 = v34;
  v163 = v35;
  v164 = v36;
  swift_getOpaqueTypeConformance2();
  sub_100B8F698();
  Section<>.init(header:content:)();
  v37 = v140;
  (*(v23 + 104))(v25, enum case for Prominence.increased(_:), v140);
  sub_100B8F748();
  v157 = v32;
  v38 = v138;
  View.headerProminence(_:)();
  v39 = v25;
  v40 = v159;
  (*(v23 + 8))(v39, v37);
  (*(v139 + 8))(v29, v38);
  v41 = *(v158 + 8);
  v42 = sub_100B70028();
  v44 = v155;
  v43 = v156;
  if ((v42 & 1) == 0)
  {
    goto LABEL_9;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v161);

  if (!*(v161 + 16))
  {

    v40 = v159;
    v44 = v155;
    v43 = v156;
LABEL_9:
    (*(v44 + 56))(v40, 1, 1, v43);
    v65 = v148;
    v66 = v154;
    goto LABEL_11;
  }

  v45 = v129;
  v46 = v117;
  v47 = v131;
  (*(v129 + 16))(v117, v161 + ((*(v45 + 80) + 32) & ~*(v45 + 80)), v131);

  (*(v45 + 32))(v127, v46, v47);
  __chkstk_darwin();
  v48 = v154;
  String.LocalizationValue.init(stringLiteral:)();
  v49 = v124;
  v50 = v126;
  (*(v124 + 16))(v153, v48, v126);
  if (qword_1011B0430 != -1)
  {
    swift_once();
  }

  v51 = qword_10121B340;
  static Locale.current.getter();
  v52 = String.init(localized:table:bundle:locale:comment:)();
  v54 = v53;
  (*(v49 + 8))(v48, v50);
  v161 = v52;
  v162 = v54;
  sub_1000098E0();
  v161 = Text.init<A>(_:)();
  v162 = v55;
  LOBYTE(v163) = v56 & 1;
  v164 = v57;
  _s10ManagementO4ViewV19CollaboratorRowViewVMa(0);
  sub_100B8C798(&qword_1011B4BB0, _s10ManagementO4ViewV19CollaboratorRowViewVMa, &unk_100F04FD0);
  Section<>.init(header:content:)();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v161);

  v140 = v41;
  if (v161 == 1)
  {
    __chkstk_darwin();
    sub_10010FC20(&qword_1011B4BD0, &qword_100F05710);
    v58 = sub_1001109D0(&qword_1011B4BD8, &qword_100F05718);
    v59 = sub_1001109D0(&qword_1011B4BE0, &qword_100F05720);
    v60 = type metadata accessor for BorderlessButtonStyle();
    v61 = sub_100020674(&qword_1011B4BE8, &qword_1011B4BE0, &qword_100F05720, &protocol conformance descriptor for Button<A>);
    v62 = sub_100B8C798(&qword_1011B4BF0, &type metadata accessor for BorderlessButtonStyle, &protocol conformance descriptor for BorderlessButtonStyle);
    v161 = v59;
    v162 = v60;
    v163 = v61;
    v164 = v62;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v161 = v58;
    v162 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v64 = v116;
    Section<>.init(content:)();
    v70 = v118;
    v68 = v133;
    v69 = v119;
    (*(v118 + 32))(v133, v64, v119);
    v67 = 0;
  }

  else
  {
    v67 = 1;
    v68 = v133;
    v69 = v119;
    v70 = v118;
  }

  (*(v70 + 56))(v68, v67, 1, v69);
  __chkstk_darwin();
  sub_100B7E7EC(&v161);
  sub_10010FC20(&qword_1011B4BB8, &qword_100F05700);
  sub_100B8F8A8();
  v71 = v134;
  Section<>.init(header:content:)();
  v72 = *(v130 + 16);
  v73 = v128;
  v74 = v132;
  v72(v128, v136, v132);
  v75 = v68;
  v76 = v120;
  sub_1000089F8(v75, v120, &qword_1011B4AB0, &qword_100F05668);
  v77 = v121;
  v78 = *(v121 + 16);
  v79 = v122;
  v78(v135, v71, v122);
  v80 = v123;
  v72(v123, v73, v74);
  v81 = sub_10010FC20(&qword_1011B4BC8, &qword_100F05708);
  sub_1000089F8(v76, v80 + *(v81 + 48), &qword_1011B4AB0, &qword_100F05668);
  v82 = v135;
  v78((v80 + *(v81 + 64)), v135, v79);
  v83 = *(v77 + 8);
  v83(v134, v79);
  sub_1000095E8(v133, &qword_1011B4AB0, &qword_100F05668);
  v84 = *(v130 + 8);
  v85 = v132;
  v84(v136, v132);
  v83(v82, v79);
  sub_1000095E8(v76, &qword_1011B4AB0, &qword_100F05668);
  v84(v128, v85);
  v40 = v159;
  sub_10003D17C(v80, v159, &qword_1011B4A98, &qword_100F05650);
  (*(v155 + 56))(v40, 0, 1, v156);
  (*(v129 + 8))(v127, v131);
  v66 = v154;
  v65 = v148;
LABEL_11:
  v86 = v153;
  swift_getKeyPath();
  swift_getKeyPath();
  v87 = v144;
  static Published.subscript.getter(v144);

  v88 = Playlist.isOwner.getter();
  (*(v145 + 8))(v87, v146);
  if (v88 != 2 && (v88 & 1) != 0 && (swift_getKeyPath(), swift_getKeyPath(), static Published.subscript.getter(&v161), , , v161 == 1))
  {
    __chkstk_darwin();
    String.LocalizationValue.init(stringLiteral:)();
    v89 = v124;
    v90 = v126;
    (*(v124 + 16))(v86, v66, v126);
    if (qword_1011B0430 != -1)
    {
      swift_once();
    }

    v91 = qword_10121B340;
    static Locale.current.getter();
    v92 = String.init(localized:table:bundle:locale:comment:)();
    v94 = v93;
    (*(v89 + 8))(v66, v90);
    v161 = v92;
    v162 = v94;
    sub_1000098E0();
    v165 = Text.init<A>(_:)();
    v166 = v95;
    v167 = v96 & 1;
    v168 = v97;
    sub_100B7F134(&v161);
    sub_10010FC20(&unk_1011B4B80, &qword_100F056E8);
    sub_10010FC20(&qword_1011B2D38, &unk_100F056F0);
    sub_100020674(&unk_1011B4B90, &unk_1011B4B80, &qword_100F056E8, &protocol conformance descriptor for HStack<A>);
    sub_100B4BD08();
    v98 = v115;
    Section<>.init(header:footer:content:)();
    v99 = v149;
    v100 = v98;
    v101 = v150;
    (*(v149 + 32))(v65, v100, v150);
    v102 = v101;
    v103 = 0;
  }

  else
  {
    v103 = 1;
    v102 = v150;
    v99 = v149;
  }

  (*(v99 + 56))(v65, v103, 1, v102);
  v104 = v142;
  v105 = *(v142 + 16);
  v106 = v141;
  v107 = v143;
  v105(v141, v157, v143);
  v108 = v147;
  sub_1000089F8(v40, v147, &qword_1011B4AC0, &qword_100F05678);
  v109 = v151;
  sub_1000089F8(v65, v151, &qword_1011B4A90, &qword_100F05648);
  v110 = v152;
  v105(v152, v106, v107);
  v111 = sub_10010FC20(&qword_1011B4B78, &qword_100F056E0);
  sub_1000089F8(v108, &v110[*(v111 + 48)], &qword_1011B4AC0, &qword_100F05678);
  sub_1000089F8(v109, &v110[*(v111 + 64)], &qword_1011B4A90, &qword_100F05648);
  sub_1000095E8(v65, &qword_1011B4A90, &qword_100F05648);
  sub_1000095E8(v159, &qword_1011B4AC0, &qword_100F05678);
  v112 = *(v104 + 8);
  v112(v157, v107);
  sub_1000095E8(v109, &qword_1011B4A90, &qword_100F05648);
  sub_1000095E8(v108, &qword_1011B4AC0, &qword_100F05678);
  return (v112)(v106, v107);
}

uint64_t sub_100B76D60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a2;
  v3 = sub_10010FC20(&qword_1011B4B68, &qword_100F056D8);
  v69 = *(v3 - 8);
  v70 = v3;
  __chkstk_darwin();
  v68 = &v58 - v4;
  v59 = *(type metadata accessor for Collaboration.Management.View(0) - 8);
  v5 = *(v59 + 64);
  __chkstk_darwin();
  v60 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10010FC20(&qword_1011B4BB8, &qword_100F05700);
  v64 = *(v6 - 8);
  v65 = v6;
  __chkstk_darwin();
  v63 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v67 = &v58 - v8;
  v9 = type metadata accessor for AccessibilityChildBehavior();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10010FC20(&qword_1011B4D98, &qword_100F05928);
  __chkstk_darwin();
  v15 = &v58 - v14;
  v16 = sub_10010FC20(&qword_1011B4DA0, &qword_100F05930);
  v61 = *(v16 - 8);
  v62 = v16;
  __chkstk_darwin();
  v66 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v19 = &v58 - v18;
  v20 = a1;
  if (sub_100B70028())
  {
    v21 = v70;
    v22 = *(v69 + 56);
    v23 = v71;

    return v22(v23, 1, 1, v21);
  }

  else
  {
    *v15 = static VerticalAlignment.center.getter();
    *(v15 + 1) = 0x4028000000000000;
    v15[16] = 0;
    v25 = sub_10010FC20(&qword_1011B4DA8, &qword_100F05938);
    sub_100B77510(a1, &v15[*(v25 + 44)]);
    v26 = static Edge.Set.horizontal.getter();
    EdgeInsets.init(_all:)();
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v35 = &v15[*(sub_10010FC20(&qword_1011B4DB0, &qword_100F05940) + 36)];
    *v35 = v26;
    *(v35 + 1) = v28;
    *(v35 + 2) = v30;
    *(v35 + 3) = v32;
    *(v35 + 4) = v34;
    v35[40] = 0;
    v36 = &v15[*(sub_10010FC20(&qword_1011B4DB8, &qword_100F05948) + 36)];
    v36[32] = 0;
    *v36 = 0u;
    *(v36 + 1) = 0u;
    v37 = static HorizontalAlignment.listRowSeparatorLeading.getter();
    v38 = &v15[*(v13 + 36)];
    *v38 = v37;
    v38[1] = sub_10072DE6C;
    v38[2] = 0;
    static AccessibilityChildBehavior.combine.getter();
    sub_100B90550();
    v58 = v19;
    View.accessibilityElement(children:)();
    (*(v10 + 8))(v12, v9);
    sub_1000095E8(v15, &qword_1011B4D98, &qword_100F05928);
    v72 = sub_100B707DC();
    v39 = v20;
    v40 = v60;
    sub_100B8D7C0(v39, v60, type metadata accessor for Collaboration.Management.View);
    v41 = (*(v59 + 80) + 16) & ~*(v59 + 80);
    v42 = swift_allocObject();
    sub_100B8D828(v40, v42 + v41, type metadata accessor for Collaboration.Management.View);
    sub_10010FC20(&qword_1011B3CB0, &qword_100F047A0);
    _s10ManagementO4ViewV19CollaboratorRowViewVMa(0);
    sub_100020674(&qword_1011B4C18, &qword_1011B3CB0, &qword_100F047A0, &protocol conformance descriptor for [A]);
    sub_100B8C798(&qword_1011B4BB0, _s10ManagementO4ViewV19CollaboratorRowViewVMa, &unk_100F04FD0);
    sub_100B8C798(&qword_1011B4C20, &type metadata accessor for Playlist.Collaborator, &protocol conformance descriptor for Playlist.Collaborator);
    v43 = v67;
    ForEach<>.init(_:content:)();
    v45 = v61;
    v44 = v62;
    v46 = *(v61 + 16);
    v47 = v66;
    v46(v66, v58, v62);
    v49 = v63;
    v48 = v64;
    v50 = *(v64 + 16);
    v51 = v43;
    v52 = v65;
    v50(v63, v51, v65);
    v46(v68, v47, v44);
    v53 = sub_10010FC20(&qword_1011B4DE8, &qword_100F05958);
    v54 = v68;
    v50(&v68[*(v53 + 48)], v49, v52);
    v55 = *(v48 + 8);
    v55(v67, v52);
    v56 = *(v45 + 8);
    v56(v58, v44);
    v55(v49, v52);
    v56(v66, v44);
    v57 = v71;
    sub_10003D17C(v54, v71, &qword_1011B4B68, &qword_100F056D8);
    return (*(v69 + 56))(v57, 0, 1, v70);
  }
}

uint64_t sub_100B77510@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v160 = a2;
  v3 = sub_10010FC20(&qword_1011B4DF0, &qword_100F05960);
  v158 = *(v3 - 8);
  v159 = v3;
  __chkstk_darwin();
  v153 = (&v129 - v4);
  v152 = sub_10010FC20(&qword_1011B4888, &qword_100F05258);
  __chkstk_darwin();
  v144 = &v129 - v5;
  v6 = type metadata accessor for Collaboration.Management.View(0);
  v137 = *(v6 - 8);
  __chkstk_darwin();
  v138 = v7;
  v139 = &v129 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_10010FC20(&qword_1011B4DF8, &qword_100F05968);
  __chkstk_darwin();
  v140 = &v129 - v8;
  v136 = sub_10010FC20(&qword_1011B4E00, &qword_100F05970);
  __chkstk_darwin();
  v142 = (&v129 - v9);
  v149 = sub_10010FC20(&qword_1011B4E08, &qword_100F05978);
  v147 = *(v149 - 8);
  __chkstk_darwin();
  v143 = &v129 - v10;
  v11 = sub_10010FC20(&qword_1011B4E10, &qword_100F05980);
  v150 = *(v11 - 8);
  v151 = v11;
  __chkstk_darwin();
  v148 = &v129 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v146 = &v129 - v13;
  type metadata accessor for Locale();
  __chkstk_darwin();
  v133 = &v129 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for String.LocalizationValue();
  v134 = *(v15 - 8);
  v135 = v15;
  __chkstk_darwin();
  v17 = &v129 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v132 = &v129 - v18;
  v19 = type metadata accessor for Playlist();
  v130 = *(v19 - 8);
  v131 = v19;
  __chkstk_darwin();
  v129 = (&v129 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10010FC20(&qword_1011B4E18, &qword_100F05988);
  __chkstk_darwin();
  v157 = &v129 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v161 = &v129 - v22;
  v155 = sub_10010FC20(&qword_1011B4E20, &qword_100F05990);
  v23 = *(v155 - 8);
  __chkstk_darwin();
  v25 = &v129 - v24;
  v26 = type metadata accessor for DynamicTypeSize();
  v27 = *(v26 - 8);
  __chkstk_darwin();
  v29 = &v129 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v31 = &v129 - v30;
  sub_10010FC20(&qword_1011B4E28, &qword_100F05998);
  __chkstk_darwin();
  v156 = &v129 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v162 = a1;
  v163 = &v129 - v33;
  v145 = v6;
  sub_100B4CD34(v31);
  if (qword_1011B06A8 != -1)
  {
    swift_once();
  }

  v34 = sub_1000060E4(v26, qword_1011B3C60);
  (*(v27 + 16))(v29, v34, v26);
  sub_100B8C798(&qword_1011B1658, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  v35 = dispatch thunk of static Comparable.< infix(_:_:)();
  v36 = *(v27 + 8);
  v36(v29, v26);
  v36(v31, v26);
  if (v35)
  {
    (*(v23 + 56))(v163, 1, 1, v155);
    v37 = v17;
  }

  else
  {
    v38 = Image.init(systemName:)();
    v37 = v17;
    if (qword_1011B0648 != -1)
    {
      swift_once();
    }

    v39 = qword_1011B3C00;
    KeyPath = swift_getKeyPath();
    v41 = qword_1011B0698;

    if (v41 != -1)
    {
      swift_once();
    }

    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v42 = &v25[*(sub_10010FC20(&qword_1011B4E30, &qword_100F059A0) + 36)];
    v43 = *(sub_10010FC20(&qword_1011B4E38, &qword_100F059A8) + 28);
    static SymbolRenderingMode.hierarchical.getter();
    v44 = type metadata accessor for SymbolRenderingMode();
    (*(*(v44 - 8) + 56))(v42 + v43, 0, 1, v44);
    *v42 = swift_getKeyPath();
    *v25 = v38;
    *(v25 + 1) = KeyPath;
    *(v25 + 2) = v39;
    *(v25 + 56) = *&v168[16];
    v45 = v167;
    *(v25 + 40) = *v168;
    *(v25 + 24) = v45;
    if (qword_1011B06A0 != -1)
    {
      swift_once();
    }

    v46 = qword_1011B3C58;
    v47 = swift_getKeyPath();
    v48 = v155;
    v49 = &v25[*(v155 + 36)];
    *v49 = v47;
    v49[1] = v46;
    v50 = v163;
    sub_10003D17C(v25, v163, &qword_1011B4E20, &qword_100F05990);
    (*(v23 + 56))(v50, 0, 1, v48);
  }

  v155 = static HorizontalAlignment.leading.getter();
  v51 = 1;
  LOBYTE(v167) = 1;
  v52 = v162;
  sub_100B78920(v162, v171);
  *&v170[7] = v171[0];
  *&v170[23] = v171[1];
  *&v170[39] = v171[2];
  *&v170[55] = v171[3];
  v154 = v167;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v167);

  if (v167 == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v53 = v129;
    static Published.subscript.getter(v129);

    v54 = Playlist.isOwner.getter();
    (*(v130 + 8))(v53, v131);
    if (v54 == 2 || (v54 & 1) == 0)
    {
      v55 = v132;
    }

    else
    {
      v55 = v132;
    }

    String.LocalizationValue.init(stringLiteral:)();
    v57 = v134;
    v56 = v135;
    (*(v134 + 16))(v37, v55, v135);
    v58 = v136;
    v59 = v142;
    if (qword_1011B0430 != -1)
    {
      swift_once();
    }

    v60 = qword_10121B340;
    static Locale.current.getter();
    v61 = String.init(localized:table:bundle:locale:comment:)();
    v63 = v62;
    (*(v57 + 8))(v55, v56);
    v136 = v61;
    *&v167 = v61;
    *(&v167 + 1) = v63;
    v64 = v139;
    sub_100B8D7C0(v52, v139, type metadata accessor for Collaboration.Management.View);
    v65 = (*(v137 + 80) + 16) & ~*(v137 + 80);
    v66 = swift_allocObject();
    sub_100B8D828(v64, v66 + v65, type metadata accessor for Collaboration.Management.View);
    sub_1000098E0();

    v67 = v140;
    Button<>.init<A>(_:action:)();
    v68 = static Font.subheadline.getter();
    v69 = swift_getKeyPath();
    v70 = (v67 + *(v141 + 36));
    *v70 = v69;
    v70[1] = v68;
    static Font.Weight.semibold.getter();
    sub_100B90868();
    View.fontWeight(_:)();
    sub_1000095E8(v67, &qword_1011B4DF8, &qword_100F05968);
    v71 = static Color.white.getter();
    v72 = swift_getKeyPath();
    v73 = (v59 + *(sub_10010FC20(&qword_1011B4E58, &qword_100F059F0) + 36));
    *v73 = v72;
    v73[1] = v71;
    if (qword_1011B0688 != -1)
    {
      swift_once();
    }

    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v74 = (v59 + *(sub_10010FC20(&qword_1011B4E60, &qword_100F059F8) + 36));
    v75 = v171[5];
    *v74 = v171[4];
    v74[1] = v75;
    v74[2] = v171[6];
    v76 = static Edge.Set.horizontal.getter();
    EdgeInsets.init(_all:)();
    v78 = v77;
    v80 = v79;
    v82 = v81;
    v84 = v83;
    v85 = v59 + *(sub_10010FC20(&qword_1011B4E68, &qword_100F05A00) + 36);
    *v85 = v76;
    *(v85 + 1) = v78;
    *(v85 + 2) = v80;
    *(v85 + 3) = v82;
    *(v85 + 4) = v84;
    v85[40] = 0;
    if (qword_1011B04D0 != -1)
    {
      swift_once();
    }

    v142 = v63;
    v86 = static UIColor.MusicTint.normal;
    v87 = Color.init(_:)();
    v88 = static Edge.Set.all.getter();
    v89 = v59 + *(sub_10010FC20(&qword_1011B4E70, &qword_100F05A08) + 36);
    *v89 = v87;
    v89[8] = v88;
    v90 = v59 + *(v58 + 36);
    v91 = enum case for RoundedCornerStyle.continuous(_:);
    v92 = type metadata accessor for RoundedCornerStyle();
    (*(*(v92 - 8) + 104))(v90, v91, v92);
    *&v90[*(sub_10010FC20(&qword_1011B4E78, &unk_100F05A10) + 36)] = 256;
    v93 = v58;
    v94 = v59;
    if (qword_1011B06B0 != -1)
    {
      swift_once();
    }

    v95 = v152;
    v96 = sub_1000060E4(v152, qword_1011B3C78);
    v97 = v144;
    sub_1000089F8(v96, v144, &qword_1011B4888, &qword_100F05258);
    v141 = sub_100B9094C();
    v98 = sub_100020674(&qword_1011B48C0, &qword_1011B4888, &qword_100F05258, &protocol conformance descriptor for PartialRangeThrough<A>);
    v99 = v143;
    View.dynamicTypeSize<A>(_:)();
    sub_1000095E8(v97, &qword_1011B4888, &qword_100F05258);
    sub_1000095E8(v94, &qword_1011B4E00, &qword_100F05970);
    v100 = (v162 + *(v145 + 11));
    v101 = *v100;
    v102 = *(v100 + 1);
    LOBYTE(v164) = v101;
    v165 = v102;
    sub_10010FC20(&qword_1011B2DD8, &qword_100F05F50);
    State.projectedValue.getter();
    v145 = &v129;
    __chkstk_darwin();
    v103 = v136;
    *(&v129 - 4) = v104;
    *(&v129 - 3) = v103;
    *(&v129 - 2) = v142;
    *&v167 = v93;
    *(&v167 + 1) = v95;
    *v168 = v141;
    *&v168[8] = v98;
    swift_getOpaqueTypeConformance2();
    v105 = v146;
    v106 = v149;
    View.alert(isPresented:content:)();

    (*(v147 + 8))(v99, v106);
    v108 = v150;
    v107 = v151;
    v109 = *(v150 + 16);
    v110 = v148;
    v109(v148, v105, v151);
    v111 = v153;
    *v153 = 0;
    *(v111 + 8) = 1;
    v112 = sub_10010FC20(&qword_1011B4EC0, &qword_100F05A20);
    v109((v111 + *(v112 + 48)), v110, v107);
    v113 = *(v108 + 8);
    v113(v105, v107);
    v113(v110, v107);
    sub_10003D17C(v111, v161, &qword_1011B4DF0, &qword_100F05960);
    v51 = 0;
  }

  v114 = v161;
  (*(v158 + 56))(v161, v51, 1, v159);
  v115 = v163;
  v116 = v156;
  sub_1000089F8(v163, v156, &qword_1011B4E28, &qword_100F05998);
  v117 = v157;
  sub_1000089F8(v114, v157, &qword_1011B4E18, &qword_100F05988);
  v118 = v160;
  sub_1000089F8(v116, v160, &qword_1011B4E28, &qword_100F05998);
  v119 = sub_10010FC20(&qword_1011B4E40, &qword_100F059E0);
  v120 = v118 + *(v119 + 48);
  v121 = v155;
  v164 = v155;
  v165 = 0;
  v122 = v154;
  v166[0] = v154;
  *&v166[1] = *v170;
  *&v166[17] = *&v170[16];
  *&v166[33] = *&v170[32];
  *&v166[49] = *&v170[48];
  v123 = *&v170[63];
  *&v166[64] = *&v170[63];
  v124 = *v166;
  *v120 = v155;
  *(v120 + 16) = v124;
  v125 = *&v166[16];
  v126 = *&v166[32];
  v127 = *&v166[48];
  *(v120 + 80) = v123;
  *(v120 + 48) = v126;
  *(v120 + 64) = v127;
  *(v120 + 32) = v125;
  sub_1000089F8(v117, v118 + *(v119 + 64), &qword_1011B4E18, &qword_100F05988);
  sub_1000089F8(&v164, &v167, &qword_1011B4E48, &qword_100F059E8);
  sub_1000095E8(v114, &qword_1011B4E18, &qword_100F05988);
  sub_1000095E8(v115, &qword_1011B4E28, &qword_100F05998);
  sub_1000095E8(v117, &qword_1011B4E18, &qword_100F05988);
  v167 = v121;
  v168[0] = v122;
  *&v168[17] = *&v170[16];
  *&v168[33] = *&v170[32];
  *v169 = *&v170[48];
  *&v169[15] = *&v170[63];
  *&v168[1] = *v170;
  sub_1000095E8(&v167, &qword_1011B4E48, &qword_100F059E8);
  return sub_1000095E8(v116, &qword_1011B4E28, &qword_100F05998);
}

double sub_100B78920@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a1;
  type metadata accessor for Locale();
  __chkstk_darwin();
  v3 = type metadata accessor for String.LocalizationValue();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v54[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v8 = &v54[-v7];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v4 + 16))(v6, v8, v3);
  if (qword_1011B0430 != -1)
  {
    swift_once();
  }

  v9 = qword_10121B340;
  static Locale.current.getter();
  v10 = String.init(localized:table:bundle:locale:comment:)();
  v12 = v11;
  (*(v4 + 8))(v8, v3);
  v59 = v10;
  v60 = v12;
  sub_1000098E0();
  v13 = Text.init<A>(_:)();
  v15 = v14;
  v17 = v16;
  LODWORD(v59) = static HierarchicalShapeStyle.primary.getter();
  v18 = Text.foregroundStyle<A>(_:)();
  v20 = v19;
  v22 = v21;
  sub_10011895C(v13, v15, v17 & 1);

  static Font.callout.getter();
  v23 = Text.font(_:)();
  v57 = v24;
  v26 = v25;
  v28 = v27;

  sub_10011895C(v18, v20, v22 & 1);

  v29 = sub_100B70940();
  if (v30)
  {
    v59 = v29;
    v60 = v30;
    v31 = Text.init<A>(_:)();
    v33 = v32;
    v35 = v34;
    LODWORD(v59) = static HierarchicalShapeStyle.secondary.getter();
    v36 = Text.foregroundStyle<A>(_:)();
    v38 = v37;
    v55 = v26;
    v40 = v39;
    v58 = v28;
    sub_10011895C(v31, v33, v35 & 1);

    static Font.caption.getter();
    v41 = Text.font(_:)();
    v43 = v42;
    v56 = a2;
    v44 = v23;
    v46 = v45;
    v48 = v47;

    v49 = v40 & 1;
    LOBYTE(v26) = v55;
    sub_10011895C(v36, v38, v49);
    v28 = v58;

    v50 = v46 & 1;
    v23 = v44;
    a2 = v56;
    sub_10021D0C0(v41, v43, v50);
  }

  else
  {
    v41 = 0;
    v43 = 0;
    v50 = 0;
    v48 = 0;
  }

  v51 = v26 & 1;
  v52 = v57;
  sub_10021D0C0(v23, v57, v51);

  sub_10024EA48(v41, v43, v50, v48);
  sub_10024EA04(v41, v43, v50, v48);
  LOBYTE(v59) = v51;
  *a2 = v23;
  *(a2 + 8) = v52;
  *(a2 + 16) = v51;
  *(a2 + 24) = v28;
  *(a2 + 32) = v41;
  *(a2 + 40) = v43;
  *(a2 + 48) = v50;
  *(a2 + 56) = v48;
  sub_10024EA04(v41, v43, v50, v48);
  sub_10011895C(v23, v52, v51);

  return result;
}

uint64_t sub_100B78DA4(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = (a1 + *(type metadata accessor for Collaboration.Management.View(0) + 44));
  v7 = *v6;
  v8 = *(v6 + 1);
  v14[16] = v7;
  v15 = v8;
  v14[15] = 1;
  sub_10010FC20(&qword_1011B2DD8, &qword_100F05F50);
  State.wrappedValue.setter();
  v9 = Logger.collaboration.unsafeMutableAddressor();
  (*(v3 + 16))(v5, v9, v2);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "[Management] Stop/Leave button tapped", v12, 2u);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_100B78F4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v46 = a2;
  v47 = a3;
  v54 = a4;
  v48 = *(type metadata accessor for Collaboration.Management.View(0) - 8);
  __chkstk_darwin();
  v49 = v5;
  v50 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Alert.Button();
  __chkstk_darwin();
  v53 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v52 = v41 - v7;
  type metadata accessor for Locale();
  __chkstk_darwin();
  v45 = type metadata accessor for String.LocalizationValue();
  v8 = *(v45 - 8);
  __chkstk_darwin();
  v10 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = v41 - v11;
  v13 = type metadata accessor for Playlist();
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = (v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v51 = a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v16);

  v17 = Playlist.isOwner.getter();
  (*(v14 + 8))(v16, v13);
  if (v17 != 2 && (v17 & 1) != 0)
  {
    String.LocalizationValue.init(stringLiteral:)();
    v18 = *(v8 + 16);
    v19 = v45;
    v18(v10, v12, v45);
    if (qword_1011B0430 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_7;
  }

  String.LocalizationValue.init(stringLiteral:)();
  v18 = *(v8 + 16);
  v19 = v45;
  v18(v10, v12, v45);
  if (qword_1011B0430 != -1)
  {
LABEL_7:
    swift_once();
  }

LABEL_6:
  v20 = qword_10121B340;
  static Locale.current.getter();
  v21 = v20;
  v44 = String.init(localized:table:bundle:locale:comment:)();
  v23 = v22;
  v24 = *(v8 + 8);
  v24(v12, v19);
  String.LocalizationValue.init(stringLiteral:)();
  v18(v10, v12, v19);
  static Locale.current.getter();
  v25 = String.init(localized:table:bundle:locale:comment:)();
  v27 = v26;
  v24(v12, v19);
  v55 = v44;
  v56 = v23;
  sub_1000098E0();
  v28 = Text.init<A>(_:)();
  v44 = v29;
  v45 = v28;
  v42 = v30;
  v43 = v31;
  v55 = v25;
  v56 = v27;
  Text.init<A>(_:)();
  v41[1] = v32;
  v55 = v46;
  v56 = v47;

  v33 = Text.init<A>(_:)();
  v35 = v34;
  LOBYTE(v23) = v36;
  v37 = v50;
  sub_100B8D7C0(v51, v50, type metadata accessor for Collaboration.Management.View);
  v38 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v39 = swift_allocObject();
  sub_100B8D828(v37, v39 + v38, type metadata accessor for Collaboration.Management.View);
  static Alert.Button.destructive(_:action:)();
  sub_10011895C(v33, v35, v23 & 1);

  static Alert.Button.cancel(_:)();
  return Alert.init(title:message:primaryButton:secondaryButton:)();
}

uint64_t sub_100B79638@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v3 = (type metadata accessor for Collaboration.Management.View(0) - 8);
  v4 = *v3;
  v5 = *(*v3 + 64);
  __chkstk_darwin();
  v6 = sub_10010FC20(&qword_1011B4AE8, &qword_100F056A0);
  __chkstk_darwin();
  v8 = &v17 - v7;
  *v8 = static HorizontalAlignment.center.getter();
  *(v8 + 1) = 0x4028000000000000;
  v8[16] = 0;
  v9 = sub_10010FC20(&unk_1011B4C30, &unk_100F05760);
  sub_100B79904(a1, &v8[*(v9 + 44)]);
  v10 = &v8[*(v6 + 36)];
  v10[32] = 0;
  *v10 = 0u;
  *(v10 + 1) = 0u;
  v11 = (a1 + v3[12]);
  v12 = *v11;
  v13 = *(v11 + 1);
  v18 = v12;
  v19 = v13;
  sub_10010FC20(&qword_1011B2DD8, &qword_100F05F50);
  State.projectedValue.getter();
  sub_100B8D7C0(a1, &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Collaboration.Management.View);
  v14 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v15 = swift_allocObject();
  sub_100B8D828(&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for Collaboration.Management.View);
  sub_10010FC20(&qword_1011B4AF0, &qword_100F056A8);
  sub_100B8F3F4();
  sub_100B8F4D8(&qword_1011B4B20, &qword_1011B4AF0, &qword_100F056A8, sub_100B8F554);
  View.fullScreenCover<A>(isPresented:onDismiss:content:)();

  return sub_1000095E8(v8, &qword_1011B4AE8, &qword_100F056A0);
}

uint64_t sub_100B79904@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v222 = a2;
  v221 = sub_10010FC20(&qword_1011B4C48, &qword_100F05778);
  v220 = *(v221 - 8);
  __chkstk_darwin();
  v199 = &v177 - v3;
  sub_10010FC20(&qword_1011B4C50, &qword_100F05780);
  __chkstk_darwin();
  v182 = &v177 - v4;
  v179 = sub_10010FC20(&qword_1011B4C58, &qword_100F05788);
  __chkstk_darwin();
  v191 = &v177 - v5;
  v189 = sub_10010FC20(&qword_1011B4C60, &qword_100F05790);
  __chkstk_darwin();
  v188 = &v177 - v6;
  v186 = sub_10010FC20(&qword_1011B4C68, &qword_100F05798);
  __chkstk_darwin();
  v185 = &v177 - v7;
  v181 = sub_10010FC20(&qword_1011B4C70, &qword_100F057A0);
  __chkstk_darwin();
  v184 = &v177 - v8;
  v180 = sub_10010FC20(&qword_1011B4C78, &qword_100F057A8);
  __chkstk_darwin();
  v187 = &v177 - v9;
  v183 = sub_10010FC20(&qword_1011B4C80, &qword_100F057B0);
  __chkstk_darwin();
  v194 = &v177 - v10;
  v193 = sub_10010FC20(&qword_1011B4C88, &qword_100F057B8);
  __chkstk_darwin();
  v198 = &v177 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v192 = &v177 - v12;
  __chkstk_darwin();
  v197 = &v177 - v13;
  v178 = sub_10010FC20(&qword_1011B4C90, &qword_100F057C0);
  __chkstk_darwin();
  v196 = &v177 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v195 = (&v177 - v15);
  sub_10010FC20(&qword_1011B4C98, &qword_100F057C8);
  __chkstk_darwin();
  v219 = &v177 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v224 = &v177 - v17;
  v217 = type metadata accessor for Playlist();
  v216 = *(v217 - 8);
  __chkstk_darwin();
  v215 = (&v177 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10010FC20(&qword_1011B4720, &qword_100F02D00);
  __chkstk_darwin();
  v209 = &v177 - v19;
  v212 = type metadata accessor for Artwork.CropStyle();
  v210 = *(v212 - 8);
  __chkstk_darwin();
  v208 = &v177 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_1011B55F0, &unk_100EFFDC0);
  __chkstk_darwin();
  v202 = &v177 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v201 = &v177 - v22;
  v213 = type metadata accessor for ArtworkImage();
  v211 = *(v213 - 8);
  __chkstk_darwin();
  v226 = &v177 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v204 = &v177 - v24;
  __chkstk_darwin();
  v207 = &v177 - v25;
  __chkstk_darwin();
  v206 = &v177 - v26;
  v27 = type metadata accessor for ArtworkImage.ReusePolicy();
  v228 = *(v27 - 8);
  __chkstk_darwin();
  v29 = &v177 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v225 = *(type metadata accessor for ArtworkImage.Placeholder(0) - 8);
  v30 = *(v225 + 8);
  __chkstk_darwin();
  v31 = &v177 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v33 = &v177 - v32;
  sub_10010FC20(&qword_1011B5930, &qword_100EFDE70);
  __chkstk_darwin();
  v200 = &v177 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v36 = &v177 - v35;
  __chkstk_darwin();
  v38 = &v177 - v37;
  v214 = sub_10010FC20(&qword_1011B4CA0, &qword_100F057D0);
  __chkstk_darwin();
  v218 = &v177 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v223 = &v177 - v40;
  v190 = a1;
  v229 = *(a1 + 8);
  sub_100B71F7C(v38);
  v41 = enum case for Playlist.Variant.regular(_:);
  v42 = type metadata accessor for Playlist.Variant();
  v43 = *(v42 - 8);
  (*(v43 + 104))(v33, v41, v42);
  (*(v43 + 56))(v33, 0, 1, v42);
  v44 = sub_10010FC20(&unk_1011B4740, &qword_100F02D08);
  (*(*(v44 - 8) + 56))(v33, 0, 11, v44);
  v244 = 1;
  v242 = 1;
  v240 = 1;
  v45 = *(v228 + 104);
  v227 = v29;
  v205 = v27;
  v45(v29, enum case for ArtworkImage.ReusePolicy.reusableForDistinctItems(_:), v27);
  v203 = v33;
  sub_100B8D7C0(v33, v31, type metadata accessor for ArtworkImage.Placeholder);
  v46 = (v225[80] + 16) & ~v225[80];
  v47 = (v30 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
  v48 = swift_allocObject();
  sub_100B8D828(v31, v48 + v46, type metadata accessor for ArtworkImage.Placeholder);
  v49 = v48 + v47;
  *v49 = 0;
  *(v49 + 8) = v244;
  *(v49 + 9) = *v243;
  *(v49 + 12) = *&v243[3];
  *(v49 + 16) = 0;
  *(v49 + 24) = v242;
  *(v49 + 25) = *v241;
  *(v49 + 28) = *&v241[3];
  *(v49 + 32) = 0;
  *(v49 + 40) = v240;
  *(v49 + 41) = 2;
  v225 = v38;
  sub_1000089F8(v38, v36, &qword_1011B5930, &qword_100EFDE70);
  v50 = type metadata accessor for ArtworkImage.ViewModel(0);
  v51 = *(*(v50 - 8) + 48);
  if (v51(v36, 1, v50) == 1)
  {
    sub_1000095E8(v36, &qword_1011B5930, &qword_100EFDE70);
    v52 = type metadata accessor for Artwork();
    v53 = v201;
    (*(*(v52 - 8) + 56))(v201, 1, 1, v52);
  }

  else
  {
    v54 = type metadata accessor for Artwork();
    v55 = *(v54 - 8);
    v53 = v201;
    (*(v55 + 16))(v201, v36, v54);
    sub_100B8DCA8(v36, type metadata accessor for ArtworkImage.ViewModel);
    (*(v55 + 56))(v53, 0, 1, v54);
  }

  sub_1000089F8(v53, v202, &unk_1011B55F0, &unk_100EFFDC0);
  v56 = v206;
  ArtworkImage.init(_:)();
  sub_1000095E8(v53, &unk_1011B55F0, &unk_100EFFDC0);
  ArtworkImage.artworkReusablePolicy(_:)();
  v57 = v200;
  sub_1000089F8(v225, v200, &qword_1011B5930, &qword_100EFDE70);
  if (v51(v57, 1, v50) == 1)
  {
    sub_1000095E8(v57, &qword_1011B5930, &qword_100EFDE70);
    v58 = v210;
    v59 = v209;
    v60 = v212;
    (*(v210 + 56))(v209, 1, 1, v212);
    v61 = v223;
  }

  else
  {
    v59 = v209;
    sub_1000089F8(v57 + *(v50 + 20), v209, &qword_1011B4720, &qword_100F02D00);
    sub_100B8DCA8(v57, type metadata accessor for ArtworkImage.ViewModel);
    v58 = v210;
    v60 = v212;
    v62 = (*(v210 + 48))(v59, 1, v212);
    v61 = v223;
    if (v62 != 1)
    {
      v63 = v208;
      (*(v58 + 32))(v208, v59, v60);
      goto LABEL_12;
    }
  }

  v63 = v208;
  if (qword_1011B0618 != -1)
  {
    swift_once();
  }

  v64 = sub_1000060E4(v60, static Artwork.CropStyle.fallback);
  (*(v58 + 16))(v63, v64, v60);
  if ((*(v58 + 48))(v59, 1, v60) != 1)
  {
    sub_1000095E8(v59, &qword_1011B4720, &qword_100F02D00);
  }

LABEL_12:
  v65 = v204;
  v66 = v226;
  ArtworkImage.artworkCropStyle(_:)();
  (*(v58 + 8))(v63, v60);
  v67 = *(v211 + 8);
  v68 = v213;
  v67(v66, v213);
  v69 = v207;
  ArtworkImage.artworkIdealAspectRatio(_:contentMode:)();
  v67(v65, v68);
  sub_10010FC20(&qword_1011B33A8, &qword_100F03130);
  sub_100B5A07C();
  ArtworkImage.artworkPlaceholder<A>(_:)();

  v67(v69, v68);
  v67(v56, v68);
  (*(v228 + 8))(v227, v205);
  sub_100B8DCA8(v203, type metadata accessor for ArtworkImage.Placeholder);
  sub_1000095E8(v225, &qword_1011B5930, &qword_100EFDE70);
  if (qword_1011B0690 != -1)
  {
    swift_once();
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v70 = (v61 + *(sub_10010FC20(&qword_1011B4CA8, &qword_100F057D8) + 36));
  v71 = v231;
  *v70 = v230;
  v70[1] = v71;
  v70[2] = v232;
  if (qword_1011B05B0 != -1)
  {
    swift_once();
  }

  v72 = static Corner.small;
  v73 = *algn_10121B6D8;
  v74 = byte_10121B6E0;
  v75 = v61 + *(sub_10010FC20(&qword_1011B4CB0, &qword_100F057E0) + 36);
  *v75 = v72;
  *(v75 + 8) = v73;
  *(v75 + 16) = v74;
  if (qword_1011B05D0 != -1)
  {
    swift_once();
  }

  v76 = static Border.artwork;
  v77 = qword_10121B738;
  v78 = byte_10121B740;
  v79 = v61 + *(sub_10010FC20(&qword_1011B4CB8, &qword_100F057E8) + 36);
  *v79 = v76;
  *(v79 + 8) = v77;
  *(v79 + 16) = v78;
  *(v79 + 24) = v72;
  *(v79 + 32) = v73;
  *(v79 + 40) = v74;

  static Color.black.getter();
  v80 = Color.opacity(_:)();

  v81 = v61 + *(v214 + 36);
  *v81 = v80;
  *(v81 + 8) = xmmword_100EFDBE0;
  *(v81 + 24) = 0x4000000000000000;
  swift_getKeyPath();
  swift_getKeyPath();
  v82 = v215;
  static Published.subscript.getter(v215);

  v83 = Playlist.name.getter();
  v85 = v84;
  (*(v216 + 8))(v82, v217);
  *&v233 = v83;
  *(&v233 + 1) = v85;
  sub_1000098E0();
  v86 = Text.init<A>(_:)();
  v88 = v87;
  v90 = v89;
  LODWORD(v233) = static HierarchicalShapeStyle.primary.getter();
  v91 = Text.foregroundStyle<A>(_:)();
  v93 = v92;
  v95 = v94;
  sub_10011895C(v86, v88, v90 & 1);

  if (qword_1011B0640 != -1)
  {
    swift_once();
  }

  v96 = Text.font(_:)();
  v98 = v97;
  v100 = v99;

  sub_10011895C(v91, v93, v95 & 1);

  static Font.Weight.semibold.getter();
  v227 = Text.fontWeight(_:)();
  v226 = v101;
  LODWORD(v103) = v102;
  v228 = v104;
  sub_10011895C(v96, v98, v100 & 1);

  v105 = sub_100B70664();
  v106 = 1;
  if (v105)
  {
    v107 = static VerticalAlignment.bottom.getter();
    v108 = v195;
    *v195 = v107;
    *(v108 + 8) = 0x4020000000000000;
    *(v108 + 16) = 0;
    v109 = sub_10010FC20(&qword_1011B4CC8, &qword_100F057F8);
    v110 = v190;
    sub_100B7B51C(v190, (v108 + *(v109 + 44)));
    *(v108 + *(sub_10010FC20(&qword_1011B4CD0, &qword_100F05800) + 36)) = 256;
    v111 = static Edge.Set.top.getter();
    if (qword_1011B0678 != -1)
    {
      swift_once();
    }

    LODWORD(v229) = v103;
    EdgeInsets.init(_all:)();
    v112 = v108 + *(v178 + 36);
    *v112 = v111;
    *(v112 + 8) = v113;
    *(v112 + 16) = v114;
    *(v112 + 24) = v115;
    *(v112 + 32) = v116;
    *(v112 + 40) = 0;
    v117 = v182;
    sub_100B7C618(v110, v182);
    static Alignment.leading.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v118 = v191;
    sub_10003D17C(v117, v191, &qword_1011B4C50, &qword_100F05780);
    v119 = (v118 + *(v179 + 36));
    v120 = v238;
    v119[4] = v237;
    v119[5] = v120;
    v119[6] = v239;
    v121 = v234;
    *v119 = v233;
    v119[1] = v121;
    v122 = v236;
    v119[2] = v235;
    v119[3] = v122;
    KeyPath = swift_getKeyPath();
    v124 = v118;
    v125 = v188;
    sub_10003D17C(v124, v188, &qword_1011B4C58, &qword_100F05788);
    v126 = v125 + *(v189 + 36);
    *v126 = KeyPath;
    *(v126 + 8) = 0;
    *(v126 + 16) = 1;
    v127 = v125;
    v128 = v185;
    sub_10003D17C(v127, v185, &qword_1011B4C60, &qword_100F05790);
    *(v128 + *(v186 + 36)) = 256;
    LODWORD(KeyPath) = static HierarchicalShapeStyle.secondary.getter();
    v129 = v128;
    v130 = v184;
    sub_10003D17C(v129, v184, &qword_1011B4C68, &qword_100F05798);
    *(v130 + *(v181 + 36)) = KeyPath;
    v131 = static Font.footnote.getter();
    v132 = swift_getKeyPath();
    v133 = v130;
    v134 = v187;
    sub_10003D17C(v133, v187, &qword_1011B4C70, &qword_100F057A0);
    v135 = (v134 + *(v180 + 36));
    *v135 = v132;
    v135[1] = v131;
    LOBYTE(v131) = static Edge.Set.horizontal.getter();
    EdgeInsets.init(_all:)();
    v137 = v136;
    v139 = v138;
    v141 = v140;
    v143 = v142;
    v144 = v134;
    v145 = v194;
    sub_10003D17C(v144, v194, &qword_1011B4C78, &qword_100F057A8);
    v146 = v145 + *(v183 + 36);
    *v146 = v131;
    *(v146 + 8) = v137;
    *(v146 + 16) = v139;
    *(v146 + 24) = v141;
    *(v146 + 32) = v143;
    *(v146 + 40) = 0;
    v147 = static Edge.Set.top.getter();
    if (qword_1011B0680 != -1)
    {
      swift_once();
    }

    EdgeInsets.init(_all:)();
    v149 = v148;
    v151 = v150;
    v153 = v152;
    v155 = v154;
    v156 = v145;
    v157 = v192;
    sub_10003D17C(v156, v192, &qword_1011B4C80, &qword_100F057B0);
    v158 = v157 + *(v193 + 36);
    *v158 = v147;
    *(v158 + 8) = v149;
    *(v158 + 16) = v151;
    *(v158 + 24) = v153;
    *(v158 + 32) = v155;
    *(v158 + 40) = 0;
    v159 = v197;
    sub_10003D17C(v157, v197, &qword_1011B4C88, &qword_100F057B8);
    v160 = v196;
    sub_1000089F8(v108, v196, &qword_1011B4C90, &qword_100F057C0);
    v161 = v198;
    sub_1000089F8(v159, v198, &qword_1011B4C88, &qword_100F057B8);
    v103 = v108;
    v162 = v199;
    sub_1000089F8(v160, v199, &qword_1011B4C90, &qword_100F057C0);
    v163 = sub_10010FC20(&qword_1011B4CD8, &qword_100F05808);
    sub_1000089F8(v161, v162 + *(v163 + 48), &qword_1011B4C88, &qword_100F057B8);
    v164 = v162 + *(v163 + 64);
    sub_1000095E8(v159, &qword_1011B4C88, &qword_100F057B8);
    sub_1000095E8(v103, &qword_1011B4C90, &qword_100F057C0);
    *v164 = 0x3FF0000000000000;
    *(v164 + 8) = 0;
    sub_1000095E8(v161, &qword_1011B4C88, &qword_100F057B8);
    sub_1000095E8(v160, &qword_1011B4C90, &qword_100F057C0);
    sub_10003D17C(v162, v224, &qword_1011B4C48, &qword_100F05778);
    v106 = 0;
    v61 = v223;
    LOBYTE(v103) = v229;
  }

  v165 = v224;
  (*(v220 + 56))(v224, v106, 1, v221);
  v229 = static VerticalAlignment.center.getter();
  v166 = v218;
  sub_1000089F8(v61, v218, &qword_1011B4CA0, &qword_100F057D0);
  v167 = v219;
  sub_1000089F8(v165, v219, &qword_1011B4C98, &qword_100F057C8);
  v168 = v222;
  sub_1000089F8(v166, v222, &qword_1011B4CA0, &qword_100F057D0);
  v169 = v61;
  v170 = sub_10010FC20(&qword_1011B4CC0, &qword_100F057F0);
  v171 = v168 + v170[12];
  v172 = v227;
  v173 = v226;
  *v171 = v227;
  *(v171 + 8) = v173;
  v174 = v103 & 1;
  *(v171 + 16) = v174;
  *(v171 + 24) = v228;
  sub_1000089F8(v167, v168 + v170[16], &qword_1011B4C98, &qword_100F057C8);
  v175 = v168 + v170[20];
  sub_10021D0C0(v172, v173, v174);

  sub_1000095E8(v165, &qword_1011B4C98, &qword_100F057C8);
  sub_1000095E8(v169, &qword_1011B4CA0, &qword_100F057D0);
  *v175 = v229;
  *(v175 + 8) = 0;
  *(v175 + 16) = 1;
  *(v175 + 24) = 0;
  *(v175 + 32) = 1;
  sub_1000095E8(v167, &qword_1011B4C98, &qword_100F057C8);
  sub_10011895C(v172, v173, v174);

  return sub_1000095E8(v166, &qword_1011B4CA0, &qword_100F057D0);
}

uint64_t sub_100B7B51C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v101 = a2;
  v95 = sub_10010FC20(&qword_1011B4D40, &qword_100F05860);
  v99 = *(v95 - 8);
  __chkstk_darwin();
  v90 = v78 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v89 = v78 - v4;
  sub_10010FC20(&qword_1011B4D48, &qword_100F05868);
  __chkstk_darwin();
  v100 = v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v94 = v78 - v6;
  sub_10010FC20(&qword_1011B0C20, &qword_100EFF510);
  __chkstk_darwin();
  v87 = v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = v78 - v8;
  v10 = type metadata accessor for Collaboration.Management.View(0) - 8;
  v11 = *v10;
  __chkstk_darwin();
  v102 = v12;
  v13 = (v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = _s10ManagementO4ViewV5ShareO6ButtonVMa(0);
  __chkstk_darwin();
  v86 = v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = v78 - v16;
  v93 = sub_10010FC20(&qword_1011B4D50, &qword_100F05870);
  __chkstk_darwin();
  v85 = v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v103 = v78 - v19;
  v20 = sub_10010FC20(&qword_1011B4D58, &qword_100F05878);
  v97 = *(v20 - 8);
  v98 = v20;
  __chkstk_darwin();
  v96 = v78 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v104 = v78 - v22;
  v92 = type metadata accessor for Collaboration.Management.View;
  sub_100B8D7C0(a1, v13, type metadata accessor for Collaboration.Management.View);
  v23 = *(v11 + 80);
  v24 = swift_allocObject();
  v91 = type metadata accessor for Collaboration.Management.View;
  sub_100B8D828(v13, v24 + ((v23 + 16) & ~v23), type metadata accessor for Collaboration.Management.View);
  *&v17[*(v14 + 24)] = swift_getKeyPath();
  v82 = sub_10010FC20(&qword_1011B4820, &qword_100EFE078);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  *v17 = 0;
  *(v17 + 1) = sub_100B903A0;
  *(v17 + 2) = v24;
  v84 = v14;
  v26 = &v17[*(v14 + 28)];
  *v26 = KeyPath;
  v26[8] = 0;
  v27 = a1;
  v81 = *(a1 + 8);
  sub_100B71CC8(v9);
  v28 = type metadata accessor for URL();
  v29 = *(v28 - 8);
  v30 = *(v29 + 48);
  v80 = v28;
  v79 = v30;
  v78[1] = v29 + 48;
  v31 = (v30)(v9, 1) == 1;
  sub_1000095E8(v9, &qword_1011B0C20, &qword_100EFF510);
  v32 = swift_getKeyPath();
  v33 = swift_allocObject();
  *(v33 + 16) = v31;
  v34 = v103;
  sub_100B8D828(v17, v103, _s10ManagementO4ViewV5ShareO6ButtonVMa);
  v35 = v93;
  v36 = (v34 + *(v93 + 36));
  *v36 = v32;
  v36[1] = sub_100239940;
  v36[2] = v33;
  v37 = v27 + *(v10 + 44);
  v38 = *v37;
  v39 = *(v37 + 8);
  v105 = v38;
  v106 = v39;
  sub_10010FC20(&qword_1011B2DD8, &qword_100F05F50);
  State.projectedValue.getter();
  v88 = v27;
  sub_100B8D7C0(v27, v13, v92);
  v83 = v23;
  v40 = (v23 + 16) & ~v23;
  v41 = swift_allocObject();
  v92 = v13;
  sub_100B8D828(v13, v41 + v40, v91);
  sub_10010FC20(&qword_1011B4D60, &unk_100F05910);
  sub_100B9043C();
  v42 = v95;
  sub_100B8F4D8(&qword_1011B4D88, &qword_1011B4D60, &unk_100F05910, sub_100B8D4C8);
  v43 = v35;
  v44 = v103;
  View.sheet<A>(isPresented:onDismiss:content:)();

  v45 = 1;
  v46 = v94;

  sub_1000095E8(v44, &qword_1011B4D50, &qword_100F05870);
  v47 = [objc_opt_self() currentTraitCollection];
  v48 = [v47 userInterfaceIdiom];

  if (v48 != 6)
  {
    v49 = v92;
    sub_100B8D7C0(v88, v92, type metadata accessor for Collaboration.Management.View);
    v50 = swift_allocObject();
    sub_100B8D828(v49, v50 + v40, type metadata accessor for Collaboration.Management.View);
    v51 = swift_getKeyPath();
    v52 = v84;
    v53 = v86;
    *&v86[*(v84 + 24)] = v51;
    swift_storeEnumTagMultiPayload();
    v54 = swift_getKeyPath();
    *v53 = 1;
    *(v53 + 8) = sub_100B90524;
    *(v53 + 16) = v50;
    v55 = v53 + *(v52 + 28);
    *v55 = v54;
    *(v55 + 8) = 0;
    v56 = v87;
    sub_100B71CC8(v87);
    v57 = v79(v56, 1, v80) == 1;
    sub_1000095E8(v56, &qword_1011B0C20, &qword_100EFF510);
    v58 = swift_getKeyPath();
    v59 = swift_allocObject();
    *(v59 + 16) = v57;
    v60 = v85;
    sub_100B8D828(v53, v85, _s10ManagementO4ViewV5ShareO6ButtonVMa);
    v61 = (v60 + *(v43 + 36));
    *v61 = v58;
    v61[1] = sub_1005024EC;
    v61[2] = v59;
    v62 = v60;
    v63 = v90;
    sub_10003D17C(v62, v90, &qword_1011B4D50, &qword_100F05870);
    v64 = (v63 + *(v42 + 36));
    *v64 = sub_100B7C5F0;
    v64[1] = 0;
    v65 = v63;
    v66 = v89;
    sub_10003D17C(v65, v89, &qword_1011B4D40, &qword_100F05860);
    sub_10003D17C(v66, v46, &qword_1011B4D40, &qword_100F05860);
    v45 = 0;
  }

  v67 = v46;
  (*(v99 + 56))(v46, v45, 1, v42);
  v69 = v96;
  v68 = v97;
  v70 = *(v97 + 16);
  v71 = v104;
  v72 = v98;
  v70(v96, v104, v98);
  v73 = v100;
  sub_1000089F8(v46, v100, &qword_1011B4D48, &qword_100F05868);
  v74 = v101;
  v70(v101, v69, v72);
  v75 = sub_10010FC20(&qword_1011B4D90, &qword_100F05920);
  sub_1000089F8(v73, &v74[*(v75 + 48)], &qword_1011B4D48, &qword_100F05868);
  sub_1000095E8(v67, &qword_1011B4D48, &qword_100F05868);
  v76 = *(v68 + 8);
  v76(v71, v72);
  sub_1000095E8(v73, &qword_1011B4D48, &qword_100F05868);
  return (v76)(v69, v72);
}

uint64_t sub_100B7BFF8(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = (a1 + *(type metadata accessor for Collaboration.Management.View(0) + 36));
  v7 = *v6;
  v8 = *(v6 + 1);
  v14[16] = v7;
  v15 = v8;
  v14[15] = 1;
  sub_10010FC20(&qword_1011B2DD8, &qword_100F05F50);
  State.wrappedValue.setter();
  v9 = Logger.collaboration.unsafeMutableAddressor();
  (*(v3 + 16))(v5, v9, v2);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "[Management] Share Sheet button tapped", v12, 2u);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_100B7C1A0@<X0>(uint64_t *a2@<X8>)
{
  v3 = type metadata accessor for Playlist();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = (&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10010FC20(&qword_1011B0C20, &qword_100EFF510);
  __chkstk_darwin();
  v8 = &v15 - v7;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100B71CC8(v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    result = sub_1000095E8(v8, &qword_1011B0C20, &qword_100EFF510);
    v14 = 0;
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    swift_getKeyPath();
    v16 = v3;
    swift_getKeyPath();

    static Published.subscript.getter(v6);

    v14 = Collaboration.Manager.activityViewController(for:url:)();

    (*(v4 + 8))(v6, v16);
    result = (*(v10 + 8))(v12, v9);
  }

  *a2 = v14;
  return result;
}

uint64_t sub_100B7C448(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = (a1 + *(type metadata accessor for Collaboration.Management.View(0) + 40));
  v7 = *v6;
  v8 = *(v6 + 1);
  v14[16] = v7;
  v15 = v8;
  v14[15] = 1;
  sub_10010FC20(&qword_1011B2DD8, &qword_100F05F50);
  State.wrappedValue.setter();
  v9 = Logger.collaboration.unsafeMutableAddressor();
  (*(v3 + 16))(v5, v9, v2);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "[Management] QRCode button tapped", v12, 2u);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_100B7C618@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v38 = *(type metadata accessor for Collaboration.Management.View(0) - 8);
  v3 = *(v38 + 64);
  __chkstk_darwin();
  v40 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10010FC20(&qword_1011B4CE0, &qword_100F05810);
  __chkstk_darwin();
  v6 = &v31 - v5;
  v7 = sub_10010FC20(&qword_1011B4CE8, &qword_100F05818);
  __chkstk_darwin();
  v9 = &v31 - v8;
  v10 = sub_10010FC20(&qword_1011B4CF0, &qword_100F05820);
  __chkstk_darwin();
  v12 = &v31 - v11;
  v39 = a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v42);

  if (v42 == 1)
  {
    *v12 = static VerticalAlignment.center.getter();
    *(v12 + 1) = 0x4020000000000000;
    v12[16] = 0;
    v13 = sub_10010FC20(&qword_1011B4D30, &qword_100F05840);
    sub_100B7CB30(&v12[*(v13 + 44)]);
    sub_1000089F8(v12, v9, &qword_1011B4CF0, &qword_100F05820);
    swift_storeEnumTagMultiPayload();
    sub_100020674(&qword_1011B4D08, &qword_1011B4CF0, &qword_100F05820, &protocol conformance descriptor for HStack<A>);
    sub_100B9017C();
    v14 = v41;
    _ConditionalContent<>.init(storage:)();
    sub_1000095E8(v12, &qword_1011B4CF0, &qword_100F05820);
    v15 = 0;
    v16 = v14;
  }

  else
  {
    v36 = v7;
    v37 = v10;
    v16 = v41;
    sub_100B71154();
    if (v17)
    {
      LocalizedStringKey.init(_:)();
      v18 = Text.init(_:tableName:bundle:comment:)();
      v33 = v19;
      v34 = v18;
      v32 = v20;
      v35 = v21;
      v31 = static Color.accentColor.getter();
      KeyPath = swift_getKeyPath();
      v23 = swift_getKeyPath();
      v24 = v40;
      sub_100B8D7C0(v39, v40, type metadata accessor for Collaboration.Management.View);
      v25 = (*(v38 + 80) + 16) & ~*(v38 + 80);
      v26 = swift_allocObject();
      sub_100B8D828(v24, v26 + v25, type metadata accessor for Collaboration.Management.View);
      v27 = &v6[*(v4 + 36)];
      sub_10010FC20(&qword_1011B4D00, &qword_100F05830);
      OpenURLAction.init(handler:)();
      *v27 = v23;
      v28 = v33;
      *v6 = v34;
      *(v6 + 1) = v28;
      v6[16] = v32 & 1;
      *(v6 + 3) = v35;
      *(v6 + 4) = KeyPath;
      *(v6 + 5) = v31;
      sub_1000089F8(v6, v9, &qword_1011B4CE0, &qword_100F05810);
      swift_storeEnumTagMultiPayload();
      sub_100020674(&qword_1011B4D08, &qword_1011B4CF0, &qword_100F05820, &protocol conformance descriptor for HStack<A>);
      sub_100B9017C();
      _ConditionalContent<>.init(storage:)();
      sub_1000095E8(v6, &qword_1011B4CE0, &qword_100F05810);
      v15 = 0;
    }

    else
    {
      v15 = 1;
    }
  }

  v29 = sub_10010FC20(&qword_1011B4CF8, &qword_100F05828);
  return (*(*(v29 - 8) + 56))(v16, v15, 1, v29);
}

uint64_t sub_100B7CB30@<X0>(char *a1@<X8>)
{
  v32 = a1;
  type metadata accessor for Locale();
  __chkstk_darwin();
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v30 - v5;
  v7 = sub_10010FC20(&qword_1011B47D8, &qword_100F051C8);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v30 - v11;
  ProgressView<>.init<>()();
  String.LocalizationValue.init(stringLiteral:)();
  (*(v2 + 16))(v4, v6, v1);
  if (qword_1011B0430 != -1)
  {
    swift_once();
  }

  v13 = qword_10121B340;
  static Locale.current.getter();
  v14 = String.init(localized:table:bundle:locale:comment:)();
  v16 = v15;
  (*(v2 + 8))(v6, v1);
  v33 = v14;
  v34 = v16;
  sub_1000098E0();
  v17 = Text.init<A>(_:)();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = *(v8 + 16);
  v24(v10, v12, v7);
  v31 = v12;
  v25 = v10;
  v26 = v32;
  v24(v32, v25, v7);
  v27 = &v26[*(sub_10010FC20(&qword_1011B4D38, &qword_100F05848) + 48)];
  *v27 = v17;
  *(v27 + 1) = v19;
  v27[16] = v21 & 1;
  *(v27 + 3) = v23;
  sub_10021D0C0(v17, v19, v21 & 1);
  v28 = *(v8 + 8);

  v28(v31, v7);
  sub_10011895C(v17, v19, v21 & 1);

  return (v28)(v25, v7);
}

uint64_t sub_100B7CF10(uint64_t a1, uint64_t a2)
{
  sub_10010FC20(&qword_1011B62E0, &qword_100F06260);
  __chkstk_darwin();
  v4 = &v9[-v3];
  v5 = *(a2 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v9[15] = 1;

  static Published.subscript.setter();
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v5;

  sub_100B284E0(0, 0, v4, &unk_100F05858, v7);

  return static OpenURLAction.Result.handled.getter();
}

uint64_t sub_100B7D07C@<X0>(uint64_t a1@<X8>)
{
  sub_10010FC20(&qword_1011B0C20, &qword_100EFF510);
  __chkstk_darwin();
  v3 = &v26 - v2;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100B71CC8(v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    result = sub_1000095E8(v3, &qword_1011B0C20, &qword_100EFF510);
    v9 = 0;
    v10 = 0;
LABEL_6:
    v17 = 0;
    v19 = 0;
    v21 = 0;
    v23 = 0;
    v25 = 0;
    v24 = 0uLL;
    goto LABEL_7;
  }

  (*(v5 + 32))(v7, v3, v4);
  v11 = URL.dataRepresentation.getter();
  v13 = QRCode.init(data:errorCorrectionLevel:)(v11, v12, 76, &v27);
  v14 = *(&v27 + 1);
  v15 = v28;
  v16 = v29;
  result = (*(v5 + 8))(v7, v4, v13);
  v10 = v29;
  if (!v29)
  {
    v9 = 0;
    goto LABEL_6;
  }

  v17 = v30;
  v9 = v28;
  v26 = v27;
  sub_10002BC44(v14, v15);
  v18 = v16;
  v19 = static SafeAreaRegions.all.getter();
  v20 = static Edge.Set.all.getter();
  v21 = static Alignment.center.getter();
  v23 = v22;
  result = sub_1000095E8(&v27, &qword_1011B4C40, &qword_100F05770);
  v24 = v26;
  v25 = v20;
LABEL_7:
  *a1 = v24;
  *(a1 + 16) = v9;
  *(a1 + 24) = v10;
  *(a1 + 32) = v17;
  *(a1 + 40) = v19;
  *(a1 + 48) = v25;
  *(a1 + 56) = v21;
  *(a1 + 64) = v23;
  return result;
}

uint64_t sub_100B7D2D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_10010FC20(&unk_1011B4540, &qword_100F010B0);
  __chkstk_darwin();
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v9 = &v19[-v8];
  v10 = type metadata accessor for Playlist.Collaborator();
  v11 = *(v10 - 8);
  (*(v11 + 16))(a3, a1, v10);
  v12 = *(a2 + 8);
  KeyPath = swift_getKeyPath();
  v14 = _s10ManagementO4ViewV19CollaboratorRowViewVMa(0);
  *(a3 + v14[9]) = KeyPath;
  sub_10010FC20(&unk_1011B08A0, &qword_100EFDF18);
  swift_storeEnumTagMultiPayload();
  *(a3 + v14[5]) = v12;
  v15 = a3 + v14[6];
  v19[15] = 0;

  State.init(wrappedValue:)();
  v16 = v20;
  *v15 = v19[16];
  *(v15 + 8) = v16;
  (*(v11 + 56))(v9, 1, 1, v10);
  sub_1000089F8(v9, v7, &unk_1011B4540, &qword_100F010B0);
  State.init(wrappedValue:)();
  sub_1000095E8(v9, &unk_1011B4540, &qword_100F010B0);
  v17 = v14[8];
  *(a3 + v17) = swift_getKeyPath();
  sub_10010FC20(&unk_1011B3D50, &qword_100EFDEE0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_100B7D518@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a1;
  v35 = a2;
  v3 = type metadata accessor for BorderlessButtonStyle();
  v4 = *(v3 - 8);
  v31 = v3;
  v32 = v4;
  __chkstk_darwin();
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (type metadata accessor for Collaboration.Management.View(0) - 8);
  v8 = *v7;
  v9 = *(*v7 + 64);
  __chkstk_darwin();
  v10 = sub_10010FC20(&qword_1011B4BE0, &qword_100F05720);
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v30 - v12;
  v14 = sub_10010FC20(&qword_1011B4BD8, &qword_100F05718);
  v15 = *(v14 - 8);
  v33 = v14;
  v34 = v15;
  __chkstk_darwin();
  v17 = &v30 - v16;
  sub_100B8D7C0(a1, &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Collaboration.Management.View);
  v18 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v19 = swift_allocObject();
  sub_100B8D828(&v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for Collaboration.Management.View);
  sub_10010FC20(&qword_1011B4BF8, &qword_100F05728);
  sub_100B8F990();
  Button.init(action:label:)();
  BorderlessButtonStyle.init()();
  v20 = sub_100020674(&qword_1011B4BE8, &qword_1011B4BE0, &qword_100F05720, &protocol conformance descriptor for Button<A>);
  v21 = sub_100B8C798(&qword_1011B4BF0, &type metadata accessor for BorderlessButtonStyle, &protocol conformance descriptor for BorderlessButtonStyle);
  v22 = v31;
  View.buttonStyle<A>(_:)();
  v23 = v22;
  (*(v32 + 8))(v6, v22);
  (*(v11 + 8))(v13, v10);
  v24 = v30;
  v25 = v30 + v7[14];
  v26 = *v25;
  v27 = *(v25 + 8);
  v41 = v26;
  v42 = v27;
  sub_10010FC20(&qword_1011B2DD8, &qword_100F05F50);
  State.projectedValue.getter();
  v36 = v24;
  v37 = v10;
  v38 = v23;
  v39 = v20;
  v40 = v21;
  swift_getOpaqueTypeConformance2();
  v28 = v33;
  View.alert(isPresented:content:)();

  return (*(v34 + 8))(v17, v28);
}

uint64_t sub_100B7D9B0(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = (a1 + *(type metadata accessor for Collaboration.Management.View(0) + 48));
  v7 = *v6;
  v8 = *(v6 + 1);
  v14[16] = v7;
  v15 = v8;
  v14[15] = 1;
  sub_10010FC20(&qword_1011B2DD8, &qword_100F05F50);
  State.wrappedValue.setter();
  v9 = Logger.collaboration.unsafeMutableAddressor();
  (*(v3 + 16))(v5, v9, v2);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "[Management] Remove Join Request button tapped", v12, 2u);
  }

  return (*(v3 + 8))(v5, v2);
}

__n128 sub_100B7DB58@<Q0>(uint64_t a1@<X8>)
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = v25 - v6;
  String.LocalizationValue.init(stringLiteral:)();
  (*(v3 + 16))(v5, v7, v2);
  if (qword_1011B0430 != -1)
  {
    swift_once();
  }

  v8 = qword_10121B340;
  static Locale.current.getter();
  v9 = String.init(localized:table:bundle:locale:comment:)();
  v11 = v10;
  (*(v3 + 8))(v7, v2);
  *&v25[0] = v9;
  *(&v25[0] + 1) = v11;
  sub_1000098E0();
  v12 = Text.init<A>(_:)();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v19 = v16 & 1;
  v26 = v16 & 1;
  v20 = static Color.red.getter();
  KeyPath = swift_getKeyPath();
  *a1 = v12;
  *(a1 + 8) = v14;
  *(a1 + 16) = v19;
  *(a1 + 24) = v18;
  v22 = v25[5];
  *(a1 + 96) = v25[4];
  *(a1 + 112) = v22;
  *(a1 + 128) = v25[6];
  v23 = v25[1];
  *(a1 + 32) = v25[0];
  *(a1 + 48) = v23;
  result = v25[3];
  *(a1 + 64) = v25[2];
  *(a1 + 80) = result;
  *(a1 + 144) = KeyPath;
  *(a1 + 152) = v20;
  return result;
}

uint64_t sub_100B7DE00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a1;
  v57 = a2;
  v51 = *(type metadata accessor for Collaboration.Management.View(0) - 8);
  __chkstk_darwin();
  v52 = v2;
  v54 = v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Alert.Button();
  __chkstk_darwin();
  v56 = v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v55 = v43 - v4;
  type metadata accessor for Locale();
  __chkstk_darwin();
  v5 = type metadata accessor for String.LocalizationValue();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = v43 - v9;
  String.LocalizationValue.init(stringLiteral:)();
  v11 = *(v6 + 16);
  v43[4] = v6 + 16;
  v44 = v11;
  v11(v8, v10, v5);
  if (qword_1011B0430 != -1)
  {
    swift_once();
  }

  v12 = qword_10121B340;
  v13 = qword_10121B340;
  v58 = v12;
  v14 = v13;
  static Locale.current.getter();
  v15 = v14;
  v16 = String.init(localized:table:bundle:locale:comment:)();
  v18 = v17;
  v19 = *(v6 + 8);
  v19(v10, v5);
  v43[1] = v6 + 8;
  v59 = v16;
  v60 = v18;
  v43[0] = sub_1000098E0();
  v20 = Text.init<A>(_:)();
  v49 = v21;
  v50 = v20;
  v47 = v22;
  v48 = v23;
  String.LocalizationValue.init(stringLiteral:)();
  v24 = v44;
  v44(v8, v10, v5);
  static Locale.current.getter();
  v25 = String.init(localized:table:bundle:locale:comment:)();
  v27 = v26;
  v19(v10, v5);
  v59 = v25;
  v60 = v27;
  v46 = Text.init<A>(_:)();
  v43[3] = v28;
  v45 = v29;
  v43[2] = v30 & 1;
  String.LocalizationValue.init(stringLiteral:)();
  v24(v8, v10, v5);
  static Locale.current.getter();
  v31 = String.init(localized:table:bundle:locale:comment:)();
  v33 = v32;
  v19(v10, v5);
  v59 = v31;
  v60 = v33;
  v34 = Text.init<A>(_:)();
  v36 = v35;
  v38 = v37;
  v39 = v54;
  sub_100B8D7C0(v53, v54, type metadata accessor for Collaboration.Management.View);
  v40 = (*(v51 + 80) + 16) & ~*(v51 + 80);
  v41 = swift_allocObject();
  sub_100B8D828(v39, v41 + v40, type metadata accessor for Collaboration.Management.View);
  static Alert.Button.destructive(_:action:)();
  sub_10011895C(v34, v36, v38 & 1);

  static Alert.Button.cancel(_:)();
  return Alert.init(title:message:primaryButton:secondaryButton:)();
}

uint64_t sub_100B7E3B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DismissAction();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = (&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10010FC20(&qword_1011B62E0, &qword_100F06260);
  __chkstk_darwin();
  v10 = &v15 - v9;
  v11 = *(a1 + 8);
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v11;

  sub_100B284E0(0, 0, v10, a3, v13);

  type metadata accessor for Collaboration.Management.View(0);
  sub_100B4D18C(v8);
  DismissAction.callAsFunction()();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100B7E57C(uint64_t a1)
{
  v2 = *(type metadata accessor for Collaboration.Management.View(0) - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v8);

  sub_100B8D7C0(a1, &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Collaboration.Management.View);
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_100B8D828(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4, type metadata accessor for Collaboration.Management.View);
  sub_10010FC20(&qword_1011B3CB0, &qword_100F047A0);
  _s10ManagementO4ViewV19CollaboratorRowViewVMa(0);
  sub_100020674(&qword_1011B4C18, &qword_1011B3CB0, &qword_100F047A0, &protocol conformance descriptor for [A]);
  sub_100B8C798(&qword_1011B4BB0, _s10ManagementO4ViewV19CollaboratorRowViewVMa, &unk_100F04FD0);
  sub_100B8C798(&qword_1011B4C20, &type metadata accessor for Playlist.Collaborator, &protocol conformance descriptor for Playlist.Collaborator);
  return ForEach<>.init(_:content:)();
}

uint64_t sub_100B7E7EC@<X0>(uint64_t a2@<X8>)
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  v3 = type metadata accessor for String.LocalizationValue();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v21[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v21[-1] - v7;
  type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v21);

  v9 = *(v21[0] + 16);

  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v10);
  v21[0] = v9;
  String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
  v11._object = 0x8000000100E66060;
  v11._countAndFlagsBits = 0xD000000000000010;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v11);
  String.LocalizationValue.init(stringInterpolation:)();
  (*(v4 + 16))(v6, v8, v3);
  if (qword_1011B0430 != -1)
  {
    swift_once();
  }

  v12 = qword_10121B340;
  static Locale.current.getter();
  v13 = String.init(localized:table:bundle:locale:comment:)();
  v15 = v14;
  (*(v4 + 8))(v8, v3);
  v21[0] = v13;
  v21[1] = v15;
  sub_1000098E0();
  result = Text.init<A>(_:)();
  *a2 = result;
  *(a2 + 8) = v17;
  *(a2 + 16) = v18 & 1;
  *(a2 + 24) = v19;
  return result;
}

uint64_t sub_100B7EAEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for Collaboration.Management.View(0) - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  *a2 = static VerticalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v12 = *(sub_10010FC20(&qword_1011B4C28, &qword_100F05748) + 44);
  sub_100B8D7C0(a1, &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Collaboration.Management.View);
  type metadata accessor for MainActor();
  v6 = static MainActor.shared.getter();
  v7 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = &protocol witness table for MainActor;
  sub_100B8D828(&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for Collaboration.Management.View);
  sub_100B8D7C0(a1, &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Collaboration.Management.View);
  v9 = static MainActor.shared.getter();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = &protocol witness table for MainActor;
  sub_100B8D828(&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v7, type metadata accessor for Collaboration.Management.View);
  Binding.init(get:set:)();
  return Toggle.init(isOn:label:)();
}

void sub_100B7ED2C(BOOL *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  *a2 = (v3 & 1) == 0;
}

double sub_100B7EDB4(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10010FC20(&qword_1011B62E0, &qword_100F06260);
  __chkstk_darwin();
  v7 = &v14[-v6];
  v8 = *a1;
  v9 = *(a4 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v10 = (v8 & 1) == 0;
  v14[15] = v10;

  static Published.subscript.setter();
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  *(v12 + 32) = v9;
  *(v12 + 40) = v10;

  sub_100B287E0(0, 0, v7, &unk_100F05758, v12);

  return result;
}

uint64_t sub_100B7EF24@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = v16 - v6;
  String.LocalizationValue.init(stringLiteral:)();
  (*(v3 + 16))(v5, v7, v2);
  if (qword_1011B0430 != -1)
  {
    swift_once();
  }

  v8 = qword_10121B340;
  static Locale.current.getter();
  v9 = String.init(localized:table:bundle:locale:comment:)();
  v11 = v10;
  (*(v3 + 8))(v7, v2);
  v16[1] = v9;
  v16[2] = v11;
  sub_1000098E0();
  result = Text.init<A>(_:)();
  *a1 = result;
  *(a1 + 8) = v13;
  *(a1 + 16) = v14 & 1;
  *(a1 + 24) = v15;
  return result;
}

__n128 sub_100B7F134@<Q0>(uint64_t a2@<X8>)
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  v3 = type metadata accessor for String.LocalizationValue();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v38[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v8 = &v38[-v7];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v42);

  if ((v42 & 1) == 0)
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v4 + 16))(v6, v8, v3);
    if (qword_1011B0430 != -1)
    {
      swift_once();
    }

    v22 = qword_10121B340;
    static Locale.current.getter();
    v23 = String.init(localized:table:bundle:locale:comment:)();
    v25 = v24;
    (*(v4 + 8))(v8, v3);
    *&v42 = v23;
    *(&v42 + 1) = v25;
    sub_1000098E0();
    v15 = Text.init<A>(_:)();
    v17 = v15;
    v18 = v16;
    *&v39 = v15;
    *(&v39 + 1) = v16;
    v20 = v26 & 1;
    v40.n128_u64[0] = v26 & 1;
    v40.n128_u64[1] = v27;
    LOBYTE(v41) = 0;
    goto LABEL_9;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v42);

  v9 = *(v42 + 16);

  v10 = (v4 + 16);
  if (v9)
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*v10)(v6, v8, v3);
    if (qword_1011B0430 != -1)
    {
      swift_once();
    }

    v11 = qword_10121B340;
    static Locale.current.getter();
    v12 = String.init(localized:table:bundle:locale:comment:)();
    v14 = v13;
    (*(v4 + 8))(v8, v3);
    *&v42 = v12;
    *(&v42 + 1) = v14;
    sub_1000098E0();
    v15 = Text.init<A>(_:)();
    v17 = v15;
    v18 = v16;
    v20 = v19 & 1;
    *&v39 = v15;
    *(&v39 + 1) = v16;
    v40.n128_u64[0] = v19 & 1;
    v40.n128_u64[1] = v21;
    LOBYTE(v41) = 1;
LABEL_9:
    sub_10021D0C0(v15, v16, v20);

    _ConditionalContent<>.init(storage:)();
    v39 = v42;
    v40 = v43;
    v41 = v44;
    sub_10010FC20(&qword_1011B2D40, &unk_100F02B80);
    sub_100B4BD94();
    _ConditionalContent<>.init(storage:)();
    sub_10011895C(v17, v18, v20);

    goto LABEL_10;
  }

  String.LocalizationValue.init(stringLiteral:)();
  (*v10)(v6, v8, v3);
  if (qword_1011B0430 != -1)
  {
    swift_once();
  }

  v31 = qword_10121B340;
  static Locale.current.getter();
  v32 = String.init(localized:table:bundle:locale:comment:)();
  v34 = v33;
  (*(v4 + 8))(v8, v3);
  *&v42 = v32;
  *(&v42 + 1) = v34;
  sub_1000098E0();
  *&v39 = Text.init<A>(_:)();
  *(&v39 + 1) = v35;
  v40.n128_u64[0] = v36 & 1;
  v40.n128_u64[1] = v37;
  v41 = 256;
  sub_10010FC20(&qword_1011B2D40, &unk_100F02B80);
  sub_100B4BD94();
  _ConditionalContent<>.init(storage:)();
LABEL_10:
  result = v43;
  v29 = v44;
  v30 = v45;
  *a2 = v42;
  *(a2 + 16) = result;
  *(a2 + 32) = v29;
  *(a2 + 33) = v30;
  return result;
}

uint64_t sub_100B7F6F8(uint64_t a1)
{
  type metadata accessor for ToolbarItemPlacement();
  __chkstk_darwin();
  v2 = sub_10010FC20(&qword_1011B3DC0, &qword_100F048C0);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v7[-v4];
  static ToolbarItemPlacement.topBarLeading.getter();
  v8 = a1;
  sub_10010FC20(&qword_1011B4A78, &qword_100F05638);
  sub_100020674(&qword_1011B4A80, &qword_1011B4A78, &qword_100F05638, &protocol conformance descriptor for Button<A>);
  ToolbarItem<>.init(placement:content:)();
  sub_100020674(&qword_1011B3DC8, &qword_1011B3DC0, &qword_100F048C0, &protocol conformance descriptor for ToolbarItem<A, B>);
  static ToolbarContentBuilder.buildBlock<A>(_:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_100B7F8E4(uint64_t a1)
{
  v2 = *(type metadata accessor for Collaboration.Management.View(0) - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  type metadata accessor for ButtonRole();
  __chkstk_darwin();
  static ButtonRole.close.getter();
  sub_100B8D7C0(a1, &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Collaboration.Management.View);
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_100B8D828(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4, type metadata accessor for Collaboration.Management.View);
  return Button<>.init(role:action:)();
}

uint64_t sub_100B7FA60(uint64_t a1, __n128 a2)
{
  v17 = type metadata accessor for EnvironmentValues();
  v3 = *(v17 - 8);
  __chkstk_darwin();
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_1011B0890, &qword_100F06E90);
  __chkstk_darwin();
  v7 = &v16 - v6;
  v8 = type metadata accessor for DismissAction();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Collaboration.Management.View(0);
  sub_1000089F8(a1 + *(v12 + 20), v7, &unk_1011B0890, &qword_100F06E90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    v13 = static os_log_type_t.fault.getter();
    v14 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v13, &_mh_execute_header, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v17);
  }

  DismissAction.callAsFunction()();
  return (*(v9 + 8))(v11, v8);
}

void sub_100B7FCE8(uint64_t a1, _BYTE *a2)
{
  v3 = type metadata accessor for DismissAction();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = (&v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*a2 == 1)
  {
    type metadata accessor for Collaboration.Management.View(0);
    sub_100B4D18C(v6);
    DismissAction.callAsFunction()();
    (*(v4 + 8))(v6, v3);
  }
}

void sub_100B7FDDC()
{
  v0 = [objc_opt_self() currentTraitCollection];
  v1 = [v0 userInterfaceIdiom];

  byte_1011B3BF0 = v1 == 6;
}

void sub_100B7FE74(uint64_t a1)
{
  if (qword_1011B0638 != -1)
  {
    swift_once();
  }

  if (byte_1011B3BF0 == 1)
  {
    v1 = static Font.largeTitle.getter();
  }

  else
  {
    static Font.title2.getter();
    v1 = Font.bold()();
  }

  qword_1011B3C00 = v1;
}

uint64_t sub_100B7FEFC()
{
  if (qword_1011B0638 != -1)
  {
    result = swift_once();
  }

  v0 = 56.0;
  if (byte_1011B3BF0)
  {
    v0 = 68.0;
  }

  qword_1011B3C08 = *&v0;
  return result;
}

uint64_t sub_100B80008(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  if (qword_1011B0638 != -1)
  {
    v6 = a2;
    v7 = a3;
    swift_once();
    a2 = v6;
    a3 = v7;
  }

  if (byte_1011B3BF0 == 1)
  {
    result = a2();
  }

  else
  {
    result = a3();
  }

  *a4 = result;
  return result;
}

void sub_100B80098(uint64_t a1)
{
  if (qword_1011B0638 != -1)
  {
    swift_once();
  }

  if (byte_1011B3BF0 == 1)
  {
    static Font.Weight.semibold.getter();
  }

  else
  {
    static Font.Weight.regular.getter();
  }

  qword_1011B3C28 = v1;
}

uint64_t sub_100B80100()
{
  if (qword_1011B0638 != -1)
  {
    result = swift_once();
  }

  v0 = 12.0;
  if (byte_1011B3BF0)
  {
    v0 = 0.0;
  }

  qword_1011B3C30 = *&v0;
  return result;
}

uint64_t sub_100B80168()
{
  if (qword_1011B0638 != -1)
  {
    result = swift_once();
  }

  v0 = -4.0;
  if (byte_1011B3BF0)
  {
    v0 = 0.0;
  }

  qword_1011B3C38 = *&v0;
  return result;
}

uint64_t sub_100B801D0()
{
  if (qword_1011B0638 != -1)
  {
    result = swift_once();
  }

  v0 = 32.0;
  if (byte_1011B3BF0)
  {
    v0 = 44.0;
  }

  qword_1011B3C40 = *&v0;
  return result;
}

uint64_t sub_100B80240()
{
  if (qword_1011B0638 != -1)
  {
    result = swift_once();
  }

  v0 = 84.0;
  if (byte_1011B3BF0)
  {
    v0 = 169.0;
  }

  qword_1011B3C48 = *&v0;
  return result;
}

uint64_t sub_100B802B4()
{
  if (qword_1011B0638 != -1)
  {
    result = swift_once();
  }

  v0 = 38.0;
  if (byte_1011B3BF0)
  {
    v0 = 48.0;
  }

  qword_1011B3C50 = *&v0;
  return result;
}

uint64_t sub_100B80324(uint64_t a1)
{
  if (qword_1011B0638 != -1)
  {
    swift_once();
  }

  if (byte_1011B3BF0 == 1)
  {
    result = static Color.accentColor.getter();
  }

  else
  {
    if (qword_1011B04D0 != -1)
    {
      swift_once();
    }

    v2 = static UIColor.MusicTint.normal;
    result = Color.init(_:)();
  }

  qword_1011B3C58 = result;
  return result;
}

uint64_t sub_100B803CC()
{
  v0 = type metadata accessor for DynamicTypeSize();
  sub_100006080(v0, qword_1011B3C60);
  v1 = sub_1000060E4(v0, qword_1011B3C60);
  v2 = enum case for DynamicTypeSize.accessibility2(_:);
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_100B80454()
{
  v0 = type metadata accessor for DynamicTypeSize();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10010FC20(&qword_1011B4888, &qword_100F05258);
  sub_100006080(v4, qword_1011B3C78);
  v5 = sub_1000060E4(v4, qword_1011B3C78);
  if (qword_1011B06A8 != -1)
  {
    swift_once();
  }

  v6 = sub_1000060E4(v0, qword_1011B3C60);
  (*(v1 + 16))(v3, v6, v0);
  sub_100B8C798(&unk_1011B48D0, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    return (*(v1 + 32))(v5, v3, v0);
  }

  __break(1u);
  return result;
}

uint64_t sub_100B80624@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v42 = type metadata accessor for AccessibilityTraits();
  v40 = *(v42 - 8);
  __chkstk_darwin();
  v39 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for AccessibilityChildBehavior();
  v37 = *(v3 - 8);
  v38 = v3;
  __chkstk_darwin();
  v36 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10010FC20(&qword_1011B4658, &qword_100F05020);
  __chkstk_darwin();
  v7 = &v29 - v6;
  v30 = sub_10010FC20(&qword_1011B4660, &qword_100F05028);
  v31 = *(v30 - 8);
  __chkstk_darwin();
  v9 = &v29 - v8;
  v32 = sub_10010FC20(&qword_1011B4668, &qword_100F05030);
  v33 = *(v32 - 8);
  __chkstk_darwin();
  v11 = &v29 - v10;
  v34 = sub_10010FC20(&qword_1011B4670, &qword_100F05038);
  v35 = *(v34 - 8);
  __chkstk_darwin();
  v29 = &v29 - v12;
  *v7 = static VerticalAlignment.center.getter();
  *(v7 + 1) = 0x4028000000000000;
  v7[16] = 0;
  v13 = sub_10010FC20(&qword_1011B4678, &qword_100F05040);
  sub_100B80C44(v1, &v7[*(v13 + 44)]);
  v7[*(v5 + 36)] = 0;
  v44 = v1;
  v14 = sub_10010FC20(&qword_1011B4680, &qword_100F05048);
  v15 = sub_100B8D5F0();
  v16 = sub_100B8F4D8(&unk_1011B46B0, &qword_1011B4680, &qword_100F05048, sub_100B8D6D4);
  View.swipeActions<A>(edge:allowsFullSwipe:content:)();
  sub_1000095E8(v7, &qword_1011B4658, &qword_100F05020);
  v17 = v1 + *(_s10ManagementO4ViewV19CollaboratorRowViewVMa(0) + 24);
  v18 = *v17;
  v19 = *(v17 + 8);
  v49 = v18;
  v50 = v19;
  sub_10010FC20(&qword_1011B2DD8, &qword_100F05F50);
  State.projectedValue.getter();
  v43 = v1;
  v45 = v5;
  v46 = v14;
  v47 = v15;
  v48 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v21 = v30;
  View.alert(isPresented:content:)();

  (*(v31 + 8))(v9, v21);
  v22 = v36;
  static AccessibilityChildBehavior.combine.getter();
  v45 = v21;
  v46 = OpaqueTypeConformance2;
  v23 = swift_getOpaqueTypeConformance2();
  v24 = v29;
  v25 = v32;
  View.accessibilityElement(children:)();
  (*(v37 + 8))(v22, v38);
  (*(v33 + 8))(v11, v25);
  v26 = v39;
  static AccessibilityTraits.isButton.getter();
  v45 = v25;
  v46 = v23;
  swift_getOpaqueTypeConformance2();
  v27 = v34;
  View.accessibilityAddTraits(_:)();
  (*(v40 + 8))(v26, v42);
  return (*(v35 + 8))(v24, v27);
}

uint64_t sub_100B80C44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v146 = a2;
  v3 = _s10ManagementO4ViewV19CollaboratorRowViewVMa(0);
  v109 = *(v3 - 8);
  __chkstk_darwin();
  v110 = v4;
  v111 = &v108 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_10010FC20(&qword_1011B4700, &qword_100F05100);
  __chkstk_darwin();
  v116 = &v108 - v5;
  v115 = sub_10010FC20(&qword_1011B4708, &qword_100F05108);
  __chkstk_darwin();
  v112 = &v108 - v6;
  v7 = sub_10010FC20(&qword_1011B4710, &qword_100F05110);
  v143 = *(v7 - 8);
  v144 = v7;
  __chkstk_darwin();
  v114 = &v108 - v8;
  v9 = type metadata accessor for Playlist();
  v139 = *(v9 - 8);
  v140 = v9;
  __chkstk_darwin();
  v138 = (&v108 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10010FC20(&qword_1011B4718, &unk_100F05118);
  __chkstk_darwin();
  v145 = &v108 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v147 = &v108 - v12;
  sub_10010FC20(&qword_1011B4720, &qword_100F02D00);
  __chkstk_darwin();
  v127 = &v108 - v13;
  v14 = type metadata accessor for Artwork.CropStyle();
  v128 = *(v14 - 8);
  v129 = v14;
  __chkstk_darwin();
  v126 = &v108 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_1011B55F0, &unk_100EFFDC0);
  __chkstk_darwin();
  v122 = &v108 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v121 = &v108 - v17;
  v18 = type metadata accessor for ArtworkImage();
  v130 = *(v18 - 8);
  v131 = v18;
  __chkstk_darwin();
  v133 = &v108 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v123 = &v108 - v20;
  __chkstk_darwin();
  v125 = &v108 - v21;
  __chkstk_darwin();
  v135 = &v108 - v22;
  v136 = type metadata accessor for ArtworkImage.ReusePolicy();
  v134 = *(v136 - 8);
  __chkstk_darwin();
  v149 = &v108 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = *(type metadata accessor for ArtworkImage.Placeholder(0) - 8);
  v24 = *(v117 + 64);
  __chkstk_darwin();
  v118 = &v108 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v132 = &v108 - v25;
  sub_10010FC20(&qword_1011B5930, &qword_100EFDE70);
  __chkstk_darwin();
  v120 = &v108 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v119 = &v108 - v27;
  __chkstk_darwin();
  v148 = &v108 - v28;
  v151 = sub_10010FC20(&qword_1011B4728, &qword_100F05128);
  v137 = *(v151 - 8);
  __chkstk_darwin();
  v124 = &v108 - v29;
  v30 = type metadata accessor for DynamicTypeSize();
  v31 = *(v30 - 8);
  __chkstk_darwin();
  v33 = &v108 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v35 = &v108 - v34;
  sub_10010FC20(&unk_1011B4730, &unk_100F05130);
  __chkstk_darwin();
  v142 = &v108 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v38 = &v108 - v37;
  v141 = v3;
  v39 = a1;
  sub_100B4CD34(v35);
  if (qword_1011B06A8 != -1)
  {
    swift_once();
  }

  v40 = sub_1000060E4(v30, qword_1011B3C60);
  (*(v31 + 16))(v33, v40, v30);
  sub_100B8C798(&qword_1011B1658, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  v41 = dispatch thunk of static Comparable.< infix(_:_:)();
  v42 = *(v31 + 8);
  v42(v33, v30);
  v42(v35, v30);
  v43 = 1;
  v44 = 1;
  v45 = v39;
  v46 = v38;
  v47 = v151;
  v150 = v38;
  if ((v41 & 1) == 0)
  {
    v48 = v148;
    sub_100B82320(v148);
    v49 = sub_10010FC20(&unk_1011B4740, &qword_100F02D08);
    v50 = v132;
    (*(*(v49 - 8) + 56))(v132, 8, 11, v49);
    v174 = 1;
    v172 = 1;
    v170 = 1;
    (*(v134 + 104))(v149, enum case for ArtworkImage.ReusePolicy.reusableForDistinctItems(_:), v136);
    v51 = v118;
    sub_100B8D7C0(v50, v118, type metadata accessor for ArtworkImage.Placeholder);
    v52 = (*(v117 + 80) + 16) & ~*(v117 + 80);
    v53 = swift_allocObject();
    sub_100B8D828(v51, v53 + v52, type metadata accessor for ArtworkImage.Placeholder);
    v118 = v53;
    v54 = v53 + ((v24 + v52 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v54 = 0;
    *(v54 + 8) = v174;
    *(v54 + 9) = *v173;
    *(v54 + 12) = *&v173[3];
    *(v54 + 16) = 0;
    *(v54 + 24) = v172;
    *(v54 + 25) = *v171;
    *(v54 + 28) = *&v171[3];
    *(v54 + 32) = 0;
    *(v54 + 40) = v170;
    *(v54 + 41) = 2;
    v55 = v119;
    sub_1000089F8(v48, v119, &qword_1011B5930, &qword_100EFDE70);
    v56 = type metadata accessor for ArtworkImage.ViewModel(0);
    v57 = *(*(v56 - 8) + 48);
    if (v57(v55, 1, v56) == 1)
    {
      sub_1000095E8(v55, &qword_1011B5930, &qword_100EFDE70);
      v58 = type metadata accessor for Artwork();
      v59 = v121;
      (*(*(v58 - 8) + 56))(v121, 1, 1, v58);
    }

    else
    {
      v60 = type metadata accessor for Artwork();
      v61 = *(v60 - 8);
      v59 = v121;
      (*(v61 + 16))(v121, v55, v60);
      sub_100B8DCA8(v55, type metadata accessor for ArtworkImage.ViewModel);
      (*(v61 + 56))(v59, 0, 1, v60);
    }

    sub_1000089F8(v59, v122, &unk_1011B55F0, &unk_100EFFDC0);
    ArtworkImage.init(_:)();
    sub_1000095E8(v59, &unk_1011B55F0, &unk_100EFFDC0);
    ArtworkImage.artworkReusablePolicy(_:)();
    v62 = v120;
    sub_1000089F8(v148, v120, &qword_1011B5930, &qword_100EFDE70);
    v63 = v57(v62, 1, v56);
    v108 = v45;
    if (v63 == 1)
    {
      sub_1000095E8(v62, &qword_1011B5930, &qword_100EFDE70);
      v64 = v127;
      v65 = v128;
      v66 = v129;
      (*(v128 + 56))(v127, 1, 1, v129);
      v67 = v126;
      v43 = 1;
    }

    else
    {
      v64 = v127;
      sub_1000089F8(v62 + *(v56 + 20), v127, &qword_1011B4720, &qword_100F02D00);
      sub_100B8DCA8(v62, type metadata accessor for ArtworkImage.ViewModel);
      v65 = v128;
      v66 = v129;
      v68 = (*(v128 + 48))(v64, 1, v129);
      v67 = v126;
      v43 = 1;
      if (v68 != 1)
      {
        (*(v65 + 32))(v126, v64, v66);
LABEL_15:
        v70 = v123;
        v71 = v133;
        ArtworkImage.artworkCropStyle(_:)();
        (*(v65 + 8))(v67, v66);
        v72 = v131;
        v73 = *(v130 + 8);
        v73(v71, v131);
        v74 = v125;
        ArtworkImage.artworkIdealAspectRatio(_:contentMode:)();
        v73(v70, v72);
        sub_10010FC20(&qword_1011B33A8, &qword_100F03130);
        sub_100B5A07C();
        v75 = v124;
        ArtworkImage.artworkPlaceholder<A>(_:)();

        v73(v74, v72);
        v73(v135, v72);
        (*(v134 + 8))(v149, v136);
        sub_100B8DCA8(v132, type metadata accessor for ArtworkImage.Placeholder);
        sub_1000095E8(v148, &qword_1011B5930, &qword_100EFDE70);
        v76 = v75 + *(sub_10010FC20(&qword_1011B47A0, &qword_100F05158) + 36);
        *v76 = 0;
        *(v76 + 8) = 0;
        *(v76 + 16) = 2;
        if (qword_1011B0698 != -1)
        {
          swift_once();
        }

        static Alignment.center.getter();
        _FrameLayout.init(width:height:alignment:)();
        v77 = (v75 + *(sub_10010FC20(&qword_1011B47A8, &qword_100F05160) + 36));
        v78 = v165;
        *v77 = v164;
        v77[1] = v78;
        v77[2] = v166;
        v46 = v150;
        v47 = v151;
        v79 = v75 + *(v151 + 36);
        *v79 = 0;
        *(v79 + 8) = 257;
        sub_10003D17C(v75, v46, &qword_1011B4728, &qword_100F05128);
        v44 = 0;
        v45 = v108;
        goto LABEL_18;
      }
    }

    if (qword_1011B0618 != -1)
    {
      swift_once();
    }

    v69 = sub_1000060E4(v66, static Artwork.CropStyle.fallback);
    (*(v65 + 16))(v67, v69, v66);
    if ((*(v65 + 48))(v64, 1, v66) != 1)
    {
      sub_1000095E8(v64, &qword_1011B4720, &qword_100F02D00);
    }

    goto LABEL_15;
  }

LABEL_18:
  (*(v137 + 56))(v46, v44, 1, v47);
  v151 = static HorizontalAlignment.leading.getter();
  LOBYTE(v154[0]) = 1;
  sub_100B827BC(v45, v162);
  *&v161[23] = v162[1];
  *&v161[39] = v162[2];
  *&v161[55] = v162[3];
  v161[71] = v163;
  *&v161[7] = v162[0];
  LODWORD(v149) = LOBYTE(v154[0]);
  swift_getKeyPath();
  swift_getKeyPath();
  v80 = v138;
  static Published.subscript.getter(v138);

  v81 = Playlist.isOwner.getter();
  (*(v139 + 8))(v80, v140);
  if (v81 != 2 && (v81 & 1) != 0)
  {
    v82 = Playlist.Collaborator.isPending.getter();
    if (v82 != 2 && (v82 & 1) != 0)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(v154);

      v83 = sub_100BE4310(v45, v154[0]);

      if (v83)
      {
        v84 = v112;
        ProgressView<>.init<>()();
        if (qword_1011B0688 != -1)
        {
          swift_once();
        }

        static Alignment.center.getter();
        _FrameLayout.init(width:height:alignment:)();
        v85 = (v84 + *(v115 + 36));
        v86 = v168;
        *v85 = v167;
        v85[1] = v86;
        v85[2] = v169;
        sub_1000089F8(v84, v116, &qword_1011B4708, &qword_100F05108);
        swift_storeEnumTagMultiPayload();
        sub_10010FC20(&qword_1011B47C0, &qword_100F051C0);
        sub_100B8DBF0();
        sub_100020674(&unk_1011B47E0, &qword_1011B47C0, &qword_100F051C0, &protocol conformance descriptor for TupleView<A>);
        v87 = v114;
        _ConditionalContent<>.init(storage:)();
        sub_1000095E8(v84, &qword_1011B4708, &qword_100F05108);
      }

      else
      {
        v88 = v111;
        sub_100B8D7C0(v45, v111, _s10ManagementO4ViewV19CollaboratorRowViewVMa);
        v89 = (*(v109 + 80) + 16) & ~*(v109 + 80);
        v90 = swift_allocObject();
        sub_100B8D828(v88, v90 + v89, _s10ManagementO4ViewV19CollaboratorRowViewVMa);
        sub_100B8D7C0(v45, v88, _s10ManagementO4ViewV19CollaboratorRowViewVMa);
        v91 = swift_allocObject();
        sub_100B8D828(v88, v91 + v89, _s10ManagementO4ViewV19CollaboratorRowViewVMa);

        v92 = v116;
        *v116 = 1;
        *(v92 + 1) = sub_100B8DB5C;
        *(v92 + 2) = v90;
        v92[24] = 0;
        *(v92 + 4) = sub_100B8DB6C;
        *(v92 + 5) = v91;

        swift_storeEnumTagMultiPayload();
        sub_10010FC20(&qword_1011B47C0, &qword_100F051C0);
        sub_100B8DBF0();
        sub_100020674(&unk_1011B47E0, &qword_1011B47C0, &qword_100F051C0, &protocol conformance descriptor for TupleView<A>);
        v87 = v114;
        _ConditionalContent<>.init(storage:)();
      }

      sub_10003D17C(v87, v147, &qword_1011B4710, &qword_100F05110);
      v43 = 0;
    }
  }

  v93 = v147;
  (*(v143 + 56))(v147, v43, 1, v144);
  v94 = v46;
  v95 = v142;
  sub_1000089F8(v94, v142, &unk_1011B4730, &unk_100F05130);
  v96 = v145;
  sub_1000089F8(v93, v145, &qword_1011B4718, &unk_100F05118);
  v97 = v146;
  sub_1000089F8(v95, v146, &unk_1011B4730, &unk_100F05130);
  v98 = sub_10010FC20(&qword_1011B47B0, &qword_100F05168);
  v99 = (v97 + v98[12]);
  v100 = v151;
  v152[0] = v151;
  v152[1] = 0;
  v101 = v149;
  LOBYTE(v153[0]) = v149;
  *(v153 + 1) = *v161;
  *(&v153[1] + 1) = *&v161[16];
  *(&v153[2] + 1) = *&v161[32];
  *(&v153[3] + 1) = *&v161[48];
  *(&v153[4] + 1) = *&v161[64];
  v102 = v153[0];
  *v99 = v151;
  v99[1] = v102;
  v103 = v153[1];
  v104 = v153[2];
  v105 = v153[3];
  *(v99 + 73) = *(&v153[3] + 9);
  v99[3] = v104;
  v99[4] = v105;
  v99[2] = v103;
  v106 = v97 + v98[16];
  *v106 = 0;
  *(v106 + 8) = 1;
  sub_1000089F8(v96, v97 + v98[20], &qword_1011B4718, &unk_100F05118);
  sub_1000089F8(v152, v154, &qword_1011B47B8, &qword_100F05170);
  sub_1000095E8(v93, &qword_1011B4718, &unk_100F05118);
  sub_1000095E8(v150, &unk_1011B4730, &unk_100F05130);
  sub_1000095E8(v96, &qword_1011B4718, &unk_100F05118);
  v154[0] = v100;
  v154[1] = 0;
  v155 = v101;
  v157 = *&v161[16];
  v158 = *&v161[32];
  v159 = *&v161[48];
  v160 = *&v161[64];
  v156 = *v161;
  sub_1000095E8(v154, &qword_1011B47B8, &qword_100F05170);
  return sub_1000095E8(v95, &unk_1011B4730, &unk_100F05130);
}

uint64_t sub_100B82320@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v1 = type metadata accessor for Artwork();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_1011B55F0, &unk_100EFFDC0);
  __chkstk_darwin();
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v27 = &v24 - v7;
  __chkstk_darwin();
  v9 = &v24 - v8;
  v10 = __chkstk_darwin();
  v12 = &v24 - v11;
  v13 = *(v2 + 56);
  v13(&v24 - v11, 1, 1, v1, v10);
  Playlist.Collaborator.artwork.getter();
  v29 = *(v2 + 48);
  if (v29(v9, 1, v1) == 1)
  {
    v25 = v13;
    sub_1000095E8(v9, &unk_1011B55F0, &unk_100EFFDC0);
    sub_100009F78(0, &qword_1011B1168, MPArtworkCatalog_ptr);
    v14 = Playlist.Collaborator.name.getter();
    v26 = v6;
    v16 = static MPArtworkCatalog.monogram(for:layoutDirection:)(v14, v15, 0, 1);
    v6 = v26;

    if (v16)
    {
      v17 = v27;
      Artwork.init(_:)();
      sub_1000095E8(v12, &unk_1011B55F0, &unk_100EFFDC0);
      (v25)(v17, 0, 1, v1);
      sub_10003D17C(v17, v12, &unk_1011B55F0, &unk_100EFFDC0);
    }
  }

  else
  {
    sub_1000095E8(v12, &unk_1011B55F0, &unk_100EFFDC0);
    (*(v2 + 32))(v12, v9, v1);
    (v13)(v12, 0, 1, v1);
  }

  sub_1000089F8(v12, v6, &unk_1011B55F0, &unk_100EFFDC0);
  if (v29(v6, 1, v1) == 1)
  {
    sub_1000095E8(v12, &unk_1011B55F0, &unk_100EFFDC0);
    sub_1000095E8(v6, &unk_1011B55F0, &unk_100EFFDC0);
    v18 = type metadata accessor for ArtworkImage.ViewModel(0);
    return (*(*(v18 - 8) + 56))(v28, 1, 1, v18);
  }

  else
  {
    (*(v2 + 32))(v4, v6, v1);
    v20 = v28;
    (*(v2 + 16))(v28, v4, v1);
    v21 = type metadata accessor for ArtworkImage.ViewModel(0);
    v22 = *(v21 + 20);
    static Artwork.CropStyle.boundedBox.getter();
    (*(v2 + 8))(v4, v1);
    sub_1000095E8(v12, &unk_1011B55F0, &unk_100EFFDC0);
    v23 = type metadata accessor for Artwork.CropStyle();
    (*(*(v23 - 8) + 56))(v20 + v22, 0, 1, v23);
    return (*(*(v21 - 8) + 56))(v20, 0, 1, v21);
  }
}

double sub_100B827BC@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v100 = a2;
  type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin();
  type metadata accessor for Locale();
  __chkstk_darwin();
  v98 = v93 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for String.LocalizationValue();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v96 = v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v97 = v93 - v7;
  v8 = type metadata accessor for Playlist();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = (v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(a1 + *(_s10ManagementO4ViewV19CollaboratorRowViewVMa(0) + 20));
  swift_getKeyPath();
  swift_getKeyPath();
  v93[1] = v12;
  static Published.subscript.getter(v11);

  v13 = Playlist.isOwner.getter();
  (*(v9 + 8))(v11, v8);
  v14 = sub_100B8315C(v13 & 1);
  if (v15)
  {
    v94 = v5;
    v95 = v4;
    v106 = v14;
    v107 = v15;
    sub_1000098E0();
    v16 = Text.init<A>(_:)();
    v18 = v17;
    v20 = v19;
    LODWORD(v106) = static HierarchicalShapeStyle.primary.getter();
    v21 = Text.foregroundStyle<A>(_:)();
    v23 = v22;
    v25 = v24;
    sub_10011895C(v16, v18, v20 & 1);

    if (qword_1011B0658 != -1)
    {
      swift_once();
    }

    v26 = Text.font(_:)();
    v28 = v27;
    v30 = v29;
    v32 = v31;

    sub_10011895C(v21, v23, v25 & 1);

    v33 = v28 & 1;
    sub_10021D0C0(v26, v32, v28 & 1);
    v99 = v30;

    v4 = v95;
    v5 = v94;
  }

  else
  {
    v26 = 0;
    v32 = 0;
    v33 = 0;
    v99 = 0;
  }

  v34 = Playlist.Collaborator.isPending.getter();
  if (v34 == 2 || (v34 & 1) == 0 || (sub_100B70028() & 1) != 0)
  {
    v35 = Playlist.Collaborator.handle.getter();
    if (!v36)
    {
      v64 = 0;
      v65 = 0;
      v66 = 0;
      v67 = 0;
      v68 = -1;
      goto LABEL_17;
    }

    v37 = v35;
    v38 = v36;
    v95 = v32;
    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v39._countAndFlagsBits = 64;
    v39._object = 0xE100000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v39);
    v40._countAndFlagsBits = v37;
    v40._object = v38;
    String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v40);

    v41._countAndFlagsBits = 0;
    v41._object = 0xE000000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v41);
    v42 = v97;
    String.LocalizationValue.init(stringInterpolation:)();
    (*(v5 + 16))(v96, v42, v4);
    if (qword_1011B0430 != -1)
    {
      swift_once();
    }

    v94 = v26;
    v43 = qword_10121B340;
    static Locale.current.getter();
    v44 = String.init(localized:table:bundle:locale:comment:)();
    v46 = v45;
    (*(v5 + 8))(v42, v4);
    v106 = v44;
    v107 = v46;
    sub_1000098E0();
    v47 = Text.init<A>(_:)();
    v49 = v48;
    v51 = v50;
    LODWORD(v106) = static HierarchicalShapeStyle.secondary.getter();
    v52 = Text.foregroundStyle<A>(_:)();
    v54 = v53;
    v56 = v55;
    sub_10011895C(v47, v49, v51 & 1);

    if (qword_1011B0660 != -1)
    {
      swift_once();
    }

    v57 = Text.font(_:)();
    v59 = v58;
    v61 = v60;
    v63 = v62;

    sub_10011895C(v52, v54, v56 & 1);

    v101 = v57;
    v102 = v59;
    v103 = v61 & 1;
    v104 = v63;
    v105 = 1;
    _ConditionalContent<>.init(storage:)();
    v64 = v106;
    v65 = v107;
    v66 = v108;
    v67 = v109;
    v68 = v110;
    sub_10069B2E4(v106, v107, v108, v109);
    v26 = v94;
  }

  else
  {
    v95 = v32;
    v72 = v97;
    String.LocalizationValue.init(stringLiteral:)();
    (*(v5 + 16))(v96, v72, v4);
    if (qword_1011B0430 != -1)
    {
      swift_once();
    }

    v73 = qword_10121B340;
    static Locale.current.getter();
    v74 = String.init(localized:table:bundle:locale:comment:)();
    v76 = v75;
    (*(v5 + 8))(v72, v4);
    v106 = v74;
    v107 = v76;
    sub_1000098E0();
    v77 = Text.init<A>(_:)();
    v79 = v78;
    v81 = v80;
    LODWORD(v106) = static HierarchicalShapeStyle.secondary.getter();
    v82 = Text.foregroundStyle<A>(_:)();
    v84 = v83;
    v86 = v85;
    sub_10011895C(v77, v79, v81 & 1);

    if (qword_1011B0660 != -1)
    {
      swift_once();
    }

    v87 = Text.font(_:)();
    v89 = v88;
    v91 = v90;
    v98 = v92;

    sub_10011895C(v82, v84, v86 & 1);

    v101 = v87;
    v102 = v89;
    v103 = v91 & 1;
    v104 = v98;
    v105 = 0;
    _ConditionalContent<>.init(storage:)();
    v64 = v106;
    v65 = v107;
    v66 = v108;
    v67 = v109;
    v68 = v110;
    sub_10069B2E4(v106, v107, v108, v109);
  }

  v32 = v95;
LABEL_17:
  v69 = v99;
  sub_10024EA48(v26, v32, v33, v99);
  sub_100B8DD08(v64, v65, v66, v67, v68);
  sub_10024EA04(v26, v32, v33, v69);
  sub_100B8DD20(v64, v65, v66, v67, v68);
  v70 = v100;
  *v100 = v26;
  v70[1] = v32;
  v70[2] = v33;
  v70[3] = v69;
  v70[4] = v64;
  v70[5] = v65;
  v70[6] = v66;
  v70[7] = v67;
  *(v70 + 64) = v68;
  sub_100B8DD20(v64, v65, v66, v67, v68);
  return sub_10024EA04(v26, v32, v33, v69);
}

uint64_t sub_100B8315C(char a1)
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin();
  result = Playlist.Collaborator.name.getter();
  if (v3)
  {
    v4 = result;
    v5 = v3;
    if (Playlist.Collaborator.isHost.getter())
    {
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v6._countAndFlagsBits = 0;
      v6._object = 0xE000000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v6);
      v7._countAndFlagsBits = v4;
      v7._object = v5;
      String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v7);

      v8._countAndFlagsBits = 0x2972656E774F2820;
      v8._object = 0xE800000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v8);
      String.LocalizationValue.init(stringInterpolation:)();
      if (a1)
      {
        if (qword_1011B0430 != -1)
        {
          swift_once();
        }
      }

      else if (qword_1011B0430 != -1)
      {
        swift_once();
      }

      v9 = qword_10121B340;
      static Locale.current.getter();
      return String.init(localized:defaultValue:table:bundle:locale:comment:)();
    }

    else
    {
      return v4;
    }
  }

  return result;
}

double sub_100B833D8(uint64_t a1, const char *a2, int a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = Logger.collaboration.unsafeMutableAddressor();
  (*(v7 + 16))(v9, v10, v6);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, a2, v13, 2u);
  }

  (*(v7 + 8))(v9, v6);
  _s10ManagementO4ViewV19CollaboratorRowViewVMa(0);
  return sub_100B73CFC(a1, a3);
}

uint64_t sub_100B8355C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v29 = *(_s10ManagementO4ViewV19CollaboratorRowViewVMa(0) - 8);
  v3 = *(v29 + 64);
  __chkstk_darwin();
  v31 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_1011B58A0, &qword_100F05080);
  __chkstk_darwin();
  v30 = &v27 - v4;
  v5 = sub_10010FC20(&qword_1011B46C0, &qword_100F05060);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v28 = &v27 - v7;
  v8 = type metadata accessor for Playlist();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = (&v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v11);

  v12 = Playlist.isOwner.getter();
  (*(v9 + 8))(v11, v8);
  if (v12 == 2 || (v12 & 1) == 0 || (Playlist.Collaborator.isHost.getter() & 1) != 0 || (v13 = Playlist.Collaborator.isPending.getter(), v13 == 2) || (v13 & 1) != 0)
  {
    v14 = 1;
    v15 = v32;
  }

  else
  {
    v17 = v30;
    static ButtonRole.cancel.getter();
    v18 = type metadata accessor for ButtonRole();
    (*(*(v18 - 8) + 56))(v17, 0, 1, v18);
    v19 = v31;
    sub_100B8D7C0(a1, v31, _s10ManagementO4ViewV19CollaboratorRowViewVMa);
    v20 = (*(v29 + 80) + 16) & ~*(v29 + 80);
    v21 = swift_allocObject();
    sub_100B8D828(v19, v21 + v20, _s10ManagementO4ViewV19CollaboratorRowViewVMa);
    v22 = v28;
    Button.init(role:action:label:)();
    v23 = static Color.red.getter();
    KeyPath = swift_getKeyPath();
    v25 = (v22 + *(v5 + 36));
    *v25 = KeyPath;
    v25[1] = v23;
    v26 = v32;
    sub_10003D17C(v22, v32, &qword_1011B46C0, &qword_100F05060);
    v15 = v26;
    v14 = 0;
  }

  return (*(v6 + 56))(v15, v14, 1, v5);
}

uint64_t sub_100B83980(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v21[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10010FC20(&unk_1011B4540, &qword_100F010B0);
  __chkstk_darwin();
  v7 = &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v9 = &v21[-v8];
  v10 = type metadata accessor for Playlist.Collaborator();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v9, a1, v10);
  (*(v11 + 56))(v9, 0, 1, v10);
  v12 = _s10ManagementO4ViewV19CollaboratorRowViewVMa(0);
  sub_1000089F8(v9, v7, &unk_1011B4540, &qword_100F010B0);
  sub_10010FC20(&qword_1011B44C8, &qword_100F04B98);
  State.wrappedValue.setter();
  sub_1000095E8(v9, &unk_1011B4540, &qword_100F010B0);
  v13 = (a1 + *(v12 + 24));
  v14 = *v13;
  v15 = *(v13 + 1);
  v21[16] = v14;
  v22 = v15;
  v21[15] = 1;
  sub_10010FC20(&qword_1011B2DD8, &qword_100F05F50);
  State.wrappedValue.setter();
  v16 = Logger.collaboration.unsafeMutableAddressor();
  (*(v3 + 16))(v5, v16, v2);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "[Management] Remove swipe action triggered", v19, 2u);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_100B83C74@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = v16 - v6;
  String.LocalizationValue.init(stringLiteral:)();
  (*(v3 + 16))(v5, v7, v2);
  if (qword_1011B0430 != -1)
  {
    swift_once();
  }

  v8 = qword_10121B340;
  static Locale.current.getter();
  v9 = String.init(localized:table:bundle:locale:comment:)();
  v11 = v10;
  (*(v3 + 8))(v7, v2);
  v16[1] = v9;
  v16[2] = v11;
  sub_1000098E0();
  result = Text.init<A>(_:)();
  *a1 = result;
  *(a1 + 8) = v13;
  *(a1 + 16) = v14 & 1;
  *(a1 + 24) = v15;
  return result;
}

uint64_t sub_100B83E7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a1;
  v57 = a2;
  v51 = *(_s10ManagementO4ViewV19CollaboratorRowViewVMa(0) - 8);
  __chkstk_darwin();
  v52 = v2;
  v54 = v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Alert.Button();
  __chkstk_darwin();
  v56 = v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v55 = v43 - v4;
  type metadata accessor for Locale();
  __chkstk_darwin();
  v5 = type metadata accessor for String.LocalizationValue();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = v43 - v9;
  String.LocalizationValue.init(stringLiteral:)();
  v44 = *(v6 + 16);
  v44(v8, v10, v5);
  if (qword_1011B0430 != -1)
  {
    swift_once();
  }

  v11 = qword_10121B340;
  v12 = qword_10121B340;
  v43[3] = v11;
  v13 = v12;
  static Locale.current.getter();
  v14 = v13;
  v15 = String.init(localized:table:bundle:locale:comment:)();
  v17 = v16;
  v18 = *(v6 + 8);
  v18(v10, v5);
  v43[1] = v6 + 8;
  v58 = v15;
  v59 = v17;
  v43[2] = sub_1000098E0();
  v19 = Text.init<A>(_:)();
  v49 = v20;
  v50 = v19;
  v47 = v21;
  v48 = v22;
  String.LocalizationValue.init(stringLiteral:)();
  v23 = v44;
  v44(v8, v10, v5);
  static Locale.current.getter();
  v43[0] = v6 + 16;
  v24 = String.init(localized:table:bundle:locale:comment:)();
  v26 = v25;
  v18(v10, v5);
  v58 = v24;
  v59 = v26;
  v27 = Text.init<A>(_:)();
  v45 = v28;
  v46 = v27;
  v43[4] = v29 & 1;
  v43[5] = v30;
  String.LocalizationValue.init(stringLiteral:)();
  v23(v8, v10, v5);
  static Locale.current.getter();
  v31 = String.init(localized:table:bundle:locale:comment:)();
  v33 = v32;
  v18(v10, v5);
  v58 = v31;
  v59 = v33;
  v34 = Text.init<A>(_:)();
  v36 = v35;
  v38 = v37;
  v39 = v54;
  sub_100B8D7C0(v53, v54, _s10ManagementO4ViewV19CollaboratorRowViewVMa);
  v40 = (*(v51 + 80) + 16) & ~*(v51 + 80);
  v41 = swift_allocObject();
  sub_100B8D828(v39, v41 + v40, _s10ManagementO4ViewV19CollaboratorRowViewVMa);
  static Alert.Button.destructive(_:action:)();
  sub_10011895C(v34, v36, v38 & 1);

  static Alert.Button.cancel(_:)();
  return Alert.init(title:message:primaryButton:secondaryButton:)();
}

uint64_t sub_100B84424()
{
  sub_10010FC20(&unk_1011B4540, &qword_100F010B0);
  __chkstk_darwin();
  v1 = &v3 - v0;
  _s10ManagementO4ViewV19CollaboratorRowViewVMa(0);
  sub_10010FC20(&qword_1011B44C8, &qword_100F04B98);
  State.wrappedValue.getter();
  sub_100B73454(v1);
  return sub_1000095E8(v1, &unk_1011B4540, &qword_100F010B0);
}

uint64_t sub_100B84500(char a1)
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v10[-v5];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v2 + 16))(v4, v6, v1);
  if (qword_1011B0430 != -1)
  {
    swift_once();
  }

  v7 = qword_10121B340;
  static Locale.current.getter();
  v8 = String.init(localized:table:bundle:locale:comment:)();
  (*(v2 + 8))(v6, v1);
  return v8;
}

uint64_t sub_100B84704@<X0>(uint64_t a1@<X8>)
{
  v54 = a1;
  v53 = type metadata accessor for ColorScheme();
  v2 = *(v53 - 8);
  __chkstk_darwin();
  v52 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v51 = &v49 - v4;
  v5 = *(_s10ManagementO4ViewV5ShareO6ButtonVMa(0) - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v7 = sub_10010FC20(&qword_1011B4808, &qword_100F051D0);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v49 - v9;
  v11 = sub_10010FC20(&qword_1011B4810, &qword_100F051D8) - 8;
  __chkstk_darwin();
  v13 = &v49 - v12;
  v49 = sub_10010FC20(&qword_1011B4818, &unk_100F051E0);
  __chkstk_darwin();
  v50 = &v49 - v14;
  sub_100B8D7C0(v1, &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), _s10ManagementO4ViewV5ShareO6ButtonVMa);
  v15 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v16 = swift_allocObject();
  sub_100B8D828(&v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, _s10ManagementO4ViewV5ShareO6ButtonVMa);
  v55 = v1;
  sub_10010FC20(&qword_1011B4828, &qword_100F051F0);
  sub_100B8DED8();
  Button.init(action:label:)();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v8 + 32))(v13, v10, v7);
  v17 = &v13[*(v11 + 44)];
  v18 = v61;
  *(v17 + 4) = v60;
  *(v17 + 5) = v18;
  *(v17 + 6) = v62;
  v19 = v57;
  *v17 = v56;
  *(v17 + 1) = v19;
  v20 = v59;
  *(v17 + 2) = v58;
  *(v17 + 3) = v20;
  if (sub_100B854C4(v20))
  {
    if (qword_1011B06A0 != -1)
    {
      swift_once();
    }

    v21 = qword_1011B3C58;
  }

  else
  {
    v22 = [objc_opt_self() tertiaryLabelColor];
    v21 = Color.init(_:)();
  }

  KeyPath = swift_getKeyPath();
  v24 = v50;
  sub_10003D17C(v13, v50, &qword_1011B4810, &qword_100F051D8);
  v25 = (v24 + *(v49 + 36));
  *v25 = KeyPath;
  v25[1] = v21;
  v26 = v51;
  sub_100B8561C(v51);
  v28 = v52;
  v27 = v53;
  (*(v2 + 104))(v52, enum case for ColorScheme.light(_:), v53);
  v29 = static ColorScheme.== infix(_:_:)();
  v30 = *(v2 + 8);
  v30(v28, v27);
  v30(v26, v27);
  v31 = objc_opt_self();
  v32 = &selRef_systemBackgroundColor;
  if ((v29 & 1) == 0)
  {
    v32 = &selRef_secondarySystemBackgroundColor;
  }

  v33 = [v31 *v32];
  v34 = Color.init(_:)();
  v35 = sub_10010FC20(&qword_1011B4878, &qword_100F05248);
  v36 = v54;
  v37 = (v54 + *(v35 + 36));
  v38 = sub_10010FC20(&qword_1011B4880, &qword_100F05250);
  v39 = v37 + *(v38 + 52);
  v40 = *(type metadata accessor for RoundedRectangle() + 20);
  v41 = enum case for RoundedCornerStyle.continuous(_:);
  v42 = type metadata accessor for RoundedCornerStyle();
  (*(*(v42 - 8) + 104))(&v39[v40], v41, v42);
  __asm { FMOV            V0.2D, #10.0 }

  *v39 = _Q0;
  *v37 = v34;
  *(v37 + *(v38 + 56)) = 256;
  return sub_10003D17C(v24, v36, &qword_1011B4818, &unk_100F051E0);
}

__n128 sub_100B84D1C@<Q0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10010FC20(&qword_1011B4850, &qword_100F05200) - 8;
  __chkstk_darwin();
  v6 = v16 - v5;
  v7 = sub_10010FC20(&qword_1011B4840, &qword_100F051F8) - 8;
  __chkstk_darwin();
  v9 = v16 - v8;
  *v6 = static HorizontalAlignment.center.getter();
  *(v6 + 1) = 0x4008000000000000;
  v6[16] = 0;
  sub_100B84F14(a1, &v6[*(v4 + 52)]);
  if (*a1)
  {
    v10 = 2.5;
  }

  else
  {
    v10 = 0.0;
  }

  sub_10003D17C(v6, v9, &qword_1011B4850, &qword_100F05200);
  v11 = &v9[*(v7 + 44)];
  *v11 = 0;
  *(v11 + 1) = v10;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10003D17C(v9, a2, &qword_1011B4840, &qword_100F051F8);
  v12 = a2 + *(sub_10010FC20(&qword_1011B4828, &qword_100F051F0) + 36);
  v13 = v16[5];
  *(v12 + 64) = v16[4];
  *(v12 + 80) = v13;
  *(v12 + 96) = v16[6];
  v14 = v16[1];
  *v12 = v16[0];
  *(v12 + 16) = v14;
  result = v16[3];
  *(v12 + 32) = v16[2];
  *(v12 + 48) = result;
  return result;
}

uint64_t sub_100B84F14@<X0>(unsigned __int8 *a1@<X0>, void *a2@<X8>)
{
  v54 = a2;
  v50 = sub_10010FC20(&qword_1011B4888, &qword_100F05258);
  __chkstk_darwin();
  v4 = &v46[-v3];
  v5 = sub_10010FC20(&qword_1011B4890, &qword_100F05260);
  v48 = *(v5 - 8);
  v49 = v5;
  __chkstk_darwin();
  v7 = &v46[-v6];
  v8 = sub_10010FC20(&qword_1011B4898, &qword_100F05268);
  v52 = *(v8 - 8);
  v53 = v8;
  __chkstk_darwin();
  v51 = &v46[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v11 = &v46[-v10];
  v47 = *a1;
  v12 = Image.init(systemName:)();
  v13 = static Font.body.getter();
  KeyPath = swift_getKeyPath();
  v56 = v12;
  v57 = KeyPath;
  v58 = v13;
  static Font.Weight.semibold.getter();
  v15 = sub_10010FC20(&qword_1011B48A0, &unk_100F052A0);
  v16 = sub_100B8E0D4();
  View.fontWeight(_:)();

  if (qword_1011B06B0 != -1)
  {
    swift_once();
  }

  v17 = sub_1000060E4(v50, qword_1011B3C78);
  sub_1000089F8(v17, v4, &qword_1011B4888, &qword_100F05258);
  v56 = v15;
  v57 = v16;
  swift_getOpaqueTypeConformance2();
  sub_100020674(&qword_1011B48C0, &qword_1011B4888, &qword_100F05258, &protocol conformance descriptor for PartialRangeThrough<A>);
  v55 = v11;
  v18 = v49;
  View.dynamicTypeSize<A>(_:)();
  sub_1000095E8(v4, &qword_1011B4888, &qword_100F05258);
  (*(v48 + 8))(v7, v18);
  v56 = sub_100B84500(v47);
  v57 = v19;
  sub_1000098E0();
  v20 = Text.init<A>(_:)();
  v22 = v21;
  v24 = v23;
  if (qword_1011B0668 != -1)
  {
    swift_once();
  }

  v25 = Text.font(_:)();
  v27 = v26;
  v29 = v28;

  sub_10011895C(v20, v22, v24 & 1);

  if (qword_1011B0670 != -1)
  {
    swift_once();
  }

  v30 = Text.fontWeight(_:)();
  v32 = v31;
  v34 = v33;
  v50 = v35;
  sub_10011895C(v25, v27, v29 & 1);

  v36 = v51;
  v37 = v52;
  v38 = *(v52 + 16);
  v39 = v53;
  v38(v51, v55, v53);
  v40 = v54;
  *v54 = 0;
  *(v40 + 8) = 1;
  v41 = sub_10010FC20(&qword_1011B48C8, &unk_100F052B0);
  v38(v40 + v41[12], v36, v39);
  v42 = v40 + v41[16];
  *v42 = v30;
  *(v42 + 1) = v32;
  v34 &= 1u;
  v42[16] = v34;
  *(v42 + 3) = v50;
  v43 = v40 + v41[20];
  *v43 = 0x4020000000000000;
  v43[8] = 0;
  sub_10021D0C0(v30, v32, v34);
  v44 = *(v37 + 8);

  v44(v55, v39);
  sub_10011895C(v30, v32, v34);

  return (v44)(v36, v39);
}

uint64_t sub_100B854C4(__n128 a1)
{
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = v1 + *(_s10ManagementO4ViewV5ShareO6ButtonVMa(0) + 28);
  v7 = *v6;
  if (*(v6 + 8) != 1)
  {

    v8 = static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v8, &_mh_execute_header, v9, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v10 = sub_1000D8F20(v7, 0);
    (*(v3 + 8))(v5, v2, v10);
    LOBYTE(v7) = v12[15];
  }

  return v7 & 1;
}

uint64_t sub_100B8561C@<X0>(void *a1@<X8>)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011B4820, &qword_100EFE078);
  __chkstk_darwin();
  v9 = &v15 - v8;
  v10 = _s10ManagementO4ViewV5ShareO6ButtonVMa(0);
  sub_1000089F8(v2 + *(v10 + 24), v9, &qword_1011B4820, &qword_100EFE078);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for ColorScheme();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    v13 = static os_log_type_t.fault.getter();
    v14 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v13, &_mh_execute_header, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

double sub_100B85828(uint64_t a1)
{
  static Animation.spring(response:dampingFraction:blendDuration:)();
  withAnimation<A>(_:_:)();

  return result;
}

uint64_t sub_100B858B4@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v3 = sub_10010FC20(&qword_1011B4888, &qword_100F05258);
  __chkstk_darwin();
  v5 = &v15 - v4;
  v16 = Image.init(systemName:)();
  static Font.subheadline.getter();
  v6 = Font.bold()();

  KeyPath = swift_getKeyPath();
  v8 = static Color.white.getter();
  v9 = swift_getKeyPath();
  if (qword_1011B0688 != -1)
  {
    swift_once();
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  if (a1)
  {
    v10 = static Color.red.getter();
  }

  else
  {
    v10 = static Color.green.getter();
  }

  v11 = v10;
  v12 = static Edge.Set.all.getter();
  *&v20[8] = v22[2];
  *&v20[24] = v22[3];
  *&v18 = v16;
  *(&v18 + 1) = KeyPath;
  *&v19 = v6;
  *(&v19 + 1) = v9;
  *v20 = v8;
  *&v20[40] = v22[4];
  *&v20[56] = v11;
  v20[64] = v12;
  *&v20[65] = 256;
  if (qword_1011B06B0 != -1)
  {
    swift_once();
  }

  v13 = sub_1000060E4(v3, qword_1011B3C78);
  sub_1000089F8(v13, v5, &qword_1011B4888, &qword_100F05258);
  sub_10010FC20(&qword_1011B4FC0, &qword_100F05BF0);
  sub_100B91344();
  sub_100020674(&qword_1011B48C0, &qword_1011B4888, &qword_100F05258, &protocol conformance descriptor for PartialRangeThrough<A>);
  View.dynamicTypeSize<A>(_:)();
  sub_1000095E8(v5, &qword_1011B4888, &qword_100F05258);
  v21[4] = *&v20[32];
  v22[0] = *&v20[48];
  *(v22 + 15) = *&v20[63];
  v21[0] = v18;
  v21[1] = v19;
  v21[2] = *v20;
  v21[3] = *&v20[16];
  return sub_1000095E8(v21, &qword_1011B4FC0, &qword_100F05BF0);
}

uint64_t sub_100B85B98@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v2 = type metadata accessor for BorderlessButtonStyle();
  v3 = *(v2 - 8);
  v23 = v2;
  v24 = v3;
  __chkstk_darwin();
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10010FC20(&qword_1011B4FB0, &qword_100F05BE0);
  v6 = *(v22 - 8);
  __chkstk_darwin();
  v8 = &v22 - v7;
  v9 = *v1;
  v11 = *(v1 + 1);
  v10 = *(v1 + 2);
  v12 = swift_allocObject();
  *(v12 + 16) = v9;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v26 = v9;
  v27 = v11;
  v28 = v10;

  sub_10010FC20(&qword_1011B4FB8, &qword_100F05BE8);
  v13 = sub_1001109D0(&qword_1011B4FC0, &qword_100F05BF0);
  v14 = sub_1001109D0(&qword_1011B4888, &qword_100F05258);
  v15 = sub_100B91344();
  v16 = sub_100020674(&qword_1011B48C0, &qword_1011B4888, &qword_100F05258, &protocol conformance descriptor for PartialRangeThrough<A>);
  v29 = v13;
  v30 = v14;
  v31 = v15;
  v32 = v16;
  swift_getOpaqueTypeConformance2();
  Button.init(action:label:)();
  BorderlessButtonStyle.init()();
  sub_100020674(&qword_1011B5010, &qword_1011B4FB0, &qword_100F05BE0, &protocol conformance descriptor for Button<A>);
  sub_100B8C798(&qword_1011B4BF0, &type metadata accessor for BorderlessButtonStyle, &protocol conformance descriptor for BorderlessButtonStyle);
  v17 = v25;
  v19 = v22;
  v18 = v23;
  View.buttonStyle<A>(_:)();
  (*(v24 + 8))(v5, v18);
  (*(v6 + 8))(v8, v19);
  v20 = (v17 + *(sub_10010FC20(&qword_1011B5018, &qword_100F05C18) + 36));
  sub_10010FC20(&qword_1011B5020, &qword_100F05C20);
  static ButtonBorderShape.circle.getter();
  result = swift_getKeyPath();
  *v20 = result;
  return result;
}

uint64_t Collaboration.Management.ViewController.__allocating_init(model:)(uint64_t a1)
{
  type metadata accessor for Collaboration.Management.View(0);
  __chkstk_darwin();
  v3 = (&v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = objc_allocWithZone(v1);

  Collaboration.Management.View.init(model:)(v3);
  v5 = UIHostingController.init(rootView:)();

  return v5;
}

uint64_t Collaboration.Management.ViewController.init(model:)(uint64_t a1)
{
  type metadata accessor for Collaboration.Management.View(0);
  __chkstk_darwin();
  v2 = (&v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));

  Collaboration.Management.View.init(model:)(v2);
  v3 = UIHostingController.init(rootView:)();

  return v3;
}

Swift::Void __swiftcall Collaboration.Management.ViewController.viewWillLayoutSubviews()()
{
  v14.receiver = v0;
  v14.super_class = type metadata accessor for Collaboration.Management.ViewController(0);
  objc_msgSendSuper2(&v14, "viewWillLayoutSubviews");
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 window];

    if (v3 && (v4 = [v3 windowScene], v3, v4))
    {
      v5 = [v4 effectiveGeometry];

      v6 = [v5 coordinateSpace];
      [v6 bounds];
      v8 = v7;
      v10 = v9;
      swift_unknownObjectRelease();
      v11 = 0;
      v12 = v8;
      v13 = v10;
    }

    else
    {
      v12 = 0;
      v13 = 0;
      v11 = 1;
    }

    sub_100B86338(v12, v13, v11);
  }

  else
  {
    __break(1u);
  }
}

void sub_100B861E0(void *a1)
{
  v1 = a1;
  Collaboration.Management.ViewController.viewWillLayoutSubviews()();
}

id Collaboration.Management.ViewController.viewWillTransition(to:with:)(uint64_t a1, __n128 a2, double a3)
{
  v6 = a2.n128_f64[0];
  sub_100B86338(a2.n128_i64[0], *&a3, 0);
  v8.receiver = v3;
  v8.super_class = type metadata accessor for Collaboration.Management.ViewController(0);
  return objc_msgSendSuper2(&v8, "viewWillTransitionToSize:withTransitionCoordinator:", a1, v6, a3);
}

void sub_100B86298(void *a1, double a2, double a3, uint64_t a4, uint64_t a5)
{
  swift_unknownObjectRetain();
  v11 = a1;
  sub_100B86338(*&a2, *&a3, 0);
  v12.receiver = v11;
  v12.super_class = type metadata accessor for Collaboration.Management.ViewController(0);
  objc_msgSendSuper2(&v12, "viewWillTransitionToSize:withTransitionCoordinator:", a5, a2, a3);
  swift_unknownObjectRelease();
}

void sub_100B86338(uint64_t a1, uint64_t a2, char a3)
{
  v7 = objc_opt_self();
  v8 = [v7 currentTraitCollection];
  v9 = [v8 userInterfaceIdiom];

  if (v9 == 6)
  {
    v10 = 512.0;
  }

  else
  {
    v10 = 540.0;
  }

  if (v9 == 6)
  {
    v11 = 620.0;
  }

  else
  {
    v11 = 700.0;
  }

  v12 = [v7 currentTraitCollection];
  v13 = [v12 userInterfaceIdiom];

  if (v13 == 6 && (a3 & 1) == 0)
  {
    if (qword_1011B0590 != -1)
    {
      swift_once();
    }

    v14 = *&qword_10121B6A8 + *&qword_10121B6A8;
    if (v11 + *&qword_10121B6A8 + *&qword_10121B6A8 > *&a2)
    {
      v11 = *&a2 - (*&qword_10121B6A8 + *&qword_10121B6A8);
    }

    if (v10 + v14 > *&a1)
    {
      v10 = *&a1 - v14;
    }
  }

  [v3 preferredContentSize];
  if (v10 != v16 || v11 != v15)
  {
    [v3 setPreferredContentSize:{v10, v11}];
    v18 = [v3 navigationController];
    if (v18)
    {
      v19 = v18;
      [v18 setPreferredContentSize:{v10, v11}];
    }
  }
}

uint64_t sub_100B8659C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100B8DE18();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100B86600(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100B8DE18();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_100B86664(uint64_t a1)
{
  sub_100B8DE18();
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

char *sub_100B8668C()
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = v14 - v5;
  v7 = *(v0 + 16);
  v16[0] = *v0;
  v16[1] = v7;
  v17 = *(v0 + 32);
  sub_100B8DD8C(v0, v15);
  String.LocalizationValue.init(stringLiteral:)();
  v8 = *(v2 + 16);
  v8(v4, v6, v1);
  if (qword_1011B0430 != -1)
  {
    swift_once();
  }

  v9 = qword_10121B340;
  static Locale.current.getter();
  v10 = v9;
  v14[1] = String.init(localized:table:bundle:locale:comment:)();
  v11 = *(v2 + 8);
  v11(v6, v1);
  String.LocalizationValue.init(stringLiteral:)();
  v8(v4, v6, v1);
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v11(v6, v1);
  v12 = objc_allocWithZone(type metadata accessor for QRCodeOverlayViewController());
  return QRCodeOverlayViewController.init(qrCode:title:subtitle:)(v16);
}

uint64_t sub_100B86988(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100B8DDC4();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100B869EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100B8DDC4();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_100B86A50(uint64_t a1)
{
  sub_100B8DDC4();
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

uint64_t PlaylistCurators.Curator.init(name:artwork:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  v6 = type metadata accessor for PlaylistCurators.Curator(0);
  return sub_10003D17C(a3, a4 + *(v6 + 20), &unk_1011B55F0, &unk_100EFFDC0);
}

uint64_t sub_100B86ADC@<X0>(void *a1@<X8>)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011B3DE0, &qword_100EFDF50);
  __chkstk_darwin();
  v9 = &v14 - v8;
  v10 = type metadata accessor for PlaylistCurators.View(0);
  sub_1000089F8(v2 + *(v10 + 20), v9, &qword_1011B3DE0, &qword_100EFDF50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_10003D17C(v9, a1, &qword_1011B0C18, &qword_100F04980);
  }

  v12 = static os_log_type_t.fault.getter();
  v13 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)(v12, &_mh_execute_header, v13, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

  EnvironmentValues.init()();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t PlaylistCurators.View.init(configuration:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(type metadata accessor for PlaylistCurators.View(0) + 20);
  *(a2 + v4) = swift_getKeyPath();
  sub_10010FC20(&qword_1011B3DE0, &qword_100EFDF50);
  result = swift_storeEnumTagMultiPayload();
  *a2 = a1;
  return result;
}

uint64_t PlaylistCurators.View.body.getter()
{
  sub_10010FC20(&qword_1011B3DE8, &qword_100F04950);
  __chkstk_darwin();
  v2 = &v5 - v1;
  *v2 = static VerticalAlignment.center.getter();
  *(v2 + 1) = 0;
  v2[16] = 0;
  v3 = sub_10010FC20(&qword_1011B3DF0, &qword_100F04958);
  sub_100B86E64(v0, &v2[*(v3 + 44)]);
  sub_100020674(&qword_1011B3DF8, &qword_1011B3DE8, &qword_100F04950, &protocol conformance descriptor for HStack<A>);
  View.artworkCaching(id:limit:)();
  return sub_1000095E8(v2, &qword_1011B3DE8, &qword_100F04950);
}

uint64_t sub_100B86E64@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v3 = type metadata accessor for UserInterfaceSizeClass();
  v48 = *(v3 - 8);
  v49 = v3;
  __chkstk_darwin();
  v45 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_10010FC20(&unk_1011B3E00, &qword_100F04978);
  __chkstk_darwin();
  v6 = &v43 - v5;
  sub_10010FC20(&qword_1011B0C18, &qword_100F04980);
  __chkstk_darwin();
  v46 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v43 - v8;
  __chkstk_darwin();
  v52 = (&v43 - v10);
  sub_10010FC20(&qword_1011B4950, &qword_100F05498);
  __chkstk_darwin();
  v12 = &v43 - v11;
  v13 = sub_10010FC20(&qword_1011B4958, &qword_100F054A0);
  __chkstk_darwin();
  v50 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v43 - v15;
  __chkstk_darwin();
  v18 = &v43 - v17;
  *v12 = static VerticalAlignment.center.getter();
  *(v12 + 1) = 0x4018000000000000;
  v12[16] = 0;
  v19 = sub_10010FC20(&qword_1011B4960, &qword_100F054A8);
  sub_100B87548(a1, &v12[*(v19 + 44)]);
  if (qword_1011B05B8 != -1)
  {
    swift_once();
  }

  v20 = unk_10121B6F0;
  v21 = byte_10121B6F8;
  if (byte_10121B6F8)
  {
    v22 = *&static Corner.medium;
  }

  else
  {
    v22 = *&static Corner.medium + -3.0;
  }

  sub_10003D17C(v12, v16, &qword_1011B4950, &qword_100F05498);
  v23 = &v16[*(v13 + 36)];
  *v23 = v22;
  *(v23 + 1) = v20;
  v23[16] = v21;
  *(v23 + 3) = 0x4008000000000000;
  *(v23 + 4) = 0;
  *(v23 + 20) = 257;
  sub_10003D17C(v16, v18, &qword_1011B4958, &qword_100F054A0);
  v24 = v52;
  sub_100B86ADC(v52);
  v26 = v48;
  v25 = v49;
  (*(v48 + 104))(v9, enum case for UserInterfaceSizeClass.regular(_:), v49);
  (*(v26 + 56))(v9, 0, 1, v25);
  v27 = *(v47 + 48);
  sub_1000089F8(v24, v6, &qword_1011B0C18, &qword_100F04980);
  sub_1000089F8(v9, &v6[v27], &qword_1011B0C18, &qword_100F04980);
  v28 = *(v26 + 48);
  v29 = v28(v6, 1, v25);
  v47 = v18;
  if (v29 != 1)
  {
    v44 = v9;
    v32 = v46;
    sub_1000089F8(v6, v46, &qword_1011B0C18, &qword_100F04980);
    v33 = v25;
    if (v28(&v6[v27], 1, v25) != 1)
    {
      v34 = &v6[v27];
      v35 = v45;
      (*(v26 + 32))(v45, v34, v25);
      sub_100B8C798(&qword_1011B3E10, &type metadata accessor for UserInterfaceSizeClass, &protocol conformance descriptor for UserInterfaceSizeClass);
      v36 = v32;
      v30 = dispatch thunk of static Equatable.== infix(_:_:)();
      v37 = *(v26 + 8);
      v37(v35, v33);
      sub_1000095E8(v44, &qword_1011B0C18, &qword_100F04980);
      sub_1000095E8(v52, &qword_1011B0C18, &qword_100F04980);
      v37(v36, v33);
      v31 = v47;
      sub_1000095E8(v6, &qword_1011B0C18, &qword_100F04980);
      goto LABEL_13;
    }

    sub_1000095E8(v44, &qword_1011B0C18, &qword_100F04980);
    sub_1000095E8(v52, &qword_1011B0C18, &qword_100F04980);
    (*(v26 + 8))(v32, v25);
    goto LABEL_11;
  }

  sub_1000095E8(v9, &qword_1011B0C18, &qword_100F04980);
  sub_1000095E8(v52, &qword_1011B0C18, &qword_100F04980);
  if (v28(&v6[v27], 1, v25) != 1)
  {
LABEL_11:
    sub_1000095E8(v6, &unk_1011B3E00, &qword_100F04978);
    v30 = 0;
    v31 = v47;
    goto LABEL_13;
  }

  sub_1000095E8(v6, &qword_1011B0C18, &qword_100F04980);
  v30 = 1;
  v31 = v47;
LABEL_13:
  v38 = v50;
  sub_1000089F8(v31, v50, &qword_1011B4958, &qword_100F054A0);
  v39 = v31;
  v40 = v51;
  sub_1000089F8(v38, v51, &qword_1011B4958, &qword_100F054A0);
  v41 = v40 + *(sub_10010FC20(&qword_1011B4968, &unk_100F054B0) + 48);
  *v41 = 0;
  *(v41 + 8) = v30 & 1;
  *(v41 + 9) = (v30 & 1) == 0;
  sub_1000095E8(v39, &qword_1011B4958, &qword_100F054A0);
  return sub_1000095E8(v38, &qword_1011B4958, &qword_100F054A0);
}

uint64_t sub_100B87548@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  sub_10010FC20(&qword_1011B4970, &qword_100F03C00);
  __chkstk_darwin();
  v65 = &v50[-v3];
  v4 = type metadata accessor for Font.TextStyle();
  v66 = *(v4 - 8);
  v67 = v4;
  __chkstk_darwin();
  v62 = &v50[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for Text.Suffix();
  v58 = *(v6 - 8);
  v59 = v6;
  __chkstk_darwin();
  v56 = &v50[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v63 = sub_10010FC20(&qword_1011B4978, &qword_100F054C0) - 8;
  __chkstk_darwin();
  v64 = &v50[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v55 = &v50[-v9];
  sub_10010FC20(&qword_1011B0C18, &qword_100F04980);
  __chkstk_darwin();
  v11 = &v50[-v10];
  sub_10010FC20(&qword_1011B4980, &qword_100F054C8);
  __chkstk_darwin();
  v61 = &v50[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v14 = &v50[-v13];
  sub_100B86ADC(v11);
  v15 = sub_100B8E550(v11);
  sub_1000095E8(v11, &qword_1011B0C18, &qword_100F04980);
  *v14 = static VerticalAlignment.center.getter();
  v14[1] = v15;
  *(v14 + 16) = 0;
  v60 = v14;
  sub_10010FC20(&qword_1011B4988, &qword_100F054D0);
  v57 = a1;
  sub_100B87C78(a1);
  v69 = sub_100B8902C();
  v70 = v16;
  sub_1000098E0();
  v53 = Text.init<A>(_:)();
  v52 = v17;
  v54 = v18;
  v69 = v53;
  v70 = v17;
  v51 = v19 & 1;
  v71 = v19 & 1;
  v72 = v18;
  String.nonBreakingSpace.unsafeMutableAddressor();

  Image.init(systemName:)();

  v20 = Text.init(_:)();
  v22 = v21;
  v24 = v23;
  v25 = static Text.+ infix(_:_:)();
  v27 = v26;
  v29 = v28;
  sub_10011895C(v20, v22, v24 & 1);

  v30 = v56;
  static Text.Suffix.alwaysVisible(_:)();
  sub_10011895C(v25, v27, v29 & 1);

  v31 = v55;
  View.textSuffix(_:)();
  (*(v58 + 8))(v30, v59);
  sub_10011895C(v53, v52, v51);

  KeyPath = swift_getKeyPath();
  v33 = v31 + *(sub_10010FC20(&qword_1011B4990, &qword_100F05508) + 36);
  *v33 = KeyPath;
  *(v33 + 8) = 1;
  *(v33 + 16) = 0;
  v34 = (v31 + *(sub_10010FC20(&qword_1011B4998, &qword_100F05510) + 36));
  v35 = *(sub_10010FC20(&qword_1011B49A0, &qword_100F05518) + 28);
  v36 = enum case for Image.Scale.small(_:);
  v37 = type metadata accessor for Image.Scale();
  (*(*(v37 - 8) + 104))(v34 + v35, v36, v37);
  *v34 = swift_getKeyPath();
  v38 = v62;
  PlaylistCurators.View.fontTextStyle.getter(v62);
  v39 = type metadata accessor for Font.Design();
  v40 = v65;
  (*(*(v39 - 8) + 56))(v65, 1, 1, v39);
  v41 = static Font.system(_:design:weight:)();
  sub_1000095E8(v40, &qword_1011B4970, &qword_100F03C00);
  (*(v66 + 8))(v38, v67);
  v42 = swift_getKeyPath();
  v43 = (v31 + *(v63 + 44));
  *v43 = v42;
  v43[1] = v41;
  v45 = v60;
  v44 = v61;
  sub_1000089F8(v60, v61, &qword_1011B4980, &qword_100F054C8);
  v46 = v64;
  sub_1000089F8(v31, v64, &qword_1011B4978, &qword_100F054C0);
  v47 = v68;
  sub_1000089F8(v44, v68, &qword_1011B4980, &qword_100F054C8);
  v48 = sub_10010FC20(&qword_1011B49A8, &qword_100F05550);
  sub_1000089F8(v46, v47 + *(v48 + 48), &qword_1011B4978, &qword_100F054C0);
  sub_1000095E8(v31, &qword_1011B4978, &qword_100F054C0);
  sub_1000095E8(v45, &qword_1011B4980, &qword_100F054C8);
  sub_1000095E8(v46, &qword_1011B4978, &qword_100F054C0);
  return sub_1000095E8(v44, &qword_1011B4980, &qword_100F054C8);
}

uint64_t sub_100B87C78(uint64_t *a1)
{
  v2 = *(type metadata accessor for PlaylistCurators.View(0) - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v4 = *a1;
  if (*(*a1 + 16) <= 3uLL)
  {
  }

  else
  {
    v5 = *(type metadata accessor for PlaylistCurators.Curator(0) - 8);
    sub_100B065A8(v4, v4 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), 0, 7uLL);
    v4 = v6;
  }

  sub_100C0CAD8(v7);
  v9 = v8;

  v14[1] = v9;
  swift_getKeyPath();
  sub_100B8D7C0(a1, v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PlaylistCurators.View);
  v10 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v4;
  sub_100B8D828(v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for PlaylistCurators.View);
  v12 = swift_allocObject();
  *(v12 + 16) = sub_100B8E928;
  *(v12 + 24) = v11;
  sub_10010FC20(&qword_1011B49B0, &qword_100F05578);
  sub_10010FC20(&qword_1011B49B8, &qword_100F05580);
  sub_100020674(&qword_1011B49C0, &qword_1011B49B0, &qword_100F05578, &protocol conformance descriptor for [A]);
  sub_100B8EA1C();
  return ForEach<>.init(_:id:content:)();
}

uint64_t sub_100B87F04@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a3 + 16);
  v6 = __OFSUB__(v5, result);
  v7 = v5 - result;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    v8 = v7;
    sub_100B87F6C(a2, a4);
    result = sub_10010FC20(&qword_1011B49B8, &qword_100F05580);
    *(a4 + *(result + 36)) = v8;
  }

  return result;
}

void sub_100B87F6C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v107 = a1;
  v110 = a2;
  v2 = type metadata accessor for Artwork.CropStyle();
  v114 = *(v2 - 8);
  __chkstk_darwin();
  v103 = &v80 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ArtworkImage();
  v108 = *(v4 - 8);
  v109 = v4;
  __chkstk_darwin();
  v112 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v102 = &v80 - v6;
  __chkstk_darwin();
  v106 = &v80 - v7;
  __chkstk_darwin();
  v104 = &v80 - v8;
  v9 = type metadata accessor for ArtworkImage.ReusePolicy();
  v113 = *(v9 - 8);
  __chkstk_darwin();
  v115 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = *(type metadata accessor for ArtworkImage.Placeholder(0) - 8);
  v11 = *(v84 + 64);
  __chkstk_darwin();
  v86 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v111 = &v80 - v12;
  sub_10010FC20(&qword_1011B4720, &qword_100F02D00);
  __chkstk_darwin();
  v90 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v80 - v14;
  sub_10010FC20(&unk_1011B55F0, &unk_100EFFDC0);
  __chkstk_darwin();
  v91 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v87 = &v80 - v17;
  __chkstk_darwin();
  v19 = &v80 - v18;
  sub_10010FC20(&qword_1011B5930, &qword_100EFDE70);
  __chkstk_darwin();
  v88 = &v80 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v83 = &v80 - v21;
  __chkstk_darwin();
  v23 = &v80 - v22;
  v101 = sub_10010FC20(&unk_1011B4A40, &qword_100F055B8);
  v99 = *(v101 - 8);
  __chkstk_darwin();
  v95 = &v80 - v24;
  v89 = sub_10010FC20(&qword_1011B4A08, &qword_100F055A0);
  __chkstk_darwin();
  v96 = &v80 - v25;
  v93 = sub_10010FC20(&qword_1011B49F8, &qword_100F05598);
  __chkstk_darwin();
  v94 = &v80 - v26;
  v92 = sub_10010FC20(&qword_1011B49E8, &qword_100F05590);
  __chkstk_darwin();
  v100 = &v80 - v27;
  v97 = sub_10010FC20(&qword_1011B49D8, &qword_100F05588);
  __chkstk_darwin();
  v98 = &v80 - v28;
  sub_10010FC20(&qword_1011B0C18, &qword_100F04980);
  __chkstk_darwin();
  v30 = &v80 - v29;
  sub_100B86ADC((&v80 - v29));
  v31 = sub_100B8ED70(v30);
  sub_1000095E8(v30, &qword_1011B0C18, &qword_100F04980);
  v32 = type metadata accessor for PlaylistCurators.Curator(0);
  sub_1000089F8(v107 + *(v32 + 20), v19, &unk_1011B55F0, &unk_100EFFDC0);
  static Artwork.CropStyle.boundedBox.getter();
  v33 = *(v114 + 56);
  v107 = v2;
  v82 = v114 + 56;
  v81 = v33;
  v33(v15, 0, 1, v2);
  v34 = type metadata accessor for Artwork();
  v35 = *(v34 - 8);
  if ((*(v35 + 48))(v19, 1, v34) == 1)
  {
    sub_1000095E8(v15, &qword_1011B4720, &qword_100F02D00);
    sub_1000095E8(v19, &unk_1011B55F0, &unk_100EFFDC0);
    v36 = type metadata accessor for ArtworkImage.ViewModel(0);
    (*(*(v36 - 8) + 56))(v23, 1, 1, v36);
  }

  else
  {
    (*(v35 + 32))(v23, v19, v34);
    v36 = type metadata accessor for ArtworkImage.ViewModel(0);
    sub_10003D17C(v15, &v23[*(v36 + 20)], &qword_1011B4720, &qword_100F02D00);
    (*(*(v36 - 8) + 56))(v23, 0, 1, v36);
  }

  v37 = sub_10010FC20(&unk_1011B4740, &qword_100F02D08);
  v38 = v111;
  (*(*(v37 - 8) + 56))(v111, 8, 11, v37);
  v85 = v31;
  v123 = 0;
  v121 = 0;
  v119 = 1;
  v39 = *(v113 + 104);
  v105 = v9;
  v39(v115, enum case for ArtworkImage.ReusePolicy.reusableForDistinctItems(_:), v9);
  v40 = v86;
  sub_100B8D7C0(v38, v86, type metadata accessor for ArtworkImage.Placeholder);
  v41 = (*(v84 + 80) + 16) & ~*(v84 + 80);
  v42 = (v11 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = swift_allocObject();
  sub_100B8D828(v40, v43 + v41, type metadata accessor for ArtworkImage.Placeholder);
  v44 = v43 + v42;
  *v44 = v31;
  *(v44 + 8) = v123;
  *(v44 + 9) = *v122;
  *(v44 + 12) = *&v122[3];
  *(v44 + 16) = v31;
  *(v44 + 24) = v121;
  *(v44 + 25) = *v120;
  *(v44 + 28) = *&v120[3];
  *(v44 + 32) = 0;
  *(v44 + 40) = v119;
  *(v44 + 41) = 1;
  v45 = v83;
  sub_1000089F8(v23, v83, &qword_1011B5930, &qword_100EFDE70);
  type metadata accessor for ArtworkImage.ViewModel(0);
  v46 = *(*(v36 - 8) + 48);
  v47 = v23;
  if (v46(v45, 1, v36) == 1)
  {
    sub_1000095E8(v45, &qword_1011B5930, &qword_100EFDE70);
    v48 = 1;
    v49 = v87;
  }

  else
  {
    v49 = v87;
    (*(v35 + 16))(v87, v45, v34);
    sub_100B8DCA8(v45, type metadata accessor for ArtworkImage.ViewModel);
    v48 = 0;
  }

  (*(v35 + 56))(v49, v48, 1, v34);
  sub_1000089F8(v49, v91, &unk_1011B55F0, &unk_100EFFDC0);
  v50 = v104;
  ArtworkImage.init(_:width:height:)();
  sub_1000095E8(v49, &unk_1011B55F0, &unk_100EFFDC0);
  ArtworkImage.artworkReusablePolicy(_:)();
  v91 = v47;
  v51 = v88;
  sub_1000089F8(v47, v88, &qword_1011B5930, &qword_100EFDE70);
  v52 = v46(v51, 1, v36);
  v53 = v105;
  if (v52 == 1)
  {
    sub_1000095E8(v51, &qword_1011B5930, &qword_100EFDE70);
    v54 = v90;
    v55 = v107;
    v81(v90, 1, 1, v107);
    v56 = v114;
    v57 = v103;
  }

  else
  {
    v54 = v90;
    sub_1000089F8(v51 + *(v36 + 20), v90, &qword_1011B4720, &qword_100F02D00);
    sub_100B8DCA8(v51, type metadata accessor for ArtworkImage.ViewModel);
    v56 = v114;
    v55 = v107;
    v58 = (*(v114 + 48))(v54, 1, v107);
    v57 = v103;
    if (v58 != 1)
    {
      (*(v56 + 32))(v103, v54, v55);
      goto LABEL_15;
    }
  }

  if (qword_1011B0618 != -1)
  {
    swift_once();
  }

  v59 = sub_1000060E4(v55, static Artwork.CropStyle.fallback);
  (*(v56 + 16))(v57, v59, v55);
  if ((*(v56 + 48))(v54, 1, v55) != 1)
  {
    sub_1000095E8(v54, &qword_1011B4720, &qword_100F02D00);
  }

LABEL_15:
  v60 = v102;
  v61 = v112;
  ArtworkImage.artworkCropStyle(_:)();
  (*(v56 + 8))(v57, v55);
  v62 = v109;
  v63 = *(v108 + 8);
  v63(v61, v109);
  v64 = v106;
  ArtworkImage.artworkIdealAspectRatio(_:contentMode:)();
  v63(v60, v62);
  sub_10010FC20(&qword_1011B33A8, &qword_100F03130);
  sub_100B5A07C();
  v65 = v95;
  ArtworkImage.artworkPlaceholder<A>(_:)();

  v63(v64, v62);
  v63(v50, v62);
  (*(v113 + 8))(v115, v53);
  sub_100B8DCA8(v111, type metadata accessor for ArtworkImage.Placeholder);
  sub_1000095E8(v91, &qword_1011B5930, &qword_100EFDE70);
  v66 = v96;
  v67 = &v96[*(v89 + 36)];
  v68 = *(type metadata accessor for PlaceholderStyleModifier(0) + 20);
  *(v67 + v68) = swift_getKeyPath();
  sub_10010FC20(&qword_1011B0878, &qword_100EFDE30);
  swift_storeEnumTagMultiPayload();
  *v67 = sub_100B89890;
  v67[1] = 0;
  (*(v99 + 32))(v66, v65, v101);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v69 = v94;
  sub_10003D17C(v66, v94, &qword_1011B4A08, &qword_100F055A0);
  v70 = (v69 + *(v93 + 36));
  v71 = v117;
  *v70 = v116;
  v70[1] = v71;
  v70[2] = v118;
  v72 = v100;
  sub_10003D17C(v69, v100, &qword_1011B49F8, &qword_100F05598);
  v73 = v72 + *(v92 + 36);
  *v73 = 0;
  *(v73 + 8) = 0;
  *(v73 + 16) = 2;
  if (qword_1011B06C0 != -1)
  {
    swift_once();
  }

  v74 = qword_1011B3C98;
  v75 = qword_1011B3CA0;
  v76 = byte_1011B3CA8;
  v77 = v72;
  v78 = v98;
  sub_10003D17C(v77, v98, &qword_1011B49E8, &qword_100F05590);
  v79 = v78 + *(v97 + 36);
  *v79 = v74;
  *(v79 + 8) = v75;
  *(v79 + 16) = v76;
  *(v79 + 24) = 0;
  *(v79 + 32) = 0;
  *(v79 + 40) = 2;
  sub_10003D17C(v78, v110, &qword_1011B49D8, &qword_100F05588);
}