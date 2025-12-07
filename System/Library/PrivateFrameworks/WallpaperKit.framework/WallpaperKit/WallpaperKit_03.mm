uint64_t sub_1E4A812E0(uint64_t result, int a2, int a3)
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

double sub_1E4A81370@<D0>(uint64_t a1@<X8>)
{
  sub_1E4AAA530();
  sub_1E4AAA510();
  sub_1E4AAA520();
  sub_1E4AAA520();
  sub_1E4AAA520();
  sub_1E4AAA520();
  sub_1E4AAA500();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

__n128 sub_1E4A81438@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v2;
  result = *(v1 + 32);
  v4 = *(v1 + 48);
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

__n128 sub_1E4A8144C(uint64_t a1)
{
  v2 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v2;
  result = *(a1 + 32);
  v4 = *(a1 + 48);
  *(v1 + 32) = result;
  *(v1 + 48) = v4;
  return result;
}

void (*sub_1E4A81460(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  *a1 = v3;
  *(v3 + 64) = v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  *v3 = *v1;
  *(v3 + 16) = v4;
  *(v3 + 32) = v5;
  *(v3 + 48) = v6;
  return sub_1E4A814D4;
}

void sub_1E4A814D4(void **a1)
{
  v1 = *a1;
  v2 = v1[8];
  v3 = *(v1 + 1);
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  *v2 = *v1;
  v2[1] = v3;
  v2[2] = v4;
  v2[3] = v5;
  free(v1);
}

uint64_t sub_1E4A814F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E4A816A4();

  return MEMORY[0x1EEDE4440](a1, a2, a3, v6);
}

uint64_t sub_1E4A81554(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E4A816A4();

  return MEMORY[0x1EEDE43F0](a1, a2, a3, v6);
}

uint64_t sub_1E4A815B8(uint64_t a1)
{
  v2 = sub_1E4A816A4();

  return MEMORY[0x1EEDE4410](a1, v2);
}

unint64_t sub_1E4A8164C()
{
  result = qword_1EE042920[0];
  if (!qword_1EE042920[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE042920);
  }

  return result;
}

unint64_t sub_1E4A816A4()
{
  result = qword_1EE042910;
  if (!qword_1EE042910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE042910);
  }

  return result;
}

uint64_t sub_1E4A81708()
{
  v0 = sub_1E4AAA8B0();

  return v0;
}

unint64_t sub_1E4A817A8()
{
  result = qword_1ECF8E8E8;
  if (!qword_1ECF8E8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF8E8E8);
  }

  return result;
}

unint64_t sub_1E4A81800()
{
  result = qword_1ECF8E8F0;
  if (!qword_1ECF8E8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF8E8F0);
  }

  return result;
}

uint64_t sub_1E4A81854@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  *&v16[0] = v3;
  sub_1E4A865D8(&qword_1EE042900, type metadata accessor for WKWallpaperPosterLayerViewModel, &unk_1E4AB2458);
  sub_1E4AAA060();

  v4 = v3[7];
  v5 = v3[8];
  v6 = v3[9];
  v16[8] = v3[10];
  v7 = v3[8];
  v16[7] = v3[9];
  v8 = v3[3];
  v10 = v3[5];
  v9 = v3[6];
  v16[2] = v3[4];
  v16[3] = v10;
  v16[5] = v4;
  v16[6] = v5;
  v16[4] = v9;
  v16[0] = v3[2];
  v16[1] = v8;
  a2[6] = v7;
  a2[7] = v6;
  a2[8] = v3[10];
  v11 = v3[5];
  a2[2] = v3[4];
  a2[3] = v11;
  v12 = v3[7];
  a2[4] = v3[6];
  a2[5] = v12;
  v13 = v3[3];
  *a2 = v3[2];
  a2[1] = v13;
  return sub_1E4A49D24(v16, &v15);
}

uint64_t sub_1E4A8195C(float64x2_t *a1)
{
  v1 = a1[5];
  v2 = a1[7];
  v17 = a1[6];
  v18 = v2;
  v3 = a1[7];
  v19 = a1[8];
  v4 = a1[1];
  v5 = a1[3];
  v13 = a1[2];
  v14 = v5;
  v6 = a1[3];
  v7 = a1[5];
  v15 = a1[4];
  v16 = v7;
  v8 = a1[1];
  v12[0] = *a1;
  v12[1] = v8;
  v11[6] = v17;
  v11[7] = v3;
  v11[8] = a1[8];
  v11[2] = v13;
  v11[3] = v6;
  v11[4] = v15;
  v11[5] = v1;
  v11[0] = v12[0];
  v11[1] = v4;
  sub_1E4A49D24(v12, &v10);
  return sub_1E4A74D30(v11);
}

void sub_1E4A819E8(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1E4A865D8(&qword_1EE042900, type metadata accessor for WKWallpaperPosterLayerViewModel, &unk_1E4AB2458);
  sub_1E4AAA060();

  *a2 = *(v3 + 184);
}

void sub_1E4A81AB8(uint64_t a1, uint64_t a2)
{
  v55 = sub_1E4AA9FE0();
  v5 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v50 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8EA60, &unk_1E4AB33A0);
  MEMORY[0x1EEE9AC00](v53);
  v54 = &v49 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E7C0, &qword_1E4AAEA40);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v51 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v49 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v49 - v14;
  v16 = *(v2 + 40);
  v52 = v2;
  if (v16)
  {
    v49 = v13;
    v17 = a2;
    v18 = a1;
    v19 = *(v2 + 48);
    ObjectType = swift_getObjectType();
    v21 = *(v19 + 8);
    v22 = *(v21 + 40);
    swift_unknownObjectRetain();
    v22(ObjectType, v21);
    a1 = v18;
    v23 = v55;
    a2 = v17;
    v13 = v49;
    swift_unknownObjectRelease();
    v24 = *(v5 + 56);
    v24(v15, 0, 1, v23);
  }

  else
  {
    v24 = *(v5 + 56);
    v24(&v49 - v14, 1, 1, v55);
  }

  v25 = v5;
  if (a1)
  {
    v26 = swift_getObjectType();
    (*(*(a2 + 8) + 40))(v26);
    v27 = 0;
  }

  else
  {
    v27 = 1;
  }

  v29 = v54;
  v28 = v55;
  v24(v13, v27, 1, v55);
  v30 = *(v53 + 48);
  sub_1E4A48054(v15, v29);
  sub_1E4A48054(v13, v29 + v30);
  v31 = *(v5 + 48);
  if (v31(v29, 1, v28) == 1)
  {
    sub_1E4A4DC88(v13, &qword_1ECF8E7C0, &qword_1E4AAEA40);
    sub_1E4A4DC88(v15, &qword_1ECF8E7C0, &qword_1E4AAEA40);
    if (v31(v29 + v30, 1, v55) == 1)
    {
      sub_1E4A4DC88(v29, &qword_1ECF8E7C0, &qword_1E4AAEA40);
      return;
    }
  }

  else
  {
    v32 = v51;
    sub_1E4A48054(v29, v51);
    if (v31(v29 + v30, 1, v55) != 1)
    {
      v42 = *(v5 + 32);
      v43 = v29 + v30;
      v44 = v50;
      v45 = v55;
      v42(v50, v43, v55);
      sub_1E4A865D8(&qword_1EE043978, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
      v46 = v32;
      v47 = sub_1E4AAA860();
      v48 = *(v25 + 8);
      v48(v44, v45);
      sub_1E4A4DC88(v13, &qword_1ECF8E7C0, &qword_1E4AAEA40);
      sub_1E4A4DC88(v15, &qword_1ECF8E7C0, &qword_1E4AAEA40);
      v48(v46, v45);
      sub_1E4A4DC88(v29, &qword_1ECF8E7C0, &qword_1E4AAEA40);
      v33 = v52;
      if (v47)
      {
        return;
      }

      goto LABEL_13;
    }

    sub_1E4A4DC88(v13, &qword_1ECF8E7C0, &qword_1E4AAEA40);
    sub_1E4A4DC88(v15, &qword_1ECF8E7C0, &qword_1E4AAEA40);
    (*(v5 + 8))(v32, v55);
  }

  sub_1E4A4DC88(v29, &qword_1ECF8EA60, &unk_1E4AB33A0);
  v33 = v52;
LABEL_13:
  if (qword_1EE0424A8 != -1)
  {
    swift_once();
  }

  v34 = sub_1E4AAA0E0();
  __swift_project_value_buffer(v34, qword_1EE048B58);

  v35 = sub_1E4AAA0C0();
  v36 = sub_1E4AAAA20();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v56 = v38;
    *v37 = 136446466;
    v39 = sub_1E4AAAE90();
    v41 = sub_1E4A85938(v39, v40, &v56);

    *(v37 + 4) = v41;
    *(v37 + 12) = 2082;
    *(v37 + 14) = sub_1E4A85938(0xD00000000000001ALL, 0x80000001E4AB96A0, &v56);
    _os_log_impl(&dword_1E4A23000, v35, v36, "(%{public}s.%{public}s): sourceAssetDirectory differ, loading contents from environment…", v37, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E691FE80](v38, -1, -1);
    MEMORY[0x1E691FE80](v37, -1, -1);
  }

  sub_1E4A8215C();
  if (*(v33 + 32))
  {

    sub_1E4A7440C();
  }
}

void sub_1E4A8215C()
{
  v1 = v0;
  v2 = sub_1E4AAA030();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE0424A8 != -1)
  {
LABEL_40:
    swift_once();
  }

  v6 = sub_1E4AAA0E0();
  v7 = __swift_project_value_buffer(v6, qword_1EE048B58);

  v73 = v7;
  v8 = sub_1E4AAA0C0();
  v9 = sub_1E4AAAA20();

  v10 = os_log_type_enabled(v8, v9);
  v72 = v5;
  if (v10)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    aBlock = v12;
    *v11 = 136446466;
    v13 = sub_1E4AAAE90();
    v15 = sub_1E4A85938(v13, v14, &aBlock);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2082;
    *(v11 + 14) = sub_1E4A85938(0xD00000000000001DLL, 0x80000001E4AB97A0, &aBlock);
    _os_log_impl(&dword_1E4A23000, v8, v9, "Start (%{public}s.%{public}s)…", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E691FE80](v12, -1, -1);
    MEMORY[0x1E691FE80](v11, -1, -1);
  }

  if (!v1[5])
  {
    goto LABEL_42;
  }

  v16 = v1[6];
  ObjectType = swift_getObjectType();
  v18 = *(v16 + 1);
  swift_unknownObjectRetain();
  sub_1E4A5FD94(ObjectType, v18, &aBlock);
  swift_unknownObjectRelease();
  if (!v1[4])
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v70 = v3;
  v71 = v2;
  v19 = aBlock;
  v20 = v76;
  v69 = v77;

  v74 = v19;

  sub_1E4A74BA0(&aBlock);

  v21 = v1[4];
  if (!v21)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  swift_getKeyPath();
  aBlock = v21;
  sub_1E4A865D8(&qword_1EE042900, type metadata accessor for WKWallpaperPosterLayerViewModel, &unk_1E4AB2458);

  sub_1E4AAA060();

  aBlock = v21;
  swift_getKeyPath();
  sub_1E4AAA080();

  v22 = *(v21 + 24);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  *(v21 + 24) = v24;
  aBlock = v21;
  swift_getKeyPath();
  sub_1E4AAA070();

  v25 = v74;

  sub_1E4A87AC0(v26);
  v27 = sub_1E4AAA870();

  WKSetApplicationSpecificInformation(v27);

  v1[7] = v20;
  sub_1E4A8313C();
  v28 = v1[2];
  v29 = [v28 backgroundView];
  [v29 setOverrideUserInterfaceStyle_];

  v30 = [v28 foregroundView];
  [v30 setOverrideUserInterfaceStyle_];

  v31 = [v28 floatingView];
  [v31 setOverrideUserInterfaceStyle_];

  LODWORD(v27) = [v25[2] wantsDeviceMotion];
  v32 = sub_1E4AAA0C0();
  v33 = sub_1E4AAAA20();
  v34 = os_log_type_enabled(v32, v33);
  v68 = v1;
  if (v27)
  {
    if (v34)
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_1E4A23000, v32, v33, "requesting device motion", v35, 2u);
      MEMORY[0x1E691FE80](v35, -1, -1);
    }

    objc_opt_self();
    v36 = swift_dynamicCastObjCClass();
    if (v36)
    {
      v37 = v36;
      v79 = sub_1E4A83398;
      v80 = 0;
      aBlock = MEMORY[0x1E69E9820];
      v76 = 1107296256;
      v77 = sub_1E4A833A8;
      v78 = &block_descriptor_2;
      v38 = _Block_copy(&aBlock);

      [v37 updatePreferences_];
      _Block_release(v38);
      if (swift_isEscapingClosureAtFileLocation())
      {
        __break(1u);

LABEL_36:
        sub_1E4A82F74(v1);
        return;
      }
    }
  }

  else
  {
    if (v34)
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_1E4A23000, v32, v33, "not requesting device motion", v39, 2u);
      MEMORY[0x1E691FE80](v39, -1, -1);
    }
  }

  v40 = [objc_opt_self() defaultManager];
  type metadata accessor for WKWallpaperRepresentingCollectionsManager();
  inited = swift_initStackObject();
  type metadata accessor for WKWallpaperRepresentingCollectionsManager.ImplementationWrapper();
  v42 = swift_initStackObject();
  *(v42 + 16) = v40;
  v67 = inited;
  *(inited + 16) = v42;
  v1 = &selRef_currentDevice;
  if ([v40 numberOfWallpaperCollections])
  {
    v3 = 0;
    v5 = &unk_1E8767000;
    while (1)
    {
      v43 = [v40 wallpaperCollectionAtIndex_];
      if (v3 >= [v40 numberOfWallpaperCollections])
      {
        __break(1u);
        goto LABEL_40;
      }

      v44 = [v74[2] identifierString];
      if (!v44)
      {
        sub_1E4AAA8A0();
        v44 = sub_1E4AAA870();
      }

      v45 = v43;
      v2 = [v45 containsWallpaperRepresentingWithIdentifier_];

      if (v2)
      {
        break;
      }

      ++v3;

      if (v3 == [v40 numberOfWallpaperCollections])
      {
        goto LABEL_24;
      }
    }

    v63 = [v45 disableRotation];
    v1 = v68;
    v46 = v71;
    v47 = v70;
    if (v63)
    {
      v64 = sub_1E4AAA0C0();
      v65 = sub_1E4AAAA20();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        *v66 = 0;
        _os_log_impl(&dword_1E4A23000, v64, v65, "Renderer will NOT support rotation", v66, 2u);
        MEMORY[0x1E691FE80](v66, -1, -1);
      }

      else
      {
      }

      v1[3] = 0;

      goto LABEL_36;
    }

    if (!v1[3])
    {
      goto LABEL_25;
    }

    goto LABEL_35;
  }

LABEL_24:

  v1 = v68;
  v46 = v71;
  v47 = v70;
  if (v68[3])
  {
LABEL_35:

    goto LABEL_36;
  }

LABEL_25:
  type metadata accessor for WKDynamicRotationManager(0);
  v48 = swift_allocObject();
  *(v48 + 16) = MEMORY[0x1E69E7CC0];
  v49 = v48 + OBJC_IVAR____TtC12WallpaperKit24WKDynamicRotationManager_rotationState;
  v50 = v72;
  sub_1E4AAA020();
  v47[4](v49, v50, v46);
  v51 = type metadata accessor for WKPosterDynamicRotationState(0);
  *(v49 + v51[5]) = 0;
  *(v49 + v51[6]) = 0x3FF0000000000000;
  *(v49 + v51[7]) = 0;
  *(v49 + v51[8]) = 0;
  *(v48 + OBJC_IVAR____TtC12WallpaperKit24WKDynamicRotationManager_displayLink) = 0;
  v52 = OBJC_IVAR____TtC12WallpaperKit24WKDynamicRotationManager_animationState;
  v53 = type metadata accessor for WKPosterDynamicRotationAnimationState(0);
  (*(*(v53 - 8) + 56))(v48 + v52, 1, 1, v53);
  *(v48 + OBJC_IVAR____TtC12WallpaperKit24WKDynamicRotationManager_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1[3] = v48;

  v54 = v1[3];
  if (!v54)
  {
    goto LABEL_35;
  }

  *&v54[OBJC_IVAR____TtC12WallpaperKit24WKDynamicRotationManager_delegate + 8] = &off_1F5E9BC90;
  swift_unknownObjectWeakAssign();
  v55 = v1[3];
  if (!v55)
  {
    goto LABEL_35;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E970, &qword_1E4AB1828);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_1E4AB3280;
  v57 = v1[4];
  if (!v57)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  *(v56 + 32) = v57;
  *(v56 + 40) = &off_1F5E9B728;
  *(v55 + 2) = v56;

  if (!v1[3])
  {
    goto LABEL_35;
  }

  if (v1[5])
  {
    v58 = v1[6];
    v59 = swift_getObjectType();
    v60 = *(v58 + 1);
    v61 = *(v60 + 8);

    swift_unknownObjectRetain();
    v62 = v61(v59, v60);
    swift_unknownObjectRelease();
    sub_1E4A6C954(v62);

    goto LABEL_35;
  }

LABEL_46:
  __break(1u);
}

uint64_t WKWallpaperPosterRenderController.__allocating_init(renderer:)(uint64_t a1)
{
  v2 = swift_allocObject();
  WKWallpaperPosterRenderController.init(renderer:)(a1);
  return v2;
}

uint64_t WKWallpaperPosterRenderController.init(renderer:)(uint64_t a1)
{
  v3 = sub_1E4AAA030();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + 40) = 0u;
  *(v1 + 24) = 0u;
  *(v1 + 64) = 3;
  type metadata accessor for WKWallpaperPosterRendererTokenManager();
  v7 = swift_allocObject();
  *(v7 + 16) = MEMORY[0x1E69E7CC8];
  *(v1 + 72) = v7;
  *(v1 + 16) = a1;
  *(v1 + 56) = 0;
  type metadata accessor for WKDynamicRotationManager(0);
  v8 = swift_allocObject();
  *(v8 + 16) = MEMORY[0x1E69E7CC0];
  v9 = v8 + OBJC_IVAR____TtC12WallpaperKit24WKDynamicRotationManager_rotationState;
  sub_1E4AAA020();
  (*(v4 + 32))(v9, v6, v3);
  v10 = type metadata accessor for WKPosterDynamicRotationState(0);
  *(v9 + v10[5]) = 0;
  *(v9 + v10[6]) = 0x3FF0000000000000;
  *(v9 + v10[7]) = 0;
  *(v9 + v10[8]) = 0;
  *(v8 + OBJC_IVAR____TtC12WallpaperKit24WKDynamicRotationManager_displayLink) = 0;
  v11 = OBJC_IVAR____TtC12WallpaperKit24WKDynamicRotationManager_animationState;
  v12 = type metadata accessor for WKPosterDynamicRotationAnimationState(0);
  (*(*(v12 - 8) + 56))(v8 + v11, 1, 1, v12);
  *(v8 + OBJC_IVAR____TtC12WallpaperKit24WKDynamicRotationManager_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + 24) = v8;

  return v1;
}

void sub_1E4A82F74(void *a1)
{
  if (qword_1EE0424A8 != -1)
  {
    swift_once();
  }

  v1 = sub_1E4AAA0E0();
  __swift_project_value_buffer(v1, qword_1EE048B58);

  oslog = sub_1E4AAA0C0();
  v2 = sub_1E4AAAA20();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9 = v4;
    *v3 = 136446466;
    v5 = sub_1E4AAAE90();
    v7 = sub_1E4A85938(v5, v6, &v9);

    *(v3 + 4) = v7;
    *(v3 + 12) = 2082;
    *(v3 + 14) = sub_1E4A85938(0xD00000000000001DLL, 0x80000001E4AB97A0, &v9);
    _os_log_impl(&dword_1E4A23000, oslog, v2, "…Complete (%{public}s.%{public}s)", v3, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E691FE80](v4, -1, -1);
    MEMORY[0x1E691FE80](v3, -1, -1);
  }
}

void sub_1E4A8313C()
{
  v1 = v0;
  v2 = v0[7];
  if (!v2)
  {
    if (!v0[5])
    {
      goto LABEL_18;
    }

    v3 = v0[6];
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 8);
    v6 = *(v5 + 16);
    swift_unknownObjectRetain();
    v2 = v6(ObjectType, v5);
    swift_unknownObjectRelease();
  }

  v7 = WKWallpaperAppearanceDark;
  if (v2 != 2)
  {
    v7 = WKWallpaperAppearanceDefault;
  }

  v8 = *v7;
  v9 = v0[4];
  if (v9)
  {
    v10 = v8;
    swift_getKeyPath();
    sub_1E4A865D8(&qword_1EE042900, type metadata accessor for WKWallpaperPosterLayerViewModel, &unk_1E4AB2458);

    sub_1E4AAA060();

    v11 = *(v9 + 16);

    if (v11)
    {
      v12 = [*(v11 + 16) preferredProminentColors];
      if (v12)
      {
        v13 = v12;
        type metadata accessor for WKWallpaperAppearance(0);
        sub_1E4A47A2C(0, &qword_1EE042130, 0x1E69DC888);
        sub_1E4A865D8(&qword_1EE042190, type metadata accessor for WKWallpaperAppearance, &unk_1E4AAE570);
        v14 = sub_1E4AAA810();

        if (*(v14 + 16))
        {
          v15 = sub_1E4A9308C();
          if (v16)
          {
            v17 = *(*(v14 + 56) + 8 * v15);

LABEL_15:
            [v1[2] wk:v17 setPreferredProminentColor:?];

            return;
          }
        }
      }

      else
      {
      }

      v17 = 0;
      goto LABEL_15;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_18:
  __break(1u);
}

uint64_t sub_1E4A833A8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  swift_unknownObjectRetain();
  v6 = a3;
  v5(a2, v6);

  return swift_unknownObjectRelease();
}

uint64_t sub_1E4A83410(__int128 *a1, uint64_t a2)
{
  v3 = v2;
  v4 = a1[5];
  v5 = a1[7];
  v65 = a1[6];
  v66 = v5;
  v6 = a1[7];
  v67 = a1[8];
  v7 = a1[1];
  v8 = a1[3];
  v61 = a1[2];
  v62 = v8;
  v9 = a1[3];
  v10 = a1[5];
  v63 = a1[4];
  v64 = v10;
  v11 = a1[1];
  v59 = *a1;
  v60 = v11;
  v74 = v65;
  v75 = v6;
  v76 = a1[8];
  v70 = v61;
  v71 = v9;
  v12 = *(a2 + 8);
  v72 = v63;
  v73 = v4;
  v13 = *(a2 + 16);
  v14 = *(a2 + 24);
  v15 = *(a2 + 40);
  v68 = v59;
  v69 = v7;
  if (sub_1E4A86648(&v68) == 1 || *&v69 == v13)
  {
    v17 = *(v3 + 64);
    v16 = (v3 + 64);
    v18 = v17 == 3;
    v19 = 3;
    v20 = 1;
  }

  else
  {
    v20 = 0;
    v19 = *&v69 >= v13;
    v32 = *(v3 + 64);
    v16 = (v3 + 64);
    v33 = v32;
    v18 = v32 != 3 && v33 == v19;
  }

  v56 = v65;
  v57 = v66;
  v58 = v67;
  v52 = v61;
  v53 = v62;
  v54 = v63;
  v55 = v64;
  v50 = v59;
  v51 = v60;
  if (sub_1E4A86648(&v50) == 1)
  {
    result = v15 ^ 1u;
LABEL_14:
    *v16 = v19;
    return result;
  }

  if (BYTE8(v50) != 1 && v12 == 1)
  {
    v47 = v65;
    v48 = v66;
    v49 = v67;
    v43 = v61;
    v44 = v62;
    v45 = v63;
    v46 = v64;
    v41 = v59;
    v42 = v60;
    sub_1E4A49D24(&v41, v40);
    if (qword_1EE0424A8 != -1)
    {
      swift_once();
    }

    v22 = sub_1E4AAA0E0();
    __swift_project_value_buffer(v22, qword_1EE048B58);
    v23 = sub_1E4AAA0C0();
    v24 = sub_1E4AAAA20();
    if (!os_log_type_enabled(v23, v24))
    {
      goto LABEL_13;
    }

    v25 = swift_slowAlloc();
    *v25 = 0;
    v26 = "Screen is off, pausing animation";
LABEL_12:
    _os_log_impl(&dword_1E4A23000, v23, v24, v26, v25, 2u);
    MEMORY[0x1E691FE80](v25, -1, -1);
LABEL_13:

    sub_1E4A4DC88(&v59, &unk_1ECF8E990, &qword_1E4AB36D0);
    result = 0;
    goto LABEL_14;
  }

  if ((v20 | v18) == 1)
  {
    v27 = BYTE8(v51);
    goto LABEL_17;
  }

  v27 = BYTE8(v51);
  if (v19 || BYTE8(v51))
  {
LABEL_17:
    if (v27)
    {
      if (!v14 && !v12)
      {
        v47 = v65;
        v48 = v66;
        v49 = v67;
        v43 = v61;
        v44 = v62;
        v45 = v63;
        v46 = v64;
        v41 = v59;
        v42 = v60;
        sub_1E4A49D24(&v41, v40);
        if (qword_1EE0424A8 != -1)
        {
          swift_once();
        }

        v28 = sub_1E4AAA0E0();
        __swift_project_value_buffer(v28, qword_1EE048B58);
        v29 = sub_1E4AAA0C0();
        v30 = sub_1E4AAAA20();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          *v31 = 0;
          _os_log_impl(&dword_1E4A23000, v29, v30, "Settling on lock screen from home screen and screen is on, restarting animation", v31, 2u);
          MEMORY[0x1E691FE80](v31, -1, -1);
        }

        sub_1E4A4DC88(&v59, &unk_1ECF8E990, &qword_1E4AB36D0);
        *v16 = v19;
        return 1;
      }
    }

    else if (v14)
    {
      v47 = v65;
      v48 = v66;
      v49 = v67;
      v43 = v61;
      v44 = v62;
      v45 = v63;
      v46 = v64;
      v41 = v59;
      v42 = v60;
      sub_1E4A49D24(&v41, v40);
      if (qword_1EE0424A8 != -1)
      {
        swift_once();
      }

      v39 = sub_1E4AAA0E0();
      __swift_project_value_buffer(v39, qword_1EE048B58);
      v23 = sub_1E4AAA0C0();
      v24 = sub_1E4AAAA20();
      if (!os_log_type_enabled(v23, v24))
      {
        goto LABEL_13;
      }

      v25 = swift_slowAlloc();
      *v25 = 0;
      v26 = "Starting to move from lock screen to home screen, pausing animation";
      goto LABEL_12;
    }

    *v16 = v19;
    return 2;
  }

  v47 = v65;
  v48 = v66;
  v49 = v67;
  v43 = v61;
  v44 = v62;
  v45 = v63;
  v46 = v64;
  v41 = v59;
  v42 = v60;
  sub_1E4A49D24(&v41, v40);
  if (qword_1EE0424A8 != -1)
  {
    swift_once();
  }

  v35 = sub_1E4AAA0E0();
  __swift_project_value_buffer(v35, qword_1EE048B58);
  v36 = sub_1E4AAA0C0();
  v37 = sub_1E4AAAA20();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_1E4A23000, v36, v37, "Screen was turned on and settled on lock screen, starting animation", v38, 2u);
    MEMORY[0x1E691FE80](v38, -1, -1);
  }

  sub_1E4A4DC88(&v59, &unk_1ECF8E990, &qword_1E4AB36D0);
  *v16 = 0;
  return 1;
}

void sub_1E4A83978(char a1)
{
  v2 = v1;
  v4 = sub_1E4AAA760();
  v48 = *(v4 - 8);
  v49 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v46 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1E4AAA780();
  v45 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v44 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E4AAA750();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_1E4AAA7C0();
  v42 = *(v11 - 8);
  v43 = v11;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v41 = &v39 - v15;
  sub_1E4A9E2CC(0);
  sub_1E4A9E588(0, *(v1 + 16));
  if (a1)
  {
    if (qword_1EE0424A8 != -1)
    {
      swift_once();
    }

    v16 = sub_1E4AAA0E0();
    __swift_project_value_buffer(v16, qword_1EE048B58);
    v17 = sub_1E4AAA0C0();
    v18 = sub_1E4AAAA20();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1E4A23000, v17, v18, "Enabling animations based on playbackKind.", v19, 2u);
      MEMORY[0x1E691FE80](v19, -1, -1);
    }

    v20 = *(v2 + 32);
    if (!v20)
    {
      __break(1u);
      return;
    }

    if (*(v20 + 184) == 1)
    {
      *(v20 + 184) = 1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      v39 = &v39;
      MEMORY[0x1EEE9AC00](KeyPath);
      *(&v39 - 2) = v20;
      *(&v39 - 8) = 1;
      aBlock[0] = v20;
      sub_1E4A865D8(&qword_1EE042900, type metadata accessor for WKWallpaperPosterLayerViewModel, &unk_1E4AB2458);
      v40 = v7;

      v7 = v40;
      sub_1E4AAA050();
    }
  }

  if (qword_1EE0424A8 != -1)
  {
    swift_once();
  }

  v40 = v2;
  v22 = sub_1E4AAA0E0();
  __swift_project_value_buffer(v22, qword_1EE048B58);
  v23 = sub_1E4AAA0C0();
  v24 = sub_1E4AAAA20();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = v25;
    *v25 = 134349056;
    v27 = a1;
    if (a1)
    {
      v28 = 4;
    }

    else
    {
      v28 = 0;
    }

    *(v25 + 4) = v28;
    _os_log_impl(&dword_1E4A23000, v23, v24, "Disabling animations based on playbackKind (waiting duration %{public}ld).", v25, 0xCu);
    MEMORY[0x1E691FE80](v26, -1, -1);
  }

  else
  {

    v27 = a1;
    if (a1)
    {
      v28 = 4;
    }

    else
    {
      v28 = 0;
    }
  }

  sub_1E4A47A2C(0, &qword_1EE0421E0, 0x1E69E9610);
  v39 = sub_1E4AAAA50();
  sub_1E4AAA7B0();
  *v10 = v28;
  (*(v8 + 104))(v10, *MEMORY[0x1E69E7F48], v7);
  v29 = v41;
  MEMORY[0x1E691EBC0](v14, v10);
  (*(v8 + 8))(v10, v7);
  v30 = v43;
  v31 = *(v42 + 8);
  v31(v14, v43);
  v32 = swift_allocObject();
  swift_weakInit();
  v33 = swift_allocObject();
  *(v33 + 16) = v32;
  *(v33 + 24) = v27 & 1;
  aBlock[4] = sub_1E4A865CC;
  aBlock[5] = v33;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E4A6E8B8;
  aBlock[3] = &block_descriptor_17;
  v34 = _Block_copy(aBlock);

  v35 = v44;
  sub_1E4AAA770();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1E4A865D8(&qword_1EE042230, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E720, &qword_1E4AB33E0);
  sub_1E4A6ED78();
  v36 = v46;
  v37 = v49;
  sub_1E4AAAB40();
  v38 = v39;
  MEMORY[0x1E691EE00](v29, v35, v36, v34);
  _Block_release(v34);

  (*(v48 + 8))(v36, v37);
  (*(v45 + 8))(v35, v47);
  v31(v29, v30);
}

void sub_1E4A840F4(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + 32);
    if (v4)
    {
      if (*(v4 + 184))
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](KeyPath);
        sub_1E4A865D8(&qword_1EE042900, type metadata accessor for WKWallpaperPosterLayerViewModel, &unk_1E4AB2458);

        sub_1E4AAA050();
      }

      else
      {
        *(v4 + 184) = 0;
      }

      if (qword_1EE0424A8 != -1)
      {
        swift_once();
      }

      v6 = sub_1E4AAA0E0();
      __swift_project_value_buffer(v6, qword_1EE048B58);
      v7 = sub_1E4AAA0C0();
      v8 = sub_1E4AAAA20();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        v10 = v9;
        *v9 = 134349056;
        v11 = 4;
        if ((a2 & 1) == 0)
        {
          v11 = 0;
        }

        *(v9 + 4) = v11;
        _os_log_impl(&dword_1E4A23000, v7, v8, "Disabled animations based on playbackKind after waiting duration %{public}ld.", v9, 0xCu);
        MEMORY[0x1E691FE80](v10, -1, -1);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void *WKWallpaperPosterRenderController.deinit()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return v0;
}

uint64_t WKWallpaperPosterRenderController.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_1E4A843CC(void *a1)
{
  if (qword_1EE0424A8 != -1)
  {
    swift_once();
  }

  v1 = sub_1E4AAA0E0();
  __swift_project_value_buffer(v1, qword_1EE048B58);

  oslog = sub_1E4AAA0C0();
  v2 = sub_1E4AAAA20();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9 = v4;
    *v3 = 136446466;
    v5 = sub_1E4AAAE90();
    v7 = sub_1E4A85938(v5, v6, &v9);

    *(v3 + 4) = v7;
    *(v3 + 12) = 2082;
    *(v3 + 14) = sub_1E4A85938(0xD00000000000001FLL, 0x80000001E4AB97C0, &v9);
    _os_log_impl(&dword_1E4A23000, oslog, v2, "…Complete (%{public}s.%{public}s)", v3, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E691FE80](v4, -1, -1);
    MEMORY[0x1E691FE80](v3, -1, -1);
  }
}

void WKWallpaperPosterRenderController.renderer(_:didUpdate:with:using:)(void *a1, uint64_t a2, uint64_t a3, __int128 *a4, void *a5)
{
  v6 = v5;
  v55 = a5;
  v60 = a2;
  v61 = a3;
  v57 = a1;
  v8 = sub_1E4AAA4C0();
  v58 = *(v8 - 8);
  v59 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a4[7];
  v106 = a4[6];
  v107 = v11;
  v108 = a4[8];
  v12 = a4[3];
  v102 = a4[2];
  v103 = v12;
  v13 = a4[5];
  v104 = a4[4];
  v105 = v13;
  v14 = a4[1];
  v100 = *a4;
  v101 = v14;
  if (qword_1EE0424A8 != -1)
  {
    swift_once();
  }

  v15 = sub_1E4AAA0E0();
  __swift_project_value_buffer(v15, qword_1EE048B58);

  v16 = sub_1E4AAA0C0();
  v17 = sub_1E4AAAA20();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *&v91 = v19;
    *v18 = 136446466;
    v20 = sub_1E4AAAE90();
    v22 = sub_1E4A85938(v20, v21, &v91);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2082;
    *(v18 + 14) = sub_1E4A85938(0xD000000000000021, 0x80000001E4AB9620, &v91);
    _os_log_impl(&dword_1E4A23000, v16, v17, "Start (%{public}s.%{public}s)…", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E691FE80](v19, -1, -1);
    MEMORY[0x1E691FE80](v18, -1, -1);
  }

  if (!v6[5])
  {
    __break(1u);
    goto LABEL_23;
  }

  v23 = v6[6];
  ObjectType = swift_getObjectType();
  v25 = *(v23 + 8);
  v26 = *(v25 + 16);
  swift_unknownObjectRetain();
  v27 = v26(ObjectType, v25);
  swift_unknownObjectRelease();
  v28 = v6[4];
  if (!v28)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v56 = v27;
  swift_getKeyPath();
  *&v91 = v28;
  sub_1E4A865D8(&qword_1EE042900, type metadata accessor for WKWallpaperPosterLayerViewModel, &unk_1E4AB2458);

  sub_1E4AAA060();

  v29 = v28[8];
  v96 = v28[7];
  v97 = v29;
  v30 = v28[10];
  v98 = v28[9];
  v99 = v30;
  v31 = v28[3];
  v32 = v28[5];
  v33 = v28[6];
  v93 = v28[4];
  v94 = v32;
  v95 = v33;
  v91 = v28[2];
  v92 = v31;
  sub_1E4A49D24(&v91, v90);

  v34 = v6[4];
  if (!v34)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  swift_getKeyPath();
  *&v90[0] = v34;

  sub_1E4AAA060();

  v35 = v34[8];
  v77 = v34[7];
  v78 = v35;
  v36 = v34[10];
  v79 = v34[9];
  v80 = v36;
  v37 = v34[3];
  v38 = v34[5];
  v39 = v34[6];
  v74 = v34[4];
  v75 = v38;
  v76 = v39;
  v72 = v34[2];
  v73 = v37;
  sub_1E4A49D24(&v72, v90);

  v87 = v78;
  v88 = v79;
  v89 = v80;
  v83 = v74;
  v84 = v75;
  v85 = v76;
  v86 = v77;
  v81 = v72;
  v82 = v73;
  nullsub_1();
  v68 = v86;
  v69 = v87;
  v70 = v88;
  v71 = v89;
  v64 = v82;
  v65 = v83;
  v66 = v84;
  v67 = v85;
  v62[6] = v106;
  v62[7] = v107;
  v62[8] = v108;
  v63 = v81;
  v62[2] = v102;
  v62[3] = v103;
  v62[4] = v104;
  v62[5] = v105;
  v62[0] = v100;
  v62[1] = v101;
  v40 = sub_1E4A83410(&v63, v62);
  v90[6] = v69;
  v90[7] = v70;
  v90[8] = v71;
  v90[2] = v65;
  v90[3] = v66;
  v90[4] = v67;
  v90[5] = v68;
  v90[0] = v63;
  v90[1] = v64;
  v41 = sub_1E4A4DC88(v90, &unk_1ECF8E990, &qword_1E4AB36D0);
  *&v63 = 0;
  v42 = v60;
  if (BYTE8(v91) != BYTE8(v100) || *&v92 != *&v101 || BYTE8(v92) != BYTE8(v101) || *&v93 != *&v102 || BYTE8(v93) != (BYTE8(v102) & 1))
  {
    sub_1E4A9E588(1u, v57);
    swift_allocObject();
    swift_weakInit();

    sub_1E4AAA4B0();
    sub_1E4AAA220();

    (*(v58 + 8))(v10, v59);
  }

  if (*(&v95 + 1) != *(&v104 + 1) && v6[3])
  {
    v43 = swift_getObjectType();
    v44 = *(v61 + 8);
    v45 = *(v44 + 8);

    v46 = v45(v43, v44);
    sub_1E4A6D014(v46, v55);
  }

  MEMORY[0x1EEE9AC00](v41);
  *(&v55 - 4) = v6;
  *(&v55 - 3) = &v100;
  *(&v55 - 16) = v40;
  sub_1E4AAA2A0();
  v48 = v6[5];
  v47 = v6[6];
  v49 = v61;
  v6[5] = v42;
  v6[6] = v49;
  swift_unknownObjectRetain();
  sub_1E4A81AB8(v48, v47);
  swift_unknownObjectRelease();
  if (v6[7])
  {
    goto LABEL_21;
  }

  if (v6[5])
  {
    v50 = v6[6];
    v51 = swift_getObjectType();
    v52 = *(v50 + 8);
    v53 = *(v52 + 16);
    swift_unknownObjectRetain();
    v54 = v53(v51, v52);
    swift_unknownObjectRelease();
    if (v56 != v54)
    {
      sub_1E4A8313C();
    }

LABEL_21:
    sub_1E4A49CD0(&v91);

    sub_1E4A84CE0(v6);
    return;
  }

LABEL_25:
  __break(1u);
}

void sub_1E4A84CE0(void *a1)
{
  if (qword_1EE0424A8 != -1)
  {
    swift_once();
  }

  v1 = sub_1E4AAA0E0();
  __swift_project_value_buffer(v1, qword_1EE048B58);

  oslog = sub_1E4AAA0C0();
  v2 = sub_1E4AAAA20();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9 = v4;
    *v3 = 136446466;
    v5 = sub_1E4AAAE90();
    v7 = sub_1E4A85938(v5, v6, &v9);

    *(v3 + 4) = v7;
    *(v3 + 12) = 2082;
    *(v3 + 14) = sub_1E4A85938(0xD000000000000021, 0x80000001E4AB9620, &v9);
    _os_log_impl(&dword_1E4A23000, oslog, v2, "…Complete (%{public}s.%{public}s)", v3, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E691FE80](v4, -1, -1);
    MEMORY[0x1E691FE80](v3, -1, -1);
  }
}

uint64_t sub_1E4A84EA8(uint64_t a1)
{
  v1 = sub_1E4AAA760();
  v28 = *(v1 - 8);
  v29 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E4AAA780();
  v26 = *(v4 - 8);
  v27 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E4AAA750();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = sub_1E4AAA7A0();
  v11 = *(v25 - 8);
  v12 = MEMORY[0x1EEE9AC00](v25);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v23 - v15;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1E4A47A2C(0, &qword_1EE0421E0, 0x1E69E9610);
    v24 = sub_1E4AAAA50();
    sub_1E4AAA790();
    *v10 = 500;
    (*(v8 + 104))(v10, *MEMORY[0x1E69E7F38], v7);
    MEMORY[0x1E691EBA0](v14, v10);
    (*(v8 + 8))(v10, v7);
    v23 = *(v11 + 8);
    v18 = v25;
    v23(v14, v25);
    v19 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_1E4A86640;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E4A6E8B8;
    aBlock[3] = &block_descriptor_26;
    v20 = _Block_copy(aBlock);

    sub_1E4AAA770();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1E4A865D8(&qword_1EE042230, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E720, &qword_1E4AB33E0);
    sub_1E4A6ED78();
    v21 = v29;
    sub_1E4AAAB40();
    v22 = v24;
    MEMORY[0x1E691EE10](v16, v6, v3, v20);
    _Block_release(v20);

    (*(v28 + 8))(v3, v21);
    (*(v26 + 8))(v6, v27);
    return (v23)(v16, v18);
  }

  return result;
}

double sub_1E4A85344(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    sub_1E4A9E2CC(1u);
  }

  return result;
}

void sub_1E4A853B4(uint64_t a1, float64x2_t *a2, char a3)
{
  if (*(a1 + 32))
  {
    v5 = a2[7];
    v10[6] = a2[6];
    v10[7] = v5;
    v10[8] = a2[8];
    v6 = a2[3];
    v10[2] = a2[2];
    v10[3] = v6;
    v7 = a2[5];
    v10[4] = a2[4];
    v10[5] = v7;
    v8 = a2[1];
    v10[0] = *a2;
    v10[1] = v8;

    sub_1E4A49D24(a2, &v9);
    sub_1E4A74D30(v10);

    if (a3 != 2)
    {
      sub_1E4A83978(a3 & 1);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1E4A85470(void *a1)
{
  if (qword_1EE0424A8 != -1)
  {
    swift_once();
  }

  v1 = sub_1E4AAA0E0();
  __swift_project_value_buffer(v1, qword_1EE048B58);

  oslog = sub_1E4AAA0C0();
  v2 = sub_1E4AAAA20();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9 = v4;
    *v3 = 136446466;
    v5 = sub_1E4AAAE90();
    v7 = sub_1E4A85938(v5, v6, &v9);

    *(v3 + 4) = v7;
    *(v3 + 12) = 2082;
    *(v3 + 14) = sub_1E4A85938(0xD000000000000019, 0x80000001E4AB9730, &v9);
    _os_log_impl(&dword_1E4A23000, oslog, v2, "…Complete (%{public}s.%{public}s)", v3, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E691FE80](v4, -1, -1);
    MEMORY[0x1E691FE80](v3, -1, -1);
  }
}

uint64_t sub_1E4A85650()
{
  v1 = v0;
  if (qword_1EE0424A0 != -1)
  {
    swift_once();
  }

  v2 = sub_1E4AAA0E0();
  __swift_project_value_buffer(v2, qword_1EE048B40);
  v3 = sub_1E4AAA0C0();
  v4 = sub_1E4AAAA20();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1E4A23000, v3, v4, "Renderer will start rotation.", v5, 2u);
    MEMORY[0x1E691FE80](v5, -1, -1);
  }

  sub_1E4A9E588(3u, *(v1 + 16));
  return 1;
}

void sub_1E4A85740()
{
  sub_1E4A9E2CC(3u);
  [*(v0 + 16) wk_noteContentSignificantlyChanged];
  if (qword_1EE0424A0 != -1)
  {
    swift_once();
  }

  v1 = sub_1E4AAA0E0();
  __swift_project_value_buffer(v1, qword_1EE048B40);
  oslog = sub_1E4AAA0C0();
  v2 = sub_1E4AAAA20();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1E4A23000, oslog, v2, "Renderer did complete rotation.", v3, 2u);
    MEMORY[0x1E691FE80](v3, -1, -1);
  }
}

uint64_t sub_1E4A85868(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

void sub_1E4A858DC(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_1E4A85938(v6, v7, a3);

  v9 = *a1;
  *v9 = v8;
  *a1 = v9 + 1;
}

unint64_t sub_1E4A85938(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1E4A85A04(v11, 0, 0, 1, a1, a2);
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
    sub_1E4A479C0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_1E4A85A04(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1E4A85B10(a5, a6);
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
    result = sub_1E4AAAC00();
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

void *sub_1E4A85B10(uint64_t a1, unint64_t a2)
{
  v3 = sub_1E4A85B5C(a1, a2);
  sub_1E4A85C8C(&unk_1F5E998F8);
  return v3;
}

void *sub_1E4A85B5C(uint64_t a1, unint64_t a2)
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

  v6 = sub_1E4A85D78(v5, 0);
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

  result = sub_1E4AAAC00();
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
        v10 = sub_1E4AAA8E0();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1E4A85D78(v10, 0);
        result = sub_1E4AAABB0();
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

void sub_1E4A85C8C(uint64_t a1)
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

  v3 = sub_1E4A85DEC(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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

void *sub_1E4A85D78(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8E960, &qword_1E4AB3370);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1E4A85DEC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8E960, &qword_1E4AB3370);
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

_BYTE **sub_1E4A85EE0(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_1E4A85EF0(uint64_t (*a1)(void))
{
  a1();

  return sub_1E4AAAE90();
}

void sub_1E4A85F2C(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v4 = v3;
  v7 = a3[7];
  v45 = a3[6];
  v46 = v7;
  v47 = a3[8];
  v8 = a3[3];
  v41 = a3[2];
  v42 = v8;
  v9 = a3[5];
  v43 = a3[4];
  v44 = v9;
  v10 = a3[1];
  v39 = *a3;
  v40 = v10;
  if (qword_1EE0424A8 != -1)
  {
    swift_once();
  }

  v11 = sub_1E4AAA0E0();
  __swift_project_value_buffer(v11, qword_1EE048B58);

  v12 = sub_1E4AAA0C0();
  v13 = sub_1E4AAAA20();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *&v38[0] = v15;
    *v14 = 136446466;
    v16 = sub_1E4AAAE90();
    v18 = sub_1E4A85938(v16, v17, v38);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    *(v14 + 14) = sub_1E4A85938(0xD00000000000001FLL, 0x80000001E4AB97C0, v38);
    _os_log_impl(&dword_1E4A23000, v12, v13, "Start (%{public}s.%{public}s)…", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E691FE80](v15, -1, -1);
    MEMORY[0x1E691FE80](v14, -1, -1);
  }

  v38[6] = v45;
  v38[7] = v46;
  v38[8] = v47;
  v38[2] = v41;
  v38[3] = v42;
  v38[4] = v43;
  v38[5] = v44;
  v38[0] = v39;
  v38[1] = v40;
  v19 = BYTE8(v41);
  type metadata accessor for WKWallpaperPosterLayerViewModel(0);
  swift_allocObject();
  sub_1E4A49D24(&v39, &v37);
  v20 = sub_1E4A7578C(v38, (v19 & 1) == 0);
  v21 = v4[4];
  v4[4] = v20;
  if (v21)
  {
  }

  else
  {
    v22 = v4[2];
    v23 = v20;

    v24 = [v22 backgroundView];
    v25 = [v22 foregroundView];
    v26 = [v22 floatingView];
    sub_1E4A524E8(v23, v24, v25, v26);
  }

  v28 = v4[5];
  v27 = v4[6];
  v4[5] = a1;
  v4[6] = a2;
  swift_unknownObjectRetain();
  sub_1E4A81AB8(v28, v27);
  swift_unknownObjectRelease();
  v29 = v4[3];
  if (!v29)
  {
    goto LABEL_13;
  }

  *(v29 + OBJC_IVAR____TtC12WallpaperKit24WKDynamicRotationManager_delegate + 8) = &off_1F5E9BC90;
  swift_unknownObjectWeakAssign();
  v30 = v4[3];
  if (!v30)
  {
    goto LABEL_13;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E970, &qword_1E4AB1828);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1E4AB3280;
  v32 = v4[4];
  if (v32)
  {
    *(v31 + 32) = v32;
    *(v31 + 40) = &off_1F5E9B728;
    *(v30 + 16) = v31;

    if (v4[3])
    {
      ObjectType = swift_getObjectType();
      v34 = *(a2 + 8);
      v35 = *(v34 + 8);

      v36 = v35(ObjectType, v34);
      sub_1E4A6C954(v36);
    }

LABEL_13:
    sub_1E4A843CC(v4);
    return;
  }

  __break(1u);
}

void _s12WallpaperKit33WKWallpaperPosterRenderControllerC21rendererDidInvalidateyySo0cD8Renderer_pF_0()
{
  v1 = v0;
  if (qword_1EE0424A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1E4AAA0E0();
  __swift_project_value_buffer(v2, qword_1EE048B58);

  v3 = sub_1E4AAA0C0();
  v4 = sub_1E4AAAA20();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v5 = 136446466;
    v7 = sub_1E4AAAE90();
    v9 = sub_1E4A85938(v7, v8, &v10);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2082;
    *(v5 + 14) = sub_1E4A85938(0xD000000000000019, 0x80000001E4AB9730, &v10);
    _os_log_impl(&dword_1E4A23000, v3, v4, "Start (%{public}s.%{public}s)…", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E691FE80](v6, -1, -1);
    MEMORY[0x1E691FE80](v5, -1, -1);
  }

  if (v1[3])
  {

    sub_1E4A6D7E8();
  }

  sub_1E4A9EAA0();

  sub_1E4A85470(v1);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1E4A865D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E4A86648(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unsigned __int8 *WKPosterEnvironmentSnapshot.init(environmentMode:wakeState:unlockState:environmentRequiresImmediateRendering:animationDuration:timingFunction:animation:interfaceOrientation:floatingObscurableBounds:deviceMotionRotation:)@<X0>(unsigned __int8 *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int8 a4@<W3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, __n128 *a8@<X8>, double a9@<D0>, double a10@<D1>, double a11@<D2>, double a12@<D3>, double a13@<D4>, __n128 a14@<Q5>, __n128 a15@<Q6>)
{
  v15 = *a2;
  v16 = *(a2 + 8);
  v17 = *a3;
  v18 = *(a3 + 8);
  a8->n128_u8[0] = *result;
  a8->n128_u8[8] = v15;
  a8[1].n128_u64[0] = v16;
  a8[1].n128_u8[8] = v17;
  a8[2].n128_u64[0] = v18;
  a8[2].n128_u8[8] = a4;
  a8[3].n128_f64[0] = a9;
  a8[3].n128_u64[1] = a5;
  a8[4].n128_u64[0] = a6;
  a8[4].n128_u64[1] = a7;
  a8[5].n128_f64[0] = a10;
  a8[5].n128_f64[1] = a11;
  a8[6].n128_f64[0] = a12;
  a8[6].n128_f64[1] = a13;
  a8[7] = a14;
  a8[8] = a15;
  return result;
}

uint64_t WKPosterEnvironmentSnapshot.description.getter()
{
  v1 = *v0;
  v2 = v0[24];
  v3 = *(v0 + 4);
  v4 = v0[40];
  v6 = *(v0 + 7);
  v5 = *(v0 + 8);
  v7 = *(v0 + 9);
  sub_1E4AAABC0();
  MEMORY[0x1E691ECA0](0xD00000000000001BLL, 0x80000001E4AB3400);
  MEMORY[0x1E691ECA0](0xD000000000000016, 0x80000001E4AB97E0);
  if (v1)
  {
    v8 = 0x676E6974696465;
  }

  else
  {
    v8 = 0x6E697265646E6572;
  }

  if (v1)
  {
    v9 = 0xE700000000000000;
  }

  else
  {
    v9 = 0xE900000000000067;
  }

  MEMORY[0x1E691ECA0](v8, v9);

  MEMORY[0x1E691ECA0](0x53656B6177202C27, 0xEF27203A65746174);
  v10 = WKPosterWakeState.description.getter();
  MEMORY[0x1E691ECA0](v10);

  MEMORY[0x1E691ECA0](0xD000000000000010, 0x80000001E4AB9800);
  LOBYTE(v27) = v2;
  v11 = WKPosterUnlockState.description.getter();
  MEMORY[0x1E691ECA0](v11);

  MEMORY[0x1E691ECA0](0xD000000000000029, 0x80000001E4AB9820);
  if (v4)
  {
    v12 = 1702195828;
  }

  else
  {
    v12 = 0x65736C6166;
  }

  if (v4)
  {
    v13 = 0xE400000000000000;
  }

  else
  {
    v13 = 0xE500000000000000;
  }

  MEMORY[0x1E691ECA0](v12, v13);

  MEMORY[0x1E691ECA0](0xD000000000000015, 0x80000001E4AB9850);
  sub_1E4AAA9A0();
  MEMORY[0x1E691ECA0](0xD000000000000012, 0x80000001E4AB9870);
  v14 = [v6 description];
  v15 = sub_1E4AAA8A0();
  v17 = v16;

  MEMORY[0x1E691ECA0](v15, v17);

  MEMORY[0x1E691ECA0](0x74616D696E61202CLL, 0xED0000203A6E6F69);
  if (v5)
  {
    v18 = sub_1E4AAA700();
    v20 = v19;
  }

  else
  {
    v20 = 0xE300000000000000;
    v18 = 7104878;
  }

  MEMORY[0x1E691ECA0](v18, v20);

  MEMORY[0x1E691ECA0](0xD000000000000018, 0x80000001E4AB9890);
  v21 = WKStringForInterfaceOrientation(v7);
  v22 = sub_1E4AAA8A0();
  v24 = v23;

  MEMORY[0x1E691ECA0](v22, v24);

  MEMORY[0x1E691ECA0](0xD00000000000001CLL, 0x80000001E4AB98B0);
  v25 = sub_1E4AAAAA0();
  MEMORY[0x1E691ECA0](v25);

  MEMORY[0x1E691ECA0](32032, 0xE200000000000000);
  return 0;
}

uint64_t WKPosterEnvironmentSnapshot.PosterEnvironmentMode.hashValue.getter()
{
  v1 = *v0;
  sub_1E4AAAE00();
  MEMORY[0x1E691F1E0](v1);
  return sub_1E4AAAE40();
}

double WKPosterEnvironmentSnapshot.wakeState.getter@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + 16);
  *a1 = *(v1 + 8);
  *(a1 + 8) = result;
  return result;
}

double WKPosterEnvironmentSnapshot.wakeState.setter(uint64_t a1)
{
  result = *(a1 + 8);
  *(v1 + 8) = *a1;
  *(v1 + 16) = result;
  return result;
}

double WKPosterEnvironmentSnapshot.unlockState.getter@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + 32);
  *a1 = *(v1 + 24);
  *(a1 + 8) = result;
  return result;
}

double WKPosterEnvironmentSnapshot.unlockState.setter(uint64_t a1)
{
  result = *(a1 + 8);
  *(v1 + 24) = *a1;
  *(v1 + 32) = result;
  return result;
}

void WKPosterEnvironmentSnapshot.floatingObscurableBounds.setter(double a1, double a2, double a3, double a4)
{
  v4[10] = a1;
  v4[11] = a2;
  v4[12] = a3;
  v4[13] = a4;
}

uint64_t WKPosterEnvironmentSnapshot.PosterEnvironmentMode.description.getter()
{
  if (*v0)
  {
    return 0x676E6974696465;
  }

  else
  {
    return 0x6E697265646E6572;
  }
}

uint64_t sub_1E4A86DD4()
{
  if (*v0)
  {
    return 0x676E6974696465;
  }

  else
  {
    return 0x6E697265646E6572;
  }
}

unint64_t _s12WallpaperKit27WKPosterEnvironmentSnapshotV2eeoiySbAC_ACtFZ_0(float64x2_t *a1, double *a2)
{
  result = 0;
  if (((LOBYTE(a1->f64[0]) ^ *a2) & 1) != 0 || LOBYTE(a1->f64[1]) != *(a2 + 8) || a1[1].f64[0] != a2[2] || LOBYTE(a1[1].f64[1]) != *(a2 + 24) || a1[2].f64[0] != a2[4] || ((LOBYTE(a1[2].f64[1]) ^ *(a2 + 40)) & 1) != 0 || a1[3].f64[0] != a2[6])
  {
    return result;
  }

  v40 = v11;
  v41 = v10;
  v42 = v9;
  v43 = v8;
  v44 = v7;
  v45 = v6;
  v46 = v5;
  v47 = v4;
  v48 = v2;
  v49 = v3;
  v14 = a1[4].f64[1];
  v15 = a1[5].f64[0];
  v16 = a1[5].f64[1];
  v17 = a1[6].f64[0];
  v18 = a1[6].f64[1];
  v32 = a1[8].f64[0];
  v33 = a1[8].f64[1];
  v31 = a1[7];
  v19 = *(a2 + 8);
  v20 = *(a2 + 9);
  v21 = a2[10];
  v22 = a2[11];
  v23 = a2[12];
  v24 = a2[13];
  v26 = *(a2 + 16);
  v25 = *(a2 + 17);
  v28 = a2[14];
  v27 = a2[15];
  v29 = a1[4].f64[0];
  sub_1E4A5634C();
  if ((sub_1E4AAAAD0() & 1) == 0)
  {
    return 0;
  }

  if (v29 == 0.0)
  {
    result = 0;
    if (v19)
    {
      return result;
    }

    goto LABEL_16;
  }

  if (!v19)
  {
    return 0;
  }

  v30 = sub_1E4AAA710();

  result = 0;
  if ((v30 & 1) == 0)
  {
    return result;
  }

LABEL_16:
  if (*&v14 == v20)
  {
    v50.origin.x = v15;
    v50.origin.y = v16;
    v50.size.width = v17;
    v50.size.height = v18;
    v51.origin.x = v21;
    v51.origin.y = v22;
    v51.size.width = v23;
    v51.size.height = v24;
    result = CGRectEqualToRect(v50, v51);
    if (result)
    {
      v37 = v31;
      v38 = v32;
      v39 = v33;
      v35 = v26;
      v36 = v25;
      v34.f64[0] = v28;
      v34.f64[1] = v27;
      return SPRotation3DEqualToRotation(&v37, &v34);
    }
  }

  return result;
}

unint64_t sub_1E4A86FF0()
{
  result = qword_1ECF8E978;
  if (!qword_1ECF8E978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF8E978);
  }

  return result;
}

double destroy for WKPosterEnvironmentSnapshot(uint64_t a1)
{

  return result;
}

uint64_t initializeWithCopy for WKPosterEnvironmentSnapshot(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  v3 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v3;
  v4 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v4;
  v5 = *(a2 + 96);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = v5;
  v6 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v6;
  v7 = v3;

  return a1;
}

uint64_t assignWithCopy for WKPosterEnvironmentSnapshot(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  v4 = *(a2 + 56);
  v5 = *(a1 + 56);
  *(a1 + 56) = v4;
  v6 = v4;

  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  v8 = *(a2 + 112);
  v7 = *(a2 + 120);
  v9 = *(a2 + 136);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = v9;
  *(a1 + 112) = v8;
  *(a1 + 120) = v7;
  return a1;
}

__n128 __swift_memcpy144_16(uint64_t a1, uint64_t a2)
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
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t assignWithTake for WKPosterEnvironmentSnapshot(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);

  *(a1 + 72) = *(a2 + 72);
  v4 = *(a2 + 96);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = v4;
  v5 = *(a2 + 112);
  v6 = *(a2 + 136);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = v6;
  *(a1 + 112) = v5;
  return a1;
}

uint64_t getEnumTagSinglePayload for WKPosterEnvironmentSnapshot(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for WKPosterEnvironmentSnapshot(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
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
      *(result + 144) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id WKLayeredStripeWallpaperInput.backgroundColor.getter()
{
  v1 = [*(*v0 + 16) backgroundColor];

  return v1;
}

uint64_t WKLayeredStripeWallpaperInput.init(backgroundColor:stripeAngleDegrees:stripeHeightFactor:firstStripeOffsetScaleFactor:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>)
{
  v7 = [objc_allocWithZone(WKLayeredStripeWallpaperInput) initWithBackgroundColor:a1 stripeAngleDegrees:a3 stripeHeightFactor:a4 firstStripeOffsetScaleFactor:a5];

  type metadata accessor for WKLayeredStripeWallpaperInput.ImplementationWrapper();
  result = swift_allocObject();
  *(result + 16) = v7;
  *a2 = result;
  return result;
}

uint64_t WKLayeredStripeWallpaperInput.hash(into:)()
{
  v1 = *(*v0 + 16);
  v2 = sub_1E4AAAAE0();

  return MEMORY[0x1E691F1E0](v2);
}

uint64_t WKLayeredStripeWallpaperInput.hashValue.getter()
{
  v1 = *v0;
  sub_1E4AAAE00();
  v2 = *(v1 + 16);
  v3 = sub_1E4AAAAE0();

  MEMORY[0x1E691F1E0](v3);
  return sub_1E4AAAE40();
}

uint64_t WKLayeredStripeWallpaperInput.description.getter()
{
  v1 = [*(*v0 + 16) description];
  v2 = sub_1E4AAA8A0();

  return v2;
}

unint64_t sub_1E4A875B8()
{
  result = qword_1ECF8E980;
  if (!qword_1ECF8E980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF8E980);
  }

  return result;
}

void sub_1E4A87644(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1E4AAAC30();
    v2 = a1 + 64;
    v3 = sub_1E4AAAB50();
    v4 = a1;
    v5 = v3;
    v6 = 0;
    v7 = *(a1 + 36);
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v4 + 32))
    {
      v9 = v5 >> 6;
      if ((*(v2 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_20;
      }

      if (v7 != *(v4 + 36))
      {
        goto LABEL_21;
      }

      v18 = v6;

      sub_1E4AAAC10();
      sub_1E4AAAC40();
      sub_1E4AAAC50();
      sub_1E4AAAC20();
      v4 = a1;
      v8 = 1 << *(a1 + 32);
      if (v5 >= v8)
      {
        goto LABEL_22;
      }

      v10 = *(v2 + 8 * v9);
      if ((v10 & (1 << v5)) == 0)
      {
        goto LABEL_23;
      }

      if (v7 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v11 = v10 & (-2 << (v5 & 0x3F));
      if (v11)
      {
        v8 = __clz(__rbit64(v11)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v12 = v9 << 6;
        v13 = v9 + 1;
        v14 = (a1 + 72 + 8 * v9);
        while (v13 < (v8 + 63) >> 6)
        {
          v16 = *v14++;
          v15 = v16;
          v12 += 64;
          ++v13;
          if (v16)
          {
            sub_1E4A93064(v5, v7, 0);
            v4 = a1;
            v8 = __clz(__rbit64(v15)) + v12;
            goto LABEL_4;
          }
        }

        sub_1E4A93064(v5, v7, 0);
        v4 = a1;
      }

LABEL_4:
      v6 = v18 + 1;
      v5 = v8;
      if (v18 + 1 == v1)
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
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }
}

void *sub_1E4A87888(uint64_t a1)
{
  v2 = sub_1E4AAAB50();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_1E4A8FD70(&v4, v2, *(a1 + 36), 0, a1);
  }
}

uint64_t sub_1E4A87908@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1E4A93000(&qword_1EE042900, type metadata accessor for WKWallpaperPosterLayerViewModel, &unk_1E4AB2458);
  sub_1E4AAA060();

  *a2 = *(v3 + 16);
}

uint64_t sub_1E4A879B4(uint64_t *a1)
{
  v2 = *a1;

  return sub_1E4A74BA0(&v2);
}

void sub_1E4A879F0(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1E4A93000(&qword_1EE042900, type metadata accessor for WKWallpaperPosterLayerViewModel, &unk_1E4AB2458);
  sub_1E4AAA060();

  *a2 = *(v3 + 192);
}

uint64_t sub_1E4A87AC0(uint64_t a1)
{
  sub_1E4AAABC0();
  MEMORY[0x1E691ECA0](0xD000000000000018, 0x80000001E4AB9440);
  v2 = *(a1 + 16);
  v3 = [v2 identifierString];
  v4 = sub_1E4AAA8A0();
  v6 = v5;

  MEMORY[0x1E691ECA0](v4, v6);

  MEMORY[0x1E691ECA0](0x203A656D616E202CLL, 0xE800000000000000);
  v7 = [v2 name];
  v8 = sub_1E4AAA8A0();
  v10 = v9;

  MEMORY[0x1E691ECA0](v8, v10);

  MEMORY[0x1E691ECA0](0xD000000000000012, 0x80000001E4AB9460);
  v11 = [v2 contentVersion];
  [v11 floatValue];

  sub_1E4AAA9B0();
  MEMORY[0x1E691ECA0](0xD000000000000016, 0x80000001E4AB9480);
  v13 = [v2 logicalScreenClass];
  type metadata accessor for WKWallpaperRepresentingLogicalScreenClass(0);
  sub_1E4AAAC60();

  MEMORY[0x1E691ECA0](32032, 0xE200000000000000);
  return 0;
}

uint64_t sub_1E4A87CD0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E7C0, &qword_1E4AAEA40);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v88 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v88 - v7;
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v88 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v88 - v12;
  if (!a1)
  {
    return 0;
  }

  v14 = *(a1 + 16);
  result = [v14 valueBasedWallpaperForLocation_];
  if (!result)
  {
    return result;
  }

  sub_1E4A57768(v90);
  swift_unknownObjectRelease();
  sub_1E4A2732C(v90, v91);
  v16 = v92;
  v17 = v93;
  __swift_project_boxed_opaque_existential_1(v91, v92);
  (*(v17 + 24))(v90, v16, v17);
  v18 = *&v90[0];
  v19 = BYTE8(v90[0]);
  if (BYTE8(v90[0]) <= 4u)
  {
    if (BYTE8(v90[0]) != 1)
    {
      if (BYTE8(v90[0]) == 2)
      {
        if (qword_1EE0424B8 != -1)
        {
          swift_once();
        }

        v20 = sub_1E4AAA0E0();
        __swift_project_value_buffer(v20, qword_1EE048B70);

        v21 = sub_1E4AAA0C0();
        v22 = sub_1E4AAAA20();
        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          v24 = swift_slowAlloc();
          v89 = v24;
          *v23 = 136446210;
          v25 = [v14 identifierString];
          v26 = sub_1E4AAA8A0();
          v28 = v27;

          v29 = sub_1E4A85938(v26, v28, &v89);

          *(v23 + 4) = v29;
          _os_log_impl(&dword_1E4A23000, v21, v22, "Adding toggle depth action since '%{public}s' has floating layer content (LayeredStripe).", v23, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v24);
          MEMORY[0x1E691FE80](v24, -1, -1);
          MEMORY[0x1E691FE80](v23, -1, -1);

          v30 = v18;
          v31 = 2;
LABEL_42:
          sub_1E4A4EF3C(v30, v31);
LABEL_46:
          __swift_destroy_boxed_opaque_existential_1Tm(v91);
          return 1;
        }

        v50 = v18;
        v51 = 2;
        goto LABEL_45;
      }

      goto LABEL_32;
    }

    v42 = *(*&v90[0] + 16);

    v43 = [v42 floatingFullSizeImageURL];
    if (v43)
    {
      v44 = v43;
      sub_1E4AA9FC0();

      v45 = 0;
    }

    else
    {
      v45 = 1;
    }

    v52 = sub_1E4AA9FE0();
    v53 = *(v52 - 8);
    (*(v53 + 56))(v11, v45, 1, v52);
    sub_1E4A4EF94(v11, v13);
    v54 = (*(v53 + 48))(v13, 1, v52);
    sub_1E4A4DC88(v13, &qword_1ECF8E7C0, &qword_1E4AAEA40);
    if (v54 != 1)
    {
      if (qword_1EE0424B8 != -1)
      {
        swift_once();
      }

      v55 = sub_1E4AAA0E0();
      __swift_project_value_buffer(v55, qword_1EE048B70);

      v56 = sub_1E4AAA0C0();
      v57 = sub_1E4AAAA20();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v89 = v59;
        *v58 = 136446210;
        v60 = [v14 identifierString];
        v61 = sub_1E4AAA8A0();
        v63 = v62;

        v64 = sub_1E4A85938(v61, v63, &v89);

        *(v58 + 4) = v64;
        _os_log_impl(&dword_1E4A23000, v56, v57, "Adding toggle depth action since '%{public}s' has floating layer content (LayeredStill).", v58, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v59);
        MEMORY[0x1E691FE80](v59, -1, -1);
        MEMORY[0x1E691FE80](v58, -1, -1);
        sub_1E4A4EF3C(v18, 1u);

        v30 = v18;
        v31 = 1;
        goto LABEL_42;
      }

      sub_1E4A4EF3C(v18, 1u);

      v50 = v18;
      v51 = 1;
      goto LABEL_45;
    }

LABEL_31:
    sub_1E4A4EF3C(v18, v19);
    goto LABEL_32;
  }

  if (BYTE8(v90[0]) == 5)
  {
    v46 = *(*&v90[0] + 16);

    v47 = [v46 floatingAnimationFileURL];
    if (v47)
    {
      v48 = v47;
      sub_1E4AA9FC0();

      v49 = 0;
    }

    else
    {
      v49 = 1;
    }

    v65 = sub_1E4AA9FE0();
    v66 = *(v65 - 8);
    (*(v66 + 56))(v5, v49, 1, v65);
    sub_1E4A4EF94(v5, v8);
    v67 = (*(v66 + 48))(v8, 1, v65);
    sub_1E4A4DC88(v8, &qword_1ECF8E7C0, &qword_1E4AAEA40);
    if (v67 != 1)
    {
      if (qword_1EE0424B8 != -1)
      {
        swift_once();
      }

      v78 = sub_1E4AAA0E0();
      __swift_project_value_buffer(v78, qword_1EE048B70);

      v79 = sub_1E4AAA0C0();
      v80 = sub_1E4AAAA20();
      if (os_log_type_enabled(v79, v80))
      {
        v81 = swift_slowAlloc();
        v82 = swift_slowAlloc();
        v89 = v82;
        *v81 = 136446210;
        v83 = [v14 identifierString];
        v84 = sub_1E4AAA8A0();
        v86 = v85;

        v87 = sub_1E4A85938(v84, v86, &v89);

        *(v81 + 4) = v87;
        _os_log_impl(&dword_1E4A23000, v79, v80, "Adding toggle depth action since '%{public}s' has floating layer content (LayeredAnimation).", v81, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v82);
        MEMORY[0x1E691FE80](v82, -1, -1);
        MEMORY[0x1E691FE80](v81, -1, -1);
        sub_1E4A4EF3C(v18, 5u);

        v30 = v18;
        v31 = 5;
        goto LABEL_42;
      }

      sub_1E4A4EF3C(v18, 5u);

      v50 = v18;
      v51 = 5;
      goto LABEL_45;
    }

    goto LABEL_31;
  }

  if (BYTE8(v90[0]) == 6)
  {
    if (qword_1EE0424B8 != -1)
    {
      swift_once();
    }

    v32 = sub_1E4AAA0E0();
    __swift_project_value_buffer(v32, qword_1EE048B70);

    v33 = sub_1E4AAA0C0();
    v34 = sub_1E4AAAA20();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v89 = v36;
      *v35 = 136446210;
      v37 = [v14 identifierString];
      v38 = sub_1E4AAA8A0();
      v40 = v39;

      v41 = sub_1E4A85938(v38, v40, &v89);

      *(v35 + 4) = v41;
      _os_log_impl(&dword_1E4A23000, v33, v34, "Adding toggle depth action since '%{public}s' has floating layer content (ParameterizedCA).", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v36);
      MEMORY[0x1E691FE80](v36, -1, -1);
      MEMORY[0x1E691FE80](v35, -1, -1);

      v30 = v18;
      v31 = 6;
      goto LABEL_42;
    }

    v50 = v18;
    v51 = 6;
LABEL_45:
    sub_1E4A4EF3C(v50, v51);

    goto LABEL_46;
  }

LABEL_32:
  sub_1E4A4EF3C(v18, v19);
  if (qword_1EE0424B8 != -1)
  {
    swift_once();
  }

  v68 = sub_1E4AAA0E0();
  __swift_project_value_buffer(v68, qword_1EE048B70);

  v69 = sub_1E4AAA0C0();
  v70 = sub_1E4AAAA20();
  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v89 = v72;
    *v71 = 136446210;
    v73 = [v14 identifierString];
    v74 = sub_1E4AAA8A0();
    v76 = v75;

    v77 = sub_1E4A85938(v74, v76, &v89);

    *(v71 + 4) = v77;
    _os_log_impl(&dword_1E4A23000, v69, v70, "No need to add toggle depth action for '%{public}s'.", v71, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v72);
    MEMORY[0x1E691FE80](v72, -1, -1);
    MEMORY[0x1E691FE80](v71, -1, -1);
  }

  else
  {
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v91);
  return 0;
}

void sub_1E4A887C4(SEL **a1)
{
  v2 = v1;
  v4 = sub_1E4AAA030();
  v78 = *(v4 - 8);
  v79 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v77 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  v7 = MEMORY[0x1E69E7CC8];
  if (*(v2 + 7))
  {
    v8 = qword_1EE0424C0;

    if (v8 != -1)
    {
LABEL_49:
      swift_once();
    }

    v10 = sub_1E4AAA0E0();
    v80 = __swift_project_value_buffer(v10, qword_1EE048B88);
    v11 = sub_1E4AAA0C0();
    v12 = sub_1E4AAAA20();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1E4A23000, v11, v12, "Removing all items.", v13, 2u);
      MEMORY[0x1E691FE80](v13, -1, -1);
    }

    v81 = v6;

    swift_beginAccess();
    *(v2 + 4) = v7;

    v7 = &selRef_currentDevice;
    if ([*(v9 + 16) numberOfWallpapers])
    {
      v14 = 0;
      v6 = &unk_1E8767000;
      v83 = v2;
      v84 = v9;
      do
      {
        *&v88[0] = [*(v9 + 16) v6[372]];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E568, &qword_1E4AB0E30);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8E570, &qword_1E4AB0E38);
        if (!swift_dynamicCast())
        {
          goto LABEL_53;
        }

        sub_1E4A2732C(&v89, &v98);
        v15 = *(&v99 + 1);
        v16 = v100;
        __swift_project_boxed_opaque_existential_1(&v98, *(&v99 + 1));
        (*(v16 + 8))(v108, v15, v16);
        __swift_destroy_boxed_opaque_existential_1Tm(&v98);
        if (v14 >= [*(v9 + 16) numberOfWallpapers])
        {
          __break(1u);
LABEL_48:
          __break(1u);
          goto LABEL_49;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8E540, &unk_1E4AB3EC0);
        if (swift_dynamicCast())
        {
          v17 = *(v2 + 10);
          v18 = *(v2 + 12);
          v95 = *(v2 + 11);
          v96 = v18;
          v19 = *(v2 + 12);
          v97 = *(v2 + 13);
          v20 = *(v2 + 6);
          v21 = *(v2 + 8);
          v91 = *(v2 + 7);
          v92 = v21;
          v22 = *(v2 + 8);
          v23 = *(v2 + 10);
          v93 = *(v2 + 9);
          v94 = v23;
          v24 = *(v2 + 6);
          v89 = *(v2 + 5);
          v90 = v24;
          v104 = v95;
          v105 = v19;
          v106 = *(v2 + 13);
          v100 = v91;
          v101 = v22;
          v102 = v93;
          v103 = v17;
          v25 = v107;
          v98 = v89;
          v99 = v20;
          if (sub_1E4A86648(&v98) == 1)
          {
            __break(1u);
            goto LABEL_51;
          }

          v87[6] = v104;
          v87[7] = v105;
          v87[8] = v106;
          v87[2] = v100;
          v87[3] = v101;
          v87[4] = v102;
          v87[5] = v103;
          v87[0] = v98;
          v87[1] = v99;
          type metadata accessor for WKWallpaperPosterLayerViewModel(0);
          swift_allocObject();
          v88[6] = v95;
          v88[7] = v96;
          v88[8] = v97;
          v88[2] = v91;
          v88[3] = v92;
          v88[4] = v93;
          v88[5] = v94;
          v88[0] = v89;
          v88[1] = v90;
          sub_1E4A49D24(v88, v86);
          v26 = sub_1E4A7578C(v87, 1);
          v27 = *(v26 + 16);

          v28 = sub_1E4A76F94(v27, v25);

          if (v28)
          {
            KeyPath = swift_getKeyPath();
            v82 = &v77;
            MEMORY[0x1EEE9AC00](KeyPath);
            *&v87[0] = v26;
            sub_1E4A93000(&qword_1EE042900, type metadata accessor for WKWallpaperPosterLayerViewModel, &unk_1E4AB2458);
            sub_1E4AAA050();
          }

          else
          {
            *(v26 + 16) = v25;
          }

          swift_getKeyPath();
          v9 = OBJC_IVAR____TtC12WallpaperKit31WKWallpaperPosterLayerViewModel___observationRegistrar;
          *&v87[0] = v26;
          v2 = &unk_1E4AB3860;
          v6 = sub_1E4A93000(&qword_1EE042900, type metadata accessor for WKWallpaperPosterLayerViewModel, &unk_1E4AB2458);
          sub_1E4AAA060();

          *&v87[0] = v26;
          v7 = swift_getKeyPath();
          sub_1E4AAA080();

          v30 = *(v26 + 192);
          v31 = __OFADD__(v30, 1);
          v32 = v30 + 1;
          if (v31)
          {
            goto LABEL_48;
          }

          *(v26 + 192) = v32;
          *&v87[0] = v26;
          swift_getKeyPath();
          sub_1E4AAA070();

          v33 = type metadata accessor for WKWallpaperPosterEditorLookItem();
          v34 = objc_allocWithZone(v33);
          *&v34[OBJC_IVAR____TtC12WallpaperKit31WKWallpaperPosterEditorLookItem_views] = 0;
          *&v34[OBJC_IVAR____TtC12WallpaperKit31WKWallpaperPosterEditorLookItem_wallpaperPosterLayerViewModel] = v26;
          v85.receiver = v34;
          v85.super_class = v33;

          v35 = objc_msgSendSuper2(&v85, sel_init);
          v36 = [*(v25 + 16) identifierString];
          v37 = sub_1E4AAA8A0();
          v39 = v38;

          v2 = v83;
          swift_beginAccess();
          v40 = v35;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v86[0] = *(v2 + 4);
          *(v2 + 4) = 0x8000000000000000;
          sub_1E4A959C8(v40, v37, v39, isUniquelyReferenced_nonNull_native);

          *(v2 + 4) = v86[0];
          swift_endAccess();

          v9 = v84;
          v7 = &selRef_currentDevice;
          v6 = &unk_1E8767000;
        }
      }

      while (++v14 != [*(v9 + 16) numberOfWallpapers]);
    }

    v42 = sub_1E4AAA0C0();
    v43 = sub_1E4AAAA20();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 134349056;
      *(v44 + 4) = *(*(v2 + 4) + 16);

      _os_log_impl(&dword_1E4A23000, v42, v43, "Created %{public}ld items.", v44, 0xCu);
      MEMORY[0x1E691FE80](v44, -1, -1);
    }

    else
    {
    }

    v6 = v81;
    v49 = *(v2 + 7);
    if (v81)
    {
LABEL_28:
      if (!v49)
      {
        goto LABEL_30;
      }

      v50 = v6[2];
      v51 = *(v49 + 16);
      swift_retain_n();

      v52 = v50;
      v53 = v51;
      v54 = [v52 isEqual_];

      if ((v54 & 1) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_31;
    }
  }

  else
  {
    if (qword_1EE0424C0 != -1)
    {
      swift_once();
    }

    v45 = sub_1E4AAA0E0();
    __swift_project_value_buffer(v45, qword_1EE048B88);
    v46 = sub_1E4AAA0C0();
    v47 = sub_1E4AAAA20();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_1E4A23000, v46, v47, "Removing all items (no collection).", v48, 2u);
      MEMORY[0x1E691FE80](v48, -1, -1);
    }

    swift_beginAccess();
    *(v2 + 4) = v7;

    v49 = *(v2 + 7);
    if (v6)
    {
      goto LABEL_28;
    }
  }

  if (v49)
  {
LABEL_30:
    [*(v2 + 2) updateActions];
  }

LABEL_31:
  swift_beginAccess();

  sub_1E4A87644(v55);
  v57 = v56;

  v58 = *(v2 + 7);
  if (!v58)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if ([*(v58 + 16) disableRotation])
  {
    if (qword_1EE0424C0 != -1)
    {
      swift_once();
    }

    v59 = sub_1E4AAA0E0();
    __swift_project_value_buffer(v59, qword_1EE048B88);
    v60 = sub_1E4AAA0C0();
    v61 = sub_1E4AAAA20();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&dword_1E4A23000, v60, v61, "Renderer will NOT support rotation", v62, 2u);
      MEMORY[0x1E691FE80](v62, -1, -1);
    }

    *(v2 + 3) = 0;
    goto LABEL_38;
  }

  if (!*(v2 + 3))
  {
    type metadata accessor for WKDynamicRotationManager(0);
    v65 = swift_allocObject();
    *(v65 + 16) = MEMORY[0x1E69E7CC0];
    v66 = v65 + OBJC_IVAR____TtC12WallpaperKit24WKDynamicRotationManager_rotationState;
    v67 = v77;
    sub_1E4AAA020();
    (*(v78 + 32))(v66, v67, v79);
    v68 = type metadata accessor for WKPosterDynamicRotationState(0);
    *(v66 + v68[5]) = 0;
    *(v66 + v68[6]) = 0x3FF0000000000000;
    *(v66 + v68[7]) = 0;
    *(v66 + v68[8]) = 0;
    *(v65 + OBJC_IVAR____TtC12WallpaperKit24WKDynamicRotationManager_displayLink) = 0;
    v69 = OBJC_IVAR____TtC12WallpaperKit24WKDynamicRotationManager_animationState;
    v70 = type metadata accessor for WKPosterDynamicRotationAnimationState(0);
    (*(*(v70 - 8) + 56))(v65 + v69, 1, 1, v70);
    *(v65 + OBJC_IVAR____TtC12WallpaperKit24WKDynamicRotationManager_delegate + 8) = 0;
    swift_unknownObjectWeakInit();
    *(v2 + 3) = v65;

    v71 = *(v2 + 3);
    if (v71)
    {
      *(v71 + OBJC_IVAR____TtC12WallpaperKit24WKDynamicRotationManager_delegate + 8) = &off_1F5E9BF68;
      swift_unknownObjectWeakAssign();
      if (*(v2 + 3))
      {
        if (*(v2 + 29))
        {
          v72 = *(v2 + 30);
          ObjectType = swift_getObjectType();
          v74 = *(v72 + 8);
          v75 = *(v74 + 8);

          swift_unknownObjectRetain();
          v76 = v75(ObjectType, v74);
          swift_unknownObjectRelease();
          sub_1E4A6C954(v76);
LABEL_38:

          goto LABEL_40;
        }

LABEL_52:
        __break(1u);
LABEL_53:
        *&v91 = 0;
        v89 = 0u;
        v90 = 0u;
        sub_1E4A4DC88(&v89, &unk_1ECF8EB30, &unk_1E4AB0E40);
        sub_1E4AAACB0();
        __break(1u);
        return;
      }
    }
  }

LABEL_40:
  v63 = *(v2 + 3);
  if (v63)
  {

    v64 = sub_1E4A8943C(v57);

    *(v63 + 16) = v64;
  }
}

void *sub_1E4A8943C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1E4AAAC80();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v17 = MEMORY[0x1E69E7CC0];
  result = sub_1E4A689EC(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v17;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = MEMORY[0x1E691EFA0](v5, a1);
        v8 = *(v17 + 16);
        v7 = *(v17 + 24);
        if (v8 >= v7 >> 1)
        {
          v10 = v6;
          sub_1E4A689EC((v7 > 1), v8 + 1, 1);
          v6 = v10;
        }

        ++v5;
        *(v17 + 16) = v8 + 1;
        v9 = v17 + 16 * v8;
        *(v9 + 32) = v6;
        *(v9 + 40) = &off_1F5E9B728;
      }

      while (v2 != v5);
    }

    else
    {
      v11 = (a1 + 32);
      v12 = *(v17 + 16);
      v13 = 16 * v12;
      do
      {
        v14 = *v11;
        v15 = *(v17 + 24);

        if (v12 >= v15 >> 1)
        {
          sub_1E4A689EC((v15 > 1), v12 + 1, 1);
        }

        *(v17 + 16) = v12 + 1;
        v16 = v17 + v13;
        *(v16 + 32) = v14;
        *(v16 + 40) = &off_1F5E9B728;
        v13 += 16;
        ++v11;
        ++v12;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

void sub_1E4A895D4(uint64_t a1)
{
  if (*(v1 + 64) != a1)
  {
    v2 = v1;
    swift_beginAccess();
    v3 = *(v1 + 32);
    v6 = *(v3 + 64);
    v5 = v3 + 64;
    v4 = v6;
    v7 = 1 << *(*(v1 + 32) + 32);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & v4;
    v10 = (v7 + 63) >> 6;
    v33 = *(v1 + 32);

    v11 = 0;
    v32 = v1;
    if (v9)
    {
      while (1)
      {
        v12 = v11;
LABEL_9:
        v13 = __clz(__rbit64(v9)) | (v12 << 6);
        v14 = (*(v33 + 48) + 16 * v13);
        v15 = v14[1];
        v34 = *v14;
        v16 = *(*(v33 + 56) + 8 * v13);
        v17 = qword_1EE0424C0;

        v18 = v16;
        if (v17 != -1)
        {
          swift_once();
        }

        v19 = sub_1E4AAA0E0();
        __swift_project_value_buffer(v19, qword_1EE048B88);

        v20 = sub_1E4AAA0C0();
        v21 = sub_1E4AAAA20();

        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          v23 = swift_slowAlloc();
          v35 = v23;
          *v22 = 136446210;
          *(v22 + 4) = sub_1E4A85938(v34, v15, &v35);
          _os_log_impl(&dword_1E4A23000, v20, v21, "Updating overrideUserInterfaceStyle on %{public}s.", v22, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v23);
          v24 = v23;
          v2 = v32;
          MEMORY[0x1E691FE80](v24, -1, -1);
          MEMORY[0x1E691FE80](v22, -1, -1);
        }

        v25 = OBJC_IVAR____TtC12WallpaperKit31WKWallpaperPosterEditorLookItem_views;
        v26 = *&v18[OBJC_IVAR____TtC12WallpaperKit31WKWallpaperPosterEditorLookItem_views];
        if (!v26)
        {
          break;
        }

        v27 = [v26 backgroundView];
        [v27 setOverrideUserInterfaceStyle_];

        v28 = *&v18[v25];
        if (!v28)
        {
          goto LABEL_21;
        }

        v29 = [v28 foregroundView];
        [v29 setOverrideUserInterfaceStyle_];

        v30 = *&v18[v25];
        if (!v30)
        {
          goto LABEL_23;
        }

        v9 &= v9 - 1;
        swift_unknownObjectRetain();

        v31 = [v30 floatingView];
        swift_unknownObjectRelease();
        [v31 setOverrideUserInterfaceStyle_];

        v11 = v12;
        if (!v9)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      while (1)
      {
        v12 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v12 >= v10)
        {

          return;
        }

        v9 = *(v5 + 8 * v12);
        ++v11;
        if (v9)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
    }

    __break(1u);
LABEL_23:
    __break(1u);
  }
}

void sub_1E4A898E4(float64x2_t *a1)
{
  v2 = v1;
  v4 = a1[5];
  v5 = a1[7];
  v142 = a1[6];
  v143 = v5;
  v6 = a1[7];
  v144 = a1[8];
  v7 = a1[1];
  v8 = a1[3];
  v138 = a1[2];
  v139 = v8;
  v9 = a1[3];
  v10 = a1[4];
  v11 = v10;
  v141 = a1[5];
  v140 = v10;
  v12 = *a1;
  v13 = *a1;
  v137[1] = a1[1];
  v137[0] = v12;
  v14 = *(v2 + 160);
  v15 = *(v2 + 192);
  v150 = *(v2 + 176);
  v151 = v15;
  v16 = *(v2 + 192);
  v152 = *(v2 + 208);
  v17 = *(v2 + 96);
  v18 = *(v2 + 128);
  v146 = *(v2 + 112);
  v147 = v18;
  v20 = *(v2 + 128);
  v19 = *(v2 + 144);
  v21 = v19;
  v149 = *(v2 + 160);
  v148 = v19;
  v22 = *(v2 + 80);
  v145[1] = *(v2 + 96);
  v145[0] = v22;
  v23 = *(v2 + 160);
  v24 = *(v2 + 192);
  v136[6] = *(v2 + 176);
  v136[7] = v24;
  v26 = *(v2 + 80);
  v25 = *(v2 + 96);
  v27 = *(v2 + 128);
  v136[2] = *(v2 + 112);
  v136[3] = v27;
  v28 = *(v2 + 144);
  v136[5] = v23;
  v136[4] = v28;
  v29 = *(v2 + 80);
  v136[1] = v25;
  v136[0] = v29;
  v136[14] = v4;
  v136[15] = v142;
  v30 = a1[8];
  v136[16] = v6;
  v136[17] = v30;
  v136[10] = v7;
  v136[11] = v138;
  v136[12] = v9;
  v136[13] = v11;
  v136[8] = *(v2 + 208);
  v136[9] = v13;
  v153[6] = v150;
  v153[7] = v16;
  v153[8] = *(v2 + 208);
  v153[2] = v146;
  v153[3] = v20;
  v153[4] = v21;
  v153[5] = v14;
  v153[0] = v26;
  v153[1] = v17;
  if (sub_1E4A86648(v153) == 1)
  {
    v31 = a1[7];
    v126[6] = a1[6];
    v126[7] = v31;
    v126[8] = a1[8];
    v32 = a1[3];
    v126[2] = a1[2];
    v126[3] = v32;
    v33 = a1[5];
    v126[4] = a1[4];
    v126[5] = v33;
    v34 = a1[1];
    v126[0] = *a1;
    v126[1] = v34;
    if (sub_1E4A86648(v126) == 1)
    {
      v133 = v136[6];
      v134 = v136[7];
      v135 = v136[8];
      v129 = v136[2];
      v130 = v136[3];
      v131 = v136[4];
      v132 = v136[5];
      v127 = v136[0];
      v128 = v136[1];
      sub_1E4A52D40(v145, &v117, &unk_1ECF8E990, &qword_1E4AB36D0);
      sub_1E4A52D40(v137, &v117, &unk_1ECF8E990, &qword_1E4AB36D0);
      sub_1E4A4DC88(&v127, &unk_1ECF8E990, &qword_1E4AB36D0);
      return;
    }

    sub_1E4A52D40(v145, &v127, &unk_1ECF8E990, &qword_1E4AB36D0);
    sub_1E4A52D40(v137, &v127, &unk_1ECF8E990, &qword_1E4AB36D0);
  }

  else
  {
    v133 = v136[6];
    v134 = v136[7];
    v135 = v136[8];
    v129 = v136[2];
    v130 = v136[3];
    v131 = v136[4];
    v132 = v136[5];
    v127 = v136[0];
    v128 = v136[1];
    v123 = v136[6];
    v124 = v136[7];
    v125 = v136[8];
    v119 = v136[2];
    v120 = v136[3];
    v121 = v136[4];
    v122 = v136[5];
    v117 = v136[0];
    v118 = v136[1];
    v35 = a1[7];
    v126[6] = a1[6];
    v126[7] = v35;
    v126[8] = a1[8];
    v36 = a1[3];
    v126[2] = a1[2];
    v126[3] = v36;
    v37 = a1[5];
    v126[4] = a1[4];
    v126[5] = v37;
    v38 = a1[1];
    v126[0] = *a1;
    v126[1] = v38;
    if (sub_1E4A86648(v126) != 1)
    {
      v89 = a1[7];
      v114 = a1[6];
      v115 = v89;
      v116 = a1[8];
      v90 = a1[3];
      v110 = a1[2];
      v111 = v90;
      v91 = a1[5];
      v112 = a1[4];
      v113 = v91;
      v92 = a1[1];
      v108 = *a1;
      v109 = v92;
      sub_1E4A52D40(v145, &v99, &unk_1ECF8E990, &qword_1E4AB36D0);
      sub_1E4A52D40(v137, &v99, &unk_1ECF8E990, &qword_1E4AB36D0);
      sub_1E4A52D40(&v127, &v99, &unk_1ECF8E990, &qword_1E4AB36D0);
      v93 = _s12WallpaperKit27WKPosterEnvironmentSnapshotV2eeoiySbAC_ACtFZ_0(&v117, v108.f64);
      v98[6] = v114;
      v98[7] = v115;
      v98[8] = v116;
      v98[2] = v110;
      v98[3] = v111;
      v98[4] = v112;
      v98[5] = v113;
      v98[0] = v108;
      v98[1] = v109;
      sub_1E4A49CD0(v98);
      v105 = v123;
      v106 = v124;
      v107 = v125;
      v101 = v119;
      v102 = v120;
      v103 = v121;
      v104 = v122;
      v99 = v117;
      v100 = v118;
      sub_1E4A49CD0(&v99);
      v114 = v136[6];
      v115 = v136[7];
      v116 = v136[8];
      v110 = v136[2];
      v111 = v136[3];
      v112 = v136[4];
      v113 = v136[5];
      v108 = v136[0];
      v109 = v136[1];
      sub_1E4A4DC88(&v108, &unk_1ECF8E990, &qword_1E4AB36D0);
      if (v93)
      {
        return;
      }

      goto LABEL_8;
    }

    v114 = v136[6];
    v115 = v136[7];
    v116 = v136[8];
    v110 = v136[2];
    v111 = v136[3];
    v112 = v136[4];
    v113 = v136[5];
    v108 = v136[0];
    v109 = v136[1];
    sub_1E4A52D40(v145, &v99, &unk_1ECF8E990, &qword_1E4AB36D0);
    sub_1E4A52D40(v137, &v99, &unk_1ECF8E990, &qword_1E4AB36D0);
    sub_1E4A52D40(&v127, &v99, &unk_1ECF8E990, &qword_1E4AB36D0);
    sub_1E4A49CD0(&v108);
  }

  memcpy(v126, v136, sizeof(v126));
  sub_1E4A4DC88(v126, &unk_1ECF8EA80, &qword_1E4AB3890);
LABEL_8:
  swift_beginAccess();
  v39 = *(v2 + 32);
  v42 = *(v39 + 64);
  v41 = v39 + 64;
  v40 = v42;
  v43 = 1 << *(*(v2 + 32) + 32);
  v44 = -1;
  if (v43 < 64)
  {
    v44 = ~(-1 << v43);
  }

  v45 = v44 & v40;
  v46 = (v43 + 63) >> 6;
  v97 = *(v2 + 32);

  v47 = 0;
  v95 = v46;
  v96 = v41;
  while (v45)
  {
    v60 = v47;
LABEL_18:
    v61 = __clz(__rbit64(v45)) | (v60 << 6);
    v62 = (*(v97 + 48) + 16 * v61);
    v63 = *v62;
    v64 = v62[1];
    v65 = *(*(v97 + 56) + 8 * v61);
    v66 = qword_1EE0424C0;

    v67 = v65;
    if (v66 != -1)
    {
      swift_once();
    }

    v68 = sub_1E4AAA0E0();
    __swift_project_value_buffer(v68, qword_1EE048B88);

    v69 = sub_1E4AAA0C0();
    v70 = sub_1E4AAAA20();

    if (os_log_type_enabled(v69, v70))
    {
      v94 = v67;
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      *&v126[0] = v72;
      *v71 = 136446210;
      *(v71 + 4) = sub_1E4A85938(v63, v64, v126);
      _os_log_impl(&dword_1E4A23000, v69, v70, "Updating posterEnvironmentSnapshot on %{public}s.", v71, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v72);
      MEMORY[0x1E691FE80](v72, -1, -1);
      v73 = v71;
      v67 = v94;
      MEMORY[0x1E691FE80](v73, -1, -1);
    }

    v74 = *&v67[OBJC_IVAR____TtC12WallpaperKit31WKWallpaperPosterEditorLookItem_wallpaperPosterLayerViewModel];
    v75 = *(v2 + 160);
    v76 = *(v2 + 192);
    v133 = *(v2 + 176);
    v134 = v76;
    v77 = *(v2 + 192);
    v135 = *(v2 + 208);
    v78 = *(v2 + 96);
    v79 = *(v2 + 128);
    v129 = *(v2 + 112);
    v130 = v79;
    v80 = *(v2 + 128);
    v81 = *(v2 + 160);
    v131 = *(v2 + 144);
    v132 = v81;
    v82 = *(v2 + 96);
    v127 = *(v2 + 80);
    v128 = v82;
    v126[6] = v133;
    v126[7] = v77;
    v126[8] = *(v2 + 208);
    v126[2] = v129;
    v126[3] = v80;
    v126[4] = v131;
    v126[5] = v75;
    v126[0] = v127;
    v126[1] = v78;
    if (sub_1E4A86648(v126) == 1)
    {
      goto LABEL_29;
    }

    v45 &= v45 - 1;
    v136[6] = v126[6];
    v136[7] = v126[7];
    v136[8] = v126[8];
    v136[2] = v126[2];
    v136[3] = v126[3];
    v136[5] = v126[5];
    v136[4] = v126[4];
    v136[1] = v126[1];
    v136[0] = v126[0];
    v123 = v133;
    v124 = v134;
    v125 = v135;
    v119 = v129;
    v120 = v130;
    v121 = v131;
    v122 = v132;
    v117 = v127;
    v118 = v128;
    sub_1E4A49D24(&v117, &v108);

    v83 = *(*&v74 + 128);
    v113 = *(*&v74 + 112);
    v114 = v83;
    v84 = *(*&v74 + 160);
    v115 = *(*&v74 + 144);
    v116 = v84;
    v85 = *(*&v74 + 48);
    v86 = *(*&v74 + 80);
    v87 = *(*&v74 + 96);
    v110 = *(*&v74 + 64);
    v111 = v86;
    v112 = v87;
    v108 = *(*&v74 + 32);
    v109 = v85;
    v105 = v136[6];
    v106 = v136[7];
    v107 = v136[8];
    v101 = v136[2];
    v102 = v136[3];
    v103 = v136[4];
    v104 = v136[5];
    v99 = v136[0];
    v100 = v136[1];
    if (_s12WallpaperKit27WKPosterEnvironmentSnapshotV2eeoiySbAC_ACtFZ_0(&v108, v99.f64))
    {
      v48 = *(*&v74 + 48);
      v50 = *(*&v74 + 80);
      v49 = *(*&v74 + 96);
      v110 = *(*&v74 + 64);
      v111 = v50;
      v51 = *(*&v74 + 112);
      v52 = *(*&v74 + 128);
      v53 = *(*&v74 + 160);
      v115 = *(*&v74 + 144);
      v116 = v53;
      v113 = v51;
      v114 = v52;
      v112 = v49;
      v108 = *(*&v74 + 32);
      v109 = v48;
      v54 = v136[1];
      *(*&v74 + 32) = v136[0];
      v55 = v136[2];
      *(*&v74 + 80) = v136[3];
      v56 = v136[5];
      *(*&v74 + 96) = v136[4];
      v57 = v136[8];
      v58 = v136[7];
      v59 = v136[6];
      *(*&v74 + 112) = v56;
      *(*&v74 + 128) = v59;
      *(*&v74 + 144) = v58;
      *(*&v74 + 160) = v57;
      *(*&v74 + 48) = v54;
      *(*&v74 + 64) = v55;
      sub_1E4A49CD0(&v108);
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      v108.f64[0] = v74;
      sub_1E4A93000(&qword_1EE042900, type metadata accessor for WKWallpaperPosterLayerViewModel, &unk_1E4AB2458);
      sub_1E4AAA050();
      sub_1E4A4DC88(&v127, &unk_1ECF8E990, &qword_1E4AB36D0);
    }

    v47 = v60;
    v46 = v95;
    v41 = v96;
  }

  while (1)
  {
    v60 = v47 + 1;
    if (__OFADD__(v47, 1))
    {
      break;
    }

    if (v60 >= v46)
    {

      return;
    }

    v45 = *(v41 + 8 * v60);
    ++v47;
    if (v45)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
}

char *sub_1E4A8A28C(char *a1, __n128 result)
{
  v3 = v2;
  v4 = a1;
  v5 = *(v2 + 224);
  if (v5)
  {
    v6 = *(v5 + OBJC_IVAR____TtC12WallpaperKit31WKWallpaperPosterEditorLookItem_wallpaperPosterLayerViewModel);
    swift_getKeyPath();
    sub_1E4A93000(&qword_1EE042900, type metadata accessor for WKWallpaperPosterLayerViewModel, &unk_1E4AB2458);

    sub_1E4AAA060();

    v7 = *(v6 + 16);

    if (v7)
    {
      v8 = [*(v7 + 16) identifierString];
      v9 = sub_1E4AAA8A0();
      v11 = v10;

      if (!v4)
      {
        goto LABEL_4;
      }

LABEL_7:
      v13 = *&v4[OBJC_IVAR____TtC12WallpaperKit31WKWallpaperPosterEditorLookItem_wallpaperPosterLayerViewModel];
      swift_getKeyPath();
      sub_1E4A93000(&qword_1EE042900, type metadata accessor for WKWallpaperPosterLayerViewModel, &unk_1E4AB2458);
      sub_1E4AAA060();

      v14 = *(v13 + 16);
      if (v14)
      {
        v15 = *(v14 + 16);

        v16 = [v15 identifierString];
        v4 = sub_1E4AAA8A0();
        v12 = v17;

        if (!v11)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v4 = 0;
        v12 = 0;
        if (!v11)
        {
          goto LABEL_14;
        }
      }

      goto LABEL_9;
    }
  }

  v9 = 0;
  v11 = 0;
  if (v4)
  {
    goto LABEL_7;
  }

LABEL_4:
  v12 = 0;
  if (!v11)
  {
LABEL_14:
    if (!v12)
    {
      return a1;
    }

    goto LABEL_15;
  }

LABEL_9:
  if (!v12)
  {
LABEL_15:

    return [*(v3 + 16) updateActions];
  }

  if (v9 == v4 && v11 == v12)
  {
  }

  v18 = sub_1E4AAADA0();

  if ((v18 & 1) == 0)
  {
    return [*(v3 + 16) updateActions];
  }

  return a1;
}

void sub_1E4A8A50C(uint64_t a1, uint64_t a2)
{
  v53 = sub_1E4AA9FE0();
  v5 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v48 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8EA60, &unk_1E4AB33A0);
  MEMORY[0x1EEE9AC00](v51);
  v52 = &v47 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E7C0, &qword_1E4AAEA40);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v49 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v47 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v47 - v14;
  v16 = *(v2 + 232);
  v50 = v2;
  if (v16)
  {
    v47 = v13;
    v17 = a2;
    v18 = a1;
    v19 = *(v2 + 240);
    ObjectType = swift_getObjectType();
    v21 = *(v19 + 8);
    v22 = *(v21 + 40);
    swift_unknownObjectRetain();
    v22(ObjectType, v21);
    a1 = v18;
    v23 = v53;
    a2 = v17;
    v13 = v47;
    swift_unknownObjectRelease();
    v24 = *(v5 + 56);
    v24(v15, 0, 1, v23);
  }

  else
  {
    v24 = *(v5 + 56);
    v24(&v47 - v14, 1, 1, v53);
  }

  v25 = v5;
  if (a1)
  {
    v26 = swift_getObjectType();
    (*(*(a2 + 8) + 40))(v26);
    v27 = 0;
  }

  else
  {
    v27 = 1;
  }

  v29 = v52;
  v28 = v53;
  v24(v13, v27, 1, v53);
  v30 = *(v51 + 48);
  sub_1E4A52D40(v15, v29, &qword_1ECF8E7C0, &qword_1E4AAEA40);
  sub_1E4A52D40(v13, v29 + v30, &qword_1ECF8E7C0, &qword_1E4AAEA40);
  v31 = *(v25 + 48);
  if (v31(v29, 1, v28) == 1)
  {
    sub_1E4A4DC88(v13, &qword_1ECF8E7C0, &qword_1E4AAEA40);
    sub_1E4A4DC88(v15, &qword_1ECF8E7C0, &qword_1E4AAEA40);
    if (v31(v29 + v30, 1, v53) == 1)
    {
      sub_1E4A4DC88(v29, &qword_1ECF8E7C0, &qword_1E4AAEA40);
      return;
    }
  }

  else
  {
    v32 = v49;
    sub_1E4A52D40(v29, v49, &qword_1ECF8E7C0, &qword_1E4AAEA40);
    if (v31(v29 + v30, 1, v53) != 1)
    {
      v41 = v29 + v30;
      v42 = v48;
      v43 = v53;
      (*(v25 + 32))(v48, v41, v53);
      sub_1E4A93000(&qword_1EE043978, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
      v44 = v32;
      v45 = sub_1E4AAA860();
      v46 = *(v25 + 8);
      v46(v42, v43);
      sub_1E4A4DC88(v13, &qword_1ECF8E7C0, &qword_1E4AAEA40);
      sub_1E4A4DC88(v15, &qword_1ECF8E7C0, &qword_1E4AAEA40);
      v46(v44, v43);
      sub_1E4A4DC88(v29, &qword_1ECF8E7C0, &qword_1E4AAEA40);
      if (v45)
      {
        return;
      }

      goto LABEL_13;
    }

    sub_1E4A4DC88(v13, &qword_1ECF8E7C0, &qword_1E4AAEA40);
    sub_1E4A4DC88(v15, &qword_1ECF8E7C0, &qword_1E4AAEA40);
    (*(v25 + 8))(v32, v53);
  }

  sub_1E4A4DC88(v29, &qword_1ECF8EA60, &unk_1E4AB33A0);
LABEL_13:
  if (qword_1EE0424C0 != -1)
  {
    swift_once();
  }

  v33 = sub_1E4AAA0E0();
  __swift_project_value_buffer(v33, qword_1EE048B88);

  v34 = sub_1E4AAA0C0();
  v35 = sub_1E4AAAA20();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v54 = v37;
    *v36 = 136446466;
    v38 = sub_1E4AAAE90();
    v40 = sub_1E4A85938(v38, v39, &v54);

    *(v36 + 4) = v40;
    *(v36 + 12) = 2082;
    *(v36 + 14) = sub_1E4A85938(0xD000000000000018, 0x80000001E4AB9AA0, &v54);
    _os_log_impl(&dword_1E4A23000, v34, v35, "(%{public}s.%{public}s): sourceAssetDirectory differ, loading contents from environment…", v36, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E691FE80](v37, -1, -1);
    MEMORY[0x1E691FE80](v36, -1, -1);
  }

  sub_1E4A8ABAC();
}

void sub_1E4A8ABAC()
{
  v1 = v0;
  v2 = sub_1E4AAA030();
  v3 = *(v2 - 1);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v109 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE0424C0 != -1)
  {
    goto LABEL_50;
  }

  while (1)
  {
    v6 = sub_1E4AAA0E0();
    __swift_project_value_buffer(v6, qword_1EE048B88);

    v7 = sub_1E4AAA0C0();
    v8 = sub_1E4AAAA20();

    v9 = os_log_type_enabled(v7, v8);
    v115 = v2;
    v116 = v1;
    v113 = v5;
    v114 = v3;
    if (v9)
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v135 = v11;
      *v10 = 136446466;
      v12 = sub_1E4AAAE90();
      v14 = sub_1E4A85938(v12, v13, &v135);

      *(v10 + 4) = v14;
      v1 = v116;
      *(v10 + 12) = 2082;
      *(v10 + 14) = sub_1E4A85938(0xD00000000000001DLL, 0x80000001E4AB97A0, &v135);
      _os_log_impl(&dword_1E4A23000, v7, v8, "Start (%{public}s.%{public}s)…", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E691FE80](v11, -1, -1);
      MEMORY[0x1E691FE80](v10, -1, -1);
    }

    v15 = v1[29];
    if (!v15)
    {
      v19 = sub_1E4AAA0C0();
      v20 = sub_1E4AAAA20();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_1E4A23000, v19, v20, "No poster environment set, bailing.", v21, 2u);
        MEMORY[0x1E691FE80](v21, -1, -1);
      }

      goto LABEL_10;
    }

    v16 = v1[30];
    ObjectType = swift_getObjectType();
    v18 = *(v16 + 1);
    swift_unknownObjectRetain();
    sub_1E4A5FD94(ObjectType, v18, &v135);
    v23 = v135;
    v22 = v136;
    v24 = v137;
    v25 = v1[8];
    v1[8] = v136;
    sub_1E4A895D4(v25);
    *(v1 + 248) = [*(v23 + 2) disableAdaptiveTime];
    [*(v23 + 2) maximumAdaptiveTimeMultiplier];
    v27 = v26;
    v28 = 0;
    if (v27 != 2.22507386e-308)
    {
      [*(v23 + 2) maximumAdaptiveTimeMultiplier];
    }

    v1[32] = v28;
    *(v1 + 264) = v27 == 2.22507386e-308;
    swift_retain_n();
    swift_bridgeObjectRetain_n();
    v29 = sub_1E4AAA0C0();
    v30 = sub_1E4AAAA20();
    v31 = os_log_type_enabled(v29, v30);
    v112 = v23;
    if (v31)
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v109 = v22;
      v34 = v33;
      v135 = v33;
      *v32 = 136446466;

      v35 = sub_1E4AAA820();
      v37 = v36;

      v38 = sub_1E4A85938(v35, v37, &v135);
      v1 = v116;

      *(v32 + 4) = v38;
      *(v32 + 12) = 2050;

      *(v32 + 14) = v109;

      _os_log_impl(&dword_1E4A23000, v29, v30, "Loaded source contents: '%{public}s' + '%{public}ld'.", v32, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v34);
      MEMORY[0x1E691FE80](v34, -1, -1);
      v39 = v32;
      v23 = v112;
      MEMORY[0x1E691FE80](v39, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    v40 = 0xD00000000000002ALL;
    v128 = 0xD00000000000001ELL;
    v129 = 0x80000001E4AB95B0;
    sub_1E4AAAB90();
    v41 = *(v24 + 16);
    v110 = v24;
    v111 = v15;
    if (v41 && (v42 = sub_1E4A8F330(&v135), (v43 & 1) != 0))
    {
      sub_1E4A479C0(*(v24 + 56) + 32 * v42, &v132);
      sub_1E4A60E2C(&v135);
      if (swift_dynamicCast())
      {
        v44 = sub_1E4A701C4(v128, v129);
        if (v44 != 2)
        {
          v45 = v44;
          v46 = [objc_allocWithZone(MEMORY[0x1E69B7DE8]) init];
          v47 = WKWallpaperLocationHomeScreen;
          if ((v45 & 1) == 0)
          {
            v47 = WKWallpaperLocationCoverSheet;
          }

          v48 = *v47;
          sub_1E4A7760C(v48, &v132);

          if (v133)
          {
            sub_1E4A2732C(&v132, &v135);
            v49 = v138;
            v50 = v139;
            __swift_project_boxed_opaque_existential_1(&v135, v138);
            v51 = sub_1E4A7E6DC(v49, v50);
            *&v132 = 0x646574617267694DLL;
            *(&v132 + 1) = 0xEB00000000203A20;
            MEMORY[0x1E691ECA0](v51);

            v52 = sub_1E4AAA870();

            WKSetApplicationSpecificInformation(v52);

            v53 = v113;
            sub_1E4AAA020();
            sub_1E4AA9FF0();
            (v114)[1](v53, v115);
            v54 = sub_1E4AAA870();

            v55 = v138;
            v56 = v139;
            __swift_project_boxed_opaque_existential_1(&v135, v138);
            (*(v56 + 56))(v55, v56);
            sub_1E4A4D9A0(&v135, &v132);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8EA68, &unk_1E4AB3840);
            v57 = swift_allocObject();
            sub_1E4A4D9A0(&v135, v57 + 32);
            sub_1E4A4D9A0(&v132, &v125);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8E540, &unk_1E4AB3EC0);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8EB40, qword_1E4AB0E10);
            if (!swift_dynamicCast())
            {
              goto LABEL_55;
            }

            sub_1E4A2732C(&v122, &v128);
            v119 = MEMORY[0x1E69E7CC0];
            sub_1E4A4D9A0(v57 + 32, &v125);
            sub_1E4A4D9A0(&v125, v120);
            if (swift_dynamicCast())
            {
              sub_1E4A2732C(v117, &v122);
              v58 = *(&v123 + 1);
              v59 = v124;
              __swift_project_boxed_opaque_existential_1(&v122, *(&v123 + 1));
              (*(v59 + 8))(v58, v59);
              __swift_destroy_boxed_opaque_existential_1Tm(&v125);
              v60 = __swift_destroy_boxed_opaque_existential_1Tm(&v122);
              MEMORY[0x1E691ED00](v60);
              if (*((v119 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v119 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_1E4AAA960();
              }

              sub_1E4AAA970();
              swift_setDeallocating();
              __swift_destroy_boxed_opaque_existential_1Tm((v57 + 32));
              swift_deallocClassInstance();
              v61 = v130;
              v62 = v131;
              __swift_project_boxed_opaque_existential_1(&v128, v130);
              v63 = (*(v62 + 8))(v61, v62);
              v64 = objc_allocWithZone(WKWallpaperRepresentingCollection);
              v65 = sub_1E4AAA870();

              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E568, &qword_1E4AB0E30);
              v66 = sub_1E4AAA940();

              LOWORD(v108) = 0;
              v67 = [v64 initWithWallpaperCollectionIdentifier:v54 displayName:v65 previewWallpaperRepresenting:v63 wallpapersShareBaseAppearance:0 hiddenFromPicker:0 depthEffectDisabled:1 motionEffectsDisabled:v108 disableRotation:v66 wallpaperRepresentingCollection:0 downloadManager:?];

              swift_unknownObjectRelease();
              __swift_destroy_boxed_opaque_existential_1Tm(&v132);
              type metadata accessor for WKWallpaperRepresentingCollection.ImplementationWrapper();
              v68 = swift_allocObject();
              *(v68 + 16) = v67;
              __swift_destroy_boxed_opaque_existential_1Tm(&v128);
              v1 = v116;
              v69 = v116[7];
              v116[7] = v68;
              *&v132 = v69;
              sub_1E4A887C4(&v132);

              swift_unknownObjectRelease();

              __swift_destroy_boxed_opaque_existential_1Tm(&v135);
              goto LABEL_10;
            }

            v118 = 0;
            memset(v117, 0, sizeof(v117));
            sub_1E4A4DC88(v117, &unk_1ECF8E550, &qword_1E4AB3ED0);
            *&v122 = 0;
            *(&v122 + 1) = 0xE000000000000000;
            sub_1E4AAABC0();
            MEMORY[0x1E691ECA0](0xD000000000000043, 0x80000001E4AB9E10);
            MEMORY[0x1E691ECA0](0xD00000000000002ALL, 0x80000001E4AB9E60);
            MEMORY[0x1E691ECA0](0x20646E756F662820, 0xE800000000000000);
            __swift_project_boxed_opaque_existential_1(&v125, *(&v126 + 1));
            swift_getDynamicType();
            v107 = sub_1E4AAAE90();
            MEMORY[0x1E691ECA0](v107);

            MEMORY[0x1E691ECA0](8489, 0xE200000000000000);
            while (1)
            {
LABEL_54:
              sub_1E4AAACB0();
              __break(1u);
LABEL_55:
              v124 = 0;
              v122 = 0u;
              v123 = 0u;
              sub_1E4A4DC88(&v122, &unk_1ECF8E550, &qword_1E4AB3ED0);
              v128 = 0;
              v129 = 0xE000000000000000;
              sub_1E4AAABC0();
              MEMORY[0x1E691ECA0](v40 + 25, 0x80000001E4AB9E10);
              MEMORY[0x1E691ECA0](0xD00000000000002ALL, 0x80000001E4AB9E60);
              MEMORY[0x1E691ECA0](0x20646E756F662820, 0xE800000000000000);
              __swift_project_boxed_opaque_existential_1(&v132, v133);
              swift_getDynamicType();
              v106 = sub_1E4AAAE90();
              MEMORY[0x1E691ECA0](v106);

              MEMORY[0x1E691ECA0](8489, 0xE200000000000000);
            }
          }

          sub_1E4A4DC88(&v132, &qword_1ECF8E5A8, &qword_1E4AB12B0);
          if (qword_1ECF8DD10 != -1)
          {
            swift_once();
          }

          __swift_project_value_buffer(v6, qword_1ECF92330);
          v101 = sub_1E4AAA0C0();
          v102 = sub_1E4AAAA00();
          if (os_log_type_enabled(v101, v102))
          {
            v103 = swift_slowAlloc();
            *v103 = 0;
            _os_log_impl(&dword_1E4A23000, v101, v102, "Migration failed (see previous fault log for failure case).", v103, 2u);
            MEMORY[0x1E691FE80](v103, -1, -1);
          }

          swift_unknownObjectRelease();

          goto LABEL_10;
        }
      }
    }

    else
    {
      sub_1E4A60E2C(&v135);
    }

    v70 = [*(v23 + 2) identifierString];
    v71 = sub_1E4AAA8A0();
    v72 = v23;
    v74 = v73;

    v1[5] = v71;
    v1[6] = v74;

    sub_1E4A87AC0(v72);
    v75 = sub_1E4AAA870();

    WKSetApplicationSpecificInformation(v75);

    v76 = [objc_opt_self() defaultManager];
    type metadata accessor for WKWallpaperRepresentingCollectionsManager.ImplementationWrapper();
    v109 = swift_allocObject();
    *(v109 + 16) = v76;
    v40 = &selRef_currentDevice;
    if (![v76 numberOfWallpaperCollections])
    {
      break;
    }

    v77 = 0;
    v3 = &unk_1E8767000;
    while (1)
    {
      v2 = [v76 wallpaperCollectionAtIndex_];
      type metadata accessor for WKWallpaperRepresentingCollection.ImplementationWrapper();
      v5 = swift_allocObject();
      *(v5 + 2) = v2;
      if (v77 >= [v76 numberOfWallpaperCollections])
      {
        break;
      }

      if (!v1[6])
      {
        __break(1u);
        goto LABEL_52;
      }

      v78 = *(v5 + 2);

      v79 = v78;
      v80 = sub_1E4AAA870();

      v81 = [v79 containsWallpaperRepresentingWithIdentifier_];

      if (v81)
      {

        v1 = v116;
        v100 = v116[7];
        v116[7] = v5;

        v135 = v100;
        sub_1E4A887C4(&v135);

        goto LABEL_43;
      }

      ++v77;

      v82 = [v76 numberOfWallpaperCollections];
      v1 = v116;
      if (v77 == v82)
      {
        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_50:
    swift_once();
  }

LABEL_35:

  v83 = v113;
  sub_1E4AAA020();
  sub_1E4AA9FF0();
  (v114)[1](v83, v115);
  v84 = sub_1E4AAA870();

  v85 = v112;
  v1 = [*(v112 + 2) name];
  if (!v1)
  {
    sub_1E4AAA8A0();
    v1 = sub_1E4AAA870();
  }

  v138 = &type metadata for WKWallpaperBundle;
  v86 = sub_1E4A50754();
  v139 = v86;
  v135 = v85;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8EA68, &unk_1E4AB3840);
  v87 = swift_allocObject();
  v87[4] = v85;
  v88 = v87 + 4;
  v87[7] = &type metadata for WKWallpaperBundle;
  v87[8] = v86;
  sub_1E4A4D9A0(&v135, &v128);
  swift_retain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8E540, &unk_1E4AB3EC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8EB40, qword_1E4AB0E10);
  if (!swift_dynamicCast())
  {
LABEL_52:

    v127 = 0;
    v125 = 0u;
    v126 = 0u;
    sub_1E4A4DC88(&v125, &unk_1ECF8E550, &qword_1E4AB3ED0);
    *&v132 = 0;
    *(&v132 + 1) = 0xE000000000000000;
    sub_1E4AAABC0();
    MEMORY[0x1E691ECA0](0xD000000000000043, 0x80000001E4AB9E10);
    MEMORY[0x1E691ECA0](0xD00000000000002ALL, 0x80000001E4AB9E60);
    MEMORY[0x1E691ECA0](0x20646E756F662820, 0xE800000000000000);
    __swift_project_boxed_opaque_existential_1(&v135, v138);
    swift_getDynamicType();
    v104 = sub_1E4AAAE90();
    MEMORY[0x1E691ECA0](v104);

    MEMORY[0x1E691ECA0](8489, 0xE200000000000000);
    goto LABEL_54;
  }

  sub_1E4A2732C(&v125, &v132);
  *&v117[0] = MEMORY[0x1E69E7CC0];
  sub_1E4A4D9A0(v88, &v128);
  sub_1E4A4D9A0(&v128, &v122);
  if ((swift_dynamicCast() & 1) == 0)
  {

    v121 = 0;
    memset(v120, 0, sizeof(v120));
    sub_1E4A4DC88(v120, &unk_1ECF8E550, &qword_1E4AB3ED0);
    *&v125 = 0;
    *(&v125 + 1) = 0xE000000000000000;
    sub_1E4AAABC0();
    MEMORY[0x1E691ECA0](0xD000000000000043, 0x80000001E4AB9E10);
    MEMORY[0x1E691ECA0](0xD00000000000002ALL, 0x80000001E4AB9E60);
    MEMORY[0x1E691ECA0](0x20646E756F662820, 0xE800000000000000);
    __swift_project_boxed_opaque_existential_1(&v128, v130);
    swift_getDynamicType();
    v105 = sub_1E4AAAE90();
    MEMORY[0x1E691ECA0](v105);

    MEMORY[0x1E691ECA0](8489, 0xE200000000000000);
    goto LABEL_54;
  }

  sub_1E4A2732C(v120, &v125);
  v89 = *(&v126 + 1);
  v90 = v127;
  __swift_project_boxed_opaque_existential_1(&v125, *(&v126 + 1));
  (*(v90 + 8))(v89, v90);
  __swift_destroy_boxed_opaque_existential_1Tm(&v128);
  v91 = __swift_destroy_boxed_opaque_existential_1Tm(&v125);
  MEMORY[0x1E691ED00](v91);
  if (*((*&v117[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v117[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1E4AAA960();
  }

  sub_1E4AAA970();
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1Tm(v88);
  swift_deallocClassInstance();
  v92 = v133;
  v93 = v134;
  __swift_project_boxed_opaque_existential_1(&v132, v133);
  v94 = (*(v93 + 8))(v92, v93);
  v95 = objc_allocWithZone(WKWallpaperRepresentingCollection);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E568, &qword_1E4AB0E30);
  v96 = sub_1E4AAA940();

  LOWORD(v108) = 0;
  v97 = [v95 initWithWallpaperCollectionIdentifier:v84 displayName:v1 previewWallpaperRepresenting:v94 wallpapersShareBaseAppearance:0 hiddenFromPicker:0 depthEffectDisabled:1 motionEffectsDisabled:v108 disableRotation:v96 wallpaperRepresentingCollection:0 downloadManager:?];

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(&v135);
  type metadata accessor for WKWallpaperRepresentingCollection.ImplementationWrapper();
  v98 = swift_allocObject();
  *(v98 + 16) = v97;
  __swift_destroy_boxed_opaque_existential_1Tm(&v132);
  v1 = v116;
  v99 = v116[7];
  v116[7] = v98;
  v135 = v99;
  sub_1E4A887C4(&v135);

LABEL_43:
  swift_unknownObjectRelease();
LABEL_10:
  sub_1E4A8C3B0(v1);
}

uint64_t WKWallpaperPosterEditorController.__allocating_init(editor:)(uint64_t a1)
{
  v2 = swift_allocObject();
  WKWallpaperPosterEditorController.init(editor:)(a1);
  return v2;
}

uint64_t WKWallpaperPosterEditorController.init(editor:)(uint64_t a1)
{
  v3 = sub_1E4AAA030();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + 24) = 0;
  v7 = MEMORY[0x1E69E7CC0];
  *(v1 + 32) = sub_1E4A9070C(MEMORY[0x1E69E7CC0]);
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
  sub_1E4A90810(v18);
  v8 = v18[7];
  *(v1 + 176) = v18[6];
  *(v1 + 192) = v8;
  *(v1 + 208) = v18[8];
  v9 = v18[3];
  *(v1 + 112) = v18[2];
  *(v1 + 128) = v9;
  v10 = v18[5];
  *(v1 + 144) = v18[4];
  *(v1 + 160) = v10;
  v11 = v18[1];
  *(v1 + 80) = v18[0];
  *(v1 + 96) = v11;
  *(v1 + 256) = 0;
  *(v1 + 232) = 0;
  *(v1 + 240) = 0;
  *(v1 + 224) = 0;
  *(v1 + 248) = 0;
  *(v1 + 264) = 1;
  *(v1 + 16) = a1;
  *(v1 + 64) = 0;
  type metadata accessor for WKDynamicRotationManager(0);
  v12 = swift_allocObject();
  *(v12 + 16) = v7;
  v13 = v12 + OBJC_IVAR____TtC12WallpaperKit24WKDynamicRotationManager_rotationState;
  sub_1E4AAA020();
  (*(v4 + 32))(v13, v6, v3);
  v14 = type metadata accessor for WKPosterDynamicRotationState(0);
  *(v13 + v14[5]) = 0;
  *(v13 + v14[6]) = 0x3FF0000000000000;
  *(v13 + v14[7]) = 0;
  *(v13 + v14[8]) = 0;
  *(v12 + OBJC_IVAR____TtC12WallpaperKit24WKDynamicRotationManager_displayLink) = 0;
  v15 = OBJC_IVAR____TtC12WallpaperKit24WKDynamicRotationManager_animationState;
  v16 = type metadata accessor for WKPosterDynamicRotationAnimationState(0);
  (*(*(v16 - 8) + 56))(v12 + v15, 1, 1, v16);
  *(v12 + OBJC_IVAR____TtC12WallpaperKit24WKDynamicRotationManager_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + 24) = v12;

  return v1;
}

void sub_1E4A8C3B0(void *a1)
{
  if (qword_1EE0424C0 != -1)
  {
    swift_once();
  }

  v1 = sub_1E4AAA0E0();
  __swift_project_value_buffer(v1, qword_1EE048B88);

  oslog = sub_1E4AAA0C0();
  v2 = sub_1E4AAAA20();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9 = v4;
    *v3 = 136446466;
    v5 = sub_1E4AAAE90();
    v7 = sub_1E4A85938(v5, v6, &v9);

    *(v3 + 4) = v7;
    *(v3 + 12) = 2082;
    *(v3 + 14) = sub_1E4A85938(0xD00000000000001DLL, 0x80000001E4AB97A0, &v9);
    _os_log_impl(&dword_1E4A23000, oslog, v2, "…Complete (%{public}s.%{public}s)", v3, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E691FE80](v4, -1, -1);
    MEMORY[0x1E691FE80](v3, -1, -1);
  }
}

uint64_t WKWallpaperPosterEditorController.deinit()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 192);
  v6[6] = *(v0 + 176);
  v6[7] = v1;
  v6[8] = *(v0 + 208);
  v2 = *(v0 + 128);
  v6[2] = *(v0 + 112);
  v6[3] = v2;
  v3 = *(v0 + 160);
  v6[4] = *(v0 + 144);
  v6[5] = v3;
  v4 = *(v0 + 96);
  v6[0] = *(v0 + 80);
  v6[1] = v4;
  sub_1E4A4DC88(v6, &unk_1ECF8E990, &qword_1E4AB36D0);

  swift_unknownObjectRelease();
  return v0;
}

uint64_t WKWallpaperPosterEditorController.__deallocating_deinit()
{
  WKWallpaperPosterEditorController.deinit();

  return swift_deallocClassInstance();
}

void WKWallpaperPosterEditorController.editor(_:didInitialize:with:)(void *a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v5 = v4;
  v9 = a4[7];
  v67 = a4[6];
  v68 = v9;
  v69 = a4[8];
  v10 = a4[3];
  v63 = a4[2];
  v64 = v10;
  v11 = a4[5];
  v65 = a4[4];
  v66 = v11;
  v12 = a4[1];
  v61 = *a4;
  v62 = v12;
  if (qword_1EE0424C0 != -1)
  {
    swift_once();
  }

  v13 = sub_1E4AAA0E0();
  __swift_project_value_buffer(v13, qword_1EE048B88);

  v14 = sub_1E4AAA0C0();
  v15 = sub_1E4AAAA20();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *&v60[0] = v17;
    *v16 = 136446466;
    v18 = sub_1E4AAAE90();
    v20 = sub_1E4A85938(v18, v19, v60);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2082;
    *(v16 + 14) = sub_1E4A85938(0xD00000000000001DLL, 0x80000001E4AB9920, v60);
    _os_log_impl(&dword_1E4A23000, v14, v15, "Start (%{public}s.%{public}s)…", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E691FE80](v17, -1, -1);
    MEMORY[0x1E691FE80](v16, -1, -1);
  }

  v48 = v67;
  v49 = v68;
  v50 = v69;
  v44 = v63;
  v45 = v64;
  v46 = v65;
  v47 = v66;
  v42 = v61;
  v43 = v62;
  nullsub_1();
  v21 = *(v5 + 160);
  v22 = *(v5 + 192);
  v57 = *(v5 + 176);
  v58 = v22;
  v23 = *(v5 + 192);
  v59 = *(v5 + 208);
  v24 = *(v5 + 96);
  v25 = *(v5 + 128);
  v53 = *(v5 + 112);
  v54 = v25;
  v26 = *(v5 + 128);
  v27 = *(v5 + 160);
  v55 = *(v5 + 144);
  v56 = v27;
  v28 = *(v5 + 96);
  v51 = *(v5 + 80);
  v52 = v28;
  v60[6] = v57;
  v60[7] = v23;
  v60[8] = *(v5 + 208);
  v60[2] = v53;
  v60[3] = v26;
  v60[4] = v55;
  v60[5] = v21;
  v60[0] = v51;
  v60[1] = v24;
  v29 = v47;
  *(v5 + 144) = v46;
  *(v5 + 160) = v29;
  v30 = v49;
  *(v5 + 176) = v48;
  *(v5 + 192) = v30;
  *(v5 + 208) = v50;
  v31 = v45;
  *(v5 + 112) = v44;
  *(v5 + 128) = v31;
  v32 = v43;
  *(v5 + 80) = v42;
  *(v5 + 96) = v32;
  sub_1E4A49D24(&v61, v41);
  sub_1E4A52D40(&v51, v41, &unk_1ECF8E990, &qword_1E4AB36D0);
  sub_1E4A4DC88(v60, &unk_1ECF8E990, &qword_1E4AB36D0);
  v41[6] = v57;
  v41[7] = v58;
  v41[8] = v59;
  v41[2] = v53;
  v41[3] = v54;
  v41[4] = v55;
  v41[5] = v56;
  v41[0] = v51;
  v41[1] = v52;
  sub_1E4A898E4(v41);
  sub_1E4A4DC88(&v51, &unk_1ECF8E990, &qword_1E4AB36D0);
  v34 = *(v5 + 232);
  v33 = *(v5 + 240);
  *(v5 + 232) = a2;
  *(v5 + 240) = a3;
  swift_unknownObjectRetain();
  sub_1E4A8A50C(v34, v33);
  swift_unknownObjectRelease();
  v35 = *(v5 + 24);
  if (v35)
  {
    *(v35 + OBJC_IVAR____TtC12WallpaperKit24WKDynamicRotationManager_delegate + 8) = &off_1F5E9BF68;
    swift_unknownObjectWeakAssign();
    if (*(v5 + 24))
    {
      ObjectType = swift_getObjectType();
      v37 = *(a3 + 8);
      v38 = *(v37 + 8);

      v39 = v38(ObjectType, v37);
      sub_1E4A6C954(v39);
    }
  }

  if (*(v5 + 248))
  {
    v40 = 3;
  }

  else
  {
    v40 = 1;
  }

  [a1 wk:v40 setAdaptiveTimeMode:?];
  sub_1E4A8CA38(v5);
}

void sub_1E4A8CA38(void *a1)
{
  if (qword_1EE0424C0 != -1)
  {
    swift_once();
  }

  v1 = sub_1E4AAA0E0();
  __swift_project_value_buffer(v1, qword_1EE048B88);

  oslog = sub_1E4AAA0C0();
  v2 = sub_1E4AAAA20();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9 = v4;
    *v3 = 136446466;
    v5 = sub_1E4AAAE90();
    v7 = sub_1E4A85938(v5, v6, &v9);

    *(v3 + 4) = v7;
    *(v3 + 12) = 2082;
    *(v3 + 14) = sub_1E4A85938(0xD00000000000001DLL, 0x80000001E4AB9920, &v9);
    _os_log_impl(&dword_1E4A23000, oslog, v2, "…Complete (%{public}s.%{public}s)", v3, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E691FE80](v4, -1, -1);
    MEMORY[0x1E691FE80](v3, -1, -1);
  }
}

void sub_1E4A8CC14(void *a1)
{
  if (qword_1EE0424C0 != -1)
  {
    swift_once();
  }

  v1 = sub_1E4AAA0E0();
  __swift_project_value_buffer(v1, qword_1EE048B88);

  oslog = sub_1E4AAA0C0();
  v2 = sub_1E4AAAA20();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9 = v4;
    *v3 = 136446466;
    v5 = sub_1E4AAAE90();
    v7 = sub_1E4A85938(v5, v6, &v9);

    *(v3 + 4) = v7;
    *(v3 + 12) = 2082;
    *(v3 + 14) = sub_1E4A85938(0xD00000000000001FLL, 0x80000001E4AB9DF0, &v9);
    _os_log_impl(&dword_1E4A23000, oslog, v2, "…Complete (%{public}s.%{public}s)", v3, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E691FE80](v4, -1, -1);
    MEMORY[0x1E691FE80](v3, -1, -1);
  }
}

void sub_1E4A8CDE0(void *a1)
{
  if (qword_1EE0424C0 != -1)
  {
    swift_once();
  }

  v1 = sub_1E4AAA0E0();
  __swift_project_value_buffer(v1, qword_1EE048B88);

  oslog = sub_1E4AAA0C0();
  v2 = sub_1E4AAAA20();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9 = v4;
    *v3 = 136446466;
    v5 = sub_1E4AAAE90();
    v7 = sub_1E4A85938(v5, v6, &v9);

    *(v3 + 4) = v7;
    *(v3 + 12) = 2082;
    *(v3 + 14) = sub_1E4A85938(0x6F6628736B6F6F6CLL, 0xEB00000000293A72, &v9);
    _os_log_impl(&dword_1E4A23000, oslog, v2, "…Complete (%{public}s.%{public}s)", v3, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E691FE80](v4, -1, -1);
    MEMORY[0x1E691FE80](v3, -1, -1);
  }
}

id sub_1E4A8CFAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = &v9[OBJC_IVAR____TtC12WallpaperKitP33_EFDDAE94C6722FEA4441550D18B5A9BD21WKWallpaperPosterLook_identifier];
  *v10 = a1;
  *(v10 + 1) = a2;
  v11 = &v9[OBJC_IVAR____TtC12WallpaperKitP33_EFDDAE94C6722FEA4441550D18B5A9BD21WKWallpaperPosterLook_displayName];
  *v11 = a3;
  *(v11 + 1) = a4;
  v13.receiver = v9;
  v13.super_class = v4;
  return objc_msgSendSuper2(&v13, sel_init);
}

void sub_1E4A8D030(void *a1)
{
  if (qword_1EE0424C0 != -1)
  {
    swift_once();
  }

  v1 = sub_1E4AAA0E0();
  __swift_project_value_buffer(v1, qword_1EE048B88);

  oslog = sub_1E4AAA0C0();
  v2 = sub_1E4AAAA20();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9 = v4;
    *v3 = 136446466;
    v5 = sub_1E4AAAE90();
    v7 = sub_1E4A85938(v5, v6, &v9);

    *(v3 + 4) = v7;
    *(v3 + 12) = 2082;
    *(v3 + 14) = sub_1E4A85938(0xD00000000000001BLL, 0x80000001E4AB9D40, &v9);
    _os_log_impl(&dword_1E4A23000, oslog, v2, "…Complete (%{public}s.%{public}s)", v3, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E691FE80](v4, -1, -1);
    MEMORY[0x1E691FE80](v3, -1, -1);
  }
}

uint64_t WKWallpaperPosterEditorController.trailingMenuElements(for:)(void *a1)
{
  v2 = v1;
  if (qword_1EE0424C0 != -1)
  {
    swift_once();
  }

  v4 = sub_1E4AAA0E0();
  __swift_project_value_buffer(v4, qword_1EE048B88);

  v5 = sub_1E4AAA0C0();
  v6 = sub_1E4AAAA20();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136446466;
    v9 = sub_1E4AAAE90();
    v11 = sub_1E4A85938(v9, v10, &v17);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2082;
    *(v7 + 14) = sub_1E4A85938(0xD00000000000001ALL, 0x80000001E4AB9940, &v17);
    _os_log_impl(&dword_1E4A23000, v5, v6, "Start (%{public}s.%{public}s)…", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E691FE80](v8, -1, -1);
    MEMORY[0x1E691FE80](v7, -1, -1);
  }

  v12 = v2[28];
  if (v12)
  {
    v13 = *(v12 + OBJC_IVAR____TtC12WallpaperKit31WKWallpaperPosterEditorLookItem_wallpaperPosterLayerViewModel);
    swift_getKeyPath();
    v17 = v13;
    sub_1E4A93000(&qword_1EE042900, type metadata accessor for WKWallpaperPosterLayerViewModel, &unk_1E4AB2458);
    v14 = v12;
    sub_1E4AAA060();

    v15 = *(v13 + 16);
    if (v15 && ([*(v15 + 16) isAppearanceAware] & 1) != 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E9A0, &qword_1E4AB3700);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_1E4AAFB00;
      *(v12 + 32) = [a1 appearanceMenu];
    }

    else
    {

      v12 = 0;
    }
  }

  sub_1E4A8D4D0(v2);
  return v12;
}

void sub_1E4A8D4D0(void *a1)
{
  if (qword_1EE0424C0 != -1)
  {
    swift_once();
  }

  v1 = sub_1E4AAA0E0();
  __swift_project_value_buffer(v1, qword_1EE048B88);

  oslog = sub_1E4AAA0C0();
  v2 = sub_1E4AAAA20();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9 = v4;
    *v3 = 136446466;
    v5 = sub_1E4AAAE90();
    v7 = sub_1E4A85938(v5, v6, &v9);

    *(v3 + 4) = v7;
    *(v3 + 12) = 2082;
    *(v3 + 14) = sub_1E4A85938(0xD00000000000001ALL, 0x80000001E4AB9940, &v9);
    _os_log_impl(&dword_1E4A23000, oslog, v2, "…Complete (%{public}s.%{public}s)", v3, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E691FE80](v4, -1, -1);
    MEMORY[0x1E691FE80](v3, -1, -1);
  }
}

uint64_t WKWallpaperPosterEditorController.leadingMenuElements(for:)(void *a1)
{
  v2 = v1;
  if (qword_1EE0424C0 != -1)
  {
    swift_once();
  }

  v4 = sub_1E4AAA0E0();
  __swift_project_value_buffer(v4, qword_1EE048B88);

  v5 = sub_1E4AAA0C0();
  v6 = sub_1E4AAAA20();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136446466;
    v9 = sub_1E4AAAE90();
    v11 = sub_1E4A85938(v9, v10, &v18);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2082;
    *(v7 + 14) = sub_1E4A85938(0xD000000000000019, 0x80000001E4AB9960, &v18);
    _os_log_impl(&dword_1E4A23000, v5, v6, "Start (%{public}s.%{public}s)…", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E691FE80](v8, -1, -1);
    MEMORY[0x1E691FE80](v7, -1, -1);
  }

  v12 = v2[28];
  if (v12)
  {
    v13 = *(v12 + OBJC_IVAR____TtC12WallpaperKit31WKWallpaperPosterEditorLookItem_wallpaperPosterLayerViewModel);
    swift_getKeyPath();
    v18 = v13;
    sub_1E4A93000(&qword_1EE042900, type metadata accessor for WKWallpaperPosterLayerViewModel, &unk_1E4AB2458);
    v14 = v12;
    sub_1E4AAA060();

    v16 = sub_1E4A87CD0(v15);

    if (v16)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E9A0, &qword_1E4AB3700);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_1E4AAFB00;
      *(v12 + 32) = [a1 depthEffectMenu];
    }

    else
    {

      v12 = 0;
    }
  }

  sub_1E4A8D974(v2);
  return v12;
}

void sub_1E4A8D974(void *a1)
{
  if (qword_1EE0424C0 != -1)
  {
    swift_once();
  }

  v1 = sub_1E4AAA0E0();
  __swift_project_value_buffer(v1, qword_1EE048B88);

  oslog = sub_1E4AAA0C0();
  v2 = sub_1E4AAAA20();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9 = v4;
    *v3 = 136446466;
    v5 = sub_1E4AAAE90();
    v7 = sub_1E4A85938(v5, v6, &v9);

    *(v3 + 4) = v7;
    *(v3 + 12) = 2082;
    *(v3 + 14) = sub_1E4A85938(0xD000000000000019, 0x80000001E4AB9960, &v9);
    _os_log_impl(&dword_1E4A23000, oslog, v2, "…Complete (%{public}s.%{public}s)", v3, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E691FE80](v4, -1, -1);
    MEMORY[0x1E691FE80](v3, -1, -1);
  }
}

void sub_1E4A8DB40(void *a1)
{
  if (qword_1EE0424C0 != -1)
  {
    swift_once();
  }

  v1 = sub_1E4AAA0E0();
  __swift_project_value_buffer(v1, qword_1EE048B88);

  oslog = sub_1E4AAA0C0();
  v2 = sub_1E4AAAA20();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9 = v4;
    *v3 = 136446466;
    v5 = sub_1E4AAAE90();
    v7 = sub_1E4A85938(v5, v6, &v9);

    *(v3 + 4) = v7;
    *(v3 + 12) = 2082;
    *(v3 + 14) = sub_1E4A85938(0xD000000000000023, 0x80000001E4AB9CF0, &v9);
    _os_log_impl(&dword_1E4A23000, oslog, v2, "…Complete (%{public}s.%{public}s)", v3, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E691FE80](v4, -1, -1);
    MEMORY[0x1E691FE80](v3, -1, -1);
  }
}

void sub_1E4A8DD10(void *a1, uint64_t a2)
{
  if (qword_1EE0424C0 != -1)
  {
    swift_once();
  }

  v3 = sub_1E4AAA0E0();
  __swift_project_value_buffer(v3, qword_1EE048B88);

  oslog = sub_1E4AAA0C0();
  v4 = sub_1E4AAAA20();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136446722;
    v7 = sub_1E4AAAE90();
    v9 = sub_1E4A85938(v7, v8, &v11);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2082;
    *(v5 + 14) = sub_1E4A85938(0xD00000000000002FLL, 0x80000001E4AB9CC0, &v11);
    *(v5 + 22) = 2048;
    *(v5 + 24) = a2;
    _os_log_impl(&dword_1E4A23000, oslog, v4, "…Complete (%{public}s.%{public}s) userInterfaceStyle: '%ld'", v5, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E691FE80](v6, -1, -1);
    MEMORY[0x1E691FE80](v5, -1, -1);
  }
}

void WKWallpaperPosterEditorController.editor(_:populateViews:for:)(void *a1, void *a2, void *a3)
{
  v4 = v3;
  if (qword_1EE0424C0 != -1)
  {
    swift_once();
  }

  v8 = sub_1E4AAA0E0();
  __swift_project_value_buffer(v8, qword_1EE048B88);

  swift_unknownObjectRetain();
  v9 = sub_1E4AAA0C0();
  v10 = sub_1E4AAAA20();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v54 = a1;
    v55[0] = swift_slowAlloc();
    v12 = v55[0];
    *v11 = 136446722;
    v13 = sub_1E4AAAE90();
    v53 = a2;
    v15 = sub_1E4A85938(v13, v14, v55);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2082;
    *(v11 + 14) = sub_1E4A85938(0xD00000000000001CLL, 0x80000001E4AB9980, v55);
    *(v11 + 22) = 2082;
    v16 = [a3 identifier];
    v17 = sub_1E4AAA8A0();
    v19 = v18;

    v20 = v17;
    a2 = v53;
    v21 = sub_1E4A85938(v20, v19, v55);

    *(v11 + 24) = v21;
    _os_log_impl(&dword_1E4A23000, v9, v10, "Start (%{public}s.%{public}s) look: '%{public}s'…", v11, 0x20u);
    swift_arrayDestroy();
    v22 = v12;
    a1 = v54;
    MEMORY[0x1E691FE80](v22, -1, -1);
    MEMORY[0x1E691FE80](v11, -1, -1);
  }

  v23 = [a3 identifier];
  v24 = sub_1E4AAA8A0();
  v26 = v25;

  swift_beginAccess();
  v27 = *(v4 + 32);
  if (!*(v27 + 16))
  {

LABEL_13:
    swift_endAccess();
    swift_unknownObjectRetain();
    v32 = sub_1E4AAA0C0();
    v45 = sub_1E4AAAA20();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v32, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v55[0] = v47;
      *v46 = 136446210;
      v48 = [a3 &selRef_set_catalogDownloadResult_];
      v49 = sub_1E4AAA8A0();
      v51 = v50;

      v52 = sub_1E4A85938(v49, v51, v55);

      *(v46 + 4) = v52;
      _os_log_impl(&dword_1E4A23000, v32, v45, "No 'wallpaperPosterEditorLookItem' found for look: '%{public}s'", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v47);
      MEMORY[0x1E691FE80](v47, -1, -1);
      MEMORY[0x1E691FE80](v46, -1, -1);
    }

    goto LABEL_15;
  }

  v28 = sub_1E4A55B0C(v24, v26);
  v30 = v29;

  if ((v30 & 1) == 0)
  {
    goto LABEL_13;
  }

  v31 = *(*(v27 + 56) + 8 * v28);
  swift_endAccess();
  v32 = v31;
  v33 = swift_unknownObjectRetain();
  sub_1E4A5BDB4(v33);
  v34 = OBJC_IVAR____TtC12WallpaperKit31WKWallpaperPosterEditorLookItem_views;
  v35 = *(&v32->isa + OBJC_IVAR____TtC12WallpaperKit31WKWallpaperPosterEditorLookItem_views);
  if (!v35)
  {
    __break(1u);
    goto LABEL_17;
  }

  v36 = [v35 backgroundView];
  [v36 setOverrideUserInterfaceStyle_];

  v37 = *(&v32->isa + v34);
  if (!v37)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v38 = [v37 foregroundView];
  [v38 setOverrideUserInterfaceStyle_];

  v39 = *(&v32->isa + v34);
  if (v39)
  {
    v40 = [v39 floatingView];
    [v40 setOverrideUserInterfaceStyle_];

    if ((*(v4 + 264) & 1) == 0)
    {
      v41 = *(v4 + 256);
      v42 = [a2 backgroundView];
      [v42 bounds];
      v44 = v43;

      [a1 wk:v41 * v44 setMaximumAdaptiveTimeHeight:?];
    }

LABEL_15:

    sub_1E4A8E3E4(v4, a3);
    return;
  }

LABEL_18:
  __break(1u);
}

void sub_1E4A8E3E4(void *a1, void *a2)
{
  if (qword_1EE0424C0 != -1)
  {
    swift_once();
  }

  v3 = sub_1E4AAA0E0();
  __swift_project_value_buffer(v3, qword_1EE048B88);

  swift_unknownObjectRetain();
  oslog = sub_1E4AAA0C0();
  v4 = sub_1E4AAAA20();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = v6;
    *v5 = 136446722;
    v7 = sub_1E4AAAE90();
    v9 = sub_1E4A85938(v7, v8, &v16);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2082;
    *(v5 + 14) = sub_1E4A85938(0xD00000000000001CLL, 0x80000001E4AB9980, &v16);
    *(v5 + 22) = 2082;
    v10 = [a2 identifier];
    v11 = sub_1E4AAA8A0();
    v13 = v12;

    v14 = sub_1E4A85938(v11, v13, &v16);

    *(v5 + 24) = v14;
    _os_log_impl(&dword_1E4A23000, oslog, v4, "…Complete (%{public}s.%{public}s) look: '%{public}s'", v5, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E691FE80](v6, -1, -1);
    MEMORY[0x1E691FE80](v5, -1, -1);
  }
}

void sub_1E4A8E618(void *a1)
{
  if (qword_1EE0424C0 != -1)
  {
    swift_once();
  }

  v1 = sub_1E4AAA0E0();
  __swift_project_value_buffer(v1, qword_1EE048B88);

  oslog = sub_1E4AAA0C0();
  v2 = sub_1E4AAAA20();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9 = v4;
    *v3 = 136446466;
    v5 = sub_1E4AAAE90();
    v7 = sub_1E4A85938(v5, v6, &v9);

    *(v3 + 4) = v7;
    *(v3 + 12) = 2082;
    *(v3 + 14) = sub_1E4A85938(0xD000000000000020, 0x80000001E4AB9C90, &v9);
    _os_log_impl(&dword_1E4A23000, oslog, v2, "…Complete (%{public}s.%{public}s)", v3, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E691FE80](v4, -1, -1);
    MEMORY[0x1E691FE80](v3, -1, -1);
  }
}

void sub_1E4A8E7E4(void *a1)
{
  if (qword_1EE0424C0 != -1)
  {
    swift_once();
  }

  v1 = sub_1E4AAA0E0();
  __swift_project_value_buffer(v1, qword_1EE048B88);

  oslog = sub_1E4AAA0C0();
  v2 = sub_1E4AAAA20();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9 = v4;
    *v3 = 136446466;
    v5 = sub_1E4AAAE90();
    v7 = sub_1E4A85938(v5, v6, &v9);

    *(v3 + 4) = v7;
    *(v3 + 12) = 2082;
    *(v3 + 14) = sub_1E4A85938(0xD000000000000019, 0x80000001E4AB9C70, &v9);
    _os_log_impl(&dword_1E4A23000, oslog, v2, "…Complete (%{public}s.%{public}s)", v3, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E691FE80](v4, -1, -1);
    MEMORY[0x1E691FE80](v3, -1, -1);
  }
}

uint64_t WKWallpaperPosterEditorController.editorFinalize(_:with:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E4A5ECA0;

  return sub_1E4A91FC4();
}

void sub_1E4A8EA4C(void *a1)
{
  if (qword_1EE0424C0 != -1)
  {
    swift_once();
  }

  v1 = sub_1E4AAA0E0();
  __swift_project_value_buffer(v1, qword_1EE048B88);

  oslog = sub_1E4AAA0C0();
  v2 = sub_1E4AAAA20();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9 = v4;
    *v3 = 136446466;
    v5 = sub_1E4AAAE90();
    v7 = sub_1E4A85938(v5, v6, &v9);

    *(v3 + 4) = v7;
    *(v3 + 12) = 2082;
    *(v3 + 14) = sub_1E4A85938(0xD000000000000017, 0x80000001E4AB9C50, &v9);
    _os_log_impl(&dword_1E4A23000, oslog, v2, "…Complete (%{public}s.%{public}s)", v3, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E691FE80](v4, -1, -1);
    MEMORY[0x1E691FE80](v3, -1, -1);
  }
}

void sub_1E4A8EC18(void *a1)
{
  if (qword_1EE0424C0 != -1)
  {
    swift_once();
  }

  v1 = sub_1E4AAA0E0();
  __swift_project_value_buffer(v1, qword_1EE048B88);

  oslog = sub_1E4AAA0C0();
  v2 = sub_1E4AAAA20();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9 = v4;
    *v3 = 136446466;
    v5 = sub_1E4AAAE90();
    v7 = sub_1E4A85938(v5, v6, &v9);

    *(v3 + 4) = v7;
    *(v3 + 12) = 2082;
    *(v3 + 14) = sub_1E4A85938(0xD000000000000017, 0x80000001E4AB9BF0, &v9);
    _os_log_impl(&dword_1E4A23000, oslog, v2, "…Complete (%{public}s.%{public}s)", v3, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E691FE80](v4, -1, -1);
    MEMORY[0x1E691FE80](v3, -1, -1);
  }
}

uint64_t sub_1E4A8EE24()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E4A5ED9C;

  return sub_1E4A91FC4();
}

id sub_1E4A8F0B0(uint64_t a1, uint64_t a2, void *a3)
{

  v3 = sub_1E4AAA870();

  return v3;
}

double sub_1E4A8F118(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_1E4AAA8A0();
  v7 = (a1 + *a4);
  *v7 = v6;
  v7[1] = v8;

  return result;
}

uint64_t sub_1E4A8F1F4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unint64_t sub_1E4A8F274(double *a1)
{
  sub_1E4AAAE00();
  sub_1E4A763B8();
  v2 = sub_1E4AAAE40();

  return sub_1E4A8F470(a1, v2);
}

unint64_t sub_1E4A8F330(uint64_t a1)
{
  v2 = sub_1E4AAAB70();

  return sub_1E4A8F668(a1, v2);
}

unint64_t sub_1E4A8F374(unsigned __int8 *a1)
{
  sub_1E4AAAE00();
  sub_1E4A72838(v4);
  v2 = sub_1E4AAAE40();

  return sub_1E4A8F730(a1, v2);
}

unint64_t sub_1E4A8F3E0(uint64_t a1)
{
  sub_1E4AAA8A0();
  sub_1E4AAAE00();
  sub_1E4AAA8C0();
  v2 = sub_1E4AAAE40();

  return sub_1E4A8FC6C(a1, v2);
}

unint64_t sub_1E4A8F470(double *a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    v6 = *a1;
    v7 = a1[1];
    v8 = a1[2];
    v9 = a1[3];
    v10 = a1[4];
    v19 = a1[6];
    v20 = a1[5];
    v17 = a1[8];
    v18 = a1[7];
    do
    {
      v11 = *(v2 + 48) + 72 * v4;
      if (*v11 == v6)
      {
        v12 = *(v11 + 40);
        v13 = *(v11 + 48);
        v14 = *(v11 + 56);
        v15 = *(v11 + 64);
        v22.origin.x = v7;
        v22.origin.y = v8;
        v22.size.width = v9;
        v22.size.height = v10;
        if (CGRectEqualToRect(*(v11 + 8), v22))
        {
          v21.origin.x = v12;
          v21.origin.y = v13;
          v21.size.width = v14;
          v21.size.height = v15;
          v23.origin.y = v19;
          v23.origin.x = v20;
          v23.size.height = v17;
          v23.size.width = v18;
          if (CGRectEqualToRect(v21, v23))
          {
            break;
          }
        }
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1E4A8F59C(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a2 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    sub_1E4A47A2C(0, a3, a4);
    do
    {
      v8 = *(*(v4 + 48) + 8 * v6);
      v9 = sub_1E4AAAAD0();

      if (v9)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_1E4A8F668(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1E4A4DC2C(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1E691EF50](v9, a1);
      sub_1E4A60E2C(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1E4A8F730(unsigned __int8 *a1, uint64_t a2)
{
  v50 = sub_1E4AAA1C0();
  v5 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v37 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E678, qword_1E4AB1DF0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v40 = &v35 - v8;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8EA30, &qword_1E4AB1F78);
  MEMORY[0x1EEE9AC00](v43);
  v10 = &v35 - v9;
  v45 = type metadata accessor for WKAnimationPackageLayerState(0);
  MEMORY[0x1EEE9AC00](v45);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = v2;
  v14 = -1 << *(v2 + 32);
  v15 = a2 & ~v14;
  if ((*(v2 + 64 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v16 = v2 + 64;
    v46 = ~v14;
    v48 = *a1;
    v41 = v2 + 64;
    v42 = (v5 + 48);
    v36 = (v5 + 32);
    v39 = (v5 + 8);
    v47 = *(v11 + 72);
    v44 = a1;
    v17 = v40;
    do
    {
      sub_1E4A68864(*(v49 + 48) + v47 * v15, v13);
      if (*v13 == v48)
      {
        v18 = *(v45 + 20);
        v19 = *(v43 + 48);
        sub_1E4A52D40(&v13[v18], v10, &qword_1ECF8E678, qword_1E4AB1DF0);
        sub_1E4A52D40(&v44[v18], &v10[v19], &qword_1ECF8E678, qword_1E4AB1DF0);
        v20 = *v42;
        if ((*v42)(v10, 1, v50) == 1)
        {
          if (v20(&v10[v19], 1, v50) != 1)
          {
            sub_1E4A688C8(v13);
            goto LABEL_12;
          }

          sub_1E4A4DC88(v10, &qword_1ECF8E678, qword_1E4AB1DF0);
        }

        else
        {
          v21 = v10;
          sub_1E4A52D40(v10, v17, &qword_1ECF8E678, qword_1E4AB1DF0);
          if (v20(&v10[v19], 1, v50) == 1)
          {
            sub_1E4A688C8(v13);
            (*v39)(v17, v50);
            v16 = v41;
LABEL_12:
            sub_1E4A4DC88(v10, &unk_1ECF8EA30, &qword_1E4AB1F78);
            goto LABEL_4;
          }

          v22 = v37;
          v23 = v50;
          (*v36)(v37, v21 + v19, v50);
          sub_1E4A93000(&qword_1EE043A20, MEMORY[0x1E697DBD0], MEMORY[0x1E697DBE8]);
          v38 = sub_1E4AAA860();
          v24 = *v39;
          v25 = v22;
          v26 = v40;
          (*v39)(v25, v23);
          v17 = v26;
          v24(v26, v23);
          sub_1E4A4DC88(v21, &qword_1ECF8E678, qword_1E4AB1DF0);
          v10 = v21;
          if ((v38 & 1) == 0)
          {
            sub_1E4A688C8(v13);
            v16 = v41;
            goto LABEL_4;
          }
        }

        v27 = v45;
        v28 = &v13[*(v45 + 24)];
        v29 = *v28;
        v30 = v28[8];
        sub_1E4A688C8(v13);
        v31 = &v44[*(v27 + 24)];
        v32 = v31[8];
        if (v30 == 255)
        {
          v16 = v41;
          if (v32 == 255)
          {
            return v15;
          }
        }

        else
        {
          v16 = v41;
          if (v32 != 255)
          {
            v33 = *v31;
            if (v30)
            {
              if ((v32 & 1) != 0 && v29 == v33)
              {
                return v15;
              }
            }

            else if ((v32 & 1) == 0 && ((v33 ^ v29) & 1) == 0)
            {
              return v15;
            }
          }
        }
      }

      else
      {
        sub_1E4A688C8(v13);
      }

LABEL_4:
      v15 = (v15 + 1) & v46;
    }

    while (((*(v16 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) != 0);
  }

  return v15;
}

unint64_t sub_1E4A8FC6C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_1E4AAA8A0();
      v8 = v7;
      if (v6 == sub_1E4AAA8A0() && v8 == v9)
      {
        break;
      }

      v11 = sub_1E4AAADA0();

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

void *sub_1E4A8FD70(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 16 * a2);
    v6 = *(*(a5 + 56) + 8 * a2);
    *result = v6;

    v7 = v6;
    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

unint64_t sub_1E4A8FE00(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8EA90, &qword_1E4AB38C8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E698, &qword_1E4AB17E0);
    v7 = sub_1E4AAAD00();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1E4A52D40(v9, v5, &qword_1ECF8EA90, &qword_1E4AB38C8);
      result = sub_1E4A8F374(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for WKAnimationPackageLayerState(0);
      result = sub_1E4A68988(v5, v14 + *(*(v15 - 8) + 72) * v13);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1E4A8FFD0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8EA40, &unk_1E4AB3820);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8E680, &unk_1E4AB17D0);
    v7 = sub_1E4AAAD00();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1E4A52D40(v9, v5, &qword_1ECF8EA40, &unk_1E4AB3820);
      result = sub_1E4A8F374(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for WKAnimationPackageLayerState(0);
      result = sub_1E4A68988(v5, v14 + *(*(v15 - 8) + 72) * v13);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1E4A901A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8EA20, &unk_1E4AB17B0);
    v3 = sub_1E4AAAD00();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = sub_1E4A8F224(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_1E4A90298(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E660, &unk_1E4AB3810);
    v3 = sub_1E4AAAD00();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      swift_unknownObjectRetain();
      result = sub_1E4A55B0C(v5, v6);
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

unint64_t sub_1E4A9039C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E6E8, &unk_1E4AB1838);
    v3 = sub_1E4AAAD00();

    for (i = (a1 + 120); ; i += 12)
    {
      v5 = *(i - 9);
      v6 = *(i - 5);
      v21 = *(i - 7);
      v22 = v6;
      v23 = *(i - 3);
      v19 = *(i - 11);
      v20 = v5;
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;
      result = sub_1E4A8F274(&v19);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = v3[6] + 72 * result;
      v13 = v22;
      *(v12 + 32) = v21;
      *(v12 + 48) = v13;
      *(v12 + 64) = v23;
      v14 = v20;
      *v12 = v19;
      *(v12 + 16) = v14;
      v15 = (v3[7] + 24 * result);
      *v15 = v7;
      v15[1] = v8;
      v15[2] = v9;
      v16 = v3[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v3[2] = v18;
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

unint64_t sub_1E4A904E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8E6C0, &qword_1E4AB1810);
    v3 = sub_1E4AAAD00();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = sub_1E4A8F3E0(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_1E4A905E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8EA70, &qword_1E4AB1818);
    v3 = sub_1E4AAAD00();
    v4 = a1 + 32;

    while (1)
    {
      sub_1E4A52D40(v4, &v11, &qword_1ECF8EA78, &unk_1E4AB3850);
      v5 = v11;
      result = sub_1E4A8F3E0(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1E4A2732C(&v12, v3[7] + 40 * result);
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
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

unint64_t sub_1E4A9070C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8E6D0, &qword_1E4AB1820);
    v3 = sub_1E4AAAD00();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1E4A55B0C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

double sub_1E4A90810(_OWORD *a1)
{
  result = 0.0;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

unint64_t sub_1E4A9082C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8EA50, &qword_1E4AB3830);
    v3 = sub_1E4AAAD00();
    v4 = a1 + 32;

    while (1)
    {
      sub_1E4A52D40(v4, v13, &qword_1ECF8EA58, &qword_1E4AB3838);
      result = sub_1E4A8F330(v13);
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
      result = sub_1E4A4DCE8(&v15, (v3[7] + 32 * result));
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1E4A90968()
{
  if (qword_1EE0424A0 != -1)
  {
    swift_once();
  }

  v0 = sub_1E4AAA0E0();
  __swift_project_value_buffer(v0, qword_1EE048B40);
  v1 = sub_1E4AAA0C0();
  v2 = sub_1E4AAAA20();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1E4A23000, v1, v2, "Editor will start rotation.", v3, 2u);
    MEMORY[0x1E691FE80](v3, -1, -1);
  }

  return 1;
}

void sub_1E4A90A44()
{
  if (qword_1EE0424A0 != -1)
  {
    swift_once();
  }

  v0 = sub_1E4AAA0E0();
  __swift_project_value_buffer(v0, qword_1EE048B40);
  oslog = sub_1E4AAA0C0();
  v1 = sub_1E4AAAA20();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_1E4A23000, oslog, v1, "Editor did complete rotation.", v2, 2u);
    MEMORY[0x1E691FE80](v2, -1, -1);
  }
}

void sub_1E4A90B2C(uint64_t a1, uint64_t a2, __int128 *a3, void *a4)
{
  v5 = v4;
  v9 = a3[7];
  v65 = a3[6];
  v66 = v9;
  v67 = a3[8];
  v10 = a3[3];
  v61 = a3[2];
  v62 = v10;
  v11 = a3[5];
  v63 = a3[4];
  v64 = v11;
  v12 = a3[1];
  v59 = *a3;
  v60 = v12;
  if (qword_1EE0424C0 != -1)
  {
    swift_once();
  }

  v13 = sub_1E4AAA0E0();
  __swift_project_value_buffer(v13, qword_1EE048B88);

  v14 = sub_1E4AAA0C0();
  v15 = sub_1E4AAAA20();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *&v58[0] = v17;
    *v16 = 136446466;
    v18 = sub_1E4AAAE90();
    v20 = sub_1E4A85938(v18, v19, v58);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2082;
    *(v16 + 14) = sub_1E4A85938(0xD00000000000001FLL, 0x80000001E4AB9DF0, v58);
    _os_log_impl(&dword_1E4A23000, v14, v15, "Start (%{public}s.%{public}s)…", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E691FE80](v17, -1, -1);
    MEMORY[0x1E691FE80](v16, -1, -1);
  }

  v46 = v65;
  v47 = v66;
  v48 = v67;
  v42 = v61;
  v43 = v62;
  v44 = v63;
  v45 = v64;
  v40 = v59;
  v41 = v60;
  nullsub_1();
  v21 = *(v5 + 160);
  v22 = *(v5 + 192);
  v55 = *(v5 + 176);
  v56 = v22;
  v23 = *(v5 + 192);
  v57 = *(v5 + 208);
  v24 = *(v5 + 96);
  v25 = *(v5 + 128);
  v51 = *(v5 + 112);
  v52 = v25;
  v26 = *(v5 + 128);
  v27 = *(v5 + 160);
  v53 = *(v5 + 144);
  v54 = v27;
  v28 = *(v5 + 96);
  v49 = *(v5 + 80);
  v50 = v28;
  v58[6] = v55;
  v58[7] = v23;
  v58[8] = *(v5 + 208);
  v58[2] = v51;
  v58[3] = v26;
  v58[4] = v53;
  v58[5] = v21;
  v58[0] = v49;
  v58[1] = v24;
  v29 = v45;
  *(v5 + 144) = v44;
  *(v5 + 160) = v29;
  v30 = v47;
  *(v5 + 176) = v46;
  *(v5 + 192) = v30;
  *(v5 + 208) = v48;
  v31 = v43;
  *(v5 + 112) = v42;
  *(v5 + 128) = v31;
  v32 = v41;
  *(v5 + 80) = v40;
  *(v5 + 96) = v32;
  sub_1E4A49D24(&v59, v39);
  sub_1E4A52D40(&v49, v39, &unk_1ECF8E990, &qword_1E4AB36D0);
  sub_1E4A4DC88(v58, &unk_1ECF8E990, &qword_1E4AB36D0);
  v39[6] = v55;
  v39[7] = v56;
  v39[8] = v57;
  v39[2] = v51;
  v39[3] = v52;
  v39[4] = v53;
  v39[5] = v54;
  v39[0] = v49;
  v39[1] = v50;
  sub_1E4A898E4(v39);
  sub_1E4A4DC88(&v49, &unk_1ECF8E990, &qword_1E4AB36D0);
  v34 = *(v5 + 232);
  v33 = *(v5 + 240);
  *(v5 + 232) = a1;
  *(v5 + 240) = a2;
  swift_unknownObjectRetain();
  sub_1E4A8A50C(v34, v33);
  swift_unknownObjectRelease();
  if (*(v5 + 24))
  {
    ObjectType = swift_getObjectType();
    v36 = *(a2 + 8);
    v37 = *(v36 + 8);

    v38 = v37(ObjectType, v36);
    sub_1E4A6D014(v38, a4);
  }

  sub_1E4A8CC14(v5);
}

uint64_t _s12WallpaperKit33WKWallpaperPosterEditorControllerC5looks3forSaySo0cD11EditingLook_pGSo0cdE0_p_tF_0()
{
  v1 = v0;
  if (qword_1EE0424C0 != -1)
  {
LABEL_18:
    swift_once();
  }

  v2 = sub_1E4AAA0E0();
  __swift_project_value_buffer(v2, qword_1EE048B88);

  v3 = sub_1E4AAA0C0();
  v4 = sub_1E4AAAA20();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *&v48 = v6;
    *v5 = 136446466;
    v7 = sub_1E4AAAE90();
    v9 = sub_1E4A85938(v7, v8, &v48);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2082;
    *(v5 + 14) = sub_1E4A85938(0x6F6628736B6F6F6CLL, 0xEB00000000293A72, &v48);
    _os_log_impl(&dword_1E4A23000, v3, v4, "Start (%{public}s.%{public}s)…", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E691FE80](v6, -1, -1);
    MEMORY[0x1E691FE80](v5, -1, -1);
  }

  v10 = *(v1 + 7);
  if (!v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E9A0, &qword_1E4AB3700);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1E4AAFB00;
    v31 = [objc_opt_self() mainBundle];
    v32 = sub_1E4AAA870();
    v33 = [v31 localizedStringForKey:v32 value:0 table:0];

    v34 = sub_1E4AAA8A0();
    v36 = v35;

    v37 = type metadata accessor for WKWallpaperPosterLook();
    v38 = objc_allocWithZone(v37);
    v39 = &v38[OBJC_IVAR____TtC12WallpaperKitP33_EFDDAE94C6722FEA4441550D18B5A9BD21WKWallpaperPosterLook_identifier];
    *v39 = 0xD000000000000018;
    *(v39 + 1) = 0x80000001E4AB9D20;
    v40 = &v38[OBJC_IVAR____TtC12WallpaperKitP33_EFDDAE94C6722FEA4441550D18B5A9BD21WKWallpaperPosterLook_displayName];
    *v40 = v34;
    v40[1] = v36;
    v52.receiver = v38;
    v52.super_class = v37;
    *(v30 + 32) = objc_msgSendSuper2(&v52, sel_init);
    goto LABEL_16;
  }

  v11 = *(v10 + 16);

  v12 = [v11 numberOfWallpapers];
  if (([v11 numberOfWallpapers] & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v13 = [v11 numberOfWallpapers];
    if ((v12 & 0x8000000000000000) == 0 && v13 >= v12)
    {
      if (v12)
      {
        v42 = v1;
        v51 = MEMORY[0x1E69E7CC0];
        sub_1E4AAAC30();
        v14 = 0;
        while (1)
        {
          v44 = [v11 wallpaperBundleAtIndex_];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E568, &qword_1E4AB0E30);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8E570, &qword_1E4AB0E38);
          if (!swift_dynamicCast())
          {
            goto LABEL_21;
          }

          sub_1E4A2732C(&v48, v45);
          v15 = v46;
          v16 = v47;
          __swift_project_boxed_opaque_existential_1(v45, v46);
          (*(v16 + 8))(&v48, v15, v16);
          __swift_destroy_boxed_opaque_existential_1Tm(v45);
          v17 = *(&v49 + 1);
          v18 = v50;
          __swift_project_boxed_opaque_existential_1(&v48, *(&v49 + 1));
          v19 = (*(v18 + 48))(v17, v18);
          v21 = v20;
          v22 = *(&v49 + 1);
          v23 = v50;
          __swift_project_boxed_opaque_existential_1(&v48, *(&v49 + 1));
          v24 = (*(v23 + 56))(v22, v23);
          v26 = v25;
          v1 = type metadata accessor for WKWallpaperPosterLook();
          v27 = objc_allocWithZone(v1);
          v28 = &v27[OBJC_IVAR____TtC12WallpaperKitP33_EFDDAE94C6722FEA4441550D18B5A9BD21WKWallpaperPosterLook_identifier];
          *v28 = v19;
          v28[1] = v21;
          v29 = &v27[OBJC_IVAR____TtC12WallpaperKitP33_EFDDAE94C6722FEA4441550D18B5A9BD21WKWallpaperPosterLook_displayName];
          *v29 = v24;
          v29[1] = v26;
          v43.receiver = v27;
          v43.super_class = v1;
          objc_msgSendSuper2(&v43, sel_init);
          __swift_destroy_boxed_opaque_existential_1Tm(&v48);
          sub_1E4AAAC10();
          sub_1E4AAAC40();
          sub_1E4AAAC50();
          sub_1E4AAAC20();
          if (v14 >= [v11 numberOfWallpapers])
          {
            __break(1u);
            goto LABEL_18;
          }

          if (v12 == ++v14)
          {

            v30 = v51;
            v1 = v42;
            goto LABEL_16;
          }
        }
      }

      v30 = MEMORY[0x1E69E7CC0];
LABEL_16:
      sub_1E4A8CDE0(v1);
      return v30;
    }
  }

  __break(1u);
LABEL_21:
  v50 = 0;
  v48 = 0u;
  v49 = 0u;
  sub_1E4A4DC88(&v48, &unk_1ECF8EB30, &unk_1E4AB0E40);
  result = sub_1E4AAACB0();
  __break(1u);
  return result;
}

void _s12WallpaperKit33WKWallpaperPosterEditorControllerC21initialLookIdentifier3forSSSo0cdE0_p_tF_0()
{
  v1 = v0;
  if (qword_1EE0424C0 != -1)
  {
    swift_once();
  }

  v2 = sub_1E4AAA0E0();
  __swift_project_value_buffer(v2, qword_1EE048B88);

  v3 = sub_1E4AAA0C0();
  v4 = sub_1E4AAAA20();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v34[0] = v6;
    *v5 = 136446466;
    v7 = sub_1E4AAAE90();
    v9 = sub_1E4A85938(v7, v8, v34);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2082;
    *(v5 + 14) = sub_1E4A85938(0xD00000000000001BLL, 0x80000001E4AB9D40, v34);
    _os_log_impl(&dword_1E4A23000, v3, v4, "Start (%{public}s.%{public}s)…", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E691FE80](v6, -1, -1);
    MEMORY[0x1E691FE80](v5, -1, -1);
  }

  v10 = v1[6];
  if (v10)
  {
    v11 = v1[5];
    swift_beginAccess();
    v12 = v1[4];
    v13 = *(v12 + 16);

    if (v13 && (v14 = sub_1E4A55B0C(v11, v10), (v15 & 1) != 0))
    {
      v16 = *(*(v12 + 56) + 8 * v14);
      v17 = v16;
    }

    else
    {
      v16 = 0;
    }

    swift_endAccess();
    v18 = v1[28];
    v1[28] = v16;
    v19 = v16;
    sub_1E4A8A28C(v18, v20);

    goto LABEL_15;
  }

  swift_beginAccess();
  if (*(v1[4] + 16) != 1)
  {
LABEL_15:
    sub_1E4A8D030(v1);
    return;
  }

  sub_1E4A87888(v21);
  v23 = v22;
  v25 = v24;

  if (v23)
  {

    v26 = v1[28];
    v1[28] = v25;
    v27 = v25;
    sub_1E4A8A28C(v26, v28);

    sub_1E4A87888(v29);
    v31 = v30;
    v33 = v32;

    if (v31)
    {

      goto LABEL_15;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t _s12WallpaperKit33WKWallpaperPosterEditorControllerC29activeAppearanceMenuSelection3forSo20UIUserInterfaceStyleVSo0cdE0_p_tF_0()
{
  v1 = v0;
  if (qword_1EE0424C0 != -1)
  {
    swift_once();
  }

  v2 = sub_1E4AAA0E0();
  __swift_project_value_buffer(v2, qword_1EE048B88);

  v3 = sub_1E4AAA0C0();
  v4 = sub_1E4AAAA20();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136446466;
    v7 = sub_1E4AAAE90();
    v9 = sub_1E4A85938(v7, v8, &v12);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2082;
    *(v5 + 14) = sub_1E4A85938(0xD000000000000023, 0x80000001E4AB9CF0, &v12);
    _os_log_impl(&dword_1E4A23000, v3, v4, "Start (%{public}s.%{public}s)…", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E691FE80](v6, -1, -1);
    MEMORY[0x1E691FE80](v5, -1, -1);
  }

  v10 = v1[8];
  sub_1E4A8DB40(v1);
  return v10;
}

void sub_1E4A91980(uint64_t a1)
{
  v2 = v1;
  if (qword_1EE0424C0 != -1)
  {
    swift_once();
  }

  v4 = sub_1E4AAA0E0();
  __swift_project_value_buffer(v4, qword_1EE048B88);

  v5 = sub_1E4AAA0C0();
  v6 = sub_1E4AAAA20();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136446722;
    v9 = sub_1E4AAAE90();
    v11 = sub_1E4A85938(v9, v10, &v13);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2082;
    *(v7 + 14) = sub_1E4A85938(0xD00000000000002FLL, 0x80000001E4AB9CC0, &v13);
    *(v7 + 22) = 2048;
    *(v7 + 24) = a1;
    _os_log_impl(&dword_1E4A23000, v5, v6, "Start (%{public}s.%{public}s) userInterfaceStyle: '%ld'…", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E691FE80](v8, -1, -1);
    MEMORY[0x1E691FE80](v7, -1, -1);
  }

  v12 = v2[8];
  v2[8] = a1;
  sub_1E4A895D4(v12);

  sub_1E4A8DD10(v2, a1);
}

void sub_1E4A91B78(void *a1)
{
  v2 = v1;
  if (qword_1EE0424C0 != -1)
  {
    swift_once();
  }

  v4 = sub_1E4AAA0E0();
  __swift_project_value_buffer(v4, qword_1EE048B88);

  v5 = sub_1E4AAA0C0();
  v6 = sub_1E4AAAA20();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v25[0] = v8;
    *v7 = 136446466;
    v9 = sub_1E4AAAE90();
    v11 = sub_1E4A85938(v9, v10, v25);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2082;
    *(v7 + 14) = sub_1E4A85938(0xD000000000000020, 0x80000001E4AB9C90, v25);
    _os_log_impl(&dword_1E4A23000, v5, v6, "Start (%{public}s.%{public}s)…", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E691FE80](v8, -1, -1);
    MEMORY[0x1E691FE80](v7, -1, -1);
  }

  v12 = [a1 identifier];
  v13 = sub_1E4AAA8A0();
  v15 = v14;

  swift_beginAccess();
  v16 = v2[4];
  if (!*(v16 + 16))
  {

    goto LABEL_9;
  }

  v17 = sub_1E4A55B0C(v13, v15);
  v19 = v18;

  if ((v19 & 1) == 0)
  {
LABEL_9:
    v20 = 0;
    goto LABEL_10;
  }

  v20 = *(*(v16 + 56) + 8 * v17);
  v21 = v20;
LABEL_10:
  swift_endAccess();
  v22 = v2[28];
  v2[28] = v20;
  v23 = v20;
  sub_1E4A8A28C(v22, v24);

  sub_1E4A8E618(v2);
}

uint64_t _s12WallpaperKit33WKWallpaperPosterEditorControllerC19timeScrollsWithLook3forSbSo0cdE0_p_tF_0()
{
  v1 = v0;
  if (qword_1EE0424C0 != -1)
  {
    swift_once();
  }

  v2 = sub_1E4AAA0E0();
  __swift_project_value_buffer(v2, qword_1EE048B88);

  v3 = sub_1E4AAA0C0();
  v4 = sub_1E4AAAA20();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136446466;
    v7 = sub_1E4AAAE90();
    v9 = sub_1E4A85938(v7, v8, &v11);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2082;
    *(v5 + 14) = sub_1E4A85938(0xD000000000000019, 0x80000001E4AB9C70, &v11);
    _os_log_impl(&dword_1E4A23000, v3, v4, "Start (%{public}s.%{public}s)…", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E691FE80](v6, -1, -1);
    MEMORY[0x1E691FE80](v5, -1, -1);
  }

  sub_1E4A8E7E4(v1);
  return 0;
}

uint64_t sub_1E4A91FC4()
{
  v1[52] = v0;
  v2 = sub_1E4AA9FE0();
  v1[53] = v2;
  v1[54] = *(v2 - 8);
  v1[55] = swift_task_alloc();
  v1[56] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E4A92090, 0, 0);
}

void sub_1E4A92090()
{
  v73 = v0;
  if (qword_1EE0424C0 != -1)
  {
    swift_once();
  }

  v1 = sub_1E4AAA0E0();
  __swift_project_value_buffer(v1, qword_1EE048B88);

  v2 = sub_1E4AAA0C0();
  v3 = sub_1E4AAAA20();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v72[0] = v5;
    *v4 = 136446466;
    v6 = sub_1E4AAAE90();
    v8 = sub_1E4A85938(v6, v7, v72);

    *(v4 + 4) = v8;
    *(v4 + 12) = 2082;
    *(v4 + 14) = sub_1E4A85938(0xD000000000000017, 0x80000001E4AB9C50, v72);
    _os_log_impl(&dword_1E4A23000, v2, v3, "Start (%{public}s.%{public}s)…", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E691FE80](v5, -1, -1);
    MEMORY[0x1E691FE80](v4, -1, -1);
  }

  v9 = *(*(v0 + 416) + 224);
  if (!v9)
  {
    v18 = sub_1E4AAA0C0();
    v19 = sub_1E4AAAA00();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v72[0] = v21;
      *v20 = 136446210;
      *(v20 + 4) = sub_1E4A85938(0xD00000000000001FLL, 0x80000001E4AB9C10, v72);
      _os_log_impl(&dword_1E4A23000, v18, v19, "Could not find '%{public}s' to finalize editor session", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      MEMORY[0x1E691FE80](v21, -1, -1);
      MEMORY[0x1E691FE80](v20, -1, -1);
    }

    v22 = sub_1E4AAA0C0();
    v23 = sub_1E4AAAA10();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v72[0] = v25;
      *v24 = 136446210;
      *(v24 + 4) = sub_1E4A85938(0xD00000000000001FLL, 0x80000001E4AB9C10, v72);
      _os_log_impl(&dword_1E4A23000, v22, v23, "Could not find '%{public}s' to finalize editor session", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      MEMORY[0x1E691FE80](v25, -1, -1);
      MEMORY[0x1E691FE80](v24, -1, -1);
    }

    goto LABEL_28;
  }

  v10 = *&v9[OBJC_IVAR____TtC12WallpaperKit31WKWallpaperPosterEditorLookItem_wallpaperPosterLayerViewModel];
  swift_getKeyPath();
  *(v0 + 400) = v10;
  sub_1E4A93000(&qword_1EE042900, type metadata accessor for WKWallpaperPosterLayerViewModel, &unk_1E4AB2458);
  v11 = v9;
  sub_1E4AAA060();

  v12 = *(v10 + 16);
  if (!v12)
  {
    v26 = sub_1E4AAA0C0();
    v27 = sub_1E4AAAA00();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v72[0] = v29;
      *v28 = 136446210;
      *(v28 + 4) = sub_1E4A85938(0xD000000000000011, 0x80000001E4AB9C30, v72);
      _os_log_impl(&dword_1E4A23000, v26, v27, "Could not find '%{public}s' to finalize editor session.", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      MEMORY[0x1E691FE80](v29, -1, -1);
      MEMORY[0x1E691FE80](v28, -1, -1);
    }

    v30 = sub_1E4AAA0C0();
    v31 = sub_1E4AAAA10();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v72[0] = v33;
      *v32 = 136446210;
      *(v32 + 4) = sub_1E4A85938(0xD000000000000011, 0x80000001E4AB9C30, v72);
      _os_log_impl(&dword_1E4A23000, v30, v31, "Could not find '%{public}s' to finalize editor session.", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v33);
      MEMORY[0x1E691FE80](v33, -1, -1);
      MEMORY[0x1E691FE80](v32, -1, -1);
    }

    goto LABEL_28;
  }

  v71 = v11;
  v13 = *(v0 + 416);
  if (!*(v13 + 232))
  {
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    return;
  }

  v14 = *(v13 + 240);
  ObjectType = swift_getObjectType();
  v16 = *(v14 + 8);
  v17 = *(v16 + 48);

  swift_unknownObjectRetain();
  v34 = v17(ObjectType, v16);
  swift_unknownObjectRelease();
  v70 = v34;
  v72[0] = v12;
  if (!*(v13 + 232))
  {
    goto LABEL_32;
  }

  v35 = v12;
  v36 = *(v13 + 240);
  v37 = swift_getObjectType();
  v38 = *(v36 + 16);
  swift_unknownObjectRetain();
  v38(v37, v36);
  swift_unknownObjectRelease();
  WKWallpaperBundle.copyWallpaperRepresenting(to:)();
  v39 = *(v0 + 416);
  v40 = *(*(v0 + 432) + 8);
  v40(*(v0 + 440), *(v0 + 424));
  v68 = sub_1E4AA9F90();
  v69 = v41;
  sub_1E4AA9EE0();
  swift_allocObject();
  sub_1E4AA9ED0();
  v42 = *(v39 + 64);
  if (v42 == 2)
  {
    v43 = 1;
  }

  else
  {
    v43 = 2;
  }

  if (v42 == 1)
  {
    v44 = 0;
  }

  else
  {
    v44 = v43;
  }

  *(v0 + 456) = v44;
  sub_1E4A92F58();
  v45 = sub_1E4AA9EC0();
  v46 = v35;
  v67 = v40;
  *(v0 + 352) = 0xD00000000000001ALL;
  *(v0 + 360) = 0x80000001E4AB8DD0;
  v47 = MEMORY[0x1E69E6158];
  v48 = v45;
  v50 = v49;
  sub_1E4AAAB90();
  *(v0 + 160) = MEMORY[0x1E6969080];
  *(v0 + 136) = v48;
  *(v0 + 144) = v50;
  sub_1E4A4DCE8((v0 + 136), (v0 + 168));
  v65 = v50;
  v66 = v48;
  sub_1E4A92FAC(v48, v50);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v72[0] = v70;
  sub_1E4A95B40((v0 + 168), v0 + 16, isUniquelyReferenced_nonNull_native);
  sub_1E4A60E2C(v0 + 16);
  v52 = v72[0];
  *(v0 + 368) = 0xD00000000000001DLL;
  *(v0 + 376) = 0x80000001E4AB8DF0;
  sub_1E4AAAB90();
  *(v0 + 224) = v47;
  *(v0 + 200) = v68;
  *(v0 + 208) = v69;
  sub_1E4A4DCE8((v0 + 200), (v0 + 232));

  v53 = swift_isUniquelyReferenced_nonNull_native();
  v72[0] = v52;
  sub_1E4A95B40((v0 + 232), v0 + 56, v53);
  sub_1E4A60E2C(v0 + 56);
  v54 = v72[0];
  *(v0 + 384) = 0xD00000000000001FLL;
  *(v0 + 392) = 0x80000001E4AB8E10;
  v55 = v47;
  sub_1E4AAAB90();
  v56 = [*(v46 + 16) identifierString];
  v57 = sub_1E4AAA8A0();
  v59 = v58;

  *(v0 + 288) = v55;
  *(v0 + 264) = v57;
  *(v0 + 272) = v59;
  sub_1E4A4DCE8((v0 + 264), (v0 + 296));
  v60 = swift_isUniquelyReferenced_nonNull_native();
  v72[0] = v54;
  sub_1E4A95B40((v0 + 296), v0 + 96, v60);
  sub_1E4A60E2C(v0 + 96);
  if (!*(v13 + 232))
  {
    goto LABEL_33;
  }

  v61 = v72[0];
  v62 = *(v13 + 240);
  swift_unknownObjectRetain();

  v63 = swift_getObjectType();
  (*(v62 + 24))(v61, v63, v62);
  v67(*(v0 + 448), *(v0 + 424));
  sub_1E4A60F3C(v66, v65);

  swift_unknownObjectRelease();

LABEL_28:
  sub_1E4A8EA4C(*(v0 + 416));

  v64 = *(v0 + 8);

  v64();
}

void _s12WallpaperKit33WKWallpaperPosterEditorControllerC19editorDidInvalidateyySo0cdE0_pF_0()
{
  v1 = v0;
  if (qword_1EE0424C0 != -1)
  {
    swift_once();
  }

  v2 = sub_1E4AAA0E0();
  __swift_project_value_buffer(v2, qword_1EE048B88);

  v3 = sub_1E4AAA0C0();
  v4 = sub_1E4AAAA20();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *&v37[0] = v6;
    *v5 = 136446466;
    v7 = sub_1E4AAAE90();
    v9 = sub_1E4A85938(v7, v8, v37);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2082;
    *(v5 + 14) = sub_1E4A85938(0xD000000000000017, 0x80000001E4AB9BF0, v37);
    _os_log_impl(&dword_1E4A23000, v3, v4, "Start (%{public}s.%{public}s)…", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E691FE80](v6, -1, -1);
    MEMORY[0x1E691FE80](v5, -1, -1);
  }

  if (*(v1 + 24))
  {

    sub_1E4A6D7E8();
  }

  swift_beginAccess();
  *(v1 + 32) = MEMORY[0x1E69E7CC8];

  v11 = *(v1 + 232);
  v10 = *(v1 + 240);
  *(v1 + 232) = 0;
  *(v1 + 240) = 0;
  sub_1E4A8A50C(v11, v10);
  swift_unknownObjectRelease();
  sub_1E4A90810(v27);
  v12 = *(v1 + 160);
  v13 = *(v1 + 192);
  v34 = *(v1 + 176);
  v35 = v13;
  v14 = *(v1 + 192);
  v36 = *(v1 + 208);
  v15 = *(v1 + 96);
  v16 = *(v1 + 128);
  v30 = *(v1 + 112);
  v31 = v16;
  v17 = *(v1 + 128);
  v18 = *(v1 + 160);
  v32 = *(v1 + 144);
  v33 = v18;
  v19 = *(v1 + 96);
  v28 = *(v1 + 80);
  v29 = v19;
  v37[6] = v34;
  v37[7] = v14;
  v37[8] = *(v1 + 208);
  v37[2] = v30;
  v37[3] = v17;
  v37[4] = v32;
  v37[5] = v12;
  v37[0] = v28;
  v37[1] = v15;
  v20 = v27[5];
  *(v1 + 144) = v27[4];
  *(v1 + 160) = v20;
  v21 = v27[7];
  *(v1 + 176) = v27[6];
  *(v1 + 192) = v21;
  *(v1 + 208) = v27[8];
  v22 = v27[3];
  *(v1 + 112) = v27[2];
  *(v1 + 128) = v22;
  v23 = v27[1];
  *(v1 + 80) = v27[0];
  *(v1 + 96) = v23;
  sub_1E4A52D40(&v28, v26, &unk_1ECF8E990, &qword_1E4AB36D0);
  sub_1E4A4DC88(v37, &unk_1ECF8E990, &qword_1E4AB36D0);
  v26[6] = v34;
  v26[7] = v35;
  v26[8] = v36;
  v26[2] = v30;
  v26[3] = v31;
  v26[4] = v32;
  v26[5] = v33;
  v26[0] = v28;
  v26[1] = v29;
  sub_1E4A898E4(v26);
  sub_1E4A4DC88(&v28, &unk_1ECF8E990, &qword_1E4AB36D0);
  v24 = *(v1 + 224);
  *(v1 + 224) = 0;
  sub_1E4A8A28C(v24, v25);

  sub_1E4A8EC18(v1);
}

unint64_t sub_1E4A92F58()
{
  result = qword_1ECF8EA48;
  if (!qword_1ECF8EA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF8EA48);
  }

  return result;
}

uint64_t sub_1E4A92FAC(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_1E4A93000(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_1E4A93064(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

double sub_1E4A93090(uint64_t a1)
{
  switch(a1)
  {
    case 2:
      return 180.0;
    case 3:
      v6 = [objc_opt_self() sharedApplication];
      v7 = [v6 userInterfaceLayoutDirection];

      v3 = v7 == 1;
      result = 90.0;
      v5 = 270.0;
      break;
    case 4:
      v1 = [objc_opt_self() sharedApplication];
      v2 = [v1 userInterfaceLayoutDirection];

      v3 = v2 == 1;
      result = 270.0;
      v5 = 90.0;
      break;
    default:
      return 0.0;
  }

  if (v3)
  {
    return v5;
  }

  return result;
}

double sub_1E4A93188(unint64_t a1, unint64_t a2, double a3)
{
  v6 = sub_1E4A93090(a2);
  if (a1 <= 1)
  {
    if (a1 > 1 || a2 != 4)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (a1 == 2)
  {
    if (a2 != 3)
    {
      goto LABEL_10;
    }

LABEL_8:
    v7 = 0;
    goto LABEL_11;
  }

  if (a1 == 4)
  {
    if (a2 != 2)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (a1 != 3)
  {
LABEL_10:
    v7 = 1;
    goto LABEL_11;
  }

  v7 = a2 > 1;
LABEL_11:
  v8 = [objc_opt_self() sharedApplication];
  v9 = [v8 userInterfaceLayoutDirection];

  if (((v7 ^ (v9 != 1)) & 1) != 0 && v6 > a3)
  {
    return a3 + 360.0;
  }

  return a3;
}

id sub_1E4A932B0(uint64_t a1, uint64_t (**a2)(__CFString *, uint64_t, char *))
{
  v5 = sub_1E4AA9FE0();
  v62 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E7C0, &qword_1E4AAEA40);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = v54 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = v54 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = v54 - v18;
  v20 = a2[15](@"WKWallpaperLocationCoverSheet", a1, a2);
  result = 0;
  if (!v20)
  {
    v58 = v11;
    v59 = v14;
    v60 = v7;
    v66 = MEMORY[0x1E69E7CC8];
    v55 = a2[19];
    v56 = a2 + 19;
    (v55)(v63, @"WKWallpaperLocationCoverSheet", @"default", a1, a2);
    v22 = v64;
    v61 = v19;
    v54[1] = v2;
    v23 = a1;
    v24 = a2;
    if (v64)
    {
      v25 = v65;
      __swift_project_boxed_opaque_existential_1(v63, v64);
      v26 = *(v25 + 16);
      v27 = v25;
      v19 = v61;
      v26(v22, v27);
      v28 = v62;
      v29 = v5;
      v57 = *(v62 + 56);
      v57(v19, 0, 1, v5);
      __swift_destroy_boxed_opaque_existential_1Tm(v63);
    }

    else
    {
      sub_1E4A4DC88(v63, &qword_1ECF8EAA0, qword_1E4AB38D8);
      v28 = v62;
      v29 = v5;
      v57 = *(v62 + 56);
      v57(v19, 1, 1, v5);
    }

    v30 = v60;
    v60 = v24;
    sub_1E4A48054(v19, v17);
    v31 = *(v28 + 48);
    if (v31(v17, 1, v29) == 1)
    {
      v32 = 0;
    }

    else
    {
      (*(v28 + 32))(v30, v17, v29);
      v33 = objc_opt_self();
      v34 = sub_1E4AA9FA0();
      v32 = [v33 wk:v34 imageWithContentsOfURL:?];

      (*(v28 + 8))(v30, v29);
    }

    if (qword_1EE0421D0 != -1)
    {
      swift_once();
    }

    v35 = qword_1EE048B18;
    if (v32)
    {
      v36 = v32;
      if (MEMORY[0x1E69E7CC8] >> 62)
      {
        result = sub_1E4AAAC80();
        if (__OFADD__(result, 1))
        {
          goto LABEL_37;
        }

        v37 = sub_1E4A950AC(MEMORY[0x1E69E7CC8], result + 1);
      }

      else
      {
        v37 = v66;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v63[0] = v37;
      sub_1E4A95590(v36, v35, isUniquelyReferenced_nonNull_native);
      v28 = v62;
      v66 = v63[0];
    }

    else
    {
    }

    (v55)(v63, @"WKWallpaperLocationCoverSheet", @"dark", v23, v60);
    v39 = v64;
    if (v64)
    {
      v40 = v65;
      __swift_project_boxed_opaque_existential_1(v63, v64);
      v41 = *(v40 + 16);
      v42 = v59;
      v43 = v40;
      v28 = v62;
      v41(v39, v43);
      v57(v42, 0, 1, v29);
      __swift_destroy_boxed_opaque_existential_1Tm(v63);
    }

    else
    {
      sub_1E4A4DC88(v63, &qword_1ECF8EAA0, qword_1E4AB38D8);
      v42 = v59;
      v57(v59, 1, 1, v29);
    }

    v44 = v58;
    sub_1E4A48054(v42, v58);
    if (v31(v44, 1, v29) == 1)
    {
      v45 = 0;
    }

    else
    {
      (*(v28 + 32))(v30, v44, v29);
      v46 = objc_opt_self();
      v47 = sub_1E4AA9FA0();
      v45 = [v46 wk:v47 imageWithContentsOfURL:?];

      (*(v28 + 8))(v30, v29);
    }

    if (qword_1EE0421D8 != -1)
    {
      swift_once();
    }

    v48 = qword_1EE048B20;
    if (!v45)
    {

LABEL_34:
      v51 = objc_opt_self();
      sub_1E4A47A2C(0, &unk_1EE0421C0, 0x1E69DD1B8);
      sub_1E4A47A2C(0, &unk_1EE043980, 0x1E69DCAB8);
      sub_1E4A507A8();
      v52 = sub_1E4AAA800();

      v53 = [v51 wk:v52 dynamicImageWithTraitCollectionToImageMap:v32 baseImage:?];

      sub_1E4A4DC88(v42, &qword_1ECF8E7C0, &qword_1E4AAEA40);
      sub_1E4A4DC88(v61, &qword_1ECF8E7C0, &qword_1E4AAEA40);
      return v53;
    }

    v49 = v66;
    if ((v66 & 0xC000000000000001) == 0)
    {
      v45 = v45;
      goto LABEL_33;
    }

    if (v66 >= 0)
    {
      v49 = v66 & 0xFFFFFFFFFFFFFF8;
    }

    v45 = v45;
    result = sub_1E4AAAC80();
    if (!__OFADD__(result, 1))
    {
      v49 = sub_1E4A950AC(v49, result + 1);
LABEL_33:
      v50 = swift_isUniquelyReferenced_nonNull_native();
      v63[0] = v49;
      sub_1E4A95590(v45, v48, v50);
      v66 = v63[0];
      goto LABEL_34;
    }

    __break(1u);
LABEL_37:
    __break(1u);
  }

  return result;
}

id sub_1E4A93A28(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 136);
  v4(v12, @"WKWallpaperLocationCoverSheet", @"default", a1, a2);
  v5 = v13;
  if (v13)
  {
    v6 = v14;
    __swift_project_boxed_opaque_existential_1(v12, v13);
    v5 = (*(v6 + 16))(v5, v6);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
  }

  else
  {
    sub_1E4A4DC88(v12, &qword_1ECF8EA98, &qword_1E4AB38D0);
  }

  v4(v12, @"WKWallpaperLocationCoverSheet", @"dark", a1, a2);
  v7 = v13;
  if (v13)
  {
    v8 = v14;
    __swift_project_boxed_opaque_existential_1(v12, v13);
    v9 = (*(v8 + 16))(v7, v8);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
  }

  else
  {
    sub_1E4A4DC88(v12, &qword_1ECF8EA98, &qword_1E4AB38D0);
    v9 = 0;
  }

  v10 = [objc_opt_self() wk:v5 imageWithLightAppearanceImage:v9 darkAppearanceImage:?];

  return v10;
}

void sub_1E4A93BE8(id a1, unsigned __int8 a2)
{
  if (a2 != 0xFF)
  {
    sub_1E4A4EF3C(a1, a2);
  }
}

id sub_1E4A93BFC(id result, unsigned __int8 a2)
{
  if (a2 != 0xFF)
  {
    return sub_1E4A562F4(result, a2);
  }

  return result;
}

id sub_1E4A93C1C(uint64_t a1, uint64_t a2, SEL *a3)
{
  v98 = a3;
  v5 = sub_1E4AA9FE0();
  v96 = *(v5 - 8);
  v97 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v93 = &v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E7C0, &qword_1E4AAEA40);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v90 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v87 = (&v87 - v11);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v88 = &v87 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v91 = &v87 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v94 = &v87 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v92 = &v87 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v89 = &v87 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v87 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v95 = &v87 - v25;
  v26 = *(a2 + 168);
  v26(v101, @"WKWallpaperLocationCoverSheet", @"default", a1, a2);
  v27 = v102;
  if (v102)
  {
    v28 = v103;
    __swift_project_boxed_opaque_existential_1(v101, v102);
    (*(v28 + 24))(&v99, v27, v28);
    v29 = v99;
    v30 = v100;
    __swift_destroy_boxed_opaque_existential_1Tm(v101);
  }

  else
  {
    sub_1E4A4DC88(v101, &qword_1ECF8E830, &qword_1E4AB29C0);
    v29 = 0;
    v30 = 255;
  }

  v26(v101, @"WKWallpaperLocationCoverSheet", @"dark", a1, a2);
  v31 = v102;
  if (v102)
  {
    v32 = v29;
    v33 = v103;
    __swift_project_boxed_opaque_existential_1(v101, v102);
    v34 = *(v33 + 24);
    v35 = v33;
    v29 = v32;
    v34(&v99, v31, v35);
    v36 = v99;
    v37 = v100;
    __swift_destroy_boxed_opaque_existential_1Tm(v101);
    if (v30 != 255)
    {
      goto LABEL_6;
    }

LABEL_14:
    v53 = v29;
    v54 = -1;
LABEL_19:
    sub_1E4A93BE8(v53, v54);
    sub_1E4A93BE8(v36, v37);
    return 0;
  }

  sub_1E4A4DC88(v101, &qword_1ECF8E830, &qword_1E4AB29C0);
  v36 = 0;
  v37 = 255;
  if (v30 == 255)
  {
    goto LABEL_14;
  }

LABEL_6:
  if (v30 != 1)
  {
    v53 = v29;
    v54 = v30;
    goto LABEL_19;
  }

  if (v37 == 255)
  {
    v55 = v36;
    v56 = v29;
    v57 = [v29[2] *v98];
    v59 = v96;
    v58 = v97;
    if (v57)
    {
      v60 = v87;
      v61 = v57;
      sub_1E4AA9FC0();

      v62 = 0;
    }

    else
    {
      v62 = 1;
      v60 = v87;
    }

    v63 = v88;
    (*(v59 + 56))(v60, v62, 1, v58);
    sub_1E4A4EF94(v60, v63);
    v82 = v90;
    sub_1E4A48054(v63, v90);
    if ((*(v59 + 48))(v82, 1, v58) != 1)
    {
      v83 = v93;
      (*(v59 + 32))(v93, v82, v58);
      v84 = objc_opt_self();
      v85 = sub_1E4AA9FA0();
      v86 = [v84 wk:v85 imageWithContentsOfURL:?];

      sub_1E4A93BE8(v56, 1u);
      sub_1E4A93BE8(v55, 0xFFu);
      (*(v59 + 8))(v83, v58);
      sub_1E4A4DC88(v63, &qword_1ECF8E7C0, &qword_1E4AAEA40);
      return v86;
    }

    sub_1E4A93BE8(v56, 1u);
    sub_1E4A93BE8(v55, 0xFFu);
    sub_1E4A4DC88(v63, &qword_1ECF8E7C0, &qword_1E4AAEA40);
    return 0;
  }

  v39 = v96;
  v38 = v97;
  if (v37 != 1)
  {
    v53 = v29;
    v54 = 1;
    goto LABEL_19;
  }

  v40 = v29;
  v41 = v29[2];
  v90 = v40;
  sub_1E4A93BFC(v40, 1u);
  sub_1E4A93BFC(v36, 1u);
  v42 = [v41 *v98];
  if (v42)
  {
    v43 = v42;
    sub_1E4AA9FC0();

    v37 = 0;
  }

  v44 = *(v39 + 56);
  v44(v24, v37, 1, v38);
  v45 = objc_opt_self();
  v46 = v24;
  v47 = v95;
  sub_1E4A4EF94(v46, v95);
  v48 = v47;
  v49 = v89;
  sub_1E4A48054(v48, v89);
  v50 = *(v39 + 48);
  v51 = v50(v49, 1, v38);
  v88 = v45;
  if (v51 == 1)
  {
    v52 = 0;
  }

  else
  {
    v65 = *(v39 + 32);
    v87 = v36;
    v66 = v93;
    v65(v93, v49, v38);
    v67 = sub_1E4AA9FA0();
    v52 = [v45 wk:v67 imageWithContentsOfURL:?];

    v68 = v66;
    v36 = v87;
    (*(v39 + 8))(v68, v38);
  }

  v69 = v91;
  v70 = v94;
  sub_1E4A4DC88(v95, &qword_1ECF8E7C0, &qword_1E4AAEA40);
  v71 = [v36[2] *v98];
  if (v71)
  {
    v72 = v71;
    sub_1E4AA9FC0();

    v70 = v94;
    v73 = 0;
  }

  else
  {
    v73 = 1;
  }

  v44(v70, v73, 1, v38);
  v74 = v92;
  sub_1E4A4EF94(v70, v92);
  sub_1E4A48054(v74, v69);
  if (v50(v69, 1, v38) == 1)
  {
    v75 = 0;
    v76 = v88;
  }

  else
  {
    v77 = v93;
    (*(v39 + 32))(v93, v69, v38);
    v78 = v36;
    v79 = sub_1E4AA9FA0();
    v76 = v88;
    v75 = [v88 wk:v79 imageWithContentsOfURL:?];

    v36 = v78;
    (*(v39 + 8))(v77, v38);
  }

  sub_1E4A4DC88(v74, &qword_1ECF8E7C0, &qword_1E4AAEA40);
  v80 = [v76 wk:v52 imageWithLightAppearanceImage:v75 darkAppearanceImage:?];

  sub_1E4A93BE8(v36, 1u);
  v81 = v90;
  sub_1E4A93BE8(v90, 1u);
  sub_1E4A93BE8(v81, 1u);
  sub_1E4A93BE8(v36, 1u);

  return v80;
}

id sub_1E4A944C4(uint64_t a1, uint64_t a2, SEL *a3)
{
  v112 = a3;
  v5 = sub_1E4AA9FE0();
  v6 = *(v5 - 8);
  v113 = v5;
  v114 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v109 = &v101 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E7C0, &qword_1E4AAEA40);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v108 = &v101 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v105 = &v101 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v107 = &v101 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v103 = &v101 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v111 = &v101 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v104 = &v101 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v106 = &v101 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v101 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v110 = &v101 - v26;
  v27 = *(a2 + 168);
  v27(v117, @"WKWallpaperLocationCoverSheet", @"default", a1, a2);
  v28 = v118;
  if (v118)
  {
    v29 = v119;
    __swift_project_boxed_opaque_existential_1(v117, v118);
    (*(v29 + 24))(&v115, v28, v29);
    v30 = v115;
    v31 = v116;
    __swift_destroy_boxed_opaque_existential_1Tm(v117);
  }

  else
  {
    sub_1E4A4DC88(v117, &qword_1ECF8E830, &qword_1E4AB29C0);
    v30 = 0;
    v31 = 255;
  }

  v27(v117, @"WKWallpaperLocationCoverSheet", @"dark", a1, a2);
  v32 = v118;
  if (v118)
  {
    v33 = v119;
    __swift_project_boxed_opaque_existential_1(v117, v118);
    (*(v33 + 24))(&v115, v32, v33);
    v34 = v115;
    v35 = v116;
    __swift_destroy_boxed_opaque_existential_1Tm(v117);
    if (v31 != 255)
    {
      goto LABEL_6;
    }

LABEL_14:
    v48 = v30;
    v49 = -1;
    goto LABEL_19;
  }

  sub_1E4A4DC88(v117, &qword_1ECF8E830, &qword_1E4AB29C0);
  v34 = 0;
  v35 = 255;
  if (v31 == 255)
  {
    goto LABEL_14;
  }

LABEL_6:
  if (v31 != 1)
  {
    v48 = v30;
    v49 = v31;
    goto LABEL_19;
  }

  if (v35 != 255)
  {
    v36 = v114;
    if (v35 == 1)
    {
      v37 = MEMORY[0x1E69E7CC8];
      v117[0] = MEMORY[0x1E69E7CC8];
      v38 = v30[2];
      sub_1E4A93BFC(v30, 1u);
      sub_1E4A93BFC(v34, 1u);
      v39 = [v38 *v112];
      v102 = v34;
      v40 = v30;
      if (v39)
      {
        v41 = v39;
        sub_1E4AA9FC0();

        v35 = 0;
      }

      v42 = v106;
      v43 = *(v36 + 56);
      v44 = v113;
      v43(v25, v35, 1, v113);
      v45 = v110;
      sub_1E4A4EF94(v25, v110);
      sub_1E4A48054(v45, v42);
      v46 = *(v36 + 48);
      if (v46(v42, 1, v44) == 1)
      {
        v47 = 0;
      }

      else
      {
        v60 = v42;
        v61 = v109;
        (*(v36 + 32))(v109, v60, v44);
        v62 = objc_opt_self();
        v63 = sub_1E4AA9FA0();
        v64 = [v62 wk:v63 imageWithContentsOfURL:?];
        v65 = v36;
        v47 = v64;

        v45 = v110;
        (*(v65 + 8))(v61, v113);
      }

      sub_1E4A4DC88(v45, &qword_1ECF8E7C0, &qword_1E4AAEA40);
      if (qword_1EE0421D0 != -1)
      {
        swift_once();
      }

      v66 = qword_1EE048B18;
      if (v47)
      {
        v67 = v47;
        if (v37 >> 62)
        {
          result = sub_1E4AAAC80();
          if (__OFADD__(result, 1))
          {
LABEL_64:
            __break(1u);
            goto LABEL_65;
          }

          v68 = sub_1E4A950AC(MEMORY[0x1E69E7CC8], result + 1);
        }

        else
        {
          v68 = v117[0];
        }

        v69 = v104;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v115 = v68;
        sub_1E4A95590(v67, v66, isUniquelyReferenced_nonNull_native);
        v117[0] = v115;
      }

      else
      {

        v69 = v104;
      }

      v79 = [v102[2] *v112];
      v80 = v113;
      v81 = v111;
      if (v79)
      {
        v82 = v79;
        sub_1E4AA9FC0();

        v81 = v111;
        v83 = 0;
      }

      else
      {
        v83 = 1;
      }

      v43(v81, v83, 1, v80);
      sub_1E4A4EF94(v81, v69);
      v84 = v103;
      sub_1E4A48054(v69, v103);
      if (v46(v84, 1, v80) == 1)
      {
        v85 = 0;
      }

      else
      {
        v86 = v114;
        v87 = v109;
        (*(v114 + 32))(v109, v84, v80);
        v88 = objc_opt_self();
        v89 = sub_1E4AA9FA0();
        v85 = [v88 wk:v89 imageWithContentsOfURL:?];

        (*(v86 + 8))(v87, v80);
      }

      sub_1E4A4DC88(v69, &qword_1ECF8E7C0, &qword_1E4AAEA40);
      if (qword_1EE0421D8 != -1)
      {
        swift_once();
      }

      v90 = qword_1EE048B20;
      if (!v85)
      {

LABEL_61:
        v99 = objc_opt_self();
        sub_1E4A47A2C(0, &unk_1EE0421C0, 0x1E69DD1B8);
        sub_1E4A47A2C(0, &unk_1EE043980, 0x1E69DCAB8);
        sub_1E4A507A8();
        v94 = sub_1E4AAA800();

        v95 = [v99 wk:v94 dynamicImageWithTraitCollectionToImageMap:v47 baseImage:?];

        v100 = v102;
        sub_1E4A93BE8(v102, 1u);
        sub_1E4A93BE8(v40, 1u);
        sub_1E4A93BE8(v40, 1u);
        v96 = v100;
        v97 = 1;
        goto LABEL_62;
      }

      v91 = v117[0];
      if ((v117[0] & 0xC000000000000001) == 0)
      {
        v85 = v85;
        goto LABEL_60;
      }

      if (v117[0] >= 0)
      {
        v91 = v117[0] & 0xFFFFFFFFFFFFFF8;
      }

      v85 = v85;
      result = sub_1E4AAAC80();
      if (!__OFADD__(result, 1))
      {
        v91 = sub_1E4A950AC(v91, result + 1);
LABEL_60:
        v98 = swift_isUniquelyReferenced_nonNull_native();
        v115 = v91;
        sub_1E4A95590(v85, v90, v98);
        v117[0] = v115;
        goto LABEL_61;
      }

      __break(1u);
      goto LABEL_64;
    }

    v48 = v30;
    v49 = 1;
LABEL_19:
    sub_1E4A93BE8(v48, v49);
    sub_1E4A93BE8(v34, v35);
    return 0;
  }

  v50 = MEMORY[0x1E69E7CC8];
  v117[0] = MEMORY[0x1E69E7CC8];
  v51 = v30[2];

  v52 = [v51 *v112];
  v53 = v114;
  if (v52)
  {
    v54 = v105;
    v55 = v52;
    sub_1E4AA9FC0();

    v56 = 0;
    v57 = v113;
    v58 = v107;
  }

  else
  {
    v56 = 1;
    v57 = v113;
    v58 = v107;
    v54 = v105;
  }

  (*(v53 + 56))(v54, v56, 1, v57);
  sub_1E4A4EF94(v54, v58);
  v70 = v108;
  sub_1E4A48054(v58, v108);
  if ((*(v53 + 48))(v70, 1, v57) == 1)
  {
    v71 = 0;
  }

  else
  {
    v72 = v109;
    (*(v53 + 32))(v109, v70, v57);
    v73 = objc_opt_self();
    v74 = v57;
    v75 = sub_1E4AA9FA0();
    v71 = [v73 wk:v75 imageWithContentsOfURL:?];

    (*(v53 + 8))(v72, v74);
  }

  sub_1E4A4DC88(v58, &qword_1ECF8E7C0, &qword_1E4AAEA40);
  if (qword_1EE0421D0 != -1)
  {
    swift_once();
  }

  v76 = qword_1EE048B18;
  if (!v71)
  {

LABEL_58:
    v93 = objc_opt_self();
    sub_1E4A47A2C(0, &unk_1EE0421C0, 0x1E69DD1B8);
    sub_1E4A47A2C(0, &unk_1EE043980, 0x1E69DCAB8);
    sub_1E4A507A8();
    v94 = sub_1E4AAA800();

    v95 = [v93 wk:v94 dynamicImageWithTraitCollectionToImageMap:v71 baseImage:?];

    sub_1E4A93BE8(v30, 1u);
    sub_1E4A93BE8(v30, 1u);
    v96 = v34;
    v97 = -1;
LABEL_62:
    sub_1E4A93BE8(v96, v97);

    return v95;
  }

  v71 = v71;
  if (!(v50 >> 62))
  {
    v77 = v117[0];
LABEL_57:
    v92 = swift_isUniquelyReferenced_nonNull_native();
    v115 = v77;
    sub_1E4A95590(v71, v76, v92);
    v117[0] = v115;
    goto LABEL_58;
  }

  result = sub_1E4AAAC80();
  if (!__OFADD__(result, 1))
  {
    v77 = sub_1E4A950AC(MEMORY[0x1E69E7CC8], result + 1);
    goto LABEL_57;
  }

LABEL_65:
  __break(1u);
  return result;
}

uint64_t sub_1E4A950AC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8E6B0, &unk_1E4AB1800);
    v2 = sub_1E4AAACF0();
    v19 = v2;
    sub_1E4AAAC70();
    v3 = sub_1E4AAACA0();
    if (v3)
    {
      v4 = v3;
      sub_1E4A47A2C(0, &unk_1EE0421C0, 0x1E69DD1B8);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_1E4A47A2C(0, &unk_1EE043980, 0x1E69DCAB8);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_1E4A65A10(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_1E4AAAAC0();
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
        v5 = sub_1E4AAACA0();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC8];
  }

  return v2;
}

uint64_t sub_1E4A952F8(unint64_t a1, uint64_t a2, __int128 *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_1E4A2732C(a3, a4[7] + 40 * a1);
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t sub_1E4A95364(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

_OWORD *sub_1E4A953A8(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_1E4A4DCE8(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

unint64_t sub_1E4A95424(uint64_t a1, char a2, double a3, double a4, double a5)
{
  v6 = v5;
  v12 = *v5;
  result = sub_1E4A8F274(a1);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 >= v18 && (a2 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v20 >= v18 && (a2 & 1) == 0)
  {
    v21 = result;
    sub_1E4A67840();
    result = v21;
    goto LABEL_8;
  }

  sub_1E4A65720(v18, a2 & 1);
  result = sub_1E4A8F274(a1);
  if ((v19 & 1) == (v22 & 1))
  {
LABEL_8:
    v23 = *v6;
    if (v19)
    {
      v24 = (v23[7] + 24 * result);
      *v24 = a3;
      v24[1] = a4;
      v24[2] = a5;
      return result;
    }

    v23[(result >> 6) + 8] |= 1 << result;
    v25 = v23[6] + 72 * result;
    v26 = *(a1 + 48);
    *(v25 + 32) = *(a1 + 32);
    *(v25 + 48) = v26;
    *(v25 + 64) = *(a1 + 64);
    v27 = *(a1 + 16);
    *v25 = *a1;
    *(v25 + 16) = v27;
    v28 = (v23[7] + 24 * result);
    *v28 = a3;
    v28[1] = a4;
    v28[2] = a5;
    v29 = v23[2];
    v17 = __OFADD__(v29, 1);
    v30 = v29 + 1;
    if (!v17)
    {
      v23[2] = v30;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_1E4AAADB0();
  __break(1u);
  return result;
}

id sub_1E4A95590(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1E4A8F2E0(a2);
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
      sub_1E4A65A10(v13, a3 & 1);
      v8 = sub_1E4A8F2E0(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        sub_1E4A47A2C(0, &unk_1EE0421C0, 0x1E69DD1B8);
        sub_1E4AAADB0();
        __break(1u);
        return MEMORY[0x1EEE66BB8]();
      }
    }

    else
    {
      v16 = v8;
      sub_1E4A679D8();
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

  return a2;
}

void sub_1E4A95708(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1E4A55B0C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1E4A66A78(v16, a4 & 1);
      v11 = sub_1E4A55B0C(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_1E4AAADB0();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_1E4A680B8();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    swift_unknownObjectRelease();
    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

id sub_1E4A95884(__int128 *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1E4A9308C();
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_1E4A6822C();
      v8 = v16;
      goto LABEL_8;
    }

    sub_1E4A66D2C(v13, a3 & 1);
    v8 = sub_1E4A9308C();
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for WKWallpaperAppearance(0);
      result = sub_1E4AAADB0();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = (v18[7] + 40 * v8);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);

    return sub_1E4A2732C(a1, v19);
  }

  else
  {
    sub_1E4A952F8(v8, a2, a1, v18);

    return a2;
  }
}

void sub_1E4A959C8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1E4A55B0C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1E4A672D0(v16, a4 & 1);
      v11 = sub_1E4A55B0C(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_1E4AAADB0();
        __break(1u);
_objc_release_x1:
        MEMORY[0x1EEE66BB8]();
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_1E4A68514();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    goto _objc_release_x1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

_OWORD *sub_1E4A95B40(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1E4A8F330(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_1E4A68680();
      goto LABEL_7;
    }

    sub_1E4A67574(v13, a3 & 1);
    v19 = sub_1E4A8F330(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1E4A4DC2C(a2, v21);
      return sub_1E4A953A8(v10, v21, a1, v16);
    }

LABEL_15:
    result = sub_1E4AAADB0();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  __swift_destroy_boxed_opaque_existential_1Tm(v17);

  return sub_1E4A4DCE8(a1, v17);
}

uint64_t type metadata accessor for WKStripesWallpaperPosterBackground(uint64_t a1)
{
  result = qword_1EE0440B0;
  if (!qword_1EE0440B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E4A95D1C(double *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, id **a4@<X8>)
{
  v8 = sub_1E4AAA1C0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v113 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = 0;
  if (sub_1E4A5A670(a3))
  {
    v116 = v8;
    v118 = a4;
    if (qword_1EE042498 != -1)
    {
      swift_once();
    }

    v13 = sub_1E4AAA0E0();
    v14 = __swift_project_value_buffer(v13, qword_1EE048B28);
    sub_1E4A49D24(a1, &v129);
    v117 = v14;
    v15 = sub_1E4AAA0C0();
    v16 = sub_1E4AAA9F0();
    sub_1E4A49CD0(a1);
    v17 = os_log_type_enabled(v15, v16);
    v115 = a2;
    if (v17)
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v128 = v19;
      *v18 = 136446210;
      v20 = *(a1 + 7);
      v125 = *(a1 + 6);
      v126 = v20;
      v127 = *(a1 + 8);
      v21 = *(a1 + 3);
      v121 = *(a1 + 2);
      v122 = v21;
      v22 = *(a1 + 5);
      v123 = *(a1 + 4);
      v124 = v22;
      v23 = *(a1 + 1);
      v119 = *a1;
      v120 = v23;
      sub_1E4A49D24(a1, &v129);
      v24 = WKPosterEnvironmentSnapshot.description.getter();
      v114 = v11;
      v25 = v9;
      v27 = v26;
      v135 = v125;
      v136 = v126;
      v137 = v127;
      v131 = v121;
      v132 = v122;
      v133 = v123;
      v134 = v124;
      v129 = v119;
      v130 = v120;
      sub_1E4A49CD0(&v129);
      v28 = sub_1E4A85938(v24, v27, &v128);
      v9 = v25;
      v11 = v114;

      *(v18 + 4) = v28;
      _os_log_impl(&dword_1E4A23000, v15, v16, "Resolving Layered Stripe against Traits: %{public}s.", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      MEMORY[0x1E691FE80](v19, -1, -1);
      MEMORY[0x1E691FE80](v18, -1, -1);
    }

    v29 = a1[2];
    v30 = a1[4];
    v31 = *(a3 + 16);
    v32 = WKWallpaperAppearanceDefault;
    if ([v31 isAppearanceAware])
    {
      v33 = v116;
      (*(v9 + 104))(v11, *MEMORY[0x1E697DBA8], v116);
      v34 = sub_1E4AAA1B0();
      (*(v9 + 8))(v11, v33);
      if (v34)
      {
        v32 = WKWallpaperAppearanceDark;
      }
    }

    v35 = *v32;
    if ([v31 valueBasedWallpaperForLocation:@"WKWallpaperLocationCoverSheet" andAppearance:v35])
    {
      sub_1E4A57768(&v129);
      swift_unknownObjectRelease();
      v36 = *(&v130 + 1);
      v37 = v131;
      __swift_project_boxed_opaque_existential_1(&v129, *(&v130 + 1));
      (*(v37 + 24))(&v119, v36, v37);
      v12 = v119;
      v38 = BYTE8(v119);
      __swift_destroy_boxed_opaque_existential_1Tm(&v129);
      if (v38 == 2)
      {

        if ([v31 valueBasedWallpaperForLocation:@"WKWallpaperLocationCoverSheet" andAppearance:@"inactive"])
        {
          sub_1E4A57768(&v129);
          swift_unknownObjectRelease();
          v39 = *(&v130 + 1);
          v40 = v131;
          __swift_project_boxed_opaque_existential_1(&v129, *(&v130 + 1));
          (*(v40 + 24))(&v119, v39, v40);
          v41 = v119;
          v42 = BYTE8(v119);
          __swift_destroy_boxed_opaque_existential_1Tm(&v129);
          if (v42 == 2)
          {
            v43 = WKWallpaperAppearanceDefault;
            if ([v31 isAppearanceAware])
            {
              v44 = *MEMORY[0x1E697DBA8];
              v114 = v41;
              v45 = v116;
              (*(v9 + 104))(v11, v44, v116);
              v46 = sub_1E4AAA1B0();
              (*(v9 + 8))(v11, v45);
              v41 = v114;
              if (v46)
              {
                v43 = WKWallpaperAppearanceDark;
              }
            }

            v47 = *v43;
            if ([v31 valueBasedWallpaperForLocation:@"WKWallpaperLocationHomeScreen" andAppearance:v47])
            {
              sub_1E4A57768(&v129);
              swift_unknownObjectRelease();
              v48 = *(&v130 + 1);
              v49 = v131;
              __swift_project_boxed_opaque_existential_1(&v129, *(&v130 + 1));
              (*(v49 + 24))(&v119, v48, v49);
              v50 = v119;
              v51 = BYTE8(v119);
              __swift_destroy_boxed_opaque_existential_1Tm(&v129);
              if (v51 == 2)
              {

                if (v29 == 0.0)
                {

                  v52 = v41;
                }

                else if (WKFloatIsOne(v29))
                {

                  v52 = v12;
                }

                else
                {
                  [v41[2] stripeAngleDegrees];
                  v68 = v67;
                  [v12[2] stripeAngleDegrees];
                  v70 = v69;
                  [v41[2] stripeAngleDegrees];
                  v72 = v68 + v29 * (v70 - v71);
                  [v41[2] stripeHeightFactor];
                  v74 = v73;
                  [v12[2] stripeHeightFactor];
                  v76 = v75;
                  [v41[2] stripeHeightFactor];
                  v78 = v74 + v29 * (v76 - v77);
                  [v41[2] firstStripeOffsetScaleFactor];
                  v80 = v79;
                  [v12[2] firstStripeOffsetScaleFactor];
                  v82 = v81;
                  [v41[2] firstStripeOffsetScaleFactor];
                  v84 = v80 + v29 * (v82 - v83);
                  v85 = [v41[2] backgroundColor];
                  v86 = [v12[2] backgroundColor];
                  v87 = [v85 wk:v86 interpolatedToColor:v29 progress:?];

                  v88 = [objc_allocWithZone(WKLayeredStripeWallpaperInput) initWithBackgroundColor:v87 stripeAngleDegrees:v72 stripeHeightFactor:v78 firstStripeOffsetScaleFactor:v84];
                  type metadata accessor for WKLayeredStripeWallpaperInput.ImplementationWrapper();
                  v52 = swift_allocObject();
                  *(v52 + 16) = v88;
                }

                v89 = v52;
                if (v30 == 0.0 || (v89 = v50, WKFloatIsOne(v30)))
                {

                  sub_1E4A4EF3C(v41, 2u);
                  sub_1E4A4EF3C(v12, 2u);
                  sub_1E4A4EF3C(v50, 2u);

                  v12 = v89;
                }

                else
                {
                  [*(v52 + 16) stripeAngleDegrees];
                  v91 = v90;
                  [v50[2] stripeAngleDegrees];
                  v93 = v92;
                  [*(v52 + 16) stripeAngleDegrees];
                  v95 = v91 + v30 * (v93 - v94);
                  [*(v52 + 16) stripeHeightFactor];
                  v97 = v96;
                  [v50[2] stripeHeightFactor];
                  v99 = v98;
                  [*(v52 + 16) stripeHeightFactor];
                  v101 = v97 + v30 * (v99 - v100);
                  [*(v52 + 16) firstStripeOffsetScaleFactor];
                  v103 = v102;
                  [v50[2] firstStripeOffsetScaleFactor];
                  v105 = v104;
                  [*(v52 + 16) firstStripeOffsetScaleFactor];
                  v107 = v103 + v30 * (v105 - v106);
                  v108 = [*(v52 + 16) backgroundColor];
                  v109 = [v50[2] backgroundColor];
                  v110 = [v108 wk:v109 interpolatedToColor:v30 progress:?];

                  v111 = [objc_allocWithZone(WKLayeredStripeWallpaperInput) initWithBackgroundColor:v110 stripeAngleDegrees:v95 stripeHeightFactor:v101 firstStripeOffsetScaleFactor:v107];
                  type metadata accessor for WKLayeredStripeWallpaperInput.ImplementationWrapper();
                  v112 = swift_allocObject();
                  *(v112 + 16) = v111;
                  sub_1E4A4EF3C(v41, 2u);
                  sub_1E4A4EF3C(v12, 2u);
                  sub_1E4A4EF3C(v50, 2u);

                  v12 = v112;
                }

LABEL_35:
                a4 = v118;
                goto LABEL_36;
              }

              sub_1E4A4EF3C(v50, v51);
            }

            v59 = v41;
            v60 = 2;
          }

          else
          {
            v59 = v41;
            v60 = v42;
          }

          sub_1E4A4EF3C(v59, v60);
        }

        v61 = sub_1E4AAA0C0();
        v62 = sub_1E4AAAA00();
        if (os_log_type_enabled(v61, v62))
        {
          v63 = swift_slowAlloc();
          *v63 = 0;
          MEMORY[0x1E691FE80](v63, -1, -1);
        }

        v64 = sub_1E4AAA0C0();
        v65 = sub_1E4AAAA10();
        if (os_log_type_enabled(v64, v65))
        {
          v66 = swift_slowAlloc();
          *v66 = 0;
          MEMORY[0x1E691FE80](v66, -1, -1);
        }

        goto LABEL_35;
      }

      sub_1E4A4EF3C(v12, v38);
    }

    v53 = sub_1E4AAA0C0();
    v54 = sub_1E4AAAA00();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      MEMORY[0x1E691FE80](v55, -1, -1);
    }

    v56 = sub_1E4AAA0C0();
    v57 = sub_1E4AAAA10();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      MEMORY[0x1E691FE80](v58, -1, -1);
    }

    v12 = 0;
    goto LABEL_35;
  }

LABEL_36:
  *a4 = v12;
}