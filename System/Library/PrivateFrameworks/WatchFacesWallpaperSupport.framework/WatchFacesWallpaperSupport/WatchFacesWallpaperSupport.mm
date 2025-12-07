void *sub_1D96B4B34@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1D96B4B50()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D96B4B88(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

_OWORD *sub_1D96B4B98(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1D96B4BB8()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 112, 7);
}

uint64_t sub_1D96B4C18()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 112, 7);
}

uint64_t sub_1D96B4C78(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1D96DA500();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1D96B4D24(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1D96DA500();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D96B4DC8()
{
  MEMORY[0x1DA7360C0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D96B4E00()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D96B4E3C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1D96B4E8C(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 24) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1D96B4EE4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 32);
  return result;
}

uint64_t sub_1D96B4F2C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 32) = v2;
  return result;
}

float sub_1D96B4F70@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = *(v3 + 40);
  *a2 = result;
  return result;
}

uint64_t sub_1D96B4FB8(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 40) = v2;
  return result;
}

uint64_t sub_1D96B5004@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 88);
  return result;
}

uint64_t sub_1D96B504C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 88) = v2;
  return result;
}

uint64_t sub_1D96B5090()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D96B50CC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1D96B511C(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 24) = v2;
  return swift_unknownObjectWeakAssign();
}

id sub_1D96B5174@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = *(*a1 + 32);
  if (result)
  {
    result = [result isPaused];
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1D96B51B4(unsigned __int8 *a1, uint64_t a2)
{
  result = *(*a2 + 32);
  if (result)
  {
    return [result setPaused_];
  }

  __break(1u);
  return result;
}

id sub_1D96B51D8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *(*a1 + 32);
  if (result)
  {
    result = [result preferredFramesPerSecond];
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1D96B5218(void *a1, uint64_t a2)
{
  result = *(*a2 + 32);
  if (result)
  {
    return [result setPreferredFramesPerSecond_];
  }

  __break(1u);
  return result;
}

id sub_1D96B523C@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  result = *(*a1 + 32);
  if (result)
  {
    result = [result preferredFrameRateRange];
    *a2 = v4;
    a2[1] = v5;
    a2[2] = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1D96B5280(_DWORD *a1, uint64_t a2, double a3, double a4, double a5)
{
  result = *(*a2 + 32);
  if (result)
  {
    LODWORD(a4) = a1[1];
    LODWORD(a5) = a1[2];
    LODWORD(a3) = *a1;
    return [result setPreferredFrameRateRange_];
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D96B52B4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D96B52FC()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D96B5334()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D96B536C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  return sub_1D96BE658(v3 + 32, a2, &qword_1ECB3EC68, &unk_1D96DC150);
}

uint64_t sub_1D96B53CC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D96B5448@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  return sub_1D96BE658(v3 + 32, a2, &qword_1ECB3EC68, &unk_1D96DC150);
}

uint64_t sub_1D96B54A4(uint64_t a1, uint64_t *a2)
{
  sub_1D96BE658(a1, v5, &qword_1ECB3EC68, &unk_1D96DC150);
  v3 = *a2;
  swift_beginAccess();
  sub_1D96BDA2C(v5, v3 + 32);
  return swift_endAccess();
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t static WallpaperMetalCoordination.EditingCoordinator.LookSelectionStyle.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  if (!v3)
  {
    if (!v4)
    {
      swift_bridgeObjectRelease_n();
      return 1;
    }

    return 0;
  }

  if (!v4)
  {
    return 0;
  }

  return sub_1D96B5604(v3, v4);
}

uint64_t sub_1D96B5604(uint64_t a1, uint64_t a2)
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
      if (!v5 && (sub_1D96DAAE0() & 1) == 0)
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

uint64_t sub_1D96B5694(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  if (!v3)
  {
    if (!v4)
    {
      swift_bridgeObjectRelease_n();
      return 1;
    }

    return 0;
  }

  if (!v4)
  {
    return 0;
  }

  return sub_1D96B5604(v3, v4);
}

uint64_t sub_1D96B56F4()
{
  v0 = sub_1D96DA5D0();
  __swift_allocate_value_buffer(v0, qword_1ECB3EC28);
  __swift_project_value_buffer(v0, qword_1ECB3EC28);
  return sub_1D96DA5C0();
}

uint64_t WallpaperMetalCoordination.EditingCoordinator.__allocating_init(identifier:rendering:environment:initialLookIdentifier:lookSelectionStyle:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t *a8)
{
  v16 = swift_allocObject();
  WallpaperMetalCoordination.EditingCoordinator.init(identifier:rendering:environment:initialLookIdentifier:lookSelectionStyle:)(a1, a2, a3, a4, a5, a6, a7, a8);
  return v16;
}

uint64_t WallpaperMetalCoordination.EditingCoordinator.init(identifier:rendering:environment:initialLookIdentifier:lookSelectionStyle:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t *a8)
{
  v9 = v8;
  *(v8 + 32) = 0u;
  *(v8 + 48) = 0u;
  v13 = (v8 + 32);
  v14 = *a8;
  v13[17] = 0u;
  v13[18] = 0u;
  *(v13 + 76) = 0;
  *(v13 + 308) = -1;
  *(v13 + 39) = 0;
  *(v13 + 40) = 0;
  *(v13 + 328) = 1;
  *(v13 + 43) = 0;
  *(v13 + 44) = 0;
  *(v13 + 42) = 0x3FF0000000000000;
  *(v13 + 6) = a1;
  *(v13 + 7) = a2;
  *(v13 - 2) = a3;
  *(v13 - 1) = a4;
  *(v13 + 15) = a6;
  *(v13 + 16) = a7;
  *(v13 + 4) = 0;
  *(v13 + 5) = v14;
  v16 = qword_1EDB95EA8;

  if (v16 != -1)
  {
    swift_once();
  }

  v17 = qword_1EDB969E8;
  if (!qword_1EDB969E8)
  {
    goto LABEL_8;
  }

  v18 = *(qword_1EDB969E8 + OBJC_IVAR____TtCO26WatchFacesWallpaperSupport26WallpaperMetalCoordination9Resources_device);
  *(v9 + 96) = v18;
  *(v9 + 104) = *(v17 + OBJC_IVAR____TtCO26WatchFacesWallpaperSupport26WallpaperMetalCoordination9Resources_commandQueue);
  v41 = a6;
  v19 = v14;
  v20 = a7;
  v21 = *(a4 + 8);
  swift_unknownObjectRetain_n();
  swift_unknownObjectRetain();

  v22 = v21(a3, a4);
  v23 = (*(a4 + 16))(a3, a4);
  v24 = objc_allocWithZone(type metadata accessor for WallpaperMetalView(0));
  v25 = sub_1D96BEB0C(v18, v22, v23);
  *(v9 + 112) = v25;
  v25[OBJC_IVAR____TtC26WatchFacesWallpaperSupport18WallpaperMetalView_shouldDrawAutomatically] = 0;
  *&v42 = v41;
  *(&v42 + 1) = v20;
  v43 = 0;
  v44[0] = 0;
  *(v44 + 5) = 0;

  v26 = swift_unknownObjectRetain();
  sub_1D96C7CA8(v26, &v42, v45);
  v27 = v45[4];
  *(v9 + 248) = v45[5];
  v28 = v45[7];
  *(v9 + 264) = v45[6];
  *(v9 + 280) = v28;
  v29 = v45[0];
  *(v9 + 184) = v45[1];
  v30 = v45[3];
  *(v9 + 200) = v45[2];
  *(v9 + 216) = v30;
  *(v9 + 232) = v27;
  *(v9 + 296) = v46;
  *(v9 + 168) = v29;
  v31 = MEMORY[0x1E69E7CC0];
  *(v9 + 120) = sub_1D96BDF24(MEMORY[0x1E69E7CC0], &qword_1ECB3EF68, &qword_1D96DC4E8);
  *(v9 + 128) = sub_1D96BD714(v31);
  *(v9 + 136) = sub_1D96BDF24(v31, &qword_1ECB3EF60, &qword_1D96DC4E0);
  *(v9 + 144) = sub_1D96BD81C(v31);

  if (!v19)
  {

LABEL_10:

    swift_unknownObjectRelease();

    v34 = *(v9 + 112);
    v35 = swift_allocObject();
    swift_weakInit();
    v36 = &v34[OBJC_IVAR____TtC26WatchFacesWallpaperSupport18WallpaperMetalView_drawingHandler];
    v37 = *&v34[OBJC_IVAR____TtC26WatchFacesWallpaperSupport18WallpaperMetalView_drawingHandler];
    v38 = *&v34[OBJC_IVAR____TtC26WatchFacesWallpaperSupport18WallpaperMetalView_drawingHandler + 8];
    *v36 = sub_1D96BD938;
    v36[1] = v35;
    v39 = v34;

    sub_1D96B4B88(v37, v38);

    return v9;
  }

  v32 = v21(a3, a4);
  if ((v32 - 70) <= 0x2D && ((1 << (v32 - 70)) & 0x200000000C03) != 0)
  {
    goto LABEL_10;
  }

  *&v42 = 0;
  *(&v42 + 1) = 0xE000000000000000;
  sub_1D96DA9A0();
  MEMORY[0x1DA735440](0x6F66206C65786970, 0xED00002074616D72);
  v47 = v21(a3, a4);
  type metadata accessor for MTLPixelFormat(0);
  sub_1D96DAA30();
  v13 = &v42;
  MEMORY[0x1DA735440](0x1000000000000052, 0x80000001D96DE8E0);
  sub_1D96DAA40();
  __break(1u);
LABEL_8:

  sub_1D96BAB7C();
  swift_allocError();
  *v33 = 0;
  swift_willThrow();
  swift_unknownObjectRelease();
  sub_1D96BE544(v13, &qword_1ECB3EC68, &unk_1D96DC150);

  sub_1D96BABD0(*(v9 + 304), *(v9 + 312), *(v9 + 320), *(v9 + 328), *(v13 + 76) | (*(v13 + 308) << 32));

  type metadata accessor for WallpaperMetalCoordination.EditingCoordinator();
  swift_deallocPartialClassInstance();
  return v9;
}

uint64_t sub_1D96B5D4C(void *a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D96B7450(a1);
  }

  return result;
}

uint64_t sub_1D96B5DAC(void *a1, uint64_t a2, unint64_t a3)
{
  v5 = v3;
  if (qword_1ECB3EC20 != -1)
  {
    swift_once();
  }

  v9 = sub_1D96DA5D0();
  __swift_project_value_buffer(v9, qword_1ECB3EC28);

  v10 = sub_1D96DA5B0();
  v11 = sub_1D96DA870();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v90[0] = v13;
    *v12 = 136446210;
    *(v12 + 4) = sub_1D96BB28C(a2, a3, v90);
    _os_log_impl(&dword_1D96B3000, v10, v11, "populating views for ”%{public}s”", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    MEMORY[0x1DA736010](v13, -1, -1);
    MEMORY[0x1DA736010](v12, -1, -1);
  }

  [a1 bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v86 = a1;
  if (*(v5 + 360))
  {
    v22 = [objc_opt_self() mainScreen];
    [v22 nativeScale];
    v24 = v23;

    v94.origin.x = v15;
    v94.origin.y = v17;
    v94.size.width = v19;
    v94.size.height = v21;
    v25 = ceil(v24 * CGRectGetWidth(v94));
    v95.origin.x = v15;
    v95.origin.y = v17;
    v95.size.width = v19;
    v95.size.height = v21;
    v26 = ceil(v24 * CGRectGetHeight(v95));
    *(v5 + 344) = v25;
    *(v5 + 352) = v26;
    *(v5 + 360) = 0;
  }

  else
  {
    v25 = *(v5 + 344);
    v26 = *(v5 + 352);
  }

  swift_beginAccess();
  sub_1D96BE658(v5 + 32, v90, &qword_1ECB3EC68, &unk_1D96DC150);
  v27 = v91;
  sub_1D96BE544(v90, &qword_1ECB3EC68, &unk_1D96DC150);
  v87 = a2;
  if (v27)
  {
    goto LABEL_9;
  }

  v41 = *(v5 + 16);
  v42 = *(v5 + 24);
  result = (*(v42 + 24))(v41, v42);
  if (result)
  {
    v44 = [*(v5 + 104) commandBuffer];
    if (!v44)
    {
      sub_1D96BAB7C();
      swift_allocError();
      *v71 = 1;
      return swift_willThrow();
    }

    v45 = v44;
    v46 = sub_1D96DA690();
    [v45 setLabel_];

    result = swift_unknownObjectRetain();
  }

  else
  {
    v45 = 0;
  }

  if (v25 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_61;
  }

  if (v25 >= 9.22337204e18)
  {
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  if ((*&v25 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v26 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_62;
  }

  if (v26 <= -9.22337204e18)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  if (v26 >= 9.22337204e18)
  {
LABEL_64:
    __break(1u);
    return result;
  }

  v82 = a3;
  v48 = *(v5 + 88);
  v47 = *(v5 + 96);
  v49 = v45;
  v50 = *(v5 + 80);
  v84 = *(v42 + 40);
  v91 = v41;
  v92 = v42;
  __swift_allocate_boxed_opaque_existential_1(v90);
  swift_unknownObjectRetain();

  v84(v47, v50, v48, v25, v26, v49, v41, v42);
  if (v4)
  {
    swift_unknownObjectRelease();
    return __swift_deallocate_boxed_opaque_existential_1(v90);
  }

  swift_beginAccess();
  sub_1D96BDA2C(v90, v5 + 32);
  swift_endAccess();
  if (v49)
  {
    [v49 commit];
  }

  v70 = [*(v5 + 112) layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setDrawableSize_];

  sub_1D96B7A74();
  swift_unknownObjectRelease();
  a3 = v83;
LABEL_9:
  v28 = v86;
  v29 = &_swift_FORCE_LOAD___swiftMetal___WatchFacesWallpaperSupport;
  if (*(v5 + 72))
  {
    swift_beginAccess();
    v30 = *(v5 + 120);
    if (*(v30 + 16))
    {

      v31 = sub_1D96BB834(a2, a3);
      if (v32)
      {
        v33 = *(*(v30 + 56) + 8 * v31);

        v34 = sub_1D96DA5B0();
        v35 = sub_1D96DA870();

        if (os_log_type_enabled(v34, v35))
        {
          v85 = v33;
          v36 = swift_slowAlloc();
          v37 = swift_slowAlloc();
          v89[0] = v37;
          *v36 = 136446210;
          *(v36 + 4) = sub_1D96BB28C(a2, a3, v89);
          _os_log_impl(&dword_1D96B3000, v34, v35, "reusing snapshot layer for “%{public}s”", v36, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v37);
          v38 = v37;
          v28 = v86;
          MEMORY[0x1DA736010](v38, -1, -1);
          v39 = v36;
          v33 = v85;
          MEMORY[0x1DA736010](v39, -1, -1);
        }

        v40 = v33;
        goto LABEL_34;
      }
    }

    v51 = sub_1D96DA5B0();
    v52 = sub_1D96DA870();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v89[0] = v54;
      *v53 = 136446210;
      *(v53 + 4) = sub_1D96BB28C(a2, a3, v89);
      _os_log_impl(&dword_1D96B3000, v51, v52, "creating snapshot layer for “%{public}s”", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v54);
      v55 = v54;
      v28 = v86;
      MEMORY[0x1DA736010](v55, -1, -1);
      MEMORY[0x1DA736010](v53, -1, -1);
    }

    v56 = [objc_allocWithZone(MEMORY[0x1E6979398]) init];
    [v56 setAnchorPoint_];
    v57 = qword_1EDB95BE0;
    v40 = v56;
    if (v57 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB3F200, &qword_1D96DC160);
    v58 = sub_1D96DA620();
    [v40 setActions_];

    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v88[0] = *(v5 + 120);
    *(v5 + 120) = 0x8000000000000000;
    sub_1D96BCC14(v40, a2, a3, isUniquelyReferenced_nonNull_native, &qword_1ECB3EF68, &qword_1D96DC4E8);

    *(v5 + 120) = v88[0];
    swift_endAccess();
LABEL_34:
    v60 = 256;
    if (*(v5 + 296))
    {
      v60 = 264;
    }

    v61 = *(v5 + v60);
    swift_beginAccess();
    v62 = *(v5 + 128);
    if (*(v62 + 16) && (v63 = sub_1D96BB8AC(v61), (v64 & 1) != 0))
    {
      v65 = *(*(v62 + 56) + 8 * v63);
      v29 = &_swift_FORCE_LOAD___swiftMetal___WatchFacesWallpaperSupport;
      if (*(v65 + 16))
      {

        v66 = sub_1D96BB834(a2, a3);
        if (v67)
        {
          v68 = *(*(v65 + 56) + 8 * v66);

          v88[0] = v68;
          type metadata accessor for CGImage(0);
          v69 = sub_1D96DAAD0();

          goto LABEL_48;
        }
      }

      v69 = 0;
    }

    else
    {
      v69 = 0;
      v29 = &_swift_FORCE_LOAD___swiftMetal___WatchFacesWallpaperSupport;
    }

LABEL_48:
    [v40 setContents_];
    swift_unknownObjectRelease();
    [v40 v29[85]];
    v72 = [v28 layer];
    [v72 addSublayer_];

    swift_beginAccess();

    v73 = v28;
    v74 = swift_isUniquelyReferenced_nonNull_native();
    v93 = *(v5 + 136);
    *(v5 + 136) = 0x8000000000000000;
    sub_1D96BCC14(v73, v87, a3, v74, &qword_1ECB3EF60, &qword_1D96DC4E0);

    *(v5 + 136) = v93;
    swift_endAccess();
    if (*(v5 + 152) == v87 && *(v5 + 160) == a3 || (sub_1D96DAAE0() & 1) != 0)
    {
      v75 = v29;

      v76 = sub_1D96DA5B0();
      v77 = a3;
      v78 = sub_1D96DA870();

      if (os_log_type_enabled(v76, v78))
      {
        v79 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        v88[0] = v80;
        *v79 = 136446210;
        *(v79 + 4) = sub_1D96BB28C(v87, v77, v88);
        _os_log_impl(&dword_1D96B3000, v76, v78, "adding main view to background for “%{public}s”", v79, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v80);
        MEMORY[0x1DA736010](v80, -1, -1);
        MEMORY[0x1DA736010](v79, -1, -1);
      }

      [v73 addSubview_];
      v29 = v75;
    }

    else
    {
    }

    goto LABEL_55;
  }

  [v86 addSubview_];
LABEL_55:
  v81 = *(v5 + 112);
  [v81 v29[85]];
  *(v81 + OBJC_IVAR____TtC26WatchFacesWallpaperSupport18WallpaperMetalView_shouldDrawAutomatically) = 1;
  if (*(v5 + 80) == *(v5 + 152) && *(v5 + 88) == *(v5 + 160))
  {
    return [v81 setNeedsDisplay];
  }

  result = sub_1D96DAAE0();
  if (result)
  {
    return [v81 setNeedsDisplay];
  }

  return result;
}

uint64_t sub_1D96B6968(void *a1, void *a2)
{
  v5 = *(v2 + 160);
  *&v54[0] = *(v2 + 152);
  *(&v54[0] + 1) = v5;
  memset(&v54[1], 0, 21);
  swift_unknownObjectRetain();

  sub_1D96C7CA8(a1, v54, &v56);
  if (!a2)
  {
    if (*(v2 + 296) != 1)
    {
      goto LABEL_8;
    }

    v10 = *(v2 + 280);
    v9 = *(v2 + 288);
    if (CFAbsoluteTimeGetCurrent() > v9 + v10)
    {
      goto LABEL_8;
    }

    v7 = *(v2 + 256);
    v11 = *(v2 + 264);
    v12 = *(v2 + 272);
    v13 = *(v2 + 280);
    v14 = *(v2 + 288);
    v15 = *(v2 + 296);
    v23 = *(&v61 + 1);
    v24 = *(&v62 + 1);
    v47 = v63;
    v49 = v62;
    v46 = *(&v63 + 1);
    v45 = v64;
    sub_1D96BDB84(v7, v11, v12, v13, v14, v15);
    sub_1D96BDB84(v7, v11, v12, v13, v14, v15);
    sub_1D96BDB78(v23, v49, v24, v47, v46, v45);
    *(&v61 + 1) = v7;
    *&v62 = v11;
    *(&v62 + 1) = v12;
    *&v63 = v13;
    *(&v63 + 1) = v14;
LABEL_38:
    v64 = v15;
    goto LABEL_39;
  }

  v6 = 256;
  if (*(v2 + 296))
  {
    v6 = 264;
  }

  v7 = *(v2 + v6);
  v8 = a2;
  if ([a1 deviceOrientation] != v7)
  {
    v48 = v2;
    if (qword_1ECB3EC20 != -1)
    {
      swift_once();
    }

    v16 = sub_1D96DA5D0();
    __swift_project_value_buffer(v16, qword_1ECB3EC28);
    swift_unknownObjectRetain();
    v17 = sub_1D96DA5B0();
    v18 = sub_1D96DA870();
    swift_unknownObjectRelease();
    if (!os_log_type_enabled(v17, v18))
    {

LABEL_35:
      v11 = [a1 deviceOrientation];
      v12 = [v8 timingFunction];
      if (!v12)
      {
        v12 = [objc_opt_self() functionWithName_];
      }

      Current = CFAbsoluteTimeGetCurrent();
      [v8 delay];
      v32 = Current + v31;
      [v8 duration];
      v34 = v33;
      v13 = *&v32;
      v14 = v33;
      v35 = v12;
      [v8 delay];
      v37 = v36;
      [v8 duration];
      sub_1D96BF0F8(v37 + v38);
      v2 = v48;

      sub_1D96BDB78(*(&v61 + 1), v62, *(&v62 + 1), v63, *(&v63 + 1), v64);
      *(&v61 + 1) = v7;
      *&v62 = v11;
      *(&v62 + 1) = v12;
      *&v63 = v32;
      *(&v63 + 1) = v34;
      v15 = 1;
      goto LABEL_38;
    }

    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *&v54[0] = v20;
    *v19 = 136446466;
    if (v7 > 2)
    {
      if (v7 != 3)
      {
        if (v7 == 4)
        {
          v22 = 0x70616373646E614CLL;
          v21 = 0xEE007466654C2065;
          goto LABEL_24;
        }

        goto LABEL_21;
      }

      v22 = 0x70616373646E614CLL;
      v21 = 0xEF74686769522065;
    }

    else
    {
      if (v7 != 1)
      {
        if (v7 == 2)
        {
          v21 = 0x80000001D96DE980;
          v22 = 0xD000000000000014;
          goto LABEL_24;
        }

LABEL_21:
        v22 = 0xD000000000000013;
        v21 = 0x80000001D96DE960;
        goto LABEL_24;
      }

      v21 = 0xE800000000000000;
      v22 = 0x7469617274726F50;
    }

LABEL_24:
    v25 = sub_1D96BB28C(v22, v21, v54);

    *(v19 + 4) = v25;
    *(v19 + 12) = 2082;
    v26 = [a1 deviceOrientation];
    if (v26 > 2)
    {
      if (v26 == 3)
      {
        v28 = 0x70616373646E614CLL;
        v27 = 0xEF74686769522065;
        goto LABEL_34;
      }

      if (v26 == 4)
      {
        v28 = 0x70616373646E614CLL;
        v27 = 0xEE007466654C2065;
        goto LABEL_34;
      }
    }

    else
    {
      if (v26 == 1)
      {
        v27 = 0xE800000000000000;
        v28 = 0x7469617274726F50;
        goto LABEL_34;
      }

      if (v26 == 2)
      {
        v27 = 0x80000001D96DE980;
        v28 = 0xD000000000000014;
LABEL_34:
        v29 = sub_1D96BB28C(v28, v27, v54);

        *(v19 + 14) = v29;
        _os_log_impl(&dword_1D96B3000, v17, v18, "🔄 editor starting orientation transition %{public}s → %{public}s", v19, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1DA736010](v20, -1, -1);
        MEMORY[0x1DA736010](v19, -1, -1);

        goto LABEL_35;
      }
    }

    v28 = 0xD000000000000013;
    v27 = 0x80000001D96DE960;
    goto LABEL_34;
  }

LABEL_8:
  [*(v2 + 112) setNeedsDisplay];
  v7 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = -1;
LABEL_39:
  v50[6] = v62;
  v50[7] = v63;
  v51 = v64;
  v50[2] = v58;
  v50[3] = v59;
  v50[4] = v60;
  v50[5] = v61;
  v50[0] = v56;
  v50[1] = v57;
  v39 = *(v2 + 248);
  v40 = *(v2 + 280);
  v52[6] = *(v2 + 264);
  v52[7] = v40;
  v53 = *(v2 + 296);
  v41 = *(v2 + 184);
  v42 = *(v2 + 216);
  v52[2] = *(v2 + 200);
  v52[3] = v42;
  v52[4] = *(v2 + 232);
  v52[5] = v39;
  v52[0] = *(v2 + 168);
  v52[1] = v41;
  *(v2 + 232) = v60;
  *(v2 + 248) = v61;
  v43 = v63;
  *(v2 + 264) = v62;
  *(v2 + 280) = v43;
  *(v2 + 296) = v64;
  *(v2 + 184) = v57;
  *(v2 + 200) = v58;
  *(v2 + 216) = v59;
  *(v2 + 168) = v56;
  sub_1D96BDAB0(v50, v54);
  sub_1D96BDB0C(v52);
  sub_1D96B7A74();
  sub_1D96BDB60(v7, v11, v12, v13, v14, v15);
  v54[6] = v62;
  v54[7] = v63;
  v55 = v64;
  v54[2] = v58;
  v54[3] = v59;
  v54[4] = v60;
  v54[5] = v61;
  v54[0] = v56;
  v54[1] = v57;
  return sub_1D96BDB0C(v54);
}

void sub_1D96B7044(uint64_t a1, uint64_t a2, double a3)
{
  if (!*(v3 + 72))
  {
    v5 = *(v3 + 368);
    if (v5 - a3 <= 0.9)
    {
      v11 = *(v3 + 160);
      v12 = a3;
      v13 = *(v3 + 304);
      v14 = *(v3 + 312);
      v15 = *(v3 + 320);
      v16 = *(v3 + 328);
      v17 = *(v3 + 336) | (*(v3 + 340) << 32);
      *(v3 + 304) = *(v3 + 152);
      *(v3 + 312) = v11;
      *(v3 + 320) = a1;
      *(v3 + 328) = a2;
      *(v3 + 336) = v12;
      *(v3 + 340) = 1;

      sub_1D96BABD0(v13, v14, v15, v16, v17);
      [*(v3 + 112) setNeedsDisplay];
    }

    else
    {
      v6 = v3;
      if (qword_1ECB3EC20 != -1)
      {
        swift_once();
      }

      v7 = sub_1D96DA5D0();
      __swift_project_value_buffer(v7, qword_1ECB3EC28);
      v8 = sub_1D96DA5B0();
      v9 = sub_1D96DA880();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 134218240;
        *(v10 + 4) = v5;
        *(v10 + 12) = 2048;
        *(v10 + 14) = a3;
        _os_log_impl(&dword_1D96B3000, v8, v9, "got a nonsense transition-progress change (%f → %f), ignoring", v10, 0x16u);
        MEMORY[0x1DA736010](v10, -1, -1);
      }

      v3 = v6;
    }

    *(v3 + 368) = a3;
  }
}

id sub_1D96B71EC(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  if (qword_1ECB3EC20 != -1)
  {
    swift_once();
  }

  v6 = sub_1D96DA5D0();
  __swift_project_value_buffer(v6, qword_1ECB3EC28);

  v7 = sub_1D96DA5B0();
  v8 = sub_1D96DA870();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v27[0] = v10;
    *v9 = 136446210;
    *(v9 + 4) = sub_1D96BB28C(a1, a2, v27);
    _os_log_impl(&dword_1D96B3000, v7, v8, "finalized transition to “%{public}s”", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    MEMORY[0x1DA736010](v10, -1, -1);
    MEMORY[0x1DA736010](v9, -1, -1);
  }

  *(v3 + 152) = a1;
  *(v3 + 160) = a2;

  v11 = *(v3 + 216);
  v12 = *(v3 + 224);
  v13 = *(v3 + 232);
  v14 = *(v3 + 240);
  v15 = *(v3 + 248);
  v16 = *(v3 + 252);
  *(v3 + 216) = a1;
  *(v3 + 224) = a2;
  *(v3 + 232) = 0;
  *(v3 + 240) = 0;
  *(v3 + 245) = 0;
  swift_bridgeObjectRetain_n();
  sub_1D96BABE8(v11, v12, v13, v14, v15, v16);
  v17 = *(v3 + 304);
  v18 = *(v3 + 312);
  v19 = *(v3 + 320);
  v20 = *(v3 + 328);
  v21 = *(v3 + 336) | (*(v3 + 340) << 32);
  *(v3 + 304) = 0u;
  *(v3 + 320) = 0u;
  *(v3 + 336) = 0;
  *(v3 + 340) = -1;
  sub_1D96BABD0(v17, v18, v19, v20, v21);
  if (*(v3 + 72))
  {
    swift_beginAccess();
    v22 = *(v3 + 136);
    if (*(v22 + 16))
    {

      v23 = sub_1D96BB834(a1, a2);
      if (v24)
      {
        v25 = *(*(v22 + 56) + 8 * v23);

        [v25 addSubview_];
      }

      else
      {
      }
    }
  }

  return [*(v3 + 112) setNeedsDisplay];
}

void sub_1D96B7450(void *a1)
{
  swift_beginAccess();
  sub_1D96BE658(v1 + 32, &v67, &qword_1ECB3EC68, &unk_1D96DC150);
  if (*(&v68 + 1))
  {
    sub_1D96BE49C(&v67, v74);
    v3 = [*(v1 + 104) commandBuffer];
    if (v3)
    {
      v4 = v3;
      if (*(v1 + 340) == 255)
      {
        v5 = *(v1 + 280);
        *&v72[16] = *(v1 + 264);
        *&v72[32] = v5;
        v6 = *(v1 + 248);
        v71 = *(v1 + 232);
        *v72 = v6;
        v7 = *(v1 + 216);
        v73 = *(v1 + 296);
        v8 = *(v1 + 184);
        v69 = *(v1 + 200);
        v70 = v7;
        v67 = *(v1 + 168);
        v68 = v8;
        v50 = *&v72[8];
        v51 = *&v72[24];
        v9 = *&v72[40];
        v10 = v73;
        v52 = v7;
        v53 = v71;
        LODWORD(v11) = *v72;
        LOBYTE(v1) = v72[4];
        v12 = BYTE10(v69);
        v13 = BYTE9(v69);
        v48 = v8;
        v49 = BYTE8(v69);
        v14 = *(&v8 + 1);
        v15 = v69;
        v47 = v67;
        v16 = *(&v67 + 1);
        sub_1D96BDAB0(&v67, &v58);
      }

      else
      {
        v11 = *(v1 + 336) | (*(v1 + 340) << 32);
        v22 = *(v1 + 304);
        v21 = *(v1 + 320);
        v23 = *(v1 + 280);
        *&v72[16] = *(v1 + 264);
        *&v72[32] = v23;
        v24 = *(v1 + 248);
        v73 = *(v1 + 296);
        v25 = *(v1 + 200);
        v26 = *(v1 + 184);
        v67 = *(v1 + 168);
        v68 = v26;
        v27 = *(v1 + 216);
        v69 = v25;
        v70 = v27;
        v71 = *(v1 + 232);
        *v72 = v24;
        v50 = *&v72[8];
        v51 = *&v72[24];
        v46 = *&v72[40];
        v44 = BYTE10(v25);
        v45 = v73;
        v43 = BYTE9(v25);
        v47 = v67;
        v16 = *(&v67 + 1);
        v48 = v26;
        v49 = BYTE8(v25);
        v14 = *(&v26 + 1);
        v15 = v25;
        v28 = *(&v27 + 1);
        v42 = v27;
        v30 = *(&v71 + 1);
        v29 = v71;
        v31 = v24;
        v52 = v22;
        v53 = v21;
        v32 = v3;
        v33 = a1;
        v34 = BYTE4(v24);
        sub_1D96BE5A4(v22, *(&v22 + 1), v21, *(&v21 + 1), v11);
        sub_1D96BDAB0(&v67, &v58);
        v35 = v34 & 1;
        a1 = v33;
        v4 = v32;
        v36 = v28;
        v9 = v46;
        v1 = HIDWORD(v11) & 1;
        v37 = v29;
        v38 = v30;
        v12 = v44;
        v10 = v45;
        v39 = v31;
        v13 = v43;
        sub_1D96BABE8(v42, v36, v37, v38, v39, v35);
      }

      LOBYTE(v67) = v47;
      *(&v67 + 1) = v16;
      LOBYTE(v68) = v48;
      *(&v68 + 1) = v14;
      *&v69 = v15;
      BYTE8(v69) = v49;
      BYTE9(v69) = v13;
      BYTE10(v69) = v12;
      v70 = v52;
      v71 = v53;
      *v72 = v11;
      v72[4] = v1;
      *&v72[8] = v50;
      *&v72[24] = v51;
      *&v72[40] = v9;
      v73 = v10;
      v40 = v75;
      v41 = v76;
      __swift_project_boxed_opaque_existential_1(v74, v75);
      v64 = *&v72[16];
      v65 = *&v72[32];
      v66 = v73;
      v60 = v69;
      v61 = v70;
      v62 = v71;
      v63 = *v72;
      v58 = v67;
      v59 = v68;
      sub_1D96BDAB0(&v67, v56);
      v54 = 0;
      v55 = -1;
      (*(v41 + 48))(&v58, [a1 texture], &v54, v4, v40, v41);
      v56[7] = v65;
      v57 = v66;
      v56[2] = v60;
      v56[3] = v61;
      v56[5] = v63;
      v56[6] = v64;
      v56[4] = v62;
      v56[0] = v58;
      v56[1] = v59;
      sub_1D96BDB0C(v56);
      swift_unknownObjectRelease();
      [v4 commit];
      [v4 waitUntilScheduled];
      [a1 present];
      sub_1D96BDB0C(&v67);
      swift_unknownObjectRelease();
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v74);
  }

  else
  {
    sub_1D96BE544(&v67, &qword_1ECB3EC68, &unk_1D96DC150);
    if (qword_1ECB3EC20 != -1)
    {
      swift_once();
    }

    v17 = sub_1D96DA5D0();
    __swift_project_value_buffer(v17, qword_1ECB3EC28);
    v18 = sub_1D96DA5B0();
    v19 = sub_1D96DA880();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1D96B3000, v18, v19, "trying to update layer content with no renderer!", v20, 2u);
      MEMORY[0x1DA736010](v20, -1, -1);
    }
  }
}

void sub_1D96B7A74()
{
  v99 = v0[9];
  if (!v99)
  {
    return;
  }

  v1 = v0;
  v94 = *v0;
  swift_beginAccess();
  sub_1D96BE658((v0 + 4), &v138, &qword_1ECB3EC68, &unk_1D96DC150);
  if (*(&v139 + 1))
  {
    sub_1D96BE49C(&v138, v147);
    if (v0[45])
    {
      if (qword_1ECB3EC20 != -1)
      {
        swift_once();
      }

      v2 = sub_1D96DA5D0();
      __swift_project_value_buffer(v2, qword_1ECB3EC28);
      v3 = sub_1D96DA5B0();
      v4 = sub_1D96DA880();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 0;
        _os_log_impl(&dword_1D96B3000, v3, v4, "trying to generate snapshots with no known pixel size", v5, 2u);
        MEMORY[0x1DA736010](v5, -1, -1);
      }

      goto LABEL_82;
    }

    v11 = *(v0 + 43);
    v10 = *(v0 + 44);
    v146 = *(v0 + 296);
    v12 = *(v0 + 31);
    v13 = *(v0 + 23);
    v14 = *(v0 + 27);
    v140 = *(v0 + 25);
    v141 = v14;
    v142 = *(v0 + 29);
    v143 = v12;
    v138 = *(v0 + 21);
    v139 = v13;
    v15 = *(v0 + 35);
    v144 = *(v0 + 33);
    v145 = v15;
    v16 = *(&v143 + 1);
    v18 = *(&v144 + 1);
    v17 = v144;
    v20 = *(&v15 + 1);
    v19 = v15;
    v21 = v146;
    v22 = *(v1 + 27);
    v134 = *(v1 + 25);
    v135 = v22;
    v136 = *(v1 + 29);
    v137 = v1[31];
    v93 = v1;
    v23 = *(v1 + 23);
    v132 = *(v1 + 21);
    v133 = v23;
    v24 = v146;
    v131 = v146;

    sub_1D96BDAB0(&v138, &v125);
    if (v21 == 1)
    {
      sub_1D96BDB78(v16, v17, v18, v19, v20, 1);
      v24 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v131 = 0;
      v16 = v17;
      v17 = 0;
    }

    v127 = v134;
    v128 = v135;
    v129 = v136;
    v125 = v132;
    v126 = v133;
    *v130 = v137;
    *&v130[8] = v16;
    *&v130[16] = v17;
    *&v130[24] = v18;
    *&v130[32] = v19;
    *&v130[40] = v20;
    v130[48] = v24;
    if (v24)
    {
      v25 = v17;
    }

    else
    {
      v25 = v16;
    }

    v92 = v25;
    if (qword_1ECB3EC20 != -1)
    {
      swift_once();
    }

    v26 = v11;
    v27 = sub_1D96DA5D0();
    __swift_project_value_buffer(v27, qword_1ECB3EC28);
    v28 = sub_1D96DA5B0();
    v29 = sub_1D96DA870();
    if (!os_log_type_enabled(v28, v29))
    {
LABEL_33:

      if (v11 <= -9.22337204e18)
      {
        __break(1u);
      }

      else if (v11 < 9.22337204e18)
      {
        if ((*&v11 & 0x7FF0000000000000) != 0x7FF0000000000000 && (*&v10 & 0x7FF0000000000000) != 0x7FF0000000000000)
        {
          v35 = v10;
          if (v10 > -9.22337204e18)
          {
            if (v10 < 9.22337204e18)
            {
              v36 = v11;
              v37 = v35;
              v90 = v93[3];
              v38 = (*(v90 + 8))();
              v39 = [objc_opt_self() texture2DDescriptorWithPixelFormat:v38 width:v11 height:v37 mipmapped:0];
              [v39 setUsage_];
              [v39 setStorageMode_];
              v40 = swift_allocObject();
              v91 = v38;
              v41 = sub_1D96C7F28(v38);
              v42 = v36 * v41;
              if ((v36 * v41) >> 64 == (v36 * v41) >> 63)
              {
                *(v40 + 16) = v42;
                if (v42 <= 0)
                {
                  v43 = -(-v42 & 0xF);
                }

                else
                {
                  v43 = v42 & 0xF;
                }

                if (v43)
                {
                  v44 = 16 - v43;
                  v45 = __OFADD__(v42, v44);
                  v42 += v44;
                  if (v45)
                  {
LABEL_94:
                    __break(1u);
                    goto LABEL_95;
                  }

                  *(v40 + 16) = v42;
                }

                v46 = v37 * v42;
                if ((v37 * v42) >> 64 == (v37 * v42) >> 63)
                {
                  v47 = *(v99 + 16);
                  if ((v47 * v46) >> 64 == (v47 * v46) >> 63)
                  {
                    v103 = [v93[12] newBufferWithLength_options_];
                    if (v103)
                    {
                      v48 = MEMORY[0x1E69E7CC0];
                      v88 = v37;
                      if (v47)
                      {
                        *&aBlock = MEMORY[0x1E69E7CC0];
                        sub_1D96DAA00();
                        v49 = 0;
                        while ((v46 * v49) >> 64 == (v46 * v49) >> 63)
                        {
                          ++v49;
                          [v103 newTextureWithDescriptor:v39 offset:? bytesPerRow:?];
                          sub_1D96DA9E0();
                          sub_1D96DAA10();
                          sub_1D96DAA20();
                          sub_1D96DA9F0();
                          if (v47 == v49)
                          {
                            v50 = aBlock;
                            v48 = MEMORY[0x1E69E7CC0];
                            goto LABEL_58;
                          }
                        }

                        __break(1u);
                        goto LABEL_85;
                      }

                      v50 = MEMORY[0x1E69E7CC0];
LABEL_58:
                      v97 = [v93[13] commandBuffer];
                      if (v97)
                      {
                        v89 = v50;
                        v87 = v46;
                        sub_1D96DA540();
                        v86 = swift_allocBox();
                        *&aBlock = v48;
                        sub_1D96BE610(&qword_1ECB3EF78, MEMORY[0x1E6969B50], MEMORY[0x1E6969B90]);
                        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB3EF80, &qword_1D96DC4F8);
                        sub_1D96BE84C(&unk_1ECB3EF88, &qword_1ECB3EF80, &qword_1D96DC4F8);
                        sub_1D96DA940();
                        v98 = *(v99 + 16);
                        if (!v98)
                        {
LABEL_73:
                          v76 = (*(v90 + 16))();
                          if (v76)
                          {
                            v77 = v76;

                            v78 = v93;
LABEL_81:
                            v83 = swift_allocObject();
                            *(v83 + 2) = v92;
                            *(v83 + 3) = v78;
                            *(v83 + 4) = v103;
                            *(v83 + 5) = v99;
                            *(v83 + 6) = v86;
                            *(v83 + 7) = v87;
                            *(v83 + 8) = v26;
                            *(v83 + 9) = v88;
                            *(v83 + 10) = v40;
                            *(v83 + 11) = v77;
                            *(v83 + 12) = v91;
                            v83[13] = v94;
                            *&v115 = sub_1D96BE768;
                            *(&v115 + 1) = v83;
                            *&aBlock = MEMORY[0x1E69E9820];
                            *(&aBlock + 1) = 1107296256;
                            *&v114 = sub_1D96BA378;
                            *(&v114 + 1) = &block_descriptor;
                            v84 = _Block_copy(&aBlock);

                            swift_unknownObjectRetain();

                            v85 = v77;

                            [v97 addCompletedHandler_];
                            _Block_release(v84);
                            [v97 commit];

                            swift_unknownObjectRelease();
                            swift_unknownObjectRelease();

                            sub_1D96BDB0C(&v125);
                            goto LABEL_82;
                          }

                          v82 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F0B8]);
                          v78 = v93;
                          if (v82)
                          {
                            v77 = v82;

                            goto LABEL_81;
                          }

LABEL_96:
                          __break(1u);
                          return;
                        }

                        if (v98 <= *(v50 + 16))
                        {
                          v54 = 0;
                          v55 = (v99 + 40);
                          v95 = v40;
                          v96 = v39;
                          do
                          {
                            v57 = *(v55 - 1);
                            v56 = *v55;
                            v58 = *(v89 + 32 + 8 * v54);
                            if (v58)
                            {
                              v101 = v54;
                              v102 = v55;
                              v59 = v148;
                              v100 = v149;
                              __swift_project_boxed_opaque_existential_1(v147, v148);
                              v107 = v125;
                              v108 = v126;
                              v109 = v127;
                              v60 = v128;
                              v61 = v129;
                              v62 = *v130;
                              v63 = v130[4];
                              *(v124 + 12) = *&v130[33];
                              v123 = *&v130[5];
                              v124[0] = *&v130[21];
                              swift_bridgeObjectRetain_n();
                              swift_unknownObjectRetain();
                              sub_1D96BDAB0(&v125, &aBlock);
                              sub_1D96BABE8(v60, *(&v60 + 1), v61, *(&v61 + 1), v62, v63 & 1);
                              *&v112[5] = v123;
                              v122 = 0;
                              *&v110 = v57;
                              *(&v110 + 1) = v56;
                              v111 = 0uLL;
                              *v112 = 0;
                              v112[4] = 0;
                              *&v112[21] = v124[0];
                              *&v112[33] = *(v124 + 12);
                              v105 = 0;
                              v106 = -1;
                              (*(v100 + 48))(&v107, v58, &v105, v97, v59);
                              v119 = *&v112[16];
                              v120 = *&v112[32];
                              v121 = v112[48];
                              v115 = v109;
                              v116 = v110;
                              v117 = v111;
                              v118 = *v112;
                              aBlock = v107;
                              v114 = v108;
                              sub_1D96BDB0C(&aBlock);

                              v71 = sub_1D96DA5B0();
                              v72 = sub_1D96DA870();

                              if (os_log_type_enabled(v71, v72))
                              {
                                v73 = swift_slowAlloc();
                                v74 = swift_slowAlloc();
                                v104 = v74;
                                *v73 = 136446210;
                                v75 = sub_1D96BB28C(v57, v56, &v104);

                                *(v73 + 4) = v75;
                                _os_log_impl(&dword_1D96B3000, v71, v72, "snapshotted look “%{public}s”", v73, 0xCu);
                                __swift_destroy_boxed_opaque_existential_0Tm(v74);
                                MEMORY[0x1DA736010](v74, -1, -1);
                                MEMORY[0x1DA736010](v73, -1, -1);
                              }

                              else
                              {
                              }

                              swift_unknownObjectRelease();
                              v40 = v95;
                              v39 = v96;
                              v54 = v101;
                              v55 = v102;
                            }

                            else
                            {

                              v64 = sub_1D96DA5B0();
                              v65 = sub_1D96DA880();
                              if (os_log_type_enabled(v64, v65))
                              {
                                v66 = swift_slowAlloc();
                                v67 = v54;
                                v68 = swift_slowAlloc();
                                *&aBlock = v68;
                                *v66 = 136446210;
                                v69 = sub_1D96BB28C(v57, v56, &aBlock);

                                *(v66 + 4) = v69;
                                _os_log_impl(&dword_1D96B3000, v64, v65, "couldn’t snapshot look “%{public}s”, didn’t get a texture from the buffer", v66, 0xCu);
                                __swift_destroy_boxed_opaque_existential_0Tm(v68);
                                v70 = v68;
                                v54 = v67;
                                MEMORY[0x1DA736010](v70, -1, -1);
                                MEMORY[0x1DA736010](v66, -1, -1);
                              }

                              else
                              {
                              }

                              sub_1D96DA520();
                            }

                            ++v54;
                            v55 += 2;
                          }

                          while (v98 != v54);
                          goto LABEL_73;
                        }

LABEL_95:
                        __break(1u);
                        goto LABEL_96;
                      }

                      v79 = sub_1D96DA5B0();
                      v80 = sub_1D96DA880();
                      if (os_log_type_enabled(v79, v80))
                      {
                        v81 = swift_slowAlloc();
                        *v81 = 0;
                        _os_log_impl(&dword_1D96B3000, v79, v80, "couldn’t make command buffer for look snapshotting", v81, 2u);
                        MEMORY[0x1DA736010](v81, -1, -1);
                      }

                      swift_unknownObjectRelease();
                    }

                    else
                    {

                      v51 = sub_1D96DA5B0();
                      v52 = sub_1D96DA880();
                      if (os_log_type_enabled(v51, v52))
                      {
                        v53 = swift_slowAlloc();
                        *v53 = 0;
                        _os_log_impl(&dword_1D96B3000, v51, v52, "couldn’t make buffer for look snapshots", v53, 2u);
                        MEMORY[0x1DA736010](v53, -1, -1);
                      }
                    }

                    sub_1D96BDB0C(&v125);

LABEL_82:
                    __swift_destroy_boxed_opaque_existential_0Tm(v147);
                    return;
                  }

                  goto LABEL_93;
                }

LABEL_92:
                __break(1u);
LABEL_93:
                __break(1u);
                goto LABEL_94;
              }

LABEL_91:
              __break(1u);
              goto LABEL_92;
            }

LABEL_90:
            __break(1u);
            goto LABEL_91;
          }

LABEL_89:
          __break(1u);
          goto LABEL_90;
        }

LABEL_88:
        __break(1u);
        goto LABEL_89;
      }

      __break(1u);
      goto LABEL_88;
    }

    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *&aBlock = v31;
    *v30 = 136315138;
    if (v92 <= 2)
    {
      if (v92 == 1)
      {
        v32 = 0xE800000000000000;
        v33 = 0x7469617274726F50;
        goto LABEL_32;
      }

      if (v92 == 2)
      {
        v32 = 0x80000001D96DE980;
        v33 = 0xD000000000000014;
LABEL_32:
        v34 = sub_1D96BB28C(v33, v32, &aBlock);

        *(v30 + 4) = v34;
        _os_log_impl(&dword_1D96B3000, v28, v29, "generating look snapshots for orientation %s", v30, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v31);
        MEMORY[0x1DA736010](v31, -1, -1);
        MEMORY[0x1DA736010](v30, -1, -1);
        goto LABEL_33;
      }

LABEL_28:
      v33 = 0xD000000000000013;
      v32 = 0x80000001D96DE960;
      goto LABEL_32;
    }

    if (v92 == 3)
    {
      v32 = 0xEF74686769522065;
    }

    else
    {
      if (v92 != 4)
      {
        goto LABEL_28;
      }

      v32 = 0xEE007466654C2065;
    }

    v33 = 0x70616373646E614CLL;
    goto LABEL_32;
  }

  sub_1D96BE544(&v138, &qword_1ECB3EC68, &unk_1D96DC150);
  if (qword_1ECB3EC20 != -1)
  {
LABEL_85:
    swift_once();
  }

  v6 = sub_1D96DA5D0();
  __swift_project_value_buffer(v6, qword_1ECB3EC28);
  v7 = sub_1D96DA5B0();
  v8 = sub_1D96DA880();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1D96B3000, v7, v8, "trying to generate snapshots when there’s no renderer yet", v9, 2u);
    MEMORY[0x1DA736010](v9, -1, -1);
  }
}

void sub_1D96B8B0C(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13)
{
  v58 = a7;
  v59 = a8;
  v60 = a4;
  v61 = a5;
  v62 = a2;
  v56 = a12;
  v57 = a13;
  v15 = a11;
  v54 = a3;
  v55 = a9;
  v16 = sub_1D96DA5E0();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1D96DA610();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 status] == 4)
  {
    v51 = v21;
    if (qword_1ECB3EC20 != -1)
    {
      swift_once();
    }

    v52 = v20;
    v24 = sub_1D96DA5D0();
    __swift_project_value_buffer(v24, qword_1ECB3EC28);
    v25 = sub_1D96DA5B0();
    v26 = sub_1D96DA870();
    v27 = os_log_type_enabled(v25, v26);
    v53 = v17;
    v50 = v16;
    if (!v27)
    {

LABEL_25:
      sub_1D96BE7C4(0, &qword_1EDB95BF0, 0x1E69E9610);
      v37 = sub_1D96DA8D0();
      v38 = swift_allocObject();
      swift_weakInit();
      v39 = swift_allocObject();
      v40 = v60;
      v41 = v61;
      v39[2] = v38;
      v39[3] = v40;
      v39[4] = v41;
      v39[5] = a6;
      v42 = v59;
      v39[6] = v58;
      v39[7] = v42;
      v43 = v56;
      v39[8] = v55;
      v39[9] = a10;
      v39[10] = v15;
      v39[11] = v43;
      v44 = v57;
      v39[12] = v62;
      v39[13] = v44;
      aBlock[4] = sub_1D96BE80C;
      aBlock[5] = v39;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1D96C7048;
      aBlock[3] = &block_descriptor_61;
      v45 = _Block_copy(aBlock);
      swift_unknownObjectRetain();

      v46 = v15;

      sub_1D96DA5F0();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_1D96BE610(&qword_1ECB3EF98, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB3EFA0, &qword_1D96DC500);
      sub_1D96BE84C(&qword_1ECB3EFA8, &qword_1ECB3EFA0, &qword_1D96DC500);
      v47 = v50;
      sub_1D96DA940();
      MEMORY[0x1DA7355F0](0, v23, v19, v45);
      _Block_release(v45);

      (*(v53 + 8))(v19, v47);
      (*(v51 + 8))(v23, v52);
      return;
    }

    v49 = a11;
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    aBlock[0] = v29;
    *v28 = 136446210;
    v48 = a6;
    if (v62 <= 2)
    {
      if (v62 == 1)
      {
        v30 = 0xE800000000000000;
        v31 = 0x7469617274726F50;
        goto LABEL_24;
      }

      if (v62 == 2)
      {
        v30 = 0x80000001D96DE980;
        v31 = 0xD000000000000014;
LABEL_24:
        v36 = sub_1D96BB28C(v31, v30, aBlock);

        *(v28 + 4) = v36;
        _os_log_impl(&dword_1D96B3000, v25, v26, "snapshot rendering finished for %{public}s", v28, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v29);
        MEMORY[0x1DA736010](v29, -1, -1);
        MEMORY[0x1DA736010](v28, -1, -1);

        a6 = v48;
        v15 = v49;
        goto LABEL_25;
      }

LABEL_20:
      v31 = 0xD000000000000013;
      v30 = 0x80000001D96DE960;
      goto LABEL_24;
    }

    if (v62 == 3)
    {
      v30 = 0xEF74686769522065;
    }

    else
    {
      if (v62 != 4)
      {
        goto LABEL_20;
      }

      v30 = 0xEE007466654C2065;
    }

    v31 = 0x70616373646E614CLL;
    goto LABEL_24;
  }

  if (qword_1ECB3EC20 != -1)
  {
    swift_once();
  }

  v32 = sub_1D96DA5D0();
  __swift_project_value_buffer(v32, qword_1ECB3EC28);
  v62 = sub_1D96DA5B0();
  v33 = sub_1D96DA880();
  if (os_log_type_enabled(v62, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_1D96B3000, v62, v33, "look-snapshotting command buffer did not complete successfully", v34, 2u);
    MEMORY[0x1DA736010](v34, -1, -1);
  }

  v35 = v62;
}

uint64_t sub_1D96B9150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int64_t a5, size_t a6, size_t a7, uint64_t a8, CGColorSpace *a9, unint64_t a10, uint64_t a11)
{
  v140 = a7;
  v139 = a6;
  v137 = a5;
  v14 = sub_1D96DA540();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  *&v150 = &v130 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v151 = swift_projectBox();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v18 = result;
  v19 = a11;
  v144 = [swift_unknownObjectRetain() contents];
  v20 = a2;
  v21 = *(a3 + 16);
  v134 = a2;
  v141 = a11;
  if (!v21)
  {
    v142 = 0;
    v116 = 256;
    if (*(v18 + 296))
    {
      v116 = 264;
    }

    v19 = *(v18 + v116);
    if (v19 == a11)
    {
LABEL_95:
      v125 = v141;
      sub_1D96BA3D8(v141);
LABEL_115:
      swift_beginAccess();
      swift_unknownObjectRetain();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v153 = *(v18 + 144);
      *(v18 + 144) = 0x8000000000000000;
      sub_1D96BCDB0(a2, v125, isUniquelyReferenced_nonNull_native);
      *(v18 + 144) = v153;
      swift_endAccess();

      return sub_1D96B4B88(v142, 0);
    }

LABEL_88:
    if (qword_1ECB3EC20 == -1)
    {
      goto LABEL_89;
    }

    goto LABEL_122;
  }

  v146 = v18;
  v136 = a10;
  v135 = a9;
  swift_beginAccess();
  swift_beginAccess();
  v142 = 0;
  v18 = 0;
  v148 = *(v15 + 16);
  v149 = v15 + 16;
  v147 = (v15 + 8);
  v131 = a3;
  v22 = (a3 + 40);
  v23 = v137;
  v143 = v14;
  v133 = v21;
  v132 = a8;
  while (1)
  {
    v24 = v150;
    v148(v150, v151, v14);
    v25 = sub_1D96DA530();
    (*v147)(v24, v14);
    if (v25)
    {
      goto LABEL_6;
    }

    if ((v18 * v23) >> 64 != (v18 * v23) >> 63)
    {
      __break(1u);
LABEL_118:
      __break(1u);
LABEL_119:
      __break(1u);
LABEL_120:
      __break(1u);
LABEL_121:
      __break(1u);
LABEL_122:
      swift_once();
LABEL_89:
      v117 = sub_1D96DA5D0();
      __swift_project_value_buffer(v117, qword_1ECB3EC28);
      v118 = sub_1D96DA5B0();
      v119 = sub_1D96DA870();
      if (!os_log_type_enabled(v118, v119))
      {

LABEL_114:
        v125 = v141;
        goto LABEL_115;
      }

      v120 = 0x7469617274726F50;
      v121 = swift_slowAlloc();
      v122 = swift_slowAlloc();
      v154[0] = v122;
      *v121 = 136446466;
      if (v19 > 2)
      {
        if (v19 != 3)
        {
          if (v19 == 4)
          {
            v124 = 0x70616373646E614CLL;
            v123 = 0xEE007466654C2065;
            goto LABEL_103;
          }

          goto LABEL_100;
        }

        v124 = 0x70616373646E614CLL;
        v123 = 0xEF74686769522065;
      }

      else
      {
        if (v19 != 1)
        {
          if (v19 == 2)
          {
            v123 = 0x80000001D96DE980;
            v124 = 0xD000000000000014;
            goto LABEL_103;
          }

LABEL_100:
          v124 = 0xD000000000000013;
          v123 = 0x80000001D96DE960;
          goto LABEL_103;
        }

        v123 = 0xE800000000000000;
        v124 = 0x7469617274726F50;
      }

LABEL_103:
      v126 = sub_1D96BB28C(v124, v123, v154);

      *(v121 + 4) = v126;
      *(v121 + 12) = 2082;
      if (v141 > 2)
      {
        if (v141 == 3)
        {
          v120 = 0x70616373646E614CLL;
          v127 = 0xEF74686769522065;
          goto LABEL_113;
        }

        if (v141 == 4)
        {
          v120 = 0x70616373646E614CLL;
          v127 = 0xEE007466654C2065;
          goto LABEL_113;
        }
      }

      else
      {
        if (v141 == 1)
        {
          v127 = 0xE800000000000000;
          goto LABEL_113;
        }

        if (v141 == 2)
        {
          v127 = 0x80000001D96DE980;
          v120 = 0xD000000000000014;
LABEL_113:
          v128 = sub_1D96BB28C(v120, v127, v154);

          *(v121 + 14) = v128;
          _os_log_impl(&dword_1D96B3000, v118, v119, "not applying snapshots (final orientation %{public}s, these are %{public}s)", v121, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1DA736010](v122, -1, -1);
          MEMORY[0x1DA736010](v121, -1, -1);

          a2 = v134;
          goto LABEL_114;
        }
      }

      v120 = 0xD000000000000013;
      v127 = 0x80000001D96DE960;
      goto LABEL_113;
    }

    v26 = CGDataProviderCreateWithData(0, &v144[v18 * v23], v23, nullsub_1);
    if (!v26)
    {
      if (qword_1ECB3EC20 != -1)
      {
        swift_once();
      }

      v30 = sub_1D96DA5D0();
      __swift_project_value_buffer(v30, qword_1ECB3EC28);
      v31 = sub_1D96DA5B0();
      v32 = sub_1D96DA880();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_1D96B3000, v31, v32, "couldn’t create data provider", v33, 2u);
        MEMORY[0x1DA736010](v33, -1, -1);
      }

      goto LABEL_5;
    }

    v27 = v26;
    v28 = v136;
    if (v136 - 70 < 2)
    {
      v29 = 16389;
    }

    else if (v136 - 80 >= 2)
    {
      if (v136 != 115)
      {
        goto LABEL_125;
      }

      v29 = 261;
    }

    else
    {
      v29 = 8198;
    }

    v34 = CGImageCreate(v139, v140, 8uLL, 0x20uLL, *(a8 + 16), v135, v29, v26, 0, 0, kCGRenderingIntentDefault);
    if (!v34)
    {
      v31 = v27;
      if (qword_1ECB3EC20 != -1)
      {
        swift_once();
      }

      v49 = sub_1D96DA5D0();
      __swift_project_value_buffer(v49, qword_1ECB3EC28);
      v50 = sub_1D96DA5B0();
      v51 = sub_1D96DA880();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        _os_log_impl(&dword_1D96B3000, v50, v51, "couldn’t create image from data", v52, 2u);
        v53 = v52;
        v23 = v137;
        MEMORY[0x1DA736010](v53, -1, -1);
      }

      goto LABEL_5;
    }

    v35 = v34;
    v138 = v27;
    v36 = *v22;
    v145 = *(v22 - 1);
    v37 = v146;
    swift_beginAccess();

    sub_1D96B4B88(v142, 0);
    v38 = swift_isUniquelyReferenced_nonNull_native();
    v152 = *(v37 + 128);
    v39 = v152;
    *(v37 + 128) = 0x8000000000000000;
    v41 = sub_1D96BB8AC(v19);
    v42 = v39[2];
    v43 = (v40 & 1) == 0;
    v44 = v42 + v43;
    if (__OFADD__(v42, v43))
    {
      goto LABEL_118;
    }

    v45 = v40;
    if (v39[3] >= v44)
    {
      if ((v38 & 1) == 0)
      {
        sub_1D96BD1E4();
        v39 = v152;
      }
    }

    else
    {
      sub_1D96BC13C(v44, v38);
      type metadata accessor for UIInterfaceOrientation(0);
      v28 = v46;
      v39 = v152;
      v47 = sub_1D96BB8AC(v19);
      if ((v45 & 1) != (v48 & 1))
      {
        goto LABEL_124;
      }

      v41 = v47;
    }

    *(v146 + 128) = v39;
    if ((v45 & 1) == 0)
    {
      v54 = sub_1D96BDF24(MEMORY[0x1E69E7CC0], &qword_1ECB3EFB0, &qword_1D96DC508);
      v39[(v41 >> 6) + 8] |= 1 << v41;
      *(v39[6] + 8 * v41) = v19;
      *(v39[7] + 8 * v41) = v54;
      v55 = v39[2];
      v56 = __OFADD__(v55, 1);
      v57 = v55 + 1;
      if (v56)
      {
        goto LABEL_120;
      }

      v39[2] = v57;
    }

    v19 = v39[7];
    v31 = v35;
    a2 = swift_isUniquelyReferenced_nonNull_native();
    v152 = *(v19 + 8 * v41);
    v58 = v152;
    *(v19 + 8 * v41) = 0x8000000000000000;
    v28 = sub_1D96BB834(v145, v36);
    v60 = v58[2];
    v61 = (v59 & 1) == 0;
    v62 = v60 + v61;
    if (__OFADD__(v60, v61))
    {
      goto LABEL_119;
    }

    v63 = v59;
    if (v58[3] < v62)
    {
      break;
    }

    if (a2)
    {
      v66 = v152;
      if ((v59 & 1) == 0)
      {
        goto LABEL_38;
      }
    }

    else
    {
      sub_1D96BD354(&qword_1ECB3EFB0, &qword_1D96DC508);
      v66 = v152;
      if ((v63 & 1) == 0)
      {
LABEL_38:
        v66[(v28 >> 6) + 8] |= 1 << v28;
        v67 = (v66[6] + 16 * v28);
        *v67 = v145;
        v67[1] = v36;
        *(v66[7] + 8 * v28) = v31;
        v68 = v66[2];
        v56 = __OFADD__(v68, 1);
        v69 = v68 + 1;
        if (v56)
        {
          goto LABEL_121;
        }

        v66[2] = v69;
        goto LABEL_43;
      }
    }

LABEL_42:
    v70 = v66[7];
    v71 = *(v70 + 8 * v28);
    *(v70 + 8 * v28) = v31;

LABEL_43:
    *(v19 + 8 * v41) = v66;
    swift_endAccess();

    v142 = sub_1D96BA338;
    a2 = v134;
    v19 = v141;
    v21 = v133;
    a8 = v132;
    v23 = v137;
LABEL_5:

    v14 = v143;
LABEL_6:
    ++v18;
    v22 += 2;
    if (v21 == v18)
    {
      v18 = v146;
      v72 = 256;
      if (*(v146 + 296))
      {
        v72 = 264;
      }

      v73 = v19;
      v19 = *(v146 + v72);
      if (v19 == v73)
      {
        swift_beginAccess();
        swift_beginAccess();
        v149 = 0x80000001D96DE980;
        v148 = 0x80000001D96DE960;
        v74 = (v131 + 40);
        *&v75 = 136446210;
        v151 = v75;
        *&v75 = 136446466;
        v150 = v75;
        while (1)
        {
          v76 = *(v74 - 1);
          v77 = *v74;
          v78 = *(v18 + 120);
          v79 = *(v78 + 16);

          if (!v79)
          {
            goto LABEL_65;
          }

          v80 = sub_1D96BB834(v76, v77);
          if ((v81 & 1) == 0)
          {

LABEL_65:
            if (qword_1ECB3EC20 != -1)
            {
              swift_once();
            }

            v99 = sub_1D96DA5D0();
            __swift_project_value_buffer(v99, qword_1ECB3EC28);

            v100 = sub_1D96DA5B0();
            v101 = sub_1D96DA880();

            if (os_log_type_enabled(v100, v101))
            {
              v102 = swift_slowAlloc();
              v103 = v21;
              v104 = swift_slowAlloc();
              v154[0] = v104;
              *v102 = v151;
              v105 = sub_1D96BB28C(v76, v77, v154);

              *(v102 + 4) = v105;
              _os_log_impl(&dword_1D96B3000, v100, v101, "layer for the “%{public}s” snapshot does not exist!", v102, 0xCu);
              __swift_destroy_boxed_opaque_existential_0Tm(v104);
              v106 = v104;
              v21 = v103;
              MEMORY[0x1DA736010](v106, -1, -1);
              MEMORY[0x1DA736010](v102, -1, -1);
            }

            else
            {
            }

            goto LABEL_52;
          }

          v82 = v21;
          v83 = *(*(v78 + 56) + 8 * v80);

          if (qword_1ECB3EC20 != -1)
          {
            swift_once();
          }

          v84 = sub_1D96DA5D0();
          __swift_project_value_buffer(v84, qword_1ECB3EC28);

          v85 = sub_1D96DA5B0();
          v86 = sub_1D96DA870();

          if (os_log_type_enabled(v85, v86))
          {
            v87 = swift_slowAlloc();
            v88 = swift_slowAlloc();
            v154[0] = v88;
            *v87 = v151;
            *(v87 + 4) = sub_1D96BB28C(v76, v77, v154);
            _os_log_impl(&dword_1D96B3000, v85, v86, "applying snapshot to layer for “%{public}s”", v87, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v88);
            MEMORY[0x1DA736010](v88, -1, -1);
            v89 = v87;
            v18 = v146;
            MEMORY[0x1DA736010](v89, -1, -1);
          }

          v90 = *(v18 + 128);
          if (!*(v90 + 16))
          {
            goto LABEL_70;
          }

          v91 = sub_1D96BB8AC(v141);
          if ((v92 & 1) == 0)
          {
            goto LABEL_70;
          }

          v93 = *(*(v90 + 56) + 8 * v91);
          if (!*(v93 + 16))
          {
            goto LABEL_70;
          }

          v94 = sub_1D96BB834(v76, v77);
          if ((v95 & 1) == 0)
          {
            break;
          }

          v96 = v94;

          v97 = *(*(v93 + 56) + 8 * v96);

          v98 = v97;
          [v83 setContents_];

          v21 = v82;
LABEL_52:
          v74 += 2;
          if (!--v21)
          {
            a2 = v134;
            goto LABEL_95;
          }
        }

LABEL_70:

        v107 = sub_1D96DA5B0();
        v108 = sub_1D96DA880();

        if (!os_log_type_enabled(v107, v108))
        {

LABEL_84:

          v21 = v82;
          [v83 setContents_];

          v18 = v146;
          goto LABEL_52;
        }

        v109 = swift_slowAlloc();
        v110 = swift_slowAlloc();
        v154[0] = v110;
        *v109 = v150;
        v111 = sub_1D96BB28C(v76, v77, v154);

        *(v109 + 4) = v111;
        *(v109 + 12) = 2082;
        if (v141 > 2)
        {
          if (v141 == 3)
          {
            v112 = 0x70616373646E614CLL;
            v114 = 0xEF74686769522065;
            goto LABEL_83;
          }

          if (v141 == 4)
          {
            v112 = 0x70616373646E614CLL;
            v114 = 0xEE007466654C2065;
LABEL_83:
            v115 = sub_1D96BB28C(v112, v114, v154);

            *(v109 + 14) = v115;
            _os_log_impl(&dword_1D96B3000, v107, v108, "missing snapshot for “%{public}s” in orientation %{public}s — clearing contents", v109, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1DA736010](v110, -1, -1);
            MEMORY[0x1DA736010](v109, -1, -1);
            goto LABEL_84;
          }
        }

        else
        {
          if (v141 == 1)
          {
            v114 = 0xE800000000000000;
            v112 = 0x7469617274726F50;
            goto LABEL_83;
          }

          if (v141 == 2)
          {
            v112 = 0xD000000000000014;
            v113 = &v156;
LABEL_80:
            v114 = *(v113 - 32);
            goto LABEL_83;
          }
        }

        v112 = 0xD000000000000013;
        v113 = &v155;
        goto LABEL_80;
      }

      goto LABEL_88;
    }
  }

  sub_1D96BC3CC(v62, a2, &qword_1ECB3EFB0, &qword_1D96DC508);
  v64 = sub_1D96BB834(v145, v36);
  if ((v63 & 1) == (v65 & 1))
  {
    v28 = v64;
    v66 = v152;
    if ((v63 & 1) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_42;
  }

  sub_1D96DAB10();
  __break(1u);
LABEL_124:
  sub_1D96DAB10();
  __break(1u);
LABEL_125:
  v154[0] = 0;
  v154[1] = 0xE000000000000000;
  sub_1D96DA9A0();
  MEMORY[0x1DA735440](0xD000000000000018, 0x80000001D96DEBB0);
  v152 = v28;
  type metadata accessor for MTLPixelFormat(0);
  sub_1D96DAA30();
  result = sub_1D96DAA40();
  __break(1u);
  return result;
}

unint64_t sub_1D96BA338@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1D96BDF24(MEMORY[0x1E69E7CC0], &qword_1ECB3EFB0, &qword_1D96DC508);
  *a1 = result;
  return result;
}

double sub_1D96BA378(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  swift_unknownObjectRelease();
  return result;
}

void sub_1D96BA3D8(uint64_t a1)
{
  v2 = a1;
  v3 = 256;
  if (*(v1 + 296))
  {
    v3 = 264;
  }

  if (*(v1 + v3) == a1)
  {
    v4 = v1;
    if (qword_1ECB3EC20 != -1)
    {
LABEL_61:
      swift_once();
    }

    v5 = sub_1D96DA5D0();
    __swift_project_value_buffer(v5, qword_1ECB3EC28);
    v6 = sub_1D96DA5B0();
    v7 = sub_1D96DA870();
    if (!os_log_type_enabled(v6, v7))
    {
      goto LABEL_32;
    }

    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v47[0] = v9;
    *v8 = 136446210;
    if (v2 > 2)
    {
      if (v2 == 3)
      {
        v11 = 0x70616373646E614CLL;
        v10 = 0xEF74686769522065;
        goto LABEL_31;
      }

      if (v2 == 4)
      {
        v11 = 0x70616373646E614CLL;
        v10 = 0xEE007466654C2065;
        goto LABEL_31;
      }
    }

    else
    {
      if (v2 == 1)
      {
        v11 = 0x7469617274726F50;
        v10 = 0xE800000000000000;
        goto LABEL_31;
      }

      if (v2 == 2)
      {
        v10 = 0x80000001D96DE980;
        v11 = 0xD000000000000014;
LABEL_31:
        v18 = sub_1D96BB28C(v11, v10, v47);

        *(v8 + 4) = v18;
        _os_log_impl(&dword_1D96B3000, v6, v7, "cleaning up non-%{public}s snapshots", v8, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v9);
        MEMORY[0x1DA736010](v9, -1, -1);
        MEMORY[0x1DA736010](v8, -1, -1);
LABEL_32:

        v48 = sub_1D96BE360(&unk_1F5500EF0);
        sub_1D96D4FF4(v2);
        v19 = 0;
        v2 = v48;
        v20 = v48 + 56;
        v21 = 1 << *(v48 + 32);
        v22 = -1;
        if (v21 < 64)
        {
          v22 = ~(-1 << v21);
        }

        v23 = v22 & *(v48 + 56);
        v24 = (v21 + 63) >> 6;
        while (1)
        {
          if (!v23)
          {
            while (1)
            {
              v25 = v19 + 1;
              if (__OFADD__(v19, 1))
              {
                break;
              }

              if (v25 >= v24)
              {

                return;
              }

              v23 = *(v20 + 8 * v25);
              ++v19;
              if (v23)
              {
                v19 = v25;
                goto LABEL_42;
              }
            }

            __break(1u);
LABEL_59:
            __break(1u);
LABEL_60:
            __break(1u);
            goto LABEL_61;
          }

LABEL_42:
          v26 = *(*(v2 + 48) + ((v19 << 9) | (8 * __clz(__rbit64(v23)))));
          swift_beginAccess();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v28 = *(v4 + 128);
          *(v4 + 128) = 0x8000000000000000;
          v29 = sub_1D96BB8AC(v26);
          v31 = v28[2];
          v32 = (v30 & 1) == 0;
          v33 = __OFADD__(v31, v32);
          v34 = v31 + v32;
          if (v33)
          {
            goto LABEL_59;
          }

          v35 = v30;
          if (v28[3] < v34)
          {
            break;
          }

          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_47;
          }

          v37 = v29;
          sub_1D96BD1E4();
          v29 = v37;
          if (v35)
          {
LABEL_48:
            *(v28[7] + 8 * v29) = MEMORY[0x1E69E7CC8];

            goto LABEL_52;
          }

LABEL_50:
          v28[(v29 >> 6) + 8] |= 1 << v29;
          *(v28[6] + 8 * v29) = v26;
          *(v28[7] + 8 * v29) = MEMORY[0x1E69E7CC8];
          v38 = v28[2];
          v33 = __OFADD__(v38, 1);
          v39 = v38 + 1;
          if (v33)
          {
            goto LABEL_60;
          }

          v28[2] = v39;
LABEL_52:
          *(v4 + 128) = v28;
          swift_endAccess();
          swift_beginAccess();
          v40 = sub_1D96BB8AC(v26);
          if (v41)
          {
            v42 = v40;
            v43 = swift_isUniquelyReferenced_nonNull_native();
            v44 = *(v4 + 144);
            *(v4 + 144) = 0x8000000000000000;
            if (!v43)
            {
              sub_1D96BD088();
            }

            swift_unknownObjectRelease();
            sub_1D96BC8D0(v42, v44);
            *(v4 + 144) = v44;
          }

          v23 &= v23 - 1;
          swift_endAccess();
        }

        sub_1D96BC13C(v34, isUniquelyReferenced_nonNull_native);
        v29 = sub_1D96BB8AC(v26);
        if ((v35 & 1) != (v36 & 1))
        {
          type metadata accessor for UIInterfaceOrientation(0);
          sub_1D96DAB10();
          __break(1u);
          return;
        }

LABEL_47:
        if (v35)
        {
          goto LABEL_48;
        }

        goto LABEL_50;
      }
    }

    v11 = 0xD000000000000013;
    v10 = 0x80000001D96DE960;
    goto LABEL_31;
  }

  if (qword_1ECB3EC20 != -1)
  {
    swift_once();
  }

  v12 = sub_1D96DA5D0();
  __swift_project_value_buffer(v12, qword_1ECB3EC28);
  oslog = sub_1D96DA5B0();
  v13 = sub_1D96DA880();
  if (os_log_type_enabled(oslog, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v47[0] = v15;
    *v14 = 136446210;
    if (v2 > 2)
    {
      if (v2 == 3)
      {
        v17 = 0x70616373646E614CLL;
        v16 = 0xEF74686769522065;
        goto LABEL_57;
      }

      if (v2 == 4)
      {
        v17 = 0x70616373646E614CLL;
        v16 = 0xEE007466654C2065;
        goto LABEL_57;
      }
    }

    else
    {
      if (v2 == 1)
      {
        v17 = 0x7469617274726F50;
        v16 = 0xE800000000000000;
        goto LABEL_57;
      }

      if (v2 == 2)
      {
        v16 = 0x80000001D96DE980;
        v17 = 0xD000000000000014;
LABEL_57:
        v45 = sub_1D96BB28C(v17, v16, v47);

        *(v14 + 4) = v45;
        _os_log_impl(&dword_1D96B3000, oslog, v13, "asked to clean up non-%{public}s snapshots while not in that orientation — skipping", v14, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v15);
        MEMORY[0x1DA736010](v15, -1, -1);
        MEMORY[0x1DA736010](v14, -1, -1);

        return;
      }
    }

    v17 = 0xD000000000000013;
    v16 = 0x80000001D96DE960;
    goto LABEL_57;
  }
}

uint64_t WallpaperMetalCoordination.EditingCoordinator.deinit()
{
  sub_1D96BE544(v0 + 32, &qword_1ECB3EC68, &unk_1D96DC150);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v1 = *(v0 + 248);
  v2 = *(v0 + 280);
  v6[6] = *(v0 + 264);
  v6[7] = v2;
  v7 = *(v0 + 296);
  v3 = *(v0 + 184);
  v4 = *(v0 + 216);
  v6[2] = *(v0 + 200);
  v6[3] = v4;
  v6[4] = *(v0 + 232);
  v6[5] = v1;
  v6[0] = *(v0 + 168);
  v6[1] = v3;
  sub_1D96BDB0C(v6);
  sub_1D96BABD0(*(v0 + 304), *(v0 + 312), *(v0 + 320), *(v0 + 328), *(v0 + 336) | (*(v0 + 340) << 32));

  return v0;
}

uint64_t WallpaperMetalCoordination.EditingCoordinator.__deallocating_deinit()
{
  WallpaperMetalCoordination.EditingCoordinator.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 392, 7);
}

unint64_t sub_1D96BAB7C()
{
  result = qword_1ECB3EC70;
  if (!qword_1ECB3EC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB3EC70);
  }

  return result;
}

uint64_t sub_1D96BABD0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (BYTE4(a5) != 255)
  {
    return sub_1D96BABE8(result, a2, a3, a4, a5, BYTE4(a5) & 1);
  }

  return result;
}

uint64_t sub_1D96BABE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{

  if (a6)
  {
  }

  return result;
}

uint64_t sub_1D96BAC5C()
{
  v1 = *v0;
  sub_1D96DAB70();
  MEMORY[0x1DA735890](v1);
  return sub_1D96DAB90();
}

uint64_t sub_1D96BACD0(uint64_t a1)
{
  v2 = *v1;
  sub_1D96DAB70();
  MEMORY[0x1DA735890](v2);
  return sub_1D96DAB90();
}

uint64_t sub_1D96BAD1C(uint64_t a1, id *a2)
{
  result = sub_1D96DA6A0();
  *a2 = 0;
  return result;
}

uint64_t sub_1D96BAD94(uint64_t a1, id *a2)
{
  v3 = sub_1D96DA6B0();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1D96BAE14@<X0>(uint64_t *a1@<X8>)
{
  sub_1D96DA6C0();
  v2 = sub_1D96DA690();

  *a1 = v2;
  return result;
}

uint64_t sub_1D96BAE58()
{
  v0 = sub_1D96DA6C0();
  v1 = MEMORY[0x1DA7354A0](v0);

  return v1;
}

uint64_t sub_1D96BAE94(uint64_t a1)
{
  sub_1D96DA6C0();
  sub_1D96DA700();
}

uint64_t sub_1D96BAEE8(uint64_t a1)
{
  sub_1D96DA6C0();
  sub_1D96DAB70();
  sub_1D96DA700();
  v1 = sub_1D96DAB90();

  return v1;
}

uint64_t sub_1D96BB000(uint64_t a1, uint64_t a2)
{
  sub_1D96DAB70();
  swift_getWitnessTable();
  sub_1D96DA590();
  return sub_1D96DAB90();
}

uint64_t sub_1D96BB068(void *a1, uint64_t *a2)
{
  v2 = sub_1D96DA6C0();
  v4 = v3;
  if (v2 == sub_1D96DA6C0() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1D96DAAE0();
  }

  return v7 & 1;
}

uint64_t sub_1D96BB0F0(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_1D96DA580();
}

uint64_t sub_1D96BB15C@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_1D96DA690();

  *a2 = v3;
  return result;
}

uint64_t sub_1D96BB1A4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D96DA6C0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D96BB1D0(uint64_t a1)
{
  v2 = sub_1D96BE610(&qword_1ECB3EFE0, type metadata accessor for IOSurfacePropertyKey, &unk_1D96DC6EC);
  v3 = sub_1D96BE610(&qword_1ECB3EFE8, type metadata accessor for IOSurfacePropertyKey, &unk_1D96DC64C);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

unint64_t sub_1D96BB28C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1D96BB358(v11, 0, 0, 1, a1, a2);
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
    sub_1D96BE6C0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t sub_1D96BB358(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1D96BB464(a5, a6);
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
    result = sub_1D96DA9D0();
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

void *sub_1D96BB464(uint64_t a1, unint64_t a2)
{
  v3 = sub_1D96BB4B0(a1, a2);
  sub_1D96BB5E0(&unk_1F5500EC8);
  return v3;
}

void *sub_1D96BB4B0(uint64_t a1, unint64_t a2)
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

  v6 = sub_1D96BB6CC(v5, 0);
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

  result = sub_1D96DA9D0();
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
        v10 = sub_1D96DA740();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1D96BB6CC(v10, 0);
        result = sub_1D96DA990();
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

uint64_t sub_1D96BB5E0(uint64_t result)
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

  result = sub_1D96BB740(result, v11, 1, v3);
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

void *sub_1D96BB6CC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB3EF58, &qword_1D96DC4D8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1D96BB740(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB3EF58, &qword_1D96DC4D8);
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

unint64_t sub_1D96BB834(uint64_t a1, uint64_t a2)
{
  sub_1D96DAB70();
  sub_1D96DA700();
  v4 = sub_1D96DAB90();

  return sub_1D96BBAA4(a1, a2, v4);
}

unint64_t sub_1D96BB8AC(uint64_t a1)
{
  sub_1D96DAB70();
  MEMORY[0x1DA735890](a1);
  v2 = sub_1D96DAB90();

  return sub_1D96BBB5C(a1, v2);
}

unint64_t sub_1D96BB918(uint64_t a1)
{
  sub_1D96DA6C0();
  sub_1D96DAB70();
  sub_1D96DA700();
  v2 = sub_1D96DAB90();

  return sub_1D96BBBC8(a1, v2);
}

unint64_t sub_1D96BB9AC(uint64_t a1)
{
  sub_1D96DAB70();
  type metadata accessor for CFString(0);
  sub_1D96BE610(&qword_1EDB95C48, type metadata accessor for CFString, &unk_1D96DC72C);
  sub_1D96DA590();
  v2 = sub_1D96DAB90();

  return sub_1D96BBCCC(a1, v2);
}

unint64_t sub_1D96BBA60(uint64_t a1)
{
  v2 = sub_1D96DA900();

  return sub_1D96BBDD8(a1, v2);
}

unint64_t sub_1D96BBAA4(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1D96DAAE0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1D96BBB5C(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1D96BBBC8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_1D96DA6C0();
      v8 = v7;
      if (v6 == sub_1D96DA6C0() && v8 == v9)
      {
        break;
      }

      v11 = sub_1D96DAAE0();

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

unint64_t sub_1D96BBCCC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_1D96BE610(&qword_1EDB95C48, type metadata accessor for CFString, &unk_1D96DC72C);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1D96DA580();

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

unint64_t sub_1D96BBDD8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_1D96BE7C4(0, &qword_1EDB95868, 0x1E696AEC0);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1D96DA910();

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

uint64_t sub_1D96BBEAC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB3EF00, &qword_1D96DC490);
  v30 = v4;
  result = sub_1D96DAA80();
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
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
        swift_unknownObjectRetain();
      }

      sub_1D96DAB70();
      MEMORY[0x1DA735890](v20);
      result = sub_1D96DAB90();
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

uint64_t sub_1D96BC13C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB3EEF8, &qword_1D96DC488);
  v30 = v4;
  result = sub_1D96DAA80();
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
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
      }

      sub_1D96DAB70();
      MEMORY[0x1DA735890](v20);
      result = sub_1D96DAB90();
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

uint64_t sub_1D96BC3CC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v37 = v6;
  result = sub_1D96DAA80();
  v9 = result;
  if (*(v7 + 16))
  {
    v36 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v37 & 1) == 0)
      {

        v27 = v26;
      }

      sub_1D96DAB70();
      sub_1D96DA700();
      result = sub_1D96DAB90();
      v28 = -1 << *(v9 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v16 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v16 + 8 * v30);
          if (v34 != -1)
          {
            v17 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v29) & ~*(v16 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v36;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v35 = 1 << *(v7 + 32);
    v5 = v4;
    if (v35 >= 64)
    {
      bzero(v11, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v35;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

uint64_t sub_1D96BC668(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB3EF20, &qword_1D96DC4A8);
  result = sub_1D96DAA80();
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
        v22 = v21;
        v23 = v20;
      }

      result = sub_1D96DA900();
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

uint64_t sub_1D96BC8D0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D96DA950() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      sub_1D96DAB70();
      MEMORY[0x1DA735890](v9);
      result = sub_1D96DAB90();
      v10 = result & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 8 * v3);
        v13 = (v11 + 8 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1D96BCA64(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D96DA950() + 1) & ~v5;
    do
    {
      sub_1D96DAB70();

      sub_1D96DA700();
      v9 = sub_1D96DAB90();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1D96BCC14(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_1D96BB834(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      sub_1D96BC3CC(v20, a4 & 1, a5, a6);
      v15 = sub_1D96BB834(a2, a3);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        sub_1D96DAB10();
        __break(1u);
        return MEMORY[0x1EEE66BB8]();
      }
    }

    else
    {
      v23 = v15;
      sub_1D96BD354(a5, a6);
      v15 = v23;
    }
  }

  v25 = *v9;
  if (v21)
  {
    *(v25[7] + 8 * v15) = a1;

    return MEMORY[0x1EEE66BB8]();
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v26 = (v25[6] + 16 * v15);
  *v26 = a2;
  v26[1] = a3;
  *(v25[7] + 8 * v15) = a1;
  v27 = v25[2];
  v19 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v28;
}

void sub_1D96BCDB0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1D96BB8AC(a2);
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
      sub_1D96BBEAC(v14, a3 & 1);
      v9 = sub_1D96BB8AC(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        type metadata accessor for UIInterfaceOrientation(0);
        sub_1D96DAB10();
        __break(1u);
        return;
      }
    }

    else
    {
      v17 = v9;
      sub_1D96BD088();
      v9 = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(v9 >> 6) + 8] |= 1 << v9;
    *(v19[6] + 8 * v9) = a2;
    *(v19[7] + 8 * v9) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * v9) = a1;

  swift_unknownObjectRelease();
}

uint64_t sub_1D96BCF10(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1D96BBA60(a2);
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
      sub_1D96BC668(v13, a3 & 1);
      v8 = sub_1D96BBA60(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        sub_1D96BE7C4(0, &qword_1EDB95868, 0x1E696AEC0);
        sub_1D96DAB10();
        __break(1u);
        return MEMORY[0x1EEE66BB8]();
      }
    }

    else
    {
      v16 = v8;
      sub_1D96BD4B0();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * v8) = a1;

    return MEMORY[0x1EEE66BB8]();
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

  return MEMORY[0x1EEE66C98]();
}

void *sub_1D96BD088()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB3EF00, &qword_1D96DC490);
  v2 = *v0;
  v3 = sub_1D96DAA70();
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
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        result = swift_unknownObjectRetain();
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

void *sub_1D96BD1E4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB3EEF8, &qword_1D96DC488);
  v2 = *v0;
  v3 = sub_1D96DAA70();
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
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
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

id sub_1D96BD354(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1D96DAA70();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;

        result = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

id sub_1D96BD4B0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB3EF20, &qword_1D96DC4A8);
  v2 = *v0;
  v3 = sub_1D96DAA70();
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
        v20 = v19;
        result = v18;
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

unint64_t sub_1D96BD610(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB3EF70, &qword_1D96DC4F0);
    v3 = sub_1D96DAA90();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      swift_unknownObjectRetain();
      result = sub_1D96BB834(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

void *sub_1D96BD714(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB3EEF8, &qword_1D96DC488);
  v3 = sub_1D96DAA90();
  v4 = a1[4];
  v5 = a1[5];
  v6 = sub_1D96BB8AC(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = a1 + 7;
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
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
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = sub_1D96BB8AC(v4);
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

void *sub_1D96BD81C(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB3EF00, &qword_1D96DC490);
  v3 = sub_1D96DAA90();
  v4 = a1[4];
  v5 = a1[5];
  v6 = sub_1D96BB8AC(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    swift_unknownObjectRetain();
    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = a1 + 7;
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
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
    v4 = *(v10 - 1);
    v15 = *v10;
    swift_unknownObjectRetain();
    v8 = sub_1D96BB8AC(v4);
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t __swift_deallocate_boxed_opaque_existential_1(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x1DA736010);
  }

  return result;
}

uint64_t sub_1D96BDA2C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB3EC68, &unk_1D96DC150);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D96BDB60(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6 != -1)
  {
    return sub_1D96BDB78(result, a2, a3, a4, a5, a6 & 1);
  }

  return result;
}

uint64_t sub_1D96BDB78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    return MEMORY[0x1EEE66BE0](a1, a2, a3, a4, a5);
  }

  return a1;
}

id sub_1D96BDB84(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    return a3;
  }

  return result;
}

uint64_t sub_1D96BDCC4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D96BDD14(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1D96BDD68(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1D96BDD84(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1D96BDDCC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D96BDDEC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
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

  *(result + 48) = v3;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for Keyframe.Progress(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for Keyframe.Progress(uint64_t result, int a2, int a3)
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

unint64_t sub_1D96BDF24(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_1D96DAA90();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_1D96BB834(v7, v8);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      *(v5[7] + 8 * result) = v10;
      v14 = v5[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v5[2] = v16;
      if (!--v3)
      {

        return v5;
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

unint64_t sub_1D96BE020(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB3EF40, &qword_1D96DC4C0);
    v3 = sub_1D96DAA90();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D96BE658(v4, &v11, &qword_1ECB3EF48, &qword_1D96DC4C8);
      v5 = v11;
      result = sub_1D96BB918(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1D96B4B98(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_1D96BE148(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB3EF28, &qword_1D96DC4B0);
    v3 = sub_1D96DAA90();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D96BE658(v4, &v11, &unk_1ECB3EF30, &qword_1D96DC4B8);
      v5 = v11;
      result = sub_1D96BB9AC(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1D96B4B98(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_1D96BE270(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB3EF20, &qword_1D96DC4A8);
    v3 = sub_1D96DAA90();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      v7 = *i;
      v8 = v5;
      result = sub_1D96BBA60(v8);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v8;
      *(v3[7] + 8 * result) = v6;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

uint64_t sub_1D96BE360(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB3EF08, &qword_1D96DC498);
    v3 = sub_1D96DA980();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + 8 * v4);
      sub_1D96DAB70();
      MEMORY[0x1DA735890](v10);
      result = sub_1D96DAB90();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + 8 * v13) != v10)
        {
          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + 8 * v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1D96BE49C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(void *a1)
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

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1D96BE544(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D96BE5A4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (BYTE4(a5) != 255)
  {
    return sub_1D96BE5BC(result, a2, a3, a4, a5, BYTE4(a5) & 1);
  }

  return result;
}

uint64_t sub_1D96BE5BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {

    v6 = vars8;
  }
}

uint64_t sub_1D96BE610(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D96BE658(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D96BE6C0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D96BE7C4(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_1D96BE84C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

void sub_1D96BE940(uint64_t a1, unint64_t *a2, uint64_t a3)
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

char *sub_1D96BEB0C(uint64_t a1, uint64_t a2, CGColorSpace *a3)
{
  v7 = &v3[OBJC_IVAR____TtC26WatchFacesWallpaperSupport18WallpaperMetalView_drawingHandler];
  *v7 = 0;
  v7[1] = 0;
  v3[OBJC_IVAR____TtC26WatchFacesWallpaperSupport18WallpaperMetalView_shouldDrawAutomatically] = 1;
  v8 = OBJC_IVAR____TtC26WatchFacesWallpaperSupport18WallpaperMetalView_log;
  v9 = sub_1D96DA5D0();
  (*(*(v9 - 8) + 56))(&v3[v8], 1, 1, v9);
  v3[OBJC_IVAR____TtC26WatchFacesWallpaperSupport18WallpaperMetalView_wantsIndefiniteContinuousRendering] = 0;
  v10 = OBJC_IVAR____TtC26WatchFacesWallpaperSupport18WallpaperMetalView_displayLink;
  type metadata accessor for DisplayLink();
  v11 = swift_allocObject();
  *(v11 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v11 + 32) = 0;
  v12 = [objc_opt_self() displayLinkWithTarget:v11 selector:sel__displayLinkFired];
  v13 = *(v11 + 32);
  *(v11 + 32) = v12;

  *&v3[v10] = v11;
  v3[OBJC_IVAR____TtC26WatchFacesWallpaperSupport18WallpaperMetalView_linkActive] = 0;
  v14 = OBJC_IVAR____TtC26WatchFacesWallpaperSupport18WallpaperMetalView_timedRenderingInfo;
  v15 = type metadata accessor for WallpaperMetalView.TimedContinuousRenderingInfo(0);
  (*(*(v15 - 8) + 56))(&v3[v14], 1, 1, v15);
  v30.receiver = v3;
  v30.super_class = type metadata accessor for WallpaperMetalView(0);
  v16 = objc_msgSendSuper2(&v30, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v17 = [v16 layer];
  objc_opt_self();
  v18 = swift_dynamicCastObjCClassUnconditional();
  v19 = OBJC_IVAR____TtC26WatchFacesWallpaperSupport18WallpaperMetalView_displayLink;
  v20 = *&v16[OBJC_IVAR____TtC26WatchFacesWallpaperSupport18WallpaperMetalView_displayLink];
  swift_beginAccess();
  *(v20 + 24) = &off_1F5501308;
  swift_unknownObjectWeakAssign();
  v21 = *&v16[v19];

  sub_1D96DA8A0();
  result = *(v21 + 32);
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  [result setPreferredFrameRateRange_];

  result = *(*&v16[v19] + 32);
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  [result setPaused_];
  [v18 setDevice_];
  [v18 setPixelFormat_];
  v23 = [v16 layer];
  if (qword_1EDB95BE0 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB3F200, &qword_1D96DC160);
  v24 = sub_1D96DA620();
  [v23 setActions_];

  v25 = [v16 layer];
  [v25 setPosition_];

  v26 = [v16 layer];
  [v26 setAnchorPoint_];

  v27 = a3;
  if (!a3)
  {
    v27 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F0B8]);
  }

  v28 = a3;
  [v18 setColorspace_];

  v29 = v17;
  [v18 setAllowsDisplayCompositing_];
  [v18 setDelegate_];

  [v18 setPresentsWithTransaction_];
  swift_unknownObjectRelease();

  return v16;
}

id sub_1D96BEFA8()
{
  result = *(*&v0[OBJC_IVAR____TtC26WatchFacesWallpaperSupport18WallpaperMetalView_displayLink] + 32);
  if (result)
  {
    [result invalidate];
    v2.receiver = v0;
    v2.super_class = type metadata accessor for WallpaperMetalView(0);
    return objc_msgSendSuper2(&v2, sel_dealloc);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D96BF0F8(double a1)
{
  v2 = v1;
  v4 = sub_1D96DA5D0();
  v5 = *(v4 - 8);
  v87 = v4;
  v88 = v5;
  v6 = MEMORY[0x1EEE9AC00](v4);
  v81 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v79 = &v78 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB3F188, &qword_1D96DC850);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v84 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v80 = &v78 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB3F198, qword_1D96DC858);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v85 = &v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = (&v78 - v17);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v78 - v19;
  v21 = sub_1D96DA500();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v78 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v23);
  v28 = &v78 - v27;
  v29 = MEMORY[0x1EEE9AC00](v26);
  v31 = &v78 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v33 = &v78 - v32;
  sub_1D96DA4F0();
  sub_1D96DA4C0();
  v89 = *(v22 + 8);
  v90 = v22 + 8;
  v89(v31, v21);
  v34 = OBJC_IVAR____TtC26WatchFacesWallpaperSupport18WallpaperMetalView_timedRenderingInfo;
  swift_beginAccess();
  v91 = v34;
  v92 = v2;
  sub_1D96BE658(v2 + v34, v20, &qword_1ECB3F198, qword_1D96DC858);
  v35 = type metadata accessor for WallpaperMetalView.TimedContinuousRenderingInfo(0);
  v83 = *(v35 - 8);
  v36 = *(v83 + 48);
  v37 = v36(v20, 1, v35);
  v86 = v33;
  v82 = v35;
  if (v37)
  {
    v38 = v22;
    sub_1D96BE544(v20, &qword_1ECB3F198, qword_1D96DC858);
    v39 = v21;
LABEL_7:
    v47 = v88;
    sub_1D96BE658(v92 + v91, v18, &qword_1ECB3F198, qword_1D96DC858);
    v48 = v82;
    v49 = v38;
    if (v36(v18, 1, v82))
    {
      sub_1D96BE544(v18, &qword_1ECB3F198, qword_1D96DC858);
    }

    else
    {
      v50 = *v18;
      sub_1D96BE544(v18, &qword_1ECB3F198, qword_1D96DC858);
      [v50 invalidate];
    }

    v51 = objc_opt_self();
    v52 = swift_allocObject();
    v53 = v92;
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_1D96C0BF8;
    aBlock[5] = v52;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D96BFBE4;
    aBlock[3] = &block_descriptor_0;
    v54 = _Block_copy(aBlock);

    v55 = [v51 scheduledTimerWithTimeInterval:0 repeats:v54 block:a1];
    _Block_release(v54);
    v56 = OBJC_IVAR____TtC26WatchFacesWallpaperSupport18WallpaperMetalView_log;
    swift_beginAccess();
    v57 = v53 + v56;
    v58 = v84;
    sub_1D96BE658(v57, v84, &unk_1ECB3F188, &qword_1D96DC850);
    v59 = v87;
    if ((*(v47 + 48))(v58, 1, v87))
    {
      sub_1D96BE544(v58, &unk_1ECB3F188, &qword_1D96DC850);
    }

    else
    {
      (*(v47 + 16))(v81, v58, v59);
      sub_1D96BE544(v58, &unk_1ECB3F188, &qword_1D96DC850);
      v60 = sub_1D96DA5B0();
      v61 = sub_1D96DA890();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = v39;
        v63 = swift_slowAlloc();
        *v63 = 134349056;
        *(v63 + 4) = a1;
        _os_log_impl(&dword_1D96B3000, v60, v61, "beginning timed continuous rendering for %{public}f seconds", v63, 0xCu);
        v64 = v63;
        v39 = v62;
        v47 = v88;
        MEMORY[0x1DA736010](v64, -1, -1);
      }

      (*(v47 + 8))(v81, v59);
    }

    v65 = v85;
    v66 = v86;
    (*(v49 + 16))(&v85[*(v48 + 20)], v86, v39);
    *v65 = v55;
    (*(v83 + 56))(v65, 0, 1, v48);
    v68 = v91;
    v67 = v92;
    swift_beginAccess();
    v69 = v55;
    sub_1D96C0C18(v65, v67 + v68);
    swift_endAccess();
    sub_1D96BFC4C();

    sub_1D96BE544(v65, &qword_1ECB3F198, qword_1D96DC858);
    return (v89)(v66, v39);
  }

  (*(v22 + 16))(v25, &v20[*(v35 + 20)], v21);
  sub_1D96BE544(v20, &qword_1ECB3F198, qword_1D96DC858);
  v38 = v22;
  (*(v22 + 32))(v28, v25, v21);
  v39 = v21;
  if ((sub_1D96DA4D0() & 1) == 0)
  {
    v89(v28, v21);
    goto LABEL_7;
  }

  v40 = OBJC_IVAR____TtC26WatchFacesWallpaperSupport18WallpaperMetalView_log;
  v41 = v92;
  swift_beginAccess();
  v42 = v80;
  sub_1D96BE658(v41 + v40, v80, &unk_1ECB3F188, &qword_1D96DC850);
  v43 = v87;
  v44 = v88;
  if ((*(v88 + 48))(v42, 1, v87))
  {
    v45 = v89;
    v89(v28, v21);
    v45(v86, v21);
    return sub_1D96BE544(v42, &unk_1ECB3F188, &qword_1D96DC850);
  }

  else
  {
    v70 = v21;
    v71 = v79;
    (*(v44 + 16))(v79, v42, v43);
    sub_1D96BE544(v42, &unk_1ECB3F188, &qword_1D96DC850);
    v72 = sub_1D96DA5B0();
    v73 = sub_1D96DA890();
    v74 = os_log_type_enabled(v72, v73);
    v75 = v86;
    if (v74)
    {
      v76 = swift_slowAlloc();
      *v76 = 0;
      _os_log_impl(&dword_1D96B3000, v72, v73, "display link already running and will stop later than requested: not updating timer", v76, 2u);
      MEMORY[0x1DA736010](v76, -1, -1);
    }

    (*(v44 + 8))(v71, v43);
    v77 = v89;
    v89(v28, v70);
    return v77(v75, v70);
  }
}

void *sub_1D96BFAB4(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB3F198, qword_1D96DC858);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9[-v3];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = type metadata accessor for WallpaperMetalView.TimedContinuousRenderingInfo(0);
    (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
    v8 = OBJC_IVAR____TtC26WatchFacesWallpaperSupport18WallpaperMetalView_timedRenderingInfo;
    swift_beginAccess();
    sub_1D96C0C18(v4, v6 + v8);
    swift_endAccess();
    sub_1D96BFC4C();

    return sub_1D96BE544(v4, &qword_1ECB3F198, qword_1D96DC858);
  }

  return result;
}

void sub_1D96BFBE4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_1D96BFC4C()
{
  v1 = sub_1D96DA5D0();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v40 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB3F188, &qword_1D96DC850);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v40 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB3F198, qword_1D96DC858);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v40 - v15;
  if (*(v0 + OBJC_IVAR____TtC26WatchFacesWallpaperSupport18WallpaperMetalView_wantsIndefiniteContinuousRendering) == 1)
  {
    v17 = (v0 + OBJC_IVAR____TtC26WatchFacesWallpaperSupport18WallpaperMetalView_linkActive);
    if (*(v0 + OBJC_IVAR____TtC26WatchFacesWallpaperSupport18WallpaperMetalView_linkActive))
    {
      return;
    }

    goto LABEL_6;
  }

  v40 = v5;
  v41 = v11;
  v18 = OBJC_IVAR____TtC26WatchFacesWallpaperSupport18WallpaperMetalView_timedRenderingInfo;
  swift_beginAccess();
  sub_1D96BE658(v0 + v18, v16, &qword_1ECB3F198, qword_1D96DC858);
  v19 = type metadata accessor for WallpaperMetalView.TimedContinuousRenderingInfo(0);
  v20 = (*(*(v19 - 8) + 48))(v16, 1, v19);
  sub_1D96BE544(v16, &qword_1ECB3F198, qword_1D96DC858);
  v17 = (v0 + OBJC_IVAR____TtC26WatchFacesWallpaperSupport18WallpaperMetalView_linkActive);
  if ((v20 != 1) != *(v0 + OBJC_IVAR____TtC26WatchFacesWallpaperSupport18WallpaperMetalView_linkActive))
  {
    if (v20 != 1)
    {
LABEL_6:
      v21 = OBJC_IVAR____TtC26WatchFacesWallpaperSupport18WallpaperMetalView_log;
      swift_beginAccess();
      sub_1D96BE658(v0 + v21, v13, &unk_1ECB3F188, &qword_1D96DC850);
      if ((*(v2 + 48))(v13, 1, v1))
      {
        sub_1D96BE544(v13, &unk_1ECB3F188, &qword_1D96DC850);
      }

      else
      {
        v22 = v0;
        (*(v2 + 16))(v7, v13, v1);
        sub_1D96BE544(v13, &unk_1ECB3F188, &qword_1D96DC850);
        v23 = sub_1D96DA5B0();
        v24 = sub_1D96DA890();
        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          *v25 = 0;
          _os_log_impl(&dword_1D96B3000, v23, v24, "🟢 starting display link", v25, 2u);
          MEMORY[0x1DA736010](v25, -1, -1);
        }

        (*(v2 + 8))(v7, v1);
        v0 = v22;
      }

      v26 = *(v0 + OBJC_IVAR____TtC26WatchFacesWallpaperSupport18WallpaperMetalView_displayLink);
      v27 = *(v26 + 32);
      if (v27)
      {
        [v27 setPaused_];
        v28 = [objc_opt_self() mainRunLoop];
        v29 = *(v26 + 32);
        if (v29)
        {
          [v29 addToRunLoop:v28 forMode:*MEMORY[0x1E695DA28]];

          *v17 = 1;
          return;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_25;
    }

    v30 = *(v0 + OBJC_IVAR____TtC26WatchFacesWallpaperSupport18WallpaperMetalView_displayLink);
    v31 = [objc_opt_self() mainRunLoop];
    v32 = *(v30 + 32);
    if (!v32)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    [v32 removeFromRunLoop:v31 forMode:*MEMORY[0x1E695DA28]];

    v33 = *(v30 + 32);
    v34 = v41;
    if (!v33)
    {
LABEL_26:
      __break(1u);
      return;
    }

    [v33 setPaused_];
    v35 = OBJC_IVAR____TtC26WatchFacesWallpaperSupport18WallpaperMetalView_log;
    swift_beginAccess();
    sub_1D96BE658(v0 + v35, v34, &unk_1ECB3F188, &qword_1D96DC850);
    if ((*(v2 + 48))(v34, 1, v1))
    {
      sub_1D96BE544(v34, &unk_1ECB3F188, &qword_1D96DC850);
    }

    else
    {
      v36 = v40;
      (*(v2 + 16))(v40, v34, v1);
      sub_1D96BE544(v34, &unk_1ECB3F188, &qword_1D96DC850);
      v37 = sub_1D96DA5B0();
      v38 = sub_1D96DA890();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_1D96B3000, v37, v38, "🛑 stopped display link", v39, 2u);
        MEMORY[0x1DA736010](v39, -1, -1);
      }

      (*(v2 + 8))(v36, v1);
    }

    *v17 = 0;
  }
}

void sub_1D96C0344(uint64_t a1)
{
  sub_1D96C0468(319, qword_1EDB95C60, MEMORY[0x1E69E9420]);
  if (v1 <= 0x3F)
  {
    sub_1D96C0468(319, &unk_1EDB95D58, type metadata accessor for WallpaperMetalView.TimedContinuousRenderingInfo);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1D96C0468(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D96DA920();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D96C04DC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D96C053C(uint64_t a1)
{
  result = sub_1D96BE7C4(319, &qword_1EDB95BD8, 0x1E695DFF0);
  if (v2 <= 0x3F)
  {
    result = sub_1D96DA500();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1D96C05D4()
{
  v1 = (v0 + OBJC_IVAR____TtC26WatchFacesWallpaperSupport18WallpaperMetalView_drawingHandler);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC26WatchFacesWallpaperSupport18WallpaperMetalView_shouldDrawAutomatically) = 1;
  v2 = OBJC_IVAR____TtC26WatchFacesWallpaperSupport18WallpaperMetalView_log;
  v3 = sub_1D96DA5D0();
  (*(*(v3 - 8) + 56))(v0 + v2, 1, 1, v3);
  *(v0 + OBJC_IVAR____TtC26WatchFacesWallpaperSupport18WallpaperMetalView_wantsIndefiniteContinuousRendering) = 0;
  v4 = OBJC_IVAR____TtC26WatchFacesWallpaperSupport18WallpaperMetalView_displayLink;
  type metadata accessor for DisplayLink();
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + 32) = 0;
  v6 = [objc_opt_self() displayLinkWithTarget:v5 selector:sel__displayLinkFired];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  *(v0 + v4) = v5;
  *(v0 + OBJC_IVAR____TtC26WatchFacesWallpaperSupport18WallpaperMetalView_linkActive) = 0;
  v8 = OBJC_IVAR____TtC26WatchFacesWallpaperSupport18WallpaperMetalView_timedRenderingInfo;
  v9 = type metadata accessor for WallpaperMetalView.TimedContinuousRenderingInfo(0);
  (*(*(v9 - 8) + 56))(v0 + v8, 1, 1, v9);
  sub_1D96DAA40();
  __break(1u);
}

void sub_1D96C0764()
{
  v2 = v0;
  v3 = sub_1D96DA5D0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB3F188, &qword_1D96DC850);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v22 - v8;
  v10 = OBJC_IVAR____TtC26WatchFacesWallpaperSupport18WallpaperMetalView_shouldDrawAutomatically;
  if (v2[OBJC_IVAR____TtC26WatchFacesWallpaperSupport18WallpaperMetalView_shouldDrawAutomatically] != 1)
  {
    goto LABEL_8;
  }

  v11 = *(*&v2[OBJC_IVAR____TtC26WatchFacesWallpaperSupport18WallpaperMetalView_displayLink] + 32);
  if (!v11)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (![v11 isPaused])
  {
LABEL_8:
    v17 = OBJC_IVAR____TtC26WatchFacesWallpaperSupport18WallpaperMetalView_log;
    swift_beginAccess();
    sub_1D96BE658(&v2[v17], v9, &unk_1ECB3F188, &qword_1D96DC850);
    if ((*(v4 + 48))(v9, 1, v3))
    {
      sub_1D96BE544(v9, &unk_1ECB3F188, &qword_1D96DC850);
      return;
    }

    (*(v4 + 16))(v6, v9, v3);
    sub_1D96BE544(v9, &unk_1ECB3F188, &qword_1D96DC850);
    v1 = v2;
    v18 = sub_1D96DA5B0();
    v19 = sub_1D96DA870();
    if (!os_log_type_enabled(v18, v19))
    {

      v18 = v1;
      goto LABEL_14;
    }

    v20 = swift_slowAlloc();
    *v20 = 67109376;
    *(v20 + 4) = v2[v10];
    *(v20 + 8) = 1024;
    v21 = (*(&v1->isa + OBJC_IVAR____TtC26WatchFacesWallpaperSupport18WallpaperMetalView_displayLink))[4];
    if (v21)
    {
      *(v20 + 10) = [v21 isPaused];

      _os_log_impl(&dword_1D96B3000, v18, v19, "skipping needs-display render: should auto-draw %{BOOL}d, link paused %{BOOL}d", v20, 0xEu);
      MEMORY[0x1DA736010](v20, -1, -1);
LABEL_14:

      (*(v4 + 8))(v6, v3);
      return;
    }

LABEL_21:

    __break(1u);
    return;
  }

  v12 = *&v2[OBJC_IVAR____TtC26WatchFacesWallpaperSupport18WallpaperMetalView_drawingHandler];
  if (v12)
  {
    v13 = *&v2[OBJC_IVAR____TtC26WatchFacesWallpaperSupport18WallpaperMetalView_drawingHandler + 8];

    v14 = [v2 layer];
    objc_opt_self();
    v15 = swift_dynamicCastObjCClass();
    if (v15)
    {
      v16 = [v15 nextDrawable];

      if (v16)
      {
        v12(v16);
        swift_unknownObjectRelease();
      }
    }

    else
    {
    }

    sub_1D96BEAFC(v12, v13);
  }
}

void sub_1D96C0B08()
{
  v1 = *&v0[OBJC_IVAR____TtC26WatchFacesWallpaperSupport18WallpaperMetalView_drawingHandler];
  if (v1)
  {
    v2 = *&v0[OBJC_IVAR____TtC26WatchFacesWallpaperSupport18WallpaperMetalView_drawingHandler + 8];

    v3 = [v0 layer];
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4)
    {
      v5 = [v4 nextDrawable];

      if (v5)
      {
        v1(v5);
        swift_unknownObjectRelease();
      }
    }

    else
    {
    }

    sub_1D96BEAFC(v1, v2);
  }
}

double block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1D96C0C18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB3F198, qword_1D96DC858);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

double WallpaperMetalCoordination.WallpaperState.unlockState.getter@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = result;
  return result;
}

double WallpaperMetalCoordination.WallpaperState.unlockState.setter(uint64_t a1)
{
  result = *(a1 + 8);
  *v1 = *a1;
  *(v1 + 8) = result;
  return result;
}

__n128 WallpaperMetalCoordination.WallpaperState.wakeState.getter@<Q0>(uint64_t a1@<X8>)
{
  *a1 = *(v1 + 16);
  result = *(v1 + 24);
  *(a1 + 8) = result;
  return result;
}

__n128 WallpaperMetalCoordination.WallpaperState.wakeState.setter(uint64_t a1)
{
  *(v1 + 16) = *a1;
  result = *(a1 + 8);
  *(v1 + 24) = result;
  return result;
}

float sub_1D96C0DCC()
{
  v1 = *v0 - 2;
  if (*(v0 + 40))
  {
    v2 = *(v0 + 8);
    v3 = 0.0;
    v4 = 0.0;
    if (v1 <= 2)
    {
      v4 = flt_1D96DCB3C[v1];
    }

    if ((v2 - 2) <= 2)
    {
      v3 = flt_1D96DCB3C[v2 - 2];
    }

    v7 = *(v0 + 16);
    v5 = *(v0 + 24);
    v6 = *(v0 + 32);
    v8 = (CFAbsoluteTimeGetCurrent() - v5) / v6;
    *&v8 = v8;
    if (*&v8 < 1.0)
    {
      if (*&v8 > 1.0)
      {
        *&v8 = 1.0;
      }

      [v7 _solveForInput_];
      v10 = fabsf(vabds_f32(v3, v4) + -3.1416);
      v11 = (v3 - v4) + 6.2832;
      if ((v3 - v4) >= -3.1416)
      {
        v11 = v3 - v4;
      }

      if ((v3 - v4) <= 3.1416)
      {
        v12 = v11;
      }

      else
      {
        v12 = (v3 - v4) + -6.2832;
      }

      if (v10 < 0.1)
      {
        v12 = 3.1416;
      }

      return v4 + (v9 * v12);
    }
  }

  else
  {
    v3 = 0.0;
    if (v1 < 3)
    {
      return flt_1D96DCB3C[v1];
    }
  }

  return v3;
}

float WallpaperMetalCoordination.WallpaperState.rotationLandscapeAmount.getter()
{
  v3 = *(v0 + 88);
  v2 = v0 + 88;
  v1 = v3;
  if (*(v2 + 40))
  {
    v4 = *(v2 + 8);
    if (v1 == 4)
    {
      result = 1.0;
      if (v4 == 3)
      {
        return result;
      }

LABEL_14:
      v6 = sub_1D96C0DCC() / 3.1416;
      v7 = floorf(v6);
      return vabds_f32(1.0, fabsf(((v6 - v7) + (v6 - v7)) + -1.0));
    }

    if (v4 == 4)
    {
      if (v1 != 3)
      {
        goto LABEL_14;
      }
    }

    else if (v1 == v4 || (v1 == 3) != (v4 == 3))
    {
      goto LABEL_14;
    }
  }

  else
  {
    result = 1.0;
    if (v1 == 4)
    {
      return result;
    }
  }

  result = 0.0;
  if (v1 == 3)
  {
    return 1.0;
  }

  return result;
}

uint64_t WallpaperMetalCoordination.WallpaperState.look.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  v4 = *(v1 + 64);
  v5 = *(v1 + 72);
  v6 = *(v1 + 80);
  v7 = *(v1 + 84);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 36) = v7;
  return sub_1D96BE5BC(v2, v3, v4, v5, v6, v7);
}

__n128 WallpaperMetalCoordination.WallpaperState.look.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 36);
  sub_1D96BABE8(*(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72), *(v1 + 80), *(v1 + 84));
  result = *a1;
  v6 = *(a1 + 16);
  *(v1 + 48) = *a1;
  *(v1 + 64) = v6;
  *(v1 + 80) = v3;
  *(v1 + 84) = v4;
  return result;
}

uint64_t sub_1D96C1090(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 9) = *(a1 + 25);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 9) = *(a2 + 25);
  return sub_1D96C13D8(&v5, &v7) & 1;
}

void sub_1D96C10DC()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69794A8]) init];
  [v0 setMass_];
  [v0 setStiffness_];
  [v0 setDamping_];
  v1 = v0;
  [v1 setDuration_];

  qword_1ECB3F210 = v1;
}

double WallpaperMetalCoordination.WallpaperState.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(a1 + 24) = _Q0;
  *(a1 + 40) = 0;
  *(a1 + 42) = 0;
  *(a1 + 88) = 1;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0;
  result = 0.0;
  *(a1 + 48) = xmmword_1D96DC890;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 77) = 0;
  return result;
}

double WallpaperMetalCoordination.WallpaperState.init(unlockProgress:linearWakeProgress:isDarkMode:orientation:)@<D0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v5 = 0.0;
  if (a5 > 0.0)
  {
    v5 = 1.0;
    if (a5 < 0.9999)
    {
      v6 = a4;
      v7 = a1;
      v8 = a2;
      v9 = a3;
      if (qword_1ECB3EC40 != -1)
      {
        v15 = a5;
        swift_once();
        a5 = v15;
      }

      *&a4 = a5;
      v10 = a5;
      [qword_1ECB3F210 _solveForInput_];
      a5 = v10;
      v5 = v11;
      a3 = v9;
      a2 = v8;
      a1 = v7;
      a4 = v6;
    }
  }

  if (a4 >= 1.0)
  {
    v12 = 1;
  }

  else
  {
    v12 = 2;
  }

  if (a4 <= 0.0)
  {
    v12 = 0;
  }

  *a3 = v12;
  *(a3 + 8) = a4;
  v13 = 2 * (v5 < 1.0);
  if (v5 <= 0.0)
  {
    v13 = 1;
  }

  *(a3 + 16) = v13;
  *(a3 + 24) = a5;
  *(a3 + 32) = v5;
  *(a3 + 40) = a1 & 1;
  *(a3 + 41) = 0;
  *(a3 + 48) = xmmword_1D96DC890;
  *(a3 + 64) = 0;
  *(a3 + 72) = 0;
  *(a3 + 80) = 0;
  *(a3 + 84) = 0;
  *(a3 + 88) = a2;
  result = 0.0;
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 128) = 0;
  return result;
}

uint64_t WallpaperMetalCoordination.WallpaperState.description.getter()
{
  sub_1D96DA9A0();

  v0 = sub_1D96DA840();
  MEMORY[0x1DA735440](v0);

  MEMORY[0x1DA735440](0x2085949FF0202CLL, 0xA700000000000000);
  v1 = sub_1D96DA840();
  MEMORY[0x1DA735440](v1);

  return 0x2093949FF0;
}

uint64_t sub_1D96C13D8(double *a1, uint64_t a2)
{
  v2 = *a1;
  if ((a1[5] & 1) == 0)
  {
    if ((*(a2 + 40) & 1) == 0)
    {
      return v2 == *a2;
    }

    return 0;
  }

  if ((*(a2 + 40) & 1) == 0)
  {
    return 0;
  }

  result = 0;
  if (v2 == *a2 && *(a1 + 1) == *(a2 + 8))
  {
    v5 = a1[3];
    v6 = a1[4];
    v7 = *(a2 + 24);
    v8 = *(a2 + 32);
    sub_1D96C1D10();
    v9 = sub_1D96DA910() & (v5 == v7);
    if (v6 == v8)
    {
      return v9;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL _s26WatchFacesWallpaperSupport0C17MetalCoordinationO0C5StateV4LookO2eeoiySbAG_AGtFZ_0(void *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *(a1 + 8);
  v7 = *(a1 + 36);
  v9 = *a2;
  v8 = *(a2 + 8);
  v11 = *(a2 + 16);
  v10 = *(a2 + 24);
  v12 = *(a2 + 32);
  v13 = *(a2 + 36);
  if ((v7 & 1) == 0)
  {
    if ((*(a2 + 36) & 1) == 0)
    {
      v28 = a1[3];
      if (__PAIR128__(v3, v2) == __PAIR128__(v8, v9))
      {
        v29 = *(a2 + 16);
        v30 = *(a2 + 24);
        v31 = *a1;
        sub_1D96BE5BC(*a1, v3, v29, v30, v12, 0);
        sub_1D96BE5BC(v31, v3, v5, v28, v6, 0);
        sub_1D96BABE8(v31, v3, v5, v28, v6, 0);
        sub_1D96BABE8(v31, v3, v29, v30, v12, 0);
        return 1;
      }

      else
      {
        v32 = *a1;
        v37 = sub_1D96DAAE0();
        sub_1D96BE5BC(v9, v8, v11, v10, v12, 0);
        sub_1D96BE5BC(v32, v3, v5, v28, v6, 0);
        sub_1D96BABE8(v32, v3, v5, v28, v6, 0);
        sub_1D96BABE8(v9, v8, v11, v10, v12, 0);
        return v37 & 1;
      }
    }

    goto LABEL_10;
  }

  if ((*(a2 + 36) & 1) == 0)
  {
LABEL_10:
    v35 = *(a2 + 16);
    v36 = *(a2 + 8);
    v19 = a1[3];
    v20 = *a1;
    sub_1D96BE5BC(*a2, v36, v35, v10, v12, v13);
    sub_1D96BE5BC(v20, v3, v5, v19, v6, v7);
    sub_1D96BABE8(v20, v3, v5, v19, v6, v7);
    v21 = v9;
    v23 = v35;
    v22 = v36;
    v24 = v10;
    v25 = v12;
    v26 = v13;
LABEL_11:
    sub_1D96BABE8(v21, v22, v23, v24, v25, v26);
    return 0;
  }

  if (v2 != v9 || v3 != v8)
  {
    v14 = a1[3];
    v15 = *a1;
    v16 = sub_1D96DAAE0();
    v2 = v15;
    v4 = v14;
    if ((v16 & 1) == 0)
    {
      sub_1D96BE5BC(v9, v8, v11, v10, v12, 1);
      sub_1D96BE5BC(v15, v3, v5, v14, v6, 1);
      sub_1D96BABE8(v15, v3, v5, v14, v6, 1);
      v21 = v9;
      v22 = v8;
      v23 = v11;
      v24 = v10;
      v25 = v12;
      v26 = 1;
      goto LABEL_11;
    }
  }

  v34 = v2;
  if (v5 == v11 && v4 == v10)
  {
    v17 = v4;
    v18 = *&v12;
    sub_1D96BE5BC(v9, v8, v5, v4, v12, 1);
    sub_1D96BE5BC(v34, v3, v5, v17, v6, 1);
    sub_1D96BABE8(v34, v3, v5, v17, v6, 1);
    sub_1D96BABE8(v9, v8, v5, v17, v12, 1);
    return *&v6 == v18;
  }

  v33 = v4;
  v18 = *&v12;
  v38 = sub_1D96DAAE0();
  sub_1D96BE5BC(v9, v8, v11, v10, v12, 1);
  sub_1D96BE5BC(v34, v3, v5, v33, v6, 1);
  sub_1D96BABE8(v34, v3, v5, v33, v6, 1);
  sub_1D96BABE8(v9, v8, v11, v10, v12, 1);
  result = 0;
  if (v38)
  {
    return *&v6 == v18;
  }

  return result;
}

uint64_t _s26WatchFacesWallpaperSupport0C17MetalCoordinationO0C5StateV2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = 0;
  v5 = *a1;
  v6 = *(a1 + 1);
  v7 = a1[16];
  v9 = *(a1 + 3);
  v8 = *(a1 + 4);
  v10 = a1[40];
  v11 = a1[41];
  v12 = a1[42];
  v14 = *(a1 + 6);
  v13 = *(a1 + 7);
  v15 = *(a1 + 8);
  v16 = *(a1 + 9);
  v17 = *(a1 + 20);
  v18 = a1[84];
  v19 = *(a1 + 104);
  v49 = *(a1 + 88);
  v50[0] = v19;
  *(v50 + 9) = *(a1 + 113);
  v20 = *a2;
  v21 = *(a2 + 1);
  v22 = a2[16];
  v24 = *(a2 + 3);
  v23 = *(a2 + 4);
  v25 = a2[40];
  v26 = a2[41];
  v27 = a2[42];
  v28 = *(a2 + 6);
  v29 = *(a2 + 7);
  v30 = *(a2 + 8);
  v31 = *(a2 + 9);
  v32 = *(a2 + 20);
  v33 = *(a2 + 104);
  v51 = *(a2 + 88);
  v52[0] = v33;
  v34 = a2[84];
  *(v52 + 9) = *(a2 + 113);
  if (v5 == v20 && v6 == v21 && v7 == v22 && v9 == v24 && v8 == v23 && ((v10 ^ v25) & 1) == 0 && ((v11 ^ v26) & 1) == 0 && ((v12 ^ v27) & 1) == 0)
  {
    v43 = v14;
    v44 = v13;
    v45 = v15;
    v46 = v16;
    v47 = v17;
    v48 = v18;
    v37 = v28;
    v38 = v29;
    v39 = v30;
    v40 = v31;
    v41 = v32;
    v42 = v34;
    sub_1D96BE5BC(v14, v13, v15, v16, v17, v18);
    sub_1D96BE5BC(v28, v29, v30, v31, v32, v34);
    v35 = _s26WatchFacesWallpaperSupport0C17MetalCoordinationO0C5StateV4LookO2eeoiySbAG_AGtFZ_0(&v43, &v37);
    sub_1D96BABE8(v37, v38, v39, v40, v41, v42);
    sub_1D96BABE8(v43, v44, v45, v46, v47, v48);
    if (v35)
    {
      v4 = sub_1D96C13D8(&v49, &v51);
    }

    else
    {
      v4 = 0;
    }
  }

  return v4 & 1;
}

__n128 __swift_memcpy129_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1D96C1AB8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 129))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1D96C1B0C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 128) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 129) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 129) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy37_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 29) = *(a2 + 29);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1D96C1B98(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 37))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 36);
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

uint64_t sub_1D96C1BE0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 36) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 37) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 37) = 0;
    }

    if (a2)
    {
      *(result + 36) = -a2;
    }
  }

  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1D96C1C5C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
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

uint64_t sub_1D96C1CA4(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 40) = -a2;
    }
  }

  return result;
}

unint64_t sub_1D96C1D10()
{
  result = qword_1ECB3F218;
  if (!qword_1ECB3F218)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECB3F218);
  }

  return result;
}

uint64_t sub_1D96C1D5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_1D96BCEFC(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_1D96BB834(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_1D96BD340();
        v14 = v16;
      }

      result = sub_1D96BCA64(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t sub_1D96C1E54()
{
  MEMORY[0x1DA7360C0](v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1D96C1E8C()
{
  v0 = sub_1D96DA5D0();
  __swift_allocate_value_buffer(v0, qword_1EDB958C0);
  __swift_project_value_buffer(v0, qword_1EDB958C0);
  return sub_1D96DA5C0();
}

uint64_t static Logger.supression.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDB958B8 != -1)
  {
    swift_once();
  }

  v2 = sub_1D96DA5D0();
  v3 = __swift_project_value_buffer(v2, qword_1EDB958C0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void static RendererTokenManager.pushSupression()()
{
  v0 = qword_1EDB958E0 + 1;
  if (__OFADD__(qword_1EDB958E0, 1))
  {
    goto LABEL_39;
  }

  ++qword_1EDB958E0;
  if (v0 == 1)
  {
    if (qword_1EDB963E0 != -1)
    {
      goto LABEL_40;
    }

    while (1)
    {
      swift_beginAccess();
      v1 = qword_1EDB963E8;
      if (qword_1EDB963E8 >> 62)
      {
        v2 = sub_1D96DAA60();
        if (!v2)
        {
          return;
        }
      }

      else
      {
        v2 = *((qword_1EDB963E8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v2)
        {
          return;
        }
      }

      v3 = v1 & 0xC000000000000001;
      v29 = v1 & 0xFFFFFFFFFFFFFF8;

      v4 = 0;
      v31 = v2;
      v32 = v1;
      v30 = v1 & 0xC000000000000001;
      while (v3)
      {
        MEMORY[0x1DA7356D0](v4, v1);
        v5 = __OFADD__(v4++, 1);
        if (v5)
        {
          goto LABEL_37;
        }

LABEL_14:
        Strong = swift_weakLoadStrong();
        if (!Strong)
        {
          goto LABEL_33;
        }

        v7 = Strong;
        swift_beginAccess();
        v8 = *(v7 + 16);
        if (*(v8 + 16))
        {
          v33 = v4;
          v9 = v8 + 64;
          v10 = 1 << *(v8 + 32);
          if (v10 < 64)
          {
            v11 = ~(-1 << v10);
          }

          else
          {
            v11 = -1;
          }

          v12 = v11 & *(v8 + 64);
          v13 = (v10 + 63) >> 6;

          v15 = 0;
          v16 = v14;
          v34 = v14;
          while (v12)
          {
            v17 = v15;
LABEL_27:
            v18 = (*(v16 + 48) + ((v17 << 10) | (16 * __clz(__rbit64(v12)))));
            v20 = *v18;
            v19 = v18[1];
            v21 = qword_1EDB958B8;

            if (v21 != -1)
            {
              swift_once();
            }

            v12 &= v12 - 1;
            v22 = sub_1D96DA5D0();
            __swift_project_value_buffer(v22, qword_1EDB958C0);

            v23 = sub_1D96DA5B0();
            v24 = sub_1D96DA890();

            if (os_log_type_enabled(v23, v24))
            {
              v25 = swift_slowAlloc();
              v26 = swift_slowAlloc();
              v35 = v26;
              *v25 = 136315138;
              v27 = sub_1D96BB28C(v20, v19, &v35);

              *(v25 + 4) = v27;
              _os_log_impl(&dword_1D96B3000, v23, v24, "Canceling render extension for reason: %s due to supression", v25, 0xCu);
              __swift_destroy_boxed_opaque_existential_0Tm(v26);
              v28 = v26;
              v16 = v34;
              MEMORY[0x1DA736010](v28, -1, -1);
              MEMORY[0x1DA736010](v25, -1, -1);
            }

            else
            {
            }

            v15 = v17;
          }

          while (1)
          {
            v17 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_37;
            }

            if (v17 >= v13)
            {
              break;
            }

            v12 = *(v9 + 8 * v17);
            ++v15;
            if (v12)
            {
              goto LABEL_27;
            }
          }

          RendererTokenManager.invalidateAllTokens()();

          v2 = v31;
          v1 = v32;
          v3 = v30;
          v4 = v33;
          if (v33 == v31)
          {
            goto LABEL_34;
          }
        }

        else
        {

LABEL_33:

          if (v4 == v2)
          {
LABEL_34:

            return;
          }
        }
      }

      if (v4 >= *(v29 + 16))
      {
        goto LABEL_38;
      }

      v5 = __OFADD__(v4++, 1);
      if (!v5)
      {
        goto LABEL_14;
      }

LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      swift_once();
    }
  }
}

Swift::Void __swiftcall RendererTokenManager.invalidateAllTokens()()
{
  v1 = v0;
  if (qword_1EDB960E8 != -1)
  {
LABEL_16:
    swift_once();
  }

  v2 = sub_1D96DA5D0();
  __swift_project_value_buffer(v2, qword_1EDB96A10);

  v3 = sub_1D96DA5B0();
  v4 = sub_1D96DA890();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20[0] = v6;
    *v5 = 136315138;
    swift_beginAccess();
    sub_1D96C30A0();

    v7 = sub_1D96DA650();
    v9 = v8;

    v10 = sub_1D96BB28C(v7, v9, v20);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_1D96B3000, v3, v4, "Invalidating all render extensions: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x1DA736010](v6, -1, -1);
    MEMORY[0x1DA736010](v5, -1, -1);
  }

  swift_beginAccess();
  v11 = *(v1 + 16);
  v12 = 1 << *(v11 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v11 + 64);
  v15 = (v12 + 63) >> 6;

  v16 = 0;
  if (v14)
  {
    while (1)
    {
      v17 = v16;
LABEL_12:
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v19 = *(*(v11 + 56) + ((v17 << 9) | (8 * v18)));
      [objc_msgSend(v19 assertion)];

      swift_unknownObjectRelease();
      if (!v14)
      {
        goto LABEL_8;
      }
    }
  }

  while (1)
  {
LABEL_8:
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_16;
    }

    if (v17 >= v15)
    {
      break;
    }

    v14 = *(v11 + 64 + 8 * v17);
    ++v16;
    if (v14)
    {
      v16 = v17;
      goto LABEL_12;
    }
  }

  *(v1 + 16) = MEMORY[0x1E69E7CC8];
}

void static RendererTokenManager.popSupression()()
{
  if (__OFSUB__(qword_1EDB958E0, 1))
  {
    __break(1u);
  }

  else
  {
    --qword_1EDB958E0;
  }
}

uint64_t RendererTokenManager.__allocating_init()()
{
  v0 = swift_allocObject();
  RendererTokenManager.init()();
  return v0;
}

uint64_t RendererTokenManager.init()()
{
  *(v0 + 16) = sub_1D96BDF10(MEMORY[0x1E69E7CC0]);
  if (qword_1EDB963E0 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB3F220, &qword_1D96DCB60);
  swift_allocObject();
  swift_weakInit();
  swift_weakAssign();
  v1 = swift_beginAccess();
  MEMORY[0x1DA7354C0](v1);
  if (*((qword_1EDB963E8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((qword_1EDB963E8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1D96DA7D0();
  }

  sub_1D96DA7E0();
  swift_endAccess();
  return v0;
}

uint64_t RendererTokenManager.deinit()
{
  v1 = v0;
  if (qword_1EDB963E0 != -1)
  {
LABEL_20:
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_1EDB963E8;
  v8 = MEMORY[0x1E69E7CC0];
  if (qword_1EDB963E8 >> 62)
  {
    v3 = sub_1D96DAA60();
  }

  else
  {
    v3 = *((qword_1EDB963E8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3)
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1DA7356D0](v4, v2);
        v5 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_15:
          __break(1u);
LABEL_16:
          v6 = v8;
          goto LABEL_18;
        }
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_20;
        }

        v5 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_15;
        }
      }

      if (swift_weakLoadStrong())
      {

        sub_1D96DA9E0();
        sub_1D96DAA10();
        sub_1D96DAA20();
        sub_1D96DA9F0();
      }

      else
      {
      }

      ++v4;
      if (v5 == v3)
      {
        goto LABEL_16;
      }
    }
  }

  v6 = MEMORY[0x1E69E7CC0];
LABEL_18:

  qword_1EDB963E8 = v6;

  return v1;
}

uint64_t RendererTokenManager.__deallocating_deinit()
{
  RendererTokenManager.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

void RendererTokenManager.requestExtension(from:for:)(void *a1, Swift::String a2)
{
  object = a2._object;
  countAndFlagsBits = a2._countAndFlagsBits;
  if (qword_1EDB958E0 < 1)
  {
    RendererTokenManager.invalidateToken(for:)(a2);
    if (qword_1EDB960E8 != -1)
    {
      swift_once();
    }

    v16 = sub_1D96DA5D0();
    __swift_project_value_buffer(v16, qword_1EDB96A10);
    v17 = a1;

    v18 = sub_1D96DA5B0();
    v19 = sub_1D96DA890();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      osloga = swift_slowAlloc();
      v33[0] = osloga;
      *v20 = 136315394;
      v21 = v17;
      v30 = v19;
      v22 = countAndFlagsBits;
      v23 = [v21 description];
      v24 = sub_1D96DA6C0();
      v26 = v25;

      countAndFlagsBits = v22;
      v27 = sub_1D96BB28C(v24, v26, v33);

      *(v20 + 4) = v27;
      *(v20 + 12) = 2080;
      *(v20 + 14) = sub_1D96BB28C(v22, object, v33);
      _os_log_impl(&dword_1D96B3000, v18, v30, "Requesting render extension on %s for reason: %s", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA736010](osloga, -1, -1);
      MEMORY[0x1DA736010](v20, -1, -1);
    }

    v28 = sub_1D96DA690();
    v29 = [v17 extendRenderingSessionForReason_];

    swift_beginAccess();
    sub_1D96C1D5C(v29, countAndFlagsBits, object);
    swift_endAccess();
  }

  else
  {
    if (qword_1EDB958B8 != -1)
    {
      swift_once();
    }

    v5 = sub_1D96DA5D0();
    __swift_project_value_buffer(v5, qword_1EDB958C0);
    v6 = a1;

    oslog = sub_1D96DA5B0();
    v7 = sub_1D96DA890();

    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v33[0] = v9;
      *v8 = 136315650;
      v10 = v6;
      v11 = [v10 description];
      v12 = sub_1D96DA6C0();
      v14 = v13;

      v15 = sub_1D96BB28C(v12, v14, v33);

      *(v8 + 4) = v15;
      *(v8 + 12) = 2080;
      *(v8 + 14) = sub_1D96BB28C(countAndFlagsBits, object, v33);
      *(v8 + 22) = 2048;
      *(v8 + 24) = qword_1EDB958E0;
      _os_log_impl(&dword_1D96B3000, oslog, v7, "Supressed requested render extension on %s for reason: %s because supression count is %ld", v8, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1DA736010](v9, -1, -1);
      MEMORY[0x1DA736010](v8, -1, -1);
    }

    else
    {
    }
  }
}

Swift::Void __swiftcall RendererTokenManager.invalidateToken(for:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  swift_beginAccess();
  v4 = *(v1 + 16);
  if (*(v4 + 16) && (v5 = sub_1D96BB834(countAndFlagsBits, object), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 8 * v5);
    swift_endAccess();
    v8 = qword_1EDB960E8;
    v9 = v7;
    if (v8 != -1)
    {
      swift_once();
    }

    v10 = sub_1D96DA5D0();
    __swift_project_value_buffer(v10, qword_1EDB96A10);

    v11 = sub_1D96DA5B0();
    v12 = sub_1D96DA890();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v16[0] = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_1D96BB28C(countAndFlagsBits, object, v16);
      _os_log_impl(&dword_1D96B3000, v11, v12, "Invalidating render extension of reason: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v14);
      MEMORY[0x1DA736010](v14, -1, -1);
      MEMORY[0x1DA736010](v13, -1, -1);
    }

    [objc_msgSend(v9 assertion)];
    swift_unknownObjectRelease();
    swift_beginAccess();
    v15 = sub_1D96C30EC(countAndFlagsBits, object);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }
}

Swift::Bool __swiftcall RendererTokenManager.hasExtension(for:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  swift_beginAccess();
  if (*(*(v1 + 16) + 16))
  {
    sub_1D96BB834(countAndFlagsBits, object);
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  swift_endAccess();
  return v5 & 1;
}

unint64_t sub_1D96C30A0()
{
  result = qword_1EDB960D8;
  if (!qword_1EDB960D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDB960D8);
  }

  return result;
}

uint64_t sub_1D96C30EC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_1D96BB834(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v11 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1D96BD340();
    v8 = v11;
  }

  v9 = *(*(v8 + 56) + 8 * v6);
  sub_1D96BCA64(v6, v8);
  *v3 = v8;
  return v9;
}

uint64_t RotationFrame.clockwise.getter()
{
  v1 = *v0;
  v2 = v0[1];
  if (*v0 == 1 && v2 == 4)
  {
    return 1;
  }

  v5 = v1 == 3 && v2 == 1;
  v7 = v1 == 2 && v2 == 3 || v5;
  if (v1 == 4 && v2 == 2)
  {
    return 1;
  }

  else
  {
    return v7;
  }
}

uint64_t RotationFrame.init(from:to:fraction:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 16) = a4;
  return result;
}

uint64_t RotationFrame.init(orientation:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = result;
  a2[1] = result;
  a2[2] = 0x3FF0000000000000;
  return result;
}

uint64_t RotationFrame.description.getter()
{
  v1 = 0xD000000000000013;
  v2 = *v0;
  v3 = v0[1];
  sub_1D96DA9A0();
  MEMORY[0x1DA735440](0xD000000000000020, 0x80000001D96DEE90);
  if (v2 > 2)
  {
    if (v2 != 3)
    {
      if (v2 == 4)
      {
        v5 = 0x70616373646E614CLL;
        v4 = 0xEE007466654C2065;
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    v5 = 0x70616373646E614CLL;
    v4 = 0xEF74686769522065;
  }

  else
  {
    if (v2 != 1)
    {
      if (v2 == 2)
      {
        v4 = 0x80000001D96DE980;
        v5 = 0xD000000000000014;
        goto LABEL_11;
      }

LABEL_8:
      v4 = 0x80000001D96DE960;
      v5 = 0xD000000000000013;
      goto LABEL_11;
    }

    v4 = 0xE800000000000000;
    v5 = 0x7469617274726F50;
  }

LABEL_11:
  MEMORY[0x1DA735440](v5, v4);

  MEMORY[0x1DA735440](0xD000000000000011, 0x80000001D96DEEC0);
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v1 = 0x70616373646E614CLL;
      v6 = 0xEF74686769522065;
      goto LABEL_21;
    }

    if (v3 == 4)
    {
      v1 = 0x70616373646E614CLL;
      v6 = 0xEE007466654C2065;
      goto LABEL_21;
    }

LABEL_18:
    v6 = 0x80000001D96DE960;
    goto LABEL_21;
  }

  if (v3 == 1)
  {
    v6 = 0xE800000000000000;
    v1 = 0x7469617274726F50;
    goto LABEL_21;
  }

  if (v3 != 2)
  {
    goto LABEL_18;
  }

  v6 = 0x80000001D96DE980;
  v1 = 0xD000000000000014;
LABEL_21:
  MEMORY[0x1DA735440](v1, v6);

  MEMORY[0x1DA735440](0x697463617266202CLL, 0xEC000000203A6E6FLL);
  v7 = sub_1D96DA840();
  MEMORY[0x1DA735440](v7);

  MEMORY[0x1DA735440](41, 0xE100000000000000);
  return 0;
}

uint64_t _s26WatchFacesWallpaperSupport13RotationFrameV2eeoiySbAC_ACtFZ_0(double *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 1);
  v4 = a1[2];
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  if (v4 == v6 && v3 == v5 && v2 == v5)
  {
    return 1;
  }

  if (v3 == v5)
  {
    if (v4 == 1.0 - v6)
    {
      return 1;
    }
  }

  else
  {
    v10 = 1.0 - v6;
    if (v2 == *a2 && v4 == v10)
    {
      return 1;
    }
  }

  return 0;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for RotationFrame(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for RotationFrame(uint64_t result, int a2, int a3)
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

uint64_t PosterLayout.LayoutType.hashValue.getter()
{
  v1 = *v0;
  sub_1D96DAB70();
  MEMORY[0x1DA735890](v1);
  return sub_1D96DAB90();
}

uint64_t sub_1D96C36E0()
{
  v1 = *v0;
  sub_1D96DAB70();
  MEMORY[0x1DA735890](v1);
  return sub_1D96DAB90();
}

uint64_t sub_1D96C3754(uint64_t a1)
{
  v2 = *v1;
  sub_1D96DAB70();
  MEMORY[0x1DA735890](v2);
  return sub_1D96DAB90();
}

void sub_1D96C3798()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if (!v1)
  {
    v2 = 1;
LABEL_5:
    byte_1EDB95B90 = v2;
    return;
  }

  if (v1 == 1)
  {
    v2 = 0;
    goto LABEL_5;
  }

  sub_1D96DAA40();
  __break(1u);
}

uint64_t static PosterLayout.currentLayoutType.getter@<X0>(_BYTE *a1@<X8>)
{
  if (qword_1EDB95B88 != -1)
  {
    v1 = a1;
    result = swift_once();
    a1 = v1;
  }

  *a1 = byte_1EDB95B90;
  return result;
}

__n128 PosterLayout.Animation.transform.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 16);
  *(a1 + 16) = v2;
  result = *(v1 + 48);
  *(a1 + 32) = result;
  return result;
}

unint64_t sub_1D96C3904()
{
  result = qword_1ECB3F228;
  if (!qword_1ECB3F228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB3F228);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PosterLayout.LayoutType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PosterLayout.LayoutType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1D96C3B18(uint64_t a1, int a2)
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

uint64_t sub_1D96C3B38(uint64_t result, int a2, int a3)
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

uint64_t sub_1D96C3B8C()
{
  v0 = sub_1D96DA5D0();
  __swift_allocate_value_buffer(v0, qword_1EDB95890);
  __swift_project_value_buffer(v0, qword_1EDB95890);
  return sub_1D96DA5C0();
}

uint64_t static Logger.rotation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDB95880 != -1)
  {
    swift_once();
  }

  v2 = sub_1D96DA5D0();
  v3 = __swift_project_value_buffer(v2, qword_1EDB95890);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1D96C3CB8()
{
  result = [v0 view];
  if (result)
  {
    v2 = result;
    v3 = [result window];

    if (!v3)
    {
      return 1;
    }

    v4 = [v3 windowScene];
    if (v4)
    {
      v5 = v4;
      v6 = [v4 interfaceOrientation];

      v3 = v5;
    }

    else
    {
      v6 = 1;
    }

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id PosterRotatingViewController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PosterRotatingViewController.init()()
{
  *&v0[OBJC_IVAR____TtC26WatchFacesWallpaperSupport28PosterRotatingViewController_rotatingResponders] = MEMORY[0x1E69E7CC0];
  v5.receiver = v0;
  v5.super_class = type metadata accessor for PosterRotatingViewController();
  v1 = objc_msgSendSuper2(&v5, sel_initWithNibName_bundle_, 0, 0);
  result = [v1 view];
  if (result)
  {
    v3 = result;
    v4 = [objc_opt_self() blackColor];
    [v3 setBackgroundColor_];

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id PosterRotatingViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

uint64_t PosterRotatingViewController.init(coder:)(void *a1)
{
  v2 = OBJC_IVAR____TtC26WatchFacesWallpaperSupport28PosterRotatingViewController_rotatingResponders;

  *(v1 + v2) = MEMORY[0x1E69E7CC0];
  type metadata accessor for PosterRotatingViewController();
  swift_deallocPartialClassInstance();
  return 0;
}

id sub_1D96C4150(void *a1, long double a2, double a3)
{
  v4 = v3;
  if (qword_1EDB95880 != -1)
  {
    swift_once();
  }

  v8 = sub_1D96DA5D0();
  __swift_project_value_buffer(v8, qword_1EDB95890);
  v9 = sub_1D96DA5B0();
  v10 = sub_1D96DA870();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v30 = v12;
    *v11 = 136315138;
    aBlock = a2;
    v33 = *&a3;
    type metadata accessor for CGSize(0);
    v13 = sub_1D96DA6E0();
    v15 = sub_1D96BB28C(v13, v14, &v30);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_1D96B3000, v9, v10, "viewWillTransition to: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x1DA736010](v12, -1, -1);
    MEMORY[0x1DA736010](v11, -1, -1);
  }

  result = [v4 view];
  if (result)
  {
    v17 = result;
    [result transform];
    v18 = aBlock;
    v19 = *&v33;

    v20 = atan2(v19, v18);
    [a1 targetTransform];
    v21 = v20 - atan2(*&v33, aBlock);
    v22 = fmod(v21, 3.14159265);
    if (v21 > 3.14159265)
    {
      v21 = v22;
    }

    v23 = swift_allocObject();
    *(v23 + 16) = v4;
    *(v23 + 24) = a2;
    *(v23 + 32) = a3;
    *(v23 + 40) = v21;
    v36 = sub_1D96C4D10;
    v37 = v23;
    aBlock = MEMORY[0x1E69E9820];
    v33 = 1107296256;
    v34 = sub_1D96BA378;
    v35 = &block_descriptor_1;
    v24 = _Block_copy(&aBlock);
    v25 = v4;

    v26 = swift_allocObject();
    *(v26 + 16) = v25;
    *(v26 + 24) = a2;
    *(v26 + 32) = a3;
    *(v26 + 40) = v21;
    v36 = sub_1D96C4D38;
    v37 = v26;
    aBlock = MEMORY[0x1E69E9820];
    v33 = 1107296256;
    v34 = sub_1D96BA378;
    v35 = &block_descriptor_6;
    v27 = _Block_copy(&aBlock);
    v28 = v25;

    [a1 animateAlongsideTransition:v24 completion:v27];
    _Block_release(v27);
    _Block_release(v24);
    v29 = type metadata accessor for PosterRotatingViewController();
    v31.receiver = v28;
    v31.super_class = v29;
    return objc_msgSendSuper2(&v31, sel_viewWillTransitionToSize_withTransitionCoordinator_, a1, a2, a3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D96C44BC(void *a1, double a2, double a3, double a4)
{
  [a1 transitionDuration];
  v9 = v8;
  v10 = [a1 completionCurve];
  [a1 targetTransform];
  sub_1D96C4D68(v10, v11, a2, a3, a4, v9);
}

double static PosterRotatingViewController.rotation(forOrientation:)(uint64_t a1)
{
  result = 0.0;
  if ((a1 - 2) <= 2)
  {
    return *&qword_1D96DCF18[a1 - 2];
  }

  return result;
}

uint64_t sub_1D96C4600(uint64_t a1, uint64_t a2)
{
  if (qword_1EDB95880 != -1)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v5 = sub_1D96DA5D0();
    __swift_project_value_buffer(v5, qword_1EDB95890);
    swift_unknownObjectRetain();
    v6 = v2;
    v7 = sub_1D96DA5B0();
    v8 = sub_1D96DA870();

    swift_unknownObjectRelease();
    v32 = a2;
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v33[0] = v10;
      *v9 = 136315394;
      v37 = a1;
      v38 = a2;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB3F240, &qword_1D96DCDB0);
      v11 = sub_1D96DA6E0();
      v13 = sub_1D96BB28C(v11, v12, v33);

      *(v9 + 4) = v13;
      *(v9 + 12) = 2080;
      v14 = v6;
      v15 = [v14 description];
      v16 = sub_1D96DA6C0();
      v18 = v17;

      v19 = sub_1D96BB28C(v16, v18, v33);

      *(v9 + 14) = v19;
      _os_log_impl(&dword_1D96B3000, v7, v8, "Adding responder %s to rotatingViewController: %s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA736010](v10, -1, -1);
      MEMORY[0x1DA736010](v9, -1, -1);
    }

    a2 = OBJC_IVAR____TtC26WatchFacesWallpaperSupport28PosterRotatingViewController_rotatingResponders;
    swift_beginAccess();
    v20 = *(v6 + a2);
    v21 = *(v20 + 16);

    if (!v21)
    {
      break;
    }

    v22 = 0;
    v23 = v20 + 32;
    v2 = MEMORY[0x1E69E7CC0];
    while (v22 < *(v20 + 16))
    {
      sub_1D96C594C(v23, v33);
      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        sub_1D96C59B4(v33, v34);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v36 = v2;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D96C59EC(0, v2[2] + 1, 1);
          v2 = v36;
        }

        v26 = v2[2];
        v25 = v2[3];
        if (v26 >= v25 >> 1)
        {
          sub_1D96C59EC((v25 > 1), v26 + 1, 1);
          v2 = v36;
        }

        v2[2] = v26 + 1;
        sub_1D96C59B4(v34, &v2[2 * v26 + 4]);
      }

      else
      {
        sub_1D96C5984(v33);
      }

      ++v22;
      v23 += 16;
      if (v21 == v22)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_22:
    swift_once();
  }

  v2 = MEMORY[0x1E69E7CC0];
LABEL_16:

  *(v6 + a2) = v2;

  v35 = 0;
  swift_unknownObjectWeakInit();
  v35 = v32;
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  v27 = *(v6 + a2);
  v28 = swift_isUniquelyReferenced_nonNull_native();
  *(v6 + a2) = v27;
  if ((v28 & 1) == 0)
  {
    v27 = sub_1D96C581C(0, v27[2] + 1, 1, v27);
    *(v6 + a2) = v27;
  }

  v30 = v27[2];
  v29 = v27[3];
  if (v30 >= v29 >> 1)
  {
    v27 = sub_1D96C581C((v29 > 1), v30 + 1, 1, v27);
  }

  v27[2] = v30 + 1;
  sub_1D96C59B4(v34, &v27[2 * v30 + 4]);
  *(v6 + a2) = v27;
  return swift_endAccess();
}

void sub_1D96C49F0(double a1, double a2, double a3)
{
  v4 = v3;
  v8 = sub_1D96C3CB8();
  if (qword_1EDB95880 != -1)
  {
    swift_once();
  }

  v9 = sub_1D96DA5D0();
  __swift_project_value_buffer(v9, qword_1EDB95890);
  v10 = sub_1D96DA5B0();
  v11 = sub_1D96DA870();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v26[0] = v13;
    *v12 = 136315650;
    *&v26[2] = a1;
    *&v26[3] = a2;
    type metadata accessor for CGSize(0);
    v14 = sub_1D96DA6E0();
    v16 = sub_1D96BB28C(v14, v15, v26);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2048;
    *(v12 + 14) = a3;
    *(v12 + 22) = 2080;
    if (v8 <= 2)
    {
      if (v8 == 1)
      {
        v17 = 0xE800000000000000;
        v18 = 0x7469617274726F50;
        goto LABEL_15;
      }

      if (v8 == 2)
      {
        v17 = 0x80000001D96DE980;
        v18 = 0xD000000000000014;
LABEL_15:
        v19 = sub_1D96BB28C(v18, v17, v26);

        *(v12 + 24) = v19;
        _os_log_impl(&dword_1D96B3000, v10, v11, "Notifying rotating views apply size: %s rotation: %f orientation: %s", v12, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1DA736010](v13, -1, -1);
        MEMORY[0x1DA736010](v12, -1, -1);
        goto LABEL_16;
      }

LABEL_11:
      v18 = 0xD000000000000013;
      v17 = 0x80000001D96DE960;
      goto LABEL_15;
    }

    if (v8 == 3)
    {
      v17 = 0xEF74686769522065;
    }

    else
    {
      if (v8 != 4)
      {
        goto LABEL_11;
      }

      v17 = 0xEE007466654C2065;
    }

    v18 = 0x70616373646E614CLL;
    goto LABEL_15;
  }

LABEL_16:

  v20 = OBJC_IVAR____TtC26WatchFacesWallpaperSupport28PosterRotatingViewController_rotatingResponders;
  swift_beginAccess();
  v21 = *(v4 + v20);
  v22 = *(v21 + 16);
  if (v22)
  {
    v23 = v21 + 32;

    do
    {
      sub_1D96C594C(v23, v26);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v24 = v26[1];
        ObjectType = swift_getObjectType();
        (*(v24 + 8))(v8, ObjectType, v24, a1, a2, a3);
        swift_unknownObjectRelease();
      }

      sub_1D96C5984(v26);
      v23 += 16;
      --v22;
    }

    while (v22);
  }
}

double block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_1D96C4D68(uint64_t a1, __int128 *a2, double a3, double a4, double a5, double a6)
{
  v7 = v6;
  v14 = sub_1D96C3CB8();
  if (qword_1EDB95880 != -1)
  {
    swift_once();
  }

  v15 = sub_1D96DA5D0();
  __swift_project_value_buffer(v15, qword_1EDB95890);
  v16 = sub_1D96DA5B0();
  v17 = sub_1D96DA870();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v49[0] = v41;
    *v18 = 136316162;
    v42 = a3;
    v43 = *&a4;
    type metadata accessor for CGSize(0);
    v19 = sub_1D96DA6E0();
    v21 = sub_1D96BB28C(v19, v20, v49);

    *(v18 + 4) = v21;
    *(v18 + 12) = 2048;
    *(v18 + 14) = a5;
    *(v18 + 22) = 2048;
    *(v18 + 24) = a6;
    *(v18 + 32) = 2080;
    v22 = 0xE700000000000000;
    v23 = 0x6E776F6E6B6E55;
    v24 = 0x80000001D96DF0D0;
    v25 = 0x80000001D96DF0B0;
    if (a1 == 3)
    {
      v26 = 0xD00000000000001ALL;
    }

    else
    {
      v26 = 0x6E776F6E6B6E55;
    }

    if (a1 != 3)
    {
      v25 = 0xE700000000000000;
    }

    if (a1 == 2)
    {
      v26 = 0xD00000000000001BLL;
    }

    else
    {
      v24 = v25;
    }

    if (a1 == 1)
    {
      v23 = 0xD00000000000001ALL;
      v22 = 0x80000001D96DF0F0;
    }

    if (!a1)
    {
      v23 = 0xD00000000000001DLL;
      v22 = 0x80000001D96DF110;
    }

    if (a1 <= 1)
    {
      v27 = v23;
    }

    else
    {
      v27 = v26;
    }

    if (a1 <= 1)
    {
      v28 = v22;
    }

    else
    {
      v28 = v24;
    }

    v29 = sub_1D96BB28C(v27, v28, v49);

    *(v18 + 34) = v29;
    *(v18 + 42) = 2080;
    if (v14 > 2)
    {
      if (v14 != 3)
      {
        v30 = v41;
        if (v14 == 4)
        {
          v31 = 0xEE007466654C2065;
          v32 = 0x70616373646E614CLL;
          goto LABEL_33;
        }

LABEL_29:
        v31 = 0x80000001D96DE960;
        v32 = 0xD000000000000013;
        goto LABEL_33;
      }

      v31 = 0xEF74686769522065;
      v32 = 0x70616373646E614CLL;
    }

    else
    {
      if (v14 != 1)
      {
        v30 = v41;
        if (v14 == 2)
        {
          v31 = 0x80000001D96DE980;
          v32 = 0xD000000000000014;
LABEL_33:
          v33 = sub_1D96BB28C(v32, v31, v49);

          *(v18 + 44) = v33;
          _os_log_impl(&dword_1D96B3000, v16, v17, "Notifying rotating views rotating to: %s rotation: %f duration: %f curve: %s orientation: %s", v18, 0x34u);
          swift_arrayDestroy();
          MEMORY[0x1DA736010](v30, -1, -1);
          MEMORY[0x1DA736010](v18, -1, -1);
          goto LABEL_34;
        }

        goto LABEL_29;
      }

      v31 = 0xE800000000000000;
      v32 = 0x7469617274726F50;
    }

    v30 = v41;
    goto LABEL_33;
  }

LABEL_34:

  v34 = OBJC_IVAR____TtC26WatchFacesWallpaperSupport28PosterRotatingViewController_rotatingResponders;
  swift_beginAccess();
  v35 = *(v7 + v34);
  v36 = *(v35 + 16);
  if (v36)
  {
    v37 = v35 + 32;

    do
    {
      sub_1D96C594C(v37, v47);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v38 = v48;
        ObjectType = swift_getObjectType();
        v42 = a6;
        v43 = a1;
        v40 = a2[1];
        v44 = *a2;
        v45 = v40;
        v46 = a2[2];
        (*(v38 + 16))(&v42, v14, ObjectType, v38, a3, a4, a5);
        swift_unknownObjectRelease();
      }

      sub_1D96C5984(v47);
      v37 += 16;
      --v36;
    }

    while (v36);
  }
}

void sub_1D96C51A4(double a1, double a2, double a3)
{
  v4 = v3;
  v8 = sub_1D96C3CB8();
  if (qword_1EDB95880 != -1)
  {
    swift_once();
  }

  v9 = sub_1D96DA5D0();
  __swift_project_value_buffer(v9, qword_1EDB95890);
  v10 = sub_1D96DA5B0();
  v11 = sub_1D96DA870();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v26[0] = v13;
    *v12 = 136315650;
    *&v26[2] = a1;
    *&v26[3] = a2;
    type metadata accessor for CGSize(0);
    v14 = sub_1D96DA6E0();
    v16 = sub_1D96BB28C(v14, v15, v26);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2048;
    *(v12 + 14) = a3;
    *(v12 + 22) = 2080;
    if (v8 <= 2)
    {
      if (v8 == 1)
      {
        v17 = 0xE800000000000000;
        v18 = 0x7469617274726F50;
        goto LABEL_15;
      }

      if (v8 == 2)
      {
        v17 = 0x80000001D96DE980;
        v18 = 0xD000000000000014;
LABEL_15:
        v19 = sub_1D96BB28C(v18, v17, v26);

        *(v12 + 24) = v19;
        _os_log_impl(&dword_1D96B3000, v10, v11, "Notifying rotating views didRotate to: %s rotation: %f orientation: %s", v12, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1DA736010](v13, -1, -1);
        MEMORY[0x1DA736010](v12, -1, -1);
        goto LABEL_16;
      }

LABEL_11:
      v18 = 0xD000000000000013;
      v17 = 0x80000001D96DE960;
      goto LABEL_15;
    }

    if (v8 == 3)
    {
      v17 = 0xEF74686769522065;
    }

    else
    {
      if (v8 != 4)
      {
        goto LABEL_11;
      }

      v17 = 0xEE007466654C2065;
    }

    v18 = 0x70616373646E614CLL;
    goto LABEL_15;
  }

LABEL_16:

  v20 = OBJC_IVAR____TtC26WatchFacesWallpaperSupport28PosterRotatingViewController_rotatingResponders;
  swift_beginAccess();
  v21 = *(v4 + v20);
  v22 = *(v21 + 16);
  if (v22)
  {
    v23 = v21 + 32;

    do
    {
      sub_1D96C594C(v23, v26);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v24 = v26[1];
        ObjectType = swift_getObjectType();
        (*(v24 + 24))(v8, ObjectType, v24, a1, a2, a3);
        swift_unknownObjectRelease();
      }

      sub_1D96C5984(v26);
      v23 += 16;
      --v22;
    }

    while (v22);
  }
}

id PosterRotatingViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1D96DA690();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id PosterRotatingViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PosterRotatingViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t PosterOrientationDescription.description.getter()
{
  v1 = *v0;
  if (*v0 > 2)
  {
    if (v1 != 3 && v1 != 4)
    {
      return 0xD000000000000013;
    }

    return 0x70616373646E614CLL;
  }

  else
  {
    if (v1 != 1)
    {
      if (v1 == 2)
      {
        return 0xD000000000000014;
      }

      return 0xD000000000000013;
    }

    return 0x7469617274726F50;
  }
}

uint64_t sub_1D96C56A8()
{
  v1 = *v0;
  if (*v0 > 2)
  {
    if (v1 != 3 && v1 != 4)
    {
      return 0xD000000000000013;
    }

    return 0x70616373646E614CLL;
  }

  else
  {
    if (v1 != 1)
    {
      if (v1 == 2)
      {
        return 0xD000000000000014;
      }

      return 0xD000000000000013;
    }

    return 0x7469617274726F50;
  }
}

uint64_t UIInterfaceOrientation.description.getter(uint64_t a1)
{
  if (a1 > 2)
  {
    if (a1 != 3 && a1 != 4)
    {
      return 0xD000000000000013;
    }

    return 0x70616373646E614CLL;
  }

  else
  {
    if (a1 != 1)
    {
      if (a1 == 2)
      {
        return 0xD000000000000014;
      }

      return 0xD000000000000013;
    }

    return 0x7469617274726F50;
  }
}

void *sub_1D96C581C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB3F260, &unk_1D96DCF08);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 < a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1D96C59EC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D96C5BA8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PosterOrientationDescription(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PosterOrientationDescription(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t sub_1D96C5AEC(uint64_t a1, int a2)
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

uint64_t sub_1D96C5B38(uint64_t result, int a2, int a3)
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

void *sub_1D96C5B88(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D96C5CD8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D96C5BA8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB3F260, &unk_1D96DCF08);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 < a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}