void sub_1D31544F8(unsigned __int8 a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
    goto LABEL_37;
  }

  v1 = Strong;
  v4 = *(Strong + OBJC_IVAR____TtC10Navigation20MNOfflineCoordinator__navigationSessionState);
  if (!v4)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v5 = [v4 currentRouteInfo];
  if (!v5)
  {
LABEL_38:

    goto LABEL_39;
  }

  v6 = v5;
  v39 = [v5 route];

  if (!v39)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (!a1)
  {
    if (qword_1EC75BE58 != -1)
    {
      swift_once();
    }

    v16 = sub_1D3276F80();
    __swift_project_value_buffer(v16, qword_1EC760758);
    v17 = sub_1D3276F60();
    v18 = sub_1D3277390();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v40[0] = v20;
      *v19 = 136315138;
      v21 = GEOOfflineModeAsString();
      v22 = sub_1D32770C0();
      v24 = v23;

      v25 = sub_1D312BA30(v22, v24, v40);

      *(v19 + 4) = v25;
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x1D38B6000](v20, -1, -1);
      MEMORY[0x1D38B6000](v19, -1, -1);

      goto LABEL_26;
    }

    goto LABEL_31;
  }

  if (a1 == 1)
  {
    if ([v39 isOfflineRoute])
    {
      if (qword_1EC75BE58 != -1)
      {
        swift_once();
      }

      v7 = sub_1D3276F80();
      __swift_project_value_buffer(v7, qword_1EC760758);
      v8 = sub_1D3276F60();
      v9 = sub_1D3277390();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_1D311E000, v8, v9, "We are already online but somehow have an offline route. Attempting to upgrade route.", v10, 2u);
        MEMORY[0x1D38B6000](v10, -1, -1);
      }

      v11 = swift_unknownObjectWeakLoadStrong();
      if (v11)
      {
        v12 = v11;
        swift_beginAccess();
        v13 = swift_unknownObjectWeakLoadStrong();

        if (!v13)
        {
          goto LABEL_26;
        }

        v14 = swift_unknownObjectWeakLoadStrong();
        if (v14)
        {
          v15 = v14;
          [v13 offlineCoordinatorDidDetectOnline_];

          swift_unknownObjectRelease();
          return;
        }

LABEL_41:
        __break(1u);
        return;
      }

LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    if (qword_1EC75BE58 != -1)
    {
      swift_once();
    }

    v36 = sub_1D3276F80();
    __swift_project_value_buffer(v36, qword_1EC760758);
    v17 = sub_1D3276F60();
    v37 = sub_1D32773B0();
    if (os_log_type_enabled(v17, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_1D311E000, v17, v37, "We are already online and have an online route. Ignoring update.", v38, 2u);
      MEMORY[0x1D38B6000](v38, -1, -1);
    }

LABEL_31:

    goto LABEL_33;
  }

  if (a1 != 2)
  {
    if (qword_1EC75BE58 != -1)
    {
      swift_once();
    }

    v26 = sub_1D3276F80();
    __swift_project_value_buffer(v26, qword_1EC760758);
    v27 = sub_1D3276F60();
    v28 = sub_1D32773A0();
    if (!os_log_type_enabled(v27, v28))
    {

      goto LABEL_33;
    }

    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v40[0] = v30;
    *v29 = 136315138;
    v31 = GEOOfflineModeAsString();
    v32 = sub_1D32770C0();
    v34 = v33;

    v35 = sub_1D312BA30(v32, v34, v40);

    *(v29 + 4) = v35;
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x1D38B6000](v30, -1, -1);
    MEMORY[0x1D38B6000](v29, -1, -1);

LABEL_26:
    return;
  }

  sub_1D3154C94();
LABEL_33:
}

void sub_1D3154A6C(unsigned __int8 a1)
{
  if (qword_1EC75BE58 != -1)
  {
    swift_once();
  }

  v2 = sub_1D3276F80();
  __swift_project_value_buffer(v2, qword_1EC760758);
  v3 = sub_1D3276F60();
  v4 = sub_1D32773B0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v18 = v6;
    *v5 = 136315394;
    v7 = GEOOfflineModeAsString();
    v8 = sub_1D32770C0();
    v10 = v9;

    v11 = sub_1D312BA30(v8, v10, &v18);

    *(v5 + 4) = v11;
    *(v5 + 12) = 2080;
    v12 = GEOOfflineDeviceAsString();
    v13 = sub_1D32770C0();
    v15 = v14;

    v16 = sub_1D312BA30(v13, v15, &v18);

    *(v5 + 14) = v16;
    swift_arrayDestroy();
    MEMORY[0x1D38B6000](v6, -1, -1);
    MEMORY[0x1D38B6000](v5, -1, -1);
  }

  v17 = [objc_opt_self() shared];
  [v17 delegatePrefersMode:a1 device:1];
}

void sub_1D3154C94()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
    goto LABEL_25;
  }

  v0 = Strong;
  v2 = *(Strong + OBJC_IVAR____TtC10Navigation20MNOfflineCoordinator__navigationSessionState);
  if (!v2)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v3 = [v2 currentRouteInfo];
  if (!v3)
  {
LABEL_26:

    goto LABEL_27;
  }

  v4 = v3;
  v41 = [v3 route];

  if (!v41)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  GEOConfigGetDouble();
  v6 = v5;
  v7 = swift_unknownObjectWeakLoadStrong();
  if (!v7)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v8 = v7;
  v9 = *(v7 + OBJC_IVAR____TtC10Navigation20MNOfflineCoordinator__navigationSessionState);
  if (!v9)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v10 = [v9 location];
  v11 = [v10 routeMatch];

  if (v11)
  {
    v12 = [v11 routeCoordinate];

    v8 = v11;
  }

  else
  {
    v12 = 0;
  }

  [v41 coarseBoundsForRange_];
  GEOMapRectMakeWithMapBox(&v42);
  GEOCoordinateRegionForMapRect();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = [objc_opt_self() shared];
  v22 = [v21 canUseOfflineForCoordinateRegion_];

  if (v22 == 2)
  {
    v23 = swift_unknownObjectWeakLoadStrong();
    if (v23)
    {
      v24 = v23;
      type metadata accessor for MNOfflineCoordinatorState.Offline();
      v25 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v26 = OBJC_IVAR____TtC10Navigation20MNOfflineCoordinator__currentState;
      *&v24[OBJC_IVAR____TtC10Navigation20MNOfflineCoordinator__currentState] = v25;
      swift_retain_n();

      swift_unknownObjectWeakAssign();

      v27 = *&v24[v26];
      if (v27)
      {
        v28 = *(*v27 + 96);

        v28(v29);

        return;
      }

      goto LABEL_31;
    }

LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (qword_1EC75BE58 != -1)
  {
    swift_once();
  }

  v30 = sub_1D3276F80();
  __swift_project_value_buffer(v30, qword_1EC760758);
  v31 = sub_1D3276F60();
  v32 = sub_1D32773B0();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *&v42 = v34;
    *v33 = 136315138;
    v35 = GEOStringFromCoordinateRegionBounds();
    if (!v35)
    {
LABEL_32:
      __break(1u);
      return;
    }

    v36 = v35;
    v37 = sub_1D32770C0();
    v39 = v38;

    v40 = sub_1D312BA30(v37, v39, &v42);

    *(v33 + 4) = v40;
    _os_log_impl(&dword_1D311E000, v31, v32, "Not switching to offline state because the route's bounds is outside of the downloaded region. Bounds: %s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v34);
    MEMORY[0x1D38B6000](v34, -1, -1);
    MEMORY[0x1D38B6000](v33, -1, -1);
  }
}

void sub_1D3155224(uint64_t a1)
{
  if (a1 == 16)
  {
    if (qword_1EC75BE58 != -1)
    {
      swift_once();
    }

    v2 = sub_1D3276F80();
    __swift_project_value_buffer(v2, qword_1EC760758);
    v3 = v1;
    v4 = sub_1D3276F60();
    v5 = sub_1D32773B0();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v34 = v7;
      *v6 = 136315394;
      v8 = *&v3[OBJC_IVAR____TtC10Navigation20MNOfflineCoordinator__currentState];
      if (v8)
      {
        v9 = (*(*v8 + 104))();
        v11 = v10;
      }

      else
      {
        v11 = 0xE700000000000000;
        v9 = 0x6E776F6E6B6E55;
      }

      v12 = sub_1D312BA30(v9, v11, &v34);

      *(v6 + 4) = v12;
      *(v6 + 12) = 2080;
      v13 = [objc_opt_self() shared];
      [v13 state];

      v14 = GEOOfflineStateAsString();
      v15 = sub_1D32770C0();
      v17 = v16;

      v18 = sub_1D312BA30(v15, v17, &v34);

      *(v6 + 14) = v18;
      swift_arrayDestroy();
      MEMORY[0x1D38B6000](v7, -1, -1);
      MEMORY[0x1D38B6000](v6, -1, -1);
    }

    type metadata accessor for MNOfflineCoordinatorState.Online();
    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v20 = OBJC_IVAR____TtC10Navigation20MNOfflineCoordinator__currentState;
    *&v3[OBJC_IVAR____TtC10Navigation20MNOfflineCoordinator__currentState] = v19;
    swift_retain_n();

    swift_unknownObjectWeakAssign();

    v21 = *&v3[v20];
    if (v21)
    {
      v22 = *(*v21 + 96);

      v22(v23);

      v24 = &v3[OBJC_IVAR____TtC10Navigation20MNOfflineCoordinator__pendingRerouteFinishedState];
      if ((v3[OBJC_IVAR____TtC10Navigation20MNOfflineCoordinator__pendingRerouteFinishedState + 4] & 1) == 0)
      {
        v25 = sub_1D3276F60();
        v26 = sub_1D32773B0();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          v34 = v28;
          *v27 = 136315138;
          v29 = GEOOfflineStateAsString();
          v30 = sub_1D32770C0();
          v32 = v31;

          v33 = sub_1D312BA30(v30, v32, &v34);

          *(v27 + 4) = v33;
          _os_log_impl(&dword_1D311E000, v25, v26, "We had a pending state: %s, but we're dropping it because we just got an online route.", v27, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v28);
          MEMORY[0x1D38B6000](v28, -1, -1);
          MEMORY[0x1D38B6000](v27, -1, -1);
        }

        *v24 = 0;
        v24[4] = 1;
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1D3155614(uint64_t a1)
{
  if (qword_1EC75BE58 != -1)
  {
    swift_once();
  }

  v2 = sub_1D3276F80();
  __swift_project_value_buffer(v2, qword_1EC760758);
  v3 = sub_1D3276F60();
  v4 = sub_1D32773B0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136315138;
    v7 = GEOOfflineStateAsString();
    v8 = sub_1D32770C0();
    v10 = v9;

    v11 = sub_1D312BA30(v8, v10, &v12);

    *(v5 + 4) = v11;
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x1D38B6000](v6, -1, -1);
    MEMORY[0x1D38B6000](v5, -1, -1);
  }

  sub_1D31535AC(a1);
}

uint64_t sub_1D3155928@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC75BE48 != -1)
  {
    swift_once();
  }

  v2 = sub_1D3276F80();
  v3 = __swift_project_value_buffer(v2, qword_1EC760728);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1D31559D0(uint64_t a1)
{
  v2[128] = v1;
  v2[127] = a1;
  v3 = sub_1D3276D30();
  v2[129] = v3;
  v2[130] = *(v3 - 8);
  v2[131] = swift_task_alloc();
  v2[132] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D3155AA0, 0, 0);
}

uint64_t sub_1D3155AA0()
{
  v82 = v1;
  v3 = *(v1 + 1024);
  v4 = OBJC_IVAR___MNMapMatcher__locationHistory;
  swift_beginAccess();
  v5 = *(v4 + v3);
  if (v5 >> 62)
  {
    goto LABEL_59;
  }

  v6 = &qword_1EC75C000;
  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

LABEL_17:
  while (2)
  {
    v17 = [*(v1 + 1016) rawLocation];
    if (!v17)
    {
      __break(1u);
LABEL_78:
      __break(1u);
      return MEMORY[0x1EEE6DEB8](v17, v18, v19, v20);
    }

    v39 = v17;
    v40 = *(v1 + 1024);
    _s14RecentLocationCMa(0);
    swift_allocObject();
    v0 = sub_1D3144660(v39, 0, 0);
    *(v1 + 1064) = v0;
    v41 = sub_1D314725C(v0);
    v42 = OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_classicRouteMatch;
    *(v1 + 1072) = OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_classicRouteMatch;
    *(v0 + v42) = v41;

    v5 = *(v4 + v3);
    if (v5 >> 62)
    {
      v43 = sub_1D3277660();
    }

    else
    {
      v43 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v2 = &OBJC_IVAR___MNMapMatcher__locationHistoryDistance;
    if (v43)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        goto LABEL_74;
      }

      if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v44 = *(v5 + 32);

        goto LABEL_24;
      }

      __break(1u);
      goto LABEL_76;
    }

    while (1)
    {
      swift_beginAccess();
      if (*(v4 + v3) >> 62 && sub_1D3277660() < 0)
      {
        __break(1u);
      }

      else
      {
        v47 = *(v1 + 1024);

        sub_1D315E34C(0, 0, v0);
        swift_endAccess();
        v48 = OBJC_IVAR___MNMapMatcher__routeMatchedLocationHistory;
        swift_beginAccess();
        if (!(*(v47 + v48) >> 62))
        {
          goto LABEL_27;
        }
      }

      if ((sub_1D3277660() & 0x8000000000000000) == 0)
      {
LABEL_27:
        sub_1D315E34C(0, 0, v0);
        swift_endAccess();

        if (v6[1] == -1)
        {
          goto LABEL_28;
        }

        goto LABEL_66;
      }

      __break(1u);
LABEL_66:
      swift_once();
LABEL_28:
      v49 = *(v1 + 1024);
      v50 = sub_1D3276F80();
      *(v1 + 1080) = __swift_project_value_buffer(v50, qword_1EC760888);
      LOBYTE(v40) = sub_1D3277370();
      v51 = v49;
      v5 = sub_1D3276F60();
      if (os_log_type_enabled(v5, v40))
      {
        v6 = swift_slowAlloc();
        *v6 = 134218240;
        v52 = *(v4 + v3);
        if (!(v52 >> 62))
        {
          v53 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_31:
          v54 = *(v1 + 1024);
          *(v6 + 4) = v53;

          *(v6 + 6) = 2048;
          *(v6 + 14) = *&v54[*v2];
          _os_log_impl(&dword_1D311E000, v5, v40, "Location history count %ld, length %fm", v6, 0x16u);
          MEMORY[0x1D38B6000](v6, -1, -1);
          goto LABEL_33;
        }

LABEL_76:
        v53 = sub_1D3277660();
        goto LABEL_31;
      }

LABEL_33:
      v55 = *(v1 + 1024);
      sub_1D31801A4();
      v56 = swift_allocObject();
      *(v56 + 16) = v55;
      *(v56 + 24) = v0;
      v57 = swift_allocObject();
      *(v1 + 1088) = v57;
      *(v57 + 16) = &unk_1D328BC50;
      *(v57 + 24) = v56;

      v58 = v55;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C708, &qword_1D328BC68);
      swift_asyncLet_begin();
      v0 = *(v4 + v3);
      if (v0 >> 62)
      {
        v5 = sub_1D3277660();
        if (!v5)
        {
LABEL_68:
          v67 = 1;
LABEL_69:
          *(v1 + 1144) = v67;
          *(v1 + 1096) = v5;
          sub_1D315D460(1);
          *(v1 + 1145) = v71 & 1;
          v19 = sub_1D3156624;
          v17 = (v1 + 16);
          v18 = v1 + 968;
          v20 = v1 + 656;

          return MEMORY[0x1EEE6DEB8](v17, v18, v19, v20);
        }
      }

      else
      {
        v5 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v5)
        {
          goto LABEL_68;
        }
      }

      v3 = &OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_connectedRouteMatch;
      v4 = &OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_road;
      while (!__OFSUB__(v5--, 1))
      {
        if ((v0 & 0xC000000000000001) != 0)
        {
          v60 = MEMORY[0x1D38B45D0](v5, v0);
        }

        else
        {
          if ((v5 & 0x8000000000000000) != 0)
          {
            goto LABEL_57;
          }

          if (v5 >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_58;
          }

          v60 = *(v0 + 32 + 8 * v5);
        }

        v61 = &OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_classicRouteMatch;
        if (*(v60 + OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_preferConnectedRouteMatch))
        {
          v61 = &OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_connectedRouteMatch;
        }

        v62 = *(v60 + *v61);
        if (v62)
        {
          v63 = *(v62 + 72);
          v64 = v63;
          if (v63)
          {
            v65 = v64;
            v66 = [v64 road];

            if (v66)
            {

LABEL_54:

              v67 = 0;
LABEL_55:

              goto LABEL_69;
            }
          }
        }

        v2 = *(v60 + OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_road);
        v66 = v2;

        if (v2)
        {
          goto LABEL_54;
        }

        if (!v5)
        {
          v67 = 1;
          goto LABEL_55;
        }
      }

      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      v6 = &qword_1EC75C000;
      if (!sub_1D3277660())
      {
        goto LABEL_17;
      }

LABEL_3:
      if ((v5 & 0xC000000000000001) != 0)
      {
        break;
      }

      if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v7 = *(v5 + 32);

        goto LABEL_6;
      }

      __break(1u);
LABEL_74:

      v44 = MEMORY[0x1D38B45D0](0, v5);

LABEL_24:
      v45 = *(v1 + 1024);
      Distance = GEOCoordinateGetDistance(*(v0 + 16), *(v0 + 24), *(v44 + 16), *(v44 + 24));

      *(v45 + *v2) = Distance + *(v45 + *v2);
    }

    v7 = MEMORY[0x1D38B45D0](0, v5);

LABEL_6:
    if (v6[1] != -1)
    {
      swift_once();
    }

    v8 = *(v1 + 1016);
    v9 = sub_1D3276F80();
    __swift_project_value_buffer(v9, qword_1EC760888);
    swift_retain_n();
    v10 = v8;
    v11 = sub_1D3276F60();
    v12 = sub_1D3277390();
    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v1 + 1016);
    if (!v13)
    {

      goto LABEL_15;
    }

    v77 = v12;
    log = v11;
    v79 = v4;
    v80 = v3;
    v15 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v81 = v76;
    *v15 = 136316162;
    v16 = [v14 rawLocation];

    v75 = v7;
    if (!v16)
    {
      goto LABEL_78;
    }

    v21 = *(v1 + 1056);
    v22 = *(v1 + 1040);
    v23 = *(v1 + 1032);
    v24 = *(v1 + 1016);
    v74 = *(v1 + 1048);
    [v16 _navigation_geoCoordinate3D];

    *(v1 + 952) = 0;
    *(v1 + 960) = 0xE000000000000000;
    sub_1D3277310();
    MEMORY[0x1D38B3FE0](8236, 0xE200000000000000);
    sub_1D3277310();
    MEMORY[0x1D38B3FE0](32, 0xE100000000000000);
    sub_1D3277310();
    v25 = sub_1D312BA30(*(v1 + 952), *(v1 + 960), &v81);

    *(v15 + 4) = v25;
    *(v15 + 12) = 2080;
    v26 = [v24 timestamp];
    sub_1D3276D00();

    v72 = OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_timestamp;
    v73 = *(v22 + 16);
    v73(v74, v75 + OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_timestamp, v23);
    sub_1D315E588();
    LOBYTE(v26) = sub_1D3277090();
    v27 = *(v22 + 8);
    v27(v74, v23);
    v27(v21, v23);
    if (v26)
    {
      v28 = 0x7265646C6FLL;
    }

    else
    {
      v28 = 0x726577656ELL;
    }

    v29 = sub_1D312BA30(v28, 0xE500000000000000, &v81);

    *(v15 + 14) = v29;
    *(v15 + 22) = 2048;
    v73(v21, v75 + v72, v23);
    v30 = [v24 timestamp];
    sub_1D3276D00();

    sub_1D3276CC0();
    v32 = v31;
    v27(v74, v23);
    v27(v21, v23);
    *(v15 + 24) = v32;
    *(v15 + 32) = 2048;
    *(v15 + 34) = *(v75 + 16);
    *(v15 + 42) = 2048;
    v7 = v75;
    *(v15 + 44) = *(v75 + 24);
    _os_log_impl(&dword_1D311E000, log, v77, "%s Got CL location %s than the last CL location by %fs %f, %f.", v15, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x1D38B6000](v76, -1, -1);
    MEMORY[0x1D38B6000](v15, -1, -1);

    v4 = v79;
    v3 = v80;
LABEL_15:
    v33 = *(v1 + 1056);
    v34 = *(v1 + 1048);
    v35 = *(v1 + 1040);
    v36 = *(v1 + 1032);
    v37 = [*(v1 + 1016) timestamp];
    sub_1D3276D00();

    (*(v35 + 16))(v34, v7 + OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_timestamp, v36);
    LOBYTE(v37) = sub_1D3276CE0();
    v38 = *(v35 + 8);
    v38(v34, v36);
    v38(v33, v36);
    if (v37)
    {

      v6 = &qword_1EC75C000;
      continue;
    }

    break;
  }

  v68 = sub_1D3157A8C(2, v7, *(v1 + 1016));

  v69 = *(v1 + 8);

  return v69(v68);
}

uint64_t sub_1D3156640()
{
  v39 = v0;
  v1 = *(v0 + 1144);
  v2 = *(v0 + 1064);
  v3 = *(v0 + 968);
  v4 = *(v2 + OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_road);
  *(v2 + OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_road) = v3;
  v5 = v3;

  if (v1)
  {

    v6 = sub_1D3276F60();
    v7 = sub_1D3277370();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v38 = v9;
      *v8 = 136315138;
      *(v0 + 936) = 0;
      *(v0 + 944) = 0xE000000000000000;
      sub_1D3277310();
      MEMORY[0x1D38B3FE0](8236, 0xE200000000000000);
      sub_1D3277310();
      MEMORY[0x1D38B3FE0](32, 0xE100000000000000);
      sub_1D3277310();
      v10 = sub_1D312BA30(*(v0 + 936), *(v0 + 944), &v38);

      *(v8 + 4) = v10;
      _os_log_impl(&dword_1D311E000, v6, v7, "%s - No Recent Locations in location history have a road to start a shape match from.", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x1D38B6000](v9, -1, -1);
      MEMORY[0x1D38B6000](v8, -1, -1);
    }

    if (*(v0 + 1145) == 1)
    {

      v11 = sub_1D3276F60();
      v12 = sub_1D3277370();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v38 = v14;
        *v13 = 136315138;
        *(v0 + 920) = 0;
        *(v0 + 928) = 0xE000000000000000;
        sub_1D3277310();
        MEMORY[0x1D38B3FE0](8236, 0xE200000000000000);
        sub_1D3277310();
        MEMORY[0x1D38B3FE0](32, 0xE100000000000000);
        sub_1D3277310();
        v15 = sub_1D312BA30(*(v0 + 920), *(v0 + 928), &v38);

        *(v13 + 4) = v15;
        _os_log_impl(&dword_1D311E000, v11, v12, "%s - OffRoute, OnRoad. Backwards movement along route.", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v14);
        MEMORY[0x1D38B6000](v14, -1, -1);
        MEMORY[0x1D38B6000](v13, -1, -1);
      }

      v16 = (v0 + 1072);
      v17 = *(v0 + 1064);
      if (*(v17 + OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_preferConnectedRouteMatch))
      {
        v16 = &OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_connectedRouteMatch;
      }

      *(v0 + 1120) = sub_1D3157A8C(*(v17 + *v16) != 0, v17, *(v0 + 1016));
      v18 = sub_1D3157508;
      v19 = v0 + 16;
      v20 = v0 + 968;
      v21 = v0 + 848;
    }

    else
    {
      v26 = sub_1D315DA80(*(v0 + 1064));

      v27 = sub_1D3276F60();
      v28 = sub_1D3277370();

      v29 = os_log_type_enabled(v27, v28);
      if (v26)
      {
        if (v29)
        {
          v30 = swift_slowAlloc();
          v31 = swift_slowAlloc();
          v38 = v31;
          *v30 = 136315138;
          *(v0 + 904) = 0;
          *(v0 + 912) = 0xE000000000000000;
          sub_1D3277310();
          MEMORY[0x1D38B3FE0](8236, 0xE200000000000000);
          sub_1D3277310();
          MEMORY[0x1D38B3FE0](32, 0xE100000000000000);
          sub_1D3277310();
          v32 = sub_1D312BA30(*(v0 + 904), *(v0 + 912), &v38);

          *(v30 + 4) = v32;
          _os_log_impl(&dword_1D311E000, v27, v28, "%s - OnRoute. Inside route radius (speed based).", v30, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v31);
          MEMORY[0x1D38B6000](v31, -1, -1);
          MEMORY[0x1D38B6000](v30, -1, -1);
        }

        *(v0 + 1128) = sub_1D3157A8C(2, *(v0 + 1064), *(v0 + 1016));
        v18 = sub_1D31575AC;
        v19 = v0 + 16;
        v20 = v0 + 968;
        v21 = v0 + 784;
      }

      else
      {
        if (v29)
        {
          v33 = swift_slowAlloc();
          v34 = swift_slowAlloc();
          v38 = v34;
          *v33 = 136315138;
          *(v0 + 888) = 0;
          *(v0 + 896) = 0xE000000000000000;
          sub_1D3277310();
          MEMORY[0x1D38B3FE0](8236, 0xE200000000000000);
          sub_1D3277310();
          MEMORY[0x1D38B3FE0](32, 0xE100000000000000);
          sub_1D3277310();
          v35 = sub_1D312BA30(*(v0 + 888), *(v0 + 896), &v38);

          *(v33 + 4) = v35;
          _os_log_impl(&dword_1D311E000, v27, v28, "%s - OffRoute, OnRoad. Outside route radius (speed based).", v33, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v34);
          MEMORY[0x1D38B6000](v34, -1, -1);
          MEMORY[0x1D38B6000](v33, -1, -1);
        }

        v36 = (v0 + 1072);
        v37 = *(v0 + 1064);
        if (*(v37 + OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_preferConnectedRouteMatch))
        {
          v36 = &OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_connectedRouteMatch;
        }

        *(v0 + 1136) = sub_1D3157A8C(*(v37 + *v36) != 0, v37, *(v0 + 1016));
        v18 = sub_1D3157650;
        v19 = v0 + 16;
        v20 = v0 + 968;
        v21 = v0 + 720;
      }
    }

    return MEMORY[0x1EEE6DEB0](v19, v20, v18, v21);
  }

  else
  {
    v22 = swift_task_alloc();
    *(v0 + 1104) = v22;
    *v22 = v0;
    v22[1] = sub_1D3156DB8;
    v23 = *(v0 + 1096);
    v24 = *(v0 + 1064);

    return sub_1D3159DE4(v24, v23);
  }
}

uint64_t sub_1D3156DB8(char a1)
{
  *(*v1 + 1146) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D3156EB8, 0, 0);
}

uint64_t sub_1D3156EB8()
{
  v27 = v0;
  v1 = *(v0 + 1146);
  if (v1 == 3)
  {
    if (*(v0 + 1145) == 1)
    {

      v2 = sub_1D3276F60();
      v3 = sub_1D3277370();

      if (os_log_type_enabled(v2, v3))
      {
        v4 = swift_slowAlloc();
        v5 = swift_slowAlloc();
        v26 = v5;
        *v4 = 136315138;
        *(v0 + 920) = 0;
        *(v0 + 928) = 0xE000000000000000;
        sub_1D3277310();
        MEMORY[0x1D38B3FE0](8236, 0xE200000000000000);
        sub_1D3277310();
        MEMORY[0x1D38B3FE0](32, 0xE100000000000000);
        sub_1D3277310();
        v6 = sub_1D312BA30(*(v0 + 920), *(v0 + 928), &v26);

        *(v4 + 4) = v6;
        _os_log_impl(&dword_1D311E000, v2, v3, "%s - OffRoute, OnRoad. Backwards movement along route.", v4, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v5);
        MEMORY[0x1D38B6000](v5, -1, -1);
        MEMORY[0x1D38B6000](v4, -1, -1);
      }

      v7 = (v0 + 1072);
      v8 = *(v0 + 1064);
      if (*(v8 + OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_preferConnectedRouteMatch))
      {
        v7 = &OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_connectedRouteMatch;
      }

      *(v0 + 1120) = sub_1D3157A8C(*(v8 + *v7) != 0, v8, *(v0 + 1016));
      v9 = sub_1D3157508;
      v10 = v0 + 16;
      v11 = v0 + 968;
      v12 = v0 + 848;
    }

    else
    {
      v13 = sub_1D315DA80(*(v0 + 1064));

      v14 = sub_1D3276F60();
      v15 = sub_1D3277370();

      v16 = os_log_type_enabled(v14, v15);
      if (v13)
      {
        if (v16)
        {
          v17 = swift_slowAlloc();
          v18 = swift_slowAlloc();
          v26 = v18;
          *v17 = 136315138;
          *(v0 + 904) = 0;
          *(v0 + 912) = 0xE000000000000000;
          sub_1D3277310();
          MEMORY[0x1D38B3FE0](8236, 0xE200000000000000);
          sub_1D3277310();
          MEMORY[0x1D38B3FE0](32, 0xE100000000000000);
          sub_1D3277310();
          v19 = sub_1D312BA30(*(v0 + 904), *(v0 + 912), &v26);

          *(v17 + 4) = v19;
          _os_log_impl(&dword_1D311E000, v14, v15, "%s - OnRoute. Inside route radius (speed based).", v17, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v18);
          MEMORY[0x1D38B6000](v18, -1, -1);
          MEMORY[0x1D38B6000](v17, -1, -1);
        }

        *(v0 + 1128) = sub_1D3157A8C(2, *(v0 + 1064), *(v0 + 1016));
        v9 = sub_1D31575AC;
        v10 = v0 + 16;
        v11 = v0 + 968;
        v12 = v0 + 784;
      }

      else
      {
        if (v16)
        {
          v20 = swift_slowAlloc();
          v21 = swift_slowAlloc();
          v26 = v21;
          *v20 = 136315138;
          *(v0 + 888) = 0;
          *(v0 + 896) = 0xE000000000000000;
          sub_1D3277310();
          MEMORY[0x1D38B3FE0](8236, 0xE200000000000000);
          sub_1D3277310();
          MEMORY[0x1D38B3FE0](32, 0xE100000000000000);
          sub_1D3277310();
          v22 = sub_1D312BA30(*(v0 + 888), *(v0 + 896), &v26);

          *(v20 + 4) = v22;
          _os_log_impl(&dword_1D311E000, v14, v15, "%s - OffRoute, OnRoad. Outside route radius (speed based).", v20, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v21);
          MEMORY[0x1D38B6000](v21, -1, -1);
          MEMORY[0x1D38B6000](v20, -1, -1);
        }

        v23 = (v0 + 1072);
        v24 = *(v0 + 1064);
        if (*(v24 + OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_preferConnectedRouteMatch))
        {
          v23 = &OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_connectedRouteMatch;
        }

        *(v0 + 1136) = sub_1D3157A8C(*(v24 + *v23) != 0, v24, *(v0 + 1016));
        v9 = sub_1D3157650;
        v10 = v0 + 16;
        v11 = v0 + 968;
        v12 = v0 + 720;
      }
    }
  }

  else
  {
    *(v0 + 1112) = sub_1D3157A8C(v1, *(v0 + 1064), *(v0 + 1016));
    v9 = sub_1D3157464;
    v10 = v0 + 16;
    v11 = v0 + 968;
    v12 = v0 + 976;
  }

  return MEMORY[0x1EEE6DEB0](v10, v11, v9, v12);
}

uint64_t sub_1D3157480()
{

  v1 = *(v0 + 1112);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1D3157524()
{

  v1 = *(v0 + 1120);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1D31575C8()
{

  v1 = *(v0 + 1128);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1D315766C()
{

  v1 = *(v0 + 1136);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1D31576F4(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1D3157790;

  return sub_1D3158814(a2);
}

uint64_t sub_1D3157790(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_1D315788C(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1D3157978;

  return v5();
}

uint64_t sub_1D3157978(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  *v3 = a1;
  v4 = *(v6 + 8);

  return v4();
}

id sub_1D3157A8C(char a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v121 = a3;
  v7 = sub_1D3276D70();
  v120 = *(v7 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v114 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v115 = &v114 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v118 = &v114 - v13;
  v14 = sub_1D3276D30();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v114 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_preferConnectedRouteMatch;
  if (*(a2 + OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_preferConnectedRouteMatch))
  {
    v18 = &OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_connectedRouteMatch;
  }

  else
  {
    v18 = &OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_classicRouteMatch;
  }

  v19 = *v18;
  v122 = a2;
  v20 = *(a2 + v19);
  if (!v20)
  {
    v27 = v121;
    if (a1 == 2)
    {
      goto LABEL_29;
    }

    v28 = 0;
    if (a1)
    {
      goto LABEL_22;
    }

LABEL_9:
    v29 = [v27 rawLocation];
    v30 = [objc_allocWithZone(MNLocation) initWithRawLocation:v29 locationFixType:0];

    [v30 setRouteMatch_];
    if (v30)
    {
      v31 = *(v4 + OBJC_IVAR___MNMapMatcher__route);
    }

    else
    {
      if (qword_1EC75C008 != -1)
      {
        swift_once();
      }

      v86 = sub_1D3276F80();
      __swift_project_value_buffer(v86, qword_1EC760888);
      v87 = sub_1D3276F60();
      v88 = sub_1D3277390();
      if (os_log_type_enabled(v87, v88))
      {
        v89 = swift_slowAlloc();
        *v89 = 0;
        _os_log_impl(&dword_1D311E000, v87, v88, "offRoute offRoad did not have a roadMatchLocation", v89, 2u);
        MEMORY[0x1D38B6000](v89, -1, -1);
      }

      v31 = *(v4 + OBJC_IVAR___MNMapMatcher__route);
      v30 = v27;
    }

    v90 = type metadata accessor for MapMatchingResult(0);
    v91 = objc_allocWithZone(v90);
    *&v91[OBJC_IVAR___MNMapMatchingResult_route] = v31;
    v92 = v31;
    result = [v92 uniqueRouteID];
    if (!result)
    {
      goto LABEL_71;
    }

    v93 = result;
    sub_1D3276D60();

    (*(v120 + 32))(&v91[OBJC_IVAR___MNMapMatchingResult_routeID], v10, v7);
    *&v91[OBJC_IVAR___MNMapMatchingResult_location] = v30;
    v91[OBJC_IVAR___MNMapMatchingResult_matchType] = 0;
    v125.receiver = v91;
    v125.super_class = v90;
    v94 = objc_msgSendSuper2(&v125, sel_init);
LABEL_67:

    return v94;
  }

  v114 = v10;
  v116 = v4;
  v117 = v7;
  v21 = *(v4 + OBJC_IVAR___MNMapMatcher__route);
  v22 = v20[4];
  v23 = v20[5];
  v24 = v20[6];
  v25 = *(v20 + 2);
  v26 = *(v20 + 3);

  if (v26)
  {
    v26 = [v26 stepIndex];
  }

  v32 = v20[7];
  (*(v15 + 16))(v17, v122 + OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_timestamp, v14);
  v33 = objc_allocWithZone(MEMORY[0x1E69A2540]);
  v34 = sub_1D3276CD0();
  v28 = [v33 initWithRoute:v21 routeCoordinate:v25 locationCoordinate:v26 stepIndex:v34 matchedCourse:v22 timestamp:{v23, v24, v32}];

  (*(v15 + 8))(v17, v14);
  if (a1 == 2)
  {
    v4 = v116;
    v7 = v117;
    v27 = v121;
    if (v28)
    {
      v28 = v28;
      [v28 setIsGoodMatch:1];
      v35 = [objc_allocWithZone(MNLocation) initWithRouteMatch:v28 rawLocation:v27 locationFixType:2];
      if (v35)
      {
        v36 = v35;
        v37 = v119;
        v38 = &OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_classicRouteMatch;
        if (*(v122 + v119))
        {
          v38 = &OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_connectedRouteMatch;
        }

        v39 = *(v122 + *v38);
        if (!v39 || (v40 = *(v39 + 72), v41 = v40, !v40) || (v42 = v41, v43 = [v41 road], v42, v44 = objc_msgSend(v43, sel_internalRoadName), v43, !v44))
        {
          v44 = 0;
        }

        [v36 setRoadName_];

LABEL_35:
        v75 = &OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_classicRouteMatch;
        if (*(v122 + v37))
        {
          v75 = &OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_connectedRouteMatch;
        }

        v76 = *(v122 + *v75);
        if (v76 && (v77 = *(v76 + 72), v78 = v77, v77) && (v79 = v78, v80 = [v78 road], v79, v80))
        {
          if (v36)
          {
            v36 = v36;
            [v36 setSpeedLimit_];
            [v36 setSpeedLimitIsMPH_];
            v81 = [v80 feature];
            v82 = v4;
            v83 = [v81 speedLimitShieldId];

            [v36 setSpeedLimitShieldType_];
            v84 = *(v82 + OBJC_IVAR___MNMapMatcher__route);
LABEL_43:
            v85 = v36;
LABEL_65:
            v108 = type metadata accessor for MapMatchingResult(0);
            v109 = objc_allocWithZone(v108);
            *&v109[OBJC_IVAR___MNMapMatchingResult_route] = v84;
            v110 = v84;
            v111 = v36;
            v92 = v110;
            result = [v92 uniqueRouteID];
            if (result)
            {
              v112 = result;
              v113 = v118;
              sub_1D3276D60();

              (*(v120 + 32))(&v109[OBJC_IVAR___MNMapMatchingResult_routeID], v113, v7);
              *&v109[OBJC_IVAR___MNMapMatchingResult_location] = v85;
              v109[OBJC_IVAR___MNMapMatchingResult_matchType] = 2;
              v123.receiver = v109;
              v123.super_class = v108;
              v94 = objc_msgSendSuper2(&v123, sel_init);

              goto LABEL_67;
            }

            __break(1u);
            goto LABEL_70;
          }

          v84 = *(v4 + OBJC_IVAR___MNMapMatcher__route);
        }

        else
        {
          v84 = *(v4 + OBJC_IVAR___MNMapMatcher__route);
          if (v36)
          {
            goto LABEL_43;
          }
        }

        v85 = v27;
        goto LABEL_65;
      }

      v37 = v119;
      if (qword_1EC75C008 != -1)
      {
        swift_once();
      }

      v99 = sub_1D3276F80();
      __swift_project_value_buffer(v99, qword_1EC760888);
      v44 = sub_1D3276F60();
      v100 = sub_1D3277390();
      if (!os_log_type_enabled(v44, v100))
      {

        v36 = 0;
        v44 = v28;
        goto LABEL_35;
      }

      v101 = swift_slowAlloc();
      *v101 = 0;
      _os_log_impl(&dword_1D311E000, v44, v100, "onRoute did not have a routeMatchLocation", v101, 2u);
      MEMORY[0x1D38B6000](v101, -1, -1);

LABEL_34:
      v36 = 0;
      goto LABEL_35;
    }

LABEL_29:
    if (qword_1EC75C008 != -1)
    {
      swift_once();
    }

    v71 = sub_1D3276F80();
    __swift_project_value_buffer(v71, qword_1EC760888);
    v44 = sub_1D3276F60();
    v72 = sub_1D3277390();
    v73 = os_log_type_enabled(v44, v72);
    v37 = v119;
    if (v73)
    {
      v74 = swift_slowAlloc();
      *v74 = 0;
      _os_log_impl(&dword_1D311E000, v44, v72, "onRoute did not have a MapMatcher.RouteMatch > GEORouteMatch", v74, 2u);
      MEMORY[0x1D38B6000](v74, -1, -1);
    }

    v28 = 0;
    goto LABEL_34;
  }

  v4 = v116;
  v7 = v117;
  v27 = v121;
  v10 = v114;
  if ((a1 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_22:
  v45 = v7;
  [v27 coordinate];
  v47 = v46;
  [v27 coordinate];
  v49 = v48;
  v50 = [v27 altitude];
  v52 = MEMORY[0x1D38B4400](v50, v47, v49, v51);
  v54 = v53;
  v56 = v55;
  [v27 course];
  result = [objc_allocWithZone(MEMORY[0x1E69A24F0]) initWithCoordinateOnRoad:v52 courseOnRoad:{v54, v56, v57}];
  if (result)
  {
    v59 = result;
    v60 = [v27 rawLocation];
    v61 = [objc_allocWithZone(MNLocation) initWithRoadMatch:v59 rawLocation:v60 locationFixType:0];

    if (v61)
    {
      v62 = *(v122 + OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_road);
      if (!v62 || (v63 = [v62 internalRoadName]) == 0)
      {
        v63 = 0;
      }

      [v61 setRoadName_];

      [v61 setRouteMatch_];
      v64 = *(v122 + OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_road);
      if (v64)
      {
        v65 = v64;
        v66 = v4;
        v67 = v61;
        [v67 setSpeedLimit_];
        [v67 setSpeedLimitIsMPH_];
        v68 = [v65 feature];
        v69 = [v68 speedLimitShieldId];

        [v67 setSpeedLimitShieldType_];
        v70 = *(v66 + OBJC_IVAR___MNMapMatcher__route);
      }

      else
      {
        v70 = *(v4 + OBJC_IVAR___MNMapMatcher__route);
        v67 = v61;
      }
    }

    else
    {
      [0 setRouteMatch_];
      if (qword_1EC75C008 != -1)
      {
        swift_once();
      }

      v95 = sub_1D3276F80();
      __swift_project_value_buffer(v95, qword_1EC760888);
      v96 = sub_1D3276F60();
      v97 = sub_1D3277390();
      if (os_log_type_enabled(v96, v97))
      {
        v98 = swift_slowAlloc();
        *v98 = 0;
        _os_log_impl(&dword_1D311E000, v96, v97, "offRoute onRoad did not have a roadMatchLocation", v98, 2u);
        MEMORY[0x1D38B6000](v98, -1, -1);
      }

      v70 = *(v4 + OBJC_IVAR___MNMapMatcher__route);
      v67 = v27;
    }

    v102 = type metadata accessor for MapMatchingResult(0);
    v103 = objc_allocWithZone(v102);
    *&v103[OBJC_IVAR___MNMapMatchingResult_route] = v70;
    v104 = v70;
    v105 = v61;
    v92 = v104;
    result = [v92 uniqueRouteID];
    if (!result)
    {
      goto LABEL_72;
    }

    v106 = result;
    v107 = v115;
    sub_1D3276D60();

    (*(v120 + 32))(&v103[OBJC_IVAR___MNMapMatchingResult_routeID], v107, v45);
    *&v103[OBJC_IVAR___MNMapMatchingResult_location] = v67;
    v103[OBJC_IVAR___MNMapMatchingResult_matchType] = 1;
    v124.receiver = v103;
    v124.super_class = v102;
    v94 = objc_msgSendSuper2(&v124, sel_init);

    goto LABEL_67;
  }

LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
  return result;
}

uint64_t sub_1D3158814(uint64_t a1)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D3158834, 0, 0);
}

uint64_t sub_1D3158834()
{
  v1 = v0[6];
  v0[8] = sub_1D3180018();
  v2 = MEMORY[0x1D38B43F0](v1[2], v1[3], v1[4]);
  v4 = v3;
  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_1D31588FC;
  v6.n128_u64[0] = 20.0;
  v7.n128_f64[0] = v2;
  v8.n128_u64[0] = v4;

  return MEMORY[0x1EEE0B8F0](v7, v8, v6);
}

uint64_t sub_1D31588FC(uint64_t a1)
{
  v2 = *(*v1 + 64);
  *(*v1 + 80) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D3158A18, 0, 0);
}

uint64_t sub_1D3158A18()
{
  v0[5] = 0;
  v1 = v0[10];
  if (v1 >> 62)
  {
    goto LABEL_67;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v3 = v0[10];
  while (v2)
  {
    v55 = v0[6];
    v4 = v1 & 0xC000000000000001;
    swift_beginAccess();
    v5 = 0;
    v6 = 0;
    v53 = v3 + 32;
    v54 = v1 & 0xFFFFFFFFFFFFFF8;
    v7 = -1.0;
    v8 = &selRef__stateTypeForState_;
    v1 = &selRef__stateTypeForState_;
    *&v9 = INFINITY;
    v10 = -1.0;
    v52 = INFINITY;
    while (1)
    {
      v56 = *&v9;
      if (v4)
      {
        v11 = MEMORY[0x1D38B45D0](v5, v0[10]);
      }

      else
      {
        if (v5 >= *(v54 + 16))
        {
          goto LABEL_66;
        }

        v11 = *(v53 + 8 * v5);
      }

      v12 = v11;
      if (__OFADD__(v5++, 1))
      {
        break;
      }

      v57 = v10;
      v14 = v0[6];
      v60 = v14[3];
      v61 = v14[2];
      v59 = v14[4];
      v15 = [v11 v8[446]];
      if (v15)
      {
        v16 = v15;
        if ([v12 coordinateCount])
        {
          if ([v12 coordinateCount] == 1)
          {
            v18 = fmin(GEOCoordinateGet3DDistance(v61, v60, v59, *v16, v16[1], v16[2], 1, v17), INFINITY);
          }

          else
          {
            v18 = INFINITY;
          }

          v19 = [v12 coordinateCount];
          v20 = v19 - 1;
          if (v19 != 1)
          {
            if (!v19)
            {
              goto LABEL_65;
            }

            v21 = v16 + 3;
            v58 = -1.0;
            v22 = 0x7FFFFFFFFFFFFFFFLL;
            while (v20)
            {
              if (!v22)
              {
                goto LABEL_63;
              }

              v23 = *(v21 - 3);
              v24 = *(v21 - 2);
              v25 = *(v21 - 1);
              v26 = v21[1];
              v50 = v60;
              v51 = v59;
              v49 = v61;
              v62 = v21[2];
              v63 = *v21;
              v27 = GEOClosestCoordinateOnLineSegmentFromCoordinate3D();
              v32 = GEOCoordinateGet3DDistance(v61, v60, v59, v29, v30, v31, v27, v28);
              if (v32 < v18)
              {
                v33 = v32;
                MEMORY[0x1D38B43F0](v23, v24, v25);
                MEMORY[0x1D38B43F0](v63, v26, v62);
                GEOBearingFromCoordinateToCoordinate();
                v58 = v34;
                v18 = v33;
              }

              --v22;
              v21 += 3;
              if (!--v20)
              {
                goto LABEL_25;
              }
            }

            __break(1u);
LABEL_63:
            __break(1u);
            break;
          }

          v58 = -1.0;
LABEL_25:
          if ([v12 isDrivable])
          {
            v35 = [v12 isValidTravelDirection];
            v36 = v35;
            v8 = &selRef__stateTypeForState_;
            v37 = v7;
            v10 = v57;
            if (v6)
            {
              if (*(v55 + 104) < 0.0)
              {
                if (v35)
                {
                  if (v18 >= v52)
                  {
                    v36 = 0;
                    v56 = v52;
                    goto LABEL_44;
                  }

LABEL_47:

                  v0[5] = v12;
                  *&v9 = v18;
                  v52 = v18;
                  v7 = v58;
                  v10 = v58;
                  v6 = v12;
                  goto LABEL_5;
                }

                v36 = 0;
LABEL_44:
                [v12 flip];
                GEOWrapAngleDegrees();
                if ([v12 isDrivable])
                {
                  v42 = [v12 isValidTravelDirection];
                  v43 = v42;
                  if (v36)
                  {
                    if ((v42 & 1) == 0)
                    {
                      goto LABEL_60;
                    }

                    goto LABEL_47;
                  }

                  if (*(v55 + 104) < 0.0)
                  {
                    if ((v42 & 1) == 0 || v18 >= v56)
                    {
                      goto LABEL_60;
                    }

                    goto LABEL_47;
                  }
                }

                else
                {
                  if ((v36 & 1) != 0 || *(v55 + 104) < 0.0)
                  {
LABEL_60:

                    *&v9 = v56;
                    v7 = v37;
                    goto LABEL_5;
                  }

                  v43 = 0;
                }

                GEOAngleDifferenceDegrees();
                v45 = v44;
                GEOAngleDifferenceDegrees();
                if ((v43 & 1) == 0)
                {
                  goto LABEL_60;
                }

                if (fabs(v45) >= fabs(v46))
                {
                  v56 = v52;
                  if (v18 >= v52 + -7.4)
                  {
                    goto LABEL_60;
                  }
                }

                else if (v18 >= v52 + 7.4)
                {

                  *&v9 = v52;
                  v7 = v37;
                  goto LABEL_5;
                }

                goto LABEL_47;
              }

LABEL_33:
              GEOAngleDifferenceDegrees();
              v39 = v38;
              GEOAngleDifferenceDegrees();
              if (v36)
              {
                if (fabs(v39) >= fabs(v40))
                {
                  v41 = -7.4;
                }

                else
                {
                  v41 = 7.4;
                }

                if (v18 < v52 + v41)
                {
                  goto LABEL_47;
                }

                v36 = 0;
                v56 = v52;
              }

              else
              {
                v36 = 0;
              }

              v37 = v10;
              goto LABEL_44;
            }

            if (v35)
            {
              goto LABEL_47;
            }
          }

          else
          {
            v8 = &selRef__stateTypeForState_;
            v37 = v7;
            v10 = v57;
            if (v6)
            {
              v36 = 0;
              if (*(v55 + 104) < 0.0)
              {
                goto LABEL_44;
              }

              goto LABEL_33;
            }
          }

          v36 = 1;
          goto LABEL_44;
        }
      }

      *&v9 = v56;
LABEL_5:
      if (v5 == v2)
      {
        goto LABEL_69;
      }
    }

    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    v2 = sub_1D3277660();
    v3 = v0[10];
  }

  v6 = 0;
LABEL_69:

  v47 = v0[1];

  return v47(v6);
}

uint64_t sub_1D3158F7C(double *a1)
{
  if (qword_1EC75C008 != -1)
  {
    swift_once();
  }

  v2 = sub_1D3276F80();
  __swift_project_value_buffer(v2, qword_1EC760888);
  swift_retain_n();
  v3 = sub_1D3276F60();
  v4 = sub_1D3277370();
  if (!os_log_type_enabled(v3, v4))
  {

    goto LABEL_14;
  }

  v94 = v4;
  v5 = swift_slowAlloc();
  v93 = swift_slowAlloc();
  *v5 = 136316162;
  v96 = 0;
  v97 = 0xE000000000000000;
  v98 = v93;
  sub_1D3277310();
  MEMORY[0x1D38B3FE0](8236, 0xE200000000000000);
  sub_1D3277310();
  MEMORY[0x1D38B3FE0](32, 0xE100000000000000);
  sub_1D3277310();
  v6 = sub_1D312BA30(0, 0xE000000000000000, &v98);

  *(v5 + 4) = v6;
  v7 = OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_classicRouteMatch;
  *(v5 + 12) = 2080;
  v8 = GEOPolylineCoordinateAsFullString();

  if (v8)
  {
    v9 = 4271950;
    v10 = sub_1D32770C0();
    v12 = v11;

    v13 = sub_1D312BA30(v10, v12, &v98);

    *(v5 + 14) = v13;
    *(v5 + 22) = 2080;
    if (*(a1 + v7))
    {
      v96 = 0;
      v97 = 0xE000000000000000;
      sub_1D3277310();
      MEMORY[0x1D38B3FE0](8236, 0xE200000000000000);
      sub_1D3277310();
      MEMORY[0x1D38B3FE0](32, 0xE100000000000000);
      sub_1D3277310();
      v14 = 0;
      v15 = 0xE000000000000000;
    }

    else
    {
      v15 = 0xE300000000000000;
      v14 = 4271950;
    }

    v16 = sub_1D312BA30(v14, v15, &v98);

    *(v5 + 24) = v16;
    *(v5 + 32) = 2080;
    v17 = OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_connectedRouteMatch;
    v18 = GEOPolylineCoordinateAsFullString();

    if (v18)
    {
      v20 = sub_1D32770C0();
      v22 = v21;

      v23 = sub_1D312BA30(v20, v22, &v98);

      *(v5 + 34) = v23;
      *(v5 + 42) = 2080;
      if (*(a1 + v17))
      {
        v96 = 0;
        v97 = 0xE000000000000000;
        sub_1D3277310();
        MEMORY[0x1D38B3FE0](8236, 0xE200000000000000);
        sub_1D3277310();
        MEMORY[0x1D38B3FE0](32, 0xE100000000000000);
        sub_1D3277310();
        v9 = 0;
        v24 = 0xE000000000000000;
      }

      else
      {
        v24 = 0xE300000000000000;
      }

      v25 = sub_1D312BA30(v9, v24, &v98);

      *(v5 + 44) = v25;
      _os_log_impl(&dword_1D311E000, v3, v94, "%s - Classic RM  [%s] %s - Connected RM [%s] %s", v5, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x1D38B6000](v93, -1, -1);
      MEMORY[0x1D38B6000](v5, -1, -1);

LABEL_14:
      v26 = *(a1 + OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_classicRouteMatch);
      if (v26)
      {
        v27 = *(a1 + OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_connectedRouteMatch);
        if (v27)
        {
          if (a1[13] < 0.0)
          {

            v28 = sub_1D3276F60();
            v29 = sub_1D3277390();
            if (os_log_type_enabled(v28, v29))
            {
              v30 = swift_slowAlloc();
              *v30 = 0;
              _os_log_impl(&dword_1D311E000, v28, v29, "Using Classic Route Match. User has no course.", v30, 2u);
              MEMORY[0x1D38B6000](v30, -1, -1);

LABEL_39:

              return 0;
            }

LABEL_84:

            return 0;
          }

          GEOAngleDifferenceDegrees();
          v38 = fabs(v37);
          GEOAngleDifferenceDegrees();
          v40 = fabs(v39);

          v41 = sub_1D3276F60();
          v42 = sub_1D3277390();

          if (os_log_type_enabled(v41, v42))
          {
            v43 = swift_slowAlloc();
            v44 = swift_slowAlloc();
            *v43 = 136315650;
            v96 = 0;
            v97 = 0xE000000000000000;
            v98 = v44;
            sub_1D3277310();
            MEMORY[0x1D38B3FE0](8236, 0xE200000000000000);
            sub_1D3277310();
            MEMORY[0x1D38B3FE0](32, 0xE100000000000000);
            sub_1D3277310();
            v45 = sub_1D312BA30(0, 0xE000000000000000, &v98);

            *(v43 + 4) = v45;
            *(v43 + 12) = 2048;
            *(v43 + 14) = v38;
            *(v43 + 22) = 2048;
            *(v43 + 24) = v40;
            _os_log_impl(&dword_1D311E000, v41, v42, "%s - Classic RM CD %f Connected RM CD %f", v43, 0x20u);
            __swift_destroy_boxed_opaque_existential_0(v44);
            MEMORY[0x1D38B6000](v44, -1, -1);
            MEMORY[0x1D38B6000](v43, -1, -1);
          }

          v46 = a1[14];

          v47 = sub_1D3276F60();
          v48 = sub_1D3277370();

          if (os_log_type_enabled(v47, v48))
          {
            v49 = swift_slowAlloc();
            v50 = swift_slowAlloc();
            v96 = v50;
            *v49 = 136315138;
            v51 = a1[14];
            if (v51 >= v38)
            {
              v52 = 0x656469736E69;
            }

            else
            {
              v52 = 0x6564697374756FLL;
            }

            if (v51 >= v38)
            {
              v53 = 0xE600000000000000;
            }

            else
            {
              v53 = 0xE700000000000000;
            }

            v54 = sub_1D312BA30(v52, v53, &v96);

            *(v49 + 4) = v54;
            _os_log_impl(&dword_1D311E000, v47, v48, "Classic RM %s course accuracy", v49, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v50);
            MEMORY[0x1D38B6000](v50, -1, -1);
            MEMORY[0x1D38B6000](v49, -1, -1);
          }

          v55 = v46 < v38 && v40 <= a1[14];

          v56 = sub_1D3276F60();
          v57 = sub_1D3277370();

          if (os_log_type_enabled(v56, v57))
          {
            v58 = swift_slowAlloc();
            v59 = swift_slowAlloc();
            v96 = v59;
            *v58 = 136315138;
            v60 = a1[14];
            if (v60 >= v40)
            {
              v61 = 0x656469736E69;
            }

            else
            {
              v61 = 0x6564697374756FLL;
            }

            if (v60 >= v40)
            {
              v62 = 0xE600000000000000;
            }

            else
            {
              v62 = 0xE700000000000000;
            }

            v63 = sub_1D312BA30(v61, v62, &v96);

            *(v58 + 4) = v63;
            _os_log_impl(&dword_1D311E000, v56, v57, "Connected RM %s course accuracy", v58, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v59);
            MEMORY[0x1D38B6000](v59, -1, -1);
            MEMORY[0x1D38B6000](v58, -1, -1);
          }

          v64 = a1[11];
          v65 = v64 + sub_1D315E5E0(a1) + 1.85 + 20.0;
          BOOL = GEOConfigGetBOOL();
          v67 = BOOL & v55;
          if ((BOOL & 1) == 0 && v55)
          {
            v67 = *(v27 + 64) <= v65;
          }

          v68 = sub_1D3276F60();
          v69 = sub_1D3277370();

          if (os_log_type_enabled(v68, v69))
          {
            v70 = swift_slowAlloc();
            v71 = swift_slowAlloc();
            v96 = v71;
            *v70 = 136315906;
            if (BOOL)
            {
              v72 = 0xD00000000000001ELL;
            }

            else
            {
              v72 = 0;
            }

            if (BOOL)
            {
              v73 = 0x80000001D328F2F0;
            }

            else
            {
              v73 = 0xE000000000000000;
            }

            v74 = v67;
            v75 = sub_1D312BA30(v72, v73, &v96);

            *(v70 + 4) = v75;
            *(v70 + 12) = 2048;
            v76 = *(v27 + 64);
            *(v70 + 14) = v76;
            *(v70 + 22) = 2080;
            if (v76 <= v65)
            {
              v77 = 0x656469736E69;
            }

            else
            {
              v77 = 0x6564697374756FLL;
            }

            if (v76 <= v65)
            {
              v78 = 0xE600000000000000;
            }

            else
            {
              v78 = 0xE700000000000000;
            }

            v79 = sub_1D312BA30(v77, v78, &v96);

            *(v70 + 24) = v79;
            v67 = v74;
            *(v70 + 32) = 2048;
            *(v70 + 34) = v65;
            _os_log_impl(&dword_1D311E000, v68, v69, "%sConnected RM distance %fm %s buffer %fm", v70, 0x2Au);
            swift_arrayDestroy();
            MEMORY[0x1D38B6000](v71, -1, -1);
            MEMORY[0x1D38B6000](v70, -1, -1);
          }

          [*(v95 + OBJC_IVAR___MNMapMatcher__route) distanceBetweenRouteCoordinate:*(v26 + 16) andRouteCoordinate:*(v27 + 16)];
          v81 = v80;
          v82 = fabs(v80);
          if (v82 >= 5.0)
          {
            v83 = v67;
          }

          else
          {
            v83 = 0;
          }

          v84 = sub_1D3276F60();
          v85 = sub_1D3277370();
          if (os_log_type_enabled(v84, v85))
          {
            v86 = swift_slowAlloc();
            v87 = swift_slowAlloc();
            v96 = v87;
            *v86 = 136315394;
            if (v81 >= 0.0)
            {
              v88 = 0x6461656861;
            }

            else
            {
              v88 = 0x646E69686562;
            }

            if (v81 >= 0.0)
            {
              v89 = 0xE500000000000000;
            }

            else
            {
              v89 = 0xE600000000000000;
            }

            v90 = sub_1D312BA30(v88, v89, &v96);

            *(v86 + 4) = v90;
            *(v86 + 12) = 2048;
            *(v86 + 14) = v82;
            _os_log_impl(&dword_1D311E000, v84, v85, "Connected RM %s Classic RM along route by %fm", v86, 0x16u);
            __swift_destroy_boxed_opaque_existential_0(v87);
            MEMORY[0x1D38B6000](v87, -1, -1);
            MEMORY[0x1D38B6000](v86, -1, -1);
          }

          if (!v83)
          {

            goto LABEL_84;
          }

          v28 = sub_1D3276F60();
          v91 = sub_1D3277370();
          if (!os_log_type_enabled(v28, v91))
          {

            return 1;
          }

          v92 = swift_slowAlloc();
          *v92 = 0;
          _os_log_impl(&dword_1D311E000, v28, v91, "Using Connected Route Match. Connected RM has closer bearing to user course", v92, 2u);
          MEMORY[0x1D38B6000](v92, -1, -1);

LABEL_81:

          return 1;
        }

        v28 = sub_1D3276F60();
        v32 = sub_1D3277390();
        if (!os_log_type_enabled(v28, v32))
        {
          goto LABEL_39;
        }

        v35 = swift_slowAlloc();
        *v35 = 0;
        v36 = "Using Classic Route Match. No Connected Route Match.";
      }

      else
      {
        v31 = *(a1 + OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_connectedRouteMatch);
        v28 = sub_1D3276F60();
        v32 = sub_1D3277390();
        v33 = os_log_type_enabled(v28, v32);
        if (v31)
        {
          if (v33)
          {
            v34 = swift_slowAlloc();
            *v34 = 0;
            _os_log_impl(&dword_1D311E000, v28, v32, "Using Connected Route Match. No Classic Route Match.", v34, 2u);
            MEMORY[0x1D38B6000](v34, -1, -1);
          }

          goto LABEL_81;
        }

        if (!v33)
        {
          goto LABEL_39;
        }

        v35 = swift_slowAlloc();
        *v35 = 0;
        v36 = "No Classic/Connected Route Match.";
      }

      _os_log_impl(&dword_1D311E000, v28, v32, v36, v35, 2u);
      MEMORY[0x1D38B6000](v35, -1, -1);
      goto LABEL_39;
    }
  }

  else
  {

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D3159DE4(uint64_t a1, uint64_t a2)
{
  v3[14] = a2;
  v3[15] = v2;
  v3[13] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D3159E08, 0, 0);
}

void sub_1D3159E08()
{
  v65 = v0;
  v9 = v0[14];
  v8 = v0[15];
  v10 = OBJC_IVAR___MNMapMatcher__locationHistory;
  swift_beginAccess();
  v12 = v9 + 1;
  if (__OFADD__(v9, 1))
  {
    __break(1u);
    goto LABEL_63;
  }

  if (v12 < 0)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v8 = *(v8 + v10);
  v11 = v8 & 0xFFFFFFFFFFFFFF8;
  v1 = v8 >> 62;
  if (!(v8 >> 62))
  {
    v13 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13 >= v12)
    {
      v14 = v9 + 1;
    }

    else
    {
      v14 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v9 == -1)
    {
      v15 = 0;
    }

    else
    {
      v15 = v14;
    }

    if (v13 >= v15)
    {
      goto LABEL_11;
    }

LABEL_77:
    __break(1u);
LABEL_78:
    swift_once();
    goto LABEL_36;
  }

LABEL_64:
  if (v8 < 0)
  {
    v10 = v8;
  }

  else
  {
    v10 = v11;
  }

  v9 = sub_1D3277660();
  if (sub_1D3277660() < 0)
  {
    goto LABEL_84;
  }

  if (v9 >= v12)
  {
    v61 = v12;
  }

  else
  {
    v61 = v9;
  }

  if (v9 < 0)
  {
    v61 = v12;
  }

  if (v12)
  {
    v15 = v61;
  }

  else
  {
    v15 = 0;
  }

  if (sub_1D3277660() < v15)
  {
    goto LABEL_77;
  }

LABEL_11:
  if ((v8 & 0xC000000000000001) != 0)
  {
    swift_bridgeObjectRetain_n();
    if (v15)
    {
      _s14RecentLocationCMa(0);
      v16 = 0;
      do
      {
        v17 = v16 + 1;
        sub_1D3277700();
        v16 = v17;
      }

      while (v15 != v17);
    }
  }

  else
  {
    swift_bridgeObjectRetain_n();
  }

  if (v1)
  {
    v19 = sub_1D32777E0();
    v20 = v22;
    v18 = v23;
    v21 = v24;

    if (v21)
    {
      goto LABEL_22;
    }

LABEL_21:
    sub_1D3187B84(v19, v20, v18, v21);
    v26 = v25;
    goto LABEL_28;
  }

  v18 = 0;
  v19 = v8 & 0xFFFFFFFFFFFFFF8;
  v20 = (v8 & 0xFFFFFFFFFFFFFF8) + 32;
  v21 = (2 * v15) | 1;
  if ((v21 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_22:
  sub_1D32778E0();
  swift_unknownObjectRetain_n();
  v27 = swift_dynamicCastClass();
  if (!v27)
  {
    swift_unknownObjectRelease();
    v27 = MEMORY[0x1E69E7CC0];
  }

  v28 = *(v27 + 16);

  if (__OFSUB__(v21 >> 1, v18))
  {
    __break(1u);
    goto LABEL_80;
  }

  if (v28 != (v21 >> 1) - v18)
  {
LABEL_80:
    swift_unknownObjectRelease_n();
    goto LABEL_21;
  }

  v26 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  if (v26)
  {
    goto LABEL_29;
  }

  v26 = MEMORY[0x1E69E7CC0];
LABEL_28:
  swift_unknownObjectRelease();
LABEL_29:
  sub_1D314E6E8(v26, *(v0[15] + OBJC_IVAR___MNMapMatcher__route));
  v10 = v29;
  v0[16] = v29;

  v3 = &OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_connectedRouteMatch;
  if (v10)
  {
    v30 = v0[13];
    v31 = v30[5];
    v32 = v30[6];
    v33 = v30[7];

    sub_1D315AA7C(v34, v31, v32, v33);
    *(v30 + OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_connectedRouteMatch) = v35;

    v36 = sub_1D3158F7C(v30);

    *(v30 + OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_preferConnectedRouteMatch) = v36 & 1;
  }

  v9 = v0[13];
  v2 = OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_preferConnectedRouteMatch;
  v15 = &OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_classicRouteMatch;
  if (*(v9 + OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_preferConnectedRouteMatch))
  {
    v37 = &OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_connectedRouteMatch;
  }

  else
  {
    v37 = &OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_classicRouteMatch;
  }

  if (!*(v9 + *v37))
  {
    goto LABEL_56;
  }

  v7 = *(v9 + 88);
  v4 = sub_1D315E5E0(v0[13]);
  v5 = v7 + v4;
  v6 = -1.85;
  if (qword_1EC75C008 != -1)
  {
    goto LABEL_78;
  }

LABEL_36:
  v38 = v5 + v6;
  v39 = sub_1D3276F80();
  __swift_project_value_buffer(v39, qword_1EC760888);
  swift_retain_n();
  v40 = sub_1D3276F60();
  v41 = sub_1D3277370();
  v42 = os_log_type_enabled(v40, v41);
  v43 = v0[13];
  if (v42)
  {
    v63 = v41;
    v44 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v64 = v62;
    *v44 = 136316674;
    v0[9] = 0;
    v0[10] = 0xE000000000000000;
    sub_1D3277310();
    MEMORY[0x1D38B3FE0](8236, 0xE200000000000000);
    sub_1D3277310();
    MEMORY[0x1D38B3FE0](32, 0xE100000000000000);
    sub_1D3277310();
    v45 = sub_1D312BA30(v0[9], v0[10], &v64);

    *(v44 + 4) = v45;
    *(v44 + 12) = 2080;
    if (*(v9 + v2))
    {
      v46 = 0x657463656E6E6F43;
    }

    else
    {
      v46 = 0x63697373616C43;
    }

    if (*(v9 + v2))
    {
      v47 = 0xE900000000000064;
    }

    else
    {
      v47 = 0xE700000000000000;
    }

    v48 = sub_1D312BA30(v46, v47, &v64);

    *(v44 + 14) = v48;
    *(v44 + 22) = 2080;
    v49 = &OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_classicRouteMatch;
    if (*(v9 + v2))
    {
      v49 = &OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_connectedRouteMatch;
    }

    v50 = *(v43 + *v49);
    v51 = v0[13];
    if (!v50)
    {
      goto LABEL_82;
    }

    v0[11] = 0;
    v0[12] = 0xE000000000000000;
    sub_1D3277310();
    MEMORY[0x1D38B3FE0](8236, 0xE200000000000000);
    sub_1D3277310();
    MEMORY[0x1D38B3FE0](32, 0xE100000000000000);
    sub_1D3277310();
    v52 = sub_1D312BA30(v0[11], v0[12], &v64);

    *(v44 + 24) = v52;
    *(v44 + 32) = 2048;
    v53 = &OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_classicRouteMatch;
    v3 = &OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_connectedRouteMatch;
    if (*(v9 + v2))
    {
      v53 = &OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_connectedRouteMatch;
    }

    v54 = *(v51 + *v53);
    if (!v54)
    {
      goto LABEL_83;
    }

    v55 = *(v54 + 64);

    *(v44 + 34) = v55;
    *(v44 + 42) = 2048;
    *(v44 + 44) = v38;
    *(v44 + 52) = 2048;
    *(v44 + 54) = v7;
    *(v44 + 62) = 2048;
    *(v44 + 64) = v4;
    _os_log_impl(&dword_1D311E000, v40, v63, "        %s - Distance from user to %s (active) RM (%s) is %f | Route Match Road's Route Radius (non speed based) = %f = Accuracy (non speed based) %f + Road width %f - MapMatcher._roadMinWidth / 2", v44, 0x48u);
    swift_arrayDestroy();
    MEMORY[0x1D38B6000](v62, -1, -1);
    MEMORY[0x1D38B6000](v44, -1, -1);

    v15 = &OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_classicRouteMatch;
  }

  else
  {
  }

  if (*(v9 + v2))
  {
    v56 = v3;
  }

  else
  {
    v56 = v15;
  }

  v57 = *(v0[13] + *v56);
  if (!v57)
  {
    __break(1u);
LABEL_82:

    __break(1u);
LABEL_83:

    __break(1u);
LABEL_84:
    __break(1u);
    return;
  }

  if (v38 < *(v57 + 64))
  {
LABEL_56:
    v58 = swift_task_alloc();
    v0[17] = v58;
    *v58 = v0;
    v58[1] = sub_1D315A5E4;
    v59 = v0[14];

    sub_1D315AD68(v59, v10);
    return;
  }

  v60 = v0[1];

  v60(3);
}

uint64_t sub_1D315A5E4(__int16 a1)
{
  *(*v1 + 144) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D315A6E4, 0, 0);
}

uint64_t sub_1D315A6E4()
{
  v16 = v0;
  if (qword_1EC75C008 != -1)
  {
    swift_once();
  }

  v1 = sub_1D3276F80();
  __swift_project_value_buffer(v1, qword_1EC760888);

  v2 = sub_1D3276F60();
  v3 = sub_1D3277370();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v15 = v5;
    *v4 = 136315138;
    *(v0 + 56) = 0;
    *(v0 + 64) = 0xE000000000000000;
    sub_1D3277310();
    MEMORY[0x1D38B3FE0](8236, 0xE200000000000000);
    sub_1D3277310();
    MEMORY[0x1D38B3FE0](32, 0xE100000000000000);
    sub_1D3277310();
    v6 = sub_1D312BA30(*(v0 + 56), *(v0 + 64), &v15);

    *(v4 + 4) = v6;
    _os_log_impl(&dword_1D311E000, v2, v3, "%s - Finished running shape match", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x1D38B6000](v5, -1, -1);
    MEMORY[0x1D38B6000](v4, -1, -1);
  }

  if (*(v0 + 144))
  {

    v7 = sub_1D3276F60();
    v8 = sub_1D3277370();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v15 = v10;
      *v9 = 136315138;
      *(v0 + 40) = 0;
      *(v0 + 48) = 0xE000000000000000;
      sub_1D3277310();
      MEMORY[0x1D38B3FE0](8236, 0xE200000000000000);
      sub_1D3277310();
      MEMORY[0x1D38B3FE0](32, 0xE100000000000000);
      sub_1D3277310();
      v11 = sub_1D312BA30(*(v0 + 40), *(v0 + 48), &v15);

      *(v9 + 4) = v11;
      _os_log_impl(&dword_1D311E000, v7, v8, "%s - Strong recommendation from shape match", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x1D38B6000](v10, -1, -1);
      MEMORY[0x1D38B6000](v9, -1, -1);
    }

    v12 = *(v0 + 145);
  }

  else
  {

    v12 = 3;
  }

  v13 = *(v0 + 8);

  return v13(v12);
}

double sub_1D315AA7C(uint64_t a1, double a2, double a3, double a4)
{
  v9 = *(a1 + 120);
  v10 = *(a1 + 124);
  v11 = *(v4 + OBJC_IVAR___MNMapMatcher__route);
  v12 = [v11 routeCoordinateForDistance:v9 | (v10 << 32) beforeRouteCoordinate:100.0];
  v13 = [v11 routeCoordinateForDistance:v12 afterRouteCoordinate:200.0];
  v14 = sub_1D318011C();
  v15 = [v14 matchedSegmentsFromStart:v12 toEnd:v13];

  if (v15)
  {
    sub_1D315E9C4();
    v16 = sub_1D32771A0();
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  v17 = OBJC_IVAR___MNMapMatcher__matchedPathSegmentsOnRoute;
  *(v4 + OBJC_IVAR___MNMapMatcher__matchedPathSegmentsOnRoute) = v16;

  v19 = *(a1 + 96);
  v20 = *(a1 + 104);
  v38 = *(a1 + 88);
  v21 = MEMORY[0x1D38B43F0](v18);
  v23 = v22;
  v24 = MEMORY[0x1D38B43F0](a2, a3, a4);
  Distance = GEOCoordinateGetDistance(v21, v23, v24, v25);
  v27 = [v11 stepAtIndex_];
  GEOWrapAngleDegrees();
  v29 = v28;
  v30 = *(v4 + v17);
  if (v30 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D3277660())
  {

    if (!i)
    {
      break;
    }

    v32 = 0;
    while (1)
    {
      if ((v30 & 0xC000000000000001) != 0)
      {
        v33 = MEMORY[0x1D38B45D0](v32, v30);
      }

      else
      {
        if (v32 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v33 = *(v30 + 8 * v32 + 32);
      }

      v34 = v33;
      v35 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      [v33 range];
      if (sub_1D3277590())
      {

        goto LABEL_18;
      }

      ++v32;
      if (v35 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

LABEL_16:

  v34 = 0;
LABEL_18:
  _s10RouteMatchCMa();
  v36 = swift_allocObject();
  *(v36 + 16) = v9;
  *(v36 + 20) = v10;
  result = v38;
  *(v36 + 32) = v38;
  *(v36 + 40) = v19;
  *(v36 + 48) = v20;
  *(v36 + 56) = v29;
  *(v36 + 64) = Distance;
  *(v36 + 24) = v27;
  *(v36 + 72) = v34;
  return result;
}

uint64_t sub_1D315AD68(uint64_t a1, uint64_t a2)
{
  v3[89] = v2;
  v3[88] = a2;
  v3[87] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D315AD90, 0, 0);
}

uint64_t sub_1D315AD90()
{
  v5 = v0[89];
  v6 = OBJC_IVAR___MNMapMatcher__locationHistory;
  v0[90] = OBJC_IVAR___MNMapMatcher__locationHistory;
  swift_beginAccess();
  v7 = *(v5 + v6);
  v8 = v0[87];
  if ((v7 & 0xC000000000000001) != 0)
  {
    goto LABEL_68;
  }

  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_70;
  }

  if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) <= v8)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v9 = *(v7 + 8 * v8 + 32);

  while (1)
  {
    v0[91] = v9;
    v3 = &OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_connectedRouteMatch;
    v10 = *(v9 + OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_preferConnectedRouteMatch) ? &OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_connectedRouteMatch : &OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_classicRouteMatch;
    v11 = *(v9 + *v10);
    v66 = v6;
    if (!v11)
    {
      break;
    }

    v12 = *(v9 + 16);
    v13 = *(v9 + 24);
    v14 = *(v9 + 32);

    v16 = MEMORY[0x1D38B43E0](v15, v12, v13, v14);
    v18 = v17;
    v19 = MEMORY[0x1D38B43E0](v11[4], v11[5], v11[6]);
    if (*(v9 + 88) >= GEOCoordinateGetDistance(v16, v18, v19, v20))
    {
LABEL_31:

      break;
    }

    v64 = v0;
    v65 = v5;
    v8 = *(v5 + v6);
    v0 = (v8 & 0xFFFFFFFFFFFFFF8);
    if (v8 >> 62)
    {
      v6 = sub_1D3277660();
    }

    else
    {
      v6 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v7 = v8 & 0xC000000000000001;

    v1 = 0;
    v5 = 0;
    v3 = &OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_classicRouteMatch;
    while (1)
    {
      if (v6 == v1)
      {

        v48 = *(v65 + v66);
        if (v48 >> 62)
        {
          v49 = sub_1D3277660();
        }

        else
        {
          v49 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v3 = &OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_connectedRouteMatch;
        v0 = v64;
        v50 = v49;
        if (qword_1EC75C008 != -1)
        {
          swift_once();
        }

        v51 = v64[89];
        v52 = v5 / v50;
        v53 = sub_1D3276F80();
        __swift_project_value_buffer(v53, qword_1EC760888);
        v54 = v51;
        v55 = sub_1D3276F60();
        v1 = sub_1D3277370();
        if (os_log_type_enabled(v55, v1))
        {
          v56 = swift_slowAlloc();
          *v56 = 134218496;
          *(v56 + 4) = v52 * 100.0;
          *(v56 + 12) = 2048;
          *(v56 + 14) = v5;
          *(v56 + 22) = 2048;
          v5 = v65;
          v57 = *(v65 + v66);
          if (v57 >> 62)
          {
            v63 = v56;
            v58 = sub_1D3277660();
            v56 = v63;
          }

          else
          {
            v58 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v59 = v64[89];
          *(v56 + 24) = v58;
          v2 = v56;

          _os_log_impl(&dword_1D311E000, v55, v1, "%f%% (%ld/%ld) recent locations are out of route match road range", v2, 0x20u);
          MEMORY[0x1D38B6000](v2, -1, -1);
        }

        else
        {

          v5 = v65;
        }

        if (v52 >= 0.5)
        {
          v60 = sub_1D3276F60();
          v61 = sub_1D3277370();
          if (os_log_type_enabled(v60, v61))
          {
            v1 = swift_slowAlloc();
            *v1 = 0;
            _os_log_impl(&dword_1D311E000, v60, v61, "Preferring road match as start point of connected road similarity search", v1, 2u);
            MEMORY[0x1D38B6000](v1, -1, -1);
          }

          else
          {
          }

          LOBYTE(v8) = 1;
          v6 = v66;
        }

        else
        {

          LOBYTE(v8) = 0;
          v6 = v66;
        }

        goto LABEL_33;
      }

      if (!v7)
      {
        break;
      }

      v2 = MEMORY[0x1D38B45D0](v1, v8);
      if (__OFADD__(v1, 1))
      {
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

LABEL_19:
      v4 = OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_preferConnectedRouteMatch;
      if (*(v2 + OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_preferConnectedRouteMatch))
      {
        v26 = &OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_connectedRouteMatch;
      }

      else
      {
        v26 = &OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_classicRouteMatch;
      }

      if (*(v2 + *v26))
      {
        result = MEMORY[0x1D38B43E0](*(v2 + 16), *(v2 + 24), *(v2 + 32));
        if (*(v2 + v4))
        {
          v30 = &OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_connectedRouteMatch;
        }

        else
        {
          v30 = &OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_classicRouteMatch;
        }

        v31 = *(v2 + *v30);
        if (!v31)
        {
          __break(1u);
          return result;
        }

        v32 = v28;
        v33 = v29;
        v34 = MEMORY[0x1D38B43E0](result, v31[4], v31[5], v31[6]);
        Distance = GEOCoordinateGetDistance(v32, v33, v34, v35);
      }

      else
      {
        Distance = INFINITY;
      }

      v22 = *(v2 + 88);
      v23 = sub_1D315E5E0(v2);

      v24 = v22 + v23 + -1.85 < Distance;
      ++v1;
      v25 = __OFADD__(v5, v24);
      v5 += v24;
      if (v25)
      {
        goto LABEL_67;
      }
    }

    if (v1 < *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v2 = *(v8 + 8 * v1 + 32);

      if (__OFADD__(v1, 1))
      {
        goto LABEL_30;
      }

      goto LABEL_19;
    }

    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:

    v9 = MEMORY[0x1D38B45D0](v8, v7);
  }

  LOBYTE(v8) = 0;
LABEL_33:
  v36 = v0[87];
  v7 = v36 + 1;
  if (__OFADD__(v36, 1))
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v4 = v5;
  v37 = *(v5 + v6);

  v6 = sub_1D315E880(v7, v37, v38);
  v7 = v39;
  v1 = v40;
  v2 = v41;

  if (v2)
  {
    sub_1D32778E0();
    swift_unknownObjectRetain_n();
    v43 = swift_dynamicCastClass();
    if (!v43)
    {
      swift_unknownObjectRelease();
      v43 = MEMORY[0x1E69E7CC0];
    }

    v44 = *(v43 + 16);

    if (__OFSUB__(v2 >> 1, v1))
    {
      goto LABEL_79;
    }

    if (v44 != (v2 >> 1) - v1)
    {
      goto LABEL_80;
    }

    v7 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    v3 = &OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_connectedRouteMatch;
    if (v7)
    {
      goto LABEL_43;
    }

    v7 = MEMORY[0x1E69E7CC0];
    goto LABEL_42;
  }

  while (1)
  {
    sub_1D3187B84(v6, v7, v1, v2);
    v7 = v42;
LABEL_42:
    swift_unknownObjectRelease();
LABEL_43:
    v0[92] = v7;
    v6 = *(v4 + v66);
    if (v6 >> 62)
    {
LABEL_72:
      if (!sub_1D3277660())
      {
LABEL_73:
        v47 = 0;
        goto LABEL_74;
      }
    }

    else if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_73;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v45 = *(v6 + 32);

      goto LABEL_48;
    }

    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    swift_unknownObjectRelease();
    v3 = &OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_connectedRouteMatch;
  }

  v45 = MEMORY[0x1D38B45D0](0, v6);

LABEL_48:
  v46 = &OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_classicRouteMatch;
  if (*(v45 + OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_preferConnectedRouteMatch))
  {
    v46 = v3;
  }

  v47 = *(v45 + *v46);

LABEL_74:
  v0[93] = v47;
  v62 = swift_task_alloc();
  v0[94] = v62;
  *v62 = v0;
  v62[1] = sub_1D315B500;

  return sub_1D3176AA0(v7, v47, v8);
}

uint64_t sub_1D315B500(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 760) = a1;
  *(v3 + 768) = a2;

  return MEMORY[0x1EEE6DFA0](sub_1D315B640, 0, 0);
}

void sub_1D315B640()
{
  v188 = v0;
  v4 = v0;
  if (qword_1EC75C008 != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 712);
  v6 = sub_1D3276F80();
  v7 = __swift_project_value_buffer(v6, qword_1EC760888);
  v8 = v5;
  v9 = sub_1D3276F60();
  v10 = sub_1D3277370();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = *(v0 + 720);
    v12 = *(v0 + 712);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v187 = v14;
    *v13 = 136315138;
    v15 = *(v12 + v11);
    if (v15 >> 62)
    {
      if (sub_1D3277660())
      {
        goto LABEL_6;
      }
    }

    else if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_6:
      if ((v15 & 0xC000000000000001) != 0)
      {

        v16 = MEMORY[0x1D38B45D0](0, v15);
      }

      else
      {
        if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_35;
        }

        v16 = *(v15 + 32);
      }

      v2 = *(v16 + 16);
      v3 = *(v16 + 32);

      *(v4 + 680) = 0;
      *(v4 + 688) = 0xE000000000000000;
      sub_1D3277310();
      MEMORY[0x1D38B3FE0](8236, 0xE200000000000000);
      sub_1D3277310();
      MEMORY[0x1D38B3FE0](32, 0xE100000000000000);
      sub_1D3277310();
      v17 = *(v4 + 680);
      v18 = *(v4 + 688);
      goto LABEL_12;
    }

    v18 = 0xE300000000000000;
    v17 = 4271950;
LABEL_12:
    v19 = sub_1D312BA30(v17, v18, &v187);

    *(v13 + 4) = v19;
    _os_log_impl(&dword_1D311E000, v9, v10, "%s - Similarity results", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x1D38B6000](v14, -1, -1);
    MEMORY[0x1D38B6000](v13, -1, -1);
  }

  v13 = *(v4 + 704);

  v20 = sub_1D3276F60();
  v21 = sub_1D3277370();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = *(v4 + 704);
    v10 = swift_slowAlloc();
    *v10 = 134217984;
    if (v22)
    {
      v23 = *(v13 + 64);
      v24 = *(v13 + 80);
      v25 = *(v13 + 112);
      *(v4 + 48) = *(v13 + 96);
      *(v4 + 64) = v25;
      *(v4 + 16) = v23;
      *(v4 + 32) = v24;
      sub_1D314B39C(v4 + 16, v4 + 592);
      sub_1D314A9DC();
      v2 = v26;
      sub_1D314B3D4(v4 + 16);
    }

    else
    {
      v2 = -1.0;
    }

    *(v10 + 4) = v2;
    _os_log_impl(&dword_1D311E000, v20, v21, "Route similarity %f", v10, 0xCu);
    MEMORY[0x1D38B6000](v10, -1, -1);
  }

  v27 = sub_1D3276F60();
  v28 = sub_1D3277370();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_1D311E000, v27, v28, "Connected Similarity results", v29, 2u);
    MEMORY[0x1D38B6000](v29, -1, -1);
  }

  v30 = *(v4 + 768);
  v31 = *(v4 + 760);

  v14 = sub_1D3276F60();
  v1 = sub_1D3277370();
  v185 = v31;

  v183 = v30;
  v184 = v4;
  if (!os_log_type_enabled(v14, v1))
  {

    goto LABEL_47;
  }

  v181 = v7;
  v15 = 0x656D616E206F6ELL;
  v32 = *(v4 + 760);
  v28 = v4;
  v4 = swift_slowAlloc();
  v7 = swift_slowAlloc();
  v187 = v7;
  *v4 = 136315394;
  if (!v32)
  {
    v39 = sub_1D312BA30(0x656D616E206F6ELL, 0xE700000000000000, &v187);

    *(v4 + 4) = v39;
    *(v4 + 12) = 2048;
    goto LABEL_45;
  }

  v33 = *(v28 + 760);
  v12 = v33 >> 62;
  if (v33 >> 62)
  {
    if (!sub_1D3277660())
    {
      goto LABEL_37;
    }
  }

  else if (!*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_37;
  }

  v34 = *(v184 + 760);
  if ((v34 & 0xC000000000000001) != 0)
  {
LABEL_35:
    v36 = *(MEMORY[0x1D38B45D0](0, v185) + 16);
    if (v36)
    {
      goto LABEL_27;
    }

LABEL_36:

    goto LABEL_37;
  }

  if (!*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_221;
  }

  v35 = *(v185 + 32);

  v36 = *(v35 + 16);
  if (!v36)
  {
    goto LABEL_36;
  }

LABEL_27:
  v10 = v36;

  v37 = [v10 internalRoadName];

  if (v37)
  {
    v15 = sub_1D32770C0();
    v28 = v38;

    goto LABEL_38;
  }

LABEL_37:
  v28 = 0xE700000000000000;
LABEL_38:
  v40 = *(v184 + 760);
  v15 = sub_1D312BA30(v15, v28, &v187);

  *(v4 + 4) = v15;
  *(v4 + 12) = 2048;
  if (!v12)
  {
    v41 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v30 = v183;
    if (v41)
    {
      goto LABEL_40;
    }

LABEL_45:
    v2 = -1.0;
    goto LABEL_46;
  }

  v30 = v183;
  if (!sub_1D3277660())
  {
    goto LABEL_45;
  }

LABEL_40:
  v42 = *(v184 + 760);
  if ((v42 & 0xC000000000000001) != 0)
  {
    v43 = MEMORY[0x1D38B45D0](0, v185);
    goto LABEL_43;
  }

  if (!*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_221:
    __break(1u);
LABEL_222:
    __break(1u);
    goto LABEL_223;
  }

  v43 = *(v185 + 32);

LABEL_43:
  v44 = v43[4];
  v45 = v43[5];
  v46 = v43[7];
  *(v184 + 112) = v43[6];
  *(v184 + 128) = v46;
  *(v184 + 80) = v44;
  *(v184 + 96) = v45;
  sub_1D314B39C(v184 + 80, v184 + 528);

  sub_1D314A9DC();
  v2 = v47;
  sub_1D314B3D4(v184 + 80);
LABEL_46:
  *(v4 + 14) = v2;
  _os_log_impl(&dword_1D311E000, v14, v1, "- Best Match: %s %f", v4, 0x16u);
  __swift_destroy_boxed_opaque_existential_0(v7);
  MEMORY[0x1D38B6000](v7, -1, -1);
  MEMORY[0x1D38B6000](v4, -1, -1);

  v4 = v184;
  v7 = v181;
LABEL_47:

  v48 = sub_1D3276F60();
  v49 = sub_1D3277370();

  if (os_log_type_enabled(v48, v49))
  {
    v10 = v7;
    v50 = *(v4 + 768);
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v187 = v52;
    *v51 = 136315394;
    if (v50)
    {
      v53 = 0x656D616E206F6ELL;
      v54 = *(v30 + 16);
      if (v54 && (v55 = [v54 internalRoadName]) != 0)
      {
        v56 = v55;
        v53 = sub_1D32770C0();
        v28 = v57;

        v30 = v183;
      }

      else
      {
        v28 = 0xE700000000000000;
      }

      v65 = sub_1D312BA30(v53, v28, &v187);

      *(v51 + 4) = v65;
      *(v51 + 12) = 2048;
      v66 = *(v30 + 64);
      v67 = *(v30 + 80);
      v68 = *(v30 + 112);
      *(v184 + 176) = *(v30 + 96);
      *(v184 + 192) = v68;
      *(v184 + 144) = v66;
      *(v184 + 160) = v67;
      sub_1D314B39C(v184 + 144, v184 + 464);
      sub_1D314A9DC();
      v2 = v69;
      sub_1D314B3D4(v184 + 144);
    }

    else
    {
      v70 = sub_1D312BA30(0x656D616E206F6ELL, 0xE700000000000000, &v187);

      *(v51 + 4) = v70;
      *(v51 + 12) = 2048;
      v2 = -1.0;
    }

    *(v51 + 14) = v2;
    _os_log_impl(&dword_1D311E000, v48, v49, "- Route: %s %f", v51, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v52);
    MEMORY[0x1D38B6000](v52, -1, -1);
    MEMORY[0x1D38B6000](v51, -1, -1);

    v4 = v184;
    v7 = v10;
    v14 = *(v184 + 760);
    if (!v14)
    {
      goto LABEL_62;
    }
  }

  else
  {

    v14 = *(v4 + 760);
    if (!v14)
    {
LABEL_62:

      goto LABEL_63;
    }
  }

  v58 = v14 >> 62;
  if (v14 >> 62)
  {
    v59 = sub_1D3277660();
    if (v59 < 1)
    {
      goto LABEL_99;
    }
  }

  else
  {
    v59 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v59 < 1)
    {
LABEL_99:
      v13 = v185;

      goto LABEL_100;
    }
  }

  if (!*(v4 + 704))
  {
    goto LABEL_99;
  }

  v60 = *(v13 + 64);
  v61 = *(v13 + 80);
  v62 = *(v13 + 112);
  *(v4 + 240) = *(v13 + 96);
  *(v4 + 256) = v62;
  *(v4 + 208) = v60;
  *(v4 + 224) = v61;
  v13 = v185;

  sub_1D314B39C(v4 + 208, v4 + 336);
  v15 = v4 + 208;
  sub_1D314A9DC();
  v2 = v63;
  sub_1D314B3D4(v4 + 208);
  if (v58)
  {
    v64 = sub_1D3277660();
  }

  else
  {
    v64 = *((*(v4 + 760) & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v64)
  {
LABEL_208:
    __break(1u);
    goto LABEL_209;
  }

  v73 = *(v4 + 760);
  if ((v73 & 0xC000000000000001) != 0)
  {
LABEL_209:
    v74 = MEMORY[0x1D38B45D0](0, v13);
    goto LABEL_69;
  }

  if (!*((v73 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_211;
  }

  v74 = *(v185 + 32);

LABEL_69:
  v75 = v74[4];
  v76 = v74[5];
  v77 = v74[7];
  *(v4 + 304) = v74[6];
  *(v4 + 320) = v77;
  *(v4 + 272) = v75;
  *(v4 + 288) = v76;
  sub_1D314B39C(v4 + 272, v4 + 400);

  sub_1D314A9DC();
  v79 = v78;
  sub_1D314B3D4(v4 + 272);
  if (v2 <= v79)
  {
    v15 = *(*(v4 + 712) + *(v4 + 720));
    if (!(v15 >> 62))
    {
      if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_72;
      }

      goto LABEL_224;
    }

LABEL_223:
    if (sub_1D3277660())
    {
LABEL_72:
      if ((v15 & 0xC000000000000001) == 0)
      {
        if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_228;
        }

        v80 = *(v15 + 32);

LABEL_75:
        v81 = *(v4 + 720);
        v82 = *(v4 + 712);
        v2 = *(v80 + 88);

        v15 = *(v82 + v81);
        if (v15 >> 62)
        {
          if (sub_1D3277660())
          {
LABEL_77:
            if ((v15 & 0xC000000000000001) == 0)
            {
              if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_232;
              }

              v28 = *(v15 + 32);

LABEL_80:
              v83 = *(v4 + 720);
              v84 = *(v4 + 712);
              v85 = v2 + v2;
              v86 = sub_1D315E5E0(v28);

              if (v85 + v86 + -1.85 <= 20.0)
              {
                v2 = v85 + v86 + -1.85;
              }

              else
              {
                v2 = 20.0;
              }

              v15 = *(v84 + v83);
              if (v15 >> 62)
              {
                if (sub_1D3277660())
                {
LABEL_85:
                  if ((v15 & 0xC000000000000001) == 0)
                  {
                    if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
                    {
                      v87 = *(v15 + 32);

                      goto LABEL_88;
                    }

                    __break(1u);
                    goto LABEL_235;
                  }

LABEL_233:

                  v87 = MEMORY[0x1D38B45D0](0, v15);

LABEL_88:
                  if (*(v87 + OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_preferConnectedRouteMatch))
                  {
                    v88 = &OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_connectedRouteMatch;
                  }

                  else
                  {
                    v88 = &OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_classicRouteMatch;
                  }

                  v89 = *(v87 + *v88);

                  if (v89)
                  {

                    v90 = *(v89 + 64);

                    if (v90 <= v2)
                    {
                      v91 = sub_1D3276F60();
                      v92 = sub_1D3277370();
                      if (os_log_type_enabled(v91, v92))
                      {
                        v93 = swift_slowAlloc();
                        *v93 = 134217984;
                        *(v93 + 4) = v2;
                        _os_log_impl(&dword_1D311E000, v91, v92, "Strong OnRoute due to route similarity better than all the candidate roads and user is within %fm of active route match", v93, 0xCu);
                        MEMORY[0x1D38B6000](v93, -1, -1);
                      }

                      else
                      {
                      }

                      v72 = 2;
                      v71 = 1;
                      goto LABEL_216;
                    }

                    goto LABEL_62;
                  }

                  goto LABEL_348;
                }
              }

              else if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_85;
              }

              __break(1u);
LABEL_232:
              __break(1u);
              goto LABEL_233;
            }

LABEL_229:

            v28 = MEMORY[0x1D38B45D0](0, v15);

            goto LABEL_80;
          }
        }

        else if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_77;
        }

        __break(1u);
LABEL_228:
        __break(1u);
        goto LABEL_229;
      }

LABEL_225:

      v80 = MEMORY[0x1D38B45D0](0, v15);

      goto LABEL_75;
    }

LABEL_224:
    __break(1u);
    goto LABEL_225;
  }

LABEL_100:
  v180 = v59;
  v15 = *(*(v4 + 712) + *(v4 + 720));
  if (v15 >> 62)
  {
    goto LABEL_205;
  }

  if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_157:
    if (v180 >= 1)
    {
      v118 = *(*(v4 + 712) + *(v4 + 720));
      if (v118 >> 62)
      {
        goto LABEL_213;
      }

      if (*((v118 & 0xFFFFFFFFFFFFFF8) + 0x10) > 0)
      {
        goto LABEL_160;
      }
    }

LABEL_214:

    v72 = 2;
    swift_bridgeObjectRelease_n();
    goto LABEL_215;
  }

  while (1)
  {
    if ((v15 & 0xC000000000000001) == 0)
    {
      if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v28 = *(v15 + 32);

        goto LABEL_105;
      }

      __break(1u);
LABEL_213:
      if (sub_1D3277660() <= 0)
      {
        goto LABEL_214;
      }

LABEL_160:
      if (v58)
      {
        v119 = sub_1D3277660();
      }

      else
      {
        v119 = *((*(v4 + 760) & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v119)
      {
        v120 = *(v4 + 760);
        v10 = v120 & 0xC000000000000001;
        if ((v120 & 0xC000000000000001) == 0)
        {
          if (!*((v120 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_239;
          }

LABEL_167:
          v122 = *(v4 + 720);
          v59 = *(v4 + 712);
          v2 = *(v121 + 112);

          v15 = *(v59 + v122);
          if (v15 >> 62)
          {
            if (sub_1D3277660())
            {
LABEL_169:
              if ((v15 & 0xC000000000000001) == 0)
              {
                if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  __break(1u);
                  goto LABEL_242;
                }

                v28 = *(v15 + 32);

                goto LABEL_172;
              }

LABEL_240:

              v28 = MEMORY[0x1D38B45D0](0, v15);

LABEL_172:
              v123 = *(v4 + 712);

              GEOAngleDifferenceDegrees();
              v3 = fabs(v124);
              v125 = v123;
              v15 = sub_1D3276F60();
              v30 = sub_1D3277370();
              if (!os_log_type_enabled(v15, v30))
              {

                goto LABEL_180;
              }

              v59 = *(v4 + 720);
              v28 = *(v4 + 712);
              v13 = swift_slowAlloc();
              *v13 = 134218240;
              *(v13 + 4) = v3;
              *(v13 + 12) = 2048;
              v14 = *(v28 + v59);
              if (v14 >> 62)
              {
                goto LABEL_254;
              }

              if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_255;
              }

              goto LABEL_175;
            }
          }

          else if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_169;
          }

          __break(1u);
LABEL_239:
          __break(1u);
          goto LABEL_240;
        }

LABEL_236:
        v121 = MEMORY[0x1D38B45D0](0, v13);
        goto LABEL_167;
      }

LABEL_235:
      __break(1u);
      goto LABEL_236;
    }

LABEL_211:

    v28 = MEMORY[0x1D38B45D0](0, v15);

LABEL_105:
    if (*(v28 + OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_preferConnectedRouteMatch))
    {
      v94 = &OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_connectedRouteMatch;
    }

    else
    {
      v94 = &OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_classicRouteMatch;
    }

    v59 = *(v28 + *v94);

    if (!v59)
    {
      goto LABEL_157;
    }

    v95 = *(*(v4 + 712) + OBJC_IVAR___MNMapMatcher__route);
    v96 = [v95 routeCoordinateForDistance:*(v59 + 16) beforeRouteCoordinate:100.0];
    v97 = [v95 routeCoordinateForDistance:v96 afterRouteCoordinate:200.0];
    v10 = sub_1D318011C();
    v15 = [v10 matchedSegmentsFromStart:v96 toEnd:v97];

    if (v15)
    {
      sub_1D315E9C4();
      v28 = sub_1D32771A0();
    }

    else
    {
      v28 = MEMORY[0x1E69E7CC0];
    }

    v177 = OBJC_IVAR___MNMapMatcher__matchedPathSegmentsOnRoute;
    v178 = *(v4 + 712);
    *(v178 + OBJC_IVAR___MNMapMatcher__matchedPathSegmentsOnRoute) = v28;

    v30 = v183;
    if (!v58)
    {
      v98 = *((*(v4 + 760) & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v98)
      {
        goto LABEL_156;
      }

      goto LABEL_116;
    }

    v98 = sub_1D3277660();
    if (!v98)
    {
LABEL_156:

      goto LABEL_157;
    }

LABEL_116:
    v99 = 0;
    v100 = *(v4 + 760);
    v175 = v59;
    v176 = v100 & 0xC000000000000001;
    v170 = v13 + 32;
    v171 = v100 & 0xFFFFFFFFFFFFFF8;
    v172 = v98;
    v173 = v58;
    v182 = v7;
    v174 = v14;
    while (1)
    {
      if (v176)
      {
        v101 = v99;
        v186 = MEMORY[0x1D38B45D0](v99, v13);
        v102 = __OFADD__(v101, 1);
        v103 = v101 + 1;
        if (v102)
        {
          goto LABEL_207;
        }
      }

      else
      {
        if (v99 >= *(v171 + 16))
        {
          goto LABEL_222;
        }

        v186 = *(v170 + 8 * v99);
        v104 = v99;

        v102 = __OFADD__(v104, 1);
        v103 = v104 + 1;
        if (v102)
        {
LABEL_207:
          __break(1u);
          goto LABEL_208;
        }
      }

      v179 = v103;
      v7 = *(v178 + v177);
      v30 = v7 >> 62 ? sub_1D3277660() : *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v15 = &off_1E8431000;

      if (v30)
      {
        break;
      }

LABEL_117:

      v58 = v173;
      v99 = v179;
      v30 = v183;
      v4 = v184;
      v7 = v182;
      v13 = v185;
      v14 = v174;
      v59 = v175;
      if (v179 == v172)
      {
        goto LABEL_156;
      }
    }

    v13 = 0;
    v58 = v7 & 0xC000000000000001;
    v4 = v7 & 0xFFFFFFFFFFFFFF8;
LABEL_130:
    if (v58)
    {
      v105 = MEMORY[0x1D38B45D0](v13, v7);
    }

    else
    {
      if (v13 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_204;
      }

      v105 = *(v7 + 8 * v13 + 32);
    }

    v28 = v105;
    v59 = v13 + 1;
    if (!__OFADD__(v13, 1))
    {
      break;
    }

    __break(1u);
LABEL_204:
    __break(1u);
LABEL_205:
    if (!sub_1D3277660())
    {
      goto LABEL_157;
    }
  }

  v14 = [v105 road];
  v10 = [v14 *(v15 + 3232)];

  v106 = *(v186 + 16);
  if (!v106)
  {

LABEL_129:
    ++v13;
    if (v59 == v30)
    {
      goto LABEL_117;
    }

    goto LABEL_130;
  }

  v14 = v106;
  v107 = [v14 *(v15 + 3232)];

  v108 = v10 == v107;
  v15 = 0x1E8431000;
  if (!v108)
  {
    goto LABEL_129;
  }

  v4 = v184;
  v109 = *(v184 + 720);
  v110 = *(v184 + 712);

  sub_1D315D460(0);
  v10 = v111;
  v28 = *(v110 + v109);
  if (v28 >> 62)
  {
    goto LABEL_246;
  }

  v112 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (2)
  {
    v13 = v185;
    if (!v112)
    {
      __break(1u);
      goto LABEL_248;
    }

    if ((v28 & 0xC000000000000001) != 0)
    {
LABEL_248:

      v113 = MEMORY[0x1D38B45D0](0, v28);

      goto LABEL_146;
    }

    if (!*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_251;
    }

    v113 = *(v28 + 32);

LABEL_146:
    v15 = *(v4 + 720);
    v59 = *(v4 + 712);
    v2 = *(v113 + 88);

    v30 = *(v59 + v15);
    if (!(v30 >> 62))
    {
      if (!*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_250;
      }

LABEL_148:

      if ((v30 & 0xC000000000000001) != 0)
      {
        goto LABEL_252;
      }

      if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v114 = *(v30 + 32);

        goto LABEL_151;
      }

      __break(1u);
LABEL_254:
      if (sub_1D3277660())
      {
LABEL_175:
        v59 = *(v4 + 712);

        if ((v14 & 0xC000000000000001) != 0)
        {
          goto LABEL_256;
        }

        if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v28 = *(v14 + 32);

          goto LABEL_178;
        }

        __break(1u);
      }

      else
      {
LABEL_255:
        __break(1u);
LABEL_256:
        v28 = MEMORY[0x1D38B45D0](0, v14);
LABEL_178:

        v2 = *(v28 + 112);

        *(v13 + 14) = v2;
        _os_log_impl(&dword_1D311E000, v15, v30, "Best candidate connected similar road CD  %f compared to location course accuracy %f", v13, 0x16u);
        MEMORY[0x1D38B6000](v13, -1, -1);
        v13 = v185;
LABEL_180:

        v15 = *(*(v4 + 712) + *(v4 + 720));
        v30 = v183;
        if (!(v15 >> 62))
        {
          if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_243;
          }

          goto LABEL_182;
        }

LABEL_242:
        if (sub_1D3277660())
        {
LABEL_182:
          if ((v15 & 0xC000000000000001) != 0)
          {
            goto LABEL_244;
          }

          if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v126 = *(v15 + 32);

            goto LABEL_185;
          }

          __break(1u);
LABEL_246:
          v112 = sub_1D3277660();
          continue;
        }

LABEL_243:
        __break(1u);
LABEL_244:

        v126 = MEMORY[0x1D38B45D0](0, v15);

LABEL_185:
        v2 = *(v126 + 112);

        if (v3 > v2)
        {
          v72 = 2;
          swift_bridgeObjectRelease_n();

LABEL_215:

          v71 = 0;
          goto LABEL_216;
        }

        v28 = *(*(v4 + 712) + *(v4 + 720));
        if (!(v28 >> 62))
        {
          if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_189;
          }

LABEL_263:
          v138 = *(v4 + 712);
          v15 = sub_1D3276F60();
          v139 = sub_1D3277370();
          if (!os_log_type_enabled(v15, v139))
          {

            goto LABEL_275;
          }

          v59 = *(v4 + 720);
          v140 = *(v4 + 712);
          v30 = swift_slowAlloc();
          *v30 = 134217984;
          v28 = *(v140 + v59);
          if (v28 >> 62)
          {
            goto LABEL_332;
          }

          if (!*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_333;
          }

          while (2)
          {
            if ((v28 & 0xC000000000000001) == 0)
            {
              if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                v141 = *(v28 + 32);

                goto LABEL_269;
              }

              __break(1u);
LABEL_336:
              if (sub_1D3277660())
              {
LABEL_299:
                if ((v15 & 0xC000000000000001) != 0)
                {
                  goto LABEL_338;
                }

                if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  v158 = *(v15 + 32);

                  goto LABEL_302;
                }

                __break(1u);
              }

              else
              {
LABEL_337:
                __break(1u);
LABEL_338:

                v158 = MEMORY[0x1D38B45D0](0, v15);

LABEL_302:
                if (*(v158 + *v59))
                {
                  v159 = v30;
                }

                else
                {
                  v159 = v10;
                }

                v160 = *(v158 + *v159);

                if (!v160)
                {
LABEL_351:
                  __break(1u);
                  return;
                }

                v161 = *(v4 + 720);
                v162 = *(v4 + 712);
                v2 = *(v160 + 56);

                v15 = *(v162 + v161);
                if (!(v15 >> 62))
                {
                  if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_308;
                  }

LABEL_341:
                  __break(1u);
                  goto LABEL_342;
                }
              }

              if (!sub_1D3277660())
              {
                goto LABEL_341;
              }

LABEL_308:
              if ((v15 & 0xC000000000000001) == 0)
              {
                if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {

                  goto LABEL_311;
                }

LABEL_345:
                __break(1u);
LABEL_346:
                v166 = MEMORY[0x1D38B45D0](0, v15);
                goto LABEL_316;
              }

LABEL_342:

              MEMORY[0x1D38B45D0](0, v15);

LABEL_311:
              v163 = *(v4 + 720);
              v164 = *(v4 + 712);

              GEOAngleDifferenceDegrees();
              v2 = v165;
              v15 = *(v164 + v163);
              if (v15 >> 62)
              {
                if (sub_1D3277660())
                {
                  goto LABEL_313;
                }
              }

              else if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
LABEL_313:

                if ((v15 & 0xC000000000000001) != 0)
                {
                  goto LABEL_346;
                }

                if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  __break(1u);
LABEL_348:
                  __break(1u);
LABEL_349:
                  __break(1u);
LABEL_350:
                  __break(1u);
                  goto LABEL_351;
                }

                v166 = *(v15 + 32);

LABEL_316:
                v167 = fabs(v2);

                v168 = *(v166 + 112);

                if (v168 < v167 && v3 < v167)
                {
                  v150 = sub_1D3276F60();
                  v169 = sub_1D3277370();
                  if (os_log_type_enabled(v150, v169))
                  {
                    v152 = swift_slowAlloc();
                    *v152 = 134218240;
                    *(v152 + 4) = v3;
                    *(v152 + 12) = 2048;
                    *(v152 + 14) = v167;
                    v153 = "Reroute due to best candidate road CD %f < than route match CD %f";
                    v154 = v169;
                    v155 = v150;
                    v156 = v152;
                    v157 = 22;
LABEL_296:
                    _os_log_impl(&dword_1D311E000, v155, v154, v153, v156, v157);
                    MEMORY[0x1D38B6000](v152, -1, -1);
                  }

                  else
                  {
LABEL_320:
                  }

                  v71 = 1;
                  v72 = 1;
                  goto LABEL_216;
                }

LABEL_63:

                v71 = 0;
                v72 = 2;
                goto LABEL_216;
              }

              __break(1u);
              goto LABEL_345;
            }

LABEL_334:

            v141 = MEMORY[0x1D38B45D0](0, v28);

LABEL_269:
            v59 = *(v4 + 712);
            if (*(v141 + OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_preferConnectedRouteMatch))
            {
              v142 = &OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_connectedRouteMatch;
            }

            else
            {
              v142 = &OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_classicRouteMatch;
            }

            v28 = *(v141 + *v142);

            if (!v28)
            {
              goto LABEL_350;
            }

            v2 = *(v28 + 56);

            *(v30 + 4) = v2;
            _os_log_impl(&dword_1D311E000, v15, v139, "Active RM course %f", v30, 0xCu);
            MEMORY[0x1D38B6000](v30, -1, -1);
LABEL_275:

            v15 = *(*(v4 + 712) + *(v4 + 720));
            if (!(v15 >> 62))
            {
              if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_277;
              }

LABEL_324:
              __break(1u);
              goto LABEL_325;
            }

            if (!sub_1D3277660())
            {
              goto LABEL_324;
            }

LABEL_277:
            if ((v15 & 0xC000000000000001) != 0)
            {
LABEL_325:

              v143 = MEMORY[0x1D38B45D0](0, v15);

LABEL_280:
              v59 = &OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_preferConnectedRouteMatch;
              v30 = &OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_connectedRouteMatch;
              v10 = &OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_classicRouteMatch;
              if (*(v143 + OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_preferConnectedRouteMatch))
              {
                v144 = &OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_connectedRouteMatch;
              }

              else
              {
                v144 = &OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_classicRouteMatch;
              }

              v145 = *(v143 + *v144);

              if (!v145)
              {
                goto LABEL_294;
              }

              v28 = *(v4 + 720);
              v146 = *(v4 + 712);

              v15 = *(v146 + v28);
              if (v15 >> 62)
              {
                goto LABEL_328;
              }

              v139 = v185;
              if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_329;
              }
            }

            else
            {
              if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                v143 = *(v15 + 32);

                goto LABEL_280;
              }

              __break(1u);
LABEL_327:
              __break(1u);
LABEL_328:
              v139 = v185;
              if (!sub_1D3277660())
              {
LABEL_329:
                __break(1u);
LABEL_330:

                v147 = MEMORY[0x1D38B45D0](0, v15);

LABEL_289:
                if (*(v147 + *v59))
                {
                  v148 = v30;
                }

                else
                {
                  v148 = v10;
                }

                v149 = *(v147 + *v148);

                if (!v149)
                {
                  goto LABEL_349;
                }

                v2 = *(v149 + 56);

                if (v2 < 0.0)
                {
LABEL_294:

                  v150 = sub_1D3276F60();
                  v151 = sub_1D3277370();
                  if (!os_log_type_enabled(v150, v151))
                  {
                    goto LABEL_320;
                  }

                  v152 = swift_slowAlloc();
                  *v152 = 0;
                  v153 = "Reroute due to best candidate road having close enough course to user and no route match";
                  v154 = v151;
                  v155 = v150;
                  v156 = v152;
                  v157 = 2;
                  goto LABEL_296;
                }

                v15 = *(*(v4 + 712) + *(v4 + 720));
                if (v15 >> 62)
                {
                  goto LABEL_336;
                }

                if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_337;
                }

                goto LABEL_299;
              }
            }

            if ((v15 & 0xC000000000000001) != 0)
            {
              goto LABEL_330;
            }

            if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v147 = *(v15 + 32);

              goto LABEL_289;
            }

            __break(1u);
LABEL_332:
            if (sub_1D3277660())
            {
              continue;
            }

            break;
          }

LABEL_333:
          __break(1u);
          goto LABEL_334;
        }
      }

      if (!sub_1D3277660())
      {
        goto LABEL_263;
      }

LABEL_189:
      if ((v28 & 0xC000000000000001) != 0)
      {

        v127 = MEMORY[0x1D38B45D0](0, v28);

        if (v10)
        {
          goto LABEL_192;
        }
      }

      else
      {
        if (!*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_327;
        }

        v127 = *(v28 + 32);

        if (v10)
        {
LABEL_192:
          v128 = MEMORY[0x1D38B45D0](0, v13);
LABEL_262:
          v59 = *(v128 + 16);
          v137 = v59;

          v28 = *(v127 + OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_road);
          *(v127 + OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_road) = v59;

          goto LABEL_263;
        }
      }

      v128 = *(v13 + 32);

      goto LABEL_262;
    }

    break;
  }

  if (sub_1D3277660())
  {
    goto LABEL_148;
  }

LABEL_250:
  __break(1u);
LABEL_251:
  __break(1u);
LABEL_252:
  v114 = MEMORY[0x1D38B45D0](0, v30);
LABEL_151:

  v115 = v2 + v2;
  v116 = sub_1D315E5E0(v114);

  if (v115 + v116 <= 20.0)
  {
    v117 = v115 + v116;
  }

  else
  {
    v117 = 20.0;
  }

  v71 = (v10 & 1) == 0 && *(v175 + 64) <= v117;

  v129 = sub_1D3276F60();
  v130 = sub_1D3277370();

  if (os_log_type_enabled(v129, v130))
  {
    v131 = swift_slowAlloc();
    v132 = swift_slowAlloc();
    v187 = v132;
    *v131 = 136315650;
    if (v71)
    {
      v133 = 0x676E6F727453;
    }

    else
    {
      v133 = 1801545047;
    }

    if (v71)
    {
      v134 = 0xE600000000000000;
    }

    else
    {
      v134 = 0xE400000000000000;
    }

    v135 = sub_1D312BA30(v133, v134, &v187);

    *(v131 + 4) = v135;
    v4 = v184;
    *(v131 + 12) = 2048;
    *(v131 + 14) = *(v175 + 64);
    *(v131 + 22) = 2048;
    *(v131 + 24) = v117;
    _os_log_impl(&dword_1D311E000, v129, v130, "%s On Route due to one of the candidate roads being along the active Route Match and distance from active route match %f versus expanded uncertainty radius %f", v131, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v132);
    MEMORY[0x1D38B6000](v132, -1, -1);
    MEMORY[0x1D38B6000](v131, -1, -1);

    v72 = 2;
  }

  else
  {

    v72 = 2;
  }

LABEL_216:
  v136 = *(v4 + 8);

  v136(v71 | (v72 << 8));
}

void sub_1D315D460(char a1)
{
  v9 = OBJC_IVAR___MNMapMatcher__locationHistory;
  swift_beginAccess();
  v10 = *&v1[v9];
  if (v10 >> 62)
  {
    if (sub_1D3277660() < 2)
    {
      return;
    }
  }

  else if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2)
  {
    return;
  }

  v11 = *&v1[v9];
  if ((v11 & 0xC000000000000001) != 0)
  {

    v12 = MEMORY[0x1D38B45D0](0, v11);
  }

  else
  {
    if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_50;
    }

    v12 = *(v11 + 32);
  }

  v3 = &OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_preferConnectedRouteMatch;
  v2 = *(v12 + OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_preferConnectedRouteMatch);

  v11 = *&v1[v9];
  if ((v11 & 0xC000000000000001) == 0)
  {
    if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {
      v13 = *(v11 + 40);

      goto LABEL_9;
    }

LABEL_50:
    __break(1u);
LABEL_51:

    v15 = MEMORY[0x1D38B45D0](0, v11);

    goto LABEL_14;
  }

  v13 = MEMORY[0x1D38B45D0](1, v11);

LABEL_9:
  v14 = *(v13 + OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_preferConnectedRouteMatch);

  if (v2 != v14)
  {
    return;
  }

  v11 = *&v1[v9];
  if ((v11 & 0xC000000000000001) != 0)
  {
    goto LABEL_51;
  }

  if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_53;
  }

  v15 = *(v11 + 32);

LABEL_14:
  v4 = &OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_connectedRouteMatch;
  v5 = &OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_classicRouteMatch;
  if (*(v15 + *v3))
  {
    v16 = &OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_connectedRouteMatch;
  }

  else
  {
    v16 = &OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_classicRouteMatch;
  }

  v11 = *(v15 + *v16);

  if (!v11)
  {
    goto LABEL_38;
  }

  v13 = *&v1[v9];
  if ((v13 & 0xC000000000000001) == 0)
  {
    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
    {
      __break(1u);
      goto LABEL_55;
    }

    v17 = *(v13 + 40);

    goto LABEL_21;
  }

LABEL_53:

  v17 = MEMORY[0x1D38B45D0](1, v13);

LABEL_21:
  if (*(v17 + *v3))
  {
    v18 = v4;
  }

  else
  {
    v18 = v5;
  }

  v13 = *(v17 + *v18);

  if (v13)
  {
    v2 = *&v1[v9];
    if ((v2 & 0xC000000000000001) == 0)
    {
      if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_58:
        swift_once();
LABEL_32:
        v36 = sub_1D3276F80();
        __swift_project_value_buffer(v36, qword_1EC760888);
        v37 = sub_1D32773B0();
        v38 = v1;
        v39 = sub_1D3276F60();

        if (os_log_type_enabled(v39, v37))
        {
          v40 = swift_slowAlloc();
          *v40 = 134218496;
          *(v40 + 4) = Distance;
          *(v40 + 12) = 2048;
          *(v40 + 14) = v7;
          *(v40 + 22) = 2048;
          *(v40 + 24) = *&v38[OBJC_IVAR___MNMapMatcher__backwardsMovementDistance];
          _os_log_impl(&dword_1D311E000, v39, v37, "Movement distance since last fix: %fm GPS location displacement, %fm along route. Previous consecutive backwards distance along route: %fm", v40, 0x20u);
          MEMORY[0x1D38B6000](v40, -1, -1);
        }

        if (sub_1D3277490())
        {
          v41 = OBJC_IVAR___MNMapMatcher__backwardsMovementDistance;
          *&v38[OBJC_IVAR___MNMapMatcher__backwardsMovementDistance] = v7 + *&v38[OBJC_IVAR___MNMapMatcher__backwardsMovementDistance];
          v42 = sub_1D32773B0();
          v43 = v38;
          v44 = sub_1D3276F60();

          if (os_log_type_enabled(v44, v42))
          {
            v45 = swift_slowAlloc();
            *v45 = 134217984;
            *(v45 + 4) = *&v38[v41];
            _os_log_impl(&dword_1D311E000, v44, v42, "Backwards movement along route detected. New consecutive backwards distance along route: %fm", v45, 0xCu);
            MEMORY[0x1D38B6000](v45, -1, -1);
          }

          else
          {
          }
        }

        else
        {
          v46 = sub_1D3277480();

          if (v46 & 1) != 0 && (a1)
          {
            v47 = OBJC_IVAR___MNMapMatcher__backwardsMovementDistance;
            v48 = *&v38[OBJC_IVAR___MNMapMatcher__backwardsMovementDistance] - Distance;
            *&v38[OBJC_IVAR___MNMapMatcher__backwardsMovementDistance] = v48;
            if (v48 < 0.0)
            {
              *&v38[v47] = 0;
            }
          }
        }

        return;
      }

      v19 = *(v2 + 32);

LABEL_28:
      v20 = v19[2];
      v21 = v19[3];
      v22 = v19[4];

      v24 = MEMORY[0x1D38B43F0](v23, v20, v21, v22);
      v26 = v25;
      v27 = *&v1[v9];
      if ((v27 & 0xC000000000000001) != 0)
      {

        v28 = MEMORY[0x1D38B45D0](1, v27);
      }

      else
      {
        if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
        {
          __break(1u);
          return;
        }

        v28 = *(v27 + 40);
      }

      v29 = v28[2];
      v30 = v28[3];
      v31 = v28[4];

      v33 = MEMORY[0x1D38B43F0](v32, v29, v30, v31);
      Distance = GEOCoordinateGetDistance(v24, v26, v33, v34);
      [*&v1[OBJC_IVAR___MNMapMatcher__route] distanceBetweenRouteCoordinate:*(v11 + 16) andRouteCoordinate:*(v13 + 16)];
      v7 = v35;
      if (qword_1EC75C008 == -1)
      {
        goto LABEL_32;
      }

      goto LABEL_58;
    }

LABEL_55:

    v19 = MEMORY[0x1D38B45D0](0, v2);

    goto LABEL_28;
  }

LABEL_38:
  if (a1)
  {
    *&v1[OBJC_IVAR___MNMapMatcher__backwardsMovementDistance] = 0;
  }
}

uint64_t sub_1D315DA80(double *a1)
{
  if (sub_1D315DB10(a1))
  {
LABEL_4:
    if (!*(v1 + OBJC_IVAR___MNMapMatcher__routeRadiusPinnedCenter) && a1[15] + a1[16] < 1.0)
    {
      *(v1 + OBJC_IVAR___MNMapMatcher__routeRadiusPinnedCenter) = a1;
    }

    return 1;
  }

  else
  {
    while (1)
    {
      result = *(v1 + OBJC_IVAR___MNMapMatcher__routeRadiusPinnedCenter);
      if (!result)
      {
        break;
      }

      *(v1 + OBJC_IVAR___MNMapMatcher__routeRadiusPinnedCenter) = 0;

      if (sub_1D315DB10(a1))
      {
        goto LABEL_4;
      }
    }
  }

  return result;
}

uint64_t sub_1D315DB10(double *a1)
{
  v3 = OBJC_IVAR___MNMapMatcher__routeRadiusPinnedCenter;
  v4 = *(v1 + OBJC_IVAR___MNMapMatcher__routeRadiusPinnedCenter);
  if (*(a1 + OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_preferConnectedRouteMatch) != 1)
  {
    v6 = OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_classicRouteMatch;
    if (!v4)
    {
      LODWORD(v10) = 1;
      v19 = *(a1 + OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_classicRouteMatch);
      if (v19)
      {
        goto LABEL_20;
      }

      goto LABEL_25;
    }

    v5 = OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_connectedRouteMatch;
    v8 = OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_classicRouteMatch;
LABEL_10:
    if (*(v4 + OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_preferConnectedRouteMatch))
    {
      v9 = v5;
    }

    else
    {
      v9 = v6;
    }

    v10 = *(v4 + v9);
    if (v10)
    {
      v12 = v10[5];
      v11 = v10[6];
      v13 = 5.0;
      v14 = v10[4];
LABEL_32:
      v26 = v13 + sub_1D315E5E0(a1) + -1.85;
      v27 = *(v1 + v3);
      if (v27 && (!*(v27 + OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_preferConnectedRouteMatch) ? (v28 = &OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_classicRouteMatch) : (v28 = &OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_connectedRouteMatch), *(v27 + *v28)))
      {
        v29 = 0xE600000000000000;
        v30 = 0x64656E6E6950;
      }

      else
      {
        v29 = 0xE500000000000000;
        v30 = 0x6574756F52;
      }

      v45[0] = 0;
      v45[1] = 0xE000000000000000;
      sub_1D32776F0();
      MEMORY[0x1D38B3FE0](v30, v29);

      MEMORY[0x1D38B3FE0](0xD000000000000018, 0x80000001D328F2D0);
      sub_1D3277310();
      MEMORY[0x1D38B3FE0](0x75636341203D206DLL, 0xED00002079636172);
      sub_1D3277310();
      MEMORY[0x1D38B3FE0](0x2064616F52202B20, 0xEE00206874646957);
      sub_1D3277310();
      MEMORY[0x1D38B3FE0](0x322F362E33202D20, 0xE800000000000000);
      v31 = MEMORY[0x1D38B43E0](a1[2], a1[3], a1[4]);
      v33 = v32;
      v34 = MEMORY[0x1D38B43E0](v14, v12, v11);
      if (GEOCoordinateGetDistance(v31, v33, v34, v35) > v26)
      {
        if (qword_1EC75C008 != -1)
        {
          swift_once();
        }

        v36 = sub_1D3276F80();
        __swift_project_value_buffer(v36, qword_1EC760888);
        v37 = sub_1D32773B0();

        v24 = sub_1D3276F60();

        if (!os_log_type_enabled(v24, v37))
        {

          return 0;
        }

        v25 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v45[0] = v38;
        *v25 = 136315138;
        v39 = sub_1D312BA30(0, 0xE000000000000000, v45);

        *(v25 + 4) = v39;
        _os_log_impl(&dword_1D311E000, v24, v37, "Current Location not inside %s", v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v38);
        MEMORY[0x1D38B6000](v38, -1, -1);
        goto LABEL_44;
      }

      if (qword_1EC75C008 != -1)
      {
        swift_once();
      }

      v40 = sub_1D3276F80();
      __swift_project_value_buffer(v40, qword_1EC760888);
      v41 = sub_1D32773B0();

      v17 = sub_1D3276F60();

      if (!os_log_type_enabled(v17, v41))
      {

        return 1;
      }

      v18 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v45[0] = v42;
      *v18 = 136315138;
      v43 = sub_1D312BA30(0, 0xE000000000000000, v45);

      *(v18 + 4) = v43;
      _os_log_impl(&dword_1D311E000, v17, v41, "Current Location is inside %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v42);
      MEMORY[0x1D38B6000](v42, -1, -1);
      goto LABEL_50;
    }

    v19 = *(a1 + v8);
    if (v19)
    {
LABEL_20:
      v12 = v19[5];
      v11 = v19[6];
      v13 = 5.0;
      v14 = v19[4];
      if (v10)
      {
        v20 = a1[15];
        if (v20 >= 6.0)
        {
          v21 = 0.0;
        }

        else if (v20 <= 1.0)
        {
          v21 = 5.0;
        }

        else
        {
          v21 = (v20 + -1.0) / 5.0 * 5.0 + 0.0;
        }

        v13 = a1[11] + v21;
      }

      goto LABEL_32;
    }

LABEL_25:
    if (qword_1EC75C008 != -1)
    {
      swift_once();
    }

    v22 = sub_1D3276F80();
    __swift_project_value_buffer(v22, qword_1EC760888);
    v23 = sub_1D3277390();
    v24 = sub_1D3276F60();
    if (!os_log_type_enabled(v24, v23))
    {
      goto LABEL_45;
    }

    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_1D311E000, v24, v23, "No Pinned Radius center or Current Location Active Route Match location coordinate for Route Radius (speed based) center", v25, 2u);
LABEL_44:
    MEMORY[0x1D38B6000](v25, -1, -1);
LABEL_45:

    return 0;
  }

  if (v4)
  {
    v5 = OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_connectedRouteMatch;
    v6 = OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_classicRouteMatch;
    v7 = *(v4 + OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_preferConnectedRouteMatch) ? OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_connectedRouteMatch : OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_classicRouteMatch;
    if (*(v4 + v7))
    {
      v8 = OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_connectedRouteMatch;
      goto LABEL_10;
    }
  }

  if (qword_1EC75C008 != -1)
  {
    swift_once();
  }

  v15 = sub_1D3276F80();
  __swift_project_value_buffer(v15, qword_1EC760888);
  v16 = sub_1D32773B0();
  v17 = sub_1D3276F60();
  if (!os_log_type_enabled(v17, v16))
  {
    goto LABEL_51;
  }

  v18 = swift_slowAlloc();
  *v18 = 0;
  _os_log_impl(&dword_1D311E000, v17, v16, "Do not check normal route radius because Connected RM is active RM and no pinned route radius is set.", v18, 2u);
LABEL_50:
  MEMORY[0x1D38B6000](v18, -1, -1);
LABEL_51:

  return 1;
}

id sub_1D315E1D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapMatcher_Driving();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1D315E22C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  _s14RecentLocationCMa(0);
  swift_arrayDestroy();
  v13 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v13)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      v14 = v5[2];
      v15 = v14 - v7;
      if (!__OFSUB__(v14, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    v20 = sub_1D3277660();
    v15 = v20 - v7;
    if (!__OFSUB__(v20, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        v19 = sub_1D3277660();
      }

      else
      {
        v19 = v5[2];
      }

      if (!__OFADD__(v19, v11))
      {
        v5[2] = v19 + v11;
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;

    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }
}

void sub_1D315E34C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v6 = a2;
    v7 = a1;
    v8 = *v5;
    v9 = *v5 >> 62;
    if (!v9)
    {
      if (*((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  if (sub_1D3277660() < v6)
  {
    goto LABEL_15;
  }

LABEL_4:
  v10 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = 1 - v10;
  if (__OFSUB__(1, v10))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return;
  }

  if (v9)
  {
    v12 = sub_1D3277660();
  }

  else
  {
    v12 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = __OFADD__(v12, v11);
  v14 = v12 + v11;
  if (v13)
  {
    goto LABEL_18;
  }

  sub_1D3141D18(v14, 1);

  sub_1D315E22C(v7, v6, 1, v4);
}

uint64_t sub_1D315E438()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1D3157790;

  return sub_1D31576F4(v2, v3);
}

uint64_t sub_1D315E4D0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D3125778;

  return sub_1D315788C(a1, v4);
}

unint64_t sub_1D315E588()
{
  result = qword_1EC75C710;
  if (!qword_1EC75C710)
  {
    sub_1D3276D30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC75C710);
  }

  return result;
}

double sub_1D315E5E0(uint64_t a1)
{
  if (*(a1 + OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_preferConnectedRouteMatch))
  {
    v2 = &OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_connectedRouteMatch;
  }

  else
  {
    v2 = &OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_classicRouteMatch;
  }

  v3 = *(a1 + *v2);
  if (v3 && (v4 = *(v3 + 72)) != 0 && (v5 = [v4 road]) != 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = *(a1 + OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_road);
    v5 = v6;
    if (!v6)
    {
      goto LABEL_11;
    }
  }

  v7 = v5;
  [v7 roadWidth];
  v9 = v8;

  if (v9 > 0.0)
  {

    return v9;
  }

LABEL_11:
  if (qword_1EC75C008 != -1)
  {
    swift_once();
  }

  v10 = sub_1D3276F80();
  __swift_project_value_buffer(v10, qword_1EC760888);
  v11 = sub_1D3277380();
  v12 = v6;
  v13 = sub_1D3276F60();

  if (os_log_type_enabled(v13, v11))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136315138;
    if (v6)
    {
      v16 = [v12 internalRoadName];
      if (v16)
      {
        v17 = v16;
        sub_1D32770C0();
      }
    }

    v18 = sub_1D3277160();
    v20 = sub_1D312BA30(v18, v19, &v23);

    *(v14 + 4) = v20;
    _os_log_impl(&dword_1D311E000, v13, v11, "Road %s has 0 or no road width", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x1D38B6000](v15, -1, -1);
    MEMORY[0x1D38B6000](v14, -1, -1);
  }

  if (v6 && (v21 = [v12 travelDirection], v12, !v21))
  {
    return 7.4;
  }

  else
  {
    return 3.7;
  }
}

uint64_t sub_1D315E880@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X8>)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v3 = a2;
  a3 = a1;
  v4 = a2 >> 62;
  if (a2 >> 62)
  {
LABEL_19:
    v10 = a3;
    v11 = sub_1D3277660();
    result = sub_1D3277660();
    if (result < 0)
    {
LABEL_30:
      __break(1u);
      return result;
    }

    if (v11 >= v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = v11;
    }

    if (v11 < 0)
    {
      v12 = v10;
    }

    if (v10)
    {
      v7 = v12;
    }

    else
    {
      v7 = 0;
    }

    result = sub_1D3277660();
    if (result >= v7)
    {
      goto LABEL_10;
    }

LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result >= a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (a3)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  if (result < v7)
  {
    goto LABEL_29;
  }

LABEL_10:
  if ((v3 & 0xC000000000000001) != 0 && v7)
  {
    _s14RecentLocationCMa(0);

    v8 = 0;
    do
    {
      v9 = v8 + 1;
      sub_1D3277700();
      v8 = v9;
    }

    while (v7 != v9);
    if (!v4)
    {
      return v3 & 0xFFFFFFFFFFFFFF8;
    }
  }

  else
  {

    if (!v4)
    {
      return v3 & 0xFFFFFFFFFFFFFF8;
    }
  }

  return sub_1D32777E0();
}

unint64_t sub_1D315E9C4()
{
  result = qword_1EC75C4A0;
  if (!qword_1EC75C4A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC75C4A0);
  }

  return result;
}

double sub_1D315EA10(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  if (a2)
  {
    sub_1D3126084(0, &unk_1EC75BDC8, 0x1E69A1C68);
    v6 = sub_1D32771A0();
  }

  v8 = a3;
  v9 = a4;
  v7(v6, a3, a4);

  return result;
}

void sub_1D315EAD0(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
}

Navigation::CommuteRouteRequestPurpose_optional __swiftcall CommuteRouteRequestPurpose.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

void *sub_1D315EB4C@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

_BYTE *CommuteRouteRequestParameters.__allocating_init(purpose:waypoints:isEnroute:predictedEntryDate:predictedExitDate:requireFamiliarRoute:cacheOptions:internalInfo:)(_BYTE *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6, uint64_t *a7, uint64_t a8)
{
  v9 = v8;
  v18 = objc_allocWithZone(v9);
  v19 = *a7;
  v18[OBJC_IVAR____TtC10Navigation29CommuteRouteRequestParameters_purpose] = *a1;
  *&v18[OBJC_IVAR____TtC10Navigation29CommuteRouteRequestParameters_waypoints] = a2;
  v18[OBJC_IVAR____TtC10Navigation29CommuteRouteRequestParameters_isEnroute] = a3;
  sub_1D315EDF4(a4, &v18[OBJC_IVAR____TtC10Navigation29CommuteRouteRequestParameters_predictedEntryDate]);
  sub_1D315EDF4(a5, &v18[OBJC_IVAR____TtC10Navigation29CommuteRouteRequestParameters_predictedExitDate]);
  v18[OBJC_IVAR____TtC10Navigation29CommuteRouteRequestParameters_requireFamiliarRoute] = a6;
  *&v18[OBJC_IVAR____TtC10Navigation29CommuteRouteRequestParameters_cacheOptions] = v19;
  *&v18[OBJC_IVAR____TtC10Navigation29CommuteRouteRequestParameters_internalInfo] = a8;
  v22.receiver = v18;
  v22.super_class = v9;
  v20 = objc_msgSendSuper2(&v22, sel_init);
  sub_1D3125FBC(a5, &qword_1EC75C4F0, &qword_1D328B580);
  sub_1D3125FBC(a4, &qword_1EC75C4F0, &qword_1D328B580);
  return v20;
}

_BYTE *CommuteRouteRequestParameters.init(purpose:waypoints:isEnroute:predictedEntryDate:predictedExitDate:requireFamiliarRoute:cacheOptions:internalInfo:)(_BYTE *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6, uint64_t *a7, uint64_t a8)
{
  v9 = v8;
  ObjectType = swift_getObjectType();
  v19 = *a7;
  v9[OBJC_IVAR____TtC10Navigation29CommuteRouteRequestParameters_purpose] = *a1;
  *&v9[OBJC_IVAR____TtC10Navigation29CommuteRouteRequestParameters_waypoints] = a2;
  v9[OBJC_IVAR____TtC10Navigation29CommuteRouteRequestParameters_isEnroute] = a3;
  sub_1D315EDF4(a4, &v9[OBJC_IVAR____TtC10Navigation29CommuteRouteRequestParameters_predictedEntryDate]);
  sub_1D315EDF4(a5, &v9[OBJC_IVAR____TtC10Navigation29CommuteRouteRequestParameters_predictedExitDate]);
  v9[OBJC_IVAR____TtC10Navigation29CommuteRouteRequestParameters_requireFamiliarRoute] = a6;
  *&v9[OBJC_IVAR____TtC10Navigation29CommuteRouteRequestParameters_cacheOptions] = v19;
  *&v9[OBJC_IVAR____TtC10Navigation29CommuteRouteRequestParameters_internalInfo] = a8;
  v22.receiver = v9;
  v22.super_class = ObjectType;
  v20 = objc_msgSendSuper2(&v22, sel_init);
  sub_1D3125FBC(a5, &qword_1EC75C4F0, &qword_1D328B580);
  sub_1D3125FBC(a4, &qword_1EC75C4F0, &qword_1D328B580);
  return v20;
}

uint64_t sub_1D315EDF4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C4F0, &qword_1D328B580);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t CommuteRouteRequestParameters.CacheOptions.description.getter()
{
  v1 = *v0;
  if ((*v0 & 1) == 0)
  {
    v2 = MEMORY[0x1E69E7CC0];
    if ((v1 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v2 = sub_1D3141080(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_1D3141080((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 2) = v4 + 1;
  v5 = &v2[16 * v4];
  strcpy(v5 + 32, "networkRoutes");
  *(v5 + 23) = -4864;
  if ((v1 & 2) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1D3141080(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = sub_1D3141080((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    strcpy(v8 + 32, "cachedRoutes");
    v8[45] = 0;
    *(v8 + 23) = -5120;
  }

LABEL_12:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C340, &qword_1D328ACC8);
  sub_1D315F1D8();
  v9 = sub_1D3277080();
  v11 = v10;

  MEMORY[0x1D38B3FE0](v9, v11);

  MEMORY[0x1D38B3FE0](93, 0xE100000000000000);
  return 91;
}

BOOL sub_1D315F0A4(void *a1, uint64_t *a2)
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

void *sub_1D315F0D4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
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

uint64_t *sub_1D315F100@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

unint64_t sub_1D315F1D8()
{
  result = qword_1EC75C780;
  if (!qword_1EC75C780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC75C340, &qword_1D328ACC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC75C780);
  }

  return result;
}

void *CommuteRouteRequestParameters.internalInfo.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10Navigation29CommuteRouteRequestParameters_internalInfo);
  v2 = v1;
  return v1;
}

id CommuteRouteRequestParameters.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

Swift::Void __swiftcall CommuteRouteRequestParameters.encode(with:)(NSCoder with)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C4F0, &qword_1D328B580);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v29 - v8;
  v10 = *(v2 + OBJC_IVAR____TtC10Navigation29CommuteRouteRequestParameters_purpose);
  v11 = sub_1D32770B0();
  [(objc_class *)with.super.isa encodeInteger:v10 forKey:v11];

  sub_1D3126084(0, &qword_1EC75BD88, 0x1E69A1CC8);
  v12 = sub_1D3277190();
  v13 = sub_1D32770B0();
  [(objc_class *)with.super.isa encodeObject:v12 forKey:v13];

  v14 = *(v2 + OBJC_IVAR____TtC10Navigation29CommuteRouteRequestParameters_isEnroute);
  v15 = sub_1D32770B0();
  [(objc_class *)with.super.isa encodeBool:v14 forKey:v15];

  sub_1D315EDF4(v2 + OBJC_IVAR____TtC10Navigation29CommuteRouteRequestParameters_predictedEntryDate, v9);
  v16 = sub_1D3276D30();
  v17 = *(v16 - 8);
  v18 = *(v17 + 48);
  v19 = 0;
  if (v18(v9, 1, v16) != 1)
  {
    v19 = sub_1D3276CD0();
    (*(v17 + 8))(v9, v16);
  }

  v20 = sub_1D32770B0();
  [(objc_class *)with.super.isa encodeObject:v19 forKey:v20];
  swift_unknownObjectRelease();

  sub_1D315EDF4(v2 + OBJC_IVAR____TtC10Navigation29CommuteRouteRequestParameters_predictedExitDate, v7);
  if (v18(v7, 1, v16) == 1)
  {
    v21 = 0;
  }

  else
  {
    v21 = sub_1D3276CD0();
    (*(v17 + 8))(v7, v16);
  }

  v22 = sub_1D32770B0();
  [(objc_class *)with.super.isa encodeObject:v21 forKey:v22];
  swift_unknownObjectRelease();

  v23 = *(v2 + OBJC_IVAR____TtC10Navigation29CommuteRouteRequestParameters_requireFamiliarRoute);
  v24 = sub_1D32770B0();
  [(objc_class *)with.super.isa encodeBool:v23 forKey:v24];

  v25 = *(v2 + OBJC_IVAR____TtC10Navigation29CommuteRouteRequestParameters_cacheOptions);
  v26 = sub_1D32770B0();
  [(objc_class *)with.super.isa encodeInteger:v25 forKey:v26];

  v27 = *(v2 + OBJC_IVAR____TtC10Navigation29CommuteRouteRequestParameters_internalInfo);
  v28 = sub_1D32770B0();
  [(objc_class *)with.super.isa encodeObject:v27 forKey:v28];
}

id CommuteRouteRequestParameters.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id CommuteRouteRequestParameters.init(coder:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C4F0, &qword_1D328B580);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v49[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v49[-v9];
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v49[-v12];
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v49[-v15];
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v49[-v18];
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v49[-v20];
  v22 = sub_1D32770B0();
  v23 = [a1 decodeIntegerForKey_];

  if (v23)
  {
    if (v23 != 1)
    {

      swift_getObjectType();
      swift_deallocPartialClassInstance();
      return 0;
    }

    v52 = 1;
  }

  else
  {
    v52 = 0;
  }

  sub_1D3126084(0, &qword_1EC75BD88, 0x1E69A1CC8);
  v24 = sub_1D32775D0();
  v25 = MEMORY[0x1E69E7CC0];
  if (v24)
  {
    v25 = v24;
  }

  v51 = v25;
  v26 = sub_1D32770B0();
  v50 = [a1 decodeBoolForKey_];

  sub_1D3126084(0, &qword_1EC75C790, 0x1E695DF00);
  v27 = sub_1D32775C0();
  if (v27)
  {
    v28 = v27;
    sub_1D3276D00();

    v29 = sub_1D3276D30();
    (*(*(v29 - 8) + 56))(v19, 0, 1, v29);
  }

  else
  {
    v31 = sub_1D3276D30();
    (*(*(v31 - 8) + 56))(v19, 1, 1, v31);
  }

  sub_1D31632E8(v19, v21);
  v32 = sub_1D32775C0();
  v53 = v2;
  if (v32)
  {
    v33 = v32;
    sub_1D3276D00();

    v34 = 0;
  }

  else
  {
    v34 = 1;
  }

  v35 = sub_1D3276D30();
  (*(*(v35 - 8) + 56))(v13, v34, 1, v35);
  sub_1D31632E8(v13, v16);
  v36 = sub_1D32770B0();
  v37 = [a1 decodeBoolForKey_];

  v38 = sub_1D32770B0();
  v39 = [a1 decodeIntegerForKey_];

  type metadata accessor for MNCommuteRouteSet.InternalInfo();
  v40 = sub_1D32775C0();
  sub_1D315EDF4(v21, v10);
  sub_1D315EDF4(v16, v7);
  v41 = v21;
  v42 = v16;
  v43 = v10;
  v44 = v7;
  v45 = ObjectType;
  v46 = objc_allocWithZone(ObjectType);
  v46[OBJC_IVAR____TtC10Navigation29CommuteRouteRequestParameters_purpose] = v52;
  *&v46[OBJC_IVAR____TtC10Navigation29CommuteRouteRequestParameters_waypoints] = v51;
  v46[OBJC_IVAR____TtC10Navigation29CommuteRouteRequestParameters_isEnroute] = v50;
  sub_1D315EDF4(v43, &v46[OBJC_IVAR____TtC10Navigation29CommuteRouteRequestParameters_predictedEntryDate]);
  sub_1D315EDF4(v44, &v46[OBJC_IVAR____TtC10Navigation29CommuteRouteRequestParameters_predictedExitDate]);
  v46[OBJC_IVAR____TtC10Navigation29CommuteRouteRequestParameters_requireFamiliarRoute] = v37;
  *&v46[OBJC_IVAR____TtC10Navigation29CommuteRouteRequestParameters_cacheOptions] = v39;
  *&v46[OBJC_IVAR____TtC10Navigation29CommuteRouteRequestParameters_internalInfo] = v40;
  v55.receiver = v46;
  v55.super_class = v45;
  v47 = v40;
  v30 = objc_msgSendSuper2(&v55, sel_init);

  sub_1D3125FBC(v44, &qword_1EC75C4F0, &qword_1D328B580);
  sub_1D3125FBC(v43, &qword_1EC75C4F0, &qword_1D328B580);
  sub_1D3125FBC(v42, &qword_1EC75C4F0, &qword_1D328B580);
  sub_1D3125FBC(v41, &qword_1EC75C4F0, &qword_1D328B580);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v30;
}

Swift::Void __swiftcall MNCommuteRouteSet.encode(with:)(NSCoder with)
{
  v3 = [v1 routes];
  if (!v3)
  {
    sub_1D3126084(0, &unk_1EC75BDC8, 0x1E69A1C68);
    sub_1D32771A0();
    v3 = sub_1D3277190();
  }

  v4 = sub_1D32770B0();
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];

  v5 = *&v1[OBJC_IVAR___MNCommuteRouteSet__fetchDate];
  v6 = sub_1D32770B0();
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];

  v7 = *&v1[OBJC_IVAR___MNCommuteRouteSet__internalInfo];
  v8 = sub_1D32770B0();
  [(objc_class *)with.super.isa encodeObject:v7 forKey:v8];
}

id MNCommuteRouteSet.init(coder:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  return v2;
}

{
  v2 = v1;
  sub_1D3126084(0, &unk_1EC75BDC8, 0x1E69A1C68);
  v4 = sub_1D32775D0();
  if (v4)
  {
    v5 = v4;
    sub_1D3126084(0, &qword_1EC75C790, 0x1E695DF00);
    v6 = sub_1D32775C0();
    if (v6)
    {
      *&v2[OBJC_IVAR___MNCommuteRouteSet_routes] = v5;
      *&v2[OBJC_IVAR___MNCommuteRouteSet__fetchDate] = v6;
      v7 = v6;
      type metadata accessor for MNCommuteRouteSet.InternalInfo();
      v8 = v7;
      v9 = sub_1D32775C0();

      *&v2[OBJC_IVAR___MNCommuteRouteSet__internalInfo] = v9;
      v13.receiver = v2;
      v13.super_class = MNCommuteRouteSet;
      v10 = objc_msgSendSuper2(&v13, sel_init);

      return v10;
    }
  }

  type metadata accessor for MNCommuteRouteSet(v12);
  swift_deallocPartialClassInstance();
  return 0;
}

id static MNCommuteRouteManager.shared.getter()
{
  if (qword_1EC75BFD0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC75C720;

  return v1;
}

id sub_1D3160754()
{
  result = [objc_allocWithZone(MNCommuteRouteManager) init];
  qword_1EC75C720 = result;
  return result;
}

uint64_t MNCommuteRouteManager.CommuteRouteManagerError.hashValue.getter()
{
  v1 = *v0;
  sub_1D3277980();
  MEMORY[0x1D38B4850](v1);
  return sub_1D32779B0();
}

uint64_t sub_1D3160898()
{
  v1 = *v0;
  sub_1D3277980();
  MEMORY[0x1D38B4850](v1);
  return sub_1D32779B0();
}

uint64_t sub_1D31608E0(uint64_t a1)
{
  v2 = *v1;
  sub_1D3277980();
  MEMORY[0x1D38B4850](v2);
  return sub_1D32779B0();
}

uint64_t MNCommuteRouteManager.requestCommuteRoutes(with:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D31609CC;

  return sub_1D3165B64(a1);
}

uint64_t sub_1D31609CC(uint64_t a1, char a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2 & 1);
}

char *sub_1D3160AD0(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = *(a2 + OBJC_IVAR____TtC10Navigation29CommuteRouteRequestParameters_internalInfo);
  if (v4)
  {
    v5 = OBJC_IVAR___MNCommuteRouteSetInternalInfo_displayedBannerInfo;
    v6 = *&v4[OBJC_IVAR___MNCommuteRouteSetInternalInfo_displayedBannerInfo];
    if (v6 >> 62)
    {
      v7 = sub_1D3277660();
      v41 = v3;
      v42 = v4;
      if (v7)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v41 = a3;
      v42 = *(a2 + OBJC_IVAR____TtC10Navigation29CommuteRouteRequestParameters_internalInfo);
      if (v7)
      {
LABEL_4:
        v44 = MEMORY[0x1E69E7CC0];
        v8 = v4;
        result = sub_1D314B484(0, v7 & ~(v7 >> 63), 0);
        if (v7 < 0)
        {
          __break(1u);
          goto LABEL_34;
        }

        v39 = v5;
        v10 = 0;
        v11 = v44;
        do
        {
          if ((v6 & 0xC000000000000001) != 0)
          {
            v12 = MEMORY[0x1D38B45D0](v10, v6);
          }

          else
          {
            v12 = *(v6 + 8 * v10 + 32);
          }

          v13 = v12;
          v15 = *&v12[OBJC_IVAR___MNCommuteRouteSetInternalNotificationInfo_bannerID];
          v14 = *&v12[OBJC_IVAR___MNCommuteRouteSetInternalNotificationInfo_bannerID + 8];

          v17 = *(v44 + 16);
          v16 = *(v44 + 24);
          if (v17 >= v16 >> 1)
          {
            sub_1D314B484((v16 > 1), v17 + 1, 1);
          }

          ++v10;
          *(v44 + 16) = v17 + 1;
          v18 = v44 + 16 * v17;
          *(v18 + 32) = v15;
          *(v18 + 40) = v14;
        }

        while (v7 != v10);
        v4 = v42;
        v5 = v39;
LABEL_15:
        sub_1D3177B3C(v11);
        v20 = objc_allocWithZone(MEMORY[0x1E695DF70]);
        v21 = sub_1D3277190();

        v22 = [v20 initWithArray_];

        [a1 setDisplayedBannerIds_];
        result = [objc_allocWithZone(MEMORY[0x1E69A1BF0]) init];
        if (!result)
        {
LABEL_35:
          __break(1u);
          return result;
        }

        v23 = result;

        v24 = *&v4[v5];
        if (v24 >> 62)
        {
          v25 = sub_1D3277660();
        }

        else
        {
          v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v26 = MEMORY[0x1E69E7CC0];
        if (!v25)
        {
LABEL_28:
          sub_1D3177C3C(v26);

          v35 = objc_allocWithZone(MEMORY[0x1E695DF70]);
          v36 = sub_1D3277190();

          v37 = [v35 initWithArray_];

          [v23 setDisplayedBannerEventInfos_];
          [a1 setClientFeedbackInfo_];

          v3 = v41;
          goto LABEL_29;
        }

        v45 = MEMORY[0x1E69E7CC0];
        result = sub_1D314B464(0, v25 & ~(v25 >> 63), 0);
        if ((v25 & 0x8000000000000000) == 0)
        {
          v40 = v23;
          v27 = 0;
          v26 = v45;
          do
          {
            if ((v24 & 0xC000000000000001) != 0)
            {
              v28 = MEMORY[0x1D38B45D0](v27, v24);
            }

            else
            {
              v28 = *(v24 + 8 * v27 + 32);
            }

            v29 = v28;
            v30 = *&v28[OBJC_IVAR___MNCommuteRouteSetInternalNotificationInfo_eventInfo];
            v31 = *&v28[OBJC_IVAR___MNCommuteRouteSetInternalNotificationInfo_eventInfo + 8];
            sub_1D3166AC0(v30, v31);

            v33 = *(v45 + 16);
            v32 = *(v45 + 24);
            if (v33 >= v32 >> 1)
            {
              sub_1D314B464((v32 > 1), v33 + 1, 1);
            }

            ++v27;
            *(v45 + 16) = v33 + 1;
            v34 = v45 + 16 * v33;
            *(v34 + 32) = v30;
            *(v34 + 40) = v31;
          }

          while (v25 != v27);
          v4 = v42;
          v23 = v40;
          goto LABEL_28;
        }

LABEL_34:
        __break(1u);
        goto LABEL_35;
      }
    }

    v19 = v4;
    v11 = MEMORY[0x1E69E7CC0];
    goto LABEL_15;
  }

LABEL_29:
  swift_beginAccess();
  v38 = *(v3 + 16);
  *(v3 + 16) = a1;

  return a1;
}

uint64_t sub_1D3160EC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[26] = a6;
  v7[27] = a7;
  v7[24] = a4;
  v7[25] = a5;
  v7[22] = a2;
  v7[23] = a3;
  v7[21] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D3160EF0, 0, 0);
}

uint64_t sub_1D3160EF0()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 19;
  v6 = v0[26];
  v7 = v0[27];
  v10 = v0 + 24;
  v8 = v0[24];
  v9 = v10[1];
  v11 = v1[22];
  v12 = v1[23];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_1D31610D8;
  v13 = swift_continuation_init();
  swift_beginAccess();
  *(v11 + 16) = v13;
  v14 = [objc_opt_self() sharedService];
  v15 = swift_allocObject();
  v15[2] = v9;
  v15[3] = v6;
  v15[4] = v11;
  v15[5] = v7;
  v1[14] = sub_1D3166E08;
  v1[15] = v15;
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_1D315EA10;
  v1[13] = &block_descriptor_72;
  v16 = _Block_copy(v4);

  v17 = v7;

  v18 = [v14 requestRoutes:v8 handler:v16];
  _Block_release(v16);

  v19 = *v12;
  *v12 = v18;

  return MEMORY[0x1EEE6DEC8](v3);
}

uint64_t sub_1D31610D8()
{
  v1 = *v0;
  *(v1 + 224) = *(*v0 + 152);
  *(v1 + 161) = *(v1 + 160);

  return MEMORY[0x1EEE6DFA0](sub_1D31611DC, 0, 0);
}

uint64_t sub_1D31611DC()
{
  v1 = *(v0 + 161);
  v2 = *(v0 + 168);
  *v2 = *(v0 + 224);
  *(v2 + 8) = v1;
  return (*(v0 + 8))();
}

void sub_1D3161208(unint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = sub_1D3276D30();
  v46 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    goto LABEL_10;
  }

  if (a1 >> 62)
  {
    if (sub_1D3277660())
    {
      goto LABEL_4;
    }

LABEL_10:
    v19 = 0;
    goto LABEL_11;
  }

  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_10;
  }

LABEL_4:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v16 = MEMORY[0x1D38B45D0](0, a1);
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_30;
    }

    v16 = *(a1 + 32);
  }

  v17 = v16;
  v18 = [v16 routeInitializerData];

  if (!v18)
  {
    goto LABEL_37;
  }

  v19 = [v18 directionsResponse];

LABEL_11:
  swift_beginAccess();
  v20 = *(a4 + 16);
  *(a4 + 16) = v19;

  swift_beginAccess();
  v21 = *(a5 + 16);
  *(a5 + 16) = a2;
  v22 = a2;

  if (a2)
  {
    swift_beginAccess();
    v23 = *(a6 + 16);
    if (v23)
    {
      v47[0] = 1;
      v24 = a2;
      v25 = *(*(v23 + 64) + 40);
      *v25 = a2;
      *(v25 + 8) = v47[0];
LABEL_33:
      swift_continuation_resume();
      goto LABEL_34;
    }

    goto LABEL_34;
  }

  if (!a1)
  {
    goto LABEL_31;
  }

  a2 = (a1 & 0xFFFFFFFFFFFFFF8);
  if (a1 >> 62)
  {
LABEL_30:
    if (sub_1D3277660())
    {
      goto LABEL_17;
    }

LABEL_31:
    swift_beginAccess();
    v41 = *(a6 + 16);
    if (v41)
    {
      sub_1D3166B68();
      v42 = swift_allocError();
      *v43 = 0;
      v47[0] = 1;
      v44 = *(*(v41 + 64) + 40);
      *v44 = v42;
      *(v44 + 8) = 1;
      goto LABEL_33;
    }

LABEL_34:
    swift_beginAccess();
    *(a6 + 16) = 0;
    return;
  }

  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_31;
  }

LABEL_17:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v26 = MEMORY[0x1D38B45D0](0, a1);
LABEL_20:
    v27 = v26;
    v28 = [v26 routeInitializerData];

    if (v28 && (v29 = [v28 directionsResponse], v28, v29))
    {
      v30 = *(a7 + OBJC_IVAR____TtC10Navigation29CommuteRouteRequestParameters_internalInfo);
      objc_allocWithZone(type metadata accessor for MNCommuteRouteSet.InternalInfo());
      v31 = v30;
      sub_1D3166E14(v29, v30);
      v33 = v32;
    }

    else
    {
      v33 = 0;
    }

    sub_1D3276D10();
    v34 = objc_allocWithZone(MNCommuteRouteSet);
    sub_1D3126084(0, &unk_1EC75BDC8, 0x1E69A1C68);
    v35 = v33;
    v36 = sub_1D3277190();
    v37 = sub_1D3276CD0();
    v38 = [v34 initWith:v36 fetchDate:v37 internalInfo:v35];

    (*(v46 + 8))(v15, v13);
    swift_beginAccess();
    v39 = *(a6 + 16);
    if (v39)
    {
      v47[0] = 0;
      v40 = *(*(v39 + 64) + 40);
      *v40 = v38;
      *(v40 + 8) = 0;
      swift_continuation_resume();
    }

    else
    {
    }

    goto LABEL_34;
  }

  if (a2[2])
  {
    v26 = *(a1 + 32);
    goto LABEL_20;
  }

  __break(1u);
LABEL_37:
  __break(1u);
}

uint64_t sub_1D3161680(id *a1, uint64_t *a2)
{
  if (qword_1EC75BFE8 != -1)
  {
    swift_once();
  }

  v4 = sub_1D3276F80();
  __swift_project_value_buffer(v4, qword_1EC75C750);
  v5 = sub_1D3276F60();
  v6 = sub_1D32773B0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1D311E000, v5, v6, "Cancelling request.", v7, 2u);
    MEMORY[0x1D38B6000](v7, -1, -1);
  }

  [*a1 cancel];
  swift_beginAccess();
  v8 = *a2;
  if (*a2)
  {
    sub_1D3166B68();
    v9 = swift_allocError();
    *v10 = 1;
    v11 = *(*(v8 + 64) + 40);
    *v11 = v9;
    *(v11 + 8) = 1;
    swift_continuation_resume();
  }

  result = swift_beginAccess();
  *a2 = 0;
  return result;
}

uint64_t sub_1D3161804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[27] = a7;
  v8[28] = a8;
  v8[25] = a5;
  v8[26] = a6;
  v8[24] = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75CA10, &unk_1D328B960);
  v8[29] = v9;
  v8[30] = *(v9 - 8);
  v8[31] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D31618D8, 0, 0);
}

uint64_t sub_1D31618D8()
{
  v1 = v0[26];
  v2 = v0[27];
  swift_beginAccess();
  v3 = *(v1 + 16);
  swift_beginAccess();
  v4 = *(v2 + 16);
  v5 = v3;
  if (v4)
  {
    v6 = v4;
    v7 = sub_1D3276BE0();
  }

  else
  {
    v7 = 0;
  }

  v8 = v0[30];
  v9 = v0[31];
  v10 = v0[29];
  v11 = v0[24];
  v12 = v0[25];
  sub_1D3126084(0, &qword_1EC75BD88, 0x1E69A1CC8);
  v13 = sub_1D3277190();
  [v11 timeSinceRecordingBegan];
  [v11 recordDirectionsRequest:v12 response:v5 error:v7 waypoints:v13 selectedRouteIndex:0 requestTimestamp:0.0 responseTimestamp:v14];

  v0[2] = v0;
  v0[3] = sub_1D3161B54;
  swift_continuation_init();
  v0[17] = v10;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 14);
  sub_1D3277210();
  (*(v8 + 32))(boxed_opaque_existential_1, v9, v10);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D3161C94;
  v0[13] = &block_descriptor_66;
  [v11 saveTraceWithCompletionHandler_];
  (*(v8 + 8))(boxed_opaque_existential_1, v10);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D3161B54()
{

  return MEMORY[0x1EEE6DFA0](sub_1D3161C34, 0, 0);
}

uint64_t sub_1D3161C34()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D3161C94(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75CA10, &unk_1D328B960);
  return sub_1D3277230();
}

char *MNCommuteRouteManagerCancellableRequest.init(task:)(uint64_t a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v2[OBJC_IVAR___MNCommuteRouteManagerCancellableRequest__task] = a1;

  return v2;
}

Swift::Void __swiftcall MNCommuteRouteManagerCancellableRequest.cancel()()
{
  v1 = OBJC_IVAR___MNCommuteRouteManagerCancellableRequest__task;
  if (*(v0 + OBJC_IVAR___MNCommuteRouteManagerCancellableRequest__task))
  {
    v2 = v0;
    v3 = qword_1EC75BFE8;

    if (v3 != -1)
    {
      swift_once();
    }

    v4 = sub_1D3276F80();
    __swift_project_value_buffer(v4, qword_1EC75C750);
    v5 = sub_1D3276F60();
    v6 = sub_1D32773B0();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1D311E000, v5, v6, "Cancelling commute route request.", v7, 2u);
      MEMORY[0x1D38B6000](v7, -1, -1);
    }

    sub_1D32772E0();

    *(v2 + v1) = 0;
  }
}

id _sSo17MNCommuteRouteSetC10NavigationEABycfC_0()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

id MNCommuteRouteManagerCancellableRequest.init()()
{
  *(v0 + OBJC_IVAR___MNCommuteRouteManagerCancellableRequest__task) = 0;
  v2.super_class = MNCommuteRouteManagerCancellableRequest;
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t sub_1D3161F9C()
{
  v19 = sub_1D3276C00();
  v0 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v2 = &v16 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C9F0, &unk_1D328C1C0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v16 - v4;
  v6 = sub_1D3276C40();
  v17 = *(v6 - 8);
  v7 = v17;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v8, qword_1EC75C728);
  v18 = __swift_project_value_buffer(v6, qword_1EC75C728);
  v11 = [objc_opt_self() navTempDirectoryPath];
  v16 = sub_1D32770C0();

  (*(v7 + 56))(v5, 1, 1, v6);
  v12 = *MEMORY[0x1E6968F70];
  v13 = *(v0 + 104);
  v14 = v19;
  v13(v2, v12, v19);
  sub_1D3276C20();
  v20 = 0xD000000000000011;
  v21 = 0x80000001D328F6E0;
  v13(v2, v12, v14);
  sub_1D3166D88();
  sub_1D3276C30();
  (*(v0 + 8))(v2, v14);
  return (*(v17 + 8))(v10, v6);
}

uint64_t sub_1D3162270()
{
  GEOConfigGetDouble();
  result = sub_1D3277AC0();
  qword_1EC75C740 = result;
  *algn_1EC75C748 = v1;
  return result;
}

uint64_t sub_1D31622A8()
{
  if (*v0)
  {
    return 0x7465536574756F72;
  }

  else
  {
    return 1702125924;
  }
}

void sub_1D31622E4(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v5 || (sub_1D32778B0() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x7465536574756F72 && a2 == 0xEC00000061746144)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1D32778B0();

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

uint64_t sub_1D31623DC(uint64_t a1)
{
  v2 = sub_1D31669D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D3162418(uint64_t a1)
{
  v2 = sub_1D31669D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D3162454()
{
  v1 = OBJC_IVAR____TtCE10NavigationCSo21MNCommuteRouteManagerP33_99F1AC21CCCBC7D75393AC0CA2EE644A14CachedRouteSet_date;
  v2 = sub_1D3276D30();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1D31422C8(*(v0 + OBJC_IVAR____TtCE10NavigationCSo21MNCommuteRouteManagerP33_99F1AC21CCCBC7D75393AC0CA2EE644A14CachedRouteSet_routeSetData), *(v0 + OBJC_IVAR____TtCE10NavigationCSo21MNCommuteRouteManagerP33_99F1AC21CCCBC7D75393AC0CA2EE644A14CachedRouteSet_routeSetData + 8));

  return swift_deallocClassInstance();
}

uint64_t sub_1D3162504(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C980, &unk_1D328C170);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D31669D0();
  sub_1D32779D0();
  LOBYTE(v12) = 0;
  sub_1D3276D30();
  sub_1D3166A78(&qword_1EC75C988, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
  sub_1D3277860();
  if (!v2)
  {
    v9 = *(v3 + OBJC_IVAR____TtCE10NavigationCSo21MNCommuteRouteManagerP33_99F1AC21CCCBC7D75393AC0CA2EE644A14CachedRouteSet_routeSetData + 8);
    v12 = *(v3 + OBJC_IVAR____TtCE10NavigationCSo21MNCommuteRouteManagerP33_99F1AC21CCCBC7D75393AC0CA2EE644A14CachedRouteSet_routeSetData);
    v13 = v9;
    v11[15] = 1;
    sub_1D3166AC0(v12, v9);
    sub_1D3166B14();
    sub_1D3277860();
    sub_1D31422C8(v12, v13);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1D31626E8(void *a1)
{
  v18 = sub_1D3276D30();
  v16 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C950, &qword_1D328C168);
  v6 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v8 = v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D31669D0();
  sub_1D32779C0();
  if (v2)
  {
    _s14CachedRouteSetCMa(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v15 = v6;
    v9 = v16;
    LOBYTE(v19) = 0;
    sub_1D3166A78(&qword_1EC75C960, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
    v10 = v17;
    v11 = v18;
    sub_1D3277850();
    v12 = *(v9 + 32);
    v14[1] = OBJC_IVAR____TtCE10NavigationCSo21MNCommuteRouteManagerP33_99F1AC21CCCBC7D75393AC0CA2EE644A14CachedRouteSet_date;
    v12(v1 + OBJC_IVAR____TtCE10NavigationCSo21MNCommuteRouteManagerP33_99F1AC21CCCBC7D75393AC0CA2EE644A14CachedRouteSet_date, v5, v11);
    v20 = 1;
    sub_1D3166A24();
    sub_1D3277850();
    (*(v15 + 8))(v8, v10);
    *(v1 + OBJC_IVAR____TtCE10NavigationCSo21MNCommuteRouteManagerP33_99F1AC21CCCBC7D75393AC0CA2EE644A14CachedRouteSet_routeSetData) = v19;
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v1;
}

uint64_t sub_1D3162A24@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  _s14CachedRouteSetCMa(0);
  swift_allocObject();
  result = sub_1D31626E8(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void *MNCommuteRouteSet.internalInfo.getter()
{
  v1 = *(v0 + OBJC_IVAR___MNCommuteRouteSet__internalInfo);
  v2 = v1;
  return v1;
}

Swift::Void __swiftcall MNCommuteRouteSet.InternalInfo.encode(with:)(NSCoder with)
{
  _s16NotificationInfoCMa();
  v2 = sub_1D3277190();
  v3 = sub_1D32770B0();
  [(objc_class *)with.super.isa encodeObject:v2 forKey:v3];
}

id MNCommuteRouteSet.InternalInfo.__allocating_init(coder:)(void *a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v2);
  _s16NotificationInfoCMa();
  v5 = sub_1D32775D0();
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v6 = v5;
  }

  *&v4[OBJC_IVAR___MNCommuteRouteSetInternalInfo_displayedBannerInfo] = v6;
  v9.receiver = v4;
  v9.super_class = v2;
  v7 = objc_msgSendSuper2(&v9, sel_init);

  return v7;
}

id MNCommuteRouteSet.InternalInfo.init(coder:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  _s16NotificationInfoCMa();
  v5 = sub_1D32775D0();
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v6 = v5;
  }

  *&v2[OBJC_IVAR___MNCommuteRouteSetInternalInfo_displayedBannerInfo] = v6;
  v9.receiver = v2;
  v9.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v9, sel_init);

  return v7;
}

void sub_1D3162EC4(void *a1)
{
  v2 = sub_1D32770B0();
  v3 = sub_1D32770B0();
  [a1 encodeObject:v2 forKey:v3];

  v4 = sub_1D3276C70();
  v5 = sub_1D32770B0();
  [a1 encodeObject:v4 forKey:v5];
}

id sub_1D316301C(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  sub_1D3126084(0, &qword_1EC75C970, 0x1E696AEC0);
  v5 = sub_1D32775C0();
  sub_1D3126084(0, &qword_1EC75C978, 0x1E695DEF0);
  v6 = sub_1D32775C0();
  v7 = v6;
  if (v5)
  {
    if (v6)
    {
      v8 = sub_1D32770C0();
      v9 = &v2[OBJC_IVAR___MNCommuteRouteSetInternalNotificationInfo_bannerID];
      *v9 = v8;
      v9[1] = v10;
      v11 = v7;
      v12 = sub_1D3276C80();
      v14 = v13;

      v15 = &v2[OBJC_IVAR___MNCommuteRouteSetInternalNotificationInfo_eventInfo];
      *v15 = v12;
      v15[1] = v14;
      v18.receiver = v2;
      v18.super_class = ObjectType;
      v16 = objc_msgSendSuper2(&v18, sel_init);

      return v16;
    }
  }

  else
  {

    a1 = v7;
  }

  swift_deallocPartialClassInstance();
  return 0;
}

id _s10Navigation29CommuteRouteRequestParametersCfD_0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D3163268()
{
  v0 = sub_1D3276F80();
  __swift_allocate_value_buffer(v0, qword_1EC75C750);
  __swift_project_value_buffer(v0, qword_1EC75C750);
  return sub_1D3276F70();
}

uint64_t sub_1D31632E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C4F0, &qword_1D328B580);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D3163390(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_31:
    v5 = sub_1D3277660();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(a2 >> 62))
  {
    if (v5 == *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

    return 0;
  }

  if (v5 != sub_1D3277660())
  {
    return 0;
  }

LABEL_5:
  v26 = v3 & 0xFFFFFFFFFFFFFF8;
  if (v4)
  {
    v6 = sub_1D3277660();
  }

  else
  {
    v6 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v25 = v3;
  v27 = v3 & 0xC000000000000001;
  v28 = -v6;
  v7 = 4;
  do
  {
    v4 = v28 + v7 == 4;
    if (v28 + v7 == 4)
    {
      break;
    }

    v8 = v7 - 4;
    if (v27)
    {
      v9 = MEMORY[0x1D38B45D0](v7 - 4, v3);
    }

    else
    {
      if (v8 >= *(v26 + 16))
      {
        goto LABEL_29;
      }

      v9 = *(v3 + 8 * v7);
    }

    v10 = v9;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    if (a2 >> 62)
    {
      if (v8 == sub_1D3277660())
      {
LABEL_27:

        return 1;
      }
    }

    else if (v8 == *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_27;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x1D38B45D0](v7 - 4, a2);
    }

    else
    {
      if (v8 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_30;
      }

      v11 = *(a2 + 8 * v7);
    }

    v12 = v11;
    result = [v10 location];
    if (!result)
    {
      goto LABEL_36;
    }

    v14 = result;
    [result coordinate];
    v16 = v15;
    v18 = v17;

    result = [v12 location];
    if (!result)
    {
      __break(1u);
LABEL_36:
      __break(1u);
      return result;
    }

    v19 = result;
    [result coordinate];
    v21 = v20;
    v23 = v22;

    Distance = GEOCoordinateGetDistance(v16, v18, v21, v23);
    ++v7;
    v3 = v25;
  }

  while (Distance < 400.0);
  return v4;
}

uint64_t sub_1D3163610(uint64_t a1)
{
  v2 = sub_1D3277A50();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C9D8, &qword_1D328C1B8);
    v9 = sub_1D32776D0();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v33 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    v31 = v8;
    v32 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v13 * v10, v2);
      sub_1D3166A78(&qword_1EC75C9E0, MEMORY[0x1E696A1C0], MEMORY[0x1E696A1C8]);
      v15 = sub_1D3277060();
      v16 = -1 << *(v9 + 32);
      v17 = v15 & ~v16;
      v18 = v17 >> 6;
      v19 = *(v36 + 8 * (v17 >> 6));
      v20 = 1 << v17;
      if (((1 << v17) & v19) != 0)
      {
        v21 = ~v16;
        do
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v17 * v13, v2);
          sub_1D3166A78(&qword_1EC75C9E8, MEMORY[0x1E696A1C0], MEMORY[0x1E696A1D0]);
          v23 = sub_1D32770A0();
          v24 = *v14;
          (*v14)(v6, v2);
          if (v23)
          {
            v24(v37, v2);
            v11 = v22;
            v8 = v31;
            goto LABEL_4;
          }

          v17 = (v17 + 1) & v21;
          v18 = v17 >> 6;
          v19 = *(v36 + 8 * (v17 >> 6));
          v20 = 1 << v17;
          v11 = v22;
        }

        while (((1 << v17) & v19) != 0);
        v8 = v31;
      }

      v25 = v37;
      *(v36 + 8 * v18) = v20 | v19;
      result = (*v32)(*(v9 + 48) + v17 * v13, v25, v2);
      v27 = *(v9 + 16);
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (v28)
      {
        break;
      }

      *(v9 + 16) = v29;
LABEL_4:
      v10 = v34 + 1;
      if (v34 + 1 == v8)
      {
        return v9;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

id sub_1D3163934(unint64_t a1)
{
  v80 = a1;
  v1 = sub_1D3277A10();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v84 = &v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D32779F0();
  v85 = *(v4 - 8);
  v86 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v81 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D3277A70();
  v82 = *(v6 - 8);
  v83 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D3277A80();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D3276D30();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC75BFD8 != -1)
  {
    swift_once();
  }

  v17 = sub_1D3276C40();
  __swift_project_value_buffer(v17, qword_1EC75C728);
  v18 = sub_1D3276C50();
  v74 = v2;
  v75 = v1;
  v76 = v10;
  v77 = v9;
  v21 = v18;
  v23 = v22;
  sub_1D3276B90();
  swift_allocObject();
  sub_1D3276B80();
  _s14CachedRouteSetCMa(0);
  sub_1D3166A78(&unk_1EC75C9B0, _s14CachedRouteSetCMa, &unk_1D328C13C);
  v78 = v21;
  v79 = v23;
  sub_1D3276B70();

  v24 = v87;
  (*(v14 + 16))(v16, v87 + OBJC_IVAR____TtCE10NavigationCSo21MNCommuteRouteManagerP33_99F1AC21CCCBC7D75393AC0CA2EE644A14CachedRouteSet_date, v13);
  sub_1D3276CF0();
  (*(v14 + 8))(v16, v13);
  sub_1D3277AC0();
  if (qword_1EC75BFE0 != -1)
  {
    swift_once();
  }

  if ((sub_1D3277AB0() & 1) == 0)
  {
    if (qword_1EC75BFE8 != -1)
    {
      swift_once();
    }

    v28 = sub_1D3276F80();
    __swift_project_value_buffer(v28, qword_1EC75C750);
    v29 = sub_1D3276F60();
    v30 = sub_1D3277380();
    v31 = v30;
    if (os_log_type_enabled(v29, v30))
    {
      v32 = swift_slowAlloc();
      v72 = v32;
      v73 = swift_slowAlloc();
      v89[0] = v73;
      *v32 = 136315138;
      sub_1D3277A60();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C9C0, &qword_1D328C1B0);
      sub_1D3277A50();
      v80 = v24;
      LODWORD(v71) = v31;
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_1D328BC80;
      sub_1D3277A20();
      sub_1D3277A30();
      sub_1D3277A40();
      sub_1D3163610(v33);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v34 = v81;
      sub_1D32779E0();
      v35 = v12;
      v36 = v84;
      sub_1D3277A00();
      sub_1D32769D0();

      (*(v74 + 8))(v36, v75);
      (*(v85 + 8))(v34, v86);
      (*(v82 + 8))(v8, v83);
      sub_1D3166A78(&qword_1EC75C9C8, MEMORY[0x1E696A218], MEMORY[0x1E696A210]);
      v37 = v77;
      sub_1D3277A90();
      (*(v76 + 8))(v35, v37);
      v38 = sub_1D312BA30(v87, v88, v89);

      v39 = v72;
      *(v72 + 4) = v38;
      _os_log_impl(&dword_1D311E000, v29, v71, "Found a cached route set but it is too old. Age: %s", v39, 0xCu);
      v40 = v73;
      __swift_destroy_boxed_opaque_existential_0(v73);
      MEMORY[0x1D38B6000](v40, -1, -1);
      MEMORY[0x1D38B6000](v39, -1, -1);
    }

    sub_1D31422C8(v78, v79);

    return 0;
  }

  v25 = sub_1D3126084(0, &qword_1EC75C9D0, 0x1E696ACD0);
  type metadata accessor for MNCommuteRouteSet(v25);
  v26 = *(v24 + OBJC_IVAR____TtCE10NavigationCSo21MNCommuteRouteManagerP33_99F1AC21CCCBC7D75393AC0CA2EE644A14CachedRouteSet_routeSetData);
  v27 = *(v24 + OBJC_IVAR____TtCE10NavigationCSo21MNCommuteRouteManagerP33_99F1AC21CCCBC7D75393AC0CA2EE644A14CachedRouteSet_routeSetData + 8);
  sub_1D3166AC0(v26, v27);
  v19 = sub_1D32773C0();
  result = sub_1D31422C8(v26, v27);
  if (!v19)
  {
    __break(1u);
    goto LABEL_42;
  }

  v41 = [v19 routes];
  sub_1D3126084(0, &unk_1EC75BDC8, 0x1E69A1C68);
  v42 = sub_1D32771A0();

  if (!(v42 >> 62))
  {
    if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_18;
    }

LABEL_34:

    if (qword_1EC75BFE8 == -1)
    {
      goto LABEL_35;
    }

    goto LABEL_40;
  }

  if (!sub_1D3277660())
  {
    goto LABEL_34;
  }

LABEL_18:
  if ((v42 & 0xC000000000000001) == 0)
  {
    if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v43 = *(v42 + 32);
      goto LABEL_21;
    }

    __break(1u);
LABEL_40:
    swift_once();
LABEL_35:
    v65 = sub_1D3276F80();
    __swift_project_value_buffer(v65, qword_1EC75C750);
    v62 = sub_1D3276F60();
    v66 = sub_1D3277390();
    if (os_log_type_enabled(v62, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&dword_1D311E000, v62, v66, "Found a cached route set but it has no route.", v67, 2u);
      MEMORY[0x1D38B6000](v67, -1, -1);
    }

LABEL_37:

    sub_1D31422C8(v78, v79);

    return 0;
  }

  v43 = MEMORY[0x1D38B45D0](0, v42);
LABEL_21:
  v44 = v43;

  result = [v44 waypoints];
  if (result)
  {
    v45 = result;
    sub_1D3126084(0, &qword_1EC75BD88, 0x1E69A1CC8);
    v46 = sub_1D32771A0();

    LOBYTE(v45) = sub_1D3163390(v80, v46);

    if (v45)
    {
      if (qword_1EC75BFE8 != -1)
      {
        swift_once();
      }

      v47 = sub_1D3276F80();
      __swift_project_value_buffer(v47, qword_1EC75C750);
      v48 = sub_1D3276F60();
      v49 = sub_1D32773B0();
      v50 = v49;
      if (os_log_type_enabled(v48, v49))
      {
        v51 = swift_slowAlloc();
        v71 = v51;
        v73 = swift_slowAlloc();
        v89[0] = v73;
        *v51 = 136315138;
        sub_1D3277A60();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C9C0, &qword_1D328C1B0);
        sub_1D3277A50();
        v72 = v44;
        v70 = v50;
        v69 = v48;
        v80 = v24;
        v52 = swift_allocObject();
        *(v52 + 16) = xmmword_1D328BC80;
        sub_1D3277A20();
        sub_1D3277A30();
        sub_1D3277A40();
        sub_1D3163610(v52);
        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v53 = v81;
        sub_1D32779E0();
        v54 = v12;
        v55 = v84;
        sub_1D3277A00();
        sub_1D32769D0();

        (*(v74 + 8))(v55, v75);
        (*(v85 + 8))(v53, v86);
        (*(v82 + 8))(v8, v83);
        sub_1D3166A78(&qword_1EC75C9C8, MEMORY[0x1E696A218], MEMORY[0x1E696A210]);
        v56 = v77;
        sub_1D3277A90();
        (*(v76 + 8))(v54, v56);
        v57 = sub_1D312BA30(v87, v88, v89);

        v58 = v71;
        *(v71 + 1) = v57;
        v59 = v69;
        _os_log_impl(&dword_1D311E000, v69, v70, "Returning cached route set with age of %s.", v58, 0xCu);
        v60 = v73;
        __swift_destroy_boxed_opaque_existential_0(v73);
        MEMORY[0x1D38B6000](v60, -1, -1);
        MEMORY[0x1D38B6000](v58, -1, -1);

        sub_1D31422C8(v78, v79);
      }

      else
      {

        sub_1D31422C8(v78, v79);
      }

      return v19;
    }

    if (qword_1EC75BFE8 != -1)
    {
      swift_once();
    }

    v61 = sub_1D3276F80();
    __swift_project_value_buffer(v61, qword_1EC75C750);
    v62 = sub_1D3276F60();
    v63 = sub_1D3277380();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&dword_1D311E000, v62, v63, "Found a cached route set but waypoints don't match.", v64, 2u);
      MEMORY[0x1D38B6000](v64, -1, -1);
    }

    goto LABEL_37;
  }

LABEL_42:
  __break(1u);
  return result;
}

void sub_1D31649C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C4F0, &qword_1D328B580);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v34 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v33 - v6;
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v33 - v8;
  if (*(a1 + OBJC_IVAR____TtC10Navigation29CommuteRouteRequestParameters_purpose))
  {
    v10 = 14;
  }

  else
  {
    v10 = 13;
  }

  v11 = 1;
  if (!*(a1 + OBJC_IVAR____TtC10Navigation29CommuteRouteRequestParameters_purpose))
  {
    v11 = 2;
  }

  v33 = v11;
  v12 = [objc_allocWithZone(MEMORY[0x1E69A1D30]) init];
  sub_1D3126084(0, &qword_1EC75BD88, 0x1E69A1CC8);
  v13 = sub_1D3277190();
  [v12 setWaypoints_];

  [v12 setRequestType_];
  [v12 setTransportType_];
  [v12 setMaxRouteCount_];
  v14 = [objc_opt_self() defaultRouteAttributesForTransportType_];
  if (!v14)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v14;
  [v12 setRouteAttributes_];

  sub_1D3276D10();
  v16 = sub_1D3276D30();
  v17 = *(v16 - 8);
  (*(v17 + 56))(v9, 0, 1, v16);
  v18 = sub_1D32770B0();
  v19 = *(v17 + 48);
  v20 = 0;
  if (v19(v9, 1, v16) != 1)
  {
    v20 = sub_1D3276CD0();
    (*(v17 + 8))(v9, v16);
  }

  v21 = objc_allocWithZone(MNFamiliarRouteProvider);
  v22 = [v21 initWithPurpose:v33 reason:v18 date:v20];

  [v12 setFamiliarRouteProvider_];
  [v12 setRequireFamiliarRoute_];
  [v12 setIsDodgeballOutsideOfMapsEnroute_];
  sub_1D315EDF4(a1 + OBJC_IVAR____TtC10Navigation29CommuteRouteRequestParameters_predictedEntryDate, v7);
  if (v19(v7, 1, v16) == 1)
  {
    v23 = 0;
  }

  else
  {
    v23 = sub_1D3276CD0();
    (*(v17 + 8))(v7, v16);
  }

  [v12 setDodgeballOutsideOfMapsPredictedEntryDate_];

  v24 = a1 + OBJC_IVAR____TtC10Navigation29CommuteRouteRequestParameters_predictedExitDate;
  v25 = v34;
  sub_1D315EDF4(v24, v34);
  if (v19(v25, 1, v16) == 1)
  {
    v26 = 0;
  }

  else
  {
    v26 = sub_1D3276CD0();
    (*(v17 + 8))(v25, v16);
  }

  [v12 setDodgeballOutsideOfMapsPredictedExitDate_];

  v27 = objc_allocWithZone(MEMORY[0x1E69A1B68]);
  v28 = sub_1D32770B0();
  v29 = [v27 initWithProxiedApplicationBundleId_];

  [v12 setAuditToken_];
  v30 = [objc_opt_self() sharedService];
  if (!v30)
  {
    goto LABEL_19;
  }

  v31 = v30;
  v32 = [v30 defaultTraits];

  if (v32)
  {
    [v32 setRequestMode_];
    [v12 setTraits_];

    return;
  }

LABEL_20:
  __break(1u);
}

id sub_1D3164EF4()
{
  v0 = sub_1D3276D30();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D3276E00();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 0;
  if (GEOConfigGetBOOL())
  {
    v8 = [objc_allocWithZone(MNTraceRecorder) init];
    v9 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
    v10 = sub_1D32770B0();
    [v9 setDateFormat_];

    sub_1D3276DF0();
    v11 = sub_1D3276DD0();
    (*(v5 + 8))(v7, v4);
    [v9 setTimeZone_];

    sub_1D3276D10();
    v12 = sub_1D3276CD0();
    (*(v1 + 8))(v3, v0);
    v13 = [v9 stringFromDate_];

    v14 = sub_1D32770C0();
    v16 = v15;

    v23[0] = 0x5F6574756D6D6F43;
    v23[1] = 0xE800000000000000;
    MEMORY[0x1D38B3FE0](v14, v16);

    v17 = objc_opt_self();
    v18 = sub_1D32770B0();

    v19 = [v17 commuteTraceExtension];
    if (!v19)
    {
      sub_1D32770C0();
      v19 = sub_1D32770B0();
    }

    v20 = [v17 commuteTracesDirectoryPath];
    if (!v20)
    {
      sub_1D32770C0();
      v20 = sub_1D32770B0();
    }

    v21 = [v17 tracePathForTraceName:v18 extension:v19 directoryPath:v20];

    if (!v21)
    {
      sub_1D32770C0();
      v21 = sub_1D32770B0();
    }

    [v8 startWritingTraceToPath:v21 traceType:3 withErrorHandler:0];
  }

  return v8;
}

void sub_1D316529C(uint64_t a1)
{
  v70[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1D3276B60();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D3276C40();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D3276D30();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = objc_opt_self();
  v70[0] = 0;
  v15 = [v14 archivedDataWithRootObject:a1 requiringSecureCoding:1 error:v70];
  v16 = v70[0];
  if (v15)
  {
    v64 = v7;
    v65 = v9;
    v66 = v3;
    v67 = v5;
    v68 = v2;
    v69 = v6;
    v17 = sub_1D3276C80();
    v19 = v18;

    sub_1D3276D10();
    _s14CachedRouteSetCMa(0);
    v20 = swift_allocObject();
    (*(v11 + 32))(&v20[OBJC_IVAR____TtCE10NavigationCSo21MNCommuteRouteManagerP33_99F1AC21CCCBC7D75393AC0CA2EE644A14CachedRouteSet_date], v13, v10);
    v21 = &v20[OBJC_IVAR____TtCE10NavigationCSo21MNCommuteRouteManagerP33_99F1AC21CCCBC7D75393AC0CA2EE644A14CachedRouteSet_routeSetData];
    *v21 = v17;
    v21[1] = v19;
    sub_1D3276BD0();
    swift_allocObject();
    sub_1D3166AC0(v17, v19);
    sub_1D3276BC0();
    sub_1D3276BA0();
    v70[0] = v20;
    sub_1D3166A78(&qword_1EC75CA00, _s14CachedRouteSetCMa, &unk_1D328C114);
    v22 = sub_1D3276BB0();
    v59 = v11;
    v62 = v22;
    v63 = v23;
    if (qword_1EC75BFE8 != -1)
    {
      swift_once();
    }

    v34 = sub_1D3276F80();
    v35 = __swift_project_value_buffer(v34, qword_1EC75C750);

    v61 = v35;
    v36 = sub_1D3276F60();
    LODWORD(v35) = sub_1D32773B0();

    v60 = v35;
    if (os_log_type_enabled(v36, v35))
    {
      v37 = swift_slowAlloc();
      v57 = v37;
      v58 = swift_slowAlloc();
      v70[0] = v58;
      *v37 = 136315138;
      v38 = v59;
      (*(v59 + 16))(v13, &v20[OBJC_IVAR____TtCE10NavigationCSo21MNCommuteRouteManagerP33_99F1AC21CCCBC7D75393AC0CA2EE644A14CachedRouteSet_date], v10);
      sub_1D3166A78(&qword_1EC75CA08, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
      v56 = v36;
      v39 = sub_1D3277890();
      v41 = v40;
      (*(v38 + 8))(v13, v10);
      v42 = sub_1D312BA30(v39, v41, v70);

      v44 = v56;
      v43 = v57;
      *(v57 + 1) = v42;
      v45 = v43;
      _os_log_impl(&dword_1D311E000, v44, v60, "Caching commute route with date: %s", v43, 0xCu);
      v46 = v58;
      __swift_destroy_boxed_opaque_existential_0(v58);
      MEMORY[0x1D38B6000](v46, -1, -1);
      MEMORY[0x1D38B6000](v45, -1, -1);
      sub_1D31422C8(v17, v19);
    }

    else
    {
      sub_1D31422C8(v17, v19);
    }

    v47 = v69;
    v49 = v62;
    v48 = v63;
    if (qword_1EC75BFD8 != -1)
    {
      swift_once();
    }

    v50 = __swift_project_value_buffer(v47, qword_1EC75C728);
    sub_1D3276C90();
    v51 = v65;
    v52 = v64 + 16;
    (*(v64 + 16))(v65, v50, v47);
    v53 = v67;
    sub_1D3276B50();
    sub_1D3276B40();
    sub_1D3276C10();
    v54 = (v66 + 8);
    sub_1D31422C8(v49, v48);
    (*v54)(v53, v68);
    (*(v52 - 8))(v51, v47);
  }

  else
  {
    v24 = v16;
    v25 = sub_1D3276BF0();

    swift_willThrow();
    if (qword_1EC75BFE8 != -1)
    {
      swift_once();
    }

    v26 = sub_1D3276F80();
    __swift_project_value_buffer(v26, qword_1EC75C750);
    v27 = v25;
    v28 = sub_1D3276F60();
    v29 = sub_1D3277390();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 138412290;
      v32 = v25;
      v33 = _swift_stdlib_bridgeErrorToNSError();
      *(v30 + 4) = v33;
      *v31 = v33;
      _os_log_impl(&dword_1D311E000, v28, v29, "Error encoding route for caching. Error: %@", v30, 0xCu);
      sub_1D3125FBC(v31, &qword_1EC75C5B0, &unk_1D328C300);
      MEMORY[0x1D38B6000](v31, -1, -1);
      MEMORY[0x1D38B6000](v30, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_1D3165B64(uint64_t a1)
{
  *(v1 + 112) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C5F0, &qword_1D328C5F0);
  *(v1 + 120) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D3165C00, 0, 0);
}

uint64_t sub_1D3165C00()
{
  v37 = v0;
  if (qword_1EC75BFE8 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v2 = sub_1D3276F80();
  __swift_project_value_buffer(v2, qword_1EC75C750);
  v3 = v1;
  v4 = sub_1D3276F60();
  v5 = sub_1D32773B0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[14];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 136315138;
    v9 = *(v6 + OBJC_IVAR____TtC10Navigation29CommuteRouteRequestParameters_cacheOptions);
    v36[0] = v8;
    v36[1] = v9;
    v10 = CommuteRouteRequestParameters.CacheOptions.description.getter();
    v12 = sub_1D312BA30(v10, v11, v36);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_1D311E000, v4, v5, "Requesting commute routes with cache options: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1D38B6000](v8, -1, -1);
    MEMORY[0x1D38B6000](v7, -1, -1);
  }

  v13 = v0[14];
  v14 = *(v13 + OBJC_IVAR____TtC10Navigation29CommuteRouteRequestParameters_cacheOptions);
  if (!v14)
  {
    v18 = 2;
    goto LABEL_12;
  }

  if ((v14 & 2) != 0)
  {
    v15 = sub_1D3163934(*(v13 + OBJC_IVAR____TtC10Navigation29CommuteRouteRequestParameters_waypoints));
    if (v15)
    {
      v16 = v15;
      v17 = 0;
LABEL_13:

      v20 = v0[1];

      return v20(v16, v17);
    }
  }

  if ((v14 & 1) == 0)
  {
    v18 = 3;
LABEL_12:
    sub_1D3166B68();
    v16 = swift_allocError();
    *v19 = v18;
    v17 = 1;
    goto LABEL_13;
  }

  v22 = v0[14];
  sub_1D31649C0(v22);
  v24 = v23;
  v0[16] = v23;
  v0[17] = sub_1D3164EF4();
  v25 = swift_allocObject();
  v0[18] = v25;
  *(v25 + 16) = 0;
  v26 = swift_allocObject();
  v0[19] = v26;
  *(v26 + 16) = 0;
  v27 = swift_allocObject();
  v0[20] = v27;
  *(v27 + 16) = 0;
  v28 = swift_allocObject();
  *(v28 + 16) = v22;
  *(v28 + 24) = v25;
  v0[6] = sub_1D3166BBC;
  v0[7] = v28;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1D3127B00;
  v0[5] = &block_descriptor_4;
  v29 = _Block_copy(v0 + 2);
  v30 = v22;

  [v24 setRequestCallback_];
  _Block_release(v29);
  v0[13] = 0;
  v31 = swift_allocObject();
  v0[21] = v31;
  *(v31 + 16) = 0;
  v32 = swift_task_alloc();
  v0[22] = v32;
  v32[2] = v31;
  v32[3] = v0 + 13;
  v32[4] = v24;
  v32[5] = v26;
  v32[6] = v27;
  v32[7] = v30;
  v33 = swift_task_alloc();
  v0[23] = v33;
  *(v33 + 16) = v0 + 13;
  *(v33 + 24) = v31 + 16;
  v34 = swift_task_alloc();
  v0[24] = v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C9A8, &qword_1D328C190);
  *v34 = v0;
  v34[1] = sub_1D316607C;

  return MEMORY[0x1EEE6DE18](v0 + 11, &unk_1D328C188, v32, sub_1D3166C98, v33, 0, 0, v35);
}

uint64_t sub_1D316607C()
{

  if (v0)
  {
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1D31661F8, 0, 0);
  }
}

uint64_t sub_1D31661F8()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  if ((v2 & 1) == 0)
  {
    sub_1D316529C(v1);
    sub_1D3166D7C(v1);
  }

  v3 = *(v0 + 136);
  if (v3)
  {
    v4 = *(v0 + 144);
    swift_beginAccess();
    v5 = *(v4 + 16);
    if (v5)
    {
      v7 = *(v0 + 152);
      v6 = *(v0 + 160);
      v8 = *(v0 + 120);
      v17 = v8;
      v9 = *(*(v0 + 112) + OBJC_IVAR____TtC10Navigation29CommuteRouteRequestParameters_waypoints);
      v10 = sub_1D3277280();
      (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
      v11 = swift_allocObject();
      v11[2] = 0;
      v11[3] = 0;
      v11[4] = v3;
      v11[5] = v5;
      v11[6] = v7;
      v11[7] = v6;
      v11[8] = v9;
      v12 = v5;

      v13 = v3;

      sub_1D314F750(0, 0, v17, &unk_1D328C1A0, v11);
    }

    else
    {
    }
  }

  v14 = *(v0 + 104);

  v15 = *(v0 + 8);

  return v15(v1, v2);
}

unint64_t sub_1D3166424()
{
  result = qword_1EC75C7C8;
  if (!qword_1EC75C7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC75C7C8);
  }

  return result;
}

unint64_t sub_1D316647C()
{
  result = qword_1EC75C7D0;
  if (!qword_1EC75C7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC75C7D0);
  }

  return result;
}

unint64_t sub_1D31664D4()
{
  result = qword_1EC75C7D8;
  if (!qword_1EC75C7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC75C7D8);
  }

  return result;
}

unint64_t sub_1D316652C()
{
  result = qword_1EC75C7E0;
  if (!qword_1EC75C7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC75C7E0);
  }

  return result;
}

unint64_t sub_1D3166584()
{
  result = qword_1EC75C7E8;
  if (!qword_1EC75C7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC75C7E8);
  }

  return result;
}

unint64_t sub_1D31665DC()
{
  result = qword_1EC75C7F0;
  if (!qword_1EC75C7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC75C7F0);
  }

  return result;
}

void sub_1D3166668(uint64_t a1)
{
  sub_1D314A874(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t _s24CommuteRouteManagerErrorOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s24CommuteRouteManagerErrorOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1D316690C(uint64_t a1)
{
  result = sub_1D3276D30();
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

unint64_t sub_1D31669D0()
{
  result = qword_1EC75C958;
  if (!qword_1EC75C958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC75C958);
  }

  return result;
}

unint64_t sub_1D3166A24()
{
  result = qword_1EC75C968;
  if (!qword_1EC75C968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC75C968);
  }

  return result;
}

uint64_t sub_1D3166A78(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_1D3166AC0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }

  return result;
}

unint64_t sub_1D3166B14()
{
  result = qword_1EC75C990;
  if (!qword_1EC75C990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC75C990);
  }

  return result;
}

unint64_t sub_1D3166B68()
{
  result = qword_1EC75C9A0;
  if (!qword_1EC75C9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC75C9A0);
  }

  return result;
}

uint64_t sub_1D3166BC4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1D3125778;

  return sub_1D3160EC4(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1D3166CA0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1D3125778;

  return sub_1D3161804(a1, v4, v5, v6, v7, v8, v9, v10);
}

unint64_t sub_1D3166D88()
{
  result = qword_1EC75C9F8;
  if (!qword_1EC75C9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC75C9F8);
  }

  return result;
}

void sub_1D3166E14(void *a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v41 = MEMORY[0x1E69E7CC0];
  v7 = [a1 notification];
  v8 = &selRef_dateWithTimeInterval_sinceDate_;
  if (v7)
  {
    v9 = v7;
    if (qword_1EC75BFE8 != -1)
    {
      swift_once();
    }

    v10 = sub_1D3276F80();
    __swift_project_value_buffer(v10, qword_1EC75C750);
    v11 = v9;
    v12 = sub_1D3276F60();
    v13 = sub_1D32773B0();
    v14 = &selRef__stateTypeForState_;
    if (os_log_type_enabled(v12, v13))
    {
      v37 = ObjectType;
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v38 = v16;
      *v15 = 136315138;
      v17 = [v11 bannerId];

      if (!v17)
      {
        goto LABEL_18;
      }

      v18 = sub_1D32770C0();
      v20 = v19;

      v21 = sub_1D312BA30(v18, v20, &v38);

      *(v15 + 4) = v21;
      _os_log_impl(&dword_1D311E000, v12, v13, "Received new commute notification: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x1D38B6000](v16, -1, -1);
      MEMORY[0x1D38B6000](v15, -1, -1);

      ObjectType = v37;
      v8 = &selRef_dateWithTimeInterval_sinceDate_;
      v14 = &selRef__stateTypeForState_;
    }

    else
    {
    }

    v22 = [v11 v14[274]];
    if (v22)
    {
      v23 = v22;
      v24 = sub_1D32770C0();
      v26 = v25;

      v27 = [v11 eventInfo];
      if (v27)
      {
        v28 = v27;
        v29 = sub_1D3276C80();
        v31 = v30;

        v32 = _s16NotificationInfoCMa();
        v33 = objc_allocWithZone(v32);
        v34 = &v33[OBJC_IVAR___MNCommuteRouteSetInternalNotificationInfo_bannerID];
        *v34 = v24;
        v34[1] = v26;
        v35 = &v33[OBJC_IVAR___MNCommuteRouteSetInternalNotificationInfo_eventInfo];
        *v35 = v29;
        v35[1] = v31;
        v39.receiver = v33;
        v39.super_class = v32;
        objc_msgSendSuper2(&v39, v8[422]);
        MEMORY[0x1D38B4040]();
        if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D32771B0();
        }

        sub_1D32771D0();

        goto LABEL_13;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_18:
    __break(1u);
    return;
  }

LABEL_13:
  if (a2)
  {

    sub_1D3140300(v36);
  }

  *&v3[OBJC_IVAR___MNCommuteRouteSetInternalInfo_displayedBannerInfo] = v41;
  v40.receiver = v3;
  v40.super_class = ObjectType;
  objc_msgSendSuper2(&v40, v8[422]);
}

uint64_t sub_1D3167140(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_1D31671D0(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D3167294()
{
  result = qword_1EC75CA18;
  if (!qword_1EC75CA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC75CA18);
  }

  return result;
}

unint64_t sub_1D31672EC()
{
  result = qword_1EC75CA20;
  if (!qword_1EC75CA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC75CA20);
  }

  return result;
}

unint64_t sub_1D3167344()
{
  result = qword_1EC75CA28;
  if (!qword_1EC75CA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC75CA28);
  }

  return result;
}

uint64_t sub_1D31673F8()
{
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_1D3167498;
  v3 = *(v0 + 16);

  return sub_1D3167C08(v3);
}

uint64_t sub_1D3167498(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v5 = *v2;
  *(v5 + 32) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D31675F8, 0, 0);
  }

  else
  {
    v6 = *(v5 + 8);

    return v6(a1);
  }
}

uint64_t sub_1D31675F8()
{
  if (qword_1EC75BFF0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = sub_1D3276F80();
  __swift_project_value_buffer(v2, qword_1EC75CA30);
  v3 = v1;
  v4 = sub_1D3276F60();
  v5 = sub_1D3277390();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 32);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1D311E000, v4, v5, "Error requesting commute routes: %@", v8, 0xCu);
    sub_1D3168698(v9);
    MEMORY[0x1D38B6000](v9, -1, -1);
    MEMORY[0x1D38B6000](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12(0);
}

void sub_1D3167790(uint64_t a1, void *a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75CA48, &unk_1D328C328);
    sub_1D3277220();
  }

  else if (a2)
  {
    v6 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75CA48, &unk_1D328C328);
    sub_1D3277230();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D3167840()
{
  sub_1D3277980();
  MEMORY[0x1D38B4850](0);
  return sub_1D32779B0();
}

uint64_t sub_1D31678AC(uint64_t a1)
{
  sub_1D3277980();
  MEMORY[0x1D38B4850](0);
  return sub_1D32779B0();
}

id sub_1D31678EC(void *a1)
{
  if (qword_1EC75BFF0 != -1)
  {
    swift_once();
  }

  v2 = sub_1D3276F80();
  __swift_project_value_buffer(v2, qword_1EC75CA30);
  v3 = sub_1D3276F60();
  v4 = sub_1D3277390();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1D311E000, v3, v4, "Connection to CommuteRouteServer interrupted.", v5, 2u);
    MEMORY[0x1D38B6000](v5, -1, -1);
  }

  return [a1 invalidate];
}

void sub_1D31679E4()
{
  if (qword_1EC75BFF0 != -1)
  {
    swift_once();
  }

  v0 = sub_1D3276F80();
  __swift_project_value_buffer(v0, qword_1EC75CA30);
  oslog = sub_1D3276F60();
  v1 = sub_1D3277390();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_1D311E000, oslog, v1, "Connection to CommuteRouteServer invalidated.", v2, 2u);
    MEMORY[0x1D38B6000](v2, -1, -1);
  }
}

id sub_1D3167ACC(void *a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a2 + 16);
  *(a2 + 16) = a1;

  return a1;
}

void sub_1D3167B20(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_1D3167B88()
{
  v0 = sub_1D3276F80();
  __swift_allocate_value_buffer(v0, qword_1EC75CA30);
  __swift_project_value_buffer(v0, qword_1EC75CA30);
  return sub_1D3276F70();
}

uint64_t sub_1D3167C08(uint64_t a1)
{
  v1[49] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75CA48, &unk_1D328C328);
  v1[50] = v2;
  v1[51] = *(v2 - 8);
  v1[52] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D3167CD4, 0, 0);
}

uint64_t sub_1D3167CD4()
{
  v1 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
  v2 = sub_1D32770B0();
  v3 = [v1 initWithMachServiceName:v2 options:0];
  v0[53] = v3;

  v4 = [objc_opt_self() interfaceWithProtocol_];
  [v3 setRemoteObjectInterface_];

  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  v0[22] = sub_1D3168710;
  v0[23] = v5;
  v0[18] = MEMORY[0x1E69E9820];
  v0[19] = 1107296256;
  v0[20] = sub_1D3122E0C;
  v0[21] = &block_descriptor_5;
  v6 = _Block_copy(v0 + 18);
  v7 = v3;

  [v7 setInterruptionHandler_];
  _Block_release(v6);
  v0[28] = sub_1D31679E4;
  v0[29] = 0;
  v0[24] = MEMORY[0x1E69E9820];
  v0[25] = 1107296256;
  v0[26] = sub_1D3122E0C;
  v0[27] = &block_descriptor_8;
  v8 = _Block_copy(v0 + 24);
  [v7 setInvalidationHandler_];
  _Block_release(v8);
  [v7 activate];
  v9 = swift_allocObject();
  v0[54] = v9;
  *(v9 + 16) = 0;
  v10 = (v9 + 16);
  v0[34] = sub_1D3168718;
  v0[35] = v9;
  v0[30] = MEMORY[0x1E69E9820];
  v0[31] = 1107296256;
  v0[32] = sub_1D3167B20;
  v0[33] = &block_descriptor_14_0;
  v11 = _Block_copy(v0 + 30);

  v12 = [v7 remoteObjectProxyWithErrorHandler_];
  _Block_release(v11);
  sub_1D3277610();
  swift_unknownObjectRelease();
  swift_beginAccess();
  v13 = *v10;
  if (v13)
  {
    v14 = v13;
    if (qword_1EC75BFF0 != -1)
    {
      swift_once();
    }

    v15 = sub_1D3276F80();
    __swift_project_value_buffer(v15, qword_1EC75CA30);
    v16 = v13;
    v17 = sub_1D3276F60();
    v18 = sub_1D3277390();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      v21 = v13;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 4) = v22;
      *v20 = v22;
      _os_log_impl(&dword_1D311E000, v17, v18, "Error getting remoteObjectProxy: %@", v19, 0xCu);
      sub_1D3168698(v20);
      MEMORY[0x1D38B6000](v20, -1, -1);
      MEMORY[0x1D38B6000](v19, -1, -1);
    }

LABEL_16:
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_0(v0 + 36);

    v32 = v0[53];
    [v32 setInvalidationHandler_];
    [v32 invalidate];

    v33 = v0[1];

    return v33();
  }

  sub_1D312BEE8((v0 + 36), (v0 + 40));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75CA50, &qword_1D328C338);
  if ((swift_dynamicCast() & 1) == 0)
  {
    if (qword_1EC75BFF0 != -1)
    {
      swift_once();
    }

    v28 = sub_1D3276F80();
    __swift_project_value_buffer(v28, qword_1EC75CA30);
    v29 = sub_1D3276F60();
    v30 = sub_1D3277390();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_1D311E000, v29, v30, "Unknown error getting remoteObjectProxy.", v31, 2u);
      MEMORY[0x1D38B6000](v31, -1, -1);
    }

    sub_1D3168720();
    swift_allocError();
    goto LABEL_16;
  }

  v23 = v0[51];
  v24 = v0[52];
  v25 = v0[50];
  v35 = v0[49];
  v26 = v0[47];
  v0[55] = v26;
  v0[2] = v0;
  v0[7] = (v0 + 48);
  v0[3] = sub_1D3168414;
  swift_continuation_init();
  v0[17] = v25;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 14);
  type metadata accessor for MNCommuteRouteSet(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C348, &qword_1D328ACD0);
  sub_1D3277210();
  (*(v23 + 32))(boxed_opaque_existential_1, v24, v25);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D3167790;
  v0[13] = &block_descriptor_17;
  [v26 requestCommuteRoutesWith:v35 completionHandler:?];
  (*(v23 + 8))(boxed_opaque_existential_1, v25);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D3168414()
{
  v1 = *(*v0 + 48);
  *(*v0 + 448) = v1;
  if (v1)
  {
    v2 = sub_1D31685DC;
  }

  else
  {
    v2 = sub_1D3168524;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D3168524()
{
  v1 = v0[53];
  v2 = v0[48];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 36);

  [v1 setInvalidationHandler_];
  [v1 invalidate];

  v3 = v0[1];

  return v3(v2);
}