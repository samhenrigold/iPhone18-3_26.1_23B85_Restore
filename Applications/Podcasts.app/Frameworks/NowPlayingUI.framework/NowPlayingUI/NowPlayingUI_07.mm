char *sub_B8620(double a1, double a2, double a3, double a4)
{
  *&v29[16] = a3;
  *&v29[24] = a4;
  *v29 = a1;
  *&v29[8] = a2;
  v4 = sub_9E1E0();
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = (v4 + 56);
    v7 = _swiftEmptyArrayStorage;
    do
    {
      v8 = *(v6 - 3);
      v9 = *(v6 - 2);
      v10 = *(v6 - 1);
      v11 = *v6;
      v12 = swift_unknownObjectRetain();
      sub_B7DBC(v12, v9, v10, v11, &v32);
      origin = v32.origin;
      size = v32.size;
      v36 = CGRectIntersection(v32, *v29);
      x = v36.origin.x;
      y = v36.origin.y;
      width = v36.size.width;
      height = v36.size.height;
      if (CGRectIsNull(v36))
      {
        swift_unknownObjectRelease();
      }

      else
      {
        v37.origin.x = x;
        v37.origin.y = y;
        v37.size.width = width;
        v37.size.height = height;
        MinX = CGRectGetMinX(v37);
        v38.origin = origin;
        v38.size = size;
        v27 = CGRectGetMinX(v38);
        v39.origin.x = x;
        v39.origin.y = y;
        v39.size.width = width;
        v39.size.height = height;
        MinY = CGRectGetMinY(v39);
        v40.origin = origin;
        v40.size = size;
        v19 = CGRectGetMinY(v40);
        v41.origin.x = x;
        v41.origin.y = y;
        v41.size.width = width;
        v41.size.height = height;
        v20 = CGRectGetWidth(v41);
        v42.origin.x = x;
        v42.origin.y = y;
        v42.size.width = width;
        v42.size.height = height;
        v21 = CGRectGetHeight(v42);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_134D9C(0, *(v7 + 2) + 1, 1, v7);
        }

        v23 = *(v7 + 2);
        v22 = *(v7 + 3);
        if (v23 >= v22 >> 1)
        {
          v7 = sub_134D9C((v22 > 1), v23 + 1, 1, v7);
        }

        v31[71] = v35;
        *&v31[39] = v33;
        *&v31[55] = v34;
        *&v31[7] = v32;
        *(v7 + 2) = v23 + 1;
        v24 = &v7[136 * v23];
        *(v24 + 4) = v8;
        *(v24 + 5) = v9;
        *(v24 + 6) = v10;
        v24[56] = v11;
        *(v24 + 57) = *v31;
        *(v24 + 121) = *&v31[64];
        *(v24 + 105) = *&v31[48];
        *(v24 + 89) = *&v31[32];
        *(v24 + 73) = *&v31[16];
        *(v24 + 129) = *v30;
        *(v24 + 33) = *&v30[3];
        *(v24 + 17) = MinX - v27;
        *(v24 + 18) = MinY - v19;
        *(v24 + 19) = v20;
        *(v24 + 20) = v21;
      }

      v6 += 32;
      --v5;
    }

    while (v5);
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  return v7;
}

uint64_t sub_B88C8()
{

  return swift_deallocClassInstance();
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_B8950(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 65))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_B8970(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
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

  *(result + 65) = v3;
  return result;
}

__n128 __swift_memcpy136_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_B89F4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
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

uint64_t sub_B8A3C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_B8AAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v24 = a4;
  v25 = a1;
  v26 = a3;
  v27 = a5;
  v6 = sub_141C9C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_14351C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v23 - v15;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1426DC();

  v17 = sub_141C8C();
  (*(v7 + 8))(v9, v6);
  v18 = v24;
  if ((v17 & 1) == 0 || (sub_14154C() & 1) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1426DC();
  }

  sub_14350C();
  v19 = swift_allocObject();
  v20 = v26;
  v19[2] = v25;
  v19[3] = a2;
  v19[4] = v20;
  v19[5] = v18;
  (*(v11 + 16))(v13, v16, v10);
  v21 = swift_allocObject();
  *(v21 + 16) = sub_BAE88;
  *(v21 + 24) = v19;
  sub_BB134();
  sub_BB18C();

  sub_142A5C();
  return (*(v11 + 8))(v16, v10);
}

void sub_B8DCC(uint64_t a1@<X2>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  v6 = sub_140ABC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3288, &qword_14D690);
  sub_142A4C();
  sub_B9E50(a2, v9);
  v11 = v10;
  LOBYTE(a2) = v12;
  (*(v7 + 8))(v9, v6);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1426DC();

  LOBYTE(v7) = v14[15] & ~a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1426DC();

  v13 = v14[14];
  *a3 = v11;
  *(a3 + 8) = a2 & 1;
  *(a3 + 16) = a1;
  *(a3 + 24) = v7 & 1;
  *(a3 + 25) = v13;
}

uint64_t sub_B8FA0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C6890, &unk_152280);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v10 - v5;
  sub_14294C();
  v10[3] = sub_14339C();
  (*(v1 + 16))(v3, v6, v0);
  swift_getOpaqueTypeConformance2();
  v7 = sub_142AAC();
  v8 = sub_142AAC();
  result = (*(v1 + 8))(v6, v0);
  qword_1C65C0 = v7;
  *algn_1C65C8 = v8;
  return result;
}

uint64_t sub_B9118()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0EE8, &qword_14B6E0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v10 - v5;
  sub_14295C();
  v10[3] = sub_1433AC();
  (*(v1 + 16))(v3, v6, v0);
  swift_getOpaqueTypeConformance2();
  v7 = sub_142AAC();
  v8 = sub_142AAC();
  result = (*(v1 + 8))(v6, v0);
  qword_1C65D0 = v7;
  *algn_1C65D8 = v8;
  return result;
}

uint64_t sub_B9290@<X0>(uint64_t a1@<X0>, char a2@<W1>, int a3@<W3>, uint64_t a4@<X8>)
{
  v75 = a3;
  v74 = a4;
  v6 = sub_142BEC();
  v72 = *(v6 - 8);
  v73 = v6;
  __chkstk_darwin(v6);
  v70 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1430DC();
  __chkstk_darwin(v8 - 8);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C6868, &unk_152260);
  v69 = *(v71 - 8);
  __chkstk_darwin(v71);
  v68 = &v62 - v9;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C6870, &qword_155CE0);
  __chkstk_darwin(v66);
  v67 = &v62 - v10;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C6878, &qword_152270);
  __chkstk_darwin(v65);
  v62 = &v62 - v11;
  v12 = sub_BB404(a1, a2 & 1);
  v14 = v13;
  sub_1430CC();
  v80._countAndFlagsBits = 0x6954207065656C53;
  v80._object = 0xEC0000002072656DLL;
  sub_1430BC(v80);
  v64 = v12;
  v81._countAndFlagsBits = v12;
  v63 = v14;
  v81._object = v14;
  sub_1430AC(v81);
  v82._countAndFlagsBits = 0;
  v82._object = 0xE000000000000000;
  sub_1430BC(v82);
  sub_1430FC();
  v15 = sub_1437DC();
  v17 = v16;
  LOBYTE(v14) = v18;
  sub_14371C();
  sub_14369C();

  v19 = sub_1437CC();
  v21 = v20;
  v23 = v22;

  sub_1B4AC(v15, v17, v14 & 1);

  sub_1436DC();
  v24 = sub_14376C();
  v26 = v25;
  v28 = v27;
  sub_1B4AC(v19, v21, v23 & 1);

  if ((v75 & 0x100) != 0)
  {
    if (qword_1C0018 != -1)
    {
      swift_once();
    }

    v29 = &qword_1C65C0;
  }

  else
  {
    if (qword_1C0020 != -1)
    {
      swift_once();
    }

    v29 = &qword_1C65D0;
  }

  v30 = *v29;
  v31 = v29[1];

  v76 = v30;
  v77 = v31;
  sub_BB520();
  v32 = sub_14378C();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  sub_1B4AC(v24, v26, v28 & 1);

  v76 = v32;
  v77 = v34;
  v39 = v36 & 1;
  v78 = v36 & 1;
  v79 = v38;
  v41 = v72;
  v40 = v73;
  v42 = v70;
  (*(v72 + 104))(v70, enum case for DynamicTypeSize.large(_:), v73);
  v43 = v68;
  sub_14398C();
  (*(v41 + 8))(v42, v40);
  sub_1B4AC(v32, v34, v39);

  v44 = sub_14364C();
  sub_14290C();
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v53 = v67;
  (*(v69 + 32))(v67, v43, v71);
  v54 = v53 + *(v66 + 36);
  *v54 = v44;
  *(v54 + 8) = v46;
  *(v54 + 16) = v48;
  *(v54 + 24) = v50;
  *(v54 + 32) = v52;
  *(v54 + 40) = 0;
  if (v75)
  {
    v55 = 1.0;
  }

  else
  {
    v55 = 0.0;
  }

  v56 = v62;
  sub_10358(v53, v62, &qword_1C6870, &qword_155CE0);
  *(v56 + *(v65 + 36)) = v55;
  v57 = v56;
  v58 = v74;
  sub_10358(v57, v74, &qword_1C6878, &qword_152270);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C6888, &qword_152278);
  v60 = (v58 + *(result + 52));
  v61 = v63;
  *v60 = v64;
  v60[1] = v61;
  return result;
}

double sub_B98E0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1426DC();

  return result;
}

uint64_t sub_B9980(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1426DC();

  return v3;
}

double sub_B9A00(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1426DC();

  return v3;
}

uint64_t sub_B9A6C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1426DC();

  return v1;
}

uint64_t sub_B9AE4@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 25))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_B9290(*v1, *(v1 + 8), v2 | *(v1 + 24), a1);
}

uint64_t sub_B9B14()
{
  v1 = sub_141C9C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v14 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C6850, &qword_1521B8);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - v10;
  v12 = OBJC_IVAR____TtCV12NowPlayingUI29NowPlayingSleepTimerRemaining9ViewModel__currentChapterEndTime;
  v14[1] = 0;
  v15 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C17E8, &qword_151EF0);
  sub_14269C();
  (*(v9 + 32))(v0 + v12, v11, v8);
  swift_beginAccess();
  v14[0] = 0x3FF0000000000000;
  sub_14269C();
  swift_endAccess();
  (*(v2 + 104))(v7, enum case for PlaybackController.SleepTimerStopMode.off(_:), v1);
  swift_beginAccess();
  (*(v2 + 16))(v4, v7, v1);
  sub_14269C();
  (*(v2 + 8))(v7, v1);
  swift_endAccess();
  swift_beginAccess();
  v14[0] = 0;
  sub_14269C();
  swift_endAccess();
  swift_beginAccess();
  LOBYTE(v14[0]) = 0;
  sub_14269C();
  swift_endAccess();
  swift_beginAccess();
  LOBYTE(v14[0]) = 0;
  sub_14269C();
  swift_endAccess();
  return v0;
}

void sub_B9E50(uint64_t a1, uint64_t a2)
{
  v34 = a2;
  v37 = a1;
  v2 = sub_14151C();
  v35 = *(v2 - 8);
  v36 = v2;
  __chkstk_darwin(v2);
  v33 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C6840, &qword_1520C0);
  __chkstk_darwin(v4 - 8);
  v6 = &v32 - v5;
  v7 = sub_140ABC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_141C9C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1426DC();

  v15 = (*(v12 + 88))(v14, v11);
  if (v15 == enum case for PlaybackController.SleepTimerStopMode.timer(_:))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1426DC();

    v16 = v38;
    sub_140AAC();
    sub_140A4C();
    v18 = v17;
    (*(v8 + 8))(v10, v7);
    v19 = ceil(v16 - v18);
    if ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v19 > -9.22337204e18)
    {
      if (v19 < 9.22337204e18)
      {
        return;
      }

      goto LABEL_32;
    }

    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (v15 != enum case for PlaybackController.SleepTimerStopMode.off(_:))
  {
    if (v15 == enum case for PlaybackController.SleepTimerStopMode.chapterEnd(_:))
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1426DC();

      if (v39)
      {
        return;
      }

      v20 = v38;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1426DC();

      if (v38 <= 0.0)
      {
        return;
      }

      v15 = sub_14152C();
      v22 = v20 - v21;
      if ((*&v22 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      if (v22 <= -9.22337204e18)
      {
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      if (v22 < 9.22337204e18)
      {
        return;
      }

      __break(1u);
    }

    if (v15 == enum case for PlaybackController.SleepTimerStopMode.assetEnd(_:))
    {
      sub_14155C();
      v24 = v35;
      v23 = v36;
      if ((*(v35 + 48))(v6, 1, v36))
      {
        sub_BB230(v6);
        return;
      }

      v25 = v33;
      (*(v24 + 16))(v33, v6, v23);
      sub_BB230(v6);
      sub_14150C();
      v27 = v26;
      (*(v24 + 8))(v25, v23);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1426DC();

      if (v38 > 0.0)
      {
        sub_14152C();
        if (v27 < v28)
        {
          v28 = v27;
        }

        v29 = floor(v28);
        if (v29 <= -9.22337204e18)
        {
          goto LABEL_35;
        }

        if (v29 >= 9.22337204e18)
        {
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
          goto LABEL_38;
        }

        v30 = *&v29 & 0x7FFFFFFFFFFFFFFFLL;
        v31 = round(v27 - v29);
        if (v30 > 0x7FEFFFFFFFFFFFFFLL || (*&v31 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_37;
        }

        if (v31 <= -9.22337204e18)
        {
LABEL_38:
          __break(1u);
          goto LABEL_39;
        }

        if (v31 >= 9.22337204e18)
        {
LABEL_39:
          __break(1u);
        }
      }
    }

    else if (v15 != enum case for PlaybackController.SleepTimerStopMode.mediaTime(_:))
    {
      (*(v12 + 8))(v14, v11);
    }
  }
}

uint64_t sub_BA4A0()
{
  v1 = OBJC_IVAR____TtCV12NowPlayingUI29NowPlayingSleepTimerRemaining9ViewModel__desiredRate;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C6848, &unk_1521A0);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v4 = OBJC_IVAR____TtCV12NowPlayingUI29NowPlayingSleepTimerRemaining9ViewModel__sleepTimerMode;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2B18, &qword_14CFC0);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = OBJC_IVAR____TtCV12NowPlayingUI29NowPlayingSleepTimerRemaining9ViewModel__isVisible;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2B30, &qword_1521B0);
  v8 = *(*(v7 - 8) + 8);
  v8(v0 + v6, v7);
  v8(v0 + OBJC_IVAR____TtCV12NowPlayingUI29NowPlayingSleepTimerRemaining9ViewModel__isScrubbing, v7);
  v3(v0 + OBJC_IVAR____TtCV12NowPlayingUI29NowPlayingSleepTimerRemaining9ViewModel__fireDate, v2);
  v9 = OBJC_IVAR____TtCV12NowPlayingUI29NowPlayingSleepTimerRemaining9ViewModel__currentChapterEndTime;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C6850, &qword_1521B8);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for NowPlayingSleepTimerRemaining.ViewModel(uint64_t a1)
{
  result = qword_1C6640;
  if (!qword_1C6640)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_BA6D8(uint64_t a1)
{
  sub_46E14(319, &qword_1C6650, &type metadata for Double);
  if (v1 <= 0x3F)
  {
    sub_46D58(319);
    if (v2 <= 0x3F)
    {
      sub_46E14(319, &qword_1C27F8, &type metadata for Bool);
      if (v3 <= 0x3F)
      {
        sub_BA83C(319);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_BA83C(uint64_t a1)
{
  if (!qword_1C6658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C17E8, &qword_151EF0);
    v1 = sub_1426FC();
    if (!v2)
    {
      atomic_store(v1, &qword_1C6658);
    }
  }
}

uint64_t sub_BA8CC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for NowPlayingSleepTimerRemaining.ViewModel(0);
  result = sub_1425BC();
  *a1 = result;
  return result;
}

id sub_BA90C()
{
  v0 = [objc_allocWithZone(AVTimeFormatter) init];
  result = [v0 setStyle:1];
  qword_1C65E0 = v0;
  return result;
}

uint64_t sub_BA97C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_14317C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v11 - v7;
  sub_142F0C();
  (*(v3 + 104))(v5, enum case for ColorSchemeContrast.increased(_:), v2);
  sub_14316C();
  v9 = *(v3 + 8);
  v9(v5, v2);
  v9(v8, v2);

  *a1 = result;
  return result;
}

double sub_BAAE0@<D0>(double *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1426DC();

  result = v4;
  *a2 = v4;
  return result;
}

uint64_t sub_BAB60(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1426EC();
}

double sub_BABDC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1426DC();

  return result;
}

uint64_t sub_BAC5C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_141C9C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v7);
  v10 = &v13 - v9;
  v11 = *(v4 + 16);
  v11(&v13 - v9, a1, v3, v8);
  swift_getKeyPath();
  swift_getKeyPath();
  (v11)(v6, v10, v3);

  sub_1426EC();
  return (*(v4 + 8))(v10, v3);
}

uint64_t sub_BAE48()
{

  return _swift_deallocObject(v0, 48, 7);
}

void sub_BAE94(_BYTE *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1426DC();

  *a4 = v5;
}

uint64_t sub_BAF10(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1426EC();
}

uint64_t sub_BAF80@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t *__return_ptr, char *)@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3288, &qword_14D690);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v18 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C6838, &qword_152070);
  v13 = *(v11 - 8);
  result = v11 - 8;
  if (*(v13 + 64) == v8)
  {
    (*(v7 + 16))(v10, a1, v6);
    a2(&v18, v10);
    result = (*(v7 + 8))(v10, v6);
    v14 = v19;
    v15 = v20;
    v16 = v21;
    v17 = v22;
    *a3 = v18;
    *(a3 + 8) = v14;
    *(a3 + 16) = v15;
    *(a3 + 24) = v16;
    *(a3 + 25) = v17;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_BB0F4()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_BB134()
{
  result = qword_1C3278;
  if (!qword_1C3278)
  {
    sub_14351C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C3278);
  }

  return result;
}

unint64_t sub_BB18C()
{
  result = qword_1C6830;
  if (!qword_1C6830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C6830);
  }

  return result;
}

uint64_t sub_BB230(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C6840, &qword_1520C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy26_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t sub_BB2C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 26))
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

uint64_t sub_BB30C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 26) = 1;
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

    *(result + 26) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_BB364()
{
  result = qword_1C6858;
  if (!qword_1C6858)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C6860, &qword_152208);
    sub_BB18C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C6858);
  }

  return result;
}

uint64_t sub_BB404(uint64_t a1, char a2)
{
  if (a2)
  {
    v2 = [objc_opt_self() mainBundle];
    v9._countAndFlagsBits = 0xE000000000000000;
    v10._object = 0x8000000000162320;
    v10._countAndFlagsBits = 0xD000000000000010;
    v11.value._countAndFlagsBits = 0;
    v11.value._object = 0;
    v3.super.isa = v2;
    v12._countAndFlagsBits = 0;
    v12._object = 0xE000000000000000;
    v4 = sub_1409DC(v10, v11, v3, v12, 0, v9);
  }

  else
  {
    if (qword_1C0028 != -1)
    {
      v8 = a1;
      swift_once();
      a1 = v8;
    }

    v5 = a1;
    if (a1 < 0)
    {
      v5 = 0.0;
    }

    v2 = [qword_1C65E0 stringFromSeconds:v5];
    v4 = sub_1448DC();
  }

  v6 = v4;

  return v6;
}

unint64_t sub_BB520()
{
  result = qword_1C6880;
  if (!qword_1C6880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C6880);
  }

  return result;
}

unint64_t sub_BB588()
{
  result = qword_1C6898;
  if (!qword_1C6898)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C6888, &qword_152278);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C6898);
  }

  return result;
}

uint64_t NowPlayingMetricsControllerWrapper.__allocating_init(metricsController:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 40) = 1;
  *(result + 16) = a1;
  return result;
}

Swift::Void __swiftcall NowPlayingMetricsControllerWrapper.willTransitionToMiniPlayer()()
{
  sub_14434C();
  sub_141ECC();
  sub_141EBC();
  v1 = sub_141EAC();
  v3 = v2;

  v4 = sub_141E7C();
  if (!v3)
  {
    goto LABEL_7;
  }

  if (v1 == v4 && v3 == v5)
  {

LABEL_6:
    sub_141EBC();
    sub_141E8C();

LABEL_7:

    goto LABEL_8;
  }

  v6 = sub_1453BC();

  if (v6)
  {
    goto LABEL_6;
  }

LABEL_8:
  *(v0 + 24) = 0;
}

uint64_t NowPlayingMetricsControllerWrapper.didTransitionToFullPlayer(currentlySelectedContentId:)(uint64_t a1)
{
  sub_BBE84(a1);
  result = sub_14434C();
  *(v1 + 24) = 1;
  return result;
}

void NowPlayingMetricsControllerWrapper.updateMetricsPageForNewHostedContent(from:to:with:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = sub_BC044(a1);
  v9 = v8;
  if (v7 == sub_BC044(a2) && v9 == v10)
  {
  }

  else
  {
    v11 = sub_1453BC();

    if ((v11 & 1) == 0)
    {
      sub_BBE84(a2);

      sub_BB9C4(a3, a4 & 1, a2);
    }
  }
}

uint64_t NowPlayingMetricsControllerWrapper.sendEvent(event:)()
{
  v0 = sub_14465C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_14418C();
  sub_14435C();
  return (*(v1 + 8))(v3, v0);
}

uint64_t NowPlayingMetricsControllerWrapper.updateMetricsPageForNewAdamId(newAdamId:selectedContentId:)(uint64_t result, char a2, uint64_t a3)
{
  if (*(v3 + 40))
  {
    if ((a2 & 1) == 0)
    {
LABEL_7:
      *(v3 + 32) = result;
      v4 = a2 & 1;
      *(v3 + 40) = v4;
      return sub_BB9C4(result, v4, a3);
    }
  }

  else if ((a2 & 1) != 0 || *(v3 + 32) != result)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t NowPlayingMetricsControllerWrapper.init(metricsController:)(uint64_t a1)
{
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  *(v1 + 40) = 1;
  *(v1 + 16) = a1;
  return v1;
}

uint64_t sub_BB9C4(uint64_t a1, char a2, uint64_t a3)
{
  v4 = v3;
  v26 = sub_14477C();
  v8 = *(v26 - 8);
  __chkstk_darwin(v26);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v23 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C6950, &qword_152378);
  __chkstk_darwin(v14 - 8);
  v16 = &v23 - v15;
  v17 = sub_1443AC();
  v24 = *(v17 - 8);
  v25 = v17;
  __chkstk_darwin(v17);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v4 + 24) == 1)
  {
    sub_14434C();
  }

  sub_BC044(a3);
  if ((a2 & 1) == 0)
  {
    *&v27 = a1;
    sub_1CB9C();
    sub_14513C();
  }

  sub_14439C();
  sub_14433C();
  sub_14476C();
  sub_140E2C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C6958, &qword_152380);
  sub_14468C();
  v23 = v4;
  *(swift_allocObject() + 16) = xmmword_14E520;
  sub_14467C();
  sub_14466C();
  sub_14438C();
  v20 = v26;
  (*(v8 + 16))(v10, v13, v26);
  sub_14469C();
  v34 = v27;
  sub_15340(&v34, &qword_1C6960, &qword_152388);
  v33 = v28;
  sub_15340(&v33, &qword_1C6968, &qword_152390);
  v32 = v29;
  sub_15340(&v32, &qword_1C6970, qword_152398);
  sub_2173C(v30, v31);
  (*(v8 + 8))(v13, v20);
  v21 = sub_1446AC();
  (*(*(v21 - 8) + 56))(v16, 0, 1, v21);
  sub_14432C();
  if (*(v23 + 24) == 1)
  {
    sub_14434C();
  }

  return (*(v24 + 8))(v19, v25);
}

uint64_t NowPlayingMetricsControllerWrapper.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

double sub_BBE84(uint64_t a1)
{
  v2 = sub_1417CC();
  v3 = (*(*(v2 - 8) + 48))(a1, 1, v2);
  sub_141ECC();
  sub_141EBC();
  v4 = sub_141EAC();
  v6 = v5;

  v7 = sub_141E7C();
  if (v3 != 1)
  {
    if (v6)
    {
      if (v4 == v7 && v6 == v8)
      {

        goto LABEL_17;
      }

      v11 = sub_1453BC();

      if (v11)
      {
        return result;
      }
    }

    else
    {
    }

    sub_141EBC();
    sub_141E7C();
    sub_141E9C();
LABEL_16:

    goto LABEL_17;
  }

  if (v6)
  {
    if (v4 == v7 && v6 == v8)
    {
    }

    else
    {
      v9 = sub_1453BC();

      if ((v9 & 1) == 0)
      {
        return result;
      }
    }

    sub_141EBC();
    sub_141E8C();
    goto LABEL_16;
  }

LABEL_17:

  return result;
}

uint64_t sub_BC044(uint64_t a1)
{
  v2 = sub_1417CC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v34[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C25B0, &unk_14C900);
  __chkstk_darwin(v6);
  v42 = &v34[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v34[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C1DA0, &qword_14EB20);
  __chkstk_darwin(v11 - 8);
  v37 = &v34[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v40 = &v34[-v14];
  __chkstk_darwin(v15);
  v17 = &v34[-v16];
  __chkstk_darwin(v18);
  v20 = &v34[-v19];
  if (qword_1BFF08 != -1)
  {
    swift_once();
  }

  v21 = __swift_project_value_buffer(v2, static NowPlayingHostedContentID.transcript);
  swift_beginAccess();
  (*(v3 + 16))(v20, v21, v2);
  v38 = *(v3 + 56);
  v38(v20, 0, 1, v2);
  v39 = v6;
  v22 = *(v6 + 48);
  v41 = a1;
  sub_BC6A8(a1, v10);
  sub_BC6A8(v20, &v10[v22]);
  v23 = *(v3 + 48);
  if (v23(v10, 1, v2) == 1)
  {
    sub_15340(v20, &unk_1C1DA0, &qword_14EB20);
    if (v23(&v10[v22], 1, v2) == 1)
    {
      sub_15340(v10, &unk_1C1DA0, &qword_14EB20);
      return sub_141E3C();
    }

    goto LABEL_8;
  }

  sub_BC6A8(v10, v17);
  if (v23(&v10[v22], 1, v2) == 1)
  {
    sub_15340(v20, &unk_1C1DA0, &qword_14EB20);
    (*(v3 + 8))(v17, v2);
LABEL_8:
    v36 = v5;
    sub_15340(v10, &qword_1C25B0, &unk_14C900);
    goto LABEL_9;
  }

  (*(v3 + 32))(v5, &v10[v22], v2);
  sub_BC718();
  v35 = sub_14486C();
  v29 = v5;
  v30 = *(v3 + 8);
  v36 = v29;
  v30();
  sub_15340(v20, &unk_1C1DA0, &qword_14EB20);
  (v30)(v17, v2);
  sub_15340(v10, &unk_1C1DA0, &qword_14EB20);
  if (v35)
  {
    return sub_141E3C();
  }

LABEL_9:
  v24 = v40;
  sub_1417BC();
  v38(v24, 0, 1, v2);
  v25 = *(v39 + 48);
  v26 = v42;
  sub_BC6A8(v41, v42);
  sub_BC6A8(v24, &v26[v25]);
  if (v23(v26, 1, v2) != 1)
  {
    v27 = v37;
    sub_BC6A8(v26, v37);
    if (v23(&v26[v25], 1, v2) != 1)
    {
      v31 = v36;
      (*(v3 + 32))(v36, &v26[v25], v2);
      sub_BC718();
      v32 = sub_14486C();
      v33 = *(v3 + 8);
      v33(v31, v2);
      sub_15340(v24, &unk_1C1DA0, &qword_14EB20);
      v33(v27, v2);
      sub_15340(v26, &unk_1C1DA0, &qword_14EB20);
      if (v32)
      {
        return sub_141E4C();
      }

      return sub_141E2C();
    }

    sub_15340(v24, &unk_1C1DA0, &qword_14EB20);
    (*(v3 + 8))(v27, v2);
LABEL_14:
    sub_15340(v26, &qword_1C25B0, &unk_14C900);
    return sub_141E2C();
  }

  sub_15340(v24, &unk_1C1DA0, &qword_14EB20);
  if (v23(&v26[v25], 1, v2) != 1)
  {
    goto LABEL_14;
  }

  sub_15340(v26, &unk_1C1DA0, &qword_14EB20);
  return sub_141E4C();
}

uint64_t sub_BC6A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C1DA0, &qword_14EB20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_BC718()
{
  result = qword_1C25B8;
  if (!qword_1C25B8)
  {
    sub_1417CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C25B8);
  }

  return result;
}

void sub_BC770(uint64_t a1, uint64_t a2, uint64_t (*a3)(), uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v17 = OBJC_IVAR____TtC12NowPlayingUI23CompositeCollectionView_isPerformingBatchUpdates;
  v16 = v4[OBJC_IVAR____TtC12NowPlayingUI23CompositeCollectionView_isPerformingBatchUpdates];
  v7 = swift_allocObject();
  v7[2] = v4;
  v7[3] = a1;
  v7[4] = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_BDC08;
  *(v8 + 24) = v7;
  v23 = sub_7B6EC;
  v24 = v8;
  aBlock = _NSConcreteStackBlock;
  v20 = 1107296256;
  v21 = sub_D78F4;
  v22 = &block_descriptor_12;
  v9 = _Block_copy(&aBlock);
  v10 = v4;

  sub_2172C(a1, a2);

  if (a3)
  {
    v23 = a3;
    v24 = a4;
    aBlock = _NSConcreteStackBlock;
    v20 = 1107296256;
    v21 = sub_4D7D0;
    v22 = &block_descriptor_6;
    v11 = _Block_copy(&aBlock);
  }

  else
  {
    v11 = 0;
  }

  v18.receiver = v10;
  v18.super_class = ObjectType;
  objc_msgSendSuper2(&v18, "performBatchUpdates:completion:", v9, v11);
  _Block_release(v11);
  _Block_release(v9);
  v4[v17] = v16;

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

id sub_BCA0C(void *a1, void *a2)
{
  ObjectType = swift_getObjectType();
  v6 = sub_140C2C();
  v66 = *(v6 - 8);
  v67 = v6;
  __chkstk_darwin(v6);
  v65 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v56 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0D50, &unk_14A6D0);
  __chkstk_darwin(v11 - 8);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v56 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0D58, qword_1523D0);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v22 = __chkstk_darwin(v21).n128_u64[0];
  v64 = &v56 - v23;
  v69.receiver = v2;
  v69.super_class = ObjectType;
  result = objc_msgSendSuper2(&v69, "_applyLayoutAttributes:toView:", a1, a2, v22);
  if (a1 && a2)
  {
    v68.receiver = v2;
    v68.super_class = ObjectType;
    v25 = a1;
    v61 = a2;
    v26 = objc_msgSendSuper2(&v68, "collectionViewLayout");
    type metadata accessor for CompositeCollectionViewLayout();
    swift_dynamicCastClassUnconditional();

    v27 = [v25 indexPath];
    sub_140BAC();

    v62 = v25;
    v28 = [v25 representedElementCategory];
    v60 = *(v18 + 56);
    v60(v13, 1, 1, v17);
    v29 = sub_140C0C();
    v63 = v20;
    if (v29 == 2)
    {
      v30 = sub_140BFC();
    }

    else if (v29 <= 0)
    {
      v30 = sub_14093C();
    }

    else
    {
      v30 = sub_140C3C();
    }

    sub_9E3E8(v30, v28, 0, 0, v70);
    v31 = v70[0];
    if (v70[0])
    {
      v59 = v70[1];
      v58 = v70[2];
      v57 = v71;
      v32 = v72;
      if (sub_140C0C() >= 2)
      {
        v34 = sub_140C0C();
        v56 = v32;
        if (v34 == 2)
        {
          sub_140BEC();
        }

        else if (v34 <= 2)
        {
          sub_14093C();
        }

        else
        {
          sub_140C3C();
        }

        v33 = v65;
        sub_140BDC();
      }

      else
      {
        v33 = v65;
        sub_140C1C();
      }

      sub_15340(v13, &qword_1C0D50, &unk_14A6D0);
      v36 = v66;
      v35 = v67;
      v65 = *(v66 + 8);
      (v65)(v10, v67);
      v37 = *(v17 + 48);
      v38 = v59;
      *v13 = v31;
      *(v13 + 1) = v38;
      *(v13 + 2) = v58;
      v13[24] = v57 & 1;
      (*(v36 + 32))(&v13[v37], v33, v35);
      v60(v13, 0, 1, v17);
    }

    else
    {

      v65 = *(v66 + 8);
      (v65)(v10, v67);
    }

    sub_10358(v13, v16, &qword_1C0D50, &unk_14A6D0);
    v39 = (*(v18 + 48))(v16, 1, v17);
    v40 = v63;
    if (v39 == 1)
    {

      return sub_15340(v16, &qword_1C0D50, &unk_14A6D0);
    }

    else
    {
      v41 = v64;
      sub_10358(v16, v64, &qword_1C0D58, qword_1523D0);
      sub_103C0(v41, v40);
      v42 = *(v40 + 8);
      v43 = *(v17 + 48);
      v44 = swift_getObjectType();
      v45 = *(v42 + 8);
      v46 = v61;
      v47 = v45(v44, v42);
      swift_unknownObjectRelease();
      [v47 music_inheritedLayoutInsets];
      v49 = v48;
      v51 = v50;
      v53 = v52;
      v55 = v54;

      [v46 music_setLayoutInsets:{v49, v51, v53, v55}];
      sub_15340(v41, &qword_1C0D58, qword_1523D0);
      return (v65)(v40 + v43, v67);
    }
  }

  return result;
}

void sub_BD224(SEL *a1)
{
  ObjectType = swift_getObjectType();
  v16.receiver = v1;
  v16.super_class = ObjectType;
  v14 = a1;
  if ((objc_msgSendSuper2(&v16, *a1) & 1) == 0)
  {
    v15.receiver = v1;
    v15.super_class = ObjectType;
    v4 = [(SEL *)&v15 collectionViewLayout];
    type metadata accessor for CompositeCollectionViewLayout();
    swift_dynamicCastClassUnconditional();

    v5 = sub_9E1E0();
    v6 = (v5 + 40);
    v7 = -*(v5 + 16);
    v8 = -1;
    while (1)
    {
      if (v7 + v8 == -1)
      {
LABEL_6:

        return;
      }

      if (++v8 >= *(v5 + 16))
      {
        break;
      }

      v9 = v6 + 4;
      v10 = *v6;
      v11 = swift_getObjectType();
      v12 = *(v10 + 8);
      swift_unknownObjectRetain();
      v13 = v12(v11, v10);
      LOBYTE(v11) = [v13 *v14];
      swift_unknownObjectRelease();

      v6 = v9;
      if (v11)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }
}

id sub_BD3B8(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v7.receiver = a1;
  v7.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v7, *a4, a3);
}

void sub_BD484()
{
  v3.receiver = v0;
  v3.super_class = swift_getObjectType();
  v1 = objc_msgSendSuper2(&v3, "collectionViewLayout");
  type metadata accessor for CompositeCollectionViewLayout();
  v2 = swift_dynamicCastClass();

  if (!v2)
  {
    sub_1451EC(60);
    swift_getObjectType();
    v4._countAndFlagsBits = sub_1454BC();
    sub_14494C(v4);

    v5._object = 0x8000000000165280;
    v5._countAndFlagsBits = 0xD00000000000003ALL;
    sub_14494C(v5);
    sub_1452FC();
    __break(1u);
  }
}

id sub_BD5C0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v6.receiver = v1;
  v6.super_class = ObjectType;
  result = objc_msgSendSuper2(&v6, "dataSource");
  if (result)
  {
    swift_unknownObjectRelease();
    v5.receiver = v1;
    v5.super_class = ObjectType;
    if (!objc_msgSendSuper2(&v5, "dataSource") || (type metadata accessor for CompositeCollectionViewController(), v4 = swift_dynamicCastClass(), result = swift_unknownObjectRelease(), !v4))
    {
      sub_1451EC(61);
      swift_getObjectType();
      v7._countAndFlagsBits = sub_1454BC();
      sub_14494C(v7);

      v8._object = 0x8000000000165240;
      v8._countAndFlagsBits = 0xD00000000000003BLL;
      sub_14494C(v8);
      result = sub_1452FC();
      __break(1u);
    }
  }

  return result;
}

id sub_BD708(void *a1, uint64_t a2, SEL *a3)
{
  v6.receiver = a1;
  v6.super_class = swift_getObjectType();
  v4 = objc_msgSendSuper2(&v6, *a3);

  return v4;
}

void sub_BD780(void *a1, uint64_t a2, uint64_t a3, const char **a4, void (*a5)(id))
{
  v11.receiver = a1;
  v11.super_class = swift_getObjectType();
  v8 = *a4;
  swift_unknownObjectRetain();
  v9 = v11.receiver;
  v10 = objc_msgSendSuper2(&v11, v8, a3);
  a5(v10);
  swift_unknownObjectRelease();
}

id sub_BD800()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v6.receiver = v1;
  v6.super_class = ObjectType;
  result = objc_msgSendSuper2(&v6, "delegate");
  if (result)
  {
    swift_unknownObjectRelease();
    v5.receiver = v1;
    v5.super_class = ObjectType;
    if (!objc_msgSendSuper2(&v5, "delegate") || (type metadata accessor for CompositeCollectionViewController(), v4 = swift_dynamicCastClass(), result = swift_unknownObjectRelease(), !v4))
    {
      sub_1451EC(58);
      swift_getObjectType();
      v7._countAndFlagsBits = sub_1454BC();
      sub_14494C(v7);

      v8._object = 0x8000000000165200;
      v8._countAndFlagsBits = 0xD000000000000038;
      sub_14494C(v8);
      result = sub_1452FC();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_BDBC0()
{
  if (*(v0 + 24))
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_BDC08()
{
  v1 = *(v0 + 24);
  *(*(v0 + 16) + OBJC_IVAR____TtC12NowPlayingUI23CompositeCollectionView_isPerformingBatchUpdates) = 1;
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_BDC78()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

void sub_BDCC4(void *a1, void *a2, uint64_t a3, uint64_t a4, int a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  v60 = a5;
  v62 = a3;
  v63 = a4;
  v61 = a2;
  v59 = sub_140C2C();
  v14 = *(v59 - 8);
  __chkstk_darwin(v59);
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v18 = __chkstk_darwin(v17).n128_u64[0];
  v20 = &v57 - v19;
  [a1 copy];
  sub_14514C();
  swift_unknownObjectRelease();
  sub_2B860(0, &qword_1C5C48, UICollectionViewLayoutAttributes_ptr);
  swift_dynamicCast();
  v58 = v64;
  v21 = [a1 indexPath];
  sub_140BAC();

  v22 = [a1 representedElementCategory];
  v23 = [a1 representedElementKind];
  if (v23)
  {
    v24 = v23;
    v25 = sub_1448DC();
    v27 = v26;
  }

  else
  {
    v25 = 0;
    v27 = 0;
  }

  v28 = sub_140C0C();
  if (v28 == 2)
  {
    v29 = sub_140BFC();
  }

  else if (v28 <= 0)
  {
    v29 = sub_14093C();
  }

  else
  {
    v29 = sub_140C3C();
  }

  v30 = v29;
  if (v22 == &dword_0 + 2)
  {
    v31 = sub_9E1E0();
    v32 = sub_12B8AC(v61, v62, v63, v60 & 1, v31);
    v34 = v33;

    if (v34)
    {
      v35 = 0;
    }

    else
    {
      v35 = v32;
    }

    v36 = __OFADD__(v35, 1);
    v37 = v35 + 1;
    if (v36)
    {
      __break(1u);
    }

    else
    {
      v38 = 1000000 * v37;
      if ((v37 * 1000000) >> 64 == (1000000 * v37) >> 63)
      {
        v36 = __OFADD__(v30, v38);
        v30 += v38;
        if (!v36)
        {
          goto LABEL_28;
        }

        __break(1u);
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_47;
  }

LABEL_18:
  v39 = sub_1448DC();
  if (v27)
  {
    if (v25 == v39 && v27 == v40)
    {

      goto LABEL_24;
    }

    v41 = sub_1453BC();

    if (v41)
    {
LABEL_24:
      v42 = sub_9E1E0();
      v43 = sub_12B8AC(v61, v62, v63, v60 & 1, v42);
      v45 = v44;

      if (v45)
      {
        v30 = 0;
      }

      else
      {
        v30 = v43;
      }

LABEL_28:
      v47 = sub_140C0C();
      v48 = v59;
      if (v47 == 2)
      {
        if (v30 != sub_140BFC())
        {
          goto LABEL_35;
        }

LABEL_33:

        (*(v14 + 32))(v20, v16, v48);
LABEL_44:
        isa = sub_140B9C().super.isa;
        (*(v14 + 8))(v20, v48);
        v51 = v58;
        [v58 setIndexPath:isa];

        [a1 center];
        v53 = v52;
        v55 = v54;
        v65.origin.x = a6;
        v65.origin.y = a7;
        v65.size.width = a8;
        v65.size.height = a9;
        v56 = v53 + CGRectGetMinX(v65);
        v66.origin.x = a6;
        v66.origin.y = a7;
        v66.size.width = a8;
        v66.size.height = a9;
        [v51 setCenter:{v56, v55 + CGRectGetMinY(v66)}];
        return;
      }

      if (v47 <= 0)
      {
        if (v30 == sub_14093C())
        {
          goto LABEL_33;
        }
      }

      else if (v30 == sub_140C3C())
      {
        goto LABEL_33;
      }

LABEL_35:
      if (sub_140C0C() >= 2)
      {
        v49 = sub_140C0C();
        if (v49 == 2)
        {
          sub_140BEC();
        }

        else if (v49 <= 2)
        {
          sub_14093C();
        }

        else
        {
          sub_140C3C();
        }

        sub_140BDC();
      }

      else
      {
        sub_140C1C();
      }

      (*(v14 + 8))(v16, v48);
      goto LABEL_44;
    }
  }

  else
  {
  }

  v46 = sub_9EA88(v61, v62, v63, v60 & 1);
  v36 = __OFADD__(v30, v46);
  v30 += v46;
  if (!v36)
  {
    goto LABEL_28;
  }

LABEL_47:
  __break(1u);
}

void sub_BE1D8(uint64_t a1)
{
  v35.receiver = v1;
  v35.super_class = type metadata accessor for CompositeCollectionViewLayout();
  objc_msgSendSuper2(&v35, "prepareLayout");
  v2 = [v1 collectionView];
  if (v2)
  {
    v3 = v2;
    [v2 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    [v3 contentInset];
    v16 = UIEdgeInsetsInsetRect(v5, v7, v9, v11, v12, v13, v14, v15);
    v18 = OBJC_IVAR____TtC12NowPlayingUI29CompositeCollectionViewLayout_layoutData;
    v19 = *&v1[OBJC_IVAR____TtC12NowPlayingUI29CompositeCollectionViewLayout_layoutData];
    if (!v19 || (*(v19 + 24) == v16 ? (v20 = *(v19 + 32) == v17) : (v20 = 0), !v20))
    {
      *&v1[v18] = sub_C28D4(v16, v17);
    }

    v21 = [objc_allocWithZone(type metadata accessor for CompositeCollectionViewLayout.InvalidationContext()) init];
    v22 = *&v1[v18];

    sub_C1AF0(v21, v22);

    v23 = OBJC_IVAR____TtCC12NowPlayingUI29CompositeCollectionViewLayout19InvalidationContext_componentInvalidationReferences;
    swift_beginAccess();
    v24 = *(*&v21[v23] + 16);
    if (v24)
    {
      v33 = v21;
      v34 = v3;
      v25 = ( + 64);
      do
      {
        v26 = *(v25 - 3);
        v27 = *v25;
        v25 += 5;
        ObjectType = swift_getObjectType();
        v29 = *(v26 + 8);
        swift_unknownObjectRetain();
        v30 = v27;
        v31 = v29(ObjectType, v26);
        v32 = [v31 collectionViewLayout];

        [v32 invalidateLayoutWithContext:v30];
        swift_unknownObjectRelease();

        --v24;
      }

      while (v24);
    }

    else
    {
    }
  }
}

void sub_BE4C8(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6)
{
  v67 = sub_140C2C();
  __chkstk_darwin(v67);
  v66 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _swiftEmptyArrayStorage;
  v88 = _swiftEmptyArrayStorage;
  v69 = v6;
  v14 = *(v6 + OBJC_IVAR____TtC12NowPlayingUI29CompositeCollectionViewLayout_layoutData);
  if (!v14)
  {
    return;
  }

  v65 = v11;

  v15 = sub_B8620(a1, a2, a3, a4);
  v16 = v15;
  v17 = *(v15 + 2);
  v73 = v14;
  v71 = v17;
  if (!v17)
  {

    if (!(_swiftEmptyArrayStorage >> 62))
    {
      goto LABEL_25;
    }

LABEL_41:
    v42 = sub_14531C();
    if (!v42)
    {
      goto LABEL_42;
    }

LABEL_26:
    if (v42 >= 1)
    {
      v43 = OBJC_IVAR____TtC12NowPlayingUI29CompositeCollectionViewLayout_decorationLayoutAttributes;
      v44 = v13 & 0xC000000000000001;
      swift_beginAccess();
      v45 = 0;
      v74 = (v65 + 8);
      v75 = v13 & 0xC000000000000001;
      v46 = &selRef_metadataObject;
      v76 = v13;
      while (1)
      {
        if (v44)
        {
          v55 = sub_1451FC();
        }

        else
        {
          v55 = *(v13 + 8 * v45 + 32);
        }

        v56 = v55;
        if ([v55 v46[424]] != &dword_0 + 2)
        {
          goto LABEL_31;
        }

        v57 = [v56 representedElementKind];
        if (!v57)
        {
          goto LABEL_31;
        }

        v58 = v57;
        v59 = sub_1448DC();
        v61 = v60;

        v62 = *(v69 + v43);
        if (*(v62 + 16))
        {

          v63 = sub_F7CB0(v59, v61);
          if (v64)
          {
            v47 = *(*(v62 + 56) + 8 * v63);

            goto LABEL_30;
          }
        }

        v47 = sub_13ACC8(_swiftEmptyArrayStorage);
LABEL_30:
        v48 = [v56 indexPath];
        v49 = v66;
        sub_140BAC();

        v50 = v56;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v78[0] = v47;
        sub_1388D8(v50, v49, isUniquelyReferenced_nonNull_native);
        (*v74)(v49, v67);
        v52 = v78[0];
        v53 = v69;
        swift_beginAccess();
        v54 = swift_isUniquelyReferenced_nonNull_native();
        v77 = *(v53 + v43);
        *(v53 + v43) = 0x8000000000000000;
        sub_13875C(v52, v59, v61, v54);

        *(v53 + v43) = v77;
        swift_endAccess();
        v44 = v75;
        v13 = v76;
        v46 = &selRef_metadataObject;
LABEL_31:
        ++v45;

        if (v42 == v45)
        {
          goto LABEL_42;
        }
      }
    }

LABEL_45:
    __break(1u);
    return;
  }

  v18 = 0;
  v70 = v15 + 32;
  v68 = v15;
  do
  {
    v19 = &v70[136 * v18];
    v79 = *v19;
    v20 = *(v19 + 1);
    v21 = *(v19 + 2);
    v22 = *(v19 + 4);
    v82 = *(v19 + 3);
    v83 = v22;
    v80 = v20;
    v81 = v21;
    v23 = *(v19 + 5);
    v24 = *(v19 + 6);
    v25 = *(v19 + 7);
    v87 = *(v19 + 16);
    v85 = v24;
    v86 = v25;
    v84 = v23;
    v26 = v79;
    v75 = v80;
    LODWORD(v74) = BYTE8(v80);
    ObjectType = swift_getObjectType();
    v28 = *(*(&v26 + 1) + 8);
    sub_C30B4(&v79, v78);
    v76 = v26;
    v29 = v28(ObjectType, *(&v26 + 1));
    v30 = [v29 collectionViewLayout];

    v31 = [v30 layoutAttributesForElementsInRect:{*(&v85 + 1), v86, v87}];
    if (!v31)
    {
      sub_C3110(&v79);
      goto LABEL_21;
    }

    v72 = v18;
    sub_2B860(0, &qword_1C5C48, UICollectionViewLayoutAttributes_ptr);
    v32 = sub_1449DC();

    v77 = _swiftEmptyArrayStorage;
    v33 = v81;
    v34 = v82;
    if (v32 >> 62)
    {
      v35 = sub_14531C();
      if (v35)
      {
LABEL_7:
        if (v35 < 1)
        {
          __break(1u);
          goto LABEL_45;
        }

        for (i = 0; i != v35; ++i)
        {
          if ((v32 & 0xC000000000000001) != 0)
          {
            v37 = sub_1451FC();
          }

          else
          {
            v37 = *(v32 + 8 * i + 32);
          }

          v38 = v37;
          sub_C30B4(&v79, v78);
          sub_BDCC4(v38, v76, *(&v26 + 1), v75, v74, v33.x, v33.y, v34.width, v34.height);
          v40 = v39;
          sub_C3110(&v79);
          [v40 frame];
          v90.origin = v33;
          v90.size = v34;
          if (CGRectIntersectsRect(v89, v90))
          {
            v41 = v40;
            sub_1449BC();
            if (*(&dword_10 + (v77 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v77 & 0xFFFFFFFFFFFFFF8)) >> 1)
            {
              sub_1449FC();
            }

            sub_144A2C();

            v13 = v77;
          }

          else
          {
          }
        }
      }
    }

    else
    {
      v35 = *(&dword_10 + (v32 & 0xFFFFFFFFFFFFFF8));
      if (v35)
      {
        goto LABEL_7;
      }
    }

    sub_A7448(v13);
    sub_C3110(&v79);
    v13 = _swiftEmptyArrayStorage;
    v16 = v68;
    v18 = v72;
LABEL_21:
    if (++v18 == v71)
    {
      goto LABEL_24;
    }
  }

  while (v18 < *(v16 + 2));
  __break(1u);
LABEL_24:

  v13 = v88;
  if (v88 >> 62)
  {
    goto LABEL_41;
  }

LABEL_25:
  v42 = *(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8));
  if (v42)
  {
    goto LABEL_26;
  }

LABEL_42:
}

void *sub_BECD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_140C2C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_C2A0C(a3, 2, a1, a2, v4, a1, a2, &selRef_layoutAttributesForDecorationViewOfKind_atIndexPath_);
  v13 = v12;

  if (v13)
  {
    v14 = v13;
    v15 = [v14 representedElementKind];
    if (!v15)
    {
LABEL_9:

      return v13;
    }

    v16 = v15;
    v29 = sub_1448DC();
    v18 = v17;

    v19 = OBJC_IVAR____TtC12NowPlayingUI29CompositeCollectionViewLayout_decorationLayoutAttributes;
    swift_beginAccess();
    v20 = *(v4 + v19);
    if (*(v20 + 16))
    {

      v21 = sub_F7CB0(v29, v18);
      if (v22)
      {
        v23 = *(*(v20 + 56) + 8 * v21);

LABEL_8:
        v24 = [v14 indexPath];
        sub_140BAC();

        v14 = v14;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v31 = v23;
        sub_1388D8(v14, v11, isUniquelyReferenced_nonNull_native);
        (*(v9 + 8))(v11, v8);
        v26 = v31;
        swift_beginAccess();
        v27 = swift_isUniquelyReferenced_nonNull_native();
        v30 = *(v4 + v19);
        *(v4 + v19) = 0x8000000000000000;
        sub_13875C(v26, v29, v18, v27);

        *(v4 + v19) = v30;
        swift_endAccess();
        goto LABEL_9;
      }
    }

    v23 = sub_13ACC8(_swiftEmptyArrayStorage);
    goto LABEL_8;
  }

  return v13;
}

void sub_BF270(uint64_t a1, uint64_t a2)
{
  v3 = sub_140C2C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v82 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v79 = &v64 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C6A60, &qword_152478);
  __chkstk_darwin(v8 - 8);
  v10 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v64 - v12;
  v14 = sub_14489C();
  v15 = type metadata accessor for CompositeCollectionViewLayout();
  v87.receiver = v2;
  v87.super_class = v15;
  v16 = objc_msgSendSuper2(&v87, "indexPathsToDeleteForDecorationViewOfKind:", v14);

  v71 = sub_1449DC();
  v73 = v2;
  v17 = *&v2[OBJC_IVAR____TtC12NowPlayingUI29CompositeCollectionViewLayout_lastDecorationLayoutAttributes];
  v18 = v17 + 64;
  v19 = 1 << *(v17 + 32);
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  else
  {
    v20 = -1;
  }

  v21 = v20 & *(v17 + 64);
  v22 = (v19 + 63) >> 6;
  v84 = v4 + 16;
  v85 = v4;
  v77 = v4 + 32;
  v81 = (v4 + 8);
  v67 = v17;

  v23 = 0;
  v70 = xmmword_14A710;
  v78 = v10;
  v86 = v13;
  v66 = v18;
  v65 = v22;
  v76 = v3;
LABEL_6:
  if (v21)
  {
    v24 = v23;
LABEL_11:
    v69 = (v21 - 1) & v21;
    v68 = v24;
    v25 = __clz(__rbit64(v21)) | (v24 << 6);
    v26 = (*(v67 + 48) + 16 * v25);
    v27 = *(*(v67 + 56) + 8 * v25);
    v28 = v26[1];
    v74 = *v26;
    v75 = v28;
    v29 = v27 + 64;
    v30 = 1 << *(v27 + 32);
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    else
    {
      v31 = -1;
    }

    v32 = v31 & *(v27 + 64);
    v72 = (v30 + 63) >> 6;

    v80 = v27;

    v33 = 0;
    v83 = v27 + 64;
    while (v32)
    {
      v35 = v33;
LABEL_27:
      v38 = __clz(__rbit64(v32));
      v32 &= v32 - 1;
      v39 = v38 | (v35 << 6);
      v40 = v80;
      v41 = v85;
      (*(v85 + 16))(v79, *(v80 + 48) + *(v85 + 72) * v39, v3);
      v42 = *(*(v40 + 56) + 8 * v39);
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C6A68, &qword_152480);
      v44 = *(v43 + 48);
      v10 = v78;
      (*(v41 + 32))();
      *&v10[v44] = v42;
      (*(*(v43 - 8) + 56))(v10, 0, 1, v43);
      v45 = v42;
      v13 = v86;
LABEL_28:
      sub_10358(v10, v13, &qword_1C6A60, &qword_152478);
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C6A68, &qword_152480);
      if ((*(*(v46 - 8) + 48))(v13, 1, v46) == 1)
      {

        v23 = v68;
        v18 = v66;
        v22 = v65;
        v21 = v69;
        goto LABEL_6;
      }

      v47 = *&v13[*(v46 + 48)];
      if ([v47 representedElementCategory] == &dword_0 + 2)
      {
        v48 = [v47 indexPath];
        v49 = v82;
        sub_140BAC();

        v50 = sub_14489C();
        isa = sub_140B9C().super.isa;
        v52 = [v73 layoutAttributesForDecorationViewOfKind:v50 atIndexPath:isa];

        if (v52)
        {

          v3 = v76;
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C6A70, qword_152488);
          v54 = v85;
          v55 = (*(v85 + 80) + 32) & ~*(v85 + 80);
          v56 = swift_allocObject();
          *(v56 + 16) = v70;
          (*(v54 + 16))(v56 + v55, v49, v76);
          v57 = v71;
          v58 = *(v71 + 16);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v60 = v57;
          if (!isUniquelyReferenced_nonNull_native || (v61 = v57[3] >> 1, v61 <= v58))
          {
            v60 = sub_134448(isUniquelyReferenced_nonNull_native, v58 + 1, 1, v57);
            v61 = v60[3] >> 1;
          }

          if (v61 <= v60[2])
          {
            goto LABEL_42;
          }

          v3 = v76;
          v62 = v60;
          swift_arrayInitWithCopy();

          v63 = v62[2] + 1;
          v71 = v62;
          v62[2] = v63;
        }

        v34 = *v81;
        (*v81)(v82, v3);
        v13 = v86;
      }

      else
      {

        v34 = *v81;
      }

      v29 = v83;
      v34(v13, v3);
    }

    if (v72 <= v33 + 1)
    {
      v36 = v33 + 1;
    }

    else
    {
      v36 = v72;
    }

    v37 = v36 - 1;
    while (1)
    {
      v35 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      if (v35 >= v72)
      {
        v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C6A68, &qword_152480);
        (*(*(v53 - 8) + 56))(v10, 1, 1, v53);
        v32 = 0;
        v33 = v37;
        goto LABEL_28;
      }

      v32 = *(v29 + 8 * v35);
      ++v33;
      if (v32)
      {
        v33 = v35;
        goto LABEL_27;
      }
    }

    __break(1u);
  }

  else
  {
    while (1)
    {
      v24 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v24 >= v22)
      {

        return;
      }

      v21 = *(v18 + 8 * v24);
      ++v23;
      if (v21)
      {
        goto LABEL_11;
      }
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
}

void sub_BFA1C(void *a1)
{
  v2 = v1;
  type metadata accessor for CompositeCollectionViewLayout.InvalidationContext();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = v4;
    v6 = OBJC_IVAR____TtC12NowPlayingUI29CompositeCollectionViewLayout_isInvalidatingLayout;
    v7 = v2[OBJC_IVAR____TtC12NowPlayingUI29CompositeCollectionViewLayout_isInvalidatingLayout];
    v2[OBJC_IVAR____TtC12NowPlayingUI29CompositeCollectionViewLayout_isInvalidatingLayout] = 1;
    v8 = OBJC_IVAR____TtC12NowPlayingUI29CompositeCollectionViewLayout_decorationLayoutAttributes;
    swift_beginAccess();
    *&v2[OBJC_IVAR____TtC12NowPlayingUI29CompositeCollectionViewLayout_lastDecorationLayoutAttributes] = *&v2[v8];
    v9 = a1;

    v10 = *&v2[OBJC_IVAR____TtC12NowPlayingUI29CompositeCollectionViewLayout_lastDecorationLayoutAttributesRevision];
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      return;
    }

    *&v2[OBJC_IVAR____TtC12NowPlayingUI29CompositeCollectionViewLayout_lastDecorationLayoutAttributesRevision] = v11;
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    *(v13 + 24) = v11;

    sub_140D7C();

    v14 = [v2 collectionView];
    if (v14)
    {
      v15 = v14;
      [v14 bounds];
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v23 = v22;
      [v15 contentInset];
      v28 = UIEdgeInsetsInsetRect(v17, v19, v21, v23, v24, v25, v26, v27);
      *&v2[OBJC_IVAR____TtC12NowPlayingUI29CompositeCollectionViewLayout_layoutData] = sub_C28D4(v28, v29);

      v30 = v9;
      sub_C1AF0(v5, 0);
    }

    v31 = OBJC_IVAR____TtCC12NowPlayingUI29CompositeCollectionViewLayout19InvalidationContext_componentInvalidationReferences;
    swift_beginAccess();
    v32 = *(*(v5 + v31) + 16);
    v33 = &selRef_metadataObject;
    if (v32)
    {
      v64 = v6;
      v66 = v9;
      v62 = v7;
      v68 = OBJC_IVAR____TtC12NowPlayingUI29CompositeCollectionViewLayout_countData;
      v34 = ( + 64);
      do
      {
        v35 = *(v34 - 4);
        v36 = *(v34 - 3);
        v71 = *(v34 - 2);
        v69 = *(v34 - 8);
        v37 = *v34;
        v34 += 5;
        ObjectType = swift_getObjectType();
        v39 = v5;
        v40 = v2;
        v41 = *(v36 + 8);
        swift_unknownObjectRetain_n();
        v42 = v37;
        v43 = v41(ObjectType, v36);
        v2 = v40;
        v5 = v39;
        v44 = v43;
        v45 = v42;
        v46 = [v44 collectionViewLayout];
        [v46 invalidateLayoutWithContext:v45];

        v47 = *&v2[v68];

        sub_13B1EC(v45, v39, v47, v35, v36, v71, v69, 0);
        swift_unknownObjectRelease_n();

        --v32;
      }

      while (v32);
      v6 = v64;
      v9 = v66;
      v7 = v62;
      v33 = &selRef_metadataObject;
    }

    else
    {
      if (*(v5 + OBJC_IVAR____TtCC12NowPlayingUI29CompositeCollectionViewLayout19InvalidationContext_sourceComponentItem))
      {
        goto LABEL_11;
      }

      v48 = v5;

      v49 = sub_9E1E0();

      v50 = *(v49 + 16);
      if (v50)
      {
        v63 = v7;
        v65 = v6;
        v67 = v9;
        v70 = v2;
        v72 = v48;
        v51 = (v49 + 40);
        do
        {
          v52 = *v51;
          v53 = swift_getObjectType();
          v54 = *(v52 + 8);
          swift_unknownObjectRetain();
          v55 = v54(v53, v52);
          v56 = [v55 collectionViewLayout];
          [swift_getObjCClassFromObject() invalidationContextClass];
          swift_getObjCClassMetadata();
          sub_2B860(0, &qword_1C6A58, UICollectionViewLayoutInvalidationContext_ptr);
          swift_dynamicCastMetatypeUnconditional();
          v57 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
          v58 = v67;
          [v57 _setInvalidateEverything:{objc_msgSend(v72, "invalidateEverything")}];
          v59 = v33;
          v60 = [v72 invalidateDataSourceCounts];

          v61 = v60;
          v33 = v59;
          [v57 _setInvalidateDataSourceCounts:v61];
          [v56 v59[436]];
          swift_unknownObjectRelease();

          v51 += 4;
          --v50;
        }

        while (v50);
        v2 = v70;
        v5 = v72;
        v6 = v65;
        v9 = v67;
        v7 = v63;
      }

      else
      {
        v5 = v48;
      }
    }

LABEL_11:
    v73.receiver = v2;
    v73.super_class = type metadata accessor for CompositeCollectionViewLayout();
    objc_msgSendSuper2(&v73, v33[436], v5);

    v2[v6] = v7;
  }
}

void sub_BFF60(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (*&Strong[OBJC_IVAR____TtC12NowPlayingUI29CompositeCollectionViewLayout_lastDecorationLayoutAttributesRevision] == a2)
    {
      v4 = Strong;
      *&Strong[OBJC_IVAR____TtC12NowPlayingUI29CompositeCollectionViewLayout_lastDecorationLayoutAttributes] = sub_13AEB0(_swiftEmptyArrayStorage);
    }

    else
    {
    }
  }
}

void sub_C0060(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v5 = v4;
  v10 = [v4 collectionView];
  if (v10)
  {
    v11 = v10;
    v12 = OBJC_IVAR____TtC12NowPlayingUI29CompositeCollectionViewLayout_layoutData;
    if (*&v4[OBJC_IVAR____TtC12NowPlayingUI29CompositeCollectionViewLayout_layoutData])
    {

      [v11 contentInset];
      v14 = v13;
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v86.receiver = v4;
      v86.super_class = type metadata accessor for CompositeCollectionViewLayout();
      if ((objc_msgSendSuper2(&v86, "shouldInvalidateLayoutForBoundsChange:", a1, a2, a3, a4) & 1) != 0 || (UIEdgeInsetsInsetRect(a1, a2, a3, a4, v14, v16, v18, v20), (sub_141AFC() & 1) == 0))
      {
      }

      else
      {
        [v11 bounds];
        v22 = v21;
        v24 = v23;
        v26 = v25;
        rect2 = v27;

        v28 = sub_9E1E0();

        v85 = *(v28 + 16);
        if (v85)
        {
          v66 = v11;
          v29 = 0;
          left = UIEdgeInsetsZero.left;
          right = UIEdgeInsetsZero.right;
          bottom = UIEdgeInsetsZero.bottom;
          v30 = (v28 + 56);
          v71 = v24;
          v72 = v22;
          v70 = v26;
          v83 = a3;
          v74 = a2;
          v75 = a4;
          v73 = a1;
          v81 = v28;
          v82 = v12;
          while (v29 < *(v28 + 16))
          {
            if (*&v5[v12])
            {
              v33 = *(v30 - 3);
              v32 = *(v30 - 2);
              v34 = *(v30 - 1);
              v35 = *v30;
              swift_unknownObjectRetain();

              v36 = [v5 collectionView];
              v37 = v36;
              if (v36)
              {
                v38 = [v36 traitCollection];

                [v38 displayScale];
              }

              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C6A50, &qword_152470);
              sub_14509C();
              sub_B7DBC(v33, v32, v34, v35, &v87);
              v98.origin.x = v22;
              v98.origin.y = v24;
              v98.size.width = v26;
              v98.size.height = rect2;
              v39 = CGRectIntersectsRect(v87, v98);
              sub_B7DBC(v33, v32, v34, v35, &v88);
              v99.origin.x = a1;
              v99.origin.y = a2;
              v99.size.width = a3;
              v99.size.height = a4;
              v40 = CGRectIntersectsRect(v88, v99);
              v41 = v40;
              if (v39 && v40)
              {
                if (v35)
                {
                  v92.origin.x = a1;
                  v92.origin.y = a2;
                  v92.size.width = a3;
                  v92.size.height = a4;
                  Width = CGRectGetWidth(v92);
                }

                else
                {
                  Width = *&v34;
                }

                v93.origin.x = a1;
                v93.origin.y = a2;
                v93.size.width = a3;
                v93.size.height = a4;
                Height = CGRectGetHeight(v93);
                v44 = [v5 collectionView];
                v46 = left;
                top = UIEdgeInsetsZero.top;
                v48 = right;
                v47 = bottom;
                if (v44)
                {
                  v49 = v44;
                  [v44 contentInset];
                  top = v50;
                  v46 = v51;
                  v47 = v52;
                  v48 = v53;
                }

                v79 = Height + top + v47;
                v80 = Width + v46 + v48;
                sub_B7DBC(v33, v32, v34, v35, v89);
                v55 = *v89;
                v54 = *&v89[1];
                v56 = v90;
                v76 = v91;
                rect = v90;
                a1 = v73;
                a2 = v74;
                v94.origin.x = v73;
                v94.origin.y = v74;
                v94.size.width = v83;
                a4 = v75;
                v94.size.height = v75;
                MinX = CGRectGetMinX(v94);
                v95.origin.x = v55;
                v95.origin.y = v54;
                v95.size.width = v56;
                v95.size.height = v76;
                v58 = MinX - CGRectGetMinX(v95);
                if (v58 < 0.0)
                {
                  v58 = 0.0;
                }

                v78 = v58;
                v96.origin.x = v73;
                v96.origin.y = v74;
                v96.size.width = v83;
                v96.size.height = v75;
                MinY = CGRectGetMinY(v96);
                v97.origin.x = v55;
                v97.origin.y = v54;
                v97.size.width = rect;
                v97.size.height = v76;
                v60 = MinY - CGRectGetMinY(v97);
                if (v60 < 0.0)
                {
                  v61 = 0.0;
                }

                else
                {
                  v61 = v60;
                }

                ObjectType = swift_getObjectType();
                v63 = (*(v32 + 8))(ObjectType, v32);
                v64 = [v63 collectionViewLayout];

                v65 = v61;
                a3 = v83;
                LOBYTE(v63) = [v64 shouldInvalidateLayoutForBoundsChange:{v78, v65, v80, v79}];

                swift_unknownObjectRelease();
                v28 = v81;
                v12 = v82;
                v24 = v71;
                v22 = v72;
                v26 = v70;
                if (v63)
                {
LABEL_27:

                  return;
                }
              }

              else
              {

                swift_unknownObjectRelease();
                v31 = v39 == v41;
                v28 = v81;
                v12 = v82;
                if (!v31)
                {
                  goto LABEL_27;
                }
              }
            }

            ++v29;
            v30 += 32;
            if (v85 == v29)
            {

              goto LABEL_32;
            }
          }

          __break(1u);
        }

        else
        {

LABEL_32:
        }
      }
    }

    else
    {
    }
  }
}

uint64_t sub_C0638(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v6 = v5;
  v73.receiver = v5;
  v73.super_class = type metadata accessor for CompositeCollectionViewLayout();
  v11 = objc_msgSendSuper2(&v73, "invalidationContextForBoundsChange:", a2, a3, a4, a5);
  type metadata accessor for CompositeCollectionViewLayout.InvalidationContext();
  v12 = swift_dynamicCastClassUnconditional();
  if (*&v5[OBJC_IVAR____TtC12NowPlayingUI29CompositeCollectionViewLayout_layoutData])
  {

    v13 = [v5 collectionView];
    v14 = v13;
    if (v13)
    {
      v15 = [v13 traitCollection];

      [v15 displayScale];
      v17 = v16;
    }

    else
    {
      v17 = 0.0;
    }

    v58 = v12;
    v74 = v17;
    LOBYTE(v75) = v14 == 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C6A50, &qword_152470);
    sub_14509C();

    v18 = sub_9E1E0();

    v19 = *(v18 + 16);
    if (v19)
    {
      left = UIEdgeInsetsZero.left;
      right = UIEdgeInsetsZero.right;
      bottom = UIEdgeInsetsZero.bottom;
      v20 = (v18 + 56);
      v21 = _swiftEmptyArrayStorage;
      v64 = v6;
      v62 = a3;
      v63 = a5;
      v71 = a2;
      v72 = a4;
      do
      {
        v23 = *(v20 - 3);
        v22 = *(v20 - 2);
        v24 = *(v20 - 1);
        v25 = *v20;
        if (*v20)
        {
          swift_unknownObjectRetain();
          v78.origin.x = a2;
          v78.origin.y = a3;
          v78.size.width = a4;
          v78.size.height = a5;
          Width = CGRectGetWidth(v78);
        }

        else
        {
          Width = *(v20 - 1);
          swift_unknownObjectRetain();
        }

        v79.origin.x = a2;
        v27 = a3;
        v79.origin.y = a3;
        v79.size.width = a4;
        v28 = a5;
        v79.size.height = a5;
        Height = CGRectGetHeight(v79);
        v30 = [v6 collectionView];
        v32 = left;
        top = UIEdgeInsetsZero.top;
        v34 = right;
        v33 = bottom;
        if (v30)
        {
          v35 = v30;
          [v30 contentInset];
          top = v36;
          v32 = v37;
          v33 = v38;
          v34 = v39;
        }

        rect_16 = Height + top + v33;
        rect_24 = Width + v32 + v34;
        v70 = v24;
        sub_B7DBC(v23, v22, v24, v25, &v74);
        v40 = v74;
        v41 = v75;
        v42 = v76;
        v65 = v77;
        rect = v74;
        v80.origin.x = v71;
        v80.origin.y = v27;
        v80.size.width = v72;
        v80.size.height = v28;
        MinX = CGRectGetMinX(v80);
        v81.origin.x = v40;
        v81.origin.y = v41;
        v81.size.width = v42;
        v81.size.height = v65;
        v44 = MinX - CGRectGetMinX(v81);
        if (v44 < 0.0)
        {
          v44 = 0.0;
        }

        rect_8 = v44;
        v82.origin.x = v71;
        v82.origin.y = v27;
        v82.size.width = v72;
        v82.size.height = v28;
        MinY = CGRectGetMinY(v82);
        v83.origin.x = rect;
        v83.origin.y = v41;
        v83.size.width = v42;
        v83.size.height = v65;
        v46 = MinY - CGRectGetMinY(v83);
        if (v46 < 0.0)
        {
          v47 = 0.0;
        }

        else
        {
          v47 = v46;
        }

        ObjectType = swift_getObjectType();
        v49 = *(v22 + 8);
        swift_unknownObjectRetain();
        v50 = v49(ObjectType, v22);
        swift_unknownObjectRelease();
        v51 = [v50 collectionViewLayout];

        v52 = [v51 invalidationContextForBoundsChange:{rect_8, v47, rect_24, rect_16}];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_134EBC(0, *(v21 + 2) + 1, 1, v21);
        }

        v54 = *(v21 + 2);
        v53 = *(v21 + 3);
        a3 = v62;
        a5 = v63;
        a2 = v71;
        a4 = v72;
        if (v54 >= v53 >> 1)
        {
          v21 = sub_134EBC((v53 > 1), v54 + 1, 1, v21);
        }

        *(v21 + 2) = v54 + 1;
        v55 = &v21[40 * v54];
        *(v55 + 4) = v23;
        *(v55 + 5) = v22;
        *(v55 + 6) = v70;
        v55[56] = v25;
        *(v55 + 8) = v52;
        v20 += 32;
        --v19;
        v6 = v64;
      }

      while (v19);
    }

    else
    {
      v21 = _swiftEmptyArrayStorage;
    }

    v56 = OBJC_IVAR____TtCC12NowPlayingUI29CompositeCollectionViewLayout19InvalidationContext_componentInvalidationReferences;
    v12 = v58;
    swift_beginAccess();
    *(v58 + v56) = v21;
  }

  return v12;
}

id sub_C0B6C(void *a1, uint64_t a2)
{
  v5 = sub_140C2C();
  v53 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v42[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v42[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0D50, &unk_14A6D0);
  __chkstk_darwin(v11 - 8);
  v13 = &v42[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v52 = &v42[-v15];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0D58, qword_1523D0);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v49 = &v42[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v19);
  v50 = &v42[-v20];
  if (!*(v3 + OBJC_IVAR____TtC12NowPlayingUI29CompositeCollectionViewLayout_layoutData))
  {
    __break(1u);
LABEL_22:
    result = sub_15340(v2, &qword_1C0D50, &unk_14A6D0);
    __break(1u);
    goto LABEL_23;
  }

  v47 = *(v3 + OBJC_IVAR____TtC12NowPlayingUI29CompositeCollectionViewLayout_layoutData);

  v21 = [a1 indexPath];
  sub_140BAC();

  v48 = a1;
  v22 = [a1 representedElementCategory];
  v46 = *(v17 + 56);
  v46(v13, 1, 1, v16);
  v23 = sub_140C0C();
  v51 = v5;
  if (v23 == 2)
  {
    v24 = sub_140BFC();
  }

  else if (v23 <= 0)
  {
    v24 = sub_14093C();
  }

  else
  {
    v24 = sub_140C3C();
  }

  sub_9E3E8(v24, v22, 0, 0, v54);
  v25 = v54[0];
  if (v54[0])
  {
    v44 = v54[2];
    v45 = v54[1];
    v43 = v55;
    if (sub_140C0C() >= 2)
    {
      v28 = sub_140C0C();
      if (v28 == 2)
      {
        sub_140BEC();
      }

      else if (v28 <= 2)
      {
        sub_14093C();
      }

      else
      {
        sub_140C3C();
      }

      sub_140BDC();
    }

    else
    {
      sub_140C1C();
    }

    sub_15340(v13, &qword_1C0D50, &unk_14A6D0);
    v29 = v53;
    v26 = *(v53 + 8);
    v30 = v51;
    v26(v10, v51);
    v31 = *(v16 + 48);
    *v13 = v25;
    v27 = v30;
    v32 = v44;
    *(v13 + 1) = v45;
    *(v13 + 2) = v32;
    v13[24] = v43 & 1;
    (*(v29 + 32))(&v13[v31], v7, v30);
    v46(v13, 0, 1, v16);
  }

  else
  {
    v26 = *(v53 + 8);
    v27 = v51;
    v26(v10, v51);
  }

  v2 = v52;
  sub_10358(v13, v52, &qword_1C0D50, &unk_14A6D0);
  if ((*(v17 + 48))(v2, 1, v16) == 1)
  {
    goto LABEL_22;
  }

  v33 = v50;
  sub_10358(v2, v50, &qword_1C0D58, qword_1523D0);
  v34 = v49;
  sub_103C0(v33, v49);
  v35 = *(v34 + 1);
  v36 = *(v16 + 48);
  ObjectType = swift_getObjectType();
  v38 = (*(v35 + 8))(ObjectType, v35);
  swift_unknownObjectRelease();
  v39 = [v38 collectionViewLayout];

  v40 = [v39 _decorationViewForLayoutAttributes:v48];
  result = (v26)(&v34[v36], v27);
  if (v40)
  {
    sub_15340(v33, &qword_1C0D58, qword_1523D0);

    return v40;
  }

LABEL_23:
  __break(1u);
  return result;
}

void sub_C116C()
{

  v0 = sub_9E1E0();

  v1 = (v0 + 40);
  v2 = -*(v0 + 16);
  v3 = -1;
  while (1)
  {
    if (v2 + v3 == -1)
    {
LABEL_5:

      return;
    }

    if (++v3 >= *(v0 + 16))
    {
      break;
    }

    v4 = v1 + 4;
    v5 = *v1;
    ObjectType = swift_getObjectType();
    v7 = *(v5 + 8);
    swift_unknownObjectRetain();
    v8 = v7(ObjectType, v5);
    v9 = [v8 collectionViewLayout];

    LODWORD(v8) = [v9 canBeEdited];
    swift_unknownObjectRelease();
    v1 = v4;
    if (v8)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
}

double sub_C1350(char a1)
{

  v2 = sub_9E1E0();

  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v3 - 1;
    for (i = (v2 + 40); ; i += 4)
    {
      v6 = *i;
      ObjectType = swift_getObjectType();
      v8 = *(v6 + 8);
      swift_unknownObjectRetain();
      v9 = v8(ObjectType, v6);
      v10 = [v9 collectionViewLayout];

      if ([v10 canBeEdited])
      {
        [v10 setEditing:a1 & 1];
      }

      swift_unknownObjectRelease();
      if (!v4)
      {
        break;
      }

      --v4;
    }
  }

  return result;
}

void sub_C1480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = a4;
  v63 = a3;
  v7 = sub_140C2C();
  v8 = *(v7 - 8);
  v65 = v7;
  v66 = v8;
  __chkstk_darwin(v7);
  v62 = v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0D50, &unk_14A6D0);
  __chkstk_darwin(v10 - 8);
  v12 = v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v55 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0D58, qword_1523D0);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v20);
  v60 = v55 - v22;
  v59 = a5;
  v58 = OBJC_IVAR____TtC12NowPlayingUI29CompositeCollectionViewLayout_layoutData;
  if (*(a5 + OBJC_IVAR____TtC12NowPlayingUI29CompositeCollectionViewLayout_layoutData))
  {
    v61 = *(v17 + 56);
    v61(v12, 1, 1, v16, v21);

    v23 = sub_140C0C();
    if (v23 == 2)
    {
      v24 = sub_140BFC();
    }

    else if (v23 <= 0)
    {
      v24 = sub_14093C();
    }

    else
    {
      v24 = sub_140C3C();
    }

    sub_9E3E8(v24, a2, v63, v64, v67);
    v25 = v67[0];
    if (v67[0])
    {
      v56 = v15;
      v26 = v19;
      v64 = v67[1];
      v63 = v67[2];
      v57 = v68;
      v27 = v69;
      if (sub_140C0C() >= 2)
      {
        v55[1] = v27;
        v30 = sub_140C0C();
        if (v30 == 2)
        {
          sub_140BEC();
          v28 = v62;
          v19 = v26;
        }

        else
        {
          v19 = v26;
          if (v30 <= 2)
          {
            sub_14093C();
          }

          else
          {
            sub_140C3C();
          }

          v28 = v62;
        }

        v15 = v56;
        sub_140BDC();
        v29 = v65;
      }

      else
      {
        v28 = v62;
        sub_140C1C();
        v29 = v65;
        v19 = v26;
        v15 = v56;
      }

      sub_15340(v12, &qword_1C0D50, &unk_14A6D0);
      v31 = *(v16 + 48);
      v32 = v64;
      *v12 = v25;
      *(v12 + 1) = v32;
      *(v12 + 2) = v63;
      v12[24] = v57 & 1;
      (*(v66 + 32))(&v12[v31], v28, v29);
      (v61)(v12, 0, 1, v16);
    }

    else
    {

      v29 = v65;
    }

    sub_10358(v12, v15, &qword_1C0D50, &unk_14A6D0);
    if ((*(v17 + 48))(v15, 1, v16) == 1)
    {
      v33 = &qword_1C0D50;
      v34 = &unk_14A6D0;
      v35 = v15;
LABEL_26:
      sub_15340(v35, v33, v34);
      return;
    }

    v36 = v60;
    sub_10358(v15, v60, &qword_1C0D58, qword_1523D0);
    sub_103C0(v36, v19);
    v37 = *(v19 + 1);
    v38 = *(v16 + 48);
    ObjectType = swift_getObjectType();
    v40 = (*(v37 + 8))(ObjectType, v37);
    swift_unknownObjectRelease();
    v41 = [v40 collectionViewLayout];

    isa = sub_140B9C().super.isa;
    v43 = [v41 layoutAttributesForItemAtIndexPath:isa];

    v44 = *(v66 + 8);
    v44(&v19[v38], v29);
    if (!v43)
    {
      v33 = &qword_1C0D58;
      v34 = qword_1523D0;
      v35 = v36;
      goto LABEL_26;
    }

    sub_103C0(v36, v19);
    v45 = *v19;
    v46 = *(v19 + 1);
    v47 = *(v19 + 2);
    v48 = v19[24];
    v44(&v19[*(v16 + 48)], v29);
    v49 = v59;
    v50 = v58;
    if (*(v59 + v58))
    {

      sub_B7DBC(v45, v46, v47, v48, v70);

      if (*(v49 + v50))
      {
        v52 = *&v70[2];
        v51 = *&v70[3];
        v54 = *v70;
        v53 = *&v70[1];

        sub_BDCC4(v43, v45, v46, v47, v48, v54, v53, v52, v51);
        swift_unknownObjectRelease();

        sub_15340(v36, &qword_1C0D58, qword_1523D0);
        return;
      }

      goto LABEL_29;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_29:
  __break(1u);
}

double sub_C1AF0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = [v2 collectionView];
  if (v5)
  {
    v80 = a1;
    v7 = v5;
    [v7 bounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v16 = [v7 traitCollection];
    v82 = v7;

    sub_144DCC();

    v17 = sub_9E1E0();

    v18 = *(v17 + 16);
    v79 = v17;
    if (v18)
    {
      v86 = v3;
      left = UIEdgeInsetsZero.left;
      v19 = (v17 + 56);
      v97 = _swiftEmptyArrayStorage;
      right = UIEdgeInsetsZero.right;
      bottom = UIEdgeInsetsZero.bottom;
      v94 = v11;
      v95 = v9;
      v92 = v15;
      v93 = v13;
      while (1)
      {
        v102 = v18;
        v21 = *(v19 - 3);
        v20 = *(v19 - 2);
        v22 = *(v19 - 1);
        v23 = *v19;
        ObjectType = swift_getObjectType();
        v25 = *(v20 + 16);
        swift_unknownObjectRetain();
        v26 = v25(ObjectType, v20);
        v27 = *(v20 + 8);
        swift_unknownObjectRetain();
        v28 = v27(ObjectType, v20);
        swift_unknownObjectRelease();
        v29 = [v28 collectionViewLayout];
        v30 = v28;
        [v30 bounds];
        v32 = v31;
        v100 = v33;
        v35 = v34;
        v37 = v36;
        v96 = v23;
        if (v23)
        {
          v109.origin.x = v9;
          v109.origin.y = v11;
          v109.size.width = v13;
          v109.size.height = v15;
          Width = CGRectGetWidth(v109);
        }

        else
        {
          Width = v22;
        }

        v38 = *&v22;
        v110.origin.x = v9;
        v110.origin.y = v11;
        v110.size.width = v13;
        v110.size.height = v15;
        Height = CGRectGetHeight(v110);
        v40 = [v86 collectionView];
        v41 = left;
        top = UIEdgeInsetsZero.top;
        v43 = right;
        v44 = bottom;
        if (v40)
        {
          v45 = v40;
          [v40 contentInset];
          top = v46;
          v41 = v47;
          v44 = v48;
          v43 = v49;

          v38 = *&v22;
        }

        v50 = Width + v41 + v43;
        v51 = Height + top + v44;
        v111.origin.x = v32;
        v111.origin.y = v100;
        v111.size.width = v35;
        v111.size.height = v37;
        MinX = CGRectGetMinX(v111);
        v112.origin.x = v32;
        v112.origin.y = v100;
        v112.size.width = v35;
        v112.size.height = v37;
        MinY = CGRectGetMinY(v112);
        [v26 bounds];
        if ((sub_144F1C() & 1) == 0)
        {
          [v26 setBounds:{MinX, MinY, v50, v51}];
        }

        [v30 bounds];
        v103 = v29;
        if (sub_144F1C())
        {
          v54 = 0;
          v55 = 0;
          v101 = 0;
          v99 = 0;
          v56 = 0;
          if (a2)
          {
            goto LABEL_20;
          }
        }

        else
        {
          if ([v29 shouldInvalidateLayoutForBoundsChange:{MinX, MinY, v50, v51}])
          {
            v56 = [v29 invalidationContextForBoundsChange:{MinX, MinY, v50, v51}];
            swift_unknownObjectRetain();
            v54 = v21;
            v55 = v20;
            v101 = v38;
            v99 = v96;
          }

          else
          {
            v54 = 0;
            v55 = 0;
            v101 = 0;
            v99 = 0;
            v56 = 0;
          }

          [v30 setBounds:{MinX, MinY, v50, v51}];
          if (a2)
          {
LABEL_20:

            v81 = v38;
            sub_B7DBC(v21, v20, v38, v96, &v104);
            v57 = v104;
            v58 = v105;
            v89 = v105;
            v90 = v104;
            v59 = v106;
            v88 = v107;
            v113.origin.x = v95;
            v113.origin.y = v94;
            v113.size.width = v93;
            v113.size.height = v92;
            v60 = CGRectGetMinX(v113);
            v114.origin.x = v57;
            v114.origin.y = v58;
            v114.size.width = v59;
            v114.size.height = v88;
            v61 = v60 - CGRectGetMinX(v114);
            if (v61 < 0.0)
            {
              v62 = 0.0;
            }

            else
            {
              v62 = v61;
            }

            v115.origin.x = v95;
            v115.origin.y = v94;
            v115.size.width = v93;
            v115.size.height = v92;
            v63 = CGRectGetMinY(v115);
            v116.origin.y = v89;
            v116.origin.x = v90;
            v116.size.width = v59;
            v116.size.height = v88;
            v64 = v63 - CGRectGetMinY(v116);
            if (v64 < 0.0)
            {
              v65 = 0.0;
            }

            else
            {
              v65 = v64;
            }

            v66 = v30;
            v91 = [v66 _isAutomaticContentOffsetAdjustmentEnabled];
            [v66 _setAutomaticContentOffsetAdjustmentEnabled:0];
            [v26 bounds];
            if ((sub_144F1C() & 1) == 0)
            {
              [v26 setBounds:{v62, v65, v50, v51}];
            }

            [v66 bounds];
            if (sub_144F1C())
            {
              v67 = v55;
            }

            else
            {
              if (!v54)
              {
                if ([v103 shouldInvalidateLayoutForBoundsChange:{v62, v65, v50, v51}])
                {
                  v56 = [v103 invalidationContextForBoundsChange:{v62, v65, v50, v51}];
                  swift_unknownObjectRetain();
                  v54 = v21;
                  v55 = v20;
                  v101 = v81;
                  v99 = v96;
                }

                else
                {
                  v54 = 0;
                }
              }

              v67 = v55;
              [v66 setBounds:{v62, v65, v50, v51}];
            }

            [v82 contentInset];
            v69 = v68;
            v71 = v70;
            v73 = v72;
            v75 = v74;
            [v66 contentInset];
            if ((sub_141AFC() & 1) == 0 || (sub_141AFC() & 1) == 0 || (sub_141AFC() & 1) == 0 || (sub_141AFC() & 1) == 0)
            {
              [v66 setContentInset:{v69, v71, v73, v75}];
            }

            [v66 _setAutomaticContentOffsetAdjustmentEnabled:v91];

            v55 = v67;
          }
        }

        v11 = v94;
        v9 = v95;
        v15 = v92;
        v13 = v93;
        if (v54)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v97 = sub_134EBC(0, *(v97 + 2) + 1, 1, v97);
          }

          v77 = *(v97 + 2);
          v76 = *(v97 + 3);
          if (v77 >= v76 >> 1)
          {
            v97 = sub_134EBC((v76 > 1), v77 + 1, 1, v97);
          }

          swift_unknownObjectRelease();
          *(v97 + 2) = v77 + 1;
          v78 = &v97[40 * v77];
          *(v78 + 4) = v54;
          *(v78 + 5) = v55;
          *(v78 + 6) = v101;
          v78[56] = v99;
          *(v78 + 8) = v56;
        }

        else
        {
          swift_unknownObjectRelease();
        }

        v19 += 32;
        v18 = v102 - 1;
        if (v102 == 1)
        {
          goto LABEL_48;
        }
      }
    }

    v97 = _swiftEmptyArrayStorage;
LABEL_48:

    if (v80)
    {
      swift_beginAccess();
      sub_A7350(v97);
      swift_endAccess();
    }

    else
    {
    }
  }

  return result;
}

id sub_C245C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC12NowPlayingUI29CompositeCollectionViewLayout_countData;
  type metadata accessor for CompositeCollectionViewCountData();
  swift_allocObject();
  *&v0[v2] = sub_9E240(_swiftEmptyArrayStorage);
  *&v0[OBJC_IVAR____TtC12NowPlayingUI29CompositeCollectionViewLayout_layoutData] = 0;
  v3 = OBJC_IVAR____TtC12NowPlayingUI29CompositeCollectionViewLayout_decorationLayoutAttributes;
  *&v1[v3] = sub_13AEB0(_swiftEmptyArrayStorage);
  v4 = OBJC_IVAR____TtC12NowPlayingUI29CompositeCollectionViewLayout_lastDecorationLayoutAttributes;
  *&v1[v4] = sub_13AEB0(_swiftEmptyArrayStorage);
  *&v1[OBJC_IVAR____TtC12NowPlayingUI29CompositeCollectionViewLayout_lastDecorationLayoutAttributesRevision] = 0;
  *&v1[OBJC_IVAR____TtC12NowPlayingUI29CompositeCollectionViewLayout_currentCollectionViewUpdates] = _swiftEmptyArrayStorage;
  v1[OBJC_IVAR____TtC12NowPlayingUI29CompositeCollectionViewLayout_isInvalidatingLayout] = 0;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for CompositeCollectionViewLayout();
  return objc_msgSendSuper2(&v6, "init");
}

id sub_C2554(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC12NowPlayingUI29CompositeCollectionViewLayout_countData;
  type metadata accessor for CompositeCollectionViewCountData();
  swift_allocObject();
  *&v1[v4] = sub_9E240(_swiftEmptyArrayStorage);
  *&v1[OBJC_IVAR____TtC12NowPlayingUI29CompositeCollectionViewLayout_layoutData] = 0;
  v5 = OBJC_IVAR____TtC12NowPlayingUI29CompositeCollectionViewLayout_decorationLayoutAttributes;
  *&v2[v5] = sub_13AEB0(_swiftEmptyArrayStorage);
  v6 = OBJC_IVAR____TtC12NowPlayingUI29CompositeCollectionViewLayout_lastDecorationLayoutAttributes;
  *&v2[v6] = sub_13AEB0(_swiftEmptyArrayStorage);
  *&v2[OBJC_IVAR____TtC12NowPlayingUI29CompositeCollectionViewLayout_lastDecorationLayoutAttributesRevision] = 0;
  *&v2[OBJC_IVAR____TtC12NowPlayingUI29CompositeCollectionViewLayout_currentCollectionViewUpdates] = _swiftEmptyArrayStorage;
  v2[OBJC_IVAR____TtC12NowPlayingUI29CompositeCollectionViewLayout_isInvalidatingLayout] = 0;
  v9.receiver = v2;
  v9.super_class = type metadata accessor for CompositeCollectionViewLayout();
  v7 = objc_msgSendSuper2(&v9, "initWithCoder:", a1);

  if (v7)
  {
  }

  return v7;
}

id sub_C2694(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_C27A0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_C27D8()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_C2818(uint64_t a1)
{
  v2 = *&v1[OBJC_IVAR____TtC12NowPlayingUI29CompositeCollectionViewLayout_countData];
  *&v1[OBJC_IVAR____TtC12NowPlayingUI29CompositeCollectionViewLayout_countData] = a1;
  if (v2 != )
  {
    v3 = [v1 collectionView];
    if (v3)
    {
      v4 = v3;
      type metadata accessor for CompositeCollectionView();
      v5 = swift_dynamicCastClass();
      if (v5)
      {
        v6 = *(v5 + OBJC_IVAR____TtC12NowPlayingUI23CompositeCollectionView_isPerformingBatchUpdates);

        if (v6)
        {
          goto LABEL_8;
        }
      }

      else
      {
      }
    }

    [v1 invalidateLayout];
  }

LABEL_8:

  return result;
}

uint64_t sub_C28D4(double a1, double a2)
{
  v3 = v2;
  v6 = [v2 collectionView];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 traitCollection];

    [v8 displayScale];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C6A50, &qword_152470);
  sub_14509C();
  v10 = v9;
  v11 = *&v3[OBJC_IVAR____TtC12NowPlayingUI29CompositeCollectionViewLayout_countData];
  type metadata accessor for CompositeCollectionViewLayoutData();
  v12 = swift_allocObject();
  *(v12 + 48) = 0;
  *(v12 + 56) = 0;
  *(v12 + 64) = 1;

  *(v12 + 72) = sub_13AB40(_swiftEmptyArrayStorage);
  *(v12 + 16) = v11;
  *(v12 + 24) = a1;
  *(v12 + 32) = a2;
  *(v12 + 40) = v10;
  return v12;
}

void sub_C2A0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, SEL *a8)
{
  v65 = a8;
  v64 = a7;
  v63 = a6;
  v70 = a4;
  v69 = a3;
  v10 = sub_140C2C();
  v11 = *(v10 - 8);
  v71 = v10;
  v72 = v11;
  __chkstk_darwin(v10);
  v68 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0D50, &unk_14A6D0);
  __chkstk_darwin(v13 - 8);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v58 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0D58, qword_1523D0);
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v23);
  v66 = &v58 - v25;
  v62 = a5;
  v61 = OBJC_IVAR____TtC12NowPlayingUI29CompositeCollectionViewLayout_layoutData;
  if (*(a5 + OBJC_IVAR____TtC12NowPlayingUI29CompositeCollectionViewLayout_layoutData))
  {
    v67 = *(v20 + 56);
    v67(v15, 1, 1, v19, v24);

    v26 = sub_140C0C();
    if (v26 == 2)
    {
      v27 = sub_140BFC();
    }

    else if (v26 <= 0)
    {
      v27 = sub_14093C();
    }

    else
    {
      v27 = sub_140C3C();
    }

    sub_9E3E8(v27, a2, v69, v70, v73);
    v28 = v73[0];
    if (v73[0])
    {
      v59 = v19;
      v29 = v22;
      v70 = v73[1];
      v69 = v73[2];
      v60 = v74;
      v30 = v75;
      if (sub_140C0C() >= 2)
      {
        v58 = v30;
        v33 = sub_140C0C();
        if (v33 == 2)
        {
          sub_140BEC();
          v31 = v68;
          v22 = v29;
        }

        else
        {
          v22 = v29;
          if (v33 <= 2)
          {
            sub_14093C();
          }

          else
          {
            sub_140C3C();
          }

          v31 = v68;
        }

        v19 = v59;
        sub_140BDC();
        v32 = v71;
      }

      else
      {
        v31 = v68;
        sub_140C1C();
        v32 = v71;
        v22 = v29;
        v19 = v59;
      }

      sub_15340(v15, &qword_1C0D50, &unk_14A6D0);
      v34 = *(v19 + 48);
      v35 = v70;
      *v15 = v28;
      *(v15 + 1) = v35;
      *(v15 + 2) = v69;
      v15[24] = v60 & 1;
      (*(v72 + 32))(&v15[v34], v31, v32);
      (v67)(v15, 0, 1, v19);
    }

    else
    {

      v32 = v71;
    }

    sub_10358(v15, v18, &qword_1C0D50, &unk_14A6D0);
    if ((*(v20 + 48))(v18, 1, v19) == 1)
    {
      v36 = &qword_1C0D50;
      v37 = &unk_14A6D0;
LABEL_26:
      sub_15340(v18, v36, v37);
      return;
    }

    v38 = v18;
    v18 = v66;
    sub_10358(v38, v66, &qword_1C0D58, qword_1523D0);
    sub_103C0(v18, v22);
    v39 = *(v22 + 1);
    v40 = *(v19 + 48);
    ObjectType = swift_getObjectType();
    v42 = (*(v39 + 8))(ObjectType, v39);
    swift_unknownObjectRelease();
    v43 = [v42 collectionViewLayout];

    v44 = sub_14489C();
    isa = sub_140B9C().super.isa;
    v46 = [v43 *v65];

    v47 = *(v72 + 8);
    v47(&v22[v40], v32);
    if (!v46)
    {
      v36 = &qword_1C0D58;
      v37 = qword_1523D0;
      goto LABEL_26;
    }

    sub_103C0(v18, v22);
    v48 = *v22;
    v49 = *(v22 + 1);
    v50 = *(v22 + 2);
    v51 = v22[24];
    v47(&v22[*(v19 + 48)], v32);
    v52 = v62;
    v53 = v61;
    if (*(v62 + v61))
    {

      sub_B7DBC(v48, v49, v50, v51, v76);

      if (*(v52 + v53))
      {
        v55 = *&v76[2];
        v54 = *&v76[3];
        v57 = *v76;
        v56 = *&v76[1];

        sub_BDCC4(v46, v48, v49, v50, v51, v57, v56, v55, v54);
        swift_unknownObjectRelease();

        sub_15340(v18, &qword_1C0D58, qword_1523D0);
        return;
      }

      goto LABEL_29;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_29:
  __break(1u);
}

id sub_C3328(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for TintColorObservingView();
  return objc_msgSendSuper2(&v4, "dealloc");
}

__n128 sub_C3394@<Q0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1426DC();

  a1[4] = v7;
  a1[5] = v8;
  a1[6] = v9;
  a1[7] = v10;
  *a1 = v3;
  a1[1] = v4;
  result = v6;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

uint64_t sub_C343C()
{
  v1 = OBJC_IVAR____TtC12NowPlayingUI22NowPlayingTipViewModel__configuration;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1380, &unk_14B1C0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for NowPlayingTipViewModel(uint64_t a1)
{
  result = qword_1C6AE0;
  if (!qword_1C6AE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_C3558(uint64_t a1)
{
  sub_C35F4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_C35F4(uint64_t a1)
{
  if (!qword_1C6AF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C2440, &qword_14C790);
    v1 = sub_1426FC();
    if (!v2)
    {
      atomic_store(v1, &qword_1C6AF0);
    }
  }
}

uint64_t sub_C3658(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_C36A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_C3710@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for NowPlayingTipViewModel(0);
  result = sub_1425BC();
  *a1 = result;
  return result;
}

__n128 sub_C3750@<Q0>(_OWORD *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1426DC();

  a2[4] = v8;
  a2[5] = v9;
  a2[6] = v10;
  a2[7] = v11;
  *a2 = v4;
  a2[1] = v5;
  result = v7;
  a2[2] = v6;
  a2[3] = v7;
  return result;
}

uint64_t sub_C3808(_OWORD *a1, uint64_t *a2)
{
  v3 = a1[5];
  v13[4] = a1[4];
  v13[5] = v3;
  v4 = a1[7];
  v13[6] = a1[6];
  v13[7] = v4;
  v5 = a1[1];
  v13[0] = *a1;
  v13[1] = v5;
  v6 = a1[3];
  v13[2] = a1[2];
  v13[3] = v6;
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = a1[5];
  v12[12] = a1[4];
  v12[13] = v7;
  v8 = a1[7];
  v12[14] = a1[6];
  v12[15] = v8;
  v9 = a1[1];
  v12[8] = *a1;
  v12[9] = v9;
  v10 = a1[3];
  v12[10] = a1[2];
  v12[11] = v10;

  sub_C38D0(v13, v12);
  return sub_1426EC();
}

uint64_t sub_C38D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2440, &qword_14C790);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_C3948(uint64_t a1)
{
  sub_C3F0C(319);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_C39D0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1C6BE0, qword_152660);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(*(a3 + 16) - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v8)
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(*(v6 - 8) + 64) + v11;
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v14 = (v13 & ~v11) + *(v9 + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((a2 - v12 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_27:
      if (v12)
      {
LABEL_28:
        if (v8 >= v10)
        {
          v23 = *(v7 + 48);

          return v23(a1);
        }

        else
        {
          v21 = *(v9 + 48);

          return v21((a1 + v13) & ~v11, v10);
        }
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_27;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = (v13 & ~v11) + *(v9 + 64);
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v20 = *a1;
      }
    }

    else if (v19 == 1)
    {
      v20 = *a1;
    }

    else
    {
      v20 = *a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v12 + (v20 | v18) + 1;
}

void sub_C3C1C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_1C6BE0, qword_152660) - 8);
  v9 = *(v8 + 84);
  v10 = *(*(a4 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 64);
  v13 = *(v10 + 80);
  if (v11 <= v9)
  {
    v14 = *(v8 + 84);
  }

  else
  {
    v14 = *(v10 + 84);
  }

  v15 = v12 + v13;
  v16 = ((v12 + v13) & ~v13) + *(v10 + 64);
  if (a3 <= v14)
  {
    v17 = 0;
  }

  else if (v16 <= 3)
  {
    v20 = ((a3 - v14 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
    if (HIWORD(v20))
    {
      v17 = 4;
    }

    else
    {
      if (v20 < 0x100)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }

      if (v20 >= 2)
      {
        v17 = v21;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v17 = 1;
  }

  if (v14 < a2)
  {
    v18 = ~v14 + a2;
    if (v16 < 4)
    {
      v19 = (v18 >> (8 * v16)) + 1;
      if (v16)
      {
        v22 = v18 & ~(-1 << (8 * v16));
        bzero(a1, v16);
        if (v16 != 3)
        {
          if (v16 == 2)
          {
            *a1 = v22;
            if (v17 > 1)
            {
LABEL_46:
              if (v17 == 2)
              {
                *&a1[v16] = v19;
              }

              else
              {
                *&a1[v16] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v17 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v22;
        a1[2] = BYTE2(v22);
      }

      if (v17 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v18;
      v19 = 1;
      if (v17 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v17)
    {
      a1[v16] = v19;
    }

    return;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *&a1[v16] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v16] = 0;
  }

  else if (v17)
  {
    a1[v16] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v9 >= v11)
  {
    v24 = *(v8 + 56);

    v24(a1, a2);
  }

  else
  {
    v23 = *(v10 + 56);

    v23(&a1[v15] & ~v13, a2, v11);
  }
}

void sub_C3F0C(uint64_t a1)
{
  if (!qword_1C6C68)
  {
    type metadata accessor for NowPlayingPlaybackControlsViewModel(255);
    v1 = sub_143E6C();
    if (!v2)
    {
      atomic_store(v1, &qword_1C6C68);
    }
  }
}

uint64_t sub_C3FA8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1C6BE0, qword_152660);
  sub_143E2C();
  return v1;
}

uint64_t sub_C3FE4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1C6BE0, qword_152660);

  return sub_143E3C();
}

uint64_t sub_C402C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a2;
  v77 = sub_14301C();
  v75 = *(v77 - 8);
  __chkstk_darwin(v77);
  v74 = v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_142BDC();
  v73 = *(v4 - 8);
  __chkstk_darwin(v4);
  v72 = v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = *(a1 + 16);
  v6 = sub_142C6C();
  v68 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C6C70, &qword_1526F8);
  v67 = v7;
  v8 = *(a1 + 24);
  v9 = sub_47728();
  v95 = v8;
  v96 = v9;
  WitnessTable = swift_getWitnessTable();
  v66 = WitnessTable;
  v59 = sub_1D4A4(&qword_1C6C78, &qword_1C6C70, &qword_1526F8, &protocol conformance descriptor for TupleView<A>);
  v91 = v6;
  v92 = v7;
  v93 = WitnessTable;
  v94 = v59;
  v11 = sub_14375C();
  v70 = *(v11 - 8);
  __chkstk_darwin(v11);
  v65 = v47 - v12;
  sub_14328C();
  v63 = v11;
  v13 = sub_142C6C();
  v69 = *(v13 - 8);
  __chkstk_darwin(v13);
  v64 = v47 - v14;
  v15 = swift_getWitnessTable();
  v62 = v15;
  v16 = swift_getWitnessTable();
  v89 = v15;
  v90 = v16;
  v17 = swift_getWitnessTable();
  v18 = sub_C5440(&qword_1C2AA0, &type metadata accessor for ButtonMenuStyle, &protocol conformance descriptor for ButtonMenuStyle);
  v91 = v13;
  v92 = v4;
  v49 = v13;
  v48 = v4;
  v93 = v17;
  v94 = v18;
  v51 = v17;
  v50 = v18;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v61 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v56 = v47 - v19;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1C2AB8, &qword_152700);
  v20 = sub_142C6C();
  v60 = *(v20 - 8);
  __chkstk_darwin(v20);
  v55 = v47 - v21;
  v91 = v13;
  v92 = v4;
  v93 = v17;
  v94 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v47[1] = OpaqueTypeConformance2;
  v23 = sub_1D4A4(&qword_1C2AB0, &unk_1C2AB8, &qword_152700, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
  v87 = OpaqueTypeConformance2;
  v88 = v23;
  v52 = swift_getWitnessTable();
  v91 = v20;
  v92 = v77;
  v93 = v52;
  v94 = &protocol witness table for InlinePickerStyle;
  v53 = &opaque type descriptor for <<opaque return type of View.pickerStyle<A>(_:)>>;
  v24 = swift_getOpaqueTypeMetadata2();
  v54 = *(v24 - 8);
  __chkstk_darwin(v24);
  v26 = v47 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = v47 - v28;
  v30 = v58;
  v84 = v58;
  v85 = v8;
  v31 = v8;
  v86 = v71;
  v81 = v58;
  v82 = v8;
  v83 = v71;
  v32 = v71;
  v33 = v65;
  sub_14374C();
  v78 = v30;
  v79 = v31;
  v80 = v32;
  sub_143EAC();
  v34 = v64;
  v35 = v63;
  sub_14387C();
  (*(v70 + 8))(v33, v35);
  v36 = v72;
  sub_142BCC();
  v37 = v56;
  v38 = v49;
  v39 = v48;
  sub_143B7C();
  (*(v73 + 8))(v36, v39);
  (*(v69 + 8))(v34, v38);
  v40 = v55;
  v41 = OpaqueTypeMetadata2;
  sub_14394C();
  (*(v61 + 8))(v37, v41);
  v42 = v74;
  sub_14300C();
  v43 = v77;
  v44 = v52;
  sub_1438DC();
  (*(v75 + 8))(v42, v43);
  (*(v60 + 8))(v40, v20);
  v91 = v20;
  v92 = v43;
  v93 = v44;
  v94 = &protocol witness table for InlinePickerStyle;
  swift_getOpaqueTypeConformance2();
  sub_F6344();
  v45 = *(v54 + 8);
  v45(v26, v24);
  sub_F6344();
  return (v45)(v29, v24);
}

uint64_t sub_C49B8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v42 = a2;
  v40 = a1;
  v44 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C6C80, &qword_152708);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v43 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v41 = &v40 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1C6BE0, qword_152660);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v40 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C6C88, &qword_152710);
  __chkstk_darwin(v12 - 8);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v40 - v16;
  v18 = sub_141DAC();
  v47 = v18;
  v48 = sub_C5440(&qword_1C18C0, &type metadata accessor for Podcasts, &protocol conformance descriptor for Podcasts);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v45);
  (*(*(v18 - 8) + 104))(boxed_opaque_existential_1, enum case for Podcasts.speakEasy(_:), v18);
  LOBYTE(v18) = sub_141B2C();
  __swift_destroy_boxed_opaque_existential_0(v45);
  if (v18)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1C6BE0, qword_152660);
    sub_143E3C();
    swift_getKeyPath();
    sub_143E5C();

    (*(v9 + 8))(v11, v8);
    sub_143D6C();
    v20 = 0;
  }

  else
  {
    v20 = 1;
  }

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C6C90, &qword_152718);
  (*(*(v21 - 8) + 56))(v17, v20, 1, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1C6BE0, qword_152660);
  sub_143E2C();
  v22 = v45[0];
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = v22;
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = v22;

  v25 = sub_143DCC();
  v26 = __chkstk_darwin(v25).n128_u32[0];
  v27 = v42;
  *(&v40 - 4) = v40;
  *(&v40 - 3) = v27;
  v45[0] = v28;
  v45[1] = v29;
  v46 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C6C98, &qword_152720);
  v30 = sub_C54B0();
  v38 = &protocol witness table for Float;
  v39 = v30;
  v31 = v41;
  sub_143D3C();
  sub_C5578(v17, v14);
  v32 = *(v4 + 16);
  v33 = v43;
  v32(v43, v31, v3);
  v34 = v44;
  sub_C5578(v14, v44);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C6CA8, &qword_152728);
  v32((v34 + *(v35 + 48)), v33, v3);
  v36 = *(v4 + 8);
  v36(v31, v3);
  sub_C55E8(v17);
  v36(v33, v3);
  return sub_C55E8(v14);
}

uint64_t sub_C4F48@<X0>(uint64_t a1@<X8>)
{
  sub_1430EC();
  result = sub_1437DC();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_C4FC0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1C6BE0, qword_152660);
  sub_143E2C();

  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C6CB0, &qword_152778);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C6CB8, &qword_152780);
  sub_1D4A4(&unk_1C6CC0, &qword_1C6CB0, &qword_152778, &protocol conformance descriptor for [A]);
  swift_getOpaqueTypeConformance2();
  return sub_143DFC();
}

uint64_t sub_C512C@<X0>(float *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_141F5C();
  result = sub_141EFC();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = 0;
  *(a2 + 24) = _swiftEmptyArrayStorage;
  *(a2 + 32) = v3;
  *(a2 + 36) = 1;
  return result;
}

uint64_t sub_C518C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_142C6C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v16 - v10;
  type metadata accessor for NowPlayingSpeedPicker(0, a2, a3, v12);
  sub_143B3C();
  v13 = sub_47728();
  v16[0] = a3;
  v16[1] = v13;
  swift_getWitnessTable();
  sub_F6344();
  v14 = *(v6 + 8);
  v14(v8, v5);
  sub_F6344();
  return (v14)(v11, v5);
}

uint64_t sub_C5320(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 - 8);
  __chkstk_darwin(a1);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NowPlayingSpeedPicker(0, v7, v8, v9);
  sub_F6344();
  sub_F6344();
  return (*(v4 + 8))(v6, a2);
}

uint64_t sub_C5440(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_C54B0()
{
  result = qword_1C6CA0;
  if (!qword_1C6CA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C6C98, &qword_152720);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C6CA0);
  }

  return result;
}

uint64_t sub_C5578(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C6C88, &qword_152710);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_C55E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C6C88, &qword_152710);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_C5658(void *a1)
{
  sub_142C6C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C6C70, &qword_1526F8);
  sub_47728();
  swift_getWitnessTable();
  sub_1D4A4(&qword_1C6C78, &qword_1C6C70, &qword_1526F8, &protocol conformance descriptor for TupleView<A>);
  sub_14375C();
  sub_14328C();
  sub_142C6C();
  sub_142BDC();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_C5440(&qword_1C2AA0, &type metadata accessor for ButtonMenuStyle, &protocol conformance descriptor for ButtonMenuStyle);
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1C2AB8, &qword_152700);
  sub_142C6C();
  sub_14301C();
  swift_getOpaqueTypeConformance2();
  sub_1D4A4(&qword_1C2AB0, &unk_1C2AB8, &qword_152700, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

id sub_C594C(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_144C9C();
  __swift_project_value_buffer(v5, a2);
  sub_144C8C();
  v6 = sub_14489C();

  v7 = [v3 objectForKey:v6];

  if (v7)
  {
    sub_14514C();
    swift_unknownObjectRelease();
  }

  else
  {
    *v10 = 0u;
    v11 = 0u;
  }

  v12[0] = *v10;
  v12[1] = v11;
  if (*(&v11 + 1))
  {
    sub_C5DF0();
    if (swift_dynamicCast())
    {
      v8 = [v10[0] BOOLValue];

      return v8;
    }
  }

  else
  {
    sub_48DD4(v12);
  }

  return 0;
}

BOOL sub_C5A78()
{
  if (qword_1C0030 != -1)
  {
    swift_once();
  }

  v1 = sub_144C9C();
  __swift_project_value_buffer(v1, qword_1D18F8);
  sub_144C8C();
  v2 = sub_14489C();

  v3 = [v0 objectForKey:v2];

  if (v3)
  {
    sub_14514C();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  sub_48DD4(v7);
  return *(&v6 + 1) != 0;
}

uint64_t sub_C5B70()
{
  v0 = sub_144C9C();
  __swift_allocate_value_buffer(v0, qword_1D18F8);
  __swift_project_value_buffer(v0, qword_1D18F8);
  return sub_144CAC();
}

uint64_t sub_C5BD4()
{
  v0 = sub_144C9C();
  __swift_allocate_value_buffer(v0, qword_1D1910);
  __swift_project_value_buffer(v0, qword_1D1910);
  return sub_144CAC();
}

uint64_t sub_C5C38()
{
  v0 = sub_144C9C();
  __swift_allocate_value_buffer(v0, qword_1D1928);
  __swift_project_value_buffer(v0, qword_1D1928);
  return sub_144CAC();
}

void sub_C5C9C()
{
  if (qword_1C0040 != -1)
  {
    swift_once();
  }

  v1 = sub_144C9C();
  __swift_project_value_buffer(v1, qword_1D1928);
  sub_144C8C();
  v2 = sub_14489C();

  v3 = [v0 objectForKey:v2];

  if (v3)
  {
    sub_14514C();
    swift_unknownObjectRelease();
  }

  else
  {
    *v4 = 0u;
    v5 = 0u;
  }

  v6[0] = *v4;
  v6[1] = v5;
  if (*(&v5 + 1))
  {
    sub_C5DF0();
    if (swift_dynamicCast())
    {
      [v4[0] floatValue];
    }
  }

  else
  {
    sub_48DD4(v6);
  }
}

unint64_t sub_C5DF0()
{
  result = qword_1C8220;
  if (!qword_1C8220)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1C8220);
  }

  return result;
}

BOOL sub_C5E3C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v3 == 2)
  {
    return 0;
  }

  return (v3 ^ v2 ^ 1) & 1;
}

double sub_C5E80()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC12NowPlayingUI21NowPlayingContentView_playerPath];
  if (v2)
  {
    v3 = [v2 route];
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_1450AC();

  v5 = *&v1[OBJC_IVAR____TtC12NowPlayingUI21NowPlayingContentView_artworkComponent];
  if (v1[OBJC_IVAR____TtC12NowPlayingUI21NowPlayingContentView_mode] == 2)
  {

    sub_14114C();
    sub_1410EC();
    v6 = *(v5 + 152);
    *(v5 + 144) = v7;
    *(v5 + 152) = 0;
    if (v6 & 1) == 0 && (sub_141AFC())
    {
      goto LABEL_14;
    }

    v8 = *(v5 + 184);
    if (!v8)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v9 = *(v5 + 152);
    *(v5 + 144) = 0x4018000000000000;
    *(v5 + 152) = 0;

    if ((v9 & 1) == 0 && (sub_141AFC() & 1) != 0 || (v8 = *(v5 + 184)) == 0)
    {
LABEL_14:

      if (v4)
      {
        goto LABEL_15;
      }

LABEL_13:
      v12 = [objc_allocWithZone(UIColor) initWithWhite:0.0 alpha:0.1];
      v13 = v12;
      v14 = 0;
      goto LABEL_16;
    }
  }

  v10 = *(v5 + 192);

  v8(v11);

  sub_2173C(v8, v10);
  if ((v4 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_15:
  v14 = 128;
  v12 = &dword_4;
LABEL_16:

  sub_CD7D8(v12, 0, v14);

  [v1 setNeedsLayout];

  return sub_990B4(v12, 0, v14);
}

void sub_C6078(void *a1)
{
  v3 = *&v1[OBJC_IVAR____TtC12NowPlayingUI21NowPlayingContentView_videoViewController];
  if (!v3)
  {
    if (!a1)
    {
      return;
    }

LABEL_15:
    *&v1[OBJC_IVAR____TtC12NowPlayingUI21NowPlayingContentView_videoBinding] = 0;

    [v1 setNeedsLayout];
    return;
  }

  v4 = v3;
  v26 = v4;
  if (v3 != a1)
  {
    v9 = [v4 view];
    if (v9)
    {
      v10 = v9;
      v11 = [v9 superview];
      v12 = OBJC_IVAR____TtC12NowPlayingUI21NowPlayingContentView_artworkComponent;
      if (!v11 || (v13 = v11, v14 = *(*&v1[OBJC_IVAR____TtC12NowPlayingUI21NowPlayingContentView_artworkComponent] + 104), sub_2B860(0, &qword_1C47C0, UIView_ptr), v15 = v14, v16 = sub_144FFC(), v13, v15, (v16 & 1) == 0))
      {
        [*(*&v1[v12] + 104) addSubview:{v10, v26}];
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C6D90, qword_152848);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_14E520;
      *(inited + 32) = v3;
      *(inited + 40) = xmmword_1527A0;
      *(inited + 56) = 0;
      *(inited + 64) = v3;
      *(inited + 72) = 0xD000000000000014;
      *(inited + 80) = 0x8000000000165780;
      *(inited + 88) = 0;
      v18 = swift_allocObject();
      *(v18 + 16) = v1;
      type metadata accessor for DeprecatedBinding();
      swift_allocObject();
      v19 = v26;
      v20 = v1;
      v21 = sub_11CEAC(inited, sub_C8CD0, v18);

      *&v20[OBJC_IVAR____TtC12NowPlayingUI21NowPlayingContentView_videoBinding] = v21;

      [v20 setNeedsLayout];

      return;
    }

    goto LABEL_15;
  }

  v5 = [v1 nextResponder];
  if (v5)
  {
    while (1)
    {
      v27 = v5;
      objc_opt_self();
      v6 = swift_dynamicCastObjCClass();
      if (v6)
      {
        break;
      }

      v7 = [v27 nextResponder];

      v5 = v7;
      if (!v7)
      {
        goto LABEL_6;
      }
    }

    v22 = v6;
    [v6 addChildViewController:v26];
    v23 = *(*&v1[OBJC_IVAR____TtC12NowPlayingUI21NowPlayingContentView_artworkComponent] + 104);
    v24 = [v26 view];
    if (!v24)
    {
      __break(1u);
      return;
    }

    v25 = v24;
    [v23 addSubview:v24];

    [v26 didMoveToParentViewController:v22];
    [v1 setNeedsLayout];

    v8 = v27;
  }

  else
  {
LABEL_6:
    v8 = v26;
  }
}

char *sub_C6428(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v4[OBJC_IVAR____TtC12NowPlayingUI21NowPlayingContentView_mode] = 2;
  *&v4[OBJC_IVAR____TtC12NowPlayingUI21NowPlayingContentView_radiosityScale] = 0x3FF0000000000000;
  *&v4[OBJC_IVAR____TtC12NowPlayingUI21NowPlayingContentView_videoOutput] = 0;
  *&v4[OBJC_IVAR____TtC12NowPlayingUI21NowPlayingContentView_videoViewController] = 0;
  *&v4[OBJC_IVAR____TtC12NowPlayingUI21NowPlayingContentView_videoBinding] = 0;
  v11 = OBJC_IVAR____TtC12NowPlayingUI21NowPlayingContentView_artworkComponent;
  type metadata accessor for ArtworkComponentImageView();
  v12 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  _s9ComponentCMa();
  swift_allocObject();
  v13 = sub_CFCE0(v12);

  *&v5[v11] = v13;
  v14 = OBJC_IVAR____TtC12NowPlayingUI21NowPlayingContentView_radiosityView;
  *&v5[v14] = [objc_allocWithZone(UIImageView) init];
  *&v5[OBJC_IVAR____TtC12NowPlayingUI21NowPlayingContentView_borderColor] = 0;
  v15 = OBJC_IVAR____TtC12NowPlayingUI21NowPlayingContentView_placeholderImageView;
  *&v5[v15] = [objc_allocWithZone(UIImageView) init];
  *&v5[OBJC_IVAR____TtC12NowPlayingUI21NowPlayingContentView_playerPath] = 0;
  v5[OBJC_IVAR____TtC12NowPlayingUI21NowPlayingContentView_deferArtworkUpdates] = 0;
  v49.receiver = v5;
  v49.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v49, "initWithFrame:", a1, a2, a3, a4);
  [v16 setUserInteractionEnabled:0];
  v17 = OBJC_IVAR____TtC12NowPlayingUI21NowPlayingContentView_artworkComponent;
  v18 = *&v16[OBJC_IVAR____TtC12NowPlayingUI21NowPlayingContentView_artworkComponent];
  type metadata accessor for Artwork.CachingContext();
  *(v18 + 16) = swift_allocObject();

  v19 = *&v16[v17];
  *(v19 + 24) = 0x79616C5020776F4ELL;
  *(v19 + 32) = 0xEB00000000676E69;

  v20 = *&v16[v17];
  *(v20 + 40) = 5;
  *(v20 + 48) = 0;
  v21 = *(v20 + 88);
  v22 = *(v20 + 96);
  *(v20 + 88) = a3;
  *(v20 + 96) = a4;

  sub_CD754(v23, v21, v22);

  v24 = *&v16[v17];
  v25 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v26 = *(v24 + 184);
  v27 = *(v24 + 192);
  *(v24 + 184) = sub_C8B00;
  *(v24 + 192) = v25;

  sub_2173C(v26, v27);

  v28 = *&v16[v17];
  v29 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v30 = *(v28 + 200);
  v31 = *(v28 + 208);
  *(v28 + 200) = sub_C8B48;
  *(v28 + 208) = v29;

  sub_2173C(v30, v31);

  v32 = OBJC_IVAR____TtC12NowPlayingUI21NowPlayingContentView_placeholderImageView;
  [*&v16[OBJC_IVAR____TtC12NowPlayingUI21NowPlayingContentView_placeholderImageView] setContentMode:1];
  v33 = [v16 layer];
  [v33 setAllowsGroupOpacity:0];

  v34 = [v16 layer];
  [v34 setAllowsGroupBlending:0];

  v35 = OBJC_IVAR____TtC12NowPlayingUI21NowPlayingContentView_radiosityView;
  [*&v16[OBJC_IVAR____TtC12NowPlayingUI21NowPlayingContentView_radiosityView] setContentMode:2];
  [*&v16[v35] _setAnimatesContents:1];
  v36 = [*&v16[v35] layer];
  [v36 setCompositingFilter:kCAFilterMultiplyBlendMode];

  v37 = [objc_allocWithZone(CAFilter) initWithType:kCAFilterColorSaturate];
  isa = sub_144B1C().super.super.isa;
  v39 = sub_14489C();
  [v37 setValue:isa forKey:v39];

  v40 = [*&v16[v35] layer];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C6D80, &qword_152840);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_14A710;
  *(v41 + 56) = sub_2B860(0, &qword_1C6D88, CAFilter_ptr);
  *(v41 + 32) = v37;
  v42 = v37;
  v43 = sub_1449CC().super.isa;

  [v40 setFilters:v43];

  [*&v16[v32] setHidden:1];
  v44 = *&v16[v32];
  v45 = objc_allocWithZone(UIColor);
  v46 = v44;
  v47 = [v45 initWithWhite:0.0 alpha:0.4];
  [v46 setTintColor:v47];

  [v16 addSubview:*&v16[v35]];
  [v16 addSubview:*(*&v16[v17] + 104)];
  [v16 addSubview:*&v16[v32]];
  sub_C5E80();

  return v16;
}

void sub_C69F8(uint64_t a1)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_C6A5C();

  v2 = swift_unknownObjectUnownedLoadStrong();
  sub_C6C8C();
}

double sub_C6A5C()
{
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v2 = *(*&v0[OBJC_IVAR____TtC12NowPlayingUI21NowPlayingContentView_artworkComponent] + 80);
  if (v2)
  {
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v4 = swift_allocObject();
    v4[2] = sub_C8B50;
    v4[3] = v1;
    v4[4] = v3;
    v17 = sub_C8C28;
    v18 = v4;
    v13 = _NSConcreteStackBlock;
    v14 = 1107296256;
    v15 = sub_C81A0;
    v16 = &block_descriptor_20;
    v5 = _Block_copy(&v13);
    v6 = v0;
    v7 = v2;

    [v7 requestRadiosityImageWithCompletionHandler:v5];

    _Block_release(v5);
  }

  else
  {
    v9 = objc_opt_self();
    v10 = swift_allocObject();
    *(v10 + 16) = v0;
    v17 = sub_C8B90;
    v18 = v10;
    v13 = _NSConcreteStackBlock;
    v14 = 1107296256;
    v15 = sub_11D5C0;
    v16 = &block_descriptor_13;
    v11 = _Block_copy(&v13);
    v12 = v0;

    [v9 animateWithDuration:v11 animations:0.2];
    _Block_release(v11);
  }

  return result;
}

void sub_C6C8C()
{
  v1 = *(v0 + OBJC_IVAR____TtC12NowPlayingUI21NowPlayingContentView_playerPath);
  if (!v1 || (v2 = [v1 route]) == 0)
  {
LABEL_6:
    v4 = *(v0 + OBJC_IVAR____TtC12NowPlayingUI21NowPlayingContentView_placeholderImageView);

    [v4 setHidden:1];
    return;
  }

  v3 = v2;
  if ([v2 isDeviceRoute] & 1) != 0 || (*(*(v0 + OBJC_IVAR____TtC12NowPlayingUI21NowPlayingContentView_artworkComponent) + 234))
  {

    goto LABEL_6;
  }

  v5 = OBJC_IVAR____TtC12NowPlayingUI21NowPlayingContentView_placeholderImageView;
  [*(v0 + OBJC_IVAR____TtC12NowPlayingUI21NowPlayingContentView_placeholderImageView) setHidden:0];
  v6 = *(v0 + v5);
  v7 = objc_opt_self();
  v8 = v6;
  v9 = [v7 _symbolImageForRoute:v3];
  [v8 setImage:v9];
}

void sub_C6E1C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_144EDC();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = v134 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157.receiver = v1;
  v157.super_class = ObjectType;
  objc_msgSendSuper2(&v157, "layoutSubviews", v5);
  [v1 bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [v1 traitCollection];
  sub_144DCC();
  v18 = v17;

  v152 = objc_opt_self();
  v143 = COERCE_DOUBLE([v152 clearColor]);
  if ((v1[OBJC_IVAR____TtC12NowPlayingUI21NowPlayingContentView_deferArtworkUpdates] & 1) == 0)
  {
    v19 = *&v1[OBJC_IVAR____TtC12NowPlayingUI21NowPlayingContentView_artworkComponent];
    v20 = *(v19 + 88);
    v21 = *(v19 + 96);
    *(v19 + 88) = v13;
    *(v19 + 96) = v15;

    sub_CD754(v22, v20, v21);
  }

  v23 = OBJC_IVAR____TtC12NowPlayingUI21NowPlayingContentView_artworkComponent;

  v24 = sub_CDA84(*&v13, *&v15, 0, v18);
  v26 = v25;

  v27 = OBJC_IVAR____TtC12NowPlayingUI21NowPlayingContentView_videoOutput;
  v28 = *&v1[OBJC_IVAR____TtC12NowPlayingUI21NowPlayingContentView_videoOutput];
  if (v28)
  {
    goto LABEL_4;
  }

  v29 = *&v1[OBJC_IVAR____TtC12NowPlayingUI21NowPlayingContentView_videoViewController];
  if (v29)
  {
    objc_opt_self();
    v28 = swift_dynamicCastObjCClass();
    if (v28)
    {
LABEL_4:
      LODWORD(v29) = [v28 isReadyForDisplay];
      goto LABEL_5;
    }

    LODWORD(v29) = 0;
  }

LABEL_5:
  v30 = *&v1[v27];
  x = 0.0;
  v153 = v18;
  v148 = v11;
  if (!v30)
  {
    LODWORD(v151) = 0;
    v146 = 0.0;
    v145 = 0.0;
LABEL_39:
    y = 0.0;
    goto LABEL_40;
  }

  [v30 presentationSize];
  LODWORD(v151) = 0;
  if (v32 > 0.0)
  {
    v34 = v29;
  }

  else
  {
    v34 = 0;
  }

  v146 = v33;
  v145 = v32;
  if (v34 != 1 || v33 <= 0.0)
  {
    goto LABEL_39;
  }

  sub_144F3C();
  width = v167.size.width;
  height = v167.size.height;
  v167.origin.x = 0.0;
  v167.origin.y = 0.0;
  v151 = CGRectGetWidth(v167);
  v168.origin.x = v9;
  v168.origin.y = v11;
  v168.size.width = v13;
  v168.size.height = v15;
  CGRectGetWidth(v168);
  v37 = sub_141AFC();
  if (v37)
  {
    v38 = width;
  }

  else
  {
    v38 = v13;
  }

  if (v37)
  {
    v39 = height;
  }

  else
  {
    v39 = v15;
  }

  if (v37)
  {
    v40 = 0.0;
  }

  else
  {
    v40 = v9;
  }

  if (v37)
  {
    v41 = 0.0;
  }

  else
  {
    v41 = v11;
  }

  v42 = CGRectGetWidth(*(&v38 - 2));
  v169.origin.x = 0.0;
  v169.origin.y = 0.0;
  v169.size.width = width;
  v169.size.height = height;
  v43 = CGRectGetHeight(v169);
  v170.origin.x = v9;
  v170.origin.y = v148;
  v170.size.width = v13;
  v170.size.height = v15;
  CGRectGetHeight(v170);
  v44 = sub_141AFC();
  if (v44)
  {
    v45 = width;
  }

  else
  {
    v45 = v13;
  }

  if (v44)
  {
    v46 = height;
  }

  else
  {
    v46 = v15;
  }

  if (v44)
  {
    v47 = 0.0;
  }

  else
  {
    v47 = v9;
  }

  v48 = v148;
  if (v44)
  {
    v48 = 0.0;
  }

  v49 = v43 / CGRectGetHeight(*(&v45 - 2));
  v11 = v148;
  v50 = v49 * -10.0;
  v171.origin.x = 0.0;
  v171.origin.y = 0.0;
  v171.size.width = width;
  v171.size.height = height;
  v172 = CGRectInset(v171, v151 / v42 * -10.0, v50);
  x = v172.origin.x;
  y = v172.origin.y;
  v24 = v172.size.width;
  v26 = v172.size.height;
  v52 = *&v1[v23];

  v53 = [v152 blackColor];
  v54 = *(v52 + 224);
  *(v52 + 224) = v53;
  v55 = v53;
  sub_CE434(v54);

  LODWORD(v151) = 1;
LABEL_40:
  v173.origin.x = x;
  v173.origin.y = y;
  v173.size.width = v24;
  v173.size.height = v26;
  v144 = CGRectGetWidth(v173);
  v174.origin.x = v9;
  v174.origin.y = v11;
  v174.size.width = v13;
  v174.size.height = v15;
  CGRectGetWidth(v174);
  v56 = sub_141AFC();
  v57 = 1.0;
  v150 = 1.0;
  if ((v56 & 1) == 0)
  {
    v175.origin.x = v9;
    v175.origin.y = v11;
    v175.size.width = v13;
    v175.size.height = v15;
    v57 = CGRectGetWidth(v175);
  }

  v142 = v57;
  v147 = v23;
  v176.origin.x = x;
  v176.origin.y = y;
  v176.size.width = v24;
  v176.size.height = v26;
  v141 = CGRectGetHeight(v176);
  v177.origin.x = v9;
  v177.origin.y = v11;
  v177.size.width = v13;
  v177.size.height = v15;
  CGRectGetHeight(v177);
  if ((sub_141AFC() & 1) == 0)
  {
    v178.origin.x = v9;
    v178.origin.y = v11;
    v178.size.width = v13;
    v178.size.height = v15;
    v150 = CGRectGetHeight(v178);
  }

  v149 = v15;
  sub_144F3C();
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C6D58, &qword_152828);
  v59 = *(v4 + 72);
  v60 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v138 = v58;
  v137 = v60 + 2 * v59;
  v61 = swift_allocObject();
  v136 = xmmword_14E520;
  *(v61 + 16) = xmmword_14E520;
  v139 = v60;
  sub_144EAC();
  v140 = v59;
  sub_144ECC();
  *&v154.a = v61;
  v62 = sub_C872C();
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C6D68, &qword_152830);
  v134[4] = sub_C8784();
  sub_14515C();
  sub_144EEC();
  v65 = v64;
  v67 = v66;
  v69 = v68;
  v71 = v70;
  v73 = *(v4 + 8);
  v72 = v4 + 8;
  v135 = v73;
  v73(v7, v3);
  v74 = *&v1[v27];
  if (v74 || *&v1[OBJC_IVAR____TtC12NowPlayingUI21NowPlayingContentView_videoViewController] && (objc_opt_self(), (v74 = swift_dynamicCastObjCClass()) != 0))
  {
    v75 = [v74 videoGravity];
  }

  else
  {
    v75 = 0;
  }

  v76 = v144 / v142;
  v144 = *&OBJC_IVAR____TtC12NowPlayingUI21NowPlayingContentView_mode;
  v77 = v1[OBJC_IVAR____TtC12NowPlayingUI21NowPlayingContentView_mode];
  v78 = v141 / v150;
  v134[3] = v72;
  v134[2] = v63;
  v134[1] = v62;
  if (v77 == 2)
  {
    v179.origin.x = v65;
    v179.origin.y = v67;
    v179.size.width = v69;
    v179.size.height = v71;
    v180 = CGRectInset(v179, v76 * -8.0, v78 * -8.0);
    v149 = 0.0;
    CGRectOffset(v180, 0.0, 4.0);
    v148 = 0.0;
    v142 = 0.0;
    v150 = v143;
  }

  else
  {
    v150 = COERCE_DOUBLE([v152 blackColor]);

    if (v77)
    {
      v79 = *&v1[OBJC_IVAR____TtC12NowPlayingUI21NowPlayingContentView_radiosityScale];
      v148 = v79 * 20.0;
      v80 = v76 * -56.0 * v79;
      v81 = v78 * -56.0 * v79;
      v181.origin.x = v65;
      v181.origin.y = v67;
      v181.size.width = v69;
      v181.size.height = v71;
      v182 = CGRectInset(v181, v80, v81);
      CGRectOffset(v182, 0.0, v78 * 20.0);
      v149 = 10.0;
      v82 = 0.24;
      v83 = &v158;
    }

    else
    {
      CGAffineTransformMakeScale(&v154, 0.8, 0.8);
      v183.origin.x = v65;
      v183.origin.y = v67;
      v183.size.width = v69;
      v183.size.height = v71;
      CGRectApplyAffineTransform(v183, &v154);
      v84 = swift_allocObject();
      *(v84 + 16) = v136;
      sub_144EAC();
      sub_144ECC();
      *&v154.a = v84;
      sub_14515C();
      sub_144EEC();
      v86 = v85;
      v88 = v87;
      v90 = v89;
      v92 = v91;
      v135(v7, v3);
      v184.origin.x = v86;
      v184.origin.y = v88;
      v184.size.width = v90;
      v184.size.height = v92;
      CGRectInset(v184, v76 * 40.0, v78 * 40.0);
      v149 = 10.0;
      v142 = 0.08;
      v82 = 10.0;
      v83 = &v159;
    }

    *(v83 - 32) = v82;
  }

  v93 = AVLayerVideoGravityResize;

  UIRectIntegralWithScale();
  v95 = v94;
  v97 = v96;
  v143 = v98;
  v100 = v99;
  UIRectIntegralWithScale();
  v102 = v101;
  v104 = v103;
  v106 = v105;
  v108 = v107;
  v154.a = 0.0;
  v154.b = -2.68156159e154;
  sub_1451EC(85);
  a = v154.a;
  b = v154.b;
  v160._countAndFlagsBits = 0xD00000000000001ALL;
  v160._object = 0x80000000001656D0;
  sub_14494C(v160);
  v109 = LODWORD(v151);
  if (LODWORD(v151))
  {
    v110 = 1702195828;
  }

  else
  {
    v110 = 0x65736C6166;
  }

  if (LODWORD(v151))
  {
    v111 = 0xE400000000000000;
  }

  else
  {
    v111 = 0xE500000000000000;
  }

  v161._countAndFlagsBits = v110;
  v161._object = v111;
  sub_14494C(v161);

  v162._countAndFlagsBits = 0xD000000000000018;
  v162._object = 0x80000000001656F0;
  sub_14494C(v162);
  v154.a = v145;
  v154.b = v146;
  LOBYTE(v154.c) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C6D78, &qword_152838);
  v163._countAndFlagsBits = sub_14490C();
  sub_14494C(v163);

  v164._countAndFlagsBits = 0x3D65646F6D2E20;
  v164._object = 0xE700000000000000;
  sub_14494C(v164);
  LOBYTE(v154.a) = v1[*&v144];
  sub_1452AC();
  v165._object = 0x8000000000165710;
  v165._countAndFlagsBits = 0xD000000000000014;
  sub_14494C(v165);
  v166._countAndFlagsBits = v110;
  v166._object = v111;
  sub_14494C(v166);

  sub_140ACC();

  if (v109)
  {
    v112 = swift_allocObject();
    *(v112 + 16) = v136;
    sub_144EAC();
    sub_144ECC();
    *&v154.a = v112;
    sub_14515C();
    v113 = v95;
    v114 = v97;
    v115 = v143;
    sub_144EEC();
    v146 = v116;
    v104 = v117;
    v135(v7, v3);
    v106 = 1.0;
    v118 = &selRef_blackColor;
    v108 = 1.0;
  }

  else
  {
    v119 = v97;
    v115 = v143;
    v146 = v102;
    v113 = v95;
    v114 = v119;
    v118 = &selRef_clearColor;
  }

  v120 = *&v1[v147];

  v121 = [v152 *v118];
  v122 = *(v120 + 224);
  *(v120 + 224) = v121;
  v123 = v121;
  sub_CE434(v122);

  v124 = OBJC_IVAR____TtC12NowPlayingUI21NowPlayingContentView_videoViewController;
  if (*&v1[OBJC_IVAR____TtC12NowPlayingUI21NowPlayingContentView_videoViewController])
  {
    objc_opt_self();
    v125 = swift_dynamicCastObjCClass();
    if (v125)
    {
      [v125 setVideoGravity:v93 forLayoutClass:0];
    }
  }

  sub_CDC60(v113, v114, v115, v100, v153);

  [*&v1[OBJC_IVAR____TtC12NowPlayingUI21NowPlayingContentView_radiosityView] setFrame:{v146, v104, v106, v108}];
  v126 = *&v1[v124];
  if (v126)
  {
    v127 = [v126 view];
    if (v127)
    {
      v128 = v127;
      [v127 setFrame:{0.0, 0.0, v115, v100}];
      [v128 setHidden:LODWORD(v151) ^ 1u];
    }
  }

  v129 = *&v1[OBJC_IVAR____TtC12NowPlayingUI21NowPlayingContentView_placeholderImageView];
  UIRectCenteredIntegralRect();
  [v129 setFrame:?];

  v154.a = v150;
  v154.b = v142;
  v154.c = v148;
  v154.d = 0.0;
  v154.tx = v149;
  v130 = *&v150;
  sub_AA8FC(&v154);

  v131 = [v1 layer];
  v132 = [objc_opt_self() bezierPathWithRoundedRect:v113 cornerRadius:{v114, v115, v100, 6.0}];
  v133 = [v132 CGPath];

  [v131 setShadowPath:v133];
  [v1 invalidateIntrinsicContentSize];
}

void sub_C7DEC(void *a1)
{
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v6[4] = sub_C8D00;
  v6[5] = v3;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_11D5C0;
  v6[3] = &block_descriptor_36;
  v4 = _Block_copy(v6);
  v5 = a1;

  [v2 animateWithDuration:v4 animations:0.2];
  _Block_release(v4);
}

void sub_C7EDC(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC12NowPlayingUI21NowPlayingContentView_radiosityView);
  sub_14114C();
  v2 = v1;
  v3 = sub_1410AC();
  [v2 setImage:v3];
}

double sub_C7F54(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = a4;
  v9 = a1;

  sub_140D7C();

  return result;
}

void sub_C7FF4(void *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v6 = objc_opt_self();
    v7 = swift_allocObject();
    *(v7 + 16) = a4;
    *(v7 + 24) = a1;
    v10[4] = sub_C8CC8;
    v10[5] = v7;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 1107296256;
    v10[2] = sub_11D5C0;
    v10[3] = &block_descriptor_29_0;
    v8 = _Block_copy(v10);
    v9 = a1;

    [v6 animateWithDuration:v8 animations:0.2];
    _Block_release(v8);
  }

  else
  {
    a2();
  }
}

void sub_C8118(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC12NowPlayingUI21NowPlayingContentView_radiosityView);

    [v5 setImage:a2];
  }
}

void sub_C81A0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void sub_C820C(id a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI21NowPlayingContentView_playerPath);
  *(v1 + OBJC_IVAR____TtC12NowPlayingUI21NowPlayingContentView_playerPath) = a1;
  if (!v3)
  {
    if (!a1)
    {
      return;
    }

    v7 = 0;
    a1 = a1;
    goto LABEL_7;
  }

  v7 = v3;
  if (!a1 || (sub_2B860(0, &qword_1C6D50, MPCPlayerPath_ptr), a1 = a1, v4 = v7, v5 = sub_144FFC(), v4, (v5 & 1) == 0))
  {
LABEL_7:
    sub_C5E80();
    sub_C6C8C();

    v6 = v7;
    goto LABEL_8;
  }

  v6 = v4;
LABEL_8:
}

id sub_C8424()
{
  result = *(v0 + OBJC_IVAR____TtC12NowPlayingUI21NowPlayingContentView_videoViewController);
  if (result)
  {
    result = [result view];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v2 = result;
    v3 = [result layer];

    if (v3)
    {
      objc_opt_self();
      result = swift_dynamicCastObjCClass();
      if (result)
      {
        return result;
      }
    }

    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NowPlayingContentView.ViewMode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_20;
  }

  v2 = a2 + 2;
  if (a2 + 2 >= 0xFFFF00)
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

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 2;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 2;
  v9 = (v7 + 2147483646) & 0x7FFFFFFF;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for NowPlayingContentView.ViewMode(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 2;
  if (a3 + 2 >= 0xFFFF00)
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

  if (a3 < 0xFE)
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_C86E8(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_C8704(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

unint64_t sub_C872C()
{
  result = qword_1C6D60;
  if (!qword_1C6D60)
  {
    sub_144EDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C6D60);
  }

  return result;
}

unint64_t sub_C8784()
{
  result = qword_1C6D70;
  if (!qword_1C6D70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C6D68, &qword_152830);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C6D70);
  }

  return result;
}

void sub_C87E8(void *a1)
{
  v3 = OBJC_IVAR____TtC12NowPlayingUI21NowPlayingContentView_videoViewController;
  v4 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI21NowPlayingContentView_videoViewController);
  if (a1)
  {
    v9 = v4;
    v5 = v4;
  }

  else if (v4)
  {
    v9 = v4;
    [v9 willMoveToParentViewController:0];
    v6 = [v9 view];
    if (!v6)
    {
      __break(1u);
      return;
    }

    v7 = v6;
    [v6 removeFromSuperview];

    [v9 removeFromParentViewController];
    v5 = *(v1 + v3);
  }

  else
  {
    v5 = 0;
    v9 = 0;
  }

  *(v1 + v3) = a1;
  v8 = a1;

  sub_C6078(v4);
}

void sub_C88E4(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC12NowPlayingUI21NowPlayingContentView_videoOutput;
  *(v1 + OBJC_IVAR____TtC12NowPlayingUI21NowPlayingContentView_videoOutput) = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v3 = *(v1 + v2);
  if (v3)
  {
    v3 = [v3 playerViewController];
  }

  v4 = v3;
  sub_C87E8(v3);
}

void sub_C8964()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC12NowPlayingUI21NowPlayingContentView_mode) = 2;
  *(v0 + OBJC_IVAR____TtC12NowPlayingUI21NowPlayingContentView_radiosityScale) = 0x3FF0000000000000;
  *(v0 + OBJC_IVAR____TtC12NowPlayingUI21NowPlayingContentView_videoOutput) = 0;
  *(v0 + OBJC_IVAR____TtC12NowPlayingUI21NowPlayingContentView_videoViewController) = 0;
  *(v0 + OBJC_IVAR____TtC12NowPlayingUI21NowPlayingContentView_videoBinding) = 0;
  v2 = OBJC_IVAR____TtC12NowPlayingUI21NowPlayingContentView_artworkComponent;
  type metadata accessor for ArtworkComponentImageView();
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  _s9ComponentCMa();
  swift_allocObject();
  v4 = sub_CFCE0(v3);

  *(v1 + v2) = v4;
  v5 = OBJC_IVAR____TtC12NowPlayingUI21NowPlayingContentView_radiosityView;
  *(v1 + v5) = [objc_allocWithZone(UIImageView) init];
  *(v1 + OBJC_IVAR____TtC12NowPlayingUI21NowPlayingContentView_borderColor) = 0;
  v6 = OBJC_IVAR____TtC12NowPlayingUI21NowPlayingContentView_placeholderImageView;
  *(v1 + v6) = [objc_allocWithZone(UIImageView) init];
  *(v1 + OBJC_IVAR____TtC12NowPlayingUI21NowPlayingContentView_playerPath) = 0;
  *(v1 + OBJC_IVAR____TtC12NowPlayingUI21NowPlayingContentView_deferArtworkUpdates) = 0;
  sub_1452FC();
  __break(1u);
}

uint64_t sub_C8AC8()
{
  swift_unknownObjectUnownedDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_C8B00()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  [Strong setNeedsLayout];
}

uint64_t sub_C8B58()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_C8BB0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_C8BE8()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_C8C34()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_C8C88()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_C8D08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2490, &qword_14AED0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_CAE38(a3, v25 - v10);
  v12 = sub_144ADC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_CAEA8(v11);
  }

  else
  {
    sub_144ACC();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_144A8C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_14491C() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_CAEA8(a3);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_CAEA8(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_C8FC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2490, &qword_14AED0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_CAE38(a3, v25 - v10);
  v12 = sub_144ADC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_CAEA8(v11);
  }

  else
  {
    sub_144ACC();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_144A8C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_14491C() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2AC8, &qword_14CF38);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_CAEA8(a3);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_CAEA8(a3);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2AC8, &qword_14CF38);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_C929C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2490, &qword_14AED0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_CAE38(a3, v25 - v10);
  v12 = sub_144ADC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_CAEA8(v11);
  }

  else
  {
    sub_144ACC();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_144A8C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_14491C() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C6F38, &qword_152998);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_CAEA8(a3);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_CAEA8(a3);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C6F38, &qword_152998);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_C9570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_C9594, a4, 0);
}

uint64_t sub_C9594()
{
  v1.n128_f64[0] = sub_C96F8(v0[3], v0[4]);
  v2 = v0[1];

  return v2(v1);
}

void *sub_C95F8()
{
  if (*(v0 + 192))
  {

    sub_144AEC();
  }

  if (*(v0 + 200))
  {

    sub_144AEC();
  }

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_C96A8()
{
  sub_C95F8();

  return _swift_defaultActor_deallocate(v0);
}

double sub_C96F8(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2490, &qword_14AED0);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = sub_144ADC();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 1, 1, v8);
  v10 = sub_CAC18();
  v11 = swift_allocObject();
  v11[2] = v2;
  v11[3] = v10;
  v11[4] = a1;
  v11[5] = v2;
  swift_retain_n();

  *(v2 + 192) = sub_C8D08(0, 0, v7, &unk_152900, v11);

  v9(v7, 1, 1, v8);
  v12 = swift_allocObject();
  v12[2] = v2;
  v12[3] = v10;
  v12[4] = a2;
  v12[5] = v2;
  swift_retain_n();

  *(v2 + 200) = sub_C8D08(0, 0, v7, &unk_152910, v12);

  return result;
}

uint64_t sub_C98CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[15] = a4;
  v5[16] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2490, &qword_14AED0);
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C6F10, &qword_152958);
  v5[19] = v7;
  v5[20] = *(v7 - 8);
  v5[21] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C6F18, &qword_152960);
  v5[22] = v8;
  v5[23] = *(v8 - 8);
  v5[24] = swift_task_alloc();

  return _swift_task_switch(sub_C9A48, a5, 0);
}

uint64_t sub_C9A48()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  v0[13] = v0[15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C6F20, &qword_152968);
  sub_1D4A4(&qword_1C6F28, &qword_1C6F20, &qword_152968, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_1428CC();
  sub_1425AC();
  (*(v2 + 8))(v1, v3);
  v0[25] = sub_CAC18();
  v4 = sub_1D4A4(&qword_1C6F30, &qword_1C6F18, &qword_152960, &protocol conformance descriptor for AsyncPublisher<A>.Iterator);
  v5 = swift_task_alloc();
  v0[26] = v5;
  *v5 = v0;
  v5[1] = sub_C9BD8;
  v6 = v0[22];

  return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 2, v6, v4);
}

uint64_t sub_C9BD8()
{
  v2 = *v1;
  *(v2 + 216) = v0;

  v3 = *(v2 + 128);
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_144A8C();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_CA184;
  }

  else
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_144A8C();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_C9D70;
  }

  return _swift_task_switch(v7, v4, v6);
}

uint64_t sub_C9D8C(__n128 a1, __n128 a2, __n128 a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 64);
  if (v5 == 2)
  {
    (*(*(v3 + 184) + 8))(*(v3 + 192), *(v3 + 176), a1, a2, a3, v4);

    v6 = *(v3 + 8);

    return v6();
  }

  else
  {
    v8 = *(v3 + 32);
    v9 = *(v3 + 48);
    v10 = *(v3 + 128);
    if ((*(v10 + 184) & 1) != 0 && *(v10 + 176) != 2)
    {
      v30 = *(v3 + 32);
      v31 = *(v3 + 16);
      v11 = *(v3 + 144);
      v28 = *(v3 + 136);
      v29 = *(v3 + 48);
      v12 = *&v9 - *(v10 + 160) - (v4.n128_f64[0] - *(v10 + 128)) * *(v10 + 168);
      v13 = sub_144ADC();
      v14 = *(v13 - 8);
      (*(v14 + 56))(v11, 1, 1, v13);
      v15 = *(v10 + 112);
      v16 = *(v10 + 120);
      sub_144ABC();

      v17 = sub_144AAC();
      v18 = swift_allocObject();
      *(v18 + 16) = v17;
      *(v18 + 24) = &protocol witness table for MainActor;
      *(v18 + 32) = v15;
      *(v18 + 40) = v16;
      *(v18 + 48) = v12;
      sub_CAE38(v11, v28);
      LODWORD(v15) = (*(v14 + 48))(v28, 1, v13);

      v19 = *(v3 + 136);
      if (v15 == 1)
      {
        sub_CAEA8(*(v3 + 136));
      }

      else
      {
        sub_144ACC();
        (*(v14 + 8))(v19, v13);
      }

      v20 = *(v18 + 16);
      swift_unknownObjectRetain();

      if (v20)
      {
        swift_getObjectType();
        v21 = sub_144A8C();
        v23 = v22;
        swift_unknownObjectRelease();
      }

      else
      {
        v21 = 0;
        v23 = 0;
      }

      sub_CAEA8(*(v3 + 144));
      v24 = swift_allocObject();
      *(v24 + 16) = &unk_152978;
      *(v24 + 24) = v18;
      if (v23 | v21)
      {
        *(v3 + 72) = 0;
        *(v3 + 80) = 0;
        *(v3 + 88) = v21;
        *(v3 + 96) = v23;
      }

      swift_task_create();

      v10 = *(v3 + 128);
      v8 = v30;
      v4 = v31;
      v9 = v29;
    }

    *(v10 + 128) = v4;
    *(v10 + 144) = v8;
    *(v10 + 160) = v9;
    *(v10 + 176) = v5 & 0x10101;
    *(v10 + 184) = 0;
    v25 = sub_1D4A4(&qword_1C6F30, &qword_1C6F18, &qword_152960, &protocol conformance descriptor for AsyncPublisher<A>.Iterator);
    v26 = swift_task_alloc();
    *(v3 + 208) = v26;
    *v26 = v3;
    v26[1] = sub_C9BD8;
    v27 = *(v3 + 176);

    return dispatch thunk of AsyncIteratorProtocol.next()(v3 + 16, v27, v25);
  }
}

uint64_t sub_CA184()
{
  *(v0 + 112) = *(v0 + 216);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4228, &qword_14EB70);
  v1 = swift_dynamicCast();

  return _swift_willThrowTypedImpl(v1, &type metadata for Never, &protocol witness table for Never);
}

uint64_t sub_CA210(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v8 = sub_141C0C();
  v6[6] = v8;
  v6[7] = *(v8 - 8);
  v6[8] = swift_task_alloc();
  v6[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C6EE0, &qword_152918);
  v6[10] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C6EE8, &qword_152920);
  v6[11] = v9;
  v6[12] = *(v9 - 8);
  v6[13] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C6EF0, &qword_152928);
  v6[14] = v10;
  v6[15] = *(v10 - 8);
  v6[16] = swift_task_alloc();

  return _swift_task_switch(sub_CA3E8, a6, 0);
}

uint64_t sub_CA3E8()
{
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = *(v0 + 88);
  *(v0 + 16) = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C6EF8, &unk_152930);
  sub_1D4A4(&qword_1C6F00, &qword_1C6EF8, &unk_152930, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_1428CC();
  sub_1425AC();
  (*(v2 + 8))(v1, v3);
  *(v0 + 136) = sub_CAC18();
  v4 = enum case for PlaybackController.TransportCommand.jumpBackward(_:);
  *(v0 + 160) = enum case for PlaybackController.TransportCommand.jumpForward(_:);
  *(v0 + 164) = v4;
  v5 = sub_1D4A4(&qword_1C6F08, &qword_1C6EF0, &qword_152928, &protocol conformance descriptor for AsyncPublisher<A>.Iterator);
  v6 = swift_task_alloc();
  *(v0 + 144) = v6;
  *v6 = v0;
  v6[1] = sub_CA594;
  v7 = *(v0 + 112);
  v8 = *(v0 + 80);

  return dispatch thunk of AsyncIteratorProtocol.next()(v8, v7, v5);
}

uint64_t sub_CA594()
{
  v2 = *v1;
  *(v2 + 152) = v0;

  v3 = *(v2 + 40);
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_144A8C();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_CAA68;
  }

  else
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_144A8C();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_CA72C;
  }

  return _swift_task_switch(v7, v4, v6);
}

uint64_t sub_CA748()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));

    v4 = *(v0 + 8);

    return v4();
  }

  v6 = *(v0 + 160);
  v7 = *(v0 + 64);
  (*(v3 + 32))(*(v0 + 72), v1, v2);
  v8 = *(v3 + 104);
  v8(v7, v6, v2);
  v9 = sub_141BFC();
  v10 = *(v3 + 8);
  v10(v7, v2);
  if (v9 & 1) != 0 || (v11 = *(v0 + 64), v12 = *(v0 + 48), v8(v11, *(v0 + 164), v12), v13 = sub_141BFC(), v10(v11, v12), (v13))
  {
    v15 = *(v0 + 64);
    v14 = *(v0 + 72);
    v17 = *(v0 + 40);
    v16 = *(v0 + 48);
    v8(v15, *(v0 + 160), v16);
    v18 = sub_141BFC();
    v10(v15, v16);
    v10(v14, v16);
    if (*(v17 + 176) != 2)
    {
      v19 = *(v0 + 40);
      v20 = *(v19 + 160);
      if (v18)
      {
        if (v20 >= *(v19 + 152) + -0.5)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }

      if (v20 >= 0.5)
      {
LABEL_13:
        *(v19 + 184) = 1;
      }
    }
  }

  else
  {
    v10(*(v0 + 72), *(v0 + 48));
  }

LABEL_14:
  v21 = sub_1D4A4(&qword_1C6F08, &qword_1C6EF0, &qword_152928, &protocol conformance descriptor for AsyncPublisher<A>.Iterator);
  v22 = swift_task_alloc();
  *(v0 + 144) = v22;
  *v22 = v0;
  v22[1] = sub_CA594;
  v23 = *(v0 + 112);
  v24 = *(v0 + 80);

  return dispatch thunk of AsyncIteratorProtocol.next()(v24, v23, v21);
}

uint64_t sub_CAA68()
{
  *(v0 + 24) = *(v0 + 152);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4228, &qword_14EB70);
  v1 = swift_dynamicCast();

  return _swift_willThrowTypedImpl(v1, &type metadata for Never, &protocol witness table for Never);
}

uint64_t sub_CAAF4(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 32) = a1;
  *(v6 + 16) = a5;
  *(v6 + 24) = a6;
  sub_144ABC();
  *(v6 + 40) = sub_144AAC();
  v8 = sub_144A8C();

  return _swift_task_switch(sub_CAB90, v8, v7);
}

uint64_t sub_CAB90()
{
  v1 = v0[4];
  v2 = *(v0 + 2);

  v2(v3, round(v1));
  v4 = *(v0 + 1);

  return v4();
}

unint64_t sub_CAC18()
{
  result = qword_1C6ED8;
  if (!qword_1C6ED8)
  {
    _s23SkippedDurationObserverCMa();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C6ED8);
  }

  return result;
}

uint64_t sub_CAC70(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1DD10;

  return sub_C98CC(a1, v4, v5, v7, v6);
}

uint64_t objectdestroyTm_8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_CAD78(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D0A8;

  return sub_CA210(v9, a1, v4, v5, v7, v6);
}

uint64_t sub_CAE38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2490, &qword_14AED0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_CAEA8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2490, &qword_14AED0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_CAF10(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_CB008;

  return v6(a1);
}

uint64_t sub_CB008()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_CB100()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_CB138(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DD10;

  return sub_CAF10(a1, v4);
}

uint64_t sub_CB1F0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_CB230(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = *(v1 + 5);
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1DD10;

  return sub_CAAF4(v8, a1, v4, v5, v6, v7);
}

uint64_t sub_CB300(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_CBADC;

  return v5(v2 + 16);
}

uint64_t sub_CB3F4(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_CB4E8;

  return v5(v2 + 16);
}

uint64_t sub_CB4E8()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v5 = *v0;

  *v2 = *(v1 + 16);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_CB618(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DD10;

  return sub_CB3F4(a1, v4);
}

uint64_t sub_CB6D0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D0A8;

  return sub_CB3F4(a1, v4);
}

uint64_t sub_CB788(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DD10;

  return sub_CB300(a1, v4);
}

uint64_t sub_CB840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2490, &qword_14AED0);
  __chkstk_darwin(v9 - 8);
  v11 = &v15 - v10;
  swift_defaultActor_initialize();
  *(v4 + 144) = 0u;
  *(v4 + 160) = 0u;
  *(v4 + 128) = 0u;
  *(v4 + 176) = 2;
  *(v4 + 184) = 0;
  *(v4 + 192) = 0;
  *(v4 + 200) = 0;
  *(v4 + 112) = a3;
  *(v4 + 120) = a4;
  v12 = sub_144ADC();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v4;
  v13[5] = a1;
  v13[6] = a2;

  sub_C8D08(0, 0, v11, &unk_1529D0, v13);

  return v4;
}

uint64_t sub_CB9A8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_CB9F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1DD10;

  return sub_C9570(a1, v4, v5, v6, v7, v8);
}

id sub_CBB24()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0D50, &unk_14A6D0);
  __chkstk_darwin(v1 - 8);
  v3 = &v48[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v6 = &v48[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0D58, qword_1523D0);
  v61 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v48[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v60 = &v48[-v11];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C4A80, qword_14F300);
  __chkstk_darwin(v12 - 8);
  v14 = &v48[-v13];
  v15 = sub_140C2C();
  v62 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v48[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v18);
  v20 = &v48[-v19];
  v21 = type metadata accessor for CompositeCollectionViewAwareTableCell(0);
  v64.receiver = v0;
  v64.super_class = v21;
  v22 = objc_msgSendSuper2(&v64, "_collectionView");
  if (v22)
  {
    v59 = v6;
    v23 = type metadata accessor for CompositeCollectionView();
    v24 = swift_dynamicCastClass();
    if (v24)
    {
      v58 = v7;
      v63.receiver = v24;
      v63.super_class = v23;
      v25 = v22;
      v26 = objc_msgSendSuper2(&v63, "dataSource");
      if (v26)
      {
        v27 = v26;
        v57 = v15;
        type metadata accessor for CompositeCollectionViewController();
        if (swift_dynamicCastClass())
        {
          v55 = v9;
          v56 = v27;
          v28 = OBJC_IVAR____TtC12NowPlayingUI37CompositeCollectionViewAwareTableCell_lastAppliedIndexPath;
          swift_beginAccess();
          sub_1D19C(v0 + v28, v14, &unk_1C4A80, qword_14F300);
          v29 = v62;
          v30 = v57;
          if ((*(v62 + 48))(v14, 1, v57) == 1)
          {
            swift_unknownObjectRelease();

            sub_15340(v14, &unk_1C4A80, qword_14F300);
          }

          else
          {
            v31 = *(v29 + 32);
            v54 = v29 + 32;
            v53 = v31;
            v31(v20, v14, v30);
            v52 = *(v61 + 56);
            v52(v3, 1, 1, v58);

            v32 = sub_140C0C();
            if (v32 == 2)
            {
              v33 = sub_140BFC();
              v34 = v55;
            }

            else
            {
              v34 = v55;
              if (v32 <= 0)
              {
                v33 = sub_14093C();
              }

              else
              {
                v33 = sub_140C3C();
              }
            }

            v35 = v57;
            sub_9E3E8(v33, 0, 0, 0, v65);
            if (v65[0])
            {
              v55 = v65[0];
              v51 = v65[1];
              v50 = v65[2];
              v49 = v66;
              if (sub_140C0C() >= 2)
              {
                v37 = sub_140C0C();
                if (v37 == 2)
                {
                  sub_140BEC();
                }

                else if (v37 <= 2)
                {
                  sub_14093C();
                }

                else
                {
                  sub_140C3C();
                }

                sub_140BDC();
              }

              else
              {
                sub_140C1C();
              }

              sub_15340(v3, &qword_1C0D50, &unk_14A6D0);
              v35 = v57;
              v36 = v58;
              v38 = *(v58 + 48);
              v39 = v51;
              *v3 = v55;
              *(v3 + 1) = v39;
              *(v3 + 2) = v50;
              v3[24] = v49 & 1;
              v53(&v3[v38], v17, v35);
              v52(v3, 0, 1, v36);
            }

            else
            {

              v36 = v58;
            }

            v40 = v59;
            sub_10358(v3, v59, &qword_1C0D50, &unk_14A6D0);
            if ((*(v61 + 48))(v40, 1, v36) == 1)
            {
              (*(v62 + 8))(v20, v35);
              swift_unknownObjectRelease();

              sub_15340(v40, &qword_1C0D50, &unk_14A6D0);
            }

            else
            {
              v41 = v60;
              sub_10358(v40, v60, &qword_1C0D58, qword_1523D0);
              sub_1D19C(v41, v34, &qword_1C0D58, qword_1523D0);
              v42 = v34;
              v43 = *(v34 + 8);
              v44 = *(v36 + 48);
              ObjectType = swift_getObjectType();
              v22 = (*(v43 + 8))(ObjectType, v43);
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();

              sub_15340(v41, &qword_1C0D58, qword_1523D0);
              v46 = *(v62 + 8);
              v46(v20, v35);
              v46((v42 + v44), v35);
            }
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
    }
  }

  return v22;
}

void sub_CC268(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C4A80, qword_14F300);
  __chkstk_darwin(v3 - 8);
  v5 = &v26 - v4;
  if (sub_1450DC())
  {
    v6 = [a1 indexPath];
    sub_140BAC();

    v7 = sub_140C2C();
    (*(*(v7 - 8) + 56))(v5, 0, 1, v7);
  }

  else
  {
    v8 = sub_140C2C();
    (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  }

  v9 = OBJC_IVAR____TtC12NowPlayingUI37CompositeCollectionViewAwareTableCell_lastAppliedIndexPath;
  swift_beginAccess();
  sub_CC9E0(v5, v1 + v9);
  swift_endAccess();
  v10 = [v1 tableViewCell];
  if (!v10)
  {
    __break(1u);
    goto LABEL_12;
  }

  v11 = v10;
  v12 = [v10 _drawsSeparatorAtTopOfSection];

  v13 = [v1 tableViewCell];
  if (!v13)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v14 = v13;
  v15 = [v13 _drawsSeparatorAtBottomOfSection];

  v16 = [v1 tableViewCell];
  if (!v16)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v17 = v16;
  v18 = [v16 showsReorderControl];

  v19 = type metadata accessor for CompositeCollectionViewAwareTableCell(0);
  v27.receiver = v1;
  v27.super_class = v19;
  objc_msgSendSuper2(&v27, "applyLayoutAttributes:", a1);
  v20 = [v1 tableViewCell];
  if (!v20)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v21 = v20;
  [v20 _setDrawsSeparatorAtTopOfSection:v12];

  v22 = [v1 tableViewCell];
  if (!v22)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v23 = v22;
  [v22 _setDrawsSeparatorAtBottomOfSection:v15];

  v24 = [v1 tableViewCell];
  if (v24)
  {
    v25 = v24;
    [v24 setShowsReorderControl:v18];

    return;
  }

LABEL_16:
  __break(1u);
}

id sub_CC838()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CompositeCollectionViewAwareTableCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CompositeCollectionViewAwareTableCell(uint64_t a1)
{
  result = qword_1C6F70;
  if (!qword_1C6F70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_CC8F8(uint64_t a1, uint64_t a2)
{
  sub_CC988(319, a2);
  if (v2 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_CC988(uint64_t a1, uint64_t a2)
{
  if (!qword_1C6F80)
  {
    sub_140C2C();
    v2 = sub_1450CC();
    if (!v3)
    {
      atomic_store(v2, &qword_1C6F80);
    }
  }
}

uint64_t sub_CC9E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C4A80, qword_14F300);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_CCA50()
{

  sub_2173C(*(v0 + 48), *(v0 + 56));
  sub_2173C(*(v0 + 64), *(v0 + 72));

  return swift_deallocClassInstance();
}

uint64_t sub_CCACC()
{

  sub_2173C(*(v0 + 40), *(v0 + 48));
  sub_2173C(*(v0 + 56), *(v0 + 64));
  sub_2173C(*(v0 + 72), *(v0 + 80));
  sub_2173C(*(v0 + 88), *(v0 + 96));

  return swift_deallocClassInstance();
}

void sub_CCB50(uint64_t a1, char a2)
{
  v25 = *(a1 + 16);
  if (!v25)
  {
    return;
  }

  v3 = 0;
  v19 = a1 + 32;
  v23 = (a1 + 40);
  while (1)
  {
    v4 = (v19 + 16 * v3);
    v5 = *v4;
    v6 = v4[1];
    ObjectType = swift_getObjectType();
    v8 = (*(v6 + 8))(ObjectType, v6);
    if (v8 >> 62)
    {
      break;
    }

    v9 = *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8));
    if (v9)
    {
      goto LABEL_7;
    }

LABEL_4:
    ++v3;

    if (v3 == v25)
    {
      return;
    }
  }

  v18 = v8;
  v9 = sub_14531C();
  v8 = v18;
  if (!v9)
  {
    goto LABEL_4;
  }

LABEL_7:
  v20 = v3;
  v24 = v8 & 0xC000000000000001;
  v22 = v8 & 0xFFFFFFFFFFFFFF8;
  v21 = v8 + 32;
  swift_unknownObjectRetain();
  v10 = 0;
LABEL_9:
  while (v24)
  {
    v11 = sub_1451FC();
    v12 = __OFADD__(v10++, 1);
    if (v12)
    {
      goto LABEL_26;
    }

LABEL_15:
    v13 = v23;
    v14 = v25;
    while (1)
    {
      if (*(v13 - 1) != v5)
      {
        v15 = *v13;
        v16 = swift_getObjectType();
        v17 = (*(v15 + 16))(v11, a2 & 1, v16, v15);
        if (v17)
        {
          break;
        }
      }

      v13 += 2;
      if (!--v14)
      {

        if (v10 == v9)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    *(v17 + 40) = v11;
    swift_unknownObjectRetain();

    sub_1449BC();
    if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_1449FC();
    }

    sub_144A2C();

    swift_unknownObjectRelease();
    if (v10 == v9)
    {
LABEL_3:
      swift_unknownObjectRelease();
      v3 = v20;
      goto LABEL_4;
    }
  }

  if (v10 >= *(v22 + 16))
  {
    goto LABEL_27;
  }

  v11 = *(v21 + 8 * v10);

  v12 = __OFADD__(v10++, 1);
  if (!v12)
  {
    goto LABEL_15;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
}

uint64_t sub_CCDFC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3FFFFFFF && *(a1 + 96))
  {
    return (*a1 + 0x3FFFFFFF);
  }

  v3 = ((*(a1 + 48) >> 1) & 0x3FFFFFFE | (*(a1 + 48) >> 31)) ^ 0x3FFFFFFF;
  if (v3 >= 0x3FFFFFFE)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_CCE5C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x3FFFFFFF;
    if (a3 >= 0x3FFFFFFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FFFFFFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *result = 0u;
      *(result + 48) = (4 * ((-a2 >> 1) & 0x1FFFFFFF)) | (a2 << 31);
      *(result + 56) = 0;
    }
  }

  return result;
}

double sub_CCEF0(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 80);
  if ((*(v2 + 51) & 0x80) != 0)
  {
    v7 = *(v2 + 16);

    v10 = v7(a1, a2);
    v11 = [v10 MTMPU_tallestFontFromAttributes];

    if (v11)
    {
      v12 = v11;
      [v12 _scaledValueForValue:v3];
      v3 = v13;
    }

    return v3;
  }

  else
  {
    v4 = *v2;
    v5 = *(v2 + 80);

    [v4 scaledValueForValue:v5];
  }

  return result;
}

double sub_CCFD8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 88);
  if ((*(v2 + 51) & 0x80) != 0)
  {
    v7 = *(v2 + 16);

    v10 = v7(a1, a2);
    v11 = [v10 MTMPU_tallestFontFromAttributes];

    if (v11)
    {
      v12 = v11;
      [v12 _scaledValueForValue:v3];
      v3 = v13;
    }

    return v3;
  }

  else
  {
    v4 = *v2;
    v5 = *(v2 + 88);

    [v4 scaledValueForValue:v5];
  }

  return result;
}

Swift::Int sub_CD0C0()
{
  sub_14545C();
  v1 = v0[1];
  v2 = v0[6];
  if ((v2 & 0x80000000) != 0)
  {
    v5 = sub_14497C();
    sub_14546C(~v5);
  }

  else
  {
    v3 = v0[7];
    v10 = *v0;
    v11 = v1;
    v4 = *(v0 + 2);
    v12 = *(v0 + 1);
    v13 = v4;
    v14 = v2;
    v15 = v3;
    sub_950A4(v9);
  }

  sub_14546C(v0[8]);
  sub_14546C(v0[9]);
  v6 = sub_141ADC();
  sub_14546C(v6);
  v7 = sub_141ADC();
  sub_14546C(v7);
  return sub_1454AC();
}

void sub_CD178(uint64_t a1)
{
  v3 = v1[8];
  v2 = v1[9];
  if ((v1[6] & 0x80000000) != 0)
  {
    v4 = sub_14497C();
    sub_14546C(~v4);
  }

  else
  {
    sub_950A4(a1);
  }

  sub_14546C(v3);
  sub_14546C(v2);
  v5 = sub_141ADC();
  sub_14546C(v5);
  v6 = sub_141ADC();
  sub_14546C(v6);
}

Swift::Int sub_CD224(uint64_t a1)
{
  v8 = v1[2];
  v9 = v1[1];
  v10 = v1[3];
  v11 = *v1;
  v3 = *(v1 + 8);
  v2 = *(v1 + 9);
  sub_14545C();
  if ((v10 & 0x80000000) != 0)
  {
    v4 = sub_14497C();
    sub_14546C(~v4);
  }

  else
  {
    v13 = v11;
    v14 = v9;
    v15 = v8;
    v16 = v10;
    sub_950A4(v12);
  }

  sub_14546C(v3);
  sub_14546C(v2);
  v5 = sub_141ADC();
  sub_14546C(v5);
  v6 = sub_141ADC();
  sub_14546C(v6);
  return sub_1454AC();
}

uint64_t sub_CD300(unint64_t *a1, unint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[6];
  v8 = a1[8];
  v7 = a1[9];
  v9 = *a2;
  v10 = *(a2 + 1);
  v11 = *(a2 + 3);
  v13 = a2[8];
  v12 = a2[9];
  if ((v6 & 0x80000000) != 0)
  {
    if ((v11 & 0x80000000) == 0 || __PAIR128__(v5, v4) != __PAIR128__(v10, v9) && (sub_1453BC() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v14 = *(a2 + 3);
    v15 = a2[5];
    v16 = a1[7];
    v19[0] = v4;
    v19[1] = v5;
    v17 = *(a1 + 2);
    v20 = *(a1 + 1);
    v21 = v17;
    v22 = v6;
    v23 = v16;
    if ((v11 & 0x80000000) != 0)
    {
      return 0;
    }

    v24 = v9;
    v25 = v10;
    v26 = v14;
    v27 = v15;
    v28 = v11;
    if ((sub_94FA8(v19, &v24) & 1) == 0)
    {
      return 0;
    }
  }

  if (v8 != v13 || v7 != v12 || (sub_141AFC() & 1) == 0)
  {
    return 0;
  }

  return sub_141AFC();
}

unint64_t sub_CD440()
{
  result = qword_1C71B8;
  if (!qword_1C71B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C71B8);
  }

  return result;
}

uint64_t sub_CD494(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[6];
  v7 = *a2;
  v8 = *(a2 + 1);
  v9 = *(a2 + 3);
  if ((v6 & 0x80000000) != 0)
  {
    if ((v9 & 0x80000000) == 0)
    {
      return 0;
    }

    v14 = v4 == v7 && v5 == v8;
    if (!v14 && (sub_1453BC() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v10 = *(a2 + 3);
    v11 = a2[5];
    v12 = a1[7];
    v16[0] = v4;
    v16[1] = v5;
    v13 = *(a1 + 2);
    v17 = *(a1 + 1);
    v18 = v13;
    v19 = v6;
    v20 = v12;
    if ((v9 & 0x80000000) != 0)
    {
      return 0;
    }

    v21 = v7;
    v22 = v8;
    v23 = v10;
    v24 = v11;
    v25 = v9;
    if ((sub_94FA8(v16, &v21) & 1) == 0)
    {
      return 0;
    }
  }

  if (a1[8] != a2[8] || a1[9] != a2[9] || (sub_141AFC() & 1) == 0)
  {
    return 0;
  }

  return sub_141AFC();
}

void sub_CD5A8(void *a1)
{
  v2 = v1;
  v3 = *(v1 + 80);
  if (!a1)
  {
    if (!v3)
    {
      return;
    }

    v8 = 1;
    goto LABEL_7;
  }

  if (v3)
  {
    sub_2B860(0, &qword_1C40D0, MPArtworkCatalog_ptr);
    v5 = v3;
    v6 = a1;
    v7 = sub_144FFC();

    v3 = *(v2 + 80);
    if (v3)
    {
      v8 = v7 ^ 1;
LABEL_7:
      v9 = *(v2 + 104);
      v10 = v3;
      v11 = [v9 traitCollection];
      sub_144DCC();
      v13 = v12;

      [v10 setDestinationScale:v13];
      if ((v8 & 1) == 0)
      {
        return;
      }

      v14 = *(v2 + 80);
      if (v14)
      {
        v15 = v14;
        [v15 setRenderHint:{objc_msgSend(v15, "renderHint") | 1}];

        v14 = *(v2 + 80);
      }

      goto LABEL_12;
    }

    if (v7)
    {
      return;
    }
  }

  v14 = 0;
LABEL_12:
  v16 = *(v2 + 72);
  *(v2 + 72) = v14;
  v17 = v14;

  [*(v2 + 104) clearArtworkCatalogs];
  *(v2 + 232) = 0x1000000;
  v18 = *(v2 + 184);
  if (v18)
  {
    v19 = *(v2 + 192);

    v18(v20);

    sub_2173C(v18, v19);
  }
}

uint64_t sub_CD754(uint64_t a1, double a2, double a3)
{
  result = sub_144F5C();
  if ((result & 1) == 0)
  {
    result = *(v3 + 72);
    if (result)
    {
      result = [result setFittingSize:{*(v3 + 88), *(v3 + 96)}];
    }

    *(v3 + 236) = 0;
    v5 = *(v3 + 184);
    if (v5)
    {
      v6 = *(v3 + 192);

      v5(v7);

      return sub_2173C(v5, v6);
    }
  }

  return result;
}

double sub_CD7D8(void *result, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v8 = *(v3 + 120);
  v7 = *(v3 + 128);
  v9 = *(v3 + 136);
  *(v3 + 120) = result;
  *(v3 + 128) = a2;
  *(v3 + 136) = a3;
  if (v9 <= 0xFD)
  {
    if (a3 <= 0xFDu)
    {
      sub_D04A8(result, a2, a3);
      if (_s12NowPlayingUI7ArtworkV11PlaceholderO2eeoiySbAE_AEtFZ_0(v8, v7, v9, result, a2, v4))
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
    if (a3 > 0xFDu)
    {
      return v13;
    }

    sub_990D4(result, a2, a3);
  }

  *(v3 + 236) = 0;
  v10 = *(v3 + 184);
  if (v10)
  {
    v11 = *(v3 + 192);

    v10(v12);
    sub_990A0(v8, v7, v9);
    sub_990A0(result, a2, v4);

    sub_2173C(v10, v11);
    return v13;
  }

LABEL_12:
  sub_990A0(v8, v7, v9);

  return sub_990A0(result, a2, v4);
}

void sub_CD93C(void *a1, uint64_t a2)
{
  v4 = v2[20];
  v2[20] = a1;
  v2[21] = a2;
  v12 = v4;
  if (v4)
  {
    v11 = a1;
    if (a1)
    {
      sub_2B860(0, &qword_1C95B0, NSObject_ptr);
      v5 = v11;
      if (sub_144FFC() & 1) != 0 && (sub_141AFC())
      {

        v6 = v12;
LABEL_13:

        return;
      }
    }
  }

  else
  {
    if (!a1)
    {
      return;
    }

    v11 = a1;
    v7 = a1;
  }

  v8 = v2[23];
  if (!v8)
  {

    v6 = v11;
    goto LABEL_13;
  }

  v9 = v2[24];

  v8(v10);

  sub_2173C(v8, v9);
}

double sub_CDA84(uint64_t a1, uint64_t a2, char a3, double a4)
{
  if (a3 & 1) != 0 || (sub_141AFC() & 1) != 0 || (v7 = a2, (sub_141AFC()))
  {
    a1 = *(v4 + 88);
    v7 = *(v4 + 96);
  }

  v8 = [*(v4 + 104) image];
  if (!v8)
  {
    goto LABEL_23;
  }

  v9 = v8;
  [v8 size];
  v11 = v10;
  v13 = v12;
  sub_141B0C();
  if (v14 >= v11)
  {
    goto LABEL_22;
  }

  sub_141B0C();
  if (v15 >= v13)
  {
    goto LABEL_22;
  }

  if (*(v4 + 152) == 1 && *(v4 + 144))
  {

    if (*&v7 < *&a1)
    {
      a1 = v7;
    }

    v16 = 1.0;
    goto LABEL_25;
  }

  if (*(v4 + 112) != 1 || ((v18 = *(v4 + 88), v17 = *(v4 + 96), (sub_141AFC() & 1) == 0) ? (v19 = v18 / v17) : (v19 = 0.0), (sub_141AFC() & 1) == 0 ? (v20 = v11 / v13) : (v20 = 0.0), vabdd_f64(v19, v20) <= 0.1 || (sub_141AFC() & 1) != 0))
  {
LABEL_22:

LABEL_23:
    v16 = 0.0;
    if ((sub_141AFC() & 1) == 0)
    {
      v16 = *&a1 / *&v7;
    }

    goto LABEL_25;
  }

  sub_141AAC();
  a1 = v22;
  sub_141AAC();
  v16 = 0.0;
  v23 = sub_141AFC();

  if ((v23 & 1) == 0)
  {
    v16 = v11 / v13;
  }

LABEL_25:
  *(v4 + 240) = v16;
  return *&a1;
}

uint64_t sub_CDC60(double a1, double a2, CGFloat a3, CGFloat a4, double a5)
{
  v6 = v5;
  v11 = *(v5 + 72);
  if (v11)
  {
    v12 = 0;
    v13 = 0;
    v14 = v11;
    goto LABEL_8;
  }

  v15 = *(v6 + 136);
  if (v15 <= 0xFD)
  {
    v14 = *(v6 + 120);
    v12 = *(v6 + 128);
    v13 = v15 | 0x20;
    sub_990D4(v14, v12, v15);
LABEL_8:
    v21 = v11;
    sub_141AEC();
    v23 = v22;
    v24 = *(v6 + 104);
    [v24 frame];
    if ((sub_144F1C() & 1) == 0)
    {
      [v24 setFrame:{a1, a2, a3, a4}];
    }

    sub_CE604(v25, v26, a3, a4, v23);
    if (*(v6 + 176))
    {
      [v24 setBackgroundColor:?];
      goto LABEL_27;
    }

    if ((v13 & 0x20) != 0)
    {
      if (*(v6 + 232))
      {
        goto LABEL_27;
      }

      if (v13 > 0x3F)
      {
        v34 = objc_opt_self();
        sub_990D4(v14, v12, v13 & 0xDF);
        v35 = [v34 clearColor];
        [v24 setBackgroundColor:v35];

        v32 = 0;
      }

      else
      {
        sub_990D4(v14, v12, v13 & 0xDF);
        [v24 setBackgroundColor:v14];
        if (v13)
        {
          v32 = 0;
        }

        else
        {
          v32 = v12;
        }
      }

      [v24 _setDrawsAsBackdropOverlayWithBlendMode:v32];
      sub_D006C(v14, v12, v13);
    }

    else
    {
      if (*(v6 + 232))
      {
        goto LABEL_27;
      }

      v27 = v14;
      [v24 _setDrawsAsBackdropOverlayWithBlendMode:0];
      if ([v27 dataSource] && (objc_opt_self(), v28 = swift_dynamicCastObjCClass(), swift_unknownObjectRelease(), v28) || (v29 = objc_msgSend(v27, "existingColorAnalysisWithAlgorithm:", 1)) == 0)
      {
        v33 = *(v6 + 64);
        [v24 setBackgroundColor:v33];
        sub_D006C(v14, v12, v13);
      }

      else
      {
        v30 = v29;
        v31 = [v29 backgroundColor];
        [v24 setBackgroundColor:v31];
        sub_D006C(v14, v12, v13);
      }
    }

    *(v6 + 232) = 1;
LABEL_27:
    v36 = [v24 artworkCatalog];
    v37 = *(v6 + 72);
    v38 = v37 == 0;
    if (v36)
    {
      v39 = v36;
      if (v37)
      {
        sub_2B860(0, &qword_1C40D0, MPArtworkCatalog_ptr);
        v40 = v37;
        v38 = sub_144FFC();

        v39 = v40;
      }

      else
      {
        v38 = 0;
      }
    }

    v41 = [v24 artworkCatalog];
    if (v41)
    {
    }

    else if (!*(v6 + 72))
    {
      if ((v38 & *(v6 + 236) & 1) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_44;
    }

    if ((v38 & 1) == 0)
    {
LABEL_36:
      if (qword_1BFEC0 != -1)
      {
        swift_once();
      }

      [*(qword_1D1728 + 16) addObject:v6];
      *(v6 + 236) = 1;
      if ((v13 & 0x20) != 0)
      {
        sub_D007C(0, 1);
      }

      else
      {
        v42 = *(v6 + 237);
        *(v6 + 237) = 1;
        [v14 setFittingSize:{*(v6 + 88), *(v6 + 96)}];
        [v14 setDestinationScale:v23];

        v43 = sub_14489C();

        [v14 setCacheIdentifier:v43 forRequestingContext:*(v6 + 16)];

        if ((*(v6 + 48) & 1) == 0)
        {
          v53 = *(v6 + 40);
          v44 = v12;
          v45 = v42;
          v46 = objc_opt_self();

          v47 = sub_14489C();

          aBlock[0] = *(v6 + 16);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C7638, &qword_152D48);
          v48 = sub_1450BC();
          v49 = v46;
          v42 = v45;
          v12 = v44;
          [v49 setCacheLimit:v53 forCacheIdentifier:v47 requestingContext:v48];

          swift_unknownObjectRelease();
        }

        v50 = swift_allocObject();
        swift_weakInit();
        v51 = swift_allocObject();
        *(v51 + 16) = v50;
        *(v51 + 24) = v23;
        aBlock[4] = sub_D0454;
        aBlock[5] = v51;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_CE39C;
        aBlock[3] = &block_descriptor_106;
        v52 = _Block_copy(aBlock);

        [v14 setDestination:v24 progressiveConfigurationBlock:v52];
        _Block_release(v52);
        *(v6 + 237) = v42;
        *(v6 + 236) = 0;
      }
    }

LABEL_44:
    if ([v24 isHidden])
    {
      [v24 setHidden:0];
    }

    sub_D006C(v14, v12, v13);
    return 1;
  }

  v16 = *(v6 + 104);
  [v16 setFrame:{a1, a2, a3, a4, a5}];
  [v16 setImage:0];
  [v16 setHidden:1];
  v17 = *(v6 + 200);
  if (v17)
  {
    v18 = *(v6 + 208);

    v17(v19);
    sub_2173C(v17, v18);
  }

  return 0;
}

double sub_CE328(uint64_t a1, void *a2, char a3, uint64_t a4)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_D007C(a2, a3 & 1);
  }

  return result;
}

uint64_t sub_CE39C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = *(a1 + 32);
  v10[3] = swift_getObjectType();
  v10[0] = a2;

  swift_unknownObjectRetain();
  v8 = a3;
  v7(v10, a3, a4);

  return __swift_destroy_boxed_opaque_existential_0(v10);
}

void sub_CE434(uint64_t a1)
{
  v2 = v1;
  v3 = *(v1 + 224);
  sub_2B860(0, &unk_1C8170, UIColor_ptr);
  v4 = v3;
  v5 = sub_144FFC();

  if ((v5 & 1) == 0)
  {
    [*(v2 + 224) alphaComponent];
    v6 = *(v2 + 248);
    if (v7 <= 0.0)
    {
      if (!v6)
      {
        return;
      }

      [v6 removeFromSuperview];
      v8 = *(v2 + 248);
      *(v2 + 248) = 0;
    }

    else
    {
      if (v6)
      {
        v20 = *(v2 + 248);
      }

      else
      {
        v9 = *(v2 + 104);
        [v9 bounds];
        v14 = [objc_allocWithZone(UIView) initWithFrame:{v10, v11, v12, v13}];
        [v14 setUserInteractionEnabled:0];
        v15 = *(v2 + 216);
        v20 = v14;
        [v9 insertSubview:v20 aboveSubview:v15];
        v16 = *(v2 + 248);
        *(v2 + 248) = v20;

        v6 = 0;
      }

      v17 = *(v2 + 224);
      v18 = v6;
      v19 = v17;
      [v20 setBackgroundColor:v19];

      v8 = v20;
    }
  }
}

void sub_CE604(double a1, double a2, CGFloat a3, CGFloat a4, double a5)
{
  v8 = *(v5 + 160);
  if (v8)
  {
    v10 = *(v5 + 168);
    v11 = *(v5 + 104);
    v12 = v8;
    v13 = [v11 layer];
    [v13 setBorderWidth:v10 / a5];

    v14 = [v11 layer];
    v15 = [v12 CGColor];
    [v14 setBorderColor:v15];
  }

  else
  {
    v11 = *(v5 + 104);
    v16 = [v11 layer];
    [v16 setBorderWidth:0.0];

    v15 = [v11 layer];
    [v15 setBorderColor:0];
  }

  v17 = *(v5 + 144);
  v18 = *(v5 + 152);
  v19 = [v11 layer];
  v20 = v19;
  if (v18 == 1)
  {
    [v19 setCornerCurve:kCACornerCurveCircular];

    v21 = [v11 layer];
    if (v17 == 0.0)
    {
      v24 = 0.0;
    }

    else
    {
      v28.origin.x = 0.0;
      v28.origin.y = 0.0;
      v28.size.width = a3;
      v28.size.height = a4;
      Width = CGRectGetWidth(v28);
      v29.origin.x = 0.0;
      v29.origin.y = 0.0;
      v29.size.width = a3;
      v29.size.height = a4;
      Height = CGRectGetHeight(v29);
      if (Height >= Width)
      {
        Height = Width;
      }

      v24 = Height * 0.5;
      if (v24 < 0.0)
      {
        v24 = 0.0;
      }
    }

    [v21 setCornerRadius:v24];
  }

  else
  {
    [v19 setCornerCurve:kCACornerCurveContinuous];

    v21 = [v11 layer];
    [v21 setCornerRadius:v17];
  }

  v25 = *(v5 + 248);
  if (v25)
  {
    v26 = v25;
    [v11 bounds];
    [v26 setFrame:?];
  }
}

void sub_CE8C4(void *a1)
{
  v2 = v1;
  v4 = sub_14400C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2B860(0, &qword_1C2160, OS_dispatch_queue_ptr);
  *v7 = sub_144D8C();
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v8 = sub_14402C();
  (*(v5 + 8))(v7, v4);
  if (v8)
  {
    v9 = *(v2 + 112);
    if (v9 == &dword_0 + 1)
    {
      if (!a1)
      {
        goto LABEL_10;
      }

      [a1 size];
      v11 = v10;
      v13 = v12;
      v15 = *(v2 + 88);
      v14 = *(v2 + 96);
      if (sub_141AFC())
      {
        v16 = 0.0;
      }

      else
      {
        v16 = v15 / v14;
      }

      v17 = sub_141AFC();
      v18 = v11 / v13;
      if (v17)
      {
        v18 = 0.0;
      }

      if (vabdd_f64(v16, v18) <= 0.1)
      {
        v9 = (&dword_0 + 2);
      }

      else
      {
LABEL_10:
        v9 = (&dword_0 + 1);
      }
    }

    v19 = *(v2 + 104);
    if ([v19 contentMode] != v9)
    {
      [v19 setContentMode:v9];
    }
  }

  else
  {
    __break(1u);
  }
}

double sub_CEABC(uint64_t a1, void *a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_CEB20(a2, 0);
  }

  return result;
}

void sub_CEB20(void *a1, char a2)
{
  v3 = v2;
  *(v2 + 234) = a2;
  sub_CE8C4(a1);
  if (a1)
  {
    v6 = *(v2 + 104);
    if ((*(v3 + 237) & 1) != 0 || (a2 & 1) == 0)
    {
      [v6 setImage:a1];
    }

    else
    {
      v7 = *(v3 + 216);
      v8 = a1;
      v9 = [v6 image];
      [v7 setImage:v9];

      v10 = [v7 image];
      if (v10)
      {

        v11 = 0;
      }

      else
      {
        v11 = [v6 backgroundColor];
      }

      [v7 setBackgroundColor:v11];

      [v7 setAlpha:1.0];
      [v7 setHidden:0];
      [v6 setImage:v8];
      v12 = objc_opt_self();
      v25 = sub_CFFD8;
      v26 = v3;
      v21 = _NSConcreteStackBlock;
      v22 = 1107296256;
      v23 = sub_11D5C0;
      v24 = &block_descriptor_14;
      v13 = _Block_copy(&v21);

      v25 = sub_D0004;
      v26 = v3;
      v21 = _NSConcreteStackBlock;
      v22 = 1107296256;
      v23 = sub_4D7D0;
      v24 = &block_descriptor_100_0;
      v14 = _Block_copy(&v21);

      [v12 animateWithDuration:v13 animations:v14 completion:0.2];
      _Block_release(v14);
      _Block_release(v13);
    }

    [a1 size];
    sub_141AFC();
    sub_141AFC();
    sub_141AFC();
    if ((sub_141AFC() & 1) != 0 || (v15 = *(v3 + 184)) == 0)
    {
    }

    else
    {
      v16 = *(v3 + 192);

      v15(v17);

      sub_2173C(v15, v16);
    }
  }

  else
  {
    [*(v2 + 104) setImage:0];
  }

  v18 = *(v3 + 200);
  if (v18)
  {
    v19 = *(v3 + 208);

    v18(v20);
    sub_2173C(v18, v19);
  }

  if (qword_1BFEC0 != -1)
  {
    swift_once();
  }

  sub_6C2C(v3);
}

uint64_t sub_CEF00()
{

  sub_990A0(*(v0 + 120), *(v0 + 128), *(v0 + 136));
  sub_2173C(*(v0 + 184), *(v0 + 192));
  sub_2173C(*(v0 + 200), *(v0 + 208));

  return v0;
}

uint64_t sub_CEF94()
{
  sub_CEF00();

  return swift_deallocClassInstance();
}

void sub_CEFEC(uint64_t a1)
{
  v8.receiver = v1;
  v8.super_class = type metadata accessor for ArtworkComponentImageView();
  objc_msgSendSuper2(&v8, "didMoveToSuperview");
  v2 = [v1 superview];
  v3 = *&v1[OBJC_IVAR____TtC12NowPlayingUI25ArtworkComponentImageView_accessoryImageView];
  if (v2)
  {
    if (v3)
    {
      v4 = v3;
      [v2 insertSubview:v4 aboveSubview:v1];
      v5 = *&v1[OBJC_IVAR____TtC12NowPlayingUI25ArtworkComponentImageView_accessoryStrokeView];
      if (v5)
      {
        v6 = v5;
        [v2 insertSubview:v6 belowSubview:v4];
      }
    }

    else
    {
      v7 = *&v1[OBJC_IVAR____TtC12NowPlayingUI25ArtworkComponentImageView_accessoryStrokeView];
      [v7 removeFromSuperview];
    }
  }

  else
  {
    if (v3)
    {
      [v3 removeFromSuperview];
    }

    [*&v1[OBJC_IVAR____TtC12NowPlayingUI25ArtworkComponentImageView_accessoryStrokeView] removeFromSuperview];
  }
}

void sub_CF298(uint64_t a1)
{
  v8.receiver = v1;
  v8.super_class = type metadata accessor for ArtworkComponentImageView();
  objc_msgSendSuper2(&v8, "traitCollectionDidChange:", a1);
  if (a1)
  {
    sub_144DCC();
    v4 = v3;
  }

  else
  {
    v4 = 0.0;
  }

  v5 = [v1 traitCollection];
  sub_144DCC();
  v7 = v6;

  if (!a1 || v4 != v7)
  {
    sub_CF7C8();
  }
}

void sub_CF3B0()
{
  v1 = *&v0[OBJC_IVAR____TtC12NowPlayingUI25ArtworkComponentImageView_accessoryImageView];
  if (v1)
  {
    v37 = v1;
    [v37 sizeThatFits:{0.0, 0.0}];
    v4 = v2;
    v5 = v3;
    v6 = &v0[OBJC_IVAR____TtC12NowPlayingUI25ArtworkComponentImageView_accessoryStyle];
    if (*&v0[OBJC_IVAR____TtC12NowPlayingUI25ArtworkComponentImageView_accessoryStyle] < 3uLL || (v6[3] & 1) != 0)
    {
      if (v2 > v3)
      {
        v7 = v2;
      }

      else
      {
        v7 = v3;
      }

      [v0 frame];
      Width = CGRectGetWidth(v42);
      [v0 frame];
      Height = CGRectGetHeight(v43);
      if (Width > Height)
      {
        Height = Width;
      }

      v10 = Height / 3.0;
      if (Height / 3.0 >= v7)
      {
        v11 = v4;
      }

      else if (sub_141AFC())
      {
        v5 = v5 / v4 * v10;
        v11 = v10;
      }

      else
      {
        v11 = v4;
        if (sub_141AFC())
        {
          v11 = v4 / v5 * v10;
          v5 = v10;
        }
      }
    }

    else
    {
      v11 = v6[1];
      v5 = v6[2];
    }

    [v0 frame];
    [v0 effectiveUserInterfaceLayoutDirection];
    [v0 bounds];
    sub_144F0C();
    x = v44.origin.x;
    y = v44.origin.y;
    v14 = v44.size.width;
    v15 = v44.size.height;
    MaxX = CGRectGetMaxX(v44);
    v45.origin.x = 0.0;
    v45.origin.y = 0.0;
    v45.size.width = v11;
    v45.size.height = v5;
    v17 = MaxX - CGRectGetWidth(v45);
    v46.origin.x = x;
    v46.origin.y = y;
    v46.size.width = v14;
    v46.size.height = v15;
    CGRectGetMaxY(v46);
    v47.origin.y = 0.0;
    v47.origin.x = v17;
    v47.size.width = v11;
    v47.size.height = v5;
    CGRectGetHeight(v47);
    [v0 effectiveUserInterfaceLayoutDirection];
    [v0 bounds];
    sub_144EFC();
    [v37 setFrame:?];
    v18 = *v6;
    sub_CFFC8(*v6);
    [v37 bounds];
    v23 = v37;
    if (v18)
    {
      v24 = v19;
      v25 = v20;
      v26 = v21;
      v27 = v22;
      v28 = CGRectGetWidth(*&v19) * 0.5;
      v48.origin.x = v24;
      v48.origin.y = v25;
      v48.size.width = v26;
      v48.size.height = v27;
      v29 = CGRectGetHeight(v48) * 0.5;
      v49.origin.x = v24;
      v49.origin.y = v25;
      v49.size.width = v26;
      v49.size.height = v27;
      v30 = CGPathCreateWithRoundedRect(v49, v28, v29, 0);
      sub_B65B4(v18);
      v31 = [v37 layer];
      [v31 setShadowPath:v30];

      if ((*v6 - 1) > 1)
      {
        v23 = v37;
      }

      else
      {
        v32 = [objc_opt_self() blackColor];
        v33 = v11 / v4;
        if (v11 >= v4)
        {
          v33 = 1.0;
        }

        v36 = v33;
        v38 = v32;
        v34 = vdup_n_s32(sub_141AFC());
        v35.i64[0] = v34.u32[0];
        v35.i64[1] = v34.u32[1];
        v39 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v35, 0x3FuLL)), xmmword_152BE0, vmulq_n_f64(xmmword_152BE0, v36));
        v40 = xmmword_152BF0;
        v23 = v32;
        sub_AA8FC(&v38);

        v30 = v23;
      }
    }

    sub_CF7C8();
  }
}