void sub_264A7F604(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  if (sub_264B40704() == a1 && v10 == a2)
  {

    goto LABEL_5;
  }

  v11 = sub_264B41AA4();

  if (v11)
  {
LABEL_5:
    v12 = *(v4 + OBJC_IVAR____TtC16ScreenSharingKit42SpringBoardUIServicesBackedSceneInteractor_featureFlagPrimitives + 24);
    v13 = *(v4 + OBJC_IVAR____TtC16ScreenSharingKit42SpringBoardUIServicesBackedSceneInteractor_featureFlagPrimitives + 32);
    __swift_project_boxed_opaque_existential_1((v4 + OBJC_IVAR____TtC16ScreenSharingKit42SpringBoardUIServicesBackedSceneInteractor_featureFlagPrimitives), v12);
    LOBYTE(v27) = 1;
    if (((*(v13 + 8))(&v27, v12, v13) & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  if (sub_264B406E4() == a1 && v14 == a2)
  {
  }

  else
  {
    v15 = sub_264B41AA4();

    if ((v15 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  if (_UISolariumEnabled())
  {
LABEL_11:
    sub_264AEF040(a1, a2, a3, a4);
    v20 = v19;
    v22 = v21;
    v23 = *(v5 + OBJC_IVAR____TtC16ScreenSharingKit42SpringBoardUIServicesBackedSceneInteractor_session);

    sub_2649DEF18(v20, v22);
    sub_2649DEF6C(v20, v22);
    v24 = sub_264B41014();

    sub_2649DEF18(v20, v22);

    v25 = sub_264B40014();
    sub_2649DEF6C(v20, v22);
    [v23 handleLaunchEventOfType:v24 payload:v25];

    sub_2649DEF6C(v20, v22);
    return;
  }

LABEL_12:
  if (qword_27FF88408 != -1)
  {
    swift_once();
  }

  v16 = sub_264B40964();
  __swift_project_value_buffer(v16, qword_27FF8AE70);
  oslog = sub_264B40944();
  v17 = sub_264B41484();
  if (os_log_type_enabled(oslog, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_2649C6000, oslog, v17, "Unknown launch payload event, ignoring", v18, 2u);
    MEMORY[0x266749940](v18, -1, -1);
  }
}

void sub_264A7FAA8(unsigned __int8 *a1)
{
  v2 = *a1;
  sub_264B40A04();
  v3 = v42;
  v4 = v43;
  if (v43)
  {
    if (v43 == 1)
    {
LABEL_3:
      if (qword_27FF88408 != -1)
      {
        swift_once();
      }

      v5 = sub_264B40964();
      __swift_project_value_buffer(v5, qword_27FF8AE70);
      sub_2649E127C(v42, v43);
      v6 = sub_264B40944();
      v7 = sub_264B41494();
      sub_2649E12C0(v42, v43);
      if (!os_log_type_enabled(v6, v7))
      {

        sub_2649E12C0(v42, v43);
        return;
      }

      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v41[0] = v9;
      *v8 = 136446210;
      v42 = v3;
      v43 = v4;
      v10 = sub_264B41064();
      v12 = sub_2649CC004(v10, v11, v41);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_2649C6000, v6, v7, "Received window capture event while in state %{public}s, unable to handle, ignoring", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x266749940](v9, -1, -1);
      v13 = v8;
      goto LABEL_41;
    }

    if (v42 > 2)
    {
      if (v42 == 3)
      {
        sub_2649E12C0(0, 2u);
        v14 = 3;
        v15 = 2;
      }

      else
      {
        sub_2649E12C0(0, 2u);
        if (v42 == 4)
        {
          v14 = 4;
        }

        else
        {
          v14 = 5;
        }

        v15 = 2;
      }
    }

    else
    {
      if (!v42)
      {
        sub_2649E12C0(0, 2u);
        sub_2649E12C0(0, 2u);
        goto LABEL_3;
      }

      sub_2649E12C0(0, 2u);
      if (v42 == 1)
      {
        v14 = 1;
      }

      else
      {
        v14 = 2;
      }

      v15 = 2;
    }
  }

  else
  {
    sub_2649E12C0(0, 2u);
    v14 = v42;
    v15 = 0;
  }

  sub_2649E12C0(v14, v15);
  if (qword_27FF88408 != -1)
  {
    swift_once();
  }

  v16 = sub_264B40964();
  __swift_project_value_buffer(v16, qword_27FF8AE70);
  v17 = sub_264B40944();
  v18 = sub_264B41484();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v42 = v20;
    *v19 = 136446210;
    LOBYTE(v41[0]) = v2;
    v21 = sub_264B41064();
    v23 = sub_2649CC004(v21, v22, &v42);

    *(v19 + 4) = v23;
    _os_log_impl(&dword_2649C6000, v17, v18, "Received window capture event %{public}s, processing...", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x266749940](v20, -1, -1);
    MEMORY[0x266749940](v19, -1, -1);
  }

  if (v2 <= 1)
  {
    if (v2)
    {
      [*(v1 + OBJC_IVAR____TtC16ScreenSharingKit42SpringBoardUIServicesBackedSceneInteractor_session) noteScreenshotCaptured];
      return;
    }

    v6 = sub_264B40944();
    v24 = sub_264B414B4();
    if (!os_log_type_enabled(v6, v24))
    {
      goto LABEL_42;
    }

    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v42 = v26;
    *v25 = 136446210;
    LOBYTE(v41[0]) = 0;
    v27 = sub_264B41064();
    v29 = sub_2649CC004(v27, v28, &v42);

    *(v25 + 4) = v29;
    _os_log_impl(&dword_2649C6000, v6, v24, "Unrecognized window capture event: %{public}s, ignoring", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v26);
    MEMORY[0x266749940](v26, -1, -1);
    v13 = v25;
    goto LABEL_41;
  }

  if (v2 != 2)
  {
    v33 = OBJC_IVAR____TtC16ScreenSharingKit42SpringBoardUIServicesBackedSceneInteractor_screenRecordingAssertions;
    swift_beginAccess();
    v34 = *(v1 + v33);
    if (v34 >> 62)
    {
      if (sub_264B41884())
      {
        goto LABEL_33;
      }
    }

    else if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_33:
      v35 = swift_beginAccess();
      sub_264A800C8(v35, v36);
      v38 = v37;
      swift_endAccess();
      [v38 invalidate];
      swift_unknownObjectRelease();
      return;
    }

    v6 = sub_264B40944();
    v39 = sub_264B414A4();
    if (!os_log_type_enabled(v6, v39))
    {
LABEL_42:

      return;
    }

    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&dword_2649C6000, v6, v39, "Received window streaming did end event without paired did start, this is a bug, ignoring", v40, 2u);
    v13 = v40;
LABEL_41:
    MEMORY[0x266749940](v13, -1, -1);
    goto LABEL_42;
  }

  v30 = [*(v1 + OBJC_IVAR____TtC16ScreenSharingKit42SpringBoardUIServicesBackedSceneInteractor_session) acquireScreenRecordingAssertion];
  v31 = OBJC_IVAR____TtC16ScreenSharingKit42SpringBoardUIServicesBackedSceneInteractor_screenRecordingAssertions;
  v32 = swift_beginAccess();
  MEMORY[0x266748430](v32);
  if (*((*(v1 + v31) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v31) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_264B41174();
  }

  sub_264B41194();
  swift_endAccess();
}

void sub_264A800C8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2 >> 62;
  if (!v4)
  {
    if (*((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

    goto LABEL_10;
  }

  if (sub_264B41884())
  {
    if (sub_264B41884())
    {
LABEL_3:
      if ((v3 & 0xC000000000000001) == 0)
      {
        if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

        swift_unknownObjectRetain();
        if (!v4)
        {
          goto LABEL_6;
        }

        goto LABEL_12;
      }

LABEL_11:
      MEMORY[0x266748A70](0, v3);
      if (!v4)
      {
LABEL_6:
        v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_13;
      }

LABEL_12:
      v5 = sub_264B41884();
LABEL_13:
      if (v5)
      {
        sub_264AD3EC4(0, 1);
        return;
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

LABEL_17:
  __break(1u);
}

uint64_t sub_264A80218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, unint64_t *a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  sub_2649CB4C8(a6, a4, a5, MEMORY[0x277CBCE48]);
  return sub_264B40AB4();
}

uint64_t sub_264A802AC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_264A80380;

  return MEMORY[0x2822007B8]();
}

uint64_t sub_264A80380()
{

  return MEMORY[0x2822009F8](sub_2649F5338, 0, 0);
}

void sub_264A8047C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_2649D8B90(0, &qword_27FF8A8C0, 0x277D82BB8);
  if (sub_264B415E4())
  {
    if (qword_27FF88408 != -1)
    {
      swift_once();
    }

    v8 = sub_264B40964();
    __swift_project_value_buffer(v8, qword_27FF8AE70);

    v9 = sub_264B40944();
    v10 = sub_264B41484();
    if (!os_log_type_enabled(v9, v10))
    {

LABEL_12:
      sub_264A7E1B4(a3);
      v26 = sub_264AAABDC(v25);

      v27 = [a1 displayHardwareIdentifier];
      if (v27)
      {
        v28 = v27;
        v29 = sub_264B41044();
        v31 = v30;
      }

      else
      {
        v29 = 0;
        v31 = 0;
      }

      v32 = (v4 + OBJC_IVAR____TtC16ScreenSharingKit42SpringBoardUIServicesBackedSceneInteractor_targetedDisplayIdentifier);
      *v32 = v29;
      v32[1] = v31;

      if (a2 <= 3)
      {
        switch(a2)
        {
          case 1:
            LOBYTE(a2) = 0;
            goto LABEL_35;
          case 2:

            v26 = 1;
            goto LABEL_35;
          case 3:

            v26 = 2;
LABEL_31:
            LOBYTE(a2) = 2;
            goto LABEL_35;
        }
      }

      else
      {
        if (a2 <= 5)
        {

          if (a2 == 4)
          {
            LOBYTE(a2) = 2;
            v26 = 3;
          }

          else
          {
            LOBYTE(a2) = 2;
            v26 = 4;
          }

          goto LABEL_35;
        }

        if (a2 == 6)
        {

          LOBYTE(a2) = 2;
          v26 = 5;
          goto LABEL_35;
        }

        if (a2 == 7)
        {
          LOBYTE(a2) = 1;
LABEL_35:
          v35 = v26;
          v36 = a2;
          sub_264B409F4();
          sub_2649E12C0(v26, a2);
          return;
        }
      }

      v26 = 0;
      goto LABEL_31;
    }

    oslog = v4;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v35 = v12;
    *v11 = 136446466;
    v13 = NSStringFromSBUIContinuitySessionStep();

    if (v13)
    {
      v14 = sub_264B41044();
      v16 = v15;

      v17 = sub_2649CC004(v14, v16, &v35);

      *(v11 + 4) = v17;
      *(v11 + 12) = 2082;
      v18 = sub_264B41424();
      v20 = sub_2649CC004(v18, v19, &v35);

      *(v11 + 14) = v20;
      _os_log_impl(&dword_2649C6000, v9, v10, "Continuity session moved to step: %{public}s because: %{public}s", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266749940](v12, -1, -1);
      MEMORY[0x266749940](v11, -1, -1);

      v4 = oslog;
      goto LABEL_12;
    }

    __break(1u);
  }

  else
  {
    if (qword_27FF88408 != -1)
    {
      swift_once();
    }

    v21 = sub_264B40964();
    __swift_project_value_buffer(v21, qword_27FF8AE70);
    osloga = sub_264B40944();
    v22 = sub_264B41494();
    if (os_log_type_enabled(osloga, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v35 = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_2649CC004(0xD000000000000027, 0x8000000264B5D8C0, &v35);
      _os_log_impl(&dword_2649C6000, osloga, v22, "Received %s from session that isn't ours, ignoring", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x266749940](v24, -1, -1);
      MEMORY[0x266749940](v23, -1, -1);
    }

    else
    {
    }
  }
}

void sub_264A8094C(uint64_t a1@<X0>, unint64_t a2@<X1>, char *a3@<X8>)
{
  if (sub_264B41044() == a1 && v6 == a2)
  {

LABEL_8:

    v9 = 2;
    goto LABEL_9;
  }

  v8 = sub_264B41AA4();

  if (v8)
  {
    goto LABEL_8;
  }

  if (sub_264B41044() == a1 && v10 == a2)
  {

LABEL_17:

    v9 = 1;
    goto LABEL_9;
  }

  v12 = sub_264B41AA4();

  if (v12)
  {
    goto LABEL_17;
  }

  if (a1 == 0x6E496172656D6163 && a2 == 0xEB00000000657355 || (sub_264B41AA4() & 1) != 0)
  {

    v9 = 4;
  }

  else if (a1 == 0x6F68706F7263696DLL && a2 == 0xEF6573556E49656ELL || (sub_264B41AA4() & 1) != 0)
  {

    v9 = 3;
  }

  else
  {
    if (qword_27FF883E0 != -1)
    {
      swift_once();
    }

    v13 = sub_264B40964();
    __swift_project_value_buffer(v13, qword_27FFA71B8);

    v14 = sub_264B40944();
    v15 = sub_264B41494();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v19 = v17;
      *v16 = 136446210;
      v18 = sub_2649CC004(a1, a2, &v19);

      *(v16 + 4) = v18;
      _os_log_impl(&dword_2649C6000, v14, v15, "Unknown SceneInteractor blocked reason: %{public}s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x266749940](v17, -1, -1);
      MEMORY[0x266749940](v16, -1, -1);
    }

    else
    {
    }

    v9 = 0;
  }

LABEL_9:
  *a3 = v9;
}

void sub_264A80CBC(uint64_t a1, unint64_t a2, unint64_t a3)
{
  sub_2649D8B90(0, &qword_27FF8A8C0, 0x277D82BB8);
  if (sub_264B415E4())
  {
    if (qword_27FF88408 != -1)
    {
      swift_once();
    }

    v5 = sub_264B40964();
    __swift_project_value_buffer(v5, qword_27FF8AE70);
    v6 = sub_264B40944();
    v7 = sub_264B41484();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v26[0] = v9;
      *v8 = 136446466;
      type metadata accessor for BSInterfaceOrientation(0);
      v10 = sub_264B41064();
      v12 = sub_2649CC004(v10, v11, v26);

      *(v8 + 4) = v12;
      *(v8 + 12) = 2082;
      type metadata accessor for BSInterfaceOrientationMask(0);
      v13 = sub_264B41064();
      v15 = sub_2649CC004(v13, v14, v26);

      *(v8 + 14) = v15;
      _os_log_impl(&dword_2649C6000, v6, v7, "Continuity session did update orientation information: %{public}s, supportedOrientations: %{public}s", v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266749940](v9, -1, -1);
      MEMORY[0x266749940](v8, -1, -1);
    }

    if (a2 >= 5)
    {
      v16 = 0;
    }

    else
    {
      v16 = a2;
    }

    if ((~a3 & 0x1E) != 0)
    {
      if ((~a3 & 0x1A) != 0)
      {
        if ((~a3 & 0x18) != 0)
        {
          v22 = (a3 >> 1) & 3;
        }

        else
        {
          v22 = (a3 >> 1) & 3 | 0xC;
        }

        v23 = v22 | (a3 >> 1) & 8;
        v24 = (v22 >> 2) & 1;
        if ((a3 & 8) == 0)
        {
          LODWORD(v24) = 1;
        }

        if (v24)
        {
          v17 = v23;
        }

        else
        {
          v17 = v23 | 4;
        }
      }

      else
      {
        v17 = 13;
      }
    }

    else
    {
      v17 = 15;
    }

    LOBYTE(v26[0]) = v16;
    v26[1] = v17;
    sub_264B409F4();
  }

  else
  {
    if (qword_27FF88408 != -1)
    {
      swift_once();
    }

    v18 = sub_264B40964();
    __swift_project_value_buffer(v18, qword_27FF8AE70);
    oslog = sub_264B40944();
    v19 = sub_264B41494();
    if (os_log_type_enabled(oslog, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v26[0] = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_2649CC004(0xD000000000000059, 0x8000000264B5D860, v26);
      _os_log_impl(&dword_2649C6000, oslog, v19, "Received %s from session that isn't ours, ignoring", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x266749940](v21, -1, -1);
      MEMORY[0x266749940](v20, -1, -1);
    }

    else
    {
    }
  }
}

double block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t objectdestroyTm_1()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_264A811CC(uint64_t (*a1)(uint64_t))
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

char *sub_264A8124C(void *a1, _BYTE *a2)
{
  v13[3] = &type metadata for SpringBoardUIServicesBackedLaunchPayloadProcessor;
  v13[4] = &off_28765EC78;
  v4 = &a2[OBJC_IVAR____TtC16ScreenSharingKit42SpringBoardUIServicesBackedSceneInteractor_targetedDisplayIdentifier];
  *v4 = 0;
  v4[1] = 0;
  v5 = OBJC_IVAR____TtC16ScreenSharingKit42SpringBoardUIServicesBackedSceneInteractor_session;
  *&a2[v5] = [objc_allocWithZone(MEMORY[0x277D67CC0]) init];
  v6 = OBJC_IVAR____TtC16ScreenSharingKit42SpringBoardUIServicesBackedSceneInteractor_stateSubject;
  v11 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A8A8, &unk_264B4C8D8);
  swift_allocObject();
  *&a2[v6] = sub_264B40A14();
  v7 = OBJC_IVAR____TtC16ScreenSharingKit42SpringBoardUIServicesBackedSceneInteractor_orientationSubject;
  LOBYTE(v11) = 0;
  v12 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF889F0, &unk_264B449D0);
  swift_allocObject();
  *&a2[v7] = sub_264B40A14();
  *&a2[OBJC_IVAR____TtC16ScreenSharingKit42SpringBoardUIServicesBackedSceneInteractor_customBlockedReasons] = MEMORY[0x277D84FA0];
  a2[OBJC_IVAR____TtC16ScreenSharingKit42SpringBoardUIServicesBackedSceneInteractor_hasNotifiedSpringBoardOfConfiguredHIDServices] = 0;
  *&a2[OBJC_IVAR____TtC16ScreenSharingKit42SpringBoardUIServicesBackedSceneInteractor_screenRecordingAssertions] = MEMORY[0x277D84F90];
  sub_2649CB5C0(v13, &a2[OBJC_IVAR____TtC16ScreenSharingKit42SpringBoardUIServicesBackedSceneInteractor_launchPayloadProcessor]);
  sub_2649CB5C0(a1, &a2[OBJC_IVAR____TtC16ScreenSharingKit42SpringBoardUIServicesBackedSceneInteractor_featureFlagPrimitives]);
  v10.receiver = a2;
  v10.super_class = type metadata accessor for SpringBoardUIServicesBackedSceneInteractor();
  v8 = objc_msgSendSuper2(&v10, sel_init);
  [*(v8 + OBJC_IVAR____TtC16ScreenSharingKit42SpringBoardUIServicesBackedSceneInteractor_session) setDelegate_];
  __swift_destroy_boxed_opaque_existential_0(a1);
  __swift_destroy_boxed_opaque_existential_0(v13);
  return v8;
}

uint64_t sub_264A813F4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
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

uint64_t sub_264A8141C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_264A81464(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_16ScreenSharingKit11AngelServerC5StateO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_264A814EC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFF9 && *(a1 + 8))
  {
    return (*a1 + 2147483641);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 6;
  if (v4 >= 8)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_264A81548(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF9)
  {
    *result = 0;
    *result = a2 - 2147483641;
    if (a3 >= 0x7FFFFFF9)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF9)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 6;
    }
  }

  return result;
}

unint64_t sub_264A815AC()
{
  result = qword_27FF8A8C8;
  if (!qword_27FF8A8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A8C8);
  }

  return result;
}

BOOL sub_264A81600(uint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 > 2)
  {
    if (v2 > 4)
    {
      if (v2 == 5)
      {
        return v3 == 5;
      }

      if (v2 == 6)
      {
        return v3 == 6;
      }
    }

    else
    {
      if (v2 == 3)
      {
        return v3 == 3;
      }

      if (v2 == 4)
      {
        return v3 == 4;
      }
    }

    return v3 >= 7;
  }

  if (v2)
  {
    if (v2 == 1)
    {
      return v3 == 1;
    }

    if (v2 == 2)
    {
      return v3 == 2;
    }

    return v3 >= 7;
  }

  return !v3;
}

BOOL sub_264A816B0(unint64_t *a1, unint64_t *a2)
{
  v2 = *a2;
  if (*a2 >= 6)
  {
    v2 = 6;
  }

  return *a1 < v2;
}

BOOL sub_264A816D0(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  if (*a1 >= 6)
  {
    v2 = 6;
  }

  return *a2 >= v2;
}

BOOL sub_264A816F0(unint64_t *a1, unint64_t *a2)
{
  v2 = *a2;
  if (*a2 >= 6)
  {
    v2 = 6;
  }

  return *a1 >= v2;
}

BOOL sub_264A81710(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  if (*a1 >= 6)
  {
    v2 = 6;
  }

  return *a2 < v2;
}

uint64_t CaptureUIInteraction.interactionState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction_interactionState;
  result = swift_beginAccess();
  v5 = *(v3 + 8);
  *a1 = *v3;
  *(a1 + 8) = v5;
  return result;
}

void CaptureUIInteraction.interactionState.setter(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = v1 + OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction_interactionState;
  swift_beginAccess();
  v5 = *v4;
  v6 = *(v4 + 8);
  *v4 = v2;
  *(v4 + 8) = v3;
  if (v3 == 1)
  {
    if (v2 != 0.0)
    {
      if (v5 == 0.0)
      {
        v6 = 0;
      }

      if (v6 == 1)
      {
        return;
      }

LABEL_14:
      v7 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction__view);
      if (v7)
      {
        v8 = v7;
        sub_264A818B8(v8);
      }

      return;
    }

    if (v5 != 0.0)
    {
      LOBYTE(v6) = 0;
    }

    if ((v6 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v2 != v5)
    {
      LOBYTE(v6) = 1;
    }

    if (v6)
    {
      goto LABEL_14;
    }
  }
}

void *CaptureUIInteraction.view.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction__view);
  v2 = v1;
  return v1;
}

uint64_t sub_264A818B8(void *a1)
{
  v2 = v1;
  v4 = v1 + OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction_interactionState;
  swift_beginAccess();
  v5 = *v4;
  if (*(v4 + 8) != 1)
  {
    if (qword_27FF883E0 != -1)
    {
      swift_once();
    }

    v17 = sub_264B40964();
    __swift_project_value_buffer(v17, qword_27FFA71B8);
    v18 = sub_264B40944();
    v19 = sub_264B41474();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_2649C6000, v18, v19, "Capture switched to draw", v20, 2u);
      MEMORY[0x266749940](v20, -1, -1);
    }

    v21 = *(v2 + OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction_controlEventProducer + 8);
    ObjectType = swift_getObjectType();
    (*(v21 + 16))(0, ObjectType, v21);
    v23 = *(v2 + OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction_drawEventProducer);
    v24 = *(v2 + OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction_drawEventProducer + 8);
    v25 = swift_getObjectType();
    v26 = *(v24 + 8);
    v27 = *(v26 + 16);
    v28 = a1;
    v27(a1, v25, v26);
    v29 = *(v23 + OBJC_IVAR____TtC16ScreenSharingKit23UIViewDrawEventProducer_displayScale);
    *(v23 + OBJC_IVAR____TtC16ScreenSharingKit23UIViewDrawEventProducer_displayScale) = v5;
    if (v29 != v5 && *(v23 + OBJC_IVAR____TtC16ScreenSharingKit23UIViewDrawEventProducer_localDrawingView) && *(v23 + OBJC_IVAR____TtC16ScreenSharingKit23UIViewDrawEventProducer_captureView))
    {
      sub_264AF3F5C();
    }

    v30 = swift_unknownObjectRetain();
    sub_264A86A18(v30, v2);
    return swift_unknownObjectRelease();
  }

  if (v5 != 0.0)
  {
    if (qword_27FF883E0 != -1)
    {
      swift_once();
    }

    v6 = sub_264B40964();
    __swift_project_value_buffer(v6, qword_27FFA71B8);
    v7 = sub_264B40944();
    v8 = sub_264B41474();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_2649C6000, v7, v8, "Capture switched to control", v9, 2u);
      MEMORY[0x266749940](v9, -1, -1);
    }

    v10 = *(v2 + OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction_drawEventProducer + 8);
    v11 = swift_getObjectType();
    (*(*(v10 + 8) + 16))(0, v11);
    v12 = *(v2 + OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction_controlEventProducer + 8);
    v13 = swift_getObjectType();
    v14 = *(v12 + 16);
    v15 = a1;
    v14(a1, v13, v12);
    v16 = swift_unknownObjectRetain();
    sub_264A86D3C(v16, v2, v13, v12);
    return swift_unknownObjectRelease();
  }

  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v32 = sub_264B40964();
  __swift_project_value_buffer(v32, qword_27FFA71B8);
  v33 = sub_264B40944();
  v34 = sub_264B41474();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_2649C6000, v33, v34, "Capture Paused Locally", v35, 2u);
    MEMORY[0x266749940](v35, -1, -1);
  }

  v36 = *(v2 + OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction_drawEventProducer + 8);
  v37 = swift_getObjectType();
  (*(*(v36 + 8) + 16))(0, v37);
  v38 = *(v2 + OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction_controlEventProducer + 8);
  v39 = swift_getObjectType();
  return (*(v38 + 16))(0, v39, v38);
}

void (*CaptureUIInteraction.interactionState.modify(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction_interactionState;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  v7 = *(v6 + 8);
  *(v4 + 24) = *v6;
  *(v4 + 32) = v7;
  return sub_264A81DC8;
}

void sub_264A81DC8(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(v1 + 24);
  v3 = *(v1 + 40) + *(v1 + 48);
  v4 = *(v1 + 32);
  v5 = *v3;
  v6 = *(v3 + 8);
  *v3 = v2;
  *(v3 + 8) = v4;
  if (v4)
  {
    if (v2 != 0.0)
    {
      if (v5 == 0.0)
      {
        v6 = 0;
      }

      if (v6)
      {
        goto LABEL_16;
      }

LABEL_14:
      v7 = *(*(v1 + 40) + OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction__view);
      if (v7)
      {
        v8 = v1;
        v9 = v7;
        sub_264A818B8(v9);

        v1 = v8;
      }

      goto LABEL_16;
    }

    if (v5 != 0.0)
    {
      v6 = 0;
    }

    if ((v6 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v2 != v5)
    {
      v6 = 1;
    }

    if (v6)
    {
      goto LABEL_14;
    }
  }

LABEL_16:

  free(v1);
}

uint64_t CaptureUIInteraction.deviceOrientation.getter()
{
  v1 = OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction_deviceOrientation;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t CaptureUIInteraction.deviceOrientation.setter(uint64_t a1)
{
  v2 = v1;
  v4 = sub_264B40F14();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = (&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction_deviceOrientation;
  swift_beginAccess();
  *(v2 + v9) = a1;
  sub_2649CB2F0();
  *v8 = sub_264B41554();
  (*(v5 + 104))(v8, *MEMORY[0x277D85200], v4);
  LOBYTE(a1) = sub_264B40F34();
  result = (*(v5 + 8))(v8, v4);
  if (a1)
  {
    v11 = *(v2 + OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction_drawEventProducer + 8);
    ObjectType = swift_getObjectType();
    (*(*(v11 + 8) + 40))(*(v2 + v9), ObjectType);
    v13 = *(v2 + OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction_controlEventProducer + 8);
    v14 = swift_getObjectType();
    return (*(v13 + 40))(*(v2 + v9), v14, v13);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t (*CaptureUIInteraction.deviceOrientation.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x40uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = sub_264B40F14();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  v9 = OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction_deviceOrientation;
  v5[6] = v8;
  v5[7] = v9;
  swift_beginAccess();
  return sub_264A82168;
}

void sub_264A82168(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  v4 = v3[6];
  if ((a2 & 1) == 0)
  {
    v5 = v3[4];
    v6 = v3[5];
    sub_2649CB2F0();
    *v4 = sub_264B41554();
    (*(v6 + 104))(v4, *MEMORY[0x277D85200], v5);
    v7 = sub_264B40F34();
    (*(v6 + 8))(v4, v5);
    if ((v7 & 1) == 0)
    {
      __break(1u);
      return;
    }

    v4 = v3[6];
    v8 = v3[7];
    v9 = v3[3];
    v10 = *(v9 + OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction_drawEventProducer + 8);
    ObjectType = swift_getObjectType();
    (*(*(v10 + 8) + 40))(*(v9 + v8), ObjectType);
    v12 = *(v9 + OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction_controlEventProducer + 8);
    v13 = swift_getObjectType();
    (*(v12 + 40))(*(v9 + v8), v13, v12);
  }

  free(v4);

  free(v3);
}

uint64_t CaptureUIInteraction.availableHardwareGestures.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264B40A84();

  return v1;
}

uint64_t sub_264A82320@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264B40A84();

  *a2 = v4;
  return result;
}

uint64_t sub_264A823A0(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_264B40A94();
}

uint64_t sub_264A82434(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8AA10, &qword_264B4CBB0);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A908, &qword_264B4CA78);
  sub_264B40A64();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t CaptureUIInteraction.isActive.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264B40A84();

  return v1;
}

uint64_t sub_264A8262C@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264B40A84();

  *a2 = v4;
  return result;
}

uint64_t sub_264A826AC(char *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_264B40A94();
}

uint64_t sub_264A82738(void *a1, uint64_t *a2, uint64_t *a3)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  sub_264B40A54();
  return swift_endAccess();
}

uint64_t sub_264A827B0(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  sub_264B40A54();
  return swift_endAccess();
}

uint64_t sub_264A8282C(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF89F00, &unk_264B48E00);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88D98, &qword_264B45870);
  sub_264B40A64();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

id CaptureUIInteraction.__allocating_init(session:interruptionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v51 = a2;
  v52 = a3;
  v50 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v53 = &v45 - v5;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88D98, &qword_264B45870);
  v6 = *(v49 - 8);
  MEMORY[0x28223BE20](v49, v7);
  v9 = &v45 - v8;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A908, &qword_264B4CA78);
  v10 = *(v47 - 8);
  MEMORY[0x28223BE20](v47, v11);
  v13 = &v45 - v12;
  v14 = sub_264AF0CF8();
  v15 = type metadata accessor for UHIDBackedHIDEventObserverPrimitivesVendor();
  v16 = swift_allocObject();
  type metadata accessor for UIViewControlEventProducer(0);
  v17 = swift_allocObject();
  v58[3] = v15;
  v58[4] = &protocol witness table for UHIDBackedHIDEventObserverPrimitivesVendor;
  v58[0] = v16;
  *(v17 + 16) = 0u;
  *(v17 + 32) = 0u;
  *(v17 + 48) = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A070, &qword_264B53F20);
  swift_allocObject();
  v18 = v14;
  *(v17 + 64) = sub_264B409D4();
  *(v17 + 72) = 0;
  sub_264B400F4();
  v19 = OBJC_IVAR____TtC16ScreenSharingKit26UIViewControlEventProducer_serviceIDForSenderID;
  *(v17 + v19) = sub_264A24848(MEMORY[0x277D84F90]);
  v20 = *(v17 + 16);
  *(v17 + 16) = 0;

  sub_2649CB5C0(v58, v17 + OBJC_IVAR____TtC16ScreenSharingKit26UIViewControlEventProducer_eventObserverPrimitivesVendor);
  *(v17 + OBJC_IVAR____TtC16ScreenSharingKit26UIViewControlEventProducer_telemetry) = v14;
  v46 = v18;
  sub_264B401E4();
  sub_264B401F4();
  sub_264B401F4();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A920, &qword_264B4CAD0);
  v22 = sub_264B40654();
  v56 = v21;
  v57 = &protocol witness table for <A> EventObserver<A>;
  v55[0] = v22;
  sub_264B40664();
  sub_264B40674();
  __swift_mutable_project_boxed_opaque_existential_1(v55, v21);
  (off_28765F3D8)();
  sub_2649CB5C0(v55, v17 + OBJC_IVAR____TtC16ScreenSharingKit26UIViewControlEventProducer_eventObserver);
  v23 = sub_264AF8C70();
  v24 = v56;
  v25 = v57;
  __swift_mutable_project_boxed_opaque_existential_1(v55, v56);
  (v25[9])(v23, v24, v25);
  __swift_destroy_boxed_opaque_existential_0(v55);
  __swift_destroy_boxed_opaque_existential_0(v58);
  v26 = [objc_allocWithZone(type metadata accessor for UIViewDrawEventProducer(0)) init];
  v27 = v48;
  v28 = objc_allocWithZone(v48);
  v29 = &v28[OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction_interactionState];
  *v29 = 0x4000000000000000;
  v29[8] = 0;
  *&v28[OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction_deviceOrientation] = 0;
  v30 = OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction__availableHardwareGestures;
  v58[0] = MEMORY[0x277D84F90];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A928, &qword_264B4CAD8);
  sub_264B40A44();
  (*(v10 + 32))(&v28[v30], v13, v47);
  v31 = OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction__isActive;
  LOBYTE(v58[0]) = 0;
  sub_264B40A44();
  (*(v6 + 32))(&v28[v31], v9, v49);
  *&v28[OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction__view] = 0;
  *&v28[OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction_interactionEventSubscription] = 0;
  v32 = OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction_bufferedSendingContinuation;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A940, &qword_264B4CAE0);
  (*(*(v33 - 8) + 56))(&v28[v32], 1, 1, v33);
  *&v28[OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction_session] = v50;
  v34 = &v28[OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction_drawEventProducer];
  *v34 = v26;
  *(v34 + 1) = &off_28765F158;
  v35 = &v28[OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction_controlEventProducer];
  *v35 = v17;
  v35[1] = &off_28765F340;
  v36 = &v28[OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction_interruptionHandler];
  v37 = v52;
  *v36 = v51;
  v36[1] = v37;
  *&v28[OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction_telemetry] = v14;
  v54.receiver = v28;
  v54.super_class = v27;
  v38 = v46;

  v39 = objc_msgSendSuper2(&v54, sel_init);
  v40 = sub_264B41274();
  v41 = v53;
  (*(*(v40 - 8) + 56))(v53, 1, 1, v40);
  v42 = swift_allocObject();
  v42[2] = 0;
  v42[3] = 0;
  v42[4] = v39;
  v43 = v39;
  sub_264A10C20(0, 0, v41, &unk_264B4CAF0, v42);

  return v43;
}

uint64_t sub_264A82FDC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2649CD850;

  return sub_264A8306C();
}

uint64_t sub_264A8306C()
{
  v1[2] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190);
  v1[3] = swift_task_alloc();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88F98, &unk_264B468F0);
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v1[6] = *(v3 + 64);
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264A83184, 0, 0);
}

uint64_t sub_264A83184()
{
  *(v0 + 72) = sub_264B41244();
  *(v0 + 80) = sub_264B41234();
  v2 = sub_264B411C4();

  return MEMORY[0x2822009F8](sub_264A8321C, v2, v1);
}

uint64_t sub_264A8321C()
{

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264B40A84();

  return MEMORY[0x2822009F8](sub_264A832D4, 0, 0);
}

uint64_t sub_264A832D4()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction_session);
  *(v0 + 88) = v1;
  return MEMORY[0x2822009F8](sub_264A83300, v1, 0);
}

uint64_t sub_264A83300()
{
  sub_264A74A68(*(v0 + 64));
  *(v0 + 96) = 0;

  return MEMORY[0x2822009F8](sub_264A83390, 0, 0);
}

uint64_t sub_264A83390(uint64_t a1)
{
  v3 = v1[7];
  v2 = v1[8];
  v4 = v1[5];
  v6 = v1[3];
  v5 = v1[4];
  sub_264B41254();
  v7 = sub_264B41274();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v4 + 16))(v3, v2, v5);
  v9 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v10 = swift_allocObject();
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  *(v10 + 4) = v8;
  (*(v4 + 32))(&v10[v9], v3, v5);
  sub_264A10C20(0, 0, v6, &unk_264B4CBC8, v10);

  (*(v4 + 8))(v2, v5);

  v11 = v1[1];

  return v11();
}

uint64_t sub_264A83550()
{
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 96);
  v2 = sub_264B40964();
  __swift_project_value_buffer(v2, qword_27FFA71B8);
  v3 = v1;
  v4 = sub_264B40944();
  v5 = sub_264B41494();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 96);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_2649C6000, v4, v5, "Failed to activate session, interrupting: %{public}@", v7, 0xCu);
    sub_2649D04D4(v8, &unk_27FF89880, &unk_264B46B20);
    MEMORY[0x266749940](v8, -1, -1);
    MEMORY[0x266749940](v7, -1, -1);
  }

  *(v0 + 104) = sub_264B41234();
  v12 = sub_264B411C4();

  return MEMORY[0x2822009F8](sub_264A83710, v12, v11);
}

uint64_t sub_264A83710()
{
  v1 = *(v0 + 16);

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 113) = 0;
  v2 = v1;
  sub_264B40A94();

  return MEMORY[0x2822009F8](sub_264A837C4, 0, 0);
}

uint64_t sub_264A837C4()
{
  v1 = v0[12];
  (*(v0[2] + OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction_interruptionHandler))(v1);

  v2 = v0[1];

  return v2();
}

uint64_t CaptureUIInteraction.sendHardwareGesture(_:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A940, &qword_264B4CAE0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A960, &unk_264B58510);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v21 - v10;
  v12 = a1[1];
  v22 = *a1;
  v13 = a1[2];
  v14 = a1[3];
  v15 = OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction_bufferedSendingContinuation;
  swift_beginAccess();
  v16 = 1;
  if (!(*(v4 + 48))(v1 + v15, 1, v3))
  {
    (*(v4 + 16))(v7, v1 + v15, v3);
    v24 = &type metadata for SystemGestureEvent;
    v25 = &off_28765C718;
    v17 = swift_allocObject();
    v23 = v17;
    v18 = v22;
    v17[2] = v22;
    v17[3] = v12;
    v17[4] = v13;
    v17[5] = v14;
    sub_264A18774(v18, v12, v13, v14);
    sub_264B412A4();
    (*(v4 + 8))(v7, v3);
    v16 = 0;
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8A968, &qword_264B4CB00);
  (*(*(v19 - 8) + 56))(v11, v16, 1, v19);
  return sub_2649D04D4(v11, &qword_27FF8A960, &unk_264B58510);
}

uint64_t CaptureUIInteraction.invalidate()()
{
  v1[5] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A940, &qword_264B4CAE0);
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264A83B94, 0, 0);
}

uint64_t sub_264A83B94()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction_bufferedSendingContinuation;
  swift_beginAccess();
  if (!(*(v1 + 48))(v3 + v4, 1, v2))
  {
    v6 = v0[7];
    v5 = v0[8];
    v7 = v0[6];
    (*(v6 + 16))(v5, v3 + v4, v7);
    sub_264B412B4();
    (*(v6 + 8))(v5, v7);
  }

  v8 = *(v0[5] + OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction_session);
  v0[9] = v8;

  return MEMORY[0x2822009F8](sub_264A83CA0, v8, 0);
}

uint64_t sub_264A83CA0()
{
  sub_264A750BC();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_264A83D24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8AA18, &qword_264B4CBD0);
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8AA20, &unk_264B4CBD8);
  v5[11] = v7;
  v5[12] = *(v7 - 8);
  v5[13] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A5D8, &qword_264B4BB50);
  v5[14] = v8;
  v5[15] = *(v8 - 8);
  v5[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264A83EC0, 0, 0);
}

uint64_t sub_264A83EC0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 136) = Strong;
  if (Strong)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88F98, &unk_264B468F0);
    sub_264B412C4();
    v2 = MEMORY[0x277D85778];
    *(v0 + 144) = OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction_interruptionHandler;
    *(v0 + 224) = *v2;
    v3 = swift_task_alloc();
    *(v0 + 152) = v3;
    *v3 = v0;
    v3[1] = sub_264A840E0;
    v4 = *(v0 + 112);

    return MEMORY[0x2822003E8](v0 + 40, 0, 0, v4);
  }

  else
  {
    if (qword_27FF883E0 != -1)
    {
      swift_once();
    }

    v5 = sub_264B40964();
    __swift_project_value_buffer(v5, qword_27FFA71B8);
    v6 = sub_264B40944();
    v7 = sub_264B41474();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_2649C6000, v6, v7, "Interaction disappeared before activation event could be processed, ignoring", v8, 2u);
      MEMORY[0x266749940](v8, -1, -1);
    }

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_264A840E0()
{

  return MEMORY[0x2822009F8](sub_264A841DC, 0, 0);
}

uint64_t sub_264A841DC()
{
  v1 = v0[5];
  v0[20] = v1;
  if (v1 <= 1)
  {
    if (v1)
    {
      if (v1 == 1)
      {
        v0[22] = sub_264B41244();
        v0[23] = sub_264B41234();
        v2 = sub_264B411C4();
        v4 = v3;
        v5 = sub_264A84520;
LABEL_12:

        return MEMORY[0x2822009F8](v5, v2, v4);
      }

LABEL_11:
      sub_264A1EE08(v1);
      sub_264B41244();
      v0[21] = sub_264B41234();
      v2 = sub_264B411C4();
      v4 = v10;
      v5 = sub_264A84398;
      goto LABEL_12;
    }

LABEL_10:
    sub_264B41244();
    v0[27] = sub_264B41234();
    v2 = sub_264B411C4();
    v4 = v9;
    v5 = sub_264A84A20;
    goto LABEL_12;
  }

  if (v1 == 2)
  {
    goto LABEL_10;
  }

  if (v1 != 3)
  {
    goto LABEL_11;
  }

  v6 = v0[17];
  (*(v0[15] + 8))(v0[16], v0[14]);

  v7 = v0[1];

  return v7();
}

uint64_t sub_264A84398()
{
  v1 = *(v0 + 136);

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 228) = 0;
  v2 = v1;
  sub_264B40A94();

  return MEMORY[0x2822009F8](sub_264A8444C, 0, 0);
}

uint64_t sub_264A8444C()
{
  v1 = v0[20];
  (*(v0[17] + v0[18]))(v1);
  sub_264A794B4(v1);
  sub_264A794B4(v1);
  v2 = swift_task_alloc();
  v0[19] = v2;
  *v2 = v0;
  v2[1] = sub_264A840E0;
  v3 = v0[14];

  return MEMORY[0x2822003E8](v0 + 5, 0, 0, v3);
}

uint64_t sub_264A84520()
{

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264B40A84();

  return MEMORY[0x2822009F8](sub_264A845D8, 0, 0);
}

uint64_t sub_264A845D8()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 136);
  v3 = *(v0 + 104);
  v5 = *(v0 + 72);
  v4 = *(v0 + 80);
  v6 = *(v0 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8AA30, &qword_264B44EE0);
  (*(v5 + 104))(v4, v1, v6);
  *(swift_task_alloc() + 16) = v2;
  sub_264B412E4();

  v7 = swift_task_alloc();
  *(v0 + 192) = v7;
  *(v7 + 16) = v2;
  *(v7 + 24) = v3;
  v8 = swift_task_alloc();
  *(v0 + 200) = v8;
  *v8 = v0;
  v8[1] = sub_264A84764;

  return MEMORY[0x2822007B8]();
}

uint64_t sub_264A84764()
{

  return MEMORY[0x2822009F8](sub_264A8487C, 0, 0);
}

uint64_t sub_264A8487C()
{
  (*(v0[12] + 8))(v0[13], v0[11]);
  v0[26] = sub_264B41234();
  v2 = sub_264B411C4();

  return MEMORY[0x2822009F8](sub_264A84920, v2, v1);
}

uint64_t sub_264A84920()
{
  v1 = *(v0 + 136);

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 231) = 1;
  v2 = v1;
  sub_264B40A94();
  v3 = swift_task_alloc();
  *(v0 + 152) = v3;
  *v3 = v0;
  v3[1] = sub_264A840E0;
  v4 = *(v0 + 112);

  return MEMORY[0x2822003E8](v0 + 40, 0, 0, v4);
}

uint64_t sub_264A84A20()
{
  v1 = *(v0 + 136);

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 229) = 0;
  v2 = v1;
  sub_264B40A94();

  return MEMORY[0x2822009F8](sub_264A84AD4, 0, 0);
}

uint64_t sub_264A84AD4()
{
  sub_264A794B4(*(v0 + 160));
  v1 = swift_task_alloc();
  *(v0 + 152) = v1;
  *v1 = v0;
  v1[1] = sub_264A840E0;
  v2 = *(v0 + 112);

  return MEMORY[0x2822003E8](v0 + 40, 0, 0, v2);
}

uint64_t sub_264A84B84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8AA00, &unk_264B4CBA0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v12 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A940, &qword_264B4CAE0);
  v9 = *(v8 - 8);
  (*(v9 + 16))(v7, a1, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  v10 = OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction_bufferedSendingContinuation;
  swift_beginAccess();
  sub_264A87ADC(v7, a2 + v10);
  return swift_endAccess();
}

uint64_t sub_264A84CBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = a3;
  v30 = a2;
  v31 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8AA20, &unk_264B4CBD8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v26 - v7;
  v28 = &v26 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v26 - v13;
  v27 = &v26 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v18 = &v26 - v17;
  sub_264B41254();
  v19 = sub_264B41274();
  (*(*(v19 - 8) + 56))(v18, 0, 1, v19);
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v10 + 16))(v14, v31, v9);
  v21 = v3;
  (*(v4 + 16))(v8, v29, v3);
  v22 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v23 = (v11 + *(v4 + 80) + v22) & ~*(v4 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  (*(v10 + 32))(v24 + v22, v27, v9);
  (*(v4 + 32))(v24 + v23, v28, v21);
  *(v24 + ((v5 + v23 + 7) & 0xFFFFFFFFFFFFFFF8)) = v20;
  sub_2649F62D0(0, 0, v18, &unk_264B4CBF0, v24);

  return sub_2649D04D4(v18, &qword_27FF898C0, &unk_264B44190);
}

uint64_t sub_264A84FDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[19] = a5;
  v6[20] = a6;
  v6[18] = a4;
  v6[21] = type metadata accessor for ControlMessage(0);
  v6[22] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8AA40, &qword_264B4CBF8);
  v6[23] = v7;
  v6[24] = *(v7 - 8);
  v6[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264A850DC, 0, 0);
}

uint64_t sub_264A850DC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  sub_264B411E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8AA20, &unk_264B4CBD8);
  sub_264B412C4();
  swift_beginAccess();
  v0[26] = 0;
  v1 = swift_task_alloc();
  v0[27] = v1;
  *v1 = v0;
  v1[1] = sub_264A851EC;
  v2 = v0[23];

  return MEMORY[0x2822003E8](v0 + 2, 0, 0, v2);
}

uint64_t sub_264A851EC()
{

  return MEMORY[0x2822009F8](sub_264A852E8, 0, 0);
}

uint64_t sub_264A852E8()
{
  if (*(v0 + 40))
  {
    sub_2649D2AAC((v0 + 16), v0 + 56);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = *(Strong + OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction_session);
      *(v0 + 224) = v2;
      v3 = Strong;

      return MEMORY[0x2822009F8](sub_264A85478, v2, 0);
    }

    else
    {
      v5 = *(v0 + 208);
      __swift_destroy_boxed_opaque_existential_0((v0 + 56));
      *(v0 + 208) = v5;
      v6 = swift_task_alloc();
      *(v0 + 216) = v6;
      *v6 = v0;
      v6[1] = sub_264A851EC;
      v7 = *(v0 + 184);

      return MEMORY[0x2822003E8](v0 + 16, 0, 0, v7);
    }
  }

  else
  {
    (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));

    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_264A85478()
{
  v1 = *(v0 + 224);
  v2 = *(v1 + 128);
  ObjectType = swift_getObjectType();
  v4 = (*(v2 + 32))(ObjectType, v2);
  if (!*(v4 + 16) || (v5 = v4, sub_264B41B84(), MEMORY[0x266748E90](0), v6 = sub_264B41BB4(), v7 = -1 << *(v5 + 32), v8 = v6 & ~v7, ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0))
  {
LABEL_6:

    sub_264A78FFC();
    v10 = swift_allocError();
    *v11 = 3;
    swift_willThrow();
LABEL_7:

    *(v0 + 264) = v10;

    return MEMORY[0x2822009F8](sub_264A85A88, 0, 0);
  }

  v9 = ~v7;
  while ((*(*(v5 + 48) + v8) & 1) != 0)
  {
    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  v12 = *(v0 + 208);

  v13 = *(v0 + 80);
  v14 = *(v0 + 88);
  __swift_project_boxed_opaque_existential_1((v0 + 56), v13);
  (*(v14 + 8))(v13, v14);
  sub_264A87B4C(&qword_27FF8A5E0, type metadata accessor for ControlMessage, &unk_264B4D110);
  v15 = sub_264B3FF44();
  *(v0 + 232) = v15;
  *(v0 + 240) = v16;
  if (v12)
  {
    v10 = v12;
    sub_2649DEEBC(*(v0 + 176));
    goto LABEL_7;
  }

  v17 = v15;
  v18 = v16;
  sub_2649DEEBC(*(v0 + 176));
  v19 = *(v1 + 128);
  v20 = swift_getObjectType();
  *(v0 + 289) = 0;
  v23 = (*(v19 + 40) + **(v19 + 40));
  v21 = swift_task_alloc();
  *(v0 + 248) = v21;
  *v21 = v0;
  v21[1] = sub_264A857C4;

  return v23(v17, v18, v0 + 289, v20, v19);
}

uint64_t sub_264A857C4()
{
  v2 = *v1;
  *(*v1 + 256) = v0;

  v3 = *(v2 + 224);
  if (v0)
  {
    v4 = sub_264A85A08;
  }

  else
  {
    v4 = sub_264A858DC;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_264A858DC()
{
  sub_2649DEF6C(*(v0 + 232), *(v0 + 240));

  return MEMORY[0x2822009F8](sub_264A85950, 0, 0);
}

uint64_t sub_264A85950()
{
  v1 = v0[32];
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v0[26] = v1;
  v2 = swift_task_alloc();
  v0[27] = v2;
  *v2 = v0;
  v2[1] = sub_264A851EC;
  v3 = v0[23];

  return MEMORY[0x2822003E8](v0 + 2, 0, 0, v3);
}

uint64_t sub_264A85A08()
{
  v1 = v0[29];
  v2 = v0[30];

  sub_2649DEF6C(v1, v2);
  v0[33] = v0[32];

  return MEMORY[0x2822009F8](sub_264A85A88, 0, 0);
}

uint64_t sub_264A85A88()
{
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 264);
  v2 = sub_264B40964();
  __swift_project_value_buffer(v2, qword_27FFA71B8);
  v3 = v1;
  v4 = sub_264B40944();
  v5 = sub_264B41494();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 264);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_2649C6000, v4, v5, "Failed to send event, interrupting for: %{public}@", v7, 0xCu);
    sub_2649D04D4(v8, &unk_27FF89880, &unk_264B46B20);
    MEMORY[0x266749940](v8, -1, -1);
    MEMORY[0x266749940](v7, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 272) = Strong;
  if (Strong)
  {
    sub_264B41244();
    *(v0 + 280) = sub_264B41234();
    v13 = sub_264B411C4();

    return MEMORY[0x2822009F8](sub_264A85CF4, v13, v12);
  }

  else
  {
    v15 = *(v0 + 192);
    v14 = *(v0 + 200);
    v16 = *(v0 + 184);

    (*(v15 + 8))(v14, v16);
    __swift_destroy_boxed_opaque_existential_0((v0 + 56));

    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_264A85CF4()
{
  v1 = *(v0 + 272);

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 288) = 0;
  v2 = v1;
  sub_264B40A94();

  return MEMORY[0x2822009F8](sub_264A85DA0, 0, 0);
}

uint64_t sub_264A85DA0()
{
  v1 = *(v0 + 272);
  (*&v1[OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction_interruptionHandler])(*(v0 + 264));

  v3 = *(v0 + 192);
  v2 = *(v0 + 200);
  v4 = *(v0 + 184);

  (*(v3 + 8))(v2, v4);
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_264A85E64(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A940, &qword_264B4CAE0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v19[-v6 - 8];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A960, &unk_264B58510);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v19[-v10 - 8];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction_bufferedSendingContinuation;
    swift_beginAccess();
    if (!(*(v4 + 48))(&v13[v14], 1, v3))
    {
      (*(v4 + 16))(v7, &v13[v14], v3);

      sub_2649CB5C0(a1, v19);
      sub_264B412A4();
      (*(v4 + 8))(v7, v3);
      v15 = 0;
      goto LABEL_6;
    }
  }

  v15 = 1;
LABEL_6:
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8A968, &qword_264B4CB00);
  (*(*(v16 - 8) + 56))(v11, v15, 1, v16);
  return sub_2649D04D4(v11, &qword_27FF8A960, &unk_264B58510);
}

id CaptureUIInteraction.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CaptureUIInteraction.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*CaptureUIInteraction.view.modify(void *a1))(uint64_t *a1)
{
  v2 = OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction__view;
  a1[1] = v1;
  a1[2] = v2;
  v3 = *(v1 + v2);
  *a1 = v3;
  v4 = v3;
  return sub_264A86390;
}

void sub_264A86390(uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *a1;
  v4 = *(v2 + v1);
  *(v2 + v1) = v3;
}

Swift::Void __swiftcall CaptureUIInteraction.willMove(to:)(UIView_optional *to)
{
  v3 = OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction_interactionEventSubscription;
  if (*(v1 + OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction_interactionEventSubscription))
  {

    sub_264B40994();
  }

  *(v1 + v3) = 0;

  v4 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction_drawEventProducer + 8);
  ObjectType = swift_getObjectType();
  (*(*(v4 + 8) + 16))(0, ObjectType);
  v6 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction_controlEventProducer + 8);
  v7 = swift_getObjectType();
  (*(v6 + 16))(0, v7, v6);
  if (to)
  {
    if (qword_27FF883E0 != -1)
    {
      swift_once();
    }

    v8 = sub_264B40964();
    __swift_project_value_buffer(v8, qword_27FFA71B8);
    oslog = sub_264B40944();
    v9 = sub_264B41484();
    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      v11 = "Will move to view hierarchy";
LABEL_12:
      _os_log_impl(&dword_2649C6000, oslog, v9, v11, v10, 2u);
      MEMORY[0x266749940](v10, -1, -1);
    }
  }

  else
  {
    if (qword_27FF883E0 != -1)
    {
      swift_once();
    }

    v12 = sub_264B40964();
    __swift_project_value_buffer(v12, qword_27FFA71B8);
    oslog = sub_264B40944();
    v9 = sub_264B41484();
    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      v11 = "Will be removed from view hierarchy";
      goto LABEL_12;
    }
  }
}

Swift::Void __swiftcall CaptureUIInteraction.didMove(to:)(UIView_optional *to)
{
  v2 = v1;
  if (to)
  {
    if (qword_27FF883E0 != -1)
    {
      swift_once();
    }

    v4 = sub_264B40964();
    __swift_project_value_buffer(v4, qword_27FFA71B8);
    v5 = sub_264B40944();
    v6 = sub_264B41484();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_2649C6000, v5, v6, "Moved to view hierarchy", v7, 2u);
      MEMORY[0x266749940](v7, -1, -1);
    }

    v8 = *(v2 + OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction__view);
    *(v2 + OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction__view) = to;

    v9 = to;

    sub_264A818B8(v9);
  }

  else
  {
    if (qword_27FF883E0 != -1)
    {
      swift_once();
    }

    v10 = sub_264B40964();
    __swift_project_value_buffer(v10, qword_27FFA71B8);
    v11 = sub_264B40944();
    v12 = sub_264B41484();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_2649C6000, v11, v12, "Removed from view hierarchy", v13, 2u);
      MEMORY[0x266749940](v13, -1, -1);
    }

    v14 = *(v2 + OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction__view);
    *(v2 + OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction__view) = 0;
  }
}

void (*CaptureUIInteraction._deviceOrientation.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction_deviceOrientation;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return sub_264A869CC;
}

void sub_264A869CC(uint64_t a1)
{
  v1 = *a1;
  CaptureUIInteraction.deviceOrientation.setter(*(*a1 + 24));

  free(v1);
}

uint64_t sub_264A86A18(uint64_t a1, uint64_t a2)
{
  v18 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89DE0, &qword_264B4BC00);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v17 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8AA60, &unk_264B58500);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v17 - v9;
  v11 = off_28765F150;
  type metadata accessor for UIViewDrawEventProducer(0);
  v20 = v11();
  sub_2649CB2F0();
  v12 = sub_264B41554();
  v19 = v12;
  v13 = sub_264B41514();
  (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8AA68, &unk_264B4CC00);
  sub_2649CB4C8(&unk_27FF8AA70, &qword_27FF8AA68, &unk_264B4CC00, MEMORY[0x277CBCD90]);
  sub_264A87B4C(&qword_27FF887B8, sub_2649CB2F0, MEMORY[0x277D85228]);
  sub_264B40B14();
  sub_2649D04D4(v5, &qword_27FF89DE0, &qword_264B4BC00);

  swift_allocObject();
  v14 = v18;
  swift_unknownObjectWeakInit();
  sub_2649CB4C8(&unk_27FF8AA80, &qword_27FF8AA60, &unk_264B58500, MEMORY[0x277CBCD60]);
  v15 = sub_264B40B54();

  (*(v7 + 8))(v10, v6);
  *(v14 + OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction_interactionEventSubscription) = v15;
}

uint64_t sub_264A86D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89DE0, &qword_264B4BC00);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8AA60, &unk_264B58500);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v20 - v13;
  v23 = (*(a4 + 56))(a3, a4);
  sub_2649CB2F0();
  v15 = sub_264B41554();
  v22 = v15;
  v16 = sub_264B41514();
  (*(*(v16 - 8) + 56))(v9, 1, 1, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8AA68, &unk_264B4CC00);
  sub_2649CB4C8(&unk_27FF8AA70, &qword_27FF8AA68, &unk_264B4CC00, MEMORY[0x277CBCD90]);
  sub_264A87B4C(&qword_27FF887B8, sub_2649CB2F0, MEMORY[0x277D85228]);
  sub_264B40B14();
  sub_2649D04D4(v9, &qword_27FF89DE0, &qword_264B4BC00);

  swift_allocObject();
  v17 = v21;
  swift_unknownObjectWeakInit();
  sub_2649CB4C8(&unk_27FF8AA80, &qword_27FF8AA60, &unk_264B58500, MEMORY[0x277CBCD60]);
  v18 = sub_264B40B54();

  (*(v11 + 8))(v14, v10);
  *(v17 + OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction_interactionEventSubscription) = v18;
}

uint64_t sub_264A8705C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_264A8709C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2649E0EE4;

  return sub_264A82FDC();
}

uint64_t sub_264A87150()
{
  if (v0[3] >= 4uLL)
  {

    sub_2649DEF6C(v0[4], v0[5]);
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_264A87198@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction_interactionState;
  result = swift_beginAccess();
  v5 = *(v3 + 8);
  *a2 = *v3;
  *(a2 + 8) = v5;
  return result;
}

void sub_264A871F4(uint64_t *a1)
{
  v1 = *(a1 + 8);
  v2 = *a1;
  v3 = v1;
  CaptureUIInteraction.interactionState.setter(&v2);
}

id sub_264A872C8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = *(*a1 + OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction__view);
  *a2 = v2;
  return v2;
}

void sub_264A872E0(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction__view);
  *(*a2 + OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction__view) = *a1;
  v3 = v2;
}

uint64_t keypath_get_17Tm@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction_deviceOrientation;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t type metadata accessor for CaptureUIInteraction(uint64_t a1)
{
  result = qword_27FF8A978;
  if (!qword_27FF8A978)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_264A873DC(uint64_t a1)
{
  sub_264A52108(319, &qword_27FF8A988, &qword_27FF8A928, &qword_264B4CAD8, MEMORY[0x277CBCED0]);
  if (v1 <= 0x3F)
  {
    sub_264A361A8();
    if (v2 <= 0x3F)
    {
      sub_264A52108(319, &qword_27FF8A998, &qword_27FF8A940, &qword_264B4CAE0, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_264A8759C()
{
  MEMORY[0x266749A30](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_264A875D4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88F98, &unk_264B468F0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_264A876AC(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88F98, &unk_264B468F0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2649CD850;

  return sub_264A83D24(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_264A877C0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8AA20, &unk_264B4CBD8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v11 + 8, v10 | 7);
}

uint64_t sub_264A8793C(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8AA20, &unk_264B4CBD8) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_2649E0EE4;

  return sub_264A84FDC(a1, v10, v11, v1 + v6, v1 + v9, v12);
}

uint64_t sub_264A87ADC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8AA00, &unk_264B4CBA0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_264A87B4C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_264A87BAC()
{

  return swift_deallocClassInstance();
}

uint64_t sub_264A87C20()
{
  v1 = *(*v0 + 24);

  return v1;
}

uint64_t sub_264A87C60()
{
  v1 = *(*v0 + 48);

  return v1;
}

uint64_t sub_264A87C94()
{
  v1 = OBJC_IVAR____TtC16ScreenSharingKit30MockContinuityDevicePrimitives__continuityDeviceInfo;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF887F8, &qword_264B44188);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MockContinuityDevicePrimitives(uint64_t a1)
{
  result = qword_27FF8AA98;
  if (!qword_27FF8AA98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_264A87D90(uint64_t a1)
{
  sub_2649D008C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_264A87E28()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88808, &unk_264B441B0);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v12 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88810, &unk_264B4CCB0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v12 - v8;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF887F8, &qword_264B44188);
  sub_264B40A54();
  swift_endAccess();
  type metadata accessor for ContinuityDeviceInfo(0);
  sub_2649CB4C8(&qword_27FF88818, &qword_27FF88808, &unk_264B441B0, MEMORY[0x277CBCEC8]);
  sub_264B40AC4();
  (*(v1 + 8))(v4, v0);
  sub_2649CB4C8(&qword_27FF88820, &qword_27FF88810, &unk_264B4CCB0, MEMORY[0x277CBCB10]);
  v10 = sub_264B40AB4();
  (*(v6 + 8))(v9, v5);
  return v10;
}

uint64_t sub_264A88098(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88800, qword_264B4CC90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t *sub_264A88108()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8BA30, &unk_264B4CEB8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v12 - v5;
  if (*(v0 + OBJC_IVAR____TtC16ScreenSharingKit27ServerDragForwardingSession_forwardingState) == 1)
  {

    sub_264B404C4();
  }

  v7 = OBJC_IVAR____TtC16ScreenSharingKit27ServerDragForwardingSession_dragControllerEventContinuation;
  (*(v3 + 16))(v6, v0 + OBJC_IVAR____TtC16ScreenSharingKit27ServerDragForwardingSession_dragControllerEventContinuation, v2);
  sub_264B412B4();
  v8 = *(v3 + 8);
  v8(v6, v2);
  if (*(v0 + OBJC_IVAR____TtC16ScreenSharingKit27ServerDragForwardingSession_dragControllerEventMonitoringTask))
  {

    sub_264B41304();
  }

  sub_2649CB67C(*(v0 + 16), *(v0 + 24));

  v9 = OBJC_IVAR____TtC16ScreenSharingKit27ServerDragForwardingSession_dragControllerEventStream;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8AB28, &unk_264B51E00);
  (*(*(v10 - 8) + 8))(v1 + v9, v10);
  v8((v1 + v7), v2);

  return v1;
}

uint64_t sub_264A88318()
{
  sub_264A88108();

  return swift_deallocClassInstance();
}

void sub_264A88398(uint64_t a1)
{
  sub_264A8A918(319, &qword_27FF8AAE0, MEMORY[0x277D857B8]);
  if (v1 <= 0x3F)
  {
    sub_264A8A918(319, &qword_27FF8AAE8, MEMORY[0x277D85788]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_264A884E8()
{
  v1 = OBJC_IVAR____TtC16ScreenSharingKit27ServerDragForwardingSession_forwardingState;
  if (!*(v0 + OBJC_IVAR____TtC16ScreenSharingKit27ServerDragForwardingSession_forwardingState))
  {
    v2 = v0;
    if (qword_27FF88418 != -1)
    {
      swift_once();
    }

    v3 = sub_264B40964();
    __swift_project_value_buffer(v3, qword_27FF8AEA0);

    v4 = sub_264B40944();
    v5 = sub_264B414B4();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v8 = v7;
      *v6 = 136446210;
      *(v6 + 4) = sub_2649CC004(*(v2 + 32), *(v2 + 40), &v8);
      _os_log_impl(&dword_2649C6000, v4, v5, "Drag %{public}s: startForwarding", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x266749940](v7, -1, -1);
      MEMORY[0x266749940](v6, -1, -1);
    }

    *(v2 + v1) = 1;
    swift_allocObject();
    swift_weakInit();

    sub_264B404A4();
  }
}

uint64_t sub_264A886A8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for ServerDragForwardingSession.DragControllerEvent(0);
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8BA30, &unk_264B4CEB8);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v21 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8AB40, &qword_264B4CEE8);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v21 - v14;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(v8 + 16))(v11, Strong + OBJC_IVAR____TtC16ScreenSharingKit27ServerDragForwardingSession_dragControllerEventContinuation, v7);

    v17 = sub_264B40494();
    (*(*(v17 - 8) + 16))(v6, a1, v17);
    swift_storeEnumTagMultiPayload();
    sub_264B412A4();
    (*(v8 + 8))(v11, v7);
    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8AB18, &qword_264B4CEA8);
  (*(*(v19 - 8) + 56))(v15, v18, 1, v19);
  return sub_2649D04D4(v15, &qword_27FF8AB40, &qword_264B4CEE8);
}

unint64_t sub_264A88940(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_264B40104();
  v7 = *(v6 - 8);
  result = MEMORY[0x28223BE20](v6, v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + OBJC_IVAR____TtC16ScreenSharingKit27ServerDragForwardingSession_forwardingState) == 1)
  {
    if (qword_27FF88418 != -1)
    {
      swift_once();
    }

    v12 = sub_264B40964();
    __swift_project_value_buffer(v12, qword_27FF8AEA0);

    sub_2649DEF18(a1, a2);
    v13 = sub_264B40944();
    v14 = sub_264B414B4();

    if (!os_log_type_enabled(v13, v14))
    {
      sub_2649DEF6C(a1, a2);
LABEL_17:

      sub_264B404B4();
      sub_264B40484();
      return (*(v7 + 8))(v11, v6);
    }

    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v23 = v16;
    *v15 = 136446466;
    result = sub_2649CC004(*(v3 + 32), *(v3 + 40), &v23);
    *(v15 + 4) = result;
    *(v15 + 12) = 2050;
    v17 = a2 >> 62;
    if ((a2 >> 62) > 1)
    {
      if (v17 != 2)
      {
        v18 = 0;
        goto LABEL_16;
      }

      v20 = *(a1 + 16);
      v19 = *(a1 + 24);
      v21 = __OFSUB__(v19, v20);
      v18 = v19 - v20;
      if (!v21)
      {
        goto LABEL_16;
      }

      __break(1u);
    }

    else if (!v17)
    {
      v18 = BYTE6(a2);
LABEL_16:
      *(v15 + 14) = v18;
      sub_2649DEF6C(a1, a2);
      _os_log_impl(&dword_2649C6000, v13, v14, "Drag %{public}s: Forwarding session received drag data of size %{public}ld bytes", v15, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x266749940](v16, -1, -1);
      MEMORY[0x266749940](v15, -1, -1);
      goto LABEL_17;
    }

    LODWORD(v18) = HIDWORD(a1) - a1;
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      __break(1u);
      return result;
    }

    v18 = v18;
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_264A88BD8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8AB28, &unk_264B51E00);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v21 - v10;
  v12 = OBJC_IVAR____TtC16ScreenSharingKit27ServerDragForwardingSession_dragControllerEventStream;
  v13 = sub_264B41274();
  (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  v14 = swift_allocObject();
  swift_weakInit();
  (*(v3 + 16))(v7, v1 + v12, v2);
  sub_264B41244();

  v15 = sub_264B41234();
  v16 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v17 = (v4 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  v19 = MEMORY[0x277D85700];
  *(v18 + 16) = v15;
  *(v18 + 24) = v19;
  (*(v3 + 32))(v18 + v16, v7, v2);
  *(v18 + v17) = v14;

  *(v1 + OBJC_IVAR____TtC16ScreenSharingKit27ServerDragForwardingSession_dragControllerEventMonitoringTask) = sub_264A10C20(0, 0, v11, &unk_264B4CED0, v18);
}

uint64_t sub_264A88E38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = sub_264B40494();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v7 = type metadata accessor for ServerDragForwardingSession.DragControllerEvent(0);
  v5[10] = v7;
  v5[11] = *(v7 - 8);
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8AB30, &qword_264B4CED8);
  v5[14] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8AB38, &qword_264B4CEE0);
  v5[15] = v8;
  v5[16] = *(v8 - 8);
  v5[17] = swift_task_alloc();
  v5[18] = sub_264B41244();
  v5[19] = sub_264B41234();
  v10 = sub_264B411C4();
  v5[20] = v10;
  v5[21] = v9;

  return MEMORY[0x2822009F8](sub_264A89038, v10, v9);
}

uint64_t sub_264A89038()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8AB28, &unk_264B51E00);
  sub_264B412C4();
  swift_beginAccess();
  v1 = sub_264B41234();
  v0[22] = v1;
  v2 = swift_task_alloc();
  v0[23] = v2;
  *v2 = v0;
  v2[1] = sub_264A89130;
  v3 = v0[14];
  v4 = v0[15];
  v5 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v3, v1, v5, v4);
}

uint64_t sub_264A89130()
{
  v1 = *v0;

  v2 = *(v1 + 168);
  v3 = *(v1 + 160);

  return MEMORY[0x2822009F8](sub_264A89274, v3, v2);
}

uint64_t sub_264A89274()
{
  v1 = v0[14];
  if ((*(v0[11] + 48))(v1, 1, v0[10]) == 1)
  {
    (*(v0[16] + 8))(v0[17], v0[15]);

LABEL_8:

    v9 = v0[1];

    return v9();
  }

  sub_264A8B378(v1, v0[13]);
  Strong = swift_weakLoadStrong();
  v0[24] = Strong;
  if (!Strong)
  {
    v6 = v0[16];
    v5 = v0[17];
    v7 = v0[15];
    v8 = v0[13];

    sub_264A8B3DC(v8);
    (*(v6 + 8))(v5, v7);
    goto LABEL_8;
  }

  v0[25] = sub_264B41234();
  v4 = sub_264B411C4();
  v0[26] = v4;
  v0[27] = v3;

  return MEMORY[0x2822009F8](sub_264A89414, v4, v3);
}

uint64_t sub_264A89414()
{
  sub_264A8B438(*(v0 + 104), *(v0 + 96));
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = *(v0 + 96);
    v3 = *(v0 + 64);
    v2 = *(v0 + 72);
    v4 = *(v0 + 56);

    (*(v3 + 32))(v2, v1, v4);
    sub_264A8986C(v2);
    (*(v3 + 8))(v2, v4);
    v5 = *(v0 + 160);
    v6 = *(v0 + 168);

    return MEMORY[0x2822009F8](sub_264A897A0, v5, v6);
  }

  else
  {
    v7 = *(v0 + 96);
    v8 = *v7;
    *(v0 + 224) = *v7;
    v9 = v7[1];
    *(v0 + 232) = v9;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8AB20, &qword_264B4CEB0);
    *(v0 + 256) = *(v10 + 48);
    v11 = *(v7 + *(v10 + 64));
    *(v0 + 240) = v11;
    v12 = swift_task_alloc();
    *(v0 + 248) = v12;
    *v12 = v0;
    v12[1] = sub_264A895B0;

    return sub_264A8A098(v8, v9, v11);
  }
}

uint64_t sub_264A895B0()
{
  v1 = *v0;

  v2 = *(v1 + 216);
  v3 = *(v1 + 208);

  return MEMORY[0x2822009F8](sub_264A896D0, v3, v2);
}

uint64_t sub_264A896D0()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 256);
  v3 = *(v0 + 224);
  v4 = *(v0 + 96);

  sub_2649DEF6C(v3, v1);
  v5 = sub_264B40104();
  (*(*(v5 - 8) + 8))(v4 + v2, v5);
  v6 = *(v0 + 160);
  v7 = *(v0 + 168);

  return MEMORY[0x2822009F8](sub_264A897A0, v6, v7);
}

uint64_t sub_264A897A0()
{
  v1 = v0[13];

  sub_264A8B3DC(v1);
  v2 = sub_264B41234();
  v0[22] = v2;
  v3 = swift_task_alloc();
  v0[23] = v3;
  *v3 = v0;
  v3[1] = sub_264A89130;
  v4 = v0[14];
  v5 = v0[15];
  v6 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v4, v2, v6, v5);
}

void sub_264A8986C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_264B40494();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v57[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x28223BE20](v7, v10);
  v13 = &v57[-v12];
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v57[-v15];
  v17 = OBJC_IVAR____TtC16ScreenSharingKit27ServerDragForwardingSession_forwardingState;
  if (*(v2 + OBJC_IVAR____TtC16ScreenSharingKit27ServerDragForwardingSession_forwardingState) == 1)
  {
    v18 = *(v5 + 16);
    v18(&v57[-v15], a1, v4);
    v19 = (*(v5 + 88))(v16, v4);
    if (v19 == *MEMORY[0x277D77A60])
    {
      (*(v5 + 96))(v16, v4);
      v20 = *(v16 + 1);
      if (*v16 == 1)
      {
        if (qword_27FF88418 != -1)
        {
          swift_once();
        }

        v21 = sub_264B40964();
        __swift_project_value_buffer(v21, qword_27FF8AEA0);

        v22 = sub_264B40944();
        v23 = sub_264B414B4();

        if (!os_log_type_enabled(v22, v23))
        {
          goto LABEL_34;
        }

        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v60 = v25;
        *v24 = 136446210;
        *(v24 + 4) = sub_2649CC004(v2[4], v2[5], &v60);
        _os_log_impl(&dword_2649C6000, v22, v23, "Drag %{public}s: Forwarding succeeded", v24, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v25);
        MEMORY[0x266749940](v25, -1, -1);
        v26 = v24;
      }

      else
      {
        if (qword_27FF88418 != -1)
        {
          swift_once();
        }

        v33 = sub_264B40964();
        __swift_project_value_buffer(v33, qword_27FF8AEA0);

        v34 = v20;
        v22 = sub_264B40944();
        v35 = sub_264B41494();

        if (!os_log_type_enabled(v22, v35))
        {
          goto LABEL_34;
        }

        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v60 = v38;
        *v36 = 136446466;
        *(v36 + 4) = sub_2649CC004(v2[4], v2[5], &v60);
        *(v36 + 12) = 2114;
        if (v20)
        {
          v39 = v20;
          v40 = _swift_stdlib_bridgeErrorToNSError();
          v41 = v40;
        }

        else
        {
          v40 = 0;
          v41 = 0;
        }

        *(v36 + 14) = v40;
        *v37 = v41;
        _os_log_impl(&dword_2649C6000, v22, v35, "Drag %{public}s: Forwarding failed. Error: %{public}@", v36, 0x16u);
        sub_2649D04D4(v37, &unk_27FF89880, &unk_264B46B20);
        MEMORY[0x266749940](v37, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v38);
        MEMORY[0x266749940](v38, -1, -1);
        v26 = v36;
      }

      MEMORY[0x266749940](v26, -1, -1);
LABEL_34:

      *(v2 + v17) = 2;
      v54 = v2[2];
      if (v54)
      {
        v55 = v2[3];

        v54(v56);

        sub_2649CB67C(v54, v55);
      }

      else
      {
      }

      return;
    }

    if (v19 == *MEMORY[0x277D77A50])
    {
      if (qword_27FF88418 != -1)
      {
        swift_once();
      }

      v27 = sub_264B40964();
      __swift_project_value_buffer(v27, qword_27FF8AEA0);

      v28 = sub_264B40944();
      v29 = sub_264B41484();

      if (!os_log_type_enabled(v28, v29))
      {
        goto LABEL_24;
      }

      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v60 = v31;
      *v30 = 136446210;
      *(v30 + 4) = sub_2649CC004(v2[4], v2[5], &v60);
      v32 = "Drag %{public}s: Forwarding session - readyForInitiatingDragEvent";
LABEL_23:
      _os_log_impl(&dword_2649C6000, v28, v29, v32, v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x266749940](v31, -1, -1);
      MEMORY[0x266749940](v30, -1, -1);
LABEL_24:

      return;
    }

    if (v19 == *MEMORY[0x277D77A58])
    {
      if (qword_27FF88418 != -1)
      {
        swift_once();
      }

      v42 = sub_264B40964();
      __swift_project_value_buffer(v42, qword_27FF8AEA0);

      v28 = sub_264B40944();
      v29 = sub_264B41484();

      if (!os_log_type_enabled(v28, v29))
      {
        goto LABEL_24;
      }

      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v60 = v31;
      *v30 = 136446210;
      *(v30 + 4) = sub_2649CC004(v2[4], v2[5], &v60);
      v32 = "Drag %{public}s: Forwarding session - readyForDragEvents";
      goto LABEL_23;
    }

    if (qword_27FF88418 != -1)
    {
      swift_once();
    }

    v43 = sub_264B40964();
    __swift_project_value_buffer(v43, qword_27FF8AEA0);
    v18(v13, a1, v4);

    v44 = sub_264B40944();
    v45 = sub_264B41494();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v58 = v45;
      v47 = v46;
      v59 = swift_slowAlloc();
      v60 = v59;
      *v47 = 136446466;
      *(v47 + 4) = sub_2649CC004(v2[4], v2[5], &v60);
      *(v47 + 12) = 2082;
      v18(v9, v13, v4);
      v48 = sub_264B41064();
      v50 = v49;
      v51 = *(v5 + 8);
      v51(v13, v4);
      v52 = sub_2649CC004(v48, v50, &v60);

      *(v47 + 14) = v52;
      _os_log_impl(&dword_2649C6000, v44, v58, "Drag %{public}s: Unknown DragController.ForwardingEvent - %{public}s", v47, 0x16u);
      v53 = v59;
      swift_arrayDestroy();
      MEMORY[0x266749940](v53, -1, -1);
      MEMORY[0x266749940](v47, -1, -1);
    }

    else
    {

      v51 = *(v5 + 8);
      v51(v13, v4);
    }

    v51(v16, v4);
  }
}

uint64_t sub_264A8A098(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  sub_264B41244();
  v4[11] = sub_264B41234();
  v6 = sub_264B411C4();
  v4[12] = v6;
  v4[13] = v5;

  return MEMORY[0x2822009F8](sub_264A8A134, v6, v5);
}

unint64_t sub_264A8A134()
{
  v38 = v0;
  if (*(*(v0 + 80) + OBJC_IVAR____TtC16ScreenSharingKit27ServerDragForwardingSession_forwardingState) == 1)
  {
    if (qword_27FF88418 != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 56);
    v2 = *(v0 + 64);
    v3 = sub_264B40964();
    *(v0 + 112) = __swift_project_value_buffer(v3, qword_27FF8AEA0);

    sub_2649DEF18(v1, v2);
    v4 = sub_264B40944();
    v5 = sub_264B414B4();

    if (!os_log_type_enabled(v4, v5))
    {
      sub_2649DEF6C(*(v0 + 56), *(v0 + 64));
LABEL_23:

      v27 = *(v0 + 80);
      v29 = *(v0 + 56);
      v28 = *(v0 + 64);
      v30 = *(v27 + OBJC_IVAR____TtC16ScreenSharingKit27ServerDragForwardingSession_hasSentFirstMessage);
      *(v27 + OBJC_IVAR____TtC16ScreenSharingKit27ServerDragForwardingSession_hasSentFirstMessage) = 1;
      v31 = v27[8];
      v32 = v27[4];
      *(v0 + 120) = v32;
      v33 = v27[5];
      *(v0 + 128) = v33;
      *(v0 + 40) = &type metadata for DragAndDropEvent;
      *(v0 + 48) = &off_28765F610;
      v34 = swift_allocObject();
      *(v0 + 16) = v34;
      *(v34 + 16) = v29;
      *(v34 + 24) = v28;
      *(v34 + 32) = v32;
      *(v34 + 40) = v33;
      *(v34 + 48) = 1;
      *(v34 + 49) = (v30 & 1) == 0;
      sub_2649DEF18(v29, v28);

      v36 = (v31 + *v31);
      v35 = swift_task_alloc();
      *(v0 + 136) = v35;
      *v35 = v0;
      v35[1] = sub_264A8A508;

      return v36(v0 + 16);
    }

    v6 = *(v0 + 80);
    v7 = *(v0 + 64);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v37 = v9;
    *v8 = 136446466;
    result = sub_2649CC004(*(v6 + 32), *(v6 + 40), &v37);
    *(v8 + 4) = result;
    *(v8 + 12) = 2050;
    v11 = v7 >> 62;
    if ((v7 >> 62) > 1)
    {
      if (v11 != 2)
      {
        v12 = 0;
        goto LABEL_22;
      }

      v20 = *(*(v0 + 56) + 16);
      v21 = *(*(v0 + 56) + 24);
      v22 = __OFSUB__(v21, v20);
      v12 = v21 - v20;
      if (!v22)
      {
        goto LABEL_22;
      }

      __break(1u);
    }

    else if (!v11)
    {
      v12 = *(v0 + 70);
LABEL_22:
      v25 = *(v0 + 56);
      v26 = *(v0 + 64);
      *(v8 + 14) = v12;
      sub_2649DEF6C(v25, v26);
      _os_log_impl(&dword_2649C6000, v4, v5, "Drag %{public}s: Forwarding session sending data of size %{public}ld bytes", v8, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x266749940](v9, -1, -1);
      MEMORY[0x266749940](v8, -1, -1);
      goto LABEL_23;
    }

    v23 = *(v0 + 56);
    v24 = *(v0 + 60);
    v22 = __OFSUB__(v24, v23);
    LODWORD(v12) = v24 - v23;
    if (v22)
    {
      __break(1u);
      return result;
    }

    v12 = v12;
    goto LABEL_22;
  }

  v13 = *(v0 + 72);

  v14 = *(v13 + 16);
  if (v14)
  {
    v15 = *(v13 + 24);

    v14(v16);
    sub_2649CB67C(v14, v15);
    v17 = *(v13 + 16);
  }

  else
  {
    v17 = 0;
  }

  v18 = *(v13 + 24);
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  sub_2649CB67C(v17, v18);
  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_264A8A508()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = v2[12];
    v4 = v2[13];
    v5 = sub_264A8A6D4;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v2 + 2);
    v3 = v2[12];
    v4 = v2[13];
    v5 = sub_264A8A624;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_264A8A624()
{

  v1 = *(v0 + 72);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v1 + 24);

    v2(v4);
    sub_2649CB67C(v2, v3);
    v5 = *(v1 + 16);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(v1 + 24);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  sub_2649CB67C(v5, v6);
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_264A8A6D4()
{
  v23 = v0;
  v1 = v0[18];

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v2 = v1;
  v3 = sub_264B40944();
  v4 = sub_264B41494();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[18];
  if (v5)
  {
    v8 = v0[15];
    v7 = v0[16];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v22 = v11;
    *v9 = 136446466;
    *(v9 + 4) = sub_2649CC004(v8, v7, &v22);
    *(v9 + 12) = 2114;
    v12 = v6;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v13;
    *v10 = v13;
    _os_log_impl(&dword_2649C6000, v3, v4, "Drag %{public}s: Forwarding session failed to send data: %{public}@", v9, 0x16u);
    sub_2649D04D4(v10, &unk_27FF89880, &unk_264B46B20);
    MEMORY[0x266749940](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x266749940](v11, -1, -1);
    MEMORY[0x266749940](v9, -1, -1);
  }

  else
  {
  }

  v14 = v0[9];
  v15 = *(v14 + 16);
  if (v15)
  {
    v16 = *(v14 + 24);

    v15(v17);
    sub_2649CB67C(v15, v16);
    v18 = *(v14 + 16);
  }

  else
  {
    v18 = 0;
  }

  v19 = *(v14 + 24);
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  sub_2649CB67C(v18, v19);
  v20 = v0[1];

  return v20();
}

void sub_264A8A918(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for ServerDragForwardingSession.DragControllerEvent(255);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_264A8A988(uint64_t a1)
{
  sub_264A8A9FC(319);
  if (v1 <= 0x3F)
  {
    sub_264A8AA78();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_264A8A9FC(uint64_t a1)
{
  if (!qword_27FF8AB00)
  {
    sub_264B40104();
    type metadata accessor for GuaranteedCalledCompletion();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27FF8AB00);
    }
  }
}

void sub_264A8AA78()
{
  if (!qword_27FF8AB08)
  {
    v0 = sub_264B40494();
    if (!v1)
    {
      atomic_store(v0, &qword_27FF8AB08);
    }
  }
}

unint64_t sub_264A8AAC4()
{
  result = qword_27FF8AB10;
  if (!qword_27FF8AB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8AB10);
  }

  return result;
}

uint64_t sub_264A8AB48@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*(v1 + 56) + 16);
  if (v3)
  {
    v4 = v3;
    sub_264B405A4();
    v5 = sub_264B405B4();
    v6 = *(*(v5 - 8) + 56);

    return v6(a1, 0, 1, v5);
  }

  else
  {
    result = sub_264B41874();
    __break(1u);
  }

  return result;
}

uint64_t sub_264A8AC80(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v38 = a4;
  v39 = a5;
  v35 = a3;
  v40 = a1;
  v41 = a2;
  v36 = type metadata accessor for ServerDragForwardingSession.DragControllerEvent(0);
  MEMORY[0x28223BE20](v36, v5);
  v7 = (&v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8AB18, &qword_264B4CEA8);
  v37 = *(v42 - 8);
  MEMORY[0x28223BE20](v42, v8);
  v10 = &v35 - v9;
  v11 = sub_264B3FFD4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FF88418 != -1)
  {
    swift_once();
  }

  v16 = sub_264B40964();
  __swift_project_value_buffer(v16, qword_27FF8AEA0);
  v17 = sub_264B41484();
  sub_264B3FF94();
  v18 = sub_264B3FFA4();
  v20 = v19;
  (*(v12 + 8))(v15, v11);

  v21 = sub_264B40944();

  if (os_log_type_enabled(v21, v17))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v43 = v23;
    *v22 = 136446722;
    v24 = sub_2649CC004(v18, v20, &v43);

    *(v22 + 4) = v24;
    *(v22 + 12) = 2050;
    *(v22 + 14) = 206;
    *(v22 + 22) = 2082;
    *(v22 + 24) = sub_2649CC004(0xD000000000000025, 0x8000000264B5DEF0, &v43);
    _os_log_impl(&dword_2649C6000, v21, v17, "%{public}s:%{public}ld %{public}s", v22, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v23, -1, -1);
    MEMORY[0x266749940](v22, -1, -1);
  }

  else
  {
  }

  type metadata accessor for GuaranteedCalledCompletion();
  v25 = swift_allocObject();
  v26 = v38;
  v27 = v39;
  *(v25 + 16) = v38;
  *(v25 + 24) = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8AB20, &qword_264B4CEB0);
  v29 = *(v28 + 48);
  v30 = *(v28 + 64);
  v32 = v40;
  v31 = v41;
  *v7 = v40;
  v7[1] = v31;
  v33 = sub_264B40104();
  (*(*(v33 - 8) + 16))(v7 + v29, v35, v33);
  *(v7 + v30) = v25;
  swift_storeEnumTagMultiPayload();
  sub_264A8B0E0(v26, v27);
  sub_2649DEF18(v32, v31);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8BA30, &unk_264B4CEB8);
  sub_264B412A4();

  return (*(v37 + 8))(v10, v42);
}

double sub_264A8B0E0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

uint64_t sub_264A8B0F0()
{
  sub_2649DEF6C(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 50, 7);
}

uint64_t sub_264A8B130()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_264A8B168()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8AB28, &unk_264B51E00);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_264A8B24C(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8AB28, &unk_264B51E00) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2649CD850;

  return sub_264A88E38(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_264A8B378(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ServerDragForwardingSession.DragControllerEvent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_264A8B3DC(uint64_t a1)
{
  v2 = type metadata accessor for ServerDragForwardingSession.DragControllerEvent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_264A8B438(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ServerDragForwardingSession.DragControllerEvent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t RemoteAuthenticationError.failureReason.getter()
{
  v1 = sub_264B40124();
  MEMORY[0x28223BE20](v1 - 8, v2);
  v3 = sub_264B41004();
  MEMORY[0x28223BE20](v3 - 8, v4);
  v5 = *(v0 + 16);
  if (v5 <= 4)
  {
    switch(v5)
    {
      case 1u:
        sub_264B40FA4();
        if (qword_27FF88428 == -1)
        {
          goto LABEL_32;
        }

        goto LABEL_36;
      case 2u:
        sub_264B40FA4();
        if (qword_27FF88428 == -1)
        {
          goto LABEL_32;
        }

        goto LABEL_36;
      case 3u:
        goto LABEL_5;
    }

    goto LABEL_31;
  }

  switch(v5)
  {
    case 5u:
      sub_264B40FA4();
      if (qword_27FF88428 == -1)
      {
        goto LABEL_32;
      }

      goto LABEL_36;
    case 6u:
      sub_264B40FA4();
      if (qword_27FF88428 == -1)
      {
        goto LABEL_32;
      }

      goto LABEL_36;
    case 7u:
      result = 0;
      v8 = *v0;
      v7 = *(v0 + 8);
      if (*v0 <= 6uLL)
      {
        if (__PAIR128__((v8 >= 3) + v7 - 1, v8 - 3) < 2)
        {
          return result;
        }

        if (v8 ^ 5 | v7)
        {
          if (!(v8 ^ 6 | v7))
          {
            sub_264B40FA4();
            if (qword_27FF88428 == -1)
            {
              goto LABEL_32;
            }

            goto LABEL_36;
          }

          break;
        }
      }

      else
      {
        if (v8 > 9)
        {
          if (__PAIR128__((v8 >= 0xA) + v7 - 1, v8 - 10) < 2)
          {
            return result;
          }

          break;
        }

        if (v8 ^ 7 | v7)
        {
          if (!(v8 ^ 8 | v7))
          {
            sub_264B40FA4();
            if (qword_27FF88428 == -1)
            {
              goto LABEL_32;
            }

            goto LABEL_36;
          }

          if (!(v8 ^ 9 | v7))
          {
            sub_264B40FA4();
            if (qword_27FF88428 == -1)
            {
              goto LABEL_32;
            }

            goto LABEL_36;
          }

          break;
        }
      }

LABEL_5:
      sub_264B40FA4();
      if (qword_27FF88428 == -1)
      {
        goto LABEL_32;
      }

      goto LABEL_36;
  }

LABEL_31:
  sub_264B40FA4();
  if (qword_27FF88428 != -1)
  {
LABEL_36:
    swift_once();
  }

LABEL_32:
  v9 = qword_27FFA7218;
  sub_264B40114();
  return sub_264B41054();
}

id RemoteAuthenticationError.errorDescription.getter()
{
  v1 = sub_264B40124();
  MEMORY[0x28223BE20](v1 - 8, v2);
  v3 = sub_264B41004();
  MEMORY[0x28223BE20](v3 - 8, v4);
  v5 = sub_264B40FE4();
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = *v0;
  v7 = *(v0 + 8);
  v9 = *(v0 + 16);
  if (v9 <= 3)
  {
    switch(v9)
    {
      case 1u:
        sub_264B40FD4();
        sub_264B40FC4();
        sub_264B40FB4();
        sub_264B40FC4();
        sub_264B40FF4();
        if (qword_27FF88428 == -1)
        {
          goto LABEL_44;
        }

        goto LABEL_52;
      case 2u:
        sub_264B40FD4();
        sub_264B40FC4();
        sub_264B40FB4();
        sub_264B40FC4();
        sub_264B40FF4();
        if (qword_27FF88428 == -1)
        {
          goto LABEL_44;
        }

        goto LABEL_52;
      case 3u:
        sub_264B40FD4();
        sub_264B40FC4();
        sub_264B40FB4();
        sub_264B40FC4();
        sub_264B40FF4();
        if (qword_27FF88428 == -1)
        {
          goto LABEL_44;
        }

        goto LABEL_52;
    }
  }

  else if (*(v0 + 16) > 5u)
  {
    if (v9 == 6)
    {
      sub_264B40FD4();
      sub_264B40FC4();
      sub_264B40FB4();
      sub_264B40FC4();
      sub_264B40FF4();
      if (qword_27FF88428 == -1)
      {
        goto LABEL_44;
      }

      goto LABEL_52;
    }

    if (v9 == 7)
    {
      result = 0;
      if (v8 <= 6)
      {
        if (__PAIR128__((v8 >= 3) + v7 - 1, v8 - 3) < 2)
        {
          return result;
        }

        if (!(v8 ^ 5 | v7))
        {
          sub_264B40FA4();
          if (qword_27FF88428 == -1)
          {
            goto LABEL_44;
          }

          goto LABEL_52;
        }

        if (!(v8 ^ 6 | v7))
        {
          sub_264B40FA4();
          if (qword_27FF88428 == -1)
          {
            goto LABEL_44;
          }

          goto LABEL_52;
        }
      }

      else if (v8 > 9)
      {
        if (__PAIR128__((v8 >= 0xA) + v7 - 1, v8 - 10) < 2)
        {
          return result;
        }
      }

      else
      {
        if (!(v8 ^ 7 | v7))
        {
          sub_264B40FA4();
          if (qword_27FF88428 == -1)
          {
            goto LABEL_44;
          }

          goto LABEL_52;
        }

        if (!(v8 ^ 8 | v7))
        {
          sub_264B40FA4();
          if (qword_27FF88428 == -1)
          {
            goto LABEL_44;
          }

          goto LABEL_52;
        }

        if (!(v8 ^ 9 | v7))
        {
          sub_264B40FA4();
          if (qword_27FF88428 == -1)
          {
            goto LABEL_44;
          }

          goto LABEL_52;
        }
      }
    }
  }

  else
  {
    if (v9 == 4)
    {
      result = MobileGestalt_get_current_device();
      if (result)
      {
        v11 = result;
        wapiCapability = MobileGestalt_get_wapiCapability();

        if (wapiCapability)
        {
          sub_264B40FD4();
          sub_264B40FC4();
          sub_264B40FB4();
          sub_264B40FC4();
          sub_264B40FF4();
          if (qword_27FF88428 == -1)
          {
            goto LABEL_44;
          }
        }

        else
        {
          sub_264B40FD4();
          sub_264B40FC4();
          sub_264B40FB4();
          sub_264B40FC4();
          sub_264B40FF4();
          if (qword_27FF88428 == -1)
          {
            goto LABEL_44;
          }
        }

        goto LABEL_52;
      }

LABEL_58:
      __break(1u);
      return result;
    }

    if (v9 == 5)
    {
      sub_264B40FD4();
      sub_264B40FC4();
      sub_264B40FB4();
      sub_264B40FC4();
      sub_264B40FF4();
      if (qword_27FF88428 == -1)
      {
        goto LABEL_44;
      }

      goto LABEL_52;
    }
  }

  result = MobileGestalt_get_current_device();
  if (!result)
  {
    __break(1u);
    goto LABEL_58;
  }

  v13 = result;
  v14 = MobileGestalt_get_wapiCapability();

  if (v14)
  {
    sub_264B40FA4();
    if (qword_27FF88428 == -1)
    {
      goto LABEL_44;
    }

    goto LABEL_52;
  }

  sub_264B40FA4();
  if (qword_27FF88428 != -1)
  {
LABEL_52:
    swift_once();
  }

LABEL_44:
  v15 = qword_27FFA7218;
  sub_264B40114();
  return sub_264B41054();
}

uint64_t _s16ScreenSharingKit25RemoteAuthenticationErrorO2eeoiySbAC_ACtFZ_0(unint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = a2[1];
  v7 = *(a2 + 16);
  if (v4 > 3)
  {
    if (*(a1 + 16) <= 5u)
    {
      if (v4 == 4)
      {
        if (v7 == 4)
        {
          if (v3 == v6 && v2 == v5)
          {
            sub_264A8CFB0(*a1, v2, 4u);
            sub_264A8CFB0(v3, v2, 4u);
            sub_264A0E11C(v3, v2, 4u);
            v8 = v3;
            v9 = v2;
            v10 = 4;
            goto LABEL_103;
          }

          v12 = sub_264B41AA4();
          sub_264A8CFB0(v6, v5, 4u);
          sub_264A8CFB0(v3, v2, 4u);
          sub_264A0E11C(v3, v2, 4u);
          v13 = v6;
          v14 = v5;
          v15 = 4;
LABEL_70:
          sub_264A0E11C(v13, v14, v15);
          return v12 & 1;
        }
      }

      else if (v7 == 5)
      {
        if (v3 == v6 && v2 == v5)
        {
          sub_264A8CFB0(*a1, v2, 5u);
          sub_264A8CFB0(v3, v2, 5u);
          sub_264A0E11C(v3, v2, 5u);
          v8 = v3;
          v9 = v2;
          v10 = 5;
          goto LABEL_103;
        }

        v12 = sub_264B41AA4();
        sub_264A8CFB0(v6, v5, 5u);
        sub_264A8CFB0(v3, v2, 5u);
        sub_264A0E11C(v3, v2, 5u);
        v13 = v6;
        v14 = v5;
        v15 = 5;
        goto LABEL_70;
      }

LABEL_104:
      sub_264A8CFB0(*a2, a2[1], v7);
      sub_264A8CFB0(v3, v2, v4);
      sub_264A0E11C(v3, v2, v4);
      sub_264A0E11C(v6, v5, v7);
      return 0;
    }

    if (v4 == 6)
    {
      if (v7 == 6)
      {
        if (v3 == v6 && v2 == v5)
        {
          sub_264A8CFB0(*a1, v2, 6u);
          sub_264A8CFB0(v3, v2, 6u);
          sub_264A0E11C(v3, v2, 6u);
          v8 = v3;
          v9 = v2;
          v10 = 6;
          goto LABEL_103;
        }

        v12 = sub_264B41AA4();
        sub_264A8CFB0(v6, v5, 6u);
        sub_264A8CFB0(v3, v2, 6u);
        sub_264A0E11C(v3, v2, 6u);
        v13 = v6;
        v14 = v5;
        v15 = 6;
        goto LABEL_70;
      }

      goto LABEL_104;
    }

    if (v3 > 5)
    {
      if (v3 > 8)
      {
        if (v3 ^ 9 | v2)
        {
          if (v3 ^ 0xA | v2)
          {
            if (v7 != 7 || v6 != 11 || v5)
            {
              goto LABEL_104;
            }

            sub_264A0E11C(*a1, v2, 7u);
            v8 = 11;
          }

          else
          {
            if (v7 != 7 || v6 != 10 || v5)
            {
              goto LABEL_104;
            }

            sub_264A0E11C(*a1, v2, 7u);
            v8 = 10;
          }
        }

        else
        {
          if (v7 != 7 || v6 != 9 || v5)
          {
            goto LABEL_104;
          }

          sub_264A0E11C(*a1, v2, 7u);
          v8 = 9;
        }
      }

      else if (v3 ^ 6 | v2)
      {
        if (v3 ^ 7 | v2)
        {
          if (v7 != 7 || v6 != 8 || v5)
          {
            goto LABEL_104;
          }

          sub_264A0E11C(*a1, v2, 7u);
          v8 = 8;
        }

        else
        {
          if (v7 != 7 || v6 != 7 || v5)
          {
            goto LABEL_104;
          }

          sub_264A0E11C(*a1, v2, 7u);
          v8 = 7;
        }
      }

      else
      {
        if (v7 != 7 || v6 != 6 || v5)
        {
          goto LABEL_104;
        }

        sub_264A0E11C(*a1, v2, 7u);
        v8 = 6;
      }
    }

    else if (v3 > 2)
    {
      if (v3 ^ 3 | v2)
      {
        if (v3 ^ 4 | v2)
        {
          if (v7 != 7 || v6 != 5 || v5)
          {
            goto LABEL_104;
          }

          sub_264A0E11C(*a1, v2, 7u);
          v8 = 5;
        }

        else
        {
          if (v7 != 7 || v6 != 4 || v5)
          {
            goto LABEL_104;
          }

          sub_264A0E11C(*a1, v2, 7u);
          v8 = 4;
        }
      }

      else
      {
        if (v7 != 7 || v6 != 3 || v5)
        {
          goto LABEL_104;
        }

        sub_264A0E11C(*a1, v2, 7u);
        v8 = 3;
      }
    }

    else if (v3 | v2)
    {
      if (!(v3 ^ 1 | v2))
      {
        if (v7 != 7 || v6 != 1 || v5)
        {
          goto LABEL_104;
        }

        sub_264A0E11C(*a1, v2, 7u);
        v11 = 1;
        sub_264A0E11C(1, 0, 7u);
        return v11;
      }

      if (v7 != 7 || v6 != 2 || v5)
      {
        goto LABEL_104;
      }

      sub_264A0E11C(*a1, v2, 7u);
      v8 = 2;
    }

    else
    {
      if (v7 != 7 || v5 | v6)
      {
        goto LABEL_104;
      }

      sub_264A0E11C(*a1, v2, 7u);
      v8 = 0;
    }

    v9 = 0;
    v10 = 7;
    goto LABEL_103;
  }

  if (*(a1 + 16) > 1u)
  {
    if (v4 == 2)
    {
      if (v7 == 2)
      {
        if (v3 == v6 && v2 == v5)
        {
          sub_264A8CFB0(*a1, v2, 2u);
          sub_264A8CFB0(v3, v2, 2u);
          sub_264A0E11C(v3, v2, 2u);
          v8 = v3;
          v9 = v2;
          v10 = 2;
          goto LABEL_103;
        }

        v12 = sub_264B41AA4();
        sub_264A8CFB0(v6, v5, 2u);
        sub_264A8CFB0(v3, v2, 2u);
        sub_264A0E11C(v3, v2, 2u);
        v13 = v6;
        v14 = v5;
        v15 = 2;
        goto LABEL_70;
      }
    }

    else if (v7 == 3)
    {
      if (v3 == v6 && v2 == v5)
      {
        sub_264A8CFB0(*a1, v2, 3u);
        sub_264A8CFB0(v3, v2, 3u);
        sub_264A0E11C(v3, v2, 3u);
        v8 = v3;
        v9 = v2;
        v10 = 3;
        goto LABEL_103;
      }

      v12 = sub_264B41AA4();
      sub_264A8CFB0(v6, v5, 3u);
      sub_264A8CFB0(v3, v2, 3u);
      sub_264A0E11C(v3, v2, 3u);
      v13 = v6;
      v14 = v5;
      v15 = 3;
      goto LABEL_70;
    }

    goto LABEL_104;
  }

  if (!*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      if (v3 == v6 && v2 == v5)
      {
        sub_264A8CFB0(*a1, v2, 0);
        sub_264A8CFB0(v3, v2, 0);
        sub_264A0E11C(v3, v2, 0);
        v8 = v3;
        v9 = v2;
        v10 = 0;
LABEL_103:
        sub_264A0E11C(v8, v9, v10);
        return 1;
      }

      v12 = sub_264B41AA4();
      sub_264A8CFB0(v6, v5, 0);
      sub_264A8CFB0(v3, v2, 0);
      sub_264A0E11C(v3, v2, 0);
      v13 = v6;
      v14 = v5;
      v15 = 0;
      goto LABEL_70;
    }

    goto LABEL_104;
  }

  if (v7 != 1)
  {
    goto LABEL_104;
  }

  if (v3 != v6 || v2 != v5)
  {
    v12 = sub_264B41AA4();
    sub_264A8CFB0(v6, v5, 1u);
    sub_264A8CFB0(v3, v2, 1u);
    sub_264A0E11C(v3, v2, 1u);
    v13 = v6;
    v14 = v5;
    v15 = 1;
    goto LABEL_70;
  }

  v11 = 1;
  sub_264A8CFB0(*a1, v2, 1u);
  sub_264A8CFB0(v3, v2, 1u);
  sub_264A0E11C(v3, v2, 1u);
  sub_264A0E11C(v3, v2, 1u);
  return v11;
}

uint64_t get_enum_tag_for_layout_string_16ScreenSharingKit25RemoteAuthenticationErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 7) == 7)
  {
    return (*a1 + 7);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

uint64_t sub_264A8CEFC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && *(a1 + 17))
  {
    return (*a1 + 249);
  }

  v3 = *(a1 + 16);
  if (v3 <= 7)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_264A8CF44(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 16) = 0;
    *result = a2 - 249;
    *(result + 8) = 0;
    if (a3 >= 0xF9)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
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

uint64_t sub_264A8CF88(uint64_t result, unsigned int a2)
{
  if (a2 >= 7)
  {
    *result = a2 - 7;
    *(result + 8) = 0;
    LOBYTE(a2) = 7;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_264A8CFB0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 6u)
  {
  }

  return result;
}

uint64_t type metadata accessor for ControlMessage(uint64_t a1)
{
  result = qword_27FF8AB48;
  if (!qword_27FF8AB48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_264A8D014(uint64_t a1)
{
  result = type metadata accessor for HIDMessage(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for RTIMessage(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_264A8D0B8(void *a1)
{
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8AC00, &qword_264B4D1A8);
  v85 = *(v86 - 8);
  MEMORY[0x28223BE20](v86, v2);
  v84 = &v69 - v3;
  v82 = type metadata accessor for RTIMessage(0);
  MEMORY[0x28223BE20](v82, v4);
  v83 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8AC08, &qword_264B4D1B0);
  v80 = *(v81 - 8);
  MEMORY[0x28223BE20](v81, v6);
  v79 = &v69 - v7;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8AC10, &qword_264B4D1B8);
  v75 = *(v77 - 8);
  MEMORY[0x28223BE20](v77, v8);
  v73 = &v69 - v9;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8AC18, &qword_264B4D1C0);
  v76 = *(v78 - 8);
  MEMORY[0x28223BE20](v78, v10);
  v74 = &v69 - v11;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8AC20, &qword_264B4D1C8);
  v72 = *(v71 - 8);
  MEMORY[0x28223BE20](v71, v12);
  *&v91 = &v69 - v13;
  v70 = type metadata accessor for HIDMessage(0);
  MEMORY[0x28223BE20](v70, v14);
  v90 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8AC28, &qword_264B4D1D0);
  v69 = *(v89 - 8);
  MEMORY[0x28223BE20](v89, v16);
  v88 = &v69 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8AC30, &qword_264B4D1D8);
  v87 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v19);
  v21 = &v69 - v20;
  v22 = type metadata accessor for ControlMessage(0);
  MEMORY[0x28223BE20](v22, v23);
  v25 = &v69 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8AC38, &qword_264B4D1E0);
  v93 = *(v108 - 8);
  MEMORY[0x28223BE20](v108, v26);
  v28 = &v69 - v27;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_264A8F3B4();
  v29 = v28;
  sub_264B41BD4();
  sub_264A8F7A4(v92, v25);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    v38 = v87;
    v39 = v88;
    v40 = v89;
    v41 = v91;
    if (EnumCaseMultiPayload)
    {
      v42 = v108;
      if (EnumCaseMultiPayload == 1)
      {
        v44 = *v25;
        v43 = *(v25 + 1);
        v46 = *(v25 + 2);
        v45 = *(v25 + 3);
        *&v92 = v45;
        LOBYTE(v101) = 1;
        sub_264A8F6A8();
        sub_264B419B4();
        *&v101 = v44;
        *(&v101 + 1) = v43;
        *&v102 = v46;
        *(&v102 + 1) = v45;
        sub_264A18B80();
        sub_264B41A24();
        (*(v69 + 8))(v39, v40);
        (*(v93 + 8))(v29, v42);
        sub_264A187D4(v44, v43, v46, v92);
      }

      else
      {
        v60 = v90;
        sub_264A8F904(v25, v90, type metadata accessor for HIDMessage);
        LOBYTE(v101) = 2;
        sub_264A8F654();
        sub_264B419B4();
        sub_264A8F96C(&qword_27FF89588, type metadata accessor for HIDMessage, &unk_264B52AB4);
        v61 = v71;
        sub_264B41A24();
        (*(v72 + 8))(v41, v61);
        sub_264A8F9B4(v60, type metadata accessor for HIDMessage);
        (*(v93 + 8))(v29, v42);
      }
    }

    else
    {
      v57 = v25[32];
      LOBYTE(v101) = 0;
      sub_264A8F6FC();
      v58 = *(v25 + 1);
      v92 = *v25;
      v91 = v58;
      v59 = v108;
      sub_264B419B4();
      v101 = v92;
      v102 = v91;
      LOBYTE(v103) = v57;
      sub_264A8FA14();
      sub_264B41A24();
      (*(v38 + 8))(v21, v18);
      (*(v93 + 8))(v29, v59);
    }
  }

  else if (EnumCaseMultiPayload > 4)
  {
    v47 = v108;
    v48 = v28;
    if (EnumCaseMultiPayload == 5)
    {
      v49 = *v25;
      v50 = *(v25 + 1);
      v52 = *(v25 + 2);
      v51 = *(v25 + 3);
      v53 = v25[32];
      v54 = v25[33];
      LOBYTE(v101) = 5;
      sub_264A8F45C();
      v55 = v79;
      sub_264B419B4();
      *&v92 = v49;
      *&v101 = v49;
      *(&v101 + 1) = v50;
      *&v102 = v52;
      *(&v102 + 1) = v51;
      LOBYTE(v103) = v53;
      BYTE1(v103) = v54;
      sub_264A8F808();
      v56 = v81;
      sub_264B41A24();
      (*(v80 + 8))(v55, v56);
      (*(v93 + 8))(v48, v108);
      sub_2649DEF6C(v92, v50);
    }

    else
    {
      v66 = v83;
      sub_264A8F904(v25, v83, type metadata accessor for RTIMessage);
      LOBYTE(v101) = 6;
      sub_264A8F408();
      v67 = v84;
      sub_264B419B4();
      sub_264A8F96C(&qword_27FF8AC40, type metadata accessor for RTIMessage, &protocol conformance descriptor for RTIMessage);
      v68 = v86;
      sub_264B41A24();
      (*(v85 + 8))(v67, v68);
      sub_264A8F9B4(v66, type metadata accessor for RTIMessage);
      (*(v93 + 8))(v48, v47);
    }
  }

  else
  {
    v31 = v108;
    v32 = v28;
    if (EnumCaseMultiPayload == 3)
    {
      v33 = *(v25 + 5);
      v105 = *(v25 + 4);
      v106 = v33;
      v107 = *(v25 + 12);
      v34 = *(v25 + 1);
      v101 = *v25;
      v102 = v34;
      v35 = *(v25 + 3);
      v103 = *(v25 + 2);
      v104 = v35;
      LOBYTE(v94) = 3;
      sub_264A8F5AC();
      v36 = v74;
      sub_264B419B4();
      v98 = v105;
      v99 = v106;
      v100 = v107;
      v94 = v101;
      v95 = v102;
      v97 = v104;
      v96 = v103;
      sub_264A8F8B0();
      v37 = v78;
      sub_264B41A24();
      (*(v76 + 8))(v36, v37);
      (*(v93 + 8))(v29, v31);
      sub_264A7DB74(&v101);
    }

    else
    {
      v62 = *v25;
      v63 = *(v25 + 1);
      LOBYTE(v101) = 4;
      sub_264A8F504();
      v64 = v73;
      sub_264B419B4();
      *&v101 = v62;
      *(&v101 + 1) = v63;
      sub_264A8F85C();
      v65 = v77;
      sub_264B41A24();
      (*(v75 + 8))(v64, v65);
      (*(v93 + 8))(v32, v31);
      sub_2649E7004(v62, v63);
    }
  }
}

uint64_t sub_264A8DDC8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v137 = a2;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8AB58, &qword_264B4D160);
  v126 = *(v125 - 8);
  MEMORY[0x28223BE20](v125, v3);
  v129 = &v104 - v4;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8AB60, &qword_264B4D168);
  v124 = *(v123 - 8);
  MEMORY[0x28223BE20](v123, v5);
  v136 = &v104 - v6;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8AB68, &qword_264B4D170);
  v121 = *(v122 - 8);
  MEMORY[0x28223BE20](v122, v7);
  v135 = &v104 - v8;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8AB70, &qword_264B4D178);
  v118 = *(v120 - 8);
  MEMORY[0x28223BE20](v120, v9);
  v128 = &v104 - v10;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8AB78, &qword_264B4D180);
  v119 = *(v117 - 8);
  MEMORY[0x28223BE20](v117, v11);
  v127 = &v104 - v12;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8AB80, &qword_264B4D188);
  v116 = *(v115 - 8);
  MEMORY[0x28223BE20](v115, v13);
  v134 = &v104 - v14;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8AB88, &qword_264B4D190);
  v113 = *(v114 - 8);
  MEMORY[0x28223BE20](v114, v15);
  v132 = &v104 - v16;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8AB90, &unk_264B4D198);
  v131 = *(v138 - 8);
  MEMORY[0x28223BE20](v138, v17);
  v19 = &v104 - v18;
  v130 = type metadata accessor for ControlMessage(0);
  v21 = MEMORY[0x28223BE20](v130, v20);
  v112 = &v104 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21, v23);
  v111 = (&v104 - v25);
  v27 = MEMORY[0x28223BE20](v24, v26);
  v110 = (&v104 - v28);
  v30 = MEMORY[0x28223BE20](v27, v29);
  v32 = &v104 - v31;
  v34 = MEMORY[0x28223BE20](v30, v33);
  v36 = &v104 - v35;
  v38 = MEMORY[0x28223BE20](v34, v37);
  v40 = &v104 - v39;
  v42 = MEMORY[0x28223BE20](v38, v41);
  v44 = &v104 - v43;
  MEMORY[0x28223BE20](v42, v45);
  v47 = &v104 - v46;
  v48 = a1[3];
  v139 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v48);
  sub_264A8F3B4();
  v133 = v19;
  v49 = v151;
  sub_264B41BC4();
  if (v49)
  {
    goto LABEL_11;
  }

  v105 = v44;
  v106 = v40;
  v108 = v36;
  v107 = v32;
  v50 = v132;
  v51 = v134;
  v151 = 0;
  v52 = v135;
  v53 = v136;
  v109 = v47;
  v54 = v137;
  v55 = v133;
  v56 = sub_264B419A4();
  v57 = (2 * *(v56 + 16)) | 1;
  v147 = v56;
  v148 = v56 + 32;
  v149 = 0;
  v150 = v57;
  v58 = sub_2649E0EE0();
  if (v58 == 7 || v149 != v150 >> 1)
  {
    v64 = sub_264B417A4();
    swift_allocError();
    v66 = v65;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88900, &qword_264B445C0);
    *v66 = v130;
    v67 = v138;
    sub_264B41904();
    sub_264B41794();
    (*(*(v64 - 8) + 104))(v66, *MEMORY[0x277D84160], v64);
    swift_willThrow();
    (*(v131 + 8))(v55, v67);
  }

  else
  {
    if (v58 > 2u)
    {
      if (v58 <= 4u)
      {
        v59 = v131;
        if (v58 == 3)
        {
          LOBYTE(v140) = 3;
          sub_264A8F5AC();
          v60 = v128;
          v61 = v138;
          v62 = v151;
          sub_264B418F4();
          if (!v62)
          {
            sub_264A8F600();
            v63 = v120;
            sub_264B41984();
            (*(v118 + 8))(v60, v63);
            (*(v59 + 8))(v55, v61);
            swift_unknownObjectRelease();
            v95 = v145;
            v96 = v107;
            *(v107 + 4) = v144;
            v96[5] = v95;
            *(v96 + 12) = v146;
            v97 = v141;
            *v96 = v140;
            v96[1] = v97;
            v98 = v143;
            v96[2] = v142;
            v96[3] = v98;
LABEL_32:
            swift_storeEnumTagMultiPayload();
            v94 = v96;
            goto LABEL_33;
          }

          goto LABEL_30;
        }

        LOBYTE(v140) = 4;
        sub_264A8F504();
        v74 = v138;
        v83 = v151;
        sub_264B418F4();
        if (!v83)
        {
          sub_264A8F558();
          v84 = v122;
          sub_264B41984();
          (*(v121 + 8))(v52, v84);
          (*(v59 + 8))(v55, v74);
          swift_unknownObjectRelease();
          v96 = v110;
          *v110 = v140;
          goto LABEL_32;
        }

        goto LABEL_27;
      }

      v59 = v131;
      if (v58 == 5)
      {
        LOBYTE(v140) = 5;
        sub_264A8F45C();
        v74 = v138;
        v75 = v151;
        sub_264B418F4();
        if (!v75)
        {
          sub_264A8F4B0();
          v76 = v123;
          sub_264B41984();
          (*(v124 + 8))(v53, v76);
          (*(v59 + 8))(v55, v138);
          swift_unknownObjectRelease();
          v99 = v141;
          v100 = v142;
          v101 = BYTE1(v142);
          v96 = v111;
          *v111 = v140;
          v96[1] = v99;
          *(v96 + 32) = v100;
          *(v96 + 33) = v101;
          goto LABEL_32;
        }

LABEL_27:
        (*(v59 + 8))(v55, v74);
        goto LABEL_10;
      }

      LOBYTE(v140) = 6;
      sub_264A8F408();
      v61 = v138;
      v85 = v151;
      sub_264B418F4();
      if (v85)
      {
LABEL_30:
        (*(v59 + 8))(v55, v61);
        goto LABEL_10;
      }

      type metadata accessor for RTIMessage(0);
      sub_264A8F96C(&qword_27FF8ABA8, type metadata accessor for RTIMessage, &protocol conformance descriptor for RTIMessage);
      v86 = v112;
      v87 = v125;
      v88 = v129;
      sub_264B41984();
      (*(v126 + 8))(v88, v87);
      (*(v59 + 8))(v55, v61);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v94 = v86;
LABEL_33:
      v102 = v109;
      sub_264A8F904(v94, v109, type metadata accessor for ControlMessage);
      v103 = v139;
      sub_264A8F904(v102, v54, type metadata accessor for ControlMessage);
      v68 = v103;
      return __swift_destroy_boxed_opaque_existential_0(v68);
    }

    if (!v58)
    {
      LOBYTE(v140) = 0;
      sub_264A8F6FC();
      v77 = v50;
      v78 = v138;
      v79 = v151;
      sub_264B418F4();
      if (!v79)
      {
        sub_264A8F750();
        v89 = v114;
        sub_264B41984();
        (*(v113 + 8))(v77, v89);
        (*(v131 + 8))(v55, v78);
        swift_unknownObjectRelease();
        v90 = v142;
        v91 = v141;
        v96 = v105;
        *v105 = v140;
        v96[1] = v91;
        *(v96 + 32) = v90;
        goto LABEL_32;
      }

      (*(v131 + 8))(v55, v78);
      goto LABEL_10;
    }

    v70 = v138;
    v71 = v151;
    if (v58 == 1)
    {
      LOBYTE(v140) = 1;
      sub_264A8F6A8();
      sub_264B418F4();
      if (!v71)
      {
        sub_264A189A4();
        v72 = v115;
        sub_264B41984();
        v73 = v131;
        (*(v116 + 8))(v51, v72);
        (*(v73 + 8))(v55, v70);
        swift_unknownObjectRelease();
        v92 = v141;
        v93 = v106;
        *v106 = v140;
        v93[1] = v92;
        swift_storeEnumTagMultiPayload();
        v94 = v93;
        goto LABEL_33;
      }
    }

    else
    {
      LOBYTE(v140) = 2;
      sub_264A8F654();
      v80 = v127;
      sub_264B418F4();
      if (!v71)
      {
        type metadata accessor for HIDMessage(0);
        sub_264A8F96C(&qword_27FF89560, type metadata accessor for HIDMessage, &unk_264B52ADC);
        v81 = v108;
        v82 = v117;
        sub_264B41984();
        (*(v119 + 8))(v80, v82);
        (*(v131 + 8))(v55, v70);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v94 = v81;
        goto LABEL_33;
      }
    }

    (*(v131 + 8))(v55, v70);
  }

LABEL_10:
  swift_unknownObjectRelease();
LABEL_11:
  v68 = v139;
  return __swift_destroy_boxed_opaque_existential_0(v68);
}

uint64_t sub_264A8EEAC(uint64_t a1)
{
  v2 = sub_264A8F504();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264A8EEE8(uint64_t a1)
{
  v2 = sub_264A8F504();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_264A8EF24()
{
  v1 = *v0;
  v2 = 2002874980;
  v3 = 0xD000000000000010;
  if (v1 != 5)
  {
    v3 = 0x617373654D697472;
  }

  v4 = 0x737574617473;
  if (v1 != 3)
  {
    v4 = 0x6269737365636361;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6D6574737973;
  if (v1 != 1)
  {
    v5 = 0x617373654D646968;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_264A8F008@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_264A90468(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_264A8F03C(uint64_t a1)
{
  v2 = sub_264A8F3B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264A8F078(uint64_t a1)
{
  v2 = sub_264A8F3B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264A8F0B4(uint64_t a1)
{
  v2 = sub_264A8F45C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264A8F0F0(uint64_t a1)
{
  v2 = sub_264A8F45C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264A8F12C(uint64_t a1)
{
  v2 = sub_264A8F6FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264A8F168(uint64_t a1)
{
  v2 = sub_264A8F6FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264A8F1A4(uint64_t a1)
{
  v2 = sub_264A8F654();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264A8F1E0(uint64_t a1)
{
  v2 = sub_264A8F654();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264A8F21C(uint64_t a1)
{
  v2 = sub_264A8F408();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264A8F258(uint64_t a1)
{
  v2 = sub_264A8F408();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264A8F294(uint64_t a1)
{
  v2 = sub_264A8F5AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264A8F2D0(uint64_t a1)
{
  v2 = sub_264A8F5AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264A8F30C(uint64_t a1)
{
  v2 = sub_264A8F6A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264A8F348(uint64_t a1)
{
  v2 = sub_264A8F6A8();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_264A8F3B4()
{
  result = qword_27FF8AB98;
  if (!qword_27FF8AB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8AB98);
  }

  return result;
}

unint64_t sub_264A8F408()
{
  result = qword_27FF8ABA0;
  if (!qword_27FF8ABA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8ABA0);
  }

  return result;
}

unint64_t sub_264A8F45C()
{
  result = qword_27FF8ABB0;
  if (!qword_27FF8ABB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8ABB0);
  }

  return result;
}

unint64_t sub_264A8F4B0()
{
  result = qword_27FF8ABB8;
  if (!qword_27FF8ABB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8ABB8);
  }

  return result;
}

unint64_t sub_264A8F504()
{
  result = qword_27FF8ABC0;
  if (!qword_27FF8ABC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8ABC0);
  }

  return result;
}

unint64_t sub_264A8F558()
{
  result = qword_27FF8ABC8;
  if (!qword_27FF8ABC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8ABC8);
  }

  return result;
}

unint64_t sub_264A8F5AC()
{
  result = qword_27FF8ABD0;
  if (!qword_27FF8ABD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8ABD0);
  }

  return result;
}

unint64_t sub_264A8F600()
{
  result = qword_27FF8ABD8;
  if (!qword_27FF8ABD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8ABD8);
  }

  return result;
}

unint64_t sub_264A8F654()
{
  result = qword_27FF8ABE0;
  if (!qword_27FF8ABE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8ABE0);
  }

  return result;
}

unint64_t sub_264A8F6A8()
{
  result = qword_27FF8ABE8;
  if (!qword_27FF8ABE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8ABE8);
  }

  return result;
}

unint64_t sub_264A8F6FC()
{
  result = qword_27FF8ABF0;
  if (!qword_27FF8ABF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8ABF0);
  }

  return result;
}

unint64_t sub_264A8F750()
{
  result = qword_27FF8ABF8;
  if (!qword_27FF8ABF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8ABF8);
  }

  return result;
}

uint64_t sub_264A8F7A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ControlMessage(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_264A8F808()
{
  result = qword_27FF8AC48;
  if (!qword_27FF8AC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8AC48);
  }

  return result;
}

unint64_t sub_264A8F85C()
{
  result = qword_27FF8AC50;
  if (!qword_27FF8AC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8AC50);
  }

  return result;
}

unint64_t sub_264A8F8B0()
{
  result = qword_27FF8AC58;
  if (!qword_27FF8AC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8AC58);
  }

  return result;
}

uint64_t sub_264A8F904(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_264A8F96C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_264A8F9B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_264A8FA14()
{
  result = qword_27FF8AC60;
  if (!qword_27FF8AC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8AC60);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ControlMessage.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ControlMessage.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_264A8FC2C()
{
  result = qword_27FF8AC68;
  if (!qword_27FF8AC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8AC68);
  }

  return result;
}

unint64_t sub_264A8FC84()
{
  result = qword_27FF8AC70;
  if (!qword_27FF8AC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8AC70);
  }

  return result;
}

unint64_t sub_264A8FCDC()
{
  result = qword_27FF8AC78;
  if (!qword_27FF8AC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8AC78);
  }

  return result;
}

unint64_t sub_264A8FD34()
{
  result = qword_27FF8AC80;
  if (!qword_27FF8AC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8AC80);
  }

  return result;
}

unint64_t sub_264A8FD8C()
{
  result = qword_27FF8AC88;
  if (!qword_27FF8AC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8AC88);
  }

  return result;
}

unint64_t sub_264A8FDE4()
{
  result = qword_27FF8AC90;
  if (!qword_27FF8AC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8AC90);
  }

  return result;
}

unint64_t sub_264A8FE3C()
{
  result = qword_27FF8AC98;
  if (!qword_27FF8AC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8AC98);
  }

  return result;
}

unint64_t sub_264A8FE94()
{
  result = qword_27FF8ACA0;
  if (!qword_27FF8ACA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8ACA0);
  }

  return result;
}

unint64_t sub_264A8FEEC()
{
  result = qword_27FF8ACA8;
  if (!qword_27FF8ACA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8ACA8);
  }

  return result;
}

unint64_t sub_264A8FF44()
{
  result = qword_27FF8ACB0;
  if (!qword_27FF8ACB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8ACB0);
  }

  return result;
}

unint64_t sub_264A8FF9C()
{
  result = qword_27FF8ACB8;
  if (!qword_27FF8ACB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8ACB8);
  }

  return result;
}

unint64_t sub_264A8FFF4()
{
  result = qword_27FF8ACC0;
  if (!qword_27FF8ACC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8ACC0);
  }

  return result;
}

unint64_t sub_264A9004C()
{
  result = qword_27FF8ACC8;
  if (!qword_27FF8ACC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8ACC8);
  }

  return result;
}

unint64_t sub_264A900A4()
{
  result = qword_27FF8ACD0;
  if (!qword_27FF8ACD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8ACD0);
  }

  return result;
}

unint64_t sub_264A900FC()
{
  result = qword_27FF8ACD8;
  if (!qword_27FF8ACD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8ACD8);
  }

  return result;
}

unint64_t sub_264A90154()
{
  result = qword_27FF8ACE0;
  if (!qword_27FF8ACE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8ACE0);
  }

  return result;
}

unint64_t sub_264A901AC()
{
  result = qword_27FF8ACE8;
  if (!qword_27FF8ACE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8ACE8);
  }

  return result;
}

unint64_t sub_264A90204()
{
  result = qword_27FF8ACF0;
  if (!qword_27FF8ACF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8ACF0);
  }

  return result;
}

unint64_t sub_264A9025C()
{
  result = qword_27FF8ACF8;
  if (!qword_27FF8ACF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8ACF8);
  }

  return result;
}

unint64_t sub_264A902B4()
{
  result = qword_27FF8AD00;
  if (!qword_27FF8AD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8AD00);
  }

  return result;
}

unint64_t sub_264A9030C()
{
  result = qword_27FF8AD08;
  if (!qword_27FF8AD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8AD08);
  }

  return result;
}

unint64_t sub_264A90364()
{
  result = qword_27FF8AD10;
  if (!qword_27FF8AD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8AD10);
  }

  return result;
}

unint64_t sub_264A903BC()
{
  result = qword_27FF8AD18;
  if (!qword_27FF8AD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8AD18);
  }

  return result;
}

unint64_t sub_264A90414()
{
  result = qword_27FF8AD20;
  if (!qword_27FF8AD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8AD20);
  }

  return result;
}

uint64_t sub_264A90468(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 2002874980 && a2 == 0xE400000000000000;
  if (v3 || (sub_264B41AA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D6574737973 && a2 == 0xE600000000000000 || (sub_264B41AA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x617373654D646968 && a2 == 0xEA00000000006567 || (sub_264B41AA4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000 || (sub_264B41AA4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6269737365636361 && a2 == 0xED00007974696C69 || (sub_264B41AA4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000264B5E850 == a2 || (sub_264B41AA4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x617373654D697472 && a2 == 0xEA00000000006567)
  {

    return 6;
  }

  else
  {
    v6 = sub_264B41AA4();

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

uint64_t sub_264A906EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_264A23FD8(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_264A22708(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    sub_2649D04D4(a1, &qword_27FF8BB60, qword_264B44A80);
    sub_264A91B50(a2, a3, v9);

    return sub_2649D04D4(v9, &qword_27FF8BB60, qword_264B44A80);
  }

  return result;
}

uint64_t sub_264A907BC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v3;
    result = sub_264A22B6C(a1, a2, a3 & 1, isUniquelyReferenced_nonNull_native);
    *v3 = v14;
  }

  else
  {
    result = sub_264A20B44(a3 & 1);
    if (v10)
    {
      v11 = result;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v3;
      v15 = *v4;
      if (!v12)
      {
        sub_264A236AC();
        v13 = v15;
      }

      swift_unknownObjectRelease();
      result = sub_264A91F54(v11, v13);
      *v4 = v13;
    }
  }

  return result;
}

unint64_t telemetryPayload(_:_:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_264A24308(MEMORY[0x277D84F90]);
  v7 = MEMORY[0x277D837D0];
  if (a2)
  {
    v45 = MEMORY[0x277D837D0];
    *&v44 = a1;
    *(&v44 + 1) = a2;
    sub_264A23FD8(&v44, v43);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_264A22708(v43, 0x6E6F73616552, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
  }

  if (a3)
  {
    v9 = a3;
    v10 = sub_264B3FF74();
    if (qword_27FF883F8 != -1)
    {
      swift_once();
    }

    v11 = sub_264B40964();
    __swift_project_value_buffer(v11, qword_27FF8AE40);
    v12 = a3;
    v13 = sub_264B40944();
    v14 = sub_264B414B4();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      v17 = a3;
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 4) = v18;
      *v16 = v18;
      _os_log_impl(&dword_2649C6000, v13, v14, "Building payload for %@", v15, 0xCu);
      sub_2649D04D4(v16, &unk_27FF89880, &unk_264B46B20);
      MEMORY[0x266749940](v16, -1, -1);
      MEMORY[0x266749940](v15, -1, -1);
    }

    v19 = [v10 code];
    v20 = MEMORY[0x277D83B88];
    v45 = MEMORY[0x277D83B88];
    *&v44 = v19;
    sub_264A23FD8(&v44, v43);
    v21 = swift_isUniquelyReferenced_nonNull_native();
    sub_264A22708(v43, 0x646F43726F727245, 0xE900000000000065, v21);
    v22 = v6;
    v23 = [v10 localizedDescription];
    v24 = sub_264B41044();
    v26 = v25;

    v45 = v7;
    *&v44 = v24;
    *(&v44 + 1) = v26;
    sub_264A23FD8(&v44, v43);
    v27 = swift_isUniquelyReferenced_nonNull_native();
    sub_264A22708(v43, 0x727453726F727245, 0xEB00000000676E69, v27);
    swift_getErrorValue();
    v28 = sub_264A91990(v42);
    v45 = v20;
    *&v44 = v28;
    sub_264A23FD8(&v44, v43);
    v29 = swift_isUniquelyReferenced_nonNull_native();
    sub_264A22708(v43, 0x707954726F727245, 0xE900000000000065, v29);
    swift_getErrorValue();
    v45 = v41;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v44);
    (*(*(v41 - 8) + 16))(boxed_opaque_existential_1);
    sub_264A23FD8(&v44, v43);
    v31 = swift_isUniquelyReferenced_nonNull_native();
    sub_264A22708(v43, 0x6A624F726F727245, 0xEB00000000746365, v31);
    v6 = v22;
    v32 = sub_264B40944();
    v33 = sub_264B414B4();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *&v44 = v35;
      *v34 = 136315138;

      v36 = sub_264B40F74();
      v38 = v37;

      v39 = sub_2649CC004(v36, v38, &v44);

      *(v34 + 4) = v39;
      _os_log_impl(&dword_2649C6000, v32, v33, "payload is %s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x266749940](v35, -1, -1);
      MEMORY[0x266749940](v34, -1, -1);
    }
  }

  return v6;
}

id TelemetryProvider.init(_:)(uint64_t a1)
{
  v2 = v1;
  *&v2[OBJC_IVAR____TtC16ScreenSharingKit17TelemetryProvider_nextID] = 1;
  v4 = OBJC_IVAR____TtC16ScreenSharingKit17TelemetryProvider_signpostConsumer;
  *&v2[OBJC_IVAR____TtC16ScreenSharingKit17TelemetryProvider_signpostConsumer] = 0;
  v5 = *(a1 + 16);
  if (v5)
  {
    v18 = v4;
    v19 = v2;
    v6 = MEMORY[0x277D84F90];
    v7 = a1 + 32;
    v8 = a1 + 32;
    v9 = *(a1 + 16);
    do
    {
      sub_264A92110(v8, &v24);
      v21[0] = v24;
      v21[1] = v25;
      v22 = v26;
      if (*(&v25 + 1))
      {
        sub_2649D2AAC(v21, v23);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_2649D7C1C(0, v6[2] + 1, 1, v6);
        }

        v11 = v6[2];
        v10 = v6[3];
        if (v11 >= v10 >> 1)
        {
          v6 = sub_2649D7C1C((v10 > 1), v11 + 1, 1, v6);
        }

        v6[2] = v11 + 1;
        sub_2649D2AAC(v23, &v6[5 * v11 + 4]);
      }

      else
      {
        sub_2649D04D4(v21, &qword_27FF8AD38, &qword_264B4DB48);
      }

      v8 += 40;
      --v9;
    }

    while (v9);
    v12 = 0;
    v2 = v19;
    *&v19[OBJC_IVAR____TtC16ScreenSharingKit17TelemetryProvider_eventConsumers] = v6;
    while (v12 < *(a1 + 16))
    {
      sub_264A92110(v7, &v24);
      if (*(&v25 + 1))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88AD0, &qword_264B44EC0);
        type metadata accessor for SignpostConsumer();
        if (swift_dynamicCast())
        {

          *&v19[v18] = *&v23[0];

          goto LABEL_20;
        }
      }

      else
      {
        sub_2649D04D4(&v24, &qword_27FF8AD38, &qword_264B4DB48);
      }

      ++v12;
      v7 += 40;
      if (v5 == v12)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
    goto LABEL_25;
  }

  *&v2[OBJC_IVAR____TtC16ScreenSharingKit17TelemetryProvider_eventConsumers] = MEMORY[0x277D84F90];
LABEL_19:

LABEL_20:
  if (qword_27FF883F8 != -1)
  {
LABEL_25:
    swift_once();
  }

  v13 = sub_264B40964();
  __swift_project_value_buffer(v13, qword_27FF8AE40);
  v14 = sub_264B40944();
  v15 = sub_264B41474();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_2649C6000, v14, v15, "TelemetryProvider created", v16, 2u);
    MEMORY[0x266749940](v16, -1, -1);
  }

  v20.receiver = v2;
  v20.super_class = type metadata accessor for TelemetryProvider();
  return objc_msgSendSuper2(&v20, sel_init);
}

char *sub_264A910B0(char *result, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC16ScreenSharingKit17TelemetryProvider_signpostConsumer);
  if (v3)
  {
    v4 = a2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v5 = *result;
    __swift_project_boxed_opaque_existential_1((v3 + 24), *(v3 + 48));
    v7 = v5;

    sub_264A560D4(&v7, a2, 0, 0, 0);
  }

  return result;
}

char *sub_264A9113C(char *result, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC16ScreenSharingKit17TelemetryProvider_eventConsumers);
  v4 = *(v3 + 16);
  if (v4)
  {
    v6 = *result;
    v7 = v3 + 32;

    do
    {
      sub_2649CB5C0(v7, v14);
      v8 = v15;
      v9 = v16;
      __swift_project_boxed_opaque_existential_1(v14, v15);
      v10 = (*(v9 + 8))(v8, v9);
      LOBYTE(v8) = sub_264A9125C(v6, v10);

      if (v8)
      {
        v11 = v15;
        v12 = v16;
        __swift_project_boxed_opaque_existential_1(v14, v15);
        v13 = v6;
        (*(v12 + 16))(&v13, a2, v11, v12);
      }

      __swift_destroy_boxed_opaque_existential_0(v14);
      v7 += 40;
      --v4;
    }

    while (v4);
  }

  return result;
}

BOOL sub_264A9125C(char a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = (a2 + 32);
  while (2)
  {
    v6 = v3;
    if (v3-- == 0)
    {
      return v6 != 0;
    }

    v8 = 0xEB00000000657669;
    v9 = 0x7463416C65676E61;
    switch(*v4)
    {
      case 1:
        v9 = 0xD000000000000015;
        v8 = 0x8000000264B58990;
        break;
      case 2:
        break;
      case 3:
        v9 = 0x696472616F626E6FLL;
        v8 = 0xEF6E776F6853676ELL;
        break;
      case 4:
        v9 = 0xD000000000000028;
        v8 = 0x8000000264B589D0;
        break;
      case 5:
        v9 = 0xD000000000000013;
        v8 = 0x8000000264B58A00;
        break;
      case 6:
        v9 = 0x696472616F626E6FLL;
        v8 = 0xEF7972746552676ELL;
        break;
      case 7:
        v9 = 0xD000000000000010;
        v8 = 0x8000000264B58A30;
        break;
      case 8:
        v9 = 0x536E6F6973736573;
        v8 = 0xEC00000074726174;
        break;
      case 9:
        v9 = 0xD000000000000012;
        v8 = 0x8000000264B58A50;
        break;
      case 0xA:
        v9 = 0x456E6F6973736573;
        v8 = 0xEA0000000000646ELL;
        break;
      case 0xB:
        v8 = 0xEA00000000007061;
        v9 = 0x54485444646E6573;
        break;
      case 0xC:
        v9 = 0x44485444646E6573;
        v8 = 0xEB00000000776172;
        break;
      case 0xD:
        v9 = 0xD000000000000012;
        v8 = 0x8000000264B58A90;
        break;
      case 0xE:
        v9 = 0xD000000000000010;
        v8 = 0x8000000264B58AB0;
        break;
      case 0xF:
        v8 = 0xEF6E776F68537472;
        v9 = 0x656C416F69647561;
        break;
      case 0x10:
        v9 = 0xD000000000000017;
        v8 = 0x8000000264B58AD0;
        break;
      case 0x11:
        v9 = 0xD000000000000014;
        v8 = 0x8000000264B58AF0;
        break;
      case 0x12:
        v9 = 0x6F72444E67617264;
        v8 = 0xED00006465735570;
        break;
      default:
        v9 = 0xD000000000000013;
        v8 = 0x8000000264B58970;
        break;
    }

    v10 = 0x7463416C65676E61;
    v11 = 0xEB00000000657669;
    switch(a1)
    {
      case 1:
        v11 = 0x8000000264B58990;
        if (v9 == 0xD000000000000015)
        {
          goto LABEL_59;
        }

        goto LABEL_2;
      case 2:
        goto LABEL_58;
      case 3:
        v11 = 0xEF6E776F6853676ELL;
        if (v9 != 0x696472616F626E6FLL)
        {
          goto LABEL_2;
        }

        goto LABEL_59;
      case 4:
        v11 = 0x8000000264B589D0;
        if (v9 != 0xD000000000000028)
        {
          goto LABEL_2;
        }

        goto LABEL_59;
      case 5:
        v11 = 0x8000000264B58A00;
        if (v9 != 0xD000000000000013)
        {
          goto LABEL_2;
        }

        goto LABEL_59;
      case 6:
        v11 = 0xEF7972746552676ELL;
        if (v9 != 0x696472616F626E6FLL)
        {
          goto LABEL_2;
        }

        goto LABEL_59;
      case 7:
        v11 = 0x8000000264B58A30;
        if (v9 != 0xD000000000000010)
        {
          goto LABEL_2;
        }

        goto LABEL_59;
      case 8:
        v11 = 0xEC00000074726174;
        if (v9 != 0x536E6F6973736573)
        {
          goto LABEL_2;
        }

        goto LABEL_59;
      case 9:
        v11 = 0x8000000264B58A50;
        if (v9 != 0xD000000000000012)
        {
          goto LABEL_2;
        }

        goto LABEL_59;
      case 10:
        v10 = 0x456E6F6973736573;
        v11 = 0xEA0000000000646ELL;
LABEL_58:
        if (v9 == v10)
        {
          goto LABEL_59;
        }

        goto LABEL_2;
      case 11:
        v11 = 0xEA00000000007061;
        if (v9 != 0x54485444646E6573)
        {
          goto LABEL_2;
        }

        goto LABEL_59;
      case 12:
        v11 = 0xEB00000000776172;
        if (v9 != 0x44485444646E6573)
        {
          goto LABEL_2;
        }

        goto LABEL_59;
      case 13:
        v11 = 0x8000000264B58A90;
        if (v9 != 0xD000000000000012)
        {
          goto LABEL_2;
        }

        goto LABEL_59;
      case 14:
        v11 = 0x8000000264B58AB0;
        if (v9 != 0xD000000000000010)
        {
          goto LABEL_2;
        }

        goto LABEL_59;
      case 15:
        v11 = 0xEF6E776F68537472;
        if (v9 != 0x656C416F69647561)
        {
          goto LABEL_2;
        }

        goto LABEL_59;
      case 16:
        v11 = 0x8000000264B58AD0;
        if (v9 != 0xD000000000000017)
        {
          goto LABEL_2;
        }

        goto LABEL_59;
      case 17:
        v11 = 0x8000000264B58AF0;
        if (v9 != 0xD000000000000014)
        {
          goto LABEL_2;
        }

        goto LABEL_59;
      case 18:
        v11 = 0xED00006465735570;
        if (v9 != 0x6F72444E67617264)
        {
          goto LABEL_2;
        }

        goto LABEL_59;
      default:
        v11 = 0x8000000264B58970;
        if (v9 != 0xD000000000000013)
        {
          goto LABEL_2;
        }

LABEL_59:
        if (v8 != v11)
        {
LABEL_2:
          v5 = sub_264B41AA4();

          ++v4;
          if (v5)
          {
            return v6 != 0;
          }

          continue;
        }

        return v6 != 0;
    }
  }
}

id TelemetryProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TelemetryProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TelemetryProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_264A91990(uint64_t a1)
{
  v3 = *(a1 - 8);
  MEMORY[0x28223BE20](a1, v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5);
  if (swift_dynamicCast())
  {
    sub_264A0E11C(v9, v10, v11);
    v6 = 2;
  }

  else if (swift_dynamicCast())
  {
    sub_2649E12A4(v9, v10);
    v6 = 4;
  }

  else if (swift_dynamicCast())
  {
    v6 = 6;
  }

  else if (swift_dynamicCast())
  {
    v6 = 7;
  }

  else if (swift_dynamicCast())
  {

    v6 = 8;
  }

  else
  {
    v6 = 1;
  }

  (*(v3 + 8))(v5, a1);
  return v6;
}

double sub_264A91B50@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_264A20ACC(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_264A23238();
      v10 = v12;
    }

    sub_264A23FD8((*(v10 + 56) + 32 * v8), a3);
    sub_264A91BF4(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_264A91BF4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_264B416A4() + 1) & ~v5;
    do
    {
      sub_264B41B84();

      sub_264B41084();
      v10 = sub_264B41BB4();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_264A91DA4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_264B416A4() + 1) & ~v5;
    do
    {
      sub_264B41B84();

      sub_264B41084();
      v9 = sub_264B41BB4();

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

uint64_t sub_264A91F54(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_264B416A4() + 1) & ~v5;
    do
    {
      sub_264B41B84();
      sub_264B41084();

      result = sub_264B41BB4();
      v9 = result & v7;
      if (v3 >= v8)
      {
        if (v9 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v9 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v9)
      {
LABEL_10:
        v10 = *(a2 + 48);
        v11 = (v10 + v3);
        v12 = (v10 + v6);
        if (v3 != v6 || v11 >= v12 + 1)
        {
          *v11 = *v12;
        }

        v13 = *(a2 + 56);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_264A92110(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8AD38, &qword_264B4DB48);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_264A92270@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x8000000264B5E950 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_264B41AA4();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_264A92304(uint64_t a1)
{
  v2 = sub_264A924DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264A92340(uint64_t a1)
{
  v2 = sub_264A924DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SSKHIDServiceProperties.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8AD48, &qword_264B4DB80);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_264A924DC();
  v10 = v9;
  sub_264B41BD4();
  v12[0] = v8;
  v12[1] = v10;
  sub_264A92530();
  sub_264B41A24();

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_264A924DC()
{
  result = qword_27FF8AD50;
  if (!qword_27FF8AD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8AD50);
  }

  return result;
}

unint64_t sub_264A92530()
{
  result = qword_27FF8AD58;
  if (!qword_27FF8AD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8AD58);
  }

  return result;
}

uint64_t SSKHIDServiceProperties.hashValue.getter()
{
  sub_264B41B84();
  sub_264B403B4();
  return sub_264B41BB4();
}

uint64_t SSKHIDServiceProperties.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8AD60, &qword_264B4DB88);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_264A924DC();
  sub_264B41BC4();
  if (!v2)
  {
    sub_264A92828();
    sub_264B41984();
    (*(v6 + 8))(v9, v5);
    v10 = v12[1];
    *a2 = v12[0];
    a2[1] = v10;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_264A9278C()
{
  sub_264B41B84();
  sub_264B403B4();
  return sub_264B41BB4();
}

uint64_t sub_264A927E0(uint64_t a1)
{
  sub_264B41B84();
  sub_264B403B4();
  return sub_264B41BB4();
}

unint64_t sub_264A92828()
{
  result = qword_27FF8AD68;
  if (!qword_27FF8AD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8AD68);
  }

  return result;
}

uint64_t HIDServicePrimitives.basicKeyboardAndMouseServiceProperties()(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8AD70, &qword_264B4DB90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_264B46A70;
  (*(a2 + 40))(a1, a2);
  (*(a2 + 48))(a1, a2);
  sub_264A92A84(inited);
  v6 = v5;
  swift_setDeallocating();
  swift_arrayDestroy();
  return v6;
}

uint64_t sub_264A92948(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF894E8, &qword_264B47A18);
    v3 = sub_264B41734();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + v4);
      sub_264B41B84();
      MEMORY[0x266748E90](v10);
      result = sub_264B41BB4();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (v10 != *(v17 + v13))
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
        *(v17 + v13) = v10;
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

  return MEMORY[0x277D84FA0];
}

void sub_264A92A84(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89510, &unk_264B4DDD0);
    v3 = sub_264B41734();
    v4 = 0;
    v5 = v3 + 56;
    v22 = v1;
    v23 = a1 + 32;
    while (1)
    {
      v6 = (v23 + 16 * v4);
      v8 = *v6;
      v7 = v6[1];
      sub_264B41B84();
      v9 = v7;
      sub_264B403B4();
      v10 = sub_264B41BB4();
      v11 = ~(-1 << *(v3 + 32));
      v12 = v10 & v11;
      v13 = (v10 & v11) >> 6;
      v14 = *(v5 + 8 * v13);
      v15 = 1 << (v10 & v11);
      if ((v15 & v14) != 0)
      {
        do
        {
          v16 = *(*(v3 + 48) + 16 * v12 + 8);
          v17 = sub_264B40374();

          if (v17)
          {

            v1 = v22;
            goto LABEL_4;
          }

          v12 = (v12 + 1) & v11;
          v13 = v12 >> 6;
          v14 = *(v5 + 8 * (v12 >> 6));
          v15 = 1 << v12;
        }

        while (((1 << v12) & v14) != 0);
        v1 = v22;
      }

      *(v5 + 8 * v13) = v15 | v14;
      v18 = (*(v3 + 48) + 16 * v12);
      *v18 = v8;
      v18[1] = v9;
      v19 = *(v3 + 16);
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        break;
      }

      *(v3 + 16) = v21;
LABEL_4:
      if (++v4 == v1)
      {
        return;
      }
    }

    __break(1u);
  }
}

unint64_t sub_264A92C14()
{
  result = qword_27FF8AD78;
  if (!qword_27FF8AD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8AD78);
  }

  return result;
}

unint64_t sub_264A92D18()
{
  result = qword_27FF8AD80;
  if (!qword_27FF8AD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8AD80);
  }

  return result;
}

unint64_t sub_264A92D70()
{
  result = qword_27FF8AD88;
  if (!qword_27FF8AD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8AD88);
  }

  return result;
}

unint64_t sub_264A92DC8()
{
  result = qword_27FF8AD90;
  if (!qword_27FF8AD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8AD90);
  }

  return result;
}

uint64_t sub_264A92EF8()
{
  v2 = sub_264B3FFD4();
  v1[2] = v2;
  v1[3] = *(v2 - 8);
  v1[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264A92FB4, v0, 0);
}

uint64_t sub_264A92FB4()
{
  v16 = v0;
  if (qword_27FF88420 != -1)
  {
    swift_once();
  }

  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = sub_264B40964();
  __swift_project_value_buffer(v4, qword_27FF8AEB8);
  v5 = sub_264B41484();
  sub_264B3FF94();
  v6 = sub_264B3FFA4();
  v8 = v7;
  (*(v2 + 8))(v1, v3);

  v9 = sub_264B40944();

  if (os_log_type_enabled(v9, v5))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v15 = v11;
    *v10 = 136446722;
    v12 = sub_2649CC004(v6, v8, &v15);

    *(v10 + 4) = v12;
    *(v10 + 12) = 2050;
    *(v10 + 14) = 17;
    *(v10 + 22) = 2082;
    *(v10 + 24) = sub_2649CC004(0x6164696C61766E69, 0xEC00000029286574, &v15);
    _os_log_impl(&dword_2649C6000, v9, v5, "%{public}s:%{public}ld %{public}s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v11, -1, -1);
    MEMORY[0x266749940](v10, -1, -1);
  }

  else
  {
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_264A93218()
{
  v14 = v0;
  if (qword_27FF88420 != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v2 = sub_264B40964();
  __swift_project_value_buffer(v2, qword_27FF8AEB8);
  sub_2649CB5C0(v1, (v0 + 2));
  v3 = sub_264B40944();
  v4 = sub_264B41494();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315138;
    sub_2649CB5C0((v0 + 2), (v0 + 7));
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8AA30, &qword_264B44EE0);
    v7 = sub_264B41064();
    v9 = v8;
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    v10 = sub_2649CC004(v7, v9, &v13);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_2649C6000, v3, v4, "Unexpectedly received event: %s in EmptyRTIMessageConsumer when client doesn't support them", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x266749940](v6, -1, -1);
    MEMORY[0x266749940](v5, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  }

  v11 = v0[1];

  return v11(0);
}

uint64_t sub_264A933F8()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_264A9344C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2649E0EE4;

  return sub_264A93688();
}

uint64_t sub_264A934EC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2649CD850;

  return sub_264A92EF8();
}

uint64_t sub_264A93578(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2649CBEFC;

  return sub_264A931F8(a1);
}

unint64_t sub_264A9360C(uint64_t a1)
{
  result = sub_264A93634();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_264A93634()
{
  result = qword_27FF8AD98;
  if (!qword_27FF8AD98)
  {
    type metadata accessor for EmptyRTIMessageConsumer();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8AD98);
  }

  return result;
}

uint64_t sub_264A93688()
{
  v2 = sub_264B3FFD4();
  v1[2] = v2;
  v1[3] = *(v2 - 8);
  v1[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264A93744, v0, 0);
}

uint64_t sub_264A93744()
{
  v16 = v0;
  if (qword_27FF88420 != -1)
  {
    swift_once();
  }

  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = sub_264B40964();
  __swift_project_value_buffer(v4, qword_27FF8AEB8);
  v5 = sub_264B41484();
  sub_264B3FF94();
  v6 = sub_264B3FFA4();
  v8 = v7;
  (*(v2 + 8))(v1, v3);

  v9 = sub_264B40944();

  if (os_log_type_enabled(v9, v5))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v15 = v11;
    *v10 = 136446722;
    v12 = sub_2649CC004(v6, v8, &v15);

    *(v10 + 4) = v12;
    *(v10 + 12) = 2050;
    *(v10 + 14) = 13;
    *(v10 + 22) = 2082;
    *(v10 + 24) = sub_2649CC004(0xD00000000000001ELL, 0x8000000264B5D0A0, &v15);
    _os_log_impl(&dword_2649C6000, v9, v5, "%{public}s:%{public}ld %{public}s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v11, -1, -1);
    MEMORY[0x266749940](v10, -1, -1);
  }

  else
  {
  }

  v13 = v0[1];

  return v13();
}

const char *sub_264A93988@<X0>(const sockaddr *a1@<X0>, socklen_t a2@<W1>, uint64_t *a3@<X8>)
{
  v6 = swift_slowAlloc();
  v7 = swift_slowAlloc();
  v8 = getnameinfo(a1, a2, v6, 0x401u, v7, 0x20u, 26);
  if (!v8)
  {
    v12 = sub_264B410A4();
    v14 = v13;
    v15 = sub_264B410A4();
    v17 = v16;
    MEMORY[0x266748390](58, 0xE100000000000000);
    MEMORY[0x266748390](v15, v17);

    v10 = v12;
    v11 = v14;
    goto LABEL_5;
  }

  result = gai_strerror(v8);
  if (result)
  {
    v10 = sub_264B410A4();
LABEL_5:
    *a3 = v10;
    a3[1] = v11;
    MEMORY[0x266749940](v7, -1, -1);
    return MEMORY[0x266749940](v6, -1, -1);
  }

  __break(1u);
  return result;
}

uint64_t sub_264A93AA4()
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = *v0;
  v9 = *(v0 + 65);
  v10 = *(v0 + 81);
  *v11 = *(v0 + 97);
  *&v11[15] = *(v0 + 7);
  v5 = *(v0 + 1);
  v6 = *(v0 + 17);
  v7 = *(v0 + 33);
  v8 = *(v0 + 49);
  if (v4)
  {
    v1 = v4;
  }

  else
  {
    v1 = 128;
  }

  sub_264A93988(&v4, v1, &v3);
  return v3;
}

uint64_t sub_264A93B84(uint64_t a1)
{
  v2 = sub_264A94160();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264A93BC0(uint64_t a1)
{
  v2 = sub_264A94160();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264A93BFC()
{
  if (*v0)
  {
    return 0x6F68706F7263696DLL;
  }

  else
  {
    return 0x6172656D6163;
  }
}

uint64_t sub_264A93C38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6172656D6163 && a2 == 0xE600000000000000;
  if (v6 || (sub_264B41AA4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F68706F7263696DLL && a2 == 0xEA0000000000656ELL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_264B41AA4();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_264A93D18(uint64_t a1)
{
  v2 = sub_264A940B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264A93D54(uint64_t a1)
{
  v2 = sub_264A940B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264A93D90(uint64_t a1)
{
  v2 = sub_264A9410C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264A93DCC(uint64_t a1)
{
  v2 = sub_264A9410C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DeviceSensorType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8ADA0, &qword_264B4DF00);
  v22 = *(v3 - 8);
  v23 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v21 = &v19 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8ADA8, &qword_264B4DF08);
  v19 = *(v6 - 8);
  v20 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v19 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8ADB0, &qword_264B4DF10);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v19 - v13;
  v15 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_264A940B8();
  sub_264B41BD4();
  v16 = (v11 + 8);
  if (v15)
  {
    v25 = 1;
    sub_264A9410C();
    v17 = v21;
    sub_264B419B4();
    (*(v22 + 8))(v17, v23);
  }

  else
  {
    v24 = 0;
    sub_264A94160();
    sub_264B419B4();
    (*(v19 + 8))(v9, v20);
  }

  return (*v16)(v14, v10);
}

unint64_t sub_264A940B8()
{
  result = qword_27FF8ADB8;
  if (!qword_27FF8ADB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8ADB8);
  }

  return result;
}

unint64_t sub_264A9410C()
{
  result = qword_27FF8ADC0;
  if (!qword_27FF8ADC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8ADC0);
  }

  return result;
}

unint64_t sub_264A94160()
{
  result = qword_27FF8ADC8;
  if (!qword_27FF8ADC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8ADC8);
  }

  return result;
}

uint64_t DeviceSensorType.hashValue.getter()
{
  v1 = *v0;
  sub_264B41B84();
  MEMORY[0x266748E90](v1);
  return sub_264B41BB4();
}

uint64_t DeviceSensorType.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v32 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8ADD0, &qword_264B4DF18);
  v30 = *(v3 - 8);
  v31 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v27 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8ADD8, &qword_264B4DF20);
  v29 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8ADE0, &unk_264B4DF28);
  v33 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v27 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_264A940B8();
  v15 = v34;
  sub_264B41BC4();
  if (v15)
  {
    v16 = a1;
  }

  else
  {
    v28 = v7;
    v34 = a1;
    v17 = v31;
    v18 = v32;
    v19 = sub_264B419A4();
    v20 = (2 * *(v19 + 16)) | 1;
    v35 = v19;
    v36 = v19 + 32;
    v37 = 0;
    v38 = v20;
    v21 = sub_2649E0ED8();
    if (v21 == 2 || v37 != v38 >> 1)
    {
      v23 = sub_264B417A4();
      swift_allocError();
      v25 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88900, &qword_264B445C0);
      *v25 = &type metadata for DeviceSensorType;
      sub_264B41904();
      sub_264B41794();
      (*(*(v23 - 8) + 104))(v25, *MEMORY[0x277D84160], v23);
      swift_willThrow();
      (*(v33 + 8))(v14, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      v39 = v21;
      if (v21)
      {
        v40 = 1;
        sub_264A9410C();
        sub_264B418F4();
        v22 = v33;
        (*(v30 + 8))(v6, v17);
      }

      else
      {
        v40 = 0;
        sub_264A94160();
        sub_264B418F4();
        v22 = v33;
        (*(v29 + 8))(v10, v28);
      }

      (*(v22 + 8))(v14, v11);
      swift_unknownObjectRelease();
      *v18 = v39 & 1;
    }

    v16 = v34;
  }

  return __swift_destroy_boxed_opaque_existential_0(v16);
}

unint64_t sub_264A946E8()
{
  result = qword_27FF8ADE8;
  if (!qword_27FF8ADE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8ADE8);
  }

  return result;
}

unint64_t sub_264A947B8()
{
  result = qword_27FF8ADF0;
  if (!qword_27FF8ADF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8ADF0);
  }

  return result;
}

unint64_t sub_264A94810()
{
  result = qword_27FF8ADF8;
  if (!qword_27FF8ADF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8ADF8);
  }

  return result;
}

unint64_t sub_264A94868()
{
  result = qword_27FF8AE00;
  if (!qword_27FF8AE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8AE00);
  }

  return result;
}

unint64_t sub_264A948C0()
{
  result = qword_27FF8AE08;
  if (!qword_27FF8AE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8AE08);
  }

  return result;
}

unint64_t sub_264A94918()
{
  result = qword_27FF8AE10;
  if (!qword_27FF8AE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8AE10);
  }

  return result;
}

unint64_t sub_264A94970()
{
  result = qword_27FF8AE18;
  if (!qword_27FF8AE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8AE18);
  }

  return result;
}

unint64_t sub_264A949C8()
{
  result = qword_27FF8AE20;
  if (!qword_27FF8AE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8AE20);
  }

  return result;
}

void Logger.errorMarker(_:file:line:function:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v26 = a5;
  v27 = a6;
  v8 = sub_264B3FFD4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_264B41494();
  v28 = a1;
  v14 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89380, &qword_264B44180);
  v15 = sub_264B41064();
  v17 = v16;
  sub_264B3FF94();
  v18 = sub_264B3FFA4();
  v20 = v19;
  (*(v9 + 8))(v12, v8);
  v21 = sub_264B40944();
  if (os_log_type_enabled(v21, v13))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v28 = v23;
    *v22 = 136446978;
    v24 = sub_2649CC004(v18, v20, &v28);

    *(v22 + 4) = v24;
    *(v22 + 12) = 2050;
    *(v22 + 14) = a4;
    *(v22 + 22) = 2082;
    *(v22 + 24) = sub_2649CC004(v26, v27, &v28);
    *(v22 + 32) = 2082;
    *(v22 + 34) = sub_2649CC004(v15, v17, &v28);
    _os_log_impl(&dword_2649C6000, v21, v13, "%{public}s:%{public}ld %{public}s %{public}s", v22, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x266749940](v23, -1, -1);
    MEMORY[0x266749940](v22, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_264A94D00()
{
  v0 = sub_264B40964();
  __swift_allocate_value_buffer(v0, qword_27FFA71B8);
  __swift_project_value_buffer(v0, qword_27FFA71B8);
  return sub_264B40954();
}

uint64_t sub_264A94DAC()
{
  v0 = sub_264B40964();
  __swift_allocate_value_buffer(v0, qword_27FF8AE28);
  __swift_project_value_buffer(v0, qword_27FF8AE28);
  return sub_264B40954();
}

uint64_t sub_264A94E4C()
{
  v0 = sub_264B40964();
  __swift_allocate_value_buffer(v0, qword_27FF8AE40);
  __swift_project_value_buffer(v0, qword_27FF8AE40);
  return sub_264B40954();
}

uint64_t sub_264A94F40()
{
  v0 = sub_264B40964();
  __swift_allocate_value_buffer(v0, qword_27FF8AE70);
  __swift_project_value_buffer(v0, qword_27FF8AE70);
  return sub_264B40954();
}

uint64_t sub_264A95084(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_264B40964();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_264B40954();
}

uint64_t sub_264A95120@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_264B40964();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

void sub_264A951D0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t (*a8)(uint64_t))
{
  v30 = a6;
  v31 = a7;
  v29 = a5;
  v11 = sub_264B3FFD4();
  v12 = *(v11 - 8);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a8(v14);
  sub_264B3FF94();
  v18 = sub_264B3FFA4();
  v20 = v19;
  (*(v12 + 8))(v16, v11);
  v21 = sub_264B40944();
  v22 = os_log_type_enabled(v21, v17);
  if (!a2)
  {
    if (v22)
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v32 = v24;
      *v23 = 136446722;
      v27 = sub_2649CC004(v18, v20, &v32);

      *(v23 + 4) = v27;
      *(v23 + 12) = 2050;
      v28 = v30;
      *(v23 + 14) = v29;
      *(v23 + 22) = 2082;
      *(v23 + 24) = sub_2649CC004(v28, v31, &v32);
      _os_log_impl(&dword_2649C6000, v21, v17, "%{public}s:%{public}ld %{public}s", v23, 0x20u);
      goto LABEL_6;
    }

LABEL_7:

    goto LABEL_8;
  }

  if (!v22)
  {
    goto LABEL_7;
  }

  v23 = swift_slowAlloc();
  v24 = swift_slowAlloc();
  v32 = v24;
  *v23 = 136446978;
  v25 = sub_2649CC004(v18, v20, &v32);

  *(v23 + 4) = v25;
  *(v23 + 12) = 2050;
  v26 = v30;
  *(v23 + 14) = v29;
  *(v23 + 22) = 2082;
  *(v23 + 24) = sub_2649CC004(v26, v31, &v32);
  *(v23 + 32) = 2082;
  *(v23 + 34) = sub_2649CC004(a1, a2, &v32);
  _os_log_impl(&dword_2649C6000, v21, v17, "%{public}s:%{public}ld %{public}s %{public}s", v23, 0x2Au);
LABEL_6:
  swift_arrayDestroy();
  MEMORY[0x266749940](v24, -1, -1);
  MEMORY[0x266749940](v23, -1, -1);
LABEL_8:
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

uint64_t MediaTransportSessionError.hashValue.getter()
{
  v1 = *v0;
  sub_264B41B84();
  MEMORY[0x266748E90](v1);
  return sub_264B41BB4();
}

unint64_t sub_264A955C0()
{
  result = qword_27FF8AED0;
  if (!qword_27FF8AED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8AED0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MediaTransportSessionError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MediaTransportSessionError(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_264A95764()
{
  v1 = OBJC_IVAR____TtC16ScreenSharingKit33ProxyingClientStatusEventConsumer_eventStream;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89E68, &qword_264B4E4E0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC16ScreenSharingKit33ProxyingClientStatusEventConsumer_eventContinuation;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89E60, &unk_264B495C0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for ProxyingClientStatusEventConsumer(uint64_t a1)
{
  result = qword_27FF8AEE8;
  if (!qword_27FF8AEE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_264A95888(uint64_t a1)
{
  sub_264A9599C(319, &qword_27FF8AEF8, MEMORY[0x277D857B8]);
  if (v1 <= 0x3F)
  {
    sub_264A9599C(319, &qword_27FF8AF00, MEMORY[0x277D85788]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_264A9599C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for ClientStatusEvent);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_264A959F0(uint64_t a1)
{
  v2[54] = a1;
  v2[55] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8AF10, &unk_264B4E4D0);
  v2[56] = v3;
  v2[57] = *(v3 - 8);
  v2[58] = swift_task_alloc();
  v2[59] = type metadata accessor for ControlMessage(0);
  v2[60] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264A95AEC, v1, 0);
}

uint64_t sub_264A95AEC()
{
  if (*(*(v0 + 440) + OBJC_IVAR____TtC16ScreenSharingKit33ProxyingClientStatusEventConsumer_isActivated) != 1)
  {
    sub_264A96168();
    swift_allocError();
    *v16 = 0;
    swift_willThrow();

    v17 = *(v0 + 8);
    v18 = 0;
    goto LABEL_17;
  }

  v1 = *(v0 + 432);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  (*(v3 + 8))(v2, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = *(v0 + 480);
  if (EnumCaseMultiPayload == 3)
  {
    v6 = *(v5 + 48);
    v7 = *(v5 + 64);
    v8 = *(v5 + 80);
    *(v0 + 112) = *(v5 + 96);
    *(v0 + 80) = v7;
    *(v0 + 96) = v8;
    *(v0 + 64) = v6;
    v9 = *v5;
    v10 = *(v5 + 32);
    *(v0 + 32) = *(v5 + 16);
    *(v0 + 48) = v10;
    *(v0 + 16) = v9;
    v11 = *(v0 + 72);
    if ((v11 & 0x2000000000000000) != 0)
    {
      v23 = *(v0 + 32);
      *(v0 + 224) = *(v0 + 16);
      *(v0 + 240) = v23;
      v24 = *(v0 + 64);
      v26 = *(v0 + 16);
      v25 = *(v0 + 32);
      *(v0 + 256) = *(v0 + 48);
      v28 = *(v0 + 80);
      v27 = *(v0 + 96);
      *(v0 + 288) = v28;
      *(v0 + 304) = v27;
      *(v0 + 200) = *(v0 + 96);
      *(v0 + 184) = v28;
      *(v0 + 168) = v24;
      *(v0 + 152) = *(v0 + 48);
      *(v0 + 136) = v25;
      v30 = *(v0 + 456);
      v29 = *(v0 + 464);
      v31 = *(v0 + 448);
      v32 = *(v0 + 112);
      *(v0 + 272) = *(v0 + 64);
      *(v0 + 280) = v11 & 0xDFFFFFFFFFFFFFFFLL;
      *(v0 + 320) = v32;
      *(v0 + 216) = *(v0 + 112);
      *(v0 + 120) = v26;
      *(v0 + 176) &= ~0x2000000000000000uLL;
      sub_264A54F24(v0 + 120, v0 + 328);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89E60, &unk_264B495C0);
      sub_264B412A4();
      sub_264A7DB74(v0 + 16);
      (*(v30 + 8))(v29, v31);
      v22 = 1;
      goto LABEL_16;
    }

    if (qword_27FF883E0 != -1)
    {
      swift_once();
    }

    v12 = sub_264B40964();
    __swift_project_value_buffer(v12, qword_27FFA71B8);
    v13 = sub_264B40944();
    v14 = sub_264B41494();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_2649C6000, v13, v14, "Passed event that was a status event, but not a client status event, ignoring", v15, 2u);
      MEMORY[0x266749940](v15, -1, -1);
    }

    sub_264A7DB74(v0 + 16);
  }

  else
  {
    sub_2649DEEBC(v5);
    if (qword_27FF883E0 != -1)
    {
      swift_once();
    }

    v19 = sub_264B40964();
    __swift_project_value_buffer(v19, qword_27FFA71B8);
    v13 = sub_264B40944();
    v20 = sub_264B41494();
    if (os_log_type_enabled(v13, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_2649C6000, v13, v20, "Passed event that was not a status event, ignoring", v21, 2u);
      MEMORY[0x266749940](v21, -1, -1);
    }
  }

  v22 = 0;
LABEL_16:

  v17 = *(v0 + 8);
  v18 = v22;
LABEL_17:

  return v17(v18);
}

uint64_t sub_264A95ED0()
{
  v1 = *(v0 + 16);
  if (*(v1 + OBJC_IVAR____TtC16ScreenSharingKit33ProxyingClientStatusEventConsumer_isActivated) == 1)
  {
    sub_264A96168();
    swift_allocError();
    *v2 = 1;
    swift_willThrow();
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC16ScreenSharingKit33ProxyingClientStatusEventConsumer_isActivated) = 1;
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_264A95FB0()
{
  v1 = *(v0 + 16);
  v2 = OBJC_IVAR____TtC16ScreenSharingKit33ProxyingClientStatusEventConsumer_isActivated;
  if (*(v1 + OBJC_IVAR____TtC16ScreenSharingKit33ProxyingClientStatusEventConsumer_isActivated) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89E60, &unk_264B495C0);
    sub_264B412B4();
    *(v1 + v2) = 0;
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_264A96054(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2649CBEFC;

  return sub_264A959F0(a1);
}

unint64_t sub_264A960E8(uint64_t a1)
{
  result = sub_264A96110();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_264A96110()
{
  result = qword_27FF8AF08;
  if (!qword_27FF8AF08)
  {
    type metadata accessor for ProxyingClientStatusEventConsumer(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8AF08);
  }

  return result;
}

unint64_t sub_264A96168()
{
  result = qword_27FF8AF18;
  if (!qword_27FF8AF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8AF18);
  }

  return result;
}

unint64_t sub_264A961D0()
{
  result = qword_27FF8AF20;
  if (!qword_27FF8AF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8AF20);
  }

  return result;
}

uint64_t MediaTransportControlError.StreamError.hashValue.getter()
{
  v1 = *v0;
  sub_264B41B84();
  MEMORY[0x266748E90](v1);
  return sub_264B41BB4();
}

uint64_t MediaTransportControlError.hashValue.getter()
{
  sub_264B41B84();
  MEMORY[0x266748E90](0);
  return sub_264B41BB4();
}

unint64_t sub_264A96378()
{
  result = qword_27FF8AF28;
  if (!qword_27FF8AF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8AF28);
  }

  return result;
}

unint64_t sub_264A963D0()
{
  result = qword_27FF8AF30;
  if (!qword_27FF8AF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8AF30);
  }

  return result;
}

unint64_t sub_264A96468()
{
  result = qword_27FF8AF38;
  if (!qword_27FF8AF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8AF38);
  }

  return result;
}

unint64_t sub_264A964C0()
{
  result = qword_27FF8AF40;
  if (!qword_27FF8AF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8AF40);
  }

  return result;
}

uint64_t SystemGestureEvent.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_264B40724();
  v6 = v5;
  v7 = sub_264B40734();
  v9 = v8;
  v10 = sub_264B40744();
  result = (*(*(v10 - 8) + 8))(a1, v10);
  *a2 = v4;
  a2[1] = v6;
  a2[2] = v7;
  a2[3] = v9;
  return result;
}

uint64_t sub_264A965B4(uint64_t a1)
{
  v2 = sub_264A97CCC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264A965F0(uint64_t a1)
{
  v2 = sub_264A97CCC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264A9662C()
{
  v1 = *v0;
  v2 = 0x74747542656D6F68;
  v3 = 0x6867696C746F7073;
  v4 = 0x6353657461746F72;
  if (v1 != 3)
  {
    v4 = 0x615068636E75616CLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6374697753707061;
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

uint64_t sub_264A966EC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_264A9838C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_264A96720(uint64_t a1)
{
  v2 = sub_264A97B7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264A9675C(uint64_t a1)
{
  v2 = sub_264A97B7C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264A96798(uint64_t a1)
{
  v2 = sub_264A97D20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264A967D4(uint64_t a1)
{
  v2 = sub_264A97D20();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264A96810()
{
  if (*v0)
  {
    return 0x64616F6C796170;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_264A96844@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (sub_264B41AA4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x64616F6C796170 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_264B41AA4();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_264A96920(uint64_t a1)
{
  v2 = sub_264A97BD0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264A9695C(uint64_t a1)
{
  v2 = sub_264A97BD0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264A96998(uint64_t a1)
{
  v2 = sub_264A97C24();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264A969D4(uint64_t a1)
{
  v2 = sub_264A97C24();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264A96A10(uint64_t a1)
{
  v2 = sub_264A97C78();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264A96A4C(uint64_t a1)
{
  v2 = sub_264A97C78();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SystemGestureEvent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8AF48, &qword_264B4E8D0);
  v51 = *(v3 - 8);
  v52 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v50 = &v37 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8AF50, &qword_264B4E8D8);
  v48 = *(v6 - 8);
  v49 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v47 = &v37 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8AF58, &qword_264B4E8E0);
  v45 = *(v9 - 8);
  v46 = v9;
  MEMORY[0x28223BE20](v9, v10);
  v44 = &v37 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8AF60, &qword_264B4E8E8);
  v42 = *(v12 - 8);
  v43 = v12;
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v37 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8AF68, &qword_264B4E8F0);
  v41 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8AF70, &qword_264B4E8F8);
  v53 = *(v20 - 8);
  v54 = v20;
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v37 - v22;
  v24 = *v1;
  v25 = v1[1];
  v26 = v1[3];
  v39 = v1[2];
  v40 = v24;
  v38 = v26;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_264A97B7C();
  sub_264B41BD4();
  if (v25 > 1)
  {
    if (v25 == 2)
    {
      LOBYTE(v56) = 2;
      sub_264A97C78();
      v28 = v44;
      v27 = v54;
      sub_264B419B4();
      v30 = v45;
      v29 = v46;
    }

    else
    {
      if (v25 != 3)
      {
        goto LABEL_8;
      }

      LOBYTE(v56) = 3;
      sub_264A97C24();
      v28 = v47;
      v27 = v54;
      sub_264B419B4();
      v30 = v48;
      v29 = v49;
    }

    (*(v30 + 8))(v28, v29);
    return (*(v53 + 8))(v23, v27);
  }

  if (!v25)
  {
    LOBYTE(v56) = 0;
    sub_264A97D20();
    v36 = v54;
    sub_264B419B4();
    (*(v41 + 8))(v19, v16);
    return (*(v53 + 8))(v23, v36);
  }

  if (v25 == 1)
  {
    LOBYTE(v56) = 1;
    sub_264A97CCC();
    v27 = v54;
    sub_264B419B4();
    (*(v42 + 8))(v15, v43);
    return (*(v53 + 8))(v23, v27);
  }

LABEL_8:
  LOBYTE(v56) = 4;
  sub_264A97BD0();
  v31 = v50;
  v32 = v54;
  sub_264B419B4();
  LOBYTE(v56) = 0;
  v33 = v52;
  v34 = v55;
  sub_264B419E4();
  if (!v34)
  {
    v56 = v39;
    v57 = v38;
    v58 = 1;
    sub_264A2E90C();
    sub_264B41A24();
  }

  (*(v51 + 8))(v31, v33);
  return (*(v53 + 8))(v23, v32);
}

uint64_t SystemGestureEvent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8AFA8, &qword_264B4E900);
  v4 = *(v3 - 8);
  v63 = v3;
  v64 = v4;
  MEMORY[0x28223BE20](v3, v5);
  v66 = &v55 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8AFB0, &qword_264B4E908);
  v8 = *(v7 - 8);
  v61 = v7;
  v62 = v8;
  MEMORY[0x28223BE20](v7, v9);
  v65 = &v55 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8AFB8, &qword_264B4E910);
  v12 = *(v11 - 8);
  v59 = v11;
  v60 = v12;
  MEMORY[0x28223BE20](v11, v13);
  v67 = &v55 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8AFC0, &qword_264B4E918);
  v57 = *(v15 - 8);
  v58 = v15;
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v55 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8AFC8, &qword_264B4E920);
  v56 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v20);
  v22 = &v55 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8AFD0, &unk_264B4E928);
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23, v25);
  v27 = &v55 - v26;
  v28 = a1[3];
  v69 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v28);
  sub_264A97B7C();
  v29 = v70;
  sub_264B41BC4();
  if (!v29)
  {
    v30 = v22;
    v55 = v19;
    v70 = v24;
    v32 = v67;
    v31 = v68;
    v33 = v27;
    v34 = sub_264B419A4();
    v35 = (2 * *(v34 + 16)) | 1;
    v72 = v34;
    v73 = v34 + 32;
    v74 = 0;
    v75 = v35;
    v36 = sub_2649E03C8();
    if (v36 != 5 && v74 == v75 >> 1)
    {
      if (v36 <= 1u)
      {
        if (v36)
        {
          LOBYTE(v71) = 1;
          sub_264A97CCC();
          sub_264B418F4();
          (*(v57 + 8))(v18, v58);
          (*(v70 + 8))(v27, v23);
          swift_unknownObjectRelease();
          v39 = 0;
          v40 = 0uLL;
          v41 = 1;
        }

        else
        {
          LOBYTE(v71) = 0;
          sub_264A97D20();
          sub_264B418F4();
          (*(v56 + 8))(v30, v55);
          (*(v70 + 8))(v27, v23);
          swift_unknownObjectRelease();
          v39 = 0;
          v41 = 0;
          v40 = 0uLL;
        }
      }

      else if (v36 == 2)
      {
        LOBYTE(v71) = 2;
        sub_264A97C78();
        sub_264B418F4();
        v48 = v70;
        (*(v60 + 8))(v32, v59);
        (*(v48 + 8))(v27, v23);
        swift_unknownObjectRelease();
        v39 = 0;
        v40 = 0uLL;
        v41 = 2;
      }

      else
      {
        v37 = v70;
        if (v36 != 3)
        {
          LOBYTE(v71) = 4;
          sub_264A97BD0();
          v49 = v66;
          sub_264B418F4();
          LOBYTE(v71) = 0;
          v50 = v63;
          v51 = sub_264B41944();
          v52 = v23;
          v41 = v53;
          v54 = v49;
          v39 = v51;
          v76 = 1;
          sub_264A2E960();
          sub_264B41984();
          (*(v64 + 8))(v54, v50);
          (*(v37 + 8))(v33, v52);
          swift_unknownObjectRelease();
          v40 = v71;
          v46 = v69;
LABEL_17:
          *v31 = v39;
          *(v31 + 8) = v41;
          *(v31 + 16) = v40;
          return __swift_destroy_boxed_opaque_existential_0(v46);
        }

        LOBYTE(v71) = 3;
        sub_264A97C24();
        v38 = v65;
        sub_264B418F4();
        (*(v62 + 8))(v38, v61);
        (*(v37 + 8))(v33, v23);
        swift_unknownObjectRelease();
        v39 = 0;
        v40 = 0uLL;
        v41 = 3;
      }

      v46 = v69;
      goto LABEL_17;
    }

    v42 = v23;
    v43 = sub_264B417A4();
    swift_allocError();
    v45 = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88900, &qword_264B445C0);
    *v45 = &type metadata for SystemGestureEvent;
    sub_264B41904();
    sub_264B41794();
    (*(*(v43 - 8) + 104))(v45, *MEMORY[0x277D84160], v43);
    swift_willThrow();
    (*(v70 + 8))(v27, v42);
    swift_unknownObjectRelease();
  }

  v46 = v69;
  return __swift_destroy_boxed_opaque_existential_0(v46);
}

double sub_264A97978@<D0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v4 = v1[3];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v5;
  a1[3] = v4;
  type metadata accessor for ControlMessage(0);
  swift_storeEnumTagMultiPayload();

  return sub_264A18774(v2, v3, v5, v4);
}

BOOL _s16ScreenSharingKit18SystemGestureEventO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  v9 = a2[3];
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      if (v7 == 2)
      {
        v10 = 1;
        v3 = 2;
        goto LABEL_20;
      }

      goto LABEL_19;
    }

    if (v3 == 3)
    {
      if (v7 == 3)
      {
        v10 = 1;
        v3 = 3;
        goto LABEL_20;
      }

LABEL_19:
      sub_264A18774(v6, v7, v8, v9);
      sub_264A18774(v2, v3, v4, v5);
      v10 = 0;
      goto LABEL_20;
    }

LABEL_10:
    if (v7 >= 4 && (v2 == v6 && v3 == v7 || (sub_264B41AA4() & 1) != 0))
    {
      sub_264A18774(v6, v7, v8, v9);
      sub_264A18774(v2, v3, v4, v5);
      v10 = sub_264A2E750(v4, v5, v8, v9);
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (!v3)
  {
    if (!v7)
    {
      v3 = 0;
      v10 = 1;
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (v3 != 1)
  {
    goto LABEL_10;
  }

  if (v7 != 1)
  {
    goto LABEL_19;
  }

  v3 = 1;
  v10 = 1;
LABEL_20:
  sub_264A187D4(v2, v3, v4, v5);
  sub_264A187D4(v6, v7, v8, v9);
  return v10;
}

unint64_t sub_264A97B7C()
{
  result = qword_27FF8AF78;
  if (!qword_27FF8AF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8AF78);
  }

  return result;
}

unint64_t sub_264A97BD0()
{
  result = qword_27FF8AF80;
  if (!qword_27FF8AF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8AF80);
  }

  return result;
}

unint64_t sub_264A97C24()
{
  result = qword_27FF8AF88;
  if (!qword_27FF8AF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8AF88);
  }

  return result;
}

unint64_t sub_264A97C78()
{
  result = qword_27FF8AF90;
  if (!qword_27FF8AF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8AF90);
  }

  return result;
}

unint64_t sub_264A97CCC()
{
  result = qword_27FF8AF98;
  if (!qword_27FF8AF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8AF98);
  }

  return result;
}

unint64_t sub_264A97D20()
{
  result = qword_27FF8AFA0;
  if (!qword_27FF8AFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8AFA0);
  }

  return result;
}

uint64_t sub_264A97D74(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 32))
  {
    return (*a1 + 2147483644);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_264A97DC8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

void *sub_264A97E28(void *result, int a2)
{
  if (a2 < 0)
  {
    result[2] = 0;
    result[3] = 0;
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

unint64_t sub_264A97EC0()
{
  result = qword_27FF8AFD8;
  if (!qword_27FF8AFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8AFD8);
  }

  return result;
}