uint64_t AmbientLightDistributionProvider.__allocating_init()()
{
  v0 = swift_allocObject();
  AmbientLightDistributionProvider.init()();
  return v0;
}

uint64_t AmbientLightDistributionProvider.init()()
{
  v1 = [BiomeLibrary() ContextualUnderstanding];
  swift_unknownObjectRelease();
  v2 = [v1 AmbientLight];
  swift_unknownObjectRelease();
  *(v0 + 16) = v2;
  *(v0 + 24) = 0x404E000000000000;
  return v0;
}

void *sub_1C4579F1C(uint64_t a1, uint64_t a2)
{
  v5 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v6 = sub_1C43FBD18(v5);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v52 - v10;
  v53 = v2;
  v12 = *(v2 + 16);
  v13 = sub_1C4EF9CD8();
  sub_1C43FBCE0();
  v15 = *(v14 + 16);
  v15(v11, a1, v13);
  sub_1C440BAA8(v11, 0, 1, v13);
  v52 = a2;
  v15(v8, a2, v13);
  sub_1C440BAA8(v8, 0, 1, v13);
  v16 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  sub_1C440F1BC();
  v21 = sub_1C457A86C(v17, v18, v19, v20, 0);
  v22 = [v12 publisherWithOptions_];

  v23 = swift_allocObject();
  *(v23 + 16) = sub_1C4F00F28();
  v24 = (v23 + 16);
  v25 = swift_allocObject();
  *(v25 + 16) = 8;
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  *(v26 + 24) = 1;
  v61 = nullsub_1;
  v62 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v58 = 1107296256;
  v59 = sub_1C44405F8;
  v60 = &unk_1F43E0838;
  v27 = _Block_copy(&aBlock);
  v28 = swift_allocObject();
  v28[2] = v25;
  v28[3] = v26;
  v28[4] = v23;
  v61 = sub_1C457A9A8;
  v62 = v28;
  aBlock = MEMORY[0x1E69E9820];
  v58 = 1107296256;
  v59 = sub_1C44405F8;
  v60 = &unk_1F43E0888;
  v29 = _Block_copy(&aBlock);

  v54 = v22;
  v30 = [v22 sinkWithCompletion:v27 receiveInput:v29];
  _Block_release(v29);
  _Block_release(v27);

  sub_1C440F1BC();
  swift_beginAccess();
  v31 = *(v25 + 16);
  if (v31 == 8 || (sub_1C440F1BC(), swift_beginAccess(), (*(v26 + 24) & 1) != 0))
  {
    v32 = 0;
LABEL_11:
    sub_1C440F1BC();
    swift_beginAccess();

    v49 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v50 = sub_1C457DA58(v49);

    sub_1C44239FC(v32, 0);
    return v50;
  }

  v33 = *(v26 + 16);
  v56 = v31;
  v34 = sub_1C4F02858();
  v36 = v35;
  sub_1C4EF9AD8();
  v38 = v37;
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v55 = *v24;
  v39 = v55;
  *v24 = 0x8000000000000000;
  sub_1C440DD80();
  v52 = v34;
  v41 = sub_1C445FAC0(v34, v36, v40);
  if (__OFADD__(*(v39 + 16), (v42 & 1) == 0))
  {
    __break(1u);
  }

  else
  {
    v43 = v41;
    v44 = v42;
    sub_1C456902C(&qword_1EC0B8570, &qword_1C4F0E320);
    if ((sub_1C4F02458() & 1) == 0)
    {
LABEL_8:
      v48 = v55;
      *v24 = v55;
      if ((v44 & 1) == 0)
      {
        sub_1C457DBD8(v43, v52, v36, v48);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      }

      *(*(v48 + 56) + 8 * v43) = v38 - v33 + *(*(v48 + 56) + 8 * v43);
      swift_endAccess();

      v32 = sub_1C457EB40;
      goto LABEL_11;
    }

    sub_1C440DD80();
    v46 = sub_1C445FAC0(v52, v36, v45);
    if ((v44 & 1) == (v47 & 1))
    {
      v43 = v46;
      goto LABEL_8;
    }
  }

  result = sub_1C4F029F8();
  __break(1u);
  return result;
}

void sub_1C457A480(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [a1 eventBody];
  if (v8)
  {
    v9 = v8;
    v10 = sub_1C4585840(v8);
    swift_beginAccess();
    if (*(a2 + 16) == 8 || (swift_beginAccess(), (*(a3 + 24) & 1) != 0))
    {
      v11 = 0;
LABEL_20:
      swift_beginAccess();
      *(a2 + 16) = v10;
      [a1 timestamp];
      v30 = v29;

      swift_beginAccess();
      *(a3 + 16) = v30;
      *(a3 + 24) = 0;
      sub_1C44239FC(v11, 0);
      return;
    }

    v15 = *(a3 + 16);
    v16 = sub_1C4F02858();
    v18 = v17;
    [a1 timestamp];
    v20 = v19;
    swift_beginAccess();
    swift_isUniquelyReferenced_nonNull_native();
    v21 = *(a4 + 16);
    *(a4 + 16) = 0x8000000000000000;
    v31 = v16;
    osloga = v18;
    v22 = sub_1C445FAC0(v16, v18, sub_1C445FB3C);
    if (__OFADD__(*(v21 + 16), (v23 & 1) == 0))
    {
      __break(1u);
    }

    else
    {
      v24 = v22;
      v25 = v23;
      sub_1C456902C(&qword_1EC0B8570, &qword_1C4F0E320);
      if ((sub_1C4F02458() & 1) == 0)
      {
        v26 = osloga;
        goto LABEL_17;
      }

      v26 = osloga;
      v27 = sub_1C445FAC0(v31, osloga, sub_1C445FB3C);
      if ((v25 & 1) == (v28 & 1))
      {
        v24 = v27;
LABEL_17:
        *(a4 + 16) = v21;
        if ((v25 & 1) == 0)
        {
          sub_1C457DBD8(v24, v31, v26, v21);
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        }

        *(*(v21 + 56) + 8 * v24) = v20 - v15 + *(*(v21 + 56) + 8 * v24);
        swift_endAccess();

        v11 = sub_1C457EB40;
        goto LABEL_20;
      }
    }

    sub_1C4F029F8();
    __break(1u);
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v12 = sub_1C4F00978();
    sub_1C442B738(v12, qword_1EDDFECB8);
    oslog = sub_1C4F00968();
    v13 = sub_1C4F01CF8();
    if (os_log_type_enabled(oslog, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1C43F8000, oslog, v13, "Unable to parse eventBody from read event in ambient light distribution provider", v14, 2u);
      MEMORY[0x1C6942830](v14, -1, -1);
    }
  }
}

uint64_t AmbientLightDistributionProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

id sub_1C457A86C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = sub_1C4EF9CD8();
  v13 = 0;
  if (sub_1C44157D4(a1, 1, v12) != 1)
  {
    v13 = sub_1C4EF9BF8();
    (*(*(v12 - 8) + 8))(a1, v12);
  }

  if (sub_1C44157D4(a2, 1, v12) == 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = sub_1C4EF9BF8();
    (*(*(v12 - 8) + 8))(a2, v12);
  }

  v15 = [v6 initWithStartDate:v13 endDate:v14 maxEvents:a3 lastN:a4 reversed:a5 & 1];

  return v15;
}

unint64_t sub_1C457A9B4()
{
  v1 = sub_1C442FAA0();
  v3 = sub_1C4811360(v1, v2);

  return sub_1C457BA94(v0 & 1, v3);
}

unint64_t sub_1C457A9F0()
{
  v1 = sub_1C442FAA0();
  v2 = sub_1C480EF6C(v1);

  return sub_1C457B950(v0 & 1, v2);
}

unint64_t sub_1C457AA2C(uint64_t a1)
{
  v2 = a1;
  v3 = sub_1C480F47C(*(v1 + 40), a1);

  return sub_1C457BBE0(v2, v3);
}

unint64_t sub_1C457AA70(uint64_t a1)
{
  v2 = sub_1C4F02178();

  return sub_1C457BD54(a1, v2);
}

void sub_1C457AAB4()
{
  sub_1C43FFB60();
  sub_1C4EFDAF8();
  v0 = sub_1C4403D08(&qword_1EDDEFFA8, MEMORY[0x1E69A94B0], MEMORY[0x1E69A94B8]);
  v1 = sub_1C4402AB4(v0);
  sub_1C43FCF00(v1, v1, MEMORY[0x1E69A94B0], &qword_1EC0B85A8);
}

void sub_1C457AB64()
{
  sub_1C43FFB60();
  sub_1C4EFEEF8();
  v0 = sub_1C4403D08(&qword_1EDDFCCB8, MEMORY[0x1E69A9748], MEMORY[0x1E69A9758]);
  v1 = sub_1C4402AB4(v0);
  sub_1C43FCF00(v1, v1, MEMORY[0x1E69A9748], &qword_1EDDFCCB0);
}

unint64_t sub_1C457AC14(uint64_t a1)
{
  v1 = a1;
  sub_1C443309C(a1);
  MEMORY[0x1C69417F0](v1);
  v2 = sub_1C4F02B68();

  return sub_1C457BE18(v1, v2);
}

void sub_1C457AC78()
{
  sub_1C43FFB60();
  sub_1C4EFF8A8();
  v0 = sub_1C4403D08(&qword_1EDDFE808, MEMORY[0x1E69A99E8], MEMORY[0x1E69A99F8]);
  v1 = sub_1C4402AB4(v0);
  sub_1C43FCF00(v1, v1, MEMORY[0x1E69A99E8], &unk_1EDDFCC80);
}

void sub_1C457AD28()
{
  sub_1C43FFB60();
  sub_1C4EFDAB8();
  v0 = sub_1C4403D08(&qword_1EDDEFFD0, MEMORY[0x1E69A9478], MEMORY[0x1E69A9488]);
  v1 = sub_1C4402AB4(v0);
  sub_1C43FCF00(v1, v1, MEMORY[0x1E69A9478], &unk_1EDDEFFC0);
}

unint64_t sub_1C457AE04(uint64_t a1)
{
  v1 = a1;
  sub_1C443309C(a1);
  sub_1C4F02B28();
  v2 = sub_1C4F02B68();

  return sub_1C457C268(v1, v2);
}

unint64_t sub_1C457AE68(uint64_t a1)
{
  sub_1C440F19C(a1);
  MEMORY[0x1C69417F0](*v1);
  type metadata accessor for CachedBehaviorDatabaseHistogramManager.BehaviorHistogramCacheKey(0);
  sub_1C4EFDAB8();
  sub_1C4403D08(&qword_1EDDEFFD0, MEMORY[0x1E69A9478], MEMORY[0x1E69A9488]);
  sub_1C4F00FE8();
  sub_1C4F02B68();
  v2 = sub_1C4411720();

  return sub_1C457C2C8(v2, v3);
}

unint64_t sub_1C457AF20(uint64_t a1)
{
  v2 = a1;
  v3 = MEMORY[0x1C69417C0](*(v1 + 40), a1, 2);

  return sub_1C457C268(v2, v3);
}

unint64_t sub_1C457AF68(uint64_t a1)
{
  sub_1C440F19C(a1);
  sub_1C45D5EBC(v10);
  sub_1C4F02B68();
  v1 = sub_1C4411720();

  return sub_1C457C4F8(v1, v2, v3, v4, v5, v6, v7, v8);
}

void sub_1C457AFC0()
{
  sub_1C43FFB60();
  sub_1C4EFEFB8();
  v0 = sub_1C4403D08(&qword_1EDDEFF90, MEMORY[0x1E69A97D0], MEMORY[0x1E69A97D8]);
  v1 = sub_1C4402AB4(v0);
  sub_1C43FCF00(v1, v1, MEMORY[0x1E69A97D0], &qword_1EDDEFF88);
}

void sub_1C457B070()
{
  sub_1C43FFB60();
  sub_1C4EFF428();
  v0 = sub_1C4403D08(&qword_1EDDEFF70, MEMORY[0x1E69A98A0], MEMORY[0x1E69A98A8]);
  v1 = sub_1C4402AB4(v0);
  sub_1C43FCF00(v1, v1, MEMORY[0x1E69A98A0], &unk_1EC0B85A0);
}

void sub_1C457B178(uint64_t a1, uint64_t (*a2)(_BYTE *, uint64_t), uint64_t a3)
{
  sub_1C443309C(a1);
  a2(v5, a1);
  sub_1C4F02B68();
  sub_1C457C5B0();
}

void sub_1C457B1F0()
{
  sub_1C43FFB60();
  sub_1C4EF9DD8();
  v0 = sub_1C4403D08(&qword_1EC0B8590, MEMORY[0x1E6969680], MEMORY[0x1E6969690]);
  v1 = sub_1C4402AB4(v0);
  sub_1C43FCF00(v1, v1, MEMORY[0x1E6969680], &qword_1EC0B8598);
}

void sub_1C457B2A0()
{
  sub_1C43FFB60();
  sub_1C4EFC308();
  v0 = sub_1C4403D08(&qword_1EDDF0010, MEMORY[0x1E69DF568], MEMORY[0x1E69DF570]);
  v1 = sub_1C4402AB4(v0);
  sub_1C43FCF00(v1, v1, MEMORY[0x1E69DF568], &unk_1EC0B8578);
}

unint64_t sub_1C457B350(uint64_t a1)
{
  v2 = sub_1C4F02AE8();

  return sub_1C457C654(a1, v2);
}

unint64_t sub_1C457B394(uint64_t a1)
{
  sub_1C440F19C(a1);
  sub_1C49EFD8C();
  sub_1C4F02B68();
  v1 = sub_1C4411720();

  return sub_1C457C6B4(v1, v2);
}

void sub_1C457B3EC()
{
  sub_1C43FFB60();
  sub_1C4EFD548();
  v0 = sub_1C4403D08(&qword_1EDDFA230, MEMORY[0x1E69A92C8], MEMORY[0x1E69A92D8]);
  v1 = sub_1C4402AB4(v0);
  sub_1C43FCF00(v1, v1, MEMORY[0x1E69A92C8], &qword_1EDDFCCD8);
}

void sub_1C457B49C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C443309C(a1);
  sub_1C4F01298();
  sub_1C4F01298();
  sub_1C4F02B68();
  sub_1C457C7BC();
}

unint64_t sub_1C457B530(uint64_t a1)
{
  sub_1C440F19C(a1);
  sub_1C4F01298();
  sub_1C4F01298();
  sub_1C4F01298();
  sub_1C4F02B68();
  v1 = sub_1C4411720();

  return sub_1C457C898(v1, v2);
}

unint64_t sub_1C457B5F8()
{
  v1 = sub_1C442FAA0();
  v2 = sub_1C480FBA0(v1);

  return sub_1C457CF00(v0 & 1, v2);
}

unint64_t sub_1C457B634(uint64_t a1)
{
  v1 = a1;
  sub_1C443309C(a1);
  sub_1C4F02B38();
  v2 = sub_1C4F02B68();
  return sub_1C457D05C(v1, v2);
}

void sub_1C457B694(uint64_t a1)
{
  sub_1C4F01138();
  sub_1C4F02AF8();
  sub_1C4F01298();
  sub_1C4F02B68();

  sub_1C457D0BC();
}

unint64_t sub_1C457B750(uint64_t a1)
{
  v2 = sub_1C4EFF0C8();
  sub_1C43FCDF8();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  v9 = sub_1C43FBD18(v8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v16 - v10;
  sub_1C4F02AF8();
  sub_1C4403D08(&qword_1EDDFE820, MEMORY[0x1E69A9810], MEMORY[0x1E69A9820]);
  sub_1C4F00FE8();
  v12 = type metadata accessor for EntityEdge(0);
  sub_1C457E858(a1 + *(v12 + 20), v11);
  if (sub_1C44157D4(v11, 1, v2) == 1)
  {
    sub_1C4F02B18();
  }

  else
  {
    (*(v4 + 32))(v7, v11, v2);
    sub_1C4F02B18();
    sub_1C4F00FE8();
    (*(v4 + 8))(v7, v2);
  }

  sub_1C4F02B68();
  v13 = sub_1C4411720();
  return sub_1C457D5B8(v13, v14);
}

unint64_t sub_1C457B950(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0xD000000000000015;
    }

    else
    {
      v6 = 0x7461636964657270;
    }

    if (a1)
    {
      v7 = 0x80000001C4F86600;
    }

    else
    {
      v7 = 0xE900000000000065;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0xD000000000000015 : 0x7461636964657270;
      v9 = *(*(v2 + 48) + v4) ? 0x80000001C4F86600 : 0xE900000000000065;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = sub_1C4F02938();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1C457BA94(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x617247746E657665;
    }

    else
    {
      v6 = 0x7247656C62617473;
    }

    if (a1)
    {
      v7 = 0xEA00000000006870;
    }

    else
    {
      v7 = 0xEB00000000687061;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0x617247746E657665 : 0x7247656C62617473;
      v9 = *(*(v2 + 48) + v4) ? 0xEA00000000006870 : 0xEB00000000687061;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = sub_1C4F02938();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1C457BBE0(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v14 = ~v3;
    while (1)
    {
      v5 = 0xD000000000000014;
      v6 = 0xD000000000000017;
      if (*(*(v2 + 48) + v4) == 1)
      {
        v7 = "motion_state_unknown";
      }

      else
      {
        v6 = 0xD000000000000013;
        v7 = "motion_state_stationary";
      }

      v8 = *(*(v2 + 48) + v4) ? v6 : 0xD000000000000014;
      v9 = *(*(v2 + 48) + v4) ? v7 : "raph";
      if (a1)
      {
        v5 = a1 == 1 ? 0xD000000000000017 : 0xD000000000000013;
        v10 = a1 == 1 ? "motion_state_unknown" : "motion_state_stationary";
      }

      else
      {
        v10 = "raph";
      }

      if (v8 == v5 && (v9 | 0x8000000000000000) == (v10 | 0x8000000000000000))
      {
        break;
      }

      v12 = sub_1C4F02938();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v14;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1C457BD54(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    sub_1C457E7A8(*(v2 + 48) + 40 * i, v8);
    v6 = MEMORY[0x1C6940E70](v8, a1);
    sub_1C457E804(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1C457BE18(unsigned __int8 a1, uint64_t a2)
{
  v3 = a1;
  v4 = ~(-1 << *(v2 + 32));
    ;
  }

  return result;
}

unint64_t sub_1C457BE78(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE900000000000079;
      v8 = 0x6144664F656D6974;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0x6144664F74726170;
          break;
        case 2:
          v8 = 0x6954657372616F63;
          v7 = 0xEF796144664F656DLL;
          break;
        case 3:
          v7 = 0xE90000000000006BLL;
          v8 = 0x656557664F796164;
          break;
        case 4:
          v8 = 0x6557664F74726170;
          v7 = 0xEA00000000006B65;
          break;
        case 5:
          v7 = 0xE300000000000000;
          v8 = 6909804;
          break;
        case 6:
          v8 = 0x636F4C6F7263696DLL;
          v9 = 0x6E6F697461;
          goto LABEL_16;
        case 7:
          v8 = 0x6369666963657073;
          v7 = 0xEF687361486F6547;
          break;
        case 8:
          v8 = 0x6547657372616F63;
          v9 = 0x687361486FLL;
LABEL_16:
          v7 = v9 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
          break;
        case 9:
          v8 = 0x6F6547656772616CLL;
          v7 = 0xEC00000068736148;
          break;
        case 0xA:
          v7 = 0xE400000000000000;
          v8 = 1768319351;
          break;
        case 0xB:
          v7 = 0xE900000000000065;
          v8 = 0x646F4D7375636F66;
          break;
        case 0xC:
          v8 = 0x74536E6F69746F6DLL;
          v7 = 0xEB00000000657461;
          break;
        default:
          break;
      }

      v10 = 0x6144664F656D6974;
      v11 = 0xE900000000000079;
      switch(a1)
      {
        case 1:
          v10 = 0x6144664F74726170;
          break;
        case 2:
          v10 = 0x6954657372616F63;
          v11 = 0xEF796144664F656DLL;
          break;
        case 3:
          v11 = 0xE90000000000006BLL;
          v10 = 0x656557664F796164;
          break;
        case 4:
          v10 = 0x6557664F74726170;
          v11 = 0xEA00000000006B65;
          break;
        case 5:
          v11 = 0xE300000000000000;
          v10 = 6909804;
          break;
        case 6:
          v10 = 0x636F4C6F7263696DLL;
          v12 = 0x6E6F697461;
          goto LABEL_30;
        case 7:
          v10 = 0x6369666963657073;
          v11 = 0xEF687361486F6547;
          break;
        case 8:
          v10 = 0x6547657372616F63;
          v12 = 0x687361486FLL;
LABEL_30:
          v11 = v12 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
          break;
        case 9:
          v10 = 0x6F6547656772616CLL;
          v11 = 0xEC00000068736148;
          break;
        case 10:
          v11 = 0xE400000000000000;
          v10 = 1768319351;
          break;
        case 11:
          v11 = 0xE900000000000065;
          v10 = 0x646F4D7375636F66;
          break;
        case 12:
          v10 = 0x74536E6F69746F6DLL;
          v11 = 0xEB00000000657461;
          break;
        default:
          break;
      }

      if (v8 == v10 && v7 == v11)
      {
        break;
      }

      v14 = sub_1C4F02938();

      if ((v14 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1C457C268(unsigned __int16 a1, uint64_t a2)
{
  v3 = a1;
  v4 = ~(-1 << *(v2 + 32));
    ;
  }

  return result;
}

unint64_t sub_1C457C2C8(unsigned __int8 *a1, uint64_t a2)
{
  v3 = v2;
  v19 = type metadata accessor for CachedBehaviorDatabaseHistogramManager.BehaviorHistogramCacheKey(0);
  MEMORY[0x1EEE9AC00](v19);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v3 + 64;
  v10 = -1 << *(v3 + 32);
  v11 = a2 & ~v10;
  if ((*(v3 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v17 = v3;
    v18 = a1;
    v13 = *a1;
    v14 = *(v6 + 72);
    do
    {
      sub_1C457EA6C(*(v3 + 48) + v14 * v11, v8, type metadata accessor for CachedBehaviorDatabaseHistogramManager.BehaviorHistogramCacheKey);
      if (*v8 == v13)
      {
        sub_1C4EFDAB8();
        sub_1C4403D08(&qword_1EDDEFFB8, MEMORY[0x1E69A9478], MEMORY[0x1E69A9498]);
        sub_1C4F01578();
        v3 = v17;
        sub_1C4F01578();
        sub_1C457EAC8(v8, type metadata accessor for CachedBehaviorDatabaseHistogramManager.BehaviorHistogramCacheKey);
        if (v21 == v20)
        {
          return v11;
        }
      }

      else
      {
        sub_1C457EAC8(v8, type metadata accessor for CachedBehaviorDatabaseHistogramManager.BehaviorHistogramCacheKey);
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

unint64_t sub_1C457C4F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = ~(-1 << *(v8 + 32));
  for (i = a2 & v10; ((1 << i) & *(v8 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v10)
  {
    v12 = (*(v8 + 48) + 48 * i);
    v13 = v12[1];
    v16 = *v12;
    v17[0] = v13;
    *(v17 + 9) = *(v12 + 25);
    sub_1C45D5A9C(&v16, a1, a3, a4, a5, a6, a7, a8, v16, *(&v16 + 1), v13, *(&v17[0] + 1));
    if (v14)
    {
      break;
    }
  }

  return i;
}

void sub_1C457C5B0()
{
  sub_1C43FBD3C();
  v2 = v1;
  v4 = v3;
  sub_1C4408560();
  v6 = ~v5;
  for (i = v7 & ~v5; ((1 << i) & *(v0 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v9 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v10 = v2(v9, v4);

    if (v10)
    {
      break;
    }
  }

  sub_1C43FE9F0();
}

unint64_t sub_1C457C654(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

unint64_t sub_1C457C6B4(uint64_t a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v7 = ~v4;
    v8 = *(a1 + 16);
    v9 = *(v2 + 48);
    v10 = (a1 + 40);
    do
    {
      v11 = *(v9 + 8 * v5);
      if (*(v11 + 16) == v8)
      {
        if (!v8 || v11 == a1)
        {
          return v5;
        }

        v12 = (v11 + 40);
        v13 = v10;
        v14 = v8;
        while (1)
        {
          v15 = *(v12 - 1) == *(v13 - 1) && *v12 == *v13;
          if (!v15 && (sub_1C4F02938() & 1) == 0)
          {
            break;
          }

          v12 += 2;
          v13 += 2;
          if (!--v14)
          {
            return v5;
          }
        }
      }

      v5 = (v5 + 1) & v7;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void sub_1C457C7BC()
{
  sub_1C43FBD3C();
  v4 = v0 + 64;
  sub_1C4408560();
  v8 = v6 & ~v7;
  if ((*(v0 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = v5;
    sub_1C43FBD54();
    v11 = ~v10;
    v12 = *(v0 + 48);
    do
    {
      v13 = (v12 + 32 * v8);
      v14 = v13[2];
      v15 = v13[3];
      v16 = *v13 == v3 && v13[1] == v2;
      if (v16 || (sub_1C4F02938() & 1) != 0)
      {
        v17 = v14 == v1 && v15 == v9;
        if (v17 || (sub_1C4F02938() & 1) != 0)
        {
          break;
        }
      }

      v8 = (v8 + 1) & v11;
    }

    while (((*(v4 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  sub_1C43FE9F0();
}

unint64_t sub_1C457C898(uint64_t *a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v19 = ~v4;
    v7 = *a1;
    v8 = a1[1];
    v9 = *(v2 + 48);
    do
    {
      v10 = (v9 + 48 * v5);
      v11 = v10[2];
      v12 = v10[3];
      v13 = v10[4];
      v14 = v10[5];
      v15 = *v10 == v7 && v10[1] == v8;
      if (v15 || (sub_1C4F02938() & 1) != 0)
      {
        v16 = v11 == a1[2] && v12 == a1[3];
        if (v16 || (sub_1C4F02938() & 1) != 0)
        {
          v17 = v13 == a1[4] && v14 == a1[5];
          if (v17 || (sub_1C4F02938() & 1) != 0)
          {
            break;
          }
        }
      }

      v5 = (v5 + 1) & v19;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1C457C9C4(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE600000000000000;
      v8 = 0x6C6F6F547069;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0xD000000000000018;
          v7 = 0x80000001C4F87960;
          break;
        case 2:
          v8 = 0xD00000000000001DLL;
          v7 = 0x80000001C4F87980;
          break;
        case 3:
          v8 = 0xD00000000000001BLL;
          v7 = 0x80000001C4F879A0;
          break;
        case 4:
          break;
        case 5:
          v7 = 0xE300000000000000;
          v8 = 7368801;
          break;
        default:
          v8 = 0xD000000000000014;
          v7 = 0x80000001C4F87940;
          break;
      }

      v9 = 0xE600000000000000;
      v10 = 0x6C6F6F547069;
      switch(a1)
      {
        case 1:
          v10 = 0xD000000000000018;
          v9 = 0x80000001C4F87960;
          break;
        case 2:
          v10 = 0xD00000000000001DLL;
          v9 = 0x80000001C4F87980;
          break;
        case 3:
          v10 = 0xD00000000000001BLL;
          v9 = 0x80000001C4F879A0;
          break;
        case 4:
          break;
        case 5:
          v9 = 0xE300000000000000;
          v10 = 7368801;
          break;
        default:
          v10 = 0xD000000000000014;
          v9 = 0x80000001C4F87940;
          break;
      }

      if (v8 == v10 && v7 == v9)
      {
        break;
      }

      v12 = sub_1C4F02938();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1C457CBE8(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE400000000000000;
      v8 = 1702259052;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 1701736302;
          break;
        case 2:
          v7 = 0xE500000000000000;
          v8 = 0x796C696164;
          break;
        case 3:
          v8 = 0xD000000000000013;
          v7 = 0x80000001C4F86260;
          break;
        case 4:
          v7 = 0xE600000000000000;
          v9 = 1801807223;
          goto LABEL_10;
        case 5:
          v10 = 0x347972657665;
          goto LABEL_13;
        case 6:
          v10 = 0x327972657665;
LABEL_13:
          v8 = v10 & 0xFFFFFFFFFFFFLL | 0x6F48000000000000;
          v7 = 0xEB00000000737275;
          break;
        case 7:
          v7 = 0xE600000000000000;
          v9 = 1920298856;
LABEL_10:
          v8 = v9 & 0xFFFF0000FFFFFFFFLL | 0x796C00000000;
          break;
        case 8:
          v8 = 0x4D31327972657665;
          v7 = 0xEE00736574756E69;
          break;
        case 9:
          v8 = 0x694D377972657665;
          v7 = 0xED0000736574756ELL;
          break;
        case 0xA:
          v8 = 0xD000000000000013;
          v7 = 0x80000001C4F862C0;
          break;
        default:
          break;
      }

      v11 = 0xE400000000000000;
      v12 = 1702259052;
      switch(a1)
      {
        case 1:
          v12 = 1701736302;
          break;
        case 2:
          v11 = 0xE500000000000000;
          v12 = 0x796C696164;
          break;
        case 3:
          v12 = 0xD000000000000013;
          v11 = 0x80000001C4F86260;
          break;
        case 4:
          v11 = 0xE600000000000000;
          v13 = 1801807223;
          goto LABEL_23;
        case 5:
          v14 = 0x347972657665;
          goto LABEL_26;
        case 6:
          v14 = 0x327972657665;
LABEL_26:
          v12 = v14 & 0xFFFFFFFFFFFFLL | 0x6F48000000000000;
          v11 = 0xEB00000000737275;
          break;
        case 7:
          v11 = 0xE600000000000000;
          v13 = 1920298856;
LABEL_23:
          v12 = v13 & 0xFFFF0000FFFFFFFFLL | 0x796C00000000;
          break;
        case 8:
          v12 = 0x4D31327972657665;
          v11 = 0xEE00736574756E69;
          break;
        case 9:
          v12 = 0x694D377972657665;
          v11 = 0xED0000736574756ELL;
          break;
        case 10:
          v12 = 0xD000000000000013;
          v11 = 0x80000001C4F862C0;
          break;
        default:
          break;
      }

      if (v8 == v12 && v7 == v11)
      {
        break;
      }

      v16 = sub_1C4F02938();

      if ((v16 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1C457CF00(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x4F64657461647075;
    }

    else
    {
      v6 = 0x6E61684377656976;
    }

    if (a1)
    {
      v7 = 0xED00007463656A62;
    }

    else
    {
      v7 = 0xEB00000000646567;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0x4F64657461647075 : 0x6E61684377656976;
      v9 = *(*(v2 + 48) + v4) ? 0xED00007463656A62 : 0xEB00000000646567;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = sub_1C4F02938();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1C457D05C(int a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

void sub_1C457D0BC()
{
  sub_1C43FBD3C();
  sub_1C4408560();
  v2 = ~v1;
  for (i = v3 & ~v1; ((1 << i) & *(v0 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v2)
  {
    v5 = sub_1C4F01138();
    v7 = v6;
    if (v5 == sub_1C4F01138() && v7 == v8)
    {

      break;
    }

    v10 = sub_1C4F02938();

    if (v10)
    {
      break;
    }
  }

  sub_1C43FE9F0();
}

unint64_t sub_1C457D19C(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE800000000000000;
      v8 = 0x6870617267627573;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v9 = 0x7463656A626FLL;
          goto LABEL_12;
        case 2:
          v8 = 0x7463757274736E75;
          v7 = 0xEC00000064657275;
          break;
        case 3:
          v9 = 0x6D6F74737563;
LABEL_12:
          v8 = v9 & 0xFFFFFFFFFFFFLL | 0x6F52000000000000;
          v7 = 0xE900000000000077;
          break;
        case 4:
          v8 = 0x6C616E7265747865;
          break;
        case 5:
          v7 = 0xE700000000000000;
          v8 = 0x65727574616566;
          break;
        case 6:
          v8 = 0x656D655269726973;
          v10 = 0x737265626DLL;
          goto LABEL_17;
        case 7:
          v8 = 0xD00000000000001BLL;
          v7 = 0x80000001C4F85F20;
          break;
        case 8:
          v8 = 0x63537374726F7073;
          v7 = 0xEF73656C75646568;
          break;
        case 9:
          v8 = 0x6264726F74636576;
          break;
        case 0xA:
          v8 = 0xD00000000000001ALL;
          v7 = 0x80000001C4F85F60;
          break;
        case 0xB:
          v8 = 0xD000000000000010;
          v7 = 0x80000001C4F85F80;
          break;
        case 0xC:
          v8 = 0xD000000000000016;
          v7 = 0x80000001C4F85FA0;
          break;
        case 0xD:
          v8 = 0xD000000000000021;
          v7 = 0x80000001C4F85FC0;
          break;
        case 0xE:
          v8 = 0x6154797469746E65;
          v10 = 0x676E696767;
LABEL_17:
          v7 = v10 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
          break;
        default:
          break;
      }

      v11 = 0xE800000000000000;
      v12 = 0x6870617267627573;
      switch(a1)
      {
        case 1:
          v13 = 0x7463656A626FLL;
          goto LABEL_29;
        case 2:
          v12 = 0x7463757274736E75;
          v11 = 0xEC00000064657275;
          break;
        case 3:
          v13 = 0x6D6F74737563;
LABEL_29:
          v12 = v13 & 0xFFFFFFFFFFFFLL | 0x6F52000000000000;
          v11 = 0xE900000000000077;
          break;
        case 4:
          v12 = 0x6C616E7265747865;
          break;
        case 5:
          v11 = 0xE700000000000000;
          v12 = 0x65727574616566;
          break;
        case 6:
          v12 = 0x656D655269726973;
          v14 = 0x737265626DLL;
          goto LABEL_34;
        case 7:
          v12 = 0xD00000000000001BLL;
          v11 = 0x80000001C4F85F20;
          break;
        case 8:
          v12 = 0x63537374726F7073;
          v11 = 0xEF73656C75646568;
          break;
        case 9:
          v12 = 0x6264726F74636576;
          break;
        case 10:
          v12 = 0xD00000000000001ALL;
          v11 = 0x80000001C4F85F60;
          break;
        case 11:
          v12 = 0xD000000000000010;
          v11 = 0x80000001C4F85F80;
          break;
        case 12:
          v12 = 0xD000000000000016;
          v11 = 0x80000001C4F85FA0;
          break;
        case 13:
          v12 = 0xD000000000000021;
          v11 = 0x80000001C4F85FC0;
          break;
        case 14:
          v12 = 0x6154797469746E65;
          v14 = 0x676E696767;
LABEL_34:
          v11 = v14 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
          break;
        default:
          break;
      }

      if (v8 == v12 && v7 == v11)
      {
        break;
      }

      v16 = sub_1C4F02938();

      if ((v16 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1C457D5B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v35 = sub_1C4EFF0C8();
  v6 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v30 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v33 = &v28 - v9;
  v36 = sub_1C456902C(&qword_1EC0B8580, &unk_1C4F0D340);
  MEMORY[0x1EEE9AC00](v36);
  v11 = &v28 - v10;
  v37 = type metadata accessor for EntityEdge(0);
  MEMORY[0x1EEE9AC00](v37);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v2 + 64;
  v16 = -1 << *(v2 + 32);
  v17 = a2 & ~v16;
  if ((*(v2 + 64 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
  {
    v18 = ~v16;
    v28 = (v6 + 32);
    v29 = a1;
    v19 = *(v12 + 72);
    v32 = (v6 + 8);
    v34 = v19;
    do
    {
      sub_1C457EA6C(*(v3 + 48) + v19 * v17, v14, type metadata accessor for EntityEdge);
      if (sub_1C4EFF088())
      {
        v20 = *(v37 + 20);
        v21 = *(v36 + 48);
        sub_1C457E858(&v14[v20], v11);
        sub_1C457E858(a1 + v20, &v11[v21]);
        v22 = v35;
        if (sub_1C44157D4(v11, 1, v35) == 1)
        {
          sub_1C457EAC8(v14, type metadata accessor for EntityEdge);
          if (sub_1C44157D4(&v11[v21], 1, v22) == 1)
          {
            sub_1C4420C3C(v11, &unk_1EC0BA0E0, &qword_1C4F105A0);
            return v17;
          }
        }

        else
        {
          v23 = v33;
          sub_1C457E858(v11, v33);
          if (sub_1C44157D4(&v11[v21], 1, v22) != 1)
          {
            v24 = v30;
            (*v28)(v30, &v11[v21], v22);
            sub_1C4403D08(&qword_1EDDFCC98, MEMORY[0x1E69A9810], MEMORY[0x1E69A9830]);
            v31 = sub_1C4F010B8();
            v25 = *v32;
            v26 = v24;
            a1 = v29;
            (*v32)(v26, v22);
            sub_1C457EAC8(v14, type metadata accessor for EntityEdge);
            v25(v33, v22);
            sub_1C4420C3C(v11, &unk_1EC0BA0E0, &qword_1C4F105A0);
            v19 = v34;
            if (v31)
            {
              return v17;
            }

            goto LABEL_12;
          }

          sub_1C457EAC8(v14, type metadata accessor for EntityEdge);
          (*v32)(v23, v22);
        }

        sub_1C4420C3C(v11, &qword_1EC0B8580, &unk_1C4F0D340);
        v19 = v34;
      }

      else
      {
        sub_1C457EAC8(v14, type metadata accessor for EntityEdge);
      }

LABEL_12:
      v17 = (v17 + 1) & v18;
    }

    while (((*(v15 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) != 0);
  }

  return v17;
}

void *sub_1C457DA58(uint64_t a1)
{
  sub_1C456902C(&qword_1EC0B85B0, &unk_1C4F0D350);
  result = sub_1C4F02538();
  v3 = result;
  v4 = 0;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;
  v9 = result + 8;
  if (v7)
  {
    while (1)
    {
      v10 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_10:
      v13 = v10 | (v4 << 6);
      v14 = (*(a1 + 48) + 16 * v13);
      v15 = *v14;
      result = v14[1];
      v16 = round(*(*(a1 + 56) + 8 * v13) / 60.0 * 100.0) / 100.0;
      *(v9 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v17 = (v3[6] + 16 * v13);
      *v17 = v15;
      v17[1] = result;
      *(v3[7] + 8 * v13) = v16;
      v18 = v3[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        break;
      }

      v3[2] = v20;
      result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if (!v7)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v11 = v4;
    while (1)
    {
      v4 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v4 >= v8)
      {

        return v3;
      }

      v12 = *(a1 + 64 + 8 * v4);
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v7 = (v12 - 1) & v12;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1C457DBD8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1C441F324(a1, a2, a3, a4);
  v6 = (v5[6] + 16 * v4);
  *v6 = v7;
  v6[1] = v8;
  *(v5[7] + 8 * v4) = v9;
  v10 = v5[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    sub_1C4431E88(v5, v12);
  }
}

void sub_1C457DC88(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_1C440647C(a1, a2, a3, a4, a5);
  sub_1C44482AC(v8, (*(v7 + 56) + 32 * v6));
  sub_1C4416CEC();
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v9;
  }
}

void sub_1C457DCCC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_1C440647C(a1, a2, a3, a4, a5);
  sub_1C447D27C(v8, *(v7 + 56) + 8 * v6);
  sub_1C4416CEC();
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v9;
  }
}

uint64_t sub_1C457DD40(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = sub_1C4411708(a1, a7 + 8 * (a1 >> 6));
  *(v8[6] + result) = v9;
  v10 = (v8[7] + 32 * result);
  *v10 = v11;
  v10[1] = v12;
  v10[2] = v13;
  v10[3] = v14;
  v15 = v8[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    v8[2] = v17;
  }

  return result;
}

void sub_1C457DD8C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C4418F8C(a1, a2, a3, a4);
  sub_1C4EFDAB8();
  sub_1C43FCE50();
  v7 = sub_1C440CFF4();
  v8(v7);
  v9 = (*(v4 + 56) + 48 * v6);
  *(v9 + 25) = *(v5 + 25);
  v10 = v5[1];
  *v9 = *v5;
  v9[1] = v10;
  sub_1C4416CEC();
  if (v12)
  {
    __break(1u);
  }

  else
  {
    *(v4 + 16) = v11;
  }
}

void sub_1C457DE2C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1C441F324(a1, a2, a3, a4);
  *(*(v5 + 48) + 2 * v4) = v6;
  sub_1C440572C(v4, v8, v7, v5);
  if (v11)
  {
    __break(1u);
  }

  else
  {
    sub_1C4431E88(v9, v10);
  }
}

void sub_1C457DE68(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_1C440647C(a1, a2, a3, a4, a5);
  *(*(v6 + 56) + 2 * v5) = v7;
  v8 = *(v6 + 16);
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    sub_1C43FEA08(v6, v10);
  }
}

void sub_1C457DE98(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1C441F324(a1, a2, a3, a4);
  v6 = (*(v5 + 48) + 48 * v4);
  v8 = v7[1];
  *v6 = *v7;
  v6[1] = v8;
  *(v6 + 25) = *(v7 + 25);
  sub_1C440572C(v4, v10, v9, v5);
  if (v13)
  {
    __break(1u);
  }

  else
  {
    sub_1C4431E88(v11, v12);
  }
}

void sub_1C457DEE8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1C440647C(a1, a2, a3, a4, a5);
  v9 = *(v8 + 56);
  sub_1C4EFF0C8();
  sub_1C43FCE50();
  (*(v10 + 32))(v9 + *(v10 + 72) * a1, a4);
  sub_1C4416CEC();
  if (v12)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v11;
  }
}

uint64_t sub_1C457DF64(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = sub_1C4411708(a1, a8 + 8 * (a1 >> 6));
  v10 = (v9[6] + 16 * result);
  *v10 = v11;
  v10[1] = v12;
  v13 = (v9[7] + 32 * result);
  *v13 = v14;
  v13[1] = v15;
  v13[2] = v16;
  v13[3] = v17;
  v18 = v9[2];
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    v9[2] = v20;
  }

  return result;
}

uint64_t sub_1C457E010(unint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C4411708(a1, a3 + 8 * (a1 >> 6));
  *(v4[6] + 8 * result) = v5;
  *(v4[7] + 8 * result) = v6;
  v7 = v4[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    v4[2] = v9;
  }

  return result;
}

void sub_1C457E06C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C4418F8C(a1, a2, a3, a4);
  sub_1C4EFF0C8();
  sub_1C43FCE50();
  v7 = sub_1C440CFF4();
  v8(v7);
  v9 = *(v4 + 56);
  v10 = type metadata accessor for EntityMatch(0);
  sub_1C43FBD18(v10);
  sub_1C449AC40(v5, v9 + *(v11 + 72) * v6, type metadata accessor for EntityMatch);
  sub_1C4416CEC();
  if (v13)
  {
    __break(1u);
  }

  else
  {
    *(v4 + 16) = v12;
  }
}

void sub_1C457E12C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1C43FBD54();
  sub_1C4411708(v11, v10 + 8 * (v11 >> 6));
  v13 = *(v12 + 48);
  v14(0);
  sub_1C43FCE50();
  (*(v15 + 32))(v13 + *(v15 + 72) * v7, v6);
  v16 = (*(a5 + 56) + 16 * v7);
  *v16 = v5;
  v16[1] = a4;
  sub_1C4416CEC();
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v17;
  }
}

uint64_t sub_1C457E1E0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = sub_1C4411708(a1, a6 + 8 * (a1 >> 6));
  v8 = (v7[6] + 48 * result);
  v10 = v9[1];
  *v8 = *v9;
  v8[1] = v10;
  *(v8 + 25) = *(v9 + 25);
  v11 = (v7[7] + 24 * result);
  *v11 = v12;
  v11[1] = v13;
  v11[2] = v14;
  v15 = v7[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    v7[2] = v17;
  }

  return result;
}

void sub_1C457E244(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C4418F8C(a1, a2, a3, a4);
  sub_1C4EFEEF8();
  sub_1C43FCE50();
  v7 = sub_1C440CFF4();
  v8(v7);
  sub_1C44482AC(v5, (*(v4 + 56) + 32 * v6));
  sub_1C4416CEC();
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(v4 + 16) = v9;
  }
}

void sub_1C457E2EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void))
{
  sub_1C43FBD54();
  sub_1C441F324(v11, v12, v13, v14);
  v16 = *(v15 + 48);
  v17(0);
  sub_1C43FCE50();
  (*(v18 + 32))(v16 + *(v18 + 72) * v8, v7);
  v19 = *(a4 + 56);
  a6(0);
  sub_1C43FCE50();
  (*(v20 + 32))(v19 + *(v20 + 72) * v8, v6);
  sub_1C4416CEC();
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v21;
  }
}

void sub_1C457E3B0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = sub_1C4411708(a1, a7 + 8 * (a1 >> 6));
  v12 = (*(v11 + 48) + 32 * v10);
  *v12 = v13;
  v12[1] = v14;
  v12[2] = v15;
  v12[3] = v16;
  v17 = *(v11 + 56);
  sub_1C4EFF8A8();
  sub_1C43FCE50();
  (*(v18 + 32))(v17 + *(v18 + 72) * a1, a6);
  sub_1C4416CEC();
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a7 + 16) = v19;
  }
}

uint64_t sub_1C457E444(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = sub_1C4411708(a1, a7 + 8 * (a1 >> 6));
  v9 = (v8[6] + 32 * result);
  *v9 = v10;
  v9[1] = v11;
  v9[2] = v12;
  v9[3] = v13;
  *(v8[7] + 8 * result) = v14;
  v15 = v8[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    v8[2] = v17;
  }

  return result;
}

void sub_1C457E490(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1C441F324(a1, a2, a3, a4);
  v6 = (*(v5 + 48) + 48 * v4);
  v8 = v7[1];
  *v6 = *v7;
  v6[1] = v8;
  v6[2] = v7[2];
  sub_1C440572C(v4, v10, v9, v5);
  if (v13)
  {
    __break(1u);
  }

  else
  {
    sub_1C4431E88(v11, v12);
  }
}

void sub_1C457E4E0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1C441F324(a1, a2, a3, a4);
  *(*(v5 + 48) + v4) = v6;
  sub_1C440572C(v4, v8, v7, v5);
  if (v11)
  {
    __break(1u);
  }

  else
  {
    sub_1C4431E88(v9, v10);
  }
}

void sub_1C457E51C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1C441F324(a1, a2, a3, a4);
  *(*(v5 + 48) + v4) = v6 & 1;
  sub_1C440572C(v4, v8, v7, v5);
  if (v11)
  {
    __break(1u);
  }

  else
  {
    sub_1C4431E88(v9, v10);
  }
}

void sub_1C457E55C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1C441F324(a1, a2, a3, a4);
  *(v5[6] + v4) = v6;
  *(v5[7] + 4 * v4) = v7;
  v8 = v5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    sub_1C4431E88(v5, v10);
  }
}

void sub_1C457E594(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C4418F8C(a1, a2, a3, a4);
  sub_1C4EFF0C8();
  sub_1C43FCE50();
  v5 = sub_1C440CFF4();
  v6(v5);
  sub_1C4412BC4();
  if (v8)
  {
    __break(1u);
  }

  else
  {
    *(v4 + 16) = v7;
  }
}

void sub_1C457E600(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1C441F324(a1, a2, a3, a4);
  *(*(v5 + 48) + 4 * v4) = v6;
  sub_1C440572C(v4, v8, v7, v5);
  if (v11)
  {
    __break(1u);
  }

  else
  {
    sub_1C4431E88(v9, v10);
  }
}

void sub_1C457E63C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1C440647C(a1, a2, a3, a4, a5);
  v9 = *(v8 + 56);
  v10 = sub_1C456902C(&qword_1EC0B8588, &qword_1C4F0E310);
  sub_1C43FBD18(v10);
  sub_1C457E8C8(a4, v9 + *(v11 + 72) * a1);
  sub_1C4416CEC();
  if (v13)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v12;
  }
}

void sub_1C457E6B4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C4418F8C(a1, a2, a3, a4);
  v9 = type metadata accessor for EntityEdge(v8);
  sub_1C43FBD18(v9);
  sub_1C449AC40(v5, v7 + *(v10 + 72) * v6, type metadata accessor for EntityEdge);
  sub_1C4412BC4();
  if (v12)
  {
    __break(1u);
  }

  else
  {
    *(v4 + 16) = v11;
  }
}

void sub_1C457E754(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1C441F324(a1, a2, a3, a4);
  *(*(v6 + 48) + v5) = v7;
  v9(v8, *(v6 + 56) + 40 * v5);
  sub_1C4416CEC();
  if (v11)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v10;
  }
}

uint64_t sub_1C457E858(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C457E8C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0B8588, &qword_1C4F0E310);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1C457E938(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C4418F8C(a1, a2, a3, a4);
  sub_1C4EF98F8();
  sub_1C43FCE50();
  v7 = sub_1C440CFF4();
  v8(v7);
  sub_1C441D670(v5, *(v4 + 56) + 40 * v6);
  sub_1C4416CEC();
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(v4 + 16) = v9;
  }
}

void sub_1C457E9FC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1C4418F8C(a1, a2, a3, a4);
  v6(v5);
  sub_1C43FCE50();
  v7 = sub_1C440CFF4();
  v8(v7);
  sub_1C4412BC4();
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(v4 + 16) = v9;
  }
}

uint64_t sub_1C457EA6C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FCE50();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C457EAC8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C43FBCE0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C457EBC0()
{
  v11 = MEMORY[0x1E69E7CC0];
  sub_1C44CD9C0(0, 3, 0);
  v0 = 0;
  v1 = v11;
  do
  {
    v2 = byte_1F43D1228[v0 + 32];
    if (v2 == 1)
    {
      v3 = 0xD00000000000002DLL;
    }

    else
    {
      v3 = 0xD00000000000002CLL;
    }

    if (v2 == 1)
    {
      v4 = "stribution_in_activity_interval";
    }

    else
    {
      v4 = "stribution_in_prev_30_minutes";
    }

    if (byte_1F43D1228[v0 + 32])
    {
      v5 = v3;
    }

    else
    {
      v5 = 0xD00000000000002FLL;
    }

    if (byte_1F43D1228[v0 + 32])
    {
      v6 = v4;
    }

    else
    {
      v6 = "fiveMinutesInSeconds";
    }

    v12 = v1;
    v8 = *(v1 + 16);
    v7 = *(v1 + 24);
    if (v8 >= v7 >> 1)
    {
      sub_1C44CD9C0(v7 > 1, v8 + 1, 1);
      v1 = v12;
    }

    ++v0;
    *(v1 + 16) = v8 + 1;
    v9 = v1 + 16 * v8;
    *(v9 + 32) = v5;
    *(v9 + 40) = v6 | 0x8000000000000000;
  }

  while (v0 != 3);

  return sub_1C4499940();
}

double sub_1C457ECF0()
{
  type metadata accessor for MotionStateDistributionProvider();
  v0 = swift_allocObject();
  *(v0 + 16) = 0x404E000000000000;
  type metadata accessor for MotionStateActivityIntervalProvider();
  swift_allocObject();
  v1 = MotionStateActivityIntervalProvider.init(motionStateDistributionProvider:)(v0);
  type metadata accessor for AmbientLightDistributionProvider();
  swift_allocObject();
  v2 = AmbientLightDistributionProvider.init()();
  v3 = swift_allocObject();
  result = 1800.0;
  *(v3 + 48) = xmmword_1C4F0D360;
  *(v3 + 32) = v1;
  *(v3 + 40) = v2;
  *(v3 + 16) = sub_1C455B64C;
  *(v3 + 24) = 0;
  return result;
}

uint64_t sub_1C457EDB4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1C4EF9CD8();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = type metadata accessor for ActivityInterval(0);
  v2[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C457EEA4, 0, 0);
}

uint64_t sub_1C457EEA4()
{
  sub_1C43FBCD4();
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_1C457EF40;

  return sub_1C4A3E4A8();
}

uint64_t sub_1C457EF40()
{
  sub_1C43FBCD4();

  return MEMORY[0x1EEE6DFA0](sub_1C457F038, 0, 0);
}

void sub_1C457F038()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  v4 = v0[2];
  v5 = sub_1C4579F1C(v0[8], v0[8] + *(v0[7] + 20));
  sub_1C4EF9BE8();
  v91 = sub_1C4579F1C(v2, v4);
  v7 = *(v1 + 8);
  v6 = v1 + 8;
  v7(v2, v3);
  sub_1C4EF9BE8();
  v90 = sub_1C4579F1C(v2, v4);
  v7(v2, v3);
  sub_1C456902C(&qword_1EC0B85C8, &unk_1C4F0D460);
  v88 = sub_1C4F00F28();
  v8 = sub_1C456902C(&qword_1EC0B85D0, &unk_1C4F6E060);
  v9 = sub_1C4F02538();
  v10 = v9;
  v11 = 0;
  v12 = 1 << *(v5 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v5[8];
  v15 = (v12 + 63) >> 6;
  for (i = v9 + 64; v14; v10[2] = v26)
  {
    sub_1C43FFB74();
LABEL_10:
    v21 = v17 | (v11 << 6);
    sub_1C440A4A0();
    v22 = sub_1C4F019C8();
    *(i + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    v23 = (v10[6] + 16 * v21);
    *v23 = v6;
    v23[1] = v8;
    *(v10[7] + 8 * v21) = v22;
    v24 = v10[2];
    v25 = __OFADD__(v24, 1);
    v26 = v24 + 1;
    if (v25)
    {
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }
  }

  v18 = v11;
  while (1)
  {
    v11 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    if (v11 >= v15)
    {
      break;
    }

    ++v18;
    if (v5[v11 + 8])
    {
      sub_1C43FCF1C();
      v14 = v20 & v19;
      goto LABEL_10;
    }
  }

  swift_isUniquelyReferenced_nonNull_native();
  sub_1C46602EC();
  v27 = sub_1C4F02538();
  v28 = 0;
  sub_1C440DD98();
  v31 = v30 & v29;
  v33 = (v32 + 63) >> 6;
  v35 = v34 + 64;
  if ((v30 & v29) == 0)
  {
LABEL_15:
    v37 = v28;
    while (1)
    {
      v28 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        goto LABEL_47;
      }

      if (v28 >= v33)
      {

        swift_isUniquelyReferenced_nonNull_native();
        sub_1C46602EC();
        v45 = sub_1C4F02538();
        v46 = 0;
        sub_1C440DD98();
        v49 = v48 & v47;
        v51 = (v50 + 63) >> 6;
        v53 = v52 + 64;
        if ((v48 & v47) == 0)
        {
LABEL_25:
          v55 = v46;
          while (1)
          {
            v46 = v55 + 1;
            if (__OFADD__(v55, 1))
            {
              goto LABEL_48;
            }

            if (v46 >= v51)
            {

              swift_isUniquelyReferenced_nonNull_native();
              sub_1C46602EC();
              sub_1C456902C(&qword_1EC0B8488, &unk_1C4F0D470);
              v66 = sub_1C4F02538();
              v67 = 0;
              sub_1C440DD98();
              v70 = v69 & v68;
              v72 = (v71 + 63) >> 6;
              v89 = v73 + 64;
              if ((v69 & v68) == 0)
              {
LABEL_35:
                v75 = v67;
                while (1)
                {
                  v67 = v75 + 1;
                  if (__OFADD__(v75, 1))
                  {
                    goto LABEL_49;
                  }

                  if (v67 >= v72)
                  {
                    sub_1C4573D60(*(v87 + 64));

                    v86 = *(v87 + 8);

                    v86(v66);
                    return;
                  }

                  ++v75;
                  if (*(v88 + 64 + 8 * v67))
                  {
                    sub_1C43FCF1C();
                    v70 = v77 & v76;
                    goto LABEL_40;
                  }
                }
              }

              while (1)
              {
                v74 = __clz(__rbit64(v70));
                v70 &= v70 - 1;
LABEL_40:
                v78 = v74 | (v67 << 6);
                v79 = (*(v88 + 48) + 16 * v78);
                v80 = v79[1];
                v92 = *v79;
                sub_1C4461BB8(0, &qword_1EDDF0540, 0x1E695FE60);
                _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                sub_1C465CD38();
                v82 = sub_1C457F798(v81);

                *(v89 + ((v78 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v78;
                v83 = (v66[6] + 16 * v78);
                *v83 = v92;
                v83[1] = v80;
                *(v66[7] + 8 * v78) = v82;
                v84 = v66[2];
                v25 = __OFADD__(v84, 1);
                v85 = v84 + 1;
                if (v25)
                {
                  goto LABEL_53;
                }

                v66[2] = v85;
                if (!v70)
                {
                  goto LABEL_35;
                }
              }
            }

            ++v55;
            if (v90[v46 + 8])
            {
              sub_1C43FCF1C();
              v49 = v57 & v56;
              goto LABEL_30;
            }
          }
        }

        while (1)
        {
          sub_1C43FFB74();
LABEL_30:
          v58 = v54 | (v46 << 6);
          v59 = (v90[6] + 16 * v58);
          v61 = *v59;
          v60 = v59[1];
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v62 = sub_1C4F019C8();
          *(v53 + ((v58 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v58;
          v63 = (v45[6] + 16 * v58);
          *v63 = v61;
          v63[1] = v60;
          *(v45[7] + 8 * v58) = v62;
          v64 = v45[2];
          v25 = __OFADD__(v64, 1);
          v65 = v64 + 1;
          if (v25)
          {
            goto LABEL_52;
          }

          v45[2] = v65;
          if (!v49)
          {
            goto LABEL_25;
          }
        }
      }

      ++v37;
      if (v91[v28 + 8])
      {
        sub_1C43FCF1C();
        v31 = v39 & v38;
        goto LABEL_20;
      }
    }
  }

  while (1)
  {
    v36 = __clz(__rbit64(v31));
    v31 &= v31 - 1;
LABEL_20:
    v40 = v36 | (v28 << 6);
    sub_1C440A4A0();
    v41 = sub_1C4F019C8();
    *(v35 + ((v40 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v40;
    v42 = (v27[6] + 16 * v40);
    *v42 = v6;
    v42[1] = v8;
    *(v27[7] + 8 * v40) = v41;
    v43 = v27[2];
    v25 = __OFADD__(v43, 1);
    v44 = v43 + 1;
    if (v25)
    {
      break;
    }

    v27[2] = v44;
    if (!v31)
    {
      goto LABEL_15;
    }
  }

LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
}

id sub_1C457F798(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  sub_1C4461BB8(0, &qword_1EDDFE8E0, 0x1E696AD98);
  v1 = sub_1C4F00EC8();

  v6[0] = 0;
  v2 = [swift_getObjCClassFromMetadata() featureValueWithDictionary:v1 error:v6];

  if (v2)
  {
    v3 = v6[0];
  }

  else
  {
    v4 = v6[0];
    sub_1C4EF97A8();

    swift_willThrow();
  }

  return v2;
}

uint64_t sub_1C457F8A0@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v5 = sub_1C457FE00(&qword_1EC0B85D8, &unk_1C4F0D430);
  *a2 = a1;
  a2[1] = v2;
  a2[2] = v5;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C457F90C()
{
  sub_1C43FBCD4();
  v2 = v1;
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_1C457386C;

  return sub_1C457EDB4(v2);
}

id sub_1C457F99C(uint64_t a1, uint64_t a2)
{
  sub_1C4461BB8(0, &qword_1EDDF0540, 0x1E695FE60);
  sub_1C4F00F28();
  v4 = sub_1C44F9274(a1);

  if (!v4)
  {
    v5 = sub_1C457EBC0();
    v6 = sub_1C4499AD0(a1, a2, v5);

    if (v6)
    {
      sub_1C4461BB8(0, &qword_1EDDFE8E0, 0x1E696AD98);
      v7 = sub_1C4F00F28();
      return sub_1C457F798(v7);
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

uint64_t sub_1C457FC04()
{

  return v0;
}

uint64_t sub_1C457FC34()
{
  sub_1C457FC04();

  return swift_deallocClassInstance();
}

uint64_t sub_1C457FC8C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C4573EBC;

  return sub_1C457F90C();
}

uint64_t sub_1C457FD78(uint64_t a1)
{
  result = sub_1C457FE00(&qword_1EC0B85B8, &unk_1C4F0D3E0);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C457FDBC(uint64_t a1)
{
  result = sub_1C457FE00(&qword_1EC0B85C0, &unk_1C4F0D40C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C457FE00(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AmbientLightDistributionSignal();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1C457FE5C()
{
  sub_1C43FE96C();
  sub_1C4402AD0(v2);
  sub_1C456902C(&qword_1EC0B8600, &unk_1C4F0D4E0);
  sub_1C43FBCE0();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBD64();
  sub_1C456902C(&qword_1EC0B8660, &qword_1C4F0D718);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FE94C();
  v5 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v6 = sub_1C43FBD18(v5);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FFBA8();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C441C794();
  sub_1C43FBCE0();
  v9 = *(v8 + 16);
  v10 = sub_1C4410890();
  v9(v10);
  sub_1C4405740();
  sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  v11 = sub_1C43FCF40();
  v9(v11);
  sub_1C442B8CC();
  v12 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v13 = sub_1C4402AE4();
  v14 = sub_1C441D120(v13, sel_publisherWithOptions_);

  v15 = v14;
  v16 = sub_1C456902C(&qword_1EC0B8608, &qword_1C4F3B4B0);
  sub_1C440DDC4(v16);
  if (v0)
  {
  }

  else
  {
    sub_1C43FBDBC();
    v17 = swift_allocObject();
    v18 = sub_1C44258B8(v17);
    type metadata accessor for AlarmEvent(v18);
    sub_1C442C318(&qword_1EDDEFF28, &qword_1EC0B8600, &unk_1C4F0D4E0);
    v19 = v1;

    sub_1C43FFBC4();

    v20 = sub_1C43FCF2C();
    v21(v20);
  }

  sub_1C445E730();
  sub_1C43FBC80();
}

void sub_1C45800B4(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26 = a3;
  v25 = sub_1C456902C(&qword_1EC0B8600, &unk_1C4F0D4E0);
  MEMORY[0x1EEE9AC00](v25);
  v5 = sub_1C456902C(&qword_1EC0B85E0, &qword_1C4F0D4C0);
  v23 = *(v5 - 8);
  v24 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v23 - v6;
  v8 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v23 - v12;
  v14 = sub_1C4EF9CD8();
  v15 = *(*(v14 - 8) + 16);
  v15(v13, a2, v14);
  sub_1C440BAA8(v13, 0, 1, v14);
  v16 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  v15(v10, a2 + *(v16 + 36), v14);
  sub_1C440BAA8(v10, 0, 1, v14);
  v17 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v18 = sub_1C457A86C(v13, v10, 0, 0, 0);
  v19 = [a1 publisherWithOptions_];

  v20 = v19;
  sub_1C456902C(&qword_1EC0B8608, &qword_1C4F3B4B0);
  v21 = v27;
  sub_1C4EFFC38();
  if (v21)
  {
  }

  else
  {
    *(swift_allocObject() + 16) = a1;
    type metadata accessor for AmbientLightEvent(0);
    sub_1C4401CBC(&qword_1EDDEFEC0, &qword_1EC0B8600, &unk_1C4F0D4E0, MEMORY[0x1E69A9B60]);
    v22 = a1;

    sub_1C4F02848();

    (*(v23 + 32))(v26, v7, v24);
  }
}

void sub_1C4580438()
{
  sub_1C43FE96C();
  sub_1C4402AD0(v2);
  sub_1C456902C(&qword_1EC0B8600, &unk_1C4F0D4E0);
  sub_1C43FBCE0();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBD64();
  sub_1C456902C(&qword_1EC0B8670, &qword_1C4F0D758);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FE94C();
  v5 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v6 = sub_1C43FBD18(v5);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FFBA8();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C441C794();
  sub_1C43FBCE0();
  v9 = *(v8 + 16);
  v10 = sub_1C4410890();
  v9(v10);
  sub_1C4405740();
  sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  v11 = sub_1C43FCF40();
  v9(v11);
  sub_1C442B8CC();
  v12 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v13 = sub_1C4402AE4();
  v14 = sub_1C441D120(v13, sel_publisherWithOptions_);

  v15 = v14;
  v16 = sub_1C456902C(&qword_1EC0B8608, &qword_1C4F3B4B0);
  sub_1C440DDC4(v16);
  if (v0)
  {
  }

  else
  {
    sub_1C43FBDBC();
    v17 = swift_allocObject();
    v18 = sub_1C44258B8(v17);
    type metadata accessor for AppIntentEvent(v18);
    sub_1C442C318(&qword_1EC0B8678, &qword_1EC0B8600, &unk_1C4F0D4E0);
    v19 = v1;

    sub_1C43FFBC4();

    v20 = sub_1C43FCF2C();
    v21(v20);
  }

  sub_1C445E730();
  sub_1C43FBC80();
}

void sub_1C4580690()
{
  sub_1C43FE96C();
  sub_1C4402AD0(v2);
  sub_1C456902C(&qword_1EC0B8600, &unk_1C4F0D4E0);
  sub_1C43FBCE0();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBD64();
  sub_1C456902C(&qword_1EC0B8620, &qword_1C4F0D540);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FE94C();
  v5 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v6 = sub_1C43FBD18(v5);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FFBA8();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C441C794();
  sub_1C43FBCE0();
  v9 = *(v8 + 16);
  v10 = sub_1C4410890();
  v9(v10);
  sub_1C4405740();
  sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  v11 = sub_1C43FCF40();
  v9(v11);
  sub_1C442B8CC();
  v12 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v13 = sub_1C4402AE4();
  v14 = sub_1C441D120(v13, sel_publisherWithOptions_);

  v15 = v14;
  v16 = sub_1C456902C(&qword_1EC0B8608, &qword_1C4F3B4B0);
  sub_1C440DDC4(v16);
  if (v0)
  {
  }

  else
  {
    sub_1C43FBDBC();
    v17 = swift_allocObject();
    v18 = sub_1C44258B8(v17);
    type metadata accessor for NowPlayingEvent(v18);
    sub_1C442C318(&qword_1EDDEFEF8, &qword_1EC0B8600, &unk_1C4F0D4E0);
    v19 = v1;

    sub_1C43FFBC4();

    v20 = sub_1C43FCF2C();
    v21(v20);
  }

  sub_1C445E730();
  sub_1C43FBC80();
}

void sub_1C45808E8()
{
  sub_1C43FE96C();
  sub_1C4402AD0(v2);
  sub_1C456902C(&qword_1EC0B8600, &unk_1C4F0D4E0);
  sub_1C43FBCE0();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBD64();
  sub_1C456902C(&qword_1EC0B8638, &qword_1C4F0D570);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FE94C();
  v5 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v6 = sub_1C43FBD18(v5);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FFBA8();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C441C794();
  sub_1C43FBCE0();
  v9 = *(v8 + 16);
  v10 = sub_1C4410890();
  v9(v10);
  sub_1C4405740();
  sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  v11 = sub_1C43FCF40();
  v9(v11);
  sub_1C442B8CC();
  v12 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v13 = sub_1C4402AE4();
  v14 = sub_1C441D120(v13, sel_publisherWithOptions_);

  v15 = v14;
  v16 = sub_1C456902C(&qword_1EC0B8608, &qword_1C4F3B4B0);
  sub_1C440DDC4(v16);
  if (v0)
  {
  }

  else
  {
    sub_1C43FBDBC();
    v17 = swift_allocObject();
    v18 = sub_1C44258B8(v17);
    type metadata accessor for PoiCategoryEvent(v18);
    sub_1C442C318(&qword_1EDDEFEC8, &qword_1EC0B8600, &unk_1C4F0D4E0);
    v19 = v1;

    sub_1C43FFBC4();

    v20 = sub_1C43FCF2C();
    v21(v20);
  }

  sub_1C445E730();
  sub_1C43FBC80();
}

void sub_1C4580B40()
{
  sub_1C43FE96C();
  sub_1C4402AD0(v2);
  sub_1C456902C(&qword_1EC0B8600, &unk_1C4F0D4E0);
  sub_1C43FBCE0();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBD64();
  sub_1C456902C(&qword_1EC0B8680, &qword_1C4F0D778);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FE94C();
  v5 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v6 = sub_1C43FBD18(v5);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FFBA8();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C441C794();
  sub_1C43FBCE0();
  v9 = *(v8 + 16);
  v10 = sub_1C4410890();
  v9(v10);
  sub_1C4405740();
  sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  v11 = sub_1C43FCF40();
  v9(v11);
  sub_1C442B8CC();
  v12 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v13 = sub_1C4402AE4();
  v14 = sub_1C441D120(v13, sel_publisherWithOptions_);

  v15 = v14;
  v16 = sub_1C456902C(&qword_1EC0B8608, &qword_1C4F3B4B0);
  sub_1C440DDC4(v16);
  if (v0)
  {
  }

  else
  {
    sub_1C43FBDBC();
    v17 = swift_allocObject();
    v18 = sub_1C44258B8(v17);
    type metadata accessor for HomeKitEvent(v18);
    sub_1C442C318(&qword_1EC0B8688, &qword_1EC0B8600, &unk_1C4F0D4E0);
    v19 = v1;

    sub_1C43FFBC4();

    v20 = sub_1C43FCF2C();
    v21(v20);
  }

  sub_1C445E730();
  sub_1C43FBC80();
}

void sub_1C4580D98()
{
  sub_1C43FE96C();
  sub_1C4402AD0(v2);
  sub_1C456902C(&qword_1EC0B8600, &unk_1C4F0D4E0);
  sub_1C43FBCE0();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBD64();
  sub_1C456902C(&qword_1EC0B8658, &qword_1C4F0D6F8);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FE94C();
  v5 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v6 = sub_1C43FBD18(v5);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FFBA8();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C441C794();
  sub_1C43FBCE0();
  v9 = *(v8 + 16);
  v10 = sub_1C4410890();
  v9(v10);
  sub_1C4405740();
  sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  v11 = sub_1C43FCF40();
  v9(v11);
  sub_1C442B8CC();
  v12 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v13 = sub_1C4402AE4();
  v14 = sub_1C441D120(v13, sel_publisherWithOptions_);

  v15 = v14;
  v16 = sub_1C456902C(&qword_1EC0B8608, &qword_1C4F3B4B0);
  sub_1C440DDC4(v16);
  if (v0)
  {
  }

  else
  {
    sub_1C43FBDBC();
    v17 = swift_allocObject();
    v18 = sub_1C44258B8(v17);
    type metadata accessor for EnergyModeEvent(v18);
    sub_1C442C318(&qword_1EDDEFF18, &qword_1EC0B8600, &unk_1C4F0D4E0);
    v19 = v1;

    sub_1C43FFBC4();

    v20 = sub_1C43FCF2C();
    v21(v20);
  }

  sub_1C445E730();
  sub_1C43FBC80();
}

void sub_1C4580FF0()
{
  sub_1C43FE96C();
  sub_1C4402AD0(v2);
  sub_1C456902C(&qword_1EC0B8600, &unk_1C4F0D4E0);
  sub_1C43FBCE0();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBD64();
  sub_1C456902C(&qword_1EC0B8610, &qword_1C4F0D520);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FE94C();
  v5 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v6 = sub_1C43FBD18(v5);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FFBA8();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C441C794();
  sub_1C43FBCE0();
  v9 = *(v8 + 16);
  v10 = sub_1C4410890();
  v9(v10);
  sub_1C4405740();
  sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  v11 = sub_1C43FCF40();
  v9(v11);
  sub_1C442B8CC();
  v12 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v13 = sub_1C4402AE4();
  v14 = sub_1C441D120(v13, sel_publisherWithOptions_);

  v15 = v14;
  v16 = sub_1C456902C(&qword_1EC0B8608, &qword_1C4F3B4B0);
  sub_1C440DDC4(v16);
  if (v0)
  {
  }

  else
  {
    sub_1C43FBDBC();
    v17 = swift_allocObject();
    v18 = sub_1C44258B8(v17);
    type metadata accessor for LocationMetadataEvent(v18);
    sub_1C442C318(&qword_1EC0B8618, &qword_1EC0B8600, &unk_1C4F0D4E0);
    v19 = v1;

    sub_1C43FFBC4();

    v20 = sub_1C43FCF2C();
    v21(v20);
  }

  sub_1C445E730();
  sub_1C43FBC80();
}

void sub_1C4581248()
{
  sub_1C43FE96C();
  sub_1C4402AD0(v2);
  sub_1C456902C(&qword_1EC0B8600, &unk_1C4F0D4E0);
  sub_1C43FBCE0();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBD64();
  sub_1C456902C(&qword_1EC0B8668, &qword_1C4F0D738);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FE94C();
  v5 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v6 = sub_1C43FBD18(v5);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FFBA8();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C441C794();
  sub_1C43FBCE0();
  v9 = *(v8 + 16);
  v10 = sub_1C4410890();
  v9(v10);
  sub_1C4405740();
  sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  v11 = sub_1C43FCF40();
  v9(v11);
  sub_1C442B8CC();
  v12 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v13 = sub_1C4402AE4();
  v14 = sub_1C441D120(v13, sel_publisherWithOptions_);

  v15 = v14;
  v16 = sub_1C456902C(&qword_1EC0B8608, &qword_1C4F3B4B0);
  sub_1C440DDC4(v16);
  if (v0)
  {
  }

  else
  {
    sub_1C43FBDBC();
    v17 = swift_allocObject();
    v18 = sub_1C44258B8(v17);
    type metadata accessor for DeviceBacklightEvent(v18);
    sub_1C442C318(&qword_1EDDEFF10, &qword_1EC0B8600, &unk_1C4F0D4E0);
    v19 = v1;

    sub_1C43FFBC4();

    v20 = sub_1C43FCF2C();
    v21(v20);
  }

  sub_1C445E730();
  sub_1C43FBC80();
}

uint64_t sub_1C45814A0(unsigned __int8 a1, double a2, double a3, double a4)
{
  sub_1C456902C(&unk_1EC0C65C0, &qword_1C4F0D1F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D480;
  sub_1C43FBDF0();
  *(v9 + 32) = 0xD00000000000001BLL;
  *(v9 + 40) = v10;
  v11 = objc_opt_self();
  v12 = [v11 featureValueWithDouble_];
  sub_1C43FBDF0();
  *(inited + 48) = v13;
  *(inited + 56) = 0xD00000000000001BLL;
  *(inited + 64) = v14;
  v15 = [v11 featureValueWithDouble_];
  sub_1C43FBDF0();
  *(inited + 72) = v16;
  *(inited + 80) = 0xD00000000000001BLL;
  *(inited + 88) = v17;
  v18 = [v11 featureValueWithDouble_];
  sub_1C43FBDF0();
  *(inited + 96) = v19;
  *(inited + 104) = 0xD000000000000010;
  *(inited + 112) = v20;
  *(inited + 120) = [v11 featureValueWithInt64_];
  sub_1C4577DBC();
  return sub_1C4F00F28();
}

double sub_1C4581638@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + *(a1 + 24);
  result = *(v3 + 16);
  v5 = *(v3 + 24);
  *a2 = *v3;
  *(a2 + 16) = result;
  *(a2 + 24) = v5;
  return result;
}

void sub_1C458165C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [BiomeLibrary() ContextualUnderstanding];
  swift_unknownObjectRelease();
  v5 = [v4 AmbientLight];
  swift_unknownObjectRelease();
  sub_1C45800B4(v5, a1, a2);
}

void sub_1C4581708()
{
  sub_1C43FE96C();
  v3 = v2;
  v5 = v4;
  v6 = sub_1C456902C(&qword_1EC0B85E0, &qword_1C4F0D4C0);
  sub_1C43FCDF8();
  v8 = v7;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v25 - v10;
  v12 = sub_1C456902C(&qword_1EC0B85E8, &qword_1C4F0D4C8);
  sub_1C43FBD18(v12);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FE94C();
  type metadata accessor for AmbientLightSmoothedSequence(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C458165C(v3, v1);
  if (!v0)
  {
    v27 = sub_1C456902C(&qword_1EC0B85F0, &qword_1C4F0D4D0);
    v28 = sub_1C4401CBC(&qword_1EDDDE968, &qword_1EC0B85F8, &qword_1C4F0D4D8, &unk_1C4F50F40);
    sub_1C4585408(&v26);
    (*(v8 + 16))(v11, v1, v6);
    sub_1C4401CBC(&qword_1EDDDB7C0, &qword_1EC0B85E0, &qword_1C4F0D4C0, MEMORY[0x1E69E88C0]);
    sub_1C4F019A8();
    sub_1C4420C3C(v1, &qword_1EC0B85E8, &qword_1C4F0D4C8);
    sub_1C4EF9CD8();
    sub_1C43FCF64();
    sub_1C440BAA8(v17, v18, v19, v20);
    type metadata accessor for AmbientLightEvent(0);
    sub_1C43FCF64();
    sub_1C440BAA8(v21, v22, v23, v24);
    sub_1C441D670(&v26, v16);
    *(v16 + 5) = &unk_1F43D1250;
    *(v16 + 6) = 0;
    sub_1C45849C8(v16, v5, type metadata accessor for AmbientLightSmoothedSequence);
  }

  sub_1C43FBC80();
}

void sub_1C45819E8(uint64_t a1)
{
  v3 = type metadata accessor for AmbientLightEvent(0);
  v4 = (a1 + *(v3 + 24));
  v5 = *v4;
  v6 = *(v1 + 40);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C48347D4();
    v6 = v18;
  }

  v7 = *(v6 + 16);
  if (!v7)
  {
    __break(1u);
    goto LABEL_11;
  }

  *(v6 + 32) = v5 + *(v6 + 32);
  if (v7 == 1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  *(v6 + 40) = v4[1] + *(v6 + 40);
  if (v7 < 3)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  *(v6 + 48) = v4[2] + *(v6 + 48);
  *(v1 + 40) = v6;
  v8 = *(v1 + 48);
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
LABEL_13:
    __break(1u);
    return;
  }

  *(v1 + 48) = v10;
  v11 = *(type metadata accessor for AmbientLightSmoothedSequence(0) + 28);
  sub_1C4420C3C(v1 + v11, &unk_1EC0B84E0, qword_1C4F0D2D0);
  v12 = *(v3 + 20);
  v13 = sub_1C4EF9CD8();
  sub_1C43FBCE0();
  (*(v14 + 16))(v1 + v11, a1 + v12, v13);
  sub_1C43FBD94();

  sub_1C440BAA8(v15, v16, v17, v13);
}

uint64_t sub_1C4581B3C()
{
  sub_1C43FBCD4();
  v1[10] = v2;
  v1[11] = v0;
  v3 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C43FBD18(v3);
  v1[12] = swift_task_alloc();
  v4 = sub_1C4EF9CD8();
  v1[13] = v4;
  sub_1C43FCF7C(v4);
  v1[14] = v5;
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v6 = sub_1C456902C(&qword_1EC0B8640, &qword_1C4F0D5D8);
  sub_1C43FBD18(v6);
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v7 = type metadata accessor for AmbientLightEvent(0);
  v1[21] = v7;
  sub_1C43FBD18(v7);
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4581CD8, 0, 0);
}

uint64_t sub_1C4581CD8()
{
  sub_1C43FCF70();
  v1 = v0[11];
  v2 = *(v1 + 40);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C48347D4();
    v2 = v7;
  }

  v0[26] = v2;
  *(v1 + 40) = v2;
  sub_1C4418280(v0[11], *(v0[11] + 24));
  v0[27] = swift_getAssociatedTypeWitness();
  v3 = sub_1C4F01F48();
  v0[28] = v3;
  sub_1C43FCF7C(v3);
  v0[29] = v4;
  v0[30] = swift_task_alloc();
  v5 = swift_task_alloc();
  v0[31] = v5;
  *v5 = v0;
  v6 = sub_1C4404ABC(v5);

  return MEMORY[0x1EEE6D8C8](v6);
}

uint64_t sub_1C4581E14()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v2 = *v1;
  sub_1C43FBDAC();
  *v3 = v2;
  *(v4 + 256) = v0;

  if (v0)
  {
    v5 = sub_1C458284C;
  }

  else
  {
    v5 = sub_1C4581F18;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1C4581F18()
{
  v1 = v0[30];
  v2 = v0[27];
  if (sub_1C44157D4(v1, 1, v2) == 1)
  {
    (*(v0[29] + 8))(v1, v0[28]);

    sub_1C441C774();
    goto LABEL_4;
  }

  v4 = v0[20];
  v3 = v0[21];
  v0[5] = v2;
  v5 = sub_1C4585408(v0 + 2);
  (*(*(v2 - 8) + 32))(v5, v1, v2);

  v6 = swift_dynamicCast();
  sub_1C440BAA8(v4, v6 ^ 1u, 1, v3);
  if (sub_1C44157D4(v4, 1, v3) == 1)
  {
LABEL_4:
    v7 = v0[21];
    v8 = v0[18];
    v9 = v0[11];
    sub_1C4420C3C(v0[20], &qword_1EC0B8640, &qword_1C4F0D5D8);
    v10 = type metadata accessor for AmbientLightSmoothedSequence(0);
    v11 = *(v10 + 32);
    sub_1C442B8EC();
    sub_1C446C964(v12, v13, v14, &qword_1C4F0D5D8);
    if (sub_1C44157D4(v8, 1, v7) == 1)
    {
      sub_1C4420C3C(v0[18], &qword_1EC0B8640, &qword_1C4F0D5D8);
      v15 = 1;
      goto LABEL_21;
    }

    v17 = v0[21];
    v16 = v0[22];
    v18 = v0[16];
    v19 = v0[13];
    v20 = v0[14];
    v21 = v0[12];
    v135 = v0[11];
    sub_1C441F344();
    sub_1C45849C8(v22, v16, v23);
    sub_1C4420C3C(v9 + v11, &qword_1EC0B8640, &qword_1C4F0D5D8);
    sub_1C43FCF64();
    sub_1C440BAA8(v24, v25, v26, v17);
    v27 = *(v20 + 16);
    v27(v18, v16, v19);
    sub_1C446C964(v135 + *(v10 + 28), v21, &unk_1EC0B84E0, qword_1C4F0D2D0);
    if (sub_1C44157D4(v21, 1, v19) == 1)
    {
      v28 = v0[12];
      v29 = v0[13];
      v27(v0[15], v0[22] + *(v0[21] + 20), v29);
      v30 = sub_1C44157D4(v28, 1, v29);
      if (v30 != 1)
      {
        v30 = sub_1C4420C3C(v0[12], &unk_1EC0B84E0, qword_1C4F0D2D0);
      }

LABEL_17:
      v59 = v0[26];
      v60 = *(v59 + 16);
      if (v60)
      {
        if (v60 != 1)
        {
          if (v60 >= 3)
          {
            v61 = v0[10];
            v62 = *(v0[11] + 48);
            v63 = *(v59 + 32) / v62;
            v64 = v0[21];
            v65 = v0[14];
            v66 = *(v59 + 40) / v62;
            v67 = *(v0[22] + *(v64 + 24) + 24);
            v68 = *(v59 + 48) / v62;
            sub_1C440DDAC();
            sub_1C45853B0(v69, v70);
            v71 = *(v65 + 32);
            v72 = sub_1C43FBC98();
            (v71)(v72);
            sub_1C442B8EC();
            v71();
            v15 = 0;
            v73 = v61 + *(v64 + 24);
            *v73 = v63;
            *(v73 + 8) = v66;
            *(v73 + 16) = v68;
            *(v73 + 24) = v67;
            goto LABEL_21;
          }

          goto LABEL_39;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

LABEL_16:
    v30 = (*(v0[14] + 32))(v0[15], v0[12], v0[13]);
    goto LABEL_17;
  }

  v31 = v0[21];
  v32 = v0[19];
  v33 = v0[11];
  sub_1C441F344();
  sub_1C45849C8(v34, v35, v36);
  v37 = type metadata accessor for AmbientLightSmoothedSequence(0);
  v38 = *(v37 + 32);
  sub_1C446C964(v33 + v38, v32, &qword_1EC0B8640, &qword_1C4F0D5D8);
  v39 = sub_1C44157D4(v32, 1, v31);
  v40 = v0[21];
  if (v39 == 1)
  {
    v41 = v0[25];
    v42 = v0[26];
    sub_1C442B8EC();
    sub_1C4420C3C(v43, v44, v45);
    sub_1C442B8EC();
    sub_1C4420C3C(v46, v47, v48);
    sub_1C4585464(v41, v33 + v38, type metadata accessor for AmbientLightEvent);
    sub_1C43FBD94();
    v30 = sub_1C440BAA8(v49, v50, v51, v40);
    v52 = *(v42 + 16);
    if (!v52)
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v53 = (v41 + *(v40 + 24));
    *(v0[26] + 32) = *v53 + *(v0[26] + 32);
    if (v52 == 1)
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    *(v0[26] + 40) = v53[1] + *(v0[26] + 40);
    if (v52 < 3)
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v54 = v0[26];
    v55 = v0[11];
    *(v54 + 48) = v53[2] + *(v54 + 48);
    *(v55 + 40) = v54;
    v56 = *(v55 + 48);
    v57 = __OFADD__(v56, 1);
    v58 = v56 + 1;
    if (v57)
    {
      __break(1u);
      goto LABEL_16;
    }
  }

  else
  {
    v76 = v0[24];
    v77 = v0[25];
    sub_1C441F344();
    v30 = sub_1C45849C8(v78, v76, v79);
    v80 = *(v40 + 24);
    v81 = v76 + v80;
    v82 = v77 + v80;
    v83 = *(v81 + 24);
    v84 = v0[26];
    if (*(v82 + 24) != v83)
    {
      v134 = v37;
      v136 = v0[25];
      v111 = v0[23];
      v112 = v0[21];
      v113 = v0[13];
      v114 = *(v0[14] + 16);
      v114(v111, v0[24], v113);
      v30 = (v114)(v111 + *(v112 + 20), v136, v113);
      v115 = *(v84 + 16);
      if (!v115)
      {
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      if (v115 == 1)
      {
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      if (v115 < 3)
      {
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      v116 = v0[25];
      v117 = v0[26];
      v118 = v0[11];
      v137 = v0[10];
      *&v119 = *(v118 + 48);
      v120 = v0[23];
      v121 = v0[21];
      v132 = v0[13];
      v133 = v0[24];
      v122 = v120 + *(v121 + 24);
      v123 = *(v117 + 40);
      *v122 = *(v117 + 32) / *&v119;
      *(v122 + 8) = vdivq_f64(v123, vdupq_lane_s64(v119, 0));
      *(v122 + 24) = v83;
      sub_1C4420C3C(v33 + v38, &qword_1EC0B8640, &qword_1C4F0D5D8);
      sub_1C4585464(v116, v33 + v38, type metadata accessor for AmbientLightEvent);
      sub_1C43FBD94();
      sub_1C440BAA8(v124, v125, v126, v121);

      *(v118 + 40) = &unk_1F43D1288;
      *(v118 + 48) = 0;
      sub_1C4420C3C(v118 + *(v134 + 28), &unk_1EC0B84E0, qword_1C4F0D2D0);
      sub_1C43FCF64();
      sub_1C440BAA8(v127, v128, v129, v132);
      sub_1C45819E8(v116);
      sub_1C45853B0(v133, type metadata accessor for AmbientLightEvent);
      sub_1C45853B0(v116, type metadata accessor for AmbientLightEvent);
      sub_1C441F344();
      sub_1C45849C8(v120, v137, v130);
      v15 = 0;
LABEL_21:
      sub_1C440BAA8(v0[10], v15, 1, v0[21]);

      sub_1C43FBDA0();
      sub_1C441AE0C();

      __asm { BRAA            X1, X16 }
    }

    v85 = *(v84 + 16);
    if (!v85)
    {
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    *(v84 + 32) = *v82 + *(v84 + 32);
    if (v85 == 1)
    {
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    v86 = v0[26];
    *(v86 + 40) = *(v82 + 8) + *(v86 + 40);
    v87 = *(v82 + 16);
    sub_1C440DDAC();
    v30 = sub_1C45853B0(v88, v89);
    if (*(v86 + 16) < 3uLL)
    {
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    v90 = v0[26];
    v91 = v0[11];
    *(v90 + 48) = v87 + *(v90 + 48);
    *(v91 + 40) = v90;
    v92 = *(v91 + 48);
    v57 = __OFADD__(v92, 1);
    v58 = v92 + 1;
    if (v57)
    {
LABEL_49:
      __break(1u);
      return MEMORY[0x1EEE6D8C8](v30);
    }
  }

  v93 = v0[25];
  v94 = v0[21];
  v95 = v0[17];
  v96 = v0[13];
  v97 = v0[14];
  v98 = v0[11];
  *(v98 + 48) = v58;
  v99 = *(v37 + 28);
  sub_1C4420C3C(v98 + v99, &unk_1EC0B84E0, qword_1C4F0D2D0);
  (*(v97 + 16))(v98 + v99, v93 + *(v94 + 20), v96);
  sub_1C440DDAC();
  sub_1C45853B0(v93, v100);
  sub_1C43FBD94();
  sub_1C440BAA8(v101, v102, v103, v96);
  sub_1C442B8EC();
  sub_1C446C964(v104, v105, v106, &qword_1C4F0D5D8);
  LODWORD(v94) = sub_1C44157D4(v95, 1, v94);
  sub_1C4420C3C(v0[17], &qword_1EC0B8640, &qword_1C4F0D5D8);
  v15 = 1;
  if (v94 == 1)
  {
    goto LABEL_21;
  }

  sub_1C4418280(v0[11], *(v0[11] + 24));
  v0[27] = swift_getAssociatedTypeWitness();
  v107 = sub_1C4F01F48();
  v0[28] = v107;
  sub_1C43FCF7C(v107);
  v0[29] = v108;
  v0[30] = swift_task_alloc();
  v109 = swift_task_alloc();
  v0[31] = v109;
  *v109 = v0;
  sub_1C4404ABC(v109);
  sub_1C441AE0C();

  return MEMORY[0x1EEE6D8C8](v30);
}

uint64_t sub_1C458284C()
{
  v20 = v0;

  if (qword_1EDDFECB0 != -1)
  {
    sub_1C43FFB88(&qword_1EDDFECB0);
  }

  v1 = *(v0 + 256);
  v2 = sub_1C4F00978();
  sub_1C43FCEE8(v2, qword_1EDDFECB8);
  v3 = v1;
  v4 = sub_1C4F00968();
  v5 = sub_1C4F01CD8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 256);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = sub_1C4F02A38();
    v12 = sub_1C441D828(v10, v11, &v19);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_1C43F8000, v4, v5, "Error when reading the ambient light events - %s", v8, 0xCu);
    sub_1C440962C(v9);
    MEMORY[0x1C6942830](v9, -1, -1);
    MEMORY[0x1C6942830](v8, -1, -1);
  }

  else
  {
  }

  sub_1C43FCF64();
  sub_1C440BAA8(v13, v14, v15, v16);

  sub_1C43FBDA0();

  return v17();
}

uint64_t sub_1C4582AF0()
{
  sub_1C43FBCD4();
  v0 = swift_task_alloc();
  v1 = sub_1C43FCF54(v0);
  *v1 = v2;
  v1[1] = sub_1C445229C;

  return sub_1C4581B3C();
}

uint64_t sub_1C4582B7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 24) = v7;
  *v7 = v3;
  v7[1] = sub_1C4582C48;

  return (sub_1C4982590)(a1, a2, a3, v3 + 16);
}

uint64_t sub_1C4582C48()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v1 = *v0;
  sub_1C43FBDAC();
  *v2 = v1;

  sub_1C43FBDA0();

  return v3();
}

uint64_t sub_1C4582D30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v3[5] = type metadata accessor for AlarmEvent(0);
  v3[6] = swift_task_alloc();
  v4 = sub_1C4EF9CD8();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4582E24, 0, 0);
}

uint64_t sub_1C4582E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1C43FBDC8();
  sub_1C4404B08();
  v18 = [*(v14 + 24) eventBody];
  if (v18)
  {
    v19 = sub_1C441C058(v18);
    [v16 timestamp];
    sub_1C4EF9AC8();
    v20 = sub_1C44330B4();
    v17(v20);
    v21 = sub_1C440D000();
    v17(v21);
    v22 = sub_1C4577890([v19 eventType]);

    v23 = sub_1C44064DC();
    v24(v23);
    *(v15 + *(v13 + 24)) = v22;
    sub_1C4418980();
    sub_1C43FBD94();
    sub_1C440BAA8(v25, v26, v27, v13);
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88(&qword_1EDDFECB0);
    }

    v28 = sub_1C442F090();
    sub_1C43FCEE8(v28, qword_1EDDFECB8);
    v29 = v12;
    sub_1C4F00968();
    sub_1C4F01CF8();

    if (sub_1C44020E0())
    {
      sub_1C4404AEC();
      v30 = sub_1C4403FF4();
      sub_1C441B738(v30, 5.7779e-34);
      sub_1C43FBD74(&dword_1C43F8000, v31, v32, "Unable to parse eventBody from %@");
      sub_1C4420C3C(v30, &qword_1EC0BDA00, &qword_1C4F10D30);
      sub_1C43FEA20();
      sub_1C43FE9D4();
    }

    sub_1C443579C();
    sub_1C441C774();
  }

  sub_1C44182DC();

  sub_1C43FBDA0();
  sub_1C43FEA3C();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12);
}

uint64_t sub_1C4582FEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v3[5] = type metadata accessor for AmbientLightEvent(0);
  v3[6] = swift_task_alloc();
  v4 = sub_1C4EF9CD8();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C45830E0, 0, 0);
}

uint64_t sub_1C45830E0()
{
  v7 = [*(v3 + 24) eventBody];
  if (v7)
  {
    v8 = sub_1C441C058(v7);
    [v5 timestamp];
    sub_1C4EF9AC8();
    v9 = sub_1C44330B4();
    v6(v9);
    v10 = sub_1C440D000();
    v6(v10);
    [v8 ambientLightColorComponent0];
    v12 = v11;
    [v8 ambientLightColorComponent1];
    v14 = v13;
    [v8 ambientLightColorComponent2];
    v16 = v15;
    v17 = sub_1C4585840(v8);

    v18 = sub_1C44064DC();
    v19(v18);
    v20 = v4 + *(v1 + 24);
    *v20 = v12;
    *(v20 + 8) = v14;
    *(v20 + 16) = v16;
    *(v20 + 24) = v17;
    sub_1C441F344();
    sub_1C45849C8(v4, v2, v21);
    sub_1C43FBD94();
    sub_1C440BAA8(v22, v23, v24, v1);
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88(&qword_1EDDFECB0);
    }

    v25 = sub_1C442F090();
    sub_1C43FCEE8(v25, qword_1EDDFECB8);
    v26 = v0;
    sub_1C4F00968();
    sub_1C4F01CF8();

    if (sub_1C44020E0())
    {
      sub_1C4404AEC();
      v27 = sub_1C4403FF4();
      sub_1C441B738(v27, 5.7779e-34);
      sub_1C43FBD74(&dword_1C43F8000, v28, v29, "Unable to parse eventBody from %@");
      sub_1C4420C3C(v27, &qword_1EC0BDA00, &qword_1C4F10D30);
      sub_1C43FEA20();
      sub_1C43FE9D4();
    }

    sub_1C443579C();
    sub_1C441C774();
  }

  sub_1C44182DC();

  sub_1C43FBDA0();

  return v30();
}

uint64_t sub_1C4583304(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v3[5] = type metadata accessor for AppIntentEvent(0);
  v3[6] = swift_task_alloc();
  v4 = sub_1C4EF9CD8();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C45833F8, 0, 0);
}

uint64_t sub_1C45833F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1C43FBDC8();
  sub_1C4404B08();
  v15 = [*(v13 + 24) eventBody];
  if (v15)
  {
    v16 = sub_1C4440F4C(v15);
    [v14 timestamp];
    sub_1C4EF9AC8();
    v17 = sub_1C447EEFC();
    (v14)(v17);
    v18 = sub_1C443F0B4();
    (v14)(v18);
    v19 = sub_1C4632064(v16);
    v21 = v20;
    v22 = [v16 intentClass];
    v24 = *(v13 + 64);
    v23 = *(v13 + 72);
    v25 = *(v13 + 56);
    if (v22)
    {
      v26 = v22;
      v27 = sub_1C4F01138();
      v29 = v28;

      (*(v24 + 8))(v23, v25);
    }

    else
    {
      (*(v24 + 8))(*(v13 + 72), *(v13 + 56));

      v27 = 0;
      v29 = 0;
    }

    v36 = *(v13 + 40);
    v35 = *(v13 + 48);
    v37 = *(v13 + 16);
    v38 = (v35 + *(v36 + 24));
    *v38 = v19;
    v38[1] = v21;
    v38[2] = v27;
    v38[3] = v29;
    sub_1C45849C8(v35, v37, type metadata accessor for AppIntentEvent);
    sub_1C43FBD94();
    sub_1C440BAA8(v39, v40, v41, v36);
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88(&qword_1EDDFECB0);
    }

    v30 = sub_1C442F090();
    sub_1C43FCEE8(v30, qword_1EDDFECB8);
    v31 = v12;
    sub_1C4F00968();
    sub_1C4F01CF8();

    if (sub_1C44020E0())
    {
      sub_1C4404AEC();
      v32 = sub_1C4403FF4();
      sub_1C441B738(v32, 5.7779e-34);
      sub_1C43FBD74(&dword_1C43F8000, v33, v34, "Unable to parse eventBody from %@");
      sub_1C4420C3C(v32, &qword_1EC0BDA00, &qword_1C4F10D30);
      sub_1C43FEA20();
      sub_1C43FE9D4();
    }

    sub_1C443579C();
    sub_1C441C774();
  }

  sub_1C44182DC();

  sub_1C43FBDA0();
  sub_1C43FEA3C();

  return v43(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12);
}

uint64_t sub_1C4583638(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  v3[15] = type metadata accessor for NowPlayingEvent(0);
  v3[16] = swift_task_alloc();
  v4 = sub_1C4EF9CD8();
  v3[17] = v4;
  v3[18] = *(v4 - 8);
  v3[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C458372C, 0, 0);
}

uint64_t sub_1C458372C()
{
  v1 = [*(v0 + 104) eventBody];
  if (v1)
  {
    v3 = *(v0 + 144);
    v2 = *(v0 + 152);
    v4 = *(v0 + 128);
    v5 = *(v0 + 136);
    v6 = *(v0 + 120);
    v7 = *(v0 + 104);
    v8 = v1;
    [v7 timestamp];
    sub_1C4EF9AC8();
    v9 = *(v3 + 16);
    v9(v4, v2, v5);
    v10 = sub_1C440D000();
    (v9)(v10);
    sub_1C456902C(&qword_1EC0B8628, &qword_1C4F0D560);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C4F0D130;
    *(inited + 32) = [v8 playbackState];
    sub_1C456902C(&qword_1EC0B8630, &qword_1C4F0D568);
    v12 = swift_initStackObject();
    *(v12 + 16) = xmmword_1C4F0D130;
    *(v12 + 32) = [v8 itemMediaSubtype];
    v13 = sub_1C4A4771C(inited, v12);
    v15 = v14;

    (*(v3 + 8))(v2, v5);
    v16 = (v4 + *(v6 + 24));
    *v16 = v13;
    v16[1] = v15;
    sub_1C4418980();
    sub_1C43FBD94();
    sub_1C440BAA8(v17, v18, v19, v6);
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88(&qword_1EDDFECB0);
    }

    v20 = *(v0 + 112);
    v21 = sub_1C4F00978();
    sub_1C43FCEE8(v21, qword_1EDDFECB8);
    v22 = v20;
    v23 = sub_1C4F00968();
    sub_1C4F01CF8();

    if (sub_1C44020E0())
    {
      swift_slowAlloc();
      v24 = sub_1C4403FF4();
      sub_1C441B738(v24, 5.7779e-34);
      sub_1C43FBD74(&dword_1C43F8000, v25, v26, "Unable to parse eventBody from %@");
      sub_1C4420C3C(v24, &qword_1EC0BDA00, &qword_1C4F10D30);
      sub_1C43FEA20();
      sub_1C43FE9D4();
    }

    sub_1C441C774();
  }

  sub_1C43FBDA0();

  return v27();
}

uint64_t sub_1C45839DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v3[5] = type metadata accessor for PoiCategoryEvent(0);
  v3[6] = swift_task_alloc();
  v4 = sub_1C4EF9CD8();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4583AD0, 0, 0);
}

uint64_t sub_1C4583AD0()
{
  v3 = [*(v1 + 24) eventBody];
  if (v3)
  {
    v4 = sub_1C4440F4C(v3);
    [v2 timestamp];
    sub_1C4EF9AC8();
    v5 = sub_1C447EEFC();
    (v2)(v5);
    v6 = sub_1C443F0B4();
    (v2)(v6);
    v7 = [v4 rank];
    v8 = sub_1C4631F3C(v4);
    v10 = v7;
    v12 = *(v1 + 64);
    v11 = *(v1 + 72);
    v13 = *(v1 + 56);
    if (v9)
    {
      v14 = sub_1C4AD5C68(v8, v9);

      (*(v12 + 8))(v11, v13);
    }

    else
    {
      (*(v12 + 8))(*(v1 + 72), *(v1 + 56));

      v14 = 61;
    }

    v21 = *(v1 + 40);
    v20 = *(v1 + 48);
    v22 = *(v1 + 16);
    v23 = v20 + *(v21 + 24);
    *v23 = v10;
    *(v23 + 8) = v14;
    sub_1C45849C8(v20, v22, type metadata accessor for PoiCategoryEvent);
    sub_1C43FBD94();
    sub_1C440BAA8(v24, v25, v26, v21);
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88(&qword_1EDDFECB0);
    }

    v15 = sub_1C442F090();
    sub_1C43FCEE8(v15, qword_1EDDFECB8);
    v16 = v0;
    sub_1C4F00968();
    sub_1C4F01CF8();

    if (sub_1C44020E0())
    {
      sub_1C4404AEC();
      v17 = sub_1C4403FF4();
      sub_1C441B738(v17, 5.7779e-34);
      sub_1C43FBD74(&dword_1C43F8000, v18, v19, "Unable to parse eventBody from %@");
      sub_1C4420C3C(v17, &qword_1EC0BDA00, &qword_1C4F10D30);
      sub_1C43FEA20();
      sub_1C43FE9D4();
    }

    sub_1C443579C();
    sub_1C441C774();
  }

  sub_1C44182DC();

  sub_1C43FBDA0();

  return v27();
}

uint64_t sub_1C4583D0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v3[5] = type metadata accessor for HomeKitEvent(0);
  v3[6] = swift_task_alloc();
  v4 = sub_1C4EF9CD8();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4583E00, 0, 0);
}

uint64_t sub_1C4583E00()
{
  v3 = [*(v1 + 24) eventBody];
  if (v3)
  {
    v4 = sub_1C4440F4C(v3);
    [v2 timestamp];
    sub_1C4EF9AC8();
    v5 = sub_1C447EEFC();
    (v2)(v5);
    v6 = sub_1C443F0B4();
    (v2)(v6);
    v7 = [v4 accessoryUniqueIdentifier];
    v9 = *(v1 + 64);
    v8 = *(v1 + 72);
    v10 = *(v1 + 56);
    if (v7)
    {
      v11 = v7;
      v12 = sub_1C4F01138();
      v14 = v13;

      (*(v9 + 8))(v8, v10);
    }

    else
    {
      (*(v9 + 8))(*(v1 + 72), *(v1 + 56));

      v12 = 0;
      v14 = 0;
    }

    v21 = *(v1 + 40);
    v20 = *(v1 + 48);
    v22 = *(v1 + 16);
    v23 = (v20 + *(v21 + 24));
    *v23 = v12;
    v23[1] = v14;
    sub_1C45849C8(v20, v22, type metadata accessor for HomeKitEvent);
    sub_1C43FBD94();
    sub_1C440BAA8(v24, v25, v26, v21);
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88(&qword_1EDDFECB0);
    }

    v15 = sub_1C442F090();
    sub_1C43FCEE8(v15, qword_1EDDFECB8);
    v16 = v0;
    sub_1C4F00968();
    sub_1C4F01CF8();

    if (sub_1C44020E0())
    {
      sub_1C4404AEC();
      v17 = sub_1C4403FF4();
      sub_1C441B738(v17, 5.7779e-34);
      sub_1C43FBD74(&dword_1C43F8000, v18, v19, "Unable to parse eventBody from %@");
      sub_1C4420C3C(v17, &qword_1EC0BDA00, &qword_1C4F10D30);
      sub_1C43FEA20();
      sub_1C43FE9D4();
    }

    sub_1C443579C();
    sub_1C441C774();
  }

  sub_1C44182DC();

  sub_1C43FBDA0();

  return v27();
}

uint64_t sub_1C4584040(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v3[5] = type metadata accessor for EnergyModeEvent(0);
  v3[6] = swift_task_alloc();
  v4 = sub_1C4EF9CD8();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4584134, 0, 0);
}

uint64_t sub_1C4584134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1C43FBDC8();
  sub_1C4404B08();
  v18 = [*(v14 + 24) eventBody];
  if (v18)
  {
    v19 = sub_1C441C058(v18);
    [v16 timestamp];
    sub_1C4EF9AC8();
    v20 = sub_1C44330B4();
    v17(v20);
    v21 = sub_1C440D000();
    v17(v21);
    v22 = sub_1C46D6E74([v19 mode]);

    v23 = sub_1C44064DC();
    v24(v23);
    *(v15 + *(v13 + 24)) = v22;
    sub_1C4418980();
    sub_1C43FBD94();
    sub_1C440BAA8(v25, v26, v27, v13);
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88(&qword_1EDDFECB0);
    }

    v28 = sub_1C442F090();
    sub_1C43FCEE8(v28, qword_1EDDFECB8);
    v29 = v12;
    sub_1C4F00968();
    sub_1C4F01CF8();

    if (sub_1C44020E0())
    {
      sub_1C4404AEC();
      v30 = sub_1C4403FF4();
      sub_1C441B738(v30, 5.7779e-34);
      sub_1C43FBD74(&dword_1C43F8000, v31, v32, "Unable to parse eventBody from %@");
      sub_1C4420C3C(v30, &qword_1EC0BDA00, &qword_1C4F10D30);
      sub_1C43FEA20();
      sub_1C43FE9D4();
    }

    sub_1C443579C();
    sub_1C441C774();
  }

  sub_1C44182DC();

  sub_1C43FBDA0();
  sub_1C43FEA3C();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12);
}

uint64_t sub_1C45842FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_1C4EF9CD8();
  v3[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4584390, 0, 0);
}

uint64_t sub_1C4584390()
{
  v2 = [*(v1 + 24) eventBody];
  if (v2)
  {
    v3 = *(v1 + 40);
    v5 = *(v1 + 16);
    v4 = *(v1 + 24);
    v6 = v2;
    [v4 timestamp];
    sub_1C4EF9AC8();
    sub_1C49F8BE0(v6, v3, v5);
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88(&qword_1EDDFECB0);
    }

    v7 = sub_1C442F090();
    sub_1C43FCEE8(v7, qword_1EDDFECB8);
    v8 = v0;
    v9 = sub_1C4F00968();
    sub_1C4F01CF8();

    if (sub_1C44020E0())
    {
      sub_1C4404AEC();
      v10 = sub_1C4403FF4();
      sub_1C441B738(v10, 5.7779e-34);
      sub_1C43FBD74(&dword_1C43F8000, v11, v12, "Unable to parse eventBody from %@");
      sub_1C4420C3C(v10, &qword_1EC0BDA00, &qword_1C4F10D30);
      sub_1C43FEA20();
      sub_1C43FE9D4();
    }

    type metadata accessor for LocationMetadataEvent(0);
    sub_1C43FCF64();
    sub_1C440BAA8(v13, v14, v15, v16);
  }

  sub_1C43FBDA0();

  return v17();
}

uint64_t sub_1C4584518(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v3[5] = type metadata accessor for DeviceBacklightEvent(0);
  v3[6] = swift_task_alloc();
  v4 = sub_1C4EF9CD8();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C458460C, 0, 0);
}

uint64_t sub_1C458460C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1C43FBDC8();
  sub_1C4404B08();
  v18 = [*(v14 + 24) eventBody];
  if (v18)
  {
    v19 = sub_1C441C058(v18);
    [v16 timestamp];
    sub_1C4EF9AC8();
    v20 = sub_1C44330B4();
    v17(v20);
    v21 = sub_1C440D000();
    v17(v21);
    v22 = [v19 backlightLevel];

    v23 = sub_1C44064DC();
    v24(v23);
    *(v15 + *(v13 + 24)) = v22 != 0;
    sub_1C4418980();
    sub_1C43FBD94();
    sub_1C440BAA8(v25, v26, v27, v13);
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88(&qword_1EDDFECB0);
    }

    v28 = sub_1C442F090();
    sub_1C43FCEE8(v28, qword_1EDDFECB8);
    v29 = v12;
    sub_1C4F00968();
    sub_1C4F01CF8();

    if (sub_1C44020E0())
    {
      sub_1C4404AEC();
      v30 = sub_1C4403FF4();
      sub_1C441B738(v30, 5.7779e-34);
      sub_1C43FBD74(&dword_1C43F8000, v31, v32, "Unable to parse eventBody from %@");
      sub_1C4420C3C(v30, &qword_1EC0BDA00, &qword_1C4F10D30);
      sub_1C43FEA20();
      sub_1C43FE9D4();
    }

    sub_1C443579C();
    sub_1C441C774();
  }

  sub_1C44182DC();

  sub_1C43FBDA0();
  sub_1C43FEA3C();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12);
}

uint64_t sub_1C45847D8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C442F080;

  return sub_1C4582D30(a1, v6, a3);
}

uint64_t sub_1C4584888(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C442F080;

  return sub_1C4582FEC(a1, v6, a3);
}

uint64_t sub_1C4584938()
{
  sub_1C43FCF70();
  sub_1C43FEA10();
  v0 = swift_task_alloc();
  v1 = sub_1C43FCF54(v0);
  *v1 = v2;
  v3 = sub_1C44064BC(v1);

  return v4(v3);
}

uint64_t sub_1C45849C8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FBCE0();
  v4 = sub_1C43FBC98();
  v5(v4);
  return a2;
}

uint64_t sub_1C4584A24(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C442E8C4;

  return sub_1C4583304(a1, v6, a3);
}

uint64_t sub_1C4584AD4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C442F080;

  return sub_1C4583638(a1, v6, a3);
}

uint64_t sub_1C4584B84(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C442F080;

  return sub_1C45839DC(a1, v6, a3);
}

uint64_t sub_1C4584C34(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C442F080;

  return sub_1C4583D0C(a1, v6, a3);
}

uint64_t sub_1C4584CE4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C442F080;

  return sub_1C4584040(a1, v6, a3);
}

uint64_t sub_1C4584D94(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C442F080;

  return sub_1C45842FC(a1, v6, a3);
}

uint64_t sub_1C4584E44()
{
  sub_1C43FCF70();
  sub_1C43FEA10();
  v0 = swift_task_alloc();
  v1 = sub_1C43FCF54(v0);
  *v1 = v2;
  v3 = sub_1C44064BC(v1);

  return v4(v3);
}

uint64_t sub_1C4584ED4()
{
  sub_1C43FCF70();
  sub_1C43FEA10();
  v0 = swift_task_alloc();
  v1 = sub_1C43FCF54(v0);
  *v1 = v2;
  v3 = sub_1C44064BC(v1);

  return v4(v3);
}

uint64_t sub_1C4584F64()
{
  sub_1C43FCF70();
  sub_1C43FEA10();
  v0 = swift_task_alloc();
  v1 = sub_1C43FCF54(v0);
  *v1 = v2;
  v3 = sub_1C44064BC(v1);

  return v4(v3);
}

uint64_t sub_1C458501C(uint64_t a1)
{
  result = sub_1C4EF9CD8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C4585098(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xF9 && *(a1 + 25))
    {
      v2 = *a1 + 248;
    }

    else
    {
      v3 = *(a1 + 24);
      v4 = v3 >= 8;
      v2 = v3 - 8;
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

uint64_t sub_1C45850D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 249;
    if (a3 >= 0xF9)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 7;
    }
  }

  return result;
}

void sub_1C4585154(uint64_t a1)
{
  sub_1C4585248();
  if (v1 <= 0x3F)
  {
    sub_1C45852A4();
    if (v2 <= 0x3F)
    {
      sub_1C45852F4(319, &qword_1EDDFF9E0, MEMORY[0x1E6969530]);
      if (v3 <= 0x3F)
      {
        sub_1C45852F4(319, qword_1EDDE64C0, type metadata accessor for AmbientLightEvent);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1C4585248()
{
  result = qword_1EDDF05E0;
  if (!qword_1EDDF05E0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDDF05E0);
  }

  return result;
}

void sub_1C45852A4()
{
  if (!qword_1EDDDBC00)
  {
    v0 = sub_1C4F017A8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDDDBC00);
    }
  }
}

void sub_1C45852F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C4F01F48();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1C4585358()
{
  result = qword_1EC0B8650;
  if (!qword_1EC0B8650)
  {
    type metadata accessor for AmbientLightSmoothedSequence(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B8650);
  }

  return result;
}

uint64_t sub_1C45853B0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C43FBCE0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t *sub_1C4585408(uint64_t *a1)
{
  sub_1C43FCF8C();
  if ((*(v2 + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v3;
  }

  return a1;
}

uint64_t sub_1C4585464(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FBCE0();
  v4 = sub_1C43FBC98();
  v5(v4);
  return a2;
}

uint64_t sub_1C45854C0()
{
  sub_1C43FCF70();
  sub_1C43FEA10();
  v0 = swift_task_alloc();
  v1 = sub_1C43FCF54(v0);
  *v1 = v2;
  v3 = sub_1C44064BC(v1);

  return v4(v3);
}

uint64_t sub_1C4585550()
{
  sub_1C43FCF70();
  sub_1C43FEA10();
  v0 = swift_task_alloc();
  v1 = sub_1C43FCF54(v0);
  *v1 = v2;
  v3 = sub_1C44064BC(v1);

  return v4(v3);
}

uint64_t sub_1C45855E0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C442F080;

  return sub_1C4584518(a1, v6, a3);
}

uint64_t sub_1C4585690()
{
  sub_1C43FCF70();
  sub_1C43FEA10();
  v0 = swift_task_alloc();
  v1 = sub_1C43FCF54(v0);
  *v1 = v2;
  v3 = sub_1C44064BC(v1);

  return v4(v3);
}

uint64_t sub_1C4585720()
{
  sub_1C43FCF70();
  sub_1C43FEA10();
  v0 = swift_task_alloc();
  v1 = sub_1C43FCF54(v0);
  *v1 = v2;
  v3 = sub_1C44064BC(v1);

  return v4(v3);
}

uint64_t sub_1C45857B0()
{
  sub_1C43FCF70();
  sub_1C43FEA10();
  v0 = swift_task_alloc();
  v1 = sub_1C43FCF54(v0);
  *v1 = v2;
  v3 = sub_1C44064BC(v1);

  return v4(v3);
}

uint64_t sub_1C4585840(void *a1)
{
  [a1 ambientLightColorComponent0];
  v3 = v2;
  [a1 ambientLightColorComponent1];
  v5 = v4;
  [a1 ambientLightColorComponent2];
  if (v5 < 4.0)
  {
    return 0;
  }

  if (v5 < 100.0 && v6 < v3 && v6 < v5)
  {
    return 1;
  }

  v10 = v3 * 0.8;
  if (v5 < 200.0 && v10 <= v6)
  {
    return 2;
  }

  if (v5 < 1000.0 && v6 < v10)
  {
    return 3;
  }

  if (v5 < 30000.0 && v6 < v10)
  {
    return 4;
  }

  if (v5 >= 10000.0)
  {
    return 6;
  }

  return 5;
}

unint64_t sub_1C4585948(unint64_t result)
{
  if (result >= 8)
  {
    return 8;
  }

  return result;
}

unint64_t sub_1C4585958@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C4585948(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1C4585984()
{
  v1 = [BiomeLibrary() ContextualUnderstanding];
  swift_unknownObjectRelease();
  v2 = [v1 AmbientLight];
  swift_unknownObjectRelease();
  *(v0 + 16) = v2;
  return v0;
}

uint64_t sub_1C4585A70()
{
  v5 = MEMORY[0x1E69E7CC0];
  sub_1C44CD9C0(0, 1, 0);
  v0 = v5;
  v2 = *(v5 + 16);
  v1 = *(v5 + 24);
  if (v2 >= v1 >> 1)
  {
    sub_1C44CD9C0(v1 > 1, v2 + 1, 1);
    v0 = v5;
  }

  *(v0 + 16) = v2 + 1;
  v3 = v0 + 16 * v2;
  *(v3 + 32) = 0xD000000000000012;
  *(v3 + 40) = 0x80000001C4F8A360;

  return sub_1C4499940();
}

uint64_t sub_1C4585B24(uint64_t a1)
{
  v3 = objc_autoreleasePoolPush();
  sub_1C4585B7C(v1, a1, &v5);
  objc_autoreleasePoolPop(v3);
  return v5;
}

uint64_t sub_1C4585B7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &aBlock - v10;
  v12 = *(a1 + 16);
  v13 = sub_1C4EF9CD8();
  sub_1C440BAA8(v11, 1, 1, v13);
  (*(*(v13 - 8) + 16))(v8, a2, v13);
  sub_1C440BAA8(v8, 0, 1, v13);
  v14 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v15 = sub_1C457A86C(v11, v8, 1, 1, 0);
  v16 = [v12 publisherWithOptions_];

  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  v28 = nullsub_1;
  v29 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v25 = 1107296256;
  v26 = sub_1C44405F8;
  v27 = &unk_1F43E0BA0;
  v18 = _Block_copy(&aBlock);
  v28 = sub_1C45867E8;
  v29 = v17;
  aBlock = MEMORY[0x1E69E9820];
  v25 = 1107296256;
  v26 = sub_1C44405F8;
  v27 = &unk_1F43E0BC8;
  v19 = _Block_copy(&aBlock);

  v20 = [v16 sinkWithCompletion:v18 receiveInput:v19];

  _Block_release(v19);
  _Block_release(v18);

  swift_beginAccess();
  v21 = *(v17 + 16);
  *a3 = v21;
  v22 = v21;
}

void sub_1C4585E50(void *a1, uint64_t a2)
{
  v3 = [a1 eventBody];
  if (v3)
  {
    v4 = v3;
    swift_beginAccess();
    v5 = *(a2 + 16);
    *(a2 + 16) = v4;
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v6 = sub_1C4F00978();
    sub_1C442B738(v6, qword_1EDDFECB8);
    oslog = sub_1C4F00968();
    v7 = sub_1C4F01CF8();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1C43F8000, oslog, v7, "Unable to parse eventBody from read event in physical social stream", v8, 2u);
      MEMORY[0x1C6942830](v8, -1, -1);
    }
  }
}

uint64_t sub_1C4585F88(uint64_t a1)
{
  v1 = sub_1C4585B24(a1);
  if (v1)
  {
    v2 = v1;
    sub_1C456902C(&unk_1EC0C65C0, &qword_1C4F0D1F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C4F0D130;
    *(inited + 32) = 0xD000000000000012;
    *(inited + 40) = 0x80000001C4F8A360;
    v4 = sub_1C4585840(v2);
    *(inited + 48) = [objc_opt_self() featureValueWithInt64_];
    sub_1C4577DBC();
    v5 = sub_1C4F00F28();

    return v5;
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v7 = sub_1C4F00978();
    sub_1C442B738(v7, qword_1EDDFECB8);
    v8 = sub_1C4F00968();
    v9 = sub_1C4F01CF8();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1C43F8000, v8, v9, "AmbientLightEvent is nil", v10, 2u);
      MEMORY[0x1C6942830](v10, -1, -1);
    }

    sub_1C4577DBC();

    return sub_1C4F00F28();
  }
}

uint64_t sub_1C4586168()
{
  v0 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBCC4();
  v6 = v5 - v4;
  sub_1C4EF9C88();
  v7 = sub_1C4585F88(v6);
  (*(v2 + 8))(v6, v0);
  return v7;
}

void sub_1C4586224(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v34 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBCC4();
  v12 = v11 - v10;
  type metadata accessor for FeatureProviderSnapshot(0);
  sub_1C43FCDF8();
  v32 = v14;
  v33 = v13;
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBCC4();
  v17 = v16 - v15;
  v18 = *(a2 + 16);
  v19 = MEMORY[0x1E69E7CC0];
  if (v18)
  {
    v29 = a3;
    v37 = MEMORY[0x1E69E7CC0];
    v36 = v17;
    sub_1C459D0A8();
    v20 = v36;
    v19 = v37;
    v22 = *(v8 + 16);
    v21 = v8 + 16;
    v23 = a2 + ((*(v21 + 64) + 32) & ~*(v21 + 64));
    v30 = *(v21 + 56);
    v31 = v22;
    do
    {
      v31(v12, v23, v34);
      v31(v20, v12, v34);
      v24 = sub_1C4585F88(v12);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v25 = v4;
      sub_1C4586890(v24, a1);

      sub_1C465CF34();
      v27 = v26;
      v20 = v36;

      (*(v21 - 8))(v12, v34);
      *(v36 + *(v33 + 20)) = v27;
      v28 = *(v37 + 16);
      if (v28 >= *(v37 + 24) >> 1)
      {
        sub_1C459D0A8();
        v20 = v36;
      }

      *(v37 + 16) = v28 + 1;
      sub_1C4586A54(v20, v37 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v28);
      v23 += v30;
      --v18;
      v4 = v25;
    }

    while (v18);
    a3 = v29;
  }

  *a3 = v19;
}

id sub_1C45864D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  v10 = v9 - v8;
  sub_1C4EF9C88();
  sub_1C4585F88(v10);
  (*(v6 + 8))(v10, v4);
  v11 = sub_1C44F9274(a1);

  if (!v11)
  {
    sub_1C4585A70();
    v12 = sub_1C43FCFC0();
    v13 = sub_1C4499AD0(v12, a2, 0);

    if (v13)
    {
      return [objc_opt_self() featureValueWithInt64_];
    }

    else
    {
      return 0;
    }
  }

  return v11;
}

uint64_t sub_1C4586694()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1C458676C(uint64_t a1)
{
  result = sub_1C4586794();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1C4586794()
{
  result = qword_1EC0B8690;
  if (!qword_1EC0B8690)
  {
    type metadata accessor for AmbientLightSignal();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B8690);
  }

  return result;
}

void *sub_1C45867F0(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    swift_bridgeObjectRetain_n();
    sub_1C4586AB8(v7, a2, a3, a4, v8, v9, v10, v11);
    v13 = v12;
    swift_bridgeObjectRelease_n();

    return v13;
  }

  return result;
}

_BYTE *sub_1C4586890(_BYTE *a1, uint64_t a2)
{
  v4 = a1;
  v17[1] = *MEMORY[0x1E69E9840];
  v5 = a1[32];
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v16 = swift_slowAlloc();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v4 = sub_1C45867F0(v16, v7, v4, a2);
      MEMORY[0x1C6942830](v16, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x1EEE9AC00](v8);
  v9 = v17 - ((8 * v7 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_1C4501018(0, v7, v9);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4586AB8(v9, v7, v4, a2, v10, v11, v12, v13);
  if (v2)
  {
    swift_willThrow();
  }

  else
  {
    v4 = v14;
  }

  swift_bridgeObjectRelease_n();
LABEL_6:

  return v4;
}

uint64_t sub_1C4586A54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeatureProviderSnapshot(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1C4586AB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = 0;
  v10 = 0;
  v11 = a3 + 64;
  v12 = 1 << *(a3 + 32);
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  else
  {
    v13 = -1;
  }

  v14 = v13 & *(a3 + 64);
  v15 = (v12 + 63) >> 6;
  v16 = a4 + 56;
LABEL_5:
  while (v14)
  {
    v17 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
LABEL_12:
    v20 = v17 | (v10 << 6);
    if (*(a4 + 16))
    {
      v37 = v14;
      v48 = v9;
      v21 = (*(a3 + 48) + 16 * v20);
      v23 = *v21;
      v22 = v21[1];
      v34 = v20;
      v24 = *(*(a3 + 56) + 8 * v20);
      sub_1C4F02AF8();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v36 = v24;
      sub_1C4F01298();
      v25 = sub_1C4F02B68();
      v26 = ~(-1 << *(a4 + 32));
      do
      {
        v27 = v25 & v26;
        if (((*(v16 + (((v25 & v26) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v25 & v26)) & 1) == 0)
        {

          v9 = v48;
          v14 = v37;
          goto LABEL_5;
        }

        v28 = (*(a4 + 48) + 16 * v27);
        if (*v28 == v23 && v28[1] == v22)
        {
          break;
        }

        v30 = sub_1C4F02938();
        v25 = v27 + 1;
      }

      while ((v30 & 1) == 0);

      *(a1 + ((v34 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v34;
      v9 = v48 + 1;
      v14 = v37;
      if (__OFADD__(v48, 1))
      {
        goto LABEL_26;
      }
    }
  }

  v18 = v10;
  while (1)
  {
    v10 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v10 >= v15)
    {
      sub_1C4586CDC(a1, a2, v9, a3, a5, a6, a7, a8, a2, v32, a1, v34, a3, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54);

      return;
    }

    v19 = *(v11 + 8 * v10);
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v14 = (v19 - 1) & v19;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_1C4586CDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  sub_1C4404B14();
  a31 = v36;
  a32 = v38;
  if (!v39)
  {
    goto LABEL_27;
  }

  v40 = v37;
  sub_1C4412BD8();
  if (v41)
  {

LABEL_27:
    sub_1C440576C();
    return;
  }

  sub_1C441AE30();
  sub_1C456902C(&qword_1EC0B8488, &unk_1C4F0D470);
  sub_1C43FCFC0();
  sub_1C4F02558();
  sub_1C44258C8();
  if (v42 != v43)
  {
    v44 = 0;
  }

  else
  {
    v44 = *v34;
  }

  v45 = 0;
  v59 = v40;
  while (v44)
  {
    sub_1C43FCFAC();
LABEL_17:
    v50 = v46 | (v45 << 6);
    v51 = *(v40 + 56);
    v52 = (*(v40 + 48) + 16 * v50);
    v53 = *v52;
    v54 = v52[1];
    v55 = *(v51 + 8 * v50);
    sub_1C4F02AF8();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v60 = v55;
    sub_1C4404010(&a12);
    sub_1C4F02B68();
    sub_1C4418FC4();
    sub_1C4405760();
    if (v41)
    {
      sub_1C43FFBF0();
      while (1)
      {
        sub_1C4410160();
        if (v41)
        {
          if (v56)
          {
            goto LABEL_29;
          }
        }

        sub_1C441E1A8();
        if (!v41)
        {
          sub_1C43FCF98();
          goto LABEL_25;
        }
      }
    }

    sub_1C43FFC04();
LABEL_25:
    sub_1C44064EC();
    sub_1C4416CF8();
    *v57 = v53;
    v57[1] = v54;
    *(*(v35 + 56) + 8 * v58) = v60;
    sub_1C440A4C0();
    if (v43)
    {
      goto LABEL_30;
    }

    v40 = v59;
    if (!v32)
    {
      goto LABEL_27;
    }
  }

  v47 = v45;
  while (1)
  {
    v45 = v47 + 1;
    if (__OFADD__(v47, 1))
    {
      break;
    }

    if (v45 >= v33)
    {
      goto LABEL_27;
    }

    ++v47;
    if (v34[v45])
    {
      sub_1C43FCF1C();
      v44 = v49 & v48;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
}

void sub_1C4586E60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  sub_1C4404B14();
  if (!v38)
  {
    goto LABEL_27;
  }

  v39 = v37;
  sub_1C4412BD8();
  if (v40)
  {

LABEL_27:
    sub_1C440576C();
    return;
  }

  sub_1C441AE30();
  sub_1C456902C(&qword_1EC0B86C0, &unk_1C4F0D8A0);
  sub_1C43FCFC0();
  sub_1C4F02558();
  sub_1C44258C8();
  if (v41 != v42)
  {
    v43 = 0;
  }

  else
  {
    v43 = *v34;
  }

  v44 = 0;
  v54 = v39;
  while (v43)
  {
    sub_1C43FEA58();
LABEL_17:
    sub_1C441C7B4();
    v50 = *(v49 + 8 * v48);
    sub_1C4F02AF8();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4F01298();
    sub_1C4F02B68();
    sub_1C4418FC4();
    sub_1C4405760();
    if (v40)
    {
      sub_1C43FFBF0();
      while (1)
      {
        sub_1C4410160();
        if (v40)
        {
          if (v51)
          {
            goto LABEL_29;
          }
        }

        sub_1C441E1A8();
        if (!v40)
        {
          sub_1C43FCF98();
          goto LABEL_25;
        }
      }
    }

    sub_1C43FFC04();
LABEL_25:
    sub_1C44064EC();
    sub_1C4416CF8();
    *v52 = v39;
    v52[1] = v36;
    *(*(v35 + 56) + 8 * v53) = v50;
    sub_1C440A4C0();
    if (v42)
    {
      goto LABEL_30;
    }

    v39 = v54;
    if (!v32)
    {
      goto LABEL_27;
    }
  }

  v45 = v44;
  while (1)
  {
    v44 = v45 + 1;
    if (__OFADD__(v45, 1))
    {
      break;
    }

    if (v44 >= v33)
    {
      goto LABEL_27;
    }

    ++v45;
    if (v34[v44])
    {
      sub_1C43FCF1C();
      v43 = v47 & v46;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
}

void sub_1C458700C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    sub_1C4412BD8();
    if (v10)
    {
    }

    else
    {
      v11 = v7;
      v32 = v6;
      sub_1C456902C(v8, v9);
      sub_1C43FCFC0();
      v12 = sub_1C4F02558();
      v13 = v12;
      if (v11 < 1)
      {
        v14 = 0;
      }

      else
      {
        v14 = *v32;
      }

      v15 = 0;
      v16 = v12 + 64;
      v33 = a4;
      while (v14)
      {
        v17 = __clz(__rbit64(v14));
        v34 = (v14 - 1) & v14;
LABEL_17:
        v21 = v17 | (v15 << 6);
        v22 = *(*(a4 + 48) + 8 * v21);
        v23 = *(*(a4 + 56) + 8 * v21);
        sub_1C4F01138();
        sub_1C4F02AF8();
        v24 = v22;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4F01298();
        sub_1C4F02B68();

        sub_1C4405760();
        if (v10)
        {
          sub_1C43FFBF0();
          while (1)
          {
            sub_1C4410160();
            if (v10)
            {
              if (v26)
              {
                goto LABEL_31;
              }
            }

            if (v25 == v27)
            {
              v25 = 0;
            }

            if (*(v16 + 8 * v25) != -1)
            {
              sub_1C43FCF98();
              goto LABEL_27;
            }
          }
        }

        sub_1C43FFC04();
LABEL_27:
        sub_1C44064EC();
        *(v16 + v28) |= v29;
        *(v13[6] + 8 * v30) = v24;
        *(v13[7] + 8 * v30) = v23;
        ++v13[2];
        if (__OFSUB__(v4--, 1))
        {
          goto LABEL_32;
        }

        a4 = v33;
        v14 = v34;
        if (!v4)
        {
          return;
        }
      }

      v18 = v15;
      while (1)
      {
        v15 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        if (v15 >= v11)
        {
          return;
        }

        ++v18;
        if (v32[v15])
        {
          sub_1C43FCF1C();
          v34 = v20 & v19;
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
    }
  }
}

void sub_1C458721C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  sub_1C4404B14();
  if (!v38)
  {
    goto LABEL_27;
  }

  v39 = v37;
  sub_1C4412BD8();
  if (v40)
  {

LABEL_27:
    sub_1C440576C();
    return;
  }

  sub_1C441AE30();
  sub_1C456902C(&qword_1EC0B86A8, &qword_1C4F16C10);
  sub_1C43FCFC0();
  sub_1C4F02558();
  sub_1C44258C8();
  if (v41 != v42)
  {
    v43 = 0;
  }

  else
  {
    v43 = *v34;
  }

  v44 = 0;
  v56 = v39;
  while (v43)
  {
    sub_1C43FEA58();
LABEL_17:
    sub_1C441C7B4();
    v50 = (v49 + 16 * v48);
    v51 = v50[1];
    v57 = *v50;
    sub_1C4F02AF8();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4F01298();
    sub_1C4F02B68();
    sub_1C4418FC4();
    sub_1C4405760();
    if (v40)
    {
      sub_1C43FFBF0();
      while (1)
      {
        sub_1C4410160();
        if (v40)
        {
          if (v52)
          {
            goto LABEL_29;
          }
        }

        sub_1C441E1A8();
        if (!v40)
        {
          sub_1C43FCF98();
          goto LABEL_25;
        }
      }
    }

    sub_1C43FFC04();
LABEL_25:
    sub_1C44064EC();
    sub_1C4416CF8();
    *v53 = v39;
    v53[1] = v36;
    v55 = (*(v35 + 56) + 16 * v54);
    *v55 = v57;
    v55[1] = v51;
    sub_1C440A4C0();
    if (v42)
    {
      goto LABEL_30;
    }

    v39 = v56;
    if (!v32)
    {
      goto LABEL_27;
    }
  }

  v45 = v44;
  while (1)
  {
    v44 = v45 + 1;
    if (__OFADD__(v45, 1))
    {
      break;
    }

    if (v44 >= v33)
    {
      goto LABEL_27;
    }

    ++v45;
    if (v34[v44])
    {
      sub_1C43FCF1C();
      v43 = v47 & v46;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
}

void sub_1C45873AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    sub_1C4412BD8();
    if (v7)
    {
    }

    else
    {
      sub_1C441AE30();
      sub_1C456902C(&qword_1EC0B85B0, &unk_1C4F0D350);
      sub_1C43FCFC0();
      sub_1C4F02558();
      sub_1C44258C8();
      if (v8 != v9)
      {
        v10 = 0;
      }

      else
      {
        v10 = *v6;
      }

      v11 = 0;
      while (v10)
      {
        sub_1C43FCFAC();
LABEL_17:
        sub_1C440F1C8();
        v18 = *(v17 + 8 * v16);
        sub_1C4F02AF8();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4404010(v23);
        sub_1C4F02B68();
        sub_1C4418FC4();
        sub_1C4405760();
        if (v7)
        {
          sub_1C43FFBF0();
          while (1)
          {
            sub_1C4410160();
            if (v7)
            {
              if (v19)
              {
                goto LABEL_29;
              }
            }

            sub_1C43FBDFC();
            if (!v7)
            {
              sub_1C43FCF98();
              goto LABEL_25;
            }
          }
        }

        sub_1C43FFC04();
LABEL_25:
        sub_1C44064EC();
        sub_1C4431E90(v20);
        *(v22 + 8 * v21) = v18;
        sub_1C440A4C0();
        if (v9)
        {
          goto LABEL_30;
        }

        if (!v4)
        {
          return;
        }
      }

      v12 = v11;
      while (1)
      {
        v11 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v11 >= v5)
        {
          return;
        }

        sub_1C4424F24();
        if (v13)
        {
          sub_1C43FCF1C();
          v10 = v15 & v14;
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
    }
  }
}

void sub_1C458752C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    sub_1C4412BD8();
    if (v9)
    {
    }

    else
    {
      sub_1C441AE30();
      sub_1C456902C(&qword_1EC0B86B0, &unk_1C4F0D890);
      sub_1C43FCFC0();
      sub_1C4F02558();
      sub_1C44258C8();
      if (v10 != v11)
      {
        v12 = 0;
      }

      else
      {
        v12 = *v6;
      }

      v13 = 0;
      v14 = v7 + 64;
      v29 = a4;
      while (v12)
      {
        sub_1C43FEA58();
LABEL_17:
        v20 = v15 | (v13 << 6);
        v21 = *(a4 + 56);
        v22 = *(*(a4 + 48) + v20);
        v30 = *(v21 + 8 * v20);
        sub_1C4F02AF8();
        switch(v22)
        {
          case 5:
          case 6:
          case 8:
          case 9:
            sub_1C442B8F8();
            break;
          default:
            break;
        }

        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4F01298();

        sub_1C4F02B68();
        sub_1C4418FC4();
        sub_1C4405760();
        if (v9)
        {
          sub_1C43FFBF0();
          while (1)
          {
            sub_1C4410160();
            if (v9)
            {
              if (v24)
              {
                goto LABEL_33;
              }
            }

            if (v23 == v25)
            {
              v23 = 0;
            }

            if (*(v14 + 8 * v23) != -1)
            {
              sub_1C43FCF98();
              goto LABEL_29;
            }
          }
        }

        sub_1C43FFC04();
LABEL_29:
        sub_1C44064EC();
        *(v14 + v26) |= v27;
        *(*(v7 + 48) + v28) = v22;
        *(*(v7 + 56) + 8 * v28) = v30;
        sub_1C440A4C0();
        if (v11)
        {
          goto LABEL_34;
        }

        a4 = v29;
        if (!v4)
        {
          return;
        }
      }

      v16 = v13;
      while (1)
      {
        v13 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v13 >= v5)
        {
          return;
        }

        sub_1C4424F24();
        if (v17)
        {
          sub_1C43FCF1C();
          v12 = v19 & v18;
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
    }
  }
}

void sub_1C45877FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    sub_1C4412BD8();
    if (v7)
    {
    }

    else
    {
      sub_1C441AE30();
      sub_1C456902C(&qword_1EC0B86D8, &unk_1C4F16C90);
      sub_1C43FCFC0();
      sub_1C4F02558();
      sub_1C44258C8();
      if (v8 != v9)
      {
        v10 = 0;
      }

      else
      {
        v10 = *v6;
      }

      v11 = 0;
      while (v10)
      {
        sub_1C43FCFAC();
LABEL_17:
        sub_1C440F1C8();
        sub_1C442E860(v17 + 40 * v16, v24);
        sub_1C441D670(v24, v23);
        sub_1C4F02AF8();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4404010(v22);
        sub_1C4F02B68();
        sub_1C4418FC4();
        sub_1C4405760();
        if (v7)
        {
          sub_1C43FFBF0();
          while (1)
          {
            sub_1C4410160();
            if (v7)
            {
              if (v18)
              {
                goto LABEL_29;
              }
            }

            sub_1C43FBDFC();
            if (!v7)
            {
              sub_1C43FCF98();
              goto LABEL_25;
            }
          }
        }

        sub_1C43FFC04();
LABEL_25:
        sub_1C44064EC();
        sub_1C4431E90(v19);
        sub_1C441D670(v23, v21 + 40 * v20);
        sub_1C440A4C0();
        if (v9)
        {
          goto LABEL_30;
        }

        if (!v4)
        {
          return;
        }
      }

      v12 = v11;
      while (1)
      {
        v11 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v11 >= v5)
        {
          return;
        }

        sub_1C4424F24();
        if (v13)
        {
          sub_1C43FCF1C();
          v10 = v15 & v14;
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
    }
  }
}

void sub_1C458799C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    sub_1C4412BD8();
    if (v7)
    {
    }

    else
    {
      sub_1C441AE30();
      sub_1C456902C(&qword_1EC0B86B8, &unk_1C4F58C00);
      sub_1C43FCFC0();
      sub_1C4F02558();
      sub_1C44258C8();
      if (v8 != v9)
      {
        v10 = 0;
      }

      else
      {
        v10 = *v6;
      }

      v11 = 0;
      while (v10)
      {
        sub_1C43FCFAC();
LABEL_17:
        sub_1C440F1C8();
        sub_1C442B870(v17 + 32 * v16, v24);
        sub_1C44482AC(v24, v23);
        sub_1C4F02AF8();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4404010(v22);
        sub_1C4F02B68();
        sub_1C4418FC4();
        sub_1C4405760();
        if (v7)
        {
          sub_1C43FFBF0();
          while (1)
          {
            sub_1C4410160();
            if (v7)
            {
              if (v18)
              {
                goto LABEL_29;
              }
            }

            sub_1C43FBDFC();
            if (!v7)
            {
              sub_1C43FCF98();
              goto LABEL_25;
            }
          }
        }

        sub_1C43FFC04();
LABEL_25:
        sub_1C44064EC();
        sub_1C4431E90(v19);
        sub_1C44482AC(v23, (v21 + 32 * v20));
        sub_1C440A4C0();
        if (v9)
        {
          goto LABEL_30;
        }

        if (!v4)
        {
          return;
        }
      }

      v12 = v11;
      while (1)
      {
        v11 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v11 >= v5)
        {
          return;
        }

        sub_1C4424F24();
        if (v13)
        {
          sub_1C43FCF1C();
          v10 = v15 & v14;
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
    }
  }
}

unint64_t sub_1C4587B30()
{
  result = qword_1EC0B86C8;
  if (!qword_1EC0B86C8)
  {
    sub_1C4572308(&qword_1EC0B86D0, qword_1C4F0D8B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B86C8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AmbientLightType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C4587C74()
{
  result = qword_1EC0B86E0;
  if (!qword_1EC0B86E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B86E0);
  }

  return result;
}

uint64_t App.mapLocation.getter()
{
  v1 = *v0;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v1;
}

uint64_t App.mapLocation.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_1C4587D58()
{
  if (qword_1EC0B7108 != -1)
  {
    swift_once();
  }

  qword_1EC0B86E8 = qword_1EC0C3828;
  *&qword_1EC0B86F0 = *&qword_1EC0C3830;
  qword_1EC0B8700 = qword_1EC0C3840;

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t *sub_1C4587DD8()
{
  if (qword_1EC0B6888 != -1)
  {
    sub_1C4408578(&qword_1EC0B6888);
  }

  return &qword_1EC0B86E8;
}

uint64_t static App.type.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC0B6888 != -1)
  {
    sub_1C4408578(&qword_1EC0B6888);
  }

  swift_beginAccess();
  v2 = qword_1EC0B8700;
  *a1 = qword_1EC0B86E8;
  *(a1 + 8) = *&qword_1EC0B86F0;
  *(a1 + 24) = v2;
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t static App.type.setter(uint64_t a1)
{
  v1 = *a1;
  v4 = *(a1 + 8);
  v2 = *(a1 + 24);
  if (qword_1EC0B6888 != -1)
  {
    sub_1C4408578(&qword_1EC0B6888);
  }

  swift_beginAccess();
  qword_1EC0B86E8 = v1;
  *&qword_1EC0B86F0 = v4;
  qword_1EC0B8700 = v2;
}

uint64_t (*static App.type.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1EC0B6888 != -1)
  {
    sub_1C4408578(&qword_1EC0B6888);
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1C4587FA4@<X0>(uint64_t a1@<X8>)
{
  sub_1C4587DD8();
  swift_beginAccess();
  v2 = qword_1EC0B8700;
  *a1 = qword_1EC0B86E8;
  *(a1 + 8) = *&qword_1EC0B86F0;
  *(a1 + 24) = v2;
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C458800C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 24);
  v4 = *(a1 + 8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4587DD8();
  swift_beginAccess();
  qword_1EC0B86E8 = v1;
  *&qword_1EC0B86F0 = v4;
  qword_1EC0B8700 = v2;
}

uint64_t App.identifier.getter()
{
  v1 = *(v0 + 16);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v1;
}

uint64_t App.identifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

void __swiftcall App.init(mapLocation:identifier:bundleID:conversationIdentifier:parentBundleId:extensionHostId:shortVersion:exactVersion:)(IntelligencePlatformCore::App *__return_ptr retstr, Swift::String mapLocation, Swift::String identifier, Swift::String bundleID, Swift::String_optional conversationIdentifier, Swift::String_optional parentBundleId, Swift::String_optional extensionHostId, Swift::String_optional shortVersion, Swift::String_optional exactVersion)
{
  object = conversationIdentifier.value._object;
  countAndFlagsBits = conversationIdentifier.value._countAndFlagsBits;
  v11 = bundleID._object;
  v12 = bundleID._countAndFlagsBits;
  v13 = identifier._object;
  v14 = identifier._countAndFlagsBits;
  sub_1C456902C(&qword_1EC0B8708, &qword_1C4F0D960);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1C4F0CE60;
  *(v16 + 32) = 0x4449656C646E7562;
  *(v16 + 40) = 0xE800000000000000;
  *(v16 + 48) = v12;
  *(v16 + 56) = v11;
  *(v16 + 72) = 0;
  *(v16 + 80) = 0;
  *(v16 + 64) = 0;
  *(v16 + 88) = 1;
  *(v16 + 96) = 0x696669746E656469;
  *(v16 + 104) = 0xEA00000000007265;
  *(v16 + 112) = v14;
  *(v16 + 120) = v13;
  *(v16 + 136) = 0;
  *(v16 + 144) = 0;
  *(v16 + 128) = 0;
  *(v16 + 152) = 1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  if (object)
  {
    sub_1C4406500();
    v17 = 3;
    sub_1C458E820();
    v16 = v18;
    *(v18 + 16) = 3;
    *(v18 + 160) = 0xD000000000000016;
    *(v18 + 168) = 0x80000001C4F8A3C0;
    *(v18 + 176) = countAndFlagsBits;
    *(v18 + 184) = object;
    *(v18 + 200) = 0;
    *(v18 + 208) = 0;
    *(v18 + 192) = 0;
    *(v18 + 216) = 1;
  }

  else
  {
    v17 = 2;
  }

  v19 = 0xD000000000000012;
  if (parentBundleId.value._object)
  {
    v20 = *(v16 + 24);
    if (v17 >= v20 >> 1)
    {
      sub_1C43FCFE8(v20);
      sub_1C4406500();
      sub_1C442F0A8(v31);
      sub_1C44020F8();
    }

    *(v16 + 16) = v17 + 1;
    v21 = v16 + (v17 << 6);
    strcpy((v21 + 32), "parentBundleID");
    *(v21 + 47) = -18;
    *(v21 + 48) = parentBundleId;
    sub_1C4404B30(v21);
  }

  if (extensionHostId.value._object)
  {
    v23 = *(v16 + 16);
    v22 = *(v16 + 24);
    if (v23 >= v22 >> 1)
    {
      sub_1C43FCFE8(v22);
      sub_1C4406500();
      sub_1C442F0A8(v32);
      sub_1C44020F8();
    }

    *(v16 + 16) = v23 + 1;
    v24 = (v16 + (v23 << 6));
    v24[2].value._countAndFlagsBits = 0x6F69736E65747865;
    v24[2].value._object = 0xEF444974736F486ELL;
    v24[3] = extensionHostId;
    sub_1C4404B30(v24);
  }

  if (shortVersion.value._object)
  {
    v26 = *(v16 + 16);
    v25 = *(v16 + 24);
    if (v26 >= v25 >> 1)
    {
      sub_1C43FCFE8(v25);
      sub_1C4406500();
      sub_1C442F0A8(v33);
      sub_1C44020F8();
    }

    *(v16 + 16) = v26 + 1;
    v27 = (v16 + (v26 << 6));
    v27[2].value._countAndFlagsBits = v19;
    v27[2].value._object = 0x80000001C4F8A3A0;
    v27[3] = shortVersion;
    sub_1C4404B30(v27);
  }

  if (exactVersion.value._object)
  {
    v29 = *(v16 + 16);
    v28 = *(v16 + 24);
    if (v29 >= v28 >> 1)
    {
      sub_1C43FCFE8(v28);
      sub_1C4406500();
      sub_1C442F0A8(v34);
      sub_1C44020F8();
    }

    *(v16 + 16) = v29 + 1;
    v30 = (v16 + (v29 << 6));
    v30[2].value._countAndFlagsBits = v19;
    v30[2].value._object = 0x80000001C4F8A380;
    v30[3] = exactVersion;
    sub_1C4404B30(v30);
  }

  retstr->mapLocation = mapLocation;
  retstr->identifier.value._countAndFlagsBits = v14;
  retstr->identifier.value._object = v13;
  retstr->basicProperties._rawValue = v16;
}

uint64_t sub_1C458847C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7461636F4C70616DLL && a2 == 0xEB000000006E6F69;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6F72506369736162 && a2 == 0xEF73656974726570)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C4F02938();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1C45885A8(char a1)
{
  if (!a1)
  {
    return 0x7461636F4C70616DLL;
  }

  if (a1 == 1)
  {
    return 0x696669746E656469;
  }

  return 0x6F72506369736162;
}

uint64_t sub_1C4588620@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C458847C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4588648@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C45885A0();
  *a1 = result;
  return result;
}

uint64_t sub_1C4588670(uint64_t a1)
{
  v2 = sub_1C458A930();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C45886AC(uint64_t a1)
{
  v2 = sub_1C458A930();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t App.encode(to:)(void *a1)
{
  sub_1C456902C(&qword_1EC0B8710, &qword_1C4F0D968);
  sub_1C43FFC58();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13 - v7;
  v9 = v1[2];
  v15 = v1[3];
  v16 = v9;
  v14 = v1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C458A930();
  sub_1C4F02BF8();
  v21 = 0;
  v10 = v17;
  sub_1C4F02798();
  if (!v10)
  {
    v11 = v14;
    v20 = 1;
    sub_1C4F02738();
    v18 = v11;
    v19 = 2;
    sub_1C456902C(&qword_1EC0B8720, &qword_1C4F0D970);
    sub_1C458A9D8(&qword_1EC0B8728, sub_1C458A984, MEMORY[0x1E69E6300]);
    sub_1C4F027E8();
  }

  return (*(v5 + 8))(v8, v2);
}

uint64_t App.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1C456902C(&qword_1EC0B8738, &qword_1C4F0D978);
  sub_1C43FFC58();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C4409678(a1, a1[3]);
  sub_1C458A930();
  sub_1C4F02BC8();
  if (v2)
  {
    return sub_1C440962C(a1);
  }

  v6 = sub_1C4F02678();
  v8 = v7;
  v13 = sub_1C4F02618();
  v14 = v9;
  sub_1C456902C(&qword_1EC0B8720, &qword_1C4F0D970);
  sub_1C458A9D8(&qword_1EC0B8740, sub_1C458AA50, MEMORY[0x1E69E6330]);
  sub_1C4F026C8();
  v11 = sub_1C440A4E4();
  v12(v11);
  *a2 = v6;
  a2[1] = v8;
  a2[2] = v13;
  a2[3] = v14;
  a2[4] = v15;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C440962C(a1);
}

void sub_1C4588BAC()
{
  v2 = sub_1C4436470();
  *v1 = v0;
  if (!v2)
  {
    sub_1C43FBE0C();
    sub_1C440F1DC();
    sub_1C443D5B8();
    *v1 = v3;
  }
}

void sub_1C4588C04()
{
  v2 = sub_1C4436470();
  *v1 = v0;
  if (!v2)
  {
    sub_1C442FAB0();
    sub_1C440F1DC();
    sub_1C4505908();
    *v1 = v3;
  }
}

uint64_t sub_1C4588CA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = *v4;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v9;
  if (!result)
  {
    result = a4(result, *(v9 + 16) + 1, 1, v9, a1, a2, a3);
    *v4 = result;
  }

  return result;
}

void sub_1C4588D20()
{
  v2 = sub_1C4436470();
  *v1 = v0;
  if (!v2)
  {
    sub_1C4406500();
    sub_1C440F1DC();
    sub_1C458E820();
    *v1 = v3;
  }
}

uint64_t sub_1C4588E38(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

void sub_1C4588FA8()
{
  v2 = sub_1C4436470();
  *v1 = v0;
  if (!v2)
  {
    sub_1C441899C();
    sub_1C440F1DC();
    sub_1C4505908();
    *v1 = v3;
  }
}

void sub_1C458900C()
{
  v2 = sub_1C4436470();
  *v1 = v0;
  if (!v2)
  {
    sub_1C445E73C();
    sub_1C440F1DC();
    sub_1C4505908();
    *v1 = v3;
  }
}

void sub_1C45890A0()
{
  v2 = sub_1C4436470();
  *v1 = v0;
  if (!v2)
  {
    sub_1C441C7C8();
    sub_1C440F1DC();
    sub_1C4505908();
    *v1 = v3;
  }
}

void sub_1C458911C()
{
  v2 = sub_1C4436470();
  *v1 = v0;
  if (!v2)
  {
    sub_1C447EF10();
    sub_1C440F1DC();
    sub_1C458EC90();
    *v1 = v3;
  }
}

void sub_1C458918C()
{
  v2 = sub_1C4436470();
  *v1 = v0;
  if (!v2)
  {
    sub_1C443F0C8();
    sub_1C440F1DC();
    sub_1C4505908();
    *v1 = v3;
  }
}

void sub_1C4589208()
{
  v2 = sub_1C4436470();
  *v1 = v0;
  if (!v2)
  {
    sub_1C440C33C();
    sub_1C440F1DC();
    sub_1C4505908();
    *v1 = v3;
  }
}

void sub_1C45892C0()
{
  v2 = sub_1C4436470();
  *v1 = v0;
  if (!v2)
  {
    sub_1C440BB08();
    sub_1C440F1DC();
    sub_1C4505908();
    *v1 = v3;
  }
}

void sub_1C4589438()
{
  v2 = sub_1C4436470();
  *v1 = v0;
  if (!v2)
  {
    sub_1C441C078();
    sub_1C440F1DC();
    sub_1C44589B0();
    *v1 = v3;
  }
}

void sub_1C4589538()
{
  v2 = sub_1C4436470();
  *v1 = v0;
  if (!v2)
  {
    sub_1C444FC14();
    sub_1C440F1DC();
    sub_1C4505908();
    *v1 = v3;
  }
}

void sub_1C458959C()
{
  v2 = sub_1C4436470();
  *v1 = v0;
  if (!v2)
  {
    sub_1C4415828();
    sub_1C440F1DC();
    sub_1C458EE30();
    *v1 = v3;
  }
}

void sub_1C45896CC()
{
  v2 = sub_1C4436470();
  *v1 = v0;
  if (!v2)
  {
    sub_1C4434DE0();
    sub_1C440F1DC();
    sub_1C4505908();
    *v1 = v3;
  }
}

void sub_1C4589730()
{
  v2 = sub_1C4436470();
  *v1 = v0;
  if (!v2)
  {
    sub_1C4415F18();
    sub_1C440F1DC();
    sub_1C4505908();
    *v1 = v3;
  }
}

void sub_1C45897E8()
{
  sub_1C441F35C();
  if (!(v2 ^ v3 | v1))
  {
    sub_1C43FBE0C();
    sub_1C443D5B8();
    *v0 = v4;
  }
}

void sub_1C4589838()
{
  sub_1C441F35C();
  if (!(v2 ^ v3 | v1))
  {
    sub_1C442FAB0();
    sub_1C4505908();
    *v0 = v4;
  }
}

void sub_1C45898D0()
{
  sub_1C4460164();
  if (!(v4 ^ v5 | v3))
  {
    *v0 = v1(v2 > 1);
  }
}

void sub_1C4589918()
{
  sub_1C441F35C();
  if (!(v2 ^ v3 | v1))
  {
    sub_1C4406500();
    sub_1C458E820();
    *v0 = v4;
  }
}

void sub_1C4589A28()
{
  sub_1C4460164();
  if (!(v4 ^ v5 | v3))
  {
    *v0 = v1(v2 > 1);
  }
}

void sub_1C4589B90()
{
  sub_1C441F35C();
  if (!(v2 ^ v3 | v1))
  {
    sub_1C441899C();
    sub_1C4505908();
    *v0 = v4;
  }
}

void sub_1C4589BEC()
{
  sub_1C441F35C();
  if (!(v2 ^ v3 | v1))
  {
    sub_1C445E73C();
    sub_1C4505908();
    *v0 = v4;
  }
}

void sub_1C4589C60()
{
  sub_1C441F35C();
  if (!(v2 ^ v3 | v1))
  {
    sub_1C441C7C8();
    sub_1C4505908();
    *v0 = v4;
  }
}

void sub_1C4589CD4()
{
  sub_1C441F35C();
  if (!(v2 ^ v3 | v1))
  {
    sub_1C447EF10();
    sub_1C458EC90();
    *v0 = v4;
  }
}

void sub_1C4589D3C()
{
  sub_1C441F35C();
  if (!(v2 ^ v3 | v1))
  {
    sub_1C443F0C8();
    sub_1C4505908();
    *v0 = v4;
  }
}

void sub_1C4589DB0()
{
  sub_1C441F35C();
  if (!(v2 ^ v3 | v1))
  {
    sub_1C440C33C();
    sub_1C4505908();
    *v0 = v4;
  }
}

void sub_1C4589E60()
{
  sub_1C441F35C();
  if (!(v2 ^ v3 | v1))
  {
    sub_1C440BB08();
    sub_1C4505908();
    *v0 = v4;
  }
}

void sub_1C4589FD0()
{
  sub_1C441F35C();
  if (!(v2 ^ v3 | v1))
  {
    sub_1C441C078();
    sub_1C44589B0();
    *v0 = v4;
  }
}

void sub_1C458A0C8()
{
  sub_1C441F35C();
  if (!(v2 ^ v3 | v1))
  {
    sub_1C444FC14();
    sub_1C4505908();
    *v0 = v4;
  }
}

void sub_1C458A124()
{
  sub_1C441F35C();
  if (!(v2 ^ v3 | v1))
  {
    sub_1C4415828();
    sub_1C458EE30();
    *v0 = v4;
  }
}

void sub_1C458A24C()
{
  sub_1C441F35C();
  if (!(v2 ^ v3 | v1))
  {
    sub_1C4434DE0();
    sub_1C4505908();
    *v0 = v4;
  }
}

void sub_1C458A2A8()
{
  sub_1C441F35C();
  if (!(v2 ^ v3 | v1))
  {
    sub_1C4415F18();
    sub_1C4505908();
    *v0 = v4;
  }
}

void sub_1C458A3C0()
{
  sub_1C441581C();
  if ((v3 & 1) == 0 || (sub_1C441172C(), v4 == v5))
  {
LABEL_6:
    sub_1C442DD18();
    if (v2)
    {
      v6 = sub_1C456902C(&qword_1EC0B88A0, &unk_1C4F0DCA0);
      v7 = sub_1C4424F30(v6);
      sub_1C43FFC18(v7);
      if (v1)
      {
LABEL_8:
        v8 = sub_1C4412BE8();
        sub_1C45A321C(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = sub_1C456902C(&qword_1EC0B88A8, &qword_1C4F115E0);
    sub_1C43FEA6C(v11);
    goto LABEL_11;
  }

  sub_1C442B904();
  if (!v4)
  {
    sub_1C440A4D4();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1C458A474()
{
  sub_1C441581C();
  if ((v3 & 1) == 0 || (sub_1C441172C(), v4 == v5))
  {
LABEL_6:
    sub_1C442DD18();
    if (v2)
    {
      v6 = sub_1C456902C(&qword_1EC0B8C08, &unk_1C4F0E040);
      v7 = sub_1C4424F30(v6);
      sub_1C43FFC18(v7);
      if (v1)
      {
LABEL_8:
        v8 = sub_1C4412BE8();
        sub_1C4461B98(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = sub_1C456902C(&qword_1EC0B8C10, &qword_1C4F5D530);
    sub_1C43FEA6C(v11);
    goto LABEL_11;
  }

  sub_1C442B904();
  if (!v4)
  {
    sub_1C440A4D4();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1C458A528()
{
  sub_1C441581C();
  if ((v3 & 1) == 0 || (sub_1C441172C(), v4 == v5))
  {
LABEL_6:
    sub_1C442DD18();
    if (v2)
    {
      v6 = sub_1C456902C(&qword_1EC0B8938, &unk_1C4F0DD40);
      v7 = sub_1C44108A0(v6);
      sub_1C4418FDC(v7);
      if (v1)
      {
LABEL_8:
        v8 = sub_1C4412BE8();
        sub_1C445ECD8(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = sub_1C456902C(&qword_1EC0B8940, &unk_1C4F0EB40);
    sub_1C43FEA6C(v11);
    goto LABEL_11;
  }

  sub_1C442B904();
  if (!v4)
  {
    sub_1C440A4D4();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1C458A624()
{
  sub_1C441581C();
  if ((v3 & 1) == 0 || (sub_1C441172C(), v4 == v5))
  {
LABEL_6:
    sub_1C442DD18();
    if (v2)
    {
      v6 = sub_1C456902C(&qword_1EC0B8920, &qword_1C4F0DD28);
      v7 = sub_1C44108A0(v6);
      sub_1C4418FDC(v7);
      if (v1)
      {
LABEL_8:
        v8 = sub_1C4412BE8();
        sub_1C445ECB0(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = sub_1C456902C(&qword_1EC0B8928, &qword_1C4F0DD30);
    sub_1C43FEA6C(v11);
    goto LABEL_11;
  }

  sub_1C442B904();
  if (!v4)
  {
    sub_1C440A4D4();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1C458A708()
{
  sub_1C441581C();
  if ((v3 & 1) == 0 || (sub_1C441172C(), v4 == v5))
  {
LABEL_6:
    sub_1C442DD18();
    if (v2)
    {
      v6 = sub_1C456902C(&qword_1EC0B8A10, &qword_1C4F0DE30);
      v7 = sub_1C4404028(v6);
      sub_1C4418FDC(v7);
      if (v1)
      {
LABEL_8:
        v8 = sub_1C4412BE8();
        sub_1C455B518(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = sub_1C456902C(&qword_1EC0B8A18, &qword_1C4F0DE38);
    sub_1C43FEA6C(v11);
    goto LABEL_11;
  }

  sub_1C442B904();
  if (!v4)
  {
    sub_1C440A4D4();
    goto LABEL_6;
  }

  __break(1u);
}

unint64_t sub_1C458A930()
{
  result = qword_1EC0B8718;
  if (!qword_1EC0B8718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B8718);
  }

  return result;
}

unint64_t sub_1C458A984()
{
  result = qword_1EC0B8730;
  if (!qword_1EC0B8730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B8730);
  }

  return result;
}

uint64_t sub_1C458A9D8(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1C4572308(&qword_1EC0B8720, &qword_1C4F0D970);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C458AA50()
{
  result = qword_1EC0B8748;
  if (!qword_1EC0B8748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B8748);
  }

  return result;
}

unint64_t sub_1C458AAA4(uint64_t a1)
{
  result = sub_1C458AACC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C458AACC()
{
  result = qword_1EC0B8750;
  if (!qword_1EC0B8750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B8750);
  }

  return result;
}

unint64_t sub_1C458AB20(uint64_t a1)
{
  *(a1 + 8) = sub_1C458AB50();
  result = sub_1C458ABA4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1C458AB50()
{
  result = qword_1EC0B8758;
  if (!qword_1EC0B8758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B8758);
  }

  return result;
}

unint64_t sub_1C458ABA4()
{
  result = qword_1EC0B8760;
  if (!qword_1EC0B8760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B8760);
  }

  return result;
}

__n128 sub_1C458ABF8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for App.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C458ACFC()
{
  result = qword_1EC0B8768;
  if (!qword_1EC0B8768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B8768);
  }

  return result;
}

unint64_t sub_1C458AD54()
{
  result = qword_1EC0B8770;
  if (!qword_1EC0B8770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B8770);
  }

  return result;
}

unint64_t sub_1C458ADAC()
{
  result = qword_1EC0B8778;
  if (!qword_1EC0B8778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B8778);
  }

  return result;
}

void sub_1C458AE7C()
{
  sub_1C441581C();
  if ((v3 & 1) == 0 || (sub_1C441172C(), v4 == v5))
  {
LABEL_6:
    sub_1C442DD18();
    if (v2)
    {
      sub_1C456902C(&qword_1EC0B8CF8, &qword_1C4F0E130);
      v6 = sub_1C44182F4();
      sub_1C43FCFCC(v6);
      sub_1C4416D10(v7);
      if (v1)
      {
LABEL_8:
        v8 = sub_1C4412BE8();
        sub_1C45A3220(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = sub_1C456902C(&qword_1EC0B8D00, &qword_1C4F0E138);
    sub_1C43FEA6C(v11);
    goto LABEL_11;
  }

  sub_1C442B904();
  if (!v4)
  {
    sub_1C440A4D4();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1C458B1B8()
{
  sub_1C441581C();
  if ((v3 & 1) == 0 || (sub_1C441172C(), v4 == v5))
  {
LABEL_6:
    sub_1C442DD18();
    if (v2)
    {
      v6 = sub_1C456902C(&qword_1EC0B87A0, &unk_1C4F0DB90);
      v7 = sub_1C4424F30(v6);
      sub_1C43FFC18(v7);
      if (v1)
      {
LABEL_8:
        v8 = sub_1C4412BE8();
        sub_1C45A321C(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = sub_1C456902C(&qword_1EC0B87A8, &unk_1C4F0E930);
    sub_1C43FEA6C(v11);
    goto LABEL_11;
  }

  sub_1C442B904();
  if (!v4)
  {
    sub_1C440A4D4();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1C458B26C()
{
  sub_1C441581C();
  if ((v4 & 1) == 0 || (sub_1C441172C(), v5 == v6))
  {
LABEL_6:
    sub_1C442DD18();
    if (v3)
    {
      sub_1C456902C(&qword_1EC0B87B0, &unk_1C4F0DBA0);
      v7 = sub_1C44182F4();
      sub_1C43FCFCC(v7);
      sub_1C4416D10(v8);
      if (v1)
      {
LABEL_8:
        v9 = sub_1C4412BE8();
        sub_1C459C4FC(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else
    {
      v3 = MEMORY[0x1E69E7CC0];
      if (v1)
      {
        goto LABEL_8;
      }
    }

    memcpy((v3 + 32), (v0 + 32), 2 * v2);
    goto LABEL_11;
  }

  sub_1C442B904();
  if (!v5)
  {
    sub_1C440A4D4();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1C458B448()
{
  sub_1C441581C();
  if ((v3 & 1) == 0 || (sub_1C441172C(), v4 == v5))
  {
LABEL_6:
    sub_1C442DD18();
    if (v2)
    {
      v6 = sub_1C456902C(&qword_1EC0B8788, &qword_1C4F0DB78);
      v7 = sub_1C44108A0(v6);
      sub_1C4418FDC(v7);
      if (v1)
      {
LABEL_8:
        v8 = sub_1C4412BE8();
        sub_1C445ECB0(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = sub_1C456902C(&qword_1EC0B8790, &qword_1C4F0DB80);
    sub_1C43FEA6C(v11);
    goto LABEL_11;
  }

  sub_1C442B904();
  if (!v4)
  {
    sub_1C440A4D4();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1C458B504()
{
  sub_1C441581C();
  if ((v3 & 1) == 0 || (sub_1C441172C(), v4 == v5))
  {
LABEL_6:
    sub_1C442DD18();
    if (v2)
    {
      v6 = sub_1C456902C(&qword_1EC0B8880, &unk_1C4F0DC70);
      v7 = sub_1C44108A0(v6);
      sub_1C4418FDC(v7);
      if (v1)
      {
LABEL_8:
        v8 = sub_1C4412BE8();
        sub_1C445ECD8(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = sub_1C456902C(&qword_1EC0B8888, &qword_1C4F0E990);
    sub_1C43FEA6C(v11);
    goto LABEL_11;
  }

  sub_1C442B904();
  if (!v4)
  {
    sub_1C440A4D4();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1C458B5C0()
{
  sub_1C441581C();
  if ((v3 & 1) == 0 || (sub_1C441172C(), v4 == v5))
  {
LABEL_6:
    sub_1C442DD18();
    if (v2)
    {
      v6 = sub_1C456902C(&qword_1EC0B8840, &unk_1C4F0DC30);
      v7 = sub_1C4404028(v6);
      sub_1C4418FDC(v7);
      if (v1)
      {
LABEL_8:
        v8 = sub_1C4412BE8();
        sub_1C455B518(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = sub_1C456902C(&qword_1EC0B8848, &qword_1C4F40C80);
    sub_1C43FEA6C(v11);
    goto LABEL_11;
  }

  sub_1C442B904();
  if (!v4)
  {
    sub_1C440A4D4();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1C458B680()
{
  sub_1C441581C();
  if ((v3 & 1) == 0 || (sub_1C441172C(), v4 == v5))
  {
LABEL_6:
    sub_1C442DD18();
    if (v2)
    {
      v6 = sub_1C456902C(&qword_1EC0B8850, &unk_1C4F0DC40);
      v7 = sub_1C4404028(v6);
      sub_1C4418FDC(v7);
      if (v1)
      {
LABEL_8:
        v8 = sub_1C4412BE8();
        sub_1C45A3238(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = sub_1C456902C(&qword_1EC0B8858, &unk_1C4F40C70);
    sub_1C43FEA6C(v11);
    goto LABEL_11;
  }

  sub_1C442B904();
  if (!v4)
  {
    sub_1C440A4D4();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1C458B740()
{
  sub_1C441581C();
  if ((v3 & 1) == 0 || (sub_1C441172C(), v4 == v5))
  {
LABEL_6:
    sub_1C442DD18();
    if (v2)
    {
      v6 = sub_1C456902C(&qword_1EC0B87D8, &qword_1C4F0DBC8);
      v7 = sub_1C4424F30(v6);
      sub_1C43FFC18(v7);
      if (v1)
      {
LABEL_8:
        v8 = sub_1C4412BE8();
        sub_1C4461B98(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = sub_1C456902C(&qword_1EC0B87E0, &qword_1C4F0DBD0);
    sub_1C43FEA6C(v11);
    goto LABEL_11;
  }

  sub_1C442B904();
  if (!v4)
  {
    sub_1C440A4D4();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1C458B824()
{
  sub_1C441581C();
  if ((v3 & 1) == 0 || (sub_1C441172C(), v4 == v5))
  {
LABEL_6:
    sub_1C442DD18();
    if (v2)
    {
      v6 = sub_1C456902C(&qword_1EC0B8870, &unk_1C4F0DC60);
      v7 = sub_1C44148B0(v6);
      sub_1C442C33C(v7);
      if (v1)
      {
LABEL_8:
        v8 = sub_1C4412BE8();
        sub_1C4474DF4(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = sub_1C456902C(&qword_1EC0B8878, &unk_1C4F0E9E0);
    sub_1C43FEA6C(v11);
    goto LABEL_11;
  }

  sub_1C442B904();
  if (!v4)
  {
    sub_1C440A4D4();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1C458B8D8()
{
  sub_1C441581C();
  if ((v3 & 1) == 0 || (sub_1C441172C(), v4 == v5))
  {
LABEL_6:
    sub_1C442DD18();
    if (v2)
    {
      v6 = sub_1C456902C(&qword_1EC0B8820, &unk_1C4F0DC10);
      v7 = sub_1C44108A0(v6);
      sub_1C4418FDC(v7);
      if (v1)
      {
LABEL_8:
        v8 = sub_1C4412BE8();
        sub_1C445ECD8(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = sub_1C456902C(&qword_1EC0B8828, &qword_1C4F0E9C0);
    sub_1C43FEA6C(v11);
    goto LABEL_11;
  }

  sub_1C442B904();
  if (!v4)
  {
    sub_1C440A4D4();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1C458B994()
{
  sub_1C441581C();
  if ((v3 & 1) == 0 || (sub_1C441172C(), v4 == v5))
  {
LABEL_6:
    sub_1C442DD18();
    if (v2)
    {
      v6 = sub_1C456902C(&qword_1EC0B88C8, &qword_1C4F0DCC8);
      v7 = sub_1C44148B0(v6);
      sub_1C442C33C(v7);
      if (v1)
      {
LABEL_8:
        v8 = sub_1C4412BE8();
        sub_1C4474DF4(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = sub_1C456902C(&qword_1EC0B88D0, &unk_1C4F0DCD0);
    sub_1C43FEA6C(v11);
    goto LABEL_11;
  }

  sub_1C442B904();
  if (!v4)
  {
    sub_1C440A4D4();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1C458BC50()
{
  sub_1C441581C();
  if ((v3 & 1) == 0 || (sub_1C441172C(), v4 == v5))
  {
LABEL_6:
    sub_1C442DD18();
    if (v2)
    {
      v6 = sub_1C456902C(&qword_1EC0B8860, &qword_1C4F0DC50);
      v7 = sub_1C4404028(v6);
      sub_1C4418FDC(v7);
      if (v1)
      {
LABEL_8:
        v8 = sub_1C4412BE8();
        sub_1C45A3234(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = sub_1C456902C(&qword_1EC0B8868, &qword_1C4F0DC58);
    sub_1C43FEA6C(v11);
    goto LABEL_11;
  }

  sub_1C442B904();
  if (!v4)
  {
    sub_1C440A4D4();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1C458BD50()
{
  sub_1C441581C();
  if ((v3 & 1) == 0 || (sub_1C441172C(), v4 == v5))
  {
LABEL_6:
    sub_1C442DD18();
    if (v2)
    {
      v6 = sub_1C456902C(&qword_1EC0B88E0, &qword_1C4F0DCE0);
      v7 = sub_1C4424F30(v6);
      sub_1C43FFC18(v7);
      if (v1)
      {
LABEL_8:
        v8 = sub_1C4412BE8();
        sub_1C4461B98(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = sub_1C456902C(&qword_1EC0B88E8, &qword_1C4F0DCE8);
    sub_1C43FEA6C(v11);
    goto LABEL_11;
  }

  sub_1C442B904();
  if (!v4)
  {
    sub_1C440A4D4();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1C458BE94()
{
  sub_1C441B754();
  if ((v5 & 1) == 0 || (sub_1C441172C(), v6 == v7))
  {
LABEL_6:
    sub_1C441E1B8();
    if (v4)
    {
      sub_1C4422208(v8, v9, v10, v11, v12, v13);
      v14 = sub_1C44182F4();
      j__malloc_size(v14);
      sub_1C441EA34();
      v14[2] = v3;
      v14[3] = v15;
      if (v2)
      {
LABEL_8:
        v16 = sub_1C44099F4();
        v1(v16);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_8;
    }

    v17 = sub_1C440CAA0();
    memcpy(v17, v18, v19);
    goto LABEL_11;
  }

  sub_1C442B904();
  if (!v6)
  {
    sub_1C440A4D4();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1C458BF90()
{
  sub_1C441581C();
  if ((v3 & 1) == 0 || (sub_1C441172C(), v4 == v5))
  {
LABEL_6:
    sub_1C442DD18();
    if (v2)
    {
      v6 = sub_1C456902C(&qword_1EC0B8960, &qword_1C4F0DD68);
      v7 = sub_1C44108A0(v6);
      sub_1C4418FDC(v7);
      if (v1)
      {
LABEL_8:
        v8 = sub_1C4412BE8();
        sub_1C445ECD8(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = sub_1C456902C(&qword_1EC0B8968, &qword_1C4F0DD70);
    sub_1C43FEA6C(v11);
    goto LABEL_11;
  }

  sub_1C442B904();
  if (!v4)
  {
    sub_1C440A4D4();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1C458C04C()
{
  sub_1C441581C();
  if ((v3 & 1) == 0 || (sub_1C441172C(), v4 == v5))
  {
LABEL_6:
    sub_1C442DD18();
    if (v2)
    {
      v6 = sub_1C456902C(&qword_1EC0B8CE8, &unk_1C4F0E120);
      v7 = sub_1C44108A0(v6);
      sub_1C4418FDC(v7);
      if (v1)
      {
LABEL_8:
        v8 = sub_1C4412BE8();
        sub_1C445ECD8(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = sub_1C456902C(&qword_1EC0B8CF0, &unk_1C4F30C40);
    sub_1C43FEA6C(v11);
    goto LABEL_11;
  }

  sub_1C442B904();
  if (!v4)
  {
    sub_1C440A4D4();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1C458C188()
{
  sub_1C441581C();
  if ((v3 & 1) == 0 || (sub_1C441172C(), v4 == v5))
  {
LABEL_6:
    sub_1C442DD18();
    if (v2)
    {
      v6 = sub_1C456902C(&qword_1EC0B8B00, &qword_1C4F0DF30);
      v7 = sub_1C44108A0(v6);
      sub_1C4418FDC(v7);
      if (v1)
      {
LABEL_8:
        v8 = sub_1C4412BE8();
        sub_1C445ECD8(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = sub_1C456902C(&qword_1EC0B8B08, &qword_1C4F0DF38);
    sub_1C43FEA6C(v11);
    goto LABEL_11;
  }

  sub_1C442B904();
  if (!v4)
  {
    sub_1C440A4D4();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1C458C26C()
{
  sub_1C441581C();
  if ((v3 & 1) == 0 || (sub_1C441172C(), v4 == v5))
  {
LABEL_6:
    sub_1C442DD18();
    if (v2)
    {
      v6 = sub_1C456902C(&qword_1EC0B89B8, &qword_1C4F0DDD8);
      v7 = sub_1C4424F30(v6);
      sub_1C43FFC18(v7);
      if (v1)
      {
LABEL_8:
        v8 = sub_1C4412BE8();
        sub_1C45A321C(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = sub_1C456902C(&qword_1EC0B89C0, &unk_1C4F0DDE0);
    sub_1C43FEA6C(v11);
    goto LABEL_11;
  }

  sub_1C442B904();
  if (!v4)
  {
    sub_1C440A4D4();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1C458C35C()
{
  sub_1C441581C();
  if ((v3 & 1) == 0 || (sub_1C441172C(), v4 == v5))
  {
LABEL_6:
    sub_1C442DD18();
    if (v2)
    {
      v6 = sub_1C456902C(&qword_1EC0B8B60, &qword_1C4F0DF90);
      v7 = sub_1C44108A0(v6);
      sub_1C4418FDC(v7);
      if (v1)
      {
LABEL_8:
        v8 = sub_1C4412BE8();
        sub_1C445ECD8(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = sub_1C456902C(&qword_1EC0B8B68, &qword_1C4F0DF98);
    sub_1C43FEA6C(v11);
    goto LABEL_11;
  }

  sub_1C442B904();
  if (!v4)
  {
    sub_1C440A4D4();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1C458C8B8()
{
  sub_1C441581C();
  if ((v3 & 1) == 0 || (sub_1C441172C(), v4 == v5))
  {
LABEL_6:
    sub_1C442DD18();
    if (v2)
    {
      v6 = sub_1C456902C(&qword_1EC0B8A88, &unk_1C4F0EDB0);
      v7 = sub_1C44148B0(v6);
      sub_1C442C33C(v7);
      if (v1)
      {
LABEL_8:
        v8 = sub_1C4412BE8();
        sub_1C4474DF4(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = sub_1C456902C(&qword_1EC0B8A90, &unk_1C4F0DEC0);
    sub_1C43FEA6C(v11);
    goto LABEL_11;
  }

  sub_1C442B904();
  if (!v4)
  {
    sub_1C440A4D4();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1C458C9BC()
{
  sub_1C441B754();
  if ((v5 & 1) == 0 || (sub_1C441172C(), v6 == v7))
  {
LABEL_6:
    sub_1C441E1B8();
    if (v4)
    {
      sub_1C4422208(v8, v9, v10, v11, v12, v13);
      v14 = swift_allocObject();
      v15 = j__malloc_size(v14);
      v14[2] = v3;
      v14[3] = 2 * ((v15 - 32) / 24);
      if (v2)
      {
LABEL_8:
        v16 = sub_1C44099F4();
        v1(v16);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_8;
    }

    v17 = sub_1C440CAA0();
    memcpy(v17, v18, v19);
    goto LABEL_11;
  }

  sub_1C442B904();
  if (!v6)
  {
    sub_1C440A4D4();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1C458CA88()
{
  sub_1C441581C();
  if ((v3 & 1) == 0 || (sub_1C441172C(), v4 == v5))
  {
LABEL_6:
    sub_1C442DD18();
    if (v2)
    {
      v6 = sub_1C456902C(&qword_1EC0B8A70, &unk_1C4F0DEA0);
      v7 = sub_1C44148B0(v6);
      sub_1C442C33C(v7);
      if (v1)
      {
LABEL_8:
        v8 = sub_1C4412BE8();
        sub_1C4474DF4(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = sub_1C456902C(&qword_1EC0B8A78, &qword_1C4F5EA00);
    sub_1C43FEA6C(v11);
    goto LABEL_11;
  }

  sub_1C442B904();
  if (!v4)
  {
    sub_1C440A4D4();
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_1C458CB7C(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_1C456902C(&qword_1EC0B87E8, &qword_1C4F0DBD8);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_1C445ECD8((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_1C456902C(&qword_1EC0B87F0, &unk_1C4F0DBE0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1C458CD80()
{
  sub_1C441581C();
  if ((v3 & 1) == 0 || (sub_1C441172C(), v4 == v5))
  {
LABEL_6:
    sub_1C442DD18();
    if (v2)
    {
      v6 = sub_1C456902C(&qword_1EC0B8D28, &qword_1C4F0E160);
      v7 = sub_1C44108A0(v6);
      sub_1C4418FDC(v7);
      if (v1)
      {
LABEL_8:
        v8 = sub_1C4412BE8();
        sub_1C445ECD8(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = sub_1C456902C(&qword_1EC0B8D30, &qword_1C4F0E168);
    sub_1C43FEA6C(v11);
    goto LABEL_11;
  }

  sub_1C442B904();
  if (!v4)
  {
    sub_1C440A4D4();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1C458CE3C()
{
  sub_1C441581C();
  if ((v3 & 1) == 0 || (sub_1C441172C(), v4 == v5))
  {
LABEL_6:
    sub_1C442DD18();
    if (v2)
    {
      v6 = sub_1C456902C(&qword_1EC0B8800, &unk_1C4F0DBF0);
      v7 = sub_1C4424F30(v6);
      sub_1C43FFC18(v7);
      if (v1)
      {
LABEL_8:
        v8 = sub_1C4412BE8();
        sub_1C45A321C(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = sub_1C456902C(&qword_1EC0B8808, &qword_1C4F3C4B0);
    sub_1C43FEA6C(v11);
    goto LABEL_11;
  }

  sub_1C442B904();
  if (!v4)
  {
    sub_1C440A4D4();
    goto LABEL_6;
  }

  __break(1u);
}

void *sub_1C458CEF0(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_1C456902C(&qword_1EC0B8CC8, &qword_1C4F0E100);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_1C4463694();
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_1C456902C(&qword_1EC0B8CD0, &qword_1C4F0E108);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1C458D008()
{
  sub_1C441581C();
  if ((v3 & 1) == 0 || (sub_1C441172C(), v4 == v5))
  {
LABEL_6:
    sub_1C442DD18();
    if (v2)
    {
      v6 = sub_1C456902C(&qword_1EC0B8CA8, &qword_1C4F0E0E0);
      v7 = sub_1C44108A0(v6);
      sub_1C4418FDC(v7);
      if (v1)
      {
LABEL_8:
        v8 = sub_1C4412BE8();
        sub_1C445ECD8(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = sub_1C456902C(&qword_1EC0B8CB0, &qword_1C4F0E0E8);
    sub_1C43FEA6C(v11);
    goto LABEL_11;
  }

  sub_1C442B904();
  if (!v4)
  {
    sub_1C440A4D4();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1C458D0C4()
{
  sub_1C441581C();
  if ((v3 & 1) == 0 || (sub_1C441172C(), v4 == v5))
  {
LABEL_6:
    sub_1C442DD18();
    if (v2)
    {
      v6 = sub_1C456902C(&qword_1EC0B8C98, &qword_1C4F0E0D0);
      v7 = sub_1C4404028(v6);
      sub_1C4418FDC(v7);
      if (v1)
      {
LABEL_8:
        v8 = sub_1C4412BE8();
        sub_1C45A3234(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = sub_1C456902C(&qword_1EC0B8CA0, &qword_1C4F0E0D8);
    sub_1C43FEA6C(v11);
    goto LABEL_11;
  }

  sub_1C442B904();
  if (!v4)
  {
    sub_1C440A4D4();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1C458D184()
{
  sub_1C441581C();
  if ((v3 & 1) == 0 || (sub_1C441172C(), v4 == v5))
  {
LABEL_6:
    sub_1C442DD18();
    if (v2)
    {
      sub_1C456902C(&qword_1EC0B8CB8, &qword_1C4F0E0F0);
      v6 = sub_1C44182F4();
      sub_1C43FCFCC(v6);
      sub_1C4416D10(v7);
      if (v1)
      {
LABEL_8:
        v8 = sub_1C4412BE8();
        sub_1C45A3220(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = sub_1C456902C(&qword_1EC0B8CC0, &qword_1C4F0E0F8);
    sub_1C43FEA6C(v11);
    goto LABEL_11;
  }

  sub_1C442B904();
  if (!v4)
  {
    sub_1C440A4D4();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1C458D244()
{
  sub_1C441581C();
  if ((v3 & 1) == 0 || (sub_1C441172C(), v4 == v5))
  {
LABEL_6:
    sub_1C442DD18();
    if (v2)
    {
      v6 = sub_1C456902C(&qword_1EC0B8C88, &qword_1C4F0E0C0);
      v7 = sub_1C44148B0(v6);
      sub_1C442C33C(v7);
      if (v1)
      {
LABEL_8:
        v8 = sub_1C4412BE8();
        sub_1C4474DF4(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = sub_1C456902C(&qword_1EC0B8C90, &qword_1C4F0E0C8);
    sub_1C43FEA6C(v11);
    goto LABEL_11;
  }

  sub_1C442B904();
  if (!v4)
  {
    sub_1C440A4D4();
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_1C458D364(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_1C456902C(&qword_1EC0B89D0, &qword_1C4F0DDF0);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_1C445ECD8((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_1C456902C(&qword_1EC0B89D8, &qword_1C4F0DDF8);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1C458D53C()
{
  sub_1C441581C();
  if ((v3 & 1) == 0 || (sub_1C441172C(), v4 == v5))
  {
LABEL_6:
    sub_1C442DD18();
    if (v2)
    {
      sub_1C456902C(&qword_1EC0B8890, &unk_1C4F0DC90);
      v6 = sub_1C44182F4();
      sub_1C43FCFCC(v6);
      sub_1C4416D10(v7);
      if (v1)
      {
LABEL_8:
        v8 = sub_1C4412BE8();
        sub_1C45A3220(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = sub_1C456902C(&qword_1EC0B8898, &unk_1C4F30C50);
    sub_1C43FEA6C(v11);
    goto LABEL_11;
  }

  sub_1C442B904();
  if (!v4)
  {
    sub_1C440A4D4();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1C458D6B0()
{
  sub_1C441581C();
  if ((v3 & 1) == 0 || (sub_1C441172C(), v4 == v5))
  {
LABEL_6:
    sub_1C442DD18();
    if (v2)
    {
      v6 = sub_1C456902C(&qword_1EC0B8C68, &unk_1C4F0E0A0);
      v7 = sub_1C44108A0(v6);
      sub_1C4418FDC(v7);
      if (v1)
      {
LABEL_8:
        v8 = sub_1C4412BE8();
        sub_1C445ECD8(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = sub_1C456902C(&qword_1EC0B8C70, &qword_1C4F0EF80);
    sub_1C43FEA6C(v11);
    goto LABEL_11;
  }

  sub_1C442B904();
  if (!v4)
  {
    sub_1C440A4D4();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1C458D76C()
{
  sub_1C441581C();
  if ((v3 & 1) == 0 || (sub_1C441172C(), v4 == v5))
  {
LABEL_6:
    sub_1C442DD18();
    if (v2)
    {
      v6 = sub_1C456902C(&qword_1EC0B8C58, &unk_1C4F0E090);
      v7 = sub_1C44108A0(v6);
      sub_1C4418FDC(v7);
      if (v1)
      {
LABEL_8:
        v8 = sub_1C4412BE8();
        sub_1C445ECD8(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = sub_1C456902C(&qword_1EC0B8C60, &unk_1C4F0EF70);
    sub_1C43FEA6C(v11);
    goto LABEL_11;
  }

  sub_1C442B904();
  if (!v4)
  {
    sub_1C440A4D4();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1C458D828()
{
  sub_1C441581C();
  if ((v3 & 1) == 0 || (sub_1C441172C(), v4 == v5))
  {
LABEL_6:
    sub_1C442DD18();
    if (v2)
    {
      v6 = sub_1C456902C(&qword_1EC0B8C48, &qword_1C4F0E080);
      v7 = sub_1C4404028(v6);
      sub_1C4418FDC(v7);
      if (v1)
      {
LABEL_8:
        v8 = sub_1C4412BE8();
        sub_1C455B518(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = sub_1C456902C(&qword_1EC0B8C50, &qword_1C4F0E088);
    sub_1C43FEA6C(v11);
    goto LABEL_11;
  }

  sub_1C442B904();
  if (!v4)
  {
    sub_1C440A4D4();
    goto LABEL_6;
  }

  __break(1u);
}