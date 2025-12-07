double sub_1E49149C8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EC60, &unk_1E49A0DC0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v24 - v3;
  v5 = sub_1E4996F4C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v24 - v11;
  v25 = OBJC_IVAR____TtC11ClockPoster15RollingTimeView_timeTextListenerTask;
  if (*(v0 + OBJC_IVAR____TtC11ClockPoster15RollingTimeView_timeTextListenerTask))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F268, &qword_1E49A3980);
    sub_1E49981DC();
  }

  v13 = *(v6 + 16);
  v13(v12, v0 + OBJC_IVAR____TtC11ClockPoster15RollingTimeView_timeZone, v5, v10);
  v14 = sub_1E499816C();
  (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
  v15 = swift_allocObject();
  v24 = v4;
  v16 = v15;
  swift_unknownObjectWeakInit();
  (v13)(v8, v12, v5);
  sub_1E499814C();

  v17 = sub_1E499813C();
  v18 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v19 = (v7 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  v21 = MEMORY[0x1E69E85E0];
  *(v20 + 16) = v17;
  *(v20 + 24) = v21;
  (*(v6 + 32))(v20 + v18, v8, v5);
  *(v20 + v19) = v16;

  v22 = sub_1E49690B8(0, 0, v24, &unk_1E49A0DD8, v20);
  (*(v6 + 8))(v12, v5);
  *(v1 + v25) = v22;

  return result;
}

uint64_t sub_1E4914CCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v6 = type metadata accessor for TimeString(0);
  v5[13] = v6;
  v5[14] = *(v6 - 8);
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF815D0, &unk_1E499A370);
  v5[19] = swift_task_alloc();
  v5[20] = type metadata accessor for TextClockDescriptor(0);
  v5[21] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EC68, &unk_1E49A0DE0);
  v5[22] = v7;
  v5[23] = *(v7 - 8);
  v5[24] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EC70, &qword_1E499A380);
  v5[25] = v8;
  v5[26] = *(v8 - 8);
  v5[27] = swift_task_alloc();
  v5[28] = sub_1E499814C();
  v5[29] = sub_1E499813C();
  v10 = sub_1E499811C();
  v5[30] = v10;
  v5[31] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1E4914F20, v10, v9);
}

uint64_t sub_1E4914F20()
{
  if (qword_1ECF7EB40 != -1)
  {
    swift_once();
  }

  v2 = v0[23];
  v1 = v0[24];
  v4 = v0[21];
  v3 = v0[22];
  v5 = v0[11];
  v6 = qword_1ECF80790;
  v7 = *(v0[20] + 20);
  v8 = sub_1E4996F4C();
  (*(*(v8 - 8) + 16))(v4 + v7, v5, v8);
  *v4 = 0.0;
  v9 = swift_task_alloc();
  *(v9 + 16) = v6;
  *(v9 + 24) = v4;
  sub_1E491780C(v4, sub_1E48BFE74, v9, v1);

  sub_1E4918D74(v4, type metadata accessor for TextClockDescriptor);
  sub_1E499819C();
  (*(v2 + 8))(v1, v3);
  swift_beginAccess();
  v0[32] = 0;
  v10 = sub_1E499813C();
  v0[33] = v10;
  v11 = swift_task_alloc();
  v0[34] = v11;
  *v11 = v0;
  v11[1] = sub_1E4915130;
  v12 = v0[25];
  v13 = v0[19];
  v14 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D9C8](v13, v10, v14, v12);
}

uint64_t sub_1E4915130()
{
  v1 = *v0;

  v2 = *(v1 + 248);
  v3 = *(v1 + 240);

  return MEMORY[0x1EEE6DFA0](sub_1E4915274, v3, v2);
}

uint64_t sub_1E4915274()
{
  v1 = v0[19];
  if ((*(v0[14] + 48))(v1, 1, v0[13]) == 1)
  {
    (*(v0[26] + 8))(v0[27], v0[25]);

LABEL_7:

    v9 = v0[1];
    goto LABEL_8;
  }

  sub_1E48BF0EC(v1, v0[18]);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v11 = v0[26];
    v10 = v0[27];
    v12 = v0[25];
    v13 = v0[18];

    sub_1E4918D74(v13, type metadata accessor for TimeString);
    (*(v11 + 8))(v10, v12);
    goto LABEL_7;
  }

  v3 = Strong;
  v4 = v0[32];
  sub_1E49981FC();
  if (v4)
  {
    v6 = v0[26];
    v5 = v0[27];
    v7 = v0[25];
    v8 = v0[18];

    sub_1E4918D74(v8, type metadata accessor for TimeString);
    (*(v6 + 8))(v5, v7);

    v9 = v0[1];
LABEL_8:

    return v9();
  }

  v15 = v0[17];
  v16 = v0[16];
  sub_1E49184D8(v0[18], v15);
  v17 = &v3[OBJC_IVAR____TtC11ClockPoster15RollingTimeView_timeString];
  swift_beginAccess();
  sub_1E49184D8(v17, v16);
  swift_beginAccess();
  sub_1E48BFB2C(v15, v17);
  swift_endAccess();
  v18 = *v16 == *v17 && v16[1] == *(v17 + 1);
  if (v18 || (sub_1E499884C() & 1) != 0)
  {
  }

  else
  {
    v19 = v0[15];
    sub_1E49184D8(v17, v19);
    sub_1E491665C(v19);

    sub_1E4918D74(v19, type metadata accessor for TimeString);
  }

  v20 = v0[18];
  v21 = v0[16];
  sub_1E4918D74(v0[17], type metadata accessor for TimeString);
  sub_1E4918D74(v20, type metadata accessor for TimeString);
  sub_1E4918D74(v21, type metadata accessor for TimeString);
  v0[32] = 0;
  v22 = sub_1E499813C();
  v0[33] = v22;
  v23 = swift_task_alloc();
  v0[34] = v23;
  *v23 = v0;
  v23[1] = sub_1E4915130;
  v24 = v0[25];
  v25 = v0[19];
  v26 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D9C8](v25, v22, v26, v24);
}

void sub_1E4915660(unint64_t a1, uint64_t a2, char a3)
{
  v4 = a1;
  v5 = OBJC_IVAR____TtC11ClockPoster15RollingTimeView_overlap;
  sub_1E4915A40(a1);
  x = v6;
  [v3 bounds];
  v8 = CGRectGetWidth(v53) / x;
  [v3 bounds];
  Height = CGRectGetHeight(v54);
  v10 = Height / sub_1E4915B88(v4);
  if (v10 >= v8)
  {
    v10 = v8;
  }

  if (*&v3[OBJC_IVAR____TtC11ClockPoster15RollingTimeView_maxScale] < v10)
  {
    v10 = *&v3[OBJC_IVAR____TtC11ClockPoster15RollingTimeView_maxScale];
  }

  sx = v10;
  [v3 bounds];
  Width = CGRectGetWidth(v55);
  v12 = *&v3[v5];
  v36 = sub_1E4915C80(v4);
  if (v4 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1E49986EC())
  {
    v14 = 0;
    Width = (Width - x * sx) * 0.5;
    v34 = v4 & 0xFFFFFFFFFFFFFF8;
    v35 = v4 & 0xC000000000000001;
    v33 = sx * v12;
    while (1)
    {
      if (v35)
      {
        v15 = v4;
        v16 = MEMORY[0x1E691BDE0](v14, v4);
      }

      else
      {
        if (v14 >= *(v34 + 16))
        {
          goto LABEL_20;
        }

        v15 = v4;
        v16 = *(v4 + 8 * v14 + 32);
      }

      v17 = v16;
      v4 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      [v16 _tightBoundingRectOfFirstLine];
      x = v56.origin.x;
      v38 = CGRectGetWidth(v56);
      v18 = v17;
      [v18 transform];
      v19 = atan2(t1.b, t1.a);
      CGAffineTransformMakeRotation(&t1, v19);
      v41 = *&t1.c;
      v42 = *&t1.a;
      ty = t1.ty;
      tx = t1.tx;
      CGAffineTransformMakeScale(&t1, sx, sx);
      b = t1.b;
      a = t1.a;
      d = t1.d;
      c = t1.c;
      v43 = t1.ty;
      v44 = t1.tx;
      t1.b = 0.0;
      t1.c = 0.0;
      t1.a = 1.0;
      t1.d = 1.0;
      t1.tx = 0.0;
      t1.ty = 0.0;
      [v18 setTransform_];
      if (a3)
      {
        [v18 _tightBoundingRectOfFirstLine];
        v21 = v20;
        v23 = v22;
        v25 = v24;
        v27 = v26;
        [v3 bounds];
        UIRectGetHeight(v28, v29, v30, v31);
        v57.origin.x = v21;
        v57.origin.y = v23;
        v57.size.width = v25;
        v57.size.height = v27;
        CGRectGetHeight(v57);
      }

      [v18 frame];
      [v18 setFrame_];
      v12 = a;
      t1.a = a;
      t1.b = b;
      t1.c = c;
      t1.d = d;
      t1.tx = v44;
      t1.ty = v43;
      [v18 setTransform_];
      if (__OFSUB__(v14, v36))
      {
        goto LABEL_21;
      }

      x = Width - sx * x - v33 * (v14 - v36);
      [v18 frame];
      [v18 setFrame_];
      t1.a = a;
      t1.b = b;
      t1.c = c;
      t1.d = d;
      t1.tx = v44;
      t1.ty = v43;
      *&t2.a = v42;
      *&t2.c = v41;
      t2.tx = tx;
      t2.ty = ty;
      CGAffineTransformConcat(&v50, &t1, &t2);
      t1 = v50;
      [v18 setTransform_];

      Width = Width + sx * v38;
      ++v14;
      v32 = v4 == i;
      v4 = v15;
      if (v32)
      {
        return;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }
}

uint64_t sub_1E4915A40(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1E49986EC())
  {
    v4 = 0;
    v5 = 0.0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1E691BDE0](v4, a1);
      }

      else
      {
        if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v6 = *(a1 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      [v6 _tightBoundingRectOfFirstLine];
      Width = CGRectGetWidth(v12);

      v5 = v5 + Width;
      ++v4;
      if (v8 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:
  if (v2)
  {
    result = sub_1E49986EC();
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
    goto LABEL_21;
  }

  result = sub_1E4915C80(a1);
  if (__OFSUB__(v11, result))
  {
LABEL_21:
    __break(1u);
  }

  return result;
}

double sub_1E4915B88(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1E49986EC())
  {
    v3 = 0;
    v4 = 0.0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1E691BDE0](v3, a1);
      }

      else
      {
        if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v5 = *(a1 + 8 * v3 + 32);
      }

      v6 = v5;
      v7 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      [v5 _tightBoundingRectOfFirstLine];
      Height = CGRectGetHeight(v10);

      if (Height > v4)
      {
        v4 = Height;
      }

      ++v3;
      if (v7 == i)
      {
        return v4;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

  return 0.0;
}

unint64_t sub_1E4915C80(unint64_t result)
{
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

    return 0;
  }

  v8 = result;
  v9 = sub_1E49986EC();
  result = v8;
  if (!v9)
  {
    return 0;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v1 = MEMORY[0x1E691BDE0](0, result);
LABEL_6:
    v2 = v1;
    v3 = [v1 text];

    if (v3)
    {
      v4 = sub_1E4997EEC();
      v6 = v5;

      if (v4 == 9142498 && v6 == 0xA300000000000000)
      {

        return 1;
      }

      v7 = sub_1E499884C();

      if (v7)
      {
        return 1;
      }
    }

    return 0;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v1 = *(result + 32);
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

void sub_1E4915DA4(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC11ClockPoster15RollingTimeView_blurColon) != 1)
  {
    return;
  }

  v9 = *(*(v1 + OBJC_IVAR____TtC11ClockPoster15RollingTimeView_timeLabel) + 16);
  if ((v9 & 0xC000000000000001) != 0)
  {

    v55 = MEMORY[0x1E691BDE0](2, v9);

    v10 = v55;
  }

  else
  {
    if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
    {
      goto LABEL_41;
    }

    v10 = *(v9 + 48);
  }

  v54 = v10;
  [v10 _tightBoundingRectOfFirstLine];
  v5 = v11;
  v6 = v12;
  v7 = v13;
  v8 = v14;
  v15 = sub_1E49143E8();
  if (v15 >> 62)
  {
    v9 = v15;
    v19 = sub_1E49986EC();
    v15 = v9;
    v3 = &RollingTimeView;
    if (v19)
    {
      goto LABEL_7;
    }

LABEL_15:

    goto LABEL_16;
  }

  v3 = 0x1EE2BB000;
  if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_15;
  }

LABEL_7:
  if ((v15 & 0xC000000000000001) != 0)
  {
    goto LABEL_42;
  }

  if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_44;
  }

  for (i = *(v15 + 32); ; i = MEMORY[0x1E691BDE0](0))
  {
    v17 = i;

    v18 = [v17 superview];

    if (v18)
    {

      goto LABEL_47;
    }

LABEL_16:
    v9 = v54;
    [v1 bringSubviewToFront_];
    v20 = [v9 layer];

    [v20 setCompositingFilter_];
    v2 = *(v1 + *(v3 + 384));
    v4 = v2 & 0xFFFFFFFFFFFFFF8;
    if (v2 >> 62)
    {
LABEL_44:
      v3 = sub_1E49986EC();
    }

    else
    {
      v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v3)
    {
      v21 = 0;
      while (1)
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v22 = MEMORY[0x1E691BDE0](v21, v2);
        }

        else
        {
          if (v21 >= *(v4 + 16))
          {
            goto LABEL_38;
          }

          v22 = *(v2 + 8 * v21 + 32);
        }

        v23 = v22;
        v24 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        [v9 addSubview_];

        ++v21;
        if (v24 == v3)
        {
          goto LABEL_27;
        }
      }

      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

LABEL_27:

    sub_1E4918954();
    v56 = v25;
    v26 = sub_1E491411C();
    v3 = v26;
    v53 = v1;
    if (!(v26 >> 62))
    {
      v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v27)
      {
        break;
      }

      goto LABEL_29;
    }

    v27 = sub_1E49986EC();
    if (!v27)
    {
      break;
    }

LABEL_29:
    v28 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v29 = MEMORY[0x1E691BDE0](v28, v3);
      }

      else
      {
        if (v28 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_40;
        }

        v29 = *(v3 + 8 * v28 + 32);
      }

      v30 = v29;
      v1 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      v31 = [v9 layer];
      [v31 addSublayer_];

      sub_1E491319C(v56);
      v32 = sub_1E499809C();

      [v30 setFilters_];

      ++v28;
      if (v1 == v27)
      {
        goto LABEL_46;
      }
    }

LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    ;
  }

LABEL_46:

  v1 = v53;
  v3 = &RollingTimeView;
LABEL_47:
  v33 = *(v3 + 384);
  v34 = *(v1 + v33);
  v35 = v34 & 0xFFFFFFFFFFFFFF8;
  if (v34 >> 62)
  {
    v36 = sub_1E49986EC();
  }

  else
  {
    v36 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v36)
  {
    if ((v34 & 0xC000000000000001) == 0)
    {
      if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v37 = *(v34 + 32);
        goto LABEL_53;
      }

LABEL_88:
      __break(1u);
      goto LABEL_89;
    }

    v37 = MEMORY[0x1E691BDE0](0, v34);

LABEL_53:
    [v37 frame];
    [v37 setFrame_];
  }

  v34 = *(v1 + v33);
  if (v34 >> 62)
  {
    v38 = sub_1E49986EC();
    if (!v38)
    {
      goto LABEL_62;
    }

LABEL_56:
    v35 = v38 - 1;
    if (__OFSUB__(v38, 1))
    {
      __break(1u);
      goto LABEL_88;
    }

    if ((v34 & 0xC000000000000001) != 0)
    {
LABEL_89:

      v51 = MEMORY[0x1E691BDE0](v35, v34);

      v39 = v51;
    }

    else
    {
      if ((v35 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_92:
        __break(1u);
        goto LABEL_93;
      }

      if (v35 >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_94:
        __break(1u);
        goto LABEL_95;
      }

      v39 = *(v34 + 8 * v35 + 32);
    }

    v34 = v39;
    v58.origin.x = v5;
    v58.origin.y = v6;
    v58.size.width = v7;
    v58.size.height = v8;
    v40 = v6 + CGRectGetHeight(v58);
    [v34 frame];
    v41 = v40 - CGRectGetHeight(v59);
    [v34 frame];
    [v34 setFrame_];

    goto LABEL_62;
  }

  v38 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v38)
  {
    goto LABEL_56;
  }

LABEL_62:
  v42 = sub_1E491411C();
  if (v42 >> 62)
  {
    v34 = v42;
    v45 = sub_1E49986EC();
    v42 = v34;
    if (!v45)
    {
      goto LABEL_72;
    }

LABEL_64:
    if ((v42 & 0xC000000000000001) != 0)
    {
      v43 = MEMORY[0x1E691BDE0](0);
    }

    else
    {
      if (!*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_93:
        __break(1u);
        goto LABEL_94;
      }

      v43 = *(v42 + 32);
    }

    v44 = v43;

    [v44 frame];
    [v44 setFrame_];

    goto LABEL_73;
  }

  if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_64;
  }

LABEL_72:

LABEL_73:
  v34 = *(v1 + OBJC_IVAR____TtC11ClockPoster15RollingTimeView____lazy_storage___redModeColonLayers);
  if (v34 >> 62)
  {
    v46 = sub_1E49986EC();
    if (!v46)
    {
      goto LABEL_81;
    }

LABEL_75:
    v1 = v46 - 1;
    if (!__OFSUB__(v46, 1))
    {
      if ((v34 & 0xC000000000000001) == 0)
      {
        if ((v1 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v1 < *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v47 = *(v34 + 8 * v1 + 32);
LABEL_80:
          v48 = v47;
          v60.origin.x = v5;
          v60.origin.y = v6;
          v60.size.width = v7;
          v60.size.height = v8;
          v49 = v6 + CGRectGetHeight(v60);
          [v48 frame];
          v50 = v49 - CGRectGetHeight(v61);
          [v48 frame];
          [v48 setFrame_];

          goto LABEL_81;
        }

        __break(1u);
        return;
      }

LABEL_95:

      v52 = MEMORY[0x1E691BDE0](v1, v34);

      v47 = v52;
      goto LABEL_80;
    }

    goto LABEL_92;
  }

  v46 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v46)
  {
    goto LABEL_75;
  }

LABEL_81:
}

void sub_1E49164D8(unint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC11ClockPoster15RollingTimeView_transformModifier) == 1)
  {
    if (a1 >> 62)
    {
      goto LABEL_20;
    }

    for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1E49986EC())
    {
      for (j = 0; ; ++j)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v5 = MEMORY[0x1E691BDE0](j, a1);
        }

        else
        {
          if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_17;
          }

          v5 = *(a1 + 8 * j + 32);
        }

        v6 = v5;
        v7 = j + 1;
        if (__OFADD__(j, 1))
        {
          break;
        }

        if (qword_1ECF7EB30 != -1)
        {
          swift_once();
        }

        v8 = off_1ECF800F0;
        v9 = *(off_1ECF800F0 + 2);
        if (HIDWORD(v9))
        {
          goto LABEL_18;
        }

        if (v8[2] <= arc4random_uniform(v9))
        {
          goto LABEL_19;
        }

        CLKDegreesToRadians();
        CGAffineTransformMakeRotation(&v11, v10);
        [v6 setTransform_];

        if (v7 == i)
        {
          return;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      ;
    }
  }
}

void sub_1E491665C(uint64_t a1)
{
  v2 = v1;
  v83 = sub_1E4997DBC();
  v82 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v80 = v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_1E4997DFC();
  v79 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v78 = v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TimeString(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v75[1] = v8;
  v76 = v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF815D0, &unk_1E499A370);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v75 - v10;
  v12 = *&v1[OBJC_IVAR____TtC11ClockPoster15RollingTimeView_offScreenTimeLabel];
  v77 = a1;
  sub_1E49184D8(a1, v75 - v10);
  v75[0] = v7;
  (*(v7 + 56))(v11, 0, 1, v6);
  v13 = OBJC_IVAR____TtC11ClockPoster16RollingTimeLabel_timeString;
  swift_beginAccess();
  sub_1E491853C(v11, v12 + v13);
  swift_endAccess();
  v89 = v12;
  sub_1E48DB6AC();
  sub_1E48C1338(v11, &qword_1ECF815D0, &unk_1E499A370);
  [v2 setNeedsLayout];
  [v2 layoutIfNeeded];
  v2[OBJC_IVAR____TtC11ClockPoster15RollingTimeView_isAnimating] = 1;
  v14 = dispatch_group_create();
  v91 = v2;
  v15 = *(*&v2[OBJC_IVAR____TtC11ClockPoster15RollingTimeView_timeLabel] + 16);
  if (v15 >> 62)
  {
    goto LABEL_39;
  }

  v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v90 = v14;

  if (v16)
  {
    v88 = v15 & 0xC000000000000001;
    v87 = v15 & 0xFFFFFFFFFFFFFF8;
    v84 = &v97;
    v17 = -0.0333333333;
    v18 = 0.0333333333;
    v19 = 4;
    v20 = &off_1E8761000;
    v85 = v16;
    v86 = v15;
    while (1)
    {
      v48 = v19 - 4;
      if (v88)
      {
        v14 = MEMORY[0x1E691BDE0](v19 - 4, v15);
      }

      else
      {
        if (v48 >= *(v87 + 16))
        {
          goto LABEL_37;
        }

        v14 = *(v15 + 8 * v19);
      }

      v49 = v14;
      if (__OFADD__(v48, 1))
      {
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        v74 = v14;
        v16 = sub_1E49986EC();
        v14 = v74;
        goto LABEL_3;
      }

      v50 = *(v89 + 16);
      if ((v50 & 0xC000000000000001) != 0)
      {

        v51 = MEMORY[0x1E691BDE0](v19 - 4, v50);
      }

      else
      {
        if (v48 >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_38;
        }

        v51 = *(v50 + 8 * v19);
      }

      v52 = [v49 v20[314]];
      if (v52)
      {
        v53 = v52;
        v54 = sub_1E4997EEC();
        v56 = v55;
      }

      else
      {
        v54 = 0;
        v56 = 0;
      }

      v57 = [v51 v20[314]];
      v93 = v19 - 3;
      if (v57)
      {
        v58 = v57;
        v59 = sub_1E4997EEC();
        v61 = v60;

        if (v56)
        {
          if (v61)
          {
            if (v54 == v59 && v56 == v61)
            {

              v21 = 1;
            }

            else
            {
              v21 = sub_1E499884C();
            }

            goto LABEL_6;
          }

LABEL_28:

          v21 = 0;
          goto LABEL_6;
        }

        if (v61)
        {
          goto LABEL_28;
        }
      }

      else if (v56)
      {
        goto LABEL_28;
      }

      v21 = 1;
LABEL_6:
      v92 = v21;
      [v51 _tightBoundingRectOfFirstLine];
      v23 = v22;
      v25 = v24;
      v27 = v26;
      v29 = v28;
      [v91 bounds];
      Height = UIRectGetHeight(v30, v31, v32, v33);
      v101.origin.x = v23;
      v101.origin.y = v25;
      v101.size.width = v27;
      v101.size.height = v29;
      v35 = (Height - CGRectGetHeight(v101)) * 0.5 - v25;
      v17 = v17 + v18;
      v36 = v90;
      dispatch_group_enter(v90);
      v37 = objc_opt_self();
      v38 = swift_allocObject();
      *(v38 + 16) = v51;
      v39 = (v21 & 1) == 0;
      *(v38 + 24) = v39;
      *(v38 + 32) = v35;
      *(v38 + 40) = v49;
      v99 = sub_1E49185B4;
      v100 = v38;
      aBlock = MEMORY[0x1E69E9820];
      v96 = 1107296256;
      v97 = sub_1E4913064;
      v98 = &block_descriptor_4;
      v40 = _Block_copy(&aBlock);
      v41 = v51;
      v42 = v49;

      v43 = swift_allocObject();
      *(v43 + 16) = v39;
      *(v43 + 24) = v42;
      *(v43 + 32) = v41;
      *(v43 + 40) = v36;
      v99 = sub_1E49185E0;
      v100 = v43;
      aBlock = MEMORY[0x1E69E9820];
      v96 = 1107296256;
      v97 = sub_1E491720C;
      v98 = &block_descriptor_52;
      v44 = _Block_copy(&aBlock);
      v45 = v41;
      v46 = v42;
      v47 = v36;

      [v37 animateWithDuration:0 delay:v40 usingSpringWithDamping:v44 initialSpringVelocity:2.0 options:v17 animations:0.6 completion:0.0];

      _Block_release(v44);
      _Block_release(v40);
      if ((v92 & 1) == 0)
      {
        v18 = 0.0833333333;
      }

      ++v19;
      v15 = v86;
      v20 = &off_1E8761000;
      if (v93 == v85)
      {
        goto LABEL_33;
      }
    }
  }

  v17 = -0.0333333333;
LABEL_33:

  Strong = swift_unknownObjectWeakLoadStrong();
  v63 = v90;
  if (Strong)
  {
    sub_1E4996144(v90, v17);
    swift_unknownObjectRelease();
  }

  sub_1E48D9CFC(0, &qword_1ECF809E0, 0x1E69E9610);
  v64 = sub_1E499839C();
  v65 = v76;
  sub_1E49184D8(v77, v76);
  v66 = (*(v75[0] + 80) + 24) & ~*(v75[0] + 80);
  v67 = swift_allocObject();
  v68 = v91;
  *(v67 + 16) = v91;
  sub_1E48BF0EC(v65, v67 + v66);
  v99 = sub_1E49185F0;
  v100 = v67;
  aBlock = MEMORY[0x1E69E9820];
  v96 = 1107296256;
  v97 = sub_1E4913064;
  v98 = &block_descriptor_58;
  v69 = _Block_copy(&aBlock);
  v70 = v68;
  v71 = v78;
  sub_1E4997DDC();
  v94 = MEMORY[0x1E69E7CC0];
  sub_1E4918654();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF814B0, &qword_1E49A5AE0);
  sub_1E49186AC();
  v72 = v80;
  v73 = v83;
  sub_1E499850C();
  sub_1E499836C();
  _Block_release(v69);

  (*(v82 + 8))(v72, v73);
  (*(v79 + 8))(v71, v81);
}

id sub_1E4917018(void *a1, char a2, void *a3)
{
  [a1 transform];
  v7 = v15;
  v6 = v16;
  v9 = v17;
  v8 = v18;
  v11 = v19;
  v10 = v20;
  v15 = 0x3FF0000000000000;
  v16 = 0;
  v17 = 0;
  v18 = 0x3FF0000000000000;
  v19 = 0;
  v20 = 0;
  [a1 setTransform_];
  if (a2)
  {
    [a1 frame];
    [a1 setFrame_];
    [a3 frame];
    CGRectGetHeight(v21);
    [a3 frame];
    [a3 setFrame_];
    return [a1 setTransform_];
  }

  else
  {
    v15 = 0x3FF0000000000000;
    v16 = 0;
    v17 = 0;
    v18 = 0x3FF0000000000000;
    v19 = 0;
    v20 = 0;
    [a3 setTransform_];
    [a1 frame];
    v14 = v13;
    [a3 frame];
    [a3 setFrame_];
    return [a3 setTransform_];
  }
}

void sub_1E491719C(int a1, char a2, void *a3, id a4, dispatch_group_t group)
{
  if (a2)
  {
    [a4 transform];
    [a3 setTransform_];
  }

  dispatch_group_leave(group);
}

double sub_1E491720C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);

  return result;
}

id sub_1E4917260(_BYTE *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF815D0, &unk_1E499A370);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - v5;
  a1[OBJC_IVAR____TtC11ClockPoster15RollingTimeView_isAnimating] = 0;
  v7 = *&a1[OBJC_IVAR____TtC11ClockPoster15RollingTimeView_timeLabel];
  sub_1E49184D8(a2, &v12 - v5);
  v8 = type metadata accessor for TimeString(0);
  (*(*(v8 - 8) + 56))(v6, 0, 1, v8);
  v9 = OBJC_IVAR____TtC11ClockPoster16RollingTimeLabel_timeString;
  swift_beginAccess();
  sub_1E491853C(v6, v7 + v9);
  swift_endAccess();
  sub_1E48DB6AC();
  sub_1E48C1338(v6, &qword_1ECF815D0, &unk_1E499A370);

  sub_1E49164D8(v10);

  [a1 setNeedsLayout];
  return [a1 layoutIfNeeded];
}

id sub_1E49173E4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RollingTimeView(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for RollingTimeView(uint64_t a1)
{
  result = qword_1EE2BB158;
  if (!qword_1EE2BB158)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E4917564(uint64_t a1)
{
  result = sub_1E4996F4C();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for TimeString(319);
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

unint64_t sub_1E4917688()
{
  result = qword_1ECF800F8;
  if (!qword_1ECF800F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF800F8);
  }

  return result;
}

uint64_t sub_1E49176DC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FD30, &unk_1E49A0DB0);
  v0 = swift_allocObject();
  v1 = _swift_stdlib_malloc_size(v0);
  v2 = v1 - 32;
  if (v1 < 32)
  {
    v2 = v1 - 25;
  }

  v0[2] = 11;
  v0[3] = 2 * (v2 >> 3);
  result = sub_1E4952D08(&v4, (v0 + 4), 11, -5, 5);
  if (result == 11)
  {
    v4 = v0;
    result = sub_1E4917784(5uLL);
    off_1ECF800F0 = v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E4917784(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1E48EA4E4(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 8 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 40), 8 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

void sub_1E491780C(double *a1@<X0>, void (*a2)(uint64_t)@<X1>, void (*a3)(char *, uint64_t, uint64_t, uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v55 = a3;
  v56 = a2;
  v54 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80118, &qword_1E49A0DF0);
  v59 = *(v7 - 8);
  v60 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v58 = &v51 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80120, &qword_1E49A0DF8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v57 = &v51 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v51 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF815D0, &unk_1E499A370);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v51 - v21;
  v23 = *(v4 + 16);
  swift_beginAccess();
  os_unfair_lock_lock(v23 + 4);
  swift_endAccess();
  swift_beginAccess();
  v24 = *(v4 + 24);
  if (*(v24 + 16))
  {

    v25 = sub_1E4947FC0(a1);
    if (v26)
    {
      v27 = *(*(v24 + 56) + 8 * v25);
      swift_retain_n();

      goto LABEL_6;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80128, &qword_1E49A0E00);
  v27 = swift_allocObject();
  v28 = *(*v27 + 96);
  v29 = type metadata accessor for TimeString(0);
  (*(*(v29 - 8) + 56))(v27 + v28, 1, 1, v29);
  v30 = *(*v27 + 104);
  type metadata accessor for CPUnfairLock();
  v31 = swift_allocObject();
  *(v31 + 16) = 0;
  *(v27 + v30) = v31;
  *(v27 + *(*v27 + 112)) = MEMORY[0x1E69E7CC8];
  *(v27 + *(*v27 + 120)) = 0;
  swift_beginAccess();
  swift_retain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v62 = *(v5 + 24);
  *(v5 + 24) = 0x8000000000000000;
  sub_1E498605C(v27, a1, isUniquelyReferenced_nonNull_native);
  *(v5 + 24) = v62;
  swift_endAccess();
LABEL_6:
  v61 = v11;
  v33 = *(*v27 + 104);
  v34 = *(v27 + v33);
  swift_beginAccess();
  os_unfair_lock_lock(v34 + 4);
  swift_endAccess();
  v35 = *(*v27 + 120);
  v36 = *(v27 + v35);
  if ((v36 & 1) == 0)
  {
    *(v27 + v35) = 1;
  }

  v37 = *(v27 + v33);
  swift_beginAccess();
  os_unfair_lock_unlock(v37 + 4);
  swift_endAccess();
  v38 = type metadata accessor for TimeString(0);
  v39 = *(*(v38 - 8) + 56);
  v39(v22, 1, 1, v38);
  if ((v36 & 1) == 0)
  {
    swift_beginAccess();
    os_unfair_lock_unlock(v23 + 4);
    v40 = swift_endAccess();
    v56(v40);
    swift_beginAccess();
    os_unfair_lock_lock(v23 + 4);
    swift_endAccess();
    v39(v19, 0, 1, v38);
    sub_1E4918E4C(v19, v22);
  }

  v53 = v23;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EC68, &unk_1E49A0DE0);
  v42 = *(v41 - 8);
  v43 = v42;
  v55 = *(v42 + 56);
  v56 = (v42 + 56);
  v55(v16, 1, 1, v41);
  v44 = *(v27 + v33);
  swift_beginAccess();
  os_unfair_lock_lock(v44 + 4);
  v45 = swift_endAccess();
  v46 = MEMORY[0x1EEE9AC00](v45);
  *(&v51 - 2) = v27;
  *(&v51 - 1) = v22;
  v52 = v22;
  (*(v59 + 104))(v58, *MEMORY[0x1E69E8650], v60, v46);
  v47 = v57;
  sub_1E49981BC();
  sub_1E48C1338(v16, &qword_1ECF80120, &qword_1E49A0DF8);
  v55(v47, 0, 1, v41);
  sub_1E4918DDC(v47, v16);
  v48 = *(v27 + v33);
  swift_beginAccess();
  os_unfair_lock_unlock(v48 + 4);
  swift_endAccess();
  v49 = v61;
  sub_1E48C12D0(v16, v61, &qword_1ECF80120, &qword_1E49A0DF8);
  if ((*(v43 + 48))(v49, 1, v41) == 1)
  {
    __break(1u);
  }

  else
  {

    sub_1E48C1338(v16, &qword_1ECF80120, &qword_1E49A0DF8);
    (*(v43 + 32))(v54, v49, v41);
    sub_1E48C1338(v52, &qword_1ECF815D0, &unk_1E499A370);
    v50 = v53;
    swift_beginAccess();
    os_unfair_lock_unlock(v50 + 4);
    swift_endAccess();
  }
}

uint64_t sub_1E4917F70(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = result;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a5) & 0xF;
  }

  else
  {
    v6 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (!a2)
  {
    v10 = 0;
    v9 = 0;
    v7 = 0;
LABEL_41:
    v14 = 1;
    goto LABEL_42;
  }

  v7 = a3;
  if (!a3)
  {
    v10 = 0;
    v9 = 0;
    goto LABEL_41;
  }

  if (a3 < 0)
  {
    __break(1u);
    return result;
  }

  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = a5 & 0xFFFFFFFFFFFFFFLL;
  v12 = (a5 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v13 = a3 - 1;
  v14 = 1;
  do
  {
    if ((v14 & 1) == 0)
    {
      v14 = 1;
      LOWORD(v17) = v9;
      v9 = 0;
      goto LABEL_33;
    }

    if (v10 >= v6)
    {
      goto LABEL_43;
    }

    if ((a5 & 0x1000000000000000) != 0)
    {
      v29 = a5;
      v32 = a2;
      v23 = a4;
      v24 = sub_1E49985AC();
      a4 = v23;
      v17 = v24;
      v19 = v25;
      a5 = v29;
      a2 = v32;
    }

    else
    {
      if ((a5 & 0x2000000000000000) == 0)
      {
        v15 = v12;
        if ((a4 & 0x1000000000000000) == 0)
        {
          v30 = a5;
          v33 = a2;
          v26 = a4;
          v15 = sub_1E49985DC();
          a5 = v30;
          a2 = v33;
          a4 = v26;
        }

        v16 = (v15 + v10);
        v17 = *(v15 + v10);
        if ((*(v15 + v10) & 0x80000000) == 0)
        {
          goto LABEL_15;
        }

        v20 = (__clz(v17 ^ 0xFF) - 24);
        if (v20 <= 2)
        {
          if (v20 == 1)
          {
LABEL_15:
            v18 = 1;
          }

          else
          {
            LOWORD(v17) = v16[1] & 0x3F | ((v17 & 0x1F) << 6);
            v18 = 2;
          }

LABEL_16:
          v10 += v18;
LABEL_32:
          v14 = 1;
          goto LABEL_33;
        }

        if (v20 == 3)
        {
          LOWORD(v17) = (v17 << 12) | ((v16[1] & 0x3F) << 6) | v16[2] & 0x3F;
          v18 = 3;
          goto LABEL_16;
        }

LABEL_30:
        v17 = ((v17 & 0xF) << 18) | ((v16[1] & 0x3F) << 12) | ((v16[2] & 0x3F) << 6) | v16[3] & 0x3F;
        v19 = 4;
        goto LABEL_31;
      }

      v34[0] = a4;
      v34[1] = v11;
      v16 = v34 + v10;
      v17 = *(v34 + v10);
      if ((*(v34 + v10) & 0x80000000) == 0)
      {
        goto LABEL_19;
      }

      v21 = (__clz(v17 ^ 0xFF) - 24);
      if (v21 > 2)
      {
        if (v21 == 3)
        {
          v17 = ((v17 & 0xF) << 12) | ((v16[1] & 0x3F) << 6) | v16[2] & 0x3F;
          v19 = 3;
          goto LABEL_31;
        }

        goto LABEL_30;
      }

      if (v21 == 1)
      {
LABEL_19:
        v19 = 1;
        goto LABEL_31;
      }

      v17 = v16[1] & 0x3F | ((v17 & 0x1F) << 6);
      v19 = 2;
    }

LABEL_31:
    v10 += v19;
    if (!HIWORD(v17))
    {
      goto LABEL_32;
    }

    v28 = a5;
    v31 = a2;
    v27 = a4;
    v9 = sub_1E49989DC();
    v22 = sub_1E49989DC();
    a5 = v28;
    a2 = v31;
    a4 = v27;
    LOWORD(v17) = v22;
    v14 = 0;
LABEL_33:
    *(a2 + 2 * v8) = v17;
    if (v13 == v8)
    {
      goto LABEL_42;
    }

    ++v8;
  }

  while (!__OFADD__(v8, 1));
  __break(1u);
LABEL_43:
  v14 = 1;
  v7 = v8;
LABEL_42:
  *v5 = a4;
  *(v5 + 8) = a5;
  *(v5 + 16) = v10;
  *(v5 + 24) = v6;
  *(v5 + 32) = v9;
  *(v5 + 34) = v14;
  return v7;
}

void *sub_1E4918244(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FD38, &qword_1E49A0280);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = (v5 - 32 + ((v5 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  return result;
}

double sub_1E49182C0(void *a1)
{
  v2 = OBJC_IVAR____TtC11ClockPoster15RollingTimeView_compositingFilter;
  v3 = *(v1 + OBJC_IVAR____TtC11ClockPoster15RollingTimeView_compositingFilter);
  *(v1 + OBJC_IVAR____TtC11ClockPoster15RollingTimeView_compositingFilter) = a1;
  v4 = a1;

  v5 = *(*(v1 + OBJC_IVAR____TtC11ClockPoster15RollingTimeView_timeLabel) + 16);
  if (v5 >> 62)
  {
    goto LABEL_30;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1E49986EC())
  {

    if (i)
    {
      v7 = 0;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x1E691BDE0](v7, v5);
        }

        else
        {
          if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_27;
          }

          v8 = *(v5 + 8 * v7 + 32);
        }

        v9 = v8;
        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        v11 = [v8 layer];
        [v11 setCompositingFilter_];

        ++v7;
        if (v10 == i)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

LABEL_12:

    v5 = *(*(v1 + OBJC_IVAR____TtC11ClockPoster15RollingTimeView_offScreenTimeLabel) + 16);
    v12 = v5 >> 62 ? sub_1E49986EC() : *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v12)
    {
      break;
    }

    v13 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x1E691BDE0](v13, v5);
      }

      else
      {
        if (v13 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_29;
        }

        v14 = *(v5 + 8 * v13 + 32);
      }

      v15 = v14;
      v16 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      v17 = [v14 layer];
      [v17 setCompositingFilter_];

      ++v13;
      if (v16 == v12)
      {
        goto LABEL_23;
      }
    }

LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    ;
  }

LABEL_23:

  return result;
}

uint64_t sub_1E49184D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimeString(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E491853C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF815D0, &unk_1E499A370);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_1E49185F0()
{
  v1 = *(type metadata accessor for TimeString(0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_1E4917260(v2, v3);
}

unint64_t sub_1E4918654()
{
  result = qword_1ECF80100;
  if (!qword_1ECF80100)
  {
    sub_1E4997DBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80100);
  }

  return result;
}

unint64_t sub_1E49186AC()
{
  result = qword_1ECF80108;
  if (!qword_1ECF80108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECF814B0, &qword_1E49A5AE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80108);
  }

  return result;
}

void sub_1E4918710(uint64_t a1)
{
  sub_1E4996F3C();
  *(v1 + OBJC_IVAR____TtC11ClockPoster15RollingTimeView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR____TtC11ClockPoster15RollingTimeView_overlap) = 0;
  *(v1 + OBJC_IVAR____TtC11ClockPoster15RollingTimeView_blurColon) = 0;
  *(v1 + OBJC_IVAR____TtC11ClockPoster15RollingTimeView_compositingFilter) = 0;
  *(v1 + OBJC_IVAR____TtC11ClockPoster15RollingTimeView_transformModifier) = 0;
  v2 = OBJC_IVAR____TtC11ClockPoster15RollingTimeView_timeLabel;
  type metadata accessor for RollingTimeLabel(0);
  v3 = swift_allocObject();
  v4 = sub_1E48DB2FC();
  *(v3 + 3) = 0;
  *(v3 + 4) = 0;
  *(v3 + 2) = v4;
  v5 = OBJC_IVAR____TtC11ClockPoster16RollingTimeLabel_timeString;
  v6 = type metadata accessor for TimeString(0);
  v7 = *(*(v6 - 8) + 56);
  v7(&v3[v5], 1, 1, v6);
  *(v1 + v2) = v3;
  v8 = OBJC_IVAR____TtC11ClockPoster15RollingTimeView_offScreenTimeLabel;
  v9 = swift_allocObject();
  v10 = sub_1E48DB2FC();
  *(v9 + 3) = 0;
  *(v9 + 4) = 0;
  *(v9 + 2) = v10;
  v7(&v9[OBJC_IVAR____TtC11ClockPoster16RollingTimeLabel_timeString], 1, 1, v6);
  *(v1 + v8) = v9;
  v11 = OBJC_IVAR____TtC11ClockPoster15RollingTimeView_maxScale;
  v12 = objc_opt_self();
  v13 = [v12 mainScreen];
  [v13 scale];
  v15 = v14;

  v16 = [v12 mainScreen];
  [v16 nativeScale];
  v18 = v17;

  *(v1 + v11) = v15 / v18;
  *(v1 + OBJC_IVAR____TtC11ClockPoster15RollingTimeView____lazy_storage___redModeColonLayers) = 0;
  *(v1 + OBJC_IVAR____TtC11ClockPoster15RollingTimeView____lazy_storage___colonBlurViews) = 0;
  *(v1 + OBJC_IVAR____TtC11ClockPoster15RollingTimeView_isAnimating) = 0;
  *(v1 + OBJC_IVAR____TtC11ClockPoster15RollingTimeView_timeTextListenerTask) = 0;
  sub_1E49986DC();
  __break(1u);
}

double sub_1E4918954()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
  v1 = sub_1E499809C();
  [v0 setValue:v1 forKey:*MEMORY[0x1E6979C28]];

  v2 = sub_1E499701C();
  v3 = *MEMORY[0x1E6979990];
  [v0 setValue:v2 forKey:*MEMORY[0x1E6979990]];

  v4 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
  v5 = sub_1E499826C();
  [v4 setValue:v5 forKey:*MEMORY[0x1E6979BA8]];

  v6 = sub_1E499810C();
  [v4 setValue:v6 forKey:*MEMORY[0x1E6979B78]];

  v7 = sub_1E499810C();
  [v4 setValue:v7 forKey:*MEMORY[0x1E6979AC8]];

  v8 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
  v9 = sub_1E499701C();
  [v8 setValue:v9 forKey:v3];

  v10 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
  v16[0] = xmmword_1E49A0C60;
  v16[1] = xmmword_1E49A0C70;
  v16[2] = xmmword_1E49A0C80;
  v16[3] = xmmword_1E49A0C90;
  v16[4] = xmmword_1E499A170;
  v11 = [objc_opt_self() valueWithCAColorMatrix_];
  [v10 setValue:v11 forKey:*MEMORY[0x1E6979AC0]];

  v12 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
  GenericRGB = CGColorCreateGenericRGB(1.0, 0.0, 0.0, 0.08);
  [v12 setValue:GenericRGB forKey:*MEMORY[0x1E6979AA0]];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F108, &unk_1E49A18C0);
  v14 = swift_allocObject();
  *&result = 5;
  *(v14 + 16) = xmmword_1E49A0CA0;
  *(v14 + 32) = v0;
  *(v14 + 40) = v4;
  *(v14 + 48) = v8;
  *(v14 + 56) = v10;
  *(v14 + 64) = v12;
  return result;
}

uint64_t sub_1E4918C54(uint64_t a1)
{
  v4 = *(sub_1E4996F4C() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E48BFD3C;

  return sub_1E4914CCC(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1E4918D74(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E4918DDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80120, &qword_1E49A0DF8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E4918E4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF815D0, &unk_1E499A370);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

int8x8_t sub_1E4918ECC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1E48C8304(a1, v10);
  v4 = sub_1E491FF10(0x1000001uLL);
  v5 = sub_1E491FF10(0x1000001uLL);
  sub_1E48C8360(a1);
  v6 = v10[5];
  *(a2 + 64) = v10[4];
  *(a2 + 80) = v6;
  *(a2 + 96) = v11;
  v7 = v10[1];
  *a2 = v10[0];
  *(a2 + 16) = v7;
  v8 = v10[3];
  *(a2 + 32) = v10[2];
  *(a2 + 48) = v8;
  *(a2 + 112) = 0;
  result = vbsl_s8(vceq_s32(__PAIR64__(v5, v4), 0x100000001000000), 0x469C4000461C4000, vadd_f32(vmul_f32(vmul_f32(vcvt_f32_u32(__PAIR64__(v5, v4)), vdup_n_s32(0x33800000u)), 0x461C3C00461C4000), 0x461C440000000000));
  *(a2 + 100) = result;
  return result;
}

uint64_t sub_1E4918FA8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF801C8, &qword_1E49A1190);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E491FF9C();
  sub_1E49989BC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v14[7] = 0;
  sub_1E48EB55C();
  sub_1E499878C();
  v22[4] = v19;
  v22[5] = v20;
  v23 = v21;
  v22[0] = v15;
  v22[1] = v16;
  v22[2] = v17;
  v22[3] = v18;
  LOBYTE(v15) = 3;
  sub_1E499876C();
  v26 = v9;
  LOBYTE(v15) = 1;
  sub_1E499877C();
  v24 = v10;
  LOBYTE(v15) = 2;
  sub_1E499877C();
  v12 = v11;
  (*(v6 + 8))(v8, v5);
  v25 = v12;
  sub_1E48C9F14(v22, a2);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return sub_1E48C9F70(v22);
}

uint64_t sub_1E4919254(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF801D8, &qword_1E49A1198);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E491FF9C();
  sub_1E49989CC();
  v8[15] = 0;
  sub_1E48EB5B0();
  sub_1E49987DC();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_1E49987CC();
  v8[13] = 2;
  sub_1E49987CC();
  v8[12] = 3;
  sub_1E49987BC();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1E4919430()
{
  sub_1E499892C();
  sub_1E4997F5C();

  return sub_1E499896C();
}

double sub_1E4919508(uint64_t a1)
{
  sub_1E4997F5C();

  return result;
}

uint64_t sub_1E49195CC(uint64_t a1)
{
  sub_1E499892C();
  sub_1E4997F5C();

  return sub_1E499896C();
}

unint64_t sub_1E49196A0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1E4920700(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1E49196D0(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1802465132;
  v4 = 0x756F72676B636162;
  v5 = 0xEE0064656553646ELL;
  if (*v1 != 2)
  {
    v4 = 0x6D69546573696F6ELL;
    v5 = 0xE900000000000065;
  }

  if (*v1)
  {
    v3 = 0x756F726765726F66;
    v2 = 0xEE0064656553646ELL;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = v5;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_1E4919764()
{
  v1 = 1802465132;
  v2 = 0x756F72676B636162;
  if (*v0 != 2)
  {
    v2 = 0x6D69546573696F6ELL;
  }

  if (*v0)
  {
    v1 = 0x756F726765726F66;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1E49197F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E4920700(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E4919828(uint64_t a1)
{
  v2 = sub_1E491FF9C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4919864(uint64_t a1)
{
  v2 = sub_1E491FF9C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1E49198DC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1 == 7957363 && a2 == 0xE300000000000000;
  if (v5 || (sub_1E499884C() & 1) != 0)
  {

    v7 = 0;
  }

  else
  {
    if (a1 == 0x6D75727463657073 && a2 == 0xE800000000000000)
    {
    }

    else
    {
      v9 = sub_1E499884C();

      if ((v9 & 1) == 0)
      {
        v7 = 2;
        goto LABEL_7;
      }
    }

    v7 = 1;
  }

LABEL_7:
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = v7;
  result = 0.0;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  return result;
}

void sub_1E49199C4(uint64_t a1@<X0>, uint64_t a2@<X8>, float a3@<S0>)
{
  *(a2 + 80) = a3;
  sub_1E4919F78(v70);
  sub_1E4920CEC(v70, &v67);
  if (v68 == 1)
  {
    v12 = *(a1 + 112);
    v13 = *(a1 + 100);
    *(a2 + 64) = &type metadata for ColorProvider;
    v14 = sub_1E4920D78();
    *(a2 + 72) = v14;
    v15 = swift_allocObject();
    *(a2 + 40) = v15;
    *(v15 + 40) = &type metadata for NoiseColorChannelGenerator;
    *(v15 + 48) = &off_1F5E841B8;
    v16 = swift_allocObject();
    *(v15 + 16) = v16;
    v16[5] = &type metadata for PerlinNoiseGenerator;
    v17 = sub_1E4920D24();
    v16[6] = v17;
    v18 = swift_allocObject();
    v16[2] = v18;
    *(v18 + 16) = v12;
    *(v18 + 24) = v13;
    *(v18 + 28) = xmmword_1E49A0E30;
    *(v15 + 80) = &type metadata for FixedColorChannel;
    *(v15 + 88) = &off_1F5E841A8;
    *(v15 + 56) = 1051260355;
    v19 = sub_1E4920638(0.66, 1.0);
    *(v15 + 120) = &type metadata for ColorCurveChannelProvider;
    *(v15 + 128) = &off_1F5E84198;
    *(v15 + 96) = v20;
    *(v15 + 104) = v19;
    v21 = *(a1 + 104);
    *(a2 + 24) = &type metadata for ColorProvider;
    *(a2 + 32) = v14;
    v22 = swift_allocObject();
    *a2 = v22;
    *(v22 + 40) = &type metadata for NoiseColorChannelGenerator;
    *(v22 + 48) = &off_1F5E841B8;
    v23 = swift_allocObject();
    *(v22 + 16) = v23;
    v23[5] = &type metadata for PerlinNoiseGenerator;
    v23[6] = v17;
    v24 = swift_allocObject();
    v23[2] = v24;
    *(v24 + 16) = v12;
    *(v24 + 24) = v21;
    *(v24 + 28) = xmmword_1E49A0E30;
    *(v22 + 80) = &type metadata for FixedColorChannel;
    *(v22 + 88) = &off_1F5E841A8;
    *(v22 + 56) = 1059648963;
    v25 = sub_1E4920638(0.0, 0.66);
    *(v22 + 120) = &type metadata for ColorCurveChannelProvider;
    *(v22 + 128) = &off_1F5E84198;
    *(v22 + 96) = v26;
    *(v22 + 104) = v25;
    goto LABEL_5;
  }

  if (!v68)
  {
    v5 = sub_1E4937638();
    v6 = LODWORD(v5);
    v8 = v7;
    *(a2 + 64) = &type metadata for ColorCurve;
    v9 = sub_1E4920DFC();
    *(a2 + 72) = v9;
    *(a2 + 40) = v6;
    *(a2 + 48) = v8;
    v10 = sub_1E493799C();
    *(a2 + 24) = &type metadata for ColorCurve;
    *(a2 + 32) = v9;
    *a2 = LODWORD(v10);
    *(a2 + 8) = v11;
LABEL_5:
    sub_1E48C9F70(a1);
    sub_1E4920DCC(v70);
    return;
  }

  sub_1E48B7448(&v67, v64);
  sub_1E48B7448(&v69, v61);
  v27 = *(a1 + 112);
  v28 = *(a1 + 100);
  v59 = &type metadata for NoiseColorChannelGenerator;
  v60 = &off_1F5E841B8;
  v29 = swift_allocObject();
  *&v58 = v29;
  v30 = v65;
  v31 = v66;
  __swift_project_boxed_opaque_existential_1(v64, v65);
  v32 = sub_1E491E9D0(v30, v31);
  if ((v32 + -0.2) < 0.0)
  {
    v32 = v32 + 1.0;
  }

  v33 = v32 + -0.2;
  v34 = v32 + 0.2;
  if ((v32 + -0.2) > (v32 + 0.2))
  {
    __break(1u);
  }

  else
  {
    v29[5] = &type metadata for PerlinNoiseGenerator;
    v35 = sub_1E4920D24();
    v29[6] = v35;
    v36 = swift_allocObject();
    v29[2] = v36;
    *(v36 + 16) = v27;
    *(v36 + 24) = v28;
    *(v36 + 28) = v33;
    *(v36 + 32) = v34;
    *(v36 + 36) = 0x3F8000003F333333;
    v37 = v65;
    v38 = v66;
    __swift_project_boxed_opaque_existential_1(v64, v65);
    v39 = sub_1E491A110(v37, v38);
    *(a2 + 64) = &type metadata for ColorProvider;
    v40 = sub_1E4920D78();
    *(a2 + 72) = v40;
    v41 = swift_allocObject();
    *(a2 + 40) = v41;
    *(v41 + 80) = &type metadata for FixedColorChannel;
    *(v41 + 88) = &off_1F5E841A8;
    *(v41 + 56) = v39;
    v42 = sub_1E4920638(0.66, 1.0);
    *(v41 + 120) = &type metadata for ColorCurveChannelProvider;
    *(v41 + 128) = &off_1F5E84198;
    *(v41 + 96) = v43;
    *(v41 + 104) = v42;
    sub_1E48B7448(&v58, v41 + 16);
    v44 = *(a1 + 104);
    v59 = &type metadata for NoiseColorChannelGenerator;
    v60 = &off_1F5E841B8;
    v45 = swift_allocObject();
    *&v58 = v45;
    v46 = v62;
    v47 = v63;
    __swift_project_boxed_opaque_existential_1(v61, v62);
    v48 = sub_1E491E9D0(v46, v47);
    if ((v48 + -0.2) < 0.0)
    {
      v48 = v48 + 1.0;
    }

    v49 = v48 + -0.2;
    v50 = v48 + 0.2;
    if ((v48 + -0.2) <= (v48 + 0.2))
    {
      v45[5] = &type metadata for PerlinNoiseGenerator;
      v45[6] = v35;
      v51 = swift_allocObject();
      v45[2] = v51;
      *(v51 + 16) = v27;
      *(v51 + 24) = v44;
      *(v51 + 28) = v49;
      *(v51 + 32) = v50;
      *(v51 + 36) = 0x3F8000003F333333;
      v52 = v62;
      v53 = v63;
      __swift_project_boxed_opaque_existential_1(v61, v62);
      v54 = sub_1E491A110(v52, v53);
      *(a2 + 24) = &type metadata for ColorProvider;
      *(a2 + 32) = v40;
      v55 = swift_allocObject();
      *a2 = v55;
      *(v55 + 80) = &type metadata for FixedColorChannel;
      *(v55 + 88) = &off_1F5E841A8;
      *(v55 + 56) = v54;
      v56 = sub_1E4920638(0.0, 0.66);
      *(v55 + 120) = &type metadata for ColorCurveChannelProvider;
      *(v55 + 128) = &off_1F5E84198;
      *(v55 + 96) = v57;
      *(v55 + 104) = v56;
      sub_1E48C9F70(a1);
      sub_1E4920DCC(v70);
      sub_1E48B7448(&v58, v55 + 16);
      __swift_destroy_boxed_opaque_existential_0Tm(v61);
      __swift_destroy_boxed_opaque_existential_0Tm(v64);
      return;
    }
  }

  __break(1u);
}

void sub_1E4919F78(_OWORD *a1@<X8>)
{
  memset(v18, 0, sizeof(v18));
  v19 = 3;
  v2 = _s11ClockPoster0A8FaceLookO2eeoiySbAC_ACtFZ_0();
  sub_1E48C8360(v18);
  if (v2)
  {
    v3 = 0xEE00656C62617A69;
    v4 = 0x6D6F747375636E75;
  }

  else
  {
    v4 = sub_1E4921538();
    if (!v3)
    {
      v5 = sub_1E4921408();
      v6 = sub_1E49348B8(v5);
      v8 = v7;

      v4 = v6;
      v3 = v8;
    }
  }

  sub_1E49198DC(v4, v3, &v20);
  if (*(&v21 + 1) != 2)
  {
    v13 = v23;
    v27 = v22;
    v28 = v23;
    v14 = v24;
    v29 = v24;
    v16 = v20;
    v15 = v21;
    v25 = v20;
    v26 = v21;
    a1[2] = v22;
    a1[3] = v13;
    a1[4] = v14;
    *a1 = v16;
    a1[1] = v15;
    return;
  }

  sub_1E48C1338(&v20, &qword_1ECF80228, &qword_1E49A1358);
  v9 = *(sub_1E4921408() + 16);

  v10 = sub_1E4921408();
  v11 = *(v10 + 16);
  if (v9 == 1)
  {
    if (!v11)
    {
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v12 = 32;
  }

  else
  {
    if (v11 < 2)
    {
LABEL_17:
      __break(1u);
      return;
    }

    v12 = 72;
  }

  sub_1E48CD210(v10 + v12, v18);

  v17 = sub_1E4921408();
  if (!*(v17 + 16))
  {
    __break(1u);
    goto LABEL_16;
  }

  sub_1E48CD210(v17 + 32, a1);

  sub_1E48B7448(v18, a1 + 40);
}

float sub_1E491A110(uint64_t a1, uint64_t a2)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = 0.0;
  v2 = (*(a2 + 40))(a1);
  [v2 getHue:0 saturation:v4 brightness:0 alpha:0];

  return v4[0];
}

uint64_t sub_1E491A1A4(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for RollingClockViewModel(0);
  swift_allocObject();
  *(v1 + 16) = sub_1E48B81A4();
  *(v1 + 24) = xmmword_1E49A0E40;
  v4 = OBJC_IVAR____TtC11ClockPoster14SolarViewModel__solarPosition;
  v5 = type metadata accessor for CurrentLocationSolarPosition(0);
  (*(*(v5 - 8) + 56))(v2 + v4, 1, 1, v5);
  v6 = v2 + OBJC_IVAR____TtC11ClockPoster14SolarViewModel__colorPalette;
  *v6 = 0u;
  *(v6 + 16) = 0u;
  *(v6 + 32) = 0u;
  *(v6 + 48) = 0u;
  *(v6 + 64) = 0u;
  *(v6 + 80) = 0;
  *(v2 + OBJC_IVAR____TtC11ClockPoster14SolarViewModel__isDebuggingHUDVisible) = 0;
  *(v2 + OBJC_IVAR____TtC11ClockPoster14SolarViewModel__isDisplayStyleRedMode) = 0;
  v7 = v2 + OBJC_IVAR____TtC11ClockPoster14SolarViewModel__initialContext;
  *v7 = 0u;
  *(v7 + 16) = 0u;
  *(v7 + 32) = 0u;
  *(v7 + 48) = 0u;
  *(v7 + 64) = 0u;
  *(v7 + 80) = 0u;
  *(v7 + 96) = 255;
  *(v7 + 104) = 0;
  *(v7 + 112) = 0;
  *(v2 + OBJC_IVAR____TtC11ClockPoster14SolarViewModel__shouldRenderRedMode) = 0;
  v8 = [objc_opt_self() mainScreen];
  [v8 bounds];
  v10 = v9;
  v12 = v11;

  sub_1E48CE338(v20, v10, v12);
  v13 = (v2 + OBJC_IVAR____TtC11ClockPoster14SolarViewModel__solarOrbit);
  v14 = v20[3];
  v15 = v20[4];
  v16 = v20[1];
  v13[2] = v20[2];
  v13[3] = v14;
  v17 = v20[5];
  v13[4] = v15;
  v13[5] = v17;
  *v13 = v20[0];
  v13[1] = v16;
  *(v2 + OBJC_IVAR____TtC11ClockPoster14SolarViewModel__percentRedMode) = 0;
  *(v2 + OBJC_IVAR____TtC11ClockPoster14SolarViewModel__percentRedModeCurve) = 0;
  sub_1E4996FFC();
  sub_1E48C9F14(a1, v19);
  sub_1E491AEE0(v19);
  sub_1E491ACE0(v2, a1);
  sub_1E48C9F70(a1);
  return v2;
}

double sub_1E491A394(uint64_t a1)
{
  if (*(v1 + 16) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1E491E98C(&qword_1ECF7F2F0, &unk_1E49A10B0);
    sub_1E4996FBC();
  }

  return result;
}

void sub_1E491A4B4(double a1)
{
  if (*(v1 + 24) == a1)
  {
    *(v1 + 24) = a1;

    sub_1E491B770();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1E491E98C(&qword_1ECF7F2F0, &unk_1E49A10B0);
    sub_1E4996FBC();
  }
}

void sub_1E491A5E0(double a1)
{
  if (*(v1 + 32) == a1)
  {
    *(v1 + 32) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1E491E98C(&qword_1ECF7F2F0, &unk_1E49A10B0);
    sub_1E4996FBC();
  }
}

uint64_t sub_1E491A6E4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF816F0, &qword_1E49A5090);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC11ClockPoster14SolarViewModel__solarPosition;
  swift_beginAccess();
  sub_1E48C12D0(v1 + v6, v5, &unk_1ECF816F0, &qword_1E49A5090);
  v7 = sub_1E492074C(v5, a1);
  sub_1E48C1338(v5, &unk_1ECF816F0, &qword_1E49A5090);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_1E491E98C(&qword_1ECF7F2F0, &unk_1E49A10B0);
    sub_1E4996FBC();
  }

  else
  {
    sub_1E48C12D0(a1, v5, &unk_1ECF816F0, &qword_1E49A5090);
    swift_beginAccess();
    sub_1E48EC048(v5, v1 + v6, &unk_1ECF816F0, &qword_1E49A5090);
    swift_endAccess();
    sub_1E491BBBC();
    sub_1E48C1338(v5, &unk_1ECF816F0, &qword_1E49A5090);
  }

  return sub_1E48C1338(a1, &unk_1ECF816F0, &qword_1E49A5090);
}

void sub_1E491A8EC(char a1)
{
  v2 = a1 & 1;
  v3 = OBJC_IVAR____TtC11ClockPoster14SolarViewModel__isDebuggingHUDVisible;
  swift_beginAccess();
  if (*(v1 + v3) == v2)
  {
    *(v1 + v3) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1E491E98C(&qword_1ECF7F2F0, &unk_1E49A10B0);
    sub_1E4996FBC();
  }
}

void sub_1E491AA54(char a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + *a2) == (a1 & 1))
  {
    *(v4 + *a2) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1E491E98C(&qword_1ECF7F2F0, &unk_1E49A10B0);
    sub_1E4996FBC();
  }
}

void sub_1E491ABBC(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void), float a5)
{
  if (*(v5 + *a1) == a5)
  {
    *(v5 + *a1) = a5;

    a4();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1E491E98C(&qword_1ECF7F2F0, &unk_1E49A10B0);
    sub_1E4996FBC();
  }
}

double sub_1E491ACE0(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EC60, &unk_1E49A0DC0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13[-v4 - 8];
  sub_1E48C9F14(a2, v13);
  sub_1E491AEE0(v13);
  v6 = sub_1E499816C();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  swift_weakInit();
  sub_1E499814C();

  v8 = sub_1E499813C();
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E85E0];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = v7;

  sub_1E498DD1C(0, 0, v5, &unk_1E49A1340, v9);

  return result;
}

uint64_t sub_1E491AE50()
{
  swift_getKeyPath();
  sub_1E491E98C(&qword_1ECF7F2F0, &unk_1E49A10B0);
  sub_1E4996FCC();
}

uint64_t sub_1E491AEE0(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF816F0, &qword_1E49A5090);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (&v38 - v5);
  v7 = type metadata accessor for CurrentLocationSolarPosition(0);
  v43 = *(v7 - 8);
  v44 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v45 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E48C9F14(a1, v56);
  sub_1E491D6E4(v56);
  sub_1E48C9F14(a1, v56);
  swift_getKeyPath();
  v9 = OBJC_IVAR____TtC11ClockPoster14SolarViewModel___observationRegistrar;
  v49[0] = v1;
  v10 = sub_1E491E98C(&qword_1ECF7F2F0, &unk_1E49A10B0);
  sub_1E4996FCC();

  sub_1E49199C4(v56, v49, *(v1 + OBJC_IVAR____TtC11ClockPoster14SolarViewModel__percentRedMode));
  swift_getKeyPath();
  v46 = v1;
  v47 = v49;
  v56[0] = v1;
  sub_1E4996FBC();

  sub_1E48C1338(v49, &qword_1ECF801E0, &qword_1E49A5370);
  v11 = *(a1 + 112);
  if (*(v1 + 24) == v11)
  {
    *(v1 + 24) = v11;
    sub_1E491B770();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v38 - 2) = v1;
    *(&v38 - 1) = v11;
    v56[0] = v1;
    sub_1E4996FBC();
  }

  swift_getKeyPath();
  v56[0] = v1;
  sub_1E4996FCC();

  v13 = OBJC_IVAR____TtC11ClockPoster14SolarViewModel__solarPosition;
  swift_beginAccess();
  sub_1E48C12D0(v2 + v13, v6, &unk_1ECF816F0, &qword_1E49A5090);
  if ((*(v43 + 48))(v6, 1, v44) == 1)
  {
    sub_1E48C9F70(a1);
    v14 = &unk_1ECF816F0;
    v15 = &qword_1E49A5090;
    v16 = v6;
    return sub_1E48C1338(v16, v14, v15);
  }

  v40 = a1;
  v41 = 0;
  sub_1E4920BBC(v6, v45, type metadata accessor for CurrentLocationSolarPosition);
  swift_getKeyPath();
  v56[0] = v2;
  sub_1E4996FCC();

  v17 = OBJC_IVAR____TtC11ClockPoster14SolarViewModel__colorPalette;
  swift_beginAccess();
  v42 = v17;
  result = sub_1E48C12D0(v2 + v17, v49, &qword_1ECF801E0, &qword_1E49A5370);
  v43 = v9;
  v44 = v10;
  if (v50)
  {
    v20 = v53;
    v19 = v54;
    __swift_project_boxed_opaque_existential_1(v52, v53);
    v21 = *(v19 + 32);
    v60 = v20;
    v61 = v19;
    __swift_allocate_boxed_opaque_existential_0(v59);
    v22 = type metadata accessor for SolarPosition(0);
    v23 = v45;
    v21(v45, v22, v20, v19);
    v24 = v50;
    v25 = v51;
    __swift_project_boxed_opaque_existential_1(v49, v50);
    v26 = *(v25 + 32);
    v57 = v24;
    v58 = v25;
    __swift_allocate_boxed_opaque_existential_0(v56);
    v39 = v22;
    v26(v23, v22, v24, v25);
    v62 = v55;
    sub_1E4920094(v49);
    v27 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v27);
    *(&v38 - 2) = v2;
    *(&v38 - 1) = v56;
    v49[0] = v2;
    v28 = v41;
    sub_1E4996FBC();
    v41 = v28;

    sub_1E48C1338(v56, &qword_1ECF801E0, &qword_1E49A5370);
    swift_getKeyPath();
    v56[0] = v2;
    sub_1E4996FCC();

    result = sub_1E48C12D0(v2 + v42, v49, &qword_1ECF801E0, &qword_1E49A5370);
    if (v50)
    {
      v29 = v45;
      v48[0] = *(v45 + *(v39 + 24));
      v30 = v53;
      v31 = v54;
      __swift_project_boxed_opaque_existential_1(v52, v53);
      v32 = *(v31 + 32);
      v60 = v30;
      v61 = v31;
      __swift_allocate_boxed_opaque_existential_0(v59);
      v33 = MEMORY[0x1E69E6448];
      v32(v48, MEMORY[0x1E69E6448], v30, v31);
      v34 = v50;
      v35 = v51;
      __swift_project_boxed_opaque_existential_1(v49, v50);
      v36 = *(v35 + 32);
      v57 = v34;
      v58 = v35;
      __swift_allocate_boxed_opaque_existential_0(v56);
      v36(v48, v33, v34, v35);
      v62 = v55;
      sub_1E4920094(v49);
      v37 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v37);
      *(&v38 - 2) = v2;
      *(&v38 - 1) = v56;
      v49[0] = v2;
      sub_1E4996FBC();

      sub_1E48C9F70(v40);
      sub_1E4920C8C(v29, type metadata accessor for CurrentLocationSolarPosition);
      v14 = &qword_1ECF801E0;
      v15 = &qword_1E49A5370;
      v16 = v56;
      return sub_1E48C1338(v16, v14, v15);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1E491B630@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  swift_getKeyPath();
  v8[0] = v1;
  sub_1E491E98C(&qword_1ECF7F2F0, &unk_1E49A10B0);
  sub_1E4996FCC();

  v4 = OBJC_IVAR____TtC11ClockPoster14SolarViewModel__initialContext;
  swift_beginAccess();
  result = sub_1E48C12D0(v2 + v4, v8, &qword_1ECF7F338, &qword_1E499B8D0);
  if (v9 == 0xFF)
  {
    __break(1u);
  }

  else
  {
    swift_getKeyPath();
    sub_1E4996FCC();

    v6 = *(v2 + 24);
    v7 = v10;
    sub_1E48C8304(v8, a1);
    *(a1 + 112) = v6;
    *(a1 + 100) = v7;
    return sub_1E48C9F70(v8);
  }

  return result;
}

uint64_t sub_1E491B770()
{
  v1 = v0;
  swift_getKeyPath();
  v20[0] = v0;
  sub_1E491E98C(&qword_1ECF7F2F0, &unk_1E49A10B0);
  sub_1E4996FCC();

  v2 = OBJC_IVAR____TtC11ClockPoster14SolarViewModel__colorPalette;
  swift_beginAccess();
  result = sub_1E48C12D0(v1 + v2, v13, &qword_1ECF801E0, &qword_1E49A5370);
  if (v14)
  {
    swift_getKeyPath();
    v20[0] = v1;
    sub_1E4996FCC();

    v12 = *(v1 + 24);
    v4 = v17;
    v5 = v18;
    __swift_project_boxed_opaque_existential_1(v16, v17);
    v6 = *(v5 + 32);
    v21[3] = v4;
    v21[4] = v5;
    __swift_allocate_boxed_opaque_existential_0(v21);
    v7 = MEMORY[0x1E69E63B0];
    v6(&v12, MEMORY[0x1E69E63B0], v4, v5);
    v8 = v14;
    v9 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    v10 = *(v9 + 32);
    v20[3] = v8;
    v20[4] = v9;
    __swift_allocate_boxed_opaque_existential_0(v20);
    v10(&v12, v7, v8, v9);
    v22 = v19;
    sub_1E4920094(v13);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v13[0] = v1;
    sub_1E4996FBC();

    return sub_1E48C1338(v20, &qword_1ECF801E0, &qword_1E49A5370);
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_1E491B9E0()
{
  swift_getKeyPath();
  sub_1E491E98C(&qword_1ECF7F2F0, &unk_1E49A10B0);
  sub_1E4996FCC();

  return *(v0 + 24);
}

double sub_1E491BA6C@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1E491E98C(&qword_1ECF7F2F0, &unk_1E49A10B0);
  sub_1E4996FCC();

  result = *(v3 + 24);
  *a2 = result;
  return result;
}

double sub_1E491BB28()
{
  swift_getKeyPath();
  sub_1E491E98C(&qword_1ECF7F2F0, &unk_1E49A10B0);
  sub_1E4996FCC();

  return *(v0 + 32);
}

uint64_t sub_1E491BBBC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF816F0, &qword_1E49A5090);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = (v33 - v3);
  v5 = type metadata accessor for CurrentLocationSolarPosition(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v9 = OBJC_IVAR____TtC11ClockPoster14SolarViewModel___observationRegistrar;
  v45[0] = v1;
  v10 = sub_1E491E98C(&qword_1ECF7F2F0, &unk_1E49A10B0);
  v36 = v9;
  sub_1E4996FCC();

  v11 = OBJC_IVAR____TtC11ClockPoster14SolarViewModel__solarPosition;
  swift_beginAccess();
  sub_1E48C12D0(v1 + v11, v4, &unk_1ECF816F0, &qword_1E49A5090);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    v12 = &unk_1ECF816F0;
    v13 = &qword_1E49A5090;
    v14 = v4;
    return sub_1E48C1338(v14, v12, v13);
  }

  sub_1E4920BBC(v4, v8, type metadata accessor for CurrentLocationSolarPosition);
  swift_getKeyPath();
  v45[0] = v1;
  v35 = v10;
  sub_1E4996FCC();

  v15 = OBJC_IVAR____TtC11ClockPoster14SolarViewModel__colorPalette;
  swift_beginAccess();
  v34 = v15;
  result = sub_1E48C12D0(v1 + v15, v38, &qword_1ECF801E0, &qword_1E49A5370);
  if (v39)
  {
    v17 = v42;
    v18 = v43;
    __swift_project_boxed_opaque_existential_1(v41, v42);
    v19 = *(v18 + 32);
    v49 = v17;
    v50 = v18;
    __swift_allocate_boxed_opaque_existential_0(v48);
    v20 = type metadata accessor for SolarPosition(0);
    v19(v8, v20, v17, v18);
    v21 = v39;
    v22 = v40;
    __swift_project_boxed_opaque_existential_1(v38, v39);
    v23 = *(v22 + 32);
    v46 = v21;
    v47 = v22;
    __swift_allocate_boxed_opaque_existential_0(v45);
    v23(v8, v20, v21, v22);
    v51 = v44;
    sub_1E4920094(v38);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v33[-2] = v1;
    v33[-1] = v45;
    v38[0] = v1;
    sub_1E4996FBC();
    v33[1] = 0;

    sub_1E48C1338(v45, &qword_1ECF801E0, &qword_1E49A5370);
    swift_getKeyPath();
    v45[0] = v1;
    sub_1E4996FCC();

    result = sub_1E48C12D0(v1 + v34, v38, &qword_1ECF801E0, &qword_1E49A5370);
    if (v39)
    {
      v37[0] = *&v8[*(v20 + 24)];
      v25 = v42;
      v26 = v43;
      __swift_project_boxed_opaque_existential_1(v41, v42);
      v27 = *(v26 + 32);
      v49 = v25;
      v50 = v26;
      __swift_allocate_boxed_opaque_existential_0(v48);
      v28 = MEMORY[0x1E69E6448];
      v27(v37, MEMORY[0x1E69E6448], v25, v26);
      v29 = v39;
      v30 = v40;
      __swift_project_boxed_opaque_existential_1(v38, v39);
      v31 = *(v30 + 32);
      v46 = v29;
      v47 = v30;
      __swift_allocate_boxed_opaque_existential_0(v45);
      v31(v37, v28, v29, v30);
      v51 = v44;
      sub_1E4920094(v38);
      v32 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v32);
      v33[-2] = v1;
      v33[-1] = v45;
      v38[0] = v1;
      sub_1E4996FBC();

      sub_1E4920C8C(v8, type metadata accessor for CurrentLocationSolarPosition);
      v12 = &qword_1ECF801E0;
      v13 = &qword_1E49A5370;
      v14 = v45;
      return sub_1E48C1338(v14, v12, v13);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1E491C1C4@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1E491E98C(&qword_1ECF7F2F0, &unk_1E49A10B0);
  sub_1E4996FCC();

  v3 = OBJC_IVAR____TtC11ClockPoster14SolarViewModel__solarPosition;
  swift_beginAccess();
  return sub_1E48C12D0(v5 + v3, a1, &unk_1ECF816F0, &qword_1E49A5090);
}

uint64_t sub_1E491C288(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF816F0, &qword_1E49A5090);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  sub_1E48C12D0(a2, &v9 - v5, &unk_1ECF816F0, &qword_1E49A5090);
  v7 = OBJC_IVAR____TtC11ClockPoster14SolarViewModel__solarPosition;
  swift_beginAccess();
  sub_1E48EC048(v6, a1 + v7, &unk_1ECF816F0, &qword_1E49A5090);
  swift_endAccess();
  sub_1E491BBBC();
  return sub_1E48C1338(v6, &unk_1ECF816F0, &qword_1E49A5090);
}

uint64_t sub_1E491C384@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1E491E98C(&qword_1ECF7F2F0, &unk_1E49A10B0);
  sub_1E4996FCC();

  v3 = OBJC_IVAR____TtC11ClockPoster14SolarViewModel__colorPalette;
  swift_beginAccess();
  return sub_1E48C12D0(v5 + v3, a1, &qword_1ECF801E0, &qword_1E49A5370);
}

uint64_t sub_1E491C448@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1E491E98C(&qword_1ECF7F2F0, &unk_1E49A10B0);
  sub_1E4996FCC();

  v4 = OBJC_IVAR____TtC11ClockPoster14SolarViewModel__colorPalette;
  swift_beginAccess();
  return sub_1E48C12D0(v3 + v4, a2, &qword_1ECF801E0, &qword_1E49A5370);
}

uint64_t sub_1E491C50C(uint64_t a1, uint64_t *a2)
{
  sub_1E48C12D0(a1, v3, &qword_1ECF801E0, &qword_1E49A5370);
  swift_getKeyPath();
  sub_1E491E98C(&qword_1ECF7F2F0, &unk_1E49A10B0);
  sub_1E4996FBC();

  return sub_1E48C1338(v3, &qword_1ECF801E0, &qword_1E49A5370);
}

uint64_t sub_1E491C600(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC11ClockPoster14SolarViewModel__colorPalette;
  swift_beginAccess();
  sub_1E48EC048(a2, a1 + v4, &qword_1ECF801E0, &qword_1E49A5370);
  return swift_endAccess();
}

uint64_t sub_1E491C6DC()
{
  swift_getKeyPath();
  v3 = v0;
  sub_1E491E98C(&qword_1ECF7F2F0, &unk_1E49A10B0);
  sub_1E4996FCC();

  v1 = OBJC_IVAR____TtC11ClockPoster14SolarViewModel__isDebuggingHUDVisible;
  swift_beginAccess();
  return *(v3 + v1);
}

void sub_1E491C784(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1E491E98C(&qword_1ECF7F2F0, &unk_1E49A10B0);
  sub_1E4996FCC();

  v4 = OBJC_IVAR____TtC11ClockPoster14SolarViewModel__isDebuggingHUDVisible;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t (*sub_1E491C85C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC11ClockPoster14SolarViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1E491E98C(&qword_1ECF7F2F0, &unk_1E49A10B0);
  sub_1E4996FCC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1E4996FEC();

  v4[7] = sub_1E491C67C(v4);
  return sub_1E491C980;
}

void sub_1E491C980(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  sub_1E4996FDC();

  free(v1);
}

double sub_1E491CA14()
{
  v1 = v0;
  v21 = type metadata accessor for SolarPosition(0);
  MEMORY[0x1EEE9AC00](v21);
  v20 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for CurrentLocationSolarPosition(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF816F0, &qword_1E49A5090);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v19 - v8;
  swift_getKeyPath();
  v22 = v0;
  sub_1E491E98C(&qword_1ECF7F2F0, &unk_1E49A10B0);
  sub_1E4996FCC();

  v10 = *(v0 + OBJC_IVAR____TtC11ClockPoster14SolarViewModel__solarOrbit + 8);
  swift_getKeyPath();
  v22 = v1;
  v11 = v10;
  sub_1E4996FCC();

  v12 = OBJC_IVAR____TtC11ClockPoster14SolarViewModel__solarPosition;
  swift_beginAccess();
  sub_1E48C12D0(v1 + v12, v9, &unk_1ECF816F0, &qword_1E49A5090);
  if ((*(v4 + 48))(v9, 1, v3))
  {
    sub_1E48C1338(v9, &unk_1ECF816F0, &qword_1E49A5090);
    v13 = 3.1416;
  }

  else
  {
    sub_1E4920C24(v9, v6, type metadata accessor for CurrentLocationSolarPosition);
    sub_1E48C1338(v9, &unk_1ECF816F0, &qword_1E49A5090);
    v14 = v20;
    sub_1E4920C24(v6, v20, type metadata accessor for SolarPosition);
    sub_1E4920C8C(v6, type metadata accessor for CurrentLocationSolarPosition);
    v15 = *(v14 + *(v21 + 24));
    sub_1E4920C8C(v14, type metadata accessor for SolarPosition);
    v13 = ((v15 + 0.5) * 3.1416) + ((v15 + 0.5) * 3.1416);
  }

  __sincosf_stret(v13);
  UIPointRoundToScale();
  v17 = v16;

  return v17;
}

void sub_1E491CE08(char a1, char a2)
{
  if (*(v2 + OBJC_IVAR____TtC11ClockPoster14SolarViewModel__isDisplayStyleRedMode) == (a1 & 1))
  {
    *(v2 + OBJC_IVAR____TtC11ClockPoster14SolarViewModel__isDisplayStyleRedMode) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1E491E98C(&qword_1ECF7F2F0, &unk_1E49A10B0);
    sub_1E4996FBC();
  }

  if (*(v2 + OBJC_IVAR____TtC11ClockPoster14SolarViewModel__shouldRenderRedMode) == (a1 & 1))
  {
    *(v2 + OBJC_IVAR____TtC11ClockPoster14SolarViewModel__shouldRenderRedMode) = a1 & 1;
    if (a2)
    {
      return;
    }
  }

  else
  {
    v6 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v6);
    sub_1E491E98C(&qword_1ECF7F2F0, &unk_1E49A10B0);
    sub_1E4996FBC();

    if (a2)
    {
      return;
    }
  }

  if (a1)
  {
    v7 = 1.0;
  }

  else
  {
    v7 = 0.0;
  }

  if (*(v2 + OBJC_IVAR____TtC11ClockPoster14SolarViewModel__percentRedMode) == v7)
  {
    *(v2 + OBJC_IVAR____TtC11ClockPoster14SolarViewModel__percentRedMode) = v7;
    sub_1E491DCC0();
  }

  else
  {
    v8 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v8);
    sub_1E491E98C(&qword_1ECF7F2F0, &unk_1E49A10B0);
    sub_1E4996FBC();
  }
}

void sub_1E491D0DC()
{
  v0 = *MEMORY[0x1E6979EB8];
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 functionWithName_];

  qword_1ECF81960 = v3;
}

void sub_1E491D148(double a1)
{
  swift_getKeyPath();
  sub_1E491E98C(&qword_1ECF7F2F0, &unk_1E49A10B0);
  sub_1E4996FCC();

  v3 = OBJC_IVAR____TtC11ClockPoster14SolarViewModel__shouldRenderRedMode;
  if ((*(v1 + OBJC_IVAR____TtC11ClockPoster14SolarViewModel__shouldRenderRedMode) & 1) == 0 && (swift_getKeyPath(), sub_1E4996FCC(), , *(v1 + OBJC_IVAR____TtC11ClockPoster14SolarViewModel__percentRedMode) != 0.0) || (swift_getKeyPath(), sub_1E4996FCC(), , *(v1 + v3) == 1) && (swift_getKeyPath(), sub_1E4996FCC(), , *(v1 + OBJC_IVAR____TtC11ClockPoster14SolarViewModel__percentRedMode) != 1.0))
  {
    v4 = 0.0;
    v5 = 0.0;
    if (a1 < 1.2)
    {
      v5 = a1 / 1.2;
    }

    swift_getKeyPath();
    sub_1E4996FCC();

    if (!*(v1 + v3))
    {
      v5 = -v5;
    }

    swift_getKeyPath();
    sub_1E4996FCC();

    v6 = *(v1 + OBJC_IVAR____TtC11ClockPoster14SolarViewModel__percentRedMode);
    v7 = fminf(v5 + v6, 1.0);
    if (v7 >= 0.0)
    {
      v4 = v7;
    }

    if (v6 == v4)
    {
      *(v1 + OBJC_IVAR____TtC11ClockPoster14SolarViewModel__percentRedMode) = v4;
      sub_1E491DCC0();
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1E4996FBC();
    }
  }

  swift_getKeyPath();
  sub_1E4996FCC();

  v9 = a1 * 0.012 * *(v1 + 32);
  if (1.79769313e308 - v9 <= a1)
  {
    v11 = 0.0;
    if (*(v1 + 24) != 0.0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    swift_getKeyPath();
    sub_1E4996FCC();

    v10 = *(v1 + 24);
    v11 = v9 + v10;
    if (v10 != v9 + v10)
    {
LABEL_16:
      v12 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v12);
      sub_1E4996FBC();

      return;
    }
  }

  *(v1 + 24) = v11;
  sub_1E491B770();
}

uint64_t sub_1E491D55C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1E491E98C(&qword_1ECF7F2F0, &unk_1E49A10B0);
  sub_1E4996FCC();

  v3 = OBJC_IVAR____TtC11ClockPoster14SolarViewModel__initialContext;
  swift_beginAccess();
  return sub_1E48C12D0(v5 + v3, a1, &qword_1ECF7F338, &qword_1E499B8D0);
}

uint64_t sub_1E491D620@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1E491E98C(&qword_1ECF7F2F0, &unk_1E49A10B0);
  sub_1E4996FCC();

  v4 = OBJC_IVAR____TtC11ClockPoster14SolarViewModel__initialContext;
  swift_beginAccess();
  return sub_1E48C12D0(v3 + v4, a2, &qword_1ECF7F338, &qword_1E499B8D0);
}

uint64_t sub_1E491D6E4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11ClockPoster14SolarViewModel__initialContext;
  swift_beginAccess();
  sub_1E48C12D0(v1 + v3, v7, &qword_1ECF7F338, &qword_1E499B8D0);
  v4 = sub_1E49201FC(v7, a1);
  sub_1E48C1338(v7, &qword_1ECF7F338, &qword_1E499B8D0);
  if (v4)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v7[0] = v1;
    sub_1E491E98C(&qword_1ECF7F2F0, &unk_1E49A10B0);
    sub_1E4996FBC();
  }

  else
  {
    sub_1E48C12D0(a1, v7, &qword_1ECF7F338, &qword_1E499B8D0);
    swift_beginAccess();
    sub_1E49203B8(v7, v1 + v3);
    swift_endAccess();
  }

  return sub_1E48C1338(a1, &qword_1ECF7F338, &qword_1E499B8D0);
}

uint64_t sub_1E491D88C(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC11ClockPoster14SolarViewModel__initialContext;
  swift_beginAccess();
  sub_1E48EC048(a2, a1 + v4, &qword_1ECF7F338, &qword_1E499B8D0);
  return swift_endAccess();
}

uint64_t sub_1E491D91C(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1E491E98C(&qword_1ECF7F2F0, &unk_1E49A10B0);
  sub_1E4996FCC();

  return *(v2 + *a2);
}

void sub_1E491D9A8(uint64_t *a1@<X0>, void *a3@<X4>, _BYTE *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1E491E98C(&qword_1ECF7F2F0, &unk_1E49A10B0);
  sub_1E4996FCC();

  *a4 = *(v6 + *a3);
}

double sub_1E491DA48@<D0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  *&v11 = v1;
  sub_1E491E98C(&qword_1ECF7F2F0, &unk_1E49A10B0);
  sub_1E4996FCC();

  v3 = *(v1 + OBJC_IVAR____TtC11ClockPoster14SolarViewModel__solarOrbit + 48);
  v13 = *(v1 + OBJC_IVAR____TtC11ClockPoster14SolarViewModel__solarOrbit + 32);
  v14 = v3;
  v4 = *(v1 + OBJC_IVAR____TtC11ClockPoster14SolarViewModel__solarOrbit + 80);
  v15 = *(v1 + OBJC_IVAR____TtC11ClockPoster14SolarViewModel__solarOrbit + 64);
  v16 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC11ClockPoster14SolarViewModel__solarOrbit + 16);
  v11 = *(v1 + OBJC_IVAR____TtC11ClockPoster14SolarViewModel__solarOrbit);
  v12 = v5;
  sub_1E4920120(&v11, &v10);
  v6 = v14;
  a1[2] = v13;
  a1[3] = v6;
  v7 = v16;
  a1[4] = v15;
  a1[5] = v7;
  result = *&v11;
  v9 = v12;
  *a1 = v11;
  a1[1] = v9;
  return result;
}

uint64_t sub_1E491DB1C@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  *&v15[0] = v3;
  sub_1E491E98C(&qword_1ECF7F2F0, &unk_1E49A10B0);
  sub_1E4996FCC();

  v4 = (v3 + OBJC_IVAR____TtC11ClockPoster14SolarViewModel__solarOrbit);
  v5 = *(v3 + OBJC_IVAR____TtC11ClockPoster14SolarViewModel__solarOrbit + 16);
  v15[0] = *(v3 + OBJC_IVAR____TtC11ClockPoster14SolarViewModel__solarOrbit);
  v15[1] = v5;
  v6 = *(v3 + OBJC_IVAR____TtC11ClockPoster14SolarViewModel__solarOrbit + 80);
  v8 = *(v3 + OBJC_IVAR____TtC11ClockPoster14SolarViewModel__solarOrbit + 32);
  v7 = *(v3 + OBJC_IVAR____TtC11ClockPoster14SolarViewModel__solarOrbit + 48);
  v15[4] = *(v3 + OBJC_IVAR____TtC11ClockPoster14SolarViewModel__solarOrbit + 64);
  v15[5] = v6;
  v15[2] = v8;
  v15[3] = v7;
  v9 = *(v3 + OBJC_IVAR____TtC11ClockPoster14SolarViewModel__solarOrbit + 16);
  *a2 = *(v3 + OBJC_IVAR____TtC11ClockPoster14SolarViewModel__solarOrbit);
  a2[1] = v9;
  v10 = v4[2];
  v11 = v4[3];
  v12 = v4[5];
  a2[4] = v4[4];
  a2[5] = v12;
  a2[2] = v10;
  a2[3] = v11;
  return sub_1E4920120(v15, &v14);
}

double sub_1E491DBF0(_OWORD *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1E491E98C(&qword_1ECF7F2F0, &unk_1E49A10B0);
  sub_1E4996FBC();

  return result;
}

void sub_1E491DCC0()
{
  if (qword_1ECF7EB38 != -1)
  {
    swift_once();
  }

  v1 = qword_1ECF81960;
  swift_getKeyPath();
  sub_1E491E98C(&qword_1ECF7F2F0, &unk_1E49A10B0);
  sub_1E4996FCC();

  LODWORD(v2) = *(v0 + OBJC_IVAR____TtC11ClockPoster14SolarViewModel__percentRedMode);
  [v1 _solveForInput_];
  if (*(v0 + OBJC_IVAR____TtC11ClockPoster14SolarViewModel__percentRedModeCurve) == v3)
  {
    *(v0 + OBJC_IVAR____TtC11ClockPoster14SolarViewModel__percentRedModeCurve) = v3;
    sub_1E491DE70();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1E4996FBC();
  }
}

uint64_t sub_1E491DE70()
{
  v1 = v0;
  swift_getKeyPath();
  v8[0] = v0;
  sub_1E491E98C(&qword_1ECF7F2F0, &unk_1E49A10B0);
  sub_1E4996FCC();

  v2 = OBJC_IVAR____TtC11ClockPoster14SolarViewModel__colorPalette;
  swift_beginAccess();
  result = sub_1E48C12D0(v1 + v2, v6, &qword_1ECF801E0, &qword_1E49A5370);
  if (v6[3])
  {
    swift_getKeyPath();
    v8[0] = v1;
    sub_1E4996FCC();

    v4 = *(v1 + OBJC_IVAR____TtC11ClockPoster14SolarViewModel__percentRedModeCurve);
    sub_1E48CD210(&v7, v9);
    sub_1E48CD210(v6, v8);
    v9[10] = v4;
    sub_1E4920094(v6);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v6[0] = v1;
    sub_1E4996FBC();

    return sub_1E48C1338(v8, &qword_1ECF801E0, &qword_1E49A5370);
  }

  else
  {
    __break(1u);
  }

  return result;
}

float sub_1E491E06C(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1E491E98C(&qword_1ECF7F2F0, &unk_1E49A10B0);
  sub_1E4996FCC();

  return *(v2 + *a2);
}

float sub_1E491E0F8@<S0>(uint64_t *a1@<X0>, void *a3@<X4>, float *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1E491E98C(&qword_1ECF7F2F0, &unk_1E49A10B0);
  sub_1E4996FCC();

  result = *(v6 + *a3);
  *a4 = result;
  return result;
}

uint64_t sub_1E491E198()
{

  sub_1E48C1338(v0 + OBJC_IVAR____TtC11ClockPoster14SolarViewModel__solarPosition, &unk_1ECF816F0, &qword_1E49A5090);
  sub_1E48C1338(v0 + OBJC_IVAR____TtC11ClockPoster14SolarViewModel__colorPalette, &qword_1ECF801E0, &qword_1E49A5370);
  sub_1E48C1338(v0 + OBJC_IVAR____TtC11ClockPoster14SolarViewModel__initialContext, &qword_1ECF7F338, &qword_1E499B8D0);

  v1 = OBJC_IVAR____TtC11ClockPoster14SolarViewModel___observationRegistrar;
  v2 = sub_1E499700C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SolarViewModel(uint64_t a1)
{
  result = qword_1ECF80188;
  if (!qword_1ECF80188)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E491E304(uint64_t a1)
{
  sub_1E491E428(319);
  if (v1 <= 0x3F)
  {
    sub_1E499700C();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1E491E428(uint64_t a1)
{
  if (!qword_1ECF80198)
  {
    type metadata accessor for CurrentLocationSolarPosition(255);
    v1 = sub_1E49984BC();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECF80198);
    }
  }
}

__n128 __swift_memcpy84_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1E491E4A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 84))
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

uint64_t sub_1E491E4EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 84) = 1;
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

    *(result + 84) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_1E491E580(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 120))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 96);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1E491E5C8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 120) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 120) = 0;
    }

    if (a2)
    {
      *(result + 96) = -a2;
    }
  }

  return result;
}

unint64_t sub_1E491E638(uint64_t a1)
{
  result = sub_1E491E660();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E491E660()
{
  result = qword_1ECF801A0;
  if (!qword_1ECF801A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF801A0);
  }

  return result;
}

unint64_t sub_1E491E6B4(void *a1)
{
  a1[1] = sub_1E491E6F4();
  a1[2] = sub_1E48F0294();
  a1[3] = sub_1E491E748();
  result = sub_1E491E79C();
  a1[4] = result;
  return result;
}

unint64_t sub_1E491E6F4()
{
  result = qword_1ECF801A8;
  if (!qword_1ECF801A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF801A8);
  }

  return result;
}

unint64_t sub_1E491E748()
{
  result = qword_1ECF801B0;
  if (!qword_1ECF801B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF801B0);
  }

  return result;
}

unint64_t sub_1E491E79C()
{
  result = qword_1ECF801B8;
  if (!qword_1ECF801B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF801B8);
  }

  return result;
}

uint64_t sub_1E491E7F0()
{
  swift_getKeyPath();
  sub_1E491E98C(&qword_1ECF7F2F0, &unk_1E49A10B0);
  sub_1E4996FCC();

  return *(v0 + OBJC_IVAR____TtC11ClockPoster14SolarViewModel__isDisplayStyleRedMode);
}

void (*sub_1E491E890(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_1E491C85C(v2);
  return sub_1E48C2910;
}

uint64_t sub_1E491E904(uint64_t a1, __n128 a2)
{
  result = sub_1E491E98C(&qword_1ECF7F2F0, &unk_1E49A10B0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1E491E948(uint64_t a1, __n128 a2)
{
  result = sub_1E491E98C(&qword_1ECF801C0, &unk_1E49A10EC);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1E491E98C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SolarViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

float sub_1E491E9D0(uint64_t a1, uint64_t a2)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = 0.0;
  v2 = (*(a2 + 40))(a1);
  [v2 getHue:v4 saturation:0 brightness:0 alpha:0];

  return v4[0];
}

uint64_t sub_1E491EA64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF813E0, &unk_1E49A57F0);
  v4[13] = v5;
  v4[14] = *(v5 - 8);
  v4[15] = swift_task_alloc();
  type metadata accessor for LocationAccuracy(0);
  v4[16] = swift_task_alloc();
  v4[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF81420, &qword_1E49A5A80);
  v4[18] = swift_task_alloc();
  v6 = type metadata accessor for CurrentLocation(0);
  v4[19] = v6;
  v4[20] = *(v6 - 8);
  v4[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F8A0, &unk_1E499D7B0);
  v4[22] = swift_task_alloc();
  v4[23] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF81410, &qword_1E499E3E0);
  v4[24] = swift_task_alloc();
  v7 = type metadata accessor for CurrentLocationSolarPosition(0);
  v4[25] = v7;
  v4[26] = *(v7 - 8);
  v4[27] = swift_task_alloc();
  v4[28] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF801F0, &qword_1E49A5CE0);
  v4[29] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF816F0, &qword_1E49A5090);
  v4[30] = v8;
  v4[31] = *(v8 - 8);
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FB70, &unk_1E499E400);
  v4[37] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FB78, &qword_1E499E410);
  v4[38] = v9;
  v4[39] = *(v9 - 8);
  v4[40] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF801F8, &qword_1E49A1348);
  v4[41] = v10;
  v4[42] = *(v10 - 8);
  v4[43] = swift_task_alloc();
  v4[44] = sub_1E499814C();
  v4[45] = sub_1E499813C();
  v12 = sub_1E499811C();
  v4[46] = v12;
  v4[47] = v11;

  return MEMORY[0x1EEE6DFA0](sub_1E491EED8, v12, v11);
}

uint64_t sub_1E491EED8()
{
  if (qword_1ECF7EAE8 != -1)
  {
    swift_once();
  }

  v1 = qword_1ECF81918;
  *(v0 + 384) = qword_1ECF81918;

  return MEMORY[0x1EEE6DFA0](sub_1E491EF70, v1, 0);
}

uint64_t sub_1E491EF70()
{
  sub_1E48F4FA4(v0[40]);
  v1 = v0[46];
  v2 = v0[47];

  return MEMORY[0x1EEE6DFA0](sub_1E491EFD8, v1, v2);
}

uint64_t sub_1E491EFD8()
{
  v2 = v0[39];
  v1 = v0[40];
  v3 = v0[38];
  sub_1E499819C();
  (*(v2 + 8))(v1, v3);
  swift_beginAccess();
  v0[49] = 0;
  v4 = sub_1E499813C();
  v0[50] = v4;
  v5 = swift_task_alloc();
  v0[51] = v5;
  *v5 = v0;
  v5[1] = sub_1E491F0E4;
  v6 = v0[41];
  v7 = v0[37];
  v8 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D9C8](v7, v4, v8, v6);
}

uint64_t sub_1E491F0E4()
{
  v1 = *v0;

  v2 = *(v1 + 376);
  v3 = *(v1 + 368);

  return MEMORY[0x1EEE6DFA0](sub_1E491F228, v3, v2);
}

uint64_t sub_1E491F228()
{
  v1 = v0[37];
  if ((*(v0[31] + 48))(v1, 1, v0[30]) == 1)
  {
    (*(v0[42] + 8))(v0[43], v0[41]);

LABEL_8:

    v24 = v0[1];

    return v24();
  }

  sub_1E4920B4C(v1, v0[36]);
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    v21 = v0[42];
    v20 = v0[43];
    v22 = v0[41];
    v23 = v0[36];

    sub_1E48C1338(v23, &unk_1ECF816F0, &qword_1E49A5090);
    (*(v21 + 8))(v20, v22);
    goto LABEL_8;
  }

  v3 = Strong;
  v4 = v0[35];
  v5 = v0[34];
  v7 = v0[28];
  v6 = v0[29];
  v8 = v0[25];
  v9 = v0[26];
  sub_1E48C12D0(v0[36], v4, &unk_1ECF816F0, &qword_1E49A5090);
  v103 = v3;
  v10 = OBJC_IVAR____TtC11ClockPoster14SolarViewModel__solarPosition;
  swift_beginAccess();
  v102 = v10;
  v11 = v103 + v10;
  v12 = v103;
  sub_1E48C12D0(v11, v5, &unk_1ECF816F0, &qword_1E49A5090);
  v13 = *(v7 + 48);
  sub_1E48C12D0(v5, v6, &unk_1ECF816F0, &qword_1E49A5090);
  sub_1E48C12D0(v4, v6 + v13, &unk_1ECF816F0, &qword_1E49A5090);
  v14 = *(v9 + 48);
  if (v14(v6, 1, v8) != 1)
  {
    v26 = v0[25];
    sub_1E48C12D0(v0[29], v0[33], &unk_1ECF816F0, &qword_1E49A5090);
    if (v14(v6 + v13, 1, v26) == 1)
    {
      v27 = v0[33];
      sub_1E48C1338(v0[34], &unk_1ECF816F0, &qword_1E49A5090);
      sub_1E4920C8C(v27, type metadata accessor for CurrentLocationSolarPosition);
      goto LABEL_13;
    }

    sub_1E4920BBC(v6 + v13, v0[27], type metadata accessor for CurrentLocationSolarPosition);
    if ((sub_1E4996D2C() & 1) == 0 || (v31 = v0[33], v32 = v0[27], v33 = type metadata accessor for SolarEvent(0), *(v31 + *(v33 + 20)) != *(v32 + *(v33 + 20))) || *(v31 + *(v33 + 24)) != *(v32 + *(v33 + 24)) || (v34 = v33, v35 = type metadata accessor for SolarCycle(0), v36 = v35[5], v37 = v31 + v36, v38 = v32 + v36, (sub_1E4996D2C() & 1) == 0) || *(v37 + *(v34 + 20)) != *(v38 + *(v34 + 20)) || *(v37 + *(v34 + 24)) != *(v38 + *(v34 + 24)) || (v39 = v35[6], v40 = v0[33] + v39, v41 = v0[27] + v39, (sub_1E4996D2C() & 1) == 0) || *(v40 + *(v34 + 20)) != *(v41 + *(v34 + 20)) || *(v40 + *(v34 + 24)) != *(v41 + *(v34 + 24)) || (v42 = v35[8], v43 = v0[33] + v42, v44 = v0[27] + v42, (sub_1E4996D2C() & 1) == 0) || *(v43 + *(v34 + 20)) != *(v44 + *(v34 + 20)) || *(v43 + *(v34 + 24)) != *(v44 + *(v34 + 24)) || (v45 = v0[33], v46 = v0[27], v47 = type metadata accessor for SolarPosition(0), *(v45 + *(v47 + 20)) != *(v46 + *(v47 + 20))) || *(v45 + *(v47 + 24)) != *(v46 + *(v47 + 24)))
    {
      v57 = v0[34];
      sub_1E4920C8C(v0[27], type metadata accessor for CurrentLocationSolarPosition);
      sub_1E48C1338(v57, &unk_1ECF816F0, &qword_1E49A5090);
LABEL_32:
      v58 = v0[29];
      sub_1E4920C8C(v0[33], type metadata accessor for CurrentLocationSolarPosition);
      v29 = &unk_1ECF816F0;
      v30 = &qword_1E49A5090;
      v28 = v58;
      goto LABEL_33;
    }

    v48 = v0[24];
    v49 = v0[19];
    v50 = v0[20];
    v51 = *(v0[25] + 20);
    v52 = *(v0[23] + 48);
    sub_1E48C12D0(v45 + v51, v48, &qword_1ECF7F8A0, &unk_1E499D7B0);
    sub_1E48C12D0(v46 + v51, v48 + v52, &qword_1ECF7F8A0, &unk_1E499D7B0);
    v53 = *(v50 + 48);
    if (v53(v48, 1, v49) == 1)
    {
      v54 = v0[34];
      v55 = v0[19];
      sub_1E4920C8C(v0[27], type metadata accessor for CurrentLocationSolarPosition);
      sub_1E48C1338(v54, &unk_1ECF816F0, &qword_1E49A5090);
      if (v53(v48 + v52, 1, v55) == 1)
      {
LABEL_30:
        v56 = v0[33];
        sub_1E48C1338(v0[24], &qword_1ECF7F8A0, &unk_1E499D7B0);
        sub_1E4920C8C(v56, type metadata accessor for CurrentLocationSolarPosition);
        v12 = v103;
        goto LABEL_6;
      }

      goto LABEL_39;
    }

    v67 = v0[19];
    sub_1E48C12D0(v0[24], v0[22], &qword_1ECF7F8A0, &unk_1E499D7B0);
    if (v53(v48 + v52, 1, v67) == 1)
    {
      v68 = v0[34];
      v69 = v0[22];
      sub_1E4920C8C(v0[27], type metadata accessor for CurrentLocationSolarPosition);
      sub_1E48C1338(v68, &unk_1ECF816F0, &qword_1E49A5090);
      sub_1E4920C8C(v69, type metadata accessor for CurrentLocation);
LABEL_39:
      v70 = v0[24];
      v71 = &unk_1ECF81410;
      v72 = &qword_1E499E3E0;
LABEL_50:
      sub_1E48C1338(v70, v71, v72);
      v12 = v103;
      goto LABEL_32;
    }

    sub_1E4920BBC(v48 + v52, v0[21], type metadata accessor for CurrentLocation);
    sub_1E48D9CFC(0, &qword_1ECF80A10, 0x1E69E58C0);
    if (sub_1E499848C())
    {
      v73 = v0[21];
      v74 = v0[18];
      v75 = v0[13];
      v76 = v0[14];
      v77 = *(v0[19] + 20);
      v78 = *(v0[17] + 48);
      sub_1E4920C24(v0[22] + v77, v74, type metadata accessor for LocationAccuracy);
      sub_1E4920C24(v73 + v77, v74 + v78, type metadata accessor for LocationAccuracy);
      v79 = *(v76 + 48);
      if (v79(v74, 1, v75) == 1)
      {
        v80 = v0[34];
        v81 = v0[13];
        sub_1E4920C8C(v0[27], type metadata accessor for CurrentLocationSolarPosition);
        sub_1E48C1338(v80, &unk_1ECF816F0, &qword_1E49A5090);
        if (v79(v74 + v78, 1, v81) == 1)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v86 = v0[13];
        sub_1E4920C24(v0[18], v0[16], type metadata accessor for LocationAccuracy);
        v87 = v79(v74 + v78, 1, v86);
        v88 = v0[34];
        v89 = v0[27];
        v90 = v0[16];
        if (v87 != 1)
        {
          v96 = v0[14];
          v95 = v0[15];
          v97 = v0[13];
          (*(v96 + 32))(v95, v74 + v78, v97);
          sub_1E48D9CFC(0, &qword_1ECF80200, 0x1E696B058);
          v98 = sub_1E49968AC();
          v99 = *(v96 + 8);
          v99(v95, v97);
          sub_1E4920C8C(v89, type metadata accessor for CurrentLocationSolarPosition);
          sub_1E48C1338(v88, &unk_1ECF816F0, &qword_1E49A5090);
          v99(v90, v97);
          if (v98)
          {
LABEL_52:
            v101 = v0[21];
            v100 = v0[22];
            sub_1E4920C8C(v0[18], type metadata accessor for LocationAccuracy);
            sub_1E4920C8C(v101, type metadata accessor for CurrentLocation);
            sub_1E4920C8C(v100, type metadata accessor for CurrentLocation);
            goto LABEL_30;
          }

          sub_1E4920C8C(v0[18], type metadata accessor for LocationAccuracy);
LABEL_49:
          v93 = v0[24];
          v94 = v0[22];
          sub_1E4920C8C(v0[21], type metadata accessor for CurrentLocation);
          sub_1E4920C8C(v94, type metadata accessor for CurrentLocation);
          v71 = &qword_1ECF7F8A0;
          v72 = &unk_1E499D7B0;
          v70 = v93;
          goto LABEL_50;
        }

        v91 = v0[13];
        v92 = v0[14];
        sub_1E4920C8C(v0[27], type metadata accessor for CurrentLocationSolarPosition);
        sub_1E48C1338(v88, &unk_1ECF816F0, &qword_1E49A5090);
        (*(v92 + 8))(v90, v91);
      }

      v85 = v0[18];
      v83 = &unk_1ECF81420;
      v84 = &qword_1E49A5A80;
    }

    else
    {
      v82 = v0[34];
      sub_1E4920C8C(v0[27], type metadata accessor for CurrentLocationSolarPosition);
      v83 = &unk_1ECF816F0;
      v84 = &qword_1E49A5090;
      v85 = v82;
    }

    sub_1E48C1338(v85, v83, v84);
    goto LABEL_49;
  }

  v15 = v0[25];
  sub_1E48C1338(v0[34], &unk_1ECF816F0, &qword_1E49A5090);
  if (v14(v6 + v13, 1, v15) != 1)
  {
LABEL_13:
    v28 = v0[29];
    v29 = &qword_1ECF801F0;
    v30 = &qword_1E49A5CE0;
LABEL_33:
    sub_1E48C1338(v28, v29, v30);
    v19 = v0[49];
    v59 = v0[35];
    v60 = v0[36];
    swift_getKeyPath();
    v61 = swift_task_alloc();
    *(v61 + 16) = v12;
    *(v61 + 24) = v59;
    v0[11] = v12;
    sub_1E491E98C(&qword_1ECF7F2F0, &unk_1E49A10B0);
    sub_1E4996FBC();

    sub_1E48C1338(v60, &unk_1ECF816F0, &qword_1E49A5090);

    goto LABEL_34;
  }

LABEL_6:
  v16 = v0[35];
  v17 = v0[36];
  v18 = v0[32];
  sub_1E48C1338(v0[29], &unk_1ECF816F0, &qword_1E49A5090);
  sub_1E48C12D0(v16, v18, &unk_1ECF816F0, &qword_1E49A5090);
  swift_beginAccess();
  sub_1E48EC048(v18, v12 + v102, &unk_1ECF816F0, &qword_1E49A5090);
  swift_endAccess();
  sub_1E491BBBC();

  sub_1E48C1338(v18, &unk_1ECF816F0, &qword_1E49A5090);
  sub_1E48C1338(v17, &unk_1ECF816F0, &qword_1E49A5090);
  v19 = v0[49];
LABEL_34:
  sub_1E48C1338(v0[35], &unk_1ECF816F0, &qword_1E49A5090);
  v0[49] = v19;
  v62 = sub_1E499813C();
  v0[50] = v62;
  v63 = swift_task_alloc();
  v0[51] = v63;
  *v63 = v0;
  v63[1] = sub_1E491F0E4;
  v64 = v0[41];
  v65 = v0[37];
  v66 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D9C8](v65, v62, v66, v64);
}

unint64_t sub_1E491FF10(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = result;
    v5 = 0;
    MEMORY[0x1E691CEE0](&v5, 8);
    v3 = v5 * v2;
    if (v3 < v1)
    {
      for (i = -v1 % v1; i > v3; v3 = v5 * v2)
      {
        v5 = 0;
        MEMORY[0x1E691CEE0](&v5, 8);
      }
    }

    return HIDWORD(v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1E491FF9C()
{
  result = qword_1ECF801D0;
  if (!qword_1ECF801D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF801D0);
  }

  return result;
}

void sub_1E492017C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16) + OBJC_IVAR____TtC11ClockPoster14SolarViewModel__solarOrbit;
  v3 = *(v2 + 8);
  v4 = *v1;
  *(v2 + 16) = v1[1];
  v5 = v1[5];
  v7 = v1[2];
  v6 = v1[3];
  *(v2 + 64) = v1[4];
  *(v2 + 80) = v5;
  *(v2 + 32) = v7;
  *(v2 + 48) = v6;
  *v2 = v4;
  sub_1E4920120(v1, &v8);
}

BOOL sub_1E49201FC(uint64_t a1, uint64_t a2)
{
  sub_1E48C12D0(a1, v14, &qword_1ECF7F338, &qword_1E499B8D0);
  sub_1E48C12D0(a2, v15, &qword_1ECF7F338, &qword_1E499B8D0);
  if (v14[96] == 0xFF)
  {
    if (v16 == 0xFF)
    {
      sub_1E48C1338(v14, &qword_1ECF7F338, &qword_1E499B8D0);
      return 0;
    }

    goto LABEL_6;
  }

  sub_1E48C12D0(v14, v10, &qword_1ECF7F338, &qword_1E499B8D0);
  if (v16 == 0xFF)
  {
    sub_1E48C9F70(v10);
LABEL_6:
    sub_1E48C1338(v14, &qword_1ECF801E8, &qword_1E49A1290);
    return 1;
  }

  v7[4] = v15[4];
  v7[5] = v15[5];
  v8 = v16;
  v9 = v17;
  v7[0] = v15[0];
  v7[1] = v15[1];
  v7[2] = v15[2];
  v7[3] = v15[3];
  if ((_s11ClockPoster0A8FaceLookO2eeoiySbAC_ACtFZ_0() & 1) != 0 && v11 == *(&v8 + 1) && v12 == *(&v8 + 2))
  {
    v4 = v13;
    v5 = v9;
    sub_1E48C9F70(v7);
    v6 = v4 != v5;
  }

  else
  {
    sub_1E48C9F70(v7);
    v6 = 1;
  }

  sub_1E48C9F70(v10);
  sub_1E48C1338(v14, &qword_1ECF7F338, &qword_1E499B8D0);
  return v6;
}

uint64_t sub_1E49203B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F338, &qword_1E499B8D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1E4920494()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC11ClockPoster14SolarViewModel__isDebuggingHUDVisible;
  swift_beginAccess();
  *(v1 + v3) = v2;
}

char *sub_1E49204F0(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v13 = MEMORY[0x1E69E7CC0];
    sub_1E4906ED8(0, v2, 0);
    result = v13;
    v4 = (a1 + 40);
    do
    {
      v5 = *(v4 - 2);
      v6 = *v4;
      v7 = 0.25;
      if (*(v4 - 4) > 1u)
      {
        if (*(v4 - 4) == 2)
        {
          v9 = 180.0;
        }

        else
        {
          v7 = 0.5;
          v9 = 270.0;
        }
      }

      else
      {
        v8 = 0.0;
        if (*(v4 - 4))
        {
          goto LABEL_10;
        }

        v7 = 0.75;
        v9 = 360.0;
      }

      v8 = v7;
      v7 = v9 / 360.0;
      if (v8 > (v9 / 360.0))
      {
        __break(1u);
        return result;
      }

LABEL_10:
      v14 = result;
      v11 = *(result + 2);
      v10 = *(result + 3);
      if (v11 >= v10 >> 1)
      {
        sub_1E4906ED8((v10 > 1), v11 + 1, 1);
        result = v14;
      }

      *(result + 2) = v11 + 1;
      v12 = &result[8 * v11];
      *(v12 + 8) = v8 + (v5 * (v7 - v8));
      *(v12 + 9) = v6;
      v4 += 3;
      --v2;
    }

    while (v2);
  }

  return sub_1E48D7398(result);
}

char *sub_1E4920638(float a1, float a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80220, &qword_1E49A1350);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E499B6D0;
  strcpy((inited + 32), "fff?");
  *(inited + 40) = a1;
  *(inited + 44) = 0;
  *(inited + 48) = 1;
  *(inited + 52) = a2;
  *(inited + 56) = 1063675494;
  *(inited + 60) = 2;
  *(inited + 64) = a2;
  *(inited + 68) = 1036831949;
  *(inited + 72) = 3;
  *(inited + 76) = a1;
  v5 = sub_1E49204F0(inited);
  swift_setDeallocating();
  return v5;
}

unint64_t sub_1E4920700(uint64_t a1, uint64_t a2)
{
  v2 = sub_1E499873C();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1E492074C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CurrentLocationSolarPosition(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF816F0, &qword_1E49A5090);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF801F0, &qword_1E49A5CE0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v20 - v12;
  v15 = *(v14 + 56);
  sub_1E48C12D0(a1, &v20 - v12, &unk_1ECF816F0, &qword_1E49A5090);
  sub_1E48C12D0(a2, &v13[v15], &unk_1ECF816F0, &qword_1E49A5090);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_1E48C12D0(v13, v10, &unk_1ECF816F0, &qword_1E49A5090);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      sub_1E4920BBC(&v13[v15], v7, type metadata accessor for CurrentLocationSolarPosition);
      v18 = sub_1E48F778C(v10, v7);
      sub_1E4920C8C(v7, type metadata accessor for CurrentLocationSolarPosition);
      sub_1E4920C8C(v10, type metadata accessor for CurrentLocationSolarPosition);
      sub_1E48C1338(v13, &unk_1ECF816F0, &qword_1E49A5090);
      v17 = !v18;
      return v17 & 1;
    }

    sub_1E4920C8C(v10, type metadata accessor for CurrentLocationSolarPosition);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1E48C1338(v13, &qword_1ECF801F0, &qword_1E49A5CE0);
    v17 = 1;
    return v17 & 1;
  }

  sub_1E48C1338(v13, &unk_1ECF816F0, &qword_1E49A5090);
  v17 = 0;
  return v17 & 1;
}

double sub_1E4920A4C()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 32) = result;
  return result;
}

void sub_1E4920A5C()
{
  *(*(v0 + 16) + 16) = *(v0 + 24);
}

uint64_t sub_1E4920A98(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E48BFD3C;

  return sub_1E491EA64(a1, v4, v5, v6);
}

uint64_t sub_1E4920B4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF816F0, &qword_1E49A5090);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E4920BBC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E4920C24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E4920C8C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1E4920D24()
{
  result = qword_1ECF80208;
  if (!qword_1ECF80208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80208);
  }

  return result;
}

unint64_t sub_1E4920D78()
{
  result = qword_1ECF80210;
  if (!qword_1ECF80210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80210);
  }

  return result;
}

unint64_t sub_1E4920DFC()
{
  result = qword_1ECF80218;
  if (!qword_1ECF80218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80218);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_11ClockPoster14SolarViewModelC5StyleO(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1E4920E84(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 80))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E4920ED8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

double sub_1E4920F40(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    *(a1 + 72) = 0;
    result = 0.0;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 24) = (a2 - 1);
  }

  return result;
}

unint64_t sub_1E4920F9C()
{
  result = qword_1ECF80230;
  if (!qword_1ECF80230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80230);
  }

  return result;
}

unint64_t sub_1E4920FF4()
{
  result = qword_1ECF80238;
  if (!qword_1ECF80238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80238);
  }

  return result;
}

unint64_t sub_1E492104C()
{
  result = qword_1ECF80240;
  if (!qword_1ECF80240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80240);
  }

  return result;
}

uint64_t ClockFaceLook.identifier.getter()
{
  memset(v5, 0, sizeof(v5));
  v6 = 3;
  v0 = _s11ClockPoster0A8FaceLookO2eeoiySbAC_ACtFZ_0();
  sub_1E48C8360(v5);
  if (v0)
  {
    return 0x6D6F747375636E75;
  }

  result = sub_1E4921538();
  if (!v2)
  {
    v3 = sub_1E4921408();
    v4 = sub_1E49348B8(v3);

    return v4;
  }

  return result;
}

uint64_t sub_1E49211F8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1E492125C(a1, WitnessTable);
}

uint64_t sub_1E492125C(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v11 - v7;
  (*(a2 + 40))(a1, a2, v6);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 72))(AssociatedTypeWitness, AssociatedConformanceWitness);
  return (*(v5 + 8))(v8, AssociatedTypeWitness);
}

uint64_t sub_1E49213A4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1E492125C(a1, WitnessTable);
}

uint64_t sub_1E4921408()
{
  sub_1E48C8304(v0, &v5);
  if (v7 > 1u)
  {
    if (v7 == 2)
    {

      sub_1E48B7448(&v5, v4);
      sub_1E48B7448(&v6, v3);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F6C8, &unk_1E49A02E0);
      v1 = swift_allocObject();
      *(v1 + 16) = xmmword_1E499A180;
      sub_1E48CD210(v4, v1 + 32);
      sub_1E48B7448(v3, v1 + 72);
      __swift_destroy_boxed_opaque_existential_0Tm(v4);
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  else if (v7)
  {
    v1 = v5;
  }

  else
  {

    sub_1E48B7448(&v5, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F6C8, &unk_1E49A02E0);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_1E499B670;
    sub_1E48B7448(v4, v1 + 32);
  }

  return v1;
}

uint64_t sub_1E4921538()
{
  sub_1E48C8304(v0, v3);
  if (v5 > 1u)
  {
    if (v5 != 2)
    {
      return 0;
    }

    v1 = v4[5];
    __swift_destroy_boxed_opaque_existential_0Tm(v4);
  }

  else
  {
    if (v5)
    {
      v1 = v3[1];

      return v1;
    }

    v1 = v4[0];
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v3);
  return v1;
}

char *ClockFaceLook.thumbnailView.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F008, &qword_1E499B170);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v37[-1] - v2;
  v4 = sub_1E499708C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v37[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E48C8304(v0, &v43);
  if (v45 <= 1u)
  {
    if (!v45)
    {

      sub_1E48B7448(&v43, v40);
      v8 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
      v9 = v41;
      v10 = v42;
      __swift_project_boxed_opaque_existential_1(v40, v41);
      v11 = *(v10 + 40);
      v12 = v8;
      v13 = v11(v9, v10);
      [v12 setBackgroundColor_];

LABEL_9:
      __swift_destroy_boxed_opaque_existential_0Tm(v40);
      return v12;
    }

    v4 = v43;

    if (*(v4 + 16))
    {
      sub_1E48CD210(v4 + 32, v40);
      v22 = v41;
      v23 = v42;
      __swift_project_boxed_opaque_existential_1(v40, v41);
      v24 = (*(v23 + 40))(v22, v23);
      v17 = [v24 CGColor];

      sub_1E48CD210(v4 + 32, v37);

      v25 = v38;
      v26 = v39;
      __swift_project_boxed_opaque_existential_1(v37, v38);
      v20 = (*(v26 + 40))(v25, v26);
      v21 = [v20 CGColor];
      goto LABEL_8;
    }

    __break(1u);
LABEL_19:
    swift_once();
    goto LABEL_11;
  }

  if (v45 == 2)
  {

    sub_1E48B7448(&v43, v40);
    sub_1E48B7448(&v44, v37);
    v14 = v41;
    v15 = v42;
    __swift_project_boxed_opaque_existential_1(v40, v41);
    v16 = (*(v15 + 40))(v14, v15);
    v17 = [v16 CGColor];

    v18 = v38;
    v19 = v39;
    __swift_project_boxed_opaque_existential_1(v37, v38);
    v20 = (*(v19 + 40))(v18, v19);
    v21 = [v20 CGColor];
LABEL_8:
    v27 = v21;

    v28 = objc_allocWithZone(type metadata accessor for ClackFaceLookThumbnailView());
    v12 = sub_1E4923980(v17, v27);
    __swift_destroy_boxed_opaque_existential_0Tm(v37);
    goto LABEL_9;
  }

  if (qword_1EE2BB450 != -1)
  {
    goto LABEL_19;
  }

LABEL_11:
  v30 = qword_1EE2BB458;
  v31 = OBJC_IVAR____TtC11ClockPoster11ClockLogger_data_private;
  swift_beginAccess();
  sub_1E48C12D0(v30 + v31, v3, &qword_1ECF7F008, &qword_1E499B170);
  v32 = *(v5 + 48);
  if (v32(v3, 1, v4) == 1)
  {
    sub_1E4904BF4(v7);
    if (v32(v3, 1, v4) != 1)
    {
      sub_1E48C1338(v3, &qword_1ECF7F008, &qword_1E499B170);
    }
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
  }

  v33 = sub_1E499706C();
  v34 = sub_1E499830C();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_1E48B0000, v33, v34, "Uncustomizable view. Thumbnail view should never be shown for editing", v35, 2u);
    MEMORY[0x1E691CED0](v35, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  return [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
}

id ClockFaceLook.primaryUIColor.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F008, &qword_1E499B170);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v42 - v6;
  v8 = sub_1E499708C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v42 - v13;
  v15 = sub_1E4921408();
  if (*(v15 + 16))
  {
    sub_1E48CD210(v15 + 32, v51);

    sub_1E48B7448(v51, &aBlock);
    v16 = *(&v45 + 1);
    v17 = v46;
    __swift_project_boxed_opaque_existential_1(&aBlock, *(&v45 + 1));
    v18 = (*(v17 + 40))(v16, v17);
    __swift_destroy_boxed_opaque_existential_0Tm(&aBlock);
  }

  else
  {

    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    aBlock = 0u;
    v45 = 0u;
    v50 = 3;
    v19 = _s11ClockPoster0A8FaceLookO2eeoiySbAC_ACtFZ_0();
    sub_1E48C8360(&aBlock);
    if (v19)
    {
      if (qword_1EE2BB450 != -1)
      {
        swift_once();
      }

      v20 = qword_1EE2BB458;
      v21 = OBJC_IVAR____TtC11ClockPoster11ClockLogger_data_private;
      swift_beginAccess();
      sub_1E48C12D0(v20 + v21, v7, &qword_1ECF7F008, &qword_1E499B170);
      v22 = *(v9 + 48);
      if (v22(v7, 1, v8) == 1)
      {
        sub_1E4904BF4(v14);
        if (v22(v7, 1, v8) != 1)
        {
          sub_1E48C1338(v7, &qword_1ECF7F008, &qword_1E499B170);
        }
      }

      else
      {
        (*(v9 + 32))(v14, v7, v8);
      }

      v26 = sub_1E499706C();
      v27 = sub_1E499830C();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_1E48B0000, v26, v27, "This primaryUIColor shouldn't be used for uncustomizable looks.", v28, 2u);
        MEMORY[0x1E691CED0](v28, -1, -1);
      }

      (*(v9 + 8))(v14, v8);
    }

    else
    {
      if (qword_1EE2BB450 != -1)
      {
        swift_once();
      }

      v23 = qword_1EE2BB458;
      v24 = OBJC_IVAR____TtC11ClockPoster11ClockLogger_data_private;
      swift_beginAccess();
      sub_1E48C12D0(v23 + v24, v4, &qword_1ECF7F008, &qword_1E499B170);
      v25 = *(v9 + 48);
      if (v25(v4, 1, v8) == 1)
      {
        sub_1E4904BF4(v11);
        if (v25(v4, 1, v8) != 1)
        {
          sub_1E48C1338(v4, &qword_1ECF7F008, &qword_1E499B170);
        }
      }

      else
      {
        (*(v9 + 32))(v11, v4, v8);
      }

      sub_1E48C8304(v1, &aBlock);
      v29 = sub_1E499706C();
      v30 = sub_1E499830C();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v43 = v32;
        *v31 = 136446210;
        v33 = sub_1E48C60D0();
        v35 = v34;
        sub_1E48C8360(&aBlock);
        v36 = sub_1E48CA094(v33, v35, &v43);

        *(v31 + 4) = v36;
        _os_log_impl(&dword_1E48B0000, v29, v30, "Missing color for %{public}s", v31, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v32);
        MEMORY[0x1E691CED0](v32, -1, -1);
        MEMORY[0x1E691CED0](v31, -1, -1);
      }

      else
      {

        sub_1E48C8360(&aBlock);
      }

      (*(v9 + 8))(v11, v8);
    }

    v37 = [objc_opt_self() whiteColor];
    v38 = swift_allocObject();
    *(v38 + 16) = v37;
    v39 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    *&v46 = sub_1E492429C;
    *(&v46 + 1) = v38;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v45 = sub_1E4923F24;
    *(&v45 + 1) = &block_descriptor_5;
    v40 = _Block_copy(&aBlock);
    v18 = [v39 initWithDynamicProvider_];
    _Block_release(v40);
  }

  return v18;
}

void ClockFaceLook.hash(into:)(uint64_t a1)
{
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v34 = 3;
  v1 = _s11ClockPoster0A8FaceLookO2eeoiySbAC_ACtFZ_0();
  sub_1E48C8360(&v28);
  if ((v1 & 1) == 0)
  {
    sub_1E4921538();
    if (!v2)
    {
      v3 = sub_1E4921408();
      sub_1E49348B8(v3);
    }
  }

  sub_1E4997F5C();

  v4 = sub_1E4921408();
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = v4 + 32;
    do
    {
      sub_1E48CD210(v6, v27);
      sub_1E48CD210(v27, &v28);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FD78, &qword_1E49A4A30);
      if (swift_dynamicCast())
      {
        v7 = v26[0];
        v8 = v26[1];
        v9 = v26[2];
        v10 = v26[3];
        if (v26[0] == 0.0)
        {
          v7 = 0.0;
        }

        MEMORY[0x1E691C170](*&v7);
        if (v8 == 0.0)
        {
          v11 = 0.0;
        }

        else
        {
          v11 = v8;
        }

        MEMORY[0x1E691C170](*&v11);
        if (v9 == 0.0)
        {
          v12 = 0.0;
        }

        else
        {
          v12 = v9;
        }

        MEMORY[0x1E691C170](*&v12);
        if (v10 == 0.0)
        {
          v13 = 0.0;
        }

        else
        {
          v13 = v10;
        }

        MEMORY[0x1E691C170](*&v13);
      }

      sub_1E48CD210(v27, v26);
      if (swift_dynamicCast())
      {
        v15 = *(&v28 + 1);
        v14 = *&v28;
        v16 = v29;
        v17 = v30;
        v18 = v31;
        if (*&v28 == 0.0)
        {
          v14 = 0.0;
        }

        MEMORY[0x1E691C170](*&v14);
        if (v15 == 0.0)
        {
          v19 = 0.0;
        }

        else
        {
          v19 = v15;
        }

        MEMORY[0x1E691C170](*&v19);
        if (*&v16 == 0.0)
        {
          v20 = 0.0;
        }

        else
        {
          v20 = *&v16;
        }

        MEMORY[0x1E691C170](*&v20);
        if (*(&v16 + 1) == 0.0)
        {
          v21 = 0.0;
        }

        else
        {
          v21 = *(&v16 + 1);
        }

        MEMORY[0x1E691C170](*&v21);
        if (*&v17 == 0.0)
        {
          v22 = 0.0;
        }

        else
        {
          v22 = *&v17;
        }

        MEMORY[0x1E691C170](*&v22);
        if (*(&v17 + 1) == 0.0)
        {
          v23 = 0.0;
        }

        else
        {
          v23 = *(&v17 + 1);
        }

        MEMORY[0x1E691C170](*&v23);
        if (*&v18 == 0.0)
        {
          v24 = 0.0;
        }

        else
        {
          v24 = *&v18;
        }

        MEMORY[0x1E691C170](*&v24);
        if (*(&v18 + 1) == 0.0)
        {
          v25 = 0.0;
        }

        else
        {
          v25 = *(&v18 + 1);
        }

        MEMORY[0x1E691C170](*&v25);
      }

      __swift_destroy_boxed_opaque_existential_0Tm(v27);
      v6 += 40;
      --v5;
    }

    while (v5);
  }
}

void ClockFaceLook.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80248, &qword_1E49A1510);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E49242BC();
  sub_1E49989CC();
  sub_1E492268C();
  LOBYTE(v17[0]) = 1;
  sub_1E49987AC();
  if (v1)
  {
    (*(v4 + 8))(v6, v3);
  }

  else
  {
    v15 = v6;

    sub_1E4921538();
    if (v7)
    {
      LOBYTE(v17[0]) = 2;
      sub_1E49987AC();
    }

    v13 = v4;
    v14 = v3;
    LOBYTE(v16[0]) = 0;
    sub_1E499879C();
    v8 = sub_1E4921408();
    v9 = v8;
    v18 = *(v8 + 16);
    if (v18)
    {
      v10 = 0;
      v11 = v8 + 32;
      while (v10 < *(v9 + 16))
      {
        sub_1E48CD210(v11, v16);
        __swift_project_boxed_opaque_existential_1(v16, v16[3]);
        __swift_mutable_project_boxed_opaque_existential_1(v17, v17[3]);
        sub_1E499883C();
        ++v10;
        __swift_destroy_boxed_opaque_existential_0Tm(v16);
        v11 += 40;
        if (v18 == v10)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_9:

      (*(v13 + 8))(v15, v14);
      __swift_destroy_boxed_opaque_existential_0Tm(v17);
    }
  }
}

uint64_t sub_1E492268C()
{
  sub_1E48C8304(v0, v2);
  if (v4 > 1u)
  {
    if (v4 == 2)
    {

      __swift_destroy_boxed_opaque_existential_0Tm(&v3);
      __swift_destroy_boxed_opaque_existential_0Tm(v2);
      return 0x6E6F5474696C7073;
    }

    else
    {
      return 0x6D6F747375636E75;
    }
  }

  else if (v4)
  {
    sub_1E48C8360(v2);
    return 0x746E656964617267;
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm(v2);
    return 0x726F6C6F63;
  }
}

uint64_t ClockFaceLook.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80258, &qword_1E49A1518);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v31 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E49242BC();
  sub_1E49989BC();
  if (!v2)
  {
    LOBYTE(v35) = 0;
    sub_1E499874C();
    v32 = v8;
    v33 = v6;
    v34 = v5;
    v31 = a2;
    __swift_project_boxed_opaque_existential_1(v47, v48);
    v9 = sub_1E499882C();
    v10 = MEMORY[0x1E69E7CC0];
    if ((v9 & 1) == 0)
    {
      v49 = a1;
      while (1)
      {
        __swift_mutable_project_boxed_opaque_existential_1(v47, v48);
        sub_1E4924310();
        sub_1E499880C();
        if (v46)
        {
          v35 = 0u;
          v36 = 0u;
          *&v37 = 0;
        }

        else
        {
          *(&v36 + 1) = &type metadata for SolidClockFaceColor;
          *&v37 = sub_1E48D5004();
          v14 = swift_allocObject();
          *&v35 = v14;
          v15 = v45;
          *(v14 + 16) = v44;
          *(v14 + 32) = v15;
        }

        sub_1E48C12D0(&v35, &v44, &qword_1ECF80260, &qword_1E49A1520);
        v11 = *(&v45 + 1);
        sub_1E48C1338(&v44, &qword_1ECF80260, &qword_1E49A1520);
        if (!v11)
        {
          __swift_mutable_project_boxed_opaque_existential_1(v47, v48);
          *(&v45 + 1) = &type metadata for DynamicClockFaceColor;
          v46 = sub_1E48D615C();
          *&v44 = swift_allocObject();
          sub_1E4924364();
          sub_1E499881C();
          sub_1E49243B8(&v44, &v35);
          a1 = v49;
        }

        sub_1E48C12D0(&v35, &v42, &qword_1ECF80260, &qword_1E49A1520);
        if (!v43)
        {
          break;
        }

        sub_1E48B7448(&v42, &v44);
        sub_1E48CD210(&v44, &v42);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1E4906890(0, v10[2] + 1, 1, v10);
        }

        v13 = v10[2];
        v12 = v10[3];
        if (v13 >= v12 >> 1)
        {
          v10 = sub_1E4906890((v12 > 1), v13 + 1, 1, v10);
        }

        __swift_destroy_boxed_opaque_existential_0Tm(&v44);
        v10[2] = v13 + 1;
        sub_1E48B7448(&v42, &v10[5 * v13 + 4]);
        sub_1E48C1338(&v35, &qword_1ECF80260, &qword_1E49A1520);
        __swift_project_boxed_opaque_existential_1(v47, v48);
        if (sub_1E499882C())
        {
          goto LABEL_17;
        }
      }

      sub_1E48C1338(&v42, &qword_1ECF80260, &qword_1E49A1520);
      sub_1E48C1338(&v35, &qword_1ECF80260, &qword_1E49A1520);
    }

LABEL_17:
    LOBYTE(v35) = 1;
    v16 = v34;
    v17 = v32;
    v18 = sub_1E499875C();
    v20 = sub_1E4924474(v18, v19);
    v21 = v33;
    v22 = v20;

    LOBYTE(v35) = 2;
    v23 = sub_1E499875C();
    v24 = v31;
    v26 = sub_1E4922D9C(v22, v10, v23, v25, &v35);
    (*(v21 + 8))(v17, v16, v26);

    v28 = v40;
    *(v24 + 64) = v39;
    *(v24 + 80) = v28;
    *(v24 + 96) = v41;
    v29 = v36;
    *v24 = v35;
    *(v24 + 16) = v29;
    v30 = v38;
    *(v24 + 32) = v37;
    *(v24 + 48) = v30;
    __swift_destroy_boxed_opaque_existential_0Tm(v47);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

double sub_1E4922D9C@<D0>(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      *a5 = a2;
      *(a5 + 8) = a3;
      *(a5 + 16) = a4;
      *(a5 + 96) = 1;

      return result;
    }

    if (*(a2 + 16) == 2)
    {
      sub_1E48CD210(a2 + 32, a5);
      sub_1E48CD210(a2 + 72, a5 + 40);
      *(a5 + 80) = a3;
      *(a5 + 88) = a4;
      *(a5 + 96) = 2;

      return result;
    }

    sub_1E49985BC();
    sub_1E49986CC();
    v16 = "kFaceLookThumbnailView";
    v8 = 0xD000000000000025;
    goto LABEL_13;
  }

  if (a1)
  {
    if (*(a2 + 16) == 1)
    {
      sub_1E48CD210(a2 + 32, a5);
      *(a5 + 40) = a3;
      *(a5 + 48) = a4;
      *(a5 + 96) = 0;

      return result;
    }

    sub_1E49985BC();
    sub_1E49986CC();
    v16 = "actly 2 color, not: '";
    v8 = 0xD000000000000026;
LABEL_13:
    v7 = v16 | 0x8000000000000000;
    goto LABEL_14;
  }

  if (*(a2 + 16))
  {
    sub_1E49985BC();
    sub_1E49986CC();
    v7 = 0x80000001E49A7C60;
    v8 = 0xD00000000000001FLL;
LABEL_14:
    MEMORY[0x1E691B7A0](v8, v7);
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FD78, &qword_1E49A4A30);
    v18 = MEMORY[0x1E691B8E0](a2, v17);
    MEMORY[0x1E691B7A0](v18);

    MEMORY[0x1E691B7A0](39, 0xE100000000000000);
    sub_1E49248F0();
    swift_allocError();
    *v19 = 0;
    *(v19 + 8) = 0xE000000000000000;
    *(v19 + 16) = 0;
    swift_willThrow();
    return result;
  }

  result = 0.0;
  *(a5 + 64) = 0u;
  *(a5 + 80) = 0u;
  *(a5 + 32) = 0u;
  *(a5 + 48) = 0u;
  *a5 = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 96) = 3;
  return result;
}

uint64_t sub_1E4923070(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6E65644965707974;
  v4 = 0xEE00726569666974;
  v5 = 0x80000001E49A67C0;
  if (v2 != 1)
  {
    v3 = 0xD000000000000010;
    v4 = 0x80000001E49A67C0;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x73726F6C6F63;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  v8 = 0x6E65644965707974;
  if (*a2 == 1)
  {
    v5 = 0xEE00726569666974;
  }

  else
  {
    v8 = 0xD000000000000010;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x73726F6C6F63;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1E499884C();
  }

  return v11 & 1;
}

uint64_t sub_1E4923180()
{
  sub_1E499892C();
  sub_1E4997F5C();

  return sub_1E499896C();
}

double sub_1E4923230(uint64_t a1)
{
  sub_1E4997F5C();

  return result;
}

uint64_t sub_1E49232CC(uint64_t a1)
{
  sub_1E499892C();
  sub_1E4997F5C();

  return sub_1E499896C();
}

unint64_t sub_1E4923378@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1E49248A4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1E49233A8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xEE00726569666974;
  v5 = 0x6E65644965707974;
  if (v2 != 1)
  {
    v5 = 0xD000000000000010;
    v4 = 0x80000001E49A67C0;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x73726F6C6F63;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_1E4923414()
{
  v1 = 0x6E65644965707974;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x73726F6C6F63;
  }
}

unint64_t sub_1E492347C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E49248A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E49234A4(uint64_t a1)
{
  v2 = sub_1E49242BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E49234E0(uint64_t a1)
{
  v2 = sub_1E49242BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ClockFaceLook.hashValue.getter()
{
  sub_1E499892C();
  ClockFaceLook.hash(into:)(v1);
  return sub_1E499896C();
}

uint64_t sub_1E492355C()
{
  sub_1E499892C();
  ClockFaceLook.hash(into:)(v1);
  return sub_1E499896C();
}

uint64_t sub_1E49235A0(uint64_t a1)
{
  sub_1E499892C();
  ClockFaceLook.hash(into:)(v2);
  return sub_1E499896C();
}

uint64_t sub_1E492361C()
{
  sub_1E499892C();
  sub_1E4997F5C();

  return sub_1E499896C();
}

double sub_1E4923700(uint64_t a1)
{
  sub_1E4997F5C();

  return result;
}

uint64_t sub_1E49237D0(uint64_t a1)
{
  sub_1E499892C();
  sub_1E4997F5C();

  return sub_1E499896C();
}

unint64_t sub_1E49238B0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1E4924428(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1E49238E0(uint64_t *a1@<X8>)
{
  v2 = 0xEE00656C62617A69;
  v3 = 0x6D6F747375636E75;
  v4 = 0xEE0079617272615FLL;
  v5 = 0x746E656964617267;
  if (*v1 != 2)
  {
    v5 = 0x6E6F5474696C7073;
    v4 = 0xED0000625F615F65;
  }

  if (*v1)
  {
    v3 = 0x726F6C6F63;
    v2 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

char *sub_1E4923980(void *a1, void *a2)
{
  v5 = OBJC_IVAR____TtC11ClockPoster26ClackFaceLookThumbnailView_gradientLayer;
  *&v2[v5] = [objc_allocWithZone(MEMORY[0x1E6979380]) init];
  v21.receiver = v2;
  v21.super_class = type metadata accessor for ClackFaceLookThumbnailView();
  v6 = objc_msgSendSuper2(&v21, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v7 = OBJC_IVAR____TtC11ClockPoster26ClackFaceLookThumbnailView_gradientLayer;
  v8 = *&v6[OBJC_IVAR____TtC11ClockPoster26ClackFaceLookThumbnailView_gradientLayer];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FC08, &unk_1E499E510);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1E499A180;
  type metadata accessor for CGColor(0);
  *(v9 + 32) = a1;
  *(v9 + 88) = v10;
  *(v9 + 56) = v10;
  *(v9 + 64) = a2;
  v11 = v6;
  v12 = v8;
  v13 = a1;
  v14 = a2;
  v15 = sub_1E499809C();

  [v12 setColors_];

  v16 = *&v6[v7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F108, &unk_1E49A18C0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1E49A1500;
  sub_1E48FA6A0();
  v18 = v16;
  *(v17 + 32) = sub_1E499847C();
  *(v17 + 40) = sub_1E499847C();
  v19 = sub_1E499809C();

  [v18 setLocations_];

  [v11 frame];
  [v11 _setCornerRadius_];

  return v11;
}

id sub_1E4923C1C()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for ClackFaceLookThumbnailView();
  objc_msgSendSuper2(&v6, sel_layoutSubviews);
  v1 = OBJC_IVAR____TtC11ClockPoster26ClackFaceLookThumbnailView_gradientLayer;
  v2 = [*&v0[OBJC_IVAR____TtC11ClockPoster26ClackFaceLookThumbnailView_gradientLayer] superlayer];
  if (v2)
  {
  }

  else
  {
    v3 = [v0 layer];
    [v3 insertSublayer:*&v0[v1] atIndex:0];

    [*&v0[v1] setType_];
  }

  v4 = *&v0[v1];
  [v0 bounds];
  [v4 setFrame_];

  [*&v0[v1] setStartPoint_];
  return [*&v0[v1] setEndPoint_];
}

id sub_1E4923DB4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClackFaceLookThumbnailView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E4923DF8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1E492125C(a1, WitnessTable);
}

uint64_t sub_1E4923E5C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1E492125C(a1, WitnessTable);
}

uint64_t sub_1E4923EC0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1E492125C(a1, WitnessTable);
}

id sub_1E4923F24(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

uint64_t _s11ClockPoster0A8FaceLookO2eeoiySbAC_ACtFZ_0()
{
  v0 = sub_1E492268C();
  v2 = v1;
  if (v0 == sub_1E492268C() && v2 == v3)
  {
  }

  else
  {
    v4 = sub_1E499884C();

    result = 0;
    if ((v4 & 1) == 0)
    {
      return result;
    }
  }

  v6 = sub_1E4921408();
  result = sub_1E4921408();
  v7 = result;
  v8 = *(result + 16);
  if (v8)
  {
    v9 = 0;
    v10 = 32;
    while (v9 < *(v7 + 16))
    {
      result = sub_1E48CD210(v7 + v10, v25);
      v11 = *(v6 + 16);
      if (v9 == v11)
      {

        goto LABEL_21;
      }

      if (v9 >= v11)
      {
        goto LABEL_26;
      }

      sub_1E48CD210(v6 + v10, v24);
      sub_1E48CD210(v25, &v18);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FD78, &qword_1E49A4A30);
      if (swift_dynamicCast())
      {
        v14 = v23;
        v16 = v22;
        sub_1E48CD210(v24, &v18);
        if ((swift_dynamicCast() & 1) != 0 && (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v16, v22), vceqq_f64(v14, v23)))) & 1) == 0)
        {

          __swift_destroy_boxed_opaque_existential_0Tm(v24);
LABEL_21:
          __swift_destroy_boxed_opaque_existential_0Tm(v25);
          return 0;
        }
      }

      sub_1E48B7448(v25, &v22);
      if (swift_dynamicCast())
      {
        v15 = v20;
        v17 = v21;
        v12 = v19;
        v13 = v18;
        sub_1E48B7448(v24, &v22);
        result = swift_dynamicCast();
        if ((result & 1) != 0 && (vminv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqq_f64(v13, v18), vceqq_f64(v12, v19)), vuzp1q_s32(vceqq_f64(v15, v20), vceqq_f64(v17, v21))))) & 1) == 0)
        {

          return 0;
        }
      }

      else
      {
        result = __swift_destroy_boxed_opaque_existential_0Tm(v24);
      }

      ++v9;
      v10 += 40;
      if (v8 == v9)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_19:

    return 1;
  }

  return result;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1E49242BC()
{
  result = qword_1ECF80250;
  if (!qword_1ECF80250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80250);
  }

  return result;
}

unint64_t sub_1E4924310()
{
  result = qword_1EE2BB4C0;
  if (!qword_1EE2BB4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2BB4C0);
  }

  return result;
}

unint64_t sub_1E4924364()
{
  result = qword_1EE2BB498;
  if (!qword_1EE2BB498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2BB498);
  }

  return result;
}

uint64_t sub_1E49243B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80260, &qword_1E49A1520);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E4924428(uint64_t a1, uint64_t a2)
{
  v2 = sub_1E499873C();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1E4924474(uint64_t a1, uint64_t a2)
{

  v4 = sub_1E499873C();

  if (v4 > 3)
  {
    sub_1E49985BC();

    MEMORY[0x1E691B7A0](a1, a2);
    sub_1E49248F0();
    swift_allocError();
    *v5 = 0xD000000000000010;
    *(v5 + 8) = 0x80000001E49A7C80;
    *(v5 + 16) = 0;
    swift_willThrow();
  }

  return v4;
}

unint64_t sub_1E4924564()
{
  result = qword_1ECF80268;
  if (!qword_1ECF80268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80268);
  }

  return result;
}

unint64_t sub_1E49245B8(uint64_t a1)
{
  result = sub_1E49245E0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E49245E0()
{
  result = qword_1ECF80270;
  if (!qword_1ECF80270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80270);
  }

  return result;
}

uint64_t sub_1E4924634(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 97))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 96);
  if (v3 >= 4)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E4924670(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 96) = 0;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 97) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 97) = 0;
    }

    if (a2)
    {
      *(result + 96) = -a2;
    }
  }

  return result;
}

uint64_t sub_1E49246C4(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    v2 = a2 - 3;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    LOBYTE(a2) = 3;
    *result = v2;
  }

  *(result + 96) = a2;
  return result;
}

unint64_t sub_1E49247A0()
{
  result = qword_1ECF80280;
  if (!qword_1ECF80280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80280);
  }

  return result;
}

unint64_t sub_1E49247F8()
{
  result = qword_1ECF80288;
  if (!qword_1ECF80288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80288);
  }

  return result;
}

unint64_t sub_1E4924850()
{
  result = qword_1ECF80290;
  if (!qword_1ECF80290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80290);
  }

  return result;
}

unint64_t sub_1E49248A4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1E499873C();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1E49248F0()
{
  result = qword_1ECF80298;
  if (!qword_1ECF80298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80298);
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1E4924964(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1E49249AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_1E4924A20()
{
  result = qword_1ECF802A0;
  if (!qword_1ECF802A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF802A0);
  }

  return result;
}

uint64_t sub_1E4924A78()
{
  v1 = CFNotificationCenterGetDarwinNotifyCenter();

  v2 = sub_1E4997EAC();

  CFNotificationCenterRemoveObserver(v1, v0, v2, 0);

  v3 = OBJC_IVAR____TtCV11ClockPoster24DarwinNotificationCenter12Subscription_id;
  v4 = sub_1E4996DBC();
  (*(*(v4 - 8) + 8))(&v0[v3], v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DarwinNotificationCenter.Subscription(uint64_t a1)
{
  result = qword_1ECF802A8;
  if (!qword_1ECF802A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E4924BF0(uint64_t a1)
{
  result = sub_1E4996DBC();
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

uint64_t sub_1E4924C98()
{
  sub_1E499892C();
  sub_1E4996DBC();
  sub_1E4924F84(&qword_1ECF814C0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1E4997E5C();
  return sub_1E499896C();
}

uint64_t sub_1E4924D38(uint64_t a1)
{
  sub_1E4996DBC();
  sub_1E4924F84(&qword_1ECF814C0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  return sub_1E4997E5C();
}

uint64_t sub_1E4924DC0(uint64_t a1)
{
  sub_1E499892C();
  sub_1E4996DBC();
  sub_1E4924F84(&qword_1ECF814C0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1E4997E5C();
  return sub_1E499896C();
}

uint64_t sub_1E4924E5C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtCV11ClockPoster24DarwinNotificationCenter12Subscription_id;
  v5 = sub_1E4996DBC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_1E4924F84(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E4925030(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80360, &qword_1E49A1EE0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E492E944();
  sub_1E49989CC();
  v8[15] = 0;
  sub_1E48EB5B0();
  sub_1E49987DC();
  if (!v1)
  {
    v8[14] = 1;
    sub_1E49987BC();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1E49251C0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80350, &qword_1E49A1ED8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E492E944();
  sub_1E49989BC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v12[7] = 0;
  sub_1E48EB55C();
  sub_1E499878C();
  v20[4] = v17;
  v20[5] = v18;
  v21 = v19;
  v20[0] = v13;
  v20[1] = v14;
  v20[2] = v15;
  v20[3] = v16;
  LOBYTE(v13) = 1;
  sub_1E499876C();
  v10 = v9;
  (*(v6 + 8))(v8, v5);
  v22 = v10;
  sub_1E48C9E64(v20, a2);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return sub_1E48C9EC0(v20);
}

uint64_t sub_1E49253F8()
{
  if (*v0)
  {
    return 0x656C676E61;
  }

  else
  {
    return 1802465132;
  }
}

void sub_1E4925428(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1802465132 && a2 == 0xE400000000000000;
  if (v5 || (sub_1E499884C() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x656C676E61 && a2 == 0xE500000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1E499884C();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_1E4925500(uint64_t a1)
{
  v2 = sub_1E492E944();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E492553C(uint64_t a1)
{
  v2 = sub_1E492E944();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

__n128 sub_1E4925578@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v2;
  *(a2 + 96) = *(a1 + 96);
  v3 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v3;
  result = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = result;
  *(a2 + 104) = 0;
  return result;
}

uint64_t sub_1E4925668()
{
  swift_getKeyPath();
  sub_1E492F470(&qword_1ECF7F2D8, type metadata accessor for DigitalClockViewModel, &unk_1E49A1DCC);
  sub_1E4996FCC();

  swift_beginAccess();
  return *(v0 + 16);
}

void sub_1E492571C(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1E492F470(&qword_1ECF7F2D8, type metadata accessor for DigitalClockViewModel, &unk_1E49A1DCC);
  sub_1E4996FCC();

  swift_beginAccess();
  *a2 = *(v3 + 16);
}

void sub_1E4925800(char a1)
{
  v2 = a1 & 1;
  swift_beginAccess();
  if (*(v1 + 16) == v2)
  {
    *(v1 + 16) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1E492F470(&qword_1ECF7F2D8, type metadata accessor for DigitalClockViewModel, &unk_1E49A1DCC);
    sub_1E4996FBC();
  }
}

uint64_t (*sub_1E4925924(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC11ClockPoster21DigitalClockViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1E492F470(&qword_1ECF7F2D8, type metadata accessor for DigitalClockViewModel, &unk_1E49A1DCC);
  sub_1E4996FCC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1E4996FEC();

  v4[7] = sub_1E4925618(v4);
  return sub_1E4925A5C;
}

void sub_1E4925A5C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  sub_1E4996FDC();

  free(v1);
}

uint64_t sub_1E4925AF0()
{
  swift_getKeyPath();
  sub_1E492F470(&qword_1ECF7F2D8, type metadata accessor for DigitalClockViewModel, &unk_1E49A1DCC);
  sub_1E4996FCC();

  return *(v0 + 17);
}

void sub_1E4925B90(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1E492F470(&qword_1ECF7F2D8, type metadata accessor for DigitalClockViewModel, &unk_1E49A1DCC);
  sub_1E4996FCC();

  *a2 = *(v3 + 17);
}

void sub_1E4925C38(char a1)
{
  if (*(v1 + 17) == (a1 & 1))
  {
    *(v1 + 17) = a1 & 1;

    sub_1E492DD60();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1E492F470(&qword_1ECF7F2D8, type metadata accessor for DigitalClockViewModel, &unk_1E49A1DCC);
    sub_1E4996FBC();
  }
}

uint64_t sub_1E4925D6C(uint64_t a1)
{
  v2 = v1;
  v109 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EC60, &unk_1E49A0DC0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v107 = &v77 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80380, &qword_1E49A1F98);
  v105 = *(v5 - 8);
  v106 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v104 = &v77 - v6;
  v101 = sub_1E49969DC();
  v98 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v97 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FA50, &qword_1E49A1FA0);
  v95 = *(v8 - 8);
  v96 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v93 = &v77 - v9;
  v10 = sub_1E4996ABC();
  v102 = *(v10 - 8);
  v103 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v100 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v99 = &v77 - v13;
  v91 = sub_1E4996CBC();
  v88 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v86 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_1E4996BFC();
  v83 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v82 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_1E4996C7C();
  v79 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v78 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_1E4996CAC();
  v17 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v19 = &v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v77 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v77 = &v77 - v24;
  v25 = sub_1E4996D8C();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v110 = &v77 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1E4996A4C();
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v77 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + 16) = 0;
  type metadata accessor for RollingClockViewModel(0);
  swift_allocObject();
  *(v1 + 24) = sub_1E48B81A4();
  *(v1 + 144) = 0;
  *(v1 + 152) = 0xE000000000000000;
  sub_1E4996A3C();
  v32 = *(v29 + 32);
  v87 = v31;
  v90 = v28;
  v89 = v29 + 32;
  v85 = v32;
  v32(v1 + OBJC_IVAR____TtC11ClockPoster21DigitalClockViewModel__alarmText, v31, v28);
  (*(v26 + 56))(v1 + OBJC_IVAR____TtC11ClockPoster21DigitalClockViewModel__alarmTime, 1, 1, v25);
  *(v1 + OBJC_IVAR____TtC11ClockPoster21DigitalClockViewModel__complicationForegroundColor) = sub_1E4997A6C();
  *(v1 + OBJC_IVAR____TtC11ClockPoster21DigitalClockViewModel__complicationTintColor) = sub_1E4997A6C();
  *(v1 + OBJC_IVAR____TtC11ClockPoster21DigitalClockViewModel__complicationSecondaryTintColor) = 0;
  v33 = OBJC_IVAR____TtC11ClockPoster21DigitalClockViewModel__temperature;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF816A0, &unk_1E49A5C90);
  (*(*(v34 - 8) + 56))(v2 + v33, 1, 1, v34);
  *(v2 + OBJC_IVAR____TtC11ClockPoster21DigitalClockViewModel__colorWheelIndex) = 0;
  sub_1E4996FFC();
  sub_1E48C9E64(v109, v2 + 32);
  if (qword_1ECF7EB40 != -1)
  {
    swift_once();
  }

  v35 = v110;
  sub_1E493BA48(v110);
  v94 = v26;
  v36 = *(v26 + 16);
  v92 = v25;
  v36(v2 + OBJC_IVAR____TtC11ClockPoster21DigitalClockViewModel__date, v35, v25);
  ClockFaceLook.primaryUIColor.getter();
  v108 = sub_1E49979DC();
  MEMORY[0x1E691A0B0]();
  v37 = v78;
  sub_1E4996C4C();
  sub_1E4996C9C();
  (*(v79 + 8))(v37, v80);
  v38 = *(v17 + 8);
  v39 = v81;
  v38(v19, v81);
  v40 = v82;
  sub_1E4996BEC();
  v41 = v77;
  sub_1E4996BCC();
  (*(v83 + 8))(v40, v84);
  v38(v22, v39);
  v42 = v86;
  sub_1E4996BBC();
  v38(v41, v39);
  sub_1E492F470(&qword_1ECF7FA58, MEMORY[0x1E6969350], MEMORY[0x1E6969348]);
  v43 = v87;
  v44 = v91;
  sub_1E4996D6C();
  (*(v88 + 8))(v42, v44);
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  *(&v77 - 2) = v46;
  swift_getKeyPath();
  sub_1E48F36FC();
  v47 = v93;
  sub_1E4996A8C();

  v49 = v97;
  v48 = v98;
  v50 = v101;
  (*(v98 + 104))(v97, *MEMORY[0x1E6968598], v101);
  v51 = v99;
  v52 = v96;
  sub_1E4996A9C();
  (*(v48 + 8))(v49, v50);
  (*(v95 + 8))(v47, v52);
  v53 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v53);
  *(&v77 - 2) = v54;
  swift_getKeyPath();
  sub_1E48C1684();
  v55 = v104;
  sub_1E4996A8C();

  v111 = v108;
  v56 = v100;
  v57 = v106;
  sub_1E4996A9C();
  (*(v105 + 8))(v55, v57);
  sub_1E4996A2C();
  v58 = v103;
  v59 = *(v102 + 8);
  v59(v56, v103);
  v59(v51, v58);
  v85(v2 + OBJC_IVAR____TtC11ClockPoster21DigitalClockViewModel__dateText, v43, v90);

  sub_1E4926FBC(v60);
  v61 = sub_1E499816C();
  v62 = *(*(v61 - 8) + 56);
  v63 = v107;
  v62(v107, 1, 1, v61);
  v64 = swift_allocObject();
  swift_weakInit();
  sub_1E499814C();

  v65 = sub_1E499813C();
  v66 = swift_allocObject();
  v67 = MEMORY[0x1E69E85E0];
  v66[2] = v65;
  v66[3] = v67;
  v66[4] = v64;

  sub_1E498DD1C(0, 0, v63, &unk_1E49A2200, v66);

  v62(v63, 1, 1, v61);
  v68 = swift_allocObject();
  swift_weakInit();

  v69 = sub_1E499813C();
  v70 = swift_allocObject();
  v70[2] = v69;
  v71 = MEMORY[0x1E69E85E0];
  v70[3] = MEMORY[0x1E69E85E0];
  v70[4] = v68;

  sub_1E498DD1C(0, 0, v63, &unk_1E49A2210, v70);

  v62(v63, 1, 1, v61);
  v72 = swift_allocObject();
  swift_weakInit();

  v73 = sub_1E499813C();
  v74 = swift_allocObject();
  v74[2] = v73;
  v74[3] = v71;
  v74[4] = v72;

  sub_1E498DD1C(0, 0, v63, &unk_1E49A2220, v74);

  v62(v63, 1, 1, v61);
  v75 = swift_allocObject();
  *(v75 + 16) = 0;
  *(v75 + 24) = 0;
  sub_1E498DD1C(0, 0, v63, &unk_1E49A2230, v75);

  sub_1E492DD60();

  sub_1E48C9EC0(v109);
  (*(v94 + 8))(v110, v92);
  return v2;
}

double sub_1E4926BA4(uint64_t a1)
{
  if (*(v1 + 24) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1E492F470(&qword_1ECF7F2D8, type metadata accessor for DigitalClockViewModel, &unk_1E49A1DCC);
    sub_1E4996FBC();
  }

  return result;
}

double sub_1E4926CD8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 144) == a1 && *(v2 + 152) == a2;
  if (v5 || (sub_1E499884C() & 1) != 0)
  {
    *(v2 + 144) = a1;
    *(v2 + 152) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1E492F470(&qword_1ECF7F2D8, type metadata accessor for DigitalClockViewModel, &unk_1E49A1DCC);
    sub_1E4996FBC();
  }

  return result;
}

double sub_1E4926E60(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11ClockPoster21DigitalClockViewModel__complicationForegroundColor;

  v4 = sub_1E49979FC();

  if (v4)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1E492F470(&qword_1ECF7F2D8, type metadata accessor for DigitalClockViewModel, &unk_1E49A1DCC);
    sub_1E4996FBC();
  }

  return result;
}

double sub_1E4926FBC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11ClockPoster21DigitalClockViewModel__complicationTintColor;

  v4 = sub_1E49979FC();

  if (v4)
  {
    *(v1 + v3) = a1;

    sub_1E492C76C();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1E492F470(&qword_1ECF7F2D8, type metadata accessor for DigitalClockViewModel, &unk_1E49A1DCC);
    sub_1E4996FBC();
  }

  return result;
}

double sub_1E4927130(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11ClockPoster21DigitalClockViewModel__complicationSecondaryTintColor;
  if (!*(v1 + OBJC_IVAR____TtC11ClockPoster21DigitalClockViewModel__complicationSecondaryTintColor))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1E492F470(&qword_1ECF7F2D8, type metadata accessor for DigitalClockViewModel, &unk_1E49A1DCC);
    sub_1E4996FBC();

    return result;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v4 = sub_1E49979FC();

  if ((v4 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + v3) = a1;

  return result;
}

double sub_1E49272A0(uint64_t a1, __n128 a2)
{
  if (*(v2 + OBJC_IVAR____TtC11ClockPoster21DigitalClockViewModel__colorWheelIndex) == a1)
  {

    sub_1E492DD60();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1E492F470(&qword_1ECF7F2D8, type metadata accessor for DigitalClockViewModel, &unk_1E49A1DCC);
    sub_1E4996FBC();
  }

  return result;
}

uint64_t sub_1E49273D4(uint64_t a1)
{
  swift_beginAccess();
  sub_1E48C9E64(v1 + 32, v6);
  if ((_s11ClockPoster0A8FaceLookO2eeoiySbAC_ACtFZ_0() & 1) == 0)
  {
    sub_1E48C9EC0(v6);
    goto LABEL_5;
  }

  v3 = *&v6[13];
  sub_1E48C9EC0(v6);
  if (v3 != *(a1 + 104))
  {
LABEL_5:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v6[0] = v1;
    sub_1E492F470(&qword_1ECF7F2D8, type metadata accessor for DigitalClockViewModel, &unk_1E49A1DCC);
    sub_1E4996FBC();

    return sub_1E48C9EC0(a1);
  }

  sub_1E48C9E64(a1, v6);
  swift_beginAccess();
  sub_1E492F9D0(v6, v1 + 32);
  swift_endAccess();
  sub_1E492DD60();
  sub_1E48C9EC0(v6);
  return sub_1E48C9EC0(a1);
}

uint64_t sub_1E4927578(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1E4996D8C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC11ClockPoster21DigitalClockViewModel__date;
  swift_beginAccess();
  v9 = *(v5 + 16);
  v9(v7, v2 + v8, v4);
  sub_1E492F470(&qword_1ECF7F440, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
  v14[0] = a1;
  LOBYTE(a1) = sub_1E4997E9C();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (a1)
  {
    v9(v7, v14[0], v4);
    swift_beginAccess();
    (*(v5 + 24))(v2 + v8, v7, v4);
    swift_endAccess();
    sub_1E492C76C();
    v10(v7, v4);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v12 = v14[0];
    v14[-2] = v2;
    v14[-1] = v12;
    v14[1] = v2;
    sub_1E492F470(&qword_1ECF7F2D8, type metadata accessor for DigitalClockViewModel, &unk_1E49A1DCC);
    sub_1E4996FBC();
  }

  return (v10)(v14[0], v4);
}

uint64_t sub_1E492785C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v18[0] = a3;
  v18[1] = a4;
  v6 = v4;
  v8 = sub_1E4996A4C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a2;
  swift_beginAccess();
  v13 = *(v9 + 16);
  v13(v11, v6 + v12, v8);
  sub_1E492F470(&qword_1ECF80390, MEMORY[0x1E6968848], MEMORY[0x1E6968860]);
  v19 = a1;
  LOBYTE(a1) = sub_1E4997E9C();
  v14 = *(v9 + 8);
  v14(v11, v8);
  if (a1)
  {
    v13(v11, v19, v8);
    swift_beginAccess();
    (*(v9 + 40))(v6 + v12, v11, v8);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v16 = v19;
    v18[-2] = v6;
    v18[-1] = v16;
    v20 = v6;
    sub_1E492F470(&qword_1ECF7F2D8, type metadata accessor for DigitalClockViewModel, &unk_1E49A1DCC);
    sub_1E4996FBC();
  }

  return (v14)(v19, v8);
}

uint64_t sub_1E4927AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a4;
  v5 = sub_1E4996D8C();
  v4[13] = v5;
  v4[14] = *(v5 - 8);
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF809D0, &qword_1E499D6C0);
  v4[18] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FB80, &unk_1E49A2260);
  v4[19] = v6;
  v4[20] = *(v6 - 8);
  v4[21] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FB88, &unk_1E499E440);
  v4[22] = v7;
  v4[23] = *(v7 - 8);
  v4[24] = swift_task_alloc();
  v4[25] = sub_1E499814C();
  v4[26] = sub_1E499813C();
  v9 = sub_1E499811C();
  v4[27] = v9;
  v4[28] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1E4927D04, v9, v8);
}

uint64_t sub_1E4927D04()
{
  if (qword_1ECF7EB40 != -1)
  {
    swift_once();
  }

  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  v4 = qword_1ECF80790;
  v5 = *(qword_1ECF80790 + OBJC_IVAR____TtC11ClockPoster5Clock_dateStreamObservers);

  sub_1E4938964(2, v5, v4, 2, v1);
  sub_1E499819C();
  (*(v2 + 8))(v1, v3);
  swift_beginAccess();
  v0[29] = 0;
  v6 = sub_1E499813C();
  v0[30] = v6;
  v7 = swift_task_alloc();
  v0[31] = v7;
  *v7 = v0;
  v7[1] = sub_1E4927E8C;
  v8 = v0[22];
  v9 = v0[18];
  v10 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D9C8](v9, v6, v10, v8);
}

uint64_t sub_1E4927E8C()
{
  v1 = *v0;

  v2 = *(v1 + 224);
  v3 = *(v1 + 216);

  return MEMORY[0x1EEE6DFA0](sub_1E4927FD0, v3, v2);
}

uint64_t sub_1E4927FD0()
{
  v1 = v0[18];
  v2 = v0[13];
  v3 = v0[14];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[23] + 8))(v0[24], v0[22]);

LABEL_7:

    v24 = v0[1];

    return v24();
  }

  (*(v3 + 32))(v0[17], v1, v2);
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    v19 = v0[23];
    v18 = v0[24];
    v20 = v0[22];
    v21 = v0[17];
    v22 = v0[13];
    v23 = v0[14];

    (*(v23 + 8))(v21, v22);
    (*(v19 + 8))(v18, v20);
    goto LABEL_7;
  }

  v5 = Strong;
  v7 = v0[14];
  v6 = v0[15];
  v8 = v0[13];
  v9 = *(v7 + 16);
  v9(v0[16], v0[17], v8);
  v10 = OBJC_IVAR____TtC11ClockPoster21DigitalClockViewModel__date;
  swift_beginAccess();
  v9(v6, v5 + v10, v8);
  sub_1E492F470(&qword_1ECF7F440, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
  v11 = sub_1E4997E9C();
  v34 = *(v7 + 8);
  v34(v6, v8);
  v12 = v0[13];
  if (v11)
  {
    v13 = v0[17];
    v14 = v0[14];
    v15 = v0[15];
    v9(v15, v0[16], v0[13]);
    swift_beginAccess();
    (*(v14 + 24))(v5 + v10, v15, v12);
    swift_endAccess();
    sub_1E492C76C();

    v16 = v34;
    v34(v15, v12);
    v34(v13, v12);
    v17 = v0[29];
  }

  else
  {
    v17 = v0[29];
    v26 = v0[16];
    v27 = v0[17];
    swift_getKeyPath();
    v28 = swift_task_alloc();
    *(v28 + 16) = v5;
    *(v28 + 24) = v26;
    v0[11] = v5;
    sub_1E492F470(&qword_1ECF7F2D8, type metadata accessor for DigitalClockViewModel, &unk_1E49A1DCC);
    sub_1E4996FBC();

    v16 = v34;
    v34(v27, v12);
  }

  v16(v0[16], v0[13]);
  v0[29] = v17;
  v29 = sub_1E499813C();
  v0[30] = v29;
  v30 = swift_task_alloc();
  v0[31] = v30;
  *v30 = v0;
  v30[1] = sub_1E4927E8C;
  v31 = v0[22];
  v32 = v0[18];
  v33 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D9C8](v32, v29, v33, v31);
}

uint64_t sub_1E4928448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF816A0, &unk_1E49A5C90);
  v4[15] = v5;
  v4[16] = *(v5 - 8);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[19] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF816B0, &qword_1E49A5CA0);
  v4[20] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80368, &unk_1E49A2840);
  v4[21] = v6;
  v4[22] = *(v6 - 8);
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF816C0, &qword_1E49A5CB0);
  v4[30] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80398, &qword_1E49A2250);
  v4[31] = v7;
  v4[32] = *(v7 - 8);
  v4[33] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF803A0, &qword_1E49A2258);
  v4[34] = v8;
  v4[35] = *(v8 - 8);
  v4[36] = swift_task_alloc();
  v4[37] = sub_1E499814C();
  v4[38] = sub_1E499813C();
  v10 = sub_1E499811C();
  v4[39] = v10;
  v4[40] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1E492874C, v10, v9);
}

uint64_t sub_1E492874C()
{
  if (qword_1ECF7EB70 != -1)
  {
    swift_once();
  }

  v2 = v0[32];
  v1 = v0[33];
  v3 = v0[31];
  sub_1E4990DAC(v1);
  sub_1E499819C();
  (*(v2 + 8))(v1, v3);
  swift_beginAccess();
  v0[41] = 0;
  v4 = sub_1E499813C();
  v0[42] = v4;
  v5 = swift_task_alloc();
  v0[43] = v5;
  *v5 = v0;
  v5[1] = sub_1E49288A8;
  v6 = v0[34];
  v7 = v0[30];
  v8 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D9C8](v7, v4, v8, v6);
}

uint64_t sub_1E49288A8()
{
  v1 = *v0;

  v2 = *(v1 + 320);
  v3 = *(v1 + 312);

  return MEMORY[0x1EEE6DFA0](sub_1E49289EC, v3, v2);
}

uint64_t sub_1E49289EC()
{
  v1 = v0[30];
  if ((*(v0[22] + 48))(v1, 1, v0[21]) == 1)
  {
    (*(v0[35] + 8))(v0[36], v0[34]);

LABEL_8:

    v18 = v0[1];

    return v18();
  }

  sub_1E48C15C8(v1, v0[29], &qword_1ECF80368, &unk_1E49A2840);
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    v15 = v0[35];
    v14 = v0[36];
    v16 = v0[34];
    v17 = v0[29];

    sub_1E48C1338(v17, &qword_1ECF80368, &unk_1E49A2840);
    (*(v15 + 8))(v14, v16);
    goto LABEL_8;
  }

  v3 = Strong;
  v4 = v0[28];
  v5 = v0[27];
  v7 = v0[19];
  v6 = v0[20];
  v9 = v0[15];
  v8 = v0[16];
  sub_1E48C12D0(v0[29], v4, &qword_1ECF80368, &unk_1E49A2840);
  v55 = v3;
  v10 = OBJC_IVAR____TtC11ClockPoster21DigitalClockViewModel__temperature;
  swift_beginAccess();
  sub_1E48C12D0(v55 + v10, v5, &qword_1ECF80368, &unk_1E49A2840);
  v11 = *(v7 + 48);
  sub_1E48C12D0(v5, v6, &qword_1ECF80368, &unk_1E49A2840);
  sub_1E48C12D0(v4, v6 + v11, &qword_1ECF80368, &unk_1E49A2840);
  v12 = *(v8 + 48);
  if (v12(v6, 1, v9) == 1)
  {
    v13 = v0[15];
    sub_1E48C1338(v0[27], &qword_1ECF80368, &unk_1E49A2840);
    if (v12(v6 + v11, 1, v13) == 1)
    {
      sub_1E48C1338(v0[20], &qword_1ECF80368, &unk_1E49A2840);
LABEL_16:
      v36 = v0[24];
      v35 = v0[25];
      v37 = v0[23];
      v38 = v0[15];
      sub_1E48C12D0(v0[28], v35, &qword_1ECF80368, &unk_1E49A2840);
      swift_beginAccess();
      sub_1E48EC048(v35, v55 + v10, &qword_1ECF80368, &unk_1E49A2840);
      swift_endAccess();
      swift_getKeyPath();
      v0[12] = v55;
      sub_1E492F470(&qword_1ECF7F2D8, type metadata accessor for DigitalClockViewModel, &unk_1E49A1DCC);
      sub_1E4996FCC();

      sub_1E48C12D0(v55 + v10, v36, &qword_1ECF80368, &unk_1E49A2840);
      sub_1E48C12D0(v36, v37, &qword_1ECF80368, &unk_1E49A2840);
      if (v12(v37, 1, v38) == 1)
      {
        sub_1E48C1338(v0[23], &qword_1ECF80368, &unk_1E49A2840);
        v39 = 0;
        v40 = 0xE000000000000000;
      }

      else
      {
        v41 = v0[16];
        v42 = v0[17];
        v43 = v0[15];
        (*(v41 + 32))(v42, v0[23], v43);
        v44 = [objc_allocWithZone(MEMORY[0x1E696AD30]) init];
        [v44 setUnitStyle_];
        v45 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
        [v45 setNumberStyle_];
        [v45 setMaximumFractionDigits_];
        [v44 setNumberFormatter_];
        sub_1E492F270();
        v39 = sub_1E499842C();
        v40 = v46;

        (*(v41 + 8))(v42, v43);
      }

      sub_1E48C1338(v0[24], &qword_1ECF80368, &unk_1E49A2840);
      if (*(v55 + 144) == v39 && *(v55 + 152) == v40 || (sub_1E499884C() & 1) != 0)
      {
        *(v55 + 144) = v39;
        *(v55 + 152) = v40;

        v26 = v0[41];
      }

      else
      {
        v26 = v0[41];
        swift_getKeyPath();
        v47 = swift_task_alloc();
        v47[2] = v55;
        v47[3] = v39;
        v47[4] = v40;
        v0[13] = v55;
        sub_1E4996FBC();
      }

      v48 = v0[29];
      sub_1E48C1338(v0[25], &qword_1ECF80368, &unk_1E49A2840);

      sub_1E48C1338(v48, &qword_1ECF80368, &unk_1E49A2840);
      goto LABEL_25;
    }

    goto LABEL_13;
  }

  v20 = v0[15];
  sub_1E48C12D0(v0[20], v0[26], &qword_1ECF80368, &unk_1E49A2840);
  v21 = v12(v6 + v11, 1, v20);
  v22 = v0[26];
  v23 = v0[27];
  if (v21 == 1)
  {
    v24 = v0[15];
    v25 = v0[16];
    sub_1E48C1338(v0[27], &qword_1ECF80368, &unk_1E49A2840);
    (*(v25 + 8))(v22, v24);
LABEL_13:
    sub_1E48C1338(v0[20], &qword_1ECF816B0, &qword_1E49A5CA0);
    goto LABEL_14;
  }

  v54 = v0[20];
  v30 = v0[18];
  v32 = v0[15];
  v31 = v0[16];
  (*(v31 + 32))(v30, v6 + v11, v32);
  sub_1E492F2BC();
  v33 = sub_1E4997E9C();
  v34 = *(v31 + 8);
  v34(v30, v32);
  sub_1E48C1338(v23, &qword_1ECF80368, &unk_1E49A2840);
  v34(v22, v32);
  sub_1E48C1338(v54, &qword_1ECF80368, &unk_1E49A2840);
  if (v33)
  {
    goto LABEL_16;
  }

LABEL_14:
  v26 = v0[41];
  v27 = v0[28];
  v28 = v0[29];
  swift_getKeyPath();
  v29 = swift_task_alloc();
  *(v29 + 16) = v55;
  *(v29 + 24) = v27;
  v0[11] = v55;
  sub_1E492F470(&qword_1ECF7F2D8, type metadata accessor for DigitalClockViewModel, &unk_1E49A1DCC);
  sub_1E4996FBC();

  sub_1E48C1338(v28, &qword_1ECF80368, &unk_1E49A2840);

LABEL_25:
  sub_1E48C1338(v0[28], &qword_1ECF80368, &unk_1E49A2840);
  v0[41] = v26;
  v49 = sub_1E499813C();
  v0[42] = v49;
  v50 = swift_task_alloc();
  v0[43] = v50;
  *v50 = v0;
  v50[1] = sub_1E49288A8;
  v51 = v0[34];
  v52 = v0[30];
  v53 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D9C8](v52, v49, v53, v51);
}

uint64_t sub_1E49292F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[20] = a4;
  v5 = sub_1E4996A4C();
  v4[21] = v5;
  v4[22] = *(v5 - 8);
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v6 = sub_1E4996D8C();
  v4[25] = v6;
  v4[26] = *(v6 - 8);
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v4[29] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F898, &qword_1E499D6F0);
  v4[30] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF809D0, &qword_1E499D6C0);
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F728, &unk_1E499CAB0);
  v4[37] = v7;
  v4[38] = *(v7 - 8);
  v4[39] = swift_task_alloc();
  v4[40] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81510, &unk_1E499E0A0);
  v4[41] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F730, &qword_1E499CAC0);
  v4[42] = v8;
  v4[43] = *(v8 - 8);
  v4[44] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F738, &unk_1E49A2240);
  v4[45] = v9;
  v4[46] = *(v9 - 8);
  v4[47] = swift_task_alloc();
  v4[48] = sub_1E499814C();
  v4[49] = sub_1E499813C();
  v11 = sub_1E499811C();
  v4[50] = v11;
  v4[51] = v10;

  return MEMORY[0x1EEE6DFA0](sub_1E4929690, v11, v10);
}

uint64_t sub_1E4929690()
{
  if (qword_1ECF7EAE0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ECF81910;
  *(v0 + 416) = qword_1ECF81910;

  return MEMORY[0x1EEE6DFA0](sub_1E4929728, v1, 0);
}

uint64_t sub_1E4929728()
{
  sub_1E48F0638(v0[44]);
  v1 = v0[50];
  v2 = v0[51];

  return MEMORY[0x1EEE6DFA0](sub_1E4929790, v1, v2);
}

uint64_t sub_1E4929790()
{
  v2 = v0[43];
  v1 = v0[44];
  v3 = v0[42];
  sub_1E499819C();
  (*(v2 + 8))(v1, v3);
  swift_beginAccess();
  v0[53] = 0;
  v4 = sub_1E499813C();
  v0[54] = v4;
  v5 = swift_task_alloc();
  v0[55] = v5;
  *v5 = v0;
  v5[1] = sub_1E492989C;
  v6 = v0[45];
  v7 = v0[41];
  v8 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D9C8](v7, v4, v8, v6);
}

uint64_t sub_1E492989C()
{
  v1 = *v0;

  v2 = *(v1 + 408);
  v3 = *(v1 + 400);

  return MEMORY[0x1EEE6DFA0](sub_1E49299E0, v3, v2);
}

uint64_t sub_1E49299E0()
{
  v1 = v0[41];
  if ((*(v0[38] + 48))(v1, 1, v0[37]) == 1)
  {
    (*(v0[46] + 8))(v0[47], v0[45]);

LABEL_7:

    v13 = v0[1];

    return v13();
  }

  sub_1E48C15C8(v1, v0[40], &qword_1ECF7F728, &unk_1E499CAB0);
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    v10 = v0[46];
    v9 = v0[47];
    v11 = v0[45];
    v12 = v0[40];

    sub_1E48C1338(v12, &qword_1ECF7F728, &unk_1E499CAB0);
    (*(v10 + 8))(v9, v11);
    goto LABEL_7;
  }

  v3 = Strong;
  v4 = v0[39];
  sub_1E48C12D0(v0[40], v4, &qword_1ECF7F728, &unk_1E499CAB0);
  v5 = type metadata accessor for Alarm(0);
  v6 = (*(*(v5 - 8) + 48))(v4, 1, v5);
  v7 = v0[39];
  if (v6 == 1)
  {
    sub_1E48C1338(v7, &qword_1ECF7F728, &unk_1E499CAB0);
    v8 = 1;
  }

  else
  {
    (*(v0[26] + 16))(v0[36], v7, v0[25]);
    sub_1E492F914(v7, type metadata accessor for Alarm);
    v8 = 0;
  }

  v16 = v0[35];
  v15 = v0[36];
  v17 = v0[30];
  v68 = v0[29];
  v18 = v0[25];
  v19 = v0[26];
  (*(v19 + 56))(v15, v8, 1, v18);
  v20 = OBJC_IVAR____TtC11ClockPoster21DigitalClockViewModel__alarmTime;
  swift_beginAccess();
  v67 = v20;
  v21 = v3 + v20;
  v22 = v19;
  sub_1E48C12D0(v21, v16, &qword_1ECF809D0, &qword_1E499D6C0);
  v23 = *(v68 + 48);
  sub_1E48C12D0(v16, v17, &qword_1ECF809D0, &qword_1E499D6C0);
  sub_1E48C12D0(v15, v17 + v23, &qword_1ECF809D0, &qword_1E499D6C0);
  v24 = *(v22 + 48);
  if (v24(v17, 1, v18) == 1)
  {
    v25 = v0[25];
    sub_1E48C1338(v0[35], &qword_1ECF809D0, &qword_1E499D6C0);
    if (v24(v17 + v23, 1, v25) == 1)
    {
      sub_1E48C1338(v0[30], &qword_1ECF809D0, &qword_1E499D6C0);
LABEL_19:
      v41 = v0[32];
      v40 = v0[33];
      v42 = v0[31];
      v70 = v0[25];
      sub_1E48C12D0(v0[36], v40, &qword_1ECF809D0, &qword_1E499D6C0);
      swift_beginAccess();
      sub_1E48EC048(v40, v3 + v67, &qword_1ECF809D0, &qword_1E499D6C0);
      swift_endAccess();
      swift_getKeyPath();
      v0[18] = v3;
      sub_1E492F470(&qword_1ECF7F2D8, type metadata accessor for DigitalClockViewModel, &unk_1E49A1DCC);
      sub_1E4996FCC();

      sub_1E48C12D0(v3 + v67, v41, &qword_1ECF809D0, &qword_1E499D6C0);
      sub_1E48C12D0(v41, v42, &qword_1ECF809D0, &qword_1E499D6C0);
      if (v24(v42, 1, v70) == 1)
      {
        sub_1E48C1338(v0[31], &qword_1ECF809D0, &qword_1E499D6C0);
        sub_1E4996A3C();
      }

      else
      {
        v44 = v0[26];
        v43 = v0[27];
        v46 = v0[24];
        v45 = v0[25];
        (*(v44 + 32))(v43, v0[31], v45);
        sub_1E48F2DA8(v46);
        (*(v44 + 8))(v43, v45);
      }

      v47 = v0[23];
      v48 = v0[21];
      v49 = v0[22];
      sub_1E48C1338(v0[32], &qword_1ECF809D0, &qword_1E499D6C0);
      v50 = OBJC_IVAR____TtC11ClockPoster21DigitalClockViewModel__alarmText;
      swift_beginAccess();
      (*(v49 + 16))(v47, v3 + v50, v48);
      sub_1E492F470(&qword_1ECF80390, MEMORY[0x1E6968848], MEMORY[0x1E6968860]);
      v51 = sub_1E4997E9C();
      v52 = *(v49 + 8);
      v52(v47, v48);
      if (v51)
      {
        v53 = v0[40];
        v54 = v0[24];
        v55 = v0[21];
        v56 = v0[22];
        sub_1E48C1338(v0[33], &qword_1ECF809D0, &qword_1E499D6C0);
        sub_1E48C1338(v53, &qword_1ECF7F728, &unk_1E499CAB0);
        swift_beginAccess();
        (*(v56 + 24))(v3 + v50, v54, v55);
        swift_endAccess();

        v31 = v0[53];
      }

      else
      {
        v31 = v0[53];
        v57 = v0[40];
        v58 = v0[33];
        v59 = v0[24];
        swift_getKeyPath();
        v60 = swift_task_alloc();
        *(v60 + 16) = v3;
        *(v60 + 24) = v59;
        v0[19] = v3;
        sub_1E4996FBC();

        sub_1E48C1338(v58, &qword_1ECF809D0, &qword_1E499D6C0);
        sub_1E48C1338(v57, &qword_1ECF7F728, &unk_1E499CAB0);
      }

      v52(v0[24], v0[21]);
      goto LABEL_26;
    }

    goto LABEL_16;
  }

  v26 = v0[25];
  sub_1E48C12D0(v0[30], v0[34], &qword_1ECF809D0, &qword_1E499D6C0);
  v27 = v24(v17 + v23, 1, v26);
  v28 = v0[34];
  if (v27 == 1)
  {
    v29 = v0[25];
    v30 = v0[26];
    sub_1E48C1338(v0[35], &qword_1ECF809D0, &qword_1E499D6C0);
    (*(v30 + 8))(v28, v29);
LABEL_16:
    sub_1E48C1338(v0[30], &qword_1ECF7F898, &qword_1E499D6F0);
    goto LABEL_17;
  }

  v69 = v0[30];
  v35 = v0[28];
  v37 = v0[25];
  v36 = v0[26];
  v66 = v0[35];
  (*(v36 + 32))(v35, v17 + v23, v37);
  sub_1E492F470(&qword_1ECF7F440, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
  v38 = sub_1E4997E9C();
  v39 = *(v36 + 8);
  v39(v35, v37);
  sub_1E48C1338(v66, &qword_1ECF809D0, &qword_1E499D6C0);
  v39(v28, v37);
  sub_1E48C1338(v69, &qword_1ECF809D0, &qword_1E499D6C0);
  if (v38)
  {
    goto LABEL_19;
  }

LABEL_17:
  v31 = v0[53];
  v32 = v0[40];
  v33 = v0[36];
  swift_getKeyPath();
  v34 = swift_task_alloc();
  *(v34 + 16) = v3;
  *(v34 + 24) = v33;
  v0[17] = v3;
  sub_1E492F470(&qword_1ECF7F2D8, type metadata accessor for DigitalClockViewModel, &unk_1E49A1DCC);
  sub_1E4996FBC();

  sub_1E48C1338(v32, &qword_1ECF7F728, &unk_1E499CAB0);

LABEL_26:
  sub_1E48C1338(v0[36], &qword_1ECF809D0, &qword_1E499D6C0);
  v0[53] = v31;
  v61 = sub_1E499813C();
  v0[54] = v61;
  v62 = swift_task_alloc();
  v0[55] = v62;
  *v62 = v0;
  v62[1] = sub_1E492989C;
  v63 = v0[45];
  v64 = v0[41];
  v65 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D9C8](v64, v61, v65, v63);
}

uint64_t sub_1E492A4A0()
{
  if (qword_1ECF7EB60 != -1)
  {
    swift_once();
  }

  v1 = qword_1ECF819C0;
  *(v0 + 40) = qword_1ECF819C0;

  return MEMORY[0x1EEE6DFA0](sub_1E492A538, v1, 0);
}

uint64_t sub_1E492A538()
{
  v1 = *(v0 + 40);
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16) && (v3 = sub_1E49483C4(1), (v4 & 1) != 0))
  {
    v5 = *(*(v2 + 56) + 8 * v3);
    swift_endAccess();
    v6 = v5;
  }

  else
  {
    swift_endAccess();
    v7 = objc_allocWithZone(type metadata accessor for LocationSource(0));
    v8 = sub_1E497C6B8(0xD000000000000011, 0x80000001E49A7E30, 0);
    swift_beginAccess();
    v6 = v8;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v1 + 112);
    *(v1 + 112) = 0x8000000000000000;
    sub_1E498681C(v6, 1, isUniquelyReferenced_nonNull_native);
    *(v1 + 112) = v12;
    swift_endAccess();
  }

  sub_1E497CCF8();

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1E492A684()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EC60, &unk_1E49A0DC0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v14 - v2;
  v4 = sub_1E499816C();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  sub_1E498DD1C(0, 0, v3, &unk_1E49A21F0, v5);

  sub_1E48C9EC0(v0 + 32);

  v6 = OBJC_IVAR____TtC11ClockPoster21DigitalClockViewModel__alarmText;
  v7 = sub_1E4996A4C();
  v8 = *(*(v7 - 8) + 8);
  v8(v0 + v6, v7);
  sub_1E48C1338(v0 + OBJC_IVAR____TtC11ClockPoster21DigitalClockViewModel__alarmTime, &qword_1ECF809D0, &qword_1E499D6C0);
  v8(v0 + OBJC_IVAR____TtC11ClockPoster21DigitalClockViewModel__dateText, v7);

  v9 = OBJC_IVAR____TtC11ClockPoster21DigitalClockViewModel__date;
  v10 = sub_1E4996D8C();
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  sub_1E48C1338(v0 + OBJC_IVAR____TtC11ClockPoster21DigitalClockViewModel__temperature, &qword_1ECF80368, &unk_1E49A2840);
  v11 = OBJC_IVAR____TtC11ClockPoster21DigitalClockViewModel___observationRegistrar;
  v12 = sub_1E499700C();
  (*(*(v12 - 8) + 8))(v0 + v11, v12);
  return v0;
}

uint64_t sub_1E492A90C()
{
  if (qword_1ECF7EB60 != -1)
  {
    swift_once();
  }

  v1 = qword_1ECF819C0;
  *(v0 + 40) = qword_1ECF819C0;

  return MEMORY[0x1EEE6DFA0](sub_1E492A9A4, v1, 0);
}

uint64_t sub_1E492A9A4()
{
  v1 = *(v0 + 40);
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16) && (v3 = sub_1E49483C4(1), (v4 & 1) != 0))
  {
    v5 = *(*(v2 + 56) + 8 * v3);
    swift_endAccess();
    v6 = v5;
  }

  else
  {
    swift_endAccess();
    v7 = objc_allocWithZone(type metadata accessor for LocationSource(0));
    v8 = sub_1E497C6B8(0xD000000000000011, 0x80000001E49A7E30, 0);
    swift_beginAccess();
    v6 = v8;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v1 + 112);
    *(v1 + 112) = 0x8000000000000000;
    sub_1E498681C(v6, 1, isUniquelyReferenced_nonNull_native);
    *(v1 + 112) = v12;
    swift_endAccess();
  }

  sub_1E497D07C();

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1E492AAF0()
{
  sub_1E492A684();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DigitalClockViewModel(uint64_t a1)
{
  result = qword_1ECF80310;
  if (!qword_1ECF80310)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E492AB9C(uint64_t a1)
{
  sub_1E4996A4C();
  if (v1 <= 0x3F)
  {
    sub_1E492E308(319);
    if (v2 <= 0x3F)
    {
      sub_1E4996D8C();
      if (v3 <= 0x3F)
      {
        sub_1E492E360(319);
        if (v4 <= 0x3F)
        {
          sub_1E499700C();
          if (v5 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

uint64_t sub_1E492AD70()
{
  swift_getKeyPath();
  sub_1E492F470(&qword_1ECF7F2D8, type metadata accessor for DigitalClockViewModel, &unk_1E49A1DCC);
  sub_1E4996FCC();
}

uint64_t sub_1E492AE14@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1E492F470(&qword_1ECF7F2D8, type metadata accessor for DigitalClockViewModel, &unk_1E49A1DCC);
  sub_1E4996FCC();

  *a2 = *(v3 + 24);
}

uint64_t sub_1E492AEEC@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_1E492F470(&qword_1ECF7F2D8, type metadata accessor for DigitalClockViewModel, &unk_1E49A1DCC);
  sub_1E4996FCC();

  swift_beginAccess();
  return sub_1E48C9E64(v1 + 32, a1);
}

uint64_t sub_1E492AFAC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1E492F470(&qword_1ECF7F2D8, type metadata accessor for DigitalClockViewModel, &unk_1E49A1DCC);
  sub_1E4996FCC();

  swift_beginAccess();
  return sub_1E48C9E64(v3 + 32, a2);
}

uint64_t sub_1E492B06C(uint64_t a1, uint64_t a2)
{
  sub_1E48C9E64(a2, v4);
  swift_beginAccess();
  sub_1E492F9D0(v4, a1 + 32);
  swift_endAccess();
  sub_1E492DD60();
  return sub_1E48C9EC0(v4);
}

uint64_t sub_1E492B0E0()
{
  swift_getKeyPath();
  sub_1E492F470(&qword_1ECF7F2D8, type metadata accessor for DigitalClockViewModel, &unk_1E49A1DCC);
  sub_1E4996FCC();

  v1 = *(v0 + 144);

  return v1;
}

double sub_1E492B190@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1E492F470(&qword_1ECF7F2D8, type metadata accessor for DigitalClockViewModel, &unk_1E49A1DCC);
  sub_1E4996FCC();

  v4 = *(v3 + 152);
  *a2 = *(v3 + 144);
  a2[1] = v4;

  return result;
}

double sub_1E492B23C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1E4926CD8(v1, v2);
}

uint64_t sub_1E492B27C()
{
  v1 = v0;
  v2 = sub_1E49979EC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  *&v25 = v0;
  sub_1E492F470(&qword_1ECF7F2D8, type metadata accessor for DigitalClockViewModel, &unk_1E49A1DCC);
  sub_1E4996FCC();

  if (*(v0 + 17) == 1)
  {
    (*(v3 + 104))(v5, *MEMORY[0x1E69814D8], v2);
    return sub_1E4997AAC();
  }

  else
  {
    v7 = sub_1E492F470(&qword_1ECF7F258, type metadata accessor for DigitalClockViewModel, &unk_1E49A1E40);
    v8 = *(v7 + 40);
    v9 = type metadata accessor for DigitalClockViewModel(0);
    v8(&v25, v9, v7);
    v35 = v28;
    v36 = v29;
    v37 = v30;
    v38 = v31;
    v32 = v25;
    v33 = v26;
    v34 = v27;
    v10 = sub_1E4921408();
    sub_1E48C8360(&v32);
    v11 = *(v10 + 16);

    if (v11 < 3)
    {
      v8(&v25, v9, v7);
      v35 = v28;
      v36 = v29;
      v37 = v30;
      v38 = v31;
      v32 = v25;
      v33 = v26;
      v34 = v27;
      v12 = sub_1E4921408();
      sub_1E48C8360(&v32);
      v13 = *(v12 + 16);

      if (v13 < 2)
      {
        v8(&v25, v9, v7);
        v35 = v28;
        v36 = v29;
        v37 = v30;
        v38 = v31;
        v32 = v25;
        v33 = v26;
        v34 = v27;
        v19 = sub_1E4921408();
        result = sub_1E48C8360(&v32);
        if (*(v19 + 16))
        {
          sub_1E48CD210(v19 + 32, &v25);

          v20 = *(&v26 + 1);
          v21 = v27;
          __swift_project_boxed_opaque_existential_1(&v25, *(&v26 + 1));
          (*(v21 + 40))(v20, v21);
          v22 = sub_1E49979DC();
          __swift_destroy_boxed_opaque_existential_0Tm(&v25);
          return v22;
        }

        else
        {
          __break(1u);
        }
      }

      else
      {
        (v8)(v9, v7);
        v35 = v28;
        v36 = v29;
        v37 = v30;
        v38 = v31;
        v32 = v25;
        v33 = v26;
        v34 = v27;
        v14 = sub_1E4921408();
        sub_1E48C8360(&v32);
        v15 = *(v14 + 16);
        if (v15)
        {
          v24 = MEMORY[0x1E69E7CC0];
          sub_1E499860C();
          v16 = v14 + 32;
          do
          {
            sub_1E48CD210(v16, &v25);
            v17 = *(&v26 + 1);
            v18 = v27;
            __swift_project_boxed_opaque_existential_1(&v25, *(&v26 + 1));
            (*(v18 + 40))(v17, v18);
            sub_1E49979DC();
            __swift_destroy_boxed_opaque_existential_0Tm(&v25);
            sub_1E49985EC();
            sub_1E499861C();
            sub_1E499862C();
            sub_1E49985FC();
            v16 += 40;
            --v15;
          }

          while (v15);

          return v24;
        }

        else
        {

          return MEMORY[0x1E69E7CC0];
        }
      }
    }

    else
    {
      swift_getKeyPath();
      *&v25 = v1;
      sub_1E4996FCC();

      swift_beginAccess();
      return 0xD000000000000023;
    }
  }

  return result;
}

uint64_t sub_1E492B87C()
{
  v1 = v0;
  v2 = sub_1E4996D8C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF809D0, &qword_1E499D6C0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v17 - v10;
  v12 = sub_1E4996A4C();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v18 = v0;
  sub_1E492F470(&qword_1ECF7F2D8, type metadata accessor for DigitalClockViewModel, &unk_1E49A1DCC);
  sub_1E4996FCC();

  v15 = OBJC_IVAR____TtC11ClockPoster21DigitalClockViewModel__alarmTime;
  swift_beginAccess();
  sub_1E48C12D0(v1 + v15, v11, &qword_1ECF809D0, &qword_1E499D6C0);
  sub_1E48C12D0(v11, v8, &qword_1ECF809D0, &qword_1E499D6C0);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    sub_1E48C1338(v8, &qword_1ECF809D0, &qword_1E499D6C0);
    sub_1E4996A3C();
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    sub_1E48F2DA8(v14);
    (*(v3 + 8))(v5, v2);
  }

  sub_1E48C1338(v11, &qword_1ECF809D0, &qword_1E499D6C0);
  return sub_1E4926E38(v14);
}

uint64_t sub_1E492BBD0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF809D0, &qword_1E499D6C0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC11ClockPoster21DigitalClockViewModel__alarmTime;
  swift_beginAccess();
  sub_1E48C12D0(v1 + v6, v5, &qword_1ECF809D0, &qword_1E499D6C0);
  v7 = sub_1E492EC3C(v5, a1);
  sub_1E48C1338(v5, &qword_1ECF809D0, &qword_1E499D6C0);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_1E492F470(&qword_1ECF7F2D8, type metadata accessor for DigitalClockViewModel, &unk_1E49A1DCC);
    sub_1E4996FBC();
  }

  else
  {
    sub_1E48C12D0(a1, v5, &qword_1ECF809D0, &qword_1E499D6C0);
    swift_beginAccess();
    sub_1E48EC048(v5, v1 + v6, &qword_1ECF809D0, &qword_1E499D6C0);
    swift_endAccess();
    sub_1E492B87C();
    sub_1E48C1338(v5, &qword_1ECF809D0, &qword_1E499D6C0);
  }

  return sub_1E48C1338(a1, &qword_1ECF809D0, &qword_1E499D6C0);
}

uint64_t sub_1E492BDEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF809D0, &qword_1E499D6C0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  sub_1E48C12D0(a2, &v9 - v5, &qword_1ECF809D0, &qword_1E499D6C0);
  v7 = OBJC_IVAR____TtC11ClockPoster21DigitalClockViewModel__alarmTime;
  swift_beginAccess();
  sub_1E48EC048(v6, a1 + v7, &qword_1ECF809D0, &qword_1E499D6C0);
  swift_endAccess();
  sub_1E492B87C();
  return sub_1E48C1338(v6, &qword_1ECF809D0, &qword_1E499D6C0);
}

BOOL sub_1E492BEE8()
{
  v1 = type metadata accessor for TimeString(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v9 = v0;
  sub_1E492F470(&qword_1ECF7F2D8, type metadata accessor for DigitalClockViewModel, &unk_1E49A1DCC);
  sub_1E4996FCC();

  v4 = *(v0 + 24);
  swift_getKeyPath();
  v9 = v4;
  sub_1E492F470(&qword_1ECF7EC58, type metadata accessor for RollingClockViewModel, &unk_1E499A2B8);

  sub_1E4996FCC();

  v5 = OBJC_IVAR____TtC11ClockPoster21RollingClockViewModel__timeString;
  swift_beginAccess();
  sub_1E49184D8(v4 + v5, v3);

  sub_1E492F914(v3, type metadata accessor for TimeString);
  v6 = sub_1E4997F6C();

  return v6 > 4;
}

uint64_t sub_1E492C0EC@<X0>(uint64_t *a2@<X1>, uint64_t (*a3)(void, __n128)@<X2>, uint64_t a4@<X8>)
{
  swift_getKeyPath();
  v11 = v4;
  sub_1E492F470(&qword_1ECF7F2D8, type metadata accessor for DigitalClockViewModel, &unk_1E49A1DCC);
  sub_1E4996FCC();

  v8 = *a2;
  swift_beginAccess();
  v9 = (a3)(0);
  return (*(*(v9 - 8) + 16))(a4, v11 + v8, v9);
}

uint64_t sub_1E492C214@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X4>, uint64_t (*a4)(void, __n128)@<X5>, uint64_t a5@<X8>)
{
  v8 = *a1;
  swift_getKeyPath();
  sub_1E492F470(&qword_1ECF7F2D8, type metadata accessor for DigitalClockViewModel, &unk_1E49A1DCC);
  sub_1E4996FCC();

  v9 = *a3;
  swift_beginAccess();
  v10 = (a4)(0);
  return (*(*(v10 - 8) + 16))(a5, v8 + v9, v10);
}

uint64_t sub_1E492C344(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  swift_beginAccess();
  v6 = sub_1E4996A4C();
  (*(*(v6 - 8) + 24))(a1 + v5, a2, v6);
  return swift_endAccess();
}

uint64_t sub_1E492C444(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1E492F470(&qword_1ECF7F2D8, type metadata accessor for DigitalClockViewModel, &unk_1E49A1DCC);
  sub_1E4996FCC();
}

uint64_t sub_1E492C4FC@<X0>(uint64_t *a1@<X0>, void *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1E492F470(&qword_1ECF7F2D8, type metadata accessor for DigitalClockViewModel, &unk_1E49A1DCC);
  sub_1E4996FCC();

  *a4 = *(v6 + *a3);
}

uint64_t sub_1E492C5E0()
{
  swift_getKeyPath();
  sub_1E492F470(&qword_1ECF7F2D8, type metadata accessor for DigitalClockViewModel, &unk_1E49A1DCC);
  sub_1E4996FCC();
}

uint64_t sub_1E492C68C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1E492F470(&qword_1ECF7F2D8, type metadata accessor for DigitalClockViewModel, &unk_1E49A1DCC);
  sub_1E4996FCC();

  *a2 = *(v3 + OBJC_IVAR____TtC11ClockPoster21DigitalClockViewModel__complicationSecondaryTintColor);
}

uint64_t sub_1E492C76C()
{
  v1 = v0;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80380, &qword_1E49A1F98);
  v75 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v74 = &v63 - v2;
  v69 = sub_1E49969DC();
  v68 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v67 = &v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FA50, &qword_1E49A1FA0);
  v65 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v64 = &v63 - v4;
  v73 = sub_1E4996ABC();
  v72 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v71 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v70 = &v63 - v7;
  v8 = sub_1E4996CBC();
  v9 = *(v8 - 8);
  v91 = v8;
  v92 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v90 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E4996BFC();
  v88 = *(v11 - 8);
  v89 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v86 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E4996C7C();
  v84 = *(v13 - 8);
  v85 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v81 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_1E4996CAC();
  v15 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v78 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v79 = &v63 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v80 = &v63 - v20;
  v21 = sub_1E4996D8C();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v63 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1E4996A4C();
  v94 = *(v25 - 8);
  v95 = v25;
  MEMORY[0x1EEE9AC00](v25);
  v77 = &v63 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v93 = &v63 - v28;
  swift_getKeyPath();
  v99 = v0;
  sub_1E492F470(&qword_1ECF7F2D8, type metadata accessor for DigitalClockViewModel, &unk_1E49A1DCC);
  sub_1E4996FCC();

  v29 = OBJC_IVAR____TtC11ClockPoster21DigitalClockViewModel__date;
  swift_beginAccess();
  v96 = v22;
  v97 = v21;
  (*(v22 + 16))(v24, v1 + v29, v21);
  swift_getKeyPath();
  v98 = v1;
  sub_1E4996FCC();

  v30 = *(v1 + OBJC_IVAR____TtC11ClockPoster21DigitalClockViewModel__complicationTintColor);
  swift_getKeyPath();
  v98 = v1;
  v82 = v30;

  sub_1E4996FCC();

  v87 = v1;
  v32 = *(v1 + 17);
  v33 = v78;
  MEMORY[0x1E691A0B0](v31);
  v34 = v81;
  sub_1E4996C4C();
  v35 = v79;
  sub_1E4996C9C();
  (*(v84 + 8))(v34, v85);
  v36 = *(v15 + 8);
  v37 = v33;
  v38 = v77;
  v39 = v83;
  v36(v37, v83);
  v40 = v86;
  sub_1E4996BEC();
  v41 = v80;
  sub_1E4996BCC();
  (*(v88 + 8))(v40, v89);
  v36(v35, v39);
  v42 = v90;
  sub_1E4996BBC();
  v36(v41, v39);
  sub_1E492F470(&qword_1ECF7FA58, MEMORY[0x1E6969350], MEMORY[0x1E6969348]);
  v43 = v38;
  v44 = v91;
  v89 = v24;
  sub_1E4996D6C();
  (*(v92 + 8))(v42, v44);
  if (v32 == 1)
  {
    v98 = v82;
    sub_1E48C1684();
    sub_1E4996A6C();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v63 - 2) = v46;
    swift_getKeyPath();
    sub_1E48F36FC();
    v47 = v64;
    sub_1E4996A8C();

    v48 = v68;
    v49 = v67;
    v50 = v69;
    (*(v68 + 104))(v67, *MEMORY[0x1E6968598], v69);
    v51 = v70;
    v52 = v82;
    v53 = v66;
    sub_1E4996A9C();
    (*(v48 + 8))(v49, v50);
    (*(v65 + 8))(v47, v53);
    v54 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v54);
    *(&v63 - 2) = v55;
    swift_getKeyPath();
    sub_1E48C1684();
    v56 = v74;
    sub_1E4996A8C();

    v98 = v52;
    v57 = v71;
    v58 = v76;
    sub_1E4996A9C();
    (*(v75 + 8))(v56, v58);
    sub_1E4996A2C();

    v59 = *(v72 + 8);
    v60 = v73;
    v59(v57, v73);
    v59(v51, v60);
  }

  (*(v96 + 8))(v89, v97);
  v61 = v93;
  (*(v94 + 32))(v93, v43, v95);
  return sub_1E4927834(v61);
}

uint64_t sub_1E492D294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = (a5)(0, a2, a3, a4);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1, v9);
  return a6(v11);
}

uint64_t sub_1E492D368(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E4996D8C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a2, v4, v6);
  v9 = OBJC_IVAR____TtC11ClockPoster21DigitalClockViewModel__date;
  swift_beginAccess();
  (*(v5 + 24))(a1 + v9, v8, v4);
  swift_endAccess();
  sub_1E492C76C();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1E492D4C8@<X0>(uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  swift_getKeyPath();
  v12 = v5;
  sub_1E492F470(&qword_1ECF7F2D8, type metadata accessor for DigitalClockViewModel, &unk_1E49A1DCC);
  sub_1E4996FCC();

  v10 = *a2;
  swift_beginAccess();
  return sub_1E48C12D0(v12 + v10, a5, a3, a4);
}

uint64_t sub_1E492D5A8@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X4>, uint64_t *a4@<X5>, uint64_t *a5@<X6>, uint64_t a6@<X8>)
{
  v10 = *a1;
  swift_getKeyPath();
  sub_1E492F470(&qword_1ECF7F2D8, type metadata accessor for DigitalClockViewModel, &unk_1E49A1DCC);
  sub_1E4996FCC();

  v11 = *a3;
  swift_beginAccess();
  return sub_1E48C12D0(v10 + v11, a6, a4, a5);
}

uint64_t sub_1E492D68C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v15 - v12;
  sub_1E48C12D0(a1, &v15 - v12, a5, a6);
  return a7(v13);
}

uint64_t sub_1E492D738(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80368, &unk_1E49A2840);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16[-v7];
  v9 = OBJC_IVAR____TtC11ClockPoster21DigitalClockViewModel__temperature;
  swift_beginAccess();
  sub_1E48C12D0(v1 + v9, v8, &qword_1ECF80368, &unk_1E49A2840);
  v10 = sub_1E492EF5C(v8, a1);
  sub_1E48C1338(v8, &qword_1ECF80368, &unk_1E49A2840);
  if (v10)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *&v16[-16] = v1;
    *&v16[-8] = a1;
    v17 = v1;
    sub_1E492F470(&qword_1ECF7F2D8, type metadata accessor for DigitalClockViewModel, &unk_1E49A1DCC);
    sub_1E4996FBC();
  }

  else
  {
    sub_1E48C12D0(a1, v8, &qword_1ECF80368, &unk_1E49A2840);
    swift_beginAccess();
    sub_1E48EC048(v8, v1 + v9, &qword_1ECF80368, &unk_1E49A2840);
    swift_endAccess();
    swift_getKeyPath();
    v17 = v1;
    sub_1E492F470(&qword_1ECF7F2D8, type metadata accessor for DigitalClockViewModel, &unk_1E49A1DCC);
    sub_1E4996FCC();

    sub_1E48C12D0(v1 + v9, v5, &qword_1ECF80368, &unk_1E49A2840);
    v12 = sub_1E492E9EC(v5);
    v14 = v13;
    sub_1E48C1338(v5, &qword_1ECF80368, &unk_1E49A2840);
    sub_1E4926CD8(v12, v14);
    sub_1E48C1338(v8, &qword_1ECF80368, &unk_1E49A2840);
  }

  return sub_1E48C1338(a1, &qword_1ECF80368, &unk_1E49A2840);
}

uint64_t sub_1E492DA30(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80368, &unk_1E49A2840);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v15 - v8;
  sub_1E48C12D0(a2, v15 - v8, &qword_1ECF80368, &unk_1E49A2840);
  v10 = OBJC_IVAR____TtC11ClockPoster21DigitalClockViewModel__temperature;
  swift_beginAccess();
  sub_1E48EC048(v9, a1 + v10, &qword_1ECF80368, &unk_1E49A2840);
  swift_endAccess();
  swift_getKeyPath();
  v15[1] = a1;
  sub_1E492F470(&qword_1ECF7F2D8, type metadata accessor for DigitalClockViewModel, &unk_1E49A1DCC);
  sub_1E4996FCC();

  sub_1E48C12D0(a1 + v10, v6, &qword_1ECF80368, &unk_1E49A2840);
  v11 = sub_1E492E9EC(v6);
  v13 = v12;
  sub_1E48C1338(v6, &qword_1ECF80368, &unk_1E49A2840);
  sub_1E4926CD8(v11, v13);
  return sub_1E48C1338(v9, &qword_1ECF80368, &unk_1E49A2840);
}

uint64_t sub_1E492DC08()
{
  swift_getKeyPath();
  sub_1E492F470(&qword_1ECF7F2D8, type metadata accessor for DigitalClockViewModel, &unk_1E49A1DCC);
  sub_1E4996FCC();

  return *(v0 + OBJC_IVAR____TtC11ClockPoster21DigitalClockViewModel__colorWheelIndex);
}

void sub_1E492DCB0(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1E492F470(&qword_1ECF7F2D8, type metadata accessor for DigitalClockViewModel, &unk_1E49A1DCC);
  sub_1E4996FCC();

  *a2 = *(v3 + OBJC_IVAR____TtC11ClockPoster21DigitalClockViewModel__colorWheelIndex);
}

void sub_1E492DD60()
{
  v1 = v0;
  v2 = sub_1E49979EC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  swift_getKeyPath();
  v29[0] = v0;
  sub_1E492F470(&qword_1ECF7F2D8, type metadata accessor for DigitalClockViewModel, &unk_1E49A1DCC);
  sub_1E4996FCC();

  if ((*(v0 + 17) & 1) == 0)
  {
    v12 = sub_1E4997A6C();
    sub_1E4926E60(v12);
    v13 = sub_1E492B27C();
    if (v16 != 3)
    {
      sub_1E48C06B0(v13, v14, v15, v16);
      swift_getKeyPath();
      v29[0] = v0;
      sub_1E4996FCC();

      swift_beginAccess();
      sub_1E48C9E64(v0 + 32, v29);
      ClockFaceLook.primaryUIColor.getter();
      sub_1E48C8360(v29);
      v23 = sub_1E49979DC();
      sub_1E4926FBC(v23);
      return;
    }

    sub_1E48C06B0(v13, v14, v15, 3u);
    if (qword_1ECF7EAD0 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    v29[0] = v0;
    sub_1E4996FCC();

    v17 = OBJC_IVAR____TtC11ClockPoster21DigitalClockViewModel__colorWheelIndex;
    v18 = *(v0 + OBJC_IVAR____TtC11ClockPoster21DigitalClockViewModel__colorWheelIndex);
    swift_beginAccess();
    if ((qword_1ECF818F8 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1E691BDE0](v18);
    }

    else
    {
      if ((v18 & 0x8000000000000000) != 0)
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v18 >= *((qword_1ECF818F8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v19 = *(qword_1ECF818F8 + 8 * v18 + 32);
    }

    swift_endAccess();
    v20 = sub_1E49979DC();
    sub_1E4926FBC(v20);
    swift_getKeyPath();
    v29[0] = v1;
    sub_1E4996FCC();

    v18 = *(v1 + v17);
    if (!(qword_1ECF818F8 >> 62))
    {
      v21 = *((qword_1ECF818F8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v22 = v21 - 1;
      if (!__OFSUB__(v21, 1))
      {
LABEL_13:
        if (v18 == v22)
        {
          v18 = 0;
        }

        else
        {
          swift_getKeyPath();
          v29[0] = v1;
          sub_1E4996FCC();

          v24 = *(v1 + v17);
          v18 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
            goto LABEL_32;
          }
        }

        swift_beginAccess();
        if ((qword_1ECF818F8 & 0xC000000000000001) == 0)
        {
          if ((v18 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v18 < *((qword_1ECF818F8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v25 = *(qword_1ECF818F8 + 8 * v18 + 32);
LABEL_21:
            swift_endAccess();
            v26 = sub_1E49979DC();
            sub_1E4927130(v26);
            return;
          }

          __break(1u);
LABEL_32:
          __break(1u);
          return;
        }

LABEL_29:
        MEMORY[0x1E691BDE0](v18);
        goto LABEL_21;
      }

      goto LABEL_27;
    }

LABEL_25:
    v27 = sub_1E49986EC();
    v22 = v27 - 1;
    if (!__OFSUB__(v27, 1))
    {
      goto LABEL_13;
    }

LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v6 = *MEMORY[0x1E69814D8];
  v7 = *(v3 + 104);
  v7(v5, v6, v2);
  v8 = sub_1E4997AAC();
  v9 = sub_1E4926FBC(v8);
  (v7)(v5, v6, v2, v9);
  v10 = sub_1E4997AAC();
  sub_1E4926E60(v10);
  if (*(v0 + OBJC_IVAR____TtC11ClockPoster21DigitalClockViewModel__complicationSecondaryTintColor))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v28 - 2) = v0;
    *(&v28 - 1) = 0;
    v29[0] = v0;
    sub_1E4996FBC();
  }
}

CTFontRef sub_1E492E268(double a1)
{
  sub_1E492BEE8();
  v2 = sub_1E4997EAC();

  v3 = CTFontCreateWithNameAndOptions(v2, round(a1 / 2.13), 0, 0x400uLL);

  return v3;
}

void sub_1E492E308(uint64_t a1)
{
  if (!qword_1ECF80920)
  {
    sub_1E4996D8C();
    v1 = sub_1E49984BC();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECF80920);
    }
  }
}

void sub_1E492E360(uint64_t a1)
{
  if (!qword_1ECF80320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECF816A0, &unk_1E49A5C90);
    v1 = sub_1E49984BC();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECF80320);
    }
  }
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
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

uint64_t sub_1E492E3E8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 112))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 96);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1E492E430(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 112) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 112) = 0;
    }

    if (a2)
    {
      *(result + 96) = -a2;
    }
  }

  return result;
}

unint64_t sub_1E492E4A0(uint64_t a1)
{
  result = sub_1E492E4C8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E492E4C8()
{
  result = qword_1ECF80328;
  if (!qword_1ECF80328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80328);
  }

  return result;
}

unint64_t sub_1E492E51C(void *a1)
{
  a1[1] = sub_1E492E55C();
  a1[2] = sub_1E492E5B0();
  a1[3] = sub_1E492E604();
  result = sub_1E492E658();
  a1[4] = result;
  return result;
}

unint64_t sub_1E492E55C()
{
  result = qword_1ECF80330;
  if (!qword_1ECF80330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80330);
  }

  return result;
}

unint64_t sub_1E492E5B0()
{
  result = qword_1ECF80338;
  if (!qword_1ECF80338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80338);
  }

  return result;
}

unint64_t sub_1E492E604()
{
  result = qword_1ECF80340;
  if (!qword_1ECF80340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80340);
  }

  return result;
}

unint64_t sub_1E492E658()
{
  result = qword_1ECF80348;
  if (!qword_1ECF80348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80348);
  }

  return result;
}

void (*sub_1E492E6B4(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_1E4925924(v2);
  return sub_1E48C2910;
}

uint64_t sub_1E492E724(uint64_t a1)
{
  result = sub_1E492F470(&qword_1ECF7F2D8, type metadata accessor for DigitalClockViewModel, &unk_1E49A1DCC);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1E492E77C(uint64_t a1)
{
  result = sub_1E492F470(&qword_1ECF7F258, type metadata accessor for DigitalClockViewModel, &unk_1E49A1E40);
  *(a1 + 8) = result;
  return result;
}

void sub_1E492E7D8(char a1)
{
  if (*(v1 + 17) == (a1 & 1))
  {
    *(v1 + 17) = a1 & 1;

    sub_1E492DD60();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1E492F470(&qword_1ECF7F2D8, type metadata accessor for DigitalClockViewModel, &unk_1E49A1DCC);
    sub_1E4996FBC();
  }
}

unint64_t sub_1E492E944()
{
  result = qword_1ECF80358;
  if (!qword_1ECF80358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80358);
  }

  return result;
}

uint64_t sub_1E492E9EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80368, &unk_1E49A2840);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v13 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF816A0, &unk_1E49A5C90);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  sub_1E48C12D0(a1, v4, &qword_1ECF80368, &unk_1E49A2840);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1E48C1338(v4, &qword_1ECF80368, &unk_1E49A2840);
    return 0;
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v10 = [objc_allocWithZone(MEMORY[0x1E696AD30]) init];
    [v10 setUnitStyle_];
    v11 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
    [v11 setNumberStyle_];
    [v11 setMaximumFractionDigits_];
    [v10 setNumberFormatter_];
    sub_1E492F270();
    v12 = sub_1E499842C();

    (*(v6 + 8))(v8, v5);
    return v12;
  }
}

uint64_t sub_1E492EC3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E4996D8C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF809D0, &qword_1E499D6C0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F898, &qword_1E499D6F0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v21 - v12;
  v15 = *(v14 + 56);
  sub_1E48C12D0(a1, &v21 - v12, &qword_1ECF809D0, &qword_1E499D6C0);
  sub_1E48C12D0(a2, &v13[v15], &qword_1ECF809D0, &qword_1E499D6C0);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_1E48C12D0(v13, v10, &qword_1ECF809D0, &qword_1E499D6C0);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_1E492F470(&qword_1ECF7F440, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
      v18 = sub_1E4997E9C();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_1E48C1338(v13, &qword_1ECF809D0, &qword_1E499D6C0);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1E48C1338(v13, &qword_1ECF7F898, &qword_1E499D6F0);
    v17 = 1;
    return v17 & 1;
  }

  sub_1E48C1338(v13, &qword_1ECF809D0, &qword_1E499D6C0);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_1E492EF5C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF816A0, &unk_1E49A5C90);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80368, &unk_1E49A2840);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF816B0, &qword_1E49A5CA0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v21 - v12;
  v15 = *(v14 + 56);
  sub_1E48C12D0(a1, &v21 - v12, &qword_1ECF80368, &unk_1E49A2840);
  sub_1E48C12D0(a2, &v13[v15], &qword_1ECF80368, &unk_1E49A2840);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_1E48C12D0(v13, v10, &qword_1ECF80368, &unk_1E49A2840);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_1E492F2BC();
      v18 = sub_1E4997E9C();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_1E48C1338(v13, &qword_1ECF80368, &unk_1E49A2840);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1E48C1338(v13, &qword_1ECF816B0, &qword_1E49A5CA0);
    v17 = 1;
    return v17 & 1;
  }

  sub_1E48C1338(v13, &qword_1ECF80368, &unk_1E49A2840);
  v17 = 0;
  return v17 & 1;
}