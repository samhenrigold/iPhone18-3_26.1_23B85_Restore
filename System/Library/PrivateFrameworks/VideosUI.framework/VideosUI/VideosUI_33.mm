void sub_1E38B8968()
{
  v2 = v1;
  if (![v1 vuiView])
  {
    __break(1u);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_9_5();
  v3 = type metadata accessor for MediaShowcaseCollectionLayout();
  [v0 bounds];
  OUTLINED_FUNCTION_3();

  v12.origin.x = OUTLINED_FUNCTION_6();
  Width = CGRectGetWidth(v12);
  v5 = sub_1E38B34C8();
  sub_1E3FC7038(Width, v5);
  v6 = [v1 vuiView];
  if (!v6)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_50_7(v6);
  OUTLINED_FUNCTION_3();

  v13.origin.x = OUTLINED_FUNCTION_6();
  Height = CGRectGetHeight(v13);
  if (*(v1 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_hasLayedOutSubviews))
  {
    return;
  }

  v8 = [v1 vuiView];
  if (!v8)
  {
    goto LABEL_10;
  }

  v9 = v8;
  v10 = [v2 vuiView];
  if (!v10)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v11 = v10;
  [v10 bounds];
  OUTLINED_FUNCTION_3();

  v14.origin.x = OUTLINED_FUNCTION_6();
  [v9 sizeThatFits_];
}

double sub_1E38B8AEC()
{
  v0 = sub_1E38B3424();
  [v0 navigationBarTransitionDistance];
  v2 = v1;

  return v2;
}

id sub_1E38B8B30(double a1, double a2)
{
  v3 = v2;
  OUTLINED_FUNCTION_52_11();
  if (v7)
  {
    v8 = v6;
    result = [v2 vuiView];
    if (result)
    {
      v10 = result;
      [result bounds];
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v18 = v17;

      v67.origin.x = v12;
      v67.origin.y = v14;
      v67.size.width = v16;
      v67.size.height = v18;
      Height = CGRectGetHeight(v67);
      if (Height >= v8)
      {
        Height = v8;
      }

      if (Height < 0.0)
      {
        v20 = 0.0;
      }

      else
      {
        v20 = Height;
      }

      v21 = sub_1E38B310C();
      sub_1E3C50ED4(v20);

      v22 = sub_1E38B310C();
      v23 = sub_1E3C478B4();

      v24 = sub_1E38B3424();
      [v24 visibleVideoHeightPercentage];
      v26 = v25;

      if (v26 < 0.0 || v26 > 1.0)
      {
        if (v23 >= v20)
        {
LABEL_21:
          if (v3[OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_isPaused] == 1 && (v3[OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_isStoppedForSideBarEditing] & 1) == 0)
          {
            v3[OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_isPaused] = 0;
            sub_1E38B32B0();
            sub_1E38B310C();
            v36 = OUTLINED_FUNCTION_18_26();
            sub_1E3C51644(v36, v37, v38, v39, v40, v41, v42, v43, v64, v65, v66);

            v32 = *&v3[OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController____lazy_storage___paginatedMediaController];
            sub_1E3C53B10();
LABEL_25:

            goto LABEL_26;
          }

          goto LABEL_26;
        }

LABEL_15:
        if ((v3[OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_isPaused] & 1) == 0 && (v3[OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_isStoppedForSideBarEditing] & 1) == 0)
        {
          OUTLINED_FUNCTION_63_7(OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_isPaused);
          sub_1E38B32B0();
          v28 = sub_1E38B310C();
          v29 = sub_1E3C512E0();

          v30 = v29 - 2;
          v31 = OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController____lazy_storage___paginatedMediaController;
          v32 = *&v3[OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController____lazy_storage___paginatedMediaController];
          if (v30 > 2)
          {
            sub_1E3C47690();

            v44 = *&v3[v31];
            v45 = OUTLINED_FUNCTION_70_3();
            sub_1E3C51644(v45, v46, v47, v48, v49, v50, v51, v52, v64, v65, v66);
          }

          else
          {
            sub_1E3C53BEC();
          }

          goto LABEL_25;
        }

LABEL_26:
        v53 = sub_1E39DFFC8();
        v54 = sub_1E39DFFC8();
        if (v53)
        {
          if ((v54 & 1) == 0)
          {
            goto LABEL_33;
          }

          v55 = *sub_1E3FC6E5C() > a1;
        }

        else
        {
          if ((v54 & 1) != 0 || ![objc_opt_self() isPad])
          {
            goto LABEL_33;
          }

          v55 = *sub_1E3FC6D30() <= v20;
        }

        sub_1E38B335C(v55);
        goto LABEL_33;
      }

      result = [v3 view];
      if (result)
      {
        v33 = result;
        [result bounds];
        v35 = v34;

        if (1.0 - v20 / v35 >= v26)
        {
          goto LABEL_21;
        }

        goto LABEL_15;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

LABEL_33:
  sub_1E38B8968();
  v57 = v56 - a2;
  sub_1E38B8968();
  v59 = (1.0 - a1) * v58;
  if (v59 < 0.0 || v59 > v57)
  {
    if (v57 > v59)
    {
      v61 = 0.0;
    }

    else
    {
      v61 = 1.0;
    }
  }

  else
  {
    v61 = v59 / v57;
  }

  v62 = [objc_opt_self() whiteColor];
  v63 = [v62 vui:*sub_1E3E60700() blendWithColor:v61 percentage:?];

  return v63;
}

id sub_1E38B8E84()
{
  v0 = sub_1E38B3424();
  v1 = [v0 isRubberBandingEnabled];

  return v1;
}

void sub_1E38B8FA8()
{
  v1 = v0;
  v2 = sub_1E38B310C();
  v3 = sub_1E3C46500();

  if (v3)
  {
    type metadata accessor for Accessibility();
    OUTLINED_FUNCTION_50();
    sub_1E40A8408();
    v5 = v4;
    v6 = [v1 vuiView];
    if (v6)
    {
      v7 = v6;
      if (v5)
      {
        OUTLINED_FUNCTION_53();
        v8 = sub_1E4205ED4();
      }

      else
      {
        v8 = 0;
      }

      [v7 setVuiAccessibilityIdentifier_];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1E38B90B0(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_isControlButtonsVisible) = 0;
  sub_1E38B32B0();
  sub_1E38B6168(a2);

  sub_1E38B8FA8();
}

void sub_1E38B90F8()
{
  v1 = [v0 vuiView];
  if (v1)
  {
    v2 = v1;
    [v1 bounds];
    v4 = v3;

    sub_1E38B5EE0(v4);
  }

  else
  {
    __break(1u);
  }
}

void sub_1E38B9168()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v0;
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  v8 = sub_1E38B310C();
  v9 = sub_1E3C5300C();

  v10 = sub_1E324FBDC();
  (*(v6 + 16))(v1, v10, v4);
  v11 = v3;
  v12 = sub_1E41FFC94();
  sub_1E42067E4();

  if (OUTLINED_FUNCTION_75_3())
  {
    OUTLINED_FUNCTION_42_9();
    OUTLINED_FUNCTION_26_8();
    *v4 = 136315394;
    v13 = sub_1E38B2FF0();
    OUTLINED_FUNCTION_58_0(v13, v14);
    OUTLINED_FUNCTION_40_18();
    *(v4 + 4) = v2;
    OUTLINED_FUNCTION_56_11();
    *(v4 + 14) = v9 & 1;
    OUTLINED_FUNCTION_14_6(&dword_1E323F000, v15, v16, "%s paginatedMediaControllerDidUpdateAudioMuteInBackground isMuted = %{BOOL}d");
    OUTLINED_FUNCTION_5_22();
    OUTLINED_FUNCTION_7_7();
  }

  (*(v6 + 8))(v1, v4);
  v17 = sub_1E38B3250();
  sub_1E3FBDD44(v9 & 1);

  sub_1E38B7DA4();
  v18 = sub_1E38D25EC();
  OUTLINED_FUNCTION_51_12(v18);
  sub_1E38D27DC(v9 & 1);

  OUTLINED_FUNCTION_25_2();
}

void sub_1E38B9338()
{
  OUTLINED_FUNCTION_11_5();
  swift_getObjectType();

  nullsub_1();
}

void sub_1E38B9384()
{
  swift_getObjectType();
  OUTLINED_FUNCTION_53();

  nullsub_1();
}

float sub_1E38B93F8()
{
  swift_getObjectType();
  OUTLINED_FUNCTION_74();

  return sub_1E3C45E90();
}

uint64_t sub_1E38B9460(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296D0, &qword_1E429BAA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E38B94D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296D0, &qword_1E429BAA0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1E38B9564()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_1E38B310C();
    v3 = [v2 view];

    if (v3)
    {
      [v3 bounds];
      OUTLINED_FUNCTION_3();

      v5.origin.x = OUTLINED_FUNCTION_6();
      CGRectGetHeight(v5);
      sub_1E3FC6C48();
      v4 = *&v1[OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController____lazy_storage___paginatedMediaController];
      sub_1E3C534D0();
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1E38B9668()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    OUTLINED_FUNCTION_50();
    sub_1E38B6880();
  }
}

uint64_t sub_1E38B96D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id OUTLINED_FUNCTION_48_17()
{
  v3 = *(v0 + v1);

  return v3;
}

id OUTLINED_FUNCTION_69_5()
{

  return [v1 (v0 + 2867)];
}

void OUTLINED_FUNCTION_70_8()
{
}

unint64_t sub_1E38B9774()
{
  v0 = sub_1E4207A04();

  if (v0 >= 0x38)
  {
    return 56;
  }

  else
  {
    return v0;
  }
}

void sub_1E38B97C8(char a1)
{
  switch(a1)
  {
    case 12:
    case 39:
    case 40:
    case 41:
    case 42:
    case 52:
      OUTLINED_FUNCTION_23();
      break;
    case 13:
    case 14:
      return;
    default:
      OUTLINED_FUNCTION_2_60();
      break;
  }
}

uint64_t sub_1E38B9CDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = a3(a1);
  v7 = v6;
  if (v5 == a3(a2) && v7 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1E42079A4();
  }

  return v10 & 1;
}

uint64_t sub_1E38B9D9C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  sub_1E4207B44();
  v4 = a2(a1);
  OUTLINED_FUNCTION_18_0(v4, v5, v6);

  return sub_1E4207BA4();
}

uint64_t sub_1E38B9E14(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  a3(a2);
  sub_1E4206014();
}

uint64_t sub_1E38B9E9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  sub_1E4207B44();
  v5 = a3(a2);
  OUTLINED_FUNCTION_18_0(v5, v6, v7);

  return sub_1E4207BA4();
}

unint64_t sub_1E38B9EF0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E38B9774();
  *a1 = result;
  return result;
}

void sub_1E38B9F20(void *a1@<X8>)
{
  sub_1E38B97C8(*v1);
  *a1 = v3;
  a1[1] = v4;
}

unint64_t sub_1E38B9F4C()
{
  v0 = sub_1E4207A04();

  if (v0 >= 0x1B)
  {
    return 27;
  }

  else
  {
    return v0;
  }
}

void sub_1E38B9FA0(char a1)
{
  switch(a1)
  {
    case 3:
    case 4:
    case 13:
      OUTLINED_FUNCTION_23();
      break;
    default:
      return;
  }
}

unint64_t sub_1E38BA330@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E38B9F4C();
  *a1 = result;
  return result;
}

void sub_1E38BA360(void *a1@<X8>)
{
  sub_1E38B9FA0(*v1);
  *a1 = v3;
  a1[1] = v4;
}

uint64_t sub_1E38BA390(char a1, void *a2)
{
  sub_1E38B97C8(a1);

  return sub_1E3741090(v3, v4, a2);
}

void sub_1E38BA3C8(char a1, uint64_t a2, void *a3)
{
  sub_1E38B97C8(a1);
  sub_1E3741090(v5, v6, a3);
  v8 = v7;
  v9 = 1 << *(a2 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a2 + 64);
  v12 = (v9 + 63) >> 6;

  v13 = 0;
  while (1)
  {
    v14 = v8;
    if (!v11)
    {
      break;
    }

    v15 = v11;
LABEL_10:
    v8 = 0;
    v11 = (v15 - 1) & v15;
    if (v14)
    {
      sub_1E38B9FA0(*(*(a2 + 48) + (__clz(__rbit64(v15)) | (v13 << 6))));
      sub_1E32822E0(v17, v18, v19);

      sub_1E42071F4();
      v8 = v20;

      swift_bridgeObjectRelease_n();
    }
  }

  while (1)
  {
    v16 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v16 >= v12)
    {

      return;
    }

    v15 = *(a2 + 64 + 8 * v16);
    ++v13;
    if (v15)
    {
      v13 = v16;
      goto LABEL_10;
    }
  }

  __break(1u);
}

uint64_t sub_1E38BA560(char a1, uint64_t a2, void *a3)
{
  sub_1E38B97C8(a1);
  v6 = v5;
  v8 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1E4298880;
  *(v9 + 32) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];

  return sub_1E38BA968(v6, v8, v9, a3);
}

uint64_t sub_1E38BA610(uint64_t a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE30, &qword_1E42A9900);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  sub_1E38BAA20(a1, &v15 - v8);
  v10 = sub_1E4205BF4();
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
LABEL_2:
    v11 = 3;
    goto LABEL_9;
  }

  sub_1E38BAA20(v9, v6);
  v12 = *(v10 - 8);
  v13 = (*(v12 + 88))(v6, v10);
  if (v13 != *MEMORY[0x1E69D3D88])
  {
    if (v13 == *MEMORY[0x1E69D3D70])
    {
      v11 = 4;
      goto LABEL_9;
    }

    if (v13 != *MEMORY[0x1E69D3D78])
    {
      (*(v12 + 8))(v6, v10);
    }

    goto LABEL_2;
  }

  if (a2)
  {
    v11 = 6;
  }

  else
  {
    v11 = 5;
  }

LABEL_9:
  sub_1E38BAA90(v9);
  return v11;
}

uint64_t sub_1E38BA7D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE30, &qword_1E42A9900);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v13 - v6;
  sub_1E38BAA20(a1, &v13 - v6);
  v8 = sub_1E4205BF4();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) != 1)
  {
    sub_1E38BAA20(v7, v4);
    v10 = *(v8 - 8);
    v11 = (*(v10 + 88))(v4, v8);
    if (v11 == *MEMORY[0x1E69D3D70])
    {
      v9 = 9;
      goto LABEL_7;
    }

    if (v11 == *MEMORY[0x1E69D3D78])
    {
      v9 = 10;
      goto LABEL_7;
    }

    (*(v10 + 8))(v4, v8);
  }

  v9 = 56;
LABEL_7:
  sub_1E38BAA90(v7);
  return v9;
}

uint64_t sub_1E38BA968(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = sub_1E4205ED4();

  sub_1E376948C();
  v6 = sub_1E42062A4();

  v7 = [a4 localizedStringForKey:v5 withCounts:v6];

  if (!v7)
  {
    return 0;
  }

  v8 = sub_1E4205F14();

  return v8;
}

uint64_t sub_1E38BAA20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE30, &qword_1E42A9900);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E38BAA90(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE30, &qword_1E42A9900);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E38BAAFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF2CE38;
  if (!qword_1ECF2CE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2CE38);
  }

  return result;
}

unint64_t sub_1E38BAB54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF2CE40;
  if (!qword_1ECF2CE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2CE40);
  }

  return result;
}

uint64_t _s15LocalizationKeyOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xC9)
  {
    if (a2 + 55 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 55) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 56;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x38;
  v5 = v6 - 56;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s15LocalizationKeyOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 55 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 55) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xC9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xC8)
  {
    v6 = ((a2 - 201) >> 8) + 1;
    *result = a2 + 55;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 55;
        }

        break;
    }
  }

  return result;
}

uint64_t _s17LocalizationTokenOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE6)
  {
    if (a2 + 26 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 26) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 27;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1B;
  v5 = v6 - 27;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s17LocalizationTokenOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 26 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 26) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE5)
  {
    v6 = ((a2 - 230) >> 8) + 1;
    *result = a2 + 26;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 26;
        }

        break;
    }
  }

  return result;
}

double sub_1E38BAE74@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 2) = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 1;
  *(a1 + 41) = 2;
  return result;
}

uint64_t sub_1E38BAEA8@<X0>(uint64_t result@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, char a7@<W6>, uint64_t a8@<X8>, double a9@<D0>, double a10@<D1>, double a11@<D2>)
{
  *a8 = result;
  *(a8 + 1) = a2;
  *(a8 + 2) = a3;
  *(a8 + 8) = a9;
  *(a8 + 16) = a10;
  *(a8 + 24) = a11;
  *(a8 + 32) = a4;
  *(a8 + 40) = a5 & 1;
  *(a8 + 41) = a6;
  *(a8 + 42) = a7;
  return result;
}

__n128 __swift_memcpy43_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 27) = *(a2 + 27);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1E38BAEF4(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[43])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E38BAF40(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 42) = 0;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 43) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 43) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1E38BAFB4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_77();
  sub_1E4200674();

  return v1;
}

uint64_t sub_1E38BB024@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 1136))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1E38BB0A4()
{
  swift_getKeyPath();
  swift_getKeyPath();

  OUTLINED_FUNCTION_82();
  return sub_1E4200684();
}

uint64_t sub_1E38BB110()
{
  v0 = OUTLINED_FUNCTION_57_2();
  OUTLINED_FUNCTION_11_3(v0, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0, &unk_1E42BEDC0);
  sub_1E4200644();
  return swift_endAccess();
}

uint64_t sub_1E38BB178(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D8F0, &qword_1E42981C0);
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_66_4();
  OUTLINED_FUNCTION_77();
  v7();
  OUTLINED_FUNCTION_11_3(v1 + OBJC_IVAR____TtC8VideosUI18LibLockupViewModel__isDownloadInProgress, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0, &unk_1E42BEDC0);
  sub_1E4200654();
  swift_endAccess();
  return (*(v5 + 8))(a1, v3);
}

uint64_t sub_1E38BB2D4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_38_13();
  v4 = OUTLINED_FUNCTION_114_0();
  sub_1E32752B0(v4, v5, a3, v6);
  return sub_1E42006B4();
}

uint64_t *sub_1E38BB350()
{
  OUTLINED_FUNCTION_8();
  v8 = (*(v0 + 1520))();
  v1 = OUTLINED_FUNCTION_57();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_38_13();
  OUTLINED_FUNCTION_82();
  sub_1E32752B0(v3, v4, v5, v6);
  sub_1E42006B4();
  OUTLINED_FUNCTION_50();

  return &v8;
}

void *sub_1E38BB3F8()
{
  OUTLINED_FUNCTION_8();
  (*(v1 + 1656))();
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI18LibLockupViewModel__routerDataSource);
  v3 = v2;
  return v2;
}

uint64_t sub_1E38BB460()
{
  OUTLINED_FUNCTION_8();
  (*(v0 + 1496))(v2);
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  OUTLINED_FUNCTION_50();
  sub_1E4207944();
  OUTLINED_FUNCTION_60_0();
  __swift_destroy_boxed_opaque_existential_1(v2);
  return OUTLINED_FUNCTION_32_0();
}

uint64_t sub_1E38BB4DC()
{
  OUTLINED_FUNCTION_8();
  (*(v0 + 1496))(v4);
  OUTLINED_FUNCTION_70(v4);
  v1 = OUTLINED_FUNCTION_26_1();
  v2(v1);
  OUTLINED_FUNCTION_60_0();
  __swift_destroy_boxed_opaque_existential_1(v4);
  return OUTLINED_FUNCTION_32_0();
}

void sub_1E38BB564(uint64_t a1)
{
  type metadata accessor for LibLockupViewModel(0);
  if (!swift_dynamicCastClass())
  {
    return;
  }

  OUTLINED_FUNCTION_8();
  v3 = *(v2 + 464);

  v5 = v3(v4);
  v6 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
LABEL_15:
    OUTLINED_FUNCTION_12_6();
    v15 = *(v14 + 464);

    v17 = v15(v16);

    v18 = MEMORY[0x1E69E7CC0];
    if (v17)
    {
      v39[0] = MEMORY[0x1E69E7CC0];
      v19 = sub_1E32AE9B0(v17);
      for (i = 0; v19 != i; ++i)
      {
        if ((v17 & 0xC000000000000001) != 0)
        {
          v22 = MEMORY[0x1E6911E60](i, v17);
          v21 = v22;
        }

        else
        {
          if (i >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_41;
          }

          v21 = *(v17 + 8 * i + 32);
        }

        if (__OFADD__(i, 1))
        {
          goto LABEL_40;
        }

        LOWORD(v38[0]) = *(v21 + 98);
        v40 = 67;
        sub_1E3741534(v22, v23, v24);
        if (sub_1E4205E84())
        {
        }

        else
        {
          sub_1E4207544();
          sub_1E4207584();
          sub_1E4207594();
          sub_1E4207554();
        }
      }

      v18 = v39[0];
    }

    OUTLINED_FUNCTION_12_6();
    (*(v25 + 1496))(v39);
    __swift_project_boxed_opaque_existential_1(v39, v39[3]);
    OUTLINED_FUNCTION_27_18();
    v26 = OUTLINED_FUNCTION_75();
    v28 = v27(v26);
    v30 = v29;
    (*(*v1 + 1496))(v38);
    v31 = v38[4];
    __swift_project_boxed_opaque_existential_1(v38, v38[3]);
    OUTLINED_FUNCTION_66_4();
    v32 = OUTLINED_FUNCTION_38();
    v34 = v33(v32, v31);
    if (v28 == v34 && v30 == v35)
    {

      __swift_destroy_boxed_opaque_existential_1(v38);
      __swift_destroy_boxed_opaque_existential_1(v39);
    }

    else
    {
      v37 = OUTLINED_FUNCTION_97_0(v28, v30, v34);

      __swift_destroy_boxed_opaque_existential_1(v38);
      __swift_destroy_boxed_opaque_existential_1(v39);
      if ((v37 & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    sub_1E38BBA04(v6, v18);
LABEL_37:

    return;
  }

  v7 = v5;
  v39[0] = MEMORY[0x1E69E7CC0];
  v8 = sub_1E32AE9B0(v5);
  for (j = 0; ; ++j)
  {
    if (v8 == j)
    {

      v6 = v39[0];
      goto LABEL_15;
    }

    if ((v7 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x1E6911E60](j, v7);
      v10 = v11;
    }

    else
    {
      if (j >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_39;
      }

      v10 = *(v7 + 8 * j + 32);
    }

    if (__OFADD__(j, 1))
    {
      break;
    }

    LOWORD(v38[0]) = *(v10 + 98);
    v40 = 67;
    sub_1E3741534(v11, v12, v13);
    if (sub_1E4205E84())
    {
    }

    else
    {
      sub_1E4207544();
      sub_1E4207584();
      sub_1E4207594();
      sub_1E4207554();
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
}

uint64_t type metadata accessor for LibLockupViewModel(uint64_t a1)
{
  result = qword_1EE2A0940;
  if (!qword_1EE2A0940)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E38BBA04(unint64_t a1, unint64_t a2)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1E4207384())
  {
    if (a2 >> 62)
    {
      result = sub_1E4207384();
    }

    else
    {
      result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (i != result)
    {
      v14 = 0;
      return v14 & 1;
    }

    if (!i)
    {
      goto LABEL_31;
    }

    v7 = a1 & 0xFFFFFFFFFFFFFF8;
    v8 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a1 & 0x8000000000000000) != 0)
    {
      v7 = a1;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_31:
      v14 = 1;
      return v14 & 1;
    }

    if (i < 0)
    {
      break;
    }

    v4 = type metadata accessor for ViewModel();
    v11 = 4;
    while (1)
    {
      v12 = v11 - 4;
      v13 = v11 - 3;
      if (__OFADD__(v11 - 4, 1))
      {
        break;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1E6911E60](v11 - 4, a1);
      }

      else
      {
        if (v12 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_34;
        }
      }

      if ((a2 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1E6911E60](v11 - 4, a2);
      }

      else
      {
        if (v12 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_35;
        }
      }

      sub_1E38C7288(&qword_1EE23BA60, type metadata accessor for ViewModel, &protocol conformance descriptor for ViewModel);
      v14 = sub_1E4205E84();

      if (v14)
      {
        ++v11;
        if (v13 != i)
        {
          continue;
        }
      }

      return v14 & 1;
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

  __break(1u);
  return result;
}

double sub_1E38BBC10()
{
  OUTLINED_FUNCTION_8();
  (*(v0 + 1664))();

  return result;
}

uint64_t sub_1E38BBC68()
{
  OUTLINED_FUNCTION_8();
  (*(v1 + 1496))(v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32770, &unk_1E42988A0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE58, &unk_1E42A8830);
  v10 = OUTLINED_FUNCTION_44_22(v2, v3, v4, v5, v6, v7, v8, v9, v16[0]);
  v13 = OUTLINED_FUNCTION_102_0(v10, v17, v11, v12);
  if (v13)
  {
    __swift_destroy_boxed_opaque_existential_1(v16);
    LOBYTE(v13) = sub_1E38BBD0C(*(v0 + 328), 10, v14);
  }

  return v13 & 1;
}

uint64_t sub_1E38BBD0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1E37D4BA4(a1, a2, a3);
  sub_1E4206254();
  sub_1E4206254();
  if (v8 == v6 && v9 == v7)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1E42079A4();
  }

  return v4 & 1;
}

uint64_t sub_1E38BBDBC()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
}

double sub_1E38BBE00(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI18LibLockupViewModel_contextMenuPreviewItem;
  OUTLINED_FUNCTION_57_2();
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

uint64_t sub_1E38BBEAC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8VideosUI18LibLockupViewModel_mediaEntity;
  OUTLINED_FUNCTION_57_2();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  return sub_1E38C6028(v1 + v3, a1);
}

uint64_t sub_1E38BBEFC(__int128 *a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI18LibLockupViewModel_mediaEntity;
  v4 = OUTLINED_FUNCTION_57_2();
  OUTLINED_FUNCTION_11_3(v4, v5);
  __swift_destroy_boxed_opaque_existential_1((v1 + v3));
  sub_1E3251BE8(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1E38BBF58()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
}

double sub_1E38BBF9C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI18LibLockupViewModel_imageLoadedSubject;
  OUTLINED_FUNCTION_57_2();
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

uint64_t sub_1E38BBFF0()
{
  OUTLINED_FUNCTION_8();
  (*(v0 + 1496))(v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32770, &unk_1E42988A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE68, &unk_1E42A8E30);
  v9 = OUTLINED_FUNCTION_44_22(v1, v2, v3, v4, v5, v6, v7, v8, *&v20[0]);
  if (OUTLINED_FUNCTION_90_0(v9, v21, v10, v11))
  {
    sub_1E3251BE8(v20, v22);
    v12 = v22[4];
    __swift_project_boxed_opaque_existential_1(v22, v22[3]);
    v13 = OUTLINED_FUNCTION_38();
    v14(v13, v12);
    return __swift_destroy_boxed_opaque_existential_1(v22);
  }

  else
  {
    OUTLINED_FUNCTION_28_0();
    sub_1E325F7FC(v20, &qword_1ECF2CE78, &unk_1E42C61E0);
    sub_1E41FE5D4();
    OUTLINED_FUNCTION_32_2();
    return __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
  }
}

void sub_1E38BC104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_allocObject();
  OUTLINED_FUNCTION_35_0();
  sub_1E38BC16C();
}

void sub_1E38BC16C()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v58 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0, &unk_1E42BEDC0);
  OUTLINED_FUNCTION_0_10();
  v13 = v12;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v57 - v15;
  v17 = OBJC_IVAR____TtC8VideosUI18LibLockupViewModel__isDownloadInProgress;
  LOBYTE(v62[0]) = 0;
  sub_1E4200634();
  (*(v13 + 32))(v1 + v17, v16, v11);
  *(v1 + OBJC_IVAR____TtC8VideosUI18LibLockupViewModel_contextMenuPreviewItem) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI18LibLockupViewModel_isViewModelConstructed) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI18LibLockupViewModel__routerDataSource) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI18LibLockupViewModel__contextMenuItemViewModels) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI18LibLockupViewModel__attributes) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI18LibLockupViewModel_playbackUIBeingShownDidChangeObserver) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI18LibLockupViewModel_downloadButtonViewModel) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI18LibLockupViewModel_downloadStateObserver) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI18LibLockupViewModel_episodeDownloadingStatusStateObserver) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI18LibLockupViewModel_didQueryDownloadInfo) = 0;
  v18 = OBJC_IVAR____TtC8VideosUI18LibLockupViewModel_childrenUpdatedSubject;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF326C0, &qword_1E429D160);
  swift_allocObject();
  *(v1 + v18) = sub_1E4200544();
  v19 = OBJC_IVAR____TtC8VideosUI18LibLockupViewModel_imageLoadedSubject;
  swift_allocObject();
  *(v1 + v19) = sub_1E4200544();
  v20 = OBJC_IVAR____TtC8VideosUI18LibLockupViewModel_contextMenuUpdateSubject;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE48, &unk_1E42A8820);
  swift_allocObject();
  *(v1 + v20) = sub_1E4200544();
  sub_1E41FE5D4();
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
  sub_1E38C6028(v10, v1 + OBJC_IVAR____TtC8VideosUI18LibLockupViewModel_mediaEntity);
  *(v1 + 328) = v8;
  *(v1 + 312) = v6;
  *(v1 + 320) = v4;
  __swift_project_boxed_opaque_existential_1(v10, v10[3]);
  v25 = OUTLINED_FUNCTION_25_27();
  v27 = v26(v25);
  v29 = v28;
  *(v1 + 296) = v27;
  *(v1 + 304) = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F320, &unk_1E429A280);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1E4299720;
  *(v30 + 32) = v27;
  *(v30 + 40) = v29;

  sub_1E3A8ADF4(v8);
  *(v30 + 48) = v31;
  *(v30 + 56) = v32;
  v62[0] = v30;
  v33 = &qword_1E429CDD0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C420, &qword_1E429CDD0);
  OUTLINED_FUNCTION_68_3();
  sub_1E32752B0(v34, v35, v36, v37);
  v38 = v62;
  sub_1E4205DF4();
  OUTLINED_FUNCTION_134_2();

  v59 = v62;
  v60 = &qword_1E429CDD0;
  if (v58)
  {
    MEMORY[0x1E69109E0](0x79746F746F72702ELL, 0xEA00000000006570);
    v38 = v59;
    v33 = v60;
  }

  *(v1 + 280) = v38;
  *(v1 + 288) = v33;

  OUTLINED_FUNCTION_68_3();
  OUTLINED_FUNCTION_21_7();
  v44 = sub_1E3B76D04(v39, v40, v41, v42, v43, 0, 0);
  if (v44)
  {
    type metadata accessor for Accessibility();
    OUTLINED_FUNCTION_38();

    v45 = sub_1E40A92F0();
    (*(*v44 + 328))(v45);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CED8, &qword_1E42A89C8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E4297BE0;
    sub_1E3853DA8(21);
    *(inited + 32) = v47;
    *(inited + 40) = v48;
    *(inited + 48) = sub_1E38C1020(v47, v48, v49) & 1;
    v50 = sub_1E4205CB4();
    sub_1E3855E78();
    swift_isUniquelyReferenced_nonNull_native();
    v61 = v50;
    OUTLINED_FUNCTION_90();
    sub_1E38C5B64(v51, v52, v53, v54);

    sub_1E38C10D0(v61);
    v56 = v55;

    *(v44 + OBJC_IVAR____TtC8VideosUI18LibLockupViewModel__attributes) = v56;

    sub_1E38BC5F4();
  }

  __swift_destroy_boxed_opaque_existential_1(v10);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E38BC5F4()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3DB30, &unk_1E42A89B0);
  OUTLINED_FUNCTION_17_2(v2);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  v54 = &v48 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CEC0, &qword_1E42DFB70);
  OUTLINED_FUNCTION_17_2(v5);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v48 - v7;
  v9 = sub_1E4207094();
  OUTLINED_FUNCTION_0_10();
  v55 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  v15 = sub_1E4206C04();
  OUTLINED_FUNCTION_0_10();
  v53 = v16;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  v20 = v19 - v18;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CEC8, &qword_1E42A89C0);
  OUTLINED_FUNCTION_0_10();
  v23 = v22;
  OUTLINED_FUNCTION_5_7();
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = &v48 - v26;
  (*(*v0 + 1496))(v57, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32770, &unk_1E42988A0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE68, &unk_1E42A8E30);
  if (OUTLINED_FUNCTION_90_0(v56, v57, v29, v28))
  {
    __swift_destroy_boxed_opaque_existential_1(v56);
    v30 = v0[328];
    if (sub_1E38BBD0C(v1[328], 10, v31) & 1) != 0 || (sub_1E38BBD0C(v30, 9, v32))
    {
      v51 = v23;
      v52 = v21;
      v50 = OBJC_IVAR____TtC8VideosUI18LibLockupViewModel_playbackUIBeingShownDidChangeObserver;
      if (*&v1[OBJC_IVAR____TtC8VideosUI18LibLockupViewModel_playbackUIBeingShownDidChangeObserver])
      {

        sub_1E42004E4();
      }

      v33 = [objc_opt_self() defaultCenter];
      v34 = VUIPlaybackManagerIsPlaybackUIBeingShownDidChange[0];
      v35 = objc_opt_self();
      v36 = v34;
      v37 = [v35 sharedInstance];
      sub_1E4206C14();

      sub_1E4207074();
      OUTLINED_FUNCTION_32_2();
      v49 = v9;
      __swift_storeEnumTagSinglePayload(v38, v39, v40, v9);
      v41 = [objc_opt_self() mainRunLoop];
      v57[0] = v41;
      sub_1E4207054();
      v42 = v54;
      OUTLINED_FUNCTION_32_2();
      __swift_storeEnumTagSinglePayload(v43, v44, v45, v46);
      sub_1E3280A90(0, &qword_1EE23AD08, 0x1E695DFD0);
      sub_1E38C7288(&qword_1EE23B130, MEMORY[0x1E6969F20], MEMORY[0x1E6969F18]);
      sub_1E3782CC4();
      sub_1E4200784();
      sub_1E325F7FC(v42, &unk_1ECF3DB30, &unk_1E42A89B0);

      sub_1E325F7FC(v8, &qword_1ECF2CEC0, &qword_1E42DFB70);
      (*(v55 + 8))(v14, v49);
      (*(v53 + 8))(v20, v15);
      OUTLINED_FUNCTION_4_0();
      swift_allocObject();
      swift_weakInit();
      sub_1E32752B0(&qword_1ECF2CED0, &qword_1ECF2CEC8, &qword_1E42A89C0, MEMORY[0x1E695BDB0]);
      v47 = v52;
      sub_1E4200844();
      OUTLINED_FUNCTION_38();

      (*(v51 + 8))(v27, v47);
      *&v1[v50] = v27;
    }
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E38BCB54()
{

  v1 = OBJC_IVAR____TtC8VideosUI18LibLockupViewModel__isDownloadInProgress;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0, &unk_1E42BEDC0);
  OUTLINED_FUNCTION_37_1();
  (*(v2 + 8))(v0 + v1);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC8VideosUI18LibLockupViewModel_mediaEntity));

  return sub_1E325F7FC(v0 + OBJC_IVAR____TtC8VideosUI18LibLockupViewModel__lastKnownDownloadExpirationDate, &unk_1ECF28E20, &unk_1E42986D0);
}

uint64_t sub_1E38BCC94()
{
  if (*(v0 + OBJC_IVAR____TtC8VideosUI18LibLockupViewModel_downloadStateObserver))
  {

    sub_1E42004E4();
  }

  if (*(v0 + OBJC_IVAR____TtC8VideosUI18LibLockupViewModel_episodeDownloadingStatusStateObserver))
  {

    sub_1E42004E4();
  }

  if (*(v0 + OBJC_IVAR____TtC8VideosUI18LibLockupViewModel_playbackUIBeingShownDidChangeObserver))
  {

    sub_1E42004E4();
  }

  v1 = sub_1E3B7736C();

  v2 = OBJC_IVAR____TtC8VideosUI18LibLockupViewModel__isDownloadInProgress;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0, &unk_1E42BEDC0);
  OUTLINED_FUNCTION_37_1();
  (*(v3 + 8))(v1 + v2);

  __swift_destroy_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC8VideosUI18LibLockupViewModel_mediaEntity));

  sub_1E325F7FC(v1 + OBJC_IVAR____TtC8VideosUI18LibLockupViewModel__lastKnownDownloadExpirationDate, &unk_1ECF28E20, &unk_1E42986D0);
  return v1;
}

uint64_t sub_1E38BCE54()
{
  v0 = sub_1E38BCC94();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void sub_1E38BCEE4(uint64_t a1)
{
  v3 = v1;
  OUTLINED_FUNCTION_8();
  v5 += 187;
  v6 = *v5;
  (*v5)(v134);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32770, &unk_1E42988A0);
  v7 = OUTLINED_FUNCTION_106();
  v8 = type metadata accessor for LibMPBaseMediaEntity(v7);
  if (OUTLINED_FUNCTION_90_0(&v131, v134, v9, v8))
  {
    OUTLINED_FUNCTION_8();
    v11 = (*(v10 + 464))();

    if (v11)
    {
      *(v1 + OBJC_IVAR____TtC8VideosUI18LibLockupViewModel_didQueryDownloadInfo) = 1;
      return;
    }
  }

  if (*(v1 + OBJC_IVAR____TtC8VideosUI18LibLockupViewModel_didQueryDownloadInfo))
  {
    return;
  }

  *(v1 + OBJC_IVAR____TtC8VideosUI18LibLockupViewModel_didQueryDownloadInfo) = 1;
  if (!a1)
  {
    goto LABEL_10;
  }

  if (*(a1 + OBJC_IVAR____TtC8VideosUI18LibLockupViewModel_downloadStateObserver))
  {

    sub_1E42004E4();
  }

  v12 = OBJC_IVAR____TtC8VideosUI18LibLockupViewModel_downloadButtonViewModel;
  v13 = *(a1 + OBJC_IVAR____TtC8VideosUI18LibLockupViewModel_downloadButtonViewModel);
  if (v13)
  {
    v14 = v13;
  }

  else
  {
LABEL_10:
    sub_1E3280A90(0, &qword_1EE23AFA0, off_1E8728338);
    v6(v134);
    v133 = 0;
    v131 = 0u;
    v132 = 0u;
    v13 = sub_1E3BFF560(v134, &v131);
    v12 = OBJC_IVAR____TtC8VideosUI18LibLockupViewModel_downloadButtonViewModel;
  }

  v15 = *(v3 + v12);
  *(v3 + v12) = v13;

  v16 = sub_1E38BD704();
  (v6)(v134, v16);
  v17 = *(v3 + v12);
  v18 = *v3 + 1632;
  v19 = *v18;
  v20 = v17;
  v21 = v19(v134, v17);

  __swift_destroy_boxed_opaque_existential_1(v134);
  if (!v21)
  {
LABEL_94:
    *(v3 + OBJC_IVAR____TtC8VideosUI18LibLockupViewModel__contextMenuItemViewModels) = 0;

    v113 = *(*v3 + 1216);

    v115 = v113(v114);
    if (v115)
    {
      v116 = v115;
    }

    else
    {
      v116 = MEMORY[0x1E69E7CC0];
    }

    v134[0] = v116;
    sub_1E4200524();

    return;
  }

  if ((sub_1E373F6E0(*(v21 + 98), 63, v22, v23, v24, v25) & 1) == 0 || (v119 = v21, OUTLINED_FUNCTION_111(), (v27 = (*(v26 + 464))()) == 0))
  {
LABEL_93:

    goto LABEL_94;
  }

  v28 = v27;
  v130 = v27;
  v29 = 0;
  v124 = v27 & 0xC000000000000001;
  v125 = sub_1E32AE9B0(v27);
  v123 = v28 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v125 == v29)
    {
LABEL_85:
      v122 = sub_1E32AE9B0(v28);
      goto LABEL_86;
    }

    if (v124)
    {
      v31 = v29;
      v61 = OUTLINED_FUNCTION_75();
      v33 = MEMORY[0x1E6911E60](v61);
      v32 = v33;
    }

    else
    {
      v30 = *(v123 + 16);
      if (v29 >= v30)
      {
        goto LABEL_102;
      }

      v31 = v29;
      v32 = *(v28 + 8 * v29 + 32);
    }

    v36 = *(v32 + 98);
    HIWORD(v129) = v36;
    WORD2(v129) = 63;
    sub_1E3742F1C(v33, v34, v35);
    OUTLINED_FUNCTION_125();
    sub_1E4206254();
    OUTLINED_FUNCTION_128_3();
    OUTLINED_FUNCTION_125();
    v37 = sub_1E4206254();
    v45 = OUTLINED_FUNCTION_46_13(v37, v38, v39, v40, v41, v42, v43, v44, v118, v119, v120, v123, v124, v125, v129, v130, v131, *(&v131 + 1), v132, *(&v132 + 1), v133, v134[0]);
    v48 = v48 && v2 == &v129 + 6;
    if (v48)
    {
      break;
    }

    OUTLINED_FUNCTION_71_11(v45, v46, v47);
    OUTLINED_FUNCTION_158_2();

    if (v18)
    {
      goto LABEL_36;
    }

    HIWORD(v129) = v36;
    OUTLINED_FUNCTION_92_4();
    OUTLINED_FUNCTION_125();
    sub_1E4206254();
    OUTLINED_FUNCTION_128_3();
    OUTLINED_FUNCTION_125();
    v49 = sub_1E4206254();
    v57 = OUTLINED_FUNCTION_46_13(v49, v50, v51, v52, v53, v54, v55, v56, v118, v119, v121, v123, v124, v126, v129, v130, v131, *(&v131 + 1), v132, *(&v132 + 1), v133, v134[0]);
    if (v48 && v2 == &v129 + 6)
    {
      break;
    }

    OUTLINED_FUNCTION_71_11(v57, v58, v59);
    OUTLINED_FUNCTION_158_2();

    v29 = v31;
    if (v18)
    {
      goto LABEL_37;
    }

    v29 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      goto LABEL_103;
    }
  }

LABEL_36:

  v29 = v31;
LABEL_37:
  v62 = v29 + 1;
  if (!__OFADD__(v29, 1))
  {
    v122 = v29;
    if (v62 != sub_1E32AE9B0(v28))
    {
      v63 = v29 + 5;
      while (1)
      {
        v64 = v63 - 4;
        if ((v28 & 0xC000000000000001) != 0)
        {
          v65 = MEMORY[0x1E6911E60](v63 - 4, v28);
        }

        else
        {
          if ((v64 & 0x8000000000000000) != 0)
          {
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
            goto LABEL_105;
          }

          OUTLINED_FUNCTION_131_4();
          if (v64 >= v30)
          {
            goto LABEL_100;
          }

          v65 = *(v28 + 8 * v63);
        }

        v29 = *(v65 + 98);
        HIWORD(v129) = *(v65 + 98);
        OUTLINED_FUNCTION_92_4();
        OUTLINED_FUNCTION_58_1();
        sub_1E4206254();
        OUTLINED_FUNCTION_128_3();
        OUTLINED_FUNCTION_58_1();
        v66 = sub_1E4206254();
        v74 = OUTLINED_FUNCTION_46_13(v66, v67, v68, v69, v70, v71, v72, v73, v118, v119, v122, v123, v124, v28 & 0xC000000000000001, v129, v130, v131, *(&v131 + 1), v132, *(&v132 + 1), v133, v134[0]);
        if (v48 && v2 == v62)
        {
          break;
        }

        OUTLINED_FUNCTION_71_11(v74, v75, v76);
        OUTLINED_FUNCTION_158_2();

        if (&qword_1F5D5CE68)
        {
          goto LABEL_58;
        }

        HIWORD(v129) = v29;
        OUTLINED_FUNCTION_92_4();
        OUTLINED_FUNCTION_58_1();
        sub_1E4206254();
        OUTLINED_FUNCTION_128_3();
        OUTLINED_FUNCTION_58_1();
        v78 = sub_1E4206254();
        v86 = OUTLINED_FUNCTION_46_13(v78, v79, v80, v81, v82, v83, v84, v85, v118, v119, v122, v123, v124, v127, v129, v130, v131, *(&v131 + 1), v132, *(&v132 + 1), v133, v134[0]);
        if (v48 && v2 == v62)
        {
          break;
        }

        OUTLINED_FUNCTION_71_11(v86, v87, v88);
        OUTLINED_FUNCTION_158_2();

        if ((&qword_1F5D5CE68 & 1) == 0)
        {
          if (v64 != v122)
          {
            if (v128)
            {
              MEMORY[0x1E6911E60](v122, v28);
              v90 = OUTLINED_FUNCTION_76();
              v91 = MEMORY[0x1E6911E60](v90, v28);
            }

            else
            {
              if (v122 < 0)
              {
                goto LABEL_113;
              }

              OUTLINED_FUNCTION_131_4();
              if (v94 >= v93)
              {
                goto LABEL_114;
              }

              if (v64 >= v93)
              {
                goto LABEL_115;
              }

              v62 = *(v28 + 8 * v122 + 32);
              v91 = *(v28 + 8 * v63);
            }

            if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v28 & 0x8000000000000000) != 0 || (v28 & 0x4000000000000000) != 0)
            {
              v28 = sub_1E37EFA58(v28);
              v29 = (v28 >> 62) & 1;
            }

            else
            {
              v29 = 0;
            }

            v95 = v28 & 0xFFFFFFFFFFFFFF8;
            *((v28 & 0xFFFFFFFFFFFFFF8) + 8 * v122 + 0x20) = v91;

            if ((v28 & 0x8000000000000000) != 0 || v29)
            {
              v28 = sub_1E37EFA58(v28);
              v95 = v28 & 0xFFFFFFFFFFFFFF8;
              if ((v64 & 0x8000000000000000) != 0)
              {
LABEL_84:
                __break(1u);
                goto LABEL_85;
              }
            }

            else if ((v64 & 0x8000000000000000) != 0)
            {
              goto LABEL_84;
            }

            if (v64 >= *(v95 + 16))
            {
              goto LABEL_112;
            }

            *(v95 + 8 * v63) = v62;

            v130 = v28;
          }

          v96 = __OFADD__(v122, 1);
          v30 = ++v122;
          if (v96)
          {
            goto LABEL_111;
          }
        }

LABEL_59:
        v62 = v63 - 3;
        if (__OFADD__(v64, 1))
        {
          goto LABEL_101;
        }

        if (v28 >> 62)
        {
          v92 = sub_1E4207384();
        }

        else
        {
          v30 = v28 & 0xFFFFFFFFFFFFFF8;
          v92 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        ++v63;
        if (v62 == v92)
        {
          goto LABEL_86;
        }
      }

LABEL_58:

      goto LABEL_59;
    }

LABEL_86:
    v97 = sub_1E32AE9B0(v28);
    v98 = v97 - v122;
    if (v97 < v122)
    {
      goto LABEL_104;
    }

    if (v122 < 0)
    {
LABEL_105:
      __break(1u);
    }

    else if (sub_1E32AE9B0(v28) >= v97)
    {
      v96 = __OFSUB__(0, v98);
      v99 = -v98;
      if (!v96)
      {
        v100 = sub_1E32AE9B0(v28);
        v96 = __OFADD__(v100, v99);
        v101 = v100 + v99;
        if (!v96)
        {
          sub_1E3797CDC(v101, 1);
          v102 = OUTLINED_FUNCTION_58_1();
          sub_1E3882B54(v102, v103, 0);

          MEMORY[0x1E6910BF0](v104);
          OUTLINED_FUNCTION_104_1();
          v29 = *(v105 + 16);
          v30 = *(v105 + 24);
          if (v29 < v30 >> 1)
          {
LABEL_92:
            OUTLINED_FUNCTION_125();
            sub_1E4206324();
            OUTLINED_FUNCTION_111();
            (*(v106 + 472))();

            v107 = OUTLINED_FUNCTION_34();
            __swift_instantiateConcreteTypeFromMangledNameV2(v107, v108);
            OUTLINED_FUNCTION_3_59();
            OUTLINED_FUNCTION_55_0();
            sub_1E32752B0(v109, v110, v111, v112);
            OUTLINED_FUNCTION_138_1();
            sub_1E4200624();

            goto LABEL_93;
          }

LABEL_109:
          v117 = OUTLINED_FUNCTION_35(v30);
          OUTLINED_FUNCTION_154_2(v117, v29 + 1);
          goto LABEL_92;
        }

LABEL_108:
        __break(1u);
        goto LABEL_109;
      }

LABEL_107:
      __break(1u);
      goto LABEL_108;
    }

    __break(1u);
    goto LABEL_107;
  }

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
}

double sub_1E38BD704()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI18LibLockupViewModel_downloadButtonViewModel);
  if (v2)
  {
    v3 = v2;
    v4 = sub_1E40A0988();

    v11 = v4;
    OUTLINED_FUNCTION_4_0();
    swift_allocObject();
    swift_weakInit();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CEB8, &unk_1E42B5DF0);
    OUTLINED_FUNCTION_68_3();
    sub_1E32752B0(v5, v6, v7, v8);
    v9 = &v11;
    sub_1E4200844();
    OUTLINED_FUNCTION_38();
  }

  else
  {
    v9 = 0;
  }

  *(v1 + OBJC_IVAR____TtC8VideosUI18LibLockupViewModel_downloadStateObserver) = v9;

  return result;
}

uint64_t sub_1E38BD81C(void *a1)
{
  v2 = v1;
  OUTLINED_FUNCTION_8();
  v4 += 187;
  v5 = *v4;
  (*v4)(v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32770, &unk_1E42988A0);
  v6 = OUTLINED_FUNCTION_144_0();
  v7 = type metadata accessor for LibMPBaseMediaEntity(v6);
  v15 = OUTLINED_FUNCTION_44_22(v7, v8, v9, v10, v11, v12, v13, v14, v50[0]);
  v18 = OUTLINED_FUNCTION_99_5(v15, v51, v16, v17);
  if (v18)
  {
    OUTLINED_FUNCTION_8();
    v22 = (*(v21 + 464))();

    if (v22)
    {
      *(v1 + OBJC_IVAR____TtC8VideosUI18LibLockupViewModel_didQueryDownloadInfo) = 1;
      v23 = *(v1 + OBJC_IVAR____TtC8VideosUI18LibLockupViewModel_downloadButtonViewModel);
      *(v1 + OBJC_IVAR____TtC8VideosUI18LibLockupViewModel_downloadButtonViewModel) = 0;

      return 0;
    }
  }

  if ((OUTLINED_FUNCTION_157_2(v18, v19, v20) & 1) == 0)
  {
    sub_1E38C6028(a1, v51);
    v24 = type metadata accessor for LibMPPlayableMediaEntity(0);
    v32 = OUTLINED_FUNCTION_44_22(v24, v25, v26, v27, v28, v29, v30, v31, v50[0]);
    if (!OUTLINED_FUNCTION_99_5(v32, v51, v33, v34))
    {
      return 0;
    }
  }

  sub_1E3280A90(0, &qword_1EE23AFA0, off_1E8728338);
  v5(v51);
  OUTLINED_FUNCTION_28_0();
  v35 = sub_1E3BFF560(v51, v50);
  v36 = OBJC_IVAR____TtC8VideosUI18LibLockupViewModel_downloadButtonViewModel;
  v37 = *(v1 + OBJC_IVAR____TtC8VideosUI18LibLockupViewModel_downloadButtonViewModel);
  *(v1 + OBJC_IVAR____TtC8VideosUI18LibLockupViewModel_downloadButtonViewModel) = v35;

  v38 = sub_1E38BD704();
  *(v1 + OBJC_IVAR____TtC8VideosUI18LibLockupViewModel_didQueryDownloadInfo) = 1;
  (v5)(v51, v38);
  v39 = *(v1 + v36);
  v40 = *(*v2 + 1632);
  v41 = v39;
  v42 = v40(v51, v39);

  __swift_destroy_boxed_opaque_existential_1(v51);
  if (!v42)
  {
    return 0;
  }

  type metadata accessor for LibDownloadButtonViewModel();
  v43 = swift_dynamicCastClass();
  if (!v43)
  {

    return 0;
  }

  v44 = *(v43 + 280);
  if (v2[3])
  {
    v45 = v2[2];
    v46 = v2[3];
  }

  else
  {
    v46 = 0x80000001E4266310;
    v45 = 0xD000000000000012;
  }

  type metadata accessor for DownloadStateIndicatorViewModel(0);
  sub_1E38C6028(a1, v51);

  v48 = v44;
  OUTLINED_FUNCTION_87_0();

  v47 = sub_1E4173E90(233, a1, v45, v46, v2, v51);

  return v47;
}

void sub_1E38BDAE8()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  v4 = v3;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  if (v4)
  {
    type metadata accessor for LibDownloadButtonViewModel();
    OUTLINED_FUNCTION_111();
    v7 = *(v6 + 1496);
    v4;
    OUTLINED_FUNCTION_121_4();
    v7();
    __swift_project_boxed_opaque_existential_1(v33, v34);
    v8 = OUTLINED_FUNCTION_24_4();
    v9(v8);
    OUTLINED_FUNCTION_134_2();

    OUTLINED_FUNCTION_68_3();
    sub_1E38F5CC8(v10, v11, v12, v2);
LABEL_5:
    __swift_destroy_boxed_opaque_existential_1(v33);
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_111();
  v14 = *(v13 + 1496);
  OUTLINED_FUNCTION_121_4();
  v14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32770, &unk_1E42988A0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2A780, &unk_1E42A8840);
  if (OUTLINED_FUNCTION_90_0(v32, v33, v16, v15))
  {
    __swift_destroy_boxed_opaque_existential_1(v32);
    type metadata accessor for ViewModel();
    OUTLINED_FUNCTION_121_4();
    v14();
    __swift_project_boxed_opaque_existential_1(v33, v34);
    OUTLINED_FUNCTION_27_18();
    v17 = OUTLINED_FUNCTION_75();
    v18(v17);

    sub_1E39C02B0();
    goto LABEL_5;
  }

  sub_1E41A3110();
  OUTLINED_FUNCTION_4_32();
  v19(v1);

  v20 = sub_1E41FFC94();
  v21 = sub_1E42067F4();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = OUTLINED_FUNCTION_6_21();
    v31 = OUTLINED_FUNCTION_100();
    v32[0] = v31;
    *v22 = 136315138;
    OUTLINED_FUNCTION_121_4();
    v14();
    __swift_project_boxed_opaque_existential_1(v33, v34);
    OUTLINED_FUNCTION_50();
    sub_1E4207944();
    OUTLINED_FUNCTION_60_0();
    __swift_destroy_boxed_opaque_existential_1(v33);
    v23 = OUTLINED_FUNCTION_32_0();
    v26 = sub_1E3270FC8(v23, v24, v25);

    *(v22 + 4) = v26;
    OUTLINED_FUNCTION_6_13(&dword_1E323F000, v27, v28, "ONLY have movies and shows in Downloaded Menu. This entity %s should not be here");
    __swift_destroy_boxed_opaque_existential_1(v31);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_55();
  }

  v29 = OUTLINED_FUNCTION_74();
  v30(v29);
LABEL_6:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E38BDE10()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  v3 = sub_1E41FE624();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE60, qword_1E42D2830);
  OUTLINED_FUNCTION_0_10();
  *&v332 = v8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  v331 = sub_1E41FE4A4();
  OUTLINED_FUNCTION_0_10();
  v330 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  v15 = sub_1E41FE4C4();
  OUTLINED_FUNCTION_0_10();
  v329 = v16;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  v20 = (v19 - v18);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20, &unk_1E42986D0);
  OUTLINED_FUNCTION_17_2(v21);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v324 - v23;
  if (v2[OBJC_IVAR____TtC8VideosUI18LibLockupViewModel_isViewModelConstructed])
  {
LABEL_148:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  v324 = v7;
  v325 = v5;
  v326 = v3;
  v327 = OBJC_IVAR____TtC8VideosUI18LibLockupViewModel_isViewModelConstructed;
  v25 = MEMORY[0x1E69E7CC0];
  v341 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_11_13();
  v337 = *(v26 + 1496);
  v338 = v26 + 1496;
  (v337)(&v346);
  v27 = sub_1E38BD81C(&v346);
  v28 = __swift_destroy_boxed_opaque_existential_1(&v346);
  if (v27)
  {
    MEMORY[0x1E6910BF0](v28);
    OUTLINED_FUNCTION_1_82();
    if (v29)
    {
LABEL_152:
      OUTLINED_FUNCTION_7_14();
    }

    OUTLINED_FUNCTION_13_8();
    sub_1E4206324();
    OUTLINED_FUNCTION_14_49();
  }

  else
  {
    v335 = v25;
  }

  OUTLINED_FUNCTION_9_45();
  v30();
  v336 = v2;
  v31 = sub_1E38BFABC(&v346, v2);
  v32 = __swift_destroy_boxed_opaque_existential_1(&v346);
  v35 = MEMORY[0x1E69E7CC8];
  if (v31)
  {
    v36 = [objc_opt_self() isTV];
    if (v36 && (sub_1E39DFFC0(v36, v37, v38) & 1) != 0)
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v346 = v35;
      sub_1E37518B8(v31, 39, isUniquelyReferenced_nonNull_native);

      v35 = v346;
    }

    else
    {
      MEMORY[0x1E6910BF0]();
      OUTLINED_FUNCTION_5_62();
      OUTLINED_FUNCTION_129_2();
      if (v29)
      {
        v321 = OUTLINED_FUNCTION_35(v40);
        OUTLINED_FUNCTION_156_3(v321);
      }

      sub_1E4206324();
      v35 = MEMORY[0x1E69E7CC8];
      OUTLINED_FUNCTION_14_49();
    }
  }

  v333 = v35;
  v41 = sub_1E39DFFC0(v32, v33, v34);
  v328 = v1;
  if (v41)
  {
    v42 = v336;
    (v337)(&v343);
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32770, &unk_1E42988A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE68, &unk_1E42A8E30);
    v44 = OUTLINED_FUNCTION_91_4();
    if (OUTLINED_FUNCTION_102_0(v44, v45, v46, v47))
    {
      v48 = OUTLINED_FUNCTION_127_3();
      sub_1E3251BE8(v48, v49);
      sub_1E38BFF5C(&v346);
      if (v50)
      {
        OUTLINED_FUNCTION_60_0();
        type metadata accessor for TextViewModel();
        v345 = MEMORY[0x1E69E6158];
        v343 = v43;
        v344 = v42;

        OUTLINED_FUNCTION_21_7();
        if (sub_1E3C27638(v51, v52, v53, v54, v55))
        {
          OUTLINED_FUNCTION_118_2();
          OUTLINED_FUNCTION_1_82();
          if (v29)
          {
            OUTLINED_FUNCTION_7_14();
          }

          OUTLINED_FUNCTION_13_8();
          sub_1E4206324();
          OUTLINED_FUNCTION_14_49();
        }
      }

      __swift_destroy_boxed_opaque_existential_1(&v346);
    }

    else
    {
      OUTLINED_FUNCTION_4_3();
      sub_1E325F7FC(&v339, &qword_1ECF2CE78, &unk_1E42C61E0);
    }
  }

  v56 = type metadata accessor for TextViewModel();
  OUTLINED_FUNCTION_75_4();
  v2 = *(v57 - 256);
  OUTLINED_FUNCTION_9_45();
  v58();
  OUTLINED_FUNCTION_70(&v346);
  v59 = OUTLINED_FUNCTION_26_1();
  v61 = v60(v59);
  v345 = MEMORY[0x1E69E6158];
  v343 = v61;
  v344 = v62;

  OUTLINED_FUNCTION_12_40();
  *(v63 - 256) = v56;
  v69 = sub_1E3C27638(v64, v65, v66, v67, v68);
  v70 = __swift_destroy_boxed_opaque_existential_1(&v346);
  if (v69)
  {
    MEMORY[0x1E6910BF0](v70);
    OUTLINED_FUNCTION_1_82();
    if (v29)
    {
      OUTLINED_FUNCTION_7_14();
    }

    OUTLINED_FUNCTION_13_8();
    sub_1E4206324();
    OUTLINED_FUNCTION_14_49();
  }

  v73 = sub_1E39DFFC0(v70, v71, v72);
  if ((v73 & 1) == 0)
  {
    goto LABEL_28;
  }

  LOBYTE(v346) = v336[328];
  LOBYTE(v343) = 10;
  sub_1E37DA4B8(v73, v74, v75);
  if (sub_1E4205E84())
  {
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_75_4();
  v83 = v337;
  v2 = v338;
  (v337)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32770, &unk_1E42988A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE88, &unk_1E42C61F0);
  v84 = OUTLINED_FUNCTION_43_14();
  if (OUTLINED_FUNCTION_102_0(v84, v85, v86, v87))
  {
    __swift_destroy_boxed_opaque_existential_1(&v343);
  }

  else
  {
    v83(&v346);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE68, &unk_1E42A8E30);
    v88 = OUTLINED_FUNCTION_43_14();
    if (OUTLINED_FUNCTION_102_0(v88, v89, v90, v91))
    {
      __swift_destroy_boxed_opaque_existential_1(&v343);
LABEL_28:
      OUTLINED_FUNCTION_13_51();
      v20 = v337;
      (v337)();
      v76 = sub_1E38C011C(&v346, v2);
      __swift_destroy_boxed_opaque_existential_1(&v346);
      v24 = v335;
      if (!v76)
      {
        goto LABEL_48;
      }

      MEMORY[0x1E6910BF0](v77);
      OUTLINED_FUNCTION_5_62();
      OUTLINED_FUNCTION_129_2();
      if (v29)
      {
        v320 = OUTLINED_FUNCTION_35(v78);
        OUTLINED_FUNCTION_156_3(v320);
      }

      OUTLINED_FUNCTION_114_0();
      sub_1E4206324();
      v24 = v341;
      if (*v76 == _TtC8VideosUI31LibDownloadingEpisodesViewModel)
      {
        v79 = OBJC_IVAR____TtC8VideosUI18LibLockupViewModel_episodeDownloadingStatusStateObserver;
        if (*&v336[OBJC_IVAR____TtC8VideosUI18LibLockupViewModel_episodeDownloadingStatusStateObserver])
        {

          sub_1E42004E4();
        }

        sub_1E3DC7F30();
        OUTLINED_FUNCTION_4_0();
        swift_allocObject();
        OUTLINED_FUNCTION_106_5();
        swift_weakInit();
        sub_1E32752B0(&qword_1ECF2CE80, &qword_1ECF2CE60, qword_1E42D2830, MEMORY[0x1E695C068]);
        v80 = sub_1E4200844();

        OUTLINED_FUNCTION_15_5();
        v81 = OUTLINED_FUNCTION_105_3();
        v82(v81);
        *&v2[v79] = v80;

        goto LABEL_48;
      }

LABEL_36:
      OUTLINED_FUNCTION_106_5();
      goto LABEL_48;
    }
  }

  OUTLINED_FUNCTION_75_4();
  v2 = *(v92 - 256);
  OUTLINED_FUNCTION_9_45();
  v93();
  v94 = v348;
  __swift_project_boxed_opaque_existential_1(&v346, v348);
  v95 = OUTLINED_FUNCTION_26_1();
  v96(v95);
  v97 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_21_2(v24);
  if (v98)
  {
    __swift_destroy_boxed_opaque_existential_1(&v346);
    sub_1E325F7FC(v24, &unk_1ECF28E20, &unk_1E42986D0);
    OUTLINED_FUNCTION_72_10();
    goto LABEL_48;
  }

  sub_1E41FE4B4();
  sub_1E41FE494();
  sub_1E41FE5B4();
  OUTLINED_FUNCTION_60_0();
  OUTLINED_FUNCTION_15_5();
  v99(v14, v331);
  OUTLINED_FUNCTION_15_5();
  v100(v20, v15);
  OUTLINED_FUNCTION_37_1();
  (*(v101 + 8))(v24, v97);
  __swift_destroy_boxed_opaque_existential_1(&v346);
  v348 = MEMORY[0x1E69E6158];
  v346 = v94;
  v347 = v24;

  OUTLINED_FUNCTION_12_40();
  sub_1E3C27638(v102, v103, v104, v105, v106);
  OUTLINED_FUNCTION_72_10();
  if (v107)
  {
    OUTLINED_FUNCTION_118_2();
    OUTLINED_FUNCTION_1_82();
    if (v29)
    {
      OUTLINED_FUNCTION_7_14();
    }

    OUTLINED_FUNCTION_13_8();
    sub_1E4206324();
    OUTLINED_FUNCTION_54_8();
    goto LABEL_36;
  }

LABEL_48:
  OUTLINED_FUNCTION_53_16();
  v20();
  sub_1E38C0444();
  v109 = v108;
  v110 = __swift_destroy_boxed_opaque_existential_1(&v346);
  if (v109)
  {
    v113 = [objc_opt_self() isTV];
    v116 = MEMORY[0x1E69E7CC0];
    if (v113 && (sub_1E39DFFC0(v113, v114, v115) & 1) != 0)
    {

      v117 = v333;
      v118 = swift_isUniquelyReferenced_nonNull_native();
      v346 = v117;
      sub_1E37518B8(v109, 57, v118);

      v333 = v346;
    }

    else
    {
      MEMORY[0x1E6910BF0]();
      OUTLINED_FUNCTION_5_62();
      OUTLINED_FUNCTION_129_2();
      if (v29)
      {
        v322 = OUTLINED_FUNCTION_35(v119);
        OUTLINED_FUNCTION_156_3(v322);
      }

      OUTLINED_FUNCTION_114_0();
      sub_1E4206324();
      OUTLINED_FUNCTION_54_8();
    }
  }

  else
  {
    v116 = MEMORY[0x1E69E7CC0];
  }

  v120 = sub_1E39DFFC0(v110, v111, v112);
  if ((v120 & 1) == 0)
  {
    goto LABEL_63;
  }

  OUTLINED_FUNCTION_75_4();
  v124 = *(v123 - 256);
  v20();
  v125 = v348;
  OUTLINED_FUNCTION_70(&v346);
  v126 = OUTLINED_FUNCTION_26_1();
  v127(v126);
  if (!v128)
  {
    v120 = __swift_destroy_boxed_opaque_existential_1(&v346);
LABEL_63:
    v134 = v328;
    goto LABEL_64;
  }

  OUTLINED_FUNCTION_60_0();
  __swift_destroy_boxed_opaque_existential_1(&v346);
  v348 = MEMORY[0x1E69E6158];
  v346 = v125;
  v347 = v124;

  OUTLINED_FUNCTION_12_40();
  v120 = sub_1E3C27638(v129, v130, v131, v132, v133);
  v134 = v328;
  if (v120)
  {
    OUTLINED_FUNCTION_118_2();
    OUTLINED_FUNCTION_1_82();
    if (v29)
    {
      OUTLINED_FUNCTION_7_14();
    }

    OUTLINED_FUNCTION_13_8();
    sub_1E4206324();
    OUTLINED_FUNCTION_54_8();
  }

LABEL_64:
  v135 = &unk_1E4299000;
  if (sub_1E39DFFC0(v120, v121, v122))
  {
    OUTLINED_FUNCTION_13_51();
    v20();
    v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32770, &unk_1E42988A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE68, &unk_1E42A8E30);
    v137 = OUTLINED_FUNCTION_127_3();
    if (OUTLINED_FUNCTION_103_4(v137, v138, v139, v140))
    {
      v141 = v134;
      sub_1E3251BE8(&v339, &v343);
      v342 = v116;
      type metadata accessor for ViewModel();

      v142 = sub_1E39C02B0();
      v144 = v116;
      if (sub_1E38BBD0C(v2[328], 10, v143))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EAF0, &unk_1E429EC50);
        inited = swift_initStackObject();
        OUTLINED_FUNCTION_117(inited, xmmword_1E4299720);
        inited[2].n128_u64[0] = v146;
        inited[2].n128_u64[1] = v147;
        inited[3].n128_u64[0] = 25705;
        inited[3].n128_u64[1] = 0xE200000000000000;
        inited[4].n128_u64[0] = sub_1E3C7CCAC(0);
        inited[4].n128_u64[1] = v148;
        OUTLINED_FUNCTION_51_13();
        inited[5].n128_u64[0] = v149 + 2;
        inited[5].n128_u64[1] = v150;
        sub_1E4205CB4();
        type metadata accessor for ImageViewModel();
        v151 = OUTLINED_FUNCTION_50();
        sub_1E3797720(v151);
        OUTLINED_FUNCTION_87_0();

        if (sub_1E3F5321C(39, v136, 0))
        {
          MEMORY[0x1E6910BF0]();
          OUTLINED_FUNCTION_2_61();
          if (v29)
          {
            OUTLINED_FUNCTION_7_14();
          }

          OUTLINED_FUNCTION_13_8();
          sub_1E4206324();
          v144 = v342;
        }

        else
        {
          v144 = MEMORY[0x1E69E7CC0];
        }
      }

      OUTLINED_FUNCTION_70(&v343);
      v171 = OUTLINED_FUNCTION_26_1();
      v173 = v172(v171);
      v177 = sub_1E38C4D2C(v173, v176, v174, v175);
      v340 = MEMORY[0x1E69E6158];
      *&v339 = v177;
      *(&v339 + 1) = v178;

      OUTLINED_FUNCTION_12_40();
      sub_1E3C27638(v179, v180, v181, v182, v183);
      OUTLINED_FUNCTION_106_5();
      if (v184)
      {
        MEMORY[0x1E6910BF0]();
        OUTLINED_FUNCTION_2_61();
        if (v29)
        {
          OUTLINED_FUNCTION_7_14();
        }

        OUTLINED_FUNCTION_13_8();
        sub_1E4206324();
        v144 = v342;
      }

      if (v142)
      {
        OUTLINED_FUNCTION_12_6();
        v186 = *(v185 + 472);

        v186(v144);

        MEMORY[0x1E6910BF0](v187);
        OUTLINED_FUNCTION_5_62();
        OUTLINED_FUNCTION_129_2();
        if (v29)
        {
          v323 = OUTLINED_FUNCTION_35(v188);
          OUTLINED_FUNCTION_156_3(v323);
        }

        OUTLINED_FUNCTION_114_0();
        sub_1E4206324();
        OUTLINED_FUNCTION_54_8();
      }

      else
      {
      }

      v152 = __swift_destroy_boxed_opaque_existential_1(&v343);
      v134 = v141;
      v135 = &unk_1E4299000;
    }

    else
    {
      OUTLINED_FUNCTION_4_3();
      v155 = sub_1E325F7FC(&v339, &qword_1ECF2CE78, &unk_1E42C61E0);
      (v20)(&v343, v155);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2A780, &unk_1E42A8840);
      v156 = OUTLINED_FUNCTION_91_4();
      if (OUTLINED_FUNCTION_103_4(v156, v157, v158, v159))
      {
        v160 = OUTLINED_FUNCTION_127_3();
        sub_1E3251BE8(v160, v161);
        if (sub_1E38C4838(&v346) || (v162 = v348, v163 = v349, OUTLINED_FUNCTION_34_7(&v346, v348), v164 = OUTLINED_FUNCTION_50(), v165(v164), OUTLINED_FUNCTION_60_0(), v345 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D960, &unk_1E4298000), v343 = v162, v344 = v163, (*(*v2 + 624))(), OUTLINED_FUNCTION_12_40(), sub_1E3C27638(v166, v167, v168, v169, v170)))
        {
          OUTLINED_FUNCTION_118_2();
          OUTLINED_FUNCTION_1_82();
          if (v29)
          {
            OUTLINED_FUNCTION_7_14();
          }

          OUTLINED_FUNCTION_13_8();
          sub_1E4206324();
          OUTLINED_FUNCTION_54_8();
        }

        v152 = __swift_destroy_boxed_opaque_existential_1(&v346);
      }

      else
      {
        OUTLINED_FUNCTION_4_3();
        v152 = sub_1E325F7FC(&v339, &qword_1ECF2A778, &unk_1E429E340);
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_106_5();
  }

  if (sub_1E38C1020(v152, v153, v154))
  {
    type metadata accessor for LibViewModel();
    sub_1E41FE614();
    sub_1E41FE5E4();
    OUTLINED_FUNCTION_145();
    OUTLINED_FUNCTION_15_5();
    v190(v134, v326);

    OUTLINED_FUNCTION_82();
    OUTLINED_FUNCTION_45_16();
    if (sub_1E3B76C80(v191, v192, v193, v194, v195, v196, v197))
    {
      OUTLINED_FUNCTION_118_2();
      OUTLINED_FUNCTION_1_82();
      if (v29)
      {
        OUTLINED_FUNCTION_7_14();
      }

      OUTLINED_FUNCTION_13_8();
      sub_1E4206324();
      OUTLINED_FUNCTION_54_8();
    }
  }

  if (sub_1E38BBD0C(v2[328], 10, v189))
  {
    OUTLINED_FUNCTION_53_16();
    v20();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32770, &unk_1E42988A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2A780, &unk_1E42A8840);
    v198 = OUTLINED_FUNCTION_43_14();
    if (OUTLINED_FUNCTION_99_5(v198, v199, v200, v201))
    {
      __swift_destroy_boxed_opaque_existential_1(&v343);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EAF0, &unk_1E429EC50);
      v202 = swift_allocObject();
      OUTLINED_FUNCTION_117(v202, v135[114]);
      v202[2].n128_u64[0] = v203;
      v202[2].n128_u64[1] = v204;
      OUTLINED_FUNCTION_53_16();
      v20();
      v205 = v349;
      __swift_project_boxed_opaque_existential_1(&v346, v348);
      OUTLINED_FUNCTION_66_4();
      v206 = OUTLINED_FUNCTION_50();
      v202[3].n128_u64[0] = v207(v206, v205);
      v202[3].n128_u64[1] = v208;
      v202[4].n128_u64[0] = sub_1E3C7CCAC(0);
      v202[4].n128_u64[1] = v209;
      OUTLINED_FUNCTION_51_13();
      v202[5].n128_u64[0] = v210 + 8;
      v202[5].n128_u64[1] = v211;
      __swift_destroy_boxed_opaque_existential_1(&v346);
      sub_1E4205CB4();
      type metadata accessor for ImageViewModel();
      v212 = OUTLINED_FUNCTION_50();
      sub_1E3797720(v212);
      OUTLINED_FUNCTION_87_0();

      if (sub_1E3F5321C(31, v202, v2))
      {
        OUTLINED_FUNCTION_118_2();
        OUTLINED_FUNCTION_1_82();
        if (v29)
        {
          OUTLINED_FUNCTION_7_14();
        }

        OUTLINED_FUNCTION_13_8();
        sub_1E4206324();
        OUTLINED_FUNCTION_54_8();
      }
    }

    (v20)(&v343);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE58, &unk_1E42A8830);
    v213 = OUTLINED_FUNCTION_91_4();
    if (OUTLINED_FUNCTION_99_5(v213, v214, v215, v216))
    {
      v217 = OUTLINED_FUNCTION_127_3();
      sub_1E3251BE8(v217, v218);
      sub_1E38C130C();
      if (v219)
      {
        OUTLINED_FUNCTION_118_2();
        OUTLINED_FUNCTION_1_82();
        if (v29)
        {
          OUTLINED_FUNCTION_7_14();
        }

        OUTLINED_FUNCTION_13_8();
        sub_1E4206324();
        OUTLINED_FUNCTION_54_8();
      }

      __swift_destroy_boxed_opaque_existential_1(&v346);
    }

    else
    {
      OUTLINED_FUNCTION_4_3();
      sub_1E325F7FC(&v339, &qword_1ECF2CE70, qword_1E42A8850);
    }
  }

  v220 = [objc_opt_self() isTV];
  v223 = v333;
  if (v220 && (sub_1E39DFFC0(v220, v221, v222) & 1) != 0)
  {

    OUTLINED_FUNCTION_11_13();
    (*(v224 + 496))(v223);
  }

  else
  {

    OUTLINED_FUNCTION_11_13();
    (*(v225 + 472))(v24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EAF0, &unk_1E429EC50);
  v226 = swift_allocObject();
  v332 = xmmword_1E4297BD0;
  *(v226 + 16) = xmmword_1E4297BD0;
  v331 = @"targetId";
  *(v226 + 32) = sub_1E4205F14();
  *(v226 + 40) = v227;
  *(v226 + 48) = sub_1E4205F14();
  *(v226 + 56) = v228;
  v330 = @"targetType";
  *(v226 + 64) = sub_1E4205F14();
  *(v226 + 72) = v229;
  v333 = @"lockup";
  *(v226 + 80) = sub_1E4205F14();
  *(v226 + 88) = v230;
  v329 = @"contentType";
  *(v226 + 96) = sub_1E4205F14();
  *(v226 + 104) = v231;
  v328 = @"library";
  *(v226 + 112) = sub_1E4205F14();
  *(v226 + 120) = v232;
  v20 = MEMORY[0x1E69E6158];
  v233 = sub_1E4205CB4();
  v234 = sub_1E4205F14();
  v236 = v235;
  OUTLINED_FUNCTION_9_45();
  v237();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32770, &unk_1E42988A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE68, &unk_1E42A8E30);
  v238 = OUTLINED_FUNCTION_43_14();
  if (OUTLINED_FUNCTION_102_0(v238, v239, v240, v241))
  {
    __swift_destroy_boxed_opaque_existential_1(&v343);
  }

  v242 = sub_1E4205F14();
  v244 = v243;
  v245 = swift_isUniquelyReferenced_nonNull_native();
  v346 = v233;
  sub_1E38C5C90(v242, v244, v234, v236, v245);

  type metadata accessor for Metrics(0);
  v246 = sub_1E3BA54D0();
  v247 = (*(*v2 + 584))(v246);
  if ((*(*v2 + 576))(v247))
  {
    v248 = OUTLINED_FUNCTION_50();
    sub_1E3797720(v248);
    OUTLINED_FUNCTION_87_0();

    OUTLINED_FUNCTION_8();
    (*(v249 + 184))(v244);
  }

  v346 = 0;
  v347 = 0xE000000000000000;
  sub_1E42074B4();

  OUTLINED_FUNCTION_51_13();
  v346 = (v251 + 7);
  v347 = v250;
  MEMORY[0x1E69109E0](*(v2 + 37), *(v2 + 38));
  v24 = v346;
  v14 = v347;
  type metadata accessor for LibViewModel();

  v252 = *sub_1E3C8E1A4();
  v253 = *(*v2 + 544);

  v253(v254);
  OUTLINED_FUNCTION_10_23();

  v325 = v24;
  v326 = v14;
  v1 = sub_1E3B76C80(230, v24, v14, v2, v252, v2, 0);
  *&v339 = v116;
  v255 = *v2 + 1496;
  OUTLINED_FUNCTION_53_16();
  v335 = v256;
  v256();

  v257 = sub_1E38BFABC(&v346, v1);

  v258 = __swift_destroy_boxed_opaque_existential_1(&v346);
  if (v257)
  {
    MEMORY[0x1E6910BF0](v258);
    OUTLINED_FUNCTION_2_61();
    if (v29)
    {
      OUTLINED_FUNCTION_7_14();
    }

    OUTLINED_FUNCTION_13_8();
    sub_1E4206324();
    v116 = v339;
  }

  OUTLINED_FUNCTION_53_16();
  OUTLINED_FUNCTION_132_2();
  v259();
  OUTLINED_FUNCTION_70(&v346);
  v260 = OUTLINED_FUNCTION_26_1();
  v262 = v261(v260);
  v345 = v20;
  v343 = v262;
  v344 = v263;

  OUTLINED_FUNCTION_12_40();
  v269 = sub_1E3C27638(v264, v265, v266, v267, v268);
  v270 = __swift_destroy_boxed_opaque_existential_1(&v346);
  if (v269)
  {
    MEMORY[0x1E6910BF0](v270);
    OUTLINED_FUNCTION_2_61();
    if (v29)
    {
      OUTLINED_FUNCTION_7_14();
    }

    OUTLINED_FUNCTION_13_8();
    sub_1E4206324();
    v116 = v339;
  }

  OUTLINED_FUNCTION_53_16();
  OUTLINED_FUNCTION_132_2();
  v271();

  v272 = sub_1E38C011C(&v346, v1);

  v273 = __swift_destroy_boxed_opaque_existential_1(&v346);
  if (v272)
  {
    MEMORY[0x1E6910BF0](v273);
    OUTLINED_FUNCTION_2_61();
    if (v29)
    {
      OUTLINED_FUNCTION_7_14();
    }

    OUTLINED_FUNCTION_13_8();
    sub_1E4206324();
    v116 = v339;
  }

  if (!v1)
  {

    v295 = 0;
LABEL_144:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EAF0, &unk_1E429EC50);
    v296 = swift_initStackObject();
    *(v296 + 16) = v332;
    *(v296 + 32) = sub_1E4205F14();
    *(v296 + 40) = v297;
    v298 = v326;
    *(v296 + 48) = v325;
    *(v296 + 56) = v298;
    *(v296 + 64) = sub_1E4205F14();
    *(v296 + 72) = v299;
    *(v296 + 80) = sub_1E4205F14();
    *(v296 + 88) = v300;
    *(v296 + 96) = sub_1E4205F14();
    *(v296 + 104) = v301;
    *(v296 + 112) = sub_1E4205F14();
    *(v296 + 120) = v302;

    v303 = sub_1E4205CB4();
    v304 = sub_1E4205F14();
    v306 = v305;
    OUTLINED_FUNCTION_132_2();
    v307();
    __swift_project_boxed_opaque_existential_1(&v343, v345);
    OUTLINED_FUNCTION_33_24();
    v308 = OUTLINED_FUNCTION_24_4();
    v309(v308);
    swift_isUniquelyReferenced_nonNull_native();
    v342 = v303;
    v310 = OUTLINED_FUNCTION_24_4();
    sub_1E38C5C90(v310, v311, v304, v306, v312);

    v313 = v342;
    __swift_destroy_boxed_opaque_existential_1(&v343);
    if (v295)
    {
      v314 = *(*v295 + 576);

      v314(v315);
      OUTLINED_FUNCTION_55_12();

      sub_1E3797720(v313);
      OUTLINED_FUNCTION_87_0();

      OUTLINED_FUNCTION_8();
      (*(v316 + 184))(v314);

      type metadata accessor for Accessibility();
      OUTLINED_FUNCTION_55_12();

      sub_1E40A7DC8();
      OUTLINED_FUNCTION_60_0();

      v317 = OUTLINED_FUNCTION_32_0();
      v318(v317);
    }

    else
    {
    }

    OUTLINED_FUNCTION_11_13();
    (*(v319 + 1240))(v295);
    v2[v327] = 1;
    goto LABEL_148;
  }

  v324 = v255;
  OUTLINED_FUNCTION_12_6();
  v275 = *(v274 + 472);

  v275(v276);

  v338 = sub_1E32AE9B0(v116);
  v337 = v116 & 0xFFFFFFFFFFFFFF8;
  v334 = v1;

  v15 = 0;
  v2 = MEMORY[0x1E69E7CC8];
  while (1)
  {
    if (v338 == v15)
    {

      v295 = v334;
      (*(*v334 + 496))(v2);

      OUTLINED_FUNCTION_106_5();
      goto LABEL_144;
    }

    if (v15 >= *(v337 + 16))
    {
      __break(1u);
LABEL_150:
      __break(1u);
LABEL_151:
      __break(1u);
      goto LABEL_152;
    }

    v20 = v116;
    v1 = *(v116 + 8 * v15 + 32);
    v277 = *(v1 + 98);
    swift_retain_n();

    v14 = swift_isUniquelyReferenced_nonNull_native();
    v346 = v2;
    v280 = sub_1E3740AE8(v277, v278, v279);
    v282 = *(v2 + 2);
    v283 = (v281 & 1) == 0;
    v24 = (v282 + v283);
    if (__OFADD__(v282, v283))
    {
      goto LABEL_150;
    }

    v284 = v280;
    v285 = v281;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C780, &unk_1E42988B0);
    v286 = sub_1E4207644();
    v289 = v346;
    if (v286)
    {
      break;
    }

LABEL_137:
    if (v285)
    {
      *(*(v289 + 7) + 8 * v284) = v1;
    }

    else
    {
      *&v289[8 * (v284 >> 6) + 64] |= 1 << v284;
      *(*(v289 + 6) + 2 * v284) = v277;
      *(*(v289 + 7) + 8 * v284) = v1;

      v292 = *(v289 + 2);
      v293 = __OFADD__(v292, 1);
      v294 = v292 + 1;
      if (v293)
      {
        goto LABEL_151;
      }

      *(v289 + 2) = v294;
    }

    ++v15;
    v2 = v289;
    v116 = v20;
  }

  v290 = sub_1E3740AE8(v277, v287, v288);
  if ((v285 & 1) == (v291 & 1))
  {
    v284 = v290;
    goto LABEL_137;
  }

  sub_1E4207A74();
  __break(1u);
}

uint64_t sub_1E38BFABC(void *a1, uint64_t a2)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v4 = OUTLINED_FUNCTION_50();
  v5(v4, v3);
  if (v69 == 255)
  {
    return 0;
  }

  v7 = v65;
  v61 = v66;
  v9 = v67;
  v8 = v68;
  type metadata accessor for LibImageViewModel();
  v10 = a1[4];
  v11 = OUTLINED_FUNCTION_105_3();
  __swift_project_boxed_opaque_existential_1(v11, v12);
  v13 = OUTLINED_FUNCTION_35_0();
  v14(v13, v10);

  OUTLINED_FUNCTION_45_16();
  v6 = sub_1E37ECC00(v15, v16, v17, v18, v19, v20, v21);
  v24 = 0;
  v25 = 0;
  if (sub_1E39DFFC0(v6, v22, v23))
  {
    v26 = a1[3];
    v27 = a1[4];
    v28 = OUTLINED_FUNCTION_105_3();
    __swift_project_boxed_opaque_existential_1(v28, v29);
    OUTLINED_FUNCTION_33_24();
    v24 = v30(v26, v27);
    v25 = v31;
  }

  if (v69)
  {
    if (v69 == 1)
    {
      if (v65)
      {
        v58 = type metadata accessor for LibSidebandImageViewModel();
        v32 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, a1[3]);
        v33 = *(v32 + 16);
        sub_1E37C536C(v65, v66, v67, v68, 1);
        v34 = OUTLINED_FUNCTION_53();
        v33(v34);
        OUTLINED_FUNCTION_94_2();

        sub_1E3BFF3A0();
        OUTLINED_FUNCTION_50();

        sub_1E325F7FC(&v65, &qword_1ECF2A450, &qword_1E429D7C0);
        return v58;
      }

      goto LABEL_21;
    }

    if (v66)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240, &unk_1E4298910);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1E4299720;

      *(inited + 32) = sub_1E3C7CCAC(0);
      *(inited + 40) = v42;
      v43 = MEMORY[0x1E69E6158];
      *(inited + 72) = MEMORY[0x1E69E6158];
      *(inited + 48) = v7;
      *(inited + 56) = v61;
      *(inited + 80) = sub_1E3C7CCAC(4);
      *(inited + 88) = v44;
      *(inited + 120) = v43;
      *(inited + 96) = 6778986;
      *(inited + 104) = 0xE300000000000000;
      sub_1E4205CB4();
      if (v25)
      {
        sub_1E3C7CCAC(7);
        v64 = v43;
        *&v63 = v24;
        *(&v63 + 1) = v25;
        sub_1E329504C(&v63, v62);
        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_90();
        sub_1E32A87C0(v45, v46, v47, v48);
      }

      if (v8)
      {
        v49 = HIBYTE(v8) & 0xF;
        if ((v8 & 0x2000000000000000) == 0)
        {
          v49 = v9 & 0xFFFFFFFFFFFFLL;
        }

        if (v49)
        {
          sub_1E3D46F94(24);
          v64 = v43;
          *&v63 = v9;
          *(&v63 + 1) = v8;
          sub_1E329504C(&v63, v62);
          swift_isUniquelyReferenced_nonNull_native();
          OUTLINED_FUNCTION_90();
          sub_1E32A87C0(v50, v51, v52, v53);
        }
      }

      v54 = type metadata accessor for ImageViewModel();

      OUTLINED_FUNCTION_82();
      v40 = v54;
      sub_1E3F5321C(v55, v56, v57);
      OUTLINED_FUNCTION_50();

      sub_1E325F7FC(&v65, &qword_1ECF2A450, &qword_1E429D7C0);
      return v40;
    }

LABEL_21:

    sub_1E325F7FC(&v65, &qword_1ECF2A450, &qword_1E429D7C0);
    return v6;
  }

  if (!v65)
  {
    goto LABEL_21;
  }

  v60 = v68;
  v59 = type metadata accessor for LibMPImageViewModel();
  v36 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v37 = *(v36 + 16);

  v38 = v65;
  v39 = OUTLINED_FUNCTION_75();
  v37(v39);
  OUTLINED_FUNCTION_94_2();

  v40 = v59;
  sub_1E394D550();
  OUTLINED_FUNCTION_50();

  sub_1E325F7FC(&v65, &qword_1ECF2A450, &qword_1E429D7C0);
  if (v59)
  {
    swift_beginAccess();
    *(v59 + 352) = v60 & 1;
    return v40;
  }

  return 0;
}

id sub_1E38BFF5C(uint64_t a1)
{
  sub_1E38C6028(a1, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE68, &unk_1E42A8E30);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE58, &unk_1E42A8830);
  if ((OUTLINED_FUNCTION_102_0(v14, v15, v2, v1) & 1) == 0)
  {
    OUTLINED_FUNCTION_96_0();
    sub_1E325F7FC(v14, &qword_1ECF2CE70, qword_1E42A8850);
    return OUTLINED_FUNCTION_57();
  }

  sub_1E3251BE8(v14, v16);
  OUTLINED_FUNCTION_70(v16);
  v3 = OUTLINED_FUNCTION_26_1();
  v4(v3);
  if (v5)
  {
LABEL_7:
    __swift_destroy_boxed_opaque_existential_1(v16);
    return OUTLINED_FUNCTION_57();
  }

  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v7 = result;
    v8 = sub_1E3741090(0x5F45444F53495045, 0xEA00000000004025, result);
    v10 = v9;

    if (v10)
    {
      v15[0] = v8;
      v15[1] = v10;
      *&v14[0] = 16421;
      *(&v14[0] + 1) = 0xE200000000000000;
      v13 = sub_1E4207944();
      sub_1E32822E0(v13, v11, v12);
      OUTLINED_FUNCTION_21_7();
      sub_1E42071F4();
      OUTLINED_FUNCTION_145();

      __swift_destroy_boxed_opaque_existential_1(v16);
      return OUTLINED_FUNCTION_57();
    }

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E38C011C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1E38C6028(a1, v64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32770, &unk_1E42988A0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE88, &unk_1E42C61F0);
  if (OUTLINED_FUNCTION_19_31(v6, v7, v8, v9, v10, v11, v12, v13, v59, *(&v59 + 1), v60, v61, v62, v63, v64[0]))
  {
    sub_1E3251BE8(&v59, v65);
    v14 = v67;
    __swift_project_boxed_opaque_existential_1(v65, v66);
    v15 = OUTLINED_FUNCTION_35_0();
    if (v16(v15, v14))
    {
      v18 = *(v2 + 328);
      if (sub_1E38BBD0C(*(v3 + 328), 9, v17) & 1) != 0 || (sub_1E38BBD0C(v18, 10, v19))
      {
        sub_1E38C3DB4();
LABEL_18:
        v39 = v20;
LABEL_19:
        __swift_destroy_boxed_opaque_existential_1(v65);
        return v39;
      }
    }

    __swift_destroy_boxed_opaque_existential_1(v65);
  }

  else
  {
    OUTLINED_FUNCTION_28_0();
    sub_1E325F7FC(&v59, &qword_1ECF2CEA0, &unk_1E42A8980);
  }

  sub_1E38C6028(a1, v64);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE68, &unk_1E42A8E30);
  if (OUTLINED_FUNCTION_19_31(v21, v22, v23, v24, v25, v26, v27, v28, v59, *(&v59 + 1), v60, v61, v62, v63, v64[0]))
  {
    sub_1E3251BE8(&v59, v65);
    if (sub_1E38BBD0C(*(v3 + 328), 10, v29))
    {
      __swift_project_boxed_opaque_existential_1(v65, v66);
      OUTLINED_FUNCTION_77();
      sub_1E38C6088();
    }

    else
    {
      sub_1E38C45EC();
    }

    goto LABEL_18;
  }

  OUTLINED_FUNCTION_28_0();
  sub_1E325F7FC(&v59, &qword_1ECF2CE78, &unk_1E42C61E0);
  sub_1E38C6028(a1, v64);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2A780, &unk_1E42A8840);
  if (OUTLINED_FUNCTION_19_31(v30, v31, v32, v33, v34, v35, v36, v37, v59, *(&v59 + 1), v60, v61, v62, v63, v64[0]))
  {
    sub_1E3251BE8(&v59, v65);
    if (sub_1E38BBD0C(*(v3 + 328), 10, v38))
    {
      type metadata accessor for LibDownloadingEpisodesViewModel(0);
      sub_1E38C6028(v65, v64);

      v20 = sub_1E3DC7FA4(v64, a2);
      goto LABEL_18;
    }

    v20 = sub_1E38C4838(v65);
    if (v20)
    {
      goto LABEL_18;
    }

    sub_1E38C6028(a1, v64);
    v41 = type metadata accessor for LibFamilySharingShowMediaEntity(0);
    if (OUTLINED_FUNCTION_19_31(v41, v42, v43, v44, v45, v46, v47, v48, v59, *(&v59 + 1), v60, v61, v62, v63, v64[0]))
    {
      v49 = v59;
      v50 = *(*v59 + 408);

      v39 = v49;
      v50(v51);
      OUTLINED_FUNCTION_94_2();

      v64[3] = MEMORY[0x1E69E6158];
      if (v50)
      {
        v52 = v49;
      }

      else
      {
        v52 = 0;
      }

      v53 = 0xE000000000000000;
      if (v50)
      {
        v53 = v50;
      }

      v64[0] = v52;
      v64[1] = v53;
      type metadata accessor for TextViewModel();
      OUTLINED_FUNCTION_50();

      OUTLINED_FUNCTION_21_7();
      sub_1E3C27638(v54, v55, v56, v57, v58);
      OUTLINED_FUNCTION_38();

      goto LABEL_19;
    }

    __swift_destroy_boxed_opaque_existential_1(v65);
  }

  else
  {
    OUTLINED_FUNCTION_28_0();
    sub_1E325F7FC(&v59, &qword_1ECF2A778, &unk_1E429E340);
  }

  return 0;
}

void sub_1E38C0444()
{
  OUTLINED_FUNCTION_93();
  v1 = v0;
  v164 = v2;
  OUTLINED_FUNCTION_106();
  v3 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v163 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_6();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v158 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v158 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20, &unk_1E42986D0);
  v16 = OUTLINED_FUNCTION_17_2(v15);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_4_6();
  v19 = v17 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v158 - v21;
  if (sub_1E39DFFC0(v23, v24, v25))
  {
    sub_1E38C6028(v0, &v167);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32770, &unk_1E42988A0);
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE88, &unk_1E42C61F0);
    if (OUTLINED_FUNCTION_90_0(v165, &v167, v27, v26))
    {
      sub_1E3251BE8(v165, v170);
      v28 = *(v0 + 328);
      if ((sub_1E38BBD0C(*(v1 + 328), 9, v29) & 1) == 0 && (sub_1E38BBD0C(v28, 10, v30) & 1) == 0)
      {
        goto LABEL_29;
      }

      v161 = v28;
      v162 = v3;
      v32 = v171;
      v31 = v172;
      __swift_project_boxed_opaque_existential_1(v170, v171);
      if ((*(v31 + 24))(v32, v31))
      {
        v33 = v172;
        __swift_project_boxed_opaque_existential_1(v170, v171);
        v34 = OUTLINED_FUNCTION_38();
        v36 = v35(v34, v33);
        if (v37)
        {
          sub_1E41A3110();
          v39 = v162;
          v38 = v163;
          OUTLINED_FUNCTION_107_0();
          v40(v11);
          sub_1E38C6028(v170, &v167);
          v41 = sub_1E41FFC94();
          v42 = sub_1E42067F4();
          if (OUTLINED_FUNCTION_62_9(v42))
          {
            OUTLINED_FUNCTION_6_21();
            *&v165[0] = OUTLINED_FUNCTION_36_6();
            *v33 = 136315138;
            v43 = v169;
            OUTLINED_FUNCTION_110_3(&v167);
            OUTLINED_FUNCTION_38();
            sub_1E4207944();
            OUTLINED_FUNCTION_145();
            __swift_destroy_boxed_opaque_existential_1(&v167);
            v44 = OUTLINED_FUNCTION_57();
            sub_1E3270FC8(v44, v45, v46);
            OUTLINED_FUNCTION_38();

            *(v33 + 4) = v43;
            OUTLINED_FUNCTION_26_23(&dword_1E323F000, v47, v48, "Rental movie %s should have rental ID");
            OUTLINED_FUNCTION_24_18();
            OUTLINED_FUNCTION_65_0();

            (*(v38 + 8))(v11, v39);
LABEL_29:
            __swift_destroy_boxed_opaque_existential_1(v170);
            goto LABEL_30;
          }

          (*(v38 + 8))(v11, v39);
          goto LABEL_28;
        }

        v52 = v36;
        v53 = v171;
        v54 = v172;
        __swift_project_boxed_opaque_existential_1(v170, v171);
        v55 = OUTLINED_FUNCTION_38();
        v56(v55, v54);
        v57 = sub_1E41FE5D4();
        OUTLINED_FUNCTION_52(v22, 1, v57);
        if (v50)
        {
          sub_1E325F7FC(v22, &unk_1ECF28E20, &unk_1E42986D0);
          sub_1E41A3110();
          v59 = v162;
          v58 = v163;
          OUTLINED_FUNCTION_107_0();
          v60(v14);
          sub_1E38C6028(v170, &v167);
          v61 = sub_1E41FFC94();
          v62 = sub_1E42067F4();
          if (OUTLINED_FUNCTION_62_9(v62))
          {
            OUTLINED_FUNCTION_6_21();
            v63 = OUTLINED_FUNCTION_36_6();
            *&v165[0] = v63;
            *v57 = 136315138;
            v64 = v169;
            OUTLINED_FUNCTION_110_3(&v167);
            OUTLINED_FUNCTION_38();
            sub_1E4207944();
            OUTLINED_FUNCTION_145();
            __swift_destroy_boxed_opaque_existential_1(&v167);
            v65 = OUTLINED_FUNCTION_57();
            sub_1E3270FC8(v65, v66, v67);
            OUTLINED_FUNCTION_38();

            *(v57 + 4) = v64;
            OUTLINED_FUNCTION_26_23(&dword_1E323F000, v68, v69, "Rental movie %s without having rental expiration date");
            __swift_destroy_boxed_opaque_existential_1(v63);
            OUTLINED_FUNCTION_6_0();
            OUTLINED_FUNCTION_65_0();

            (*(v58 + 8))(v14, v59);
            goto LABEL_29;
          }

          (*(v58 + 8))(v14, v59);
LABEL_28:
          __swift_destroy_boxed_opaque_existential_1(&v167);
          goto LABEL_29;
        }

        sub_1E41FE574();
        v71 = v95;
        OUTLINED_FUNCTION_37_1();
        (*(v96 + 8))(v22, v57);
        v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240, &unk_1E4298910);
        inited = swift_allocObject();
        OUTLINED_FUNCTION_117(inited, xmmword_1E4297BD0);
        inited[2].n128_u64[0] = v98;
        inited[2].n128_u64[1] = v99;
        v167 = v52;
        sub_1E4207944();
        OUTLINED_FUNCTION_145();
        v167 = 0;
        v168 = 0xE000000000000000;
        sub_1E4206594();
        v78 = v168;
        v167 = &v167;
        v168 = v53;

        v100 = OUTLINED_FUNCTION_24_4();
        MEMORY[0x1E69109E0](v100);

        OUTLINED_FUNCTION_152_1(v167);
        inited[5].n128_u64[0] = v101;
        inited[5].n128_u64[1] = v102;
        v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F740, &unk_1E42A89A0);
        v83 = OUTLINED_FUNCTION_155_2(v103);
        *(v83 + 16) = xmmword_1E4299720;
        sub_1E384EE08(39);
        *(v83 + 32) = v104;
        *(v83 + 40) = v105;
        v106 = OUTLINED_FUNCTION_155_2(v97);
        v160 = xmmword_1E4297BE0;
        v107 = OUTLINED_FUNCTION_130(v106, xmmword_1E4297BE0);
        v106[2].n128_u64[0] = sub_1E3C7CCAC(v107);
        v106[2].n128_u64[1] = v108;
        OUTLINED_FUNCTION_67_9("symbol://clock.time.1009.fill");
        *(v83 + 48) = sub_1E4205CB4();
        sub_1E384EE08(17);
        *(v83 + 56) = v109;
        *(v83 + 64) = v110;
        v159 = v97;
        v111 = OUTLINED_FUNCTION_155_2(v97);
        OUTLINED_FUNCTION_151_4(v111);
        v78[4] = v112;
        v78[5] = v113;
        v94 = swift_allocObject();
      }

      else
      {
        sub_1E38BBFF0();
        v49 = sub_1E41FE5D4();
        OUTLINED_FUNCTION_52(v19, 1, v49);
        if (v50)
        {
          sub_1E325F7FC(v19, &unk_1ECF28E20, &unk_1E42986D0);
          v51 = MEMORY[0x1E69E7CC8];
          goto LABEL_19;
        }

        sub_1E41FE574();
        v71 = v70;
        OUTLINED_FUNCTION_37_1();
        (*(v72 + 8))(v19, v49);
        v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240, &unk_1E4298910);
        inited = swift_initStackObject();
        OUTLINED_FUNCTION_117(inited, xmmword_1E4297BD0);
        inited[2].n128_u64[0] = v75;
        inited[2].n128_u64[1] = v76;
        v78 = *(v1 + 296);
        v77 = *(v1 + 304);
        v167 = 0;
        v168 = 0xE000000000000000;
        sub_1E4206594();
        v79 = v167;
        v80 = v168;
        v167 = v78;
        v168 = v77;

        MEMORY[0x1E69109E0](v79, v80);

        OUTLINED_FUNCTION_152_1(v167);
        inited[5].n128_u64[0] = v81;
        inited[5].n128_u64[1] = v82;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F740, &unk_1E42A89A0);
        v83 = swift_initStackObject();
        *(v83 + 16) = xmmword_1E4299720;
        sub_1E384EE08(39);
        *(v83 + 32) = v84;
        *(v83 + 40) = v85;
        v86 = swift_initStackObject();
        v160 = xmmword_1E4297BE0;
        v87 = OUTLINED_FUNCTION_130(v86, xmmword_1E4297BE0);
        v86[2].n128_u64[0] = sub_1E3C7CCAC(v87);
        v86[2].n128_u64[1] = v88;
        OUTLINED_FUNCTION_67_9("symbol://clock.time.1009.fill");
        *(v83 + 48) = sub_1E4205CB4();
        sub_1E384EE08(17);
        *(v83 + 56) = v89;
        *(v83 + 64) = v90;
        v159 = v73;
        v91 = swift_initStackObject();
        OUTLINED_FUNCTION_151_4(v91);
        v78[4] = v92;
        v78[5] = v93;
        v94 = swift_initStackObject();
      }

      v114 = v94;
      *(v94 + 16) = xmmword_1E4298AD0;
      sub_1E3854630(1);
      *(v114 + 32) = v115;
      *(v114 + 40) = v116;
      *(v114 + 72) = MEMORY[0x1E69E63B0];
      *(v114 + 48) = v71;
      sub_1E3854630(0);
      *(v114 + 80) = v117;
      *(v114 + 88) = v118;
      v120 = sub_1E39DFFC0(v117, v118, v119);
      v121 = MEMORY[0x1E69E6370];
      *(v114 + 120) = MEMORY[0x1E69E6370];
      *(v114 + 96) = (v120 & 1) == 0;
      sub_1E3854630(2);
      *(v114 + 128) = v122;
      *(v114 + 136) = v123;
      v125 = sub_1E39DFFC0(v122, v123, v124);
      *(v114 + 168) = v121;
      *(v114 + 144) = (v125 & 1) == 0;
      sub_1E3854630(3);
      *(v114 + 176) = v126;
      *(v114 + 184) = v127;
      v129 = sub_1E38BBD0C(v161, 10, v128);
      *(v114 + 216) = v121;
      *(v114 + 192) = v129 & 1;
      v130 = MEMORY[0x1E69E6158];
      v131 = sub_1E4205CB4();
      v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
      v78[9] = v132;
      v78[6] = v131;
      *(v83 + 72) = sub_1E4205CB4();
      v133 = sub_1E4205CB4();
      inited[7].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FDF0, &qword_1E42AF870);
      inited[6].n128_u64[0] = v133;
      ViewModelKeys.rawValue.getter(11);
      inited[8].n128_u64[0] = v134;
      inited[8].n128_u64[1] = v135;
      v136 = OUTLINED_FUNCTION_155_2(v159);
      v137 = OUTLINED_FUNCTION_130(v136, v160);
      v136[2].n128_u64[0] = sub_1E3853154(v137);
      v136[2].n128_u64[1] = v138;
      v139 = sub_1E3831114();
      v136[4].n128_u64[1] = v130;
      v136[3].n128_u64[0] = v139;
      v136[3].n128_u64[1] = v140;
      v141 = sub_1E4205CB4();
      inited[10].n128_u64[1] = v132;
      inited[9].n128_u64[0] = v141;
      v51 = sub_1E4205CB4();
LABEL_19:
      type metadata accessor for ViewModel();
      v142 = v164;

      if (sub_1E39BED80(57, v51, v142))
      {
        OUTLINED_FUNCTION_26_0();
        if ((*(v143 + 392))())
        {
          OUTLINED_FUNCTION_26_0();
          (*(v144 + 872))(0);

          goto LABEL_29;
        }
      }

      else
      {
        sub_1E41A3110();
        v145 = v163;
        v146 = OUTLINED_FUNCTION_148_2();
        v147(v146);
        v148 = sub_1E41FFC94();
        v149 = sub_1E42067F4();
        if (os_log_type_enabled(v148, v149))
        {
          OUTLINED_FUNCTION_6_21();
          v150 = OUTLINED_FUNCTION_36_6();
          v167 = v150;
          *v142 = 136315138;

          v151 = sub_1E4205C74();
          v153 = v152;

          v154 = sub_1E3270FC8(v151, v153, &v167);

          *(v142 + 4) = v154;
          _os_log_impl(&dword_1E323F000, v148, v149, "Can not create a rental badge view model from json dictionary %s", v142, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v150);
          OUTLINED_FUNCTION_6_0();
          OUTLINED_FUNCTION_65_0();

          (*(v145 + 8))(v8, v162);
        }

        else
        {

          v155 = OUTLINED_FUNCTION_74();
          v157(v155, v156);
        }
      }

      goto LABEL_29;
    }

    v166 = 0;
    memset(v165, 0, sizeof(v165));
    sub_1E325F7FC(v165, &qword_1ECF2CEA0, &unk_1E42A8980);
  }

LABEL_30:
  OUTLINED_FUNCTION_54_0();
}

uint64_t sub_1E38C1020(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_1E38BBD0C(*(v3 + 328), 10, a3) & 1) == 0)
  {
    return 1;
  }

  OUTLINED_FUNCTION_8();
  (*(v4 + 1496))(v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32770, &unk_1E42988A0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2A780, &unk_1E42A8840);
  v13 = OUTLINED_FUNCTION_44_22(v5, v6, v7, v8, v9, v10, v11, v12, v17[0]);
  if (!OUTLINED_FUNCTION_102_0(v13, v18, v14, v15))
  {
    return 1;
  }

  __swift_destroy_boxed_opaque_existential_1(v17);
  return 0;
}

void sub_1E38C10D0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B470, &qword_1E42986E0);
    v2 = sub_1E4207744();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  while (v5)
  {
    v8 = v7;
LABEL_12:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v10 = (*(a1 + 48) + 16 * (v9 | (v8 << 6)));
    v12 = *v10;
    v11 = v10[1];

    swift_dynamicCast();
    sub_1E329504C(&v22, v24);
    sub_1E329504C(v24, v25);
    sub_1E329504C(v25, &v23);
    v13 = sub_1E327D33C(v12, v11);
    v14 = v13;
    if (v15)
    {
      v16 = (v2[6] + 16 * v13);
      *v16 = v12;
      v16[1] = v11;

      v17 = (v2[7] + 32 * v14);
      __swift_destroy_boxed_opaque_existential_1(v17);
      sub_1E329504C(&v23, v17);
      v7 = v8;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_19;
      }

      *(v2 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v13;
      v18 = (v2[6] + 16 * v13);
      *v18 = v12;
      v18[1] = v11;
      sub_1E329504C(&v23, (v2[7] + 32 * v13));
      v19 = v2[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_20;
      }

      v2[2] = v21;
      v7 = v8;
    }
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v8);
    ++v7;
    if (v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
}

void sub_1E38C130C()
{
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_144_0();
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_6();
  v117 = v6 - v7;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v105 - v9;
  v121 = 0;
  v122 = 0xE000000000000000;
  v11 = *(v0 + 16);
  v12 = *(v0 + 24);
  if (v12)
  {
    v13 = v11;
  }

  else
  {
    v13 = 0;
  }

  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = 0xE000000000000000;
  }

  v15 = type metadata accessor for LibViewModel();
  v114 = v12;

  v115 = v13;
  v16 = OUTLINED_FUNCTION_105_3();
  MEMORY[0x1E69109E0](v16);
  v116 = v14;

  MEMORY[0x1E69109E0](0x79616C7265766F2DLL, 0xE800000000000000);

  OUTLINED_FUNCTION_45_16();
  v24 = sub_1E3B76C80(v17, v18, v19, v20, v21, v22, v23);
  if (!v24)
  {
    goto LABEL_37;
  }

  v113 = v15;
  sub_1E41A3110();
  OUTLINED_FUNCTION_4_32();
  v109 = v25;
  v110 = v26;
  v108 = v27;
  (v27)(v10);
  sub_1E38C6028(v1, &v121);
  sub_1E38C6028(v1, v120);
  v112 = v1;
  sub_1E38C6028(v1, v119);
  v28 = sub_1E41FFC94();
  v29 = sub_1E4206814();
  v30 = os_log_type_enabled(v28, v29);
  v111 = v4;
  v31 = v2;
  if (v30)
  {
    v32 = swift_slowAlloc();
    v33 = OUTLINED_FUNCTION_100();
    v118 = v33;
    *v32 = 136315650;
    v106 = v2;
    v34 = v123;
    __swift_project_boxed_opaque_existential_1(&v121, v123);
    OUTLINED_FUNCTION_33_24();
    v36 = v35(v34);
    v38 = v37;
    __swift_destroy_boxed_opaque_existential_1(&v121);
    sub_1E3270FC8(v36, v38, &v118);
    OUTLINED_FUNCTION_55_12();

    *(v32 + 4) = v36;
    *(v32 + 12) = 2048;
    OUTLINED_FUNCTION_34_7(v120, v120[3]);
    v39 = OUTLINED_FUNCTION_55_12();
    v41 = v40(v39);
    __swift_destroy_boxed_opaque_existential_1(v120);
    *(v32 + 14) = v41;
    *(v32 + 22) = 1024;
    OUTLINED_FUNCTION_34_7(v119, v119[3]);
    v42 = OUTLINED_FUNCTION_55_12();
    v31 = v106;
    LODWORD(v36) = v43(v42) & 1;
    __swift_destroy_boxed_opaque_existential_1(v119);
    *(v32 + 24) = v36;
    _os_log_impl(&dword_1E323F000, v28, v29, "LibLockupViewModel:: %s-bookmarktime %f-fullyWatched %{BOOL}d", v32, 0x1Cu);
    __swift_destroy_boxed_opaque_existential_1(v33);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();

    v107 = *(v111 + 8);
    v107(v10, v31);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v119);

    v107 = *(v4 + 8);
    v107(v10, v2);
    __swift_destroy_boxed_opaque_existential_1(&v121);
    __swift_destroy_boxed_opaque_existential_1(v120);
  }

  v44 = v112;
  OUTLINED_FUNCTION_34_7(v112, v112[3]);
  v45 = OUTLINED_FUNCTION_38();
  v47 = v46(v45);
  __swift_project_boxed_opaque_existential_1(v44, v44[3]);
  if (v47 > 0.0)
  {
    v48 = OUTLINED_FUNCTION_38();
    v50 = v49(v48);
    OUTLINED_FUNCTION_34_7(v44, v44[3]);
    v51 = OUTLINED_FUNCTION_38();
    v53 = v52(v51);
    v121 = 0;
    v122 = 0xE000000000000000;
    v54 = v50 / v53;
    sub_1E42074B4();

    MEMORY[0x1E69109E0](v115, v116);

    MEMORY[0x1E69109E0](0xD000000000000016, 0x80000001E42662B0);
    v55 = sub_1E4206584();
    MEMORY[0x1E69109E0](v55);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240, &unk_1E4298910);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E4297BE0;
    swift_retain_n();
    *(inited + 32) = j__OUTLINED_FUNCTION_53_12();
    *(inited + 40) = v57;
    *(inited + 72) = MEMORY[0x1E69E7DE0];
    *(inited + 48) = v54;
    sub_1E4205CB4();
    OUTLINED_FUNCTION_82();
    v62 = sub_1E3B76C80(v58, v59, v60, v24, 0, 0, v61);
    if (!v62)
    {
LABEL_14:

      goto LABEL_18;
    }

LABEL_13:
    v63 = v62;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
    v64 = swift_allocObject();
    *(v64 + 16) = xmmword_1E4298880;
    *(v64 + 32) = v63;
    v65 = *(*v24 + 472);

    v65(v64);

    goto LABEL_14;
  }

  v66 = OUTLINED_FUNCTION_38();
  if (v67(v66))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240, &unk_1E4298910);
    v68 = swift_initStackObject();
    OUTLINED_FUNCTION_117(v68, xmmword_1E4299720);
    v68[2].n128_u64[0] = v69;
    v68[2].n128_u64[1] = v70;
    v71 = MEMORY[0x1E69E6158];
    v68[4].n128_u64[1] = MEMORY[0x1E69E6158];
    v68[3].n128_u64[0] = 0xD00000000000001BLL;
    v68[3].n128_u64[1] = 0x80000001E4266270;
    v68[5].n128_u64[0] = sub_1E3C7CCAC(0);
    v68[5].n128_u64[1] = v72;
    v68[7].n128_u64[1] = v71;
    v68[6].n128_u64[0] = 0xD00000000000001ELL;
    v68[6].n128_u64[1] = 0x80000001E4266290;
    OUTLINED_FUNCTION_57();
    sub_1E4205CB4();
    OUTLINED_FUNCTION_106();
    type metadata accessor for ImageViewModel();
    swift_retain_n();
    v62 = sub_1E3F5321C(39, v68, v24);
    if (!v62)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_18:
  v73 = *(*v24 + 464);

  v121 = v73(v74);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CEA8, &qword_1E42A8990);
  sub_1E32752B0(&qword_1EE23B540, &unk_1ECF2C790, &qword_1E42996A0, MEMORY[0x1E69E6340]);
  v76 = sub_1E4149048(v75);

  if (v76)
  {

LABEL_37:
    OUTLINED_FUNCTION_54_0();
    return;
  }

  v108(v117, v109, v31);
  sub_1E38C6028(v44, &v121);

  v77 = sub_1E41FFC94();
  v78 = sub_1E4206814();

  if (!os_log_type_enabled(v77, v78))
  {

    v98 = OUTLINED_FUNCTION_112_5();
    v99(v98);
    __swift_destroy_boxed_opaque_existential_1(&v121);
    goto LABEL_37;
  }

  LODWORD(v116) = v78;
  v79 = swift_slowAlloc();
  v115 = swift_slowAlloc();
  v120[0] = v115;
  *v79 = 136315394;
  v80 = v124;
  OUTLINED_FUNCTION_110_3(&v121);
  v81 = OUTLINED_FUNCTION_38();
  v82(v81);
  OUTLINED_FUNCTION_145();
  __swift_destroy_boxed_opaque_existential_1(&v121);
  v83 = OUTLINED_FUNCTION_57();
  sub_1E3270FC8(v83, v84, v85);
  OUTLINED_FUNCTION_38();

  *(v79 + 4) = v80;
  *(v79 + 12) = 2080;
  v87 = v73(v86);
  v88 = MEMORY[0x1E69E7CC0];
  if (v87)
  {
    v89 = v87;
  }

  else
  {
    v89 = MEMORY[0x1E69E7CC0];
  }

  v90 = sub_1E32AE9B0(v89);
  if (!v90)
  {

LABEL_36:
    v100 = MEMORY[0x1E6910C30](v88, &qword_1F5D5CE68);
    v102 = v101;

    sub_1E3270FC8(v100, v102, v120);
    OUTLINED_FUNCTION_76();

    *(v79 + 14) = v88;
    _os_log_impl(&dword_1E323F000, v77, v116, "LibLockupViewModel:: %s, overlay vm %s", v79, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_55();

    v103 = OUTLINED_FUNCTION_112_5();
    v104(v103);
    goto LABEL_37;
  }

  v91 = v90;
  v113 = v79;
  v114 = v77;
  v106 = v31;
  v119[0] = v88;
  sub_1E38C5A44(0, v90 & ~(v90 >> 63), 0);
  if ((v91 & 0x8000000000000000) == 0)
  {
    v92 = 0;
    v88 = v119[0];
    do
    {
      if ((v89 & 0xC000000000000001) != 0)
      {
        v93 = OUTLINED_FUNCTION_84_5();
        v94 = *(MEMORY[0x1E6911E60](v93) + 98);
        swift_unknownObjectRelease();
      }

      else
      {
        v94 = *(*(v89 + 8 * v92 + 32) + 98);
      }

      v119[0] = v88;
      v96 = *(v88 + 16);
      v95 = *(v88 + 24);
      if (v96 >= v95 >> 1)
      {
        v97 = OUTLINED_FUNCTION_35(v95);
        sub_1E38C5A44(v97, v96 + 1, 1);
        v88 = v119[0];
      }

      ++v92;
      *(v88 + 16) = v96 + 1;
      *(v88 + 2 * v96 + 32) = v94;
    }

    while (v91 != v92);

    v79 = v113;
    v77 = v114;
    goto LABEL_36;
  }

  __break(1u);
}

void sub_1E38C1CF8()
{
  OUTLINED_FUNCTION_8();
  (*(v1 + 1496))(v46);
  v2 = sub_1E38BFABC(v46, v0);
  v3 = __swift_destroy_boxed_opaque_existential_1(v46);
  if (!v2)
  {
    return;
  }

  if ((sub_1E39DFFC0(v3, v4, v5) & 1) == 0)
  {
LABEL_28:

    return;
  }

  OUTLINED_FUNCTION_8();
  v6 += 60;
  v7 = *v6;
  v8 = (*v6)(v46);
  v41 = v9;
  v10 = *v9;
  if (!*v9)
  {
    v8(v46, 0);
LABEL_25:
    v22 = v7(v46);
    if (*v21)
    {
      v23 = v21;

      MEMORY[0x1E6910BF0](v24);
      sub_1E38C5A18(*((*v23 & 0xFFFFFFFFFFFFFF8) + 0x10));
      sub_1E4206324();
    }

    v22(v46, 0);
    goto LABEL_28;
  }

  v39 = v8;
  v40 = v7;
  v11 = sub_1E32AE9B0(v10);
  v12 = 0;
  while (1)
  {
    if (v11 == v12)
    {
      v19 = v41;
      v12 = sub_1E32AE9B0(*v41);
      goto LABEL_23;
    }

    if ((v10 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x1E6911E60](v12, v10);
    }

    else
    {
      if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_74;
      }
    }

    sub_1E3742F1C(v13, v14, v15);
    sub_1E4206254();
    sub_1E4206254();
    if (v44 == v42 && v45 == v43)
    {
      break;
    }

    v17 = OUTLINED_FUNCTION_97_0(v44, v45, v42);

    if (v17)
    {
      goto LABEL_21;
    }

    v18 = __OFADD__(v12++, 1);
    if (v18)
    {
      goto LABEL_75;
    }
  }

LABEL_21:
  if (__OFADD__(v12, 1))
  {
    goto LABEL_88;
  }

  v19 = v41;
  if (v12 + 1 == sub_1E32AE9B0(*v41))
  {
LABEL_23:
    v20 = sub_1E32AE9B0(*v19);
    if (v20 < v12)
    {
      goto LABEL_87;
    }

    sub_1E3882AB0(v12, v20);
    v39(v46, 0);
    v7 = v40;
    goto LABEL_25;
  }

  v25 = v12 + 5;
  v26 = &qword_1F5D5CE68;
  while (1)
  {
    v27 = v25 - 4;
    if ((*v41 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1E6911E60](v25 - 4);
    }

    else
    {
      if ((v27 & 0x8000000000000000) != 0)
      {
        goto LABEL_76;
      }

      if (v27 >= *((*v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_77;
      }
    }

    sub_1E4206254();
    sub_1E4206254();
    if (v44 == v42 && v45 == v43)
    {

      goto LABEL_63;
    }

    v29 = v26;
    v30 = OUTLINED_FUNCTION_97_0(v44, v45, v42);

    if ((v30 & 1) == 0)
    {
      break;
    }

    v26 = v29;
LABEL_63:
    v36 = v25 - 3;
    if (__OFADD__(v27, 1))
    {
      goto LABEL_78;
    }

    if (*v41 >> 62)
    {
      v37 = OUTLINED_FUNCTION_119_1();
    }

    else
    {
      v37 = *((*v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    ++v25;
    if (v36 == v37)
    {
      goto LABEL_23;
    }
  }

  v26 = v29;
  if (v27 == v12)
  {
    goto LABEL_62;
  }

  v31 = *v41;
  if ((*v41 & 0xC000000000000001) != 0)
  {
    v32 = MEMORY[0x1E6911E60](v12, *v41);
    v31 = *v41;
  }

  else
  {
    if ((v12 & 0x8000000000000000) != 0)
    {
      goto LABEL_80;
    }

    if (v12 >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_81;
    }

    v32 = *(v31 + 8 * v12 + 32);
  }

  if ((v31 & 0xC000000000000001) != 0)
  {
    v38 = OUTLINED_FUNCTION_114_1();
    v33 = MEMORY[0x1E6911E60](v38);
    v31 = *v41;
  }

  else
  {
    if ((v27 & 0x8000000000000000) != 0)
    {
      goto LABEL_82;
    }

    if (v27 >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_84;
    }

    v33 = *(v31 + 8 * v25);
  }

  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v41 = v31;
  if (!isUniquelyReferenced_nonNull_bridgeObject || (v31 & 0x8000000000000000) != 0 || (v31 & 0x4000000000000000) != 0)
  {
    v31 = sub_1E37EFA58(v31);
    *v41 = v31;
  }

  if ((v12 & 0x8000000000000000) != 0)
  {
    goto LABEL_83;
  }

  if (v12 >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_85;
  }

  *((v31 & 0xFFFFFFFFFFFFFF8) + 8 * v12 + 0x20) = v33;

  v35 = *v41;
  if ((*v41 & 0x8000000000000000) == 0 && (v35 & 0x4000000000000000) == 0)
  {
    if ((v27 & 0x8000000000000000) != 0)
    {
      goto LABEL_73;
    }

LABEL_60:
    if (v27 >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_86;
    }

    *((v35 & 0xFFFFFFFFFFFFFF8) + 8 * v25) = v32;

LABEL_62:
    v18 = __OFADD__(v12++, 1);
    if (v18)
    {
      goto LABEL_79;
    }

    goto LABEL_63;
  }

  v35 = sub_1E37EFA58(v35);
  *v41 = v35;
  if ((v27 & 0x8000000000000000) == 0)
  {
    goto LABEL_60;
  }

LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
}

void sub_1E38C225C()
{
  v1 = OBJC_IVAR____TtC8VideosUI18LibLockupViewModel__routerDataSource;
  if (!*(v0 + OBJC_IVAR____TtC8VideosUI18LibLockupViewModel__routerDataSource))
  {
    v2 = v0;
    OUTLINED_FUNCTION_8();
    v3 += 187;
    v4 = *v3;
    (*v3)(v44);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32770, &unk_1E42988A0);
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE68, &unk_1E42A8E30);
    if (OUTLINED_FUNCTION_20_35(v5))
    {
      __swift_destroy_boxed_opaque_existential_1(v43);
      OUTLINED_FUNCTION_65_10();
      v4();
      v6 = type metadata accessor for LibFamilySharingPlayableMediaEntity(0);
      if (OUTLINED_FUNCTION_20_35(v6))
      {

        v7 = [objc_opt_self() isMac];
      }

      else
      {
        v7 = 0;
      }

      OUTLINED_FUNCTION_65_10();
      v4();
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE88, &unk_1E42C61F0);
      if (OUTLINED_FUNCTION_20_35(v38) & 1) == 0 || (v39 = __swift_destroy_boxed_opaque_existential_1(v43), LOBYTE(v44[0]) = *(v0 + 328), LOBYTE(v43[0]) = 10, sub_1E37DA4B8(v39, v40, v41), ((sub_1E4205E84() | v7)))
      {
        sub_1E3280A90(0, &qword_1EE23B140, off_1E8728598);
        OUTLINED_FUNCTION_65_10();
        v4();
        v37 = sub_1E37FAFF8();
        goto LABEL_14;
      }
    }

    else
    {
      OUTLINED_FUNCTION_65_10();
      v4();
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2A780, &unk_1E42A8840);
      if (!OUTLINED_FUNCTION_20_35(v8))
      {
        v37 = 0;
        goto LABEL_14;
      }

      __swift_destroy_boxed_opaque_existential_1(v43);
      v9 = *(v0 + 328);
      if (sub_1E38BBD0C(v9, 10, v10))
      {
        v12 = sub_1E38BBD0C(v9, 10, v11);
        sub_1E3280A90(0, &qword_1EE23B140, off_1E8728598);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240, &unk_1E4298910);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1E4297BE0;
        v14 = sub_1E37FAF8C();
        v15 = v14[1];
        *(inited + 32) = *v14;
        *(inited + 40) = v15;
        v16 = swift_initStackObject();
        *(v16 + 16) = xmmword_1E4298AD0;

        v17 = sub_1E37FAF98();
        v19 = *v17;
        v18 = v17[1];
        *(v16 + 32) = v19;
        *(v16 + 40) = v18;

        OUTLINED_FUNCTION_65_10();
        v4();
        v20 = v45;
        __swift_project_boxed_opaque_existential_1(v44, v45);
        *(v16 + 72) = v20;
        __swift_allocate_boxed_opaque_existential_1((v16 + 48));
        OUTLINED_FUNCTION_37_1();
        (*(v21 + 16))();
        v22 = sub_1E37FAFA4();
        v24 = *v22;
        v23 = v22[1];
        *(v16 + 80) = v24;
        *(v16 + 88) = v23;
        *(v16 + 120) = MEMORY[0x1E69E6370];
        *(v16 + 96) = v12 & 1;

        v25 = sub_1E37FAFC8();
        v27 = *v25;
        v26 = *(v25 + 1);
        *(v16 + 128) = v27;
        *(v16 + 136) = v26;
        v28 = *(v2 + 312);
        v29 = *(v2 + 320);
        v30 = MEMORY[0x1E69E6158];
        *(v16 + 168) = MEMORY[0x1E69E6158];
        *(v16 + 144) = v28;
        *(v16 + 152) = v29;

        v31 = sub_1E37FAFBC();
        v33 = *v31;
        v32 = v31[1];
        *(v16 + 176) = v33;
        *(v16 + 184) = v32;

        sub_1E3A8ADF4(v9);
        *(v16 + 216) = v30;
        *(v16 + 192) = v34;
        *(v16 + 200) = v35;
        __swift_destroy_boxed_opaque_existential_1(v44);
        OUTLINED_FUNCTION_149_1();
        v36 = sub_1E4205CB4();
        *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
        *(inited + 48) = v36;
        OUTLINED_FUNCTION_149_1();
        sub_1E4205CB4();
        v37 = sub_1E37FB46C();
LABEL_14:
        v42 = *(v2 + v1);
        *(v2 + v1) = v37;

        goto LABEL_15;
      }
    }

    v37 = sub_1E38C2640();
    goto LABEL_14;
  }

LABEL_15:
  OUTLINED_FUNCTION_150_2();
}

id sub_1E38C2640()
{
  sub_1E3280A90(0, &qword_1EE23B140, off_1E8728598);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240, &unk_1E4298910);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4297BD0;
  v2 = sub_1E37FAF8C();
  v4 = *v2;
  v3 = v2[1];
  *(inited + 32) = v4;
  *(inited + 40) = v3;
  v5 = *(*v0 + 1496);

  v5(v18, v6);
  v7 = v19;
  __swift_project_boxed_opaque_existential_1(v18, v19);
  *(inited + 72) = v7;
  __swift_allocate_boxed_opaque_existential_1((inited + 48));
  OUTLINED_FUNCTION_37_1();
  (*(v8 + 16))();
  v9 = sub_1E37FAFC8();
  v10 = *(v9 + 1);
  *(inited + 80) = *v9;
  *(inited + 88) = v10;
  v11 = v0[39];
  v12 = v0[40];
  v13 = MEMORY[0x1E69E6158];
  *(inited + 120) = MEMORY[0x1E69E6158];
  *(inited + 96) = v11;
  *(inited + 104) = v12;
  *(inited + 128) = sub_1E4205F14();
  *(inited + 136) = v14;
  v15 = v0[35];
  v16 = v0[36];
  *(inited + 168) = v13;
  *(inited + 144) = v15;
  *(inited + 152) = v16;

  __swift_destroy_boxed_opaque_existential_1(v18);
  OUTLINED_FUNCTION_58_1();
  sub_1E4205CB4();
  return sub_1E37FB46C();
}

uint64_t sub_1E38C27E8(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = OBJC_IVAR____TtC8VideosUI18LibLockupViewModel__contextMenuItemViewModels;
  if (!*(v3 + OBJC_IVAR____TtC8VideosUI18LibLockupViewModel__contextMenuItemViewModels))
  {
    if (sub_1E38C1020(result, a2, a3))
    {
      v5 = MEMORY[0x1E69E7CC0];
      v39 = MEMORY[0x1E69E7CC0];
      type metadata accessor for LibContextMenuViewModel();
      v6 = *(*v3 + 1496);
      v6(v38);
      v7 = sub_1E3C61178(v38);
      v8 = __swift_destroy_boxed_opaque_existential_1(v38);
      if (v7)
      {
        MEMORY[0x1E6910BF0](v8);
        OUTLINED_FUNCTION_104_1();
        v11 = *(v9 + 16);
        v10 = *(v9 + 24);
        if (v11 >= v10 >> 1)
        {
          v34 = OUTLINED_FUNCTION_35(v10);
          OUTLINED_FUNCTION_154_2(v34, v11 + 1);
        }

        OUTLINED_FUNCTION_53();
        v8 = sub_1E4206324();
        v5 = v39;
      }

      (v6)(v38, v8);
      v12 = sub_1E3C612E0(v38);
      v13 = __swift_destroy_boxed_opaque_existential_1(v38);
      if (v12)
      {
        MEMORY[0x1E6910BF0](v13);
        OUTLINED_FUNCTION_104_1();
        v16 = *(v14 + 16);
        v15 = *(v14 + 24);
        if (v16 >= v15 >> 1)
        {
          v35 = OUTLINED_FUNCTION_35(v15);
          OUTLINED_FUNCTION_154_2(v35, v16 + 1);
        }

        OUTLINED_FUNCTION_74();
        sub_1E4206324();
        v5 = v39;
      }

      v17 = *(v3 + OBJC_IVAR____TtC8VideosUI18LibLockupViewModel_downloadButtonViewModel);
      if (!v17)
      {
        goto LABEL_32;
      }

      type metadata accessor for DownloadMenuItemViewModel(0);
      v18 = v17;
      OUTLINED_FUNCTION_87_0();

      v19 = OUTLINED_FUNCTION_13_8();
      v21 = sub_1E4001D80(v19, v20);
      if (!v21)
      {
        goto LABEL_31;
      }

      v22 = v21;
      if ([objc_opt_self() isStoreOrPressDemoMode])
      {

LABEL_32:
        *(v3 + v4) = v5;
      }

      v6(v38);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32770, &unk_1E42988A0);
      v23 = OUTLINED_FUNCTION_106();
      v24 = type metadata accessor for LibMPBaseMediaEntity(v23);
      if (OUTLINED_FUNCTION_90_0(&v37, v38, v25, v24))
      {
        if ((*(*v37 + 464))())
        {
          v26 = [*(v22 + OBJC_IVAR____TtC8VideosUI25DownloadMenuItemViewModel_downloadViewModel) assetController];
          if (v26)
          {
            v27 = [v26 supportsStartingDownload];
            swift_unknownObjectRelease();
            if (v27)
            {

              MEMORY[0x1E6910BF0](v28);
              OUTLINED_FUNCTION_104_1();
              if (*(v29 + 16) >= *(v29 + 24) >> 1)
              {
                sub_1E42062F4();
              }

              sub_1E4206324();
              v5 = v39;
            }
          }

LABEL_30:

LABEL_31:

          goto LABEL_32;
        }
      }

      MEMORY[0x1E6910BF0](v30);
      OUTLINED_FUNCTION_104_1();
      v33 = *(v31 + 16);
      v32 = *(v31 + 24);
      if (v33 >= v32 >> 1)
      {
        v36 = OUTLINED_FUNCTION_35(v32);
        OUTLINED_FUNCTION_154_2(v36, v33 + 1);
      }

      OUTLINED_FUNCTION_53();
      sub_1E4206324();
      v5 = v39;
      goto LABEL_30;
    }

    *(v3 + v4) = MEMORY[0x1E69E7CC0];
  }

  return result;
}

void sub_1E38C2B94()
{
  v1 = v0;
  OUTLINED_FUNCTION_26_0();
  v3 = (*(v2 + 904))();
  if (v3)
  {
    if ((OUTLINED_FUNCTION_157_2(v3, v4, v5) & 1) == 0)
    {
      OUTLINED_FUNCTION_111();
      OUTLINED_FUNCTION_25();
      OUTLINED_FUNCTION_150_2();

      __asm { BRAA            X4, X16 }
    }

    OUTLINED_FUNCTION_111();
    v6 += 187;
    v7 = *v6;
    (*v6)(v74);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32770, &unk_1E42988A0);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2A780, &unk_1E42A8840);
    if (OUTLINED_FUNCTION_103_4(v75, v74, v9, v8))
    {
      sub_1E3251BE8(v75, v71);
      v10 = v0[328];
      v12 = sub_1E38BBD0C(v10, 10, v11);
      sub_1E3280A90(0, &qword_1EE23B140, off_1E8728598);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240, &unk_1E4298910);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1E4297BE0;
      v14 = sub_1E37FAF8C();
      v15 = v14[1];
      *(inited + 32) = *v14;
      *(inited + 40) = v15;
      v16 = swift_initStackObject();
      *(v16 + 16) = xmmword_1E4298AD0;

      v17 = sub_1E37FAF98();
      v19 = *v17;
      v18 = v17[1];
      *(v16 + 32) = v19;
      *(v16 + 40) = v18;
      v20 = *(*v0 + 1496);

      v20(&v72, v21);
      v22 = v73;
      __swift_project_boxed_opaque_existential_1(&v72, v73);
      *(v16 + 72) = v22;
      __swift_allocate_boxed_opaque_existential_1((v16 + 48));
      OUTLINED_FUNCTION_37_1();
      (*(v23 + 16))();
      v24 = sub_1E37FAFA4();
      v26 = *v24;
      v25 = v24[1];
      *(v16 + 80) = v26;
      *(v16 + 88) = v25;
      *(v16 + 120) = MEMORY[0x1E69E6370];
      *(v16 + 96) = v12 & 1;

      v27 = sub_1E37FAFC8();
      v29 = *v27;
      v28 = *(v27 + 1);
      *(v16 + 128) = v29;
      *(v16 + 136) = v28;
      v30 = *(v1 + 39);
      v31 = *(v1 + 40);
      v32 = MEMORY[0x1E69E6158];
      *(v16 + 168) = MEMORY[0x1E69E6158];
      *(v16 + 144) = v30;
      *(v16 + 152) = v31;

      v33 = sub_1E37FAFBC();
      v35 = *v33;
      v34 = v33[1];
      *(v16 + 176) = v35;
      *(v16 + 184) = v34;

      sub_1E3A8ADF4(v10);
      *(v16 + 216) = v32;
      *(v16 + 192) = v36;
      *(v16 + 200) = v37;
      __swift_destroy_boxed_opaque_existential_1(&v72);
      v38 = sub_1E4205CB4();
      *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
      *(inited + 48) = v38;
      sub_1E4205CB4();
      v39 = sub_1E37FB46C();
      v40 = [v39 selectEventDataSource];
      if (v40)
      {
        v41 = v40;
        v42 = [v40 documentDataSource];

        if (v42)
        {
          v43 = sub_1E37D5144(v42);
          if (v43)
          {
            v44 = v43;
            v45 = [objc_opt_self() currentNavigationController];
            if (v45)
            {
              v46 = v45;
              [v45 pushViewController:v44 animated:1];
            }
          }
        }
      }

      v47 = v71;
      goto LABEL_15;
    }

    v76 = 0;
    memset(v75, 0, sizeof(v75));
    v58 = sub_1E325F7FC(v75, &qword_1ECF2A778, &unk_1E429E340);
    v7(v75, v58);
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE88, &unk_1E42C61F0);
    if (OUTLINED_FUNCTION_103_4(&v72, v75, v60, v59))
    {
      sub_1E3251BE8(&v72, v74);
      v61 = sub_1E38C2640();
      if (v61)
      {
        v62 = v61;
        v63 = [v61 selectEventDataSource];
        if (v63 && (v64 = v63, v65 = [v63 documentDataSource], v64, v65))
        {
          type metadata accessor for LibTransitionDetailsViewController();
          v66 = v65;
          v67 = sub_1E4023030();
          if (v67)
          {
            v68 = v67;
            v69 = [objc_opt_self() currentNavigationController];
            if (v69)
            {
              v70 = v69;
              [v69 pushViewController:v68 animated:1];

              v62 = v66;
              v66 = v68;
              v68 = v70;
            }

            v62 = v66;
            v66 = v68;
          }
        }

        else
        {
          v66 = v62;
        }
      }

      goto LABEL_14;
    }

    OUTLINED_FUNCTION_96_0();
    v56 = &qword_1ECF2CEA0;
    v57 = &unk_1E42A8980;
LABEL_20:
    sub_1E325F7FC(&v72, v56, v57);
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_111();
  (*(v48 + 1496))(v75);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32770, &unk_1E42988A0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE68, &unk_1E42A8E30);
  if (!OUTLINED_FUNCTION_102_0(&v72, v75, v50, v49))
  {
    OUTLINED_FUNCTION_96_0();
    v56 = &qword_1ECF2CE78;
    v57 = &unk_1E42C61E0;
    goto LABEL_20;
  }

  sub_1E3251BE8(&v72, v74);
  sub_1E3280A90(0, &qword_1EE23B350, off_1E8728420);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE98, &qword_1E42A8E40);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_1E4297BE0;
  sub_1E38C6028(v74, v51 + 32);
  sub_1E4039C00(3, v51);
  v53 = v52;
  [objc_opt_self() playMediaInfo:v52 watchType:0 isRentAndWatchNow:0];

LABEL_14:
  v47 = v74;
LABEL_15:
  __swift_destroy_boxed_opaque_existential_1(v47);
LABEL_21:
  OUTLINED_FUNCTION_150_2();
}

uint64_t sub_1E38C3370@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for LibLockupViewModel(0);
  result = sub_1E4200514();
  *a2 = result;
  return result;
}

void sub_1E38C33B0()
{
  OUTLINED_FUNCTION_31_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE90, &unk_1E42A8970);
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v51 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20, &unk_1E42986D0);
  v8 = OUTLINED_FUNCTION_17_2(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_37_5();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_18_6();
  v53 = v10;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_140_2();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v51 - v13;
  v15 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_0_10();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_4_6();
  v21 = (v19 - v20);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v51 - v23;
  if (sub_1E38BBD0C(*(v0 + 328), 10, v25))
  {
    v52 = v6;
    OUTLINED_FUNCTION_8();
    v27 = (*(v26 + 1136))();
    sub_1E38BBFF0();
    OUTLINED_FUNCTION_21_2(v14);
    if (v44)
    {
      OUTLINED_FUNCTION_90();
      sub_1E325F7FC(v28, v29, v30);
      v31 = OBJC_IVAR____TtC8VideosUI18LibLockupViewModel__lastKnownDownloadExpirationDate;
      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      sub_1E329E324(v0 + v31, v2);
      OUTLINED_FUNCTION_21_2(v2);
      OUTLINED_FUNCTION_90();
      sub_1E325F7FC(v32, v33, v34);
    }

    else
    {
      v51 = *(v17 + 32);
      v51(v24, v14, v15);
      if ((v27 & 1) == 0)
      {
        v37 = OUTLINED_FUNCTION_24_4();
        v38(v37);
        __swift_storeEnumTagSinglePayload(v1, 0, 1, v15);
        v39 = OBJC_IVAR____TtC8VideosUI18LibLockupViewModel__lastKnownDownloadExpirationDate;
        OUTLINED_FUNCTION_25();
        swift_beginAccess();
        v40 = *(v3 + 48);
        v41 = v52;
        sub_1E329E324(v1, v52);
        sub_1E329E324(v0 + v39, v41 + v40);
        OUTLINED_FUNCTION_21_2(v41);
        if (v44)
        {
          sub_1E325F7FC(v1, &unk_1ECF28E20, &unk_1E42986D0);
          v42 = OUTLINED_FUNCTION_8_6();
          v43(v42);
          OUTLINED_FUNCTION_21_2(v41 + v40);
          if (v44)
          {
            sub_1E325F7FC(v41, &unk_1ECF28E20, &unk_1E42986D0);
            goto LABEL_17;
          }
        }

        else
        {
          sub_1E329E324(v41, v53);
          OUTLINED_FUNCTION_21_2(v41 + v40);
          if (!v44)
          {
            v51(v21, (v41 + v40), v15);
            sub_1E38C7288(&qword_1EE28A458, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
            sub_1E4205E84();
            v48 = *(v17 + 8);
            v48(v21, v15);
            sub_1E325F7FC(v1, &unk_1ECF28E20, &unk_1E42986D0);
            v49 = OUTLINED_FUNCTION_8_6();
            (v48)(v49);
            v50 = OUTLINED_FUNCTION_84_5();
            (v48)(v50);
            sub_1E325F7FC(v41, &unk_1ECF28E20, &unk_1E42986D0);
            goto LABEL_17;
          }

          sub_1E325F7FC(v1, &unk_1ECF28E20, &unk_1E42986D0);
          v45 = *(v17 + 8);
          v46 = OUTLINED_FUNCTION_8_6();
          v45(v46);
          v47 = OUTLINED_FUNCTION_84_5();
          v45(v47);
        }

        sub_1E325F7FC(v41, &qword_1ECF2CE90, &unk_1E42A8970);
        goto LABEL_17;
      }

      v35 = OUTLINED_FUNCTION_8_6();
      v36(v35);
    }
  }

LABEL_17:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E38C3854()
{
  v1 = v0;
  OUTLINED_FUNCTION_8();
  v40 = *(v2 + 480);
  v3 = v40(v42);
  v5 = *v4;
  if (!*v4)
  {
    v16 = v3(v42, 0);
LABEL_24:
    (*(*v1 + 1496))(v42, v16);
    v19 = sub_1E38C011C(v42, v1);
    __swift_destroy_boxed_opaque_existential_1(v42);
    if (v19)
    {
      v21 = v40(v42);
      if (*v20)
      {
        v22 = v20;

        MEMORY[0x1E6910BF0](v23);
        sub_1E38C5A18(*((*v22 & 0xFFFFFFFFFFFFFF8) + 0x10));
        OUTLINED_FUNCTION_74();
        sub_1E4206324();
      }

      v21(v42, 0);
    }

    return;
  }

  v6 = v4;
  v39 = v3;
  v7 = sub_1E32AE9B0(v5);
  v8 = 0;
  v41 = v6;
  while (1)
  {
    if (v7 == v8)
    {
      v8 = sub_1E32AE9B0(*v6);
      goto LABEL_21;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x1E6911E60](v8, v5);
      v9 = v10;
    }

    else
    {
      if (v8 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_74;
      }

      v9 = *(v5 + 8 * v8 + 32);
    }

    v48 = *(v9 + 98);
    v47 = 15;
    sub_1E3742F1C(v10, v11, v12);
    sub_1E4206254();
    sub_1E4206254();
    if (v45 == v43 && v46 == v44)
    {
      break;
    }

    v14 = OUTLINED_FUNCTION_97_0(v45, v46, v43);

    if (v14)
    {
      goto LABEL_19;
    }

    v15 = __OFADD__(v8++, 1);
    v6 = v41;
    if (v15)
    {
      goto LABEL_75;
    }
  }

LABEL_19:
  v6 = v41;
  if (__OFADD__(v8, 1))
  {
    goto LABEL_88;
  }

  if (v8 + 1 == sub_1E32AE9B0(*v41))
  {
LABEL_21:
    v1 = v0;
LABEL_22:
    if (sub_1E32AE9B0(*v6) < v8)
    {
      goto LABEL_87;
    }

    v17 = OUTLINED_FUNCTION_138_1();
    sub_1E3882AB0(v17, v18);
    v16 = v39(v42, 0);
    goto LABEL_24;
  }

  v24 = v8 + 5;
  v1 = v0;
  while (1)
  {
    v25 = v24 - 4;
    v26 = *v6;
    if ((*v6 & 0xC000000000000001) != 0)
    {
      v27 = MEMORY[0x1E6911E60](v24 - 4);
    }

    else
    {
      if ((v25 & 0x8000000000000000) != 0)
      {
        goto LABEL_76;
      }

      if (v25 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_77;
      }

      v27 = *(v26 + 8 * v24);
    }

    v48 = *(v27 + 98);
    v47 = 15;
    sub_1E4206254();
    sub_1E4206254();
    if (v45 == v43 && v46 == v44)
    {

      goto LABEL_63;
    }

    v29 = OUTLINED_FUNCTION_97_0(v45, v46, v43);

    if ((v29 & 1) == 0)
    {
      break;
    }

LABEL_63:
    v35 = v24 - 3;
    if (__OFADD__(v25, 1))
    {
      goto LABEL_78;
    }

    if (*v6 >> 62)
    {
      v36 = OUTLINED_FUNCTION_119_1();
    }

    else
    {
      v36 = *((*v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    ++v24;
    if (v35 == v36)
    {
      goto LABEL_22;
    }
  }

  if (v25 == v8)
  {
    goto LABEL_59;
  }

  v30 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    v31 = MEMORY[0x1E6911E60](v8, *v6);
    v30 = *v6;
  }

  else
  {
    if ((v8 & 0x8000000000000000) != 0)
    {
      goto LABEL_80;
    }

    if (v8 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_81;
    }

    v31 = *(v30 + 8 * v8 + 32);
  }

  if ((v30 & 0xC000000000000001) != 0)
  {
    v37 = MEMORY[0x1E6911E60](v24 - 4, v30);
    v38 = v6;
    v32 = v37;
    v30 = *v38;
  }

  else
  {
    if ((v25 & 0x8000000000000000) != 0)
    {
      goto LABEL_82;
    }

    if (v25 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_84;
    }

    v32 = *(v30 + 8 * v24);
  }

  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v41 = v30;
  if (!isUniquelyReferenced_nonNull_bridgeObject || (v30 & 0x8000000000000000) != 0 || (v30 & 0x4000000000000000) != 0)
  {
    v30 = sub_1E37EFA58(v30);
    *v41 = v30;
  }

  if ((v8 & 0x8000000000000000) != 0)
  {
    goto LABEL_83;
  }

  if (v8 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_85;
  }

  *((v30 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20) = v32;

  v6 = v41;
  v34 = *v41;
  if ((*v41 & 0x8000000000000000) == 0 && (v34 & 0x4000000000000000) == 0)
  {
    if ((v25 & 0x8000000000000000) != 0)
    {
      goto LABEL_73;
    }

LABEL_57:
    if (v25 >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_86;
    }

    *((v34 & 0xFFFFFFFFFFFFFF8) + 8 * v24) = v31;

LABEL_59:
    v15 = __OFADD__(v8++, 1);
    if (v15)
    {
      goto LABEL_79;
    }

    goto LABEL_63;
  }

  v34 = sub_1E37EFA58(v34);
  *v41 = v34;
  if ((v25 & 0x8000000000000000) == 0)
  {
    goto LABEL_57;
  }

LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
}

void sub_1E38C3DB4()
{
  OUTLINED_FUNCTION_93();
  v110 = v1;
  v3 = v2;
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_37_5();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_18_6();
  v109 = v9;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v10);
  v108 = &v106 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20, &unk_1E42986D0);
  OUTLINED_FUNCTION_17_2(v12);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v106 - v14;
  v16 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_0_10();
  v111 = v17;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  v112 = v20 - v19;
  v21 = *(v3 + 32);
  v22 = OUTLINED_FUNCTION_84_5();
  __swift_project_boxed_opaque_existential_1(v22, v23);
  v24 = OUTLINED_FUNCTION_38();
  v26 = v25(v24, v21);
  if (v27)
  {
    v28 = sub_1E41A3110();
    (*(v6 + 16))(v0, v28, v4);
    sub_1E38C6028(v3, &v114);
    v29 = sub_1E41FFC94();
    v30 = sub_1E42067F4();
    if (OUTLINED_FUNCTION_62_9(v30))
    {
      OUTLINED_FUNCTION_6_21();
      v113 = OUTLINED_FUNCTION_36_6();
      *v4 = 136315138;
      v31 = v117;
      OUTLINED_FUNCTION_110_3(&v114);
      OUTLINED_FUNCTION_38();
      sub_1E4207944();
      OUTLINED_FUNCTION_145();
      __swift_destroy_boxed_opaque_existential_1(&v114);
      v32 = OUTLINED_FUNCTION_57();
      sub_1E3270FC8(v32, v33, v34);
      OUTLINED_FUNCTION_38();

      *(v4 + 4) = v31;
      OUTLINED_FUNCTION_26_23(&dword_1E323F000, v35, v36, "Rental movie %s should have rental ID");
      OUTLINED_FUNCTION_24_18();
      OUTLINED_FUNCTION_65_0();

      v37 = OUTLINED_FUNCTION_114_1();
      v38(v37);
      goto LABEL_18;
    }

    v55 = OUTLINED_FUNCTION_114_1();
    v56(v55);
LABEL_14:
    __swift_destroy_boxed_opaque_existential_1(&v114);
    goto LABEL_18;
  }

  v39 = v26;
  v107 = v6;
  v40 = *(v3 + 32);
  v41 = OUTLINED_FUNCTION_105_3();
  __swift_project_boxed_opaque_existential_1(v41, v42);
  v43 = OUTLINED_FUNCTION_35_0();
  v44(v43, v40);
  OUTLINED_FUNCTION_52(v15, 1, v16);
  if (v45)
  {
    sub_1E325F7FC(v15, &unk_1ECF28E20, &unk_1E42986D0);
    sub_1E41A3110();
    v46 = v107;
    OUTLINED_FUNCTION_107_0();
    v47 = v109;
    v48(v109);
    sub_1E38C6028(v3, &v114);
    v49 = sub_1E41FFC94();
    v50 = sub_1E42067F4();
    if (os_log_type_enabled(v49, v50))
    {
      OUTLINED_FUNCTION_6_21();
      v113 = OUTLINED_FUNCTION_36_6();
      *v4 = 136315138;
      v51 = v117;
      OUTLINED_FUNCTION_110_3(&v114);
      OUTLINED_FUNCTION_38();
      sub_1E4207944();
      OUTLINED_FUNCTION_145();
      __swift_destroy_boxed_opaque_existential_1(&v114);
      v52 = OUTLINED_FUNCTION_57();
      sub_1E3270FC8(v52, v53, v54);
      OUTLINED_FUNCTION_38();

      *(v4 + 4) = v51;
      _os_log_impl(&dword_1E323F000, v49, v50, "Rental movie %s without having rental expiration date", v4, 0xCu);
      OUTLINED_FUNCTION_24_18();
      OUTLINED_FUNCTION_65_0();

      (*(v46 + 8))(v47, v4);
      goto LABEL_18;
    }

    (*(v46 + 8))(v47, v4);
    goto LABEL_14;
  }

  v57 = v16;
  v58 = v111;
  v59 = *(v111 + 32);
  v109 = v57;
  v59(v112, v15);
  sub_1E41FE574();
  v61 = v60;
  v114 = v39;
  sub_1E4207944();
  OUTLINED_FUNCTION_145();
  v114 = 0;
  v115 = 0xE000000000000000;
  sub_1E4206594();
  v62 = v114;
  v63 = v115;
  v114 = &v114;
  v115 = v39;

  MEMORY[0x1E69109E0](v62, v63);

  v64 = v114;
  v65 = v115;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240, &unk_1E4298910);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_117(inited, xmmword_1E4299720);
  inited[2].n128_u64[0] = v67;
  inited[2].n128_u64[1] = v68;
  inited[4].n128_u64[1] = MEMORY[0x1E69E6158];
  inited[3].n128_u64[0] = v64;
  inited[3].n128_u64[1] = v65;
  ViewModelKeys.rawValue.getter(11);
  inited[5].n128_u64[0] = v69;
  inited[5].n128_u64[1] = v70;
  v71 = swift_initStackObject();
  *(v71 + 16) = xmmword_1E4297BD0;
  sub_1E3854630(1);
  *(v71 + 32) = v72;
  *(v71 + 40) = v73;
  *(v71 + 72) = MEMORY[0x1E69E63B0];
  *(v71 + 48) = v61;
  sub_1E3854630(0);
  *(v71 + 80) = v74;
  *(v71 + 88) = v75;
  v77 = sub_1E39DFFC0(v74, v75, v76);
  v78 = MEMORY[0x1E69E6370];
  *(v71 + 120) = MEMORY[0x1E69E6370];
  *(v71 + 96) = (v77 & 1) == 0;
  sub_1E3854630(2);
  *(v71 + 128) = v79;
  *(v71 + 136) = v80;
  v82 = sub_1E39DFFC0(v79, v80, v81);
  *(v71 + 168) = v78;
  *(v71 + 144) = (v82 & 1) == 0;
  v83 = sub_1E4205CB4();
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
  inited[7].n128_u64[1] = v84;
  inited[6].n128_u64[0] = v83;
  v85 = sub_1E4205CB4();
  type metadata accessor for TextViewModel();
  v116 = v84;
  v114 = v85;

  OUTLINED_FUNCTION_21_7();
  if (sub_1E3C27638(v86, v87, v88, v89, v90))
  {

    if (sub_1E3C27528(v91, v92))
    {
      OUTLINED_FUNCTION_26_0();
      (*(v93 + 872))(0);
    }

    (*(v58 + 8))(v112, v109);
  }

  else
  {
    sub_1E41A3110();
    v94 = v107;
    v95 = v108;
    OUTLINED_FUNCTION_107_0();
    v96(v95);

    v97 = sub_1E41FFC94();
    v98 = sub_1E42067F4();

    if (os_log_type_enabled(v97, v98))
    {
      v99 = OUTLINED_FUNCTION_6_21();
      v110 = OUTLINED_FUNCTION_100();
      v114 = v110;
      *v99 = 136315138;
      sub_1E4205C74();
      v100 = v58;
      v101 = v94;

      v102 = OUTLINED_FUNCTION_58_1();
      v105 = sub_1E3270FC8(v102, v103, v104);

      *(v99 + 4) = v105;
      _os_log_impl(&dword_1E323F000, v97, v98, "Can not create a text view model from json dictionary %s", v99, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v110);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();

      (*(v101 + 8))(v108, v4);
      (*(v100 + 8))(v112, v109);
    }

    else
    {

      (*(v94 + 8))(v95, v4);
      (*(v58 + 8))(v112, v109);
    }
  }

LABEL_18:
  OUTLINED_FUNCTION_54_0();
}

void sub_1E38C45EC()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  OUTLINED_FUNCTION_144_0();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_147_2();
  v5 = sub_1E38BFF5C(v1);
  if (v6)
  {
    OUTLINED_FUNCTION_98_4(v5, v6);
    MEMORY[0x1E69109E0](v39, v40);
  }

  v7 = OUTLINED_FUNCTION_125();
  __swift_project_boxed_opaque_existential_1(v7, v8);
  v9 = OUTLINED_FUNCTION_25_27();
  v11 = v10(v9);
  v15 = sub_1E38C4D2C(v11, v14, v12, v13);
  v17 = v16;
  MEMORY[0x1E69109E0](v15);

  OUTLINED_FUNCTION_113_3();
  if (v18)
  {
    type metadata accessor for TextViewModel();
    v41 = MEMORY[0x1E69E6158];
    v39 = v17;
    v40 = &v42;

    OUTLINED_FUNCTION_21_7();
    sub_1E3C27638(v19, v20, v21, v22, v23);
  }

  else
  {

    sub_1E41A3110();
    OUTLINED_FUNCTION_4_32();
    v24(v0);
    sub_1E38C6028(v1, &v39);
    v25 = sub_1E41FFC94();
    v26 = sub_1E4206814();
    if (OUTLINED_FUNCTION_62_9(v26))
    {
      OUTLINED_FUNCTION_6_21();
      v38 = OUTLINED_FUNCTION_36_6();
      *v3 = 136315138;
      v27 = v41;
      OUTLINED_FUNCTION_34_7(&v39, v41);
      OUTLINED_FUNCTION_33_24();
      v29 = v28(v27);
      v31 = v30;
      __swift_destroy_boxed_opaque_existential_1(&v39);
      sub_1E3270FC8(v29, v31, &v38);
      OUTLINED_FUNCTION_76();

      *(v3 + 4) = v29;
      OUTLINED_FUNCTION_26_23(&dword_1E323F000, v32, v33, "Unexpected empty subtitle entity for %s");
      OUTLINED_FUNCTION_24_18();
      OUTLINED_FUNCTION_65_0();

      v34 = OUTLINED_FUNCTION_13_8();
      v35(v34);
    }

    else
    {

      v36 = OUTLINED_FUNCTION_13_8();
      v37(v36);
      __swift_destroy_boxed_opaque_existential_1(&v39);
    }
  }

  OUTLINED_FUNCTION_25_2();
}

id sub_1E38C4838(void *a1)
{
  v2 = v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_27_18();
  v3 = OUTLINED_FUNCTION_75();
  v5 = v4(v3);
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  v8 = objc_opt_self();
  result = [v8 sharedInstance];
  if (result)
  {
    v10 = result;
    sub_1E3741090(0x6F736970452E5654, 0xEB00000000736564, result);
    v12 = v11;

    if (!v12)
    {
      return 0;
    }

    result = [v8 sharedInstance];
    if (result)
    {
      v13 = OUTLINED_FUNCTION_35_0();
      sub_1E3741090(v13, 0xEA00000000006564, v8);
      v15 = v14;

      if (v15)
      {
        if (v7 > 0)
        {
          sub_1E4207944();
          MEMORY[0x1E69109E0](32, 0xE100000000000000);

          v16 = OUTLINED_FUNCTION_53();
          MEMORY[0x1E69109E0](v16);

          type metadata accessor for TextViewModel();
          (*(*v2 + 624))();
          OUTLINED_FUNCTION_21_7();
          return sub_1E3C27638(v17, v18, v19, v20, v21);
        }
      }

      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1E38C4A48()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  OUTLINED_FUNCTION_144_0();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_147_2();
  sub_1E38C6028(v1, &v47);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE68, &unk_1E42A8E30);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE88, &unk_1E42C61F0);
  if (OUTLINED_FUNCTION_90_0(v46, &v47, v6, v5))
  {
    __swift_destroy_boxed_opaque_existential_1(v46);
    v7 = OUTLINED_FUNCTION_125();
    OUTLINED_FUNCTION_34_7(v7, v8);
    v9 = OUTLINED_FUNCTION_35_0();
    v11 = v10(v9);
    if (v12)
    {
      goto LABEL_6;
    }

    v46[0] = v11;
    v13 = sub_1E4207944();
  }

  else
  {
    v13 = sub_1E38BFF5C(v1);
    if (!v14)
    {
      goto LABEL_6;
    }
  }

  OUTLINED_FUNCTION_98_4(v13, v14);
  MEMORY[0x1E69109E0](v47, v48);

LABEL_6:
  v15 = OUTLINED_FUNCTION_125();
  __swift_project_boxed_opaque_existential_1(v15, v16);
  v17 = OUTLINED_FUNCTION_25_27();
  v19 = v18(v17);
  v23 = sub_1E38C4D2C(v19, v22, v20, v21);
  v25 = v24;
  MEMORY[0x1E69109E0](v23);

  OUTLINED_FUNCTION_113_3();
  if (v26)
  {
    type metadata accessor for TextViewModel();
    v49 = MEMORY[0x1E69E6158];
    v47 = v25;
    v48 = &v50;

    OUTLINED_FUNCTION_21_7();
    sub_1E3C27638(v27, v28, v29, v30, v31);
  }

  else
  {

    sub_1E41A3110();
    OUTLINED_FUNCTION_4_32();
    v32(v0);
    sub_1E38C6028(v1, &v47);
    v33 = sub_1E41FFC94();
    v34 = sub_1E4206814();
    if (OUTLINED_FUNCTION_62_9(v34))
    {
      OUTLINED_FUNCTION_6_21();
      v46[0] = OUTLINED_FUNCTION_36_6();
      *v3 = 136315138;
      v35 = v49;
      OUTLINED_FUNCTION_34_7(&v47, v49);
      OUTLINED_FUNCTION_33_24();
      v37 = v36(v35);
      v39 = v38;
      __swift_destroy_boxed_opaque_existential_1(&v47);
      sub_1E3270FC8(v37, v39, v46);
      OUTLINED_FUNCTION_76();

      *(v3 + 4) = v37;
      OUTLINED_FUNCTION_26_23(&dword_1E323F000, v40, v41, "Unexpected empty subtitle entity for %s");
      OUTLINED_FUNCTION_24_18();
      OUTLINED_FUNCTION_65_0();

      v42 = OUTLINED_FUNCTION_13_8();
      v43(v42);
    }

    else
    {

      v44 = OUTLINED_FUNCTION_13_8();
      v45(v44);
      __swift_destroy_boxed_opaque_existential_1(&v47);
    }
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E38C4D2C(uint64_t result, double a2, uint64_t a3, uint64_t a4)
{
  v4 = a2 / 60.0;
  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_26;
  }

  if (v4 <= -9.22337204e18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v4 >= 9.22337204e18)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v5 = v4 / 60;
  v6 = v4 % 60;
  v31 = 0;
  v32 = 0xE000000000000000;
  if (v4 >= 60)
  {
    v7 = sub_1E39DFFC0(result, a3, a4);
    result = [objc_opt_self() sharedInstance];
    if (!result)
    {
LABEL_29:
      __break(1u);
      return result;
    }

    v8 = result;
    v9 = "ack.Duration.Minutes.Shortened";
    if (v7)
    {
      v9 = "ack.Duration.Hours";
      v10 = 0xD00000000000002CLL;
    }

    else
    {
      v10 = 0xD000000000000022;
    }

    sub_1E3741090(v10, v9 | 0x8000000000000000, v8);
    v12 = v11;

    if (v12)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30870, &unk_1E429CE30);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_1E4297BE0;
      v30 = v5;
      sub_1E4207944();
      OUTLINED_FUNCTION_134_2();
      *(v13 + 56) = MEMORY[0x1E69E6158];
      *(v13 + 64) = sub_1E3283528(v14, v15, v16);
      *(v13 + 32) = &v30;
      *(v13 + 40) = v5;
      OUTLINED_FUNCTION_13_8();
      sub_1E4205F44();

      v17 = OUTLINED_FUNCTION_34();
      MEMORY[0x1E69109E0](v17);
    }

    if (v6 <= 0)
    {
      goto LABEL_20;
    }

    result = MEMORY[0x1E69109E0](32, 0xE100000000000000);
    goto LABEL_14;
  }

  if (v6 > 0)
  {
LABEL_14:
    v18 = sub_1E39DFFC0(result, a3, a4);
    result = [objc_opt_self() sharedInstance];
    if (result)
    {
      v19 = result;
      v20 = "symbol://play.fill";
      if (v18)
      {
        v20 = "ack.Duration.Minutes";
        v21 = 0xD00000000000002ELL;
      }

      else
      {
        v21 = 0xD000000000000024;
      }

      sub_1E3741090(v21, v20 | 0x8000000000000000, v19);
      v23 = v22;

      if (v23)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30870, &unk_1E429CE30);
        v24 = swift_allocObject();
        *(v24 + 16) = xmmword_1E4297BE0;
        v30 = v6;
        sub_1E4207944();
        OUTLINED_FUNCTION_134_2();
        *(v24 + 56) = MEMORY[0x1E69E6158];
        *(v24 + 64) = sub_1E3283528(v25, v26, v27);
        *(v24 + 32) = &v30;
        *(v24 + 40) = v5;
        OUTLINED_FUNCTION_13_8();
        sub_1E4205F44();

        v28 = OUTLINED_FUNCTION_34();
        MEMORY[0x1E69109E0](v28);
      }

      goto LABEL_20;
    }

    goto LABEL_28;
  }

LABEL_20:
  result = v31;
  v29 = HIBYTE(v32) & 0xF;
  if ((v32 & 0x2000000000000000) == 0)
  {
    v29 = v31 & 0xFFFFFFFFFFFFLL;
  }

  if (!v29)
  {

    return 32;
  }

  return result;
}

void sub_1E38C5048()
{
  OUTLINED_FUNCTION_31_1();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 isPlaybackUIBeingShown];

  if (v2)
  {
    goto LABEL_35;
  }

  OUTLINED_FUNCTION_111();
  v4 = *(v3 + 1496);
  OUTLINED_FUNCTION_65_10();
  v4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32770, &unk_1E42988A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE68, &unk_1E42A8E30);
  if (!swift_dynamicCast())
  {
    v87 = 0;
    memset(v86, 0, sizeof(v86));
    sub_1E325F7FC(v86, &qword_1ECF2CE78, &unk_1E42C61E0);
LABEL_35:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  sub_1E3251BE8(v86, v81);
  sub_1E38C6028(v81, v88);
  v5 = type metadata accessor for LibMPPlayableMediaEntity(0);
  if (!OUTLINED_FUNCTION_42_20(v5))
  {
    sub_1E38C6028(v81, v88);
    v6 = type metadata accessor for LibSidebandPlayableMediaEntity(0);
    if (!OUTLINED_FUNCTION_42_20(v6))
    {
LABEL_34:
      __swift_destroy_boxed_opaque_existential_1(v81);
      goto LABEL_35;
    }
  }

  sub_1E38C6028(v81, v88);
  v7 = type metadata accessor for LibMPMovieMediaEntity(0);
  if (OUTLINED_FUNCTION_42_20(v7))
  {
    OUTLINED_FUNCTION_8();
    v9 = (*(v8 + 1032))();
  }

  else
  {
    sub_1E41A3110();
    v13 = OUTLINED_FUNCTION_148_2();
    v14(v13);

    v15 = sub_1E41FFC94();
    v16 = sub_1E42067D4();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = OUTLINED_FUNCTION_6_21();
      v80 = OUTLINED_FUNCTION_100();
      *&v86[0] = v80;
      *v17 = 136315138;
      OUTLINED_FUNCTION_65_10();
      v4();
      v19 = v89;
      v18 = v90;
      __swift_project_boxed_opaque_existential_1(v88, v89);
      OUTLINED_FUNCTION_10_23();
      sub_1E4207944();
      OUTLINED_FUNCTION_108_3();
      __swift_destroy_boxed_opaque_existential_1(v88);
      sub_1E3270FC8(v18, v19, v86);
      OUTLINED_FUNCTION_10_23();

      *(v17 + 4) = v18;
      OUTLINED_FUNCTION_6_13(&dword_1E323F000, v20, v21, "Not handle playback event for this entity %s");
      __swift_destroy_boxed_opaque_existential_1(v80);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_55();
    }

    v22 = OUTLINED_FUNCTION_74();
    v10 = v23(v22);
    v9 = 0;
  }

  v24 = OUTLINED_FUNCTION_157_2(v10, v11, v12);
  v27 = v24;
  if ((v24 & 1) == 0 || (OUTLINED_FUNCTION_157_2(v24, v25, v26) & 1) == 0)
  {
LABEL_30:
    if (v9)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  OUTLINED_FUNCTION_111();
  (*(v28 + 1496))(v86);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32770, &unk_1E42988A0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE58, &unk_1E42A8830);
  if ((OUTLINED_FUNCTION_90_0(v84, v86, v30, v29) & 1) == 0)
  {
    v85 = 0;
    memset(v84, 0, sizeof(v84));
    sub_1E325F7FC(v84, &qword_1ECF2CE70, qword_1E42A8850);
    goto LABEL_30;
  }

  v78 = v27;
  sub_1E3251BE8(v84, v88);
  OUTLINED_FUNCTION_111();
  v31 += 60;
  v77 = *v31;
  v32 = (*v31)(v86);
  v34 = *v33;
  if (!*v33)
  {
    v32(v86, 0);
    goto LABEL_45;
  }

  v79 = v33;
  v76 = v9;
  v35 = sub_1E32AE9B0(v34);
  v36 = 0;
  v37 = &qword_1F5D5CE68;
  while (1)
  {
    if (v35 == v36)
    {
      v49 = OUTLINED_FUNCTION_95_4();
      v36 = sub_1E32AE9B0(v49);
      goto LABEL_43;
    }

    if ((v34 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1E6911E60](v36, v34);
    }

    else
    {
      if (v36 >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_95;
      }
    }

    OUTLINED_FUNCTION_126();
    sub_1E3742F1C(v38, v39, v40);
    sub_1E4206254();
    sub_1E4206254();
    if (*&v84[0] == v82 && *(&v84[0] + 1) == v83)
    {
      break;
    }

    OUTLINED_FUNCTION_149_1();
    v42 = sub_1E42079A4();

    if (v42)
    {
      goto LABEL_41;
    }

    v43 = __OFADD__(v36++, 1);
    if (v43)
    {
      goto LABEL_96;
    }
  }

LABEL_41:
  if (__OFADD__(v36, 1))
  {
    goto LABEL_109;
  }

  v50 = OUTLINED_FUNCTION_95_4();
  if (v36 + 1 == sub_1E32AE9B0(v50))
  {
LABEL_43:
    v51 = sub_1E32AE9B0(*v37);
    if (v51 < v36)
    {
      goto LABEL_108;
    }

    sub_1E3882AB0(v36, v51);
    OUTLINED_FUNCTION_132_2();
    v53(v52);
    v9 = v76;
LABEL_45:
    sub_1E38C130C();
    if (v54)
    {
      v56 = v77(v86);
      if (*v55)
      {
        v57 = v55;

        MEMORY[0x1E6910BF0](v58);
        sub_1E38C5A18(*((*v57 & 0xFFFFFFFFFFFFFF8) + 0x10));
        OUTLINED_FUNCTION_74();
        sub_1E4206324();
      }

      v56(v86, 0);
    }

    __swift_destroy_boxed_opaque_existential_1(v88);
    v27 = v78;
    if (v9)
    {
      goto LABEL_32;
    }

LABEL_31:
    sub_1E38C33B0();
    if ((v44 & 1) == 0)
    {
      if ((v27 & 1) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_33;
    }

LABEL_32:
    sub_1E38C3854();
LABEL_33:

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF326C0, &qword_1E429D160);
    OUTLINED_FUNCTION_3_59();
    OUTLINED_FUNCTION_77();
    sub_1E32752B0(v45, v46, v47, v48);
    sub_1E4200624();

    goto LABEL_34;
  }

  v59 = v36 + 5;
  while (1)
  {
    v60 = v59 - 4;
    if ((*v37 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1E6911E60](v59 - 4);
    }

    else
    {
      if ((v60 & 0x8000000000000000) != 0)
      {
        goto LABEL_97;
      }

      if (v60 >= *((*v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_98;
      }
    }

    OUTLINED_FUNCTION_126();
    sub_1E4206254();
    sub_1E4206254();
    if (*&v84[0] == v82 && *(&v84[0] + 1) == v83)
    {

      goto LABEL_84;
    }

    OUTLINED_FUNCTION_149_1();
    v62 = sub_1E42079A4();

    if ((v62 & 1) == 0)
    {
      break;
    }

    v37 = v79;
LABEL_84:
    v72 = v59 - 3;
    if (__OFADD__(v60, 1))
    {
      goto LABEL_99;
    }

    if (*v37 >> 62)
    {
      v73 = OUTLINED_FUNCTION_119_1();
    }

    else
    {
      v73 = *((*v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    ++v59;
    if (v72 == v73)
    {
      goto LABEL_43;
    }
  }

  v37 = v79;
  if (v60 == v36)
  {
    goto LABEL_83;
  }

  v37 = *v79;
  if ((*v79 & 0xC000000000000001) != 0)
  {
    v64 = MEMORY[0x1E6911E60](v36, v37);
    OUTLINED_FUNCTION_142_3();
    v37 = *v74;
  }

  else
  {
    if ((v36 & 0x8000000000000000) != 0)
    {
      goto LABEL_101;
    }

    OUTLINED_FUNCTION_131_4();
    if (v36 >= v63)
    {
      goto LABEL_102;
    }

    v64 = *(v37 + 8 * v36 + 32);
  }

  if ((v37 & 0xC000000000000001) != 0)
  {
    v66 = MEMORY[0x1E6911E60](v59 - 4, v37);
    OUTLINED_FUNCTION_142_3();
    v37 = *v75;
  }

  else
  {
    if ((v60 & 0x8000000000000000) != 0)
    {
      goto LABEL_103;
    }

    OUTLINED_FUNCTION_131_4();
    if (v60 >= v65)
    {
      goto LABEL_105;
    }

    v66 = *(v37 + 8 * v59);
  }

  swift_isUniquelyReferenced_nonNull_bridgeObject();
  OUTLINED_FUNCTION_142_3();
  *v67 = v37;
  if (!v68 || (v37 & 0x8000000000000000) != 0 || (v37 & 0x4000000000000000) != 0)
  {
    v37 = sub_1E37EFA58(v37);
    OUTLINED_FUNCTION_142_3();
    *v70 = v69;
  }

  if ((v36 & 0x8000000000000000) != 0)
  {
    goto LABEL_104;
  }

  if (v36 >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_106;
  }

  *((v37 & 0xFFFFFFFFFFFFFF8) + 8 * v36 + 0x20) = v66;

  v71 = OUTLINED_FUNCTION_95_4();
  if ((v71 & 0x8000000000000000) == 0 && (v71 & 0x4000000000000000) == 0)
  {
    if ((v60 & 0x8000000000000000) != 0)
    {
      goto LABEL_94;
    }

LABEL_81:
    if (v60 >= *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_107;
    }

    *((v71 & 0xFFFFFFFFFFFFFF8) + 8 * v59) = v64;

LABEL_83:
    v43 = __OFADD__(v36++, 1);
    if (v43)
    {
      goto LABEL_100;
    }

    goto LABEL_84;
  }

  v71 = sub_1E37EFA58(v71);
  *v37 = v71;
  if ((v60 & 0x8000000000000000) == 0)
  {
    goto LABEL_81;
  }

LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
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
}

uint64_t sub_1E38C5A18(uint64_t result)
{
  if (result + 1 > *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    return sub_1E42062F4();
  }

  return result;
}

char *sub_1E38C5A44(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E38C5A64(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1E38C5A64(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CEB0, &qword_1E42A8998);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 2);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[2 * v8] <= v12)
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

void sub_1E38C5B64(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_1E327D33C(a2, a3);
  if (__OFADD__(v9[2], (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v12 = v10;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CEE0, &unk_1E42A89D0);
  if ((sub_1E4207644() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_1E327D33C(a2, a3);
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_11:
    sub_1E4207A74();
    __break(1u);
    return;
  }

  v12 = v14;
LABEL_5:
  v16 = *v5;
  if (v13)
  {
    *(v16[7] + v12) = a1 & 1;
  }

  else
  {
    sub_1E38C5DE4(v12, a2, a3, a1 & 1, v16);
  }
}

void sub_1E38C5C90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v11 = *v5;
  v12 = sub_1E327D33C(a3, a4);
  if (__OFADD__(v11[2], (v13 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v14 = v12;
  v15 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A570, &qword_1E429DC30);
  if ((sub_1E4207644() & 1) == 0)
  {
    goto LABEL_5;
  }

  v16 = sub_1E327D33C(a3, a4);
  if ((v15 & 1) != (v17 & 1))
  {
LABEL_13:
    sub_1E4207A74();
    __break(1u);
    return;
  }

  v14 = v16;
LABEL_5:
  v18 = *v6;
  if (v15)
  {
    v19 = (v18[7] + 16 * v14);
    *v19 = a1;
    v19[1] = a2;
  }

  else
  {
    sub_1E377E274(v14, a3, a4, a1, a2, v18);
  }
}

unint64_t sub_1E38C5DE4(unint64_t result, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

double sub_1E38C5E2C()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    v1 = OUTLINED_FUNCTION_34();
    __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
    OUTLINED_FUNCTION_3_59();
    OUTLINED_FUNCTION_55_0();
    sub_1E32752B0(v3, v4, v5, v6);
    OUTLINED_FUNCTION_138_1();
    sub_1E4200624();
  }

  return result;
}

void sub_1E38C5EE4(uint64_t a1)
{
  sub_1E38C734C(319, &qword_1EE289F50, MEMORY[0x1E69E6370], MEMORY[0x1E695C070]);
  if (v1 <= 0x3F)
  {
    sub_1E3273C28(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1E38C6028(uint64_t a1, uint64_t a2)
{
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = *(a1 + 32);
  OUTLINED_FUNCTION_37_1();
  (*v3)(a2);
  return a2;
}

void sub_1E38C6088()
{
  OUTLINED_FUNCTION_93();
  v3 = v2;
  v5 = v4;
  v211 = v6;
  v8 = v7;
  v206 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_0_10();
  v208 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4_6();
  v194 = v11 - v12;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_18_6();
  v193 = v14;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v15);
  v192 = &v186 - v16;
  v207 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v205 = v17;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_4_6();
  v202 = v19 - v20;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v186 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20, &unk_1E42986D0);
  v25 = OUTLINED_FUNCTION_17_2(v24);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_4_6();
  v197 = v26 - v27;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_18_6();
  v196 = v29;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_18_6();
  v195 = v31;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_18_6();
  v204 = v33;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_18_6();
  v203 = v35;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_18_6();
  v201 = v37;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_18_6();
  v200 = v39;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_18_6();
  v199 = v41;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_18_6();
  v198 = v43;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_18_6();
  v210 = v45;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v186 - v47;
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_18_6();
  v209 = v50;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_140_2();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_37_5();
  MEMORY[0x1EEE9AC00](v53);
  v212 = &v186 - v54;
  v222[3] = v5;
  v222[4] = v3;
  __swift_allocate_boxed_opaque_existential_1(v222);
  OUTLINED_FUNCTION_37_1();
  (*(v55 + 16))();
  sub_1E38C6028(v222, v216);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32770, &unk_1E42988A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE68, &unk_1E42A8E30);
  if (swift_dynamicCast())
  {
    sub_1E3251BE8(v214, v219);
    sub_1E38C6028(v219, v216);
    type metadata accessor for LibSidebandPlayableMediaEntity(0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_1E38C4A48();
LABEL_56:
      __swift_destroy_boxed_opaque_existential_1(v219);
      goto LABEL_57;
    }

    v191 = v8;

    v56 = OBJC_IVAR____TtC8VideosUI18LibLockupViewModel_downloadButtonViewModel;
    v57 = *(v211 + OBJC_IVAR____TtC8VideosUI18LibLockupViewModel_downloadButtonViewModel);
    if (v57)
    {
      v58 = [v57 assetController];
      v59 = v206;
      if (v58)
      {
        v60 = [v58 state];
        swift_unknownObjectRelease();
        v61 = [v60 status];

        v62 = *(v211 + v56);
        v189 = v61;
        v188 = 0;
        if (v62)
        {
          LODWORD(v190) = (v61 - 1) < 2;
        }

        else
        {
          LODWORD(v190) = 0;
        }
      }

      else
      {
        OUTLINED_FUNCTION_141_2();
      }
    }

    else
    {
      OUTLINED_FUNCTION_141_2();
      v59 = v206;
    }

    v63 = v220;
    v64 = v221;
    __swift_project_boxed_opaque_existential_1(v219, v220);
    (*(v64 + 96))(v63, v64);
    sub_1E38BBFF0();
    OUTLINED_FUNCTION_52(v1, 1, v59);
    if (v65)
    {
      v66 = 0;
    }

    else
    {
      v66 = sub_1E41FE514();
      (*(v208 + 8))(v1, v59);
    }

    v67 = objc_opt_self();
    v68 = [v67 shouldShowLabelForDownloadExpirationDate_];

    if (v68)
    {
      v69 = v207;
      if (v190)
      {
LABEL_17:
        sub_1E38C4A48();
        v70 = &unk_1ECF28E20;
        v71 = &unk_1E42986D0;
        v72 = v212;
LABEL_55:
        sub_1E325F7FC(v72, v70, v71);
        goto LABEL_56;
      }
    }

    else
    {
      sub_1E329E324(v212, v0);
      OUTLINED_FUNCTION_52(v0, 1, v59);
      if (v65)
      {
        v73 = 0;
      }

      else
      {
        v73 = sub_1E41FE514();
        (*(v208 + 8))(v0, v59);
      }

      v69 = v207;
      v74 = [v67 shouldShowLabelForDownloadExpirationDate_];

      if (v190 & 1 | ((v74 & 1) == 0))
      {
        goto LABEL_17;
      }
    }

    v75 = v69;
    v76 = v211;
    sub_1E38BBFF0();
    __swift_project_boxed_opaque_existential_1(v219, v220);
    v77 = OUTLINED_FUNCTION_75();
    v79 = v78(v77);
    sub_1E38BBFF0();
    v80 = OBJC_IVAR____TtC8VideosUI18LibLockupViewModel__lastKnownDownloadExpirationDate;
    OUTLINED_FUNCTION_11_3(v76 + OBJC_IVAR____TtC8VideosUI18LibLockupViewModel__lastKnownDownloadExpirationDate, v216);
    v81 = v76 + v80;
    v82 = v69;
    sub_1E32ABDC0(v48, v81);
    swift_endAccess();
    v190 = v79;
    if ((v79 & 0x100000000) != 0)
    {
      sub_1E41A3110();
      v83 = v205;
      OUTLINED_FUNCTION_66_4();
      v84(v23);
      sub_1E38C6028(v219, v216);
      v85 = sub_1E41FFC94();
      v86 = sub_1E42067F4();
      if (os_log_type_enabled(v85, v86))
      {
        OUTLINED_FUNCTION_6_21();
        v87 = OUTLINED_FUNCTION_36_6();
        *&v214[0] = v87;
        *v83 = 136315138;
        __swift_project_boxed_opaque_existential_1(v216, v217);
        OUTLINED_FUNCTION_55_12();
        v88 = sub_1E4207944();
        v90 = v89;
        __swift_destroy_boxed_opaque_existential_1(v216);
        sub_1E3270FC8(v88, v90, v214);
        OUTLINED_FUNCTION_55_12();

        *(v83 + 4) = v88;
        _os_log_impl(&dword_1E323F000, v85, v86, "Downloaded movie/episode %s should have adam ID", v83, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v87);
        v82 = v207;
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_65_0();

        (*(v205 + 8))(v23, v82);
      }

      else
      {

        (*(v83 + 8))(v23, v75);
        __swift_destroy_boxed_opaque_existential_1(v216);
      }
    }

    sub_1E38C6028(v219, v214);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE88, &unk_1E42C61F0);
    if (swift_dynamicCast())
    {
      v91 = v218;
      __swift_project_boxed_opaque_existential_1(v216, v217);
      v92 = OUTLINED_FUNCTION_38();
      v93(v92, v91);
      __swift_destroy_boxed_opaque_existential_1(v216);
    }

    else
    {
      v218 = 0;
      OUTLINED_FUNCTION_49_14();
      sub_1E325F7FC(v216, &qword_1ECF2CEA0, &unk_1E42A8980);
      OUTLINED_FUNCTION_32_2();
      __swift_storeEnumTagSinglePayload(v94, v95, v96, v59);
    }

    v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240, &unk_1E4298910);
    inited = swift_initStackObject();
    v186 = xmmword_1E4299720;
    v98 = OUTLINED_FUNCTION_130(inited, xmmword_1E4299720);
    sub_1E3854630(v98);
    inited[2].n128_u64[0] = v99;
    inited[2].n128_u64[1] = v100;
    v101 = MEMORY[0x1E69E6370];
    inited[4].n128_u64[1] = MEMORY[0x1E69E6370];
    inited[3].n128_u8[0] = 1;
    sub_1E3854630(2);
    inited[5].n128_u64[0] = v102;
    inited[5].n128_u64[1] = v103;
    inited[7].n128_u64[1] = v101;
    inited[6].n128_u8[0] = 1;
    v104 = sub_1E4205CB4();
    v105 = v198;
    sub_1E329E324(v209, v198);
    v106 = OUTLINED_FUNCTION_88_3();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v106, v107, v59);
    v109 = MEMORY[0x1E69E63B0];
    if (EnumTagSinglePayload == 1)
    {
      sub_1E325F7FC(v105, &unk_1ECF28E20, &unk_1E42986D0);
    }

    else
    {
      v110 = v208;
      v111 = v192;
      (*(v208 + 32))(v192, v105, v59);
      sub_1E38547CC(0);
      OUTLINED_FUNCTION_143_2();
      sub_1E41FE574();
      v217 = v109;
      v216[0] = v112;
      v113 = OUTLINED_FUNCTION_80_5();
      OUTLINED_FUNCTION_11_42(v113);

      v104 = v213;
      (*(v110 + 8))(v111, v59);
    }

    v114 = v199;
    sub_1E329E324(v210, v199);
    v115 = OUTLINED_FUNCTION_88_3();
    OUTLINED_FUNCTION_52(v115, v116, v59);
    v117 = v59;
    v118 = v202;
    if (v65)
    {
      sub_1E325F7FC(v114, &unk_1ECF28E20, &unk_1E42986D0);
    }

    else
    {
      OUTLINED_FUNCTION_114_3();
      v119();
      sub_1E3854630(1);
      OUTLINED_FUNCTION_143_2();
      sub_1E41FE574();
      v217 = MEMORY[0x1E69E63B0];
      v216[0] = v120;
      v121 = OUTLINED_FUNCTION_80_5();
      OUTLINED_FUNCTION_11_42(v121);

      v104 = v213;
      v122 = OUTLINED_FUNCTION_114_1();
      v123(v122);
    }

    v124 = v200;
    sub_1E329E324(v212, v200);
    v125 = OUTLINED_FUNCTION_88_3();
    OUTLINED_FUNCTION_52(v125, v126, v117);
    if (v65)
    {
      sub_1E325F7FC(v124, &unk_1ECF28E20, &unk_1E42986D0);
    }

    else
    {
      OUTLINED_FUNCTION_114_3();
      v127();
      sub_1E41FE574();
      v129 = v128;
      sub_1E38547CC(1);
      OUTLINED_FUNCTION_143_2();
      v217 = MEMORY[0x1E69E63B0];
      v216[0] = v129;
      v130 = OUTLINED_FUNCTION_80_5();
      OUTLINED_FUNCTION_11_42(v130);

      v104 = v213;
      v131 = OUTLINED_FUNCTION_114_1();
      v132(v131);
    }

    v133 = v204;
    v134 = v82;
    v135 = v189;
    if ((v188 & 1) == 0)
    {
      sub_1E38547CC(2);
      OUTLINED_FUNCTION_143_2();
      v217 = MEMORY[0x1E69E6810];
      v216[0] = v135;
      v136 = OUTLINED_FUNCTION_80_5();
      OUTLINED_FUNCTION_11_42(v136);

      v104 = v213;
    }

    v137 = v205;
    v138 = v201;
    v139 = swift_allocObject();
    OUTLINED_FUNCTION_117(v139, v186);
    v139[2].n128_u64[0] = v140;
    v139[2].n128_u64[1] = v141;
    v139[4].n128_u64[1] = MEMORY[0x1E69E72F0];
    v142 = v190;
    if ((v190 & 0x100000000) != 0)
    {
      v142 = 0;
    }

    v139[3].n128_u32[0] = v142;
    ViewModelKeys.rawValue.getter(11);
    v139[5].n128_u64[0] = v143;
    v139[5].n128_u64[1] = v144;
    v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
    v139[7].n128_u64[1] = v201;
    v139[6].n128_u64[0] = v104;
    v200 = sub_1E4205CB4();
    v145 = sub_1E41A3110();
    (*(v137 + 16))(v118, v145, v82);
    sub_1E329E324(v209, v138);
    sub_1E329E324(v212, v203);
    sub_1E329E324(v210, v133);
    v146 = v211;

    v147 = sub_1E41FFC94();
    v148 = sub_1E4206814();

    if (os_log_type_enabled(v147, v148))
    {
      v149 = v148;
      v150 = swift_slowAlloc();
      *&v214[0] = swift_slowAlloc();
      *v150 = 136315906;
      (*(*v146 + 1496))(v216);
      __swift_project_boxed_opaque_existential_1(v216, v217);
      OUTLINED_FUNCTION_33_24();
      v151 = OUTLINED_FUNCTION_114_1();
      v152(v151);
      OUTLINED_FUNCTION_108_3();
      __swift_destroy_boxed_opaque_existential_1(v216);
      OUTLINED_FUNCTION_78_4();
      OUTLINED_FUNCTION_10_23();

      *(v150 + 4) = v146;
      *(v150 + 12) = 2080;
      v153 = v195;
      sub_1E329E324(v138, v195);
      v154 = OUTLINED_FUNCTION_88_3();
      v155 = v206;
      OUTLINED_FUNCTION_52(v154, v156, v206);
      if (v65)
      {
        sub_1E325F7FC(v153, &unk_1ECF28E20, &unk_1E42986D0);
        OUTLINED_FUNCTION_49_14();
      }

      else
      {
        v217 = v155;
        __swift_allocate_boxed_opaque_existential_1(v216);
        OUTLINED_FUNCTION_114_3();
        v166();
      }

      sub_1E3294FA4(v216);
      OUTLINED_FUNCTION_108_3();
      sub_1E325F7FC(v138, &unk_1ECF28E20, &unk_1E42986D0);
      OUTLINED_FUNCTION_78_4();
      OUTLINED_FUNCTION_10_23();

      *(v150 + 14) = v153;
      *(v150 + 22) = 2080;
      v167 = v196;
      sub_1E329E324(v203, v196);
      v168 = OUTLINED_FUNCTION_88_3();
      OUTLINED_FUNCTION_52(v168, v169, v155);
      if (v65)
      {
        sub_1E325F7FC(v167, &unk_1ECF28E20, &unk_1E42986D0);
        OUTLINED_FUNCTION_49_14();
      }

      else
      {
        v217 = v155;
        __swift_allocate_boxed_opaque_existential_1(v216);
        OUTLINED_FUNCTION_114_3();
        v170();
      }

      sub_1E3294FA4(v216);
      OUTLINED_FUNCTION_108_3();
      sub_1E325F7FC(v203, &unk_1ECF28E20, &unk_1E42986D0);
      OUTLINED_FUNCTION_78_4();
      OUTLINED_FUNCTION_10_23();

      *(v150 + 24) = v167;
      *(v150 + 32) = 2080;
      v171 = v197;
      sub_1E329E324(v204, v197);
      v172 = OUTLINED_FUNCTION_88_3();
      OUTLINED_FUNCTION_52(v172, v173, v155);
      if (v65)
      {
        sub_1E325F7FC(v171, &unk_1ECF28E20, &unk_1E42986D0);
        OUTLINED_FUNCTION_49_14();
      }

      else
      {
        v217 = v155;
        __swift_allocate_boxed_opaque_existential_1(v216);
        OUTLINED_FUNCTION_114_3();
        v174();
      }

      sub_1E3294FA4(v216);
      OUTLINED_FUNCTION_108_3();
      sub_1E325F7FC(v204, &unk_1ECF28E20, &unk_1E42986D0);
      OUTLINED_FUNCTION_78_4();
      OUTLINED_FUNCTION_10_23();

      *(v150 + 34) = v171;
      _os_log_impl(&dword_1E323F000, v147, v149, "LibLockupViewModel:: %s\ndownloadExpirationDate %s\navailabilityEndDate %s\nrentalExpirationDate %s", v150, 0x2Au);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();

      (*(v205 + 8))(v202, v207);
    }

    else
    {

      OUTLINED_FUNCTION_68_3();
      sub_1E325F7FC(v157, v158, v159);
      OUTLINED_FUNCTION_68_3();
      sub_1E325F7FC(v160, v161, v162);
      OUTLINED_FUNCTION_68_3();
      sub_1E325F7FC(v163, v164, v165);
      (*(v137 + 8))(v118, v134);
    }

    type metadata accessor for TextViewModel();
    v217 = v201;
    v216[0] = v200;

    OUTLINED_FUNCTION_21_7();
    sub_1E3C27638(v175, v176, v177, v178, v179);
    OUTLINED_FUNCTION_55_0();
    sub_1E325F7FC(v180, v181, v182);
    OUTLINED_FUNCTION_55_0();
    sub_1E325F7FC(v183, v184, v185);
    OUTLINED_FUNCTION_55_0();
    goto LABEL_55;
  }

  v215 = 0;
  memset(v214, 0, sizeof(v214));
  sub_1E325F7FC(v214, &qword_1ECF2CE78, &unk_1E42C61E0);
LABEL_57:
  __swift_destroy_boxed_opaque_existential_1(v222);
  OUTLINED_FUNCTION_54_0();
}

double sub_1E38C7158()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    OUTLINED_FUNCTION_11_3(Strong + OBJC_IVAR____TtC8VideosUI18LibLockupViewModel_mediaEntity, &v12);
    v2 = OUTLINED_FUNCTION_34();
    __swift_mutable_project_boxed_opaque_existential_1(v2, v3);
    OUTLINED_FUNCTION_90();
    v4();
    swift_endAccess();
    sub_1E38BB0A4();
    sub_1E38C33B0();
    if (v5)
    {
      sub_1E38C3854();

      v6 = OUTLINED_FUNCTION_34();
      __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
      OUTLINED_FUNCTION_3_59();
      OUTLINED_FUNCTION_55_0();
      sub_1E32752B0(v8, v9, v10, v11);
      OUTLINED_FUNCTION_138_1();
      sub_1E4200624();
    }
  }

  return result;
}

uint64_t sub_1E38C7288(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_1E38C72D0()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  [swift_weakLoadStrong() handleIsPlaybackUIBeingShownDidChange];

  return result;
}

void sub_1E38C734C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

BOOL OUTLINED_FUNCTION_62_9(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_80_5()
{
  sub_1E329504C((v1 - 240), (v0 + 368));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_103_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_141_2()
{
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  *(v0 + 36) = 1;
}

void OUTLINED_FUNCTION_152_1(uint64_t a1@<X8>)
{
  v3[9] = v2;
  v3[6] = a1;
  v3[7] = v1;

  ViewModelKeys.rawValue.getter(13);
}

uint64_t OUTLINED_FUNCTION_154_2(uint64_t a1, uint64_t a2)
{

  return sub_1E42062F4();
}

uint64_t OUTLINED_FUNCTION_155_2(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_157_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 328);

  return sub_1E38BBD0C(v5, 10, a3);
}

uint64_t OUTLINED_FUNCTION_158_2()
{
}

uint64_t sub_1E38C75E8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 96))();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_1E38C7694())()
{
  v1 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_18_4(v1);
  *(v0 + 32) = swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_8_15(KeyPath);
  return sub_1E3844B3C;
}

void (*sub_1E38C7724())(uint64_t a1, uint64_t a2)
{
  v2 = __swift_coroFrameAllocStub(0x40uLL);
  *(OUTLINED_FUNCTION_18_4(v2) + 24) = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D8F0, &qword_1E42981C0);
  OUTLINED_FUNCTION_7_12(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = __swift_coroFrameAllocStub(v6);
  v1[7] = __swift_coroFrameAllocStub(v6);
  OUTLINED_FUNCTION_12_15();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0, &unk_1E42BEDC0);
  sub_1E4200644();
  swift_endAccess();
  return sub_1E38C7828;
}

uint64_t sub_1E38C7854@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 144))();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_1E38C7900())()
{
  v1 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_18_4(v1);
  *(v0 + 32) = swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_8_15(KeyPath);
  return sub_1E3846A58;
}

uint64_t sub_1E38C7984(void *a1)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0, &unk_1E42BEDC0);
  sub_1E4200644();
  return swift_endAccess();
}

uint64_t sub_1E38C7A00(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D8F0, &qword_1E42981C0);
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  OUTLINED_FUNCTION_5_7();
  v7 = MEMORY[0x1EEE9AC00](v6);
  (*(v5 + 16))(&v10 - v8, a1, v3, v7);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0, &unk_1E42BEDC0);
  sub_1E4200654();
  swift_endAccess();
  return (*(v5 + 8))(a1, v3);
}

void (*sub_1E38C7B28())(uint64_t a1, uint64_t a2)
{
  v2 = __swift_coroFrameAllocStub(0x40uLL);
  *(OUTLINED_FUNCTION_18_4(v2) + 24) = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D8F0, &qword_1E42981C0);
  OUTLINED_FUNCTION_7_12(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = __swift_coroFrameAllocStub(v6);
  v1[7] = __swift_coroFrameAllocStub(v6);
  OUTLINED_FUNCTION_12_15();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0, &unk_1E42BEDC0);
  sub_1E4200644();
  swift_endAccess();
  return sub_1E38C7C2C;
}

void sub_1E38C7C44(uint64_t a1, char a2, void (*a3)(void *))
{
  v4 = *a1;
  v5 = *(*a1 + 48);
  v6 = *(*a1 + 56);
  if (a2)
  {
    v7 = v4[4];
    v8 = v4[5];
    (*(v8 + 16))(*(*a1 + 48), v6, v7);
    a3(v5);
    (*(v8 + 8))(v6, v7);
  }

  else
  {
    a3(*(*a1 + 56));
  }

  free(v6);
  free(v5);

  free(v4);
}

double sub_1E38C7D0C()
{
  type metadata accessor for MediaShowcasingHeaderViewPresenter(0);
  OUTLINED_FUNCTION_0_66();
  sub_1E38CA6B8(v0, v1, &unk_1E42A8AE8);
  sub_1E4200514();
  sub_1E4200594();

  return result;
}

uint64_t type metadata accessor for MediaShowcasingHeaderViewPresenter(uint64_t a1)
{
  result = qword_1EE2914A0;
  if (!qword_1EE2914A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E38C7DCC()
{
  v1 = OBJC_IVAR____TtC8VideosUI34MediaShowcasingHeaderViewPresenter__isMuteButtonVisible;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0, &unk_1E42BEDC0);
  OUTLINED_FUNCTION_2();
  v4 = *(v3 + 8);
  v4(v0 + v1, v2);
  v4(v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcasingHeaderViewPresenter__isMuted, v2);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v5, v6);
}

uint64_t sub_1E38C7E9C()
{
  v0 = swift_allocObject();
  sub_1E38C7ED4();
  return v0;
}

uint64_t sub_1E38C7ED4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0, &unk_1E42BEDC0);
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v11[-v5];
  v7 = OBJC_IVAR____TtC8VideosUI34MediaShowcasingHeaderViewPresenter__isMuteButtonVisible;
  v11[15] = 0;
  sub_1E4200634();
  v8 = *(v3 + 32);
  v8(v0 + v7, v6, v1);
  v9 = OBJC_IVAR____TtC8VideosUI34MediaShowcasingHeaderViewPresenter__isMuted;
  v11[14] = 0;
  sub_1E4200634();
  v8(v0 + v9, v6, v1);
  return v0;
}

uint64_t sub_1E38C7FF8@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for MediaShowcasingHeaderViewPresenter(0);
  result = sub_1E4200514();
  *a2 = result;
  return result;
}

uint64_t (*sub_1E38C8038@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>))()
{
  if ([objc_opt_self() isPad])
  {
    v14 = &unk_1F5D62390;
  }

  else
  {
    v14 = &unk_1F5D623D0;
  }

  result = sub_1E3AF9FFC(v14);
  *a7 = a1;
  *(a7 + 8) = sub_1E38074D0;
  *(a7 + 16) = a2;
  *(a7 + 24) = 0;
  *(a7 + 32) = a3;
  *(a7 + 40) = a4;
  *(a7 + 48) = a5;
  *(a7 + 56) = a6;
  *(a7 + 64) = result;
  *(a7 + 72) = v17;
  *(a7 + 80) = v16 & 1;
  return result;
}

uint64_t sub_1E38C80FC@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_1E4201B84();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CEF0, &qword_1E42A8A90);
  sub_1E38C81CC();
  sub_1E4203DA4();
  sub_1E4200D94();
  v3 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CEF8, &qword_1E42A8A98) + 36));
  *v3 = v6;
  v3[1] = v7;
  v3[2] = v8;
  v4 = sub_1E4202774();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CF00, &qword_1E42A8AA0);
  *(a2 + *(result + 36)) = v4;
  return result;
}

void sub_1E38C81CC()
{
  OUTLINED_FUNCTION_93();
  v50 = v0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CF80, &qword_1E42A8D00);
  OUTLINED_FUNCTION_17_2(v1);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v45 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CF88, &qword_1E42A8D08);
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_6();
  v49 = v7 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v47 = &v45 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CF68, &qword_1E42A8CE8);
  v12 = OUTLINED_FUNCTION_17_2(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4_6();
  v48 = v13 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v45 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CF90, &qword_1E42A8D10);
  OUTLINED_FUNCTION_17_2(v18);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v45 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CF98, &qword_1E42A8D18);
  v23 = v22 - 8;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_4_6();
  v51 = v24 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v45 - v27;
  sub_1E38C86F8();
  v29 = objc_opt_self();
  v30 = [v29 mainScreen];
  [v30 bounds];

  sub_1E4203DA4();
  sub_1E4200D94();
  sub_1E379D7E4(v21, v28, &qword_1ECF2CF90, &qword_1E42A8D10);
  v31 = &v28[*(v23 + 44)];
  v32 = v53;
  *v31 = v52;
  *(v31 + 1) = v32;
  *(v31 + 2) = v54;
  sub_1E325F6F0(v21, &qword_1ECF2CF90, &qword_1E42A8D10);
  v46 = v17;
  sub_1E38C8C60(v17);
  sub_1E38C92C0();
  v33 = [v29 mainScreen];
  [v33 bounds];

  sub_1E4203DA4();
  sub_1E4200D94();
  v34 = v47;
  sub_1E379D7E4(v4, v47, &qword_1ECF2CF80, &qword_1E42A8D00);
  v35 = (v34 + *(v6 + 44));
  v36 = v56;
  *v35 = v55;
  v35[1] = v36;
  v35[2] = v57;
  sub_1E325F6F0(v4, &qword_1ECF2CF80, &qword_1E42A8D00);
  v37 = v51;
  sub_1E379D7E4(v28, v51, &qword_1ECF2CF98, &qword_1E42A8D18);
  v38 = v48;
  sub_1E379D7E4(v17, v48, &qword_1ECF2CF68, &qword_1E42A8CE8);
  v39 = v49;
  sub_1E379D7E4(v34, v49, &qword_1ECF2CF88, &qword_1E42A8D08);
  v40 = v37;
  v41 = v50;
  sub_1E379D7E4(v40, v50, &qword_1ECF2CF98, &qword_1E42A8D18);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CFA0, &qword_1E42A8D20);
  v43 = v41 + v42[12];
  *v43 = 0;
  *(v43 + 8) = 1;
  sub_1E379D7E4(v38, v41 + v42[16], &qword_1ECF2CF68, &qword_1E42A8CE8);
  v44 = v41 + v42[20];
  *v44 = 0;
  *(v44 + 8) = 1;
  sub_1E379D7E4(v39, v41 + v42[24], &qword_1ECF2CF88, &qword_1E42A8D08);
  sub_1E325F6F0(v34, &qword_1ECF2CF88, &qword_1E42A8D08);
  sub_1E325F6F0(v46, &qword_1ECF2CF68, &qword_1E42A8CE8);
  sub_1E325F6F0(v28, &qword_1ECF2CF98, &qword_1E42A8D18);
  sub_1E325F6F0(v39, &qword_1ECF2CF88, &qword_1E42A8D08);
  sub_1E325F6F0(v38, &qword_1ECF2CF68, &qword_1E42A8CE8);
  sub_1E325F6F0(v51, &qword_1ECF2CF98, &qword_1E42A8D18);
  OUTLINED_FUNCTION_54_0();
}

void sub_1E38C86F8()
{
  OUTLINED_FUNCTION_93();
  v1 = v0;
  v3 = v2;
  v4 = sub_1E4201F64();
  OUTLINED_FUNCTION_0_10();
  v50 = v5;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CFD0, &qword_1E42A8D40);
  OUTLINED_FUNCTION_0_10();
  v51 = v9;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v45 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CFD8, &qword_1E42A8D48);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v45 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CFE0, &unk_1E42A8D50);
  OUTLINED_FUNCTION_0_10();
  v49 = v18;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v19);
  v48 = &v45 - v20;
  OUTLINED_FUNCTION_14_18();
  if ((*(v21 + 392))())
  {
    type metadata accessor for PlaylistLockupLayout();
    v22 = swift_dynamicCastClass();
    if (v22)
    {
      v23 = v22;
      v45 = v13;
      v46 = v3;
      if (sub_1E39DFFC8())
      {
        v24 = 20.0;
      }

      else
      {
        v24 = 16.0;
      }

      v25 = *(v23 + 104);
      v26 = swift_allocObject();
      memcpy((v26 + 16), v1, 0x51uLL);

      sub_1E37FA88C(v1, v58);
      v27 = OUTLINED_FUNCTION_18();
      sub_1E3B1F350(0x6B72616D78, 0xE500000000000000, v25, v27 & 1, sub_1E38CA688, v26, v58, v24);
      v47 = v58[3];
      OUTLINED_FUNCTION_11_43();
      v57 = v58[6];
      v28 = sub_1E4201724();
      v31 = sub_1E38CA3A4(v28, v29, v30);
      v32 = sub_1E38CA6B8(&qword_1ECF2CFE8, MEMORY[0x1E697C658], MEMORY[0x1E697C650]);
      sub_1E4202DF4();
      (*(v50 + 8))(v8, v4);
      sub_1E3782C70(&v59);

      sub_1E38C9868(0x6C65636E6163, 0xE600000000000000);
      v53 = &type metadata for MediaShowcasingMetadataControlButton;
      v54 = v4;
      v55 = v31;
      v56 = v32;
      swift_getOpaqueTypeConformance2();
      v33 = v52;
      sub_1E4202EA4();

      (*(v51 + 8))(v12, v33);
      v34 = [objc_opt_self() sharedInstance];
      if (v34)
      {
        v35 = v34;
        sub_1E3797E30(0xD000000000000022, 0x80000001E4266430, v34);

        sub_1E38CA700();
        v36 = v48;
        sub_1E3E03528();

        sub_1E325F6F0(v16, &qword_1ECF2CFD8, &qword_1E42A8D48);
        (*(v49 + 32))(v46, v36, v17);
        v37 = OUTLINED_FUNCTION_22_1();
        __swift_storeEnumTagSinglePayload(v37, v38, v39, v17);
        OUTLINED_FUNCTION_54_0();
      }

      else
      {
        __break(1u);
      }

      return;
    }
  }

  OUTLINED_FUNCTION_19_32();
  OUTLINED_FUNCTION_54_0();

  __swift_storeEnumTagSinglePayload(v40, v41, v42, v43);
}

uint64_t sub_1E38C8C60@<X0>(uint64_t a1@<X8>)
{
  v68 = a1;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CF08, &qword_1E42A8AA8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v58 - v3;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CF10, &unk_1E42A8AB0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  v66 = &v58 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8, &unk_1E429B6E0);
  OUTLINED_FUNCTION_0_10();
  v62 = v8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v58 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CF18, &qword_1E42A8AC0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_20_1();
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CF20, &qword_1E42A8AC8);
  OUTLINED_FUNCTION_0_10();
  v63 = v14;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v58 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CF28, &qword_1E42A8AD0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v58 - v20;
  OUTLINED_FUNCTION_14_18();
  v23 = (*(v22 + 488))();
  if (v23)
  {
    v25 = sub_1E373E010(17, v23, v24);

    if (v25)
    {
      if (*v25 == _TtC8VideosUI13TextViewModel)
      {
        v28 = sub_1E3C27528(v26, v27);
        if (v28)
        {
          v29 = v28;
          type metadata accessor for TextLayout();
          v30 = swift_dynamicCastClass();
          if (v30)
          {
            v60 = v30;
            v61 = v29;
            v31 = objc_opt_self();
            if (([v31 isPad] & 1) != 0 || objc_msgSend(v31, sel_isPhone))
            {
              OUTLINED_FUNCTION_18();
              sub_1E3F23370();
              v32 = *(*v60 + 152);
              v58 = *v60 + 152;
              v59 = v32;

              v59(v71, v33);

              sub_1E38C98EC(v71);
              (*(v62 + 8))(v11, v7);
              v34 = sub_1E38C9EA8();
              v35 = OUTLINED_FUNCTION_9_46();
              sub_1E40A7FF0(v35, v36, 6, v12, v34);
              sub_1E325F6F0(v1, &qword_1ECF2CF18, &qword_1E42A8AC0);
              v37 = v63;
              v38 = v65;
              (*(v63 + 16))(v66, v17, v65);
              swift_storeEnumTagMultiPayload();
              v69 = v12;
              v70 = v34;
              OUTLINED_FUNCTION_5_27();
              swift_getOpaqueTypeConformance2();
              OUTLINED_FUNCTION_69();
              sub_1E32752B0(v39, v40, v41, v42);
              sub_1E4201F44();

              (*(v37 + 8))(v17, v38);
            }

            else
            {
              *v4 = sub_1E4201B84();
              *(v4 + 1) = 0;
              v4[16] = 1;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CF30, &unk_1E42A8AD8);
              v45 = v60;
              sub_1E38C9B30();
              v46 = *(*v45 + 1560);

              LOBYTE(v45) = v46(v47);

              v48 = sub_1E3A253B8(v45);
              v49 = v66;
              v50 = &v4[*(v67 + 52)];
              *v50 = v48;
              v50[1] = v51;
              sub_1E379D7E4(v4, v49, &qword_1ECF2CF08, &qword_1E42A8AA8);
              swift_storeEnumTagMultiPayload();
              v52 = sub_1E38C9EA8();
              v71[0] = v12;
              v71[1] = v52;
              OUTLINED_FUNCTION_5_27();
              swift_getOpaqueTypeConformance2();
              OUTLINED_FUNCTION_69();
              sub_1E32752B0(v53, &qword_1ECF2CF08, &qword_1E42A8AA8, v54);
              sub_1E4201F44();

              sub_1E325F6F0(v4, &qword_1ECF2CF08, &qword_1E42A8AA8);
            }

            sub_1E32B81A8(v21, v68);
            v55 = OUTLINED_FUNCTION_22_1();
            return __swift_storeEnumTagSinglePayload(v55, v56, v57, v18);
          }
        }
      }
    }
  }

  v43 = v68;

  return __swift_storeEnumTagSinglePayload(v43, 1, 1, v18);
}

void sub_1E38C92C0()
{
  OUTLINED_FUNCTION_93();
  v2 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CFA8, &qword_1E42A8D28);
  OUTLINED_FUNCTION_17_2(v5);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v58 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CFB0, &qword_1E42A8D30);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v67 = &v58 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CFB8, &qword_1E42A8D38);
  OUTLINED_FUNCTION_0_10();
  v14 = v13;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_20_1();
  OUTLINED_FUNCTION_14_18();
  if ((*(v16 + 392))())
  {
    v65 = v14;
    v66 = v9;
    type metadata accessor for PlaylistLockupLayout();
    v17 = swift_dynamicCastClass();
    if (v17)
    {
      v18 = v17;
      v58 = v12;
      v59 = v1;
      v60 = v4;
      v19 = *(v0 + 8);
      v20 = *(v0 + 16);
      v21 = v2[24];
      v22 = type metadata accessor for MediaShowcasingHeaderViewPresenter(0);
      OUTLINED_FUNCTION_0_66();
      sub_1E38CA6B8(v23, v24, &unk_1E42A8AE8);
      v64 = v19;
      v63 = v20;
      v62 = v21;
      v61 = v22;
      sub_1E4200BC4();
      OUTLINED_FUNCTION_30();
      LOBYTE(v19) = (*(v25 + 144))();

      v26 = (v19 & 1) == 0;
      if (v19)
      {
        v27 = 0xD000000000000012;
      }

      else
      {
        v27 = 0xD000000000000013;
      }

      if (v26)
      {
        v28 = "_isMuteButtonVisible";
      }

      else
      {
        v28 = ".UnmuteAcessibility";
      }

      v29 = 16.0;
      if ((sub_1E39DFFC8() & 1) == 0)
      {
        type metadata accessor for LayoutGrid();
        v30 = sub_1E3A256EC();
        if (sub_1E3A24FDC(v30))
        {
          v29 = 12.0;
        }

        else
        {
          v29 = 14.0;
        }
      }

      v31 = *(v18 + 112);
      v32 = swift_allocObject();
      memcpy((v32 + 16), v2, 0x51uLL);

      sub_1E37FA88C(v2, v69);
      v33 = OUTLINED_FUNCTION_18();
      sub_1E3B1F350(v27, v28 | 0x8000000000000000, v31, v33 & 1, sub_1E38CA2DC, v32, v69, v29);
      OUTLINED_FUNCTION_11_43();
      v68 = v69[6];
      v34 = sub_1E38C9868(1702131053, 0xE400000000000000);
      sub_1E38CA3A4(v34, v35, v36);
      sub_1E4202EA4();

      sub_1E3782C70(&v70);

      sub_1E4200BC4();
      OUTLINED_FUNCTION_30();
      v38 = (*(v37 + 96))();

      if (v38)
      {
        v39 = 1.0;
      }

      else
      {
        v39 = 0.0;
      }

      v40 = v8;
      v41 = v67;
      sub_1E38CA3F8(v40, v67);
      *(v41 + *(v66 + 36)) = v39;
      sub_1E4200BC4();
      OUTLINED_FUNCTION_30();
      v43 = (*(v42 + 144))();

      v44 = [objc_opt_self() sharedInstance];
      if (v44)
      {
        v45 = v44;
        if (v43)
        {
          v46 = ".MuteAcessibility";
        }

        else
        {
          v46 = "speaker.wave.3.fill";
        }

        if (v43)
        {
          v47 = 0xD000000000000023;
        }

        else
        {
          v47 = 0xD000000000000021;
        }

        sub_1E3797E30(v47, v46 | 0x8000000000000000, v45);

        sub_1E38CA468();
        v48 = v59;
        sub_1E3E03528();

        sub_1E38CA5B0(v41);
        v49 = v58;
        (*(v65 + 32))(v60, v48, v58);
        v50 = OUTLINED_FUNCTION_22_1();
        __swift_storeEnumTagSinglePayload(v50, v51, v52, v49);
        OUTLINED_FUNCTION_54_0();
      }

      else
      {
        __break(1u);
      }

      return;
    }
  }

  OUTLINED_FUNCTION_19_32();
  OUTLINED_FUNCTION_54_0();

  __swift_storeEnumTagSinglePayload(v53, v54, v55, v56);
}

uint64_t sub_1E38C9868(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1E69109E0](a1, a2);
  type metadata accessor for Accessibility();
  sub_1E40A7DC8();

  return OUTLINED_FUNCTION_32_0();
}

uint64_t sub_1E38C98EC(uint64_t a1)
{
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CF70, &qword_1E42A8CF0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v31 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CC0, &qword_1E4298440);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_20_1();
  if (*(a1 + 32))
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8, &unk_1E429B6E0);
    OUTLINED_FUNCTION_2();
    (*(v11 + 16))(v7, v3, v10);
    swift_storeEnumTagMultiPayload();
    v12 = sub_1E38C9F4C();
    OUTLINED_FUNCTION_6_49(v12);
    OUTLINED_FUNCTION_18_27();
    return sub_1E4201F44();
  }

  else
  {
    v15 = *(a1 + 16);
    v14 = *(a1 + 24);
    v17 = *a1;
    v16 = *(a1 + 8);
    v18 = sub_1E4202724();
    sub_1E3952BE0(v17, v16, v15, v14);
    sub_1E4200A54();
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8, &unk_1E429B6E0);
    OUTLINED_FUNCTION_2();
    (*(v28 + 16))(v2, v3, v27);
    v29 = v2 + *(v8 + 36);
    *v29 = v18;
    *(v29 + 8) = v20;
    *(v29 + 16) = v22;
    *(v29 + 24) = v24;
    *(v29 + 32) = v26;
    *(v29 + 40) = 0;
    sub_1E379D7E4(v2, v7, &qword_1ECF28CC0, &qword_1E4298440);
    swift_storeEnumTagMultiPayload();
    v30 = sub_1E38C9F4C();
    OUTLINED_FUNCTION_6_49(v30);
    OUTLINED_FUNCTION_18_27();
    sub_1E4201F44();
    return sub_1E325F6F0(v2, &qword_1ECF28CC0, &qword_1E4298440);
  }
}

void sub_1E38C9B30()
{
  OUTLINED_FUNCTION_93();
  v42 = v0;
  v39[1] = v1;
  v3 = v2;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8, &unk_1E429B6E0);
  OUTLINED_FUNCTION_0_10();
  v41 = v4;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  v7 = v39 - v6;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CF18, &qword_1E42A8AC0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v39 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CF20, &qword_1E42A8AC8);
  OUTLINED_FUNCTION_0_10();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_4_6();
  v17 = (v15 - v16);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v39 - v19;
  type metadata accessor for LayoutGrid();
  v21 = sub_1E3A256EC();
  v22 = sub_1E3A25310(v21);
  if (v22 == 5 || (LOBYTE(v45[0]) = v22, v44 = 3, sub_1E37F9A28(v22, v23, v24), (sub_1E4205E84() & 1) == 0) || (v25 = [objc_opt_self() mainScreen], objc_msgSend(v25, sel_bounds), v27 = v26, v29 = v28, v25, v27 >= v29))
  {
    v31 = 0;
    v30 = 1;
  }

  else
  {
    v30 = 0;
    v31 = 1;
  }

  OUTLINED_FUNCTION_18();
  sub_1E3F23370();
  (*(*v42 + 152))(v45);
  sub_1E38C98EC(v45);
  (*(v41 + 8))(v7, v43);
  sub_1E38C9EA8();
  v32 = OUTLINED_FUNCTION_9_46();
  sub_1E40A7FF0(v32, v33, 6, v40, v34);
  sub_1E325F6F0(v10, &qword_1ECF2CF18, &qword_1E42A8AC0);
  v35 = *(v13 + 16);
  v35(v17, v20, v11);
  *v3 = 0;
  *(v3 + 8) = v31;
  *(v3 + 9) = v30;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CF78, &qword_1E42A8CF8);
  v35((v3 + *(v36 + 48)), v17, v11);
  v37 = v3 + *(v36 + 64);
  *v37 = 0;
  *(v37 + 8) = 1;
  v38 = *(v13 + 8);
  v38(v20, v11);
  v38(v17, v11);
  OUTLINED_FUNCTION_54_0();
}

unint64_t sub_1E38C9EA8()
{
  result = qword_1ECF2CF38;
  if (!qword_1ECF2CF38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2CF18, &qword_1E42A8AC0);
    sub_1E38C9F4C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2CF38);
  }

  return result;
}

unint64_t sub_1E38C9F4C()
{
  result = qword_1EE289C88;
  if (!qword_1EE289C88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF28CC0, &qword_1E4298440);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289C88);
  }

  return result;
}

void sub_1E38CA058(uint64_t a1)
{
  sub_1E32A995C();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1E38CA0F0(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 81))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E38CA130(uint64_t result, int a2, int a3)
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
      *(result + 81) = 1;
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

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E38CA198()
{
  result = qword_1ECF2CF48;
  if (!qword_1ECF2CF48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2CF00, &qword_1E42A8AA0);
    sub_1E38CA224();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2CF48);
  }

  return result;
}

unint64_t sub_1E38CA224()
{
  result = qword_1ECF2CF50;
  if (!qword_1ECF2CF50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2CEF8, &qword_1E42A8A98);
    sub_1E32752B0(&qword_1ECF2CF58, &qword_1ECF2CF60, &qword_1E42A8CE0, MEMORY[0x1E69817F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2CF50);
  }

  return result;
}

void sub_1E38CA2DC()
{
  v1 = *(v0 + 64);
  if (v1)
  {
    type metadata accessor for MediaShowcasingHeaderViewPresenter(0);
    OUTLINED_FUNCTION_0_66();
    sub_1E38CA6B8(v2, v3, &unk_1E42A8AE8);
    sub_1E4200BC4();
    OUTLINED_FUNCTION_30();
    v5 = (*(v4 + 144))();

    v1((v5 & 1) == 0);
  }
}

unint64_t sub_1E38CA3A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE23DF38[0];
  if (!qword_1EE23DF38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE23DF38);
  }

  return result;
}

uint64_t sub_1E38CA3F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CFA8, &qword_1E42A8D28);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E38CA468()
{
  result = qword_1ECF2CFC0;
  if (!qword_1ECF2CFC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2CFB0, &qword_1E42A8D30);
    sub_1E38CA4F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2CFC0);
  }

  return result;
}

unint64_t sub_1E38CA4F4()
{
  result = qword_1ECF2CFC8;
  if (!qword_1ECF2CFC8)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2CFA8, &qword_1E42A8D28);
    sub_1E38CA3A4(v1, v2, v3);
    sub_1E38CA6B8(&qword_1EE288768, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2CFC8);
  }

  return result;
}

uint64_t sub_1E38CA5B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CFB0, &qword_1E42A8D30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm_12()
{

  sub_1E3264CE0(v0[3], v0[4]);
  if (v0[6])
  {
  }

  if (v0[8])
  {
  }

  sub_1E3264CE0(v0[10], v0[11]);

  return swift_deallocObject();
}

uint64_t sub_1E38CA688()
{
  v1 = *(v0 + 48);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t sub_1E38CA6B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1E38CA700()
{
  result = qword_1ECF2CFF0;
  if (!qword_1ECF2CFF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2CFD8, &qword_1E42A8D48);
    v3 = sub_1E4201F64();
    sub_1E38CA3A4(v3, v1, v2);
    sub_1E38CA6B8(&qword_1ECF2CFE8, MEMORY[0x1E697C658], MEMORY[0x1E697C650]);
    swift_getOpaqueTypeConformance2();
    sub_1E38CA6B8(&qword_1EE288768, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2CFF0);
  }

  return result;
}

uint64_t variable initialization expression of ClarityUIRootView._finishedLaunching@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D000, &qword_1E42A8D98);

  return swift_storeEnumTagMultiPayload();
}

uint64_t variable initialization expression of ClarityUIRootView.dataSourceManager(uint64_t a1)
{
  sub_1E3B7B1C8();
}

void sub_1E38CA900()
{
  v4 = *(v1 + *(type metadata accessor for ClarityUIRootView(0) + 24));
  (*(*v4 + 672))();
  OUTLINED_FUNCTION_40_19();
  while (1)
  {
    if (v3 == v2)
    {

      return;
    }

    if (v2 >= *(v0 + 16))
    {
      break;
    }

    sub_1E327F454(v4, v20);
    sub_1E327F454(v20, v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3B640, &qword_1E429E310);
    type metadata accessor for LibLocalSource();
    if (OUTLINED_FUNCTION_47_13(&v19, v5, v6, v7, v8, v9, v10, v11))
    {

      sub_1E3251BE8(v20, v21);
      OUTLINED_FUNCTION_47_13(v20, v12, v13, v14, v15, v16, v17, v18);
      return;
    }

    ++v2;
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    v4 += 40;
  }

  __break(1u);
}

uint64_t sub_1E38CAA6C(uint64_t a1, uint64_t a2)
{
  v13 = a1;
  v2 = OUTLINED_FUNCTION_40_2(a1, a2);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_42_10(v4, v4, v5, v6, v7, v8, v9, v10, v12, v13);
  sub_1E42038E4();
  return v14;
}

uint64_t sub_1E38CAAA4()
{
  v1 = type metadata accessor for ClarityUIRootView(0);
  OUTLINED_FUNCTION_10_40();
  v12 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D018, &qword_1E42A8DB0);
  sub_1E42038F4();
  sub_1E38CAB7C(v10);

  v11 = sub_1E38CF700(v3);
  sub_1E38CE528(&v11);

  v4 = (v0 + *(v1 + 28));
  v6 = *v4;
  v5 = v4[1];
  v11 = v6;
  v12 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D008, &qword_1E42A8DA0);
  return OUTLINED_FUNCTION_37_17(v7, v8);
}

void *sub_1E38CAB7C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_1E37FEA14(*(a1 + 16), 0);
  v4 = sub_1E38D095C(&v6, v3 + 4, v2, a1);
  sub_1E34AF4DC(v6);
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

uint64_t variable initialization expression of ClarityUIRootView._downloadedMedia()
{
  type metadata accessor for LibLockupViewModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CFF8, &qword_1E42A8D60);
  OUTLINED_FUNCTION_0_67();
  sub_1E38D065C(v0, v1, &protocol conformance descriptor for ViewModel);

  return sub_1E4205CB4();
}

void ClarityUIRootView.body.getter()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v37 = v2;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D028, &qword_1E42A8DB8);
  OUTLINED_FUNCTION_0_10();
  v32 = v3;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_44();
  v31 = v5;
  v6 = OUTLINED_FUNCTION_138();
  v7 = type metadata accessor for ClarityUIRootView(v6);
  v8 = OUTLINED_FUNCTION_8_0(v7);
  v36 = v9;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_46_14();
  v35 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D030, &qword_1E42A8DC0) - 8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_44();
  v34 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D008, &qword_1E42A8DA0);
  sub_1E4203914();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CFF8, &qword_1E42A8D60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D038, &qword_1E42A8DC8);
  sub_1E374AD40(&qword_1ECF2D040, &qword_1ECF2CFF8, &qword_1E42A8D60, MEMORY[0x1E69E6318]);
  OUTLINED_FUNCTION_14_11();
  sub_1E374AD40(v14, &qword_1ECF2CFF8, &qword_1E42A8D60, v15);
  sub_1E374AD40(&qword_1ECF2D050, &qword_1ECF2CFF8, &qword_1E42A8D60, MEMORY[0x1E69E6348]);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2D058, &qword_1E42A8DD0);
  sub_1E4201DB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2D060, &qword_1E42A8DD8);
  type metadata accessor for LibLockupViewModel(255);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2D068, &qword_1E42A8DE0);
  OUTLINED_FUNCTION_4_61();
  sub_1E374AD40(v16, &qword_1ECF2D060, &qword_1E42A8DD8, v17);
  OUTLINED_FUNCTION_0_67();
  sub_1E38D065C(v18, v19, &protocol conformance descriptor for ViewModel);
  sub_1E38CE0F4();
  OUTLINED_FUNCTION_14_9();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_12_41();
  swift_getOpaqueTypeConformance2();
  sub_1E42013B4();
  sub_1E38CE244(v0, v35);
  v20 = (*(v36 + 80) + 16) & ~*(v36 + 80);
  v21 = swift_allocObject();
  sub_1E38CE2A8(v35, v21 + v20);
  v22 = (v34 + *(v11 + 44));
  *v22 = sub_1E38CE30C;
  v22[1] = v21;
  v22[2] = 0;
  v22[3] = 0;
  sub_1E38CA900();
  if (v23 && (v24 = v23, v25 = (*((*MEMORY[0x1E69E7D40] & *v23) + 0x278))(), v24, v25))
  {
    v26 = (*(*v25 + 280))();

    v27 = sub_1E3B501F8(v26, MEMORY[0x1E69E6370]);
  }

  else
  {
    sub_1E42005C4();
    sub_1E374AD40(&qword_1EE28A118, &qword_1ECF2D028, &qword_1E42A8DB8, MEMORY[0x1E695C008]);
    v27 = sub_1E42006B4();
    (*(v32 + 8))(v31, v33);
  }

  sub_1E38CE244(v1, v35);
  v28 = swift_allocObject();
  sub_1E38CE2A8(v35, v28 + v20);
  sub_1E32B821C(v34, v37);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D098, &qword_1E42A8DF8);
  *(v37 + *(v29 + 52)) = v27;
  v30 = (v37 + *(v29 + 56));
  *v30 = sub_1E38CE324;
  v30[1] = v28;
  OUTLINED_FUNCTION_25_2();
}

void sub_1E38CB22C()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v66 = v4;
  sub_1E4201D84();
  OUTLINED_FUNCTION_0_10();
  v61 = v6;
  v62 = v5;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_5();
  v63 = v7;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v8);
  v60 = (&v50 - v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D0A0, &unk_1E42A8E00);
  v11 = OUTLINED_FUNCTION_17_2(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2_5();
  v57 = v12;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v13);
  v55 = &v50 - v14;
  OUTLINED_FUNCTION_138();
  sub_1E4201DB4();
  OUTLINED_FUNCTION_0_10();
  v64 = v15;
  v65 = v16;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  v59 = v18 - v17;
  v19 = OUTLINED_FUNCTION_138();
  v20 = type metadata accessor for ClarityUIRootView(v19);
  v21 = OUTLINED_FUNCTION_8_0(v20);
  v23 = v22;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_25_28();
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D060, &qword_1E42A8DD8);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v24);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D058, &qword_1E42A8DD0);
  OUTLINED_FUNCTION_0_10();
  v58 = v25;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_26_2();
  v54 = v1;
  v68 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D0E8, &qword_1E42A8EF0);
  sub_1E38D051C(&qword_1ECF2D0F0, &qword_1ECF2D0E8, &qword_1E42A8EF0, sub_1E38D03C8);
  sub_1E4202AE4();
  v27 = type metadata accessor for LibLockupViewModel(0);
  sub_1E38CE244(v3, v0);
  v28 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v29 = swift_allocObject();
  sub_1E38CE2A8(v0, v29 + v28);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D068, &qword_1E42A8DE0);
  OUTLINED_FUNCTION_4_61();
  v51 = sub_1E374AD40(v30, &qword_1ECF2D060, &qword_1E42A8DD8, v31);
  OUTLINED_FUNCTION_0_67();
  v50 = sub_1E38D065C(v32, v33, &protocol conformance descriptor for ViewModel);
  v49 = sub_1E38CE0F4();
  v53 = v27;
  sub_1E4203284();

  v34 = OUTLINED_FUNCTION_63_0();
  v35(v34);
  v36 = *MEMORY[0x1E697C570];
  v37 = sub_1E4201D94();
  OUTLINED_FUNCTION_2();
  v39 = v55;
  (*(v38 + 104))(v55, v36, v37);
  __swift_storeEnumTagSinglePayload(v39, 0, 1, v37);
  v41 = v60;
  v40 = v61;
  *v60 = 0x3FE5555555555555;
  v42 = v62;
  (*(v40 + 104))(v41, *MEMORY[0x1E697C568], v62);
  v43 = v57;
  sub_1E37E93E8(v39, v57, &qword_1ECF2D0A0, &unk_1E42A8E00);
  v44 = v63;
  (*(v40 + 16))(v63, v41, v42);
  v45 = v59;
  OUTLINED_FUNCTION_35_19(v43, v44);
  (*(v40 + 8))(v41, v42);
  sub_1E325F69C(v39, &qword_1ECF2D0A0);
  v69 = v67;
  v70 = v53;
  v71 = v52;
  v72 = v51;
  v73 = v50;
  v74 = v49;
  OUTLINED_FUNCTION_14_9();
  swift_getOpaqueTypeConformance2();
  v46 = v64;
  sub_1E42035B4();
  (*(v65 + 8))(v45, v46);
  v47 = OUTLINED_FUNCTION_63_0();
  v48(v47);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E38CB860(uint64_t a1)
{
  v3 = type metadata accessor for ClarityUIRootView(0);
  v4 = OUTLINED_FUNCTION_8_0(v3);
  v6 = v5;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_34_23();
  v8 = (a1 + *(v7 + 36));
  v10 = *v8;
  v9 = v8[1];
  v21 = v10;
  v22 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D008, &qword_1E42A8DA0);
  sub_1E42038F4();
  sub_1E38CE244(a1, v1);
  v11 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v12 = swift_allocObject();
  sub_1E38CE2A8(v1, v12 + v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CFF8, &qword_1E42A8D60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D100, &qword_1E42A8EF8);
  OUTLINED_FUNCTION_14_11();
  sub_1E374AD40(v13, &qword_1ECF2CFF8, &qword_1E42A8D60, v14);
  sub_1E38D03C8();
  OUTLINED_FUNCTION_0_67();
  sub_1E38D065C(v15, v16, &protocol conformance descriptor for ViewModel);
  return OUTLINED_FUNCTION_26_24(v20, sub_1E38D08C4, v17, v18, MEMORY[0x1E69E5FE0]);
}

void sub_1E38CBA0C()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v49 = v2;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D120, &qword_1E42A8F08);
  OUTLINED_FUNCTION_0_10();
  v48 = v3;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v47 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D170, &unk_1E42A8F30);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v47 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D110, &qword_1E42A8F00);
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v47 - v14;
  v16 = *v1;
  type metadata accessor for ClarityUIRootView(0);
  OUTLINED_FUNCTION_10_40();
  v51 = v18;
  v52 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D018, &qword_1E42A8DB0);
  sub_1E42038F4();
  sub_1E38CBE58(v16, v54);
  v20 = v19;

  v51 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D158, &qword_1E42A8F28);
  OUTLINED_FUNCTION_0_32();
  sub_1E374AD40(v22, v23, v24, v25);
  v26 = sub_1E4149048(v21);

  if (v26)
  {

    v51 = sub_1E3DC1E34();
    v52 = v27;
    v53 = v28 & 1;
    v29 = sub_1E38D06D4(v51, v27, v28);
    sub_1E38D0728(v29, v30, v31);
    sub_1E4201094();
    (*(v12 + 16))(v9, v15, v10);
    OUTLINED_FUNCTION_24_4();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_13_52();
    sub_1E374AD40(v32, v33, v34, v35);
    sub_1E374AD40(&qword_1ECF2D118, &qword_1ECF2D120, &qword_1E42A8F08, v29);
    sub_1E4201F44();
    (*(v12 + 8))(v15, v10);
  }

  else
  {
    v51 = v16;
    v36 = type metadata accessor for LibLockupViewModel(0);
    sub_1E38D06D4(v36, v37, v38);
    OUTLINED_FUNCTION_0_67();
    sub_1E38D065C(v39, v40, &protocol conformance descriptor for ViewModel);

    sub_1E42010A4();
    v41 = v48;
    v42 = v50;
    (*(v48 + 16))(v9, v6, v50);
    OUTLINED_FUNCTION_24_4();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_13_52();
    sub_1E374AD40(v43, v44, v45, v46);
    sub_1E374AD40(&qword_1ECF2D118, &qword_1ECF2D120, &qword_1E42A8F08, v36);
    sub_1E4201F44();
    (*(v41 + 8))(v6, v42);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E38CBE58(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    sub_1E38CF3EC(a1);
    if (v2)
    {
    }
  }
}

void sub_1E38CBEA8()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_1E4201D84();
  OUTLINED_FUNCTION_0_10();
  v67 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_5();
  v77 = v9;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v61 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D0A0, &unk_1E42A8E00);
  v14 = OUTLINED_FUNCTION_17_2(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2_5();
  v74 = v15;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v16);
  v75 = &v61 - v17;
  OUTLINED_FUNCTION_138();
  v18 = sub_1E4201DB4();
  OUTLINED_FUNCTION_0_10();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5();
  v76 = v23 - v22;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D088, &qword_1E42A8DF0);
  OUTLINED_FUNCTION_0_10();
  v66 = v24;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v61 - v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D080, &qword_1E42A8DE8);
  OUTLINED_FUNCTION_0_10();
  v72 = v29;
  v73 = v28;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_44();
  v70 = v31;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D128, &qword_1E42A8F10);
  OUTLINED_FUNCTION_0_10();
  v69 = v32;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_44();
  v68 = v34;
  v35 = *v3;
  v36 = (v1 + *(type metadata accessor for ClarityUIRootView(0) + 32));
  v38 = *v36;
  v37 = v36[1];
  v80 = v38;
  v81 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D018, &qword_1E42A8DB0);
  sub_1E42038F4();
  sub_1E38CBE58(v35, v79);
  v40 = v39;

  if (!v40)
  {
    goto LABEL_5;
  }

  v41 = sub_1E32AE9B0(v40);
  if (!v41)
  {

LABEL_5:
    v60 = 1;
    v59 = v78;
    goto LABEL_6;
  }

  v61 = &v61;
  MEMORY[0x1EEE9AC00](v41);
  *(&v61 - 2) = v40;
  *(&v61 - 1) = v1;
  v64 = v20;
  v65 = v5;
  v42 = v67;
  v63 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D130, &qword_1E42A8F18);
  v62 = v6;
  sub_1E38D051C(&qword_1ECF2D138, &qword_1ECF2D130, &qword_1E42A8F18, sub_1E38D0594);
  sub_1E4202AE4();

  OUTLINED_FUNCTION_4_61();
  v61 = sub_1E374AD40(v43, v44, v45, v46);
  v48 = v70;
  v47 = v71;
  sub_1E418FB74(v35, v71, v61);
  (*(v66 + 8))(v27, v47);
  v49 = *MEMORY[0x1E697C570];
  v50 = sub_1E4201D94();
  OUTLINED_FUNCTION_2();
  v52 = v75;
  (*(v51 + 104))(v75, v49, v50);
  __swift_storeEnumTagSinglePayload(v52, 0, 1, v50);
  *v12 = 0x3FFC71C71C71C71CLL;
  v53 = v62;
  (*(v42 + 104))(v12, *MEMORY[0x1E697C568], v62);
  v54 = v74;
  sub_1E37E93E8(v52, v74, &qword_1ECF2D0A0, &unk_1E42A8E00);
  v55 = v77;
  (*(v42 + 16))(v77, v12, v53);
  v56 = v76;
  OUTLINED_FUNCTION_35_19(v54, v55);
  (*(v42 + 8))(v12, v53);
  sub_1E325F69C(v52, &qword_1ECF2D0A0);
  v80 = v47;
  v81 = v61;
  swift_getOpaqueTypeConformance2();
  v57 = v73;
  v58 = v63;
  sub_1E42035B4();
  (*(v64 + 8))(v56, v58);
  (*(v72 + 8))(v48, v57);
  v5 = v65;
  v59 = v78;
  (*(v69 + 32))();
  v60 = 0;
LABEL_6:
  __swift_storeEnumTagSinglePayload(v5, v60, 1, v59);
  OUTLINED_FUNCTION_25_2();
}