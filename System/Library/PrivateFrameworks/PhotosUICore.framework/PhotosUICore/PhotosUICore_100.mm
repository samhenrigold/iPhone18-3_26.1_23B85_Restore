unint64_t sub_1A4913A38(unint64_t a1)
{
  v1 = a1;
  v59 = *MEMORY[0x1E69E9840];
  v55[0] = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
    goto LABEL_67;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1A524E2B4())
  {
    if (i)
    {
      v3 = 0;
      do
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v4 = MEMORY[0x1A59097F0](v3, v1);
        }

        else
        {
          if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_62;
          }

          v4 = *(v1 + 8 * v3 + 32);
        }

        v5 = v4;
        v6 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          __break(1u);
LABEL_62:
          __break(1u);
          goto LABEL_63;
        }

        [v4 videoStickerSuggestionScore];
        v8 = v7;
        PLLiveStickerSuggestionConfidenceThreshold();
        if (v9 > v8)
        {
        }

        else
        {
          sub_1A524E514();
          sub_1A524E564();
          sub_1A524E574();
          sub_1A524E524();
        }

        ++v3;
      }

      while (v6 != i);
      v1 = v55[0];
      v55[0] = MEMORY[0x1E69E7CC0];
      if ((v1 & 0x8000000000000000) == 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v1 = MEMORY[0x1E69E7CC0];
      v55[0] = MEMORY[0x1E69E7CC0];
      if ((MEMORY[0x1E69E7CC0] & 0x8000000000000000) == 0)
      {
LABEL_17:
        if ((v1 & 0x4000000000000000) == 0)
        {
          v10 = *(v1 + 16);
          goto LABEL_19;
        }
      }
    }

    v10 = sub_1A524E2B4();
LABEL_19:
    v11 = MEMORY[0x1E69E7CC0];
    if (!v10)
    {
      break;
    }

    v12 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x1A59097F0](v12, v1);
      }

      else
      {
        if (v12 >= *(v1 + 16))
        {
          goto LABEL_64;
        }

        v13 = *(v1 + 8 * v12 + 32);
      }

      v14 = v13;
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if ([v13 visibilityScore] <= 1)
      {
      }

      else
      {
        sub_1A524E514();
        sub_1A524E564();
        sub_1A524E574();
        sub_1A524E524();
      }

      ++v12;
      if (v15 == v10)
      {
        v16 = v55[0];
        if ((v55[0] & 0x8000000000000000) == 0)
        {
          goto LABEL_33;
        }

        goto LABEL_69;
      }
    }

LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    ;
  }

  v16 = MEMORY[0x1E69E7CC0];
  if ((MEMORY[0x1E69E7CC0] & 0x8000000000000000) == 0)
  {
LABEL_33:
    if ((v16 & 0x4000000000000000) == 0)
    {
      v17 = *(v16 + 16);
      goto LABEL_35;
    }
  }

LABEL_69:
  v17 = sub_1A524E2B4();
LABEL_35:
  if (!v17)
  {
    v16 = v1;
  }

  sub_1A3CB8F68();
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1A52F9DE0;
  v19 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v20 = sub_1A524C634();
  v21 = [v19 initWithKey:v20 ascending:0];

  *(v18 + 32) = v21;
  v22 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v23 = sub_1A524C634();
  v24 = [v22 initWithKey:v23 ascending:0];

  *(v18 + 40) = v24;
  sub_1A3C52C70(0, &qword_1EB145058, &off_1E7721738);
  v25 = sub_1A524CA14();

  sub_1A3C52C70(0, &qword_1EB126B60, 0x1E696AEB0);
  v26 = sub_1A524CA14();

  v27 = [v25 sortedArrayUsingDescriptors_];

  v28 = sub_1A524CA34();
  v1 = sub_1A4914138(v28);

  if (!v1)
  {
    return v16;
  }

  v58 = v11;
  v56 = MEMORY[0x1E69E7CD0];
  v57 = MEMORY[0x1E69E7CD0];
  v55[0] = 0;
  v55[1] = 0;
  if (v1 >> 62)
  {
    v29 = sub_1A524E2B4();
    if (!v29)
    {
      goto LABEL_71;
    }

LABEL_40:
    v30 = 0;
    v16 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v31 = MEMORY[0x1A59097F0](v30, v1);
      }

      else
      {
        if (v30 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_66;
        }

        v31 = *(v1 + 32 + 8 * v30);
      }

      v32 = v31;
      if (__OFADD__(v30++, 1))
      {
        goto LABEL_65;
      }

      [v53 frameForPlaybackRecord:v31 minPlayableSize:v55];
      x = v60.origin.x;
      y = v60.origin.y;
      width = v60.size.width;
      height = v60.size.height;
      v38 = fabs(round(CGRectGetMinX(v60)));
      v61.origin.x = x;
      v61.origin.y = y;
      v61.size.width = width;
      v61.size.height = height;
      MinY = CGRectGetMinY(v61);
      v40 = v57;
      if (*(v57 + 16))
      {
        v41 = sub_1A524EC84();
        v42 = -1 << *(v40 + 32);
        v43 = v41 & ~v42;
        if ((*(v40 + 56 + ((v43 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v43))
        {
          break;
        }
      }

LABEL_52:
      v45 = fabs(round(MinY));
      v46 = v56;
      if (*(v56 + 16) && (v47 = sub_1A524EC84(), v48 = -1 << *(v46 + 32), v49 = v47 & ~v48, ((*(v46 + 56 + ((v49 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v49) & 1) != 0))
      {
        v50 = ~v48;
        while (*(*(v46 + 48) + 8 * v49) != v45)
        {
          v49 = (v49 + 1) & v50;
          if (((*(v46 + 56 + ((v49 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v49) & 1) == 0)
          {
            goto LABEL_57;
          }
        }

LABEL_41:

        if (v30 == v29)
        {
          goto LABEL_60;
        }
      }

      else
      {
LABEL_57:
        sub_1A491473C(v54, v38);
        sub_1A491473C(v54, v45);
        v51 = v32;
        MEMORY[0x1A5907D70]();
        if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1A524CA74();
        }

        sub_1A524CAE4();

        v16 = v58;
        if (v30 == v29)
        {
LABEL_60:

          goto LABEL_72;
        }
      }
    }

    v44 = ~v42;
    while (*(*(v40 + 48) + 8 * v43) != v38)
    {
      v43 = (v43 + 1) & v44;
      if (((*(v40 + 56 + ((v43 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v43) & 1) == 0)
      {
        goto LABEL_52;
      }
    }

    goto LABEL_41;
  }

  v29 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v29)
  {
    goto LABEL_40;
  }

LABEL_71:

  v16 = MEMORY[0x1E69E7CC0];
LABEL_72:

  return v16;
}

uint64_t sub_1A4914138(uint64_t a1)
{
  v6 = MEMORY[0x1E69E7CC0];
  v2 = *(a1 + 16);
  sub_1A524E554();
  if (!v2)
  {
    return v6;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_1A3C2F0BC(i, v5);
    sub_1A3C52C70(0, &qword_1EB145058, &off_1E7721738);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_1A524E514();
    sub_1A524E564();
    sub_1A524E574();
    sub_1A524E524();
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

id PhotosContentInlinePlaybackController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PhotosContentInlinePlaybackController.init()()
{
  *&v0[OBJC_IVAR___PXPhotosContentInlinePlaybackController_numberOfItemsToPlay] = 0;
  v0[OBJC_IVAR___PXPhotosContentInlinePlaybackController_enableSpatialPhotoPlayback] = 0;
  *&v0[OBJC_IVAR___PXPhotosContentInlinePlaybackController_scrollViewSpeedometer] = 0;
  swift_unknownObjectWeakInit();
  v1 = &v0[OBJC_IVAR___PXPhotosContentInlinePlaybackController_scrollViewSpeedometerObservation];
  v2 = type metadata accessor for PhotosContentInlinePlaybackController();
  *v1 = 0;
  v1[1] = 0;
  v4.receiver = v0;
  v4.super_class = v2;
  return objc_msgSendSuper2(&v4, sel_init);
}

id PhotosContentInlinePlaybackController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotosContentInlinePlaybackController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A491473C(double *a1, double a2)
{
  v5 = *v2;
  v6 = sub_1A524EC84();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (1)
    {
      v10 = *(v5 + 48);
      if (*(v10 + 8 * v8) == a2)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    a2 = *(v10 + 8 * v8);
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    sub_1A4914A58(v8, isUniquelyReferenced_nonNull_native, a2);
    *v2 = v13;
    result = 1;
  }

  *a1 = a2;
  return result;
}

void sub_1A4914830(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1A49151A0(0);
  v4 = sub_1A524E3B4();
  v5 = v4;
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
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      v18 = sub_1A524EC84();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

unint64_t sub_1A4914A58(unint64_t result, char a2, double a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a2 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a2)
  {
    sub_1A4914830(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = result;
      sub_1A4914B84();
      result = v7;
      goto LABEL_12;
    }

    sub_1A4914CB8(v5 + 1);
  }

  v8 = *v3;
  v9 = sub_1A524EC84();
  v10 = -1 << *(v8 + 32);
  result = v9 & ~v10;
  if ((*(v8 + 56 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 8 * result) != a3)
    {
      result = (result + 1) & v11;
      if (((*(v8 + 56 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (result >> 6) + 56) |= 1 << result;
  *(*(v12 + 48) + 8 * result) = a3;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1A524EB74();
  __break(1u);
  return result;
}

void sub_1A4914B84()
{
  v1 = v0;
  sub_1A49151A0(0);
  v2 = *v0;
  v3 = sub_1A524E3A4();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
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
}

void sub_1A4914CB8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1A49151A0(0);
  v4 = sub_1A524E3B4();
  v5 = v4;
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
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      v17 = sub_1A524EC84();
      v18 = -1 << *(v5 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_24;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v2 = v5;
  }
}

void *sub_1A4914EAC(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = sub_1A524E2B4();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x1E69E7CC0];
  }

  v4 = v3;
  v5 = sub_1A40C9D70(v3, 0);
  sub_1A4914F40((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1A4914F40(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1A524E2B4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1A524E2B4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1A49150F0(0);
          sub_1A4915158(&qword_1EB145068, 255, sub_1A49150F0, MEMORY[0x1E69E6340]);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_1A3D5C268(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1A3C52C70(0, &qword_1EB145058, &off_1E7721738);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1A49150F0(uint64_t a1)
{
  if (!qword_1EB145060)
  {
    sub_1A3C52C70(255, &qword_1EB145058, &off_1E7721738);
    v1 = sub_1A524CB74();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB145060);
    }
  }
}

uint64_t sub_1A4915158(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A49151A0(uint64_t a1)
{
  if (!qword_1EB145070)
  {
    sub_1A3FBE730();
    v1 = sub_1A524E3E4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB145070);
    }
  }
}

void sub_1A49151FC(uint64_t *a1, id *a2, uint64_t *a3, void *a4, uint64_t a5, double a6)
{
  v7 = *a1;
  v70 = a4;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_60;
  }

  while (1)
  {
    *a1 = v7;
    v9 = (v7 + 16);
    v8 = *(v7 + 16);
    if (v8 < 2)
    {
      break;
    }

    v74 = a2;
    v61 = v7;
    v62 = (v7 + 16);
    while (1)
    {
      v10 = *a3;
      if (!*a3)
      {

        __break(1u);
        return;
      }

      v67 = v8;
      v11 = 2 * v8;
      v66 = (v7 + v11 * 8);
      v12 = *(v7 + v11 * 8);
      __dst = &v9[v11];
      v14 = &v9[v11];
      v13 = v9[v11];
      v68 = v14[1];
      v69 = v12;
      v15 = 8 * v12;
      v16 = (v10 + 8 * v12);
      v17 = 8 * v13;
      v18 = (v10 + 8 * v13);
      v19 = (v10 + 8 * v68);
      v20 = 8 * v13 - 8 * v12;
      v7 = 8 * v68 - 8 * v13;
      if (v20 >= v7)
      {
        if (v18 != a2 || v19 <= a2)
        {
          memmove(a2, (v10 + 8 * v13), 8 * v68 - 8 * v13);
        }

        v73 = v70;
        v24 = a2;
        v23 = a2 + v7;
        if (v7 >= 1 && v17 > v15)
        {
LABEL_35:
          v43 = v18 - 1;
          v44 = v19;
          v7 = v23;
          v71 = v18 - 1;
          do
          {
            v45 = *(v7 - 8);
            v7 -= 8;
            v46 = *v43;
            v47 = v45;
            v48 = v46;
            [v73 frameForPlaybackRecord:v47 minPlayableSize:a5];
            width = v85.size.width;
            height = v85.size.height;
            y = v85.origin.y;
            x = v85.origin.x;
            v51 = vabdd_f64(a6, CGRectGetMinY(v85));
            [v73 frameForPlaybackRecord:v48 minPlayableSize:a5];
            v52 = v86.origin.x;
            v53 = v86.origin.y;
            v54 = v86.size.width;
            v55 = v86.size.height;
            v56 = vabdd_f64(a6, CGRectGetMinY(v86));
            if (v51 == v56)
            {
              v87.origin.y = y;
              v87.origin.x = x;
              v87.size.width = width;
              v87.size.height = height;
              MinX = CGRectGetMinX(v87);
              v88.origin.x = v52;
              v88.origin.y = v53;
              v88.size.width = v54;
              v88.size.height = v55;
              v58 = CGRectGetMinX(v88);

              v19 = v44 - 1;
              if (MinX < v58)
              {
                goto LABEL_43;
              }
            }

            else
            {

              v19 = v44 - 1;
              if (v51 < v56)
              {
LABEL_43:
                if (v44 != v18)
                {
                  *v19 = *v71;
                }

                if (v23 <= v74 || (--v18, v16 >= v71))
                {
                  v24 = v74;
                  v18 = v71;
                  goto LABEL_49;
                }

                goto LABEL_35;
              }
            }

            v43 = v18 - 1;
            if (v23 != v44)
            {
              *v19 = *v7;
            }

            v23 = v7;
            v44 = v19;
          }

          while (v7 > v74);
          v23 = v7;
          v24 = v74;
        }
      }

      else
      {
        v21 = v16 == a2 && v18 > a2;
        if (!v21)
        {
          memmove(a2, (v10 + 8 * v12), 8 * v13 - 8 * v12);
        }

        v72 = v70;
        v22 = a2;
        v23 = a2 + v20;
        v21 = v20 < 1;
        v24 = v22;
        if (!v21 && 8 * v68 > v17)
        {
          do
          {
            v26 = *v24;
            v27 = *v18;
            v28 = v26;
            v7 = &selRef_flashFiredValues;
            [v72 frameForPlaybackRecord:v27 minPlayableSize:a5];
            v29 = v81.size.width;
            v30 = v81.size.height;
            v75 = v81.origin.y;
            v77 = v81.origin.x;
            v31 = vabdd_f64(a6, CGRectGetMinY(v81));
            [v72 frameForPlaybackRecord:v28 minPlayableSize:a5];
            v32 = v82.origin.x;
            v33 = v82.origin.y;
            v34 = v82.size.width;
            v35 = v82.size.height;
            v36 = vabdd_f64(a6, CGRectGetMinY(v82));
            if (v31 == v36)
            {
              v83.origin.y = v75;
              v83.origin.x = v77;
              v83.size.width = v29;
              v83.size.height = v30;
              v37 = CGRectGetMinX(v83);
              v84.origin.x = v32;
              v84.origin.y = v33;
              v84.size.width = v34;
              v84.size.height = v35;
              v38 = CGRectGetMinX(v84);

              if (v37 >= v38)
              {
                goto LABEL_21;
              }
            }

            else
            {

              if (v31 >= v36)
              {
LABEL_21:
                v39 = v24;
                v40 = v16 == v24++;
                if (v40)
                {
                  goto LABEL_23;
                }

LABEL_22:
                *v16 = *v39;
                goto LABEL_23;
              }
            }

            v39 = v18;
            v40 = v16 == v18++;
            if (!v40)
            {
              goto LABEL_22;
            }

LABEL_23:
            ++v16;
          }

          while (v24 < v23 && v18 < v19);
        }

        v18 = v16;
      }

LABEL_49:
      if (v18 != v24 || v18 >= (v24 + ((v23 - v24 + (v23 - v24 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
      {
        memmove(v18, v24, 8 * ((v23 - v24) / 8));
      }

      a2 = v74;
      if (v68 < v69)
      {
        break;
      }

      v9 = v62;
      v59 = *v62;
      if ((v67 - 2) >= *v62)
      {
        goto LABEL_58;
      }

      *v66 = v69;
      v66[1] = v68;
      if (v59 < v67)
      {
        goto LABEL_59;
      }

      v60 = v59 - 1;
      memmove(__dst, __dst + 16, 16 * (v59 - v67));
      v7 = v61;
      *(v61 + 16) = v60;
      *a1 = v61;
      v8 = *(v61 + 16);
      if (v8 <= 1)
      {
        goto LABEL_56;
      }
    }

    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    v7 = sub_1A3D86884(v7);
  }

LABEL_56:
}

void sub_1A4915708(id **a1, double a2, uint64_t a3, uint64_t *a4, uint64_t a5, void *a6, uint64_t a7)
{
  v205 = MEMORY[0x1E69E7CC0];
  v7 = a4[1];
  v182 = a6;
  if (v7 >= 1)
  {
    v8 = 0;
    v9 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v10 = v8;
      v11 = v8 + 1;
      if (v8 + 1 < v7)
      {
        v12 = *a4;
        v184 = v8;
        v13 = *(*a4 + 8 * v8);
        v14 = *(*a4 + 8 * v11);
        v15 = v13;
        [v182 frameForPlaybackRecord:v14 minPlayableSize:a7];
        width = v206.size.width;
        height = v206.size.height;
        y = v206.origin.y;
        __dst = v206.origin.x;
        v18 = vabdd_f64(a2, CGRectGetMinY(v206));
        [v182 frameForPlaybackRecord:v15 minPlayableSize:a7];
        x = v207.origin.x;
        v20 = v207.origin.y;
        v21 = v207.size.width;
        v22 = v207.size.height;
        v23 = vabdd_f64(a2, CGRectGetMinY(v207));
        if (v18 == v23)
        {
          v208.origin.y = y;
          v208.origin.x = __dst;
          v208.size.width = width;
          v208.size.height = height;
          MinX = CGRectGetMinX(v208);
          v209.origin.x = x;
          v209.origin.y = v20;
          v209.size.width = v21;
          v209.size.height = v22;
          v25 = CGRectGetMinX(v209);

          v26 = MinX < v25;
        }

        else
        {

          v26 = v18 < v23;
        }

        v27 = v26;
        __src = v27;
        v173 = v9;
        v28 = (v12 + 8 * v184 + 16);
        v29 = 8 * v184 + 8;
        v30 = v7;
        do
        {
          v34 = v11;
          v35 = v29;
          if (++v11 >= v30)
          {
            break;
          }

          v36 = *(v28 - 1);
          v37 = *v28;
          v38 = v36;
          [v182 frameForPlaybackRecord:v37 minPlayableSize:a7];
          v39 = v210.size.width;
          v40 = v210.size.height;
          v195 = v210.origin.y;
          __dsta = v210.origin.x;
          v41 = vabdd_f64(a2, CGRectGetMinY(v210));
          [v182 frameForPlaybackRecord:v38 minPlayableSize:a7];
          v42 = v211.origin.x;
          v43 = v211.origin.y;
          v44 = v211.size.width;
          v45 = v211.size.height;
          v46 = vabdd_f64(a2, CGRectGetMinY(v211));
          if (v41 == v46)
          {
            v212.origin.y = v195;
            v212.origin.x = __dsta;
            v212.size.width = v39;
            v212.size.height = v40;
            v47 = CGRectGetMinX(v212);
            v213.origin.x = v42;
            v213.origin.y = v43;
            v213.size.width = v44;
            v213.size.height = v45;
            v48 = CGRectGetMinX(v213);

            v31 = v47 < v48;
          }

          else
          {

            v31 = v41 < v46;
          }

          v32 = v31;
          ++v28;
          v29 = v35 + 8;
          v33 = __src == v32;
          v30 = v7;
        }

        while (v33);
        if (__src)
        {
          v10 = v184;
          if (v11 < v184)
          {
            goto LABEL_164;
          }

          if (v184 < v11)
          {
            v49 = v184;
            v50 = 8 * v184;
            do
            {
              if (v49 != v34)
              {
                v53 = *a4;
                if (!*a4)
                {
                  goto LABEL_169;
                }

                v51 = *(v53 + v50);
                *(v53 + v50) = *(v53 + v35);
                *(v53 + v35) = v51;
              }

              ++v49;
              v35 -= 8;
              v50 += 8;
            }

            while (v49 < v34--);
          }

          v9 = v173;
        }

        else
        {
          v9 = v173;
          v10 = v184;
        }
      }

      v54 = a4[1];
      if (v11 >= v54)
      {
        goto LABEL_174;
      }

      if (__OFSUB__(v11, v10))
      {
        goto LABEL_163;
      }

      if (v11 - v10 >= a5)
      {
        goto LABEL_174;
      }

      v55 = &v10[a5];
      if (__OFADD__(v10, a5))
      {
        goto LABEL_165;
      }

      if (v55 >= v54)
      {
        v55 = a4[1];
      }

      if (v55 < v10)
      {
        goto LABEL_166;
      }

      if (v11 == v55)
      {
LABEL_174:
        if (v11 < v10)
        {
          goto LABEL_162;
        }
      }

      else
      {
        v174 = v9;
        v56 = *a4;
        v57 = *a4 + 8 * v11 - 8;
        v185 = v10;
        __srca = v55;
        v58 = &v10[-v11];
        do
        {
          v170 = v11;
          v59 = *(v56 + 8 * v11);
          v60 = v58;
          v191 = v57;
          do
          {
            v61 = *v57;
            v62 = v59;
            v63 = v61;
            [v182 frameForPlaybackRecord:v62 minPlayableSize:a7];
            v64 = v214.size.width;
            v65 = v214.size.height;
            v196 = v214.origin.y;
            __dstb = v214.origin.x;
            v66 = vabdd_f64(a2, CGRectGetMinY(v214));
            [v182 frameForPlaybackRecord:v63 minPlayableSize:a7];
            v67 = v215.origin.x;
            v68 = v215.origin.y;
            v69 = v215.size.width;
            v70 = v215.size.height;
            v71 = vabdd_f64(a2, CGRectGetMinY(v215));
            if (v66 == v71)
            {
              v216.origin.y = v196;
              v216.origin.x = __dstb;
              v216.size.width = v64;
              v216.size.height = v65;
              v72 = CGRectGetMinX(v216);
              v217.origin.x = v67;
              v217.origin.y = v68;
              v217.size.width = v69;
              v217.size.height = v70;
              v73 = CGRectGetMinX(v217);

              if (v72 >= v73)
              {
                break;
              }
            }

            else
            {

              if (v66 >= v71)
              {
                break;
              }
            }

            if (!v56)
            {
              goto LABEL_167;
            }

            v74 = *v57;
            v59 = *(v57 + 8);
            *v57 = v59;
            *(v57 + 8) = v74;
            v57 -= 8;
          }

          while (!__CFADD__(v60++, 1));
          ++v11;
          v57 = v191 + 8;
          --v58;
        }

        while ((v170 + 1) != __srca);
        v11 = __srca;
        v9 = v174;
        v10 = v185;
        if (__srca < v185)
        {
          goto LABEL_162;
        }
      }

      v171 = v11;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_1A3D8598C(0, *(v9 + 2) + 1, 1, v9);
      }

      v77 = *(v9 + 2);
      v76 = *(v9 + 3);
      v78 = v77 + 1;
      v79 = v11;
      if (v77 >= v76 >> 1)
      {
        v165 = sub_1A3D8598C((v76 > 1), v77 + 1, 1, v9);
        v79 = v11;
        v9 = v165;
      }

      *(v9 + 2) = v78;
      v80 = v9 + 32;
      v81 = &v9[16 * v77 + 32];
      *v81 = v10;
      *(v81 + 1) = v79;
      v205 = v9;
      v82 = *a1;
      if (!*a1)
      {
        goto LABEL_170;
      }

      if (v77)
      {
        break;
      }

LABEL_3:
      v7 = a4[1];
      v8 = v171;
      if (v171 >= v7)
      {
        goto LABEL_145;
      }
    }

    __srcb = *a1;
    v172 = v9 + 32;
    v175 = v9;
    while (1)
    {
      v83 = v78 - 1;
      if (v78 >= 4)
      {
        break;
      }

      if (v78 == 3)
      {
        v84 = *(v9 + 4);
        v85 = *(v9 + 5);
        v94 = __OFSUB__(v85, v84);
        v86 = v85 - v84;
        v87 = v94;
LABEL_73:
        if (v87)
        {
          goto LABEL_153;
        }

        v100 = &v9[16 * v78];
        v102 = *v100;
        v101 = *(v100 + 1);
        v103 = __OFSUB__(v101, v102);
        v104 = v101 - v102;
        v105 = v103;
        if (v103)
        {
          goto LABEL_156;
        }

        v106 = &v80[16 * v83];
        v108 = *v106;
        v107 = *(v106 + 1);
        v94 = __OFSUB__(v107, v108);
        v109 = v107 - v108;
        if (v94)
        {
          goto LABEL_159;
        }

        if (__OFADD__(v104, v109))
        {
          goto LABEL_160;
        }

        if (v104 + v109 >= v86)
        {
          if (v86 < v109)
          {
            v83 = v78 - 2;
          }

          goto LABEL_94;
        }

        goto LABEL_87;
      }

      v110 = &v9[16 * v78];
      v112 = *v110;
      v111 = *(v110 + 1);
      v94 = __OFSUB__(v111, v112);
      v104 = v111 - v112;
      v105 = v94;
LABEL_87:
      if (v105)
      {
        goto LABEL_155;
      }

      v113 = &v80[16 * v83];
      v115 = *v113;
      v114 = *(v113 + 1);
      v94 = __OFSUB__(v114, v115);
      v116 = v114 - v115;
      if (v94)
      {
        goto LABEL_158;
      }

      if (v116 < v104)
      {
        goto LABEL_3;
      }

LABEL_94:
      if (v83 - 1 >= v78)
      {
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
LABEL_159:
        __break(1u);
LABEL_160:
        __break(1u);
LABEL_161:
        __break(1u);
LABEL_162:
        __break(1u);
LABEL_163:
        __break(1u);
LABEL_164:
        __break(1u);
LABEL_165:
        __break(1u);
LABEL_166:
        __break(1u);
LABEL_167:

        __break(1u);
LABEL_168:

        __break(1u);
LABEL_169:

        __break(1u);
LABEL_170:

        __break(1u);
LABEL_171:

        __break(1u);
        return;
      }

      v121 = *a4;
      if (!*a4)
      {
        goto LABEL_168;
      }

      v178 = &v80[16 * v83 - 16];
      v179 = v83;
      v177 = &v80[16 * v83];
      v122 = *v177;
      v180 = *(v177 + 1);
      v181 = *v178;
      v123 = 8 * *v178;
      v124 = (v121 + v123);
      v125 = 8 * *v177;
      v126 = (v121 + v125);
      v127 = (v121 + 8 * v180);
      v128 = v125 - v123;
      v129 = 8 * v180 - v125;
      if (v125 - v123 >= v129)
      {
        if (v126 != v82 || v127 <= v82)
        {
          memmove(v82, (v121 + 8 * v122), 8 * v180 - 8 * v122);
        }

        v187 = v182;
        v130 = (v82 + v129);
        if (v129 < 1 || v125 <= v123)
        {
          v131 = __srcb;
          v163 = v126;
          goto LABEL_135;
        }

        while (1)
        {
          v146 = v126 - 1;
          v147 = v127;
          v148 = v130;
          v183 = v126 - 1;
          while (1)
          {
            v149 = *--v148;
            v150 = *v146;
            v151 = v149;
            v152 = v150;
            [v187 frameForPlaybackRecord:v151 minPlayableSize:a7];
            v153 = v222.size.width;
            v154 = v222.size.height;
            v193 = v222.origin.y;
            v198 = v222.origin.x;
            v155 = vabdd_f64(a2, CGRectGetMinY(v222));
            [v187 frameForPlaybackRecord:v152 minPlayableSize:a7];
            v156 = v223.origin.x;
            v157 = v223.origin.y;
            v158 = v223.size.width;
            v159 = v223.size.height;
            v160 = vabdd_f64(a2, CGRectGetMinY(v223));
            if (v155 != v160)
            {
              break;
            }

            v224.origin.y = v193;
            v224.origin.x = v198;
            v224.size.width = v153;
            v224.size.height = v154;
            v161 = CGRectGetMinX(v224);
            v225.origin.x = v156;
            v225.origin.y = v157;
            v225.size.width = v158;
            v225.size.height = v159;
            v162 = CGRectGetMinX(v225);

            v127 = v147 - 1;
            if (v161 < v162)
            {
              goto LABEL_126;
            }

LABEL_124:
            v146 = v126 - 1;
            if (v130 != v147)
            {
              *v127 = *v148;
            }

            v130 = v148;
            v147 = v127;
            if (v148 <= __srcb)
            {
              v130 = v148;
              v131 = __srcb;
              v163 = v126;
              goto LABEL_135;
            }
          }

          v127 = v147 - 1;
          if (v155 >= v160)
          {
            goto LABEL_124;
          }

LABEL_126:
          v163 = v126 - 1;
          if (v147 != v126)
          {
            *v127 = *v183;
          }

          v131 = __srcb;
          if (v130 > __srcb)
          {
            --v126;
            if (v124 < v183)
            {
              continue;
            }
          }

          goto LABEL_135;
        }
      }

      if (v124 != v82 || v126 <= v82)
      {
        memmove(v82, (v121 + 8 * *v178), 8 * v122 - 8 * *v178);
      }

      v186 = v182;
      v130 = (v82 + v128);
      if (v128 >= 1 && 8 * v180 > v125)
      {
        v131 = __srcb;
        while (1)
        {
          __dstc = v126;
          v132 = *v131;
          v133 = *v126;
          v134 = v132;
          [v186 frameForPlaybackRecord:v133 minPlayableSize:a7];
          v135 = v218.size.width;
          v136 = v218.size.height;
          v192 = v218.origin.y;
          v197 = v218.origin.x;
          v137 = vabdd_f64(a2, CGRectGetMinY(v218));
          [v186 frameForPlaybackRecord:v134 minPlayableSize:a7];
          v138 = v219.origin.x;
          v139 = v219.origin.y;
          v140 = v219.size.width;
          v141 = v219.size.height;
          v142 = vabdd_f64(a2, CGRectGetMinY(v219));
          if (v137 == v142)
          {
            v220.origin.y = v192;
            v220.origin.x = v197;
            v220.size.width = v135;
            v220.size.height = v136;
            v143 = CGRectGetMinX(v220);
            v221.origin.x = v138;
            v221.origin.y = v139;
            v221.size.width = v140;
            v221.size.height = v141;
            v144 = CGRectGetMinX(v221);

            if (v143 >= v144)
            {
              goto LABEL_108;
            }
          }

          else
          {

            if (v137 >= v142)
            {
LABEL_108:
              v145 = v131;
              v33 = v124 == v131++;
              if (v33)
              {
                goto LABEL_110;
              }

LABEL_109:
              *v124 = *v145;
              goto LABEL_110;
            }
          }

          v145 = v126++;
          if (v124 != __dstc)
          {
            goto LABEL_109;
          }

LABEL_110:
          ++v124;
          if (v131 >= v130 || v126 >= v127)
          {
            goto LABEL_132;
          }
        }
      }

      v131 = __srcb;
LABEL_132:
      v163 = v124;
LABEL_135:
      if (v163 != v131 || v163 >= (v131 + ((v130 - v131 + (v130 - v131 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
      {
        memmove(v163, v131, 8 * (v130 - v131));
      }

      v82 = __srcb;
      if (v180 < v181)
      {
        goto LABEL_148;
      }

      v9 = v175;
      v164 = *(v175 + 16);
      if (v179 > v164)
      {
        goto LABEL_149;
      }

      *v178 = v181;
      *(v178 + 1) = v180;
      if (v179 >= v164)
      {
        goto LABEL_150;
      }

      v78 = v164 - 1;
      memmove(v177, v177 + 16, 16 * (v164 - 1 - v179));
      *(v175 + 16) = v164 - 1;
      v205 = v175;
      v80 = v172;
      if (v164 <= 2)
      {
        goto LABEL_3;
      }
    }

    v88 = &v80[16 * v78];
    v89 = *(v88 - 8);
    v90 = *(v88 - 7);
    v94 = __OFSUB__(v90, v89);
    v91 = v90 - v89;
    if (v94)
    {
      goto LABEL_151;
    }

    v93 = *(v88 - 6);
    v92 = *(v88 - 5);
    v94 = __OFSUB__(v92, v93);
    v86 = v92 - v93;
    v87 = v94;
    if (v94)
    {
      goto LABEL_152;
    }

    v95 = &v9[16 * v78];
    v97 = *v95;
    v96 = *(v95 + 1);
    v94 = __OFSUB__(v96, v97);
    v98 = v96 - v97;
    if (v94)
    {
      goto LABEL_154;
    }

    v94 = __OFADD__(v86, v98);
    v99 = v86 + v98;
    if (v94)
    {
      goto LABEL_157;
    }

    if (v99 >= v91)
    {
      v117 = &v80[16 * v83];
      v119 = *v117;
      v118 = *(v117 + 1);
      v94 = __OFSUB__(v118, v119);
      v120 = v118 - v119;
      if (v94)
      {
        goto LABEL_161;
      }

      if (v86 < v120)
      {
        v83 = v78 - 2;
      }

      goto LABEL_94;
    }

    goto LABEL_73;
  }

LABEL_145:
  v166 = *a1;
  if (!*a1)
  {
    goto LABEL_171;
  }

  v167 = v182;
  sub_1A49151FC(&v205, v166, a4, v167, a7, a2);
}

void sub_1A49162AC(uint64_t *a1, void *a2, uint64_t a3, double a4)
{
  v6 = a1[1];
  v7 = a2;
  v8 = sub_1A524EA34();
  if (v8 < v6)
  {
    if (v6 >= -1)
    {
      v9 = v8;
      v10 = v6 / 2;
      if (v6 <= 1)
      {
        v11 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1A3C52C70(0, &qword_1EB145058, &off_1E7721738);
        v11 = sub_1A524CAC4();
        *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) = v10;
      }

      v41[0] = ((v11 & 0xFFFFFFFFFFFFFF8) + 32);
      v41[1] = v10;
      v12 = v7;
      sub_1A4915708(v41, a4, v42, a1, v9, v12, a3);

      *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

      return;
    }

    __break(1u);
    goto LABEL_23;
  }

  if (v6 < 0)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    return;
  }

  if (v6 > 1)
  {
    v13 = *a1;
    v14 = v7;
    v15 = -1;
    v16 = 1;
    v17 = v13;
    v35 = v6;
    do
    {
      v18 = *(v13 + 8 * v16);
      v36 = v17;
      v37 = v15;
      v19 = v17;
      do
      {
        v20 = *v19;
        v21 = v18;
        v22 = v20;
        [v14 frameForPlaybackRecord:v21 minPlayableSize:a3];
        width = v43.size.width;
        height = v43.size.height;
        y = v43.origin.y;
        x = v43.origin.x;
        v25 = vabdd_f64(a4, CGRectGetMinY(v43));
        [v14 frameForPlaybackRecord:v22 minPlayableSize:a3];
        v26 = v44.origin.x;
        v27 = v44.origin.y;
        v28 = v44.size.width;
        v29 = v44.size.height;
        v30 = vabdd_f64(a4, CGRectGetMinY(v44));
        if (v25 == v30)
        {
          v45.origin.y = y;
          v45.origin.x = x;
          v45.size.width = width;
          v45.size.height = height;
          MinX = CGRectGetMinX(v45);
          v46.origin.x = v26;
          v46.origin.y = v27;
          v46.size.width = v28;
          v46.size.height = v29;
          v32 = CGRectGetMinX(v46);

          if (MinX >= v32)
          {
            break;
          }
        }

        else
        {

          if (v25 >= v30)
          {
            break;
          }
        }

        if (!v13)
        {
          goto LABEL_24;
        }

        v33 = *v19;
        v18 = *(v19 + 8);
        *v19 = v18;
        *(v19 + 8) = v33;
        v19 -= 8;
      }

      while (!__CFADD__(v15++, 1));
      ++v16;
      v17 = v36 + 8;
      v15 = v37 - 1;
    }

    while (v16 != v35);
  }

  else
  {
  }
}

void sub_1A4916558(uint64_t *a1, void *a2, uint64_t a3, double a4)
{
  v7 = *a1;
  v8 = a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_1A3D35B98(v7);
    *a1 = v7;
  }

  v10 = *(v7 + 16);
  v12[0] = v7 + 32;
  v12[1] = v10;
  v11 = v8;
  sub_1A49162AC(v12, v11, a3, a4);

  sub_1A524E524();
}

void sub_1A4916618(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if ((a2 & 2) != 0)
    {
      v4 = Strong;
      [Strong invalidatePlaybackEnabled];
      Strong = v4;
    }
  }
}

uint64_t sub_1A4916680()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();

  return v1;
}

uint64_t sub_1A49166F4(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1A52479F4();
}

void (*sub_1A4916764(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1A52479D4();
  return sub_1A3E4FCF4;
}

uint64_t sub_1A4916808()
{
  swift_beginAccess();
  sub_1A49188D8(0, &qword_1EB128B40, type metadata accessor for PhotosDetailsAssetDate, MEMORY[0x1E695C070]);
  sub_1A52479B4();
  return swift_endAccess();
}

uint64_t sub_1A49168A0(uint64_t a1, __n128 a2)
{
  sub_1A49188D8(0, &qword_1EB145078, type metadata accessor for PhotosDetailsAssetDate, MEMORY[0x1E695C060]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = MEMORY[0x1EEE9AC00](v3);
  (*(v5 + 16))(&v9 - v7, a1, v4, v6);
  swift_beginAccess();
  sub_1A49188D8(0, &qword_1EB128B40, type metadata accessor for PhotosDetailsAssetDate, MEMORY[0x1E695C070]);
  sub_1A52479C4();
  swift_endAccess();
  return (*(v5 + 8))(a1, v4);
}

void (*sub_1A4916A1C(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  sub_1A49188D8(0, &qword_1EB145078, type metadata accessor for PhotosDetailsAssetDate, MEMORY[0x1E695C060]);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC12PhotosUICore30PhotosDetailsTimeEditViewModel__selectedDate;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  sub_1A49188D8(0, &qword_1EB128B40, type metadata accessor for PhotosDetailsAssetDate, MEMORY[0x1E695C070]);
  v5[16] = v11;
  sub_1A52479B4();
  swift_endAccess();
  return sub_1A41BE354;
}

void sub_1A4916C3C(void *a1, char a2, char *a3, char *a4)
{
  v34 = a4;
  v38 = a3;
  v32 = sub_1A5241534();
  v28 = *(v32 - 8);
  v7 = v28;
  MEMORY[0x1EEE9AC00](v32);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v36 = &v25 - v11;
  v37 = sub_1A5241144();
  v29 = *(v37 - 8);
  v12 = v29;
  MEMORY[0x1EEE9AC00](v37);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v25 - v16;
  a2 &= 1u;
  v18 = sub_1A4954E30(a1, a2);
  v35 = v4;
  *(v4 + 16) = v18;
  *(v4 + 24) = a1;
  *(v4 + 32) = a2;
  v19 = objc_opt_self();
  v33 = a1;
  v20 = v18;
  v31 = v20;
  v21 = [v19 originalCreationDateForItem_];
  v30 = v17;
  sub_1A52410F4();

  v22 = [v19 originalTimeZoneForItem_];
  v23 = v36;
  sub_1A5241524();

  type metadata accessor for PhotosDetailsAssetDate(0);
  v24 = *(v12 + 16);
  v24(v14, v17, v37);
  v27 = v24;
  v26 = *(v7 + 16);
  v26(v9, v23, v32);
  sub_1A3FD6BC4(v14, v9);
}

BOOL sub_1A491703C()
{
  if (sub_1A49175CC())
  {
    return 1;
  }

  return sub_1A49178D0();
}

uint64_t sub_1A49170BC()
{
  v21 = sub_1A52413B4();
  v1 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A5241144();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v20 - v9;
  v20 = sub_1A52413D4();
  v11 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1A5241394();
  v15 = (*(**(v0 + 48) + 112))(v14);
  (*(**(v0 + 40) + 112))(v15);
  v16 = v21;
  (*(v1 + 104))(v3, *MEMORY[0x1E6969A88], v21);
  v17 = sub_1A5241384();
  (*(v1 + 8))(v3, v16);
  v18 = *(v5 + 8);
  v18(v7, v4);
  v18(v10, v4);
  (*(v11 + 8))(v13, v20);
  return v17 & 1;
}

BOOL sub_1A4917390()
{
  v1 = sub_1A5241144();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A5241534();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - v11;
  v13 = (*(**(v0 + 48) + 136))(v10);
  (*(**(v0 + 40) + 136))(v13);
  sub_1A5241134();
  v14 = sub_1A5241504();
  v15 = *(v2 + 8);
  v15(v4, v1);
  sub_1A5241134();
  v16 = sub_1A5241504();
  v15(v4, v1);
  v17 = *(v6 + 8);
  v17(v8, v5);
  v17(v12, v5);
  return v14 == v16;
}

BOOL sub_1A49175CC()
{
  v22 = sub_1A52413B4();
  v1 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A5241144();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - v9;
  v21 = sub_1A52413D4();
  v11 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1A5241394();
  v15 = ((*v0)[15])(v14);
  (*(*v15 + 112))(v15);

  (*(*v0[6] + 112))(v16);
  v17 = v22;
  (*(v1 + 104))(v3, *MEMORY[0x1E6969A98], v22);
  v18 = sub_1A5241384();
  (*(v1 + 8))(v3, v17);
  v19 = *(v5 + 8);
  v19(v7, v4);
  v19(v10, v4);
  (*(v11 + 8))(v13, v21);
  return (v18 & 1) == 0;
}

BOOL sub_1A49178D0()
{
  v1 = sub_1A5241144();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A5241534();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - v11;
  v13 = ((*v0)[15])(v10);
  (*(*v13 + 136))(v13);

  (*(*v0[6] + 136))(v14);
  sub_1A5241134();
  v15 = sub_1A5241504();
  v16 = *(v2 + 8);
  v16(v4, v1);
  sub_1A5241134();
  v17 = sub_1A5241504();
  v16(v4, v1);
  v18 = *(v6 + 8);
  v18(v8, v5);
  v18(v12, v5);
  return v15 != v17;
}

double sub_1A4917B38()
{
  v1 = sub_1A5241144();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  v9 = (*(*v0 + 120))(v6);
  v10 = v0[6];
  v11 = (*(*v9 + 112))();
  (*(*v10 + 112))(v11);
  sub_1A5241054();
  v13 = v12;

  v14 = *(v2 + 8);
  v14(v4, v1);
  v14(v8, v1);
  return v13;
}

double sub_1A4917CDC()
{
  v1 = sub_1A5241144();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  v9 = *(v0 + 48);
  v10 = (*(**(v0 + 40) + 112))(v6);
  (*(*v9 + 112))(v10);
  sub_1A5241054();
  v12 = v11;
  v13 = *(v2 + 8);
  v13(v4, v1);
  v13(v8, v1);
  return v12;
}

uint64_t sub_1A4917E48()
{
  v1 = v0;
  v2 = sub_1A5241144();
  v79 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A5240664();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v82 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v70 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v70 - v12;
  v14 = sub_1A5241534();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v77 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1A52413D4();
  v81 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v78 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v80 = &v70 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v70 - v21;
  if (sub_1A49175CC() || sub_1A49178D0())
  {
    v75 = v6;
    v76 = v5;
    sub_1A49188D8(0, &qword_1EB1385B0, MEMORY[0x1E6969AD0], MEMORY[0x1E69E6F90]);
    v23 = sub_1A52413B4();
    v24 = *(v23 - 8);
    v73 = v16;
    v71 = v2;
    v25 = v22;
    v26 = v24;
    v83 = v13;
    v27 = *(v24 + 72);
    v28 = *(v24 + 80);
    v74 = v10;
    v29 = (v28 + 32) & ~v28;
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1A5347440;
    v31 = v30 + v29;
    v32 = *(v26 + 104);
    v32(v31, *MEMORY[0x1E6969A50], v23);
    v32(v31 + v27, *MEMORY[0x1E6969A68], v23);
    v32(v31 + 2 * v27, *MEMORY[0x1E6969A78], v23);
    v32(v31 + 3 * v27, *MEMORY[0x1E6969A48], v23);
    v32(v31 + 4 * v27, *MEMORY[0x1E6969A58], v23);
    v32(v31 + 5 * v27, *MEMORY[0x1E6969A88], v23);
    v32(v31 + 6 * v27, *MEMORY[0x1E6969A98], v23);
    sub_1A441F9F4(v30);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v33 = objc_opt_self();
    v34 = [v33 currentCalendar];
    sub_1A5241344();

    v35 = *(*v1 + 120);
    v36 = v35();
    (*(*v36 + 136))(v36);

    v37 = sub_1A52413A4();
    v38 = (v35)(v37);
    (*(*v38 + 112))(v38);

    v72 = v25;
    v39 = v1;
    sub_1A5241314();
    v40 = *(v79 + 8);
    v41 = v71;
    v40(v4, v71);
    v42 = [v33 currentCalendar];
    v43 = v80;
    sub_1A5241344();

    v79 = v39;
    v44 = *(v39 + 48);
    (*(*v44 + 136))();
    v45 = v43;
    v46 = sub_1A52413A4();
    v47 = *(*v44 + 112);
    v48 = v74;
    v47(v46);
    sub_1A5241314();
    v40(v4, v41);
    v49 = v73;
    v50 = [v33 currentCalendar];
    v51 = v78;
    sub_1A5241344();

    v52 = v82;
    sub_1A52412F4();

    v53 = *(v81 + 8);
    v53(v51, v49);
    v54 = objc_opt_self();
    v55 = sub_1A5240604();
    v56 = [v54 localizedStringFromDateComponents:v55 unitsStyle:3];

    if (v56)
    {
      v57 = sub_1A524C674();
      v59 = v58;

      v84 = 0;
      v85 = 0xE000000000000000;
      sub_1A524E404();

      v84 = 0xD00000000000002BLL;
      v85 = 0x80000001A53F2E60;
      v60 = sub_1A4954E7C(*(v79 + 24), *(v79 + 32));
      MEMORY[0x1A5907B60](v60);

      v61 = sub_1A524C634();

      v62 = PXLocalizedString(v61);

      sub_1A524C674();
      sub_1A49188D8(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
      v63 = swift_allocObject();
      *(v63 + 16) = xmmword_1A52F8E10;
      *(v63 + 56) = MEMORY[0x1E69E6158];
      *(v63 + 64) = sub_1A3D710E8();
      *(v63 + 32) = v57;
      *(v63 + 40) = v59;
      v64 = sub_1A524C644();

      v65 = v76;
      v66 = *(v75 + 8);
      v66(v82, v76);
      v66(v48, v65);
      v53(v45, v49);
      v66(v83, v65);
      v53(v72, v49);
      return v64;
    }

    v68 = v76;
    v69 = *(v75 + 8);
    v69(v52, v76);
    v69(v48, v68);
    v53(v45, v49);
    v69(v83, v68);
    v53(v72, v49);
  }

  return 0;
}

uint64_t sub_1A49187AC()
{

  v1 = OBJC_IVAR____TtC12PhotosUICore30PhotosDetailsTimeEditViewModel__selectedDate;
  sub_1A49188D8(0, &qword_1EB128B40, type metadata accessor for PhotosDetailsAssetDate, MEMORY[0x1E695C070]);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1A4918898@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for PhotosDetailsTimeEditViewModel(0);
  result = sub_1A52478D4();
  *a2 = result;
  return result;
}

void sub_1A49188D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t type metadata accessor for PhotosDetailsTimeEditViewModel(uint64_t a1)
{
  result = qword_1EB18FBC0;
  if (!qword_1EB18FBC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A4918990(uint64_t a1)
{
  sub_1A49188D8(319, &qword_1EB128B40, type metadata accessor for PhotosDetailsAssetDate, MEMORY[0x1E695C070]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id sub_1A4918AC4(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(void))
{
  v5 = a3;
  a4();
  v7 = v6;

  if (v7)
  {
    v8 = sub_1A524C634();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

Swift::Void __swiftcall PeopleChangeTypeActionPerformer.performBackgroundTask()()
{
  v1 = [v0 people];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 undoManager];
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_1A49194EC(v2, v3, sub_1A3DE1F24, v4);
  }

  else
  {

    [v0 completeBackgroundTaskWithSuccess:0 error:0];
  }
}

id PeopleChangeTypeActionPerformer.__allocating_init(__actionType:assetCollectionReference:parameters:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = objc_allocWithZone(v4);
  v7 = sub_1A524C634();

  type metadata accessor for PXActionParameterKey();
  sub_1A3C38278(&unk_1EB1356B0, &unk_1A5377DC0);
  v8 = sub_1A524C3D4();

  v9 = [v6 initWithActionType:v7 assetCollectionReference:a3 parameters:v8];

  return v9;
}

id PeopleChangeTypeActionPerformer.init(__actionType:assetCollectionReference:parameters:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v7 = sub_1A524C634();

  type metadata accessor for PXActionParameterKey();
  sub_1A3C38278(&unk_1EB1356B0, &unk_1A5377DC0);
  v8 = sub_1A524C3D4();

  v11.receiver = v4;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, sel_initWithActionType_assetCollectionReference_parameters_, v7, a3, v8);

  return v9;
}

id PeopleChangeTypeActionPerformer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _s12PhotosUICore31PeopleChangeTypeActionPerformerC06changeE03forSo08PHPersonE0VSo13PHFetchResultCySo0J0CG_tFZ_0(void *a1)
{
  v1 = [a1 fetchedObjects];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1A3C52C70(0, &qword_1EB1265C0, 0x1E6978980);
  v3 = sub_1A524CA34();

  if (v3 >> 62)
  {
LABEL_19:
    v4 = sub_1A524E2B4();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  v6 = 1;
  while (v4 != v5)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1A59097F0](v5, v3);
    }

    else
    {
      if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_18;
      }

      v7 = *(v3 + 8 * v5 + 32);
    }

    v8 = v7;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v9 = [v7 type];

    ++v5;
    if (!v9)
    {
      goto LABEL_15;
    }
  }

  v6 = 0;
LABEL_15:

  return v6;
}

uint64_t sub_1A4919104(void *a1)
{
  if ([a1 count] < 1)
  {
    v4 = sub_1A524C634();
    v5 = PXLocalizedString(v4);
  }

  else
  {
    _s12PhotosUICore31PeopleChangeTypeActionPerformerC06changeE03forSo08PHPersonE0VSo13PHFetchResultCySo0J0CG_tFZ_0(a1);
    v2 = [a1 photoLibrary];
    v3 = [v2 px_peoplePetsHomeVisibility];

    [a1 count];
    v4 = sub_1A524C634();

    v5 = PXLocalizedStringForPersonOrPetAndVisibility(0, v3, v4);
  }

  v6 = v5;

  v7 = sub_1A524C674();
  return v7;
}

id _s12PhotosUICore31PeopleChangeTypeActionPerformerC14localizedTitle3forSSSgSo8PHPersonC_tFZ_0(void *a1)
{
  sub_1A3CA6C04(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1A52F9790;
  *(v2 + 32) = a1;
  sub_1A3C52C70(0, &qword_1EB1265C0, 0x1E6978980);
  v3 = a1;
  v4 = sub_1A524CA14();
  result = [v3 photoLibrary];
  if (result)
  {
    v6 = result;
    v7 = objc_opt_self();

    v8 = [v7 peopleFetchResultFromFastEnumeration:v4 photoLibrary:v6];

    v9 = sub_1A4919104(v8);
    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _s12PhotosUICore31PeopleChangeTypeActionPerformerC15systemImageName3forSSSgSo8PHPersonC_tFZ_0(void *a1)
{
  sub_1A3CA6C04(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1A52F9790;
  *(v2 + 32) = a1;
  sub_1A3C52C70(0, &qword_1EB1265C0, 0x1E6978980);
  v3 = a1;
  v4 = sub_1A524CA14();
  result = [v3 photoLibrary];
  if (result)
  {
    v6 = result;
    v7 = objc_opt_self();

    v8 = [v7 peopleFetchResultFromFastEnumeration:v4 photoLibrary:v6];

    v9 = _s12PhotosUICore31PeopleChangeTypeActionPerformerC06changeE03forSo08PHPersonE0VSo13PHFetchResultCySo0J0CG_tFZ_0(v8);
    if (v9 == 1)
    {
      return 0x7472616568;
    }

    else
    {
      return 0x6C732E7472616568;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1A49194EC(void *a1, uint64_t a2, void (*a3)(void, void), uint64_t a4)
{
  v8 = _s12PhotosUICore31PeopleChangeTypeActionPerformerC06changeE03forSo08PHPersonE0VSo13PHFetchResultCySo0J0CG_tFZ_0(a1);
  v9 = [a1 photoLibrary];
  v24 = [v9 librarySpecificFetchOptions];

  [v24 setPersonContext_];
  v10 = [objc_opt_self() px_defaultDetectionTypes];
  if (!v10)
  {
    sub_1A3C52C70(0, &qword_1EB126610, 0x1E696AD98);
    sub_1A524CA34();
    v10 = sub_1A524CA14();
  }

  [v24 setIncludedDetectionTypes_];

  sub_1A3C52C70(0, &qword_1EB126D20, 0x1E696AE18);
  sub_1A3E072BC(0);
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E6530];
  *(v11 + 16) = xmmword_1A52F8E10;
  v13 = MEMORY[0x1E69E65A8];
  *(v11 + 56) = v12;
  *(v11 + 64) = v13;
  *(v11 + 32) = v8;
  v14 = sub_1A524D134();
  [v24 setPredicate_];

  v15 = [objc_opt_self() reverseSortDescriptorsForManualSort];
  if (!v15)
  {
    sub_1A3C52C70(0, &qword_1EB126B60, 0x1E696AEB0);
    sub_1A524CA34();
    v15 = sub_1A524CA14();
  }

  [v24 setSortDescriptors_];

  [v24 setFetchLimit_];
  v16 = [objc_opt_self() fetchPersonsWithOptions_];
  v17 = [v16 firstObject];

  if (v17)
  {
    v18 = [v17 manualOrder];
  }

  else
  {
    v18 = 0;
  }

  v19 = [objc_allocWithZone(PXChangePeopleTypeAction) initWithPeople:a1 type:v8];
  if (v19)
  {
    if (__OFADD__(v18, 1))
    {
      __break(1u);
    }

    else
    {
      v20 = v19;
      [v19 setFirstManualOrder_];
      v21 = swift_allocObject();
      v21[2] = a1;
      v21[3] = v8;
      v21[4] = v18;
      v21[5] = a3;
      v21[6] = a4;
      aBlock[4] = sub_1A4919908;
      aBlock[5] = v21;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1A3D6084C;
      aBlock[3] = &block_descriptor_303;
      v22 = _Block_copy(aBlock);
      v23 = a1;
      sub_1A3D607F0(a3, a4);

      [v20 executeWithUndoManager:a2 completionHandler:v22];

      _Block_release(v22);
    }
  }

  else
  {
    if (a3)
    {
      a3(0, 0);
    }
  }
}

void sub_1A4919908(uint64_t a1, void *a2)
{
  v4 = a1;
  v5 = v2[5];
  if ((a1 & 1) == 0)
  {
    v7 = v2[2];
    v6 = v2[3];
    v8 = v2[4];
    v9 = sub_1A524D244();
    v10 = PLPeopleGetLog();
    if (!v10)
    {
      __break(1u);
      return;
    }

    v11 = v10;
    if (os_log_type_enabled(v10, v9))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = v6;
      v15 = v13;
      *v12 = 138413058;
      *(v12 + 4) = v7;
      *v13 = v7;
      *(v12 + 12) = 2048;
      *(v12 + 14) = v14;
      *(v12 + 22) = 2048;
      *(v12 + 24) = v8;
      *(v12 + 32) = 2112;
      v16 = v7;
      if (a2)
      {
        v17 = a2;
        v18 = _swift_stdlib_bridgeErrorToNSError();
      }

      else
      {
        v18 = 0;
      }

      *(v12 + 34) = v18;
      v15[1] = v18;
      _os_log_impl(&dword_1A3C1C000, v11, v9, "Error changing type for people: %@ to type: %ld with order: %ld error: %@", v12, 0x2Au);
      sub_1A3D3F118(0);
      swift_arrayDestroy();
      MEMORY[0x1A590EEC0](v15, -1, -1);
      MEMORY[0x1A590EEC0](v12, -1, -1);
    }
  }

  if (v5)
  {
    v5(v4 & 1, a2);
  }
}

uint64_t sub_1A4919A80()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1A524EC94();
  if (v2)
  {
    MEMORY[0x1A590A010](1);
    MEMORY[0x1A590A010](v1);
  }

  else
  {
    MEMORY[0x1A590A010](0);
    sub_1A3C3DEB4();
    sub_1A524C4B4();
  }

  return sub_1A524ECE4();
}

uint64_t sub_1A4919B0C(uint64_t a1)
{
  v2 = *v1;
  if (v1[1])
  {
    MEMORY[0x1A590A010](1);
    return MEMORY[0x1A590A010](v2);
  }

  else
  {
    MEMORY[0x1A590A010](0);
    sub_1A3C3DEB4();
    return sub_1A524C4B4();
  }
}

uint64_t sub_1A4919B8C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_1A524EC94();
  if (v3)
  {
    MEMORY[0x1A590A010](1);
    MEMORY[0x1A590A010](v2);
  }

  else
  {
    MEMORY[0x1A590A010](0);
    sub_1A3C3DEB4();
    sub_1A524C4B4();
  }

  return sub_1A524ECE4();
}

uint64_t sub_1A4919C18@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for LemonadeShelfItem.BackingItem(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LemonadeShelfItem(0);
  sub_1A491FCB0(v1 + *(v6 + 20), v5, type metadata accessor for LemonadeShelfItem.BackingItem);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = 1;
  }

  else
  {
    sub_1A491FD18(v5, a1, type metadata accessor for LemonadeFeatureLibrary.Shelf);
    v7 = 0;
  }

  v8 = type metadata accessor for LemonadeFeatureLibrary.Shelf(0);
  return (*(*(v8 - 8) + 56))(a1, v7, 1, v8);
}

unint64_t sub_1A4919D3C()
{
  v1 = type metadata accessor for LemonadeFeatureLibrary.Shelf(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for LemonadeShelfItem.BackingItem(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for LemonadeShelfItem(0);
  sub_1A491FCB0(v0 + *(v7 + 20), v6, type metadata accessor for LemonadeShelfItem.BackingItem);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = *v6;
    v13 = 0x2D656B6146;
    v14 = 0xE500000000000000;
    v12[1] = v8;
    v9 = sub_1A524EA44();
    MEMORY[0x1A5907B60](v9);

    return v13;
  }

  else
  {
    sub_1A491FD18(v6, v3, type metadata accessor for LemonadeFeatureLibrary.Shelf);
    sub_1A3C5322C();
    v11 = LemonadeShelfIdentifier.description.getter();
    sub_1A4920D00(v3, type metadata accessor for LemonadeFeatureLibrary.Shelf);
    return v11;
  }
}

void *sub_1A4919EE8(uint64_t a1, uint64_t a2)
{
  v54 = a2;
  v53 = type metadata accessor for LemonadeShelfItem.BackingItem(0);
  MEMORY[0x1EEE9AC00](v53);
  v4 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v46 - v6;
  v8 = type metadata accessor for LemonadeShelfItem(0);
  v51 = *(v8 - 8);
  v52 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for LemonadeFeatureLibrary.Shelf(0) - 8;
  MEMORY[0x1EEE9AC00](v11);
  v46 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v46 - v15;
  v17 = *(a1 + 16);
  if (!v17)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v18 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
  v19 = *(v14 + 72);
  v20 = MEMORY[0x1E69E7CC0];
  v49 = v10;
  v50 = v7;
  v47 = v19;
  v48 = v4;
  v21 = v54;
  do
  {
    sub_1A491FCB0(v18, v16, type metadata accessor for LemonadeFeatureLibrary.Shelf);
    if (sub_1A4870D30())
    {
      v55 = v20;
      v22 = sub_1A3C5322C();
      v23 = v57[0];
      v24 = *(*v21 + 256);
      v24(v57, v22);
      v26 = v58;
      v25 = v59;
      __swift_project_boxed_opaque_existential_1(v57, v58);
      v56 = v23;
      v27 = (*(v25 + 144))(&v56, v26, v25);
      v28 = __swift_destroy_boxed_opaque_existential_0(v57);
      v24(v57, v28);
      v30 = v58;
      v29 = v59;
      __swift_project_boxed_opaque_existential_1(v57, v58);
      v56 = v23;
      v31 = v48;
      v32 = *(v29 + 128);
      v33 = v29;
      v34 = v50;
      v35 = v32(&v56, v30, v33);
      __swift_destroy_boxed_opaque_existential_0(v57);
      sub_1A491FCB0(v16, v34, type metadata accessor for LemonadeFeatureLibrary.Shelf);
      swift_storeEnumTagMultiPayload();
      if (v35)
      {
        v36 = 1;
      }

      else
      {
        v36 = 2;
      }

      if (v27)
      {
        v37 = 0;
      }

      else
      {
        v37 = v36;
      }

      sub_1A491FCB0(v34, v31, type metadata accessor for LemonadeShelfItem.BackingItem);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 1)
      {
        v39 = *v31;
      }

      else
      {
        v40 = v46;
        sub_1A491FD18(v31, v46, type metadata accessor for LemonadeFeatureLibrary.Shelf);
        sub_1A3C5322C();
        sub_1A4920D00(v40, type metadata accessor for LemonadeFeatureLibrary.Shelf);
        v39 = LOBYTE(v57[0]);
      }

      v41 = v49;
      *v49 = v39;
      *(v41 + 8) = EnumCaseMultiPayload == 1;
      v42 = v52;
      sub_1A491FD18(v34, v41 + *(v52 + 20), type metadata accessor for LemonadeShelfItem.BackingItem);
      *(v41 + *(v42 + 28)) = v37;
      *(v41 + *(v42 + 24)) = 0;
      v20 = v55;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_1A491EE70(0, v20[2] + 1, 1, v20, &qword_1EB120380, type metadata accessor for LemonadeShelfItem, type metadata accessor for LemonadeShelfItem);
      }

      v44 = v20[2];
      v43 = v20[3];
      if (v44 >= v43 >> 1)
      {
        v20 = sub_1A491EE70((v43 > 1), v44 + 1, 1, v20, &qword_1EB120380, type metadata accessor for LemonadeShelfItem, type metadata accessor for LemonadeShelfItem);
      }

      sub_1A4920D00(v16, type metadata accessor for LemonadeFeatureLibrary.Shelf);
      v20[2] = v44 + 1;
      sub_1A491FD18(v41, v20 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v44, type metadata accessor for LemonadeShelfItem);
      v19 = v47;
    }

    else
    {
      sub_1A4920D00(v16, type metadata accessor for LemonadeFeatureLibrary.Shelf);
    }

    v18 += v19;
    --v17;
  }

  while (v17);
  return v20;
}

uint64_t sub_1A491A474()
{
  sub_1A524EC94();
  v1 = *v0;
  if (v0[1])
  {
    MEMORY[0x1A590A010](1);
    MEMORY[0x1A590A010](v1);
  }

  else
  {
    MEMORY[0x1A590A010](0);
    sub_1A3C3DEB4();
    sub_1A524C4B4();
  }

  return sub_1A524ECE4();
}

uint64_t sub_1A491A500(uint64_t a1)
{
  sub_1A524EC94();
  v2 = *v1;
  if (v1[1])
  {
    MEMORY[0x1A590A010](1);
    MEMORY[0x1A590A010](v2);
  }

  else
  {
    MEMORY[0x1A590A010](0);
    sub_1A3C3DEB4();
    sub_1A524C4B4();
  }

  return sub_1A524ECE4();
}

unint64_t sub_1A491A590()
{
  sub_1A524E404();

  v0 = sub_1A524C714();
  MEMORY[0x1A5907B60](v0);

  MEMORY[0x1A5907B60](0x3A736D65746920, 0xE700000000000000);
  v1 = sub_1A491A69C();
  v2 = type metadata accessor for LemonadeShelfItem(0);
  v3 = MEMORY[0x1A5907DB0](v1, v2);
  v5 = v4;

  MEMORY[0x1A5907B60](v3, v5);

  MEMORY[0x1A5907B60](32032, 0xE200000000000000);
  return 0xD000000000000012;
}

void *sub_1A491A69C()
{
  v1 = MEMORY[0x1E69E6720];
  sub_1A491F4D8(0, &qword_1EB125A98, type metadata accessor for LemonadeShelfItem, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v26 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v28 = &v26 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v26 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v26 - v10;
  v29 = type metadata accessor for LemonadeTwoShelfItemsRow(0);
  v12 = *(v29 + 20);
  sub_1A491FF2C(v0 + v12, v11, &qword_1EB125A98, type metadata accessor for LemonadeShelfItem);
  v13 = type metadata accessor for LemonadeShelfItem(0);
  v27 = *(v13 - 8);
  v14 = *(v27 + 48);
  v15 = v14(v11, 1, v13);
  sub_1A4920D60(v11, &qword_1EB125A98, type metadata accessor for LemonadeShelfItem, v1);
  if (v15 == 1)
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    sub_1A491FF2C(v0 + v12, v8, &qword_1EB125A98, type metadata accessor for LemonadeShelfItem);
    result = v14(v8, 1, v13);
    if (result == 1)
    {
      __break(1u);
      goto LABEL_16;
    }

    v16 = sub_1A491EE70(0, 1, 1, MEMORY[0x1E69E7CC0], &qword_1EB120380, type metadata accessor for LemonadeShelfItem, type metadata accessor for LemonadeShelfItem);
    v19 = v16[2];
    v18 = v16[3];
    if (v19 >= v18 >> 1)
    {
      v16 = sub_1A491EE70((v18 > 1), v19 + 1, 1, v16, &qword_1EB120380, type metadata accessor for LemonadeShelfItem, type metadata accessor for LemonadeShelfItem);
    }

    v16[2] = v19 + 1;
    sub_1A491FD18(v8, v16 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v19, type metadata accessor for LemonadeShelfItem);
  }

  v20 = v28;
  v21 = *(v29 + 24);
  sub_1A491FF2C(v0 + v21, v28, &qword_1EB125A98, type metadata accessor for LemonadeShelfItem);
  v22 = v14(v20, 1, v13);
  sub_1A4920D60(v20, &qword_1EB125A98, type metadata accessor for LemonadeShelfItem, MEMORY[0x1E69E6720]);
  if (v22 == 1)
  {
    return v16;
  }

  v23 = v26;
  sub_1A491FF2C(v0 + v21, v26, &qword_1EB125A98, type metadata accessor for LemonadeShelfItem);
  result = v14(v23, 1, v13);
  if (result != 1)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = sub_1A491EE70(0, v16[2] + 1, 1, v16, &qword_1EB120380, type metadata accessor for LemonadeShelfItem, type metadata accessor for LemonadeShelfItem);
    }

    v25 = v16[2];
    v24 = v16[3];
    if (v25 >= v24 >> 1)
    {
      v16 = sub_1A491EE70((v24 > 1), v25 + 1, 1, v16, &qword_1EB120380, type metadata accessor for LemonadeShelfItem, type metadata accessor for LemonadeShelfItem);
    }

    v16[2] = v25 + 1;
    sub_1A491FD18(v23, v16 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v25, type metadata accessor for LemonadeShelfItem);
    return v16;
  }

LABEL_16:
  __break(1u);
  return result;
}

double sub_1A491AB70(uint64_t a1, uint64_t a2)
{
  v86 = a2;
  v3 = type metadata accessor for LemonadeShelfItem(0);
  v87 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v114 = &v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v85 - v6;
  v8 = type metadata accessor for LemonadeShelfItem.BackingItem(0);
  MEMORY[0x1EEE9AC00](v8);
  v106 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v85 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v85 - v14;
  v16 = MEMORY[0x1E69E6720];
  sub_1A491F4D8(0, &qword_1EB125A98, type metadata accessor for LemonadeShelfItem, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v103 = &v85 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v110 = (&v85 - v20);
  sub_1A491F4D8(0, &qword_1EB12A148, type metadata accessor for LemonadeFeatureLibrary.Shelf, v16);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v105 = &v85 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v104 = &v85 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v98 = &v85 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v97 = &v85 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v96 = &v85 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v102 = &v85 - v32;
  v113 = type metadata accessor for LemonadeFeatureLibrary.Shelf(0);
  v33 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113);
  v91 = &v85 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v95 = &v85 - v36;
  v112 = type metadata accessor for LemonadeTwoShelfItemsRow(0);
  v37 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v39 = &v85 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_1A491F53C(a1, 0);
  v40 = *(a1 + 16);
  if (v40)
  {
    v93 = v15;
    v92 = v12;
    v41 = a1 + ((*(v37 + 80) + 32) & ~*(v37 + 80));
    v111 = *(v37 + 72);
    v42 = (v87 + 48);
    v108 = (v33 + 7);
    v101 = v33 + 6;
    v94 = MEMORY[0x1E69E7CC0];
    v99 = MEMORY[0x1E69E7CC0];
    v90 = v3;
    v107 = v7;
    v43 = v103;
    v109 = v33;
    v100 = (v87 + 48);
    while (1)
    {
      sub_1A491FCB0(v41, v39, type metadata accessor for LemonadeTwoShelfItemsRow);
      v44 = *(v112 + 20);
      if (*v39)
      {
        sub_1A491FF2C(&v39[v44], v43, &qword_1EB125A98, type metadata accessor for LemonadeShelfItem);
        if ((*v42)(v43, 1, v3) == 1)
        {
          sub_1A4920D00(v39, type metadata accessor for LemonadeTwoShelfItemsRow);
          sub_1A4920D60(v43, &qword_1EB125A98, type metadata accessor for LemonadeShelfItem, MEMORY[0x1E69E6720]);
        }

        else
        {
          sub_1A491FD18(v43, v7, type metadata accessor for LemonadeShelfItem);
          v45 = v92;
          sub_1A491FCB0(&v7[*(v3 + 20)], v92, type metadata accessor for LemonadeShelfItem.BackingItem);
          v46 = v7;
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v47 = 1;
            v48 = v98;
          }

          else
          {
            v48 = v98;
            sub_1A491FD18(v45, v98, type metadata accessor for LemonadeFeatureLibrary.Shelf);
            v47 = 0;
          }

          v55 = v113;
          (*v108)(v48, v47, 1, v113);
          v56 = v48;
          v57 = v97;
          sub_1A491FFAC(v56, v97, &qword_1EB12A148, type metadata accessor for LemonadeFeatureLibrary.Shelf);
          if ((*v101)(v57, 1, v55) == 1)
          {
            sub_1A4920D00(v46, type metadata accessor for LemonadeShelfItem);
            sub_1A4920D00(v39, type metadata accessor for LemonadeTwoShelfItemsRow);
            v58 = v57;
            v7 = v46;
            sub_1A4920D60(v58, &qword_1EB12A148, type metadata accessor for LemonadeFeatureLibrary.Shelf, MEMORY[0x1E69E6720]);
            v43 = v103;
            v33 = v109;
          }

          else
          {
            v59 = v91;
            sub_1A491FD18(v57, v91, type metadata accessor for LemonadeFeatureLibrary.Shelf);
            v33 = v109;
            if ((*(v46 + 8) & 1) == 0)
            {
              sub_1A3C5322C();
              v88 = v116;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v94 = sub_1A3D3DA38(0, *(v94 + 2) + 1, 1, v94);
              }

              v67 = *(v94 + 2);
              v66 = *(v94 + 3);
              if (v67 >= v66 >> 1)
              {
                v94 = sub_1A3D3DA38((v66 > 1), v67 + 1, 1, v94);
              }

              sub_1A4920D00(v91, type metadata accessor for LemonadeFeatureLibrary.Shelf);
              v7 = v107;
              sub_1A4920D00(v107, type metadata accessor for LemonadeShelfItem);
              sub_1A4920D00(v39, type metadata accessor for LemonadeTwoShelfItemsRow);
              v68 = v94;
              *(v94 + 2) = v67 + 1;
              v68[v67 + 32] = v88;
              v3 = v90;
LABEL_32:
              v43 = v103;
              v33 = v109;
              goto LABEL_4;
            }

            v7 = v46;
            sub_1A4920D00(v59, type metadata accessor for LemonadeFeatureLibrary.Shelf);
            sub_1A4920D00(v46, type metadata accessor for LemonadeShelfItem);
            sub_1A4920D00(v39, type metadata accessor for LemonadeTwoShelfItemsRow);
            v43 = v103;
          }
        }
      }

      else
      {
        v49 = v110;
        sub_1A491FF2C(&v39[v44], v110, &qword_1EB125A98, type metadata accessor for LemonadeShelfItem);
        if ((*v42)(v49, 1, v3) == 1)
        {
          v50 = v3;
          sub_1A4920D00(v39, type metadata accessor for LemonadeTwoShelfItemsRow);
          sub_1A4920D60(v49, &qword_1EB125A98, type metadata accessor for LemonadeShelfItem, MEMORY[0x1E69E6720]);
          v51 = v102;
          (*v108)(v102, 1, 1, v113);
          v33 = v109;
        }

        else
        {
          v50 = v3;
          v52 = v93;
          sub_1A491FCB0(v49 + *(v3 + 20), v93, type metadata accessor for LemonadeShelfItem.BackingItem);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v53 = 1;
            v54 = v96;
          }

          else
          {
            v60 = v52;
            v54 = v96;
            sub_1A491FD18(v60, v96, type metadata accessor for LemonadeFeatureLibrary.Shelf);
            v53 = 0;
          }

          v61 = v113;
          (*v108)(v54, v53, 1, v113);
          v51 = v102;
          sub_1A491FFAC(v54, v102, &qword_1EB12A148, type metadata accessor for LemonadeFeatureLibrary.Shelf);
          sub_1A4920D00(v110, type metadata accessor for LemonadeShelfItem);
          if ((*v101)(v51, 1, v61) != 1)
          {
            sub_1A491FD18(v51, v95, type metadata accessor for LemonadeFeatureLibrary.Shelf);
            sub_1A3C5322C();
            v62 = v115;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v99 = sub_1A3D3DA38(0, *(v99 + 2) + 1, 1, v99);
            }

            v42 = v100;
            v64 = *(v99 + 2);
            v63 = *(v99 + 3);
            if (v64 >= v63 >> 1)
            {
              v99 = sub_1A3D3DA38((v63 > 1), v64 + 1, 1, v99);
            }

            sub_1A4920D00(v95, type metadata accessor for LemonadeFeatureLibrary.Shelf);
            sub_1A4920D00(v39, type metadata accessor for LemonadeTwoShelfItemsRow);
            v65 = v99;
            *(v99 + 2) = v64 + 1;
            v65[v64 + 32] = v62;
            v3 = v90;
            v7 = v107;
            goto LABEL_32;
          }

          sub_1A4920D00(v39, type metadata accessor for LemonadeTwoShelfItemsRow);
          v43 = v103;
          v33 = v109;
        }

        sub_1A4920D60(v51, &qword_1EB12A148, type metadata accessor for LemonadeFeatureLibrary.Shelf, MEMORY[0x1E69E6720]);
        v7 = v107;
        v3 = v50;
        v42 = v100;
      }

LABEL_4:
      v41 += v111;
      if (!--v40)
      {
        goto LABEL_34;
      }
    }
  }

  v94 = MEMORY[0x1E69E7CC0];
  v99 = MEMORY[0x1E69E7CC0];
LABEL_34:
  v69 = v89[2];
  if (v69)
  {
    v112 = *(v3 + 20);
    v70 = v89 + ((*(v87 + 80) + 32) & ~*(v87 + 80));
    v71 = *(v87 + 72);
    v110 = (v33 + 7);
    v111 = v71;
    v109 = v33 + 6;
    v72 = MEMORY[0x1E69E7CC0];
    v74 = v105;
    v73 = v106;
    v75 = v104;
    do
    {
      v76 = v114;
      sub_1A491FCB0(v70, v114, type metadata accessor for LemonadeShelfItem);
      sub_1A491FCB0(v76 + v112, v73, type metadata accessor for LemonadeShelfItem.BackingItem);
      v77 = v8;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v78 = 1;
      }

      else
      {
        sub_1A491FD18(v73, v74, type metadata accessor for LemonadeFeatureLibrary.Shelf);
        v78 = 0;
      }

      v79 = v113;
      (*v110)(v74, v78, 1, v113);
      sub_1A491FFAC(v74, v75, &qword_1EB12A148, type metadata accessor for LemonadeFeatureLibrary.Shelf);
      if ((*v109)(v75, 1, v79) == 1)
      {
        sub_1A4920D00(v114, type metadata accessor for LemonadeShelfItem);
        sub_1A4920D60(v75, &qword_1EB12A148, type metadata accessor for LemonadeFeatureLibrary.Shelf, MEMORY[0x1E69E6720]);
        v8 = v77;
      }

      else
      {
        v80 = v77;
        sub_1A3C5322C();
        sub_1A4920D00(v114, type metadata accessor for LemonadeShelfItem);
        v81 = v117;
        sub_1A4920D00(v75, type metadata accessor for LemonadeFeatureLibrary.Shelf);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v72 = sub_1A3D3DA38(0, *(v72 + 2) + 1, 1, v72);
        }

        v83 = *(v72 + 2);
        v82 = *(v72 + 3);
        if (v83 >= v82 >> 1)
        {
          v72 = sub_1A3D3DA38((v82 > 1), v83 + 1, 1, v72);
        }

        *(v72 + 2) = v83 + 1;
        v72[v83 + 32] = v81;
        v8 = v80;
        v74 = v105;
        v73 = v106;
        v75 = v104;
      }

      v70 += v111;
      --v69;
    }

    while (v69);
  }

  else
  {

    v72 = MEMORY[0x1E69E7CC0];
  }

  (*(*v86 + 496))(v72, v94, v99);

  return result;
}

void sub_1A491BAF8(void *a1, int a2, unint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  v282 = a7;
  LODWORD(v321) = a6;
  v309 = a5;
  v312 = a2;
  sub_1A491F4D8(0, &qword_1EB1204C8, type metadata accessor for LemonadeTwoShelfItemsRow, MEMORY[0x1E69E6BC0]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v283 = &v275 - v10;
  v11 = MEMORY[0x1E69E6720];
  sub_1A491F4D8(0, &qword_1EB125A98, type metadata accessor for LemonadeShelfItem, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v286 = (&v275 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v288 = &v275 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v289 = (&v275 - v17);
  MEMORY[0x1EEE9AC00](v18);
  v291 = &v275 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v276 = &v275 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v299 = &v275 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v294 = &v275 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v275 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v278 = &v275 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v315 = &v275 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v277 = &v275 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v314 = &v275 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v323 = &v275 - v38;
  sub_1A491F4D8(0, &qword_1EB125820, type metadata accessor for LemonadeTwoShelfItemsRow, v11);
  MEMORY[0x1EEE9AC00](v39 - 8);
  v302 = &v275 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v275 = &v275 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v317 = &v275 - v44;
  v45 = type metadata accessor for LemonadeTwoShelfItemsRow(0);
  v327 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v292 = &v275 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47);
  v284 = &v275 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v285 = &v275 - v50;
  MEMORY[0x1EEE9AC00](v51);
  v298 = &v275 - v52;
  MEMORY[0x1EEE9AC00](v53);
  v307 = &v275 - v54;
  MEMORY[0x1EEE9AC00](v55);
  v296 = &v275 - v56;
  MEMORY[0x1EEE9AC00](v57);
  v313 = &v275 - v58;
  MEMORY[0x1EEE9AC00](v59);
  v295 = &v275 - v60;
  MEMORY[0x1EEE9AC00](v61);
  v293 = &v275 - v62;
  MEMORY[0x1EEE9AC00](v63);
  v301 = &v275 - v64;
  MEMORY[0x1EEE9AC00](v65);
  v67 = &v275 - v66;
  MEMORY[0x1EEE9AC00](v68);
  v300 = &v275 - v69;
  v318 = type metadata accessor for LemonadeShelfItem.BackingItem(0);
  MEMORY[0x1EEE9AC00](v318);
  v279 = (&v275 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v71);
  v287 = (&v275 - v72);
  MEMORY[0x1EEE9AC00](v73);
  v281 = (&v275 - v74);
  MEMORY[0x1EEE9AC00](v75);
  v290 = (&v275 - v76);
  MEMORY[0x1EEE9AC00](v77);
  v306 = (&v275 - v78);
  sub_1A491F4D8(0, &qword_1EB12A148, type metadata accessor for LemonadeFeatureLibrary.Shelf, v11);
  MEMORY[0x1EEE9AC00](v79 - 8);
  v81 = &v275 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v82);
  v84 = &v275 - v83;
  v328 = type metadata accessor for LemonadeFeatureLibrary.Shelf(0);
  v85 = *(v328 - 1);
  MEMORY[0x1EEE9AC00](v328);
  v280 = &v275 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v87);
  v325 = &v275 - v88;
  v89 = type metadata accessor for LemonadeShelfItem(0);
  v90 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v319 = &v275 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v92);
  v305 = (&v275 - v93);
  MEMORY[0x1EEE9AC00](v94);
  v304 = (&v275 - v95);
  MEMORY[0x1EEE9AC00](v96);
  v98 = &v275 - v97;
  v331 = MEMORY[0x1E69E7CC0];
  v324 = v45;
  v326 = v99;
  v308 = v90;
  v310 = a3;
  v297 = v28;
  if (!a3)
  {
    v331 = a1;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v100 = a1[2];
  if (v100)
  {
    v101 = v90;
    v303 = (*(v90 + 80) + 32) & ~*(v90 + 80);
    v102 = a1 + v303;
    v322 = *(v101 + 72);
    v320 = (v85 + 56);
    v103 = (v85 + 48);

    v316 = MEMORY[0x1E69E7CC0];
    v311 = MEMORY[0x1E69E7CC0];
    v104 = v306;
    do
    {
      sub_1A491FCB0(v102, v98, type metadata accessor for LemonadeShelfItem);
      sub_1A491FCB0(&v98[*(v326 + 20)], v104, type metadata accessor for LemonadeShelfItem.BackingItem);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v106 = 1;
      }

      else
      {
        sub_1A491FD18(v104, v81, type metadata accessor for LemonadeFeatureLibrary.Shelf);
        v106 = 0;
      }

      v107 = v328;
      (*v320)(v81, v106, 1, v328);
      sub_1A491FFAC(v81, v84, &qword_1EB12A148, type metadata accessor for LemonadeFeatureLibrary.Shelf);
      if ((*v103)(v84, 1, v107) == 1)
      {
        sub_1A4920D00(v98, type metadata accessor for LemonadeShelfItem);
        sub_1A4920D60(v84, &qword_1EB12A148, type metadata accessor for LemonadeFeatureLibrary.Shelf, MEMORY[0x1E69E6720]);
        v105 = v322;
      }

      else
      {
        sub_1A491FD18(v84, v325, type metadata accessor for LemonadeFeatureLibrary.Shelf);
        sub_1A3C5322C();
        if ((*(*v310 + 432))(&v330))
        {
          sub_1A491FCB0(v98, v304, type metadata accessor for LemonadeShelfItem);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v311 = sub_1A491EE70(0, v311[2] + 1, 1, v311, &qword_1EB120380, type metadata accessor for LemonadeShelfItem, type metadata accessor for LemonadeShelfItem);
          }

          v109 = v311[2];
          v108 = v311[3];
          if (v109 >= v108 >> 1)
          {
            v311 = sub_1A491EE70((v108 > 1), v109 + 1, 1, v311, &qword_1EB120380, type metadata accessor for LemonadeShelfItem, type metadata accessor for LemonadeShelfItem);
          }

          sub_1A4920D00(v325, type metadata accessor for LemonadeFeatureLibrary.Shelf);
          sub_1A4920D00(v98, type metadata accessor for LemonadeShelfItem);
          v110 = v311;
          v311[2] = v109 + 1;
          v111 = v110 + v303 + v109 * v322;
          v105 = v322;
          sub_1A491FD18(v304, v111, type metadata accessor for LemonadeShelfItem);
          v331 = v110;
        }

        else
        {
          sub_1A491FCB0(v98, v305, type metadata accessor for LemonadeShelfItem);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v316 = sub_1A491EE70(0, v316[2] + 1, 1, v316, &qword_1EB120380, type metadata accessor for LemonadeShelfItem, type metadata accessor for LemonadeShelfItem);
          }

          v113 = v316[2];
          v112 = v316[3];
          if (v113 >= v112 >> 1)
          {
            v316 = sub_1A491EE70((v112 > 1), v113 + 1, 1, v316, &qword_1EB120380, type metadata accessor for LemonadeShelfItem, type metadata accessor for LemonadeShelfItem);
          }

          sub_1A4920D00(v325, type metadata accessor for LemonadeFeatureLibrary.Shelf);
          sub_1A4920D00(v98, type metadata accessor for LemonadeShelfItem);
          v114 = v316;
          v316[2] = v113 + 1;
          v115 = v114 + v303 + v113 * v322;
          v105 = v322;
          sub_1A491FD18(v305, v115, type metadata accessor for LemonadeShelfItem);
        }

        v104 = v306;
      }

      v102 += v105;
      --v100;
    }

    while (v100);
  }

  else
  {

    v316 = MEMORY[0x1E69E7CC0];
  }

  sub_1A491E90C(v316, &qword_1EB120380, type metadata accessor for LemonadeShelfItem, type metadata accessor for LemonadeShelfItem, type metadata accessor for LemonadeShelfItem);

  v116 = v331;
  v117 = v324;
  v118 = v308;
  v330 = MEMORY[0x1E69E7CC0];
  v119 = v331[2];
  v311 = v331;
  v120 = v313;
  v121 = v319;
  v322 = v119;
  if (v119)
  {
    v325 = 0;
    v320 = (v331 + ((*(v308 + 80) + 32) & ~*(v308 + 80)));
    v316 = (v308 + 56);
    v122 = (v308 + 48);
    v305 = (v327 + 56);
    v304 = (v327 + 48);
    v306 = MEMORY[0x1E69E7CC0];
    v328 = MEMORY[0x1E69E7CC0];
    v123 = v326;
    while (1)
    {
      if (v325 >= v116[2])
      {
LABEL_182:
        __break(1u);
LABEL_183:
        __break(1u);
LABEL_184:
        __break(1u);
LABEL_185:
        __break(1u);
LABEL_186:
        __break(1u);
LABEL_187:
        __break(1u);
LABEL_188:
        __break(1u);
LABEL_189:
        __break(1u);
LABEL_190:
        __break(1u);
LABEL_191:
        __break(1u);
LABEL_192:
        __break(1u);
LABEL_193:
        __break(1u);
LABEL_194:
        __break(1u);
LABEL_195:
        __break(1u);
LABEL_196:
        __break(1u);
LABEL_197:
        __break(1u);
LABEL_198:
        __break(1u);
LABEL_199:
        __break(1u);
LABEL_200:
        __break(1u);
LABEL_201:
        __break(1u);
        return;
      }

      sub_1A491FCB0(v320 + *(v118 + 72) * v325, v121, type metadata accessor for LemonadeShelfItem);
      if (*(v121 + 8) == 1)
      {
        sub_1A4920D00(v121, type metadata accessor for LemonadeShelfItem);
        goto LABEL_27;
      }

      if (v312 != 2)
      {
        if (!v312 && *(v121 + *(v123 + 24)) == 1)
        {
          v124 = *(v117 + 20);
          v125 = v300;
          sub_1A491FCB0(v121, &v300[v124], type metadata accessor for LemonadeShelfItem);
          v126 = *v316;
          (*v316)(&v125[v124], 0, 1, v123);
          v126(&v125[*(v117 + 24)], 1, 1, v123);
          *v125 = 0;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v127 = v306;
          }

          else
          {
            v127 = sub_1A491EE70(0, v306[2] + 1, 1, v306, &qword_1EB120358, type metadata accessor for LemonadeTwoShelfItemsRow, type metadata accessor for LemonadeTwoShelfItemsRow);
          }

          v306 = v127;
          v129 = v127[2];
          v128 = v127[3];
          if (v129 >= v128 >> 1)
          {
            v306 = sub_1A491EE70((v128 > 1), v129 + 1, 1, v306, &qword_1EB120358, type metadata accessor for LemonadeTwoShelfItemsRow, type metadata accessor for LemonadeTwoShelfItemsRow);
          }

          v130 = v319;
          sub_1A4920D00(v319, type metadata accessor for LemonadeShelfItem);
          v131 = v306;
          v306[2] = v129 + 1;
          v132 = v131 + ((*(v327 + 80) + 32) & ~*(v327 + 80)) + *(v327 + 72) * v129;
          v121 = v130;
          sub_1A491FD18(v300, v132, type metadata accessor for LemonadeTwoShelfItemsRow);
          goto LABEL_87;
        }

        if (*(v121 + *(v123 + 28)) == 1)
        {
          v157 = v328[2];
          v158 = v293;
          if (!v157)
          {
LABEL_76:
            v117 = v324;
            v174 = *(v324 + 20);
            v175 = v295;
            sub_1A491FCB0(v319, &v295[v174], type metadata accessor for LemonadeShelfItem);
            v176 = *v316;
            v123 = v326;
            (*v316)(&v175[v174], 0, 1, v326);
            v176(&v175[*(v117 + 24)], 1, 1, v123);
            *v175 = 1;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v328 = sub_1A491EE70(0, v328[2] + 1, 1, v328, &qword_1EB120358, type metadata accessor for LemonadeTwoShelfItemsRow, type metadata accessor for LemonadeTwoShelfItemsRow);
            }

            v118 = v308;
            v178 = v328[2];
            v177 = v328[3];
            if (v178 >= v177 >> 1)
            {
              v328 = sub_1A491EE70((v177 > 1), v178 + 1, 1, v328, &qword_1EB120358, type metadata accessor for LemonadeTwoShelfItemsRow, type metadata accessor for LemonadeTwoShelfItemsRow);
            }

            v179 = v319;
            sub_1A4920D00(v319, type metadata accessor for LemonadeShelfItem);
            v180 = v327;
            v154 = v328;
            v328[2] = v178 + 1;
            v155 = v154 + ((*(v180 + 80) + 32) & ~*(v180 + 80)) + *(v180 + 72) * v178;
            v121 = v179;
            v156 = &v327;
            goto LABEL_86;
          }

          v159 = 0;
          v310 = (*(v327 + 80) + 32) & ~*(v327 + 80);
          v160 = v328 + v310;
          while (v159 < v328[2])
          {
            v161 = *(v327 + 72) * v159;
            sub_1A491FCB0(&v160[v161], v158, type metadata accessor for LemonadeTwoShelfItemsRow);
            if (*v158 == 1)
            {
              v162 = &v158[*(v324 + 20)];
              v163 = v122;
              v164 = v158;
              v165 = v314;
              sub_1A491FF2C(v162, v314, &qword_1EB125A98, type metadata accessor for LemonadeShelfItem);
              v166 = v163;
              if ((*v163)(v165, 1, v326) == 1)
              {
                sub_1A4920D60(v165, &qword_1EB125A98, type metadata accessor for LemonadeShelfItem, MEMORY[0x1E69E6720]);
                v193 = v277;
                sub_1A491FCB0(v319, v277, type metadata accessor for LemonadeShelfItem);
                v194 = v326;
                (*v316)(v193, 0, 1);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v328 = sub_1A459BDE8(v328);
                }

                v195 = v324;
                v120 = v313;
                v118 = v308;
                v122 = v166;
                sub_1A4920D00(v293, type metadata accessor for LemonadeTwoShelfItemsRow);
                sub_1A4920D00(v319, type metadata accessor for LemonadeShelfItem);
                if (v159 < v328[2])
                {
                  v196 = v328;
                  v117 = v195;
                  sub_1A491F444(v277, v328 + v310 + *(v195 + 20) + v161);
                  v330 = v196;
                  v116 = v311;
                  v121 = v319;
                  v123 = v194;
                  goto LABEL_27;
                }

                goto LABEL_199;
              }

              sub_1A4920D00(v164, type metadata accessor for LemonadeTwoShelfItemsRow);
              sub_1A4920D60(v165, &qword_1EB125A98, type metadata accessor for LemonadeShelfItem, MEMORY[0x1E69E6720]);
              v158 = v164;
              v122 = v163;
            }

            else
            {
              sub_1A4920D00(v158, type metadata accessor for LemonadeTwoShelfItemsRow);
            }

            if (v157 == ++v159)
            {
              goto LABEL_76;
            }
          }

LABEL_181:
          __break(1u);
          goto LABEL_182;
        }

        if (*(v121 + *(v123 + 28)))
        {
          v167 = v328[2];
          if (!v167)
          {
LABEL_81:
            v117 = v324;
            v181 = *v316;
            v182 = v296;
            v123 = v326;
            (*v316)(&v296[*(v324 + 20)], 1, 1, v326);
            v183 = *(v117 + 24);
            sub_1A491FCB0(v319, &v182[v183], type metadata accessor for LemonadeShelfItem);
            v181(&v182[v183], 0, 1, v123);
            *v182 = 1;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v328 = sub_1A491EE70(0, v328[2] + 1, 1, v328, &qword_1EB120358, type metadata accessor for LemonadeTwoShelfItemsRow, type metadata accessor for LemonadeTwoShelfItemsRow);
            }

            v118 = v308;
            v185 = v328[2];
            v184 = v328[3];
            if (v185 >= v184 >> 1)
            {
              v328 = sub_1A491EE70((v184 > 1), v185 + 1, 1, v328, &qword_1EB120358, type metadata accessor for LemonadeTwoShelfItemsRow, type metadata accessor for LemonadeTwoShelfItemsRow);
            }

            v186 = v319;
            sub_1A4920D00(v319, type metadata accessor for LemonadeShelfItem);
            v187 = v327;
            v154 = v328;
            v328[2] = v185 + 1;
            v155 = v154 + ((*(v187 + 80) + 32) & ~*(v187 + 80)) + *(v187 + 72) * v185;
            v121 = v186;
            v156 = &v328;
            goto LABEL_86;
          }

          v168 = 0;
          v303 = (*(v327 + 80) + 32) & ~*(v327 + 80);
          v169 = v328 + v303;
          while (v168 < v328[2])
          {
            v170 = *(v327 + 72) * v168;
            sub_1A491FCB0(&v169[v170], v120, type metadata accessor for LemonadeTwoShelfItemsRow);
            if (*v120 == 1)
            {
              v310 = v170;
              v171 = &v120[*(v324 + 24)];
              v172 = v120;
              v173 = v315;
              sub_1A491FF2C(v171, v315, &qword_1EB125A98, type metadata accessor for LemonadeShelfItem);
              if ((*v122)(v173, 1, v326) == 1)
              {
                sub_1A4920D60(v173, &qword_1EB125A98, type metadata accessor for LemonadeShelfItem, MEMORY[0x1E69E6720]);
                v197 = v278;
                sub_1A491FCB0(v319, v278, type metadata accessor for LemonadeShelfItem);
                v198 = v197;
                v199 = v326;
                (*v316)(v198, 0, 1);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v328 = sub_1A459BDE8(v328);
                }

                v117 = v324;
                v120 = v313;
                v118 = v308;
                sub_1A4920D00(v313, type metadata accessor for LemonadeTwoShelfItemsRow);
                sub_1A4920D00(v319, type metadata accessor for LemonadeShelfItem);
                if (v168 < v328[2])
                {
                  v123 = v199;
                  v200 = v328;
                  sub_1A491F444(v278, v328 + v303 + *(v117 + 24) + v310);
                  v330 = v200;
                  v116 = v311;
                  v121 = v319;
                  goto LABEL_27;
                }

                goto LABEL_200;
              }

              sub_1A4920D00(v172, type metadata accessor for LemonadeTwoShelfItemsRow);
              sub_1A4920D60(v173, &qword_1EB125A98, type metadata accessor for LemonadeShelfItem, MEMORY[0x1E69E6720]);
              v120 = v172;
            }

            else
            {
              sub_1A4920D00(v120, type metadata accessor for LemonadeTwoShelfItemsRow);
            }

            if (v167 == ++v168)
            {
              goto LABEL_81;
            }
          }

LABEL_180:
          __break(1u);
          goto LABEL_181;
        }
      }

      v133 = *(v117 + 20);
      v134 = v121;
      v135 = v317;
      sub_1A491FCB0(v134, &v317[v133], type metadata accessor for LemonadeShelfItem);
      v136 = *v316;
      (*v316)(&v135[v133], 0, 1, v123);
      v136(&v135[*(v117 + 24)], 1, 1, v123);
      *v135 = 0;
      v137 = *v305;
      (*v305)(v135, 0, 1, v117);
      v138 = v328[2];
      if (!v138)
      {
        goto LABEL_52;
      }

      v139 = 0;
      v140 = v328 + ((*(v327 + 80) + 32) & ~*(v327 + 80));
      while (1)
      {
        if (v139 >= v328[2])
        {
          __break(1u);
          goto LABEL_180;
        }

        sub_1A491FCB0(&v140[*(v327 + 72) * v139], v67, type metadata accessor for LemonadeTwoShelfItemsRow);
        if (*v67 == 1)
        {
          v141 = v323;
          sub_1A491FF2C(&v67[*(v324 + 20)], v323, &qword_1EB125A98, type metadata accessor for LemonadeShelfItem);
          if ((*v122)(v141, 1, v326) != 1)
          {
            sub_1A4920D00(v67, type metadata accessor for LemonadeTwoShelfItemsRow);
            sub_1A4920D60(v141, &qword_1EB125A98, type metadata accessor for LemonadeShelfItem, MEMORY[0x1E69E6720]);
            goto LABEL_43;
          }

          sub_1A4920D60(v141, &qword_1EB125A98, type metadata accessor for LemonadeShelfItem, MEMORY[0x1E69E6720]);
          if ((v321 & 1) == 0 && v309 != v139)
          {
            break;
          }
        }

        sub_1A4920D00(v67, type metadata accessor for LemonadeTwoShelfItemsRow);
LABEL_43:
        if (v138 == ++v139)
        {
          v117 = v324;
LABEL_52:
          v142 = v317;
          goto LABEL_53;
        }
      }

      v188 = v275;
      sub_1A491FF2C(v317, v275, &qword_1EB125820, type metadata accessor for LemonadeTwoShelfItemsRow);
      v117 = v324;
      v189 = (*v304)(v188, 1, v324);
      if (v189 == 1)
      {
        goto LABEL_201;
      }

      if (v328[2] < v139)
      {
        goto LABEL_194;
      }

      sub_1A491FD18(v188, v283, type metadata accessor for LemonadeTwoShelfItemsRow);
      v190 = v328[2];
      if (v190 < v139)
      {
        goto LABEL_195;
      }

      v191 = v328;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v330 = v191;
      if (!isUniquelyReferenced_nonNull_native || v190 >= v328[3] >> 1)
      {
        v328 = sub_1A491EE70(isUniquelyReferenced_nonNull_native, v190 + 1, 1, v328, &qword_1EB120358, type metadata accessor for LemonadeTwoShelfItemsRow, type metadata accessor for LemonadeTwoShelfItemsRow);
        v330 = v328;
      }

      sub_1A491F064(v139, v139, 1, v283);
      v330 = v328;
      sub_1A4920D00(v67, type metadata accessor for LemonadeTwoShelfItemsRow);
      v142 = v317;
      sub_1A4920D60(v317, &qword_1EB125820, type metadata accessor for LemonadeTwoShelfItemsRow, MEMORY[0x1E69E6720]);
      v137(v142, 1, 1, v117);
LABEL_53:
      v143 = v302;
      sub_1A491FF2C(v142, v302, &qword_1EB125820, type metadata accessor for LemonadeTwoShelfItemsRow);
      v144 = (*v304)(v143, 1, v117);
      v123 = v326;
      if (v144 == 1)
      {
        v145 = MEMORY[0x1E69E6720];
        sub_1A4920D60(v142, &qword_1EB125820, type metadata accessor for LemonadeTwoShelfItemsRow, MEMORY[0x1E69E6720]);
        v146 = v319;
        sub_1A4920D00(v319, type metadata accessor for LemonadeShelfItem);
        v147 = v145;
        v121 = v146;
        sub_1A4920D60(v143, &qword_1EB125820, type metadata accessor for LemonadeTwoShelfItemsRow, v147);
        v116 = v311;
        v120 = v313;
        v118 = v308;
        goto LABEL_27;
      }

      sub_1A4920D60(v143, &qword_1EB125820, type metadata accessor for LemonadeTwoShelfItemsRow, MEMORY[0x1E69E6720]);
      v148 = *(v117 + 20);
      v149 = v301;
      sub_1A491FCB0(v319, &v301[v148], type metadata accessor for LemonadeShelfItem);
      v136(&v149[v148], 0, 1, v123);
      v136(&v149[*(v117 + 24)], 1, 1, v123);
      *v149 = 0;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v328 = sub_1A491EE70(0, v328[2] + 1, 1, v328, &qword_1EB120358, type metadata accessor for LemonadeTwoShelfItemsRow, type metadata accessor for LemonadeTwoShelfItemsRow);
      }

      v118 = v308;
      v151 = v328[2];
      v150 = v328[3];
      if (v151 >= v150 >> 1)
      {
        v328 = sub_1A491EE70((v150 > 1), v151 + 1, 1, v328, &qword_1EB120358, type metadata accessor for LemonadeTwoShelfItemsRow, type metadata accessor for LemonadeTwoShelfItemsRow);
      }

      sub_1A4920D60(v317, &qword_1EB125820, type metadata accessor for LemonadeTwoShelfItemsRow, MEMORY[0x1E69E6720]);
      v152 = v319;
      sub_1A4920D00(v319, type metadata accessor for LemonadeShelfItem);
      v153 = v327;
      v154 = v328;
      v328[2] = v151 + 1;
      v155 = v154 + ((*(v153 + 80) + 32) & ~*(v153 + 80)) + *(v153 + 72) * v151;
      v121 = v152;
      v156 = &v332;
LABEL_86:
      sub_1A491FD18(*(v156 - 32), v155, type metadata accessor for LemonadeTwoShelfItemsRow);
      v330 = v154;
LABEL_87:
      v116 = v311;
      v120 = v313;
LABEL_27:
      if (++v325 == v322)
      {
        goto LABEL_105;
      }
    }
  }

  v306 = MEMORY[0x1E69E7CC0];
  v328 = MEMORY[0x1E69E7CC0];
LABEL_105:
  if (v282)
  {

    if (v312)
    {
      if (v312 == 1)
      {

        v201 = v328[2];
        v202 = v292;
        if (v201)
        {
          v203 = 0;
          v204 = (v118 + 48);
          v325 = v118 + 56;
          v205 = 10000;
          v206 = &qword_1EB125A98;
          v323 = v201;
          while (v203 < v328[2])
          {
            v207 = (*(v327 + 80) + 32) & ~*(v327 + 80);
            v208 = *(v327 + 72) * v203;
            sub_1A491FCB0(v328 + v207 + v208, v202, type metadata accessor for LemonadeTwoShelfItemsRow);
            if (*v202 == 1)
            {
              v209 = &v202[*(v324 + 20)];
              v210 = v291;
              sub_1A491FF2C(v209, v291, v206, type metadata accessor for LemonadeShelfItem);
              v211 = *v204;
              v212 = (*v204)(v210, 1, v326);
              v213 = v206;
              v214 = v212;
              v215 = v213;
              sub_1A4920D60(v210, v213, type metadata accessor for LemonadeShelfItem, MEMORY[0x1E69E6720]);
              if (v214 == 1)
              {
                v216 = v290;
                *v290 = v205;
                swift_storeEnumTagMultiPayload();
                v217 = v281;
                sub_1A491FCB0(v216, v281, type metadata accessor for LemonadeShelfItem.BackingItem);
                EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
                if (EnumCaseMultiPayload == 1)
                {
                  v219 = *v217;
                }

                else
                {
                  v220 = v280;
                  sub_1A491FD18(v217, v280, type metadata accessor for LemonadeFeatureLibrary.Shelf);
                  sub_1A3C5322C();
                  sub_1A4920D00(v220, type metadata accessor for LemonadeFeatureLibrary.Shelf);
                  v219 = v329;
                }

                v202 = v292;
                v221 = EnumCaseMultiPayload == 1;
                v222 = v289;
                *v289 = v219;
                *(v222 + 8) = v221;
                v223 = v326;
                sub_1A491FD18(v290, v222 + *(v326 + 20), type metadata accessor for LemonadeShelfItem.BackingItem);
                *(v222 + *(v223 + 28)) = 1;
                *(v222 + *(v223 + 24)) = 0;
                (*v325)(v222, 0, 1, v223);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v328 = sub_1A459BDE8(v328);
                }

                v206 = v215;
                if (v203 >= v328[2])
                {
                  goto LABEL_186;
                }

                v224 = v328;
                sub_1A491F444(v289, v328 + v207 + *(v324 + 20) + v208);
                v330 = v224;
                v225 = __OFADD__(v205++, 1);
                if (v225)
                {
                  goto LABEL_188;
                }
              }

              else
              {
                v202 = v292;
                v206 = v215;
              }

              v226 = v288;
              sub_1A491FF2C(&v202[*(v324 + 24)], v288, v206, type metadata accessor for LemonadeShelfItem);
              if (v211(v226, 1, v326) == 1)
              {
                sub_1A4920D60(v226, v206, type metadata accessor for LemonadeShelfItem, MEMORY[0x1E69E6720]);
                v227 = v287;
                *v287 = v205;
                swift_storeEnumTagMultiPayload();
                v228 = v227;
                v229 = v279;
                sub_1A491FCB0(v228, v279, type metadata accessor for LemonadeShelfItem.BackingItem);
                v230 = swift_getEnumCaseMultiPayload();
                if (v230 == 1)
                {
                  v231 = *v229;
                }

                else
                {
                  v232 = v229;
                  v233 = v280;
                  sub_1A491FD18(v232, v280, type metadata accessor for LemonadeFeatureLibrary.Shelf);
                  sub_1A3C5322C();
                  sub_1A4920D00(v233, type metadata accessor for LemonadeFeatureLibrary.Shelf);
                  v231 = v329;
                }

                v234 = v286;
                *v286 = v231;
                *(v234 + 8) = v230 == 1;
                v235 = v326;
                sub_1A491FD18(v287, v234 + *(v326 + 20), type metadata accessor for LemonadeShelfItem.BackingItem);
                *(v234 + *(v235 + 28)) = 2;
                *(v234 + *(v235 + 24)) = 0;
                (*v325)(v234, 0, 1, v235);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v328 = sub_1A459BDE8(v328);
                }

                v206 = v215;
                sub_1A4920D00(v202, type metadata accessor for LemonadeTwoShelfItemsRow);
                if (v203 >= v328[2])
                {
                  goto LABEL_187;
                }

                v236 = v328;
                sub_1A491F444(v286, v328 + v207 + *(v324 + 24) + v208);
                v330 = v236;
                v225 = __OFADD__(v205++, 1);
                if (v225)
                {
                  goto LABEL_189;
                }

                v201 = v323;
              }

              else
              {
                sub_1A4920D00(v202, type metadata accessor for LemonadeTwoShelfItemsRow);
                sub_1A4920D60(v226, v206, type metadata accessor for LemonadeShelfItem, MEMORY[0x1E69E6720]);
                v201 = v323;
              }
            }

            else
            {
              sub_1A4920D00(v202, type metadata accessor for LemonadeTwoShelfItemsRow);
            }

            if (v201 == ++v203)
            {
              return;
            }
          }

          goto LABEL_184;
        }
      }

      else
      {
      }
    }

    else
    {
      sub_1A491E90C(v306, &qword_1EB120358, type metadata accessor for LemonadeTwoShelfItemsRow, type metadata accessor for LemonadeTwoShelfItemsRow, type metadata accessor for LemonadeTwoShelfItemsRow);
    }

    return;
  }

  v237 = v328[2];
  if (v237)
  {
    v238 = 0;
    v239 = v118;
    v322 = (*(v327 + 80) + 32) & ~*(v327 + 80);
    v240 = v328 + v322;
    v241 = (v239 + 48);
    v242 = v307;
    v323 = v237;
    do
    {
      if (v238 >= v328[2])
      {
        goto LABEL_183;
      }

      v243 = *(v327 + 72);
      sub_1A491FCB0(&v240[v243 * v238], v242, type metadata accessor for LemonadeTwoShelfItemsRow);
      if (*v242 == 1)
      {
        v325 = v243;
        v244 = v324;
        v245 = v297;
        sub_1A491FF2C(&v242[*(v324 + 24)], v297, &qword_1EB125A98, type metadata accessor for LemonadeShelfItem);
        v246 = *v241;
        v247 = v326;
        if ((*v241)(v245, 1, v326) == 1)
        {
          sub_1A4920D00(v242, type metadata accessor for LemonadeTwoShelfItemsRow);
          sub_1A4920D60(v245, &qword_1EB125A98, type metadata accessor for LemonadeShelfItem, MEMORY[0x1E69E6720]);
          v253 = v299;
          v254 = v298;
LABEL_148:
          v255 = v238 + 1;
          v256 = v328[2];
          if (v256 - 1 == v238)
          {
            goto LABEL_170;
          }

          v258 = v324;
          v257 = v325;
          v259 = v322 + v325 * v255;
          v321 = v246;
          while (2)
          {
            if (v255 >= v256)
            {
              goto LABEL_185;
            }

            sub_1A491FCB0(v328 + v259, v254, type metadata accessor for LemonadeTwoShelfItemsRow);
            if (*v254 == 1)
            {
              sub_1A491FF2C(&v254[*(v258 + 24)], v253, &qword_1EB125A98, type metadata accessor for LemonadeShelfItem);
              v260 = v258;
              v261 = v254;
              v262 = v326;
              if (v246(v253, 1, v326) == 1)
              {
                sub_1A4920D00(v261, type metadata accessor for LemonadeTwoShelfItemsRow);
                sub_1A4920D60(v253, &qword_1EB125A98, type metadata accessor for LemonadeShelfItem, MEMORY[0x1E69E6720]);
                v254 = v261;
                v258 = v260;
                goto LABEL_152;
              }

              v267 = v260;
              v268 = MEMORY[0x1E69E6720];
              sub_1A4920D60(v253, &qword_1EB125A98, type metadata accessor for LemonadeShelfItem, MEMORY[0x1E69E6720]);
              v269 = v276;
              sub_1A491FF2C(v261 + *(v267 + 20), v276, &qword_1EB125A98, type metadata accessor for LemonadeShelfItem);
              sub_1A4920D00(v261, type metadata accessor for LemonadeTwoShelfItemsRow);
              v270 = v321(v269, 1, v262);
              v271 = v269;
              v253 = v299;
              v257 = v325;
              sub_1A4920D60(v271, &qword_1EB125A98, type metadata accessor for LemonadeShelfItem, v268);
              v252 = v270 == 1;
              v254 = v261;
              v258 = v267;
              v246 = v321;
              if (!v252)
              {
LABEL_158:
                if (v255 != v238)
                {
                  if (v238 < 0)
                  {
                    goto LABEL_190;
                  }

                  v263 = v328[2];
                  if (v238 >= v263)
                  {
                    goto LABEL_191;
                  }

                  v264 = v238 * v257;
                  sub_1A491FCB0(v328 + v322 + v264, v285, type metadata accessor for LemonadeTwoShelfItemsRow);
                  if (v255 >= v263)
                  {
                    goto LABEL_192;
                  }

                  v265 = v241;
                  sub_1A491FCB0(v328 + v259, v284, type metadata accessor for LemonadeTwoShelfItemsRow);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v328 = sub_1A459BDE8(v328);
                  }

                  v266 = v328;
                  sub_1A491FEC8(v284, v328 + v322 + v264);
                  if (v255 >= v266[2])
                  {
                    goto LABEL_193;
                  }

                  sub_1A491FEC8(v285, v328 + v259);
                  v241 = v265;
                  v257 = v325;
                }

                ++v238;
              }

LABEL_152:
              ++v255;
              v256 = v328[2];
              v259 += v257;
              if (v255 == v256)
              {
                if (v255 < v238)
                {
                  goto LABEL_196;
                }

                if (v238 < 0)
                {
                  goto LABEL_197;
                }

                goto LABEL_170;
              }

              continue;
            }

            break;
          }

          sub_1A4920D00(v254, type metadata accessor for LemonadeTwoShelfItemsRow);
          goto LABEL_158;
        }

        v248 = MEMORY[0x1E69E6720];
        sub_1A4920D60(v245, &qword_1EB125A98, type metadata accessor for LemonadeShelfItem, MEMORY[0x1E69E6720]);
        v249 = v294;
        sub_1A491FF2C(&v307[*(v244 + 20)], v294, &qword_1EB125A98, type metadata accessor for LemonadeShelfItem);
        sub_1A4920D00(v307, type metadata accessor for LemonadeTwoShelfItemsRow);
        v250 = v246(v249, 1, v247);
        v251 = v248;
        v237 = v323;
        v242 = v307;
        sub_1A4920D60(v249, &qword_1EB125A98, type metadata accessor for LemonadeShelfItem, v251);
        v252 = v250 == 1;
        v253 = v299;
        v254 = v298;
        if (v252)
        {
          goto LABEL_148;
        }
      }

      else
      {
        sub_1A4920D00(v242, type metadata accessor for LemonadeTwoShelfItemsRow);
      }

      ++v238;
    }

    while (v237 != v238);
    v255 = v328[2];
    v238 = v255;
  }

  else
  {
    v255 = 0;
    v238 = 0;
  }

LABEL_170:
  if (__OFADD__(v255, v238 - v255))
  {
    goto LABEL_198;
  }

  v272 = v328;
  v273 = swift_isUniquelyReferenced_nonNull_native();
  v330 = v272;
  if (!v273 || v238 > v328[3] >> 1)
  {
    if (v255 <= v238)
    {
      v274 = v238;
    }

    else
    {
      v274 = v255;
    }

    v328 = sub_1A491EE70(v273, v274, 1, v328, &qword_1EB120358, type metadata accessor for LemonadeTwoShelfItemsRow, type metadata accessor for LemonadeTwoShelfItemsRow);
    v330 = v328;
  }

  sub_1A491FD80(v238, v255, 0);

  v330 = v328;
}

void sub_1A491E90C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v6 = *(a1 + 16);
  v7 = *v5;
  v8 = *(*v5 + 16);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v9 <= v7[3] >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v8 <= v9)
  {
    v20 = v8 + v6;
  }

  else
  {
    v20 = v8;
  }

  v7 = sub_1A491EE70(isUniquelyReferenced_nonNull_native, v20, 1, v7, a2, a3, a4);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v6)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v16 = (v7[3] >> 1) - v7[2];
  a5(0);
  if (v16 < v6)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v6)
  {
LABEL_14:
    *v5 = v7;
    return;
  }

  v17 = v7[2];
  v18 = __OFADD__(v17, v6);
  v19 = v17 + v6;
  if (!v18)
  {
    v7[2] = v19;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

uint64_t sub_1A491EA68(uint64_t a1)
{
  v2 = type metadata accessor for LemonadeShelfItem(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v23 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v22 - v6;
  sub_1A491F4D8(0, &qword_1EB125A98, type metadata accessor for LemonadeShelfItem, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - v13;
  MEMORY[0x1A590A010](*v1, v12);
  v15 = type metadata accessor for LemonadeTwoShelfItemsRow(0);
  v16 = *(v15 + 20);
  v24 = v1;
  sub_1A491FF2C(&v1[v16], v14, &qword_1EB125A98, type metadata accessor for LemonadeShelfItem);
  v17 = *(v3 + 48);
  if (v17(v14, 1, v2) == 1)
  {
    sub_1A524ECB4();
  }

  else
  {
    sub_1A491FD18(v14, v7, type metadata accessor for LemonadeShelfItem);
    sub_1A524ECB4();
    v18 = *v7;
    if (v7[8])
    {
      MEMORY[0x1A590A010](1);
      MEMORY[0x1A590A010](v18);
    }

    else
    {
      MEMORY[0x1A590A010](0);
      v25 = v18;
      sub_1A3C3DEB4();
      sub_1A524C4B4();
    }

    sub_1A4920D00(v7, type metadata accessor for LemonadeShelfItem);
  }

  sub_1A491FF2C(&v24[*(v15 + 24)], v10, &qword_1EB125A98, type metadata accessor for LemonadeShelfItem);
  if (v17(v10, 1, v2) == 1)
  {
    return sub_1A524ECB4();
  }

  v20 = v23;
  sub_1A491FD18(v10, v23, type metadata accessor for LemonadeShelfItem);
  sub_1A524ECB4();
  v21 = *v20;
  if (*(v20 + 8))
  {
    MEMORY[0x1A590A010](1);
    MEMORY[0x1A590A010](v21);
  }

  else
  {
    MEMORY[0x1A590A010](0);
    v26 = v21;
    sub_1A3C3DEB4();
    sub_1A524C4B4();
  }

  return sub_1A4920D00(v20, type metadata accessor for LemonadeShelfItem);
}

uint64_t sub_1A491EDE8()
{
  sub_1A524EC94();
  sub_1A491EA68(v1);
  return sub_1A524ECE4();
}

uint64_t sub_1A491EE2C(uint64_t a1)
{
  sub_1A524EC94();
  sub_1A491EA68(v2);
  return sub_1A524ECE4();
}

void *sub_1A491EE70(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1A491F4D8(0, a5, a6, MEMORY[0x1E69E6F90]);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

unint64_t sub_1A491F064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  result = type metadata accessor for LemonadeTwoShelfItemsRow(0);
  v12 = *(*(result - 8) + 72);
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v11 = *(*(result - 8) + 80);
  v14 = v9 + ((v11 + 32) & ~v11);
  v15 = v14 + v12 * a1;
  result = swift_arrayDestroy();
  v16 = a3 - v13;
  if (__OFSUB__(a3, v13))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v17 = v12 * a3;
  if (v16)
  {
    v18 = *(v9 + 16);
    if (!__OFSUB__(v18, a2))
    {
      result = v15 + v17;
      v19 = v14 + v12 * a2;
      if (v15 + v17 < v19 || result >= v19 + (v18 - a2) * v12)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v19)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v21 = *(v9 + 16);
      v22 = __OFADD__(v21, v16);
      v23 = v21 + v16;
      if (!v22)
      {
        *(v9 + 16) = v23;
        goto LABEL_15;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_15:
  if (a3 < 1)
  {
    return sub_1A4920D60(a4, &qword_1EB1204C8, type metadata accessor for LemonadeTwoShelfItemsRow, MEMORY[0x1E69E6BC0]);
  }

  if (v17 < 1)
  {
    return sub_1A4920D60(a4, &qword_1EB1204C8, type metadata accessor for LemonadeTwoShelfItemsRow, MEMORY[0x1E69E6BC0]);
  }

  result = sub_1A491FCB0(a4, v15, type metadata accessor for LemonadeTwoShelfItemsRow);
  if (v12 >= v17)
  {
    return sub_1A4920D60(a4, &qword_1EB1204C8, type metadata accessor for LemonadeTwoShelfItemsRow, MEMORY[0x1E69E6BC0]);
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_1A491F210(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 8))
  {
    if (*a1 == *a2)
    {
      v2 = *(a2 + 8);
    }

    else
    {
      v2 = 0;
    }
  }

  else if (a2[1])
  {
    v2 = 0;
  }

  else
  {
    sub_1A3C5F5F8();
    sub_1A524C9C4();
    sub_1A524C9C4();
    if (v6 == v4 && v7 == v5)
    {
      v2 = 1;
    }

    else
    {
      v2 = sub_1A524EAB4();
    }
  }

  return v2 & 1;
}

BOOL sub_1A491F330(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 8))
  {
    if (*a1 == *a2)
    {
      v2 = *(a2 + 8);
    }

    else
    {
      v2 = 0;
    }

    return (v2 & 1) != 0;
  }

  if (a2[1])
  {
    return 0;
  }

  sub_1A3C5F5F8();
  sub_1A524C9C4();
  sub_1A524C9C4();
  if (v7 == v5 && v8 == v6)
  {
  }

  else
  {
    v4 = sub_1A524EAB4();

    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1A491F444(uint64_t a1, uint64_t a2)
{
  sub_1A491F4D8(0, &qword_1EB125A98, type metadata accessor for LemonadeShelfItem, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1A491F4D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void *sub_1A491F53C(uint64_t a1, int a2)
{
  sub_1A491F4D8(0, &qword_1EB125A98, type metadata accessor for LemonadeShelfItem, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v37 - v8;
  v41 = type metadata accessor for LemonadeShelfItem(0);
  v10 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v43 = &v37 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v39 = &v37 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v42 = &v37 - v17;
  v18 = type metadata accessor for LemonadeTwoShelfItemsRow(0);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(a1 + 16);
  if (!v22)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v23 = a1 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
  v44 = *(v19 + 72);
  v24 = MEMORY[0x1E69E7CC0];
  v37 = v6;
  v38 = v10;
  v46 = (v10 + 48);
  v45 = a2;
  v25 = v41;
  do
  {
    sub_1A491FCB0(v23, v21, type metadata accessor for LemonadeTwoShelfItemsRow);
    sub_1A491FF2C(&v21[*(v18 + 20)], v9, &qword_1EB125A98, type metadata accessor for LemonadeShelfItem);
    v26 = *v46;
    if ((*v46)(v9, 1, v25) == 1)
    {
      sub_1A4920D60(v9, &qword_1EB125A98, type metadata accessor for LemonadeShelfItem, MEMORY[0x1E69E6720]);
    }

    else
    {
      v27 = v18;
      v28 = v42;
      sub_1A491FD18(v9, v42, type metadata accessor for LemonadeShelfItem);
      if ((v45 & 1) != 0 || (*(v28 + 8) & 1) == 0)
      {
        *(v28 + *(v25 + 28)) = *v21;
        sub_1A491FCB0(v28, v39, type metadata accessor for LemonadeShelfItem);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_1A491EE70(0, v24[2] + 1, 1, v24, &qword_1EB120380, type metadata accessor for LemonadeShelfItem, type metadata accessor for LemonadeShelfItem);
        }

        v30 = v24[2];
        v29 = v24[3];
        v31 = v42;
        if (v30 >= v29 >> 1)
        {
          v24 = sub_1A491EE70((v29 > 1), v30 + 1, 1, v24, &qword_1EB120380, type metadata accessor for LemonadeShelfItem, type metadata accessor for LemonadeShelfItem);
          v31 = v42;
        }

        sub_1A4920D00(v31, type metadata accessor for LemonadeShelfItem);
        v24[2] = v30 + 1;
        sub_1A491FD18(v39, v24 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v30, type metadata accessor for LemonadeShelfItem);
        v25 = v41;
      }

      else
      {
        sub_1A4920D00(v28, type metadata accessor for LemonadeShelfItem);
      }

      v18 = v27;
      v6 = v37;
    }

    sub_1A491FF2C(&v21[*(v18 + 24)], v6, &qword_1EB125A98, type metadata accessor for LemonadeShelfItem);
    if (v26(v6, 1, v25) == 1)
    {
      sub_1A4920D00(v21, type metadata accessor for LemonadeTwoShelfItemsRow);
      sub_1A4920D60(v6, &qword_1EB125A98, type metadata accessor for LemonadeShelfItem, MEMORY[0x1E69E6720]);
    }

    else
    {
      v32 = v43;
      sub_1A491FD18(v6, v43, type metadata accessor for LemonadeShelfItem);
      if ((v45 & 1) != 0 || (*(v32 + 8) & 1) == 0)
      {
        *(v32 + *(v25 + 28)) = 2;
        sub_1A491FCB0(v32, v40, type metadata accessor for LemonadeShelfItem);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_1A491EE70(0, v24[2] + 1, 1, v24, &qword_1EB120380, type metadata accessor for LemonadeShelfItem, type metadata accessor for LemonadeShelfItem);
        }

        v34 = v24[2];
        v33 = v24[3];
        v35 = v43;
        if (v34 >= v33 >> 1)
        {
          v24 = sub_1A491EE70((v33 > 1), v34 + 1, 1, v24, &qword_1EB120380, type metadata accessor for LemonadeShelfItem, type metadata accessor for LemonadeShelfItem);
          v35 = v43;
        }

        sub_1A4920D00(v35, type metadata accessor for LemonadeShelfItem);
        sub_1A4920D00(v21, type metadata accessor for LemonadeTwoShelfItemsRow);
        v24[2] = v34 + 1;
        sub_1A491FD18(v40, v24 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v34, type metadata accessor for LemonadeShelfItem);
        v25 = v41;
      }

      else
      {
        sub_1A4920D00(v32, type metadata accessor for LemonadeShelfItem);
        sub_1A4920D00(v21, type metadata accessor for LemonadeTwoShelfItemsRow);
      }
    }

    v23 += v44;
    --v22;
  }

  while (v22);
  return v24;
}

uint64_t sub_1A491FCB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A491FD18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A491FD80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = type metadata accessor for LemonadeTwoShelfItemsRow(0);
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

uint64_t sub_1A491FEC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LemonadeTwoShelfItemsRow(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A491FF2C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1A491F4D8(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1A491FFAC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1A491F4D8(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1A492002C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for LemonadeShelfItem(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v53 - v9;
  sub_1A491F4D8(0, &qword_1EB125A98, type metadata accessor for LemonadeShelfItem, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v53 - v15;
  sub_1A459B3AC(0);
  MEMORY[0x1EEE9AC00](v17);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v53 - v21;
  if (*a1 != *a2)
  {
    return 0;
  }

  v56 = v7;
  v57 = v13;
  v61 = v20;
  v24 = v19;
  v58 = type metadata accessor for LemonadeTwoShelfItemsRow(0);
  v59 = v24;
  v25 = *(v58 + 20);
  v26 = a1;
  v27 = *(v24 + 48);
  v60 = v26;
  sub_1A491FF2C(&v26[v25], v22, &qword_1EB125A98, type metadata accessor for LemonadeShelfItem);
  v28 = &a2[v25];
  v29 = a2;
  sub_1A491FF2C(v28, &v22[v27], &qword_1EB125A98, type metadata accessor for LemonadeShelfItem);
  v32 = *(v5 + 48);
  v31 = v5 + 48;
  v30 = v32;
  if (v32(v22, 1, v4) != 1)
  {
    sub_1A491FF2C(v22, v16, &qword_1EB125A98, type metadata accessor for LemonadeShelfItem);
    if (v30(&v22[v27], 1, v4) == 1)
    {
      sub_1A4920D00(v16, type metadata accessor for LemonadeShelfItem);
      goto LABEL_8;
    }

    v54 = v30;
    v55 = v31;
    sub_1A491FD18(&v22[v27], v10, type metadata accessor for LemonadeShelfItem);
    v34 = *v16;
    v35 = *v10;
    v36 = v10[8];
    if (v16[8])
    {
      sub_1A4920D00(v10, type metadata accessor for LemonadeShelfItem);
      if (v34 == v35)
      {
        v37 = v36;
      }

      else
      {
        v37 = 0;
      }

      if (v37)
      {
        goto LABEL_22;
      }
    }

    else
    {
      if ((v10[8] & 1) == 0)
      {
        v67 = *v16;
        v66 = v35;
        sub_1A3C5F5F8();
        sub_1A524C9C4();
        sub_1A524C9C4();
        if (v64 == v62 && v65 == v63)
        {
          sub_1A4920D00(v10, type metadata accessor for LemonadeShelfItem);
        }

        else
        {
          v40 = sub_1A524EAB4();
          sub_1A4920D00(v10, type metadata accessor for LemonadeShelfItem);

          if ((v40 & 1) == 0)
          {
            goto LABEL_17;
          }
        }

LABEL_22:
        sub_1A4920D00(v16, type metadata accessor for LemonadeShelfItem);
        v30 = v54;
        goto LABEL_23;
      }

      sub_1A4920D00(v10, type metadata accessor for LemonadeShelfItem);
    }

LABEL_17:
    sub_1A4920D00(v16, type metadata accessor for LemonadeShelfItem);
    v38 = MEMORY[0x1E69E6720];
    v39 = v22;
LABEL_39:
    sub_1A4920D60(v39, &qword_1EB125A98, type metadata accessor for LemonadeShelfItem, v38);
    return 0;
  }

  if (v30(&v22[v27], 1, v4) != 1)
  {
LABEL_8:
    v33 = v22;
LABEL_29:
    sub_1A4920D00(v33, sub_1A459B3AC);
    return 0;
  }

LABEL_23:
  sub_1A4920D60(v22, &qword_1EB125A98, type metadata accessor for LemonadeShelfItem, MEMORY[0x1E69E6720]);
  v41 = *(v58 + 24);
  v42 = *(v59 + 48);
  v43 = v29;
  v44 = v61;
  sub_1A491FF2C(&v60[v41], v61, &qword_1EB125A98, type metadata accessor for LemonadeShelfItem);
  sub_1A491FF2C(&v43[v41], v44 + v42, &qword_1EB125A98, type metadata accessor for LemonadeShelfItem);
  if (v30(v44, 1, v4) == 1)
  {
    if (v30((v44 + v42), 1, v4) == 1)
    {
      goto LABEL_45;
    }

    goto LABEL_28;
  }

  v45 = v57;
  sub_1A491FF2C(v44, v57, &qword_1EB125A98, type metadata accessor for LemonadeShelfItem);
  if (v30((v44 + v42), 1, v4) == 1)
  {
    sub_1A4920D00(v45, type metadata accessor for LemonadeShelfItem);
LABEL_28:
    v33 = v44;
    goto LABEL_29;
  }

  v46 = v44 + v42;
  v47 = v56;
  sub_1A491FD18(v46, v56, type metadata accessor for LemonadeShelfItem);
  v48 = *v45;
  v49 = *v47;
  v50 = *(v47 + 8);
  if (*(v45 + 8))
  {
    sub_1A4920D00(v47, type metadata accessor for LemonadeShelfItem);
    if (v48 == v49)
    {
      v51 = v50;
    }

    else
    {
      v51 = 0;
    }

    if (v51)
    {
      goto LABEL_44;
    }

    goto LABEL_38;
  }

  if (*(v47 + 8))
  {
    sub_1A4920D00(v56, type metadata accessor for LemonadeShelfItem);
LABEL_38:
    sub_1A4920D00(v45, type metadata accessor for LemonadeShelfItem);
    v38 = MEMORY[0x1E69E6720];
    v39 = v44;
    goto LABEL_39;
  }

  v67 = *v45;
  v66 = v49;
  sub_1A3C5F5F8();
  sub_1A524C9C4();
  sub_1A524C9C4();
  if (v64 == v62 && v65 == v63)
  {
    sub_1A4920D00(v56, type metadata accessor for LemonadeShelfItem);
  }

  else
  {
    v52 = sub_1A524EAB4();
    sub_1A4920D00(v56, type metadata accessor for LemonadeShelfItem);

    if ((v52 & 1) == 0)
    {
      goto LABEL_38;
    }
  }

LABEL_44:
  sub_1A4920D00(v45, type metadata accessor for LemonadeShelfItem);
LABEL_45:
  sub_1A4920D60(v44, &qword_1EB125A98, type metadata accessor for LemonadeShelfItem, MEMORY[0x1E69E6720]);
  return 1;
}

unint64_t sub_1A4920880()
{
  result = qword_1EB145080;
  if (!qword_1EB145080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB145080);
  }

  return result;
}

unint64_t sub_1A49208D8()
{
  result = qword_1EB145088;
  if (!qword_1EB145088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB145088);
  }

  return result;
}

unint64_t sub_1A4920930()
{
  result = qword_1EB145090;
  if (!qword_1EB145090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB145090);
  }

  return result;
}

unint64_t sub_1A49209D4()
{
  result = qword_1EB145098;
  if (!qword_1EB145098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB145098);
  }

  return result;
}

uint64_t sub_1A4920A70(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A4920AE0(uint64_t a1)
{
  result = type metadata accessor for LemonadeShelfItem.BackingItem(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1A4920B84(uint64_t a1)
{
  result = type metadata accessor for LemonadeFeatureLibrary.Shelf(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1A4920C34(uint64_t a1)
{
  sub_1A491F4D8(319, &qword_1EB125A98, type metadata accessor for LemonadeShelfItem, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1A4920D00(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A4920D60(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  sub_1A491F4D8(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_1A4920DC4()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB15B4A8);
  __swift_project_value_buffer(v0, qword_1EB15B4A8);
  sub_1A5246EF4();
}

uint64_t sub_1A4920E28()
{
  v0 = sub_1A5246F24();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A5246E94();
  __swift_allocate_value_buffer(v4, qword_1EB1E01B8);
  __swift_project_value_buffer(v4, qword_1EB1E01B8);
  if (qword_1EB15B4A0 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_1EB15B4A8);
  (*(v1 + 16))(v3, v5, v0);
  return sub_1A5246E64();
}

id BoopableItemsProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BoopableItemsProvider.init()()
{
  v1 = v0;
  *&v0[OBJC_IVAR___PXBoopableItemsProvider_Swift_selectionManager] = 0;
  *&v0[OBJC_IVAR___PXBoopableItemsProvider_Swift_imagePreviewMediaProvider] = 0;
  if (qword_1EB15B4A0 != -1)
  {
    swift_once();
  }

  v2 = sub_1A5246F24();
  __swift_project_value_buffer(v2, qword_1EB15B4A8);
  v3 = sub_1A5246F04();
  v4 = sub_1A524D264();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1A3C1C000, v3, v4, "-= Intializating Boop activity items configuration =-", v5, 2u);
    MEMORY[0x1A590EEC0](v5, -1, -1);
  }

  *&v1[OBJC_IVAR___PXBoopableItemsProvider_Swift_assets] = MEMORY[0x1E69E7CC0];
  v6 = [objc_allocWithZone(MEMORY[0x1E695DEE0]) init];
  *&v1[OBJC_IVAR___PXBoopableItemsProvider_Swift_cachedItemProvidersByAsset] = v6;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for BoopableItemsProvider();
  return objc_msgSendSuper2(&v8, sel_init);
}

id BoopableItemsProvider.__deallocating_deinit()
{
  v1 = v0;
  if (qword_1EB15B4A0 != -1)
  {
    swift_once();
  }

  v2 = sub_1A5246F24();
  __swift_project_value_buffer(v2, qword_1EB15B4A8);
  v3 = sub_1A5246F04();
  v4 = sub_1A524D264();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1A3C1C000, v3, v4, "-= Boop activity items configuration deinit =-", v5, 2u);
    MEMORY[0x1A590EEC0](v5, -1, -1);
  }

  v7.receiver = v1;
  v7.super_class = type metadata accessor for BoopableItemsProvider();
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

void *sub_1A4921304()
{
  v1 = OBJC_IVAR___PXBoopableItemsProvider_Swift_selectionManager;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1A49213DC(void *a1)
{
  sub_1A49245D8();
  v3 = OBJC_IVAR___PXBoopableItemsProvider_Swift_selectionManager;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  sub_1A492150C();
}

uint64_t sub_1A4921448@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x70))();
  *a2 = result;
  return result;
}

uint64_t sub_1A49214A4(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x78);
  v4 = *a1;
  return v3(v2);
}

void sub_1A492150C()
{
  v1 = v0;
  v2 = OBJC_IVAR___PXBoopableItemsProvider_Swift_selectionManager;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3)
  {
    v4 = qword_1EB15B4A0;
    v5 = v3;
    if (v4 != -1)
    {
      swift_once();
    }

    v6 = sub_1A5246F24();
    __swift_project_value_buffer(v6, qword_1EB15B4A8);
    v7 = v5;
    v8 = sub_1A5246F04();
    v9 = sub_1A524D264();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      *(v10 + 4) = v7;
      *v11 = v3;
      v12 = v7;
      _os_log_impl(&dword_1A3C1C000, v8, v9, "Registering observer for changes in selection manager: %@", v10, 0xCu);
      sub_1A3CB65E4(v11);
      MEMORY[0x1A590EEC0](v11, -1, -1);
      MEMORY[0x1A590EEC0](v10, -1, -1);
    }

    [v7 registerChangeObserver:v1 context:0];
    sub_1A4923284([v7 selectionSnapshot]);
  }
}

void (*sub_1A49216BC(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___PXBoopableItemsProvider_Swift_selectionManager;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return sub_1A4921758;
}

void sub_1A4921758(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = (*a1 + 24);
  v4 = *v3;
  v5 = *(*a1 + 32);
  v6 = *(*a1 + 40);
  if (a2)
  {
    v7 = v4;
    sub_1A49245D8();
    v8 = *(v5 + v6);
    *(v5 + v6) = v4;
    v9 = v7;

    sub_1A492150C();
    v10 = *v3;
  }

  else
  {
    sub_1A49245D8();
    v11 = *(v5 + v6);
    *(v5 + v6) = v4;
    v10 = v4;

    sub_1A492150C();
  }

  free(v2);
}

double sub_1A492197C(unint64_t a1)
{
  sub_1A4921A98(a1);
  v3 = OBJC_IVAR___PXBoopableItemsProvider_Swift_assets;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

uint64_t sub_1A49219D8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x88))();
  *a2 = result;
  return result;
}

void sub_1A4921A98(unint64_t a1)
{
  v3 = OBJC_IVAR___PXBoopableItemsProvider_Swift_assets;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4 >> 62)
  {
    goto LABEL_12;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
  {
    while (1)
    {
      v11[2] = MEMORY[0x1E69E7CD0];
      if (a1 >> 62)
      {
        if (!sub_1A524E2B4())
        {
LABEL_15:
          _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
        }
      }

      else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        break;
      }

      if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v5 = *(a1 + 32);
        goto LABEL_8;
      }

      __break(1u);
LABEL_12:
      if (sub_1A524E2B4() < 1)
      {
        return;
      }
    }

    v5 = MEMORY[0x1A59097F0](0, a1);
LABEL_8:
    v6 = [v5 uuid];
    if (v6)
    {
      v7 = v6;
      v8 = sub_1A524C674();
      v10 = v9;

      sub_1A3C44714(v11, v8, v10);
    }

    __break(1u);
    __break(1u);
  }
}

void sub_1A492203C(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___PXBoopableItemsProvider_Swift_assets;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A49220D8(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v5 = *(*a1 + 40);
  if (a2)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  sub_1A4921A98(v3);
  *(v4 + v5) = v3;

  free(v2);
}

void *sub_1A49221A8()
{
  v1 = OBJC_IVAR___PXBoopableItemsProvider_Swift_imagePreviewMediaProvider;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1A4922254(uint64_t a1)
{
  v3 = OBJC_IVAR___PXBoopableItemsProvider_Swift_imagePreviewMediaProvider;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1A49222AC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xA0))();
  *a2 = result;
  return result;
}

uint64_t sub_1A4922308(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0xA8);
  v4 = *a1;
  return v3(v2);
}

void sub_1A4922444()
{
  v1 = v0;
  v47 = MEMORY[0x1E69E7CC0];
  v41 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x88);
  v2 = v41();
  v3 = v2;
  v4 = v2 & 0xFFFFFFFFFFFFFF8;
  if (v2 >> 62)
  {
LABEL_30:
    v5 = sub_1A524E2B4();
    if (!v5)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_31;
    }
  }

  v6 = 0;
  v44 = OBJC_IVAR___PXBoopableItemsProvider_Swift_cachedItemProvidersByAsset;
  v42 = v5;
  do
  {
    v7 = v6;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1A59097F0](v7, v3);
      }

      else
      {
        if (v7 >= *(v4 + 16))
        {
          goto LABEL_29;
        }

        v8 = *(v3 + 8 * v7 + 32);
      }

      v9 = v8;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      v10 = *&v1[v44];
      v11 = [v8 uuid];
      if (!v11)
      {
        __break(1u);
        goto LABEL_41;
      }

      v12 = v11;
      v43 = v10;
      v13 = [v10 objectForKey_];

      v45 = v7 + 1;
      if (v13)
      {
        goto LABEL_23;
      }

      if (qword_1EB15B4A0 != -1)
      {
        swift_once();
      }

      v14 = sub_1A5246F24();
      __swift_project_value_buffer(v14, qword_1EB15B4A8);
      v15 = v9;
      v16 = sub_1A5246F04();
      v17 = sub_1A524D264();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        *v18 = 136446210;
        v19 = [v15 uuid];

        if (v19)
        {
          v20 = sub_1A524C674();
          v22 = v21;

          sub_1A3C2EF94(v20, v22, &v46);
        }

LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
        return;
      }

      v23 = PXBoopItemProviderForAsset(v15);
      if (v23)
      {
        break;
      }

      v24 = v15;
      v25 = sub_1A5246F04();
      v26 = sub_1A524D244();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        *v27 = 138412290;
        *(v27 + 4) = v24;
        *v28 = v24;
        v29 = v24;
        _os_log_impl(&dword_1A3C1C000, v25, v26, "Unable to create a boop item provider from asset: %@", v27, 0xCu);
        sub_1A3CB65E4(v28);
        MEMORY[0x1A590EEC0](v28, -1, -1);
        v30 = v27;
        v5 = v42;
        MEMORY[0x1A590EEC0](v30, -1, -1);
        v24 = v25;
        v25 = v29;
      }

      ++v7;
      if (v45 == v5)
      {
        goto LABEL_31;
      }
    }

    v13 = v23;
    v31 = [v15 uuid];
    if (!v31)
    {
      goto LABEL_42;
    }

    v32 = v31;
    [v43 setObject:v13 forKey:v31];

LABEL_23:
    v33 = v13;
    MEMORY[0x1A5907D70]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1A524CA74();
    }

    sub_1A524CAE4();

    v6 = v7 + 1;
  }

  while (v45 != v5);
LABEL_31:

  if (qword_1EB15B4A0 != -1)
  {
    swift_once();
  }

  v34 = sub_1A5246F24();
  __swift_project_value_buffer(v34, qword_1EB15B4A8);
  v35 = v1;
  v36 = sub_1A5246F04();
  v37 = sub_1A524D264();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 134349056;
    v39 = v41();
    if (v39 >> 62)
    {
      v40 = sub_1A524E2B4();
    }

    else
    {
      v40 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v38 + 4) = v40;

    _os_log_impl(&dword_1A3C1C000, v36, v37, "Returning %{public}ld item providers", v38, 0xCu);
    MEMORY[0x1A590EEC0](v38, -1, -1);
  }

  else
  {

    v36 = v35;
  }
}

void sub_1A4922A38()
{
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x88))();
  sub_1A3C52C70(0, &qword_1EB126660, 0x1E6978630);
  sub_1A524CA14();

  PXMediaTypeForAssets();
}

void sub_1A4923080(void *a1, char a2)
{
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    if (a2)
    {
      v5 = v4;
      a1;
      sub_1A4923284([v5 selectionSnapshot]);
    }
  }

  else
  {
    sub_1A524E6E4();
    __break(1u);
  }
}

void sub_1A4923284(void *a1)
{
  v15 = MEMORY[0x1E69E7CC0];
  v2 = [a1 selectedIndexPaths];
  if ([v2 count] >= 1)
  {
    v3 = [a1 dataSource];
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4)
    {
      v5 = swift_allocObject();
      *(v5 + 16) = v4;
      *(v5 + 24) = &v15;
      v6 = swift_allocObject();
      *(v6 + 16) = sub_1A4924D50;
      *(v6 + 24) = v5;
      v14[4] = sub_1A4030BC8;
      v14[5] = v6;
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 1107296256;
      v14[2] = sub_1A402F794;
      v14[3] = &block_descriptor_21_12;
      v7 = _Block_copy(v14);
      v8 = v3;

      [v2 enumerateItemIndexPathsUsingBlock_];

      _Block_release(v7);
      LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

      if (v8)
      {
        __break(1u);
      }
    }

    else
    {
    }
  }

  if (qword_1EB15B4A0 != -1)
  {
    swift_once();
  }

  v9 = sub_1A5246F24();
  __swift_project_value_buffer(v9, qword_1EB15B4A8);
  v10 = sub_1A5246F04();
  v11 = sub_1A524D264();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134349056;
    swift_beginAccess();
    if (v15 >> 62)
    {
      v13 = sub_1A524E2B4();
    }

    else
    {
      v13 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v12 + 4) = v13;
    _os_log_impl(&dword_1A3C1C000, v10, v11, "Found %{public}ld assets in selection snapshot", v12, 0xCu);
    MEMORY[0x1A590EEC0](v12, -1, -1);
  }

  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

id sub_1A49235D8(void *a1, double a2, double a3)
{
  v7 = (*((*MEMORY[0x1E69E7D40] & *v3) + 0xA0))();
  if (v7)
  {
    v8 = v7;
LABEL_9:
    v16 = [objc_allocWithZone(off_1E7721750) init];
    [v16 setVersion_];
    [v16 setDeliveryMode_];
    [v16 setNetworkAccessAllowed_];
    [v16 setDownloadIntent_];
    v17 = [objc_allocWithZone(MEMORY[0x1E696ACA0]) init];
    sub_1A3C52C70(0, &qword_1EB126630, 0x1E69DCAB8);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v19 = swift_allocObject();
    *(v19 + 16) = a1;
    *(v19 + 24) = a2;
    *(v19 + 32) = a3;
    *(v19 + 40) = v8;
    *(v19 + 48) = v16;
    v31[4] = sub_1A4924D14;
    v31[5] = v19;
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 1107296256;
    v31[2] = sub_1A49242EC;
    v31[3] = &block_descriptor_304;
    v20 = _Block_copy(v31);
    v21 = a1;
    v22 = v8;
    v23 = v16;

    [v17 registerObjectOfClass:ObjCClassFromMetadata visibility:0 loadHandler:v20];

    _Block_release(v20);
    return v17;
  }

  if (qword_1EB15B4A0 != -1)
  {
    swift_once();
  }

  v9 = sub_1A5246F24();
  __swift_project_value_buffer(v9, qword_1EB15B4A8);
  v10 = sub_1A5246F04();
  v11 = sub_1A524D244();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1A3C1C000, v10, v11, "Image preview media provider was not supplied, falling back to default media provider", v12, 2u);
    MEMORY[0x1A590EEC0](v12, -1, -1);
  }

  v13 = [objc_opt_self() defaultManager];
  v14 = [v13 imageProviderForAsset_];

  objc_opt_self();
  v15 = swift_dynamicCastObjCClass();
  if (v15)
  {
    v8 = v15;
    swift_unknownObjectRetain();
    goto LABEL_9;
  }

  swift_unknownObjectRelease();
  v25 = a1;
  v26 = sub_1A5246F04();
  v27 = sub_1A524D244();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v28 = 138412290;
    *(v28 + 4) = v25;
    *v29 = v25;
    v30 = v25;
    _os_log_impl(&dword_1A3C1C000, v26, v27, "Could not retrieve a valid media provider to provide a preview image for asset: %@", v28, 0xCu);
    sub_1A3CB65E4(v29);
    MEMORY[0x1A590EEC0](v29, -1, -1);
    MEMORY[0x1A590EEC0](v28, -1, -1);
  }

  return 0;
}

void sub_1A49239C8(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, CGFloat a6, CGFloat a7)
{
  v36 = a1;
  v13 = sub_1A5246E54();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v34 - v18;
  if (qword_1EB1E01B0 != -1)
  {
    swift_once();
  }

  v20 = sub_1A5246E94();
  __swift_project_value_buffer(v20, qword_1EB1E01B8);
  sub_1A5246E84();
  sub_1A5246E24();
  v21 = a3;
  v22 = sub_1A5246E84();
  v35 = sub_1A524D654();
  if (sub_1A524DEC4())
  {
    v34[1] = a2;
    v34[2] = a4;
    v34[3] = a5;
    v23 = v21;
    v24 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v24 = 136446466;
    v25 = [v23 uuid];
    v34[0] = v23;

    if (v25)
    {
      v26 = sub_1A524C674();
      v28 = v27;

      sub_1A3C2EF94(v26, v28, aBlock);
    }

    __break(1u);
  }

  else
  {

    v29 = v21;
    (*(v14 + 16))(v16, v19, v13);
    sub_1A5246ED4();
    swift_allocObject();
    v30 = sub_1A5246EC4();
    (*(v14 + 8))(v19, v13);
    v31 = swift_allocObject();
    *(v31 + 16) = "BoopPreviewImage";
    *(v31 + 24) = 16;
    *(v31 + 32) = 2;
    v32 = v36;
    *(v31 + 40) = v30;
    *(v31 + 48) = v32;
    *(v31 + 56) = a2;
    aBlock[4] = sub_1A4924D3C;
    aBlock[5] = v31;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A4924238;
    aBlock[3] = &block_descriptor_12_10;
    v33 = _Block_copy(aBlock);

    [a4 requestCGImageForAsset:v29 targetSize:1 contentMode:a5 options:v33 resultHandler:{a6, a7}];
    _Block_release(v33);
  }
}

void sub_1A4923E10(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, int a5, uint64_t a6, void (*a7)(id, void *), uint64_t a8)
{
  v34 = a8;
  v35 = a7;
  v32 = a5;
  v36 = a4;
  v11 = sub_1A5246EA4();
  v31 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1A5246E54();
  v14 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {
    goto LABEL_11;
  }

  *&v39 = sub_1A524C674();
  *(&v39 + 1) = v17;
  sub_1A524E384();
  if (!*(a3 + 16) || (v18 = sub_1A3D5C0BC(v37), (v19 & 1) == 0))
  {
    sub_1A3D5FAFC(v37);
LABEL_11:
    v39 = 0u;
    v40 = 0u;
    goto LABEL_12;
  }

  sub_1A3C2F0BC(*(a3 + 56) + 32 * v18, &v39);
  sub_1A3D5FAFC(v37);
  if (*(&v40 + 1))
  {
    sub_1A3C52C70(0, &qword_1EB12C740, 0x1E696ABC0);
    if (swift_dynamicCast())
    {
      v20 = v37[0];
    }

    else
    {
      v20 = 0;
    }

    if (!a1)
    {
      goto LABEL_9;
    }

    goto LABEL_13;
  }

LABEL_12:
  sub_1A3C35B00(&v39);
  v20 = 0;
  if (!a1)
  {
LABEL_9:
    v21 = 0;
    goto LABEL_14;
  }

LABEL_13:
  v21 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithCGImage:a1 imageOrientation:a2];
LABEL_14:
  if (qword_1EB1E01B0 != -1)
  {
    swift_once();
  }

  v22 = sub_1A5246E94();
  __swift_project_value_buffer(v22, qword_1EB1E01B8);
  v23 = sub_1A5246E84();
  sub_1A5246EB4();
  v24 = sub_1A524D644();
  if ((sub_1A524DEC4() & 1) == 0)
  {
    goto LABEL_28;
  }

  if ((v32 & 1) == 0)
  {
    if (v36)
    {
LABEL_24:

      sub_1A5246EE4();

      v25 = v31;
      if ((*(v31 + 88))(v13, v11) == *MEMORY[0x1E69E93E8])
      {
        v26 = "[Error] Interval already ended";
      }

      else
      {
        (*(v25 + 8))(v13, v11);
        v26 = "";
      }

      v27 = swift_slowAlloc();
      *v27 = 0;
      v28 = sub_1A5246E34();
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v23, v24, v28, v36, v26, v27, 2u);
      MEMORY[0x1A590EEC0](v27, -1, -1);
LABEL_28:

      (*(v14 + 8))(v16, v33);
      v29 = v21;
      v30 = v20;
      v35(v21, v20);

      return;
    }

    __break(1u);
  }

  if (v36 >> 32)
  {
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if ((v36 & 0xFFFFF800) != 0xD800)
  {
    if (v36 >> 16 <= 0x10)
    {
      v36 = &v38;
      goto LABEL_24;
    }

    goto LABEL_30;
  }

LABEL_31:
  __break(1u);
}

double sub_1A4924238(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  if (a4)
  {
    v7 = sub_1A524C3E4();
  }

  else
  {
    v7 = 0;
  }

  v8 = a2;
  v6(a2, a3, v7);

  return result;
}

id sub_1A49242EC(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  v5 = v2(sub_1A3D96FA4, v4);

  return v5;
}

id sub_1A492438C(unint64_t a1, void *a2)
{
  if (a1 >> 62)
  {
    goto LABEL_9;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    while ((a1 & 0xC000000000000001) == 0)
    {
      if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v2 = *(a1 + 32);
        goto LABEL_6;
      }

      __break(1u);
LABEL_9:
      v3 = a1;
      v4 = sub_1A524E2B4();
      a1 = v3;
      if (!v4)
      {
        return MEMORY[0x1E69E7CC0];
      }
    }

    MEMORY[0x1A59097F0](0, a1);
LABEL_6:
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1A49245D8()
{
  v1 = OBJC_IVAR___PXBoopableItemsProvider_Swift_selectionManager;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = v0;
    v4 = qword_1EB15B4A0;
    v5 = v2;
    if (v4 != -1)
    {
      swift_once();
    }

    v6 = sub_1A5246F24();
    __swift_project_value_buffer(v6, qword_1EB15B4A8);
    v7 = v5;
    v8 = sub_1A5246F04();
    v9 = sub_1A524D264();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      *(v10 + 4) = v7;
      *v11 = v2;
      v12 = v7;
      _os_log_impl(&dword_1A3C1C000, v8, v9, "Unregistering observer for changes in selection manager: %@", v10, 0xCu);
      sub_1A3CB65E4(v11);
      MEMORY[0x1A590EEC0](v11, -1, -1);
      MEMORY[0x1A590EEC0](v10, -1, -1);
    }

    v0 = v3;
    [v7 unregisterChangeObserver:v3 context:0];
  }

  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0x90))(MEMORY[0x1E69E7CC0]);
}

uint64_t sub_1A492479C(unint64_t a1, double a2, double a3)
{
  if ((a1 & 0x8000000000000000) != 0 || ((v7 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x88), v8 = v7(), v8 >> 62) ? (v9 = sub_1A524E2B4()) : (v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10)), v10 = , v9 <= a1))
  {
    if (qword_1EB15B4A0 != -1)
    {
      swift_once();
    }

    v15 = sub_1A5246F24();
    __swift_project_value_buffer(v15, qword_1EB15B4A8);
    v16 = v3;
    v13 = sub_1A5246F04();
    v17 = sub_1A524D244();
    if (os_log_type_enabled(v13, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 134218240;
      *(v18 + 4) = a1;
      *(v18 + 12) = 2048;
      v19 = (*((*MEMORY[0x1E69E7D40] & v16->isa) + 0x88))();
      if (v19 >> 62)
      {
        v20 = sub_1A524E2B4();
      }

      else
      {
        v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v18 + 14) = v20;

      _os_log_impl(&dword_1A3C1C000, v13, v17, "Out of bounds request for asset at index %ld when we have %ld assets", v18, 0x16u);
      MEMORY[0x1A590EEC0](v18, -1, -1);
      v14 = 0;
    }

    else
    {

      v14 = 0;
      v13 = v16;
    }

    goto LABEL_16;
  }

  result = (v7)(v10);
  if ((result & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x1A59097F0](a1, result);
    goto LABEL_8;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
  {
    v12 = *(result + 8 * a1 + 32);
LABEL_8:
    v13 = v12;

    v14 = sub_1A49235D8(v13, a2, a3);
LABEL_16:

    return v14;
  }

  __break(1u);
  return result;
}

double sub_1A4924D50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v10[0] = a1;
  v10[1] = a2;
  v10[2] = a3;
  v10[3] = a4;
  v7 = [v5 assetAtItemIndexPath_];
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v8 = swift_unknownObjectRetain();
    MEMORY[0x1A5907D70](v8);
    if (*((*v6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1A524CA74();
    }

    sub_1A524CAE4();
  }

  swift_unknownObjectRelease();
  return result;
}

void *sub_1A4924EFC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 160))(&v4);
  *a2 = v4;
  return result;
}

void sub_1A4924F90()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A49273EC(&qword_1EB145120, type metadata accessor for StoryViewCurationModel, &protocol conformance descriptor for StoryViewCurationModel);

  sub_1A5245714();
}

void sub_1A492505C(unsigned __int8 *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  sub_1A49273EC(&qword_1EB145120, type metadata accessor for StoryViewCurationModel, &protocol conformance descriptor for StoryViewCurationModel);

  sub_1A5245714();
}

uint64_t sub_1A492532C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 184))();
  *a2 = result;
  return result;
}

uint64_t sub_1A49253B4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 208))();
  *a2 = result;
  return result;
}

void sub_1A4925414(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A49273EC(&qword_1EB145120, type metadata accessor for StoryViewCurationModel, &protocol conformance descriptor for StoryViewCurationModel);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A49254E4(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A49273EC(&qword_1EB145120, type metadata accessor for StoryViewCurationModel, &protocol conformance descriptor for StoryViewCurationModel);

  sub_1A5245714();
}

void sub_1A49255B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A49273EC(&qword_1EB145120, type metadata accessor for StoryViewCurationModel, &protocol conformance descriptor for StoryViewCurationModel);

  sub_1A5245724();
}

void sub_1A492566C()
{
  type metadata accessor for StoryViewCurationModel.Mutator(0);
  swift_allocObject();
  swift_getKeyPath();
  sub_1A49273EC(&qword_1EB145128, type metadata accessor for StoryViewCurationModel.Mutator, &protocol conformance descriptor for StoryViewCurationModel.Mutator);
  sub_1A52456D4();
}

void sub_1A4925770(uint64_t a1)
{
  swift_allocObject();
  swift_getKeyPath();
  sub_1A49273EC(&qword_1EB145128, type metadata accessor for StoryViewCurationModel.Mutator, &protocol conformance descriptor for StoryViewCurationModel.Mutator);
  sub_1A52456D4();
}

void *sub_1A4925870@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 120))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_1A49258CC(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*(*v2 + 128))(&v4);
}

void sub_1A4925924()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52456A4();
}

void sub_1A492599C(char *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1A52456B4();
}

void sub_1A4925A0C(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  sub_1A5245694();
}

uint64_t StoryViewCurationModel.Mutator.deinit()
{

  v1 = OBJC_IVAR____TtCC12PhotosUICore22StoryViewCurationModel7Mutator__currentCurationKind;
  sub_1A4927434(0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCC12PhotosUICore22StoryViewCurationModel7Mutator__availableCurationKinds;
  sub_1A4927504(0);
  v5 = v4;
  v6 = *(*(v4 - 8) + 8);
  v6(v0 + v3, v4);
  v6(v0 + OBJC_IVAR____TtCC12PhotosUICore22StoryViewCurationModel7Mutator__allCurationKinds, v5);
  return v0;
}

uint64_t StoryViewCurationModel.Mutator.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtCC12PhotosUICore22StoryViewCurationModel7Mutator__currentCurationKind;
  sub_1A4927434(0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCC12PhotosUICore22StoryViewCurationModel7Mutator__availableCurationKinds;
  sub_1A4927504(0);
  v5 = v4;
  v6 = *(*(v4 - 8) + 8);
  v6(v0 + v3, v4);
  v6(v0 + OBJC_IVAR____TtCC12PhotosUICore22StoryViewCurationModel7Mutator__allCurationKinds, v5);

  return swift_deallocClassInstance();
}

void (*sub_1A4925D34(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(*v1 + 136))();
  return sub_1A3D3D728;
}

void sub_1A4925DC4(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC12PhotosUICore22StoryViewCurationModel_customStoryViewDurationChangeHandler);
  if (v3)
  {
    v4 = *(v1 + OBJC_IVAR____TtC12PhotosUICore22StoryViewCurationModel_customStoryViewDurationChangeHandler + 8);

    v3(a1);

    sub_1A3C33378(v3, v4);
  }

  else
  {
    v5 = [*(v1 + OBJC_IVAR____TtC12PhotosUICore22StoryViewCurationModel_storyViewModel) actionPerformer];
    if (v5)
    {
      [v5 performActionForChromeActionMenuItem:2 withValue:a1 sender:0 presentationSource:0];

      swift_unknownObjectRelease();
    }

    else
    {
      if (qword_1EB1E01D0 != -1)
      {
        swift_once();
      }

      v6 = sub_1A5246F24();
      __swift_project_value_buffer(v6, qword_1EB1E01D8);
      oslog = sub_1A5246F04();
      v7 = sub_1A524D254();
      if (os_log_type_enabled(oslog, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&dword_1A3C1C000, oslog, v7, "missing action performer", v8, 2u);
        MEMORY[0x1A590EEC0](v8, -1, -1);
      }
    }
  }
}

double sub_1A4925F7C(uint64_t a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC12PhotosUICore22StoryViewCurationModel_recipeManager;
  v4 = *(v1 + OBJC_IVAR____TtC12PhotosUICore22StoryViewCurationModel_recipeManager);
  if (v4)
  {
    if (v4 == a1)
    {
      return result;
    }
  }

  else if (!a1)
  {
    return result;
  }

  sub_1A4926084();
  v5 = *(v1 + v3);
  if (v5)
  {
    swift_allocObject();
    swift_weakInit();
    v5;

    sub_1A524D1A4();
  }

  v6 = (v2 + OBJC_IVAR____TtC12PhotosUICore22StoryViewCurationModel_recipeManagerObservation);
  *v6 = 0;
  v6[1] = 0;

  swift_unknownObjectRelease();
  return result;
}

void sub_1A4926084()
{
  v1 = *(v0 + OBJC_IVAR____TtC12PhotosUICore22StoryViewCurationModel_recipeManager);
  if (v1)
  {
    v2 = v1;
    v3 = [v2 recipe];
    [v3 overallDurationInfo];
    v4 = *v47;

    if ([v2 manuallyCuratedAssets])
    {
      swift_unknownObjectRelease();
    }

    else if (*v47 != 2)
    {
      v5 = MEMORY[0x1E69E7CC0];
      goto LABEL_8;
    }

    v5 = sub_1A4926E00(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v7 = *(v5 + 2);
    v6 = *(v5 + 3);
    if (v7 >= v6 >> 1)
    {
      v5 = sub_1A4926E00((v6 > 1), v7 + 1, 1, v5);
    }

    *(v5 + 2) = v7 + 1;
    *&v5[8 * v7 + 32] = 2;
LABEL_8:
    v8 = [v2 availableCurationLengths];
    if ((PHMemoryCurationLengthFromPFStoryOverallDurationKind(3uLL) & ~v8) == 0 || v4 == 3)
    {
      swift_beginAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_1A4926E00(0, *(v5 + 2) + 1, 1, v5);
      }

      v11 = *(v5 + 2);
      v10 = *(v5 + 3);
      if (v11 >= v10 >> 1)
      {
        v5 = sub_1A4926E00((v10 > 1), v11 + 1, 1, v5);
      }

      *(v5 + 2) = v11 + 1;
      *&v5[8 * v11 + 32] = 3;
      swift_endAccess();
    }

    if ((PHMemoryCurationLengthFromPFStoryOverallDurationKind(4uLL) & ~v8) == 0 || v4 == 4)
    {
      swift_beginAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_1A4926E00(0, *(v5 + 2) + 1, 1, v5);
      }

      v14 = *(v5 + 2);
      v13 = *(v5 + 3);
      if (v14 >= v13 >> 1)
      {
        v5 = sub_1A4926E00((v13 > 1), v14 + 1, 1, v5);
      }

      *(v5 + 2) = v14 + 1;
      *&v5[8 * v14 + 32] = 4;
      swift_endAccess();
    }

    if ((PHMemoryCurationLengthFromPFStoryOverallDurationKind(5uLL) & ~v8) == 0 || v4 == 5)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_1A4926E00(0, *(v5 + 2) + 1, 1, v5);
      }

      v17 = *(v5 + 2);
      v16 = *(v5 + 3);
      if (v17 >= v16 >> 1)
      {
        v5 = sub_1A4926E00((v16 > 1), v17 + 1, 1, v5);
      }

      *(v5 + 2) = v17 + 1;
      *&v5[8 * v17 + 32] = 5;
    }

    PFStoryOverallDurationKind.lemonadeCurationKind.getter(v4, v47);
    v44 = v47[0];
    v18 = *(v5 + 2);
    v19 = MEMORY[0x1E69E7CC0];
    if (v18)
    {
      v20 = (v5 + 32);
      v21 = MEMORY[0x1E69E7CC0];
      do
      {
        v22 = *v20++;
        PFStoryOverallDurationKind.lemonadeCurationKind.getter(v22, v47);
        v23 = v47[0];
        if (v47[0] != 6)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v21 = sub_1A4367EC4(0, *(v21 + 2) + 1, 1, v21);
          }

          v25 = *(v21 + 2);
          v24 = *(v21 + 3);
          if (v25 >= v24 >> 1)
          {
            v21 = sub_1A4367EC4((v24 > 1), v25 + 1, 1, v21);
          }

          *(v21 + 2) = v25 + 1;
          v21[v25 + 32] = v23;
        }

        --v18;
      }

      while (v18);
    }

    else
    {
      v21 = MEMORY[0x1E69E7CC0];
    }

    v43 = swift_allocObject();
    *(v43 + 16) = v19;
    v26 = (v43 + 16);
    if (sub_1A408F39C(3, v21))
    {
      swift_beginAccess();
      v27 = *v26;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v26 = v27;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v27 = sub_1A4367EC4(0, *(v27 + 2) + 1, 1, v27);
        *v26 = v27;
      }

      v30 = *(v27 + 2);
      v29 = *(v27 + 3);
      if (v30 >= v29 >> 1)
      {
        v27 = sub_1A4367EC4((v29 > 1), v30 + 1, 1, v27);
      }

      *(v27 + 2) = v30 + 1;
      v27[v30 + 32] = 3;
      *v26 = v27;
      swift_endAccess();
    }

    swift_beginAccess();
    v31 = *v26;
    v32 = swift_isUniquelyReferenced_nonNull_native();
    *v26 = v31;
    if ((v32 & 1) == 0)
    {
      v31 = sub_1A4367EC4(0, *(v31 + 2) + 1, 1, v31);
      *v26 = v31;
    }

    v34 = *(v31 + 2);
    v33 = *(v31 + 3);
    if (v34 >= v33 >> 1)
    {
      v31 = sub_1A4367EC4((v33 > 1), v34 + 1, 1, v31);
    }

    *(v31 + 2) = v34 + 1;
    v31[v34 + 32] = 0;
    *v26 = v31;
    v36 = *(v31 + 2);
    v35 = *(v31 + 3);
    if (v36 >= v35 >> 1)
    {
      v31 = sub_1A4367EC4((v35 > 1), v36 + 1, 1, v31);
    }

    *(v31 + 2) = v36 + 1;
    v31[v36 + 32] = 1;
    *v26 = v31;
    v38 = *(v31 + 2);
    v37 = *(v31 + 3);
    if (v38 >= v37 >> 1)
    {
      v31 = sub_1A4367EC4((v37 > 1), v38 + 1, 1, v31);
    }

    *(v31 + 2) = v38 + 1;
    v31[v38 + 32] = 2;
    *v26 = v31;
    swift_endAccess();
    v46 = static LemonadeCurationKind.allCases.getter();
    v39 = *(v46 + 2);
    if (v39)
    {
      v40 = v46 + 32;
      do
      {
        v41 = *v40++;
        if (sub_1A408F39C(v41, v21))
        {
          _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
        }

        --v39;
      }

      while (v39);
    }

    *v47 = v45;
    v42 = swift_allocObject();
    *(v42 + 16) = v44;
    *(v42 + 24) = v21;
    *(v42 + 32) = v43;
    type metadata accessor for StoryViewCurationModel(0);
    sub_1A49273EC(&qword_1EB145168, type metadata accessor for StoryViewCurationModel, &protocol conformance descriptor for StoryViewCurationModel);

    sub_1A5245F44();
  }
}

uint64_t StoryViewCurationModel.deinit()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore22StoryViewCurationModel__currentCurationKind;
  sub_1A49275D4(0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC12PhotosUICore22StoryViewCurationModel__availableCurationKinds;
  sub_1A49276A4(0);
  v5 = v4;
  v6 = *(*(v4 - 8) + 8);
  v6(v0 + v3, v4);
  v6(v0 + OBJC_IVAR____TtC12PhotosUICore22StoryViewCurationModel__allCurationKinds, v5);

  swift_unknownObjectRelease();
  sub_1A3C33378(*(v0 + OBJC_IVAR____TtC12PhotosUICore22StoryViewCurationModel_customStoryViewDurationChangeHandler), *(v0 + OBJC_IVAR____TtC12PhotosUICore22StoryViewCurationModel_customStoryViewDurationChangeHandler + 8));

  swift_unknownObjectRelease();
  return v0;
}

uint64_t StoryViewCurationModel.__deallocating_deinit()
{
  StoryViewCurationModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1A4926AD4@<X0>(uint64_t *a1@<X8>)
{
  result = (*(**v1 + 232))();
  *a1 = result;
  return result;
}

void sub_1A4926C08(uint64_t a1, uint64_t a2)
{
  type metadata accessor for StoryViewCurationModel(0);
  sub_1A49273EC(&qword_1EB145168, type metadata accessor for StoryViewCurationModel, &protocol conformance descriptor for StoryViewCurationModel);

  sub_1A5245F44();
}

id sub_1A4926C94@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + OBJC_IVAR____TtC12PhotosUICore22StoryViewCurationModel_observable);
  *a1 = v2;
  return v2;
}

void sub_1A4926CAC(uint64_t a1, uint64_t a2)
{
  type metadata accessor for StoryViewCurationModel(0);
  sub_1A49273EC(&qword_1EB145120, type metadata accessor for StoryViewCurationModel, &protocol conformance descriptor for StoryViewCurationModel);

  sub_1A5245C54();
}

uint64_t sub_1A4926D38()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB1E01D8);
  __swift_project_value_buffer(v0, qword_1EB1E01D8);
  sub_1A524C814();
  return sub_1A5246F14();
}

char *sub_1A4926E00(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A4927DB4(0);
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
    v10 = MEMORY[0x1E69E7CC0];
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

void sub_1A4926EF8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_1A49276A4(0);
  MEMORY[0x1EEE9AC00](v5);
  sub_1A49275D4(0);
  MEMORY[0x1EEE9AC00](v6);
  v7 = OBJC_IVAR____TtC12PhotosUICore22StoryViewCurationModel_observable;
  *(v4 + v7) = [objc_allocWithZone(off_1E77217D8) init];
  v8 = (v4 + OBJC_IVAR____TtC12PhotosUICore22StoryViewCurationModel_storyViewModelObservation);
  *v8 = 0;
  v8[1] = 0;
  *(v4 + OBJC_IVAR____TtC12PhotosUICore22StoryViewCurationModel_recipeManager) = 0;
  v9 = (v4 + OBJC_IVAR____TtC12PhotosUICore22StoryViewCurationModel_recipeManagerObservation);
  *v9 = 0;
  v9[1] = 0;
  sub_1A486B8CC();
  type metadata accessor for StoryViewCurationModel(0);
  v10 = MEMORY[0x1E69E6720];
  sub_1A4927E0C(0, &qword_1EB12A328, &type metadata for LemonadeCurationKind, MEMORY[0x1E69E6720]);
  sub_1A49273EC(&qword_1EB145120, type metadata accessor for StoryViewCurationModel, &protocol conformance descriptor for StoryViewCurationModel);
  sub_1A4927E5C(&qword_1EB12A320, &qword_1EB12A328, v10, MEMORY[0x1E69E7C80]);
  sub_1A5245754();
}

uint64_t sub_1A49273EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1A4927434(uint64_t a1)
{
  if (!qword_1EB145130)
  {
    type metadata accessor for StoryViewCurationModel.Mutator(255);
    sub_1A4927E0C(255, &qword_1EB12A328, &type metadata for LemonadeCurationKind, MEMORY[0x1E69E6720]);
    sub_1A49273EC(&qword_1EB145128, type metadata accessor for StoryViewCurationModel.Mutator, &protocol conformance descriptor for StoryViewCurationModel.Mutator);
    sub_1A52456C4();
  }
}

void sub_1A4927504(uint64_t a1)
{
  if (!qword_1EB145138)
  {
    type metadata accessor for StoryViewCurationModel.Mutator(255);
    sub_1A4927E0C(255, &qword_1EB126F38, &type metadata for LemonadeCurationKind, MEMORY[0x1E69E62F8]);
    sub_1A49273EC(&qword_1EB145128, type metadata accessor for StoryViewCurationModel.Mutator, &protocol conformance descriptor for StoryViewCurationModel.Mutator);
    sub_1A52456C4();
  }
}

void sub_1A49275D4(uint64_t a1)
{
  if (!qword_1EB145140)
  {
    type metadata accessor for StoryViewCurationModel(255);
    sub_1A4927E0C(255, &qword_1EB12A328, &type metadata for LemonadeCurationKind, MEMORY[0x1E69E6720]);
    sub_1A49273EC(&qword_1EB145120, type metadata accessor for StoryViewCurationModel, &protocol conformance descriptor for StoryViewCurationModel);
    sub_1A5245764();
  }
}

void sub_1A49276A4(uint64_t a1)
{
  if (!qword_1EB145148)
  {
    type metadata accessor for StoryViewCurationModel(255);
    sub_1A4927E0C(255, &qword_1EB126F38, &type metadata for LemonadeCurationKind, MEMORY[0x1E69E62F8]);
    sub_1A49273EC(&qword_1EB145120, type metadata accessor for StoryViewCurationModel, &protocol conformance descriptor for StoryViewCurationModel);
    sub_1A5245764();
  }
}

uint64_t sub_1A4927780(uint64_t a1)
{
  *(a1 + 8) = sub_1A49273EC(&qword_1EB145150, type metadata accessor for StoryViewCurationModel, &protocol conformance descriptor for StoryViewCurationModel);
  result = sub_1A49273EC(&qword_1EB145158, type metadata accessor for StoryViewCurationModel, &protocol conformance descriptor for StoryViewCurationModel);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1A4927894(uint64_t a1)
{
  result = sub_1A49273EC(&qword_1EB145160, type metadata accessor for StoryViewCurationModel, &protocol conformance descriptor for StoryViewCurationModel);
  *(a1 + 8) = result;
  return result;
}

void sub_1A4927988(uint64_t a1)
{
  sub_1A49275D4(319);
  if (v1 <= 0x3F)
  {
    sub_1A49276A4(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1A4927B40(uint64_t a1)
{
  sub_1A4927434(319);
  if (v1 <= 0x3F)
  {
    sub_1A4927504(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1A4927CA0(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *a1;
  LOBYTE(v5[0]) = v2;
  (*(*v4 + 128))(v5);
  swift_getKeyPath();
  swift_getKeyPath();
  v5[0] = v3;

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A4927DB4(uint64_t a1)
{
  if (!qword_1EB145170)
  {
    type metadata accessor for PFStoryOverallDurationKind(255);
    v1 = sub_1A524EA54();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB145170);
    }
  }
}

void sub_1A4927E0C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1A4927E5C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1A4927E0C(255, a2, &type metadata for LemonadeCurationKind, a3);
    sub_1A3F5F320();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A4927ECC(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if ((a2 & 0x40) != 0)
    {
      v5 = [*(Strong + OBJC_IVAR____TtC12PhotosUICore22StoryViewCurationModel_storyViewModel) mainModel];
      v6 = [v5 recipeManager];

      v7 = *(v4 + OBJC_IVAR____TtC12PhotosUICore22StoryViewCurationModel_recipeManager);
      *(v4 + OBJC_IVAR____TtC12PhotosUICore22StoryViewCurationModel_recipeManager) = v6;
      v8 = v6;
      sub_1A4925F7C(v7);
    }

    else
    {
    }
  }
}

double sub_1A4927FA0(uint64_t a1, char a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if ((a2 & 0x21) != 0)
    {
      sub_1A4926084();
    }
  }

  return result;
}

void InvitationsItemList.init(invitationsItems:)(uint64_t a1)
{
  v1 = type metadata accessor for InvitationsItem(0) - 8;
  MEMORY[0x1EEE9AC00](v1);
  sub_1A52458F4();
}

void InvitationsItemList.value.getter(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  sub_1A49284F0(0);
  a1[3] = v4;
  *a1 = v3;

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

unint64_t InvitationsItemList.item(at:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = result;
  v5 = *(v2 + 16);
  if (*(v5 + 16) <= result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = *(type metadata accessor for InvitationsItem(0) - 8);
  v7 = v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v3;

  return sub_1A4928430(v7, a2);
}

uint64_t InvitationsItemList.deinit()
{

  return v0;
}

uint64_t InvitationsItemList.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1A4928374@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = result;
  v5 = *(*v2 + 16);
  if (*(v5 + 16) <= result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = *(type metadata accessor for InvitationsItem(0) - 8);
  v7 = v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v3;

  return sub_1A4928430(v7, a2);
}

uint64_t sub_1A4928430(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InvitationsItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A4928494(uint64_t a1)
{
  v2 = type metadata accessor for InvitationsItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1A49284F0(uint64_t a1)
{
  if (!qword_1EB145178)
  {
    type metadata accessor for InvitationsItem(255);
    v1 = sub_1A524CB74();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB145178);
    }
  }
}

uint64_t sub_1A4928600(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A4928674@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for DebugInfoPanelViewModel();
  result = sub_1A52478D4();
  *a2 = result;
  return result;
}

uint64_t sub_1A49286B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(type metadata accessor for DebugInfoPanel(0) + 20);
  *(a3 + v6) = swift_getKeyPath();
  sub_1A492FC70(0, &qword_1EB128A38, sub_1A3EBE398, MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for DebugInfoPanelViewModel();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  sub_1A492A990(&qword_1EB145180, v8, type metadata accessor for DebugInfoPanelViewModel, &unk_1A537478C);
  result = sub_1A5248494();
  *a3 = result;
  a3[1] = v10;
  return result;
}

uint64_t sub_1A49287F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  sub_1A492A7B4(0);
  v42 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DebugInfoPanel(0);
  v38 = *(v6 - 8);
  v7 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v37 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A492A724(0);
  v41 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A5249284();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A492A650(0);
  v16 = *(v15 - 8);
  v39 = v15;
  v40 = v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = a1;
  v20 = *(a1 + 8);
  v44 = *a1;
  v45 = v20;
  (*(v12 + 104))(v14, *MEMORY[0x1E697C438], v11, v17);
  v21 = sub_1A492A6D0();

  sub_1A524ACE4();
  (*(v12 + 8))(v14, v11);

  *v10 = sub_1A5249314();
  *(v10 + 1) = 0;
  v10[16] = 1;
  sub_1A4930908(0);
  v22 = sub_1A524C634();
  v23 = PXLocalizedString(v22);

  v24 = sub_1A524C674();
  v26 = v25;

  v44 = v24;
  v45 = v26;
  v27 = v36;
  v28 = v37;
  sub_1A492FDF0(v36, v37, type metadata accessor for DebugInfoPanel);
  v29 = (*(v38 + 80) + 16) & ~*(v38 + 80);
  v30 = swift_allocObject();
  sub_1A493099C(v28, v30 + v29, type metadata accessor for DebugInfoPanel);
  sub_1A3D5F9DC();
  sub_1A524B754();
  *v5 = sub_1A5249314();
  *(v5 + 1) = 0;
  v5[16] = 1;
  sub_1A492FEA8(0, &unk_1EB1453C0, sub_1A492A888, MEMORY[0x1E697E258], MEMORY[0x1E697E250]);
  sub_1A4928E64(v27, &v5[*(v31 + 44)]);
  v44 = &type metadata for DebugInfoPanelContentView;
  v45 = v21;
  swift_getOpaqueTypeConformance2();
  v32 = MEMORY[0x1E69817F8];
  sub_1A492A990(&qword_1EB1451D8, 255, sub_1A492A724, MEMORY[0x1E69817F8]);
  sub_1A492A990(&qword_1EB1451E0, 255, sub_1A492A7B4, v32);
  v33 = v39;
  sub_1A524ACC4();
  sub_1A492EADC(v5, sub_1A492A7B4);
  sub_1A492EADC(v10, sub_1A492A724);
  return (*(v40 + 8))(v19, v33);
}

uint64_t sub_1A4928D44()
{
  v0 = sub_1A52489C4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1A3EBE398(0);
  v2 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DebugInfoPanel(0);
  sub_1A3F24CA8(v4);
  MEMORY[0x1A5906C60](v2);
  sub_1A52489B4();
  sub_1A524B904();
  return sub_1A492EADC(v4, sub_1A3EBE398);
}

uint64_t sub_1A4928E64@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v32 = a1;
  v36 = a2;
  v3 = type metadata accessor for DebugInfoPanel(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v31 = v5;
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A492A908(0);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v35 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v34 = &v29 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v33 = &v29 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v29 - v16;
  sub_1A492FDF0(a1, v6, type metadata accessor for DebugInfoPanel);
  v18 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v19 = swift_allocObject();
  v30 = type metadata accessor for DebugInfoPanel;
  sub_1A493099C(v6, v19 + v18, type metadata accessor for DebugInfoPanel);
  sub_1A492F040(0, &qword_1EB128530, sub_1A3F32A14, MEMORY[0x1E6981748]);
  sub_1A3F37498();
  sub_1A524B704();
  sub_1A492FDF0(v32, v6, type metadata accessor for DebugInfoPanel);
  v20 = swift_allocObject();
  sub_1A493099C(v6, v20 + v18, v30);
  v21 = v33;
  sub_1A524B704();
  v22 = *(v9 + 16);
  v23 = v34;
  v22(v34, v17, v8);
  v24 = v35;
  v22(v35, v21, v8);
  v25 = v36;
  v22(v36, v23, v8);
  sub_1A492E368(0, &qword_1EB1451C0, sub_1A492A908);
  v22(&v25[*(v26 + 48)], v24, v8);
  v27 = *(v9 + 8);
  v27(v21, v8);
  v27(v17, v8);
  v27(v24, v8);
  return (v27)(v23, v8);
}

uint64_t sub_1A492929C@<X0>(uint64_t *a3@<X8>)
{
  v4 = sub_1A524B544();
  sub_1A492F040(0, &qword_1EB128530, sub_1A3F32A14, MEMORY[0x1E6981748]);
  v6 = a3 + *(v5 + 36);
  sub_1A3F32A14(0);
  v8 = *(v7 + 28);
  v9 = *MEMORY[0x1E69816C0];
  v10 = sub_1A524B5B4();
  (*(*(v10 - 8) + 104))(&v6[v8], v9, v10);
  result = swift_getKeyPath();
  *v6 = result;
  *a3 = v4;
  return result;
}

void sub_1A4929370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1A492FE58(0, &unk_1EB139448, MEMORY[0x1E69E7CA0] + 8, type metadata accessor for DebugRow);
  v80 = v7;
  v78 = *(v7 - 1);
  MEMORY[0x1EEE9AC00](v7);
  v81 = &v60[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v60[-v10];
  MEMORY[0x1EEE9AC00](v12);
  v75 = &v60[-v13];
  v79 = type metadata accessor for DebugSection(0);
  v14 = *(v79 - 1);
  MEMORY[0x1EEE9AC00](v79);
  v72 = &v60[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = sub_1A524C8B4();
  v18 = v17;
  v85 = 0;
  v86 = 0xE000000000000000;
  sub_1A524E404();

  v85 = 2570;
  v86 = 0xE200000000000000;
  v62 = v16;
  v63 = v18;
  MEMORY[0x1A5907B60](v16, v18);
  MEMORY[0x1A5907B60](0x202D2D2D2D2D2D2DLL, 0xE800000000000000);
  ObjectType = swift_getObjectType();
  v20 = (*(a2 + 8))(ObjectType, a2);
  MEMORY[0x1A5907B60](v20);

  MEMORY[0x1A5907B60](0x2D2D2D2D2D2D2D20, 0xE800000000000000);
  v22 = v85;
  v21 = v86;
  swift_beginAccess();
  MEMORY[0x1A5907B60](v22, v21);
  swift_endAccess();

  v23 = (*(a2 + 16))(ObjectType, a2);
  v70 = *(v23 + 16);
  if (v70)
  {
    v24 = 0;
    v25 = v79[5];
    v69 = v79[6];
    v26 = v72;
    v68 = &v72[v25];
    v67 = &v72[v79[7]];
    v66 = v23 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v76 = a3 + 2;
    v27 = __OFADD__(a3, 2);
    v61 = v27;
    v82 = a4;
    v73 = a3;
    v65 = v14;
    v64 = v23;
    v74 = v11;
    while (v24 < *(v23 + 16))
    {
      v28 = *(v14 + 72);
      v71 = v24;
      sub_1A492FDF0(v66 + v28 * v24, v26, type metadata accessor for DebugSection);
      swift_beginAccess();
      MEMORY[0x1A5907B60](10, 0xE100000000000000);
      swift_endAccess();
      if (sub_1A524C7A4() >= 1)
      {
        v85 = v62;
        v86 = v63;
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      v83 = MEMORY[0x1E69E7CC0];
      if (*&v72[v69])
      {
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      v29 = *v67;
      if (*v67)
      {
        v30 = *(v67 + 1);
        MEMORY[0x1EEE9AC00](0);
        *&v60[-16] = &v83;

        v29(sub_1A4930DA4, &v60[-32]);
        sub_1A3C33378(v29, v30);
      }

      v31 = v83;
      v79 = *(v83 + 16);
      if (v79)
      {
        v32 = 0;
        v33 = MEMORY[0x1E69E7CC0];
        v34 = MEMORY[0x1E69E7CA0];
        v77 = v83;
        while (v32 < *(v31 + 16))
        {
          v35 = (*(v78 + 80) + 32) & ~*(v78 + 80);
          v36 = *(v78 + 72);
          v37 = v31 + v35 + v36 * v32;
          v38 = v75;
          sub_1A492AA18(v37, v75, &unk_1EB139448, v34 + 8, type metadata accessor for DebugRow);
          v39 = v80;
          v40 = v34;
          v41 = MEMORY[0x1E69E6720];
          sub_1A492AA18(&v38[v80[8]], &v85, &qword_1EB126130, v40 + 8, MEMORY[0x1E69E6720]);
          v42 = v87;
          sub_1A3C2CD10(&v85, &qword_1EB126130, v40 + 8, v41);
          if (v42 || *&v38[v39[10]] || *&v38[v39[9]] || v38[v39[11]] == 1)
          {
            sub_1A492AA88(v38, v81);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v88 = v33;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1A492DB64(0, *(v33 + 16) + 1, 1);
              v33 = v88;
            }

            v34 = MEMORY[0x1E69E7CA0];
            v11 = v74;
            v31 = v77;
            v45 = *(v33 + 16);
            v44 = *(v33 + 24);
            if (v45 >= v44 >> 1)
            {
              sub_1A492DB64((v44 > 1), v45 + 1, 1);
              v34 = MEMORY[0x1E69E7CA0];
              v33 = v88;
            }

            *(v33 + 16) = v45 + 1;
            sub_1A492AA88(v81, v33 + v35 + v45 * v36);
          }

          else
          {
            v34 = MEMORY[0x1E69E7CA0];
            sub_1A3C2CD10(v38, &unk_1EB139448, MEMORY[0x1E69E7CA0] + 8, type metadata accessor for DebugRow);
            v11 = v74;
            v31 = v77;
          }

          if (v79 == ++v32)
          {
            goto LABEL_30;
          }
        }

        __break(1u);
        break;
      }

      v33 = MEMORY[0x1E69E7CC0];
      v34 = MEMORY[0x1E69E7CA0];
LABEL_30:

      v46 = *(v33 + 16);
      if (v46)
      {
        if (v61)
        {
          goto LABEL_41;
        }

        v47 = &v11[v80[9]];
        v48 = v33 + ((*(v78 + 80) + 32) & ~*(v78 + 80));
        v49 = *(v78 + 72);
        do
        {
          sub_1A492AA18(v48, v11, &unk_1EB139448, v34 + 8, type metadata accessor for DebugRow);
          v51 = sub_1A524C8B4();
          v53 = v34;
          v54 = *v47;
          if (*v47)
          {
            v50 = v47[1];
            swift_unknownObjectRetain();

            sub_1A4929370(v54, v50, v73 + 1, v82);
            swift_unknownObjectRelease();
          }

          else
          {
            v83 = 10;
            v84 = 0xE100000000000000;
            MEMORY[0x1A5907B60](v51, v52);

            v55 = v80;
            MEMORY[0x1A5907B60](*&v11[v80[7]], *&v11[v80[7] + 8]);
            MEMORY[0x1A5907B60](8250, 0xE200000000000000);
            v56 = MEMORY[0x1E69E6720];
            sub_1A492AA18(&v11[v55[8]], &v85, &qword_1EB126130, v53 + 8, MEMORY[0x1E69E6720]);
            sub_1A492FE58(0, &qword_1EB126130, v53 + 8, v56);
            v57 = sub_1A524C714();
            MEMORY[0x1A5907B60](v57);

            v58 = v83;
            v59 = v84;
            swift_beginAccess();
            MEMORY[0x1A5907B60](v58, v59);
            swift_endAccess();
          }

          sub_1A3C2CD10(v11, &unk_1EB139448, v53 + 8, type metadata accessor for DebugRow);
          v48 += v49;
          --v46;
          v34 = v53;
        }

        while (v46);
      }

      v26 = v72;
      v24 = v71 + 1;
      sub_1A492EADC(v72, type metadata accessor for DebugSection);
      v14 = v65;
      v23 = v64;
      if (v24 == v70)
      {
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
  }

  else
  {
LABEL_38:
  }
}

uint64_t sub_1A4929CD8()
{
  sub_1A492FE58(0, &unk_1EB139448, MEMORY[0x1E69E7CA0] + 8, type metadata accessor for DebugRow);
  v2 = v1;
  v27 = *(v1 - 1);
  MEMORY[0x1EEE9AC00](v1);
  v28 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v23 - v5;
  v32 = MEMORY[0x1E69E7CC0];
  v7 = type metadata accessor for DebugSection(0);
  if (*(v0 + *(v7 + 24)))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v8 = v0 + *(v7 + 28);
  v9 = *v8;
  if (*v8)
  {
    v10 = *(v8 + 8);
    MEMORY[0x1EEE9AC00](0);
    *(&v23 - 2) = &v32;

    v9(sub_1A492DB84, &v23 - 4);
    sub_1A3C33378(v9, v10);
  }

  result = v32;
  v26 = *(v32 + 16);
  if (v26)
  {
    v25 = v2;
    v12 = 0;
    v13 = MEMORY[0x1E69E7CC0];
    v24 = v32;
    while (v12 < *(result + 16))
    {
      v14 = (*(v27 + 80) + 32) & ~*(v27 + 80);
      v15 = *(v27 + 72);
      v16 = MEMORY[0x1E69E7CA0];
      sub_1A492AA18(result + v14 + v15 * v12, v6, &unk_1EB139448, MEMORY[0x1E69E7CA0] + 8, type metadata accessor for DebugRow);
      v17 = v25;
      v18 = MEMORY[0x1E69E6720];
      sub_1A492AA18(&v6[v25[8]], v29, &qword_1EB126130, v16 + 8, MEMORY[0x1E69E6720]);
      v19 = v30;
      sub_1A3C2CD10(v29, &qword_1EB126130, v16 + 8, v18);
      if (v19 || *&v6[v17[10]] || *&v6[v17[9]] || v6[v17[11]] == 1)
      {
        sub_1A492AA88(v6, v28);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v31 = v13;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1A492DB64(0, *(v13 + 16) + 1, 1);
          v13 = v31;
        }

        v22 = *(v13 + 16);
        v21 = *(v13 + 24);
        if (v22 >= v21 >> 1)
        {
          sub_1A492DB64((v21 > 1), v22 + 1, 1);
          v13 = v31;
        }

        *(v13 + 16) = v22 + 1;
        sub_1A492AA88(v28, v13 + v14 + v22 * v15);
      }

      else
      {
        sub_1A3C2CD10(v6, &unk_1EB139448, MEMORY[0x1E69E7CA0] + 8, type metadata accessor for DebugRow);
      }

      ++v12;
      result = v24;
      if (v26 == v12)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
LABEL_21:

    return v13;
  }

  return result;
}

uint64_t sub_1A492A064@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v2 = sub_1A5249C44();
  v3 = *(v2 - 8);
  v28 = v2;
  v29 = v3;
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A492A390(0, v4);
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v1;
  sub_1A492A4FC(0, v10);
  v27 = v13;
  sub_1A492A650(255);
  v15 = v14;
  sub_1A492A724(255);
  v17 = v16;
  sub_1A492A7B4(255);
  v19 = v18;
  v20 = sub_1A492A6D0();
  v32 = &type metadata for DebugInfoPanelContentView;
  v33 = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v22 = MEMORY[0x1E69817F8];
  v23 = sub_1A492A990(&qword_1EB1451D8, 255, sub_1A492A724, MEMORY[0x1E69817F8]);
  v24 = sub_1A492A990(&qword_1EB1451E0, 255, sub_1A492A7B4, v22);
  v32 = v15;
  v33 = v17;
  v34 = v19;
  v35 = OpaqueTypeConformance2;
  v36 = v23;
  v37 = v24;
  swift_getOpaqueTypeConformance2();
  sub_1A5248474();
  sub_1A5249C34();
  sub_1A492A990(&qword_1EB1451E8, 255, sub_1A492A390, MEMORY[0x1E697C0C0]);
  sub_1A492A990(&qword_1EB13A710, 255, MEMORY[0x1E697C938], MEMORY[0x1E697C930]);
  v25 = v28;
  sub_1A524A864();
  (*(v29 + 8))(v6, v25);
  return (*(v9 + 8))(v12, v8);
}

void sub_1A492A390(uint64_t a1, double a2)
{
  if (!qword_1EB145188)
  {
    sub_1A492A4FC(255, a2);
    sub_1A492A650(255);
    sub_1A492A724(255);
    sub_1A492A7B4(255);
    sub_1A492A6D0();
    swift_getOpaqueTypeConformance2();
    v2 = MEMORY[0x1E69817F8];
    sub_1A492A990(&qword_1EB1451D8, 255, sub_1A492A724, MEMORY[0x1E69817F8]);
    sub_1A492A990(&qword_1EB1451E0, 255, sub_1A492A7B4, v2);
    swift_getOpaqueTypeConformance2();
    v3 = sub_1A5248484();
    if (!v4)
    {
      atomic_store(v3, &qword_1EB145188);
    }
  }
}

void sub_1A492A4FC(uint64_t a1, double a2)
{
  if (!qword_1EB145190)
  {
    sub_1A492A650(255);
    sub_1A492A724(255);
    sub_1A492A7B4(255);
    sub_1A492A6D0();
    swift_getOpaqueTypeConformance2();
    v2 = MEMORY[0x1E69817F8];
    sub_1A492A990(&qword_1EB1451D8, 255, sub_1A492A724, MEMORY[0x1E69817F8]);
    sub_1A492A990(&qword_1EB1451E0, 255, sub_1A492A7B4, v2);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v4)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB145190);
    }
  }
}

void sub_1A492A650(uint64_t a1)
{
  if (!qword_1EB145198)
  {
    sub_1A492A6D0();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB145198);
    }
  }
}

unint64_t sub_1A492A6D0()
{
  result = qword_1EB1451A0;
  if (!qword_1EB1451A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1451A0);
  }

  return result;
}

void sub_1A492A724(uint64_t a1)
{
  if (!qword_1EB1451A8)
  {
    sub_1A492E314(255, &qword_1EB127480, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D670]);
    sub_1A3D6E520();
    v1 = sub_1A524B784();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1451A8);
    }
  }
}

void sub_1A492A7F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1A492A990(a4, 255, a5, MEMORY[0x1E6981F48]);
    v8 = sub_1A524B784();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1A492A8B0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1A492E368(255, a3, a4);
    v5 = sub_1A524BE24();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A492A908(uint64_t a1)
{
  if (!qword_1EB1451C8)
  {
    sub_1A492F040(255, &qword_1EB128530, sub_1A3F32A14, MEMORY[0x1E6981748]);
    sub_1A3F37498();
    v1 = sub_1A524B764();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1451C8);
    }
  }
}

uint64_t sub_1A492A990(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A492AA18(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(void, uint64_t))
{
  sub_1A492FE58(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_1A492AA88(uint64_t a1, uint64_t a2)
{
  sub_1A492FE58(0, &unk_1EB139448, MEMORY[0x1E69E7CA0] + 8, type metadata accessor for DebugRow);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_1A492AB14(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  ObjectType = swift_getObjectType();
  (*(v4 + 16))(ObjectType, v4);
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  sub_1A492DD5C(0);
  sub_1A52411C4();
  sub_1A492DD90(0);
  sub_1A492A990(&qword_1EB145288, 255, sub_1A492DD5C, MEMORY[0x1E69E6338]);
  sub_1A492E758();
  sub_1A492A990(&qword_1EB1453A8, 255, type metadata accessor for DebugSection, &unk_1A5374864);

  sub_1A524B9C4();
  return result;
}

uint64_t sub_1A492AC90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v80 = a2;
  sub_1A492E190(0, a3);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A492E5D8(0, v7);
  v76 = v10;
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1E697F948];
  sub_1A492E000(0, &qword_1EB1452D0, sub_1A492DFB8, sub_1A492E190, MEMORY[0x1E697F948]);
  v79 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v77 = v71 - v16;
  sub_1A492E000(0, &qword_1EB1452D8, sub_1A492E084, sub_1A492E5D8, v14);
  v75 = v17;
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = v71 - v19;
  sub_1A492DFB8(0, v18);
  v78 = v21;
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = (v71 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A492E084(0, v22);
  v26 = v25;
  v74 = *(v25 - 1);
  MEMORY[0x1EEE9AC00](v25);
  v73 = v71 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A492FE58(0, &unk_1EB139448, MEMORY[0x1E69E7CA0] + 8, type metadata accessor for DebugRow);
  v29 = (a1 + *(v28 + 36));
  v30 = *v29;
  v81 = v5;
  if (v30)
  {
    v31 = v29[1];
    type metadata accessor for DebugInfoPanelViewModel();
    v32 = swift_allocObject();
    *(v32 + 16) = v30;
    *(v32 + 24) = v31;
    sub_1A492A990(&qword_1EB145180, v33, type metadata accessor for DebugInfoPanelViewModel, &unk_1A537478C);
    swift_unknownObjectRetain_n();
    v34 = sub_1A5248494();
    v71[1] = v71;
    *&v82 = v34;
    *(&v82 + 1) = v35;
    v72 = v35;
    MEMORY[0x1EEE9AC00](v34);
    v71[-2] = a1;
    sub_1A492E268(255);
    v37 = v36;
    sub_1A3E42888(255);
    v39 = v38;
    v40 = sub_1A492E3C8();
    v41 = sub_1A492A990(&qword_1EB1270A8, 255, sub_1A3E42888, MEMORY[0x1E6981F48]);

    *&v85 = v37;
    *(&v85 + 1) = v39;
    *&v86 = v40;
    *(&v86 + 1) = v41;
    swift_getOpaqueTypeConformance2();
    sub_1A492A6D0();
    v42 = v73;
    sub_1A5248444();
    v43 = v74;
    v74[2](v20, v42, v26);
    swift_storeEnumTagMultiPayload();
    v44 = MEMORY[0x1E697C090];
    sub_1A492A990(&qword_1EB1452B8, 255, sub_1A492E084, MEMORY[0x1E697C090]);
    sub_1A492A990(&qword_1EB1452C0, 255, sub_1A492E5D8, v44);
    sub_1A5249744();
    sub_1A3D2A89C(v24, v77, v45);
    swift_storeEnumTagMultiPayload();
    sub_1A492E9E8(v46);
    sub_1A5249744();
    swift_unknownObjectRelease();

    sub_1A3D2A900(v24, v47);
    return (v43[1])(v42, v26);
  }

  else
  {
    v72 = v20;
    v73 = v26;
    v74 = v24;
    v49 = v76;
    v50 = *(v28 + 40);
    if (*(a1 + v50))
    {
      *&v82 = *(a1 + v50);
      MEMORY[0x1EEE9AC00](v28);
      v71[-2] = a1;
      sub_1A492E268(255);
      v52 = v51;
      sub_1A3E42888(255);
      v54 = v53;
      v55 = sub_1A492E3C8();
      v56 = sub_1A492A990(&qword_1EB1270A8, 255, sub_1A3E42888, MEMORY[0x1E6981F48]);
      swift_retain_n();
      *&v85 = v52;
      *(&v85 + 1) = v54;
      *&v86 = v55;
      *(&v86 + 1) = v56;
      swift_getOpaqueTypeConformance2();
      sub_1A5248444();
      (*(v11 + 16))(v72, v13, v49);
      swift_storeEnumTagMultiPayload();
      v57 = MEMORY[0x1E697C090];
      sub_1A492A990(&qword_1EB1452B8, 255, sub_1A492E084, MEMORY[0x1E697C090]);
      sub_1A492A990(&qword_1EB1452C0, 255, sub_1A492E5D8, v57);
      v58 = v74;
      sub_1A5249744();
      sub_1A3D2A89C(v58, v77, v59);
      swift_storeEnumTagMultiPayload();
      sub_1A492E9E8(v60);
      sub_1A5249744();

      sub_1A3D2A900(v58, v61);
      return (*(v11 + 8))(v13, v49);
    }

    else
    {
      sub_1A492BCBC(&v85);
      v82 = v85;
      v83 = v86;
      v84[0] = v87[0];
      *(v84 + 15) = *(v87 + 15);
      MEMORY[0x1EEE9AC00](v62);
      v71[-2] = a1;
      sub_1A492E268(0);
      v64 = v63;
      sub_1A3E42888(0);
      v66 = v65;
      v67 = sub_1A492E3C8();
      v68 = sub_1A492A990(&qword_1EB1270A8, 255, sub_1A3E42888, MEMORY[0x1E6981F48]);
      sub_1A524A954();
      sub_1A492EADC(&v85, sub_1A492E268);
      v69 = v81;
      (*(v6 + 16))(v77, v9, v81);
      swift_storeEnumTagMultiPayload();
      sub_1A492E9E8(v70);
      *&v82 = v64;
      *(&v82 + 1) = v66;
      *&v83 = v67;
      *(&v83 + 1) = v68;
      swift_getOpaqueTypeConformance2();
      sub_1A5249744();
      return (*(v6 + 8))(v9, v69);
    }
  }
}

double sub_1A492B6B0(double a1)
{
  sub_1A492DB8C(0, a1);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1[1];
  v13 = *v1;
  v14 = v7;
  sub_1A492DC50(0);
  sub_1A492E828(&qword_1EB145290, sub_1A492DC50, sub_1A492E758, MEMORY[0x1E69819D0]);
  sub_1A524A2C4();
  v8 = *(v7 + 24);
  ObjectType = swift_getObjectType();
  v15 = (*(v8 + 8))(ObjectType, v8);
  v16 = v10;
  sub_1A492A990(&qword_1EB1452C8, 255, sub_1A492DB8C, MEMORY[0x1E697CD20]);
  sub_1A3D5F9DC();
  sub_1A524ABB4();
  (*(v4 + 8))(v6, v3);

  return result;
}

void sub_1A492B894(uint64_t a1)
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

  v3 = sub_1A43C21B0(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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
  sub_1A492FE58(0, &unk_1EB139448, MEMORY[0x1E69E7CA0] + 8, type metadata accessor for DebugRow);
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

uint64_t sub_1A492B9E8(uint64_t a1, void *a2)
{
  v4 = MEMORY[0x1E69E7CA0];
  sub_1A492FE58(0, &unk_1EB139448, MEMORY[0x1E69E7CA0] + 8, type metadata accessor for DebugRow);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v14 - v7;
  sub_1A492AA18(a1, &v14 - v7, &unk_1EB139448, v4 + 8, type metadata accessor for DebugRow);
  v9 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_1A43C21B0(0, v9[2] + 1, 1, v9);
    *a2 = v9;
  }

  v12 = v9[2];
  v11 = v9[3];
  if (v12 >= v11 >> 1)
  {
    v9 = sub_1A43C21B0((v11 > 1), v12 + 1, 1, v9);
    *a2 = v9;
  }

  v9[2] = v12 + 1;
  return sub_1A492AA88(v8, v9 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v12);
}

int *sub_1A492BB6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_1A52411B4();
  result = type metadata accessor for DebugSection(0);
  v13 = (a6 + result[5]);
  *v13 = a1;
  v13[1] = a2;
  *(a6 + result[6]) = a3;
  v14 = (a6 + result[7]);
  *v14 = a4;
  v14[1] = a5;
  return result;
}

uint64_t sub_1A492BBDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  sub_1A52411B4();
  v20 = type metadata accessor for DebugRow(0, a8, v18, v19);
  v21 = (a9 + v20[7]);
  *v21 = a1;
  v21[1] = a2;
  v22 = v20[8];
  v23 = sub_1A524DF24();
  result = (*(*(v23 - 8) + 32))(a9 + v22, a3, v23);
  *(a9 + v20[10]) = a6;
  v25 = (a9 + v20[9]);
  *v25 = a4;
  v25[1] = a5;
  *(a9 + v20[11]) = a7;
  return result;
}

__n128 sub_1A492BCBC@<Q0>(uint64_t a1@<X8>)
{
  v3 = sub_1A5249424();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = sub_1A5241144();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v29 - v9;
  v11 = MEMORY[0x1E69E7CA0];
  sub_1A492FE58(0, &unk_1EB139448, MEMORY[0x1E69E7CA0] + 8, type metadata accessor for DebugRow);
  v13 = v12;
  if (*(v1 + v12[10]) || *(v1 + v12[9]))
  {
    sub_1A492AA18(v1 + v12[8], &v43, &qword_1EB126130, v11 + 8, MEMORY[0x1E69E6720]);
    if (*(&v44 + 1))
    {
      sub_1A492AA18(&v43, &v39, &qword_1EB126130, v11 + 8, MEMORY[0x1E69E6720]);
      sub_1A492EDC0();
      if (swift_dynamicCast())
      {

        v14 = (v1 + v13[7]);
        v15 = v14[1];
        *&v47 = *v14;
        *(&v47 + 1) = v15;
        sub_1A3D5F9DC();
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      __swift_destroy_boxed_opaque_existential_0(&v39);
    }

    v16 = (v1 + v13[7]);
    v17 = v16[1];
    *&v47 = *v16;
    *(&v47 + 1) = v17;
    sub_1A3D5F9DC();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v29[0] = a1;
  v20 = v12[8];
  sub_1A492AA18(v1 + v20, v38, &qword_1EB126130, v11 + 8, MEMORY[0x1E69E6720]);
  if (v38[3])
  {
    sub_1A492AA18(v38, &v31, &qword_1EB126130, v11 + 8, MEMORY[0x1E69E6720]);
    if (swift_dynamicCast())
    {
      LOBYTE(v33) = 0;
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    if (swift_dynamicCast())
    {
      (*(v5 + 32))(v7, v10, v4);
      sub_1A492A990(&qword_1EB12AFE8, 255, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    __swift_destroy_boxed_opaque_existential_0(&v31);
  }

  sub_1A5249414();
  sub_1A5249404();
  sub_1A52493F4();
  sub_1A5249404();
  v21 = v11;
  v22 = MEMORY[0x1E69E6720];
  sub_1A492AA18(v1 + v20, &v47, &qword_1EB126130, v21 + 8, MEMORY[0x1E69E6720]);
  sub_1A492FE58(0, &qword_1EB126130, v21 + 8, v22);
  sub_1A524C714();
  sub_1A52493F4();

  sub_1A5249404();
  sub_1A5249444();
  v23 = sub_1A524A444();
  v37 = v24 & 1;
  v36 = 1;
  *&v33 = v23;
  *(&v33 + 1) = v25;
  LOBYTE(v34) = v24 & 1;
  *(&v34 + 1) = v30[0];
  DWORD1(v34) = *(v30 + 3);
  *(&v34 + 1) = v26;
  *v35 = v31;
  v35[16] = v32;
  v35[17] = 1;
  sub_1A492E314(0, &qword_1EB145250, &type metadata for TitleDetailRow, &type metadata for TitleDetailRow, MEMORY[0x1E697F960]);
  sub_1A492E4E4();
  sub_1A5249744();
  sub_1A492EC54(&v47, &v33);
  v39 = v47;
  v40 = v48;
  v41 = *v49;
  v42 = *&v49[16];
  v43 = v47;
  v44 = v48;
  v45 = *v49;
  v46 = *&v49[16];
  sub_1A3C2CD10(v38, &qword_1EB126130, v21 + 8, MEMORY[0x1E69E6720]);
  v47 = v39;
  v48 = v40;
  *v49 = v41;
  *&v49[16] = v42;
  LOBYTE(v31) = 1;
  v49[18] = 1;
  sub_1A492EC54(&v39, &v33);
  sub_1A492E314(0, &unk_1EB122710, MEMORY[0x1E6981148], MEMORY[0x1E6981148], MEMORY[0x1E697F960]);
  v27 = MEMORY[0x1E697F960];
  sub_1A492ECD4(0, &qword_1EB145248, MEMORY[0x1E697F960]);
  sub_1A424D1BC();
  sub_1A492E448();
  sub_1A5249744();
  sub_1A492ED64(&v43, &qword_1EB1452E0, MEMORY[0x1E697F948]);
  sub_1A492ED64(&v39, &qword_1EB145248, v27);
  *v49 = *v35;
  *&v49[15] = *&v35[15];
  v28 = v29[0];
  v18 = v34;
  *v29[0] = v33;
  *(v28 + 16) = v18;
  result = *v49;
  *(v28 + 32) = *v49;
  *(v28 + 47) = *&v49[15];
  return result;
}

uint64_t sub_1A492C860@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v32 = a1;
  v36 = a2;
  v3 = MEMORY[0x1E69E7CA0];
  v31 = type metadata accessor for DebugRow;
  sub_1A492FE58(0, &unk_1EB139448, MEMORY[0x1E69E7CA0] + 8, type metadata accessor for DebugRow);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v31 - v6;
  sub_1A3E42920(0);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v35 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v34 = &v31 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v33 = &v31 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v31 - v17;
  sub_1A492AA18(a1, v7, &unk_1EB139448, v3 + 8, type metadata accessor for DebugRow);
  v19 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v20 = swift_allocObject();
  sub_1A492AA88(v7, v20 + v19);
  sub_1A3E429B4();
  sub_1A492A990(&qword_1EB1274F0, 255, sub_1A3E429B4, MEMORY[0x1E697D658]);
  sub_1A524B704();
  sub_1A492AA18(v32, v7, &unk_1EB139448, MEMORY[0x1E69E7CA0] + 8, v31);
  v21 = swift_allocObject();
  sub_1A492AA88(v7, v21 + v19);
  v22 = v33;
  sub_1A524B704();
  v23 = *(v10 + 16);
  v24 = v34;
  v23(v34, v18, v9);
  v25 = v35;
  v26 = v22;
  v23(v35, v22, v9);
  v27 = v36;
  v23(v36, v24, v9);
  sub_1A492E368(0, &qword_1EB127438, sub_1A3E42920);
  v23(&v27[*(v28 + 48)], v25, v9);
  v29 = *(v10 + 8);
  v29(v26, v9);
  v29(v18, v9);
  v29(v25, v9);
  return (v29)(v24, v9);
}

uint64_t sub_1A492CC88(__n128 a1)
{
  sub_1A5249434();

  return sub_1A524B604();
}

uint64_t sub_1A492CCF8(__n128 a1)
{
  sub_1A5249434();

  return sub_1A524B604();
}

void sub_1A492CD64(uint64_t a1)
{
  sub_1A492F0A4(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A492E000(0, &qword_1EB145390, sub_1A492EEA8, sub_1A492F0A4, MEMORY[0x1E697F948]);
  MEMORY[0x1EEE9AC00](v5);
  sub_1A492EEA8(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *(a1 + 32);
  sub_1A492FE58(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  if (v10[15] == 1)
  {
    *v8 = sub_1A5249584();
    *(v8 + 1) = 0;
    v8[16] = 0;
    sub_1A492FEA8(0, &qword_1EB1453A0, sub_1A492EF40, MEMORY[0x1E697E300], MEMORY[0x1E697E2F8]);
    sub_1A492D17C(a1, &v8[*(v9 + 44)]);
  }

  *v4 = sub_1A5249314();
  *(v4 + 1) = 0;
  v4[16] = 1;
  sub_1A492FEA8(0, &qword_1EB145398, sub_1A492F0E0, MEMORY[0x1E697E258], MEMORY[0x1E697E250]);
  sub_1A492D450(a1);
}

void sub_1A492D17C(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v8[4] = a2;
  sub_1A492EFDC(0);
  v8[3] = v3;
  v8[1] = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v8[2] = v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8[5] = v8 - v6;
  v7 = a1[1];
  v9 = *a1;
  v10 = v7;
  sub_1A3D5F9DC();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A492D450(uint64_t *a1)
{
  sub_1A3DF1428(0);
  MEMORY[0x1EEE9AC00](v3);
  v7[4] = v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v6 = a1[1];
  v7[6] = *a1;
  v7[7] = v6;
  sub_1A3D5F9DC();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A492D714(uint64_t a1)
{
  v5 = *(a1 + 32);
  v4[1] = *(a1 + 32);
  v6 = *(&v5 + 1);
  sub_1A492FDF0(&v6, v4, sub_1A445E630);
  v1 = MEMORY[0x1E69E6370];
  v2 = MEMORY[0x1E6981790];
  sub_1A492FE58(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  v4[0] = v5;
  sub_1A524B6B4();
  return sub_1A3C2CD10(&v5, &qword_1EB1274B0, v1, v2);
}

void sub_1A492D804()
{
  sub_1A492EE0C(0);
  MEMORY[0x1EEE9AC00](v1);
  v2 = v0[1];
  v3[0] = *v0;
  v3[1] = v2;
  v3[2] = v0[2];
  sub_1A492CD64(v3);
}

uint64_t sub_1A492D9C0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for DebugInfoPanelPreviewProvider();
  v2 = sub_1A43C1A90();
  v3 = *(type metadata accessor for DebugInfoPanel(0) + 20);
  *(a1 + v3) = swift_getKeyPath();
  sub_1A492FC70(0, &qword_1EB128A38, sub_1A3EBE398, MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for DebugInfoPanelViewModel();
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = &off_1F170A0F0;
  sub_1A492A990(&qword_1EB145180, v5, type metadata accessor for DebugInfoPanelViewModel, &unk_1A537478C);
  result = sub_1A5248494();
  *a1 = result;
  a1[1] = v7;
  return result;
}

uint64_t sub_1A492DACC(uint64_t a1)
{
  v2 = sub_1A492FD54();

  return MEMORY[0x1EEDD9FE8](a1, v2);
}

uint64_t sub_1A492DB18(uint64_t a1)
{
  v2 = sub_1A492FD54();

  return MEMORY[0x1EEDD9FE0](a1, v2);
}

void *sub_1A492DB64(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A492FFB0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1A492DB8C(uint64_t a1, double a2)
{
  if (!qword_1EB1451F0)
  {
    sub_1A492DC50(255);
    sub_1A492E828(&qword_1EB145290, sub_1A492DC50, sub_1A492E758, MEMORY[0x1E69819D0]);
    v2 = sub_1A524A2D4();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB1451F0);
    }
  }
}

void sub_1A492DC50(uint64_t a1)
{
  if (!qword_1EB1451F8)
  {
    sub_1A492DD5C(255);
    sub_1A52411C4();
    sub_1A492DD90(255);
    sub_1A492A990(&qword_1EB145288, 255, sub_1A492DD5C, MEMORY[0x1E69E6338]);
    sub_1A492A990(&unk_1EB12AFC0, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    v1 = sub_1A524B9D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1451F8);
    }
  }
}

void sub_1A492DD90(uint64_t a1)
{
  if (!qword_1EB145208)
  {
    sub_1A492DDF8(255);
    v1 = sub_1A524BA74();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB145208);
    }
  }
}

void sub_1A492DDF8(uint64_t a1)
{
  if (!qword_1EB145210)
  {
    sub_1A492DF30(255, &qword_1EB145218, MEMORY[0x1E69E62F8]);
    sub_1A52411C4();
    sub_1A492E000(255, &qword_1EB145220, sub_1A492DFB8, sub_1A492E190, MEMORY[0x1E697F960]);
    sub_1A492E6E4();
    sub_1A492A990(&unk_1EB12AFC0, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    v1 = sub_1A524B9D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB145210);
    }
  }
}

void sub_1A492DF30(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A492FE58(255, &unk_1EB139448, MEMORY[0x1E69E7CA0] + 8, type metadata accessor for DebugRow);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1A492E000(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_1A492E084(uint64_t a1, double a2)
{
  if (!qword_1EB145230)
  {
    sub_1A492E190(255, a2);
    sub_1A492E268(255);
    sub_1A3E42888(255);
    sub_1A492E3C8();
    sub_1A492A990(&qword_1EB1270A8, 255, sub_1A3E42888, MEMORY[0x1E6981F48]);
    swift_getOpaqueTypeConformance2();
    sub_1A492A6D0();
    v2 = sub_1A5248454();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB145230);
    }
  }
}

void sub_1A492E190(uint64_t a1, double a2)
{
  if (!qword_1EB145238)
  {
    sub_1A492E268(255);
    sub_1A3E42888(255);
    sub_1A492E3C8();
    sub_1A492A990(&qword_1EB1270A8, 255, sub_1A3E42888, MEMORY[0x1E6981F48]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB145238);
    }
  }
}

void sub_1A492E268(uint64_t a1)
{
  if (!qword_1EB145240)
  {
    sub_1A492E314(255, &unk_1EB122710, MEMORY[0x1E6981148], MEMORY[0x1E6981148], MEMORY[0x1E697F960]);
    sub_1A492ECD4(255, &qword_1EB145248, MEMORY[0x1E697F960]);
    v1 = sub_1A5249754();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB145240);
    }
  }
}

void sub_1A492E314(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A492E368(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

unint64_t sub_1A492E3C8()
{
  result = qword_1EB145258;
  if (!qword_1EB145258)
  {
    sub_1A492E268(255);
    sub_1A424D1BC();
    sub_1A492E448();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB145258);
  }

  return result;
}

unint64_t sub_1A492E448()
{
  result = qword_1EB145260;
  if (!qword_1EB145260)
  {
    sub_1A492ECD4(255, &qword_1EB145248, MEMORY[0x1E697F960]);
    sub_1A492E4E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB145260);
  }

  return result;
}

unint64_t sub_1A492E4E4()
{
  result = qword_1EB145268;
  if (!qword_1EB145268)
  {
    sub_1A492E314(255, &qword_1EB145250, &type metadata for TitleDetailRow, &type metadata for TitleDetailRow, MEMORY[0x1E697F960]);
    sub_1A492E584();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB145268);
  }

  return result;
}

unint64_t sub_1A492E584()
{
  result = qword_1EB145270;
  if (!qword_1EB145270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB145270);
  }

  return result;
}

void sub_1A492E5D8(uint64_t a1, double a2)
{
  if (!qword_1EB145278)
  {
    sub_1A492E190(255, a2);
    sub_1A492E268(255);
    sub_1A3E42888(255);
    sub_1A492E3C8();
    sub_1A492A990(&qword_1EB1270A8, 255, sub_1A3E42888, MEMORY[0x1E6981F48]);
    swift_getOpaqueTypeConformance2();
    v2 = sub_1A5248454();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB145278);
    }
  }
}

unint64_t sub_1A492E6E4()
{
  result = qword_1EB145280;
  if (!qword_1EB145280)
  {
    sub_1A492DF30(255, &qword_1EB145218, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB145280);
  }

  return result;
}

unint64_t sub_1A492E758()
{
  result = qword_1EB145298;
  if (!qword_1EB145298)
  {
    sub_1A492DD90(255);
    sub_1A492E828(&qword_1EB1452A0, sub_1A492DDF8, sub_1A492E898, MEMORY[0x1E69819D0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB145298);
  }

  return result;
}

uint64_t sub_1A492E828(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A492E898()
{
  result = qword_1EB1452A8;
  if (!qword_1EB1452A8)
  {
    sub_1A492E000(255, &qword_1EB145220, sub_1A492DFB8, sub_1A492E190, MEMORY[0x1E697F960]);
    sub_1A492E9E8(v1);
    sub_1A492E268(255);
    sub_1A3E42888(255);
    sub_1A492E3C8();
    sub_1A492A990(&qword_1EB1270A8, 255, sub_1A3E42888, MEMORY[0x1E6981F48]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1452A8);
  }

  return result;
}

unint64_t sub_1A492E9E8(double a1)
{
  result = qword_1EB1452B0;
  if (!qword_1EB1452B0)
  {
    sub_1A492DFB8(255, a1);
    v2 = MEMORY[0x1E697C090];
    sub_1A492A990(&qword_1EB1452B8, 255, sub_1A492E084, MEMORY[0x1E697C090]);
    sub_1A492A990(&qword_1EB1452C0, 255, sub_1A492E5D8, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1452B0);
  }

  return result;
}

uint64_t sub_1A492EADC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A492EB54(uint64_t a1)
{
  sub_1A492BCBC(&v2);
  sub_1A492E268(0);
  sub_1A3E42888(0);
  sub_1A492E3C8();
  sub_1A492A990(&qword_1EB1270A8, 255, sub_1A3E42888, MEMORY[0x1E6981F48]);
  sub_1A524A954();
  return sub_1A492EADC(&v2, sub_1A492E268);
}