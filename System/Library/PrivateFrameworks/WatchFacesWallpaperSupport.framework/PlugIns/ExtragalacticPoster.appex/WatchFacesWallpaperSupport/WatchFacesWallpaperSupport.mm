__n128 sub_100001A28(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100001A4C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100001A6C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

__n128 sub_100001AD0(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

void sub_100001AF0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_100001B3C(uint64_t a1, double a2, double a3, double a4)
{
  v5._countAndFlagsBits = 40;
  v5._object = 0xE100000000000000;
  sub_100013928(v5);
  type metadata accessor for UIRectCorner(0);
  sub_100013B88();
  v6._countAndFlagsBits = 2633001;
  v6._object = 0xE300000000000000;
  sub_100013928(v6);
  type metadata accessor for CGPoint(0);
  sub_100013B88();
  v7._countAndFlagsBits = 2633001;
  v7._object = 0xE300000000000000;
  sub_100013928(v7);
  v8._countAndFlagsBits = sub_1000139D8();
  sub_100013928(v8);

  v9._countAndFlagsBits = 41;
  v9._object = 0xE100000000000000;
  sub_100013928(v9);
  return 0;
}

uint64_t sub_100001C50@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100001B3C(*v1, *(v1 + 8), *(v1 + 16), *(v1 + 24));
  *a1 = result;
  a1[1] = v4;
  return result;
}

BOOL sub_100001CD4(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_100001D04@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_100001D30@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_100001E1C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_100001E4C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_100002028(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_100001EF4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UIRectEdge(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100001FAC(uint64_t a1)
{
  result = sub_100001FD4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100001FD4()
{
  result = qword_100022918;
  if (!qword_100022918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100022918);
  }

  return result;
}

uint64_t sub_100002028(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_100002060(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100002080(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t sub_1000020DC()
{

  return swift_deallocClassInstance();
}

id sub_100002138()
{
  v1 = [objc_allocWithZone(UIBezierPath) init];
  v2 = *(v0 + 72);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = 0;
    v6 = v2 + 32;
    v7 = 1;
    do
    {
      if (v5 >= *(v2 + 16))
      {
        __break(1u);
LABEL_27:
        result = sub_100013BD8();
        __break(1u);
        return result;
      }

      sub_1000024A0(v6, v18);
      if (v7)
      {
        sub_1000024A0(v18, v17);
        sub_100002504(&qword_1000229D0, &qword_100015CC0);
        type metadata accessor for PolygonPathPointStep();
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_27;
        }

        [v1 moveToPoint:{v13[1].x, v13[1].y}];

        v4 = v13;
      }

      else
      {
        sub_1000024A0(v18, v17);
        sub_100002504(&qword_1000229D0, &qword_100015CC0);
        type metadata accessor for PolygonPathPointStep();
        if (swift_dynamicCast())
        {
          x = v13[1].x;
          y = v13[1].y;
          [v1 currentPoint];
          v21.x = x;
          v21.y = y;
          if (!CGPointEqualToPoint(v19, v21))
          {
            [v1 addLineToPoint:{x, y}];
          }
        }

        else
        {
          sub_1000024A0(v18, v17);
          if (swift_dynamicCast())
          {
            if (v13 == 1)
            {
              v11 = 4.71238898;
              v10 = 3.14159265;
            }

            else if (v13 == 2)
            {
              v11 = 0.0;
              v10 = 4.71238898;
            }

            else
            {
              v10 = 0.0;
              v11 = 1.57079633;
              if (v13 != 8)
              {
                v11 = 3.14159265;
                v10 = 1.57079633;
              }
            }

            [v1 addArcWithCenter:1 radius:v14 startAngle:v15 endAngle:v16 clockwise:{v10, v11}];
          }
        }
      }

      ++v5;
      sub_10000254C(v18);
      v7 = 0;
      v6 += 40;
    }

    while (v3 != v5);
    if (v4)
    {

      [v1 currentPoint];
      if (!CGPointEqualToPoint(v20, v4[1]))
      {
        [v1 addLineToPoint:{v4[1].x, v4[1].y}];
      }
    }

    [v1 closePath];
  }

  return v1;
}

uint64_t sub_1000024A0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100002504(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000254C(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

id sub_100002598(double a1, double a2, double a3, double a4)
{
  if (*(v4 + OBJC_IVAR____TtC19ExtragalacticPoster19RectangleDescriptor_roundedCorners + 8))
  {
    v9 = [objc_opt_self() bezierPathWithRect:{a1, a2, a3, a4}];
  }

  else
  {
    v10 = *(v4 + OBJC_IVAR____TtC19ExtragalacticPoster19RectangleDescriptor_roundedCorners);
    nullsub_1();
    v9 = [objc_opt_self() bezierPathWithRoundedRect:v10 byRoundingCorners:a1 cornerRadii:{a2, a3, a4, v11, v12}];
  }

  return v9;
}

id sub_1000026B4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RectangleDescriptor();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10000270C()
{
  nullsub_1();
  v1 = *((swift_isaMask & *v0) + 0x88);

  return v1();
}

id sub_100002884()
{
  result = [objc_allocWithZone(PRTimeFontConfiguration) initWithTimeFontIdentifier:PRTimeFontIdentifierSoft weight:858.0];
  qword_1000255B0 = result;
  return result;
}

void sub_1000028DC()
{
  sub_100002504(&unk_1000231A0, &qword_100015E40);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100015930;
  v1 = PRTimeFontIdentifierSoft;
  v2 = objc_allocWithZone(PRTimeFontConfiguration);
  v3 = v1;
  v4 = [v2 initWithTimeFontIdentifier:v3 weight:276.0];

  *(v0 + 32) = v4;
  if (qword_100022880 != -1)
  {
    swift_once();
  }

  v5 = qword_1000255B0;
  *(v0 + 40) = qword_1000255B0;
  v6 = PRTimeFontIdentifierRounded;
  v7 = objc_allocWithZone(PRTimeFontConfiguration);
  v8 = v5;
  v9 = v6;
  v10 = [v7 initWithTimeFontIdentifier:v9 weight:858.0];

  *(v0 + 48) = v10;
  v11 = PRTimeFontIdentifierStencil;
  v12 = objc_allocWithZone(PRTimeFontConfiguration);
  v13 = v11;
  v14 = [v12 initWithTimeFontIdentifier:v13 weight:858.0];

  *(v0 + 56) = v14;
  qword_1000255B8 = v0;
}

id sub_100002A64()
{
  v1 = *(v0 + 48) * 0.5;
  v17.origin.x = sub_100002C38();
  v18 = CGRectInset(v17, v1, v1);
  x = v18.origin.x;
  y = v18.origin.y;
  width = v18.size.width;
  height = v18.size.height;
  CGRectGetMidX(v18);
  v19.origin.x = x;
  v19.origin.y = y;
  v19.size.width = width;
  v19.size.height = height;
  CGRectGetMidX(v19);
  nullsub_1();
  v7 = v6;
  v9 = v8;
  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = width;
  v20.size.height = height;
  v10 = CGRectGetWidth(v20) * 0.5;
  v21.origin.x = x;
  v21.origin.y = y;
  v21.size.width = width;
  v21.size.height = height;
  if (v9 <= CGRectGetMidY(v21))
  {
    v15 = [objc_opt_self() bezierPathWithArcCenter:0 radius:v7 startAngle:v9 endAngle:v10 clockwise:{0.0, 6.28318531}];

    return v15;
  }

  else
  {
    v22.origin.x = x;
    v22.origin.y = y;
    v22.size.width = width;
    v22.size.height = height;
    MaxY = CGRectGetMaxY(v22);
    v12 = asin((MaxY - v9) / v10);
    v13 = [objc_allocWithZone(UIBezierPath) init];
    [v13 addArcWithCenter:0 radius:v7 startAngle:v9 endAngle:v10 clockwise:{v12, 3.14159265 - v12}];
    [v13 closePath];
    return v13;
  }
}

__n128 sub_100002C4C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_100002C68(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 56))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100002C88(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 56) = v3;
  return result;
}

uint64_t sub_100002CD0()
{

  sub_10000254C((v0 + 64));

  return swift_deallocClassInstance();
}

uint64_t sub_100002D3C@<X0>(uint64_t *a1@<X0>, double **a2@<X1>, uint64_t *a3@<X8>, double a4@<D0>)
{
  result = sub_1000032C0(*a1, *a2, a4);
  *a3 = result;
  return result;
}

uint64_t sub_100002D6C(char a1, void *a2, double a3, double a4, double a5, double a6, double a7)
{
  if (a1)
  {
    sub_100003508();
    v12 = a4;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v21 = 0;
    v22 = v12 * 0.5;
  }

  else
  {
    sub_100003508();
    v14 = v23;
    v16 = v24;
    v18 = v25;
    v22 = a3;
    v20 = v26;
    v21 = 3;
  }

  v27 = type metadata accessor for LetterURectangleDescriptor();
  v28 = objc_allocWithZone(v27);
  v29 = &v28[OBJC_IVAR____TtC19ExtragalacticPoster19RectangleDescriptor_frame];
  *v29 = v14;
  *(v29 + 1) = v16;
  *(v29 + 2) = v18;
  *(v29 + 3) = v20;
  v30 = &v28[OBJC_IVAR____TtC19ExtragalacticPoster19RectangleDescriptor_roundedCorners];
  *v30 = 0;
  v30[8] = 1;
  *&v28[OBJC_IVAR____TtC19ExtragalacticPoster19RectangleDescriptor_cornerRadius] = v22;
  v31 = &v28[OBJC_IVAR____TtC19ExtragalacticPoster19RectangleDescriptor_configuration];
  v32 = a5;
  *v31 = a5;
  v31[1] = a6;
  v31[2] = a7;
  v33 = &v28[OBJC_IVAR____TtC19ExtragalacticPoster19RectangleDescriptor_excludingEdges];
  *v33 = v21;
  v33[8] = 0;
  v34 = type metadata accessor for RectangleDescriptor();
  v79.receiver = v28;
  v79.super_class = v34;
  v73 = objc_msgSendSuper2(&v79, "init");
  if (a1)
  {
    v36 = a4;
    v35 = a3;
    sub_100003508();
    v38 = v37;
    v40 = v39;
    v42 = v41;
    v44 = v43;
    v45 = objc_allocWithZone(v34);
    v46 = &v45[OBJC_IVAR____TtC19ExtragalacticPoster19RectangleDescriptor_frame];
    *v46 = v38;
    *(v46 + 1) = v40;
    v32 = a5;
    *(v46 + 2) = v42;
    *(v46 + 3) = v44;
    v47 = &v45[OBJC_IVAR____TtC19ExtragalacticPoster19RectangleDescriptor_roundedCorners];
    *v47 = 0;
    v47[8] = 1;
    *&v45[OBJC_IVAR____TtC19ExtragalacticPoster19RectangleDescriptor_cornerRadius] = 0;
    v48 = &v45[OBJC_IVAR____TtC19ExtragalacticPoster19RectangleDescriptor_configuration];
    *v48 = a5;
    v48[1] = a6;
    v48[2] = a7;
    v49 = &v45[OBJC_IVAR____TtC19ExtragalacticPoster19RectangleDescriptor_excludingEdges];
    *v49 = 9;
    v49[8] = 0;
    v75.receiver = v45;
    v75.super_class = v34;
    v50 = objc_msgSendSuper2(&v75, "init");
    sub_100002504(&qword_100022B80, &unk_100015A70);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_1000159E0;
    *(v51 + 56) = v27;
    *(v51 + 64) = &off_10001D2C8;
    *(v51 + 32) = v73;
    v52 = a2[3];
    v53 = a2[4];
    sub_100003518(a2, v52);
    v54 = *(v53 + 40);
    v55 = v73;
    v56 = v54(v52, v53);
    *(v51 + 104) = v34;
    *(v51 + 112) = &off_10001D2C8;
    *(v51 + 72) = v56;
    *(v51 + 80) = v50;
    v57 = a2[3];
    v58 = a2[4];
    sub_100003518(a2, v57);
    v59 = *(v58 + 32);
    v60 = v50;
    *(v51 + 120) = v59(v57, v58);

    v61 = 0xE400000000000000;
    v62 = 1702195828;
  }

  else
  {
    sub_100002504(&qword_100022B80, &unk_100015A70);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_1000159D0;
    *(v51 + 56) = v27;
    *(v51 + 64) = &off_10001D2C8;
    *(v51 + 32) = v73;
    v63 = a2[3];
    v64 = a2[4];
    sub_100003518(a2, v63);
    v65 = *(v64 + 40);
    v66 = v73;
    *(v51 + 72) = v65(v63, v64);
    v62 = 0x65736C6166;
    v61 = 0xE500000000000000;
    v36 = a4;
    v35 = a3;
  }

  *&v76[0] = 0;
  *(&v76[0] + 1) = 0xE000000000000000;
  sub_100013B08(26);
  v80._countAndFlagsBits = 2633045;
  v80._object = 0xE300000000000000;
  sub_100013928(v80);
  v81._countAndFlagsBits = v62;
  v81._object = v61;
  sub_100013928(v81);

  v82._countAndFlagsBits = 2633001;
  v82._object = 0xE300000000000000;
  sub_100013928(v82);
  v77 = v35;
  v78 = v36;
  type metadata accessor for CGSize(0);
  sub_100013B88();
  v83._countAndFlagsBits = 2633001;
  v83._object = 0xE300000000000000;
  sub_100013928(v83);
  v84._countAndFlagsBits = sub_1000139D8();
  sub_100013928(v84);

  v85._countAndFlagsBits = 2633001;
  v85._object = 0xE300000000000000;
  sub_100013928(v85);
  v86._countAndFlagsBits = sub_1000139D8();
  sub_100013928(v86);

  v87._countAndFlagsBits = 2633001;
  v87._object = 0xE300000000000000;
  sub_100013928(v87);
  sub_100003518(a2, a2[3]);
  sub_100013C68();
  v88._countAndFlagsBits = 41;
  v88._object = 0xE100000000000000;
  sub_100013928(v88);

  v67 = v76[0];
  sub_1000024A0(a2, v76);
  type metadata accessor for LetterUDescriptor();
  v68 = swift_allocObject();
  *(v68 + 120) = 0;
  *(v68 + 40) = v35;
  *(v68 + 48) = v36;
  *(v68 + 16) = v32;
  *(v68 + 24) = a6;
  *(v68 + 32) = a7;
  *(v68 + 56) = v51;
  *(v68 + 104) = v67;
  sub_10000345C(v76, v68 + 64);
  *(v68 + 120) = a1 & 1;
  sub_10000254C(a2);
  return v68;
}

uint64_t sub_1000032C0(uint64_t a1, double *a2, double a3)
{
  sub_100013A68();
  v7 = v6;
  v9 = v8;
  sub_100013588();
  v11 = v10;
  sub_100013588();
  v13 = v12;
  sub_100013588();
  v15 = v14;
  sub_1000024A0(a1 + 64, v22);
  sub_1000024A0((a2 + 8), v21);
  if (a3 <= 0.0)
  {
    sub_10000254C(v21);
    v17 = v22;
LABEL_6:
    sub_10000345C(v17, v23);
    goto LABEL_7;
  }

  if (a3 >= 1.0)
  {
    sub_10000254C(v22);
    v17 = v21;
    goto LABEL_6;
  }

  v23[3] = &type metadata for InterpolatedColorProvider;
  v23[4] = sub_100003474();
  v16 = swift_allocObject();
  v23[0] = v16;
  sub_1000024A0(v22, v16 + 16);
  sub_1000024A0(v21, v16 + 56);
  *(v16 + 96) = a3;
  sub_10000254C(v21);
  sub_10000254C(v22);
LABEL_7:
  v18 = *(a1 + 120);
  sub_1000024A0(v23, v22);
  v19 = sub_100002D6C(v18, v22, v7, v9, v11, v13, v15);
  sub_10000254C(v23);
  return v19;
}

uint64_t sub_10000345C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_100003474()
{
  result = qword_100022B78;
  if (!qword_100022B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100022B78);
  }

  return result;
}

uint64_t sub_1000034C8()
{
  sub_10000254C((v0 + 16));
  sub_10000254C((v0 + 56));

  return _swift_deallocObject(v0, 104, 7);
}

void *sub_100003518(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_10000355C()
{

  return swift_deallocClassInstance();
}

__n128 initializeBufferWithCopyOfBuffer for PathConfiguration(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1000035D4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10000361C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void sub_10000366C(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC19ExtragalacticPoster29ExtragalacticPosterController_backgroundView;
  v5 = *(v2 + OBJC_IVAR____TtC19ExtragalacticPoster29ExtragalacticPosterController_backgroundView);
  if (v5)
  {
    v6 = *(v2 + OBJC_IVAR____TtC19ExtragalacticPoster29ExtragalacticPosterController_backgroundView);
  }

  else
  {
    type metadata accessor for BackgroundContentView();
    v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v8 = *(v2 + v4);
    *(v2 + v4) = v7;
    v6 = v7;

    v5 = 0;
  }

  v9 = v5;
  [a1 bounds];
  v13 = v12;
  v15 = v14;
  if (v10 > v11)
  {
    v16 = v10;
  }

  else
  {
    v16 = v11;
  }

  if (v11 >= v10)
  {
    v17 = v10;
  }

  else
  {
    v17 = v11;
  }

  v22 = v6;
  [v22 setFrame:{v13, v15, v17, v16}];
  v18 = (v2 + OBJC_IVAR____TtC19ExtragalacticPoster29ExtragalacticPosterController_contentSize);
  *v18 = v17;
  v18[1] = v16;
  v19 = [v22 superview];

  if (!v19 || (sub_100003EFC(), v20 = a1, v21 = sub_100013A98(), v19, v20, (v21 & 1) == 0))
  {
    [a1 addSubview:v22];
  }

  sub_100003F48(&qword_100022CD0, type metadata accessor for ExtragalacticPosterController, "=k");
  swift_unknownObjectRetain();
  sub_100013748();
}

void sub_10000383C()
{
  v1 = sub_1000137B8();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v24[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1000136E8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = OBJC_IVAR____TtC19ExtragalacticPoster29ExtragalacticPosterController_backgroundView;
  v10 = *(v0 + OBJC_IVAR____TtC19ExtragalacticPoster29ExtragalacticPosterController_backgroundView);
  if (!v10)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v11 = *(v0 + OBJC_IVAR____TtC19ExtragalacticPoster29ExtragalacticPosterController_contentSize);
  v12 = *(v0 + OBJC_IVAR____TtC19ExtragalacticPoster29ExtragalacticPosterController_contentSize + 8);
  if (v11 > v12)
  {
    v13 = *(v0 + OBJC_IVAR____TtC19ExtragalacticPoster29ExtragalacticPosterController_contentSize);
  }

  else
  {
    v13 = *(v0 + OBJC_IVAR____TtC19ExtragalacticPoster29ExtragalacticPosterController_contentSize + 8);
  }

  if (v12 < v11)
  {
    v11 = *(v0 + OBJC_IVAR____TtC19ExtragalacticPoster29ExtragalacticPosterController_contentSize + 8);
  }

  v14 = &v10[OBJC_IVAR____TtC19ExtragalacticPoster21BackgroundContentView_portraitSize];
  *v14 = v11;
  *(v14 + 1) = v13;
  v15 = [v10 superview];
  if (!v15)
  {
LABEL_10:
    v19 = *(v0 + v9);
    if (v19)
    {
      v20 = OBJC_IVAR____TtC19ExtragalacticPoster29ExtragalacticPosterController_colorProvider;
      swift_beginAccess();
      sub_1000024A0(v0 + v20, v25);
      v21 = OBJC_IVAR____TtC19ExtragalacticPoster29ExtragalacticPosterController_rotationFrame;
      swift_beginAccess();
      (*(v6 + 16))(v8, v0 + v21, v5);
      v22 = OBJC_IVAR____TtC19ExtragalacticPoster29ExtragalacticPosterController_progress;
      swift_beginAccess();
      (*(v2 + 16))(v4, v0 + v22, v1);
      v23 = v19;
      sub_100010DB0(v25, v8, v4);

      (*(v2 + 8))(v4, v1);
      (*(v6 + 8))(v8, v5);
      sub_10000254C(v25);
      return;
    }

    goto LABEL_13;
  }

  v16 = *(v0 + v9);
  if (v16)
  {
    v17 = v15;
    v18 = v16;
    [v17 center];
    [v18 setCenter:?];

    goto LABEL_10;
  }

LABEL_14:
  __break(1u);
}

id sub_100003B10()
{
  v1 = v0;
  *&v0[OBJC_IVAR____TtC19ExtragalacticPoster29ExtragalacticPosterController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC19ExtragalacticPoster29ExtragalacticPosterController_backgroundView] = 0;
  v2 = OBJC_IVAR____TtC19ExtragalacticPoster29ExtragalacticPosterController_rotationAnimator;
  sub_100013768();
  swift_allocObject();
  *&v0[v2] = sub_100013758();
  sub_100013688();
  *&v0[OBJC_IVAR____TtC19ExtragalacticPoster29ExtragalacticPosterController_contentSize] = CGSizeZero;
  v3 = &v0[OBJC_IVAR____TtC19ExtragalacticPoster29ExtragalacticPosterController_colorProvider];
  v4 = type metadata accessor for ColorPalette();
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 32) = 0;
  *(v5 + 40) = 0;
  *(v5 + 24) = 0;
  v3[3] = v4;
  v3[4] = sub_100003F48(&qword_100022CE0, type metadata accessor for ColorPalette, &unk_1000164A0);
  *v3 = v5;
  sub_100013788();
  v7.receiver = v1;
  v7.super_class = type metadata accessor for ExtragalacticPosterController(0);
  return objc_msgSendSuper2(&v7, "init");
}

id sub_100003C84()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ExtragalacticPosterController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ExtragalacticPosterController(uint64_t a1)
{
  result = qword_100022CC0;
  if (!qword_100022CC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100003DFC(uint64_t a1)
{
  result = sub_1000136E8();
  if (v2 <= 0x3F)
  {
    result = sub_1000137B8();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

unint64_t sub_100003EFC()
{
  result = qword_100022CD8;
  if (!qword_100022CD8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100022CD8);
  }

  return result;
}

uint64_t sub_100003F48(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t *sub_100003FDC(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_100013BE8();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = &_swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v16 = &_swiftEmptyArrayStorage;
  result = sub_100004514(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v16;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = sub_100013B18();
        v16 = v3;
        v8 = v3[2];
        v7 = v3[3];
        if (v8 >= v7 >> 1)
        {
          sub_100004514((v7 > 1), v8 + 1, 1);
          v3 = v16;
        }

        ++v5;
        v14 = type metadata accessor for PolygonPathPointStep();
        v15 = sub_10000566C();
        *&v13 = v6;
        v3[2] = v8 + 1;
        sub_10000345C(&v13, &v3[5 * v8 + 4]);
      }

      while (v2 != v5);
    }

    else
    {
      v9 = (a1 + 32);
      do
      {
        v10 = *v9;
        v16 = v3;
        v11 = v3[2];
        v12 = v3[3];

        if (v11 >= v12 >> 1)
        {
          sub_100004514((v12 > 1), v11 + 1, 1);
          v3 = v16;
        }

        v14 = type metadata accessor for PolygonPathPointStep();
        v15 = sub_10000566C();
        *&v13 = v10;
        v3[2] = v11 + 1;
        sub_10000345C(&v13, &v3[5 * v11 + 4]);
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

char *sub_10000418C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_100013BE8();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = &_swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v13 = &_swiftEmptyArrayStorage;
  result = sub_100004534(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        sub_100013B18();
        sub_10000571C();
        swift_dynamicCast();
        v13 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          sub_100004534((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        v3[2] = v7 + 1;
        sub_100005768(v12, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_10000571C();
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = v3[2];
        v10 = v3[3];
        if (v11 >= v10 >> 1)
        {
          sub_100004534((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        v3[2] = v11 + 1;
        sub_100005768(v12, &v3[4 * v11 + 4]);
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_100004358()
{

  sub_10000254C((v0 + 64));

  return swift_deallocClassInstance();
}

uint64_t sub_1000043C4@<X0>(double **a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>, double a4@<D0>)
{
  result = sub_100005414(*a1, *a2, a4);
  *a3 = result;
  return result;
}

char *sub_1000043F4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002504(&qword_100022B80, &unk_100015A70);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100004514(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100004554(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100004534(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10000469C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100004554(void *result, int64_t a2, char a3, void *a4)
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
    sub_100002504(&qword_100022F10, &qword_100015CB8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100002504(&qword_1000229D0, &qword_100015CC0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10000469C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002504(&qword_100022F28, &qword_100015CC8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1000047AC(char a1, void *a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  nullsub_1();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = type metadata accessor for RectangleDescriptor();
  v22 = objc_allocWithZone(v21);
  v23 = &v22[OBJC_IVAR____TtC19ExtragalacticPoster19RectangleDescriptor_frame];
  *v23 = v14;
  *(v23 + 1) = v16;
  *(v23 + 2) = v18;
  *(v23 + 3) = v20;
  v24 = &v22[OBJC_IVAR____TtC19ExtragalacticPoster19RectangleDescriptor_roundedCorners];
  *v24 = 0;
  v24[8] = 1;
  *&v22[OBJC_IVAR____TtC19ExtragalacticPoster19RectangleDescriptor_cornerRadius] = 0;
  v25 = &v22[OBJC_IVAR____TtC19ExtragalacticPoster19RectangleDescriptor_configuration];
  v160 = a5;
  *v25 = a5;
  v25[1] = a6;
  v25[2] = a7;
  v26 = &v22[OBJC_IVAR____TtC19ExtragalacticPoster19RectangleDescriptor_excludingEdges];
  *v26 = 5;
  v26[8] = 0;
  v163.receiver = v22;
  v163.super_class = v21;
  v27 = objc_msgSendSuper2(&v163, "init");
  v155 = a4;
  nullsub_1();
  v148 = v29;
  v150 = v28;
  v31 = v30;
  v146 = v32;
  v154 = a3;
  v152 = type metadata accessor for ParallelogramDescriptor();
  v33 = swift_allocObject();
  v34 = atan((a7 * 0.5 + a3 - a8 - a5 * 0.5 * a7) / v31);
  v35 = a7 * 0.5 / cos(v34);
  nullsub_1();
  v183 = CGRectInset(v182, v35 - a7, -(a7 * 0.5));
  x = v183.origin.x;
  y = v183.origin.y;
  width = v183.size.width;
  height = v183.size.height;
  nullsub_1();
  nullsub_1();
  sub_100002504(&unk_1000231A0, &qword_100015E40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100015930;
  v184.origin.x = x;
  v184.origin.y = y;
  v184.size.width = width;
  v184.size.height = height;
  CGRectGetMaxX(v184);
  v185.origin.x = x;
  v185.origin.y = y;
  v185.size.width = width;
  v41 = width;
  v185.size.height = height;
  CGRectGetMaxY(v185);
  nullsub_1();
  v43 = v42;
  v45 = v44;
  v46 = type metadata accessor for PolygonPathPointStep();
  v47 = swift_allocObject();
  *(v47 + 16) = v43;
  *(v47 + 24) = v45;
  *(inited + 32) = v47;
  v186.origin.x = x;
  v186.origin.y = y;
  v186.size.width = width;
  v186.size.height = height;
  CGRectGetMaxX(v186);
  v187.origin.x = x;
  v187.origin.y = y;
  v187.size.width = width;
  v187.size.height = height;
  CGRectGetMaxY(v187);
  nullsub_1();
  v49 = v48;
  v51 = v50;
  v52 = swift_allocObject();
  *(v52 + 16) = v49;
  *(v52 + 24) = v51;
  *(inited + 40) = v52;
  v188.origin.x = x;
  v188.origin.y = y;
  v188.size.width = width;
  v188.size.height = height;
  CGRectGetMinX(v188);
  v189.origin.x = x;
  v189.origin.y = y;
  v189.size.width = width;
  v189.size.height = height;
  CGRectGetMinY(v189);
  nullsub_1();
  v54 = v53;
  v56 = v55;
  v57 = swift_allocObject();
  *(v57 + 16) = v54;
  *(v57 + 24) = v56;
  *(inited + 48) = v57;
  v190.origin.x = x;
  v190.origin.y = y;
  v190.size.width = v41;
  v190.size.height = height;
  CGRectGetMinX(v190);
  v191.origin.x = x;
  v191.origin.y = y;
  v191.size.width = v41;
  v191.size.height = height;
  CGRectGetMinY(v191);
  nullsub_1();
  v59 = v58;
  v61 = v60;
  v62 = swift_allocObject();
  *(v62 + 16) = v59;
  *(v62 + 24) = v61;
  *(inited + 56) = v62;
  v63 = sub_100003FDC(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  *(v33 + 72) = v63;
  *(v33 + 16) = v150;
  *(v33 + 24) = v148;
  *(v33 + 32) = v31;
  *(v33 + 40) = v146;
  *(v33 + 48) = v160;
  *(v33 + 56) = a6;
  v151 = v33;
  v64 = a7;
  *(v33 + 64) = a7;
  sub_100002504(&qword_100022B80, &unk_100015A70);
  v65 = swift_initStackObject();
  *(v65 + 16) = xmmword_1000159D0;
  *(v65 + 56) = v21;
  *(v65 + 64) = &off_10001D2C8;
  *(v65 + 32) = v27;
  v67 = a2[3];
  v66 = a2[4];
  v68 = a2;
  sub_100003518(a2, v67);
  v69 = *(v66 + 48);
  v157 = v27;
  *(v65 + 72) = v69(v67, v66);
  if (a1)
  {
    v70 = a8;
    v71 = v155;
    nullsub_1();
    v73 = v72;
    v75 = v74;
    v77 = v76;
    v79 = v78;
    v80 = objc_allocWithZone(v21);
    v81 = &v80[OBJC_IVAR____TtC19ExtragalacticPoster19RectangleDescriptor_frame];
    *v81 = v73;
    *(v81 + 1) = v75;
    *(v81 + 2) = v77;
    *(v81 + 3) = v79;
    v82 = &v80[OBJC_IVAR____TtC19ExtragalacticPoster19RectangleDescriptor_roundedCorners];
    *v82 = 0;
    v82[8] = 1;
    *&v80[OBJC_IVAR____TtC19ExtragalacticPoster19RectangleDescriptor_cornerRadius] = 0;
    v83 = &v80[OBJC_IVAR____TtC19ExtragalacticPoster19RectangleDescriptor_configuration];
    *v83 = v160;
    v83[1] = a6;
    v83[2] = a7;
    v84 = &v80[OBJC_IVAR____TtC19ExtragalacticPoster19RectangleDescriptor_excludingEdges];
    *v84 = 7;
    v84[8] = 0;
    v162.receiver = v80;
    v162.super_class = v21;
    v85 = objc_msgSendSuper2(&v162, "init");
    v172 = v21;
    v173 = &off_10001D2C8;
    *&v171 = v85;
    v86 = a2;
    v87 = a2[3];
    v88 = a2[4];
    sub_100003518(v68, v68[3]);
    v174 = (*(v88 + 40))(v87, v88);
    v89 = sub_1000043F4(1, 2, 1, v65);
    *(v89 + 2) = 2;
    sub_100005610(&v171, (v89 + 80));
    v168 = v152;
    v169 = &off_10001D288;
    v167[0] = v151;
    v90 = v68[3];
    v91 = v68[4];
    sub_100003518(v86, v86[3]);
    v92 = *(v91 + 32);

    v170 = v92(v90, v91);
    sub_100005610(v167, &v164);
    v94 = *(v89 + 2);
    v93 = *(v89 + 3);
    if (v94 >= v93 >> 1)
    {
      v89 = sub_1000043F4((v93 > 1), v94 + 1, 1, v89);
    }

    sub_1000056C4(v167);
    sub_1000056C4(&v171);
    *(v89 + 2) = v94 + 1;
    v95 = &v89[48 * v94];
    v97 = v165;
    v96 = v166;
    *(v95 + 2) = v164;
    *(v95 + 3) = v97;
    *(v95 + 4) = v96;
  }

  else
  {
    v172 = v152;
    v173 = &off_10001D288;
    *&v171 = v151;
    v86 = a2;
    v98 = a2[3];
    v99 = a2[4];
    sub_100003518(v68, v68[3]);
    v100 = *(v99 + 40);

    v174 = v100(v98, v99);
    v89 = sub_1000043F4(1, 2, 1, v65);
    *(v89 + 2) = 2;
    sub_100005610(&v171, (v89 + 80));
    nullsub_1();
    v153 = v101;
    v149 = v102;
    v104 = v103;
    v106 = v105;
    v107 = type metadata accessor for RightTriangleDescriptor();
    v108 = swift_allocObject();
    v147 = v104;
    v109 = atan((v106 - a7) / v104);
    nullsub_1();
    __sincos_stret(v109);
    nullsub_1();
    nullsub_1();
    v110 = v106;
    nullsub_1();
    v112 = v111;
    v114 = v113;
    v116 = v115;
    v118 = v117;
    sub_100002504(&qword_100022F10, &qword_100015CB8);
    v119 = swift_allocObject();
    *(v119 + 16) = xmmword_100015C30;
    v192.origin.x = v112;
    v192.origin.y = v114;
    v192.size.width = v116;
    v192.size.height = v118;
    CGRectGetMaxX(v192);
    v193.origin.x = v112;
    v193.origin.y = v114;
    v193.size.width = v116;
    v193.size.height = v118;
    CGRectGetMinY(v193);
    nullsub_1();
    v121 = v120;
    v123 = v122;
    v124 = swift_allocObject();
    *(v124 + 16) = v121;
    *(v124 + 24) = v123;
    *(v119 + 56) = v46;
    v125 = sub_10000566C();
    *(v119 + 64) = v125;
    *(v119 + 32) = v124;
    v194.origin.x = v112;
    v194.origin.y = v114;
    v194.size.width = v116;
    v194.size.height = v118;
    CGRectGetMaxX(v194);
    v195.origin.x = v112;
    v195.origin.y = v114;
    v195.size.width = v116;
    v195.size.height = v118;
    CGRectGetMaxY(v195);
    nullsub_1();
    v127 = v126;
    v129 = v128;
    v130 = swift_allocObject();
    *(v130 + 16) = v127;
    *(v130 + 24) = v129;
    *(v119 + 96) = v46;
    *(v119 + 104) = v125;
    *(v119 + 72) = v130;
    v196.origin.x = v112;
    v196.origin.y = v114;
    v196.size.width = v116;
    v196.size.height = v118;
    CGRectGetMinX(v196);
    v197.origin.x = v112;
    v197.origin.y = v114;
    v197.size.width = v116;
    v197.size.height = v118;
    CGRectGetMinY(v197);
    nullsub_1();
    v132 = v131;
    v134 = v133;
    v135 = swift_allocObject();
    *(v135 + 16) = v132;
    *(v135 + 24) = v134;
    *(v119 + 136) = v46;
    *(v119 + 144) = v125;
    *(v119 + 112) = v135;
    *(v108 + 72) = v119;
    *(v108 + 16) = v153;
    *(v108 + 24) = v149;
    *(v108 + 32) = v147;
    *(v108 + 40) = v110;
    *(v108 + 48) = v160;
    *(v108 + 56) = a6;
    v64 = a7;
    *(v108 + 64) = a7;
    v168 = v107;
    v169 = &off_10001D288;
    v167[0] = v108;
    v136 = v68[3];
    v137 = v68[4];
    sub_100003518(v86, v86[3]);
    v170 = (*(v137 + 32))(v136, v137);
    sub_100005610(v167, &v164);
    v139 = *(v89 + 2);
    v138 = *(v89 + 3);
    if (v139 >= v138 >> 1)
    {
      v89 = sub_1000043F4((v138 > 1), v139 + 1, 1, v89);
    }

    sub_1000056C4(v167);
    sub_1000056C4(&v171);
    *(v89 + 2) = v139 + 1;
    v140 = &v89[48 * v139];
    v142 = v165;
    v141 = v166;
    *(v140 + 2) = v164;
    *(v140 + 3) = v142;
    *(v140 + 4) = v141;
    v70 = a8;
    v71 = v155;
  }

  *&v171 = 0;
  *(&v171 + 1) = 0xE000000000000000;
  sub_100013B08(31);
  v175._countAndFlagsBits = 0x6E6F7A69726F484ELL;
  v175._object = 0xED0000282D6C6174;
  sub_100013928(v175);
  *v167 = v154;
  *&v167[1] = v71;
  type metadata accessor for CGSize(0);
  sub_100013B88();
  v176._countAndFlagsBits = 2633001;
  v176._object = 0xE300000000000000;
  sub_100013928(v176);
  v177._countAndFlagsBits = sub_1000139D8();
  sub_100013928(v177);

  v178._countAndFlagsBits = 2633001;
  v178._object = 0xE300000000000000;
  sub_100013928(v178);
  v179._countAndFlagsBits = sub_1000139D8();
  sub_100013928(v179);

  v180._countAndFlagsBits = 2633001;
  v180._object = 0xE300000000000000;
  sub_100013928(v180);
  sub_100003518(v86, v86[3]);
  sub_100013C68();
  v181._countAndFlagsBits = 41;
  v181._object = 0xE100000000000000;
  sub_100013928(v181);

  v143 = v171;
  sub_1000024A0(v86, &v171);
  type metadata accessor for LetterNHorizontalDescriptor();
  v144 = swift_allocObject();
  *(v144 + 112) = *(&v143 + 1);
  *(v144 + 120) = 0;
  *(v144 + 128) = 0;
  *(v144 + 40) = v154;
  *(v144 + 48) = v71;
  *(v144 + 16) = v160;
  *(v144 + 24) = a6;
  *(v144 + 32) = v64;
  *(v144 + 56) = v89;
  *(v144 + 104) = v143;
  sub_10000345C(&v171, v144 + 64);
  *(v144 + 120) = v70;
  *(v144 + 128) = a1 & 1;
  sub_10000254C(v86);
  return v144;
}

uint64_t sub_100005414(double *a1, uint64_t a2, double a3)
{
  sub_100013A68();
  v7 = v6;
  v9 = v8;
  sub_100013588();
  v11 = v10;
  sub_100013588();
  v13 = v12;
  sub_100013588();
  v15 = v14;
  sub_1000024A0((a1 + 8), v24);
  sub_1000024A0(a2 + 64, v23);
  if (a3 <= 0.0)
  {
    sub_10000254C(v23);
    v17 = v24;
LABEL_6:
    sub_10000345C(v17, v25);
    goto LABEL_7;
  }

  if (a3 >= 1.0)
  {
    sub_10000254C(v24);
    v17 = v23;
    goto LABEL_6;
  }

  v25[3] = &type metadata for InterpolatedColorProvider;
  v25[4] = sub_100003474();
  v16 = swift_allocObject();
  v25[0] = v16;
  sub_1000024A0(v24, v16 + 16);
  sub_1000024A0(v23, v16 + 56);
  *(v16 + 96) = a3;
  sub_10000254C(v23);
  sub_10000254C(v24);
LABEL_7:
  sub_100013588();
  v19 = v18;
  v20 = *(a2 + 128);
  sub_1000024A0(v25, v24);
  v21 = sub_1000047AC(v20, v24, v7, v9, v11, v13, v15, v19);
  sub_10000254C(v25);
  return v21;
}

uint64_t sub_1000055D0()
{
  sub_10000254C((v0 + 16));
  sub_10000254C((v0 + 56));

  return _swift_deallocObject(v0, 104, 7);
}

unint64_t sub_10000566C()
{
  result = qword_100022F18;
  if (!qword_100022F18)
  {
    type metadata accessor for PolygonPathPointStep();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100022F18);
  }

  return result;
}

unint64_t sub_10000571C()
{
  result = qword_100022F20;
  if (!qword_100022F20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100022F20);
  }

  return result;
}

_OWORD *sub_100005768(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10000577C()
{
  v0 = sub_100013668();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v10 - v5;
  sub_100013678();
  sub_100013648();
  (*(v1 + 104))(v4, enum case for PosterLayout.LayoutType.maglev(_:), v0);
  v7 = sub_100013658();
  v8 = *(v1 + 8);
  v8(v4, v0);
  result = (v8)(v6, v0);
  byte_1000255E0 = v7 & 1;
  return result;
}

id sub_1000058C8(double a1)
{
  v20 = 0.0;
  v18 = 0.0;
  v19 = 0.0;
  v16 = 0.0;
  v17 = 0.0;
  v14 = 0.0;
  v15 = 0.0;
  v2 = a1 / 100.0;
  if ([v1 getHue:&v19 saturation:&v18 brightness:&v17 alpha:&v20])
  {
    v3 = v17 + v2 * v17;
    if (v3 > 1.0)
    {
      v3 = 1.0;
    }

    if (v3 > 0.0)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0.0;
    }

    return [objc_allocWithZone(UIColor) initWithHue:v19 saturation:v18 brightness:v4 alpha:v20];
  }

  else if ([v12 getRed:&v16 green:&v15 blue:&v14 alpha:&v20])
  {
    v6 = v16 + v2 * v16;
    if (v6 <= 0.0)
    {
      v6 = 0.0;
    }

    if (v6 <= 1.0)
    {
      v7 = v6;
    }

    else
    {
      v7 = 1.0;
    }

    v8 = v15 + v2 * v15;
    if (v8 <= 0.0)
    {
      v8 = 0.0;
    }

    if (v8 <= 1.0)
    {
      v9 = v8;
    }

    else
    {
      v9 = 1.0;
    }

    v10 = v14 + v2 * v14;
    if (v10 <= 0.0)
    {
      v10 = 0.0;
    }

    if (v10 <= 1.0)
    {
      v11 = v10;
    }

    else
    {
      v11 = 1.0;
    }

    return [objc_allocWithZone(UIColor) initWithRed:v7 green:v9 blue:v11 alpha:v20];
  }

  else if ([v12 getWhite:&v13 alpha:&v20])
  {
    return [objc_allocWithZone(UIColor) initWithWhite:v13 + v2 * v13 alpha:v20];
  }

  else
  {

    return v12;
  }
}

uint64_t sub_100005B54(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_100013808();
  sub_100005BCC(v5, a2);
  sub_100005C30(v5, a2);
  return sub_1000137F8();
}

uint64_t *sub_100005BCC(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_100005C30(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void sub_100005C9C(uint64_t *a1@<X8>)
{
  v3 = NSStringFromCGPoint((*v1)[1]);
  v4 = sub_1000138D8();
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
}

unint64_t sub_100005CF0(uint64_t a1)
{
  result = sub_100005D18();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100005D18()
{
  result = qword_100022FD8;
  if (!qword_100022FD8)
  {
    type metadata accessor for PolygonPathPointStep();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100022FD8);
  }

  return result;
}

uint64_t sub_100005D6C(void *a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  v8 = v7;
  v52 = 0.0;
  v53 = -2.68156159e154;
  sub_100013B08(24);
  v55 = 0;
  v56 = 0xE000000000000000;
  v57._countAndFlagsBits = 0x282D4E41424CLL;
  v57._object = 0xE600000000000000;
  sub_100013928(v57);
  sub_100003518(a1, a1[3]);
  sub_100013C68();
  v58._countAndFlagsBits = 2633001;
  v58._object = 0xE300000000000000;
  sub_100013928(v58);
  v50 = a2;
  type metadata accessor for CGSize(0);
  sub_100013B88();
  v59._countAndFlagsBits = 2633001;
  v59._object = 0xE300000000000000;
  sub_100013928(v59);
  v60._countAndFlagsBits = sub_1000139D8();
  sub_100013928(v60);

  v61._countAndFlagsBits = 2633001;
  v61._object = 0xE300000000000000;
  sub_100013928(v61);
  v52 = a5;
  v53 = a6;
  v16 = a6;
  v54 = a7;
  sub_100013B88();
  v62._countAndFlagsBits = 41;
  v62._object = 0xE100000000000000;
  sub_100013928(v62);
  v45 = a7;
  v17 = a7 * 0.5;
  v51 = a3 * a4;
  v18 = a2 * 0.5;
  nullsub_1();
  v20 = v19;
  v22 = v21;
  sub_1000024A0(a1, &v52);
  v23 = v16;
  v46 = v16;
  v24 = sub_100002D6C(0, &v52, v20, v22, a5, v16, v45);
  nullsub_1();
  v26 = v25;
  v28 = v27;
  nullsub_1();
  v48 = v30;
  v49 = v29;
  sub_1000024A0(a1, &v52);
  v31 = a5;
  v32 = sub_1000047AC(1, &v52, v26, v28, a5, v23, v45, v18 * 0.333333333 + v45);
  nullsub_1();
  v47 = v33;
  v35 = v34;
  nullsub_1();
  v37 = v36;
  v39 = v38;
  v40 = v36 / 3.0;
  v41 = v38 / 3.0 - v17;
  sub_1000024A0(a1, &v52);
  v42 = sub_10000EAE4(&v52, v37, v39, v31, v46, v45, v40, v41);
  sub_100002504(&unk_1000230E0, &qword_100015DC8);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_100015C30;
  *(v43 + 32) = v32;
  *(v43 + 40) = v49;
  *(v43 + 48) = v48;
  *(v43 + 56) = v42;
  *(v43 + 64) = v47;
  *(v43 + 72) = v35;
  *(v43 + 80) = v24;
  *(v43 + 88) = 0;
  *(v43 + 96) = v51;
  *(v8 + 16) = v50;
  *(v8 + 24) = a3;
  *(v8 + 32) = v43;
  *(v8 + 40) = 0;
  *(v8 + 48) = 0xE000000000000000;
  sub_10000254C(a1);
  return v8;
}

id sub_100006110()
{
  v1 = OBJC_IVAR____TtC19ExtragalacticPoster25ExtragalacticPosterEditor_controllers;
  *&v0[v1] = sub_1000119F4(&_swiftEmptyArrayStorage);
  v10.receiver = v0;
  v10.super_class = type metadata accessor for ExtragalacticPosterEditor();
  v2 = objc_msgSendSuper2(&v10, "init");
  v3 = qword_100022898;
  v4 = v2;
  if (v3 != -1)
  {
    swift_once();
  }

  v5 = sub_100013808();
  sub_100005C30(v5, qword_1000255E8);
  v6 = sub_1000137E8();
  v7 = sub_100013A18();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "PosterEditor created", v8, 2u);
  }

  return v4;
}

uint64_t sub_100006258(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  swift_getObjectType();
  v7 = OBJC_IVAR____TtC19ExtragalacticPoster25ExtragalacticPosterEditor_controllers;
  swift_beginAccess();
  v8 = *(v3 + v7);

  v9 = sub_100006454(a3, v8);

  if (!v9)
  {
    v9 = [objc_allocWithZone(type metadata accessor for ExtragalacticPosterController(0)) init];
    swift_beginAccess();
    v10 = *(v4 + v7);
    if ((v10 & 0xC000000000000001) != 0)
    {
      if (v10 < 0)
      {
        v11 = *(v4 + v7);
      }

      else
      {
        v11 = v10 & 0xFFFFFFFFFFFFFF8;
      }

      v12 = v9;
      result = sub_100013BA8();
      if (__OFADD__(result, 1))
      {
        __break(1u);
        return result;
      }

      *(v4 + v7) = sub_100006B0C(v11, result + 1);
    }

    else
    {
      v14 = v9;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v18[0] = *(v4 + v7);
    sub_100012E08(v9, a3, isUniquelyReferenced_nonNull_native);
    *(v4 + v7) = *&v18[0];
    swift_endAccess();
  }

  v16 = [a2 backgroundView];
  sub_10000366C(v16);
  sub_100006508(v19);
  sub_1000024A0(v19, v18);
  v17 = OBJC_IVAR____TtC19ExtragalacticPoster29ExtragalacticPosterController_colorProvider;
  swift_beginAccess();
  sub_10000254C(&v9[v17]);
  sub_10000345C(v18, &v9[v17]);
  swift_endAccess();
  if ((sub_100013728() & 1) == 0)
  {
    sub_10000383C();
  }

  return sub_10000254C(v19);
}

void *sub_100006454(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_100013BB8();

    if (v4)
    {
      type metadata accessor for ExtragalacticPosterController(0);
      swift_dynamicCast();
      return v10;
    }
  }

  else if (*(a2 + 16))
  {
    v6 = sub_100012330(a1);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v6);
      v9 = v8;
      return v8;
    }
  }

  return 0;
}

unint64_t sub_100006508@<X0>(uint64_t *a2@<X8>)
{
  sub_100002504(&unk_100023180, &qword_100015E30);
  sub_100013718();
  if (!v9)
  {
    v7 = type metadata accessor for ColorPalette();
    v6 = swift_allocObject();
    *(v6 + 16) = 0;
    *(v6 + 32) = 0;
    *(v6 + 40) = 0;
    *(v6 + 24) = 0;
    a2[3] = v7;
    goto LABEL_5;
  }

  result = sub_10000CC74(v8, v9);
  if (result != 10)
  {
    v4 = result;
    v5 = type metadata accessor for ColorPalette();
    v6 = swift_allocObject();
    *(v6 + 32) = 0;
    *(v6 + 40) = 0;
    *(v6 + 24) = 0;
    *(v6 + 16) = v4;
    *(v6 + 17) = 0;
    a2[3] = v5;
LABEL_5:
    result = sub_100006D40();
    a2[4] = result;
    *a2 = v6;
    return result;
  }

  __break(1u);
  return result;
}

id sub_100006AA4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ExtragalacticPosterEditor();
  return objc_msgSendSuper2(&v2, "dealloc");
}

Swift::Int sub_100006B0C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100002504(&qword_100023190, &qword_100015E38);
    v2 = sub_100013C18();
    v19 = v2;
    sub_100013B98();
    v3 = sub_100013BC8();
    if (v3)
    {
      v4 = v3;
      sub_100008110(0, &qword_100023198, PREditingLook_ptr);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        type metadata accessor for ExtragalacticPosterController(0);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_100012910(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_100013A88(*(v19 + 40));
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_100013BC8();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptyDictionarySingleton;
  }

  return v2;
}

unint64_t sub_100006D40()
{
  result = qword_100022CE0;
  if (!qword_100022CE0)
  {
    type metadata accessor for ColorPalette();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100022CE0);
  }

  return result;
}

uint64_t sub_100006D98(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = sub_100013B18();
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_100013BE8();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

void sub_100006EC0(void *a1, void *a2)
{
  v3 = OBJC_IVAR____TtC19ExtragalacticPoster25ExtragalacticPosterEditor_controllers;
  swift_beginAccess();
  v4 = *(v2 + v3);
  if ((v4 & 0xC000000000000001) != 0)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = sub_100013B98() | 0x8000000000000000;
  }

  else
  {
    v9 = -1 << *(v4 + 32);
    v6 = ~v9;
    v5 = v4 + 64;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v7 = v11 & *(v4 + 64);
    v8 = v4;
  }

  v12 = 0;
  v13 = (v6 + 64) >> 6;
  while ((v8 & 0x8000000000000000) != 0)
  {
    if (!sub_100013BC8() || (sub_100008110(0, &qword_100023198, PREditingLook_ptr), swift_dynamicCast(), v20 = v28, type metadata accessor for ExtragalacticPosterController(0), swift_dynamicCast(), v21 = v28, v16 = v12, v17 = v7, !v28))
    {
LABEL_22:
      sub_100007FE8(v8);
      return;
    }

LABEL_18:
    sub_100008110(0, &qword_1000231C8, NSObject_ptr);
    v22 = [a1 currentLook];
    v23 = sub_100013A98();

    v24 = 0;
    if (v23)
    {
      v24 = a2;
      v25 = a2;
    }

    if ((sub_100013728() & 1) == 0)
    {
      sub_10000383C();
    }

    v12 = v16;
    v7 = v17;
  }

  v14 = v12;
  v15 = v7;
  v16 = v12;
  if (v7)
  {
LABEL_14:
    v17 = (v15 - 1) & v15;
    v18 = (v16 << 9) | (8 * __clz(__rbit64(v15)));
    v19 = *(*(v8 + 56) + v18);
    v20 = *(*(v8 + 48) + v18);
    v21 = v19;
    if (!v20)
    {
      goto LABEL_22;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= v13)
    {
      goto LABEL_22;
    }

    v15 = *(v5 + 8 * v16);
    ++v14;
    if (v15)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

uint64_t sub_100007148(void *a1, uint64_t a2)
{
  v4 = [a1 currentLook];
  v5 = [v4 identifier];

  v6 = sub_1000138D8();
  v8 = v7;

  if (sub_10000CC74(v6, v8) == 10)
  {

    v6 = 0;
    v8 = 0;
  }

  v24[0] = v6;
  v24[1] = v8;
  sub_100002504(&qword_1000231B0, &qword_100015E48);
  sub_100007FF0();
  v9 = sub_100013898();

  v10 = [objc_msgSend(a1 "environment")];
  swift_unknownObjectRelease();
  if (v9)
  {
    v11.super.isa = sub_100013878().super.isa;
  }

  else
  {
    v11.super.isa = 0;
  }

  v24[0] = 0;
  v12 = [v10 storeUserInfo:v11.super.isa error:v24];

  if (v12)
  {
    v13 = v24[0];
  }

  else
  {
    v14 = v24[0];
    sub_100013578();

    swift_willThrow();
    if (qword_100022898 != -1)
    {
      swift_once();
    }

    v15 = sub_100013808();
    sub_100005C30(v15, qword_1000255E8);
    swift_errorRetain();
    v16 = sub_1000137E8();
    v17 = sub_100013A38();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v24[0] = v19;
      *v18 = 136315138;
      swift_getErrorValue();
      v20 = sub_100013CA8();
      v22 = sub_10000C434(v20, v21, v24);

      *(v18 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v16, v17, "Could not save to environment: %s", v18, 0xCu);
      sub_10000254C(v19);
    }

    else
    {
    }
  }

  return (*(a2 + 16))(a2);
}

uint64_t sub_100007494()
{
  v1 = v0;
  if (qword_100022898 != -1)
  {
LABEL_25:
    swift_once();
  }

  v2 = sub_100013808();
  sub_100005C30(v2, qword_1000255E8);
  v3 = sub_1000137E8();
  v4 = sub_100013A18();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "PosterEditor invalidated", v5, 2u);
  }

  v6 = OBJC_IVAR____TtC19ExtragalacticPoster25ExtragalacticPosterEditor_controllers;
  swift_beginAccess();
  v7 = *(v1 + v6);
  if ((v7 & 0xC000000000000001) != 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = sub_100013B98() | 0x8000000000000000;
  }

  else
  {
    v12 = -1 << *(v7 + 32);
    v9 = ~v12;
    v8 = v7 + 64;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v10 = v14 & *(v7 + 64);
    v11 = v7;
  }

  v1 = 0;
  v15 = (v9 + 64) >> 6;
  while ((v11 & 0x8000000000000000) == 0)
  {
    v16 = v1;
    v17 = v10;
    v18 = v1;
    if (!v10)
    {
      while (1)
      {
        v18 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v18 >= v15)
        {
          return sub_100007FE8(v11);
        }

        v17 = *(v8 + 8 * v18);
        ++v16;
        if (v17)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
      goto LABEL_25;
    }

LABEL_17:
    v19 = (v17 - 1) & v17;
    v20 = *(*(v11 + 56) + ((v18 << 9) | (8 * __clz(__rbit64(v17)))));
    if (!v20)
    {
      return sub_100007FE8(v11);
    }

LABEL_21:
    v21 = OBJC_IVAR____TtC19ExtragalacticPoster29ExtragalacticPosterController_backgroundView;
    v22 = *&v20[OBJC_IVAR____TtC19ExtragalacticPoster29ExtragalacticPosterController_backgroundView];
    if (v22)
    {
      [v22 removeFromSuperview];
      v23 = *&v20[v21];
      *&v20[v21] = 0;
    }

    sub_100013748();

    v1 = v18;
    v10 = v19;
  }

  if (sub_100013BC8())
  {
    swift_unknownObjectRelease();
    type metadata accessor for ExtragalacticPosterController(0);
    swift_dynamicCast();
    v20 = v25;
    v18 = v1;
    v19 = v10;
    if (v25)
    {
      goto LABEL_21;
    }
  }

  return sub_100007FE8(v11);
}

id sub_100007750(void *a1)
{
  v1 = [a1 currentLook];
  v2 = [v1 identifier];

  v3 = sub_1000138D8();
  v5 = v4;

  if (v3 == 0x6B63616C62 && v5 == 0xE500000000000000)
  {

    v7 = 1;
  }

  else
  {
    v7 = sub_100013C88();
  }

  v8 = [objc_allocWithZone(PREditorColorPickerConfiguration) init];
  v9 = [objc_opt_self() systemBlackColor];
  v10 = [objc_allocWithZone(PRPosterColor) initWithColor:v9 preferredStyle:1];

  if (v7)
  {
    v11 = &_swiftEmptyArrayStorage;
  }

  else
  {
    sub_100002504(&unk_1000231A0, &qword_100015E40);
    v11 = swift_allocObject();
    v11[1] = xmmword_100015DE0;
    *(v11 + 4) = v10;
    v12 = v10;
  }

  sub_10000418C(v11);

  v13 = objc_allocWithZone(PREditorColorPalette);
  isa = sub_100013978().super.isa;

  v15 = [v13 initWithColors:isa localizedName:0 showsColorWell:0];

  [v8 setColorPalette:v15];
  v16 = sub_100013978().super.isa;
  [v8 setSuggestedColors:v16];

  [v8 setColorWellDisplayMode:0];
  if (v7)
  {
    v17 = v10;
    [v8 setSuggestedColor:v17];
  }

  else
  {
    [v8 setSuggestedColor:0];
  }

  v18 = sub_1000138C8();

  [v8 setIdentifier:v18];

  [v8 setShowsSlider:(v7 & 1) == 0];
  return v8;
}

void *sub_100007A30()
{
  v15 = &_swiftEmptyArrayStorage;
  sub_100013B58();
  v0 = 0;
  v12 = 0x8000000100014E40;
  do
  {
    *&v13 = 0;
    *(&v13 + 1) = 0xE000000000000000;
    sub_100013B08(19);

    *&v13 = 0xD000000000000011;
    *(&v13 + 1) = v12;
    v16._countAndFlagsBits = sub_1000138E8();
    sub_100013928(v16);

    sub_100013908();

    if (qword_100022880 != -1)
    {
      swift_once();
    }

    v13 = 0u;
    v14 = 0u;
    v6 = qword_1000255B0;
    v7 = sub_1000138C8();

    v8 = sub_1000138C8();

    v9 = *(&v14 + 1);
    if (*(&v14 + 1))
    {
      v1 = sub_100003518(&v13, *(&v14 + 1));
      v2 = *(v9 - 8);
      __chkstk_darwin(v1);
      v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v2 + 16))(v4);
      v5 = sub_100013C78();
      (*(v2 + 8))(v4, v9);
      sub_10000254C(&v13);
    }

    else
    {
      v5 = 0;
    }

    ++v0;
    [objc_allocWithZone(PRMutableEditingLook) initWithIdentifier:v7 displayName:v8 initialTimeFontConfiguration:v6 initialTitleColor:v5];

    swift_unknownObjectRelease();
    sub_100013B38();
    sub_100013B68();
    sub_100013B78();
    sub_100013B48();
  }

  while (v0 != 10);
  return v15;
}

uint64_t sub_100007DEC(void *a1)
{
  sub_100002504(&unk_100023180, &qword_100015E30);
  v2 = [a1 environment];
  sub_1000136F8();
  swift_unknownObjectRelease();
  v4 = v11[0];
  v3 = v11[1];
  if (qword_100022898 != -1)
  {
    swift_once();
  }

  v5 = sub_100013808();
  sub_100005C30(v5, qword_1000255E8);

  v6 = sub_1000137E8();
  v7 = sub_100013A28();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v11[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_10000C434(v4, v3, v11);
    _os_log_impl(&_mh_execute_header, v6, v7, "initialLook poster look: %s", v8, 0xCu);
    sub_10000254C(v9);
  }

  return v4;
}

unint64_t sub_100007FF0()
{
  result = qword_1000231B8;
  if (!qword_1000231B8)
  {
    sub_100008074(&qword_1000231B0, &qword_100015E48);
    sub_1000080BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000231B8);
  }

  return result;
}

uint64_t sub_100008074(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1000080BC()
{
  result = qword_1000231C0;
  if (!qword_1000231C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000231C0);
  }

  return result;
}

uint64_t sub_100008110(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_100008158@<X0>(uint64_t *a1@<X8>)
{
  sub_100013858();
  swift_allocObject();
  sub_100013868();
  sub_100013828();
  swift_allocObject();

  sub_100013838();
  sub_100002504(&qword_100023250, qword_100015ED0);
  sub_1000135A8();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1000159E0;
  sub_1000085F4(&qword_100023258, &type metadata accessor for PRRenderingConfiguration, &protocol conformance descriptor for PRRenderingConfiguration);

  sub_100013598();
  sub_1000085F4(&qword_100023260, &type metadata accessor for PREditingConfiguration, &protocol conformance descriptor for PREditingConfiguration);

  sub_100013598();

  *a1 = v2;
  return result;
}

id sub_1000083B4(uint64_t (*a1)(void))
{
  v1 = objc_allocWithZone(a1(0));

  return [v1 init];
}

uint64_t sub_1000083F4()
{
  [objc_allocWithZone(type metadata accessor for ExtragalacticPosterUpdating()) init];
  sub_100002504(&qword_100023240, qword_100015E50);
  swift_allocObject();
  sub_100013848();
  sub_100008670(&qword_100023248, &protocol conformance descriptor for PRProviderConfiguration<A>);
  sub_1000135D8();
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100008558();
  sub_100008670(&qword_100023238, &protocol conformance descriptor for PRProviderConfiguration<A>);
  sub_1000135B8();
  return 0;
}

unint64_t sub_100008558()
{
  result = qword_100023230;
  if (!qword_100023230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100023230);
  }

  return result;
}

uint64_t sub_1000085F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100008670(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_100008074(&qword_100023240, qword_100015E50);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_1000086C0()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_100003518(v0, v1);
  v3 = (*(v2 + 32))(v1, v2);
  v4 = *(v0 + 64);
  v5 = *(v0 + 72);
  sub_100003518((v0 + 40), v4);
  v6 = (*(v5 + 32))(v4, v5);
  v7 = *(v0 + 80);
  if (v7 <= 0.0)
  {
    v8 = v6;
  }

  else if (v7 >= 1.0)
  {
    v8 = v3;
    v3 = v6;
  }

  else
  {
    v8 = v6;
    sub_100008D34();
    v9 = sub_100013A78();

    v3 = v9;
  }

  return v3;
}

void *sub_1000087BC()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_100003518(v0, v1);
  v3 = (*(v2 + 48))(v1, v2);
  v4 = *(v0 + 64);
  v5 = *(v0 + 72);
  sub_100003518((v0 + 40), v4);
  v6 = (*(v5 + 48))(v4, v5);
  v7 = *(v0 + 80);
  if (v7 <= 0.0)
  {
    v8 = v6;
  }

  else if (v7 >= 1.0)
  {
    v8 = v3;
    v3 = v6;
  }

  else
  {
    v8 = v6;
    sub_100008D34();
    v9 = sub_100013A78();

    v3 = v9;
  }

  return v3;
}

void *sub_1000088B8()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_100003518(v0, v1);
  v3 = (*(v2 + 40))(v1, v2);
  v4 = *(v0 + 64);
  v5 = *(v0 + 72);
  sub_100003518((v0 + 40), v4);
  v6 = (*(v5 + 40))(v4, v5);
  v7 = *(v0 + 80);
  if (v7 <= 0.0)
  {
    v8 = v6;
  }

  else if (v7 >= 1.0)
  {
    v8 = v3;
    v3 = v6;
  }

  else
  {
    v8 = v6;
    sub_100008D34();
    v9 = sub_100013A78();

    v3 = v9;
  }

  return v3;
}

uint64_t sub_1000089B4()
{
  v1 = v0;
  v3._countAndFlagsBits = 40;
  v3._object = 0xE100000000000000;
  sub_100013928(v3);
  sub_100003518(v1, v1[3]);
  sub_100013C68();
  v4._countAndFlagsBits = 2633001;
  v4._object = 0xE300000000000000;
  sub_100013928(v4);
  sub_100003518(v1 + 5, v1[8]);
  sub_100013C68();
  v5._countAndFlagsBits = 2633001;
  v5._object = 0xE300000000000000;
  sub_100013928(v5);
  v6._countAndFlagsBits = sub_1000139D8();
  sub_100013928(v6);

  v7._countAndFlagsBits = 41;
  v7._object = 0xE100000000000000;
  sub_100013928(v7);
  return 0;
}

uint64_t sub_100008AA0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000089B4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100008AC8()
{
  v0 = sub_1000089B4();
  v2 = v1;
  if (v0 == sub_1000089B4() && v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_100013C88();
  }

  return v4 & 1;
}

uint64_t sub_100008B58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  *(a4 + 24) = a3;
  v10 = sub_100003474();
  *(a4 + 32) = v10;
  v11 = swift_allocObject();
  *a4 = v11;
  sub_100008DC0(a1, v11 + 16);
  *(a4 + 64) = a3;
  *(a4 + 72) = v10;
  v12 = swift_allocObject();
  *(a4 + 40) = v12;
  result = sub_100008DC0(a2, v12 + 16);
  *(a4 + 80) = a5;
  return result;
}

unint64_t sub_100008C00(void *a1)
{
  a1[1] = sub_100008C38();
  a1[2] = sub_100008C8C();
  result = sub_100008CE0();
  a1[3] = result;
  return result;
}

unint64_t sub_100008C38()
{
  result = qword_100023270;
  if (!qword_100023270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100023270);
  }

  return result;
}

unint64_t sub_100008C8C()
{
  result = qword_100023278;
  if (!qword_100023278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100023278);
  }

  return result;
}

unint64_t sub_100008CE0()
{
  result = qword_100023280;
  if (!qword_100023280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100023280);
  }

  return result;
}

unint64_t sub_100008D34()
{
  result = qword_100023288;
  if (!qword_100023288)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100023288);
  }

  return result;
}

uint64_t sub_100008D80()
{
  sub_10000254C((v0 + 16));
  sub_10000254C((v0 + 56));

  return _swift_deallocObject(v0, 104, 7);
}

__n128 sub_100008DF8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_100008E1C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100008E64(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100008EC8(uint64_t a1)
{
  v2 = sub_1000136E8();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100013688();
  v6 = OBJC_IVAR____TtC19ExtragalacticPoster29ExtragalacticPosterController_rotationFrame;
  swift_beginAccess();
  (*(v3 + 40))(v1 + v6, v5, v2);
  swift_endAccess();
  sub_10000383C();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(result + OBJC_IVAR____TtC19ExtragalacticPoster27ExtragalacticPosterRenderer_renderer);
    [v8 noteContentSignificantlyChanged];

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_100009014(uint64_t a1, uint64_t a2, float a3)
{
  v4 = sub_1000136E8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000136B8();
  v8 = OBJC_IVAR____TtC19ExtragalacticPoster29ExtragalacticPosterController_rotationFrame;
  swift_beginAccess();
  (*(v5 + 40))(v3 + v8, v7, v4);
  swift_endAccess();
  sub_10000383C();
}

uint64_t sub_100009134()
{
  if (qword_100022890 != -1)
  {
    result = swift_once();
  }

  v0 = 0.419847328;
  if (byte_1000255E0)
  {
    v0 = 0.4167;
  }

  qword_100023290 = *&v0;
  return result;
}

uint64_t sub_1000091A0()
{
  if (qword_100022890 != -1)
  {
    result = swift_once();
  }

  v0 = 0.454054054;
  if (byte_1000255E0)
  {
    v0 = 0.5;
  }

  qword_100023298 = *&v0;
  return result;
}

double *sub_100009208(void *a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  v8 = v7;
  v54 = 0.0;
  v55 = -2.68156159e154;
  sub_100013B08(24);
  v57 = 0;
  v58 = 0xE000000000000000;
  v59._countAndFlagsBits = 0x282D4E414250;
  v59._object = 0xE600000000000000;
  sub_100013928(v59);
  sub_100003518(a1, a1[3]);
  sub_100013C68();
  v60._countAndFlagsBits = 2633001;
  v60._object = 0xE300000000000000;
  sub_100013928(v60);
  type metadata accessor for CGSize(0);
  sub_100013B88();
  v61._countAndFlagsBits = 2633001;
  v61._object = 0xE300000000000000;
  sub_100013928(v61);
  v49 = a4;
  v62._countAndFlagsBits = sub_1000139D8();
  sub_100013928(v62);

  v63._countAndFlagsBits = 2633001;
  v63._object = 0xE300000000000000;
  sub_100013928(v63);
  v51 = a5;
  v52 = a6;
  v54 = a5;
  v55 = a6;
  v56 = a7;
  sub_100013B88();
  v64._countAndFlagsBits = 41;
  v64._object = 0xE100000000000000;
  sub_100013928(v64);
  if (qword_1000228B0 != -1)
  {
    swift_once();
  }

  if (qword_1000228B8 != -1)
  {
    swift_once();
  }

  nullsub_1();
  v17 = v16;
  v19 = v18;
  sub_1000024A0(a1, &v54);
  v53 = a3;
  v20 = sub_100002D6C(0, &v54, v17, v19, a5, v52, a7);
  v21 = a2 / 3.0 + a7;
  v47 = v17;
  nullsub_1();
  v23 = v22;
  v24 = a2;
  v26 = v25;
  sub_1000024A0(a1, &v54);
  v27 = v26;
  v28 = v24;
  v29 = sub_1000047AC(0, &v54, v23, v27, v51, v52, a7, v21);
  nullsub_1();
  v31 = v30;
  v33 = v32;
  if (qword_100022890 != -1)
  {
    swift_once();
  }

  if (byte_1000255E0 == 1)
  {
    v34 = v33 / 5.0;
  }

  else if (v31 > v33)
  {
    v34 = v31 / 3.0 * 0.75;
  }

  else
  {
    v34 = v31 / 3.0;
  }

  v35 = v24 * v49;
  nullsub_1();
  v45 = v37;
  v46 = v36;
  v50 = v28;
  v38 = v47 - a7;
  nullsub_1();
  v40 = v39;
  v48 = v41;
  sub_1000024A0(a1, &v54);
  v42 = sub_10000EAE4(&v54, v31, v33, v51, v52, a7, v38, v34 - a7 * 0.5);
  sub_100002504(&unk_1000230E0, &qword_100015DC8);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_100015C30;
  *(v43 + 32) = v29;
  *(v43 + 40) = v40;
  *(v43 + 48) = v48;
  *(v43 + 56) = v42;
  *(v43 + 64) = v46;
  *(v43 + 72) = v45;
  *(v43 + 80) = v20;
  *(v43 + 88) = v35;
  *(v43 + 96) = 0;
  v8[2] = v50;
  v8[3] = v53;
  *(v8 + 4) = v43;
  v8[5] = 0.0;
  v8[6] = -2.68156159e154;
  sub_10000254C(a1);
  return v8;
}

uint64_t sub_10000968C()
{

  return swift_deallocClassInstance();
}

id sub_100009730(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ExtragalacticPosterUpdating();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100009918(uint64_t a1, void *a2, void *aBlock, void *a4)
{
  v4[2] = a2;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v4[5] = sub_100008110(0, &unk_1000234F0, PRPosterDescriptor_ptr);
  v7 = sub_100013888();
  v4[6] = v7;
  v8 = a2;
  v9 = a4;
  v10 = swift_task_alloc();
  v4[7] = v10;
  *v10 = v4;
  v10[1] = sub_100009A30;

  return sub_10000AB78(v7);
}

uint64_t sub_100009A30(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *(*v2 + 16);
  v7 = *v2;

  if (v3)
  {
    v8 = sub_100013568();

    v9 = v8;
    v10 = 0;
  }

  else
  {
    isa = sub_100013978().super.isa;

    v10 = isa;
    v9 = 0;
    v8 = isa;
  }

  v12 = *(v4 + 32);
  (v12)[2](v12, v10, v9);

  _Block_release(v12);
  v13 = *(v7 + 8);

  return v13();
}

uint64_t sub_100009D80(void *a1, int a2, void *aBlock)
{
  v5 = _Block_copy(aBlock);
  v6 = v5[2];
  v7 = a1;
  v6(v5, v7, 0);
  _Block_release(v5);

  v8 = *(v3 + 8);

  return v8();
}

uint64_t sub_100009E20()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000B3D0;

  return sub_100009D80(v2, v3, v4);
}

uint64_t sub_100009EE0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_10000B3D0;

  return v6();
}

uint64_t sub_100009FC8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000B3D0;

  return sub_100009EE0(v2, v3, v4);
}

uint64_t sub_10000A088(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_10000A170;

  return v7();
}

uint64_t sub_10000A170()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10000A264(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000B3D0;

  return sub_10000A088(a1, v4, v5, v6);
}

uint64_t sub_10000A330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100002504(&qword_1000234E8, &qword_100016170);
  __chkstk_darwin(v9 - 8);
  v11 = v23 - v10;
  sub_10000A61C(a3, v23 - v10);
  v12 = sub_1000139C8();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_10000B35C(v11, &qword_1000234E8, &qword_100016170);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_1000139B8();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_1000139A8();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_1000138F8() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_10000B35C(a3, &qword_1000234E8, &qword_100016170);

    return v21;
  }

LABEL_8:
  sub_10000B35C(a3, &qword_1000234E8, &qword_100016170);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_10000A61C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002504(&qword_1000234E8, &qword_100016170);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000A68C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10000A784;

  return v6(a1);
}

uint64_t sub_10000A784()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10000A87C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000A8B4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000B3D0;

  return sub_10000A68C(a1, v4);
}

uint64_t sub_10000A96C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000A170;

  return sub_10000A68C(a1, v4);
}

uint64_t sub_10000AA24()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000AA74()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10000A170;

  return sub_100009918(v2, v3, v5, v4);
}

uint64_t sub_10000AB38()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000AB78(uint64_t a1)
{
  *(v1 + 216) = a1;

  return _swift_task_switch(sub_10000AC08, 0, 0);
}

uint64_t sub_10000AC08()
{
  v52 = v0;
  v1 = &unk_10001CF70;
  v2 = 3;
  v3 = v0[27];
  v47 = v3;
  do
  {
    v6 = *(v1 - 1);
    v7 = *v1;
    v8 = *(v3 + 16);

    if (v8 && (v9 = sub_1000123B8(v6, v7), (v10 & 1) != 0))
    {
      v11 = v9;

      v5 = *(*(v3 + 56) + 8 * v11);
      sub_100013968();
      if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_100013988();
      }

      sub_100013998();
    }

    else
    {
      v12 = sub_1000138C8();
      v13 = [objc_opt_self() mutableDescriptorWithIdentifier:v12];

      v14 = [objc_allocWithZone(ATXPosterDescriptorGalleryOptions) init];
      [v14 setAllowsSystemSuggestedComplications:0];
      v0[23] = 0;
      v50 = v14;
      v15 = [v13 storeGalleryOptions:v14 error:v0 + 23];
      v16 = v0[23];
      v48 = v6;
      v49 = v13;
      if (v15)
      {
        v17 = v16;
      }

      else
      {
        v18 = v16;
        sub_100013578();

        swift_willThrow();
        if (qword_1000228A0 != -1)
        {
          swift_once();
        }

        v19 = sub_100013808();
        sub_100005C30(v19, qword_100025600);
        swift_errorRetain();
        v20 = sub_1000137E8();
        v21 = sub_100013A48();

        if (os_log_type_enabled(v20, v21))
        {
          v46 = v2;
          v22 = swift_slowAlloc();
          v23 = swift_slowAlloc();
          v51[0] = v23;
          *v22 = 136315138;
          swift_getErrorValue();
          v24 = sub_100013CA8();
          v26 = sub_10000C434(v24, v25, v51);

          *(v22 + 4) = v26;
          _os_log_impl(&_mh_execute_header, v20, v21, "Could not set descriptor gallery options with error: %s", v22, 0xCu);
          sub_10000254C(v23);

          v2 = v46;
        }

        else
        {
        }

        v3 = v47;
        v13 = v49;
      }

      sub_100002504(&unk_1000231A0, &qword_100015E40);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_100015DE0;
      if (qword_100022880 != -1)
      {
        swift_once();
      }

      v28 = qword_1000255B0;
      *(v27 + 32) = qword_1000255B0;
      sub_100008110(0, &qword_100023500, PRTimeFontConfiguration_ptr);
      v29 = v28;
      isa = sub_100013978().super.isa;

      [v13 setPreferredTimeFontConfigurations:isa];

      sub_100002504(&qword_100023508, &qword_1000161F0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1000159D0;
      v32 = aLookidentifier_1[1];
      v0[21] = aLookidentifier_1[0];
      v0[22] = v32;

      sub_100013AE8();
      *(inited + 96) = &type metadata for String;
      *(inited + 72) = v48;
      *(inited + 80) = v7;
      sub_100011AEC(inited);
      swift_setDeallocating();
      sub_10000B35C(inited + 32, &unk_100023510, &unk_100016B70);
      v33 = sub_100013878().super.isa;

      v0[24] = 0;
      LODWORD(isa) = [v13 storeUserInfo:v33 error:v0 + 24];

      v34 = v0[24];
      if (isa)
      {
        v4 = v34;
      }

      else
      {
        v35 = v34;
        sub_100013578();

        swift_willThrow();
        if (qword_1000228A0 != -1)
        {
          swift_once();
        }

        v36 = sub_100013808();
        sub_100005C30(v36, qword_100025600);
        swift_errorRetain();
        v37 = sub_1000137E8();
        v38 = sub_100013A48();

        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          v40 = swift_slowAlloc();
          v51[0] = v40;
          *v39 = 136315138;
          swift_getErrorValue();
          v41 = sub_100013CA8();
          v43 = sub_10000C434(v41, v42, v51);

          *(v39 + 4) = v43;
          _os_log_impl(&_mh_execute_header, v37, v38, "Could not store user info with error: %s", v39, 0xCu);
          sub_10000254C(v40);

          v3 = v47;
        }

        else
        {
        }

        v13 = v49;
      }

      v5 = v13;
      sub_100013968();
      if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_100013988();
      }

      sub_100013998();
    }

    v1 += 2;
    --v2;
  }

  while (v2);
  swift_arrayDestroy();
  v44 = v0[1];

  return v44(&_swiftEmptyArrayStorage);
}

uint64_t sub_10000B35C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100002504(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

Swift::Int sub_10000B3E8()
{
  v1 = *v0;
  sub_100013CB8();
  sub_100013CC8(v1);
  return sub_100013CD8();
}

Swift::Int sub_10000B45C(uint64_t a1)
{
  v2 = *v1;
  sub_100013CB8();
  sub_100013CC8(v2);
  return sub_100013CD8();
}

uint64_t sub_10000B4A0(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x6D61657263;
    v6 = 2036429415;
    if (a1 != 8)
    {
      v6 = 0x6B63616C62;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x656C70727570;
    if (a1 != 5)
    {
      v7 = 1802398064;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x7974696E75;
    v2 = 0x65676E61726FLL;
    v3 = 0x6E65657267;
    if (a1 != 3)
    {
      v3 = 1702194274;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 6579570;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_10000B5A0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_10000B4A0(*a1);
  v5 = v4;
  if (v3 == sub_10000B4A0(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_100013C88();
  }

  return v8 & 1;
}

Swift::Int sub_10000B628()
{
  v1 = *v0;
  sub_100013CB8();
  sub_10000B4A0(v1);
  sub_100013918();

  return sub_100013CD8();
}

uint64_t sub_10000B68C(uint64_t a1)
{
  sub_10000B4A0(*v1);
  sub_100013918();
}

Swift::Int sub_10000B6E0(uint64_t a1)
{
  v2 = *v1;
  sub_100013CB8();
  sub_10000B4A0(v2);
  sub_100013918();

  return sub_100013CD8();
}

unint64_t sub_10000B740@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10000CC74(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_10000B770@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10000B4A0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

id sub_10000B85C()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 24);
  }

  else
  {
    v3 = sub_10000CB84(v0, 0xEF746867694C646ELL, &selRef_systemGreenColor);
    v4 = *(v0 + 24);
    *(v0 + 24) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

id sub_10000B8D0()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = *(v0 + 32);
  }

  else
  {
    v3 = v0;
    v4 = sub_10000BA38(0x746E65636361, 0xE600000000000000);
    if (!v4)
    {
      v4 = [objc_opt_self() systemYellowColor];
    }

    if (*(v0 + 17) == 1)
    {
      v5 = v4;
      sub_100008D34();
      v6 = [objc_opt_self() blackColor];
      v7 = sub_100013A78();

      v4 = v7;
    }

    v8 = *(v3 + 32);
    *(v3 + 32) = v4;
    v2 = v4;

    v1 = 0;
  }

  v9 = v1;
  return v2;
}

id sub_10000B9C4()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = *(v0 + 40);
  }

  else
  {
    v3 = sub_10000CB84(v0, 0xEE006B726144646ELL, &selRef_systemRedColor);
    v4 = *(v0 + 40);
    *(v0 + 40) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

id sub_10000BA38(uint64_t a1, void *a2)
{
  strcpy(v20, "extragalactic/");
  HIBYTE(v20[1]) = -18;
  v21._countAndFlagsBits = sub_10000B4A0(*(v2 + 16));
  sub_100013928(v21);

  v22._countAndFlagsBits = 47;
  v22._object = 0xE100000000000000;
  sub_100013928(v22);
  v23._countAndFlagsBits = a1;
  v23._object = a2;
  sub_100013928(v23);
  v6 = v20[0];
  v5 = v20[1];
  v7 = sub_1000138C8();
  v8 = objc_opt_self();
  v9 = [v8 colorNamed:v7];

  if (v9)
  {
  }

  else
  {
    strcpy(v20, "extragalactic/");
    HIBYTE(v20[1]) = -18;
    v24._countAndFlagsBits = a1;
    v24._object = a2;
    sub_100013928(v24);
    v11 = v20[0];
    v10 = v20[1];
    v12 = sub_1000138C8();
    v9 = [v8 colorNamed:v12];

    if (v9)
    {
    }

    else
    {
      if (qword_100022898 != -1)
      {
        swift_once();
      }

      v13 = sub_100013808();
      sub_100005C30(v13, qword_1000255E8);

      v14 = sub_1000137E8();
      v15 = sub_100013A38();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v20[0] = swift_slowAlloc();
        *v16 = 136315394;
        v17 = sub_10000C434(v6, v5, v20);

        *(v16 + 4) = v17;
        *(v16 + 12) = 2080;
        v18 = sub_10000C434(v11, v10, v20);

        *(v16 + 14) = v18;
        _os_log_impl(&_mh_execute_header, v14, v15, "No matching color found for %s or %s", v16, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }

      return 0;
    }
  }

  return v9;
}

uint64_t sub_10000BD18()
{
  v1 = *(v0 + 16);
  if (v1 > 4)
  {
    v6 = 0x6D61657263;
    v7 = 2036429415;
    if (v1 != 8)
    {
      v7 = 0x6B63616C62;
    }

    if (v1 != 7)
    {
      v6 = v7;
    }

    v8 = 0x656C70727570;
    if (v1 != 5)
    {
      v8 = 1802398064;
    }

    if (*(v0 + 16) <= 6u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0x7974696E75;
    v3 = 0x65676E61726FLL;
    v4 = 0x6E65657267;
    if (v1 != 3)
    {
      v4 = 1702194274;
    }

    if (v1 != 2)
    {
      v3 = v4;
    }

    if (*(v0 + 16))
    {
      v2 = 6579570;
    }

    if (*(v0 + 16) <= 1u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t sub_10000BE18()
{

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for ColorPalette.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ColorPalette.State(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ColorPalette.Option(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ColorPalette.Option(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10000C144()
{
  result = qword_100023648;
  if (!qword_100023648)
  {
    sub_100008074(&qword_100023650, qword_100016280);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100023648);
  }

  return result;
}

unint64_t sub_10000C1AC()
{
  result = qword_100023658;
  if (!qword_100023658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100023658);
  }

  return result;
}

unint64_t sub_10000C204()
{
  result = qword_100023660;
  if (!qword_100023660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100023660);
  }

  return result;
}

uint64_t sub_10000C2C4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10000BD14();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10000C324(void *a1)
{
  a1[1] = sub_10000CB44(&qword_100023668, &unk_100016440);
  a1[2] = sub_10000CB44(&qword_100023670, &unk_100016418);
  result = sub_10000CB44(&qword_100023678, &unk_100016468);
  a1[3] = result;
  return result;
}

uint64_t sub_10000C3D8(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_10000C434(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_10000C434(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10000C500(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
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
    sub_10000CD14(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000254C(v11);
  return v7;
}

unint64_t sub_10000C500(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10000C60C(a5, a6);
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
    result = sub_100013B28();
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

char *sub_10000C60C(uint64_t a1, unint64_t a2)
{
  v3 = sub_10000C658(a1, a2);
  sub_10000C788(&off_10001CDE0);
  return v3;
}

char *sub_10000C658(uint64_t a1, unint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_10000C874(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_100013B28();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_100013938();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10000C874(v10, 0);
        result = sub_100013AF8();
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

uint64_t sub_10000C788(uint64_t result)
{
  v2 = *(result + 16);
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

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_10000C8E8(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_10000C874(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_100002504(&unk_100023690, qword_1000164C8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10000C8E8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002504(&unk_100023690, qword_1000164C8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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

_BYTE **sub_10000C9DC(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_10000C9EC(uint64_t a1, uint64_t *a2)
{
  v10[3] = type metadata accessor for ColorPalette();
  v10[4] = sub_10000CB44(&qword_100022CE0, &unk_1000164A0);
  v10[0] = a1;
  sub_1000024A0(v10, v9);

  sub_100002504(&qword_100023680, &qword_1000164C0);
  if (swift_dynamicCast())
  {
    v3 = sub_10000BD14();
    v5 = v4;
    if (v3 == sub_10000BD14() && v5 == v6)
    {
      v7 = 1;
    }

    else
    {
      v7 = sub_100013C88();
    }
  }

  else
  {
    v7 = 0;
  }

  sub_10000254C(v10);
  return v7 & 1;
}

uint64_t sub_10000CB44(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ColorPalette();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_10000CB84(uint64_t a1, void *a2, SEL *a3)
{
  result = sub_10000BA38(0x756F72676B636162, a2);
  if (!result)
  {
    result = [objc_opt_self() *a3];
  }

  if (*(a1 + 17))
  {
    if (*(a1 + 17) == 1)
    {
      v6 = result;
      sub_100008D34();
      v7 = [objc_opt_self() blackColor];
      v8 = sub_100013A78();
    }

    else
    {
      if (*(a1 + 16) != 9)
      {
        return result;
      }

      v7 = result;
      v8 = sub_1000058C8(0.1);
    }

    return v8;
  }

  return result;
}

unint64_t sub_10000CC74(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10001CE08;
  v6._object = a2;
  v4 = sub_100013C38(v3, v6);

  if (v4 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_10000CCC0()
{
  result = qword_100023688;
  if (!qword_100023688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100023688);
  }

  return result;
}

uint64_t sub_10000CD14(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

id sub_10000CD7C()
{
  v1 = OBJC_IVAR____TtC19ExtragalacticPoster27ExtragalacticPosterRenderer_controller;
  *&v0[v1] = [objc_allocWithZone(type metadata accessor for ExtragalacticPosterController(0)) init];
  *&v0[OBJC_IVAR____TtC19ExtragalacticPoster27ExtragalacticPosterRenderer_renderer] = 0;
  v2 = OBJC_IVAR____TtC19ExtragalacticPoster27ExtragalacticPosterRenderer_colorPaletteCache;
  type metadata accessor for ColorPaletteCache();
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = sub_100011C28(&_swiftEmptyArrayStorage);
  *&v0[v2] = v3;
  v12.receiver = v0;
  v12.super_class = type metadata accessor for ExtragalacticPosterRenderer();
  v4 = objc_msgSendSuper2(&v12, "init");
  v5 = qword_1000228A8;
  v6 = v4;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = sub_100013808();
  sub_100005C30(v7, qword_100025618);
  v8 = sub_1000137E8();
  v9 = sub_100013A18();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "PosterRenderer created", v10, 2u);
  }

  return v6;
}

uint64_t sub_10000CF0C(void *a1, void *a2)
{
  v3 = v2;
  v5 = *(v2 + OBJC_IVAR____TtC19ExtragalacticPoster27ExtragalacticPosterRenderer_renderer);
  *(v3 + OBJC_IVAR____TtC19ExtragalacticPoster27ExtragalacticPosterRenderer_renderer) = a1;
  v6 = a1;

  *(*(v3 + OBJC_IVAR____TtC19ExtragalacticPoster27ExtragalacticPosterRenderer_controller) + OBJC_IVAR____TtC19ExtragalacticPoster29ExtragalacticPosterController_delegate + 8) = &off_10001D858;
  swift_unknownObjectWeakAssign();
  v7 = [v6 backgroundView];
  sub_10000366C(v7);

  if ((sub_100013738() & 1) == 0)
  {
    sub_10000383C();
  }

  return sub_10000D13C(v6, a2);
}

uint64_t sub_10000D13C(uint64_t a1, void *a2)
{
  v3 = sub_1000137B8();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v39 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v37 - v7;
  v9 = sub_1000137D8();
  v42 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_100013638();
  v12 = *(v41 - 8);
  __chkstk_darwin(v41);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000139F8();
  sub_100013A08();
  if ((sub_1000139E8() & 1) == 0)
  {
LABEL_9:
    sub_100002504(&unk_100023180, &qword_100015E30);
    sub_100013708();
    v24 = v45;
    v25 = v46;
    goto LABEL_10;
  }

  v38 = v9;
  v15 = [a2 contents];
  v45 = 0;
  v16 = [v15 loadUserInfoWithError:&v45];
  swift_unknownObjectRelease();
  v17 = v45;
  if (v16)
  {
    v18 = sub_100013888();
    v19 = v17;

    strcpy(v43, "lookIdentifier");
    HIBYTE(v43[1]) = -18;
    sub_100013AE8();
    if (*(v18 + 16) && (v20 = sub_100012374(&v45), (v21 & 1) != 0))
    {
      sub_10000CD14(*(v18 + 56) + 32 * v20, v44);
      sub_10000D838(&v45);

      v22 = swift_dynamicCast();
      v9 = v38;
      if (v22)
      {
        v23 = sub_10000CC74(v43[0], v43[1]);
        if (v23 != 10)
        {
          v24 = sub_10000B4A0(v23);
          goto LABEL_10;
        }
      }
    }

    else
    {

      sub_10000D838(&v45);
      v9 = v38;
    }

    goto LABEL_9;
  }

  v36 = v45;
  sub_100013578();

  swift_willThrow();
  sub_100002504(&unk_100023180, &qword_100015E30);
  sub_100013708();

  v24 = v45;
  v25 = v46;
  v9 = v38;
LABEL_10:
  v26 = sub_10000CC74(v24, v25);
  if (v26 == 10)
  {
    __break(1u);
  }

  v27 = v40;
  sub_100011DA0(v26);
  sub_1000137C8();
  v29 = v28;
  sub_100013618();
  sub_100011E80(&v45, v29, v30);
  v31 = *(v27 + OBJC_IVAR____TtC19ExtragalacticPoster27ExtragalacticPosterRenderer_controller);
  sub_1000024A0(&v45, v44);
  v32 = OBJC_IVAR____TtC19ExtragalacticPoster29ExtragalacticPosterController_colorProvider;
  swift_beginAccess();
  sub_10000254C((v31 + v32));
  sub_10000345C(v44, v31 + v32);
  swift_endAccess();
  sub_1000137C8();
  sub_100013628();
  sub_100013788();
  v33 = v39;
  (*(v4 + 16))(v39, v8, v3);
  v34 = OBJC_IVAR____TtC19ExtragalacticPoster29ExtragalacticPosterController_progress;
  swift_beginAccess();
  (*(v4 + 40))(v31 + v34, v33, v3);
  swift_endAccess();
  sub_10000383C();
  (*(v4 + 8))(v8, v3);
  sub_10000254C(&v45);
  (*(v42 + 8))(v11, v9);
  return (*(v12 + 8))(v14, v41);
}

id sub_10000D738()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ExtragalacticPosterRenderer();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10000D7EC(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

void sub_10000D88C()
{
  v1 = v0;
  if (qword_1000228A8 != -1)
  {
    swift_once();
  }

  v2 = sub_100013808();
  sub_100005C30(v2, qword_100025618);
  v3 = sub_1000137E8();
  v4 = sub_100013A18();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "PosterRenderer invalidate", v5, 2u);
  }

  v6 = *(v1 + OBJC_IVAR____TtC19ExtragalacticPoster27ExtragalacticPosterRenderer_controller);
  *(v6 + OBJC_IVAR____TtC19ExtragalacticPoster29ExtragalacticPosterController_delegate + 8) = 0;
  swift_unknownObjectWeakAssign();
  v7 = OBJC_IVAR____TtC19ExtragalacticPoster29ExtragalacticPosterController_backgroundView;
  v8 = *(v6 + OBJC_IVAR____TtC19ExtragalacticPoster29ExtragalacticPosterController_backgroundView);
  if (v8)
  {
    [v8 removeFromSuperview];
    v9 = *(v6 + v7);
    *(v6 + v7) = 0;
  }

  sub_100013748();
  v10 = *(v1 + OBJC_IVAR____TtC19ExtragalacticPoster27ExtragalacticPosterRenderer_renderer);
  *(v1 + OBJC_IVAR____TtC19ExtragalacticPoster27ExtragalacticPosterRenderer_renderer) = 0;
}

uint64_t sub_10000D9F8()
{
  v11 = 0;
  v1 = *&v0[OBJC_IVAR____TtC19ExtragalacticPoster11BannerLayer_descriptor];
  if (v1)
  {
    v2 = *(v1 + 32);
    v3 = *(v2 + 16);

    if (v3)
    {
      v4 = 0;
      while (v4 < *(v2 + 16))
      {
        v5 = *(*(v2 + 32 + 24 * v4) + 56);
        v6 = *(v5 + 16);

        if (v6)
        {
          v7 = 0;
          v8 = v5 + 32;
          while (v7 < *(v5 + 16))
          {
            sub_100005610(v8, v10);
            sub_10000DB54(v10, v0, &v11);
            ++v7;
            sub_1000056C4(v10);
            v8 += 48;
            if (v6 == v7)
            {
              goto LABEL_4;
            }
          }

          __break(1u);
          break;
        }

LABEL_4:
        ++v4;

        if (v4 == v3)
        {
        }
      }

      __break(1u);

      result = sub_1000056C4(v10);
      __break(1u);
    }

    else
    {
    }
  }

  return result;
}

void sub_10000DB54(uint64_t a1, char *a2, uint64_t *a3)
{
  sub_1000024A0(a1, v26);
  v5 = v27;
  v6 = v28;
  sub_100003518(v26, v27);
  sub_10000E2F8(v5, v6);
  v7 = v27;
  v8 = v28;
  sub_100003518(v26, v27);
  v9 = sub_10000E2CC(v7, v8);
  v10 = v27;
  v11 = v28;
  sub_100003518(v26, v27);
  v12 = (*(v11 + 24))(v10, v11);
  v13 = v27;
  v14 = v28;
  sub_100003518(v26, v27);
  (*(v14 + 16))(v13, v14);
  sub_100008D34();
  v15 = objc_opt_self();
  v16 = [v15 blackColor];
  v17 = sub_100013A78();

  v29 = a3;
  v18 = sub_10000DE78(a2, a3);
  [v12 bounds];
  CGRectGetWidth(v30);
  [v12 bounds];
  CGRectGetHeight(v31);
  nullsub_1();
  [v18 setFrame:?];
  v19 = [v12 CGPath];
  [v18 setPath:v19];

  v20 = [v17 CGColor];
  [v18 setFillColor:v20];

  [v18 setLineWidth:v9];
  if (v9 > 0.0)
  {
    v21 = v27;
    v22 = v28;
    sub_100003518(v26, v27);
    sub_10000E30C(v21, v22);
    v23 = [v15 blackColor];
    v24 = sub_100013A78();

    v25 = [v24 CGColor];
    [v18 setStrokeColor:v25];
  }

  if (__OFADD__(*v29, 1))
  {
    __break(1u);
  }

  else
  {
    ++*v29;
    sub_10000254C(v26);
  }
}

id sub_10000DE78(char *a1, uint64_t *a2)
{
  v4 = OBJC_IVAR____TtC19ExtragalacticPoster11BannerLayer_shapeLayers;
  swift_beginAccess();
  v5 = *&a1[v4];
  if (v5 >> 62)
  {
    result = sub_100013BE8();
  }

  else
  {
    result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = *a2;
  if (v7 >= result)
  {
    v10 = [objc_allocWithZone(CAShapeLayer) init];
    swift_beginAccess();
    v11 = v10;
    sub_100013968();
    if (*((*&a1[v4] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&a1[v4] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_100013988();
    }

    sub_100013998();
    swift_endAccess();
    [a1 addSublayer:v11];
    return v11;
  }

  v8 = *&a1[v4];
  if ((v8 & 0xC000000000000001) != 0)
  {

    v11 = sub_100013B18();

    return v11;
  }

  if (v7 < 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v7 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v9 = *(v8 + 8 * v7 + 32);

  return v9;
}

id sub_10000E1CC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BannerLayer();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t getEnumTagSinglePayload for PathConfiguration(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PathConfiguration(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

void sub_10000E338(double *a3@<X8>)
{
  sub_100013588();
  v6 = v5;
  sub_100013588();
  v8 = v7;
  sub_100013588();
  *a3 = v6;
  *(a3 + 1) = v8;
  *(a3 + 2) = v9;
}

id sub_10000E3BC(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v8 = [objc_allocWithZone(UIBezierPath) init];
  v10.origin.x = a1;
  v10.origin.y = a2;
  v10.size.width = a3;
  v10.size.height = a4;
  CGRectGetMinX(v10);
  v11.origin.x = a1;
  v11.origin.y = a2;
  v11.size.width = a3;
  v11.size.height = a4;
  CGRectGetMinY(v11);
  nullsub_1();
  [v8 moveToPoint:?];
  v12.origin.x = a1;
  v12.origin.y = a2;
  v12.size.width = a3;
  v12.size.height = a4;
  CGRectGetMaxX(v12);
  v13.origin.x = a1;
  v13.origin.y = a2;
  v13.size.width = a3;
  v13.size.height = a4;
  CGRectGetMinY(v13);
  nullsub_1();
  [v8 addLineToPoint:?];
  v14.origin.x = a1;
  v14.origin.y = a2;
  v14.size.width = a3;
  v14.size.height = a4;
  CGRectGetMaxX(v14);
  nullsub_1();
  v15.origin.x = a1;
  v15.origin.y = a2;
  v15.size.width = a3;
  v15.size.height = a4;
  CGRectGetMaxY(v15);
  nullsub_1();
  [v8 addArcWithCenter:1 radius:? startAngle:? endAngle:? clockwise:?];
  v16.origin.x = a1;
  v16.origin.y = a2;
  v16.size.width = a3;
  v16.size.height = a4;
  CGRectGetMaxY(v16);
  nullsub_1();
  [v8 addLineToPoint:?];
  [v8 closePath];
  return v8;
}

id sub_10000E580(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for LetterURectangleDescriptor();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_10000E724(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for ExtragalacticBannerLayer();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_10000E77C()
{

  sub_10000254C((v0 + 64));

  return swift_deallocClassInstance();
}

__n128 sub_10000E7E8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_10000E7FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10000E844(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10000E8A0()
{
  v9[0] = 0;
  v9[1] = 0xE000000000000000;
  v10._countAndFlagsBits = 40;
  v10._object = 0xE100000000000000;
  sub_100013928(v10);
  v1 = v0[13];
  v2 = v0[14];

  v11._countAndFlagsBits = v1;
  v11._object = v2;
  sub_100013928(v11);

  v12._countAndFlagsBits = 2633001;
  v12._object = 0xE300000000000000;
  sub_100013928(v12);
  v3 = v0[11];
  v4 = sub_100003518(v0 + 8, v3);
  v5 = *(v3 - 8);
  __chkstk_darwin(v4);
  v7 = v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7);
  sub_100013C68();
  (*(v5 + 8))(v7, v3);
  v13._countAndFlagsBits = 41;
  v13._object = 0xE100000000000000;
  sub_100013928(v13);
  return v9[0];
}

uint64_t sub_10000E9F0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10000E8A0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10000EA1C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a2 + 104);
  v4 = *(*a2 + 112);
  if (v3 == *(v2 + 104) && v4 == *(v2 + 112))
  {
    return 1;
  }

  else
  {
    return sub_100013C88();
  }
}

uint64_t sub_10000EA48()
{

  sub_10000254C((v0 + 64));

  return swift_deallocClassInstance();
}

uint64_t sub_10000EAB4@<X0>(double **a1@<X0>, double **a2@<X1>, uint64_t *a3@<X8>, double a4@<D0>)
{
  result = sub_10000FB6C(*a1, *a2, a4);
  *a3 = result;
  return result;
}

uint64_t sub_10000EAE4(void *a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v248 = a6 * 0.5;
  v11 = a2 / 3.0;
  nullsub_1();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = type metadata accessor for RectangleDescriptor();
  v21 = objc_allocWithZone(v20);
  v22 = &v21[OBJC_IVAR____TtC19ExtragalacticPoster19RectangleDescriptor_frame];
  *v22 = v13;
  v22[1] = v15;
  v223 = v15;
  v225 = v13;
  v22[2] = v17;
  v22[3] = v19;
  v221 = v17;
  rect = v19;
  v23 = &v21[OBJC_IVAR____TtC19ExtragalacticPoster19RectangleDescriptor_roundedCorners];
  *v23 = 0;
  v23[8] = 1;
  *&v21[OBJC_IVAR____TtC19ExtragalacticPoster19RectangleDescriptor_cornerRadius] = 0;
  v24 = &v21[OBJC_IVAR____TtC19ExtragalacticPoster19RectangleDescriptor_configuration];
  *v24 = a4;
  v24[1] = a5;
  v24[2] = a6;
  v25 = &v21[OBJC_IVAR____TtC19ExtragalacticPoster19RectangleDescriptor_excludingEdges];
  *v25 = 2;
  v25[8] = 0;
  v257.receiver = v21;
  v257.super_class = v20;
  v219 = objc_msgSendSuper2(&v257, "init");
  v243 = v11;
  v265.origin.x = v13;
  v265.origin.y = v15;
  v265.size.width = v17;
  v265.size.height = v19;
  CGRectGetMaxY(v265);
  nullsub_1();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = objc_allocWithZone(v20);
  v35 = &v34[OBJC_IVAR____TtC19ExtragalacticPoster19RectangleDescriptor_frame];
  *v35 = v27;
  *(v35 + 1) = v29;
  *(v35 + 2) = v31;
  *(v35 + 3) = v33;
  v36 = &v34[OBJC_IVAR____TtC19ExtragalacticPoster19RectangleDescriptor_roundedCorners];
  *v36 = 0;
  v36[8] = 1;
  *&v34[OBJC_IVAR____TtC19ExtragalacticPoster19RectangleDescriptor_cornerRadius] = 0;
  v37 = &v34[OBJC_IVAR____TtC19ExtragalacticPoster19RectangleDescriptor_configuration];
  *v37 = a4;
  v37[1] = a5;
  v37[2] = a6;
  v38 = &v34[OBJC_IVAR____TtC19ExtragalacticPoster19RectangleDescriptor_excludingEdges];
  *v38 = 4;
  v38[8] = 0;
  v256.receiver = v34;
  v256.super_class = v20;
  v217 = objc_msgSendSuper2(&v256, "init");
  nullsub_1();
  v40 = v39;
  v213 = v41;
  v215 = v39;
  v42 = v41;
  v44 = v43;
  v209 = v45;
  v211 = v43;
  v46 = v45;
  v47 = objc_allocWithZone(v20);
  v48 = &v47[OBJC_IVAR____TtC19ExtragalacticPoster19RectangleDescriptor_frame];
  *v48 = v40;
  *(v48 + 1) = v42;
  *(v48 + 2) = v44;
  *(v48 + 3) = v46;
  v49 = &v47[OBJC_IVAR____TtC19ExtragalacticPoster19RectangleDescriptor_roundedCorners];
  *v49 = 0;
  v49[8] = 1;
  *&v47[OBJC_IVAR____TtC19ExtragalacticPoster19RectangleDescriptor_cornerRadius] = 0;
  v50 = &v47[OBJC_IVAR____TtC19ExtragalacticPoster19RectangleDescriptor_configuration];
  *v50 = a4;
  v50[1] = a5;
  v50[2] = a6;
  v51 = &v47[OBJC_IVAR____TtC19ExtragalacticPoster19RectangleDescriptor_excludingEdges];
  *v51 = 6;
  v51[8] = 0;
  v255.receiver = v47;
  v255.super_class = v20;
  v220 = objc_msgSendSuper2(&v255, "init");
  nullsub_1();
  v53 = v52;
  v235 = v54;
  v237 = v52;
  v55 = v54;
  v57 = v56;
  v231 = v58;
  v233 = v56;
  v59 = v58;
  v60 = objc_allocWithZone(v20);
  v61 = &v60[OBJC_IVAR____TtC19ExtragalacticPoster19RectangleDescriptor_frame];
  *v61 = v53;
  *(v61 + 1) = v55;
  *(v61 + 2) = v57;
  *(v61 + 3) = v59;
  v62 = &v60[OBJC_IVAR____TtC19ExtragalacticPoster19RectangleDescriptor_roundedCorners];
  *v62 = 0;
  v62[8] = 1;
  *&v60[OBJC_IVAR____TtC19ExtragalacticPoster19RectangleDescriptor_cornerRadius] = 0;
  v63 = &v60[OBJC_IVAR____TtC19ExtragalacticPoster19RectangleDescriptor_configuration];
  *v63 = a4;
  v63[1] = a5;
  v63[2] = a6;
  v64 = &v60[OBJC_IVAR____TtC19ExtragalacticPoster19RectangleDescriptor_excludingEdges];
  *v64 = 12;
  v64[8] = 0;
  v254.receiver = v60;
  v254.super_class = v20;
  v218 = objc_msgSendSuper2(&v254, "init");
  v266.origin.y = v213;
  v266.origin.x = v215;
  v266.size.height = v209;
  v266.size.width = v211;
  CGRectGetMinY(v266);
  nullsub_1();
  v66 = v65;
  v207 = v67;
  v208 = v65;
  v68 = v67;
  v70 = v69;
  v205 = v71;
  v206 = v69;
  v72 = v71;
  v267.origin.y = v223;
  v267.origin.x = v225;
  v267.size.width = v221;
  v267.size.height = rect;
  CGRectGetMaxY(v267);
  v268.origin.x = v66;
  v268.origin.y = v68;
  v268.size.width = v70;
  v268.size.height = v72;
  CGRectGetMinY(v268);
  v269.origin.x = v66;
  v269.origin.y = v68;
  v269.size.width = v70;
  v269.size.height = v72;
  CGRectGetMinY(v269);
  nullsub_1();
  v214 = v74;
  v216 = v73;
  v210 = v76;
  v212 = v75;
  v229 = a2 - a7 - v243;
  nullsub_1();
  v226 = v78;
  recta = v77;
  v80 = v79;
  v222 = v81;
  v204 = type metadata accessor for ParallelogramDescriptor();
  v82 = swift_allocObject();
  v83 = atan((v229 - v248) / v80);
  v84 = v248 / cos(v83) - a6;
  v224 = v80;
  nullsub_1();
  v271 = CGRectInset(v270, v84, v248);
  x = v271.origin.x;
  y = v271.origin.y;
  width = v271.size.width;
  height = v271.size.height;
  nullsub_1();
  nullsub_1();
  sub_100002504(&unk_1000231A0, &qword_100015E40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100015930;
  v272.origin.x = x;
  v272.origin.y = y;
  v272.size.width = width;
  v272.size.height = height;
  CGRectGetMaxX(v272);
  v273.origin.x = x;
  v273.origin.y = y;
  v273.size.width = width;
  v273.size.height = height;
  CGRectGetMaxY(v273);
  nullsub_1();
  v91 = v90;
  v93 = v92;
  type metadata accessor for PolygonPathPointStep();
  v94 = swift_allocObject();
  *(v94 + 16) = v91;
  *(v94 + 24) = v93;
  *(inited + 32) = v94;
  v274.origin.x = x;
  v274.origin.y = y;
  v274.size.width = width;
  v274.size.height = height;
  CGRectGetMaxX(v274);
  v275.origin.x = x;
  v275.origin.y = y;
  v275.size.width = width;
  v275.size.height = height;
  CGRectGetMaxY(v275);
  nullsub_1();
  v96 = v95;
  v98 = v97;
  v99 = swift_allocObject();
  *(v99 + 16) = v96;
  *(v99 + 24) = v98;
  *(inited + 40) = v99;
  v276.origin.x = x;
  v276.origin.y = y;
  v276.size.width = width;
  v276.size.height = height;
  CGRectGetMinX(v276);
  v277.origin.x = x;
  v277.origin.y = y;
  v277.size.width = width;
  v277.size.height = height;
  CGRectGetMinY(v277);
  nullsub_1();
  v101 = v100;
  v103 = v102;
  v104 = swift_allocObject();
  *(v104 + 16) = v101;
  *(v104 + 24) = v103;
  *(inited + 48) = v104;
  v278.origin.x = x;
  v278.origin.y = y;
  v278.size.width = width;
  v278.size.height = height;
  CGRectGetMinX(v278);
  v279.origin.x = x;
  v279.origin.y = y;
  v279.size.width = width;
  v279.size.height = height;
  CGRectGetMinY(v279);
  nullsub_1();
  v106 = v105;
  v108 = v107;
  v109 = swift_allocObject();
  *(v109 + 16) = v106;
  *(v109 + 24) = v108;
  *(inited + 56) = v109;
  v110 = sub_100003FDC(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  v244 = v82;
  *(v82 + 72) = v110;
  *(v82 + 16) = recta;
  *(v82 + 24) = v226;
  *(v82 + 32) = v224;
  *(v82 + 40) = v222;
  *(v82 + 48) = a4;
  *(v82 + 56) = a5;
  *(v82 + 64) = a6;
  v280.origin.y = v235;
  v280.origin.x = v237;
  v280.size.height = v231;
  v280.size.width = v233;
  CGRectGetMinX(v280);
  v281.origin.x = recta;
  v281.origin.y = v226;
  v281.size.width = v224;
  v281.size.height = v222;
  CGRectGetWidth(v281);
  v282.origin.x = recta;
  v282.origin.y = v226;
  v282.size.width = v224;
  v282.size.height = v222;
  CGRectGetHeight(v282);
  nullsub_1();
  v201 = v112;
  v202 = v111;
  v114 = v113;
  v200 = v115;
  v116 = swift_allocObject();
  v117 = atan(v229 / v114);
  v118 = v248 / cos(v117) - a6;
  v199 = v114;
  nullsub_1();
  v284 = CGRectInset(v283, v118, v248);
  v119 = v284.origin.x;
  v120 = v284.origin.y;
  v121 = v284.size.width;
  v122 = v284.size.height;
  nullsub_1();
  nullsub_1();
  v123 = swift_initStackObject();
  *(v123 + 16) = xmmword_100015930;
  v285.origin.x = v119;
  v285.origin.y = v120;
  v285.size.width = v121;
  v285.size.height = v122;
  CGRectGetMinX(v285);
  v286.origin.x = v119;
  v286.origin.y = v120;
  v286.size.width = v121;
  v286.size.height = v122;
  CGRectGetMaxY(v286);
  nullsub_1();
  v125 = v124;
  v127 = v126;
  v128 = swift_allocObject();
  *(v128 + 16) = v125;
  *(v128 + 24) = v127;
  *(v123 + 32) = v128;
  v287.origin.x = v119;
  v287.origin.y = v120;
  v287.size.width = v121;
  v287.size.height = v122;
  CGRectGetMinX(v287);
  v288.origin.x = v119;
  v288.origin.y = v120;
  v288.size.width = v121;
  v288.size.height = v122;
  CGRectGetMaxY(v288);
  nullsub_1();
  v130 = v129;
  v132 = v131;
  v133 = swift_allocObject();
  *(v133 + 16) = v130;
  *(v133 + 24) = v132;
  *(v123 + 40) = v133;
  v289.origin.x = v119;
  v289.origin.y = v120;
  v289.size.width = v121;
  v289.size.height = v122;
  CGRectGetMaxX(v289);
  v290.origin.x = v119;
  v290.origin.y = v120;
  v290.size.width = v121;
  v290.size.height = v122;
  CGRectGetMinY(v290);
  nullsub_1();
  v135 = v134;
  v137 = v136;
  v138 = swift_allocObject();
  *(v138 + 16) = v135;
  *(v138 + 24) = v137;
  *(v123 + 48) = v138;
  v291.origin.x = v119;
  v291.origin.y = v120;
  v291.size.width = v121;
  v291.size.height = v122;
  CGRectGetMaxX(v291);
  v292.origin.x = v119;
  v292.origin.y = v120;
  v292.size.width = v121;
  v292.size.height = v122;
  CGRectGetMinY(v292);
  nullsub_1();
  v140 = v139;
  v142 = v141;
  v143 = swift_allocObject();
  *(v143 + 16) = v140;
  *(v143 + 24) = v142;
  *(v123 + 56) = v143;
  v144 = sub_100003FDC(v123);
  swift_setDeallocating();
  swift_arrayDestroy();
  v203 = v116;
  *(v116 + 72) = v144;
  *(v116 + 16) = v202;
  *(v116 + 24) = v201;
  *(v116 + 32) = v199;
  *(v116 + 40) = v200;
  *(v116 + 48) = a4;
  *(v116 + 56) = a5;
  *(v116 + 64) = a6;
  v293.origin.x = v202;
  v293.origin.y = v201;
  v293.size.width = v199;
  v293.size.height = v200;
  CGRectGetHeight(v293);
  v294.origin.y = v226;
  v294.origin.x = recta;
  v294.size.height = v222;
  v294.size.width = v224;
  CGRectGetMinX(v294);
  v295.origin.x = v202;
  v295.origin.y = v201;
  v295.size.width = v199;
  v295.size.height = v200;
  CGRectGetMaxY(v295);
  v296.origin.y = v235;
  v296.origin.x = v237;
  v296.size.height = v231;
  v296.size.width = v233;
  CGRectGetWidth(v296);
  nullsub_1();
  v238 = v145;
  v147 = v146;
  v149 = v148;
  v151 = v150;
  v236 = type metadata accessor for IsoscelesTriangleDescriptor();
  v152 = swift_allocObject();
  v153 = atan(v151 * 0.5 / v149);
  v154 = __sincos_stret(v153);
  v155 = v248 * (v151 * 0.5 / v149) + v248 / v154.__cosval;
  v156 = swift_initStackObject();
  *(v156 + 16) = xmmword_100016740;
  v157 = swift_allocObject();
  *(v157 + 16) = v149 * 0.5;
  *(v157 + 24) = v248 / v154.__sinval;
  *(v156 + 32) = v157;
  v158 = swift_allocObject();
  *(v158 + 16) = v149 - v155;
  *(v158 + 24) = v151 - v248;
  *(v156 + 40) = v158;
  v159 = swift_allocObject();
  *(v159 + 16) = v155;
  *(v159 + 24) = v151 - v248;
  *(v156 + 48) = v159;
  v160 = sub_100003FDC(v156);
  swift_setDeallocating();
  swift_arrayDestroy();
  v234 = v152;
  *(v152 + 72) = v160;
  *(v152 + 16) = v238;
  *(v152 + 24) = v147;
  *(v152 + 32) = v149;
  *(v152 + 40) = v151;
  *(v152 + 48) = a4;
  *(v152 + 56) = a5;
  *(v152 + 64) = a6;
  sub_100002504(&qword_100022B80, &unk_100015A70);
  v161 = swift_allocObject();
  *(v161 + 16) = xmmword_100016750;
  v162 = v20;
  *(v161 + 56) = v20;
  *(v161 + 64) = &off_10001D2C8;
  *(v161 + 32) = v219;
  v164 = a1[3];
  v163 = a1[4];
  sub_100003518(a1, v164);
  v165 = *(v163 + 48);
  v249 = v219;
  v166 = v165(v164, v163);
  *(v161 + 104) = v162;
  *(v161 + 112) = &off_10001D2C8;
  *(v161 + 72) = v166;
  *(v161 + 80) = v217;
  v167 = a1[3];
  v168 = a1[4];
  sub_100003518(a1, v167);
  v169 = *(v168 + 32);
  v239 = v217;
  *(v161 + 120) = v169(v167, v168);
  *(v161 + 152) = &type metadata for CircleDescriptor;
  *(v161 + 160) = &off_10001D308;
  v170 = swift_allocObject();
  *(v161 + 128) = v170;
  *(v170 + 16) = v208;
  *(v170 + 24) = v207;
  *(v170 + 32) = v206;
  *(v170 + 40) = v205;
  *(v170 + 48) = a4;
  *(v170 + 56) = a5;
  *(v170 + 64) = a6;
  v172 = a1[3];
  v171 = a1[4];
  sub_100003518(a1, v172);
  *(v161 + 168) = (*(v171 + 40))(v172, v171);
  *(v161 + 200) = &type metadata for CircleDescriptor;
  *(v161 + 208) = &off_10001D308;
  v173 = swift_allocObject();
  *(v161 + 176) = v173;
  *(v173 + 16) = v216;
  *(v173 + 24) = v214;
  *(v173 + 32) = v212;
  *(v173 + 40) = v210;
  *(v173 + 48) = a4;
  *(v173 + 56) = a5;
  *(v173 + 64) = a6;
  v174 = a1[3];
  v175 = a1[4];
  sub_100003518(a1, v174);
  v176 = (*(v175 + 32))(v174, v175);
  *(v161 + 248) = v162;
  *(v161 + 256) = &off_10001D2C8;
  *(v161 + 216) = v176;
  *(v161 + 224) = v220;
  v177 = a1[3];
  v178 = a1[4];
  sub_100003518(a1, v177);
  v179 = *(v178 + 48);
  v232 = v220;
  v180 = v179(v177, v178);
  *(v161 + 296) = v162;
  *(v161 + 304) = &off_10001D2C8;
  *(v161 + 264) = v180;
  *(v161 + 272) = v218;
  v181 = a1[3];
  v182 = a1[4];
  v183 = a1;
  sub_100003518(a1, v181);
  v184 = *(v182 + 40);
  v230 = v218;
  v185 = v184(v181, v182);
  *(v161 + 344) = v204;
  *(v161 + 352) = &off_10001D288;
  *(v161 + 312) = v185;
  *(v161 + 320) = v244;
  v186 = a1[3];
  v187 = a1[4];
  sub_100003518(v183, v183[3]);
  v188 = *(v187 + 40);

  v189 = v188(v186, v187);
  *(v161 + 392) = v204;
  *(v161 + 400) = &off_10001D288;
  *(v161 + 360) = v189;
  *(v161 + 368) = v203;
  v190 = a1[3];
  v191 = a1[4];
  sub_100003518(v183, v183[3]);
  v192 = *(v191 + 48);

  v193 = v192(v190, v191);
  *(v161 + 440) = v236;
  *(v161 + 448) = &off_10001D288;
  *(v161 + 408) = v193;
  *(v161 + 416) = v234;
  v194 = a1[3];
  v195 = a1[4];
  sub_100003518(a1, v194);
  v196 = *(v195 + 32);

  *(v161 + 456) = v196(v194, v195);
  *&v251[0] = 0;
  *(&v251[0] + 1) = 0xE000000000000000;
  sub_100013B08(23);
  v258._countAndFlagsBits = 0x282D595449;
  v258._object = 0xE500000000000000;
  sub_100013928(v258);
  v252 = a2;
  v253 = a3;
  type metadata accessor for CGSize(0);
  sub_100013B88();
  v259._countAndFlagsBits = 2633001;
  v259._object = 0xE300000000000000;
  sub_100013928(v259);
  v260._countAndFlagsBits = sub_1000139D8();
  sub_100013928(v260);

  v261._countAndFlagsBits = 2633001;
  v261._object = 0xE300000000000000;
  sub_100013928(v261);
  v262._countAndFlagsBits = sub_1000139D8();
  sub_100013928(v262);

  v263._countAndFlagsBits = 2633001;
  v263._object = 0xE300000000000000;
  sub_100013928(v263);
  sub_100003518(a1, a1[3]);
  sub_100013C68();
  v264._countAndFlagsBits = 41;
  v264._object = 0xE100000000000000;
  sub_100013928(v264);

  sub_1000024A0(a1, v251);
  type metadata accessor for LetterITYDescriptor();
  v197 = swift_allocObject();
  *(v197 + 120) = 0;
  *(v197 + 128) = 0;
  *(v197 + 40) = a2;
  *(v197 + 48) = a3;
  *(v197 + 16) = a4;
  *(v197 + 24) = a5;
  *(v197 + 32) = a6;
  *(v197 + 56) = v161;
  *(v197 + 104) = 0;
  *(v197 + 112) = 0xE000000000000000;
  sub_10000345C(v251, v197 + 64);
  *(v197 + 120) = a7;
  *(v197 + 128) = a8;
  sub_10000254C(a1);
  return v197;
}

uint64_t sub_10000FB6C(double *a1, double *a2, double a3)
{
  sub_100013A68();
  v7 = v6;
  v9 = v8;
  sub_100013588();
  v11 = v10;
  sub_100013588();
  v13 = v12;
  sub_100013588();
  v15 = v14;
  sub_100013588();
  v17 = v16;
  sub_1000024A0((a1 + 8), v25);
  sub_1000024A0((a2 + 8), v24);
  if (a3 <= 0.0)
  {
    sub_10000254C(v24);
    v19 = v25;
LABEL_6:
    sub_10000345C(v19, v26);
    goto LABEL_7;
  }

  if (a3 >= 1.0)
  {
    sub_10000254C(v25);
    v19 = v24;
    goto LABEL_6;
  }

  v26[3] = &type metadata for InterpolatedColorProvider;
  v26[4] = sub_100003474();
  v18 = swift_allocObject();
  v26[0] = v18;
  sub_1000024A0(v25, v18 + 16);
  sub_1000024A0(v24, v18 + 56);
  *(v18 + 96) = a3;
  sub_10000254C(v24);
  sub_10000254C(v25);
LABEL_7:
  sub_100013588();
  v21 = v20;
  sub_1000024A0(v26, v25);
  v22 = sub_10000EAE4(v25, v7, v9, v11, v13, v15, v17, v21);
  sub_10000254C(v26);
  return v22;
}

uint64_t sub_10000FD38()
{
  sub_10000254C((v0 + 16));
  sub_10000254C((v0 + 56));

  return _swift_deallocObject(v0, 104, 7);
}

Swift::Int sub_10000FD90()
{
  sub_100013CB8();
  sub_100013918();
  return sub_100013CD8();
}

Swift::Int sub_10000FE14(uint64_t a1)
{
  sub_100013CB8();
  sub_100013918();
  return sub_100013CD8();
}

uint64_t sub_10000FE70@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_10001CF98;
  v7._object = v3;
  v5 = sub_100013C38(v4, v7);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_10000FF10@<X0>(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v8._countAndFlagsBits = a1;
  v5._rawValue = &off_10001CFD0;
  v8._object = a2;
  v6 = sub_100013C38(v5, v8);

  *a3 = v6 != 0;
  return result;
}

uint64_t sub_10000FF80(uint64_t a1)
{
  v2 = sub_10001059C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000FFBC(uint64_t a1)
{
  v2 = sub_10001059C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100010000@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{

  result = sub_10000CC74(a1, a2);
  if (result == 10)
  {

    a1 = 0;
    a2 = 0;
  }

  *a3 = a1;
  a3[1] = a2;
  return result;
}

uint64_t sub_100010080()
{
  sub_100013B08(19);

  v2._countAndFlagsBits = sub_1000138E8();
  sub_100013928(v2);

  v0 = sub_100013908();

  return v0;
}

uint64_t sub_10001013C()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_10001016C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_100002504(&qword_100023A80, &qword_100016940);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - v7;
  sub_100003518(a1, a1[3]);
  sub_10001059C();
  sub_100013CE8();
  if (v2)
  {
    return sub_10000254C(a1);
  }

  v9 = sub_100013C48();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  result = sub_10000254C(a1);
  *a2 = v9;
  a2[1] = v11;
  return result;
}

uint64_t sub_1000102E8(void *a1)
{
  v2 = sub_100002504(&qword_100023A70, &qword_100016938);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_100003518(a1, a1[3]);
  sub_10001059C();
  sub_100013CF8();
  sub_100013C58();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_100010424(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_100013C88();
  }
}

uint64_t sub_100010454(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_10001049C(uint64_t result, int a2, int a3)
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

unint64_t sub_1000104EC()
{
  result = qword_100023A60;
  if (!qword_100023A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100023A60);
  }

  return result;
}

unint64_t sub_100010548()
{
  result = qword_100023A68;
  if (!qword_100023A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100023A68);
  }

  return result;
}

unint64_t sub_10001059C()
{
  result = qword_100023A78;
  if (!qword_100023A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100023A78);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ExtragalacticPosterData.CodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for ExtragalacticPosterData.CodingKeys(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_1000106DC()
{
  result = qword_100023A88;
  if (!qword_100023A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100023A88);
  }

  return result;
}

unint64_t sub_100010734()
{
  result = qword_100023A90;
  if (!qword_100023A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100023A90);
  }

  return result;
}

unint64_t sub_10001078C()
{
  result = qword_100023A98;
  if (!qword_100023A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100023A98);
  }

  return result;
}

uint64_t sub_100010808()
{
  if (qword_100022890 != -1)
  {
    result = swift_once();
  }

  v0 = 3.6;
  if (byte_1000255E0)
  {
    v0 = 4.6;
  }

  qword_100023B58 = *&v0;
  return result;
}

uint64_t sub_100010878()
{
  if (qword_1000228C0 != -1)
  {
    swift_once();
  }

  v0 = qword_100023B58;
  sub_100002504(&qword_100023BB0, &qword_100016B48);
  v1 = sub_100002504(&qword_100023BB8, &qword_100016B50);
  v2 = *(*(v1 - 8) + 72);
  v3 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100015C30;
  v5 = v4 + v3;
  v6 = v5 + *(v1 + 48);
  v7 = enum case for Keyframe.Name.off(_:);
  v8 = sub_100013778();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v5, v7, v8);
  *v6 = xmmword_100016AF0;
  *(v6 + 16) = v0;
  v10 = v5 + v2 + *(v1 + 48);
  v9();
  __asm { FMOV            V0.2D, #1.0 }

  *v10 = _Q0;
  *(v10 + 16) = 0;
  v16 = v5 + 2 * v2 + *(v1 + 48);
  v9();
  *v16 = xmmword_100016B00;
  *(v16 + 16) = v0;
  v17 = sub_1000113E0(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  off_100023B60 = v17;
  return result;
}

id sub_100010B98(void *a1)
{
  *&v1[OBJC_IVAR____TtC19ExtragalacticPoster21BackgroundContentView_portraitSize] = CGSizeZero;
  v3 = OBJC_IVAR____TtC19ExtragalacticPoster21BackgroundContentView_primaryBannerLayer;
  v4 = type metadata accessor for ExtragalacticBannerLayer();
  *&v1[v3] = [objc_allocWithZone(v4) init];
  v5 = OBJC_IVAR____TtC19ExtragalacticPoster21BackgroundContentView_secondaryBannerLayer;
  *&v1[v5] = [objc_allocWithZone(v4) init];
  v10.receiver = v1;
  v10.super_class = type metadata accessor for BackgroundContentView();
  v6 = objc_msgSendSuper2(&v10, "initWithCoder:", a1);
  v7 = v6;
  if (v6)
  {
    v8 = v6;
    sub_100010C90();
  }

  return v7;
}

void sub_100010C90()
{
  v1 = [objc_opt_self() blackColor];
  [v0 setBackgroundColor:v1];

  [v0 setClipsToBounds:0];
  v2 = [v0 layer];
  [v2 setMasksToBounds:0];

  v3 = [v0 layer];
  [v3 addSublayer:*&v0[OBJC_IVAR____TtC19ExtragalacticPoster21BackgroundContentView_secondaryBannerLayer]];

  v4 = [v0 layer];
  [v4 addSublayer:*&v0[OBJC_IVAR____TtC19ExtragalacticPoster21BackgroundContentView_primaryBannerLayer]];
}

id sub_100010DB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = COERCE_DOUBLE(sub_1000115DC(a3));
  if (v9)
  {
    v10 = 1.0;
  }

  else
  {
    v10 = v6;
  }

  x = 0.0;
  if (v9)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = v7;
  }

  v55 = v12;
  v56 = v10;
  if (v9)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = v8;
  }

  v57 = v13;
  v14 = objc_opt_self();
  [v14 begin];
  [v14 setDisableActions:1];
  sub_1000024A0(a1, v59);
  sub_1000136C8();
  v16 = v15;
  if (v15 > 0.0)
  {
    v17 = sub_100013698();
    v18 = sub_100013698();
    sub_1000136D8();
    sub_100011980(v18);
    sub_1000136C8();
    sub_100013588();
    v20 = v19;
    v21 = *&v4[OBJC_IVAR____TtC19ExtragalacticPoster21BackgroundContentView_primaryBannerLayer];
    v22 = *&v4[OBJC_IVAR____TtC19ExtragalacticPoster21BackgroundContentView_portraitSize];
    v23 = *&v4[OBJC_IVAR____TtC19ExtragalacticPoster21BackgroundContentView_portraitSize + 8];
    v24 = sub_100011980(v17);
    v25 = sub_100013A58();
    v26 = 3.14159265;
    if ((v25 & 1) == 0)
    {
      v26 = 0.0;
    }

    v27 = 1.57079633;
    if (v25)
    {
      v27 = -1.57079633;
    }

    if (v24)
    {
      v28 = v22;
    }

    else
    {
      v26 = v27;
      v28 = v23;
    }

    if (v24)
    {
      v29 = v23;
    }

    else
    {
      v29 = v22;
    }

    CATransform3DMakeRotation(&v58, v26, 0.0, 0.0, 1.0);
    [v21 setTransform:&v58];
    y = v23 * (1.0 - v22 / v23);
    if (v17 != 4)
    {
      if (v17 == 3)
      {
        x = -y;
        y = 0.0;
      }

      else
      {
        x = CGPointZero.x;
        y = CGPointZero.y;
      }
    }

    [v21 setFrame:{x, y, v28, v29}];
    sub_1000024A0(v59, &v58);
    if (v24)
    {
      type metadata accessor for ExtragalacticPortraitBannerDescriptor();
      swift_allocObject();
      v31 = sub_100009208(&v58, v22, v23, v20, v56, v55, v57);
    }

    else
    {
      type metadata accessor for ExtragalacticLandscapeBannerDescriptor();
      swift_allocObject();
      v31 = sub_100005D6C(&v58, v23, v22, v20, v56, v55, v57);
    }

    v32 = OBJC_IVAR____TtC19ExtragalacticPoster11BannerLayer_descriptor;
    *&v21[OBJC_IVAR____TtC19ExtragalacticPoster11BannerLayer_descriptor] = v31;

    if (*&v21[v32])
    {
      sub_10000D9F8();
    }
  }

  v33 = *&v4[OBJC_IVAR____TtC19ExtragalacticPoster21BackgroundContentView_primaryBannerLayer];
  [v33 setHidden:v16 <= 0.0];
  if (v16 < 1.0)
  {
    v34 = sub_1000136A8();
    v35 = sub_1000136A8();
    sub_1000136D8();
    sub_100011980(v35);
    sub_1000136C8();
    v36 = 0.0;
    sub_100013588();
    v38 = v37;
    v39 = *&v4[OBJC_IVAR____TtC19ExtragalacticPoster21BackgroundContentView_secondaryBannerLayer];
    v40 = *&v4[OBJC_IVAR____TtC19ExtragalacticPoster21BackgroundContentView_portraitSize];
    v41 = *&v4[OBJC_IVAR____TtC19ExtragalacticPoster21BackgroundContentView_portraitSize + 8];
    v42 = sub_100011980(v34);
    v43 = sub_100013A58();
    v44 = 3.14159265;
    if ((v43 & 1) == 0)
    {
      v44 = 0.0;
    }

    v45 = 1.57079633;
    if (v43)
    {
      v45 = -1.57079633;
    }

    if (v42)
    {
      v46 = v40;
    }

    else
    {
      v44 = v45;
      v46 = v41;
    }

    if (v42)
    {
      v47 = v41;
    }

    else
    {
      v47 = v40;
    }

    CATransform3DMakeRotation(&v58, v44, 0.0, 0.0, 1.0);
    [v39 setTransform:&v58];
    v48 = v41 * (1.0 - v40 / v41);
    if (v34 != 4)
    {
      if (v34 == 3)
      {
        v36 = -v48;
        v48 = 0.0;
      }

      else
      {
        v36 = CGPointZero.x;
        v48 = CGPointZero.y;
      }
    }

    [v39 setFrame:{v36, v48, v46, v47}];
    sub_1000024A0(v59, &v58);
    if (v42)
    {
      type metadata accessor for ExtragalacticPortraitBannerDescriptor();
      swift_allocObject();
      v49 = sub_100009208(&v58, v40, v41, v38, v56, v55, v57);
    }

    else
    {
      type metadata accessor for ExtragalacticLandscapeBannerDescriptor();
      swift_allocObject();
      v49 = sub_100005D6C(&v58, v41, v40, v38, v56, v55, v57);
    }

    v50 = OBJC_IVAR____TtC19ExtragalacticPoster11BannerLayer_descriptor;
    *&v39[OBJC_IVAR____TtC19ExtragalacticPoster11BannerLayer_descriptor] = v49;

    if (*&v39[v50])
    {
      sub_10000D9F8();
    }

    sub_10000254C(v59);
    v51 = sub_100011990(v34);
    v52 = [v4 layer];
    v53 = v52;
    if (v51)
    {
      [v52 insertSublayer:v39 above:v33];
    }

    else
    {
      [v52 insertSublayer:v39 below:v33];
    }
  }

  else
  {
    sub_10000254C(v59);
  }

  [*&v4[OBJC_IVAR____TtC19ExtragalacticPoster21BackgroundContentView_secondaryBannerLayer] setHidden:v16 >= 1.0];
  return [v14 commit];
}

id sub_10001133C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for BackgroundContentView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_1000113E0(uint64_t a1)
{
  v2 = sub_100002504(&qword_100023BB8, &qword_100016B50);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100002504(&qword_100023BC0, &qword_100016B58);
    v7 = sub_100013C28();
    v8 = &v5[*(v2 + 48)];
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100011D38(v9, v5, &qword_100023BB8, &qword_100016B50);
      result = sub_100012298(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_100013778();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7] + 24 * v13;
      v17 = *(v8 + 2);
      *v16 = *v8;
      *(v16 + 16) = v17;
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

uint64_t sub_1000115DC(uint64_t a1)
{
  v37 = a1;
  v1 = sub_100013778();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v31 - v7;
  __chkstk_darwin(v6);
  v10 = &v31 - v9;
  if (qword_1000228C8 != -1)
  {
    swift_once();
  }

  v11 = off_100023B60;
  v12 = *(v2 + 104);
  v12(v10, enum case for Keyframe.Name.off(_:), v1);
  if (v11[2] && (v13 = sub_100012298(v10), (v14 & 1) != 0))
  {
    v36 = 0;
    v15 = (v11[7] + 24 * v13);
    v16 = v15[1];
    v35 = *v15;
    v34 = v16;
    v33 = v15[2];
  }

  else
  {
    v35 = 0;
    v34 = 0;
    v33 = 0;
    v36 = 1;
  }

  v17 = *(v2 + 8);
  v17(v10, v1);
  v12(v8, enum case for Keyframe.Name.wake(_:), v1);
  if (v11[2] && (v18 = sub_100012298(v8), (v19 & 1) != 0))
  {
    v20 = 0;
    v21 = (v11[7] + 24 * v18);
    v22 = v21[1];
    v32 = *v21;
    v31 = v22;
    v23 = v21[2];
  }

  else
  {
    v32 = 0;
    v31 = 0;
    v23 = 0;
    v20 = 1;
  }

  v17(v8, v1);
  v12(v5, enum case for Keyframe.Name.unlocked(_:), v1);
  if (v11[2] && (v24 = sub_100012298(v5), (v25 & 1) != 0))
  {
    v26 = (v11[7] + 24 * v24);
    v27 = *v26;
    v28 = v26[1];
    v29 = v26[2];
    v17(v5, v1);
    if ((v20 & 1) == 0)
    {
      sub_100013798();
      sub_1000137A8();
      v46 = v35;
      v47 = v34;
      v48 = v33;
      v49 = v36;
      v42 = v32;
      v43 = v31;
      v44 = v23;
      v45 = 0;
      v38 = v27;
      v39 = v28;
      v40 = v29;
      v41 = 0;
      sub_1000119A0();
      sub_100013818();
      return v50;
    }
  }

  else
  {
    v17(v5, v1);
  }

  return 0;
}

unint64_t sub_1000119A0()
{
  result = qword_100023BA8;
  if (!qword_100023BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100023BA8);
  }

  return result;
}

unint64_t sub_1000119F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100002504(&qword_100023190, &qword_100015E38);
    v3 = sub_100013C28();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_100012330(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

unint64_t sub_100011AEC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100002504(&qword_100023BD0, &qword_100016B68);
    v3 = sub_100013C28();
    v4 = a1 + 32;

    while (1)
    {
      sub_100011D38(v4, v13, &unk_100023510, &unk_100016B70);
      result = sub_100012374(v13);
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
      result = sub_100005768(&v15, (v3[7] + 32 * result));
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

void *sub_100011C28(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_100002504(&qword_100023BC8, &qword_100016B60);
  v3 = sub_100013C28();
  LOBYTE(v4) = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = sub_100012430(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 8);
    v15 = *v10;

    v8 = sub_100012430(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100011D38(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100002504(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100011DA0(unsigned __int8 a1)
{
  v2 = *(v1 + 16);
  *(v1 + 16) = a1;
  v3 = sub_10000B4A0(a1);
  v5 = v4;
  if (v3 == sub_10000B4A0(v2) && v5 == v6)
  {
  }

  else
  {
    v8 = sub_100013C88();

    if ((v8 & 1) == 0)
    {
      swift_beginAccess();
      *(v1 + 24) = &_swiftEmptyDictionarySingleton;
    }
  }

  return result;
}

uint64_t sub_100011E80@<X0>(uint64_t *a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v6 = sub_100012140(0);
  v7 = sub_100012140(1);
  v8 = sub_100012140(2);
  v9 = type metadata accessor for ColorPalette();
  v20[3] = v9;
  v10 = sub_100013420(&qword_100022CE0, type metadata accessor for ColorPalette, &unk_1000164A0);
  v20[4] = v10;
  v19[4] = v10;
  v20[0] = v6;
  v19[3] = v9;
  v18[4] = v10;
  v19[0] = v7;
  v18[3] = v9;
  v18[0] = v8;
  if (a2 <= 0.0)
  {
    sub_1000024A0(v20, v17);
    v13 = v19;
    goto LABEL_7;
  }

  if (a2 >= 1.0)
  {
    sub_1000024A0(v19, v17);
    v13 = v18;
LABEL_7:
    sub_1000024A0(v13, v16);
    if (a3 <= 0.0)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  v17[3] = &type metadata for InterpolatedColorProvider;
  v11 = sub_100003474();
  v17[4] = v11;
  v17[0] = swift_allocObject();
  sub_1000024A0(v20, v17[0] + 16);
  sub_1000024A0(v19, v17[0] + 56);
  *(v17[0] + 96) = a2;
  v16[3] = &type metadata for InterpolatedColorProvider;
  v16[4] = v11;
  v16[0] = swift_allocObject();
  sub_1000024A0(v19, v16[0] + 16);
  sub_1000024A0(v18, v16[0] + 56);
  *(v16[0] + 96) = a2;
  if (a3 <= 0.0)
  {
LABEL_4:
    v12 = v17;
    goto LABEL_11;
  }

LABEL_8:
  if (a3 < 1.0)
  {
    v22 = &type metadata for InterpolatedColorProvider;
    v23 = sub_100003474();
    v14 = swift_allocObject();
    *&v21 = v14;
    sub_1000024A0(v17, v14 + 16);
    sub_1000024A0(v16, v14 + 56);
    *(v14 + 96) = a3;
    goto LABEL_12;
  }

  v12 = v16;
LABEL_11:
  sub_1000024A0(v12, &v21);
LABEL_12:

  sub_10000254C(v16);
  sub_10000254C(v17);
  sub_10000254C(v18);
  sub_10000254C(v19);
  sub_10000254C(v20);
  if (v22)
  {

    return sub_10000345C(&v21, a1);
  }

  else
  {
    a1[3] = v9;
    a1[4] = v10;

    *a1 = v6;
    if (v22)
    {
      return sub_100013378(&v21);
    }
  }

  return result;
}

uint64_t sub_100012140(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 24);
  if (*(v4 + 16) && (v5 = sub_100012430(a1), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 8 * v5);
  }

  else
  {
    v8 = *(v2 + 16);
    type metadata accessor for ColorPalette();
    v7 = swift_allocObject();
    *(v7 + 32) = 0;
    *(v7 + 40) = 0;
    *(v7 + 24) = 0;
    *(v7 + 16) = v8;
    *(v7 + 17) = a1;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *(v2 + 24);
    *(v2 + 24) = 0x8000000000000000;
    sub_100012F70(v7, a1, isUniquelyReferenced_nonNull_native);
    *(v2 + 24) = v11;
    swift_endAccess();
  }

  return v7;
}

uint64_t sub_10001223C()
{

  return swift_deallocClassInstance();
}

unint64_t sub_100012298(uint64_t a1)
{
  sub_100013778();
  sub_100013420(&qword_100023CD0, &type metadata accessor for Keyframe.Name, &protocol conformance descriptor for Keyframe.Name);
  v2 = sub_1000138A8();

  return sub_10001249C(a1, v2);
}

unint64_t sub_100012330(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100013A88(*(v2 + 40));

  return sub_10001265C(a1, v4);
}

unint64_t sub_100012374(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100013AC8(*(v2 + 40));

  return sub_100012720(a1, v4);
}

unint64_t sub_1000123B8(uint64_t a1, uint64_t a2)
{
  sub_100013CB8();
  sub_100013918();
  v4 = sub_100013CD8();

  return sub_1000127E8(a1, a2, v4);
}

unint64_t sub_100012430(uint64_t a1)
{
  v1 = a1;
  sub_100013CB8();
  sub_100013CC8(v1);
  v2 = sub_100013CD8();

  return sub_1000128A0(v1, v2);
}

unint64_t sub_10001249C(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_100013778();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_100013420(&qword_100023CD8, &type metadata accessor for Keyframe.Name, &protocol conformance descriptor for Keyframe.Name);
      v15 = sub_1000138B8();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_10001265C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_1000134C4();
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_100013A98();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_100012720(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100013468(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_100013AD8();
      sub_10000D838(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1000127E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_100013C88())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1000128A0(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_100012910(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100002504(&qword_100023190, &qword_100015E38);
  result = sub_100013C08();
  v7 = result;
  if (*(v5 + 16))
  {
    v32 = v2;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
        v22 = v20;
        v23 = v21;
      }

      result = sub_100013A88(*(v7 + 40));
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_100012B78(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100002504(&qword_100023BC8, &qword_100016B60);
  v30 = v4;
  result = sub_100013C08();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
      }

      sub_100013CB8();
      sub_100013CC8(v20);
      result = sub_100013CD8();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_100012E08(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_100012330(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_100012910(v13, a3 & 1);
      v8 = sub_100012330(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        sub_1000134C4();
        sub_100013C98();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v16 = v8;
      sub_1000130BC();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * v8) = a1;

    return _objc_release_x1();
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v19 = v18[2];
  v12 = __OFADD__(v19, 1);
  v20 = v19 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v20;

  return _objc_retain_x1();
}

unint64_t sub_100012F70(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_100012430(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_100012B78(v14, a3 & 1);
      result = sub_100012430(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_100013C98();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_10001321C();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}

id sub_1000130BC()
{
  v1 = v0;
  sub_100002504(&qword_100023190, &qword_100015E38);
  v2 = *v0;
  v3 = sub_100013BF8();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
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

void *sub_10001321C()
{
  v1 = v0;
  sub_100002504(&qword_100023BC8, &qword_100016B60);
  v2 = *v0;
  v3 = sub_100013BF8();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

uint64_t sub_100013378(uint64_t a1)
{
  v2 = sub_100002504(&qword_100023CC8, qword_100016BD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000133E0()
{
  sub_10000254C((v0 + 16));
  sub_10000254C((v0 + 56));

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_100013420(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000134C4()
{
  result = qword_100023198;
  if (!qword_100023198)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100023198);
  }

  return result;
}

__double2 __sincos_stret(double a1)
{
  v3 = ___sincos_stret(a1);
  cosval = v3.__cosval;
  sinval = v3.__sinval;
  result.__cosval = cosval;
  result.__sinval = sinval;
  return result;
}