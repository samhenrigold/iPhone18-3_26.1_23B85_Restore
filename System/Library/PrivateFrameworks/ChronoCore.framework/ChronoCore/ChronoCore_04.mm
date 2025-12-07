uint64_t sub_224A8E510(void *a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6120, qword_224DBE860);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v53 - v7;
  v9 = sub_224DA9F08();
  v10 = *(v9 - 8);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v61 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12, v14);
  v17 = &v53 - v16;
  v19 = MEMORY[0x28223BE20](v15, v18);
  v21 = &v53 - v20;
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v53 - v23;
  BSDispatchQueueAssert();
  [a1 integerValue];
  sub_224DA9EE8();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_224A3311C(v8, &qword_27D6F6120, qword_224DBE860);
  }

  v59 = v2;
  (*(v10 + 32))(v24, v8, v9);
  if (qword_281351580 != -1)
  {
    swift_once();
  }

  v26 = sub_224DAB258();
  __swift_project_value_buffer(v26, qword_281364EC8);
  v27 = *(v10 + 16);
  v60 = v24;
  v57 = v27;
  v58 = v10 + 16;
  v27(v21, v24, v9);
  v28 = a2;
  v29 = sub_224DAB228();
  v30 = sub_224DAF278();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v56 = v17;
    v32 = v31;
    v33 = swift_slowAlloc();
    v54 = v33;
    v55 = swift_slowAlloc();
    v62[0] = v55;
    *v32 = 138543618;
    *(v32 + 4) = v28;
    *v33 = v28;
    *(v32 + 12) = 2082;
    v34 = v28;
    v35 = sub_224DA9EC8();
    v37 = v36;
    v38 = *(v10 + 8);
    v38(v21, v9);
    v39 = sub_224A33F74(v35, v37, v62);

    *(v32 + 14) = v39;
    _os_log_impl(&dword_224A2F000, v29, v30, "Received setWidgetTaskPriority for %{public}@: %{public}s", v32, 0x16u);
    v40 = v54;
    sub_224A3311C(v54, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v40, -1, -1);
    v41 = v55;
    __swift_destroy_boxed_opaque_existential_1(v55);
    MEMORY[0x22AA5EED0](v41, -1, -1);
    v42 = v32;
    v17 = v56;
    MEMORY[0x22AA5EED0](v42, -1, -1);

    v43 = v38;
  }

  else
  {

    v43 = *(v10 + 8);
    v43(v21, v9);
  }

  v44 = v59;
  v45 = *(v59 + OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__lock);
  os_unfair_lock_lock(*(v45 + 16));
  v46 = OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__lock_sessions;
  swift_beginAccess();
  v47 = *(v44 + v46);

  v48 = sub_224A71D20(v28, v47);

  os_unfair_lock_unlock(*(v45 + 16));
  if (!v48)
  {
    return (v43)(v60, v9);
  }

  v49 = v60;
  v50 = v57;
  v57(v17, v60, v9);
  v51 = OBJC_IVAR____TtC10ChronoCore21WidgetRendererSession_taskPriority;
  swift_beginAccess();
  v52 = v61;
  v50(v61, v48 + v51, v9);
  swift_beginAccess();
  (*(v10 + 24))(v48 + v51, v17, v9);
  swift_endAccess();
  sub_224A7F0A8(v52);

  v43(v52, v9);
  v43(v17, v9);
  return (v43)(v49, v9);
}

uint64_t sub_224A8EA6C(uint64_t a1)
{
  v2 = type metadata accessor for _SessionPriorityInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_224A8EAD0(uint64_t a1, void *a2)
{
  v3 = sub_224A4A248();
  v4 = a2[3];
  v5 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v4);
  v6 = (*(v5 + 24))(v4, v5);
  if (v3)
  {
    sub_224DAF538();
    v7 = sub_224DAF6A8();

    v6 = v3;
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

void sub_224A8EBB8(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = [a1 state];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 taskState];

    v10 = [a1 previousState];
    if (v10)
    {
      v11 = v10;
      v12 = [v10 taskState];

      if ((v9 | 2) == 3 && v9 != v12)
      {
        v14 = OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_bundleIdentifiersToSuspensionObservers;
        swift_beginAccess();
        v15 = *(v3 + v14);
        if (*(v15 + 16))
        {

          v16 = sub_224A3A40C(a2, a3);
          if (v17)
          {
            v18 = *(*(v15 + 56) + 8 * v16);

            v19 = *(v18 + 16);
            if (v19)
            {
              v20 = v18 + 32;
              do
              {
                sub_224A3317C(v20, v23);
                __swift_project_boxed_opaque_existential_1(v23, v23[3]);
                sub_224DAE638();
                __swift_destroy_boxed_opaque_existential_1(v23);
                v20 += 40;
                --v19;
              }

              while (v19);
            }

            swift_beginAccess();

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v22 = *(v3 + v14);
            *(v3 + v14) = 0x8000000000000000;
            sub_224A4F434(MEMORY[0x277D84F90], a2, a3, isUniquelyReferenced_nonNull_native);

            *(v3 + v14) = v22;
            swift_endAccess();
          }

          else
          {
          }
        }
      }
    }
  }
}

uint64_t sub_224A8EDA4(void *a1, void (*a2)(void), uint64_t a3)
{
  v7 = *(sub_224DABE18() - 8);
  v8 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(sub_224DACC88() - 8);
  v11 = (v9 + *(v10 + 80) + 8) & ~*(v10 + 80);
  v12 = *(v3 + 16);
  v13 = *(v3 + v9);
  v14 = *(v3 + ((*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_224A8EED0(a1, a2, a3, v12, v3 + v8, v13, v3 + v11, v14);
}

uint64_t sub_224A8EED0(void *a1, void (*a2)(void), uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21 = a4;
  v14 = sub_224DACB98();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v20 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_224DACC68();

  sub_224A8F010(a5, a6, a1, v18, v21, a8, a2, a3);

  return (*(v15 + 8))(v18, v14);
}

void sub_224A8F010(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, void (*a7)(void), uint64_t a8)
{
  v87 = a2;
  v88 = a3;
  v13 = sub_224DAE6E8();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_224DABE18();
  v82 = *(v18 - 8);
  v83 = v18;
  MEMORY[0x28223BE20](v18, v19);
  v81 = &v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_224DAB258();
  v85 = *(v21 - 8);
  v86 = v21;
  MEMORY[0x28223BE20](v21, v22);
  v84 = &v71 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = swift_allocObject();
  v24[2] = a6;
  v24[3] = a7;
  v24[4] = a8;
  if (*(a5 + OBJC_IVAR____TtC10ChronoCore22TimelineReloadStrategy_isPreview) == 1)
  {
    v93 = 0;
    memset(v92, 0, sizeof(v92));

    sub_224DACB58();
LABEL_33:
    sub_224A8FA54(v92, &v89);
    v69 = swift_allocObject();
    v70 = v90;
    *(v69 + 16) = v89;
    *(v69 + 32) = v70;
    *(v69 + 48) = v91;
    *(v69 + 56) = sub_224B819F8;
    *(v69 + 64) = v24;

    sub_224A8FAC4(a1, v87, v88, sub_224BB124C, v69);

LABEL_34:
    sub_224A3311C(v92, &qword_27D6F3AE8, &unk_224DB9600);

    return;
  }

  v77 = v17;
  v78 = v14;
  v79 = v13;
  v25 = __swift_project_boxed_opaque_existential_1((a5 + OBJC_IVAR____TtC10ChronoCore28MobileTimelineReloadStrategy_locationService), *(a5 + OBJC_IVAR____TtC10ChronoCore28MobileTimelineReloadStrategy_locationService + 24));

  v26 = sub_224DABDB8();
  v27 = *v25;
  v28 = *(v27 + OBJC_IVAR____TtC10ChronoCore15LocationService_lock);
  os_unfair_lock_lock(*(v28 + 16));
  sub_224A8F8F8(v27, v26, v92);
  v76 = 0;
  os_unfair_lock_unlock(*(v28 + 16));

  if ((sub_224DACB58() & 1) == 0)
  {
    goto LABEL_33;
  }

  v74 = a7;
  v75 = a8;
  __swift_project_boxed_opaque_existential_1(a5 + 4, a5[7]);
  v29 = sub_224DABDB8();
  sub_224DAC6D8();

  if (!*(&v90 + 1))
  {
LABEL_19:
    sub_224A3311C(&v89, &unk_27D6F4700, &unk_224DB3A10);
    goto LABEL_33;
  }

  __swift_project_boxed_opaque_existential_1(&v89, *(&v90 + 1));
  v30 = sub_224DAE278();
  __swift_destroy_boxed_opaque_existential_1(&v89);
  if ((v30 & 1) == 0)
  {
    goto LABEL_33;
  }

  v31 = (a5 + OBJC_IVAR____TtC10ChronoCore28MobileTimelineReloadStrategy_locationService);
  __swift_project_boxed_opaque_existential_1((a5 + OBJC_IVAR____TtC10ChronoCore28MobileTimelineReloadStrategy_locationService), *(a5 + OBJC_IVAR____TtC10ChronoCore28MobileTimelineReloadStrategy_locationService + 24));
  v32 = sub_224DABDB8();
  v33 = sub_224A8F944(v32);

  v34 = sub_224A67D38();
  if (!v34)
  {
    goto LABEL_33;
  }

  v35 = v34;
  v36 = (v34 & 0xFFFFFFFFFFFFFF8);
  v80 = (v34 & 0xFFFFFFFFFFFFFF8);
  v72 = v31;
  v73 = v33;
  if (v34 >> 62)
  {
LABEL_31:
    v68 = sub_224DAF838();
    v36 = v80;
    v37 = v68;
    if (v68)
    {
      goto LABEL_9;
    }

LABEL_32:

    goto LABEL_33;
  }

  v37 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v37)
  {
    goto LABEL_32;
  }

LABEL_9:
  v38 = 0;
  while (1)
  {
    if ((v35 & 0xC000000000000001) != 0)
    {
      v39 = MEMORY[0x22AA5DCC0](v38, v35);
      v40 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }
    }

    else
    {
      if (v38 >= v36[2])
      {
        __break(1u);
        goto LABEL_31;
      }

      v39 = *(v35 + 8 * v38 + 32);
      v40 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        goto LABEL_18;
      }
    }

    v41 = v39;
    if ([v39 isSuggestion])
    {
      break;
    }

    ++v38;
    v36 = v80;
    if (v40 == v37)
    {
      goto LABEL_32;
    }
  }

  v80 = v41;

  if (v73)
  {

    goto LABEL_33;
  }

  sub_224A8FA54(v92, &v89);
  if (*(&v90 + 1))
  {
    __swift_project_boxed_opaque_existential_1(&v89, *(&v90 + 1));
    sub_224DAE1F8();
    __swift_destroy_boxed_opaque_existential_1(&v89);
  }

  else
  {
    sub_224A3311C(&v89, &qword_27D6F3AE8, &unk_224DB9600);
  }

  v42 = __swift_project_boxed_opaque_existential_1(v72, v72[3]);
  v43 = sub_224DABDB8();
  v44 = *v42;
  v45 = *(v44 + OBJC_IVAR____TtC10ChronoCore15LocationService_lock);
  os_unfair_lock_lock(*(v45 + 16));
  v46 = v76;
  sub_224D29BA0(v44, v43);
  if (!v46)
  {
    os_unfair_lock_unlock(*(v45 + 16));

    v47 = v84;
    v48 = v85;
    v49 = a5 + OBJC_IVAR____TtC10ChronoCore22TimelineReloadStrategy_logger;
    v50 = v86;
    (*(v85 + 16))(v84, v49, v86);
    v52 = v81;
    v51 = v82;
    v53 = a1;
    v54 = v83;
    (*(v82 + 16))(v81, v53, v83);
    v55 = sub_224DAB228();
    v56 = sub_224DAF2A8();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = v52;
      v58 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      *&v89 = v88;
      *v58 = 136446210;
      sub_224A6E240();
      v59 = sub_224DAFD28();
      v60 = v54;
      v61 = v47;
      v63 = v62;
      (*(v51 + 8))(v57, v60);
      v64 = sub_224A33F74(v59, v63, &v89);

      *(v58 + 4) = v64;
      _os_log_impl(&dword_224A2F000, v55, v56, "%{public}s Deferring reload due to suggested widget needing location.", v58, 0xCu);
      v65 = v88;
      __swift_destroy_boxed_opaque_existential_1(v88);
      MEMORY[0x22AA5EED0](v65, -1, -1);
      MEMORY[0x22AA5EED0](v58, -1, -1);

      (*(v48 + 8))(v61, v86);
    }

    else
    {

      (*(v51 + 8))(v52, v54);
      (*(v48 + 8))(v47, v50);
    }

    v66 = v77;
    sub_224AD1978();
    (*(v78 + 104))(v66, *MEMORY[0x277CE3C48], v79);
    v67 = sub_224DAF638();
    v74();

    goto LABEL_34;
  }

  os_unfair_lock_unlock(*(v45 + 16));
  __break(1u);
}

uint64_t sub_224A8F870()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_224A8F8B0()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_224A8F944(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC10ChronoCore15LocationService_lock);
  os_unfair_lock_lock(*(v3 + 16));
  if (*(v1 + OBJC_IVAR____TtC10ChronoCore15LocationService_invalidated))
  {
    v4 = 0;
  }

  else
  {
    v5 = OBJC_IVAR____TtC10ChronoCore15LocationService_extInfoByIdentifier;
    swift_beginAccess();
    v4 = sub_224A71E2C(a1, *(v1 + v5), sub_224A3E7EC, type metadata accessor for ExtensionInfo);
    if (v4)
    {
      swift_endAccess();
      if (*(v4 + OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_allowLocationForActivity))
      {

        v4 = 1;
      }

      else
      {
        v6 = *(v4 + OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_allowLocationForVisibility);

        v4 = v6 != 0;
      }
    }

    else
    {
      swift_endAccess();
    }
  }

  os_unfair_lock_unlock(*(v3 + 16));
  return v4;
}

uint64_t sub_224A8FA54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3AE8, &unk_224DB9600);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_224A8FAC4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *, uint64_t), uint64_t a5)
{
  v38 = a4;
  v39 = a5;
  v9 = sub_224DAE6E8();
  v36 = *(v9 - 8);
  v37 = v9;
  MEMORY[0x28223BE20](v9, v10);
  v35 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_224DABE18();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_224DAB258();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_224A3796C(a3, v41, &qword_27D6F4760, &unk_224DB3680);
  if (v41[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5080, &qword_224DB3690);
    if (swift_dynamicCast())
    {
      v22 = v40;
      swift_unknownObjectRetain();
      v23 = v39;

      sub_224A8FF84(v22, a1, a2, v5, v22, v38, v23);
      swift_unknownObjectRelease_n();

      return;
    }
  }

  else
  {
    sub_224A3311C(v41, &qword_27D6F4760, &unk_224DB3680);
  }

  (*(v18 + 16))(v21, &v5[OBJC_IVAR____TtC10ChronoCore22TimelineReloadStrategy_logger], v17);
  (*(v13 + 16))(v16, a1, v12);
  v24 = sub_224DAB228();
  v25 = sub_224DAF288();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v41[0] = v34;
    *v26 = 136446210;
    sub_224A60144(&qword_281350E70, MEMORY[0x277CF98E0], MEMORY[0x277CF98F8]);
    v27 = sub_224DAFD28();
    v33 = v17;
    v29 = v28;
    (*(v13 + 8))(v16, v12);
    v30 = sub_224A33F74(v27, v29, v41);

    *(v26 + 4) = v30;
    _os_log_impl(&dword_224A2F000, v24, v25, "%{public}s No extension session", v26, 0xCu);
    v31 = v34;
    __swift_destroy_boxed_opaque_existential_1(v34);
    MEMORY[0x22AA5EED0](v31, -1, -1);
    MEMORY[0x22AA5EED0](v26, -1, -1);

    (*(v18 + 8))(v21, v33);
  }

  else
  {

    (*(v13 + 8))(v16, v12);
    (*(v18 + 8))(v21, v17);
  }

  sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
  (*(v36 + 104))(v35, *MEMORY[0x277CE3C40], v37);
  v32 = sub_224DAF638();
  v38(v32, 1);
}

void sub_224A8FF84(void *a1, uint64_t a2, uint64_t a3, const char *a4, char *a5, void (*a6)(void *, uint64_t), uint64_t a7)
{
  v236 = a3;
  v240 = a2;
  v224 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4800, &qword_224DB7988);
  v13 = MEMORY[0x28223BE20](v11 - 8, v12);
  v256 = &v209 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v15);
  v254 = &v209 - v16;
  v232 = sub_224DAB1F8();
  v233 = *(v232 - 8);
  MEMORY[0x28223BE20](v232, v17);
  v249 = &v209 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4808, &unk_224DB7990);
  MEMORY[0x28223BE20](v19 - 8, v20);
  v245 = &v209 - v21;
  v248 = sub_224DAE4F8();
  v255 = *(v248 - 8);
  v23 = MEMORY[0x28223BE20](v248, v22);
  v244 = &v209 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v25);
  v247 = &v209 - v26;
  v264 = sub_224DAC268();
  v225 = *(v264 - 8);
  v28 = MEMORY[0x28223BE20](v264, v27);
  v252 = &v209 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v28, v30);
  v216 = &v209 - v32;
  MEMORY[0x28223BE20](v31, v33);
  v251 = &v209 - v34;
  v261 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4270, &qword_224DB6580);
  v36 = MEMORY[0x28223BE20](v261, v35);
  v210 = &v209 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v36, v38);
  v258 = (&v209 - v40);
  MEMORY[0x28223BE20](v39, v41);
  v257 = &v209 - v42;
  v227 = sub_224DAE6E8();
  v226 = *(v227 - 8);
  MEMORY[0x28223BE20](v227, v43);
  v228 = &v209 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  MEMORY[0x28223BE20](v45 - 8, v46);
  *&v263 = &v209 - v47;
  v260 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v262 = *(v260 - 1);
  MEMORY[0x28223BE20](v260, v48);
  v259 = &v209 - v49;
  v50 = sub_224DABE18();
  v51 = *(v50 - 8);
  v53 = MEMORY[0x28223BE20](v50, v52);
  v223 = &v209 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v222 = v54;
  MEMORY[0x28223BE20](v53, v55);
  v57 = &v209 - v56;
  v58 = sub_224DAB258();
  v59 = *(v58 - 8);
  v61 = MEMORY[0x28223BE20](v58, v60);
  v215 = &v209 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v61, v63);
  v65 = &v209 - v64;
  v66 = swift_allocObject();
  *(v66 + 2) = a5;
  *(v66 + 3) = a6;
  v230 = a6;
  v235 = v66;
  *(v66 + 4) = a7;
  v237 = v59;
  v67 = *(v59 + 16);
  v253 = a4;
  v211 = OBJC_IVAR____TtC10ChronoCore22TimelineReloadStrategy_logger;
  v213 = v59 + 16;
  v212 = v67;
  v67(v65, &a4[OBJC_IVAR____TtC10ChronoCore22TimelineReloadStrategy_logger], v58);
  v238 = v51;
  v68 = *(v51 + 16);
  v221 = v51 + 16;
  v220 = v68;
  v68(v57, v240, v50);
  v229 = a5;
  swift_unknownObjectRetain();
  v231 = a7;

  v69 = sub_224DAB228();
  v70 = sub_224DAF2A8();
  v71 = os_log_type_enabled(v69, v70);
  v234 = v50;
  v219 = v58;
  if (v71)
  {
    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    aBlock = v73;
    *v72 = 136446210;
    sub_224A60144(&qword_281350E70, MEMORY[0x277CF98E0], MEMORY[0x277CF98F8]);
    v74 = sub_224DAFD28();
    v76 = v75;
    (*(v238 + 8))(v57, v50);
    v77 = sub_224A33F74(v74, v76, &aBlock);

    *(v72 + 4) = v77;
    _os_log_impl(&dword_224A2F000, v69, v70, "%{public}s reload: begin", v72, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v73);
    MEMORY[0x22AA5EED0](v73, -1, -1);
    MEMORY[0x22AA5EED0](v72, -1, -1);
  }

  else
  {

    (*(v238 + 8))(v57, v50);
  }

  v214 = *(v237 + 8);
  v214(v65, v58);
  v78 = swift_allocObject();
  sub_224DAD198();
  aBlock = 0;
  v266 = 0xE000000000000000;
  sub_224DAF938();

  aBlock = 0xD000000000000011;
  v266 = 0x8000000224DC7CA0;
  v79 = sub_224DABDB8();
  v80 = [v79 description];
  v81 = sub_224DAEE18();
  v83 = v82;

  MEMORY[0x22AA5D210](v81, v83);

  *(v78 + 16) = sub_224DAD188();
  v250 = *(v253 + 16);
  v84 = v263;
  if (!v250)
  {
    sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
    (*(v226 + 104))(v228, *MEMORY[0x277CE3C38], v227);
    aBlock = 0;
    v266 = 0xE000000000000000;
    sub_224DAF938();
    MEMORY[0x22AA5D210](0xD00000000000004ELL, 0x8000000224DC7CC0);
    sub_224A60144(&qword_281350E70, MEMORY[0x277CF98E0], MEMORY[0x277CF98F8]);
    v98 = sub_224DAFD28();
    MEMORY[0x22AA5D210](v98);

    MEMORY[0x22AA5D210](0x746E616972617620, 0xED00003A7379654BLL);
    v99 = MEMORY[0x22AA5D380](v236, v264);
    MEMORY[0x22AA5D210](v99);

    v100 = sub_224DAF638();
    [v229 invalidate];
    v230(v100, 1);

LABEL_19:

    return;
  }

  v85 = *(v253 + 24);
  v86 = swift_allocBox();
  v87 = *(v233 + 56);
  v209 = v88;
  v87(v88, 1, 1, v232);
  v246 = v85;

  v89 = sub_224DABDB8();
  v90 = *MEMORY[0x277CFA130];
  swift_beginAccess();
  sub_224A3796C(v89 + v90, v84, &unk_27D6F5060, &qword_224DB5620);

  v91 = v262;
  v92 = v260;
  v93 = (*(v262 + 48))(v84, 1, v260);
  v218 = v78;
  v217 = v86;
  if (v93 == 1)
  {
    sub_224A3311C(v84, &unk_27D6F5060, &qword_224DB5620);
    v261 = 0;
LABEL_7:
    v94 = v251;
    v95 = v248;
    v96 = v247;
    v97 = v249;
    goto LABEL_11;
  }

  (*(v91 + 32))(v259, v84, v92);
  v101 = sub_224DA9FE8();
  v103 = v102;
  v104 = objc_allocWithZone(MEMORY[0x277CC1E70]);
  v105 = sub_224A921B4(v101, v103, 0);
  v261 = 0;
  if (v105)
  {
    *&v263 = v105;
    if ([v105 developerType] == 1)
    {
      if (qword_2813507E8 != -1)
      {
        swift_once();
      }

      v141 = qword_281364CC0;
      v142 = v257;
      sub_224DAB1E8();
      v143 = v232;
      v87(v142, 0, 1, v232);
      v144 = v142;
      v145 = v209;
      sub_224A92290(v144, v209);
      LODWORD(v257) = sub_224DAF4B8();
      v146 = v258;
      sub_224A3796C(v145, v258, &qword_27D6F4270, &qword_224DB6580);
      v147 = v233;
      if ((*(v233 + 48))(v146, 1, v143) == 1)
      {

        swift_unknownObjectRelease();
        __break(1u);
        return;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4278, &unk_224DB79B0);
      v148 = swift_allocObject();
      *(v148 + 16) = xmmword_224DB3100;
      v149 = sub_224DABDB8();
      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
      v150 = sub_224DA9FE8();
      v152 = v151;
      *(v148 + 56) = MEMORY[0x277D837D0];
      *(v148 + 64) = sub_224A92300();
      *(v148 + 32) = v150;
      *(v148 + 40) = v152;
      swift_endAccess();

      sub_224DAB1D8(v257, &dword_224A2F000, v141, "MobileTimelineReload", 20, 2, v146, "enableTelemetry=YES Performing reload task. BundleIdOverride=%{public, signpost.description:attribute}@", 103, 2, v148);

      (*(v262 + 8))(v259, v260);
      (*(v147 + 8))(v146, v143);
    }

    else
    {
      (*(v91 + 8))(v259, v92);
    }

    goto LABEL_7;
  }

  v95 = v248;
  v96 = v247;
  v97 = v249;
  (*(v262 + 8))(v259, v92);
  v94 = v251;
LABEL_11:
  v106 = MEMORY[0x277D84F90];
  v272 = MEMORY[0x277D84F90];
  v107 = sub_224A92354(MEMORY[0x277D84F90]);
  v262 = sub_224A9253C(v106);
  v108 = *(v236 + 16);
  v109 = v264;
  *&v263 = v107;
  if (!v108)
  {
LABEL_18:
    sub_224DAE868();
    v100 = sub_224DAEFF8();

    v129 = v253;
    LODWORD(v264) = *(v253 + OBJC_IVAR____TtC10ChronoCore22TimelineReloadStrategy_isPreview);
    v130 = v223;
    v131 = v234;
    v220(v223, v240, v234);
    v132 = v238;
    v133 = (*(v238 + 80) + 40) & ~*(v238 + 80);
    v134 = (v222 + v133 + 7) & 0xFFFFFFFFFFFFFFF8;
    v135 = (v134 + 15) & 0xFFFFFFFFFFFFFFF8;
    v136 = swift_allocObject();
    v137 = v262;
    *(v136 + 2) = v263;
    *(v136 + 3) = v137;
    *(v136 + 4) = v129;
    (*(v132 + 32))(&v136[v133], v130, v131);
    *&v136[v134] = v217;
    v138 = &v136[v135];
    v139 = v235;
    *v138 = sub_224B7F144;
    v138[1] = v139;
    *&v136[(v135 + 23) & 0xFFFFFFFFFFFFFFF8] = v218;
    v269 = sub_224B7F194;
    v270 = v136;
    aBlock = MEMORY[0x277D85DD0];
    v266 = 1107296256;
    v267 = sub_224BC6D2C;
    v268 = &block_descriptor_14;
    v140 = _Block_copy(&aBlock);

    [v224 getTimelinesWithRequests:v100 isPreview:v264 completion:v140];
    sub_224A3D418(v250, v246);
    _Block_release(v140);

    goto LABEL_19;
  }

  v258 = *(v225 + 16);
  v257 = *(v225 + 72);
  v243 = (v255 + 48);
  v242 = (v255 + 32);
  v239 = (v255 + 16);
  v241 = (v255 + 8);
  v259 = (v225 + 16);
  v260 = (v225 + 8);
  v110 = v236 + ((*(v225 + 80) + 32) & ~*(v225 + 80));
  while (1)
  {
    v255 = v108;
    v111 = v109;
    (v258)(v94, v110);
    v112 = v245;
    v250(v94);
    if ((*v243)(v112, 1, v95) == 1)
    {

      sub_224A3311C(v112, &qword_27D6F4808, &unk_224DB7990);
      v153 = v210;
      sub_224A3796C(v209, v210, &qword_27D6F4270, &qword_224DB6580);
      v154 = v233;
      v155 = v232;
      if ((*(v233 + 48))(v153, 1, v232) == 1)
      {
        sub_224A3311C(v153, &qword_27D6F4270, &qword_224DB6580);
        v156 = v230;
        v157 = v229;
        v158 = v227;
        v159 = v226;
LABEL_52:
        sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
        (*(v159 + 104))(v228, *MEMORY[0x277CE3C38], v158);
        aBlock = 0;
        v266 = 0xE000000000000000;
        sub_224DAF938();
        MEMORY[0x22AA5D210](0xD000000000000055, 0x8000000224DC7D10);
        sub_224A60144(&qword_281350E70, MEMORY[0x277CF98E0], MEMORY[0x277CF98F8]);
        v204 = sub_224DAFD28();
        MEMORY[0x22AA5D210](v204);

        MEMORY[0x22AA5D210](0x746E616972617620, 0xED00003A7379654BLL);
        v205 = MEMORY[0x22AA5D380](v236, v111);
        MEMORY[0x22AA5D210](v205);

        v206 = sub_224DAF638();
        [v157 invalidate];
        (v156)(v206, 1);
        sub_224A3D418(v250, v246);

        (*v260)(v251, v111);

        goto LABEL_53;
      }

      (*(v154 + 32))(v97, v153, v155);
      v181 = sub_224DAF4A8();
      v156 = v230;
      v182 = v229;
      v158 = v227;
      v159 = v226;
      if (qword_2813507E8 == -1)
      {
LABEL_51:
        LOBYTE(v208) = 2;
        sub_224DAB1D8(v181, &dword_224A2F000, qword_281364CC0, "MobileTimelineReload", 20, 2, v97, "Reload failed.", 14, v208, MEMORY[0x277D84F90]);
        (*(v154 + 8))(v97, v155);
        v157 = v182;
        goto LABEL_52;
      }

LABEL_56:
      v207 = v181;
      swift_once();
      v181 = v207;
      v154 = v233;
      goto LABEL_51;
    }

    (*v242)(v96, v112, v95);
    v113 = v253;
    swift_getObjectType();
    v114 = v261;
    v115 = sub_224DAC438();
    v117 = v115;
    if (v114)
    {
      break;
    }

    v118 = v116;
    swift_getObjectType();
    swift_unknownObjectRetain();
    v119 = sub_224DABCE8();
    v261 = 0;
    swift_unknownObjectRelease();
    swift_unknownObjectRetain();
    v120 = v119;
    v121 = v262;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock = v121;
    v94 = v251;
    sub_224A94F74(v117, v118, v251, isUniquelyReferenced_nonNull_native);
    v262 = aBlock;
    sub_224DAE868();
    sub_224DAC248();
    v96 = v247;
    v123 = v248;
    (*v239)(v244, v247, v248);
    v124 = sub_224DAE858();
    MEMORY[0x22AA5D350]();
    v125 = v264;
    if (*((v272 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v272 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_224DAF038();
      v94 = v251;
    }

    sub_224DAF078();
    v126 = v124;
    v127 = v263;
    v128 = swift_isUniquelyReferenced_nonNull_native();
    aBlock = v127;
    sub_224A95624(v126, v94, v128);
    swift_unknownObjectRelease();

    *&v263 = aBlock;
    (*v241)(v96, v123);
    (*v260)(v94, v125);
    v110 += v257;
    v108 = v255 - 1;
    v95 = v123;
    v97 = v249;
    v109 = v125;
    if (v255 == 1)
    {
      goto LABEL_18;
    }
  }

  v243 = v115;

  v242 = 0;
  v244 = v114;
  v160 = v251;

  v161 = v215;
  v162 = v219;
  v212(v215, v113 + v211, v219);
  v163 = v216;
  (v258)(v216, v160, v111);
  v164 = v114;
  v165 = v111;
  v166 = sub_224DAB228();
  v167 = sub_224DAF288();

  v168 = os_log_type_enabled(v166, v167);
  v261 = v114;
  if (v168)
  {
    v169 = v114;
    v170 = swift_slowAlloc();
    *&v263 = swift_slowAlloc();
    v171 = swift_slowAlloc();
    aBlock = v171;
    *v170 = 136446466;
    sub_224A60144(&qword_281350E40, MEMORY[0x277CF9978], MEMORY[0x277CF99A0]);
    v172 = sub_224DAFD28();
    v174 = v173;
    v255 = *v260;
    (v255)(v163, v165);
    v175 = sub_224A33F74(v172, v174, &aBlock);

    *(v170 + 4) = v175;
    *(v170 + 12) = 2114;
    v176 = v169;
    v177 = _swift_stdlib_bridgeErrorToNSError();
    *(v170 + 14) = v177;
    v178 = v263;
    *v263 = v177;
    _os_log_impl(&dword_224A2F000, v166, v167, "%{public}s reload: could not create file handle because %{public}@", v170, 0x16u);
    sub_224A3311C(v178, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v178, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v171);
    MEMORY[0x22AA5EED0](v171, -1, -1);
    MEMORY[0x22AA5EED0](v170, -1, -1);

    v179 = v161;
    v180 = v219;
  }

  else
  {

    v255 = *v260;
    (v255)(v163, v165);
    v179 = v161;
    v180 = v162;
  }

  v181 = (v214)(v179, v180);
  v182 = v254;
  v183 = 0;
  v184 = *(v262 + 64);
  v245 = (v262 + 64);
  v185 = 1 << *(v262 + 32);
  v186 = -1;
  if (v185 < 64)
  {
    v186 = ~(-1 << v185);
  }

  v156 = v186 & v184;
  v159 = (v185 + 63) >> 6;
  v249 = (v225 + 32);
  v155 = &qword_27D6F4810;
  v253 = "MobileTimelineReload";
  v97 = v261;
  if ((v186 & v184) == 0)
  {
LABEL_35:
    if (v159 <= v183 + 1)
    {
      v188 = v183 + 1;
    }

    else
    {
      v188 = v159;
    }

    v189 = v188 - 1;
    v187 = v256;
    v111 = 0xD000000000000011;
    while (1)
    {
      v158 = v183 + 1;
      if (__OFADD__(v183, 1))
      {
        break;
      }

      if (v158 >= v159)
      {
        v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4810, &unk_224DB79A0);
        (*(*(v201 - 8) + 56))(v187, 1, 1, v201);
        v156 = 0;
        goto LABEL_43;
      }

      v156 = *&v245[8 * v158];
      ++v183;
      if (v156)
      {
        goto LABEL_42;
      }
    }

    __break(1u);
    goto LABEL_56;
  }

  while (1)
  {
    v158 = v183;
    v187 = v256;
LABEL_42:
    v190 = __clz(__rbit64(v156));
    v156 &= v156 - 1;
    v191 = v190 | (v158 << 6);
    v192 = v262;
    v193 = v252;
    v194 = v264;
    (v258)(v252, *(v262 + 48) + v191 * v257, v264);
    v195 = *(v192 + 56);
    v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4810, &unk_224DB79A0);
    v197 = *(v196 + 48);
    v198 = *v249;
    v263 = *(v195 + 16 * v191);
    v198(v187, v193, v194);
    *(v187 + v197) = v263;
    (*(*(v196 - 8) + 56))(v187, 0, 1, v196);
    swift_unknownObjectRetain();
    v189 = v158;
    v97 = v261;
    v182 = v254;
LABEL_43:
    sub_224A44E4C(v187, v182, &qword_27D6F4800, &qword_224DB7988);
    v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4810, &unk_224DB79A0);
    if ((*(*(v199 - 8) + 48))(v182, 1, v199) == 1)
    {
      break;
    }

    swift_getObjectType();
    aBlock = 0;
    v266 = 0xE000000000000000;
    sub_224DAF938();
    MEMORY[0x22AA5D210](0xD00000000000001FLL, v253 | 0x8000000000000000);
    v271 = v97;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5620, &unk_224DB3350);
    sub_224DAFA48();
    v200 = v264;
    v155 = &qword_27D6F4810;
    sub_224DABD08();

    swift_unknownObjectRelease();
    v181 = (v255)(v182, v200);
    v183 = v189;
    if (!v156)
    {
      goto LABEL_35;
    }
  }

  sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
  (*(v226 + 104))(v228, *MEMORY[0x277CE3C10], v227);
  v202 = v97;
  v203 = sub_224DAF638();
  [v229 invalidate];
  v230(v203, 1);
  sub_224A3D418(v250, v246);

  (*v241)(v247, v248);
  (v255)(v251, v264);

  if (!v244)
  {
    swift_unknownObjectRelease();
  }

LABEL_53:
}

uint64_t sub_224A92028()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_224A92068()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224A920A0()
{
  v1 = sub_224DABE18();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

id sub_224A921B4(uint64_t a1, uint64_t a2, char a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = sub_224DAEDE8();

  v10[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_224DA9528();

    swift_willThrow();
  }

  return v6;
}

uint64_t sub_224A92290(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4270, &qword_224DB6580);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_224A92300()
{
  result = qword_281350BF0;
  if (!qword_281350BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281350BF0);
  }

  return result;
}

unint64_t sub_224A92354(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F7108, &unk_224DC3CF0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3CC0, &qword_224DB4970);
    v8 = sub_224DAFBB8();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_224A3796C(v10, v6, &qword_27D6F7108, &unk_224DC3CF0);
      result = sub_224A61E5C(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_224DAC268();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_224A9253C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F70F8, &unk_224DC3CE0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F7100, &qword_224DB4978);
    v8 = sub_224DAFBB8();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_224A3796C(v10, v6, &qword_27D6F70F8, &unk_224DC3CE0);
      result = sub_224A61E5C(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_224DAC268();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 16 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_224A92724@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v239 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v225 = &v209[-v6];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F48C0, &qword_224DB8220);
  v226 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7 - 8, v8);
  v213 = &v209[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9, v11);
  v227 = &v209[-v12];
  v242 = sub_224DAB258();
  *&v256 = *(v242 - 8);
  v14 = MEMORY[0x28223BE20](v242, v13);
  v224 = &v209[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = MEMORY[0x28223BE20](v14, v16);
  v212 = &v209[-v18];
  v20 = MEMORY[0x28223BE20](v17, v19);
  v236 = &v209[-v21];
  MEMORY[0x28223BE20](v20, v22);
  v233 = &v209[-v23];
  v241 = sub_224DAD158();
  v252 = *(v241 - 8);
  MEMORY[0x28223BE20](v241, v24);
  v229 = &v209[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v238 = sub_224DAE4F8();
  v237 = *(v238 - 8);
  MEMORY[0x28223BE20](v238, v26);
  v240 = &v209[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28 = sub_224DAE478();
  MEMORY[0x28223BE20](v28 - 8, v29);
  v250 = &v209[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v244 = sub_224DAB728();
  v243 = *(v244 - 8);
  v32 = MEMORY[0x28223BE20](v244, v31);
  v247 = &v209[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v32, v34);
  v36 = &v209[-v35];
  v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5238, &qword_224DBB1E0);
  v38 = MEMORY[0x28223BE20](v220, v37);
  v223 = &v209[-((v39 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v41 = MEMORY[0x28223BE20](v38, v40);
  v222 = &v209[-v42];
  v44 = MEMORY[0x28223BE20](v41, v43);
  v221 = &v209[-v45];
  v47 = MEMORY[0x28223BE20](v44, v46);
  v235 = &v209[-v48];
  v50 = MEMORY[0x28223BE20](v47, v49);
  v232 = &v209[-v51];
  v53 = MEMORY[0x28223BE20](v50, v52);
  v230 = &v209[-v54];
  MEMORY[0x28223BE20](v53, v55);
  v255 = &v209[-v56];
  v57 = sub_224DAC268();
  v58 = *(v57 - 8);
  v60 = MEMORY[0x28223BE20](v57, v59);
  v219 = &v209[-((v61 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v63 = MEMORY[0x28223BE20](v60, v62);
  v211 = &v209[-v64];
  v66 = MEMORY[0x28223BE20](v63, v65);
  v234 = &v209[-v67];
  v69 = MEMORY[0x28223BE20](v66, v68);
  v231 = &v209[-v70];
  MEMORY[0x28223BE20](v69, v71);
  v73 = &v209[-v72];
  v74 = sub_224DABE18();
  v75 = *(v74 - 8);
  MEMORY[0x28223BE20](v74, v76);
  v78 = &v209[-((v77 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v253 = *(v58 + 16);
  v254 = v58 + 16;
  (v253)(v73, a1, v57);
  sub_224DABD88();
  sub_224DAC178();
  if (!v258[0])
  {
    (*(v75 + 8))(v78, v74);
    return (*(v237 + 56))(v239, 1, 1, v238);
  }

  v215 = v78;
  v216 = v75;
  v217 = v74;
  v245 = v2;
  v79 = v258[0];

  v80 = v255;
  v251 = a1;
  sub_224DADDE8();

  sub_224DABE38();
  __swift_project_boxed_opaque_existential_1(v258, v258[3]);
  sub_224DAD168();
  __swift_destroy_boxed_opaque_existential_1(v258);
  sub_224DABE58();
  v81 = sub_224DAC248();
  v82 = *(v58 + 8);
  v82(v73, v57);
  [v81 family];

  sub_224DAE488();
  sub_224DAB5F8();
  v214 = v79;
  sub_224DABE58();
  sub_224DAC258();
  v250 = v57;
  v248 = v82;
  v82(v73, v57);
  sub_224DAB628();
  (*(v243 + 16))(v247, v36, v244);
  sub_224DAE4D8();
  v83 = v230;
  sub_224A3796C(v80, v230, &qword_27D6F5238, &qword_224DBB1E0);
  v84 = v252;
  v85 = v241;
  v246 = *(v252 + 48);
  v247 = (v252 + 48);
  v86 = v246(v83, 1, v241);
  v218 = v36;
  v87 = v80;
  v249 = v58 + 8;
  if (v86 == 1)
  {
    sub_224A3311C(v83, &qword_27D6F5238, &qword_224DBB1E0);
    swift_getKeyPath();
    sub_224DAB518();
    sub_224DAE4B8();
    swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3AF0, &qword_224DB3D80);
    sub_224DAE588();
    *(swift_allocObject() + 16) = xmmword_224DB3100;
    sub_224DAE578();
    sub_224DAE4B8();
    swift_getKeyPath();
    sub_224DAE748();
    sub_224DAE4B8();
  }

  else
  {
    v89 = v229;
    (*(v84 + 32))(v229, v83, v85);
    swift_getKeyPath();
    sub_224DAD038();
    sub_224DAE4B8();
    swift_getKeyPath();
    v90 = sub_224DAD0B8();
    sub_224A947BC(v90);

    sub_224DAE4B8();
    swift_getKeyPath();
    v91 = sub_224DAD128();
    sub_224D79164(v91);

    sub_224DAE4B8();
    swift_getKeyPath();
    sub_224DAD058();
    sub_224DAF548();
    sub_224DAE4B8();
    (*(v84 + 8))(v89, v85);
  }

  v92 = v256;
  v93 = v233;
  v94 = *(v256 + 16);
  v228 = OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_logger;
  v95 = v242;
  v230 = (v256 + 16);
  v229 = v94;
  (v94)(v233, v245 + OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_logger, v242);
  v96 = v231;
  v97 = v250;
  v98 = v251;
  v253(v231);
  v99 = v232;
  sub_224A3796C(v80, v232, &qword_27D6F5238, &qword_224DBB1E0);
  v100 = sub_224DAB228();
  v210 = sub_224DAF278();
  if (os_log_type_enabled(v100, v210))
  {
    v101 = swift_slowAlloc();
    v102 = swift_slowAlloc();
    v257 = v102;
    *v101 = 136446722;
    swift_getKeyPath();
    swift_beginAccess();
    v103 = sub_224DAE4A8();
    if (v103)
    {
      v104 = v103;
      swift_endAccess();

      v105 = sub_224DAB528();
      v106 = MEMORY[0x22AA5D380](v104, v105);
      v108 = v107;
    }

    else
    {
      v106 = 7104878;
      swift_endAccess();

      v108 = 0xE300000000000000;
    }

    v111 = v232;
    v112 = v231;
    v113 = sub_224A33F74(v106, v108, &v257);

    *(v101 + 4) = v113;
    *(v101 + 12) = 2082;
    sub_224A94F2C(&qword_281350E40, MEMORY[0x277CF9978], MEMORY[0x277CF99A0]);
    v97 = v250;
    v114 = sub_224DAFD28();
    v116 = v115;
    v248(v112, v97);
    v117 = sub_224A33F74(v114, v116, &v257);

    *(v101 + 14) = v117;
    *(v101 + 22) = 2082;
    v118 = sub_224DAF708();
    v120 = v119;
    sub_224A3311C(v111, &qword_27D6F5238, &qword_224DBB1E0);
    v121 = sub_224A33F74(v118, v120, &v257);

    *(v101 + 24) = v121;
    _os_log_impl(&dword_224A2F000, v100, v210, "Using color scheme(s): %{public}s for key: %{public}s, modifiers: %{public}s", v101, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v102, -1, -1);
    MEMORY[0x22AA5EED0](v101, -1, -1);

    v122 = v233;
    v95 = v242;
    v233 = *(v256 + 8);
    (v233)(v122, v242);
    v110 = v245;
    v87 = v255;
    v109 = v251;
  }

  else
  {

    sub_224A3311C(v99, &qword_27D6F5238, &qword_224DBB1E0);
    v248(v96, v97);
    v233 = *(v92 + 8);
    (v233)(v93, v95);
    v109 = v98;
    v110 = v245;
  }

  v123 = v236;
  (v229)(v236, v110 + v228, v95);
  v124 = v234;
  (v253)(v234, v109, v97);
  v125 = v235;
  sub_224A3796C(v87, v235, &qword_27D6F5238, &qword_224DBB1E0);
  v126 = sub_224DAB228();
  v127 = sub_224DAF278();
  if (os_log_type_enabled(v126, v127))
  {
    v128 = swift_slowAlloc();
    v129 = swift_slowAlloc();
    v257 = v129;
    *v128 = 136446722;
    swift_getKeyPath();
    v130 = v240;
    swift_beginAccess();
    v131 = sub_224DAE4A8();
    if (v131)
    {
      v132 = v131;
      swift_endAccess();

      v133 = sub_224DAE588();
      v134 = MEMORY[0x22AA5D380](v132, v133);
      v136 = v135;
    }

    else
    {
      v134 = 7104878;
      swift_endAccess();

      v136 = 0xE300000000000000;
    }

    v139 = v234;
    v140 = sub_224A33F74(v134, v136, &v257);

    *(v128 + 4) = v140;
    *(v128 + 12) = 2082;
    sub_224A94F2C(&qword_281350E40, MEMORY[0x277CF9978], MEMORY[0x277CF99A0]);
    v141 = v250;
    v142 = sub_224DAFD28();
    v144 = v143;
    v248(v139, v141);
    v145 = sub_224A33F74(v142, v144, &v257);

    *(v128 + 14) = v145;
    *(v128 + 22) = 2082;
    v146 = v235;
    v147 = sub_224DAF708();
    v149 = v148;
    sub_224A3311C(v146, &qword_27D6F5238, &qword_224DBB1E0);
    v150 = sub_224A33F74(v147, v149, &v257);

    *(v128 + 24) = v150;
    _os_log_impl(&dword_224A2F000, v126, v127, "Using rendering schemes(s): %{public}s for key: %{public}s, modifiers: %{public}s", v128, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v129, -1, -1);
    MEMORY[0x22AA5EED0](v128, -1, -1);

    v138 = v242;
    (v233)(v236, v242);
    v110 = v245;
    v87 = v255;
    v137 = v251;
  }

  else
  {
    v137 = v109;

    sub_224A3311C(v125, &qword_27D6F5238, &qword_224DBB1E0);
    v248(v124, v97);
    (v233)(v123, v95);
    v138 = v95;
    v130 = v240;
  }

  v151 = v221;
  swift_getKeyPath();
  sub_224A3796C(v87, v151, &qword_27D6F5238, &qword_224DBB1E0);
  v152 = v241;
  if (v246(v151, 1, v241) == 1)
  {
    sub_224A3311C(v151, &qword_27D6F5238, &qword_224DBB1E0);
  }

  else
  {
    sub_224DAD0F8();
    (*(v252 + 8))(v151, v152);
  }

  swift_beginAccess();
  sub_224DAE4B8();
  swift_endAccess();
  swift_getKeyPath();
  v153 = v222;
  sub_224A3796C(v87, v222, &qword_27D6F5238, &qword_224DBB1E0);
  if (v246(v153, 1, v152) == 1)
  {
    sub_224A3311C(v153, &qword_27D6F5238, &qword_224DBB1E0);
  }

  else
  {
    sub_224DAD018();
    (*(v252 + 8))(v153, v152);
  }

  swift_beginAccess();
  sub_224DAE4B8();
  swift_endAccess();
  v154 = v223;
  sub_224A3796C(v87, v223, &qword_27D6F5238, &qword_224DBB1E0);
  if (v246(v154, 1, v152) == 1)
  {
    sub_224A3311C(v154, &qword_27D6F5238, &qword_224DBB1E0);
    v155 = v224;
LABEL_29:
    (v229)(v155, v110 + v228, v138);
    v173 = v219;
    v174 = v250;
    (v253)(v219, v137, v250);
    v175 = sub_224DAB228();
    v176 = sub_224DAF278();
    if (os_log_type_enabled(v175, v176))
    {
      v177 = v155;
      v178 = v138;
      v179 = swift_slowAlloc();
      v180 = swift_slowAlloc();
      v258[0] = v180;
      *v179 = 136446210;
      sub_224A94F2C(&qword_281350E40, MEMORY[0x277CF9978], MEMORY[0x277CF99A0]);
      v181 = sub_224DAFD28();
      v182 = v174;
      v184 = v183;
      v248(v173, v182);
      v185 = sub_224A33F74(v181, v184, v258);

      *(v179 + 4) = v185;
      __swift_destroy_boxed_opaque_existential_1(v180);
      MEMORY[0x22AA5EED0](v180, -1, -1);
      MEMORY[0x22AA5EED0](v179, -1, -1);

      v186 = v177;
      v187 = v178;
    }

    else
    {

      v248(v173, v174);
      v186 = v155;
      v187 = v138;
    }

    (v233)(v186, v187);
    swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4CB0, &qword_224DBCF60);
    sub_224DAB558();
    *(swift_allocObject() + 16) = xmmword_224DB3100;
    v258[0] = MEMORY[0x277D84F90];
    sub_224A94F2C(&qword_281350ED8, MEMORY[0x277CDFB98], MEMORY[0x277CDFBA8]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4CB8, &qword_224DBA500);
    sub_224A33088(&qword_281350BB8, &qword_27D6F4CB8, &qword_224DBA500, MEMORY[0x277D83970]);
    sub_224DAF788();
    swift_beginAccess();
    goto LABEL_35;
  }

  v156 = sub_224DACFE8();
  (*(v252 + 8))(v154, v152);
  v155 = v224;
  if ((v156 & 1) == 0)
  {
    goto LABEL_29;
  }

  v157 = v212;
  (v229)(v212, v110 + v228, v138);
  v158 = v211;
  v159 = v250;
  (v253)(v211, v137, v250);
  v160 = sub_224DAB228();
  v161 = sub_224DAF278();
  if (os_log_type_enabled(v160, v161))
  {
    v162 = v157;
    v163 = v138;
    v164 = swift_slowAlloc();
    v165 = swift_slowAlloc();
    v258[0] = v165;
    *v164 = 136446210;
    sub_224A94F2C(&qword_281350E40, MEMORY[0x277CF9978], MEMORY[0x277CF99A0]);
    v166 = sub_224DAFD28();
    v167 = v159;
    v169 = v168;
    v248(v158, v167);
    v170 = sub_224A33F74(v166, v169, v258);

    *(v164 + 4) = v170;
    __swift_destroy_boxed_opaque_existential_1(v165);
    MEMORY[0x22AA5EED0](v165, -1, -1);
    MEMORY[0x22AA5EED0](v164, -1, -1);

    v171 = v162;
    v172 = v163;
  }

  else
  {

    v248(v158, v159);
    v171 = v157;
    v172 = v138;
  }

  (v233)(v171, v172);
  *&v256 = swift_getKeyPath();
  v254 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4CB0, &qword_224DBCF60);
  v188 = *(sub_224DAB558() - 8);
  v189 = (*(v188 + 80) + 32) & ~*(v188 + 80);
  v190 = swift_allocObject();
  *(v190 + 16) = xmmword_224DB30F0;
  v253 = (v190 + v189);
  v258[0] = MEMORY[0x277D84F90];
  sub_224A94F2C(&qword_281350ED8, MEMORY[0x277CDFB98], MEMORY[0x277CDFBA8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4CB8, &qword_224DBA500);
  sub_224A33088(&qword_281350BB8, &qword_27D6F4CB8, &qword_224DBA500, MEMORY[0x277D83970]);
  sub_224DAF788();
  v191 = swift_allocObject();
  *(v191 + 16) = xmmword_224DB3100;
  sub_224DAB548();
  v258[0] = v191;
  sub_224DAF788();
  swift_beginAccess();
LABEL_35:
  sub_224DAE4B8();
  swift_endAccess();
  v192 = v238;
  v193 = v227;
  sub_224DAE7B8();
  v194 = sub_224DAE7C8();
  (*(*(v194 - 8) + 56))(v193, 0, 1, v194);
  v195 = v225;
  sub_224DAC218();
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v197 = *(v196 - 8);
  if ((*(v197 + 48))(v195, 1, v196) == 1)
  {
    sub_224A3311C(v195, &qword_27D6F56C0, &unk_224DB3580);
LABEL_39:
    v201 = 0;
    goto LABEL_40;
  }

  sub_224DAA1F8();
  v199 = v198;
  (*(v197 + 8))(v195, v196);
  if (!v199)
  {
    goto LABEL_39;
  }

  __swift_project_boxed_opaque_existential_1((v245 + OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_archiveVersionProvider), *(v245 + OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_archiveVersionProvider + 24));
  v200 = v213;
  sub_224DAD4E8();

  sub_224A3311C(v193, &qword_27D6F48C0, &qword_224DB8220);
  sub_224A44E4C(v200, v193, &qword_27D6F48C0, &qword_224DB8220);
  v201 = 1;
LABEL_40:
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4CC0, &qword_224DBFAC0);
  v202 = swift_allocObject();
  v256 = xmmword_224DB3100;
  *(v202 + 16) = xmmword_224DB3100;
  *(v202 + 32) = v201;
  swift_beginAccess();
  sub_224DAE4B8();
  swift_getKeyPath();
  v203 = swift_allocObject();
  *(v203 + 16) = v256;
  *(v203 + 32) = v201;
  sub_224DAE4B8();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4CC8, &qword_224DBA5D0);
  v204 = (*(v226 + 80) + 32) & ~*(v226 + 80);
  v205 = swift_allocObject();
  *(v205 + 16) = v256;
  sub_224A3796C(v193, v205 + v204, &qword_27D6F48C0, &qword_224DB8220);
  sub_224DAE4B8();
  swift_getKeyPath();
  v206 = swift_allocObject();
  *(v206 + 16) = v256;
  *(v206 + 32) = v201;
  sub_224DAE4B8();
  swift_endAccess();

  sub_224A3311C(v193, &qword_27D6F48C0, &qword_224DB8220);
  (*(v243 + 8))(v218, v244);
  sub_224A3311C(v255, &qword_27D6F5238, &qword_224DBB1E0);
  (*(v216 + 8))(v215, v217);
  v207 = v237;
  v208 = v239;
  (*(v237 + 16))(v239, v130, v192);
  (*(v207 + 56))(v208, 0, 1, v192);
  return (*(v207 + 8))(v130, v192);
}

uint64_t sub_224A947BC(uint64_t a1)
{
  v32 = sub_224DAE588();
  v3 = *(v32 - 8);
  MEMORY[0x28223BE20](v32, v4);
  v6 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x277D84F90];
  if (!v7)
  {
    return v8;
  }

  v30[1] = v1;
  v41 = MEMORY[0x277D84F90];
  sub_224A94CBC(0, v7, 0);
  v8 = v41;
  v40 = a1 + 56;
  result = sub_224DAF798();
  v10 = result;
  v11 = 0;
  v35 = v3 + 32;
  v36 = v3 + 16;
  v31 = a1 + 64;
  v12 = v32;
  v33 = v7;
  v34 = a1;
  while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
  {
    v14 = v10 >> 6;
    if ((*(v40 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
    {
      goto LABEL_22;
    }

    v37 = v11;
    v39 = *(a1 + 36);
    v15 = *(v3 + 72);
    (*(v3 + 16))(v6, *(a1 + 48) + v15 * v10, v12);
    v41 = v8;
    v16 = v12;
    v18 = *(v8 + 16);
    v17 = *(v8 + 24);
    v19 = v18 + 1;
    if (v18 >= v17 >> 1)
    {
      v38 = v18 + 1;
      sub_224A94CBC((v17 > 1), v18 + 1, 1);
      v19 = v38;
      v8 = v41;
    }

    *(v8 + 16) = v19;
    v20 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v38 = v8;
    v21 = v8 + v20 + v18 * v15;
    v22 = v3;
    result = (*(v3 + 32))(v21, v6, v16);
    v13 = 1 << *(v34 + 32);
    if (v10 >= v13)
    {
      goto LABEL_23;
    }

    v23 = *(v40 + 8 * v14);
    if ((v23 & (1 << v10)) == 0)
    {
      goto LABEL_24;
    }

    v12 = v16;
    a1 = v34;
    if (v39 != *(v34 + 36))
    {
      goto LABEL_25;
    }

    v24 = v23 & (-2 << (v10 & 0x3F));
    if (v24)
    {
      v13 = __clz(__rbit64(v24)) | v10 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v25 = v14 << 6;
      v26 = v14 + 1;
      v27 = (v31 + 8 * v14);
      while (v26 < (v13 + 63) >> 6)
      {
        v29 = *v27++;
        v28 = v29;
        v25 += 64;
        ++v26;
        if (v29)
        {
          result = sub_224A3E204(v10, v39, 0);
          v13 = __clz(__rbit64(v28)) + v25;
          goto LABEL_19;
        }
      }

      result = sub_224A3E204(v10, v39, 0);
LABEL_19:
      v12 = v32;
    }

    v11 = v37 + 1;
    v10 = v13;
    v3 = v22;
    v8 = v38;
    if (v37 + 1 == v33)
    {
      return v8;
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
  return result;
}

void *sub_224A94AE0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_224A94CBC(void *a1, int64_t a2, char a3)
{
  result = sub_224A94AE0(a1, a2, a3, *v3, &qword_27D6F3AF0, &qword_224DB3D80, MEMORY[0x277CE3AD8]);
  *v3 = result;
  return result;
}

void sub_224A94D14(unint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t *a5, void *a6)
{
  v10 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v11 = a4;
      }

      else
      {
        v11 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x22AA5DBD0](a1, a2, v11);
      sub_224A3B79C(0, a5, a6);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_224A3B79C(0, a5, a6);
    if (sub_224DAF818() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_224DAF828();
    swift_dynamicCast();
    v6 = v19;
    v12 = sub_224DAF698();
    v13 = -1 << *(a4 + 32);
    v10 = v12 & ~v13;
    if ((*(a4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
    {
      v14 = ~v13;
      do
      {
        v15 = *(*(a4 + 48) + 8 * v10);
        v16 = sub_224DAF6A8();

        if (v16)
        {
          goto LABEL_19;
        }

        v10 = (v10 + 1) & v14;
      }

      while (((*(a4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    __break(1u);
  }

  if ((v10 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v10)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v10 >> 6) + 56) >> v10) & 1) == 0)
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

  v17 = *(*(a4 + 48) + 8 * v10);

  v18 = v17;
}

uint64_t sub_224A94F2C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_224A94F74(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v29 = a1;
  v9 = sub_224DAC268();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v4;
  v16 = sub_224A61E5C(a3);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = v14[3];
  if (v21 < v19 || (a4 & 1) == 0)
  {
    if (v21 >= v19 && (a4 & 1) == 0)
    {
      sub_224B26F48(MEMORY[0x277CF9978], &qword_27D6F7100, &qword_224DB4978);
      goto LABEL_9;
    }

    sub_224A95188(v19, a4 & 1);
    v22 = sub_224A61E5C(a3);
    if ((v20 & 1) == (v23 & 1))
    {
      v16 = v22;
      goto LABEL_9;
    }

LABEL_15:
    result = sub_224DAFDD8();
    __break(1u);
    return result;
  }

LABEL_9:
  v24 = v29;
  v25 = *v5;
  if (v20)
  {
    v26 = (v25[7] + 16 * v16);
    *v26 = v29;
    v26[1] = a2;

    return swift_unknownObjectRelease();
  }

  else
  {
    (*(v10 + 16))(v13, a3, v9);
    return sub_224A95560(v16, v13, v24, a2, v25, MEMORY[0x277CF9978]);
  }
}

void sub_224A95188(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_224DAC268();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F7100, &qword_224DB4978);
  v40 = v4;
  v11 = sub_224DAFB98();
  v12 = v11;
  if (*(v10 + 16))
  {
    v44 = v9;
    v45 = v5;
    v36 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v6;
    v41 = (v6 + 32);
    v19 = v11 + 64;
    v39 = v10;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v43 = *(v6 + 72);
      v26 = v25 + v43 * v24;
      if (v40)
      {
        (*v41)(v44, v26, v45);
        v42 = *(*(v10 + 56) + 16 * v24);
      }

      else
      {
        (*v37)(v44, v26, v45);
        v42 = *(*(v10 + 56) + 16 * v24);
        swift_unknownObjectRetain();
      }

      sub_224A439BC(&qword_281350E50, MEMORY[0x277CF9978], MEMORY[0x277CF9988]);
      v27 = sub_224DAED88();
      v28 = -1 << *(v12 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v19 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        v6 = v38;
        v10 = v39;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v19 + 8 * v30);
          if (v34 != -1)
          {
            v20 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v20 = __clz(__rbit64((-1 << v29) & ~*(v19 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
      v6 = v38;
      v10 = v39;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v41)((*(v12 + 48) + v43 * v20), v44, v45);
      *(*(v12 + 56) + 16 * v20) = v42;
      ++*(v12 + 16);
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v10 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v14, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v35;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
}

uint64_t sub_224A95560(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(void))
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v11 = a5[6];
  v12 = a6(0);
  result = (*(*(v12 - 8) + 32))(v11 + *(*(v12 - 8) + 72) * a1, a2, v12);
  v14 = (a5[7] + 16 * a1);
  *v14 = a3;
  v14[1] = a4;
  v15 = a5[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v17;
  }

  return result;
}

void sub_224A95624(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_224DAC268();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_224A61E5C(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_224B2832C(MEMORY[0x277CF9978], &qword_27D6F3CC0, &qword_224DB4970);
      goto LABEL_7;
    }

    sub_224A95828(v18, a3 & 1);
    v24 = sub_224A61E5C(a2);
    if ((v19 & 1) == (v25 & 1))
    {
      v15 = v24;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      sub_224A43AD8(v15, v12, a1, v21, MEMORY[0x277CF9978]);
      return;
    }

LABEL_15:
    sub_224DAFDD8();
    __break(1u);
    return;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = *(v22 + 8 * v15);
  *(v22 + 8 * v15) = a1;
}

void sub_224A95828(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_224DAC268();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3CC0, &qword_224DB4970);
  v41 = v4;
  v11 = sub_224DAFB98();
  v12 = v11;
  if (*(v10 + 16))
  {
    v45 = v9;
    v37 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v38 = (v6 + 16);
    v39 = v10;
    v40 = v6;
    v42 = (v6 + 32);
    v19 = v11 + 64;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v44 = *(v40 + 72);
      v26 = v25 + v44 * v24;
      if (v41)
      {
        (*v42)(v45, v26, v5);
        v43 = *(*(v10 + 56) + 8 * v24);
      }

      else
      {
        (*v38)(v45, v26, v5);
        v43 = *(*(v10 + 56) + 8 * v24);
      }

      sub_224A439BC(&qword_281350E50, MEMORY[0x277CF9978], MEMORY[0x277CF9988]);
      v27 = sub_224DAED88();
      v28 = -1 << *(v12 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v19 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v19 + 8 * v30);
          if (v34 != -1)
          {
            v20 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v20 = __clz(__rbit64((-1 << v29) & ~*(v19 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v42)((*(v12 + 48) + v44 * v20), v45, v5);
      *(*(v12 + 56) + 8 * v20) = v43;
      ++*(v12 + 16);
      v10 = v39;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v35 = 1 << *(v10 + 32);
    v3 = v37;
    if (v35 >= 64)
    {
      bzero(v14, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v35;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
}

void sub_224A95C1C(void *a1, uint64_t a2, uint64_t isEscapingClosureAtFileLocation)
{
  v4 = v3;
  if ((sub_224DAF518() & 1) == 0)
  {
    goto LABEL_5;
  }

  if ([a1 isRemote])
  {
    v8 = *(v4 + 56);
    v9 = swift_allocObject();
    v9[2] = a1;
    v9[3] = a2;
    v9[4] = isEscapingClosureAtFileLocation;
    v9[5] = v4;
    a2 = swift_allocObject();
    *(a2 + 16) = sub_224D9EC68;
    *(a2 + 24) = v9;
    v33 = sub_224BC4B74;
    v34 = a2;
    aBlock = MEMORY[0x277D85DD0];
    v30 = 1107296256;
    v31 = sub_224A9B6F8;
    v32 = &block_descriptor_75;
    v10 = _Block_copy(&aBlock);
    v11 = a1;

    dispatch_sync(v8, v10);
    _Block_release(v10);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
LABEL_5:
    if (qword_2813516C8 != -1)
    {
      swift_once();
    }

    v12 = sub_224DAB258();
    __swift_project_value_buffer(v12, qword_281365120);
    v13 = a1;

    oslog = sub_224DAB228();
    v14 = sub_224DAF2A8();

    if (os_log_type_enabled(oslog, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v35 = v16;
      *v15 = 136446210;
      aBlock = v13;
      v30 = a2;
      v31 = isEscapingClosureAtFileLocation;
      v17 = v13;

      v18 = sub_224DAEE28();
      v20 = sub_224A33F74(v18, v19, &v35);

      *(v15 + 4) = v20;
      v21 = "Ignoring staleness of timeline key without container: %{public}s";
LABEL_13:
      _os_log_impl(&dword_224A2F000, oslog, v14, v21, v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x22AA5EED0](v16, -1, -1);
      MEMORY[0x22AA5EED0](v15, -1, -1);

      return;
    }

    goto LABEL_15;
  }

  if (qword_2813516C8 != -1)
  {
    swift_once();
  }

  v22 = sub_224DAB258();
  __swift_project_value_buffer(v22, qword_281365120);
  v23 = a1;

  oslog = sub_224DAB228();
  v14 = sub_224DAF2A8();

  if (os_log_type_enabled(oslog, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v35 = v16;
    *v15 = 136446210;
    aBlock = v23;
    v30 = a2;
    v31 = isEscapingClosureAtFileLocation;
    v24 = v23;

    v25 = sub_224DAEE28();
    v27 = sub_224A33F74(v25, v26, &v35);

    *(v15 + 4) = v27;
    v21 = "Ignoring staleness of local timeline key: %{public}s";
    goto LABEL_13;
  }

LABEL_15:
}

uint64_t sub_224A96048()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_224A96094(void *a1)
{
  v3 = *(v1 + 32);
  os_unfair_lock_lock(*(v3 + 16));
  v4 = sub_224A8B1DC(v7);
  if (*v5)
  {
  }

  (v4)(v7, 0);
  os_unfair_lock_unlock(*(v3 + 16));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4A10, &unk_224DB4000);
  sub_224A8CEE8(&qword_281350EF0, MEMORY[0x277CBCE18]);
  return sub_224DAB398();
}

double sub_224A961A8(uint64_t a1)
{
  if (qword_281351498 != -1)
  {
    swift_once();
  }

  v1 = sub_224DAB258();
  __swift_project_value_buffer(v1, qword_281364E20);
  v2 = sub_224DAB228();
  v3 = sub_224DAF2A8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_224A2F000, v2, v3, "Scheduled work did change.", v4, 2u);
    MEMORY[0x22AA5EED0](v4, -1, -1);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_224A962BC();
  }

  return result;
}

double sub_224A962BC()
{
  os_unfair_lock_assert_not_owner(*(*(v0 + 80) + 16));
  v1 = *(v0 + 80);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  sub_224A9634C(v0);
  os_unfair_lock_unlock(*(v1 + 16));

  return result;
}

uint64_t sub_224A9634C(uint64_t a1)
{
  v2 = sub_224DA9878();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v40 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v7);
  v41 = &v40 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4CF8, &unk_224DBA818);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v40 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
  v16 = MEMORY[0x28223BE20](v14 - 8, v15);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v40 - v20;
  v22 = type metadata accessor for WorkSourceDates(0);
  v23 = v22 - 8;
  MEMORY[0x28223BE20](v22, v24);
  v26 = &v40 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = a1;
  sub_224A96808(v26);
  v27 = *(v23 + 28);
  v28 = *(v10 + 56);
  sub_224A4FD50(v26, v13);
  v42 = v27;
  sub_224A4FD50(&v26[v27], &v13[v28]);
  v29 = *(v3 + 48);
  if (v29(v13, 1, v2) == 1)
  {
    if (v29(&v13[v28], 1, v2) == 1)
    {
      (*(v3 + 56))(v21, 1, 1, v2);
    }

    else
    {
      (*(v3 + 32))(v21, &v13[v28], v2);
      (*(v3 + 56))(v21, 0, 1, v2);
    }

    v32 = 0;
  }

  else
  {
    sub_224A4FD50(v13, v18);
    v30 = v29(&v13[v28], 1, v2);
    v31 = *(v3 + 32);
    if (v30 == 1)
    {
      (v31)(v21, v18, v2);
      v32 = 1;
      (*(v3 + 56))(v21, 0, 1, v2);
      sub_224A3311C(&v13[v28], &qword_27D6F32B0, &qword_224DB3EA0);
    }

    else
    {
      (v31)(v41, v18, v2);
      v33 = v40;
      v31();
      sub_224AA686C(&qword_281351A40, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
      v34 = v33;
      v35 = v41;
      if (sub_224DAEDB8())
      {
        v36 = v34;
      }

      else
      {
        v36 = v35;
      }

      v37 = v35;
      (*(v3 + 16))(v21, v36, v2);
      (*(v3 + 56))(v21, 0, 1, v2);
      v32 = sub_224DA9798();
      v38 = *(v3 + 8);
      v38(v34, v2);
      v38(v37, v2);
    }
  }

  sub_224A3311C(v13, &qword_27D6F32B0, &qword_224DB3EA0);
  sub_224A99480(v21);
  sub_224A99F50(&v26[v42]);
  sub_224A9BE24(v32 & 1);
  sub_224A3311C(v21, &qword_27D6F32B0, &qword_224DB3EA0);
  return sub_224A980D8(v26);
}

uint64_t sub_224A96808@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4D00, &unk_224DBA828);
  v4 = MEMORY[0x28223BE20](v2, v3);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v37 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
  v12 = MEMORY[0x28223BE20](v10 - 8, v11);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v12, v15);
  v18 = &v37 - v17;
  v20 = MEMORY[0x28223BE20](v16, v19);
  v37 = &v37 - v21;
  MEMORY[0x28223BE20](v20, v22);
  v24 = &v37 - v23;
  v25 = *(v1 + 24);
  v26 = sub_224DA9878();
  v27 = *(*(v26 - 8) + 56);
  v27(v18, 1, 1, v26);
  v27(v14, 1, 1, v26);
  v28 = *(v2 + 48);
  sub_224A44E4C(v18, v6, &qword_27D6F32B0, &qword_224DB3EA0);
  sub_224A44E4C(v14, &v6[v28], &qword_27D6F32B0, &qword_224DB3EA0);
  v29 = *(v25 + 16);
  if (v29)
  {
    v30 = 0;
    v31 = v25 + 32;
    while (v30 < *(v25 + 16))
    {
      sub_224A3317C(v31, v39);
      sub_224A96B80(v6, v39);
      ++v30;
      __swift_destroy_boxed_opaque_existential_1(v39);
      v31 += 40;
      if (v29 == v30)
      {
        goto LABEL_5;
      }
    }

    __break(1u);

    __swift_destroy_boxed_opaque_existential_1(v39);
    result = sub_224A3311C(v6, &qword_27D6F4D00, &unk_224DBA828);
    __break(1u);
  }

  else
  {
LABEL_5:
    sub_224A44E4C(v6, v9, &qword_27D6F4D00, &unk_224DBA828);
    v32 = *(v2 + 48);
    sub_224A44E4C(v9, v24, &qword_27D6F32B0, &qword_224DB3EA0);
    v33 = v37;
    sub_224A44E4C(&v9[v32], v37, &qword_27D6F32B0, &qword_224DB3EA0);
    v34 = v38;
    sub_224A44E4C(v24, v38, &qword_27D6F32B0, &qword_224DB3EA0);
    v35 = type metadata accessor for WorkSourceDates(0);
    return sub_224A44E4C(v33, v34 + *(v35 + 20), &qword_27D6F32B0, &qword_224DB3EA0);
  }

  return result;
}

uint64_t type metadata accessor for WorkSourceDates(uint64_t a1)
{
  result = qword_28135B200;
  if (!qword_28135B200)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_224A96B80(uint64_t a1, void *a2)
{
  v79 = sub_224DA9878();
  v85 = *(v79 - 8);
  v5 = MEMORY[0x28223BE20](v79, v4);
  v76 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v75 = &v73 - v9;
  v11 = MEMORY[0x28223BE20](v8, v10);
  v74 = &v73 - v12;
  MEMORY[0x28223BE20](v11, v13);
  v73 = &v73 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4CF8, &unk_224DBA818);
  v17 = MEMORY[0x28223BE20](v15, v16);
  v84 = &v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v73 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
  v24 = MEMORY[0x28223BE20](v22 - 8, v23);
  v77 = &v73 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v24, v26);
  v82 = &v73 - v28;
  v30 = MEMORY[0x28223BE20](v27, v29);
  v32 = &v73 - v31;
  MEMORY[0x28223BE20](v30, v33);
  v35 = &v73 - v34;
  v80 = type metadata accessor for WorkSourceDates(0);
  MEMORY[0x28223BE20](v80, v36);
  v38 = &v73 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = a2[3];
  v40 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v39);
  (*(v40 + 16))(v39, v40);
  v81 = v15;
  v41 = *(v15 + 48);
  v42 = v79;
  v43 = v38;
  v44 = v85;
  v86 = v43;
  sub_224A4FD50(v43, v21);
  sub_224A4FD50(a1, &v21[v41]);
  v45 = *(v44 + 48);
  v46 = v45(v21, 1, v42);
  v83 = v35;
  if (v46 == 1)
  {
    sub_224A4FD50(a1, v35);
    sub_224A3311C(&v21[v41], &qword_27D6F32B0, &qword_224DB3EA0);
  }

  else
  {
    v78 = a1;
    sub_224A4FD50(v21, v32);
    if (v45(&v21[v41], 1, v42) == 1)
    {
      (*(v44 + 8))(v32, v42);
      if (v45(&v21[v41], 1, v42) != 1)
      {
        goto LABEL_26;
      }

      sub_224A4FD50(v86, v83);
    }

    else
    {
      v47 = *(v44 + 32);
      v48 = v73;
      v47(v73, v32, v42);
      v49 = v74;
      v47(v74, &v21[v41], v42);
      sub_224AA686C(&qword_281351A40, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
      v50 = sub_224DAEDB8();
      v51 = v85;
      v52 = (v50 & 1) == 0;
      if (v50)
      {
        v53 = v48;
      }

      else
      {
        v53 = v49;
      }

      if (!v52)
      {
        v48 = v49;
      }

      (*(v85 + 8))(v53, v42);
      v54 = v83;
      v47(v83, v48, v42);
      (*(v51 + 56))(v54, 0, 1, v42);
    }

    a1 = v78;
  }

  sub_224A3311C(v21, &qword_27D6F32B0, &qword_224DB3EA0);
  v55 = *(v80 + 20);
  v56 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4D00, &unk_224DBA828) + 48);
  v57 = *(v81 + 48);
  v58 = v84;
  sub_224A4FD50(v86 + v55, v84);
  sub_224A4FD50(a1 + v56, v58 + v57);
  if (v45(v58, 1, v42) == 1)
  {
    sub_224A980D8(v86);
    v59 = v82;
    sub_224A4FD50(a1 + v56, v82);
    sub_224A3311C(v58 + v57, &qword_27D6F32B0, &qword_224DB3EA0);
LABEL_25:
    v71 = v83;
    sub_224A3311C(v58, &qword_27D6F32B0, &qword_224DB3EA0);
    sub_224A4C6AC(v71, a1);
    return sub_224A4C6AC(v59, a1 + v56);
  }

  v60 = v77;
  sub_224A4FD50(v58, v77);
  if (v45((v58 + v57), 1, v42) != 1)
  {
    v63 = v85;
    v78 = a1;
    v64 = *(v85 + 32);
    v65 = v75;
    v64(v75, v60, v42);
    v66 = v76;
    v64(v76, v84 + v57, v42);
    v67 = v64;
    sub_224AA686C(&qword_281351A40, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
    v68 = sub_224DAEDB8();
    sub_224A980D8(v86);
    if (v68)
    {
      v69 = v65;
    }

    else
    {
      v69 = v66;
    }

    if (v68)
    {
      v70 = v66;
    }

    else
    {
      v70 = v65;
    }

    (*(v63 + 8))(v69, v42);
    v59 = v82;
    v67(v82, v70, v42);
    v58 = v84;
    a1 = v78;
    (*(v63 + 56))(v59, 0, 1, v42);
    goto LABEL_25;
  }

  (*(v85 + 8))(v60, v42);
  if (v45((v58 + v57), 1, v42) == 1)
  {
    v61 = v86;
    v62 = v86 + v55;
    v59 = v82;
    sub_224A4FD50(v62, v82);
    sub_224A980D8(v61);
    goto LABEL_25;
  }

LABEL_26:
  result = sub_224DAFD78();
  __break(1u);
  return result;
}

uint64_t sub_224A97318@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 32);
  os_unfair_lock_lock(*(v3 + 16));
  swift_beginAccess();
  if (*(v1 + 24))
  {
    v4 = *(v1 + 24);
  }

  else
  {
    v4 = MEMORY[0x277D84FA0];
  }

  v5 = *(v3 + 16);

  os_unfair_lock_unlock(v5);
  sub_224A973A0(v4, a1);
}

uint64_t sub_224A973A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v115 = a2;
  v3 = type metadata accessor for ExtensionTask.Identifier(0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v108 = &v108 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ExtensionTask.SchedulingConfiguration(0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v108 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4AD0, &qword_224DB9950);
  MEMORY[0x28223BE20](v125, v10);
  v123 = &v108 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4AD8, qword_224DB9958);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v108 - v15;
  v17 = sub_224DA9878();
  v18 = *(v17 - 8);
  v20 = MEMORY[0x28223BE20](v17, v19);
  v109 = &v108 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20, v22);
  v110 = &v108 - v24;
  v26 = MEMORY[0x28223BE20](v23, v25);
  v28 = &v108 - v27;
  v30 = MEMORY[0x28223BE20](v26, v29);
  v114 = &v108 - v31;
  v33 = MEMORY[0x28223BE20](v30, v32);
  v121 = &v108 - v34;
  MEMORY[0x28223BE20](v33, v35);
  v37 = &v108 - v36;
  sub_224DA9868();
  v38 = *(v13 + 56);
  sub_224DA9748();
  v131 = v16;
  v120 = v38;
  *&v16[v38] = 0;
  v111 = v28;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_224DAF7E8();
    type metadata accessor for ExtensionTask(0);
    sub_224A98090(&qword_28135B9E8, type metadata accessor for ExtensionTask, MEMORY[0x277D85378]);
    sub_224DAF1F8();
    a1 = v133[3];
    v39 = v133[4];
    v40 = v133[5];
    v41 = v133[6];
    v42 = v133[7];
  }

  else
  {
    v43 = -1 << *(a1 + 32);
    v39 = a1 + 56;
    v40 = ~v43;
    v44 = -v43;
    if (v44 < 64)
    {
      v45 = ~(-1 << v44);
    }

    else
    {
      v45 = -1;
    }

    v46 = v45 & *(a1 + 56);

    v42 = v46;
    v41 = 0;
  }

  v126 = 0;
  v113 = v40;
  v124 = (v40 + 64) >> 6;
  v122 = (v18 + 32);
  v47 = (v18 + 16);
  v116 = v18;
  v119 = (v18 + 40);
  v128 = v17;
  v48 = v123;
  v118 = v39;
  v117 = v9;
  do
  {
    v127 = v41;
    if (a1 < 0)
    {
      v129 = v42;
      v53 = sub_224DAF878();
      if (!v53)
      {
        break;
      }

      v132 = v53;
      type metadata accessor for ExtensionTask(0);
      swift_dynamicCast();
      v52 = v133[0];
      v130 = v129;
      if (!v133[0])
      {
        break;
      }
    }

    else
    {
      v50 = v41;
      v51 = v42;
      if (!v42)
      {
        while (1)
        {
          v41 = v50 + 1;
          if (__OFADD__(v50, 1))
          {
            break;
          }

          if (v41 >= v124)
          {
            v129 = 0;
            goto LABEL_27;
          }

          v51 = *(v39 + 8 * v41);
          ++v50;
          if (v51)
          {
            goto LABEL_14;
          }
        }

        __break(1u);
        goto LABEL_51;
      }

LABEL_14:
      v129 = v42;
      v130 = ((v51 - 1) & v51);
      v52 = *(*(a1 + 48) + ((v41 << 9) | (8 * __clz(__rbit64(v51)))));
      if (!v52)
      {
        break;
      }
    }

    sub_224A4152C(v52 + OBJC_IVAR____TtC10ChronoCore13ExtensionTask_schedulingConfiguration, v9, type metadata accessor for ExtensionTask.SchedulingConfiguration);
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F33D0, qword_224DB3710);
    if ((*(*(v54 - 8) + 48))(v9, 1, v54) == 1)
    {
      (*v47)(v48, v37, v17);
    }

    else
    {
      (*v122)(v48, v9, v17);
    }

    *(v48 + *(v125 + 48)) = v52;
    v55 = v52;
    if (sub_224DA9798())
    {
      sub_224A98090(&qword_281351A40, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
      v56 = v128;
      if (sub_224DAEDC8())
      {
        v57 = v37;
      }

      else
      {
        v57 = v48;
      }

      v58 = v121;
      (*v47)(v121, v57, v56);
      v59 = a1;
      v60 = v47;
      v61 = v37;
      v62 = *v119;
      v63 = v55;
      v64 = v58;
      v39 = v118;
      v62(v131, v64, v56);
      v37 = v61;
      v47 = v60;
      a1 = v59;
      v9 = v117;
      v48 = v123;
      v65 = v131;

      *&v65[v120] = v52;
      v126 = v52;
    }

    v49 = sub_224DA97E8();

    sub_224A3311C(v48, &qword_27D6F4AD0, &qword_224DB9950);
    v17 = v128;
    v42 = v130;
  }

  while ((v49 & 1) == 0);
LABEL_27:
  v112 = v37;
  sub_224A3B7E4(a1);
  v66 = v114;
  sub_224DA9748();
  sub_224A98090(&qword_281351A38, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  v67 = sub_224DAEDD8();
  v9 = v116;
  v41 = *(v116 + 1);
  (v41)(v66, v17);
  if (v67)
  {
    if (qword_281351498 == -1)
    {
LABEL_29:
      v68 = sub_224DAB258();
      __swift_project_value_buffer(v68, qword_281364E20);
      v69 = sub_224DAB228();
      v70 = sub_224DAF2A8();
      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        *v71 = 0;
        _os_log_impl(&dword_224A2F000, v69, v70, "Skipping next scheduled wake task - next date is distant future.", v71, 2u);
        v72 = v71;
        v17 = v128;
        MEMORY[0x22AA5EED0](v72, -1, -1);
      }

      (v41)(v112, v17);
      v73 = *(v9 + 7);
      v74 = v115;
      v73(v115, 1, 1, v17);
      v75 = type metadata accessor for WorkSourceDates(0);
      v73(v74 + *(v75 + 20), 1, 1, v17);
      v76 = v131;
      return sub_224A3311C(v76, &qword_27D6F4AD8, qword_224DB9958);
    }

LABEL_51:
    swift_once();
    goto LABEL_29;
  }

  v130 = v47;
  sub_224DA9808();
  v77 = v111;
  sub_224DA9768();
  (v41)(v66, v17);
  if (qword_281351498 != -1)
  {
    swift_once();
  }

  v78 = sub_224DAB258();
  __swift_project_value_buffer(v78, qword_281364E20);
  v79 = sub_224DAB228();
  v80 = sub_224DAF278();
  if (os_log_type_enabled(v79, v80))
  {
    v81 = swift_slowAlloc();
    v129 = swift_slowAlloc();
    v133[0] = v129;
    *v81 = 136446466;
    if (v126)
    {
      v82 = v108;
      sub_224A4152C(v126 + OBJC_IVAR____TtC10ChronoCore13ExtensionTask_identifier, v108, type metadata accessor for ExtensionTask.Identifier);
      v83 = sub_224A40C80();
      v85 = v84;
      sub_224A48F3C(v82);
    }

    else
    {
      v85 = 0xE400000000000000;
      v83 = 1701736302;
    }

    v86 = sub_224A33F74(v83, v85, v133);

    *(v81 + 4) = v86;
    *(v81 + 12) = 2082;
    v87 = v131;
    swift_beginAccess();
    v88 = v128;
    (*v130)(v66, v87, v128);
    if (qword_281351A50 != -1)
    {
      swift_once();
    }

    v89 = qword_281351A58;
    v90 = sub_224DA9778();
    v91 = [v89 stringFromDate_];

    v92 = sub_224DAEE18();
    v94 = v93;

    (v41)(v66, v88);
    v95 = sub_224A33F74(v92, v94, v133);

    *(v81 + 14) = v95;
    _os_log_impl(&dword_224A2F000, v79, v80, "Earliest date from Task(%{public}s: - %{public}s", v81, 0x16u);
    v96 = v129;
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v96, -1, -1);
    MEMORY[0x22AA5EED0](v81, -1, -1);

    v76 = v131;
    v17 = v88;
    v9 = v116;
    v77 = v111;
  }

  else
  {

    v76 = v131;
  }

  swift_beginAccess();
  v97 = v109;
  (*(v9 + 2))(v109, v76, v17);
  sub_224A98090(&qword_281351A40, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  v98 = sub_224DAEDC8();
  (v41)(v112, v17);
  if (v98)
  {
    v99 = v77;
  }

  else
  {
    v99 = v97;
  }

  if (v98)
  {
    v100 = v97;
  }

  else
  {
    v100 = v77;
  }

  (v41)(v99, v17);
  v101 = *(v9 + 4);
  v102 = v110;
  v101(v110, v100, v17);
  v103 = *(v9 + 7);
  v104 = v115;
  v103(v115, 1, 1, v17);
  v105 = v17;
  v106 = *(type metadata accessor for WorkSourceDates(0) + 20);
  v101((v104 + v106), v102, v105);
  v103(v104 + v106, 0, 1, v105);
  return sub_224A3311C(v76, &qword_27D6F4AD8, qword_224DB9958);
}

uint64_t sub_224A98090(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_224A980D8(uint64_t a1)
{
  v2 = type metadata accessor for WorkSourceDates(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_224A98134@<D0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v13 - v5;
  v7 = sub_224DA9878();
  v8 = *(*(v7 - 8) + 56);
  v8(a1, 1, 1, v7);
  v9 = *(type metadata accessor for WorkSourceDates(0) + 20);
  v8(a1 + v9, 1, 1, v7);
  v10 = *(v1 + 16);
  v11 = *(v10 + 16);

  os_unfair_lock_lock(v11);
  sub_224A982B4("Earliest nonwaking date from work %{public}s: %{public}s, finalWakeTarget: %{public}s %{public}f", 0, v6);
  sub_224A4C6AC(v6, a1);
  sub_224A982B4("Earliest waking date from work %{public}s: %{public}s, finalWakeTarget: %{public}s %{public}f", 1, v6);
  sub_224A4C6AC(v6, a1 + v9);
  os_unfair_lock_unlock(*(v10 + 16));

  return result;
}

uint64_t sub_224A982B4@<X0>(const char *a1@<X1>, uint64_t a2@<X0>, uint64_t a3@<X8>, ...)
{
  v91 = a1;
  v4 = a2;
  v95 = a3;
  v5 = sub_224DA9878();
  v96 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5, v6);
  v93 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v92 = &v84 - v11;
  v13 = MEMORY[0x28223BE20](v10, v12);
  v15 = &v84 - v14;
  MEMORY[0x28223BE20](v13, v16);
  v94 = &v84 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3B30, &unk_224DBB840);
  MEMORY[0x28223BE20](v18 - 8, v19);
  v21 = &v84 - v20;
  v22 = type metadata accessor for SimpleWorkScheduler.Work(0);
  v23 = *(v22 - 8);
  v25 = MEMORY[0x28223BE20](v22, v24);
  v27 = &v84 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v25, v28);
  v31 = &v84 - v30;
  MEMORY[0x28223BE20](v29, v32);
  v34 = &v84 - v33;
  os_unfair_lock_assert_owner(*(*(v3 + 16) + 16));
  sub_224A98B1C(v4, v21);
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    sub_224A99418(v21);
    if (qword_281351498 != -1)
    {
      swift_once();
    }

    v35 = sub_224DAB258();
    __swift_project_value_buffer(v35, qword_281364E20);
    v36 = sub_224DAB228();
    v37 = sub_224DAF2A8();
    v38 = os_log_type_enabled(v36, v37);
    v39 = v96;
    if (v38)
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_224A2F000, v36, v37, "No wake work scheduled", v40, 2u);
      MEMORY[0x22AA5EED0](v40, -1, -1);
    }

    v41 = 1;
    v42 = v95;
  }

  else
  {
    sub_224C1798C(v21, v34);
    v43 = *(v22 + 20);
    sub_224DA9808();
    sub_224C179F0();
    if (sub_224DAEDC8())
    {
      v39 = v96;
      v44 = v94;
      (*(v96 + 32))(v94, v15, v5);
    }

    else
    {
      v39 = v96;
      (*(v96 + 8))(v15, v5);
      v45 = &v34[v43];
      v44 = v94;
      (*(v39 + 16))(v94, v45, v5);
    }

    if (qword_281351498 != -1)
    {
      swift_once();
    }

    v46 = sub_224DAB258();
    __swift_project_value_buffer(v46, qword_281364E20);
    sub_224C17A48(v34, v31, type metadata accessor for SimpleWorkScheduler.Work);
    sub_224C17A48(v34, v27, type metadata accessor for SimpleWorkScheduler.Work);
    v89 = v31;
    v47 = *(v39 + 16);
    v48 = v92;
    v47(v92, v44, v5);
    v90 = v34;
    v49 = v48;
    v50 = v93;
    v47(v93, v44, v5);
    v51 = sub_224DAB228();
    v52 = sub_224DAF2A8();
    if (os_log_type_enabled(v51, v52))
    {
      v87 = v52;
      v88 = v51;
      v85 = v5;
      v53 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v97 = v86;
      *v53 = 136446978;
      v54 = *(v22 + 20);
      v55 = type metadata accessor for WorkScheduleRequest(0);
      v56 = v89;
      v57 = &v89[v54 + *(v55 + 24)];
      v58 = *v57;
      v59 = v57[1];

      sub_224C17AB0(v56, type metadata accessor for SimpleWorkScheduler.Work);
      v60 = sub_224A33F74(v58, v59, &v97);

      *(v53 + 4) = v60;
      *(v53 + 12) = 2082;
      if (qword_27D6F2CE0 != -1)
      {
        swift_once();
      }

      v61 = qword_27D6F52C8;
      v62 = sub_224DA9778();
      v63 = [v61 stringFromDate_];

      v64 = sub_224DAEE18();
      v66 = v65;

      sub_224C17AB0(v27, type metadata accessor for SimpleWorkScheduler.Work);
      v67 = sub_224A33F74(v64, v66, &v97);

      *(v53 + 14) = v67;
      *(v53 + 22) = 2082;
      v68 = qword_27D6F52C8;
      v69 = sub_224DA9778();
      v70 = [v68 stringFromDate_];

      v71 = sub_224DAEE18();
      v73 = v72;

      v74 = v96;
      v75 = *(v96 + 8);
      v5 = v85;
      v75(v49, v85);
      v76 = sub_224A33F74(v71, v73, &v97);

      *(v53 + 24) = v76;
      *(v53 + 32) = 2050;
      v77 = v93;
      sub_224DA97B8();
      v79 = v78;
      v75(v77, v5);
      v39 = v74;
      *(v53 + 34) = v79;
      v80 = v88;
      _os_log_impl(&dword_224A2F000, v88, v87, v91, v53, 0x2Au);
      v81 = v86;
      swift_arrayDestroy();
      MEMORY[0x22AA5EED0](v81, -1, -1);
      MEMORY[0x22AA5EED0](v53, -1, -1);

      sub_224C17AB0(v90, type metadata accessor for SimpleWorkScheduler.Work);
      v44 = v94;
    }

    else
    {

      v82 = *(v39 + 8);
      v82(v50, v5);
      v82(v49, v5);
      sub_224C17AB0(v27, type metadata accessor for SimpleWorkScheduler.Work);
      sub_224C17AB0(v89, type metadata accessor for SimpleWorkScheduler.Work);
      sub_224C17AB0(v90, type metadata accessor for SimpleWorkScheduler.Work);
    }

    v42 = v95;
    (*(v39 + 32))(v95, v44, v5);
    v41 = 0;
  }

  return (*(v39 + 56))(v42, v41, 1, v5);
}

uint64_t sub_224A98B1C@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v68 = a1;
  v65 = a2;
  v3 = sub_224DA9878();
  v63 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SimpleWorkScheduler.Work(0);
  v66 = *(v7 - 1);
  v9 = MEMORY[0x28223BE20](v7, v8);
  v67 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v14 = &v60 - v13;
  v16 = MEMORY[0x28223BE20](v12, v15);
  v18 = &v60 - v17;
  v20 = MEMORY[0x28223BE20](v16, v19);
  v22 = &v60 - v21;
  MEMORY[0x28223BE20](v20, v23);
  v25 = (&v60 - v24);
  v26 = type metadata accessor for WorkScheduleRequest(0);
  MEMORY[0x28223BE20](v26, v27);
  v29 = &v60 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  os_unfair_lock_assert_owner(*(*(v2 + 16) + 16));
  swift_beginAccess();
  if (!*(*(v2 + 24) + 16))
  {
    return (*(v66 + 56))(v65, 1, 1, v7);
  }

  v60 = v22;
  v61 = v6;
  v62 = v3;
  sub_224DA9748();
  v29[*(v26 + 20)] = 1;
  v69 = v26;
  v30 = &v29[*(v26 + 24)];
  *v30 = 0x6B726F77206F4ELL;
  *(v30 + 1) = 0xE700000000000000;
  sub_224C17A48(v29, v25 + v7[5], type metadata accessor for WorkScheduleRequest);
  *v25 = 0;
  v31 = (v25 + v7[6]);
  *v31 = nullsub_1;
  v31[1] = 0;
  v32 = (v25 + v7[7]);
  *v32 = nullsub_1;
  v32[1] = 0;
  v33 = *(v2 + 24);
  sub_224C17A48(v25, v18, type metadata accessor for SimpleWorkScheduler.Work);
  v34 = v33 + 64;
  v35 = 1 << *(v33 + 32);
  v36 = -1;
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  v37 = v36 & *(v33 + 64);
  v38 = (v35 + 63) >> 6;
  v70 = v33;
  result = swift_bridgeObjectRetain_n();
  v40 = 0;
  v68 &= 1u;
  v41 = v66;
  v64 = v29;
  if (v37)
  {
    goto LABEL_13;
  }

  while (1)
  {
LABEL_14:
    v52 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      __break(1u);
      return result;
    }

    if (v52 >= v38)
    {
      break;
    }

    v37 = *(v34 + 8 * v52);
    ++v40;
    if (v37)
    {
      while (1)
      {
        v53 = __clz(__rbit64(v37));
        v37 &= v37 - 1;
        sub_224C17A48(*(v70 + 56) + *(v41 + 72) * (v53 | (v52 << 6)), v14, type metadata accessor for SimpleWorkScheduler.Work);
        if (v14[v7[5] + *(v69 + 20)] == v68)
        {
          v42 = sub_224DA9798();
          v43 = (v42 & 1) == 0;
          if (v42)
          {
            v44 = v18;
          }

          else
          {
            v44 = v14;
          }

          v45 = v25;
          v46 = v41;
          v47 = v7;
          if (v43)
          {
            v48 = v18;
          }

          else
          {
            v48 = v14;
          }

          sub_224C17AB0(v44, type metadata accessor for SimpleWorkScheduler.Work);
          v49 = v48;
          v7 = v47;
          v41 = v46;
          v25 = v45;
          v50 = v67;
          sub_224C1798C(v49, v67);
          v51 = v50;
          v29 = v64;
          result = sub_224C1798C(v51, v18);
          v40 = v52;
          if (!v37)
          {
            goto LABEL_14;
          }
        }

        else
        {
          result = sub_224C17AB0(v14, type metadata accessor for SimpleWorkScheduler.Work);
          v40 = v52;
          if (!v37)
          {
            goto LABEL_14;
          }
        }

LABEL_13:
        v52 = v40;
      }
    }
  }

  v54 = v60;
  sub_224C1798C(v18, v60);

  v55 = v41;
  v56 = v61;
  sub_224DA9748();
  v57 = sub_224DA9798();
  (*(v63 + 8))(v56, v62);
  sub_224C17AB0(v25, type metadata accessor for SimpleWorkScheduler.Work);
  sub_224C17AB0(v29, type metadata accessor for WorkScheduleRequest);
  v58 = (v55 + 56);
  if (v57)
  {
    v59 = v65;
    sub_224C1798C(v54, v65);
    return (*v58)(v59, 0, 1, v7);
  }

  else
  {
    sub_224C17AB0(v54, type metadata accessor for SimpleWorkScheduler.Work);
    return (*v58)(v65, 1, 1, v7);
  }
}

uint64_t sub_224A990E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for WorkScheduleRequest(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_224A991B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_224DA9878();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_224A99284(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for WorkScheduleRequest(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_224A99358(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_224DA9878();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_224A99418(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3B30, &unk_224DBB840);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_224A99480(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v47 - v5;
  v7 = sub_224DA9878();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v10, v13);
  v16 = &v47 - v15;
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v47 - v18;
  os_unfair_lock_assert_owner(*(v1[10] + 16));
  if (v1[6])
  {
    v20 = v1[7];
    sub_224A4FD50(a1, v6);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      swift_unknownObjectRetain();
      sub_224A3311C(v6, &qword_27D6F32B0, &qword_224DB3EA0);
      if (qword_281351498 != -1)
      {
        swift_once();
      }

      v21 = sub_224DAB258();
      __swift_project_value_buffer(v21, qword_281364E20);
      v22 = sub_224DAB228();
      v23 = sub_224DAF2A8();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = v20;
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_224A2F000, v22, v23, "Cancelling nonwaking work", v25, 2u);
        v26 = v25;
        v20 = v24;
        MEMORY[0x22AA5EED0](v26, -1, -1);
      }
    }

    else
    {
      v51 = v20;
      (*(v8 + 32))(v19, v6, v7);
      v27 = qword_281351498;
      swift_unknownObjectRetain();
      if (v27 != -1)
      {
        swift_once();
      }

      v28 = sub_224DAB258();
      __swift_project_value_buffer(v28, qword_281364E20);
      v29 = *(v8 + 16);
      v29(v16, v19, v7);
      v29(v12, v19, v7);
      v30 = sub_224DAB228();
      v31 = sub_224DAF2A8();
      if (os_log_type_enabled(v30, v31))
      {
        v48 = v31;
        v49 = v30;
        v50 = a1;
        v32 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v52 = v47;
        *v32 = 136446466;
        if (qword_28135C420 != -1)
        {
          swift_once();
        }

        v33 = qword_28135C428;
        v34 = sub_224DA9778();
        v35 = [v33 stringFromDate_];

        v36 = sub_224DAEE18();
        v38 = v37;

        v39 = *(v8 + 8);
        v39(v16, v7);
        v40 = sub_224A33F74(v36, v38, &v52);

        *(v32 + 4) = v40;
        *(v32 + 12) = 2050;
        sub_224DA97B8();
        v42 = v41;
        v39(v12, v7);
        *(v32 + 14) = v42;
        v43 = v49;
        _os_log_impl(&dword_224A2F000, v49, v48, "Scheduling nonwaking work for: %{public}s in %{public}fs", v32, 0x16u);
        v44 = v47;
        __swift_destroy_boxed_opaque_existential_1(v47);
        MEMORY[0x22AA5EED0](v44, -1, -1);
        MEMORY[0x22AA5EED0](v32, -1, -1);

        v39(v19, v7);
        a1 = v50;
        v20 = v51;
      }

      else
      {

        v45 = *(v8 + 8);
        v45(v12, v7);
        v45(v16, v7);
        v45(v19, v7);
        v20 = v51;
      }
    }

    ObjectType = swift_getObjectType();
    (*(v20 + 32))(a1, ObjectType, v20);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_224A999E4(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v32 - v7;
  v9 = sub_224DA9878();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v14 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v32 - v16;
  [*(a1 + 16) cancel];
  [*(a1 + 16) invalidate];
  v18 = *(a1 + 16);
  *(a1 + 16) = 0;

  sub_224A4FD50(a2, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_224BB1770(v8);
  }

  v37 = v2;
  v35 = *(v10 + 32);
  v35(v17, v8, v9);
  v20 = objc_allocWithZone(MEMORY[0x277CF0BD8]);
  v21 = sub_224DAEDE8();
  v22 = [v20 initWithIdentifier_];

  v23 = *(a1 + 16);
  *(a1 + 16) = v22;

  sub_224DA9808();
  sub_224DA9758();
  v25 = v24;
  v36 = *(v10 + 8);
  result = v36(v14, v9);
  v34 = *(a1 + 16);
  if (v34)
  {
    if (v25 < 0.0)
    {
      v25 = 1.0;
    }

    v33 = *(a1 + 32);
    v26 = swift_allocObject();
    swift_weakInit();
    (*(v10 + 16))(v14, v17, v9);
    v27 = (*(v10 + 80) + 24) & ~*(v10 + 80);
    v28 = swift_allocObject();
    *(v28 + 16) = v26;
    v35((v28 + v27), v14, v9);
    aBlock[4] = sub_224AA51E4;
    aBlock[5] = v28;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_224A3837C;
    aBlock[3] = &block_descriptor_34;
    v29 = _Block_copy(aBlock);
    v30 = v34;
    v31 = v33;

    [v30 scheduleWithFireInterval:v31 leewayInterval:v29 queue:v25 handler:0.0];
    _Block_release(v29);

    return v36(v17, v9);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_224A99DC4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224A99DFC()
{
  v1 = sub_224DA9878();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

double sub_224A99EC0(uint64_t a1)
{
  v3 = *(v1 + 24);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  sub_224A999E4(v1, a1);
  os_unfair_lock_unlock(*(v3 + 16));

  return result;
}

void sub_224A99F50(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v47 - v5;
  v7 = sub_224DA9878();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v10, v13);
  v16 = &v47 - v15;
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v47 - v18;
  os_unfair_lock_assert_owner(*(v1[10] + 16));
  if (v1[4])
  {
    v20 = v1[5];
    sub_224A4FD50(a1, v6);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      swift_unknownObjectRetain();
      sub_224A3311C(v6, &qword_27D6F32B0, &qword_224DB3EA0);
      if (qword_281351498 != -1)
      {
        swift_once();
      }

      v21 = sub_224DAB258();
      __swift_project_value_buffer(v21, qword_281364E20);
      v22 = sub_224DAB228();
      v23 = sub_224DAF2A8();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = v20;
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_224A2F000, v22, v23, "Cancelling waking work", v25, 2u);
        v26 = v25;
        v20 = v24;
        MEMORY[0x22AA5EED0](v26, -1, -1);
      }
    }

    else
    {
      v51 = v20;
      (*(v8 + 32))(v19, v6, v7);
      v27 = qword_281351498;
      swift_unknownObjectRetain();
      if (v27 != -1)
      {
        swift_once();
      }

      v28 = sub_224DAB258();
      __swift_project_value_buffer(v28, qword_281364E20);
      v29 = *(v8 + 16);
      v29(v16, v19, v7);
      v29(v12, v19, v7);
      v30 = sub_224DAB228();
      v31 = sub_224DAF2A8();
      if (os_log_type_enabled(v30, v31))
      {
        v48 = v31;
        v49 = v30;
        v50 = a1;
        v32 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v52 = v47;
        *v32 = 136446466;
        if (qword_28135C420 != -1)
        {
          swift_once();
        }

        v33 = qword_28135C428;
        v34 = sub_224DA9778();
        v35 = [v33 stringFromDate_];

        v36 = sub_224DAEE18();
        v38 = v37;

        v39 = *(v8 + 8);
        v39(v16, v7);
        v40 = sub_224A33F74(v36, v38, &v52);

        *(v32 + 4) = v40;
        *(v32 + 12) = 2050;
        sub_224DA97B8();
        v42 = v41;
        v39(v12, v7);
        *(v32 + 14) = v42;
        v43 = v49;
        _os_log_impl(&dword_224A2F000, v49, v48, "Scheduling waking work for: %{public}s in %{public}fs", v32, 0x16u);
        v44 = v47;
        __swift_destroy_boxed_opaque_existential_1(v47);
        MEMORY[0x22AA5EED0](v44, -1, -1);
        MEMORY[0x22AA5EED0](v32, -1, -1);

        v39(v19, v7);
        a1 = v50;
        v20 = v51;
      }

      else
      {

        v45 = *(v8 + 8);
        v45(v12, v7);
        v45(v16, v7);
        v45(v19, v7);
        v20 = v51;
      }
    }

    ObjectType = swift_getObjectType();
    (*(v20 + 32))(a1, ObjectType, v20);
    swift_unknownObjectRelease();
  }
}

void sub_224A9A4B8(uint64_t a1, void (*a2)(_BYTE *, uint64_t))
{
  v95 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v80[-v5];
  v7 = sub_224DA9878();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v93 = &v80[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x28223BE20](v10, v12);
  v92 = &v80[-v14];
  v16 = MEMORY[0x28223BE20](v13, v15);
  v94 = &v80[-v17];
  v19 = MEMORY[0x28223BE20](v16, v18);
  v21 = &v80[-v20];
  v23 = MEMORY[0x28223BE20](v19, v22);
  v25 = &v80[-v24];
  v91 = v26;
  MEMORY[0x28223BE20](v23, v27);
  v29 = &v80[-v28];
  type metadata accessor for PushFoundation.KeepAliveTransaction(0);
  swift_allocObject();
  PushFoundation.KeepAliveTransaction.init(reason:)(0x68637320656B6177, 0xEF676E696C756465);
  v31 = v30;
  [*(a1 + 16) invalidate];
  v32 = *(a1 + 16);
  v96 = a1;
  *(a1 + 16) = 0;

  sub_224A4FD50(v95, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_224BB1770(v6);
    if (qword_281351498 != -1)
    {
      swift_once();
    }

    v33 = sub_224DAB258();
    __swift_project_value_buffer(v33, qword_281364E20);
    v34 = sub_224DAB228();
    v35 = sub_224DAF2A8();
    v36 = os_log_type_enabled(v34, v35);
    v37 = v96;
    if (v36)
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_224A2F000, v34, v35, "Skipping next scheduled wake task - next date is nil", v38, 2u);
      MEMORY[0x22AA5EED0](v38, -1, -1);
    }
  }

  else
  {
    v90 = v31;
    v85 = *(v8 + 32);
    v86 = v8 + 32;
    v85(v29, v6, v7);
    sub_224DA9808();
    sub_224DA9768();
    v39 = v8 + 8;
    v95 = *(v8 + 8);
    v95(v21, v7);
    sub_224A9BB34(&qword_281351A40, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
    v40 = sub_224DAEDC8();
    v87 = v8;
    v43 = *(v8 + 16);
    v42 = v8 + 16;
    v41 = v43;
    if (v40)
    {
      v44 = v25;
    }

    else
    {
      v44 = v29;
    }

    v45 = v94;
    v41(v94, v44, v7);
    v89 = v25;
    v84 = v21;
    if (qword_281351498 != -1)
    {
      swift_once();
    }

    v46 = sub_224DAB258();
    __swift_project_value_buffer(v46, qword_281364E20);
    v47 = v92;
    v41(v92, v45, v7);
    v48 = v93;
    v83 = v42;
    v82 = v41;
    v41(v93, v45, v7);
    v49 = sub_224DAB228();
    v50 = sub_224DAF2A8();
    v51 = os_log_type_enabled(v49, v50);
    v88 = v29;
    if (v51)
    {
      v81 = v50;
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      aBlock[0] = v53;
      *v52 = 136446466;
      if (qword_281358D20 != -1)
      {
        swift_once();
      }

      v54 = qword_281358D28;
      v55 = v92;
      v56 = sub_224DA9778();
      v57 = [v54 stringFromDate_];

      v58 = sub_224DAEE18();
      v60 = v59;

      v61 = v95;
      v95(v55, v7);
      v62 = sub_224A33F74(v58, v60, aBlock);

      *(v52 + 4) = v62;
      *(v52 + 12) = 2050;
      v63 = v93;
      sub_224DA97B8();
      v65 = v64;
      v61(v63, v7);
      *(v52 + 14) = v65;
      _os_log_impl(&dword_224A2F000, v49, v81, "Scheduling waking task for adjusted date: %{public}s in %{public}fs", v52, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v53);
      MEMORY[0x22AA5EED0](v53, -1, -1);
      MEMORY[0x22AA5EED0](v52, -1, -1);

      v37 = v96;
      v45 = v94;
    }

    else
    {

      v66 = v95;
      v95(v48, v7);
      v66(v47, v7);
      v37 = v96;
    }

    v96 = v39;
    v67 = objc_allocWithZone(MEMORY[0x277CCA8B8]);
    v68 = sub_224DAEDE8();
    v69 = [v67 initWithIdentifier_];

    v70 = *(v37 + 16);
    *(v37 + 16) = v69;
    v71 = v69;

    [v71 setQualityOfService_];
    [v71 setRepeats_];
    sub_224DA97B8();
    [v71 setInterval_];
    [v71 setTolerance_];
    [v71 interval];
    v72 = v87;
    if (v73 < 0.0)
    {
      [v71 setInterval_];
    }

    v74 = swift_allocObject();
    swift_weakInit();
    v75 = v84;
    v82(v84, v45, v7);
    v76 = (*(v72 + 80) + 24) & ~*(v72 + 80);
    v77 = swift_allocObject();
    *(v77 + 16) = v74;
    v85((v77 + v76), v75, v7);
    aBlock[4] = sub_224CBEE64;
    aBlock[5] = v77;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_224CBEAD4;
    aBlock[3] = &block_descriptor_43;
    v78 = _Block_copy(aBlock);

    [v71 scheduleWithBlock_];
    _Block_release(v78);

    v79 = v95;
    v95(v45, v7);
    v79(v89, v7);
    v79(v88, v7);
    v31 = v90;
  }

  sub_224A9BB7C(v37, v31);
}

uint64_t sub_224A9AD8C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224A9ADC4()
{
  v1 = sub_224DA9878();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

double sub_224A9AE88(void (*a1)(_BYTE *, uint64_t))
{
  v3 = *(v1 + 24);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  sub_224A9A4B8(v1, a1);
  os_unfair_lock_unlock(*(v3 + 16));

  return result;
}

uint64_t type metadata accessor for PushFoundation.KeepAliveTransaction(uint64_t a1)
{
  result = qword_28135B6B0;
  if (!qword_28135B6B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void PushFoundation.KeepAliveTransaction.init(reason:)(uint64_t a1, NSObject *a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_224DAB7B8();
  v45 = *(v7 - 8);
  v46 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v43 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_224DAB848();
  v42 = *(v44 - 8);
  MEMORY[0x28223BE20](v44, v10);
  v41 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_224DAB258();
  v13 = *(v12 - 8);
  v15 = MEMORY[0x28223BE20](v12, v14);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v40 - v19;
  *(v3 + 2) = 0;
  *(v3 + 4) = a1;
  *(v3 + 5) = a2;

  sub_224DAB248();
  v21 = OBJC_IVAR____TtCO10ChronoCore14PushFoundation20KeepAliveTransaction_logger;
  (*(v13 + 32))(&v3[OBJC_IVAR____TtCO10ChronoCore14PushFoundation20KeepAliveTransaction_logger], v20, v12);
  (*(v13 + 16))(v17, &v3[v21], v12);

  v22 = sub_224DAB228();
  v23 = sub_224DAF2A8();

  v24 = os_log_type_enabled(v22, v23);
  v47 = a1;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v40 = a2;
    v26 = v6;
    v27 = a1;
    v28 = v25;
    v29 = swift_slowAlloc();
    aBlock = v29;
    *v28 = 136446210;
    v30 = v27;
    v6 = v26;
    a2 = v40;
    *(v28 + 4) = sub_224A33F74(v30, v40, &aBlock);
    _os_log_impl(&dword_224A2F000, v22, v23, "Acquiring keep-alive with reason: %{public}s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v29);
    MEMORY[0x22AA5EED0](v29, -1, -1);
    MEMORY[0x22AA5EED0](v28, -1, -1);
  }

  (*(v13 + 8))(v17, v12);
  sub_224A3B79C(0, &qword_2813509E0, 0x277D85CA0);
  if (qword_28135B6D0 != -1)
  {
    swift_once();
  }

  v40 = qword_28135B6E0;
  *(v3 + 3) = sub_224DAF458();
  swift_getObjectType();
  v31 = swift_allocObject();
  v32 = v47;
  v31[2] = v3;
  v31[3] = v32;
  v31[4] = a2;
  v31[5] = v6;
  v33 = v6;
  v52 = sub_224AD663C;
  v53 = v31;
  aBlock = MEMORY[0x277D85DD0];
  v49 = 1107296256;
  v50 = sub_224A39F40;
  v51 = &block_descriptor_4;
  v34 = _Block_copy(&aBlock);

  v35 = v41;
  sub_224DAB7E8();
  v36 = v43;
  sub_224A9B5C8();
  sub_224DAF468();
  _Block_release(v34);
  (*(v45 + 8))(v36, v46);
  (*(v42 + 8))(v35, v44);

  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_224DAF488();
  swift_unknownObjectRelease();
  v37 = swift_allocObject();
  v37[2] = v3;
  v37[3] = v32;
  v37[4] = a2;
  v37[5] = v33;
  v38 = swift_allocObject();
  *(v38 + 16) = sub_224A9B720;
  *(v38 + 24) = v37;
  v52 = sub_224A8A840;
  v53 = v38;
  aBlock = MEMORY[0x277D85DD0];
  v49 = 1107296256;
  v50 = sub_224A9B6F8;
  v51 = &block_descriptor_9;
  v39 = _Block_copy(&aBlock);

  dispatch_sync(v40, v39);
  _Block_release(v39);
  LOBYTE(v39) = swift_isEscapingClosureAtFileLocation();

  if (v39)
  {
    __break(1u);
  }
}

uint64_t sub_224A9B5C8()
{
  sub_224DAB7B8();
  sub_224A80DE0(&qword_281350ED0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
  sub_224A9B6A0(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0);
  return sub_224DAF788();
}

uint64_t sub_224A9B6A0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

void sub_224A9B72C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (byte_27D6F3448)
  {
    *(a1 + 16) = 0;

    swift_unknownObjectRelease();
  }

  else
  {
    sub_224DAEE48();
    v6 = os_transaction_create();

    *(a1 + 16) = v6;
    swift_unknownObjectRelease();
    if (qword_28135B6E8 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v7 = off_28135B6F0;
    if (*(off_28135B6F0 + 2) && (v8 = sub_224A3A40C(a2, a3), (v9 & 1) != 0))
    {
      v10 = *(v7[7] + 8 * v8);
    }

    else
    {
      v10 = 0;
    }

    swift_endAccess();
    if (__OFADD__(v10, 1))
    {
      __break(1u);
    }

    else
    {
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v20 = off_28135B6F0;
      off_28135B6F0 = 0x8000000000000000;
      sub_224A9B9CC(v10 + 1, a2, a3, isUniquelyReferenced_nonNull_native);
      off_28135B6F0 = v20;
      swift_endAccess();
      v12 = sub_224DAB228();
      v13 = sub_224DAF2A8();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v21[0] = v15;
        *v14 = 136446210;

        v16 = sub_224DAECF8();
        v18 = v17;

        v19 = sub_224A33F74(v16, v18, v21);

        *(v14 + 4) = v19;
        _os_log_impl(&dword_224A2F000, v12, v13, "Keep-alive reasons: %{public}s", v14, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v15);
        MEMORY[0x22AA5EED0](v15, -1, -1);
        MEMORY[0x22AA5EED0](v14, -1, -1);
      }
    }
  }
}

unint64_t sub_224A9B9CC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_224A3A40C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_224AA68E4(v16, a4 & 1);
      result = sub_224A3A40C(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_224DAFDD8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_224B2572C();
      result = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * result) = a1;
    return result;
  }

  v21[(result >> 6) + 8] |= 1 << result;
  v22 = (v21[6] + 16 * result);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * result) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v24;
}

uint64_t sub_224A9BB34(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_224A9BB7C(uint64_t a1, uint64_t a2)
{
  v3 = sub_224DAB7B8();
  v15 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_224DAB848();
  v7 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock[4] = sub_224A9C080;
  aBlock[5] = a2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_224A39F40;
  aBlock[3] = &block_descriptor_21;
  v11 = _Block_copy(aBlock);

  sub_224DAB7E8();
  v16 = MEMORY[0x277D84F90];
  sub_224A9BB34(&qword_281350ED0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
  sub_224A9B6A0(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0);
  sub_224DAF788();
  MEMORY[0x22AA5D760](0, v10, v6, v11);
  _Block_release(v11);
  (*(v15 + 8))(v6, v3);
  (*(v7 + 8))(v10, v14);

  return result;
}

double sub_224A9BE24(char a1)
{
  v2 = v1;
  os_unfair_lock_assert_owner(*(*(v2 + 80) + 16));
  v5 = *(v2 + 72);
  if (a1)
  {
    if (!v5)
    {
      if (qword_281351498 != -1)
      {
        swift_once();
      }

      v6 = sub_224DAB258();
      __swift_project_value_buffer(v6, qword_281364E20);
      v7 = sub_224DAB228();
      v8 = sub_224DAF2A8();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_224A2F000, v7, v8, "Acquiring keep-alive", v9, 2u);
        MEMORY[0x22AA5EED0](v9, -1, -1);
      }

      type metadata accessor for PushFoundation.KeepAliveTransaction(0);
      swift_allocObject();
      PushFoundation.KeepAliveTransaction.init(reason:)(0x616E614D656B6157, 0xEB00000000726567);
      v10 = *(v2 + 72);
      *(v2 + 72) = v11;
      if (v10)
      {

        sub_224A9C084();

LABEL_17:
      }
    }
  }

  else if (v5)
  {
    if (qword_281351498 != -1)
    {
      swift_once();
    }

    v12 = sub_224DAB258();
    __swift_project_value_buffer(v12, qword_281364E20);
    v13 = sub_224DAB228();
    v14 = sub_224DAF2A8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_224A2F000, v13, v14, "Releasing keep-alive", v15, 2u);
      MEMORY[0x22AA5EED0](v15, -1, -1);
    }

    if (*(v2 + 72))
    {

      sub_224A9C084();

      v16 = *(v2 + 72);
      *(v2 + 72) = 0;
      if (v16)
      {
        sub_224A9C084();
        goto LABEL_17;
      }
    }
  }

  return result;
}

void sub_224A9C084()
{
  v1 = v0;
  v2 = *v0;
  v0[2] = 0;
  swift_unknownObjectRelease();
  swift_getObjectType();
  sub_224DAF478();

  v3 = sub_224DAB228();
  v4 = sub_224DAF2A8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12[0] = v6;
    *v5 = 136446210;
    *(v5 + 4) = sub_224A33F74(v1[4], v1[5], v12);
    _os_log_impl(&dword_224A2F000, v3, v4, "Releasing keep-alive with reason: %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x22AA5EED0](v6, -1, -1);
    MEMORY[0x22AA5EED0](v5, -1, -1);
  }

  if (qword_28135B6D0 != -1)
  {
    swift_once();
  }

  v7 = qword_28135B6E0;
  v8 = swift_allocObject();
  *(v8 + 16) = v1;
  *(v8 + 24) = v2;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_224A9C35C;
  *(v9 + 24) = v8;
  v12[4] = sub_224A9C358;
  v12[5] = v9;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_224A9B6F8;
  v12[3] = &block_descriptor_19;
  v10 = _Block_copy(v12);

  dispatch_sync(v7, v10);
  _Block_release(v10);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

uint64_t sub_224A9C31C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_224A9C364(uint64_t a1)
{
  if (qword_28135B6E8 != -1)
  {
    swift_once();
  }

  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  swift_beginAccess();
  v4 = off_28135B6F0;
  if (*(off_28135B6F0 + 2) && (v5 = sub_224A3A40C(v3, v2), (v6 & 1) != 0))
  {
    v7 = *(v4[7] + 8 * v5);
  }

  else
  {
    v7 = 0;
  }

  swift_endAccess();
  v8 = v7 - 1;
  if (__OFSUB__(v7, 1))
  {
    __break(1u);
  }

  else
  {
    if (v8 <= 0)
    {
      if (v7 != 1)
      {

        v10 = sub_224DAB228();
        v11 = sub_224DAF288();

        if (os_log_type_enabled(v10, v11))
        {
          v12 = swift_slowAlloc();
          v13 = swift_slowAlloc();
          v23[0] = v13;
          *v12 = 136446210;
          *(v12 + 4) = sub_224A33F74(v3, v2, v23);
          _os_log_impl(&dword_224A2F000, v10, v11, "Unbalanced acquire/release for keep-alive with reason: %{public}s", v12, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v13);
          MEMORY[0x22AA5EED0](v13, -1, -1);
          MEMORY[0x22AA5EED0](v12, -1, -1);
        }
      }

      swift_beginAccess();

      sub_224A9C6A4(0, 1, v3, v2);
    }

    else
    {
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = off_28135B6F0;
      off_28135B6F0 = 0x8000000000000000;
      sub_224A9B9CC(v8, v3, v2, isUniquelyReferenced_nonNull_native);
      off_28135B6F0 = v22;
    }

    swift_endAccess();
    v14 = sub_224DAB228();
    v15 = sub_224DAF2A8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v23[0] = v17;
      *v16 = 136446210;

      v18 = sub_224DAECF8();
      v20 = v19;

      v21 = sub_224A33F74(v18, v20, v23);

      *(v16 + 4) = v21;
      _os_log_impl(&dword_224A2F000, v14, v15, "Keep-alive reasons: %{public}s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x22AA5EED0](v17, -1, -1);
      MEMORY[0x22AA5EED0](v16, -1, -1);
    }
  }
}

uint64_t sub_224A9C6A4(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    v8 = sub_224A3A40C(a3, a4);
    v10 = v9;

    if (v10)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v5;
      v16 = *v5;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_224B2572C();
        v13 = v16;
      }

      result = sub_224A9C790(v8, v13);
      *v5 = v13;
    }
  }

  else
  {
    v15 = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v4;
    sub_224A9B9CC(a1, a3, a4, v15);

    *v4 = v17;
  }

  return result;
}

uint64_t sub_224A9C790(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_224DAF7A8() + 1) & ~v5;
    do
    {
      sub_224DAFE68();

      sub_224DAEE78();
      v9 = sub_224DAFEA8();

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

uint64_t PushFoundation.KeepAliveTransaction.__deallocating_deinit()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtCO10ChronoCore14PushFoundation20KeepAliveTransaction_logger;
  v2 = sub_224DAB258();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

double sub_224A9CA00(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    swift_beginAccess();
    sub_224A3317C(v3 + 160, v7);
    v4 = v8;
    v5 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    v6 = (*(v5 + 56))(v4, v5);
    __swift_destroy_boxed_opaque_existential_1(v7);
    if (v6)
    {
      sub_224A9CB00(0x6F206E6565726373, 0xE90000000000006ELL);
    }
  }

  return result;
}

uint64_t sub_224A9CB00(char *a1, char *a2)
{
  v4 = v2;
  v7 = sub_224DABE18();
  v8 = *(v7 - 8);
  v63 = v7;
  v64 = v8;
  MEMORY[0x28223BE20](v7, v9);
  v62 = v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  isUniquelyReferenced_nonNull_native = sub_224DA9878();
  v65 = *(isUniquelyReferenced_nonNull_native - 8);
  v13 = MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native, v12);
  v66 = v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v15);
  v17 = v53 - v16;
  v18 = sub_224DAB8C8();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v20);
  v22 = (v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = *(v4 + 56);
  *v22 = v23;
  (*(v19 + 104))(v22, *MEMORY[0x277D85200], v18);
  v24 = v23;
  LOBYTE(v23) = sub_224DAB8F8();
  (*(v19 + 8))(v22, v18);
  if ((v23 & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  __swift_project_boxed_opaque_existential_1((v4 + 200), *(v4 + 224));
  v3 = sub_224DADF78();
  sub_224DA9808();
  if (qword_2813516C8 != -1)
  {
LABEL_26:
    swift_once();
  }

  v25 = sub_224DAB258();
  __swift_project_value_buffer(v25, qword_281365120);

  v26 = sub_224DAB228();
  v27 = sub_224DAF2A8();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = a1;
    a1 = v17;
    v30 = swift_slowAlloc();
    v68[0] = v30;
    *v28 = 134349314;
    *(v28 + 4) = *(v3 + 16);

    *(v28 + 12) = 2082;
    *(v28 + 14) = sub_224A33F74(v29, a2, v68);
    _os_log_impl(&dword_224A2F000, v26, v27, "Found %{public}ld stale widgets for reason: %{public}s", v28, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v30);
    v31 = v30;
    v17 = a1;
    MEMORY[0x22AA5EED0](v31, -1, -1);
    MEMORY[0x22AA5EED0](v28, -1, -1);
  }

  else
  {
  }

  swift_beginAccess();
  *(v4 + 40) = MEMORY[0x277D84F98];

  v61 = *(v3 + 16);
  if (!v61)
  {
    (*(v65 + 8))(v17, isUniquelyReferenced_nonNull_native);
  }

  v32 = 0;
  v60 = v3 + ((*(v64 + 80) + 32) & ~*(v64 + 80));
  v58 = v64 + 8;
  v59 = v64 + 16;
  v57 = (v65 + 16);
  v53[2] = v65 + 32;
  v53[1] = v65 + 40;
  v54 = v4;
  v55 = v17;
  v56 = v3;
  while (1)
  {
    if (v32 >= *(v3 + 16))
    {
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v33 = v63;
    v34 = v64;
    v35 = v62;
    (*(v64 + 16))(v62, v60 + *(v64 + 72) * v32, v63);
    v36 = sub_224DABDB8();
    a1 = v4;
    v4 = sub_224DABDD8();
    a2 = v37;
    (*(v34 + 8))(v35, v33);
    swift_beginAccess();
    v3 = isUniquelyReferenced_nonNull_native;
    (*v57)(v66, v17, isUniquelyReferenced_nonNull_native);
    v17 = v36;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v67 = *(a1 + 4);
    v38 = v67;
    *(a1 + 4) = 0x8000000000000000;
    v40 = sub_224B0C03C(v17, v4, a2);
    v41 = v38[2];
    v42 = (v39 & 1) == 0;
    v43 = v41 + v42;
    if (__OFADD__(v41, v42))
    {
      goto LABEL_23;
    }

    v44 = v39;
    if (v38[3] < v43)
    {
      break;
    }

    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_224B2B68C();
    }

LABEL_17:
    isUniquelyReferenced_nonNull_native = v3;
    v47 = v67;
    v3 = v56;
    if (v44)
    {
      (*(v65 + 40))(v67[7] + *(v65 + 72) * v40, v66, isUniquelyReferenced_nonNull_native);
    }

    else
    {
      v67[(v40 >> 6) + 8] |= 1 << v40;
      v48 = (v47[6] + 24 * v40);
      *v48 = v17;
      v48[1] = v4;
      v48[2] = a2;
      (*(v65 + 32))(v47[7] + *(v65 + 72) * v40, v66, isUniquelyReferenced_nonNull_native);
      v49 = v47[2];
      v50 = __OFADD__(v49, 1);
      v51 = v49 + 1;
      if (v50)
      {
        goto LABEL_24;
      }

      v47[2] = v51;
    }

    ++v32;
    v4 = v54;
    *(v54 + 32) = v47;

    swift_endAccess();

    v17 = v55;
    if (v61 == v32)
    {

      sub_224D96F1C();
      return (*(v65 + 8))(v17, isUniquelyReferenced_nonNull_native);
    }
  }

  sub_224B1B598(v43, isUniquelyReferenced_nonNull_native);
  v45 = sub_224B0C03C(v17, v4, a2);
  if ((v44 & 1) == (v46 & 1))
  {
    v40 = v45;
    goto LABEL_17;
  }

  result = sub_224DAFDD8();
  __break(1u);
  return result;
}

void sub_224A9D208()
{
  v112 = sub_224DAC268();
  v0 = *(v112 - 8);
  MEMORY[0x28223BE20](v112, v1);
  v107 = &v86 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F47F0, &unk_224DB7850);
  v5 = MEMORY[0x28223BE20](v3 - 8, v4);
  v7 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v86 - v9;
  v11 = sub_224DABE18();
  v12 = *(v11 - 8);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v86 = &v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v19 = &v86 - v18;
  MEMORY[0x28223BE20](v17, v20);
  v98 = &v86 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6D30, &qword_224DC2F60);
  v24 = MEMORY[0x28223BE20](v22 - 8, v23);
  v97 = &v86 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v26);
  v95 = &v86 - v27;
  v28 = sub_224DAC148();
  v29 = 0;
  v30 = *(v28 + 64);
  v87 = v28 + 64;
  v90 = v28;
  v31 = 1 << *(v28 + 32);
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  else
  {
    v32 = -1;
  }

  v33 = v32 & v30;
  v34 = (v31 + 63) >> 6;
  v93 = (v12 + 16);
  v101 = (v12 + 32);
  v94 = v12;
  v91 = (v12 + 8);
  v103 = v0 + 32;
  v104 = v0 + 16;
  v88 = MEMORY[0x277D84F90];
  v108 = v0;
  v111 = (v0 + 8);
  v105 = v10;
  v106 = v7;
  v96 = v19;
  v92 = v34;
  v102 = v11;
LABEL_5:
  v35 = v29;
  v36 = v97;
  while (v33)
  {
    v37 = v35;
LABEL_16:
    v100 = (v33 - 1) & v33;
    v39 = __clz(__rbit64(v33)) | (v37 << 6);
    v40 = v90;
    v41 = v94;
    v42 = v102;
    (*(v94 + 16))(v98, *(v90 + 48) + *(v94 + 72) * v39, v102);
    v43 = *(*(v40 + 56) + 8 * v39);
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6D38, &unk_224DC2010);
    v45 = *(v44 + 48);
    v46 = *(v41 + 32);
    v47 = v97;
    v46(v97, v98, v42);
    *&v47[v45] = v43;
    v36 = v47;
    (*(*(v44 - 8) + 56))(v47, 0, 1, v44);

    v99 = v37;
    v19 = v96;
LABEL_17:
    v48 = v95;
    sub_224A44E4C(v36, v95, &qword_27D6F6D30, &qword_224DC2F60);
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6D38, &unk_224DC2010);
    if ((*(*(v49 - 8) + 48))(v48, 1, v49) == 1)
    {

      return;
    }

    v50 = *(v48 + *(v49 + 48));
    v51 = *v101;
    v52 = v48;
    v53 = v102;
    (*v101)(v19, v52, v102);
    v54 = sub_224DABDB8();
    v55 = [v54 isRemote];

    if (v55)
    {
      v89 = v51;
      v56 = 0;
      v110 = v50;
      v57 = v50 + 64;
      v58 = 1 << *(v50 + 32);
      if (v58 < 64)
      {
        v59 = ~(-1 << v58);
      }

      else
      {
        v59 = -1;
      }

      v60 = v59 & *(v50 + 64);
      v61 = (v58 + 63) >> 6;
      v109 = v50 + 64;
      while (v60)
      {
        v62 = v56;
LABEL_35:
        v65 = __clz(__rbit64(v60));
        v60 &= v60 - 1;
        v66 = v65 | (v62 << 6);
        v67 = v110;
        v69 = v107;
        v68 = v108;
        v70 = v112;
        (*(v108 + 16))(v107, *(v110 + 48) + *(v108 + 72) * v66, v112);
        v71 = *(*(v67 + 56) + 8 * v66);
        v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F47F8, &unk_224DC2000);
        v73 = *(v72 + 48);
        v74 = *(v68 + 32);
        v7 = v106;
        v74(v106, v69, v70);
        *&v7[v73] = v71;
        (*(*(v72 - 8) + 56))(v7, 0, 1, v72);
        v75 = v71;
        v10 = v105;
        v57 = v109;
LABEL_36:
        sub_224A44E4C(v7, v10, &qword_27D6F47F0, &unk_224DB7850);
        v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F47F8, &unk_224DC2000);
        if ((*(*(v76 - 8) + 48))(v10, 1, v76) == 1)
        {

          v19 = v96;
          (*v91)(v96, v102);
          v35 = v99;
          v36 = v97;
          goto LABEL_7;
        }

        v77 = *&v10[*(v76 + 48)];
        sub_224DABE68();
        if (v114)
        {
          sub_224A36F98(&v113, v115);
          __swift_project_boxed_opaque_existential_1(v115, v115[3]);
          if (sub_224DAEAE8())
          {
            v19 = v96;
            v80 = v102;
            (*v93)(v86, v96, v102);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v88 = sub_224AD9D64(0, *(v88 + 2) + 1, 1, v88);
            }

            v81 = v89;
            v83 = *(v88 + 2);
            v82 = *(v88 + 3);
            if (v83 >= v82 >> 1)
            {
              v88 = sub_224AD9D64((v82 > 1), v83 + 1, 1, v88);
            }

            v84 = v94;
            (*(v94 + 8))(v19, v80);
            v85 = v88;
            *(v88 + 2) = v83 + 1;
            v81(&v85[((*(v84 + 80) + 32) & ~*(v84 + 80)) + *(v84 + 72) * v83], v86, v80);
            __swift_destroy_boxed_opaque_existential_1(v115);
            (*v111)(v10, v112);
            v34 = v92;
            v33 = v100;
            v29 = v99;
            goto LABEL_5;
          }

          __swift_destroy_boxed_opaque_existential_1(v115);
        }

        else
        {

          sub_224A3311C(&v113, &unk_27D6F3CB0, &unk_224DB7860);
        }

        (*v111)(v10, v112);
      }

      if (v61 <= v56 + 1)
      {
        v63 = v56 + 1;
      }

      else
      {
        v63 = v61;
      }

      v64 = v63 - 1;
      while (1)
      {
        v62 = v56 + 1;
        if (__OFADD__(v56, 1))
        {
          break;
        }

        if (v62 >= v61)
        {
          v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F47F8, &unk_224DC2000);
          (*(*(v78 - 8) + 56))(v7, 1, 1, v78);
          v60 = 0;
          v56 = v64;
          goto LABEL_36;
        }

        v60 = *(v57 + 8 * v62);
        ++v56;
        if (v60)
        {
          v56 = v62;
          goto LABEL_35;
        }
      }

      __break(1u);
      goto LABEL_50;
    }

    (*v91)(v19, v53);

    v35 = v99;
LABEL_7:
    v34 = v92;
    v33 = v100;
  }

  if (v34 <= v35 + 1)
  {
    v38 = v35 + 1;
  }

  else
  {
    v38 = v34;
  }

  while (1)
  {
    v37 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      break;
    }

    if (v37 >= v34)
    {
      v99 = v38 - 1;
      v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6D38, &unk_224DC2010);
      (*(*(v79 - 8) + 56))(v36, 1, 1, v79);
      v100 = 0;
      goto LABEL_17;
    }

    v33 = *(v87 + 8 * v37);
    ++v35;
    if (v33)
    {
      goto LABEL_16;
    }
  }

LABEL_50:
  __break(1u);
}

uint64_t sub_224A9DCC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v26 - v8;
  v10 = *v2;
  sub_224A33088(&qword_281351970, &qword_27D6F3900, &unk_224DB4640, MEMORY[0x277CF9FA8]);
  v32 = a1;
  v11 = sub_224DAED88();
  v30 = v10 + 56;
  v31 = v10;
  v12 = -1 << *(v10 + 32);
  v13 = v11 & ~v12;
  if ((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v27 = v2;
    v28 = v6;
    v29 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v19 = v18 * v13;
      v15(v9, *(v31 + 48) + v18 * v13, v5);
      sub_224A33088(&unk_281351960, &qword_27D6F3900, &unk_224DB4640, MEMORY[0x277CF9FB0]);
      v20 = sub_224DAEDD8();
      (*(v16 - 8))(v9, v5);
      if (v20)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v30 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v21 = 1;
        v6 = v28;
        a2 = v29;
        return (*(v6 + 56))(a2, v21, 1, v5);
      }
    }

    v22 = v27;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v22;
    v33 = *v22;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_224AE466C();
      v24 = v33;
    }

    v6 = v28;
    a2 = v29;
    (*(v28 + 32))(v29, *(v24 + 48) + v19, v5);
    sub_224A9DF9C(v13, &qword_27D6F3900, &unk_224DB4640, &qword_281351970, MEMORY[0x277CF9FA8]);
    v21 = 0;
    *v22 = v33;
  }

  else
  {
    v21 = 1;
  }

  return (*(v6 + 56))(a2, v21, 1, v5);
}

void sub_224A9DF9C(int64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4, uint64_t a5)
{
  v42 = a4;
  v43 = a5;
  v40 = a2;
  v41 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v37 - v10;
  v12 = *v5;
  v13 = *v5 + 56;
  v14 = -1 << *(*v5 + 32);
  v15 = (a1 + 1) & ~v14;
  if (((1 << v15) & *(v13 + 8 * (v15 >> 6))) != 0)
  {
    v16 = ~v14;

    v17 = sub_224DAF7A8();
    if ((*(v13 + 8 * (v15 >> 6)) & (1 << v15)) != 0)
    {
      v38 = (v17 + 1) & v16;
      v37 = *(v8 + 16);
      v44 = *(v8 + 72);
      v39 = v8 + 16;
      v18 = (v8 + 8);
      v19 = v12;
      v20 = v16;
      while (1)
      {
        v21 = v13;
        v22 = v44 * v15;
        v23 = v20;
        v37(v11, *(v19 + 48) + v44 * v15, v7);
        v24 = v19;
        sub_224A33088(v42, v40, v41, v43);
        v25 = sub_224DAED88();
        (*v18)(v11, v7);
        v20 = v23;
        v26 = v25 & v23;
        if (a1 >= v38)
        {
          if (v26 < v38 || a1 < v26)
          {
LABEL_4:
            v19 = v24;
            goto LABEL_5;
          }
        }

        else if (v26 < v38 && a1 < v26)
        {
          goto LABEL_4;
        }

        v19 = v24;
        v29 = *(v24 + 48);
        v30 = v44 * a1;
        v31 = v29 + v44 * a1;
        v32 = v29 + v22 + v44;
        if (v44 * a1 < v22 || v31 >= v32)
        {
          swift_arrayInitWithTakeFrontToBack();
LABEL_24:
          v20 = v23;
          a1 = v15;
          goto LABEL_5;
        }

        a1 = v15;
        if (v30 != v22)
        {
          swift_arrayInitWithTakeBackToFront();
          goto LABEL_24;
        }

LABEL_5:
        v15 = (v15 + 1) & v20;
        v13 = v21;
        if (((*(v21 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
        {

          goto LABEL_28;
        }
      }
    }

    v19 = v12;
LABEL_28:
    *(v13 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v13 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
    v19 = v12;
  }

  v34 = *(v19 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v19 + 16) = v36;
    ++*(v19 + 36);
  }
}

uint64_t sub_224A9E29C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  v4 = sub_224DAEEC8();
  if (v5)
  {
    v6 = v4;
    v7 = v5;
    do
    {
      v10 = sub_224DAEEC8();
      if (!v11)
      {

        return 1;
      }

      if (v6 == v10 && v7 == v11)
      {
      }

      else
      {
        v8 = sub_224DAFD88();

        if ((v8 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v6 = sub_224DAEEC8();
      v7 = v9;
    }

    while (v9);
  }

  sub_224DAEEC8();
  v13 = v12;

  if (!v13)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

uint64_t sub_224A9E3F8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v31 - v11;
  v13 = *v3;
  v15 = sub_224A3AD28(a2, &qword_27D6F3900, &unk_224DB4640, &qword_281351970, &unk_281351960);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_224B2669C();
      goto LABEL_7;
    }

    sub_224A9E668(v18, a3 & 1);
    v29 = sub_224A3AD28(a2, &qword_27D6F3900, &unk_224DB4640, &qword_281351970, &unk_281351960);
    if ((v19 & 1) == (v30 & 1))
    {
      v15 = v29;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_224A9EB14(v15, v12, a1, v21, &qword_27D6F3900, &unk_224DB4640, MEMORY[0x277CF9A10]);
    }

LABEL_15:
    result = sub_224DAFDD8();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = sub_224DAC378();
  v24 = *(v23 - 8);
  v25 = *(v24 + 40);
  v26 = v23;
  v27 = v22 + *(v24 + 72) * v15;

  return v25(v27, a1, v26);
}

void sub_224A9E668(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v55 = sub_224DAC378();
  v5 = *(v55 - 8);
  MEMORY[0x28223BE20](v55, v6);
  v54 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v56 = &v43 - v11;
  v12 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3CE0, &qword_224DB4990);
  v50 = v4;
  v13 = sub_224DAFB98();
  v14 = v13;
  if (*(v12 + 16))
  {
    v15 = 0;
    v16 = v9;
    v17 = (v12 + 64);
    v18 = 1 << *(v12 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v12 + 64);
    v21 = (v18 + 63) >> 6;
    v46 = (v16 + 16);
    v47 = v16;
    v44 = v2;
    v45 = v5 + 16;
    v48 = v12;
    v49 = v5;
    v51 = (v5 + 32);
    v52 = (v16 + 32);
    v22 = v13 + 64;
    v23 = v16;
    while (v20)
    {
      v25 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_15:
      v28 = v25 | (v15 << 6);
      v29 = *(v12 + 48);
      v53 = *(v23 + 72);
      v30 = v29 + v53 * v28;
      if (v50)
      {
        (*v52)(v56, v30, v8);
        v31 = *(v12 + 56);
        v32 = *(v49 + 72);
        (*(v49 + 32))(v54, v31 + v32 * v28, v55);
      }

      else
      {
        (*v46)(v56, v30, v8);
        v33 = *(v12 + 56);
        v32 = *(v49 + 72);
        (*(v49 + 16))(v54, v33 + v32 * v28, v55);
      }

      sub_224A33088(&qword_281351970, &qword_27D6F3900, &unk_224DB4640, MEMORY[0x277CF9FA8]);
      v34 = sub_224DAED88();
      v35 = -1 << *(v14 + 32);
      v36 = v34 & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v22 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v22 + 8 * v37);
          if (v41 != -1)
          {
            v24 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v24 = __clz(__rbit64((-1 << v36) & ~*(v22 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v22 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      (*v52)((*(v14 + 48) + v53 * v24), v56, v8);
      (*v51)(*(v14 + 56) + v32 * v24, v54, v55);
      ++*(v14 + 16);
      v23 = v47;
      v12 = v48;
    }

    v26 = v15;
    while (1)
    {
      v15 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v15 >= v21)
      {
        break;
      }

      v27 = v17[v15];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v20 = (v27 - 1) & v27;
        goto LABEL_15;
      }
    }

    if ((v50 & 1) == 0)
    {

      v3 = v44;
      goto LABEL_34;
    }

    v42 = 1 << *(v12 + 32);
    v3 = v44;
    if (v42 >= 64)
    {
      bzero(v17, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v42;
    }

    *(v12 + 16) = 0;
  }

LABEL_34:
  *v3 = v14;
}

uint64_t sub_224A9EB14(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v12 = a4[6];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  (*(*(v13 - 8) + 32))(v12 + *(*(v13 - 8) + 72) * a1, a2, v13);
  v14 = a4[7];
  v15 = a7(0);
  result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * a1, a3, v15);
  v17 = a4[2];
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v19;
  }

  return result;
}

void sub_224A9EC1C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock);
    os_unfair_lock_lock(*(v4 + 16));
    sub_224A9ECB4(v3);
    os_unfair_lock_unlock(*(v4 + 16));
  }
}

uint64_t sub_224A9ECB4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v84 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v10 = &v79 - v9;
  MEMORY[0x28223BE20](v8, v11);
  v98 = &v79 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F41D0, &qword_224DB5C18);
  v15 = MEMORY[0x28223BE20](v13 - 8, v14);
  v96 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v17);
  v93 = &v79 - v18;
  v19 = sub_224DAC378();
  v20 = *(v19 - 8);
  v22 = MEMORY[0x28223BE20](v19, v21);
  v24 = &v79 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v22, v25);
  v86 = &v79 - v27;
  MEMORY[0x28223BE20](v26, v28);
  v105 = MEMORY[0x277D84FA0];
  v95 = &v79 - v29;
  sub_224DAC338();
  v30 = OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_formerlyVisibleApplicationBundleIdentifiers;
  swift_beginAccess();
  v81 = a1;
  v80 = v30;
  v31 = *(a1 + v30);
  v32 = v24;
  v33 = *(v31 + 64);
  v83 = v31 + 64;
  v34 = 1 << *(v31 + 32);
  v35 = -1;
  if (v34 < 64)
  {
    v35 = ~(-1 << v34);
  }

  v36 = v35 & v33;
  v82 = (v34 + 63) >> 6;
  v97 = (v3 + 16);
  v85 = v20 + 16;
  v100 = (v20 + 32);
  v101 = (v3 + 32);
  v88 = v20;
  v94 = (v20 + 8);
  v90 = v3;
  v91 = v31;
  v92 = (v3 + 8);

  v37 = 0;
  v89 = v10;
  v87 = v32;
  v102 = v2;
  v103 = v19;
  if (!v36)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v38 = v37;
LABEL_14:
    v42 = __clz(__rbit64(v36));
    v36 &= v36 - 1;
    v43 = v42 | (v38 << 6);
    v45 = v90;
    v44 = v91;
    v46 = v98;
    v47 = v102;
    (*(v90 + 16))(v98, *(v91 + 48) + *(v90 + 72) * v43, v102);
    v48 = v88;
    v49 = *(v44 + 56) + *(v88 + 72) * v43;
    v50 = v86;
    v51 = v103;
    (*(v88 + 16))(v86, v49, v103);
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F41D8, &qword_224DB5C20);
    v99 = *(v52 + 48);
    v53 = *(v45 + 32);
    v41 = v96;
    v53(v96, v46, v47);
    (*(v48 + 32))(v41 + v99, v50, v51);
    (*(*(v52 - 8) + 56))(v41, 0, 1, v52);
    v40 = v38;
    v10 = v89;
    v32 = v87;
LABEL_15:
    v54 = v93;
    sub_224A44E4C(v41, v93, &qword_27D6F41D0, &qword_224DB5C18);
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F41D8, &qword_224DB5C20);
    if ((*(*(v55 - 8) + 48))(v54, 1, v55) == 1)
    {
      break;
    }

    v56 = *(v55 + 48);
    v57 = v102;
    (*v101)(v10, v54, v102);
    v58 = v54 + v56;
    v59 = v103;
    (*v100)(v32, v58, v103);
    if (sub_224DAC318())
    {
      v60 = v84;
      (*v97)(v84, v10, v57);
      v61 = v98;
      sub_224A3A634(v98, v60);
      v62 = *v92;
      (*v92)(v61, v57);
      (*v94)(v32, v59);
      v62(v10, v57);
      v37 = v40;
      if (!v36)
      {
LABEL_7:
        if (v82 <= v37 + 1)
        {
          v39 = v37 + 1;
        }

        else
        {
          v39 = v82;
        }

        v40 = v39 - 1;
        v41 = v96;
        while (1)
        {
          v38 = v37 + 1;
          if (__OFADD__(v37, 1))
          {
            break;
          }

          if (v38 >= v82)
          {
            v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F41D8, &qword_224DB5C20);
            (*(*(v63 - 8) + 56))(v41, 1, 1, v63);
            v36 = 0;
            goto LABEL_15;
          }

          v36 = *(v83 + 8 * v38);
          ++v37;
          if (v36)
          {
            goto LABEL_14;
          }
        }

        __break(1u);
        goto LABEL_25;
      }
    }

    else
    {
      (*v94)(v32, v59);
      (*v92)(v10, v57);
      v37 = v40;
      if (!v36)
      {
        goto LABEL_7;
      }
    }
  }

  if (qword_281351610 == -1)
  {
    goto LABEL_21;
  }

LABEL_25:
  swift_once();
LABEL_21:
  v64 = sub_224DAB258();
  __swift_project_value_buffer(v64, qword_281364FD0);
  v65 = sub_224DAB228();
  v66 = sub_224DAF2A8();
  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v104 = v68;
    *v67 = 136446210;
    swift_beginAccess();
    sub_224A33088(&qword_281351970, &qword_27D6F3900, &unk_224DB4640, MEMORY[0x277CF9FA8]);

    v69 = sub_224DAF1C8();
    v71 = v70;

    v72 = sub_224A33F74(v69, v71, &v104);

    *(v67 + 4) = v72;
    _os_log_impl(&dword_224A2F000, v65, v66, "Visible grace period expired for: %{public}s", v67, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v68);
    MEMORY[0x22AA5EED0](v68, -1, -1);
    MEMORY[0x22AA5EED0](v67, -1, -1);
  }

  v73 = v81;
  v74 = v103;
  v75 = v80;

  v77 = sub_224AA0118(v76, &v105);

  *(v73 + v75) = v77;

  sub_224A3AFF0();
  (*v94)(v95, v74);
}

uint64_t sub_224A9F584()
{
  v0 = type metadata accessor for FileReaperScenario(0);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for FileReaperProtectionConfiguration(0);
  (*(*(v4 - 8) + 56))(v3, 2, 4, v4);
  sub_224A9F678(v3, 0);

  return sub_224CCFA48(v3, type metadata accessor for FileReaperScenario);
}

uint64_t sub_224A9F678(uint64_t a1, int a2)
{
  v3 = v2;
  LODWORD(v4) = a2;
  v6 = type metadata accessor for FileReaperProtectionConfiguration(0);
  v8 = MEMORY[0x28223BE20](v6 - 8, v7);
  v10 = &v38[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v38[-v12];
  v14 = sub_224DAB8C8();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v38[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = *(v3 + 416);
  *v18 = v19;
  (*(v15 + 104))(v18, *MEMORY[0x277D85200], v14);
  v20 = v19;
  LOBYTE(v19) = sub_224DAB8F8();
  (*(v15 + 8))(v18, v14);
  if ((v19 & 1) == 0)
  {
    __break(1u);
LABEL_14:
    swift_once();
    goto LABEL_4;
  }

  if ((sub_224A9FB0C(a1) & 1) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  sub_224CCEB54(a1, v13);
  if (qword_281351470 != -1)
  {
    goto LABEL_14;
  }

LABEL_4:
  v21 = sub_224DAB258();
  __swift_project_value_buffer(v21, qword_281364DD8);
  sub_224CCF9E0(v13, v10, type metadata accessor for FileReaperProtectionConfiguration);
  v22 = sub_224DAB228();
  v23 = sub_224DAF2A8();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v39 = v4;
    v4 = v25;
    v40 = v25;
    *v24 = 136446210;
    v26 = sub_224AA3FE8();
    v28 = v27;
    sub_224CCFA48(v10, type metadata accessor for FileReaperProtectionConfiguration);
    v29 = sub_224A33F74(v26, v28, &v40);

    *(v24 + 4) = v29;
    _os_log_impl(&dword_224A2F000, v22, v23, "Begin reap session with configuration: %{public}s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v4);
    v30 = v4;
    LOBYTE(v4) = v39;
    MEMORY[0x22AA5EED0](v30, -1, -1);
    MEMORY[0x22AA5EED0](v24, -1, -1);
  }

  else
  {

    sub_224CCFA48(v10, type metadata accessor for FileReaperProtectionConfiguration);
  }

  v32 = sub_224AA43B0(v13);
  *&v38[-16] = MEMORY[0x28223BE20](v32, v33);
  v38[-8] = v4 & 1;
  sub_224DAF3E8();
  v31 = v40;
  v34 = sub_224DAB228();
  v35 = sub_224DAF2A8();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_224A2F000, v34, v35, "End reap session", v36, 2u);
    MEMORY[0x22AA5EED0](v36, -1, -1);
  }

  else
  {
  }

  sub_224CCFA48(v13, type metadata accessor for FileReaperProtectionConfiguration);
  return v31;
}

uint64_t sub_224A9FB0C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for FileReaperScenario(0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_224DAB8C8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = (&v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v2 + 416);
  *v12 = v13;
  (*(v9 + 104))(v12, *MEMORY[0x277D85200], v8);
  v14 = v13;
  LOBYTE(v13) = sub_224DAB8F8();
  (*(v9 + 8))(v12, v8);
  if ((v13 & 1) == 0)
  {
    __break(1u);
    goto LABEL_26;
  }

  __swift_project_boxed_opaque_existential_1((v2 + 160), *(v2 + 184));
  if ((sub_224DAA158() & 1) == 0)
  {
    if (qword_281351470 == -1)
    {
LABEL_9:
      v17 = sub_224DAB258();
      __swift_project_value_buffer(v17, qword_281364DD8);
      v18 = sub_224DAB228();
      v19 = sub_224DAF2A8();
      if (!os_log_type_enabled(v18, v19))
      {
LABEL_12:

        return 0;
      }

      v20 = swift_slowAlloc();
      *v20 = 0;
      v21 = "Cannot reap before first unlock";
LABEL_11:
      _os_log_impl(&dword_224A2F000, v18, v19, v21, v20, 2u);
      MEMORY[0x22AA5EED0](v20, -1, -1);
      goto LABEL_12;
    }

LABEL_26:
    swift_once();
    goto LABEL_9;
  }

  sub_224CCF9E0(a1, v7, type metadata accessor for FileReaperScenario);
  v15 = type metadata accessor for FileReaperProtectionConfiguration(0);
  v16 = (*(*(v15 - 8) + 48))(v7, 4, v15);
  if (v16 > 2)
  {
    return 1;
  }

  if (!v16)
  {
    sub_224CCFA48(v7, type metadata accessor for FileReaperScenario);
    return 1;
  }

  if (v16 == 1)
  {
    if ((*(v2 + 16) & 1) == 0)
    {
      goto LABEL_17;
    }

    return 1;
  }

  v23 = IOPSCopyExternalPowerAdapterDetails();
  if (!v23)
  {
    if (qword_281351470 != -1)
    {
      swift_once();
    }

    v25 = sub_224DAB258();
    __swift_project_value_buffer(v25, qword_281364DD8);
    v18 = sub_224DAB228();
    v19 = sub_224DAF2A8();
    if (!os_log_type_enabled(v18, v19))
    {
      goto LABEL_12;
    }

    v20 = swift_slowAlloc();
    *v20 = 0;
    v21 = "Cannot reap when not connected to power";
    goto LABEL_11;
  }

  if ((*(v2 + 16) & 1) == 0)
  {
LABEL_17:
    if (qword_281351470 != -1)
    {
      swift_once();
    }

    v24 = sub_224DAB258();
    __swift_project_value_buffer(v24, qword_281364DD8);
    v18 = sub_224DAB228();
    v19 = sub_224DAF2A8();
    if (!os_log_type_enabled(v18, v19))
    {
      goto LABEL_12;
    }

    v20 = swift_slowAlloc();
    *v20 = 0;
    v21 = "Cannot reap due to user preference";
    goto LABEL_11;
  }

  return 1;
}

uint64_t sub_224A9FF1C()
{
  v1 = v0;
  v2 = type metadata accessor for FileReaperProtectionConfiguration(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FileReaperScenario(0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_224C5BF4C(v1, v10);
  v11 = (*(v3 + 48))(v10, 4, v2);
  if (v11 <= 1)
  {
    if (v11)
    {
      return 0x6F6974617267696DLL;
    }

    else
    {
      sub_224C5BFB0(v10, v6);
      v15[0] = 0x286D6F74737563;
      v15[1] = 0xE700000000000000;
      v13 = sub_224AA3FE8();
      MEMORY[0x22AA5D210](v13);

      MEMORY[0x22AA5D210](41, 0xE100000000000000);
      v14 = v15[0];
      sub_224C5C014(v6);
      return v14;
    }
  }

  else if (v11 == 2)
  {
    return 0x6369646F69726570;
  }

  else if (v11 == 3)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x7465736572;
  }
}

void *sub_224AA0118(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v5 = a1;
  v18[1] = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = (1 << v6) + 63;
  v9 = v8 >> 6;
  v10 = 8 * (v8 >> 6);
  if (v7 <= 0xD)
  {
    goto LABEL_2;
  }

  v14 = 8 * (v8 >> 6);

  if (swift_stdlib_isStackAllocationSafe())
  {

    v10 = v14;
LABEL_2:
    MEMORY[0x28223BE20](a1, v10);
    v12 = v18 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v12, v11);
    result = sub_224AA0284(v12, v9, v5, a2);
    if (v3)
    {
      return swift_willThrow();
    }

    return result;
  }

  v15 = swift_slowAlloc();
  v16 = v3;
  v17 = sub_224B48334(v15, v9, v5, a2);
  result = MEMORY[0x22AA5EED0](v15, -1, -1);
  if (!v16)
  {
    return v17;
  }

  return result;
}

uint64_t sub_224AA0284(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v50[0] = a2;
  v52 = a1;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F41D8, &qword_224DB5C20);
  MEMORY[0x28223BE20](v59, v6);
  v8 = v50 - v7;
  v9 = sub_224DAC378();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v15 = *(v14 - 8);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v19 = v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v20);
  v67 = v50 - v21;
  v61 = a3;
  v22 = *(a3 + 64);
  v51 = a3 + 64;
  v23 = 1 << *(a3 + 32);
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  else
  {
    v24 = -1;
  }

  v66 = v24 & v22;
  v60 = a4;
  result = swift_beginAccess();
  v62 = 0;
  v26 = 0;
  v27 = (v23 + 63) >> 6;
  v71 = v15 + 16;
  v57 = v15;
  v58 = v10;
  v70 = (v15 + 8);
  v54 = (v10 + 8);
  v55 = v10 + 16;
  v56 = v27;
  v53 = v9;
  v65 = v13;
  while (v66)
  {
    v28 = __clz(__rbit64(v66));
    v66 &= v66 - 1;
    v64 = v26;
    v29 = v28 | (v26 << 6);
LABEL_13:
    v33 = v61;
    v34 = v61[6];
    v69 = *(v57 + 72);
    v35 = *(v57 + 16);
    v35(v67, v34 + v69 * v29, v14);
    v36 = v33[7];
    v37 = *(v58 + 72);
    v63 = v29;
    v38 = *(v58 + 16);
    v39 = v65;
    v38(v65, v36 + v37 * v29, v9);
    v68 = v35;
    v35(v8, v67, v14);
    v40 = v39;
    v38(&v8[*(v59 + 48)], v39, v9);
    v41 = *v60;
    if (!*(*v60 + 16))
    {
      goto LABEL_19;
    }

    sub_224A33088(&qword_281351970, &qword_27D6F3900, &unk_224DB4640, MEMORY[0x277CF9FA8]);

    v42 = v8;
    v43 = sub_224DAED88();
    v44 = -1 << *(v41 + 32);
    v45 = v43 & ~v44;
    if ((*(v41 + 56 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45))
    {
      v46 = ~v44;
      while (1)
      {
        v68(v19, *(v41 + 48) + v45 * v69, v14);
        sub_224A33088(&unk_281351960, &qword_27D6F3900, &unk_224DB4640, MEMORY[0x277CF9FB0]);
        v47 = sub_224DAEDD8();
        v48 = *v70;
        (*v70)(v19, v14);
        if (v47)
        {
          break;
        }

        v45 = (v45 + 1) & v46;
        if (((*(v41 + 56 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      v8 = v42;
      sub_224A3311C(v42, &qword_27D6F41D8, &qword_224DB5C20);
      v9 = v53;
      (*v54)(v65, v53);
      result = v48(v67, v14);
      v27 = v56;
      v26 = v64;
    }

    else
    {
LABEL_18:

      v8 = v42;
      v9 = v53;
      v40 = v65;
LABEL_19:
      sub_224A3311C(v8, &qword_27D6F41D8, &qword_224DB5C20);
      (*v54)(v40, v9);
      result = (*v70)(v67, v14);
      *(v52 + ((v63 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v63;
      v49 = __OFADD__(v62++, 1);
      v27 = v56;
      v26 = v64;
      if (v49)
      {
        __break(1u);
        return sub_224AA0868(v52, v50[0], v62, v61);
      }
    }
  }

  v30 = v26;
  while (1)
  {
    v31 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v31 >= v27)
    {
      return sub_224AA0868(v52, v50[0], v62, v61);
    }

    v32 = *(v51 + 8 * v31);
    ++v30;
    if (v32)
    {
      v66 = (v32 - 1) & v32;
      v64 = v31;
      v29 = __clz(__rbit64(v32)) | (v31 << 6);
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_224AA0868(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v62 = sub_224DAC378();
  v58 = *(v62 - 8);
  v9 = MEMORY[0x28223BE20](v62, v8);
  v61 = v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v11);
  v52 = v48 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v57 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13, v14);
  v60 = v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v17);
  v51 = v48 - v18;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3CE0, &qword_224DB4990);
  result = sub_224DAFBB8();
  v20 = result;
  if (a2 < 1)
  {
    v21 = 0;
  }

  else
  {
    v21 = *a1;
  }

  v22 = 0;
  v48[3] = v57 + 16;
  v49 = a2;
  v59 = v57 + 32;
  v23 = result + 64;
  v50 = a1;
  v48[0] = a4;
  v48[1] = v58 + 32;
  v48[2] = v58 + 16;
  while (v21)
  {
    v24 = __clz(__rbit64(v21));
    v53 = (v21 - 1) & v21;
LABEL_16:
    v27 = v24 | (v22 << 6);
    v28 = a4[6];
    v29 = v57;
    v56 = *(v57 + 72);
    v30 = v51;
    (*(v57 + 16))(v51, v28 + v56 * v27, v13);
    v31 = a4[7];
    v32 = v58;
    v55 = *(v58 + 72);
    v33 = v31 + v55 * v27;
    v34 = v13;
    v35 = v52;
    v36 = v62;
    (*(v58 + 16))(v52, v33, v62);
    v54 = *(v29 + 32);
    v54(v60, v30, v34);
    v37 = *(v32 + 32);
    v38 = v35;
    v13 = v34;
    v37(v61, v38, v36);
    sub_224A33088(&qword_281351970, &qword_27D6F3900, &unk_224DB4640, MEMORY[0x277CF9FA8]);
    result = sub_224DAED88();
    v39 = -1 << *(v20 + 32);
    v40 = result & ~v39;
    v41 = v40 >> 6;
    if (((-1 << v40) & ~*(v23 + 8 * (v40 >> 6))) == 0)
    {
      v43 = 0;
      v44 = (63 - v39) >> 6;
      a2 = v49;
      a1 = v50;
      while (++v41 != v44 || (v43 & 1) == 0)
      {
        v45 = v41 == v44;
        if (v41 == v44)
        {
          v41 = 0;
        }

        v43 |= v45;
        v46 = *(v23 + 8 * v41);
        if (v46 != -1)
        {
          v42 = __clz(__rbit64(~v46)) + (v41 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v42 = __clz(__rbit64((-1 << v40) & ~*(v23 + 8 * (v40 >> 6)))) | v40 & 0x7FFFFFFFFFFFFFC0;
    a2 = v49;
    a1 = v50;
LABEL_26:
    *(v23 + ((v42 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v42;
    v54((*(v20 + 48) + v42 * v56), v60, v34);
    result = (v37)(*(v20 + 56) + v42 * v55, v61, v62);
    ++*(v20 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v48[0];
    v21 = v53;
    if (!a3)
    {
      return v20;
    }
  }

  v25 = v22;
  while (1)
  {
    v22 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v22 >= a2)
    {
      return v20;
    }

    v26 = a1[v22];
    ++v25;
    if (v26)
    {
      v24 = __clz(__rbit64(v26));
      v53 = (v26 - 1) & v26;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void sub_224AA0D1C(uint64_t *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_224AA0D78();
  }
}

void sub_224AA0D78()
{
  v1 = v0;
  v2 = sub_224DA9B28();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v109 = *(v104 - 8);
  v8 = MEMORY[0x28223BE20](v104, v7);
  v103 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v102 = &v69 - v11;
  v105 = sub_224DA9C38();
  v99 = *(v105 - 8);
  v13 = MEMORY[0x28223BE20](v105, v12);
  v95 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v69 - v16;
  v80 = sub_224DA9C18();
  MEMORY[0x28223BE20](v80, v18);
  v20 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_224DA9AE8();
  v108 = *(v21 - 8);
  v23 = MEMORY[0x28223BE20](v21, v22);
  v75 = &v69 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v25);
  v79 = &v69 - v26;
  v81 = sub_224DA9B98();
  v27 = *(v81 - 8);
  MEMORY[0x28223BE20](v81, v28);
  v106 = &v69 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_224DA9B68();
  MEMORY[0x28223BE20](v30, v31);
  v36 = &v69 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x277D84FA0];
  v110 = MEMORY[0x277D84FA0];
  v91 = *(v35 + 16);
  if (v91)
  {
    v70 = v1;
    v38 = 0;
    v40 = *(v34 + 16);
    v39 = v34 + 16;
    v87 = v40;
    v86 = v35 + ((*(v39 + 64) + 32) & ~*(v39 + 64));
    v85 = *(v39 + 56);
    v84 = (v27 + 88);
    v83 = *MEMORY[0x277CB9600];
    v78 = (v27 + 8);
    v77 = (v108 + 1);
    v100 = (v109 + 8);
    v101 = (v99 + 4);
    v108 = (v3 + 88);
    v109 = v3 + 16;
    v107 = *MEMORY[0x277CB9348];
    v94 = (v3 + 8);
    v71 = v3;
    v93 = (v3 + 96);
    ++v99;
    v82 = (v39 - 8);
    v41 = v81;
    v42 = v106;
    v88 = &v69 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
    v74 = v17;
    v73 = v20;
    v72 = v21;
    v90 = v33;
    v89 = v39;
    do
    {
      v92 = v38;
      v87(v36, v86 + v85 * v38, v33);
      sub_224DA9B58();
      v45 = (*v84)(v42, v41);
      if (v45 == v83)
      {
        v46 = v79;
        sub_224DA9B48();
        sub_224DA9A98();
        v47 = *v77;
        (*v77)(v46, v21);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v98 = *v101;
          v98(v17, v20, v105);
          sub_224DA9C28();
          v48 = v103;
          sub_224DA9FF8();
          v49 = v102;
          sub_224A3A634(v102, v48);
          v97 = *v100;
          v97(v49, v104);
          v50 = v75;
          sub_224DA9B48();
          v51 = sub_224DA9AB8();
          v47(v50, v21);
          v52 = *(v51 + 16);
          if (v52)
          {
            v53 = (*(v71 + 80) + 32) & ~*(v71 + 80);
            v76 = v51;
            v54 = v51 + v53;
            v55 = *(v71 + 72);
            v42 = v106;
            v96 = *(v71 + 16);
            v56 = v96;
            v96(v6, v54, v2);
            while (1)
            {
              v57 = (*v108)(v6, v2);
              if (v57 == v107)
              {
                (*v93)(v6, v2);
                v58 = v95;
                v59 = v6;
                v60 = v6;
                v61 = v105;
                v98(v95, v59, v105);
                sub_224DA9C28();
                v62 = v103;
                sub_224DA9FF8();
                v63 = v2;
                v64 = v102;
                sub_224A3A634(v102, v62);
                v65 = v64;
                v2 = v63;
                v97(v65, v104);
                v66 = v58;
                v56 = v96;
                v67 = v61;
                v6 = v60;
                v42 = v106;
                (*v99)(v66, v67);
              }

              else
              {
                (*v94)(v6, v2);
              }

              v54 += v55;
              if (!--v52)
              {
                break;
              }

              v56(v6, v54, v2);
            }
          }

          else
          {

            v42 = v106;
          }

          v17 = v74;
          (*v99)(v74, v105);
          v20 = v73;
          v21 = v72;
          v41 = v81;
        }

        else
        {
          sub_224B48750(v20);
          v41 = v81;
          v42 = v106;
        }
      }

      else
      {
        (*v78)(v42, v41);
      }

      v43 = v92 + 1;
      v36 = v88;
      v44 = v90;
      (*v82)(v88, v90);
      v38 = v43;
      v33 = v44;
    }

    while (v43 != v91);
    v37 = v110;
    v1 = v70;
  }

  v68 = *(v1 + OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock);
  os_unfair_lock_lock(*(v68 + 16));
  sub_224AA16C0(v37, v1);

  os_unfair_lock_unlock(*(v68 + 16));
}

uint64_t sub_224AA16C0(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_sceneBackedActivityBundleIdentifiers;
  v5 = *(a2 + OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_sceneBackedActivityBundleIdentifiers);
  if (a1[2] <= *(v5 + 16) >> 3)
  {
    v34 = *(a2 + OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_sceneBackedActivityBundleIdentifiers);

    sub_224AA25AC(a1);
    v6 = v34;
  }

  else
  {

    v6 = sub_224AA1B44(a1, v5);
  }

  v7 = *(v2 + v4);
  if (*(v7 + 16) <= a1[2] >> 3)
  {
    v34 = a1;

    sub_224AA25AC(v7);

    v8 = a1;
  }

  else
  {

    v8 = sub_224AA1B44(v7, a1);
  }

  v9 = &unk_281351000;
  if (*(v8 + 16))
  {
    if (qword_281351610 != -1)
    {
      swift_once();
    }

    v10 = sub_224DAB258();
    __swift_project_value_buffer(v10, qword_281364FD0);

    v11 = sub_224DAB228();
    v12 = sub_224DAF2A8();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v34 = v14;
      *v13 = 136380675;
      v30 = v4;
      v32 = v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
      sub_224A33088(&qword_281351970, &qword_27D6F3900, &unk_224DB4640, MEMORY[0x277CF9FA8]);
      v15 = sub_224DAF1C8();
      v17 = v16;

      v18 = sub_224A33F74(v15, v17, &v34);
      v4 = v30;

      *(v13 + 4) = v18;
      v2 = v32;
      _os_log_impl(&dword_224A2F000, v11, v12, "Bundle identifiers started running scene-backed activities: %{private}s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x22AA5EED0](v14, -1, -1);
      v19 = v13;
      v9 = &unk_281351000;
      MEMORY[0x22AA5EED0](v19, -1, -1);
    }

    else
    {
    }

    if (*(v6 + 16))
    {
      goto LABEL_16;
    }

LABEL_13:

    goto LABEL_22;
  }

  if (!*(v6 + 16))
  {
    goto LABEL_13;
  }

LABEL_16:
  if (v9[194] != -1)
  {
    swift_once();
  }

  v20 = sub_224DAB258();
  __swift_project_value_buffer(v20, qword_281364FD0);

  v21 = sub_224DAB228();
  v22 = sub_224DAF2A8();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v34 = v24;
    *v23 = 136380675;
    v31 = v4;
    v33 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
    sub_224A33088(&qword_281351970, &qword_27D6F3900, &unk_224DB4640, MEMORY[0x277CF9FA8]);
    v25 = sub_224DAF1C8();
    v27 = v26;

    v28 = sub_224A33F74(v25, v27, &v34);
    v4 = v31;

    *(v23 + 4) = v28;
    v2 = v33;
    _os_log_impl(&dword_224A2F000, v21, v22, "Bundle identifiers stopped running scene-backed activities: %{private}s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    MEMORY[0x22AA5EED0](v24, -1, -1);
    MEMORY[0x22AA5EED0](v23, -1, -1);
  }

  else
  {
  }

LABEL_22:
  *(v2 + v4) = a1;
}

uint64_t sub_224AA1B44(unint64_t a1, uint64_t a2)
{
  v100 = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  v6 = MEMORY[0x28223BE20](v4 - 8, v5);
  v8 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v74 = (&v72 - v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v12 = *(v11 - 8);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v92 = (&v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = MEMORY[0x28223BE20](v14, v16);
  v19 = (&v72 - v18);
  MEMORY[0x28223BE20](v17, v20);
  v87 = (&v72 - v21);
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v76 = v8;
  v23 = a1 + 56;
  v22 = *(a1 + 56);
  v24 = -1 << *(a1 + 32);
  v73 = ~v24;
  if (-v24 < 64)
  {
    v25 = ~(-1 << -v24);
  }

  else
  {
    v25 = -1;
  }

  v26 = v25 & v22;
  v79 = (63 - v24) >> 6;
  v93 = v12 + 2;
  v85 = (v12 + 6);
  v86 = (v12 + 7);
  v82 = (v12 + 4);
  v83 = a1;
  v89 = (a2 + 56);
  v95 = (v12 + 1);

  v28 = 0;
  v75 = v12;
  for (i = a1 + 56; ; v23 = i)
  {
    v29 = v26;
    v30 = v28;
    if (v26)
    {
LABEL_14:
      a1 = (v29 - 1) & v29;
      v34 = *(v83 + 48) + v12[9] * (__clz(__rbit64(v29)) | (v30 << 6));
      v35 = v12[2];
      v36 = v74;
      v35(v74, v34, v11);
      v37 = 0;
      v32 = v30;
    }

    else
    {
      v31 = v79 <= (v28 + 1) ? v28 + 1 : v79;
      v32 = v31 - 1;
      v33 = v28;
      while (1)
      {
        v30 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          goto LABEL_58;
        }

        if (v30 >= v79)
        {
          break;
        }

        v29 = *(v23 + 8 * v30);
        ++v33;
        if (v29)
        {
          goto LABEL_14;
        }
      }

      a1 = 0;
      v37 = 1;
      v36 = v74;
    }

    v81 = *v86;
    v81(v36, v37, 1, v11);
    v80 = *v85;
    if (v80(v36, 1, v11) == 1)
    {
      sub_224A3311C(v36, &unk_27D6F5060, &qword_224DB5620);
      v66 = v83;
      goto LABEL_53;
    }

    v78 = *v82;
    v78(v87, v36, v11);
    v77 = sub_224A33088(&qword_281351970, &qword_27D6F3900, &unk_224DB4640, MEMORY[0x277CF9FA8]);
    v38 = sub_224DAED88();
    v39 = -1 << *(a2 + 32);
    v28 = v38 & ~v39;
    v30 = v28 >> 6;
    v23 = 1 << v28;
    if (((1 << v28) & v89[v28 >> 6]) != 0)
    {
      break;
    }

    v12 = v75;
    (*v95)(v87, v11);
LABEL_22:
    v28 = v32;
    v26 = a1;
  }

  v72 = v95 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v88 = ~v39;
  v40 = v75[9];
  v90 = v75[2];
  v91 = v40;
  while (1)
  {
    v90(v19, *(a2 + 48) + v91 * v28, v11);
    v41 = sub_224A33088(&unk_281351960, &qword_27D6F3900, &unk_224DB4640, MEMORY[0x277CF9FB0]);
    v42 = sub_224DAEDD8();
    v94 = *v95;
    v94(v19, v11);
    if (v42)
    {
      break;
    }

    v28 = (v28 + 1) & v88;
    v30 = v28 >> 6;
    v23 = 1 << v28;
    if (((1 << v28) & v89[v28 >> 6]) == 0)
    {
      v12 = v75;
      v94(v87, v11);
      goto LABEL_22;
    }
  }

  v88 = v41;
  v97 = v73;
  v98 = v32;
  v99 = a1;
  v12 = v83;
  v96[0] = v83;
  v96[1] = i;
  v43 = (v94)(v87, v11);
  v45 = *(a2 + 32);
  v72 = ((1 << v45) + 63) >> 6;
  v27 = 8 * v72;
  if ((v45 & 0x3Fu) > 0xD)
  {
    goto LABEL_59;
  }

  while (2)
  {
    v74 = &v72;
    MEMORY[0x28223BE20](v43, v44);
    v47 = &v72 - ((v46 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v47, v89, v46);
    v48 = *&v47[8 * v30] & ~v23;
    v49 = *(a2 + 16);
    v87 = v47;
    *&v47[8 * v30] = v48;
    v50 = v49 - 1;
    v30 = i;
    v51 = v76;
    v52 = v79;
LABEL_26:
    v75 = v50;
    while (a1)
    {
      v53 = v32;
LABEL_38:
      v56 = __clz(__rbit64(a1));
      a1 &= a1 - 1;
      v90(v51, v12[6] + (v56 | (v53 << 6)) * v91, v11);
      v57 = 0;
LABEL_39:
      v81(v51, v57, 1, v11);
      if (v80(v51, 1, v11) == 1)
      {
        sub_224A3311C(v51, &unk_27D6F5060, &qword_224DB5620);
        a2 = sub_224A41D48(v87, v72, v75, a2);
        goto LABEL_52;
      }

      v78(v92, v51, v11);
      v58 = sub_224DAED88();
      v59 = a2;
      v60 = -1 << *(a2 + 32);
      v28 = v58 & ~v60;
      v61 = v28 >> 6;
      v23 = 1 << v28;
      if (((1 << v28) & v89[v28 >> 6]) != 0)
      {
        v90(v19, *(v59 + 48) + v28 * v91, v11);
        v62 = sub_224DAEDD8();
        v94(v19, v11);
        if ((v62 & 1) == 0)
        {
          v63 = ~v60;
          do
          {
            v28 = (v28 + 1) & v63;
            v61 = v28 >> 6;
            v23 = 1 << v28;
            if (((1 << v28) & v89[v28 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v90(v19, *(v59 + 48) + v28 * v91, v11);
            v64 = sub_224DAEDD8();
            v94(v19, v11);
          }

          while ((v64 & 1) == 0);
        }

        v94(v92, v11);
        v65 = v87[v61];
        v87[v61] = v65 & ~v23;
        a2 = v59;
        v12 = v83;
        v30 = i;
        v51 = v76;
        v52 = v79;
        if ((v65 & v23) != 0)
        {
          v50 = v75 - 1;
          if (__OFSUB__(v75, 1))
          {
            __break(1u);
          }

          if (v75 == 1)
          {

            a2 = MEMORY[0x277D84FA0];
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v94(v92, v11);
        a2 = v59;
        v12 = v83;
        v30 = i;
        v51 = v76;
        v52 = v79;
      }
    }

    if (v52 <= (v32 + 1))
    {
      v54 = v32 + 1;
    }

    else
    {
      v54 = v52;
    }

    v55 = v54 - 1;
    while (1)
    {
      v53 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      if (v53 >= v52)
      {
        a1 = 0;
        v57 = 1;
        v32 = v55;
        goto LABEL_39;
      }

      a1 = *(v30 + 8 * v53);
      ++v32;
      if (a1)
      {
        v32 = v53;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    v68 = v27;

    v87 = a2;
    v69 = v68;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v70 = v87;

      a2 = v70;
      continue;
    }

    break;
  }

  v71 = swift_slowAlloc();
  memcpy(v71, v89, v69);
  a2 = sub_224B03FB0(v71, v72, v87, v28, v96);

  MEMORY[0x22AA5EED0](v71, -1, -1);
  v12 = v96[0];
  v73 = v97;
LABEL_52:
  v66 = v12;
LABEL_53:
  sub_224A3B7E4(v66);
  return a2;
}

void sub_224AA25AC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = v19 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = v19 - v10;
  if (*(*v1 + 16))
  {
    v12 = 1 << *(a1 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(a1 + 56);
    v15 = (v12 + 63) >> 6;
    v19[0] = v8 + 8;
    v19[1] = v8 + 16;

    v16 = 0;
    while (v14)
    {
      v17 = v16;
LABEL_10:
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      (*(v8 + 16))(v11, *(a1 + 48) + *(v8 + 72) * (v18 | (v17 << 6)), v7);
      sub_224A9DCC8(v11, v6);
      (*(v8 + 8))(v11, v7);
      sub_224A3311C(v6, &unk_27D6F5060, &qword_224DB5620);
    }

    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v17 >= v15)
      {

        return;
      }

      v14 = *(a1 + 56 + 8 * v17);
      ++v16;
      if (v14)
      {
        v16 = v17;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

double sub_224AA2800(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = *(Strong + qword_2813548C0);
    os_unfair_lock_lock(*(v8 + 16));
    a3(v7, a1);
    os_unfair_lock_unlock(*(v8 + 16));
  }

  return result;
}

uint64_t sub_224AA28AC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v4;
    sub_224B206B4(a1, a2, isUniquelyReferenced_nonNull_native, a3, a4);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
    result = (*(*(v11 - 8) + 8))(a2, v11);
    *v4 = v24;
  }

  else
  {
    v13 = sub_224A3AD28(a2, &qword_27D6F3900, &unk_224DB4640, &qword_281351970, &unk_281351960);
    if (v14)
    {
      v15 = v13;
      v16 = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v4;
      v25 = *v7;
      if (!v16)
      {
        sub_224B28D68(&qword_27D6F3900, &unk_224DB4640, a3, a4);
        v17 = v25;
      }

      v18 = *(v17 + 48);
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
      v20 = *(v19 - 8);
      v21 = *(v20 + 8);
      v21(v18 + *(v20 + 72) * v15, v19);

      sub_224B1BCEC(v15, v17, &qword_27D6F3900, &unk_224DB4640, &qword_281351970, MEMORY[0x277CF9FA8]);
      result = (v21)(a2, v19);
      *v7 = v17;
    }

    else
    {
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
      v23 = *(*(v22 - 8) + 8);

      return v23(a2, v22);
    }
  }

  return result;
}

void sub_224AA2B68(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v32 - v7;
  v9 = __swift_project_boxed_opaque_existential_1((*(a1 + qword_2813548D0) + 24), *(*(a1 + qword_2813548D0) + 48));
  v10 = *v9;
  v11 = *(*v9 + OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock);
  v12 = *(v11 + 16);

  os_unfair_lock_lock(v12);
  v13 = OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_runningBundleIdentifiersWithVisibleScenes;
  swift_beginAccess();
  v14 = *(v10 + v13);
  v15 = *(v11 + 16);

  os_unfair_lock_unlock(v15);

  v16 = sub_224A33924(a2, v14);

  v17 = *(a1 + qword_2813548C8);
  if (v17)
  {
    v32 = v5;
    v33 = v4;
    v18 = __swift_project_boxed_opaque_existential_1((v17 + 16), *(v17 + 40));
    v19 = *v18;
    v20 = *(*v18 + 24);
    v21 = *(v20 + 16);

    os_unfair_lock_lock(v21);
    v22 = swift_beginAccess();
    v23 = *(v19 + 32);
    MEMORY[0x28223BE20](v22, v24);
    *(&v32 - 2) = a2;

    sub_224AA3B30(sub_224C4E084, (&v32 - 4), v23);
    v26 = v25;

    os_unfair_lock_unlock(*(v20 + 16));

    if ((v16 & 1) != 0 || v26)
    {

      return;
    }

    v4 = v33;
    v5 = v32;
  }

  else if (v16)
  {
    return;
  }

  v27 = qword_2813549E8;
  swift_beginAccess();
  v28 = *(a1 + v27);
  if (*(v28 + 16) && (v29 = sub_224A89A08(a2), (v30 & 1) != 0))
  {
    v31 = *(*(v28 + 56) + 8 * v29);
  }

  else
  {
    v31 = 0;
  }

  swift_endAccess();
  (*(v5 + 16))(v8, a2, v4);
  swift_beginAccess();
  sub_224AA33D8(0, v8);
  swift_endAccess();
  if (v31)
  {
    sub_224CDD28C(v31, a2);
  }

  sub_224AA3C6C();
}

uint64_t sub_224AA2E7C()
{
  sub_224DAFE68();
  MEMORY[0x22AA5E1E0](0);
  v0 = sub_224DAFEA8();
  return sub_224AA27D0(v0);
}

void sub_224AA2EE8(unint64_t a1, void *a2, uint64_t a3)
{
  if (a1 >> 62)
  {
    v5 = sub_224DAF838();
    if (!v5)
    {
      return;
    }
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      return;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
  }

  else
  {
    for (i = 0; i != v5; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x22AA5DCC0](i, a1);
      }

      else
      {
        v7 = *(a1 + 8 * i + 32);
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v8 = *(v7 + 24);
        ObjectType = swift_getObjectType();
        v13[3] = type metadata accessor for ProcessMonitor(0);
        v13[4] = &off_28382AA58;
        v13[0] = a2;
        v10 = *(v8 + 32);
        v11 = a2;
        v10(v13, a3, ObjectType, v8);

        swift_unknownObjectRelease();
        __swift_destroy_boxed_opaque_existential_1(v13);
      }

      else
      {
      }
    }
  }
}

void sub_224AA3038(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 64);
  if (v3)
  {
    v5 = *(v2 + 72);

    v3(a2);

    sub_224A3D418(v3, v5);
  }
}

void sub_224AA30D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v31 - v7;
  v9 = __swift_project_boxed_opaque_existential_1((*(a1 + qword_2813548D0) + 24), *(*(a1 + qword_2813548D0) + 48));
  v10 = *v9;
  v11 = *(*v9 + OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock);
  os_unfair_lock_lock(*(v11 + 16));
  v12 = OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_runningBundleIdentifiersWithVisibleScenes;
  swift_beginAccess();
  v13 = *(v10 + v12);
  v14 = *(v11 + 16);

  os_unfair_lock_unlock(v14);
  v15 = sub_224A33924(a2, v13);

  v16 = *(a1 + qword_2813548C8);
  if (v16)
  {
    v31 = v5;
    v32 = v4;
    v17 = __swift_project_boxed_opaque_existential_1((v16 + 16), *(v16 + 40));
    v18 = *v17;
    v19 = *(*v17 + 24);
    v20 = *(v19 + 16);

    os_unfair_lock_lock(v20);
    v21 = swift_beginAccess();
    v22 = *(v18 + 32);
    MEMORY[0x28223BE20](v21, v23);
    *(&v31 - 2) = a2;

    sub_224AA3B30(sub_224C4E570, (&v31 - 4), v22);
    v25 = v24;

    os_unfair_lock_unlock(*(v19 + 16));

    if ((v15 & 1) != 0 || v25)
    {

      return;
    }

    v4 = v32;
    v5 = v31;
  }

  else if (v15)
  {
    return;
  }

  v26 = qword_2813549E8;
  swift_beginAccess();
  v27 = *(a1 + v26);
  if (*(v27 + 16) && (v28 = sub_224A89A08(a2), (v29 & 1) != 0))
  {
    v30 = *(*(v27 + 56) + 8 * v28);
  }

  else
  {
    v30 = 0;
  }

  swift_endAccess();
  (*(v5 + 16))(v8, a2, v4);
  swift_beginAccess();
  sub_224AA33D8(0, v8);
  swift_endAccess();
  if (v30)
  {
    sub_224CDD264(v30, a2);
  }

  sub_224AA2B10();
}

void sub_224AA33EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v85 = a2;
  v86 = a3;
  v84 = a1;
  v5 = v3;
  v6 = sub_224DAB7C8();
  v82 = *(v6 - 8);
  v83 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v81 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  os_unfair_lock_assert_owner(*(*(v3 + qword_2813548C0) + 16));
  v9 = qword_2813549E0;
  v10 = *(v3 + qword_2813549E0);
  if (v10)
  {
    v11 = v10;
    v12 = sub_224DAB228();
    v13 = sub_224DAF268();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_224A2F000, v12, v13, "Timer invalidated.", v14, 2u);
      MEMORY[0x22AA5EED0](v14, -1, -1);
    }

    [v11 invalidate];
    v15 = *(v5 + v9);
    *(v5 + v9) = 0;
  }

  v87 = v9;
  v16 = qword_2813549E8;
  swift_beginAccess();
  v17 = *(v5 + v16);
  v18 = v17 + 64;
  v19 = 1 << *(v17 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(v17 + 64);
  v22 = (v19 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v23 = 0;
  v24 = MEMORY[0x277D84F98];
  if (v21)
  {
    while (1)
    {
      v25 = v23;
LABEL_13:
      v26 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      v27 = *(*(v17 + 56) + ((v25 << 9) | (8 * v26)));

      v24 = v27;
      if (!v21)
      {
        goto LABEL_9;
      }
    }
  }

  while (1)
  {
LABEL_9:
    v25 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      __break(1u);
      goto LABEL_38;
    }

    if (v25 >= v22)
    {
      break;
    }

    v21 = *(v18 + 8 * v25);
    ++v23;
    if (v21)
    {
      v23 = v25;
      goto LABEL_13;
    }
  }

  v28 = 0;
  v18 = v24 + 64;
  v29 = *(v24 + 64);
  v30 = 1 << *(v24 + 32);
  v31 = -1;
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  v4 = MEMORY[0x277D84F90];
  aBlock[0] = MEMORY[0x277D84F90];
  v32 = v31 & v29;
  v33 = (v30 + 63) >> 6;
  while (v32)
  {
LABEL_23:
    v35 = __clz(__rbit64(v32));
    v32 &= v32 - 1;
    if (*(*(*(v24 + 56) + ((v28 << 9) | (8 * v35))) + 24) > 0)
    {

      sub_224DAF9B8();
      sub_224DAF9F8();
      sub_224DAFA08();
      sub_224DAF9C8();
    }
  }

  while (1)
  {
    v34 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v34 >= v33)
    {

      v18 = aBlock[0];
      if ((aBlock[0] & 0x8000000000000000) != 0 || (aBlock[0] & 0x4000000000000000) != 0)
      {
        goto LABEL_39;
      }

      v36 = *(aBlock[0] + 16);
      if (!v36)
      {
        goto LABEL_40;
      }

      goto LABEL_28;
    }

    v32 = *(v18 + 8 * v34);
    ++v28;
    if (v32)
    {
      v28 = v34;
      goto LABEL_23;
    }
  }

LABEL_38:
  __break(1u);
LABEL_39:
  v36 = sub_224DAF838();
  if (v36)
  {
LABEL_28:
    aBlock[0] = v4;
    sub_224ADA204(0, v36 & ~(v36 >> 63), 0);
    if (v36 < 0)
    {
      __break(1u);
      return;
    }

    v37 = 0;
    v38 = aBlock[0];
    do
    {
      if ((v18 & 0xC000000000000001) != 0)
      {
        v39 = *(MEMORY[0x22AA5DCC0](v37, v18) + 16);
        swift_unknownObjectRelease();
      }

      else
      {
        v39 = *(*(v18 + 8 * v37 + 32) + 16);
      }

      aBlock[0] = v38;
      v41 = *(v38 + 16);
      v40 = *(v38 + 24);
      if (v41 >= v40 >> 1)
      {
        sub_224ADA204((v40 > 1), v41 + 1, 1);
        v38 = aBlock[0];
      }

      ++v37;
      *(v38 + 16) = v41 + 1;
      *(v38 + 8 * v41 + 32) = v39;
    }

    while (v36 != v37);
  }

  else
  {
LABEL_40:

    v38 = MEMORY[0x277D84F90];
  }

  v42 = *(v38 + 16);
  if (v42)
  {
    v43 = *(v38 + 32);
    v44 = v42 - 1;
    if (v42 != 1)
    {
      v45 = (v38 + 40);
      do
      {
        v46 = *v45++;
        v47 = v46;
        if (v46 < v43)
        {
          v43 = v47;
        }

        --v44;
      }

      while (v44);
    }

    v48 = v43 + *(v5 + 16);
    BSContinuousMachTimeNow();
    v50 = v48 - v49;
  }

  else
  {

    v50 = 0.0;
  }

  v51 = *(v5 + qword_2813549F0);
  if (!v51)
  {
LABEL_63:
    if (!v42)
    {
      return;
    }

    goto LABEL_64;
  }

  swift_beginAccess();

  v53 = sub_224CD72D4(v52);

  v54 = *(v53 + 16);
  if (!v54)
  {

    goto LABEL_63;
  }

  v55 = *(v53 + 32);
  v56 = v54 - 1;
  if (v56)
  {
    v57 = (v53 + 40);
    do
    {
      v58 = *v57++;
      v59 = v58;
      if (v58 < v55)
      {
        v55 = v59;
      }

      --v56;
    }

    while (v56);
  }

  v60 = v55 + *(v51 + qword_27D6F6238);
  BSContinuousMachTimeNow();
  v62 = v60 - v61;
  if (v62 >= v50)
  {
    v63 = v50;
  }

  else
  {
    v63 = v62;
  }

  if (v42)
  {
    v50 = v63;
  }

  else
  {
    v50 = v62;
  }

LABEL_64:
  if (v50 <= 0.0)
  {
    v50 = 0.0;
  }

  v64 = sub_224DAB228();
  v65 = sub_224DAF268();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    *v66 = 134349056;
    *(v66 + 4) = v50;
    _os_log_impl(&dword_224A2F000, v64, v65, "Scheduled timer in %{public}fs", v66, 0xCu);
    MEMORY[0x22AA5EED0](v66, -1, -1);
  }

  v67 = objc_allocWithZone(MEMORY[0x277CF0BD8]);
  v68 = sub_224DAEDE8();
  v69 = [v67 initWithIdentifier_];

  v70 = v87;
  v71 = *(v5 + v87);
  *(v5 + v87) = v69;

  v72 = *(v5 + v70);
  if (v72)
  {
    sub_224AC319C();
    v74 = v82;
    v73 = v83;
    v75 = v81;
    (*(v82 + 104))(v81, *MEMORY[0x277D851B8], v83);
    v76 = v72;
    v77 = sub_224DAF428();
    (*(v74 + 8))(v75, v73);
    v78 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = v85;
    aBlock[5] = v78;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_224A3837C;
    aBlock[3] = v86;
    v79 = _Block_copy(aBlock);

    [v76 scheduleWithFireInterval:v77 leewayInterval:v79 queue:v50 handler:0.0];
    _Block_release(v79);
  }
}

void sub_224AA3B30(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  if (v9)
  {
    while (1)
    {
      v12 = v11;
LABEL_8:
      v15 = *(*(a3 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v9)))));
      v13 = v15;
      v14 = a1(&v15);
      if (v3)
      {
        break;
      }

      if (v14)
      {
        goto LABEL_12;
      }

      v9 &= v9 - 1;

      v11 = v12;
      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v10)
      {
LABEL_12:

        return;
      }

      v9 = *(v6 + 8 * v12);
      ++v11;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

uint64_t sub_224AA3C94()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_224AA3D14(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F7110, &qword_224DB4998);
  v6 = sub_224DAFB98();
  v7 = v6;
  if (*(v5 + 16))
  {
    v29 = v4;
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
      v19 = *(*(v5 + 56) + (v16 | (v8 << 6)));
      sub_224DAFE68();
      MEMORY[0x22AA5E1E0](0);
      v20 = sub_224DAFEA8();
      v21 = -1 << *(v7 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 56) + v15) = v19;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
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

    if (v29)
    {
      v28 = 1 << *(v5 + 32);
      if (v28 >= 64)
      {
        bzero((v5 + 64), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v28;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
}

unint64_t sub_224AA3F94()
{
  result = qword_28135B798;
  if (!qword_28135B798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28135B798);
  }

  return result;
}

uint64_t sub_224AA3FE8()
{
  v1 = sub_224DAB7C8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42[0] = 0;
  v42[1] = 0xE000000000000000;
  sub_224DAF938();
  MEMORY[0x22AA5D210](0x736C6F72746E6F63, 0xEA0000000000203ALL);
  v6 = *v0;
  v7 = 0xE500000000000000;
  if (v6 == 1)
  {
    v8 = 0x6573556E69;
  }

  else
  {
    v8 = 7105633;
  }

  if (v6 != 1)
  {
    v7 = 0xE300000000000000;
  }

  if (*v0)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1701736302;
  }

  if (*v0)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  MEMORY[0x22AA5D210](v9, v10);

  MEMORY[0x22AA5D210](0xD000000000000010, 0x8000000224DCBCC0);
  v11 = v0[1];
  v12 = 0xE500000000000000;
  if (v11 == 1)
  {
    v13 = 0x6573556E69;
  }

  else
  {
    v13 = 7105633;
  }

  if (v11 != 1)
  {
    v12 = 0xE300000000000000;
  }

  if (v0[1])
  {
    v14 = v13;
  }

  else
  {
    v14 = 1701736302;
  }

  if (v0[1])
  {
    v15 = v12;
  }

  else
  {
    v15 = 0xE400000000000000;
  }

  MEMORY[0x22AA5D210](v14, v15);

  MEMORY[0x22AA5D210](0x687370616E73203BLL, 0xED0000203A73746FLL);
  v16 = v0[2];
  v17 = 0xE500000000000000;
  if (v16 == 1)
  {
    v18 = 0x6573556E69;
  }

  else
  {
    v18 = 7105633;
  }

  if (v16 != 1)
  {
    v17 = 0xE300000000000000;
  }

  if (v0[2])
  {
    v19 = v18;
  }

  else
  {
    v19 = 1701736302;
  }

  if (v0[2])
  {
    v20 = v17;
  }

  else
  {
    v20 = 0xE400000000000000;
  }

  MEMORY[0x22AA5D210](v19, v20);

  MEMORY[0x22AA5D210](0x696C656D6974203BLL, 0xED0000203A73656ELL);
  v21 = v0[3];
  v22 = 0xE500000000000000;
  if (v21 == 1)
  {
    v23 = 0x6573556E69;
  }

  else
  {
    v23 = 7105633;
  }

  if (v21 != 1)
  {
    v22 = 0xE300000000000000;
  }

  if (v0[3])
  {
    v24 = v23;
  }

  else
  {
    v24 = 1701736302;
  }

  if (v0[3])
  {
    v25 = v22;
  }

  else
  {
    v25 = 0xE400000000000000;
  }

  MEMORY[0x22AA5D210](v24, v25);

  MEMORY[0x22AA5D210](0xD000000000000013, 0x8000000224DCBCE0);
  v26 = v0[4];
  v27 = 0xE500000000000000;
  if (v26 == 1)
  {
    v28 = 0x6573556E69;
  }

  else
  {
    v28 = 7105633;
  }

  if (v26 != 1)
  {
    v27 = 0xE300000000000000;
  }

  if (v0[4])
  {
    v29 = v28;
  }

  else
  {
    v29 = 1701736302;
  }

  if (v0[4])
  {
    v30 = v27;
  }

  else
  {
    v30 = 0xE400000000000000;
  }

  MEMORY[0x22AA5D210](v29, v30);

  MEMORY[0x22AA5D210](0xD000000000000012, 0x8000000224DCBD00);
  v31 = v0[5];
  v32 = 0xE500000000000000;
  if (v31 == 1)
  {
    v33 = 0x6573556E69;
  }

  else
  {
    v33 = 7105633;
  }

  if (v31 != 1)
  {
    v32 = 0xE300000000000000;
  }

  if (v0[5])
  {
    v34 = v33;
  }

  else
  {
    v34 = 1701736302;
  }

  if (v0[5])
  {
    v35 = v32;
  }

  else
  {
    v35 = 0xE400000000000000;
  }

  MEMORY[0x22AA5D210](v34, v35);

  MEMORY[0x22AA5D210](0xD000000000000012, 0x8000000224DCBD20);
  v36 = v0[6];
  v37 = 0xE500000000000000;
  if (v36 == 1)
  {
    v38 = 0x6573556E69;
  }

  else
  {
    v38 = 7105633;
  }

  if (v36 != 1)
  {
    v37 = 0xE300000000000000;
  }

  if (v0[6])
  {
    v39 = v38;
  }

  else
  {
    v39 = 1701736302;
  }

  if (v0[6])
  {
    v40 = v37;
  }

  else
  {
    v40 = 0xE400000000000000;
  }

  MEMORY[0x22AA5D210](v39, v40);

  MEMORY[0x22AA5D210](0x69726F697270203BLL, 0xEC000000203A7974);
  type metadata accessor for FileReaperProtectionConfiguration(0);
  sub_224DAB838();
  sub_224DAFA48();
  (*(v2 + 8))(v5, v1);
  return v42[0];
}

uint64_t sub_224AA43B0(ValueMetadata *a1)
{
  v3 = v1;
  v84 = *MEMORY[0x277D85DE8];
  v69 = type metadata accessor for UnpairedRelationshipURLProposer(0);
  MEMORY[0x28223BE20](v69, v5);
  v7 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_224DAB8C8();
  v9 = *(v8 - 1);
  MEMORY[0x28223BE20](v8, v10);
  inited = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v3 + 416);
  *inited = v13;
  (*(v9 + 104))(inited, *MEMORY[0x277D85200], v8);
  v14 = v13;
  LOBYTE(v13) = sub_224DAB8F8();
  v16 = *(v9 + 8);
  v15 = v9 + 8;
  v16(inited, v8);
  if ((v13 & 1) == 0)
  {
    goto LABEL_16;
  }

  v68 = v7;
  v72 = sub_224DAA508();
  v73 = sub_224DAA4F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F36D0, &qword_224DBEBE0);
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_224DBEA10;
  sub_224A3317C(v3 + 248, v81);
  *(inited + 7) = &type metadata for ExtensionURLProposer;
  *(inited + 8) = &off_2838358D0;
  *(inited + 4) = swift_allocObject();
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F61E8, &qword_224DBEBE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F61F0, &qword_224DBEBF0);
  swift_dynamicCast();
  v17 = *(v3 + 296);
  *(inited + 12) = &type metadata for ArchiveURLProtector;
  *(inited + 13) = &off_283832768;
  v18 = swift_allocObject();
  *(inited + 9) = v18;
  *&v71 = type metadata accessor for MobileTimelineService(0);
  *(v18 + 40) = v71;
  *(v18 + 48) = &off_283836FE0;
  *(v18 + 16) = v17;
  *(v18 + 56) = BYTE3(a1->Kind);
  v19 = *(v3 + 320);
  *(inited + 17) = &type metadata for ArchiveURLProtector;
  *(inited + 18) = &off_283832768;
  v20 = swift_allocObject();
  *(inited + 14) = v20;
  *(v20 + 40) = type metadata accessor for MobileSnapshotService(0);
  *(v20 + 48) = &off_283836950;
  *(v20 + 16) = v19;
  *(v20 + 56) = BYTE2(a1->Kind);
  v21 = *(v3 + 288);
  *(inited + 22) = &type metadata for PlaceholderURLProtector;
  *(inited + 23) = &off_2838308C0;
  v22 = swift_allocObject();
  *(inited + 19) = v22;
  *(v22 + 40) = type metadata accessor for MobilePlaceholderService(0);
  *(v22 + 48) = &off_283833AF0;
  *(v22 + 16) = v21;
  *(v22 + 56) = BYTE1(a1->Kind);
  sub_224A3317C(v3 + 248, v81);
  *(inited + 27) = &type metadata for RelevanceURLProtector;
  *(inited + 28) = &off_2838337F0;
  *(inited + 24) = swift_allocObject();
  swift_retain_n();

  swift_dynamicCast();
  *(inited + 32) = &type metadata for SnapshotURLProtector;
  *(inited + 33) = &off_283836B40;
  v23 = swift_allocObject();
  *(inited + 29) = v23;
  v24 = MEMORY[0x277CFA098];
  v25 = v73;
  v23[5] = v72;
  v23[6] = v24;
  v23[2] = v25;
  v23[7] = 0x6F687370616E732FLL;
  v23[8] = 0xEB000000002F7374;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F61F8, &qword_224DBEBF8);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_224DB30F0;
  v26 = *(v3 + 200);
  *(v15 + 56) = type metadata accessor for WidgetRendererServer();
  *(v15 + 64) = &off_2838328C0;
  *(v15 + 32) = v26;
  *(v15 + 96) = v71;
  *(v15 + 104) = &off_283836FF8;
  *(v15 + 72) = v17;
  *(inited + 37) = &type metadata for ClientSnapshotURLProvider;
  *(inited + 38) = &off_2838297A8;
  v27 = swift_allocObject();
  *(inited + 34) = v27;
  sub_224A3317C(v3 + 208, v27 + 24);
  v28 = *(v3 + 328);
  *(v27 + 88) = sub_224A3B79C(0, &qword_281350988, 0x277CFA310);
  *(v27 + 96) = &off_283829768;
  *(v27 + 104) = &off_283829780;
  *(v27 + 64) = v28;
  v2 = a1;
  v29 = BYTE4(a1->Kind);
  *(v27 + 16) = v15;
  *(v27 + 112) = v29;
  sub_224A3317C(v3 + 248, v81);

  v30 = v26;
  v31 = v28;
  v71 = *(v3 + 304);
  swift_unknownObjectRetain();
  v32 = sub_224CCF1F8();
  *&v81[40] = v71;
  v82 = v32;
  v83 = 1;
  sub_224CCF8C0(v81, &v78);
  v8 = sub_224AD99F4(1, 8, 1, inited);
  v76 = &type metadata for WidgetCacheKeyURLProtector;
  v77 = &off_28382BF00;
  *&v75 = swift_allocObject();
  sub_224CCF8C0(&v78, v75 + 16);
  v8[2] = 8;
  sub_224A36F98(&v75, (v8 + 39));
  sub_224CCF91C(&v78);
  sub_224CCF970(v3 + 120, &v75);
  if (!v76)
  {
    sub_224A3311C(&v75, &qword_27D6F5590, &qword_224DBEC00);
    v36 = a1;
    a1 = &type metadata for ArchiveURLProtector;
    v38 = *(v3 + 384);
    if (v38)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

  sub_224A36F98(&v75, &v78);
  v33 = v68;
  sub_224A3317C(&v78, v68);
  v34 = v69;
  sub_224DAA108();
  v15 = v8[2];
  v35 = v8[3];
  inited = (v15 + 1);
  if (v15 >= v35 >> 1)
  {
    v8 = sub_224AD99F4((v35 > 1), v15 + 1, 1, v8);
  }

  v36 = a1;
  a1 = &type metadata for ArchiveURLProtector;
  __swift_destroy_boxed_opaque_existential_1(&v78);
  v76 = v34;
  v77 = &off_28382F3C8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v75);
  sub_224CCF9E0(v33, boxed_opaque_existential_1, type metadata accessor for UnpairedRelationshipURLProposer);
  v8[2] = inited;
  sub_224A36F98(&v75, &v8[5 * v15 + 4]);
  sub_224CCFA48(v33, type metadata accessor for UnpairedRelationshipURLProposer);
  v38 = *(v3 + 384);
  if (!v38)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

LABEL_6:
  v76 = type metadata accessor for LiveControlService(0);
  v77 = &off_283831020;
  *&v75 = v38;
  Kind = v36->Kind;
  v79 = &type metadata for ArchiveURLProtector;
  v80 = &off_283832768;
  v40 = swift_allocObject();
  *&v78 = v40;
  sub_224A36F98(&v75, v40 + 16);
  *(v40 + 56) = Kind;
  v74 = v8;
  inited = v8[2];
  v15 = v8[3];

  if (inited < v15 >> 1)
  {
    v41 = &off_283832768;
    v42 = &type metadata for ArchiveURLProtector;
    goto LABEL_8;
  }

LABEL_17:
  v8 = sub_224AD99F4((v15 > 1), (inited + 1), 1, v8);
  v74 = v8;
  v42 = v79;
  v41 = v80;
LABEL_8:
  v43 = __swift_mutable_project_boxed_opaque_existential_1(&v78, v42);
  MEMORY[0x28223BE20](v43, v43);
  v45 = &v67 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v46 + 16))(v45);
  sub_224A5C064(inited, v45, &v74, v42, v41);
  __swift_destroy_boxed_opaque_existential_1(&v78);
  v48 = v8[2];
  v47 = v8[3];
  if (v48 >= v47 >> 1)
  {
    v8 = sub_224AD99F4((v47 > 1), v48 + 1, 1, v8);
  }

  v79 = &type metadata for PreviewControlServiceProtector;
  v80 = &off_28382F580;
  *&v78 = 0xD000000000000011;
  *(&v78 + 1) = 0x8000000224DCDC50;
  v8[2] = v48 + 1;
  sub_224A36F98(&v78, &v8[5 * v48 + 4]);
  v49 = *(v3 + 336);
  if (!v49)
  {
    __break(1u);
  }

  v76 = type metadata accessor for MobileActivityService(0);
  v77 = &off_28382E3E8;
  *&v75 = v49;
  v50 = BYTE5(v2->Kind);
  v79 = a1;
  v51 = &off_283832768;
  v80 = &off_283832768;
  v52 = swift_allocObject();
  *&v78 = v52;
  sub_224A36F98(&v75, v52 + 16);
  *(v52 + 56) = v50;
  v74 = v8;
  v53 = v8[3];

  if ((v48 + 2) > (v53 >> 1))
  {
    v8 = sub_224AD99F4((v53 > 1), v48 + 2, 1, v8);
    v74 = v8;
    a1 = v79;
    v51 = v80;
  }

  v54 = __swift_mutable_project_boxed_opaque_existential_1(&v78, a1);
  MEMORY[0x28223BE20](v54, v54);
  v56 = &v67 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v57 + 16))(v56);
  sub_224A5C064(v48 + 1, v56, &v74, a1, v51);
  __swift_destroy_boxed_opaque_existential_1(&v78);
  v58 = type metadata accessor for FileReaper();
  v59 = *(v3 + 88);
  v60 = *(v3 + 96);
  v61 = __swift_project_boxed_opaque_existential_1((v3 + 64), v59);
  MEMORY[0x28223BE20](v61, v61);
  v63 = &v67 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v64 + 16))(v63);
  *&v78 = v73;
  v65 = sub_224C738B8(v63, &v78, v8, 0, 0, v58, v59, v72, v60, MEMORY[0x277CFA098]);
  sub_224CCF91C(v81);
  return v65;
}

uint64_t sub_224AA4ED0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_224AA4F08()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 57, 7);
}

uint64_t sub_224AA4F40()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_224AA4F80()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  __swift_destroy_boxed_opaque_existential_1((v0 + 64));

  return MEMORY[0x2821FE8E8](v0, 113, 7);
}

uint64_t sub_224AA4FC8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 81, 7);
}

uint64_t type metadata accessor for UnpairedRelationshipURLProposer(uint64_t a1)
{
  result = qword_281353018;
  if (!qword_281353018)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_224AA5064(uint64_t a1)
{
  result = sub_224AA50E8();
  if (v2 <= 0x3F)
  {
    result = sub_224DA9688();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_224AA50E8()
{
  result = qword_281351740;
  if (!qword_281351740)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_281351740);
  }

  return result;
}

uint64_t type metadata accessor for MobileTimelineService(uint64_t a1)
{
  result = qword_281358080;
  if (!qword_281358080)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for MobileSnapshotService(uint64_t a1)
{
  result = qword_2813582F8;
  if (!qword_2813582F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_224AA51E4(void *a1)
{
  v3 = *(sub_224DA9878() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_224AA5258(a1, v4, v5);
}

double sub_224AA5258(void *a1, uint64_t a2, uint64_t a3)
{
  [a1 invalidate];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + 40);
    if (v5)
    {
      v6 = *(Strong + 48);

      v5(a3);

      sub_224A3D418(v5, v6);
    }

    else
    {
    }
  }

  else
  {
    if (qword_281351498 != -1)
    {
      swift_once();
    }

    v8 = sub_224DAB258();
    __swift_project_value_buffer(v8, qword_281364E20);
    v9 = sub_224DAB228();
    v10 = sub_224DAF298();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_224A2F000, v9, v10, "Wake manager unexpectedly deallocated", v11, 2u);
      MEMORY[0x22AA5EED0](v11, -1, -1);
    }
  }

  return result;
}

void sub_224AA53D0(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_224AA54FC(a3 & 1, a1);
  }

  else
  {
    if (qword_281351498 != -1)
    {
      swift_once();
    }

    v5 = sub_224DAB258();
    __swift_project_value_buffer(v5, qword_281364E20);
    v6 = sub_224DAB228();
    v7 = sub_224DAF298();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_224A2F000, v6, v7, "Work scheduler unexpectedly deallocated", v8, 2u);
      MEMORY[0x22AA5EED0](v8, -1, -1);
    }
  }
}

double sub_224AA54FC(char a1, uint64_t a2)
{
  v4 = sub_224DAB7B8();
  v55 = *(v4 - 8);
  v56 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v53 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_224DAB848();
  v52 = *(v54 - 8);
  MEMORY[0x28223BE20](v54, v7);
  v51 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_224DA9878();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock = 0;
  v59 = 0xE000000000000000;
  sub_224DAF938();

  aBlock = 0xD000000000000016;
  v59 = 0x8000000224DCA040;
  if (a1)
  {
    v14 = 1701536119;
  }

  else
  {
    v14 = 0x656B61776E6F6ELL;
  }

  if (a1)
  {
    v15 = 0xE400000000000000;
  }

  else
  {
    v15 = 0xE700000000000000;
  }

  MEMORY[0x22AA5D210](v14, v15);

  v16 = aBlock;
  v17 = v59;
  type metadata accessor for PushFoundation.KeepAliveTransaction(0);
  swift_allocObject();
  PushFoundation.KeepAliveTransaction.init(reason:)(v16, v17);
  v19 = v18;
  if (qword_281351498 != -1)
  {
    swift_once();
  }

  v20 = sub_224DAB258();
  __swift_project_value_buffer(v20, qword_281364E20);
  (*(v10 + 16))(v13, a2, v9);
  v21 = sub_224DAB228();
  v22 = sub_224DAF2A8();
  v23 = os_log_type_enabled(v21, v22);
  v49 = v19;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    aBlock = v25;
    *v24 = 136446466;
    if (a1)
    {
      v26 = 1701536087;
    }

    else
    {
      v26 = 0x656B61776E6F4ELL;
    }

    v27 = sub_224A33F74(v26, v15, &aBlock);

    *(v24 + 4) = v27;
    *(v24 + 12) = 2082;
    if (qword_28135C420 != -1)
    {
      swift_once();
    }

    v28 = qword_28135C428;
    v29 = sub_224DA9778();
    v30 = [v28 stringFromDate_];

    v31 = sub_224DAEE18();
    v33 = v32;

    (*(v10 + 8))(v13, v9);
    v34 = sub_224A33F74(v31, v33, &aBlock);

    *(v24 + 14) = v34;
    _os_log_impl(&dword_224A2F000, v21, v22, "%{public}s event fired for date: %{public}s", v24, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v25, -1, -1);
    MEMORY[0x22AA5EED0](v24, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v13, v9);
  }

  v35 = v50;
  v36 = *(v50 + 24);
  v37 = *(v36 + 16);
  if (v37)
  {
    v38 = v36 + 32;
    do
    {
      sub_224A3317C(v38, &aBlock);
      v39 = v61;
      v40 = v62;
      __swift_project_boxed_opaque_existential_1(&aBlock, v61);
      (*(v40 + 3))(v39, v40);
      __swift_destroy_boxed_opaque_existential_1(&aBlock);
      v38 += 40;
      --v37;
    }

    while (v37);
  }

  v41 = swift_allocObject();
  v42 = v49;
  *(v41 + 16) = v35;
  *(v41 + 24) = v42;
  v62 = sub_224AA68B4;
  v63 = v41;
  aBlock = MEMORY[0x277D85DD0];
  v59 = 1107296256;
  v60 = sub_224A39F40;
  v61 = &block_descriptor_24;
  v43 = _Block_copy(&aBlock);

  v44 = v51;
  sub_224DAB7E8();
  v57 = MEMORY[0x277D84F90];
  sub_224AA686C(&qword_281350ED0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
  sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0, MEMORY[0x277D83970]);
  v45 = v53;
  v46 = v56;
  sub_224DAF788();
  MEMORY[0x22AA5D760](0, v44, v45, v43);
  _Block_release(v43);

  (*(v55 + 8))(v45, v46);
  (*(v52 + 8))(v44, v54);

  return result;
}