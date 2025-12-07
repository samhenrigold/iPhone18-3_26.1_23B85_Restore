void sub_1C5B96B90(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C5BCAC14();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C5BCAC44();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(a1 + 16) & 1) == 0)
  {
    v14 = *a1;
    v13 = *(a1 + 8);
    if (*a1 != 0.0 || v13 != 0.0)
    {
      v19 = v10;
      sub_1C592535C(0, &qword_1EDA4E620, 0x1E69E9610);
      v18 = sub_1C5BCB5A4();
      v15 = swift_allocObject();
      *(v15 + 16) = a2;
      *(v15 + 24) = v14;
      *(v15 + 32) = v13;
      aBlock[4] = sub_1C5B990FC;
      aBlock[5] = v15;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1C596D09C;
      aBlock[3] = &block_descriptor_103;
      v16 = _Block_copy(aBlock);

      sub_1C5BCAC34();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_1C5B98A84(&qword_1EDA4E6A0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1961C0, &unk_1C5BD76A0);
      sub_1C5924F54(&qword_1EDA4E690, &unk_1EC1961C0, &unk_1C5BD76A0, MEMORY[0x1E69E6328]);
      sub_1C5BCB8F4();
      v17 = v18;
      MEMORY[0x1C694F7F0](0, v12, v7, v16);
      _Block_release(v16);

      (*(v5 + 8))(v7, v4);
      (*(v9 + 8))(v12, v19);
    }
  }
}

void sub_1C5B96EB0(uint64_t a1, double a2, double a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (*&Strong[OBJC_IVAR____TtC11MediaCoreUIP33_8A49DC2FB69555F909B7715363263FF722VideoPlayerCoordinator_aspectRatioObserver])
    {

      swift_getKeyPath("\b+[&");
      swift_getKeyPath(byte_1C5BF2850);
      sub_1C5BC8044();
    }

    else
    {
    }
  }
}

void sub_1C5B96F6C()
{
  if (*(v0 + OBJC_IVAR____TtC11MediaCoreUIP33_8A49DC2FB69555F909B7715363263FF722VideoPlayerCoordinator_deviceMetrics + 18) == 2 || !*(v0 + OBJC_IVAR____TtC11MediaCoreUIP33_8A49DC2FB69555F909B7715363263FF722VideoPlayerCoordinator_hostedContent + 8))
  {
    v7 = OBJC_IVAR____TtC11MediaCoreUIP33_8A49DC2FB69555F909B7715363263FF722VideoPlayerCoordinator_videoSource;
    if ((*(v0 + OBJC_IVAR____TtC11MediaCoreUIP33_8A49DC2FB69555F909B7715363263FF722VideoPlayerCoordinator_videoSource) & 0x8000000000000000) != 0)
    {
      goto LABEL_16;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      return;
    }

    v9 = Strong;

    v10 = [v9 allowsEnteringFullScreen];

    if (!v10)
    {
      return;
    }

    if ((*(v0 + v7) & 0x8000000000000000) != 0)
    {
LABEL_16:
      v12 = swift_unknownObjectWeakLoadStrong();
      if (v12)
      {
        [v12 enterFullScreenWithCompletion_];

        swift_unknownObjectRelease();
      }
    }

    else
    {
      v11 = swift_unknownObjectWeakLoadStrong();
      if (v11)
      {
        v13 = v11;
        [v11 enterFullScreenWithCompletion_];
      }
    }
  }

  else
  {
    v1 = v0;
    if (qword_1EDA469E0 != -1)
    {
      swift_once();
    }

    v2 = sub_1C5BC7D64();
    __swift_project_value_buffer(v2, qword_1EDA5DA78);
    v3 = sub_1C5BC7D44();
    v4 = sub_1C5BCB4F4();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1C5922000, v3, v4, "Dismissing selected content because video thumbnail was tapped", v5, 2u);
      MEMORY[0x1C69510F0](v5, -1, -1);
    }

    v6 = *(v1 + OBJC_IVAR____TtC11MediaCoreUIP33_8A49DC2FB69555F909B7715363263FF722VideoPlayerCoordinator_updateContentSelection);
    v14[0] = 0;
    v14[1] = 0;

    v6(v14, 1);
  }
}

void sub_1C5B971F4(void *a1)
{
  [a1 scale];
  if (v2 > 1.0)
  {
    v3 = OBJC_IVAR____TtC11MediaCoreUIP33_8A49DC2FB69555F909B7715363263FF722VideoPlayerCoordinator_videoSource;
    if ((*(v1 + OBJC_IVAR____TtC11MediaCoreUIP33_8A49DC2FB69555F909B7715363263FF722VideoPlayerCoordinator_videoSource) & 0x8000000000000000) != 0 || (v4 = swift_unknownObjectWeakLoadStrong()) != 0 && (v5 = v4, , v6 = [v5 allowsEnteringFullScreen], , v5, v6))
    {
      if (*(v1 + OBJC_IVAR____TtC11MediaCoreUIP33_8A49DC2FB69555F909B7715363263FF722VideoPlayerCoordinator_deviceMetrics + 18) == 2 || !*(v1 + OBJC_IVAR____TtC11MediaCoreUIP33_8A49DC2FB69555F909B7715363263FF722VideoPlayerCoordinator_hostedContent + 8))
      {
        if ((*(v1 + v3) & 0x8000000000000000) != 0)
        {
          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            [Strong enterFullScreenWithCompletion_];

            swift_unknownObjectRelease();
          }
        }

        else
        {
          v7 = swift_unknownObjectWeakLoadStrong();
          if (v7)
          {
            v9 = v7;
            [v7 enterFullScreenWithCompletion_];
          }
        }
      }
    }
  }
}

uint64_t sub_1C5B973C4(uint64_t a1, void *a2)
{
  sub_1C592535C(0, &qword_1EDA45D70, 0x1E69E58C0);
  if ((sub_1C5BCB744() & 1) == 0)
  {
    return 0;
  }

  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    return 0;
  }

  if ((*(v2 + OBJC_IVAR____TtC11MediaCoreUIP33_8A49DC2FB69555F909B7715363263FF722VideoPlayerCoordinator_videoSource) & 0x8000000000000000) != 0)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      return 0;
    }

    v8 = Strong;

    v5 = [v8 playerViewController];
    swift_unknownObjectRelease();
    v6 = [v5 view];
  }

  else
  {
    v4 = swift_unknownObjectWeakLoadStrong();
    if (!v4)
    {
      return 0;
    }

    v5 = v4;

    v6 = [v5 view];
  }

  v9 = v6;

  if (v9)
  {
    v10 = [a2 view];
    if (v10)
    {
      v11 = v10;
      v12 = [v10 isDescendantOfView_];

      if (v12)
      {
        return 1;
      }
    }

    else
    {
    }
  }

  return 0;
}

void sub_1C5B97754(void *a1, void *a2)
{
  v14 = CGSizeMake;
  v15 = 0;
  v10 = MEMORY[0x1E69E9820];
  v11 = 1107296256;
  v12 = sub_1C5AC79C8;
  v13 = &block_descriptor_24;
  v5 = _Block_copy(&v10);
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = v2;
  v6[4] = a2;
  v14 = sub_1C5B99194;
  v15 = v6;
  v10 = MEMORY[0x1E69E9820];
  v11 = 1107296256;
  v12 = sub_1C5AC79C8;
  v13 = &block_descriptor_30_0;
  v7 = _Block_copy(&v10);
  v8 = a1;
  v9 = v2;
  swift_unknownObjectRetain();

  [a2 animateAlongsideTransition:v5 completion:v7];
  _Block_release(v7);
  _Block_release(v5);
}

void sub_1C5B979C4(uint64_t a1, void *a2)
{
  v13 = CGSizeMake;
  v14 = 0;
  v9 = MEMORY[0x1E69E9820];
  v10 = 1107296256;
  v11 = sub_1C5AC79C8;
  v12 = &block_descriptor_26;
  v5 = _Block_copy(&v9);
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = v2;
  v6[4] = a2;
  v13 = sub_1C5B97DD0;
  v14 = v6;
  v9 = MEMORY[0x1E69E9820];
  v10 = 1107296256;
  v11 = sub_1C5AC79C8;
  v12 = &block_descriptor_21;
  v7 = _Block_copy(&v9);
  swift_unknownObjectRetain();
  v8 = v2;
  swift_unknownObjectRetain();

  [a2 animateAlongsideTransition:v5 completion:v7];
  _Block_release(v7);
  _Block_release(v5);
}

uint64_t sub_1C5B97C94()
{
  MEMORY[0x1C6951220](v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1C5B97CF0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 8))
  {
    return (*a1 + 127);
  }

  v3 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1C5B97D4C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void sub_1C5B97DD4(uint64_t a2@<X8>)
{
  swift_getKeyPath("\b+[&");
  swift_getKeyPath(byte_1C5BF2850);
  sub_1C5BC8034();

  *a2 = v3;
  *(a2 + 8) = v4;
}

uint64_t sub_1C5B97E5C(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath("\b+[&");
  swift_getKeyPath(byte_1C5BF2850);

  return sub_1C5BC8044();
}

id sub_1C5B97EE0()
{
  v1 = [*v0 playerViewController];

  return v1;
}

void sub_1C5B97F18(uint64_t a1, uint64_t a2)
{
  v48 = sub_1C5BC8F34();
  v4 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  v8 = *(v2 + 24);
  v9 = *(v2 + 56);
  v60 = *(v2 + 40);
  *v61 = v9;
  *&v61[10] = *(v2 + 66);
  v58 = *(v2 + 8);
  v59 = v8;
  v43 = *(v2 + 88);
  v49 = *(v2 + 96);
  v41 = *(v2 + 104);
  v42 = *(v2 + 112);
  v10 = *(v2 + 136);
  v45 = *(v2 + 144);
  v46 = v10;
  swift_getWitnessTable();
  v11 = sub_1C5BC9834();
  sub_1C5BC9814();
  v12 = *&v55[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC199F70, &qword_1C5BF3118);
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v44 = v7;
  swift_unknownObjectWeakAssign();
  *&v12[OBJC_IVAR____TtC11MediaCoreUIP33_8A49DC2FB69555F909B7715363263FF722VideoPlayerCoordinator_videoSource] = v13 | 0x8000000000000000;

  sub_1C5B95FA0();

  v50 = v11;
  sub_1C5BC9814();
  v14 = v57;
  v47 = v4;
  if (v61[25])
  {
    v55[2] = v60;
    v56[0] = *v61;
    *(v56 + 9) = *&v61[9];
    v55[0] = v58;
    v55[1] = v59;
  }

  else
  {

    sub_1C5BCB4E4();
    v15 = sub_1C5BC9844();
    v4 = v47;
    v16 = v48;
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5924EF4(&v58, &unk_1EC194DE0, &qword_1C5BDCD20);
    (*(v4 + 8))(v6, v16);
  }

  v17 = &v14[OBJC_IVAR____TtC11MediaCoreUIP33_8A49DC2FB69555F909B7715363263FF722VideoPlayerCoordinator_deviceMetrics];
  v51[1] = *&v14[OBJC_IVAR____TtC11MediaCoreUIP33_8A49DC2FB69555F909B7715363263FF722VideoPlayerCoordinator_deviceMetrics + 16];
  v51[2] = *&v14[OBJC_IVAR____TtC11MediaCoreUIP33_8A49DC2FB69555F909B7715363263FF722VideoPlayerCoordinator_deviceMetrics + 32];
  v52[0] = *&v14[OBJC_IVAR____TtC11MediaCoreUIP33_8A49DC2FB69555F909B7715363263FF722VideoPlayerCoordinator_deviceMetrics + 48];
  *(v52 + 9) = *&v14[OBJC_IVAR____TtC11MediaCoreUIP33_8A49DC2FB69555F909B7715363263FF722VideoPlayerCoordinator_deviceMetrics + 57];
  v51[0] = *&v14[OBJC_IVAR____TtC11MediaCoreUIP33_8A49DC2FB69555F909B7715363263FF722VideoPlayerCoordinator_deviceMetrics];
  memmove(&v14[OBJC_IVAR____TtC11MediaCoreUIP33_8A49DC2FB69555F909B7715363263FF722VideoPlayerCoordinator_deviceMetrics], v55, 0x49uLL);
  v53[1] = *(v17 + 1);
  v53[2] = *(v17 + 2);
  v54[0] = *(v17 + 3);
  *(v54 + 9) = *(v17 + 57);
  v53[0] = *v17;
  v18 = _s11MediaCoreUI13DeviceMetricsV2eeoiySbAC_ACtFZ_0(v53, v51);
  v19 = v41;
  if ((v18 & 1) == 0)
  {
    sub_1C5B963D4();
  }

  v20 = v6;

  sub_1C5BC9814();
  v21 = *&v53[0];

  if ((v42 & 1) == 0)
  {
    sub_1C5BCB4E4();
    v22 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();

    (*(v4 + 8))(v6, v48);
    v19 = *&v51[0];
  }

  swift_getKeyPath(byte_1C5BF3080);
  *&v51[0] = v19;
  sub_1C5B98A84(&qword_1EDA4AF70, _s12PresentationCMa, &unk_1C5BD2B30);
  sub_1C5BC7B74();

  v23 = *(v19 + 17);

  v24 = v21[OBJC_IVAR____TtC11MediaCoreUIP33_8A49DC2FB69555F909B7715363263FF722VideoPlayerCoordinator_playerStyle];
  v21[OBJC_IVAR____TtC11MediaCoreUIP33_8A49DC2FB69555F909B7715363263FF722VideoPlayerCoordinator_playerStyle] = v23;
  LOBYTE(v51[0]) = v24;
  sub_1C5B96568(v51);

  sub_1C5BC9814();
  v25 = *&v51[0];
  v26 = v43;

  v27 = v26;
  if ((v49 & 1) == 0)
  {
    sub_1C5BCB4E4();
    v28 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();

    (*(v47 + 8))(v20, v48);
    v27 = *&v53[0];
  }

  swift_getKeyPath(byte_1C5BF3058);
  *&v53[0] = v27;
  sub_1C5B98A84(&qword_1EDA4AE80, _s13HostedContentCMa, &unk_1C5BDBA8C);
  sub_1C5BC7B74();

  v30 = *(v27 + 5);
  v29 = *(v27 + 6);

  v31 = &v25[OBJC_IVAR____TtC11MediaCoreUIP33_8A49DC2FB69555F909B7715363263FF722VideoPlayerCoordinator_hostedContent];
  v32 = *&v25[OBJC_IVAR____TtC11MediaCoreUIP33_8A49DC2FB69555F909B7715363263FF722VideoPlayerCoordinator_hostedContent];
  v33 = *&v25[OBJC_IVAR____TtC11MediaCoreUIP33_8A49DC2FB69555F909B7715363263FF722VideoPlayerCoordinator_hostedContent + 8];
  *v31 = v30;
  *(v31 + 1) = v29;
  *&v53[0] = v32;
  *(&v53[0] + 1) = v33;
  sub_1C5B96640(v53);

  sub_1C5BC9814();
  v34 = *&v53[0];

  if ((v49 & 1) == 0)
  {
    sub_1C5BCB4E4();
    v35 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();

    (*(v47 + 8))(v20, v48);
    v26 = *&v51[0];
  }

  v36 = &v34[OBJC_IVAR____TtC11MediaCoreUIP33_8A49DC2FB69555F909B7715363263FF722VideoPlayerCoordinator_updateContentSelection];
  *v36 = sub_1C5B99144;
  v36[1] = v26;

  v38 = type metadata accessor for NowPlayingViewControllerProxy(0, *(a2 + 16), *(a2 + 24), v37);
  WitnessTable = swift_getWitnessTable();
  sub_1C59498C4(v46, v45, v38, WitnessTable);

  v40 = sub_1C5BA622C();

  [v44 setVideoOutputDelegate_];
}

uint64_t sub_1C5B9862C(char a1)
{
  v2 = v1;
  if (qword_1EDA469E0 != -1)
  {
    swift_once();
  }

  v4 = sub_1C5BC7D64();
  __swift_project_value_buffer(v4, qword_1EDA5DA78);
  v5 = sub_1C5BC7D44();
  v6 = sub_1C5BCB4F4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = a1 & 1;
    _os_log_impl(&dword_1C5922000, v5, v6, "NowPlayingVideoPlayerDelegate fullscreen video changed to %{BOOL}d", v7, 8u);
    MEMORY[0x1C69510F0](v7, -1, -1);
  }

  if ((a1 & 1) == 0)
  {
    (*(v2 + OBJC_IVAR____TtC11MediaCoreUI29NowPlayingVideoPlayerDelegate_becomeFirstResponder))();
  }

  return sub_1C5BC7F74();
}

double sub_1C5B98834(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, __n128 a7)
{
  if ((a6 & 1) == 0)
  {
    return sub_1C5B98844(result, a2, a3, a4, a5, BYTE1(a5) & 1);
  }

  return v7;
}

double sub_1C5B98844(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {

    swift_unknownObjectRelease();
  }

  else
  {

    return sub_1C5AFC9D8(a3, a4);
  }

  return result;
}

uint64_t sub_1C5B988D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C5B98910(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C5B98958(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_1C5B989A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C5B98A84(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C5B98AF4()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[8];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_1C592ABD4;

  return sub_1C5B941BC(v4, v5, v6, v7, v8, v2, v3);
}

uint64_t sub_1C5B98BC4(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C592ABD4;

  return sub_1C5B9454C(a1, v4, v5, v6);
}

uint64_t objectdestroy_57Tm()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1C5B98CEC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[6];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C592A748;

  return sub_1C5B94DC0(a1, v4, v5, v6);
}

double sub_1C5B98DC8(uint64_t a1)
{
  *(a1 + 144) = 0;
  result = 0.0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_1C5B98DE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy168_8(uint64_t a1, __int128 *a2)
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
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_1C5B98E60(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 168))
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

uint64_t sub_1C5B98EA8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
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
      *(result + 168) = 1;
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

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C5B98F10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy152_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_1C5B98F80(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
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

uint64_t sub_1C5B98FC8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
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
      *(result + 152) = 1;
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

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C5B99064(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC194DE0, &qword_1C5BDCD20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_88Tm()
{

  return swift_deallocObject();
}

uint64_t sub_1C5B991A4()
{
  sub_1C59B5E78();
  sub_1C5BC8F44();
  return v1;
}

double MCUINamespace<A>.materialContentMode(_:)(char a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath("P#[&");
  sub_1C5BC9DF4();

  return result;
}

uint64_t sub_1C5B99254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C5B99428();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t View.materialContentMode(_:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for MCUINamespace(0, a2, a3, a4);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - v9;
  View.mcui.getter(a2, &v13 - v9);
  v11 = MCUINamespace<A>.materialContentMode(_:)(a1, v7, a3);
  return (*(v8 + 8))(v10, v7, v11);
}

unint64_t sub_1C5B993B4()
{
  result = qword_1EC197CC0;
  if (!qword_1EC197CC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC197CC8, &qword_1C5BE8CD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC197CC0);
  }

  return result;
}

unint64_t sub_1C5B99428()
{
  result = qword_1EC199FE0;
  if (!qword_1EC199FE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC191AA0, &unk_1C5BF31A0);
    sub_1C5B994AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC199FE0);
  }

  return result;
}

unint64_t sub_1C5B994AC()
{
  result = qword_1EC199FE8;
  if (!qword_1EC199FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC199FE8);
  }

  return result;
}

uint64_t sub_1C5B99500@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = a1[3];
  __swift_project_boxed_opaque_existential_0(a1, v3);
  result = sub_1C596CB78(v3);
  *a2 = result & 1;
  return result;
}

uint64_t NowPlayingRouteButton.id.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  return sub_1C5951550(v2, v3);
}

uint64_t sub_1C5B99578(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NowPlayingRouteButton.Content(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C5B995DC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1C5BC8F34();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A000, &qword_1C5BECDC0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;
  sub_1C59400B0(v2, &v13 - v9, &qword_1EC19A000, &qword_1C5BECDC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1C5B9CB44(v10, a1);
  }

  sub_1C5BCB4E4();
  v12 = sub_1C5BC9844();
  sub_1C5BC7C54();

  sub_1C5BC8F24();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t NowPlayingRouteButton.Content.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for NowPlayingRouteButton.Content(0);
  v54 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v55 = v4;
  v56 = &v43[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1C5BC9424();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v45 = &v43[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC199FF0, &qword_1C5BF31C0);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v43[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC199FF8, &qword_1C5BF31C8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v48 = &v43[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v43[-v15];
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v43[-v18];
  v53 = sub_1C5BCA484();
  sub_1C5BCAA54();
  sub_1C5BC85D4();
  v52 = v60;
  v51 = v61;
  v50 = v62;
  v49 = v63;
  v47 = v64;
  v46 = v65;
  v57 = v1;
  sub_1C5B995DC(v19);
  (*(v6 + 104))(v16, *MEMORY[0x1E697FF40], v5);
  (*(v6 + 56))(v16, 0, 1, v5);
  v20 = *(v9 + 56);
  sub_1C59400B0(v19, v11, &qword_1EC199FF8, &qword_1C5BF31C8);
  sub_1C59400B0(v16, &v11[v20], &qword_1EC199FF8, &qword_1C5BF31C8);
  v21 = v6;
  v22 = *(v6 + 48);
  if (v22(v11, 1, v5) == 1)
  {
    sub_1C5924EF4(v16, &qword_1EC199FF8, &qword_1C5BF31C8);
    sub_1C5924EF4(v19, &qword_1EC199FF8, &qword_1C5BF31C8);
    if (v22(&v11[v20], 1, v5) == 1)
    {
      sub_1C5924EF4(v11, &qword_1EC199FF8, &qword_1C5BF31C8);
LABEL_9:
      v23 = sub_1C5BCAA64();
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  sub_1C59400B0(v11, v48, &qword_1EC199FF8, &qword_1C5BF31C8);
  if (v22(&v11[v20], 1, v5) == 1)
  {
    sub_1C5924EF4(v16, &qword_1EC199FF8, &qword_1C5BF31C8);
    sub_1C5924EF4(v19, &qword_1EC199FF8, &qword_1C5BF31C8);
    (*(v21 + 8))(v48, v5);
LABEL_6:
    sub_1C5924EF4(v11, &qword_1EC199FF0, &qword_1C5BF31C0);
    goto LABEL_7;
  }

  v25 = v45;
  (*(v21 + 32))(v45, &v11[v20], v5);
  sub_1C5B9BDBC(&qword_1EDA46220, MEMORY[0x1E697FF50], MEMORY[0x1E697FF60]);
  v26 = v48;
  v44 = sub_1C5BCADB4();
  v27 = *(v21 + 8);
  v27(v25, v5);
  sub_1C5924EF4(v16, &qword_1EC199FF8, &qword_1C5BF31C8);
  sub_1C5924EF4(v19, &qword_1EC199FF8, &qword_1C5BF31C8);
  v27(v26, v5);
  sub_1C5924EF4(v11, &qword_1EC199FF8, &qword_1C5BF31C8);
  if (v44)
  {
    goto LABEL_9;
  }

LABEL_7:
  v23 = sub_1C5BCAA34();
LABEL_10:
  v48 = v23;
  v28 = v24;
  v29 = v57;
  sub_1C5B99DF4(v58);
  v30 = v58[0];
  v31 = v58[1];
  v32 = v58[2];
  v33 = v58[3];
  v34 = v51;
  LOBYTE(v58[0]) = v51;
  v35 = v49;
  v59 = v49;
  v36 = sub_1C5BC8FA4();
  v37 = v56;
  sub_1C5B99578(v29, v56);
  v38 = (*(v54 + 80) + 16) & ~*(v54 + 80);
  v39 = swift_allocObject();
  result = sub_1C5B9A7B0(v37, v39 + v38);
  v41 = v52;
  *a1 = v53;
  *(a1 + 8) = v41;
  *(a1 + 16) = v34;
  *(a1 + 24) = v50;
  *(a1 + 32) = v35;
  v42 = v46;
  *(a1 + 40) = v47;
  *(a1 + 48) = v42;
  *(a1 + 56) = v30;
  *(a1 + 64) = v31;
  *(a1 + 72) = v32;
  *(a1 + 80) = v33;
  *(a1 + 88) = v48;
  *(a1 + 96) = v28;
  *(a1 + 104) = v36;
  *(a1 + 112) = sub_1C5B9A814;
  *(a1 + 120) = v39;
  return result;
}

uint64_t sub_1C5B99DF4@<X0>(uint64_t *a1@<X8>)
{
  v34 = a1;
  v1 = sub_1C5BC9424();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC199FF0, &qword_1C5BF31C0);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v29 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC199FF8, &qword_1C5BF31C8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v31 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v29 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v29 - v14;
  type metadata accessor for NowPlayingRouteObserver(0);
  sub_1C5B9BDBC(&qword_1EDA48458, type metadata accessor for NowPlayingRouteObserver, &unk_1C5BEA348);
  v16 = sub_1C5BC8C84();
  v32 = v17;
  v33 = v16;
  sub_1C5B995DC(v15);
  (*(v2 + 104))(v12, *MEMORY[0x1E697FF40], v1);
  (*(v2 + 56))(v12, 0, 1, v1);
  v18 = *(v5 + 56);
  sub_1C59400B0(v15, v7, &qword_1EC199FF8, &qword_1C5BF31C8);
  sub_1C59400B0(v12, &v7[v18], &qword_1EC199FF8, &qword_1C5BF31C8);
  v19 = *(v2 + 48);
  if (v19(v7, 1, v1) == 1)
  {
    sub_1C5924EF4(v12, &qword_1EC199FF8, &qword_1C5BF31C8);
    sub_1C5924EF4(v15, &qword_1EC199FF8, &qword_1C5BF31C8);
    if (v19(&v7[v18], 1, v1) == 1)
    {
      result = sub_1C5924EF4(v7, &qword_1EC199FF8, &qword_1C5BF31C8);
      v21 = -28.0;
      goto LABEL_9;
    }

LABEL_6:
    result = sub_1C5924EF4(v7, &qword_1EC199FF0, &qword_1C5BF31C0);
    v21 = 0.0;
    goto LABEL_9;
  }

  sub_1C59400B0(v7, v31, &qword_1EC199FF8, &qword_1C5BF31C8);
  if (v19(&v7[v18], 1, v1) == 1)
  {
    sub_1C5924EF4(v12, &qword_1EC199FF8, &qword_1C5BF31C8);
    sub_1C5924EF4(v15, &qword_1EC199FF8, &qword_1C5BF31C8);
    (*(v2 + 8))(v31, v1);
    goto LABEL_6;
  }

  v22 = &v7[v18];
  v23 = v30;
  (*(v2 + 32))(v30, v22, v1);
  sub_1C5B9BDBC(&qword_1EDA46220, MEMORY[0x1E697FF50], MEMORY[0x1E697FF60]);
  v24 = v31;
  v25 = sub_1C5BCADB4();
  v26 = *(v2 + 8);
  v26(v23, v1);
  sub_1C5924EF4(v12, &qword_1EC199FF8, &qword_1C5BF31C8);
  sub_1C5924EF4(v15, &qword_1EC199FF8, &qword_1C5BF31C8);
  v26(v24, v1);
  result = sub_1C5924EF4(v7, &qword_1EC199FF8, &qword_1C5BF31C8);
  v21 = 0.0;
  if (v25)
  {
    v21 = -28.0;
  }

LABEL_9:
  v27 = v34;
  v28 = v32;
  *v34 = v33;
  v27[1] = v28;
  *(v27 + 2) = v21;
  v27[3] = 0;
  return result;
}

double sub_1C5B9A2BC(uint64_t a1)
{
  v34 = a1;
  v1 = sub_1C5BC9424();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v33 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC199FF0, &qword_1C5BF31C0);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v32 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC199FF8, &qword_1C5BF31C8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v35 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v32 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v32 - v14;
  sub_1C5B995DC(&v32 - v14);
  (*(v2 + 104))(v12, *MEMORY[0x1E697FF40], v1);
  (*(v2 + 56))(v12, 0, 1, v1);
  v16 = *(v5 + 56);
  sub_1C59400B0(v15, v7, &qword_1EC199FF8, &qword_1C5BF31C8);
  sub_1C59400B0(v12, &v7[v16], &qword_1EC199FF8, &qword_1C5BF31C8);
  v17 = *(v2 + 48);
  if (v17(v7, 1, v1) == 1)
  {
    sub_1C5924EF4(v12, &qword_1EC199FF8, &qword_1C5BF31C8);
    sub_1C5924EF4(v15, &qword_1EC199FF8, &qword_1C5BF31C8);
    if (v17(&v7[v16], 1, v1) == 1)
    {
      sub_1C5924EF4(v7, &qword_1EC199FF8, &qword_1C5BF31C8);
      goto LABEL_12;
    }

    goto LABEL_6;
  }

  sub_1C59400B0(v7, v35, &qword_1EC199FF8, &qword_1C5BF31C8);
  if (v17(&v7[v16], 1, v1) == 1)
  {
    sub_1C5924EF4(v12, &qword_1EC199FF8, &qword_1C5BF31C8);
    sub_1C5924EF4(v15, &qword_1EC199FF8, &qword_1C5BF31C8);
    (*(v2 + 8))(v35, v1);
LABEL_6:
    sub_1C5924EF4(v7, &qword_1EC199FF0, &qword_1C5BF31C0);
LABEL_7:
    if (_UISolariumEnabled())
    {
      v18 = -10.0;
    }

    else
    {
      v18 = 0.0;
    }

    v19 = sub_1C5BC8FA4();
    MEMORY[0x1C694CB90](v19);
    return v18 + v20;
  }

  v21 = &v7[v16];
  v22 = v33;
  (*(v2 + 32))(v33, v21, v1);
  sub_1C5B9BDBC(&qword_1EDA46220, MEMORY[0x1E697FF50], MEMORY[0x1E697FF60]);
  v23 = v35;
  v24 = sub_1C5BCADB4();
  v25 = *(v2 + 8);
  v25(v22, v1);
  sub_1C5924EF4(v12, &qword_1EC199FF8, &qword_1C5BF31C8);
  sub_1C5924EF4(v15, &qword_1EC199FF8, &qword_1C5BF31C8);
  v25(v23, v1);
  sub_1C5924EF4(v7, &qword_1EC199FF8, &qword_1C5BF31C8);
  if ((v24 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_12:
  sub_1C5B34A7C();
  v18 = v26;

  v27 = [objc_opt_self() currentTraitCollection];
  [v27 displayScale];
  v29 = v28;

  v30 = 1.0;
  if (v29 >= 1.0)
  {
    v30 = v29;
    if ((~*&v29 & 0x7FF0000000000000) == 0)
    {
      v30 = 1.0;
      if ((*&v29 & 0xFFFFFFFFFFFFFLL) == 0)
      {
        v30 = v29;
      }
    }
  }

  v20 = 1.5 / v30;
  return v18 + v20;
}

uint64_t sub_1C5B9A7B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NowPlayingRouteButton.Content(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_1C5B9A814(uint64_t a1)
{
  type metadata accessor for NowPlayingRouteButton.Content(0);

  return sub_1C5B9A2BC(a1);
}

uint64_t NowPlayingRouteButton.deinit()
{
  sub_1C5950CE4(*(v0 + 16), *(v0 + 24));
  sub_1C5B9A8BC(v0 + OBJC_IVAR____TtC11MediaCoreUI21NowPlayingRouteButton_content);
  return v0;
}

uint64_t sub_1C5B9A8BC(uint64_t a1)
{
  v2 = type metadata accessor for NowPlayingRouteButton.Content(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t NowPlayingRouteButton.__deallocating_deinit()
{
  sub_1C5950CE4(*(v0 + 16), *(v0 + 24));
  sub_1C5B9A8BC(v0 + OBJC_IVAR____TtC11MediaCoreUI21NowPlayingRouteButton_content);

  return swift_deallocClassInstance();
}

uint64_t sub_1C5B9A988@<X0>(uint64_t a1@<X8>)
{
  v2 = *(*v1 + 16);
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 32);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  return sub_1C5951550(v2, v3);
}

double static NowPlayingButtonID.route.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 0x6574756F72;
  *a1 = xmmword_1C5BF31B0;
  *(a1 + 16) = 0;
  return result;
}

uint64_t static NowPlayingButton<>.route.getter()
{
  type metadata accessor for NowPlayingRouteButton(0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C5BF31B0;
  *(v0 + 32) = 0;
  v1 = (v0 + OBJC_IVAR____TtC11MediaCoreUI21NowPlayingRouteButton_content);
  *v1 = swift_getKeyPath(byte_1C5BF31D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A000, &qword_1C5BECDC0);
  swift_storeEnumTagMultiPayload();
  v2 = type metadata accessor for NowPlayingRouteButton.Content(0);
  v3 = (v1 + v2[5]);
  type metadata accessor for NowPlayingRouteObserver(0);
  sub_1C5B9BDBC(&qword_1EDA48458, type metadata accessor for NowPlayingRouteObserver, &unk_1C5BEA348);
  *v3 = sub_1C5BC8C84();
  v3[1] = v4;
  v5 = v2[6];
  *(v1 + v5) = swift_getKeyPath(byte_1C5BF3200);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195900, &qword_1C5BD5AD0);
  swift_storeEnumTagMultiPayload();
  v6 = v1 + v2[7];
  v6[8] = 0;
  return v0;
}

void sub_1C5B9AB3C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39[1] = a4;
  v43 = a1;
  v5 = sub_1C5BC9424();
  v46 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v40 = v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC199FF0, &qword_1C5BF31C0);
  MEMORY[0x1EEE9AC00](v44);
  v45 = v39 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC199FF8, &qword_1C5BF31C8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v42 = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v39 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v47 = v39 - v14;
  v15 = sub_1C5BC8F34();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A0F0, &qword_1C5BF34F0);
  sub_1C5BC96B4();
  v19 = v49;
  Strong = swift_unknownObjectWeakLoadStrong();

  v48 = Strong;
  if (Strong)
  {
    v41 = v5;
    if (!a3)
    {
      type metadata accessor for NowPlayingRouteObserver(0);
      sub_1C5B9BDBC(&qword_1EDA48458, type metadata accessor for NowPlayingRouteObserver, &unk_1C5BEA348);
      sub_1C5BC8C74();
      __break(1u);
      return;
    }

    swift_getKeyPath(byte_1C5BF34F8);
    swift_getKeyPath(byte_1C5BF3520);

    sub_1C5BC8034();

    v21 = v49;
    if (v49)
    {
      v22 = [v49 isRoutingToWirelessDevice];
      v23 = v48;
      [v48 setRouteLabelHidden_];
      [v23 setRoute_];
      [v43 setNeedsLayout];
    }

    sub_1C5BC96C4();
    v24 = v47;
    sub_1C5BC8E04();
    (*(v16 + 8))(v18, v15);
    v25 = v46;
    v26 = v41;
    (*(v46 + 104))(v12, *MEMORY[0x1E697FF40], v41);
    (*(v25 + 56))(v12, 0, 1, v26);
    v27 = v45;
    v28 = *(v44 + 48);
    sub_1C59400B0(v24, v45, &qword_1EC199FF8, &qword_1C5BF31C8);
    sub_1C59400B0(v12, v27 + v28, &qword_1EC199FF8, &qword_1C5BF31C8);
    v29 = *(v25 + 48);
    if (v29(v27, 1, v26) == 1)
    {
      sub_1C5924EF4(v12, &qword_1EC199FF8, &qword_1C5BF31C8);
      sub_1C5924EF4(v24, &qword_1EC199FF8, &qword_1C5BF31C8);
      if (v29(v27 + v28, 1, v26) == 1)
      {
        sub_1C5924EF4(v27, &qword_1EC199FF8, &qword_1C5BF31C8);
        v30 = 0;
LABEL_12:
        v35 = v48;
        [v48 setRouteLabelAxis_];
        v36 = objc_opt_self();
        v37 = v35;
        v38 = [v36 tintColor];
        [v37 setTintColor_];

        return;
      }
    }

    else
    {
      v31 = v42;
      sub_1C59400B0(v27, v42, &qword_1EC199FF8, &qword_1C5BF31C8);
      if (v29(v27 + v28, 1, v26) != 1)
      {
        v32 = v40;
        (*(v25 + 32))(v40, v27 + v28, v26);
        sub_1C5B9BDBC(&qword_1EDA46220, MEMORY[0x1E697FF50], MEMORY[0x1E697FF60]);
        v33 = sub_1C5BCADB4();
        v34 = *(v25 + 8);
        v34(v32, v26);
        sub_1C5924EF4(v12, &qword_1EC199FF8, &qword_1C5BF31C8);
        sub_1C5924EF4(v47, &qword_1EC199FF8, &qword_1C5BF31C8);
        v34(v31, v26);
        sub_1C5924EF4(v27, &qword_1EC199FF8, &qword_1C5BF31C8);
        v30 = ~v33 & 1;
        goto LABEL_12;
      }

      sub_1C5924EF4(v12, &qword_1EC199FF8, &qword_1C5BF31C8);
      sub_1C5924EF4(v47, &qword_1EC199FF8, &qword_1C5BF31C8);
      (*(v25 + 8))(v31, v26);
    }

    sub_1C5924EF4(v27, &qword_1EC199FF0, &qword_1C5BF31C0);
    v30 = 1;
    goto LABEL_12;
  }
}

id sub_1C5B9B204@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(type metadata accessor for RouteButton.Coordinator()) init];
  *a1 = result;
  return result;
}

uint64_t sub_1C5B9B260(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C5B9C7DC();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1C5B9B2C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C5B9C7DC();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1C5B9B328(uint64_t a1)
{
  sub_1C5B9C7DC();
  sub_1C5BC9264();
  __break(1u);
}

id sub_1C5B9B350()
{
  v15.receiver = v0;
  v15.super_class = type metadata accessor for ContainerView();
  objc_msgSendSuper2(&v15, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC11MediaCoreUIP33_269E8A2553F691DD0D96A2E732A5863B13ContainerView_routeButton];
  if ([v1 routeLabelAxis] == 1)
  {
    [v1 sizeThatFits_];
    [v1 frame];
    [v1 setFrame_];
    [v0 center];
    v3 = v2;
    [v1 center];
    [v1 setCenter_];
    [v1 frame];
    return [v1 setFrame_];
  }

  else
  {
    [v1 sizeThatFits_];
    [v1 frame];
    [v1 setFrame_];
    [v1 frame];
    [v1 setFrame_];
    [v0 center];
    v9 = v8;
    [v1 frame];
    x = v16.origin.x;
    y = v16.origin.y;
    width = v16.size.width;
    height = v16.size.height;
    MidX = CGRectGetMidX(v16);
    v17.origin.x = x;
    v17.origin.y = y;
    v17.size.width = width;
    v17.size.height = height;
    CGRectGetMidY(v17);
    v18.origin.x = x;
    v18.origin.y = y;
    v18.size.width = width;
    v18.size.height = height;
    v19.origin.x = MidX - CGRectGetWidth(v18) * 0.5;
    v19.origin.y = y;
    v19.size.width = width;
    v19.size.height = height;
    return [v1 setFrame_];
  }
}

id sub_1C5B9B658()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ContainerView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1C5B9B6A0()
{
  v1 = OBJC_IVAR____TtCV11MediaCoreUIP33_269E8A2553F691DD0D96A2E732A5863B11RouteButton11Coordinator____lazy_storage___mediaControls;
  v2 = *(v0 + OBJC_IVAR____TtCV11MediaCoreUIP33_269E8A2553F691DD0D96A2E732A5863B11RouteButton11Coordinator____lazy_storage___mediaControls);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtCV11MediaCoreUIP33_269E8A2553F691DD0D96A2E732A5863B11RouteButton11Coordinator____lazy_storage___mediaControls);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69705B0]) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_1C5B9B7CC(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v6 = a1;
  v5 = sub_1C5B9B6A0();
  [v5 *a4];
}

id sub_1C5B9B948(uint64_t a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E6958618]) init];
  LODWORD(v4) = 1148846080;
  [v3 setContentHuggingPriority:0 forAxis:v4];
  LODWORD(v5) = 1148846080;
  [v3 setContentHuggingPriority:1 forAxis:v5];
  v6 = [objc_opt_self() mainBundle];
  sub_1C5949F2C();

  MEMORY[0x1C694F170](46, 0xE100000000000000);
  MEMORY[0x1C694F170](0xD000000000000010, 0x80000001C5BFE470);
  v7 = sub_1C5BCAE44();

  [v3 setAccessibilityIdentifier_];

  if (a2)
  {
    swift_unknownObjectWeakAssign();
  }

  return v3;
}

uint64_t sub_1C5B9BA94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C5B9CCC8();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1C5B9BAF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C5B9CCC8();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1C5B9BB5C(uint64_t a1)
{
  sub_1C5B9CCC8();
  sub_1C5BC9264();
  __break(1u);
}

void sub_1C5B9BB84(void *a2@<X8>)
{
  swift_getKeyPath(byte_1C5BF34F8);
  swift_getKeyPath(byte_1C5BF3520);
  sub_1C5BC8034();

  *a2 = v3;
}

void sub_1C5B9BC04(void **a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath(byte_1C5BF34F8);
  swift_getKeyPath(byte_1C5BF3520);
  v3 = v2;
  sub_1C5BC8034();

  swift_getKeyPath(byte_1C5BF34F8);
  swift_getKeyPath(byte_1C5BF3520);
  v4 = v3;

  sub_1C5BC8044();
  sub_1C596C294(v5);
}

uint64_t sub_1C5B9BD14(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC199FF8, &qword_1C5BF31C8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1C59400B0(a1, &v5 - v3, &qword_1EC199FF8, &qword_1C5BF31C8);
  return sub_1C5BC8E14();
}

uint64_t sub_1C5B9BDBC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C5B9BE70(uint64_t a1)
{
  result = type metadata accessor for NowPlayingRouteButton.Content(319);
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

unint64_t sub_1C5B9BFB8()
{
  result = qword_1EC19A0A8;
  if (!qword_1EC19A0A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC19A0B0, &qword_1C5BF3380);
    sub_1C5B9C044();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC19A0A8);
  }

  return result;
}

unint64_t sub_1C5B9C044()
{
  result = qword_1EC19A0B8;
  if (!qword_1EC19A0B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC19A0C0, &qword_1C5BF3388);
    sub_1C594C97C();
    sub_1C5B9C0D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC19A0B8);
  }

  return result;
}

unint64_t sub_1C5B9C0D0()
{
  result = qword_1EC19A0D8;
  if (!qword_1EC19A0D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC19A0E0, &qword_1C5BF3398);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC19A0D8);
  }

  return result;
}

unint64_t sub_1C5B9C148()
{
  result = qword_1EC19A0E8;
  if (!qword_1EC19A0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC19A0E8);
  }

  return result;
}

void sub_1C5B9C19C()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E6970928]) init];
  [v0 setExclusiveTouch_];
  v1 = [objc_opt_self() _preferredFontForTextStyle_weight_];
  if (v1)
  {
    v2 = v1;
    [v0 setFont_];

    [v0 setHitRectInsets_];
    LODWORD(v3) = 1148846080;
    [v0 setContentHuggingPriority:0 forAxis:v3];
    LODWORD(v4) = 1148846080;
    [v0 setContentHuggingPriority:1 forAxis:v4];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A0F0, &qword_1C5BF34F0);
    sub_1C5BC96B4();
    [v0 addTarget:v24 action:sel_onTouchDown_ forControlEvents:1];

    sub_1C5BC96B4();
    [v0 addTarget:v24 action:sel_onTouchUpOutside_ forControlEvents:128];

    sub_1C5BC96B4();
    [v0 addTarget:v24 action:sel_onTouchUpInside_ forControlEvents:64];

    v5 = sub_1C5BCAE44();
    v6 = [objc_opt_self() systemImageNamed_];

    if (v6)
    {
      [v0 setAccessoryImage_];

      v7 = [objc_opt_self() mainBundle];
      v8 = sub_1C5949F2C();
      v10 = v9;

      v24 = v8;
      v25 = v10;
      MEMORY[0x1C694F170](46, 0xE100000000000000);
      MEMORY[0x1C694F170](0xD000000000000010, 0x80000001C5BFE470);
      v11 = sub_1C5BCAE44();

      [v0 setAccessibilityIdentifier_];

      v12 = *MEMORY[0x1E69DDDC8];
      v13 = objc_opt_self();
      v14 = [v13 configurationWithTextStyle_];
      v15 = [v13 configurationWithWeight_];
      v16 = [v14 configurationByApplyingConfiguration_];

      [v0 setPreferredSymbolConfiguration_];
      v17 = *MEMORY[0x1E69DDC70];
      [v0 setMinimumContentSizeCategory_];
      [v0 setMaximumContentSizeCategory_];

      sub_1C5BC96B4();
      v18 = [objc_allocWithZone(MEMORY[0x1E69DCDB0]) initWithDelegate_];

      [v0 addInteraction_];
      sub_1C5BC96B4();
      swift_unknownObjectWeakAssign();

      v19 = type metadata accessor for ContainerView();
      v20 = objc_allocWithZone(v19);
      *&v20[OBJC_IVAR____TtC11MediaCoreUIP33_269E8A2553F691DD0D96A2E732A5863B13ContainerView_routeButton] = v0;
      v23.receiver = v20;
      v23.super_class = v19;
      v21 = v0;
      v22 = objc_msgSendSuper2(&v23, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
      [v22 addSubview_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1C5B9C64C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A0F0, &qword_1C5BF34F0);
  sub_1C5BC96B4();
  Strong = swift_unknownObjectWeakLoadStrong();

  if (!Strong)
  {
    return 0;
  }

  if ([Strong routeLabelAxis] == 1)
  {
    v1 = Strong;
    [v1 intrinsicContentSize];
    v3 = fmin(v2, 168.0);
    [v1 intrinsicContentSize];

    if ([v1 isRouteLabelHidden])
    {
      [v1 hitRectInsets];
      v5 = v4;
      v7 = v6;
    }

    else
    {
      v5 = *(MEMORY[0x1E69DDCE0] + 8);
      v7 = *(MEMORY[0x1E69DDCE0] + 24);
    }

    v11 = v3 - v5 - v7;
  }

  else
  {
    [Strong sizeThatFits_];
    v10 = v9;

    v11 = v10 + 28.0 + 28.0;
  }

  return *&v11;
}

unint64_t sub_1C5B9C7DC()
{
  result = qword_1EC19A0F8;
  if (!qword_1EC19A0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC19A0F8);
  }

  return result;
}

uint64_t sub_1C5B9C830(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A100, &qword_1C5BF3540);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v19 - v3;
  v5 = sub_1C5BC7DA4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_1C5BC7D84();
  v10 = *(v9 - 8);
  *&v11 = MEMORY[0x1EEE9AC00](v9).n128_u64[0];
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a1 view];
  if (!v14)
  {
    return 0;
  }

  v15 = v14;
  v16 = [objc_allocWithZone(MEMORY[0x1E69DD070]) initWithView_];
  [v15 frame];
  *v13 = CGRectInset(v20, -6.0, -6.0);
  *(v13 + 4) = 0x4020000000000000;
  (*(v10 + 104))(v13, *MEMORY[0x1E69DBED0], v9);
  sub_1C5B9CAF8();
  *v8 = v16;
  (*(v6 + 104))(v8, *MEMORY[0x1E69DBF98], v5);
  (*(v10 + 16))(v4, v13, v9);
  (*(v10 + 56))(v4, 0, 1, v9);
  v17 = sub_1C5BCB504();

  (*(v10 + 8))(v13, v9);
  return v17;
}

unint64_t sub_1C5B9CAF8()
{
  result = qword_1EC19A108;
  if (!qword_1EC19A108)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC19A108);
  }

  return result;
}

uint64_t sub_1C5B9CB44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC199FF8, &qword_1C5BF31C8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C5B9CBB4(uint64_t *a1, unsigned int a2)
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

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1C5B9CC10(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
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

unint64_t sub_1C5B9CC74()
{
  result = qword_1EC19A118;
  if (!qword_1EC19A118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC19A118);
  }

  return result;
}

unint64_t sub_1C5B9CCC8()
{
  result = qword_1EC19A120;
  if (!qword_1EC19A120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC19A120);
  }

  return result;
}

void sub_1C5B9CD24(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_1C5BF3940);
  sub_1C5931880(&qword_1EDA4B960, type metadata accessor for WindowProperties, &unk_1C5BDAF08);
  sub_1C5BC7B74();

  *a2 = *(v3 + 48);
}

__n128 sub_1C5B9CDF4@<Q0>(uint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_1C5BF39C0);
  sub_1C5931880(&qword_1EDA4B960, type metadata accessor for WindowProperties, &unk_1C5BDAF08);
  sub_1C5BC7B74();

  result = *(v3 + 56);
  *a2 = result;
  return result;
}

double sub_1C5B9CEC4@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath("X\x1B[&");
  sub_1C5931880(&qword_1EDA4B960, type metadata accessor for WindowProperties, &unk_1C5BDAF08);
  sub_1C5BC7B74();

  result = *(v3 + 80);
  *a2 = result;
  return result;
}

double sub_1C5B9CF94@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_1C5BF3B00);
  sub_1C5931880(&qword_1EDA4AE80, _s13HostedContentCMa, &unk_1C5BDBA8C);
  sub_1C5BC7B74();

  *a2 = *(v3 + 56);

  return result;
}

uint64_t sub_1C5B9D06C(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = qword_1EC19A2B0;
  swift_beginAccess();
  v7 = *(v2 + v6);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + v6) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_1C5B77104(0, v7[2] + 1, 1, v7);
    *(v2 + v6) = v7;
  }

  v10 = v7[2];
  v9 = v7[3];
  if (v10 >= v9 >> 1)
  {
    v7 = sub_1C5B77104((v9 > 1), v10 + 1, 1, v7);
  }

  v7[2] = v10 + 1;
  v11 = &v7[2 * v10];
  v11[4] = sub_1C5BA9314;
  v11[5] = v5;
  *(v2 + v6) = v7;
  return swift_endAccess();
}

void MCUINamespace<A>.installNowPlayingViewController<A>(_:)(char *a1)
{
  sub_1C5931F9C(a1);
}

{
  sub_1C5B9D22C(a1);
}

void sub_1C5B9D22C(char *a1)
{
  v2 = v1;
  v4 = [v1 viewControllerForColumn_];
  if (!v4)
  {
    return;
  }

  v17 = v4;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v6 = Strong, sub_1C592535C(0, &qword_1EDA45E38, 0x1E69DD258), v7 = v1, v8 = sub_1C5BCB744(), v6, v7, (v8 & 1) == 0))
  {
    v10 = v2;
    swift_unknownObjectWeakAssign();
    sub_1C5932278(1);

    v11 = [v17 view];
    if (v11)
    {
      v12 = v11;
      v13 = [a1 view];
      if (v13)
      {
        v14 = v13;
        [v12 addSubview_];

        v15 = [a1 view];
        if (v15)
        {
          v16 = v15;
          sub_1C592E71C();

          v9 = v16;
          goto LABEL_9;
        }

LABEL_15:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_15;
  }

  v9 = v17;
LABEL_9:
}

id sub_1C5B9D414()
{
  v1 = v0;
  v2 = qword_1EDA47F30;
  v3 = *(v0 + qword_1EDA47F30);
  if (v3)
  {
    v4 = *(v0 + qword_1EDA47F30);
  }

  else
  {
    v5 = *MEMORY[0x1E69E7D40] & *v0;
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v7 = swift_allocObject();
    *(v7 + 2) = *(v5 + 80);
    *(v7 + 3) = *(v5 + 88);
    *(v7 + 4) = v6;
    v8 = type metadata accessor for NowPlayingVideoPlayerDelegate();
    v9 = objc_allocWithZone(v8);
    v10 = OBJC_IVAR____TtC11MediaCoreUI29NowPlayingVideoPlayerDelegate_isVideoFullscreenSubject;
    v17 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A410, &qword_1C5BF3A80);
    swift_allocObject();

    *&v9[v10] = sub_1C5BC7F84();
    v11 = &v9[OBJC_IVAR____TtC11MediaCoreUI29NowPlayingVideoPlayerDelegate_becomeFirstResponder];
    *v11 = sub_1C5BA9484;
    v11[1] = v7;
    v16.receiver = v9;
    v16.super_class = v8;
    v12 = objc_msgSendSuper2(&v16, sel_init);

    v13 = *(v1 + v2);
    *(v1 + v2) = v12;
    v4 = v12;

    v3 = 0;
  }

  v14 = v3;
  return v4;
}

void sub_1C5B9D5A8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
  }
}

void (*sub_1C5B9D644(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = qword_1EDA47F20;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1C5AD52A8;
}

double sub_1C5B9D6E4@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + qword_1EDA47FB8);
  if (!v3 || (sub_1C592535C(0, &qword_1EDA45E38, 0x1E69DD258), v4 = v3, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A130, &unk_1C5BF3630), (swift_dynamicCast() & 1) == 0))
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

void sub_1C5B9D784(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  if (v2 <= 0xFD)
  {
    if ((v2 & 0x80) != 0)
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
        return;
      }

      v4 = Strong;
      sub_1C5B9FEB4(v2 & 1);
    }

    else
    {
      swift_beginAccess();
      v3 = swift_unknownObjectWeakLoadStrong();
      if (!v3)
      {
        return;
      }

      v4 = v3;
      sub_1C5B9E71C(v2 & 1);
    }
  }
}

void sub_1C5B9D80C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *a2;
  v6 = a2[1];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = sub_1C5B9D5F4();
    v11 = v10;

    if (v9)
    {
      ObjectType = swift_getObjectType();
      v14[0] = v3;
      v14[1] = v4;
      v13[0] = v5;
      v13[1] = v6;
      (*(v11 + 24))(v14, v13, ObjectType, v11);
      swift_unknownObjectRelease();
    }
  }
}

void sub_1C5B9D8CC(void *a1, void *a2)
{
  v4 = *((*(*((*MEMORY[0x1E69E7D40] & *a1) + 0x58) + 224))(*((*MEMORY[0x1E69E7D40] & *a1) + 0x50)) + 32);

  v5 = *(v4 + 16);

  if (v5 <= 2 && v5 > 1)
  {
  }

  else
  {
    v6 = sub_1C5BCBDE4();

    if ((v6 & 1) == 0)
    {
      return;
    }
  }

  v7 = [a1 traitCollection];
  v8 = [v7 userInterfaceStyle];

  if (v8 != [a2 userInterfaceStyle])
  {
    sub_1C5932278(1);
  }
}

uint64_t sub_1C5B9DAE8(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 112) = a3;
  *(v9 + 120) = a4;
  *(v9 + 96) = a1;
  *(v9 + 104) = a2;
  *(v9 + 80) = a8;
  *(v9 + 88) = a9;
  v10 = sub_1C5BC7CE4();
  *(v9 + 128) = v10;
  *(v9 + 136) = *(v10 - 8);
  *(v9 + 144) = swift_task_alloc();
  *(v9 + 152) = _s18SingleFireSignpostVMa(0);
  *(v9 + 160) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C5B9DBE0, 0, 0);
}

uint64_t sub_1C5B9DBE0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 168) = Strong;
  if (Strong)
  {
    if (qword_1EDA469F0 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 152);
    v2 = *(v0 + 160);
    v5 = *(v0 + 136);
    v4 = *(v0 + 144);
    v6 = *(v0 + 128);
    v7 = __swift_project_value_buffer(v6, qword_1EDA46A00);
    v8 = *(v5 + 16);
    v8(v4, v7, v6);
    *(v2 + *(v3 + 28)) = 0;
    v8(v2, v4, v6);
    v9 = v2 + *(v3 + 20);
    *v9 = "Take Background Snapshot";
    *(v9 + 8) = 24;
    *(v9 + 16) = 2;
    sub_1C5BC7CC4();
    sub_1C5BC7C64();
    (*(v5 + 8))(v4, v6);
    *(v0 + 48) = 0;
    *(v0 + 32) = 0u;
    *(v0 + 16) = 0u;
    sub_1C5B85914(v0 + 16);
    sub_1C5924EF4(v0 + 16, &qword_1EC195468, &qword_1C5BDF9A8);
    v10 = swift_task_alloc();
    *(v0 + 176) = v10;
    *v10 = v0;
    v10[1] = sub_1C5B9DE2C;
    v11 = *(v0 + 112);
    v12 = *(v0 + 120);
    v13 = *(v0 + 96);
    v14 = *(v0 + 104);
    v15 = *(v0 + 88);

    return sub_1C5ABF0E0(v15, v13, v14, v11, v12);
  }

  else
  {

    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_1C5B9DE2C(uint64_t a1)
{
  *(*v1 + 184) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1C5B9DF2C, 0, 0);
}

uint64_t sub_1C5B9DF2C()
{
  sub_1C5B860F0();
  sub_1C5BCB1E4();
  *(v0 + 192) = sub_1C5BCB1D4();
  v2 = sub_1C5BCB194();

  return MEMORY[0x1EEE6DFA0](sub_1C5B9DFC8, v2, v1);
}

uint64_t sub_1C5B9DFC8()
{
  v1 = *(v0 + 184);

  sub_1C5B9E0D4(v1, v2);

  return MEMORY[0x1EEE6DFA0](sub_1C5B9E03C, 0, 0);
}

uint64_t sub_1C5B9E03C()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 160);

  sub_1C5BA9614(v2, _s18SingleFireSignpostVMa);

  v3 = *(v0 + 8);

  return v3();
}

double sub_1C5B9E0D4(void *a1, __n128 a2)
{
  v4 = *MEMORY[0x1E69E7D40] & *v2;
  if (sub_1C5BCB2D4())
  {

    return sub_1C593871C(0);
  }

  else
  {
    (*(*(v4 + 88) + 224))(*(v4 + 80));

    swift_getKeyPath(aH_13);
    swift_getKeyPath(aH_14);
    v6 = a1;
    sub_1C5BC8044();
    return sub_1C593871C(0);
  }
}

double sub_1C5B9E228()
{
  v0 = sub_1C5BA1AB0();
  if (v0)
  {

    v1 = 6.0;
    v2 = 56.0;
  }

  else
  {
    v1 = 24.0;
    v2 = 64.0;
  }

  return v1 + v2;
}

id sub_1C5B9E264()
{
  v1 = sub_1C5934434();
  if (v1)
  {
    v2 = v1;
    v3 = [v1 _contentLayoutGuide];

    if (v3)
    {
      return v3;
    }
  }

  result = [v0 view];
  if (result)
  {
    v5 = result;
    v6 = [result safeAreaLayoutGuide];

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1C5B9E300()
{
  v1 = qword_1EDA481F0;
  v2 = *(v0 + qword_1EDA481F0);
  if (v2)
  {
    v3 = *(v0 + qword_1EDA481F0);
LABEL_6:
    v9 = v2;
    return v3;
  }

  result = *(v0 + qword_1EDA47FA0);
  if (result)
  {
    result = [result view];
    if (result)
    {
      v5 = result;
      v6 = [result widthAnchor];

      v7 = [v6 constraintEqualToConstant_];
      v8 = *(v0 + v1);
      *(v0 + v1) = v7;
      v3 = v7;

      v2 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1C5B9E3D0(void *a1, void *a2)
{
  if (a1)
  {
    [a1 setActive_];
  }

  result = *(v2 + *a2);
  if (result)
  {

    return [result setActive_];
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1C5B9E434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x50);
  v6 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x58);
  v12.receiver = v4;
  v12.super_class = type metadata accessor for NowPlayingViewController(0, v5, v6, a4);
  objc_msgSendSuper2(&v12, sel_viewDidLayoutSubviews);
  v7 = *(v4 + qword_1EDA47FE0);
  if (v7)
  {
    v8 = v7;
    [v8 frame];
    v14.origin.x = 0.0;
    v14.origin.y = 0.0;
    v14.size.width = 0.0;
    v14.size.height = 0.0;
    if (CGRectEqualToRect(v13, v14))
    {
      v9 = *((*(v6 + 224))(v5, v6) + 32);

      v10 = *(v9 + 16);

      if (v10 > 4)
      {

LABEL_6:
        sub_1C5BA1830(0);
        goto LABEL_7;
      }

      v11 = sub_1C5BCBDE4();

      if (v11)
      {
        goto LABEL_6;
      }
    }

LABEL_7:
  }
}

void sub_1C5B9E660(void *a1)
{
  v4 = a1;
  sub_1C5B9E434(v4, v1, v2, v3);
}

id sub_1C5B9E6A8()
{
  v1 = OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC23CollapsedViewController____lazy_storage___miniPlayerContainer;
  v2 = *(v0 + OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC23CollapsedViewController____lazy_storage___miniPlayerContainer);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC23CollapsedViewController____lazy_storage___miniPlayerContainer);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for MiniPlayerContainerView()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_1C5B9E71C(char a1)
{
  v3 = *&v1[qword_1EDA47FA8];
  if (!v3)
  {
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v4 = *MEMORY[0x1E69E7D40] & *v1;
  if ([v3 isBeingPresented])
  {
    return;
  }

  v5 = *&v1[qword_1EDA47FA8];
  if (!v5)
  {
    goto LABEL_48;
  }

  if ([v5 isBeingDismissed])
  {
    return;
  }

  v57 = v1;
  v8 = v4 + 80;
  v7 = *(v4 + 80);
  v6 = *(v8 + 8);
  v56 = *(v6 + 224);
  v9 = *(v56(v7, v6) + 32);

  v10 = *(v9 + 16);

  if (!v10)
  {

    return;
  }

  v11 = sub_1C5BCBDE4();

  if (v11)
  {
    return;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_49;
  }

  v13 = Strong;
  v55 = [Strong presentedViewController];

  if (!v55)
  {
    if (qword_1EDA469E0 != -1)
    {
      swift_once();
    }

    v14 = sub_1C5BC7D64();
    __swift_project_value_buffer(v14, qword_1EDA5DA78);
    v15 = sub_1C5BC7D44();
    v16 = sub_1C5BCB4F4();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1C5922000, v15, v16, "NowPlayingViewController expanding", v17, 2u);
      MEMORY[0x1C69510F0](v17, -1, -1);
    }

    if (sub_1C5B9D5F4())
    {
      v19 = v18;
      ObjectType = swift_getObjectType();
      LOBYTE(aBlock[0]) = 0;
      v59 = 1;
      (*(v19 + 8))(aBlock, &v59, a1 & 1, ObjectType, v19);
      swift_unknownObjectRelease();
    }

    v21 = v57;
    v22 = *&v57[qword_1EDA47FE0];
    if (v22)
    {
      v23 = v22;
      sub_1C5B89A58();
      v21 = v57;
    }

    [*&v21[qword_1EDA47F78] dismissMenu];
    v24 = *&v21[qword_1EDA47FA8];
    if (v24)
    {
      [v24 setModalPresentationStyle_];
      v25 = *&v21[qword_1EDA47FA8];
      if (v25)
      {
        [v25 setTransitioningDelegate_];
        v26 = *&v21[qword_1EDA47FA8];
        if (v26)
        {
          v27 = [v26 sheetPresentationController];
          if (!v27)
          {
            return;
          }

          v28 = v27;
          [v27 setDelegate_];
          [v28 _setWantsFullScreen_];
          [v28 _setAllowsInteractiveDismissWhenFullScreen_];
          [v28 _setShouldDismissWhenTappedOutside_];
          v29 = *&v21[qword_1EDA47FA0];
          if (v29)
          {
            type metadata accessor for CollapsedTabAccessoryViewController();
            v30 = swift_dynamicCastClass();
            if (v30)
            {
              v31 = *(v30 + OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC35CollapsedTabAccessoryViewController_miniPlayerContainer);
              v32 = v29;
              [v31 frame];
              [v28 _setCornerRadiusForPresentationAndDismissal_];
            }
          }

          v33 = *&v21[qword_1EDA47FE0];
          if (v33)
          {
            v34 = v33;
            v35 = [v57 view];
            if (!v35)
            {
LABEL_55:
              __break(1u);
              return;
            }

            v36 = v35;
            v37 = [v35 window];

            if (v37)
            {
              [v37 bounds];
              v39 = v38;
              v41 = v40;

              v42 = v39;
              v43 = v41;
            }

            else
            {
              v42 = 0;
              v43 = 0;
            }

            sub_1C5B89E7C(v42, v43, v37 == 0);
          }

          v44 = *(v56(v7, v6) + 32);

          v45 = *(v44 + 16);
          if (v45 > 2u || *(v44 + 16))
          {
            v46 = sub_1C5BCBDE4();

            if ((v46 & 1) == 0)
            {
              type metadata accessor for NowPlayingViewModel.Lifecycle();
              sub_1C5931880(&qword_1EDA497D0, type metadata accessor for NowPlayingViewModel.Lifecycle, &unk_1C5BF23D8);
              sub_1C5BC7F24();
              sub_1C5BC7FA4();
            }
          }

          else
          {
          }

          *(v44 + 16) = 0;
          sub_1C5B8C3D0(v45);

          v47 = swift_unknownObjectWeakLoadStrong();
          if (v47)
          {
            v48 = *&v57[qword_1EDA47FA8];
            if (v48)
            {
              v49 = v47;
              v50 = swift_allocObject();
              *(v50 + 16) = v57;
              v51 = a1 & 1;
              *(v50 + 24) = v51;
              aBlock[4] = sub_1C5BA9428;
              aBlock[5] = v50;
              aBlock[0] = MEMORY[0x1E69E9820];
              aBlock[1] = 1107296256;
              aBlock[2] = sub_1C596D09C;
              aBlock[3] = &block_descriptor_183;
              v52 = _Block_copy(aBlock);
              v53 = v48;
              v54 = v57;

              [v49 presentViewController:v53 animated:v51 completion:v52];
              _Block_release(v52);

              return;
            }

            goto LABEL_54;
          }

LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
          goto LABEL_55;
        }

LABEL_52:
        __break(1u);
        goto LABEL_53;
      }

LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

LABEL_50:
    __break(1u);
    goto LABEL_51;
  }
}

void sub_1C5B9EF94(void *a1, char a2)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x58);
  v4 = *(v3 + 224);
  v5 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x50);
  v6 = *(v4(v5, v3) + 32);

  v7 = *(v6 + 16);
  if (v7 == 2)
  {
  }

  else
  {
    v8 = sub_1C5BCBDE4();

    if ((v8 & 1) == 0)
    {
      type metadata accessor for NowPlayingViewModel.Lifecycle();
      sub_1C5931880(&qword_1EDA497D0, type metadata accessor for NowPlayingViewModel.Lifecycle, &unk_1C5BF23D8);
      sub_1C5BC7F24();
      sub_1C5BC7FA4();
    }
  }

  *(v6 + 16) = 2;
  sub_1C5B8C3D0(v7);

  [*(a1 + qword_1EDA47F88) removeFromSuperview];
  [*(a1 + qword_1EDA48200) removeFromSuperview];
  v9 = *(a1 + qword_1EDA48200);
  *(a1 + qword_1EDA48200) = 0;

  v10 = *(a1 + qword_1EDA47FE0);
  if (!v10)
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v10;
  sub_1C5B8A34C();

  if (a2)
  {
    goto LABEL_9;
  }

  v4(v5, v3);

  v20 = 1;
  sub_1C59A8494(&v20);

  v12 = *(a1 + qword_1EDA47FE0);
  if (!v12)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v13 = v12;
  sub_1C5B8A22C();

LABEL_9:
  sub_1C5BA0FDC();
  if (sub_1C5B9D5F4())
  {
    v15 = v14;
    ObjectType = swift_getObjectType();
    v19 = 0;
    v18 = 1;
    (*(v15 + 16))(&v19, &v18, a2 & 1, ObjectType, v15);
    swift_unknownObjectRelease();
  }
}

void sub_1C5B9F304(void *a1)
{
  v2 = v1;
  v4 = *MEMORY[0x1E69E7D40] & *v1;
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = v5;
    v20 = a1;
    v7 = [v6 presentedViewController];
    v8 = [v7 transitionCoordinator];

    if (v8)
    {
      v9 = *&v2[qword_1EDA481E8];
      v10 = *((*(*(v4 + 88) + 224))(*(v4 + 80)) + 32);

      v11 = *(v10 + 16);
      if (v11 == 3)
      {
      }

      else
      {
        v12 = sub_1C5BCBDE4();

        if ((v12 & 1) == 0)
        {
          type metadata accessor for NowPlayingViewModel.Lifecycle();
          sub_1C5931880(&qword_1EDA497D0, type metadata accessor for NowPlayingViewModel.Lifecycle, &unk_1C5BF23D8);
          sub_1C5BC7F24();
          sub_1C5BC7FA4();
        }
      }

      *(v10 + 16) = 3;
      sub_1C5B8C3D0(v11);

      v13 = swift_allocObject();
      *(v13 + 16) = v2;
      v25 = sub_1C5BA8400;
      v26 = v13;
      aBlock = MEMORY[0x1E69E9820];
      v22 = 1107296256;
      v23 = sub_1C5AC79C8;
      v24 = &block_descriptor_27;
      v14 = _Block_copy(&aBlock);
      v15 = v2;

      [v8 notifyWhenInteractionChangesUsingBlock_];
      _Block_release(v14);
      v25 = CGSizeMake;
      v26 = 0;
      aBlock = MEMORY[0x1E69E9820];
      v22 = 1107296256;
      v23 = sub_1C5AC79C8;
      v24 = &block_descriptor_6;
      v16 = _Block_copy(&aBlock);
      v17 = swift_allocObject();
      *(v17 + 16) = v9;
      *(v17 + 24) = v15;
      v25 = sub_1C5BA8408;
      v26 = v17;
      aBlock = MEMORY[0x1E69E9820];
      v22 = 1107296256;
      v23 = sub_1C5AC79C8;
      v24 = &block_descriptor_12_0;
      v18 = _Block_copy(&aBlock);
      v19 = v15;
      swift_unknownObjectRetain();

      [v8 animateAlongsideTransition:v16 completion:v18];
      _Block_release(v18);
      _Block_release(v16);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_1C5B9F784(void *a1, void *a2)
{
  v4 = *MEMORY[0x1E69E7D40] & *a2;
  if ([a1 isCancelled] && (objc_msgSend(a1, sel_isInteractive) & 1) == 0)
  {
    v5 = *((*(*(v4 + 88) + 224))(*(v4 + 80)) + 32);

    v6 = *(v5 + 16);
    if (v6 == 1)
    {
    }

    else
    {
      v7 = sub_1C5BCBDE4();

      if ((v7 & 1) == 0)
      {
        type metadata accessor for NowPlayingViewModel.Lifecycle();
        sub_1C5931880(&qword_1EDA497D0, type metadata accessor for NowPlayingViewModel.Lifecycle, &unk_1C5BF23D8);
        sub_1C5BC7F24();
        sub_1C5BC7FA4();
      }
    }

    *(v5 + 16) = 1;
    sub_1C5B8C3D0(v6);

    v8 = objc_opt_self();
    v9 = swift_allocObject();
    *(v9 + 16) = a2;
    v10 = swift_allocObject();
    *(v10 + 16) = sub_1C5BA94CC;
    *(v10 + 24) = v9;
    v23 = sub_1C5AF76A8;
    v24 = v10;
    v19 = MEMORY[0x1E69E9820];
    v20 = 1107296256;
    v21 = sub_1C59D32C0;
    v22 = &block_descriptor_251;
    v11 = _Block_copy(&v19);
    v12 = a2;

    [v8 performWithoutAnimation_];
    _Block_release(v11);
    LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

    if (v8)
    {
      __break(1u);
    }

    else
    {
      v13 = *(v12 + qword_1EDA47F50);
      if (v13)
      {
        [v13 stopAnimation_];
      }

      v14 = [objc_allocWithZone(MEMORY[0x1E69DD278]) init];
      v15 = swift_allocObject();
      *(v15 + 16) = v12;
      v23 = sub_1C5BA94F0;
      v24 = v15;
      v19 = MEMORY[0x1E69E9820];
      v20 = 1107296256;
      v21 = sub_1C596D09C;
      v22 = &block_descriptor_257;
      v16 = _Block_copy(&v19);
      v17 = v12;

      [v14 addAnimations_];
      _Block_release(v16);
      [v14 startAnimation];
      v18 = *(v17 + qword_1EDA47F50);
      *(v17 + qword_1EDA47F50) = v14;
    }
  }
}

void sub_1C5B9FBF8(void *a1, uint64_t a2, void *a3)
{
  v4 = *MEMORY[0x1E69E7D40] & *a3;
  if ([a1 isCancelled])
  {
    v5 = *((*(*(v4 + 88) + 224))(*(v4 + 80)) + 32);

    v6 = *(v5 + 16);
    if (v6 == 2)
    {
    }

    else
    {
      v7 = sub_1C5BCBDE4();

      if ((v7 & 1) == 0)
      {
        type metadata accessor for NowPlayingViewModel.Lifecycle();
        sub_1C5931880(&qword_1EDA497D0, type metadata accessor for NowPlayingViewModel.Lifecycle, &unk_1C5BF23D8);
        sub_1C5BC7F24();
        sub_1C5BC7FA4();
      }
    }

    *(v5 + 16) = 2;
    sub_1C5B8C3D0(v6);

    sub_1C5BA0FDC();
  }

  v8 = *(a3 + qword_1EDA47F50);
  *(a3 + qword_1EDA47F50) = 0;
}

void sub_1C5B9FE34(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1C5B9F304(v4);
}

double sub_1C5B9FE9C(uint64_t a1)
{
  *(v1 + qword_1EDA47F68) = a1;

  return result;
}

void sub_1C5B9FEB4(int a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC199F20, &qword_1C5BD88C0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v37 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A3F8, &qword_1C5BF3A68);
  v40 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v37 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A400, &qword_1C5BF3A70);
  v41 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v37 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A408, &qword_1C5BF3A78);
  v42 = *(v12 - 8);
  *&v13 = MEMORY[0x1EEE9AC00](v12).n128_u64[0];
  v15 = v37 - v14;
  v16 = *(v1 + qword_1EDA47FA8);
  if (!v16)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if ([v16 isBeingPresented])
  {
    return;
  }

  v17 = *(v1 + qword_1EDA47FA8);
  if (!v17)
  {
    goto LABEL_19;
  }

  if ([v17 isBeingDismissed])
  {
    return;
  }

  v38 = a1;
  v39 = v1;
  v18 = sub_1C5B9D414();
  sub_1C5BC7F64();

  if ((v43 & 1) == 0)
  {
    if (qword_1EDA469E0 != -1)
    {
      swift_once();
    }

    v29 = sub_1C5BC7D64();
    __swift_project_value_buffer(v29, qword_1EDA5DA78);
    v30 = sub_1C5BC7D44();
    v31 = sub_1C5BCB4F4();
    v32 = os_log_type_enabled(v30, v31);
    v33 = v38;
    if (v32)
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_1C5922000, v30, v31, "NowPlayingViewController triggering collapse", v34, 2u);
      MEMORY[0x1C69510F0](v34, -1, -1);
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v36 = Strong;
      [Strong dismissViewControllerAnimated:v33 & 1 completion:0];

      return;
    }

LABEL_20:
    __break(1u);
    return;
  }

  if (qword_1EDA469E0 != -1)
  {
    swift_once();
  }

  v19 = sub_1C5BC7D64();
  __swift_project_value_buffer(v19, qword_1EDA5DA78);
  v20 = sub_1C5BC7D44();
  v21 = sub_1C5BCB4F4();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_1C5922000, v20, v21, "NowPlayingViewController received request to collapse while video is fullscreen. Holding collapse until video exits fullscreen.", v22, 2u);
    MEMORY[0x1C69510F0](v22, -1, -1);
  }

  v43 = *(*(v39 + qword_1EDA47F30) + OBJC_IVAR____TtC11MediaCoreUI29NowPlayingVideoPlayerDelegate_isVideoFullscreenSubject);

  v37[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A410, &qword_1C5BF3A80);
  sub_1C5924F54(&qword_1EC19A418, &qword_1EC19A410, &qword_1C5BF3A80, MEMORY[0x1E695BFB0]);
  sub_1C5BC80C4();

  sub_1C5924F54(&qword_1EC19A420, &qword_1EC19A3F8, &qword_1C5BF3A68, MEMORY[0x1E695BDE0]);
  sub_1C5BC80A4();
  (*(v40 + 8))(v8, v6);
  sub_1C592535C(0, &qword_1EDA4E620, 0x1E69E9610);
  v23 = sub_1C5BCB5A4();
  v43 = v23;
  v24 = sub_1C5BCB594();
  (*(*(v24 - 8) + 56))(v5, 1, 1, v24);
  sub_1C5924F54(&unk_1EC19A428, &qword_1EC19A400, &qword_1C5BF3A70, MEMORY[0x1E695BDB8]);
  sub_1C5931640();
  sub_1C5BC80D4();
  sub_1C5924EF4(v5, &unk_1EC199F20, &qword_1C5BD88C0);

  (*(v41 + 8))(v11, v9);
  v25 = v39;
  v26 = swift_unknownObjectWeakLoadStrong();
  v27 = swift_allocObject();
  *(v27 + 16) = v26;
  *(v27 + 24) = v38 & 1;
  sub_1C5924F54(&qword_1EC19A438, &qword_1EC19A408, &qword_1C5BF3A78, MEMORY[0x1E695BE98]);
  v28 = sub_1C5BC8114();

  (*(v42 + 8))(v15, v12);
  *(v25 + qword_1EDA47F68) = v28;
}

void sub_1C5BA05BC(uint64_t a1, void *a2, char a3)
{
  if (qword_1EDA469E0 != -1)
  {
    swift_once();
  }

  v5 = sub_1C5BC7D64();
  __swift_project_value_buffer(v5, qword_1EDA5DA78);
  v6 = sub_1C5BC7D44();
  v7 = sub_1C5BCB4F4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1C5922000, v6, v7, "NowPlayingViewController continuing collapse after video exited fullscreen.", v8, 2u);
    MEMORY[0x1C69510F0](v8, -1, -1);
  }

  if (a2)
  {

    [a2 dismissViewControllerAnimated:a3 & 1 completion:0];
  }
}

void sub_1C5BA06E0(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_1EDA469E0 != -1)
  {
    swift_once();
  }

  v7 = sub_1C5BC7D64();
  __swift_project_value_buffer(v7, qword_1EDA5DA78);
  v8 = sub_1C5BC7D44();
  v9 = sub_1C5BCB4F4();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1C5922000, v8, v9, "NowPlayingViewController detected collapse began", v10, 2u);
    MEMORY[0x1C69510F0](v10, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    if ((a1 & 1) == 0 && sub_1C5B9D5F4())
    {
      v14 = v13;
      ObjectType = swift_getObjectType();
      v20 = 1;
      v19 = 0;
      (*(v14 + 8))(&v20, &v19, 0, ObjectType, v14);
      swift_unknownObjectRelease();
    }

    v16 = *((*(a4 + 224))(a3, a4) + 32);

    v17 = *(v16 + 16);
    if (v17 == 4)
    {
    }

    else
    {
      v18 = sub_1C5BCBDE4();

      if ((v18 & 1) == 0)
      {
        type metadata accessor for NowPlayingViewModel.Lifecycle();
        sub_1C5931880(&qword_1EDA497D0, type metadata accessor for NowPlayingViewModel.Lifecycle, &unk_1C5BF23D8);
        sub_1C5BC7F24();
        sub_1C5BC7FA4();
      }
    }

    *(v16 + 16) = 4;
    sub_1C5B8C3D0(v17);

    sub_1C5BA0FDC();
  }
}

void sub_1C5BA0A14(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_1EDA469E0 != -1)
  {
    swift_once();
  }

  v7 = sub_1C5BC7D64();
  __swift_project_value_buffer(v7, qword_1EDA5DA78);
  v8 = sub_1C5BC7D44();
  v9 = sub_1C5BCB4F4();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1C5922000, v8, v9, "NowPlayingViewController detected collapse ended", v10, 2u);
    MEMORY[0x1C69510F0](v10, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = *((*(a4 + 224))(a3, a4) + 32);

    v14 = *(v13 + 16);

    if (v14 == 4)
    {
    }

    else
    {
      v15 = sub_1C5BCBDE4();

      if ((v15 & 1) == 0)
      {
LABEL_10:

        return;
      }
    }

    sub_1C5BA0C80(a1 & 1);
    goto LABEL_10;
  }
}

void sub_1C5BA0C80(char a1)
{
  v2 = *(v1 + qword_1EDA47FE0);
  if (!v2)
  {
    __break(1u);
    goto LABEL_14;
  }

  v3 = v1;
  v5 = *MEMORY[0x1E69E7D40] & *v1;
  v6 = v2;
  sub_1C5B8A238();

  v7 = *(v3 + qword_1EDA47FE0);
  if (!v7)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = v7;
  sub_1C5B8A330();

  v9 = *(v3 + qword_1EDA47FA0);
  if (!v9)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v10 = v9;
  sub_1C5937994(v10);

  sub_1C5932278(1);
  v13 = v5 + 80;
  v11 = *(v5 + 80);
  v12 = *(v13 + 8);
  v14 = *(v12 + 224);
  v14(v11, v12);

  v23 = 0;
  sub_1C59A8494(&v23);

  if (sub_1C5B9D5F4())
  {
    v16 = v15;
    ObjectType = swift_getObjectType();
    v22 = 1;
    v21 = 0;
    (*(v16 + 16))(&v22, &v21, a1 & 1, ObjectType, v16);
    swift_unknownObjectRelease();
  }

  v18 = *(v14(v11, v12) + 32);

  v19 = *(v18 + 16);
  if (v19 > 4)
  {
  }

  else
  {
    v20 = sub_1C5BCBDE4();

    if ((v20 & 1) == 0)
    {
      type metadata accessor for NowPlayingViewModel.Lifecycle();
      sub_1C5931880(&qword_1EDA497D0, type metadata accessor for NowPlayingViewModel.Lifecycle, &unk_1C5BF23D8);
      sub_1C5BC7F24();
      sub_1C5BC7FA4();
    }
  }

  *(v18 + 16) = 5;
  sub_1C5B8C3D0(v19);
}

void sub_1C5BA0FDC()
{
  v1 = v0;
  v2 = *v0;
  v3 = *MEMORY[0x1E69E7D40];
  v4 = sub_1C5BC7DC4();
  v5 = MEMORY[0x1EEE9AC00](v4);
  v6 = *((*(*((v3 & v2) + 0x58) + 224))(*((v3 & v2) + 0x50), v5) + 32);

  v7 = *(v6 + 16);

  if (v7 <= 2 && v7 > 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1C5BCBDE4();
  }

  v9 = *(v1 + qword_1EDA47FB8);
  if (!v9)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v10 = [v9 traitCollection];
  v11 = [v10 accessibilityContrast];

  if (qword_1EDA469E0 != -1)
  {
    swift_once();
  }

  v12 = v8 & (v11 != 1);
  v13 = sub_1C5BC7D64();
  __swift_project_value_buffer(v13, qword_1EDA5DA78);
  v14 = sub_1C5BC7D44();
  v15 = sub_1C5BCB4F4();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = v11 == 1;
    v17 = swift_slowAlloc();
    *v17 = 67109632;
    *(v17 + 4) = v12;
    *(v17 + 8) = 1024;
    *(v17 + 10) = v8 & 1;
    *(v17 + 14) = 1024;
    *(v17 + 16) = v16;
    _os_log_impl(&dword_1C5922000, v14, v15, "NowPlayingViewController setting system glass to dark=%{BOOL}d because expanded=%{BOOL}d and highContrast=%{BOOL}d", v17, 0x14u);
    MEMORY[0x1C69510F0](v17, -1, -1);
  }

  v18 = *(v1 + qword_1EDA47FB8);
  if (v12)
  {
    if (v18)
    {
      v19 = v18;
      sub_1C5BCB534();
      sub_1C5BC7D94();
LABEL_17:
      sub_1C5BCB544();

      return;
    }

    goto LABEL_19;
  }

  if (v18)
  {
    sub_1C5BC7E04();
    v19 = v18;
    sub_1C5BCB534();
    sub_1C5BC7DB4();
    goto LABEL_17;
  }

LABEL_20:
  __break(1u);
}

void sub_1C5BA1388()
{
  v1 = v0;
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x58);
  v3 = *(v2 + 224);
  v4 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  v5 = *(v3(v4, v2) + 40);

  swift_getKeyPath(byte_1C5BF3A38);
  v18 = v5;
  sub_1C5931880(&qword_1EDA4AF70, _s12PresentationCMa, &unk_1C5BD2B30);
  sub_1C5BC7B74();

  v6 = *(v5 + 17);

  if ((v6 & 1) == 0)
  {
    v7 = sub_1C5BA1AB0();
    if (v7)
    {

      v8 = [objc_opt_self() sharedInstance];
      v9 = [v8 defaultSheetMetrics];

      v10 = [v9 transitionSpringParametersHighSpeed_];
      [v10 _response];
      v12 = v11 * 0.8;
      v13 = [v10 _dampingRatio];
      v15 = MEMORY[0x1C694ED40](v13, v12, v14, 0.0);

      MEMORY[0x1EEE9AC00](v16);
      v17[2] = v1;
      sub_1C596D96C(v15, 0, sub_1C5BA93FC, v17);
    }

    else
    {
      v3(v4, v2);

      LOBYTE(v18) = 1;
      sub_1C59A8494(&v18);
    }
  }
}

void sub_1C5BA162C(char a1)
{
  v2 = *(v1 + qword_1EDA47FE0);
  if (v2)
  {
    v9 = v2;
    sub_1C5BA19C4(aBlock);
    if (BYTE2(v11) == 3 || BYTE2(v11))
    {
      if (a1)
      {
        v4 = objc_opt_self();
        v5 = swift_allocObject();
        *(v5 + 16) = v9;
        v6 = swift_allocObject();
        *(v6 + 16) = sub_1C5BA93D4;
        *(v6 + 24) = v5;
        v13 = sub_1C5AF76A8;
        v14 = v6;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        v11 = sub_1C59D32C0;
        v12 = &block_descriptor_170;
        v7 = _Block_copy(aBlock);
        v8 = v9;

        [v4 performWithoutAnimation_];

        _Block_release(v7);
        LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

        if (v4)
        {
          __break(1u);
        }

        return;
      }
    }

    else
    {
      sub_1C5B8A330();
      sub_1C5BA1830(a1 & 1);
      if (a1)
      {
        sub_1C5B8A22C();
      }

      else
      {
        sub_1C5B8A238();
      }
    }
  }
}

void sub_1C5BA1830(char a1)
{
  v2 = *(v1 + qword_1EDA47FE0);
  if (!v2)
  {
    return;
  }

  v22 = *(v1 + qword_1EDA47FE0);
  if ((a1 & 1) == 0)
  {
    v16 = *(v1 + qword_1EDA47FA0);
    if (v16)
    {
      v17 = *((*MEMORY[0x1E69E7D40] & *v16) + 0xC0);
      v18 = v2;
      v7 = v16;
      v9 = v17();
      v11 = v19;
      v13 = v20;
      v15 = v21;
      goto LABEL_9;
    }

    goto LABEL_13;
  }

  v3 = *(v1 + qword_1EDA47FA8);
  if (!v3)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v4 = v2;
  v5 = v3;
  v6 = [v5 view];
  if (!v6)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v7 = v6;
  [v6 bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

LABEL_9:
  [v22 setFrame_];
}

void sub_1C5BA19C4(uint64_t a1@<X8>)
{
  (*(*((*MEMORY[0x1E69E7D40] & *v1) + 0x58) + 224))(*((*MEMORY[0x1E69E7D40] & *v1) + 0x50));

  v3 = [v1 view];
  if (v3)
  {
    v4 = v3;
    sub_1C5937F60(v3, a1);
  }

  else
  {
    __break(1u);
  }
}

id sub_1C5BA1AB0()
{
  v1 = [v0 traitCollection];
  v2 = [v1 horizontalSizeClass];

  if (v2 != 1)
  {
    return 0;
  }

  result = sub_1C5934434();
  if (!result)
  {
    return result;
  }

  v4 = result;
  v5 = [result tabBar];

  v6 = [v5 superview];
  if (!v6)
  {
    return 0;
  }

  result = sub_1C5934434();
  if (result)
  {
    v7 = result;
    v8 = [result tabBar];

    return v8;
  }

  return result;
}

id sub_1C5BA1BB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for NowPlayingViewController.AnimationController(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), *((*MEMORY[0x1E69E7D40] & *v4) + 0x58), a4);
  v6 = v4;
  v7 = objc_allocWithZone(v5);
  v8 = sub_1C5BA8410(v6);

  return v8;
}

void sub_1C5BA1C4C(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v7 = a3;
  swift_unknownObjectRetain();
  v8 = a1;
  sub_1C5BA84A0(a5, v8);

  swift_unknownObjectRelease();
}

void sub_1C5BA1CC8()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (v2)
    {
      v3 = [v2 viewControllerForColumn_];

      v4 = [v3 view];
      if (v4)
      {
        return;
      }
    }

    else
    {
    }
  }

  v5 = swift_unknownObjectWeakLoadStrong();
  if (!v5)
  {
    __break(1u);
    goto LABEL_10;
  }

  v6 = v5;
  v7 = [v5 view];

  if (!v7)
  {
LABEL_10:
    __break(1u);
  }
}

void sub_1C5BA1DB8(uint64_t a1)
{
  if (*(a1 + qword_1EDA47FA0))
  {
    type metadata accessor for CollapsedTabAccessoryViewController();
    v1 = swift_dynamicCastClass();
    if (v1)
    {
      v2 = *(v1 + OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC35CollapsedTabAccessoryViewController_miniPlayerContainer);
      v2[OBJC_IVAR____TtCC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC35CollapsedTabAccessoryViewController19MiniPlayerContainer_hidesBackground] = 1;
      v3 = v2;
      sub_1C5BCB694();
    }
  }
}

id sub_1C5BA1E40(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a1;
  sub_1C5BA85F4(v8, v12, v13, v14);
  v16 = v15;

  return v16;
}

void sub_1C5BA1ECC(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C5BC7E54();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1C5BC7E74();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = *(Strong + qword_1EDA47FA0);
    v9 = Strong;
    v10 = v8;

    if (v8)
    {
      type metadata accessor for CollapsedTabAccessoryViewController();
      v11 = swift_dynamicCastClass();
      if (v11)
      {
        v12 = *(v11 + OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC35CollapsedTabAccessoryViewController_miniPlayerContainer);

        v12[OBJC_IVAR____TtCC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC35CollapsedTabAccessoryViewController19MiniPlayerContainer_hidesBackground] = 0;
        sub_1C5BC7E44();
        sub_1C5BC7E84();
        v13[3] = v3;
        v13[4] = MEMORY[0x1E69DC388];
        __swift_allocate_boxed_opaque_existential_0(v13);
        sub_1C5BC7E64();
        (*(v4 + 8))(v6, v3);
        sub_1C5BCB694();
      }

      else
      {
      }
    }
  }
}

id sub_1C5BA20B0(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1C5BA87EC(v5, v6, v7, v8);
  v10 = v9;

  return v10;
}

void sub_1C5BA210C(void *a1, void *a2)
{
  v3 = *(v2 + qword_1EDA47FA0);
  if (!v3)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  type metadata accessor for CollapsedTabAccessoryViewController();
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    v7 = v6;
    v29 = v3;
    v8 = [a2 view];
    if (v8)
    {
      v9 = v8;
      v10 = OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC35CollapsedTabAccessoryViewController_miniPlayerContainer;
      [*(v7 + OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC35CollapsedTabAccessoryViewController_miniPlayerContainer) frame];
      [v9 convertRect:*(v7 + v10) fromCoordinateSpace:?];
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v18 = v17;

      [a1 setSourceFrame_];

      return;
    }

    goto LABEL_12;
  }

  v19 = [v3 view];
  if (!v19)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v20 = v19;
  [v19 frame];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;

  [a1 setSourceFrame_];
}

void sub_1C5BA22AC(char a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D40];
  v5 = *MEMORY[0x1E69E7D40] & *v1;
  v6 = sub_1C5BA1AB0();
  if (!v6)
  {
    if (_UISolariumEnabled())
    {
      _s18MiniPlayerSnapshotVMa(255, *(v5 + 80), *(v5 + 88), v7);
      swift_getWitnessTable();
      sub_1C5BC89A4();
      v8 = *&v1[qword_1EDA47F98];

      v9 = swift_unknownObjectRetain();
      sub_1C5BA28A4(v9, v8, v71);
      v10 = sub_1C5BC8984();
      v11 = *&v1[qword_1EDA47FA0];
      if (v11)
      {
        v12 = v10;
        v13 = *(v11 + OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC21ContentViewController_contentView);
        *(v11 + OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC21ContentViewController_contentView) = v10;
        v14 = *((*v4 & *v11) + 0xA8);
        v15 = v10;
        v16 = v11;
        v14(v13);

        v17 = *&v2[qword_1EDA48200];
        *&v2[qword_1EDA48200] = v12;

        return;
      }

      __break(1u);
    }

    else
    {
      if (a1)
      {
        v18 = *&v1[qword_1EDA47FA0];
        if (!v18)
        {
LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

        v19 = [v18 view];
        if (!v19)
        {
LABEL_33:
          __break(1u);
          goto LABEL_34;
        }

        v20 = v19;
        [v19 frame];
        v22 = v21;

        v23 = *&v2[qword_1EDA47FA0];
        if (!v23)
        {
LABEL_35:
          __break(1u);
          goto LABEL_36;
        }

        v24 = [v23 view];
        if (!v24)
        {
LABEL_36:
          __break(1u);
          goto LABEL_37;
        }

        v25 = v24;
        [v24 frame];
        v27 = v26;

        v28 = *&v2[qword_1EDA47FA0];
        if (!v28)
        {
LABEL_37:
          __break(1u);
          goto LABEL_38;
        }

        v29 = [v28 view];
        if (!v29)
        {
LABEL_38:
          __break(1u);
          return;
        }

        v30 = v29;
        v31 = v27 + -8.0;
        [v29 frame];
        v33 = v32;
        v35 = v34;
        v37 = v36;
        v39 = v38;

        v73.origin.x = v33;
        v73.origin.y = v35;
        v73.size.width = v37;
        v73.size.height = v39;
        Width = CGRectGetWidth(v73);
        v41 = sub_1C5B9E228() + 8.0;
        sub_1C5BA1CC8();
        v43 = v42;
        v44 = [v42 resizableSnapshotViewFromRect:0 afterScreenUpdates:v22 withCapInsets:{v31, Width, v41, *MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];

        [v44 setFrame_];
        if (!v44)
        {
          if (qword_1EDA469E0 != -1)
          {
            swift_once();
          }

          v45 = sub_1C5BC7D64();
          __swift_project_value_buffer(v45, qword_1EDA5DA78);
          oslog = sub_1C5BC7D44();
          v46 = sub_1C5BCB4D4();
          if (os_log_type_enabled(oslog, v46))
          {
            v47 = swift_slowAlloc();
            *v47 = 0;
            _os_log_impl(&dword_1C5922000, oslog, v46, "Unexpected error: the snapshotview is nil.", v47, 2u);
            MEMORY[0x1C69510F0](v47, -1, -1);
          }

          v6 = oslog;
          goto LABEL_2;
        }
      }

      else
      {
        _s18MiniPlayerSnapshotVMa(255, *(v5 + 80), *(v5 + 88), v7);
        swift_getWitnessTable();
        sub_1C5BC89A4();
        v48 = *&v1[qword_1EDA47F98];

        v49 = swift_unknownObjectRetain();
        sub_1C5BA28A4(v49, v48, v71);
        v44 = sub_1C5BC8984();
        v50 = *&v1[qword_1EDA47FA0];
        if (!v50)
        {
LABEL_32:
          __break(1u);
          goto LABEL_33;
        }

        v51 = [v50 view];
        if (!v51)
        {
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

        v52 = v51;
        [v51 frame];
        v54 = v53;
        v56 = v55;
        v58 = v57;
        v60 = v59;

        [v44 setFrame_];
        v61 = [objc_allocWithZone(type metadata accessor for NowPlayingMiniPlayerContentBackgroundView()) init];
        v62 = *&v2[qword_1EDA47FA0];
        if (v62)
        {
          type metadata accessor for CollapsedViewController();
          if (swift_dynamicCastClass())
          {
            v63 = v62;
            v64 = sub_1C5B9E6A8();

            v65 = v61;
            sub_1C5A344F8(v61);

            v61 = v65;
          }
        }
      }

      v66 = v44;
      v67 = [v2 view];
      if (v67)
      {
        v68 = v67;
        [v67 addSubview_];

        v69 = *&v2[qword_1EDA48200];
        *&v2[qword_1EDA48200] = v66;

        return;
      }
    }

    __break(1u);
    goto LABEL_31;
  }

LABEL_2:
}

void *sub_1C5BA28A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = swift_getKeyPath(byte_1C5BF39F0);
  *(a3 + 81) = 0;
  *(a3 + 88) = a1;
  *(a3 + 96) = a2;
  _s12PresentationCMa(0);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A3F0, &qword_1C5BF1C10);
  swift_allocObject();
  *(v6 + 24) = sub_1C5BC7F44();
  sub_1C5BC7BA4();
  result = sub_1C5BCA684();
  *(a3 + 104) = v8;
  *(a3 + 112) = v9;
  return result;
}

uint64_t sub_1C5BA2994@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_1EDA47F40;
  swift_beginAccess();
  return sub_1C59400B0(v1 + v3, a1, &qword_1EC19A180, &qword_1C5BF3690);
}

id sub_1C5BA2A00(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v7 = a3;
  v8 = a4;
  swift_unknownObjectRetain();
  v9 = a1;
  sub_1C5BA8C20();
  v11 = v10;

  swift_unknownObjectRelease();

  return v11;
}

id sub_1C5BA2A88(uint64_t a1, CGFloat a2, CGFloat a3)
{
  v6 = *MEMORY[0x1E69E7D40] & *v3;
  v7 = qword_1EDA47F40;
  swift_beginAccess();
  sub_1C59400B0(v3 + v7, v38, &qword_1EC19A180, &qword_1C5BF3690);
  if (v38[3])
  {
    sub_1C59318C8(v38, v36);
    sub_1C5924EF4(v38, &qword_1EC19A180, &qword_1C5BF3690);
    v8 = *__swift_project_boxed_opaque_existential_0(v36, v36[3]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191918, &unk_1C5BDB0B0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1C5BD9A40;
    swift_beginAccess();
    *(v9 + 32) = v8[2];
    swift_beginAccess();
    *(v9 + 40) = v8[3];
    swift_beginAccess();
    *(v9 + 48) = v8[4];
    swift_beginAccess();
    *(v9 + 56) = v8[5];
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v10)
    {
      v11 = 0;
LABEL_4:
      v12 = v11;
      do
      {
        if ((v9 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x1C694FD20](v12, v9);
          v11 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            goto LABEL_31;
          }
        }

        else
        {
          if ((v12 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_31:
            __break(1u);
LABEL_32:
            __break(1u);
            goto LABEL_33;
          }

          if (v12 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_32;
          }

          v11 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            goto LABEL_31;
          }
        }

        if (*(v13 + 49) == 1)
        {
          v14 = *(v13 + 16);
          v15 = *(v13 + 24);
          v16 = *(v13 + 32);
          v17 = *(v13 + 40);
          v18 = *(v13 + 48);

          if ((v18 & 1) != 0 || (v40.origin.x = v14, v40.origin.y = v15, v40.size.width = v16, v40.size.height = v17, v39.x = a2, v39.y = a3, !CGRectContainsPoint(v40, v39)))
          {
            v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v11 != v10)
            {
              goto LABEL_4;
            }

            break;
          }

LABEL_33:
          v19 = 1;
          goto LABEL_19;
        }

        ++v12;
      }

      while (v11 != v10);
    }

    v19 = 0;
LABEL_19:
    swift_bridgeObjectRelease_n();
    __swift_destroy_boxed_opaque_existential_0(v36);
  }

  else
  {
    sub_1C5924EF4(v38, &qword_1EC19A180, &qword_1C5BF3690);
    v19 = 0;
  }

  if (qword_1EDA469E0 != -1)
  {
    swift_once();
  }

  v20 = sub_1C5BC7D64();
  __swift_project_value_buffer(v20, qword_1EDA5DA78);
  v21 = v3;
  v22 = sub_1C5BC7D44();
  v23 = sub_1C5BCB4F4();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v37 = v25;
    *v24 = 136446722;
    *v38 = a2;
    *&v38[1] = a3;
    type metadata accessor for CGPoint(0);
    v26 = sub_1C5BCAEA4();
    v28 = sub_1C592ADA8(v26, v27, &v37);

    *(v24 + 4) = v28;
    *(v24 + 12) = 1024;
    *(v24 + 14) = v19 ^ 1;
    *(v24 + 18) = 2082;
    v29 = qword_1EDA47F40;
    swift_beginAccess();
    sub_1C59400B0(v21 + v29, v38, &qword_1EC19A180, &qword_1C5BF3690);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A180, &qword_1C5BF3690);
    v30 = sub_1C5BCAEA4();
    v32 = sub_1C592ADA8(v30, v31, &v37);

    *(v24 + 20) = v32;
    _os_log_impl(&dword_1C5922000, v22, v23, "Mini player requested to show context menu preview for touch at %{public}s. Will expand = %{BOOL}d based on excluded tap areas: %{public}s.", v24, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1C69510F0](v25, -1, -1);
    MEMORY[0x1C69510F0](v24, -1, -1);
  }

  if (v19)
  {
    return 0;
  }

  result = (*(*(v6 + 88) + 312))(*(v6 + 80));
  if (result)
  {
    v34 = [result contextMenuInteraction:a1 configurationForMenuAtLocation:{a2, a3}];
    swift_unknownObjectRelease();
    return v34;
  }

  return result;
}

id sub_1C5BA2F94(void *a1, CGFloat a2, CGFloat a3, uint64_t a4, void *a5)
{
  v8 = a5;
  v9 = a1;
  v10 = sub_1C5BA2A88(v8, a2, a3);

  return v10;
}

void *sub_1C5BA3014(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = (*(*((*MEMORY[0x1E69E7D40] & *v3) + 0x58) + 312))(*((*MEMORY[0x1E69E7D40] & *v3) + 0x50));
  if (result)
  {
    v8 = result;
    if ([result respondsToSelector_])
    {
      [v8 contextMenuInteraction:a1 willPerformPreviewActionForMenuWithConfiguration:a2 animator:a3];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1C5BA3108(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v8 = a3;
  v9 = a4;
  swift_unknownObjectRetain();
  v10 = a1;
  sub_1C5BA3014(v8, v9, a5);

  swift_unknownObjectRelease();
}

void *sub_1C5BA31A4(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = *MEMORY[0x1E69E7D40] & *v3;
  v8 = *(v3 + qword_1EDA47FA0);
  if (v8)
  {
    type metadata accessor for CollapsedViewController();
    v9 = swift_dynamicCastClass();
    if (v9)
    {
      v10 = v9;
      v11 = v8;
      if ([a2 respondsToSelector_] && (v12 = objc_msgSend(a2, sel_previewProvider)) != 0 && (v13 = v12, v14 = (*(v12 + 2))(), _Block_release(v13), v14))
      {

        v15 = 1;
      }

      else
      {
        v15 = 0;
      }

      v16 = OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC23CollapsedViewController_hidesMiniPlayer;
      *(v10 + OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC23CollapsedViewController_hidesMiniPlayer) = v15;
      [*(v10 + OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC21ContentViewController_contentView) setHidden_];
      v17 = *(v10 + OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC21ContentViewController_backdropView);
      if (v17)
      {
        [v17 setHidden_];
      }
    }
  }

  result = (*(*(v7 + 88) + 312))(*(v7 + 80));
  if (result)
  {
    v19 = result;
    if ([result respondsToSelector_])
    {
      [v19 contextMenuInteraction:a1 willDisplayMenuForConfiguration:a2 animator:a3];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_1C5BA33AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *MEMORY[0x1E69E7D40] & *v3;
  v8 = *(v3 + qword_1EDA47FA0);
  if (v8)
  {
    type metadata accessor for CollapsedViewController();
    v9 = swift_dynamicCastClass();
    if (v9)
    {
      v10 = v9;
      v11 = OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC23CollapsedViewController_hidesMiniPlayer;
      *(v9 + OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC23CollapsedViewController_hidesMiniPlayer) = 0;
      v12 = *(v9 + OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC21ContentViewController_contentView);
      v13 = v8;
      [v12 setHidden_];
      v14 = *(v10 + OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC21ContentViewController_backdropView);
      if (v14)
      {
        [v14 setHidden_];
      }
    }
  }

  result = (*(*(v7 + 88) + 312))(*(v7 + 80));
  if (result)
  {
    v16 = result;
    if ([result respondsToSelector_])
    {
      [v16 contextMenuInteraction:a1 willEndForConfiguration:a2 animator:a3];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1C5BA3550(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void (*a6)(id, id, uint64_t))
{
  v10 = a3;
  v11 = a4;
  swift_unknownObjectRetain();
  v12 = a1;
  a6(v10, v11, a5);

  swift_unknownObjectRelease();
}

id NowPlayingViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1C5BCAE44();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

void sub_1C5BA36A8(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;

  sub_1C5BA8E98();
}

id NowPlayingViewController.__deallocating_deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for NowPlayingViewController(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), *((*MEMORY[0x1E69E7D40] & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t sub_1C5BA3788(uint64_t a1)
{
  swift_unknownObjectRelease();

  sub_1C5AC8D5C(a1 + qword_1EDA47F20);

  MEMORY[0x1C6951220](a1 + qword_1EDA481D8);

  return sub_1C5924EF4(a1 + qword_1EDA47F40, &qword_1EC19A180, &qword_1C5BF3690);
}

uint64_t sub_1C5BA3908@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v82 = a3;
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  _s21MiniPlayerContentViewVMa(255, v5, v4, a2);
  swift_getTupleTypeMetadata2();
  v56[1] = sub_1C5BCAB74();
  swift_getWitnessTable();
  sub_1C5BCA7D4();
  _s11ArtworkViewVMa(255, v5, v4, v6);
  v7 = sub_1C5BCB804();
  WitnessTable = swift_getWitnessTable();
  v58 = v7;
  v61 = swift_getWitnessTable();
  sub_1C5BC8BE4();
  v8 = sub_1C5BC8AB4();
  v64 = _s12PresentationCMa(255);
  v57 = swift_getWitnessTable();
  v114 = v57;
  v115 = swift_getWitnessTable();
  v81 = MEMORY[0x1E697E858];
  v60 = v8;
  v63 = swift_getWitnessTable();
  v62 = sub_1C5931880(&qword_1EDA4AF70, _s12PresentationCMa, &unk_1C5BD2B30);
  v110 = v8;
  v111 = v64;
  v112 = v63;
  v113 = v62;
  v68 = MEMORY[0x1E69811C8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v70 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v10 = v56 - v9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC19A4F0, &qword_1C5BD8C30);
  v67 = sub_1C5BC8AB4();
  v73 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v59 = v56 - v11;
  v75 = type metadata accessor for NowPlayingEnvironmentModifier(255, v5, v4, v12);
  v71 = sub_1C5BC8AB4();
  v78 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v66 = v56 - v13;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1996D0, &qword_1C5BF0AD0);
  v74 = sub_1C5BC8AB4();
  v79 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v69 = v56 - v14;
  v77 = sub_1C5BC8AB4();
  v80 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v72 = v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v76 = v56 - v17;
  v18 = *(v3 + 80);
  v117[4] = *(v3 + 64);
  v118 = v18;
  v119[0] = *(v3 + 96);
  *&v119[1] = *(v3 + 112);
  v19 = *(v3 + 16);
  v117[0] = *v3;
  v117[1] = v19;
  v20 = *(v3 + 48);
  v117[2] = *(v3 + 32);
  v117[3] = v20;
  v86 = v5;
  v87 = v4;
  sub_1C5BC9134();
  swift_checkMetadataState();
  sub_1C5BCA7C4();
  v100 = v107;
  v101 = v108;
  v102 = v109;
  v96 = v103;
  v97 = v104;
  v98 = v105;
  v99 = v106;
  v83 = v5;
  v84 = v4;
  v21 = v4;
  v85 = v117;
  sub_1C5BCAA54();
  v22 = swift_checkMetadataState();
  swift_checkMetadataState();
  sub_1C5BCA2C4();
  v120[4] = v100;
  v120[5] = v101;
  v121 = v102;
  v120[0] = v96;
  v120[1] = v97;
  v120[2] = v98;
  v120[3] = v99;
  (*(*(v22 - 8) + 8))(v120, v22);
  v103 = *(v119 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A500, &qword_1C5BF3C60);
  sub_1C5BCA694();
  v23 = swift_checkMetadataState();
  v24 = v63;
  v25 = v64;
  v26 = v62;
  sub_1C5BC9DE4();

  (*(*(v23 - 8) + 8))(&v110, v23);
  swift_getKeyPath(asc_1C5BF3C68);
  LOBYTE(v103) = 4;
  v110 = v23;
  v111 = v25;
  v112 = v24;
  v113 = v26;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v28 = v59;
  v29 = OpaqueTypeMetadata2;
  sub_1C5BC9DF4();

  (*(v70 + 8))(v10, v29);
  v30 = *(&v118 + 1);
  v31 = *&v119[0];
  v33 = type metadata accessor for NowPlayingViewControllerProxy(0, v5, v21, v32);
  v37 = sub_1C5BA4AC0(v33, v34, v35, v36);
  v38 = MEMORY[0x1E6980A18];
  v39 = sub_1C5924F54(&qword_1EDA46188, &unk_1EC19A4F0, &qword_1C5BD8C30, MEMORY[0x1E6980A18]);
  v94 = OpaqueTypeConformance2;
  v95 = v39;
  v40 = v67;
  v41 = swift_getWitnessTable();
  v42 = v66;
  sub_1C5937490(v30, v31, v37, v40, v41);

  (*(v73 + 8))(v28, v40);
  swift_getKeyPath(asc_1C5BF3C90);
  v110 = sub_1C5BCAB64();
  LOBYTE(v111) = 0;
  v43 = swift_getWitnessTable();
  v92 = v41;
  v93 = v43;
  v44 = v71;
  v45 = swift_getWitnessTable();
  v46 = v69;
  sub_1C5BC9DF4();

  (*(v78 + 8))(v42, v44);
  v47 = sub_1C5924F54(&qword_1EDA46080, &qword_1EC1996D0, &qword_1C5BF0AD0, v38);
  v90 = v45;
  v91 = v47;
  v48 = v74;
  v49 = swift_getWitnessTable();
  v50 = v72;
  sub_1C5BC9FA4();
  (*(v79 + 8))(v46, v48);
  v88 = v49;
  v89 = MEMORY[0x1E69805B0];
  v51 = v77;
  v52 = swift_getWitnessTable();
  v53 = v76;
  sub_1C593EDC0(v50, v51, v52);
  v54 = *(v80 + 8);
  v54(v50, v51);
  sub_1C593EDC0(v53, v51, v52);
  return (v54)(v53, v51);
}

uint64_t sub_1C5BA431C(uint64_t a1, uint64_t a2)
{
  sub_1C5941830(&v26);
  v5 = _s21MiniPlayerContentViewVMa(0, a1, a2, v4);
  WitnessTable = swift_getWitnessTable();
  sub_1C593EDC0(&v26, v5, WitnessTable);
  v20[0] = v26;
  v20[1] = v27;
  v21[0] = v28[0];
  *(v21 + 9) = *(v28 + 9);
  v7 = *(v5 - 8);
  v8 = *(v7 + 8);
  v8(v20, v5);
  v22[0] = v17;
  v22[1] = v18;
  v23[0] = v19[0];
  *(v23 + 9) = *(v19 + 9);
  v13 = v17;
  v14 = v18;
  v15[0] = v19[0];
  *(v15 + 9) = *(v19 + 9);
  v11 = 0;
  v12 = 1;
  v16[0] = &v13;
  v16[1] = &v11;
  (*(v7 + 16))(&v26, v22, v5);
  v10[0] = v5;
  v10[1] = MEMORY[0x1E6981840];
  sub_1C594226C(v16, 2uLL, v10);
  v24[0] = v17;
  v24[1] = v18;
  v25[0] = v19[0];
  *(v25 + 9) = *(v19 + 9);
  v8(v24, v5);
  v26 = v13;
  v27 = v14;
  v28[0] = v15[0];
  *(v28 + 9) = *(v15 + 9);
  return v8(&v26, v5);
}

double sub_1C5BA4500@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1C5BC8F34();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *((*(a3 + 224))(a2, a3, v10) + 72);

  swift_beginAccess();
  sub_1C59318C8(v13 + 64, v52);

  sub_1C59318C8(v52, &v49);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC19A460, &unk_1C5BDD000);
  if (swift_dynamicCast())
  {

    memset(v43, 0, sizeof(v43));
    v44 = 0;
    v45 = 1;
    _s11ArtworkViewVMa(0, a2, a3, v14);
    v46 = 0u;
    v47 = 0u;
    v48 = 0;
    swift_getWitnessTable();
    sub_1C5941600(v43, v50);
    v15 = sub_1C5BCB804();
    (*(*(v15 - 8) + 8))(v43, v15);
  }

  else
  {
    v35 = v9;
    v37 = a4;
    v17 = v54;
    v36 = v53;
    __swift_project_boxed_opaque_existential_0(v52, v53);
    v18 = *(a1 + 8);
    *&v56[10] = *(a1 + 66);
    v19 = *(a1 + 24);
    v55[0] = v18;
    v55[1] = v19;
    v20 = *(a1 + 56);
    v55[2] = *(a1 + 40);
    *v56 = v20;
    if (v56[25])
    {
      v21 = *(a1 + 16);
      *(&v41[1] + 8) = *(a1 + 32);
      v22 = *(a1 + 64);
      *(&v41[2] + 8) = *(a1 + 48);
      *(&v41[3] + 8) = v22;
      BYTE8(v41[4]) = *(a1 + 80);
      *(v41 + 8) = v21;
      *&v41[0] = v18;
    }

    else
    {
      v34 = v18;
      sub_1C59400B0(v55, v50, &qword_1EC191B58, &qword_1C5BE53F0);
      sub_1C5BCB4E4();
      v23 = sub_1C5BC9844();
      sub_1C5BC7C54();

      sub_1C5BC8F24();
      swift_getAtKeyPath();
      sub_1C5924EF4(v55, &qword_1EC191B58, &qword_1C5BE53F0);
      (*(v35 + 8))(v12, v8);
    }

    v50[2] = v41[2];
    v51[0] = v41[3];
    *(v51 + 9) = *(&v41[3] + 9);
    v50[1] = v41[1];
    v50[0] = v41[0];
    v24 = (*(v17 + 16))(v50, v36, v17);
    v25 = sub_1C593EBD4(1u, v24);

    sub_1C5941EBC(v25, v42);
    v27 = _s11ArtworkViewVMa(0, a2, a3, v26);
    WitnessTable = swift_getWitnessTable();
    sub_1C593EDC0(v42, v27, WitnessTable);
    v29 = *(*(v27 - 8) + 8);
    v29(v42, v27);
    sub_1C593EDC0(v43, v27, WitnessTable);
    v29(v43, v27);
    memcpy(v39, v40, 0x122uLL);
    sub_1C5941600(v39, v50);
    v30 = sub_1C5BCB804();
    (*(*(v30 - 8) + 8))(v39, v30);
  }

  _s11ArtworkViewVMa(255, a2, a3, v16);
  v31 = sub_1C5BCB804();
  v38 = swift_getWitnessTable();
  v32 = swift_getWitnessTable();
  sub_1C593EDC0(v50, v31, v32);
  (*(*(v31 - 8) + 8))(v50, v31);
  return __swift_destroy_boxed_opaque_existential_0(v52);
}

uint64_t sub_1C5BA4AC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for NowPlayingViewControllerProxy(0, *(v4 + 80), *(v4 + 88), a4);
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  return v5;
}

id sub_1C5BA4B0C(void *a1)
{
  ObjectType = swift_getObjectType();
  sub_1C5BA4B7C(a1);
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, sel_interruptibleAnimatorForTransition_, a1);

  return v4;
}

void sub_1C5BA4B7C(void *a1)
{
  v2 = qword_1EC19A2B8;
  if ((*(v1 + qword_1EC19A2B8) & 1) == 0)
  {
    v3 = v1;
    v5 = *MEMORY[0x1E69E7D40] & *v1;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      v8 = sub_1C5BA1AB0();

      if (!v8)
      {
        goto LABEL_7;
      }

      v9 = swift_unknownObjectWeakLoadStrong();
      if (v9)
      {
        v10 = v9;
        v11 = *(v9 + qword_1EDA47FE0);
        v12 = v11;

        if (v11)
        {
          sub_1C5B89F8C(a1);

LABEL_7:
          v13 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v14 = swift_allocObject();
          v15 = *(v5 + 80);
          v14[2] = v15;
          v16 = *(v5 + 88);
          v14[3] = v16;
          v14[4] = v13;
          v14[5] = a1;
          v24[4] = sub_1C5BA92FC;
          v24[5] = v14;
          v24[0] = MEMORY[0x1E69E9820];
          v24[1] = 1107296256;
          v24[2] = sub_1C596D09C;
          v24[3] = &block_descriptor_122;
          v17 = _Block_copy(v24);
          swift_unknownObjectRetain();

          [v3 addNoninteractiveAnimations_];
          _Block_release(v17);
          if (![v3 isReversed])
          {
LABEL_11:
            *(v3 + v2) = 1;
            return;
          }

          v18 = swift_unknownObjectWeakLoadStrong();
          if (v18)
          {
            v19 = v18;
            v20 = *(v18 + qword_1EDA47FA8);
            v21 = v20;

            if (v20)
            {
              v21[OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC22ExpandedViewController_isCollapsing] = 1;

              v22 = swift_allocObject();
              swift_unknownObjectWeakInit();
              v23 = swift_allocObject();
              v23[2] = v15;
              v23[3] = v16;
              v23[4] = v22;

              sub_1C5B9D06C(sub_1C5BA9308, v23);

              goto LABEL_11;
            }

LABEL_17:
            __break(1u);
            return;
          }

LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

LABEL_15:
        __break(1u);
        goto LABEL_16;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_15;
  }
}

id sub_1C5BA4E3C(void *a1, uint64_t a2, void *a3)
{
  swift_unknownObjectRetain();
  v5 = a1;
  v6 = sub_1C5BA4B0C(a3);
  swift_unknownObjectRelease();

  return v6;
}

void sub_1C5BA4EA4(uint64_t a1, void *a2)
{
  v51 = a2;
  v2 = sub_1C5BCAC14();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C5BCAC44();
  v49 = *(v6 - 8);
  v50 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C5BC7E54();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = sub_1C5BC7E74();
  v48 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v40 - v14;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v17 = Strong;
  v47 = v3;
  v18 = swift_unknownObjectWeakLoadStrong();
  if (!v18)
  {
LABEL_9:

    return;
  }

  v19 = v18;
  v46 = [v17 isReversed];
  v45 = v2;
  if ((v46 & 1) == 0)
  {
    v20 = sub_1C5BA1AB0();
    if (v20)
    {

      v21 = [v51 viewControllerForKey_];
      if (v21)
      {
        v22 = v21;
        type metadata accessor for ContentViewController();
        v23 = swift_dynamicCastClass();
        if (v23)
        {
          v24 = v23;
          v42 = objc_opt_self();
          v25 = swift_allocObject();
          v41 = v22;
          v26 = v25;
          *(v25 + 16) = v19;
          *(v25 + 24) = v24;
          v27 = swift_allocObject();
          v43 = sub_1C5BA9328;
          v44 = v26;
          *(v27 + 16) = sub_1C5BA9328;
          *(v27 + 24) = v26;
          v54 = sub_1C59A57A4;
          v55 = v27;
          *&aBlock = MEMORY[0x1E69E9820];
          *(&aBlock + 1) = 1107296256;
          *&v53 = sub_1C59D32C0;
          *(&v53 + 1) = &block_descriptor_144;
          v28 = _Block_copy(&aBlock);
          v40 = v55;
          v29 = v19;
          v41 = v41;

          [v42 performWithoutAnimation_];

          _Block_release(v28);
          LOBYTE(v28) = swift_isEscapingClosureAtFileLocation();

          if (v28)
          {
            __break(1u);
            goto LABEL_9;
          }

          goto LABEL_12;
        }
      }
    }
  }

  v43 = 0;
  v44 = 0;
LABEL_12:
  if (([v51 isInteractive] & 1) == 0)
  {
    sub_1C5BA162C(v46 ^ 1);
  }

  if (*&v19[qword_1EDA47FA0])
  {
    type metadata accessor for CollapsedTabAccessoryViewController();
    v30 = swift_dynamicCastClass();
    if (v30)
    {
      v31 = *(v30 + OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC35CollapsedTabAccessoryViewController_miniPlayerContainer);
      v32 = sub_1C5BA1AB0();
      if (v32)
      {

        v31[OBJC_IVAR____TtCC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC35CollapsedTabAccessoryViewController19MiniPlayerContainer_hidesBackground] = 1;
        v54 = 0;
        aBlock = 0u;
        v53 = 0u;
      }

      else
      {
        v31[OBJC_IVAR____TtCC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC35CollapsedTabAccessoryViewController19MiniPlayerContainer_hidesBackground] = 0;
        sub_1C5BC7E44();
        sub_1C5BC7E84();
        sub_1C5BC7E64();
        v33 = v48;
        (*(v48 + 8))(v12, v10);
        *(&v53 + 1) = v10;
        v54 = MEMORY[0x1E69DC388];
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&aBlock);
        (*(v33 + 32))(boxed_opaque_existential_0, v15, v10);
      }

      sub_1C5BCB694();
    }
  }

  sub_1C592535C(0, &qword_1EDA4E620, 0x1E69E9610);
  v35 = sub_1C5BCB5A4();
  v36 = swift_allocObject();
  *(v36 + 16) = v46;
  *(v36 + 24) = v51;
  *(v36 + 32) = v19;
  v54 = sub_1C5BA931C;
  v55 = v36;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v53 = sub_1C596D09C;
  *(&v53 + 1) = &block_descriptor_135;
  v37 = _Block_copy(&aBlock);
  v38 = v19;
  swift_unknownObjectRetain();

  sub_1C5BCAC34();
  *&aBlock = MEMORY[0x1E69E7CC0];
  sub_1C5931880(&qword_1EDA4E6A0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1961C0, &unk_1C5BD76A0);
  sub_1C5924F54(&qword_1EDA4E690, &unk_1EC1961C0, &unk_1C5BD76A0, MEMORY[0x1E69E6328]);
  v39 = v45;
  sub_1C5BCB8F4();
  MEMORY[0x1C694F7F0](0, v8, v5, v37);
  _Block_release(v37);

  (*(v47 + 8))(v5, v39);
  (*(v49 + 8))(v8, v50);
  sub_1C59261FC(v43, v44);
}

void sub_1C5BA55C8(char a1, uint64_t a2, void *a3)
{
  v6 = objc_opt_self();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v7 + 32) = a3;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1C5BA9390;
  *(v8 + 24) = v7;
  v11[4] = sub_1C5AF76A8;
  v11[5] = v8;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1C59D32C0;
  v11[3] = &block_descriptor_154;
  v9 = _Block_copy(v11);
  swift_unknownObjectRetain();
  v10 = a3;

  [v6 performWithoutAnimation_];
  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }
}

void sub_1C5BA5748(char a1, id a2, void *a3)
{
  if (a1)
  {
    v4 = *MEMORY[0x1E69E7D40] & *a3;
    if (sub_1C5B9D5F4())
    {
      v6 = v5;
      ObjectType = swift_getObjectType();
      v23 = 1;
      v22 = 0;
      (*(v6 + 8))(&v23, &v22, 1, ObjectType, v6);
      swift_unknownObjectRelease();
    }

    v8 = *((*(*(v4 + 88) + 224))(*(v4 + 80)) + 32);

    v9 = *(v8 + 16);
    if (v9 == 4)
    {
    }

    else
    {
      v10 = sub_1C5BCBDE4();

      if ((v10 & 1) == 0)
      {
        type metadata accessor for NowPlayingViewModel.Lifecycle();
        sub_1C5931880(&qword_1EDA497D0, type metadata accessor for NowPlayingViewModel.Lifecycle, &unk_1C5BF23D8);
        sub_1C5BC7F24();
        sub_1C5BC7FA4();
      }
    }

    *(v8 + 16) = 4;
    sub_1C5B8C3D0(v9);

    v11 = sub_1C5BA1AB0();
    if (v11)
    {

      v12 = [objc_opt_self() sharedInstance];
      v13 = [v12 defaultSheetMetrics];

      v14 = [v13 transitionSpringParametersHighSpeed_];
      [v14 _response];
      v16 = v15 * 0.8;
      v17 = [v14 _dampingRatio];
      v19 = MEMORY[0x1C694ED40](v17, v16, v18, 0.0);

      MEMORY[0x1EEE9AC00](v20);
      v21[2] = a3;
      sub_1C596D96C(v19, 0, sub_1C5BA939C, v21);
    }
  }

  else if (([a2 isInteractive] & 1) == 0)
  {
    sub_1C5BA1388();
  }
}

void sub_1C5BA5AF4(void *a1, char a2)
{
  (*(*((*MEMORY[0x1E69E7D40] & *a1) + 0x58) + 224))(*((*MEMORY[0x1E69E7D40] & *a1) + 0x50));

  v3 = a2;
  sub_1C59A8494(&v3);
}

void sub_1C5BA5BA8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = swift_unknownObjectWeakLoadStrong();

    if (v4)
    {
      v5 = *&v4[qword_1EDA47FA8];
      v6 = v5;

      if (v5)
      {
        v6[OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC22ExpandedViewController_isCollapsing] = 0;

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void sub_1C5BA5C4C(char a1)
{
  v3 = *MEMORY[0x1E69E7D40] & *v1;
  v4 = qword_1EC19A2B0;
  swift_beginAccess();
  v5 = *(v1 + v4);
  v6 = *(v5 + 16);
  if (v6)
  {

    v7 = v5 + 40;
    do
    {
      v8 = *(v7 - 8);
      v17 = a1 & 1;

      v8(&v17);

      v7 += 16;
      --v6;
    }

    while (v6);
  }

  *(v1 + v4) = MEMORY[0x1E69E7CC0];

  if ([v1 isReversed])
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if ((a1 & 1) == 0)
    {
      if (!Strong)
      {
        return;
      }

      v13 = Strong;
      [*(Strong + qword_1EDA47F88) removeFromSuperview];
      [*&v13[qword_1EDA48200] removeFromSuperview];
      v14 = *&v13[qword_1EDA48200];
      *&v13[qword_1EDA48200] = 0;

      goto LABEL_16;
    }

    if (!Strong)
    {
      return;
    }

    v10 = Strong;
    swift_unknownObjectRetain();

    v11 = (*(*(v3 + 88) + 224))(*(v3 + 80));
    swift_unknownObjectRelease();
    v12 = *(v11 + 32);

    LODWORD(v11) = *(v12 + 16);

    if (v11 == 4)
    {
    }

    else
    {
      v15 = sub_1C5BCBDE4();

      if ((v15 & 1) == 0)
      {
        return;
      }
    }

    v16 = swift_unknownObjectWeakLoadStrong();
    if (v16)
    {
      v14 = v16;
      sub_1C5BA0C80(1);
LABEL_16:
    }
  }
}

void sub_1C5BA5F38(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_1C5BA5C4C(a3);
}

double sub_1C5BA5FCC(uint64_t a1)
{
  MEMORY[0x1C6951220](a1 + qword_1EC19A2A8);

  return result;
}

id sub_1C5BA6074(uint64_t a1, double a2, double a3)
{
  if (UIViewIgnoresTouchEvents())
  {
    return 0;
  }

  v12.receiver = v3;
  v12.super_class = type metadata accessor for PassthroughView();
  v7 = objc_msgSendSuper2(&v12, sel_hitTest_withEvent_, a1, a2, a3);
  if (v7)
  {
    sub_1C592535C(0, &qword_1EDA4E078, 0x1E69DD250);
    v8 = v7;
    v9 = v3;
    v10 = sub_1C5BCB744();

    if (v10)
    {

      return 0;
    }
  }

  return v7;
}

uint64_t sub_1C5BA61EC()
{
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  return v0;
}

id sub_1C5BA622C()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = Strong;
  v2 = sub_1C5B9D414();

  return v2;
}

void sub_1C5BA6310()
{
  v34.receiver = v0;
  v34.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v34, sel_viewDidLayoutSubviews);
  v1 = sub_1C5B9E6A8();
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = v2;
  [v2 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v35.origin.x = v5;
  v35.origin.y = v7;
  v35.size.width = v9;
  v35.size.height = v11;
  Width = CGRectGetWidth(v35);
  v13 = [v0 view];
  if (!v13)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v14 = v13;
  [v13 bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v36.origin.x = v16;
  v36.origin.y = v18;
  v36.size.width = v20;
  v36.size.height = v22;
  Height = CGRectGetHeight(v36);
  v24 = [v0 view];
  if (v24)
  {
    v25 = v24;
    [v24 frame];
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;

    v37.origin.x = v27;
    v37.origin.y = v29;
    v37.size.width = v31;
    v37.size.height = v33;
    [v1 setFrame_];

    return;
  }

LABEL_7:
  __break(1u);
}

double sub_1C5BA64F0()
{
  v1 = sub_1C5B9E6A8();
  [v1 frame];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v10 = (*(v0 + OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC23CollapsedViewController____lazy_storage___miniPlayerContainer) + OBJC_IVAR____TtC11MediaCoreUI23MiniPlayerContainerView_contentInsets);
  v11 = *v10;
  v12 = v10[1];

  return UIEdgeInsetsInsetRect(v3, v5, v7, v9, v11, v12);
}

void sub_1C5BA6588(void *a1)
{
  v3 = OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC21ContentViewController_backdropView;
  v4 = *(v1 + OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC21ContentViewController_backdropView);
  v5 = a1;
  v6 = v4;
  sub_1C5937CB8(a1);
  [v6 removeFromSuperview];
  v9 = sub_1C5B9E6A8();
  v7 = *(v1 + v3);
  v8 = v7;
  sub_1C5A344F8(v7);
}

void sub_1C5BA664C(void *a1)
{
  [a1 removeFromSuperview];
  v2 = *&v1[OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC21ContentViewController_contentView];
  if (v2)
  {
    v3 = v2;
    v4 = [v1 view];
    if (v4)
    {
      v5 = v4;
      [v4 addSubview_];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1C5BA66F0()
{
  v1 = *&v0[OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC21ContentViewController_contentView];
  if (v1)
  {
    v12 = v1;
    v2 = [v0 view];
    if (v2)
    {
      v3 = v2;
      [v2 bounds];
      v5 = v4;
      v7 = v6;
      v9 = v8;
      v11 = v10;

      [v12 setFrame_];
    }

    else
    {
      __break(1u);
    }
  }
}

double sub_1C5BA67CC()
{
  swift_getKeyPath(byte_1C5BF39C0);
  sub_1C5931880(&qword_1EDA4B960, type metadata accessor for WindowProperties, &unk_1C5BDAF08);
  sub_1C5BC7B74();

  return 0.0;
}

double sub_1C5BA6940(double a1)
{
  v2 = type metadata accessor for NowPlayingMiniPlayerSpecs(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_weakLoadStrong();
  if (!Strong || ((v6 = Strong, swift_getKeyPath("8\x1B[&"), v12[1] = v6, sub_1C5931880(&qword_1EDA4B960, type metadata accessor for WindowProperties, &unk_1C5BDAF08), sub_1C5BC7B74(), , v7 = *(v6 + 104), , (v7 & 0xFF0000) != 0x30000) ? (v8 = (BYTE2(v7) | 4) == 4) : (v8 = 1), v8))
  {
    if (qword_1EDA47CC0 != -1)
    {
      swift_once();
    }

    v9 = qword_1EDA5DAE8;
  }

  else
  {
    if (qword_1EC1906C8 != -1)
    {
      swift_once();
    }

    v9 = qword_1EC1A6AC8;
  }

  v10 = __swift_project_value_buffer(v2, v9);
  sub_1C5948550(v10, v4);
  if (a1 > 700.0)
  {
    a1 = 700.0;
  }

  sub_1C5BA9614(v4, type metadata accessor for NowPlayingMiniPlayerSpecs);
  return a1;
}

void sub_1C5BA6C18()
{
  v1 = v0;
  v54.receiver = v0;
  v54.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v54, sel_viewDidLayoutSubviews);
  v2 = &v0[OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC22ExpandedViewController_lastSeenBounds];
  v3 = *&v0[OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC22ExpandedViewController_lastSeenBounds];
  v4 = *&v0[OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC22ExpandedViewController_lastSeenBounds + 8];
  v5 = *&v0[OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC22ExpandedViewController_lastSeenBounds + 16];
  v6 = *&v0[OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC22ExpandedViewController_lastSeenBounds + 24];
  v7 = [v0 view];
  if (!v7)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v8 = v7;
  [v7 bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v55.origin.x = v3;
  v55.origin.y = v4;
  v55.size.width = v5;
  v55.size.height = v6;
  v56.origin.x = v10;
  v56.origin.y = v12;
  v56.size.width = v14;
  v56.size.height = v16;
  if (!CGRectEqualToRect(v55, v56))
  {
    v17 = *&v1[OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC21ContentViewController_backdropView];
    if (v17)
    {
      v18 = v17;
      v19 = [v1 view];
      if (!v19)
      {
LABEL_22:
        __break(1u);
        return;
      }

      v20 = v19;
      [v19 bounds];
      v22 = v21;
      v24 = v23;
      v26 = v25;
      v28 = v27;

      [v18 setFrame_];
    }
  }

  v29 = [v1 view];
  if (!v29)
  {
    goto LABEL_19;
  }

  v30 = v29;
  [v29 bounds];
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;

  *v2 = v32;
  *(v2 + 1) = v34;
  *(v2 + 2) = v36;
  *(v2 + 3) = v38;
  v39 = *&v1[OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC21ContentViewController_windowProperties];
  swift_getKeyPath("X\x1B[&");
  sub_1C5931880(&qword_1EDA4B960, type metadata accessor for WindowProperties, &unk_1C5BDAF08);
  sub_1C5BC7B74();

  v40 = *(v39 + 80);
  v41 = [v1 view];
  if (!v41)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v42 = v41;
  [v41 safeAreaInsets];
  v44 = v43;

  if (v40 == v44)
  {
    return;
  }

  v45 = [v1 view];
  if (!v45)
  {
    goto LABEL_21;
  }

  v46 = v45;
  [v45 safeAreaInsets];
  v48 = v47;

  if (*(v39 + 80) == v48)
  {
    *(v39 + 80) = v48;
    if (qword_1EDA469E0 != -1)
    {
      swift_once();
    }

    v49 = sub_1C5BC7D64();
    __swift_project_value_buffer(v49, qword_1EDA5DA78);

    v50 = sub_1C5BC7D44();
    v51 = sub_1C5BCB4F4();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 134217984;
      swift_getKeyPath("X\x1B[&");
      sub_1C5BC7B74();

      *(v52 + 4) = *(v39 + 80);
      _os_log_impl(&dword_1C5922000, v50, v51, "WindowProperties.toolbarHeight updated to %f", v52, 0xCu);
      MEMORY[0x1C69510F0](v52, -1, -1);
    }
  }

  else
  {
    KeyPath = swift_getKeyPath("X\x1B[&");
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C5BC7B64();
  }
}

void sub_1C5BA70C8(void *a1, uint64_t a2, uint64_t a3, const char **a4, void *a5)
{
  v13.receiver = a1;
  v13.super_class = swift_getObjectType();
  v8 = *a4;
  v9 = v13.receiver;
  objc_msgSendSuper2(&v13, v8, a3);
  if ([v9 isBeingDismissed] && (v10 = &v9[*a5], (v11 = *v10) != 0))
  {
    v12 = *(v10 + 1);

    v11(a3);

    sub_1C59261FC(v11, v12);
  }

  else
  {
  }
}

void sub_1C5BA7184()
{
  v1 = sub_1C5BCAC14();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C5BCAC44();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *&v0[OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC21ContentViewController_contentView];
  if (v0[OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC22ExpandedViewController_isCollapsing])
  {
    if (!v10)
    {
      return;
    }

    v39 = v7;
    v40 = v10;
    [v40 frame];
    Width = CGRectGetWidth(v43);
    v12 = [v0 view];
    if (v12)
    {
      v13 = v12;
      [v12 bounds];
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v21 = v20;

      v44.origin.x = v15;
      v44.origin.y = v17;
      v44.size.width = v19;
      v44.size.height = v21;
      if (Width != CGRectGetWidth(v44))
      {
        sub_1C592535C(0, &qword_1EDA4E620, 0x1E69E9610);
        v38 = sub_1C5BCB5A4();
        v22 = swift_allocObject();
        *(v22 + 16) = v40;
        *(v22 + 24) = v0;
        aBlock[4] = sub_1C5BA92C4;
        aBlock[5] = v22;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1C596D09C;
        aBlock[3] = &block_descriptor_101;
        v23 = _Block_copy(aBlock);
        v40 = v40;
        v24 = v0;

        sub_1C5BCAC34();
        aBlock[0] = MEMORY[0x1E69E7CC0];
        sub_1C5931880(&qword_1EDA4E6A0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1961C0, &unk_1C5BD76A0);
        sub_1C5924F54(&qword_1EDA4E690, &unk_1EC1961C0, &unk_1C5BD76A0, MEMORY[0x1E69E6328]);
        sub_1C5BCB8F4();
        v25 = v38;
        MEMORY[0x1C694F7F0](0, v9, v4, v23);
        _Block_release(v23);

        (*(v2 + 8))(v4, v1);
        (*(v6 + 8))(v9, v39);
        return;
      }

      goto LABEL_9;
    }

    __break(1u);
LABEL_14:
    __break(1u);
    return;
  }

  if (!v10)
  {
    return;
  }

  v40 = v10;
  v26 = [v0 view];
  if (!v26)
  {
    goto LABEL_14;
  }

  v27 = v26;
  [v26 bounds];
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;

  [v40 setFrame_];
LABEL_9:
  v36 = v40;
}

id sub_1C5BA75F4(void *a1, id a2)
{
  result = [a2 view];
  if (result)
  {
    v4 = result;
    [result bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    v14.origin.x = v6;
    v14.origin.y = v8;
    v14.size.width = v10;
    v14.size.height = v12;
    CGRectGetWidth(v14);
    [a1 frame];

    return [a1 setFrame_];
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C5BA76B4()
{
  sub_1C59261FC(*(v0 + OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC22ExpandedViewController_onCollapseBegan), *(v0 + OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC22ExpandedViewController_onCollapseBegan + 8));
  v1 = *(v0 + OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC22ExpandedViewController_onCollapseEnded);
  v2 = *(v0 + OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC22ExpandedViewController_onCollapseEnded + 8);

  return sub_1C59261FC(v1, v2);
}

void sub_1C5BA7750()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    [v1 bounds];
  }

  else
  {
    __break(1u);
  }
}

void sub_1C5BA790C(void *a1, double a2, double a3)
{
  v13.receiver = v3;
  v13.super_class = type metadata accessor for ContentViewController();
  objc_msgSendSuper2(&v13, sel_viewWillTransitionToSize_withTransitionCoordinator_, a1, a2, a3);
  if (v3[OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC21ContentViewController_isActive] == 1)
  {
    v7 = *&v3[OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC21ContentViewController_windowProperties];
    if (*(v7 + 48) == 1)
    {
      *(v7 + 48) = 1;
    }

    else
    {
      KeyPath = swift_getKeyPath(byte_1C5BF3940);
      MEMORY[0x1EEE9AC00](KeyPath);
      aBlock[0] = v7;
      sub_1C5931880(&qword_1EDA4B960, type metadata accessor for WindowProperties, &unk_1C5BDAF08);
      sub_1C5BC7B64();
    }

    v9 = swift_allocObject();
    *(v9 + 16) = v3;
    aBlock[4] = sub_1C5BA92BC;
    aBlock[5] = v9;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C5AC79C8;
    aBlock[3] = &block_descriptor_94_0;
    v10 = _Block_copy(aBlock);
    v11 = v3;

    [a1 animateAlongsideTransition:0 completion:v10];
    _Block_release(v10);
  }
}

void sub_1C5BA7B34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC21ContentViewController_windowProperties);
  if (*(v2 + 48))
  {
    KeyPath = swift_getKeyPath(byte_1C5BF3940);
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C5931880(&qword_1EDA4B960, type metadata accessor for WindowProperties, &unk_1C5BDAF08);
    sub_1C5BC7B64();
  }

  else
  {
    *(v2 + 48) = 0;
  }
}

id sub_1C5BA7D10(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1C5BA7DAC()
{
  v0 = sub_1C5BC7D64();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C5BC7CE4();
  __swift_allocate_value_buffer(v4, qword_1EDA46A00);
  __swift_project_value_buffer(v4, qword_1EDA46A00);
  if (qword_1EDA469E0 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_1EDA5DA78);
  (*(v1 + 16))(v3, v5, v0);
  return sub_1C5BC7CB4();
}

uint64_t UITabBarController.installNowPlayingView<A>(controller:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3;
  v8 = sub_1C5934B08(a1, a2, a3, sub_1C5931F9C);

  return v8;
}

void UITabBarController.installNowPlayingViewController<A>(_:)(char *a1)
{
  v3 = v1;
  sub_1C5931F9C(a1);
}

uint64_t UISplitViewController.installNowPlayingView<A>(controller:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3;
  v8 = sub_1C5934B08(a1, a2, a3, sub_1C5B9D22C);

  return v8;
}

void UISplitViewController.installNowPlayingViewController<A>(_:)(char *a1)
{
  v3 = v1;
  sub_1C5B9D22C(a1);
}

void sub_1C5BA8060(void *a1)
{
  v2 = *((*(*((*MEMORY[0x1E69E7D40] & *a1) + 0x58) + 224))(*((*MEMORY[0x1E69E7D40] & *a1) + 0x50)) + 72);

  v3 = [a1 traitCollection];
  v4 = [v3 accessibilityContrast];

  if (*(v2 + 56) != v4)
  {
    swift_beginAccess();
    sub_1C59318C8(v2 + 16, v8);
    v5 = v9;
    v6 = v10;
    v7 = __swift_project_boxed_opaque_existential_0(v8, v9);
    sub_1C593192C(v7, v4, v2, v5, v6);
    __swift_destroy_boxed_opaque_existential_0(v8);
  }

  *(v2 + 56) = v4;

  sub_1C5BA0FDC();
}

void sub_1C5BA81A4()
{
  *(v0 + qword_1EDA47FB8) = 0;
  *(v0 + qword_1EDA47FA0) = 0;
  *(v0 + qword_1EDA47FA8) = 0;
  *(v0 + qword_1EDA47F90) = MEMORY[0x1E69E7CD0];
  v1 = qword_1EDA47F98;
  type metadata accessor for NowPlayingRouteObserver(0);
  swift_allocObject();
  *(v0 + v1) = sub_1C5930D44();
  *(v0 + qword_1EDA47F30) = 0;
  *(v0 + qword_1EDA47F20 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + qword_1EDA47F78) = 0;
  *(v0 + qword_1EDA47F60) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + qword_1EDA481F0) = 0;
  *(v0 + qword_1EDA47FD0) = 0;
  *(v0 + qword_1EDA47FC8) = 0;
  *(v0 + qword_1EDA47F50) = 0;
  *(v0 + qword_1EDA47F68) = 0;
  *(v0 + qword_1EDA47FE0) = 0;
  *(v0 + qword_1EDA47F88) = 0;
  *(v0 + qword_1EDA48200) = 0;
  *(v0 + qword_1EDA47F48) = 0;
  v2 = v0 + qword_1EDA47F40;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0;
  sub_1C5BCBBC4();
  __break(1u);
}

void sub_1C5BA8340(void *a1)
{
  v3 = *(v1 + qword_1EDA47FD0);
  *(v1 + qword_1EDA47FD0) = a1;
  v2 = a1;
  sub_1C5B9E3D0(v3, &qword_1EDA47FD0);
}

void sub_1C5BA83A0(void *a1)
{
  v3 = *(v1 + qword_1EDA47FC8);
  *(v1 + qword_1EDA47FC8) = a1;
  v2 = a1;
  sub_1C5B9E3D0(v3, &qword_1EDA47FC8);
}

id sub_1C5BA8410(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  *&v1[qword_1EC19A2B0] = MEMORY[0x1E69E7CC0];
  v1[qword_1EC19A2B8] = 0;
  swift_unknownObjectWeakAssign();
  v4.receiver = v1;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_init);
}

double sub_1C5BA84A0(void *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = *MEMORY[0x1E69E7D40] & *v2;
    if ([swift_unknownObjectRetain() isAnimated])
    {

      swift_unknownObjectRelease();
    }

    else
    {
      v6 = [a1 viewControllerForKey_];
      if (v6)
      {
        v7 = v6;
        type metadata accessor for ContentViewController();
        v8 = swift_dynamicCastClass();
        if (v8)
        {
          sub_1C5937994(v8);
        }
      }

      (*(*(v4 + 88) + 224))(*(v4 + 80));

      v9 = 1;
      sub_1C59A8494(&v9);
      swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_1C5BA85F4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1C5BA1BB4(a1, a2, a3, a4);
  v7 = sub_1C5934434();
  if (v7)
  {
    v8 = v7;
    v9 = [objc_opt_self() currentTraitCollection];
    v10 = [v9 horizontalSizeClass];

    if (v10 == 1)
    {
      sub_1C5BA210C(v6, v8);
      sub_1C592535C(0, &qword_1EDA4E078, 0x1E69DD250);
      v11 = sub_1C5BCAAE4();
      MEMORY[0x1EEE9AC00](v11);
      sub_1C5BCB6D4();

      return;
    }
  }

  type metadata accessor for ContentViewController();
  v12 = swift_dynamicCastClass();
  if (v12)
  {
    v13 = v12;
    v14 = a1;
    sub_1C5BA22AC(1);
    v15 = *(v4 + qword_1EDA47FE0);
    if (v15)
    {
      v16 = v15;
      v17 = [v13 view];
      if (v17)
      {
        v18 = v17;
        [v17 bounds];
        v20 = v19;
        v22 = v21;
        v24 = v23;
        v26 = v25;

        [v16 setFrame_];
        sub_1C5937994(v13);

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void sub_1C5BA87EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *MEMORY[0x1E69E7D40] & *v4;
  v6 = sub_1C5BA1BB4(a1, a2, a3, a4);
  [v6 setIsReversed_];
  v7 = sub_1C5934434();
  if (v7)
  {
    v8 = v7;
    v9 = [objc_opt_self() currentTraitCollection];
    v10 = [v9 horizontalSizeClass];

    if (v10 == 1)
    {

      sub_1C5BA210C(v6, v8);
      v11 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v12 = swift_allocObject();
      v12[2] = *(v5 + 80);
      v12[3] = *(v5 + 88);
      v12[4] = v11;
      v46 = sub_1C5BA94B8;
      v47 = v12;
      v42 = MEMORY[0x1E69E9820];
      v43 = 1107296256;
      v44 = sub_1C5AECA14;
      v45 = &block_descriptor_241;
      v13 = _Block_copy(&v42);

      [v6 addNoninteractiveCompletion_];
      _Block_release(v13);
      v14 = 0;
      v15 = 0;
LABEL_11:

      sub_1C59261FC(v14, v15);
      return;
    }
  }

  v16 = objc_opt_self();
  v15 = swift_allocObject();
  *(v15 + 16) = v4;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1C5BA9490;
  *(v17 + 24) = v15;
  v46 = sub_1C5AF76A8;
  v47 = v17;
  v42 = MEMORY[0x1E69E9820];
  v43 = 1107296256;
  v44 = sub_1C59D32C0;
  v45 = &block_descriptor_234;
  v18 = _Block_copy(&v42);
  v19 = v4;

  [v16 performWithoutAnimation_];
  _Block_release(v18);
  LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

  if (v16)
  {
    __break(1u);
    goto LABEL_13;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v21 = Strong;
  v22 = [Strong view];

  if (!v22)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  [v22 frame];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;

  v31 = swift_unknownObjectWeakLoadStrong();
  if (!v31)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v32 = v31;
  v33 = [v31 view];

  if (v33)
  {
    [v33 frame];
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v41 = v40;

    v48.origin.x = v35;
    v48.origin.y = v37;
    v48.size.width = v39;
    v48.size.height = v41;
    [v6 setSourceFrame_];
    v14 = sub_1C5BA9490;
    v8 = v6;
    goto LABEL_11;
  }

LABEL_16:
  __break(1u);
}

void sub_1C5BA8C20()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x1E69DCE28]) init];
  v3 = *(v0 + qword_1EDA47FA0);
  if (!v3)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = v2;
  v5 = MEMORY[0x1E69E7D40];
  v6 = *((*MEMORY[0x1E69E7D40] & *v3) + 0xC0);
  v7 = v3;
  v8 = v6();
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = 14.0;
  if (_UISolariumEnabled())
  {
    v16 = *(v1 + qword_1EDA47FA0);
    if (!v16)
    {
LABEL_15:
      __break(1u);
      return;
    }

    v17 = *((*v5 & *v16) + 0xC0);
    v18 = v16;
    v19 = v17();
    v21 = v20;
    v23 = v22;
    v25 = v24;

    v32.origin.x = v19;
    v32.origin.y = v21;
    v32.size.width = v23;
    v32.size.height = v25;
    v15 = CGRectGetHeight(v32) * 0.5;
  }

  v26 = [objc_opt_self() bezierPathWithRoundedRect:v8 cornerRadius:{v10, v12, v14, v15}];
  [v4 setVisiblePath_];

  if (_UISolariumEnabled())
  {
    v27 = [objc_opt_self() clearColor];
    [v4 setBackgroundColor_];
  }

  v28 = *(v1 + qword_1EDA47FA0);
  if (!v28)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  type metadata accessor for CollapsedTabAccessoryViewController();
  v29 = swift_dynamicCastClass();
  if (v29)
  {
    v30 = *(v29 + OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC35CollapsedTabAccessoryViewController_miniPlayerContainer);
LABEL_11:
    v31 = v30;
    [objc_allocWithZone(MEMORY[0x1E69DD070]) initWithView:v31 parameters:v4];

    return;
  }

  v30 = *(v28 + OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC21ContentViewController_contentView);
  if (v30)
  {
    goto LABEL_11;
  }
}

uint64_t objectdestroy_131Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1C5BA9518(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 6);
  v7 = *(v1 + 7);
  v8 = v1[8];
  v9 = v1[9];
  v10 = v1[10];
  v11 = v1[11];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1C592ABD4;

  return sub_1C5B9DAE8(v8, v9, v10, v11, a1, v4, v5, v6, v7);
}

uint64_t sub_1C5BA9614(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C5BA968C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C5BA96C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 88);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C5BA9710(uint64_t result, int a2, int a3)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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
      *(result + 88) = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1C5BA984C(unint64_t a1)
{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1C5BAA70C(v3);
  }

  v4 = *(v3 + 2);
  if (v4 <= a1)
  {
    __break(1u);
  }

  else
  {
    v5 = v4 - 1;
    memmove(&v3[16 * a1 + 32], &v3[16 * a1 + 48], 16 * (v4 - 1 - a1));
    *(v3 + 2) = v5;
    *v1 = v3;
  }
}

uint64_t sub_1C5BA98F0()
{
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = v1;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  *(v0 + 64) = 1045220557;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A508, &unk_1C5BF3D50);
  v2 = sub_1C5BCB0C4();
  *(v2 + 16) = 4;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v0 + 112) = v2;
  *(v0 + 120) = &unk_1F4518978;
  return v0;
}

void sub_1C5BA9978(void *a1)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = v3;
    v5 = sub_1C5BA9BC0();
    [v4 unregisterObserver_];

    v6 = *(v1 + 16);
  }

  else
  {
    v6 = 0;
  }

  *(v1 + 16) = a1;
  v10 = a1;

  v7 = *(v1 + 16);
  if (v7)
  {
    v8 = v7;
    v9 = sub_1C5BA9BC0();
    [v8 registerObserver_];
  }
}

double sub_1C5BA9A40()
{
  __asm { FMOV            V1.4S, #1.0 }

  v13 = vminnmq_f32(vmaxnmq_f32(v0[3], 0), _Q1);
  __asm { FMOV            V1.4S, #3.0; y }

  v7 = _simd_pow_f4(v13, _Q1);
  __asm
  {
    FMOV            V1.4S, #6.0
    FMOV            V2.4S, #-15.0
  }

  v10 = vmulq_f32(v13, vaddq_f32(vmulq_f32(v13, _Q1), _Q2));
  __asm { FMOV            V2.4S, #10.0 }

  *&result = vmulq_f32(v7, vaddq_f32(v10, _Q2)).u64[0];
  return result;
}

uint64_t SpectrumAnalysis.deinit()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = v1;
    v3 = sub_1C5BA9BC0();
    [v2 unregisterObserver_];

    v1 = *(v0 + 16);
  }

  return v0;
}

uint64_t SpectrumAnalysis.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = v1;
    v3 = sub_1C5BA9BC0();
    [v2 unregisterObserver_];

    v1 = *(v0 + 16);
  }

  return swift_deallocClassInstance();
}

id sub_1C5BA9BC0()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 24);
  }

  else
  {
    v3 = sub_1C5BA9C1C(v0);
    v4 = *(v0 + 24);
    *(v0 + 24) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

id sub_1C5BA9C1C(uint64_t a1)
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69B0840]) init];
  LODWORD(v2) = 20.0;
  LODWORD(v3) = 1133903872;
  [v1 addFrequencyBand_];
  LODWORD(v4) = 1133903872;
  LODWORD(v5) = 1163575296;
  [v1 addFrequencyBand_];
  LODWORD(v6) = 1186693120;
  LODWORD(v7) = 1163575296;
  [v1 addFrequencyBand_];
  v8 = swift_allocObject();
  swift_weakInit();
  v11[4] = sub_1C5BAA830;
  v11[5] = v8;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1C5A07474;
  v11[3] = &block_descriptor_34_1;
  v9 = _Block_copy(v11);

  [v1 setOnUpdate_];
  _Block_release(v9);
  return v1;
}

double sub_1C5BA9D78(void *a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1C5BAA180(a1);
  }

  return result;
}

void sub_1C5BA9E0C(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 32) = a1;
  swift_beginAccess();
  v3 = *(v1 + 32);
  for (i = *(v1 + 40); v3 < *(i + 2); i = *(v1 + 40))
  {
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + 40) = i;
    if (isUniquelyReferenced_nonNull_native)
    {
      v6 = *(i + 2);
      if (!v6)
      {
        goto LABEL_7;
      }
    }

    else
    {
      i = sub_1C5BAA70C(i);
      *(v1 + 40) = i;
      v6 = *(i + 2);
      if (!v6)
      {
LABEL_7:
        __break(1u);
        return;
      }
    }

    v7 = v6 - 1;
    memmove(i + 32, i + 48, 16 * (v6 - 1));
    *(i + 2) = v7;
    *(v1 + 40) = i;
    swift_endAccess();
    v3 = *(v1 + 32);
  }
}

uint64_t (*sub_1C5BA9EEC(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  *a1 = v3;
  *(v3 + 48) = v1;
  swift_beginAccess();
  return sub_1C5BA9F64;
}

void sub_1C5BA9F64(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[6];
    swift_beginAccess();
    v5 = *(v4 + 40);
    if (*(v4 + 32) < *(v5 + 2))
    {
      do
      {
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v4 + 40) = v5;
        if (isUniquelyReferenced_nonNull_native)
        {
          v7 = *(v5 + 2);
          if (!v7)
          {
            goto LABEL_8;
          }
        }

        else
        {
          v5 = sub_1C5BAA70C(v5);
          *(v4 + 40) = v5;
          v7 = *(v5 + 2);
          if (!v7)
          {
LABEL_8:
            __break(1u);
            break;
          }
        }

        v8 = v3[6];
        v9 = v7 - 1;
        memmove(v5 + 32, v5 + 48, 16 * (v7 - 1));
        *(v5 + 2) = v9;
        *(v4 + 40) = v5;
        swift_endAccess();
        v5 = *(v4 + 40);
      }

      while (*(v8 + 32) < *(v5 + 2));
    }
  }

  free(v3);
}

float32x4_t sub_1C5BAA068()
{
  v1 = v0[6];
  *v2.f32 = vdiv_f32(*v1.f32, 0x42C8000042480000);
  v2.i32[3] = vextq_s8(*&v1, *&v1, 8uLL).i32[1];
  v2.f32[2] = COERCE_FLOAT(v0[6].i64[1]) / 1000.0;
  v8 = vsubq_f32(v1, v2);
  sub_1C5BAA0DC();
  v4 = vmaxnmq_f32(v8, v3);
  v0[6] = v4;
  v5 = v0[3];
  result = vsubq_f32(v4, v5);
  v7.i64[0] = 0x3F0000003F000000;
  v7.i64[1] = 0x3F0000003F000000;
  v0[3] = vmlaq_f32(v5, v7, result);
  return result;
}

void sub_1C5BAA0DC()
{
  swift_beginAccess();
  v1 = *(v0 + 112);
  v2 = v1[1].i64[0];
  if (v2)
  {
    v3 = *(v0 + 120);
    v4 = *(v3 + 16);
    if (!v4)
    {
LABEL_9:
      __break(1u);
      return;
    }

    v5 = vaddq_f32(vmulq_n_f32(v1[2], *(v3 + 32)), 0);
    v6 = v2 - 1;
    if (v6)
    {
      v7 = 0;
      v8 = v3 + 36;
      v9 = v1 + 3;
      while (1)
      {
        v10 = v7 + 1;
        if (v7 + 1 >= v4)
        {
          break;
        }

        v5 = vaddq_f32(v5, vmulq_n_f32(v9[v7], *(v8 + 4 * v7)));
        ++v7;
        if (v6 == v10)
        {
          return;
        }
      }

      goto LABEL_9;
    }
  }
}

uint64_t sub_1C5BAA180(void *a1)
{
  v2 = v1;
  v4 = sub_1C5BCAC14();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C5BCAC44();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C5BAA48C();
  sub_1C5BAA7D8(v12);
  v26 = v13;

  [a1 powerLevel];
  v15 = log10f(v14) * 20.0;
  v16.i64[0] = vdivq_f32(vmulq_n_f32(v26, v15), vdupq_n_s32(0x42F00000u)).u64[0];
  v16.f32[2] = vmuls_lane_f32(v15, v26, 2) / 120.0;
  v16.f32[3] = v15;
  __asm { FMOV            V1.4S, #1.0 }

  v26 = vmulq_n_f32(vminnmq_f32(vmaxnmq_f32(v16, 0), _Q1), *(v2 + 64));
  sub_1C5929CA0();
  v22 = sub_1C5BCB5A4();
  v23 = swift_allocObject();
  v23[1].i64[0] = v2;
  v23[2] = v26;
  aBlock[4] = sub_1C5BAA824;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C596D09C;
  aBlock[3] = &block_descriptor_28;
  v24 = _Block_copy(aBlock);

  sub_1C5BCAC34();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1C59F9D08();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1961C0, &unk_1C5BD76A0);
  sub_1C5A3437C();
  sub_1C5BCB8F4();
  MEMORY[0x1C694F7F0](0, v11, v7, v24);
  _Block_release(v24);

  (*(v5 + 8))(v7, v4);
  return (*(v9 + 8))(v11, v8);
}

unint64_t sub_1C5BAA48C()
{
  result = [v0 numberOfBands];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    if (!result)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v3 = 0;
    v4 = MEMORY[0x1E69E7CC0];
    do
    {
      [v0 averagePowerOfFrequencyBandAtIndex:v3 frequencyBand:0];
      v6 = v5;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_1C5B76528(0, *(v4 + 2) + 1, 1, v4);
      }

      v8 = *(v4 + 2);
      v7 = *(v4 + 3);
      if (v8 >= v7 >> 1)
      {
        v4 = sub_1C5B76528((v7 > 1), v8 + 1, 1, v4);
      }

      ++v3;
      *(v4 + 2) = v8 + 1;
      *&v4[4 * v8 + 32] = v6;
    }

    while (v2 != v3);
    return v4;
  }

  return result;
}

uint64_t sub_1C5BAA594(uint64_t a1, __n128 a2)
{
  swift_beginAccess();
  sub_1C5BA984C(0);
  v3 = *(a1 + 112);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + 112) = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_1C5B77350(0, *(v3 + 2) + 1, 1, v3);
    *(a1 + 112) = v3;
  }

  v6 = *(v3 + 2);
  v5 = *(v3 + 3);
  if (v6 >= v5 >> 1)
  {
    v3 = sub_1C5B77350((v5 > 1), v6 + 1, 1, v3);
  }

  *(v3 + 2) = v6 + 1;
  *&v3[16 * v6 + 32] = a2;
  *(a1 + 112) = v3;
  return swift_endAccess();
}

uint64_t sub_1C5BAA680(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1C5BCB984();
  }

  return sub_1C5BCBAF4();
}

uint64_t sub_1C5BAA7D8(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    goto LABEL_6;
  }

  if ((v1 - 1) > 2)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 != 3)
  {
LABEL_6:
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for ParallaxBackButtonLabel(uint64_t a1)
{
  result = qword_1EC19A510;
  if (!qword_1EC19A510)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C5BAA8B4(uint64_t a1)
{
  sub_1C5A3B4E0(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1C5BAA93C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a1;
  v60 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A528, &qword_1C5BF3DD0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v46 - v3;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A530, &qword_1C5BF3DD8);
  MEMORY[0x1EEE9AC00](v47);
  v6 = &v46 - v5;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A538, &qword_1C5BF3DE0);
  MEMORY[0x1EEE9AC00](v49);
  v52 = &v46 - v7;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A540, &qword_1C5BF3DE8);
  MEMORY[0x1EEE9AC00](v48);
  v58 = &v46 - v8;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A548, &qword_1C5BF3DF0);
  MEMORY[0x1EEE9AC00](v50);
  v57 = &v46 - v9;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A550, &qword_1C5BF3DF8);
  MEMORY[0x1EEE9AC00](v56);
  v54 = &v46 - v10;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A558, &qword_1C5BF3E00);
  MEMORY[0x1EEE9AC00](v51);
  v59 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v46 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v55 = &v46 - v16;
  v17 = sub_1C5BCA5A4();
  v18 = sub_1C5BC9A04();
  KeyPath = swift_getKeyPath(byte_1C5BF3E08);
  *&v61 = v17;
  *(&v61 + 1) = KeyPath;
  *&v62 = v18;
  sub_1C5BC9994();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192C70, &qword_1C5BD6C58);
  sub_1C5958260();
  sub_1C5BC9D14();

  v20 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A560, &unk_1C5BF3E38) + 36)];
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192C78, &qword_1C5BD9590) + 28);
  v22 = *MEMORY[0x1E69816E0];
  v23 = sub_1C5BCA5D4();
  (*(*(v23 - 8) + 104))(&v20[v21], v22, v23);
  *v20 = swift_getKeyPath(byte_1C5BF3E48);
  sub_1C5BC8904();
  if (qword_1EC190910 != -1)
  {
    swift_once();
  }

  sub_1C5BCAA54();
  sub_1C5BC8BD4();
  sub_1C59E7D34(v4, v6, &qword_1EC19A528, &qword_1C5BF3DD0);
  v24 = &v6[*(v47 + 36)];
  v25 = v66;
  *(v24 + 4) = v65;
  *(v24 + 5) = v25;
  *(v24 + 6) = v67;
  v26 = v62;
  *v24 = v61;
  *(v24 + 1) = v26;
  v27 = v64;
  *(v24 + 2) = v63;
  *(v24 + 3) = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194518, &unk_1C5BF03D0);
  sub_1C5BC84D4();
  sub_1C5BC84D4();
  sub_1C5BCAA54();
  sub_1C5BC85D4();
  v28 = v52;
  sub_1C59E7D34(v6, v52, &qword_1EC19A530, &qword_1C5BF3DD8);
  v29 = (v28 + *(v49 + 36));
  v30 = v69;
  *v29 = v68;
  v29[1] = v30;
  v29[2] = v70;
  v31 = v58;
  v32 = &v58[*(v48 + 36)];
  sub_1C5BCA9D4();
  v33 = sub_1C5BC9894();
  v32[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC196120, &qword_1C5BE2C40) + 36)] = v33;
  sub_1C59E7D34(v28, v31, &qword_1EC19A538, &qword_1C5BF3DE0);
  v34 = swift_getKeyPath(byte_1C5BF3E80);
  v35 = v57;
  v36 = &v57[*(v50 + 36)];
  v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC196130, &qword_1C5BEA710) + 28);
  v38 = *MEMORY[0x1E697DBA8];
  v39 = sub_1C5BC8284();
  (*(*(v39 - 8) + 104))(v36 + v37, v38, v39);
  *v36 = v34;
  sub_1C59E7D34(v31, v35, &qword_1EC19A540, &qword_1C5BF3DE8);
  v40 = v54;
  sub_1C59E7D34(v35, v54, &qword_1EC19A548, &qword_1C5BF3DF0);
  *(v40 + *(v56 + 36)) = 256;
  sub_1C59E7D34(v40, v14, &qword_1EC19A550, &qword_1C5BF3DF8);
  v14[*(v51 + 36)] = 0;
  v41 = v55;
  sub_1C59E7D34(v14, v55, &qword_1EC19A558, &qword_1C5BF3E00);
  v42 = v59;
  sub_1C5999650(v41, v59);
  v43 = v60;
  sub_1C5999650(v42, v60);
  v44 = v43 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A568, &qword_1C5BF3EB8) + 48);
  *v44 = 0;
  *(v44 + 8) = 0;
  sub_1C59996C0(v41);
  return sub_1C59996C0(v42);
}

uint64_t sub_1C5BAB170@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_1C5BC8FC4();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A520, &qword_1C5BF3DC8);
  return sub_1C5BAA93C(v2, a2 + *(v4 + 44));
}

void sub_1C5BAB1D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1C5BC8894();
  sub_1C5BAC158();
  sub_1C5BCB3D4();
  v9 = sub_1C5BCB424();
  if (v35 >= v36)
  {
    MEMORY[0x1EEE9AC00](v9);
    v33[2] = a5;
    v34 = 1;
    sub_1C5A7D428(sub_1C5BAC1D4, v33, v10, v11);
    v13 = *(v12 + 16);
    v14 = 0.0;
    if (!v13)
    {
      goto LABEL_10;
    }

    if (v13 > 3)
    {
      v15 = v13 & 0x7FFFFFFFFFFFFFFCLL;
      v16 = (v12 + 48);
      v17 = v13 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v14 = v14 + *(v16 - 2) + *(v16 - 1) + *v16 + v16[1];
        v16 += 4;
        v17 -= 4;
      }

      while (v17);
      if (v13 == v15)
      {
LABEL_10:

        CGSizeMake();
        sub_1C5BABE00(a5, v21, 0, a7);
        v23 = *(v22 + 16);
        if (v23)
        {
          if (v23 == 1)
          {
            v24 = 0;
            v25 = 0.0;
          }

          else
          {
            v24 = v23 & 0x7FFFFFFFFFFFFFFELL;
            v26 = (v22 + 56);
            v25 = 0.0;
            v27 = v23 & 0x7FFFFFFFFFFFFFFELL;
            do
            {
              v28 = *(v26 - 2);
              v29 = *v26;
              v26 += 4;
              v25 = v25 + v28 + v29;
              v27 -= 2;
            }

            while (v27);
            if (v23 == v24)
            {
              goto LABEL_18;
            }
          }

          v30 = v23 - v24;
          v31 = (v22 + 16 * v24 + 40);
          do
          {
            v32 = *v31;
            v31 += 2;
            v25 = v25 + v32;
            --v30;
          }

          while (v30);
        }

LABEL_18:

        CGSizeMake();
        return;
      }
    }

    else
    {
      v15 = 0;
    }

    v18 = v13 - v15;
    v19 = (v12 + 8 * v15 + 32);
    do
    {
      v20 = *v19++;
      v14 = v14 + v20;
      --v18;
    }

    while (v18);
    goto LABEL_10;
  }

  __break(1u);
}

void sub_1C5BAB400(uint64_t a1, char a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, double a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v61 = a13;
  v58 = sub_1C5BC8744();
  v22 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v24 = v54 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a1;
  v26 = a10;
  sub_1C5BABE00(a10, v25, a2 & 1, a12);
  v28 = v27;
  sub_1C5BC8894();
  sub_1C5BAC158();
  sub_1C5BCB3D4();
  v29 = sub_1C5BCB424();
  if (v62 < v63)
  {
    __break(1u);
    goto LABEL_24;
  }

  MEMORY[0x1EEE9AC00](v29);
  v54[-2] = a10;
  LOBYTE(v54[-1]) = 1;
  sub_1C5A7D428(sub_1C5BAC1B0, &v54[-4], v30, v31);
  v33 = v32;
  v64.origin.x = a3;
  v64.origin.y = a4;
  v64.size.width = a5;
  v64.size.height = a6;
  MinY = CGRectGetMinY(v64);
  sub_1C5BCB3D4();
  sub_1C5BCB424();
  v36 = v62;
  v37 = v63;
  if (v62 < v63)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v63 == v62)
  {
LABEL_22:

    return;
  }

  if (v63 >= v62)
  {
    goto LABEL_25;
  }

  if (v63 < 0)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v38 = *(v28 + 16);
  if (v63 >= v38 || v62 - 1 >= v38)
  {
    goto LABEL_27;
  }

  v39 = *(v33 + 16);
  if (v63 < v39 && v62 - 1 < v39)
  {
    v60 = a3;
    v40 = a7 * 0.5 + MinY;
    v54[0] = v33;
    v54[1] = v28;
    v59 = v33 + 32;
    v56 = "kLayout(lineLimit: ";
    v41 = (v22 + 8);
    v42 = (v28 + 16 * v63 + 40);
    *&v35 = 136315138;
    v55 = v35;
    v43 = a6;
    v44 = a5;
    v45 = v58;
    v57 = v26;
    do
    {
      v46 = *v42;
      sub_1C5BC9144();
      if (sub_1C5BC9124())
      {
        v65.origin.x = v60;
        v65.origin.y = a4;
        v65.size.width = a5;
        v65.size.height = a6;
        CGRectGetMinX(v65);
        sub_1C5BCAB94();
      }

      else
      {
        sub_1C5BC9154();
        if (sub_1C5BC9124())
        {
          v66.origin.x = v60;
          v66.origin.y = a4;
          v66.size.width = a5;
          v66.size.height = a6;
          CGRectGetMaxX(v66);
          sub_1C5BCABA4();
        }

        else
        {
          sub_1C5BC9134();
          v47 = sub_1C5BC9124();
          v67.origin.x = v60;
          v67.origin.y = a4;
          v67.size.width = a5;
          v67.size.height = a6;
          CGRectGetMidX(v67);
          sub_1C5BCABB4();
          if ((v47 & 1) == 0)
          {
            if (qword_1EC1909C8 != -1)
            {
              swift_once();
            }

            v48 = sub_1C5BC7D64();
            __swift_project_value_buffer(v48, qword_1EC1A6E50);
            v49 = sub_1C5BC7D44();
            v50 = sub_1C5BCB4E4();
            if (os_log_type_enabled(v49, v50))
            {
              v51 = swift_slowAlloc();
              v52 = swift_slowAlloc();
              v63 = v52;
              *v51 = v55;
              *(v51 + 4) = sub_1C592ADA8(0xD000000000000013, v56 | 0x8000000000000000, &v63);
              _os_log_impl(&dword_1C5922000, v49, v50, "Unhandled case for %s: falling back to .center", v51, 0xCu);
              v53 = __swift_destroy_boxed_opaque_existential_0(v52);
              MEMORY[0x1C69510F0](v52, -1, -1, v53);
              MEMORY[0x1C69510F0](v51, -1, -1);
            }

            v45 = v58;
          }
        }
      }

      sub_1C5BC88A4();
      LOBYTE(v63) = 0;
      LOBYTE(v62) = 0;
      sub_1C5BC8724();
      (*v41)(v24, v45);
      v40 = v40 + v46 + *(v59 + 8 * v37);
      v42 += 2;
      ++v37;
      a6 = v43;
      a5 = v44;
    }

    while (v36 != v37);
    goto LABEL_22;
  }

LABEL_28:
  __break(1u);
}

uint64_t sub_1C5BAB904@<X0>(uint64_t *a1@<X0>, int a2@<W2>, double *a3@<X8>)
{
  v32 = a3;
  v29 = a2;
  v5 = sub_1C5BC8444();
  v30 = *(v5 - 8);
  v31 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v28 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v26 - v8;
  v27 = sub_1C5BC8744();
  v10 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v26 - v14;
  v16 = *a1;
  sub_1C5BC8894();
  sub_1C5BAC158();
  sub_1C5BCB3D4();
  sub_1C5BCB424();
  result = sub_1C5BCB414();
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else
  {
    v18 = 0;
    if (v16 < result - 1)
    {
      sub_1C5BC88A4();
      sub_1C5BC8734();
      v19 = *(v10 + 8);
      v20 = v15;
      v21 = v27;
      v19(v20, v27);
      sub_1C5BC88A4();
      v22 = v28;
      sub_1C5BC8734();
      v19(v12, v21);
      sub_1C5BC8434();
      v18 = v23;
      v24 = v31;
      v25 = *(v30 + 8);
      v25(v22, v31);
      result = (v25)(v9, v24);
    }

    *v32 = v18;
  }

  return result;
}

void (*sub_1C5BABBF0(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1C5BC8134();
  return sub_1C599BD44;
}

unint64_t sub_1C5BABC7C()
{
  result = qword_1EDA486A8;
  if (!qword_1EDA486A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA486A8);
  }

  return result;
}

unint64_t sub_1C5BABCD0()
{
  sub_1C5BCBA94();

  v0 = sub_1C5BCBD64();
  MEMORY[0x1C694F170](v0);

  MEMORY[0x1C694F170](15913, 0xE200000000000000);
  return 0xD000000000000023;
}

uint64_t sub_1C5BABD7C()
{
  v0 = sub_1C5BC7D64();
  __swift_allocate_value_buffer(v0, qword_1EC1A6E50);
  __swift_project_value_buffer(v0, qword_1EC1A6E50);
  return sub_1C5BC7D54();
}

void sub_1C5BABE00(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v36 = a2;
  v38 = sub_1C5BC8744();
  v7 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C5BC8894();
  sub_1C5BAC158();
  v11 = sub_1C5BCB3E4();
  if (!v11)
  {
    return;
  }

  v12 = v11;
  v43 = MEMORY[0x1E69E7CC0];
  sub_1C5B8F178(0, v11 & ~(v11 >> 63), 0);
  v13 = v43;
  v39 = v10;
  sub_1C5BCB3D4();
  if (v12 < 0)
  {
    goto LABEL_25;
  }

  v14 = (v7 + 16);
  v15 = a3;
  v16 = (v7 + 8);
  HIDWORD(v35) = v15 & 1;
  v37 = a1;
  while (1)
  {
    v17 = sub_1C5BCB484();
    v18 = v38;
    (*v14)(v9);
    v17(&v41, 0);
    if (a4 <= 0)
    {
      (*v16)(v9, v18);
      v31 = 0.0;
      v25 = 0;
      goto LABEL_17;
    }

    sub_1C5BC8B64();
    LOBYTE(v41) = v19 & 1;
    v40 = v20 & 1;
    sub_1C5BC8714();
    v22 = v21;
    LOBYTE(v41) = BYTE4(v35);
    v40 = 1;
    sub_1C5BC8714();
    v25 = v24;
    v26 = floor(v23 / v22);
    if ((*&v26 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      break;
    }

    if (v26 <= -9.22337204e18)
    {
      goto LABEL_22;
    }

    if (v26 >= 9.22337204e18)
    {
      goto LABEL_23;
    }

    v27 = v23;
    v28 = v26;
    sub_1C5AD4C0C();
    sub_1C5BC8754();
    (*v16)(v9, v18);
    if ((v42 & 1) == 0 && v41 < v28)
    {
      v28 = v41;
    }

    if (a4 >= v28)
    {
      v29 = v28;
    }

    else
    {
      v29 = a4;
    }

    v30 = __OFSUB__(a4, v29);
    a4 -= v29;
    if (v30)
    {
      goto LABEL_24;
    }

    v31 = v27 / v26 * v29;
LABEL_17:
    v43 = v13;
    v33 = *(v13 + 16);
    v32 = *(v13 + 24);
    if (v33 >= v32 >> 1)
    {
      sub_1C5B8F178((v32 > 1), v33 + 1, 1);
      v13 = v43;
    }

    *(v13 + 16) = v33 + 1;
    v34 = v13 + 16 * v33;
    *(v34 + 32) = v25;
    *(v34 + 40) = v31;
    sub_1C5BCB434();
    if (!--v12)
    {
      return;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
}

unint64_t sub_1C5BAC158()
{
  result = qword_1EDA4E1A0;
  if (!qword_1EDA4E1A0)
  {
    sub_1C5BC8894();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA4E1A0);
  }

  return result;
}

double static NowPlayingMiniPlayerAccessoryID.backwardsTransportButton.getter@<D0>(uint64_t a1@<X8>)
{
  result = 7.27378071e175;
  *a1 = xmmword_1C5BF4000;
  *(a1 + 16) = 0;
  return result;
}

double static NowPlayingMiniPlayerAccessoryID.routeButton.getter@<D0>(uint64_t a1@<X8>)
{
  result = 9.74151656e252;
  *a1 = xmmword_1C5BF4030;
  *(a1 + 16) = 0;
  return result;
}

double static NowPlayingMiniPlayerAccessoryID.volumeControl.getter@<D0>(uint64_t a1@<X8>)
{
  result = 9.18974417e227;
  *a1 = xmmword_1C5BF4040;
  *(a1 + 16) = 0;
  return result;
}

double static NowPlayingMiniPlayerAccessoryID.contextMenu.getter@<D0>(uint64_t a1@<X8>)
{
  result = 1.34735875e65;
  *a1 = xmmword_1C5BF4050;
  *(a1 + 16) = 0;
  return result;
}

double static NowPlayingMiniPlayerAccessoryID.lookup(_:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = 1;

  return result;
}

uint64_t static NowPlayingMiniPlayerAccessoryID.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v11 = *a1;
  v12 = v2;
  v13 = v3;
  v8 = v4;
  v9 = v5;
  v10 = v6;
  sub_1C595154C();
  sub_1C595154C();
  LOBYTE(v4) = sub_1C59515EC(&v11, &v8);
  sub_1C5950CE4(v8, v9);
  sub_1C5950CE4(v11, v12);
  return v4 & 1;
}

uint64_t NowPlayingMiniPlayerAccessoryID.hash(into:)(uint64_t a1)
{
  MEMORY[0x1C69501A0](*(v1 + 16));

  return sub_1C5BCAF04();
}

uint64_t NowPlayingMiniPlayerAccessoryID.hashValue.getter()
{
  v1 = *(v0 + 16);
  sub_1C5BCBF54();
  MEMORY[0x1C69501A0](v1);
  sub_1C5BCAF04();
  return sub_1C5BCBF94();
}

unint64_t sub_1C5BAC3E4()
{
  result = qword_1EC19A600[0];
  if (!qword_1EC19A600[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC19A600);
  }

  return result;
}

uint64_t static NowPlayingLookupID.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1C5BCBDE4();
  }
}

uint64_t NowPlayingLookupID.hashValue.getter()
{
  sub_1C5BCBF54();
  sub_1C5BCAF04();
  return sub_1C5BCBF94();
}

uint64_t sub_1C5BAC54C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = v6 | 7;
  v9 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v10 = *(*(*(a3 + 24) - 8) + 64) - (((-9 - v6) | v6) + ((-9 - v6) | v8)) - 2;
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_26:
      v16 = ((a1 + v8 + 8) & ~v8);
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((v16 + v6 + 8) & ~v6);
      }

      v17 = *v16;
      if (v17 >= 0xFFFFFFFF)
      {
        LODWORD(v17) = -1;
      }

      return (v17 + 1);
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_26;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    if (v10 > 2)
    {
      if (v10 == 3)
      {
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v10) = *a1;
      }
    }

    else if (v10 == 1)
    {
      LODWORD(v10) = *a1;
    }

    else
    {
      LODWORD(v10) = *a1;
    }
  }

  return v7 + (v10 | v15) + 1;
}

void sub_1C5BAC6F4(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 24) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = *(*(*(a4 + 24) - 8) + 64) - (((-9 - v9) | v9) + ((-9 - v9) | v9 | 7)) - 2;
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (*(*(*(a4 + 24) - 8) + 64) - (((-9 - v9) | v9) + ((-9 - v9) | v9 | 7)) != 2)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_47:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_47;
            }
          }

          goto LABEL_44;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

LABEL_44:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
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
  v19 = (&a1[(v9 | 7) + 8] & ~(v9 | 7));
  if ((v7 & 0x80000000) != 0)
  {
    v21 = *(v6 + 56);

    v21((v19 + v9 + 8) & ~v9);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v20 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v20 = a2 - 1;
    }

    *v19 = v20;
  }
}

uint64_t sub_1C5BAC968(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_1C5BCADA4();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C5BACA04(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = *(v4 + 80);
  v6 = *(*(*(a3 + 16) - 8) + 64);
  v9 = ((((v6 + v8) | v8) + ((v6 + v8) & ~v8) + v6) & ~v8) + ((v6 + v8) & ~v8) + v6;
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v12 = ((v7 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v12))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v12 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v12 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_22;
  }

LABEL_11:
  v13 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v13 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v5 + (v9 | v13) + 1;
}

char *sub_1C5BACB64(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = v5;
  v7 = *(v5 + 84);
  v8 = *(v5 + 80);
  v9 = ((((*(v5 + 64) + v8) | v8) + ((*(v5 + 64) + v8) & ~v8) + *(v5 + 64)) & ~v8) + ((*(v5 + 64) + v8) & ~v8) + *(v5 + 64);
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v9 <= 3)
    {
      v16 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      if (HIWORD(v16))
      {
        v12 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v12 = v17;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a2)
  {
    v13 = ~v7 + a2;
    if (v9 < 4)
    {
      v15 = (v13 >> (8 * v9)) + 1;
      if (v9)
      {
        v18 = v13 & ~(-1 << (8 * v9));
        v19 = result;
        bzero(result, v9);
        result = v19;
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *v19 = v18;
            if (v12 > 1)
            {
LABEL_39:
              if (v12 == 2)
              {
                *&result[v9] = v15;
              }

              else
              {
                *&result[v9] = v15;
              }

              return result;
            }
          }

          else
          {
            *v19 = v13;
            if (v12 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v19 = v18;
        v19[2] = BYTE2(v18);
      }

      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v14 = result;
      bzero(result, v9);
      result = v14;
      *v14 = v13;
      v15 = 1;
      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v12)
    {
      result[v9] = v15;
    }

    return result;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&result[v9] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v9] = 0;
  }

  else if (v12)
  {
    result[v9] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v20 = *(v6 + 56);

  return v20();
}

uint64_t sub_1C5BACDC0(uint64_t a1)
{
  sub_1C5BCBA94();
  MEMORY[0x1C694F170](0x7320746F6E6E6143, 0xED000020656C6163);
  sub_1C5BCBDA4();
  MEMORY[0x1C694F170](0x206D6F726620, 0xE600000000000000);
  sub_1C5BCADA4();
  swift_getWitnessTable();
  sub_1C5BCBDB4();
  MEMORY[0x1C694F170](544175136, 0xE400000000000000);
  sub_1C5BCBDB4();
  MEMORY[0x1C694F170](0xD000000000000032, 0x80000001C5BFEDA0);
  return 0;
}

double sub_1C5BACF24(unint64_t a1, uint64_t a2, char *a3, uint64_t *a4)
{
  v62 = a3;
  v58 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930A0, &qword_1C5BD7440);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v52 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A6E8, &qword_1C5BF46A8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v57 = &v52 - v11;
  v12 = sub_1C5BC7A24();
  v59 = *(v12 - 8);
  v13 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v12);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v52 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v52 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v52 - v21;
  v23 = a4[1];
  v60 = *a4;
  v61 = v23;
  v63[0] = v60;
  v63[1] = v23;
  v24 = sub_1C5BB5B0C(a2, v62, v63);
  v52 = v16;
  v53 = v19;
  v54 = v4;
  v55 = v22;
  v56 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v59;
  v62 = v9;

  v26 = v58;
  v27 = sub_1C5BC7964();
  v28 = v57;
  sub_1C5BB0A98(v27, v29, v57);

  v30 = type metadata accessor for MotionCacheEntry(0);
  if ((*(*(v30 - 8) + 48))(v28, 1, v30) == 1)
  {

    sub_1C5924EF4(v28, &qword_1EC19A6E8, &qword_1C5BF46A8);
  }

  else
  {
    v32 = v25;
    v33 = *(v25 + 16);
    v34 = v53;
    v35 = v12;
    v33(v53, v28, v12);
    sub_1C5BB7BB8(v28, type metadata accessor for MotionCacheEntry);
    v36 = v55;
    v53 = *(v32 + 32);
    v53(v55, v34, v35);
    v37 = v54;
    swift_beginAccess();
    v57 = *(v37 + 48);
    if (v57)
    {
      v38 = sub_1C5BCB214();
      (*(*(v38 - 8) + 56))(v62, 1, 1, v38);
      v39 = v32;
      v40 = v52;
      v33(v52, v36, v35);
      v33(v56, v26, v35);
      v41 = *(v39 + 80);
      v42 = (v41 + 40) & ~v41;
      v43 = (v13 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
      v58 = (v43 + 23) & 0xFFFFFFFFFFFFFFF8;
      v44 = (v41 + v58 + 8) & ~v41;
      v45 = swift_allocObject();
      *(v45 + 2) = 0;
      *(v45 + 3) = 0;
      *(v45 + 4) = v57;
      v46 = v40;
      v47 = v53;
      v53(&v45[v42], v46, v35);
      v48 = &v45[v43];
      v49 = v36;
      v50 = v61;
      *v48 = v60;
      v48[1] = v50;
      *&v45[v58] = v24;
      v47(&v45[v44], v56, v35);

      swift_retain_n();

      v51 = v62;
      sub_1C5A0BB28(0, 0, v62, &unk_1C5BF4AC8, v45);

      sub_1C5924EF4(v51, &qword_1EC1930A0, &qword_1C5BD7440);
      (*(v59 + 8))(v49, v35);
    }

    else
    {
      (*(v32 + 8))(v36, v35);
    }
  }

  return result;
}

uint64_t sub_1C5BAD518()
{
  *(v1 + 72) = v0;
  if (qword_1EC1909D0 != -1)
  {
    swift_once();
  }

  v2 = qword_1EC19A688;
  *(v1 + 80) = qword_1EC19A688;

  return MEMORY[0x1EEE6DFA0](sub_1C5BAD5B4, v2, 0);
}

uint64_t sub_1C5BAD5B4()
{
  v1 = v0[9];
  swift_beginAccess();
  if (*(v1 + 48))
  {
    v5 = v0[1];

    return v5(v2);
  }

  else
  {
    type metadata accessor for MotionCacheDiskStorage(0);
    swift_allocObject();
    *(v1 + 48) = sub_1C5B8079C();

    v3 = swift_task_alloc();
    v0[11] = v3;
    *v3 = v0;
    v3[1] = sub_1C5BAD89C;

    return sub_1C5BB1208();
  }
}

uint64_t sub_1C5BAD89C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = *v5;
  v7 = *v5;
  *(v7 + 96) = a1;
  *(v7 + 104) = a2;
  *(v7 + 128) = a4;
  *(v7 + 112) = a3;
  *(v7 + 120) = v4;

  v8 = *(v6 + 80);
  if (v4)
  {
    v9 = sub_1C5BADF58;
  }

  else
  {
    v9 = sub_1C5BAD9D8;
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, 0);
}

uint64_t sub_1C5BAD9D8()
{
  v58 = v0;
  v1 = *(v0 + 128);
  if (v1 != 255)
  {
    v2 = *(v0 + 112);
    v3 = *(v0 + 72);
    v4 = *(v3 + 16);
    v5 = *(v3 + 24);
    v6 = *(v3 + 32);
    v7 = *(v3 + 40);
    *(v3 + 16) = *(v0 + 96);
    *(v3 + 32) = v2;
    *(v3 + 40) = v1 & 1;
    sub_1C5BB78E0(v4, v5, v6, v7);
  }

  v8 = [objc_opt_self() mainBundle];
  v9 = [v8 infoDictionary];

  if (v9)
  {
    v10 = sub_1C5BCACB4();
  }

  else
  {
    v10 = 0;
  }

  v11 = *(v0 + 120);
  v12 = sub_1C5A07F2C(v10);
  if (v11)
  {
    if (qword_1EC1909E0 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_39;
  }

  v16 = v15;
  v17 = v12;
  v18 = v13;
  v19 = v14;
  sub_1C5BB157C(v12, v13, v14, v15 & 1);
  v38 = *(v0 + 72);
  v39 = *(v38 + 16);
  if (*(v38 + 40) == 1)
  {
    v40 = 0;
    v41 = *(v38 + 24);
    v11 = *(v38 + 32);
    v42 = -1 << *(v39 + 32);
    if (-v42 < 64)
    {
      v43 = ~(-1 << -v42);
    }

    else
    {
      v43 = -1;
    }

    v44 = v43 & *(v39 + 64);
    v45 = (63 - v42) >> 6;
    while (v44)
    {
      v46 = v40;
LABEL_27:
      v47 = __clz(__rbit64(v44));
      v44 &= v44 - 1;
      if (*(*(*(v39 + 56) + ((v46 << 9) | (8 * v47))) + 48) >= 1)
      {
        sub_1C5A680AC(*(v38 + 16), v41, *(v38 + 32), 1);

        v38 = *(v0 + 72);
        goto LABEL_30;
      }
    }

    while (1)
    {
      v46 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        break;
      }

      if (v46 >= v45)
      {
        sub_1C5A680AC(*(v38 + 16), v41, *(v38 + 32), 1);

        goto LABEL_33;
      }

      v44 = *(v39 + 64 + 8 * v46);
      ++v40;
      if (v44)
      {
        v40 = v46;
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_39:
    swift_once();
LABEL_9:
    v20 = sub_1C5BC7D64();
    __swift_project_value_buffer(v20, qword_1EC19A698);
    v21 = v11;
    v22 = sub_1C5BC7D44();
    v23 = sub_1C5BCB4D4();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v57 = v25;
      *v24 = 136446210;
      swift_getErrorValue();
      v26 = sub_1C5BCBEE4();
      v28 = sub_1C592ADA8(v26, v27, &v57);

      *(v24 + 4) = v28;
      _os_log_impl(&dword_1C5922000, v22, v23, "Error while initializing cache. Further calls to MotionCache will be ignored. %{public}s", v24, 0xCu);
      v29 = __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x1C69510F0](v25, -1, -1, v29);
      MEMORY[0x1C69510F0](v24, -1, -1);
    }

    else
    {
    }

LABEL_12:
    v30 = *(v0 + 72);
    v31 = *(v30 + 16);
    v32 = *(v30 + 24);
    v33 = *(v30 + 32);
    v34 = *(v30 + 40);
    sub_1C5A680AC(v31, v32, v33, v34);
    sub_1C5BB8B40(v31, v32, v33, v34, 0xD00000000000001ALL, 0x80000001C5BFF280);
    sub_1C5BB78E0(v31, v32, v33, v34);
    v35.n128_f64[0] = sub_1C5BB343C();
    goto LABEL_13;
  }

  if (*(v39 + 48) > 0)
  {
LABEL_30:
    _s7ManagerCMa();
    v48 = swift_allocObject();
    v48[3] = 0;
    swift_unknownObjectWeakInit();
    v49 = [objc_allocWithZone(_s10DownloaderCMa()) init];
    sub_1C5BB78E0(v17, v18, v19, v16 & 1);
    v50 = MEMORY[0x1E69E7CC8];
    v48[4] = v49;
    v48[5] = v50;
    v51 = MEMORY[0x1E69E7CD0];
    v48[6] = v50;
    v48[7] = v51;
    *(v38 + 56) = v48;

    v52 = *(v38 + 56);
    if (v52)
    {
      *(v52 + 24) = &off_1F452C7E8;
      swift_unknownObjectWeakAssign();
    }

    goto LABEL_12;
  }

LABEL_33:
  if (qword_1EC1909E0 != -1)
  {
    swift_once();
  }

  v53 = sub_1C5BC7D64();
  __swift_project_value_buffer(v53, qword_1EC19A698);
  v54 = sub_1C5BC7D44();
  v55 = sub_1C5BCB4F4();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    *v56 = 0;
    _os_log_impl(&dword_1C5922000, v54, v55, "Motion cache is disabled.", v56, 2u);
    MEMORY[0x1C69510F0](v56, -1, -1);
  }

  sub_1C5BB78E0(v17, v18, v19, v16 & 1);

LABEL_13:
  v36 = *(v0 + 8);

  return v36(v35);
}

uint64_t sub_1C5BADF58()
{
  v21 = v0;
  v1 = v0[15];
  if (qword_1EC1909E0 != -1)
  {
    swift_once();
  }

  v2 = sub_1C5BC7D64();
  __swift_project_value_buffer(v2, qword_1EC19A698);
  v3 = v1;
  v4 = sub_1C5BC7D44();
  v5 = sub_1C5BCB4D4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v20 = v7;
    *v6 = 136446210;
    swift_getErrorValue();
    v8 = sub_1C5BCBEE4();
    v10 = sub_1C592ADA8(v8, v9, &v20);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1C5922000, v4, v5, "Error while initializing cache. Further calls to MotionCache will be ignored. %{public}s", v6, 0xCu);
    v11 = __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x1C69510F0](v7, -1, -1, v11);
    MEMORY[0x1C69510F0](v6, -1, -1);
  }

  else
  {
  }

  v12 = v0[9];
  v13 = *(v12 + 16);
  v14 = *(v12 + 24);
  v15 = *(v12 + 32);
  v16 = *(v12 + 40);
  sub_1C5A680AC(v13, v14, v15, v16);
  sub_1C5BB8B40(v13, v14, v15, v16, 0xD00000000000001ALL, 0x80000001C5BFF280);
  sub_1C5BB78E0(v13, v14, v15, v16);
  v17.n128_f64[0] = sub_1C5BB343C();
  v18 = v0[1];

  return v18(v17);
}

uint64_t sub_1C5BAE17C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, double a9, double a10)
{
  *(v11 + 520) = v10;
  *(v11 + 504) = a7;
  *(v11 + 512) = a8;
  *(v11 + 49) = a6;
  *(v11 + 488) = a4;
  *(v11 + 496) = a5;
  *(v11 + 472) = a9;
  *(v11 + 480) = a10;
  *(v11 + 456) = a2;
  *(v11 + 464) = a3;
  *(v11 + 448) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A6E8, &qword_1C5BF46A8);
  *(v11 + 528) = swift_task_alloc();
  *(v11 + 536) = swift_task_alloc();
  *(v11 + 544) = type metadata accessor for MotionAssetDownload.Request(0);
  *(v11 + 552) = swift_task_alloc();
  v12 = sub_1C5BC7A24();
  *(v11 + 560) = v12;
  *(v11 + 568) = *(v12 - 8);
  *(v11 + 576) = swift_task_alloc();
  *(v11 + 584) = swift_task_alloc();
  *(v11 + 592) = swift_task_alloc();
  *(v11 + 600) = swift_task_alloc();
  *(v11 + 608) = swift_task_alloc();
  *(v11 + 616) = swift_task_alloc();
  *(v11 + 624) = swift_task_alloc();
  *(v11 + 632) = swift_task_alloc();
  *(v11 + 640) = *v16;
  if (qword_1EC1909D0 != -1)
  {
    swift_once();
  }

  v13 = qword_1EC19A688;
  *(v11 + 656) = qword_1EC19A688;

  return MEMORY[0x1EEE6DFA0](sub_1C5BAE364, v13, 0);
}

uint64_t sub_1C5BAE364()
{
  v103 = v0;
  v1 = *(v0 + 520);
  swift_beginAccess();
  v2 = *(v1 + 48);
  *(v0 + 664) = v2;
  if (!v2 || (v3 = *(*(v0 + 520) + 56), (*(v0 + 672) = v3) == 0))
  {
    if (qword_1EC1909E0 != -1)
    {
      swift_once();
    }

    v10 = sub_1C5BC7D64();
    __swift_project_value_buffer(v10, qword_1EC19A698);
    v11 = sub_1C5BC7D44();
    v12 = sub_1C5BCB4D4();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1C5922000, v11, v12, "Asset requested after setup failure. Ignoring.", v13, 2u);
      MEMORY[0x1C69510F0](v13, -1, -1);
    }

    goto LABEL_9;
  }

  v5 = *(v0 + 488);
  v4 = *(v0 + 496);
  v7 = *(v0 + 472);
  v6 = *(v0 + 480);
  v8 = *(v0 + 448);
  v102[0] = *(v0 + 640);

  v9 = sub_1C5BB5160(v8, v5, v4, v102, v7, v6);
  if (v9)
  {
    v16 = *(v0 + 504);
    v99 = v9;
    if (v16)
    {
      v17 = v9;
      v18 = *(v0 + 632);
      v19 = *(v0 + 568);
      v20 = *(v0 + 560);
      v21 = *(v0 + 512);

      v22 = [v17 URL];
      sub_1C5BC79E4();

      sub_1C5B81A40(v18, v16, v21);
      sub_1C59261FC(v16, v21);

      (*(v19 + 8))(v18, v20);
    }

    else
    {
    }

LABEL_10:

    v14 = *(v0 + 8);

    return v14(v99);
  }

  v23 = *(v0 + 520);
  v24 = *(v0 + 496);
  v25 = *(v23 + 16);
  v26 = *(v23 + 24);
  v27 = *(v23 + 32);
  v28 = *(v23 + 40);
  if (v28 == 1)
  {
    v98 = 1;
    if (v24)
    {
      v29 = *(v0 + 488);
      v30 = *(v0 + 496);
    }

    else
    {

      v29 = v26;
      v30 = v27;
    }

    v40 = *(v0 + 608);
    sub_1C5A680AC(v25, v26, v27, 1);

    sub_1C5B80F68(v29, v30, v40);
    v53 = *(v0 + 616);
    v54 = *(v0 + 608);
    v55 = *(v0 + 568);
    v56 = *(v0 + 560);

    (*(v55 + 32))(v53, v54, v56);
  }

  else
  {
    if (v24)
    {
      v37 = *(v0 + 488);
      sub_1C5BB7C6C();
      v38 = swift_allocError();
      *v39 = v37;
      *(v39 + 8) = v24;
      *(v39 + 16) = 0;
      swift_willThrow();

      if (qword_1EC1909E0 != -1)
      {
        swift_once();
      }

      v41 = *(v0 + 648);
      v42 = *(v0 + 640);
      v43 = sub_1C5BC7D64();
      __swift_project_value_buffer(v43, qword_1EC19A698);
      swift_getErrorValue();
      v44 = sub_1C5BCBEE4();
      v46 = v45;
      v47 = sub_1C5BCB4D4();
      *&v102[0] = v42;
      *(&v102[0] + 1) = v41;
      sub_1C5ACCC10(v47, v44, v46, v102);

      goto LABEL_9;
    }

    v98 = v28;
    v48 = qword_1EC190978;

    if (v48 != -1)
    {
      swift_once();
    }

    v49 = *(v0 + 616);
    v50 = *(v0 + 568);
    v51 = *(v0 + 560);
    v52 = __swift_project_value_buffer(v51, qword_1EC1996F0);
    (*(v50 + 16))(v49, v52, v51);
  }

  *(v0 + 680) = 0;
  v57 = *(v0 + 600);
  v58 = *(v0 + 568);
  v59 = *(v0 + 560);
  v60 = *(v0 + 472);
  sub_1C5BC79A4();
  v61 = sub_1C5BC7984();
  v96 = v62;
  v97 = v61;
  v63 = *(v58 + 8);
  *(v0 + 688) = v63;
  *(v0 + 696) = (v58 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v63(v57, v59);
  *&v102[0] = 45;
  *(&v102[0] + 1) = 0xE100000000000000;
  if ((v60 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_40;
  }

  v64 = *(v0 + 472);
  if (v64 <= -9.22337204e18)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v95 = v63;
  if (v64 >= 9.22337204e18)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v65 = *(v0 + 480);
  *(v0 + 360) = v64;
  v66 = sub_1C5BCBD64();
  v57 = v67;
  v63 = v102;
  MEMORY[0x1C694F170](v66);

  MEMORY[0x1C694F170](120, 0xE100000000000000);
  if ((v65 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v68 = *(v0 + 480);
  if (v68 <= -9.22337204e18)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v93 = v27;
  v94 = v26;
  if (v68 >= 9.22337204e18)
  {
LABEL_44:
    __break(1u);
    swift_once();
    v100 = *(v0 + 648);
    v31 = *(v0 + 640);
    v32 = sub_1C5BC7D64();
    __swift_project_value_buffer(v32, qword_1EC19A698);
    v33 = sub_1C5BB59A8(v63, v57, v60);
    v35 = v34;
    sub_1C5BB7BA0(v63, v57, v60);
    v36 = sub_1C5BCB4D4();
    *&v102[0] = v31;
    *(&v102[0] + 1) = v100;
    sub_1C5ACCC10(v36, v33, v35, v102);

LABEL_9:
    v99 = 1;
    goto LABEL_10;
  }

  v91 = *(v0 + 640);
  v92 = *(v0 + 648);
  v69 = *(v0 + 632);
  v70 = *(v0 + 624);
  v71 = *(v0 + 616);
  v72 = *(v0 + 568);
  v73 = *(v0 + 560);
  v101 = *(v0 + 552);
  v86 = *(v0 + 600);
  v87 = *(v0 + 544);
  v90 = *(v0 + 49);
  v74 = *(v0 + 472);
  v88 = *(v0 + 464);
  v89 = *(v0 + 456);
  v85 = *(v0 + 448);
  *(v0 + 368) = v68;
  v75 = sub_1C5BCBD64();
  MEMORY[0x1C694F170](v75);

  v76 = *(&v102[0] + 1);
  *(v0 + 280) = *&v102[0];
  *(v0 + 288) = v76;
  *(v0 + 296) = v97;
  *(v0 + 304) = v96;
  *&v102[0] = sub_1C5BCAFC4();
  *(&v102[0] + 1) = v77;
  sub_1C5BCAF24();

  sub_1C5BC79B4();

  sub_1C5BC79C4();
  v95(v69, v73);
  v95(v71, v73);
  v78 = sub_1C5BB78E0(v25, v94, v93, v98);
  v79 = *(v72 + 16);
  *(v0 + 704) = v79;
  *(v0 + 712) = (v72 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v79(v69, v85, v73, v78);
  (v79)(v86, v70, v73);
  v80 = v101 + *(v87 + 20);
  (v79)(v80, v69, v73);
  v81 = type metadata accessor for MotionAssetDownload.AssetKey(0);
  (v79)(&v80[*(v81 + 20)], v86, v73);

  v95(v86, v73);
  v95(v69, v73);
  v82 = &v80[*(v81 + 24)];
  *v82 = floor(v74);
  v82[1] = floor(v68);
  *v101 = v89;
  v101[1] = v88;
  *(v0 + 312) = v91;
  *(v0 + 320) = v92;
  v83 = swift_task_alloc();
  *(v0 + 720) = v83;
  *v83 = v0;
  v83[1] = sub_1C5BAEFC8;
  v84 = *(v0 + 552);

  return sub_1C5B7048C(v84, (v90 - 1) < 3, (v0 + 312));
}

uint64_t sub_1C5BAEFC8(uint64_t a1)
{
  v2 = *(*v1 + 656);
  v3 = *(*v1 + 552);
  *(*v1 + 728) = a1;

  sub_1C5BB7BB8(v3, type metadata accessor for MotionAssetDownload.Request);

  return MEMORY[0x1EEE6DFA0](sub_1C5BAF110, v2, 0);
}

uint64_t sub_1C5BAF110()
{
  v93 = v0;
  v1 = *(v0 + 728);
  if (v1)
  {
    if (v1 == 1)
    {
      v6 = *(v0 + 688);
      v7 = *(v0 + 624);
      v8 = *(v0 + 560);

      v6(v7, v8);
      v5 = 1;
      goto LABEL_31;
    }

    if (v1 != 2)
    {
      v9 = *(v0 + 680);
      v11 = *(v0 + 488);
      v10 = *(v0 + 496);
      v13 = *(v0 + 472);
      v12 = *(v0 + 480);
      v14 = *(v0 + 448);
      *v92 = *(v0 + 640);
      v15 = v1;
      v16 = sub_1C5BB5160(v14, v11, v10, v92, v13, v12);
      v89 = v0;
      if (v9)
      {
        v90 = v15;
        *(v0 + 384) = v9;
        v17 = v9;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930D0, &qword_1C5BD4FE0);
        if (swift_dynamicCast())
        {

          v18 = *(v0 + 88) ^ 1;
LABEL_19:
          v35 = *(v0 + 648);
          v36 = *(v0 + 640);
          v38 = *(v0 + 488);
          v37 = *(v0 + 496);
          v39 = sub_1C5BC7964();
          v41 = v40;
          v92[0] = v36;
          v92[1] = v35;
          sub_1C5BB5B0C(v38, v37, v92);
          v42 = v0;
          if (v18)
          {
            v43 = *(v0 + 536);
            sub_1C5BB0790(v39, v41, v43);
            v44 = type metadata accessor for MotionCacheEntry(0);
            if ((*(*(v44 - 8) + 48))(v43, 1, v44) == 1)
            {
              sub_1C5924EF4(*(v0 + 536), &qword_1EC19A6E8, &qword_1C5BF46A8);
            }

            else
            {
              v51 = *(v0 + 688);
              v52 = *(v0 + 592);
              v53 = *(v0 + 584);
              v54 = *(v0 + 568);
              v55 = *(v89 + 560);
              v56 = *(v89 + 536);
              (*(v89 + 704))(v53, v56, v55);
              v57 = v56;
              v42 = v89;
              sub_1C5BB7BB8(v57, type metadata accessor for MotionCacheEntry);
              (*(v54 + 32))(v52, v53, v55);
              sub_1C5B81170(v52, 1u);
              v51(v52, v55);
            }
          }

          v58 = *(v42 + 576);
          v59 = [v90 URL];
          sub_1C5BC79E4();

          sub_1C5B81858(v58);
          v60 = *(v42 + 528);
          v61 = *(v42 + 520);
          v63 = *(v42 + 472);
          v62 = *(v42 + 480);
          (*(v42 + 688))(*(v42 + 576), *(v42 + 560));
          v64 = [v90 URL];
          sub_1C5BC79E4();

          v65 = type metadata accessor for MotionCacheEntry(0);
          v66 = (v60 + *(v65 + 20));
          *v66 = v63;
          v66[1] = v62;
          (*(*(v65 - 8) + 56))(v60, 0, 1, v65);
          sub_1C5BB03AC(v60, v39, v41);

          sub_1C5924EF4(v60, &qword_1EC19A6E8, &qword_1C5BF46A8);
          v67 = v42;
          v69 = *(v61 + 16);
          v68 = *(v61 + 24);
          v70 = *(v61 + 32);
          v71 = *(v61 + 40);
          sub_1C5BC7754();
          swift_allocObject();
          if (v71)
          {

            sub_1C5BC7744();
            v67[23] = v69;
            v67[24] = v68;
            v67[25] = v70;
            sub_1C5BB7C18();
          }

          else
          {

            sub_1C5BC7744();
            v67[55] = v69;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193688, &qword_1C5BD8320);
            sub_1C5BB9808(&qword_1EC19A6F8, &unk_1C5BEFF30);
          }

          v72 = sub_1C5BC7734();
          v74 = v73;

          v0 = v89;
          sub_1C5BC7A44();
          sub_1C5A5BB4C(v72, v74);
          v77 = *(v89 + 504);
          sub_1C5BB78E0(v69, v68, v70, v71);
          v78 = sub_1C5BB343C();
          if (v77)
          {
            v79 = *(v89 + 688);
            v80 = *(v89 + 632);
            v86 = *(v89 + 728);
            v87 = *(v89 + 624);
            v81 = *(v89 + 560);
            v83 = *(v89 + 504);
            v82 = *(v89 + 512);

            v84 = [v90 URL];
            sub_1C5BC79E4();

            sub_1C5B81A40(v80, v83, v82);

            sub_1C59261FC(v83, v82);

            sub_1C59F831C(v86);
            v79(v80, v81);
            v79(v87, v81);
          }

          else
          {
            v85 = *(v89 + 728);
            (*(v89 + 688))(*(v89 + 624), *(v89 + 560), v78);

            sub_1C59F831C(v85);
          }

          goto LABEL_5;
        }

LABEL_18:
        v18 = 0;
        goto LABEL_19;
      }

      if (!v16)
      {
        v90 = v15;
        goto LABEL_18;
      }

      v19 = *(v0 + 688);
      v20 = *(v0 + 632);
      v21 = *(v0 + 560);
      v91 = v16;
      v22 = [v16 URL];
      sub_1C5BC79E4();

      sub_1C5BB89C8(&qword_1EC196A48, 255, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
      v23 = sub_1C5BCADB4();
      v19(v20, v21);
      if (v23)
      {
        if (qword_1EC1909E0 != -1)
        {
          swift_once();
        }

        v24 = *(v0 + 648);
        v25 = *(v0 + 640);
        v26 = sub_1C5BC7D64();
        __swift_project_value_buffer(v26, qword_1EC19A698);
        v27 = sub_1C5BCB4F4();
        v92[0] = v25;
        v92[1] = v24;
        sub_1C5ACCC10(v27, 0xD000000000000028, 0x80000001C5BFF010, v92);
        v28 = *(v0 + 504);
        if (v28)
        {
LABEL_15:
          v29 = *(v0 + 728);
          v30 = *(v0 + 688);
          v31 = *(v0 + 632);
          v88 = *(v0 + 624);
          v32 = *(v0 + 560);
          v33 = *(v0 + 512);

          v34 = [v91 &selRef_maxArgumentBufferSamplerCount];
          sub_1C5BC79E4();

          sub_1C5B81A40(v31, v28, v33);

          sub_1C59261FC(v28, v33);
          sub_1C59F831C(v29);

          sub_1C59F831C(v29);
          v30(v31, v32);
          v30(v88, v32);
          goto LABEL_32;
        }
      }

      else
      {
        if (qword_1EC1909E0 != -1)
        {
          swift_once();
        }

        v45 = *(v0 + 648);
        v46 = *(v0 + 640);
        v47 = *(v0 + 624);
        v48 = sub_1C5BC7D64();
        __swift_project_value_buffer(v48, qword_1EC19A698);
        v49 = sub_1C5BCB4F4();
        v92[0] = v46;
        v92[1] = v45;
        sub_1C5ACCC10(v49, 0xD000000000000044, 0x80000001C5BFEFC0, v92);
        sub_1C5B81170(v47, 6u);
        v28 = *(v0 + 504);
        if (v28)
        {
          goto LABEL_15;
        }
      }

      v50 = *(v0 + 728);
      (*(v0 + 688))(*(v0 + 624), *(v0 + 560));

      sub_1C59F831C(v50);

      sub_1C59F831C(v50);
      goto LABEL_32;
    }
  }

  v2 = *(v0 + 688);
  v3 = *(v0 + 624);
  v4 = *(v0 + 560);
  sub_1C5B81170(v3, 3u);

  v2(v3, v4);
LABEL_5:
  v5 = *(v0 + 728);
LABEL_31:
  v91 = v5;
LABEL_32:

  v75 = *(v0 + 8);

  return v75(v91);
}

id sub_1C5BB00D8(__n128 a1)
{
  v2 = v1;
  v3 = type metadata accessor for MotionCacheEntry(0);
  v4 = *(v3 - 8);
  *&v5 = MEMORY[0x1EEE9AC00](v3 - 8).n128_u64[0];
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v1[5];
  [v8 lock];
  swift_beginAccess();
  v9 = MEMORY[0x1E69E7CC0];
  if (v1[6] < *(v1[2] + 16))
  {
    do
    {
      v10 = v2[3];

      if (!v10)
      {
        break;
      }

      sub_1C5BB08C0(v10);
      swift_beginAccess();
      v11 = sub_1C596FBD8(v10[2], v10[3]);
      if (v12)
      {
        v13 = v11;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v15 = v2[2];
        v23 = v15;
        v2[2] = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_1C5AF5554();
          v15 = v23;
        }

        sub_1C5AF3EDC(v13, v15);
        v2[2] = v15;
      }

      swift_endAccess();
      v16 = *(*v10 + 112);
      swift_beginAccess();
      sub_1C5BB7B3C(v10 + v16, v7);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_1C5B76A54(v17, 0, v9[2] + 1, 1, v9);
      }

      v19 = v9[2];
      v18 = v9[3];
      if (v19 >= v18 >> 1)
      {
        v9 = sub_1C5B76A54(v17, (v18 > 1), v19 + 1, 1, v9);
      }

      v9[2] = v19 + 1;
      sub_1C5BB8960(v7, v9 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v19, type metadata accessor for MotionCacheEntry);
    }

    while (v2[6] < *(v2[2] + 16));
  }

  if (v9[2])
  {
    v20 = v2[7];
    if (v20)
    {
      v21 = v2[8];

      v20(v9);
      sub_1C59261FC(v20, v21);
    }
  }

  return [v8 unlock];
}

uint64_t sub_1C5BB03AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A6E8, &qword_1C5BF46A8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v30 - v12;
  v14 = type metadata accessor for MotionCacheEntry(0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v30 - v19;
  sub_1C5BB888C(a1, v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1C5924EF4(v13, &qword_1EC19A6E8, &qword_1C5BF46A8);
    sub_1C5BB0790(a2, a3, v10);
    return sub_1C5924EF4(v10, &qword_1EC19A6E8, &qword_1C5BF46A8);
  }

  else
  {
    sub_1C5BB8960(v13, v20, type metadata accessor for MotionCacheEntry);
    v22 = *(v4 + 40);
    [v22 lock];
    swift_beginAccess();
    v23 = *(v4 + 16);
    if (*(v23 + 16) && (v24 = sub_1C596FBD8(a2, a3), (v25 & 1) != 0))
    {
      v26 = *(*(v23 + 56) + 8 * v24);
      swift_endAccess();
      v27 = *(*v26 + 112);
      swift_beginAccess();

      sub_1C5BB88FC(v20, v26 + v27);
      swift_endAccess();
      sub_1C5BB08C0(v26);
    }

    else
    {
      swift_endAccess();
      sub_1C5BB7B3C(v20, v17);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A710, &unk_1C5BF46B0);
      v26 = swift_allocObject();
      *(v26 + *(*v26 + 120)) = 0;
      *(v26 + *(*v26 + 128)) = 0;
      v26[2] = a2;
      v26[3] = a3;
      sub_1C5BB8960(v17, v26 + *(*v26 + 112), type metadata accessor for MotionCacheEntry);
      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v30 = *(v4 + 16);
      *(v4 + 16) = 0x8000000000000000;
      sub_1C5B3C770(v26, a2, a3, isUniquelyReferenced_nonNull_native);
      *(v4 + 16) = v30;
      swift_endAccess();
    }

    sub_1C5BB0A18(v26);

    [v22 unlock];
    sub_1C5BB00D8(v29);
    return sub_1C5BB7BB8(v20, type metadata accessor for MotionCacheEntry);
  }
}

id sub_1C5BB0790@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(v3 + 40);
  [v7 lock];
  swift_beginAccess();
  v8 = sub_1C5BB7D60(a1, a2);
  swift_endAccess();
  if (v8)
  {
    sub_1C5BB08C0(v8);
    v9 = *(*v8 + 112);
    swift_beginAccess();
    sub_1C5BB7B3C(v8 + v9, a3);

    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = type metadata accessor for MotionCacheEntry(0);
  (*(*(v11 - 8) + 56))(a3, v10, 1, v11);
  return [v7 unlock];
}

void sub_1C5BB08C0(uint64_t *a1)
{
  v3 = *(v1 + 24);

  if (v3)
  {

    if (v3 == a1)
    {
      *(v1 + 24) = *(a1 + *(*a1 + 128));
    }
  }

  v4 = *(v1 + 32);

  if (v4)
  {

    if (v4 == a1)
    {
      *(v1 + 32) = *(a1 + *(*a1 + 120));
    }
  }

  v5 = *a1;
  v6 = *(*a1 + 128);

  if (v7)
  {
    *(v7 + *(*v7 + 120)) = *(a1 + *(v5 + 120));
  }

  if (v8)
  {
    *(v8 + *(*v8 + 128)) = *(a1 + v6);
  }

  *(a1 + v6) = 0;
}

void sub_1C5BB0A18(uint64_t a1)
{
  if ()
  {
  }

  else
  {
    *(v1 + 24) = a1;
  }

  *(a1 + *(*a1 + 120)) = *(v1 + 32);

  if (v3)
  {
    *(v3 + *(*v3 + 128)) = a1;
  }

  *(v1 + 32) = a1;
}

id sub_1C5BB0A98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(v3 + 40);
  [v7 lock];
  swift_beginAccess();
  v8 = *(v3 + 16);
  if (*(v8 + 16) && (v9 = sub_1C596FBD8(a1, a2), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);
    swift_endAccess();

    sub_1C5BB08C0(v12);
    sub_1C5BB0A18(v11);
    v13 = *(*v11 + 112);
    swift_beginAccess();
    sub_1C5BB7B3C(v11 + v13, a3);

    v14 = 0;
  }

  else
  {
    swift_endAccess();
    v14 = 1;
  }

  v15 = type metadata accessor for MotionCacheEntry(0);
  (*(*(v15 - 8) + 56))(a3, v14, 1, v15);
  return [v7 unlock];
}

uint64_t sub_1C5BB0BE8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A750, &qword_1C5BF4AA8);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1C5BB9460();
  sub_1C5BCBFB4();
  v15 = a2;
  v14 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A760, &qword_1C5BF4AB0);
  sub_1C5BB94B4();
  sub_1C5BCBD24();
  if (!v4)
  {
    v13 = 1;
    sub_1C5BCBD04();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1C5BB0DA4()
{
  if (*v0)
  {
    return 0x42746C7561666564;
  }

  else
  {
    return 1952672100;
  }
}

void sub_1C5BB0DE4(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1952672100 && a2 == 0xE400000000000000;
  if (v5 || (sub_1C5BCBDE4() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x42746C7561666564 && a2 == 0xEF444974656B6375)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1C5BCBDE4();

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

uint64_t sub_1C5BB0EC8(uint64_t a1)
{
  v2 = sub_1C5BB9460();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C5BB0F04(uint64_t a1)
{
  v2 = sub_1C5BB9460();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C5BB0F40@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1C5BB955C(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

uint64_t sub_1C5BB0F90(uint64_t a1)
{
  type metadata accessor for MotionCacheActor();
  v1 = swift_allocObject();
  result = swift_defaultActor_initialize();
  qword_1EC19A688 = v1;
  return result;
}

uint64_t MotionCacheActor.__deallocating_deinit(__n128 a1)
{
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v1);
}

double sub_1C5BB104C()
{
  if (qword_1EC1909D0 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t sub_1C5BB10A8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for MotionCacheActor();

  return MEMORY[0x1EEE6DBF0](v3, a2);
}

id sub_1C5BB10E0()
{
  type metadata accessor for MotionCache();
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193688, &qword_1C5BD8320);
  v1 = swift_allocObject();
  v2 = sub_1C59ADBD0(MEMORY[0x1E69E7CC0]);
  v1[3] = 0;
  v1[4] = 0;
  v1[2] = v2;
  result = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  v1[7] = 0;
  v1[8] = 0;
  v1[5] = result;
  v1[6] = 20;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 16) = v1;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  qword_1EC19A690 = v0;
  return result;
}

double sub_1C5BB11A8(void *a1, uint64_t *a2, uint64_t a3)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }

  return result;
}

uint64_t sub_1C5BB1208()
{
  *(v1 + 40) = v0;
  if (qword_1EC1909D0 != -1)
  {
    swift_once();
  }

  v2 = qword_1EC19A688;

  return MEMORY[0x1EEE6DFA0](sub_1C5BB12A0, v2, 0);
}

uint64_t sub_1C5BB12A0()
{
  v1 = *(v0 + 40);
  swift_beginAccess();
  if (*(v1 + 48))
  {

    v4 = sub_1C5B81CCC(v2, v3);
    if (v7 == -1)
    {
      if (qword_1EC1909E0 != -1)
      {
        swift_once();
      }

      v22 = sub_1C5BC7D64();
      __swift_project_value_buffer(v22, qword_1EC19A698);
      v23 = sub_1C5BC7D44();
      v24 = sub_1C5BCB4F4();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_1C5922000, v23, v24, "Did not retrieve cache indices from disk.", v25, 2u);
        MEMORY[0x1C69510F0](v25, -1, -1);
      }

      v19 = 0;
      v20 = 0;
      v21 = 0;
      v18 = 255;
    }

    else
    {
      v10 = v7;
      v11 = v6;
      v12 = v5;
      v13 = v4;
      if (qword_1EC1909E0 != -1)
      {
        swift_once();
      }

      v14 = sub_1C5BC7D64();
      __swift_project_value_buffer(v14, qword_1EC19A698);
      v15 = sub_1C5BC7D44();
      v16 = sub_1C5BCB4F4();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_1C5922000, v15, v16, "Retrieved cache indices from disk.", v17, 2u);
        MEMORY[0x1C69510F0](v17, -1, -1);
      }

      v18 = v10 & 1;
      v19 = v13;
      v20 = v12;
      v21 = v11;
    }

    v26 = *(v0 + 8);

    return v26(v19, v20, v21, v18);
  }

  else
  {
    sub_1C5BB7F64();
    swift_allocError();
    swift_willThrow();
    v8 = *(v0 + 8);

    return v8();
  }
}

void sub_1C5BB157C(uint64_t a1, uint64_t a2, unint64_t a3, int a4)
{
  v5 = v4;
  LODWORD(v299) = a4;
  v292 = sub_1C5BC77C4();
  v283 = *(v292 - 8);
  MEMORY[0x1EEE9AC00](v292);
  v291 = &v278 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v290 = &v278 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v289 = &v278 - v13;
  v305 = sub_1C5BC7A24();
  v301 = *(v305 - 8);
  MEMORY[0x1EEE9AC00](v305);
  v287 = (&v278 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v288 = (&v278 - v16);
  MEMORY[0x1EEE9AC00](v17);
  v284 = &v278 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v285 = (&v278 - v20);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v278 - v22;
  v24 = type metadata accessor for MotionCacheEntry(0);
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v300 = (&v278 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v278 - v28;
  if (qword_1EC1909E0 != -1)
  {
    swift_once();
  }

  v286 = v23;
  v296 = a2;
  v297 = a3;
  v30 = sub_1C5BC7D64();
  v294 = __swift_project_value_buffer(v30, qword_1EC19A698);
  v31 = sub_1C5BC7D44();
  v32 = sub_1C5BCB4C4();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_1C5922000, v31, v32, "Running MotionCache.configureCacheIndices.", v33, 2u);
    MEMORY[0x1C69510F0](v33, -1, -1);
  }

  sub_1C5BB35F0();
  v34 = *(v5 + 16);
  v35 = *(v5 + 24);
  v36 = *(v5 + 32);
  v37 = *(v5 + 40);
  sub_1C5A680AC(v34, v35, v36, v37);
  sub_1C5BB8B40(v34, v35, v36, v37, 0xD000000000000010, 0x80000001C5BFF2A0);
  sub_1C5BB78E0(v34, v35, v36, v37);
  v298 = a1;
  v39 = v296;
  v38 = v297;
  sub_1C5BB8B40(a1, v296, v297, v299 & 1, 0x69646E692077654ELL, 0xEB00000000736563);
  swift_beginAccess();
  v40 = *(v5 + 48);
  if (!v40)
  {
    sub_1C5BB7F64();
    swift_allocError();
    swift_willThrow();
    return;
  }

  v41 = *(v5 + 16);
  v42 = *(v5 + 24);
  v43 = *(v5 + 32);
  if ((*(v5 + 40) & 1) == 0)
  {
    v293 = *(v5 + 16);
    if ((v299 & 1) == 0)
    {

      v69 = v42;
      sub_1C5A680AC(v41, v42, v43, 0);
      sub_1C5A680AC(v298, v39, v38, 0);
      v70 = sub_1C5BC7D44();
      v71 = sub_1C5BCB4F4();
      if (os_log_type_enabled(v70, v71))
      {
        v72 = v43;
        v73 = swift_slowAlloc();
        *v73 = 0;
        _os_log_impl(&dword_1C5922000, v70, v71, "configureCacheIndices: Maintained default cacheIndex.", v73, 2u);
        v74 = v73;
        v43 = v72;
        MEMORY[0x1C69510F0](v74, -1, -1);
      }

      v76 = v293;
      v77 = *(v293 + 48);
      v78 = *(v298 + 48);
      v79 = v69;
      if (v77 != v78)
      {
        v80 = v78 & ~(v78 >> 63);
        *(v293 + 48) = v80;
        if (v80 < v77)
        {
          sub_1C5BB00D8(v75);
          v79 = v69;
        }

        sub_1C5A680AC(v76, v79, v43, 0);
        v81 = v79;
        v82 = sub_1C5BC7D44();
        v83 = sub_1C5BCB4F4();
        if (os_log_type_enabled(v82, v83))
        {
          v84 = swift_slowAlloc();
          v282 = v43;
          v85 = v84;
          *v84 = 134217984;
          *(v84 + 4) = *(v76 + 48);
          sub_1C5BB78E0(v76, v81, v282, 0);
          _os_log_impl(&dword_1C5922000, v82, v83, "configureCacheIndices: Updated default cacheIndex size to %ld.", v85, 0xCu);
          v86 = v85;
          v43 = v282;
          MEMORY[0x1C69510F0](v86, -1, -1);
        }

        else
        {
          sub_1C5BB78E0(v76, v81, v43, 0);
        }

        v79 = v81;

        v76 = v293;
      }

      v146 = v295;
      sub_1C5B83764(v40 + OBJC_IVAR____TtC11MediaCoreUI22MotionCacheDiskStorage_appSpecificCacheAssetsFolder);
      v61 = v146;
      if (!v146)
      {
        sub_1C5BB78E0(v298, v39, v38, 0);
        sub_1C5BB78E0(v76, v79, v43, 0);
        goto LABEL_156;
      }

      sub_1C5BB78E0(v298, v39, v38, 0);
      v121 = v76;
      v122 = v79;
      v123 = v43;
      goto LABEL_83;
    }

    v288 = v42;
    v282 = v43;
    sub_1C5A680AC(v41, v42, v43, 0);
    sub_1C5A680AC(v298, v39, v38, 1);
    v46 = sub_1C5BC7D44();
    v47 = sub_1C5BCB4F4();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_1C5922000, v46, v47, "configureCacheIndices: Changed from default cacheIndex to client-defined indices.", v48, 2u);
      MEMORY[0x1C69510F0](v48, -1, -1);
    }

    [*(v41 + 40) lock];
    v49 = *(v41 + 24);

    v50 = MEMORY[0x1E69E7CC0];
    if (v49)
    {
      v51 = MEMORY[0x1E69E7CC0];
      do
      {
        v52 = *(*v49 + 112);
        swift_beginAccess();
        sub_1C5BB7B3C(v49 + v52, v29);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v51 = sub_1C5B76A54(v53, 0, v51[2] + 1, 1, v51);
        }

        v55 = v51[2];
        v54 = v51[3];
        if (v55 >= v54 >> 1)
        {
          v51 = sub_1C5B76A54(v53, (v54 > 1), v55 + 1, 1, v51);
        }

        v51[2] = v55 + 1;
        sub_1C5BB8960(v29, v51 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v55, type metadata accessor for MotionCacheEntry);
        v56 = *(v49 + *(*v49 + 128));

        v49 = v56;
      }

      while (v56);
    }

    else
    {
      v51 = MEMORY[0x1E69E7CC0];
    }

    [*(v293 + 40) unlock];
    v99 = v51[2];
    v281 = v5;
    if (v99)
    {
      v280 = v40;
      v302 = v50;
      sub_1C5B8F0A8(0, v99, 0);
      v100 = v302;
      v101 = *(v25 + 80);
      v294 = v51;
      v102 = v51 + ((v101 + 32) & ~v101);
      v299 = *(v25 + 72);
      v103 = (v301 + 32);
      v104 = v305;
      v105 = v285;
      do
      {
        v106 = v300;
        sub_1C5BB7B3C(v102, v300);
        v107 = *v103;
        (*v103)(v105, v106, v104);
        v302 = v100;
        v109 = *(v100 + 16);
        v108 = *(v100 + 24);
        if (v109 >= v108 >> 1)
        {
          sub_1C5B8F0A8((v108 > 1), v109 + 1, 1);
          v104 = v305;
          v100 = v302;
        }

        *(v100 + 16) = v109 + 1;
        v107(v100 + ((*(v301 + 80) + 32) & ~*(v301 + 80)) + *(v301 + 72) * v109, v105, v104);
        v102 += v299;
        --v99;
      }

      while (v99);

      v40 = v280;
      v5 = v281;
      v110 = *(v100 + 16);
      if (v110)
      {
        goto LABEL_48;
      }
    }

    else
    {

      v100 = MEMORY[0x1E69E7CC0];
      v104 = v305;
      v110 = *(MEMORY[0x1E69E7CC0] + 16);
      if (v110)
      {
LABEL_48:
        v300 = *(v301 + 16);
        v111 = v100 + ((*(v301 + 80) + 32) & ~*(v301 + 80));
        v112 = *(v301 + 72);
        v113 = (v301 + 8);
        v114 = v40;
        v115 = v286;
        do
        {
          (v300)(v115, v111, v104);
          sub_1C5B81170(v115, 4u);
          v104 = v305;
          (*v113)(v115, v305);
          v111 += v112;
          --v110;
        }

        while (v110);

        v5 = v281;
        v40 = v114;
        goto LABEL_53;
      }
    }

LABEL_53:
    v116 = OBJC_IVAR____TtC11MediaCoreUI22MotionCacheDiskStorage_appSpecificCacheAssetsFolder;
    v117 = v295;
    sub_1C5B83764(v40 + OBJC_IVAR____TtC11MediaCoreUI22MotionCacheDiskStorage_appSpecificCacheAssetsFolder);
    v118 = v297;
    v119 = v293;
    v120 = v282;
    if (!v117)
    {
      sub_1C5B831E4(v40 + v116);
      v294 = v116;
      v300 = 0;

      v148 = 0;
      v150 = v298 + 64;
      v149 = *(v298 + 64);
      v151 = 1 << *(v298 + 32);
      v152 = -1;
      if (v151 < 64)
      {
        v152 = ~(-1 << v151);
      }

      v153 = v152 & v149;
      v154 = (v151 + 63) >> 6;
      v295 = (v283 + 8);
      v287 = (v301 + 8);
      v286 = (v298 + 64);
      v285 = v154;
      v280 = v40;
      if ((v152 & v149) == 0)
      {
        goto LABEL_89;
      }

      while (1)
      {
        v155 = v148;
LABEL_92:
        v156 = (*(v298 + 48) + ((v155 << 10) | (16 * __clz(__rbit64(v153)))));
        v157 = *v156;
        v301 = v156[1];

        v158 = v290;
        sub_1C5BC7774();
        v159 = v291;
        sub_1C5BC7764();
        v160 = v289;
        sub_1C5BC7794();
        v161 = *v295;
        v162 = v292;
        (*v295)(v159, v292);
        v163 = (v161)(v158, v162);
        v299 = &v278;
        MEMORY[0x1EEE9AC00](v163);
        *(&v278 - 2) = v160;
        v164 = v300;
        LOBYTE(v158) = sub_1C5B82FBC(sub_1C5BB9B7C, (&v278 - 4), v157, v301);
        v161(v160, v162);
        if ((v158 & 1) == 0)
        {
          break;
        }

        v165 = v284;
        sub_1C5BC79B4();

        sub_1C5B831E4(v165);
        v300 = v164;
        if (v164)
        {
          (*v287)(v165, v305);

          sub_1C5BB78E0(v293, v288, v282, 0);

          return;
        }

        v153 &= v153 - 1;
        (*v287)(v165, v305);
        v148 = v155;
        v5 = v281;
        v118 = v297;
        v119 = v293;
        v120 = v282;
        v150 = v286;
        v154 = v285;
        if (!v153)
        {
          while (1)
          {
LABEL_89:
            v155 = v148 + 1;
            if (__OFADD__(v148, 1))
            {
              goto LABEL_175;
            }

            if (v155 >= v154)
            {
              break;
            }

            v153 = *(v150 + 8 * v155);
            ++v148;
            if (v153)
            {
              goto LABEL_92;
            }
          }

          sub_1C5BB78E0(v119, v288, v120, 0);
          v189 = v298;

          v190 = *(v5 + 16);
          v191 = *(v5 + 24);
          v192 = *(v5 + 32);
          v193 = v5;
          v194 = *(v5 + 40);
          v195 = v296;
          *(v193 + 16) = v189;
          *(v193 + 24) = v195;
          *(v193 + 32) = v118;
          *(v193 + 40) = 1;
          sub_1C5A680AC(v189, v195, v118, 1);
          v196 = v190;
          v197 = v191;
          v198 = v192;
          v199 = v194;
          v5 = v193;
LABEL_155:
          sub_1C5BB78E0(v196, v197, v198, v199);
          v61 = v300;
LABEL_156:
          sub_1C5BB35F0();
          v261 = *(v5 + 16);
          v262 = *(v5 + 24);
          v263 = *(v5 + 32);
          v264 = v5;
          v265 = *(v5 + 40);
          sub_1C5A680AC(v261, v262, v263, v265);
          sub_1C5BB9180(v261, v262, v263, v265);
          sub_1C5BB78E0(v261, v262, v263, v265);
          v267 = *(v264 + 16);
          v266 = *(v264 + 24);
          v268 = *(v264 + 32);
          v269 = *(v264 + 40);
          sub_1C5BC7754();
          swift_allocObject();
          if (v269)
          {

            sub_1C5BC7744();
            v302 = v267;
            v303 = v266;
            v304 = v268;
            sub_1C5BB7C18();
          }

          else
          {

            sub_1C5BC7744();
            v302 = v267;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193688, &qword_1C5BD8320);
            sub_1C5BB9808(&qword_1EC19A6F8, &unk_1C5BEFF30);
          }

          v270 = v61;
          v271 = sub_1C5BC7734();
          v273 = v272;

          if (!v270)
          {
            sub_1C5BC7A44();
            sub_1C5A5BB4C(v271, v273);
            sub_1C5BB78E0(v267, v266, v268, v269);

            return;
          }

          sub_1C5B83EB4();
          swift_allocError();
          *v274 = v270;
          v274[1] = 0;
          swift_willThrow();
          v121 = v267;
          v122 = v266;
          v123 = v268;
          v147 = v269;
LABEL_162:
          sub_1C5BB78E0(v121, v122, v123, v147);
LABEL_163:

          return;
        }
      }

      sub_1C5B83E60();
      swift_allocError();
      *v277 = v157;
      v277[1] = v301;
      swift_willThrow();

      sub_1C5BB78E0(v293, v288, v282, 0);

LABEL_10:

      return;
    }

    v121 = v119;
    v122 = v288;
    v123 = v120;
LABEL_83:
    v147 = 0;
    goto LABEL_162;
  }

  if ((v299 & 1) == 0)
  {

    sub_1C5A680AC(v41, v42, v43, 1);

    v57 = sub_1C5BC7D44();
    v58 = sub_1C5BCB4F4();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_1C5922000, v57, v58, "configureCacheIndices: Changed from client-defined buckets to default cacheIndex.", v59, 2u);
      MEMORY[0x1C69510F0](v59, -1, -1);
    }

    v60 = v295;
    sub_1C5B83764(v40 + OBJC_IVAR____TtC11MediaCoreUI22MotionCacheDiskStorage_appSpecificCacheAssetsFolder);
    v61 = v60;
    if (v60)
    {
      goto LABEL_163;
    }

    v62 = *(v5 + 16);
    v63 = *(v5 + 24);
    v64 = *(v5 + 32);
    v65 = v5;
    v66 = *(v5 + 40);
    v67 = v298;
    *(v65 + 16) = v298;
    *(v65 + 24) = v39;
    *(v65 + 32) = v38;
    *(v65 + 40) = 0;
    sub_1C5A680AC(v67, v39, v38, 0);
    v68 = v66;
    v5 = v65;
    sub_1C5BB78E0(v62, v63, v64, v68);
    goto LABEL_156;
  }

  v44 = OBJC_IVAR____TtC11MediaCoreUI22MotionCacheDiskStorage_appSpecificCacheAssetsFolder;

  sub_1C5A680AC(v41, v42, v43, 1);
  v45 = v295;
  sub_1C5B831E4(v40 + v44);
  if (v45)
  {

    goto LABEL_10;
  }

  v299 = v44;

  v293 = v41;
  sub_1C5B8265C(v87);
  v89 = v88;
  v90 = v298;
  swift_bridgeObjectRetain_n();
  sub_1C5B8265C(v90);
  v286 = v89;
  v278 = v91;
  v92 = sub_1C5A49BC4(v89, v91);
  v281 = v5;
  v282 = v43;
  v300 = 0;
  if (v92 & 1) != 0 && (v42 == v39 && v43 == v38 || (sub_1C5BCBDE4()))
  {
    v93 = v286 + 56;
    v94 = 1 << v286[32];
    v95 = -1;
    if (v94 < 64)
    {
      v95 = ~(-1 << v94);
    }

    v96 = v95 & *(v286 + 7);
    v97 = (v94 + 63) >> 6;

    v98 = 0;
    do
    {
      while (1)
      {
        if (v96)
        {
          v124 = v286;
        }

        else
        {
          v124 = v286;
          do
          {
            v125 = v98 + 1;
            if (__OFADD__(v98, 1))
            {
              goto LABEL_174;
            }

            if (v125 >= v97)
            {

              v186 = sub_1C5BC7D44();
              v187 = sub_1C5BCB4F4();
              if (os_log_type_enabled(v186, v187))
              {
                v188 = swift_slowAlloc();
                *v188 = 0;
                _os_log_impl(&dword_1C5922000, v186, v187, "configureCacheIndices: Client-defined buckets did not change.", v188, 2u);
                MEMORY[0x1C69510F0](v188, -1, -1);
              }

              return;
            }

            v96 = *&v93[8 * v125];
            ++v98;
          }

          while (!v96);
          v98 = v125;
        }

        v126 = (*(v124 + 48) + ((v98 << 10) | (16 * __clz(__rbit64(v96)))));
        v128 = *v126;
        v127 = v126[1];
        v129 = v293;
        v130 = *(v293 + 16);

        if (v130 && (v131 = sub_1C596FBD8(v128, v127), (v132 & 1) != 0))
        {
          v133 = 0;
          v295 = *(*(*(v129 + 56) + 8 * v131) + 48);
        }

        else
        {
          v295 = 0;
          v133 = 1;
        }

        v96 &= v96 - 1;
        v134 = v298;
        if (*(v298 + 16))
        {
          v135 = sub_1C596FBD8(v128, v127);
          if (v136)
          {
            break;
          }
        }

        if ((v133 & 1) == 0)
        {
          goto LABEL_74;
        }
      }

      v137 = *(*(v134 + 56) + 8 * v135);

      v138 = *(v137 + 48);

      if (v295 == v138)
      {
        v139 = v133;
      }

      else
      {
        v139 = 1;
      }
    }

    while ((v139 & 1) == 0);
LABEL_74:
  }

  v140 = sub_1C5BC7D44();
  v141 = sub_1C5BCB4F4();
  if (os_log_type_enabled(v140, v141))
  {
    v142 = swift_slowAlloc();
    *v142 = 0;
    _os_log_impl(&dword_1C5922000, v140, v141, "configureCacheIndices: Client-defined indices changed structure.", v142, 2u);
    MEMORY[0x1C69510F0](v142, -1, -1);
  }

  v143 = v278;
  v144 = v286;
  if (*(v278 + 16) <= *(v286 + 2) >> 3)
  {
    v302 = v286;

    sub_1C5BB7FB8(v143);
    v145 = v302;
  }

  else
  {

    v145 = sub_1C5BB80E4(v143, v144);
  }

  v166 = 0;
  v167 = v145 + 56;
  v168 = 1 << *(v145 + 32);
  v169 = -1;
  if (v168 < 64)
  {
    v169 = ~(-1 << v168);
  }

  v170 = v169 & *(v145 + 56);
  v171 = (v168 + 63) >> 6;
  v295 = (v283 + 8);
  v301 += 8;
  v283 = v145 + 56;
  v279 = v171;
  v280 = v40;
  v284 = v145;
  if (!v170)
  {
    goto LABEL_101;
  }

  do
  {
    v172 = v166;
LABEL_104:
    v173 = (*(v145 + 48) + ((v172 << 10) | (16 * __clz(__rbit64(v170)))));
    v175 = *v173;
    v174 = v173[1];

    v176 = v290;
    sub_1C5BC7774();
    v177 = v291;
    sub_1C5BC7764();
    v178 = v289;
    sub_1C5BC7794();
    v179 = *v295;
    v180 = v177;
    v181 = v292;
    (*v295)(v180, v292);
    v182 = (v179)(v176, v181);
    v285 = &v278;
    MEMORY[0x1EEE9AC00](v182);
    *(&v278 - 2) = v178;
    v294 = v175;
    v183 = v300;
    LOBYTE(v176) = sub_1C5B82FBC(sub_1C5BB9160, (&v278 - 4), v175, v174);
    v179(v178, v181);
    if ((v176 & 1) == 0)
    {

      sub_1C5B83E60();
      swift_allocError();
      *v275 = v294;
      v275[1] = v174;
      swift_willThrow();

      goto LABEL_163;
    }

    v184 = v288;
    sub_1C5BC79B4();

    sub_1C5B83764(v184);
    v300 = v183;
    if (v183)
    {

LABEL_168:

      (*v301)(v184, v305);
      return;
    }

    v170 &= v170 - 1;
    (*v301)(v184, v305);
    v166 = v172;
    v145 = v284;
    v167 = v283;
    v171 = v279;
  }

  while (v170);
  while (1)
  {
LABEL_101:
    v172 = v166 + 1;
    if (__OFADD__(v166, 1))
    {
      __break(1u);
LABEL_172:
      __break(1u);
      goto LABEL_173;
    }

    if (v172 >= v171)
    {
      break;
    }

    v170 = *(v167 + 8 * v172);
    ++v166;
    if (v170)
    {
      goto LABEL_104;
    }
  }

  if (*(v286 + 2) <= *(v278 + 16) >> 3)
  {
    v302 = v278;
    sub_1C5BB7FB8(v286);

    v185 = v302;
  }

  else
  {
    v185 = sub_1C5BB80E4(v286, v278);
  }

  v200 = v281;
  v201 = 0;
  v202 = (v185 + 56);
  v203 = 1 << *(v185 + 32);
  v204 = -1;
  if (v203 < 64)
  {
    v204 = ~(-1 << v203);
  }

  v205 = v204 & *(v185 + 56);
  v206 = (v203 + 63) >> 6;
  v285 = (v185 + 56);
  v284 = v206;
  v286 = v185;
  if (v205)
  {
    while (1)
    {
      v207 = v201;
LABEL_122:
      v208 = (*(v185 + 48) + ((v207 << 10) | (16 * __clz(__rbit64(v205)))));
      v210 = *v208;
      v209 = v208[1];

      v211 = v290;
      sub_1C5BC7774();
      v212 = v291;
      sub_1C5BC7764();
      v213 = v289;
      sub_1C5BC7794();
      v214 = *v295;
      v215 = v212;
      v216 = v292;
      (*v295)(v215, v292);
      v217 = (v214)(v211, v216);
      v288 = &v278;
      MEMORY[0x1EEE9AC00](v217);
      *(&v278 - 2) = v213;
      v294 = v210;
      v218 = v300;
      LOBYTE(v211) = sub_1C5B82FBC(sub_1C5BB9B7C, (&v278 - 4), v210, v209);
      v214(v213, v216);
      if ((v211 & 1) == 0)
      {
        break;
      }

      v184 = v287;
      sub_1C5BC79B4();

      sub_1C5B831E4(v184);
      v300 = v218;
      if (v218)
      {

        goto LABEL_168;
      }

      v205 &= v205 - 1;
      (*v301)(v184, v305);
      v201 = v207;
      v200 = v281;
      v185 = v286;
      v202 = v285;
      v206 = v284;
      if (!v205)
      {
        goto LABEL_119;
      }
    }

    sub_1C5B83E60();
    swift_allocError();
    *v276 = v294;
    v276[1] = v209;
    swift_willThrow();

    goto LABEL_163;
  }

  while (1)
  {
LABEL_119:
    v207 = v201 + 1;
    if (__OFADD__(v201, 1))
    {
      goto LABEL_172;
    }

    if (v207 >= v206)
    {
      break;
    }

    v205 = v202[v207];
    ++v201;
    if (v205)
    {
      goto LABEL_122;
    }
  }

  v219 = v298 + 64;
  v220 = 1 << *(v298 + 32);
  v221 = -1;
  if (v220 < 64)
  {
    v221 = ~(-1 << v220);
  }

  v222 = v221 & *(v298 + 64);
  v223 = (v220 + 63) >> 6;
  v224 = 0;

  while (v222)
  {
    v225 = v222;
LABEL_135:
    v222 = (v225 - 1) & v225;
    if (*(v293 + 16))
    {
      v227 = (*(v298 + 48) + ((v224 << 10) | (16 * __clz(__rbit64(v225)))));
      v229 = *v227;
      v228 = v227[1];

      v230 = sub_1C596FBD8(v229, v228);
      if ((v231 & 1) == 0 || !*(v298 + 16))
      {
        goto LABEL_140;
      }

      v232 = *(*(v293 + 56) + 8 * v230);

      v233 = sub_1C596FBD8(v229, v228);
      if ((v234 & 1) == 0)
      {

LABEL_140:

        goto LABEL_141;
      }

      v235 = *(*(v298 + 56) + 8 * v233);
      v236 = v235[6];
      v237 = *(v232 + 48);
      *(v232 + 48) = v236;
      v299 = v235;

      if (v236 < v237)
      {
        sub_1C5BB00D8(v238);
      }

      v301 = v232;

      v239 = v305;
      LODWORD(v295) = swift_isUniquelyReferenced_nonNull_native();
      v302 = v239;
      v240 = sub_1C596FBD8(v229, v228);
      v242 = *(v239 + 16);
      v243 = (v241 & 1) == 0;
      v244 = __OFADD__(v242, v243);
      v245 = v242 + v243;
      if (v244)
      {
        goto LABEL_176;
      }

      v246 = v241;
      if (*(v239 + 24) < v245)
      {
        sub_1C5AF2530(v245, v295);
        v240 = sub_1C596FBD8(v229, v228);
        if ((v246 & 1) != (v247 & 1))
        {
          goto LABEL_178;
        }

LABEL_149:
        if (v246)
        {
          goto LABEL_150;
        }

        goto LABEL_152;
      }

      if (v295)
      {
        goto LABEL_149;
      }

      v305 = v240;
      sub_1C5AF53C0();
      v240 = v305;
      if (v246)
      {
LABEL_150:
        v248 = v240;

        v305 = v302;
        *(*(v302 + 56) + 8 * v248) = v301;

        goto LABEL_141;
      }

LABEL_152:
      v249 = v302;
      *(v302 + 8 * (v240 >> 6) + 64) |= 1 << v240;
      v250 = (*(v249 + 48) + 16 * v240);
      *v250 = v229;
      v250[1] = v228;
      *(*(v249 + 56) + 8 * v240) = v301;
      v251 = v249;

      v252 = *(v251 + 16);
      v244 = __OFADD__(v252, 1);
      v253 = v252 + 1;
      if (v244)
      {
        goto LABEL_177;
      }

      v305 = v251;
      *(v251 + 16) = v253;
LABEL_141:
      v200 = v281;
    }
  }

  while (1)
  {
    v226 = v224 + 1;
    if (__OFADD__(v224, 1))
    {
      break;
    }

    if (v226 >= v223)
    {

      v255 = *(v200 + 16);
      v254 = *(v200 + 24);
      v256 = *(v200 + 32);
      v257 = v200;
      v258 = *(v200 + 40);
      v260 = v296;
      v259 = v297;
      *(v257 + 16) = v305;
      *(v257 + 24) = v260;
      *(v257 + 32) = v259;
      *(v257 + 40) = 1;

      v196 = v255;
      v197 = v254;
      v198 = v256;
      v199 = v258;
      v5 = v257;
      goto LABEL_155;
    }

    v225 = *(v219 + 8 * v226);
    ++v224;
    if (v225)
    {
      v224 = v226;
      goto LABEL_135;
    }
  }

LABEL_173:
  __break(1u);
LABEL_174:
  __break(1u);
LABEL_175:
  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
LABEL_178:
  sub_1C5BCBE84();
  __break(1u);
}

void sub_1C5BB35F0()
{
  swift_beginAccess();
  v1 = *(v0 + 48);
  if (v1)
  {
    v2 = *(v0 + 16);
    v3 = *(v0 + 24);
    v4 = *(v0 + 32);
    if (*(v0 + 40))
    {
      v5 = *(v2 + 16);
      if (v5)
      {
        v6 = sub_1C5A9EA9C(*(v2 + 16), 0);
        v7 = sub_1C5A9EC38(&v28, (v6 + 32), v5, v2);
        v8 = v28;
        v27 = v7;

        sub_1C5A680AC(v2, v3, v4, 1);

        sub_1C593F204(v8);
        if (v27 != v5)
        {
          __break(1u);
          return;
        }
      }

      else
      {

        sub_1C5A680AC(v2, v3, v4, 1);

        v6 = MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191918, &unk_1C5BDB0B0);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_1C5BED3C0;
      *(v6 + 32) = v2;

      v13.n128_f64[0] = sub_1C5A680AC(v2, v3, v4, 0);
    }

    if (v6 >> 62)
    {
      v14 = sub_1C5BCB984();
      if (v14)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v14 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v14)
      {
LABEL_15:
        if (v14 >= 1)
        {
          if ((v6 & 0xC000000000000001) != 0)
          {
            v15 = 0;
            do
            {
              v16 = MEMORY[0x1C694FD20](v15++, v6, v13);
              v17 = swift_allocObject();
              swift_weakInit();
              v18 = swift_allocObject();
              *(v18 + 16) = v17;
              *(v18 + 24) = v1;
              v20 = *(v16 + 56);
              v19 = *(v16 + 64);
              *(v16 + 56) = sub_1C5BB91F0;
              *(v16 + 64) = v18;

              sub_1C59261FC(v20, v19);
              swift_unknownObjectRelease();
            }

            while (v14 != v15);
          }

          else
          {
            v21 = 32;
            do
            {
              v22 = *(v6 + v21);
              v23 = swift_allocObject();
              swift_weakInit();
              v24 = swift_allocObject();
              *(v24 + 16) = v23;
              *(v24 + 24) = v1;
              v25 = *(v22 + 56);
              v26 = *(v22 + 64);
              *(v22 + 56) = sub_1C5BB9B9C;
              *(v22 + 64) = v24;

              sub_1C59261FC(v25, v26);

              v21 += 8;
              --v14;
            }

            while (v14);
          }

          return;
        }

        __break(1u);
        goto LABEL_26;
      }
    }

    return;
  }

  if (qword_1EC1909E0 != -1)
  {
LABEL_26:
    swift_once();
  }

  v9 = sub_1C5BC7D64();
  __swift_project_value_buffer(v9, qword_1EC19A698);
  v10 = sub_1C5BC7D44();
  v11 = sub_1C5BCB4D4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    MEMORY[0x1C69510F0](v12, -1, -1);
  }
}

uint64_t MotionCache.fetchAsset(url:presentationResolution:cacheBucketID:loggingContext:)(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, double a5, double a6)
{
  *(v7 + 152) = a3;
  *(v7 + 160) = v6;
  *(v7 + 144) = a2;
  *(v7 + 128) = a5;
  *(v7 + 136) = a6;
  *(v7 + 120) = a1;
  v9 = sub_1C5BC7944();
  *(v7 + 168) = v9;
  *(v7 + 176) = *(v9 - 8);
  *(v7 + 184) = swift_task_alloc();
  v10 = sub_1C5BC7A24();
  *(v7 + 192) = v10;
  *(v7 + 200) = *(v10 - 8);
  *(v7 + 208) = swift_task_alloc();
  *(v7 + 216) = swift_task_alloc();
  *(v7 + 224) = swift_task_alloc();
  v11 = sub_1C5BC7B04();
  *(v7 + 232) = v11;
  *(v7 + 240) = *(v11 - 8);
  *(v7 + 248) = swift_task_alloc();
  *(v7 + 256) = *a4;
  if (qword_1EC1909D0 != -1)
  {
    swift_once();
  }

  v12 = qword_1EC19A688;
  *(v7 + 272) = qword_1EC19A688;

  return MEMORY[0x1EEE6DFA0](sub_1C5BB3BF4, v12, 0);
}

uint64_t sub_1C5BB3BF4()
{
  v1 = objc_opt_self();
  v0[35] = v1;
  v2 = [v1 standardUserDefaults];
  v3 = [v2 motionMode];

  if (v3 && (v3 != 1 || (v4 = [objc_opt_self() sharedMonitor], objc_msgSend(v4, sel_networkType), v4, ICEnvironmentNetworkTypeIsWiFi())))
  {
    v5 = swift_task_alloc();
    v0[36] = v5;
    *v5 = v0;
    v5[1] = sub_1C5BB3DD4;

    return sub_1C5BAD518();
  }

  else
  {

    v7 = v0[1];

    return v7(0);
  }
}

uint64_t sub_1C5BB3DD4()
{
  v1 = *(*v0 + 272);

  return MEMORY[0x1EEE6DFA0](sub_1C5BB3F10, v1, 0);
}

uint64_t sub_1C5BB3F10()
{
  v1 = v0[33];
  v2 = v0[31];
  v3 = v0[32];
  v4 = v0[29];
  v5 = v0[30];
  v6 = v0[20];
  v24 = v0[18];
  v25 = v0[19];
  v8 = v0[16];
  v7 = v0[17];
  v9 = v0[15];
  if (v1 == 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = v0[32];
  }

  v23 = v10;
  if (v1 == 1)
  {
    v11 = 0;
  }

  else
  {
    v11 = v0[33];
  }

  v21 = v0[34];
  v22 = v11;
  sub_1C5BB4A54(v3, v1);
  sub_1C5BC7AF4();
  v12 = sub_1C5BC7AD4();
  v14 = v13;
  v0[37] = v13;
  (*(v5 + 8))(v2, v4);
  v15 = swift_task_alloc();
  v0[38] = v15;
  v15[2] = v6;
  v15[3] = v9;
  v15[4] = v12;
  v15[5] = v14;
  v15[6] = v8;
  v15[7] = v7;
  v15[8] = v24;
  v15[9] = v25;
  v15[10] = v23;
  v15[11] = v22;
  v16 = swift_task_alloc();
  v0[39] = v16;
  v16[2] = v6;
  v16[3] = v12;
  v16[4] = v14;
  v16[5] = v3;
  v16[6] = v1;
  v18 = sub_1C5BB89C8(&qword_1EC1930A8, v17, type metadata accessor for MotionCacheActor, &protocol conformance descriptor for MotionCacheActor);
  v19 = swift_task_alloc();
  v0[40] = v19;
  *v19 = v0;
  v19[1] = sub_1C5BB412C;

  return MEMORY[0x1EEE6DE18](v0 + 11, &unk_1C5BF44F8, v15, sub_1C5BB4FC0, v16, v21, v18, &type metadata for MotionCache.FetchResult);
}

void sub_1C5BB412C()
{
  v2 = *v1;
  *(*v1 + 328) = v0;

  if (v0)
  {
  }

  else
  {
    v3 = *(v2 + 272);

    MEMORY[0x1EEE6DFA0](sub_1C5BB42D0, v3, 0);
  }
}

uint64_t sub_1C5BB42D0()
{
  v63 = v0;
  v62 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 88);
  v2 = [*(v0 + 280) standardUserDefaults];
  v3 = [v2 motionMode];

  if (!v3 || v3 == 1 && (v4 = [objc_opt_self() sharedMonitor], objc_msgSend(v4, sel_networkType), v4, (ICEnvironmentNetworkTypeIsWiFi() & 1) == 0))
  {

    sub_1C59F831C(v1);
    goto LABEL_7;
  }

  if (v1 <= 2)
  {
LABEL_5:

LABEL_7:
    v5 = 0;
    goto LABEL_8;
  }

  v8 = *(v0 + 200);
  v9 = *(v0 + 208);
  v10 = *(v0 + 184);
  v59 = *(v0 + 192);
  v11 = *(v0 + 168);
  v12 = *(v0 + 176);
  v13 = [v1 URL];
  sub_1C5BC79E4();

  v57 = [objc_opt_self() defaultManager];
  v14 = [v57 temporaryDirectory];
  sub_1C5BC79E4();

  *(v0 + 40) = sub_1C5BC7984();
  *(v0 + 48) = v15;
  (*(v12 + 104))(v10, *MEMORY[0x1E6968F70], v11);
  sub_1C594A23C();
  sub_1C5BC7A14();
  (*(v12 + 8))(v10, v11);

  v16 = *(v8 + 8);
  v16(v9, v59);
  sub_1C5BC79F4();
  v17 = sub_1C5BCAE44();

  v18 = [v57 fileExistsAtPath_];

  if ((v18 & 1) == 0)
  {
    v19 = sub_1C5BC7994();
    v20 = sub_1C5BC7994();
    *(v0 + 96) = 0;
    v21 = [v57 copyItemAtURL:v19 toURL:v20 error:v0 + 96];

    v22 = *(v0 + 96);
    if (!v21)
    {
      v39 = v22;
      v40 = sub_1C5BC7914();

      swift_willThrow();
      if (qword_1EC1909E0 != -1)
      {
        swift_once();
      }

      v41 = *(v0 + 264);
      v54 = *(v0 + 216);
      v56 = *(v0 + 224);
      v42 = *(v0 + 192);
      if (v41 == 1)
      {
        v43 = 0;
      }

      else
      {
        v43 = *(v0 + 264);
      }

      if (v41 == 1)
      {
        v44 = 0;
      }

      else
      {
        v44 = *(v0 + 256);
      }

      v45 = sub_1C5BC7D64();
      __swift_project_value_buffer(v45, qword_1EC19A698);
      v60 = 0;
      v61 = 0xE000000000000000;
      sub_1C5BCBA94();
      *(v0 + 56) = 0;
      *(v0 + 64) = 0xE000000000000000;
      MEMORY[0x1C694F170](0xD000000000000016, 0x80000001C5BFEDE0);
      *(v0 + 104) = v40;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930D0, &qword_1C5BD4FE0);
      sub_1C5BCBBA4();
      v46 = *(v0 + 56);
      v47 = *(v0 + 64);
      v48 = sub_1C5BCB4D4();
      v60 = v44;
      v61 = v43;
      sub_1C5ACCC10(v48, v46, v47, &v60);

      sub_1C59F831C(v1);

      sub_1C59F831C(v1);
      v16(v54, v42);
      v16(v56, v42);
      goto LABEL_5;
    }

    v23 = v22;
  }

  v24 = *(v0 + 160);
  v25 = objc_allocWithZone(MEMORY[0x1E6988168]);
  v26 = sub_1C5BC7994();
  v5 = [v25 initWithURL:v26 options:0];

  swift_beginAccess();
  v27 = *(v24 + 48);
  v28 = *(v0 + 224);
  if (v27)
  {
    v29 = *(v0 + 328);
    swift_endAccess();

    sub_1C5B818D4(v28);
    if (v29)
    {
      v58 = v16;

      if (qword_1EC1909E0 != -1)
      {
        swift_once();
      }

      v30 = *(v0 + 264);
      v53 = *(v0 + 216);
      v55 = *(v0 + 224);
      v31 = *(v0 + 192);
      if (v30 == 1)
      {
        v32 = 0;
      }

      else
      {
        v32 = *(v0 + 264);
      }

      if (v30 == 1)
      {
        v33 = 0;
      }

      else
      {
        v33 = *(v0 + 256);
      }

      v52 = v33;
      v34 = sub_1C5BC7D64();
      __swift_project_value_buffer(v34, qword_1EC19A698);
      v60 = 0;
      v61 = 0xE000000000000000;
      sub_1C5BCBA94();
      *(v0 + 72) = 0;
      *(v0 + 80) = 0xE000000000000000;
      MEMORY[0x1C694F170](0xD000000000000023, 0x80000001C5BFEE00);
      *(v0 + 112) = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930D0, &qword_1C5BD4FE0);
      sub_1C5BCBBA4();
      v35 = *(v0 + 72);
      v36 = *(v0 + 80);
      v37 = sub_1C5BCB4D4();
      v60 = v52;
      v61 = v32;
      sub_1C5ACCC10(v37, v35, v36, &v60);

      sub_1C59F831C(v1);

      sub_1C59F831C(v1);
      v58(v53, v31);
      v58(v55, v31);
    }

    else
    {
      v50 = *(v0 + 216);
      v49 = *(v0 + 224);
      v51 = *(v0 + 192);

      sub_1C59F831C(v1);
      sub_1C59F831C(v1);

      v16(v50, v51);
      v16(v49, v51);
    }
  }

  else
  {
    v38 = *(v0 + 192);
    v16(*(v0 + 216), v38);
    v16(v28, v38);
    swift_endAccess();

    sub_1C59F831C(v1);

    sub_1C59F831C(v1);
  }

LABEL_8:

  v6 = *(v0 + 8);

  return v6(v5);
}

double sub_1C5BB4A54(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_1C5BB4A68(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11[4] = a1;
  if (qword_1EC1909D0 != -1)
  {
    v21 = a10;
    swift_once();
    a10 = v21;
  }

  v11[5] = qword_1EC19A688;
  v11[2] = a10;
  v11[3] = a11;
  v19 = swift_task_alloc();
  v11[6] = v19;
  *v19 = v11;
  v19[1] = sub_1C5BB4BBC;

  return sub_1C5BAE17C(a5, a6, a7, a8, a9, 3, 0, 0, a2, a3);
}

uint64_t sub_1C5BB4BBC(uint64_t a1)
{
  v2 = *(*v1 + 40);
  *(*v1 + 56) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1C5BB4CD4, v2, 0);
}

uint64_t sub_1C5BB4CF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = *(v9 + 2);
  v13 = *(v9 + 3);
  v14 = *(v9 + 4);
  v15 = *(v9 + 5);
  v16 = v9[6];
  v17 = v9[7];
  v18 = *(v9 + 8);
  v19 = *(v9 + 9);
  v20 = *(v9 + 10);
  v21 = swift_task_alloc();
  *(v10 + 16) = v21;
  *v21 = v10;
  v21[1] = sub_1C592ABD4;

  return sub_1C5BB4A68(a1, v16, v17, v12, v13, v14, v15, v18, v19, v20, a9);
}

double sub_1C5BB4DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930A0, &qword_1C5BD7440);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v19 - v11;
  v13 = sub_1C5BCB214();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);

  sub_1C5BB4A54(a4, a5);
  if (qword_1EC1909D0 != -1)
  {
    swift_once();
  }

  v15 = qword_1EC19A688;
  v16 = sub_1C5BB89C8(&qword_1EC1930A8, v14, type metadata accessor for MotionCacheActor, &protocol conformance descriptor for MotionCacheActor);
  v17 = swift_allocObject();
  v17[2] = v15;
  v17[3] = v16;
  v17[4] = a1;
  v17[5] = a2;
  v17[6] = a3;
  v17[7] = a4;
  v17[8] = a5;

  sub_1C5AD0FB8(0, 0, v12, &unk_1C5BF46C8, v17);

  return result;
}

uint64_t sub_1C5BB4FF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  if (qword_1EC1909D0 != -1)
  {
    swift_once();
  }

  v9 = qword_1EC19A688;

  return MEMORY[0x1EEE6DFA0](sub_1C5BB5094, v9, 0);
}

uint64_t sub_1C5BB5094()
{
  v10 = v0;
  v1 = v0[6];
  if (v1 == 1)
  {
    v2 = 0;
  }

  else
  {
    v2 = v0[6];
  }

  if (*(v0[2] + 56))
  {
    v4 = v0[4];
    v3 = v0[5];
    v5 = v0[3];
    if (v1 == 1)
    {
      v6 = 0;
    }

    else
    {
      v6 = v0[5];
    }

    v9[0] = v6;
    v9[1] = v2;
    sub_1C5BB4A54(v3, v1);

    sub_1C5B719D8(v5, v4, v9);
  }

  else
  {
    sub_1C5BB4A54(v0[5], v1);
  }

  v7 = v0[1];

  return v7();
}

id sub_1C5BB5160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, double a5, double a6)
{
  v61 = a3;
  v60 = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A6E8, &qword_1C5BF46A8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v57 - v11;
  v13 = type metadata accessor for MotionCacheEntry(0);
  v58 = *(v13 - 8);
  v59 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v57 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a4;
  v15 = a4[1];
  if (qword_1EC1909E0 != -1)
  {
    swift_once();
  }

  v17 = sub_1C5BC7D64();
  v18 = __swift_project_value_buffer(v17, qword_1EC19A698);
  v63 = 0;
  v64 = 0xE000000000000000;
  sub_1C5BCBA94();
  MEMORY[0x1C694F170](0xD000000000000032, 0x80000001C5BFF1F0);
  sub_1C5BC7A24();
  v19 = sub_1C5BB89C8(&qword_1EC192580, 255, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
  v20 = sub_1C5BCBD64();
  v21 = a1;
  MEMORY[0x1C694F170](v20);

  v22 = v63;
  v23 = v64;
  v24 = sub_1C5BCB4F4();
  v63 = v16;
  v64 = v15;
  sub_1C5ACCC10(v24, v22, v23, &v63);

  v63 = v16;
  v64 = v15;
  v25 = v65;
  v26 = sub_1C5BB5B0C(v60, v61, &v63);
  if (!v25)
  {
    v65 = v19;
    v61 = 0;
    v62 = v18;
    v27 = v26;
    v28 = sub_1C5BC7964();
    sub_1C5BB0A98(v28, v29, v12);

    v30 = v59;
    if ((*(v58 + 48))(v12, 1, v59) == 1)
    {
      sub_1C5924EF4(v12, &qword_1EC19A6E8, &qword_1C5BF46A8);
      v63 = 0;
      v64 = 0xE000000000000000;
      sub_1C5BCBA94();

      v63 = 0x696D206568636143;
      v64 = 0xEF20726F66207373;
      v31 = sub_1C5BCBD64();
      MEMORY[0x1C694F170](v31);

      MEMORY[0x1C694F170](46, 0xE100000000000000);
      v32 = v63;
      v33 = v64;
      v34 = sub_1C5BCB4F4();
      v63 = v16;
      v64 = v15;
      sub_1C5ACCC10(v34, v32, v33, &v63);

      return 0;
    }

    else
    {
      v60 = v27;
      v58 = v21;
      v35 = v57;
      sub_1C5BB8960(v12, v57, type metadata accessor for MotionCacheEntry);
      v36 = (v35 + *(v30 + 20));
      v37 = *v36;
      v38 = v36[1];
      v39 = floor(a6) - floor(v38);
      if (floor(a5) - floor(*v36) <= 1.0 && v39 <= 1.0)
      {
        v63 = 0;
        v64 = 0xE000000000000000;
        sub_1C5BCBA94();

        v63 = 0xD000000000000020;
        v64 = 0x80000001C5BFF230;
        v43 = sub_1C5BCBD64();
        MEMORY[0x1C694F170](v43);

        MEMORY[0x1C694F170](46, 0xE100000000000000);
        v44 = v63;
        v45 = v64;
        v46 = sub_1C5BCB4C4();
        v63 = v16;
        v64 = v15;
        sub_1C5ACCC10(v46, v44, v45, &v63);

        v47 = [objc_allocWithZone(MEMORY[0x1E696AC08]) init];
        sub_1C5BC79F4();
        v48 = sub_1C5BCAE44();

        v49 = [v47 fileExistsAtPath_];

        if (v49)
        {
          v63 = 0;
          v64 = 0xE000000000000000;
          sub_1C5BCBA94();

          v63 = 0xD000000000000019;
          v64 = 0x80000001C5BFF260;
          v50 = sub_1C5BCBD64();
          MEMORY[0x1C694F170](v50);

          MEMORY[0x1C694F170](46, 0xE100000000000000);
          v51 = v63;
          v52 = v64;
          v53 = sub_1C5BCB4F4();
          v63 = v16;
          v64 = v15;
          sub_1C5ACCC10(v53, v51, v52, &v63);

          v54 = objc_allocWithZone(MEMORY[0x1E6988168]);
          v55 = sub_1C5BC7994();
          v18 = [v54 initWithURL:v55 options:0];

          sub_1C5BB7BB8(v35, type metadata accessor for MotionCacheEntry);
          return v18;
        }

        sub_1C5BB8A10();
        v18 = swift_allocError();
        *v56 = 0u;
        *(v56 + 16) = 0u;
        *(v56 + 32) = 1;
      }

      else
      {
        sub_1C5BB8A10();
        v18 = swift_allocError();
        *v41 = a5;
        *(v41 + 8) = a6;
        *(v41 + 16) = v37;
        *(v41 + 24) = v38;
        *(v41 + 32) = 0;
      }

      swift_willThrow();

      sub_1C5BB7BB8(v35, type metadata accessor for MotionCacheEntry);
    }
  }

  return v18;
}

unint64_t sub_1C5BB57D8()
{
  v1 = 0xD000000000000027;
  if ((*(v0 + 32) & 1) == 0)
  {
    sub_1C5BCBA94();
    MEMORY[0x1C694F170](0xD00000000000002FLL, 0x80000001C5BFF100);
    v2 = sub_1C5BCB304();
    MEMORY[0x1C694F170](v2);

    MEMORY[0x1C694F170](0x203A68203BLL, 0xE500000000000000);
    v3 = sub_1C5BCB304();
    MEMORY[0x1C694F170](v3);

    MEMORY[0x1C694F170](62, 0xE100000000000000);
    MEMORY[0x1C694F170](540702524, 0xE400000000000000);

    MEMORY[0x1C694F170](0x646568636163202CLL, 0xE900000000000020);
    v4 = sub_1C5BCB304();
    MEMORY[0x1C694F170](v4);

    MEMORY[0x1C694F170](0x203A68203BLL, 0xE500000000000000);
    v5 = sub_1C5BCB304();
    MEMORY[0x1C694F170](v5);

    MEMORY[0x1C694F170](62, 0xE100000000000000);
    MEMORY[0x1C694F170](540702524, 0xE400000000000000);

    return 0;
  }

  return v1;
}

unint64_t sub_1C5BB59A8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    if (a3 == 1)
    {
      sub_1C5BCBA94();

      v8 = 0xD000000000000015;
    }

    else
    {
      v8 = 0;
      sub_1C5BCBA94();
      MEMORY[0x1C694F170](0xD00000000000002CLL, 0x80000001C5BFF130);
    }

    MEMORY[0x1C694F170](a1, a2);
    v5 = 0x746F6E2073617720;
    v6 = 0xEF2E646E756F6620;
  }

  else
  {
    v8 = 0;
    sub_1C5BCBA94();
    MEMORY[0x1C694F170](0xD000000000000034, 0x80000001C5BFF180);
    MEMORY[0x1C694F170](a1, a2);
    v5 = 0xD00000000000002ELL;
    v6 = 0x80000001C5BFF1C0;
  }

  MEMORY[0x1C694F170](v5, v6);
  return v8;
}

uint64_t sub_1C5BB5B0C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v7 = *a3;
  v6 = a3[1];
  v8 = *(v3 + 16);
  if (*(v3 + 40))
  {
    v10 = *(v3 + 24);
    v9 = *(v3 + 32);
    if (a2)
    {
      v11 = *(v8 + 16);
      sub_1C5A680AC(v8, v10, v9, 1);

      if (v11 && (v12 = sub_1C596FBD8(a1, a2), (v13 & 1) != 0))
      {
        v14 = *(*(v8 + 56) + 8 * v12);

        if (qword_1EC1909E0 != -1)
        {
          swift_once();
        }

        v15 = sub_1C5BC7D64();
        __swift_project_value_buffer(v15, qword_1EC19A698);
        sub_1C5BCBA94();

        MEMORY[0x1C694F170](a1, a2);

        MEMORY[0x1C694F170](46, 0xE100000000000000);
        v16 = sub_1C5BCB4F4();
        v31 = v7;
        v32 = v6;
        sub_1C5ACCC10(v16, 0xD00000000000002BLL, 0x80000001C5BFF080, &v31);

        return v14;
      }

      else
      {

        sub_1C5BB7C6C();
        swift_allocError();
        *v18 = a1;
        *(v18 + 8) = a2;
        *(v18 + 16) = 1;
        swift_willThrow();
      }

      return v8;
    }

    if (*(v8 + 16))
    {
      sub_1C5A680AC(*(v3 + 16), *(v3 + 24), *(v3 + 32), 1);

      v19 = sub_1C596FBD8(v10, v9);
      v21 = v20;

      if (v21)
      {
        v22 = *(*(v8 + 56) + 8 * v19);
        v23 = qword_1EC1909E0;

        if (v23 != -1)
        {
          swift_once();
        }

        v24 = sub_1C5BC7D64();
        __swift_project_value_buffer(v24, qword_1EC19A698);
        sub_1C5BCBA94();
        MEMORY[0x1C694F170](0xD000000000000033, 0x80000001C5BFF040);

        MEMORY[0x1C694F170](v10, v9);
        swift_bridgeObjectRelease_n();

        MEMORY[0x1C694F170](46, 0xE100000000000000);
        v25 = sub_1C5BCB4F4();
        v31 = v7;
        v32 = v6;
        sub_1C5ACCC10(v25, 0, 0xE000000000000000, &v31);

        return v22;
      }
    }

    else
    {
    }

    sub_1C5BB7C6C();
    swift_allocError();
    *v29 = v10;
    *(v29 + 8) = v9;
    *(v29 + 16) = 2;
    swift_willThrow();

    return v8;
  }

  if (a2)
  {
    sub_1C5BB7C6C();
    swift_allocError();
    *v17 = a1;
    *(v17 + 8) = a2;
    *(v17 + 16) = 0;
    swift_willThrow();
  }

  else
  {
    v26 = qword_1EC1909E0;

    if (v26 != -1)
    {
      swift_once();
    }

    v27 = sub_1C5BC7D64();
    __swift_project_value_buffer(v27, qword_1EC19A698);
    v28 = sub_1C5BCB4F4();
    v31 = v7;
    v32 = v6;
    sub_1C5ACCC10(v28, 0xD00000000000001BLL, 0x80000001C5BFF0B0, &v31);
  }

  return v8;
}

uint64_t sub_1C5BB5F4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = a8;
  v8[11] = v12;
  v8[8] = a6;
  v8[9] = a7;
  v8[6] = a4;
  v8[7] = a5;
  v9 = sub_1C5BC7A24();
  v8[12] = v9;
  v8[13] = *(v9 - 8);
  v8[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A6E8, &qword_1C5BF46A8);
  v8[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C5BB6080, 0, 0);
}

uint64_t sub_1C5BB6080()
{
  if (qword_1EC1909D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC19A688;
  *(v0 + 128) = qword_1EC19A688;

  return MEMORY[0x1EEE6DFA0](sub_1C5BB6144, v1, 0);
}

uint64_t sub_1C5BB6144()
{
  if ((sub_1C5B818B0() & 1) != 0 || (v0[4] = 66565, sub_1C5BC79F4(), v1 = sub_1C5BCAED4(), , v2 = fsctl((v1 + 32), 0xC0084A44uLL, v0 + 4, 0), , !v2))
  {

    v4 = v0[1];

    return v4();
  }

  else
  {
    v3 = *MEMORY[0x1E696A798];
    v0[17] = [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:v3 code:MEMORY[0x1C694C0F0]() userInfo:0];

    swift_willThrow();

    return MEMORY[0x1EEE6DFA0](sub_1C5BB62E0, 0, 0);
  }
}

uint64_t sub_1C5BB62E0()
{
  v23 = v0;
  v22 = *MEMORY[0x1E69E9840];
  if (qword_1EC1909E0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 136);
  v2 = *(v0 + 120);
  v3 = *(v0 + 104);
  v17 = *(v0 + 128);
  v5 = *(v0 + 64);
  v4 = *(v0 + 72);
  v18 = *(v0 + 56);
  v19 = *(v0 + 96);
  v6 = sub_1C5BC7D64();
  __swift_project_value_buffer(v6, qword_1EC19A698);
  v20 = 0;
  v21 = 0xE000000000000000;
  sub_1C5BCBA94();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  MEMORY[0x1C694F170](0xD00000000000008FLL, 0x80000001C5BFF2E0);
  *(v0 + 40) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930D0, &qword_1C5BD4FE0);
  sub_1C5BCBBA4();
  MEMORY[0x1C694F170](46, 0xE100000000000000);
  v7 = *(v0 + 16);
  v8 = *(v0 + 24);
  v9 = sub_1C5BCB4D4();
  v20 = v5;
  v21 = v4;
  sub_1C5ACCC10(v9, v7, v8, &v20);

  v10 = sub_1C5BC7964();
  sub_1C5BB0790(v10, v11, v2);

  sub_1C5924EF4(v2, &qword_1EC19A6E8, &qword_1C5BF46A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1999D8, &unk_1C5BF2430);
  v12 = *(v3 + 80);
  *(v0 + 168) = v12;
  v13 = (v12 + 32) & ~v12;
  v14 = swift_allocObject();
  *(v0 + 144) = v14;
  v15 = *(v3 + 16);
  *(v0 + 152) = v15;
  *(v0 + 160) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v15(v14 + v13, v18, v19);

  return MEMORY[0x1EEE6DFA0](sub_1C5BB6540, v17, 0);
}

uint64_t sub_1C5BB6540()
{
  v1 = *(v0 + 144);
  v3 = *(v0 + 104);
  v2 = *(v0 + 112);
  v4 = *(v0 + 96);
  v5 = (*(v0 + 168) + 32) & ~*(v0 + 168);
  (*(v0 + 152))(v2, v1 + v5, v4);
  swift_setDeallocating();
  v6 = *(v3 + 8);
  v6(v1 + v5, v4);
  swift_deallocClassInstance();
  sub_1C5B81170(v2, 2u);
  v6(v2, v4);

  return MEMORY[0x1EEE6DFA0](sub_1C5BB6664, 0, 0);
}

uint64_t sub_1C5BB6664()
{

  v1 = *(v0 + 8);

  return v1();
}

double sub_1C5BB6700(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v40 = a3;
  v5 = type metadata accessor for MotionCacheEntry(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v42 = &Strong - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_1C5BC7A24();
  v39 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v9 = &Strong - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&result = MEMORY[0x1EEE9AC00](v10).n128_u64[0];
  v38 = &Strong - v12;
  v13 = *(a1 + 16);
  if (v13)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v44 = MEMORY[0x1E69E7CC0];
      sub_1C5B8F0A8(0, v13, 0);
      v14 = v44;
      v15 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
      v41 = *(v6 + 72);
      v16 = v39;
      v17 = (v39 + 32);
      do
      {
        v18 = v42;
        sub_1C5BB7B3C(v15, v42);
        v19 = *v17;
        (*v17)(v9, v18, v43);
        v44 = v14;
        v21 = *(v14 + 16);
        v20 = *(v14 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_1C5B8F0A8((v20 > 1), v21 + 1, 1);
          v16 = v39;
          v14 = v44;
        }

        *(v14 + 16) = v21 + 1;
        v22 = v14 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
        v23 = *(v16 + 72);
        v19((v22 + v23 * v21), v9, v43);
        v15 += v41;
        --v13;
      }

      while (v13);
      v26 = *(v16 + 16);
      v24 = v16 + 16;
      v25 = v26;
      v27 = v21 + 1;
      v28 = v38;
      do
      {
        v29 = v43;
        v25(v28, v22, v43);
        sub_1C5B81170(v28, 0);
        (*(v24 - 8))(v28, v29);
        v22 += v23;
        --v27;
      }

      while (v27);

      v31 = *(Strong + 16);
      v30 = *(Strong + 24);
      v32 = *(Strong + 32);
      v33 = *(Strong + 40);
      sub_1C5BC7754();
      swift_allocObject();
      if (v33)
      {

        sub_1C5BC7744();
        v44 = v31;
        v45 = v30;
        v46 = v32;
        sub_1C5BB7C18();
      }

      else
      {

        sub_1C5BC7744();
        v44 = v31;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193688, &qword_1C5BD8320);
        sub_1C5BB9808(&qword_1EC19A6F8, &unk_1C5BEFF30);
      }

      v34 = sub_1C5BC7734();
      v36 = v35;

      sub_1C5BC7A44();
      sub_1C5A5BB4C(v34, v36);
      sub_1C5BB78E0(v31, v30, v32, v33);
      sub_1C5BB343C();
    }
  }

  return result;
}

uint64_t MotionCache.deinit()
{
  sub_1C5BB78E0(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));

  return v0;
}

uint64_t MotionCache.__deallocating_deinit()
{
  sub_1C5BB78E0(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));

  return swift_deallocClassInstance();
}

double sub_1C5BB6D40()
{
  swift_beginAccess();
  v2 = *(v0 + 48);
  if (!v2)
  {
    sub_1C5BB7F64();
    swift_allocError();
    swift_willThrow();
    return result;
  }

  v3 = sub_1C5B82004();
  if (!v1)
  {
    v4 = v3;
    v5 = sub_1C59ADCF4(MEMORY[0x1E69E7CC0]);
    v28 = *(v4 + 2);
    if (v28)
    {
      v6 = 0;
      v7 = (v4 + 40);
      while (v6 < *(v4 + 2))
      {
        v9 = *(v7 - 1);
        v8 = *v7;

        v10 = v2;
        v11 = sub_1C5B82778(v9, v8);
        ++v6;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v29 = v5;
        sub_1C5B3C190(v11, v9, v8, isUniquelyReferenced_nonNull_native);

        v7 += 2;
        v2 = v10;
        if (v28 == v6)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_7:

      if (qword_1EC1909E0 == -1)
      {
LABEL_8:
        v13 = sub_1C5BC7D64();
        __swift_project_value_buffer(v13, qword_1EC19A698);

        v14 = sub_1C5BC7D44();
        v15 = sub_1C5BCB4F4();

        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          v17 = swift_slowAlloc();
          v29 = v17;
          *v16 = 136315138;
          v18 = sub_1C5BCACC4();
          v20 = v19;

          v21 = sub_1C592ADA8(v18, v20, &v29);

          *(v16 + 4) = v21;
          _os_log_impl(&dword_1C5922000, v14, v15, "Client-defined cache buckets and number of assets on disk: %s.", v16, 0xCu);
          v22 = __swift_destroy_boxed_opaque_existential_0(v17);
          MEMORY[0x1C69510F0](v17, -1, -1, v22);
          MEMORY[0x1C69510F0](v16, -1, -1);
        }

        else
        {
        }

        v24 = sub_1C5B82778(0, 0);
        v25 = sub_1C5BC7D44();
        v26 = sub_1C5BCB4F4();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          *v27 = 134217984;
          *(v27 + 4) = v24;
          _os_log_impl(&dword_1C5922000, v25, v26, "Shared motion folder's number of assets on disk: %ld.", v27, 0xCu);
          MEMORY[0x1C69510F0](v27, -1, -1);
        }

        goto LABEL_13;
      }
    }

    swift_once();
    goto LABEL_8;
  }

LABEL_13:

  return result;
}

uint64_t sub_1C5BB70EC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A6D0, &qword_1C5BF4698);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1C5BB7AE8();
  sub_1C5BCBFB4();
  LOBYTE(v11) = 0;
  sub_1C5BC7A24();
  sub_1C5BB89C8(&qword_1EC19A6D8, 255, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
  sub_1C5BCBD24();
  if (!v2)
  {
    v11 = *(v3 + *(type metadata accessor for MotionCacheEntry(0) + 20));
    v10[15] = 1;
    type metadata accessor for CGSize(0);
    sub_1C5BB89C8(&qword_1EC19A6E0, 255, type metadata accessor for CGSize, MEMORY[0x1E695EF88]);
    sub_1C5BCBD24();
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_1C5BB72FC(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v26 = sub_1C5BC7A24();
  v23 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A6B0, &qword_1C5BF4690);
  v7 = *(v6 - 8);
  v24 = v6;
  v25 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - v8;
  v10 = type metadata accessor for MotionCacheEntry(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1C5BB7AE8();
  sub_1C5BCBFA4();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    v21 = v10;
    v13 = v12;
    v14 = v23;
    LOBYTE(v27) = 0;
    sub_1C5BB89C8(&qword_1EC19A6C0, 255, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
    v15 = v26;
    v16 = v24;
    sub_1C5BCBCE4();
    v17 = *(v14 + 32);
    v20 = v13;
    v17(v13, v5, v15);
    type metadata accessor for CGSize(0);
    v28 = 1;
    sub_1C5BB89C8(&qword_1EC19A6C8, 255, type metadata accessor for CGSize, MEMORY[0x1E695EFA0]);
    sub_1C5BCBCE4();
    (*(v25 + 8))(v9, v16);
    v18 = v20;
    *(v20 + *(v21 + 20)) = v27;
    sub_1C5BB7B3C(v18, v22);
    __swift_destroy_boxed_opaque_existential_0(a1);
    sub_1C5BB7BB8(v18, type metadata accessor for MotionCacheEntry);
  }
}

uint64_t sub_1C5BB76B0()
{
  if (*v0)
  {
    return 1702521203;
  }

  else
  {
    return 7107189;
  }
}

void sub_1C5BB76DC(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7107189 && a2 == 0xE300000000000000;
  if (v5 || (sub_1C5BCBDE4() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 1702521203 && a2 == 0xE400000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1C5BCBDE4();

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

uint64_t sub_1C5BB77B8(uint64_t a1)
{
  v2 = sub_1C5BB7AE8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C5BB77F4(uint64_t a1)
{
  v2 = sub_1C5BB7AE8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C5BB7860()
{
  v0 = sub_1C5BC7D64();
  __swift_allocate_value_buffer(v0, qword_1EC19A698);
  __swift_project_value_buffer(v0, qword_1EC19A698);
  return sub_1C5BC7D54();
}

double sub_1C5BB78E0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  else
  {
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_11MediaCoreUI11MotionCacheC11FetchResultO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1C5BB79E0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C5BB7A3C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t type metadata accessor for MotionCacheEntry(uint64_t a1)
{
  result = qword_1EC19A720;
  if (!qword_1EC19A720)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1C5BB7AE8()
{
  result = qword_1EC19A6B8;
  if (!qword_1EC19A6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC19A6B8);
  }

  return result;
}

uint64_t sub_1C5BB7B3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MotionCacheEntry(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_1C5BB7BA0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t sub_1C5BB7BB8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1C5BB7C18()
{
  result = qword_1EC19A6F0;
  if (!qword_1EC19A6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC19A6F0);
  }

  return result;
}

unint64_t sub_1C5BB7C6C()
{
  result = qword_1EC19A700;
  if (!qword_1EC19A700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC19A700);
  }

  return result;
}

double sub_1C5BB7CC0@<D0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1C5AB97DC();
  if (v5)
  {
    v6 = v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v1;
    v10 = *v2;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1C5AF53D4();
      v8 = v10;
    }

    sub_1C593F33C((*(v8 + 56) + 32 * v6), a1);
    sub_1C5AF408C(v6, v8);
    *v2 = v8;
  }

  else
  {
    result = 0.0;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return result;
}

uint64_t sub_1C5BB7D60(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_1C596FBD8(a1, a2);
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
    sub_1C5AF5554();
    v8 = v11;
  }

  v9 = *(*(v8 + 56) + 8 * v6);
  sub_1C5AF3EDC(v6, v8);
  *v3 = v8;
  return v9;
}

uint64_t sub_1C5BB7DF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_1C596FBD8(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1C5AF596C();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = type metadata accessor for MotionAssetDownload.AssetKey(0);
    v19 = *(v12 - 8);
    sub_1C5BB8960(v11 + *(v19 + 72) * v8, a3, type metadata accessor for MotionAssetDownload.AssetKey);
    sub_1C5AF4254(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = type metadata accessor for MotionAssetDownload.AssetKey(0);
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

unint64_t sub_1C5BB7F64()
{
  result = qword_1EC19A708;
  if (!qword_1EC19A708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC19A708);
  }

  return result;
}

void sub_1C5BB7FB8(uint64_t a1)
{
  if (*(*v1 + 16))
  {
    v3 = a1 + 56;
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(a1 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_1C5B0F8CC(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }
}

uint64_t sub_1C5BB80E4(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v67 = *MEMORY[0x1E69E9840];
  if (!*(a2 + 16))
  {

    return MEMORY[0x1E69E7CD0];
  }

  v54 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v58 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v62 = (a2 + 56);

  v15 = 0;
  v60 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_56;
      }

      if (v17 >= v12)
      {
        goto LABEL_53;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v61 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    sub_1C5BCBF54();

    sub_1C5BCAF04();
    v23 = sub_1C5BCBF94();
    v24 = -1 << *(v5 + 32);
    v2 = v23 & ~v24;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v62[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v60;
    v15 = v61;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v24;
  while (1)
  {
    v25 = (*(v5 + 48) + 16 * v2);
    v26 = *v25 == v22 && v25[1] == v21;
    if (v26 || (sub_1C5BCBDE4() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v62[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v60;
  v27 = v61;
  v64 = v58;
  v65 = v61;
  v66 = v11;
  v63[0] = v60;
  v63[1] = v7;

  v29 = *(v5 + 32);
  v55 = ((1 << v29) + 63) >> 6;
  v14 = 8 * v55;
  if ((v29 & 0x3Fu) > 0xD)
  {
    goto LABEL_57;
  }

  while (1)
  {
    v56 = &v54;
    MEMORY[0x1EEE9AC00](v28);
    v2 = &v54 - ((v30 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v62, v30);
    v31 = *(v2 + 8 * v8) & ~v4;
    v32 = *(v5 + 16);
    v59 = v2;
    *(v2 + 8 * v8) = v31;
    v33 = v32 - 1;
LABEL_23:
    v57 = v33;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v35 = v27;
    while (1)
    {
      v36 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v36 >= v12)
      {
        v5 = sub_1C5A115E4(v59, v55, v57, v5);
        goto LABEL_51;
      }

      v11 = *(v7 + 8 * v36);
      ++v35;
      if (v11)
      {
        v27 = v36;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v37 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v38 = *(v3 + 48);
            v61 = v27;
            v39 = (v38 + ((v27 << 10) | (16 * v37)));
            v40 = *v39;
            v4 = v39[1];
            sub_1C5BCBF54();

            sub_1C5BCAF04();
            v41 = sub_1C5BCBF94();
            v42 = -1 << *(v5 + 32);
            v8 = v41 & ~v42;
            v2 = v8 >> 6;
            v43 = 1 << v8;
            if (((1 << v8) & v62[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v27 = v61;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v44 = (*(v5 + 48) + 16 * v8);
          if (*v44 != v40 || v44[1] != v4)
          {
            v46 = ~v42;
            while ((sub_1C5BCBDE4() & 1) == 0)
            {
              v8 = (v8 + 1) & v46;
              v2 = v8 >> 6;
              v43 = 1 << v8;
              if (((1 << v8) & v62[v8 >> 6]) == 0)
              {
                v3 = v60;
                goto LABEL_45;
              }

              v47 = (*(v5 + 48) + 16 * v8);
              if (*v47 == v40 && v47[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v60;
          v34 = v59[v2];
          v59[v2] = v34 & ~v43;
          v26 = (v34 & v43) == 0;
          v27 = v61;
          if (!v26)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v33 = v57 - 1;
        if (__OFSUB__(v57, 1))
        {
          __break(1u);
        }

        if (v57 == 1)
        {

          v5 = MEMORY[0x1E69E7CD0];
          goto LABEL_51;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    v49 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v27 = v61;
  }

  v50 = swift_slowAlloc();
  memcpy(v50, v62, v49);
  v51 = v54;
  sub_1C5BB8654(v50, v55, v5, v2, v63);
  v53 = v52;

  if (!v51)
  {

    MEMORY[0x1C69510F0](v50, -1, -1);
    v3 = v63[0];
    v58 = v64;
    v5 = v53;
LABEL_51:
    v13 = v3;
LABEL_53:
    sub_1C593F204(v13);
    return v5;
  }

  result = MEMORY[0x1C69510F0](v50, -1, -1);
  __break(1u);
  return result;
}

void sub_1C5BB8654(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v30 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v28 = v11 + 1;
          }

          else
          {
            v28 = (a5[2] + 64) >> 6;
          }

          a5[3] = v28 - 1;
          a5[4] = 0;

          sub_1C5A115E4(a1, a2, v30, a3);
          return;
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        sub_1C5BCBF54();

        sub_1C5BCAF04();
        v19 = sub_1C5BCBF94();
        v20 = -1 << *(a3 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v24 = (*(a3 + 48) + 16 * v21);
      if (*v24 != v18 || v24[1] != v17)
      {
        v26 = ~v20;
        while ((sub_1C5BCBDE4() & 1) == 0)
        {
          v21 = (v21 + 1) & v26;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v27 = (*(a3 + 48) + 16 * v21);
          if (*v27 == v18 && v27[1] == v17)
          {
            break;
          }
        }
      }

      v10 = a1[v22];
      a1[v22] = v10 & ~v23;
    }

    while ((v10 & v23) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_30:
      __break(1u);
    }

    else if (v30 != 1)
    {
      continue;
    }

    break;
  }
}

uint64_t sub_1C5BB888C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A6E8, &qword_1C5BF46A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C5BB88FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MotionCacheEntry(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C5BB8960(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C5BB89C8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

unint64_t sub_1C5BB8A10()
{
  result = qword_1EC19A718;
  if (!qword_1EC19A718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC19A718);
  }

  return result;
}

uint64_t sub_1C5BB8A64(uint64_t a1)
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
  v11[1] = sub_1C592ABD4;

  return sub_1C5BB4FF4(a1, v4, v5, v6, v7, v8, v9, v10);
}

void sub_1C5BB8B40(uint64_t a1, uint64_t a2, unint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  v7 = a5;
  v8 = a3;
  v9 = a2;
  if (a4)
  {
    v11 = sub_1C59ADCF4(MEMORY[0x1E69E7CC0]);
    v12 = 1 << *(a1 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v9 = v13 & *(a1 + 64);
    v7 = (v12 + 63) >> 6;

    v8 = 0;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          if (!v9)
          {
            while (1)
            {
              v17 = v8 + 1;
              if (__OFADD__(v8, 1))
              {
                __break(1u);
                goto LABEL_41;
              }

              if (v17 >= v7)
              {
                break;
              }

              v9 = *(a1 + 64 + 8 * v17);
              ++v8;
              if (v9)
              {
                v8 = v17;
                goto LABEL_11;
              }
            }

            if (qword_1EC1909E0 != -1)
            {
              swift_once();
            }

            v43 = sub_1C5BC7D64();
            __swift_project_value_buffer(v43, qword_1EC19A698);

            osloga = sub_1C5BC7D44();
            v44 = sub_1C5BCB4F4();

            if (os_log_type_enabled(osloga, v44))
            {
              v45 = swift_slowAlloc();
              v46 = swift_slowAlloc();
              v58 = v46;
              *v45 = 136315650;
              *(v45 + 4) = sub_1C592ADA8(a5, a6, &v58);
              *(v45 + 12) = 2080;

              v47 = sub_1C5BCACC4();
              v49 = v48;

              v50 = sub_1C592ADA8(v47, v49, &v58);

              *(v45 + 14) = v50;
              *(v45 + 22) = 2080;
              *(v45 + 24) = sub_1C592ADA8(a2, a3, &v58);
              _os_log_impl(&dword_1C5922000, osloga, v44, "Indices Structure: %s. Client-defined indices: %s. Default index: %s.", v45, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x1C69510F0](v46, -1, -1);
              MEMORY[0x1C69510F0](v45, -1, -1);

              goto LABEL_34;
            }

LABEL_37:

            return;
          }

LABEL_11:
          v18 = __clz(__rbit64(v9));
          v9 &= v9 - 1;
          v19 = (*(a1 + 48) + ((v8 << 10) | (16 * v18)));
          v21 = *v19;
          v20 = v19[1];
          v22 = *(a1 + 16);

          if (v22)
          {
            v23 = sub_1C596FBD8(v21, v20);
            if (v24)
            {
              break;
            }
          }

          v14 = sub_1C596FBD8(v21, v20);
          v16 = v15;

          if (v16)
          {
            v58 = v11;
            if (!swift_isUniquelyReferenced_nonNull_native())
            {
              sub_1C5AF5258();
              v11 = v58;
            }

            sub_1C5AF3EDC(v14, v11);
          }
        }

        oslog = *(*(*(a1 + 56) + 8 * v23) + 48);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v58 = v11;
        v25 = sub_1C596FBD8(v21, v20);
        v27 = v11[2];
        v28 = (v26 & 1) == 0;
        v29 = __OFADD__(v27, v28);
        v30 = v27 + v28;
        if (v29)
        {
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          sub_1C5BCBE84();
          __break(1u);
          return;
        }

        if (v11[3] < v30)
        {
          break;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          if ((v26 & 1) == 0)
          {
            goto LABEL_25;
          }
        }

        else
        {
          v52 = v25;
          v34 = v26;
          sub_1C5AF5258();
          v25 = v52;
          if ((v34 & 1) == 0)
          {
            goto LABEL_25;
          }
        }

LABEL_23:
        v33 = v25;

        v11 = v58;
        *(v58[7] + 8 * v33) = oslog;
      }

      v31 = v26;
      sub_1C5AF2290(v30, isUniquelyReferenced_nonNull_native);
      v25 = sub_1C596FBD8(v21, v20);
      if ((v31 & 1) != (v32 & 1))
      {
        goto LABEL_44;
      }

      if (v31)
      {
        goto LABEL_23;
      }

LABEL_25:
      v11 = v58;
      v58[(v25 >> 6) + 8] |= 1 << v25;
      v35 = (v11[6] + 16 * v25);
      *v35 = v21;
      v35[1] = v20;
      *(v11[7] + 8 * v25) = oslog;
      v36 = v11[2];
      v29 = __OFADD__(v36, 1);
      v37 = v36 + 1;
      if (v29)
      {
        goto LABEL_43;
      }

      v11[2] = v37;
    }
  }

  if (qword_1EC1909E0 != -1)
  {
LABEL_41:
    swift_once();
  }

  v38 = sub_1C5BC7D64();
  __swift_project_value_buffer(v38, qword_1EC19A698);

  sub_1C5A680AC(a1, v9, v8, 0);
  osloga = sub_1C5BC7D44();
  v39 = sub_1C5BCB4F4();

  if (!os_log_type_enabled(osloga, v39))
  {
    sub_1C5BB78E0(a1, v9, v8, 0);
    goto LABEL_37;
  }

  v40 = swift_slowAlloc();
  v41 = swift_slowAlloc();
  v58 = v41;
  *v40 = 136315394;
  *(v40 + 4) = sub_1C592ADA8(v7, a6, &v58);
  *(v40 + 12) = 2048;
  *(v40 + 14) = *(a1 + 48);
  sub_1C5BB78E0(a1, v9, v8, 0);
  _os_log_impl(&dword_1C5922000, osloga, v39, "Indices Structure: %s. Default index - maxSize: %ld.", v40, 0x16u);
  v42 = __swift_destroy_boxed_opaque_existential_0(v41);
  MEMORY[0x1C69510F0](v41, -1, -1, v42);
  MEMORY[0x1C69510F0](v40, -1, -1);
LABEL_34:
}

uint64_t sub_1C5BB9180(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    v4 = 0;
    v6 = *(result + 64);
    result += 64;
    v5 = v6;
    v7 = 1 << *(result - 32);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & v5;
    v10 = (v7 + 63) >> 6;
    while (v9)
    {
LABEL_5:
      v9 &= v9 - 1;
    }

    while (1)
    {
      v11 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (v11 >= v10)
      {
        return result;
      }

      v9 = *(result + 8 * v11);
      ++v4;
      if (v9)
      {
        v4 = v11;
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1C5BB927C(uint64_t a1)
{
  sub_1C5BC7A24();
  if (v1 <= 0x3F)
  {
    type metadata accessor for CGSize(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1C5BB9304()
{
  result = qword_1EC19A730;
  if (!qword_1EC19A730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC19A730);
  }

  return result;
}

unint64_t sub_1C5BB935C()
{
  result = qword_1EC19A738;
  if (!qword_1EC19A738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC19A738);
  }

  return result;
}

unint64_t sub_1C5BB93B4()
{
  result = qword_1EC19A740;
  if (!qword_1EC19A740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC19A740);
  }

  return result;
}

unint64_t sub_1C5BB940C()
{
  result = qword_1EC19A748;
  if (!qword_1EC19A748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC19A748);
  }

  return result;
}

unint64_t sub_1C5BB9460()
{
  result = qword_1EC19A758;
  if (!qword_1EC19A758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC19A758);
  }

  return result;
}

unint64_t sub_1C5BB94B4()
{
  result = qword_1EC19A768;
  if (!qword_1EC19A768)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC19A760, &qword_1C5BF4AB0);
    sub_1C5BB9808(&qword_1EC19A6F8, &unk_1C5BEFF30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC19A768);
  }

  return result;
}

uint64_t sub_1C5BB955C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A770, &qword_1C5BF4AB8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9[-v5];
  v7 = a1[3];
  __swift_project_boxed_opaque_existential_0(a1, v7);
  sub_1C5BB9460();
  sub_1C5BCBFA4();
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A760, &qword_1C5BF4AB0);
    v9[7] = 0;
    sub_1C5BB9760();
    sub_1C5BCBCE4();
    v7 = v10;
    v9[6] = 1;
    sub_1C5BCBCC4();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v7;
}

unint64_t sub_1C5BB9760()
{
  result = qword_1EC19A778;
  if (!qword_1EC19A778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC19A760, &qword_1C5BF4AB0);
    sub_1C5BB9808(&qword_1EC199768, &unk_1C5BEFF88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC19A778);
  }

  return result;
}

uint64_t sub_1C5BB9808(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC193688, &qword_1C5BD8320);
    sub_1C5BB89C8(&qword_1EC199770, 255, type metadata accessor for MotionCacheEntry, &unk_1C5BF4664);
    sub_1C5BB89C8(&qword_1EC199778, 255, type metadata accessor for MotionCacheEntry, &unk_1C5BF463C);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C5BB98F8(uint64_t a1)
{
  v3 = *(sub_1C5BC7A24() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + v5);
  v11 = *v10;
  v12 = v10[1];
  v13 = *(v1 + v6);
  v14 = swift_task_alloc();
  *(v2 + 16) = v14;
  *v14 = v2;
  v14[1] = sub_1C592A748;

  return sub_1C5BB5F4C(a1, v7, v8, v9, v1 + v4, v11, v12, v13);
}

unint64_t sub_1C5BB9A78()
{
  result = qword_1EC19A780;
  if (!qword_1EC19A780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC19A780);
  }

  return result;
}

unint64_t sub_1C5BB9AD0()
{
  result = qword_1EC19A788;
  if (!qword_1EC19A788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC19A788);
  }

  return result;
}

unint64_t sub_1C5BB9B28()
{
  result = qword_1EC19A790;
  if (!qword_1EC19A790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC19A790);
  }

  return result;
}

void sub_1C5BB9BA0(void *a1)
{
  v2 = OBJC_IVAR____TtC11MediaCoreUI38NowPlayingArtworkMirrorReplicatorLayer_image;
  v3 = *(v1 + OBJC_IVAR____TtC11MediaCoreUI38NowPlayingArtworkMirrorReplicatorLayer_image);
  *(v1 + OBJC_IVAR____TtC11MediaCoreUI38NowPlayingArtworkMirrorReplicatorLayer_image) = a1;
  v10 = a1;

  sub_1C5BB9CA8(0);
  v4 = *(v1 + v2);
  if (v4)
  {
    v5 = objc_allocWithZone(MEMORY[0x1E6979398]);
    v6 = v4;
    v7 = [v5 init];
    [v7 setOpaque_];
    [v7 setDrawsAsynchronously_];
    v8 = [v6 CGImage];
    [v7 setContents_];

    v9 = v7;
    sub_1C5BB9CA8(v7);
  }
}

void sub_1C5BB9CA8(void *a1)
{
  v2 = OBJC_IVAR____TtC11MediaCoreUI38NowPlayingArtworkMirrorReplicatorLayer_imageLayer;
  v3 = *&v1[OBJC_IVAR____TtC11MediaCoreUI38NowPlayingArtworkMirrorReplicatorLayer_imageLayer];
  *&v1[OBJC_IVAR____TtC11MediaCoreUI38NowPlayingArtworkMirrorReplicatorLayer_imageLayer] = a1;
  v7 = a1;

  v4 = *&v1[v2];
  if (v4)
  {
    [v4 removeFromSuperlayer];
    v5 = *&v1[v2];
    if (v5)
    {
      v6 = v5;
      [v1 addSublayer_];
    }
  }
}

void sub_1C5BB9D40()
{
  v18.receiver = v0;
  v18.super_class = type metadata accessor for NowPlayingArtworkMirrorReplicatorLayer();
  objc_msgSendSuper2(&v18, sel_layoutSublayers);
  v1 = *&v0[OBJC_IVAR____TtC11MediaCoreUI38NowPlayingArtworkMirrorReplicatorLayer_image];
  if (v1)
  {
    v2 = *&v0[OBJC_IVAR____TtC11MediaCoreUI38NowPlayingArtworkMirrorReplicatorLayer_imageLayer];
    if (v2)
    {
      v3 = objc_opt_self();
      v4 = v1;
      v5 = v2;
      [v3 begin];
      [v3 setDisableActions_];
      [v4 size];
      v8 = 0.0;
      if (v7 != 0.0)
      {
        v9 = fabs(v7);
        v10 = fmax(v9 * 2.22044605e-16, COERCE_DOUBLE(1));
        v11 = (*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || v9 > v10;
        v12 = v6 / v7;
        if (v11)
        {
          v8 = v12;
        }

        else
        {
          v8 = 0.0;
        }
      }

      [v0 bounds];
      v13 = (CGRectGetWidth(v19) + -48.0) / 0.58;
      v14 = v13 / v8;
      [v5 setAnchorPoint_];
      [v5 setBounds_];
      [v0 bounds];
      [v5 setPosition_];
      [v0 bounds];
      if (v14 >= CGRectGetHeight(v21))
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      [v0 setInstanceCount_];
      CATransform3DMakeTranslation(&v17, 0.0, v14, 0.0);
      CATransform3DScale(&v16, &v17, 1.0, -1.0, 1.0);
      CATransform3DTranslate(&v17, &v16, 0.0, -v14, 0.0);
      [v0 setInstanceTransform_];
      [v3 commit];
    }
  }
}

id sub_1C5BBA158()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NowPlayingArtworkMirrorReplicatorLayer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1C5BBA1D8(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1C5BC8F34();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (v2 + *(a1 + 52));
  *&v16[10] = *(v9 + 58);
  v10 = v9[3];
  v15[2] = v9[2];
  *v16 = v10;
  v11 = v9[1];
  v15[0] = *v9;
  v15[1] = v11;
  if (v16[25])
  {
    v12 = v9[3];
    a2[2] = v9[2];
    a2[3] = v12;
    *(a2 + 57) = *(v9 + 57);
    v13 = v9[1];
    *a2 = *v9;
    a2[1] = v13;
  }

  else
  {

    sub_1C5BCB4E4();
    v14 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5924EF4(v15, &unk_1EC194DE0, &qword_1C5BDCD20);
    (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_1C5BBA36C(uint64_t a1)
{
  v3 = sub_1C5BC8F34();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1 + *(a1 + 56);
  result = *v7;
  if ((*(v7 + 8) & 1) == 0)
  {
    v9 = *v7;

    sub_1C5BCB4E4();
    v10 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    v11 = sub_1C5942458(v9, 0);
    (*(v4 + 8))(v6, v3, v11);
    return v12[1];
  }

  return result;
}

uint64_t NowPlayingQueuePlayingItem.init(controller:supplementary:)@<X0>(void (*a1)(void)@<X1>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v15[0] = a2;
  v15[1] = a3;
  v15[2] = a4;
  v15[3] = a5;
  v8 = type metadata accessor for NowPlayingQueuePlayingItem(0, v15);
  v9 = a6 + v8[13];
  KeyPath = swift_getKeyPath(byte_1C5BF4C30);
  LOBYTE(v15[0]) = 0;
  *v9 = KeyPath;
  *(v9 + 73) = 0;
  v11 = a6 + v8[14];
  *v11 = swift_getKeyPath(byte_1C5BF4C70, v15[0]);
  *(v11 + 8) = 0;
  v12 = (a6 + v8[15]);
  _s5QueueCMa();
  sub_1C5BBE998(qword_1EDA4A0C0, _s5QueueCMa, &unk_1C5BE4338);
  *v12 = sub_1C5BC8C84();
  v12[1] = v13;
  a1();
  return swift_unknownObjectRelease();
}

uint64_t NowPlayingQueuePlayingItem.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EC19A7A8, &qword_1C5BF4CB0);
  v58 = a1;
  v57 = *(a1 + 24);
  sub_1C5BCB804();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  swift_getTupleTypeMetadata2();
  sub_1C5BCAB74();
  v3 = sub_1C5BCA934();
  v56 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v53 - v4;
  WitnessTable = swift_getWitnessTable();
  v84 = MEMORY[0x1E6981E60];
  v85 = WitnessTable;
  v53[1] = WitnessTable;
  v86 = MEMORY[0x1E6981E60];
  v7 = swift_getWitnessTable();
  v79 = v3;
  v80 = MEMORY[0x1E69E6158];
  v81 = v7;
  v82 = MEMORY[0x1E69E6168];
  v8 = sub_1C5BCA724();
  v55 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v53 - v9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1966F8, &unk_1C5BE9EB0);
  v64 = v8;
  v11 = sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC196700, &unk_1C5BE3D70);
  v63 = v11;
  v12 = sub_1C5BC8AB4();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v54 = v53 - v17;
  v61 = sub_1C5BCB804();
  v62 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v19 = v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v60 = v53 - v21;
  v82 = &type metadata for Features;
  v83 = sub_1C5A2E158();
  v22 = swift_allocObject();
  v79 = v22;
  *(v22 + 16) = "MediaCoreUI";
  *(v22 + 24) = 11;
  *(v22 + 32) = 2;
  *(v22 + 40) = "HoveringChapterPicker";
  *(v22 + 48) = 21;
  *(v22 + 56) = 2;
  v23 = sub_1C5BC7C14();
  v25 = __swift_destroy_boxed_opaque_existential_0(&v79);
  if (v23)
  {
    (*(v13 + 56))(v19, 1, 1, v12, v25);
    v26 = swift_getWitnessTable();
    v27 = MEMORY[0x1E697FDC0];
    v28 = sub_1C5924F54(&qword_1EC196708, &qword_1EC1966F8, &unk_1C5BE9EB0, MEMORY[0x1E697FDC0]);
    v68 = v26;
    v69 = v28;
    v29 = swift_getWitnessTable();
    v30 = sub_1C5924F54(&qword_1EC196710, &qword_1EC196700, &unk_1C5BE3D70, v27);
    v66 = v29;
    v67 = v30;
    swift_getWitnessTable();
  }

  else
  {
    MEMORY[0x1EEE9AC00](v24);
    v31 = v58;
    v32 = v57;
    v53[-6] = *(v58 + 16);
    v53[-5] = v32;
    *&v53[-4] = *(v31 + 32);
    v53[-2] = v59;
    sub_1C5BCA924();
    v79 = 0x657551664F706F74;
    v80 = 0xEA00000000006575;
    sub_1C5BCA1C4();
    (*(v56 + 8))(v5, v3);
    v79 = sub_1C5BCA484();
    v33 = v64;
    v34 = swift_getWitnessTable();
    sub_1C5AAB330(&v79, MEMORY[0x1E69815C0], v34, MEMORY[0x1E6981580], v15, 0.0, 0.0, 0.0, 0.0);

    (*(v55 + 8))(v10, v33);
    v35 = MEMORY[0x1E697FDC0];
    v36 = sub_1C5924F54(&qword_1EC196708, &qword_1EC1966F8, &unk_1C5BE9EB0, MEMORY[0x1E697FDC0]);
    v77 = v34;
    v78 = v36;
    v37 = swift_getWitnessTable();
    v38 = sub_1C5924F54(&qword_1EC196710, &qword_1EC196700, &unk_1C5BE3D70, v35);
    v75 = v37;
    v76 = v38;
    v39 = swift_getWitnessTable();
    v40 = v54;
    sub_1C593EDC0(v15, v12, v39);
    v41 = *(v13 + 8);
    v41(v15, v12);
    sub_1C593EDC0(v40, v12, v39);
    v41(v40, v12);
    (*(v13 + 32))(v19, v15, v12);
    (*(v13 + 56))(v19, 0, 1, v12);
  }

  v42 = v60;
  sub_1C5941600(v19, v60);
  v43 = *(v62 + 8);
  v44 = v19;
  v45 = v61;
  v43(v44, v61);
  v46 = swift_getWitnessTable();
  v47 = MEMORY[0x1E697FDC0];
  v48 = sub_1C5924F54(&qword_1EC196708, &qword_1EC1966F8, &unk_1C5BE9EB0, MEMORY[0x1E697FDC0]);
  v73 = v46;
  v74 = v48;
  v49 = swift_getWitnessTable();
  v50 = sub_1C5924F54(&qword_1EC196710, &qword_1EC196700, &unk_1C5BE3D70, v47);
  v71 = v49;
  v72 = v50;
  v70 = swift_getWitnessTable();
  v51 = swift_getWitnessTable();
  sub_1C593EDC0(v42, v45, v51);
  return (v43)(v42, v45);
}

uint64_t sub_1C5BBAF18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v122 = a6;
  v11 = sub_1C5BCB804();
  v12 = sub_1C5BC8AB4();
  v116 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v115 = &v101 - v13;
  v117 = v14;
  v121 = sub_1C5BC8AB4();
  v118 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  v120 = &v101 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v119 = &v101 - v17;
  v114 = v11;
  v103 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v101 - v19;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A888, &qword_1C5BF4F88);
  MEMORY[0x1EEE9AC00](v111);
  v104 = &v101 - v21;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A890, &qword_1C5BF4F90);
  MEMORY[0x1EEE9AC00](v108);
  v110 = &v101 - v22;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A898, &qword_1C5BF4F98);
  MEMORY[0x1EEE9AC00](v109);
  v107 = &v101 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A8A0, &qword_1C5BF4FA0);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v106 = &v101 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = (&v101 - v27);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A8A8, &qword_1C5BF4FA8);
  v101 = *(v29 - 8);
  v102 = v29;
  MEMORY[0x1EEE9AC00](v29);
  v105 = &v101 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v124 = &v101 - v32;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC19A7A8, &qword_1C5BF4CB0);
  MEMORY[0x1EEE9AC00](v112);
  v113 = &v101 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v125 = a5;
  v126 = &v101 - v35;
  v36 = a2;
  *&v146 = a2;
  v37 = a3;
  *(&v146 + 1) = a3;
  v38 = a4;
  *&v147 = a4;
  *(&v147 + 1) = a5;
  v39 = type metadata accessor for NowPlayingQueuePlayingItem(0, &v146);
  v40 = a1;
  sub_1C5BBA1D8(v39, &v156);
  if (BYTE2(v157) == 2)
  {
    v41 = v103;
    v42 = v114;
    (*(v103 + 16))(v20, a1, v114);
    v43 = (*(*(v37 - 8) + 48))(v20, 1, v37);
    (*(v41 + 8))(v20, v42);
    if (v43 == 1)
    {
      v44 = v104;
      (*(v101 + 56))(v104, 1, 1, v102);
    }

    else
    {
      sub_1C5BCAA54();
      sub_1C5BC85D4();
      LOBYTE(v144[0]) = 1;
      LOBYTE(v132[0]) = BYTE8(v146);
      LOBYTE(v136) = BYTE8(v147);
      *&v156 = 0;
      BYTE8(v156) = 1;
      *&v157 = v146;
      BYTE8(v157) = BYTE8(v146);
      *&v158 = v147;
      BYTE8(v158) = BYTE8(v147);
      v159 = v148;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1937A0, &qword_1C5BF4FB0);
      sub_1C5A0BAA0();
      v87 = v124;
      sub_1C5BCA094();
      v44 = v104;
      sub_1C59E7D34(v87, v104, &qword_1EC19A8A8, &qword_1C5BF4FA8);
      (*(v101 + 56))(v44, 0, 1, v102);
    }

    sub_1C59400B0(v44, v110, &qword_1EC19A888, &qword_1C5BF4F88);
    swift_storeEnumTagMultiPayload();
    sub_1C5924F54(&qword_1EC19A8F0, &qword_1EC19A898, &qword_1C5BF4F98, MEMORY[0x1E6981F48]);
    sub_1C5BBE858();
    sub_1C5BC92C4();
    sub_1C5924EF4(v44, &qword_1EC19A888, &qword_1C5BF4F88);
    v86 = v125;
  }

  else
  {
    sub_1C5BCAA54();
    sub_1C5BC85D4();
    v135 = 1;
    v134 = v166;
    v133 = v168;
    *&v156 = 0;
    BYTE8(v156) = 1;
    *&v157 = v165;
    BYTE8(v157) = v166;
    *&v158 = v167;
    BYTE8(v158) = v168;
    v159 = v169;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1937A0, &qword_1C5BF4FB0);
    sub_1C5A0BAA0();
    sub_1C5BCA094();
    v45 = sub_1C5BCAA54();
    v47 = v46;
    v123 = v40;
    sub_1C5BBBD38(v40, v36, a3, v38, v125, &v136);
    v150 = v140;
    v151 = v141;
    v152 = v142;
    v153 = v143;
    v146 = v136;
    v147 = v137;
    v148 = v138;
    v149 = v139;
    v144[0] = v136;
    v144[1] = v137;
    v144[2] = v138;
    v144[3] = v139;
    v144[4] = v140;
    v144[5] = v141;
    v144[6] = v142;
    v144[7] = v143;
    *&v145 = v45;
    *(&v145 + 1) = v47;
    v162 = v142;
    v163 = v143;
    v158 = v138;
    v159 = v139;
    v160 = v140;
    v161 = v141;
    v156 = v136;
    v157 = v137;
    v164 = v145;
    v154 = v45;
    v155 = v47;
    sub_1C59400B0(v144, v132, &qword_1EC19A8B0, &qword_1C5BF4FB8);
    sub_1C5924EF4(&v146, &qword_1EC19A8B0, &qword_1C5BF4FB8);
    v48 = sub_1C5BCAA44();
    v50 = v49;
    v51 = v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A8B8, &qword_1C5BF4FC0) + 36);
    v52 = v123;
    sub_1C5BBC17C(v123, a3, v51);
    v53 = (v51 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A8C0, &qword_1C5BF4FC8) + 36));
    *v53 = v48;
    v53[1] = v50;
    v54 = v159;
    v28[2] = v158;
    v28[3] = v54;
    v55 = v157;
    *v28 = v156;
    v28[1] = v55;
    v56 = v164;
    v28[7] = v163;
    v28[8] = v56;
    v57 = v162;
    v28[5] = v161;
    v28[6] = v57;
    v28[4] = v160;
    LOBYTE(v48) = sub_1C5BC98A4();
    sub_1C5BC8174();
    v59 = v58;
    v61 = v60;
    v63 = v62;
    v65 = v64;
    v66 = v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A8C8, &qword_1C5BF4FD0) + 36);
    *v66 = v48;
    *(v66 + 1) = v59;
    *(v66 + 2) = v61;
    *(v66 + 3) = v63;
    *(v66 + 4) = v65;
    v66[40] = 0;
    LOBYTE(v48) = sub_1C5BC98E4();
    sub_1C5BC8174();
    v68 = v67;
    v70 = v69;
    v72 = v71;
    v74 = v73;
    v75 = v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A8D0, &qword_1C5BF4FD8) + 36);
    *v75 = v48;
    *(v75 + 1) = v68;
    *(v75 + 2) = v70;
    *(v75 + 3) = v72;
    *(v75 + 4) = v74;
    v75[40] = 0;
    v76 = sub_1C5BCAA54();
    v78 = v77;
    v79 = v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A8D8, &qword_1C5BF4FE0) + 36);
    sub_1C5BBC4BC(v52, a3, v79);
    v80 = (v79 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A8E0, &qword_1C5BF4FE8) + 36));
    *v80 = v76;
    v80[1] = v78;
    v81 = v124;
    v82 = v105;
    sub_1C59400B0(v124, v105, &qword_1EC19A8A8, &qword_1C5BF4FA8);
    v83 = v106;
    sub_1C59400B0(v28, v106, &qword_1EC19A8A0, &qword_1C5BF4FA0);
    v84 = v107;
    sub_1C59400B0(v82, v107, &qword_1EC19A8A8, &qword_1C5BF4FA8);
    v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A8E8, &qword_1C5BF4FF0);
    sub_1C59400B0(v83, v84 + *(v85 + 48), &qword_1EC19A8A0, &qword_1C5BF4FA0);
    sub_1C5924EF4(v83, &qword_1EC19A8A0, &qword_1C5BF4FA0);
    sub_1C5924EF4(v82, &qword_1EC19A8A8, &qword_1C5BF4FA8);
    sub_1C59400B0(v84, v110, &qword_1EC19A898, &qword_1C5BF4F98);
    swift_storeEnumTagMultiPayload();
    sub_1C5924F54(&qword_1EC19A8F0, &qword_1EC19A898, &qword_1C5BF4F98, MEMORY[0x1E6981F48]);
    sub_1C5BBE858();
    sub_1C5BC92C4();
    sub_1C5924EF4(v84, &qword_1EC19A898, &qword_1C5BF4F98);
    sub_1C5924EF4(v28, &qword_1EC19A8A0, &qword_1C5BF4FA0);
    v86 = v125;
    sub_1C5924EF4(v81, &qword_1EC19A8A8, &qword_1C5BF4FA8);
  }

  sub_1C5BCAA54();
  v131 = v86;
  WitnessTable = swift_getWitnessTable();
  v88 = v115;
  sub_1C5BCA244();
  sub_1C5BC98E4();
  v129 = WitnessTable;
  v130 = MEMORY[0x1E697EBF8];
  v89 = v117;
  v90 = swift_getWitnessTable();
  v91 = v120;
  sub_1C5BCA2F4();
  (*(v116 + 8))(v88, v89);
  v127 = v90;
  v128 = MEMORY[0x1E697E5D8];
  v92 = v121;
  v93 = swift_getWitnessTable();
  v94 = v119;
  sub_1C593EDC0(v91, v92, v93);
  v95 = v118;
  v96 = *(v118 + 8);
  v96(v91, v92);
  v97 = v126;
  v98 = v113;
  sub_1C59400B0(v126, v113, qword_1EC19A7A8, &qword_1C5BF4CB0);
  *&v156 = v98;
  (*(v95 + 16))(v91, v94, v92);
  *(&v156 + 1) = v91;
  *&v144[0] = v112;
  *(&v144[0] + 1) = v92;
  v132[0] = sub_1C5BBE9E0();
  v132[1] = v93;
  sub_1C594226C(&v156, 2uLL, v144);
  v96(v94, v92);
  sub_1C5924EF4(v97, qword_1EC19A7A8, &qword_1C5BF4CB0);
  v96(v91, v92);
  return sub_1C5924EF4(v98, qword_1EC19A7A8, &qword_1C5BF4CB0);
}

double sub_1C5BBBD38@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v39 = a2;
  v40 = a3;
  v43[0] = a2;
  v43[1] = a3;
  v41 = a5;
  v42 = a4;
  v43[2] = a4;
  v43[3] = a5;
  v8 = type metadata accessor for NowPlayingQueuePlayingItem(0, v43);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v30 - v11;
  v38 = sub_1C5BCA484();
  v37 = sub_1C5BBA36C(v8);
  v13 = sub_1C5BBEB74(v8);
  swift_beginAccess();
  if (*(v13 + 24) < 1)
  {
    v36 = 0;
  }

  else
  {
    v14 = sub_1C5BBEB74(v8);
    swift_beginAccess();
    v36 = *(v14 + 32);
  }

  v35 = sub_1C5BC9664();
  sub_1C5BCABD4();
  v16 = v15;
  v18 = v17;
  v34 = *(v9 + 16);
  v34(v12, a1, v8);
  v19 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v20 = swift_allocObject();
  v31 = a1;
  v32 = v12;
  v33 = v10;
  v22 = v39;
  v21 = v40;
  *(v20 + 2) = v39;
  *(v20 + 3) = v21;
  v23 = v41;
  *(v20 + 4) = v42;
  *(v20 + 5) = v23;
  v24 = *(v9 + 32);
  v24(&v20[v19], v12, v8);
  v34(v12, v31, v8);
  v25 = swift_allocObject();
  v26 = v40;
  *(v25 + 2) = v22;
  *(v25 + 3) = v26;
  v27 = v41;
  *(v25 + 4) = v42;
  *(v25 + 5) = v27;
  v24(&v25[v19], v32, v8);
  *a6 = v38;
  *(a6 + 8) = 0x49676E6979616C70;
  *(a6 + 16) = 0xEB000000006D6574;
  *(a6 + 24) = v37;
  v28 = v36;
  *(a6 + 32) = v35;
  *(a6 + 40) = v16;
  *(a6 + 48) = v18;
  *(a6 + 56) = v28;
  *(a6 + 64) = sub_1C5BBEBF8;
  *(a6 + 72) = v20;
  result = 0.0;
  *(a6 + 80) = 0u;
  *(a6 + 96) = 0u;
  *(a6 + 112) = sub_1C5BBED9C;
  *(a6 + 120) = v25;
  return result;
}

void sub_1C5BBBFF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11[0] = a2;
  v11[1] = a3;
  v11[2] = a4;
  v11[3] = a5;
  v5 = type metadata accessor for NowPlayingQueuePlayingItem(0, v11);
  v6 = sub_1C5BBEB74(v5);
  KeyPath = swift_getKeyPath(byte_1C5BF5058);
  v8 = swift_getKeyPath(aP_32);
  swift_beginAccess();
  v9 = *(v6 + 24);
  v10 = v9 + 1;
  if (__OFADD__(v9, 1))
  {
    __break(1u);
  }

  else
  {

    sub_1C5B3EC4C(v10, v6, KeyPath, v8);
  }
}

void sub_1C5BBC0A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = a2;
  v12[1] = a3;
  v12[2] = a4;
  v12[3] = a5;
  v5 = type metadata accessor for NowPlayingQueuePlayingItem(0, v12);
  v6 = sub_1C5BBEB74(v5);
  swift_beginAccess();
  if (*(v6 + 24) >= 1)
  {
    v7 = sub_1C5BBEB74(v5);
    KeyPath = swift_getKeyPath(byte_1C5BF5058);
    v9 = swift_getKeyPath(aP_32);
    swift_beginAccess();
    v10 = *(v7 + 24);
    v11 = v10 - 1;
    if (__OFSUB__(v10, 1))
    {
      __break(1u);
    }

    else
    {

      sub_1C5B3EC4C(v11, v7, KeyPath, v9);
    }
  }
}

uint64_t sub_1C5BBC17C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A910, &qword_1C5BF5040);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v25[-v8];
  v10 = sub_1C5BCB804();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v25[-v13];
  (*(v11 + 16))(&v25[-v13], a1, v10, v12);
  v15 = 1;
  LODWORD(a2) = (*(*(a2 - 8) + 48))(v14, 1, a2);
  (*(v11 + 8))(v14, v10);
  if (a2 != 1)
  {
    v16 = sub_1C5BC9404();
    sub_1C5BCAA54();
    sub_1C5BC85D4();
    *&v27[6] = v28;
    *&v27[22] = v29;
    *&v27[38] = v30;
    v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A918, &qword_1C5BF5048) + 36);
    v18 = *MEMORY[0x1E6981DA0];
    v19 = sub_1C5BCAB54();
    (*(*(v19 - 8) + 104))(&v9[v17], v18, v19);
    *v9 = v16;
    *(v9 + 1) = 1053609165;
    *(v9 + 4) = 256;
    v20 = *&v27[16];
    *(v9 + 10) = *v27;
    *(v9 + 26) = v20;
    *(v9 + 42) = *&v27[32];
    *(v9 + 7) = *&v27[46];
    *&v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A920, &qword_1C5BF5050) + 36)] = xmmword_1C5BF4C10;
    v25[7] = 0;
    sub_1C5BCA684();
    LOBYTE(v16) = v25[8];
    v21 = v26;
    KeyPath = swift_getKeyPath(byte_1C5BF4F58);
    v23 = &v9[*(v6 + 36)];
    *v23 = v16;
    *(v23 + 1) = v21;
    *(v23 + 2) = KeyPath;
    *(v23 + 4) = 0;
    *(v23 + 5) = 0;
    *(v23 + 3) = 0;
    v23[48] = 0;
    sub_1C59E7D34(v9, a3, &qword_1EC19A910, &qword_1C5BF5040);
    v15 = 0;
  }

  return (*(v7 + 56))(a3, v15, 1, v6);
}

uint64_t sub_1C5BBC4BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v23 = a1;
  v5 = sub_1C5BCB804();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v24[-1] - v7;
  v9 = type metadata accessor for NowPlayingQueueBackground(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v24[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v24[-1] - v14;
  v24[3] = &type metadata for Features;
  v24[4] = sub_1C5A2E158();
  v16 = swift_allocObject();
  v24[0] = v16;
  *(v16 + 16) = "MediaCoreUI";
  *(v16 + 24) = 11;
  *(v16 + 32) = 2;
  *(v16 + 40) = "HoveringChapterPicker";
  *(v16 + 48) = 21;
  *(v16 + 56) = 2;
  v17 = sub_1C5BC7C14();
  v18.n128_f64[0] = __swift_destroy_boxed_opaque_existential_0(v24);
  if (v17)
  {
    v19 = 1;
  }

  else
  {
    (*(v6 + 16))(v8, v23, v5, v18.n128_f64[0]);
    v20 = (*(*(a2 - 8) + 48))(v8, 1, a2) == 1;
    (*(v6 + 8))(v8, v5);
    *v12 = 3;
    v12[8] = v20;
    *(v12 + 2) = swift_getKeyPath(byte_1C5BF4FF8);
    v12[24] = 0;
    v21 = *(v9 + 28);
    *&v12[v21] = swift_getKeyPath(byte_1C5BF4F20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195900, &qword_1C5BD5AD0);
    swift_storeEnumTagMultiPayload();
    sub_1C5BBEA98(v12, v15, type metadata accessor for NowPlayingQueueBackground);
    sub_1C5BBEA98(v15, a3, type metadata accessor for NowPlayingQueueBackground);
    v19 = 0;
  }

  return (*(v10 + 56))(a3, v19, 1, v9, v18);
}

void sub_1C5BBC7B8(uint64_t a1)
{
  sub_1C5BCB804();
  if (v1 <= 0x3F)
  {
    sub_1C5933828(319, &qword_1EDA467C8, &type metadata for DeviceMetrics);
    if (v2 <= 0x3F)
    {
      sub_1C5933828(319, &qword_1EDA46730, MEMORY[0x1E6981EA0]);
      if (v3 <= 0x3F)
      {
        sub_1C5AB422C(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1C5BBC890(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(*(*(a3 + 24) - 8) + 64);
  if (!v5)
  {
    ++v8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_33;
  }

  v9 = ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 97) & 0xFFFFFFFFFFFFFFF8) + 16;
  v10 = a2 - v7;
  v11 = v9 & 0xFFFFFFF8;
  if ((v9 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = v10 + 1;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_33;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v9)) == 0)
  {
LABEL_33:
    if (v6 < 0x7FFFFFFE)
    {
      v19 = *((((a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 97) & 0xFFFFFFFFFFFFFFF8);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      v20 = v19 - 1;
      if (v20 < 0)
      {
        v20 = -1;
      }

      return (v20 + 1);
    }

    else
    {
      v18 = (*(v4 + 48))(a1);
      if (v18 >= 2)
      {
        return v18 - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v7 + (v11 | v17) + 1;
}

void sub_1C5BBCA1C(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 24) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  if (v8 <= 0x7FFFFFFE)
  {
    v9 = 2147483646;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(*(*(a4 + 24) - 8) + 64);
  if (!v7)
  {
    ++v10;
  }

  v11 = ((((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 97) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v9 < a3)
  {
    v12 = a3 - v9;
    if (((((v10 + 7) & 0xFFFFFFF8) + 97) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 2;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v5 = v14;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v9)
  {
    if (((((v10 + 7) & 0xFFFFFFF8) + 97) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v15 = a2 - v9;
    }

    else
    {
      v15 = 1;
    }

    if (((((v10 + 7) & 0xFFFFFFF8) + 97) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v16 = ~v9 + a2;
      v17 = a1;
      bzero(a1, v11);
      a1 = v17;
      *v17 = v16;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(a1 + v11) = v15;
      }

      else
      {
        *(a1 + v11) = v15;
      }
    }

    else if (v5)
    {
      *(a1 + v11) = v15;
    }

    return;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(a1 + v11) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

    *(a1 + v11) = 0;
LABEL_37:
    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  if (!v5)
  {
    goto LABEL_37;
  }

  *(a1 + v11) = 0;
  if (!a2)
  {
    return;
  }

LABEL_38:
  if (v8 < 0x7FFFFFFE)
  {
    v22 = ((((a1 + v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 97) & 0xFFFFFFFFFFFFFFF8);
    if (a2 > 0x7FFFFFFE)
    {
      *v22 = a2 - 0x7FFFFFFF;
      v22[1] = 0;
    }

    else
    {
      *v22 = a2;
    }
  }

  else if (v8 >= a2)
  {
    v23 = *(v6 + 56);

    v23();
  }

  else
  {
    if (v10 <= 3)
    {
      v18 = ~(-1 << (8 * v10));
    }

    else
    {
      v18 = -1;
    }

    if (v10)
    {
      v19 = v18 & (~v8 + a2);
      if (v10 <= 3)
      {
        v20 = v10;
      }

      else
      {
        v20 = 4;
      }

      v21 = a1;
      bzero(a1, v10);
      if (v20 > 2)
      {
        if (v20 == 3)
        {
          *v21 = v19;
          *(v21 + 2) = BYTE2(v19);
        }

        else
        {
          *v21 = v19;
        }
      }

      else if (v20 == 1)
      {
        *v21 = v19;
      }

      else
      {
        *v21 = v19;
      }
    }
  }
}

void sub_1C5BBCCD0(uint64_t a1)
{
  type metadata accessor for UIRectCorner(319);
  if (v1 <= 0x3F)
  {
    sub_1C594CC0C(319);
    if (v2 <= 0x3F)
    {
      sub_1C594F100(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1C5BBCD74(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 49))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1C5BBCDD0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1C5BBCE60@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v41 = a1;
  v3 = sub_1C5BC8F34();
  v38 = *(v3 - 8);
  v39 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v37 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for NowPlayingHeaderBackgroundModifier(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_1C5BC90F4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v37 - v13;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A878, &qword_1C5BF4F18);
  MEMORY[0x1EEE9AC00](v40);
  v16 = (&v37 - v15);
  type metadata accessor for NowPlayingQueueBackground(0);
  sub_1C594C704(v14);
  (*(v9 + 104))(v11, *MEMORY[0x1E697F600], v8);
  v17 = sub_1C5BC8274();
  v18 = *(v9 + 8);
  v18(v11, v8);
  v18(v14, v8);
  v19 = objc_opt_self();
  v20 = &selRef_whiteColor;
  if ((v17 & 1) == 0)
  {
    v20 = &selRef_systemGray5Color;
  }

  v21 = [v19 *v20];
  v22 = sub_1C5BCA424();
  v23 = *(v2 + 8);
  v24 = v2[2];
  if (*(v2 + 24) == 1)
  {
    v25 = v2[2];
    if (v25 == 3)
    {
      goto LABEL_8;
    }
  }

  else
  {

    sub_1C5BCB4E4();
    v26 = sub_1C5BC9844();
    sub_1C5BC7C54();

    v27 = v37;
    sub_1C5BC8F24();
    swift_getAtKeyPath();
    v28 = sub_1C5942458(v24, 0);
    (*(v38 + 8))(v27, v39, v28);
    v25 = v43;
    if (v43 == 3)
    {
      goto LABEL_8;
    }
  }

  if (!v25)
  {
    v29 = 2.5;
    goto LABEL_9;
  }

LABEL_8:
  v29 = 0.0;
LABEL_9:
  v30 = *v2;
  *v7 = swift_getKeyPath(byte_1C5BF4F20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195900, &qword_1C5BD5AD0);
  swift_storeEnumTagMultiPayload();
  *(v7 + v5[5]) = v23;
  *(v7 + v5[6]) = 0xC030000000000000;
  *(v7 + v5[7]) = v29;
  *(v7 + v5[8]) = v30;
  sub_1C5BBEA98(v7, v16 + *(v40 + 36), type metadata accessor for NowPlayingHeaderBackgroundModifier);
  *v16 = v22;
  v42 = 0;
  sub_1C5BCA684();
  v31 = v43;
  v32 = v44;
  KeyPath = swift_getKeyPath(byte_1C5BF4F58);
  v34 = v41;
  sub_1C59E7D34(v16, v41, &qword_1EC19A878, &qword_1C5BF4F18);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A880, &qword_1C5BF4F80);
  v36 = v34 + *(result + 36);
  *v36 = v31;
  *(v36 + 8) = v32;
  *(v36 + 16) = KeyPath;
  *(v36 + 32) = 0;
  *(v36 + 40) = 0;
  *(v36 + 24) = 0;
  *(v36 + 48) = 0;
  return result;
}

double sub_1C5BBD30C()
{
  v1 = v0;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192B08, &qword_1C5BF5130);
  MEMORY[0x1EEE9AC00](v22);
  v3 = &v19 - v2;
  v4 = sub_1C5BC8F34();
  v19 = *(v4 - 8);
  v20 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195900, &qword_1C5BD5AD0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19 - v8;
  v10 = sub_1C5BC90F4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v1 + *(type metadata accessor for NowPlayingHeaderBackgroundModifier(0) + 20));
  sub_1C59400B0(v1, v9, &qword_1EC195900, &qword_1C5BD5AD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = *(v11 + 32);
    v14(v13, v9, v10);
  }

  else
  {
    sub_1C5BCB4E4();
    v15 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();

    (*(v19 + 8))(v6, v20);
    v14 = *(v11 + 32);
  }

  v16 = *(v22 + 48);
  v14(&v3[v16], v13, v10);
  v17 = 0.0;
  if ((v21 & 1) == 0)
  {
    v17 = 0.5;
    if ((*(v11 + 88))(&v3[v16], v10) == *MEMORY[0x1E697F600])
    {
      return 0.08;
    }
  }

  (*(v11 + 8))(&v3[v16], v10);
  return v17;
}

uint64_t sub_1C5BBD668@<X0>(uint64_t a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(v3 + a2[6]);
  v7 = *(v3 + a2[7]);
  v8 = *(v3 + a2[8]);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A950, &qword_1C5BF5118);
  (*(*(v9 - 8) + 16))(a3, a1, v9);
  v10 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A958, &qword_1C5BF5120) + 36);
  *v10 = 0;
  *(v10 + 8) = v6;
  *(v10 + 16) = 0;
  *(v10 + 24) = v7;
  *(v10 + 32) = v8;
  *(v10 + 40) = 0x4028000000000000;
  *(v10 + 48) = 256;
  v11 = sub_1C5BBD30C();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A960, &qword_1C5BF5128);
  *(a3 + *(result + 36)) = v11;
  return result;
}

double sub_1C5BBD758@<D0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  v7 = *(v5 + 32);
  v8 = *(v5 + 40);
  v9 = UIEdgeInsetsInsetRect(a2, a3, a4, a5, *v5, *(v5 + 8));
  v13 = [objc_opt_self() bezierPathWithRoundedRect:v7 byRoundingCorners:v9 cornerRadii:{v10, v11, v12, v8, v8}];
  v14 = [v13 CGPath];

  sub_1C5BC9B24();
  result = *&v16;
  *a1 = v16;
  *(a1 + 16) = v17;
  *(a1 + 32) = v18;
  return result;
}

void (*sub_1C5BBD840(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1C5BC8134();
  return sub_1C599BD44;
}

uint64_t sub_1C5BBD8C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C5BBF2FC();

  return MEMORY[0x1EEDE4440](a1, a2, a3, v6);
}

uint64_t sub_1C5BBD92C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C5BBF2FC();

  return MEMORY[0x1EEDE43F0](a1, a2, a3, v6);
}

uint64_t sub_1C5BBD990(uint64_t a1)
{
  v2 = sub_1C5BBF2FC();

  return MEMORY[0x1EEDE4410](a1, v2);
}

uint64_t sub_1C5BBD9DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v29.i64[0] = sub_1C5BC8F34();
  v4 = *(v29.i64[0] - 8);
  MEMORY[0x1EEE9AC00](v29.i64[0]);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A840, &qword_1C5BF4EE8);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v28 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A848, &unk_1C5BF4EF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v28 - v12;
  v14 = v2[1];
  v35 = *v2;
  v36 = v14;
  v37 = v2[2];
  v38 = *(v2 + 48);
  v33[0] = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191AB0, &qword_1C5BDA4D0);
  sub_1C5BCA694();
  if (v39[0])
  {
    v15 = 1.0;
  }

  else
  {
    v15 = 0.0;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A850, &qword_1C5BF4F00);
  (*(*(v16 - 8) + 16))(v10, a1, v16);
  *&v10[*(v8 + 44)] = v15;
  v17 = swift_allocObject();
  v18 = v36;
  *(v17 + 16) = v35;
  *(v17 + 32) = v18;
  *(v17 + 48) = v37;
  *(v17 + 64) = v38;
  sub_1C59E7D34(v10, v13, &qword_1EC19A840, &qword_1C5BF4EE8);
  v19 = &v13[*(v11 + 36)];
  *v19 = sub_1C5BBE594;
  v19[1] = v17;
  v19[2] = 0;
  v19[3] = 0;
  v40 = v38;
  *v39 = v36;
  *&v39[16] = v37;
  v20 = v36;
  if (v38 == 1)
  {
    *v34 = v36;
    v29 = *&v39[8];
    *&v34[8] = *&v39[8];
    *&v34[24] = *&v39[24];
    v28 = *&v39[16];
    sub_1C5BBE59C(&v35, v33);
    sub_1C59400B0(v39, v33, &qword_1EC19A858, &unk_1C5BF4F08);
    v21 = v28;
    v22.i64[0] = v20;
    v23 = vzip1q_s64(v22, v29);
  }

  else
  {
    sub_1C5BBE59C(&v35, v33);
    sub_1C59400B0(v39, v33, &qword_1EC19A858, &unk_1C5BF4F08);
    sub_1C5BCB4E4();
    v24 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5924EF4(v39, &qword_1EC19A858, &unk_1C5BF4F08);
    (*(v4 + 8))(v6, v29.i64[0]);
    v23 = *v34;
    v21 = *&v34[16];
  }

  v31 = v23;
  v32 = v21;
  v25 = swift_allocObject();
  v26 = v36;
  *(v25 + 16) = v35;
  *(v25 + 32) = v26;
  *(v25 + 48) = v37;
  *(v25 + 64) = v38;
  sub_1C5BBE59C(&v35, v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194470, qword_1C5BEBAC0);
  sub_1C5BBE624();
  sub_1C5AB32B4();
  sub_1C5BCA344();

  sub_1C593E820(v31.i64[0], v31.i64[1], v32, *(&v32 + 1));
  return sub_1C5924EF4(v13, &qword_1EC19A848, &unk_1C5BF4EF0);
}

void sub_1C5BBDEA0(uint64_t a1)
{
  v2 = sub_1C5BC8F34();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a1 + 48);
  v6 = *(a1 + 32);
  *v16 = *(a1 + 16);
  *&v16[16] = v6;
  if (v17 == 1)
  {
    v13 = *v16;
    v11[0] = *&v16[8];
    v14 = *&v16[8];
    v15 = *&v16[24];
    sub_1C59400B0(v16, v12, &qword_1EC19A858, &unk_1C5BF4F08);
    v7 = *&v11[0];
    if (*&v11[0] != 1)
    {
LABEL_3:
      sub_1C593E820(v13, v7, *(&v14 + 1), v15);
      sub_1C5BCAA84();
      v8 = sub_1C5BCAAB4();

      MEMORY[0x1EEE9AC00](v9);
      *&v11[-1] = a1;
      sub_1C596D96C(v8, 1, sub_1C5BBE784, &v11[-2]);

      return;
    }
  }

  else
  {
    sub_1C59400B0(v16, v12, &qword_1EC19A858, &unk_1C5BF4F08);
    sub_1C5BCB4E4();
    v10 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5924EF4(v16, &qword_1EC19A858, &unk_1C5BF4F08);
    (*(v3 + 8))(v5, v2);
    v7 = v14;
    if (v14 != 1)
    {
      goto LABEL_3;
    }
  }

  v12[0] = *a1;
  LOBYTE(v13) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191AB0, &qword_1C5BDA4D0);
  sub_1C5BCA6A4();
}

double sub_1C5BBE154(uint64_t a1)
{
  v2 = sub_1C5BC8F34();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 32);
  v30[0] = *(a1 + 16);
  v30[1] = v6;
  v31 = *(a1 + 48);
  v8 = *(&v30[0] + 1);
  v7 = *&v30[0];
  v10 = *(&v6 + 1);
  v9 = v6;
  v11 = v31;
  if (v31 != 1)
  {
    v26 = v6;
    sub_1C59400B0(v30, v27, &qword_1EC19A858, &unk_1C5BF4F08);
    sub_1C5BCB4E4();
    v14 = v7;
    v15 = v2;
    v16 = v3;
    v17 = sub_1C5BC9844();
    sub_1C5BC7C54();

    v3 = v16;
    v2 = v15;
    v7 = v14;
    sub_1C5BC8F24();
    swift_getAtKeyPath();
    v9 = v26;
    sub_1C5924EF4(v30, &qword_1EC19A858, &unk_1C5BF4F08);
    (*(v3 + 8))(v5, v2);
    v13 = *(&v28 + 1);
    if (*(&v28 + 1) == 1)
    {
      return result;
    }

LABEL_5:
    sub_1C593E820(v28, v13, v29, *(&v29 + 1));
    v27[3] = &type metadata for Features;
    v27[4] = sub_1C5A2E158();
    v18 = swift_allocObject();
    v27[0] = v18;
    *(v18 + 16) = "MediaCoreUI";
    *(v18 + 24) = 11;
    *(v18 + 32) = 2;
    *(v18 + 40) = "HoveringChapterPicker";
    *(v18 + 48) = 21;
    *(v18 + 56) = 2;
    v19 = sub_1C5BC7C14();
    __swift_destroy_boxed_opaque_existential_0(v27);
    if (v19)
    {
      if (v11)
      {
        *&v28 = v7;
        *(&v28 + 1) = v8;
        *&v29 = v9;
        *(&v29 + 1) = v10;
        sub_1C59400B0(v30, v27, &qword_1EC19A858, &unk_1C5BF4F08);
        if (v8 == 1)
        {
          goto LABEL_12;
        }

LABEL_10:
        v21 = v29;
        v22 = v28;

        sub_1C593E820(v22, v8, v21, *(&v21 + 1));
        if (*(&v21 + 1))
        {

          return result;
        }

        goto LABEL_12;
      }

      sub_1C59400B0(v30, v27, &qword_1EC19A858, &unk_1C5BF4F08);
      sub_1C5BCB4E4();
      v20 = sub_1C5BC9844();
      sub_1C5BC7C54();

      sub_1C5BC8F24();
      swift_getAtKeyPath();
      sub_1C5924EF4(v30, &qword_1EC19A858, &unk_1C5BF4F08);
      (*(v3 + 8))(v5, v2);
      v8 = *(&v28 + 1);
      if (*(&v28 + 1) != 1)
      {
        goto LABEL_10;
      }
    }

LABEL_12:
    sub_1C5BCAA84();
    v23 = sub_1C5BCAAB4();

    MEMORY[0x1EEE9AC00](v24);
    *(&v25 - 2) = a1;
    sub_1C596D96C(v23, 1, sub_1C5BBE768, (&v25 - 4));

    return result;
  }

  v28 = v30[0];
  v29 = v6;
  sub_1C59400B0(v30, v27, &qword_1EC19A858, &unk_1C5BF4F08);
  v13 = v8;
  if (v8 != 1)
  {
    goto LABEL_5;
  }

  return result;
}

uint64_t objectdestroy_23Tm_0()
{

  sub_1C596AC4C(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));

  return swift_deallocObject();
}

unint64_t sub_1C5BBE624()
{
  result = qword_1EC19A860;
  if (!qword_1EC19A860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC19A848, &unk_1C5BF4EF0);
    sub_1C5BBE6B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC19A860);
  }

  return result;
}

unint64_t sub_1C5BBE6B0()
{
  result = qword_1EC19A868;
  if (!qword_1EC19A868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC19A840, &qword_1C5BF4EE8);
    sub_1C5924F54(&qword_1EC19A870, &qword_1EC19A850, &qword_1C5BF4F00, MEMORY[0x1E697FDF8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC19A868);
  }

  return result;
}

uint64_t sub_1C5BBE820(__n128 a1)
{
  result = _UISolariumEnabled();
  v2 = 60.0;
  if (result)
  {
    v2 = 72.0;
  }

  qword_1EC1A6E68 = *&v2;
  return result;
}

unint64_t sub_1C5BBE858()
{
  result = qword_1EC19A8F8;
  if (!qword_1EC19A8F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC19A888, &qword_1C5BF4F88);
    sub_1C5BBE8DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC19A8F8);
  }

  return result;
}

unint64_t sub_1C5BBE8DC()
{
  result = qword_1EC19A900;
  if (!qword_1EC19A900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC19A8A8, &qword_1C5BF4FA8);
    sub_1C5A0BAA0();
    sub_1C5BBE998(&qword_1EDA4E190, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC19A900);
  }

  return result;
}

uint64_t sub_1C5BBE998(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1C5BBE9E0()
{
  result = qword_1EC19A908;
  if (!qword_1EC19A908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EC19A7A8, &qword_1C5BF4CB0);
    sub_1C5924F54(&qword_1EC19A8F0, &qword_1EC19A898, &qword_1C5BF4F98, MEMORY[0x1E6981F48]);
    sub_1C5BBE858();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC19A908);
  }

  return result;
}

uint64_t sub_1C5BBEA98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double sub_1C5BBEB00(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  KeyPath = swift_getKeyPath(byte_1C5BF5058);
  v5 = swift_getKeyPath(aP_32);

  return sub_1C5B3EC4C(v2, v3, KeyPath, v5);
}

uint64_t sub_1C5BBEB74(uint64_t a1)
{
  result = *(v1 + *(a1 + 60));
  if (!result)
  {
    _s5QueueCMa();
    sub_1C5BBE998(qword_1EDA4A0C0, _s5QueueCMa, &unk_1C5BE4338);
    result = sub_1C5BC8C74();
    __break(1u);
  }

  return result;
}

uint64_t objectdestroy_44Tm()
{
  v1 = *(v0 + 40);
  v9 = *(v0 + 16);
  v10 = *(v0 + 24);
  v8 = v10;
  v11 = v1;
  v2 = type metadata accessor for NowPlayingQueuePlayingItem(0, &v9);
  v3 = (*(*(v2 - 8) + 80) + 48) & ~*(*(v2 - 8) + 80);
  v4 = v0 + v3;
  v5 = *(v8 - 8);
  if (!(*(v5 + 48))(v0 + v3, 1, v8))
  {
    (*(v5 + 8))(v0 + v3, v8);
  }

  v6 = v4 + *(v2 + 52);
  sub_1C596AC80(*v6, *(v6 + 8), *(v6 + 16), *(v6 + 24), *(v6 + 32), *(v6 + 40), *(v6 + 48), *(v6 + 56), *(v6 + 64), *(v6 + 72), *(v6 + 73));
  sub_1C5942458(*(v4 + *(v2 + 56)), *(v4 + *(v2 + 56) + 8));

  return swift_deallocObject();
}

uint64_t sub_1C5BBEDB4(uint64_t (*a1)(char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v10[0] = v1[2];
  v2 = v10[0];
  v10[1] = v3;
  v10[2] = v4;
  v10[3] = v5;
  v6 = *(type metadata accessor for NowPlayingQueuePlayingItem(0, v10) - 8);
  v7 = v1 + ((*(v6 + 80) + 48) & ~*(v6 + 80));

  return a1(v7, v2, v3, v4, v5);
}

void sub_1C5BBEE8C(uint64_t a1)
{
  sub_1C594F100(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UIRectCorner(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1C5BBEF24()
{
  result = qword_1EC19A938;
  if (!qword_1EC19A938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC19A880, &qword_1C5BF4F80);
    sub_1C5BBEFB0();
    sub_1C5AF87B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC19A938);
  }

  return result;
}

unint64_t sub_1C5BBEFB0()
{
  result = qword_1EC19A940;
  if (!qword_1EC19A940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC19A878, &qword_1C5BF4F18);
    sub_1C5BBE998(&qword_1EC19A948, type metadata accessor for NowPlayingHeaderBackgroundModifier, &unk_1C5BF50C4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC19A940);
  }

  return result;
}

unint64_t sub_1C5BBF098()
{
  result = qword_1EC19A968;
  if (!qword_1EC19A968)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC19A960, &qword_1C5BF5128);
    sub_1C5BBF124();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC19A968);
  }

  return result;
}

unint64_t sub_1C5BBF124()
{
  result = qword_1EC19A970;
  if (!qword_1EC19A970)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC19A958, &qword_1C5BF5120);
    sub_1C5924F54(&qword_1EC19A978, &qword_1EC19A950, &qword_1C5BF5118, MEMORY[0x1E697FDF8]);
    sub_1C5924F54(&qword_1EC19A980, &qword_1EC19A988, &qword_1C5BF5160, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC19A970);
  }

  return result;
}

unint64_t sub_1C5BBF250()
{
  result = qword_1EC19A9A0;
  if (!qword_1EC19A9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC19A9A0);
  }

  return result;
}

unint64_t sub_1C5BBF2A8()
{
  result = qword_1EC19A9A8;
  if (!qword_1EC19A9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC19A9A8);
  }

  return result;
}

unint64_t sub_1C5BBF2FC()
{
  result = qword_1EC19A9B0;
  if (!qword_1EC19A9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC19A9B0);
  }

  return result;
}

double sub_1C5BBF350(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath(aX_16);
  sub_1C5BC9DF4();

  return result;
}

uint64_t MCUINamespace<A>.toast<A, B>(_:alignment:inset:toastView:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, uint64_t a11)
{
  v26 = a8;
  v24 = a9;
  v25 = a6;
  v18 = *(*a1 + 88);
  v27[0] = *(*a1 + 80);
  v27[1] = a7;
  v27[2] = v18;
  v27[3] = a11;
  v19 = type metadata accessor for ToastViewModifier(0, v27);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v24 - v21;

  sub_1C5BBF564(a1, a2, a3, a4, a5, a7, a11, v22, a10);
  MEMORY[0x1C694E550](v22, *(v25 + 16), v19, v26);
  return (*(v20 + 8))(v22, v19);
}

uint64_t sub_1C5BBF564@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>, double a9@<D0>)
{
  v12 = *a1;
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a9;
  *(a8 + 32) = a4;
  *(a8 + 40) = a5;
  v13 = *(v12 + 80);
  v14 = *(v12 + 88);
  v21 = 0x3FF0000000000000;
  sub_1C5BCA684();
  v15 = v18;
  *(a8 + 48) = v17;
  *(a8 + 56) = v15;
  v17 = v13;
  v18 = a6;
  v19 = v14;
  v20 = a7;
  type metadata accessor for ToastViewModifier(0, &v17);
  return sub_1C5BC9454();
}

void sub_1C5BBF62C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToastManager(319, *(a1 + 16), *(a1 + 32), a4);
  if (v4 <= 0x3F)
  {
    sub_1C5927B74();
    if (v5 <= 0x3F)
    {
      sub_1C5BBF728();
      if (v6 <= 0x3F)
      {
        sub_1C5BBF778();
        if (v7 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1C5BBF728()
{
  if (!qword_1EDA45FE0)
  {
    v0 = sub_1C5BCA6C4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDA45FE0);
    }
  }
}

void sub_1C5BBF778()
{
  if (!qword_1EC19AA40)
  {
    v0 = sub_1C5BC9464();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC19AA40);
    }
  }
}

uint64_t sub_1C5BBF814@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v180 = a1;
  v181 = a3;
  swift_getWitnessTable();
  v4 = sub_1C5BC9394();
  v5 = a2[2];
  v6 = a2[4];
  v175 = v4;
  v216 = v4;
  v217 = type metadata accessor for ToastManager(255, v5, v6, v7);
  v174 = v217;
  WitnessTable = swift_getWitnessTable();
  v218 = WitnessTable;
  v219 = swift_getWitnessTable();
  v177 = v219;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v179 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v176 = &v133 - v8;
  v190 = a2;
  *&v185 = a2[3];
  v9 = v185;
  v195 = v6;
  v182 = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *&v186 = a2[5];
  v11 = v186;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v216 = v9;
  v217 = AssociatedTypeWitness;
  v218 = v11;
  v219 = AssociatedConformanceWitness;
  v13 = sub_1C5BCA724();
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC19AA48, &unk_1C5BF52F8);
  v15 = swift_getWitnessTable();
  v16 = sub_1C5924F54(&qword_1EC19AA50, &qword_1EC19AA48, &unk_1C5BF52F8, MEMORY[0x1E69E5FB8]);
  v216 = v13;
  v217 = v14;
  v218 = v15;
  v219 = v16;
  v17 = swift_getOpaqueTypeMetadata2();
  v216 = v13;
  v217 = v14;
  v218 = v15;
  v219 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v216 = v17;
  v217 = OpaqueTypeConformance2;
  v19 = swift_getOpaqueTypeMetadata2();
  v216 = v17;
  v217 = OpaqueTypeConformance2;
  v20 = swift_getOpaqueTypeConformance2();
  v216 = v19;
  v217 = v20;
  swift_getOpaqueTypeMetadata2();
  v21 = sub_1C5BCB804();
  v216 = v19;
  v217 = v20;
  v215 = swift_getOpaqueTypeConformance2();
  v152 = v21;
  v183 = swift_getWitnessTable();
  v167 = sub_1C5BCA7D4();
  v184 = sub_1C5BC8AB4();
  v22 = sub_1C5BC8AB4();
  v194 = AssociatedTypeWitness;
  v23 = sub_1C5BCB804();
  v151 = swift_getWitnessTable();
  v213 = v151;
  v214 = MEMORY[0x1E697EBF8];
  v150 = swift_getWitnessTable();
  v211 = v150;
  v212 = MEMORY[0x1E697E5D8];
  v24 = swift_getWitnessTable();
  v210 = *(AssociatedConformanceWitness + 8);
  v25 = swift_getWitnessTable();
  v216 = v22;
  v217 = v23;
  v157 = v22;
  v218 = v24;
  v219 = v25;
  v187 = swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198A70, &qword_1C5BEC4E0);
  v26 = sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192A98, &qword_1C5BD6820);
  v188 = v26;
  v27 = sub_1C5BC8AB4();
  v28 = sub_1C5BC8AB4();
  sub_1C5BC9074();
  v189 = v28;
  v193 = sub_1C5BC8AB4();
  v216 = v22;
  v217 = v23;
  v156 = v24;
  v218 = v24;
  v219 = v25;
  v191 = v25;
  v29 = swift_getOpaqueTypeConformance2();
  v30 = sub_1C5924F54(&qword_1EC198A80, &qword_1EC198A70, &qword_1C5BEC4E0, MEMORY[0x1E6980A18]);
  v154 = v29;
  v208 = v29;
  v209 = v30;
  v31 = swift_getWitnessTable();
  v32 = sub_1C5924F54(&qword_1EC192A90, &qword_1EC192A98, &qword_1C5BD6820, MEMORY[0x1E697FDC0]);
  v163 = v31;
  v206 = v31;
  v207 = v32;
  v33 = v27;
  v164 = swift_getWitnessTable();
  v204 = v164;
  v205 = MEMORY[0x1E697E070];
  v34 = swift_getWitnessTable();
  v35 = swift_getWitnessTable();
  v166 = v34;
  v202 = v34;
  v203 = v35;
  v36 = v193;
  v168 = swift_getWitnessTable();
  v169 = sub_1C5BC8BE4();
  v173 = sub_1C5BC8AB4();
  v172 = *(v173 - 8);
  MEMORY[0x1EEE9AC00](v173);
  v170 = &v133 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v171 = &v133 - v39;
  v149 = sub_1C5BC8C34();
  v148 = *(v149 - 8);
  MEMORY[0x1EEE9AC00](v149);
  v146 = &v133 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = *(v190 - 1);
  MEMORY[0x1EEE9AC00](v41);
  v140 = v42;
  v141 = &v133 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = v182;
  v161 = sub_1C5BCB804();
  v158 = *(v161 - 8);
  MEMORY[0x1EEE9AC00](v161);
  v160 = &v133 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v138 = &v133 - v46;
  v192 = v23;
  v162 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v159 = &v133 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49);
  v139 = &v133 - v50;
  v133 = swift_checkMetadataState();
  v51 = *(v133 - 8);
  MEMORY[0x1EEE9AC00](v133);
  v53 = &v133 - v52;
  v54 = swift_checkMetadataState();
  v55 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v57 = &v133 - v56;
  v137 = swift_checkMetadataState();
  v135 = *(v137 - 8);
  MEMORY[0x1EEE9AC00](v137);
  v59 = &v133 - v58;
  v136 = *(v187 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v134 = &v133 - v61;
  v144 = *(v188 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v143 = &v133 - v63;
  v167 = v33;
  v147 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v145 = &v133 - v65;
  v153 = *(v189 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v184 = &v133 - v67;
  v157 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v155 = &v133 - v69;
  *&v70 = v43;
  v71 = v43;
  *(&v70 + 1) = v185;
  *&v72 = v195;
  *(&v72 + 1) = v186;
  v185 = v72;
  v198 = v72;
  v186 = v70;
  v197 = v70;
  v73 = v165;
  v199 = v165;
  sub_1C5BC9134();
  swift_checkMetadataState();
  v74 = 1;
  sub_1C5BCA7C4();
  v75 = v73[1];
  v76 = v133;
  v151 = v73[2];
  v152 = v75;
  sub_1C5BCA244();
  (*(v51 + 8))(v53, v76);
  sub_1C5BCA2D4();
  v77 = v57;
  v78 = v138;
  (*(v55 + 8))(v77, v54);
  v79 = v73;
  v183 = *v73;
  ToastManager.toast.getter(v78);
  v80 = *(v71 - 8);
  v150 = *(v80 + 48);
  v81 = v150(v78, 1, v71);
  v133 = v80;
  if (v81 == 1)
  {
    v82 = v158;
    v83 = v161;
    v84 = v139;
  }

  else
  {
    v85 = v139;
    sub_1C5BCBAA4();
    v74 = 0;
    v82 = v80;
    v83 = v71;
    v84 = v85;
  }

  (*(v82 + 8))(v78, v83);
  v86 = *(v194 - 8);
  v139 = *(v86 + 56);
  v138 = (v86 + 56);
  (v139)(v84, v74, 1);
  v87 = v142;
  v88 = v141;
  v89 = v79;
  v90 = v79;
  v91 = v190;
  (*(v142 + 16))(v141, v90, v190);
  v92 = (*(v87 + 80) + 48) & ~*(v87 + 80);
  v93 = swift_allocObject();
  v94 = v185;
  *(v93 + 16) = v186;
  *(v93 + 32) = v94;
  (*(v87 + 32))(v93 + v92, v88, v91);
  v95 = v134;
  v96 = v137;
  v97 = v192;
  sub_1C5BCA334();

  v98 = *(v162 + 8);
  v98(v84, v97);
  (*(v135 + 8))(v59, v96);
  v99 = v146;
  sub_1C5BC8C24();
  v100 = v143;
  v101 = v187;
  v102 = sub_1C5BBF350(v99, v187, v154);
  (*(v148 + 8))(v99, v149, v102);
  (*(v136 + 8))(v95, v101);
  sub_1C5BC8634();
  sub_1C5BCAAA4();
  sub_1C5BC8664();

  sub_1C5BCABD4();
  sub_1C5BC8614();
  sub_1C5BCAAA4();
  sub_1C5BC8664();

  sub_1C5BCABD4();
  sub_1C5BC8614();
  sub_1C5BCAAA4();
  sub_1C5BC8664();

  sub_1C5BC85F4();

  sub_1C5BC8644();

  v103 = v145;
  v104 = v188;
  sub_1C5BC9D74();

  (*(v144 + 8))(v100, v104);
  v105 = v89[7];
  v216 = v89[6];
  v217 = v105;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196118, &qword_1C5BEDD40);
  sub_1C5BCA694();
  sub_1C5BCABD4();
  v106 = v167;
  sub_1C5BC9E54();
  (*(v147 + 8))(v103, v106);
  sub_1C5BCAAA4();
  sub_1C5BCAAB4();

  v107 = v160;
  ToastManager.toast.getter(v160);
  v108 = v182;
  if (v150(v107, 1, v182) == 1)
  {
    v109 = v161;
    v110 = v159;
    v111 = v158;
    v112 = 1;
  }

  else
  {
    v110 = v159;
    sub_1C5BCBAA4();
    v112 = 0;
    v111 = v133;
    v109 = v108;
  }

  (*(v111 + 8))(v107, v109);
  (v139)(v110, v112, 1, v194);
  v113 = v155;
  v114 = v189;
  v115 = v192;
  v116 = v184;
  sub_1C5BCA384();

  v98(v110, v115);
  (*(v153 + 8))(v116, v114);
  v117 = swift_checkMetadataState();
  v118 = swift_checkMetadataState();
  v119 = v176;
  v120 = WitnessTable;
  v121 = v177;
  v122 = sub_1C5BC9DE4();
  MEMORY[0x1EEE9AC00](v122);
  v216 = v117;
  v217 = v118;
  v218 = v120;
  v219 = v121;
  v123 = swift_getOpaqueTypeConformance2();
  v124 = v170;
  v125 = OpaqueTypeMetadata2;
  v126 = v193;
  sub_1C5BCA2C4();
  (*(v179 + 8))(v119, v125);
  v127 = swift_getWitnessTable();
  v200 = v123;
  v201 = v127;
  v128 = v173;
  v129 = swift_getWitnessTable();
  v130 = v171;
  sub_1C593EDC0(v124, v128, v129);
  v131 = *(v172 + 8);
  v131(v124, v128);
  sub_1C593EDC0(v130, v128, v129);
  v131(v130, v128);
  return (*(v157 + 8))(v113, v126);
}

uint64_t sub_1C5BC1094@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v136 = a6;
  v137 = a1;
  v115 = sub_1C5BC96A4();
  v114 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v113 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19AA58, &qword_1C5BF5338);
  MEMORY[0x1EEE9AC00](v112);
  v111 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v110 = &v93 - v13;
  v14 = sub_1C5BC89B4();
  v131 = *(v14 - 8);
  v132 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v123 = &v93 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v122 = &v93 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19AA48, &unk_1C5BF52F8);
  MEMORY[0x1EEE9AC00](v18);
  v108 = &v93 - v19;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v120 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v118 = &v93 - v21;
  v119 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](v22);
  v117 = &v93 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = a4;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v133 = a3;
  v140 = a3;
  v141 = AssociatedTypeWitness;
  v121 = AssociatedTypeWitness;
  v135 = a5;
  v142 = a5;
  v143 = AssociatedConformanceWitness;
  v116 = AssociatedConformanceWitness;
  v25 = sub_1C5BCA724();
  v106 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v126 = &v93 - v26;
  WitnessTable = swift_getWitnessTable();
  v28 = sub_1C5924F54(&qword_1EC19AA50, &qword_1EC19AA48, &unk_1C5BF52F8, MEMORY[0x1E69E5FB8]);
  v140 = v25;
  v141 = v18;
  v142 = WitnessTable;
  v143 = v28;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v102 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v98 = &v93 - v30;
  v107 = v25;
  v140 = v25;
  v141 = v18;
  v109 = v18;
  v100 = WitnessTable;
  v142 = WitnessTable;
  v143 = v28;
  v97 = v28;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v140 = OpaqueTypeMetadata2;
  v141 = OpaqueTypeConformance2;
  v32 = swift_getOpaqueTypeMetadata2();
  v105 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v101 = &v93 - v33;
  v103 = OpaqueTypeMetadata2;
  v140 = OpaqueTypeMetadata2;
  v141 = OpaqueTypeConformance2;
  v96 = OpaqueTypeConformance2;
  v34 = swift_getOpaqueTypeConformance2();
  v140 = v32;
  v141 = v34;
  v138 = v34;
  v35 = swift_getOpaqueTypeMetadata2();
  v128 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v104 = &v93 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v99 = &v93 - v38;
  v39 = a2;
  v40 = sub_1C5BCB804();
  v41 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v43 = &v93 - v42;
  v44 = *(a2 - 1);
  MEMORY[0x1EEE9AC00](v45);
  v124 = &v93 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1C5BCB804();
  v129 = *(v47 - 8);
  v130 = v47;
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v93 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50);
  v127 = &v93 - v51;
  v52 = v137;
  ToastManager.toast.getter(v43);
  v125 = v44;
  if ((*(v44 + 48))(v43, 1, v39) == 1)
  {
    (*(v41 + 8))(v43, v40);
    (*(v128 + 56))(v49, 1, 1, v35);
    v140 = v32;
    v141 = v138;
    swift_getOpaqueTypeConformance2();
    v53 = v49;
LABEL_5:
    v88 = v127;
    sub_1C5941600(v53, v127);
    v89 = *(v129 + 8);
    v90 = v53;
    v91 = v130;
    v89(v90, v130);
    v140 = v32;
    v141 = v138;
    v139 = swift_getOpaqueTypeConformance2();
    v92 = swift_getWitnessTable();
    sub_1C593EDC0(v88, v91, v92);
    return (v89)(v88, v91);
  }

  v93 = v49;
  v94 = v35;
  v95 = v32;
  v54 = v124;
  v55 = v39;
  (*(v125 + 32))(v124, v43, v39);
  v56 = v117;
  (*(v52 + 32))(v54);
  v57 = v118;
  sub_1C5BCBAA4();
  v58 = v133;
  v59 = v121;
  sub_1C5BCA1C4();
  (*(v120 + 8))(v57, v59);
  (*(v119 + 8))(v56, v58);
  v60 = v132;
  v61 = *(v131 + 104);
  v62 = v122;
  v61(v122, *MEMORY[0x1E697E718], v132);
  v63 = v123;
  v61(v123, *MEMORY[0x1E697E6C8], v60);
  sub_1C5BC2B64();
  result = sub_1C5BCAD94();
  if (result)
  {
    v65 = v131;
    v66 = v132;
    v67 = *(v131 + 32);
    v68 = v110;
    v67(v110, v62, v132);
    v69 = v112;
    v67((v68 + *(v112 + 48)), v63, v66);
    v70 = v111;
    sub_1C5BC2BBC(v68, v111);
    v71 = *(v69 + 48);
    v72 = v108;
    v67(v108, v70, v66);
    v123 = v55;
    v73 = *(v65 + 8);
    v73(v70 + v71, v66);
    sub_1C5BC2C2C(v68, v70);
    v67((v72 + *(v109 + 36)), (v70 + *(v69 + 48)), v66);
    v73(v70, v66);
    v74 = v138;
    v75 = v98;
    v76 = v107;
    v77 = v126;
    sub_1C5BC9F54();
    sub_1C5BC2C9C(v72);
    (*(v106 + 8))(v77, v76);
    v78 = v113;
    sub_1C5BC9684();
    v79 = v101;
    v80 = v103;
    sub_1C5BCA0C4();
    (*(v114 + 8))(v78, v115);
    (*(v102 + 8))(v75, v80);
    v81 = v123;
    v140 = v123;
    v141 = v133;
    v142 = v134;
    v143 = v135;
    type metadata accessor for ToastViewModifier(0, &v140);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC19A9B8, &unk_1C5BF5270);
    sub_1C5BC9444();
    v82 = v104;
    v32 = v95;
    sub_1C5BCA0D4();

    (*(v105 + 8))(v79, v32);
    (*(v125 + 8))(v124, v81);
    v140 = v32;
    v141 = v74;
    v83 = swift_getOpaqueTypeConformance2();
    v84 = v99;
    v85 = v94;
    sub_1C593EDC0(v82, v94, v83);
    v86 = v128;
    v87 = *(v128 + 8);
    v87(v82, v85);
    sub_1C593EDC0(v84, v85, v83);
    v87(v84, v85);
    v53 = v93;
    (*(v86 + 32))(v93, v82, v85);
    (*(v86 + 56))(v53, 0, 1, v85);
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C5BC1F4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v22 = sub_1C5BCB804();
  v21 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v13 = &v21 - v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v24 = sub_1C5BCB804();
  v23 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v15 = &v21 - v14;
  sub_1C5BCAAA4();
  v34 = a4;
  v35 = a5;
  v36 = a6;
  v37 = a7;
  v38 = a3;
  sub_1C5BC87F4();

  sub_1C5BCAAA4();
  sub_1C5BCAAB4();

  v29 = a4;
  v30 = a5;
  v26 = a5;
  v31 = a6;
  v32 = a7;
  v27 = a7;
  v33 = a3;
  sub_1C5BC87F4();

  v28 = a3;
  ToastManager.toast.getter(v13);
  v16 = *(a4 - 8);
  v17 = 1;
  v18 = (*(v16 + 48))(v13, 1, a4);
  if (v18 == 1)
  {
    v19 = v22;
    v16 = v21;
  }

  else
  {
    sub_1C5BCBAA4();
    v17 = 0;
    v19 = a4;
  }

  (*(v16 + 8))(v13, v19);
  (*(*(AssociatedTypeWitness - 8) + 56))(v15, v17, 1);
  (*(v23 + 8))(v15, v24);
  v39[0] = a4;
  v39[1] = v26;
  v39[2] = a6;
  v39[3] = v27;
  type metadata accessor for ToastViewModifier(0, v39);
  LOBYTE(v39[0]) = v18 != 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC19A9B8, &unk_1C5BF5270);
  return sub_1C5BC9434();
}

uint64_t sub_1C5BC2328@<X0>(uint64_t a1@<X0>, uint64_t a6@<X8>)
{
  v26 = a1;
  v27 = a6;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_1C5BCA724();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC19AA48, &unk_1C5BF52F8);
  WitnessTable = swift_getWitnessTable();
  v8 = sub_1C5924F54(&qword_1EC19AA50, &qword_1EC19AA48, &unk_1C5BF52F8, MEMORY[0x1E69E5FB8]);
  swift_getOpaqueTypeMetadata2();
  v44 = WitnessTable;
  v45 = v8;
  swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_1C5BCB804();
  v42 = OpaqueTypeMetadata2;
  v43 = OpaqueTypeConformance2;
  v41 = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_1C5BCA7D4();
  sub_1C5BC8AB4();
  v11 = sub_1C5BC8AB4();
  v12 = sub_1C5BCB804();
  v39 = swift_getWitnessTable();
  v40 = MEMORY[0x1E697EBF8];
  v37 = swift_getWitnessTable();
  v38 = MEMORY[0x1E697E5D8];
  v25[1] = v11;
  v25[0] = swift_getWitnessTable();
  v36 = *(AssociatedConformanceWitness + 8);
  v42 = v11;
  v43 = v12;
  v44 = v25[0];
  v45 = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198A70, &qword_1C5BEC4E0);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192A98, &qword_1C5BD6820);
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  v25[2] = sub_1C5BC9074();
  v13 = sub_1C5BC8AB4();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v25 - v15;
  v42 = v11;
  v43 = v12;
  v44 = v25[0];
  v17 = swift_getOpaqueTypeConformance2();
  v18 = sub_1C5924F54(&qword_1EC198A80, &qword_1EC198A70, &qword_1C5BEC4E0, MEMORY[0x1E6980A18]);
  v34 = v17;
  v35 = v18;
  v19 = swift_getWitnessTable();
  v20 = sub_1C5924F54(&qword_1EC192A90, &qword_1EC192A98, &qword_1C5BD6820, MEMORY[0x1E697FDC0]);
  v32 = v19;
  v33 = v20;
  v30 = swift_getWitnessTable();
  v31 = MEMORY[0x1E697E070];
  v21 = swift_getWitnessTable();
  v22 = swift_getWitnessTable();
  v28 = v21;
  v29 = v22;
  v23 = swift_getWitnessTable();
  sub_1C593EDC0(v26, v13, v23);
  sub_1C593EDC0(v16, v13, v23);
  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_1C5BC28EC(uint64_t a1, uint64_t a2)
{
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v12[0] = v2[2];
  v5 = v12[0];
  v12[1] = v6;
  v12[2] = v7;
  v12[3] = v8;
  v9 = *(type metadata accessor for ToastViewModifier(0, v12) - 8);
  v10 = v2 + ((*(v9 + 80) + 48) & ~*(v9 + 80));

  return sub_1C5BC1F4C(a1, a2, v10, v5, v6, v7, v8);
}

uint64_t sub_1C5BC29FC(uint64_t a1, __n128 a2)
{
  v3 = sub_1C5BC8C34();
  v4 = MEMORY[0x1EEE9AC00](v3);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  return sub_1C5BC8DC4();
}

unint64_t sub_1C5BC2B64()
{
  result = qword_1EC1964B8;
  if (!qword_1EC1964B8)
  {
    sub_1C5BC89B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1964B8);
  }

  return result;
}

uint64_t sub_1C5BC2BBC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19AA58, &qword_1C5BF5338);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C5BC2C2C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19AA58, &qword_1C5BF5338);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C5BC2C9C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19AA48, &unk_1C5BF52F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MCUINamespace<A>.motionLoggingContext(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a1;
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v11, v6, v8);
  swift_getKeyPath(aH_15);
  if (a2)
  {
    v14 = v5;
    v15 = a2;

    v5 = sub_1C5BCAEA4();
  }

  else
  {
    v12 = 0;
  }

  v14 = v5;
  v15 = v12;
  sub_1C5BC9DF4();

  return (*(v7 + 8))(v10, v6);
}

uint64_t View.motionLoggingContext(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for MCUINamespace(0, a3, a3, a4);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v13 - v10;
  View.mcui.getter(a3, &v13 - v10);
  MCUINamespace<A>.motionLoggingContext(_:)(a1, a2, v8, a4);
  return (*(v9 + 8))(v11, v8);
}

void *sub_1C5BC2F78()
{
  sub_1C5B6D5E4();

  return sub_1C5BC8F44();
}

void sub_1C5BC2FC0()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  v2 = 35.0;
  if (v1 != 2)
  {
    v2 = 16.0;
  }

  if (v1 == 6)
  {
    v2 = 26.0;
  }

  *&xmmword_1EDA5DB50 = v2;
  *(&xmmword_1EDA5DB50 + 1) = v2;
}

uint64_t WaveformSize.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x1C69501C0](*&v1);
  if (v2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v2;
  }

  return MEMORY[0x1C69501C0](*&v3);
}

uint64_t WaveformSize.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1C5BCBF54();
  if (v1 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v1;
  }

  MEMORY[0x1C69501C0](*&v3);
  if (v2 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v2;
  }

  MEMORY[0x1C69501C0](*&v4);
  return sub_1C5BCBF94();
}

uint64_t sub_1C5BC3148()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1C5BCBF54();
  sub_1C5BC37A0(v1, v2);
  return sub_1C5BCBF94();
}

uint64_t sub_1C5BC31A4(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_1C5BCBF54();
  sub_1C5BC37A0(v2, v3);
  return sub_1C5BCBF94();
}

double sub_1C5BC31F4@<D0>(_OWORD *a1@<X8>)
{
  if (qword_1EDA4DAE0 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  result = *&xmmword_1EDA5DB50;
  *a1 = xmmword_1EDA5DB50;
  return result;
}

uint64_t sub_1C5BC3258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C5BC3858();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t MCUINamespace<A>.waveformSize(_:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC19AA60, &qword_1C5BF5370);
  v8 = sub_1C5BC8AB4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v20 - v13;
  if (a2)
  {
    v15 = 0;
  }

  else
  {
    v15 = a1;
  }

  v21[0] = v15;
  v21[1] = v15;
  v22 = a2 & 1;
  MCUINamespace<A>.waveformSize(_:)(v21, a3, a4, v11);
  v16 = sub_1C5BC37F0();
  v20[1] = a4;
  v20[2] = v16;
  WitnessTable = swift_getWitnessTable();
  sub_1C593EDC0(v11, v8, WitnessTable);
  v18 = *(v9 + 8);
  v18(v11, v8);
  sub_1C593EDC0(v14, v8, WitnessTable);
  return (v18)(v14, v8);
}

uint64_t MCUINamespace<A>.waveformSize(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v7 = a1;
  v26[1] = a4;
  v8 = *(a2 + 16);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC19AA60, &qword_1C5BF5370);
  v12 = sub_1C5BC8AB4();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = v26 - v18;
  v20 = *v7;
  v21 = v7[1];
  LODWORD(v7) = *(v7 + 16);
  (*(v9 + 16))(v11, v5, v8, v17);
  swift_getKeyPath(byte_1C5BF5378);
  if (v7 == 1)
  {
    if (qword_1EDA4DAE0 != -1)
    {
      swift_once();
    }

    v21 = *(&xmmword_1EDA5DB50 + 1);
    v20 = xmmword_1EDA5DB50;
  }

  v26[4] = v20;
  v26[5] = v21;
  sub_1C5BC9DF4();

  (*(v9 + 8))(v11, v8);
  v22 = sub_1C5BC37F0();
  v26[2] = a3;
  v26[3] = v22;
  WitnessTable = swift_getWitnessTable();
  sub_1C593EDC0(v15, v12, WitnessTable);
  v24 = *(v13 + 8);
  v24(v15, v12);
  sub_1C593EDC0(v19, v12, WitnessTable);
  return (v24)(v19, v12);
}

double static WaveformSize.app.getter@<D0>(_OWORD *a1@<X8>)
{
  if (qword_1EDA4DAE0 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  result = *&xmmword_1EDA5DB50;
  *a1 = xmmword_1EDA5DB50;
  return result;
}

__n128 static WaveformSize.liveActivity.getter@<Q0>(__n128 *a1@<X8>)
{
  __asm { FMOV            V0.2D, #22.0 }

  *a1 = result;
  return result;
}

uint64_t sub_1C5BC37A0(double a1, double a2)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  MEMORY[0x1C69501C0](*&a1);
  if (a2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = a2;
  }

  return MEMORY[0x1C69501C0](*&v3);
}

unint64_t sub_1C5BC37F0()
{
  result = qword_1EC19AA68;
  if (!qword_1EC19AA68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC19AA60, &qword_1C5BF5370);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC19AA68);
  }

  return result;
}

unint64_t sub_1C5BC3858()
{
  result = qword_1EC19AA70;
  if (!qword_1EC19AA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC19AA70);
  }

  return result;
}

uint64_t sub_1C5BC38F0(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_1C5BCB934();
    v5 = v4;
    v6 = sub_1C5BCB9E4();
    v8 = v7;
    v9 = MEMORY[0x1C694FB90](v3, v5, v6, v7);
    sub_1C5BC6590(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_1C5BC6590(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v3 = sub_1C5BCB904();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_1C5BC6228(v3, v5, v2 != 0, a1);
  v12 = v11;
  sub_1C5BC6590(v3, v5, v2 != 0);
  return v12;
}

uint64_t sub_1C5BC3A0C@<X0>(uint64_t a1@<X8>)
{
  sub_1C5BC8894();
  sub_1C5BAC158();
  sub_1C5BCB3D4();
  sub_1C5BCB424();
  if (v9[4] == v9[0])
  {
    v2 = sub_1C5BC8744();
    return (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  }

  else
  {
    v4 = sub_1C5BCB484();
    v6 = v5;
    v7 = sub_1C5BC8744();
    v8 = *(v7 - 8);
    (*(v8 + 16))(a1, v6, v7);
    v4(v9, 0);
    return (*(v8 + 56))(a1, 0, 1, v7);
  }
}

uint64_t MCUINamespace<A>.snapshot()()
{
  v0[2] = sub_1C5BCB1E4();
  v0[3] = sub_1C5BCB1D4();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1C5BC3C20;

  return sub_1C5BC3E6C();
}

uint64_t sub_1C5BC3C20(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v5 = sub_1C5BCB194();
    v7 = v6;
    v8 = sub_1C5BC3E08;
  }

  else
  {
    *(v4 + 48) = a1;
    v5 = sub_1C5BCB194();
    v7 = v9;
    v8 = sub_1C5BC3DA0;
  }

  return MEMORY[0x1EEE6DFA0](v8, v5, v7);
}

uint64_t sub_1C5BC3DA0()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 48);

  return v1(v2);
}

uint64_t sub_1C5BC3E08()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C5BC3E6C()
{
  v1[80] = v0;
  v1[81] = sub_1C5BCB1E4();
  v1[82] = sub_1C5BCB1D4();
  v3 = sub_1C5BCB194();
  v1[83] = v3;
  v1[84] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1C5BC3F0C, v3, v2);
}

uint64_t sub_1C5BC3F0C()
{
  v1 = objc_opt_self();
  [v1 commit];
  v2 = [objc_opt_self() sharedApplication];
  v3 = [v2 connectedScenes];

  sub_1C592535C(0, &qword_1EDA45D90, 0x1E69DCE70);
  sub_1C5BC616C();
  v4 = sub_1C5BCB364();

  v5 = sub_1C5BC38F0(v4);
  *(v0 + 680) = v5;

  if (!v5)
  {
    goto LABEL_11;
  }

  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (!v6)
  {

LABEL_11:

    if (qword_1EDA46968 != -1)
    {
      swift_once();
    }

    v71 = *(v0 + 640);
    v72 = sub_1C5BC7D64();
    __swift_project_value_buffer(v72, qword_1EDA46970);
    v73 = v71;
    v74 = sub_1C5BC7D44();
    v75 = sub_1C5BCB4D4();

    if (os_log_type_enabled(v74, v75))
    {
      v76 = *(v0 + 640);
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      *v77 = 138412290;
      *(v77 + 4) = v76;
      *v78 = v76;
      v79 = v76;
      _os_log_impl(&dword_1C5922000, v74, v75, "No window scene, couldn't snapshot layer %@", v77, 0xCu);
      sub_1C5924EF4(v78, &unk_1EC196F30, &qword_1C5BD8940);
      MEMORY[0x1C69510F0](v78, -1, -1);
      MEMORY[0x1C69510F0](v77, -1, -1);
    }

    sub_1C5BC61D4();
    swift_allocError();
    *v80 = 4;
    swift_willThrow();
    goto LABEL_27;
  }

  v7 = v6;
  v8 = *(v0 + 640);
  [v1 begin];
  [v8 bounds];
  v13 = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  *(v0 + 688) = v13;
  v14 = [v13 layer];
  [v14 addSublayer_];

  v15 = [objc_allocWithZone(MEMORY[0x1E69DD2E8]) initWithWindowScene_];
  *(v0 + 696) = v15;
  [v15 setWindowLevel_];
  v16 = v15;
  [v16 addSubview_];
  [v16 setAlpha_];
  [v16 setHidden_];

  [v1 commit];
  v17 = [objc_opt_self() mainScreen];
  *(v0 + 704) = v17;
  [v17 scale];
  v19 = v18;
  [v8 position];
  v21 = v19 * v20;
  [v8 position];
  [v8 setPosition_];
  [v8 bounds];
  CGRectGetWidth(v107);
  [v8 bounds];
  CGRectGetHeight(v108);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19AA78, &unk_1C5BF5570);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C5BCFF00;
  *(v0 + 616) = sub_1C5BCAE74();
  *(v0 + 624) = v24;
  v25 = MEMORY[0x1E69E6158];
  sub_1C5BCBA14();
  v26 = [v17 gamut];
  *(inited + 96) = MEMORY[0x1E69E6530];
  *(inited + 72) = v26;
  sub_1C59AE524(inited);
  swift_setDeallocating();
  sub_1C5924EF4(inited + 32, &qword_1EC191858, &qword_1C5BD3100);
  v27 = sub_1C5BCACA4();

  v28 = _UIRenderingBufferCreate();
  *(v0 + 712) = v28;

  if (v28)
  {
    v29 = [*(v0 + 640) context];
    if (v29)
    {
      v30 = v29;
      v104 = [v29 contextId];

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC193A10, &unk_1C5BF5580);
      v31 = swift_initStackObject();
      *(v0 + 720) = v31;
      *(v31 + 16) = xmmword_1C5BF5530;
      *(v31 + 32) = sub_1C5BCAE74();
      *(v31 + 40) = v32;
      v33 = sub_1C5BCAE74();
      *(v31 + 72) = v25;
      *(v31 + 48) = v33;
      *(v31 + 56) = v34;
      *(v31 + 80) = sub_1C5BCAE74();
      *(v31 + 88) = v35;
      v36 = [v17 displayConfiguration];
      if (v36)
      {
        v44 = v36;
        v45 = *(v0 + 640);
        v46 = [v36 name];

        v47 = sub_1C5BCAE74();
        v49 = v48;

        *(v31 + 120) = v25;
        *(v31 + 96) = v47;
        *(v31 + 104) = v49;
        v50 = sub_1C5BCAE74();
        v51 = MEMORY[0x1E69E7668];
        *(v31 + 128) = v50;
        *(v31 + 136) = v52;
        *(v31 + 168) = v51;
        *(v31 + 144) = v104;
        v53 = sub_1C5BCAE74();
        v54 = MEMORY[0x1E69E76D8];
        *(v31 + 176) = v53;
        *(v31 + 184) = v55;
        *(v31 + 216) = v54;
        *(v31 + 192) = v45;
        *(v31 + 224) = sub_1C5BCAE74();
        *(v31 + 232) = v56;
        type metadata accessor for IOSurfaceRef(0);
        *(v31 + 264) = v57;
        *(v31 + 240) = v28;
        *(v31 + 272) = sub_1C5BCAE74();
        *(v31 + 280) = v58;
        v59 = v28;
        CATransform3DMakeScale((v0 + 384), v19, v19, 1.0);
        type metadata accessor for CATransform3D(0);
        *(v31 + 312) = v60;
        v61 = swift_allocObject();
        *(v31 + 288) = v61;
        v62 = *(v0 + 432);
        v61[3] = *(v0 + 416);
        v61[4] = v62;
        v63 = *(v0 + 400);
        v61[1] = *(v0 + 384);
        v61[2] = v63;
        v64 = *(v0 + 496);
        v61[7] = *(v0 + 480);
        v61[8] = v64;
        v65 = *(v0 + 464);
        v61[5] = *(v0 + 448);
        v61[6] = v65;
        *(v31 + 320) = sub_1C5BCAE74();
        *(v31 + 328) = v66;
        *(v31 + 360) = MEMORY[0x1E69E6370];
        *(v31 + 336) = 1;
        v67 = sub_1C59AD990(v31);
        *(v0 + 728) = v67;
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1917A8, &qword_1C5BD4E10);
        swift_arrayDestroy();
        v68 = sub_1C5BCB1D4();
        *(v0 + 736) = v68;
        v69 = swift_task_alloc();
        *(v0 + 744) = v69;
        v69[2] = v45;
        v69[3] = v67;
        v69[4] = v59;
        v70 = swift_task_alloc();
        *(v0 + 752) = v70;
        v43 = sub_1C592535C(0, &qword_1EDA4E5E0, 0x1E69DCAB8);
        *v70 = v0;
        v70[1] = sub_1C5BC4A8C;
        v38 = MEMORY[0x1E69E85E0];
        v41 = sub_1C5BC644C;
        v39 = 0x6F687370616E735FLL;
        v40 = 0xEB00000000292874;
        v36 = (v0 + 632);
        v37 = v68;
        v42 = v69;
      }

      else
      {
        __break(1u);
      }

      return MEMORY[0x1EEE6DE38](v36, v37, v38, v39, v40, v41, v42, v43);
    }

    if (qword_1EDA46968 != -1)
    {
      swift_once();
    }

    v91 = *(v0 + 640);
    v92 = sub_1C5BC7D64();
    __swift_project_value_buffer(v92, qword_1EDA46970);
    v93 = v91;
    v94 = sub_1C5BC7D44();
    v95 = sub_1C5BCB4D4();

    if (os_log_type_enabled(v94, v95))
    {
      v96 = *(v0 + 640);
      v97 = swift_slowAlloc();
      v105 = v13;
      v98 = swift_slowAlloc();
      *v97 = 138412290;
      *(v97 + 4) = v96;
      *v98 = v96;
      v99 = v96;
      _os_log_impl(&dword_1C5922000, v94, v95, "No layer context ID, couldn't snapshot layer %@", v97, 0xCu);
      sub_1C5924EF4(v98, &unk_1EC196F30, &qword_1C5BD8940);
      v100 = v98;
      v13 = v105;
      MEMORY[0x1C69510F0](v100, -1, -1);
      MEMORY[0x1C69510F0](v97, -1, -1);
    }

    sub_1C5BC61D4();
    swift_allocError();
    *v101 = 3;
    swift_willThrow();
  }

  else
  {

    if (qword_1EDA46968 != -1)
    {
      swift_once();
    }

    v81 = *(v0 + 640);
    v82 = sub_1C5BC7D64();
    __swift_project_value_buffer(v82, qword_1EDA46970);
    v83 = v81;
    v84 = sub_1C5BC7D44();
    v85 = sub_1C5BCB4D4();

    if (os_log_type_enabled(v84, v85))
    {
      v86 = *(v0 + 640);
      v87 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      *v87 = 138412290;
      *(v87 + 4) = v86;
      *v88 = v86;
      v89 = v86;
      _os_log_impl(&dword_1C5922000, v84, v85, "Failed to create buffer, couldn't snapshot layer %@", v87, 0xCu);
      sub_1C5924EF4(v88, &unk_1EC196F30, &qword_1C5BD8940);
      MEMORY[0x1C69510F0](v88, -1, -1);
      MEMORY[0x1C69510F0](v87, -1, -1);
    }

    sub_1C5BC61D4();
    swift_allocError();
    *v90 = 0;
    swift_willThrow();
  }

LABEL_27:
  v102 = *(v0 + 8);

  return v102();
}

uint64_t sub_1C5BC4A8C()
{
  v2 = *v1;
  *(*v1 + 760) = v0;

  if (v0)
  {
    v3 = *(v2 + 672);
    v4 = *(v2 + 664);
    v5 = sub_1C5BC4C74;
  }

  else
  {

    v3 = *(v2 + 672);
    v4 = *(v2 + 664);
    v5 = sub_1C5BC4BD0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1C5BC4BD0()
{
  v1 = *(v0 + 704);
  v2 = *(v0 + 696);
  v3 = *(v0 + 688);
  v4 = *(v0 + 680);

  v5 = *(v0 + 632);
  v6 = *(v0 + 8);

  return v6(v5);
}

uint64_t sub_1C5BC4C74()
{
  v1 = *(v0 + 712);
  v2 = *(v0 + 696);
  v3 = *(v0 + 688);
  v4 = *(v0 + 680);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1C5BC4D40(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19AA80, &unk_1C5BF5590);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930A0, &qword_1C5BD7440);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v21 - v13;
  v15 = sub_1C5BCB214();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  (*(v9 + 16))(v11, a1, v8);
  v16 = (*(v9 + 80) + 56) & ~*(v9 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = 0;
  *(v17 + 3) = 0;
  *(v17 + 4) = a2;
  *(v17 + 5) = a3;
  *(v17 + 6) = a4;
  (*(v9 + 32))(&v17[v16], v11, v8);
  v18 = a2;

  v19 = a4;
  sub_1C5A0BB28(0, 0, v14, &unk_1C5BF55A8, v17);

  return sub_1C5924EF4(v14, &qword_1EC1930A0, &qword_1C5BD7440);
}

uint64_t sub_1C5BC4F60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  return MEMORY[0x1EEE6DFA0](sub_1C5BC4F84, 0, 0);
}

uint64_t sub_1C5BC4F84()
{
  v22 = v0;
  v19 = *(v0 + 24);
  sub_1C5BC55DC(v19, *(v0 + 32), *(v0 + 40));
  v2 = v1;
  if (qword_1EDA46968 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 24);
  v4 = sub_1C5BC7D64();
  __swift_project_value_buffer(v4, qword_1EDA46970);
  v5 = v3;
  v6 = sub_1C5BC7D44();
  v7 = sub_1C5BCB4B4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v20 + 24);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v9 = 136315394;
    v12 = sub_1C5BC5BC8(0);
    v14 = sub_1C592ADA8(v12, v13, &v21);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2112;
    *(v9 + 14) = v8;
    *v10 = v19;
    v15 = v8;
    v0 = v20;
    _os_log_impl(&dword_1C5922000, v6, v7, "Snapshot succeeded, %slayer %@", v9, 0x16u);
    sub_1C5924EF4(v10, &unk_1EC196F30, &qword_1C5BD8940);
    MEMORY[0x1C69510F0](v10, -1, -1);
    v16 = __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x1C69510F0](v11, -1, -1, v16);
    MEMORY[0x1C69510F0](v9, -1, -1);
  }

  *(v0 + 16) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19AA80, &unk_1C5BF5590);
  sub_1C5BCB1B4();
  v17 = *(v0 + 8);

  return v17();
}

void sub_1C5BC55DC(void *a1, uint64_t a2, void *a3)
{
  if (qword_1EDA46968 != -1)
  {
    swift_once();
  }

  v6 = sub_1C5BC7D64();
  __swift_project_value_buffer(v6, qword_1EDA46970);
  v7 = a1;
  v8 = sub_1C5BC7D44();
  v9 = sub_1C5BCB4B4();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    *(v10 + 4) = v7;
    *v11 = v7;
    v12 = v7;
    _os_log_impl(&dword_1C5922000, v8, v9, "Taking snapshot of layer %@", v10, 0xCu);
    sub_1C5924EF4(v11, &unk_1EC196F30, &qword_1C5BD8940);
    MEMORY[0x1C69510F0](v11, -1, -1);
    MEMORY[0x1C69510F0](v10, -1, -1);
  }

  sub_1C5A0F590(a2);
  v13 = sub_1C5BCACA4();

  v14 = CARenderServerSnapshot();

  if (!v14)
  {
    v25 = v7;
    v26 = sub_1C5BC7D44();
    v27 = sub_1C5BCB4D4();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 138412290;
      *(v28 + 4) = v25;
      *v29 = v25;
      v30 = v25;
      _os_log_impl(&dword_1C5922000, v26, v27, "CARenderServerSnapshot failed to create snapshot for layer %@", v28, 0xCu);
      sub_1C5924EF4(v29, &unk_1EC196F30, &qword_1C5BD8940);
      MEMORY[0x1C69510F0](v29, -1, -1);
      MEMORY[0x1C69510F0](v28, -1, -1);
    }

    sub_1C5BC61D4();
    swift_allocError();
    v32 = 5;
    goto LABEL_18;
  }

  v15 = [a3 CGImageBuilder];
  if (!v15)
  {
    __break(1u);
    return;
  }

  v16 = v15;
  v17 = [v15 buildCGImage];

  if (!v17)
  {
    v33 = v7;
    v34 = sub_1C5BC7D44();
    v35 = sub_1C5BCB4D4();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v36 = 138412290;
      *(v36 + 4) = v33;
      *v37 = v33;
      v38 = v33;
      _os_log_impl(&dword_1C5922000, v34, v35, "IOSurface.cgImageBuilder failed to create image for layer %@", v36, 0xCu);
      sub_1C5924EF4(v37, &unk_1EC196F30, &qword_1C5BD8940);
      MEMORY[0x1C69510F0](v37, -1, -1);
      MEMORY[0x1C69510F0](v36, -1, -1);
    }

    sub_1C5BC61D4();
    swift_allocError();
    v32 = 1;
LABEL_18:
    *v31 = v32;
    swift_willThrow();
    return;
  }

  if (sub_1C5BC5AE8())
  {
    v18 = v7;
    v19 = sub_1C5BC7D44();
    v20 = sub_1C5BCB4D4();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      *(v21 + 4) = v18;
      *v22 = v18;
      v23 = v18;
      _os_log_impl(&dword_1C5922000, v19, v20, "Got transparent background snapshot for layer %@", v21, 0xCu);
      sub_1C5924EF4(v22, &unk_1EC196F30, &qword_1C5BD8940);
      MEMORY[0x1C69510F0](v22, -1, -1);
      MEMORY[0x1C69510F0](v21, -1, -1);
    }

    sub_1C5BC61D4();
    swift_allocError();
    *v24 = 2;
    swift_willThrow();
  }

  else
  {
    [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithCGImage_];
  }
}

int64_t sub_1C5BC5AE8()
{
  v1 = v0;
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v3 = __CGBitmapContextCreate_0(DeviceRGB);

  if (!v3)
  {
    return 0;
  }

  result = CGImageGetWidth(v1);
  if (__OFSUB__(0, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  if (__OFADD__(-result, 1))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  result = CGImageGetHeight(v1);
  if (__OFSUB__(0, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (!__OFADD__(-result, 1))
  {
    CGImageGetWidth(v1);
    CGImageGetHeight(v1);
    sub_1C5BCB494();
    Data = CGBitmapContextGetData(v3);
    if (Data)
    {
      v6 = Data[3];

      return v6 == 0;
    }

    return 0;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_1C5BC5BC8(uint64_t a1)
{
  if (a1 < 1)
  {
    return 0;
  }

  v5[4] = v1;
  v5[5] = v2;
  sub_1C5BCBA94();

  strcpy(v5, "retry count: ");
  HIWORD(v5[1]) = -4864;
  v3 = sub_1C5BCBD64();
  MEMORY[0x1C694F170](v3);

  MEMORY[0x1C694F170](8236, 0xE200000000000000);
  return v5[0];
}

uint64_t sub_1C5BC5C88()
{
  v0 = sub_1C5BC7D64();
  __swift_allocate_value_buffer(v0, qword_1EDA46970);
  __swift_project_value_buffer(v0, qword_1EDA46970);
  return sub_1C5BC7D54();
}

uint64_t CALayer.snapshot()()
{
  v1[2] = v0;
  v1[3] = sub_1C5BCB1E4();
  v1[4] = sub_1C5BCB1D4();
  v3 = sub_1C5BCB194();
  v1[5] = v3;
  v1[6] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1C5BC5DA8, v3, v2);
}

uint64_t sub_1C5BC5DA8()
{
  v1 = *(v0 + 16);
  *(v0 + 56) = sub_1C5BCB1D4();
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_1C5BC5E48;

  return sub_1C5BC3E6C();
}

uint64_t sub_1C5BC5E48(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = sub_1C5BCB194();
    v7 = v6;
    v8 = sub_1C5BC609C;
  }

  else
  {
    *(v4 + 80) = a1;
    v5 = sub_1C5BCB194();
    v7 = v9;
    v8 = sub_1C5BC5FC8;
  }

  return MEMORY[0x1EEE6DFA0](v8, v5, v7);
}

uint64_t sub_1C5BC5FC8()
{
  v1 = v0[2];

  v2 = v0[5];
  v3 = v0[6];

  return MEMORY[0x1EEE6DFA0](sub_1C5BC6034, v2, v3);
}

uint64_t sub_1C5BC6034()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 80);

  return v1(v2);
}

uint64_t sub_1C5BC609C()
{
  v1 = v0[2];

  v2 = v0[5];
  v3 = v0[6];

  return MEMORY[0x1EEE6DFA0](sub_1C5BC6108, v2, v3);
}

uint64_t sub_1C5BC6108()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_1C5BC616C()
{
  result = qword_1EDA45D88;
  if (!qword_1EDA45D88)
  {
    sub_1C592535C(255, &qword_1EDA45D90, 0x1E69DCE70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA45D88);
  }

  return result;
}

unint64_t sub_1C5BC61D4()
{
  result = qword_1EDA490E8[0];
  if (!qword_1EDA490E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDA490E8);
  }

  return result;
}

void sub_1C5BC6228(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x1C694FBE0](a1, a2, v7);
      sub_1C592535C(0, &qword_1EDA45D90, 0x1E69DCE70);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_1C592535C(0, &qword_1EDA45D90, 0x1E69DCE70);
    if (sub_1C5BCB964() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_1C5BCB974();
    swift_dynamicCast();
    v4 = v15;
    v8 = sub_1C5BCB734();
    v9 = -1 << *(a4 + 32);
    v6 = v8 & ~v9;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v10 = ~v9;
      do
      {
        v11 = *(*(a4 + 48) + 8 * v6);
        v12 = sub_1C5BCB744();

        if (v12)
        {
          goto LABEL_19;
        }

        v6 = (v6 + 1) & v10;
      }

      while (((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    __break(1u);
  }

  if ((v6 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v6)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v6 >> 6) + 56) >> v6) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v13 = *(*(a4 + 48) + 8 * v6);

  v14 = v13;
}

uint64_t sub_1C5BC6458(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19AA80, &unk_1C5BF5590) - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1C592ABD4;

  return sub_1C5BC4F60(a1, v6, v7, v8, v9, v10, v1 + v5);
}

double sub_1C5BC6590(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CALayerSnapshotError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CALayerSnapshotError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C5BC66F0()
{
  result = qword_1EC19AA88;
  if (!qword_1EC19AA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC19AA88);
  }

  return result;
}

id sub_1C5BC6744()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
  v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x58))();
  v3 = sub_1C5BCAE44();
  [v1 setValue:v2 forKey:v3];

  v4 = sub_1C5BCB184();
  v5 = sub_1C5BCAE44();
  [v1 setValue:v4 forKey:v5];

  v6 = sub_1C5BCB184();
  v7 = sub_1C5BCAE44();
  [v1 setValue:v6 forKey:v7];

  if (qword_1EC1909F0 != -1)
  {
    swift_once();
  }

  v8 = sub_1C5BC7BD4();
  v9 = sub_1C5BCAE44();
  [v1 setValue:v8 forKey:v9];

  return v1;
}

id sub_1C5BC692C()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for LockScreenBlurLayer();
  v1 = objc_msgSendSuper2(&v6, sel_init);
  [v1 setScale_];
  [v1 setAllowsInPlaceFiltering_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC197420, &qword_1C5BE4CB0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1C5BCFF00;
  v3 = sub_1C5BC6744();
  *(v2 + 56) = sub_1C5BC70A0();
  *(v2 + 32) = v3;
  v4 = sub_1C5BCB044();

  [v1 setFilters_];

  return v1;
}

void *sub_1C5BC6A4C(void *a1)
{
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v3 = sub_1C5BCBDD4();
  v10.receiver = v1;
  v10.super_class = type metadata accessor for LockScreenBlurLayer();
  v4 = objc_msgSendSuper2(&v10, sel_initWithLayer_, v3);
  swift_unknownObjectRelease();
  v5 = v4;
  [v5 setScale_];
  [v5 setAllowsInPlaceFiltering_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC197420, &qword_1C5BE4CB0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1C5BCFF00;
  v7 = sub_1C5BC6744();
  *(v6 + 56) = sub_1C5BC70A0();
  *(v6 + 32) = v7;
  v8 = sub_1C5BCB044();

  [v5 setFilters_];

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v5;
}

id sub_1C5BC7044(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_1C5BC70A0()
{
  result = qword_1EDA45D80;
  if (!qword_1EDA45D80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDA45D80);
  }

  return result;
}

void sub_1C5BC70EC()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  v2 = 40.0;
  if (v1)
  {
    v2 = 9.0;
  }

  qword_1EC19AA90 = *&v2;
}

uint64_t __isPlatformVersionAtLeast(int a1, int a2, int a3, int a4)
{
  if (qword_1EC1A6938 == -1)
  {
    if (qword_1EC1A6940)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    __isPlatformVersionAtLeast_cold_1();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_1EC1A6940)
    {
      return _availability_version_check();
    }
  }

  if (qword_1EC1A6930 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    __isPlatformVersionAtLeast_cold_2();
    a3 = v10;
    a4 = v9;
    v8 = _MergedGlobals < v11;
    if (_MergedGlobals > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_1EC1A6924 > a3)
      {
        return 1;
      }

      if (dword_1EC1A6924 >= a3)
      {
        return dword_1EC1A6928 >= a4;
      }
    }

    return 0;
  }

  v8 = _MergedGlobals < a2;
  if (_MergedGlobals <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t _initializeAvailabilityCheck(uint64_t result)
{
  v29 = *MEMORY[0x1E69E9840];
  v1 = qword_1EC1A6940;
  if (qword_1EC1A6940)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (MEMORY[0x1EEE9AC60])
    {
      v1 = MEMORY[0x1EEE9AC60];
      qword_1EC1A6940 = MEMORY[0x1EEE9AC60];
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = MEMORY[0x1C6950830](v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &_MergedGlobals, &dword_1EC1A6924, &dword_1EC1A6928);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE30](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE40](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectOffset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE78](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}