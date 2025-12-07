void sub_1D76CCC60(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_26;
  }

  if (a3)
  {
    sub_1D76CC758(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_1D76CCF70();
      a2 = v7;
      goto LABEL_26;
    }

    sub_1D76CD220(v5 + 1);
  }

  v8 = *v3;
  sub_1D7704AD0();
  v9 = v4 >> 6;
  if (v4 >> 6)
  {
    if (v9 != 1)
    {
      v12 = 0;
      goto LABEL_14;
    }

    v10 = v4 & 0x3F;
    v11 = 2;
  }

  else
  {
    v11 = 1;
    v10 = v4;
  }

  MEMORY[0x1DA6FF8B0](v11);
  v12 = v10;
LABEL_14:
  MEMORY[0x1DA6FF8B0](v12);
  v13 = sub_1D7704AF0();
  v14 = -1 << *(v8 + 32);
  a2 = v13 & ~v14;
  if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
  {
    goto LABEL_26;
  }

  v15 = ~v14;
  while (1)
  {
    v16 = *(*(v8 + 48) + a2);
    if (!(v16 >> 6))
    {
      break;
    }

    if (v16 >> 6 == 1)
    {
      if (v9 == 1 && ((v16 ^ v4) & 0x3F) == 0)
      {
        goto LABEL_25;
      }
    }

    else if (v4 == 128)
    {
      goto LABEL_25;
    }

LABEL_17:
    a2 = (a2 + 1) & v15;
    if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  if (v4 > 0x3F || v16 != v4)
  {
    goto LABEL_17;
  }

LABEL_25:
  sub_1D7704A60();
  __break(1u);
LABEL_26:
  v17 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v17 + 48) + a2) = v4;
  v18 = *(v17 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v17 + 16) = v20;
  }
}

void sub_1D76CCE24(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1D76CC9F8(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_1D76CD0C8();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1D76CD490(v5 + 1);
  }

  v8 = *v3;
  sub_1D7704AD0();
  MEMORY[0x1DA6FF8B0](v4);
  v9 = sub_1D7704AF0();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + a2) != v4)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1D7704A60();
  __break(1u);
}

void sub_1D76CCF70()
{
  v1 = v0;
  sub_1D76CDA24(0, &qword_1EE0AECD8, sub_1D76AE438, &type metadata for AdPolicyContentType);
  v2 = *v0;
  v3 = sub_1D7704710();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
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

void sub_1D76CD0C8()
{
  v1 = v0;
  sub_1D76CDA24(0, &qword_1EC9BDAF0, sub_1D76A3F14, &type metadata for AdPolicyFailureType);
  v2 = *v0;
  v3 = sub_1D7704710();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
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

void sub_1D76CD220(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1D76CDA24(0, &qword_1EE0AECD8, sub_1D76AE438, &type metadata for AdPolicyContentType);
  v4 = sub_1D7704720();
  v5 = v4;
  if (!*(v3 + 16))
  {

LABEL_32:
    *v2 = v5;
    return;
  }

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
    v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
    sub_1D7704AD0();
    if (!(v16 >> 6))
    {
      v18 = 1;
      v17 = v16;
      goto LABEL_19;
    }

    if (v16 >> 6 == 1)
    {
      v17 = v16 & 0x3F;
      v18 = 2;
LABEL_19:
      MEMORY[0x1DA6FF8B0](v18);
      goto LABEL_21;
    }

    v17 = 0;
LABEL_21:
    MEMORY[0x1DA6FF8B0](v17);
    v19 = sub_1D7704AF0();
    v20 = -1 << *(v5 + 32);
    v21 = v19 & ~v20;
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

      goto LABEL_34;
    }

    v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
    *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
    *(*(v5 + 48) + v12) = v16;
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

      v2 = v1;
      goto LABEL_32;
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
LABEL_34:
  __break(1u);
}

void sub_1D76CD490(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1D76CDA24(0, &qword_1EC9BDAF0, sub_1D76A3F14, &type metadata for AdPolicyFailureType);
  v4 = sub_1D7704720();
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
      v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
      sub_1D7704AD0();
      MEMORY[0x1DA6FF8B0](v16);
      v17 = sub_1D7704AF0();
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

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + v12) = v16;
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

        v2 = v1;
        goto LABEL_26;
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
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

unint64_t sub_1D76CD6CC()
{
  result = qword_1EC9BDAE0;
  if (!qword_1EC9BDAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDAE0);
  }

  return result;
}

unint64_t sub_1D76CD724()
{
  result = qword_1EC9BDAE8;
  if (!qword_1EC9BDAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDAE8);
  }

  return result;
}

unint64_t sub_1D76CD77C()
{
  result = qword_1EE0AFAA8;
  if (!qword_1EE0AFAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0AFAA8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AdPolicyContentType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x1E)
  {
    goto LABEL_17;
  }

  if (a2 + 226 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 226) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 226;
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

      return (*a1 | (v4 << 8)) - 226;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 226;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 1) & 0x1C | (*a1 >> 6)) ^ 0x1F;
  if (v6 >= 0x1D)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for AdPolicyContentType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 226 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 226) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x1E)
  {
    v4 = 0;
  }

  if (a2 > 0x1D)
  {
    v5 = ((a2 - 30) >> 8) + 1;
    *result = a2 - 30;
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
    *result = 8 * (((-a2 >> 2) & 7) - 8 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1D76CD92C(_BYTE *a1)
{
  v1 = *a1;
  if (v1 >= 0)
  {
    return *a1 >> 6;
  }

  else
  {
    return (v1 & 7u) + 2;
  }
}

_BYTE *sub_1D76CD958(_BYTE *result, unsigned int a2)
{
  if (a2 < 2)
  {
    *result = *result & 7 | (a2 << 6);
  }

  else
  {
    *result = (a2 + 6) & 7 | 0x80;
  }

  return result;
}

void sub_1D76CDA24(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    a3();
    v5 = sub_1D7704730();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1D76CDAA4(__int128 *a1, const void *a2, char *a3)
{
  v5 = a1[7];
  v129 = a1[6];
  v130 = v5;
  v131 = a1[8];
  v6 = a1[3];
  v125 = a1[2];
  v126 = v6;
  v7 = a1[5];
  v127 = a1[4];
  v128 = v7;
  v8 = a1[1];
  v123 = *a1;
  v124 = v8;
  memcpy(__dst, a2, 0x1A1uLL);
  v9 = objc_opt_self();
  v10 = [v9 systemBackgroundColor];
  [a3 setBackgroundColor_];

  v11 = *&a3[OBJC_IVAR____TtC7NewsAds23DebugJournalSummaryView_topSeparator];
  v12 = [v9 separatorColor];
  [v11 setBackgroundColor_];

  v13 = *&a3[OBJC_IVAR____TtC7NewsAds23DebugJournalSummaryView_bottomSeparator];
  v14 = [v9 separatorColor];
  [v13 setBackgroundColor_];

  v15 = sub_1D7704230();
  [a3 setAccessibilityIdentifier_];

  v16 = sub_1D769B214(__dst);
  if (!v16)
  {
    v116 = v13;
    v120 = v3;
    nullsub_1();
    v29 = v28;
    [a3 setHidden_];
    v30 = *&a3[OBJC_IVAR____TtC7NewsAds23DebugJournalSummaryView_statusIndicator];
    v31 = v29[28];
    v32 = v29[29];
    v33 = v29[30];
    v34 = v29[31];
    v134.origin.x = v31;
    v134.origin.y = v32;
    v134.size.width = v33;
    v134.size.height = v34;
    Width = CGRectGetWidth(v134);
    v36 = &selRef_redColor;
    if ((v126 & 0x8000000000000000) != 0)
    {
      v37 = v127 | *(&v126 + 1) | *(&v127 + 1);
      v38 = v126 & 0xFFFFFFFFFFFFFFF7;
      if ((v126 & 0xFFFFFFFFFFFFFFF7) != 0x8000000000000000 || v37)
      {
        if (v38 != 0x8000000000000010 || v37)
        {
          if (v37)
          {
            v56 = 0;
          }

          else
          {
            v56 = v38 == 0x8000000000000020;
          }

          if (v56)
          {
            v36 = &selRef_greenColor;
          }
        }

        else
        {
          v36 = &selRef_orangeColor;
        }
      }

      else
      {
        v36 = &selRef_darkGrayColor;
      }
    }

    v108 = *(&v127 + 1);
    v109 = v127;
    v110 = *(&v126 + 1);
    v111 = v126;
    v118 = v11;
    v104 = *(&v124 + 1);
    v105 = v124;
    v57 = *(&v125 + 1);
    v107 = v125;
    v58 = [v9 *v36];
    v59 = [v30 layer];
    [v59 setCornerRadius_];

    v114 = v30;
    [v30 setBackgroundColor_];

    sub_1D76CF398(0, &unk_1EE0AEBE0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v60 = swift_allocObject();
    v61 = *&a3[OBJC_IVAR____TtC7NewsAds23DebugJournalSummaryView_placementIdentifier];
    *(v60 + 16) = xmmword_1D770FA80;
    *(v60 + 32) = v61;
    v62 = *&a3[OBJC_IVAR____TtC7NewsAds23DebugJournalSummaryView_contentIdentifier];
    v63 = *&a3[OBJC_IVAR____TtC7NewsAds23DebugJournalSummaryView_status];
    *(v60 + 40) = v62;
    *(v60 + 48) = v63;
    v64 = v60 & 0xC000000000000001;
    v65 = v61;
    v112 = v62;
    v113 = v63;
    if ((v60 & 0xC000000000000001) != 0)
    {
      goto LABEL_47;
    }

    if (!*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_46;
    }

    for (i = v65; ; i = MEMORY[0x1DA6FF530](0, v60))
    {
      v67 = i;
      [i setNumberOfLines_];

      if (v64)
      {
        v68 = MEMORY[0x1DA6FF530](1, v60);
      }

      else
      {
        if (*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
        {
          goto LABEL_46;
        }

        v68 = *(v60 + 40);
      }

      v69 = v68;
      [v68 setNumberOfLines_];

      if (v64)
      {
        v70 = MEMORY[0x1DA6FF530](2, v60);
LABEL_38:
        v71 = v70;
        [v70 setNumberOfLines_];

        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v72 = *&a3[OBJC_IVAR____TtC7NewsAds23DebugJournalSummaryView_placementIdentifierLabel];
        v103 = v72;
        v73 = sub_1D76BEBC8(0x6563616C50206441, 0xEC000000746E656DLL);
        [v72 setAttributedText_];

        v74 = sub_1D76BEE10(v105, v104);
        v102 = v65;
        [v65 setAttributedText_];

        v75 = *&a3[OBJC_IVAR____TtC7NewsAds23DebugJournalSummaryView_contentIdentifierLabel];
        v106 = v75;
        v76 = sub_1D76BEBC8(0x746E65746E6F43, 0xE700000000000000);
        [v75 setAttributedText_];

        if (v57)
        {
          v77 = v107;
        }

        else
        {
          v77 = 11565;
        }

        if (v57)
        {
          v78 = v57;
        }

        else
        {
          v78 = 0xE200000000000000;
        }

        v79 = sub_1D76BEE10(v77, v78);

        [v112 setAttributedText_];

        v80 = *&a3[OBJC_IVAR____TtC7NewsAds23DebugJournalSummaryView_statusLabel];
        v81 = sub_1D76BEBC8(0x737574617453, 0xE600000000000000);
        [v80 setAttributedText_];

        *&v121 = v111;
        *(&v121 + 1) = v110;
        *&v122 = v109;
        *(&v122 + 1) = v108;
        v82 = JournalEntryStatus.shortDescription.getter();
        v84 = sub_1D76BEE10(v82, v83);

        [v113 setAttributedText_];

        v85 = *&a3[OBJC_IVAR____TtC7NewsAds23DebugJournalSummaryView_moreDetailsButton];
        [v85 setImage:0 forState:0];
        v86 = sub_1D76BEFFC(0x7465642077656956, 0xEC000000736C6961, 0);
        [v85 setAttributedTitle:v86 forState:0];

        v87 = sub_1D76BEFFC(0x7465642077656956, 0xEC000000736C6961, 1);
        [v85 setAttributedTitle:v87 forState:1];

        v88 = *&a3[OBJC_IVAR____TtC7NewsAds23DebugJournalSummaryView_reportIssueButton];
        v89 = sub_1D76BEFFC(0x692074726F706552, 0xEC00000065757373, 0);
        [v88 setAttributedTitle:v89 forState:0];

        v90 = sub_1D76BEFFC(0x692074726F706552, 0xEC00000065757373, 1);
        [v88 setAttributedTitle:v90 forState:1];

        [a3 setFrame_];
        [v103 setFrame_];
        [v102 setFrame_];
        [v106 setFrame_];
        [v112 setFrame_];
        [v80 setFrame_];
        [v113 setFrame_];
        [v114 setFrame_];
        [v85 setFrame_];
        [*&a3[OBJC_IVAR____TtC7NewsAds23DebugJournalSummaryView_buttonSeparator] setFrame_];
        [v88 setFrame_];
        [v118 setFrame_];
        [v116 setFrame_];

        v91 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v92 = swift_allocObject();
        v93 = v127;
        *(v92 + 104) = v128;
        v94 = v130;
        *(v92 + 120) = v129;
        *(v92 + 136) = v94;
        *(v92 + 152) = v131;
        v95 = v123;
        *(v92 + 40) = v124;
        v96 = v126;
        *(v92 + 56) = v125;
        *(v92 + 72) = v96;
        *(v92 + 88) = v93;
        *(v92 + 16) = v120;
        *(v92 + 24) = v95;
        *(v92 + 168) = v91;

        sub_1D766D644(&v123, &v121);

        v97 = swift_allocObject();
        v98 = v127;
        *(v97 + 104) = v128;
        v99 = v130;
        *(v97 + 120) = v129;
        *(v97 + 136) = v99;
        *(v97 + 152) = v131;
        v100 = v123;
        *(v97 + 40) = v124;
        v101 = v126;
        *(v97 + 56) = v125;
        *(v97 + 72) = v101;
        *(v97 + 88) = v98;
        *(v97 + 16) = v120;
        *(v97 + 24) = v100;

        sub_1D766D644(&v123, &v121);
LABEL_45:

        return;
      }

      if (*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
      {
        v70 = *(v60 + 48);
        goto LABEL_38;
      }

LABEL_46:
      __break(1u);
LABEL_47:
      ;
    }
  }

  if (v16 == 1)
  {
    v115 = v13;
    v117 = v11;
    v119 = v3;
    nullsub_1();
    v18 = v17;
    [a3 setHidden_];
    v19 = *&a3[OBJC_IVAR____TtC7NewsAds23DebugJournalSummaryView_statusIndicator];
    v20 = v18[4];
    v21 = v18[5];
    v22 = v18[6];
    v23 = v18[7];
    v133.origin.x = v20;
    v133.origin.y = v21;
    v133.size.width = v22;
    v133.size.height = v23;
    v24 = CGRectGetWidth(v133);
    v25 = &selRef_redColor;
    if ((v126 & 0x8000000000000000) != 0)
    {
      v26 = v127 | *(&v126 + 1) | *(&v127 + 1);
      v27 = v126 & 0xFFFFFFFFFFFFFFF7;
      if ((v126 & 0xFFFFFFFFFFFFFFF7) != 0x8000000000000000 || v26)
      {
        if (v27 != 0x8000000000000010 || v26)
        {
          if (v26)
          {
            v39 = 0;
          }

          else
          {
            v39 = v27 == 0x8000000000000020;
          }

          if (v39)
          {
            v25 = &selRef_greenColor;
          }
        }

        else
        {
          v25 = &selRef_orangeColor;
        }
      }

      else
      {
        v25 = &selRef_darkGrayColor;
      }
    }

    v40 = [v9 *v25];
    v41 = [v19 layer];
    [v41 setCornerRadius_];

    [v19 setBackgroundColor_];
    v42 = *&a3[OBJC_IVAR____TtC7NewsAds23DebugJournalSummaryView_status];
    [v42 setNumberOfLines_];
    [a3 setFrame_];
    [v42 setFrame_];
    [v19 setFrame_];
    v43 = *&a3[OBJC_IVAR____TtC7NewsAds23DebugJournalSummaryView_moreDetailsButton];
    [v43 setFrame_];
    [v117 setFrame_];
    [v115 setFrame_];
    v121 = v126;
    v122 = v127;
    v44 = JournalEntryStatus.shortDescription.getter();
    v46 = sub_1D76BEE10(v44, v45);

    [v42 setAttributedText_];

    v47 = sub_1D7704230();
    v48 = [objc_opt_self() systemImageNamed_];

    [v43 setImage:v48 forState:0];
    v49 = sub_1D7704230();
    [v43 setTitle_];

    v50 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v51 = swift_allocObject();
    v52 = v127;
    *(v51 + 104) = v128;
    v53 = v130;
    *(v51 + 120) = v129;
    *(v51 + 136) = v53;
    *(v51 + 152) = v131;
    v54 = v123;
    *(v51 + 40) = v124;
    v55 = v126;
    *(v51 + 56) = v125;
    *(v51 + 72) = v55;
    *(v51 + 88) = v52;
    *(v51 + 16) = v119;
    *(v51 + 24) = v54;
    *(v51 + 168) = v50;

    sub_1D766D644(&v123, &v121);
    goto LABEL_45;
  }

  [a3 setHidden_];
}

double sub_1D76CE804(uint64_t a1, __int128 *a2)
{
  v30 = sub_1D7703F90();
  v4 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v29 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D7703F20();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1E69E6720];
  sub_1D76CF280(0, &qword_1EC9BDAF8, MEMORY[0x1E69D77E8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v28 - v12;
  v14 = MEMORY[0x1E69D8750];
  sub_1D76CF280(0, &unk_1EC9BE2F0, MEMORY[0x1E69D8750], v10);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = v28 - v16;
  v18 = *(a1 + 56);
  v28[2] = *(a1 + 64);
  v28[1] = v18;
  v28[0] = swift_getObjectType();
  sub_1D76CF280(0, &qword_1EC9BDB00, v14, MEMORY[0x1E69D8790]);
  sub_1D7704050();
  if (qword_1EC9BCAA8 != -1)
  {
    swift_once();
  }

  v19 = sub_1D7703EF0();
  v20 = __swift_project_value_buffer(v19, qword_1EC9BD428);
  v21 = *(v19 - 8);
  (*(v21 + 16))(v13, v20, v19);
  (*(v21 + 56))(v13, 0, 1, v19);
  v22 = a2[7];
  v37 = a2[6];
  v38 = v22;
  v39 = a2[8];
  v23 = a2[3];
  v33 = a2[2];
  v34 = v23;
  v24 = a2[5];
  v35 = a2[4];
  v36 = v24;
  v25 = *a2;
  v32 = a2[1];
  v31 = v25;
  sub_1D76E9760();
  (*(v7 + 104))(v9, *MEMORY[0x1E69D79D0], v6);
  sub_1D7703FC0();
  v26 = sub_1D7703FD0();
  (*(*(v26 - 8) + 56))(v17, 0, 1, v26);
  (*(v4 + 104))(v29, *MEMORY[0x1E69D7FB8], v30);
  *(&v32 + 1) = &type metadata for Tracker;
  *&v33 = sub_1D76CF2E4();
  v40 = 0u;
  v41 = 0u;
  v42 = 1;
  sub_1D7703F80();
  swift_allocObject();
  sub_1D7703F70();
  sub_1D7703F30();
  sub_1D76CF338(v17, &unk_1EC9BE2F0, MEMORY[0x1E69D8750], MEMORY[0x1E69E6720], sub_1D76CF280);

  return result;
}

double sub_1D76CED90(uint64_t a1, __n128 *a2, uint64_t a3)
{
  v4 = a2[7];
  v35 = a2[6];
  v36 = v4;
  v37 = a2[8];
  v5 = a2[3];
  v31 = a2[2];
  v32 = v5;
  v6 = a2[5];
  v33 = a2[4];
  v34 = v6;
  v7 = a2[1];
  v29 = *a2;
  v30 = v7;
  v8 = sub_1D7703F90();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE0B07F0 != -1)
  {
    swift_once();
  }

  v44 = v35;
  v45 = v36;
  v46 = v37;
  v40 = v31;
  v41 = v32;
  v42 = v33;
  v43 = v34;
  v38 = v29;
  v39 = v30;
  nullsub_1();
  v23 = v44;
  v24 = v45;
  v25 = v46;
  v19 = v40;
  v20 = v41;
  v21 = v42;
  v22 = v43;
  v17 = v38;
  v18 = v39;
  (*(v9 + 104))(v11, *MEMORY[0x1E69D7FB8], v8);
  v15 = &type metadata for Tracker;
  v16 = sub_1D76CF2E4();
  swift_beginAccess();
  swift_unknownObjectWeakLoadStrong();
  swift_getObjectType();
  v26 = 0u;
  v27 = 0u;
  v28 = 1;
  sub_1D7703F80();
  swift_allocObject();
  sub_1D766D644(a2, v14);
  sub_1D7703F70();
  sub_1D7703F30();
  v14[6] = v23;
  v14[7] = v24;
  v14[8] = v25;
  v14[2] = v19;
  v14[3] = v20;
  v14[4] = v21;
  v14[5] = v22;
  v14[0] = v17;
  v14[1] = v18;
  sub_1D76CF338(v14, &qword_1EE0B03A8, &type metadata for DebugJournal, MEMORY[0x1E69E6720], sub_1D76CF398);

  return result;
}

uint64_t sub_1D76CF0F4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

double sub_1D76CF158(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 >> 62)
  {
    if (a1 >> 62 != 1)
    {
      return result;
    }

    a1 &= 0x3FFFFFFFFFFFFFFFuLL;
  }

  return result;
}

uint64_t objectdestroy_3Tm()
{

  sub_1D76CF158(*(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96));

  return swift_deallocObject();
}

void sub_1D76CF280(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1D76CF2E4()
{
  result = qword_1EC9BDB08;
  if (!qword_1EC9BDB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDB08);
  }

  return result;
}

uint64_t sub_1D76CF338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_1D76CF398(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

double NativeAdContext.userData.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 8);

  return result;
}

uint64_t NativeAdContext.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  v4 = *(v1 + 88);
  v10 = *(v1 + 72);
  v3 = v10;
  v11 = v4;
  v12 = *(v1 + 104);
  v6 = *(v1 + 40);
  v9[0] = *(v1 + 24);
  v5 = v9[0];
  v9[1] = v6;
  v9[2] = v2;
  *(a1 + 80) = v12;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v6;
  return sub_1D76C73A0(v9, v8, &qword_1EE0B0468, &type metadata for FeedAdData);
}

uint64_t NativeAdContext.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 160);
  v9 = *(v1 + 144);
  v10 = v2;
  v11 = *(v1 + 176);
  v3 = v11;
  v4 = *(v1 + 128);
  v8[0] = *(v1 + 112);
  v5 = v8[0];
  v8[1] = v4;
  *(a1 + 32) = v9;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_1D7690F3C(v8, v7);
}

uint64_t NativeAdContext.leadingGroupData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 200);
  v3 = *(v1 + 232);
  v9 = *(v1 + 216);
  v10 = v3;
  v11 = *(v1 + 248);
  v4 = v11;
  v8[0] = *(v1 + 184);
  v5 = v8[0];
  v8[1] = v2;
  *(a1 + 32) = v9;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v2;
  return sub_1D76C73A0(v8, v7, &qword_1EE0B0088, &type metadata for FeedGroupAdData);
}

uint64_t NativeAdContext.trailingGroupData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 304);
  v9 = *(v1 + 288);
  v10 = v2;
  v11 = *(v1 + 320);
  v3 = v11;
  v4 = *(v1 + 272);
  v8[0] = *(v1 + 256);
  v5 = v8[0];
  v8[1] = v4;
  *(a1 + 32) = v9;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_1D76C73A0(v8, v7, &qword_1EE0B0088, &type metadata for FeedGroupAdData);
}

double NativeAdContext.issueData.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 336);
  v3 = *(v1 + 344);
  *a1 = *(v1 + 328);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;

  return result;
}

double NativeAdContext.sectionData.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 360);
  *a1 = *(v1 + 352);
  a1[1] = v2;

  return result;
}

uint64_t NativeAdContext.articleData.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[26];
  v9 = v1[25];
  v10 = v2;
  v11 = v1[27];
  v3 = v11;
  v4 = v1[24];
  v8[0] = v1[23];
  v5 = v8[0];
  v8[1] = v4;
  a1[2] = v9;
  a1[3] = v2;
  a1[4] = v3;
  *a1 = v5;
  a1[1] = v4;
  return sub_1D76C73A0(v8, &v7, &qword_1EE0B0300, &type metadata for ArticleAdData);
}

uint64_t NativeAdContext.channelData.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[29];
  v7[0] = v1[28];
  v7[1] = v2;
  v4 = v1[31];
  v8 = v1[30];
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_1D76C73A0(v7, &v6, &qword_1EE0B02E8, &type metadata for ChannelAdData);
}

void NativeAdContext.init(provider:)(void *a1@<X0>, void *a2@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  AdContextDataProviding.data<A>(for:)(&type metadata for AppAdData, v5, &type metadata for AppAdData, v6);
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v7 = a1[3];
    v8 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v7);
    AdContextDataProviding.data<A>(for:)(&type metadata for UserAdData, v7, &type metadata for UserAdData, v8);
    v129 = v38;
    v9 = a1[3];
    v10 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v9);
    AdContextDataProviding.data<A>(for:)(&type metadata for FeedGroupAdData, v9, &type metadata for FeedGroupAdData, v10);
    v124 = v100;
    v125 = v101;
    v126 = v102;
    v127 = v103;
    v123 = v99;
    v11 = a1[3];
    v12 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v11);
    v95[1] = 0;
    v95[0] = 0;
    v96 = 0;
    (*(v12 + 16))(v97, &type metadata for FeedGroupAdData, v95, &type metadata for FeedGroupAdData, v11, v12);
    v36 = v38;
    v119 = v97[1];
    v120 = v97[2];
    v121 = v97[3];
    v122 = v98;
    v118 = v97[0];
    v13 = a1[3];
    v14 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v13);
    v91 = xmmword_1D770C6E0;
    v92 = 0;
    (*(v14 + 16))(v93, &type metadata for FeedGroupAdData, &v91, &type metadata for FeedGroupAdData, v13, v14);
    v114 = v93[1];
    v115 = v93[2];
    v116 = v93[3];
    v117 = v94;
    v113 = v93[0];
    v15 = a1[3];
    v16 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v15);
    AdContextDataProviding.data<A>(for:)(&type metadata for PlacementAdData, v15, &type metadata for PlacementAdData, v16);
    v17 = a1[3];
    v18 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v17);
    AdContextDataProviding.dataIfPresent<A>(for:)(&type metadata for FeedAdData, v17, &type metadata for FeedAdData, v18);
    *(&v128[2] + 7) = v87;
    *(&v128[3] + 7) = v88;
    *(&v128[4] + 7) = v89;
    *(&v128[5] + 7) = v90;
    *(v128 + 7) = v85;
    *(&v128[1] + 7) = v86;
    v19 = a1[3];
    v20 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v19);
    AdContextDataProviding.dataIfPresent<A>(for:)(&type metadata for IssueAdData, v19, &type metadata for IssueAdData, v20);
    LOBYTE(v8) = v38;
    v21 = v38;
    v35 = v39;
    v33 = *v40;
    v22 = a1[3];
    v23 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v22);
    AdContextDataProviding.dataIfPresent<A>(for:)(&type metadata for SectionAdData, v22, &type metadata for SectionAdData, v23);
    __dst = a2;
    v24 = v38;
    v34 = v39;
    v25 = a1[3];
    v26 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v25);
    AdContextDataProviding.dataIfPresent<A>(for:)(&type metadata for ArticleAdData, v25, &type metadata for ArticleAdData, v26);
    v109 = v81;
    v110 = v82;
    v111 = v83;
    v112 = v84;
    v108 = v80;
    v27 = a1[3];
    v28 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v27);
    AdContextDataProviding.dataIfPresent<A>(for:)(&type metadata for ChannelAdData, v27, &type metadata for ChannelAdData, v28);
    v104 = v76;
    v105 = v77;
    v106 = v78;
    v107 = v79;
    v29 = a1[3];
    v30 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v29);
    AdContextDataProviding.dataIfPresent<A>(for:)(&type metadata for ReferralAdData, v29, &type metadata for ReferralAdData, v30);
    v31 = v75;
    __src[0] = v38;
    *&__src[8] = v129;
    __src[16] = v38;
    *&__src[49] = v128[2];
    *&__src[65] = v128[3];
    *&__src[81] = v128[4];
    *&__src[17] = v128[0];
    *&__src[33] = v128[1];
    *&__src[96] = *(&v128[4] + 15);
    *&__src[112] = v123;
    *&__src[160] = v126;
    *&__src[144] = v125;
    *&__src[128] = v124;
    *&__src[184] = v118;
    *&__src[176] = v127;
    *&__src[248] = v122;
    *&__src[232] = v121;
    *&__src[216] = v120;
    *&__src[200] = v119;
    *&__src[304] = v116;
    *&__src[288] = v115;
    *&__src[256] = v113;
    *&__src[272] = v114;
    *&__src[320] = v117;
    *&__src[328] = v38;
    *&__src[336] = v39;
    *&__src[344] = *v40;
    *&__src[352] = v38;
    *&__src[360] = v39;
    *&__src[416] = v111;
    *&__src[400] = v110;
    *&__src[368] = v108;
    *&__src[384] = v109;
    *&__src[496] = v107;
    *&__src[480] = v106;
    *&__src[464] = v105;
    *&__src[432] = v112;
    *&__src[448] = v104;
    __src[512] = v75;
    memcpy(__dst, __src, 0x201uLL);
    sub_1D76D01B4(__src, &v38);
    __swift_destroy_boxed_opaque_existential_1(a1);
    LOBYTE(v38) = v36;
    v39 = v129;
    v40[0] = v8;
    v42 = v128[2];
    v43 = v128[3];
    *v44 = v128[4];
    *&v40[1] = v128[0];
    v41 = v128[1];
    *&v44[15] = *(&v128[4] + 15);
    v45 = v123;
    v47 = v125;
    v48 = v126;
    v46 = v124;
    v51 = v119;
    v52 = v120;
    v53 = v121;
    v49 = v127;
    v54 = v122;
    v50 = v118;
    v57 = v115;
    v58 = v116;
    v55 = v113;
    v56 = v114;
    v59 = v117;
    v60 = v21;
    v61 = v35;
    v62 = v33;
    v63 = v24;
    v64 = v34;
    v67 = v110;
    v68 = v111;
    v65 = v108;
    v66 = v109;
    v72 = v106;
    v73 = v107;
    v70 = v104;
    v71 = v105;
    v69 = v112;
    v74 = v31;
    sub_1D76D01EC(&v38);
  }
}

unint64_t sub_1D76D021C(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x44656C6369747261;
    v7 = 0x446C656E6E616863;
    if (a1 != 10)
    {
      v7 = 0x6C61727265666572;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0xD000000000000011;
    v9 = 0x7461446575737369;
    if (a1 != 7)
    {
      v9 = 0x446E6F6974636573;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
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
    v1 = 0x61746144707061;
    v2 = 0x6174614464656566;
    v3 = 0x74614470756F7267;
    if (a1 != 4)
    {
      v3 = 0xD000000000000010;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x6174614472657375;
    if (a1 != 1)
    {
      v4 = 0x6E656D6563616C70;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1D76D03E0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D76D31BC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D76D0414(uint64_t a1)
{
  v2 = sub_1D76D0D9C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D76D0450(uint64_t a1)
{
  v2 = sub_1D76D0D9C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t NativeAdContext.encode(to:)(void *a1)
{
  sub_1D76D1B90(0, &qword_1EC9BDB10, MEMORY[0x1E69E6F58]);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v31 - v5;
  LODWORD(v38) = *v1;
  v37 = *(v1 + 1);
  v36 = v1[16];
  v7 = *(v1 + 72);
  v89 = *(v1 + 56);
  v90 = v7;
  v91 = *(v1 + 88);
  v92 = *(v1 + 13);
  v8 = *(v1 + 40);
  v87 = *(v1 + 24);
  v88 = v8;
  v9 = *(v1 + 7);
  v10 = *(v1 + 8);
  v11 = *(v1 + 9);
  v12 = *(v1 + 10);
  v97 = *(v1 + 22);
  v96 = v12;
  v95 = v11;
  v93 = v9;
  v94 = v10;
  v102 = *(v1 + 31);
  v101 = *(v1 + 232);
  v100 = *(v1 + 216);
  v99 = *(v1 + 200);
  v98 = *(v1 + 184);
  v13 = *(v1 + 17);
  v103 = *(v1 + 16);
  v14 = *(v1 + 18);
  v15 = *(v1 + 19);
  v16 = *(v1 + 41);
  v107 = *(v1 + 40);
  v106 = v15;
  v105 = v14;
  v104 = v13;
  v35 = *(v1 + 42);
  v34 = *(v1 + 172);
  v17 = *(v1 + 45);
  *&v32 = *(v1 + 44);
  *(&v32 + 1) = v17;
  v33 = v16;
  v18 = *(v1 + 24);
  v108 = *(v1 + 23);
  v19 = *(v1 + 28);
  v112 = *(v1 + 27);
  v20 = *(v1 + 25);
  v111 = *(v1 + 26);
  v110 = v20;
  v109 = v18;
  v21 = *(v1 + 29);
  v22 = *(v1 + 30);
  v116 = *(v1 + 31);
  v115 = v22;
  v114 = v21;
  v113 = v19;
  v23 = v1[512];
  v24 = a1[3];
  v25 = a1;
  v27 = v26;
  __swift_project_boxed_opaque_existential_1(v25, v24);
  sub_1D76D0D9C();
  sub_1D7704B10();
  LOBYTE(v81) = v38;
  LOBYTE(v78[0]) = 0;
  sub_1D7669D40();
  v28 = v117;
  sub_1D7704A00();
  if (v28)
  {
    return (*(v4 + 8))(v6, v27);
  }

  v29 = v36;
  LODWORD(v117) = v23;
  *&v81 = v37;
  LOBYTE(v78[0]) = 1;
  sub_1D7669394();

  sub_1D7704A00();

  LOBYTE(v81) = v29;
  LOBYTE(v78[0]) = 2;
  sub_1D76794CC();
  sub_1D7704A00();
  v83 = v89;
  v84 = v90;
  v85 = v91;
  v86 = v92;
  v81 = v87;
  v82 = v88;
  v80 = 3;
  sub_1D76C73A0(&v87, v78, &qword_1EE0B0468, &type metadata for FeedAdData);
  sub_1D766CFCC();
  sub_1D77049B0();
  v78[2] = v83;
  v78[3] = v84;
  v78[4] = v85;
  v79 = v86;
  v78[0] = v81;
  v78[1] = v82;
  sub_1D76939B0(v78, &qword_1EE0B0468, &type metadata for FeedAdData);
  v75 = v95;
  v76 = v96;
  v77 = v97;
  v73 = v93;
  v74 = v94;
  v72 = 4;
  sub_1D7690F3C(&v93, &v49);
  sub_1D7692260();
  sub_1D7704A00();
  v70[2] = v75;
  v70[3] = v76;
  v71 = v77;
  v70[0] = v73;
  v70[1] = v74;
  sub_1D769179C(v70);
  v67 = v100;
  v68 = v101;
  v69 = v102;
  v65 = v98;
  v66 = v99;
  v64 = 5;
  sub_1D76C73A0(&v98, &v49, &qword_1EE0B0088, &type metadata for FeedGroupAdData);
  sub_1D77049B0();
  v62[2] = v67;
  v62[3] = v68;
  v63 = v69;
  v62[0] = v65;
  v62[1] = v66;
  v38 = v6;
  sub_1D76939B0(v62, &qword_1EE0B0088, &type metadata for FeedGroupAdData);
  v59 = v105;
  v60 = v106;
  v61 = v107;
  v57 = v103;
  v58 = v104;
  v56 = 6;
  sub_1D76C73A0(&v103, &v49, &qword_1EE0B0088, &type metadata for FeedGroupAdData);
  sub_1D77049B0();
  v54[2] = v59;
  v54[3] = v60;
  v55 = v61;
  v54[0] = v57;
  v54[1] = v58;
  sub_1D76939B0(v54, &qword_1EE0B0088, &type metadata for FeedGroupAdData);
  *&v49 = v33;
  *(&v49 + 1) = v35;
  LOWORD(v50) = v34;
  LOBYTE(v47[0]) = 7;
  sub_1D76922B4();

  sub_1D77049B0();

  v49 = v32;
  LOBYTE(v47[0]) = 8;
  sub_1D7692308();

  sub_1D77049B0();

  v51 = v110;
  v52 = v111;
  v53 = v112;
  v49 = v108;
  v50 = v109;
  v48 = 9;
  sub_1D76C73A0(&v108, v47, &qword_1EE0B0300, &type metadata for ArticleAdData);
  sub_1D768E278();
  sub_1D77049B0();
  v47[2] = v51;
  v47[3] = v52;
  v47[4] = v53;
  v47[0] = v49;
  v47[1] = v50;
  sub_1D76939B0(v47, &qword_1EE0B0300, &type metadata for ArticleAdData);
  v43 = v113;
  v44 = v114;
  v45 = v115;
  v46 = v116;
  v42 = 10;
  sub_1D76C73A0(&v113, v41, &qword_1EE0B02E8, &type metadata for ChannelAdData);
  sub_1D769220C();
  sub_1D77049B0();
  v41[0] = v43;
  v41[1] = v44;
  v41[2] = v45;
  v41[3] = v46;
  sub_1D76939B0(v41, &qword_1EE0B02E8, &type metadata for ChannelAdData);
  v40 = v117;
  v39 = 11;
  sub_1D768A434();
  sub_1D77049B0();
  return (*(v4 + 8))(v38, v27);
}

unint64_t sub_1D76D0D9C()
{
  result = qword_1EC9BDB18;
  if (!qword_1EC9BDB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDB18);
  }

  return result;
}

void NativeAdContext.init(from:)(void *a1@<X0>, void *a2@<X8>)
{
  sub_1D76D1B90(0, &qword_1EC9BDB20, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = a1[3];
  v129 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_1D76D0D9C();
  sub_1D7704B00();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v129);
  }

  else
  {
    v11 = v7;
    v27[0] = 0;
    sub_1D7669CEC();
    sub_1D7704970();
    v12 = v28;
    v27[0] = 1;
    sub_1D76684E8();
    sub_1D7704970();
    v26 = v28;
    v27[0] = 2;
    sub_1D7679440();
    sub_1D7704970();
    v13 = v28;
    v94 = 3;
    sub_1D766CDD0();
    sub_1D7704920();
    v25 = v13;
    *&v127[39] = v97;
    *&v127[55] = v98;
    *&v127[71] = v99;
    *&v127[87] = v100;
    *&v127[7] = v95;
    *&v127[23] = v96;
    v88 = 4;
    v14 = sub_1D7692D98();
    sub_1D7704970();
    v123 = v90;
    v124 = v91;
    v125 = v92;
    v126 = v93;
    v122 = v89;
    v82 = 5;
    v24 = v14;
    sub_1D7704920();
    v23 = v11;
    v118 = v84;
    v119 = v85;
    v120 = v86;
    v121 = v87;
    v117 = v83;
    v76 = 6;
    sub_1D7704920();
    v113 = v78;
    v114 = v79;
    v115 = v80;
    v116 = v81;
    v112 = v77;
    v27[0] = 7;
    sub_1D7692DEC();
    sub_1D7704920();
    v21 = a2;
    v15 = v28;
    v24 = v29;
    v22 = *v30;
    v27[0] = 8;
    sub_1D7692E40();
    sub_1D7704920();
    v16 = v28;
    v23 = v29;
    v70 = 9;
    sub_1D768E224();
    v19 = v9;
    v20 = v6;
    sub_1D7704920();
    v106 = v72;
    v107 = v73;
    v108 = v74;
    v109 = v75;
    v105 = v71;
    v65 = 10;
    sub_1D7692D44();
    sub_1D7704920();
    v101 = v66;
    v102 = v67;
    v103 = v68;
    v104 = v69;
    v63 = 11;
    sub_1D768AAE4();
    sub_1D7704920();
    (*(v11 + 8))(v19, v20);
    LODWORD(v20) = v64;
    v27[0] = v12;
    *&v27[1] = v128[0];
    *&v27[4] = *(v128 + 3);
    *&v27[8] = v26;
    v27[16] = v25;
    *&v27[49] = *&v127[32];
    *&v27[65] = *&v127[48];
    *&v27[81] = *&v127[64];
    *&v27[17] = *v127;
    *&v27[33] = *&v127[16];
    *&v27[128] = v123;
    *&v27[144] = v124;
    *&v27[160] = v125;
    *&v27[96] = *&v127[79];
    *&v27[112] = v122;
    *&v27[200] = v118;
    *&v27[216] = v119;
    *&v27[232] = v120;
    *&v27[176] = v126;
    *&v27[248] = v121;
    *&v27[184] = v117;
    *&v27[304] = v115;
    *&v27[288] = v114;
    *&v27[256] = v112;
    *&v27[272] = v113;
    *&v27[320] = v116;
    *&v27[328] = v15;
    v17 = v23;
    *&v27[336] = v24;
    *&v27[344] = v22;
    *&v27[346] = v110;
    *&v27[350] = v111;
    *&v27[352] = v16;
    *&v27[360] = v23;
    *&v27[416] = v108;
    *&v27[400] = v107;
    *&v27[368] = v105;
    *&v27[384] = v106;
    *&v27[496] = v104;
    *&v27[480] = v103;
    *&v27[464] = v102;
    *&v27[432] = v109;
    *&v27[448] = v101;
    v27[512] = v64;
    memcpy(v21, v27, 0x201uLL);
    sub_1D76D01B4(v27, &v28);
    __swift_destroy_boxed_opaque_existential_1(v129);
    LOBYTE(v28) = v12;
    *(&v28 + 1) = v128[0];
    HIDWORD(v28) = *(v128 + 3);
    v29 = v26;
    v30[0] = v25;
    v32 = *&v127[32];
    v33 = *&v127[48];
    *v34 = *&v127[64];
    *&v30[1] = *v127;
    v31 = *&v127[16];
    *&v34[47] = v123;
    *&v34[63] = v124;
    *&v34[79] = v125;
    *&v34[15] = *&v127[79];
    *&v34[31] = v122;
    v37 = v118;
    v38 = v119;
    v39 = v120;
    v35 = v126;
    v40 = v121;
    v36 = v117;
    v43 = v114;
    v44 = v115;
    v41 = v112;
    v42 = v113;
    v45 = v116;
    v46 = v15;
    v47 = v24;
    v48 = v22;
    v49 = v110;
    v50 = v111;
    v51 = v16;
    v52 = v17;
    v55 = v107;
    v56 = v108;
    v53 = v105;
    v54 = v106;
    v60 = v103;
    v61 = v104;
    v58 = v101;
    v59 = v102;
    v57 = v109;
    v62 = v20;
    sub_1D76D01EC(&v28);
  }
}

void sub_1D76D1B90(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D76D0D9C();
    v7 = a3(a1, &type metadata for NativeAdContext.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

id NativeAdContext.newsSupplementalContext.getter()
{
  v1 = sub_1D77038A0();
  v45 = *(v1 - 8);
  v46 = v1;
  v2 = MEMORY[0x1EEE9AC00](v1);
  v44 = v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v43 = v41 - v4;
  v5 = *v0;
  v47 = v0[16];
  v48 = v5;
  v6 = *(v0 + 72);
  v83 = *(v0 + 56);
  v84 = v6;
  v85 = *(v0 + 88);
  v7 = *(v0 + 13);
  v50 = *(v0 + 14);
  v86 = v7;
  v8 = *(v0 + 40);
  v81 = *(v0 + 24);
  v82 = v8;
  v9 = *(v0 + 15);
  v10 = *(v0 + 16);
  v11 = *(v0 + 17);
  v12 = *(v0 + 18);
  v52 = *(v0 + 19);
  v14 = *(v0 + 21);
  v13 = *(v0 + 22);
  v15 = *(v0 + 184);
  v91 = *(v0 + 31);
  v16 = *(v0 + 232);
  v89 = *(v0 + 216);
  v90 = v16;
  v17 = *(v0 + 200);
  v87 = v15;
  v88 = v17;
  v18 = *(v0 + 41);
  v96 = *(v0 + 40);
  v19 = *(v0 + 19);
  v94 = *(v0 + 18);
  v95 = v19;
  v20 = *(v0 + 17);
  v92 = *(v0 + 16);
  v93 = v20;
  v21 = *(v0 + 42);
  v42 = *(v0 + 172);
  v22 = *(v0 + 45);
  v41[1] = *(v0 + 44);
  v41[2] = v18;
  v57 = v22;
  v23 = *(v0 + 23);
  v24 = *(v0 + 24);
  v26 = *(v0 + 27);
  v25 = *(v0 + 28);
  v27 = *(v0 + 25);
  v100 = *(v0 + 26);
  v101 = v26;
  v98 = v24;
  v99 = v27;
  v97 = v23;
  v28 = *(v0 + 29);
  v29 = *(v0 + 31);
  v104 = *(v0 + 30);
  v105 = v29;
  v102 = v25;
  v103 = v28;
  v58 = v0[512];
  v30 = objc_allocWithZone(sub_1D7703D00());
  v54 = v14;

  v53 = v13;

  v56 = v9;

  v55 = v10;

  v51 = v11;

  v49 = v12;

  sub_1D76C73A0(&v87, v79, &qword_1EE0B0088, &type metadata for FeedGroupAdData);
  sub_1D76C73A0(&v92, v79, &qword_1EE0B0088, &type metadata for FeedGroupAdData);

  sub_1D76C73A0(&v97, v79, &qword_1EE0B0300, &type metadata for ArticleAdData);
  sub_1D76C73A0(&v102, v79, &qword_1EE0B02E8, &type metadata for ChannelAdData);
  v31 = [v30 init];
  sub_1D7703CF0();
  sub_1D7703AE0();
  sub_1D7703B50();

  sub_1D7703C00();

  v75 = v83;
  v76 = v84;
  v77 = v85;
  v78 = v86;
  v73 = v81;
  v74 = v82;
  sub_1D76C73A0(&v81, v79, &qword_1EE0B0468, &type metadata for FeedAdData);
  sub_1D768078C(&v73);
  v79[2] = v75;
  v79[3] = v76;
  v79[4] = v77;
  v80 = v78;
  v79[0] = v73;
  v79[1] = v74;
  sub_1D76939B0(v79, &qword_1EE0B0468, &type metadata for FeedAdData);
  if (v21)
  {

    sub_1D7703AD0();
    v32 = v46;
    v33 = *(v45 + 104);
    v34 = *MEMORY[0x1E69C5F50];
    v35 = *MEMORY[0x1E69C5F58];
    v36 = v42;
    if (v42)
    {
      v37 = v34;
    }

    else
    {
      v37 = v35;
    }

    v33(v43, v37, v46);
    sub_1D7703B80();
    if ((v36 & 0x100) != 0)
    {
      v38 = v34;
    }

    else
    {
      v38 = v35;
    }

    v33(v44, v38, v32);
    sub_1D7703BE0();
  }

  sub_1D7703A50();

  sub_1D7703A80();

  sub_1D7703A90();

  sub_1D77039C0();
  v39 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  [v39 initWithInteger_];
  sub_1D7703AC0();

  v75 = v89;
  v76 = v90;
  *&v77 = v91;
  v73 = v87;
  v74 = v88;
  sub_1D76B98D8(&v73);
  v69[2] = v75;
  v69[3] = v76;
  v70 = v77;
  v69[0] = v73;
  v69[1] = v74;
  sub_1D76939B0(v69, &qword_1EE0B0088, &type metadata for FeedGroupAdData);
  v75 = v94;
  v76 = v95;
  *&v77 = v96;
  v73 = v92;
  v74 = v93;
  sub_1D76B99C0(&v73);
  v71[2] = v75;
  v71[3] = v76;
  v72 = v77;
  v71[0] = v73;
  v71[1] = v74;
  sub_1D76939B0(v71, &qword_1EE0B0088, &type metadata for FeedGroupAdData);
  if (v57 && *(&v81 + 1))
  {
    if ((BYTE8(v82) & 1) != 0 || v82 >= 1)
    {
    }

    sub_1D7703C10();
  }

  v65 = v99;
  v66 = v100;
  v67 = v101;
  v63 = v97;
  v64 = v98;
  v59 = v102;
  v60 = v103;
  v61 = v104;
  v62 = v105;
  sub_1D76B9740(&v63, &v59, v104);
  v68[0] = v59;
  v68[1] = v60;
  v68[2] = v61;
  v68[3] = v62;
  sub_1D76939B0(v68, &qword_1EE0B02E8, &type metadata for ChannelAdData);
  v75 = v65;
  v76 = v66;
  v77 = v67;
  v73 = v63;
  v74 = v64;
  sub_1D76939B0(&v73, &qword_1EE0B0300, &type metadata for ArticleAdData);
  if (v58 < 4)
  {
    sub_1D7703AF0();
    sub_1D768ABAC();
    sub_1D7704680();
    sub_1D7703C70();
  }

  return v31;
}

uint64_t NativeAdContext.currentPromotableContentDepiction.getter()
{
  v1 = sub_1D7702FD0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 8);
  v6 = *(v0 + 432);
  v7 = *(v0 + 384);
  v13[0] = *(v0 + 368);
  v13[1] = v7;
  v8 = *(v0 + 400);
  v13[3] = *(v0 + 416);
  v14 = v6;
  v13[2] = v8;
  if (!*(&v13[0] + 1))
  {
    return 0;
  }

  v11[1] = *&v13[0];
  if (!*(&v14 + 1) && *(v5 + 16))
  {
  }

  sub_1D76C73A0(v13, v12, &qword_1EE0B0300, &type metadata for ArticleAdData);

  sub_1D7702FC0();
  sub_1D7702FB0();
  (*(v2 + 8))(v4, v1);
  sub_1D7703780();

  v9 = sub_1D7703770();
  sub_1D76939B0(v13, &qword_1EE0B0300, &type metadata for ArticleAdData);
  return v9;
}

uint64_t NativeAdContext.additionalPromotableContentDepictions.getter()
{
  v65 = sub_1D7702FD0();
  v1 = *(v65 - 8);
  v2 = MEMORY[0x1EEE9AC00](v65);
  v62 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v60 = &v49 - v5;
  MEMORY[0x1EEE9AC00](v4);
  v58 = (&v49 - v6);
  v64 = sub_1D7702FA0();
  v7 = *(v64 - 8);
  v8 = MEMORY[0x1EEE9AC00](v64);
  v61 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v59 = (&v49 - v11);
  MEMORY[0x1EEE9AC00](v10);
  v57 = (&v49 - v12);
  v13 = v0[1];
  v14 = v0[22];
  v15 = v0[24];
  v16 = v0[33];
  v17 = v0[40];
  v63 = v13;
  if (v15)
  {
    v18 = v0[31];
    v19 = *(v18 + 16);
    v20 = MEMORY[0x1E69E7CC0];
    if (v19)
    {
      v49 = v16;
      v50 = v17;
      v51 = v14;
      v71 = MEMORY[0x1E69E7CC0];
      sub_1D77047F0();
      v56 = sub_1D7703780();
      v21 = (v18 + 32);
      v52 = v7;
      v55 = (v7 + 8);
      v53 = v1;
      v54 = (v1 + 8);
      for (i = v19 - 1; ; --i)
      {
        v23 = *v21;
        v24 = v21[1];
        v25 = v21[2];
        *&v70[9] = *(v21 + 41);
        v69 = v24;
        *v70 = v25;
        v68 = v23;
        sub_1D76ABB5C(&v68, v67);

        v26 = v57;
        sub_1D7702F90();
        sub_1D7702F70();
        (*v55)(v26, v64);
        if (*&v70[8] || *(v13 + 16))
        {
        }

        else
        {
        }

        v27 = v58;
        sub_1D7702FC0();
        sub_1D7702FB0();
        (*v54)(v27, v65);

        sub_1D7703770();
        sub_1D76ABBB8(&v68);
        sub_1D77047C0();
        sub_1D7704800();
        sub_1D7704810();
        sub_1D77047D0();
        if (!i)
        {
          break;
        }

        v21 += 4;
        v13 = v63;
      }

      v20 = v71;
      v13 = v63;
      v1 = v53;
      v7 = v52;
      v14 = v51;
      v17 = v50;
      v16 = v49;
    }
  }

  else
  {
    v20 = MEMORY[0x1E69E7CC0];
  }

  v55 = v20;
  if (v16)
  {
    v28 = *(v17 + 16);
    v29 = MEMORY[0x1E69E7CC0];
    if (v28)
    {
      v51 = v14;
      v71 = MEMORY[0x1E69E7CC0];
      sub_1D77047F0();
      v58 = sub_1D7703780();
      v30 = (v17 + 32);
      v52 = v7;
      v57 = (v7 + 8);
      v53 = v1;
      v56 = (v1 + 8);
      for (j = v28 - 1; ; --j)
      {
        v32 = *v30;
        v33 = v30[1];
        v34 = v30[2];
        *&v70[9] = *(v30 + 41);
        v69 = v33;
        *v70 = v34;
        v68 = v32;

        sub_1D76ABB5C(&v68, v67);
        v35 = v59;
        sub_1D7702F90();
        sub_1D7702F70();
        (*v57)(v35, v64);
        if (*&v70[8] || *(v13 + 16))
        {
        }

        else
        {
        }

        v36 = v60;
        sub_1D7702FC0();
        sub_1D7702FB0();
        (*v56)(v36, v65);

        sub_1D7703770();
        sub_1D76ABBB8(&v68);
        sub_1D77047C0();
        sub_1D7704800();
        sub_1D7704810();
        sub_1D77047D0();
        if (!j)
        {
          break;
        }

        v30 += 4;
        v13 = v63;
      }

      v29 = v71;
      v13 = v63;
      v20 = v55;
      v1 = v53;
      v7 = v52;
      v14 = v51;
    }
  }

  else
  {
    v29 = MEMORY[0x1E69E7CC0];
  }

  v37 = *(v14 + 16);
  v38 = MEMORY[0x1E69E7CC0];
  if (v37)
  {
    v57 = v29;
    v71 = MEMORY[0x1E69E7CC0];
    sub_1D77047F0();
    v60 = sub_1D7703780();
    v39 = (v14 + 32);
    v59 = (v7 + 8);
    v58 = (v1 + 8);
    for (k = v37 - 1; ; --k)
    {
      v41 = *v39;
      v42 = v39[1];
      v43 = v39[2];
      *&v70[9] = *(v39 + 41);
      v69 = v42;
      *v70 = v43;
      v68 = v41;

      sub_1D76ABB5C(&v68, v67);
      v44 = v61;
      sub_1D7702F90();
      sub_1D7702F70();
      (*v59)(v44, v64);
      if (*&v70[8] || *(v13 + 16))
      {
      }

      else
      {
      }

      v45 = v62;
      sub_1D7702FC0();
      sub_1D7702FB0();
      (*v58)(v45, v65);

      sub_1D7703770();
      sub_1D76ABBB8(&v68);
      sub_1D77047C0();
      sub_1D7704800();
      sub_1D7704810();
      sub_1D77047D0();
      if (!k)
      {
        break;
      }

      v39 += 4;
      v13 = v63;
    }

    v38 = v71;
    v20 = v55;
    v29 = v57;
  }

  v66 = v20;
  sub_1D768AF40(v29);
  sub_1D768AF40(v38);
  v46 = v66;
  if (v66 >> 62)
  {
    sub_1D76ABC0C();

    v47 = sub_1D7704870();
  }

  else
  {

    sub_1D7704A40();
    sub_1D76ABC0C();
    v47 = v46;
  }

  return v47;
}

uint64_t sub_1D76D2E54(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 513))
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

uint64_t sub_1D76D2E9C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 504) = 0;
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
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *(result + 512) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 513) = 1;
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

    *(result + 513) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NativeAdContext.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NativeAdContext.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D76D30B8()
{
  result = qword_1EC9BDB28;
  if (!qword_1EC9BDB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDB28);
  }

  return result;
}

unint64_t sub_1D76D3110()
{
  result = qword_1EC9BDB30;
  if (!qword_1EC9BDB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDB30);
  }

  return result;
}

unint64_t sub_1D76D3168()
{
  result = qword_1EC9BDB38;
  if (!qword_1EC9BDB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDB38);
  }

  return result;
}

uint64_t sub_1D76D31BC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x61746144707061 && a2 == 0xE700000000000000;
  if (v4 || (sub_1D7704A30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6174614472657375 && a2 == 0xE800000000000000 || (sub_1D7704A30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E656D6563616C70 && a2 == 0xED00006174614474 || (sub_1D7704A30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_1D7704A30() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x74614470756F7267 && a2 == 0xE900000000000061 || (sub_1D7704A30() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D7716420 == a2 || (sub_1D7704A30() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D7716440 == a2 || (sub_1D7704A30() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7461446575737369 && a2 == 0xE900000000000061 || (sub_1D7704A30() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x446E6F6974636573 && a2 == 0xEB00000000617461 || (sub_1D7704A30() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x44656C6369747261 && a2 == 0xEB00000000617461 || (sub_1D7704A30() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x446C656E6E616863 && a2 == 0xEB00000000617461 || (sub_1D7704A30() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6C61727265666572 && a2 == 0xEC00000061746144)
  {

    return 11;
  }

  else
  {
    v6 = sub_1D7704A30();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

uint64_t sub_1D76D35A8()
{
  sub_1D76DBC48(0, &qword_1EC9BDB58, MEMORY[0x1E69D6E30]);
  v240 = v0;
  v248 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v239 = &v201 - v1;
  v2 = MEMORY[0x1E69D6E30];
  sub_1D7675B68(0, &qword_1EC9BDB60, sub_1D76DB6C8, &type metadata for Settings.Ads.Debugging.EOANativeAdInsertionLocationOverride.EOANativeAdLocation, MEMORY[0x1E69D6E30]);
  v225 = v3;
  v224 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v226 = &v201 - v4;
  sub_1D7675B68(0, &qword_1EC9BDB68, sub_1D76DB620, &type metadata for Settings.Ads.Debugging.NativeOverride.DesiredPosition, v2);
  v223 = v5;
  v221 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v222 = &v201 - v6;
  sub_1D7675B68(0, &qword_1EC9BDB70, sub_1D76DB524, &type metadata for Settings.Ads.Debugging.AutoPlacement.BannerType, v2);
  v219 = v7;
  v218 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v220 = &v201 - v8;
  v9 = MEMORY[0x1E69E6530];
  v10 = MEMORY[0x1E69D6F28];
  v11 = MEMORY[0x1E69D6E30];
  sub_1D76681C4(0, &qword_1EC9BDB78, MEMORY[0x1E69E6530], MEMORY[0x1E69D6F28], MEMORY[0x1E69D6E30]);
  v247 = v12;
  v252 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v246 = &v201 - v13;
  v14 = MEMORY[0x1E69D6E48];
  sub_1D76681C4(0, &qword_1EC9BDB80, v9, v10, MEMORY[0x1E69D6E48]);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v217 = &v201 - v16;
  sub_1D7675B68(0, &qword_1EC9BDB88, sub_1D768055C, &type metadata for Settings.Ads.Debugging.DebugSponsorshipAd.SponsorshipFetchStrategy, v2);
  *&v216 = v17;
  v214 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v215 = &v201 - v18;
  sub_1D76681C4(0, &qword_1EC9BDB90, MEMORY[0x1E69E6158], MEMORY[0x1E69D6EE0], v11);
  v244 = v19;
  v249 = *(v19 - 1);
  MEMORY[0x1EEE9AC00](v19);
  v236 = &v201 - v20;
  sub_1D7675B68(0, &qword_1EC9BDB98, sub_1D76C6180, &type metadata for DebugAdCollapseBehavior, v2);
  v233 = v21;
  v241 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v232 = &v201 - v22;
  v23 = MEMORY[0x1E69E6448];
  v24 = MEMORY[0x1E69D6F10];
  sub_1D76681C4(0, &qword_1EC9BDBA0, MEMORY[0x1E69E6448], MEMORY[0x1E69D6F10], v11);
  v234 = v25;
  v253 = *(v25 - 1);
  MEMORY[0x1EEE9AC00](v25);
  v211 = &v201 - v26;
  sub_1D76681C4(0, &qword_1EC9BDBA8, v23, v24, v14);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v242 = &v201 - v28;
  sub_1D76681C4(0, &qword_1EC9BDBB0, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0], v11);
  v258 = v29;
  v255 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v245 = &v201 - v30;
  v31 = sub_1D7703120();
  v267 = *(v31 - 8);
  v268 = v31;
  MEMORY[0x1EEE9AC00](v31);
  v250 = &v201 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7675B68(0, &qword_1EC9BDBB8, sub_1D7675C0C, &type metadata for Settings.Ads.Debugging.VisualDebugging.Mode, v2);
  v263 = v33;
  v254 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v262 = &v201 - v34;
  v35 = sub_1D7703040();
  __swift_allocate_value_buffer(v35, qword_1EC9BDB40);
  v228 = __swift_project_value_buffer(v35, qword_1EC9BDB40);
  sub_1D76DBCE4(0, &qword_1EC9BDBC0, MEMORY[0x1E69D6E78]);
  v37 = v36;
  v38 = *(sub_1D7703200() - 8);
  v39 = *(v38 + 72);
  v40 = *(v38 + 80);
  v41 = (v40 + 32) & ~v40;
  v42 = swift_allocObject();
  v213 = xmmword_1D77091E0;
  *(v42 + 16) = xmmword_1D77091E0;
  v227 = v42;
  v251 = v42 + v41;
  sub_1D76DBCE4(0, &qword_1EC9BDBC8, sub_1D76DBD38);
  v44 = v43;
  v45 = swift_allocObject();
  v272 = xmmword_1D7708FE0;
  *(v45 + 16) = xmmword_1D7708FE0;
  v266 = v39;
  v209 = 2 * v39;
  v260 = v40;
  v261 = v37;
  v238 = v41 + 2 * v39;
  v46 = swift_allocObject();
  v256 = xmmword_1D7708FD0;
  *(v46 + 16) = xmmword_1D7708FD0;
  v257 = v41;
  *&v235 = v46;
  v259 = v46 + v41;
  if (qword_1EE0B0C70 != -1)
  {
    swift_once();
  }

  v47 = swift_allocObject();
  v271 = v44;
  v48 = v47;
  *(v47 + 16) = v272;
  sub_1D7675B68(0, &qword_1EC9BDBD8, sub_1D7675C0C, &type metadata for Settings.Ads.Debugging.VisualDebugging.Mode, MEMORY[0x1E69D6E50]);
  v50 = v49;
  sub_1D7676DD4(0, &unk_1EE0AEBE0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v52 = v51;
  v53 = swift_allocObject();
  v270 = xmmword_1D7708DE0;
  *(v53 + 16) = xmmword_1D7708DE0;
  v54 = sub_1D77030E0();

  *(v53 + 32) = sub_1D7703130();
  v55 = *(v254 + 13);
  v269 = *MEMORY[0x1E69D6E28];
  v55(v262);
  sub_1D76783B0();
  v56 = sub_1D77031A0();
  v48[7] = v50;
  v48[8] = sub_1D76DBD9C();
  v48[4] = v56;
  v212 = "news.ads.enabled";
  v210 = 0xD000000000000010;
  sub_1D77031E0();
  v57 = swift_allocObject();
  *(v57 + 16) = v272;
  sub_1D76681C4(0, &qword_1EC9BDBE8, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0], MEMORY[0x1E69D6E50]);
  v59 = v58;
  if (qword_1EE0B0C58 != -1)
  {
    swift_once();
  }

  v265 = v52;
  v60 = swift_allocObject();
  *(v60 + 16) = v270;

  v264 = v54;
  *(v60 + 32) = sub_1D7703130();
  v61 = *(v267 + 104);
  LODWORD(v263) = *MEMORY[0x1E69D6D78];
  v267 += 104;
  v262 = v61;
  (v61)(v250);
  v62 = *(v255 + 13);
  v255 += 104;
  v254 = v62;
  v62(v245, v269, v258);
  v63 = sub_1D77031B0();
  v237 = v59;
  *(v57 + 56) = v59;
  v243 = sub_1D76DBE2C();
  *(v57 + 64) = v243;
  *(v57 + 32) = v63;
  v64 = v266;
  sub_1D77031F0();
  v65 = sub_1D77031D0();
  v66 = MEMORY[0x1E69D6E60];
  v259 = v65;
  *(v45 + 56) = v65;
  *(v45 + 64) = v66;
  __swift_allocate_boxed_opaque_existential_2((v45 + 32));
  sub_1D77031C0();
  v67 = v251;
  sub_1D77031F0();
  v208 = (v67 + v64);
  if (qword_1EE0B0BF8 != -1)
  {
    swift_once();
  }

  v68 = qword_1EE0B0C00;
  v69 = swift_allocObject();
  v235 = xmmword_1D7709050;
  *(v69 + 16) = xmmword_1D7709050;
  sub_1D76681C4(0, &qword_1EC9BDBF8, MEMORY[0x1E69E6448], MEMORY[0x1E69D6F10], MEMORY[0x1E69D6E50]);
  v71 = v70;
  v202 = v68;

  sub_1D7703170();
  v73 = v253 + 104;
  v72 = *(v253 + 104);
  v74 = v211;
  v75 = v269;
  v76 = v234;
  v72(v211, v269, v234);
  v77 = v71;
  v78 = sub_1D7703180();
  *(v69 + 56) = v77;
  v79 = sub_1D76DBEB0();
  *(v69 + 64) = v79;
  *(v69 + 32) = v78;

  sub_1D7703170();
  v253 = v73;
  v231 = v72;
  v72(v74, v75, v76);
  v80 = sub_1D7703180();
  *(v69 + 96) = v77;
  *(v69 + 104) = v79;
  v230 = v79;
  *(v69 + 72) = v80;
  sub_1D7675B68(0, &qword_1EC9BDC08, sub_1D76C6180, &type metadata for DebugAdCollapseBehavior, MEMORY[0x1E69D6E50]);
  v82 = v81;
  v83 = *(v241 + 104);
  v241 += 104;
  v204 = v83;
  v83(v232, v75, v233);
  v84 = sub_1D76AC68C();

  v206 = "Present debugger on long press";
  v229 = 0xD000000000000011;
  v205 = v84;
  v85 = sub_1D77031A0();
  v207 = v82;
  *(v69 + 136) = v82;
  v203 = sub_1D76DBF34();
  *(v69 + 144) = v203;
  *(v69 + 112) = v85;
  sub_1D77031E0();
  v209 += v251;
  v208 = "Collapse Behavior";
  if (qword_1EE0AEB28 != -1)
  {
    swift_once();
  }

  v86 = qword_1EE0AEB30;
  v87 = swift_allocObject();
  *(v87 + 16) = v235;
  v202 = v86;

  sub_1D7703170();
  v88 = v269;
  v89 = v231;
  v231(v74, v269, v76);
  v90 = sub_1D7703180();
  v91 = v230;
  *(v87 + 56) = v77;
  *(v87 + 64) = v91;
  *(v87 + 32) = v90;

  sub_1D7703170();
  v89(v74, v88, v76);
  v92 = sub_1D7703180();
  *(v87 + 96) = v77;
  *(v87 + 104) = v91;
  *(v87 + 72) = v92;
  v204(v232, v88, v233);

  v93 = v207;
  v94 = sub_1D77031A0();
  v95 = v203;
  *(v87 + 136) = v93;
  *(v87 + 144) = v95;
  *(v87 + 112) = v94;
  sub_1D77031E0();
  v96 = v266;
  v241 = 3 * v266;
  if (qword_1EE0B0BE0 != -1)
  {
    swift_once();
  }

  v97 = swift_allocObject();
  *(v97 + 16) = v256;

  sub_1D7703170();
  v231(v74, v88, v234);
  v98 = sub_1D7703180();
  v99 = v230;
  *(v97 + 56) = v77;
  *(v97 + 64) = v99;
  *(v97 + 32) = v98;
  sub_1D76681C4(0, &qword_1EC9BDC18, MEMORY[0x1E69E6158], MEMORY[0x1E69D6EE0], MEMORY[0x1E69D6E50]);
  v100 = v88;
  v102 = v101;
  v103 = *(v249 + 13);
  v249 += 104;
  v234 = v103;
  v103(v236, v100, v244);

  v104 = sub_1D7703190();
  v229 = v102;
  *(v97 + 96) = v102;
  v233 = sub_1D76DBFC4();
  *(v97 + 104) = v233;
  *(v97 + 72) = v104;
  v105 = v251;
  sub_1D77031E0();
  v253 = v105 + 4 * v96;
  v242 = "Article Identifer";
  if (qword_1EE0AEB40 != -1)
  {
    swift_once();
  }

  v106 = swift_allocObject();
  *(v106 + 16) = v256;
  sub_1D7675B68(0, &qword_1EC9BDC28, sub_1D768055C, &type metadata for Settings.Ads.Debugging.DebugSponsorshipAd.SponsorshipFetchStrategy, MEMORY[0x1E69D6E50]);
  v108 = v107;
  v109 = swift_allocObject();
  *(v109 + 16) = v270;

  *(v109 + 32) = sub_1D7703130();
  v110 = v269;
  (*(v214 + 104))(v215, v269, v216);
  sub_1D76806B4();
  v111 = sub_1D77031A0();
  *(v106 + 56) = v108;
  *(v106 + 64) = sub_1D76DC048();
  *(v106 + 32) = v111;
  v112 = swift_allocObject();
  *(v112 + 16) = v270;

  *(v112 + 32) = sub_1D7703130();
  (v262)(v250, v263, v268);
  v254(v245, v110, v258);
  v113 = v237;
  v114 = sub_1D77031B0();
  v115 = v243;
  *(v106 + 96) = v113;
  *(v106 + 104) = v115;
  *(v106 + 72) = v114;
  sub_1D77031E0();
  v253 = swift_allocObject();
  *(v253 + 16) = v213;
  v232 = "Mock Sponsorship Ads";
  v116 = v257;
  v117 = swift_allocObject();
  *(v117 + 16) = v272;
  v231 = v117;
  v215 = (v117 + v116);
  v118 = v110;
  if (qword_1EE0B0B10 != -1)
  {
    swift_once();
  }

  v119 = qword_1EE0B0B18;
  v120 = swift_allocObject();
  v216 = xmmword_1D7709070;
  *(v120 + 16) = xmmword_1D7709070;
  sub_1D76681C4(0, &qword_1EC9BDC38, MEMORY[0x1E69E6530], MEMORY[0x1E69D6F28], MEMORY[0x1E69D6E50]);
  v122 = v121;
  v214 = v119;

  sub_1D7703170();
  v123 = *(v252 + 104);
  v252 += 104;
  v242 = v123;
  (v123)(v246, v118, v247);
  v124 = sub_1D7703180();
  v230 = v122;
  *(v120 + 56) = v122;
  v241 = sub_1D76DC0D8();
  *(v120 + 64) = v241;
  *(v120 + 32) = v124;
  sub_1D7675B68(0, &qword_1EC9BDC48, sub_1D76DB524, &type metadata for Settings.Ads.Debugging.AutoPlacement.BannerType, MEMORY[0x1E69D6E50]);
  v126 = v125;
  (*(v218 + 104))(v220, v118, v219);
  sub_1D76DBBF4();

  v127 = sub_1D77031A0();
  *(v120 + 96) = v126;
  *(v120 + 104) = sub_1D76DC15C();
  *(v120 + 72) = v127;
  v128 = v236;
  v129 = v244;
  v130 = v118;
  v131 = v234;
  v234(v236, v118, v244);

  v132 = v229;
  v133 = sub_1D7703190();
  v134 = v233;
  *(v120 + 136) = v132;
  *(v120 + 144) = v134;
  *(v120 + 112) = v133;
  v131(v128, v130, v129);

  v135 = sub_1D7703190();
  *(v120 + 176) = v132;
  *(v120 + 184) = v134;
  *(v120 + 152) = v135;
  sub_1D77031E0();
  v136 = v253;
  *(v253 + 56) = v259;
  *(v136 + 64) = MEMORY[0x1E69D6E60];
  __swift_allocate_boxed_opaque_existential_2((v136 + 32));
  sub_1D77031C0();
  v232 = "Distance from media";
  v137 = swift_allocObject();
  *(v137 + 16) = v256;
  v220 = v137;
  v231 = (v137 + v257);
  if (qword_1EE0B0A88 != -1)
  {
    swift_once();
  }

  v138 = qword_1EE0B0A90;
  v139 = swift_allocObject();
  *(v139 + 16) = v216;
  v219 = v138;
  v140 = v269;
  v141 = v244;
  v142 = v234;
  v234(v128, v269, v244);

  v143 = sub_1D7703190();
  v144 = v233;
  *(v139 + 56) = v132;
  *(v139 + 64) = v144;
  *(v139 + 32) = v143;
  v142(v128, v140, v141);

  v145 = sub_1D7703190();
  *(v139 + 96) = v132;
  *(v139 + 104) = v144;
  *(v139 + 72) = v145;
  v142(v128, v140, v141);

  v146 = sub_1D7703190();
  *(v139 + 136) = v132;
  *(v139 + 144) = v144;
  *(v139 + 112) = v146;
  sub_1D7675B68(0, &qword_1EC9BDC58, sub_1D76DB620, &type metadata for Settings.Ads.Debugging.NativeOverride.DesiredPosition, MEMORY[0x1E69D6E50]);
  v148 = v147;
  (*(v221 + 104))(v222, v140, v223);
  sub_1D76DBBA0();

  v149 = sub_1D77031A0();
  *(v139 + 176) = v148;
  *(v139 + 184) = sub_1D76DC1EC();
  *(v139 + 152) = v149;
  sub_1D77031E0();
  if (qword_1EE0B0938 != -1)
  {
    swift_once();
  }

  v150 = swift_allocObject();
  *(v150 + 16) = v272;
  sub_1D7675B68(0, &qword_1EC9BDC68, sub_1D76DB6C8, &type metadata for Settings.Ads.Debugging.EOANativeAdInsertionLocationOverride.EOANativeAdLocation, MEMORY[0x1E69D6E50]);
  v152 = v151;
  (*(v224 + 104))(v226, v140, v225);
  sub_1D76DBB4C();

  v153 = sub_1D77031A0();
  *(v150 + 56) = v152;
  *(v150 + 64) = sub_1D76DC27C();
  *(v150 + 32) = v153;
  sub_1D77031E0();
  v154 = v253;
  *(v253 + 96) = v259;
  *(v154 + 104) = MEMORY[0x1E69D6E60];
  __swift_allocate_boxed_opaque_existential_2((v154 + 72));
  sub_1D77031C0();
  v249 = "Override EOA Native Ad Location";
  v155 = v257;
  v156 = swift_allocObject();
  *(v156 + 16) = v272;
  v244 = v156;
  v236 = (v156 + v155);
  if (qword_1EE0B0A10 != -1)
  {
    swift_once();
  }

  v234 = qword_1EE0B0A18;
  v157 = swift_allocObject();
  *(v157 + 16) = v235;
  v158 = swift_allocObject();
  *(v158 + 16) = v270;

  *(v158 + 32) = sub_1D7703130();
  v159 = v250;
  (v262)(v250, v263, v268);
  v160 = v245;
  v161 = v269;
  v254(v245, v269, v258);
  v162 = v161;
  v163 = v237;
  v164 = sub_1D77031B0();
  v165 = v243;
  *(v157 + 56) = v163;
  *(v157 + 64) = v165;
  *(v157 + 32) = v164;
  *&v235 = "Force Tag Eligibility";
  v166 = swift_allocObject();
  *(v166 + 16) = v270;

  *(v166 + 32) = sub_1D7703130();
  (v262)(v159, v263, v268);
  v254(v160, v162, v258);
  v167 = sub_1D77031B0();
  v168 = v243;
  *(v157 + 96) = v163;
  *(v157 + 104) = v168;
  *(v157 + 72) = v167;
  *&v235 = "Force Group Eligibility";
  v169 = swift_allocObject();
  *(v169 + 16) = v270;

  *(v169 + 32) = sub_1D7703130();
  (v262)(v159, v263, v268);
  v254(v160, v162, v258);
  v170 = sub_1D77031B0();
  *(v157 + 136) = v163;
  *(v157 + 144) = v168;
  *(v157 + 112) = v170;
  sub_1D77031E0();
  v171 = v253;
  *(v253 + 136) = v259;
  *(v171 + 144) = MEMORY[0x1E69D6E60];
  __swift_allocate_boxed_opaque_existential_2((v171 + 112));
  sub_1D77031C0();
  *(swift_allocObject() + 16) = v272;
  v172 = swift_allocObject();
  *(v172 + 16) = v256;
  if (qword_1EE0B0A78 != -1)
  {
    swift_once();
  }

  (v262)(v159, v263, v268);
  v254(v160, v162, v258);

  v173 = sub_1D77031B0();
  *(v172 + 56) = v163;
  *(v172 + 64) = v168;
  *(v172 + 32) = v173;
  sub_1D76DC30C(0);
  v175 = v174;
  if (qword_1EE0B09B0 != -1)
  {
    swift_once();
  }

  v176 = *(v248 + 104);
  v248 += 104;
  v255 = v176;
  (v176)(v239, v162, v240);
  v177 = sub_1D76DC32C(&qword_1EC9BDC80, MEMORY[0x1E69D6D20], MEMORY[0x1E69D6D28]);

  v254 = v177;
  v178 = sub_1D77031A0();
  v258 = v175;
  *(v172 + 96) = v175;
  v249 = sub_1D76DC32C(&qword_1EC9BDC88, sub_1D76DC30C, MEMORY[0x1E69D6E58]);
  *(v172 + 104) = v249;
  *(v172 + 72) = v178;
  v179 = v257;
  sub_1D77031F0();
  v180 = v253;
  *(v253 + 176) = v259;
  v180[23] = MEMORY[0x1E69D6E60];
  __swift_allocate_boxed_opaque_existential_2(v180 + 19);
  sub_1D77031C0();
  v181 = swift_allocObject();
  *(v181 + 16) = v272;
  v245 = (v181 + v179);
  v244 = "Pre-Request Policy Enforcement";
  v243 = "Feed Prefetch Distance";
  if (qword_1EE0B09C0 != -1)
  {
    swift_once();
  }

  v182 = swift_allocObject();
  *(v182 + 16) = v272;
  v183 = swift_allocObject();
  *(v183 + 16) = v270;

  *(v183 + 32) = sub_1D7703130();
  v184 = v250;
  (v262)(v250, v263, v268);
  (v242)(v246, v269, v247);
  v185 = v230;
  v186 = sub_1D77031B0();
  v187 = v241;
  *(v182 + 56) = v185;
  *(v182 + 64) = v187;
  *(v182 + 32) = v186;
  sub_1D77031E0();
  v180[27] = v259;
  v180[28] = MEMORY[0x1E69D6E60];
  __swift_allocate_boxed_opaque_existential_2(v180 + 24);
  sub_1D77031C0();
  v188 = swift_allocObject();
  *(v188 + 16) = v256;
  v189 = v188 + v179;
  v260 = "PromotedContent Parameters";
  v261 = v188;
  if (qword_1EE0B0D18 != -1)
  {
    swift_once();
  }

  v190 = swift_allocObject();
  *(v190 + 16) = v272;
  v191 = swift_allocObject();
  *(v191 + 16) = v270;

  *(v191 + 32) = sub_1D7703130();
  (v262)(v184, v263, v268);
  (v242)(v246, v269, v247);
  v192 = sub_1D77031B0();
  v193 = v241;
  *(v190 + 56) = v185;
  *(v190 + 64) = v193;
  *(v190 + 32) = v192;
  sub_1D77031E0();
  v194 = swift_allocObject();
  *(v194 + 16) = v272;
  v271 = v189;
  if (qword_1EE0B0D00 != -1)
  {
    swift_once();
  }

  *&v272 = 5 * v266;
  v195 = swift_allocObject();
  *(v195 + 16) = v270;

  *(v195 + 32) = sub_1D7703130();
  (v255)(v239, v269, v240);
  v196 = v258;
  v197 = sub_1D77031A0();
  v198 = v249;
  *(v194 + 56) = v196;
  *(v194 + 64) = v198;
  *(v194 + 32) = v197;
  sub_1D77031F0();
  v199 = v253;
  *(v253 + 256) = v259;
  *(v199 + 264) = MEMORY[0x1E69D6E60];
  __swift_allocate_boxed_opaque_existential_2((v199 + 232));
  sub_1D77031C0();
  sub_1D77031F0();
  return sub_1D7703030();
}

uint64_t static SettingsBundle.ads.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC9BCAB0 != -1)
  {
    swift_once();
  }

  v2 = sub_1D7703040();
  v3 = __swift_project_value_buffer(v2, qword_1EC9BDB40);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1D76D64FC()
{
  v0 = sub_1D7703220();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1D7703210();
  MEMORY[0x1EEE9AC00](v4);
  (*(v6 + 104))(&v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6E90]);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6EA0], v0);
  v8[15] = 1;
  sub_1D76681C4(0, &qword_1EE0B08A8, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0], MEMORY[0x1E69D6EB0]);
  swift_allocObject();
  result = sub_1D7703270();
  qword_1EE0B0A80 = result;
  return result;
}

uint64_t sub_1D76D6704()
{
  v0 = sub_1D7703210();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D7703090();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D76DBC48(0, &qword_1EE0B08B8, MEMORY[0x1E69D6EB0]);
  (*(v5 + 104))(v7, *MEMORY[0x1E69D6D00], v4);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E90], v0);
  result = sub_1D7703250();
  qword_1EE0B09B8 = result;
  return result;
}

uint64_t sub_1D76D68F0()
{
  v0 = sub_1D7703220();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1D7703210();
  MEMORY[0x1EEE9AC00](v4);
  (*(v6 + 104))(&v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6E90]);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6EA0], v0);
  v8[15] = 1;
  sub_1D76681C4(0, &qword_1EE0B08A8, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0], MEMORY[0x1E69D6EB0]);
  swift_allocObject();
  result = sub_1D7703270();
  qword_1EE0B0C60 = result;
  return result;
}

uint64_t sub_1D76D6AF8()
{
  v0 = sub_1D7703210();
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v2, *MEMORY[0x1E69D6E90]);
  type metadata accessor for Settings.Ads.Debugging.AutoPlacement(0);
  swift_allocObject();
  result = Settings.Ads.Debugging.AutoPlacement.init(key:defaultValue:access:)(0xD00000000000002ELL, 0x80000001D7718850, 0, v2);
  qword_1EE0B0B18 = result;
  return result;
}

uint64_t sub_1D76D6C38()
{
  v0 = sub_1D7703210();
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v2, *MEMORY[0x1E69D6E90]);
  type metadata accessor for Settings.Ads.Debugging.DebugBanner(0);
  swift_allocObject();
  result = Settings.Ads.Debugging.DebugBanner.init(key:defaultValue:access:)(0xD00000000000002CLL, 0x80000001D7718820, 0, v2);
  qword_1EE0B0C00 = result;
  return result;
}

uint64_t sub_1D76D6D78()
{
  v0 = sub_1D7703210();
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v2, *MEMORY[0x1E69D6E90]);
  type metadata accessor for Settings.Ads.Debugging.DebugNativeAd(0);
  swift_allocObject();
  result = Settings.Ads.Debugging.DebugNativeAd.init(key:defaultValue:access:)(0xD00000000000002FLL, 0x80000001D77187F0, 0, v2);
  qword_1EE0B0BE8 = result;
  return result;
}

uint64_t sub_1D76D6EB8()
{
  v0 = sub_1D7703210();
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v2, *MEMORY[0x1E69D6E90]);
  type metadata accessor for Settings.Ads.Debugging.DebugInterstitialAd(0);
  swift_allocObject();
  result = Settings.Ads.Debugging.DebugInterstitialAd.init(key:defaultValue:access:)(0xD000000000000035, 0x80000001D7718D70, 0, v2);
  qword_1EE0AEB30 = result;
  return result;
}

uint64_t sub_1D76D7034()
{
  v0 = sub_1D7703210();
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v2, *MEMORY[0x1E69D6E90]);
  type metadata accessor for Settings.Ads.Debugging.NativeOverride(0);
  swift_allocObject();
  result = Settings.Ads.Debugging.NativeOverride.init(key:defaultValue:access:)(0xD00000000000002FLL, 0x80000001D77187C0, 0, v2);
  qword_1EE0B0A90 = result;
  return result;
}

uint64_t sub_1D76D718C()
{
  v0 = sub_1D7703210();
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v2, *MEMORY[0x1E69D6E90]);
  type metadata accessor for Settings.Ads.Debugging.EOANativeAdInsertionLocationOverride(0);
  swift_allocObject();
  result = Settings.Ads.Debugging.EOANativeAdInsertionLocationOverride.init(key:defaultValue:access:)(0xD00000000000003CLL, 0x80000001D7718740, 0, v2);
  qword_1EE0B0940 = result;
  return result;
}

uint64_t sub_1D76D72E4()
{
  v0 = sub_1D7703210();
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v2, *MEMORY[0x1E69D6E90]);
  type metadata accessor for Settings.Ads.PromotedContentParameters.ContextPrefetchLimit(0);
  swift_allocObject();
  result = Settings.Ads.PromotedContentParameters.ContextPrefetchLimit.init(key:defaultValue:access:)(0xD000000000000039, 0x80000001D77186C0, 0, v2);
  qword_1EE0B0D20 = result;
  return result;
}

uint64_t sub_1D76D7490()
{
  v0 = sub_1D7703090();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D7703210();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D76DBC48(0, &qword_1EE0B08B8, MEMORY[0x1E69D6EB0]);
  (*(v5 + 104))(v7, *MEMORY[0x1E69D6E90], v4);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6D00], v0);
  result = sub_1D7703250();
  qword_1EE0B0D08 = result;
  return result;
}

void Settings.Ads.Debugging.VisualDebugging.Mode.init(rawValue:)(char *a3@<X8>)
{
  v4 = sub_1D77048E0();

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v4)
  {
    v5 = 0;
  }

  *a3 = v5;
}

uint64_t Settings.Ads.Debugging.VisualDebugging.Mode.rawValue.getter()
{
  if (*v0)
  {
    return 0x746361706D6F63;
  }

  else
  {
    return 0x72616C75676572;
  }
}

uint64_t sub_1D76D7714(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x746361706D6F63;
  }

  else
  {
    v2 = 0x72616C75676572;
  }

  if (*a2)
  {
    v3 = 0x746361706D6F63;
  }

  else
  {
    v3 = 0x72616C75676572;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1D7704A30();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_1D76D779C()
{
  sub_1D7704AD0();
  sub_1D77042D0();

  return sub_1D7704AF0();
}

double sub_1D76D7814(uint64_t a1)
{
  sub_1D77042D0();

  return result;
}

uint64_t sub_1D76D7870(uint64_t a1)
{
  sub_1D7704AD0();
  sub_1D77042D0();

  return sub_1D7704AF0();
}

void sub_1D76D78E4(char *a2@<X8>)
{
  v3 = sub_1D77048E0();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

uint64_t sub_1D76D7944(uint64_t a1)
{
  v2 = sub_1D76783B0();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45780](a1, v2, v3);
}

uint64_t sub_1D76D7998(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D76783B0();
  v5 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45778](a1, a2, v4, v5);
}

uint64_t Settings.Ads.Debugging.VisualDebugging.deinit()
{
  v0 = sub_1D77030D0();

  return v0;
}

void Settings.Ads.Debugging.AutoPlacement.BannerType.init(rawValue:)(char *a3@<X8>)
{
  v4 = sub_1D77048E0();

  v5 = 4;
  if (v4 < 4)
  {
    v5 = v4;
  }

  *a3 = v5;
}

uint64_t Settings.Ads.Debugging.AutoPlacement.BannerType.rawValue.getter()
{
  v1 = 7958113;
  v2 = 0x685F656C62756F64;
  if (*v0 != 2)
  {
    v2 = 0x656772616CLL;
  }

  if (*v0)
  {
    v1 = 0x647261646E617473;
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

uint64_t sub_1D76D7B3C()
{
  sub_1D7704AD0();
  sub_1D77042D0();

  return sub_1D7704AF0();
}

double sub_1D76D7C00(uint64_t a1)
{
  sub_1D77042D0();

  return result;
}

uint64_t sub_1D76D7CB0(uint64_t a1)
{
  sub_1D7704AD0();
  sub_1D77042D0();

  return sub_1D7704AF0();
}

void sub_1D76D7D7C(uint64_t *a1@<X8>)
{
  v2 = 0xE300000000000000;
  v3 = 7958113;
  v4 = 0xED00007468676965;
  v5 = 0x685F656C62756F64;
  if (*v1 != 2)
  {
    v5 = 0x656772616CLL;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 0x647261646E617473;
    v2 = 0xE800000000000000;
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

uint64_t sub_1D76D7DFC(uint64_t a1)
{
  v2 = sub_1D76DBBF4();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45780](a1, v2, v3);
}

uint64_t sub_1D76D7E50(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D76DBBF4();
  v5 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45778](a1, a2, v4, v5);
}

uint64_t sub_1D76D7EAC(uint64_t a1)
{
  v2 = sub_1D76DBBF4();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45770](a1, v2, v3);
}

uint64_t Settings.Ads.Debugging.AutoPlacement.init(key:defaultValue:access:)(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v46 = a4;
  v47 = a1;
  v49 = a3;
  v48 = a2;
  v52 = sub_1D7703220();
  v5 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v43 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D7703210();
  v45 = *(v7 - 8);
  v8 = v45;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = qword_1EE0B0BA0;
  v44 = MEMORY[0x1E69D6EB0];
  sub_1D76681C4(0, &qword_1EE0B0898, MEMORY[0x1E69E6530], MEMORY[0x1E69D6F28], MEMORY[0x1E69D6EB0]);
  v53 = 10;
  v55 = 10;
  v56 = 0;
  v13 = *(v8 + 104);
  v40 = *MEMORY[0x1E69D6E90];
  v12 = v40;
  v39 = v7;
  v13(v10, v40, v7);
  v41 = v13;
  v50 = v8 + 104;
  *(v4 + v11) = sub_1D7703260();
  v42 = qword_1EE0B0BB8;
  sub_1D7675B68(0, &qword_1EE0B08D0, sub_1D76DB524, &type metadata for Settings.Ads.Debugging.AutoPlacement.BannerType, MEMORY[0x1E69D6EB0]);
  v37 = "to_placement.frequency";
  v38 = v14;
  LOBYTE(v53) = 0;
  v13(v10, v12, v7);
  sub_1D7676AC4(0, &qword_1EE0AEC98, &qword_1EE0B08F8, &type metadata for Settings.Ads.Debugging.AutoPlacement.BannerType);
  sub_1D7676DD4(0, &qword_1EE0B08F8, &type metadata for Settings.Ads.Debugging.AutoPlacement.BannerType, MEMORY[0x1E69D6EA8]);
  *(swift_allocObject() + 16) = xmmword_1D7709070;
  LOBYTE(v56) = 0;
  sub_1D7703230();
  LOBYTE(v56) = 1;
  sub_1D7703230();
  LOBYTE(v56) = 2;
  sub_1D7703230();
  LOBYTE(v56) = 3;
  sub_1D7703230();
  v16 = *(v5 + 104);
  v17 = v43;
  v35 = *MEMORY[0x1E69D6EA0];
  v15 = v35;
  v18 = v52;
  v16(v43, v35, v52);
  v34 = v16;
  v36 = v5 + 104;
  sub_1D76DB578();
  v33 = v10;
  v19 = sub_1D7703240();
  v20 = v51;
  *(v51 + v42) = v19;
  v42 = qword_1EE0B0BB0;
  v38 = "to_placement.banner_type";
  v21 = v10;
  v22 = v40;
  v23 = v39;
  v24 = v41;
  v41(v21, v40, v39);
  v16(v17, v15, v18);
  v53 = 0;
  v54 = 0xE000000000000000;
  sub_1D76681C4(0, &qword_1EE0B08B0, MEMORY[0x1E69E6158], MEMORY[0x1E69D6EE0], v44);
  swift_allocObject();
  v25 = v33;
  *(v20 + v42) = sub_1D7703270();
  v26 = qword_1EE0B0BA8;
  v27 = v23;
  v24(v25, v22, v23);
  v34(v17, v35, v52);
  v53 = 0;
  v54 = 0xE000000000000000;
  swift_allocObject();
  *(v51 + v26) = sub_1D7703270();
  v29 = v45;
  v28 = v46;
  (*(v45 + 16))(v25, v46, v27);
  v30 = sub_1D77030A0();
  (*(v29 + 8))(v28, v27);
  return v30;
}

uint64_t Settings.Ads.Debugging.DebugBanner.init(key:defaultValue:access:)(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v28 = a4;
  v29 = a1;
  v31 = a3;
  v30 = a2;
  v5 = sub_1D7703220();
  v26 = *(v5 - 8);
  v27 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v25 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D7703210();
  v24 = *(v7 - 8);
  v8 = v24;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = qword_1EE0B0C48;
  sub_1D76681C4(0, &qword_1EE0B08A0, MEMORY[0x1E69E6448], MEMORY[0x1E69D6F10], MEMORY[0x1E69D6EB0]);
  v33 = 0;
  v34 = 1056964608;
  v32 = 1092616192;
  v12 = *MEMORY[0x1E69D6E90];
  v13 = *(v8 + 104);
  v13(v10, v12, v7);
  v14 = sub_1D7703260();
  v23 = v4;
  *(v4 + v11) = v14;
  v15 = qword_1EE0B0C50;
  v33 = 0;
  v34 = 1065353216;
  v32 = 1065353216;
  v13(v10, v12, v7);
  *(v4 + v15) = sub_1D7703260();
  v22 = qword_1EE0B0C40;
  sub_1D7675B68(0, &qword_1EE0B08E0, sub_1D76C6180, &type metadata for DebugAdCollapseBehavior, MEMORY[0x1E69D6EB0]);
  v21 = v16;
  LOBYTE(v34) = 0;
  v13(v10, v12, v7);
  sub_1D7676AC4(0, &qword_1EE0AECA8, &qword_1EE0B0908, &type metadata for DebugAdCollapseBehavior);
  sub_1D7676DD4(0, &qword_1EE0B0908, &type metadata for DebugAdCollapseBehavior, MEMORY[0x1E69D6EA8]);
  *(swift_allocObject() + 16) = xmmword_1D7709050;
  LOBYTE(v33) = 0;
  sub_1D7703230();
  LOBYTE(v33) = 1;
  sub_1D7703230();
  LOBYTE(v33) = 2;
  sub_1D7703230();
  (*(v26 + 104))(v25, *MEMORY[0x1E69D6EA0], v27);
  sub_1D76DB5CC();
  *(v23 + v22) = sub_1D7703240();
  v17 = v24;
  v18 = v28;
  (*(v24 + 16))(v10, v28, v7);
  v19 = sub_1D77030A0();
  (*(v17 + 8))(v18, v7);
  return v19;
}

uint64_t Settings.Ads.Debugging.DebugNativeAd.init(key:defaultValue:access:)(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v23 = a4;
  v24 = a1;
  v26 = a3;
  v25 = a2;
  v22 = sub_1D7703220();
  v4 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v20 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D7703210();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = qword_1EE0B0B60;
  v10 = MEMORY[0x1E69D6EB0];
  sub_1D76681C4(0, &qword_1EE0B08A0, MEMORY[0x1E69E6448], MEMORY[0x1E69D6F10], MEMORY[0x1E69D6EB0]);
  LODWORD(v27) = 1056964608;
  v29 = 1092616192;
  v30 = 0;
  v11 = *MEMORY[0x1E69D6E90];
  v12 = *(v7 + 104);
  v12(v9, v11, v6);
  v13 = sub_1D7703260();
  v14 = v21;
  *(v21 + v19) = v13;
  v18 = "bug_native_ad.loading_delay";
  v19 = qword_1EE0B0B58;
  v12(v9, v11, v6);
  (*(v4 + 104))(v20, *MEMORY[0x1E69D6EA0], v22);
  v27 = 0xD000000000000017;
  v28 = 0x80000001D7717DE0;
  sub_1D76681C4(0, &qword_1EE0B08B0, MEMORY[0x1E69E6158], MEMORY[0x1E69D6EE0], v10);
  swift_allocObject();
  *(v14 + v19) = sub_1D7703270();
  v15 = v23;
  (*(v7 + 16))(v9, v23, v6);
  v16 = sub_1D77030A0();
  (*(v7 + 8))(v15, v6);
  return v16;
}

uint64_t Settings.Ads.Debugging.DebugInterstitialAd.init(key:defaultValue:access:)(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v28 = a4;
  v29 = a1;
  v31 = a3;
  v30 = a2;
  v5 = sub_1D7703220();
  v26 = *(v5 - 8);
  v27 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v25 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D7703210();
  v24 = *(v7 - 8);
  v8 = v24;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = qword_1EE0AEAB0;
  sub_1D76681C4(0, &qword_1EE0B08A0, MEMORY[0x1E69E6448], MEMORY[0x1E69D6F10], MEMORY[0x1E69D6EB0]);
  v33 = 0;
  v34 = 1056964608;
  v32 = 1092616192;
  v12 = *MEMORY[0x1E69D6E90];
  v13 = *(v8 + 104);
  v13(v10, v12, v7);
  v14 = sub_1D7703260();
  v23 = v4;
  *(v4 + v11) = v14;
  v15 = qword_1EE0AEAB8;
  v33 = 0;
  v34 = 1065353216;
  v32 = 1065353216;
  v13(v10, v12, v7);
  *(v4 + v15) = sub_1D7703260();
  v22 = qword_1EE0AEAA8;
  sub_1D7675B68(0, &qword_1EE0B08E0, sub_1D76C6180, &type metadata for DebugAdCollapseBehavior, MEMORY[0x1E69D6EB0]);
  v21 = v16;
  LOBYTE(v34) = 0;
  v13(v10, v12, v7);
  sub_1D7676AC4(0, &qword_1EE0AECA8, &qword_1EE0B0908, &type metadata for DebugAdCollapseBehavior);
  sub_1D7676DD4(0, &qword_1EE0B0908, &type metadata for DebugAdCollapseBehavior, MEMORY[0x1E69D6EA8]);
  *(swift_allocObject() + 16) = xmmword_1D7709050;
  LOBYTE(v33) = 0;
  sub_1D7703230();
  LOBYTE(v33) = 1;
  sub_1D7703230();
  LOBYTE(v33) = 2;
  sub_1D7703230();
  (*(v26 + 104))(v25, *MEMORY[0x1E69D6EA0], v27);
  sub_1D76DB5CC();
  *(v23 + v22) = sub_1D7703240();
  v17 = v24;
  v18 = v28;
  (*(v24 + 16))(v10, v28, v7);
  v19 = sub_1D77030A0();
  (*(v17 + 8))(v18, v7);
  return v19;
}

void Settings.Ads.Debugging.DebugSponsorshipAd.SponsorshipFetchStrategy.init(rawValue:)(char *a3@<X8>)
{
  v4 = sub_1D77048E0();

  v5 = 3;
  if (v4 < 3)
  {
    v5 = v4;
  }

  *a3 = v5;
}

uint64_t Settings.Ads.Debugging.DebugSponsorshipAd.SponsorshipFetchStrategy.rawValue.getter()
{
  v1 = 0x6E55737961776C61;
  if (*v0 != 1)
  {
    v1 = 0x6D6F646E6172;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7546737961776C61;
  }
}

uint64_t sub_1D76D956C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6E55737961776C61;
  v4 = 0xEE0064656C6C6966;
  if (v2 != 1)
  {
    v3 = 0x6D6F646E6172;
    v4 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x7546737961776C61;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEF64656C6C69666CLL;
  }

  v7 = 0x6E55737961776C61;
  v8 = 0xEE0064656C6C6966;
  if (*a2 != 1)
  {
    v7 = 0x6D6F646E6172;
    v8 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x7546737961776C61;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEF64656C6C69666CLL;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D7704A30();
  }

  return v11 & 1;
}

uint64_t sub_1D76D9688()
{
  sub_1D7704AD0();
  sub_1D77042D0();

  return sub_1D7704AF0();
}

double sub_1D76D9740(uint64_t a1)
{
  sub_1D77042D0();

  return result;
}

uint64_t sub_1D76D97E4(uint64_t a1)
{
  sub_1D7704AD0();
  sub_1D77042D0();

  return sub_1D7704AF0();
}

uint64_t sub_1D76D98A4(uint64_t a1)
{
  v2 = sub_1D76806B4();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45780](a1, v2, v3);
}

uint64_t sub_1D76D98F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D76806B4();
  v5 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45778](a1, a2, v4, v5);
}

double sub_1D76D9988(void *a1, void *a2)
{

  return result;
}

uint64_t sub_1D76D99E0(void *a1, void *a2)
{
  v2 = sub_1D77030D0();

  return v2;
}

uint64_t sub_1D76D9A44(void *a1, void *a2)
{
  sub_1D77030D0();

  return swift_deallocClassInstance();
}

void Settings.Ads.Debugging.NativeOverride.DesiredPosition.init(rawValue:)(char *a3@<X8>)
{
  v4 = sub_1D77048E0();

  v5 = 3;
  if (v4 < 3)
  {
    v5 = v4;
  }

  *a3 = v5;
}

uint64_t Settings.Ads.Debugging.NativeOverride.DesiredPosition.rawValue.getter()
{
  v1 = 0x656873696C627570;
  if (*v0 != 1)
  {
    v1 = 0x646574616C6572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701736302;
  }
}

uint64_t sub_1D76D9B74(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x656873696C627570;
  v4 = 0xE900000000000072;
  if (v2 != 1)
  {
    v3 = 0x646574616C6572;
    v4 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 1701736302;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0x656873696C627570;
  v8 = 0xE900000000000072;
  if (*a2 != 1)
  {
    v7 = 0x646574616C6572;
    v8 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 1701736302;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D7704A30();
  }

  return v11 & 1;
}

uint64_t sub_1D76D9C78()
{
  sub_1D7704AD0();
  sub_1D77042D0();

  return sub_1D7704AF0();
}

double sub_1D76D9D18(uint64_t a1)
{
  sub_1D77042D0();

  return result;
}

uint64_t sub_1D76D9DA4(uint64_t a1)
{
  sub_1D7704AD0();
  sub_1D77042D0();

  return sub_1D7704AF0();
}

void sub_1D76D9E4C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE900000000000072;
  v5 = 0x656873696C627570;
  if (v2 != 1)
  {
    v5 = 0x646574616C6572;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1701736302;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1D76D9EA8(uint64_t a1)
{
  v2 = sub_1D76DBBA0();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45780](a1, v2, v3);
}

uint64_t sub_1D76D9EFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D76DBBA0();
  v5 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45778](a1, a2, v4, v5);
}

uint64_t sub_1D76D9F58(uint64_t a1)
{
  v2 = sub_1D76DBBA0();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45770](a1, v2, v3);
}

uint64_t Settings.Ads.Debugging.NativeOverride.init(key:defaultValue:access:)(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v40 = a4;
  v41 = a1;
  v43 = a3;
  v42 = a2;
  v4 = sub_1D7703220();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D7703210();
  v39 = *(v8 - 8);
  v9 = v39;
  MEMORY[0x1EEE9AC00](v8);
  v37 = qword_1EE0B0AD0;
  v44 = *MEMORY[0x1E69D6E90];
  v11 = *(v9 + 104);
  v45 = v9 + 104;
  v12 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = v8;
  v11();
  v33 = v11;
  v13 = *MEMORY[0x1E69D6EA0];
  v48 = *(v5 + 104);
  v49 = v5 + 104;
  v14 = v13;
  v47 = v4;
  v48(v7);
  v51 = 0;
  v52 = 0xE000000000000000;
  sub_1D76681C4(0, &qword_1EE0B08B0, MEMORY[0x1E69E6158], MEMORY[0x1E69D6EE0], MEMORY[0x1E69D6EB0]);
  swift_allocObject();
  v32 = v12;
  v15 = sub_1D7703270();
  v16 = v46;
  *(v46 + v37) = v15;
  v37 = qword_1EE0B0AD8;
  v35 = "ticle_identifier";
  v17 = v44;
  (v11)(v12, v44, v8);
  v38 = v14;
  v18 = v48;
  (v48)(v7, v14, v4);
  v51 = 0;
  v52 = 0xE000000000000000;
  swift_allocObject();
  v19 = v7;
  v20 = v32;
  *(v16 + v37) = sub_1D7703270();
  v37 = qword_1EE0B0B08;
  v35 = "tive_override.title";
  v21 = v17;
  v22 = v33;
  v23 = v34;
  (v33)(v20, v21, v34);
  v36 = v19;
  v18(v19, v14, v47);
  v51 = 0;
  v52 = 0xE000000000000000;
  swift_allocObject();
  v24 = sub_1D7703270();
  v25 = v46;
  *(v46 + v37) = v24;
  v37 = qword_1EE0B0AE0;
  sub_1D7675B68(0, &qword_1EE0B08C8, sub_1D76DB620, &type metadata for Settings.Ads.Debugging.NativeOverride.DesiredPosition, MEMORY[0x1E69D6EB0]);
  v35 = v26;
  LOBYTE(v51) = 0;
  (v22)(v20, v44, v23);
  sub_1D7676AC4(0, &qword_1EE0AEC90, &qword_1EE0B08F0, &type metadata for Settings.Ads.Debugging.NativeOverride.DesiredPosition);
  sub_1D7676DD4(0, &qword_1EE0B08F0, &type metadata for Settings.Ads.Debugging.NativeOverride.DesiredPosition, MEMORY[0x1E69D6EA8]);
  *(swift_allocObject() + 16) = xmmword_1D7709050;
  v50 = 0;
  sub_1D7703230();
  v50 = 1;
  sub_1D7703230();
  v50 = 2;
  sub_1D7703230();
  (v48)(v36, v38, v47);
  sub_1D76DB674();
  *(v25 + v37) = sub_1D7703240();
  v28 = v39;
  v27 = v40;
  (*(v39 + 16))(v20, v40, v23);
  v29 = sub_1D77030A0();
  (*(v28 + 8))(v27, v23);
  return v29;
}

double sub_1D76DA644(void *a1, void *a2, void *a3, void *a4)
{

  return result;
}

uint64_t sub_1D76DA6D4(void *a1, void *a2, void *a3, void *a4)
{
  v4 = sub_1D77030D0();

  return v4;
}

uint64_t sub_1D76DA770(void *a1, void *a2, void *a3, void *a4)
{
  sub_1D77030D0();

  return swift_deallocClassInstance();
}

double sub_1D76DA860(void *a1, void *a2, void *a3)
{

  return result;
}

uint64_t sub_1D76DA8D8(void *a1, void *a2, void *a3)
{
  v3 = sub_1D77030D0();

  return v3;
}

uint64_t sub_1D76DA954(void *a1, void *a2, void *a3)
{
  sub_1D77030D0();

  return swift_deallocClassInstance();
}

void Settings.Ads.Debugging.EOANativeAdInsertionLocationOverride.EOANativeAdLocation.init(rawValue:)(char *a3@<X8>)
{
  v4 = sub_1D77048E0();

  v5 = 3;
  if (v4 < 3)
  {
    v5 = v4;
  }

  *a3 = v5;
}

uint64_t Settings.Ads.Debugging.EOANativeAdInsertionLocationOverride.EOANativeAdLocation.rawValue.getter()
{
  v1 = 0x676E696461656CLL;
  if (*v0 != 1)
  {
    v1 = 0x676E696C69617274;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701736302;
  }
}

uint64_t sub_1D76DAA90(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x676E696461656CLL;
  if (v2 != 1)
  {
    v4 = 0x676E696C69617274;
    v3 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1701736302;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE700000000000000;
  v8 = 0x676E696461656CLL;
  if (*a2 != 1)
  {
    v8 = 0x676E696C69617274;
    v7 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1701736302;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D7704A30();
  }

  return v11 & 1;
}

uint64_t sub_1D76DAB8C()
{
  sub_1D7704AD0();
  sub_1D77042D0();

  return sub_1D7704AF0();
}

double sub_1D76DAC28(uint64_t a1)
{
  sub_1D77042D0();

  return result;
}

uint64_t sub_1D76DACB0(uint64_t a1)
{
  sub_1D7704AD0();
  sub_1D77042D0();

  return sub_1D7704AF0();
}

void sub_1D76DAD54(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x676E696461656CLL;
  if (v2 != 1)
  {
    v5 = 0x676E696C69617274;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1701736302;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1D76DADAC(uint64_t a1)
{
  v2 = sub_1D76DBB4C();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45780](a1, v2, v3);
}

uint64_t sub_1D76DAE00(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D76DBB4C();
  v5 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45778](a1, a2, v4, v5);
}

uint64_t sub_1D76DAE5C(uint64_t a1)
{
  v2 = sub_1D76DBB4C();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45770](a1, v2, v3);
}

uint64_t Settings.Ads.Debugging.EOANativeAdInsertionLocationOverride.init(key:defaultValue:access:)(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v21 = a4;
  v24 = a3;
  v22 = a1;
  v23 = a2;
  v4 = sub_1D7703220();
  v18 = *(v4 - 8);
  v19 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D7703210();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = qword_1EE0B09A0;
  sub_1D7675B68(0, &qword_1EE0B08C0, sub_1D76DB6C8, &type metadata for Settings.Ads.Debugging.EOANativeAdInsertionLocationOverride.EOANativeAdLocation, MEMORY[0x1E69D6EB0]);
  v16[0] = "tive_override.advertiser_name";
  v16[1] = v11;
  v28 = 0;
  (*(v8 + 104))(v10, *MEMORY[0x1E69D6E90], v7);
  sub_1D7676AC4(0, &qword_1EE0AEC88, &qword_1EE0B08E8, &type metadata for Settings.Ads.Debugging.EOANativeAdInsertionLocationOverride.EOANativeAdLocation);
  sub_1D7676DD4(0, &qword_1EE0B08E8, &type metadata for Settings.Ads.Debugging.EOANativeAdInsertionLocationOverride.EOANativeAdLocation, MEMORY[0x1E69D6EA8]);
  *(swift_allocObject() + 16) = xmmword_1D7709050;
  v27 = 0;
  sub_1D7703230();
  v26 = 1;
  sub_1D7703230();
  v25 = 2;
  sub_1D7703230();
  (*(v18 + 104))(v6, *MEMORY[0x1E69D6EA0], v19);
  sub_1D76DB71C();
  v12 = sub_1D7703240();
  v13 = v21;
  *(v20 + v17) = v12;
  (*(v8 + 16))(v10, v13, v7);
  v14 = sub_1D77030A0();
  (*(v8 + 8))(v13, v7);
  return v14;
}

uint64_t Settings.Ads.Debugging.EOANativeAdInsertionLocationOverride.deinit()
{
  v0 = sub_1D77030D0();

  return v0;
}

uint64_t Settings.Ads.Debugging.FeedPrefetchDistance.deinit()
{
  v0 = sub_1D77030D0();

  return v0;
}

uint64_t Settings.Ads.PromotedContentParameters.ContextPrefetchLimit.init(key:defaultValue:access:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v13[1] = a3;
  v6 = sub_1D7703210();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = qword_1EE0B0D60;
  sub_1D76681C4(0, &qword_1EE0B0898, MEMORY[0x1E69E6530], MEMORY[0x1E69D6F28], MEMORY[0x1E69D6EB0]);
  v15 = 0;
  v16 = 3;
  v14 = 1000;
  (*(v7 + 104))(v9, *MEMORY[0x1E69D6E90], v6);
  *(v4 + v10) = sub_1D7703260();
  (*(v7 + 16))(v9, a4, v6);
  v11 = sub_1D77030A0();
  (*(v7 + 8))(a4, v6);
  return v11;
}

unint64_t sub_1D76DB524()
{
  result = qword_1EE0B0BC0;
  if (!qword_1EE0B0BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0B0BC0);
  }

  return result;
}

unint64_t sub_1D76DB578()
{
  result = qword_1EE0B0BC8;
  if (!qword_1EE0B0BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0B0BC8);
  }

  return result;
}

unint64_t sub_1D76DB5CC()
{
  result = qword_1EE0AF6F8;
  if (!qword_1EE0AF6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0AF6F8);
  }

  return result;
}

unint64_t sub_1D76DB620()
{
  result = qword_1EE0B0AE8;
  if (!qword_1EE0B0AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0B0AE8);
  }

  return result;
}

unint64_t sub_1D76DB674()
{
  result = qword_1EE0B0AF0;
  if (!qword_1EE0B0AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0B0AF0);
  }

  return result;
}

unint64_t sub_1D76DB6C8()
{
  result = qword_1EE0B0980;
  if (!qword_1EE0B0980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0B0980);
  }

  return result;
}

unint64_t sub_1D76DB71C()
{
  result = qword_1EE0B0988;
  if (!qword_1EE0B0988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0B0988);
  }

  return result;
}

uint64_t Settings.Ads.PromotedContentParameters.ContextPrefetchLimit.deinit()
{
  v0 = sub_1D77030D0();

  return v0;
}

uint64_t sub_1D76DB7C4(void *a1)
{
  sub_1D77030D0();

  return swift_deallocClassInstance();
}

unint64_t sub_1D76DB814()
{
  result = qword_1EE0B0BD8;
  if (!qword_1EE0B0BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0B0BD8);
  }

  return result;
}

unint64_t sub_1D76DB868()
{
  result = qword_1EE0B0B00;
  if (!qword_1EE0B0B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0B0B00);
  }

  return result;
}

unint64_t sub_1D76DB8BC()
{
  result = qword_1EE0B0998;
  if (!qword_1EE0B0998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0B0998);
  }

  return result;
}

unint64_t sub_1D76DBB4C()
{
  result = qword_1EE0B0990;
  if (!qword_1EE0B0990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0B0990);
  }

  return result;
}

unint64_t sub_1D76DBBA0()
{
  result = qword_1EE0B0AF8;
  if (!qword_1EE0B0AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0B0AF8);
  }

  return result;
}

unint64_t sub_1D76DBBF4()
{
  result = qword_1EE0B0BD0;
  if (!qword_1EE0B0BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0B0BD0);
  }

  return result;
}

void sub_1D76DBC48(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D7703090();
    v7 = sub_1D76DC32C(&unk_1EE0B0928, MEMORY[0x1E69D6D20], MEMORY[0x1E69D6D18]);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1D76DBCE4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D7704A20();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1D76DBD38()
{
  result = qword_1EC9BDBD0;
  if (!qword_1EC9BDBD0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC9BDBD0);
  }

  return result;
}

unint64_t sub_1D76DBD9C()
{
  result = qword_1EC9BDBE0;
  if (!qword_1EC9BDBE0)
  {
    sub_1D7675B68(255, &qword_1EC9BDBD8, sub_1D7675C0C, &type metadata for Settings.Ads.Debugging.VisualDebugging.Mode, MEMORY[0x1E69D6E50]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDBE0);
  }

  return result;
}

unint64_t sub_1D76DBE2C()
{
  result = qword_1EC9BDBF0;
  if (!qword_1EC9BDBF0)
  {
    sub_1D76681C4(255, &qword_1EC9BDBE8, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0], MEMORY[0x1E69D6E50]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDBF0);
  }

  return result;
}

unint64_t sub_1D76DBEB0()
{
  result = qword_1EC9BDC00;
  if (!qword_1EC9BDC00)
  {
    sub_1D76681C4(255, &qword_1EC9BDBF8, MEMORY[0x1E69E6448], MEMORY[0x1E69D6F10], MEMORY[0x1E69D6E50]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDC00);
  }

  return result;
}

unint64_t sub_1D76DBF34()
{
  result = qword_1EC9BDC10;
  if (!qword_1EC9BDC10)
  {
    sub_1D7675B68(255, &qword_1EC9BDC08, sub_1D76C6180, &type metadata for DebugAdCollapseBehavior, MEMORY[0x1E69D6E50]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDC10);
  }

  return result;
}

unint64_t sub_1D76DBFC4()
{
  result = qword_1EC9BDC20;
  if (!qword_1EC9BDC20)
  {
    sub_1D76681C4(255, &qword_1EC9BDC18, MEMORY[0x1E69E6158], MEMORY[0x1E69D6EE0], MEMORY[0x1E69D6E50]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDC20);
  }

  return result;
}

unint64_t sub_1D76DC048()
{
  result = qword_1EC9BDC30;
  if (!qword_1EC9BDC30)
  {
    sub_1D7675B68(255, &qword_1EC9BDC28, sub_1D768055C, &type metadata for Settings.Ads.Debugging.DebugSponsorshipAd.SponsorshipFetchStrategy, MEMORY[0x1E69D6E50]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDC30);
  }

  return result;
}

unint64_t sub_1D76DC0D8()
{
  result = qword_1EC9BDC40;
  if (!qword_1EC9BDC40)
  {
    sub_1D76681C4(255, &qword_1EC9BDC38, MEMORY[0x1E69E6530], MEMORY[0x1E69D6F28], MEMORY[0x1E69D6E50]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDC40);
  }

  return result;
}

unint64_t sub_1D76DC15C()
{
  result = qword_1EC9BDC50;
  if (!qword_1EC9BDC50)
  {
    sub_1D7675B68(255, &qword_1EC9BDC48, sub_1D76DB524, &type metadata for Settings.Ads.Debugging.AutoPlacement.BannerType, MEMORY[0x1E69D6E50]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDC50);
  }

  return result;
}

unint64_t sub_1D76DC1EC()
{
  result = qword_1EC9BDC60;
  if (!qword_1EC9BDC60)
  {
    sub_1D7675B68(255, &qword_1EC9BDC58, sub_1D76DB620, &type metadata for Settings.Ads.Debugging.NativeOverride.DesiredPosition, MEMORY[0x1E69D6E50]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDC60);
  }

  return result;
}

unint64_t sub_1D76DC27C()
{
  result = qword_1EC9BDC70;
  if (!qword_1EC9BDC70)
  {
    sub_1D7675B68(255, &qword_1EC9BDC68, sub_1D76DB6C8, &type metadata for Settings.Ads.Debugging.EOANativeAdInsertionLocationOverride.EOANativeAdLocation, MEMORY[0x1E69D6E50]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDC70);
  }

  return result;
}

uint64_t sub_1D76DC32C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double AdPolicyLayoutEnvironmentProvider.environment.getter()
{

  sub_1D7703650();

  return result;
}

void sub_1D76DC3D0(void *a2@<X8>)
{

  sub_1D7703650();

  *a2 = v3;
}

double sub_1D76DC420(uint64_t *a1, uint64_t a2)
{

  sub_1D7703660();

  return result;
}

double AdPolicyLayoutEnvironmentProvider.environment.setter(uint64_t *a1)
{

  sub_1D7703660();

  return result;
}

uint64_t (*AdPolicyLayoutEnvironmentProvider.environment.modify(uint64_t *a1))()
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
  *(v3 + 32) = *(v1 + 16);

  *(v4 + 40) = sub_1D7703640();
  return sub_1D76DC53C;
}

void sub_1D76DC53C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 40))(*a1, 0);

  free(v1);
}

uint64_t AdPolicyLayoutEnvironmentProvider.__allocating_init()()
{
  v0 = swift_allocObject();
  sub_1D766F4E8(0);
  swift_allocObject();
  *(v0 + 16) = sub_1D7703630();
  return v0;
}

uint64_t AdPolicyLayoutEnvironmentProvider.layoutEnvironment()()
{

  sub_1D7703650();

  if (v1)
  {
    sub_1D766F724(0, &qword_1EE0B0850, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1D77036E0();
  }

  else
  {
    sub_1D76DC6DC();
    swift_allocError();
    sub_1D766F724(0, &qword_1EE0B0850, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1D77036D0();
  }
}

unint64_t sub_1D76DC6DC()
{
  result = qword_1EC9BDC90;
  if (!qword_1EC9BDC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDC90);
  }

  return result;
}

uint64_t AdPolicyLayoutEnvironmentProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1D76DC800()
{
  result = qword_1EC9BDC98;
  if (!qword_1EC9BDC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDC98);
  }

  return result;
}

void ArticleInterstitialAdContext.init(provider:)(void *a1@<X0>, void *a2@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  AdContextDataProviding.data<A>(for:)(&type metadata for AppAdData, v5, &type metadata for AppAdData, v6);
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v7 = v36;
    v8 = a1[3];
    v9 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v8);
    AdContextDataProviding.data<A>(for:)(&type metadata for UserAdData, v8, &type metadata for UserAdData, v9);
    v10 = v36;
    v11 = a1[3];
    v12 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v11);
    AdContextDataProviding.data<A>(for:)(&type metadata for FeedAdData, v11, &type metadata for FeedAdData, v12);
    v103 = v81[7];
    v104 = v81[8];
    v105 = v81[9];
    v106 = v82;
    v101 = v81[5];
    v102 = v81[6];
    v13 = a1[3];
    v14 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v13);
    AdContextDataProviding.dataIfPresent<A>(for:)(&type metadata for ReferralAdData, v13, &type metadata for ReferralAdData, v14);
    v15 = a1[3];
    v16 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v15);
    AdContextDataProviding.dataIfPresent<A>(for:)(&type metadata for IssueAdData, v15, &type metadata for IssueAdData, v16);
    v34 = v36;
    v107 = *(&v36 + 1);
    v33 = v36;
    v17 = a1[3];
    v18 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v17);
    AdContextDataProviding.dataIfPresent<A>(for:)(&type metadata for SectionAdData, v17, &type metadata for SectionAdData, v18);
    v32 = v37;
    v19 = v36;
    v20 = a1[3];
    v21 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v20);
    AdContextDataProviding.data<A>(for:)(&type metadata for InterstitialAdData, v20, &type metadata for InterstitialAdData, v21);
    v31 = v36;
    v23 = a1[3];
    v22 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v23);
    v79 = xmmword_1D770C6E0;
    v80 = 0;
    (*(v22 + 8))(v81, &type metadata for ArticleAdData, &v79, &type metadata for ArticleAdData, v23, v22);
    v98 = v81[2];
    v99 = v81[3];
    v100 = v81[4];
    v97 = v81[1];
    v96 = v81[0];
    v25 = a1[3];
    v24 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v25);
    v76 = xmmword_1D770C6E0;
    v77 = 0;
    (*(v24 + 8))(v78, &type metadata for ChannelAdData, &v76, &type metadata for ChannelAdData, v25, v24);
    v92 = v78[0];
    v93 = v78[1];
    v94 = v78[2];
    v95 = v78[3];
    v27 = a1[3];
    v26 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v27);
    v73[1] = 0;
    v73[0] = 0;
    v74 = 0;
    (*(v26 + 8))(v75, &type metadata for ArticleAdData, v73, &type metadata for ArticleAdData, v27, v26);
    v89 = v75[2];
    v90 = v75[3];
    v91 = v75[4];
    v88 = v75[1];
    v87 = v75[0];
    v29 = a1[3];
    v28 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v29);
    v67[1] = 0;
    v67[0] = 0;
    v68 = 0;
    (*(v28 + 8))(&v69, &type metadata for ChannelAdData, v67, &type metadata for ChannelAdData, v29, v28);
    v83 = v69;
    v84 = v70;
    v85 = v71;
    v86 = v72;
    __src[3] = v103;
    __src[4] = v104;
    __src[5] = v105;
    __src[1] = v101;
    __src[2] = v102;
    __src[12] = v98;
    __src[13] = v99;
    __src[10] = v96;
    __src[11] = v97;
    __src[16] = v93;
    __src[17] = v94;
    __src[14] = v100;
    __src[15] = v92;
    __src[18] = v95;
    __src[19] = v87;
    __src[22] = v90;
    __src[23] = v91;
    LOBYTE(__src[0]) = v36;
    *(&__src[0] + 1) = v36;
    *&__src[6] = v106;
    BYTE8(__src[6]) = v36;
    v30 = v107;
    *&__src[7] = v36;
    *(&__src[7] + 1) = v107;
    LOWORD(__src[8]) = v37;
    *(&__src[8] + 8) = v36;
    *(&__src[9] + 1) = v36;
    __src[20] = v88;
    __src[21] = v89;
    __src[26] = v71;
    __src[27] = v72;
    __src[24] = v69;
    __src[25] = v70;
    memcpy(a2, __src, 0x1C0uLL);
    sub_1D76DD064(__src, &v36);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v39 = v103;
    v40 = v104;
    v41 = v105;
    v37 = v101;
    v38 = v102;
    v51 = v98;
    v52 = v99;
    v49 = v96;
    v50 = v97;
    v53 = v100;
    v54 = v92;
    v55 = v93;
    v56 = v94;
    v57 = v95;
    v58 = v87;
    v61 = v90;
    v62 = v91;
    LOBYTE(v36) = v7;
    *(&v36 + 1) = v10;
    v42 = v106;
    v43 = v34;
    v44 = v33;
    v45 = v30;
    v46 = v32;
    v47 = v19;
    v48 = v31;
    v59 = v88;
    v60 = v89;
    v65 = v85;
    v66 = v86;
    v63 = v83;
    v64 = v84;
    sub_1D76DD09C(&v36);
  }
}

unint64_t sub_1D76DD0CC(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v5 = 0x61746144707061;
    v6 = 0x6174614464656566;
    v7 = 0x6C61727265666572;
    if (a1 != 3)
    {
      v7 = 0x7461446575737369;
    }

    if (a1 != 2)
    {
      v6 = v7;
    }

    if (a1)
    {
      v5 = 0x6174614472657375;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0xD000000000000013;
    if (a1 != 8)
    {
      v1 = 0xD000000000000012;
    }

    v2 = 0x446E6F6974636573;
    v3 = 0xD000000000000013;
    if (a1 == 6)
    {
      v3 = 0xD000000000000010;
    }

    if (a1 != 5)
    {
      v2 = v3;
    }

    if (a1 <= 7u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1D76DD254@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D76DF0A0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D76DD27C(uint64_t a1)
{
  v2 = sub_1D76DDA20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D76DD2B8(uint64_t a1)
{
  v2 = sub_1D76DDA20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ArticleInterstitialAdContext.encode(to:)(void *a1)
{
  sub_1D76DE498(0, &qword_1EC9BDCA0, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v29 - v6;
  v8 = *(v1 + 4);
  v70 = *(v1 + 3);
  v71 = v8;
  v72 = *(v1 + 5);
  v9 = *(v1 + 2);
  v68 = *(v1 + 1);
  v69 = v9;
  v10 = *(v1 + 13);
  v76 = *(v1 + 12);
  v77 = v10;
  v11 = *(v1 + 15);
  v78 = *(v1 + 14);
  v79 = v11;
  v12 = *(v1 + 11);
  v74 = *(v1 + 10);
  v75 = v12;
  v13 = *(v1 + 17);
  v80 = *(v1 + 16);
  v14 = *(v1 + 18);
  v15 = *(v1 + 19);
  v81 = v13;
  v82 = v14;
  v16 = *(v1 + 23);
  v86 = *(v1 + 22);
  v87 = v16;
  v17 = *(v1 + 20);
  v85 = *(v1 + 21);
  v18 = *v1;
  v36 = *(v1 + 1);
  v73 = *(v1 + 12);
  v35 = v1[104];
  v19 = *(v1 + 14);
  v33 = *(v1 + 15);
  v34 = v19;
  v32 = *(v1 + 64);
  v20 = *(v1 + 18);
  *&v31 = *(v1 + 17);
  *(&v31 + 1) = v20;
  v30 = *(v1 + 19);
  v83 = v15;
  v84 = v17;
  v21 = *(v1 + 27);
  v90 = *(v1 + 26);
  v91 = v21;
  v22 = *(v1 + 25);
  v88 = *(v1 + 24);
  v89 = v22;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D76DDA20();
  v23 = v7;
  sub_1D7704B10();
  LOBYTE(v62) = v18;
  LOBYTE(v60[0]) = 0;
  sub_1D7669D40();
  v24 = v37;
  sub_1D7704A00();
  if (v24)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v25 = v35;
  v27 = v33;
  v26 = v34;
  *&v62 = v36;
  LOBYTE(v60[0]) = 1;
  sub_1D7669394();

  sub_1D7704A00();

  v64 = v70;
  v65 = v71;
  v66 = v72;
  v67 = v73;
  v62 = v68;
  v63 = v69;
  v96 = 2;
  sub_1D768FE24(&v68, v60);
  sub_1D766CFCC();
  sub_1D7704A00();
  v37 = v5;
  v60[2] = v64;
  v60[3] = v65;
  v60[4] = v66;
  v61 = v67;
  v60[0] = v62;
  v60[1] = v63;
  sub_1D768FE5C(v60);
  LOBYTE(v55) = v25;
  LOBYTE(v54[0]) = 3;
  sub_1D768A434();
  sub_1D77049B0();
  *&v55 = v26;
  *(&v55 + 1) = v27;
  LOWORD(v56) = v32;
  LOBYTE(v54[0]) = 4;
  sub_1D76922B4();

  sub_1D77049B0();

  v55 = v31;
  LOBYTE(v54[0]) = 5;
  sub_1D7692308();

  sub_1D77049B0();

  *&v55 = v30;
  LOBYTE(v54[0]) = 6;
  sub_1D76DDA74();
  sub_1D7704A00();
  v57 = v76;
  v58 = v77;
  v59 = v78;
  v55 = v74;
  v56 = v75;
  v95 = 7;
  sub_1D768DF4C(&v74, v54);
  sub_1D768E278();
  sub_1D7704A00();
  v54[2] = v57;
  v54[3] = v58;
  v54[4] = v59;
  v54[0] = v55;
  v54[1] = v56;
  sub_1D768DF84(v54);
  v50 = v79;
  v51 = v80;
  v52 = v81;
  v53 = v82;
  v94 = 8;
  sub_1D7690E7C(&v79, &v44);
  sub_1D769220C();
  sub_1D7704A00();
  v49[0] = v50;
  v49[1] = v51;
  v49[2] = v52;
  v49[3] = v53;
  sub_1D76917F0(v49);
  v46 = v85;
  v47 = v86;
  v48 = v87;
  v44 = v83;
  v45 = v84;
  v93 = 9;
  sub_1D768DF4C(&v83, v43);
  sub_1D7704A00();
  v43[2] = v46;
  v43[3] = v47;
  v43[4] = v48;
  v43[0] = v44;
  v43[1] = v45;
  sub_1D768DF84(v43);
  v39 = v88;
  v40 = v89;
  v41 = v90;
  v42 = v91;
  v92 = 10;
  sub_1D7690E7C(&v88, v38);
  sub_1D7704A00();
  v38[0] = v39;
  v38[1] = v40;
  v38[2] = v41;
  v38[3] = v42;
  sub_1D76917F0(v38);
  return (*(v5 + 8))(v23, v4);
}

unint64_t sub_1D76DDA20()
{
  result = qword_1EC9BDCA8;
  if (!qword_1EC9BDCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDCA8);
  }

  return result;
}

unint64_t sub_1D76DDA74()
{
  result = qword_1EE0AFAE0[0];
  if (!qword_1EE0AFAE0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE0AFAE0);
  }

  return result;
}

void ArticleInterstitialAdContext.init(from:)(void *a1@<X0>, void *a2@<X8>)
{
  sub_1D76DE498(0, &qword_1EC9BDCB0, MEMORY[0x1E69E6F48]);
  v116 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D76DDA20();
  sub_1D7704B00();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v9 = a2;
    LOBYTE(v24[0]) = 0;
    sub_1D7669CEC();
    sub_1D7704970();
    v10 = v25;
    LOBYTE(v24[0]) = 1;
    sub_1D76684E8();
    sub_1D7704970();
    v23 = v25;
    v81 = 2;
    sub_1D766CDD0();
    sub_1D7704970();
    v111 = v84;
    v112 = v85;
    v113 = v86;
    v114 = v87;
    v109 = v82;
    v110 = v83;
    LOBYTE(v24[0]) = 3;
    sub_1D768AAE4();
    v22 = 0;
    sub_1D7704920();
    v20 = v25;
    LOBYTE(v24[0]) = 4;
    sub_1D7692DEC();
    sub_1D7704920();
    v19 = v25;
    v18 = v26;
    LOBYTE(v24[0]) = 5;
    sub_1D7692E40();
    sub_1D7704920();
    v21 = *(&v25 + 1);
    v17 = v25;
    LOBYTE(v24[0]) = 6;
    sub_1D76DE4FC();
    sub_1D7704970();
    v15 = v25;
    v75 = 7;
    v16 = sub_1D768E224();
    sub_1D7704970();
    v103 = v78;
    v104 = v79;
    v105 = v80;
    v102 = v77;
    v101 = v76;
    v70 = 8;
    v14[1] = sub_1D7692D44();
    sub_1D7704970();
    v97 = v71;
    v98 = v72;
    v99 = v73;
    v100 = v74;
    v64 = 9;
    sub_1D7704970();
    v94 = v67;
    v95 = v68;
    v96 = v69;
    v93 = v66;
    v92 = v65;
    v59 = 10;
    sub_1D7704970();
    (*(v6 + 8))(v8, v116);
    v88 = v60;
    v89 = v61;
    v90 = v62;
    v91 = v63;
    v24[1] = v109;
    v24[2] = v110;
    v24[4] = v112;
    v24[5] = v113;
    v24[3] = v111;
    v24[12] = v103;
    v24[13] = v104;
    v24[10] = v101;
    v24[11] = v102;
    v24[16] = v98;
    v24[17] = v99;
    v24[14] = v105;
    v24[15] = v97;
    v24[18] = v100;
    v24[19] = v92;
    v24[22] = v95;
    v24[23] = v96;
    LOBYTE(v24[0]) = v10;
    *(v24 + 1) = v115[0];
    DWORD1(v24[0]) = *(v115 + 3);
    v11 = v23;
    *(&v24[0] + 1) = v23;
    *&v24[6] = v114;
    v12 = v20;
    BYTE8(v24[6]) = v20;
    HIDWORD(v24[6]) = *&v108[3];
    *(&v24[6] + 9) = *v108;
    v24[7] = v19;
    LOWORD(v24[8]) = v18;
    WORD3(v24[8]) = v107;
    *(&v24[8] + 2) = v106;
    v13 = v21;
    *(&v24[8] + 1) = v17;
    *&v24[9] = v21;
    *(&v24[9] + 1) = v15;
    v24[20] = v93;
    v24[21] = v94;
    v24[26] = v62;
    v24[27] = v63;
    v24[24] = v60;
    v24[25] = v61;
    memcpy(v9, v24, 0x1C0uLL);
    sub_1D76DD064(v24, &v25);
    __swift_destroy_boxed_opaque_existential_1(a1);
    LOBYTE(v25) = v10;
    *(&v25 + 1) = v115[0];
    DWORD1(v25) = *(v115 + 3);
    *(&v25 + 1) = v11;
    v28 = v111;
    v29 = v112;
    v30 = v113;
    v31 = v114;
    v26 = v109;
    v27 = v110;
    v32 = v12;
    *v33 = *v108;
    *&v33[3] = *&v108[3];
    v34 = v19;
    v35 = v18;
    v36 = v106;
    v37 = v107;
    v38 = v17;
    v39 = v13;
    v40 = v15;
    v43 = v103;
    v44 = v104;
    v41 = v101;
    v42 = v102;
    v47 = v98;
    v48 = v99;
    v45 = v105;
    v46 = v97;
    v49 = v100;
    v50 = v92;
    v53 = v95;
    v54 = v96;
    v51 = v93;
    v52 = v94;
    v57 = v90;
    v58 = v91;
    v55 = v88;
    v56 = v89;
    sub_1D76DD09C(&v25);
  }
}

void sub_1D76DE498(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D76DDA20();
    v7 = a3(a1, &type metadata for ArticleInterstitialAdContext.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D76DE4FC()
{
  result = qword_1EE0AFAD8;
  if (!qword_1EE0AFAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0AFAD8);
  }

  return result;
}

id ArticleInterstitialAdContext.newsSupplementalContext.getter()
{
  v37 = sub_1D77038A0();
  v1 = *(v37 - 8);
  v2 = MEMORY[0x1EEE9AC00](v37);
  v38 = v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v36 - v4;
  v6 = *(v0 + 64);
  v63 = *(v0 + 48);
  v64 = v6;
  v65 = *(v0 + 80);
  v66 = *(v0 + 96);
  v7 = *(v0 + 32);
  v61 = *(v0 + 16);
  v62 = v7;
  v8 = *(v0 + 104);
  v9 = *(v0 + 112);
  v10 = *(v0 + 120);
  v11 = *(v0 + 128);
  v12 = *(v0 + 144);
  v36[0] = *(v0 + 136);
  v36[1] = v9;
  v39 = v12;
  v40 = *(v0 + 152);
  v14 = *(v0 + 224);
  v13 = *(v0 + 240);
  v15 = *(v0 + 192);
  v70 = *(v0 + 208);
  v71 = v14;
  v16 = *(v0 + 176);
  v67 = *(v0 + 160);
  v68 = v16;
  v69 = v15;
  v17 = *(v0 + 256);
  v18 = *(v0 + 288);
  v19 = *(v0 + 304);
  v74 = *(v0 + 272);
  v75 = v18;
  v72 = v13;
  v73 = v17;
  v20 = *(v0 + 368);
  v79 = *(v0 + 352);
  v80 = v20;
  v21 = *(v0 + 336);
  v77 = *(v0 + 320);
  v78 = v21;
  v76 = v19;
  v22 = *(v0 + 384);
  v23 = *(v0 + 400);
  v24 = *(v0 + 432);
  v83 = *(v0 + 416);
  v84 = v24;
  v81 = v22;
  v82 = v23;
  v25 = objc_allocWithZone(sub_1D7703D00());

  sub_1D768DF4C(&v67, v59);
  sub_1D7690E7C(&v72, v59);
  sub_1D768DF4C(&v76, v59);
  sub_1D7690E7C(&v81, v59);
  v26 = [v25 init];
  sub_1D7703CF0();
  sub_1D7703AE0();
  sub_1D7703B50();

  sub_1D7703C00();

  if (v8 < 4)
  {
    sub_1D7703AF0();
    sub_1D768ABAC();
    sub_1D7704680();
    sub_1D7703C70();
  }

  v55 = v63;
  v56 = v64;
  v57 = v65;
  v58 = v66;
  v53 = v61;
  v54 = v62;
  sub_1D768FE24(&v61, v59);
  sub_1D768FE24(&v61, v59);
  sub_1D768078C(&v53);
  v59[2] = v55;
  v59[3] = v56;
  v59[4] = v57;
  v60 = v58;
  v59[0] = v53;
  v59[1] = v54;
  sub_1D76939B0(v59, &qword_1EE0B0468, &type metadata for FeedAdData);
  if (v10)
  {

    sub_1D7703AD0();
    v27 = *(v1 + 104);
    v28 = *MEMORY[0x1E69C5F50];
    v29 = *MEMORY[0x1E69C5F58];
    v30 = v11;
    if (v11)
    {
      v31 = v28;
    }

    else
    {
      v31 = v29;
    }

    v32 = v37;
    v27(v5, v31, v37);
    sub_1D7703B80();
    if ((v30 & 0x100) != 0)
    {
      v33 = v28;
    }

    else
    {
      v33 = v29;
    }

    v27(v38, v33, v32);
    sub_1D7703BE0();
  }

  if (v39)
  {
    if ((BYTE8(v62) & 1) != 0 || v62 >= 1)
    {
    }

    sub_1D7703C10();
  }

  sub_1D768FE5C(&v61);
  v34 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  [v34 initWithInteger_];
  sub_1D7703CD0();
  v55 = v69;
  v56 = v70;
  v57 = v71;
  v53 = v67;
  v54 = v68;
  v45 = v72;
  v46 = v73;
  v47 = v74;
  v48 = v75;
  sub_1D76B9AA8(&v53, &v45, v74);
  v50[0] = v45;
  v50[1] = v46;
  v50[2] = v47;
  v50[3] = v48;
  sub_1D76939B0(v50, &qword_1EE0B02E8, &type metadata for ChannelAdData);
  v51[2] = v55;
  v51[3] = v56;
  v51[4] = v57;
  v51[0] = v53;
  v51[1] = v54;
  sub_1D76939B0(v51, &qword_1EE0B0300, &type metadata for ArticleAdData);
  v47 = v78;
  v48 = v79;
  v49 = v80;
  v45 = v76;
  v46 = v77;
  v41 = v81;
  v42 = v82;
  v43 = v83;
  v44 = v84;
  sub_1D76B9740(&v45, &v41, v83);
  v52[0] = v41;
  v52[1] = v42;
  v52[2] = v43;
  v52[3] = v44;
  sub_1D76939B0(v52, &qword_1EE0B02E8, &type metadata for ChannelAdData);
  v55 = v47;
  v56 = v48;
  v57 = v49;
  v53 = v45;
  v54 = v46;
  sub_1D76939B0(&v53, &qword_1EE0B0300, &type metadata for ArticleAdData);
  return v26;
}

uint64_t ArticleInterstitialAdContext.currentPromotableContentDepiction.getter()
{
  v1 = sub_1D7702FD0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6[1] = v0[38];
  if (!v0[47] && *(v0[1] + 16))
  {
  }

  sub_1D7702FC0();
  sub_1D7702FB0();
  (*(v2 + 8))(v4, v1);
  sub_1D7703780();

  return sub_1D7703770();
}

uint64_t ArticleInterstitialAdContext.nextPromotableContentDepiction.getter()
{
  v1 = sub_1D7702FD0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6[1] = v0[20];
  if (!v0[29] && *(v0[1] + 16))
  {
  }

  sub_1D7702FC0();
  sub_1D7702FB0();
  (*(v2 + 8))(v4, v1);
  sub_1D7703780();

  return sub_1D7703770();
}

uint64_t sub_1D76DEE8C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 448))
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

uint64_t sub_1D76DEED4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 440) = 0;
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
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 448) = 1;
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

    *(result + 448) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D76DEF9C()
{
  result = qword_1EC9BDCB8;
  if (!qword_1EC9BDCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDCB8);
  }

  return result;
}

unint64_t sub_1D76DEFF4()
{
  result = qword_1EC9BDCC0;
  if (!qword_1EC9BDCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDCC0);
  }

  return result;
}

unint64_t sub_1D76DF04C()
{
  result = qword_1EC9BDCC8;
  if (!qword_1EC9BDCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDCC8);
  }

  return result;
}

uint64_t sub_1D76DF0A0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x61746144707061 && a2 == 0xE700000000000000;
  if (v4 || (sub_1D7704A30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6174614472657375 && a2 == 0xE800000000000000 || (sub_1D7704A30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_1D7704A30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C61727265666572 && a2 == 0xEC00000061746144 || (sub_1D7704A30() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7461446575737369 && a2 == 0xE900000000000061 || (sub_1D7704A30() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x446E6F6974636573 && a2 == 0xEB00000000617461 || (sub_1D7704A30() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D7718E90 == a2 || (sub_1D7704A30() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D7718EB0 == a2 || (sub_1D7704A30() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D7718ED0 == a2 || (sub_1D7704A30() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D7718EF0 == a2 || (sub_1D7704A30() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D7718F10 == a2)
  {

    return 10;
  }

  else
  {
    v6 = sub_1D7704A30();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

NewsAds::FeedGroupAdData::AdjacentPosition_optional __swiftcall FeedGroupAdData.AdjacentPosition.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D77048E0();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t FeedGroupAdData.AdjacentPosition.rawValue.getter()
{
  v1 = 7368564;
  v2 = 1952867692;
  if (*v0 != 2)
  {
    v2 = 0x7468676972;
  }

  if (*v0)
  {
    v1 = 0x6D6F74746F62;
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

uint64_t sub_1D76DF51C()
{
  sub_1D7704AD0();
  sub_1D77042D0();

  return sub_1D7704AF0();
}

double sub_1D76DF5C8(uint64_t a1)
{
  sub_1D77042D0();

  return result;
}

uint64_t sub_1D76DF660(uint64_t a1)
{
  sub_1D7704AD0();
  sub_1D77042D0();

  return sub_1D7704AF0();
}

void sub_1D76DF714(uint64_t *a1@<X8>)
{
  v2 = 0xE300000000000000;
  v3 = 7368564;
  v4 = 0xE400000000000000;
  v5 = 1952867692;
  if (*v1 != 2)
  {
    v5 = 0x7468676972;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 0x6D6F74746F62;
    v2 = 0xE600000000000000;
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

uint64_t FeedGroupAdData.Article.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FeedGroupAdData.Article.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FeedGroupAdData.Article.language.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

void FeedGroupAdData.Article.init(headline:adjacentPosition:)(void *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = [a1 identifier];
  v7 = sub_1D7704260();
  v9 = v8;

  v10 = [a1 title];
  if (v10)
  {
    v11 = v10;
    v12 = sub_1D7704260();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0xE000000000000000;
  }

  v15 = [a1 language];
  if (v15)
  {
    v16 = v15;
    v17 = sub_1D7704260();
    v19 = v18;
  }

  else
  {
    v17 = 0;
    v19 = 0;
  }

  v20 = [a1 iAdKeywords];
  if (v20)
  {
    v29 = v19;
    v21 = v17;
    v22 = v14;
    v23 = v12;
    v24 = v9;
    v25 = v7;
    v26 = v5;
    v27 = v20;
    v28 = sub_1D7704400();
    swift_unknownObjectRelease();

    v5 = v26;
    v7 = v25;
    v9 = v24;
    v12 = v23;
    v14 = v22;
    v17 = v21;
    v19 = v29;
  }

  else
  {
    swift_unknownObjectRelease();
    v28 = MEMORY[0x1E69E7CC0];
  }

  *a3 = v7;
  *(a3 + 8) = v9;
  *(a3 + 16) = v12;
  *(a3 + 24) = v14;
  *(a3 + 32) = v17;
  *(a3 + 40) = v19;
  *(a3 + 48) = v28;
  *(a3 + 56) = v5;
}

uint64_t sub_1D76DFA5C()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x65676175676E616CLL;
  v4 = 0x7364726F7779656BLL;
  if (v1 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x656C746974;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D76DFAFC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D76E1840(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D76DFB24(uint64_t a1)
{
  v2 = sub_1D76DFE38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D76DFB60(uint64_t a1)
{
  v2 = sub_1D76DFE38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FeedGroupAdData.Article.encode(to:)(void *a1)
{
  sub_1D76E0F9C(0, &qword_1EC9BDCD0, sub_1D76DFE38, &type metadata for FeedGroupAdData.Article.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v14 - v6;
  v8 = *(v1 + 16);
  v18 = *(v1 + 24);
  v19 = v8;
  v9 = *(v1 + 32);
  v16 = *(v1 + 40);
  v17 = v9;
  v15 = *(v1 + 48);
  HIDWORD(v14) = *(v1 + 56);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D76DFE38();
  sub_1D7704B10();
  v27 = 0;
  v10 = v20;
  sub_1D77049C0();
  if (!v10)
  {
    v11 = v15;
    v12 = BYTE4(v14);
    v26 = 1;
    sub_1D77049C0();
    v25 = 2;
    sub_1D77049A0();
    v21 = v11;
    v24 = 3;
    sub_1D76784F8(0, &qword_1EE0AED80, MEMORY[0x1E69E6158]);
    sub_1D76E0318(&qword_1EC9BE010, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
    sub_1D7704A00();
    v23 = v12;
    v22 = 4;
    sub_1D76DFE8C();
    sub_1D7704A00();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1D76DFE38()
{
  result = qword_1EC9BDCD8;
  if (!qword_1EC9BDCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDCD8);
  }

  return result;
}

unint64_t sub_1D76DFE8C()
{
  result = qword_1EC9BDCE0;
  if (!qword_1EC9BDCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDCE0);
  }

  return result;
}

void FeedGroupAdData.Article.init(from:)(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1D76E0F9C(0, &qword_1EC9BDCE8, sub_1D76DFE38, &type metadata for FeedGroupAdData.Article.CodingKeys, MEMORY[0x1E69E6F48]);
  v28 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D76DFE38();
  sub_1D7704B00();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v9 = v6;
    LOBYTE(v32[0]) = 0;
    v10 = sub_1D7704930();
    v12 = v11;
    LOBYTE(v32[0]) = 1;
    v13 = sub_1D7704930();
    v27 = v14;
    v25 = v13;
    LOBYTE(v32[0]) = 2;
    v24 = sub_1D7704910();
    v26 = v15;
    sub_1D76784F8(0, &qword_1EE0AED80, MEMORY[0x1E69E6158]);
    LOBYTE(v29) = 3;
    sub_1D76E0318(&qword_1EC9BD1D0, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
    sub_1D7704970();
    v23 = v32[0];
    v34 = 4;
    sub_1D76E0388();
    sub_1D7704970();
    (*(v9 + 8))(v8, v28);
    LODWORD(v28) = v35;
    *&v29 = v10;
    *(&v29 + 1) = v12;
    v16 = v25;
    v22 = v12;
    v18 = v26;
    v17 = v27;
    *&v30 = v25;
    *(&v30 + 1) = v27;
    v19 = v24;
    *v31 = v24;
    *&v31[8] = v26;
    v20 = v23;
    *&v31[16] = v23;
    v31[24] = v35;
    v21 = v30;
    *a2 = v29;
    a2[1] = v21;
    a2[2] = *v31;
    *(a2 + 41) = *&v31[9];
    sub_1D76ABB5C(&v29, v32);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v32[0] = v10;
    v32[1] = v22;
    v32[2] = v16;
    v32[3] = v17;
    v32[4] = v19;
    v32[5] = v18;
    v32[6] = v20;
    v33 = v28;
    sub_1D76ABBB8(v32);
  }
}

uint64_t sub_1D76E0318(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1D76784F8(255, &qword_1EE0AED80, MEMORY[0x1E69E6158]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D76E0388()
{
  result = qword_1EC9BDCF0;
  if (!qword_1EC9BDCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDCF0);
  }

  return result;
}

uint64_t FeedGroupAdData.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FeedGroupAdData.channelIdentifier.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

void __swiftcall FeedGroupAdData.init(identifier:adCategories:adKeywords:languages:contentProviderID:channelIdentifier:adjacentArticles:)(NewsAds::FeedGroupAdData *__return_ptr retstr, Swift::String identifier, Swift::OpaquePointer adCategories, Swift::OpaquePointer adKeywords, Swift::OpaquePointer languages, Swift::Int contentProviderID, Swift::String_optional channelIdentifier, Swift::OpaquePointer adjacentArticles)
{
  retstr->identifier = identifier;
  retstr->adCategories = adCategories;
  retstr->adKeywords = adKeywords;
  retstr->languages = languages;
  retstr->contentProviderID = contentProviderID;
  retstr->channelIdentifier = channelIdentifier;
  retstr->adjacentArticles = adjacentArticles;
}

uint64_t sub_1D76E04B0()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0x6F67657461436461;
    if (v1 != 1)
    {
      v5 = 0x726F7779654B6461;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0x696669746E656469;
    }
  }

  else
  {
    v2 = 0xD000000000000011;
    if (v1 != 5)
    {
      v2 = 0xD000000000000010;
    }

    v3 = 0x65676175676E616CLL;
    if (v1 != 3)
    {
      v3 = 0xD000000000000011;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1D76E05A4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D76E19FC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D76E05D8(uint64_t a1)
{
  v2 = sub_1D76E0994();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D76E0614(uint64_t a1)
{
  v2 = sub_1D76E0994();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FeedGroupAdData.encode(to:)(void *a1)
{
  sub_1D76E0F9C(0, &qword_1EC9BDCF8, sub_1D76E0994, &type metadata for FeedGroupAdData.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v15 - v6;
  v8 = v1[2];
  v21 = v1[3];
  v22 = v8;
  v9 = v1[4];
  v19 = v1[5];
  v20 = v9;
  v10 = v1[7];
  v17 = v1[6];
  v18 = v10;
  v16 = v1[8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D76E0994();
  sub_1D7704B10();
  LOBYTE(v25) = 0;
  v11 = v23;
  sub_1D77049C0();
  if (!v11)
  {
    v13 = v20;
    v12 = v21;
    v25 = v22;
    v24 = 1;
    sub_1D76784F8(0, &qword_1EE0AED80, MEMORY[0x1E69E6158]);
    sub_1D76E0318(&qword_1EC9BE010, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
    sub_1D7704A00();
    v25 = v12;
    v24 = 2;
    sub_1D7704A00();
    v25 = v13;
    v24 = 3;
    sub_1D7704A00();
    LOBYTE(v25) = 4;
    sub_1D77049F0();
    LOBYTE(v25) = 5;
    sub_1D77049A0();
    v25 = v16;
    v24 = 6;
    sub_1D76784F8(0, &qword_1EC9BDD08, &type metadata for FeedGroupAdData.Article);
    sub_1D76E1004(&qword_1EC9BDD10, sub_1D76E09E8, MEMORY[0x1E69E6300]);
    sub_1D7704A00();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1D76E0994()
{
  result = qword_1EC9BDD00;
  if (!qword_1EC9BDD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDD00);
  }

  return result;
}

unint64_t sub_1D76E09E8()
{
  result = qword_1EC9BDD18;
  if (!qword_1EC9BDD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDD18);
  }

  return result;
}

void FeedGroupAdData.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D76E0F9C(0, &qword_1EC9BDD20, sub_1D76E0994, &type metadata for FeedGroupAdData.CodingKeys, MEMORY[0x1E69E6F48]);
  v31 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D76E0994();
  sub_1D7704B00();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v9 = v6;
    v30 = a2;
    LOBYTE(v37[0]) = 0;
    *&v29 = sub_1D7704930();
    *(&v29 + 1) = v10;
    sub_1D76784F8(0, &qword_1EE0AED80, MEMORY[0x1E69E6158]);
    LOBYTE(v32) = 1;
    sub_1D76E0318(&qword_1EC9BD1D0, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
    sub_1D7704970();
    v11 = v37[0];
    LOBYTE(v32) = 2;
    sub_1D7704970();
    v12 = v37[0];
    LOBYTE(v32) = 3;
    sub_1D7704970();
    v28 = v37[0];
    LOBYTE(v37[0]) = 4;
    v13 = sub_1D7704960();
    LOBYTE(v37[0]) = 5;
    v26 = sub_1D7704910();
    v27 = v13;
    v15 = v14;
    sub_1D76784F8(0, &qword_1EC9BDD08, &type metadata for FeedGroupAdData.Article);
    v38[0] = 6;
    sub_1D76E1004(&qword_1EC9BDD28, sub_1D76E1080, MEMORY[0x1E69E6330]);
    sub_1D7704970();
    (*(v9 + 8))(v8, v31);
    v16 = v39;
    v17 = v29;
    v18 = v12;
    v25 = v12;
    v19 = *(&v29 + 1);
    v32 = v29;
    *&v33 = v11;
    *(&v33 + 1) = v18;
    v20 = v28;
    *&v34 = v28;
    *(&v34 + 1) = v27;
    *&v35 = v26;
    *(&v35 + 1) = v15;
    v21 = v15;
    v36 = v39;
    v22 = v30;
    *(v30 + 64) = v39;
    v23 = v35;
    v22[2] = v34;
    v22[3] = v23;
    v24 = v33;
    *v22 = v32;
    v22[1] = v24;
    sub_1D7690F3C(&v32, v37);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v37[0] = v17;
    v37[1] = v19;
    v37[2] = v11;
    v37[3] = v25;
    v37[4] = v20;
    v37[5] = v27;
    v37[6] = v26;
    v37[7] = v21;
    v37[8] = v16;
    sub_1D769179C(v37);
  }
}

void sub_1D76E0F9C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_1D76E1004(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1D76784F8(255, &qword_1EC9BDD08, &type metadata for FeedGroupAdData.Article);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D76E1080()
{
  result = qword_1EC9BDD30;
  if (!qword_1EC9BDD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDD30);
  }

  return result;
}

void FeedGroupAdData.init(identifier:adjacentArticles:tag:contentProviderID:keywords:)(id a1@<X3>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  if (a1 && (v12 = [a1 asTopic]) != 0 && (v13 = objc_msgSend(v12, sel_iAdCategories), swift_unknownObjectRelease(), v13))
  {
    v34 = sub_1D7704400();
  }

  else
  {
    v34 = MEMORY[0x1E69E7CC0];
  }

  v33 = sub_1D7676B5C(a4, a6);

  v14 = 0;
  v15 = 0;
  v16 = *(a4 + 16);
  v17 = MEMORY[0x1E69E7CC0];
LABEL_7:
  v18 = a4 + (v14 << 6);
  while (v16 != v14)
  {
    if (v14 >= *(a4 + 16))
    {
      __break(1u);
      return;
    }

    v19 = (v18 + 64);
    ++v14;
    v20 = *(v18 + 72);
    v18 += 64;
    if (v20)
    {
      v31 = v15;
      v32 = a3;
      v21 = *v19;

      v22 = a5;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_1D7669634(0, *(v17 + 2) + 1, 1, v17);
      }

      v24 = *(v17 + 2);
      v23 = *(v17 + 3);
      if (v24 >= v23 >> 1)
      {
        v17 = sub_1D7669634((v23 > 1), v24 + 1, 1, v17);
      }

      *(v17 + 2) = v24 + 1;
      v25 = &v17[16 * v24];
      *(v25 + 4) = v21;
      *(v25 + 5) = v20;
      a5 = v22;
      v15 = v31;
      a3 = v32;
      goto LABEL_7;
    }
  }

  sub_1D76784F8(0, &qword_1EE0AED80, MEMORY[0x1E69E6158]);
  sub_1D766C8DC();
  v26 = sub_1D7704330();

  if (a1)
  {
    v27 = [a1 identifier];
    v28 = sub_1D7704260();
    v30 = v29;

    swift_unknownObjectRelease();
  }

  else
  {
    v28 = 0;
    v30 = 0;
  }

  *a7 = a2;
  a7[1] = a3;
  a7[2] = v34;
  a7[3] = v33;
  a7[4] = v26;
  a7[5] = a5;
  a7[6] = v28;
  a7[7] = v30;
  a7[8] = a4;
}

unint64_t sub_1D76E1384()
{
  result = qword_1EC9BDD38;
  if (!qword_1EC9BDD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDD38);
  }

  return result;
}

unint64_t sub_1D76E13D8(uint64_t a1)
{
  *(a1 + 8) = sub_1D7692D98();
  result = sub_1D7692260();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1D76E1408(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1D76E1450(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D76E14C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_1D76E1508(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D76E1558(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFBB && *(a1 + 16))
  {
    return (*a1 + 2147483580);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 67;
  if (v4 >= 0x45)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D76E15B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFBC)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483580;
    if (a3 >= 0x7FFFFFBC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFBC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 67;
    }
  }

  return result;
}

unint64_t sub_1D76E1634()
{
  result = qword_1EC9BDD40;
  if (!qword_1EC9BDD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDD40);
  }

  return result;
}

unint64_t sub_1D76E168C()
{
  result = qword_1EC9BDD48;
  if (!qword_1EC9BDD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDD48);
  }

  return result;
}

unint64_t sub_1D76E16E4()
{
  result = qword_1EC9BDD50;
  if (!qword_1EC9BDD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDD50);
  }

  return result;
}

unint64_t sub_1D76E173C()
{
  result = qword_1EC9BDD58;
  if (!qword_1EC9BDD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDD58);
  }

  return result;
}

unint64_t sub_1D76E1794()
{
  result = qword_1EC9BDD60;
  if (!qword_1EC9BDD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDD60);
  }

  return result;
}

unint64_t sub_1D76E17EC()
{
  result = qword_1EC9BDD68;
  if (!qword_1EC9BDD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDD68);
  }

  return result;
}

uint64_t sub_1D76E1840(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1D7704A30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_1D7704A30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65676175676E616CLL && a2 == 0xE800000000000000 || (sub_1D7704A30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7364726F7779656BLL && a2 == 0xE800000000000000 || (sub_1D7704A30() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D7714640 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_1D7704A30();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1D76E19FC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1D7704A30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F67657461436461 && a2 == 0xEC00000073656972 || (sub_1D7704A30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726F7779654B6461 && a2 == 0xEA00000000007364 || (sub_1D7704A30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65676175676E616CLL && a2 == 0xE900000000000073 || (sub_1D7704A30() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D7715480 == a2 || (sub_1D7704A30() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D77191B0 == a2 || (sub_1D7704A30() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D77191D0 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_1D7704A30();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

unint64_t sub_1D76E1C60()
{
  result = qword_1EC9BDD70;
  if (!qword_1EC9BDD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDD70);
  }

  return result;
}

uint64_t SponsorshipAdInfo.SponsorshipAdInfoData.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SponsorshipAdInfo.SponsorshipAdInfoData.placementIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t SponsorshipAdInfo.SponsorshipAdInfoData.feedIdentifier.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t static SponsorshipAdInfo.SponsorshipAdInfoData.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = a1[2] == a2[2] && a1[3] == a2[3];
  if (v4 || (v5 = sub_1D7704A30(), result = 0, (v5 & 1) != 0))
  {
    if (*a1 == *a2 && a1[1] == a2[1])
    {
      return 1;
    }

    else
    {

      return sub_1D7704A30();
    }
  }

  return result;
}

uint64_t sub_1D76E1DD4(uint64_t *a1, uint64_t *a2)
{
  v4 = a1[2] == a2[2] && a1[3] == a2[3];
  if (v4 || (v5 = sub_1D7704A30(), result = 0, (v5 & 1) != 0))
  {
    if (*a1 == *a2 && a1[1] == a2[1])
    {
      return 1;
    }

    else
    {

      return sub_1D7704A30();
    }
  }

  return result;
}

uint64_t SponsorshipAdInfo.identifier.getter()
{
  sub_1D7680B78(v0, v5);
  v3[4] = v5[4];
  v3[5] = v5[5];
  v4 = v6;
  v3[0] = v5[0];
  v3[1] = v5[1];
  v3[2] = v5[2];
  v3[3] = v5[3];
  v1 = *&v5[0];

  sub_1D7680BB0(v3);
  return v1;
}

uint64_t SponsorshipAdInfo.keywords.getter()
{
  sub_1D7680B78(v0, v7);
  v5[4] = v7[4];
  v5[5] = v7[5];
  v6 = v8;
  v5[0] = v7[0];
  v5[1] = v7[1];
  v5[2] = v7[2];
  v5[3] = v7[3];
  v1 = sub_1D7703D20();
  if (!v1 || (v2 = v1, v3 = sub_1D7703B30(), v2, !v3))
  {

    v3 = MEMORY[0x1E69E7CC0];
  }

  sub_1D7680BB0(v5);
  return v3;
}

uint64_t SponsorshipAdInfo.placementIdentifier.getter()
{
  sub_1D7680B78(v0, &v5);
  v3[4] = v9;
  v3[5] = v10;
  v4 = v11;
  v3[0] = v5;
  v3[1] = v6;
  v3[2] = v7;
  v3[3] = v8;
  v1 = v6;

  sub_1D7680BB0(v3);
  return v1;
}

uint64_t SponsorshipAdInfo.feedIdentifier.getter()
{
  sub_1D7680B78(v0, v5);
  v3[2] = v6;
  v3[3] = v7;
  v3[4] = v8;
  v3[5] = v9;
  v4 = v10;
  v3[0] = v5[0];
  v3[1] = v5[1];
  v1 = v6;

  sub_1D7680BB0(v3);
  return v1;
}

uint64_t SponsorshipAdInfo.metricsView.getter()
{
  sub_1D7680B78(v0, v7);
  v5[1] = v7[4];
  v5[2] = v8;
  v6 = v9;
  v4[0] = v7[0];
  v4[1] = v7[1];
  v4[2] = v7[2];
  v5[0] = v7[3];
  v1 = v8;
  __swift_project_boxed_opaque_existential_1(v5 + 1, v8);
  v2 = (*(*(&v1 + 1) + 16))(v1, *(&v1 + 1));
  sub_1D7680BB0(v4);
  return v2;
}

uint64_t _s7NewsAds17SponsorshipAdInfoO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  sub_1D7680B78(a1, v8);
  sub_1D7680B78(a2, &v9);
  if ((v8[104] & 1) == 0)
  {
    sub_1D7680B78(v8, v7);
    if (v16)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5[4] = v13;
    v5[5] = v14;
    v6 = v15;
    v5[0] = v9;
    v5[1] = v10;
    v5[2] = v11;
    v5[3] = v12;
    if (v7[1] == v10 || (sub_1D7704A30() & 1) != 0)
    {
      if (v7[0] == v5[0])
      {
        sub_1D7680BB0(v5);
        sub_1D7680BB0(v7);
LABEL_10:
        sub_1D7680CFC(v8);
        return 1;
      }

      v3 = sub_1D7704A30();
      sub_1D7680BB0(v5);
      sub_1D7680BB0(v7);
      if (v3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      sub_1D7680BB0(v5);
      sub_1D7680BB0(v7);
    }

    sub_1D7680CFC(v8);
    return 0;
  }

  sub_1D7680B78(v8, v7);
  if (v16 == 1)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1D7680BB0(v7);
  sub_1D76E22F4(v8);
  return 0;
}

uint64_t sub_1D76E2254(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_1D76E229C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D76E22F4(uint64_t a1)
{
  sub_1D76E2350();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D76E2350()
{
  if (!qword_1EC9BDD78)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC9BDD78);
    }
  }
}

void *sub_1D76E23AC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v26 = a2;
  v3 = sub_1D77045E0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D77045C0();
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1D7704110();
  MEMORY[0x1EEE9AC00](v8 - 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7665328(0, &unk_1EE0AF928, &protocol descriptor for AdSegmentUpdaterType);
  result = sub_1D7703410();
  if (v29)
  {
    sub_1D766844C(0, &qword_1EE0AED30, 0x1E69E9610);
    sub_1D77040E0();
    v27[0] = MEMORY[0x1E69E7CC0];
    sub_1D7667EA8(&qword_1EE0AED38, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
    sub_1D7667BCC(0, &qword_1EE0AED60, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
    sub_1D76E4F58();
    sub_1D77046E0();
    (*(v4 + 104))(v6, *MEMORY[0x1E69E8090], v3);
    v10 = sub_1D7704610();
    v11 = __swift_mutable_project_boxed_opaque_existential_1(v28, v29);
    MEMORY[0x1EEE9AC00](v11);
    v13 = (&v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(v13);
    v15 = *v13;
    v16 = type metadata accessor for AdSegmentUpdater();
    v27[3] = v16;
    v27[4] = &off_1F52573A8;
    v27[0] = v15;
    v17 = type metadata accessor for AdSegmentManager();
    v18 = swift_allocObject();
    v19 = __swift_mutable_project_boxed_opaque_existential_1(v27, v16);
    MEMORY[0x1EEE9AC00](v19);
    v21 = (&v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v22 + 16))(v21);
    v23 = sub_1D76E4B98(*v21, v10, v18, 10.0);
    __swift_destroy_boxed_opaque_existential_1(v27);
    result = __swift_destroy_boxed_opaque_existential_1(v28);
    v24 = v26;
    v26[3] = v17;
    v24[4] = &off_1F52535B8;
    *v24 = v23;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1D76E2820@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7665328(0, &qword_1EE0AF3B8, &protocol descriptor for AdStatusConditionReporterType);
  result = sub_1D7703410();
  if (v19)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
    MEMORY[0x1EEE9AC00](v4);
    v6 = (v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v7 + 16))(v6);
    v8 = *v6;
    v9 = type metadata accessor for AdStatusConditionReporter();
    v17[3] = v9;
    v17[4] = &off_1F5257070;
    v17[0] = v8;
    v10 = type metadata accessor for AdStatusConditionManager();
    v11 = swift_allocObject();
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v17, v9);
    MEMORY[0x1EEE9AC00](v12);
    v14 = (v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v15 + 16))(v14);
    v16 = *v14;
    v11[5] = v9;
    v11[6] = &off_1F5257070;
    v11[2] = v16;
    v11[7] = MEMORY[0x1E69E7CC0];
    __swift_destroy_boxed_opaque_existential_1(v17);
    result = __swift_destroy_boxed_opaque_existential_1(v18);
    a2[3] = v10;
    a2[4] = &protocol witness table for AdStatusConditionManager;
    *a2 = v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D76E2AB4()
{
  v13 = sub_1D7703600();
  v0 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v2 = &v12 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AdsModuleStartupTask();
  sub_1D7703530();
  sub_1D7667BCC(0, &qword_1EE0AEC80, MEMORY[0x1E69D6C00], MEMORY[0x1E69E6F90]);
  v3 = sub_1D7703740();
  v4 = *(v3 - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D7708FD0;
  v8 = v7 + v6;
  v9 = *(v4 + 104);
  v9(v8, *MEMORY[0x1E69D6BE8], v3);
  v9(v8 + v5, *MEMORY[0x1E69D6BF0], v3);
  sub_1D7703300();

  sub_1D7665328(0, &unk_1EE0AF928, &protocol descriptor for AdSegmentUpdaterType);
  sub_1D7703540();

  sub_1D7665328(0, &qword_1EE0AF3B8, &protocol descriptor for AdStatusConditionReporterType);
  sub_1D7703540();

  type metadata accessor for AdContextManager();
  sub_1D7703530();
  v10 = v13;
  (*(v0 + 104))(v2, *MEMORY[0x1E69D6AD0], v13);
  sub_1D7703320();

  return (*(v0 + 8))(v2, v10);
}

uint64_t sub_1D76E2DF8(uint64_t a1)
{
  sub_1D7667C54(a1, v3);
  type metadata accessor for AdsModuleStartupTask();
  v1 = swift_allocObject();
  sub_1D7667CB8(v3, v1 + 16);
  *(v1 + 56) = 0;
  return v1;
}

uint64_t sub_1D76E2E50@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D7667C54(a1, v5);
  type metadata accessor for AdsModuleStartupTask();
  v3 = swift_allocObject();
  result = sub_1D7667CB8(v5, v3 + 16);
  *(v3 + 56) = 1;
  *a2 = v3;
  return result;
}

uint64_t sub_1D76E2ED0@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v5 = a1(0);
  result = swift_allocObject();
  a3[3] = v5;
  a3[4] = a2;
  *a3 = result;
  return result;
}

uint64_t sub_1D76E2F20@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for AdStatusConditionReporter();
  swift_allocObject();
  result = sub_1D76FB8D0();
  a1[3] = v2;
  a1[4] = &off_1F5257070;
  *a1 = result;
  return result;
}

void *sub_1D76E2F78(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7665328(0, &qword_1EE0B1C08, &protocol descriptor for AdContextBuilderType);
  result = sub_1D7703410();
  if (v4[3])
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D766844C(0, &unk_1EE0AED18, 0x1E69B5610);
    result = sub_1D7703400();
    if (result)
    {
      v3 = result;
      type metadata accessor for AdContextManager();
      swift_allocObject();
      return sub_1D76BF5D4(v4, v3);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1D76E305C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1D76E4FE0(0, &qword_1EC9BD588, &qword_1EC9BD590, &type metadata for AdPreviewQueue.AdPreviewWrapper, MEMORY[0x1E69E6EC8]);
  v35 = v4;
  v6 = sub_1D77048A0();
  v7 = v6;
  if (*(v5 + 16))
  {
    v34 = v5;
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
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {
      }

      sub_1D7704AD0();
      sub_1D77042D0();
      v25 = sub_1D7704AF0();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1D76E3324(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1D766BB6C(0, &qword_1EC9BDD80, MEMORY[0x1E69E6158]);
  v38 = v4;
  v6 = sub_1D77048A0();
  v7 = v6;
  if (*(v5 + 16))
  {
    v37 = v5;
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
    v14 = v6 + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v39 = *v26;
      if ((v38 & 1) == 0)
      {
      }

      sub_1D7704AD0();
      sub_1D77042D0();
      v28 = sub_1D7704AF0();
      v29 = -1 << *(v7 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v39;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v37;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v2;
    if (v36 >= 64)
    {
      bzero(v9, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1D76E35E8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1D76ADF8C(0);
  v31 = v4;
  v6 = sub_1D77048A0();
  v7 = v6;
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
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v31 & 1) == 0)
      {
      }

      sub_1D7704AD0();
      sub_1D77042D0();

      v22 = sub_1D7704AF0();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
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

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1D76E38A4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1D766BB6C(0, &qword_1EE0AE5B0, &type metadata for AdSegmentManager.ProviderContainer);
  v41 = v4;
  v6 = sub_1D77048A0();
  v7 = v6;
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
    v14 = v6 + 64;
    while (v12)
    {
      v21 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v24 = v21 | (v8 << 6);
      v25 = (*(v5 + 48) + 16 * v24);
      v26 = *v25;
      v27 = v25[1];
      v28 = *(v5 + 56) + 72 * v24;
      if (v41)
      {
        v42 = *v28;
        v29 = *(v28 + 16);
        v30 = *(v28 + 32);
        v31 = *(v28 + 48);
        v46 = *(v28 + 64);
        v44 = v30;
        v45 = v31;
        v43 = v29;
      }

      else
      {
        sub_1D76C4394(v28, &v42);
      }

      sub_1D7704AD0();
      sub_1D77042D0();
      v32 = sub_1D7704AF0();
      v33 = -1 << *(v7 + 32);
      v34 = v32 & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v14 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v14 + 8 * v35);
          if (v39 != -1)
          {
            v15 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v34) & ~*(v14 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v26;
      v16[1] = v27;
      v17 = *(v7 + 56) + 72 * v15;
      *v17 = v42;
      v18 = v43;
      v19 = v44;
      v20 = v45;
      *(v17 + 64) = v46;
      *(v17 + 32) = v19;
      *(v17 + 48) = v20;
      *(v17 + 16) = v18;
      ++*(v7 + 16);
    }

    v22 = v8;
    while (1)
    {
      v8 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v23 = v9[v8];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v12 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v40 = 1 << *(v5 + 32);
    v3 = v2;
    if (v40 >= 64)
    {
      bzero((v5 + 64), ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v40;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}

void sub_1D76E3B98(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1D76AE374(0);
  v35 = v4;
  v6 = sub_1D77048A0();
  v7 = v6;
  if (*(v5 + 16))
  {
    v34 = v5;
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
    v14 = v6 + 64;
    while (1)
    {
      if (!v12)
      {
        v17 = v8;
        while (1)
        {
          v8 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            __break(1u);
            goto LABEL_41;
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

        if ((v35 & 1) == 0)
        {

          v3 = v2;
          goto LABEL_39;
        }

        v33 = 1 << *(v5 + 32);
        v3 = v2;
        if (v33 >= 64)
        {
          bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v9 = -1 << v33;
        }

        *(v5 + 16) = 0;
        goto LABEL_38;
      }

      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + v19);
      v22 = *(v20 + 8 * v19);
      if ((v35 & 1) == 0)
      {
      }

      sub_1D7704AD0();
      if (!(v21 >> 6))
      {
        break;
      }

      if (v21 >> 6 == 1)
      {
        v23 = v21 & 0x3F;
        v24 = 2;
LABEL_21:
        MEMORY[0x1DA6FF8B0](v24);
        goto LABEL_23;
      }

      v23 = 0;
LABEL_23:
      MEMORY[0x1DA6FF8B0](v23);
      v25 = sub_1D7704AF0();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_41:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v21;
      *(*(v7 + 56) + 8 * v15) = v22;
      ++*(v7 + 16);
      v5 = v34;
    }

    v24 = 1;
    v23 = v21;
    goto LABEL_21;
  }

LABEL_38:

LABEL_39:
  *v3 = v7;
}

void sub_1D76E3E54(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1D76AE1DC(0);
  v35 = v4;
  v6 = sub_1D77048A0();
  v7 = v6;
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
    v14 = v6 + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 16 * (v18 | (v8 << 6));
      v22 = (*(v5 + 48) + v21);
      v23 = *v22;
      v24 = v22[1];
      v36 = *(*(v5 + 56) + v21);
      if ((v35 & 1) == 0)
      {

        v25 = v36;
      }

      sub_1D7704AD0();
      sub_1D77042D0();
      v26 = sub_1D7704AF0();
      v27 = -1 << *(v7 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v7 + 56) + v16) = v36;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1D76E4100()
{
  v1 = v0;
  sub_1D76E4FE0(0, &qword_1EC9BD588, &qword_1EC9BD590, &type metadata for AdPreviewQueue.AdPreviewWrapper, MEMORY[0x1E69E6EC8]);
  v2 = *v0;
  v3 = sub_1D7704890();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = v2 + 64;
    v7 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v6 + 8 * v7)
    {
      memmove(v5, (v2 + 64), 8 * v7);
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
LABEL_14:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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
        goto LABEL_16;
      }

      v16 = *(v6 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v4;
  }
}

void sub_1D76E4294()
{
  v1 = v0;
  sub_1D766BB6C(0, &qword_1EC9BDD80, MEMORY[0x1E69E6158]);
  v2 = *v0;
  v3 = sub_1D7704890();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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
}

void sub_1D76E4410()
{
  v1 = v0;
  sub_1D76ADF8C(0);
  v2 = *v0;
  v3 = sub_1D7704890();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
}

void sub_1D76E4560()
{
  v1 = v0;
  sub_1D766BB6C(0, &qword_1EE0AE5B0, &type metadata for AdSegmentManager.ProviderContainer);
  v2 = *v0;
  v3 = sub_1D7704890();
  v4 = v3;
  if (*(v2 + 16))
  {
    v28 = v1;
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 72 * v17;
        sub_1D76C4394(*(v2 + 56) + 72 * v17, v29);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        v24 = *(v4 + 56) + v22;
        *v24 = v29[0];
        v25 = v29[1];
        v26 = v29[2];
        v27 = v29[3];
        *(v24 + 64) = v30;
        *(v24 + 32) = v26;
        *(v24 + 48) = v27;
        *(v24 + 16) = v25;
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

        v1 = v28;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }
}

void sub_1D76E4728()
{
  v1 = v0;
  sub_1D76AE374(0);
  v2 = *v0;
  v3 = sub_1D7704890();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
}

void sub_1D76E4878()
{
  v1 = v0;
  sub_1D766BB6C(0, &qword_1EE0AECB0, MEMORY[0x1E69E7CA0] + 8);
  v2 = *v0;
  v3 = sub_1D7704890();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_1D767F844(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1D766B74C(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }
}

void sub_1D76E4A24()
{
  v1 = v0;
  sub_1D76AE1DC(0);
  v2 = *v0;
  v3 = sub_1D7704890();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v23 = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v23;

        v22 = v23;
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
}