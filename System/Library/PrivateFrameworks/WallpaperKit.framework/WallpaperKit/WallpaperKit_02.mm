void sub_1E4A6C0D4(uint64_t a1, double a2)
{
  v3 = v2;
  v6 = sub_1E4AAA1C0();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v39[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v39[-v11];
  v13 = OBJC_IVAR____TtCV12WallpaperKit23WKAnimationPackageLayer11Coordinator_colorScheme;
  swift_beginAccess();
  (*(v7 + 16))(v12, v3 + v13, v6);
  v41 = a1;
  sub_1E4AAA2C0();
  sub_1E4A6C7C8(&qword_1EE043A20, MEMORY[0x1E697DBD0], MEMORY[0x1E697DBE8]);
  v14 = sub_1E4AAA860();
  v15 = *(v7 + 8);
  v15(v10, v6);
  v15(v12, v6);
  v40 = v14;
  if ((v14 & 1) == 0)
  {
    sub_1E4AAA2C0();
    swift_beginAccess();
    (*(v7 + 40))(v3 + v13, v12, v6);
    swift_endAccess();
  }

  v16 = v3 + OBJC_IVAR____TtCV12WallpaperKit23WKAnimationPackageLayer11Coordinator_posterEnvironmentSnapshot;
  v17 = *(v3 + OBJC_IVAR____TtCV12WallpaperKit23WKAnimationPackageLayer11Coordinator_posterEnvironmentSnapshot + 80);
  v18 = *(v3 + OBJC_IVAR____TtCV12WallpaperKit23WKAnimationPackageLayer11Coordinator_posterEnvironmentSnapshot + 112);
  v74 = *(v3 + OBJC_IVAR____TtCV12WallpaperKit23WKAnimationPackageLayer11Coordinator_posterEnvironmentSnapshot + 96);
  v75 = v18;
  v19 = *(v3 + OBJC_IVAR____TtCV12WallpaperKit23WKAnimationPackageLayer11Coordinator_posterEnvironmentSnapshot + 112);
  v76 = *(v3 + OBJC_IVAR____TtCV12WallpaperKit23WKAnimationPackageLayer11Coordinator_posterEnvironmentSnapshot + 128);
  v20 = *(v3 + OBJC_IVAR____TtCV12WallpaperKit23WKAnimationPackageLayer11Coordinator_posterEnvironmentSnapshot + 16);
  v21 = *(v3 + OBJC_IVAR____TtCV12WallpaperKit23WKAnimationPackageLayer11Coordinator_posterEnvironmentSnapshot + 48);
  v70 = *(v3 + OBJC_IVAR____TtCV12WallpaperKit23WKAnimationPackageLayer11Coordinator_posterEnvironmentSnapshot + 32);
  v71 = v21;
  v22 = *(v3 + OBJC_IVAR____TtCV12WallpaperKit23WKAnimationPackageLayer11Coordinator_posterEnvironmentSnapshot + 48);
  v23 = *(v3 + OBJC_IVAR____TtCV12WallpaperKit23WKAnimationPackageLayer11Coordinator_posterEnvironmentSnapshot + 80);
  v72 = *(v3 + OBJC_IVAR____TtCV12WallpaperKit23WKAnimationPackageLayer11Coordinator_posterEnvironmentSnapshot + 64);
  v73 = v23;
  v24 = *(v3 + OBJC_IVAR____TtCV12WallpaperKit23WKAnimationPackageLayer11Coordinator_posterEnvironmentSnapshot + 16);
  v69[0] = *(v3 + OBJC_IVAR____TtCV12WallpaperKit23WKAnimationPackageLayer11Coordinator_posterEnvironmentSnapshot);
  v69[1] = v24;
  v66 = v74;
  v67 = v19;
  v68 = *(v3 + OBJC_IVAR____TtCV12WallpaperKit23WKAnimationPackageLayer11Coordinator_posterEnvironmentSnapshot + 128);
  v62 = v70;
  v63 = v22;
  v64 = v72;
  v65 = v17;
  v60 = v69[0];
  v61 = v20;
  sub_1E4A49D24(v69, v78);
  sub_1E4A53380();
  sub_1E4AAA330();
  v48 = v57;
  v49 = v58;
  v50 = v59;
  v44 = v53;
  v45 = v54;
  v46 = v55;
  v47 = v56;
  v42 = v51;
  v43 = v52;
  v25 = _s12WallpaperKit27WKPosterEnvironmentSnapshotV2eeoiySbAC_ACtFZ_0(&v60, v42.f64);
  v77[6] = v48;
  v77[7] = v49;
  v77[8] = v50;
  v77[2] = v44;
  v77[3] = v45;
  v77[4] = v46;
  v77[5] = v47;
  v77[0] = v42;
  v77[1] = v43;
  sub_1E4A49CD0(v77);
  v78[6] = v66;
  v78[7] = v67;
  v78[8] = v68;
  v78[2] = v62;
  v78[3] = v63;
  v78[4] = v64;
  v78[5] = v65;
  v78[0] = v60;
  v78[1] = v61;
  sub_1E4A49CD0(v78);
  if ((v25 & 1) == 0)
  {
    v27 = *(v16 + 72);
    sub_1E4AAA330();
    v66 = v57;
    v67 = v58;
    v68 = v59;
    v62 = v53;
    v63 = v54;
    v64 = v55;
    v65 = v56;
    v60 = v51;
    v61 = v52;
    sub_1E4A49CD0(&v60);
    v28 = v27 != *(&v64 + 1);
    if (v27 != *(&v64 + 1))
    {
      *(v3 + OBJC_IVAR____TtCV12WallpaperKit23WKAnimationPackageLayer11Coordinator_lastOrientation) = *(v16 + 72);
    }

    sub_1E4AAA330();
    v29 = *(v16 + 112);
    v57 = *(v16 + 96);
    v58 = v29;
    v59 = *(v16 + 128);
    v30 = *(v16 + 48);
    v53 = *(v16 + 32);
    v54 = v30;
    v31 = *(v16 + 80);
    v55 = *(v16 + 64);
    v56 = v31;
    v32 = *(v16 + 16);
    v51 = *v16;
    v52 = v32;
    v33 = v47;
    *(v16 + 64) = v46;
    *(v16 + 80) = v33;
    v34 = v49;
    *(v16 + 96) = v48;
    *(v16 + 112) = v34;
    *(v16 + 128) = v50;
    v35 = v45;
    *(v16 + 32) = v44;
    *(v16 + 48) = v35;
    v36 = v43;
    *v16 = v42;
    *(v16 + 16) = v36;
    sub_1E4A49CD0(&v51);
    v26 = (v3 + OBJC_IVAR____TtCV12WallpaperKit23WKAnimationPackageLayer11Coordinator_rotationAngle);
    if (sub_1E4AAA5B0())
    {
      v37 = 0;
      goto LABEL_13;
    }

LABEL_12:
    *v26 = a2;
    v37 = 1;
LABEL_13:
    sub_1E4A68E28(v37, v28, a2);
    if (v40)
    {
      return;
    }

    goto LABEL_14;
  }

  v26 = (v3 + OBJC_IVAR____TtCV12WallpaperKit23WKAnimationPackageLayer11Coordinator_rotationAngle);
  if ((sub_1E4AAA5B0() & 1) == 0)
  {
    v28 = 0;
    goto LABEL_12;
  }

  if (v40)
  {
    return;
  }

  sub_1E4A68E28(0, 0, a2);
LABEL_14:
  v38 = [objc_opt_self() defaultCenter];
  if (qword_1EE0421A8 != -1)
  {
    swift_once();
  }

  [v38 postNotificationName:qword_1EE048B10 object:0];
}

uint64_t sub_1E4A6C5D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E678, qword_1E4AB1DF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E4A6C690(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E4A6C6C8(uint64_t a1)
{
  sub_1E4A48ECC();
  if (v1 <= 0x3F)
  {
    sub_1E4A48E74(319);
    if (v2 <= 0x3F)
    {
      sub_1E4AA9FE0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1E4A6C7C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E4A6C880(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1E4AAADA0() & 1;
  }
}

uint64_t sub_1E4A6C954(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1E4AAA030();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for WKPosterDynamicRotationState(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v63 - v12;
  if (qword_1EE0424A0 != -1)
  {
    swift_once();
  }

  v14 = sub_1E4AAA0E0();
  v72 = __swift_project_value_buffer(v14, qword_1EE048B40);
  v15 = sub_1E4AAA0C0();
  v16 = sub_1E4AAAA20();
  v17 = os_log_type_enabled(v15, v16);
  v70 = v4;
  v64 = v13;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v73 = v5;
    v71 = v8;
    v19 = v18;
    v74[0] = swift_slowAlloc();
    v69 = v2;
    v20 = v74[0];
    *v19 = 136446466;
    v21 = WKStringForInterfaceOrientation(a1);
    v22 = a1;
    v23 = sub_1E4AAA8A0();
    v25 = v24;

    v26 = v23;
    a1 = v22;
    v27 = sub_1E4A85938(v26, v25, v74);
    v13 = v64;

    *(v19 + 4) = v27;
    *(v19 + 12) = 2050;
    *(v19 + 14) = sub_1E4A93090(v22);
    _os_log_impl(&dword_1E4A23000, v15, v16, "Initial orientation of poster is %{public}s (%{public}f degrees)", v19, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    v28 = v20;
    v2 = v69;
    MEMORY[0x1E691FE80](v28, -1, -1);
    v29 = v19;
    v8 = v71;
    v5 = v73;
    MEMORY[0x1E691FE80](v29, -1, -1);
  }

  sub_1E4A7CA1C(a1, v13);
  v30 = OBJC_IVAR____TtC12WallpaperKit24WKDynamicRotationManager_rotationState;
  swift_beginAccess();
  sub_1E4A6EB78(v13, &v2[v30]);
  swift_endAccess();
  v31 = *(*(v2 + 2) + 16);
  if (v31)
  {
    v32 = *&v13[*(v8 + 20)] * 0.0174532925;
    v66 = (v5 + 8);
    v67 = (v5 + 16);

    v34 = 32;
    *&v35 = 136446210;
    v65 = v35;
    v68 = v33;
    v69 = v11;
    do
    {
      v71 = v31;
      v46 = *(v33 + v34);
      sub_1E4A6EC98(v13, v11);
      swift_unknownObjectRetain();
      v47 = sub_1E4AAA0C0();
      v48 = sub_1E4AAAA20();
      v49 = os_log_type_enabled(v47, v48);
      v73 = v46;
      if (v49)
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v74[0] = v51;
        *v50 = v65;
        v52 = sub_1E4AA9FF0();
        v53 = v11;
        v55 = v54;
        sub_1E4A6EFA8(v53, type metadata accessor for WKPosterDynamicRotationState);
        v56 = sub_1E4A85938(v52, v55, v74);

        *(v50 + 4) = v56;
        _os_log_impl(&dword_1E4A23000, v47, v48, "Handling rotation animation %{public}s.", v50, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v51);
        MEMORY[0x1E691FE80](v51, -1, -1);
        v57 = v50;
        v46 = v73;
        MEMORY[0x1E691FE80](v57, -1, -1);
      }

      else
      {

        sub_1E4A6EFA8(v11, type metadata accessor for WKPosterDynamicRotationState);
      }

      if (sub_1E4AAA5B0())
      {
        *(v46 + 176) = v32;
      }

      else
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](KeyPath);
        *(&v63 - 2) = v46;
        *(&v63 - 1) = v32;
        v74[0] = v46;
        sub_1E4A6F0B4(&qword_1EE042900, type metadata accessor for WKWallpaperPosterLayerViewModel, &unk_1E4AB2458);
        sub_1E4AAA050();
      }

      v59 = v70;
      (*v67)(v7, v13, v70);
      v60 = sub_1E4AAA0C0();
      v61 = sub_1E4AAAA20();
      if (os_log_type_enabled(v60, v61))
      {
        v36 = v7;
        v37 = v59;
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v74[0] = v39;
        *v38 = v65;
        v40 = sub_1E4AA9FF0();
        v42 = v41;
        v43 = v37;
        v7 = v36;
        (*v66)(v36, v43);
        v44 = v40;
        v13 = v64;
        v45 = sub_1E4A85938(v44, v42, v74);

        *(v38 + 4) = v45;
        _os_log_impl(&dword_1E4A23000, v60, v61, "Completed rotation animation %{public}s.", v38, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v39);
        MEMORY[0x1E691FE80](v39, -1, -1);
        MEMORY[0x1E691FE80](v38, -1, -1);
        swift_unknownObjectRelease();
      }

      else
      {

        (*v66)(v7, v59);
        swift_unknownObjectRelease();
      }

      v33 = v68;
      v11 = v69;
      v34 += 16;
      v31 = v71 - 1;
    }

    while (v71 != 1);
  }

  return sub_1E4A6EFA8(v13, type metadata accessor for WKPosterDynamicRotationState);
}

void sub_1E4A6D014(unint64_t a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for WKPosterDynamicRotationState(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E718, &unk_1E4AB19F0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v73 - v10;
  v12 = v2 + OBJC_IVAR____TtC12WallpaperKit24WKDynamicRotationManager_rotationState;
  swift_beginAccess();
  v13 = *(v12 + v6[8]);
  if (v13 != a1)
  {
    v14 = v2 + OBJC_IVAR____TtC12WallpaperKit24WKDynamicRotationManager_delegate;
    if (swift_unknownObjectWeakLoadStrong() && (v15 = *(v14 + 8), ObjectType = swift_getObjectType(), LOBYTE(v15) = (*(v15 + 8))(ObjectType, v15), swift_unknownObjectRelease(), (v15 & 1) != 0))
    {
      if (a2)
      {
        v17 = qword_1EE0424A0;
        v18 = a2;
        if (v17 != -1)
        {
          swift_once();
        }

        v19 = sub_1E4AAA0E0();
        __swift_project_value_buffer(v19, qword_1EE048B40);
        v20 = sub_1E4AAA0C0();
        v21 = sub_1E4AAAA20();
        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          v76 = v18;
          v23 = v22;
          v75 = swift_slowAlloc();
          v77[0] = v75;
          *v23 = 136446466;
          v24 = WKStringForInterfaceOrientation(v13);
          v74 = v21;
          v25 = v24;
          v26 = sub_1E4AAA8A0();
          v73 = v20;
          v28 = v27;

          v29 = sub_1E4A85938(v26, v28, v77);

          *(v23 + 4) = v29;
          *(v23 + 12) = 2082;
          v30 = WKStringForInterfaceOrientation(a1);
          v31 = sub_1E4AAA8A0();
          v33 = v32;

          v34 = sub_1E4A85938(v31, v33, v77);

          *(v23 + 14) = v34;
          v35 = v73;
          _os_log_impl(&dword_1E4A23000, v73, v74, "Starting animation of device orientation; currentOrientation=%{public}s, toOrientation=%{public}s", v23, 0x16u);
          v36 = v75;
          swift_arrayDestroy();
          MEMORY[0x1E691FE80](v36, -1, -1);
          v37 = v23;
          v18 = v76;
          MEMORY[0x1E691FE80](v37, -1, -1);
        }

        else
        {
        }

        v64 = OBJC_IVAR____TtC12WallpaperKit24WKDynamicRotationManager_displayLink;
        [*(v3 + OBJC_IVAR____TtC12WallpaperKit24WKDynamicRotationManager_displayLink) invalidate];
        v65 = *(v12 + v6[5]);
        v66 = type metadata accessor for WKPosterDynamicRotationAnimationState(0);
        *&v11[v66[7]] = v18;
        *&v11[v66[5]] = v13;
        *&v11[v66[6]] = a1;
        v67 = v18;
        sub_1E4AAA020();
        *&v11[v66[8]] = CFAbsoluteTimeGetCurrent();
        *&v11[v66[9]] = sub_1E4A93188(v13, a1, v65);
        *&v11[v66[10]] = v68;
        (*(*(v66 - 1) + 56))(v11, 0, 1, v66);
        v69 = OBJC_IVAR____TtC12WallpaperKit24WKDynamicRotationManager_animationState;
        swift_beginAccess();
        sub_1E4A6EBDC(v11, v3 + v69);
        swift_endAccess();
        v70 = [objc_opt_self() displayLinkWithTarget:v3 selector:sel_displayLinkFired_];
        [v67 preferredFrameRateRange];
        [v70 setPreferredFrameRateRange_];
        v71 = [objc_opt_self() currentRunLoop];
        [v70 addToRunLoop:v71 forMode:*MEMORY[0x1E695DA28]];

        v72 = *(v3 + v64);
        *(v3 + v64) = v70;
      }

      else
      {
        if (qword_1EE0424A0 != -1)
        {
          swift_once();
        }

        v48 = sub_1E4AAA0E0();
        __swift_project_value_buffer(v48, qword_1EE048B40);
        v49 = sub_1E4AAA0C0();
        v50 = sub_1E4AAAA20();
        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          LODWORD(v75) = v50;
          v52 = v51;
          v76 = swift_slowAlloc();
          v77[0] = v76;
          *v52 = 136446466;
          v53 = WKStringForInterfaceOrientation(v13);
          v54 = sub_1E4AAA8A0();
          v56 = v55;

          v57 = sub_1E4A85938(v54, v56, v77);

          *(v52 + 4) = v57;
          *(v52 + 12) = 2082;
          v58 = WKStringForInterfaceOrientation(a1);
          v59 = sub_1E4AAA8A0();
          v61 = v60;

          v62 = sub_1E4A85938(v59, v61, v77);

          *(v52 + 14) = v62;
          _os_log_impl(&dword_1E4A23000, v49, v75, "Updating orientation change without animating because animation settings were missing; orientation=%{public}s, newOrientation=%{public}s", v52, 0x16u);
          v63 = v76;
          swift_arrayDestroy();
          MEMORY[0x1E691FE80](v63, -1, -1);
          MEMORY[0x1E691FE80](v52, -1, -1);
        }

        sub_1E4AAA020();
        *&v8[v6[5]] = sub_1E4A93090(a1);
        *&v8[v6[6]] = 0x3FF0000000000000;
        *&v8[v6[7]] = v13;
        *&v8[v6[8]] = a1;
        sub_1E4A6DE68(v8);
        sub_1E4A6EFA8(v8, type metadata accessor for WKPosterDynamicRotationState);
      }
    }

    else
    {
      if (qword_1EE0424A0 != -1)
      {
        swift_once();
      }

      v38 = sub_1E4AAA0E0();
      __swift_project_value_buffer(v38, qword_1EE048B40);
      v39 = sub_1E4AAA0C0();
      v40 = sub_1E4AAAA20();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v77[0] = v42;
        *v41 = 136446210;
        v43 = WKStringForInterfaceOrientation(a1);
        v44 = sub_1E4AAA8A0();
        v46 = v45;

        v47 = sub_1E4A85938(v44, v46, v77);

        *(v41 + 4) = v47;
        _os_log_impl(&dword_1E4A23000, v39, v40, "Rotation manager was not granted a rendering session; Skipping rotation to %{public}s", v41, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v42);
        MEMORY[0x1E691FE80](v42, -1, -1);
        MEMORY[0x1E691FE80](v41, -1, -1);
      }
    }
  }
}

uint64_t sub_1E4A6D7E8()
{
  v1 = v0;
  v2 = type metadata accessor for WKPosterDynamicRotationState(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E718, &unk_1E4AB19F0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v18 - v6;
  if (qword_1EE0424A0 != -1)
  {
    swift_once();
  }

  v8 = sub_1E4AAA0E0();
  __swift_project_value_buffer(v8, qword_1EE048B40);
  v9 = sub_1E4AAA0C0();
  v10 = sub_1E4AAAA20();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1E4A23000, v9, v10, "Rotation manager was invalidated", v11, 2u);
    MEMORY[0x1E691FE80](v11, -1, -1);
  }

  v12 = OBJC_IVAR____TtC12WallpaperKit24WKDynamicRotationManager_displayLink;
  [*(v1 + OBJC_IVAR____TtC12WallpaperKit24WKDynamicRotationManager_displayLink) invalidate];
  v13 = *(v1 + v12);
  *(v1 + v12) = 0;

  v14 = type metadata accessor for WKPosterDynamicRotationAnimationState(0);
  (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
  v15 = OBJC_IVAR____TtC12WallpaperKit24WKDynamicRotationManager_animationState;
  swift_beginAccess();
  sub_1E4A6EBDC(v7, v1 + v15);
  swift_endAccess();
  *(v1 + 16) = MEMORY[0x1E69E7CC0];

  *(v1 + OBJC_IVAR____TtC12WallpaperKit24WKDynamicRotationManager_delegate + 8) = 0;
  swift_unknownObjectWeakAssign();
  sub_1E4AAA020();
  *&v4[v2[5]] = 0;
  *&v4[v2[6]] = 0x3FF0000000000000;
  *&v4[v2[7]] = 0;
  *&v4[v2[8]] = 0;
  v16 = OBJC_IVAR____TtC12WallpaperKit24WKDynamicRotationManager_rotationState;
  swift_beginAccess();
  sub_1E4A6F008(v4, v1 + v16);
  return swift_endAccess();
}

id sub_1E4A6DA90(void *a1)
{
  v3 = type metadata accessor for WKPosterDynamicRotationState(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E718, &unk_1E4AB19F0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v27 - v7;
  v9 = type metadata accessor for WKPosterDynamicRotationAnimationState(0);
  v10 = *(v9 - 1);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC12WallpaperKit24WKDynamicRotationManager_animationState;
  swift_beginAccess();
  sub_1E4A6EDDC(v1 + v13, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1E4A6EE4C(v8);
    if (qword_1EE0424A0 != -1)
    {
      swift_once();
    }

    v14 = sub_1E4AAA0E0();
    __swift_project_value_buffer(v14, qword_1EE048B40);
    v15 = sub_1E4AAA0C0();
    v16 = sub_1E4AAAA00();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1E4A23000, v15, v16, "Display link fired with no animation state", v17, 2u);
      MEMORY[0x1E691FE80](v17, -1, -1);
    }

    return [a1 invalidate];
  }

  else
  {
    sub_1E4A6EF40(v8, v12, type metadata accessor for WKPosterDynamicRotationAnimationState);
    [*&v12[v9[7]] progressAtTime_];
    v20 = v19;
    v21 = *&v12[v9[9]];
    v22 = fmod(v21 + v20 * (*&v12[v9[10]] - v21), 360.0);
    v23 = v9[6];
    v24 = *&v12[v9[5]];
    v25 = *&v12[v23];
    v26 = sub_1E4AAA030();
    (*(*(v26 - 8) + 16))(v5, v12, v26);
    *&v5[v3[5]] = v22;
    *&v5[v3[6]] = v20;
    *&v5[v3[7]] = v24;
    *&v5[v3[8]] = v25;
    sub_1E4A6DE68(v5);
    sub_1E4A6EFA8(v5, type metadata accessor for WKPosterDynamicRotationState);
    return sub_1E4A6EFA8(v12, type metadata accessor for WKPosterDynamicRotationAnimationState);
  }
}

uint64_t sub_1E4A6DE68(uint64_t a1)
{
  v3 = sub_1E4AAA760();
  v39 = *(v3 - 8);
  v40 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v37 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_1E4AAA780();
  v36 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v35 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for WKPosterDynamicRotationState(0);
  v7 = v6 - 8;
  v33 = *(v6 - 8);
  v8 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v41 = sub_1E4AAA7A0();
  v34 = *(v41 - 8);
  v9 = MEMORY[0x1EEE9AC00](v41);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v32 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E718, &unk_1E4AB19F0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v32 - v15;
  v17 = *(v1 + 16);
  v43 = a1;

  sub_1E4A6E458(sub_1E4A6EB44, v42, v17);

  v18 = OBJC_IVAR____TtC12WallpaperKit24WKDynamicRotationManager_rotationState;
  swift_beginAccess();
  sub_1E4A6EB78(a1, v1 + v18);
  result = swift_endAccess();
  if (*(a1 + *(v7 + 32)) >= 1.0)
  {
    v20 = OBJC_IVAR____TtC12WallpaperKit24WKDynamicRotationManager_displayLink;
    [*(v1 + OBJC_IVAR____TtC12WallpaperKit24WKDynamicRotationManager_displayLink) invalidate];
    v21 = *(v1 + v20);
    *(v1 + v20) = 0;

    v22 = type metadata accessor for WKPosterDynamicRotationAnimationState(0);
    (*(*(v22 - 8) + 56))(v16, 1, 1, v22);
    v23 = OBJC_IVAR____TtC12WallpaperKit24WKDynamicRotationManager_animationState;
    swift_beginAccess();
    sub_1E4A6EBDC(v16, v1 + v23);
    swift_endAccess();
    sub_1E4A6EC4C();
    v24 = sub_1E4AAAA50();
    sub_1E4AAA790();
    sub_1E4AAA7E0();
    v34 = *(v34 + 8);
    (v34)(v11, v41);
    v25 = swift_allocObject();
    swift_weakInit();
    sub_1E4A6EC98(a1, &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    v26 = (*(v33 + 80) + 24) & ~*(v33 + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = v25;
    sub_1E4A6EF40(&v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v26, type metadata accessor for WKPosterDynamicRotationState);
    aBlock[4] = sub_1E4A6ECFC;
    aBlock[5] = v27;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E4A6E8B8;
    aBlock[3] = &block_descriptor_0;
    v28 = _Block_copy(aBlock);

    v29 = v35;
    sub_1E4AAA770();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1E4A6F0B4(&qword_1EE042230, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E720, &qword_1E4AB33E0);
    sub_1E4A6ED78();
    v30 = v37;
    v31 = v40;
    sub_1E4AAAB40();
    MEMORY[0x1E691EE10](v13, v29, v30, v28);
    _Block_release(v28);

    (*(v39 + 8))(v30, v31);
    (*(v36 + 8))(v29, v38);
    return (v34)(v13, v41);
  }

  return result;
}

void (*sub_1E4A6E458(void (*result)(__int128 *), uint64_t a2, uint64_t a3))(__int128 *)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v5 = result;
    for (i = (a3 + 32); ; ++i)
    {
      v7 = *i;
      swift_unknownObjectRetain();
      v5(&v7);
      if (v3)
      {
        break;
      }

      result = swift_unknownObjectRelease();
      if (!--v4)
      {
        return result;
      }
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1E4A6E4F0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for WKPosterDynamicRotationState(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E718, &unk_1E4AB19F0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v28 - v7;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    v11 = OBJC_IVAR____TtC12WallpaperKit24WKDynamicRotationManager_animationState;
    swift_beginAccess();
    sub_1E4A6EDDC(v10 + v11, v8);
    v12 = type metadata accessor for WKPosterDynamicRotationAnimationState(0);
    if ((*(*(v12 - 8) + 48))(v8, 1, v12) == 1)
    {
      sub_1E4A6EE4C(v8);
      if (qword_1EE0424A0 != -1)
      {
        swift_once();
      }

      v13 = sub_1E4AAA0E0();
      __swift_project_value_buffer(v13, qword_1EE048B40);
      sub_1E4A6EC98(a2, v5);
      v14 = sub_1E4AAA0C0();
      v15 = sub_1E4AAAA20();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v28[0] = v17;
        *v16 = 136446210;
        v18 = WKStringForInterfaceOrientation(*&v5[*(v3 + 32)]);
        v19 = sub_1E4AAA8A0();
        v21 = v20;

        sub_1E4A6EFA8(v5, type metadata accessor for WKPosterDynamicRotationState);
        v22 = sub_1E4A85938(v19, v21, v28);

        *(v16 + 4) = v22;
        _os_log_impl(&dword_1E4A23000, v14, v15, "Completed animation of device orientation to %{public}s", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v17);
        MEMORY[0x1E691FE80](v17, -1, -1);
        MEMORY[0x1E691FE80](v16, -1, -1);
      }

      else
      {

        v23 = sub_1E4A6EFA8(v5, type metadata accessor for WKPosterDynamicRotationState);
      }

      v24 = *(v10 + 16);
      MEMORY[0x1EEE9AC00](v23);
      v28[-2] = a2;

      sub_1E4A6E458(sub_1E4A6EEB4, &v28[-4], v24);

      v25 = v10 + OBJC_IVAR____TtC12WallpaperKit24WKDynamicRotationManager_delegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v26 = *(v25 + 8);
        ObjectType = swift_getObjectType();
        (*(v26 + 16))(ObjectType, v26);

        return swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    else
    {

      return sub_1E4A6EE4C(v8);
    }
  }

  return result;
}

uint64_t sub_1E4A6E8B8(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_1E4A6E8FC()
{

  sub_1E4A6EFA8(v0 + OBJC_IVAR____TtC12WallpaperKit24WKDynamicRotationManager_rotationState, type metadata accessor for WKPosterDynamicRotationState);

  sub_1E4A6EE4C(v0 + OBJC_IVAR____TtC12WallpaperKit24WKDynamicRotationManager_animationState);
  sub_1E4A6F06C(v0 + OBJC_IVAR____TtC12WallpaperKit24WKDynamicRotationManager_delegate);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WKDynamicRotationManager(uint64_t a1)
{
  result = qword_1EE042C38;
  if (!qword_1EE042C38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E4A6EA00(uint64_t a1)
{
  type metadata accessor for WKPosterDynamicRotationState(319);
  if (v1 <= 0x3F)
  {
    sub_1E4A6EAEC(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1E4A6EAEC(uint64_t a1)
{
  if (!qword_1EE0425F0)
  {
    type metadata accessor for WKPosterDynamicRotationAnimationState(255);
    v1 = sub_1E4AAAB00();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE0425F0);
    }
  }
}

uint64_t sub_1E4A6EB78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WKPosterDynamicRotationState(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E4A6EBDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E718, &unk_1E4AB19F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E4A6EC4C()
{
  result = qword_1EE0421E0;
  if (!qword_1EE0421E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE0421E0);
  }

  return result;
}

uint64_t sub_1E4A6EC98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WKPosterDynamicRotationState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E4A6ECFC()
{
  v1 = *(type metadata accessor for WKPosterDynamicRotationState(0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_1E4A6E4F0(v2, v3);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1E4A6ED78()
{
  result = qword_1EE042200;
  if (!qword_1EE042200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF8E720, &qword_1E4AB33E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE042200);
  }

  return result;
}

uint64_t sub_1E4A6EDDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E718, &unk_1E4AB19F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E4A6EE4C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E718, &unk_1E4AB19F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1E4A6EF08(double **a1, uint64_t a2, uint64_t a3, double (*a4)(double **, uint64_t, uint64_t))
{
  v5 = a4(a1, a2, a3);
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

uint64_t sub_1E4A6EF40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E4A6EFA8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E4A6F008(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WKPosterDynamicRotationState(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E4A6F0B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t WKLayeredStillWallpaper.wallpaperValue.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [*(*v1 + 16) wallpaperValue];
  type metadata accessor for WKLayeredStillWallpaperInput.ImplementationWrapper();
  result = swift_allocObject();
  *(result + 16) = v3;
  *a1 = result;
  *(a1 + 8) = 1;
  return result;
}

uint64_t WKLayeredStillWallpaper.thumbnailImageURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [*(*v1 + 16) thumbnailImageURL];
  if (v3)
  {
    v4 = v3;
    sub_1E4AA9FC0();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1E4AA9FE0();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

id WKLayeredStillWallpaper.thumbnailImage.getter()
{
  v1 = [*(*v0 + 16) thumbnailImage];

  return v1;
}

uint64_t WKLayeredStillWallpaper.init(identifier:name:backgroundThumbnailImageURL:foregroundThumbnailImageURL:floatingThumbnailImageURL:backgroundFullSizeImageURL:foregroundFullSizeImageURL:floatingFullSizeImageURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10)
{
  v56 = a3;
  v58 = a2;
  v59 = a1;
  v64 = a9;
  v65 = a10;
  v66 = a8;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E7C0, &qword_1E4AAEA40);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v53 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v53 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v53 - v25;
  v27 = MEMORY[0x1EEE9AC00](v24);
  v29 = &v53 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v53 - v30;
  v63 = a4;
  sub_1E4A48054(a4, &v53 - v30);
  v62 = a5;
  sub_1E4A48054(a5, v29);
  v61 = a6;
  v54 = v26;
  sub_1E4A48054(a6, v26);
  v60 = a7;
  v55 = v23;
  sub_1E4A48054(a7, v23);
  v57 = v20;
  sub_1E4A48054(v66, v20);
  sub_1E4A48054(v65, v17);
  v58 = sub_1E4AAA870();

  v32 = sub_1E4AA9FE0();
  v33 = *(v32 - 8);
  v34 = *(v33 + 48);
  v35 = 0;
  if (v34(v31, 1, v32) != 1)
  {
    v35 = sub_1E4AA9FA0();
    (*(v33 + 8))(v31, v32);
  }

  v56 = v35;
  if (v34(v29, 1, v32) == 1)
  {
    v36 = 0;
  }

  else
  {
    v36 = sub_1E4AA9FA0();
    (*(v33 + 8))(v29, v32);
  }

  v37 = v57;
  v38 = v54;
  if (v34(v54, 1, v32) == 1)
  {
    v39 = 0;
  }

  else
  {
    v39 = sub_1E4AA9FA0();
    (*(v33 + 8))(v38, v32);
  }

  v40 = v55;
  if (v34(v55, 1, v32) == 1)
  {
    v41 = 0;
  }

  else
  {
    v41 = sub_1E4AA9FA0();
    (*(v33 + 8))(v40, v32);
  }

  if (v34(v37, 1, v32) == 1)
  {
    v42 = 0;
  }

  else
  {
    v43 = sub_1E4AA9FA0();
    v44 = v37;
    v42 = v43;
    (*(v33 + 8))(v44, v32);
  }

  if (v34(v17, 1, v32) == 1)
  {
    v45 = 0;
  }

  else
  {
    v46 = sub_1E4AA9FA0();
    v47 = v17;
    v45 = v46;
    (*(v33 + 8))(v47, v32);
  }

  v48 = objc_allocWithZone(WKLayeredStillWallpaper);
  v49 = v58;
  v50 = v56;
  v51 = [v48 initWithIdentifier:v59 name:v58 backgroundThumbnailImageURL:v56 foregroundThumbnailImageURL:v36 floatingThumbnailImageURL:v39 backgroundFullSizeImageURL:v41 foregroundFullSizeImageURL:v42 floatingFullSizeImageURL:v45];

  sub_1E4A480C4(v65);
  sub_1E4A480C4(v66);
  sub_1E4A480C4(v60);
  sub_1E4A480C4(v61);
  sub_1E4A480C4(v62);
  sub_1E4A480C4(v63);
  type metadata accessor for WKLayeredStillWallpaper.ImplementationWrapper();
  result = swift_allocObject();
  *(result + 16) = v51;
  *v64 = result;
  return result;
}

Swift::OpaquePointer_optional __swiftcall WKLayeredStillWallpaper.propertyListRepresentation()()
{
  v1 = [*(*v0 + 16) propertyListRepresentation];
  if (v1)
  {
    v3 = v1;
    v4 = sub_1E4AAA810();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  result.value._rawValue = v5;
  result.is_nil = v2;
  return result;
}

id WKLayeredStillWallpaper.copyWallpaperContents(to:)()
{
  v6[1] = *MEMORY[0x1E69E9840];
  v1 = *(*v0 + 16);
  v2 = sub_1E4AA9FA0();
  v6[0] = 0;
  v3 = [v1 copyWallpaperContentsToDestinationDirectoryURL:v2 error:v6];

  if (v3)
  {
    return v6[0];
  }

  v5 = v6[0];
  sub_1E4AA9F60();

  return swift_willThrow();
}

uint64_t sub_1E4A6F904@<X0>(uint64_t a1@<X8>)
{
  v3 = [*(*v1 + 16) wallpaperValue];
  type metadata accessor for WKLayeredStillWallpaperInput.ImplementationWrapper();
  result = swift_allocObject();
  *(result + 16) = v3;
  *a1 = result;
  *(a1 + 8) = 1;
  return result;
}

uint64_t WKLayeredStillWallpaper.hash(into:)()
{
  v1 = *(*v0 + 16);
  v2 = sub_1E4AAAAE0();

  return MEMORY[0x1E691F1E0](v2);
}

uint64_t WKLayeredStillWallpaper.hashValue.getter()
{
  v1 = *v0;
  sub_1E4AAAE00();
  v2 = *(v1 + 16);
  v3 = sub_1E4AAAAE0();

  MEMORY[0x1E691F1E0](v3);
  return sub_1E4AAAE40();
}

unint64_t sub_1E4A6FA6C(uint64_t a1)
{
  result = sub_1E4A6FA94();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E4A6FA94()
{
  result = qword_1EE0438C0;
  if (!qword_1EE0438C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0438C0);
  }

  return result;
}

double sub_1E4A6FB00(uint64_t a1, uint64_t a2)
{
  sub_1E4A6FB3C();
  sub_1E4AAA330();
  return v3;
}

unint64_t sub_1E4A6FB3C()
{
  result = qword_1EE043F80;
  if (!qword_1EE043F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE043F80);
  }

  return result;
}

double sub_1E4A6FBB0@<D0>(_OWORD *a1@<X8>)
{
  if (qword_1EE043F90 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  result = *&xmmword_1EE048C00;
  *a1 = xmmword_1EE048C00;
  return result;
}

uint64_t sub_1E4A6FC14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1E4A6FC78();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

unint64_t sub_1E4A6FC78()
{
  result = qword_1ECF8E728;
  if (!qword_1ECF8E728)
  {
    type metadata accessor for CGSize(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF8E728);
  }

  return result;
}

uint64_t WKLayeredAnimationWallpaperInput.init(backgroundAnimationFileURL:foregroundAnimationFileURL:floatingAnimationFileURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E7C0, &qword_1E4AAEA40);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v20 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v20 - v15;
  sub_1E4A48054(a1, &v20 - v15);
  sub_1E4A48054(a2, v14);
  sub_1E4A48054(a3, v11);
  v17 = objc_allocWithZone(WKLayeredAnimationWallpaperInput);
  v18 = sub_1E4A6FF84(v16, v14, v11);
  sub_1E4A480C4(a3);
  sub_1E4A480C4(a2);
  sub_1E4A480C4(a1);
  type metadata accessor for WKLayeredAnimationWallpaperInput.ImplementationWrapper();
  result = swift_allocObject();
  *(result + 16) = v18;
  *a4 = result;
  return result;
}

uint64_t WKLayeredAnimationWallpaperInput.hash(into:)()
{
  v1 = *(*v0 + 16);
  v2 = sub_1E4AAAAE0();

  return MEMORY[0x1E691F1E0](v2);
}

uint64_t WKLayeredAnimationWallpaperInput.hashValue.getter()
{
  v1 = *v0;
  sub_1E4AAAE00();
  v2 = *(v1 + 16);
  v3 = sub_1E4AAAAE0();

  MEMORY[0x1E691F1E0](v3);
  return sub_1E4AAAE40();
}

uint64_t WKLayeredAnimationWallpaperInput.description.getter()
{
  v1 = [*(*v0 + 16) description];
  v2 = sub_1E4AAA8A0();

  return v2;
}

id sub_1E4A6FF84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1E4AA9FE0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  v11 = 0;
  if (v10(a1, 1, v8) != 1)
  {
    v11 = sub_1E4AA9FA0();
    (*(v9 + 8))(a1, v8);
  }

  if (v10(a2, 1, v8) == 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = sub_1E4AA9FA0();
    (*(v9 + 8))(a2, v8);
  }

  if (v10(a3, 1, v8) == 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = sub_1E4AA9FA0();
    (*(v9 + 8))(a3, v8);
  }

  v14 = [v4 initWithBackgroundAnimationFileURL:v11 foregroundAnimationFileURL:v12 floatingAnimationFileURL:v13];

  return v14;
}

unint64_t sub_1E4A70160()
{
  result = qword_1ECF8E730;
  if (!qword_1ECF8E730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF8E730);
  }

  return result;
}

uint64_t sub_1E4A701C4(uint64_t a1, uint64_t a2)
{
  sub_1E4A5575C();
  if (sub_1E4AAAB10())
  {

    return 0;
  }

  else
  {
    v3 = sub_1E4AAAB10();

    if (v3)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t dispatch thunk of WKWallpaperPosterEditingDelegate.editorFinalize(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 96) + **(a5 + 96));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1E4A5ECA0;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t type metadata accessor for WKAnimationPackageLayerState(uint64_t a1)
{
  result = qword_1EE042A50;
  if (!qword_1EE042A50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E4A7071C(uint64_t a1)
{
  sub_1E4A707B0(319);
  if (v1 <= 0x3F)
  {
    sub_1E4A70808();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1E4A707B0(uint64_t a1)
{
  if (!qword_1EE042468)
  {
    sub_1E4AAA1C0();
    v1 = sub_1E4AAAB00();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE042468);
    }
  }
}

void sub_1E4A70808()
{
  if (!qword_1EE042A68)
  {
    v0 = sub_1E4AAAB00();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE042A68);
    }
  }
}

uint64_t getEnumTagSinglePayload for WKAnimationPackageLayerState.DeviceOrientationStyle(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for WKAnimationPackageLayerState.DeviceOrientationStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1E4A70908@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for WKAnimationPackageLayerState(0);
  v46 = *(v6 - 8);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v7 + 20);
  v11 = sub_1E4AAA1C0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 56);
  v13(&v9[v10], 1, 1, v11);
  if (!a2)
  {
    if (qword_1EE042498 != -1)
    {
      swift_once();
    }

    v15 = sub_1E4AAA0E0();
    __swift_project_value_buffer(v15, qword_1EE048B28);
    v16 = sub_1E4AAA0C0();
    v17 = sub_1E4AAAA00();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = a3;
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1E4A23000, v16, v17, "Unknown State encountered with no name.", v19, 2u);
      v20 = v19;
      a3 = v18;
      MEMORY[0x1E691FE80](v20, -1, -1);
    }

    v21 = sub_1E4AAA0C0();
    v22 = sub_1E4AAAA10();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1E4A23000, v21, v22, "Unknown State encountered with no name.", v23, 2u);
      MEMORY[0x1E691FE80](v23, -1, -1);
    }

    goto LABEL_11;
  }

  v45 = a3;
  if (sub_1E4AAA900())
  {
    sub_1E4A4DC88(&v9[v10], &qword_1ECF8E678, qword_1E4AB1DF0);
    v14 = MEMORY[0x1E697DBB8];
LABEL_14:
    (*(v12 + 104))(&v9[v10], *v14, v11);
    v26 = 0;
    goto LABEL_16;
  }

  v25 = sub_1E4AAA900();
  sub_1E4A4DC88(&v9[v10], &qword_1ECF8E678, qword_1E4AB1DF0);
  if (v25)
  {
    v14 = MEMORY[0x1E697DBA8];
    goto LABEL_14;
  }

  v26 = 1;
LABEL_16:
  v13(&v9[v10], v26, 1, v11);
  v27 = &v9[*(v6 + 24)];
  v48 = a1;
  v49 = a2;
  strcpy(v47, "LandscapeLeft");
  HIWORD(v47[3]) = -4864;
  sub_1E4A5575C();
  if (sub_1E4AAAB20())
  {
    *v27 = 4;
    v27[8] = 1;
    goto LABEL_24;
  }

  v48 = a1;
  v49 = a2;
  strcpy(v47, "LandscapeRight");
  HIBYTE(v47[3]) = -18;
  if (sub_1E4AAAB20())
  {
    v28 = 3;
LABEL_22:
    *v27 = v28;
    v29 = 1;
LABEL_23:
    v27[8] = v29;
    goto LABEL_24;
  }

  v48 = a1;
  v49 = a2;
  strcpy(v47, "PortraitDown");
  BYTE1(v47[3]) = 0;
  HIWORD(v47[3]) = -5120;
  if (sub_1E4AAAB20())
  {
    v28 = 2;
    goto LABEL_22;
  }

  v48 = a1;
  v49 = a2;
  strcpy(v47, "PortraitUp");
  HIBYTE(v47[2]) = 0;
  v47[3] = -369098752;
  if (sub_1E4AAAB20())
  {
    *v27 = 1;
    v27[8] = 1;
  }

  else
  {
    v48 = a1;
    v49 = a2;
    strcpy(v47, "Landscape");
    HIWORD(v47[2]) = 0;
    v47[3] = -385875968;
    if (sub_1E4AAAB20())
    {
      *v27 = 1;
      v27[8] = 0;
    }

    else
    {
      v48 = a1;
      v49 = a2;
      strcpy(v47, "Portrait");
      BYTE1(v47[2]) = 0;
      HIWORD(v47[2]) = 0;
      v47[3] = -402653184;
      v43 = sub_1E4AAAB20();
      *v27 = 0;
      if ((v43 & 1) == 0)
      {
        v29 = -1;
        goto LABEL_23;
      }

      v27[8] = 0;
    }
  }

LABEL_24:
  v30 = v45;
  if ((sub_1E4AAA8F0() & 1) == 0)
  {
    if (sub_1E4AAA8F0())
    {

      v31 = 1;
LABEL_31:
      *v9 = v31;
      goto LABEL_32;
    }

    if (sub_1E4AAA8F0() & 1) != 0 || (sub_1E4AAA8F0())
    {

      v31 = 2;
      goto LABEL_31;
    }

    if (qword_1EE042498 != -1)
    {
      swift_once();
    }

    v32 = sub_1E4AAA0E0();
    v33 = __swift_project_value_buffer(v32, qword_1EE048B28);

    v44[1] = v33;
    v34 = sub_1E4AAA0C0();
    v35 = sub_1E4AAAA00();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v48 = v37;
      *v36 = 136446210;
      *(v36 + 4) = sub_1E4A85938(a1, a2, &v48);
      _os_log_impl(&dword_1E4A23000, v34, v35, "Unknown State encountered '%{public}s'.", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v37);
      MEMORY[0x1E691FE80](v37, -1, -1);
      MEMORY[0x1E691FE80](v36, -1, -1);
    }

    v38 = sub_1E4AAA0C0();
    v39 = sub_1E4AAAA10();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v48 = v41;
      *v40 = 136446210;
      v42 = sub_1E4A85938(a1, a2, &v48);

      *(v40 + 4) = v42;
      _os_log_impl(&dword_1E4A23000, v38, v39, "Unknown State encountered '%{public}s'.", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v41);
      MEMORY[0x1E691FE80](v41, -1, -1);
      MEMORY[0x1E691FE80](v40, -1, -1);
    }

    else
    {
    }

    a3 = v45;
LABEL_11:
    sub_1E4A4DC88(&v9[v10], &qword_1ECF8E678, qword_1E4AB1DF0);
    return (*(v46 + 56))(a3, 1, 1, v6);
  }

  *v9 = 0;
LABEL_32:
  sub_1E4A68864(v9, v30);
  (*(v46 + 56))(v30, 0, 1, v6);
  return sub_1E4A688C8(v9);
}

uint64_t sub_1E4A71104@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v95 = a5;
  v96 = a2;
  v98 = a1;
  v8 = sub_1E4AAA1C0();
  v92 = *(v8 - 8);
  v93 = v8;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v89 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v91 = &v88 - v11;
  v99 = type metadata accessor for WKAnimationPackageLayerState(0);
  v12 = *(v99 - 8);
  v13 = MEMORY[0x1EEE9AC00](v99);
  v97 = &v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v102 = (&v88 - v16);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v88 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v88 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v88 - v23;
  IsLandscape = UIInterfaceOrientationIsLandscape(a3);
  v26 = 4;
  if (!IsLandscape)
  {
    v26 = 1;
  }

  v100 = v12;
  v101 = v26;
  v27 = *(a4 + 16);
  v94 = a4;
  v90 = v27;
  if (v27)
  {
    v28 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v29 = *(v12 + 72);
    v30 = a4 + v28;
    v31 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1E4A68864(v30, v24);
      if (*v24 == v98)
      {
        sub_1E4A68988(v24, v22);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v104 = v31;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1E4A68824(0, *(v31 + 16) + 1, 1);
          v31 = v104;
        }

        v5 = *(v31 + 16);
        v33 = *(v31 + 24);
        if (v5 >= v33 >> 1)
        {
          sub_1E4A68824((v33 > 1), v5 + 1, 1);
          v31 = v104;
        }

        *(v31 + 16) = v5 + 1;
        IsLandscape = sub_1E4A68988(v22, v31 + v28 + v5 * v29);
      }

      else
      {
        IsLandscape = sub_1E4A688C8(v24);
      }

      v30 += v29;
      --v27;
    }

    while (v27);
  }

  else
  {
    v31 = MEMORY[0x1E69E7CC0];
  }

  MEMORY[0x1EEE9AC00](IsLandscape);
  *(&v88 - 2) = v96;
  v34 = sub_1E4A721E0(sub_1E4A7326C, (&v88 - 4), v31);
  v35 = *(v34 + 16);
  if (v35)
  {
    v36 = 0;
    v37 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v36 >= *(v34 + 16))
      {
        __break(1u);
LABEL_56:
        swift_once();
LABEL_33:
        v47 = sub_1E4AAA0E0();
        __swift_project_value_buffer(v47, qword_1EE048B28);
        v48 = v91;
        v49 = v92;
        v50 = v93;
        (*(v92 + 16))(v91, v96, v93);

        v51 = sub_1E4AAA0C0();
        v52 = sub_1E4AAAA00();

        if (os_log_type_enabled(v51, v52))
        {
          LODWORD(v96) = v52;
          v102 = v51;
          v53 = swift_slowAlloc();
          v88 = swift_slowAlloc();
          v104 = v88;
          *v53 = 136446978;
          v54 = v89;
          (*(v49 + 104))(v89, *MEMORY[0x1E697DBB8], v50);
          v55 = sub_1E4AAA1B0();
          v56 = *(v49 + 8);
          v56(v54, v50);
          v57 = (v55 & 1) == 0;
          if (v55)
          {
            v58 = 0x746867696CLL;
          }

          else
          {
            v58 = 1802658148;
          }

          v59 = 0xE500000000000000;
          v60 = v48;
          if (v57)
          {
            v61 = 0xE400000000000000;
          }

          else
          {
            v61 = 0xE500000000000000;
          }

          v56(v60, v50);
          v62 = sub_1E4A85938(v58, v61, &v104);

          *(v53 + 4) = v62;
          *(v53 + 12) = 2082;
          v63 = WKStringForInterfaceOrientation(v101);
          v64 = sub_1E4AAA8A0();
          v66 = v65;

          v67 = sub_1E4A85938(v64, v66, &v104);

          *(v53 + 14) = v67;
          *(v53 + 22) = 2082;
          if (v98)
          {
            if (v98 == 1)
            {
              v59 = 0xE600000000000000;
              v68 = 0x64656B636F6CLL;
            }

            else
            {
              v59 = 0xE800000000000000;
              v68 = 0x64656B636F6C6E75;
            }
          }

          else
          {
            v68 = 0x7065656C73;
          }

          v69 = sub_1E4A85938(v68, v59, &v104);

          *(v53 + 24) = v69;
          *(v53 + 32) = 2082;
          v70 = MEMORY[0x1E69E7CC0];
          if (v90)
          {
            v101 = v53;
            v103 = MEMORY[0x1E69E7CC0];
            v71 = v90;
            sub_1E4A68844(0, v90, 0);
            v70 = v103;
            v72 = v94 + ((*(v35 + 80) + 32) & ~*(v35 + 80));
            v73 = *(v35 + 72);
            do
            {
              v74 = v97;
              sub_1E4A68864(v72, v97);
              sub_1E4A71BCC();
              v75 = sub_1E4AAA8B0();
              v77 = v76;

              sub_1E4A688C8(v74);
              v103 = v70;
              v79 = *(v70 + 16);
              v78 = *(v70 + 24);
              if (v79 >= v78 >> 1)
              {
                sub_1E4A68844((v78 > 1), v79 + 1, 1);
                v70 = v103;
              }

              *(v70 + 16) = v79 + 1;
              v80 = v70 + 16 * v79;
              *(v80 + 32) = v75;
              *(v80 + 40) = v77;
              v72 += v73;
              --v71;
            }

            while (v71);
            v35 = v100;
            v53 = v101;
            v5 = v95;
          }

          v103 = v70;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8E638, &qword_1E4AB1790);
          sub_1E4A68924();
          v81 = sub_1E4AAA850();
          v83 = v82;

          v84 = sub_1E4A85938(v81, v83, &v104);

          *(v53 + 34) = v84;
          v85 = v102;
          _os_log_impl(&dword_1E4A23000, v102, v96, "Failed to resolve the animation state for 'colorScheme: %{public}s' 'deviceOrientation: %{public}s' 'deviceState: %{public}s' out of the possible '%{public}s'.", v53, 0x2Au);
          v86 = v88;
          swift_arrayDestroy();
          MEMORY[0x1E691FE80](v86, -1, -1);
          MEMORY[0x1E691FE80](v53, -1, -1);
        }

        else
        {

          (*(v49 + 8))(v48, v50);
        }

        v46 = 1;
        return (*(v35 + 56))(v5, v46, 1, v99);
      }

      v38 = (*(v100 + 80) + 32) & ~*(v100 + 80);
      v39 = *(v100 + 72);
      sub_1E4A68864(v34 + v38 + v39 * v36, v19);
      v40 = &v19[*(v99 + 24)];
      v41 = *v40;
      v42 = v40[8];
      v43 = UIInterfaceOrientationIsLandscape(v101);
      if (v42 == 255)
      {
        break;
      }

      if (v42)
      {
        if (v41 == v101)
        {
          break;
        }
      }

      else if (v43 == (v41 & 1))
      {
        break;
      }

      sub_1E4A688C8(v19);
LABEL_17:
      if (v35 == ++v36)
      {
        goto LABEL_30;
      }
    }

    sub_1E4A68988(v19, v102);
    v44 = swift_isUniquelyReferenced_nonNull_native();
    v104 = v37;
    if ((v44 & 1) == 0)
    {
      sub_1E4A68824(0, *(v37 + 16) + 1, 1);
      v37 = v104;
    }

    v5 = *(v37 + 16);
    v45 = *(v37 + 24);
    if (v5 >= v45 >> 1)
    {
      sub_1E4A68824((v45 > 1), v5 + 1, 1);
      v37 = v104;
    }

    *(v37 + 16) = v5 + 1;
    sub_1E4A68988(v102, v37 + v38 + v5 * v39);
    goto LABEL_17;
  }

  v37 = MEMORY[0x1E69E7CC0];
LABEL_30:

  if (!*(v37 + 16))
  {
    v5 = v95;
    v35 = v100;
    if (qword_1EE042498 != -1)
    {
      goto LABEL_56;
    }

    goto LABEL_33;
  }

  v35 = v100;
  v5 = v95;
  sub_1E4A68864(v37 + ((*(v100 + 80) + 32) & ~*(v100 + 80)), v95);

  v46 = 0;
  return (*(v35 + 56))(v5, v46, 1, v99);
}

uint64_t sub_1E4A719FC()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1E4AAAE00();
  if (v2)
  {
    MEMORY[0x1E691F1E0](1);
    MEMORY[0x1E691F1E0](v1);
  }

  else
  {
    MEMORY[0x1E691F1E0](0);
    sub_1E4AAAE20();
  }

  return sub_1E4AAAE40();
}

uint64_t sub_1E4A71A74()
{
  v1 = *v0;
  if (v0[1])
  {
    MEMORY[0x1E691F1E0](1);
    return MEMORY[0x1E691F1E0](v1);
  }

  else
  {
    MEMORY[0x1E691F1E0](0);
    return sub_1E4AAAE20();
  }
}

uint64_t sub_1E4A71AC8(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_1E4AAAE00();
  if (v3)
  {
    MEMORY[0x1E691F1E0](1);
    MEMORY[0x1E691F1E0](v2);
  }

  else
  {
    MEMORY[0x1E691F1E0](0);
    sub_1E4AAAE20();
  }

  return sub_1E4AAAE40();
}

uint64_t sub_1E4A71B3C(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    v2 = *(a2 + 8);
  }

  else
  {
    v2 = 0;
  }

  v3 = *a2 ^ *a1 ^ 1;
  if (*(a2 + 8))
  {
    v3 = 0;
  }

  if (*(a1 + 8))
  {
    v3 = v2;
  }

  return v3 & 1;
}

unint64_t sub_1E4A71B78()
{
  result = qword_1ECF8E738;
  if (!qword_1ECF8E738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF8E738);
  }

  return result;
}

uint64_t sub_1E4A71BCC()
{
  v1 = sub_1E4AAA1C0();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v51 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v52 = &v50 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E678, qword_1E4AB1DF0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v50 - v10;
  v12 = type metadata accessor for WKAnimationPackageLayerState(0);
  v54 = *(v12 + 20);
  sub_1E4A6C5D8(&v0[v54], v11);
  v53 = v2;
  v13 = *(v2 + 48);
  v14 = v13(v11, 1, v1);
  sub_1E4A4DC88(v11, &qword_1ECF8E678, qword_1E4AB1DF0);
  if (v14 == 1 && v0[*(v12 + 24) + 8] == 255)
  {
    if (!*v0)
    {
      return 0x7065656C53;
    }

    if (*v0 == 1)
    {
      return 0x64656B636F4CLL;
    }

    return 0x6B636F6C6E55;
  }

  v15 = v13;
  v16 = *v0;
  v17 = sub_1E4A72C44(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v19 = *(v17 + 2);
  v18 = *(v17 + 3);
  v20 = v19 + 1;
  if (v16)
  {
    v21 = 0xE400000000000000;
    if (v16 == 1)
    {
      v22 = 1801678668;
    }

    else
    {
      v22 = 1701670728;
    }
  }

  else
  {
    v21 = 0xE500000000000000;
    v22 = 0x7065656C53;
  }

  if (v18 >> 1 <= v19)
  {
    v50 = v19 + 1;
    v49 = sub_1E4A72C44((v18 > 1), v19 + 1, 1, v17);
    v20 = v50;
    v17 = v49;
  }

  *(v17 + 2) = v20;
  v23 = &v17[16 * v19];
  *(v23 + 4) = v22;
  *(v23 + 5) = v21;
  v24 = &v0[*(v12 + 24)];
  v25 = v24[8];
  if (v25 != 255)
  {
    v26 = *v24;
    v27 = v15;
    if (v25)
    {
      v28 = *(v17 + 3);
      v29 = v28 >> 1;
      v30 = v19 + 2;
      switch(v26)
      {
        case 2:
          v31 = 0x7469617274726F50;
          v32 = 0xEC0000006E776F44;
          if (v29 <= v20)
          {
            goto LABEL_42;
          }

          break;
        case 4:
          v31 = 0x70616373646E614CLL;
          v32 = 0xED00007466654C65;
          if (v29 <= v20)
          {
LABEL_42:
            v48 = v20;
            v17 = sub_1E4A72C44((v28 > 1), v30, 1, v17);
            v33 = v54;
            v20 = v48;
            goto LABEL_26;
          }

          break;
        case 3:
          v31 = 0x70616373646E614CLL;
          v32 = 0xEE00746867695265;
          if (v29 <= v20)
          {
            goto LABEL_42;
          }

          break;
        default:
          v31 = 0x7469617274726F50;
          v32 = 0xEA00000000007055;
          if (v29 <= v20)
          {
            goto LABEL_42;
          }

          break;
      }
    }

    else
    {
      if (v26)
      {
        v31 = 0x70616373646E614CLL;
      }

      else
      {
        v31 = 0x7469617274726F50;
      }

      if (v26)
      {
        v32 = 0xE900000000000065;
      }

      else
      {
        v32 = 0xE800000000000000;
      }

      v28 = *(v17 + 3);
      v30 = v19 + 2;
      if (v20 >= v28 >> 1)
      {
        goto LABEL_42;
      }
    }

    v33 = v54;
LABEL_26:
    *(v17 + 2) = v30;
    v34 = &v17[16 * v20];
    *(v34 + 4) = v31;
    *(v34 + 5) = v32;
    goto LABEL_27;
  }

  v27 = v15;
  v33 = v54;
LABEL_27:
  sub_1E4A6C5D8(&v0[v33], v9);
  if (v27(v9, 1, v1) == 1)
  {
    sub_1E4A4DC88(v9, &qword_1ECF8E678, qword_1E4AB1DF0);
  }

  else
  {
    v36 = v52;
    v35 = v53;
    (*(v53 + 32))(v52, v9, v1);
    v37 = v51;
    (*(v35 + 16))(v51, v36, v1);
    v38 = (*(v35 + 88))(v37, v1);
    v40 = *(v17 + 2);
    v39 = *(v17 + 3);
    v41 = v39 >> 1;
    v42 = v40 + 1;
    if (v38 == *MEMORY[0x1E697DBA8])
    {
      if (v41 <= v40)
      {
        v17 = sub_1E4A72C44((v39 > 1), v40 + 1, 1, v17);
      }

      (*(v53 + 8))(v52, v1);
      *(v17 + 2) = v42;
      v43 = &v17[16 * v40];
      *(v43 + 4) = 1802658116;
      *(v43 + 5) = 0xE400000000000000;
    }

    else
    {
      if (v41 <= v40)
      {
        v17 = sub_1E4A72C44((v39 > 1), v40 + 1, 1, v17);
      }

      v44 = *(v53 + 8);
      v44(v52, v1);
      *(v17 + 2) = v42;
      v45 = &v17[16 * v40];
      *(v45 + 4) = 0x746867694CLL;
      *(v45 + 5) = 0xE500000000000000;
      v44(v51, v1);
    }
  }

  v55 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8E638, &qword_1E4AB1790);
  sub_1E4A68924();
  v46 = sub_1E4AAA850();

  return v46;
}

uint64_t sub_1E4A721E0(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for WKAnimationPackageLayerState(0);
  v25 = *(v7 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v24 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v8);
  v12 = v21 - v11;
  v23 = *(a3 + 16);
  if (v23)
  {
    v13 = 0;
    v14 = MEMORY[0x1E69E7CC0];
    v21[1] = a2;
    v22 = a3;
    v21[0] = a1;
    while (v13 < *(a3 + 16))
    {
      v15 = (*(v25 + 80) + 32) & ~*(v25 + 80);
      v16 = *(v25 + 72);
      sub_1E4A68864(a3 + v15 + v16 * v13, v12);
      v17 = a1(v12);
      if (v3)
      {
        sub_1E4A688C8(v12);

        goto LABEL_15;
      }

      if (v17)
      {
        sub_1E4A68988(v12, v24);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v26 = v14;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1E4A68824(0, *(v14 + 16) + 1, 1);
          v14 = v26;
        }

        v20 = *(v14 + 16);
        v19 = *(v14 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_1E4A68824((v19 > 1), v20 + 1, 1);
          v14 = v26;
        }

        *(v14 + 16) = v20 + 1;
        result = sub_1E4A68988(v24, v14 + v15 + v20 * v16);
        a3 = v22;
        a1 = v21[0];
      }

      else
      {
        result = sub_1E4A688C8(v12);
      }

      if (v23 == ++v13)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
LABEL_15:

    return v14;
  }

  return result;
}

BOOL sub_1E4A72408(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E4AAA1C0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v28 = &v26[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8EA30, &qword_1E4AB1F78);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v26[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E678, qword_1E4AB1DF0);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v30 = &v26[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v26[-v15];
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v26[-v17];
  v19 = *(type metadata accessor for WKAnimationPackageLayerState(0) + 20);
  (*(v5 + 16))(v18, a2, v4);
  (*(v5 + 56))(v18, 0, 1, v4);
  v20 = *(v8 + 56);
  v31 = a1;
  v29 = v19;
  sub_1E4A6C5D8(a1 + v19, v10);
  sub_1E4A6C5D8(v18, &v10[v20]);
  v21 = *(v5 + 48);
  if (v21(v10, 1, v4) == 1)
  {
    sub_1E4A4DC88(v18, &qword_1ECF8E678, qword_1E4AB1DF0);
    v22 = 1;
    if (v21(&v10[v20], 1, v4) == 1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    sub_1E4A6C5D8(v10, v16);
    if (v21(&v10[v20], 1, v4) != 1)
    {
      v24 = v28;
      (*(v5 + 32))(v28, &v10[v20], v4);
      sub_1E4A73214(&qword_1EE043A20, MEMORY[0x1E697DBD0], MEMORY[0x1E697DBE8]);
      v27 = sub_1E4AAA860();
      v25 = *(v5 + 8);
      v25(v24, v4);
      sub_1E4A4DC88(v18, &qword_1ECF8E678, qword_1E4AB1DF0);
      v25(v16, v4);
      sub_1E4A4DC88(v10, &qword_1ECF8E678, qword_1E4AB1DF0);
      if (v27)
      {
        return 1;
      }

      goto LABEL_7;
    }

    sub_1E4A4DC88(v18, &qword_1ECF8E678, qword_1E4AB1DF0);
    (*(v5 + 8))(v16, v4);
  }

  sub_1E4A4DC88(v10, &unk_1ECF8EA30, &qword_1E4AB1F78);
LABEL_7:
  v10 = v30;
  sub_1E4A6C5D8(v31 + v29, v30);
  v22 = v21(v10, 1, v4) == 1;
LABEL_8:
  sub_1E4A4DC88(v10, &qword_1ECF8E678, qword_1E4AB1DF0);
  return v22;
}

uint64_t sub_1E4A72838(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1E4AAA1C0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E678, qword_1E4AB1DF0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v15 - v8;
  sub_1E4AAA8C0();

  v10 = type metadata accessor for WKAnimationPackageLayerState(0);
  sub_1E4A6C5D8(v2 + *(v10 + 20), v9);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    sub_1E4AAAE20();
  }

  else
  {
    (*(v4 + 32))(v6, v9, v3);
    sub_1E4AAAE20();
    sub_1E4A73214(&qword_1EE043A28, MEMORY[0x1E697DBD0], MEMORY[0x1E697DBE0]);
    sub_1E4AAA840();
    (*(v4 + 8))(v6, v3);
  }

  v11 = (v2 + *(v10 + 24));
  v12 = *(v11 + 8);
  if (v12 != 255)
  {
    v13 = *v11;
    sub_1E4AAAE20();
    if (v12)
    {
      MEMORY[0x1E691F1E0](1);
      return MEMORY[0x1E691F1E0](v13);
    }

    MEMORY[0x1E691F1E0](0);
  }

  return sub_1E4AAAE20();
}

uint64_t sub_1E4A72ADC()
{
  sub_1E4AAAE00();
  sub_1E4A72838(v1);
  return sub_1E4AAAE40();
}

uint64_t sub_1E4A72B20(uint64_t a1)
{
  sub_1E4AAAE00();
  sub_1E4A72838(v2);
  return sub_1E4AAAE40();
}

uint64_t sub_1E4A72B6C()
{
  sub_1E4A71BCC();
  v0 = sub_1E4AAA8B0();

  return v0;
}

char *sub_1E4A72C44(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E648, &qword_1E4AB1798);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1E4A72D50(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E748, &unk_1E4AB1F80);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E280, &qword_1E4AAEF20);
    swift_arrayInitWithCopy();
  }

  return v10;
}

BOOL sub_1E4A72E98(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = sub_1E4AAA1C0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E678, qword_1E4AB1DF0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8EA30, &qword_1E4AB1F78);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v27 - v12;
  if (*a1 != *a2)
  {
    return 0;
  }

  v28 = type metadata accessor for WKAnimationPackageLayerState(0);
  v14 = *(v28 + 20);
  v15 = *(v11 + 48);
  sub_1E4A6C5D8(&a1[v14], v13);
  sub_1E4A6C5D8(&a2[v14], &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_1E4A4DC88(v13, &qword_1ECF8E678, qword_1E4AB1DF0);
      goto LABEL_10;
    }

LABEL_7:
    sub_1E4A4DC88(v13, &unk_1ECF8EA30, &qword_1E4AB1F78);
    return 0;
  }

  sub_1E4A6C5D8(v13, v10);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
    goto LABEL_7;
  }

  (*(v5 + 32))(v7, &v13[v15], v4);
  sub_1E4A73214(&qword_1EE043A20, MEMORY[0x1E697DBD0], MEMORY[0x1E697DBE8]);
  v18 = sub_1E4AAA860();
  v19 = *(v5 + 8);
  v19(v7, v4);
  v19(v10, v4);
  sub_1E4A4DC88(v13, &qword_1ECF8E678, qword_1E4AB1DF0);
  if ((v18 & 1) == 0)
  {
    return 0;
  }

LABEL_10:
  v20 = *(v28 + 24);
  v21 = &a1[v20];
  v22 = a1[v20 + 8];
  v23 = &a2[v20];
  v24 = a2[v20 + 8];
  if (v22 == 255)
  {
    return v24 == 255;
  }

  if (v24 == 255)
  {
    return 0;
  }

  v25 = *v21;
  v26 = *v23;
  if (v22)
  {
    if ((v24 & 1) == 0 || v25 != v26)
    {
      return 0;
    }
  }

  else if (v24 & 1) != 0 || ((v26 ^ v25))
  {
    return 0;
  }

  return 1;
}

uint64_t sub_1E4A73214(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E4A7329C()
{
  sub_1E4AAAE00();
  sub_1E4AAA8C0();

  return sub_1E4AAAE40();
}

double sub_1E4A73334(uint64_t a1)
{
  sub_1E4AAA8C0();

  return result;
}

uint64_t sub_1E4A733B8(uint64_t a1)
{
  sub_1E4AAAE00();
  sub_1E4AAA8C0();

  return sub_1E4AAAE40();
}

uint64_t sub_1E4A73468()
{
  v1 = 0x64656B636F6CLL;
  if (*v0 != 1)
  {
    v1 = 0x64656B636F6C6E75;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7065656C73;
  }
}

unint64_t sub_1E4A734C0()
{
  result = qword_1ECF8E750;
  if (!qword_1ECF8E750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF8E758, qword_1E4AB1FD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF8E750);
  }

  return result;
}

unint64_t sub_1E4A73528()
{
  result = qword_1ECF8E760;
  if (!qword_1ECF8E760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF8E760);
  }

  return result;
}

unint64_t sub_1E4A73580()
{
  result = qword_1EE0430A0;
  if (!qword_1EE0430A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0430A0);
  }

  return result;
}

__n128 __swift_memcpy185_16(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 169) = *(a2 + 169);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_1E4A73610(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 185))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 176);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E4A73658(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 184) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 185) = 1;
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
      *(result + 176) = (a2 - 1);
      return result;
    }

    *(result + 185) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E4A736F4@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[9];
  v26[8] = v1[8];
  v27 = v3;
  *v28 = v1[10];
  *&v28[9] = *(v1 + 169);
  v4 = v1[5];
  v26[4] = v1[4];
  v26[5] = v4;
  v5 = v1[7];
  v26[6] = v1[6];
  v26[7] = v5;
  v6 = v1[1];
  v26[0] = *v1;
  v26[1] = v6;
  v7 = v1[3];
  v26[2] = v1[2];
  v26[3] = v7;
  v8 = WKPosterCanvasSize();
  v10 = v9;
  v29.origin.x = 0.0;
  v29.origin.y = 0.0;
  v29.size.width = v8;
  v29.size.height = v10;
  Height = CGRectGetHeight(v29);
  v12 = *(&v27 + 1);
  v13 = *&v28[8];
  [*(*&v28[16] + 16) stripeHeightFactor];
  v15 = Height * *v28 * v14;
  *a1 = sub_1E4AAA6F0();
  a1[1] = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E768, &qword_1E4AB2168);
  v25 = &unk_1F5E999A8;
  v17 = swift_allocObject();
  v18 = v1[9];
  *(v17 + 144) = v1[8];
  *(v17 + 160) = v18;
  *(v17 + 176) = v1[10];
  *(v17 + 185) = *(v1 + 169);
  v19 = v1[5];
  *(v17 + 80) = v1[4];
  *(v17 + 96) = v19;
  v20 = v1[7];
  *(v17 + 112) = v1[6];
  *(v17 + 128) = v20;
  v21 = v1[1];
  *(v17 + 16) = *v1;
  *(v17 + 32) = v21;
  v22 = v1[3];
  *(v17 + 48) = v1[2];
  *(v17 + 64) = v22;
  *(v17 + 208) = Height * v12 + v15 * -3.0;
  *(v17 + 216) = v15;
  *(v17 + 224) = Height * v13;
  *(v17 + 232) = 0;
  *(v17 + 240) = 0;
  *(v17 + 248) = v8;
  *(v17 + 256) = v10;
  sub_1E4A73BC0(v26, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E770, &qword_1E4AB2170);
  sub_1E4A49E30(&qword_1EE042218, &qword_1ECF8E770, &qword_1E4AB2170, MEMORY[0x1E69E6338]);
  sub_1E4A73BF8();
  sub_1E4A73C4C();
  return sub_1E4AAA6D0();
}

unsigned __int8 *sub_1E4A73918@<X0>(unsigned __int8 *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, CGFloat a7@<D3>, CGFloat a8@<D4>, CGFloat a9@<D5>, CGFloat a10@<D6>)
{
  v17 = *result;
  v18 = 0.0;
  v19 = 0.5;
  if (byte_1F5E99A18 == v17)
  {
    goto LABEL_8;
  }

  v18 = 1.0;
  if (byte_1F5E99A19 == v17)
  {
    goto LABEL_8;
  }

  v18 = 2.0;
  if (byte_1F5E99A1A == v17)
  {
    goto LABEL_8;
  }

  v18 = 3.0;
  if (byte_1F5E99A1B == v17)
  {
    goto LABEL_8;
  }

  v18 = 4.0;
  if (byte_1F5E99A1C == v17)
  {
    goto LABEL_8;
  }

  if (byte_1F5E99A1D == v17)
  {
    v18 = 5.0;
    v19 = 0.0;
LABEL_8:
    v20 = v18 * a5 + a4;
    v40 = v19 * a5 + a5;
    v60.origin.x = a7;
    v60.origin.y = a8;
    v60.size.width = a9;
    v60.size.height = a10;
    MinX = CGRectGetMinX(v60);
    v61.origin.x = a7;
    v61.origin.y = a8;
    v61.size.width = a9;
    v61.size.height = a10;
    v39 = MinX - CGRectGetWidth(v61);
    v36 = v20 + a6;
    v62.origin.x = a7;
    v62.origin.y = a8;
    v62.size.width = a9;
    v62.size.height = a10;
    v22 = CGRectGetMinX(v62);
    v63.origin.x = a7;
    v63.origin.y = a8;
    v63.size.width = a9;
    v63.size.height = a10;
    v37 = v20 + a6 + v40;
    v38 = v22 - CGRectGetWidth(v63);
    v64.origin.x = a7;
    v64.origin.y = a8;
    v64.size.width = a9;
    v64.size.height = a10;
    MaxX = CGRectGetMaxX(v64);
    v65.origin.x = a7;
    v65.origin.y = a8;
    v65.size.width = a9;
    v65.size.height = a10;
    v24 = MaxX + CGRectGetWidth(v65);
    v25 = v20 - (a6 + a6);
    v66.origin.x = a7;
    v66.origin.y = a8;
    v66.size.width = a9;
    v66.size.height = a10;
    v26 = CGRectGetMaxX(v66);
    v67.origin.x = a7;
    v67.origin.y = a8;
    v67.size.width = a9;
    v67.size.height = a10;
    v27 = v26 + CGRectGetWidth(v67);
    v28 = *(a2 + 184);
    *&v41[0] = swift_getKeyPath();
    result = sub_1E4A4E620(v41);
    v56 = v46;
    v57 = v47;
    v58 = v48;
    LOBYTE(v59) = v49;
    v29 = v42;
    v52 = v42;
    v53 = v43;
    v54 = v44;
    v55 = v45;
    v50 = v41[0];
    v51 = v41[1];
    v30 = v47;
    *(a3 + 96) = v46;
    *(a3 + 112) = v30;
    *(a3 + 128) = v58;
    v31 = v59;
    v32 = v53;
    v33 = v54;
    v34 = v55;
    *(a3 + 32) = v29;
    *(a3 + 48) = v32;
    *(a3 + 64) = v33;
    *(a3 + 80) = v34;
    v35 = v51;
    *a3 = v50;
    *(a3 + 16) = v35;
    *(a3 + 144) = v31;
    *(a3 + 152) = 0;
    *(a3 + 160) = v17;
    *(a3 + 161) = v28;
    *(a3 + 168) = v39;
    *(a3 + 176) = v36;
    *(a3 + 184) = v38;
    *(a3 + 192) = v37;
    *(a3 + 200) = v24;
    *(a3 + 208) = v25;
    *(a3 + 216) = v27;
    *(a3 + 224) = v25 + v40;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t sub_1E4A73BF8()
{
  result = qword_1EE043038;
  if (!qword_1EE043038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE043038);
  }

  return result;
}

unint64_t sub_1E4A73C4C()
{
  result = qword_1EE043088;
  if (!qword_1EE043088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE043088);
  }

  return result;
}

__n128 __swift_memcpy232_16(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[13];
  *(a1 + 224) = *(a2 + 28);
  *(a1 + 192) = v11;
  *(a1 + 208) = v12;
  *(a1 + 176) = result;
  return result;
}

uint64_t sub_1E4A73CEC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 232))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 144);
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

uint64_t sub_1E4A73D34(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 200) = 0u;
    *(result + 216) = 0u;
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
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 232) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 232) = 0;
    }

    if (a2)
    {
      *(result + 144) = -a2;
    }
  }

  return result;
}

void sub_1E4A73DDC(uint64_t a9@<X8>)
{
  v11 = *(v9 + 160);
  v12 = *(v9 + 168);
  v13 = *(v9 + 176);
  v14 = *(v9 + 184);
  v15 = *(v9 + 192);
  v16 = *(v9 + 200);
  v17 = *(v9 + 208);
  v18 = *(v9 + 216);
  v19 = *(v9 + 224);
  v20 = sub_1E4A73F04();
  KeyPath = swift_getKeyPath();
  v22 = sub_1E4AAA730();
  v23 = sub_1E4AAA450();
  sub_1E4AAA740();
  *a9 = v12;
  *(a9 + 8) = v13;
  *(a9 + 16) = v14;
  *(a9 + 24) = v15;
  *(a9 + 32) = v16;
  *(a9 + 40) = v17;
  *(a9 + 48) = v18;
  *(a9 + 56) = v19;
  *(a9 + 64) = KeyPath;
  *(a9 + 72) = v20;
  *(a9 + 80) = v11;
  *(a9 + 88) = v22;
  *(a9 + 96) = v23;
  *(a9 + 104) = v24;
  *(a9 + 112) = v25;
  *(a9 + 120) = 1;
}

uint64_t sub_1E4A73F04()
{
  v1 = sub_1E4AAA320();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v25[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0[7];
  v6 = v0[5];
  v61 = v0[6];
  v62 = v5;
  v7 = v0[7];
  v63 = v0[8];
  v8 = v0[3];
  v9 = v0[1];
  v57 = v0[2];
  v58 = v8;
  v10 = v0[3];
  v11 = v0[5];
  v59 = v0[4];
  v60 = v11;
  v12 = v0[1];
  v55 = *v0;
  v56 = v12;
  v65[6] = v61;
  v65[7] = v7;
  v65[8] = v0[8];
  v65[2] = v57;
  v65[3] = v10;
  v65[4] = v59;
  v65[5] = v6;
  v64 = *(v0 + 144);
  v13 = *(v0 + 160);
  v14 = *(v0 + 161);
  v66 = *(v0 + 144);
  v65[0] = v55;
  v65[1] = v9;
  if (sub_1E4A49C60(v65) == 1)
  {
    nullsub_1();
    v32 = v61;
    v33 = v62;
    v34 = v63;
    v35 = v64;
    v28 = v57;
    v29 = v58;
    v30 = v59;
    v31 = v60;
    v26 = v55;
    v27 = v56;
    nullsub_1();
    v46 = *v15;
    v16 = v15[1];
    v17 = v15[2];
    v18 = v15[4];
    v49 = v15[3];
    v50 = v18;
    v47 = v16;
    v48 = v17;
    v19 = v15[5];
    v20 = v15[6];
    v21 = v15[8];
    v53 = v15[7];
    v54 = v21;
    v51 = v19;
    v52 = v20;
    v45 = v64;
    v43 = v62;
    v44 = v63;
    v41 = v60;
    v42 = v61;
    v39 = v58;
    v40 = v59;
    v37 = v56;
    v38 = v57;
    v36 = v55;
    nullsub_1();
    sub_1E4A49D24(v22, v25);
  }

  else
  {
    nullsub_1();
    v32 = v61;
    v33 = v62;
    v34 = v63;
    v35 = v64;
    v28 = v57;
    v29 = v58;
    v30 = v59;
    v31 = v60;
    v26 = v55;
    v27 = v56;
    nullsub_1();
    v36 = v55;
    v37 = v56;
    v40 = v59;
    v41 = v60;
    v38 = v57;
    v39 = v58;
    v45 = v64;
    v43 = v62;
    v44 = v63;
    v42 = v61;
    nullsub_1();

    sub_1E4AAAA10();
    v23 = sub_1E4AAA4E0();
    sub_1E4AAA0B0();

    sub_1E4AAA310();
    swift_getAtKeyPath();
    sub_1E4A49C68(&v55);
    (*(v2 + 8))(v4, v1);
  }

  v42 = v52;
  v43 = v53;
  v44 = v54;
  v38 = v48;
  v39 = v49;
  v40 = v50;
  v41 = v51;
  v36 = v46;
  v37 = v47;
  sub_1E4A49CD0(&v36);
  if (((v13 == 0) & v14) == 1 && UIInterfaceOrientationIsLandscape(*(&v40 + 1)))
  {
    return sub_1E4AAA5E0();
  }

  else
  {
    return sub_1E4AA2CBC(v13);
  }
}

unint64_t sub_1E4A74248()
{
  result = qword_1EE0423A8;
  if (!qword_1EE0423A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF8E780, &qword_1E4AB2278);
    sub_1E4A74300();
    sub_1E4A49E30(&qword_1EE0422A8, &qword_1ECF8E790, &unk_1E4AB2290, MEMORY[0x1E697FF90]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0423A8);
  }

  return result;
}

unint64_t sub_1E4A74300()
{
  result = qword_1EE042400;
  if (!qword_1EE042400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF8E788, &unk_1E4AB2280);
    sub_1E4A743B8();
    sub_1E4A49E30(&qword_1EE043998, &qword_1ECF8E228, &qword_1E4AAEE10, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE042400);
  }

  return result;
}

unint64_t sub_1E4A743B8()
{
  result = qword_1EE042918;
  if (!qword_1EE042918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE042918);
  }

  return result;
}

uint64_t sub_1E4A7440C()
{
  v1 = v0;
  swift_getKeyPath();
  v36 = v0;
  sub_1E4A7743C(&qword_1EE042900, type metadata accessor for WKWallpaperPosterLayerViewModel, &unk_1E4AB2458);
  sub_1E4AAA060();

  v2 = *(v0 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 16);

  if (![v3 valueBasedWallpaperForLocation:@"WKWallpaperLocationCoverSheet" andAppearance:@"default"])
  {

    return 0;
  }

  sub_1E4A57768(v38);
  swift_unknownObjectRelease();

  v4 = v39;
  v5 = v40;
  __swift_project_boxed_opaque_existential_1(v38, v39);
  (*(v5 + 24))(&v36, v4, v5);
  v6 = v36;
  v7 = v37;
  __swift_destroy_boxed_opaque_existential_1Tm(v38);
  if (v7 != 2)
  {
    sub_1E4A4EF3C(v6, v7);
    return 0;
  }

  swift_getKeyPath();
  v38[0] = v1;
  sub_1E4AAA060();

  v8 = *(v1 + 104);
  v9 = objc_opt_self();
  v10 = [v9 mainScreen];
  v11 = [v10 fixedCoordinateSpace];

  [v11 bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  swift_unknownObjectRelease();
  swift_getKeyPath();
  v38[0] = v1;
  sub_1E4AAA060();

  v38[0] = v8;
  v38[1] = v13;
  v38[2] = v15;
  v39 = v17;
  v40 = v19;
  v20 = *(v1 + 128);
  v41 = *(v1 + 112);
  v42 = v20;
  swift_getKeyPath();
  v36 = v1;
  sub_1E4AAA060();

  swift_beginAccess();
  v21 = *(v1 + 200);
  if (*(v21 + 16))
  {

    v22 = sub_1E4A8F274(v38);
    if (v23)
    {
      v24 = *(*(v21 + 56) + 24 * v22);
      sub_1E4A4EF3C(v6, 2u);

      return v24;
    }
  }

  v26 = [v9 mainScreen];
  v27 = [v26 fixedCoordinateSpace];

  [v27 bounds];
  swift_unknownObjectRelease();
  v35 = v6;
  v28 = sub_1E4A768E4(&v35);
  v30 = v29;
  v32 = v31;
  swift_getKeyPath();
  v35 = v1;
  sub_1E4AAA060();

  v35 = v1;
  swift_getKeyPath();
  sub_1E4AAA080();

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v34 = *(v1 + 200);
  *(v1 + 200) = 0x8000000000000000;
  sub_1E4A95424(v38, isUniquelyReferenced_nonNull_native, v28, v30, v32);
  *(v1 + 200) = v34;
  swift_endAccess();
  v35 = v1;
  swift_getKeyPath();
  sub_1E4AAA070();
  sub_1E4A4EF3C(v6, 2u);

  return *&v28;
}

double sub_1E4A748B0()
{
  swift_getKeyPath();
  sub_1E4A7743C(&qword_1EE042900, type metadata accessor for WKWallpaperPosterLayerViewModel, &unk_1E4AB2458);
  sub_1E4AAA060();

  return *(v0 + 176);
}

uint64_t sub_1E4A74950@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  sub_1E4A7743C(&qword_1EE042900, type metadata accessor for WKWallpaperPosterLayerViewModel, &unk_1E4AB2458);
  sub_1E4AAA060();

  *a1 = *(v1 + 16);
}

uint64_t sub_1E4A749FC@<X0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  *&v16[0] = v1;
  sub_1E4A7743C(&qword_1EE042900, type metadata accessor for WKWallpaperPosterLayerViewModel, &unk_1E4AB2458);
  sub_1E4AAA060();

  v3 = v1[7];
  v4 = v1[9];
  v21 = v1[8];
  v22 = v4;
  v5 = v1[9];
  v23 = v1[10];
  v6 = v1[3];
  v7 = v1[5];
  v17 = v1[4];
  v8 = v17;
  v18 = v7;
  v9 = v1[5];
  v10 = v1[7];
  v19 = v1[6];
  v11 = v19;
  v20 = v10;
  v12 = v1[3];
  v16[0] = v1[2];
  v13 = v16[0];
  v16[1] = v12;
  a1[6] = v21;
  a1[7] = v5;
  a1[8] = v1[10];
  a1[2] = v8;
  a1[3] = v9;
  a1[4] = v11;
  a1[5] = v3;
  *a1 = v13;
  a1[1] = v6;
  return sub_1E4A49D24(v16, &v15);
}

uint64_t sub_1E4A74B00()
{
  swift_getKeyPath();
  sub_1E4A7743C(&qword_1EE042900, type metadata accessor for WKWallpaperPosterLayerViewModel, &unk_1E4AB2458);
  sub_1E4AAA060();

  return *(v0 + 192);
}

uint64_t sub_1E4A74BA0(uint64_t *a1)
{
  v2 = *a1;

  v4 = sub_1E4A76F94(v3, v2);

  if (v4)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1E4A7743C(&qword_1EE042900, type metadata accessor for WKWallpaperPosterLayerViewModel, &unk_1E4AB2458);
    sub_1E4AAA050();
  }

  else
  {
    *(v1 + 16) = v2;
  }
}

uint64_t sub_1E4A74CF4(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = a2;
}

uint64_t sub_1E4A74D30(float64x2_t *a1)
{
  v2 = a1[5];
  v3 = a1[7];
  v43 = a1[6];
  v44 = v3;
  v4 = a1[7];
  v45 = a1[8];
  v5 = a1[1];
  v6 = a1[3];
  v39 = a1[2];
  v40 = v6;
  v7 = a1[3];
  v8 = a1[5];
  v41 = a1[4];
  v42 = v8;
  v9 = a1[1];
  v37 = *a1;
  v38 = v9;
  v10 = v1[8];
  v11 = v1[9];
  v12 = v1[6];
  v33 = v1[7];
  v34 = v10;
  v13 = v1[10];
  v35 = v11;
  v36 = v13;
  v14 = v1[4];
  v15 = v1[5];
  v16 = v1[2];
  v29 = v1[3];
  v30 = v14;
  v31 = v15;
  v32 = v12;
  v27[6] = v43;
  v27[7] = v4;
  v27[8] = a1[8];
  v28 = v16;
  v27[2] = v39;
  v27[3] = v7;
  v27[4] = v41;
  v27[5] = v2;
  v27[0] = v37;
  v27[1] = v5;
  if (_s12WallpaperKit27WKPosterEnvironmentSnapshotV2eeoiySbAC_ACtFZ_0(&v28, v27))
  {
    v17 = v1[9];
    v34 = v1[8];
    v35 = v17;
    v36 = v1[10];
    v18 = v1[5];
    v30 = v1[4];
    v31 = v18;
    v19 = v1[7];
    v32 = v1[6];
    v33 = v19;
    v20 = v1[3];
    v28 = v1[2];
    v29 = v20;
    v21 = v42;
    v1[6] = v41;
    v1[7] = v21;
    v22 = v44;
    v1[8] = v43;
    v1[9] = v22;
    v1[10] = v45;
    v23 = v40;
    v1[4] = v39;
    v1[5] = v23;
    v24 = v38;
    v1[2] = v37;
    v1[3] = v24;
    return sub_1E4A49CD0(&v28);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *&v28.f64[0] = v1;
    sub_1E4A7743C(&qword_1EE042900, type metadata accessor for WKWallpaperPosterLayerViewModel, &unk_1E4AB2458);
    sub_1E4AAA050();
    sub_1E4A49CD0(&v37);
  }
}

uint64_t sub_1E4A74F20(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[9];
  v12[6] = a1[8];
  v12[7] = v2;
  v12[8] = a1[10];
  v3 = a1[5];
  v12[2] = a1[4];
  v12[3] = v3;
  v4 = a1[7];
  v12[4] = a1[6];
  v12[5] = v4;
  v5 = a1[3];
  v12[0] = a1[2];
  v12[1] = v5;
  v6 = a2[5];
  a1[6] = a2[4];
  a1[7] = v6;
  v7 = a2[7];
  a1[8] = a2[6];
  a1[9] = v7;
  a1[10] = a2[8];
  v8 = a2[3];
  a1[4] = a2[2];
  a1[5] = v8;
  v9 = a2[1];
  a1[2] = *a2;
  a1[3] = v9;
  sub_1E4A49D24(a2, &v11);
  return sub_1E4A49CD0(v12);
}

double sub_1E4A74FB4@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1E4A7743C(&qword_1EE042900, type metadata accessor for WKWallpaperPosterLayerViewModel, &unk_1E4AB2458);
  sub_1E4AAA060();

  result = *(v3 + 176);
  *a2 = result;
  return result;
}

uint64_t sub_1E4A75084(uint64_t a1, double a2)
{
  result = sub_1E4AAA5B0();
  if (result)
  {
    *(v2 + 176) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1E4A7743C(&qword_1EE042900, type metadata accessor for WKWallpaperPosterLayerViewModel, &unk_1E4AB2458);
    sub_1E4AAA050();
  }

  return result;
}

uint64_t sub_1E4A751A8()
{
  swift_getKeyPath();
  sub_1E4A7743C(&qword_1EE042900, type metadata accessor for WKWallpaperPosterLayerViewModel, &unk_1E4AB2458);
  sub_1E4AAA060();

  return *(v0 + 184);
}

uint64_t sub_1E4A75248(uint64_t result)
{
  if (*(v1 + 184) == (result & 1))
  {
    *(v1 + 184) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1E4A7743C(&qword_1EE042900, type metadata accessor for WKWallpaperPosterLayerViewModel, &unk_1E4AB2458);
    sub_1E4AAA050();
  }

  return result;
}

uint64_t sub_1E4A75360(uint64_t result)
{
  if (*(v1 + 192) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1E4A7743C(&qword_1EE042900, type metadata accessor for WKWallpaperPosterLayerViewModel, &unk_1E4AB2458);
    sub_1E4AAA050();
  }

  return result;
}

double sub_1E4A75464()
{
  swift_getKeyPath();
  sub_1E4A7743C(&qword_1EE042900, type metadata accessor for WKWallpaperPosterLayerViewModel, &unk_1E4AB2458);
  sub_1E4AAA060();

  swift_beginAccess();

  return result;
}

double sub_1E4A7551C@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1E4A7743C(&qword_1EE042900, type metadata accessor for WKWallpaperPosterLayerViewModel, &unk_1E4AB2458);
  sub_1E4AAA060();

  swift_beginAccess();
  *a2 = *(v3 + 200);

  return result;
}

double sub_1E4A755DC(uint64_t a1)
{
  swift_beginAccess();

  v4 = sub_1E4A76734(v3, a1);

  if (v4)
  {
    *(v1 + 200) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1E4A7743C(&qword_1EE042900, type metadata accessor for WKWallpaperPosterLayerViewModel, &unk_1E4AB2458);
    sub_1E4AAA050();
  }

  return result;
}

void sub_1E4A75724(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 200) = a2;
}

uint64_t sub_1E4A7578C(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E798, &qword_1E4AB24F0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v29 - v7;
  v9 = sub_1E4AAAA80();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E7A0, &qword_1E4AB24F8);
  v30 = *(v13 - 8);
  v31 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v29 - v14;
  v16 = *(a1 + 72);
  *(v3 + 16) = 0;
  *(v3 + 192) = 0;
  v17 = MEMORY[0x1E69E7CC0];
  *(v3 + 200) = sub_1E4A9039C(MEMORY[0x1E69E7CC0]);
  if (v17 >> 62 && sub_1E4AAAC80())
  {
    sub_1E4A771A8(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v18 = MEMORY[0x1E69E7CD0];
  }

  *(v3 + 208) = v18;
  sub_1E4AAA090();
  v19 = *(a1 + 48);
  *(v3 + 64) = *(a1 + 32);
  *(v3 + 80) = v19;
  v20 = *(a1 + 64);
  v21 = *(a1 + 16);
  *(v3 + 32) = *a1;
  *(v3 + 48) = v21;
  *(v3 + 96) = v20;
  *(v3 + 104) = v16;
  v22 = *(a1 + 96);
  *(v3 + 112) = *(a1 + 80);
  *(v3 + 128) = v22;
  v23 = *(a1 + 128);
  *(v3 + 144) = *(a1 + 112);
  *(v3 + 160) = v23;
  *(v3 + 184) = a2 & 1;
  *(v3 + 176) = sub_1E4A93090(v16) * 0.0174532925;
  v24 = [objc_opt_self() defaultCenter];
  if (qword_1EE0421A8 != -1)
  {
    swift_once();
  }

  sub_1E4AAAA90();

  v25 = [objc_opt_self() mainRunLoop];
  v32 = v25;
  v26 = sub_1E4AAAAF0();
  (*(*(v26 - 8) + 56))(v8, 1, 1, v26);
  sub_1E4A77088();
  sub_1E4A7743C(&qword_1EE042198, MEMORY[0x1E6969F20], MEMORY[0x1E6969F18]);
  sub_1E4A7743C(&qword_1EE042118, sub_1E4A77088, MEMORY[0x1E696A010]);
  sub_1E4AAA170();
  sub_1E4A770D4(v8);

  (*(v10 + 8))(v12, v9);
  swift_allocObject();
  swift_weakInit();
  sub_1E4A77144();
  v27 = v31;
  sub_1E4AAA180();

  (*(v30 + 8))(v15, v27);
  swift_beginAccess();
  sub_1E4AAA100();
  swift_endAccess();

  return v3;
}

uint64_t sub_1E4A75C0C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    swift_getKeyPath();
    sub_1E4A7743C(&qword_1EE042900, type metadata accessor for WKWallpaperPosterLayerViewModel, &unk_1E4AB2458);
    sub_1E4AAA060();

    v4 = *(v3 + 16);

    if (v4)
    {
      if ([*(v4 + 16) isAppearanceAware])
      {
        swift_beginAccess();
        Strong = swift_weakLoadStrong();
        if (Strong)
        {
          v6 = Strong;
          swift_getKeyPath();
          sub_1E4AAA060();

          swift_getKeyPath();
          sub_1E4AAA080();

          v7 = *(v6 + 192);
          v8 = __OFADD__(v7, 1);
          v9 = v7 + 1;
          if (v8)
          {
            __break(1u);
            return result;
          }

          *(v6 + 192) = v9;
          swift_getKeyPath();
          sub_1E4AAA070();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1E4A75DE8()
{

  v1 = *(v0 + 9);
  v8[6] = *(v0 + 8);
  v8[7] = v1;
  v8[8] = *(v0 + 10);
  v2 = *(v0 + 5);
  v8[2] = *(v0 + 4);
  v8[3] = v2;
  v3 = *(v0 + 7);
  v8[4] = *(v0 + 6);
  v8[5] = v3;
  v4 = *(v0 + 3);
  v8[0] = *(v0 + 2);
  v8[1] = v4;
  sub_1E4A49CD0(v8);

  v5 = OBJC_IVAR____TtC12WallpaperKit31WKWallpaperPosterLayerViewModel___observationRegistrar;
  v6 = sub_1E4AAA0A0();
  (*(*(v6 - 8) + 8))(&v0[v5], v6);
  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WKWallpaperPosterLayerViewModel(uint64_t a1)
{
  result = qword_1EE0428E8;
  if (!qword_1EE0428E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E4A75F1C(uint64_t a1, __n128 a2)
{
  result = sub_1E4AAA0A0();
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for WKAdaptiveStripesBaseMetrics(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for WKAdaptiveStripesBaseMetrics(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1E4A76080(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 72))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E4A760A0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
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

  *(result + 72) = v3;
  return result;
}

uint64_t sub_1E4A760EC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for WKPosterDynamicRotationState(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE0424A0 != -1)
  {
    swift_once();
  }

  v7 = sub_1E4AAA0E0();
  __swift_project_value_buffer(v7, qword_1EE048B40);
  sub_1E4A6EC98(a1, v6);
  v8 = sub_1E4AAA0C0();
  v9 = sub_1E4AAAA20();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20 = v11;
    *v10 = 136446210;
    v12 = sub_1E4AA9FF0();
    v14 = v13;
    sub_1E4A76F28(v6);
    v15 = sub_1E4A85938(v12, v14, &v20);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_1E4A23000, v8, v9, "Handling rotation animation %{public}s.", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x1E691FE80](v11, -1, -1);
    MEMORY[0x1E691FE80](v10, -1, -1);
  }

  else
  {

    sub_1E4A76F28(v6);
  }

  v16 = *(a1 + *(v4 + 20)) * 0.0174532925;
  result = sub_1E4AAA5B0();
  if (result)
  {
    *(v2 + 176) = v16;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v19 - 2) = v2;
    *(&v19 - 1) = v16;
    v20 = v2;
    sub_1E4A7743C(&qword_1EE042900, type metadata accessor for WKWallpaperPosterLayerViewModel, &unk_1E4AB2458);
    sub_1E4AAA050();
  }

  return result;
}

uint64_t sub_1E4A763B8()
{
  MEMORY[0x1E691F1E0](*v0);
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v18.origin.x = v1;
  v18.origin.y = v2;
  v18.size.width = v3;
  v18.size.height = v4;
  Width = CGRectGetWidth(v18);
  if (Width == 0.0)
  {
    Width = 0.0;
  }

  MEMORY[0x1E691F200](*&Width);
  v19.origin.x = v1;
  v19.origin.y = v2;
  v19.size.width = v3;
  v19.size.height = v4;
  Height = CGRectGetHeight(v19);
  if (Height == 0.0)
  {
    Height = 0.0;
  }

  MEMORY[0x1E691F200](*&Height);
  if (v1 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v1;
  }

  MEMORY[0x1E691F200](*&v7);
  if (v2 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v2;
  }

  MEMORY[0x1E691F200](*&v8);
  v9 = *(v0 + 40);
  v10 = *(v0 + 48);
  v11 = *(v0 + 56);
  v12 = *(v0 + 64);
  v20.origin.x = v9;
  v20.origin.y = v10;
  v20.size.width = v11;
  v20.size.height = v12;
  v13 = CGRectGetWidth(v20);
  if (v13 == 0.0)
  {
    v13 = 0.0;
  }

  MEMORY[0x1E691F200](*&v13);
  v21.origin.x = v9;
  v21.origin.y = v10;
  v21.size.width = v11;
  v21.size.height = v12;
  v14 = CGRectGetHeight(v21);
  if (v14 == 0.0)
  {
    v14 = 0.0;
  }

  MEMORY[0x1E691F200](*&v14);
  if (v9 == 0.0)
  {
    v15 = 0.0;
  }

  else
  {
    v15 = v9;
  }

  MEMORY[0x1E691F200](*&v15);
  if (v10 == 0.0)
  {
    v16 = 0.0;
  }

  else
  {
    v16 = v10;
  }

  return MEMORY[0x1E691F200](*&v16);
}

uint64_t sub_1E4A764E0()
{
  sub_1E4AAAE00();
  sub_1E4A763B8();
  return sub_1E4AAAE40();
}

uint64_t sub_1E4A76580(uint64_t a1)
{
  sub_1E4AAAE00();
  sub_1E4A763B8();
  return sub_1E4AAAE40();
}

BOOL sub_1E4A765D8(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v6 = *(a2 + 40);
  v7 = *(a2 + 48);
  v8 = *(a2 + 56);
  v9 = *(a2 + 64);
  result = CGRectEqualToRect(*(a1 + 8), *(a2 + 8));
  if (result)
  {
    v11.origin.x = v2;
    v11.origin.y = v3;
    v11.size.width = v4;
    v11.size.height = v5;
    v12.origin.x = v6;
    v12.origin.y = v7;
    v12.size.width = v8;
    v12.size.height = v9;
    return CGRectEqualToRect(v11, v12);
  }

  return result;
}

unint64_t sub_1E4A766A8()
{
  result = qword_1EE042FF8;
  if (!qword_1EE042FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE042FF8);
  }

  return result;
}

uint64_t sub_1E4A766FC()
{
  result = sub_1E4AAA870();
  qword_1EE048B10 = result;
  return result;
}

unint64_t sub_1E4A76734(unint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v10 = v9 | (v4 << 6);
LABEL_12:
    v13 = *(v3 + 48) + 72 * v10;
    v14 = *v13;
    v15 = *(v13 + 16);
    v16 = *(v13 + 32);
    v17 = *(v13 + 48);
    v18 = *(v13 + 64);
    v19 = (*(v3 + 56) + 24 * v10);
    v21 = *v19;
    v20 = v19[1];
    v22 = v19[2];
    v27[0] = v14;
    v27[1] = v15;
    v27[2] = v16;
    v27[3] = v17;
    v28 = v18;
    result = sub_1E4A8F274(v27);
    if (v23)
    {
      v24 = (*(a2 + 56) + 24 * result);
      v25 = *v24 == v21 && v24[1] == v20;
      if (v25 && v24[2] == v22)
      {
        continue;
      }
    }

    return 0;
  }

  while (1)
  {
    v11 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v11 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 64 + 8 * v11);
    ++v4;
    if (v12)
    {
      v7 = (v12 - 1) & v12;
      v10 = __clz(__rbit64(v12)) | (v11 << 6);
      v4 = v11;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

double sub_1E4A768E4(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = WKPosterCanvasSize();
  v45 = v5;
  v6 = [objc_opt_self() mainScreen];
  v7 = [v6 fixedCoordinateSpace];

  [v7 bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  swift_unknownObjectRelease();
  swift_getKeyPath();
  sub_1E4A7743C(&qword_1EE042900, type metadata accessor for WKWallpaperPosterLayerViewModel, &unk_1E4AB2458);
  sub_1E4AAA060();

  if (UIInterfaceOrientationIsLandscape(*(v2 + 104)))
  {
    v46.origin.x = v9;
    v46.origin.y = v11;
    v46.size.width = v13;
    v46.size.height = v15;
    Height = CGRectGetHeight(v46);
    v47.origin.x = v9;
    v47.origin.y = v11;
    v47.size.width = v13;
    v47.size.height = v15;
    Width = CGRectGetWidth(v47);
    if (Height > Width)
    {
      v18 = Height;
    }

    else
    {
      v18 = Width;
    }

    v48.origin.x = v9;
    v48.origin.y = v11;
    v48.size.width = v13;
    v48.size.height = v15;
    v19 = CGRectGetHeight(v48);
    v49.origin.x = v9;
    v49.origin.y = v11;
    v49.size.width = v13;
    v49.size.height = v15;
    v20 = CGRectGetWidth(v49);
    if (v20 >= v19)
    {
      v15 = v19;
    }

    else
    {
      v15 = v20;
    }

    v13 = v18;
  }

  UIRectCenteredRect();
  rect_24 = v22;
  v44 = v21;
  rect_8 = v24;
  rect_16 = v23;
  swift_getKeyPath();
  sub_1E4AAA060();

  v25 = v15;
  v26 = *(v2 + 112);
  v27 = *(v2 + 120);
  v28 = *(v2 + 128);
  v29 = *(v2 + 136);
  rect = v13 * v26;
  v50.origin.x = v26;
  v50.origin.y = v27;
  v50.size.width = v28;
  v50.size.height = v29;
  v30 = v13 * CGRectGetWidth(v50);
  v51.origin.x = v26;
  v51.origin.y = v27;
  v51.size.width = v28;
  v51.size.height = v29;
  v31 = v25 * CGRectGetHeight(v51);
  v52.origin.y = rect_24;
  v52.origin.x = v44;
  v52.size.height = rect_8;
  v52.size.width = rect_16;
  CGRectGetMinY(v52);
  v53.origin.x = rect;
  v53.origin.y = v25 * v27;
  v53.size.width = v30;
  v53.size.height = v31;
  CGRectGetMinY(v53);
  v54.origin.x = 0.0;
  v54.origin.y = 0.0;
  v54.size.width = v4;
  v54.size.height = v45;
  CGRectGetMidX(v54);
  v55.origin.x = 0.0;
  v55.origin.y = 0.0;
  v55.size.width = v4;
  v55.size.height = v45;
  MidY = CGRectGetMidY(v55);
  [*(v3 + 16) stripeAngleDegrees];
  v34 = v33;
  v56.origin.x = 0.0;
  v56.origin.y = 0.0;
  v56.size.width = v4;
  v56.size.height = v45;
  v35 = CGRectGetWidth(v56);
  swift_getKeyPath();
  sub_1E4AAA060();

  if (!UIInterfaceOrientationIsLandscape(*(v2 + 104)))
  {
    v36 = [objc_opt_self() currentDevice];
    [v36 userInterfaceIdiom];
  }

  v37 = v35 * 0.5 * tan(v34 * 0.0174532925);
  v57.origin.x = 0.0;
  v57.origin.y = 0.0;
  v57.size.width = v4;
  v57.size.height = v45;
  v38 = (MidY + v37) / CGRectGetHeight(v57);
  v58.origin.x = 0.0;
  v58.origin.y = 0.0;
  v58.size.width = v4;
  v58.size.height = v45;
  CGRectGetHeight(v58);
  v59.origin.x = 0.0;
  v59.origin.y = 0.0;
  v59.size.width = v4;
  v59.size.height = v45;
  CGRectGetHeight(v59);
  return v38;
}

void sub_1E4A76CF4(uint64_t a1)
{
  v2 = sub_1E4AAA030();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE0424A0 != -1)
  {
    swift_once();
  }

  v6 = sub_1E4AAA0E0();
  __swift_project_value_buffer(v6, qword_1EE048B40);
  (*(v3 + 16))(v5, a1, v2);
  v7 = sub_1E4AAA0C0();
  v8 = sub_1E4AAAA20();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136446210;
    v11 = sub_1E4AA9FF0();
    v13 = v12;
    (*(v3 + 8))(v5, v2);
    v14 = sub_1E4A85938(v11, v13, &v16);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_1E4A23000, v7, v8, "Completed rotation animation %{public}s.", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x1E691FE80](v10, -1, -1);
    MEMORY[0x1E691FE80](v9, -1, -1);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_1E4A76F28(uint64_t a1)
{
  v2 = type metadata accessor for WKPosterDynamicRotationState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_1E4A76F84()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 176) = result;
  return result;
}

uint64_t sub_1E4A76F94(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      v2 = *(a1 + 16);
      v3 = *(a2 + 16);

      v4 = v2;
      v5 = v3;
      v6 = [v4 isEqual_];

      return v6 ^ 1;
    }

    return 1;
  }

  return a2 != 0;
}

void sub_1E4A77040()
{
  *(*(v0 + 16) + 16) = *(v0 + 24);
}

unint64_t sub_1E4A77088()
{
  result = qword_1EE042110;
  if (!qword_1EE042110)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE042110);
  }

  return result;
}

uint64_t sub_1E4A770D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E798, &qword_1E4AB24F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E4A77144()
{
  result = qword_1EE042488;
  if (!qword_1EE042488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF8E7A0, &qword_1E4AB24F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE042488);
  }

  return result;
}

void sub_1E4A771A8(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_1E4AAAC80())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E7A8, &qword_1E4AB2500);
      v3 = sub_1E4AAABA0();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_1E4AAAC80();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x1E69E7CD0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = 0;
  v7 = v3 + 56;
  v22 = v1 & 0xC000000000000001;
  v19 = v1 + 32;
  v20 = v1 & 0xFFFFFFFFFFFFFF8;
  v21 = v1;
  while (v22)
  {
    v8 = MEMORY[0x1E691EFA0](v6, v1);
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_26;
    }

LABEL_18:
    sub_1E4AAA110();
    sub_1E4A7743C(&qword_1ECF8E7B0, MEMORY[0x1E695BF10], MEMORY[0x1E695BF18]);
    v10 = sub_1E4AAA830();
    v11 = -1 << *(v3 + 32);
    v12 = v10 & ~v11;
    v13 = v12 >> 6;
    v14 = *(v7 + 8 * (v12 >> 6));
    v15 = 1 << v12;
    if (((1 << v12) & v14) != 0)
    {
      v16 = ~v11;
      sub_1E4A7743C(&qword_1ECF8E7B8, MEMORY[0x1E695BF10], MEMORY[0x1E695BF20]);
      do
      {
        if (sub_1E4AAA860())
        {

          v1 = v21;
          goto LABEL_11;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *(v7 + 8 * (v12 >> 6));
        v15 = 1 << v12;
      }

      while (((1 << v12) & v14) != 0);
      v1 = v21;
    }

    *(v7 + 8 * v13) = v15 | v14;
    *(*(v3 + 48) + 8 * v12) = v8;
    v17 = *(v3 + 16);
    v9 = __OFADD__(v17, 1);
    v18 = v17 + 1;
    if (v9)
    {
      goto LABEL_27;
    }

    *(v3 + 16) = v18;
LABEL_11:
    if (v6 == v5)
    {
      return;
    }
  }

  if (v6 >= *(v20 + 16))
  {
    goto LABEL_28;
  }

  v8 = *(v19 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
}

uint64_t sub_1E4A7743C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E4A77484()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = v2[8];
  v16[5] = v2[7];
  v16[6] = v3;
  v4 = v2[10];
  v16[7] = v2[9];
  v16[8] = v4;
  v5 = v2[3];
  v6 = v2[5];
  v7 = v2[6];
  v16[2] = v2[4];
  v16[3] = v6;
  v16[4] = v7;
  v16[0] = v2[2];
  v16[1] = v5;
  v8 = v1[5];
  v9 = v1[6];
  v10 = v1[8];
  v2[9] = v1[7];
  v2[10] = v10;
  v2[7] = v8;
  v2[8] = v9;
  v12 = v1[3];
  v11 = v1[4];
  v13 = v1[2];
  v2[3] = v1[1];
  v2[4] = v13;
  v2[5] = v12;
  v2[6] = v11;
  v2[2] = *v1;
  sub_1E4A49D24(v1, &v15);
  return sub_1E4A49CD0(v16);
}

void sub_1E4A77558(uint64_t a1, void *a2)
{
  if (*(a1 + 24))
  {
    sub_1E4A2732C(a1, v6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5 = *v2;
    sub_1E4A95884(v6, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v5;
  }

  else
  {
    sub_1E4A4DC88(a1, &qword_1ECF8E7D0, &qword_1E4AB2590);
    sub_1E4A9EEB4(v6);

    sub_1E4A4DC88(v6, &qword_1ECF8E7D0, &qword_1E4AB2590);
  }
}

uint64_t sub_1E4A7760C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v141 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E7C0, &qword_1E4AAEA40);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v136 = v132 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v144 = v132 - v7;
  v140 = sub_1E4AAA030();
  v139 = *(v140 - 8);
  MEMORY[0x1EEE9AC00](v140);
  v138 = v132 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = sub_1E4AA9FE0();
  v142 = *(v146 - 8);
  v9 = MEMORY[0x1EEE9AC00](v146);
  v137 = v132 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v143 = v132 - v11;
  LOBYTE(v12) = sub_1E4A785F4(a1);
  v13 = sub_1E4AAA8A0();
  v15 = v14;
  if (v13 == sub_1E4AAA8A0() && v15 == v16)
  {

    v19 = 1;
  }

  else
  {
    v18 = sub_1E4AAADA0();

    v19 = v18 & 1;
  }

  v20 = sub_1E4A904E8(MEMORY[0x1E69E7CC0]);
  v21 = @"default";
  v155 = v2;
  sub_1E4A787F0(v19, v12 & 1, v158);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v157 = v20;
  v23 = sub_1E4A9308C();
  v25 = v24;
  data = v20->data;
  v27 = (v24 & 1) == 0;
  type metadata accessor for WKWallpaperLocation(0);
  v29 = v28;
  v30 = &data[v27];
  if (__OFADD__(data, v27))
  {
    goto LABEL_104;
  }

  length = v20->length;
  v135 = v29;
  if (length < v30)
  {
    sub_1E4A67008(v30, isUniquelyReferenced_nonNull_native);
    v20 = v157;
    v32 = sub_1E4A9308C();
    if ((v25 & 1) != (v33 & 1))
    {
      goto LABEL_112;
    }

    v23 = v32;
    if (v25)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (isUniquelyReferenced_nonNull_native)
  {
    if (v25)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  sub_1E4A683B0();
  v20 = v157;
  if ((v25 & 1) == 0)
  {
LABEL_14:
    v34 = sub_1E4A905E0(MEMORY[0x1E69E7CC0]);
    sub_1E4A95364(v23, a1, v34, v20);
    v35 = a1;
  }

LABEL_15:
  v36 = v20;
  sub_1E4A77558(v158, v21);
  if ((v12 & 1) == 0)
  {
    v21 = 0;
    if (!v20->data)
    {
      goto LABEL_58;
    }

    goto LABEL_22;
  }

  v37 = @"dark";
  sub_1E4A787F0(v19, 2, v158);
  v38 = swift_isUniquelyReferenced_nonNull_native();
  v157 = v20;
  v40 = sub_1E4A9308C();
  v41 = v20->data;
  v42 = (v39 & 1) == 0;
  v43 = &v41[v42];
  if (__OFADD__(v41, v42))
  {
    __break(1u);
    goto LABEL_109;
  }

  v44 = v39;
  if (v20->length < v43)
  {
    sub_1E4A67008(v43, v38);
    v36 = v157;
    v45 = sub_1E4A9308C();
    if ((v44 & 1) == (v46 & 1))
    {
      v40 = v45;
      if (v44)
      {
        goto LABEL_57;
      }

      goto LABEL_56;
    }

LABEL_112:
    result = sub_1E4AAADB0();
    __break(1u);
    return result;
  }

  if (v38)
  {
    if (v39)
    {
      goto LABEL_57;
    }

    goto LABEL_56;
  }

  sub_1E4A683B0();
  v36 = v157;
  if ((v44 & 1) == 0)
  {
LABEL_56:
    v70 = sub_1E4A905E0(MEMORY[0x1E69E7CC0]);
    sub_1E4A95364(v40, a1, v70, v36);
    v71 = a1;
  }

LABEL_57:
  sub_1E4A77558(v158, v37);
  v21 = sub_1E4A7AB44;
  if (!v36->data)
  {
LABEL_58:
    v40 = v21;

    if (qword_1ECF8DD10 == -1)
    {
LABEL_59:
      v72 = sub_1E4AAA0E0();
      __swift_project_value_buffer(v72, qword_1ECF92330);
      v73 = a1;
      v74 = sub_1E4AAA0C0();
      v75 = sub_1E4AAAA00();

      if (os_log_type_enabled(v74, v75))
      {
        v76 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        v158[0] = v77;
        *v76 = 136315138;
        v78 = sub_1E4AAA8A0();
        v80 = sub_1E4A85938(v78, v79, v158);

        *(v76 + 4) = v80;
        _os_log_impl(&dword_1E4A23000, v74, v75, "No synthesized wallpapers, unable to create wallpaper bundle (wallpaperLocation: %s).", v76, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v77);
        MEMORY[0x1E691FE80](v77, -1, -1);
        MEMORY[0x1E691FE80](v76, -1, -1);
      }

      v81 = v141;
      *(v141 + 32) = 0;
      *v81 = 0u;
      v81[1] = 0u;

      return sub_1E4A27344(v40, 0);
    }

LABEL_109:
    swift_once();
    goto LABEL_59;
  }

LABEL_22:
  v145 = v36;
  v47 = 0x726353206B636F4CLL;
  if (v19)
  {
    v47 = 0x72635320656D6F48;
  }

  v132[1] = v47;
  v48 = &unk_1F5E99A50;
  if (v12)
  {
    v48 = &unk_1F5E99A20;
  }

  v134 = v48;
  v49 = [v155 dataStores];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E7C8, &qword_1E4AB2588);
  v50 = sub_1E4AAA950();

  v30 = v50;
  if (v50 >> 62)
  {
    goto LABEL_105;
  }

  v51 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_28:
  v133 = v21;
  if (v51)
  {
    v52 = 0;
    LODWORD(v155) = 0;
    if (v12)
    {
      v53 = &unk_1F5E99A30;
    }

    else
    {
      v53 = &unk_1F5E99A60;
    }

    v54 = *v53;
    v153 = v30 & 0xC000000000000001;
    v148 = v30 & 0xFFFFFFFFFFFFFF8;
    v149 = v30;
    v147 = v30 + 32;
    v55 = &unk_1F5E99A40;
    if ((v12 & 1) == 0)
    {
      v55 = &unk_1F5E99A70;
    }

    v150 = v55;
    v151 = v54;
    v12 = @"WKWallpaperKitDataWantsDeviceMotionKey";
    v21 = &unk_1E8767000;
    v152 = v51;
    while (1)
    {
      if (v153)
      {
        v30 = MEMORY[0x1E691EFA0](v52, v149);
        v56 = v30;
        v57 = __OFADD__(v52, 1);
        v58 = (&v52->isa + 1);
        if (v57)
        {
          goto LABEL_100;
        }
      }

      else
      {
        if (v52 >= *(v148 + 16))
        {
          goto LABEL_102;
        }

        v56 = *(v147 + 8 * v52);
        v30 = swift_unknownObjectRetain();
        v57 = __OFADD__(v52, 1);
        v58 = (&v52->isa + 1);
        if (v57)
        {
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
          v130 = v30;
          v51 = sub_1E4AAAC80();
          v30 = v130;
          goto LABEL_28;
        }
      }

      v154 = v58;
      v59 = v150;
      for (i = v151; i; --i)
      {
        v61 = *v59++;
        v62 = [v56 wallpaperOptionsForVariant:v19 wallpaperMode:v61];
        if (v62)
        {
          v63 = v62;
          v64 = [v62 wallpaperKitData];
          if (v64)
          {
            v65 = v64;
            v66 = sub_1E4AAA810();

            v156 = @"WKWallpaperKitDataWantsDeviceMotionKey";
            type metadata accessor for WKWallpaperKitDataKey(0);
            sub_1E4A7ACE8(&qword_1ECF8E040, type metadata accessor for WKWallpaperKitDataKey, &unk_1E4AAE9B0);
            v67 = @"WKWallpaperKitDataWantsDeviceMotionKey";
            sub_1E4AAAB90();
            if (*(v66 + 16) && (v68 = sub_1E4A8F330(v158), (v69 & 1) != 0))
            {
              sub_1E4A479C0(*(v66 + 56) + 32 * v68, &v157);

              sub_1E4A60E2C(v158);

              if (swift_dynamicCast())
              {
                LODWORD(v155) = v155 | v156;
              }
            }

            else
            {

              sub_1E4A60E2C(v158);
            }
          }

          else
          {
          }
        }
      }

      v30 = swift_unknownObjectRelease();
      v52 = v154;
      if (v154 == v152)
      {

        goto LABEL_65;
      }
    }
  }

  LODWORD(v155) = 0;
LABEL_65:

  v83 = NSTemporaryDirectory();
  sub_1E4AAA8A0();

  v84 = v137;
  sub_1E4AA9F80();

  v85 = v138;
  sub_1E4AAA020();
  sub_1E4AA9FF0();
  (*(v139 + 8))(v85, v140);
  sub_1E4AA9FB0();

  v86 = v142;
  v87 = *(v142 + 8);
  v19 = v146;
  v138 = (v142 + 8);
  v137 = v87;
  (v87)(v84, v146);
  v134 = @"any";
  (*(v86 + 56))(v144, 1, 1, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E3D0, &qword_1E4AB01E0);
  v88 = v145;
  v30 = sub_1E4AAACD0();
  v148 = v30;
  v89 = 0;
  isa = v88[2].isa;
  v21 = v88 + 2;
  v90 = isa;
  v140 = v21;
  v92 = 1 << LOBYTE(v21[-1].isa);
  if (v92 < 64)
  {
    v93 = ~(-1 << v92);
  }

  else
  {
    v93 = -1;
  }

  v94 = v93 & v90;
  v139 = (v92 + 63) >> 6;
  v147 = v30 + 64;
  if (v94)
  {
    while (1)
    {
      v95 = __clz(__rbit64(v94));
      v149 = (v94 - 1) & v94;
LABEL_75:
      v98 = v95 | (v89 << 6);
      v99 = v145[1].length;
      v100 = *&v145[1].data[8 * v98];
      v151 = v98;
      v12 = *(v99 + 8 * v98);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E3D8, &qword_1E4AB01E8);
      v101 = sub_1E4AAACD0();
      v102 = v101;
      v21 = (v12 + 64);
      v103 = 1 << *(v12 + 32);
      v104 = v103 < 64 ? ~(-1 << v103) : -1;
      v105 = v104 & *(v12 + 64);
      v106 = (v103 + 63) >> 6;
      v152 = v101 + 64;
      v150 = v100;
      v154 = v12;

      v19 = 0;
      v153 = v102;
      if (v105)
      {
        break;
      }

LABEL_80:
      v108 = v19;
      while (1)
      {
        v19 = v108 + 1;
        if (__OFADD__(v108, 1))
        {
          __break(1u);
LABEL_99:
          __break(1u);
          goto LABEL_100;
        }

        if (v19 >= v106)
        {
          break;
        }

        v109 = *(&v21->isa + v19);
        ++v108;
        if (v109)
        {
          v107 = __clz(__rbit64(v109));
          v105 = (v109 - 1) & v109;
          goto LABEL_85;
        }
      }

      v116 = v151;
      *(v147 + ((v151 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v151;
      v117 = v148;
      *(*(v148 + 48) + 8 * v116) = v150;
      *(*(v117 + 56) + 8 * v116) = v102;
      v118 = *(v117 + 16);
      v57 = __OFADD__(v118, 1);
      v119 = v118 + 1;
      if (v57)
      {
        goto LABEL_103;
      }

      *(v117 + 16) = v119;
      v19 = v146;
      v94 = v149;
      if (!v149)
      {
        goto LABEL_70;
      }
    }

    while (1)
    {
      v107 = __clz(__rbit64(v105));
      v105 &= v105 - 1;
LABEL_85:
      v12 = v107 | (v19 << 6);
      v110 = *&v154[1].data[8 * v12];
      sub_1E4A4D9A0(v154[1].length + 40 * v12, v158);
      v111 = v159;
      __swift_project_boxed_opaque_existential_1(v158, v159);
      v112 = v110;
      v113 = sub_1E4A55888(v111);
      v30 = __swift_destroy_boxed_opaque_existential_1Tm(v158);
      v102 = v153;
      *(v152 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(v102[6] + 8 * v12) = v112;
      *(v102[7] + 8 * v12) = v113;
      v114 = v102[2];
      v57 = __OFADD__(v114, 1);
      v115 = v114 + 1;
      if (v57)
      {
        goto LABEL_101;
      }

      v102[2] = v115;
      if (!v105)
      {
        goto LABEL_80;
      }
    }
  }

LABEL_70:
  v96 = v89;
  while (1)
  {
    v89 = v96 + 1;
    if (__OFADD__(v96, 1))
    {
      goto LABEL_99;
    }

    if (v89 >= v139)
    {
      break;
    }

    v97 = *(v140 + 8 * v89);
    ++v96;
    if (v97)
    {
      v95 = __clz(__rbit64(v97));
      v149 = (v97 - 1) & v97;
      goto LABEL_75;
    }
  }

  v120 = sub_1E4AA9FA0();
  v121 = sub_1E4AAA870();

  v122 = v136;
  sub_1E4A48054(v144, v136);
  if ((*(v142 + 48))(v122, 1, v19) == 1)
  {
    v123 = 0;
  }

  else
  {
    v123 = sub_1E4AA9FA0();
    (v137)(v122, v19);
  }

  v124 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E3E0, &qword_1E4AB01F0);
  sub_1E4A7ACE8(&qword_1ECF8DF70, type metadata accessor for WKWallpaperLocation, &unk_1E4AAE52C);
  v125 = sub_1E4AAA800();

  LOBYTE(v131) = 0;
  v126 = [v124 _createWallpaperBundleInDirectory_version_identifier_name_family_wantsDeviceMotion_isOffloaded_logicalScreenClass_thumbnailImageURL_adjustmentTraits_preferredProminentColors_preferredTitleColors_assetMapping_];

  sub_1E4A4DC88(v144, &qword_1ECF8E7C0, &qword_1E4AAEA40);
  if (v126)
  {
    type metadata accessor for WKWallpaperBundle.ImplementationWrapper();
    v127 = swift_allocObject();
    *(v127 + 16) = v126;
    v128 = v141;
    *(v141 + 24) = &type metadata for WKWallpaperBundle;
    v128[4] = sub_1E4A50754();
    *v128 = v127;
    (v137)(v143, v146);
  }

  else
  {
    (v137)(v143, v146);
    v129 = v141;
    *(v141 + 32) = 0;
    *v129 = 0u;
    v129[1] = 0u;
  }

  return sub_1E4A27344(v133, 0);
}

BOOL sub_1E4A785F4(uint64_t a1)
{
  v3 = [v1 dataStores];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E7C8, &qword_1E4AB2588);
  v4 = sub_1E4AAA950();

  v5 = v4 & 0xFFFFFFFFFFFFFF8;
  if (v4 >> 62)
  {
LABEL_18:
    v6 = sub_1E4AAAC80();
  }

  else
  {
    v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  v8 = v4 & 0xC000000000000001;
  do
  {
    v17 = v7;
    if (v6 == v7)
    {
      break;
    }

    if (v8)
    {
      v18 = MEMORY[0x1E691EFA0](v7, v4);
      if (__OFADD__(v17, 1))
      {
LABEL_15:
        __break(1u);
        break;
      }
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        __break(1u);
        goto LABEL_18;
      }

      v18 = *(v4 + 8 * v7 + 32);
      swift_unknownObjectRetain();
      if (__OFADD__(v17, 1))
      {
        goto LABEL_15;
      }
    }

    v19 = sub_1E4AAA8A0();
    v21 = v20;
    if (v19 == sub_1E4AAA8A0() && v21 == v22)
    {

      v15 = 1;
    }

    else
    {
      v9 = v4;
      v10 = v6;
      v11 = v8;
      v12 = v5;
      v13 = a1;
      v14 = sub_1E4AAADA0();

      v15 = v14 & 1;
      a1 = v13;
      v5 = v12;
      v8 = v11;
      v6 = v10;
      v4 = v9;
    }

    v16 = [v18 hasWallpaperImageForVariant:v15 wallpaperMode:2];
    swift_unknownObjectRelease();
    v7 = v17 + 1;
  }

  while (!v16);

  return v6 != v17;
}

void sub_1E4A787F0(void (*a1)(void)@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v4 = v3;
  v345 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E7D8, qword_1E4AB2598);
  MEMORY[0x1EEE9AC00](v345);
  v349 = (&v325 - v8);
  v9 = sub_1E4AA9FE0();
  v352 = *(v9 - 8);
  v353 = v9;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v325 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v333 = &v325 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v325 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v336 = &v325 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v346 = &v325 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v339 = &v325 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v347 = &v325 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E7C0, &qword_1E4AAEA40);
  v26 = MEMORY[0x1EEE9AC00](v25 - 8);
  v331 = &v325 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v332 = &v325 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  MEMORY[0x1EEE9AC00](v30);
  v32 = MEMORY[0x1EEE9AC00](&v325 - v31);
  v33 = MEMORY[0x1EEE9AC00](v32);
  v34 = MEMORY[0x1EEE9AC00](v33);
  v344 = &v325 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v351 = &v325 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v343 = &v325 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v42 = &v325 - v41;
  v43 = MEMORY[0x1EEE9AC00](v40);
  v342 = &v325 - v44;
  v45 = MEMORY[0x1EEE9AC00](v43);
  v47 = &v325 - v46;
  v48 = MEMORY[0x1EEE9AC00](v45);
  v49 = MEMORY[0x1EEE9AC00](v48);
  v51 = &v325 - v50;
  v52 = MEMORY[0x1EEE9AC00](v49);
  v340 = &v325 - v53;
  v54 = MEMORY[0x1EEE9AC00](v52);
  v56 = (&v325 - v55);
  v337 = v17;
  v335 = v12;
  v330 = v57;
  v338 = v58;
  v329 = v59;
  v334 = v54;
  v341 = v60;
  if (a2 == 2)
  {
    v61 = 30;
    if (a1 == 1)
    {
      v61 = 52;
    }

    v62 = a1 == 0;
    v63 = 42;
  }

  else if (a2 == 1)
  {
    v61 = 30;
    if (a1 == 1)
    {
      v61 = 51;
    }

    v62 = a1 == 0;
    v63 = 41;
  }

  else
  {
    if (a2)
    {
      v61 = 30;
      goto LABEL_17;
    }

    v61 = 30;
    if (a1 == 1)
    {
      v61 = 50;
    }

    v62 = a1 == 0;
    v63 = 40;
  }

  if (v62)
  {
    v61 = v63;
  }

LABEL_17:
  v348 = v61;
  v64 = [v4 wallpaperConfigurationForVariant:a1 includingValuesForTypes:63 wallpaperMode:a2];
  v65 = [v64 wallpaperType];
  v356 = a2;
  if (v65 == 2)
  {
    v66 = [v64 proceduralWallpaperOptions];
    if (v66)
    {
      v67 = v66;
      v68 = sub_1E4AAA810();

      v357 = sub_1E4AAA8A0();
      v358 = v69;
      sub_1E4AAAB90();
      if (*(v68 + 16) && (v70 = sub_1E4A8F330(&v359), (v71 & 1) != 0))
      {
        sub_1E4A479C0(*(v68 + 56) + 32 * v70, v360);
        sub_1E4A60E2C(&v359);

        if (swift_dynamicCast())
        {
          v74 = sub_1E4A55254(v357, v358, v72, v73);
          sub_1E4A7AB74(6uLL, v356, a1);
          sub_1E4A53A18(v74);
          sub_1E4A541E0(v74);
          a3[3] = &type metadata for WKBokehWallpaper;
          a3[4] = &protocol witness table for WKBokehWallpaper;
          v75 = objc_allocWithZone(WKBokehWallpaper);
          v76 = sub_1E4AAA870();

          sub_1E4A47A2C(0, &qword_1EE042130, 0x1E69DC888);
          v77 = sub_1E4AAA940();

          v78 = sub_1E4AAA940();

          v79 = [v75 initWithIdentifier:v348 name:v76 backgroundColors:v77 bubbleColors:v78 bubbleCount:40 bubbleScale:0 parallaxMultiplier:1.0 thumbnailSeed:0.5];

          type metadata accessor for WKBokehWallpaper.ImplementationWrapper();
          v80 = swift_allocObject();
          *(v80 + 16) = v79;

          *a3 = v80;
          return;
        }
      }

      else
      {
LABEL_42:

        sub_1E4A60E2C(&v359);
      }
    }

    if (qword_1ECF8DD10 == -1)
    {
      goto LABEL_44;
    }

    goto LABEL_122;
  }

  v350 = v64;
  if ([v64 wallpaperType] == 4)
  {
    if (qword_1ECF8DD10 != -1)
    {
      swift_once();
    }

    v81 = sub_1E4AAA0E0();
    __swift_project_value_buffer(v81, qword_1ECF92330);
    v82 = v350;
    v83 = sub_1E4AAA0C0();
    v84 = sub_1E4AAAA00();
    if (os_log_type_enabled(v83, v84))
    {
      v354 = a3;
      v85 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v359 = v86;
      *v85 = 136446722;
      v355 = a1;
      v87 = PBUIStringForWallpaperVariant();
      v88 = sub_1E4AAA8A0();
      v90 = v89;

      v91 = sub_1E4A85938(v88, v90, &v359);

      *(v85 + 4) = v91;
      *(v85 + 12) = 2082;
      v92 = PBUIStringForWallpaperMode();

      if (!v92)
      {
LABEL_126:
        __break(1u);
LABEL_127:
        __break(1u);
        goto LABEL_128;
      }

      v93 = sub_1E4AAA8A0();
      v95 = v94;

      v96 = sub_1E4A85938(v93, v95, &v359);

      *(v85 + 14) = v96;
      *(v85 + 22) = 2082;
      [v82 wallpaperType];
      v97 = PBUIStringForWallpaperType();
      v98 = sub_1E4AAA8A0();
      v100 = v99;

      v101 = sub_1E4A85938(v98, v100, &v359);

      *(v85 + 24) = v101;
      _os_log_impl(&dword_1E4A23000, v83, v84, "Color wallpaper migration not supported. (variant: %{public}s, mode: %{public}s, type: %{public}s).", v85, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E691FE80](v86, -1, -1);
      MEMORY[0x1E691FE80](v85, -1, -1);

      a3 = v354;
    }

    else
    {
    }

    v128 = v82;
    v129 = sub_1E4AAA0C0();
    v130 = sub_1E4AAAA10();
    if (os_log_type_enabled(v129, v130))
    {
      v131 = swift_slowAlloc();
      v132 = swift_slowAlloc();
      v359 = v132;
      *v131 = 136446722;
      v171 = PBUIStringForWallpaperVariant();
      v172 = sub_1E4AAA8A0();
      v174 = v173;

      v175 = sub_1E4A85938(v172, v174, &v359);

      *(v131 + 4) = v175;
      *(v131 + 12) = 2082;
      v176 = PBUIStringForWallpaperMode();

      if (v176)
      {
        v177 = sub_1E4AAA8A0();
        v179 = v178;

        v180 = sub_1E4A85938(v177, v179, &v359);

        *(v131 + 14) = v180;
        *(v131 + 22) = 2082;
        [v128 wallpaperType];
        v181 = PBUIStringForWallpaperType();
        v182 = sub_1E4AAA8A0();
        v184 = v183;

        v185 = sub_1E4A85938(v182, v184, &v359);

        *(v131 + 24) = v185;
        v148 = "Color wallpaper migration not supported. (variant: %{public}s, mode: %{public}s, type: %{public}s).";
        goto LABEL_65;
      }

      goto LABEL_127;
    }

    goto LABEL_66;
  }

  v327 = v42;
  v328 = v47;
  v102 = [v4 dataStores];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E7C8, &qword_1E4AB2588);
  v103 = sub_1E4AAA950();

  v326 = v56;
  v354 = a3;
  v355 = a1;
  if (v103 >> 62)
  {
    v104 = sub_1E4AAAC80();
  }

  else
  {
    v104 = *((v103 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v325 = v51;
  if (!v104)
  {
LABEL_51:

    a3 = v354;
LABEL_52:
    v149 = v350;
    if (qword_1ECF8DD10 != -1)
    {
      swift_once();
    }

    v150 = sub_1E4AAA0E0();
    __swift_project_value_buffer(v150, qword_1ECF92330);
    v151 = v149;
    v152 = sub_1E4AAA0C0();
    v153 = sub_1E4AAAA00();
    if (os_log_type_enabled(v152, v153))
    {
      v154 = swift_slowAlloc();
      v155 = swift_slowAlloc();
      v359 = v155;
      *v154 = 136446722;
      v156 = PBUIStringForWallpaperVariant();
      v157 = sub_1E4AAA8A0();
      v159 = v158;

      v160 = sub_1E4A85938(v157, v159, &v359);

      *(v154 + 4) = v160;
      *(v154 + 12) = 2082;
      v161 = PBUIStringForWallpaperMode();

      if (!v161)
      {
LABEL_128:
        __break(1u);
        goto LABEL_129;
      }

      v162 = sub_1E4AAA8A0();
      v164 = v163;

      v165 = sub_1E4A85938(v162, v164, &v359);

      *(v154 + 14) = v165;
      *(v154 + 22) = 2082;
      [v151 wallpaperType];
      v166 = PBUIStringForWallpaperType();
      v167 = sub_1E4AAA8A0();
      v169 = v168;

      v170 = sub_1E4A85938(v167, v169, &v359);

      *(v154 + 24) = v170;
      _os_log_impl(&dword_1E4A23000, v152, v153, "No wallpaper directory data store found, migration not possible (variant: %{public}s, mode: %{public}s, type: %{public}s).", v154, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E691FE80](v155, -1, -1);
      MEMORY[0x1E691FE80](v154, -1, -1);

      a3 = v354;
    }

    else
    {
    }

    v128 = v151;
    v129 = sub_1E4AAA0C0();
    v130 = sub_1E4AAAA10();
    if (os_log_type_enabled(v129, v130))
    {
      v131 = swift_slowAlloc();
      v132 = swift_slowAlloc();
      v359 = v132;
      *v131 = 136446722;
      v186 = PBUIStringForWallpaperVariant();
      v187 = sub_1E4AAA8A0();
      v189 = v188;

      v190 = sub_1E4A85938(v187, v189, &v359);

      *(v131 + 4) = v190;
      *(v131 + 12) = 2082;
      v191 = PBUIStringForWallpaperMode();

      if (v191)
      {
        v192 = sub_1E4AAA8A0();
        v194 = v193;

        v195 = sub_1E4A85938(v192, v194, &v359);

        *(v131 + 14) = v195;
        *(v131 + 22) = 2082;
        [v128 wallpaperType];
        v196 = PBUIStringForWallpaperType();
        v197 = sub_1E4AAA8A0();
        v199 = v198;

        v200 = sub_1E4A85938(v197, v199, &v359);

        *(v131 + 24) = v200;
        v148 = "No wallpaper directory data store found, migration not possible (variant: %{public}s, mode: %{public}s, type: %{public}s).";
        goto LABEL_65;
      }

LABEL_129:
      __break(1u);
LABEL_130:
      __break(1u);
      goto LABEL_131;
    }

    goto LABEL_66;
  }

  v105 = 0;
  a3 = &qword_1ECF8E7E0;
  a1 = &unk_1E8767000;
  while (1)
  {
    if ((v103 & 0xC000000000000001) != 0)
    {
      v106 = MEMORY[0x1E691EFA0](v105, v103);
      v64 = (v105 + 1);
      if (__OFADD__(v105, 1))
      {
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }
    }

    else
    {
      if (v105 >= *((v103 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_122:
        swift_once();
LABEL_44:
        v107 = sub_1E4AAA0E0();
        __swift_project_value_buffer(v107, qword_1ECF92330);
        v108 = v64;
        v109 = sub_1E4AAA0C0();
        v110 = sub_1E4AAAA00();
        if (os_log_type_enabled(v109, v110))
        {
          v354 = a3;
          v111 = swift_slowAlloc();
          v112 = swift_slowAlloc();
          v359 = v112;
          *v111 = 136446722;
          v355 = a1;
          v113 = PBUIStringForWallpaperVariant();
          v114 = sub_1E4AAA8A0();
          v116 = v115;

          v117 = sub_1E4A85938(v114, v116, &v359);

          *(v111 + 4) = v117;
          *(v111 + 12) = 2082;
          v118 = PBUIStringForWallpaperMode();

          if (!v118)
          {
            __break(1u);
LABEL_125:
            __break(1u);
            goto LABEL_126;
          }

          v119 = sub_1E4AAA8A0();
          v121 = v120;

          v122 = sub_1E4A85938(v119, v121, &v359);

          *(v111 + 14) = v122;
          *(v111 + 22) = 2082;
          [v108 wallpaperType];
          v123 = PBUIStringForWallpaperType();
          v124 = sub_1E4AAA8A0();
          v126 = v125;

          v127 = sub_1E4A85938(v124, v126, &v359);

          *(v111 + 24) = v127;
          _os_log_impl(&dword_1E4A23000, v109, v110, "No bokeh variant found (variant: %{public}s, mode: %{public}s, type: %{public}s).", v111, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1E691FE80](v112, -1, -1);
          MEMORY[0x1E691FE80](v111, -1, -1);

          a3 = v354;
        }

        else
        {
        }

        v128 = v108;
        v129 = sub_1E4AAA0C0();
        v130 = sub_1E4AAAA10();
        if (os_log_type_enabled(v129, v130))
        {
          v131 = swift_slowAlloc();
          v132 = swift_slowAlloc();
          v359 = v132;
          *v131 = 136446722;
          v133 = PBUIStringForWallpaperVariant();
          v134 = sub_1E4AAA8A0();
          v136 = v135;

          v137 = sub_1E4A85938(v134, v136, &v359);

          *(v131 + 4) = v137;
          *(v131 + 12) = 2082;
          v138 = PBUIStringForWallpaperMode();

          if (v138)
          {
            v139 = sub_1E4AAA8A0();
            v141 = v140;

            v142 = sub_1E4A85938(v139, v141, &v359);

            *(v131 + 14) = v142;
            *(v131 + 22) = 2082;
            [v128 wallpaperType];
            v143 = PBUIStringForWallpaperType();
            v144 = sub_1E4AAA8A0();
            v146 = v145;

            v147 = sub_1E4A85938(v144, v146, &v359);

            *(v131 + 24) = v147;
            v148 = "No bokeh variant found (variant: %{public}s, mode: %{public}s, type: %{public}s).";
LABEL_65:
            _os_log_impl(&dword_1E4A23000, v129, v130, v148, v131, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x1E691FE80](v132, -1, -1);
            MEMORY[0x1E691FE80](v131, -1, -1);

LABEL_67:
            a3[4] = 0;
            *a3 = 0u;
            *(a3 + 1) = 0u;
            return;
          }

          goto LABEL_125;
        }

LABEL_66:

        goto LABEL_67;
      }

      v106 = *(v103 + 8 * v105 + 32);
      swift_unknownObjectRetain();
      v64 = (v105 + 1);
      if (__OFADD__(v105, 1))
      {
        goto LABEL_41;
      }
    }

    sub_1E4A47A2C(0, &qword_1ECF8E7E0, 0x1E69B7DF8);
    if ([v106 isKindOfClass_])
    {
      break;
    }

    swift_unknownObjectRelease();
    ++v105;
    if (v64 == v104)
    {
      goto LABEL_51;
    }
  }

  objc_opt_self();
  v201 = swift_dynamicCastObjCClass();
  a3 = v354;
  if (!v201)
  {
    swift_unknownObjectRelease();
    goto LABEL_52;
  }

  v202 = v201;
  v203 = v356;
  v204 = [v201 wk:v355 wallpaperThumbnailURLForVariant:v356 wallpaperMode:?];
  if (v204)
  {
    v205 = v340;
    v206 = v204;
    sub_1E4AA9FC0();

    v207 = *(v352 + 56);
    v207(v205, 0, 1, v353);
  }

  else
  {
    v207 = *(v352 + 56);
    v205 = v340;
    v207(v340, 1, 1, v353);
  }

  v208 = v326;
  v209 = v325;
  sub_1E4A4EF94(v205, v326);
  v210 = [v202 wk:v355 wallpaperOriginalImageURLForVariant:v203 wallpaperMode:?];
  if (v210)
  {
    v211 = v341;
    v212 = v210;
    sub_1E4AA9FC0();

    v213 = 0;
  }

  else
  {
    v213 = 1;
    v211 = v341;
  }

  v214 = 1;
  v207(v211, v213, 1, v353);
  sub_1E4A4EF94(v211, v209);
  v215 = [v202 wk:v355 wallpaperImageURLForVariant:v203 wallpaperMode:?];
  v216 = v342;
  if (v215)
  {
    v217 = v215;
    sub_1E4AA9FC0();

    v214 = 0;
  }

  v218 = 1;
  v207(v216, v214, 1, v353);
  sub_1E4A4EF94(v216, v328);
  v219 = [v350 originalVideoURL];
  v220 = v343;
  if (v219)
  {
    v221 = v219;
    sub_1E4AA9FC0();

    v218 = 0;
  }

  v222 = 1;
  v207(v220, v218, 1, v353);
  sub_1E4A4EF94(v220, v327);
  v223 = [v350 videoURL];
  v224 = v344;
  if (v223)
  {
    v225 = v223;
    sub_1E4AA9FC0();

    v222 = 0;
  }

  v207(v224, v222, 1, v353);
  sub_1E4A4EF94(v224, v351);
  v226 = [v350 wallpaperOptions];
  if (v226)
  {
    v227 = v226;
    [v226 stillTimeInVideo];
    v229 = v228;
  }

  else
  {
    v229 = 0.0;
  }

  v230 = v328;
  v231 = v349 + v345[12];
  v232 = v349 + v345[16];
  v233 = (v349 + v345[20]);
  v234 = (v349 + v345[24]);
  sub_1E4A48054(v208, v349);
  sub_1E4A48054(v209, v231);
  sub_1E4A48054(v327, v232);
  sub_1E4A48054(v230, v233);
  sub_1E4A48054(v351, v234);
  v235 = v353;
  v236 = *(v352 + 48);
  if (v236(v231, 1, v353) != 1)
  {
    v237 = v334;
    sub_1E4A48054(v231, v334);
    if (v236(v232, 1, v235) == 1)
    {
      (*(v352 + 8))(v237, v235);
      goto LABEL_88;
    }

    v270 = v232;
    v345 = v234;
LABEL_107:
    sub_1E4A4EF94(v349, v338);
    v279 = v353;
    v280 = v237;
    v281 = *(v352 + 32);
    (v281)(v347, v280, v353);
    (v281)(v339, v270, v279);
    sub_1E4A4DC88(v345, &qword_1ECF8E7C0, &qword_1E4AAEA40);
    sub_1E4A4DC88(v233, &qword_1ECF8E7C0, &qword_1E4AAEA40);
    v282 = v279;
    sub_1E4A4DC88(v231, &qword_1ECF8E7C0, &qword_1E4AAEA40);
    v356 = sub_1E4A7AB74(1uLL, v356, v355);
    v283 = v332;
    sub_1E4A4EF94(v338, v332);
    if (v236(v283, 1, v279) == 1)
    {
      v355 = v281;
      v284 = v283;
      v285 = *(v352 + 16);
      v285(v336, v347, v279);
      if (v236(v284, 1, v279) != 1)
      {
        sub_1E4A4DC88(v284, &qword_1ECF8E7C0, &qword_1E4AAEA40);
      }

      v286 = v336;
      v281 = v355;
    }

    else
    {
      v286 = v336;
      v281();
      v285 = *(v352 + 16);
    }

    v287 = v337;
    v285(v337, v347, v279);
    v288 = v333;
    (v281)(v333, v339, v279);
    v289 = v354;
    v354[3] = &type metadata for WKLiveWallpaper;
    v289[4] = &protocol witness table for WKLiveWallpaper;
    v290 = objc_allocWithZone(WKLiveWallpaper);
    v291 = sub_1E4AAA870();

    v292 = v286;
    v293 = sub_1E4AA9FA0();
    v294 = v282;
    v295 = sub_1E4AA9FA0();
    v296 = sub_1E4AA9FA0();
    v297 = [v290 initWithIdentifier:v348 name:v291 type:0 thumbnailImageURL:v293 fullsizeImageURL:v295 videoAssetURL:v296 stillTimeInVideo:v229];

    v298 = *(v352 + 8);
    v298(v288, v294);
    v298(v287, v294);
    v298(v292, v294);
    type metadata accessor for WKLiveWallpaper.ImplementationWrapper();
    v299 = swift_allocObject();
    *(v299 + 16) = v297;

    swift_unknownObjectRelease();
    *v354 = v299;
    v298(v347, v294);
LABEL_113:
    sub_1E4A4DC88(v351, &qword_1ECF8E7C0, &qword_1E4AAEA40);
    sub_1E4A4DC88(v327, &qword_1ECF8E7C0, &qword_1E4AAEA40);
    sub_1E4A4DC88(v328, &qword_1ECF8E7C0, &qword_1E4AAEA40);
    sub_1E4A4DC88(v325, &qword_1ECF8E7C0, &qword_1E4AAEA40);
    v300 = v326;
    v301 = &qword_1ECF8E7C0;
    v302 = &qword_1E4AAEA40;
LABEL_114:
    sub_1E4A4DC88(v300, v301, v302);
    return;
  }

LABEL_88:
  if (v236(v233, 1, v235) != 1)
  {
    v237 = v329;
    sub_1E4A48054(v233, v329);
    if (v236(v234, 1, v235) != 1)
    {
      v270 = v234;
      v345 = v233;
      v233 = v232;
      goto LABEL_107;
    }

    (*(v352 + 8))(v237, v235);
  }

  v345 = v234;
  if (v236(v231, 1, v235) != 1)
  {
    v239 = v235;
    v240 = v231;
    v231 = v232;
    goto LABEL_99;
  }

  v238 = v236(v233, 1, v235);
  v239 = v235;
  v240 = v233;
  v233 = v232;
  if (v238 != 1)
  {
LABEL_99:
    v262 = v330;
    sub_1E4A4EF94(v349, v330);
    v349 = *(v352 + 32);
    v349(v346, v240, v239);
    sub_1E4A4DC88(v345, &qword_1ECF8E7C0, &qword_1E4AAEA40);
    sub_1E4A4DC88(v233, &qword_1ECF8E7C0, &qword_1E4AAEA40);
    sub_1E4A4DC88(v231, &qword_1ECF8E7C0, &qword_1E4AAEA40);
    sub_1E4A7AB74(0, v356, v355);
    v263 = v331;
    sub_1E4A4EF94(v262, v331);
    if (v236(v263, 1, v239) == 1)
    {
      v264 = v263;
      v265 = *(v352 + 16);
      v265(v335, v346, v239);
      if (v236(v264, 1, v239) != 1)
      {
        sub_1E4A4DC88(v264, &qword_1ECF8E7C0, &qword_1E4AAEA40);
      }

      v267 = v353;
      v266 = v354;
      v268 = v352;
      v269 = v335;
    }

    else
    {
      v269 = v335;
      v349(v335, v263, v239);
      v268 = v352;
      v265 = *(v352 + 16);
      v267 = v239;
      v266 = v354;
    }

    v271 = v337;
    v265(v337, v346, v267);
    v266[3] = &type metadata for WKStillWallpaper;
    v266[4] = &protocol witness table for WKStillWallpaper;
    v272 = objc_allocWithZone(WKStillWallpaper);
    v273 = sub_1E4AAA870();

    v274 = sub_1E4AA9FA0();
    v275 = sub_1E4AA9FA0();
    v276 = [v272 initWithIdentifier:v348 name:v273 type:0 thumbnailImageURL:v274 fullsizeImageURL:v275];

    v277 = *(v268 + 8);
    v277(v271, v267);
    v277(v269, v267);
    type metadata accessor for WKStillWallpaper.ImplementationWrapper();
    v278 = swift_allocObject();
    *(v278 + 16) = v276;

    swift_unknownObjectRelease();
    *v266 = v278;
    v277(v346, v267);
    goto LABEL_113;
  }

  if (qword_1ECF8DD10 != -1)
  {
    swift_once();
  }

  v241 = sub_1E4AAA0E0();
  __swift_project_value_buffer(v241, qword_1ECF92330);
  v242 = v350;
  v243 = sub_1E4AAA0C0();
  v244 = sub_1E4AAAA00();
  if (os_log_type_enabled(v243, v244))
  {
    v245 = swift_slowAlloc();
    v246 = swift_slowAlloc();
    v359 = v246;
    *v245 = 136446722;
    v247 = PBUIStringForWallpaperVariant();
    v248 = sub_1E4AAA8A0();
    v250 = v249;

    v251 = sub_1E4A85938(v248, v250, &v359);

    *(v245 + 4) = v251;
    *(v245 + 12) = 2082;
    v252 = PBUIStringForWallpaperMode();

    if (!v252)
    {
      goto LABEL_130;
    }

    v253 = sub_1E4AAA8A0();
    v255 = v254;

    v256 = sub_1E4A85938(v253, v255, &v359);

    *(v245 + 14) = v256;
    *(v245 + 22) = 2082;
    [v242 wallpaperType];
    v257 = PBUIStringForWallpaperType();
    v258 = sub_1E4AAA8A0();
    v260 = v259;

    v261 = sub_1E4A85938(v258, v260, &v359);

    *(v245 + 24) = v261;
    _os_log_impl(&dword_1E4A23000, v243, v244, "Synthesizing wallpaper failed (variant: %{public}s, mode: %{public}s, type: %{public}s).", v245, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E691FE80](v246, -1, -1);
    MEMORY[0x1E691FE80](v245, -1, -1);

    a3 = v354;
  }

  else
  {
  }

  v303 = v326;
  v304 = v325;
  v305 = v242;
  v306 = sub_1E4AAA0C0();
  v307 = sub_1E4AAAA10();
  if (!os_log_type_enabled(v306, v307))
  {

    swift_unknownObjectRelease();
    sub_1E4A4DC88(v351, &qword_1ECF8E7C0, &qword_1E4AAEA40);
    sub_1E4A4DC88(v327, &qword_1ECF8E7C0, &qword_1E4AAEA40);
    sub_1E4A4DC88(v328, &qword_1ECF8E7C0, &qword_1E4AAEA40);
    sub_1E4A4DC88(v304, &qword_1ECF8E7C0, &qword_1E4AAEA40);
    sub_1E4A4DC88(v303, &qword_1ECF8E7C0, &qword_1E4AAEA40);
    goto LABEL_120;
  }

  v308 = swift_slowAlloc();
  v309 = swift_slowAlloc();
  v359 = v309;
  *v308 = 136446722;
  v310 = PBUIStringForWallpaperVariant();
  v311 = sub_1E4AAA8A0();
  v313 = v312;

  v314 = sub_1E4A85938(v311, v313, &v359);

  *(v308 + 4) = v314;
  *(v308 + 12) = 2082;
  v315 = PBUIStringForWallpaperMode();

  if (v315)
  {
    v316 = sub_1E4AAA8A0();
    v318 = v317;

    v319 = sub_1E4A85938(v316, v318, &v359);

    *(v308 + 14) = v319;
    *(v308 + 22) = 2082;
    [v305 wallpaperType];
    v320 = PBUIStringForWallpaperType();
    v321 = sub_1E4AAA8A0();
    v323 = v322;

    v324 = sub_1E4A85938(v321, v323, &v359);

    *(v308 + 24) = v324;
    _os_log_impl(&dword_1E4A23000, v306, v307, "Synthesizing wallpaper failed (variant: %{public}s, mode: %{public}s, type: %{public}s).", v308, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E691FE80](v309, -1, -1);
    MEMORY[0x1E691FE80](v308, -1, -1);

    swift_unknownObjectRelease();
    sub_1E4A4DC88(v351, &qword_1ECF8E7C0, &qword_1E4AAEA40);
    sub_1E4A4DC88(v327, &qword_1ECF8E7C0, &qword_1E4AAEA40);
    sub_1E4A4DC88(v328, &qword_1ECF8E7C0, &qword_1E4AAEA40);
    sub_1E4A4DC88(v325, &qword_1ECF8E7C0, &qword_1E4AAEA40);
    sub_1E4A4DC88(v326, &qword_1ECF8E7C0, &qword_1E4AAEA40);
    a3 = v354;
LABEL_120:
    a3[4] = 0;
    *a3 = 0u;
    *(a3 + 1) = 0u;
    v301 = &qword_1ECF8E7D8;
    v302 = qword_1E4AB2598;
    v300 = v349;
    goto LABEL_114;
  }

LABEL_131:
  __break(1u);
}

unint64_t sub_1E4A7AB44@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1E4A905E0(MEMORY[0x1E69E7CC0]);
  *a1 = result;
  return result;
}

uint64_t sub_1E4A7AB74(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0xE500000000000000;
  v4 = 0x6B72614420;
  v5 = 0xE800000000000000;
  v6 = 0x6E776F6E6B6E5520;
  if (a2 == 1)
  {
    v6 = 0x746867694C20;
    v5 = 0xE600000000000000;
  }

  if (a2 != 2)
  {
    v4 = v6;
    v3 = v5;
  }

  if (a2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0;
  }

  if (a2)
  {
    v8 = v3;
  }

  else
  {
    v8 = 0xE000000000000000;
  }

  v9 = 0xEB000000006E6565;
  v10 = 0x726353206B636F4CLL;
  v11 = 0x80000001E4AB9280;
  v12 = 0xD000000000000011;
  if (a3 == 1)
  {
    v12 = 0x72635320656D6F48;
    v11 = 0xEB000000006E6565;
  }

  if (a3)
  {
    v10 = v12;
    v9 = v11;
  }

  if (a3 == -1)
  {
    v13 = 1701736270;
  }

  else
  {
    v13 = v10;
  }

  if (a3 == -1)
  {
    v14 = 0xE400000000000000;
  }

  else
  {
    v14 = v9;
  }

  v15 = WKStringFromWallpaperType(a1);
  v16 = sub_1E4AAA8A0();

  MEMORY[0x1E691ECA0](32, 0xE100000000000000);
  MEMORY[0x1E691ECA0](v13, v14);

  MEMORY[0x1E691ECA0](v7, v8);

  return v16;
}

uint64_t sub_1E4A7ACE8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1E4A7AD30()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  v2 = 119.0;
  if (!v1)
  {
    v2 = 64.0;
  }

  qword_1EE048BF8 = *&v2;
}

id sub_1E4A7ADA8(char a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = sub_1E4AA9FE0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = &v3[OBJC_IVAR____TtC12WallpaperKit21WKPlatformPackageView_originalSize];
  *v11 = 0;
  v11[1] = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *&v3[OBJC_IVAR____TtC12WallpaperKit21WKPlatformPackageView_currentScaleEffect] = _Q0;
  v3[OBJC_IVAR____TtC12WallpaperKit21WKPlatformPackageView_layerLevel] = a1;
  sub_1E4A7C1A8();
  (*(v8 + 16))(v10, a2, v7);
  v17 = sub_1E4AAA8A0();
  *&v3[OBJC_IVAR____TtC12WallpaperKit21WKPlatformPackageView_package] = sub_1E4A4B308(v10, v17, v18, 0);
  v22.receiver = v3;
  v22.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v22, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0, v21);
  sub_1E4A7B0C8();

  (*(v8 + 8))(a2, v7);
  return v19;
}

void sub_1E4A7B0C8()
{
  [v0 setUserInteractionEnabled_];
  v1 = [objc_opt_self() clearColor];
  [v0 setBackgroundColor_];

  [v0 setClipsToBounds_];
  v2 = *&v0[OBJC_IVAR____TtC12WallpaperKit21WKPlatformPackageView_package];
  if (v2)
  {
    v3 = v2;
    v4 = [v3 rootLayer];
    if (v4)
    {
      v15 = v4;
      [v4 size];
      v6 = &v0[OBJC_IVAR____TtC12WallpaperKit21WKPlatformPackageView_originalSize];
      v7 = *&v0[OBJC_IVAR____TtC12WallpaperKit21WKPlatformPackageView_originalSize];
      v8 = *&v0[OBJC_IVAR____TtC12WallpaperKit21WKPlatformPackageView_originalSize + 8];
      *v6 = v9;
      v6[1] = v5;
      if (v9 != v7 || v5 != v8)
      {
        [v0 layoutIfNeeded];
      }

      [v15 setContentsGravity_];
      [v15 setMasksToBounds_];
      [v15 setFillMode_];
      v11 = [v0 layer];
      [v11 setMasksToBounds_];

      v12 = [v0 layer];
      [v12 addSublayer_];

      v13 = [v0 layer];
      [v13 setGeometryFlipped_];

      [v0 layoutIfNeeded];
      v14 = v15;
    }

    else
    {
      v14 = v3;
    }
  }
}

void sub_1E4A7B414(double a1, double a2, double a3, double a4)
{
  v36.receiver = v4;
  v36.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v36, sel_drawRect_, a1, a2, a3, a4);
  v9 = [v4 frame];
  v14 = sub_1E4A7B768(v9, v10, v11, v12);
  v15 = v13;
  if (v14 != *&v4[OBJC_IVAR____TtC12WallpaperKit21WKPlatformPackageView_currentScaleEffect] || v13 != *&v4[OBJC_IVAR____TtC12WallpaperKit21WKPlatformPackageView_currentScaleEffect + 8])
  {
    if (qword_1EE0424D0 != -1)
    {
      swift_once();
    }

    v17 = sub_1E4AAA0E0();
    __swift_project_value_buffer(v17, qword_1EE048BA0);
    v18 = v4;
    v19 = sub_1E4AAA0C0();
    v20 = sub_1E4AAAA20();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v35[0] = v22;
      *v21 = 136446466;
      v23 = sub_1E4AAAAB0();
      v25 = sub_1E4A85938(v23, v24, v35);

      *(v21 + 4) = v25;
      *(v21 + 12) = 2082;
      v26 = sub_1E4AAAAB0();
      v28 = sub_1E4A85938(v26, v27, v35);

      *(v21 + 14) = v28;
      _os_log_impl(&dword_1E4A23000, v19, v20, "New scale effect %{public}s isn't the same as the current scale effect %{public}s, applying.", v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E691FE80](v22, -1, -1);
      MEMORY[0x1E691FE80](v21, -1, -1);
    }

    v29 = objc_opt_self();
    v30 = swift_allocObject();
    *(v30 + 16) = v18;
    *(v30 + 24) = v14;
    *(v30 + 32) = v15;
    v31 = swift_allocObject();
    *(v31 + 16) = sub_1E4A7C15C;
    *(v31 + 24) = v30;
    v35[4] = sub_1E4A7C168;
    v35[5] = v31;
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 1107296256;
    v35[2] = sub_1E4A7BFCC;
    v35[3] = &block_descriptor_1;
    v32 = _Block_copy(v35);
    v33 = v18;

    [v29 performWithoutAnimation_];
    _Block_release(v32);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

double sub_1E4A7B768(uint64_t a1, uint64_t a2, double a3, double a4)
{
  if (a3 == 0.0 && a4 == 0.0 || (v5 = *&a3 & 0x7FF0000000000000, (*&a3 & 0xFFFFFFFFFFFFFLL) == 0) && v5 == 0x7FF0000000000000 || (v5 == 0x7FF0000000000000 ? (v12 = (*&a3 & 0xFFFFFFFFFFFFFLL) == 0) : (v12 = 1), !v12 ? (v13 = 0) : (v13 = 1), (*&a4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || !v13))
  {
    if (qword_1EE0424D0 != -1)
    {
      swift_once();
    }

    v6 = sub_1E4AAA0E0();
    __swift_project_value_buffer(v6, qword_1EE048BA0);
    v7 = v4;
    v8 = sub_1E4AAA0C0();
    v9 = sub_1E4AAAA20();

    if (!os_log_type_enabled(v8, v9))
    {
      goto LABEL_32;
    }

    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v68 = v11;
    *v10 = 136446210;
    v45 = sub_1E4AAA8B0();
    v47 = v46;

    v48 = sub_1E4A85938(v45, v47, &v68);

    *(v10 + 4) = v48;
    v49 = "Bounding size for %{public}s is zero.";
    goto LABEL_31;
  }

  v18 = WKStandardDisplayModeScreenSize(a1, a2);
  v20 = v19;
  if (qword_1EE043030 != -1)
  {
    v16 = swift_once();
  }

  v21 = *&qword_1EE048BF8;
  v22 = WKStandardDisplayModeScreenSize(v16, v17);
  if (a4 >= a3)
  {
    v23 = a3;
  }

  else
  {
    v23 = a4;
  }

  v24 = *&v4[OBJC_IVAR____TtC12WallpaperKit21WKPlatformPackageView_originalSize];
  v25 = *&v4[OBJC_IVAR____TtC12WallpaperKit21WKPlatformPackageView_originalSize + 8];
  if (v24 == v25)
  {
    v26 = round(sqrt(v20 * v20 + v18 * v18)) + v21 + v21;
    if (v24 != v26 || v25 != v26)
    {
      v28 = v26 / v24;
      v29 = v23 / v22;
      if (qword_1EE0424D0 != -1)
      {
        swift_once();
      }

      v30 = v29 * v28;
      v31 = sub_1E4AAA0E0();
      __swift_project_value_buffer(v31, qword_1EE048BA0);
      v32 = v4;
      v33 = sub_1E4AAA0C0();
      v34 = sub_1E4AAAA20();

      if (!os_log_type_enabled(v33, v34))
      {
        goto LABEL_47;
      }

      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v68 = v36;
      *v35 = 136446466;
      v37 = sub_1E4AAA990();
      v39 = sub_1E4A85938(v37, v38, &v68);

      *(v35 + 4) = v39;
      *(v35 + 12) = 2082;
      v40 = sub_1E4AAA8B0();
      v42 = v41;

      v43 = sub_1E4A85938(v40, v42, &v68);

      *(v35 + 14) = v43;
      v44 = "[Square] Applying '%{public}s' scale to %{public}s";
LABEL_46:
      _os_log_impl(&dword_1E4A23000, v33, v34, v44, v35, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E691FE80](v36, -1, -1);
      MEMORY[0x1E691FE80](v35, -1, -1);
LABEL_47:

      return v30;
    }
  }

  if (v24 / v25 != a3 / a4)
  {
    if (a3 / v24 >= a4 / v25)
    {
      v53 = a3;
    }

    else
    {
      v53 = v24 * (a4 / v25);
    }

    if (qword_1EE0424D0 != -1)
    {
      v67 = *&v4[OBJC_IVAR____TtC12WallpaperKit21WKPlatformPackageView_originalSize];
      swift_once();
      v24 = v67;
    }

    v30 = v53 / v24;
    v54 = sub_1E4AAA0E0();
    __swift_project_value_buffer(v54, qword_1EE048BA0);
    v55 = v4;
    v33 = sub_1E4AAA0C0();
    v34 = sub_1E4AAAA20();

    if (!os_log_type_enabled(v33, v34))
    {
      goto LABEL_47;
    }

    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v68 = v36;
    *v35 = 136446466;
    v56 = sub_1E4AAA990();
    v58 = sub_1E4A85938(v56, v57, &v68);

    *(v35 + 4) = v58;
    *(v35 + 12) = 2082;
    v63 = sub_1E4AAA8B0();
    v65 = v64;

    v66 = sub_1E4A85938(v63, v65, &v68);

    *(v35 + 14) = v66;
    v44 = "[Aspect Rectangle] Applying '%{public}s' scale to %{public}s";
    goto LABEL_46;
  }

  if (qword_1EE0424D0 != -1)
  {
    swift_once();
  }

  v51 = sub_1E4AAA0E0();
  __swift_project_value_buffer(v51, qword_1EE048BA0);
  v52 = v4;
  v8 = sub_1E4AAA0C0();
  v9 = sub_1E4AAAA20();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v68 = v11;
    *v10 = 136446210;
    v59 = sub_1E4AAA8B0();
    v61 = v60;

    v62 = sub_1E4A85938(v59, v61, &v68);

    *(v10 + 4) = v62;
    v49 = "Applying no scaling to %{public}s";
LABEL_31:
    _os_log_impl(&dword_1E4A23000, v8, v9, v49, v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x1E691FE80](v11, -1, -1);
    MEMORY[0x1E691FE80](v10, -1, -1);
  }

LABEL_32:

  return 1.0;
}

id sub_1E4A7BF10(CGFloat a1, double a2)
{
  v4 = objc_opt_self();
  [v4 begin];
  v5 = [v4 disableActions];
  [v4 setDisableActions_];
  sub_1E4A9DC68(a1, a2, 0.5, 0.5);
  [v4 commit];

  return [v4 setDisableActions_];
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1E4A7C1A8()
{
  result = qword_1EE042120;
  if (!qword_1EE042120)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE042120);
  }

  return result;
}

_BYTE *WKPosterWakeState.init(screenState:progress:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *a2 = *result;
  *(a2 + 8) = a3;
  return result;
}

double *WKPosterWakeState.transitionDirection(from:)@<X0>(double *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  if (v3 != 3)
  {
    v4 = *(v2 + 8);
    v5 = result[1];
    if (v5 == v4)
    {
      *a2 = 3;
      return result;
    }

    LOBYTE(v3) = v5 >= v4;
  }

  *a2 = v3;
  return result;
}

uint64_t WKPosterWakeState.ScreenState.description.getter()
{
  v1 = 6710895;
  if (*v0 != 1)
  {
    v1 = 0x697469736E617274;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 28271;
  }
}

uint64_t sub_1E4A7C360()
{
  v1 = 6710895;
  if (*v0 != 1)
  {
    v1 = 0x697469736E617274;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 28271;
  }
}

unint64_t WKPosterWakeState.description.getter()
{
  v1 = *v0;
  sub_1E4AAABC0();

  v2 = 0xE300000000000000;
  v3 = 6710895;
  if (v1 != 1)
  {
    v3 = 0x697469736E617274;
    v2 = 0xED0000676E696E6FLL;
  }

  if (v1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 28271;
  }

  if (v1)
  {
    v5 = v2;
  }

  else
  {
    v5 = 0xE200000000000000;
  }

  MEMORY[0x1E691ECA0](v4, v5);

  MEMORY[0x1E691ECA0](0x6572676F7270202CLL, 0xEC000000203A7373);
  v6 = sub_1E4AAA990();
  MEMORY[0x1E691ECA0](v6);

  MEMORY[0x1E691ECA0](125, 0xE100000000000000);
  return 0xD000000000000021;
}

uint64_t WKPosterWakeState.ScreenState.hashValue.getter()
{
  v1 = *v0;
  sub_1E4AAAE00();
  MEMORY[0x1E691F1E0](v1);
  return sub_1E4AAAE40();
}

uint64_t WKPosterWakeState.hash(into:)()
{
  v1 = v0[1];
  MEMORY[0x1E691F1E0](*v0);
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  return MEMORY[0x1E691F200](*&v2);
}

uint64_t WKPosterWakeState.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1E4AAAE00();
  MEMORY[0x1E691F1E0](v1);
  v3 = 0.0;
  if (v2 != 0.0)
  {
    v3 = v2;
  }

  MEMORY[0x1E691F200](*&v3);
  return sub_1E4AAAE40();
}

unint64_t sub_1E4A7C60C()
{
  result = qword_1ECF8E818;
  if (!qword_1ECF8E818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF8E818);
  }

  return result;
}

unint64_t sub_1E4A7C664()
{
  result = qword_1ECF8E820;
  if (!qword_1ECF8E820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF8E820);
  }

  return result;
}

CGSize __swiftcall CGSize.aspectFit(to:)(CGSize to)
{
  v3 = to.width / v1;
  v4 = to.height / v2;
  if (v4 >= v3)
  {
    v4 = v3;
  }

  v5 = v4 * v1;
  v6 = v4 * v2;
  result.height = v6;
  result.width = v5;
  return result;
}

CGSize __swiftcall CGSize.aspectFill(to:)(CGSize to)
{
  v3 = to.width / v1;
  if (to.width / v1 <= to.height / v2)
  {
    v3 = to.height / v2;
  }

  v4 = v3 * v1;
  if (v4 <= to.width)
  {
    to.width = v4;
  }

  if (v3 * v2 <= to.height)
  {
    to.height = v3 * v2;
  }

  return to;
}

BOOL sub_1E4A7C720(double a1, double a2, double a3, double a4)
{
  v4 = (~*&a1 & 0x7FF0000000000000) != 0 || (*&a1 & 0xFFFFFFFFFFFFFLL) == 0;
  if (!v4 || (~*&a2 & 0x7FF0000000000000) == 0 && (*&a2 & 0xFFFFFFFFFFFFFLL) != 0 || (~*&a3 & 0x7FF0000000000000) == 0 && (*&a3 & 0xFFFFFFFFFFFFFLL) != 0)
  {
    return 1;
  }

  if ((~*&a4 & 0x7FF0000000000000) != 0)
  {
    return 0;
  }

  return (*&a4 & 0xFFFFFFFFFFFFFLL) != 0;
}

BOOL sub_1E4A7C788(double a1, double a2, double a3, double a4)
{
  v4 = fabs(a2) == INFINITY;
  v5 = fabs(a3) == INFINITY;
  result = 1;
  if (fabs(a1) != INFINITY && !v4)
  {
    v7 = (~*&a4 & 0x7FF0000000000000) == 0 && (*&a4 & 0xFFFFFFFFFFFFFLL) == 0;
    return v5 || v7;
  }

  return result;
}

BOOL sub_1E4A7C7E0()
{
  if ((~*v0 & 0x7FF0000000000000) == 0 && (*v0 & 0xFFFFFFFFFFFFFLL) != 0)
  {
    return 1;
  }

  v2 = v0[1];
  v3 = ~v2 & 0x7FF0000000000000;
  v4 = v2 & 0xFFFFFFFFFFFFFLL;
  if (!v3 && v4 != 0)
  {
    return 1;
  }

  v6 = v0[2];
  if ((~v6 & 0x7FF0000000000000) == 0 && (v6 & 0xFFFFFFFFFFFFFLL) != 0)
  {
    return 1;
  }

  v7 = v0[3];
  if ((~v7 & 0x7FF0000000000000) == 0 && (v7 & 0xFFFFFFFFFFFFFLL) != 0)
  {
    return 1;
  }

  v8 = v0[4];
  if ((~v8 & 0x7FF0000000000000) == 0 && (v8 & 0xFFFFFFFFFFFFFLL) != 0)
  {
    return 1;
  }

  v10 = v0[5];
  return (~v10 & 0x7FF0000000000000) == 0 && (v10 & 0xFFFFFFFFFFFFFLL) != 0;
}

BOOL sub_1E4A7C878()
{
  if ((*v0 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000)
  {
    return 1;
  }

  if ((v0[1] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000)
  {
    return 1;
  }

  if ((v0[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000)
  {
    return 1;
  }

  if ((v0[3] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000)
  {
    return 1;
  }

  if ((v0[4] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000)
  {
    return 1;
  }

  v2 = v0[5];
  return (~v2 & 0x7FF0000000000000) == 0 && (v2 & 0xFFFFFFFFFFFFFLL) == 0;
}

uint64_t type metadata accessor for WKPosterDynamicRotationState(uint64_t a1)
{
  result = qword_1EE0429B8;
  if (!qword_1EE0429B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E4A7C988(uint64_t a1)
{
  sub_1E4AAA030();
  if (v1 <= 0x3F)
  {
    type metadata accessor for UIInterfaceOrientation(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

int *sub_1E4A7CA1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1E4AAA030();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E4AAA020();
  if (a1 == 2)
  {
    v15 = 180.0;
  }

  else
  {
    if (a1 == 3)
    {
      v13 = [objc_opt_self() sharedApplication];
      v14 = [v13 userInterfaceLayoutDirection];

      v10 = v14 == 1;
      v11 = 90.0;
      v12 = 270.0;
    }

    else
    {
      if (a1 != 4)
      {
        v15 = 0.0;
        goto LABEL_11;
      }

      v8 = [objc_opt_self() sharedApplication];
      v9 = [v8 userInterfaceLayoutDirection];

      v10 = v9 == 1;
      v11 = 270.0;
      v12 = 90.0;
    }

    if (v10)
    {
      v15 = v12;
    }

    else
    {
      v15 = v11;
    }
  }

LABEL_11:
  (*(v5 + 32))(a2, v7, v4);
  result = type metadata accessor for WKPosterDynamicRotationState(0);
  *(a2 + result[5]) = v15;
  *(a2 + result[6]) = 0x3FF0000000000000;
  *(a2 + result[7]) = a1;
  *(a2 + result[8]) = a1;
  return result;
}

uint64_t WKWallpaperAdjustmentTraitOffset.init(attributeDictionary:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (a1)
  {
    v4 = sub_1E4AAA800();
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_allocWithZone(WKWallpaperAdjustmentTraitOffset) initWithAttributeDictionary_];

  type metadata accessor for WKWallpaperAdjustmentTraitOffset.ImplementationWrapper();
  result = swift_allocObject();
  *(result + 16) = v5;
  *a2 = result;
  return result;
}

Swift::OpaquePointer_optional __swiftcall WKWallpaperAdjustmentTraitOffset.propertyListRepresentation()()
{
  v1 = [*(*v0 + 16) propertyListRepresentation];
  if (v1)
  {
    v3 = v1;
    v4 = sub_1E4AAA810();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  result.value._rawValue = v5;
  result.is_nil = v2;
  return result;
}

uint64_t WKWallpaperAdjustmentTraitOffset.hash(into:)()
{
  v1 = *(*v0 + 16);
  v2 = sub_1E4AAAAE0();

  return MEMORY[0x1E691F1E0](v2);
}

uint64_t WKWallpaperAdjustmentTraitOffset.description.getter()
{
  v1 = [*(*v0 + 16) description];
  v2 = sub_1E4AAA8A0();

  return v2;
}

uint64_t WKWallpaperAdjustmentTraitOffset.hashValue.getter()
{
  v1 = *v0;
  sub_1E4AAAE00();
  v2 = *(v1 + 16);
  v3 = sub_1E4AAAAE0();

  MEMORY[0x1E691F1E0](v3);
  return sub_1E4AAAE40();
}

uint64_t WKWallpaperAdjustmentTraitOffset.screenScaleMode.getter()
{
  sub_1E4AAA040();
  if (SFPerformSelector())
  {
    sub_1E4AAAB30();
    swift_unknownObjectRelease();
  }

  else
  {
    v2 = 0u;
    v3 = 0u;
  }

  v4[0] = v2;
  v4[1] = v3;
  if (*(&v3 + 1))
  {
    if (swift_dynamicCast())
    {
      return v1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1E4A7CF68(v4);
    return 0;
  }
}

uint64_t sub_1E4A7CF68(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E690, &qword_1E4AB2790);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t WKWallpaperAdjustmentTraitOffset.screenScaleMode.setter(uint64_t a1, uint64_t a2)
{
  sub_1E4AAA040();
  v4 = *(*v2 + 16);
  v5 = v4;
  if (a2)
  {
    sub_1E4AAA870();
  }

  v6 = SFPerformSelector();

  swift_unknownObjectRelease();
  if (v6)
  {
    sub_1E4AAAB30();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
  }

  return sub_1E4A7CF68(v8);
}

void (*WKWallpaperAdjustmentTraitOffset.screenScaleMode.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = WKWallpaperAdjustmentTraitOffset.screenScaleMode.getter();
  a1[1] = v3;
  return sub_1E4A7D110;
}

void sub_1E4A7D110(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  if (a2)
  {

    WKWallpaperAdjustmentTraitOffset.screenScaleMode.setter(v3, v2);
  }

  else
  {
    WKWallpaperAdjustmentTraitOffset.screenScaleMode.setter(*a1, v2);
  }
}

unint64_t sub_1E4A7D188()
{
  result = qword_1ECF8E828;
  if (!qword_1ECF8E828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF8E828);
  }

  return result;
}

double sub_1E4A7D218@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_1E4AAA320();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1[7];
  v71 = v1[6];
  v72 = v7;
  v73 = v1[8];
  v74 = *(v1 + 144);
  v8 = v1[3];
  v67 = v1[2];
  v68 = v8;
  v9 = v1[5];
  v69 = v1[4];
  v70 = v9;
  v10 = v1[1];
  v65 = *v1;
  v66 = v10;
  v11 = *(v1 + 19);
  v61 = &type metadata for WKWallpaperBundle;
  v62 = sub_1E4A50754();
  *&v60 = v11;
  v12 = v1[7];
  v75[6] = v1[6];
  v75[7] = v12;
  v75[8] = v1[8];
  v76 = *(v1 + 144);
  v13 = v1[3];
  v75[2] = v1[2];
  v75[3] = v13;
  v14 = v1[5];
  v75[4] = v1[4];
  v75[5] = v14;
  v15 = v1[1];
  v75[0] = *v1;
  v75[1] = v15;
  if (sub_1E4A49C60(v75) == 1)
  {
    nullsub_1();
    v47 = v71;
    v48 = v72;
    v49 = v73;
    v50 = v74;
    v43 = v67;
    v44 = v68;
    v45 = v69;
    v46 = v70;
    v41 = v65;
    v42 = v66;
    nullsub_1();
    v51 = *v16;
    v17 = v16[4];
    v19 = v16[1];
    v18 = v16[2];
    v54 = v16[3];
    v55 = v17;
    v52 = v19;
    v53 = v18;
    v20 = v16[8];
    v22 = v16[5];
    v21 = v16[6];
    v58 = v16[7];
    v59 = v20;
    v56 = v22;
    v57 = v21;

    sub_1E4A59240(&v65, v33);
  }

  else
  {
    nullsub_1();
    v47 = v71;
    v48 = v72;
    v49 = v73;
    v50 = v74;
    v43 = v67;
    v44 = v68;
    v45 = v69;
    v46 = v70;
    v41 = v65;
    v42 = v66;
    nullsub_1();

    sub_1E4A59240(&v65, v33);
    sub_1E4AAAA10();
    v23 = sub_1E4AAA4E0();
    sub_1E4AAA0B0();

    sub_1E4AAA310();
    swift_getAtKeyPath();
    sub_1E4A49C68(&v65);
    (*(v4 + 8))(v6, v3);
  }

  v38 = v57;
  v39 = v58;
  v40 = v59;
  v34 = v53;
  v35 = v54;
  v36 = v55;
  v37 = v56;
  v33[0] = v51;
  v33[1] = v52;
  sub_1E4A49CD0(v33);
  if (BYTE8(v34))
  {
    v24 = 4;
  }

  else
  {
    v24 = 8;
  }

  KeyPath = swift_getKeyPath();
  v64 = 0;
  *&v41 = swift_getKeyPath();
  sub_1E4A4E620(&v41);
  *&v63[103] = v47;
  *&v63[119] = v48;
  *&v63[135] = v49;
  *&v63[39] = v43;
  *&v63[55] = v44;
  *&v63[71] = v45;
  *&v63[87] = v46;
  *&v63[7] = v41;
  v63[151] = v50;
  *&v63[23] = v42;
  v26 = swift_allocObject();
  sub_1E4A2732C(&v60, v26 + 16);
  v27 = *&v63[112];
  *(a1 + 105) = *&v63[96];
  *(a1 + 121) = v27;
  *(a1 + 137) = *&v63[128];
  v28 = *&v63[48];
  *(a1 + 41) = *&v63[32];
  *(a1 + 57) = v28;
  v29 = *&v63[80];
  *(a1 + 73) = *&v63[64];
  *(a1 + 89) = v29;
  result = *v63;
  v31 = *&v63[16];
  *(a1 + 9) = *v63;
  *(v26 + 56) = v24;
  v32 = v64;
  *a1 = KeyPath;
  *(a1 + 8) = v32;
  *(a1 + 153) = *&v63[144];
  *(a1 + 25) = v31;
  *(a1 + 168) = sub_1E4A592B0;
  *(a1 + 176) = v26;
  *(a1 + 184) = 0;
  return result;
}

void sub_1E4A7D600(__int128 *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = sub_1E4AAA1C0();
  v109 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v105 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[7];
  v127 = a1[6];
  v128 = v13;
  v129 = a1[8];
  v14 = a1[3];
  v123 = a1[2];
  v124 = v14;
  v15 = a1[5];
  v125 = a1[4];
  v126 = v15;
  v16 = a1[1];
  v121 = *a1;
  v122 = v16;
  v17 = 0;
  if (sub_1E4A7E110(a3, a4))
  {
    v108 = a5;
    if (qword_1EE042498 != -1)
    {
      swift_once();
    }

    v18 = sub_1E4AAA0E0();
    v19 = __swift_project_value_buffer(v18, qword_1EE048B28);
    sub_1E4A49D24(&v121, v120);
    v107 = v19;
    v20 = sub_1E4AAA0C0();
    v21 = sub_1E4AAA9F0();
    sub_1E4A49CD0(&v121);
    v22 = os_log_type_enabled(v20, v21);
    v105[1] = a2;
    v106 = v10;
    if (v22)
    {
      v23 = swift_slowAlloc();
      v105[0] = swift_slowAlloc();
      v119 = v105[0];
      *v23 = 136446210;
      v116 = v127;
      v117 = v128;
      v118 = v129;
      v112 = v123;
      v113 = v124;
      v114 = v125;
      v115 = v126;
      v110 = v121;
      v111 = v122;
      sub_1E4A49D24(&v121, v120);
      v24 = WKPosterEnvironmentSnapshot.description.getter();
      v26 = v25;
      v120[6] = v116;
      v120[7] = v117;
      v120[8] = v118;
      v120[2] = v112;
      v120[3] = v113;
      v120[4] = v114;
      v120[5] = v115;
      v120[0] = v110;
      v120[1] = v111;
      sub_1E4A49CD0(v120);
      v27 = sub_1E4A85938(v24, v26, &v119);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_1E4A23000, v20, v21, "Resolving Layered Stripe against Traits: %{public}s.", v23, 0xCu);
      v28 = v105[0];
      __swift_destroy_boxed_opaque_existential_1Tm(v105[0]);
      MEMORY[0x1E691FE80](v28, -1, -1);
      MEMORY[0x1E691FE80](v23, -1, -1);
    }

    v29 = *&v122;
    v30 = *&v123;
    v31 = *(a4 + 32);
    v32 = WKWallpaperAppearanceDefault;
    if ((v31)(a3, a4))
    {
      v33 = *MEMORY[0x1E697DBA8];
      v105[0] = v31;
      v34 = v109;
      v35 = v106;
      (*(v109 + 104))(v12, v33, v106);
      v36 = sub_1E4AAA1B0();
      v31 = v105[0];
      (*(v34 + 8))(v12, v35);
      if (v36)
      {
        v32 = WKWallpaperAppearanceDark;
      }
    }

    v37 = *v32;
    sub_1E4A7E338(1u, a4, v120);

    v17 = *&v120[0];
    if (!*&v120[0])
    {
      v47 = sub_1E4AAA0C0();
      v48 = sub_1E4AAAA00();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        *v49 = 0;
        MEMORY[0x1E691FE80](v49, -1, -1);
      }

      v50 = sub_1E4AAA0C0();
      v51 = sub_1E4AAAA10();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        MEMORY[0x1E691FE80](v52, -1, -1);
      }

      v17 = 0;
      goto LABEL_34;
    }

    sub_1E4A7E338(0, a4, v120);
    v105[0] = *&v120[0];
    if (*&v120[0])
    {
      v38 = WKWallpaperAppearanceDefault;
      if ((v31)(a3, a4))
      {
        v39 = v12;
        v40 = v109;
        v41 = v106;
        (*(v109 + 104))(v39, *MEMORY[0x1E697DBA8], v106);
        v42 = sub_1E4AAA1B0();
        (*(v40 + 8))(v39, v41);
        if (v42)
        {
          v38 = WKWallpaperAppearanceDark;
        }
      }

      v43 = *v38;
      sub_1E4A7E338(2u, a4, v120);

      v44 = *&v120[0];
      if (*&v120[0])
      {
        v45 = v105[0];
        if (v29 == 0.0)
        {

          v46 = v45;
        }

        else if (WKFloatIsOne(v29))
        {

          v46 = v17;
        }

        else
        {
          [v45[2] stripeAngleDegrees];
          v60 = v59;
          [*(v17 + 16) stripeAngleDegrees];
          v62 = v61;
          [v45[2] stripeAngleDegrees];
          v64 = v60 + v29 * (v62 - v63);
          [v45[2] stripeHeightFactor];
          v66 = v65;
          [*(v17 + 16) stripeHeightFactor];
          v68 = v67;
          [v45[2] stripeHeightFactor];
          v70 = v66 + v29 * (v68 - v69);
          [v45[2] firstStripeOffsetScaleFactor];
          v72 = v71;
          [*(v17 + 16) firstStripeOffsetScaleFactor];
          v74 = v73;
          [v45[2] firstStripeOffsetScaleFactor];
          v76 = v72 + v29 * (v74 - v75);
          v77 = [v45[2] backgroundColor];
          v78 = [*(v17 + 16) backgroundColor];
          v79 = [v77 wk:v78 interpolatedToColor:v29 progress:?];

          v80 = [objc_allocWithZone(WKLayeredStripeWallpaperInput) initWithBackgroundColor:v79 stripeAngleDegrees:v64 stripeHeightFactor:v70 firstStripeOffsetScaleFactor:v76];
          type metadata accessor for WKLayeredStripeWallpaperInput.ImplementationWrapper();
          v46 = swift_allocObject();
          *(v46 + 16) = v80;
        }

        v81 = v46;
        if (v30 == 0.0 || (v81 = v44, WKFloatIsOne(v30)))
        {

          v17 = v81;
        }

        else
        {
          [*(v46 + 16) stripeAngleDegrees];
          v83 = v82;
          [*(v44 + 16) stripeAngleDegrees];
          v85 = v84;
          [*(v46 + 16) stripeAngleDegrees];
          v87 = v83 + v30 * (v85 - v86);
          [*(v46 + 16) stripeHeightFactor];
          v89 = v88;
          [*(v44 + 16) stripeHeightFactor];
          v91 = v90;
          [*(v46 + 16) stripeHeightFactor];
          v93 = v89 + v30 * (v91 - v92);
          [*(v46 + 16) firstStripeOffsetScaleFactor];
          v95 = v94;
          [*(v44 + 16) firstStripeOffsetScaleFactor];
          v97 = v96;
          [*(v46 + 16) firstStripeOffsetScaleFactor];
          v99 = v95 + v30 * (v97 - v98);
          v100 = [*(v46 + 16) backgroundColor];
          v101 = [*(v44 + 16) backgroundColor];
          v102 = [v100 wk:v101 interpolatedToColor:v30 progress:?];

          v103 = [objc_allocWithZone(WKLayeredStripeWallpaperInput) initWithBackgroundColor:v102 stripeAngleDegrees:v87 stripeHeightFactor:v93 firstStripeOffsetScaleFactor:v99];
          type metadata accessor for WKLayeredStripeWallpaperInput.ImplementationWrapper();
          v104 = swift_allocObject();
          *(v104 + 16) = v103;

          v17 = v104;
        }

LABEL_34:
        a5 = v108;
        goto LABEL_35;
      }
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

    goto LABEL_34;
  }

LABEL_35:
  *a5 = v17;
}

uint64_t sub_1E4A7DFFC(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 120))(@"WKWallpaperLocationCoverSheet", a1, a2) == 1)
  {
    (*(a2 + 160))(&v7, @"WKWallpaperLocationCoverSheet", a1, a2);
    if (v8)
    {
      sub_1E4A2732C(&v7, v9);
      v4 = v10;
      v5 = v11;
      __swift_project_boxed_opaque_existential_1(v9, v10);
      (*(v5 + 24))(&v7, v4, v5);
      if (BYTE8(v7) == 1)
      {
        sub_1E4A4EF3C(v7, BYTE8(v7));
        __swift_destroy_boxed_opaque_existential_1Tm(v9);
        return 1;
      }

      sub_1E4A4EF3C(v7, BYTE8(v7));
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
    }

    else
    {
      sub_1E4A7E8C4(&v7);
    }
  }

  return 0;
}

uint64_t sub_1E4A7E110(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 120))(@"WKWallpaperLocationCoverSheet", a1, a2) == 1)
  {
    (*(a2 + 160))(&v7, @"WKWallpaperLocationCoverSheet", a1, a2);
    if (v8)
    {
      sub_1E4A2732C(&v7, v9);
      v4 = v10;
      v5 = v11;
      __swift_project_boxed_opaque_existential_1(v9, v10);
      (*(v5 + 24))(&v7, v4, v5);
      if (BYTE8(v7) == 2)
      {
        sub_1E4A4EF3C(v7, BYTE8(v7));
        __swift_destroy_boxed_opaque_existential_1Tm(v9);
        return 1;
      }

      sub_1E4A4EF3C(v7, BYTE8(v7));
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
    }

    else
    {
      sub_1E4A7E8C4(&v7);
    }
  }

  return 0;
}

uint64_t sub_1E4A7E224(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 120))(@"WKWallpaperLocationCoverSheet", a1, a2) == 1)
  {
    (*(a2 + 160))(&v7, @"WKWallpaperLocationCoverSheet", a1, a2);
    if (v8)
    {
      sub_1E4A2732C(&v7, v9);
      v4 = v10;
      v5 = v11;
      __swift_project_boxed_opaque_existential_1(v9, v10);
      (*(v5 + 24))(&v7, v4, v5);
      if (BYTE8(v7) == 3)
      {
        sub_1E4A4EF3C(v7, BYTE8(v7));
        __swift_destroy_boxed_opaque_existential_1Tm(v9);
        return 1;
      }

      sub_1E4A4EF3C(v7, BYTE8(v7));
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
    }

    else
    {
      sub_1E4A7E8C4(&v7);
    }
  }

  return 0;
}

void sub_1E4A7E338(unsigned __int8 a1@<W0>, uint64_t a2@<X3>, void *a3@<X8>)
{
  if (a1 > 1u)
  {
    v4 = WKWallpaperLocationHomeScreen;
  }

  else
  {
    v4 = WKWallpaperLocationCoverSheet;
  }

  (*(a2 + 168))(v11, *v4);
  v5 = v12;
  if (!v12)
  {
    sub_1E4A7E8C4(v11);
    goto LABEL_8;
  }

  v6 = v13;
  __swift_project_boxed_opaque_existential_1(v11, v12);
  (*(v6 + 24))(&v9, v5, v6);
  v7 = v9;
  v8 = v10;
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  if (v8 != 2)
  {
    sub_1E4A4EF3C(v7, v8);
LABEL_8:
    v7 = 0;
  }

  *a3 = v7;
}

void sub_1E4A7E41C(uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = sub_1E4AAA1C0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = 0;
  if (sub_1E4A7E224(a2, a3))
  {
    if ((*(a3 + 32))(a2, a3))
    {
      (*(v8 + 104))(v10, *MEMORY[0x1E697DBA8], v7);
      v12 = sub_1E4AAA1B0();
      (*(v8 + 8))(v10, v7);
      if (v12)
      {
        (*(a3 + 168))(v22);
        v13 = v23;
        if (v23)
        {
          v14 = v24;
          __swift_project_boxed_opaque_existential_1(v22, v23);
          (*(v14 + 24))(&v20, v13, v14);
          v11 = v20;
          v15 = v21;
          __swift_destroy_boxed_opaque_existential_1Tm(v22);
          if (v15 == 3)
          {
            goto LABEL_14;
          }

          sub_1E4A4EF3C(v11, v15);
        }

        else
        {
          sub_1E4A7E8C4(v22);
        }
      }
    }

    (*(a3 + 168))(v22, @"WKWallpaperLocationCoverSheet", @"default", a2, a3);
    v16 = v23;
    if (!v23)
    {
      sub_1E4A7E8C4(v22);
      goto LABEL_13;
    }

    v17 = v24;
    __swift_project_boxed_opaque_existential_1(v22, v23);
    (*(v17 + 24))(&v20, v16, v17);
    v11 = v20;
    v18 = v21;
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    if (v18 != 3)
    {
      sub_1E4A4EF3C(v11, v18);
LABEL_13:
      v11 = 0;
    }
  }

LABEL_14:
  *a4 = v11;
}

uint64_t sub_1E4A7E6DC(uint64_t a1, uint64_t a2)
{
  sub_1E4AAABC0();
  MEMORY[0x1E691ECA0](0xD000000000000018, 0x80000001E4AB9440);
  v4 = (*(a2 + 48))(a1, a2);
  MEMORY[0x1E691ECA0](v4);

  MEMORY[0x1E691ECA0](0x203A656D616E202CLL, 0xE800000000000000);
  v5 = (*(a2 + 56))(a1, a2);
  MEMORY[0x1E691ECA0](v5);

  MEMORY[0x1E691ECA0](0xD000000000000012, 0x80000001E4AB9460);
  (*(a2 + 24))(a1, a2);
  sub_1E4AAA9B0();
  MEMORY[0x1E691ECA0](0xD000000000000016, 0x80000001E4AB9480);
  v7 = (*(a2 + 64))(a1, a2);
  type metadata accessor for WKWallpaperRepresentingLogicalScreenClass(0);
  sub_1E4AAAC60();

  MEMORY[0x1E691ECA0](32032, 0xE200000000000000);
  return 0;
}

uint64_t sub_1E4A7E8C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E830, &qword_1E4AB29C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1E4A7E92C()
{
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.421333333 green:0.730196078 blue:0.27372549 alpha:1.0];
  qword_1EE048BD0 = result;
  return result;
}

id sub_1E4A7E97C()
{
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.12622222 green:0.722352941 blue:0.162745098 alpha:1.0];
  qword_1EE048BB8 = result;
  return result;
}

id sub_1E4A7E9CC()
{
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.09955556 green:0.504705882 blue:0.109411765 alpha:1.0];
  qword_1EE048BC8 = result;
  return result;
}

id sub_1E4A7EA1C()
{
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.993333333 green:0.225490196 blue:0.243137255 alpha:1.0];
  qword_1EE048BE0 = result;
  return result;
}

id sub_1E4A7EA70()
{
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.665777778 green:0.237254902 blue:0.593333333 alpha:1.0];
  qword_1EE048BC0 = result;
  return result;
}

id sub_1E4A7EAC0()
{
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:-0.0128888889 green:0.617254902 blue:0.868627451 alpha:1.0];
  qword_1EE048BD8 = result;
  return result;
}

uint64_t WKWallpaperRepresentingCollectionsManager.__allocating_init(downloadManager:)(uint64_t a1)
{
  v2 = swift_allocObject();
  if (a1)
  {
    v3 = *(*(a1 + 16) + 16);
  }

  else
  {
    v3 = 0;
  }

  v4 = [objc_allocWithZone(WKWallpaperRepresentingCollectionsManager) initWithDownloadManager_];

  type metadata accessor for WKWallpaperRepresentingCollectionsManager.ImplementationWrapper();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v2 + 16) = v5;
  return v2;
}

uint64_t sub_1E4A7EBB4()
{
  v0 = [objc_opt_self() defaultManager];
  type metadata accessor for WKWallpaperRepresentingCollectionsManager();
  v1 = swift_allocObject();
  type metadata accessor for WKWallpaperRepresentingCollectionsManager.ImplementationWrapper();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v1 + 16) = v2;
  return v1;
}

uint64_t WKWallpaperRepresentingCollectionsManager.init(downloadManager:)(uint64_t a1)
{
  if (a1)
  {
    v2 = *(*(a1 + 16) + 16);
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(WKWallpaperRepresentingCollectionsManager) initWithDownloadManager_];

  type metadata accessor for WKWallpaperRepresentingCollectionsManager.ImplementationWrapper();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v1 + 16) = v4;
  return v1;
}

uint64_t sub_1E4A7ED0C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [*(*(v2 + 16) + 16) wallpaperCollectionAtIndex_];
  type metadata accessor for WKWallpaperRepresentingCollection.ImplementationWrapper();
  result = swift_allocObject();
  *(result + 16) = v4;
  *a2 = result;
  return result;
}

uint64_t sub_1E4A7ED6C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(*(v1 + 16) + 16);
  v4 = sub_1E4AAA000();
  v5 = [v3 wallpaperCollectionWithIdentifier_];

  result = 0;
  if (v5)
  {
    type metadata accessor for WKWallpaperRepresentingCollection.ImplementationWrapper();
    result = swift_allocObject();
    *(result + 16) = v5;
  }

  *a1 = result;
  return result;
}

uint64_t WKWallpaperRepresentingCollectionsManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1E4A7EEBC()
{
  result = qword_1ECF8E840;
  if (!qword_1ECF8E840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF8E840);
  }

  return result;
}

uint64_t sub_1E4A7F018(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF8E850, &qword_1E4AB2A58);
    sub_1E4A7F210(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_1E4A7F0A0(uint64_t a1, uint64_t a2)
{
  result = [*(*(v2 + 16) + 16) numberOfWallpaperCollections];
  if (a1 < 0 || result < a1)
  {
    __break(1u);
  }

  else
  {
    result = [*(*(v2 + 16) + 16) numberOfWallpaperCollections];
    if ((a2 & 0x8000000000000000) == 0 && result >= a2)
    {
      return (a2 - a1);
    }
  }

  __break(1u);
  return result;
}

void *sub_1E4A7F114@<X0>(void *result@<X0>, uint64_t *a2@<X8>)
{
  v4 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    result = [*(*(*v2 + 16) + 16) numberOfWallpaperCollections];
    if ((v4 & 0x8000000000000000) == 0 && v4 < result)
    {
      *a2 = v4;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t *sub_1E4A7F178(uint64_t *result)
{
  v2 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    result = [*(*(*v1 + 16) + 16) numberOfWallpaperCollections];
    if ((v2 & 0x8000000000000000) == 0 && v2 < result)
    {
      *v3 = v2;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E4A7F210(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for WKWallpaperRepresentingCollectionsManager();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E4A7F290(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECF8EB70, &qword_1E4AB2A50);
    sub_1E4A7EEBC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_1E4A7F34C@<X0>(void *a1@<X8>)
{
  result = [*(*(*v1 + 16) + 16) numberOfWallpaperCollections];
  *a1 = result;
  return result;
}

uint64_t (*sub_1E4A7F388(uint64_t *a1, void *a2))()
{
  v4 = [*(*(*v2 + 16) + 16) wallpaperCollectionAtIndex_];
  type metadata accessor for WKWallpaperRepresentingCollection.ImplementationWrapper();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *a1 = v5;
  return sub_1E4A7F408;
}

uint64_t sub_1E4A7F410@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = *v2;
  result = [*(*(v6 + 16) + 16) numberOfWallpaperCollections];
  if (result < 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v5 < 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (result < v4)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  *a2 = v5;
  a2[1] = v4;
  a2[2] = v6;
}

unint64_t sub_1E4A7F48C@<X0>(void *a1@<X8>)
{
  result = [*(*(*v1 + 16) + 16) numberOfWallpaperCollections];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *a1 = 0;
    a1[1] = result;
  }

  return result;
}

void *sub_1E4A7F4D8@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *result + a2;
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else
  {
    result = [*(*(*v3 + 16) + 16) numberOfWallpaperCollections];
    if ((v5 & 0x8000000000000000) == 0 && result >= v5)
    {
      *a3 = v5;
      return result;
    }
  }

  __break(1u);
  return result;
}

id sub_1E4A7F53C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_1E4A9AAC8(*a1, a2, *a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

uint64_t *sub_1E4A7F578(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = a2[1];
  if (*result >= *a2)
  {
    v5 = __OFSUB__(v2, v3);
    v4 = v2 - v3 < 0;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  if (v4 == v5)
  {
    __break(1u);
  }

  return result;
}

void *sub_1E4A7F594(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < *result)
  {
    __break(1u);
  }

  return result;
}

void *sub_1E4A7F5B0(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < result[1])
  {
    __break(1u);
  }

  return result;
}

id sub_1E4A7F5CC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  result = [*(*(*v2 + 16) + 16) numberOfWallpaperCollections];
  if (v4 < 0 || v4 >= result)
  {
    __break(1u);
  }

  else
  {
    *a2 = v4 + 1;
  }

  return result;
}

id sub_1E4A7F628(uint64_t *a1)
{
  v3 = *v1;
  v4 = *a1;
  result = [*(*(v3 + 16) + 16) numberOfWallpaperCollections];
  if (v4 < 0 || v4 >= result)
  {
    __break(1u);
  }

  else
  {
    *a1 = v4 + 1;
  }

  return result;
}

uint64_t sub_1E4A7F6CC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t sub_1E4A7F728()
{
  v1 = sub_1E4A7F9D0(*v0);

  return v1;
}

void *sub_1E4A7F784(void *result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  if (!a2)
  {
LABEL_11:
    a3 = 0;
    goto LABEL_14;
  }

  if (!a3)
  {
LABEL_14:
    *v4 = v3;
    v4[1] = a3;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    v7 = a3;
    v8 = a3 - 1;
    while (1)
    {
      if (v6 == [*(*(v3 + 16) + 16) numberOfWallpaperCollections])
      {
        a3 = v6;
        goto LABEL_14;
      }

      v9 = [*(*(v3 + 16) + 16) wallpaperCollectionAtIndex_];
      type metadata accessor for WKWallpaperRepresentingCollection.ImplementationWrapper();
      v10 = swift_allocObject();
      *(v10 + 16) = v9;
      result = [*(*(v3 + 16) + 16) numberOfWallpaperCollections];
      if (v6 >= result)
      {
        break;
      }

      *(a2 + 8 * v6) = v10;
      if (v8 == v6)
      {
        a3 = v7;
        goto LABEL_14;
      }

      if (__OFADD__(++v6, 1))
      {
        __break(1u);
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1E4A7F9D0(uint64_t a1)
{
  v2 = [*(*(a1 + 16) + 16) numberOfWallpaperCollections];
  result = [*(*(a1 + 16) + 16) numberOfWallpaperCollections];
  if (result < 0)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    return result;
  }

  result = [*(*(a1 + 16) + 16) numberOfWallpaperCollections];
  if (v2 < 0 || result < v2)
  {
    goto LABEL_15;
  }

  if (v2)
  {
    v4 = sub_1E4A9CA34(v2, 0);
    if ([*(*(a1 + 16) + 16) numberOfWallpaperCollections])
    {
      v5 = 0;
      v6 = v2 - 1;
      while (1)
      {
        v7 = [*(*(a1 + 16) + 16) wallpaperCollectionAtIndex_];
        type metadata accessor for WKWallpaperRepresentingCollection.ImplementationWrapper();
        v8 = swift_allocObject();
        *(v8 + 16) = v7;
        result = [*(*(a1 + 16) + 16) numberOfWallpaperCollections];
        if (v5 >= result)
        {
          break;
        }

        v4[v5 + 4] = v8;
        if (v6 == v5)
        {
          return v4;
        }

        if (++v5 == [*(*(a1 + 16) + 16) numberOfWallpaperCollections])
        {
          goto LABEL_10;
        }
      }

      __break(1u);
      goto LABEL_14;
    }

LABEL_10:
    __break(1u);
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1E4A7FB30()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1E4AAA140();

  return v1;
}

uint64_t sub_1E4A7FBA4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1E4AAA140();

  return v1;
}

void sub_1E4A7FC1C()
{
  v1 = *(v0 + OBJC_IVAR____TtC12WallpaperKit25WKWallpaperImageViewModel_type);
  v3 = *(v0 + OBJC_IVAR____TtC12WallpaperKit25WKWallpaperImageViewModel_wallpaperRepresenting + 24);
  v2 = *(v0 + OBJC_IVAR____TtC12WallpaperKit25WKWallpaperImageViewModel_wallpaperRepresenting + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC12WallpaperKit25WKWallpaperImageViewModel_wallpaperRepresenting), v3);
  if (v1 <= 3)
  {
    if (v1 > 1)
    {
      if (v1 == 2)
      {
        v4 = sub_1E4A93BDC(v3, v2);
        if (v4)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v4 = sub_1E4A93C10(v3, v2);
        if (v4)
        {
          goto LABEL_24;
        }
      }
    }

    else if (v1)
    {
      v4 = sub_1E4A93A28(v3, v2);
      if (v4)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v4 = (*(*(v2 + 16) + 16))(v3);
      if (v4)
      {
        goto LABEL_24;
      }
    }
  }

  else if (v1 <= 5)
  {
    if (v1 != 4)
    {
      v4 = sub_1E4A932B0(v3, v2);
      if (!v4)
      {
        goto LABEL_26;
      }

      goto LABEL_24;
    }

    v4 = sub_1E4A944A0(v3, v2);
    if (v4)
    {
      goto LABEL_24;
    }
  }

  else
  {
    if (v1 != 6)
    {
      if (v1 == 7)
      {
        v4 = sub_1E4A944B8(v3, v2);
        if (!v4)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v4 = sub_1E4A950A0(v3, v2);
        if (!v4)
        {
          goto LABEL_26;
        }
      }

LABEL_24:
      [v4 size];
      goto LABEL_26;
    }

    v4 = sub_1E4A944AC(v3, v2);
    if (v4)
    {
      goto LABEL_24;
    }
  }

LABEL_26:
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1E4AAA150();
  if (v4)
  {
    v5 = v4;
    sub_1E4AAA600();
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_1E4AAA150();
}

uint64_t sub_1E4A7FE54()
{
  v1 = OBJC_IVAR____TtC12WallpaperKit25WKWallpaperImageViewModel__image;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E898, &qword_1E4AB2D98);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC12WallpaperKit25WKWallpaperImageViewModel__imageSize;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E8A0, &qword_1E4AB2DA0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC12WallpaperKit25WKWallpaperImageViewModel_wallpaperRepresenting));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WKWallpaperImageViewModel(uint64_t a1)
{
  result = qword_1EE043EF0;
  if (!qword_1EE043EF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E4A7FFAC(uint64_t a1)
{
  sub_1E4A800B8(319, qword_1EE043A38, &qword_1ECF8E888, &unk_1E4AB2D20);
  if (v1 <= 0x3F)
  {
    sub_1E4A800B8(319, &qword_1EE043A30, &qword_1ECF8E890, qword_1E4AB5420);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1E4A800B8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_1E4AAA160();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1E4A80118@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E4AAA120();
  *a1 = result;
  return result;
}

uint64_t sub_1E4A80214@<X0>(uint64_t a1@<X8>)
{
  v70 = a1;
  v2 = type metadata accessor for WKBokehViewRepresentable(0);
  MEMORY[0x1EEE9AC00](v2);
  v68 = (v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E8A8, &qword_1E4AB2F88);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v63 - v5;
  v7 = type metadata accessor for WKWallpaperPreviewImage(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_1E4AAA320();
  v66 = *(v10 - 8);
  v67 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v65 = v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E8B0, &qword_1E4AB2F90);
  v71 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v69 = v63 - v13;
  v14 = v1[7];
  v130 = v1[6];
  v131 = v14;
  v132 = v1[8];
  v133 = *(v1 + 144);
  v15 = v1[3];
  v126 = v1[2];
  v127 = v15;
  v16 = v1[5];
  v128 = v1[4];
  v129 = v16;
  v17 = v1[1];
  v124 = *v1;
  v125 = v17;
  v18 = *(v1 + 19);
  v64 = *(v1 + 160);
  v19 = *(v1 + 21);
  v20 = swift_retain_n();
  if (sub_1E4A5A770(v20))
  {
    v21 = v1[7];
    v122[6] = v1[6];
    v122[7] = v21;
    v122[8] = v1[8];
    v123 = *(v1 + 144);
    v22 = v1[3];
    v122[2] = v1[2];
    v122[3] = v22;
    v23 = v1[5];
    v122[4] = v1[4];
    v122[5] = v23;
    v24 = v1[1];
    v122[0] = *v1;
    v122[1] = v24;
    v25 = sub_1E4A49C60(v122);
    v63[1] = v4;
    if (v25 == 1)
    {
      nullsub_1();
      v99 = v130;
      v100 = v131;
      v101 = v132;
      v102 = v133;
      v95 = v126;
      v96 = v127;
      v97 = v128;
      v98 = v129;
      v93 = v124;
      v94 = v125;
      nullsub_1();
      v113 = *v26;
      v27 = v26[1];
      v28 = v26[2];
      v29 = v26[3];
      v117 = v26[4];
      v116 = v29;
      v114 = v27;
      v115 = v28;
      v30 = v26[5];
      v31 = v26[6];
      v32 = v26[7];
      v121 = v26[8];
      v120 = v32;
      v119 = v31;
      v118 = v30;
      v112 = v133;
      v110 = v131;
      v111 = v132;
      v108 = v129;
      v109 = v130;
      v106 = v127;
      v107 = v128;
      v104 = v125;
      v105 = v126;
      v103 = v124;
      nullsub_1();
      sub_1E4A49D24(v33, &v73);
    }

    else
    {
      nullsub_1();
      v99 = v130;
      v100 = v131;
      v101 = v132;
      v102 = v133;
      v95 = v126;
      v96 = v127;
      v97 = v128;
      v98 = v129;
      v93 = v124;
      v94 = v125;
      nullsub_1();
      v63[0] = *v37;
      v103 = v124;
      v104 = v125;
      v107 = v128;
      v108 = v129;
      v105 = v126;
      v106 = v127;
      v112 = v133;
      v110 = v131;
      v111 = v132;
      v109 = v130;
      nullsub_1();

      sub_1E4AAAA10();
      v38 = v7;
      v39 = sub_1E4AAA4E0();
      sub_1E4AAA0B0();

      v7 = v38;
      v40 = v65;
      sub_1E4AAA310();
      swift_getAtKeyPath();
      sub_1E4A49C68(&v124);
      (*(v66 + 8))(v40, v67);
    }

    v92[6] = v119;
    v92[7] = v120;
    v92[8] = v121;
    v92[2] = v115;
    v92[3] = v116;
    v92[4] = v117;
    v92[5] = v118;
    v92[0] = v113;
    v92[1] = v114;
    sub_1E4A49CD0(v92);
    if (v92[0])
    {
      goto LABEL_12;
    }

    v41 = v7;

    if ((v64 & 1) == 0)
    {
      sub_1E4AAAA10();
      v42 = sub_1E4AAA4E0();
      sub_1E4AAA0B0();

      v43 = v65;
      sub_1E4AAA310();
      swift_getAtKeyPath();

      (*(v66 + 8))(v43, v67);
      v18 = v103;
    }

    swift_getKeyPath();
    *&v103 = v18;
    sub_1E4A80D40(&qword_1EE042900, type metadata accessor for WKWallpaperPosterLayerViewModel, &unk_1E4AB2458);
    sub_1E4AAA060();

    v44 = *(v18 + 184);

    if (v44)
    {
LABEL_12:

      v45 = v69;
    }

    else
    {
      v109 = v130;
      v110 = v131;
      v111 = v132;
      v112 = v133;
      v105 = v126;
      v106 = v127;
      v107 = v128;
      v108 = v129;
      v103 = v124;
      v104 = v125;
      if (sub_1E4A49C60(&v103) == 1)
      {
        nullsub_1();
        v79 = v130;
        v80 = v131;
        v81 = v132;
        v82 = v133;
        v75 = v126;
        v76 = v127;
        v77 = v128;
        v78 = v129;
        v73 = v124;
        v74 = v125;
        nullsub_1();
        v83 = *v51;
        v52 = v51[1];
        v53 = v51[2];
        v54 = v51[4];
        v86 = v51[3];
        v87 = v54;
        v84 = v52;
        v85 = v53;
        v55 = v51[5];
        v56 = v51[6];
        v57 = v51[8];
        v90 = v51[7];
        v91 = v57;
        v88 = v55;
        v89 = v56;
        v102 = v133;
        v100 = v131;
        v101 = v132;
        v98 = v129;
        v99 = v130;
        v96 = v127;
        v97 = v128;
        v94 = v125;
        v95 = v126;
        v93 = v124;
        nullsub_1();
        sub_1E4A49D24(v58, &v72);
      }

      else
      {
        nullsub_1();
        v79 = v130;
        v80 = v131;
        v81 = v132;
        v82 = v133;
        v75 = v126;
        v76 = v127;
        v77 = v128;
        v78 = v129;
        v73 = v124;
        v74 = v125;
        nullsub_1();
        v93 = v124;
        v94 = v125;
        v97 = v128;
        v98 = v129;
        v95 = v126;
        v96 = v127;
        v102 = v133;
        v100 = v131;
        v101 = v132;
        v99 = v130;
        nullsub_1();

        sub_1E4AAAA10();
        v59 = sub_1E4AAA4E0();
        sub_1E4AAA0B0();

        v60 = v65;
        sub_1E4AAA310();
        swift_getAtKeyPath();
        sub_1E4A49C68(&v124);
        (*(v66 + 8))(v60, v67);
      }

      v45 = v69;
      v99 = v89;
      v100 = v90;
      v101 = v91;
      v95 = v85;
      v96 = v86;
      v97 = v87;
      v98 = v88;
      v93 = v83;
      v94 = v84;
      sub_1E4A49CD0(&v93);

      if (BYTE8(v95) == 1)
      {
        v61 = (v9 + v41[6]);
        v61[3] = &type metadata for WKWallpaperBundle;
        v61[4] = sub_1E4A50754();
        *v61 = v19;
        *v9 = swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E2C0, &qword_1E4AB01A0);
        swift_storeEnumTagMultiPayload();
        v62 = v9 + v41[5];
        *v62 = swift_getKeyPath();
        *(v62 + 1) = 0;
        v62[16] = 0;
        *(v9 + v41[7]) = 1;
        v49 = type metadata accessor for WKWallpaperPreviewImage;
        sub_1E4A80DF8(v9, v6, type metadata accessor for WKWallpaperPreviewImage);
        goto LABEL_14;
      }
    }

    v9 = v68;
    v46 = v68 + *(v2 + 24);
    *(v46 + 3) = &type metadata for WKWallpaperBundle;
    *(v46 + 4) = sub_1E4A50754();
    *v46 = v19;
    *v9 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E2C0, &qword_1E4AB01A0);
    swift_storeEnumTagMultiPayload();
    v47 = v9 + *(v2 + 20);
    type metadata accessor for WKWallpaperPosterLayerViewModel(0);
    sub_1E4A80D40(&qword_1EE042900, type metadata accessor for WKWallpaperPosterLayerViewModel, &unk_1E4AB2458);
    *v47 = sub_1E4AAA1E0();
    v47[8] = v48 & 1;
    v49 = type metadata accessor for WKBokehViewRepresentable;
    sub_1E4A80DF8(v9, v6, type metadata accessor for WKBokehViewRepresentable);
LABEL_14:
    swift_storeEnumTagMultiPayload();
    sub_1E4A80D40(qword_1EE042D40, type metadata accessor for WKWallpaperPreviewImage, &protocol conformance descriptor for WKWallpaperPreviewImage);
    sub_1E4A80D40(&qword_1EE042CF8, type metadata accessor for WKBokehViewRepresentable, &unk_1E4AB4FDC);
    sub_1E4AAA430();
    sub_1E4A80E60(v9, v49);
    v50 = v70;
    sub_1E4A80D88(v45, v70);
    return (*(v71 + 56))(v50, 0, 1, v12);
  }

  v34 = v70;
  v35 = *(v71 + 56);

  return v35(v34, 1, 1, v12);
}

uint64_t sub_1E4A80D40(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E4A80D88(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E8B0, &qword_1E4AB2F90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E4A80DF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E4A80E60(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1E4A80EC0()
{
  result = qword_1EE042300;
  if (!qword_1EE042300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF8E8B8, &unk_1E4AB3020);
    sub_1E4A80F44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE042300);
  }

  return result;
}

unint64_t sub_1E4A80F44()
{
  result = qword_1EE042308;
  if (!qword_1EE042308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF8E8B0, &qword_1E4AB2F90);
    sub_1E4A80D40(qword_1EE042D40, type metadata accessor for WKWallpaperPreviewImage, &protocol conformance descriptor for WKWallpaperPreviewImage);
    sub_1E4A80D40(&qword_1EE042CF8, type metadata accessor for WKBokehViewRepresentable, &unk_1E4AB4FDC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE042308);
  }

  return result;
}

uint64_t sub_1E4A810E4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1E4AAA0E0();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);

  return sub_1E4AAA0D0();
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

uint64_t sub_1E4A81234(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1E4AAA0E0();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_1E4AAA0D0();
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

uint64_t sub_1E4A812C0(uint64_t a1, int a2)
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